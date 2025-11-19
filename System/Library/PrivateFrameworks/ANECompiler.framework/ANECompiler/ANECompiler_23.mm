uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 2);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 2))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 2)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < *(a2 + 2); a2 -= 2)
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
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 2)))
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

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 2));
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

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || SLODWORD(a1[v2 + 3]) >= v4))
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

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
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
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
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

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
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
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
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
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
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
    *v14 = v15;
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

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 2) < *(v8 + 6))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 2);
          v13 = *(a4 + 2);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 2);
          v14 = *(v8 + 2);
        }

        *a4 = v11;
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
              if (*v15 < v19 || v19 >= *v15 && *(v15 + 2) < *(v15 + 6))
              {
                v15 += 2;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            if (v12 < v20)
            {
              v16 = *(v15 + 2);
            }

            else
            {
              v16 = *(v15 + 2);
              if (v16 < v13)
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
        *v15 = v12;
        *(v15 + 2) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (v13 < v12 || v12 >= v13 && *(v9 + 6) < *(v9 + 10))
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
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 2);
      v20 = *(v7 + 2);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v18;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v23 >= v20)
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
    *v22 = v19;
    *(v22 + 2) = v20;
  }

  return result;
}

void **std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(uint64_t a1, const operations_research::sat::LinearExpressionProto *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = (16 * ((*(a1 + 8) - *a1) >> 4));
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v11, 0, a2);
  v6 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::LinearExpressionProto>,operations_research::sat::LinearExpressionProto*>(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_23CA310D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::LinearExpressionProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::LinearExpressionProto>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    operations_research::sat::LinearExpressionProto::~LinearExpressionProto((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::LinearExpressionProto>,operations_research::sat::LinearExpressionProto*>(uint64_t a1, operations_research::sat::LinearExpressionProto *a2, operations_research::sat::LinearExpressionProto *a3, operations_research::sat::LinearExpressionProto *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = *(a4 + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(v7 + 1);
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::LinearExpressionProto::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = *(v7 + 1);
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (v8 != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::LinearExpressionProto::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 80);
      a4 = (a4 + 80);
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v6);
          v6 = (v6 + 80);
        }

        return;
      }
    }
  }
}

void std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(unint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 > (v3 - v4) >> 5)
  {
    v5 = v4 - *a1;
    v6 = v5 >> 5;
    v7 = (v5 >> 5) + a2;
    if (v7 >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = 32 * v6;
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v20 + 32 * a2;
      if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) != 0 && v20 + 32 * (a2 - 1) >= v20)
      {
        v11 = v20;
        if (v5 + 8 + 32 * (a2 - 1) >= v5 + 8)
        {
          v12 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
          v11 = (v20 + 32 * (v12 & 0xFFFFFFFFFFFFFFELL));
          v13 = (v20 + 32);
          v14 = v12 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v13 - 2) = xmmword_23CE306D0;
            *v13 = xmmword_23CE306D0;
            v13 += 4;
            v14 -= 2;
          }

          while (v14);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFELL))
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v11 = v20;
      }

      do
      {
        *v11 = xmmword_23CE306D0;
        v11 += 2;
      }

      while (v11 != v10);
    }

    else
    {
      v10 = 32 * v6;
    }

LABEL_32:
    v21 = *a1;
    v22 = a1[1];
    v23 = v20 + *a1 - v22;
    if (v22 != *a1)
    {
      v24 = (v20 + *a1 - v22);
      v25 = *a1;
      do
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(v24, v25);
        v25 += 2;
        v24 = (v26 + 32);
      }

      while (v25 != v22);
      do
      {
        if (*v21 >= 2uLL)
        {
          operator delete((v21[2] - (v21[1] & 1) - 8));
        }

        v21 += 4;
      }

      while (v21 != v22);
      v21 = *a1;
    }

    *a1 = v23;
    a1[1] = v10;
    a1[2] = 0;
    if (v21)
    {

      operator delete(v21);
    }

    return;
  }

  if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v15 = &v4[2 * a2];
    if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_49;
    }

    if (&v4[2 * a2 - 2] < v4)
    {
      goto LABEL_49;
    }

    if (&v4[2 * a2 - 2] + 8 < v4 + 8)
    {
      goto LABEL_49;
    }

    v16 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v17 = &v4[2 * (v16 & 0xFFFFFFFFFFFFFFELL)];
    v18 = v4 + 2;
    v19 = v16 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 2) = xmmword_23CE306D0;
      *v18 = xmmword_23CE306D0;
      v18 += 4;
      v19 -= 2;
    }

    while (v19);
    v4 = v17;
    if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_49:
      do
      {
        *v4 = xmmword_23CE306D0;
        v4 += 2;
      }

      while (v4 != v15);
    }

    v4 = v15;
  }

  a1[1] = v4;
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(_OWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  *&result = 1;
  *a2 = xmmword_23CE306D0;
  return result;
}

void OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  v2 = (*(a1 + 16) - (*(a1 + 8) & 1) - 8);

  operator delete(v2);
}

operations_research::sat::NeighborhoodGeneratorHelper *operations_research::sat::NeighborhoodGeneratorHelper::NeighborhoodGeneratorHelper(operations_research::sat::NeighborhoodGeneratorHelper *this, const operations_research::sat::CpModelProto *a2, const operations_research::sat::SatParameters *a3, operations_research::sat::SharedResponseManager *a4, operations_research::sat::SharedBoundsManager *a5)
{
  v10 = operations_research::sat::SubSolver::SubSolver(this, "neighborhood_helper", 0x13uLL, 3);
  *v10 = &unk_284F3C930;
  v10[32] = 0;
  v10[33] = a3;
  v10[34] = a2;
  v10[36] = a5;
  v10[37] = a4;
  operations_research::sat::CpModelProto::CpModelProto((v10 + 38), 0);
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  operations_research::sat::CpModelProto::CpModelProto(this + 512, 0);
  *(this + 120) = 0;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  if (!*(this + 37))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 75);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v14);
  }

  v11 = *(this + 36);
  if (v11)
  {
    *(this + 70) = operations_research::sat::SharedBoundsManager::RegisterNewId(v11);
  }

  v12 = *(this + 34);
  if ((this + 328) != (v12 + 24))
  {
    if (*(this + 84) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 82);
    }

    if (*(v12 + 32))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 82, (v12 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  operations_research::sat::NeighborhoodGeneratorHelper::InitializeHelperData(this);
  operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(this);
  (*(*this + 16))(this);
  return this;
}

void sub_23CA31680(_Unwind_Exception *a1)
{
  v3 = *(v1 + 488);
  if (v3)
  {
    operator delete(v3);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v1 + 464));
  operations_research::sat::CpModelProto::~CpModelProto((v1 + 304));
  absl::lts_20240722::Mutex::~Mutex((v1 + 256));
  operations_research::sat::SubSolver::~SubSolver(v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SubSolver::SubSolver(uint64_t a1, const void *a2, size_t __len, int a4)
{
  *a1 = &unk_284F3CEE8;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = __len;
  v7 = (a1 + 8);
  if (__len)
  {
    memmove(v7, a2, __len);
  }

  *(v7 + __len) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  operations_research::DistributionStat::DistributionStat(a1 + 48, "task time", 9uLL);
  *(a1 + 48) = &unk_284F44CD0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  operations_research::DistributionStat::DistributionStat(a1 + 152, "task dtime", 0xAuLL);
  *(a1 + 152) = &unk_284F44CD0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  return a1;
}

void sub_23CA318CC(_Unwind_Exception *exception_object)
{
  *(v1 + 48) = &unk_284F3A5F8;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::InitializeHelperData(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  v3 = *(this + 58);
  v2 = *(this + 59);
  if (v2 != v3)
  {
    v4 = *(this + 59);
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 59) = v3;
  v7 = *(this + 34);
  v8 = *(v7 + 56);
  v31 = 0;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; v31 = i)
    {
      v10 = *(this + 34);
      v12 = *(v10 + 48);
      v11 = v10 + 48;
      v13 = v12 + 8 * i + 7;
      if ((v12 & 1) == 0)
      {
        v13 = v11;
      }

      v14 = *(*v13 + 60);
      v16 = *(this + 58);
      v15 = *(this + 59);
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      if (v17 <= v14)
      {
        v18 = v14 + 1;
        if (v18 > v17)
        {
          std::vector<std::vector<int>>::__append(this + 464, v18 - v17);
        }

        else if (v18 < v17)
        {
          v19 = v16 + 24 * v18;
          if (v15 != v19)
          {
            v20 = *(this + 59);
            do
            {
              v22 = *(v20 - 24);
              v20 -= 24;
              v21 = v22;
              if (v22)
              {
                *(v15 - 16) = v21;
                operator delete(v21);
              }

              v15 = v20;
            }

            while (v20 != v19);
          }

          *(this + 59) = v19;
        }
      }

      std::vector<int>::push_back[abi:ne200100](*(this + 58) + 24 * v14, &v31);
      i = v31 + 1;
    }

    v7 = *(this + 34);
  }

  std::vector<BOOL>::resize(this + 488, *(v7 + 32), 0);
  v23 = *(this + 34);
  if (*(v23 + 16))
  {
    v24 = *(v23 + 128);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v24 + 24);
      v27 = *(this + 61);
      v28 = 4 * v25;
      do
      {
        v30 = *v26++;
        v29 = v30;
        if (~v30 > v30)
        {
          v29 = ~v29;
        }

        *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v28 -= 4;
      }

      while (v28);
    }
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  v174 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this + 32);
  absl::lts_20240722::Mutex::ReaderLock((this + 960));
  v167 = 0;
  v168 = 0;
  v170 = xmmword_23CE306D0;
  v169 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  operations_research::sat::CpModelProto::CpModelProto(v165, 0);
  operations_research::sat::CpModelProto::Clear((this + 512));
  if (*(this + 136) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 134);
  }

  v2 = (this + 328);
  if (*(this + 84))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 134, (this + 328), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
  }

  operations_research::sat::PresolveContext::PresolveContext(__u, &v167, (this + 512), v165);
  operations_research::sat::ModelCopy::ModelCopy(v128, __u);
  operations_research::sat::ModelCopy::ImportAndSimplifyConstraints(v128, *(this + 34), 0);
  if (v140 >= 2)
  {
    operator delete((v142 - (v141 & 1) - 8));
  }

  if (__p)
  {
    v139 = __p;
    operator delete(__p);
  }

  if (v135 >= 2)
  {
    operator delete((v137 - (v136 & 1) - 8));
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (*&v130[8] >= 2uLL)
  {
    operator delete((*&v130[24] - (v130[16] & 1) - 8));
  }

  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v128[8])
  {
    *&v128[16] = *&v128[8];
    operator delete(*&v128[8]);
  }

  operations_research::sat::PresolveContext::~PresolveContext(__u);
  operations_research::sat::CpModelProto::~CpModelProto(v165);
  operations_research::sat::Model::~Model(&v167);
  *(this + 85) = *(this + 84);
  *(this + 88) = *(this + 87);
  *(this + 91) = *(this + 90);
  operations_research::sat::CompactVectorVector<int,int>::reserve(this + 84, *(this + 142));
  v3 = (this + 696);
  v118 = (this + 720);
  if (*(this + 142) < 1)
  {
    goto LABEL_101;
  }

  v4 = 0;
  v122 = (this + 560);
  while (2)
  {
    v120 = v4;
    v5 = *v122 + 8 * v4 + 7;
    if (*v122)
    {
      v6 = v5;
    }

    else
    {
      v6 = (this + 560);
    }

    if (*(*v6 + 15) == 19)
    {
      goto LABEL_21;
    }

    *(this + 118) = *(this + 117);
    operations_research::sat::UsedVariables(*v6, __u);
    v7 = *__u;
    v8 = v149;
    if (*__u == v149)
    {
      if (!*__u)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    do
    {
      v39 = *v7;
      if (*v2)
      {
        v40 = (*v2 + 8 * v39 + 7);
      }

      else
      {
        v40 = (this + 328);
      }

      v41 = *v40;
      if (*(v41 + 16) != 2 || **(v41 + 24) != *(*(v41 + 24) + 8))
      {
        v42 = *(this + 118);
        v43 = *(this + 119);
        if (v42 < v43)
        {
          *v42 = v39;
          v38 = v42 + 4;
        }

        else
        {
          v44 = *(this + 117);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v48 = v43 - v44;
          if (v48 >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v49 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            if (!(v49 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v50 = (v42 - v44) >> 2;
          v51 = (4 * v46);
          v52 = (4 * v46 - 4 * v50);
          *v51 = v39;
          v38 = v51 + 1;
          memcpy(v52, v44, v45);
          *(this + 117) = v52;
          *(this + 118) = v38;
          *(this + 119) = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        *(this + 118) = v38;
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = *__u;
    if (*__u)
    {
LABEL_28:
      v149 = v7;
      operator delete(v7);
    }

LABEL_29:
    if (*v122)
    {
      v9 = (*v122 + 8 * v120 + 7);
    }

    else
    {
      v9 = (this + 560);
    }

    operations_research::sat::UsedIntervals(*v9, __u);
    v10 = *__u;
    v11 = *__u;
    v119 = *__u;
    v121 = v149;
    if (*__u == v149)
    {
      if (*__u)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    do
    {
      v20 = (*v122 + 8 * *v11 + 7);
      if ((*v122 & 1) == 0)
      {
        v20 = (this + 560);
      }

      operations_research::sat::UsedVariables(*v20, v128);
      v21 = *&v128[8];
      v22 = *v128;
      if (*v128 == *&v128[8])
      {
        if (*v128)
        {
          goto LABEL_69;
        }
      }

      else
      {
        do
        {
          v24 = *v22;
          if (*v2)
          {
            v25 = (*v2 + 8 * v24 + 7);
          }

          else
          {
            v25 = (this + 328);
          }

          v26 = *v25;
          if (*(v26 + 16) != 2 || **(v26 + 24) != *(*(v26 + 24) + 8))
          {
            v27 = *(this + 118);
            v28 = *(this + 119);
            if (v27 < v28)
            {
              *v27 = v24;
              v23 = v27 + 4;
            }

            else
            {
              v29 = *(this + 117);
              v30 = v27 - v29;
              v31 = (v27 - v29) >> 2;
              v32 = v31 + 1;
              if ((v31 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v33 = v28 - v29;
              if (v33 >> 1 > v32)
              {
                v32 = v33 >> 1;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v34 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                if (!(v34 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v35 = (v27 - v29) >> 2;
              v36 = (4 * v31);
              v37 = (4 * v31 - 4 * v35);
              *v36 = v24;
              v23 = v36 + 1;
              memcpy(v37, v29, v30);
              *(this + 117) = v37;
              *(this + 118) = v23;
              *(this + 119) = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            *(this + 118) = v23;
          }

          ++v22;
        }

        while (v22 != v21);
        v22 = *v128;
        if (*v128)
        {
LABEL_69:
          *&v128[8] = v22;
          operator delete(v22);
        }
      }

      ++v11;
    }

    while (v11 != v121);
    v10 = *__u;
    if (!*__u)
    {
      goto LABEL_35;
    }

LABEL_34:
    v149 = v10;
    operator delete(v10);
LABEL_35:
    v12 = *(this + 118);
    v13 = *(this + 117);
    v3 = (this + 696);
    if ((v12 - v13) >= 5)
    {
      if (v119 != v121)
      {
        v14 = *(this + 117);
        v15 = *(this + 118);
        std::__sort<std::__less<int,int> &,int *>();
        v13 = *(this + 117);
        v12 = *(this + 118);
        if (v13 != v12)
        {
          v16 = v13 + 4;
          while (v16 != v12)
          {
            v17 = *(v16 - 1);
            v18 = *v16;
            v16 += 4;
            if (v17 == v18)
            {
              v19 = v16 - 8;
              while (v16 != v12)
              {
                v53 = v17;
                v17 = *v16;
                if (v53 != *v16)
                {
                  *(v19 + 1) = v17;
                  v19 += 4;
                }

                v16 += 4;
              }

              if (v19 + 4 != v12)
              {
                v12 = v19 + 4;
                *(this + 118) = v19 + 4;
              }

              break;
            }
          }
        }
      }

      __u[0] = (*(this + 91) - *(this + 90)) >> 2;
      std::vector<int>::push_back[abi:ne200100](this + 672, __u);
      __u[0] = (v12 - v13) >> 2;
      std::vector<int>::push_back[abi:ne200100](this + 696, __u);
      std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v118, *(this + 91), v13, v12, (v12 - v13) >> 2);
    }

LABEL_21:
    v4 = v120 + 1;
    if (v120 + 1 < *(this + 142))
    {
      continue;
    }

    break;
  }

LABEL_101:
  operations_research::sat::CompactVectorVector<int,int>::ResetFromTranspose(this + 31, this + 84, *(*(this + 34) + 32));
  *(this + 112) = *(this + 111);
  v54 = *(*(this + 34) + 32);
  v55 = (this + 864);
  LOBYTE(__u[0]) = 0;
  std::vector<BOOL>::assign(this + 864, v54, __u);
  __u[0] = 0;
  if (v54 >= 1)
  {
    v56 = 0;
    do
    {
      if (*v2)
      {
        v57 = (*v2 + 8 * v56 + 7);
      }

      else
      {
        v57 = (this + 328);
      }

      v58 = *v57;
      if (*(v58 + 16) != 2 || **(v58 + 24) != *(*(v58 + 24) + 8))
      {
        std::vector<int>::push_back[abi:ne200100](this + 888, __u);
        v56 = __u[0];
        *(*v55 + ((__u[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(__u[0]);
      }

      __u[0] = ++v56;
    }

    while (v56 < v54);
  }

  *(this + 115) = *(this + 114);
  v59 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  if (*(*(this + 34) + 128))
  {
    v60 = *(*(this + 34) + 128);
  }

  else
  {
    v60 = &operations_research::sat::_CpObjectiveProto_default_instance_;
  }

  v61 = *(v60 + 4);
  if (v61)
  {
    v62 = v60[3];
    v63 = 4 * v61;
    do
    {
      __u[0] = *v62;
      if ((*(*v55 + ((__u[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(__u[0])))
      {
        std::vector<int>::push_back[abi:ne200100](this + 912, __u);
      }

      ++v62;
      v63 -= 4;
    }

    while (v63);
  }

  *v129 = 0u;
  memset(v130, 0, 28);
  memset(v128, 0, sizeof(v128));
  v132 = 0;
  v133 = 0;
  v131 = 0;
  LODWORD(v134) = 0;
  DenseConnectedComponentsFinder::SetNumberOfNodes(v128, v54);
  v65 = *(this + 85);
  v66 = *(this + 84);
  if (v65 != v66)
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = *(*v3 + 4 * v67);
      if (v69 >= 2)
      {
        v70 = (*v118 + 4 * *(v66 + 4 * v67));
        for (i = 1; i != v69; ++i)
        {
          DenseConnectedComponentsFinder::AddEdge(v128, *v70, v70[i]);
        }

        v65 = *(this + 85);
        v66 = *(this + 84);
      }

      v67 = ++v68;
    }

    while (v68 < ((v65 - v66) >> 2));
  }

  if (operations_research::sat::NeighborhoodGeneratorHelper::ObjectiveDomainIsConstraining(this, v64))
  {
    if (*(*(this + 34) + 128))
    {
      v59 = *(*(this + 34) + 128);
    }

    v72 = *(v59 + 4);
    if (v72 >= 2)
    {
      v73 = 4 * v72;
      v74 = 4;
      do
      {
        v75 = v59[3];
        if (~*v75 <= *v75)
        {
          v76 = *v75;
        }

        else
        {
          v76 = ~*v75;
        }

        v77 = v75[v74 / 4];
        if (~v77 <= v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = ~v77;
        }

        DenseConnectedComponentsFinder::AddEdge(v128, v76, v78);
        v74 += 4;
      }

      while (v73 != v74);
    }
  }

  v79 = *(this + 103);
  v80 = *(this + 102);
  if (v79 != v80)
  {
    v81 = *(this + 103);
    do
    {
      v83 = *(v81 - 24);
      v81 -= 24;
      v82 = v83;
      if (v83)
      {
        *(v79 - 16) = v82;
        operator delete(v82);
      }

      v79 = v81;
    }

    while (v81 != v80);
  }

  *(this + 103) = v80;
  __u[0] = -1;
  std::vector<int>::assign(this + 35, v54, __u);
  __u[0] = 0;
  if (v54 >= 1)
  {
    v84 = 0;
    do
    {
      if (*v2)
      {
        v85 = (*v2 + 8 * v84 + 7);
      }

      else
      {
        v85 = (this + 328);
      }

      v86 = *v85;
      if (*(v86 + 16) != 2 || **(v86 + 24) != *(*(v86 + 24) + 8))
      {
        Root = DenseConnectedComponentsFinder::FindRoot(v128, v84);
        v88 = Root;
        v89 = *(this + 105);
        v90 = *(v89 + 4 * Root);
        v91 = *(this + 102);
        if (v90 == -1)
        {
          v93 = *(this + 103);
          v94 = v93 - v91;
          v95 = 0xAAAAAAAAAAAAAAABLL * ((v93 - v91) >> 3);
          *(v89 + 4 * Root) = v95;
          v96 = *(this + 104);
          if (v93 >= v96)
          {
            v98 = v95 + 1;
            if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v99 = 0xAAAAAAAAAAAAAAABLL * ((v96 - v91) >> 3);
            if (2 * v99 > v98)
            {
              v98 = 2 * v99;
            }

            if (v99 >= 0x555555555555555)
            {
              v100 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v100 = v98;
            }

            if (v100)
            {
              if (v100 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v101 = 24 * v95;
            v97 = 24 * v95 + 24;
            v102 = 24 * v95 - v94;
            *v101 = 0;
            *(v101 + 8) = 0;
            *(v101 + 16) = 0;
            memcpy((v101 - v94), v91, v94);
            *(this + 102) = v102;
            *(this + 103) = v97;
            *(this + 104) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            v97 = (v93 + 24);
            *v93 = 0;
            *(v93 + 1) = 0;
            *(v93 + 2) = 0;
          }

          *(this + 103) = v97;
          v90 = *(v89 + 4 * v88);
          v92 = *(this + 105);
          v91 = *(this + 102);
        }

        else
        {
          v92 = *(this + 105);
        }

        *(v92 + 4 * __u[0]) = v90;
        std::vector<int>::push_back[abi:ne200100](&v91[24 * *(v89 + 4 * v88)], __u);
        v84 = __u[0];
      }

      __u[0] = ++v84;
    }

    while (v84 < v54);
  }

  if (operations_research::sat::SharedResponseManager::LoggingIsEnabled(*(this + 37)))
  {
    v103 = *(this + 102);
    v104 = *(this + 103);
    if (v103 != v104)
    {
      v105 = (v103[1] - *v103) >> 2;
      operator new();
    }

    std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(0, 0, __u, 0, 1);
    v126[0] = 0;
    v126[1] = 0;
    v127 = 0;
    v106 = *(this + 37);
    v125 = 5;
    strcpy(v124, "Model");
    v108 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(this + 112) - *(this + 111)) >> 2, &v147, v107);
    *&v146 = &v147;
    *(&v146 + 1) = v108 - &v147;
    v110 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v54, v145, v109) - v145;
    v143 = v145;
    v144 = v110;
    v111 = *(this + 142);
    v112 = *(*(this + 34) + 56);
    *__u = "var:";
    v149 = 4;
    v150 = v146;
    v151 = "/";
    v152 = 1;
    v153 = v145;
    v154 = v110;
    v155 = " constraints:";
    v156 = 13;
    v114 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v111, v166, v113);
    v165[0] = v166;
    v165[1] = v114 - v166;
    v157 = v166;
    v158 = v114 - v166;
    v159 = "/";
    v160 = 1;
    v116 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v112, &v169, v115);
    v167 = &v169;
    v168 = v116 - &v169;
    v161 = &v169;
    v162 = v116 - &v169;
    v163 = v126;
    v164 = 0;
    absl::lts_20240722::strings_internal::CatPieces(__u, 9, &v123);
    operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v106, v124, &v123);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
      if (v125 < 0)
      {
        goto LABEL_183;
      }

LABEL_172:
      if (SHIBYTE(v127) < 0)
      {
LABEL_184:
        operator delete(v126[0]);
      }
    }

    else
    {
      if ((v125 & 0x80000000) == 0)
      {
        goto LABEL_172;
      }

LABEL_183:
      operator delete(v124[0]);
      if (SHIBYTE(v127) < 0)
      {
        goto LABEL_184;
      }
    }
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (*v130)
  {
    *&v130[8] = *v130;
    operator delete(*v130);
  }

  if (*&v128[24])
  {
    v129[0] = *&v128[24];
    operator delete(*&v128[24]);
  }

  if (*v128)
  {
    *&v128[8] = *v128;
    operator delete(*v128);
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 120);
  absl::lts_20240722::Mutex::Unlock((this + 256));
  v117 = *MEMORY[0x277D85DE8];
}

void sub_23CA32A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v60)
  {
    operator delete(v60);
  }

  DenseConnectedComponentsFinder::~DenseConnectedComponentsFinder(&a28);
  absl::lts_20240722::Mutex::ReaderUnlock((v59 + 960));
  absl::lts_20240722::Mutex::Unlock((v59 + 256));
  _Unwind_Resume(a1);
}

void operations_research::sat::SubSolver::~SubSolver(operations_research::sat::SubSolver *this)
{
  *this = &unk_284F3CEE8;
  *(this + 19) = &unk_284F3A5F8;
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*(this + 1));
      return;
    }
  }

  else
  {
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 7));
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::Synchronize(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    operations_research::sat::SharedBoundsManager::GetChangedBounds(v2, *(this + 70), &v37, &v34, &v31);
    absl::lts_20240722::Mutex::Lock(this + 120);
    v4 = v37;
    if (v38 == v37)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = (this + 328);
      v8 = 1;
      do
      {
        v9 = v4[v5];
        v10 = *(v34 + v5);
        v11 = v9;
        v12 = *(v31 + v5);
        if (dword_2810BFB90 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_6, dword_2810BFB90))
        {
          v15 = (*v7 & 1) != 0 ? (*v7 + 8 * v9 + 7) : (this + 328);
          v16 = *v15;
          v17 = *(v16 + 24);
          v18 = *v17;
          v19 = v17[*(v16 + 16) - 1];
          if (dword_2810BFBA8 >= 3)
          {
            v26 = v19;
            v27 = v18;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFBA0, dword_2810BFBA8))
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v30, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 108);
              v25 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v30, 3);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "Variable: ", 0xAuLL);
              LODWORD(v29[0]) = v9;
              v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v25, v29);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " old domain: [", 0xEuLL);
              v29[0] = v27;
              v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v20, v29);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, ", ", 2uLL);
              v29[0] = v26;
              v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v21, v29);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "] new domain: [", 0xFuLL);
              v29[0] = v10;
              v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v22, v29);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, ", ", 2uLL);
              v29[0] = v12;
              v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v23, v29);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "]", 1uLL);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v30);
            }
          }
        }

        if (*v7)
        {
          v13 = (*v7 + 8 * v11 + 7);
        }

        else
        {
          v13 = this + 328;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v13 + 24), *(*v13 + 16), v30, v3);
        operations_research::Domain::Domain(v28, v10, v12);
        operations_research::Domain::IntersectionWith(v30, v28, v29);
        if (v28[0])
        {
          operator delete(v28[1]);
        }

        if (!operations_research::Domain::IsEmpty(v29))
        {
          if (*v7)
          {
            v14 = (*v7 + 8 * v11 + 7);
          }

          else
          {
            v14 = (this + 328);
          }

          operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v29, *v14);
          v6 |= operations_research::Domain::IsFixed(v29);
        }

        if (v29[0])
        {
          operator delete(v29[1]);
        }

        if (v30[0])
        {
          operator delete(v30[1]);
        }

        v5 = v8;
        v4 = v37;
        ++v8;
      }

      while (v5 < v38 - v37);
    }

    absl::lts_20240722::Mutex::Unlock((this + 960));
    if (v6)
    {
      operations_research::sat::NeighborhoodGeneratorHelper::RecomputeHelperData(this);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }
}

void sub_23CA33074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a18);
  absl::lts_20240722::Mutex::Unlock((v25 + 960));
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    v28 = a24;
    if (!a24)
    {
LABEL_3:
      v29 = *(v26 - 112);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  a25 = v28;
  operator delete(v28);
  v29 = *(v26 - 112);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v26 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::NeighborhoodGeneratorHelper::ObjectiveDomainIsConstraining(operations_research::sat::NeighborhoodGeneratorHelper *this, __n128 a2)
{
  v2 = *(this + 34);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 128);
  v4 = *(v3 + 64);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 16);
  if (v5 < 1)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  v6 = *(v3 + 48);
  v7 = *(this + 41);
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v15 = *(v3 + 24);
    v16 = v7 + 7;
    do
    {
      v18 = *v15++;
      v17 = v18;
      v19 = ~v18 <= v18;
      v21 = *v6++;
      v20 = v21;
      if (!v19)
      {
        v17 = ~v17;
      }

      v22 = *(v16 + 8 * v17);
      v23 = *(v22 + 24);
      v24 = *v23 * v20;
      v25 = v23[*(v22 + 16) - 1] * v20;
      if (v25 >= v24)
      {
        v26 = *v23 * v20;
      }

      else
      {
        v26 = v25;
      }

      v12 += v26;
      if (v24 > v25)
      {
        v25 = v24;
      }

      v13 += v25;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = *(v7 + 24);
    v9 = *v8;
    v10 = v8[*(v7 + 16) - 1];
    if (v5 == 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_33:
      v40 = &v6[v11];
      v41 = v5 - v11;
      do
      {
        v42 = *v40++;
        v43 = v9 * v42;
        v44 = v10 * v42;
        if (v10 * v42 >= v9 * v42)
        {
          v45 = v43;
        }

        else
        {
          v45 = v44;
        }

        v12 += v45;
        if (v43 > v44)
        {
          v44 = v43;
        }

        v13 += v44;
        --v41;
      }

      while (v41);
      goto LABEL_40;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v11 = v5 & 0x7FFFFFFE;
    v31 = v6 + 1;
    v32 = v11;
    do
    {
      v33 = *(v31 - 1);
      v34 = v9 * v33;
      v35 = v9 * *v31;
      v36 = v10 * v33;
      v37 = v10 * *v31;
      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      if (v37 >= v35)
      {
        v39 = v9 * *v31;
      }

      else
      {
        v39 = v10 * *v31;
      }

      v27 += v38;
      v28 += v39;
      if (v34 > v36)
      {
        v36 = v34;
      }

      if (v35 > v37)
      {
        v37 = v9 * *v31;
      }

      v29 += v36;
      v30 += v37;
      v31 += 2;
      v32 -= 2;
    }

    while (v32);
    v12 = v28 + v27;
    v13 = v30 + v29;
    if (v11 != v5)
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  operations_research::Domain::FromFlatSpanOfIntervals(*(v3 + 72), v4, v53, a2);
  operations_research::Domain::Domain(v51, v12, v13);
  v46 = operations_research::Domain::Max(v53);
  operations_research::Domain::Domain(v50, 0x8000000000000000, v46);
  operations_research::Domain::IntersectionWith(v51, v50, v52);
  if (v50[0])
  {
    operator delete(v50[1]);
  }

  if (v51[0])
  {
    operator delete(v51[1]);
  }

  IsIncludedIn = operations_research::Domain::IsIncludedIn(v52, v53);
  v48 = IsIncludedIn;
  if (v52[0])
  {
    operator delete(v52[1]);
    result = v48 ^ 1u;
    if (v53[0])
    {
LABEL_48:
      v49 = result;
      operator delete(v53[1]);
      return v49;
    }
  }

  else
  {
    result = IsIncludedIn ^ 1u;
    if (v53[0])
    {
      goto LABEL_48;
    }
  }

  return result;
}

void sub_23CA333C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, void *__p)
{
  if (a15)
  {
    operator delete(__p);
  }

  if (*(v16 - 40))
  {
    operator delete(*(v16 - 32));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CompactVectorVector<int,int>::ResetFromTranspose(std::vector<int> *this, uint64_t *a2, std::vector<int>::size_type __n)
{
  v3 = __n;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    this->__end_ = this->__begin_;
    this[1].__end_ = this[1].__begin_;
    this[2].__end_ = this[2].__begin_;
    if (__n >= 1)
    {
      v50 = __n;
      __u = 0;
      std::vector<int>::assign(this, __n, &__u);
      __u = 0;
      std::vector<int>::assign(this + 1, v50, &__u);
    }

    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v6 - v5) >> 2;
  v11 = a2[3];
  v12 = a2[6];
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  do
  {
    v14 = *(v11 + 4 * v8);
    if (!v14)
    {
      goto LABEL_3;
    }

    v15 = *(v5 + 4 * v8);
    v16 = v12 + 4 * v15;
    v17 = (v14 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v17 > 6)
    {
      v19 = v17 + 1;
      v20 = (v17 + 1) & 0x7FFFFFFFFFFFFFF8;
      v18 = (v16 + 4 * v20);
      v21 = vdupq_n_s32(v3);
      v22 = (v12 + 16 + 4 * v15);
      v23 = v20;
      v24 = v21;
      do
      {
        v21 = vmaxq_s32(v21, vaddq_s32(v22[-1], v13));
        v24 = vmaxq_s32(v24, vaddq_s32(*v22, v13));
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      v3 = vmaxvq_s32(vmaxq_s32(v21, v24));
      if (v19 == v20)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v18 = (v12 + 4 * v15);
    }

    v25 = (v16 + 4 * v14);
    do
    {
      v27 = *v18++;
      v26 = v27;
      if (v3 <= v27 + 1)
      {
        v3 = v26 + 1;
      }
    }

    while (v18 != v25);
LABEL_3:
    v8 = ++v9;
  }

  while (v10 > v9);
  __u = 0;
  std::vector<int>::assign(this + 1, v3, &__u);
  v28 = *a2;
  v29 = a2[1];
  v30 = v29 - *a2;
  if (v29 != *a2)
  {
    v31 = 0;
    v32 = 0;
    v33 = v30 >> 2;
    v34 = a2[3];
    v35 = a2[6];
    do
    {
      v36 = *(v34 + 4 * v31);
      if (v36)
      {
        v37 = (v35 + 4 * *(v28 + 4 * v31));
        begin = this[1].__begin_;
        v39 = 4 * v36;
        do
        {
          v40 = *v37++;
          ++begin[v40];
          v39 -= 4;
        }

        while (v39);
      }

      v31 = ++v32;
    }

    while (v33 > v32);
  }

  __u = 0;
  std::vector<int>::assign(this, v3, &__u);
  v41 = (v3 - 2);
  if (v3 >= 2)
  {
    v42 = this[1].__begin_;
    v43 = this->__begin_ + 1;
    v44 = *this->__begin_;
    v45 = v3 - 1;
    do
    {
      v46 = *v42++;
      v44 += v46;
      *v43++ = v44;
      --v45;
    }

    while (v45);
  }

  v47 = this[2].__begin_;
  v48 = a2[7] - a2[6];
  v49 = this[2].__end_ - v47;
  if (v48 >> 2 <= v49)
  {
    if (v48 >> 2 < v49)
    {
      this[2].__end_ = (v47 + v48);
    }
  }

  else
  {
    std::vector<int>::__append(this + 2, (v48 >> 2) - v49);
  }

  v51 = *a2;
  v52 = a2[1];
  v53 = v52 - *a2;
  if (v52 != *a2)
  {
    v54 = 0;
    v55 = 0;
    v56 = v53 >> 2;
    v57 = a2[3];
    v58 = a2[6];
    do
    {
      v59 = *(v57 + 4 * v54);
      if (v59)
      {
        v60 = (v58 + 4 * *(v51 + 4 * v54));
        v61 = this->__begin_;
        v62 = this[2].__begin_;
        v63 = 4 * v59;
        do
        {
          v64 = *v60++;
          v65 = v61[v64];
          v61[v64] = v65 + 1;
          v62[v65] = v55;
          v63 -= 4;
        }

        while (v63);
      }

      v54 = ++v55;
    }

    while (v56 > v55);
  }

  v66 = (v3 - 1);
  v67 = this->__begin_;
  if (v66 >= 1)
  {
    if (v66 > 0x23 && (v73 = 4 * (v66 - 1), &v67[v41 + v73 / 0xFFFFFFFFFFFFFFFCLL] <= &v67[v41]) && &v67[v66 + v73 / 0xFFFFFFFFFFFFFFFCLL] <= &v67[v66] && ((v41 - v66) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v68 = v3 - (v66 & 0x7FFFFFF8);
      v69 = (v3 - 1) & 7;
      v74 = &v67[v66 - 3];
      v75 = v3 + 4294967294;
      v76 = v66 & 0x7FFFFFF8;
      do
      {
        v77 = &v67[v75];
        v78 = *(v77 - 3);
        *(v74 - 1) = *(v77 - 7);
        *v74 = v78;
        v74 -= 8;
        v75 -= 8;
        v76 -= 8;
      }

      while (v76);
      if ((v66 & 0x7FFFFFF8) == v66)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v68 = v3;
      v69 = (v3 - 1);
    }

    v70 = v68 + 4294967294u;
    v71 = v69 + 1;
    v72 = &v67[v69];
    do
    {
      *v72-- = v67[v70--];
      --v71;
    }

    while (v71 > 1);
  }

LABEL_44:
  *v67 = 0;
}

void DenseConnectedComponentsFinder::~DenseConnectedComponentsFinder(DenseConnectedComponentsFinder *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a2 + 8, 0);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 199) = 0u;
  *(a2 + 215) = 0u;
  *(a2 + 231) = 0;
  *a2 = 1;
  absl::lts_20240722::Mutex::ReaderLock((this + 960));
  if ((a2 + 32) != (this + 328))
  {
    if (*(a2 + 40) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((a2 + 32));
    }

    if (*(this + 84))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((a2 + 32), (this + 328), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 120);
}

void sub_23CA33900(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v2 + 960));
  operations_research::sat::Neighborhood::~Neighborhood(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::Neighborhood::~Neighborhood(operations_research::sat::Neighborhood *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  operations_research::sat::CpModelProto::~CpModelProto((this + 8));
}

BOOL operations_research::sat::NeighborhoodGeneratorHelper::IntervalIsActive(operations_research::sat::NeighborhoodGeneratorHelper *this, int a2, const operations_research::sat::CpSolverResponse *a3)
{
  v3 = *(this + 34);
  v5 = *(v3 + 48);
  v4 = (v3 + 48);
  v6 = v5 + 8 * a2 + 7;
  if (v5)
  {
    v4 = v6;
  }

  v7 = *v4;
  if (*(v7 + 16) == 1)
  {
    v8 = **(v7 + 24);
    v9 = ~v8 <= v8 ? **(v7 + 24) : ~v8;
    if (v8 >= 0 != (*(*(a3 + 4) + 8 * v9) != 0))
    {
      return 0;
    }
  }

  v11 = *(v7 + 60);
  if (v11 == 19)
  {
    v12 = *(v7 + 48);
  }

  else
  {
    v12 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  v13 = v12[3];
  if (!v13)
  {
    v13 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v14 = *(v13 + 4);
  if (v14)
  {
    v15 = *(this + 41);
    if (v15)
    {
      v16 = v13[3];
      v17 = v15 + 7;
      v18 = 4 * v14;
      while (1)
      {
        v19 = *(v17 + 8 * *v16);
        if (*(v19 + 16) != 2 || **(v19 + 24) != *(*(v19 + 24) + 8))
        {
          return 1;
        }

        ++v16;
        v18 -= 4;
        if (!v18)
        {
          goto LABEL_23;
        }
      }
    }

    if (*(v15 + 16) != 2 || **(v15 + 24) != *(*(v15 + 24) + 8))
    {
      return 1;
    }
  }

LABEL_23:
  if (v11 == 19)
  {
    v20 = *(*(v7 + 48) + 40);
    if (!v20)
    {
      v20 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v21 = *(v20 + 4);
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v20 = qword_2810BECA8;
    if (!qword_2810BECA8)
    {
      v20 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v21 = *(v20 + 4);
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  v22 = *(this + 41);
  if (v22)
  {
    v23 = v20[3];
    v24 = v22 + 7;
    v25 = 4 * v21;
    while (1)
    {
      v26 = *(v24 + 8 * *v23);
      if (*(v26 + 16) != 2 || **(v26 + 24) != *(*(v26 + 24) + 8))
      {
        return 1;
      }

      ++v23;
      v25 -= 4;
      if (!v25)
      {
        goto LABEL_39;
      }
    }
  }

  if (*(v22 + 16) == 2 && **(v22 + 24) == *(*(v22 + 24) + 8))
  {
LABEL_39:
    if (v11 == 19)
    {
      v27 = *(*(v7 + 48) + 32);
      if (!v27)
      {
        v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v28 = *(v27 + 4);
      if (v28)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v27 = qword_2810BECA0;
      if (!qword_2810BECA0)
      {
        v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v28 = *(v27 + 4);
      if (v28)
      {
LABEL_43:
        v29 = *(this + 41);
        if (v29)
        {
          v30 = v27[3];
          v31 = v29 + 7;
          v32 = 4 * v28;
          while (1)
          {
            v33 = *(v31 + 8 * *v30);
            if (*(v33 + 16) != 2 || **(v33 + 24) != *(*(v33 + 24) + 8))
            {
              break;
            }

            result = 0;
            ++v30;
            v32 -= 4;
            if (!v32)
            {
              return result;
            }
          }
        }

        else if (*(v29 + 16) == 2)
        {
          return **(v29 + 24) != *(*(v29 + 24) + 8);
        }

        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::Mutex::ReaderLock((a1 + 960));
  absl::lts_20240722::Mutex::ReaderUnlock((a1 + 960));
}

void sub_23CA33CD4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetActiveRectangles(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v4) >> 3) < 0x14)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(v4 + 464) - *(v4 + 456)) >> 2;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(this, v5, &__p);
  v7 = __p;
  v6 = v55;
  if (v55 - __p == 28)
  {
    v8 = 8;
  }

  else
  {
    v8 = (((v55 - __p) >> 2) - 1) / 7 + ((v55 - __p) >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v51, v8);
  while (v7 != v6)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v51, v7, v56);
    if (v58 == 1)
    {
      *v57 = *v7;
    }

    ++v7;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *(this + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v9) >> 3) >= 0x16)
  {
    v10 = *(v9 + 504);
    v48 = *(v9 + 512);
    if (v48 != v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(this + 34);
        v14 = *(v12 + 48);
        v13 = (v12 + 48);
        v15 = (v14 + 8 * *v10 + 7);
        if ((v14 & 1) == 0)
        {
          v15 = v13;
        }

        v16 = *v15;
        v17 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v16 + 60) == 21)
        {
          v17 = *(v16 + 48);
        }

        v50 = v10;
        v18 = *(v17 + 4);
        if (v18 >= 1)
        {
          break;
        }

LABEL_15:
        *a3 = 0;
        v10 = v50 + 1;
        if (v50 + 1 == v48)
        {
          goto LABEL_57;
        }
      }

      v19 = 0;
      while (1)
      {
        v20 = *(v17[3] + v19);
        v21 = *(v17[6] + v19);
        if (v51 > 1)
        {
          break;
        }

        v23 = v52 == v20 || v52 == v21;
        if (*(&v51 + 1) >= 2uLL && v23)
        {
          goto LABEL_34;
        }

LABEL_24:
        if (++v19 >= v18)
        {
          goto LABEL_15;
        }
      }

      v29 = 0;
      _X10 = v52;
      __asm { PRFM            #4, [X10] }

      v35 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
      v36 = vdup_n_s8(v35 & 0x7F);
      v37 = ((v52 >> 12) ^ (v35 >> 7)) & v51;
      v38 = *(v52 + v37);
      v39 = vceq_s8(v38, v36);
      if (!v39)
      {
        goto LABEL_47;
      }

LABEL_45:
      while (*(v53 + 4 * ((v37 + (__clz(__rbit64(v39)) >> 3)) & v51)) != v20)
      {
        v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v39)
        {
LABEL_47:
          while (!*&vceq_s8(v38, 0x8080808080808080))
          {
            v29 += 8;
            v37 = (v29 + v37) & v51;
            v38 = *(v52 + v37);
            v39 = vceq_s8(v38, v36);
            if (v39)
            {
              goto LABEL_45;
            }
          }

          v40 = 0;
          __asm { PRFM            #4, [X10] }

          v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v21) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v21));
          v43 = vdup_n_s8(v42 & 0x7F);
          v44 = ((v52 >> 12) ^ (v42 >> 7)) & v51;
          v45 = *(v52 + v44);
          v46 = vceq_s8(v45, v43);
          if (!v46)
          {
            goto LABEL_53;
          }

LABEL_51:
          while (*(v53 + 4 * ((v44 + (__clz(__rbit64(v46)) >> 3)) & v51)) != v21)
          {
            v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v46)
            {
LABEL_53:
              while (!*&vceq_s8(v45, 0x8080808080808080))
              {
                v40 += 8;
                v44 = (v40 + v44) & v51;
                v45 = *(v52 + v44);
                v46 = vceq_s8(v45, v43);
                if (v46)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_24;
            }
          }

          break;
        }
      }

LABEL_34:
      v24 = a3[2];
      if (v11 < v24)
      {
        *v11 = v20 | (v21 << 32);
        v11 += 8;
      }

      else
      {
        v25 = v11;
        v26 = v11 >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          *a3 = 0;
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v24 >> 2 > v27)
        {
          v27 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          *a3 = 0;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v47 = (8 * v26);
        *v47 = v20 | (v21 << 32);
        v11 = (v47 + 1);
        memcpy(0, 0, v25);
        a3[1] = v11;
        a3[2] = 0;
      }

      a3[1] = v11;
      v18 = *(v17 + 4);
      goto LABEL_24;
    }
  }

LABEL_57:
  if (v51 >= 2)
  {
    operator delete((v52 - (BYTE8(v51) & 1) - 8));
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }
}

void sub_23CA34194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets@<X0>(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v42[0] = 0;
  v42[1] = 0;
  v42[2] = &unk_23CE31C20;
  v41[0] = a2;
  v41[1] = v42;
  v2 = *(this + 58);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
  if (v3 >= 0x15)
  {
    v5 = v2[60];
    v6 = v2[61];
    if (v6 != v5)
    {
      do
      {
        v7 = *(this + 34);
        v9 = *(v7 + 48);
        v8 = (v7 + 48);
        v10 = (v9 + 8 * *v5 + 7);
        if ((v9 & 1) == 0)
        {
          v10 = v8;
        }

        v11 = *v10;
        v12 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
        if (*(v11 + 60) == 20)
        {
          v12 = *(v11 + 48);
        }

        v13 = v12[3];
        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v41, *(v12 + 4));
        ++v5;
      }

      while (v5 != v6);
      v2 = *(this + 58);
      v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
    }

    if (v3 >= 0x17)
    {
      v14 = v2[66];
      v15 = v2[67];
      if (v15 != v14)
      {
        do
        {
          v16 = *(this + 34);
          v18 = *(v16 + 48);
          v17 = (v16 + 48);
          v19 = (v18 + 8 * *v14 + 7);
          if ((v18 & 1) == 0)
          {
            v19 = v17;
          }

          v20 = *v19;
          v21 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          if (*(v20 + 60) == 22)
          {
            v21 = *(v20 + 48);
          }

          v22 = v21[4];
          operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v41, *(v21 + 6));
          ++v14;
        }

        while (v14 != v15);
        v2 = *(this + 58);
        v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v2) >> 3);
      }
    }

    if (v3 >= 0x16)
    {
      v23 = v2[63];
      for (i = v2[64]; v23 != i; ++v23)
      {
        v25 = *v23;
        v26 = *(this + 34);
        v28 = *(v26 + 48);
        v27 = (v26 + 48);
        v29 = v28 + 8 * v25 + 7;
        if (v28)
        {
          v27 = v29;
        }

        v30 = *v27;
        v31 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v30 + 60) == 21)
        {
          v31 = *(v30 + 48);
        }

        v32 = v31[3];
        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v41, *(v31 + 4));
        v33 = *(this + 34);
        v35 = *(v33 + 48);
        v34 = (v33 + 48);
        v36 = v35 + 8 * v25 + 7;
        if (v35)
        {
          v34 = v36;
        }

        v37 = *v34;
        v38 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
        if (*(v37 + 60) == 21)
        {
          v38 = *(v37 + 48);
        }

        v39 = v38[6];
        operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(v41, *(v38 + 10));
      }
    }
  }

  return absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::~raw_hash_set(v42);
}

void sub_23CA3444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::~raw_hash_set(va);
  std::vector<std::vector<int>>::~vector[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetUniqueIntervalSets(void)const::$_0::operator()<google::protobuf::RepeatedField<int>>(uint64_t *a1, int a2)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__sort<std::__less<int,int> &,int *>();
  v12 = a1[1];
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::EmplaceDecomposable::operator()<std::vector<int>,std::vector<int> const&>(&v12, &__p, &__p, v3, v4, v8);
  if (v8[16] == 1)
  {
    v5 = *a1;
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 16))
    {
      v7 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(v5, &__p);
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      if (v10 != __p)
      {
        if (((v10 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v7 = v6 + 3;
      *(v5 + 8) = v6 + 3;
    }

    *(v5 + 8) = v7;
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_23CA34650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  *(v14 + 8) = v15;
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int **a5@<X8>)
{
  v410 = a3;
  v5 = xmmword_23CE306D0;
  v429 = xmmword_23CE306D0;
  v6 = a1[58];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v6) >> 3);
  if (v7 >= 0x15)
  {
    v8 = a2;
    v9 = v6[60];
    v425 = v6[61];
    if (v425 != v9)
    {
      do
      {
        v10 = a1[34];
        v12 = *(v10 + 48);
        v11 = (v10 + 48);
        v13 = v12 + 8 * *v9 + 7;
        if ((v12 & 1) == 0)
        {
          v13 = v11;
        }

        v14 = *v13;
        v15 = *(*v13 + 60);
        v16 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
        if (v15 == 20)
        {
          v16 = *(v14 + 48);
        }

        __p = v9;
        v17 = *(v16 + 4);
        if (v17)
        {
          v18 = v16[3];
          v19 = &v18[v17];
          do
          {
            v25 = *v18;
            v26 = *v8;
            if (*v8 > 1uLL)
            {
              v23 = 0;
              _X10 = v8[2];
              __asm { PRFM            #4, [X10] }

              v50 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25));
              v24 = (_X10 >> 12) ^ (v50 >> 7);
              v51 = vdup_n_s8(v50 & 0x7F);
              while (1)
              {
                v20 = v24 & v26;
                v21 = *(_X10 + v20);
                v22 = vceq_s8(v21, v51);
                if (v22)
                {
                  break;
                }

LABEL_14:
                if (vceq_s8(v21, 0x8080808080808080))
                {
                  goto LABEL_21;
                }

                v23 += 8;
                v24 = v23 + v20;
              }

              while (*(v8[3] + 4 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v26)) != v25)
              {
                v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v22)
                {
                  goto LABEL_14;
                }
              }
            }

            else if (v8[1] < 2uLL || *(v8 + 4) != v25)
            {
LABEL_21:
              v28 = *v11 + 8 * v25 + 7;
              if ((*v11 & 1) == 0)
              {
                v28 = v11;
              }

              v29 = *v28;
              v30 = *(*v28 + 16);
              v31 = *(v410 + 32);
              if (v30 != 1 || ((v32 = **(v29 + 24), ~v32 <= v32) ? (v33 = **(v29 + 24)) : (v33 = ~v32), (_NF = v32 < 0, v35 = *(v31 + 8 * v33), _NF) ? (v36 = 0) : (v36 = 1), v36 != (v35 != 1)))
              {
                v37 = *(v29 + 60);
                v38 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (v37 == 19)
                {
                  v38 = *(v29 + 48);
                }

                v39 = v38[3];
                if (v39)
                {
                  v40 = v39;
                }

                else
                {
                  v40 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                v41 = v40[8];
                v42 = *(v40 + 4);
                if (v42 >= 1)
                {
                  v43 = v40[6];
                  v44 = v40[3];
                  if (v42 == 1)
                  {
                    v45 = 0;
                    goto LABEL_43;
                  }

                  v52 = 0;
                  v45 = v42 & 0x7FFFFFFE;
                  v53 = v43 + 1;
                  v54 = v44 + 1;
                  v55 = v45;
                  do
                  {
                    v41 = (v41 + *(v31 + 8 * *(v54 - 1)) * *(v53 - 1));
                    v52 += *(v31 + 8 * *v54) * *v53;
                    v53 += 2;
                    v54 += 2;
                    v55 -= 2;
                  }

                  while (v55);
                  v41 = (v41 + v52);
                  if (v45 != v42)
                  {
LABEL_43:
                    v56 = v42 - v45;
                    v57 = v44 + v45;
                    v58 = &v43[v45];
                    do
                    {
                      v60 = *v58++;
                      v59 = v60;
                      v61 = *v57++;
                      v41 = (v41 + *(v31 + 8 * v61) * v59);
                      --v56;
                    }

                    while (v56);
                  }
                }

                v62 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (v37 == 19)
                {
                  v62 = *(v29 + 48);
                }

                if (v62[4])
                {
                  v63 = v62[4];
                }

                else
                {
                  v63 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                v64 = v63[8];
                v65 = *(v63 + 4);
                if (v65 >= 1)
                {
                  v66 = v63[6];
                  v67 = v63[3];
                  if (v65 == 1)
                  {
                    v68 = 0;
                    goto LABEL_56;
                  }

                  v69 = 0;
                  v68 = v65 & 0x7FFFFFFE;
                  v70 = v66 + 1;
                  v71 = v67 + 1;
                  v72 = v68;
                  do
                  {
                    v64 = (v64 + *(v31 + 8 * *(v71 - 1)) * *(v70 - 1));
                    v69 += *(v31 + 8 * *v71) * *v70;
                    v70 += 2;
                    v71 += 2;
                    v72 -= 2;
                  }

                  while (v72);
                  v64 = (v64 + v69);
                  if (v68 != v65)
                  {
LABEL_56:
                    v73 = v65 - v68;
                    v74 = v67 + v68;
                    v75 = &v66[v68];
                    do
                    {
                      v77 = *v75++;
                      v76 = v77;
                      v78 = *v74++;
                      v64 = (v64 + *(v31 + 8 * v78) * v76);
                      --v73;
                    }

                    while (v73);
                  }
                }

                operator new();
              }
            }

            ++v18;
          }

          while (v18 != v19);
        }

        v9 = __p + 1;
      }

      while (__p + 1 != v425);
      v6 = a1[58];
      v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v6) >> 3);
    }

    if (v7 >= 0x17)
    {
      v405 = v6[67];
      if (v405 != v6[66])
      {
        v79 = v6[66];
        v80 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
        while (1)
        {
          v81 = v80;
          v407 = v79;
          v82 = a1[34];
          v84 = *(v82 + 48);
          v83 = (v82 + 48);
          v85 = (v84 + 8 * *v79 + 7);
          if ((v84 & 1) == 0)
          {
            v85 = v83;
          }

          v86 = *v85;
          v87 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
          if (*(v86 + 60) == 22)
          {
            v87 = *(v86 + 48);
          }

          v413 = *a4;
          v412 = a4[1];
          v409 = a4[2];
          v436 = 0uLL;
          v437 = 0;
          if (*(v87 + 6) >= 1)
          {
            v88 = 0;
            v89 = v87 + 6;
            while (1)
            {
              v95 = *(v87[4] + v88);
              v96 = *v8;
              if (*v8 > 1uLL)
              {
                v93 = 0;
                _X10 = v8[2];
                __asm { PRFM            #4, [X10] }

                v117 = (((v81 + v95) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v81 + v95));
                v94 = (_X10 >> 12) ^ (v117 >> 7);
                v118 = vdup_n_s8(v117 & 0x7F);
                while (1)
                {
                  v90 = v94 & v96;
                  v91 = *(_X10 + v90);
                  v92 = vceq_s8(v91, v118);
                  if (v92)
                  {
                    break;
                  }

LABEL_75:
                  if (vceq_s8(v91, 0x8080808080808080))
                  {
                    goto LABEL_82;
                  }

                  v93 += 8;
                  v94 = v93 + v90;
                }

                while (*(v8[3] + 4 * ((v90 + (__clz(__rbit64(v92)) >> 3)) & v96)) != v95)
                {
                  v92 &= ((v92 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v92)
                  {
                    goto LABEL_75;
                  }
                }

                goto LABEL_133;
              }

              if (v8[1] < 2uLL || *(v8 + 4) != v95)
              {
                break;
              }

LABEL_133:
              if (++v88 >= *(v87 + 6))
              {
                v436.n128_u64[1] = 0;
                v437 = 0;
                goto LABEL_136;
              }
            }

LABEL_82:
            v98 = *v83 + 8 * v95 + 7;
            if ((*v83 & 1) == 0)
            {
              v98 = v83;
            }

            v99 = *v98;
            v100 = *(*v98 + 16);
            v101 = *(v410 + 32);
            if (v100 == 1)
            {
              v102 = **(v99 + 24);
              v103 = ~v102 <= v102 ? **(v99 + 24) : ~v102;
              _NF = v102 < 0;
              v104 = *(v101 + 8 * v103);
              v105 = !_NF;
              if (v105 == (v104 != 1))
              {
                goto LABEL_133;
              }
            }

            v106 = *(v99 + 60);
            v107 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v106 == 19)
            {
              v107 = *(v99 + 48);
            }

            v108 = v107[3];
            if (v108)
            {
              v109 = v108;
            }

            else
            {
              v109 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v110 = v109[8];
            v111 = *(v109 + 4);
            if (v111 >= 1)
            {
              v112 = v109[6];
              v113 = v109[3];
              if (v111 == 1)
              {
                v114 = 0;
LABEL_104:
                v123 = v111 - v114;
                v124 = v113 + v114;
                v125 = &v112[v114];
                do
                {
                  v127 = *v125++;
                  v126 = v127;
                  v128 = *v124++;
                  v110 = (v110 + *(v101 + 8 * v128) * v126);
                  --v123;
                }

                while (v123);
                goto LABEL_106;
              }

              v119 = 0;
              v114 = v111 & 0x7FFFFFFE;
              v120 = v112 + 1;
              v121 = v113 + 1;
              v122 = v114;
              do
              {
                v110 = (v110 + *(v101 + 8 * *(v121 - 1)) * *(v120 - 1));
                v119 += *(v101 + 8 * *v121) * *v120;
                v120 += 2;
                v121 += 2;
                v122 -= 2;
              }

              while (v122);
              v110 = (v110 + v119);
              if (v114 != v111)
              {
                goto LABEL_104;
              }
            }

LABEL_106:
            v129 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v106 == 19)
            {
              v129 = *(v99 + 48);
            }

            if (v129[4])
            {
              v130 = v129[4];
            }

            else
            {
              v130 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v131 = v130[8];
            v132 = *(v130 + 4);
            if (v132 >= 1)
            {
              v133 = v130[6];
              v134 = v130[3];
              if (v132 == 1)
              {
                v135 = 0;
              }

              else
              {
                v136 = 0;
                v135 = v132 & 0x7FFFFFFE;
                v137 = v133 + 1;
                v138 = v134 + 1;
                v139 = v135;
                do
                {
                  v131 = (v131 + *(v101 + 8 * *(v138 - 1)) * *(v137 - 1));
                  v136 += *(v101 + 8 * *v138) * *v137;
                  v137 += 2;
                  v138 += 2;
                  v139 -= 2;
                }

                while (v139);
                v131 = (v131 + v136);
                if (v135 == v132)
                {
                  goto LABEL_119;
                }
              }

              v140 = v132 - v135;
              v141 = v134 + v135;
              v142 = &v133[v135];
              do
              {
                v144 = *v142++;
                v143 = v144;
                v145 = *v141++;
                v131 = (v131 + *(v101 + 8 * v145) * v143);
                --v140;
              }

              while (v140);
            }

LABEL_119:
            if (*v89)
            {
              v146 = *v89 + 8 * v88 + 7;
            }

            else
            {
              v146 = (v87 + 6);
            }

            v147 = *v146;
            v148 = *(*v146 + 64);
            v149 = *(*v146 + 16);
            if (v149 < 1)
            {
              goto LABEL_130;
            }

            v150 = *(v147 + 48);
            v151 = *(v147 + 24);
            if (v149 == 1)
            {
              v152 = 0;
            }

            else
            {
              v153 = 0;
              v152 = v149 & 0x7FFFFFFE;
              v154 = (v150 + 8);
              v155 = (v151 + 4);
              v156 = v152;
              do
              {
                v148 += *(v101 + 8 * *(v155 - 1)) * *(v154 - 1);
                v153 += *(v101 + 8 * *v155) * *v154;
                v154 += 2;
                v155 += 2;
                v156 -= 2;
              }

              while (v156);
              v148 += v153;
              if (v152 == v149)
              {
                goto LABEL_130;
              }
            }

            v157 = v149 - v152;
            v158 = (v151 + 4 * v152);
            v159 = (v150 + 8 * v152);
            do
            {
              v161 = *v159++;
              v160 = v161;
              v162 = *v158++;
              v148 += *(v101 + 8 * v162) * v160;
              --v157;
            }

            while (v157);
LABEL_130:
            if (v110 != v131 && v148)
            {
              operator new();
            }

            v8 = a2;
            goto LABEL_133;
          }

LABEL_136:
          v436.n128_u64[0] = 0;
          if (v87[9])
          {
            v163 = v87[9];
          }

          else
          {
            v163 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v164 = v163[8];
          v165 = *(v163 + 4);
          if (v165 < 1)
          {
            v80 = v81;
            goto LABEL_148;
          }

          v166 = *(v410 + 32);
          v167 = v163[6];
          v168 = v163[3];
          v80 = v81;
          if (v165 == 1)
          {
            break;
          }

          v170 = 0;
          v169 = v165 & 0x7FFFFFFE;
          v171 = v167 + 1;
          v172 = v168 + 1;
          v173 = v169;
          do
          {
            v164 += *(v166 + 8 * *(v172 - 1)) * *(v171 - 1);
            v170 += *(v166 + 8 * *v172) * *v171;
            v171 += 2;
            v172 += 2;
            v173 -= 2;
          }

          while (v173);
          v164 += v170;
          if (v169 != v165)
          {
            goto LABEL_146;
          }

LABEL_148:
          v435 = v164;
          v433 = 0u;
          v434 = 0u;
          v432 = 0u;
          if (*(&v434 + 1))
          {
            v180 = v434;
            do
            {
              v181 = (*(*(&v432 + 1) + ((v180 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v180 & 0x7F));
              v182 = *v181;
              v183 = v181[1];
              if (v183 - *v181 >= 0x21)
              {
                v184 = v181[3];
                if (v184 < 2)
                {
                  goto LABEL_165;
                }

                if (v182 == v183)
                {
                  goto LABEL_163;
                }

                v185 = 0x7FFFFFFFFFFFFFFFLL;
                v186 = 0x7FFFFFFFFFFFFFFFLL;
                v187 = *v181;
                do
                {
                  v188 = *(v187 + 24);
                  if (v188 < v186)
                  {
                    v186 = *(v187 + 24);
                  }

                  if (v188 <= v185)
                  {
                    v186 = v185;
                  }

                  if (v188 < v185)
                  {
                    v185 = *(v187 + 24);
                  }

                  v187 += 32;
                }

                while (v187 != v183);
                if (v186 + v185 <= v184)
                {
LABEL_163:
                  if (v182 != v183)
                  {
                    operator new();
                  }

                  v213 = v184 / 2;
                  v441 = v184 / 2;
                  v444 = 0uLL;
                  v445 = 0;
                  v423 = (v184 - v184 / 2);
                  v440 = v423;
                  v80 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                  v438 = 0uLL;
                  v439 = 0;
                  v214 = *v181;
                  v421 = v181[1];
                  if (*v181 != v421)
                  {
                    v418 = v213;
                    while (1)
                    {
                      v216 = (v213 - MEMORY[0]);
                      v217 = &v423[-MEMORY[0]];
                      if (v216 == &v423[-MEMORY[0]])
                      {
                        v443 = 0x3FE0000000000000;
                        v442 = 0;
                        if (v412 == absl::lts_20240722::BitGenRef::NotAMock)
                        {
                          v221 = 0.5;
                          goto LABEL_205;
                        }

                        if ((v412)(v413, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v443, &v442))
                        {
                          v218 = v442;
                        }

                        else
                        {
                          v221 = *&v443;
LABEL_205:
                          while (1)
                          {
                            v222 = v409(v413);
                            v223 = vcvtd_n_s64_f64(v221, 0x20uLL);
                            if (v222 != v223)
                            {
                              break;
                            }

                            v218 = 0;
                            v221 = (v221 + v223 * -2.32830644e-10) * 4294967300.0;
                            if (v221 == 0.0)
                            {
                              goto LABEL_209;
                            }
                          }

                          v218 = v222 < v223;
                        }

LABEL_209:
                        v219 = *(v214 + 3);
                      }

                      else
                      {
                        v219 = *(v214 + 3);
                        v220 = v217 >= v216 ? v216 : &v423[-MEMORY[0]];
                        v218 = v219 <= v220 ? v217 < v216 : v217 >= v216;
                      }

                      if (v218)
                      {
                        v224 = &v438;
                      }

                      else
                      {
                        v224 = &v444;
                      }

                      if (v218)
                      {
                        v225 = &v444;
                      }

                      else
                      {
                        v225 = &v438;
                      }

                      if (v218)
                      {
                        v216 = v217;
                      }

                      v226 = v219 >= v216 ? v216 : v219;
                      v227 = *v214;
                      v228 = *(v214 + 1);
                      v229 = *(v214 + 2);
                      v230 = v218 ? &v438 : &v444;
                      v231 = v230->n128_u64[1];
                      v232 = v230[1].n128_u64[0];
                      if (v231 >= v232)
                      {
                        break;
                      }

                      *v231 = v227;
                      *(v231 + 8) = v228;
                      *(v231 + 16) = v229;
                      *(v231 + 24) = v226;
                      v230->n128_u64[1] = v231 + 32;
                      v233 = *(v214 + 3);
                      v234 = v233 - v216;
                      if (v233 > v216)
                      {
                        goto LABEL_239;
                      }

LABEL_192:
                      v214 += 8;
                      v213 = v418;
                      if (v214 == v421)
                      {
                        v80 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                        if (v444.n128_u64[1] - v444.n128_u64[0] > 0x20)
                        {
                        }

                        goto LABEL_257;
                      }
                    }

                    v235 = v224->n128_u64[0];
                    v236 = v231 - v224->n128_u64[0];
                    v237 = v236 >> 5;
                    v238 = (v236 >> 5) + 1;
                    if (v238 >> 59)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v239 = v232 - v235;
                    if (v239 >> 4 > v238)
                    {
                      v238 = v239 >> 4;
                    }

                    if (v239 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v240 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v240 = v238;
                    }

                    v416 = v225;
                    v414 = v218;
                    if (v240)
                    {
                      if (!(v240 >> 59))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v241 = v224;
                    v242 = 32 * v237;
                    *v242 = v227;
                    *(v242 + 8) = v228;
                    *(v242 + 16) = v229;
                    *(v242 + 24) = v226;
                    v243 = 32 * v237 + 32;
                    memcpy(0, v235, v236);
                    v241->n128_u64[0] = 0;
                    v230->n128_u64[1] = v243;
                    v230[1].n128_u64[0] = 0;
                    if (v235)
                    {
                      operator delete(v235);
                    }

                    v225 = v416;
                    v218 = v414;
                    v230->n128_u64[1] = v243;
                    v244 = *(v214 + 3);
                    v234 = v244 - v216;
                    if (v244 <= v216)
                    {
                      goto LABEL_192;
                    }

LABEL_239:
                    v245 = *v214;
                    v247 = *(v214 + 1);
                    v246 = *(v214 + 2);
                    if (v218)
                    {
                      v248 = &v444;
                    }

                    else
                    {
                      v248 = &v438;
                    }

                    v249 = v248->n128_u64[1];
                    v250 = v248[1].n128_u64[0];
                    if (v249 < v250)
                    {
                      *v249 = v245;
                      *(v249 + 8) = v247;
                      *(v249 + 16) = v246;
                      v215 = v249 + 32;
                      *(v249 + 24) = v234;
                    }

                    else
                    {
                      v251 = v225->n128_u64[0];
                      v252 = v249 - v225->n128_u64[0];
                      v253 = v252 >> 5;
                      v254 = (v252 >> 5) + 1;
                      if (v254 >> 59)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      v255 = v250 - v251;
                      if (v255 >> 4 > v254)
                      {
                        v254 = v255 >> 4;
                      }

                      if (v255 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v256 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v256 = v254;
                      }

                      if (v256)
                      {
                        if (!(v256 >> 59))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v257 = v225;
                      v258 = 32 * v253;
                      *v258 = v245;
                      *(v258 + 8) = v247;
                      *(v258 + 16) = v246;
                      *(v258 + 24) = v234;
                      v215 = 32 * v253 + 32;
                      memcpy(0, v251, v252);
                      v257->n128_u64[0] = 0;
                      v248->n128_u64[1] = v215;
                      v248[1].n128_u64[0] = 0;
                      if (v251)
                      {
                        operator delete(v251);
                      }
                    }

                    v248->n128_u64[1] = v215;
                    goto LABEL_192;
                  }

LABEL_257:
                  v259 = v438.n128_u64[0];
                  if (v438.n128_u64[1] - v438.n128_u64[0] >= 0x21)
                  {
                    v259 = v438.n128_u64[0];
                  }

                  if (v259)
                  {
                    operator delete(v259);
                  }

                  if (v444.n128_u64[0])
                  {
                    operator delete(v444.n128_u64[0]);
                  }
                }

                else
                {
LABEL_165:
                  v189 = 0;
                  v190 = 1;
                  v191 = 1;
                  v80 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                  do
                  {
                    v203 = 8 * v189;
                    v189 = v191;
                    v204 = v182[v203];
                    v205 = v182[8 * v190];
                    if (v429 > 1)
                    {
                      v200 = 0;
                      _X9 = v430;
                      __asm { PRFM            #4, [X9] }

                      v208 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v204) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v204))) + v205;
                      v209 = ((v208 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v208);
                      v201 = (v430 >> 12) ^ (v209 >> 7);
                      v210 = vdup_n_s8(v209 & 0x7F);
                      while (1)
                      {
                        v192 = v201 & v429;
                        v193 = *(v430 + v192);
                        v194 = vceq_s8(v193, v210);
                        if (v194)
                        {
                          break;
                        }

LABEL_172:
                        v199 = vceq_s8(v193, 0x8080808080808080);
                        if (v199)
                        {
                          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v429, v209, (v192 + (__clz(__rbit64(v199)) >> 3)) & v429, v200, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::GetPolicyFunctions(void)::value);
                          v212 = (v431 + 8 * inserted);
                          goto LABEL_184;
                        }

                        v200 += 8;
                        v201 = v200 + v192;
                      }

                      while (1)
                      {
                        v195 = (v431 + 8 * ((v192 + (__clz(__rbit64(v194)) >> 3)) & v429));
                        v197 = *v195;
                        v196 = v195[1];
                        if (v197 == v204 && v196 == v205)
                        {
                          break;
                        }

                        v194 &= ((v194 & 0x8080808080808080) - 1) & 0x8080808080808080;
                        if (!v194)
                        {
                          goto LABEL_172;
                        }
                      }
                    }

                    else if (*(&v429 + 1) > 1uLL)
                    {
                      if (v430 != v204 || HIDWORD(v430) != v205)
                      {
                        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::resize_impl(&v429, 3);
                      }
                    }

                    else
                    {
                      *(&v429 + 1) = 2;
                      v212 = &v430;
LABEL_184:
                      *v212 = v204 | (v205 << 32);
                      v182 = *v181;
                      v183 = v181[1];
                    }

                    v191 = v189 + 1;
                    v190 = v189 + 1;
                  }

                  while (v190 < (v183 - v182) >> 5);
                }
              }

              v260 = v434;
              v261 = *(*(&v432 + 1) + ((v434 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v434 & 0x7F);
              v262 = *v261;
              if (*v261)
              {
                *(v261 + 8) = v262;
                operator delete(v262);
                v260 = v434;
              }

              v8 = a2;
              v263 = *(&v434 + 1) - 1;
              v180 = v260 + 1;
              v434 = __PAIR128__(*(&v434 + 1), v180) + __PAIR128__(-1, 0);
              if (v180 >= 0x100)
              {
                operator delete(**(&v432 + 1));
                v263 = *(&v434 + 1);
                v180 = v434 - 128;
                *(&v432 + 1) += 8;
                *&v434 = v434 - 128;
              }
            }

            while (v263);
          }

          if (v436.n128_u64[0])
          {
            operator delete(v436.n128_u64[0]);
          }

          v79 = v407 + 1;
          if (v407 + 1 == v405)
          {
            v6 = a1[58];
            v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[59] - v6) >> 3);
            goto LABEL_270;
          }
        }

        v169 = 0;
LABEL_146:
        v174 = v165 - v169;
        v175 = v168 + v169;
        v176 = &v167[v169];
        do
        {
          v178 = *v176++;
          v177 = v178;
          v179 = *v175++;
          v164 += *(v166 + 8 * v179) * v177;
          --v174;
        }

        while (v174);
        goto LABEL_148;
      }
    }

LABEL_270:
    if (v7 >= 0x16)
    {
      v264 = v6[63];
      v415 = v6[64];
      if (v415 != v264)
      {
        while (1)
        {
          v265 = a1[34];
          v267 = *(v265 + 48);
          v266 = (v265 + 48);
          v268 = (v267 + 8 * *v264 + 7);
          if ((v267 & 1) == 0)
          {
            v268 = v266;
          }

          v269 = *v268;
          v270 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
          if (*(v269 + 60) == 21)
          {
            v270 = *(v269 + 48);
          }

          v432 = 0uLL;
          *&v433 = 0;
          v444 = 0uLL;
          v445 = 0;
          if (*(v270 + 4) > 0)
          {
            break;
          }

LABEL_273:
          if (++v264 == v415)
          {
            goto LABEL_409;
          }
        }

        v271 = 0;
        v428 = 0;
        v272 = 0;
        v273 = 0;
        v422 = v266;
        v424 = 0;
        v417 = v264;
        while (1)
        {
          v279 = *(v270[3] + v271);
          v280 = *v8;
          if (*v8 > 1uLL)
          {
            v277 = 0;
            _X11 = v8[2];
            __asm { PRFM            #4, [X11] }

            v309 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v279) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v279));
            v278 = (_X11 >> 12) ^ (v309 >> 7);
            v5.n128_u64[0] = vdup_n_s8(v309 & 0x7F);
            while (1)
            {
              v274 = v278 & v280;
              v275 = *(_X11 + v274);
              v276 = vceq_s8(v275, v5.n128_u64[0]);
              if (v276)
              {
                break;
              }

LABEL_283:
              if (vceq_s8(v275, 0x8080808080808080))
              {
                goto LABEL_290;
              }

              v277 += 8;
              v278 = v277 + v274;
            }

            while (*(v8[3] + 4 * ((v274 + (__clz(__rbit64(v276)) >> 3)) & v280)) != v279)
            {
              v276 &= ((v276 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v276)
              {
                goto LABEL_283;
              }
            }

            goto LABEL_377;
          }

          LODWORD(_X11) = *(v8 + 4);
          if (v8[1] >= 2uLL && _X11 == v279)
          {
            goto LABEL_377;
          }

LABEL_290:
          v283 = *v266 + 7;
          v284 = (v283 + 8 * v279);
          if ((*v266 & 1) == 0)
          {
            v284 = v266;
          }

          v285 = *v284;
          v286 = *(*v284 + 16);
          v287 = *(v410 + 32);
          if (v286 == 1)
          {
            v288 = **(v285 + 24);
            v289 = ~v288 <= v288 ? **(v285 + 24) : ~v288;
            _NF = v288 < 0;
            v290 = *(v287 + 8 * v289);
            v291 = !_NF;
            if (v291 == (v290 != 1))
            {
              goto LABEL_377;
            }
          }

          v292 = *(v270[6] + v271);
          if (v280 > 1)
          {
            v310 = 0;
            _X14 = v8[2];
            __asm { PRFM            #4, [X14] }

            v313 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v292) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v292));
            v5.n128_u64[0] = vdup_n_s8(v313 & 0x7F);
            v314 = ((_X14 >> 12) ^ (v313 >> 7)) & v280;
            v315 = *(_X14 + v314);
            v316 = vceq_s8(v315, v5.n128_u64[0]);
            if (!v316)
            {
              goto LABEL_325;
            }

LABEL_323:
            while (*(v8[3] + 4 * ((v314 + (__clz(__rbit64(v316)) >> 3)) & v280)) != v292)
            {
              v316 &= ((v316 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v316)
              {
LABEL_325:
                while (!*&vceq_s8(v315, 0x8080808080808080))
                {
                  v310 += 8;
                  v314 = (v310 + v314) & v280;
                  v315 = *(_X14 + v314);
                  v316 = vceq_s8(v315, v5.n128_u64[0]);
                  if (v316)
                  {
                    goto LABEL_323;
                  }
                }

                goto LABEL_303;
              }
            }

            goto LABEL_377;
          }

          if (v8[1] >= 2uLL && _X11 == v292)
          {
LABEL_377:
            if (++v271 >= *(v270 + 4))
            {
              goto LABEL_402;
            }
          }

          else
          {
LABEL_303:
            v293 = (v283 + 8 * v292);
            if ((*v266 & 1) == 0)
            {
              v293 = v266;
            }

            v294 = *v293;
            if (*(v294 + 16) == 1)
            {
              v295 = **(v294 + 24);
              v296 = ~v295 <= v295 ? **(v294 + 24) : ~v295;
              _NF = v295 < 0;
              v297 = *(v287 + 8 * v296);
              v298 = !_NF;
              if (v298 == (v297 != 1))
              {
                goto LABEL_377;
              }
            }

            v299 = *(v285 + 60);
            v300 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v299 == 19)
            {
              v300 = *(v285 + 48);
            }

            v301 = v300[3];
            if (v301)
            {
              v302 = v301;
            }

            else
            {
              v302 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v303 = v302[8];
            v304 = *(v302 + 4);
            if (v304 >= 1)
            {
              v305 = v302[6];
              v306 = v302[3];
              if (v304 == 1)
              {
                v307 = 0;
LABEL_331:
                v322 = v304 - v307;
                v323 = v306 + v307;
                v324 = &v305[v307];
                do
                {
                  v326 = *v324++;
                  v325 = v326;
                  v327 = *v323++;
                  v303 = (v303 + *(v287 + 8 * v327) * v325);
                  --v322;
                }

                while (v322);
                goto LABEL_333;
              }

              v317 = v272;
              v318 = 0;
              v307 = v304 & 0x7FFFFFFE;
              v319 = v305 + 1;
              v320 = v306 + 1;
              v321 = v307;
              do
              {
                a3 = *(v287 + 8 * *(v320 - 1));
                v303 = (v303 + a3 * *(v319 - 1));
                v318 += *(v287 + 8 * *v320) * *v319;
                v319 += 2;
                v320 += 2;
                v321 -= 2;
              }

              while (v321);
              v303 = (v303 + v318);
              v266 = v422;
              v272 = v317;
              if (v307 != v304)
              {
                goto LABEL_331;
              }
            }

LABEL_333:
            v426 = *(v270[6] + v271);
            v328 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v299 == 19)
            {
              v328 = *(v285 + 48);
            }

            if (v328[4])
            {
              v329 = v328[4];
            }

            else
            {
              v329 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v330 = v329[8];
            v331 = *(v329 + 4);
            if (v331 >= 1)
            {
              v332 = v329[6];
              v333 = v329[3];
              if (v331 == 1)
              {
                v334 = 0;
LABEL_344:
                v339 = v331 - v334;
                v340 = v333 + v334;
                v341 = &v332[v334];
                do
                {
                  v343 = *v341++;
                  v342 = v343;
                  v344 = *v340++;
                  v330 = (v330 + *(v287 + 8 * v344) * v342);
                  --v339;
                }

                while (v339);
                goto LABEL_346;
              }

              v335 = 0;
              v334 = v331 & 0x7FFFFFFE;
              v336 = v332 + 1;
              v337 = v333 + 1;
              v338 = v334;
              do
              {
                a3 = *(v336 - 1);
                v330 = (v330 + *(v287 + 8 * *(v337 - 1)) * a3);
                v335 += *(v287 + 8 * *v337) * *v336;
                v336 += 2;
                v337 += 2;
                v338 -= 2;
              }

              while (v338);
              v330 = (v330 + v335);
              if (v334 != v331)
              {
                goto LABEL_344;
              }
            }

LABEL_346:
            v345 = *(v294 + 60);
            v346 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v345 == 19)
            {
              v346 = *(v294 + 48);
            }

            v347 = v346[3];
            if (v347)
            {
              v348 = v347;
            }

            else
            {
              v348 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v349 = v348[8];
            v350 = *(v348 + 4);
            if (v350 >= 1)
            {
              v351 = v348[6];
              v352 = v348[3];
              if (v350 == 1)
              {
                v353 = 0;
LABEL_357:
                v358 = v350 - v353;
                v359 = v352 + v353;
                v360 = &v351[v353];
                do
                {
                  v362 = *v360++;
                  v361 = v362;
                  v363 = *v359++;
                  v349 = (v349 + *(v287 + 8 * v363) * v361);
                  --v358;
                }

                while (v358);
                goto LABEL_359;
              }

              v354 = 0;
              v353 = v350 & 0x7FFFFFFE;
              v355 = v351 + 1;
              v356 = v352 + 1;
              v357 = v353;
              do
              {
                a3 = *(v287 + 8 * *v356);
                v349 = (v349 + *(v287 + 8 * *(v356 - 1)) * *(v355 - 1));
                v354 += a3 * *v355;
                v355 += 2;
                v356 += 2;
                v357 -= 2;
              }

              while (v357);
              v349 = (v349 + v354);
              if (v353 != v350)
              {
                goto LABEL_357;
              }
            }

LABEL_359:
            v364 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
            if (v345 == 19)
            {
              v364 = *(v294 + 48);
            }

            if (v364[4])
            {
              v365 = v364[4];
            }

            else
            {
              v365 = &operations_research::sat::_LinearExpressionProto_default_instance_;
            }

            v366 = v365[8];
            v367 = *(v365 + 4);
            if (v367 >= 1)
            {
              v368 = v365[6];
              v369 = v365[3];
              if (v367 == 1)
              {
                v370 = 0;
LABEL_370:
                v375 = v367 - v370;
                v376 = v369 + v370;
                v377 = &v368[v370];
                do
                {
                  v379 = *v377++;
                  v378 = v379;
                  v380 = *v376++;
                  v366 = (v366 + *(v287 + 8 * v380) * v378);
                  --v375;
                }

                while (v375);
                goto LABEL_372;
              }

              v371 = 0;
              v370 = v367 & 0x7FFFFFFE;
              v372 = (v368 + 1);
              v373 = v369 + 1;
              v374 = v370;
              do
              {
                a3 = *v372;
                v366 = (v366 + *(v287 + 8 * *(v373 - 1)) * *(v372 - 1));
                v371 += *(v287 + 8 * *v373) * *v372;
                v372 += 2;
                v373 += 2;
                v374 -= 2;
              }

              while (v374);
              v366 = (v366 + v371);
              if (v370 != v367)
              {
                goto LABEL_370;
              }
            }

LABEL_372:
            if (v303 == v330)
            {
              v8 = a2;
              goto LABEL_377;
            }

            if (v349 == v366)
            {
              v8 = a2;
              if (++v271 >= *(v270 + 4))
              {
                goto LABEL_402;
              }
            }

            else
            {
              v381 = v272 - v273;
              v382 = v273;
              v383 = 0xCCCCCCCCCCCCCCCDLL * ((v272 - v273) >> 3);
              v384 = v383 + 1;
              v419 = v382;
              if (v383 + 1 > 0x666666666666666)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v385 = 0xCCCCCCCCCCCCCCCDLL * (-v382 >> 3);
              if (2 * v385 > v384)
              {
                v384 = 2 * v385;
              }

              if (v385 >= 0x333333333333333)
              {
                v386 = 0x666666666666666;
              }

              else
              {
                v386 = v384;
              }

              if (v386)
              {
                if (v386 <= 0x666666666666666)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v387 = 40 * v383;
              *v387 = v279;
              *(v387 + 8) = v303;
              *(v387 + 16) = v330;
              *(v387 + 24) = v349;
              *(v387 + 32) = v366;
              memcpy((40 * v383 - v381), v419, v381);
              if (v419)
              {
                operator delete(v419);
              }

              v388 = 40 * v383 + 40;
              v420 = (40 * v383 - v381);
              v389 = v428 - v424;
              v390 = 0xCCCCCCCCCCCCCCCDLL * ((v428 - v424) >> 3);
              v391 = v390 + 1;
              if (v390 + 1 > 0x666666666666666)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (0x999999999999999ALL * (-v424 >> 3) > v391)
              {
                v391 = 0x999999999999999ALL * (-v424 >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * (-v424 >> 3) >= 0x333333333333333)
              {
                v392 = 0x666666666666666;
              }

              else
              {
                v392 = v391;
              }

              if (v392)
              {
                if (v392 <= 0x666666666666666)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v393 = v388;
              v394 = 8 * ((v428 - v424) >> 3);
              *v394 = v426;
              *(v394 + 8) = v349;
              *(v394 + 16) = v366;
              *(v394 + 24) = v303;
              *(v394 + 32) = v330;
              v428 = v394 + 40;
              v395 = 40 * v390 - v389;
              memcpy((v394 - v389), v424, v389);
              if (v424)
              {
                operator delete(v424);
              }

              v424 = v395;
              v8 = a2;
              v273 = v420;
              v266 = v422;
              v272 = v393;
              v264 = v417;
              if (++v271 >= *(v270 + 4))
              {
LABEL_402:
                *(&v432 + 1) = v272;
                *&v433 = 0;
                *&v432 = v273;
                v444.n128_u64[1] = v428;
                v445 = 0;
                v444.n128_u64[0] = v424;
                if (v273 != v272 && v424 != v428)
                {
                }

                if (v424)
                {
                  operator delete(v424);
                }

                if (v273)
                {
                  operator delete(v273);
                }

                goto LABEL_273;
              }
            }
          }
        }
      }
    }
  }

LABEL_409:
  if (*(&v429 + 1) < 2uLL)
  {
    v398 = 0;
    v397 = a5;
  }

  else
  {
    v397 = a5;
    if (v429 >= 2)
    {
      v398 = v430;
      a3 = v431;
      if (*v430 <= -2)
      {
        do
        {
          v399 = __clz(__rbit64((*v398 | ~(*v398 >> 7)) & 0x101010101010101)) >> 3;
          v398 = (v398 + v399);
          a3 += 8 * v399;
        }

        while (*v398 < -1);
      }
    }

    else
    {
      a3 = &v430;
      v398 = &absl::lts_20240722::container_internal::kSooControl;
    }
  }

  v400 = v397;
  std::vector<std::pair<int,int>>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::iterator,0>(v397, v398, a3, 0);
  v401 = v400[1];
  v402 = 126 - 2 * __clz((v401 - *v400) >> 3);
  if (v401 == *v400)
  {
    v403 = 0;
  }

  else
  {
    v403 = v402;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(*v400, v401, &v432, v403, 1);
  if (v429 >= 2)
  {
    operator delete((v430 - (BYTE8(v429) & 1) - 8));
  }
}

void sub_23CA36884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, void *a32, void *a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v41 = *v39;
  if (*v39)
  {
    *(a10 + 8) = v41;
    operator delete(v41);
  }

  if (a35 >= 2)
  {
    operator delete((a37 - (a36 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v84 = xmmword_23CE306D0;
  v3 = *(this + 58);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v3) >> 3);
  if (v4 >= 0x10)
  {
    v5 = a2;
    v6 = v3[45];
    __src = v3[46];
    if (__src != v6)
    {
      do
      {
        v7 = *(this + 34);
        v9 = *(v7 + 48);
        v8 = (v7 + 48);
        v10 = (v9 + 8 * *v6 + 7);
        if ((v9 & 1) == 0)
        {
          v10 = v8;
        }

        v11 = *v10;
        v12 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
        if (*(v11 + 60) == 15)
        {
          v12 = *(v11 + 48);
        }

        if (v84 > 1)
        {
          absl::lts_20240722::container_internal::ClearBackingArray(&v84, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value, v84 < 0x80, 1u);
        }

        else
        {
          *(&v84 + 1) = 0;
        }

        v81 = v6;
        v13 = *(v12 + 16);
        if (v13 < 1)
        {
          v15 = 0x7FFFFFFF;
          if (*(&v84 + 1) >= 2uLL)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v14 = 0;
          v15 = 0x7FFFFFFF;
          do
          {
            v24 = *(v12[9] + v14);
            if (~v24 <= v24)
            {
              v25 = *(v12[9] + v14);
            }

            else
            {
              v25 = ~v24;
            }

            if (v24 >= 0 == (*(*(v5 + 4) + 8 * v25) != 0))
            {
              v26 = *(v12[6] + v14);
              v27 = *(v12[3] + v14);
              if (v26 != v27)
              {
                if (v84 > 1)
                {
                  v21 = 0;
                  _X9 = v85;
                  __asm { PRFM            #4, [X9] }

                  v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
                  v22 = (v34 >> 7) ^ (v85 >> 12);
                  v35 = vdup_n_s8(v34 & 0x7F);
                  while (1)
                  {
                    v16 = v22 & v84;
                    v17 = *(v85 + v16);
                    v18 = vceq_s8(v17, v35);
                    if (v18)
                    {
                      break;
                    }

LABEL_17:
                    v20 = vceq_s8(v17, 0x8080808080808080);
                    if (v20)
                    {
                      inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v84, v34, (v16 + (__clz(__rbit64(v20)) >> 3)) & v84, v21, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value);
                      v19 = (v86 + 12 * inserted);
                      goto LABEL_31;
                    }

                    v21 += 8;
                    v22 = v21 + v16;
                  }

                  while (1)
                  {
                    v19 = (v86 + 12 * ((v16 + (__clz(__rbit64(v18)) >> 3)) & v84));
                    if (*v19 == v27)
                    {
                      break;
                    }

                    v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    if (!v18)
                    {
                      goto LABEL_17;
                    }
                  }
                }

                else if (*(&v84 + 1) > 1uLL)
                {
                  v19 = &v85;
                  if (v85 != v27)
                  {
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::resize_impl(&v84, 3);
                  }
                }

                else
                {
                  *(&v84 + 1) = 2;
                  v19 = &v85;
LABEL_31:
                  *v19 = v27;
                  *(v19 + 4) = 0;
                }

                *(v19 + 1) = v26;
                *(v19 + 2) = v25;
                if (v15 >= v27)
                {
                  v15 = v27;
                }

                v13 = *(v12 + 16);
              }
            }

            ++v14;
          }

          while (v14 < v13);
          if (*(&v84 + 1) >= 2uLL)
          {
LABEL_39:
            if (v84 > 1)
            {
              v39 = 0;
              _X9 = v85;
              __asm { PRFM            #4, [X9] }

              v42 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15));
              v43 = vdup_n_s8(v42 & 0x7F);
              v44 = ((v42 >> 7) ^ (v85 >> 12)) & v84;
              v45 = *(v85 + v44);
              v46 = vceq_s8(v45, v43);
              if (!v46)
              {
                goto LABEL_50;
              }

LABEL_48:
              while (1)
              {
                v47 = (v44 + (__clz(__rbit64(v46)) >> 3)) & v84;
                v38 = (v86 + 12 * v47);
                if (*v38 == v15)
                {
                  break;
                }

                v46 &= ((v46 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v46)
                {
LABEL_50:
                  while (!*&vceq_s8(v45, 0x8080808080808080))
                  {
                    v39 += 8;
                    v44 = (v39 + v44) & v84;
                    v45 = *(v85 + v44);
                    v46 = vceq_s8(v45, v43);
                    if (v46)
                    {
                      goto LABEL_48;
                    }
                  }

LABEL_102:
                  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_lns.cc", 951);
                  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v83);
                }
              }

              if (!(v85 + v47))
              {
                goto LABEL_102;
              }
            }

            else
            {
              v36 = v85 == v15 && *(&v84 + 1) > 1uLL;
              v37 = &absl::lts_20240722::container_internal::kSooControl;
              if (!v36)
              {
                v37 = 0;
              }

              v38 = &v85;
              if (!v37)
              {
                goto LABEL_102;
              }
            }

            v48 = *(v38 + 1);
            operator new();
          }
        }

        v6 = v81 + 1;
      }

      while (v81 + 1 != __src);
      v3 = *(this + 58);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v3) >> 3);
    }

    if (v4 >= 0x18)
    {
      v49 = v3[69];
      v50 = v3[70];
      if (v50 != v49)
      {
        v77 = v3[70];
        while (1)
        {
          v51 = *(this + 34);
          v53 = *(v51 + 48);
          v52 = (v51 + 48);
          v54 = (v53 + 8 * *v49 + 7);
          if ((v53 & 1) == 0)
          {
            v54 = v52;
          }

          v55 = *v54;
          v56 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
          if (*(v55 + 60) == 23)
          {
            v56 = *(v55 + 48);
          }

          if (v84 > 1)
          {
            absl::lts_20240722::container_internal::ClearBackingArray(&v84, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value, v84 < 0x80, 1u);
          }

          else
          {
            *(&v84 + 1) = 0;
          }

          if (*(v56 + 16) >= 1)
          {
            break;
          }

LABEL_61:
          if (++v49 == v50)
          {
            goto LABEL_103;
          }
        }

        v78 = v49;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          while (1)
          {
            v67 = *(v56[9] + v57);
            v68 = ~v67 <= v67 ? v67 : ~v67;
            if (v67 >= 0 == (*(*(v5 + 4) + 8 * v68) != 0))
            {
              v69 = *(v56[6] + v57);
              v70 = *(v56[3] + v57);
              if (v69 != v70)
              {
                break;
              }
            }

LABEL_96:
            if (++v57 >= *(v56 + 16))
            {
              goto LABEL_99;
            }
          }

          if (v70)
          {
            if (v84 > 1)
            {
              v64 = 0;
              _X9 = v85;
              __asm { PRFM            #4, [X9] }

              v73 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v70) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v70));
              v65 = (v73 >> 7) ^ (v85 >> 12);
              v74 = vdup_n_s8(v73 & 0x7F);
              while (1)
              {
                v59 = v65 & v84;
                v60 = *(v85 + v59);
                v61 = vceq_s8(v60, v74);
                if (v61)
                {
                  break;
                }

LABEL_74:
                v63 = vceq_s8(v60, 0x8080808080808080);
                if (v63)
                {
                  v66 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v84, v73, (v59 + (__clz(__rbit64(v63)) >> 3)) & v84, v64, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::GetPolicyFunctions(void)::value);
                  v62 = (v86 + 12 * v66);
                  goto LABEL_94;
                }

                v64 += 8;
                v65 = v64 + v59;
              }

              while (1)
              {
                v62 = (v86 + 12 * ((v59 + (__clz(__rbit64(v61)) >> 3)) & v84));
                if (*v62 == v70)
                {
                  break;
                }

                v61 &= ((v61 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v61)
                {
                  goto LABEL_74;
                }
              }
            }

            else if (*(&v84 + 1) > 1uLL)
            {
              v62 = &v85;
              if (v85 != v70)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::resize_impl(&v84, 3);
              }
            }

            else
            {
              *(&v84 + 1) = 2;
              v62 = &v85;
LABEL_94:
              *v62 = v70;
              *(v62 + 4) = 0;
            }

            *(v62 + 1) = v69;
            *(v62 + 2) = v68;
            goto LABEL_96;
          }

          v75 = v58;
          v76 = v58 >> 3;
          if (((v58 >> 3) + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v58 >> 3 != -1)
          {
            if (!(((v58 >> 3) + 1) >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v76) = v69 | (v68 << 32);
          v58 = 8 * v76 + 8;
          memcpy(0, 0, v75);
          v5 = a2;
          if (++v57 >= *(v56 + 16))
          {
LABEL_99:
            if (v58)
            {
              operator new();
            }

            v5 = a2;
            v50 = v77;
            v49 = v78;
            goto LABEL_61;
          }
        }
      }
    }
  }

LABEL_103:
  if (v84 >= 2)
  {
    operator delete((v85 - (BYTE8(v84) & 1) - 8));
  }
}

void sub_23CA37778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
  }

  if (*a14)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(a14, *a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables@<X0>(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  v7 = *(a1 + 272);
  if ((*(v7 + 16) & 1) != 0 && (v8 = *(v7 + 128), *(v8 + 16) == 1))
  {
    v9 = **(v8 + 24);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v66 = v9;
  absl::lts_20240722::Mutex::ReaderLock((a1 + 960));
  v10 = *(a1 + 336);
  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a4 + 32), *(a1 + 336));
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = (a1 + 328);
    do
    {
      if (*v12)
      {
        v13 = (*v12 + 8 * v11 + 7);
      }

      else
      {
        v13 = (a1 + 328);
      }

      v14 = *v13;
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a4 + 32), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
      operations_research::Domain::FromFlatSpanOfIntervals(*(v14 + 24), *(v14 + 16), &v69, v16);
      v17 = *(*(a2 + 4) + 8 * v11);
      v18 = *a3;
      if (*a3 > 1uLL)
      {
        v19 = 0;
        _X10 = a3[2];
        __asm { PRFM            #4, [X10] }

        v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11));
        v27 = vdup_n_s8(v26 & 0x7F);
        v28 = ((v26 >> 7) ^ (_X10 >> 12)) & v18;
        v29 = *(_X10 + v28);
        v30 = vceq_s8(v29, v27);
        if (!v30)
        {
          goto LABEL_18;
        }

LABEL_16:
        while (v11 != *(a3[3] + 4 * ((v28 + (__clz(__rbit64(v30)) >> 3)) & v18)))
        {
          v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v30)
          {
LABEL_18:
            while (!*&vceq_s8(v29, 0x8080808080808080))
            {
              v19 += 8;
              v28 = (v19 + v28) & v18;
              v29 = *(_X10 + v28);
              v30 = vceq_s8(v29, v27);
              if (v30)
              {
                goto LABEL_16;
              }
            }

            goto LABEL_26;
          }
        }
      }

      else if (a3[1] < 2uLL || v11 != *(a3 + 4))
      {
LABEL_26:
        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(&v69, v15);
        goto LABEL_27;
      }

      if (v11 == v66)
      {
        goto LABEL_26;
      }

      if (!operations_research::Domain::Contains(&v69, *(*(a2 + 4) + 8 * v11)))
      {
        v35 = operations_research::Domain::Min(&v69);
        v36 = v35;
        p_p = __p;
        if ((v69 & 1) == 0)
        {
          p_p = &__p;
        }

        if ((v69 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v38 = &p_p[2 * (v69 >> 1)];
          v39 = v35 - v17;
          if (v35 - v17 < 0)
          {
            v39 = v17 - v35;
          }

          do
          {
            v40 = *p_p;
            v41 = p_p[1];
            p_p += 2;
            v42 = v40 - v17;
            if (v40 - v17 < 0)
            {
              v42 = v17 - v40;
            }

            if (v42 >= v39)
            {
              v40 = v36;
            }

            else
            {
              v39 = v42;
            }

            v43 = v41 - v17;
            if (v41 - v17 < 0)
            {
              v43 = v17 - v41;
            }

            if (v43 >= v39)
            {
              v36 = v40;
            }

            else
            {
              v39 = v43;
              v36 = v41;
            }
          }

          while (p_p != v38);
        }

        operations_research::Domain::Domain(v68, v36, v36);
        operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v68, v15);
        if (v68[0])
        {
          operator delete(v68[1]);
        }

        goto LABEL_27;
      }

      v32 = *(v15 + 16);
      v31 = *(v15 + 20);
      if (v32 == v31)
      {
        google::protobuf::RepeatedField<long long>::Grow(v15 + 16, v31);
        v44 = *(v15 + 16);
        v31 = *(v15 + 20);
        v33 = *(v15 + 24);
        v34 = v44 + 1;
        *(v15 + 16) = v44 + 1;
        *(v33 + 8 * v44) = v17;
        if (v44 + 1 == v31)
        {
LABEL_48:
          google::protobuf::RepeatedField<long long>::Grow(v15 + 16, v31);
          v34 = *(v15 + 16);
          v33 = *(v15 + 24);
        }
      }

      else
      {
        v33 = *(v15 + 24);
        v34 = v32 + 1;
        *(v15 + 16) = v32 + 1;
        *(v33 + 8 * v32) = v17;
        if (v32 + 1 == v31)
        {
          goto LABEL_48;
        }
      }

      *(v15 + 16) = v34 + 1;
      *(v33 + 8 * v34) = v17;
LABEL_27:
      if (v69)
      {
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((a1 + 960));
  absl::lts_20240722::Mutex::ReaderLock((a1 + 256));
  v45 = *(a1 + 824) - *(a1 + 816);
  if (v45)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v45 >> 3)) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v46 = *(a4 + 40);
  if (v46 >= 1)
  {
    v47 = 0;
    v48 = *(a4 + 32);
    v49 = (v48 + 7);
    v50 = *(a4 + 200);
    v51 = *(a4 + 204);
    do
    {
      if (v48)
      {
        v52 = v49;
      }

      else
      {
        v52 = (a4 + 32);
      }

      v53 = *v52;
      if (*(v53 + 16) != 2 || **(v53 + 24) != *(*(v53 + 24) + 8))
      {
        *(a4 + 200) = ++v50;
        if ((*(*(a1 + 488) + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47))
        {
          *(a4 + 204) = ++v51;
        }

        v54 = *(*(a1 + 840) + 4 * v47);
        if (v54 != -1)
        {
          ++*(4 * v54);
        }
      }

      ++v47;
      ++v49;
    }

    while (v46 != v47);
  }

  v55 = *(a1 + 824);
  v56 = *(a1 + 816);
  if (v55 != v56)
  {
    v57 = 0;
    v58 = 1;
    do
    {
      v59 = *(4 * v57);
      v60 = (v56 + 24 * v57);
      v61 = v60[1];
      if (v59 == (v61 - *v60) >> 2)
      {
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a4 + 208, *(a4 + 216), *v60, v61, v59);
        v55 = *(a1 + 824);
        v56 = *(a1 + 816);
      }

      v57 = v58++;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 3) > v57);
    operator delete(0);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((a1 + 256));
  v63 = *(a1 + 272);
  if (*(v63 + 16))
  {
    if (*(*(v63 + 128) + 64) != 2)
    {
      goto LABEL_76;
    }

    InnerObjectiveLowerBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(a1 + 296));
    v64 = *(*(a1 + 272) + 128);
    if (!v64)
    {
      v64 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (InnerObjectiveLowerBound < *v64[9])
    {
LABEL_76:
      *(a4 + 216) = *(a4 + 208);
    }
  }

  result = operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(InnerObjectiveLowerBound, a2, (a4 + 8));
  *a4 = 1;
  *(a4 + 1) = a3[1] > 1uLL;
  *(a4 + 2) = 1;
  return result;
}

void sub_23CA37E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, char a16, void *a17)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v18 + 256));
  operations_research::sat::Neighborhood::~Neighborhood(v17);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(operations_research::sat::NeighborhoodGeneratorHelper *this, const operations_research::sat::CpSolverResponse *a2, operations_research::sat::CpModelProto *a3)
{
  result = *(a3 + 17);
  if (result)
  {
    result = operations_research::sat::PartialVariableAssignment::Clear(result);
  }

  *(a3 + 4) &= ~2u;
  v6 = *(a3 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (a3 + 24);
    v9 = 8;
    do
    {
      if (*v8)
      {
        v15 = (*v8 + v9 - 1);
      }

      else
      {
        v15 = (a3 + 24);
      }

      v16 = *v15;
      if (*(v16 + 16) != 2 || **(v16 + 24) != *(*(v16 + 24) + 8))
      {
        *(a3 + 4) |= 2u;
        v17 = *(a3 + 17);
        if (!v17)
        {
          v18 = *(a3 + 1);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(v18);
          *(a3 + 17) = v17;
        }

        v19 = (v17 + 16);
        v20 = *(v17 + 16);
        v21 = v20;
        if (v20 == HIDWORD(v20))
        {
          v25 = v17;
          google::protobuf::RepeatedField<int>::Grow(v17 + 16, HIDWORD(v20), (HIDWORD(v20) + 1));
          v17 = v25;
          v21 = *v19;
        }

        v22 = *(v17 + 24);
        *(v17 + 16) = v21 + 1;
        *(v22 + 4 * v21) = v7;
        *(a3 + 4) |= 2u;
        result = *(a3 + 17);
        if (!result)
        {
          v23 = *(a3 + 1);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(v23);
          *(a3 + 17) = result;
        }

        v10 = *(*(a2 + 4) + 8 * v7);
        v12 = *(result + 40);
        v11 = *(result + 44);
        v13 = (result + 40);
        if (v12 == v11)
        {
          v24 = result;
          google::protobuf::RepeatedField<long long>::Grow(result + 40, v11);
          result = v24;
          v12 = *v13;
        }

        v14 = *(result + 48);
        *(result + 40) = v12 + 1;
        *(v14 + 8 * v12) = v10;
        v6 = *(a3 + 8);
      }

      ++v7;
      v9 += 8;
    }

    while (v7 < v6);
  }

  return result;
}

void operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(void *a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1[34] + 32);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    do
    {
      v10 = *v8++;
      *((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v10;
    }

    while (v8 != v9);
  }

  v16 = xmmword_23CE306D0;
  absl::lts_20240722::Mutex::ReaderLock((a1 + 32));
  v11 = a1[111];
  v12 = a1[112];
  while (v11 != v12)
  {
    v15 = *v11;
    if (((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15) & 1) == 0)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v16, &v15, v13);
      if (v14 == 1)
      {
        *v13[1] = v15;
      }
    }

    ++v11;
  }

  absl::lts_20240722::Mutex::ReaderUnlock(a1 + 32);
  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(a1, a2, &v16, a4);
  if (v16 >= 2)
  {
    operator delete((v17 - (BYTE8(v16) & 1) - 8));
  }
}

void sub_23CA381F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a13 >= 2)
  {
    operator delete((a15 - (a14 & 1) - 8));
    if (!v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  absl::lts_20240722::Mutex::ReaderLock((this + 256));
  if ((this + 888) != a2)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(a2, *(this + 111), *(this + 112), (*(this + 112) - *(this + 111)) >> 2);
  }

  absl::lts_20240722::Mutex::ReaderUnlock(this + 32);
}

void sub_23CA382C0(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v2 + 256));
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::NeighborhoodGeneratorHelper::UpdatedModelProtoCopy(operations_research::sat::NeighborhoodGeneratorHelper *this@<X0>, int *a2@<X8>)
{
  operations_research::sat::CpModelProto::CpModelProto(a2, 0, *(this + 34));
  absl::lts_20240722::Mutex::Lock(this + 120);
  if (a2 + 6 != (this + 328))
  {
    if (a2[8] >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(a2 + 6);
    }

    if (*(this + 84))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(a2 + 6, (this + 328), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
    }
  }

  absl::lts_20240722::Mutex::Unlock((this + 960));
}

void sub_23CA38378(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::Unlock((v2 + 960));
  operations_research::sat::CpModelProto::~CpModelProto(v1);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::NeighborhoodGenerator::ReadyToGenerate(operations_research::sat::NeighborhoodGenerator *this)
{
  v1 = *(*(this + 4) + 296);
  absl::lts_20240722::Mutex::Lock(v1 + 15);
  v3 = v1[23];
  v2 = v1[24];
  absl::lts_20240722::Mutex::Unlock((v1 + 15));
  return ((v2 - v3) >> 6) > 0;
}

double operations_research::sat::NeighborhoodGenerator::Synchronize(operations_research::sat::NeighborhoodGenerator *this)
{
  absl::lts_20240722::Mutex::Lock(this + 5);
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,false>(v2, v3, &v35, v5, 1);
  v6 = *(this + 6);
  v7 = *(this + 7);
  if (v6 == v7)
  {
    v9 = 0;
    v12 = 0.0;
LABEL_29:
    *(this + 10) += 2 * v9;
    v28 = *(this + 15);
    if (v28 <= *(this + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(this + 17);
  v11 = *(this + 12) + 1;
  v12 = 0.0;
  v13 = *(this + 6);
  do
  {
    while (1)
    {
      *(this + 12) = v11;
      if ((*v13 - 3) > 1)
      {
        ++v9;
      }

      else
      {
        ++*(this + 13);
        ++v8;
      }

      v14 = *(v13 + 32);
      v15 = *(v13 + 48);
      v16 = (v14 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v17 = __OFSUB__(v14, v15);
      v18 = v14 - v15;
      if (v17)
      {
        v18 = v16;
      }

      if (v18 >= 1)
      {
        *(this + 120) = xmmword_23CE405F0;
        if (*(v13 + 40) <= *(v13 + 48))
        {
          goto LABEL_15;
        }

LABEL_14:
        ++*(this + 14);
        goto LABEL_15;
      }

      ++*(this + 15);
      if (*(v13 + 40) > *(v13 + 48))
      {
        goto LABEL_14;
      }

LABEL_15:
      v19 = *(v13 + 24);
      v20 = fmax(v18, 0.0) / (v19 + 1.0);
      if (v11 <= 100)
      {
        break;
      }

      v10 = v20 * 0.1 + v10 * 0.9;
      v12 = v12 + v19;
      v13 += 56;
      ++v11;
      if (v13 == v7)
      {
        goto LABEL_20;
      }
    }

    v10 = v10 + (v20 - v10) / v11;
    v12 = v12 + v19;
    v13 += 56;
    ++v11;
  }

  while (v13 != v7);
LABEL_20:
  *(this + 17) = v10;
  v21 = v9 - v8;
  if (v9 == v8)
  {
    goto LABEL_29;
  }

  if (v9 < v8)
  {
    v22 = *(this + 10);
    v23 = *(this + 9);
    v24 = v8 - v9;
    do
    {
      v25 = v22 + 1;
      v26 = 1.0 / sqrt((v22 + 2)) + 1.0;
      v27 = 1.0 - (1.0 - v23) / v26;
      v23 = v23 * v26;
      if (v23 >= v27)
      {
        v23 = v27;
      }

      ++v22;
      --v24;
    }

    while (v24);
    *(this + 9) = v23;
    *(this + 10) = v25 + 2 * v9;
    v28 = *(this + 15);
    if (v28 <= *(this + 16))
    {
      goto LABEL_31;
    }

LABEL_30:
    *(this + 16) = v28 + 50;
    *(this + 11) = fmin(*(this + 11) * 1.02, 60.0);
    goto LABEL_31;
  }

  v30 = *(this + 10);
  if (v8 < v9)
  {
    v31 = *(this + 9);
    do
    {
      v32 = v30 + 2;
      ++v30;
      v33 = 1.0 / sqrt(v32) + 1.0;
      v34 = v31 / v33;
      v31 = 1.0 - (1.0 - v31) * v33;
      if (v34 >= v31)
      {
        v31 = v34;
      }

      --v21;
    }

    while (v21);
    *(this + 9) = v31;
  }

  *(this + 10) = v30 + 2 * v8;
  v28 = *(this + 15);
  if (v28 > *(this + 16))
  {
    goto LABEL_30;
  }

LABEL_31:
  *(this + 7) = v6;
  absl::lts_20240722::Mutex::Unlock((this + 40));
  return v12;
}

void operations_research::sat::RelaxRandomVariablesGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(*(a1 + 32), &__p);
  v14 = *a3;
  v15 = *(a3 + 2);
  begin = __p.__begin_;
  end = __p.__end_;
  if ((__p.__end_ - __p.__begin_) == 28)
  {
    v12 = 8;
  }

  else
  {
    v12 = (__p.__end_ - __p.__begin_ - 1) / 7 + __p.__end_ - __p.__begin_;
  }

  v13 = *(a1 + 32);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v14, v12);
  while (begin != end)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v14, begin, v17);
    if (v19 == 1)
    {
      *v18 = *begin;
    }

    ++begin;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(v13, a2, &v14, a4);
  if (v14 >= 2)
  {
    operator delete((v15 - (BYTE8(v14) & 1) - 8));
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_23CA38854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (a11 >= 2)
  {
    operations_research::sat::PropagateAutomaton(&a11);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::GetRandomSubset<int>(std::vector<int> *this, void *a2, double a3)
{
  v4 = *&this->__begin_;
  end = this->__end_;
  begin = this->__begin_;
  if (this->__begin_ == end)
  {
    return;
  }

  v8 = end - begin;
  if (v8 < 2)
  {
    goto LABEL_22;
  }

  v9 = end - 1;
  if (end - 1 <= begin)
  {
    goto LABEL_22;
  }

  do
  {
    if (v8 == 1)
    {
      goto LABEL_5;
    }

    if (!v8)
    {
      v16 = (a2[2])(*a2);
      if (!v16)
      {
        goto LABEL_5;
      }

LABEL_20:
      v17 = *begin;
      *begin = begin[v16];
      begin[v16] = v17;
      goto LABEL_5;
    }

    v11 = __clz(v8);
    if (((v8 << v11) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 64;
    }

    else
    {
      v12 = 63;
    }

    v13 = v12 - v11;
    v14 = v13 >> 6;
    if ((v13 & 0x3F) != 0)
    {
      ++v14;
    }

    if (v14 <= v13)
    {
      v15 = 0xFFFFFFFFFFFFFFFFLL >> -(v13 / v14);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      v16 = (a2[2])(*a2) & v15;
    }

    while (v16 >= v8);
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_5:
    ++begin;
    --v8;
  }

  while (begin < v9);
  begin = this->__begin_;
  v8 = this->__end_ - this->__begin_;
LABEL_22:
  v18 = llround(v8 * a3);
  if (v18 <= v8)
  {
    if (v18 < v8)
    {
      this->__end_ = &begin[v18];
    }
  }

  else
  {

    std::vector<int>::__append(this, v18 - v8);
  }
}

void operations_research::sat::RelaxRandomConstraintsGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock((v7 + 32));
  v8 = v7[112];
  v9 = v7[111];
  absl::lts_20240722::Mutex::ReaderUnlock(v7 + 32);
  if ((v8 - v9) >> 2 == vcvtpd_s64_f64(((v8 - v9) >> 2) * a4))
  {
    v10 = *(a1 + 32);

    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v10, a3);
    return;
  }

  memset(v27, 0, sizeof(v27));
  v11 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock((v11 + 256));
  v12 = *(*(a1 + 32) + 680) - *(*(a1 + 32) + 672);
  if (v12 << 30)
  {
    if (((v12 << 30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((v12 >> 2) >= 1)
  {
    v13 = (v12 >> 2) & 0x7FFFFFFF;
    if (v13 > 7)
    {
      v15 = (v12 >> 2) & 7;
      v14 = v13 - v15;
      v16 = xmmword_23CE38660;
      v17 = 16;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      v19.i64[0] = 0x800000008;
      v19.i64[1] = 0x800000008;
      v20 = v13 - v15;
      do
      {
        *(v17 - 16) = v16;
        *v17 = vaddq_s32(v16, v18);
        v16 = vaddq_s32(v16, v19);
        v17 += 32;
        v20 -= 8;
      }

      while (v20);
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 0;
    }

    do
    {
      *(4 * v14) = v14;
      ++v14;
    }

    while (v13 != v14);
  }

LABEL_15:
  v21 = *(a1 + 32);
  v22 = *(*(v21 + 34) + 32);
  if (v22)
  {
    if ((v22 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v23 = (*(v21 + 112) - *(v21 + 111)) >> 2;
  v25 = vcvtpd_s64_f64(v23 * a4);
  v24 = v23;
  if (v25 == v23)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v21, a3);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((v11 + 256));
  if (v25 != v24)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v27, a3);
  }
}

void sub_23CA38F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::VariableGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *(*(*(a1 + 32) + 272) + 32);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v48, 0, sizeof(v48));
  v9 = *(a1 + 32);
  v10 = *(*(v9 + 272) + 56);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::Mutex::ReaderLock((v9 + 256));
  v11 = *(a1 + 32);
  v12 = *(v11 + 896);
  v13 = *(v11 + 888);
  __p = 0;
  v43 = 0;
  v44 = 0;
  if ((v11 + 912) == &__p)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v11 + 912), *(v11 + 920), (*(v11 + 920) - *(v11 + 912)) >> 2);
    v14 = (v43 - __p) >> 2;
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  v15 = (v12 - v13) >> 2;
  v40 = vcvtpd_s64_f64(v15 * a5);
  if (v40 != v15)
  {
    if (v14 >= 1)
    {
      v16 = *(a1 + 32);
      v43 = 0;
      v44 = 0;
      __p = 0;
      if ((v16 + 912) != &__p)
      {
        std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v16 + 912), *(v16 + 920), (*(v16 + 920) - *(v16 + 912)) >> 2);
      }

      v49 = 0;
      v50 = v14;
      v17 = a3[1];
      if (v17 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v22 = 0;
        v23 = v14;
      }

      else
      {
        if ((v17)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v49 + 4, &v49))
        {
          v18 = v49;
LABEL_30:
          v29 = *(__p + v18);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }

LABEL_42:
          *((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v29;
          operator new();
        }

        v22 = HIDWORD(v49);
        v23 = v50;
      }

      v24 = (a3[2])(*a3);
      v25 = v23 - v22 - (v23 != 0x80000000);
      v26 = v25 + 1;
      if (((v25 + 1) & v25) != 0)
      {
        v27 = v24 * v26;
        if (v26 > v27)
        {
            ;
          }
        }

        v28 = HIDWORD(v27);
      }

      else
      {
        LODWORD(v28) = v24 & v25;
      }

      v18 = v22 + v28;
      goto LABEL_30;
    }

    v19 = *(a1 + 32);
    if ((v15 - (v15 != 0x80000000)) < 0)
    {
      v29 = **(v19 + 888);
      goto LABEL_42;
    }

    LODWORD(__p) = 0;
    HIDWORD(__p) = v15;
    HIDWORD(v49) = 0;
    v20 = a3[1];
    if (v20 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v30 = 0;
      v31 = v15;
    }

    else
    {
      if ((v20)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &__p, &v49 + 4))
      {
        v21 = HIDWORD(v49);
LABEL_39:
        v29 = *(*(v19 + 888) + 4 * v21);
        goto LABEL_42;
      }

      v30 = __p;
      v31 = HIDWORD(__p);
    }

    v32 = (a3[2])(*a3);
    v33 = v31 - v30 - (v31 != 0x80000000);
    v34 = v33 + 1;
    if (((v33 + 1) & v33) != 0)
    {
      v35 = v32 * v34;
      if (v34 > v35)
      {
          ;
        }
      }

      v36 = HIDWORD(v35);
    }

    else
    {
      LODWORD(v36) = v32 & v33;
    }

    v21 = v30 + v36;
    goto LABEL_39;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a4);
  absl::lts_20240722::Mutex::ReaderUnlock((v9 + 256));
  if (v40 != v15)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v48, a4);
  }

  if (v45)
  {
    operator delete(v45);
  }

  if (v48[0])
  {
    operator delete(v48[0]);
  }
}

void sub_23CA39AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26 >= 1 && __p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::ReaderUnlock((v27 + 256));
  if (a26)
  {
    operator delete(a26);
  }

  v30 = *(v28 - 144);
  if (v30)
  {
    operator delete(v30);
    if (!a22)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!a22)
  {
    goto LABEL_8;
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

void operations_research::sat::ArcGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *(a1 + 32);
  v6 = *(*(v5 + 272) + 32);
  if (!v6)
  {
    *a3 = 0;
    *(a3 + 2) = 0;
    operations_research::sat::CpModelProto::CpModelProto(a3 + 8, 0);
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 199) = 0u;
    *(a3 + 215) = 0u;
    *(a3 + 231) = 0;
    *a3 = 0;
    return;
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  *v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  absl::lts_20240722::Mutex::ReaderLock((v5 + 256));
  v9 = *(a1 + 32);
  v10 = *(v9 + 896);
  v11 = *(v9 + 888);
  __p = 0;
  v28 = 0;
  v29 = 0;
  if ((v9 + 912) != &__p)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&__p, *(v9 + 912), *(v9 + 920), (*(v9 + 920) - *(v9 + 912)) >> 2);
    v12 = v28;
    v24 = __p;
    v9 = *(a1 + 32);
    if (v30 == (v9 + 672))
    {
      goto LABEL_4;
    }

LABEL_8:
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v30, *(v9 + 672), *(v9 + 680), (*(v9 + 680) - *(v9 + 672)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v31[1], *(v9 + 696), *(v9 + 704), (*(v9 + 704) - *(v9 + 696)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v33, *(v9 + 720), *(v9 + 728), (*(v9 + 728) - *(v9 + 720)) >> 2);
    v9 = *(a1 + 32);
    if (&v35 == (v9 + 744))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = 0;
  v24 = 0;
  if (v30 != (v9 + 672))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (&v35 != (v9 + 744))
  {
LABEL_9:
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v35, *(v9 + 744), *(v9 + 752), (*(v9 + 752) - *(v9 + 744)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v36 + 1, *(v9 + 768), *(v9 + 776), (*(v9 + 776) - *(v9 + 768)) >> 2);
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v38, *(v9 + 792), *(v9 + 800), (*(v9 + 800) - *(v9 + 792)) >> 2);
  }

LABEL_10:
  absl::lts_20240722::Mutex::ReaderUnlock((v5 + 256));
  if (vcvtpd_s64_f64(((v10 - v11) >> 2) * a4))
  {
    v13 = (v12 - v24) >> 2;
    if (v13)
    {
      if ((v13 - (v13 != 0x80000000)) < 0)
      {
        v15 = 0;
        goto LABEL_26;
      }

      LODWORD(__p) = 0;
      HIDWORD(__p) = (v12 - v24) >> 2;
      LODWORD(v26) = 0;
      v14 = a2[1];
      if (v14 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v16 = 0;
      }

      else
      {
        if ((v14)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &__p, &v26))
        {
          LODWORD(v15) = v26;
LABEL_25:
          v15 = v15;
LABEL_26:
          v21 = v24[v15];
          __p = 0;
          v28 = 0;
          v29 = 0;
          if ((v6 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v16 = __p;
        LODWORD(v13) = HIDWORD(__p);
      }

      v17 = (a2[2])(*a2);
      v18 = v13 - v16 - (v13 != 0x80000000);
      v19 = v18 + 1;
      if (((v18 + 1) & v18) != 0)
      {
        v20 = v17 * v19;
        if (v19 > v20)
        {
            ;
          }
        }

        v15 = HIDWORD(v20);
      }

      else
      {
        LODWORD(v15) = v17 & v18;
      }

      LODWORD(v15) = v16 + v15;
      goto LABEL_25;
    }
  }

  *a3 = 0;
  *(a3 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a3 + 8, 0);
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 199) = 0u;
  *(a3 + 215) = 0u;
  *(a3 + 231) = 0;
  *a3 = 0;
  if (v24)
  {
    operator delete(v24);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v31[1])
  {
    *&v32 = v31[1];
    operator delete(v31[1]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (*(&v36 + 1))
  {
    *&v37 = *(&v36 + 1);
    operator delete(*(&v36 + 1));
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }
}

void sub_23CA3A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a29);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(v29 - 192);
  _Unwind_Resume(a1);
}

void operations_research::sat::ConstraintGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 34);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = *(v4 + 32);
    if (v6)
    {
      if ((v6 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v3, a2);
}

void sub_23CA3B080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  absl::lts_20240722::Mutex::ReaderUnlock((a13 + 256));
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
    v29 = a27;
    if (!a27)
    {
LABEL_5:
      if (!v27)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }
  }

  operator delete(v29);
  if (!v27)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v27);
  _Unwind_Resume(a1);
}

void operations_research::sat::DecompositionGraphNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  memset(v16, 0, sizeof(v16));
  v15 = *(a1 + 32);
  absl::lts_20240722::Mutex::ReaderLock((v15 + 256));
  v6 = *(a1 + 32);
  v7 = (*(v6 + 112) - *(v6 + 111)) >> 2;
  if (vcvtpd_s64_f64(v7 * a4) == v7)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v6, a3);
    absl::lts_20240722::Mutex::ReaderUnlock((v15 + 256));
  }

  else
  {
    v8 = (*(v6 + 94) - *(v6 + 93)) >> 2;
    v9 = (*(v6 + 85) - *(v6 + 84)) >> 2;
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v12 = v11;
    if (!v10)
    {
      if (v9 + v8)
      {
        if (((v9 + v8) & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operator new();
    }

    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(v6, a3);
    absl::lts_20240722::Mutex::ReaderUnlock((v15 + 256));
    if (v12)
    {
      operations_research::sat::NeighborhoodGeneratorHelper::RelaxGivenVariables(*(a1 + 32), a2, v16, a3);
    }
  }

  if (v16[0])
  {
    operator delete(v16[0]);
  }
}

void sub_23CA3C6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(&a27);
  if (a24)
  {
    operator delete(a24);
    v36 = a34;
    if (!a34)
    {
LABEL_5:
      v37 = *(v34 - 192);
      if (!v37)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v36 = a34;
    if (!a34)
    {
      goto LABEL_5;
    }
  }

  operator delete(v36);
  v37 = *(v34 - 192);
  if (!v37)
  {
LABEL_7:
    absl::lts_20240722::Mutex::ReaderUnlock((a13 + 256));
    v38 = *(v34 - 168);
    if (v38)
    {
      operator delete(v38);
    }

    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(v37);
  goto LABEL_7;
}

void operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::ActiveVariables(*(a1 + 32), &v110);
  v7 = v110;
  v93 = v111;
  if (v110 == v111)
  {
    goto LABEL_28;
  }

  v8 = 0;
  v90 = 0;
  v9 = 0;
  do
  {
    v10 = *v7;
    v11 = *(*(a1 + 32) + 272);
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    v14 = v13 + 8 * *v7 + 7;
    if (v13)
    {
      v12 = v14;
    }

    v15 = *v12;
    if (*(v15 + 16) == 2 && (v16 = *(v15 + 24), !*v16) && v16[1] == 1)
    {
      v88 = v9;
      v19 = v8 >> 2;
      if (((v8 >> 2) + 1) >> 62)
      {
LABEL_109:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v8 >> 2 != -1)
      {
        if (!(((v8 >> 2) + 1) >> 62))
        {
          operator new();
        }

LABEL_111:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v19) = v10;
      memcpy(0, 0, v8);
      v8 = 4 * v19 + 4;
      v20 = *(*(a2 + 32) + 8 * v10);
      v21 = v90;
      v22 = v90 >> 3;
      if (((v90 >> 3) + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v90 >> 3 != -1)
      {
        if (!(((v90 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v22) = v20;
      v90 = 8 * v22 + 8;
      memcpy(0, 0, v21);
      v9 = v88;
    }

    else
    {
      v17 = v9;
      v18 = v9 >> 2;
      if (((v9 >> 2) + 1) >> 62)
      {
        goto LABEL_109;
      }

      if (v9 >> 2 != -1)
      {
        if (!(((v9 >> 2) + 1) >> 62))
        {
          operator new();
        }

        goto LABEL_111;
      }

      *(4 * v18) = v10;
      v9 = 4 * v18 + 4;
      memcpy(0, 0, v17);
    }

    ++v7;
  }

  while (v7 != v93);
  if (!v8)
  {
LABEL_28:
    *a4 = 0;
    *(a4 + 2) = 0;
    operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
    *(a4 + 168) = 0;
    *(a4 + 176) = 0;
    *(a4 + 199) = 0u;
    *(a4 + 215) = 0u;
    *(a4 + 231) = 0;
    *a4 = 0;
    goto LABEL_29;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::UpdatedModelProtoCopy(*(a1 + 32), v108);
  operations_research::sat::ConstraintProto::ConstraintProto(v100, 0);
  v23 = v100[1];
  if (v100[1])
  {
    v23 = *(v100[1] & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(&v103, "local_branching", 0xFuLL, v23);
  if (HIDWORD(v105) == 12)
  {
    v24 = v8;
    v25 = v104;
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v100);
    HIDWORD(v105) = 12;
    v26 = v100[1];
    if (v100[1])
    {
      v26 = *(v100[1] & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v26);
    v24 = v8;
    v104 = v25;
  }

  v27 = 0;
  v28 = 0;
  v29 = v24 >> 2;
  v91 = vcvtpd_s64_f64((v24 >> 2) * a5);
  v30 = 1;
  do
  {
    while (1)
    {
      v32 = *(v25 + 40);
      v31 = *(v25 + 44);
      if (!*(8 * v27))
      {
        break;
      }

      if (v32 == v31)
      {
        google::protobuf::RepeatedField<long long>::Grow(v25 + 40, v31);
        v32 = *(v25 + 40);
      }

      v33 = *(v25 + 48);
      *(v25 + 40) = v32 + 1;
      *(v33 + 8 * v32) = -1;
      v34 = *(4 * v27);
      v35 = *(v25 + 16);
      v36 = v35;
      if (v35 == HIDWORD(v35))
      {
        google::protobuf::RepeatedField<int>::Grow(v25 + 16, HIDWORD(v35), (HIDWORD(v35) + 1));
        v36 = *(v25 + 16);
      }

      v37 = *(v25 + 24);
      *(v25 + 16) = v36 + 1;
      *(v37 + 4 * v36) = v34;
      ++v28;
      v27 = v30++;
      if (v29 <= v27)
      {
        goto LABEL_48;
      }
    }

    if (v32 == v31)
    {
      google::protobuf::RepeatedField<long long>::Grow(v25 + 40, v31);
      v32 = *(v25 + 40);
    }

    v38 = *(v25 + 48);
    *(v25 + 40) = v32 + 1;
    *(v38 + 8 * v32) = 1;
    v39 = *(4 * v27);
    v40 = *(v25 + 16);
    v41 = v40;
    if (v40 == HIDWORD(v40))
    {
      google::protobuf::RepeatedField<int>::Grow(v25 + 16, HIDWORD(v40), (HIDWORD(v40) + 1));
      v41 = *(v25 + 16);
    }

    v42 = *(v25 + 24);
    *(v25 + 16) = v41 + 1;
    *(v42 + 4 * v41) = v39;
    v27 = v30++;
  }

  while (v29 > v27);
LABEL_48:
  v44 = *(v25 + 64);
  v43 = *(v25 + 68);
  if (v44 == v43)
  {
    google::protobuf::RepeatedField<long long>::Grow(v25 + 64, v43);
    v44 = *(v25 + 64);
    v43 = *(v25 + 68);
  }

  v45 = *(v25 + 72);
  v46 = v44 + 1;
  *(v25 + 64) = v44 + 1;
  *(v45 + 8 * v44) = -v28;
  if (v44 + 1 == v43)
  {
    google::protobuf::RepeatedField<long long>::Grow(v25 + 64, v43);
    v46 = *(v25 + 64);
    v45 = *(v25 + 72);
  }

  *(v25 + 64) = v46 + 1;
  *(v45 + 8 * v46) = (v91 - v28);
  v47 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v109, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if (v47 != v100)
  {
    v48 = *(v47 + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      v49 = v100[1];
      if ((v100[1] & 1) == 0)
      {
LABEL_55:
        if (v48 != v49)
        {
LABEL_56:
          operations_research::sat::ConstraintProto::CopyFrom(v47, v100);
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v49 = v100[1];
      if ((v100[1] & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    if (v48 != *(v49 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_56;
    }

LABEL_59:
    operations_research::sat::ConstraintProto::InternalSwap(v47, v100);
  }

LABEL_60:
  operations_research::sat::ConstraintProto::~ConstraintProto(v100);
  strcpy(v100, "lb_relax_lns_lp");
  v101 = 15;
  v102 = xmmword_23CE306D0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v50 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v100);
  *(v50 + 332) = 1;
  *(v50 + 572) = 2;
  *(v50 + 294) = 1;
  *(v50 + 726) = 0;
  *(v50 + 570) = 0;
  *(v50 + 588) = 0;
  *(v50 + 828) = 100000;
  *(v50 + 36) = vorr_s8(*(v50 + 36), 0x800000000800);
  *(v50 + 536) = 0x4024000000000000;
  *(v50 + 20) = vorrq_s8(*(v50 + 20), xmmword_23CE40600);
  v51 = *(a1 + 176);
  if (v51)
  {
    v52 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v100);
    absl::lts_20240722::Mutex::Lock(v51);
    operations_research::TimeLimit::MergeWithGlobalTimeLimit(v52, *(v51 + 8));
    absl::lts_20240722::Mutex::Unlock(v51);
  }

  operations_research::sat::CpModelProto::CpModelProto(v99, 0, v108);
  __p = v100;
  v53 = *(a1 + 168);
  if (!v53)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v53 + 48))(v53, v99, &__p);
  operations_research::sat::CpModelProto::~CpModelProto(v99);
  v54 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(v100);
  v55 = *v54;
  v56 = v54[1];
  if (*v54 == v56)
  {
LABEL_66:
    v57 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v100);
    v58 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(v100);
    v59 = 0;
    v60 = 0;
    __p = 0;
    v97 = 0;
    v98 = 0;
    v92 = v57;
    while (1)
    {
      v61 = *(4 * v59);
      if (~v61 <= v61)
      {
        v62 = *(4 * v59);
      }

      else
      {
        v62 = ~v61;
      }

      v63 = (*(*v57 + 4 * v62) ^ (v61 >> 31));
      if (v63 >= (v58[1] - *v58) >> 3)
      {
        std::vector<double>::__throw_out_of_range[abi:ne200100]();
      }

      v64 = *(*v58 + 8 * v63);
      v65 = *(8 * v59);
      *&v95.__begin_ = xmmword_23CE40610;
      v112[0] = 0.0;
      v66 = a3[1];
      if (v66 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        break;
      }

      if (!(v66)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v95, v112))
      {
        v68 = *&v95.__begin_;
        v70 = *&v95.__end_;
        v69 = *&v95.__end_ - *&v95.__begin_;
LABEL_77:
        v71 = (*&v69 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v72 = ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v69 >= 0.0)
        {
          v72 = 0;
          v71 = 0;
        }

        if ((*&v69 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v71 = 1;
        }

        v73 = (*&v69 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v71;
        if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v73 = 1;
        }

        if ((v73 | v72))
        {
          v74 = (a3[2])(*a3);
          v75 = __clz(v74);
          *&v76 = ((v74 << v75 >> 11) & 0xFFFFFFFFFFFFFLL) - (v75 << 52) + 0x3FE0000000000000;
          if (!v74)
          {
            v76 = 0.0;
          }

          v67 = v68 + v76 * v69;
        }

        else
        {
          do
          {
            while (1)
            {
              v77 = (a3[2])(*a3);
              if (v77)
              {
                break;
              }

              v67 = v68 + 0.0 * v69;
              if (v67 < v70)
              {
                goto LABEL_93;
              }
            }

            v78 = __clz(v77);
            v67 = v68 + COERCE_DOUBLE(((v77 << v78 >> 11) & 0xFFFFFFFFFFFFFLL) - (v78 << 52) + 0x3FE0000000000000) * v69;
          }

          while (v67 >= v70);
        }

        goto LABEL_93;
      }

      v67 = v112[0];
LABEL_93:
      v79 = vabdd_f64(v64, v65) + v67;
      v80 = v97;
      if (v97 < v98)
      {
        *v97 = v79;
        v97 = v80 + 1;
        v59 = ++v60;
        if (v29 <= v60)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v81 = __p;
        v82 = v97 - __p;
        v83 = (v97 - __p) >> 3;
        v84 = v83 + 1;
        if ((v83 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v85 = v98 - __p;
        if ((v98 - __p) >> 2 > v84)
        {
          v84 = v85 >> 2;
        }

        if (v85 >= 0x7FFFFFFFFFFFFFF8)
        {
          v86 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v86 = v84;
        }

        if (v86)
        {
          if (!(v86 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v83) = v79;
        memcpy(0, v81, v82);
        __p = 0;
        v97 = (8 * v83 + 8);
        v98 = 0;
        if (v81)
        {
          operator delete(v81);
        }

        v57 = v92;
        v97 = (8 * v83 + 8);
        v59 = ++v60;
        if (v29 <= v60)
        {
LABEL_106:
          memset(&v95, 0, sizeof(v95));
          if (!(v29 >> 62))
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }
      }
    }

    v68 = 0.0;
    v69 = 0.000001;
    v70 = 0.000001;
    goto LABEL_77;
  }

  while ((*(*v55 + 24260) & 1) != 0)
  {
    v55 += 8;
    if (v55 == v56)
    {
      goto LABEL_66;
    }
  }

  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  *a4 = 0;
  operations_research::sat::Model::~Model(v100);
  operations_research::sat::CpModelProto::~CpModelProto(v108);
LABEL_29:
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }
}

void sub_23CA3D57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  operations_research::sat::ConstraintProto::~ConstraintProto(&a49);
  operations_research::sat::CpModelProto::~CpModelProto(&a59);
  if (a21)
  {
    operator delete(a21);
    if (!__p)
    {
LABEL_3:
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!a22)
  {
LABEL_4:
    v61 = *(v59 - 192);
    if (!v61)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a22);
  v61 = *(v59 - 192);
  if (!v61)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v59 - 184) = v61;
  operator delete(v61);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingConstraintCollection>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ModelLpValues>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::GenerateSchedulingNeighborhoodFromIntervalPrecedences(operations_research::sat::NeighborhoodGeneratorHelper *this@<X3>, int *a2@<X0>, uint64_t a3@<X1>, const operations_research::sat::CpSolverResponse *a4@<X2>, _BYTE *a5@<X8>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(this, a5);
  a5[1] = a3 != 0;
  if (a3)
  {
    v74 = a4;
    v78 = xmmword_23CE306D0;
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = a2 + 1;
      v13 = 8 * a3;
      do
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v78, v12 - 1, v75);
        if (v77 == 1)
        {
          *v76 = *(v12 - 1);
        }

        v10 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v78, v12, v75);
        if (v77 == 1)
        {
          *v76 = *v12;
        }

        v12 += 2;
        v13 -= 8;
      }

      while (v13);
    }

    v72 = a3 & 0x1FFFFFFFFFFFFFFFLL;
    v71 = a3;
    v14 = *(this + 58);
    v15 = v74;
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 59) - v14) >> 3) >= 0x14)
    {
      v16 = *(v14 + 456);
      v17 = *(v14 + 464);
      if (v17 != v16)
      {
        v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
        v73 = a5 + 32;
        do
        {
          v23 = *v16;
          v24 = v23;
          if (v78 > 1)
          {
            v21 = 0;
            _X11 = v79;
            __asm { PRFM            #4, [X11] }

            v55 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23));
            v22 = (v55 >> 7) ^ (v79 >> 12);
            v56 = vdup_n_s8(v55 & 0x7F);
            while (1)
            {
              v18 = v22 & v78;
              v19 = *(v79 + v18);
              v20 = vceq_s8(v19, v56);
              if (v20)
              {
                break;
              }

LABEL_15:
              if (vceq_s8(v19, 0x8080808080808080))
              {
                goto LABEL_22;
              }

              v21 += 8;
              v22 = v21 + v18;
            }

            while (*(v80 + 4 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v78)) != v24)
            {
              v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v20)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            _ZF = *(&v78 + 1) >= 2uLL && v79 == v23;
            if (!_ZF)
            {
LABEL_22:
              v26 = *(this + 34);
              v28 = *(v26 + 48);
              v27 = (v26 + 48);
              v29 = (v28 + 8 * v24 + 7);
              if ((v28 & 1) == 0)
              {
                v29 = v27;
              }

              v30 = *v29;
              if (*(v30 + 16))
              {
                v31 = **(v30 + 24);
                v32 = ~v31 <= v31 ? **(v30 + 24) : ~v31;
                v33 = *(*(v15 + 4) + 8 * v32);
                *(*(v15 + 4) + 8 * v32);
                if (v31 >= 0 == (v33 != 0))
                {
                  v34 = v32;
                  v35 = *v73 - 1;
                  v36 = *v73 & 1;
                  v37 = (v35 + 8 * v34 + 8);
                  if (!v36)
                  {
                    v37 = (a5 + 32);
                  }

                  v38 = *v37;
                  v39 = *v37;
                  *(v39 + 16) = 0;
                  v40 = (v39 + 16);
                  if (*(v38 + 20))
                  {
                    v41 = 0;
                  }

                  else
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v40, 0);
                    v41 = *v40;
                    v36 = *v73 & 1;
                    v35 = *v73 - 1;
                  }

                  v42 = *(v38 + 24);
                  *(v38 + 16) = v41 + 1;
                  *(v42 + 8 * v41) = v33;
                  v43 = v35 + 8 * v34 + 8;
                  _ZF = v36 == 0;
                  v44 = a5 + 32;
                  if (!_ZF)
                  {
                    v44 = v43;
                  }

                  v45 = *v44;
                  v47 = (*v44 + 16);
                  v46 = *v47;
                  v48 = *(v45 + 20);
                  if (*v47 == v48)
                  {
                    google::protobuf::RepeatedField<long long>::Grow(v47, v48);
                    v46 = *v47;
                  }

                  v49 = *(v45 + 24);
                  *(v45 + 16) = v46 + 1;
                  *(v49 + 8 * v46) = v33;
                  v15 = v74;
                  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
                }
              }
            }
          }

          ++v16;
        }

        while (v16 != v17);
      }
    }

    if (v72)
    {
      v57 = &a2[2 * v71];
      do
      {
        v58 = *(this + 34);
        v61 = *(v58 + 48);
        v59 = (v58 + 48);
        v60 = v61;
        v62 = v61 + 7;
        v63 = (v61 + 7 + 8 * *a2);
        if ((v61 & 1) == 0)
        {
          v63 = v59;
        }

        v64 = *v63;
        v65 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v64 + 60) == 19)
        {
          v65 = *(v64 + 48);
        }

        if (v65[4])
        {
          v66 = v65[4];
        }

        else
        {
          v66 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v67 = (v62 + 8 * a2[1]);
        if (v60)
        {
          v59 = v67;
        }

        v68 = *v59;
        v69 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v68 + 60) == 19)
        {
          v69 = *(v68 + 48);
        }

        if (v69[3])
        {
          v70 = v69[3];
        }

        else
        {
          v70 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        a2 += 2;
      }

      while (a2 != v57);
    }

    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v10, v74, (a5 + 8));
    *a5 = 1;
    if (v78 >= 2)
    {
      operator delete((v79 - (BYTE8(v78) & 1) - 8));
    }
  }

  else
  {
    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v10, a4, (a5 + 8));
    *a5 = 1;
  }
}

void sub_23CA3E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a17 >= 2)
  {
    operator delete((a19 - (a18 & 1) - 8));
  }

  operations_research::sat::Neighborhood::~Neighborhood(v19);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::AddPrecedence(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::sat::LinearExpressionProto *a3, operations_research::sat::CpModelProto *a4)
{
  v6 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v7 = v6;
  if (*(v6 + 60) == 12)
  {
    result = *(v6 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v6);
    *(v7 + 60) = 12;
    v9 = *(v7 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v9);
    *(v7 + 48) = result;
  }

  v11 = *(result + 64);
  v10 = *(result + 68);
  v12 = (result + 64);
  if (v11 == v10)
  {
    v26 = result;
    google::protobuf::RepeatedField<long long>::Grow(result + 64, v10);
    result = v26;
    v11 = *(v26 + 64);
    v10 = *(v26 + 68);
  }

  v13 = *(result + 72);
  *(result + 64) = v11 + 1;
  *(v13 + 8 * v11) = 0x8000000000000000;
  v14 = *(a2 + 8) - *(this + 8);
  if (v11 + 1 == v10)
  {
    v27 = result;
    google::protobuf::RepeatedField<long long>::Grow(v12, v10);
    result = v27;
    v28 = *(v27 + 64);
    v29 = *(v27 + 72);
    *v12 = v28 + 1;
    *(v29 + 8 * v28) = v14;
    if (*(this + 4) < 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v12 = v11 + 2;
    *(v13 + 8 * (v11 + 1)) = v14;
    if (*(this + 4) < 1)
    {
      goto LABEL_18;
    }
  }

  v15 = 0;
  do
  {
    v16 = *(*(this + 3) + 4 * v15);
    v17 = *(result + 16);
    v18 = v17;
    if (v17 == HIDWORD(v17))
    {
      v24 = result;
      google::protobuf::RepeatedField<int>::Grow(result + 16, HIDWORD(v17), (HIDWORD(v17) + 1));
      result = v24;
      v18 = *(v24 + 16);
    }

    v19 = *(result + 24);
    *(result + 16) = v18 + 1;
    *(v19 + 4 * v18) = v16;
    v20 = *(*(this + 6) + 8 * v15);
    v22 = *(result + 40);
    v21 = *(result + 44);
    if (v22 == v21)
    {
      v25 = result;
      google::protobuf::RepeatedField<long long>::Grow(result + 40, v21);
      result = v25;
      v22 = *(v25 + 40);
    }

    v23 = *(result + 48);
    *(result + 40) = v22 + 1;
    *(v23 + 8 * v22) = v20;
    ++v15;
  }

  while (v15 < *(this + 4));
LABEL_18:
  if (*(a2 + 4) >= 1)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a2 + 3) + 4 * v30);
      v32 = *(result + 16);
      v33 = v32;
      if (v32 == HIDWORD(v32))
      {
        v39 = result;
        google::protobuf::RepeatedField<int>::Grow(result + 16, HIDWORD(v32), (HIDWORD(v32) + 1));
        result = v39;
        v33 = *(v39 + 16);
      }

      v34 = *(result + 24);
      *(result + 16) = v33 + 1;
      *(v34 + 4 * v33) = v31;
      v35 = *(*(a2 + 6) + 8 * v30);
      v37 = *(result + 40);
      v36 = *(result + 44);
      if (v37 == v36)
      {
        v40 = result;
        google::protobuf::RepeatedField<long long>::Grow(result + 40, v36);
        result = v40;
        v37 = *(v40 + 40);
      }

      v38 = *(result + 48);
      *(result + 40) = v37 + 1;
      *(v38 + 8 * v37) = -v35;
      ++v30;
    }

    while (v30 < *(a2 + 4));
  }

  return result;
}

void operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(operations_research::sat::NeighborhoodGeneratorHelper *this@<X6>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, uint64_t a5@<X3>, const operations_research::sat::CpSolverResponse *a6@<X4>, __int128 *a7@<X5>, _BYTE *a8@<X8>)
{
  v8 = this;
  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(this, a8);
  v16 = 4 * a3;
  if (4 * a3 == 28)
  {
    v17 = 8;
  }

  else
  {
    v17 = ((v16 >> 2) - 1) / 7 + (v16 >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v107, v17);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    do
    {
      v18 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v107, a2, &__p);
      if (v112 == 1)
      {
        *v111 = *a2;
      }

      ++a2;
      v16 -= 4;
    }

    while (v16);
  }

  v19 = *(v8 + 58);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 59) - v19) >> 3) <= 0x13)
  {
LABEL_79:
    operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v18, a6, (a8 + 8));
    *a8 = 1;
    goto LABEL_80;
  }

  v104 = a6;
  v20 = *(v19 + 456);
  v21 = *(v19 + 464);
  if (v21 == v20)
  {
    a6 = v104;
    goto LABEL_48;
  }

  v101 = a7;
  v102 = a5;
  v22 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v103 = v8;
  v23 = a8 + 32;
  do
  {
    while (1)
    {
      v29 = *v20;
      v30 = v29;
      LODWORD(v105) = *v20;
      if (v107 > 1)
      {
        v27 = 0;
        _X11 = v108;
        __asm { PRFM            #4, [X11] }

        v45 = (((v22 + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v22 + v29));
        v28 = (v45 >> 7) ^ (v108 >> 12);
        v46 = vdup_n_s8(v45 & 0x7F);
        while (1)
        {
          v24 = v28 & v107;
          v25 = *(v108 + v24);
          v26 = vceq_s8(v25, v46);
          if (v26)
          {
            break;
          }

LABEL_14:
          if (vceq_s8(v25, 0x8080808080808080))
          {
            goto LABEL_21;
          }

          v27 += 8;
          v28 = v27 + v24;
        }

        while (*(v109 + 4 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v107)) != v30)
        {
          v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v26)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_30;
      }

      if (*(&v107 + 1) < 2uLL || v108 != v29)
      {
        break;
      }

LABEL_30:
      if (++v20 == v21)
      {
        goto LABEL_45;
      }
    }

LABEL_21:
    v32 = *(v8 + 34);
    v34 = *(v32 + 48);
    v33 = (v32 + 48);
    v35 = (v34 + 8 * v30 + 7);
    if ((v34 & 1) == 0)
    {
      v35 = v33;
    }

    v36 = *v35;
    if (!*(v36 + 16))
    {
      goto LABEL_30;
    }

    v37 = **(v36 + 24);
    if (~v37 <= v37)
    {
      v38 = **(v36 + 24);
    }

    else
    {
      v38 = ~v37;
    }

    v39 = *(*(v104 + 4) + 8 * v38);
    *(*(v104 + 4) + 8 * v38);
    if (v37 >= 0 != (v39 != 0))
    {
      v18 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v107, &v105, &__p);
      if (v112 == 1)
      {
        *v111 = v105;
      }

      goto LABEL_30;
    }

    v47 = v22;
    v48 = v38;
    v49 = *v23 - 1;
    v50 = *v23 & 1;
    v51 = (v49 + 8 * v48 + 8);
    v52 = v23;
    if (!v50)
    {
      v51 = v23;
    }

    v53 = *v51;
    v54 = *v51;
    *(v54 + 16) = 0;
    v55 = (v54 + 16);
    if (*(v53 + 20))
    {
      v56 = 0;
    }

    else
    {
      v18 = google::protobuf::RepeatedField<long long>::Grow(v55, 0);
      v56 = *v55;
      v50 = *v52 & 1;
      v49 = *v52 - 1;
    }

    v57 = *(v53 + 24);
    *(v53 + 16) = v56 + 1;
    *(v57 + 8 * v56) = v39;
    v58 = v49 + 8 * v48 + 8;
    v23 = v52;
    if (v50)
    {
      v59 = v58;
    }

    else
    {
      v59 = v52;
    }

    v60 = *v59;
    v62 = (*v59 + 16);
    v61 = *v62;
    v63 = *(v60 + 20);
    if (*v62 == v63)
    {
      v18 = google::protobuf::RepeatedField<long long>::Grow(v62, v63);
      v61 = *v62;
      v23 = v52;
    }

    v64 = *(v60 + 24);
    *(v60 + 16) = v61 + 1;
    *(v64 + 8 * v61) = v39;
    v22 = v47;
    v8 = v103;
    ++v20;
  }

  while (v20 != v21);
LABEL_45:
  v19 = *(v8 + 58);
  a5 = v102;
  a7 = v101;
  a6 = v104;
  if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 59) - v19) >> 3) <= 0x13)
  {
    goto LABEL_79;
  }

LABEL_48:
  if (*(&v107 + 1) >> 1 >= ((*(v19 + 464) - *(v19 + 456)) >> 2))
  {
    goto LABEL_79;
  }

  a8[1] = 1;
  v105 = *a7;
  v106 = *(a7 + 2);
  operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(v8, &v107, a6, &v105, &__p);
  v67 = __p;
  v68 = v111;
  if (__p != v111)
  {
    do
    {
      v69 = *(v8 + 34);
      v72 = *(v69 + 48);
      v70 = (v69 + 48);
      v71 = v72;
      v73 = v72 + 7;
      v74 = (v72 + 7 + 8 * *v67);
      if ((v72 & 1) == 0)
      {
        v74 = v70;
      }

      v75 = *v74;
      v76 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (*(v75 + 60) == 19)
      {
        v76 = *(v75 + 48);
      }

      if (v76[4])
      {
        v77 = v76[4];
      }

      else
      {
        v77 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v78 = (v73 + 8 * v67[1]);
      if (v71)
      {
        v70 = v78;
      }

      v79 = *v70;
      v80 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (*(v79 + 60) == 19)
      {
        v80 = *(v79 + 48);
      }

      if (v80[3])
      {
        v81 = v80[3];
      }

      else
      {
        v81 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v67 += 2;
    }

    while (v67 != v68);
  }

  if ((a5 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v82 = a8 + 32;
    v83 = 4 * a5;
    do
    {
      v84 = *a4;
      v85 = *(*(a6 + 4) + 8 * v84);
      v86 = *v82 - 1;
      v87 = *v82 & 1;
      v88 = (v86 + 8 * v84 + 8);
      if (!v87)
      {
        v88 = (a8 + 32);
      }

      v89 = *v88;
      v90 = *v88;
      *(v90 + 16) = 0;
      v91 = (v90 + 16);
      if (*(v89 + 20))
      {
        v92 = 0;
      }

      else
      {
        v65 = google::protobuf::RepeatedField<long long>::Grow(v91, 0);
        v92 = *v91;
        v87 = *v82 & 1;
        v86 = *v82 - 1;
      }

      v93 = *(v89 + 24);
      *(v89 + 16) = v92 + 1;
      *(v93 + 8 * v92) = v85;
      v94 = v86 + 8 * v84 + 8;
      if (v87)
      {
        v95 = v94;
      }

      else
      {
        v95 = a8 + 32;
      }

      v96 = *v95;
      v98 = (*v95 + 16);
      v97 = *v98;
      v99 = *(v96 + 20);
      if (*v98 == v99)
      {
        v65 = google::protobuf::RepeatedField<long long>::Grow(v98, v99);
        v97 = *v98;
      }

      v100 = *(v96 + 24);
      *(v96 + 16) = v97 + 1;
      *(v100 + 8 * v97) = v85;
      ++a4;
      v83 -= 4;
    }

    while (v83);
  }

  operations_research::sat::NeighborhoodGeneratorHelper::AddSolutionHinting(v65, a6, (a8 + 8));
  *a8 = 1;
  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

LABEL_80:
  if (v107 >= 2)
  {
    operator delete((v108 - (BYTE8(v107) & 1) - 8));
  }
}

void sub_23CA3E998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, operations_research::sat::Neighborhood *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
    operations_research::sat::Neighborhood::~Neighborhood(a12);
    _Unwind_Resume(a1);
  }

  operations_research::sat::Neighborhood::~Neighborhood(a12);
  _Unwind_Resume(a1);
}

void operations_research::sat::RandomIntervalSchedulingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 464);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 472) - v11) >> 3) < 0x14)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(v11 + 464) - *(v11 + 456)) >> 2;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v10, v12, &__p);
  v13 = *a3;
  v14 = *(a3 + 16);
  v13 = *a3;
  v14 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), __p.__begin_, __p.__end_ - __p.__begin_, 0, 0, a2, &v13, a4);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_23CA3EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::RandomPrecedenceSchedulingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 32);
  v13 = xmmword_23CE306D0;
  v11 = *a3;
  v12 = *(a3 + 16);
  operations_research::sat::NeighborhoodGeneratorHelper::GetSchedulingPrecedences(v10, &v13, a2, &v11, &__p);
  v13 = *a3;
  v14 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromIntervalPrecedences(*(a1 + 32), __p, (v16 - __p) >> 3, a2, a4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_23CA3EC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::GetRandomSubset<std::pair<int,int>>(uint64_t a1, void *a2, double a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (*a1 == v5)
  {
    return;
  }

  v8 = (v5 - v6) >> 3;
  if (v8 < 2)
  {
    goto LABEL_22;
  }

  v9 = v5 - 8;
  if (v5 - 8 <= v6)
  {
    goto LABEL_22;
  }

  do
  {
    if (v8 == 1)
    {
      goto LABEL_5;
    }

    if (!v8)
    {
      v16 = (a2[2])(*a2);
      if (!v16)
      {
        goto LABEL_5;
      }

LABEL_20:
      v17 = &v6[2 * v16];
      v18 = *v6;
      *v6 = *v17;
      *v17 = v18;
      v19 = v6[1];
      v6[1] = v17[1];
      v17[1] = v19;
      goto LABEL_5;
    }

    v11 = __clz(v8);
    if (((v8 << v11) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 64;
    }

    else
    {
      v12 = 63;
    }

    v13 = v12 - v11;
    v14 = v13 >> 6;
    if ((v13 & 0x3F) != 0)
    {
      ++v14;
    }

    if (v14 <= v13)
    {
      v15 = 0xFFFFFFFFFFFFFFFFLL >> -(v13 / v14);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      v16 = (a2[2])(*a2) & v15;
    }

    while (v16 >= v8);
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_5:
    v6 += 2;
    --v8;
  }

  while (v6 < v9);
  v6 = *a1;
  v8 = (*(a1 + 8) - *a1) >> 3;
LABEL_22:
  v20 = llround(v8 * a3);
  if (v20 <= v8)
  {
    if (v20 < v8)
    {
      *(a1 + 8) = &v6[2 * v20];
    }
  }

  else
  {

    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1, v20 - v8);
  }
}

void operations_research::sat::SchedulingTimeWindowNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 464);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 472) - v9) >> 3) < 0x14)
  {
    operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v8, 0, &v37);
    if (v37 != v38)
    {
      goto LABEL_3;
    }

LABEL_7:
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a4);
    goto LABEL_42;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(v8, (*(v9 + 464) - *(v9 + 456)) >> 2, &v37);
  if (v37 == v38)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(*(a1 + 32) + 272);
  *__dst = *a3;
  v30 = *(a3 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  v30 = 0;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, 0, v33, v34, (v34 - v33) >> 2);
  if (*(*(*(a1 + 32) + 264) + 327) == 1)
  {
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, __dst[1], v31, v32, (v32 - v31) >> 2);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v11 = __dst[1];
  if (__dst[0] != __dst[1])
  {
    v12 = (__dst[0] + 4);
    while (v12 != __dst[1])
    {
      v13 = *(v12 - 1);
      v14 = *v12++;
      if (v13 == v14)
      {
        v15 = v12 - 2;
        while (v12 != v11)
        {
          v16 = v13;
          v13 = *v12;
          if (v16 != *v12)
          {
            v15[1] = v13;
            ++v15;
          }

          ++v12;
        }

        if (v15 + 1 != v11)
        {
          __dst[1] = v15 + 1;
        }

        break;
      }
    }
  }

  std::__sort<std::__less<int,int> &,int *>();
  v17 = __p;
  v18 = v27;
  if (__p != v27)
  {
    v19 = (__p + 4);
    while (v19 != v27)
    {
      v20 = *(v19 - 1);
      v21 = *v19++;
      if (v20 == v21)
      {
        v22 = v19 - 2;
        while (v19 != v18)
        {
          v23 = v20;
          v20 = *v19;
          if (v23 != *v19)
          {
            v22[1] = v20;
            ++v22;
          }

          ++v19;
        }

        if (v22 + 1 != v18)
        {
          v18 = v22 + 1;
          v27 = v22 + 1;
        }

        break;
      }
    }
  }

  v24 = *a3;
  v25 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), __dst[0], (__dst[1] - __dst[0]) >> 2, v17, v18 - v17, a2, &v24, a4);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

LABEL_42:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_23CA3F18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a19);
  v21 = *(v19 - 120);
  if (v21)
  {
    *(v19 - 112) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2[1] != *a2)
  {
    v6 = *(a3 + 48) + 8 * **a2 + 7;
    if ((*(a3 + 48) & 1) == 0)
    {
      v6 = a3 + 48;
    }

    v7 = *v6;
    v8 = *(*v6 + 60);
    v9 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v8 == 19)
    {
      v9 = *(v7 + 48);
    }

    v10 = v9[3];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v12 = *(a4 + 32);
    v13 = v11[8];
    v14 = *(v11 + 4);
    if (v14 >= 1)
    {
      v15 = v11[6];
      v16 = v11[3];
      if (v14 == 1)
      {
        v17 = 0;
LABEL_15:
        v22 = v14 - v17;
        v23 = v16 + v17;
        v24 = &v15[v17];
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v23++;
          v13 = (v13 + *(v12 + 8 * v27) * v25);
          --v22;
        }

        while (v22);
        goto LABEL_17;
      }

      v18 = 0;
      v17 = v14 & 0x7FFFFFFE;
      v19 = v15 + 1;
      v20 = v16 + 1;
      v21 = v17;
      do
      {
        v13 = (v13 + *(v12 + 8 * *(v20 - 1)) * *(v19 - 1));
        v18 += *(v12 + 8 * *v20) * *v19;
        v19 += 2;
        v20 += 2;
        v21 -= 2;
      }

      while (v21);
      v13 = (v13 + v18);
      if (v17 != v14)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v28 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
    if (v8 == 19)
    {
      v28 = *(v7 + 48);
    }

    if (v28[4])
    {
      v29 = v28[4];
    }

    else
    {
      v29 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    v30 = v29[8];
    v31 = *(v29 + 4);
    if (v31 >= 1)
    {
      v32 = v29[6];
      v33 = v29[3];
      if (v31 == 1)
      {
        v34 = 0;
LABEL_28:
        v39 = v31 - v34;
        v40 = v33 + v34;
        v41 = &v32[v34];
        do
        {
          v43 = *v41++;
          v42 = v43;
          v44 = *v40++;
          v30 = (v30 + *(v12 + 8 * v44) * v42);
          --v39;
        }

        while (v39);
        goto LABEL_30;
      }

      v35 = 0;
      v34 = v31 & 0x7FFFFFFE;
      v36 = v32 + 1;
      v37 = v33 + 1;
      v38 = v34;
      do
      {
        v30 = (v30 + *(v12 + 8 * *(v37 - 1)) * *(v36 - 1));
        v35 += *(v12 + 8 * *v37) * *v36;
        v36 += 2;
        v37 += 2;
        v38 -= 2;
      }

      while (v38);
      v30 = (v30 + v35);
      if (v34 != v31)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v55 = xmmword_23CE35A10;
    v54 = 0;
    v45 = a5[1];
    if (v45 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v46 = 0.0;
      v47 = 1.0;
      v48 = 1.0;
    }

    else
    {
      if ((v45)(*a5, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v55, &v54))
      {
        goto LABEL_49;
      }

      v48 = *(&v55 + 1);
      v46 = *&v55;
      v47 = *(&v55 + 1) - *&v55;
    }

    v49 = (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v50 = ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v47 >= 0.0)
    {
      v50 = 0;
      v49 = 0;
    }

    if ((*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v49 = 1;
    }

    v51 = (*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v49;
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v51 = 1;
    }

    if ((v51 | v50))
    {
      (a5[2])(*a5);
    }

    else
    {
      do
      {
        while (1)
        {
          v53 = (a5[2])(*a5);
          if (!v53)
          {
            break;
          }

          v52 = __clz(v53);
          if (v46 + COERCE_DOUBLE(((v53 << v52 >> 11) & 0xFFFFFFFFFFFFFLL) - (v52 << 52) + 0x3FE0000000000000) * v47 < v48)
          {
            goto LABEL_49;
          }
        }
      }

      while (v46 + 0.0 * v47 >= v48);
    }

LABEL_49:
    operator new();
  }

  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}