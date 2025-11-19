uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < *a2 || v4 >= v3 && *(a1 + 2) < *(a2 + 2))
  {
    v5 = *a3;
    if (v4 < *a3)
    {
      v6 = *(a3 + 2);
LABEL_4:
      *a1 = v5;
      *a3 = v3;
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;
      *(a3 + 2) = v7;
      return 1;
    }

    if (v5 >= v4)
    {
      v16 = *(a2 + 2);
      v6 = *(a3 + 2);
      if (v16 < v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 2);
    }

    *a1 = v4;
    *a2 = v3;
    v17 = *(a1 + 2);
    *(a1 + 2) = v16;
    *(a2 + 2) = v17;
    v18 = *a3;
    if (v3 >= *a3)
    {
      if (v18 < v3)
      {
        return 1;
      }

      v19 = *(a3 + 2);
      if (v17 >= v19)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 2);
    }

    *a2 = v18;
    *a3 = v3;
    *(a2 + 2) = v19;
    result = 1;
    *(a3 + 2) = v17;
    return result;
  }

  v9 = *a3;
  if (v4 < *a3)
  {
    v10 = *(a2 + 2);
    v11 = *(a3 + 2);
LABEL_9:
    *a2 = v9;
    *a3 = v4;
    *(a2 + 2) = v11;
    *(a3 + 2) = v10;
    v12 = *a1;
    v13 = *a2;
    if (*a1 < *a2)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
LABEL_11:
      *a1 = v13;
      *a2 = v12;
      *(a1 + 2) = v15;
      result = 1;
      *(a2 + 2) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
      if (v14 < v15)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v9 < v4)
  {
    return 0;
  }

  v10 = *(a2 + 2);
  v11 = *(a3 + 2);
  if (v10 < v11)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = *a4;
  if (*a3 >= *a4)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
    if (v13 >= v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v12;
  *a4 = v11;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a2;
  v16 = *a3;
  if (*a2 >= *a3)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
    if (v17 >= v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v16;
  *a3 = v15;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a1;
  v20 = *a2;
  if (*a1 < *a2)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v20;
    *a2 = v19;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
    if (v21 < v22)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a4;
  v24 = *a5;
  if (*a4 >= *a5)
  {
    if (v24 < v23)
    {
      return result;
    }

    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
    if (v25 >= v26)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v24;
  *a5 = v23;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a3;
  v28 = *a4;
  if (*a3 >= *a4)
  {
    if (v28 < v27)
    {
      return result;
    }

    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
    if (v29 >= v30)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v28;
  *a4 = v27;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a2;
  v32 = *a3;
  if (*a2 >= *a3)
  {
    if (v32 < v31)
    {
      return result;
    }

    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
    if (v33 >= v34)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v32;
  *a3 = v31;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a1;
  v36 = *a2;
  if (*a1 < *a2)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v36;
    *a2 = v35;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
    if (v37 < v38)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (v4 < *a1 || v2 >= v4 && *(a2 - 2) < v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 >= v2 && (v2 < v6 || *(i + 2) >= v3));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 < v2 || v2 >= v4 && *(a2 + 2) < v3; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[2];
      i += 2;
      v9 = v11;
      v12 = *(i - 2);
      *(i - 2) = *(a2 + 2);
      *(a2 + 2) = v12;
      while (v9 >= v2 && (v2 < v9 || *(i + 2) >= v3))
      {
        v13 = i[2];
        i += 2;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 2);
          a2 -= 2;
          v10 = v14;
        }

        while (v14 < v2);
      }

      while (v2 >= v10 && *(a2 + 2) < v3);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    *(a1 + 2) = *(i - 2);
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::greater<void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v3 >= v5 && (v5 < v3 || v4 >= SLODWORD(a1[v2 + 3])))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v3 >= v8 && (v7 < v3 || v4 >= *(a2 + 8)));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v3 < v10)
        {
          break;
        }

        if (v9 < v3)
        {
          goto LABEL_19;
        }
      }

      while (v4 >= *(a2 + 8) && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v3 < v16);
      }

      while (v5 >= v3 && v4 < *(v13 + 8));
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v3 >= v17 && (v12 < v3 || v4 >= *(v14 + 8)));
    }

    while (v13 < v14);
  }

  if ((v13 - 16) != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 2) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a1 + 32);
        v26 = *(a2 - 16);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
          if (v27 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v26;
        *(a2 - 16) = v25;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
          if (v31 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (*a1 >= v30)
        {
          if (v30 < v33)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v34 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v30;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *a1;
      v5 = *(a2 - 16);
      if (*a1 >= v5)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
        if (v6 >= v7)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v5;
      *(a2 - 16) = v4;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v18 = *(v8 + 8);
      v17 = *(v11 + 8);
      if (v18 >= v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v22 < v16)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v16 < v22)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v20 >= v17)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v16;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (v10 < *v8 || *v8 >= v10 && *(v8 + 6) < *(v8 + 2))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      v12 = *v8;
      if (*a4 >= *v8)
      {
        v13 = *(a4 + 2);
        if (v12 >= v11)
        {
          v14 = *(v8 + 2);
          if (v13 < v14)
          {
            return result;
          }
        }

        else
        {
          v14 = *(v8 + 2);
        }

        *a4 = v12;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v15[2];
              if (v19 < *v15 || *v15 >= v19 && *(v15 + 6) < *(v15 + 2))
              {
                v15 += 2;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (v11 < *v15)
            {
              break;
            }

            if (v20 < v11)
            {
              v16 = *(v15 + 2);
            }

            else
            {
              v16 = *(v15 + 2);
              if (v13 < v16)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 2) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v11;
        *(v15 + 2) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,std::pair<long long,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v12 < v13 || v13 >= v12 && *(v9 + 10) < *(v9 + 6))
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v7;
    v19 = *v17;
    if (*v7 >= *v17)
    {
      if (v19 < v18)
      {
        return result;
      }

      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
      if (v20 >= v21)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v19;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (v18 < *v22)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v25 < v18)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v20 >= v23)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v18;
    *(v22 + 2) = v20;
  }

  return result;
}

void std::vector<std::array<long long,2ul>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

operations_research::sat::Prober *operations_research::sat::Prober::Prober(operations_research::sat::Prober *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 1) = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 216) + 16;
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  *(this + 24) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 7) = v4;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 25) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 26) = 0;
  *(this + 27) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 30) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 28) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 29) = 0;
  *(this + 31) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 32) = 0;
  *(this + 33) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 42) = 0;
  *(this + 34) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 35) = 0;
  *(this + 76) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 43) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  return this;
}

void sub_23CCAB150(_Unwind_Exception *a1)
{
  std::function<void ()(operations_research::sat::Literal)>::~function(v1 + 312);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v6);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v5);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v4);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v3);
  operations_research::sat::Prober::Prober((v1 + 168), (v1 + 120), (v1 + 144), v1);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Prober::ProbeBooleanVariables(operations_research::sat::Prober *this, long double a2)
{
  v2 = *(this + 5);
  v3 = *(v2 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(v2 + 216);
    v8 = 2 * v3;
    do
    {
      if (((*(*(v7 + 24) + (((v5 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 & 0x3E)) & 3) == 0)
      {
        v9 = *(this + 7);
        v10 = *(v9 + 704);
        v11 = *(v9 + 696);
        if (v6 >= ((v10 - v11) >> 2) || ((v12 = *(v11 + (v5 >> 30)), v12 != -1) ? (v13 = v6 == v12) : (v13 = 1), v13))
        {
          operator new();
        }
      }

      v6 += 2;
      v5 += 0x200000000;
      ++v4;
    }

    while (v8 != v6);
  }

  return operations_research::sat::Prober::ProbeBooleanVariables(this, 0, 0, a2);
}

void sub_23CCAB390(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeBooleanVariables(uint64_t a1, int *a2, unint64_t a3, long double a4)
{
  v71 = *MEMORY[0x277D85DE8];
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 64, 2 * *(*(a1 + 40) + 16));
  v10 = operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 40));
  result = 0;
  if (v10)
  {
    v12 = *(*(*(a1 + 40) + 216) + 12);
    v13 = *(*(a1 + 48) + 112);
    v52 = 0;
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 0;
      v15 = 4 * a3;
      v16 = "Aborted ";
      do
      {
        v17 = *a2;
        v18 = 2 * *a2;
        v19 = *(a1 + 56);
        v20 = *(v19 + 704);
        v21 = *(v19 + 696);
        if (v18 >= ((v20 - v21) >> 2) || ((v22 = *(v21 + 4 * v18), v22 != -1) ? (v23 = v22 == v18) : (v23 = 1), v23))
        {
          if (operations_research::TimeLimit::LimitReached(*(a1 + 48)))
          {
            goto LABEL_18;
          }

          v24.n128_u64[0] = *(*(a1 + 48) + 112);
          if (v24.n128_f64[0] > v13 + a4)
          {
            goto LABEL_18;
          }

          v52 = ++v14;
          result = operations_research::sat::Prober::ProbeOneVariableInternal(a1, v17, v24);
          if (!result)
          {
            goto LABEL_39;
          }
        }

        ++a2;
        v15 -= 4;
      }

      while (v15);
      v16 = &byte_23CE7F131;
LABEL_18:
      v25 = *(*(*(a1 + 40) + 216) + 12);
      *(a1 + 304) = v25 - v12;
      v26 = *(a1 + 344);
      if (*v26 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v16 = &byte_23CE7F131;
      v25 = v12;
      *(a1 + 304) = 0;
      v26 = *(a1 + 344);
      if (*v26 != 1)
      {
LABEL_38:
        result = 1;
        goto LABEL_39;
      }
    }

    v27 = *(*(a1 + 48) + 112) - v13;
    *&v60[0] = "[Probing] deterministic_time: ";
    *(&v60[0] + 1) = 30;
    v57 = v59;
    v58 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v59, v27, v9);
    v56[0].__r_.__value_.__r.__words[0] = " (limit: ";
    v56[0].__r_.__value_.__l.__size_ = 9;
    *&v54 = v55;
    *(&v54 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v55, a4, v28);
    v53[0].__r_.__value_.__r.__words[0] = ") wall_time: ";
    v53[0].__r_.__value_.__l.__size_ = 13;
    v50 = (absl::lts_20240722::GetCurrentTimeNanos(*(&v54 + 1)) - CurrentTimeNanos) * 0.000000001;
    v48 = a3;
    v49 = v16;
    absl::lts_20240722::StrCat<double,char [3],char const*,int,char [2],unsigned long,char [2]>(v60, &v57, v56, &v54, v53, &v50, " (", &v49, &__p, &v52, "/", &v48, ")");
    operations_research::SolverLogger::LogInfo(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 282, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v30 = *(a1 + 304);
      if (v30 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v30 = *(a1 + 304);
      if (v30 < 1)
      {
LABEL_26:
        v38 = *(a1 + 292);
        if (v38 >= 1)
        {
          v39 = *(a1 + 344);
          if (*v39 == 1)
          {
            *&v60[0] = "[Probing]  - new integer holes: ";
            *(&v60[0] + 1) = 32;
            v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v38, v59, v29);
            v57 = v59;
            v58 = v40 - v59;
            absl::lts_20240722::StrCat(v60, &v57, v56);
            operations_research::SolverLogger::LogInfo(v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 289, v56);
            if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56[0].__r_.__value_.__l.__data_);
            }
          }
        }

        v41 = *(a1 + 300);
        if (v41 >= 1)
        {
          v42 = *(a1 + 344);
          if (*v42 == 1)
          {
            *&v60[0] = "[Probing]  - new integer bounds: ";
            *(&v60[0] + 1) = 33;
            v43 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v41, v59, v29);
            v57 = v59;
            v58 = v43 - v59;
            absl::lts_20240722::StrCat(v60, &v57, v56);
            operations_research::SolverLogger::LogInfo(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 293, v56);
            if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56[0].__r_.__value_.__l.__data_);
            }
          }
        }

        v44 = *(a1 + 296);
        if (v44 >= 1)
        {
          v45 = *(a1 + 344);
          if (*v45 == 1)
          {
            *&v60[0] = "[Probing]  - new binary clause: ";
            *(&v60[0] + 1) = 32;
            v46 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v44, v59, v29);
            v57 = v59;
            v58 = v46 - v59;
            absl::lts_20240722::StrCat(v60, &v57, v56);
            operations_research::SolverLogger::LogInfo(v45, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 296, v56);
            if (SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56[0].__r_.__value_.__l.__data_);
            }
          }
        }

        goto LABEL_38;
      }
    }

    v31 = *(a1 + 344);
    if (*v31 == 1)
    {
      v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v30, &v56[0].__r_.__value_.__s.__data_[16], v29);
      v56[0].__r_.__value_.__r.__words[0] = &v56[0].__r_.__value_.__r.__words[2];
      v56[0].__r_.__value_.__l.__size_ = v32 - &v56[0].__r_.__value_.__r.__words[2];
      v34 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v25, v55, v33) - v55;
      *&v54 = v55;
      *(&v54 + 1) = v34;
      v35 = *(*(a1 + 40) + 16);
      *&v60[0] = "[Probing]  - new fixed Boolean: ";
      *(&v60[0] + 1) = 32;
      v60[1] = *&v56[0].__r_.__value_.__l.__data_;
      v61 = " (";
      v62 = 2;
      v63 = v55;
      v64 = v34;
      v65 = "/";
      v66 = 1;
      v37 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v35, v59, v36);
      v57 = v59;
      v58 = v37 - v59;
      v67 = v59;
      v68 = v37 - v59;
      v69 = ")";
      v70 = 1;
      absl::lts_20240722::strings_internal::CatPieces(v60, 7, v53);
      operations_research::SolverLogger::LogInfo(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 286, v53);
      if (SHIBYTE(v53[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_26;
  }

LABEL_39:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CCAB8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeOneVariableInternal(uint64_t *a1, int a2, __n128 a3)
{
  v77[2] = *MEMORY[0x277D85DE8];
  a1[19] = a1[18];
  v4 = a1[12];
  v68 = (a1 + 12);
  v69 = a1 + 18;
  v5 = a1[13];
  if (v4 != v5)
  {
    v6 = a1[9];
    v7 = a1[12];
    if (v5 - 1 == v4)
    {
      goto LABEL_115;
    }

    v8 = (((v5 - 1) - v4) >> 2) + 1;
    v7 = &v4[v8 & 0x7FFFFFFFFFFFFFFELL];
    v9 = v4 + 1;
    v10 = v8 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v11 = (*v9 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *(v6 + ((*(v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      *(v6 + v11) = 0;
      v9 += 2;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_115:
      do
      {
        v12 = *v7++;
        *(v6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      }

      while (v7 != v5);
    }
  }

  a1[13] = v4;
  LODWORD(v76) = 2 * a2;
  HIDWORD(v76) = (2 * a2) | 1;
  v13 = &v76;
  while (1)
  {
    v14 = *v13;
    if (((*(*(a1[1] + 8) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v14 & 0x3E)) & 3) == 0)
    {
      ++*(a1 + 72);
      v15 = a1[5];
      if (*(v15 + 296))
      {
        operations_research::sat::Prober::ProbeOneVariableInternal(*(v15 + 296));
      }

      v16 = *(*a1 + 12);
      operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v15, v14);
      v18 = a1[5];
      v17 = a1[6];
      a3.n128_f64[0] = operations_research::sat::SatSolver::deterministic_time(v18);
      *(v17 + 112) = *(v17 + 112) + a3.n128_f64[0] - v18[147];
      v18[147] = a3.n128_f64[0];
      if (*(a1[5] + 528))
      {
        break;
      }

      if (*(a1[5] + 296))
      {
        if (*(*a1 + 12) > v16)
        {
          v19 = a1[42];
          if (v19)
          {
            LODWORD(v74) = v14;
            (*(*v19 + 48))(v19, &v74);
          }
        }

        if (!operations_research::sat::ImpliedBounds::ProcessIntegerTrail(a1[3], v14))
        {
          break;
        }

        operations_research::sat::ProductDetector::ProcessTrailAtLevelOne(a1[4]);
        operations_research::sat::IntegerTrail::AppendNewBounds(a1[2], v69);
        v20 = *a1;
        if (v16 + 1 < *(*a1 + 12))
        {
          for (i = v16 + 1; i < *(v20 + 12); ++i)
          {
            v22 = *(*(v20 + 48) + 4 * i);
            LODWORD(v73[0]) = v22;
            if (v14)
            {
              if ((*(a1[9] + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22))
              {
                std::vector<int>::push_back[abi:ne200100]((a1 + 15), v73);
              }
            }

            else
            {
              LODWORD(v74) = v22;
              v23 = v22 >> 6;
              v24 = a1[9];
              v25 = *(v24 + 8 * v23);
              v26 = 1 << v22;
              if ((v25 & v26) == 0)
              {
                *(v24 + 8 * v23) = v25 | v26;
                std::vector<int>::push_back[abi:ne200100](v68, &v74);
              }
            }

            v20 = *a1;
            v27 = (SLODWORD(v73[0]) >> 1);
            v28 = v27 << 32;
            v29 = *(*a1 + 96);
            v30 = 8 * v27;
            if (*(v29 + v30) >> 28 == 3)
            {
              v32 = *(*(v20 + 128) + (v28 >> 30));
              v28 = v32 << 32;
              v31 = *(v29 + 8 * v32) >> 28;
              if (v31)
              {
LABEL_27:
                if (v31 != *(a1[7] + 32))
                {
                  goto LABEL_31;
                }

                continue;
              }
            }

            else
            {
              v31 = *(v29 + v30) >> 28;
              if (v31)
              {
                goto LABEL_27;
              }
            }

            if (*(*(v20 + 224) + (v28 >> 30)) != *(a1[7] + 32))
            {
LABEL_31:
              LODWORD(v74) = v14 ^ 1;
              HIDWORD(v74) = v73[0];
              std::vector<long long>::push_back[abi:ne200100]((a1 + 21), &v74);
              v20 = *a1;
            }
          }
        }

        if ((operations_research::sat::SatSolver::ResetToLevelZero(a1[5]) & 1) == 0)
        {
          break;
        }

        v33 = a1[15];
        v34 = a1[16];
        if (v33 != v34)
        {
          do
          {
            if ((operations_research::sat::SatSolver::AddUnitClause(a1[5], *v33) & 1) == 0)
            {
              goto LABEL_42;
            }

            ++v33;
          }

          while (v33 != v34);
          v33 = a1[15];
        }

        a1[16] = v33;
        if (!operations_research::sat::SatSolver::FinishPropagation(a1[5]))
        {
          break;
        }

        v35 = a1[21];
        v36 = a1[22];
        *(a1 + 74) += (v36 - v35) >> 3;
        if (v36 != v35)
        {
          do
          {
            operations_research::sat::SatSolver::AddBinaryClause(a1[5], *v35, v35[1]);
            v35 += 2;
          }

          while (v35 != v36);
          v35 = a1[21];
        }

        a1[22] = v35;
        if ((operations_research::sat::SatSolver::FinishPropagation(a1[5]) & 1) == 0)
        {
          break;
        }
      }
    }

    v13 = (v13 + 4);
    if (v13 == v77)
    {
      v39 = a1[19];
      v40 = a1[18];
      v41 = 126 - 2 * __clz((v39 - v40) >> 4);
      if (v39 == v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(v40, v39, v42, 1, a3);
      LODWORD(v74) = -1;
      *&v75 = 0;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v69, &v74);
      v43 = a1[18];
      if (a1[19] == v43)
      {
LABEL_107:
        result = operations_research::sat::SatSolver::FinishPropagation(a1[5]);
        goto LABEL_43;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0x8000000000000002;
      v47 = 0x7FFFFFFFFFFFFFFELL;
      v48 = 0xFFFFFFFFLL;
LABEL_50:
      v49 = *(v43 + 16 * v44);
      if (v45 >= 1 && (v49 & 0xFFFFFFFE) != v48)
      {
        v50 = v47 + 1;
        if (v50 < v46)
        {
          v51 = operations_research::sat::IntegerTrail::InitialVariableDomain(a1[2], v48);
          v74 = 0;
          if (*v51 >= 2uLL)
          {
            if (*v51)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v74, v51);
            }

            else
            {
              v74 = *v51;
              v75 = *(v51 + 8);
            }
          }

          operations_research::Domain::Domain(v72, v50, v46 - 1);
          operations_research::Domain::Complement(v72, v73);
          operations_research::Domain::IntersectionWith(&v74, v73, &v76);
          if (v73[0])
          {
            operator delete(v73[1]);
          }

          if (v72[0])
          {
            operator delete(v72[1]);
          }

          v52 = v76;
          v53 = v77[0];
          v54 = v76 & 1;
          if ((v76 & 1) == 0)
          {
            v53 = v77;
          }

          v55 = v75;
          if ((v74 & 1) == 0)
          {
            v55 = &v75;
          }

          if ((((v74 >> 1) ^ (v76 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_66;
          }

          v57 = &v53[2 * (v76 >> 1)];
          v58 = &v55[2 * (v74 >> 1)];
          if ((v76 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v74 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            while (*v53 == *v55 && v53[1] == v55[1])
            {
              v53 += 2;
              v55 += 2;
              if (v53 == v57 || v55 == v58)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_66;
          }

LABEL_78:
          if (v55 != v58 || v53 != v57)
          {
LABEL_66:
            ++*(a1 + 73);
            v56 = a1[2];
            v70 = 0;
            if (v52 >= 2)
            {
              if (v54)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v70, &v76);
              }

              else
              {
                v70 = v52;
                v71 = *v77;
              }
            }

            updated = operations_research::sat::IntegerTrail::UpdateInitialDomain(v56, v48, &v70);
            if (v70)
            {
              operator delete(v71);
            }

            v54 = v76 & 1;
            if ((updated & 1) == 0)
            {
              if (v76)
              {
                operator delete(v77[0]);
              }

              if (v74)
              {
                operator delete(v75);
              }

              break;
            }
          }

          if (v54)
          {
            operator delete(v77[0]);
          }

          if (v74)
          {
            operator delete(v75);
          }
        }

        v47 = 0x7FFFFFFFFFFFFFFELL;
        v46 = 0x8000000000000002;
      }

      v43 = *v69;
      v61 = *(*v69 + 16 * v44 + 8);
      if (v47 >= -v61)
      {
        v62 = -v61;
      }

      else
      {
        v62 = v47;
      }

      if (v46 <= v61)
      {
        v63 = *(*v69 + 16 * v44 + 8);
      }

      else
      {
        v63 = v46;
      }

      if (v49)
      {
        v47 = v62;
      }

      else
      {
        v46 = v63;
      }

      if (v45)
      {
        v64 = v43 + 16 * (v45 - 1);
        if (*v64 == v49)
        {
          v65 = *(v64 + 8);
          v66 = v61 >= v65 ? v65 : *(*v69 + 16 * v44 + 8);
          v67 = a1[2];
          if (v66 > *(*(v67 + 40) + 8 * v49))
          {
            ++*(a1 + 75);
            result = operations_research::sat::IntegerTrail::Enqueue(v67, v49, v66, 0, 0, 0, 0);
            if (!result)
            {
              goto LABEL_43;
            }

            v43 = *v69;
          }
        }
      }

      v44 = ++v45;
      v48 = v49 & 0xFFFFFFFE;
      if (v45 >= ((a1[19] - v43) >> 4))
      {
        goto LABEL_107;
      }

      goto LABEL_50;
    }
  }

LABEL_42:
  result = 0;
LABEL_43:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CCAC0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23, void *a24)
{
  if (a11)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a24);
  }

  if (a20)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Prober::ProbeOneVariable(uint64_t a1, int a2)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 64, 2 * *(*(a1 + 40) + 16));
  result = operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 40));
  if (result)
  {
    v6 = *(*(*(a1 + 40) + 216) + 12);
    result = operations_research::sat::Prober::ProbeOneVariableInternal(a1, a2, v5);
    if (result)
    {
      *(a1 + 304) += *(*(*(a1 + 40) + 216) + 12) - v6;
      return 1;
    }
  }

  return result;
}

char *absl::lts_20240722::StrCat<double,char [3],char const*,int,char [2],unsigned long,char [2]>@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, long double *a6@<X5>, const char *a7@<X6>, const char **a8@<X7>, std::string *a9@<X8>, unsigned int *a10, const char *a11, unint64_t *a12, const char *a13)
{
  v52 = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v37[0] = *a1;
  v37[1] = v16;
  v17 = *a4;
  v37[2] = *a3;
  v37[3] = v17;
  v37[4] = *a5;
  v18 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v36, *a6, a2);
  v34 = v36;
  v35 = v18;
  v38 = v36;
  v39 = v18;
  v19 = strlen(a7);
  v40 = a7;
  v41 = v19;
  v21 = *a8;
  if (v21)
  {
    v22 = strlen(v21);
  }

  else
  {
    v22 = 0;
  }

  v42 = v21;
  v43 = v22;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v33, v20);
  v31 = v33;
  v32 = v23 - v33;
  v44 = v33;
  v45 = v23 - v33;
  v24 = strlen(a11);
  v46 = a11;
  v47 = v24;
  v29 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v30, v25) - v30;
  v48 = v30;
  v49 = v29;
  v26 = strlen(a13);
  v50 = a13;
  v51 = v26;
  result = absl::lts_20240722::strings_internal::CatPieces(v37, 12, a9);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::Prober::ProbeDnf(uint64_t *a1, const void *a2, unint64_t a3, unsigned int **a4, unint64_t a5)
{
  if (a5 < 2)
  {
    return 1;
  }

  result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
  if (!result)
  {
    return result;
  }

  v9 = (a1 + 33);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1 + 33);
  v95 = (a1 + 27);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1 + 27);
  v88 = a5;
  v10 = 0;
  if (!(24 * a5))
  {
    goto LABEL_87;
  }

  v91 = &a4[3 * a5];
  v11 = (a1 + 24);
  while (2)
  {
    result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
    if (!result || v10 >= 1 && !a1[35] && !a1[29])
    {
      return result;
    }

    v12 = *(*a1 + 12);
    v92 = *(a1[2] + 152);
    v93 = *(a1[2] + 160);
    v14 = *a4;
    v13 = a4[1];
    v94 = a4;
    while (1)
    {
      if (v14 == v13)
      {
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1 + 24);
        v25 = *a1;
        if (v12 >= *(*a1 + 12))
        {
LABEL_21:
          std::swap[abi:ne200100]<absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>((a1 + 24), v95);
          a1[19] = a1[18];
          operations_research::sat::IntegerTrail::AppendNewBoundsFrom(a1[2], -1431655765 * ((v93 - v92) >> 3), (a1 + 18));
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1 + 30);
          v26 = a1[18];
          v27 = a1[19];
          while (1)
          {
            if (v26 == v27)
            {
              ++v10;
              std::swap[abi:ne200100]<absl::lts_20240722::btree_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>((a1 + 30), (a1 + 33));
              goto LABEL_7;
            }

            v96 = *v26;
            v43 = *v9;
            v44 = *(*v9 + 10);
            if (!*(*v9 + 10))
            {
              goto LABEL_70;
            }

LABEL_65:
            v45 = 0;
            do
            {
              v46 = (v44 + v45) >> 1;
              if (SLODWORD(v43[2 * v46 + 2]) < v96)
              {
                v45 = v46 + 1;
              }

              else
              {
                v44 = (v44 + v45) >> 1;
              }
            }

            while (v45 != v44);
LABEL_70:
            while (!*(v43 + 11))
            {
              v43 = v43[v44 + 32];
              v44 = *(v43 + 10);
              if (*(v43 + 10))
              {
                goto LABEL_65;
              }
            }

            while (v44 == *(v43 + 10))
            {
              LODWORD(v44) = *(v43 + 8);
              v43 = *v43;
              if (*(v43 + 11))
              {
                goto LABEL_77;
              }
            }

            if (v96 >= SLODWORD(v43[2 * v44 + 2]))
            {
              goto LABEL_78;
            }

LABEL_77:
            v43 = a1[34];
            LODWORD(v44) = *(v43 + 10);
LABEL_78:
            if (!v10)
            {
              break;
            }

            v47 = a1[34];
            if (v43 != v47 || v44 != *(v47 + 10))
            {
              v49 = &v43[2 * v44];
              v51 = v49[3];
              v50 = v49 + 3;
              v52 = *(&v96 + 1);
              v99 = &v96;
              absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(a1 + 240, &v96, &std::piecewise_construct, &v99, &v97);
              v41 = v97 + 16 * v98;
              if (v51 >= v52)
              {
                v53 = &v96 + 1;
              }

              else
              {
                v53 = v50;
              }

              v42 = *v53;
              goto LABEL_61;
            }

LABEL_62:
            ++v26;
          }

          v99 = &v96;
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(a1 + 240, &v96, &std::piecewise_construct, &v99, &v97);
          v41 = v97 + 16 * v98;
          v42 = *(&v96 + 1);
LABEL_61:
          *(v41 + 24) = v42;
          goto LABEL_62;
        }

        while (1)
        {
          v28 = *&v25[6][4 * v12];
          LODWORD(v97) = v28;
          if (!v10)
          {
            break;
          }

          v29 = *v95;
          v30 = *(*v95 + 10);
          if (!*(*v95 + 10))
          {
            goto LABEL_31;
          }

LABEL_26:
          v31 = 0;
          do
          {
            v32 = (v30 + v31) >> 1;
            if (*(v29 + v32 + 3) < v28)
            {
              v31 = v32 + 1;
            }

            else
            {
              v30 = (v30 + v31) >> 1;
            }
          }

          while (v31 != v30);
LABEL_31:
          while (!*(v29 + 11))
          {
            v29 = v29[v30 + 32];
            v30 = *(v29 + 10);
            if (*(v29 + 10))
            {
              goto LABEL_26;
            }
          }

          while (v30 == *(v29 + 10))
          {
            LODWORD(v30) = *(v29 + 8);
            v29 = *v29;
            if (*(v29 + 11))
            {
              v33 = a1[28];
              goto LABEL_38;
            }
          }

          v33 = a1[28];
          if (v28 >= *(v29 + v30 + 3))
          {
            if (v29 != v33 || v30 != *(v33 + 10))
            {
              break;
            }
          }

          else
          {
LABEL_38:
            *(v33 + 10);
          }

LABEL_23:
          ++v12;
          v25 = *a1;
          if (v12 >= *(*a1 + 12))
          {
            goto LABEL_21;
          }
        }

        if (!a1[26])
        {
          operator new();
        }

        v35 = *v11;
        v36 = (*v11)[10];
        if ((*v11)[10])
        {
LABEL_46:
          v37 = 0;
          do
          {
            v38 = (v36 + v37) >> 1;
            if (*&v35[4 * v38 + 12] < v28)
            {
              v37 = v38 + 1;
            }

            else
            {
              v36 = (v36 + v37) >> 1;
            }
          }

          while (v37 != v36);
        }

        while (!v35[11])
        {
          v35 = *&v35[8 * v36 + 256];
          v36 = v35[10];
          if (v35[10])
          {
            goto LABEL_46;
          }
        }

        v39 = v36;
        v40 = v35;
        while (v36 == v40[10])
        {
          LODWORD(v36) = v40[8];
          v40 = *v40;
          if (v40[11])
          {
            goto LABEL_22;
          }
        }

        if (v28 < *&v40[4 * v36 + 12])
        {
LABEL_22:
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>((a1 + 24), v35, v39, &v97);
        }

        goto LABEL_23;
      }

      v15 = *v14;
      v16 = *v14;
      v17 = *(*(a1[1] + 8) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v17 >> (v15 & 0x3E)) & 3) != 0)
      {
        if (((v17 >> v16) & 1) == 0)
        {
          break;
        }

        goto LABEL_14;
      }

      v18 = a1[5];
      v19 = *(v18 + 296);
      operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v18, v16);
      v20 = a1[5];
      v21 = a1[6];
      v22 = operations_research::sat::SatSolver::deterministic_time(v20);
      *(v21 + 112) = *(v21 + 112) + v22 - v20[147];
      v20[147] = v22;
      v23 = a1[5];
      v24 = *(v23 + 296);
      ++*(a1 + 72);
      if (*(v23 + 528))
      {
        return 0;
      }

      if (v24 <= v19)
      {
        break;
      }

LABEL_14:
      ++v14;
    }

LABEL_7:
    a4 = v94 + 3;
    if (v94 + 3 != v91)
    {
      continue;
    }

    break;
  }

LABEL_87:
  result = operations_research::sat::SatSolver::ResetToLevelZero(a1[5]);
  if (result)
  {
    v54 = *(a1 + 76);
    v55 = a1[28];
    v56 = *a1[27];
    v57 = v55[10];
    if (v56 != v55 || v57 != 0)
    {
      v59 = 0;
      do
      {
        v60 = *&v56[4 * v59 + 12];
        if (((*(*(a1[1] + 8) + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          ++*(a1 + 76);
          result = operations_research::sat::SatSolver::AddUnitClause(a1[5], v60);
          if (!result)
          {
            return result;
          }
        }

        if (v56[11])
        {
          if (++v59 == v56[10])
          {
            v61 = v56;
            while (1)
            {
              v62 = *v61;
              if (*(*v61 + 11))
              {
                break;
              }

              v63 = v61[8];
              v61 = *v61;
              if (v63 != v62[10])
              {
                v56 = v62;
                v59 = v63;
                break;
              }
            }
          }
        }

        else
        {
          v64 = &v56[8 * (v59 + 1) + 256];
          do
          {
            v56 = *v64;
            v65 = *(*v64 + 11);
            v64 = *v64 + 256;
          }

          while (!v65);
          v59 = 0;
        }
      }

      while (v56 != v55 || v59 != v57);
    }

    v66 = *(a1 + 75);
    v67 = a1[34];
    v68 = *a1[33];
    v69 = v67[10];
    if (v68 != v67 || v69 != 0)
    {
      v71 = 0;
      do
      {
        v72 = &v68[16 * v71];
        v74 = *(v72 + 4);
        v73 = (v72 + 16);
        v75 = *(v73 + 1);
        v76 = a1[2];
        if (v75 > *(*(v76 + 40) + 8 * v74))
        {
          ++*(a1 + 75);
          result = operations_research::sat::IntegerTrail::Enqueue(v76, *v73, v75, 0, 0, 0, 0);
          if (!result)
          {
            return result;
          }
        }

        if (v68[11])
        {
          if (++v71 == v68[10])
          {
            v77 = v68;
            while (1)
            {
              v78 = *v77;
              if (*(*v77 + 11))
              {
                break;
              }

              v79 = v77[8];
              v77 = *v77;
              if (v79 != v78[10])
              {
                v68 = v78;
                v71 = v79;
                break;
              }
            }
          }
        }

        else
        {
          v80 = &v68[8 * (v71 + 1) + 256];
          do
          {
            v68 = *v80;
            v81 = *(*v80 + 11);
            v80 = *v80 + 256;
          }

          while (!v81);
          v71 = 0;
        }
      }

      while (v68 != v67 || v71 != v69);
    }

    result = operations_research::sat::SatSolver::FinishPropagation(a1[5]);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 75) > v66 || *(a1 + 76) > v54) && dword_27E25D258 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::Prober::ProbeDnf(std::string_view,absl::lts_20240722::Span<std::vector<operations_research::sat::Literal> const>)::$_0::operator() const(void)::site, dword_27E25D258))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v97, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 408);
      v82 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v97, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v82, "ProbeDnf(", 9uLL);
      v83 = absl::lts_20240722::log_internal::LogMessage::operator<<(v82, a2, a3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, ", num_fixed_literals=", 0x15uLL);
      LODWORD(v96) = *(a1 + 76) - v54;
      v84 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v83, &v96);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v84, ", num_fixed_integer_bounds=", 0x1BuLL);
      LODWORD(v96) = *(a1 + 75) - v66;
      v85 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v84, &v96);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, ", num_valid_conjunctions=", 0x19uLL);
      LODWORD(v96) = v10;
      v86 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v85, &v96);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v86, "/", 1uLL);
      *&v96 = v88;
      v87 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v86, &v96);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, ")", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v97);
    }

    return 1;
  }

  return result;
}

void sub_23CCACB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::swap[abi:ne200100]<absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>(uint64_t a1, __int128 *a2)
{
  *v11 = *a1;
  v3 = *(a1 + 8);
  *(a1 + 8) = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 16) = 0;
  *&v11[8] = v3;
  *a1 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  if (a1 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a1);
    v5 = *a1;
    *a1 = *a2;
    *a2 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 2);
    *(a2 + 2) = v7;
  }

  if (v11 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(a2);
    v8 = *(a2 + 2);
    v9 = *&v11[8];
    v10 = *a2;
    *a2 = *v11;
    *v11 = v10;
    *(a2 + 8) = v9;
    *&v11[16] = v8;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v11);
}

void std::swap[abi:ne200100]<absl::lts_20240722::btree_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>(uint64_t a1, __int128 *a2)
{
  *v11 = *a1;
  v3 = *(a1 + 8);
  *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 16) = 0;
  *&v11[8] = v3;
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  if (a1 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a1);
    v5 = *a1;
    *a1 = *a2;
    *a2 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 2);
    *(a2 + 2) = v7;
  }

  if (v11 != a2)
  {
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(a2);
    v8 = *(a2 + 2);
    v9 = *&v11[8];
    v10 = *a2;
    *a2 = *v11;
    *v11 = v10;
    *(a2 + 8) = v9;
    *&v11[16] = v8;
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(v11);
}

uint64_t operations_research::sat::LookForTrivialSatSolution(operations_research::sat *this, double a2, operations_research::sat::Model *a3, operations_research::SolverLogger *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = a2;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if (!a3)
  {
    a3 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(this);
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
    if (operations_research::sat::SatSolver::ResetToLevelZero(v8))
    {
      goto LABEL_3;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_27;
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
  if (!operations_research::sat::SatSolver::ResetToLevelZero(v8))
  {
    goto LABEL_18;
  }

LABEL_3:
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(this);
  v27 = *(*(v8 + 216) + 12);
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(this);
  operations_research::sat::SatParameters::SatParameters(v40, 0, v10);
  operations_research::sat::SatParameters::SatParameters(v33, 0, v40);
  v36 = 0;
  v38 = 1;
  v39 = a2;
  v34 |= 0x80u;
  v35 |= 0x100040u;
  v32 = 0.0;
  v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(this);
  v12 = 0;
  v13 = 0.0;
  v14 = " (Aborted)";
  do
  {
    v15 = operations_research::TimeLimit::LimitReached(v9);
    if (v13 > a2)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      goto LABEL_12;
    }

    operations_research::sat::SatSolver::SetParameters(v8, v33);
    operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(*(v8 + 248));
    v17 = operations_research::sat::SatSolver::SolveWithTimeLimit(v8, v9);
    v18 = v9[14];
    v13 = v18 + v13;
    v32 = v13;
    v19 = v17 == 2;
    if (v17 == 2)
    {
      if (*a3 == 1)
      {
        operator new();
      }

      goto LABEL_25;
    }

    if ((operations_research::sat::SatSolver::ResetToLevelZero(v8) & 1) == 0)
    {
      if (*a3 == 1)
      {
        operator new();
      }

      v18 = v9[14];
LABEL_25:
      v9[14] = v13 + v18;
      goto LABEL_26;
    }

    *&v48 = v11;
    *(&v48 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
    v49 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
    operations_research::sat::RandomizeDecisionHeuristic(&v48, v33);
    v39 = a2 - v13;
    v37 = v12;
    v35 |= 0x100010u;
    ++v12;
  }

  while (v12 != 1000);
  v14 = &byte_23CE7F131;
LABEL_12:
  operations_research::sat::SatSolver::SetParameters(v8, v40);
  operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(*(v8 + 248));
  v9[14] = v13 + v9[14];
  if (operations_research::sat::SatSolver::ResetToLevelZero(v8))
  {
    if (*a3 == 1)
    {
      v21 = *(*(v8 + 216) + 12);
      v31 = *(v8 + 16);
      *&v48 = "[Random exploration]";
      *(&v48 + 1) = 20;
      *&v47 = " num_fixed: +";
      *(&v47 + 1) = 13;
      v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v21 - v27), v46, v20);
      *&v45 = v46;
      *(&v45 + 1) = v22 - v46;
      *&v44 = " (";
      *(&v44 + 1) = 2;
      v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v21, v43, v23);
      *&v42 = v43;
      *(&v42 + 1) = v24 - v43;
      v29 = (absl::lts_20240722::GetCurrentTimeNanos(v24) - CurrentTimeNanos) * 0.000000001;
      v28 = v14;
      absl::lts_20240722::StrCat<char [2],int,char [2],char [9],double,char [2],double,char [9],double,char const*>("/", &v48, &v47, &v45, &v44, &v42, &v31, ")", &__p, " dtime: ", &v32, "/", &v41, " wtime: ", &v29, &v28);
      operations_research::SolverLogger::LogInfo(a3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 494, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v19 = operations_research::sat::SatSolver::FinishPropagation(v8);
  }

  else
  {
    v19 = 0;
  }

LABEL_26:
  operations_research::sat::SatParameters::~SatParameters(v33);
  operations_research::sat::SatParameters::~SatParameters(v40);
LABEL_27:
  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_23CCAD17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (*(v16 - 137) < 0)
  {
    operator delete(*(v16 - 160));
    operations_research::sat::SatParameters::~SatParameters(va);
    operations_research::sat::SatParameters::~SatParameters(&STACK[0x448]);
    _Unwind_Resume(a1);
  }

  operations_research::sat::SatParameters::~SatParameters(va);
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x448]);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<char [2],int,char [2],char [9],double,char [2],double,char [9],double,char const*>@<X0>(char *__s@<X5>, _OWORD *a2@<X0>, __int128 *a3@<X1>, _OWORD *a4@<X2>, __int128 *a5@<X3>, _OWORD *a6@<X4>, unsigned int *a7@<X6>, const char *a8@<X7>, std::string *a9@<X8>, const char *a10, long double *a11, const char *a12, long double *a13, const char *a14, long double *a15, const char **a16)
{
  v61 = *MEMORY[0x277D85DE8];
  v18 = *a3;
  v40[0] = *a2;
  v40[1] = v18;
  v19 = *a5;
  v40[2] = *a4;
  v40[3] = v19;
  v40[4] = *a6;
  v41 = __s;
  v42 = strlen(__s);
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a7, v39, v20);
  v38[4] = v39;
  v38[5] = v21 - v39;
  v43 = v39;
  v44 = v21 - v39;
  v22 = strlen(a8);
  v45 = a8;
  v46 = v22;
  v23 = strlen(a10);
  v47 = a10;
  v48 = v23;
  v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v38, *a11, v24);
  v37[4] = v38;
  v37[5] = v25;
  v49 = v38;
  v50 = v25;
  v26 = strlen(a12);
  v51 = a12;
  v52 = v26;
  v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *a13, v27);
  v36[4] = v37;
  v36[5] = v28;
  v53 = v37;
  v54 = v28;
  v29 = strlen(a14);
  v55 = a14;
  v56 = v29;
  v35 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v36, *a15, v30);
  v57 = v36;
  v58 = v35;
  if (*a16)
  {
    v31 = strlen(*a16);
  }

  else
  {
    v31 = 0;
  }

  v59 = *a16;
  v60 = v31;
  result = absl::lts_20240722::strings_internal::CatPieces(v40, 15, a9);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::FailedLiteralProbingRound(absl::lts_20240722 *a1, uint64_t a2, void *a3)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  if (dword_2810BD458 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::$_0::operator() const(void)::site, dword_2810BD458);
    v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
    if (operations_research::sat::SatSolver::ResetToLevelZero(v7))
    {
      goto LABEL_3;
    }

    return 0;
  }

  IsEnabled1 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  if (!operations_research::sat::SatSolver::ResetToLevelZero(v7))
  {
    return 0;
  }

LABEL_3:
  v244 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a3);
  if (!operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v244, 0) || !operations_research::sat::SatSolver::FinishPropagation(v7))
  {
    return 0;
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a3);
  v230 = *(*(v7 + 216) + 12);
  v249 = v8;
  v9 = *(v8 + 112);
  v10 = *(v7 + 16);
  v11 = 2 * v10;
  if (2 * v10 > 0)
  {
    v261 = 2 * v10;
    operator new();
  }

  v261 = 0;
  v263 = 0;
  v264 = 0;
  v262 = 0;
  v265 = 0;
  v266 = 0;
  v267 = 0;
  v13 = a3[3];
  if (v13 <= 1)
  {
    if (a3[4] >= 2uLL)
    {
      v12 = a3 + 5;
      if (a3[5] == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_20:
          v254 = v12[1];
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v14 = 0;
    _X11 = a3[5];
    __asm { PRFM            #4, [X11] }

    v21 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = ((v21 >> 7) ^ (_X11 >> 12)) & v13;
    v24 = *(_X11 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_16;
    }

LABEL_13:
    v26 = a3[6];
    while (1)
    {
      v27 = (v23 + (__clz(__rbit64(v25)) >> 3)) & v13;
      if (*(v26 + 16 * v27) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        break;
      }

      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_16:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v14 += 8;
          v23 = (v14 + v23) & v13;
          v24 = *(_X11 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_22;
      }
    }

    v12 = (v26 + 16 * v27);
    if (_X11 + v27)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v254 = 0;
LABEL_23:
  v28 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a3);
  v234 = *(v244 + 32);
  v232 = *(v28 + 32);
  memset(&v260, 0, sizeof(v260));
  memset(&v259, 0, sizeof(v259));
  if ((a2 & 0x10000) == 0)
  {
    __x[0] = 0;
    if (v11)
    {
      v29 = v28;
      std::vector<int>::__append(&v259, v11, __x);
      v28 = v29;
    }
  }

  v235 = v28;
  if ((*(v244 + 632) & 1) == 0)
  {
    v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.h", 591);
    goto LABEL_295;
  }

  v30 = *(v244 + 640);
  v31 = *(v244 + 648);
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v32 = v254;
  v228 = CurrentTimeNanos;
  v229 = v10;
  if ((a2 & 0x10000) != 0)
  {
    __x[0] = -1;
    std::vector<int>::assign(&v260, v11, __x);
  }

  v33 = v244;
  __src = 0;
  v34 = 0;
  __p = 0;
  v35 = 0;
  v236 = 0.0;
  v231 = 0.0;
  v237 = 0.0;
  v238 = 0.0;
  v239 = 0.0;
  v233 = IsEnabled1 | BYTE4(a2) & 1;
  v36 = v9 + *&a1;
  v242 = v7;
LABEL_33:
  v37 = v35;
  while (2)
  {
    v38 = __src;
    while (1)
    {
      if ((operations_research::TimeLimit::LimitReached(v249) & 1) != 0 || v249[14] > v36)
      {
        __srcb = v38;
        goto LABEL_273;
      }

      if ((a2 & 0x100) == 0)
      {
        operations_research::sat::SatSolver::Backtrack(v7, 0);
      }

      if ((a2 & 0x10000) != 0)
      {
        v40 = *(v7 + 296);
        if (v40 < 1)
        {
          v39 = -1;
          goto LABEL_101;
        }

        v41 = (*(v33 + 200) + 32 * (*(*(v7 + 304) + 8 * v40 - 4) ^ 1));
        v44 = *v41;
        v43 = (v41 + 1);
        v42 = v44;
        if (v44)
        {
          v43 = *v43;
        }

        if ((v42 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v45 = 4 * (v42 >> 1);
          v46 = __p;
          v250 = v37;
          do
          {
            v47 = *v43;
            v48 = v47 ^ 1;
            if (((v262[v47 >> 6] >> v48) & 1) == 0)
            {
              v49 = v260.__begin_[v48];
              if (v49 != -1)
              {
                v50 = *(*(v32 + 24) + 8 * (v47 >> 6));
                if (((v50 >> (v48 & 0x3E)) & 3) != 0)
                {
                  if ((v50 >> (v48 & 0x3F ^ 1)))
                  {
                    v51 = v34 - v38;
                    v52 = (v34 - v38) >> 2;
                    v53 = v52 + 1;
                    if ((v52 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v38 >> 1 > v53)
                    {
                      v53 = -v38 >> 1;
                    }

                    v54 = v38;
                    if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v55 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v55 = v53;
                    }

                    if (v55)
                    {
                      if (!(v55 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v38 = 0;
                    *(4 * v52) = v47;
                    memcpy(0, v54, v51);
                    v32 = v254;
                    v34 = 4 * v52 + 4;
                  }
                }

                else
                {
                  *v245 = v34;
                  v56 = v37 - v46;
                  v57 = (v37 - v46) >> 3;
                  v58 = v57 + 1;
                  if ((v57 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (-v46 >> 2 > v58)
                  {
                    v58 = -v46 >> 2;
                  }

                  if (-v46 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v59 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  if (v59)
                  {
                    if (!(v59 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(8 * v57) = v48 | (-v49 << 32);
                  v37 = (8 * v57 + 8);
                  memcpy(0, v46, v56);
                  v46 = 0;
                  v32 = v254;
                  v34 = *v245;
                }
              }
            }

            ++v43;
            v45 -= 4;
          }

          while (v45);
          v7 = v242;
          v60 = __p;
          v33 = v244;
          v61 = v250;
        }

        else
        {
          v61 = v37;
          v60 = __p;
          v46 = __p;
        }

        v62 = (v46 + ((v61 - v60) << 29 >> 29));
        v63 = 126 - 2 * __clz((v37 - v62) >> 3);
        if (v37 == v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(v62, v37, v64, 1);
        if (v46 != v37)
        {
          v65 = (v37 - 8);
          do
          {
            v37 = v65;
            v39 = v65->i32[0];
            if (v65->i32[0] == -1)
            {
              v74 = *(v7 + 296);
              if (v74 <= 0)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v74, 0, "sat_solver->CurrentDecisionLevel() > 0");
              }

              operations_research::sat::SatSolver::Backtrack(v7, v74 - 1);
            }

            else
            {
              v66 = v39 >> 6;
              if (((v262[v66] >> v39) & 1) == 0)
              {
                v67 = *(*(v32 + 24) + 8 * v66);
                if (((v67 >> (v39 & 0x3E)) & 3) == 0)
                {
                  goto LABEL_99;
                }

                if ((v67 >> (v39 & 0x3F ^ 1u)))
                {
                  v68 = v39 ^ 1;
                  v69 = v34 - v38;
                  v70 = (v34 - v38) >> 2;
                  v71 = v70 + 1;
                  if ((v70 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (-v38 >> 1 > v71)
                  {
                    v71 = -v38 >> 1;
                  }

                  v72 = v38;
                  if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v73 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  if (v73)
                  {
                    if (!(v73 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v38 = 0;
                  *(4 * v70) = v68;
                  v34 = 4 * v70 + 4;
                  memcpy(0, v72, v69);
                  v7 = v242;
                  v33 = v244;
                  v32 = v254;
                }
              }
            }

            v65 = (v37 - 8);
          }

          while (v37 != v46);
        }

        v39 = -1;
LABEL_99:
        __p = v46;
      }

      else
      {
        v39 = -1;
      }

      LODWORD(v40) = *(v7 + 296);
LABEL_101:
      v251 = v37;
      if (!v40)
      {
        break;
      }

      if (v39 != -1)
      {
        goto LABEL_124;
      }

      v246 = v40 - 1;
      v75 = *(*(v7 + 304) + 8 * (v40 - 1) + 4) ^ 1;
      v76 = (*(v33 + 200) + 32 * v75);
      v77 = *v76;
      if (*v76 < 2)
      {
        v37 = v251;
        goto LABEL_36;
      }

      v240 = v75;
      LODWORD(v78) = v259.__begin_[v240];
      v79 = v77 >> 1;
      v80 = 1;
      while (1)
      {
        v83 = v76 + 1;
        if (v77)
        {
          v83 = v76[1];
        }

        v78 = v78 % v79;
        v81 = *(v83 + v78);
        if (((1 << (v81 ^ 1u)) & v262[v81 >> 6]) != 0)
        {
          goto LABEL_106;
        }

        v84 = *(*(v32 + 24) + 8 * (v81 >> 6));
        if ((v84 >> ((v81 ^ 1) & 0x3F ^ 1)))
        {
          v85 = v34 - v38;
          v86 = (v34 - v38) >> 2;
          v87 = v86 + 1;
          __srca = v38;
          if ((v86 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (-v38 >> 1 > v87)
          {
            v87 = -v38 >> 1;
          }

          if (-v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v88 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v87;
          }

          if (v88)
          {
            if (!(v88 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v89 = (4 * v86);
          *v89 = v81;
          v34 = (v89 + 1);
          memcpy(0, __srca, v85);
          v38 = 0;
          v32 = v254;
          goto LABEL_106;
        }

        if ((v84 & (1 << (v81 ^ 1u))) == 0)
        {
          break;
        }

LABEL_106:
        LODWORD(v78) = v78 + 1;
        v77 = *v76;
        v79 = *v76 >> 1;
        if (v79 <= v80++)
        {
          goto LABEL_123;
        }
      }

      v39 = v81 ^ 1;
LABEL_123:
      v7 = v242;
      v259.__begin_[v240] = v78;
      v33 = v244;
      v37 = v251;
      if (v39 != -1)
      {
LABEL_124:
        v90 = v39;
        goto LABEL_133;
      }

LABEL_36:
      operations_research::sat::SatSolver::Backtrack(v7, v246);
    }

    __srcb = v38;
    if (v38 != v34)
    {
      for (i = v38; i != v34; ++i)
      {
        v92 = *i;
        if (((*(*(v254 + 24) + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
        {
          if ((operations_research::sat::SatSolver::AddUnitClause(v7, v92) & 1) == 0)
          {
            goto LABEL_285;
          }

          ++*&v239;
        }
      }
    }

    if (!operations_research::sat::SatSolver::FinishPropagation(v7))
    {
      goto LABEL_285;
    }

    v90 = v39;
    v34 = v38;
    if (v39 != -1)
    {
LABEL_133:
      __src = v38;
      v93 = v90 >> 6;
      v94 = v262[v93];
      if (((1 << v90) & v94) != 0)
      {
        v95 = v251;
      }

      else
      {
        v262[v93] = (1 << v90) | v94;
        v96 = v266;
        if (v266 >= v267)
        {
          v98 = v265;
          v99 = v266 - v265;
          v100 = (v266 - v265) >> 2;
          v101 = v100 + 1;
          if ((v100 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v102 = v267 - v265;
          if ((v267 - v265) >> 1 > v101)
          {
            v101 = v102 >> 1;
          }

          if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v103 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v103 = v101;
          }

          if (v103)
          {
            if (!(v103 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v104 = (4 * v100);
          *v104 = v90;
          v97 = v104 + 1;
          memcpy(0, v98, v99);
          v265 = 0;
          v267 = 0;
          if (v98)
          {
            operator delete(v98);
          }
        }

        else
        {
          *v266 = v90;
          v97 = v96 + 1;
        }

        v266 = v97;
        v95 = v251;
      }

      v105 = (v95->i64 - __p) >> 3;
      v106 = v105 + 1;
      if ((v105 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-__p >> 2 > v106)
      {
        v106 = -__p >> 2;
      }

      if (-__p >= 0x7FFFFFFFFFFFFFF8)
      {
        v107 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        if (!(v107 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v105) = 0xFFFFFFFFLL;
      memcpy(0, __p, v95 - __p);
      __p = 0;
      v108 = *(v7 + 296);
      v109 = operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v7, v90);
      v110 = *(v7 + 296);
      v111 = operations_research::sat::SatSolver::deterministic_time(v7);
      v249[14] = v249[14] + v111 - *(v7 + 1176);
      *(v7 + 1176) = v111;
      if (*(v7 + 528))
      {
        goto LABEL_285;
      }

      if (v110 > v108)
      {
        v37 = (8 * v105 + 8);
        goto LABEL_179;
      }

      if ((a2 & 0x10000) != 0)
      {
        j = 0;
        if (v110)
        {
          v113 = v108 + 1;
          for (j = 8 * v105 + 8; v113 > v110; v113 -= v114 == -1)
          {
            if (!j)
            {
              v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 709);
              goto LABEL_295;
            }

            v114 = *(j - 8);
            j -= 8;
          }
        }
      }

      else
      {
        j = 8 * v105 + 8;
      }

      ++*&v237;
      v32 = v254;
      if (!*(v7 + 296) && ((*(*(v254 + 24) + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v90 & 0x3F ^ 1u)) & 1) == 0)
      {
        v37 = j;
        ++*&v238;
        if (v110)
        {
          goto LABEL_182;
        }

        continue;
      }

      v115 = v90 ^ 1;
      v116 = v34 - __src;
      v117 = (v34 - __src) >> 2;
      v118 = v117 + 1;
      if ((v117 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v37 = j;
      if (-__src >> 1 > v118)
      {
        v118 = -__src >> 1;
      }

      if (-__src >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v119 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v119 = v118;
      }

      if (v119)
      {
        if (!(v119 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v117) = v115;
      v34 = 4 * v117 + 4;
      memcpy(0, __src, v116);
      __src = 0;
      v7 = v242;
      v33 = v244;
LABEL_179:
      v32 = v254;
      ++*&v238;
      if (v110)
      {
LABEL_182:
        v120 = *(*(v7 + 304) + 8 * (v110 - 1) + 4);
        v121 = *(*(v7 + 304) + 8 * (v110 - 1) + 4);
        v35 = v37;
        if (v109 < *(v32 + 12))
        {
          v252 = 0;
          v224 = 1 << v120;
          v225 = v120 >> 6;
          v122 = v109;
          v227 = v120 ^ 1;
          v223 = vdupq_n_s32(v120 ^ 1);
          v123 = v254;
          v247 = v120;
          v241 = v120;
          while (1)
          {
            v125 = *(*(v123 + 48) + 4 * v122);
            if (v125 == v121)
            {
              goto LABEL_186;
            }

            if ((a2 & 0x1000000) == 0)
            {
              goto LABEL_207;
            }

            v126 = (v125 >> 1);
            v127 = v126 << 32;
            v128 = *(v254 + 96);
            v129 = 8 * v126;
            v130 = *(v128 + v129) & 0xF0000000;
            v131 = v127;
            if (v130 == 805306368)
            {
              v133 = *(*(v254 + 128) + (v127 >> 30));
              v131 = v133 << 32;
              v132 = *(v128 + 8 * v133) >> 28;
              if (!v132)
              {
LABEL_194:
                if (*(*(v254 + 224) + (v131 >> 30)) != v232)
                {
                  goto LABEL_207;
                }

                goto LABEL_195;
              }
            }

            else
            {
              v132 = *(v128 + v129) >> 28;
              if (!v132)
              {
                goto LABEL_194;
              }
            }

            if (v132 != v232)
            {
              goto LABEL_207;
            }

LABEL_195:
            v134 = v129;
            if (v130 == 805306368)
            {
              v135 = *(*(v254 + 128) + (v127 >> 30));
              v127 = v135 << 32;
              v134 = 8 * v135;
            }

            v136 = (v128 + v134);
            v137 = *(v128 + v134);
            if (v137 >> 28)
            {
              v139 = v137 >> 28;
              if ((v139 - 1) > 1)
              {
                v142 = *(*(v254 + 248) + 8 * v139);
                v226 = v136;
                v143 = (*(*v142 + 32))(v142, v254, v136[1]);
                v140 = v127 >> 28;
                v144 = (*(v254 + 200) + (v127 >> 28));
                *v144 = v143;
                v144[1] = v145;
                v136 = v226;
              }

              else
              {
                v140 = v127 >> 28;
                v141 = (*(v254 + 200) + (v127 >> 28));
                *v141 = 0;
                v141[1] = 0;
              }

              *(*(v254 + 224) + (v127 >> 30)) = *v136 >> 28;
              *(*(v254 + 96) + v134) &= 0xFFFFFFFu;
              v138 = *(v254 + 200) + v140;
              v121 = v247;
              LODWORD(v120) = v241;
            }

            else
            {
              v138 = *(v254 + 200) + (v127 >> 28);
            }

            v146 = *(v138 + 8);
            v33 = v244;
            if ((v146 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v147 = *v138;
              v148 = 4 * v146;
              while ((*v147 ^ v120) != 1)
              {
                ++v147;
                v148 -= 4;
                if (!v148)
                {
                  goto LABEL_207;
                }
              }

              if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v244, v227, v125))
              {
                v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 765);
LABEL_295:
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v222);
              }

              v163 = *(*(v254 + 96) + v129 + 4);
              v164 = operations_research::sat::ClauseManager::ReasonClause(v235, v163);
              v165 = v164 + 1;
              v166 = *v164;
              if (!v166)
              {
                v168 = 0;
LABEL_324:
                absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v168, 2, "test == 2");
              }

              v167 = (v166 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v167 > 6)
              {
                v170 = v167 + 1;
                v171 = (v167 + 1) & 0x7FFFFFFFFFFFFFF8;
                v169 = &v165[v171];
                v172 = vdupq_n_s32(v125);
                v173 = (v164 + 5);
                v174 = 0uLL;
                v175 = v171;
                v176 = 0uLL;
                do
                {
                  v174 = vsubq_s32(vsubq_s32(v174, vceqq_s32(v173[-1], v172)), vceqq_s32(v173[-1], v223));
                  v176 = vsubq_s32(vsubq_s32(v176, vceqq_s32(*v173, v172)), vceqq_s32(*v173, v223));
                  v173 += 2;
                  v175 -= 8;
                }

                while (v175);
                v168 = vaddvq_s32(vaddq_s32(v176, v174));
                if (v170 != v171)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                v168 = 0;
                v169 = v164 + 1;
LABEL_233:
                v177 = &v165[v166];
                do
                {
                  v179 = *v169++;
                  v178 = v179;
                  if (v179 == v125)
                  {
                    v180 = v168 + 1;
                  }

                  else
                  {
                    v180 = v168;
                  }

                  if (v178 == v227)
                  {
                    v168 = v180 + 1;
                  }

                  else
                  {
                    v168 = v180;
                  }
                }

                while (v169 != v177);
              }

              if (v168 != 2)
              {
                goto LABEL_324;
              }

              v181 = operations_research::sat::ClauseManager::ReasonClause(v235, v163);
              operations_research::sat::ClauseManager::LazyDetach(v235, v181);
              v182 = *(v244 + 136);
              v121 = v247;
              LODWORD(v120) = v241;
              if ((*(v182[3] + 8 * v225) & v224) == 0)
              {
LABEL_269:
                v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.h", 725);
                goto LABEL_295;
              }

              ++v252;
              ++*&v236;
              *(*(*(v244 + 160) + (((*(v244 + 184) + v163) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v244 + 184) + v163) & 0x3FFLL)) = v227;
              v183 = *(v244 + 32);
              v184 = *(v182[6] + 4 * v163) >> 1;
              *(v182[12] + 8 * v184) = *(v182[12] + 8 * v184) & 0xFFFFFFF | (v183 << 28);
              *(v182[28] + 4 * v184) = v183;
              if ((a2 & 1) == 0)
              {
LABEL_212:
                v154 = v125 >> 6;
                v155 = v262[v154];
                if ((v155 & (1 << v125)) == 0)
                {
                  v262[v154] = v155 | (1 << v125);
                  v156 = v266;
                  if (v266 < v267)
                  {
                    *v266 = v125;
                    v124 = v156 + 1;
                  }

                  else
                  {
                    v157 = v265;
                    v158 = v266 - v265;
                    v159 = (v266 - v265) >> 2;
                    v160 = v159 + 1;
                    if ((v159 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v161 = v267 - v265;
                    if ((v267 - v265) >> 1 > v160)
                    {
                      v160 = v161 >> 1;
                    }

                    if (v161 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v160 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    if (v160)
                    {
                      if (!(v160 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v185 = (4 * v159);
                    *v185 = v125;
                    v124 = v185 + 1;
                    memcpy(0, v157, v158);
                    v265 = 0;
                    v267 = 0;
                    if (v157)
                    {
                      operator delete(v157);
                    }

                    v121 = v247;
                    LODWORD(v120) = v241;
                  }

                  v266 = v124;
                }

                goto LABEL_186;
              }

              goto LABEL_186;
            }

LABEL_207:
            if ((a2 & 1) == 0)
            {
              goto LABEL_212;
            }

            v149 = (v125 >> 1);
            v150 = v149 << 32;
            v151 = *(v254 + 96);
            v152 = 8 * v149;
            if (*(v151 + v152) >> 28 == 3)
            {
              v162 = *(*(v254 + 128) + (v150 >> 30));
              v150 = v162 << 32;
              v153 = *(v151 + 8 * v162) >> 28;
              if (v153)
              {
LABEL_210:
                if (v153 != v234)
                {
                  goto LABEL_224;
                }

                goto LABEL_186;
              }
            }

            else
            {
              v153 = *(v151 + v152) >> 28;
              if (v153)
              {
                goto LABEL_210;
              }
            }

            if (*(*(v254 + 224) + (v150 >> 30)) != v234)
            {
LABEL_224:
              if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v33, v227, v125))
              {
                v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 802);
                goto LABEL_295;
              }

              ++*&v236;
              v121 = v247;
              LODWORD(v120) = v241;
            }

LABEL_186:
            ++v122;
            v123 = v254;
            if (v122 >= *(v254 + 12))
            {
              goto LABEL_249;
            }
          }
        }

        v252 = 0;
LABEL_249:
        if ((a2 & 0x1000000) == 0 || (v186 = v121 ^ 1, v187 = *(v235 + 5) + 24 * (v121 ^ 1), v189 = *v187, v188 = *(v187 + 8), *v187 == v188))
        {
LABEL_270:
          v32 = v254;
          v37 = v35;
          if (v252 < 1)
          {
            continue;
          }

          operations_research::sat::ClauseManager::CleanUpWatchers(v235);
          *&v231 += v252;
          goto LABEL_33;
        }

        v248 = (*(v7 + 296) < 2) | a2;
        while (2)
        {
          v192 = *v189;
          if (((*(*(v254 + 24) + ((v192 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v192) & 1) != 0 && **(v189 + 1))
          {
            v193 = *v189;
            __x[0] = v186;
            if (v192 == v186)
            {
              absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::sat::Literal const&,operations_research::sat::Literal const&>(v189, __x, "w.blocking_literal != last_decision.Negated()");
            }

            v194 = *(v254 + 96);
            v195 = (v193 >> 1);
            v196 = 8 * v195;
            if ((v248 & 1) == 0)
            {
              goto LABEL_265;
            }

            v197 = v195 << 32;
            if (*(v194 + v196) >> 28 == 3)
            {
              v199 = *(*(v254 + 128) + (v197 >> 30));
              v197 = v199 << 32;
              v198 = *(v194 + 8 * v199) >> 28;
              if (!v198)
              {
                goto LABEL_264;
              }

LABEL_261:
              if (v198 != v234)
              {
LABEL_265:
                v200 = (v194 + v196);
                if ((*(v194 + v196) & 0xFFFFFFF) != 0)
                {
                  if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(v33, v186, v193))
                  {
                    v222 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 853);
                    goto LABEL_295;
                  }

                  ++*&v236;
                  v201 = *(*(v7 + 304) + 8 * (*v200 & 0xFFFFFFF) - 4);
                  if (v201 != *v189)
                  {
                    v202 = *(v33 + 136);
                    if (((*(v202[3] + ((v201 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v201) & 1) == 0)
                    {
                      goto LABEL_269;
                    }

                    v190 = v200[1];
                    *(*(*(v33 + 160) + (((*(v33 + 184) + v190) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v33 + 184) + v190) & 0x3FF)) = v201 ^ 1;
                    v191 = *(v33 + 32);
                    LODWORD(v190) = *(v202[6] + 4 * v190) >> 1;
                    *(v202[12] + 8 * v190) = *(v202[12] + 8 * v190) & 0xFFFFFFF | (v191 << 28);
                    *(v202[28] + 4 * v190) = v191;
                  }
                }
              }
            }

            else
            {
              v198 = *(v194 + v196) >> 28;
              if (v198)
              {
                goto LABEL_261;
              }

LABEL_264:
              if (*(*(v254 + 224) + (v197 >> 30)) != v234)
              {
                goto LABEL_265;
              }
            }

            operations_research::sat::ClauseManager::LazyDetach(v235, *(v189 + 1));
            ++v252;
          }

          v189 += 4;
          if (v189 == v188)
          {
            goto LABEL_270;
          }

          continue;
        }
      }

      continue;
    }

    break;
  }

  v34 = v38;
LABEL_273:
  v203 = v239;
  if (operations_research::sat::SatSolver::ResetToLevelZero(v7))
  {
    if (__srcb != v34)
    {
      v204 = __srcb;
      while ((operations_research::sat::SatSolver::AddUnitClause(v7, *v204) & 1) != 0)
      {
        ++*&v203;
        if (++v204 == v34)
        {
          goto LABEL_278;
        }
      }

      goto LABEL_285;
    }

LABEL_278:
    if (!operations_research::sat::SatSolver::FinishPropagation(v7))
    {
      goto LABEL_285;
    }

    v205 = *(*(v7 + 216) + 12);
    v206 = v249[14];
    v207 = " (Aborted)";
    if ((operations_research::TimeLimit::LimitReached(v249) & 1) == 0 && v249[14] <= v36)
    {
      v207 = &byte_23CE7F131;
    }

    if (v233)
    {
      v209 = absl::lts_20240722::log_internal::LogMessage::LogMessage(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/probing.cc", 892);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v209, "Probing. ", 9uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__x, " num_probed: ", 0xDuLL);
      v269[0] = v238;
      v210 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(__x, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v210, " num_fixed: +", 0xDuLL);
      LODWORD(v269[0]) = v205 - v230;
      v211 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v210, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v211, " (", 2uLL);
      LODWORD(v269[0]) = v205;
      v212 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v211, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v212, "/", 1uLL);
      LODWORD(v269[0]) = v229;
      v213 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v212, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v213, ")", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v213, " explicit_fix:", 0xEuLL);
      v269[0] = v203;
      v214 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v213, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v214, " num_conflicts:", 0xFuLL);
      v269[0] = v237;
      v215 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v214, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v215, " new_binary_clauses: ", 0x15uLL);
      v269[0] = v236;
      v216 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v215, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v216, " subsumed: ", 0xBuLL);
      v269[0] = v231;
      v217 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v216, v269);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v217, " dtime: ", 8uLL);
      v269[0] = v206 - v9;
      v218 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v217, v269);
      v219 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v218, " wtime: ", 8uLL);
      v269[0] = (absl::lts_20240722::GetCurrentTimeNanos(v219) - v228) * 0.000000001;
      v220 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v218, v269);
      v258 = v207;
      absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v220, &v258);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__x);
    }

    v208 = operations_research::sat::SatSolver::FinishPropagation(v7);
  }

  else
  {
LABEL_285:
    v208 = 0;
  }

  if (v259.__begin_)
  {
    v259.__end_ = v259.__begin_;
    operator delete(v259.__begin_);
  }

  if (v260.__begin_)
  {
    v260.__end_ = v260.__begin_;
    operator delete(v260.__begin_);
  }

  if (v265)
  {
    operator delete(v265);
  }

  if (v262)
  {
    operator delete(v262);
  }

  return v208;
}

void sub_23CCAEF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  if (v39)
  {
    operator delete(v39);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
    v43 = *(v40 - 224);
    if (!v43)
    {
LABEL_7:
      if (!a31)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v43 = *(v40 - 224);
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  *(v40 - 216) = v43;
  operator delete(v43);
  if (!a31)
  {
LABEL_8:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v40 - 200));
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a31);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v40 - 200));
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v52 = a2[-1].n128_i32[0];
      v51 = a2 - 1;
      if (v52 >= *v12)
      {
        return result;
      }

LABEL_108:
      v127 = *v12;
      *v12 = *v51;
LABEL_109:
      result = v127;
      *v51 = v127;
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v60 = (v12 + 16);
      v62 = v12 == a2 || v60 == a2;
      if (a4)
      {
        if (!v62)
        {
          v63 = 0;
          v64 = v12;
          do
          {
            v66 = v60;
            v67 = *(v64 + 16);
            if (v67 < *v64)
            {
              v68 = *(v64 + 24);
              v69 = v63;
              do
              {
                result = *(v12 + v69);
                *(v12 + v69 + 16) = result;
                if (!v69)
                {
                  v65 = v12;
                  goto LABEL_123;
                }

                v70 = *(v12 + v69 - 16);
                v69 -= 16;
              }

              while (v67 < v70);
              v65 = (v12 + v69 + 16);
LABEL_123:
              *v65 = v67;
              v65[1] = v68;
            }

            v60 = v66 + 1;
            v63 += 16;
            v64 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v62)
      {
        do
        {
          v99 = v60;
          v100 = *(a1 + 16);
          if (v100 < *a1)
          {
            v101 = *(a1 + 24);
            v102 = v99;
            do
            {
              result = v102[-1];
              *v102 = result;
              v103 = v102[-2].n128_i32[0];
              --v102;
            }

            while (v100 < v103);
            v102->n128_u64[0] = v100;
            v102->n128_u64[1] = v101;
          }

          v60 = v99 + 1;
          a1 = v99;
        }

        while (&v99[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v71 = (v13 - 2) >> 1;
        v72 = v71;
        do
        {
          v74 = 16 * v72;
          if (v71 >= (16 * v72) >> 4)
          {
            v75 = (v74 >> 3) | 1;
            v76 = (v12 + 16 * v75);
            v77 = *v76;
            if ((v74 >> 3) + 2 < v13 && v77 < v76[2])
            {
              v77 = v76[2];
              v76 += 2;
              v75 = (v74 >> 3) + 2;
            }

            v78 = (v12 + v74);
            v79 = *(v12 + 16 * v72);
            if (v79 <= v77)
            {
              do
              {
                v80 = v76;
                *v78 = *v76;
                if (v71 < v75)
                {
                  break;
                }

                v81 = (2 * v75) | 1;
                v76 = (v12 + 16 * v81);
                v82 = 2 * v75 + 2;
                v83 = *v76;
                if (v82 < v13 && v83 < v76[2])
                {
                  v83 = v76[2];
                  v76 += 2;
                  v81 = v82;
                }

                v78 = v80;
                v75 = v81;
              }

              while (v79 <= v83);
              *v80 = v79;
            }
          }

          v73 = v72-- <= 0;
        }

        while (!v73);
        do
        {
          v84 = 0;
          v129 = *v12;
          v85 = (v13 - 2) >> 1;
          n128_u64 = v12;
          do
          {
            while (1)
            {
              v90 = &n128_u64[v84];
              v89 = v90 + 1;
              v91 = (2 * v84) | 1;
              v84 = 2 * v84 + 2;
              if (v84 < v13)
              {
                break;
              }

              v84 = v91;
              *n128_u64 = *v89;
              n128_u64 = v90[1].n128_u64;
              if (v91 > v85)
              {
                goto LABEL_155;
              }
            }

            v88 = v90[2].n128_i32[0];
            v87 = v90 + 2;
            if (v87[-1].n128_u32[0] >= v88)
            {
              v84 = v91;
            }

            else
            {
              v89 = v87;
            }

            *n128_u64 = *v89;
            n128_u64 = v89;
          }

          while (v84 <= v85);
LABEL_155:
          if (v89 == --a2)
          {
            result = v129;
            *v89 = v129;
          }

          else
          {
            *v89 = *a2;
            result = v129;
            *a2 = v129;
            v92 = (&v89[1] - v12) >> 4;
            v73 = v92 < 2;
            v93 = v92 - 2;
            if (!v73)
            {
              v94 = v93 >> 1;
              v95 = (v12 + 16 * v94);
              v96 = v89->n128_u64[0];
              if (v95->n128_u32[0] < v89->n128_u64[0])
              {
                v97 = v89->n128_u64[1];
                do
                {
                  v98 = v95;
                  result = *v95;
                  *v89 = *v95;
                  if (!v94)
                  {
                    break;
                  }

                  v94 = (v94 - 1) >> 1;
                  v95 = (v12 + 16 * v94);
                  v89 = v98;
                }

                while (v95->n128_u32[0] < v96);
                v98->n128_u64[0] = v96;
                v98->n128_u64[1] = v97;
              }
            }
          }

          v73 = v13-- <= 2;
        }

        while (!v73);
      }

      return result;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 < v18)
        {
          v105 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v114 = *v14;
        *v14 = *v12;
        result = v114;
        *v12 = v114;
        if (v9->n128_u32[0] < *v12)
        {
          v105 = *v12;
          *v12 = *v9;
LABEL_36:
          result = v105;
          *v9 = v105;
        }

LABEL_37:
        --a3;
        v19 = *v12;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v108 = *v12;
      *v12 = *v9;
      result = v108;
      *v9 = v108;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v109 = *v14;
      *v14 = *v12;
      result = v109;
      *v12 = v109;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v24 = *(v12 + 8);
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u32[0])
      {
        v45 = v12 + 16;
        do
        {
          v12 = v45;
          if (v45 >= a2)
          {
            break;
          }

          v45 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v44 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v44);
      }

      v46 = a2;
      if (v12 < a2)
      {
        v46 = a2;
        do
        {
          v47 = v46[-1].n128_i32[0];
          --v46;
        }

        while (v19 < v47);
      }

      while (v12 < v46)
      {
        v126 = *v12;
        *v12 = *v46;
        result = v126;
        *v46 = v126;
        do
        {
          v48 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v48);
        do
        {
          v49 = v46[-1].n128_i32[0];
          --v46;
        }

        while (v19 < v49);
      }

      v50 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        result = *v50;
        *a1 = *v50;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v24;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v106 = *v14;
          *v14 = *v9;
          *v9 = v106;
          if (*v14 < *v12)
          {
            v107 = *v12;
            *v12 = *v14;
            *v14 = v107;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v110 = *v12;
          *v12 = *v14;
          *v14 = v110;
          if (v9->n128_u32[0] >= *v14)
          {
            goto LABEL_28;
          }

          v104 = *v14;
          *v14 = *v9;
        }

        else
        {
          v104 = *v12;
          *v12 = *v9;
        }

        *v9 = v104;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u32[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v112 = *v21;
          *v21 = *v10;
          *v10 = v112;
          if (v21->n128_u32[0] < v20->n128_u32[0])
          {
            v113 = *v20;
            *v20 = *v21;
            *v21 = v113;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v115 = *v20;
          *v20 = *v21;
          *v21 = v115;
          if (v10->n128_u32[0] >= v21->n128_u32[0])
          {
            goto LABEL_42;
          }

          v111 = *v21;
          *v21 = *v10;
        }

        else
        {
          v111 = *v20;
          *v20 = *v10;
        }

        *v10 = v111;
      }

LABEL_42:
      v25 = (v12 + 32);
      v28 = *(v14 + 16);
      v26 = (v14 + 16);
      v27 = v28;
      v29 = v11->n128_u32[0];
      if (v28 >= *(v12 + 32))
      {
        if (v29 < v27)
        {
          v117 = *v26;
          *v26 = *v11;
          *v11 = v117;
          if (v26->n128_u32[0] < v25->n128_u32[0])
          {
            v118 = *v25;
            *v25 = *v26;
            *v26 = v118;
          }
        }
      }

      else
      {
        if (v29 >= v27)
        {
          v119 = *v25;
          *v25 = *v26;
          *v26 = v119;
          if (v11->n128_u32[0] >= v26->n128_u32[0])
          {
            goto LABEL_51;
          }

          v116 = *v26;
          *v26 = *v11;
        }

        else
        {
          v116 = *v25;
          *v25 = *v11;
        }

        *v11 = v116;
      }

LABEL_51:
      v30 = *v15;
      v31 = v26->n128_u32[0];
      if (*v15 >= v21->n128_u32[0])
      {
        if (v31 < v30)
        {
          v121 = *v15;
          *v15 = *v26;
          *v26 = v121;
          if (*v15 < v21->n128_u32[0])
          {
            v122 = *v21;
            *v21 = *v15;
            *v15 = v122;
          }
        }
      }

      else
      {
        if (v31 >= v30)
        {
          v123 = *v21;
          *v21 = *v15;
          *v15 = v123;
          if (v26->n128_u32[0] >= *v15)
          {
            goto LABEL_60;
          }

          v120 = *v15;
          *v15 = *v26;
        }

        else
        {
          v120 = *v21;
          *v21 = *v26;
        }

        *v26 = v120;
      }

LABEL_60:
      v124 = *v12;
      *v12 = *v15;
      result = v124;
      *v15 = v124;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v24 = *(v12 + 8);
LABEL_62:
      v32 = 0;
      do
      {
        v33 = *(v12 + v32 + 16);
        v32 += 16;
      }

      while (v19 > v33);
      v34 = v12 + v32;
      v35 = a2;
      if (v32 == 16)
      {
        v35 = a2;
        do
        {
          if (v34 >= v35)
          {
            break;
          }

          v37 = v35[-1].n128_i32[0];
          --v35;
        }

        while (v19 <= v37);
      }

      else
      {
        do
        {
          v36 = v35[-1].n128_i32[0];
          --v35;
        }

        while (v19 <= v36);
      }

      v12 += v32;
      if (v34 < v35)
      {
        v38 = v35;
        do
        {
          v125 = *v12;
          *v12 = *v38;
          result = v125;
          *v38 = v125;
          do
          {
            v39 = *(v12 + 16);
            v12 += 16;
          }

          while (v19 > v39);
          do
          {
            v40 = v38[-1].n128_i32[0];
            --v38;
          }

          while (v19 <= v40);
        }

        while (v12 < v38);
      }

      v41 = (v12 - 16);
      if (v12 - 16 != a1)
      {
        result = *v41;
        *a1 = *v41;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v24;
      if (v34 < v35)
      {
        goto LABEL_81;
      }

      v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(v12, a2, v43))
      {
        a2 = (v12 - 16);
        if (!v42)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v42)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v53 = (v12 + 16);
      v57 = *(v12 + 16);
      v58 = (v12 + 32);
      v59 = *(v12 + 32);
      if (v57 >= *v12)
      {
        if (v59 < v57)
        {
          v131 = *v53;
          *v53 = *v58;
          result = v131;
          *v58 = v131;
          if (*(v12 + 16) < *v12)
          {
            v132 = *v12;
            *v12 = *v53;
            result = v132;
            *v53 = v132;
          }
        }
      }

      else
      {
        if (v59 < v57)
        {
          v128 = *v12;
          *v12 = *v58;
          goto LABEL_178;
        }

        v134 = *v12;
        *v12 = *v53;
        result = v134;
        *v53 = v134;
        if (*(v12 + 32) < *(v12 + 16))
        {
          v128 = *v53;
          *v53 = *v58;
LABEL_178:
          result = v128;
          *v58 = v128;
        }
      }

      if (v9->n128_u32[0] >= v58->n128_u32[0])
      {
        return result;
      }

      v135 = *v58;
      *v58 = *v9;
      result = v135;
      *v9 = v135;
      if (v58->n128_u32[0] >= v53->n128_u32[0])
      {
        return result;
      }

      v136 = *v53;
      *v53 = *v58;
      result = v136;
      *v58 = v136;
LABEL_182:
      if (*(v12 + 16) < *v12)
      {
        v137 = *v12;
        *v12 = *v53;
        result = v137;
        *v53 = v137;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v53 = (v12 + 16);
  v54 = *(v12 + 16);
  v56 = a2[-1].n128_u32[0];
  v51 = a2 - 1;
  v55 = v56;
  if (v54 >= *v12)
  {
    if (v55 >= v54)
    {
      return result;
    }

    v130 = *v53;
    *v53 = *v51;
    result = v130;
    *v51 = v130;
    goto LABEL_182;
  }

  if (v55 < v54)
  {
    goto LABEL_108;
  }

  v133 = *v12;
  *v12 = *v53;
  result = v133;
  *v53 = v133;
  if (v51->n128_u32[0] < *(v12 + 16))
  {
    v127 = *v53;
    *v53 = *v51;
    goto LABEL_109;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::Prober::ProbeOneVariableInternal(operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>)::$_0 &,operations_research::sat::IntegerLiteral *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_i32[0];
      v5 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v5->n128_u32[0] >= *(a1 + 16))
          {
            return 1;
          }

          v11 = *v7;
          *v7 = *v5;
          goto LABEL_14;
        }

LABEL_13:
        v11 = *a1;
        *a1 = *v5;
LABEL_14:
        *v5 = v11;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v5;
      *v5 = v24;
      if (*(a1 + 16) >= *a1)
      {
        return 1;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_15;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u32[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }
    }

    else
    {
      if (v20 < v18)
      {
        v23 = *a1;
        *a1 = *v19;
LABEL_48:
        *v19 = v23;
        goto LABEL_49;
      }

      v39 = *a1;
      *a1 = *v7;
      *v7 = v39;
      if (v20 < *(a1 + 16))
      {
        v23 = *v7;
        *v7 = *v19;
        goto LABEL_48;
      }
    }

LABEL_49:
    if (v21->n128_u32[0] >= v19->n128_u32[0])
    {
      return 1;
    }

    v40 = *v19;
    *v19 = *v21;
    *v21 = v40;
    if (v19->n128_u32[0] >= v7->n128_u32[0])
    {
      return 1;
    }

    v41 = *v7;
    *v7 = *v19;
    *v19 = v41;
    if (*(a1 + 16) >= *a1)
    {
      return 1;
    }

LABEL_52:
    v42 = *a1;
    *a1 = *v7;
    *v7 = v42;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v6 = a2[-1].n128_i32[0];
    v5 = a2 - 1;
    if (v6 >= *a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

LABEL_15:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u32[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v30 = *a1;
      *a1 = *v14;
      *v14 = v30;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_35:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v34 = *v31;
    v35 = v12->n128_u32[0];
    v36 = *v31;
    if (v36 < v35)
    {
      break;
    }

LABEL_38:
    v12 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v37 = v32;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v34;
      if (++v33 != 8)
      {
        goto LABEL_38;
      }

      return &v31[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v36 < v38);
  *(a1 + v37 + 48) = v34;
  if (++v33 != 8)
  {
    goto LABEL_38;
  }

  return &v31[1] == a2;
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[3] >= v8->i32[1])
        {
          return result;
        }

        v69 = v8->i64[0];
        goto LABEL_116;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v72 = v8->i32[3];
      v73 = v8->i32[1];
      LODWORD(v74) = v8[1].i32[1];
      if (v72 >= v73)
      {
        if (v74 < v72)
        {
          v119 = v8->u64[1];
          v120 = v8[1].i64[0];
          v8->i64[1] = v120;
          v8[1].i64[0] = v119;
          v74 = HIDWORD(v119);
          if (v73 > SHIDWORD(v120))
          {
            v121 = v8->i64[0];
            v8->i64[0] = v120;
            v8->i64[1] = v121;
          }
        }
      }

      else
      {
        v75 = v8->i64[0];
        v76 = HIDWORD(v8->i64[0]);
        if (v74 < v72)
        {
          v8->i64[0] = v8[1].i64[0];
          goto LABEL_187;
        }

        v8->i64[0] = v8->i64[1];
        v8->i64[1] = v75;
        if (v74 < v76)
        {
          v8->i64[1] = v8[1].i64[0];
LABEL_187:
          v8[1].i64[0] = v75;
          LODWORD(v74) = v76;
        }
      }

      if (a2[-1].i32[3] < v74)
      {
        v129 = v8[1].i64[0];
        v8[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v129;
        if (v8[1].i32[1] < v8->i32[3])
        {
          v131 = v8->i64[1];
          v130 = v8[1].i64[0];
          v8->i64[1] = v130;
          v8[1].i64[0] = v131;
          if (v8->i32[1] > SHIDWORD(v130))
          {
            v132 = v8->i64[0];
            v8->i64[0] = v130;
            v8->i64[1] = v132;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(v8, &v8->u64[1], &v8[1], &v8[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v77 = &v8->u64[1];
      v79 = v8 == a2 || v77 == a2;
      if (a4)
      {
        if (!v79)
        {
          v80 = 0;
          v81 = v8;
          do
          {
            v83 = v81->i32[3];
            v84 = v81->i32[1];
            v81 = v77;
            if (v83 < v84)
            {
              v85 = v77->i64[0];
              v86 = HIDWORD(v81->i64[0]);
              v87 = v80;
              do
              {
                *(&v8->i64[1] + v87) = *(v8->i64 + v87);
                if (!v87)
                {
                  v82 = v8;
                  goto LABEL_131;
                }

                v88 = *(&v8->i32[-1] + v87);
                v87 -= 8;
              }

              while (v88 > v86);
              v82 = (&v8->i64[1] + v87);
LABEL_131:
              *v82 = v85;
            }

            v77 = &v81->u64[1];
            v80 += 8;
          }

          while (&v81->u64[1] != a2);
        }
      }

      else if (!v79)
      {
        do
        {
          v122 = v7->i32[3];
          v123 = v7->i32[1];
          v7 = v77;
          if (v122 < v123)
          {
            v124 = v77->i64[0];
            v125 = HIDWORD(v77->i64[0]);
            v126 = v7;
            do
            {
              v127 = v126;
              v128 = *--v126;
              *v127 = v128;
            }

            while (*(v127 - 3) > v125);
            *v126 = v124;
          }

          v77 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v89 = (v9 - 2) >> 1;
        v90 = v89;
        do
        {
          v92 = 8 * v90;
          if (v89 >= (8 * v90) >> 3)
          {
            v93 = (v92 >> 2) | 1;
            v94 = &v8->i8[8 * v93];
            if ((v92 >> 2) + 2 < v9)
            {
              v91 = *(v94 + 1) < *(v94 + 3);
              v94 += 8 * v91;
              if (v91)
              {
                v93 = (v92 >> 2) + 2;
              }
            }

            v95 = &v8->i8[v92];
            if (*(v94 + 1) >= *(v95 + 1))
            {
              v96 = *v95;
              v97 = HIDWORD(*v95);
              do
              {
                v98 = v95;
                v95 = v94;
                *v98 = *v94;
                if (v89 < v93)
                {
                  break;
                }

                v99 = (2 * v93) | 1;
                v94 = &v8->i8[8 * v99];
                v100 = 2 * v93 + 2;
                if (v100 < v9)
                {
                  result = *(v94 + 3);
                  v91 = *(v94 + 1) < result;
                  v94 += 8 * v91;
                  if (v91)
                  {
                    v99 = v100;
                  }
                }

                v93 = v99;
              }

              while (*(v94 + 1) >= v97);
              *v95 = v96;
            }
          }

          v91 = v90-- <= 0;
        }

        while (!v91);
        do
        {
          v101 = 0;
          v102 = v8->i64[0];
          v103 = (v9 - 2) >> 1;
          v104 = v8;
          do
          {
            while (1)
            {
              v109 = &v104[v101];
              v108 = (v109 + 1);
              v110 = (2 * v101) | 1;
              v101 = 2 * v101 + 2;
              if (v101 < v9)
              {
                break;
              }

              v101 = v110;
              *v104 = v108->i64[0];
              v104 = v109 + 1;
              if (v110 > v103)
              {
                goto LABEL_163;
              }
            }

            v105 = *(v109 + 3);
            v106 = *(v109 + 5);
            v107 = (v109 + 2);
            if (v105 >= v106)
            {
              v101 = v110;
            }

            else
            {
              v108 = v107;
            }

            *v104 = v108->i64[0];
            v104 = v108;
          }

          while (v101 <= v103);
LABEL_163:
          a2 = (a2 - 8);
          if (v108 == a2)
          {
            v108->i64[0] = v102;
          }

          else
          {
            v108->i64[0] = a2->i64[0];
            a2->i64[0] = v102;
            v111 = (v108 - v8 + 8) >> 3;
            v91 = v111 < 2;
            v112 = v111 - 2;
            if (!v91)
            {
              v113 = v112 >> 1;
              v114 = (v8 + 8 * v113);
              if (v114->i32[1] < v108->i32[1])
              {
                v115 = v108->i64[0];
                v116 = HIDWORD(v108->i64[0]);
                do
                {
                  v117 = v108;
                  v108 = v114;
                  *v117 = v114->i64[0];
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v8 + 8 * v113);
                }

                while (v114->i32[1] < v116);
                v108->i64[0] = v115;
              }
            }
          }

          v91 = v9-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v10 = &v8->i8[8 * (v9 >> 1)];
    v11 = a2[-1].i32[3];
    if (v9 < 0x81)
    {
      v14 = v8->i32[1];
      if (v14 < *(v10 + 1))
      {
        v15 = *v10;
        if (v11 < v14)
        {
          *v10 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v10 = v8->i64[0];
        v8->i64[0] = v15;
        if (a2[-1].i32[3] < SHIDWORD(v15))
        {
          v8->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v15;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 >= v14)
      {
        goto LABEL_38;
      }

      v18 = v8->i64[0];
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v18;
      if (v8->i32[1] >= *(v10 + 1))
      {
        goto LABEL_38;
      }

      v19 = *v10;
      *v10 = v8->i64[0];
      v8->i64[0] = v19;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v12 = *(v10 + 1);
    if (v12 >= v8->i32[1])
    {
      if (v11 < v12)
      {
        v16 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
        if (*(v10 + 1) < v8->i32[1])
        {
          v17 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      v13 = v8->i64[0];
      if (v11 >= v12)
      {
        v8->i64[0] = *v10;
        *v10 = v13;
        if (a2[-1].i32[3] >= SHIDWORD(v13))
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i64[1];
      }

      else
      {
        v8->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v13;
    }

LABEL_29:
    v20 = (v10 - 8);
    v21 = *(v10 - 1);
    v22 = a2[-1].i32[1];
    if (v21 >= v8->i32[3])
    {
      if (v22 < v21)
      {
        v24 = *v20;
        *v20 = a2[-1].i64[0];
        a2[-1].i64[0] = v24;
        if (*(v10 - 1) < v8->i32[3])
        {
          v25 = v8->i64[1];
          v8->i64[1] = *v20;
          *v20 = v25;
        }
      }
    }

    else
    {
      v23 = v8->i64[1];
      if (v22 >= v21)
      {
        v8->i64[1] = *v20;
        *v20 = v23;
        if (a2[-1].i32[1] >= SHIDWORD(v23))
        {
          goto LABEL_43;
        }

        *v20 = a2[-1].i64[0];
      }

      else
      {
        v8->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v23;
    }

LABEL_43:
    v27 = *(v10 + 3);
    v28 = a2[-2].i32[3];
    if (v27 >= v8[1].i32[1])
    {
      if (v28 < v27)
      {
        v30 = *(v10 + 1);
        *(v10 + 1) = a2[-2].i64[1];
        a2[-2].i64[1] = v30;
        if (*(v10 + 3) < v8[1].i32[1])
        {
          v31 = v8[1].i64[0];
          v8[1].i64[0] = *(v10 + 1);
          *(v10 + 1) = v31;
        }
      }

      goto LABEL_52;
    }

    v29 = v8[1].i64[0];
    if (v28 < v27)
    {
      v8[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v29;
      goto LABEL_52;
    }

    v8[1].i64[0] = *(v10 + 1);
    *(v10 + 1) = v29;
    if (a2[-2].i32[3] < SHIDWORD(v29))
    {
      *(v10 + 1) = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v32 = *(v10 + 1);
    v33 = *(v10 - 1);
    v34 = *(v10 + 3);
    if (v32 >= v33)
    {
      v35 = *v10;
      if (v34 >= v32)
      {
        goto LABEL_62;
      }

      v37 = *(v10 + 1);
      *v10 = v37;
      *(v10 + 1) = v35;
      if (v33 <= SHIDWORD(v37))
      {
        v57 = v8->i64[0];
        v8->i64[0] = v37;
        *v10 = v57;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v38 = *v20;
        *v20 = v37;
        *v10 = v38;
        v39 = v8->i64[0];
        v8->i64[0] = v38;
        *v10 = v39;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v26 = v8->i64[0];
      if (v8[-1].i32[3] < v8->i32[1])
      {
        goto LABEL_64;
      }

      if (a2[-1].i32[3] <= SHIDWORD(v26))
      {
        v60 = &v8->u64[1];
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v61 = v60->i32[1];
          v60 = (v60 + 8);
        }

        while (v61 <= SHIDWORD(v26));
      }

      else
      {
        v58 = v8;
        do
        {
          v8 = &v58->u64[1];
          v59 = v58->i32[3];
          v58 = (v58 + 8);
        }

        while (v59 <= SHIDWORD(v26));
      }

      v62 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v62 = (v63 - 8);
          v64 = v63[-1].i32[3];
          v63 = (v63 - 8);
        }

        while (v64 > SHIDWORD(v26));
      }

      while (v8 < v62)
      {
        v65 = v8->i64[0];
        v8->i64[0] = v62->i64[0];
        v62->i64[0] = v65;
        do
        {
          v66 = v8->i32[3];
          v8 = (v8 + 8);
        }

        while (v66 <= SHIDWORD(v26));
        do
        {
          v67 = v62[-1].i32[3];
          v62 = (v62 - 8);
        }

        while (v67 > SHIDWORD(v26));
      }

      v68 = &v8[-1].u64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v68;
      }

      a4 = 0;
      *v68 = v26;
    }

    else
    {
      v35 = *v20;
      if (v34 >= v32)
      {
        *v20 = *v10;
        *v10 = v35;
        if (v34 < SHIDWORD(v35))
        {
          v40 = *(v10 + 1);
          *v10 = v40;
          *(v10 + 1) = v35;
          v35 = v40;
        }

LABEL_62:
        v41 = v8->i64[0];
        v8->i64[0] = v35;
        *v10 = v41;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v20 = *(v10 + 1);
      *(v10 + 1) = v35;
      v36 = v8->i64[0];
      v8->i64[0] = *v10;
      *v10 = v36;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v26 = v8->i64[0];
LABEL_64:
      v42 = 0;
      do
      {
        v43 = v8->i32[v42 + 3];
        v42 += 2;
      }

      while (v43 < SHIDWORD(v26));
      v44 = &v8->i8[v42 * 4];
      v45 = a2;
      if (v42 == 2)
      {
        v48 = a2;
        while (v44 < v48)
        {
          v46 = &v48[-1].i64[1];
          v49 = v48[-1].i32[3];
          v48 = (v48 - 8);
          if (v49 < SHIDWORD(v26))
          {
            goto LABEL_72;
          }
        }

        v46 = v48;
LABEL_81:
        v55 = v44 - 8;
        if (v44 - 8 == v8)
        {
          goto LABEL_83;
        }

LABEL_82:
        v8->i64[0] = *v55;
        goto LABEL_83;
      }

      do
      {
        v46 = &v45[-1].i64[1];
        v47 = v45[-1].i32[3];
        v45 = (v45 - 8);
      }

      while (v47 >= SHIDWORD(v26));
LABEL_72:
      if (v44 >= v46)
      {
        goto LABEL_81;
      }

      v50 = v44;
      v51 = v46;
      do
      {
        v52 = *v50;
        *v50 = *v51;
        *v51 = v52;
        do
        {
          v53 = *(v50 + 12);
          v50 += 8;
        }

        while (v53 < SHIDWORD(v26));
        do
        {
          v54 = *(v51-- - 1);
        }

        while (v54 >= SHIDWORD(v26));
      }

      while (v50 < v51);
      v55 = (v50 - 8);
      if ((v50 - 8) != v8)
      {
        goto LABEL_82;
      }

LABEL_83:
      *v55 = v26;
      if (v44 < v46)
      {
        goto LABEL_86;
      }

      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>(v8, v55);
      v8 = (v55 + 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>((v55 + 8), a2);
      if (result)
      {
        a2 = v55;
        if (!v56)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v56)
      {
LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,false>(v7, v55, a3, a4 & 1);
        a4 = 0;
        v8 = (v55 + 8);
      }
    }
  }

  v70 = v8->i32[3];
  v71 = a2[-1].i32[3];
  if (v70 >= v8->i32[1])
  {
    if (v71 < v70)
    {
      v118 = v8->i64[1];
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v118;
      if (v8->i32[3] < v8->i32[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v69 = v8->i64[0];
    if (v71 < v70)
    {
LABEL_116:
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v69;
      return result;
    }

    v8->i64[0] = v8->i64[1];
    v8->i64[1] = v69;
    if (a2[-1].i32[3] < SHIDWORD(v69))
    {
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v69;
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*(a2 + 1) >= *(result + 1))
      {
        if (*(a4 + 1) >= SHIDWORD(v8))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *result;
        *result = *a2;
        *a2 = v9;
        if (*(a4 + 1) >= *(a3 + 1))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_12;
    }

LABEL_11:
    if (*(a4 + 1) >= v6)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v7 = *result;
  if (v6 >= v5)
  {
    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *(a3 + 1);
    if (v6 < SHIDWORD(v7))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = HIDWORD(v7);
    }

    goto LABEL_11;
  }

  *result = *a3;
  *a3 = v7;
  if (*(a4 + 1) >= SHIDWORD(v7))
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = *a3;
  *a3 = *a4;
  *a4 = v10;
  if (*(a3 + 1) < *(a2 + 1))
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (*(a2 + 1) < *(result + 1))
    {
      v12 = *result;
      *result = *a2;
      *a2 = v12;
    }
  }

LABEL_16:
  if (*(a5 + 1) < *(a4 + 1))
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        if (*(a2 + 1) < *(result + 1))
        {
          v16 = *result;
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      if (a2[-1].i32[3] >= a1->i32[1])
      {
        return 1;
      }

      v4 = a1->i64[0];
      goto LABEL_13;
    }

LABEL_14:
    v7 = a1->i32[3];
    v8 = a1->i32[1];
    v9 = a1[1].i32[1];
    if (v7 >= v8)
    {
      if (v9 < v7)
      {
        v18 = a1->i64[1];
        v17 = a1[1].i64[0];
        a1->i64[1] = v17;
        a1[1].i64[0] = v18;
        if (v8 > SHIDWORD(v17))
        {
          v19 = a1->i64[0];
          a1->i64[0] = v17;
          a1->i64[1] = v19;
        }
      }
    }

    else
    {
      v10 = a1->i64[0];
      if (v9 >= v7)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v10;
        if (v9 >= SHIDWORD(v10))
        {
          goto LABEL_34;
        }

        a1->i64[1] = a1[1].i64[0];
      }

      else
      {
        a1->i64[0] = a1[1].i64[0];
      }

      a1[1].i64[0] = v10;
    }

LABEL_34:
    v23 = (a1 + 24);
    if (&a1[1].u64[1] == a2)
    {
      return 1;
    }

    v24 = 0;
    v25 = 0;
    v26 = a1 + 1;
    while (v23->i32[1] >= v26->i32[1])
    {
LABEL_37:
      v26 = v23;
      v24 += 8;
      v23 = (v23 + 8);
      if (v23 == a2)
      {
        return 1;
      }
    }

    v27 = v23->i64[0];
    v28 = HIDWORD(v23->i64[0]);
    v29 = v24;
    do
    {
      *(&a1[1].i64[1] + v29) = *(a1[1].i64 + v29);
      if (v29 == -16)
      {
        a1->i64[0] = v27;
        if (++v25 != 8)
        {
          goto LABEL_37;
        }

        return &v23->u64[1] == a2;
      }

      v30 = *(&a1->i32[3] + v29);
      v29 -= 8;
    }

    while (v30 > v28);
    *(&a1[1].i64[1] + v29) = v27;
    if (++v25 != 8)
    {
      goto LABEL_37;
    }

    return &v23->u64[1] == a2;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::FailedLiteralProbingRound(operations_research::sat::ProbingOptions,operations_research::sat::Model *)::SavedNextLiteral *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1->i32[3];
    v12 = a1->i32[1];
    LODWORD(v13) = a1[1].i32[1];
    if (v11 >= v12)
    {
      if (v13 < v11)
      {
        v20 = a1->u64[1];
        v21 = a1[1].i64[0];
        a1->i64[1] = v21;
        a1[1].i64[0] = v20;
        v13 = HIDWORD(v20);
        if (v12 > SHIDWORD(v21))
        {
          v22 = a1->i64[0];
          a1->i64[0] = v21;
          a1->i64[1] = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = a1->i64[0];
    v15 = HIDWORD(a1->i64[0]);
    if (v13 >= v11)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v14;
      if (v13 >= v15)
      {
        goto LABEL_48;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v14;
    LODWORD(v13) = v15;
LABEL_48:
    if (a2[-1].i32[3] >= v13)
    {
      return 1;
    }

    v31 = a1[1].i64[0];
    a1[1].i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v31;
    if (a1[1].i32[1] >= a1->i32[3])
    {
      return 1;
    }

    v33 = a1->i64[1];
    v32 = a1[1].i64[0];
    a1->i64[1] = v32;
    a1[1].i64[0] = v33;
    if (a1->i32[1] <= SHIDWORD(v32))
    {
      return 1;
    }

    v34 = a1->i64[0];
    a1->i64[0] = v32;
    a1->i64[1] = v34;
    return 1;
  }

  v5 = a1->i32[3];
  v6 = a2[-1].i32[3];
  if (v5 >= a1->i32[1])
  {
    if (v6 >= v5)
    {
      return 1;
    }

    v16 = a1->i64[1];
    a1->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v16;
    if (a1->i32[3] >= a1->i32[1])
    {
      return 1;
    }

    *a1 = vextq_s8(*a1, *a1, 8uLL);
    return 1;
  }

  else
  {
    v4 = a1->i64[0];
    if (v6 < v5)
    {
LABEL_13:
      a1->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v4;
      return 1;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v4;
    if (a2[-1].i32[3] >= SHIDWORD(v4))
    {
      return 1;
    }

    a1->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v4;
    return 1;
  }
}

operations_research::sat::PseudoCosts *operations_research::sat::PseudoCosts::PseudoCosts(operations_research::sat::PseudoCosts *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
  *(this + 11) = 0u;
  *(this + 4) = v4;
  *(this + 10) = -1;
  *(this + 3) = xmmword_23CE4D810;
  *(this + 8) = 0xFFF0000000000000;
  *(this + 72) = 0;
  *(this + 5) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  v5 = *(*(this + 1) + 48) - *(*(this + 1) + 40);
  v6 = (v5 >> 3);
  if ((v5 >> 3))
  {
    std::vector<std::array<long long,2ul>>::__append(this + 176, v6);
  }

  std::vector<BOOL>::resize(this + 128, v6, 0);
  v28 = 0;
  v7 = *(this + 19);
  v8 = (*(this + 20) - v7) >> 3;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(this + 20) = v7 + 8 * v6;
    }
  }

  else
  {
    std::vector<double>::__append(this + 152, v6 - v8, &v28);
  }

  v9 = *(a2 + 3);
  if (v9 > 1)
  {
    v12 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X11 >> 12)) & v9;
    v22 = *(_X11 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_13:
    v24 = *(a2 + 6);
    while (1)
    {
      v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v9;
      if (*(v24 + 16 * v25) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_16:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v12 += 8;
          v21 = (v12 + v21) & v9;
          v22 = *(_X11 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_13;
          }
        }

        return this;
      }
    }

    v10 = (v24 + 16 * v25);
    if (!(_X11 + v25))
    {
      return this;
    }
  }

  else
  {
    if (*(a2 + 4) < 2uLL)
    {
      return this;
    }

    v11 = *(a2 + 5);
    v10 = a2 + 40;
    if (v11 != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      return this;
    }
  }

  v26 = *(v10 + 1);
  if (v26)
  {
    *(this + 10) = *(v26 + 16);
  }

  return this;
}

void sub_23CCB12A4(_Unwind_Exception *exception_object)
{
  v7 = v1[28];
  if (v7)
  {
    v1[29] = v7;
    operator delete(v7);
    v8 = v1[25];
    if (!v8)
    {
LABEL_3:
      v9 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = v1[25];
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v1[26] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_4:
    v10 = *v4;
    if (!*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[23] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_5:
    v11 = *v2;
    if (!*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[20] = v10;
  operator delete(v10);
  v11 = *v2;
  if (!*v2)
  {
LABEL_6:
    v12 = v1[13];
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v11);
  v12 = v1[13];
  if (!v12)
  {
LABEL_7:
    v13 = *v5;
    if (!*v5)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[14] = v12;
  operator delete(v12);
  v13 = *v5;
  if (!*v5)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  v1[11] = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PseudoCosts::GetBoundChanges(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v9 = *(a1 + 16);
  v10 = v9[14];
  v11 = -858993459 * ((v9[15] - v10) >> 3);
  v12 = (v10 + 40 * a2);
  if (a2 >= v11)
  {
    v13 = v9 + 9;
  }

  else
  {
    v13 = v12;
  }

  v16 = *v13;
  v15 = v13 + 1;
  v14 = v16;
  if (v16)
  {
    v15 = *v15;
  }

  if ((v14 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v32 = a2;
    v17 = &v15[2 * (v14 >> 1)];
    do
    {
      v18 = *v15;
      v19 = v15[1];
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v18;
      *(&v33 + 1) = v19 - *(*(*(a1 + 8) + 40) + 8 * v18);
      if (v18 < a4)
      {
        v20 = v19;
        if (v19 < 0x8000000000000003)
        {
          v20 = -INFINITY;
        }

        if (v19 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v20 = INFINITY;
        }

        v34 = fmax(v20 - *(a3 + 8 * v18), 0.0);
      }

      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      v15 += 2;
    }

    while (v15 != v17);
    v9 = *(a1 + 16);
    a2 = v32;
  }

  v21 = v9[22];
  v22 = -858993459 * ((v9[23] - v21) >> 3);
  v23 = v9 + 17;
  v24 = (v21 + 40 * a2);
  if (a2 >= v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v28 = *v25;
  v27 = v25 + 1;
  v26 = v28;
  if (v28)
  {
    v27 = *v27;
  }

  if ((v26 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v29 = &v27[2 * (v26 >> 1)];
    do
    {
      v30 = *v27;
      v31 = v27[1];
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v30;
      *(&v33 + 1) = v31 - *(*(*(a1 + 8) + 40) + 8 * v30);
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      *(&v33 + 1) = 0;
      v34 = 0.0;
      LODWORD(v33) = v30 ^ 1;
      *(&v33 + 1) = -v31 - *(*(*(a1 + 8) + 40) + ((v30 ^ 1) << 32 >> 29));
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a5, &v33);
      v27 += 2;
    }

    while (v27 != v29);
  }
}

void sub_23CCB156C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::PseudoCosts::BeforeTakingDecision(uint64_t a1, int a2, double result)
{
  v5 = *(a1 + 40);
  if (v5 != -1)
  {
    v21 = v3;
    v22 = v4;
    v7 = *(*(a1 + 8) + 40);
    v8 = 8 * v5;
    v9 = *(v7 + v8);
    v10 = -*(v7 + (v8 ^ 8));
    v11 = *(a1 + 32);
    v12 = *v11;
    v13 = v11[1];
    v14 = 0.0;
    for (i = 1; v12 != v13; v14 = v14 + *(v16 + 24320))
    {
      v17 = *v12++;
      v16 = v17;
      if (!*(v17 + 24316))
      {
        i = 0;
      }
    }

    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v14;
    *(a1 + 72) = i;
    operations_research::sat::PseudoCosts::GetBoundChanges(a1, a2, **(a1 + 24), (*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3, &v19);
    v18 = *(a1 + 80);
    if (v18)
    {
      *(a1 + 88) = v18;
      operator delete(v18);
    }

    result = *&v19;
    *(a1 + 80) = v19;
    *(a1 + 96) = v20;
  }

  return result;
}

void operations_research::sat::PseudoCosts::UpdateBoolPseudoCosts(uint64_t a1, int *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 < 0x8000000000000003)
  {
    v4 = -INFINITY;
  }

  if (a4 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v4 = INFINITY;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4 / a3;
    v8 = 4 * a3;
    do
    {
      v10 = *a2;
      v9 = *(a1 + 224);
      v11 = (*(a1 + 232) - v9) >> 4;
      if (*a2 >= v11)
      {
        v12 = v10 + 1;
        if (v12 > v11)
        {
          std::vector<std::array<long long,2ul>>::__append(a1 + 224, v12 - v11);
          v9 = *(a1 + 224);
        }

        else if (v12 < v11)
        {
          *(a1 + 232) = v9 + 16 * v12;
        }
      }

      operations_research::sat::IncrementalAverage::AddData((v9 + 16 * v10), v7);
      ++a2;
      v8 -= 4;
    }

    while (v8);
  }
}

void operations_research::sat::PseudoCosts::AfterTakingDecision(operations_research::sat::PseudoCosts *this, int a2)
{
  v2 = *(this + 10);
  if (v2 == -1)
  {
    return;
  }

  v3 = a2;
  v5 = *(*(this + 1) + 40);
  v6 = 8 * v2;
  v7 = *(v5 + v6);
  v8 = *(v5 + (v6 ^ 8));
  v9 = *(this + 4);
  v11 = *v9;
  v10 = v9[1];
  LOBYTE(v5) = *(this + 72);
  if (v11 == v10)
  {
    v12 = 0.0;
    if (*(this + 72))
    {
      goto LABEL_12;
    }
  }

  else if (*(this + 72))
  {
    if (v10 - 1 == v11)
    {
      v12 = 0.0;
      v13 = v11;
    }

    else
    {
      v14 = (((v10 - 1) - v11) >> 3) + 1;
      v13 = &v11[v14 & 0x3FFFFFFFFFFFFFFELL];
      v15 = v11 + 1;
      v12 = 0.0;
      v16 = v14 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v12 = v12 + *(*(v15 - 1) + 24320) + *(*v15 + 24320);
        v15 += 2;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_12:
        v18 = v12 - *(this + 8);
        v19 = *(this + 6);
        if (v18 <= 0.0)
        {
          v22 = (v7 - v19);
          if (v7 - v19 < 0x8000000000000003)
          {
            v22 = -INFINITY;
          }

          if (v7 - v19 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v18 = v22;
          }

          else
          {
            v18 = INFINITY;
          }

          if (!a2)
          {
LABEL_14:
            v20 = *(this + 10);
            v21 = *(this + 11);
            if (v20 == v21)
            {
              goto LABEL_40;
            }

            do
            {
LABEL_35:
              v27 = v20[2];
              if (v27 >= 0.000001)
              {
                v28 = *v20;
                v26 = *(this + 25);
                v29 = (*(this + 26) - v26) >> 4;
                if (*v20 >= v29)
                {
                  v30 = v28 + 1;
                  if (v30 > v29)
                  {
                    std::vector<std::array<long long,2ul>>::__append(this + 200, v30 - v29);
                    v26 = *(this + 25);
                  }

                  else if (v30 < v29)
                  {
                    *(this + 26) = v26 + 16 * v30;
                  }
                }

                operations_research::sat::IncrementalAverage::AddData((v26 + 16 * v28), v18 / v27);
              }

              v20 += 3;
            }

            while (v20 != v21);
            goto LABEL_40;
          }
        }

        else if (!a2)
        {
          goto LABEL_14;
        }

        v23 = *(this + 7);
        v24 = v23;
        v25 = -INFINITY;
        if (v23 < 0x8000000000000003)
        {
          v24 = -INFINITY;
        }

        if (v23 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v24 = INFINITY;
        }

        if (v19 >= 0x8000000000000003)
        {
          v25 = v19;
        }

        if (v19 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v25 = INFINITY;
        }

        v18 = v24 - v25 + 1.0;
        v20 = *(this + 10);
        v21 = *(this + 11);
        if (v20 == v21)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }
    }

    do
    {
      v17 = *v13++;
      v12 = v12 + *(v17 + 24320);
    }

    while (v13 != v10);
    goto LABEL_12;
  }

LABEL_40:
  if ((v3 & 1) == 0)
  {
    v31 = *(this + 7) + v8 + v7 - *(this + 6);
    if (v31)
    {
      v32 = *(this + 10);
      v33 = *(this + 11);
      if (v32 != v33)
      {
        v34 = v31;
        if (v31 < 0x8000000000000003)
        {
          v34 = -INFINITY;
        }

        if (v31 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v35 = v34;
        }

        else
        {
          v35 = INFINITY;
        }

        do
        {
          v36 = *(v32 + 1);
          if (v36)
          {
            v37 = *v32;
            v38 = *(this + 22);
            v39 = *v32 | 1;
            if (*v32 >= ((*(this + 23) - v38) >> 4))
            {
              v40 = v39 + 1;
              std::vector<BOOL>::resize(this + 128, v40, 0);
              *&v55 = 0;
              v41 = *(this + 19);
              v42 = (*(this + 20) - v41) >> 3;
              if (v40 <= v42)
              {
                if (v40 < v42)
                {
                  *(this + 20) = v41 + 8 * v40;
                }
              }

              else
              {
                std::vector<double>::__append(this + 152, v40 - v42, &v55);
              }

              v55 = 0uLL;
              v38 = *(this + 22);
              v43 = (*(this + 23) - v38) >> 4;
              if (v40 <= v43)
              {
                if (v40 < v43)
                {
                  *(this + 23) = v38 + 16 * v40;
                }
              }

              else
              {
                std::vector<operations_research::sat::IncrementalAverage>::__append(this + 176, v40 - v43, &v55);
                v38 = *(this + 22);
              }
            }

            v44 = v36;
            if (v36 < 0x8000000000000003)
            {
              v44 = -INFINITY;
            }

            if (v36 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v44 = INFINITY;
            }

            operations_research::sat::IncrementalAverage::AddData((v38 + 16 * v37), v35 / v44);
            v54 = v37 & 0xFFFFFFFE;
            v45 = *(this + 22);
            v46 = (v45 + 16 * (v37 & 0xFFFFFFFE));
            v47 = v45 + 16 * v39;
            if (*(v47 + 8) + *(v46 + 1) >= *(*this + 608))
            {
              v56 = v37 & 0xFFFFFFFE;
              v48 = (*(this + 23) - v45) >> 4;
              if ((v37 & 0xFFFFFFFE) >= v48)
              {
                operations_research::sat::PseudoCosts::AfterTakingDecision(&v56, v48);
              }

              v49 = *v46;
              v56 = v37 | 1;
              if (v39 >= v48)
              {
                operations_research::sat::PseudoCosts::AfterTakingDecision(&v56, v48);
              }

              *(*(this + 19) + 8 * (v37 & 0xFFFFFFFE)) = fmax(v49, 0.000001) * fmax(*v47, 0.000001);
              v50 = *(this + 16);
              v51 = v37 >> 6;
              v52 = 1 << (v37 & 0x3E);
              v53 = *(v50 + 8 * v51);
              if ((v53 & v52) == 0)
              {
                *(v50 + 8 * v51) = v53 | v52;
                std::vector<int>::push_back[abi:ne200100](this + 104, &v54);
              }
            }
          }

          v32 += 6;
        }

        while (v32 != v33);
      }
    }
  }
}

uint64_t operations_research::sat::PseudoCosts::GetBestDecisionVar(operations_research::sat::PseudoCosts *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(*(this + 1) + 40);
  result = 0xFFFFFFFFLL;
  v6 = -INFINITY;
  do
  {
    if (*(v4 + 8 * *v1) < -*(v4 + ((8 * *v1) ^ 8)) && *(*(this + 19) + 8 * *v1) > v6)
    {
      v6 = *(*(this + 19) + 8 * *v1);
      result = *v1;
    }

    ++v1;
  }

  while (v1 != v2);
  if (result != -1)
  {
    v11 = result;
    v8 = this + 176;
    v7 = *(this + 22);
    v9 = (*(v8 + 1) - v7) >> 4;
    if (result >= v9)
    {
      operations_research::sat::PseudoCosts::AfterTakingDecision(&v11, v9);
    }

    v10 = *(v7 + 16 * result);
    v11 = result ^ 1;
    if ((result ^ 1) >= v9)
    {
      operations_research::sat::PseudoCosts::AfterTakingDecision(&v11, v9);
    }

    if (v10 < *(v7 + 16 * (result ^ 1)))
    {
      return result ^ 1;
    }
  }

  return result;
}

void std::vector<operations_research::sat::IncrementalAverage>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 16 * a2;
      v14 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v13 -= 16;
      }

      while (v13);
      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 16 * v6;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = 16 * a2;
      v11 = (16 * v6);
      v12 = v15 + 16 * a2;
      do
      {
        *v11++ = *a3;
        v10 -= 16;
      }

      while (v10);
    }

    else
    {
      v12 = 16 * v6;
    }

    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v15 - v17;
    memcpy((v15 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v2, a2, 58);
}

unint64_t operations_research::RationalApproximation(operations_research *this, double a2, double a3)
{
  v3 = fabs(a2);
  v4 = vcvtmd_s64_f64(v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (a2 >= 0.0)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    v7 = v4;
    v8 = v3;
    v9 = 1;
    do
    {
      v10 = v4;
      v11 = v6;
      if (vabdd_f64(v3 * v6, v4) <= v3 * v6 * a3)
      {
        break;
      }

      v8 = 1.0 / (v8 - v7);
      v7 = vcvtmd_s64_f64(v8);
      v4 = v9 + v4 * v7;
      v6 = v5 + v6 * v7;
      v9 = v10;
      v5 = v11;
    }

    while (((v4 | v6) & 0x8000000000000000) == 0);
    if (a2 >= 0.0)
    {
      return v10;
    }

    else
    {
      return -v10;
    }
  }
}

void operations_research::sat::RestartPolicy::Reset(operations_research::sat::RestartPolicy *this)
{
  *(this + 4) = 0;
  *(this + 7) = 0;
  v2 = *this;
  v3 = *(*this + 228);
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 14) = 0;
  *(this + 15) = *(v2 + 440);
  *(this + 16) = *(v2 + 516);
  *(this + 21) = 0;
  *(this + 68) = 0;
  *(this + 76) = 0;
  v4 = *(this + 12);
  v5 = *(this + 13);
  *(this + 16) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(this + 13);
      v4 = (*(this + 12) + 8);
      *(this + 12) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 512;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 1024;
  }

  *(this + 15) = v8;
LABEL_8:
  *(this + 34) = *(*this + 516);
  *(this + 148) = 0;
  *(this + 140) = 0;
  *(this + 39) = 0;
  v9 = *(this + 21);
  v10 = *(this + 22);
  *(this + 25) = 0;
  v11 = (v10 - v9) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v9);
      v12 = *(this + 22);
      v9 = (*(this + 21) + 8);
      *(this + 21) = v9;
      v11 = (v12 - v9) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 512;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = 1024;
  }

  *(this + 24) = v13;
LABEL_15:
  *(this + 52) = *(*this + 544);
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 57) = 0;
  v14 = *(this + 30);
  v15 = *(this + 31);
  *(this + 34) = 0;
  v16 = (v15 - v14) >> 3;
  if (v16 >= 3)
  {
    do
    {
      operator delete(*v14);
      v17 = *(this + 31);
      v14 = (*(this + 30) + 8);
      *(this + 30) = v14;
      v16 = (v17 - v14) >> 3;
    }

    while (v16 > 2);
  }

  if (v16 == 1)
  {
    v18 = 512;
    goto LABEL_21;
  }

  if (v16 == 2)
  {
    v18 = 1024;
LABEL_21:
    *(this + 33) = v18;
  }

  *(this + 5) = *(this + 4);
  v19 = *this;
  if (*(*this + 56) < 1)
  {
    goto LABEL_26;
  }

  v20 = 0;
  do
  {
    LODWORD(__p) = *(*(v19 + 64) + 4 * v20);
    std::vector<int>::push_back[abi:ne200100](this + 32, &__p);
    ++v20;
    v19 = *this;
  }

  while (v20 < *(*this + 56));
  v21 = *(this + 4);
  v22 = *(this + 5);
  if (v21 == v22)
  {
LABEL_26:
    v23 = *(v19 + 168);
    if ((v23 & 3) != 0)
    {
      explicit = v23 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      explicit = atomic_load_explicit(&qword_2810BD798, memory_order_acquire);
      if (!explicit)
      {
        explicit = google::protobuf::internal::LazyString::Init(&operations_research::sat::SatParameters::Impl_::_i_give_permission_to_break_this_code_default_default_restart_algorithms_);
      }
    }

    v25 = *(explicit + 23);
    if ((v25 & 0x80u) == 0)
    {
      v26 = explicit;
    }

    else
    {
      v26 = *explicit;
    }

    if ((v25 & 0x80u) != 0)
    {
      v25 = *(explicit + 8);
    }

    v39[0] = v26;
    v39[1] = v25;
    v40 = 44;
    absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string>,std::string,false>::operator()(v39, &__p);
    v28 = __p;
    v29 = v42;
    if (__p != v42)
    {
      do
      {
        while (1)
        {
          v38 = 0;
          v30 = *(v28 + 23);
          if ((v30 & 0x8000000000000000) != 0)
          {
            v31 = *v28;
            v30 = v28[1];
          }

          else
          {
            v31 = v28;
          }

          restarted = operations_research::sat::SatParameters_RestartAlgorithm_descriptor(v27);
          LODWORD(v39[0]) = 0;
          if (!google::protobuf::internal::ParseNamedEnum(restarted, v31, v30, v39, v33))
          {
            break;
          }

          v38 = v39[0];
          std::vector<int>::push_back[abi:ne200100](this + 32, &v38);
          v28 += 3;
          if (v28 == v29)
          {
            goto LABEL_43;
          }
        }

        absl::lts_20240722::log_internal::LogMessage::LogMessage(v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/restart.cc", 75);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "Couldn't parse the RestartAlgorithm name: '", 0x2BuLL);
        v34 = absl::lts_20240722::log_internal::LogMessage::operator<<(v39, v28);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "'.", 2uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v39);
        v28 += 3;
      }

      while (v28 != v29);
LABEL_43:
      v28 = __p;
    }

    if (v28)
    {
      v35 = v42;
      v36 = v28;
      if (v42 != v28)
      {
        do
        {
          v37 = *(v35 - 1);
          v35 -= 3;
          if (v37 < 0)
          {
            operator delete(*v35);
          }
        }

        while (v35 != v28);
        v36 = __p;
      }

      v42 = v28;
      operator delete(v36);
    }

    v21 = *(this + 4);
    v22 = *(this + 5);
  }

  if (v21 == v22)
  {
    std::vector<int>::push_back[abi:ne200100](this + 32, operations_research::sat::SatParameters::NO_RESTART);
  }
}

void sub_23CCB2270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CCB2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CCB22A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::RestartPolicy::ShouldRestart(operations_research::sat::RestartPolicy *this)
{
  result = 0;
  v3 = *(this + 7);
  v4 = *(this + 4);
  v5 = (*(this + 5) - v4) >> 2;
  v6 = *(v4 + 4 * (v3 % v5));
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = *(this + 25);
      if (*(this + 34) == v11)
      {
        v12 = *(this + 35);
        v13 = 0.0;
        v14 = 0.0;
        if (v12)
        {
          v14 = *(this + 18) / v12;
        }

        if (v11)
        {
          v13 = *(this + 19) / v11;
        }

        if (v14 < *(*this + 552) * v13)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }

    if (v6 != 4)
    {
      return result;
    }

    if (*(this + 15))
    {
      return 0;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return result;
      }

      v7 = *(this + 16);
      if (*(this + 16) == v7)
      {
        v8 = *(this + 17);
        v9 = 0.0;
        v10 = 0.0;
        if (v8)
        {
          v10 = *(this + 9) / v8;
        }

        if (v7)
        {
          v9 = *(this + 10) / v7;
        }

        if (v10 >= *(*this + 520) * v9)
        {
          return 0;
        }

        goto LABEL_25;
      }

      return 0;
    }

    if (*(this + 15))
    {
      return 0;
    }

    ++*(this + 14);
  }

LABEL_25:
  v15 = *(this + 5);
  ++*(this + 4);
  if (!v15)
  {
    v16 = v3 + 1;
    *(this + 7) = v16;
    v17 = *(this + 1);
    v18 = *(this + 6) + (*(*this + 232) * *(this + 6));
    *(this + 5) = v18;
    *(this + 6) = v18;
    *(v17 + 280) = *(v4 + 4 * (v16 % v5)) == 1;
  }

  *(this + 10) = 0;
  v19 = *(this + 12);
  v20 = *(this + 13);
  *(this + 16) = 0;
  v21 = (v20 - v19) >> 3;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v19);
      v22 = *(this + 13);
      v19 = (*(this + 12) + 8);
      *(this + 12) = v19;
      v21 = (v22 - v19) >> 3;
    }

    while (v21 > 2);
  }

  if (v21 == 1)
  {
    v23 = 512;
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_34;
    }

    v23 = 1024;
  }

  *(this + 15) = v23;
LABEL_34:
  *(this + 19) = 0;
  v24 = *(this + 21);
  v25 = *(this + 22);
  *(this + 25) = 0;
  v26 = (v25 - v24) >> 3;
  if (v26 >= 3)
  {
    do
    {
      operator delete(*v24);
      v27 = *(this + 22);
      v24 = (*(this + 21) + 8);
      *(this + 21) = v24;
      v26 = (v27 - v24) >> 3;
    }

    while (v26 > 2);
  }

  if (v26 == 1)
  {
    v28 = 512;
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_41;
    }

    v28 = 1024;
  }

  *(this + 24) = v28;
LABEL_41:
  v29 = *(*this + 440);
  *(this + 15) = v29;
  result = 1;
  if (*(*(this + 4) + 4 * (*(this + 7) % ((*(this + 5) - *(this + 4)) >> 2))) == 1)
  {
    v30 = *(this + 14) + 1;
    while (v30 >= 3)
    {
      v31 = v30 + 1;
      v32 = __clz(v31);
      v30 = v31 - (1 << (v32 ^ 0x3F));
      if (!v30)
      {
        *(this + 15) = (1 << (62 - v32)) * v29;
        return 1;
      }
    }

    *(this + 15) = v29;
    return 1;
  }

  return result;
}

void operations_research::sat::RestartPolicy::OnConflict(operations_research::sat::RestartPolicy *this, int a2, int a3, int a4)
{
  v8 = *(this + 15);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v10 < 0 == v9)
  {
    *(this + 15) = v10;
  }

  v11 = *(this + 5);
  v9 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v12 < 0 == v9)
  {
    *(this + 5) = v12;
  }

  v13 = *(this + 31);
  v14 = *(this + 30);
  ++*(this + 53);
  v46 = a2;
  *(this + 216) = vaddq_f64(*(this + 216), vdupq_lane_s64(COERCE__INT64(a2), 0));
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((v13 - v14) << 7) - 1;
  }

  v17 = *(this + 33);
  v16 = *(this + 34);
  v18 = v16 + v17;
  if (v15 == v16 + v17)
  {
    std::deque<int>::__add_back_capacity(this + 29);
    v14 = *(this + 30);
    v17 = *(this + 33);
    v16 = *(this + 34);
    v18 = v17 + v16;
  }

  (*(v14 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)))[v18 & 0x3FF] = a2;
  *(this + 34) = v16 + 1;
  if (*(this + 52) < v16 + 1)
  {
    *(this + 28) = *(this + 28) - (*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)))[v17 & 0x3FF];
    v19 = v17 + 1;
    *(this + 33) = v19;
    *(this + 34) = v16;
    if (v19 >= 0x800)
    {
      operator delete(*v14);
      *(this + 30) += 8;
      *(this + 33) -= 1024;
    }
  }

  v20 = *(this + 13);
  v21 = *(this + 12);
  ++*(this + 17);
  *(this + 72) = vaddq_f64(*(this + 72), vdupq_lane_s64(COERCE__INT64(a3), 0));
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = ((v20 - v21) << 7) - 1;
  }

  v24 = *(this + 15);
  v23 = *(this + 16);
  v25 = v23 + v24;
  if (v22 == v23 + v24)
  {
    std::deque<int>::__add_back_capacity(this + 11);
    v21 = *(this + 12);
    v24 = *(this + 15);
    v23 = *(this + 16);
    v25 = v24 + v23;
  }

  (*(v21 + ((v25 >> 7) & 0x1FFFFFFFFFFFFF8)))[v25 & 0x3FF] = a3;
  *(this + 16) = v23 + 1;
  if (*(this + 16) < v23 + 1)
  {
    *(this + 10) = *(this + 10) - (*(v21 + ((v24 >> 7) & 0x1FFFFFFFFFFFFF8)))[v24 & 0x3FF];
    v26 = v24 + 1;
    *(this + 15) = v26;
    *(this + 16) = v23;
    if (v26 >= 0x800)
    {
      operator delete(*v21);
      *(this + 12) += 8;
      *(this + 15) -= 1024;
    }
  }

  v27 = *(this + 22);
  v28 = *(this + 21);
  ++*(this + 35);
  *(this + 9) = vaddq_f64(*(this + 9), vdupq_lane_s64(COERCE__INT64(a4), 0));
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = ((v27 - v28) << 7) - 1;
  }

  v31 = *(this + 24);
  v30 = *(this + 25);
  v32 = v30 + v31;
  if (v29 == v30 + v31)
  {
    std::deque<int>::__add_back_capacity(this + 20);
    v28 = *(this + 21);
    v31 = *(this + 24);
    v30 = *(this + 25);
    v32 = v31 + v30;
  }

  (*(v28 + ((v32 >> 7) & 0x1FFFFFFFFFFFFF8)))[v32 & 0x3FF] = a4;
  *(this + 25) = v30 + 1;
  if (*(this + 34) < v30 + 1)
  {
    *(this + 19) = *(this + 19) - (*(v28 + ((v31 >> 7) & 0x1FFFFFFFFFFFFF8)))[v31 & 0x3FF];
    v33 = v31 + 1;
    *(this + 24) = v33;
    *(this + 25) = v30;
    if (v33 >= 0x800)
    {
      operator delete(*v28);
      *(this + 21) += 8;
      *(this + 24) -= 1024;
    }
  }

  if (*(*this + 254) != 1)
  {
    return;
  }

  if (*(this + 34) != *(this + 50))
  {
    return;
  }

  if (*(this + 16) != *(this + 32))
  {
    return;
  }

  v34 = *(this + 34);
  if (*(this + 52) != v34)
  {
    return;
  }

  v35 = *(*this + 528);
  if (v34)
  {
    if (v35 * (*(this + 28) / v34) >= v46)
    {
      return;
    }
  }

  else if (v35 * 0.0 >= v46)
  {
    return;
  }

  *(this + 10) = 0;
  v36 = *(this + 12);
  v37 = *(this + 13);
  *(this + 16) = 0;
  v38 = (v37 - v36) >> 3;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v36);
      v39 = *(this + 13);
      v36 = (*(this + 12) + 8);
      *(this + 12) = v36;
      v38 = (v39 - v36) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v40 = 512;
    goto LABEL_43;
  }

  if (v38 == 2)
  {
    v40 = 1024;
LABEL_43:
    *(this + 15) = v40;
  }

  *(this + 19) = 0;
  v41 = *(this + 21);
  v42 = *(this + 22);
  *(this + 25) = 0;
  v43 = (v42 - v41) >> 3;
  if (v43 >= 3)
  {
    do
    {
      operator delete(*v41);
      v44 = *(this + 22);
      v41 = (*(this + 21) + 8);
      *(this + 21) = v41;
      v43 = (v44 - v41) >> 3;
    }

    while (v43 > 2);
  }

  if (v43 == 1)
  {
    v45 = 512;
  }

  else
  {
    if (v43 != 2)
    {
      return;
    }

    v45 = 1024;
  }

  *(this + 24) = v45;
}

void operations_research::sat::RestartPolicy::InfoString(operations_research::sat::RestartPolicy *this@<X0>, std::string *a2@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  *&v43 = *(this + 4);
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("  num restarts: %d\n", 19, &v43, 1uLL, &v39);
  operations_research::ProtoEnumToString<operations_research::sat::SatParameters_RestartAlgorithm>(*(*(this + 4) + 4 * (*(this + 7) % ((*(this + 5) - *(this + 4)) >> 2))), &v36);
  v43 = COERCE_DOUBLE(&v36);
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("  current_strategy: %s\n", 23, &v43, 1uLL, v37);
  if ((v38 & 0x80u) == 0)
  {
    v4 = v37;
  }

  else
  {
    v4 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v5 = v38;
  }

  else
  {
    v5 = v37[1];
  }

  v6 = std::string::append(&v39, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(this + 17);
  if (v8)
  {
    v9 = *(this + 9) / v8;
    v10 = *(this + 16);
    if (v10 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 0.0;
  v10 = *(this + 16);
  if (v10 != 0.0)
  {
LABEL_9:
    v10 = *(this + 10) / *&v10;
  }

LABEL_10:
  v43 = v9;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v45 = v10;
  v46 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict decision level avg: %f window: %f\n", 45, &v43, 2uLL, v34);
  if ((v35 & 0x80u) == 0)
  {
    v11 = v34;
  }

  else
  {
    v11 = v34[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v12 = v35;
  }

  else
  {
    v12 = v34[1];
  }

  v13 = std::string::append(&v40, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(this + 35);
  if (v15)
  {
    v16 = *(this + 18) / v15;
    v17 = *(this + 25);
    if (v17 == 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = 0.0;
  v17 = *(this + 25);
  if (v17 != 0.0)
  {
LABEL_18:
    v17 = *(this + 19) / *&v17;
  }

LABEL_19:
  v43 = v16;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v45 = v17;
  v46 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict lbd avg: %f window: %f\n", 34, &v43, 2uLL, v32);
  if ((v33 & 0x80u) == 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v19 = v33;
  }

  else
  {
    v19 = v32[1];
  }

  v20 = std::string::append(&v41, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(this + 53);
  if (v22)
  {
    v23 = *(this + 27) / v22;
    v24 = *(this + 34);
    if (v24 == 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = 0.0;
  v24 = *(this + 34);
  if (v24 != 0.0)
  {
LABEL_27:
    v24 = *(this + 28) / *&v24;
  }

LABEL_28:
  v43 = v23;
  v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v45 = v24;
  v46 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  conflict trail size avg: %f window: %f\n", 41, &v43, 2uLL, __p);
  if ((v31 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v26 = v31;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = std::string::append(&v42, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v32[0]);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

LABEL_53:
  operator delete(v41.__r_.__value_.__l.__data_);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_39:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_55;
  }

LABEL_54:
  operator delete(v34[0]);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_56;
  }

LABEL_55:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_41:
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_57:
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_58;
  }

LABEL_56:
  operator delete(v37[0]);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_42:
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_43:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_58:
  operator delete(v39.__r_.__value_.__l.__data_);
  v29 = *MEMORY[0x277D85DE8];
}

void sub_23CCB2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v50 - 73) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 96));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a15);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v50 - 128));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a21);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a44 & 0x80000000) == 0)
    {
LABEL_20:
      _Unwind_Resume(exception_object);
    }

LABEL_19:
    operator delete(a39);
    _Unwind_Resume(exception_object);
  }

LABEL_18:
  operator delete(a27);
  if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void operations_research::ProtoEnumToString<operations_research::sat::SatParameters_RestartAlgorithm>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v22[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  restarted = operations_research::sat::SatParameters_RestartAlgorithm_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(restarted, v2);
  if (!ValueByNumber)
  {
    v22[0] = "Invalid enum value of: ";
    v22[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v21[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v18);
    v21[1] = v8;
    v20[0] = " for enum type: ";
    v20[1] = 16;
    v9 = *(operations_research::sat::SatParameters_RestartAlgorithm_descriptor(v21[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v19[0] = v9;
    v19[1] = v10;
    absl::lts_20240722::StrCat(v22, v21, v20, v19, a2);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_8;
  }

  v6 = ValueByNumber[1];
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    v7 = *v6;
    a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
LABEL_8:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *v6;
  v14 = *(v6 + 1);
  v15 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v13, v14);
}

void sub_23CCB30E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string>,std::string,false>::operator()(uint64_t a1@<X1>, void *a2@<X8>)
{
  absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(a1, &v5);
  v3 = v5;
  v4 = v6;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = a2;
  v8 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_23CCB31D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void ***a13)
{
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22[0] = *(a1 + 16);
  if (*a1)
  {
    v3 = 0;
    while (v18 != 1)
    {
      v4 = *a1;
      v5 = *(a1 + 8);
      v6 = absl::lts_20240722::ByChar::Find(v22, *a1, v5, v3);
      if ((v4 + v5) == v6)
      {
        v18 = 1;
      }

      v8 = (v5 - v17);
      if (v5 < v17)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (v8 >= &v6[-v4 - v17])
      {
        v8 = &v6[-v4 - v17];
      }

      v19 = v4 + v17;
      v20 = v8;
      v3 = &v8[v17 + v7];
      v17 = v3;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    v18 = 2;
  }

  else
  {
    v18 = 2;
    v17 = *(a1 + 8);
  }

LABEL_13:
  while (v18 != 2)
  {
    v9 = 0;
    v10 = v19;
    v11 = v20;
LABEL_15:
    v12 = &v23[2 * v9];
    *v12 = v10;
    v12[1] = v11;
    while (v18 != 1)
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = absl::lts_20240722::ByChar::Find(v22, *a1, v14, v17);
      if ((v13 + v14) == v15)
      {
        v18 = 1;
      }

      v11 = (v14 - v17);
      if (v14 < v17)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v10 = v13 + v17;
      if (v11 >= &v15[-v13 - v17])
      {
        v11 = &v15[-v13 - v17];
      }

      v19 = v13 + v17;
      v20 = v11;
      v17 += &v11[v16];
      if (v11)
      {
        if (++v9 == 16)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }
    }

    v18 = 2;
    ++v9;
LABEL_26:
    std::vector<std::string_view>::__insert_with_size[abi:ne200100]<absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *,absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *>(a2, *(a2 + 8), v23, &v23[2 * v9], (16 * v9) >> 4);
  }
}

void sub_23CCB33E8(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

double *std::vector<std::string_view>::__insert_with_size[abi:ne200100]<absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *,absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *>(uint64_t a1, double *__src, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return __src;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 <= (v7 - v8) >> 4)
  {
    v13 = v8 - __src;
    v14 = (v8 - __src) >> 4;
    if (v14 >= a5)
    {
      v23 = 2 * a5;
      v24 = &__src[2 * a5];
      v25 = &v8[-2 * a5];
      for (i = *(a1 + 8); v25 < v8; ++i)
      {
        v27 = *v25;
        v25 += 16;
        *i = v27;
      }

      *(a1 + 8) = i;
      if (v8 != v24)
      {
        v28 = v8 - v24;
        v29 = v8 - v28;
        v30 = a3;
        v31 = a5;
        memmove(v29, __src, v28);
        a5 = v31;
        a3 = v30;
      }

      if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        v32 = __src;
        v33 = a3;
        if ((v6 & 0xFFFFFFFFFFFFFFFuLL) < 0x17)
        {
          goto LABEL_101;
        }

        v67 = (__src + 1) >= a3 + v23 * 8 || a3 + 8 >= &__src[v23];
        v68 = !v67;
        v69 = &__src[v23 - 1] <= a3 || __src >= a3 + v23 * 8 - 8;
        v32 = __src;
        v33 = a3;
        if (!v69)
        {
          goto LABEL_101;
        }

        v32 = __src;
        v33 = a3;
        if (v68)
        {
          goto LABEL_101;
        }

        v70 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 1;
        v71 = 2 * (v70 & 0x1FFFFFFFFFFFFFFCLL);
        v32 = &__src[v71];
        v33 = (a3 + v71 * 8);
        v72 = (a3 + 32);
        v73 = __src + 4;
        v74 = v70 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v75 = v72 - 4;
          v102 = vld2q_f64(v75);
          v106 = vld2q_f64(v72);
          v76 = v73 - 4;
          vst2q_f64(v76, v102);
          vst2q_f64(v73, v106);
          v72 += 8;
          v73 += 8;
          v74 -= 4;
        }

        while (v74);
        if (v70 != (v70 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_101:
          do
          {
            v34 = *v33;
            v35 = v33[1];
            v33 += 2;
            *v32 = v34;
            *(v32 + 1) = v35;
            v32 += 16;
          }

          while (v33 != (a3 + 16 * a5));
        }
      }

      return __src;
    }

    v15 = (a3 + v13);
    if ((a3 + v13) == a4)
    {
      v20 = *(a1 + 8);
      *(a1 + 8) = v8;
      if (v14 < 1)
      {
        return __src;
      }

      goto LABEL_46;
    }

    v16 = __src + a4 - a3 - v8 - 16;
    if (v16 >= 0x230 && ((v17 = v8 + (v16 & 0xFFFFFFFFFFFFFFF0), v17 >= v8) ? (v18 = (v8 + (v16 & 0xFFFFFFFFFFFFFFF0) + 8) >= v8 + 1) : (v18 = 0), v18))
    {
      v92 = v17 + 16;
      v93 = v8 >= v8 + (v16 & 0xFFFFFFFFFFFFFFF0) - __src + a3 + 16 || v15 >= v92;
      v19 = (a3 + v13);
      v20 = *(a1 + 8);
      if (v93)
      {
        v94 = (v16 >> 4) + 1;
        v95 = 2 * (v94 & 0x1FFFFFFFFFFFFFFCLL);
        v19 = &v15[v95 * 8];
        v20 = &v8[v95];
        v96 = v8 + 4;
        v97 = (a3 + (v8 + 4) - __src);
        v98 = v94 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v99 = v97 - 4;
          v104 = vld2q_f64(v99);
          v108 = vld2q_f64(v97);
          v100 = v96 - 4;
          vst2q_f64(v100, v104);
          vst2q_f64(v96, v108);
          v96 += 8;
          v97 += 8;
          v98 -= 4;
        }

        while (v98);
        if (v94 == (v94 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_21:
          *(a1 + 8) = v20;
          if (v14 < 1)
          {
            return __src;
          }

LABEL_46:
          v56 = &__src[2 * a5];
          v57 = &v20[-16 * a5];
          for (j = v20; v57 < v8; j += 16)
          {
            v59 = *v57;
            v57 += 2;
            *j = v59;
          }

          *(a1 + 8) = j;
          if (v20 != v56)
          {
            v60 = a3;
            memmove(v56, __src, v20 - v56);
            a3 = v60;
          }

          if (v8 == __src)
          {
            return __src;
          }

          v61 = v8 - __src - 16;
          if (v61 < 0x170)
          {
            goto LABEL_52;
          }

          v77 = __src + (v61 & 0xFFFFFFFFFFFFFFF0);
          v78 = v77 + 8;
          v79 = a3 + (v61 & 0xFFFFFFFFFFFFFFF0);
          v80 = v79 + 8;
          v81 = (v77 + 16);
          v82 = (__src + 1) >= v79 + 16 || a3 + 8 >= v81;
          v83 = !v82;
          v84 = v78 <= a3 || __src >= v80;
          if (!v84 || v83)
          {
LABEL_52:
            v62 = __src;
            v63 = a3;
          }

          else
          {
            v85 = (v61 >> 4) + 1;
            v86 = 2 * (v85 & 0x1FFFFFFFFFFFFFFCLL);
            v62 = &__src[v86];
            v63 = (a3 + v86 * 8);
            v87 = (a3 + 32);
            v88 = __src + 4;
            v89 = v85 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v90 = v87 - 4;
              v103 = vld2q_f64(v90);
              v107 = vld2q_f64(v87);
              v91 = v88 - 4;
              vst2q_f64(v91, v103);
              vst2q_f64(v88, v107);
              v87 += 8;
              v88 += 8;
              v89 -= 4;
            }

            while (v89);
            if (v85 == (v85 & 0x1FFFFFFFFFFFFFFCLL))
            {
              return __src;
            }
          }

          do
          {
            v64 = *v63;
            v65 = *(v63 + 1);
            v63 += 16;
            *v62 = v64;
            *(v62 + 1) = v65;
            v62 += 16;
          }

          while (v63 != v15);
          return __src;
        }
      }
    }

    else
    {
      v19 = (a3 + v13);
      v20 = *(a1 + 8);
    }

    do
    {
      v21 = *v19;
      v22 = v19[1];
      v19 += 2;
      *v20 = v21;
      *(v20 + 1) = v22;
      v20 += 16;
    }

    while (v19 != a4);
    goto LABEL_21;
  }

  v9 = *a1;
  v10 = a5 + ((v8 - *a1) >> 4);
  if (v10 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v9;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v36 = (__src - v9);
  v37 = 16 * ((__src - v9) >> 4);
  v38 = v37;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_35;
  }

  v38 = (v37 + 16 * a5);
  if ((v6 & 0xFFFFFFFFFFFFFFFuLL) < 0x21 || v37 + 16 * v6 < v37 || &v36[16 * v6 + 8] < v36 + 8 || v37 < a3 + 16 * a5 && &v36[16 * a5] > a3)
  {
    v39 = a3;
    v40 = v37;
    do
    {
LABEL_34:
      v41 = *v39;
      v42 = v39[1];
      v39 += 2;
      *v40 = v41;
      *(v40 + 1) = v42;
      v40 += 16;
    }

    while (v40 != v38);
    goto LABEL_35;
  }

  v49 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 1;
  v50 = 16 * (v49 & 0x1FFFFFFFFFFFFFFCLL);
  v39 = (a3 + v50);
  v40 = (v37 + v50);
  v51 = (v37 + 32);
  v52 = (a3 + 32);
  v53 = v49 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v54 = v52 - 4;
    v101 = vld2q_f64(v54);
    v105 = vld2q_f64(v52);
    v55 = v51 - 4;
    vst2q_f64(v55, v101);
    vst2q_f64(v51, v105);
    v51 += 8;
    v52 += 8;
    v53 -= 4;
  }

  while (v53);
  if (v49 != (v49 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_34;
  }

LABEL_35:
  v43 = *(a1 + 8) - __src;
  memcpy(v38, __src, v43);
  v45 = &v38[v43];
  *(a1 + 8) = __src;
  v46 = *a1;
  v47 = __src - *a1;
  v48 = v37 - v47;
  memcpy((v37 - v47), *a1, v47);
  *a1 = v48;
  *(a1 + 8) = v45;
  *(a1 + 16) = 0;
  if (v46)
  {
    operator delete(v46);
  }

  return v37;
}

void operations_research::sat::RecordLPRelaxationValues(operations_research::sat *this, operations_research::sat::Model *a2)
{
  v2 = *(this + 3);
  if (v2 > 1)
  {
    v3 = 0;
    _X11 = *(this + 5);
    __asm { PRFM            #4, [X11] }

    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d));
    v11 = vdup_n_s8(v10 & 0x7F);
    v12 = ((v10 >> 7) ^ (_X11 >> 12)) & v2;
    v13 = *(_X11 + v12);
    v14 = vceq_s8(v13, v11);
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = *(this + 6);
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v2;
      if (*(v15 + 16 * v16) == &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
      {
        break;
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
LABEL_8:
        while (!*&vceq_s8(v13, 0x8080808080808080))
        {
          v3 += 8;
          v12 = (v3 + v12) & v2;
          v13 = *(_X11 + v12);
          v14 = vceq_s8(v13, v11);
          if (v14)
          {
            goto LABEL_5;
          }
        }

        return;
      }
    }

    v17 = (v15 + 16 * v16);
    if (_X11 + v16)
    {
      goto LABEL_16;
    }
  }

  else if (*(this + 4) >= 2uLL)
  {
    v17 = this + 40;
    v18 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 5) != &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
    {
      v18 = 0;
    }

    if (v18)
    {
LABEL_16:
      v19 = *(v17 + 1);
      if (v19)
      {
        v21 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(this);
        v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(this);
        v23 = v21[1] - *v21;
        if ((v23 >> 2))
        {
          if (!((v23 >> 2) >> 61))
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v24 = *v22;
        v25 = v22[1] - *v22;
        if ((v25 >> 3) >= 1)
        {
          v26 = 0;
          v27 = v21[12];
          v28 = (v21[13] - v27) >> 2;
          v29 = (v25 >> 3) & 0x7FFFFFFF;
          do
          {
            if (v28 > v26)
            {
              v30 = *(v27 + 4 * v26);
              if (v30 != -1)
              {
                *(8 * v30) = *(v24 + 8 * v26);
              }
            }

            v26 += 2;
          }

          while (v26 < v29);
        }

        __p = 0;
        v32 = 0;
        v33 = 0;
        operations_research::sat::SharedLPSolutionRepository::NewLPSolution(v19, &__p);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_23CCB3BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::GetRinsRensNeighborhood(atomic_ullong *a1@<X0>, atomic_ullong *a2@<X1>, atomic_ullong *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a5;
  v85 = *MEMORY[0x277D85DE8];
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v80, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/rins.cc", 180);
    goto LABEL_93;
  }

  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v80, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/rins.cc", 181);
LABEL_93:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v80);
  }

  absl::lts_20240722::Mutex::Lock(a2 + 4);
  v11 = a2[12];
  v10 = a2[13];
  absl::lts_20240722::Mutex::Unlock((a2 + 4));
  HasSolution = operations_research::sat::SharedIncompleteSolutionManager::HasSolution(a3);
  v13 = (v10 - v11) >> 6;
  if (v13 <= 0 && !HasSolution)
  {
    goto LABEL_88;
  }

  v72 = v5;
  if (v13 > 0 && HasSolution)
  {
    if (vcvtd_n_f64_u64((a4[2])(*a4), 0x40uLL) >= 0.5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v73 = *a4;
    v74 = a4[2];
    v75 = 0;
    v76 = 0;
    v77 = 0;
    absl::lts_20240722::Mutex::Lock(a2 + 4);
    v18 = a2[12];
    v17 = a2[13];
    absl::lts_20240722::Mutex::Unlock((a2 + 4));
    if (((v17 - v18) & 0x3FFFFFFFC0) != 0)
    {
      v78 = v73;
      v79 = v74;
      operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(a2, &v78, v80);
      v19 = v80[1];
      if (v81 != v80[1])
      {
        v20 = 0;
        v21 = 1;
        v22 = v76;
        do
        {
          if (v22 < v77)
          {
            v14.n128_u64[0] = v19[v20];
            *v22 = v14.n128_u64[0];
            v22 += 8;
          }

          else
          {
            v23 = v75;
            v24 = v22 - v75;
            v25 = (v22 - v75) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v27 = v77 - v75;
            if ((v77 - v75) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (!(v28 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = v19[v20];
            v32 = &v30[-v29];
            *v30 = v31;
            v22 = (v30 + 1);
            memcpy(v32, v23, v24);
            v75 = v32;
            v76 = v22;
            v77 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          v76 = v22;
          v20 = v21;
          v19 = v80[1];
          ++v21;
        }

        while (v20 < (v81 - v80[1]) >> 3);
      }

      if (v84 < 0)
      {
        operator delete(__p);
        v19 = v80[1];
      }

      if (v19)
      {
        v81 = v19;
        operator delete(v19);
      }
    }

    v15 = "lp";
    v16 = v75;
    if (v75 == v76)
    {
      goto LABEL_86;
    }

    goto LABEL_34;
  }

  if (v13 >= 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!operations_research::sat::SharedIncompleteSolutionManager::HasSolution(a3))
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v16 = 0;
    goto LABEL_86;
  }

  operations_research::sat::SharedIncompleteSolutionManager::PopLast(a3, &v75);
  v15 = "pump";
  v16 = v75;
  if (v75 != v76)
  {
LABEL_34:
    __s = v15;
    if (a1)
    {
      absl::lts_20240722::Mutex::Lock(a1 + 15);
      v34 = a1[23];
      v33 = a1[24];
      absl::lts_20240722::Mutex::Unlock((a1 + 15));
      if (((v33 - v34) >> 6) >= 1)
      {
        v14.n128_f64[0] = vcvtd_n_f64_u64((a4[2])(*a4), 0x40uLL);
        if (v14.n128_f64[0] < 0.75)
        {
          v78 = *a4;
          v79 = a4[2];
          operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(a1 + 11, &v78, v80);
          v36 = v80[1];
          v81 = 0;
          v82 = 0;
          v80[1] = 0;
          if (v84 < 0)
          {
            operator delete(__p);
            if (v80[1])
            {
              v81 = v80[1];
              operator delete(v80[1]);
            }
          }

          if (v76 != v75)
          {
            v37 = 0;
            v38 = 0;
            v40 = *a4;
            v39 = a4[1];
            v41 = a4[2];
            v35.n128_u64[1] = 0x3E7AD7F29ABCAF48;
            v35.n128_u64[0] = 0xBE7AD7F29ABCAF48;
            while (*(v75 + v37) == INFINITY)
            {
              v37 = ++v38;
              if ((v76 - v75) >> 3 <= v38)
              {
                goto LABEL_89;
              }
            }

            v57 = v36[v37];
            *v80 = xmmword_23CE4D830;
            *&v78 = 0;
            v58 = 0.0000002;
            v59 = 0.0000001;
            v60 = -0.0000001;
            if (v39 != absl::lts_20240722::BitGenRef::NotAMock)
            {
              if ((v39)(v40, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, v80, &v78))
              {
                goto LABEL_83;
              }

              v60 = *v80;
              v59 = *&v80[1];
              v58 = *&v80[1] - *v80;
            }

            v61 = (*&v58 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
            v62 = ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
            if (v58 >= 0.0)
            {
              v62 = 0;
              v61 = 0;
            }

            if ((*&v58 & 0x7FFFFFFFFFFFFFFFLL) == 0)
            {
              v61 = 1;
            }

            v63 = (*&v58 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v61;
            if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
            {
              v63 = 1;
            }

            if ((v63 | v62))
            {
              v41(v40);
            }

            else
            {
              do
              {
                v64 = v41(v40);
                v65 = __clz(v64);
                *&v66 = ((v64 << v65 >> 11) & 0xFFFFFFFFFFFFFLL) - (v65 << 52) + 0x3FE0000000000000;
                if (!v64)
                {
                  v66 = 0.0;
                }

                v67 = v60 + v66 * v58;
              }

              while (v67 >= v59);
            }

LABEL_83:
            operator new();
          }

LABEL_89:
          v15 = __s;
          MEMORY[0x23EED9020](48, "rins_");
          if (v36)
          {
            operator delete(v36);
          }

LABEL_85:
          v69 = strlen(v15);
          v80[0] = v15;
          v80[1] = v69;
          *&v78 = "_lns";
          *(&v78 + 1) = 4;
          absl::lts_20240722::StrAppend(v5 + 2, v80, &v78);
          v16 = v75;
          goto LABEL_86;
        }
      }
    }

    if (v76 == v75)
    {
LABEL_84:
      v5 = v72;
      MEMORY[0x23EED9020](&v72[2], "rens_", v68);
      goto LABEL_85;
    }

    v42 = 0;
    v43 = 0;
    v45 = *a4;
    v44 = a4[1];
    v46 = a4[2];
    v14.n128_u64[1] = 0x3E7AD7F29ABCAF48;
    v14.n128_u64[0] = 0xBE7AD7F29ABCAF48;
    while (*(v75 + v42) == INFINITY)
    {
      v42 = ++v43;
      if ((v76 - v75) >> 3 <= v43)
      {
        goto LABEL_84;
      }
    }

    *v80 = xmmword_23CE4D830;
    *&v78 = 0;
    v47 = 0.0000002;
    v48 = 0.0000001;
    v49 = -0.0000001;
    if (v44 != absl::lts_20240722::BitGenRef::NotAMock)
    {
      if ((v44)(v45, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, v80, &v78))
      {
        goto LABEL_63;
      }

      v49 = *v80;
      v48 = *&v80[1];
      v47 = *&v80[1] - *v80;
    }

    v50 = (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v51 = ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v47 >= 0.0)
    {
      v51 = 0;
      v50 = 0;
    }

    if ((*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v50 = 1;
    }

    v52 = (*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v50;
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v52 = 1;
    }

    if ((v52 | v51))
    {
      v46(v45);
    }

    else
    {
      do
      {
        v53 = v46(v45);
        v54 = __clz(v53);
        *&v55 = ((v53 << v54 >> 11) & 0xFFFFFFFFFFFFFLL) - (v54 << 52) + 0x3FE0000000000000;
        if (!v53)
        {
          v55 = 0.0;
        }

        v56 = v49 + v55 * v47;
      }

      while (v56 >= v48);
    }

LABEL_63:
    operator new();
  }

LABEL_86:
  if (v16)
  {
    v76 = v16;
    operator delete(v16);
  }

LABEL_88:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_23CCB470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  operations_research::sat::ReducedDomainNeighborhood::~ReducedDomainNeighborhood(a13);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::VarWeight *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[1])
      {
        v115 = *v12;
        *v12 = a2[-1];
        result = v115;
        a2[-1] = v115;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v52 = v12 + 1;
      v54 = v12 == a2 || v52 == a2;
      if (a4)
      {
        if (!v54)
        {
          v55 = 0;
          v56 = v12;
          do
          {
            result.n128_u64[0] = v56[1].n128_u64[1];
            v58 = v56->n128_f64[1];
            v56 = v52;
            if (result.n128_f64[0] < v58)
            {
              v59 = v52->n128_u64[0];
              v60 = v55;
              do
              {
                *(v12 + v60 + 16) = *(v12 + v60);
                if (!v60)
                {
                  v57 = v12;
                  goto LABEL_125;
                }

                v61 = *(&v12->n128_f64[-1] + v60);
                v60 -= 16;
              }

              while (result.n128_f64[0] < v61);
              v57 = (v12 + v60 + 16);
LABEL_125:
              v57->n128_u64[0] = v59;
              v57->n128_u64[1] = result.n128_u64[0];
            }

            v52 = v56 + 1;
            v55 += 16;
          }

          while (&v56[1] != a2);
        }
      }

      else if (!v54)
      {
        do
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v89 = a1->n128_f64[1];
          a1 = v52;
          if (result.n128_f64[0] < v89)
          {
            v90 = v52->n128_u64[0];
            do
            {
              *v52 = v52[-1];
              v91 = v52[-2].n128_f64[1];
              --v52;
            }

            while (result.n128_f64[0] < v91);
            v52->n128_u64[0] = v90;
            v52->n128_u64[1] = result.n128_u64[0];
          }

          v52 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v62 = (v13 - 2) >> 1;
        v63 = v62;
        do
        {
          v65 = 16 * v63;
          if (v62 >= (16 * v63) >> 4)
          {
            v66 = (v65 >> 3) | 1;
            v67 = &v12[v66];
            if ((v65 >> 3) + 2 < v13 && v67->n128_f64[1] < v67[1].n128_f64[1])
            {
              ++v67;
              v66 = (v65 >> 3) + 2;
            }

            v68 = &v12[v65 / 0x10];
            v69 = v68->n128_f64[1];
            if (v67->n128_f64[1] >= v69)
            {
              v70 = v68->n128_u64[0];
              do
              {
                v71 = v68;
                v68 = v67;
                *v71 = *v67;
                if (v62 < v66)
                {
                  break;
                }

                v72 = 2 * v66;
                v66 = (2 * v66) | 1;
                v67 = &v12[v66];
                v73 = v72 + 2;
                if (v73 < v13 && v67->n128_f64[1] < v67[1].n128_f64[1])
                {
                  ++v67;
                  v66 = v73;
                }
              }

              while (v67->n128_f64[1] >= v69);
              v68->n128_u64[0] = v70;
              v68->n128_f64[1] = v69;
            }
          }

          v64 = v63-- <= 0;
        }

        while (!v64);
        do
        {
          v74 = 0;
          v118 = *v12;
          v75 = (v13 - 2) >> 1;
          v76 = v12;
          do
          {
            while (1)
            {
              v81 = &v76[v74];
              v80 = v81 + 1;
              v82 = (2 * v74) | 1;
              v74 = 2 * v74 + 2;
              if (v74 < v13)
              {
                break;
              }

              v74 = v82;
              *v76 = *v80;
              v76 = v81 + 1;
              if (v82 > v75)
              {
                goto LABEL_156;
              }
            }

            v77 = v81[1].n128_f64[1];
            v78 = v81[2].n128_f64[1];
            v79 = v81 + 2;
            if (v77 >= v78)
            {
              v74 = v82;
            }

            else
            {
              v80 = v79;
            }

            *v76 = *v80;
            v76 = v80;
          }

          while (v74 <= v75);
LABEL_156:
          if (v80 == --a2)
          {
            result = v118;
            *v80 = v118;
          }

          else
          {
            *v80 = *a2;
            result = v118;
            *a2 = v118;
            v83 = (v80 - v12 + 16) >> 4;
            v64 = v83 < 2;
            v84 = v83 - 2;
            if (!v64)
            {
              v85 = v84 >> 1;
              v86 = &v12[v85];
              result.n128_u64[0] = v80->n128_u64[1];
              if (v86->n128_f64[1] < result.n128_f64[0])
              {
                v87 = v80->n128_u64[0];
                do
                {
                  v88 = v80;
                  v80 = v86;
                  *v88 = *v86;
                  if (!v85)
                  {
                    break;
                  }

                  v85 = (v85 - 1) >> 1;
                  v86 = &v12[v85];
                }

                while (v86->n128_f64[1] < result.n128_f64[0]);
                v80->n128_u64[0] = v87;
                v80->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v64 = v13-- <= 2;
        }

        while (!v64);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f64[1];
    if (v13 < 0x81)
    {
      v17 = v12->n128_f64[1];
      if (v17 < v14->n128_f64[1])
      {
        if (v15 < v17)
        {
          v93 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v102 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v102.n128_u64[1];
        *v12 = v102;
        if (a2[-1].n128_f64[1] < v12->n128_f64[1])
        {
          v93 = *v12;
          *v12 = *v9;
LABEL_36:
          result.n128_u64[1] = v93.n128_u64[1];
          *v9 = v93;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v15 >= v17)
      {
        goto LABEL_37;
      }

      v96 = *v12;
      *v12 = *v9;
      result.n128_u64[1] = v96.n128_u64[1];
      *v9 = v96;
      if (v12->n128_f64[1] >= v14->n128_f64[1])
      {
        goto LABEL_37;
      }

      v97 = *v14;
      *v14 = *v12;
      result.n128_u64[1] = v97.n128_u64[1];
      *v12 = v97;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      result.n128_u64[0] = v12->n128_u64[1];
      if (v12[-1].n128_f64[1] < result.n128_f64[0])
      {
        goto LABEL_62;
      }

      if (result.n128_f64[0] >= a2[-1].n128_f64[1])
      {
        v41 = v12 + 1;
        do
        {
          v12 = v41;
          if (v41 >= a2)
          {
            break;
          }

          v42 = v41->n128_f64[1];
          ++v41;
        }

        while (result.n128_f64[0] >= v42);
      }

      else
      {
        v39 = v12;
        do
        {
          v12 = v39 + 1;
          v40 = v39[1].n128_f64[1];
          ++v39;
        }

        while (result.n128_f64[0] >= v40);
      }

      v43 = a2;
      if (v12 < a2)
      {
        v44 = a2;
        do
        {
          v43 = v44 - 1;
          v45 = v44[-1].n128_f64[1];
          --v44;
        }

        while (result.n128_f64[0] < v45);
      }

      v46 = a1->n128_u64[0];
      while (v12 < v43)
      {
        v114 = *v12;
        *v12 = *v43;
        *v43 = v114;
        do
        {
          v47 = v12[1].n128_f64[1];
          ++v12;
        }

        while (result.n128_f64[0] >= v47);
        do
        {
          v48 = v43[-1].n128_f64[1];
          --v43;
        }

        while (result.n128_f64[0] < v48);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }

    else
    {
      v16 = v14->n128_f64[1];
      if (v16 >= v12->n128_f64[1])
      {
        if (v15 < v16)
        {
          v94 = *v14;
          *v14 = *v9;
          *v9 = v94;
          if (v14->n128_f64[1] < v12->n128_f64[1])
          {
            v95 = *v12;
            *v12 = *v14;
            *v14 = v95;
          }
        }
      }

      else
      {
        if (v15 >= v16)
        {
          v98 = *v12;
          *v12 = *v14;
          *v14 = v98;
          if (a2[-1].n128_f64[1] >= v14->n128_f64[1])
          {
            goto LABEL_28;
          }

          v92 = *v14;
          *v14 = *v9;
        }

        else
        {
          v92 = *v12;
          *v12 = *v9;
        }

        *v9 = v92;
      }

LABEL_28:
      v18 = v14 - 1;
      v19 = v14[-1].n128_f64[1];
      v20 = a2[-2].n128_f64[1];
      if (v19 >= v12[1].n128_f64[1])
      {
        if (v20 < v19)
        {
          v100 = *v18;
          *v18 = *v10;
          *v10 = v100;
          if (v14[-1].n128_f64[1] < v12[1].n128_f64[1])
          {
            v101 = v12[1];
            v12[1] = *v18;
            *v18 = v101;
          }
        }
      }

      else
      {
        if (v20 >= v19)
        {
          v103 = v12[1];
          v12[1] = *v18;
          *v18 = v103;
          if (a2[-2].n128_f64[1] >= v14[-1].n128_f64[1])
          {
            goto LABEL_42;
          }

          v99 = *v18;
          *v18 = *v10;
        }

        else
        {
          v99 = v12[1];
          v12[1] = *v10;
        }

        *v10 = v99;
      }

LABEL_42:
      v21 = v14[1].n128_f64[1];
      v22 = a2[-3].n128_f64[1];
      if (v21 >= v12[2].n128_f64[1])
      {
        if (v22 < v21)
        {
          v105 = v14[1];
          v14[1] = *v11;
          *v11 = v105;
          if (v14[1].n128_f64[1] < v12[2].n128_f64[1])
          {
            v106 = v12[2];
            v12[2] = v14[1];
            v14[1] = v106;
          }
        }
      }

      else
      {
        if (v22 >= v21)
        {
          v107 = v12[2];
          v12[2] = v14[1];
          v14[1] = v107;
          if (a2[-3].n128_f64[1] >= v14[1].n128_f64[1])
          {
            goto LABEL_51;
          }

          v104 = v14[1];
          v14[1] = *v11;
        }

        else
        {
          v104 = v12[2];
          v12[2] = *v11;
        }

        *v11 = v104;
      }

LABEL_51:
      v23 = v14->n128_f64[1];
      v24 = v14[1].n128_f64[1];
      if (v23 >= v14[-1].n128_f64[1])
      {
        if (v24 < v23)
        {
          v109 = *v14;
          *v14 = v14[1];
          v14[1] = v109;
          if (v14->n128_f64[1] < v14[-1].n128_f64[1])
          {
            v110 = *v18;
            *v18 = *v14;
            *v14 = v110;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v111 = *v18;
          *v18 = *v14;
          *v14 = v111;
          if (v14[1].n128_f64[1] >= v14->n128_f64[1])
          {
            goto LABEL_60;
          }

          v108 = *v14;
          *v14 = v14[1];
        }

        else
        {
          v108 = *v18;
          *v18 = v14[1];
        }

        v14[1] = v108;
      }

LABEL_60:
      v112 = *v12;
      *v12 = *v14;
      result.n128_u64[1] = v112.n128_u64[1];
      *v14 = v112;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      result.n128_u64[0] = v12->n128_u64[1];
LABEL_62:
      v25 = 0;
      v26 = v12->n128_u64[0];
      do
      {
        v27 = v12[++v25].n128_f64[1];
      }

      while (v27 < result.n128_f64[0]);
      v28 = &v12[v25];
      v29 = a2;
      if (v25 == 1)
      {
        v32 = a2;
        while (v28 < v32)
        {
          v30 = v32 - 1;
          v33 = v32[-1].n128_f64[1];
          --v32;
          if (v33 < result.n128_f64[0])
          {
            goto LABEL_70;
          }
        }

        v30 = v32;
        v12 = v28;
      }

      else
      {
        do
        {
          v30 = v29 - 1;
          v31 = v29[-1].n128_f64[1];
          --v29;
        }

        while (v31 >= result.n128_f64[0]);
LABEL_70:
        v12 = v28;
        if (v28 < v30)
        {
          v34 = v30;
          do
          {
            v113 = *v12;
            *v12 = *v34;
            *v34 = v113;
            do
            {
              v35 = v12[1].n128_f64[1];
              ++v12;
            }

            while (v35 < result.n128_f64[0]);
            do
            {
              v36 = v34[-1].n128_f64[1];
              --v34;
            }

            while (v36 >= result.n128_f64[0]);
          }

          while (v12 < v34);
        }
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u64[0] = v26;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v28 < v30)
      {
        goto LABEL_81;
      }

      {
        a2 = v12 - 1;
        if (!v37)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v37)
      {
LABEL_81:
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v50 = v12[1].n128_f64[1];
      v51 = v12[2].n128_f64[1];
      if (v50 >= v12->n128_f64[1])
      {
        if (v51 < v50)
        {
          v120 = v12[1];
          v12[1] = v12[2];
          result.n128_u64[1] = v120.n128_u64[1];
          v12[2] = v120;
          if (v12[1].n128_f64[1] < v12->n128_f64[1])
          {
            v121 = *v12;
            *v12 = v12[1];
            result.n128_u64[1] = v121.n128_u64[1];
            v12[1] = v121;
          }
        }
      }

      else
      {
        if (v51 < v50)
        {
          v117 = *v12;
          *v12 = v12[2];
          goto LABEL_180;
        }

        v123 = *v12;
        *v12 = v12[1];
        result.n128_u64[1] = v123.n128_u64[1];
        v12[1] = v123;
        if (v12[2].n128_f64[1] < v12[1].n128_f64[1])
        {
          v117 = v12[1];
          v12[1] = v12[2];
LABEL_180:
          result.n128_u64[1] = v117.n128_u64[1];
          v12[2] = v117;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] >= v12[2].n128_f64[1])
      {
        return result;
      }

      v124 = v12[2];
      v12[2] = *v9;
      result.n128_u64[1] = v124.n128_u64[1];
      *v9 = v124;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] >= v12[1].n128_f64[1])
      {
        return result;
      }

      v125 = v12[1];
      v12[1] = v12[2];
      result.n128_u64[1] = v125.n128_u64[1];
      v12[2] = v125;
LABEL_184:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[1])
      {
        v126 = *v12;
        *v12 = v12[1];
        result = v126;
        v12[1] = v126;
      }

      return result;
    }

    if (v13 == 5)
    {

      return result;
    }

    goto LABEL_9;
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v49 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] >= v12->n128_f64[1])
  {
    if (v49 >= result.n128_f64[0])
    {
      return result;
    }

    v119 = v12[1];
    v12[1] = *v9;
    result.n128_u64[1] = v119.n128_u64[1];
    *v9 = v119;
    goto LABEL_184;
  }

  if (v49 >= result.n128_f64[0])
  {
    v122 = *v12;
    *v12 = v12[1];
    result.n128_u64[1] = v122.n128_u64[1];
    v12[1] = v122;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] >= v12[1].n128_f64[1])
    {
      return result;
    }

    v116 = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v116 = *v12;
    *v12 = *v9;
  }

  result = v116;
  *v9 = v116;
  return result;
}