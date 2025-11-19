__int16 *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          v8 = v5;
          v9 = v6;
          v10 = result;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            --v10;
          }

          while (v7 < *(v4 + 4 * v9));
          *v10 = v8;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

__int16 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__VolumeComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 >= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

__int16 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__VolumeComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = v7;
    v13 = *a2;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v12;
      do
      {
        v16 = v14[1];
        ++v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) < v6);
      do
      {
        v17 = *--v15;
        v13 = v17;
      }

      while (*(v5 + 4 * v17) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * a1[1]);
      v9 = *(*a3 + 4 * v6);
      v10 = a1[1];
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v8 >= v9)
      {
        if (v12 < v8)
        {
          a1[1] = v11;
          *(a2 - 1) = v10;
          v37 = a1[1];
          v38 = *a1;
          if (*(v7 + 4 * v37) < *(v7 + 4 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v12 >= v8)
      {
        *a1 = v10;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v7 + 4 * v51) >= v9)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = a1[1];
    v28 = *a1;
    v29 = *a1;
    v30 = *a3;
    v31 = *(*a3 + 4 * v24);
    v32 = *(*a3 + 4 * v28);
    v33 = a1[2];
    v34 = *(*a3 + 4 * v26);
    if (v31 >= v32)
    {
      if (v34 < v31)
      {
        *v23 = v33;
        *v25 = v27;
        v35 = a1;
        v36 = a1 + 1;
        v28 = v24;
        v26 = v24;
        if (v34 >= v32)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 < v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v27 = *a1;
LABEL_44:
        *v35 = v33;
        *v36 = v29;
        v26 = v28;
LABEL_46:
        v52 = *(a2 - 1);
        if (*(v30 + 4 * v52) < *(v30 + 4 * v26))
        {
          *v25 = v52;
          *(a2 - 1) = v27;
          v53 = *v25;
          v54 = *v23;
          v55 = *(v30 + 4 * v53);
          if (v55 < *(v30 + 4 * v54))
          {
            a1[1] = v53;
            a1[2] = v54;
            v56 = *a1;
            if (v55 < *(v30 + 4 * v56))
            {
              *a1 = v53;
              a1[1] = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v27 = v29;
      if (v34 < v32)
      {
        goto LABEL_44;
      }
    }

    v27 = v33;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 4 * v14);
  v18 = *(*a3 + 4 * *a1);
  v19 = a1[2];
  v20 = *(*a3 + 4 * v19);
  if (v17 < v18)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v19;
    *v22 = v15;
    goto LABEL_26;
  }

  if (v20 < v17)
  {
    a1[1] = v19;
    *v13 = v14;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 6; ; i += 2)
  {
    v42 = *v13;
    v43 = *(v16 + 4 * *v39);
    if (v43 < *(v16 + 4 * v42))
    {
      v44 = *v39;
      v45 = v42;
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 2;
        if (v46 == 2)
        {
          break;
        }

        v48 = *(a1 + v46 - 4);
        v45 = v48;
        v49 = *(v16 + 4 * v48);
        v46 = v47;
        if (v43 >= v49)
        {
          v50 = (a1 + v47);
          goto LABEL_34;
        }
      }

      v50 = a1;
LABEL_34:
      *v50 = v44;
      if (++v40 == 8)
      {
        break;
      }
    }

    v13 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__int16 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *,short *>(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) < *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) < *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(uint64_t result, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *a4;
      v11 = *(v9 + 4 * v10);
      if (*(v9 + 4 * *v7) >= v11)
      {
        v12 = *v7;
        do
        {
          v13 = v7;
          *a4 = v12;
          if (v5 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 2 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v12 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * *v7) >= v11);
        *v13 = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,__VolumeComp &,short *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 2 * v4);
    v6 = *v5;
    v9 = *(a2 - 2);
    v7 = (a2 - 2);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 2 * v4);
        LOWORD(v6) = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * *v5) < v11);
      *v12 = v8;
    }
  }

  return result;
}

void _C3DIndexSetCFFinalize(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      free(v1);
    }
  }
}

__CFString *_C3DIndexSetCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 256);
  CFStringAppend(Mutable, @"indexSet ");
  if (*(a1 + 16))
  {
    goto LABEL_15;
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    v3 = *(a1 + 24);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 8);
      CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), *(v3 + 16), v4;
      if (v4 < 1)
      {
        v9 = @"]");
        goto LABEL_16;
      }

      v5 = v3 + 56;
      goto LABEL_8;
    }

LABEL_15:
    v9 = @"(no index)";
    goto LABEL_16;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_15;
  }

  v5 = a1 + 24;
  v4 = 1;
  CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), v6, 1;
LABEL_8:
  v7 = 0;
  v8 = (v5 + 8);
  v9 = @"]");
  do
  {
    if (v7)
    {
      CFStringAppend(Mutable, @" ");
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    CFStringAppendFormat(Mutable, 0, @"%lu", v10);
    if (v11 >= 2)
    {
      CFStringAppendFormat(Mutable, 0, @"-%lu", v10 + v11 - 1);
    }

    ++v7;
    v8 += 2;
  }

  while (v4 != v7);
LABEL_16:
  CFStringAppend(Mutable, v9);
  return Mutable;
}

double _setContentToContentFromIndexSet(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = v4 | 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      if ((*(a2 + 16) & 2) != 0)
      {
        v6 = *(a2 + 24);
        *(a1 + 24) = v6;
        *(a1 + 16) = v4 & 0xFC | 2;
      }

      else
      {
        *(a1 + 16) = v4 & 0xFC | 2;
        if (*(a2 + 16))
        {
          v5 = 0;
        }

        else if ((*(a2 + 16) & 2) != 0)
        {
          v5 = 1;
        }

        else
        {
          v5 = *(*(a2 + 24) + 8);
        }

        *(a1 + 16) = v4 & 0xFC;
        v7 = malloc_type_calloc(16 * v5 + 56, 1uLL, 0x953807CCuLL);
        *(a1 + 24) = v7;
        v8 = a1 + 24;
        v7[6] = 0;
        **(a1 + 24) = v5;
        *(*(a1 + 24) + 8) = v5;
        *(*(a1 + 24) + 16) = 0;
        v9 = a1 + 24;
        if ((*(a1 + 16) & 2) == 0)
        {
          v9 = *v8 + 56;
        }

        v10 = (a2 + 24);
        if ((*(a2 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        if (v5 >= 1)
        {
          v11 = (v9 + 8);
          do
          {
            v12 = *v10;
            v10 += 2;
            *&v6 = v12;
            *(v11 - 1) = v12;
            *&v12 = *v11;
            v11 += 2;
            *(*v8 + 16) += v12;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  return *&v6;
}

uint64_t C3DIndexSetGetCount(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    v1 = a1 + 32;
  }

  else
  {
    v1 = *(a1 + 24) + 16;
  }

  return *v1;
}

uint64_t C3DIndexSetGetLastRange(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v1 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 0;
    return v1[2 * v4];
  }

  v2 = *v1;
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v1 = (v2 + 56);
  v4 = v3 - 1;
  return v1[2 * v4];
}

uint64_t _indexClosestToIndex(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v5 = a3;
  v6 = a2;
  if ((*(a1 + 16) & 2) != 0)
  {
    v10 = *(a1 + 24);
    v15 = v10 + *(a1 + 32);
    v16 = (v15 - 1);
    if (a4)
    {
      if (a3)
      {
        if (v10 < a2)
        {
          if (v15 > a2)
          {
            return v6;
          }

          v8 = 0;
LABEL_47:
          v27 = _indexOfRangeAfterOrContainingIndex(a1, v6);
          if (v27 == -1)
          {
            return -1;
          }

          v28 = a1 + 24;
          if ((*(a1 + 16) & 2) != 0)
          {
            v29 = (a1 + 24);
          }

          else
          {
            v29 = v10 + 7;
          }

          v30 = v29[2 * v27];
          if (v6 <= v30)
          {
            v16 = v30;
          }

          else
          {
            v16 = v6;
          }

          if (v10[6] == v8)
          {
            v10[4] = v27;
            *(*v28 + 40) = v16 - v30;
            v26 = *v28;
            goto LABEL_56;
          }

          return v16;
        }
      }

      else if (v10 <= a2)
      {
        if (v16 > a2)
        {
          return a2 + 1;
        }

        v8 = 0;
LABEL_45:
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return -1;
        }

        ++v6;
        goto LABEL_47;
      }

      return *(a1 + 24);
    }

    if (a3)
    {
      if (v16 <= a2)
      {
        return v16;
      }

      v16 = a2;
      if (v10 <= a2)
      {
        return v16;
      }

      goto LABEL_32;
    }

    if (v15 <= a2)
    {
      return v16;
    }

    if (v10 < a2)
    {
      return a2 - 1;
    }

    goto LABEL_30;
  }

  v8 = pthread_self();
  v9 = a1 + 24;
  v10 = *(a1 + 24);
  if (v10[6] == v8 && v10[3] == v6)
  {
    if ((v5 & 1) == 0)
    {
      v11 = v10 + 7;
      if ((*(a1 + 16) & 2) != 0)
      {
        v11 = (a1 + 24);
      }

      if (a4)
      {
        v12 = v10[4];
        if (v11[2 * v12 + 1] - 1 > v10[5])
        {
          v10[3] = v6 + 1;
          v13 = *v9;
          v14 = *(*v9 + 40) + 1;
LABEL_59:
          *(v13 + 40) = v14;
          return *(*v9 + 24);
        }

        if ((*(a1 + 16) & 3) != 0)
        {
          v31 = (*(a1 + 16) & 1) == 0;
        }

        else
        {
          v31 = v10[1];
        }

        v37 = v12 + 1;
        if (v37 < v31)
        {
          v10[4] = v37;
          v38 = v11[2 * *(*v9 + 32)];
          *(*v9 + 40) = 0;
          *(*v9 + 24) = v38;
          return *(*v9 + 24);
        }
      }

      else
      {
        if (v10[5] >= 1)
        {
          v10[3] = v6 - 1;
          v13 = *v9;
          v14 = *(*v9 + 40) - 1;
          goto LABEL_59;
        }

        v32 = v10[4];
        v33 = v32 < 1;
        v34 = v32 - 1;
        if (!v33)
        {
          v10[4] = v34;
          v35 = &v11[2 * *(*v9 + 32)];
          v36 = *v35;
          *(*v9 + 40) = v35[1] - 1;
          *(*v9 + 24) = *(*v9 + 40) + v36;
          return *(*v9 + 24);
        }
      }

      v10[6] = 0;
      return -1;
    }

    return v6;
  }

  if (a4)
  {
    if (v5)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if ((v5 & 1) == 0)
  {
LABEL_30:
    if (!v6)
    {
      return -1;
    }

    --v6;
  }

LABEL_32:
  v17 = _indexOfRangeBeforeOrContainingIndex(a1, v6);
  if (v17 == -1)
  {
    return -1;
  }

  v18 = v17;
  v19 = a1 + 24;
  if ((*(a1 + 16) & 2) != 0)
  {
    v20 = (a1 + 24);
  }

  else
  {
    v20 = v10 + 7;
  }

  v21 = &v20[2 * v17];
  v22 = *v21;
  v23 = v21[1] + *v21;
  if (v6 >= v23)
  {
    v16 = v23 - 1;
  }

  else
  {
    v16 = v6;
  }

  v24 = pthread_self();
  v25 = *(a1 + 24);
  if (*(v25 + 48) == v24)
  {
    *(v25 + 32) = v18;
    *(*v19 + 40) = v16 - v22;
    v26 = *v19;
LABEL_56:
    *(v26 + 24) = v16;
  }

  return v16;
}

BOOL C3DIndexSetContainsIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = a1 + 24;
  if ((*(a1 + 16) & 2) != 0)
  {
    return *v4 <= a2 && *(a1 + 32) + *v4 > a2;
  }

  else
  {
    v5 = *(*v4 + 48);
    if (v5 != pthread_self())
    {
      v6 = *(a1 + 16);
      goto LABEL_5;
    }

    v12 = *v4;
    if (*(*v4 + 24) != a2)
    {
      v6 = *(a1 + 16);
      v13 = v12 + 56;
      if ((v6 & 2) != 0)
      {
        v13 = v4;
      }

      v14 = (v13 + 16 * *(v12 + 32));
      if (*v14 > a2 || v14[1] + *v14 <= a2)
      {
LABEL_5:
        if ((v6 & 1) == 0)
        {
          if ((v6 & 2) != 0)
          {
            goto LABEL_9;
          }

          v7 = *(*v4 + 8);
          if (v7 >= 1)
          {
            v4 = *v4 + 56;
            v8 = v7 - 1;
            if (v7 != 1)
            {
              v15 = 0;
              do
              {
                v9 = (v15 + v8) >> 1;
                v16 = (v4 + 16 * v9);
                if (*v16 <= a2)
                {
                  if (v16[1] + *v16 > a2)
                  {
                    return v9 != -1;
                  }

                  v15 = v9 + 1;
                }

                else
                {
                  v8 = (v15 + v8) >> 1;
                }
              }

              while (v15 < v8);
              v9 = v15;
LABEL_10:
              v10 = (v4 + 16 * v9);
              if (*v10 <= a2 && v10[1] + *v10 > a2)
              {
                return v9 != -1;
              }

              goto LABEL_12;
            }

LABEL_9:
            v9 = 0;
            goto LABEL_10;
          }
        }

LABEL_12:
        v9 = -1;
        return v9 != -1;
      }
    }

    return 1;
  }
}

void C3DIndexSetAddIndexes(uint64_t a1, uint64_t a2)
{
  if (a2 && a2 != a1)
  {
    if ((*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8)))
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = rangeAtIndex(a2, i);
        C3DIndexSetAddIndexesInRange(a1, v6, v7, v8);
      }
    }

    else
    {
      C3DIndexSetRemoveAllIndexes(a1);

      _setContentToContentFromIndexSet(a1, a2);
    }
  }
}

uint64_t rangeAtIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8);
  }

  if (v4 < a2)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      rangeAtIndex_cold_1();
    }
  }

  v6 = (a1 + 24);
  if ((*(a1 + 16) & 2) == 0)
  {
    v6 = (*v6 + 56);
  }

  return v6[2 * a2];
}

void C3DIndexSetRemoveIndexes(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8) >= 1))
  {
    if (a2 == a1)
    {

      C3DIndexSetRemoveAllIndexes(a1);
    }

    else
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = rangeAtIndex(a2, i);
        C3DIndexSetRemoveIndexesInRange(a1, v6, v7);
      }
    }
  }
}

uint64_t C3DIndexSetCreateIntersectionOfIndexSets(uint64_t a1, uint64_t a2)
{
  v4 = C3DIndexSetCreate();
  *(v4 + 16) |= 0xBu;
  v5 = C3DIndexSetCreate();
  v5[16] |= 0xBu;
  C3DIndexSetAddIndexes(v4, a1);
  C3DIndexSetAddIndexes(v5, a1);
  C3DIndexSetRemoveIndexes(v5, a2);
  C3DIndexSetRemoveIndexes(v4, v5);
  CFRelease(v5);
  return v4;
}

void btC3DMotionState::btC3DMotionState(btC3DMotionState *this, __C3DNode *a2, float a3)
{
  *this = &unk_282DC4FC8;
  *(this + 16) = a3;
  *(this + 9) = a2;
}

float32x4_t btC3DMotionState::getWorldTransform(btC3DMotionState *this, btTransform *a2)
{
  WorldMatrix = C3DNodeGetWorldMatrix(*(this + 9));
  v5.i64[0] = WorldMatrix[3].i64[0];
  v6.i32[0] = WorldMatrix->i32[0];
  v6.i32[1] = WorldMatrix[1].i32[0];
  v6.i64[1] = WorldMatrix[2].u32[0];
  v22 = v6;
  v6.i32[0] = WorldMatrix->i32[1];
  v6.i32[1] = WorldMatrix[1].i32[1];
  v6.i32[2] = WorldMatrix[2].i32[1];
  v21 = v6;
  v6.i32[0] = WorldMatrix->i32[2];
  v6.i32[1] = WorldMatrix[1].i32[2];
  v6.i32[2] = WorldMatrix[2].i32[2];
  v20 = v6;
  v5.i64[1] = WorldMatrix[3].u32[2];
  v23 = v5;
  C3DMatrix4x4GetScale(WorldMatrix, this + 1);
  __asm { FMOV            V1.2S, #1.0 }

  *v12.f32 = vdiv_f32(_D1, *(this + 16));
  v12.f32[2] = 1.0 / COERCE_FLOAT(*(this + 3));
  v12.i32[3] = 0;
  result = vmulq_f32(v20, v12);
  v14 = vmulq_f32(v21, v12);
  v15 = vmulq_f32(v22, v12);
  v16 = *(this + 3);
  v17 = vmulq_f32(v16, result);
  v16.i32[3] = 0;
  v18 = vmulq_f32(v16, v15);
  v19 = vmulq_f32(v16, v14);
  v17.i32[3] = 0;
  *v19.f32 = vadd_f32(vpadd_f32(*v18.i8, *v19.f32), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v19.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v17.i32[0] = *(this + 16);
  a2->var0.var0[0] = v15;
  a2->var0.var0[1] = v14;
  a2->var0.var0[2] = result;
  a2->var1 = vmulq_n_f32(vaddq_f32(v23, v19), *v17.i32);
  return result;
}

void btC3DMotionState::setWorldTransform(btC3DMotionState *this, const btTransform *a2)
{
  v3 = a2->var0.var0[1];
  v4 = a2->var0.var0[2];
  v5 = *(this + 3);
  v6 = vmulq_f32(v4, v5);
  v5.i32[3] = 0;
  v7 = vmulq_f32(a2->var0.var0[0], v5);
  v8 = vmulq_f32(v3, v5);
  v6.i32[3] = 0;
  *v8.f32 = vadd_f32(vpadd_f32(*v7.i8, *v8.f32), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
  *&v8.u32[2] = vpadd_f32(vpadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)), 0);
  v9 = vtrn1q_s32(a2->var0.var0[0], v3);
  v10.i64[0] = vextq_s8(v9, v9, 8uLL).u64[0];
  v9.i64[1] = v4.u32[0];
  *v11.f32 = vzip2_s32(*a2->var0.var0[0].var0.var0, *v3.f32);
  *&v11.u32[2] = vzip2_s32(*v4.f32, 0);
  v10.i64[1] = vextq_s8(v4, v4, 8uLL).u32[0];
  v12 = vsubq_f32(vmulq_n_f32(a2->var1, 1.0 / *(this + 16)), v8);
  v17[0] = v9;
  v17[1] = v11;
  v17[2] = v10;
  v18 = v12.i64[0];
  v19 = v12.i32[2];
  v20 = 1065353216;
  C3DMatrix4x4Scale(v17, this + 2);
  Parent = C3DNodeGetParent(*(this + 9));
  if (Parent)
  {
    v14 = Parent;
    if (C3DNodeGetParent(Parent))
    {
      WorldMatrix = C3DNodeGetWorldMatrix(v14);
      C3DMatrix4x4Invert(WorldMatrix, &v16);
      C3DMatrix4x4Mult(v17, &v16, v17);
    }
  }

  C3DNodeSetMatrix(*(this + 9), v17);
}

btRigidBody *__modifyCollisionFlagsFromType(btRigidBody *this, SCNPhysicsBodyType a2)
{
  v2 = this;
  v3 = *(this + 58) & 0xFFFFFFFC;
  if (a2 == SCNPhysicsBodyTypeKinematic)
  {
    v4 = v3 | 2;
    this = btCollisionObject::setActivationState(this, 4);
  }

  else if (a2)
  {
    v4 = *(this + 58) & 0xFFFFFFFC;
  }

  else
  {
    v4 = v3 | 1;
  }

  v5 = *(v2 + 26);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 == 21)
    {
      v7 = v4 | 8;
    }

    else
    {
      v7 = v4;
    }

    if (v6 == 22)
    {
      v4 |= 8u;
    }

    else
    {
      v4 = v7;
    }
  }

  *(v2 + 58) = v4;
  return this;
}

uint64_t __updateCCDRadiusIfNeeded(uint64_t result)
{
  if (*(result + 288) > 0.0)
  {
    v7 = v1;
    v8 = v2;
    v3 = result;
    result = *(result + 208);
    v6 = 0;
    if (result)
    {
      result = (*(*result + 24))(result, &v5, &v6);
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    *(v3 + 284) = v4;
  }

  return result;
}

btCollisionShape *__integrateCenterOfMassOffsetIfNeeded(btQuaternion *a1, btVector3 a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    if (*a3 != 0.0 || *(a3 + 4) != 0.0 || *(a3 + 8) != 0.0)
    {
      Identity = btQuaternion::getIdentity(a1);
      v7.i64[0] = 0x8000000080000000;
      v7.i64[1] = 0x8000000080000000;
      v9 = veorq_s8(*a3, v7);
      btMatrix3x3::setRotation(&v10.var0, Identity);
      v10.var1 = v9;
      if (v3->var1 == 31 && v3->var2 == 2880154539)
      {
        btCompoundShape::updateChildTransform(v3, 0, &v10, 1);
        return v3;
      }

      v5 = btAlignedAllocInternal(128, 16);
      btCompoundShape::btCompoundShape(v5, 1);
      *(v5 + 2) = 2880154539;
      btCompoundShape::addChildShape(v5, &v10, v3, 0);
      return v5;
    }

    if (LODWORD(a1->var0.var0[2]) == 31 && *a1[1].var0.var0 == 2880154539)
    {
      v5 = *(*&a1[2].var0.var0[2] + 64);
      (*(*a1->var0.var0 + 8))(a1);
      return v5;
    }
  }

  return v3;
}

__int128 *btQuaternion::getIdentity(btQuaternion *this)
{
  {
    btQuaternion::getIdentity();
  }

  return &btQuaternion::getIdentity(void)::identityQuat;
}

void __setCollisionShape(uint64_t a1, btQuaternion *a2, unsigned __int128 *a3, __int128 *a4, double a5, float a6, float a7, float a8)
{
  v13 = *a4;
  v11 = v13;
  v12 = __integrateCenterOfMassOffsetIfNeeded(a2, *(&a6 - 1), &v13);
  (*(*a1 + 24))(a1, v12);
  __updateCCDRadiusIfNeeded(a1);
  __updateMassAndLocalInertia(a1, v12, a3, a5);
  if (v12)
  {
    if ((v12->var1 - 21) <= 1)
    {
      *(a1 + 232) |= 8u;
    }
  }
}

void __updateMassAndLocalInertia(btRigidBody *this, _DWORD *a2, unsigned __int128 *a3, double a4)
{
  v13 = 0uLL;
  if (a3)
  {
    v6 = *a3;
    HIDWORD(v6) = 0;
    v13 = v6;
  }

  else if (a2 && (*(this + 232) & 1) == 0)
  {
    v8 = a2[2];
    v9 = v8 > 0x1C;
    v10 = (1 << v8) & 0x10608000;
    if (v9 || v10 == 0)
    {
      v12 = a4;
      (*(*a2 + 64))(a2, &v13, v12);
    }
  }

  v7 = a4;
  btRigidBody::setMassProps(this, v7, &v13);
  btRigidBody::updateInertiaTensor(this);
}

void sub_21C0089C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21C008B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21C008E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DNodePhysicsBodyIsAtRest(uint64_t a1)
{
  v1 = [[SCNNode nodeWithNodeRef:?]];

  return [(SCNPhysicsBody *)v1 isResting];
}

__n128 __copy_helper_block_e16_48c14_ZTS9btVector3(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void _recreateProxy(btDynamicsWorld *a1, btCollisionObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    (*(*a1 + 184))(a1);
    (*(*a1 + 176))(a1, a2, a4, a3, a5);

    btCollisionObject::activate(a2, 0);
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_DEFAULT, "Warning: cannot change collision bit masks without physics world", v11, 2u);
    }
  }
}

float32x4_t btRigidBody::applyImpulse(btRigidBody *this, float32x4_t *a2, float32x4_t *a3)
{
  result.i32[0] = *(this + 96);
  if (result.f32[0] != 0.0)
  {
    v4 = *(this + 25);
    v5 = vmulq_n_f32(vmulq_f32(*a2, v4), result.f32[0]);
    v5.i32[3] = 0;
    v6 = *(this + 21);
    *(this + 22) = vaddq_f32(*(this + 22), v5);
    v7 = vmulq_f32(v4, *a2);
    v8 = vsubq_f32(vmulq_f32(*a3, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)), vmulq_f32(v7, vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL)));
    v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
    v10 = v9;
    v10.i32[3] = 0;
    v11 = vmulq_f32(v6, v9);
    v12 = vmulq_f32(*(this + 19), v10);
    v13 = vmulq_f32(*(this + 20), v10);
    v11.i32[3] = 0;
    *v13.f32 = vadd_f32(vpadd_f32(*v12.i8, *v13.f32), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
    *&v13.u32[2] = vpadd_f32(vpadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)), 0);
    result = vaddq_f32(*(this + 23), vmulq_f32(*(this + 39), v13));
    *(this + 23) = result;
  }

  return result;
}

C3D::DrawNodesPass *C3D::PickedObjectPass::PickedObjectPass(C3D::PickedObjectPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v5 = 0;
  v7 = 0u;
  v8 = 0x20000;
  memset(v4, 0, sizeof(v4));
  v6 = -1;
  BYTE8(v7) = 1;
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v4);
  *result = &unk_282DC5068;
  return result;
}

void C3D::PickedObjectPass::setup(C3D::PickedObjectPass *this)
{
  C3D::Pass::setOutputCount(this, 2u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "COLOR_PICKED";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v10);
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 16) = v10;
  *(v2 + 32) = v11;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 2;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v4 + 66) |= 0x40u;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 48) = xmmword_21C27F610;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 1u) + 8) = "DEPTH_PICKED";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 1u) + 64) = 2;
  C3D::Pass::parentDepthDesc(this, &v10);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v6 + 66) = *(v6 + 66) & 0xFFFC | 2;
  *(this + 296) = 0;
  *(this + 149) |= 0x20u;
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  SelectedNodes = C3DAuthoringEnvironmentGetSelectedNodes(AuthoringEnvironment);
  *(this + 34) = C3D::flattenedNodesForSelectedNodes(SelectedNodes, *(this + 2), *(*(this + 3) + 16), v9);
  C3D::DrawNodesPass::setup(this);
}

void C3D::PickedObjectPass::compile(C3D::PickedObjectPass *this)
{
  v2 = (*(*this + 64))(this);
  v3 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 670) = v3;
  if (!v3)
  {
    operator new();
  }

  *(this + 32) = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);

  C3D::DrawNodesPass::compile(this);
}

BOOL C3D::PickedObjectPass::_shouldPushNodeToVisible(C3D::PickedObjectPass *this, __C3DNode *a2)
{
  if (C3DNodeGetFloor(a2))
  {
    return 0;
  }

  return C3D::DrawNodesPass::_shouldPushNodeToVisible(this, a2);
}

void C3D::PickedObjectPassResource::~PickedObjectPassResource(C3D::PickedObjectPassResource *this)
{
  *this = &unk_282DC50F8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_282DC50F8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x21CF07610);
}

id _C3DAnimationCFFinalize(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
    a1[15] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    CFRelease(v3);
    a1[12] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  return C3DEntityCFFinalize(a1);
}

uint64_t _C3DAnimationInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityInitWithPropertyList(a1, a2);
  if (v14)
  {
    Value = CFDictionaryGetValue(a2, @"duration");
    if (Value)
    {
      v16 = Value;
      v17 = CFGetTypeID(Value);
      if (v17 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
        v18 = valuePtr;
        *(a1 + 72) = v18;
      }
    }

    v19 = CFDictionaryGetValue(a2, @"repeatCount");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
        *(a1 + 76) = LODWORD(valuePtr);
      }
    }

    v22 = CFDictionaryGetValue(a2, @"autoreverses");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = *(a1 + 84) & 0xFFFE | LOBYTE(valuePtr) & 1;
      }
    }

    v25 = CFDictionaryGetValue(a2, @"additive");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = (2 * (LOBYTE(valuePtr) & 1)) | *(a1 + 84) & 0xFFFD;
      }
    }

    v28 = CFDictionaryGetValue(a2, @"cumulative");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = (4 * (LOBYTE(valuePtr) & 1)) | *(a1 + 84) & 0xFFFB;
      }
    }

    v31 = CFDictionaryGetValue(a2, @"isAnimationClip");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v32, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = ((LOBYTE(valuePtr) & 1) << 8) | *(a1 + 84) & 0xFEFF;
      }
    }

    v34 = CFDictionaryGetValue(a2, @"removeOnCompletion");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = (16 * (LOBYTE(valuePtr) & 1)) | *(a1 + 84) & 0xFFEF;
      }
    }

    v37 = CFDictionaryGetValue(a2, @"sceneTimeBased");
    if (v37)
    {
      v38 = v37;
      v39 = CFGetTypeID(v37);
      if (v39 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v38, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = (8 * (LOBYTE(valuePtr) & 1)) | *(a1 + 84) & 0xFFF7;
      }
    }

    v40 = CFDictionaryGetValue(a2, @"fillModeMask");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v41, kCFNumberIntType, &valuePtr);
        *(a1 + 84) = ((LOBYTE(valuePtr) & 3) << 6) | *(a1 + 84) & 0xFF3F;
      }
    }

    v43 = CFDictionaryGetValue(a2, @"timeOffset");
    if (v43)
    {
      v44 = v43;
      v45 = CFGetTypeID(v43);
      if (v45 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v44, kCFNumberDoubleType, &valuePtr);
        *(a1 + 136) = valuePtr;
      }
    }

    v46 = CFDictionaryGetValue(a2, @"beginTime");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v47, kCFNumberDoubleType, &valuePtr);
        *(a1 + 128) = valuePtr;
      }
    }

    v49 = CFDictionaryGetValue(a2, @"speed");
    if (v49)
    {
      v50 = v49;
      v51 = CFGetTypeID(v49);
      if (v51 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v50, kCFNumberCGFloatType, &valuePtr);
        v52 = valuePtr;
        *(a1 + 80) = v52;
      }
    }

    v53 = CFDictionaryGetValue(a2, @"fadeInDuration");
    if (v53)
    {
      v54 = v53;
      v55 = CFGetTypeID(v53);
      if (v55 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v54, kCFNumberCGFloatType, &valuePtr);
        v56 = valuePtr;
        *(a1 + 108) = v56;
      }
    }

    v57 = CFDictionaryGetValue(a2, @"fadeOutDuration");
    if (v57)
    {
      v58 = v57;
      v59 = CFGetTypeID(v57);
      if (v59 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v58, kCFNumberCGFloatType, &valuePtr);
        v60 = valuePtr;
        *(a1 + 112) = v60;
      }
    }

    if (a3)
    {
      v61 = CFDictionaryGetValue(a3, @"kSceneSourceAnimationLoadingMode");
      if (v61)
      {
        v62 = v61;
        v63 = CFEqual(v61, @"playUsingSceneTime") != 0;
        C3DAnimationSetIsSceneTimeBased(a1, v63);
        v64 = CFEqual(v62, @"playUsingSceneTime") == 0;
        C3DAnimationSetRemoveOnCompletion(a1, v64);
        v65 = CFEqual(v62, @"playRepeatedly");
        v66 = INFINITY;
        if (!v65)
        {
          v66 = 0.0;
        }

        C3DAnimationSetRepeatCount(a1, v66);
      }
    }

    v67 = CFDictionaryGetValue(a2, @"timingFunction");
    if (v67)
    {
      *(a1 + 120) = C3DTimingFunctionCreateWithPropertyList(v67);
    }
  }

  else
  {
    v68 = scn_default_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      _C3DAnimationInitWithPropertyList_cold_2();
    }
  }

  return v14;
}

void C3DAnimationSetIsSceneTimeBased(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFF7 | v12;
}

void C3DAnimationSetRemoveOnCompletion(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFEF | v12;
}

void C3DAnimationSetRepeatCount(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 76) = a2;
}

const void *C3DAnimationCreateWithPropertyList(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, @"type");
  if (CFStringCompare(Value, @"simpleAnimation", 0))
  {
    if (CFStringCompare(Value, @"keyframedAnimation", 0))
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        C3DAnimationCreateWithPropertyList_cold_1();
      }

      return 0;
    }

    v8 = C3DKeyframedAnimationCreate();
  }

  else
  {
    v8 = C3DSimpleAnimationCreate();
  }

  v9 = v8;
  if (v8 && (C3DInitWithPropertyList(v8, a1, a2, a3) & 1) == 0)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

uint64_t C3DSimpleAnimationCreate()
{
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DSimpleAnimationCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DSimpleAnimationGetTypeID_typeID, 368);
  *(result + 104) = 1065353216;
  *(result + 80) = 1065353216;
  *(result + 84) |= 0xD0u;
  return result;
}

__CFDictionary *_C3DAnimationCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DEntityCopyPropertyList(a1, a2, a3);
  valuePtr = *(a1 + 72);
  v17 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(v16, @"duration", v17);
  CFRelease(v17);
  LODWORD(valuePtr) = *(a1 + 76);
  v18 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CFDictionaryAddValue(v16, @"repeatCount", v18);
  CFRelease(v18);
  LODWORD(valuePtr) = *(a1 + 84) & 1;
  v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"autoreverses", v19);
  CFRelease(v19);
  v20 = *(a1 + 84);
  if ((v20 & 0x100) != 0)
  {
    LODWORD(valuePtr) = 1;
    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v16, @"isAnimationClip", v21);
    CFRelease(v21);
    v20 = *(a1 + 84);
  }

  LODWORD(valuePtr) = (v20 >> 1) & 1;
  v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"additive", v22);
  CFRelease(v22);
  LODWORD(valuePtr) = (*(a1 + 84) >> 2) & 1;
  v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"cumulative", v23);
  CFRelease(v23);
  LODWORD(valuePtr) = (*(a1 + 84) >> 4) & 1;
  v24 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"removeOnCompletion", v24);
  CFRelease(v24);
  LODWORD(valuePtr) = (*(a1 + 84) >> 3) & 1;
  v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"sceneTimeBased", v25);
  CFRelease(v25);
  LODWORD(valuePtr) = *(a1 + 84) >> 6;
  v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"fillModeMask", v26);
  CFRelease(v26);
  valuePtr = *(a1 + 136);
  v27 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(v16, @"timeOffset", v27);
  CFRelease(v27);
  valuePtr = *(a1 + 128);
  v28 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(v16, @"beginTime", v28);
  CFRelease(v28);
  valuePtr = *(a1 + 80);
  v29 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(v16, @"speed", v29);
  CFRelease(v29);
  valuePtr = *(a1 + 112);
  v30 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(v16, @"fadeOutDuration", v30);
  CFRelease(v30);
  valuePtr = *(a1 + 108);
  v31 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(v16, @"fadeInDuration", v31);
  CFRelease(v31);
  v32 = *(a1 + 120);
  if (v32)
  {
    v33 = C3DCopyPropertyList(v32, a2, a3, a4);
    CFDictionaryAddValue(v16, @"timingFunction", v33);
    if (v33)
    {
      CFRelease(v33);
    }
  }

  return v16;
}

uint64_t C3DAnimationCommonInit(uint64_t result)
{
  *(result + 104) = 1065353216;
  *(result + 80) = 1065353216;
  *(result + 84) |= 0xD0u;
  return result;
}

const void *C3DAnimationCopyTarget(uint64_t a1, float32x4_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    return 0;
  }

  v13 = C3DCFTypeCopyModelInfoAtSplittedPath(a2, v12, 0, 1);
  v14 = v13;
  if (v13 && !C3DModelTargetGetTargetAddress(v13))
  {
    CFRelease(v14);
    return 0;
  }

  return v14;
}

CFTypeRef C3DAnimationSetKeyPath(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

void C3DAnimationSetDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 72) = a2;
}

float C3DAnimationGetDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

float C3DAnimationGetTotalDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 76);
  if (v10 == INFINITY || v10 == 3.4028e38)
  {
    return 3.4028e38;
  }

  v13 = 1.0;
  if (v10 == 0.0)
  {
    v10 = 1.0;
  }

  v14 = v10 * *(a1 + 72);
  if (*(a1 + 84))
  {
    v13 = 2.0;
  }

  return v14 * v13;
}

float C3DAnimationGetRepeatCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 76);
}

void C3DAnimationSetAutoreverses(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFFE | a2;
}

uint64_t C3DAnimationGetAutoreverses(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84) & 1;
}

CFTypeRef C3DAnimationSetTimingFunction(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 120);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 120) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 120) = result;
  }

  return result;
}

uint64_t C3DAnimationGetTimingFunction(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

void C3DAnimationSetAdditive(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFFD | v12;
}

uint64_t C3DAnimationGetCumulative(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 2) & 1;
}

void C3DAnimationSetCumulative(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFFB | v12;
}

uint64_t C3DAnimationGetAdditive(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 1) & 1;
}

uint64_t C3DAnimationGetRemoveOnCompletion(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 4) & 1;
}

uint64_t C3DAnimationGetIsSceneTimeBased(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 3) & 1;
}

CFStringRef C3DAnimationSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

uint64_t C3DAnimationGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1);
}

void C3DAnimationSetTimeOffset(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
}

double C3DAnimationGetTimeOffset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

void C3DAnimationSetSpeed(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
}

float C3DAnimationGetSpeed(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void C3DAnimationSetFadeInDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 108) = a2;
}

float C3DAnimationGetFadeInDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 108);
}

void C3DAnimationSetFadeOutDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

float C3DAnimationGetFadeOutDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void C3DAnimationSetWeight(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 104) = a2;
}

float C3DAnimationGetWeight(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

uint64_t C3DAnimationSetCommitWhenDone(_WORD *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  a1[42] = a1[42] & 0xFFDF | v12;
  v13 = CFGetTypeID(a1);
  result = C3DAnimationGroupGetTypeID();
  if (v13 == result)
  {
    result = C3DAnimationGroupGetAnimationCount(a1);
    if (result >= 1)
    {
      v15 = result;
      for (i = 0; i != v15; ++i)
      {
        AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
        result = C3DAnimationSetCommitWhenDone(AnimationAtIndex, a2);
      }
    }
  }

  return result;
}

uint64_t C3DAnimationGetCommitWhenDone(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 5) & 1;
}

uint64_t _C3DAnimationReadsDestinationBuffer(_BYTE *a1)
{
  v2 = CFGetTypeID(a1);
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DSimpleAnimationCreate_cold_1();
  }

  if (v2 == C3DSimpleAnimationGetTypeID_typeID)
  {
    if (a1[372])
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[373];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t C3DSimpleAnimationGetTypeID()
{
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DSimpleAnimationCreate_cold_1();
  }

  return C3DSimpleAnimationGetTypeID_typeID;
}

uint64_t C3DAnimationGetAnimationCallbacks(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 144;
}

uint64_t C3DAnimationGetDelegate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

void C3DAnimationSetDelegate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 160) = a2;
}

uint64_t C3DAnimationGetAnimationEvents(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

CFTypeRef C3DAnimationSetAnimationEvents(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 96);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 96) = result;
  }

  return result;
}

void C3DAnimationSetIsImplicit(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 512;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFDFF | v12;
}

uint64_t C3DAnimationGetIsImplicit(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 9) & 1;
}

uint64_t C3DAnimationGetFillModeMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84) >> 6;
}

void C3DAnimationSetFillModeMask(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 84) = *(a1 + 84) & 0xFF3F | ((a2 & 3) << 6);
}

uint64_t C3DAnimationSetup(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DAnimationSetup_cold_2();
  }

  if (v12 == C3DSimpleAnimationGetTypeID_typeID)
  {
    *(cf + 11) = C3DSimpleAnimationEvaluate;
    return C3DSimpleAnimationSetup(cf, a2);
  }

  else if (v12 == C3DKeyframedAnimationGetTypeID())
  {
    *(cf + 11) = C3DKeyframedAnimationEvaluate;
    return C3DKeyframedAnimationSetup(cf);
  }

  else
  {
    v14 = scn_default_log();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DAnimationSetup_cold_3();
      return 0;
    }
  }

  return result;
}

BOOL C3DSimpleAnimationEvaluate(uint64_t a1, int a2, float32x2_t *a3, float32x4_t a4)
{
  v6 = *a4.i64;
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DSimpleAnimationEvaluate_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DSimpleAnimationEvaluate_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  v24 = *(a1 + 376);
  if (v24)
  {
    if (*(a1 + 372))
    {
      v25 = a3;
    }

    else
    {
      v25 = (a1 + 176);
    }

    if (*(a1 + 373) == 1)
    {
      v26 = a3;
      if ((*(a1 + 374) & 4) != 0)
      {
        v26 = a1 + 304;
        C3DAddBaseType(*(a1 + 368), v25, (a1 + 240), (a1 + 304), a4);
      }
    }

    else
    {
      v26 = a1 + 304;
    }

    v28 = *(a1 + 376);
    Additive = C3DAnimationGetAdditive(a1);
    if (a2)
    {
      v30.n128_f64[0] = 1.0 - v6;
      v31 = v26;
      v32 = v25;
    }

    else
    {
      v30.n128_f64[0] = v6;
      v31 = v25;
      v32 = v26;
    }

    v28(v31, v32, 0, 0, 0, Additive, a3, v30);
  }

  else
  {
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      C3DSimpleAnimationEvaluate_cold_3();
    }
  }

  return v24 != 0;
}

uint64_t C3DSimpleAnimationSetup(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    BaseType = C3DModelTargetGetBaseType(a2);
    TypeSemantic = C3DModelTargetGetTypeSemantic(a2);
    goto LABEL_7;
  }

  TypeSemantic = 0;
  BaseType = *(a1 + 368);
LABEL_7:
  v14 = BaseType;
  v15 = C3DKeyFrameInterpolatorForType(BaseType, TypeSemantic, 0, 0, 1);
  *(a1 + 376) = v15;
  if (!v15)
  {
    return 0;
  }

  v17 = *(a1 + 374);
  if ((~v17 & 3) != 0)
  {
    if ((~v17 & 5) == 0)
    {
      C3DAddBaseType(*(a1 + 368), (a1 + 176), (a1 + 240), (a1 + 304), v16);
      return 1;
    }

    if ((~v17 & 6) == 0)
    {
      C3DSubBaseType(*(a1 + 368), (a1 + 304), (a1 + 240), (a1 + 176), v16);
      return 1;
    }

    if (v17)
    {
      v18 = 1;
      *(a1 + 373) = 1;
      return v18;
    }

    if ((v17 & 2) != 0)
    {
      v18 = 1;
      *(a1 + 372) = 1;
      return v18;
    }

    if ((v17 & 4) != 0)
    {
      *(a1 + 372) = 257;
      return 1;
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a2);
    if (TargetAddress)
    {
      v20 = TargetAddress;
      v18 = 1;
      v21 = C3DValueCreate(v14, 1);
      Target = C3DModelTargetGetTarget(a2);
      Bytes = C3DValueGetBytes(v21);
      Length = C3DValueGetLength(v21);
      v25 = C3DModelTargetGetTypeSemantic(a2);
      ComponentIndex = C3DModelTargetGetComponentIndex(a2);
      C3DGetValue(Target, v20, Bytes, Length, v25, ComponentIndex);
      C3DSimpleAnimationSetStartValue(a1, v21);
      *(a1 + 373) = 1;
      CFRelease(v21);
      return v18;
    }

    return 0;
  }

  return 1;
}

__n128 C3DAnimationCopySettingsToAnimation(uint64_t a1, __n128 *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Name = C3DAnimationGetName(a1);
  C3DAnimationSetName(a2, Name);
  C3DAnimationSetKeyPath(a2, *(a1 + 64));
  Duration = C3DAnimationGetDuration(a1);
  C3DAnimationSetDuration(a2, Duration);
  RepeatCount = C3DAnimationGetRepeatCount(a1);
  C3DAnimationSetRepeatCount(a2, RepeatCount);
  Autoreverses = C3DAnimationGetAutoreverses(a1);
  C3DAnimationSetAutoreverses(a2, Autoreverses);
  TimingFunction = C3DAnimationGetTimingFunction(a1);
  C3DAnimationSetTimingFunction(a2, TimingFunction);
  Additive = C3DAnimationGetAdditive(a1);
  C3DAnimationSetAdditive(a2, Additive);
  Cumulative = C3DAnimationGetCumulative(a1);
  C3DAnimationSetCumulative(a2, Cumulative);
  IsSceneTimeBased = C3DAnimationGetIsSceneTimeBased(a1);
  C3DAnimationSetIsSceneTimeBased(a2, IsSceneTimeBased);
  v28 = C3DAnimationGetRemoveOnCompletion(a1);
  C3DAnimationSetRemoveOnCompletion(a2, v28);
  PauseTime = C3DAnimationNodeGetPauseTime(a1);
  C3DAnimationNodeSetPauseTime(a2, PauseTime);
  TimeOffset = C3DAnimationGetTimeOffset(a1);
  C3DAnimationSetTimeOffset(a2, TimeOffset);
  Speed = C3DAnimationGetSpeed(a1);
  C3DAnimationSetSpeed(a2, Speed);
  CommitWhenDone = C3DAnimationGetCommitWhenDone(a1);
  C3DAnimationSetCommitWhenDone(a2, CommitWhenDone);
  FillModeMask = C3DAnimationGetFillModeMask(a1);
  C3DAnimationSetFillModeMask(a2, FillModeMask);
  Weight = C3DAnimationGetWeight(a1);
  C3DAnimationSetWeight(a2, Weight);
  FadeInDuration = C3DAnimationGetFadeInDuration(a1);
  C3DAnimationSetFadeInDuration(a2, FadeInDuration);
  FadeOutDuration = C3DAnimationGetFadeOutDuration(a1);
  C3DAnimationSetFadeOutDuration(a2, FadeOutDuration);
  AnimationEvents = C3DAnimationGetAnimationEvents(a1);
  C3DAnimationSetAnimationEvents(a2, AnimationEvents);
  Delegate = C3DAnimationGetDelegate(a1);
  C3DAnimationSetDelegate(a2, Delegate);
  a2[5].n128_u16[2] = a2[5].n128_u16[2] & 0xFEFF | *(a1 + 84) & 0x100;
  result = *(a1 + 144);
  a2[9] = result;
  return result;
}

CFTypeRef *C3DAnimationCreateCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DAnimationSetup_cold_2();
  }

  if (v10 == C3DSimpleAnimationGetTypeID_typeID)
  {
    v11 = C3DSimpleAnimationCreate();
    C3DSimpleAnimationCopy(cf, v11);
  }

  else if (v10 == C3DKeyframedAnimationGetTypeID())
  {
    v11 = C3DKeyframedAnimationCreate();
    C3DKeyframedAnimationCopy(cf, v11);
  }

  else if (v10 == C3DAnimationGroupGetTypeID())
  {
    v11 = C3DAnimationGroupCreate();
    C3DAnimationGroupCopy(cf, v11);
  }

  else
  {
    if (v10 != C3DAnimationClusterGetTypeID())
    {
      C3DEntityCopyTo(cf, 0);
      return 0;
    }

    v11 = C3DAnimationClusterCreate();
    C3DAnimationClusterCopy(cf, v11);
  }

  C3DEntityCopyTo(cf, v11);
  if (v11)
  {
    C3DAnimationCopySettingsToAnimation(cf, v11);
  }

  return v11;
}

void *C3DSimpleAnimationCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DSimpleAnimationCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(a2 + 376) = *(a1 + 376);
  memcpy((a2 + 176), (a1 + 176), *(a1 + 370));
  memcpy((a2 + 304), (a1 + 304), *(a1 + 370));
  result = memcpy((a2 + 240), (a1 + 240), *(a1 + 370));
  v21 = *(a2 + 374) & 0xFE | *(a1 + 374) & 1;
  *(a2 + 374) = v21;
  v22 = v21 & 0xFD | (2 * ((*(a1 + 374) & 2) != 0));
  *(a2 + 374) = v22;
  *(a2 + 374) = v22 & 0xFB | *(a1 + 374) & 4;
  *(a2 + 370) = *(a1 + 370);
  *(a2 + 368) = *(a1 + 368);
  return result;
}

uint64_t C3DAnimationGetBaseType(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DSimpleAnimationGetTypeID_onceToken != -1)
  {
    C3DAnimationSetup_cold_2();
  }

  if (v10 == C3DSimpleAnimationGetTypeID_typeID)
  {
    return *(cf + 184);
  }

  else if (v10 == C3DKeyframedAnimationGetTypeID())
  {
    return *(*(cf + 21) + 28);
  }

  else
  {
    return 0;
  }
}

double __C3DSimpleAnimationGetTypeID_block_invoke()
{
  C3DSimpleAnimationGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DSimpleAnimationContextClassSerializable;
  unk_28173FA68 = kC3DC3DSimpleAnimationContextClassSerializable;
  unk_28173FA78 = *off_282DC5138;
  return result;
}

size_t C3DSimpleAnimationSetEndValue(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = C3DValueGetType(a2);
  *(a1 + 374) |= 2u;
  return C3DValueCopyTo(a2, (a1 + 304));
}

uint64_t C3DSimpleAnimationCopyEndValue(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 374) & 2) == 0)
  {
    return 0;
  }

  v10 = C3DValueCreate(*(a1 + 368), 1);
  C3DValueInitFrom(v10, (a1 + 304));
  return v10;
}

size_t C3DSimpleAnimationSetStartValue(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = C3DValueGetType(a2);
  *(a1 + 374) |= 1u;
  return C3DValueCopyTo(a2, (a1 + 176));
}

uint64_t C3DSimpleAnimationCopyStartValue(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 374) & 1) == 0)
  {
    return 0;
  }

  v10 = C3DValueCreate(*(a1 + 368), 1);
  C3DValueInitFrom(v10, (a1 + 176));
  return v10;
}

size_t C3DSimpleAnimationSetByValue(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = C3DValueGetType(a2);
  *(a1 + 374) |= 4u;
  return C3DValueCopyTo(a2, (a1 + 240));
}

uint64_t C3DSimpleAnimationCopyByValue(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 374) & 4) == 0)
  {
    return 0;
  }

  v10 = C3DValueCreate(*(a1 + 368), 1);
  C3DValueInitFrom(v10, (a1 + 240));
  return v10;
}

CFStringRef _C3DSimpleAnimationCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DSimpleAnimation>");
}

CFStringRef _C3DSimpleAnimationCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DSimpleAnimation>");
}

BOOL _C3DSimpleAnimationInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((_C3DAnimationInitWithPropertyList(a1, a2, a3) & 1) == 0)
  {
    v13 = scn_default_log();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSimpleAnimationInitWithPropertyList_cold_1();
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"baseType");
  if (!Value)
  {
    v14 = scn_default_log();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSimpleAnimationInitWithPropertyList_cold_2();
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  *buffer = 0u;
  v17 = 0u;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v6 = C3DValueCreate(valuePtr, 1);
  v7 = C3DSizeOfBaseType(valuePtr);
  v8 = C3DSizeOfBaseType(valuePtr);
  v9 = CFDictionaryGetValue(a2, @"startValue");
  if (v9)
  {
    v21.location = 0;
    v21.length = v7;
    CFDataGetBytes(v9, v21, buffer);
    C3DConvertFromPlatformIndependentData(buffer, v6[3], v7, v8, valuePtr, 1, 1, 0, 0);
    C3DSimpleAnimationSetStartValue(a1, v6);
  }

  v10 = CFDictionaryGetValue(a2, @"byValue");
  if (v10)
  {
    v22.location = 0;
    v22.length = v7;
    CFDataGetBytes(v10, v22, buffer);
    C3DConvertFromPlatformIndependentData(buffer, v6[3], v7, v8, valuePtr, 1, 1, 0, 0);
    C3DSimpleAnimationSetByValue(a1, v6);
  }

  v11 = CFDictionaryGetValue(a2, @"endValue");
  if (v11)
  {
    v23.location = 0;
    v23.length = v7;
    CFDataGetBytes(v11, v23, buffer);
    C3DConvertFromPlatformIndependentData(buffer, v6[3], v7, v8, valuePtr, 1, 1, 0, 0);
    C3DSimpleAnimationSetEndValue(a1, v6);
  }

  CFRelease(v6);
  return 1;
}

__CFDictionary *_C3DSimpleAnimationCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = _C3DAnimationCopyPropertyList(a1, a2, a3, a4);
  CFDictionaryAddValue(v5, @"type", @"simpleAnimation");
  v16 = 0u;
  v17 = 0u;
  *bytes = 0u;
  v15 = 0u;
  valuePtr = *(a1 + 368);
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v5, @"baseType", v6);
  CFRelease(v6);
  v7 = C3DSizeOfBaseType(valuePtr);
  v8 = *(a1 + 374);
  if ((v8 & 1) == 0)
  {
    if ((*(a1 + 374) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    C3DConvertToPlatformIndependentData((a1 + 240), bytes, *(a1 + 370), v7, *(a1 + 368), 1, 1, 0, 0);
    v12 = CFDataCreate(0, bytes, v7);
    CFDictionaryAddValue(v5, @"byValue", v12);
    CFRelease(v12);
    if ((*(a1 + 374) & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  C3DConvertToPlatformIndependentData((a1 + 176), bytes, *(a1 + 370), v7, *(a1 + 368), 1, 1, 0, 0);
  v11 = CFDataCreate(0, bytes, v7);
  CFDictionaryAddValue(v5, @"startValue", v11);
  CFRelease(v11);
  v8 = *(a1 + 374);
  if ((v8 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v8 & 2) != 0)
  {
LABEL_4:
    C3DConvertToPlatformIndependentData((a1 + 304), bytes, *(a1 + 370), v7, *(a1 + 368), 1, 1, 0, 0);
    v9 = CFDataCreate(0, bytes, v7);
    CFDictionaryAddValue(v5, @"endValue", v9);
    CFRelease(v9);
  }

  return v5;
}

C3D::DrawNodesPass *C3D::SSRDepthBackFacePass::SSRDepthBackFacePass(C3D::SSRDepthBackFacePass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = xmmword_21C27FD10;
  v7 = 0;
  v8 = 0;
  v9 = 2;
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v4);
  *result = &unk_282DC5158;
  return result;
}

void C3D::SSRDepthBackFacePass::setup(C3D::SSRDepthBackFacePass *this)
{
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 64) = 2;
  *(v2 + 8) = "BackDepth";
  C3D::Pass::parentDepthDesc(this, &v3);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 2;
  C3D::DrawNodesPass::setup(this);
}

void C3D::SSRDepthBackFacePass::compile(C3D::SSRDepthBackFacePass *this)
{
  v2 = (*(*this + 64))(this);
  v3 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 670) = v3;
  if (!v3)
  {
    operator new();
  }

  *(this + 32) = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);
  C3D::DrawNodesPass::compile(this);
}

void C3D::SSRDepthBackFacePass::execute(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  if ((*(*a2 + 73) & 1) == 0 && *(v2 + 16) != 1)
  {
    *(v2 + 16) = 1;
    *(v2 + 41) = 1;
  }

  *(v2 + 73) = 1;
  C3D::DrawNodesPass::execute(a1, a2);
}

void C3D::SSRDepthBackFacePass::Resource::~Resource(C3D::SSRDepthBackFacePass::Resource *this)
{
  *this = &unk_282DC51E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_282DC51E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x21CF07610);
}

void __C3DLightDidChange(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetScene(a1);
  if (v10)
  {
    LightingSystem = C3DSceneGetLightingSystem(v10);
    if (LightingSystem)
    {
      v12 = LightingSystem;
      C3DLightingSystemLightDidUpdate(LightingSystem, a1);
      if (C3DLightGetTechnique(a1))
      {
        C3DLightingSystemAddToLightsWithTechnique(v12, a1);
      }
    }
  }
}

uint64_t C3DLightGetTechnique(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void __C3DLightProbeEnvironmentDidChange(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    ++*(a1 + 324);
  }
}

uint64_t C3DLightGetTypeID()
{
  if (C3DLightGetTypeID_onceToken != -1)
  {
    C3DLightGetTypeID_cold_1();
  }

  return C3DLightGetTypeID_typeID;
}

double __C3DLightGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DLightGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"attenuationEndDistance", 0x58u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"attenuationFalloffExponent", 0x5Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"attenuationStartDistance", 0x54u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"color", 0x40u, 13, 0);
  C3DModelPathResolverRegisterProperty(@"intensity", 0x60u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"orthographicScale", 0x88u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"shadowBias", 0xC0u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"shadowColor", 0x70u, 13, 0);
  C3DModelPathResolverRegisterProperty(@"shadowRadius", 0x8Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"spotFalloffExponent", 0xF8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"spotInnerAngle", 0xF4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"spotOuterAngle", 0xF0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"temperature", 0x64u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"zFar", 0xB8u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"zNear", 0xB0u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"shadowCascadeDebugFactor", 0x98u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740F40 = kC3DC3DLightContextClassSerializable;
  unk_281740F50 = *&off_282DC5228;
  qword_281740EF8 = _C3DLightCopyInstanceVariables;
  result = *&kC3DC3DLightContextClassAnimatable;
  xmmword_281740EE8 = kC3DC3DLightContextClassAnimatable;
  qword_281740F38 = _C3DLightSearchByID;
  return result;
}

uint64_t C3DLightCreate()
{
  if (C3DLightGetTypeID_onceToken != -1)
  {
    C3DLightGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLightGetTypeID_typeID, 320);
  v7 = 0uLL;
  if (C3DWasLinkedBeforeMajorOSYear2014())
  {
    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  C3DLightSetType(Instance, v1);
  C3DColor4Make(&v7, 1.0, 1.0, 1.0, 1.0);
  C3DLightSetColor(Instance, &v7);
  if (C3DWasLinkedBeforeMajorOSYear2016())
  {
    v2 = 0.5;
  }

  else
  {
    v2 = 1.0;
  }

  C3DColor4Make(&v7, 0.0, 0.0, 0.0, v2);
  C3DLightSetShadowColor(Instance, &v7);
  *(Instance + 192) = 0x3FF0000000000000;
  *(Instance + 176) = xmmword_21C2A1E80;
  *(Instance + 136) = 0x404000003F800000;
  *(Instance + 96) = 1148846080;
  *(Instance + 160) = -1;
  *(Instance + 169) = *(Instance + 169) & 0xFE | C3DWasLinkedBeforeMajorOSYear2014();
  *(Instance + 156) = 0;
  *(Instance + 100) = 1170939904;
  *(Instance + 84) = 0;
  *(Instance + 88) = 0;
  *(Instance + 92) = 0x40000000;
  v3 = C3DWasLinkedBeforeMajorOSYear2017();
  v4 = *(Instance + 169);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 32;
  }

  *(Instance + 157) = 1;
  *(Instance + 169) = v5 & 0xE0 | v4 & 0x1F;
  *(Instance + 152) = 0;
  *(Instance + 144) = 0x3E19999A42C80000;
  C3DLightInitializePerTypeParameters(Instance);
  return Instance;
}

void C3DLightSetType(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) != a2)
  {
    C3DLightDestroyPerTypeParameters(a1);
    *(a1 + 80) = a2;
    C3DLightInitializePerTypeParameters(a1);
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

void C3DLightSetColor(uint64_t a1, float *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DCGColorGetComponentsInColorSpace_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!C3DColor4IsEqualToColor4(a2, (a1 + 64)))
  {
    IsBlack = C3DColor4IsBlack((a1 + 64));
    v21 = C3DColor4IsBlack(a2);
    v28 = *a2;
    *(a1 + 64) = *a2;
    if (IsBlack || v21)
    {
      __C3DLightDidChange(a1);
    }

    if (*(a1 + 80) == 6)
    {
      __C3DLightUpdateAreaVisualisationGeometryMaterial(a1, v28, v22, v23, v24, v25, v26, v27);
    }
  }
}

__n128 C3DLightSetShadowColor(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[7] = *a2;
  return result;
}

double C3DLightInitializePerTypeParameters(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      *(a1 + 240) = 0;
      result = 2.19902369e13;
      *(a1 + 248) = 0x42B4000042C80000;
    }

    else if (v1 == 6)
    {
      *(a1 + 240) = *(a1 + 240) & 0xFC | 2;
      result = *&kDefaultAreaDescription;
      *(a1 + 256) = kDefaultAreaDescription;
      *(a1 + 272) = unk_21C2A2040;
    }
  }

  else if (v1 == 3)
  {
    *&result = 1110704128;
    *(a1 + 240) = 1110704128;
    *(a1 + 248) = 1065353216;
  }

  else if (v1 == 4)
  {
    *(a1 + 240) = 0;
    *(a1 + 320) = 0x1FFFFFFFFLL;
    *(a1 + 328) = 0;
    result = 0.0;
    __asm { FMOV            V1.4S, #10.0 }

    *(a1 + 256) = _Q1;
    *(a1 + 272) = 0u;
    *(a1 + 330) = 0;
    __asm { FMOV            V1.4S, #1.0 }

    *(a1 + 288) = _Q1;
    *(a1 + 304) = 0u;
  }

  return result;
}

uint64_t C3DLightGetGobo(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 200);
  if (a2)
  {
    if (!result)
    {
      result = C3DEffectSlotCreate(a1, 22);
      *(a1 + 200) = result;
    }
  }

  return result;
}

uint64_t C3DLightGetProbeEnvironment(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 208);
  if (a2)
  {
    if (!result)
    {
      result = C3DEffectSlotCreate(a1, 25);
      *(a1 + 208) = result;
    }
  }

  return result;
}

void C3DLightDestroyPerTypeParameters(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 4)
  {
LABEL_4:
    v3 = *(a1 + 240);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 240) = 0;
    }

    return;
  }

  if (v2 != 6)
  {
    if (v2 != 5)
    {
      return;
    }

    goto LABEL_4;
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 288) = 0;
  }

  if (*(a1 + 256) == 4)
  {
    v5 = *(a1 + 280);

    free(v5);
  }
}

void C3DLightSetAreaDescription(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 6)
  {
    v12 = *(a1 + 256);
    v13 = *a2;
    if (v12 != 4 || v13 == 4)
    {
      if (v13 == 4)
      {
        v15 = a2[16];
        if (v15 > 2)
        {
          v17 = *(a2 + 3);
          if (v12 == 4)
          {
            v18 = *(a1 + 280);
          }

          else
          {
            v18 = 0;
          }

          v19 = malloc_type_realloc(v18, 8 * a2[16], 0x81D7B79BuLL);
          *(a2 + 3) = v19;
          v20 = 0.0;
          v21 = 1;
          v22 = v15;
          v23 = v17;
          do
          {
            v24 = *v23++;
            v25 = v24;
            if (v22 == 1)
            {
              v26 = 0;
            }

            else
            {
              v26 = v21;
            }

            v20 = v20 + ((-*(&v25 + 1) * COERCE_FLOAT(v17[v26])) + (*&v25 * COERCE_FLOAT(HIDWORD(v17[v26]))));
            ++v21;
            --v22;
          }

          while (v22);
          if (v20 >= 0.0)
          {
            memcpy(v19, v17, 8 * v15);
          }

          else
          {
            v27 = v15 - 1;
            do
            {
              *v19++ = v17[v27--];
              --v15;
            }

            while (v15);
          }
        }

        else
        {
          *a2 = 1;
          *(a2 + 2) = 0x3F0000003F000000;
        }
      }
    }

    else
    {
      free(*(a1 + 280));
    }

    v16 = *(a2 + 1);
    *(a1 + 256) = *a2;
    *(a1 + 272) = v16;
    __C3DLightUpdateAreaVisualisationGeometryMesh(a1);
    __C3DLightAreaDidChange(a1);
  }
}

uint64_t C3DLightGetDistanceAttenuationType(uint64_t a1)
{
  if ((*(a1 + 80) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  AttenuationStartDistance = C3DLightGetAttenuationStartDistance(a1);
  AttenuationEndDistance = C3DLightGetAttenuationEndDistance(a1);
  AttenuationFalloffExponent = C3DLightGetAttenuationFalloffExponent(a1);
  if (AttenuationEndDistance <= 0.0 && AttenuationStartDistance <= 0.0)
  {
    return 0;
  }

  result = 1;
  if (AttenuationEndDistance > AttenuationStartDistance && AttenuationFalloffExponent != 0.0)
  {
    if (fabsf(AttenuationFalloffExponent + -1.0) >= 0.01)
    {
      if (fabsf(AttenuationFalloffExponent + -2.0) >= 0.01)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

float C3DLightGetAttenuationStartDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84);
}

float C3DLightGetAttenuationEndDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

float C3DLightGetAttenuationFalloffExponent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92);
}

uint64_t C3DLightGetProgramHashCode(uint64_t a1)
{
  v2 = *(a1 + 80);
  DistanceAttenuationType = C3DLightGetDistanceAttenuationType(a1);
  if (v2 == 6)
  {
    v8 = 0;
    v7 = (*(a1 + 256) & 7) << 13;
  }

  else if (v2 == 3)
  {
    SpotInnerAngle = C3DLightGetSpotInnerAngle(a1);
    SpotOuterAngle = C3DLightGetSpotOuterAngle(a1);
    SpotFalloffExponent = C3DLightGetSpotFalloffExponent(a1);
    v7 = 0;
    v8 = 64;
    if (SpotOuterAngle > SpotInnerAngle && SpotFalloffExponent != 0.0)
    {
      v7 = 0;
      if (fabsf(SpotFalloffExponent + -1.0) >= 0.01)
      {
        if (fabsf(SpotFalloffExponent + -2.0) >= 0.01)
        {
          v8 = 256;
        }

        else
        {
          v8 = 192;
        }
      }

      else
      {
        v8 = 128;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    HasImageOrTexture = C3DEffectSlotHasImageOrTexture(v9);
  }

  else
  {
    HasImageOrTexture = 0;
  }

  if (C3DLightTypeSupportsShadow(a1) && C3DLightGetCastsShadow(a1))
  {
    v11 = C3DLightGetUsesDeferredShadows(a1) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 124);
  if (C3DLightGetEffectiveShadowSampleCount(a1) > 0x1E)
  {
    LOBYTE(v13) = 31;
  }

  else
  {
    LOBYTE(v13) = C3DLightGetEffectiveShadowSampleCount(a1);
  }

  v14 = v2 & 7;
  if (*(a1 + 169) & 2) != 0 && ((HasImageOrTexture | v11))
  {
    v15 = v14 | 0x1000;
  }

  else
  {
    v15 = (8 * (DistanceAttenuationType & 7)) | v8 | v14;
  }

  if (HasImageOrTexture)
  {
    v16 = 512;
  }

  else
  {
    v16 = 0;
  }

  if (v11)
  {
    v17 = 1024;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16 | v7 | v17 | v15;
  if (v11)
  {
    v19 = v18 | ((v12 < 1.0) << 11);
    if (C3DLightGetShadowRadius(a1) == 0.0)
    {
      v13 = fminf(ceilf(sqrtf(v13)), 8.0);
      v19 |= 0x4000000u;
    }

    v18 = ((v13 & 0x1F) << 16) | v19;
    if (C3DLightSupportsShadowCascades(a1))
    {
      ShadowCascadeCount = C3DLightGetShadowCascadeCount(a1);
      v18 = ((ShadowCascadeCount & 7) << 21) | v18;
      if (ShadowCascadeCount >= 2)
      {
        return v18 | ((*(a1 + 152) != 0.0) << 25) | 0x1000000;
      }
    }
  }

  return v18;
}

float C3DLightGetSpotInnerAngle(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = 0.0;
  if (*(a1 + 80) == 3)
  {
    return *(a1 + 244);
  }

  return result;
}

float C3DLightGetSpotOuterAngle(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 3)
  {
    return *(a1 + 240);
  }

  else
  {
    return 45.0;
  }
}

float C3DLightGetSpotFalloffExponent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = 1.0;
  if (*(a1 + 80) == 3)
  {
    return *(a1 + 248);
  }

  return result;
}

uint64_t C3DLightHasValidGobo(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return C3DEffectSlotHasImageOrTexture(result);
  }

  return result;
}

uint64_t C3DLightTypeSupportsShadow(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v3 = *(a1 + 240);
    }

    else
    {
      if (v1 != 5)
      {
        return 0;
      }

      v3 = *(a1 + 252);
    }

    return v3 < 180.0;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return C3DWasLinkedBeforeMajorOSYear2018() ^ 1;
      }

      return 0;
    }

    return 1;
  }
}

uint64_t C3DLightGetCastsShadow(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DLightGetUsesDeferredShadows(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 169) & 1;
}

uint64_t C3DLightGetEffectiveShadowSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 156) >= 0x40u)
  {
    v10 = 64;
  }

  else
  {
    v10 = *(a1 + 156);
  }

  if (*(a1 + 156))
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

float C3DLightGetShadowRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 140);
}

BOOL C3DLightSupportsShadowCascades(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80) == 1;
}

uint64_t C3DLightGetShadowCascadeCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 157);
}

uint64_t C3DLightGetColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 64;
}

uint64_t C3DLightGetShadowColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void C3DLightSetIESProfileURL(uint64_t a1, void *cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v12 = *(a1 + 240);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 240) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 240) = v13;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    if (C3DIESInfoLoad(cf, &v16))
    {
      v14 = DWORD1(v17);
      *(a1 + 248) = DWORD1(v16);
      *(a1 + 252) = v14;
    }

    else
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        C3DLightSetIESProfileURL_cold_2();
      }
    }

    C3DIESInfoDestroy(&v16);
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

void __C3DLightInvalidatePasses(void *a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  v3 = C3DGetScene(a1);

  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v3, 0, 1u);
}

uint64_t C3DLightGetIESProfileURL(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) != 5)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DLightGetIESProfileURL_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(a1 + 240);
}

float C3DLightGetIESSpotAngle(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) != 5)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DLightGetIESProfileURL_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(a1 + 252);
}

uint64_t C3DLightGetProjectionInfo(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DLightGetProjectionInfo_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (*(a1 + 80) == 5)
  {
    v20 = 0;
    SpotOuterAngle = *(a1 + 252);
  }

  else
  {
    SpotOuterAngle = C3DLightGetSpotOuterAngle(a1);
    if (SpotOuterAngle >= 180.0 || SpotOuterAngle <= 0.0)
    {
      SpotOuterAngle = 60.0;
    }

    v20 = *(a1 + 80) == 1;
  }

  v23 = *a2 & 0xF6 | v20;
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = v23 & 0x8F;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(a2 + 40) = _D1;
  v29 = *(a1 + 176);
  v30 = *(a1 + 184);
  if (v30 == 0.0)
  {
    v30 = 100.0;
  }

  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
  if (v29 == 0.0)
  {
    *(a2 + 8) = 0x3FF0000000000000;
  }

  *(a2 + 56) = SpotOuterAngle;
  *a2 = v23 & 0x81;
  *(a2 + 48) = *(a1 + 136);
  return 1;
}

float C3DLightComputeDistanceAttenuations(float *a1, int a2, float a3)
{
  v3 = fmaxf(a1[21] * a3, 0.0);
  v4 = a1[22] * a3;
  v5 = fmaxf(v4, 0.0);
  if (v3 < v5 && fmaxf(a1[23], 0.0) != 0.0)
  {
    return -1.0 / (v5 - v3);
  }

  if (a2)
  {
    v7 = -1.0 / v4;
    v8 = v4 <= 0.0;
    result = 0.0;
    if (!v8)
    {
      return v7;
    }
  }

  else if (v3 <= v5)
  {
    return v5;
  }

  else
  {
    return v3;
  }

  return result;
}

void C3DLightComputeSpotAttenuations(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == 3)
  {
    v3 = fminf(*(a1 + 240), 180.0);
    v4 = v3 + -0.1;
    if (*(a1 + 244) < (v3 + -0.1))
    {
      v4 = *(a1 + 244);
    }

    v2 = (v4 * 0.5);
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
    if (v1 == 5)
    {
      v3 = *(a1 + 252);
    }
  }

  v5 = v2 / 180.0 * 3.14159265;
  cosf(v5);
  v6 = (v3 * 0.5) / 180.0 * 3.14159265;
  fmaxf(cosf(v6), 0.0);
}

void C3DLightSetTechnique(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[27];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[27] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[27] = v13;
    v14 = C3DGetScene(a1);
    if (v14)
    {
      LightingSystem = C3DSceneGetLightingSystem(v14);
      if (LightingSystem)
      {
        if (cf)
        {
          C3DLightingSystemAddToLightsWithTechnique(LightingSystem, a1);
        }

        else
        {
          C3DLightingSystemRemoveFromLightsWithTechnique(LightingSystem, a1);
        }
      }
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance();
    v17 = C3DGetScene(a1);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v17, 0, 1u);
  }
}

int8x8_t C3DLightGetRealShadowMapSize(uint64_t a1)
{
  v1 = vrndm_f32(COERCE_FLOAT32X2_T(C3DLightGetShadowMapSize(a1)));
  v2.f32[0] = fminf(*v1.i32, *&v1.i32[1]);
  return vbsl_s8(vdup_lane_s32(vcge_f32(0, v2), 0), vdup_n_s32(0x44800000u), v1);
}

double C3DLightGetShadowMapSize(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

void C3DLightSetAttenuationFalloffExponent(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 92) = a2;
}

void C3DLightSetAttenuationStartDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 84) = a2;
}

uint64_t C3DLightGetBaked(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 169) >> 2) & 1;
}

void C3DLightSetBaked(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 169);
  if (((((v12 & 4) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 169) = v12 & 0xFB | v13;
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

void C3DLightSetCastsShadow(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 168) != a2)
  {
    *(a1 + 168) = a2;
    __C3DLightInvalidatePasses(a1);
    __C3DLightDidChange(a1);
  }
}

uint64_t C3DLightGetCategoryBitMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

void C3DLightSetCategoryBitMask(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[20] != a2)
  {
    a1[20] = a2;
    __C3DLightDidChange(a1);
  }
}

float C3DLightGetIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void C3DLightSetIntensity(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = a2.i32[0];
  if (!a1)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  *(a1 + 96) = v8;
  if (*(a1 + 80) == 6)
  {
    __C3DLightUpdateAreaVisualisationGeometryMaterial(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

float C3DLightGetOrthographicScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

void C3DLightSetOrthographicScale(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
}

double C3DLightGetShadowBias(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192);
}

void C3DLightSetShadowBias(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 192) = a2;
}

void C3DLightSetShadowMapSize(float32x2_t *a1, float32x2_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = vceq_f32(a1[16], a2);
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    a1[16] = a2;
    __C3DLightInvalidatePasses(a1);
    v13 = C3DGetScene(a1);
    if (v13)
    {
      LightingSystem = C3DSceneGetLightingSystem(v13);
      if (LightingSystem)
      {
        C3DLightingSystemInvalidateShadowTechniqueForLight(LightingSystem, a1);
      }
    }
  }
}

void C3DLightSetShadowRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 140);
  if (v12 != a2)
  {
    *(a1 + 140) = a2;
    if (a2 == 0.0 || v12 == 0.0)
    {
      __C3DLightInvalidatePasses(a1);
      __C3DLightDidChange(a1);
    }
  }
}

uint64_t C3DLightGetShadowSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 156);
}

void C3DLightSetShadowSampleCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 156) != a2)
  {
    *(a1 + 156) = a2;
    __C3DLightInvalidatePasses(a1);
    __C3DLightDidChange(a1);
  }
}

void C3DLightSetSpotFalloffExponent(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 248) = a2;
  }
}

void C3DLightSetSpotInnerAngle(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 244) = a2;
  }
}

void C3DLightSetSpotOuterAngle(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 240) = a2;
  }
}

float C3DLightGetTemperature(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 100);
}

void C3DLightSetTemperature(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = a2.i32[0];
  if (!a1)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  *(a1 + 100) = v8;
  if (*(a1 + 80) == 6)
  {
    __C3DLightUpdateAreaVisualisationGeometryMaterial(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t C3DLightGetType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void C3DLightSetUsesDeferredShadows(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 169);
  if ((v12 & 1) != a2)
  {
    *(a1 + 169) = v12 & 0xFE | a2;
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

uint64_t C3DLightGetUsesModulatedMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 169) >> 1) & 1;
}

void C3DLightSetUsesModulatedMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 169);
  if (((((v12 & 2) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 169) = v12 & 0xFD | v13;
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

double C3DLightGetZFar(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void C3DLightSetZFar(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 184) = a2;
}

double C3DLightGetZNear(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

void C3DLightSetZNear(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 176) = a2;
}

uint64_t C3DLightGetAreaVisualisationGeometry(uint64_t a1)
{
  if (*(a1 + 80) != 6 || (*(a1 + 240) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    v2 = C3DGeometryCreate();
    *(a1 + 288) = v2;
    v4 = C3DMaterialCreate();
    CommonProfile = C3DMaterialGetCommonProfile(v4);
    C3DEffectCommonProfileSetLightingModel(CommonProfile, 0);
    C3DMaterialSetCullMode(v4, 1);
    C3DGeometryAppendMaterial(v2, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    __C3DLightUpdateAreaVisualisationGeometryMesh(a1);
    __C3DLightUpdateAreaVisualisationGeometryMaterial(a1, v6, v7, v8, v9, v10, v11, v12);
  }

  return v2;
}

void __C3DLightUpdateAreaVisualisationGeometryMesh(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 288);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 256);
  if (v3 <= 1)
  {
    if (!*(a1 + 256))
    {
      v20 = *(a1 + 272);
      *bytes = -v20;
      v33 = 0;
      *v34 = v20;
      *&v34[4] = 0;
      *v31 = 256;
      v21 = *MEMORY[0x277CBECE8];
      v22 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 24);
      values = C3DMeshSourceCreate(v22, 0, 2, 3, 1);
      CFRelease(v22);
      v23 = CFDataCreate(v21, v31, 2);
      cf = C3DMeshElementCreate();
      C3DMeshElementInit(cf, 2, 1, v23, 1);
      CFRelease(v23);
      v28 = 0;
      v24 = MEMORY[0x277CBF128];
      v25 = CFArrayCreate(v21, &values, 1, MEMORY[0x277CBF128]);
      v26 = CFArrayCreate(v21, &cf, 1, v24);
      Shape = C3DMeshCreateWithMeshSourcesAndMeshElements(v25, v26, &v28);
      C3DEntitySetName(Shape, @"Area Light - Line");
      CFRelease(v26);
      CFRelease(v25);
      v17 = cf;
LABEL_20:
      CFRelease(v17);
LABEL_21:
      C3DGeometrySetMesh(v1, Shape);
      if (Shape)
      {
        CFRelease(Shape);
      }

      return;
    }

    if (v3 != 1)
    {
      goto LABEL_24;
    }

    Plane = C3DMeshCreatePlane(0, 1, 1, 0, (COERCE_FLOAT(*(a1 + 272)) + COERCE_FLOAT(*(a1 + 272))), (COERCE_FLOAT(HIDWORD(*(a1 + 272))) + COERCE_FLOAT(HIDWORD(*(a1 + 272)))), 0.0);
    Shape = Plane;
    v19 = @"Area light - Rectangle";
LABEL_18:
    C3DEntitySetName(Plane, v19);
    goto LABEL_21;
  }

  switch(v3)
  {
    case 2u:
      Plane = C3DMeshCreatePlane(0, 1, 1, 0, (COERCE_FLOAT(*(a1 + 272)) + COERCE_FLOAT(*(a1 + 272))), (COERCE_FLOAT(HIDWORD(*(a1 + 272))) + COERCE_FLOAT(HIDWORD(*(a1 + 272)))), 0.0);
      Shape = Plane;
      v19 = @"Area Light - Ellipse";
      goto LABEL_18;
    case 3u:
      Plane = C3DMeshCreateChamferBox(0, 1, 1, 1, 0, 0, (COERCE_FLOAT(*(a1 + 272)) + COERCE_FLOAT(*(a1 + 272))), (COERCE_FLOAT(HIDWORD(*(a1 + 272))) + COERCE_FLOAT(HIDWORD(*(a1 + 272)))), (COERCE_FLOAT(*(a1 + 280)) + COERCE_FLOAT(*(a1 + 280))), 0.0);
      Shape = Plane;
      v19 = @"Area Light - Ellipsoid";
      goto LABEL_18;
    case 4u:
      Mutable = CGPathCreateMutable();
      if (*(a1 + 272))
      {
        v5 = 0;
        __asm { FMOV            V0.2S, #-1.0 }

        v11 = -_D0;
        do
        {
          v12 = vmul_f32(*(*(a1 + 280) + 8 * v5), *&v11);
          v13 = v12.f32[0];
          v14 = v12.f32[1];
          if (v5)
          {
            CGPathAddLineToPoint(Mutable, 0, v13, v14);
          }

          else
          {
            CGPathMoveToPoint(Mutable, 0, v13, v14);
          }

          ++v5;
        }

        while (v5 < *(a1 + 272));
      }

      CGPathCloseSubpath(Mutable);
      *bytes = 0.0;
      v33 = 1065353216;
      *v34 = 0;
      *&v34[8] = 2139095039;
      v35 = Mutable;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v15 = C3DShapeCreate(bytes);
      *bytes = 0.0;
      v33 = 1065353216;
      *v34 = 0;
      *&v34[8] = 2139095039;
      v35 = Mutable;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      Shape = C3DMeshCreateShape(v15, bytes);
      C3DEntitySetName(Shape, @"Area light - Polygon");
      CFRelease(v15);
      v17 = Mutable;
      goto LABEL_20;
  }

LABEL_24:
  v27 = *(a1 + 288);

  C3DGeometrySetMesh(v27, 0);
}

void __C3DLightUpdateAreaVisualisationGeometryMaterial(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = *(a1 + 288);
  if (v8)
  {
    *bytes = __renderColor(a1, a2, a3, a4, a5, a6, a7, a8);
    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v8, 0);
    C3DMaterialSetDoubleSided(MaterialAtIndex, *(a1 + 240) & 1);
    v11 = *(a1 + 256);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        C3DMaterialSetDoubleSided(MaterialAtIndex, 1);
        v17 = C3DFXMetalProgramCreateFromDefaultLibrary(@"area_shape_vert", @"area_shape_ellipsoid_frag");
        C3DMaterialSetupSinglePassTechniqueWithProgram(MaterialAtIndex, v17);
        CFRelease(v17);
        v13 = *MEMORY[0x277CBECE8];
        v18 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 16);
        C3DEntitySetValueForKey(MaterialAtIndex, @"color", v18);
        CFRelease(v18);
        v15 = *(a1 + 272);
        HIDWORD(v15) = 0;
        goto LABEL_9;
      }

      if (v11 != 4)
      {
        return;
      }
    }

    else if (v11 >= 2)
    {
      v12 = C3DFXMetalProgramCreateFromDefaultLibrary(@"area_shape_vert", @"area_shape_ellipse_frag");
      C3DMaterialSetupSinglePassTechniqueWithProgram(MaterialAtIndex, v12);
      CFRelease(v12);
      v13 = *MEMORY[0x277CBECE8];
      v14 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 16);
      C3DEntitySetValueForKey(MaterialAtIndex, @"color", v14);
      CFRelease(v14);
      *&v15 = *(a1 + 272);
LABEL_9:
      v20 = v15;
      v19 = CFDataCreate(v13, &v20, 16);
      C3DEntitySetValueForKey(MaterialAtIndex, @"halfExtents", v19);
      CFRelease(v19);
      return;
    }

    CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex);
    C3DEffectCommonProfileSetColor(CommonProfile, 2, bytes);
  }
}

void C3DLightSetDrawsArea(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 6)
  {
    if (a2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 240) = *(a1 + 240) & 0xFD | v12;
    if ((a2 & 1) == 0)
    {
      v13 = *(a1 + 288);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 288) = 0;
      }
    }

    __C3DLightAreaDidChange(a1);
  }
}

void __C3DLightAreaDidChange(void *a1)
{
  __C3DLightDidChange(a1);
  v2 = C3DGetScene(a1);

  C3DScenePostPipelineEvent(v2, 9, a1, 0);
}

uint64_t C3DLightGetDrawsArea(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 6)
  {
    return (*(a1 + 240) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

void C3DLightSetDoubleSided(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, __n128 a9)
{
  if (!a1)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (*(a1 + 80) == 6)
  {
    *(a1 + 240) = *(a1 + 240) & 0xFE | a2;
    __C3DLightUpdateAreaVisualisationGeometryMaterial(a1, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t C3DLightGetDoubleSided(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 6)
  {
    v10 = *(a1 + 240);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

__n128 C3DLightGetAreaDescription@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 6)
  {
    v12 = (a1 + 256);
  }

  else
  {
    v12 = &kDefaultAreaDescription;
  }

  result = *v12;
  v14 = v12[1];
  *a2 = *v12;
  a2[1] = v14;
  return result;
}

BOOL C3DLightIsBlack(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96) == 0.0 || C3DColor4IsBlack((a1 + 64));
}

__n128 __renderColor(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  a2.i32[0] = *(a1 + 100);
  if (a2.f32[0] == 0.0)
  {
    v9 = xmmword_21C27F910;
  }

  else
  {
    a3.i32[0] = 1170939904;
    v10 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a3, a2)), 0);
    v11 = vaddq_f32(vbslq_s8(v10, xmmword_21C2A1EA0, xmmword_21C2A1E90), vdivq_f32(vbslq_s8(v10, xmmword_21C2A1EC0, xmmword_21C2A1EB0), vaddq_f32(vdupq_lane_s32(*a2.f32, 0), vbslq_s8(v10, xmmword_21C2A1EE0, xmmword_21C2A1ED0))));
    v11.i32[3] = 0;
    v12 = vmaxnmq_f32(v11, 0);
    v12.i32[3] = 0;
    v9 = vminnmq_f32(v12, xmmword_21C280340);
  }

  a8.n128_u32[2] = *(a1 + 72);
  v24 = *(a1 + 76);
  a8.n128_u64[0] = *(a1 + 64);
  v25 = a8;
  v13 = v9;
  v13.i32[3] = 0;
  v21 = v9;
  v23 = v13;
  if (C3DLinearRenderingIsEnabled())
  {
    result.n128_u32[2] = v21.u32[2];
    v15 = v21;
    if (v21.f32[0] <= 0.04045)
    {
      result.n128_f32[0] = v21.f32[0] / 12.92;
    }

    else
    {
      result.n128_f32[0] = powf((v21.f32[0] + 0.055) / 1.055, 2.4);
      v15 = v21;
    }

    v20 = result.n128_u32[0];
    if (v15.f32[1] <= 0.04045)
    {
      v18 = v15.f32[1] / 12.92;
    }

    else
    {
      result.n128_f32[0] = powf((v15.f32[1] + 0.055) / 1.055, 2.4);
      v15.i32[2] = v21.i32[2];
      v18 = result.n128_f32[0];
    }

    if (v15.f32[2] <= 0.04045)
    {
      result.n128_f32[0] = v15.f32[2] / 12.92;
    }

    else
    {
      v22 = v18;
      result.n128_f32[0] = powf((v15.f32[2] + 0.055) / 1.055, 2.4);
      v18 = v22;
    }

    v16 = v25;
    v17.i64[0] = __PAIR64__(LODWORD(v18), v20);
    v17.i64[1] = __PAIR64__(v23.u32[3], result.n128_u32[0]);
  }

  else
  {
    v16 = v25;
    v17 = v23;
  }

  v19 = vmulq_f32(v16, v17);
  if (*(a1 + 80) == 5)
  {
    v19 = vmulq_n_f32(v19, *(a1 + 248) / 1000.0);
  }

  v19.i32[3] = v24;
  result.n128_u64[0] = vmulq_n_f32(v19, *(a1 + 96) / 1000.0).u64[0];
  result.n128_u32[3] = v24;
  return result;
}

void C3DLightSetAttenuationEndDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 88);
  *(a1 + 88) = a2;
  if ((a2 == 0.0) != (v12 == 0.0))
  {
    __C3DLightDidChange(a1);
  }
}

void C3DLightSetIrradianceSH(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[28];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[28] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[28] = v13;
    __C3DLightDidChange(a1);
  }
}

uint64_t C3DLightGetIrradianceSH(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DLightSetProbeType(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 328) = a2;
    __C3DLightDidChange(a1);
  }
}

uint64_t C3DLightGetProbeType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 328);
  }

  else
  {
    return 0;
  }
}

void C3DLightSetProbeUpdateType(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 329) = a2;
  }
}

uint64_t C3DLightGetProbeUpdateType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 329);
  }

  else
  {
    return 0;
  }
}

void C3DLightSetParallaxCorrectionEnabled(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 330) = a2;
  }
}

uint64_t C3DLightGetParallaxCorrectionEnabled(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    v10 = *(a1 + 330);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void C3DLightSetParallaxCenterOffset(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      __C3DLightDidChange_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u32[0] == 4)
  {
    a1[19] = a2;
  }
}

__n128 C3DLightGetParallaxCenterOffset(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u32[0] == 4)
  {
    return a1[19];
  }

  return result;
}

void C3DLightSetParallaxExtentsFactor(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      __C3DLightDidChange_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u32[0] == 4)
  {
    a1[18] = a2;
  }
}

__n128 C3DLightGetParallaxExtentsFactor(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1[5].n128_u32[0] == 4)
  {
    return a1[18];
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

float32x4_t C3DLightSetProbeExtents(float32x4_t *a1, float32x4_t result)
{
  if (!a1)
  {
    v12 = result;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      __C3DLightDidChange_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  if (a1[5].i32[0] == 4)
  {
    result.i32[3] = 0;
    result = vminnmq_f32(result, xmmword_21C2A1EF0);
    a1[16] = result;
  }

  return result;
}

__n128 C3DLightGetProbeExtents(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1[5].n128_u32[0] == 4)
  {
    return a1[16];
  }

  else
  {
    __asm { FMOV            V0.4S, #10.0 }
  }

  return result;
}

void C3DLightSetProbeOffset(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      __C3DLightDidChange_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u32[0] == 4)
  {
    a1[17] = a2;
  }
}

__n128 C3DLightGetProbeOffset(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u32[0] == 4)
  {
    return a1[17];
  }

  return result;
}

void C3DLightSetRadianceProbeIndex(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 320) = a2;
  }
}

uint64_t C3DLightGetRadianceProbeIndex(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 320);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t C3DLightGetProbeEnvironmentTimeStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 324);
  }

  else
  {
    return 1;
  }
}

float C3DLightGetAttenuationAtPoint(uint64_t a1, float32x4_t *a2, float32x4_t a3)
{
  WorldMatrix = C3DNodeGetWorldMatrix(a2);
  v5 = *(a1 + 80);
  v6 = 1.0;
  if ((v5 & 0xFFFFFFFE) == 2)
  {
    v7 = vsubq_f32(WorldMatrix[3], a3);
    v8 = *(a1 + 88);
    if (v8 > 0.0)
    {
      *&v9 = v8 * v8;
      v10 = vrecpe_f32(COERCE_UNSIGNED_INT(v8 * v8));
      v10.f32[0] = vmul_f32(v10, vrecps_f32(v9, v10)).f32[0];
      v11 = vmulq_f32(v7, v7);
      v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
      v12 = 1.0 / fmaxf(v11.f32[0], 0.0001);
      v13 = 1.0 - (v10.f32[0] * v11.f32[0]);
      if (v13 >= 1.0)
      {
        v13 = 1.0;
      }

      if (v13 <= 0.0)
      {
        v13 = 0.0;
      }

      v6 = v12 * (v13 * v13);
    }

    if (v5 == 3)
    {
      v21 = v7;
      v23 = vnegq_f32(WorldMatrix[2]);
      C3DLightComputeSpotAttenuations(a1);
      v14 = vmulq_f32(v21, v21);
      *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      *v14.f32 = vrsqrte_f32(v15);
      *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
      v16 = vmulq_f32(vmulq_n_f32(v21, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]), v23);
      v19 = v18 + ((v16.f32[2] + vaddv_f32(*v16.f32)) * v17);
      if (v19 >= 1.0)
      {
        v19 = 1.0;
      }

      if (v19 <= 0.0)
      {
        v19 = 0.0;
      }

      return v6 * (v19 * v19);
    }
  }

  return v6;
}

void C3DLightAddLightSHContribution(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, unsigned int a5, uint64_t a6)
{
  v92 = *MEMORY[0x277D85DE8];
  if (!a3 && (v11 = scn_default_log(), os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
  {
    __C3DLightDidChange_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v19 = scn_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    C3DLightAddLightSHContribution_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_6:
  WorldMatrix = C3DNodeGetWorldMatrix(a4);
  v73 = WorldMatrix[2];
  v75 = WorldMatrix[3];
  v81.i32[2] = 0;
  v81.i64[0] = 0;
  *v28.i64 = C3DNodeGetWorldPosition(a2, &v81);
  v78 = __renderColor(a3, v28, v29, v30, v31, v32, v33, v34);
  v36 = vmulq_n_f32(v78, C3DLightGetAttenuationAtPoint(a3, a4, v81));
  v37 = *(a3 + 80);
  if (v37 <= 1)
  {
    if (v37 == 1)
    {
      if (a5 - 7 >= 0xFFFFFFFB)
      {
        v38.i32[0] = v73.i32[0];
        switch(a5)
        {
          case 4u:
            v35.i32[0] = v73.i32[0];
            v80 = v36;
            sh_eval_basis_3(&v83, v35, v73.f32[1], v73.f32[2]);
            v36 = v80;
            break;
          case 3u:
            v83 = 1049652923;
            v51 = v73.f32[2] * 0.488602512;
            v52 = (v73.f32[2] * v73.f32[2]) * 0.946174696 + -0.315391565;
            v84 = v73.f32[1] * -0.4886;
            v85 = v51;
            v53 = v73.f32[2] * -1.09254843;
            v87 = v73.f32[1] * v53;
            v88 = v52;
            v54.i32[0] = v73.i32[0];
            v54.f32[1] = (v73.f32[0] * v73.f32[1]) + (v73.f32[0] * v73.f32[1]);
            v86 = vmul_f32(v54, 0x3F0BD8A1BEFA2A1CLL);
            v38.f32[1] = (v73.f32[0] * v73.f32[0]) - (v73.f32[1] * v73.f32[1]);
            v55 = &dword_21C2A1FBC;
            v56 = vld1_dup_f32(v55);
            v56.f32[0] = v53;
            v89 = vmul_f32(v38, v56);
            break;
          case 2u:
            v83 = 1049652923;
            v39 = v73.f32[2] * 0.488602512;
            v84 = v73.f32[1] * -0.4886;
            v85 = v39;
            v86.f32[0] = v73.f32[0] * -0.4886;
            break;
          default:
            C3DLightAddLightSHContribution_cold_5();
        }

        v57 = 0;
        v58 = flt_21C2A1F60[a5 > 2];
        v60 = v58 * v36.f32[0];
        v61 = vmuls_lane_f32(v58, *v36.f32, 1);
        v62 = vmuls_lane_f32(v58, v36, 2);
        do
        {
          v63 = *(&v83 + v57);
          *(a6 + v57) = *(a6 + v57) + (v63 * v60);
          *(a6 + 4 * a5 * a5 + v57) = *(a6 + 4 * a5 * a5 + v57) + (v63 * v61);
          v59 = a6 + 8 * a5 * a5;
          *(v59 + v57) = *(v59 + v57) + (v63 * v62);
          v57 += 4;
        }

        while (4 * a5 * a5 != v57);
      }
    }

    else if (!v37)
    {
      C3DLightAddLightSHContribution_cold_6();
    }

    return;
  }

  if (v37 == 2)
  {
    v79 = v36;
    v42.i32[1] = v75.i32[1];
    v40 = vsubq_f32(v75, v81);
    v41 = vmulq_f32(v40, v40);
    *v42.i32 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
    v90 = xmmword_21C2A1F00;
    v91 = 0x3F88CF6B3F973FD9;
    if (*v42.i32 <= 0.1)
    {
      v43 = 1.5708;
    }

    else
    {
      v74 = v42;
      v76 = v40;
      v43 = asinf(0.1 / *v42.i32);
      v42 = v74;
      v40 = v76;
    }

    v77 = vdivq_f32(v40, vdupq_lane_s32(v42, 0));
    v44 = __sincosf_stret(v43);
    v82[0] = 1.7725 - (v44.__cosval * 1.7725);
    v82[1] = ((v44.__sinval * v44.__sinval) * 3.07) * 0.5;
    if (a5 < 3)
    {
      v49 = v79;
      if (a5 != 2)
      {
        return;
      }

      v83 = 1049652923;
      v50 = v77.f32[2] * 0.488602512;
      v84 = vmuls_lane_f32(-0.4886, *v77.f32, 1);
      v85 = v50;
      v86.f32[0] = -0.4886 * v77.f32[0];
      goto LABEL_36;
    }

    v82[2] = ((v44.__cosval * -3.9633) * ((v44.__cosval * v44.__cosval) + -1.0)) * 0.5;
    if (a5 == 3)
    {
      v45 = *v77.f32;
      v83 = 1049652923;
      v46 = v77.f32[2] * 0.488602512;
      v47 = vmuls_lane_f32(v77.f32[2], v77, 2) * 0.946174696 + -0.315391565;
      v84 = vmuls_lane_f32(-0.4886, *v77.f32, 1);
      v85 = v46;
      v48 = v77.f32[2] * -1.09254843;
      v87 = vmuls_lane_f32(v48, *v77.f32, 1);
      v88 = v47;
      v86.f32[0] = -0.4886 * v77.f32[0];
      v86.f32[1] = (vmuls_lane_f32(v45.f32[0], v45, 1) + (v77.f32[0] * v77.f32[1])) * 0.54627;
      v89.f32[0] = v48 * v77.f32[0];
      v89.f32[1] = (vmuls_lane_f32(-v77.f32[1], *v77.f32, 1) + (v45.f32[0] * v45.f32[0])) * 0.54627;
LABEL_35:
      v49 = v79;
LABEL_36:
      v64 = 0;
      v65 = 0;
      v67 = 1;
      do
      {
        v68 = (2 * (v65 & 0x7FFFFFFF)) | 1;
        v69 = vmulq_n_f32(v49, v82[v65] * *(&v90 + v65));
        v70 = v64;
        do
        {
          v71 = 4 * v70;
          v72 = *(&v83 + v71);
          *(a6 + v71) = *(a6 + v71) + (v72 * v69.f32[0]);
          *(a6 + 4 * a5 * a5 + v71) = *(a6 + 4 * a5 * a5 + v71) + (v72 * v69.f32[1]);
          v66 = a6 + 8 * a5 * a5;
          *(v66 + v71) = *(v66 + v71) + (v72 * v69.f32[2]);
          ++v70;
          --v68;
        }

        while (v68);
        ++v65;
        v64 += v67;
        v67 += 2;
      }

      while (v65 != a5);
      return;
    }

    v82[3] = (((v44.__cosval * v44.__cosval) * 3.5171) + (((v44.__cosval * v44.__cosval) * (v44.__cosval * v44.__cosval)) * -2.9309)) + -0.58618;
    if (a5 < 5)
    {
      sh_eval_basis_3(&v83, v77, v77.f32[1], v77.f32[2]);
      goto LABEL_35;
    }

    if (a5 - 2 < 5)
    {
      C3DLightAddLightSHContribution_cold_4();
    }
  }

  else if (v37 == 3)
  {
    C3DLightAddLightSHContribution_cold_3();
  }
}

void C3DLightSetAutomaticallyAdjustsShadowProjection(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 169);
  if (((((v12 & 0x20) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 32;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 169) = v12 & 0xDF | v13;
    if (C3DLightGetShadowCascadeCount(a1) >= 2)
    {
      __C3DLightInvalidatePasses(a1);
    }
  }
}

uint64_t C3DLightGetAutomaticallyAdjustsShadowProjection(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 169) >> 5) & 1;
}

BOOL C3DLightShouldAdjustsShadowProjection(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DLightSupportsShadowCascades(a1) && *(a1 + 157) > 1u;
  return ((*(a1 + 169) & 0x20) != 0 || v10) && *(a1 + 80) == 1;
}

void C3DLightSetShadowCascadeCount(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2;
  }

  if (v12 >= 4)
  {
    v12 = 4;
  }

  if (v12 != *(a1 + 157))
  {
    *(a1 + 157) = v12;
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

void C3DLightSetMaximumShadowDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

void C3DLightSetShadowCascadeSplittingFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 148) = a2;
}

float C3DLightGetShadowCascadeSplittingFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 148);
}

void C3DLightSetShadowCascadeDebugFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 152) != 0.0;
  *(a1 + 152) = a2;
  if ((a2 != 0.0) != v12)
  {
    __C3DLightDidChange(a1);
    __C3DLightInvalidatePasses(a1);
  }
}

float C3DLightGetShadowCascadeDebugFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 152);
}

void C3DLightSetForceCasterBackFaceOnly(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 169) = *(a1 + 169) & 0xBF | v12;
}

uint64_t C3DLightGetForceCasterBackFaceOnly(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 169) >> 6) & 1;
}

void C3DLightSetEnableSampleDistributed(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DLightDidChange_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0x80;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 169) = v12 & 0x80 | *(a1 + 169) & 0x7F;
}

float32x2_t C3DLightScaleUnits(uint64_t a1, float a2)
{
  *(a1 + 176) = vmulq_n_f64(*(a1 + 176), a2);
  result = vmul_n_f32(*(a1 + 84), a2);
  *(a1 + 84) = result;
  return result;
}

float32x4_t *C3DLightComputeShadowKernel(uint64_t a1, float32x4_t *a2, int a3, uint64_t a4)
{
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a4);
  v8 = -2.0;
  if (CoordinatesSystemOptions)
  {
    v9 = CoordinatesSystemOptions;
    ForceCasterBackFaceOnly = C3DLightGetForceCasterBackFaceOnly(a1);
    v11 = 0.5;
    if ((v9 & 8) == 0)
    {
      v11 = -0.5;
    }

    if (ForceCasterBackFaceOnly)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v11;
    }
  }

  return C3DSetupHaltonFilterKernelConic(a2, a3, 1.0, 1.0, v8);
}

id _C3DLightCFFinalize(void *a1)
{
  C3DLightDestroyPerTypeParameters(a1);
  v2 = a1[25];
  if (v2)
  {
    CFRelease(v2);
    a1[25] = 0;
  }

  v3 = a1[26];
  if (v3)
  {
    CFRelease(v3);
    a1[26] = 0;
  }

  v4 = a1[28];
  if (v4)
  {
    CFRelease(v4);
    a1[28] = 0;
  }

  return C3DEntityCFFinalize(a1);
}

CFStringRef _C3DLightCFCopyDebugDescription(unsigned __int8 *a1)
{
  v2 = a1[168];
  v3 = CFGetAllocator(a1);
  v4 = _C3DLightTypeDescription(a1);
  if (v2 == 1)
  {
    return CFStringCreateWithFormat(v3, 0, @"<C3DLight %p> Type:%@ CastsShadow(Samples:%d Cascade:%d)", a1, v4, a1[156], a1[157]);
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"<C3DLight %p> Type:%@", a1, v4);
  }
}

__CFString *_C3DLightTypeDescription(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        return @"Ambient";
      case 1:
        return @"Directional";
      case 2:
        return @"Omni";
    }

    return @"Unknown";
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      return @"IES";
    }

    if (v1 == 6)
    {
      v4 = *(a1 + 256);
      if (v4 < 5)
      {
        return off_2782FE3B0[v4];
      }
    }

    return @"Unknown";
  }

  if (v1 == 3)
  {
    return @"Spot";
  }

  v2 = @"IES";
  if (*(a1 + 328) == 1)
  {
    v2 = @"Radiance";
  }

  if (*(a1 + 328))
  {
    return v2;
  }

  else
  {
    return @"Irradiance";
  }
}

BOOL _C3DLightInitWithPropertyList(__n128 *a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if ((C3DEntityInitWithPropertyList(a1, a2) & 1) == 0)
  {
    v19 = scn_default_log();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DLightInitWithPropertyList_cold_2();
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"property3");
  if (Value)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(Value, kCFNumberFloatType, &v52);
    a1[15].n128_u32[0] = v52.n128_u32[0];
  }

  v17 = CFDictionaryGetValue(a2, @"property4");
  if (v17)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v17, kCFNumberFloatType, &v52);
    v18 = v52.n128_f32[0];
  }

  else
  {
    v18 = a1[15].n128_f32[1];
  }

  a1[15].n128_f32[1] = a1[15].n128_f32[0] * v18;
  v21 = CFDictionaryGetValue(a2, @"type");
  if (!v21)
  {
    v41 = scn_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      _C3DLightInitWithPropertyList_cold_6();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      result = 0;
      *a4 = MalformedDocumentError;
      return result;
    }

    return 0;
  }

  v52.n128_u32[0] = 0;
  if (!CFNumberGetValue(v21, kCFNumberIntType, &v52))
  {
    v43 = scn_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      _C3DLightInitWithPropertyList_cold_5();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    return 0;
  }

  a1[5].n128_u32[0] = v52.n128_u32[0];
  v22 = CFDictionaryGetValue(a2, @"castShadow");
  if (v22)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v22, kCFNumberIntType, &v52);
    a1[10].n128_u8[8] = v52.n128_u32[0] != 0;
  }

  v23 = CFDictionaryGetValue(a2, @"znear");
  if (v23)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v23, kCFNumberFloatType, &v52);
    a1[11].n128_f64[0] = v52.n128_f32[0];
  }

  v24 = CFDictionaryGetValue(a2, @"zfar");
  if (v24)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v24, kCFNumberFloatType, &v52);
    a1[11].n128_f64[1] = v52.n128_f32[0];
  }

  v25 = CFDictionaryGetValue(a2, @"orthographicScale");
  if (v25)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v25, kCFNumberFloatType, &v52);
    a1[8].n128_u32[2] = v52.n128_u32[0];
  }

  v26 = CFDictionaryGetValue(a2, @"shadowSoftenFactor");
  if (v26)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v26, kCFNumberFloatType, &v52);
    a1[8].n128_u32[3] = v52.n128_u32[0];
  }

  v27 = CFDictionaryGetValue(a2, @"category");
  if (v27)
  {
    v52.n128_u64[0] = 0;
    CFNumberGetValue(v27, kCFNumberNSIntegerType, &v52);
    a1[10].n128_u64[0] = v52.n128_u64[0];
  }

  v28 = CFDictionaryGetValue(a2, @"attenuationStart");
  if (v28)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v28, kCFNumberFloatType, &v52);
    a1[5].n128_u32[1] = v52.n128_u32[0];
  }

  v29 = CFDictionaryGetValue(a2, @"attenuationEnd");
  if (v29)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v29, kCFNumberFloatType, &v52);
    a1[5].n128_u32[2] = v52.n128_u32[0];
  }

  v30 = CFDictionaryGetValue(a2, @"attenuationFalloffExponent");
  if (v30)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v30, kCFNumberFloatType, &v52);
    a1[5].n128_u32[3] = v52.n128_u32[0];
  }

  v31 = CFDictionaryGetValue(a2, @"spotInnerAngle");
  if (v31)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v31, kCFNumberFloatType, &v52);
    a1[15].n128_u32[1] = v52.n128_u32[0];
  }

  v32 = CFDictionaryGetValue(a2, @"spotOuterAngle");
  if (v32)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v32, kCFNumberFloatType, &v52);
    a1[15].n128_u32[0] = v52.n128_u32[0];
  }

  v33 = CFDictionaryGetValue(a2, @"spotFalloffExponent");
  if (v33)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v33, kCFNumberFloatType, &v52);
    a1[15].n128_u32[2] = v52.n128_u32[0];
  }

  v34 = CFDictionaryGetValue(a2, @"intensity");
  if (v34)
  {
    v52.n128_u32[0] = 0;
    CFNumberGetValue(v34, kCFNumberFloatType, &v52);
    a1[6].n128_u32[0] = v52.n128_u32[0];
  }

  v35 = CFDictionaryGetValue(a2, @"color");
  if (v35)
  {
    if (!C3DColor4InitWithPropertyList(&a1[4], v35, a3, a4))
    {
      v44 = scn_default_log();
      result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _C3DLightInitWithPropertyList_cold_3();
      return 0;
    }

    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToLinear(&a1[4]);
    }
  }

  v36 = CFDictionaryGetValue(a2, @"shadowColor");
  if (v36)
  {
    v37 = v36;
    v38 = CFGetTypeID(v36);
    if (v38 == CFNumberGetTypeID())
    {
      v39 = CFDictionaryGetValue(a2, @"shadowColor");
      if (v39)
      {
        v52.n128_u32[0] = 0;
        CFNumberGetValue(v39, kCFNumberFloatType, &v52);
        v40 = v52.n128_u32[0];
      }

      else
      {
        v40 = 1.0;
      }

      __asm { FMOV            V1.4S, #1.0 }

      _Q1.i32[0] = v40;
      v51 = vzip1q_s32(_Q1, _Q1);
      v51.i32[2] = v40;
      v52 = v51;
      if (C3DLinearRenderingIsEnabled())
      {
        C3DColor4ConvertToLinear(&v52);
      }

      C3DLightSetShadowColor(a1, &v52);
      return 1;
    }

    if (C3DColor4InitWithPropertyList(&a1[7], v37, a3, a4))
    {
      if (C3DLinearRenderingIsEnabled())
      {
        C3DColor4ConvertToLinear(&a1[7]);
      }

      return 1;
    }

    v45 = scn_default_log();
    result = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DLightInitWithPropertyList_cold_4();
    return 0;
  }

  return 1;
}

__CFDictionary *_C3DLightCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v14)
  {
    LODWORD(valuePtr) = *(a1 + 80);
    v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"type", v15);
    CFRelease(v15);
    if (*(a1 + 168) == 1)
    {
      LODWORD(valuePtr) = 1;
      v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v14, @"castShadow", v16);
      CFRelease(v16);
    }

    v17 = *(a1 + 176);
    if (v17 != 0.0)
    {
      v18 = v17;
      *&valuePtr = v18;
      v19 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"znear", v19);
      CFRelease(v19);
    }

    v20 = *(a1 + 184);
    if (v20 != 0.0)
    {
      v21 = v20;
      *&valuePtr = v21;
      v22 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"zfar", v22);
      CFRelease(v22);
    }

    LODWORD(valuePtr) = *(a1 + 136);
    v23 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"orthographicScale", v23);
    CFRelease(v23);
    LODWORD(valuePtr) = *(a1 + 240);
    v24 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"spotOuterAngle", v24);
    CFRelease(v24);
    if (*(a1 + 84) != 0.0)
    {
      LODWORD(valuePtr) = *(a1 + 84);
      v25 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"attenuationStart", v25);
      CFRelease(v25);
    }

    if (*(a1 + 88) != 0.0)
    {
      LODWORD(valuePtr) = *(a1 + 88);
      v26 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"attenuationEnd", v26);
      CFRelease(v26);
    }

    LODWORD(valuePtr) = *(a1 + 92);
    v27 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"attenuationFalloffExponent", v27);
    CFRelease(v27);
    if (*(a1 + 240) != 0.0)
    {
      LODWORD(valuePtr) = *(a1 + 244);
      v28 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"spotInnerAngle", v28);
      CFRelease(v28);
    }

    LODWORD(valuePtr) = *(a1 + 248);
    v29 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"spotFalloffExponent", v29);
    CFRelease(v29);
    LODWORD(valuePtr) = *(a1 + 140);
    v30 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"shadowSoftenFactor", v30);
    CFRelease(v30);
    *&valuePtr = *(a1 + 160);
    v31 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
    CFDictionaryAddValue(v14, @"category", v31);
    CFRelease(v31);
    LODWORD(valuePtr) = *(a1 + 96);
    v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"intensity", v32);
    CFRelease(v32);
    valuePtr = *(a1 + 64);
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(&valuePtr);
    }

    v33 = C3DColor4CopyPropertyList(&valuePtr);
    if (v33)
    {
      v34 = v33;
      CFDictionaryAddValue(v14, @"color", v33);
      CFRelease(v34);
    }

    v38 = *(a1 + 112);
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(&v38);
    }

    v35 = C3DColor4CopyPropertyList(&v38);
    if (v35)
    {
      v36 = v35;
      CFDictionaryAddValue(v14, @"shadowColor", v35);
      CFRelease(v36);
    }
  }

  return v14;
}

__CFArray *_C3DLightCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 13;
  v101 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v4, @"name", @"Color");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v9 = a1;
  v101 = a1 + 96;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v8, @"name", @"intensity");
  CFDictionarySetValue(v8, @"type", v10);
  CFDictionarySetValue(v8, @"address", v12);
  CFDictionarySetValue(v8, @"semantic", v11);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v11);
  CFRelease(v8);
  CFRelease(v12);
  CFRelease(v10);
  v13 = MEMORY[0x277CBF150];
  v14 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 2;
  v101 = v9 + 80;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v102 = 0;
  valuePtr = 3;
  v101 = v9 + 168;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v19, @"name", @"castShadow");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v102 = 0;
  valuePtr = 1;
  v100 = v9 + 112;
  v101 = v9 + 112;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v23, @"name", @"shadowColor");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v102 = 0;
  valuePtr = 6;
  v101 = v9 + 176;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v30 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v27, @"name", @"zNear");
  CFDictionarySetValue(v27, @"type", v28);
  CFDictionarySetValue(v27, @"address", v30);
  CFDictionarySetValue(v27, @"semantic", v29);
  CFArrayAppendValue(Mutable, v27);
  CFRelease(v29);
  CFRelease(v27);
  CFRelease(v30);
  CFRelease(v28);
  v31 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v102 = 0;
  valuePtr = 6;
  v101 = v9 + 184;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v31, @"name", @"zFar");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v102 = 0;
  valuePtr = 1;
  v101 = v9 + 140;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v38 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v35, @"name", @"shadowSoftenFactor");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  v39 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v102 = 0;
  valuePtr = 1;
  v101 = v9 + 84;
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v42 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v39, @"name", @"attenuationStart");
  CFDictionarySetValue(v39, @"type", v40);
  CFDictionarySetValue(v39, @"address", v42);
  CFDictionarySetValue(v39, @"semantic", v41);
  CFArrayAppendValue(Mutable, v39);
  CFRelease(v41);
  CFRelease(v39);
  CFRelease(v42);
  CFRelease(v40);
  v43 = MEMORY[0x277CBF138];
  v44 = MEMORY[0x277CBF150];
  v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v101 = v9 + 88;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v45, @"name", @"attenuationEnd");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = CFDictionaryCreateMutable(0, 4, v43, v44);
  v102 = 0;
  valuePtr = 1;
  v101 = v9 + 92;
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v52 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v49, @"name", @"attenuationFalloffExponent");
  CFDictionarySetValue(v49, @"type", v50);
  CFDictionarySetValue(v49, @"address", v52);
  CFDictionarySetValue(v49, @"semantic", v51);
  CFArrayAppendValue(Mutable, v49);
  CFRelease(v51);
  CFRelease(v49);
  CFRelease(v52);
  CFRelease(v50);
  v53 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v44);
  v102 = 0;
  valuePtr = 1;
  v99 = v9;
  v101 = v9 + 244;
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v56 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v53, @"name", @"spotInnerAngle");
  CFDictionarySetValue(v53, @"type", v54);
  CFDictionarySetValue(v53, @"address", v56);
  CFDictionarySetValue(v53, @"semantic", v55);
  v57 = Mutable;
  CFArrayAppendValue(Mutable, v53);
  CFRelease(v55);
  CFRelease(v53);
  CFRelease(v56);
  CFRelease(v54);
  v58 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v101 = v9 + 240;
  v59 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v61 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v58, @"name", @"spotOuterAngle");
  CFDictionarySetValue(v58, @"type", v59);
  CFDictionarySetValue(v58, @"address", v61);
  CFDictionarySetValue(v58, @"semantic", v60);
  CFArrayAppendValue(Mutable, v58);
  CFRelease(v60);
  CFRelease(v58);
  CFRelease(v61);
  CFRelease(v59);
  v62 = MEMORY[0x277CBF138];
  v63 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v101 = v99 + 248;
  v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v65 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v66 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v63, @"name", @"spotFalloffExponent");
  CFDictionarySetValue(v63, @"type", v64);
  CFDictionarySetValue(v63, @"address", v66);
  CFDictionarySetValue(v63, @"semantic", v65);
  CFArrayAppendValue(Mutable, v63);
  CFRelease(v65);
  CFRelease(v63);
  CFRelease(v66);
  CFRelease(v64);
  v67 = CFDictionaryCreateMutable(0, 4, v62, MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 13;
  v101 = v100;
  v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v70 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v67, @"name", @"shadowColor");
  CFDictionarySetValue(v67, @"type", v68);
  CFDictionarySetValue(v67, @"address", v70);
  CFDictionarySetValue(v67, @"semantic", v69);
  CFArrayAppendValue(Mutable, v67);
  CFRelease(v69);
  CFRelease(v67);
  CFRelease(v70);
  CFRelease(v68);
  v71 = CFDictionaryCreateMutable(0, 4, v62, MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 6;
  v101 = v99 + 192;
  v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v73 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v74 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v71, @"name", @"shadowBias");
  CFDictionarySetValue(v71, @"type", v72);
  CFDictionarySetValue(v71, @"address", v74);
  CFDictionarySetValue(v71, @"semantic", v73);
  CFArrayAppendValue(Mutable, v71);
  CFRelease(v73);
  CFRelease(v71);
  CFRelease(v74);
  CFRelease(v72);
  v75 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 8;
  v101 = v99 + 128;
  v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v77 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v78 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v75, @"name", @"shadowMapSize");
  CFDictionarySetValue(v75, @"type", v76);
  CFDictionarySetValue(v75, @"address", v78);
  CFDictionarySetValue(v75, @"semantic", v77);
  CFArrayAppendValue(Mutable, v75);
  CFRelease(v77);
  CFRelease(v75);
  CFRelease(v78);
  CFRelease(v76);
  v79 = MEMORY[0x277CBF138];
  v80 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v101 = v99 + 136;
  v81 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v82 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v83 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v80, @"name", @"directionalExtent");
  CFDictionarySetValue(v80, @"type", v81);
  CFDictionarySetValue(v80, @"address", v83);
  CFDictionarySetValue(v80, @"semantic", v82);
  CFArrayAppendValue(v57, v80);
  CFRelease(v82);
  CFRelease(v80);
  CFRelease(v83);
  CFRelease(v81);
  v84 = v79;
  v85 = MEMORY[0x277CBF150];
  v86 = CFDictionaryCreateMutable(0, 4, v84, MEMORY[0x277CBF150]);
  v102 = 0;
  valuePtr = 1;
  v101 = v99 + 156;
  v87 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v88 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v89 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v86, @"name", @"shadowMaxSampleCount");
  CFDictionarySetValue(v86, @"type", v87);
  CFDictionarySetValue(v86, @"address", v89);
  CFDictionarySetValue(v86, @"semantic", v88);
  CFArrayAppendValue(v57, v86);
  CFRelease(v88);
  CFRelease(v86);
  CFRelease(v89);
  CFRelease(v87);
  v90 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v85);
  v102 = 0;
  valuePtr = 2;
  v101 = v99 + 160;
  v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v93 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v90, @"name", @"categoryBitMask");
  CFDictionarySetValue(v90, @"type", v91);
  CFDictionarySetValue(v90, @"address", v93);
  CFDictionarySetValue(v90, @"semantic", v92);
  CFArrayAppendValue(v57, v90);
  CFRelease(v92);
  CFRelease(v90);
  CFRelease(v93);
  CFRelease(v91);
  v94 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v102 = 2;
  valuePtr = 5;
  v101 = v99 + 200;
  v95 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v96 = CFNumberCreate(0, kCFNumberSInt32Type, &v102);
  v97 = CFNumberCreate(0, kCFNumberLongType, &v101);
  CFDictionarySetValue(v94, @"name", @"gobo");
  CFDictionarySetValue(v94, @"type", v95);
  CFDictionarySetValue(v94, @"address", v97);
  CFDictionarySetValue(v94, @"semantic", v96);
  CFArrayAppendValue(v57, v94);
  CFRelease(v96);
  CFRelease(v94);
  CFRelease(v97);
  CFRelease(v95);
  return v57;
}

void _C3DLightSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 168) == __dst)
  {
    v9 = *__src;

    C3DLightSetCastsShadow(a1, v9);
  }

  else if ((a1 + 88) == __dst)
  {
    v10 = *__src;

    C3DLightSetAttenuationEndDistance(a1, v10);
  }

  else if (a1 + 64 > __dst || a1 + 76 < __dst)
  {

    memcpy(__dst, __src, __n);
  }

  else
  {
    IsBlack = C3DColor4IsBlack((a1 + 64));
    memcpy(__dst, __src, __n);
    if (IsBlack != C3DColor4IsBlack((a1 + 64)))
    {

      __C3DLightDidChange(a1);
    }
  }
}

uint64_t _C3DLightSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

float32_t sh_eval_basis_3(uint64_t a1, float32x4_t a2, float a3, float a4)
{
  v4 = a4 * a4;
  *a1 = 1049652923;
  *&v5 = a4;
  v6 = a4 * 0.488602512;
  v7 = v4;
  v8 = v7 * 0.946174696 + -0.315391565;
  v9 = (v7 * 1.86588166 + -1.119529) * *&v5;
  *(a1 + 4) = a3 * -0.4886;
  *(a1 + 8) = v6;
  v10.f32[0] = *&v5 * -1.09254843;
  *(a1 + 20) = v10.f32[0] * a3;
  *(a1 + 24) = v8;
  v11.f64[0] = v7 * -2.285229 + 0.457045799;
  *&v12 = (a2.f32[0] * a3) + (a2.f32[0] * a3);
  v13.i32[0] = a2.i32[0];
  v13.f32[1] = *&v12;
  v14 = (a2.f32[0] * a2.f32[0]) - (a3 * a3);
  *(a1 + 12) = vmul_f32(v13, 0x3F0BD8A1BEFA2A1CLL);
  v11.f64[1] = *&v5 * 1.44530572;
  *&v11.f64[0] = vcvt_f32_f64(v11);
  *(a1 + 44) = a3 * *v11.f64;
  *(a1 + 48) = v9;
  v5.i32[0] = a2.i32[0];
  v5.f32[1] = v14;
  *(a1 + 52) = vmul_f32(v5, *&v11.f64[0]);
  v10.f32[1] = v14;
  v10.i64[1] = __PAIR64__(v12, (v14 * a3) + (a2.f32[0] * *&v12));
  a2.i32[1] = 1057740961;
  a2.i32[2] = -1089008359;
  a2.i32[3] = HIDWORD(v11.f64[0]);
  *(a1 + 28) = vmulq_f32(v10, a2);
  a2.f32[0] = ((a2.f32[0] * v14) - (*&v12 * a3)) * -0.59004;
  *(a1 + 60) = a2.f32[0];
  return a2.f32[0];
}

C3D::Pass *C3D::SSRPassesCreateIfNeeded(C3D *this, C3D::RenderGraph *a2, C3D::MainPass *a3)
{
  v22 = a2;
  PointOfView = C3DEngineContextGetPointOfView(*(this + 1));
  if (PointOfView && C3DNodeGetCamera(PointOfView))
  {
    v6 = (*(*a2 + 88))(a2);
    Aligned = C3DScratchAllocatorAllocateAligned(*(this + 2), 16, 8, 0);
    *Aligned = 0;
    *(Aligned + 8) = 0;
    v21 = Aligned;
    *(Aligned + 4) = 2;
    *Aligned = fmaxf(*(v6 + 8) * 0.5, 1.0);
    *(Aligned + 2) = fmaxf(*(v6 + 12) * 0.5, 1.0);
    v19 = *(C3D::DrawNodesPass::getCullingContext(a2) + 4744);
    CullingContext = C3D::DrawNodesPass::getCullingContext(a2);
    *&v9.f64[0] = v19;
    v9.f64[1] = *(CullingContext + 4752);
    *(Aligned + 8) = vcvt_f32_f64(v9);
    v10 = C3D::RenderGraph::createPass<C3D::SSRDepthBackFacePass,C3D::MainPass *&>(this, &v22);
    v11 = C3D::RenderGraph::createPass<C3D::SSRDownSampleColorDepthPass,C3D::MainPass *&,C3D::SSRPassData *&>(this, &v22, &v21);
    v12 = C3D::RenderGraph::createPass<C3D::SSRRaytracePass,C3D::MainPass *&,C3D::SSRPassData *&>(this, &v22, &v21);
    v20 = 0;
    v13 = C3D::RenderGraph::createPass<C3D::SSRBlurPass,C3D::MainPass *&,C3D::SSRPassData *&,BOOL>(this, &v22, &v21, &v20);
    v20 = 1;
    v14 = C3D::RenderGraph::createPass<C3D::SSRBlurPass,C3D::MainPass *&,C3D::SSRPassData *&,BOOL>(this, &v22, &v21, &v20);
    v15 = C3D::RenderGraph::createPass<C3D::SSRCompositePass,C3D::MainPass *&,C3D::SSRPassData *&>(this, &v22, &v21);
    C3D::Pass::addDependency(v11, v22);
    C3D::Pass::addDependency(v11, v10);
    C3D::Pass::addDependency(v12, v22);
    C3D::Pass::addDependency(v12, v11);
    C3D::Pass::addDependency(v13, v12);
    C3D::Pass::addDependency(v14, v13);
    C3D::Pass::addDependency(v14, v12);
    C3D::Pass::addDependency(v15, v14);
    v16 = v22;
    if (v16 != C3D::ScenePass::lastPass(v22))
    {
      Pass = C3D::ScenePass::lastPass(v22);
      C3D::Pass::addDependency(v15, Pass);
    }

    C3D::Pass::addDependency(v15, v22);
    C3D::Pass::addDependency(v15, v12);
    return v15;
  }

  else
  {

    return C3D::ScenePass::lastPass(a2);
  }
}

C3D::SSRDepthBackFacePass *C3D::RenderGraph::createPass<C3D::SSRDepthBackFacePass,C3D::MainPass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::SSRDepthBackFacePass::SSRDepthBackFacePass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::SSRDownSampleColorDepthPass,C3D::MainPass *&,C3D::SSRPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::SSRDownSampleColorDepthPass::SSRDownSampleColorDepthPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::SSRRaytracePass,C3D::MainPass *&,C3D::SSRPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 400, 16, 0);
  C3D::SSRRaytracePass::SSRRaytracePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::SSRBlurPass,C3D::MainPass *&,C3D::SSRPassData *&,BOOL>(uint64_t a1, C3D::Pass **a2, uint64_t *a3, char *a4)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::SSRBlurPass::SSRBlurPass(Aligned, a1, *a2, *a3, *a4);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::SSRCompositePass,C3D::MainPass *&,C3D::SSRPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::SSRCompositePass::SSRCompositePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void __invalidatePassIfNeeded(void *a1, uint64_t a2)
{
  v4 = C3DCameraNeedsPostProcess(a1);
  (*(a2 + 16))(a2);
  if (v4 != C3DCameraNeedsPostProcess(a1))
  {

    _C3DCameraInvalidatePasses(a1);
  }
}

BOOL C3DCameraNeedsPostProcess(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = 1;
  if ((*(a1 + 312) & 2) == 0 && *(a1 + 460) == 0.0 && *(a1 + 456) == 1.0 && *(a1 + 452) == 0.0 && (*(a1 + 448) <= 0.0 || C3DWasLinkedBeforeMajorOSYear2017()) && *(a1 + 472) <= 0.0 && (*(a1 + 476) == 0.0 || *(a1 + 480) == 0.0) && *(a1 + 484) == 0.0 && *(a1 + 488) == 0.0)
  {
    v11 = *(a1 + 520);
    if (!v11 || !C3DEffectSlotHasImageOrTexture(v11))
    {
      return 0;
    }
  }

  return result;
}

void _C3DCameraInvalidatePasses(void *a1)
{
  values = a1;
  v1 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  v3 = C3DGetScene(values);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v3, v1, 1u);
  CFRelease(v1);
}

uint64_t C3DCameraGetTypeID()
{
  if (C3DCameraGetTypeID_onceToken != -1)
  {
    C3DCameraGetTypeID_cold_1();
  }

  return C3DCameraGetTypeID_typeID;
}

double __C3DCameraGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DCameraGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"fStop", 0x128u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"apertureBladeCount", 0x130u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"aspectRatio", 0x80u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"sensorHeight", 0x12Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"lensShift", 0x58u, 8, 0);
  C3DModelPathResolverRegisterProperty(@"postProjectionTransformTranslation", 0x60u, 8, 0);
  C3DModelPathResolverRegisterProperty(@"postProjectionTransformScale", 0x68u, 8, 0);
  C3DModelPathResolverRegisterProperty(@"averageGray", 0x184u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"bloomBlurRadius", 0x1B8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"bloomIntensity", 0x1A8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"bloomThreshold", 0x1ACu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"bloomIteration", 0x1B0u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"bloomIterationSpread", 0x1B4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"colorFringeStrength", 0x1C4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"colorFringeIntensity", 0x1BCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"contrast", 0x1CCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"grainIntensity", 0x1D0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"grainScale", 0x1D4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureAdaptationBrighteningSpeedFactor", 0x190u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureAdaptationDarkeningSpeedFactor", 0x194u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureAdaptationDuration", 0x18Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureAdaptationHistogramRangeHighProbability", 0x198u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureAdaptationHistogramRangeLowProbability", 0x19Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"exposureOffset", 0x188u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"dofIntensity", 0x1C0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"focusDistance", 0x120u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"focalLength", 0x124u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fieldOfView", 0x78u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"maximumExposure", 0x1A4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"minimumExposure", 0x1A0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"motionBlurIntensity", 0x1D8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"orthographicScale", 0x70u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"projectionTransform", 0x90u, 11, 0);
  C3DModelPathResolverRegisterProperty(@"saturation", 0x1C8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"vignettingIntensity", 0x1E0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"vignettingPower", 0x1DCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"whitePoint", 0x180u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"xFov", 0x110u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"yFov", 0x118u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"zFar", 0x50u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"zNear", 0x48u, 6, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionIntensity", 0x1ECu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionRadius", 0x1F0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionBias", 0x1F4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionDepthThreshold", 0x1F8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionNormalThreshold", 0x1FCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionSampleCount", 0x200u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceAmbientOcclusionDownSample", 0x204u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"whiteBalanceTemperature", 0x1E4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"whiteBalanceTint", 0x1E8u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  xmmword_281741B98 = kC3DC3DCameraContextClassAnimatable;
  result = *&kC3DC3DCameraContextClassSerializable;
  unk_281741BF0 = kC3DC3DCameraContextClassSerializable;
  unk_281741C00 = *off_282DC5288;
  qword_281741BA8 = _C3DCameraCopyInstanceVariables;
  qword_281741BE8 = _C3DCameraSearchByID;
  return result;
}

uint64_t C3DCameraCreate()
{
  if (C3DCameraGetTypeID_onceToken != -1)
  {
    C3DCameraGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DCameraGetTypeID_typeID, 544);
  if (C3DWasLinkedBeforeMajorOSYear2017())
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(Instance + 64) = *(Instance + 64) & 0xEF | v1;
  *(Instance + 272) = 0;
  *(Instance + 280) = 0;
  *(Instance + 120) = 1114636288;
  *(Instance + 128) = 0x3FF8000000000000;
  *(Instance + 72) = xmmword_21C2A1E80;
  *(Instance + 112) = 0x3FF0000000000000;
  *(Instance + 96) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(Instance + 104) = _D0;
  *(Instance + 448) = 0;
  *(Instance + 292) = 1112014848;
  *(Instance + 296) = 0x41C0000040B33333;
  *(Instance + 304) = 0x1900000006;
  v7 = C3DWasLinkedBeforeMajorOSYear2017();
  v8 = 2.5;
  if (v7)
  {
    v8 = 10.0;
  }

  *(Instance + 288) = v8;
  *(Instance + 528) = -1;
  *(Instance + 312) &= ~1u;
  Identity = C3DMatrix4x4GetIdentity();
  v10 = *Identity;
  v11 = Identity[1];
  v12 = Identity[3];
  *(Instance + 352) = Identity[2];
  *(Instance + 368) = v12;
  *(Instance + 320) = v10;
  *(Instance + 336) = v11;
  v13 = *(Instance + 312);
  *(Instance + 384) = xmmword_21C2A20A0;
  *(Instance + 400) = xmmword_21C2A20B0;
  *(Instance + 313) = 0;
  *(Instance + 416) = xmmword_21C2A20C0;
  *(Instance + 432) = 1;
  *(Instance + 440) = 0x3F80000040800000;
  *(Instance + 312) = v13 & 0xE9 | 4;
  *(Instance + 544) = 0;
  *(Instance + 552) = 0;
  *(Instance + 452) = xmmword_21C27F8C0;
  *(Instance + 468) = xmmword_21C27F7E0;
  *(Instance + 484) = xmmword_21C2A20D0;
  *(Instance + 500) = 1022739087;
  *(Instance + 504) = 0x3E99999A3E4CCCCDLL;
  *(Instance + 512) = 0x200000009;
  return Instance;
}

uint64_t C3DCameraGetColorGradingEffectSlot(uint64_t a1, int a2)
{
  result = *(a1 + 520);
  if (a2)
  {
    if (!result)
    {
      result = C3DEffectSlotCreate(a1, 26);
      *(a1 + 520) = result;
    }
  }

  return result;
}

void C3DCameraSetMotionBlurIntensity(float *a1, float a2)
{
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[118];
  v13 = 0.0;
  if (a2 >= 0.0)
  {
    v13 = a2;
  }

  a1[118] = v13;
  if (a2 != 0.0 && v12 == 0.0 || a2 == 0.0 && v12 != 0.0)
  {
    v14 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    v16 = C3DGetScene(values);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v16, v14, 1u);
    CFRelease(v14);
  }
}

void C3DCameraSetDepthOfFieldIntensity(float *a1, float a2)
{
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[112];
  v13 = 0.0;
  if (a2 >= 0.0)
  {
    v13 = a2;
  }

  a1[112] = v13;
  if (v13 != 0.0 && v12 == 0.0 || v13 == 0.0 && v12 != 0.0)
  {
    v14 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    v16 = C3DGetScene(values);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v16, v14, 1u);
    CFRelease(v14);
  }
}

void C3DCameraSetWantsHDR(void *a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetWantsHDR_block_invoke;
  v12[3] = &__block_descriptor_tmp_2_1;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

BOOL C3DCameraHasDepthOfField(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DCameraGetDepthOfFieldIntensity(a1) > 0.0;
}

float C3DCameraGetDepthOfFieldIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 448);
}

__n128 C3DCameraSetProjectionTransform(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 48);
  *(a1 + 240) = *(a2 + 32);
  *(a1 + 256) = v14;
  *(a1 + 208) = result;
  *(a1 + 224) = v13;
  *(a1 + 64) |= 8u;
  return result;
}

float C3DCameraGetScreenSpaceAmbientOcclusionIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 492);
}

void C3DCameraSetScreenSpaceAmbientOcclusionIntensity(float *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 >= 0.0)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = a1[123];
  a1[123] = v12;
  if (v12 != 0.0 && v13 == 0.0 || v12 == 0.0 && v13 != 0.0)
  {
    _C3DCameraInvalidatePasses(a1);
  }
}

float C3DCameraGetScreenSpaceAmbientOcclusionRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 496);
}

void C3DCameraSetScreenSpaceAmbientOcclusionRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 496) = a2;
}

float C3DCameraGetScreenSpaceAmbientOcclusionBias(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 500);
}

void C3DCameraSetScreenSpaceAmbientOcclusionBias(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 500) = a2;
}

float C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 504);
}

void C3DCameraSetScreenSpaceAmbientOcclusionDepthThreshold(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 504) = a2;
}

float C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 508);
}

void C3DCameraSetScreenSpaceAmbientOcclusionNormalThreshold(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 508) = a2;
}

uint64_t C3DCameraGetScreenSpaceAmbientOcclusionSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 512);
}

void C3DCameraSetScreenSpaceAmbientOcclusionSampleCount(_DWORD *a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[128] != a2)
  {
    a1[128] = a2;
    _C3DCameraInvalidatePasses(a1);
  }
}

uint64_t C3DCameraGetScreenSpaceAmbientOcclusionDownSample(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 516);
}

void C3DCameraSetScreenSpaceAmbientOcclusionDownSample(_DWORD *a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[129] != a2)
  {
    a1[129] = a2;
    _C3DCameraInvalidatePasses(a1);
  }
}

uint64_t C3DCameraGetAutomaticallyAdjustsZRange(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 64) >> 1) & 1;
}

void C3DCameraSetAutomaticallyAdjustsZRange(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xFD | v12;
}

float C3DCameraGetAverageGray(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 388);
}

void C3DCameraSetAverageGray(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 388) = a2;
}

float C3DCameraGetBloomBlurRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 440);
}

void C3DCameraSetBloomBlurRadius(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 440) = a2;
}

float C3DCameraGetBloomIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 424);
}

void C3DCameraSetBloomIntensity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 424) = a2;
}

float C3DCameraGetBloomThreshold(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 428);
}

void C3DCameraSetBloomThreshold(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 428) = a2;
}

uint64_t C3DCameraGetBloomIteration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 432);
  if (v10 <= 1)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

void C3DCameraSetBloomIteration(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 432) = a2;
}

float C3DCameraGetBloomIterationSpread(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 436);
}

void C3DCameraSetBloomIterationSpread(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 436) = a2;
}

uint64_t C3DCameraGetCategoryBitMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 528);
}

void C3DCameraSetCategoryBitMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 528) = a2;
}

float C3DCameraGetColorFringeStrength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 452);
}

void C3DCameraSetColorFringeStrength(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetColorFringeStrength_block_invoke;
  v12[3] = &__block_descriptor_tmp_3_1;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetColorFringeStrength_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 452) = result;
  return result;
}

float C3DCameraGetColorFringeIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 444);
}

void C3DCameraSetColorFringeIntensity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 444) = a2;
}

float C3DCameraGetContrast(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 460);
}

void C3DCameraSetContrast(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetContrast_block_invoke;
  v12[3] = &__block_descriptor_tmp_4_1;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetContrast_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 460) = result;
  return result;
}

float C3DCameraGetGrainIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 464);
}

void C3DCameraSetGrainIntensity(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetGrainIntensity_block_invoke;
  v12[3] = &__block_descriptor_tmp_5_1;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetGrainIntensity_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 464) = result;
  return result;
}

float C3DCameraGetGrainScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 468);
}

void C3DCameraSetGrainScale(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 468) = a2;
}

uint64_t C3DCameraGetGrainIsColored(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 312) >> 4) & 1;
}

void C3DCameraSetGrainIsColored(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 312) = *(a1 + 312) & 0xEF | v12;
}

uint64_t C3DCameraGetARGrainTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 544);
}

CFTypeRef C3DCameraSetARGrainTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 544);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 544) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 544) = result;
  }

  return result;
}

float C3DCameraGetARGrainSlice(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 552);
}

void C3DCameraSetARGrainSlice(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 552) = a2;
}

float C3DCameraGetWhiteBalanceTemperature(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 484);
}

void C3DCameraSetWhiteBalanceTemperature(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetWhiteBalanceTemperature_block_invoke;
  v12[3] = &__block_descriptor_tmp_6_1;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetWhiteBalanceTemperature_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 484) = result;
  return result;
}

float C3DCameraGetWhiteBalanceTint(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 488);
}

void C3DCameraSetWhiteBalanceTint(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetWhiteBalanceTint_block_invoke;
  v12[3] = &__block_descriptor_tmp_7_2;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetWhiteBalanceTint_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 488) = result;
  return result;
}

float C3DCameraGetExposureAdaptationBrighteningSpeedFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 400);
}

void C3DCameraSetExposureAdaptationBrighteningSpeedFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 400) = a2;
}

float C3DCameraGetExposureAdaptationDarkeningSpeedFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 404);
}

void C3DCameraSetExposureAdaptationDarkeningSpeedFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 404) = a2;
}

float C3DCameraGetExposureAdaptationDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 396);
}

void C3DCameraSetExposureAdaptationDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 396) = a2;
}

float C3DCameraGetExposureAdaptationHistogramRangeHighProbability(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 408);
}

void C3DCameraSetExposureAdaptationHistogramRangeHighProbability(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 408) = a2;
}

float C3DCameraGetExposureAdaptationHistogramRangeLowProbability(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 412);
}

void C3DCameraSetExposureAdaptationHistogramRangeLowProbability(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 412) = a2;
}

uint64_t C3DCameraGetExposureAdaptationMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 313);
}

void C3DCameraSetExposureAdaptationMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 313) = a2;
}

float C3DCameraGetExposureOffset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 392);
}

void C3DCameraSetExposureOffset(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 392) = a2;
}

float C3DCameraGetMaximumExposure(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 420);
}

void C3DCameraSetMaximumExposure(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 420) = a2;
}

float C3DCameraGetMinimumExposure(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 416);
}

void C3DCameraSetMinimumExposure(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 416) = a2;
}

float C3DCameraGetMotionBlurIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 472);
}

double C3DCameraGetOrthographicScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

float C3DCameraGetSaturation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 456);
}

void C3DCameraSetSaturation(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetSaturation_block_invoke;
  v12[3] = &__block_descriptor_tmp_8_0;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetSaturation_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 456) = result;
  return result;
}

uint64_t C3DCameraGetUsesOrthographicProjection(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64) & 1;
}

float C3DCameraGetVignettingIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 480);
}

void C3DCameraSetVignettingIntensity(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetVignettingIntensity_block_invoke;
  v12[3] = &__block_descriptor_tmp_9_0;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}

float __C3DCameraSetVignettingIntensity_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 480) = result;
  return result;
}

float C3DCameraGetVignettingPower(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 476);
}

void C3DCameraSetVignettingPower(void *a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __C3DCameraSetVignettingPower_block_invoke;
  v12[3] = &__block_descriptor_tmp_10;
  v12[4] = a1;
  v13 = a2;
  __invalidatePassIfNeeded(a1, v12);
}