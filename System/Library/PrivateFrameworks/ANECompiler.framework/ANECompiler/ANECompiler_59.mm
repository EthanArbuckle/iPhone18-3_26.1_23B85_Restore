void sub_23CC2BA3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return a7.n128_f64[0];
  }

  if (a4 != 2)
  {
    if (a4 <= 128)
    {
      if (a1 == a2)
      {
        return a7.n128_f64[0];
      }

      v12 = a1 + 2;
      if (a1 + 2 == a2)
      {
        return a7.n128_f64[0];
      }

      v13 = 0;
      v14 = a1;
LABEL_15:
      v15 = v14;
      v14 = v12;
      v16 = *v12;
      if (v16 == *v15)
      {
        v17 = *(v15 + 6);
        v18 = *(v15 + 2);
        if (v17 == v18)
        {
          if (*(v15 + 28) <= *(v15 + 12))
          {
            goto LABEL_14;
          }
        }

        else if (v17 >= v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v16 >= *v15)
        {
          goto LABEL_14;
        }

        v17 = *(v15 + 6);
      }

      v19 = *(v15 + 28);
      v20 = *v15;
      *(v14 + 5) = *(v15 + 5);
      *v14 = v20;
      if (v15 == a1)
      {
LABEL_12:
        v15 = a1;
        goto LABEL_13;
      }

      v21 = v13;
      while (1)
      {
        v22 = (a1 + v21);
        v23 = *(a1 + v21 - 16);
        if (v16 == v23)
        {
          v24 = *(v22 - 2);
          if (v17 == v24)
          {
            if (v19 <= *(a1 + v21 - 4))
            {
              goto LABEL_13;
            }
          }

          else if (v17 >= v24)
          {
            v15 = (a1 + v21);
LABEL_13:
            *v15 = v16;
            *(v15 + 2) = v17;
            *(v15 + 12) = v19;
LABEL_14:
            v12 = v14 + 2;
            v13 += 16;
            if (v14 + 2 == a2)
            {
              return a7.n128_f64[0];
            }

            goto LABEL_15;
          }
        }

        else if (v16 >= v23)
        {
          goto LABEL_13;
        }

        v15 -= 2;
        *v22 = *(a1 + v21 - 16);
        *(v22 + 5) = *(a1 + v21 - 11);
        v21 -= 16;
        if (!v21)
        {
          goto LABEL_12;
        }
      }
    }

    v27 = a4 >> 1;
    v28 = &a1[2 * (a4 >> 1)];
    v29 = a4 - (a4 >> 1);
    if (a4 > a6)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(a1, &a1[2 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
      std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(v28, a2, a3, v29, a5, a6);

      a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(a1, v28, a2, a3, v27, v29, a5, a6).n128_u64[0];
      return a7.n128_f64[0];
    }

    v37 = a5;
    v38.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(a1, &a1[2 * (a4 >> 1)], a3, a4 >> 1, a5, a7);
    v39 = &v37[16 * v27];
    a7.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(v28, a2, a3, v29, v39, v38);
    v40 = &v37[16 * a4];
    if ((a4 & 0x1FFFFFFFFFFFFFFELL) == 0)
    {
      v41 = v39;
      v42 = a1;
LABEL_55:
      while (v41 != v40)
      {
        v49 = *v41;
        *(v42 + 5) = *(v41 + 5);
        *v42 = v49;
        v42 += 2;
        v41 += 16;
      }

      return a7.n128_f64[0];
    }

    v41 = v39;
    v42 = a1;
    while (1)
    {
      if (v41 == v40)
      {
        while (v37 != v39)
        {
          v48 = *v37;
          *(v42 + 5) = *(v37 + 5);
          *v42 = v48;
          v42 += 2;
          v37 += 16;
        }

        return a7.n128_f64[0];
      }

      v44 = *v41 < *v37;
      if (*v41 == *v37 && (v45 = *(v41 + 8), v46 = *(v37 + 2), v44 = v45 < v46, v45 == v46))
      {
        if (*(v41 + 12) <= v37[12])
        {
          goto LABEL_48;
        }

LABEL_41:
        v43 = *v41;
        *(v42 + 5) = *(v41 + 5);
        *v42 = v43;
        v42 += 2;
        v41 += 16;
        if (v37 == v39)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v44)
        {
          goto LABEL_41;
        }

LABEL_48:
        v47 = *v37;
        *(v42 + 5) = *(v37 + 5);
        *v42 = v47;
        v42 += 2;
        v37 += 16;
        if (v37 == v39)
        {
          goto LABEL_55;
        }
      }
    }
  }

  v7 = a2 - 2;
  v8 = *(a2 - 2);
  v9 = v8 < *a1;
  if (v8 == *a1 && (v10 = *(a2 - 2), v11 = *(a1 + 2), v9 = v10 < v11, v10 == v11))
  {
    if (*(a2 - 4) <= *(a1 + 12))
    {
      return a7.n128_f64[0];
    }
  }

  else if (!v9)
  {
    return a7.n128_f64[0];
  }

  a7 = *a1;
  v51 = *a1;
  v25 = *(a2 - 11);
  *a1 = *v7;
  *(a1 + 5) = v25;
  *(a2 - 11) = *(v51.n128_i64 + 5);
  *v7 = v51.n128_u64[0];
  return a7.n128_f64[0];
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  switch(a4)
  {
    case 0:
      return a6.n128_f64[0];
    case 2:
      v6 = (a2 - 2);
      v7 = *(a2 - 2);
      v8 = v7 < *a1;
      if (v7 == *a1 && (v9 = *(a2 - 2), v10 = *(a1 + 2), v8 = v9 < v10, v9 == v10))
      {
        if (*(a2 - 4) <= *(a1 + 12))
        {
LABEL_8:
          *a5 = *a1;
          a6 = *v6;
LABEL_36:
          *(a5 + 16) = a6;
          return a6.n128_f64[0];
        }
      }

      else if (!v8)
      {
        goto LABEL_8;
      }

      *a5 = *v6;
      a6 = *a1;
      goto LABEL_36;
    case 1:
      a6 = *a1;
      *a5 = *a1;
      return a6.n128_f64[0];
  }

  if (a4 > 8)
  {
    v27 = a4 >> 1;
    v28 = 16 * (a4 >> 1);
    v29 = &a1[v28 / 8];
    v30 = a1;
    (std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>)();
    std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(v29, a2, a3, a4 - v27, a5 + v28, a4 - v27);
    if (!v28)
    {
      v35 = v29;
      v36 = a5;
      v37 = a2;
LABEL_53:
      while (v35 != v37)
      {
        v45 = *v35++;
        a6.n128_u64[0] = v45;
        *v36++ = v45;
      }

      return a6.n128_f64[0];
    }

    v35 = v29;
    v36 = a5;
    v37 = a2;
    v38 = v30;
    while (1)
    {
      if (v35 == a2)
      {
        while (v38 != v29)
        {
          v44 = *v38++;
          a6.n128_u64[0] = v44;
          *v36++ = v44;
        }

        return a6.n128_f64[0];
      }

      v40 = *v35 < *v38;
      if (*v35 == *v38 && (v41 = *(v35 + 2), v42 = *(v38 + 2), v40 = v41 < v42, v41 == v42))
      {
        if (*(v35 + 12) <= *(v38 + 12))
        {
          goto LABEL_46;
        }

LABEL_39:
        v39 = *v35++;
        a6.n128_u64[0] = v39;
        *v36++ = v39;
        if (v38 == v29)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v40)
        {
          goto LABEL_39;
        }

LABEL_46:
        v43 = *v38++;
        a6.n128_u64[0] = v43;
        *v36++ = v43;
        if (v38 == v29)
        {
          goto LABEL_53;
        }
      }
    }
  }

  if (a1 == a2)
  {
    return a6.n128_f64[0];
  }

  a6 = *a1;
  *a5 = *a1;
  v11 = (a1 + 2);
  if (a1 + 2 == a2)
  {
    return a6.n128_f64[0];
  }

  v12 = 0;
  v13 = a5;
  v14 = a5;
LABEL_15:
  while (2)
  {
    v17 = v11;
    v18 = v14->n128_u64[0];
    ++v14;
    v19 = *v11 < v18;
    if (*v11 == v18)
    {
      v20 = *(a1 + 6);
      v21 = v13->n128_i32[2];
      v19 = v20 < v21;
      if (v20 == v21)
      {
        if (*(a1 + 28) <= v13->n128_u8[12])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    if (v19)
    {
LABEL_22:
      a6 = *v13;
      *v14 = *v13;
      v15 = a5;
      if (v13 == a5)
      {
        goto LABEL_14;
      }

      v22 = v12;
      while (1)
      {
        v23 = (a5 + v22);
        v24 = *(a5 + v22 - 16);
        if (*v17 == v24)
        {
          v25 = *(a1 + 6);
          v26 = *(v23 - 2);
          if (v25 == v26)
          {
            if (*(a1 + 28) <= *(a5 + v22 - 4))
            {
              goto LABEL_32;
            }
          }

          else if (v25 >= v26)
          {
LABEL_32:
            v15 = v13;
LABEL_14:
            v16 = *v17;
            *(v15->n128_u64 + 5) = *(v17 + 5);
            v15->n128_u64[0] = v16;
            v11 = (v17 + 2);
            v12 += 16;
            v13 = v14;
            a1 = v17;
            if (v17 + 2 == a2)
            {
              return a6.n128_f64[0];
            }

            goto LABEL_15;
          }
        }

        else if (*v17 >= v24)
        {
          v15 = (a5 + v22);
          goto LABEL_14;
        }

        --v13;
        *v23 = *(a5 + v22 - 16);
        *(v23 + 5) = *(a5 + v22 - 11);
        v22 -= 16;
        if (!v22)
        {
          v15 = a5;
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    a6 = *v17;
    *v14 = *v17;
    v11 = (v17 + 2);
    v12 += 16;
    v13 = v14;
    a1 = v17;
    if (v17 + 2 != a2)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {

        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(a1, a2, a3, a4, a5, a6, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = *a2;
      v13 = -a5;
      while (1)
      {
        v15 = a1[v11 / 8];
        v16 = v12 < v15;
        if (v12 != v15 || (v17 = *(a2 + 2), v18 = a1[v11 / 8 + 1], v16 = v17 < v18, v17 != v18))
        {
          if (v16)
          {
            break;
          }

          goto LABEL_7;
        }

        if (a2[12] > BYTE4(a1[v11 / 8 + 1]))
        {
          break;
        }

LABEL_7:
        v11 += 16;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v19 = -v13;
      v50 = a8;
      v51 = a7;
      v49 = a3;
      if (-v13 < a6)
      {
        v20 = a6 / 2;
        v21 = &a2[16 * (a6 / 2)];
        v22 = a2;
        if (a2 - a1 == v11)
        {
LABEL_13:
          v23 = (v22 - a1 - v11) >> 4;
          goto LABEL_17;
        }

        v33 = (a2 - a1 - v11) >> 4;
        v34 = *v21;
        v35 = *(v21 + 2);
        v22 = &a1[v11 / 8];
        while (2)
        {
          v36 = v33 >> 1;
          v37 = &v22[16 * (v33 >> 1)];
          v38 = v34 < *v37;
          if (v34 == *v37 && (v39 = *(v37 + 2), v38 = v35 < v39, v35 == v39))
          {
            if (v21[12] > v37[12])
            {
              goto LABEL_24;
            }
          }

          else if (v38)
          {
LABEL_24:
            v33 = v36;
            if (!v36)
            {
              goto LABEL_13;
            }

            continue;
          }

          break;
        }

        v22 = v37 + 16;
        v36 = v33 + ~v36;
        goto LABEL_24;
      }

      if (v13 == -1)
      {
        v47 = &a1[v11 / 8];
        result = *&a1[v11 / 8];
        v48 = *a2;
        *(v47 + 5) = *(a2 + 5);
        *v47 = v48;
        *a2 = result.n128_u64[0];
        *(a2 + 5) = *&result >> 40;
        return result;
      }

      v23 = v19 / 2;
      v24 = &a1[2 * (v19 / 2)];
      v21 = a2;
      if (a2 != a3)
      {
        v40 = (a3 - a2) >> 4;
        v41 = v24[v11 / 8];
        v42 = v24[v11 / 8 + 1];
        v21 = a2;
        do
        {
          v43 = v40 >> 1;
          v44 = &v21[16 * (v40 >> 1)];
          v45 = *v44 < v41;
          if (*v44 == v41 && (v46 = *(v44 + 2), v45 = v46 < v42, v46 == v42))
          {
            if (v44[12] <= BYTE4(v24[v11 / 8 + 1]))
            {
              goto LABEL_34;
            }
          }

          else if (!v45)
          {
            goto LABEL_34;
          }

          v21 = v44 + 16;
          v43 = v40 + ~v43;
LABEL_34:
          v40 = v43;
        }

        while (v43);
      }

      v20 = (v21 - a2) >> 4;
      v22 = &v24[v11 / 8];
LABEL_17:
      a5 = -(v23 + v13);
      v25 = a6 - v20;
      v26 = a6;
      v27 = v23;
      v28 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>>(v22, a2, v21);
      v29 = v27;
      v30 = v28;
      if (v29 + v20 < v26 - (v29 + v20) - v13)
      {
        a7 = v51;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(&a1[v11 / 8], v22, v28, a4, v29, v20, v51, v50);
        a8 = v50;
        a1 = v30;
        a3 = v49;
        a6 = v25;
        a2 = v21;
        if (!v25)
        {
          return result;
        }

        continue;
      }

      break;
    }

    a7 = v51;
    v32 = v29;
    std::__inplace_merge<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(v28, v21, v49, a4, a5, v25, v51, v50);
    a8 = v50;
    a5 = v32;
    a3 = v30;
    a1 = (a1 + v11);
    a6 = v20;
    a2 = v22;
    if (v20)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>>(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, char *__src)
{
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v17 = 0;
    do
    {
      *&__src[v17] = *&result[v17 / 8];
      v17 += 16;
    }

    while (&result[v17 / 8] != a2);
    if (!v17)
    {
      return result;
    }

    v18 = &__src[v17];
    v19 = __src;
    while (1)
    {
      if (a2 == a3)
      {
        return memmove(result, v19, __src - v19 + v17 - 3);
      }

      v21 = *a2 < *v19;
      if (*a2 == *v19 && (v22 = *(a2 + 2), v23 = *(v19 + 2), v21 = v22 < v23, v22 == v23))
      {
        if (*(a2 + 12) <= v19[12])
        {
          goto LABEL_29;
        }

LABEL_22:
        v20 = *a2;
        *(result + 5) = *(a2 + 5);
        *result = v20;
        result += 2;
        a2 += 2;
        if (v18 == v19)
        {
          return result;
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_22;
        }

LABEL_29:
        v24 = *v19;
        *(result + 5) = *(v19 + 5);
        *result = v24;
        result += 2;
        v19 += 16;
        if (v18 == v19)
        {
          return result;
        }
      }
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v7 = 0;
  do
  {
    *&__src[v7 * 8] = *&a2[v7];
    v7 += 2;
  }

  while (&a2[v7] != a3);
  if (!(v7 * 8))
  {
    return result;
  }

  v8 = &__src[v7 * 8];
  while (a2 != result)
  {
    v9 = (a2 - 2);
    v12 = *(a2 - 2);
    v13 = *(v8 - 2);
    v14 = v13 < v12;
    if (v13 == v12 && (v15 = *(v8 - 2), v16 = *(a2 - 2), v14 = v15 < v16, v15 == v16))
    {
      v10 = a2 - 2;
      if (*(v8 - 4) > *(a2 - 4))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = a2 - 2;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    v9 = v8 - 16;
    v10 = a2;
    v8 -= 16;
LABEL_8:
    v11 = *(v9 + 5);
    *(a3 - 2) = *v9;
    a3 -= 2;
    *(a3 + 5) = v11;
    a2 = v10;
    if (v8 == __src)
    {
      return result;
    }
  }

  if (v8 != __src)
  {
    v25 = 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v26 = *(v8 - 2);
      v8 -= 16;
      v27 = &a3[v25];
      *(v27 + 5) = *(v8 + 5);
      *v27 = v26;
      v25 -= 2;
    }

    while (v8 != __src);
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>,std::__wrap_iter<operations_research::sat::SchedulingConstraintHelper::ProfileEvent *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v28 = *__src;
      v6 = __src;
      memmove(__src, __src + 16, v5 - 3);
      v3 = &v6[v5];
      *v3 = v28;
      *(v3 + 5) = *(&v28 + 5);
    }

    else if (a2 + 16 == a3)
    {
      v3 = __src + 16;
      v29 = *(a3 - 1);
      if (a3 - 16 != __src)
      {
        v7 = __src;
        memmove(__src + 16, __src, a3 - 16 - __src - 3);
        __src = v7;
      }

      *__src = v29;
      *(__src + 5) = *(&v29 + 5);
    }

    else
    {
      v8 = v4 >> 4;
      v9 = v5 >> 4;
      if (v4 >> 4 == v5 >> 4)
      {
        v10 = __src + 16;
        v11 = a2 + 16;
        do
        {
          v30 = *(v10 - 1);
          v12 = *(v11 - 11);
          *(v10 - 2) = *(v11 - 2);
          *(v10 - 11) = v12;
          *(v11 - 11) = *(&v30 + 5);
          *(v11 - 2) = v30;
          if (v10 == a2)
          {
            break;
          }

          v10 += 16;
          v13 = v11 == a3;
          v11 += 16;
        }

        while (!v13);
        return a2;
      }

      else
      {
        v14 = v4 >> 4;
        do
        {
          v15 = v14;
          v14 = v9;
          v9 = v15 % v9;
        }

        while (v9);
        v16 = &__src[16 * v14];
        do
        {
          v17 = *(v16 - 1);
          v16 -= 16;
          v18 = &v16[v4];
          v19 = v16;
          do
          {
            v20 = v18;
            v21 = *v18;
            *(v19 + 5) = *(v20 + 5);
            *v19 = v21;
            v22 = (a3 - v20) >> 4;
            v18 = &v20[2 * v8];
            v23 = __OFSUB__(v8, v22);
            v25 = v8 - v22;
            v24 = (v25 < 0) ^ v23;
            v26 = &__src[16 * v25];
            if (!v24)
            {
              v18 = v26;
            }

            v19 = v20;
          }

          while (v18 != v16);
          *(v20 + 5) = v17 >> 40;
          *v20 = v17;
        }

        while (v16 != __src);
        return &__src[v5];
      }
    }
  }

  return v3;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,false>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(v9, v9 + 2, a2 - 2);
        return result;
      case 4uLL:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(v9, v9 + 2, v9 + 4);
        v31 = a2 - 2;
        v32 = *(a2 - 2);
        v33 = *(v9 + 4);
        v34 = v32 < v33;
        if (v32 == v33 && (v35 = *(a2 - 2), v36 = *(v9 + 10), v34 = v35 < v36, v35 == v36))
        {
          if (*(a2 - 4) <= *(v9 + 44))
          {
            return result;
          }
        }

        else if (!v34)
        {
          return result;
        }

        result = v9[2];
        v56 = *v31;
        *(v9 + 37) = *(a2 - 11);
        *(v9 + 4) = v56;
        *v31 = result.n128_u64[0];
        *(a2 - 11) = *&result >> 40;
        v57 = *(v9 + 4);
        v58 = *(v9 + 2);
        v59 = v57 < v58;
        if (v57 == v58 && (v60 = *(v9 + 10), v61 = *(v9 + 6), v59 = v60 < v61, v60 == v61))
        {
          if (*(v9 + 44) <= *(v9 + 28))
          {
            return result;
          }
        }

        else if (!v59)
        {
          return result;
        }

        result = v9[1];
        *(v9 + 2) = *(v9 + 4);
        *(v9 + 21) = *(v9 + 37);
        *(v9 + 37) = *&result >> 40;
        *(v9 + 4) = result.n128_u64[0];
        v71 = *(v9 + 2);
        v72 = v71 < *v9;
        if (v71 == *v9 && (v73 = *(v9 + 6), v74 = *(v9 + 2), v72 = v73 < v74, v73 == v74))
        {
          if (*(v9 + 28) <= *(v9 + 12))
          {
            return result;
          }
        }

        else if (!v72)
        {
          return result;
        }

        result = *v9;
        v77 = *v9;
        *v9 = *(v9 + 2);
        *(v9 + 5) = *(v9 + 21);
        *(v9 + 21) = *(&v77 + 5);
        *(v9 + 2) = v77;
        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(v9, v9 + 2, v9 + 4, v9 + 3, (a2 - 2)).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v37 = (v9 + 1);
      v39 = v9 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v9;
LABEL_56:
        v43 = v41;
        v41 = v37;
        v44 = *(v43 + 2);
        if (v44 == *v43)
        {
          v45 = *(v43 + 6);
          v46 = *(v43 + 2);
          if (v45 == v46)
          {
            if (*(v43 + 28) <= *(v43 + 12))
            {
              goto LABEL_55;
            }
          }

          else if (v45 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v44 >= *v43)
          {
            goto LABEL_55;
          }

          v45 = *(v43 + 6);
        }

        v47 = *(v43 + 28);
        *v41 = *v43;
        *(v41 + 5) = *(v43 + 5);
        v42 = v9;
        if (v43 == v9)
        {
          goto LABEL_54;
        }

        v48 = v40;
        while (1)
        {
          v49 = (v9 + v48);
          v50 = *(v9 + v48 - 16);
          if (v44 == v50)
          {
            v51 = *(v49 - 2);
            if (v45 == v51)
            {
              if (v47 <= *(v9 + v48 - 4))
              {
LABEL_73:
                v42 = v43;
LABEL_54:
                *v42 = v44;
                *(v42 + 2) = v45;
                *(v42 + 12) = v47;
LABEL_55:
                v37 = (v41 + 1);
                v40 += 16;
                if (v41 + 1 == a2)
                {
                  return result;
                }

                goto LABEL_56;
              }
            }

            else if (v45 >= v51)
            {
              v42 = (v9 + v48);
              goto LABEL_54;
            }
          }

          else if (v44 >= v50)
          {
            goto LABEL_73;
          }

          --v43;
          *v49 = *(v9 + v48 - 16);
          *(v49 + 5) = *(v9 + v48 - 11);
          v48 -= 16;
          if (!v48)
          {
            v42 = v9;
            goto LABEL_54;
          }
        }
      }

      if (!v39)
      {
        while (1)
        {
          v62 = a1;
          a1 = v37;
          v63 = *(v62 + 16);
          if (v63 == *v62)
          {
            v64 = *(v62 + 24);
            v65 = *(v62 + 8);
            if (v64 == v65)
            {
              if (*(v62 + 28) > *(v62 + 12))
              {
                goto LABEL_99;
              }
            }

            else if (v64 < v65)
            {
              goto LABEL_99;
            }
          }

          else if (v63 < *v62)
          {
            v64 = *(v62 + 24);
LABEL_99:
            v66 = *(v62 + 28);
            for (i = a1; ; i -= 2)
            {
              *i = *(i - 2);
              *(i + 5) = *(i - 11);
              v68 = *(i - 4);
              v69 = v63 < v68;
              if (v63 == v68 && (v70 = *(i - 6), v69 = v64 < v70, v64 == v70))
              {
                if (v66 <= *(i - 20))
                {
LABEL_90:
                  *(i - 2) = v63;
                  *(i - 2) = v64;
                  *(i - 4) = v66;
                  break;
                }
              }

              else if (!v69)
              {
                goto LABEL_90;
              }
            }
          }

          v37 = (a1 + 16);
          if ((a1 + 16) == a2)
          {
            return result;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v52 = (v12 - 2) >> 1;
        v53 = v52 + 1;
        v54 = &v9[v52];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(v9, a3, (a2 - v9) >> 4, v54);
          v54 -= 2;
          --v53;
        }

        while (v53);
        do
        {
          std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(v9, a2, a3, v12);
          a2 -= 2;
          v19 = v12-- > 2;
        }

        while (v19);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>((a1 + 16 * (v12 >> 1)), a1, a2 - 2);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, (a1 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + a1 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>((a1 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>((a1 + 32), (a1 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(v16, v14, (a1 + 16 + v15));
      v75 = *a1;
      v17 = *v14;
      *(a1 + 5) = *(v14 + 5);
      *a1 = v17;
      *(v14 + 5) = *(&v75 + 5);
      *v14 = v75;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v18 = *(a1 - 16);
    v19 = v18 < *a1;
    if (v18 == *a1 && (v20 = *(a1 - 8), v21 = *(a1 + 8), v19 = v20 < v21, v20 == v21))
    {
      if (*(a1 - 4) <= *(a1 + 12))
      {
        goto LABEL_26;
      }
    }

    else if (!v19)
    {
LABEL_26:
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SchedulingConstraintHelper::ProfileEvent *,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &>(a1, a2);
      goto LABEL_27;
    }

LABEL_22:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SchedulingConstraintHelper::ProfileEvent *,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &>(a1, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_25;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(a1, v22);
    v9 = (v22 + 16);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(v22 + 16, a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v24 & 1) == 0)
    {
LABEL_25:
      std::__introsort<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,false>(a1, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 16);
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v26 = a2 - 2;
  v27 = *(a2 - 2);
  v28 = v27 < *v9;
  if (v27 == *v9)
  {
    v29 = *(a2 - 2);
    v30 = *(v9 + 2);
    v28 = v29 < v30;
    if (v29 == v30)
    {
      if (*(a2 - 4) <= *(v9 + 12))
      {
        return result;
      }

LABEL_81:
      result = *v9;
      v76 = *v9;
      v55 = *v26;
      *(v9 + 5) = *(a2 - 11);
      *v9 = v55;
      *v26 = v76;
      *(a2 - 11) = *(&v76 + 5);
      return result;
    }
  }

  if (v28)
  {
    goto LABEL_81;
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a2 < *a1;
  if (*a2 != *a1 || (v5 = *(a2 + 2), v6 = *(a1 + 2), v4 = v5 < v6, v5 != v6))
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = *a3 < v3;
    if (*a3 == v3 && (v12 = *(a3 + 2), v13 = *(a2 + 2), v11 = v12 < v13, v12 == v13))
    {
      if (*(a3 + 12) <= *(a2 + 12))
      {
        goto LABEL_13;
      }
    }

    else if (!v11)
    {
LABEL_13:
      v25 = *a1;
      v14 = *(a2 + 5);
      *a1 = *a2;
      *(a1 + 5) = v14;
      *(a2 + 5) = *(&v25 + 5);
      *a2 = v25;
      v15 = *a3 < *a2;
      if (*a3 == *a2 && (v16 = *(a3 + 2), v17 = *(a2 + 2), v15 = v16 < v17, v16 == v17))
      {
        if (*(a3 + 12) <= *(a2 + 12))
        {
          return 1;
        }
      }

      else if (!v15)
      {
        return 1;
      }

      v27 = *a2;
      v23 = *(a3 + 5);
      *a2 = *a3;
      *(a2 + 5) = v23;
LABEL_29:
      *(a3 + 5) = *(&v27 + 5);
      *a3 = v27;
      return 1;
    }

    v27 = *a1;
    v22 = *(a3 + 5);
    *a1 = *a3;
    *(a1 + 5) = v22;
    goto LABEL_29;
  }

  if (*(a2 + 12) > *(a1 + 12))
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = *a3 < v3;
  if (*a3 == v3 && (v8 = *(a3 + 2), v9 = *(a2 + 2), v7 = v8 < v9, v8 == v9))
  {
    if (*(a3 + 12) <= *(a2 + 12))
    {
      return 0;
    }
  }

  else if (!v7)
  {
    return 0;
  }

  v26 = *a2;
  v18 = *(a3 + 5);
  *a2 = *a3;
  *(a2 + 5) = v18;
  *(a3 + 5) = *(&v26 + 5);
  *a3 = v26;
  v19 = *a2 < *a1;
  if (*a2 == *a1 && (v20 = *(a2 + 2), v21 = *(a1 + 2), v19 = v20 < v21, v20 == v21))
  {
    if (*(a2 + 12) > *(a1 + 12))
    {
      goto LABEL_32;
    }
  }

  else if (v19)
  {
LABEL_32:
    v28 = *a1;
    v24 = *(a2 + 5);
    *a1 = *a2;
    *(a1 + 5) = v24;
    *(a2 + 5) = *(&v28 + 5);
    *a2 = v28;
    return 1;
  }

  return 1;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, a2, a3);
  v11 = *a4 < *a3;
  if (*a4 == *a3 && (v12 = *(a4 + 2), v13 = *(a3 + 2), v11 = v12 < v13, v12 == v13))
  {
    if (*(a4 + 12) <= *(a3 + 12))
    {
      goto LABEL_20;
    }
  }

  else if (!v11)
  {
    goto LABEL_20;
  }

  result = *a3;
  v39 = *a3;
  v14 = *(a4 + 5);
  *a3 = *a4;
  *(a3 + 5) = v14;
  *(a4 + 5) = *(v39.n128_u64 + 5);
  *a4 = v39.n128_u64[0];
  v15 = *a3 < *a2;
  if (*a3 == *a2 && (v16 = *(a3 + 2), v17 = *(a2 + 2), v15 = v16 < v17, v16 == v17))
  {
    if (*(a3 + 12) <= *(a2 + 12))
    {
      goto LABEL_20;
    }
  }

  else if (!v15)
  {
    goto LABEL_20;
  }

  result = *a2;
  v40 = *a2;
  v18 = *(a3 + 5);
  *a2 = *a3;
  *(a2 + 5) = v18;
  *(a3 + 5) = *(v40.n128_i64 + 5);
  *a3 = v40.n128_u64[0];
  v19 = *a2 < *a1;
  if (*a2 == *a1 && (v20 = *(a2 + 2), v21 = *(a1 + 8), v19 = v20 < v21, v20 == v21))
  {
    if (*(a2 + 12) <= *(a1 + 12))
    {
      goto LABEL_20;
    }
  }

  else if (!v19)
  {
    goto LABEL_20;
  }

  result = *a1;
  v41 = *a1;
  v22 = *(a2 + 5);
  *a1 = *a2;
  *(a1 + 5) = v22;
  *(a2 + 5) = *(&v41 + 5);
  *a2 = v41;
LABEL_20:
  v23 = *a5 < *a4;
  if (*a5 == *a4 && (v24 = *(a5 + 8), v25 = *(a4 + 2), v23 = v24 < v25, v24 == v25))
  {
    if (*(a5 + 12) <= *(a4 + 12))
    {
      return result;
    }
  }

  else if (!v23)
  {
    return result;
  }

  result = *a4;
  v42 = *a4;
  v26 = *(a5 + 5);
  *a4 = *a5;
  *(a4 + 5) = v26;
  *(a5 + 5) = *(&v42 + 5);
  *a5 = v42;
  v27 = *a4 < *a3;
  if (*a4 == *a3 && (v28 = *(a4 + 2), v29 = *(a3 + 2), v27 = v28 < v29, v28 == v29))
  {
    if (*(a4 + 12) <= *(a3 + 12))
    {
      return result;
    }
  }

  else if (!v27)
  {
    return result;
  }

  result = *a3;
  v43 = *a3;
  v30 = *(a4 + 5);
  *a3 = *a4;
  *(a3 + 5) = v30;
  *(a4 + 5) = *(v43.n128_u64 + 5);
  *a4 = v43.n128_u64[0];
  v31 = *a3 < *a2;
  if (*a3 == *a2 && (v32 = *(a3 + 2), v33 = *(a2 + 2), v31 = v32 < v33, v32 == v33))
  {
    if (*(a3 + 12) <= *(a2 + 12))
    {
      return result;
    }
  }

  else if (!v31)
  {
    return result;
  }

  result = *a2;
  v44 = *a2;
  v34 = *(a3 + 5);
  *a2 = *a3;
  *(a2 + 5) = v34;
  *(a3 + 5) = *(v44.n128_i64 + 5);
  *a3 = v44.n128_u64[0];
  v35 = *a2 < *a1;
  if (*a2 == *a1 && (v36 = *(a2 + 2), v37 = *(a1 + 8), v35 = v36 < v37, v36 == v37))
  {
    if (*(a2 + 12) > *(a1 + 12))
    {
      goto LABEL_44;
    }
  }

  else if (v35)
  {
LABEL_44:
    result = *a1;
    v45 = *a1;
    v38 = *(a2 + 5);
    *a1 = *a2;
    *(a1 + 5) = v38;
    *(a2 + 5) = *(&v45 + 5);
    *a2 = v45;
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SchedulingConstraintHelper::ProfileEvent *,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &>(__int128 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *(a2 - 2);
  v6 = *a1 < v5;
  if (*a1 == v5)
  {
    v7 = *(a2 - 2);
    v6 = v3 < v7;
    if (v3 == v7)
    {
      if (v4 <= *(a2 - 4))
      {
        goto LABEL_4;
      }

LABEL_14:
      for (i = a1 + 1; ; ++i)
      {
        v11 = v2 < *i;
        if (v2 == *i && (v12 = *(i + 2), v11 = v3 < v12, v3 == v12))
        {
          if (v4 > *(i + 12))
          {
            goto LABEL_20;
          }
        }

        else if (v11)
        {
          goto LABEL_20;
        }
      }
    }
  }

  if (v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  for (i = a1 + 1; i < a2; ++i)
  {
    v9 = v2 < *i;
    if (v2 == *i && (v10 = *(i + 2), v9 = v3 < v10, v3 == v10))
    {
      if (v4 > *(i + 12))
      {
        break;
      }
    }

    else if (v9)
    {
      break;
    }
  }

LABEL_20:
  if (i < a2)
  {
    for (a2 -= 2; ; a2 -= 2)
    {
      v14 = v2 < v5;
      if (v2 == v5 && (v15 = *(a2 + 2), v14 = v3 < v15, v3 == v15))
      {
        if (v4 <= *(a2 + 12))
        {
          break;
        }
      }

      else if (!v14)
      {
        break;
      }

      v13 = *(a2 - 2);
      v5 = v13;
    }
  }

LABEL_40:
  while (i < a2)
  {
    v25 = *i;
    v16 = *a2;
    *(i + 5) = *(a2 + 5);
    *i = v16;
    *(a2 + 5) = *(&v25 + 5);
    *a2 = v25;
    do
    {
      while (1)
      {
        v17 = *(i++ + 2);
        v18 = v2 < v17;
        if (v2 != v17)
        {
          break;
        }

        v19 = *(i + 2);
        v18 = v3 < v19;
        if (v3 != v19)
        {
          break;
        }

        if (v4 > *(i + 12))
        {
          goto LABEL_37;
        }
      }
    }

    while (!v18);
    do
    {
LABEL_37:
      while (1)
      {
        v20 = *(a2 - 2);
        a2 -= 2;
        v21 = v2 < v20;
        if (v2 == v20)
        {
          v22 = *(a2 + 2);
          v21 = v3 < v22;
          if (v3 == v22)
          {
            break;
          }
        }

        if (!v21)
        {
          goto LABEL_40;
        }
      }
    }

    while (v4 > *(a2 + 12));
  }

  if (i - 1 != a1)
  {
    v23 = *(i - 2);
    *(a1 + 5) = *(i - 11);
    *a1 = v23;
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  *(i - 4) = v4;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SchedulingConstraintHelper::ProfileEvent *,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  while (1)
  {
    v6 = a1[v2 + 2];
    v7 = v6 < v3;
    if (v6 == v3)
    {
      v8 = a1[v2 + 3];
      v7 = v8 < v4;
      if (v8 == v4)
      {
        break;
      }
    }

    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_4:
    v2 += 2;
  }

  if (BYTE4(a1[v2 + 3]) > v5)
  {
    goto LABEL_4;
  }

LABEL_8:
  v9 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      while (1)
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v11 = v10 < v3;
        if (v10 == v3)
        {
          v12 = *(a2 + 8);
          v11 = v12 < v4;
          if (v12 == v4)
          {
            break;
          }
        }

        if (v11)
        {
          goto LABEL_27;
        }
      }
    }

    while (*(a2 + 12) <= v5);
  }

  else if (v9 < a2)
  {
    do
    {
      while (1)
      {
        v14 = *(a2 - 16);
        a2 -= 16;
        v15 = v14 < v3;
        if (v14 != v3)
        {
          break;
        }

        v16 = *(a2 + 8);
        v15 = v16 < v4;
        if (v16 != v4)
        {
          break;
        }

        if (*(a2 + 12) > v5 || v9 >= a2)
        {
          goto LABEL_27;
        }
      }
    }

    while (!v15 && v9 < a2);
  }

LABEL_27:
  v18 = v9;
  if (v9 < a2)
  {
    v19 = a2;
    do
    {
      v29 = *v18;
      v20 = *v19;
      *(v18 + 5) = *(v19 + 5);
      *v18 = v20;
      *(v19 + 5) = *(&v29 + 5);
      *v19 = v29;
      do
      {
        while (1)
        {
          v21 = *(v18 + 16);
          v18 += 16;
          v22 = v21 < v3;
          if (v21 != v3)
          {
            break;
          }

          v23 = *(v18 + 8);
          v22 = v23 < v4;
          if (v23 != v4)
          {
            break;
          }

          if (*(v18 + 12) <= v5)
          {
            goto LABEL_38;
          }
        }
      }

      while (v22);
      do
      {
LABEL_38:
        while (1)
        {
          v24 = *(v19 - 16);
          v19 -= 16;
          v25 = v24 < v3;
          if (v24 == v3)
          {
            v26 = *(v19 + 8);
            v25 = v26 < v4;
            if (v26 == v4)
            {
              break;
            }
          }

          if (v25)
          {
            goto LABEL_29;
          }
        }
      }

      while (*(v19 + 12) <= v5);
LABEL_29:
      ;
    }

    while (v18 < v19);
  }

  if ((v18 - 16) != a1)
  {
    v27 = *(v18 - 16);
    *(a1 + 5) = *(v18 - 11);
    *a1 = v27;
  }

  *(v18 - 16) = v3;
  *(v18 - 8) = v4;
  *(v18 - 4) = v5;
  return v18 - 16;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, (a1 + 16), (a1 + 32));
        v25 = (a2 - 16);
        v26 = *(a2 - 16);
        v27 = *(a1 + 32);
        v28 = v26 < v27;
        if (v26 == v27 && (v29 = *(a2 - 8), v30 = *(a1 + 40), v28 = v29 < v30, v29 == v30))
        {
          if (*(a2 - 4) <= *(a1 + 44))
          {
            return 1;
          }
        }

        else if (!v28)
        {
          return 1;
        }

        v45 = *(a1 + 32);
        v33 = *(a2 - 11);
        *(a1 + 32) = *v25;
        *(a1 + 37) = v33;
        *(a2 - 11) = *(&v45 + 5);
        *v25 = v45;
        v34 = *(a1 + 32);
        v35 = *(a1 + 16);
        v36 = v34 < v35;
        if (v34 == v35 && (v37 = *(a1 + 40), v38 = *(a1 + 24), v36 = v37 < v38, v37 == v38))
        {
          if (*(a1 + 44) <= *(a1 + 28))
          {
            return 1;
          }
        }

        else if (!v36)
        {
          return 1;
        }

        v46 = *(a1 + 16);
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 21) = *(a1 + 37);
        *(a1 + 32) = v46;
        *(a1 + 37) = *(&v46 + 5);
        v39 = *(a1 + 16);
        v40 = v39 < *a1;
        if (v39 == *a1 && (v41 = *(a1 + 24), v42 = *(a1 + 8), v40 = v41 < v42, v41 == v42))
        {
          if (*(a1 + 28) <= *(a1 + 12))
          {
            return 1;
          }
        }

        else if (!v40)
        {
          return 1;
        }

        v47 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 5) = *(a1 + 21);
        *(a1 + 16) = v47;
        *(a1 + 21) = *(&v47 + 5);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 16);
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
      v3 = (a2 - 16);
      v4 = *(a2 - 16);
      v5 = v4 < *a1;
      if (v4 != *a1 || (v6 = *(a2 - 8), v7 = *(a1 + 8), v5 = v6 < v7, v6 != v7))
      {
        if (!v5)
        {
          return 1;
        }

        goto LABEL_43;
      }

      if (*(a2 - 4) > *(a1 + 12))
      {
LABEL_43:
        v44 = *a1;
        v32 = *(a2 - 11);
        *a1 = *v3;
        *(a1 + 5) = v32;
        *(a2 - 11) = *(&v44 + 5);
        *v3 = v44;
      }

      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*,0>(a1, (a1 + 16), (a1 + 32));
  v12 = a1 + 48;
  if (a1 + 48 == a2)
  {
LABEL_40:
    v31 = 1;
    return (v31 | v11) & 1;
  }

  v11 = a2;
  v13 = 0;
  v14 = 0;
  while (2)
  {
    v16 = *v12;
    if (*v12 == *v8)
    {
      v17 = *(v12 + 8);
      v18 = *(v8 + 8);
      if (v17 == v18)
      {
        if (*(v12 + 12) <= *(v8 + 12))
        {
          goto LABEL_17;
        }
      }

      else if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*v12 >= *v8)
      {
        goto LABEL_17;
      }

      v17 = *(v12 + 8);
    }

    v19 = *(v12 + 12);
    *v12 = *v8;
    *(v12 + 5) = *(v8 + 5);
    v15 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v20 = v13;
    while (1)
    {
      v21 = *(a1 + v20 + 16);
      if (v16 != v21)
      {
        if (v16 >= v21)
        {
          v15 = a1 + v20 + 32;
          goto LABEL_16;
        }

        goto LABEL_29;
      }

      v22 = *(a1 + v20 + 24);
      if (v17 != v22)
      {
        break;
      }

      if (v19 <= *(a1 + v20 + 28))
      {
        goto LABEL_35;
      }

LABEL_29:
      v8 -= 16;
      *(a1 + v20 + 32) = *(a1 + v20 + 16);
      *(a1 + v20 + 37) = *(a1 + v20 + 21);
      v20 -= 16;
      if (v20 == -32)
      {
        v15 = a1;
        goto LABEL_16;
      }
    }

    if (v17 < v22)
    {
      goto LABEL_29;
    }

LABEL_35:
    v15 = v8;
LABEL_16:
    *v15 = v16;
    *(v15 + 8) = v17;
    *(v15 + 12) = v19;
    if (++v14 != 8)
    {
LABEL_17:
      v8 = v12;
      v13 += 16;
      v12 += 16;
      if (v12 == a2)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v31 = 0;
  v11 = v12 + 16 == a2;
  return (v31 | v11) & 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent> &,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        v11 = *v8 < v10;
        if (*v8 == v10 && (v12 = *(v8 + 2), v13 = *(v8 + 6), v11 = v12 < v13, v12 == v13))
        {
          if (*(v8 + 12) <= *(v8 + 28))
          {
            goto LABEL_12;
          }
        }

        else if (!v11)
        {
          goto LABEL_12;
        }

        v8 += 2;
        v7 = v9;
      }

LABEL_12:
      v14 = *a4;
      if (*v8 == *a4)
      {
        v15 = *(v8 + 2);
        v16 = *(a4 + 2);
        v17 = v15 < v16;
        if (v15 == v16)
        {
          if (*(v8 + 12) > *(a4 + 12))
          {
            return result;
          }
        }

        else
        {
          v15 = *(a4 + 2);
          if (v17)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v8 < *a4)
        {
          return result;
        }

        v15 = *(a4 + 2);
      }

      v18 = *(a4 + 12);
      v19 = *(v8 + 5);
      *a4 = *v8;
      *(a4 + 5) = v19;
      while (1)
      {
        if (v5 < v7)
        {
LABEL_35:
          *v8 = v14;
          *(v8 + 2) = v15;
          *(v8 + 12) = v18;
          return result;
        }

        v21 = v8;
        v22 = 2 * v7;
        v7 = (2 * v7) | 1;
        v8 = (result + 16 * v7);
        v23 = v22 + 2;
        if (v23 < a3)
        {
          v24 = v8[2];
          v25 = *v8 < v24;
          if (*v8 == v24 && (v26 = *(v8 + 2), v27 = *(v8 + 6), v25 = v26 < v27, v26 == v27))
          {
            if (*(v8 + 12) <= *(v8 + 28))
            {
              goto LABEL_31;
            }
          }

          else if (!v25)
          {
            goto LABEL_31;
          }

          v8 += 2;
          v7 = v23;
        }

LABEL_31:
        v28 = *v8 < v14;
        if (*v8 == v14 && (v29 = *(v8 + 2), v28 = v29 < v15, v29 == v15))
        {
          if (*(v8 + 12) > v18)
          {
LABEL_34:
            v8 = v21;
            goto LABEL_35;
          }
        }

        else if (v28)
        {
          goto LABEL_34;
        }

        v20 = *v8;
        *(v21 + 5) = *(v8 + 5);
        *v21 = v20;
      }
    }
  }

  return result;
}

_OWORD *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::less<operations_research::sat::SchedulingConstraintHelper::ProfileEvent>,operations_research::sat::SchedulingConstraintHelper::ProfileEvent*>(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = 0;
  v33 = *result;
  v5 = result;
  do
  {
    v7 = v5;
    v8 = &v5[v4];
    v5 = v8 + 1;
    v9 = 2 * v4;
    v4 = (2 * v4) | 1;
    v10 = v9 + 2;
    if (v10 < a4)
    {
      v11 = *(v8 + 4);
      v12 = *(v8 + 2);
      v13 = v12 < v11;
      if (v12 == v11 && (v14 = *(v8 + 6), v15 = *(v8 + 10), v13 = v14 < v15, v14 == v15))
      {
        if (*(v8 + 28) > *(v8 + 44))
        {
          goto LABEL_3;
        }
      }

      else if (v13)
      {
LABEL_3:
        v5 = v8 + 2;
        v4 = v10;
      }
    }

    v6 = *v5;
    *(v7 + 5) = *(v5 + 5);
    *v7 = v6;
  }

  while (v4 <= ((a4 - 2) >> 1));
  v16 = (a2 - 16);
  if (v5 == (a2 - 16))
  {
    *(v5 + 5) = *(&v33 + 5);
    *v5 = v33;
    return result;
  }

  v17 = *v16;
  *(v5 + 5) = *(a2 - 11);
  *v5 = v17;
  *v16 = v33;
  *(a2 - 11) = *(&v33 + 5);
  v18 = (v5 - result + 16) >> 4;
  v19 = v18 - 2;
  if (v18 < 2)
  {
    return result;
  }

  v20 = v19 >> 1;
  v21 = &result[v19 >> 1];
  v22 = *v5;
  if (*v21 != *v5)
  {
    if (*v21 >= *v5)
    {
      return result;
    }

    v23 = *(v5 + 2);
    goto LABEL_24;
  }

  v23 = *(v21 + 2);
  v24 = *(v5 + 2);
  v25 = v23 < v24;
  if (v23 == v24)
  {
    if (*(v21 + 12) <= *(v5 + 12))
    {
      return result;
    }

LABEL_24:
    v26 = *(v5 + 12);
    v27 = *(v21 + 5);
    *v5 = *v21;
    *(v5 + 5) = v27;
    if (v19 >= 2)
    {
      do
      {
        v29 = v21;
        v30 = v20 - 1;
        v20 = (v20 - 1) >> 1;
        v21 = &result[v20];
        v31 = *v21 < v22;
        if (*v21 == v22 && (v32 = *(v21 + 2), v31 = v32 < v23, v32 == v23))
        {
          if (*(v21 + 12) <= v26)
          {
LABEL_32:
            v21 = v29;
            break;
          }
        }

        else if (!v31)
        {
          goto LABEL_32;
        }

        v28 = *v21;
        *(v29 + 5) = *(v21 + 5);
        *v29 = v28;
      }

      while (v30 > 1);
    }

    *v21 = v22;
    *(v21 + 2) = v23;
    *(v21 + 12) = v26;
  }

  else
  {
    v23 = *(v5 + 2);
    if (v25)
    {
      goto LABEL_24;
    }
  }

  return result;
}

char *std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral const*>,std::__wrap_iter<operations_research::sat::IntegerLiteral const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v6 = __src;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 <= (v7 - v8) >> 4)
  {
    v13 = v8 - __dst;
    v14 = (v8 - __dst) >> 4;
    if (v14 >= a5)
    {
      v13 = 16 * a5;
      v24 = &__dst[16 * a5];
      v25 = &v8[-a5];
      for (i = *(a1 + 8); v25 < v8; ++i)
      {
        v27 = *v25++;
        *i = v27;
      }

      *(a1 + 8) = i;
      if (v8 != v24)
      {
        memmove(&__dst[16 * a5], __dst, v8 - v24);
      }

      if (!v13)
      {
        return __dst;
      }
    }

    else
    {
      v15 = &__src[v13];
      v16 = *(a1 + 8);
      for (j = v16; v15 != a4; v16 += 16)
      {
        v18 = *v15;
        v15 += 16;
        *j = v18;
        j += 16;
      }

      *(a1 + 8) = v16;
      if (v14 < 1)
      {
        return __dst;
      }

      v19 = &__dst[16 * a5];
      v20 = &v16[-16 * a5];
      for (k = v16; v20 < v8; k += 16)
      {
        v22 = *v20++;
        *k = v22;
      }

      *(a1 + 8) = k;
      if (j != v19)
      {
        memmove(&__dst[16 * a5], __dst, v16 - v19);
      }

      if (v8 == __dst)
      {
        return __dst;
      }
    }

    memmove(__dst, v6, v13);
    return __dst;
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

  v28 = 16 * ((__dst - v9) >> 4);
  v29 = v28;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v30 = 16 * a5;
    v31 = v28;
    v29 = (v28 + 16 * a5);
    do
    {
      v32 = *v6++;
      *v31++ = v32;
      v30 -= 16;
    }

    while (v30);
  }

  v33 = *(a1 + 8) - __dst;
  memcpy(v29, __dst, v33);
  v35 = &v29[v33];
  *(a1 + 8) = __dst;
  v36 = *a1;
  v37 = &__dst[-*a1];
  v38 = v28 - v37;
  memcpy((v28 - v37), *a1, v37);
  *a1 = v38;
  *(a1 + 8) = v35;
  *(a1 + 16) = 0;
  if (v36)
  {
    operator delete(v36);
  }

  return v28;
}

void std::vector<std::optional<operations_research::sat::LinearExpression>>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (a2 <= (v2 - v3) >> 6)
  {
    if ((a2 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v9 = &v3[64 * a2];
      if (((a2 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_44;
      }

      if (&v3[64 * a2 - 64] < v3)
      {
        goto LABEL_44;
      }

      if (&v3[64 * a2 - 8] < v3 + 56)
      {
        goto LABEL_44;
      }

      v10 = ((a2 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
      v11 = &v3[64 * (v10 & 0x7FFFFFFFFFFFFFELL)];
      v12 = v3 + 64;
      v13 = v10 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 64) = 0;
        *v12 = 0;
        *(v12 - 8) = 0;
        v12[56] = 0;
        v12 += 128;
        v13 -= 2;
      }

      while (v13);
      v3 = v11;
      if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_44:
        do
        {
          *v3 = 0;
          v3[56] = 0;
          v3 += 64;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v4 = &v3[-*a1];
    v5 = v4 >> 6;
    v6 = (v4 >> 6) + a2;
    if (v6 >> 58)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v2 - *a1;
    if (v7 >> 5 > v6)
    {
      v6 = v7 >> 5;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFC0)
    {
      v8 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    v31 = a1;
    if (v8)
    {
      if (!(v8 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (v5 << 6);
    __p = 0;
    v28 = v5 << 6;
    v30 = 0;
    if ((a2 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v15 = &v14[64 * a2];
      v16 = (a2 - 1) & 0x3FFFFFFFFFFFFFFLL;
      if (!v16)
      {
        goto LABEL_45;
      }

      if (&v14[64 * a2 - 64] < v14)
      {
        goto LABEL_45;
      }

      if (v4 + 56 + ((a2 - 1) << 6) < v4 + 56)
      {
        goto LABEL_45;
      }

      v17 = v16 + 1;
      v18 = (v16 + 1) & 0x7FFFFFFFFFFFFFELL;
      v19 = &v14[64 * v18];
      v20 = v14 + 64;
      v21 = v18;
      do
      {
        *(v20 - 64) = 0;
        *v20 = 0;
        *(v20 - 8) = 0;
        v20[56] = 0;
        v20 += 128;
        v21 -= 2;
      }

      while (v21);
      v14 = v19;
      if (v17 != v18)
      {
LABEL_45:
        do
        {
          *v14 = 0;
          v14[56] = 0;
          v14 += 64;
        }

        while (v14 != v15);
      }

      v14 = v15;
    }

    v29 = v14;
    std::vector<std::optional<operations_research::sat::LinearExpression>>::__swap_out_circular_buffer(a1, &__p);
    v22 = v28;
    while (1)
    {
      v23 = v29;
      if (v29 == v22)
      {
        break;
      }

      v24 = (v29 - 64);
      v29 -= 64;
      if (*(v23 - 8) == 1)
      {
        v25 = *(v23 - 5);
        if (v25)
        {
          *(v23 - 4) = v25;
          operator delete(v25);
        }

        v26 = *v24;
        if (*v24)
        {
          *(v23 - 7) = v26;
          operator delete(v26);
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_23CC2E2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::optional<operations_research::sat::LinearExpression>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::optional<operations_research::sat::LinearExpression>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = v5 + v7;
      *v8 = 0;
      *(v8 + 56) = 0;
      if (*(v5 + v7 + 56) == 1)
      {
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = *v9;
        *(v8 + 16) = *(v9 + 16);
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
        *(v8 + 24) = *(v9 + 24);
        v10 = *(v9 + 48);
        *(v8 + 40) = *(v9 + 40);
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 24) = 0;
        *(v8 + 48) = v10;
        *(v8 + 56) = 1;
      }

      v7 += 64;
    }

    while (v5 + v7 != v4);
    do
    {
      if (*(v5 + 56) == 1)
      {
        v11 = *(v5 + 24);
        if (v11)
        {
          *(v5 + 32) = v11;
          operator delete(v11);
        }

        v12 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v12;
          operator delete(v12);
        }
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::optional<operations_research::sat::LinearExpression>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 64);
    *(a1 + 16) = i - 64;
    if (*(i - 8) == 1)
    {
      v5 = *(i - 40);
      if (v5)
      {
        *(i - 32) = v5;
        operator delete(v5);
      }

      v6 = *v4;
      if (*v4)
      {
        *(i - 56) = v6;
        operator delete(v6);
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::LbTreeSearch::LbTreeSearch(std::string *this, operations_research::sat::Model *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  this[1].__r_.__value_.__l.__size_ = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  this[1].__r_.__value_.__r.__words[2] = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  this[2].__r_.__value_.__r.__words[0] = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  this[2].__r_.__value_.__l.__size_ = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  this[2].__r_.__value_.__r.__words[2] = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  this[3].__r_.__value_.__r.__words[0] = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  this[3].__r_.__value_.__l.__size_ = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  this[3].__r_.__value_.__r.__words[2] = operations_research::sat::Model::GetOrCreate<operations_research::sat::PseudoCosts>(a2);
  this[4].__r_.__value_.__r.__words[0] = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a2);
  this[4].__r_.__value_.__l.__size_ = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(a2);
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[0] = v5;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  this[9].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[6].__r_.__value_.__l.__data_) = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  this[9].__r_.__value_.__r.__words[2] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  LODWORD(this[10].__r_.__value_.__r.__words[1]) = 0;
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[10].__r_.__value_.__r.__words[2] = 0;
  v6 = *(a2 + 3);
  if (v6 > 1)
  {
    v8 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v6;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_10:
    v20 = *(a2 + 6);
    while (1)
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
      if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_13:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_10;
          }
        }

LABEL_25:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v28, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lb_tree_search.cc", 71);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v28);
      }
    }

    v7 = (v20 + 16 * v21);
    if (!(_X11 + v21))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a2 + 4) < 2uLL)
    {
      goto LABEL_25;
    }

    v7 = a2 + 40;
    if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v7 + 1);
  if (v22)
  {
    LODWORD(this[4].__r_.__value_.__r.__words[2]) = *(v22 + 16);
    v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
    v25 = *v23;
    v26 = *(v23 + 8);
    if (*v23 != v26)
    {
      v27 = this[4].__r_.__value_.__r.__words[2];
      do
      {
        if (*(*v25 + 23692) == v27)
        {
          this[5].__r_.__value_.__l.__size_ = *v25;
        }

        ++v25;
      }

      while (v25 != v26);
    }

    operations_research::sat::SatSolverHeuristic(a2, v24);
  }

  goto LABEL_25;
}

void sub_23CC2EBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC2ECB4()
{
  if ((*(v0 + 23) & 0x80000000) == 0)
  {
    JUMPOUT(0x23CC2EC88);
  }

  JUMPOUT(0x23CC2EC80);
}

void *operations_research::sat::LbTreeSearch::UpdateParentObjective(void *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::LbTreeSearch::UpdateParentObjective(a2);
  }

  v2 = this[22];
  v3 = (this[23] - v2) >> 2;
  if (v3 <= a2)
  {
    operations_research::sat::LbTreeSearch::UpdateParentObjective(a2, v3);
  }

  if (a2)
  {
    v4 = (v2 + 4 * a2);
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = this[19];
    v8 = v7 + 40 * v5;
    v13 = v6;
    if (*(v8 + 24) == v6)
    {
      v9 = 8;
    }

    else
    {
      if (*(v8 + 28) != v6)
      {
        operations_research::sat::LbTreeSearch::UpdateParentObjective((v8 + 28), &v13);
      }

      v9 = 16;
    }

    v12 = (v7 + 40 * v6 + 8);
    v10 = *v12;
    v11 = v12[1];
    if (v11 < *v12)
    {
      v10 = v11;
    }

    if (*(v8 + v9) > v10)
    {
      v10 = *(v8 + v9);
    }

    *(v8 + v9) = v10;
  }

  return this;
}

int8x16_t operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent(operations_research::sat::LbTreeSearch *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent(a2);
  }

  v2 = *(this + 22);
  v3 = (*(this + 23) - v2) >> 2;
  if (v3 <= a2)
  {
    operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent(a2, v3);
  }

  if (a2)
  {
    v4 = (v2 + 4 * a2);
    v5 = *(this + 19);
    v6 = v5 + 40 * *(v4 - 1);
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v8 >= v7)
    {
      v9 = *(v6 + 8);
    }

    else
    {
      v9 = *(v6 + 16);
    }

    v14 = v9;
    if (v9 < *(this + 17))
    {
      operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent(&v14, this + 17);
    }

    v10 = *v4;
    LODWORD(v14) = v10;
    if (*(v6 + 24) != v10)
    {
      v7 = v8;
      if (*(v6 + 28) != v10)
      {
        operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent((v6 + 28), &v14);
      }
    }

    v11 = v5 + 40 * v10;
    v12 = vdupq_n_s64(v7);
    result = vbslq_s8(vcgtq_s64(*(v11 + 8), v12), *(v11 + 8), v12);
    *(v11 + 8) = result;
  }

  return result;
}

void operations_research::sat::LbTreeSearch::DebugDisplayTree(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  v3 = *(a1 + 160);
  if (*(v2 + 40 * a2 + 16) >= *(v2 + 40 * a2 + 8))
  {
    v4 = *(v2 + 40 * a2 + 8);
  }

  else
  {
    v4 = *(v2 + 40 * a2 + 16);
  }

  if (v3 == v2)
  {
    operator new();
  }

  if (!((0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3)) >> 62))
  {
    operator new();
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void sub_23CC2F4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (v34)
  {
    operator delete(v34);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

char *operations_research::sat::LbTreeSearch::SmallProgressString@<X0>(operations_research::sat::LbTreeSearch *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 36), v20, a2);
  *&v19 = v20;
  *(&v19 + 1) = v5 - v20;
  v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xCCCCCCCCCCCCCCCDLL * ((*(this + 20) - *(this + 19)) >> 3), v18, v6) - v18;
  v33[0] = "nodes=";
  v33[1] = 6;
  v34 = v19;
  v35 = "/";
  v36 = 1;
  v37 = v18;
  v38 = v17;
  v39 = " rc=";
  v40 = 4;
  v8 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 29), v32, v7);
  v30 = v32;
  v31 = v8 - v32;
  v41 = v32;
  v42 = v8 - v32;
  v43 = " decisions=";
  v44 = 11;
  v10 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 30), v29, v9);
  v27 = v29;
  v28 = v10 - v29;
  v45 = v29;
  v46 = v10 - v29;
  v47 = " @root=";
  v48 = 7;
  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 34), v26, v11);
  v24 = v26;
  v25 = v12 - v26;
  v49 = v26;
  v50 = v12 - v26;
  v51 = " restarts=";
  v52 = 10;
  v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 62), v23, v13);
  v21 = v23;
  v22 = v14 - v23;
  v53 = v23;
  v54 = v14 - v23;
  result = absl::lts_20240722::strings_internal::CatPieces(v33, 12, a3);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::LbTreeSearch::Search(std::string::size_type a1, uint64_t a2)
{
  v155 = *MEMORY[0x277D85DE8];
  if (!operations_research::sat::SatSolver::RestoreSolverToAssumptionLevel(*(a1 + 40)))
  {
LABEL_209:
    v65 = *(a1 + 40);
LABEL_210:
    result = *(v65 + 528);
    goto LABEL_211;
  }

  if (operations_research::TimeLimit::LimitReached(*(a1 + 24)))
  {
LABEL_3:
    result = 3;
    goto LABEL_211;
  }

  while (1)
  {
    if (operations_research::sat::SharedResponseManager::ProblemIsSolved(*(a1 + 80)))
    {
      goto LABEL_3;
    }

    *(a1 + 136) = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(a1 + 80));
    v5 = *(a1 + 72);
    v153[0] = &off_284F43778;
    v153[1] = a1;
    v154 = v153;
    v152 = &v151;
    v151.__r_.__value_.__r.__words[0] = &off_284F43778;
    v151.__r_.__value_.__l.__size_ = a1;
    std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](&v151, (v5 + 576));
    if (v152 != &v151)
    {
      if (v152)
      {
        (*(v152->__r_.__value_.__r.__words[0] + 40))(v152);
      }

      v6 = v154;
      if (v154 != v153)
      {
        goto LABEL_9;
      }

LABEL_14:
      (*(*v6 + 32))(v6);
      v7 = *(a1 + 176);
      v8 = *(a1 + 184);
      if (v7 == v8)
      {
        goto LABEL_73;
      }

LABEL_15:
      v9 = *(a1 + 40);
      v10 = *(v9 + 296);
      v11 = v8 - v7;
      v12 = v11 >> 2;
      if (v11 >> 2 < v10)
      {
        operations_research::sat::LbTreeSearch::Search(v12, *(v9 + 296));
      }

      if (v10 >= 1)
      {
        v13 = *(v9 + 296);
        v14 = v7;
        do
        {
          v15 = *v14++;
          v16 = *(*(a1 + 152) + 40 * v15);
          if (((*(*(*(v9 + 216) + 24) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v16 & 0x3E)) & 3) == 0)
          {
            operations_research::sat::LbTreeSearch::Search(&v151);
          }

          --v13;
        }

        while (v13);
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 112);
      if (v12 <= v10)
      {
        v22 = *(*(v17 + 40) + 8 * v18);
        if (v22 <= *(*(v17 + 152) + 24 * v18))
        {
LABEL_22:
          v23 = v11 >> 2;
          if (((v11 >> 2) - 1) < 1)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v19 = (*(v17 + 40) + 8 * v18);
        v20 = *(a1 + 152) + 40 * v7[v10];
        v21 = vld1q_dup_f64(v19);
        *(v20 + 8) = vbslq_s8(vcgtq_s64(*(v20 + 8), v21), *(v20 + 8), v21);
        v22 = *v19;
        if (*v19 <= *(*(v17 + 152) + 24 * v18))
        {
          goto LABEL_22;
        }
      }

      operations_research::sat::IntegerTrail::ReasonFor(v17, v18, v22, &v151);
      v24 = v151.__r_.__value_.__r.__words[0];
      if (v151.__r_.__value_.__r.__words[0] == v151.__r_.__value_.__l.__size_)
      {
        v26 = 0;
        goto LABEL_41;
      }

      v25 = *(*(*(a1 + 40) + 216) + 96);
      v26 = 0;
      if (v151.__r_.__value_.__l.__size_ - 4 == v151.__r_.__value_.__r.__words[0])
      {
        v27 = v151.__r_.__value_.__r.__words[0];
      }

      else
      {
        v28 = 0;
        v29 = ((v151.__r_.__value_.__l.__size_ - 4 - v151.__r_.__value_.__r.__words[0]) >> 2) + 1;
        v27 = (v151.__r_.__value_.__r.__words[0] + 4 * (v29 & 0x7FFFFFFFFFFFFFFELL));
        v30 = v29 & 0x7FFFFFFFFFFFFFFELL;
        v31 = v151.__r_.__value_.__r.__words[0];
        do
        {
          v32 = *v31++;
          v33 = vshrq_n_s64(vshll_n_s32(vshr_n_s32(v32, 1uLL), 0x20uLL), 0x1DuLL);
          if (v26 <= (*(v25 + v33.i64[0]) & 0xFFFFFFF))
          {
            v26 = *(v25 + v33.i64[0]) & 0xFFFFFFF;
          }

          if (v28 <= (*(v25 + v33.i64[1]) & 0xFFFFFFF))
          {
            v28 = *(v25 + v33.i64[1]) & 0xFFFFFFF;
          }

          v30 -= 2;
        }

        while (v30);
        if (v26 <= v28)
        {
          v26 = v28;
        }

        if (v29 == (v29 & 0x7FFFFFFFFFFFFFFELL))
        {
LABEL_41:
          if (v26 < v10)
          {
            v36 = (*(*(a1 + 64) + 40) + 8 * *(a1 + 112));
            v37 = *(a1 + 152) + 40 * *(*(a1 + 176) + 4 * v26);
            v38 = vld1q_dup_f64(v36);
            *(v37 + 8) = vbslq_s8(vcgtq_s64(*(v37 + 8), v38), *(v37 + 8), v38);
          }

          if (v24)
          {
            v151.__r_.__value_.__l.__size_ = v24;
            operator delete(v24);
          }

          v7 = *(a1 + 176);
          v11 = *(a1 + 184) - v7;
          v23 = v11 >> 2;
          if (((v11 >> 2) - 1) < 1)
          {
LABEL_48:
            v39 = (a1 + 136);
            v40 = *(a1 + 152) + 40 * *v7;
            v41 = vld1q_dup_f64(v39);
            v42 = vbslq_s8(vcgtq_s64(*(v40 + 8), v41), *(v40 + 8), v41);
            *(v40 + 8) = v42;
            if (v11 < 5)
            {
              if (v42.i64[1] >= v42.i64[0])
              {
                v47 = v42.i64[0];
              }

              else
              {
                v47 = v42.i64[1];
              }

              if (v47 <= *(a1 + 136))
              {
                goto LABEL_73;
              }
            }

            else
            {
              v43 = 1;
              do
              {
                operations_research::sat::LbTreeSearch::UpdateObjectiveFromParent(a1, v43++);
                v44 = *(a1 + 176);
              }

              while (v43 < ((*(a1 + 184) - v44) >> 2));
              v46 = *(*(a1 + 152) + 40 * *v44 + 8);
              v45 = *(*(a1 + 152) + 40 * *v44 + 16);
              if (v45 >= v46)
              {
                v47 = v46;
              }

              else
              {
                v47 = v45;
              }

              if (v47 <= *(a1 + 136))
              {
                goto LABEL_73;
              }
            }

            v48 = *(a1 + 80);
            v49 = *(a1 + 23);
            if ((v49 & 0x80u) == 0)
            {
              v50 = a1;
            }

            else
            {
              v50 = *a1;
            }

            if ((v49 & 0x80u) != 0)
            {
              v49 = *(a1 + 8);
            }

            v151.__r_.__value_.__r.__words[0] = v50;
            v151.__r_.__value_.__l.__size_ = v49;
            v149 = COERCE_DOUBLE(" (");
            v150 = 2;
            operations_research::sat::LbTreeSearch::SmallProgressString(a1, v22, &v143);
            size = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            v52 = &v143;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v143.__r_.__value_.__l.__size_;
              v52 = v143.__r_.__value_.__r.__words[0];
            }

            v147 = v52;
            v148 = size;
            v145[0] = ") ";
            v145[1] = 2;
            absl::lts_20240722::StrCat(&v151.__r_.__value_.__l.__data_, &v149, &v147, v145, &__p);
            operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(v48, &__p, v47, -*(*(*(a1 + 64) + 152) + 24 * (*(a1 + 112) ^ 1)));
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_69:
                *(a1 + 136) = v47;
                v53 = dword_2810C0700;
                if (dword_2810C0700 < 3)
                {
                  goto LABEL_73;
                }

                goto LABEL_201;
              }
            }

            else if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            operator delete(v143.__r_.__value_.__l.__data_);
            *(a1 + 136) = v47;
            v53 = dword_2810C0700;
            if (dword_2810C0700 < 3)
            {
              goto LABEL_73;
            }

LABEL_201:
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_19, v53))
            {
              operations_research::sat::LbTreeSearch::DebugDisplayTree(a1, **(a1 + 176));
            }

            goto LABEL_73;
          }

          do
          {
LABEL_46:
            LODWORD(v23) = v23 - 1;
            operations_research::sat::LbTreeSearch::UpdateParentObjective(a1, v23);
          }

          while (v23 > 1);
          v7 = *(a1 + 176);
          v11 = *(a1 + 184) - v7;
          goto LABEL_48;
        }
      }

      do
      {
        v34 = *v27++;
        v35 = *(v25 + 8 * (v34 >> 1)) & 0xFFFFFFF;
        if (v26 <= v35)
        {
          v26 = v35;
        }
      }

      while (v27 != v151.__r_.__value_.__l.__size_);
      goto LABEL_41;
    }

    (*(v152->__r_.__value_.__r.__words[0] + 32))(v152);
    v6 = v154;
    if (v154 == v153)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = *(a1 + 176);
    v8 = *(a1 + 184);
    if (v7 != v8)
    {
      goto LABEL_15;
    }

LABEL_73:
    v54 = *(a1 + 64);
    v55 = *(a1 + 112);
    v56 = *(*(v54 + 40) + 8 * v55);
    v57 = v56 - *(*(v54 + 152) + 24 * v55);
    if (v57 >= 1)
    {
      operations_research::sat::IntegerTrail::ReasonFor(v54, v55, v56, &v151);
      operations_research::sat::PseudoCosts::UpdateBoolPseudoCosts(*(a1 + 88), v151.__r_.__value_.__l.__data_, (v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 2, v57);
      operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(a1 + 96), v151.__r_.__value_.__l.__data_, (v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 2);
      operations_research::sat::SatDecisionPolicy::UpdateVariableActivityIncrement(*(a1 + 96));
      if (v151.__r_.__value_.__r.__words[0])
      {
        v151.__r_.__value_.__l.__size_ = v151.__r_.__value_.__r.__words[0];
        operator delete(v151.__r_.__value_.__l.__data_);
      }
    }

    if (*(a1 + 240) >= *(a1 + 256) + 1000 && *(a1 + 248) <= 9)
    {
      if (dword_2810C0718 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0710, dword_2810C0718))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lb_tree_search.cc", 343);
        v133 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v149, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v133, "lb_tree_search (initial_restart ", 0x20uLL);
        operations_research::sat::LbTreeSearch::SmallProgressString(a1, v134, &v151);
        v135 = absl::lts_20240722::log_internal::LogMessage::operator<<(v133, &v151);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v135, ")", 1uLL);
        if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v151.__r_.__value_.__l.__data_);
        }

        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v149);
      }

      ++*(a1 + 248);
      *(a1 + 256) = *(a1 + 240);
      *(a1 + 144) = 0;
      *(a1 + 160) = *(a1 + 152);
      *(a1 + 184) = *(a1 + 176);
      if ((operations_research::sat::SatSolver::RestoreSolverToAssumptionLevel(*(a1 + 40)) & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    v58 = *(a1 + 40);
    v59 = *(v58 + 74) + 1;
    v60 = *(a1 + 184);
    for (i = v60 - *(a1 + 176); ; i -= 4)
    {
      --v60;
      if (i >> 2 <= v59)
      {
        if ((i >> 2) < 2)
        {
          break;
        }

        v62 = *(*(a1 + 152) + 40 * *v60 + 8);
        if (*(*(a1 + 152) + 40 * *v60 + 16) < v62)
        {
          v62 = *(*(a1 + 152) + 40 * *v60 + 16);
        }

        if (v62 <= *(a1 + 136))
        {
          break;
        }
      }

      *(a1 + 184) = v60;
    }

    if (*(a1 + 240) >= *(a1 + 264) + 10000)
    {
      v63 = 0;
    }

    else
    {
      v63 = ((i >> 2) - 1) & ~(((i >> 2) - 1) >> 31);
    }

    operations_research::sat::SatSolver::Backtrack(v58, v63);
    v64 = operations_research::sat::SatSolver::FinishPropagation(*(a1 + 40));
    v65 = *(a1 + 40);
    if ((v64 & 1) == 0)
    {
      goto LABEL_210;
    }

    if (!*(v65 + 296))
    {
      v66 = *(a1 + 272) + 1;
      *(a1 + 264) = *(a1 + 240);
      *(a1 + 272) = v66;
    }

    v67 = operations_research::sat::IntegerSearchHelper::BeforeTakingDecision(*(a1 + 104));
    v65 = *(a1 + 40);
    if ((v67 & 1) == 0)
    {
      goto LABEL_210;
    }

    if (!*(v65 + 296) && *(a1 + 144) >= 51)
    {
      InnerObjectiveLowerBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(a1 + 80));
      v69 = *(a1 + 152);
      v70 = *(a1 + 160);
      if (v69 == v70)
      {
        v72 = 0;
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = 0;
        do
        {
          if ((*(v69 + 32) & 1) == 0)
          {
            ++v71;
            v73 = *(v69 + 16);
            if (v73 >= *(v69 + 8))
            {
              v73 = *(v69 + 8);
            }

            if (v73 < InnerObjectiveLowerBound)
            {
              ++v72;
            }
          }

          v69 += 40;
        }

        while (v69 != v70);
      }

      if (v71 >= 2 * v72)
      {
        v65 = *(a1 + 40);
      }

      else
      {
        if (dword_2810C0730 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0728, dword_2810C0730))
        {
          v136 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v151, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/lb_tree_search.cc", 410);
          v137 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v136, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v137, "lb_tree_search restart nodes: ", 0x1EuLL);
          LODWORD(v149) = v72;
          v138 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v137, &v149);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v138, "/", 1uLL);
          LODWORD(v149) = v71;
          v139 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v138, &v149);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v139, " : ", 3uLL);
          v149 = v72 * 100.0 / v71;
          v140 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v139, &v149);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v140, "%", 1uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v140, ", decisions:", 0xCuLL);
          v149 = *(a1 + 240);
          absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v140, &v149);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v151);
        }

        v74 = *(a1 + 40);
        ++*(a1 + 248);
        *(a1 + 256) = *(a1 + 240);
        *(a1 + 144) = 0;
        *(a1 + 160) = *(a1 + 152);
        *(a1 + 184) = *(a1 + 176);
        v75 = operations_research::sat::SatSolver::RestoreSolverToAssumptionLevel(v74);
        v65 = *(a1 + 40);
        if ((v75 & 1) == 0)
        {
          goto LABEL_210;
        }
      }
    }

    v76 = *(a1 + 176);
    v77 = *(a1 + 184);
    v78 = (v77 - v76) >> 2;
    v79 = *(v65 + 296);
    if (v78 == v79 + 1)
    {
      while (1)
      {
        if (v78 - 1 != v79)
        {
          operations_research::sat::LbTreeSearch::Search(v78 - 1, v79);
        }

        v80 = (*(a1 + 152) + 40 * *(v76 + 4 * v79));
        v81 = *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112));
        if (*(a1 + 136) > v81)
        {
          v81 = *(a1 + 136);
        }

        v82 = (v80 + 2);
        v83 = vdupq_n_s64(v81);
        v84 = vbslq_s8(vcgtq_s64(*(v80 + 2), v83), *(v80 + 2), v83);
        v85 = v84.i64[1];
        *(v80 + 2) = v84;
        if (v84.i64[1] >= v84.i64[0])
        {
          v85 = v84.i64[0];
        }

        v86 = *(a1 + 136);
        if (v85 > v86)
        {
          goto LABEL_157;
        }

        v151.__r_.__value_.__r.__words[0] = v85;
        if (v85 != v86)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(&v151, (a1 + 136), "node.MinObjective() == current_objective_lb_");
        }

        v142 = 0;
        v87 = *v80;
        v88 = *(*(v65 + 216) + 24);
        v89 = *(v88 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if (((v89 >> (v87 & 0x3E)) & 3) != 0)
        {
          v90 = ((1 << v87) & v89) == 0;
          v91 = 7;
          if (((1 << v87) & v89) != 0)
          {
            v91 = 6;
          }

          v92 = 2;
          if (v90)
          {
            v92 = 4;
          }

          v142 = v80[v91];
          v93 = *&v80[v92];
          --*(a1 + 144);
          *(v80 + 32) = 1;
          if ((*(v88 + ((*v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v80))
          {
            v94 = (v80 + 7);
          }

          else
          {
            v94 = (v80 + 6);
          }

          v95 = *v94;
          operations_research::sat::LbTreeSearch::MarkSubtreeAsDeleted();
        }

        operations_research::sat::LbTreeSearch::ExploitReducedCosts(a1, *(v76 + 4 * v79));
        v97 = (v80 + 4);
        v98 = *(v80 + 2);
        if (v98 >= *v82)
        {
          v98 = *v82;
        }

        if (v98 > *(a1 + 136))
        {
LABEL_156:
          v76 = *(a1 + 176);
          v77 = *(a1 + 184);
          v65 = *(a1 + 40);
          goto LABEL_157;
        }

        ++*(a1 + 240);
        v99 = *v82;
        v100 = *v97;
        if (*v82 <= *v97)
        {
          v142 = v80[6];
          v101 = *v80;
        }

        else
        {
          v142 = v80[7];
          v101 = *v80 ^ 1;
        }

        operations_research::sat::IntegerSearchHelper::TakeDecision(*(a1 + 104), v101, v96);
        v76 = *(a1 + 176);
        v77 = *(a1 + 184);
        v65 = *(a1 + 40);
        if (*(v65 + 296) != (v77 - v76) >> 2)
        {
          if (v99 <= v100)
          {
            v132 = *v82;
            if (*v82 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v132 = 0x7FFFFFFFFFFFFFFELL;
            }

            *v82 = v132;
          }

          else
          {
            v116 = *v97;
            if (*v97 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v116 = 0x7FFFFFFFFFFFFFFELL;
            }

            *v97 = v116;
          }

          goto LABEL_157;
        }

        v102 = *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112));
        if (v99 <= v100)
        {
          v103 = (v80 + 2);
        }

        else
        {
          v103 = (v80 + 4);
        }

        v104 = *v103;
        if (*v103 <= v102)
        {
          v104 = *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112));
        }

        *v103 = v104;
        if (v102 > *(a1 + 136))
        {
          goto LABEL_156;
        }

        if (dword_2810C0748 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0740, dword_2810C0748))
        {
          break;
        }

LABEL_143:
        if (v142 >= (-858993459 * ((*(a1 + 160) - *(a1 + 152)) >> 3)))
        {
          goto LABEL_156;
        }

        std::vector<int>::push_back[abi:ne200100](a1 + 176, &v142);
        v76 = *(a1 + 176);
        v77 = *(a1 + 184);
        v78 = (v77 - v76) >> 2;
        v65 = *(a1 + 40);
        v79 = *(v65 + 296);
        if (v78 != v79 + 1)
        {
          goto LABEL_157;
        }
      }

      v106 = *(a1 + 80);
      v146 = 5;
      strcpy(v145, "TreeS");
      v151.__r_.__value_.__r.__words[0] = " (";
      v151.__r_.__value_.__l.__size_ = 2;
      operations_research::sat::LbTreeSearch::SmallProgressString(a1, v105, &v143);
      v107 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
      *&data = COERCE_DOUBLE(&v143);
      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v107 = v143.__r_.__value_.__l.__size_;
        data = v143.__r_.__value_.__l.__data_;
      }

      v149 = *&data;
      v150 = v107;
      v147 = ")";
      v148 = 1;
      absl::lts_20240722::StrCat(&v151.__r_.__value_.__l.__data_, &v149, &v147, &__p);
      operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v106, v145, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_151;
        }
      }

      else if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_151:
        if ((v146 & 0x80000000) == 0)
        {
          goto LABEL_143;
        }

LABEL_155:
        operator delete(v145[0]);
        goto LABEL_143;
      }

      operator delete(v143.__r_.__value_.__l.__data_);
      if ((v146 & 0x80000000) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_155;
    }

LABEL_157:
    v109 = (v77 - v76) >> 2;
    v110 = *(v65 + 296);
    if (v109 == v110 && *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112)) <= *(a1 + 136))
    {
      break;
    }

LABEL_159:
    v111 = operations_research::TimeLimit::LimitReached(*(a1 + 24));
    result = 3;
    if (v111)
    {
      goto LABEL_211;
    }
  }

  while (1)
  {
    result = *(v65 + 528);
    if (result)
    {
      break;
    }

    LODWORD(v151.__r_.__value_.__l.__data_) = 0;
    if (operations_research::sat::IntegerSearchHelper::GetDecision(*(a1 + 104), a1 + 200, &v151))
    {
      if (operations_research::TimeLimit::LimitReached(*(a1 + 24)))
      {
        goto LABEL_3;
      }

      v113 = v151.__r_.__value_.__l.__data_;
      if (LODWORD(v151.__r_.__value_.__l.__data_) == -1)
      {
        v117 = *(a2 + 24);
        if (!v117)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v117 + 48))(v117);
        v115 = *(*(a1 + 40) + 296);
LABEL_176:
        if (v115 > v110)
        {
          operations_research::sat::IntegerTrail::ReasonFor(*(a1 + 64), *(a1 + 112), *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112)), &v151);
          operations_research::sat::LbTreeSearch::ExtractDecisions(a1, v110, v151.__r_.__value_.__l.__data_, (v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 2, &v149);
          operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(a1 + 96), v151.__r_.__value_.__l.__data_, (v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 2);
          operations_research::sat::SatDecisionPolicy::BumpVariableActivities(*(a1 + 96), *&v149, (v150 - *&v149) >> 2);
          operations_research::sat::SatDecisionPolicy::UpdateVariableActivityIncrement(*(a1 + 96));
          v119 = *(a1 + 176);
          v118 = *(a1 + 184);
          v120 = (v118 - v119) >> 2;
          if (v120 != v109)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v120, v109, "current_branch_.size() == base_level");
          }

          v121 = *&v149;
          v122 = v150;
          if (*&v149 != v150)
          {
            do
            {
              operations_research::sat::LbTreeSearch::AppendNewNodeToCurrentBranch(a1, *v121++);
            }

            while (v121 != v122);
            v119 = *(a1 + 176);
            v118 = *(a1 + 184);
          }

          v123 = *(a1 + 40);
          if (v119 != v118)
          {
            v124 = (*(a1 + 152) + 40 * *(v118 - 4));
            v125 = 2;
            if (((*(*(*(v123 + 216) + 24) + ((*v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v124) & 1) == 0)
            {
              v125 = 4;
            }

            v126 = *&v124[v125];
            if (v126 <= *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112)))
            {
              v126 = *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112));
            }

            *&v124[v125] = v126;
          }

          v127 = (v118 - v119) >> 2;
          v128 = *(v123 + 296);
          if (v127 > v128)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v127, v128, "current_branch_.size() <= sat_solver_->CurrentDecisionLevel()");
          }

          if (v127 > v109)
          {
            do
            {
              if (*(*(v123 + 304) + 8 * v109 + 4) != *(*(a1 + 152) + 40 * *(v119 + 4 * v109)))
              {
                break;
              }

              LODWORD(v110) = v110 + 1;
              v109 = v110;
            }

            while (v127 > v110);
          }

          operations_research::sat::SatSolver::Backtrack(v123, v110);
          v129 = v110;
          v130 = *(a1 + 176);
          if (v110 < ((*(a1 + 184) - v130) >> 2))
          {
            v131 = v110 + 1;
            do
            {
              operations_research::sat::LbTreeSearch::ExploitReducedCosts(a1, *(v130 + 4 * v129));
              v129 = v131;
              v130 = *(a1 + 176);
              ++v131;
            }

            while (v129 < (*(a1 + 184) - v130) >> 2);
          }

          if (v149 != 0.0)
          {
            v150 = *&v149;
            operator delete(*&v149);
          }

          if (v151.__r_.__value_.__r.__words[0])
          {
            v151.__r_.__value_.__l.__size_ = v151.__r_.__value_.__r.__words[0];
            operator delete(v151.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_159;
      }

      ++*(a1 + 240);
      v114 = operations_research::sat::IntegerSearchHelper::TakeDecision(*(a1 + 104), v113, v112);
      v65 = *(a1 + 40);
      if ((v114 & 1) == 0)
      {
        goto LABEL_210;
      }

      v115 = *(v65 + 296);
      if (v115 < v110 || *(*(*(a1 + 64) + 40) + 8 * *(a1 + 112)) > *(a1 + 136))
      {
        goto LABEL_176;
      }
    }

    else
    {
      v65 = *(a1 + 40);
    }
  }

LABEL_211:
  v141 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC30BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (*(v32 - 153) < 0)
  {
    operator delete(*(v31 + 48));
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a31);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a31);
  _Unwind_Resume(a1);
}

void sub_23CC30C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if ((a30 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a25);
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *operations_research::sat::LbTreeSearch::ExploitReducedCosts(void *result, int a2)
{
  v2 = result[16];
  if (v2)
  {
    v3 = *(v2 + 24216);
    if (*(v2 + 24208) != v3)
    {
      v4 = result;
      v5 = (result[19] + 40 * a2);
      v6 = *v5;
      if (((*(*(*(result[5] + 216) + 24) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v5 & 0x3E)) & 3) != 0)
      {
        operations_research::sat::LbTreeSearch::ExploitReducedCosts(&v22);
      }

      v7 = result[6];
      v8 = v7[14];
      v9 = -858993459 * ((v7[15] - v8) >> 3);
      v10 = v7 + 9;
      v11 = (v8 + 40 * v6);
      if (v6 >= v9)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v15 = *v12;
      v13 = v12 + 1;
      v14 = v15;
      if (v15)
      {
        v13 = *v13;
      }

      if ((v14 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v16 = v13 + 1;
        v17 = 16 * (v14 >> 1);
        v18 = 11;
        while (1)
        {
          if (!--v18)
          {
            return result;
          }

          result = operations_research::sat::LinearConstraintPropagator<true>::ConditionalLb(*(v3 - 8), *(v16 - 1), *v16, *(v4 + 28));
          if (result > *(v5 + 2))
          {
            break;
          }

          if (v19 > *(v5 + 1))
          {
            goto LABEL_19;
          }

LABEL_11:
          v16 += 2;
          v17 -= 16;
          if (!v17)
          {
            return result;
          }
        }

        ++v4[29];
        v20 = *(v5 + 2);
        if (v20 <= result)
        {
          v20 = result;
        }

        *(v5 + 2) = v20;
        if (v19 <= *(v5 + 1))
        {
          goto LABEL_11;
        }

LABEL_19:
        ++v4[29];
        v21 = *(v5 + 1);
        if (v21 <= v19)
        {
          v21 = v19;
        }

        *(v5 + 1) = v21;
        goto LABEL_11;
      }
    }
  }

  return result;
}

void operations_research::sat::LbTreeSearch::ExtractDecisions(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v9 = *(*(a1 + 40) + 296);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    if ((v11 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v54 = 0;
  v55 = 0;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = 0;
    v13 = 4 * a4;
    do
    {
      v14 = (*(*(a1 + 56) + 96) + 8 * (*a3 >> 1));
      v15 = *v14 & 0xFFFFFFF;
      if (v15 > a2)
      {
        ++*(4 * v15);
        v16 = v14[1];
        if (v54 <= v16)
        {
          std::vector<BOOL>::resize(&__p, v16 + 1, 0);
          v16 = v14[1];
          v12 = __p;
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      }

      ++a3;
      v13 -= 4;
    }

    while (v13);
    v17 = v54;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if (v17)
    {
      v18 = (v17 - 1);
      if (v17 - 1 >= 0)
      {
        do
        {
          if ((*(__p + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = *(a1 + 56);
            v52 = *(v19[6] + 4 * v18);
            v20 = (v52 >> 1);
            v21 = v19[12];
            v22 = 8 * v20;
            v23 = *(v21 + v22) & 0xFFFFFFF;
            if (v23 <= a2)
            {
              break;
            }

            if (*(4 * v23) == 1)
            {
              std::vector<int>::push_back[abi:ne200100](a5, &v52);
            }

            else
            {
              v24 = v20 << 32;
              --*(4 * v23);
              if (*(v21 + 8 * v20) >> 28 == 3)
              {
                v25 = *(v19[16] + 4 * v20);
                v24 = v25 << 32;
                v22 = 8 * v25;
              }

              v26 = (v21 + v22);
              v27 = *(v21 + v22);
              if (v27 >> 28)
              {
                v30 = v27 >> 28;
                if ((v30 - 1) > 1)
                {
                  v33 = *(v19[31] + 8 * v30);
                  v34 = (*(*v33 + 32))(v33, v19, v26[1]);
                  v31 = v24 >> 28;
                  v35 = (v19[25] + (v24 >> 28));
                  *v35 = v34;
                  v35[1] = v36;
                }

                else
                {
                  v31 = v24 >> 28;
                  v32 = (v19[25] + (v24 >> 28));
                  *v32 = 0;
                  v32[1] = 0;
                }

                *(v19[28] + (v24 >> 30)) = *v26 >> 28;
                *(v19[12] + v22) &= 0xFFFFFFFu;
                v28 = v19[25] + v31;
                v29 = *(v28 + 8);
                if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
                {
LABEL_27:
                  v37 = *v28;
                  v38 = *(*(a1 + 56) + 96);
                  v39 = __p;
                  v40 = 4 * v29;
                  do
                  {
                    v41 = (v38 + 8 * (*v37 >> 1));
                    if ((*v41 & 0xFFFFFFF) > a2)
                    {
                      v42 = v41[1];
                      v43 = v42 >> 6;
                      v44 = 1 << v42;
                      v45 = v39[v43];
                      if ((v44 & v45) == 0)
                      {
                        v39[v43] = v44 | v45;
                        ++*(4 * (*v41 & 0xFFFFFFF));
                      }
                    }

                    ++v37;
                    v40 -= 4;
                  }

                  while (v40);
                }
              }

              else
              {
                v28 = v19[25] + (v24 >> 28);
                v29 = *(v28 + 8);
                if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
                {
                  goto LABEL_27;
                }
              }
            }
          }

          v49 = v18-- <= 0;
        }

        while (!v49);
      }

      v46 = *a5;
      v47 = a5[1];
      v48 = (v47 - 4);
      v49 = *a5 != v47 && v48 > v46;
      if (v49)
      {
        v50 = v46 + 4;
        do
        {
          v51 = *(v50 - 4);
          *(v50 - 4) = *v48;
          *v48-- = v51;
          v10 = v50 >= v48;
          v50 += 4;
        }

        while (!v10);
      }
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_23CC312AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      operator delete(v10);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  operator delete(v10);
  _Unwind_Resume(a1);
}

void operations_research::sat::LbTreeSearch::AppendNewNodeToCurrentBranch(uint64_t a1, int a2)
{
  v3 = -858993459 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  v10 = v3;
  ++*(a1 + 144);
  v9[0] = a2;
  std::vector<operations_research::sat::LbTreeSearch::Node>::emplace_back<operations_research::sat::Literal,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> &>(a1 + 152, v9, (a1 + 136));
  v4 = *(a1 + 184);
  if (*(a1 + 176) != v4)
  {
    v5 = (*(a1 + 152) + 40 * *(v4 - 4));
    v6 = *(*(*(*(a1 + 40) + 216) + 24) + ((*v5 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v6 >> *v5))
    {
      v5[6] = v3;
      v7 = 2;
    }

    else
    {
      if (((v6 >> (*v5 & 0x3F ^ 1u)) & 1) == 0)
      {
        operations_research::sat::LbTreeSearch::AppendNewNodeToCurrentBranch(v9);
      }

      v5[7] = v3;
      v7 = 4;
    }

    v8 = *(*(a1 + 160) - 32);
    if (*(*(a1 + 160) - 24) < v8)
    {
      v8 = *(*(a1 + 160) - 24);
    }

    if (*&v5[v7] > v8)
    {
      v8 = *&v5[v7];
    }

    *&v5[v7] = v8;
  }

  std::vector<int>::push_back[abi:ne200100](a1 + 176, &v10);
}

uint64_t std::__function::__func<operations_research::sat::LbTreeSearch::Search(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::sat::LbTreeSearch::Search(std::function<void ()(void)> const&)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_284F43778;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LbTreeSearch::Search(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::sat::LbTreeSearch::Search(std::function<void ()(void)> const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12LbTreeSearch6SearchERKNSt3__18functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12LbTreeSearch6SearchERKNSt3__18functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12LbTreeSearch6SearchERKNSt3__18functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12LbTreeSearch6SearchERKNSt3__18functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::vector<operations_research::sat::LbTreeSearch::Node>::emplace_back<operations_research::sat::Literal,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> &>(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 8 * (v10 >> 3);
    v15 = *a3;
    *v14 = *a2;
    *(v14 + 8) = v15;
    *(v14 + 16) = v15;
    *(v14 + 24) = 0x8000000080000000;
    *(v14 + 32) = 0;
    v8 = v14 + 40;
    v16 = v14 - v10;
    memcpy((v14 - v10), v9, v10);
    *a1 = v16;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    *(v5 + 8) = v7;
    *(v5 + 16) = v7;
    *(v5 + 24) = 0x8000000080000000;
    *(v5 + 32) = 0;
    v8 = v5 + 40;
  }

  *(a1 + 8) = v8;
  return v8 - 40;
}

void operations_research::sat::LinearConstraintBuilder::AddTerm(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      LODWORD(v3) = a2 & 0xFFFFFFFE;
      *(&v3 + 1) = -a3;
    }

    else
    {
      LODWORD(v3) = a2;
      *(&v3 + 1) = a3;
    }

    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v3);
  }
}

void operations_research::sat::LinearConstraintBuilder::AddTerm(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *a2;
    if (*a2 != -1)
    {
      if (v6)
      {
        v6 &= ~1u;
        v7 = -(*(a2 + 1) * a3);
      }

      else
      {
        v7 = *(a2 + 1) * a3;
      }

      LODWORD(v8) = v6;
      *(&v8 + 1) = v7;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v8);
    }

    *(a1 + 24) += *(a2 + 2) * a3;
  }
}

void operations_research::sat::LinearConstraintBuilder::AddLinearExpression(operations_research::sat::LinearConstraintBuilder *this, const operations_research::sat::LinearExpression *a2)
{
  v4 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v8 = *(v4 + 4 * v5);
      if (v8)
      {
        v8 &= ~1u;
        v7 = -*(*(a2 + 3) + 8 * v5);
      }

      else
      {
        v7 = *(*(a2 + 3) + 8 * v5);
      }

      LODWORD(v9) = v8;
      *(&v9 + 1) = v7;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 32, &v9);
      v5 = v6;
      v4 = *a2;
      ++v6;
    }

    while (v5 < (*(a2 + 1) - *a2) >> 2);
  }

  *(this + 3) += *(a2 + 6);
}

void operations_research::sat::LinearConstraintBuilder::AddLinearExpression(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v10 = *(v6 + 4 * v7);
      if (v10)
      {
        v10 &= ~1u;
        v9 = -(*(a2[3] + 8 * v7) * a3);
      }

      else
      {
        v9 = *(a2[3] + 8 * v7) * a3;
      }

      LODWORD(v11) = v10;
      *(&v11 + 1) = v9;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v11);
      v7 = v8;
      v6 = *a2;
      ++v8;
    }

    while (v7 < (a2[1] - *a2) >> 2);
  }

  *(a1 + 24) += a2[6] * a3;
}

uint64_t operations_research::sat::LinearConstraintBuilder::AddDecomposedProduct(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = 24 * a3;
  if (24 * a3)
  {
    v5 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v8 = a2 + 24 * v7;
      v9 = (a2 + 32);
      v10 = 0x7FFFFFFFFFFFFFFELL;
      v11 = v7;
      v12 = 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v13 = *(v9 - 3);
        v14 = *(v9 - 2);
        v16 = *v9;
        v15 = v9[1];
        v9 += 6;
        v17 = v14 * v13;
        if (v17 < v10)
        {
          v10 = v17;
        }

        if (v15 * v16 < v12)
        {
          v12 = v15 * v16;
        }

        v11 -= 2;
      }

      while (v11);
      if (v10 >= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v10;
      }

      if (v6 == v7)
      {
LABEL_22:
        v21 = (a2 + 16);
        while (1)
        {
          v22 = *v21 * *(v21 - 1);
          if (v22 != v18)
          {
            result = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(a1, *(v21 - 4), v22 - v18);
            if (!result)
            {
              return result;
            }
          }

          v21 += 3;
          v4 -= 24;
          if (!v4)
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFELL;
      v8 = a2;
    }

    do
    {
      v20 = *(v8 + 16);
      if (v20 * *(v8 + 8) < v18)
      {
        v18 = v20 * *(v8 + 8);
      }

      v8 += 24;
    }

    while (v8 != a2 + v4);
    goto LABEL_22;
  }

  v18 = 0x7FFFFFFFFFFFFFFELL;
LABEL_17:
  a1[3] += v18;
  return 1;
}

uint64_t operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(uint64_t *a1, int a2, uint64_t a3)
{
  v9 = -1;
  v8 = 1;
  result = operations_research::sat::IntegerEncoder::LiteralOrNegationHasView(*a1, a2, &v9, &v8);
  if (result)
  {
    if (v8 == 1)
    {
      if (a3)
      {
        v6 = result;
        if (v9)
        {
          LODWORD(v10) = v9 & 0xFFFFFFFE;
          *(&v10 + 1) = -a3;
        }

        else
        {
          LODWORD(v10) = v9;
          *(&v10 + 1) = a3;
        }

        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((a1 + 4), &v10);
        return v6;
      }
    }

    else
    {
      if (a3)
      {
        v7 = result;
        if (v9)
        {
          LODWORD(v10) = v9 & 0xFFFFFFFE;
          *(&v10 + 1) = a3;
        }

        else
        {
          LODWORD(v10) = v9;
          *(&v10 + 1) = -a3;
        }

        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((a1 + 4), &v10);
        result = v7;
      }

      a1[3] += a3;
    }
  }

  return result;
}

void operations_research::sat::LinearConstraintBuilder::AddQuadraticLowerBound(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = *a2;
  if (*a2 == -1)
  {
    v10 = *(a2 + 2);
    if (v10)
    {
LABEL_6:
      v11 = *a3;
      v12 = *(a3 + 16);
      if (*a3 == -1)
      {
LABEL_24:
        *(a1 + 24) += v12 * v10;
        return;
      }

      v13 = *(a3 + 8);
      if ((v11 & 1) == 0)
      {
        v14 = v13 * v10;
LABEL_22:
        LODWORD(v29) = v11;
        goto LABEL_23;
      }

      v11 &= ~1u;
LABEL_21:
      v14 = -(v13 * v10);
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *(a4 + 40);
    v8 = 8 * v6;
    v9 = *(v7 + v8);
    if (!(v9 + *(v7 + (v8 ^ 8))))
    {
      v10 = *(a2 + 2) + v9 * *(a2 + 1);
      if (!v10)
      {
        return;
      }

      goto LABEL_6;
    }

    v15 = *a3;
    if (*a3 == -1)
    {
      v10 = *(a3 + 16);
      if (!v10)
      {
        return;
      }

      goto LABEL_15;
    }

    v16 = 8 * v15;
    v17 = *(v7 + v16);
    if (!(v17 + *(v7 + (v16 ^ 8))))
    {
      v10 = *(a3 + 16) + v17 * *(a3 + 8);
      if (!v10)
      {
        return;
      }

LABEL_15:
      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if ((v6 & 1) == 0)
      {
        v14 = v13 * v10;
        LODWORD(v29) = *a2;
LABEL_23:
        *(&v29 + 1) = v14;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v29);
        goto LABEL_24;
      }

      v11 = v6 & 0xFFFFFFFE;
      goto LABEL_21;
    }

    v18 = *(a2 + 1);
    v19 = *(a2 + 2);
    v20 = v19 + v9 * v18;
    v21 = *(a3 + 8);
    v22 = *(a3 + 16);
    v23 = v22 + v17 * v21;
    if (v23)
    {
      v25 = a5;
      if (v6)
      {
        v6 &= ~1u;
        v26 = -(v23 * v18);
      }

      else
      {
        v26 = v23 * v18;
      }

      LODWORD(v29) = v6;
      *(&v29 + 1) = v26;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v29);
      *(a1 + 24) += v23 * v19;
      v15 = *a3;
      v21 = *(a3 + 8);
      v22 = *(a3 + 16);
      a5 = v25;
    }

    if (v20)
    {
      if (v15 != -1)
      {
        v27 = a5;
        if (v15)
        {
          LODWORD(v29) = v15 & 0xFFFFFFFE;
          *(&v29 + 1) = -(v20 * v21);
        }

        else
        {
          LODWORD(v29) = v15;
          *(&v29 + 1) = v21 * v20;
        }

        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 32, &v29);
        a5 = v27;
      }

      v28 = *(a1 + 24) + v22 * v20;
    }

    else
    {
      v28 = *(a1 + 24);
    }

    *(a1 + 24) = v28 - v23 * v20;
    if (a5)
    {
      *a5 = 1;
    }
  }
}

uint64_t operations_research::sat::LinearConstraintBuilder::Build@<X0>(operations_research::sat::LinearConstraintBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v4 >= 0x8000000000000003)
  {
    v4 -= *(this + 3);
  }

  *a2 = v4;
  if (v3 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v3 -= *(this + 3);
  }

  *(a2 + 8) = v3;
  return operations_research::sat::CleanTermsAndFillConstraint(this + 4, a2);
}

uint64_t operations_research::sat::LinearConstraintBuilder::BuildConstraint@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  if (a2 >= 0x8000000000000003)
  {
    a2 -= *(a1 + 24);
  }

  *a4 = a2;
  if (a3 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    a3 -= *(a1 + 24);
  }

  *(a4 + 8) = a3;
  return operations_research::sat::CleanTermsAndFillConstraint((a1 + 32), a4);
}

uint64_t operations_research::sat::CleanTermsAndFillConstraint(uint64_t *a1, operations_research::sat::LinearConstraint *this)
{
  operations_research::sat::LinearConstraint::resize(this, (a1[1] - *a1) >> 4);
  v4 = a1[1];
  v5 = 126 - 2 * __clz((v4 - *a1) >> 4);
  if (v4 == *a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(*a1, v4, &v15, v6, 1);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    return operations_research::sat::LinearConstraint::resize(this, 0);
  }

  v9 = 0;
  v10 = 0;
  v11 = -1;
  do
  {
    if (v11 == *v7)
    {
      v10 += *(v7 + 8);
    }

    else if ((*v7 ^ v11) == 1)
    {
      v10 -= *(v7 + 8);
    }

    else
    {
      if (v10)
      {
        v12 = *(this + 4);
        *(*(this + 3) + 4 * v9) = v11;
        *(v12 + 8 * v9++) = v10;
      }

      v11 = *v7;
      v10 = *(v7 + 8);
    }

    v7 += 16;
  }

  while (v7 != v8);
  if (v10)
  {
    v13 = *(this + 4);
    *(*(this + 3) + 4 * v9) = v11;
    *(v13 + 8 * v9++) = v10;
  }

  return operations_research::sat::LinearConstraint::resize(this, v9);
}

void operations_research::sat::LinearConstraintBuilder::BuildExpression(operations_research::sat::LinearConstraintBuilder *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  operations_research::sat::CleanTermsAndFillConstraint(this + 4, a2);
  *(a2 + 48) = *(this + 3);
}

void operations_research::sat::CleanTermsAndFillConstraint(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz((v5 - v4) >> 4);
  a2[1] = *a2;
  a2[4] = a2[3];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v4, v5, &v14, v7, 1);
  v8 = -1;
  v13 = -1;
  v12 = 0;
  v10 = *a1;
  v9 = a1[1];
  if (v10 != v9)
  {
    v11 = 0;
    do
    {
      if (v8 == *v10)
      {
        v11 += *(v10 + 8);
      }

      else if ((*v10 ^ v8) == 1)
      {
        v11 -= *(v10 + 8);
      }

      else
      {
        if (v11)
        {
          std::vector<int>::push_back[abi:ne200100](a2, &v13);
          std::vector<long long>::push_back[abi:ne200100]((a2 + 3), &v12);
        }

        v8 = *v10;
        v13 = *v10;
        v11 = *(v10 + 8);
      }

      v12 = v11;
      v10 += 16;
    }

    while (v10 != v9);
    if (v11)
    {
      std::vector<int>::push_back[abi:ne200100](a2, &v13);
      std::vector<long long>::push_back[abi:ne200100]((a2 + 3), &v12);
    }
  }
}

double operations_research::sat::ComputeActivity(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = (v2 - 3);
  if (v3 < 1)
  {
    v7 = 0;
    result = 0.0;
    if (v2 <= 0)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    v6 = *a2;
    v7 = v2 & 0xFFFFFFFC;
    v8 = (*(a1 + 32) + 16);
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v5++;
      _Q4 = v13;
      v15 = vshrq_n_s64(vshll_n_s32(*v13.i8, 0x20uLL), 0x1DuLL);
      __asm { SHLL2           V4.2D, V4.4S, #0x20 ; ' ' }

      v20 = vshrq_n_s64(_Q4, 0x1DuLL);
      v21 = *(v8 - 2);
      v22 = *(v8 - 1);
      v23 = *v8;
      v24 = v8[1];
      v8 += 4;
      v9 = v9 + v21 * *(v6 + v15.i64[0]);
      v10 = v10 + v22 * *(v6 + v15.i64[1]);
      v11 = v11 + v23 * *(v6 + v20.i64[0]);
      v12 = v12 + v24 * *(v6 + v20.i64[1]);
      v4 += 4;
    }

    while (v4 < v3);
    result = v12 + v11 + v10 + v9;
    if (v7 >= v2)
    {
      return result;
    }
  }

  v26 = v7;
  v28 = *(a1 + 24);
  v27 = *(a1 + 32);
  v29 = *(v27 + 8 * v7);
  v30 = *(v28 + 4 * v7);
  v31 = *a2;
  result = result + v29 * *(*a2 + 8 * v30);
  if ((v26 | 1) < v2)
  {
    result = result + *(v27 + 8 * (v26 | 1)) * *(v31 + 8 * *(v28 + 4 * (v26 | 1)));
    v32 = v26 | 2;
    if (v32 < v2)
    {
      return result + *(v27 + 8 * v32) * *(v31 + 8 * *(v28 + 4 * v32));
    }
  }

  return result;
}

double operations_research::sat::ComputeL2Norm(operations_research::sat *this, const operations_research::sat::LinearConstraint *a2)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    return sqrt(0.0);
  }

  v3 = *(this + 4);
  if (v2 <= 3)
  {
    v4 = 0;
    v5 = 0.0;
    goto LABEL_8;
  }

  v4 = v2 & 0x7FFFFFFC;
  v7 = v3 + 1;
  v5 = 0.0;
  v8 = vdupq_n_s64(0x7FFFFFFFFFFFFFFDuLL);
  v9 = vdupq_n_s64(0x8000000000000003);
  v10 = vdupq_n_s64(0xFFF0000000000000);
  v11 = vdupq_n_s64(0x7FF0000000000000uLL);
  v12 = v4;
  do
  {
    v13 = vbslq_s8(vcgtq_s64(v7[-1], v8), v11, vbslq_s8(vcgtq_s64(v9, v7[-1]), v10, vcvtq_f64_s64(v7[-1])));
    v14 = vbslq_s8(vcgtq_s64(*v7, v8), v11, vbslq_s8(vcgtq_s64(v9, *v7), v10, vcvtq_f64_s64(*v7)));
    v15 = vmulq_f64(v13, v13);
    v16 = vmulq_f64(v14, v14);
    v5 = v5 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
    v7 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v4 != v2)
  {
LABEL_8:
    v17 = v2 - v4;
    v18 = &v3->i64[v4];
    do
    {
      v20 = *v18++;
      v19 = v20;
      v21 = v20;
      if (v20 < 0x8000000000000003)
      {
        v21 = -INFINITY;
      }

      if (v19 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v21 = INFINITY;
      }

      v5 = v5 + v21 * v21;
      --v17;
    }

    while (v17);
  }

  return sqrt(v5);
}

uint64_t operations_research::sat::ComputeInfinityNorm(operations_research::sat *this, const operations_research::sat::LinearConstraint *a2)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (v2 > 3)
  {
    v4 = v2 & 0x7FFFFFFC;
    v6 = v3 + 1;
    v7 = 0uLL;
    v8 = v4;
    v9 = 0uLL;
    do
    {
      v10 = vabsq_s64(v6[-1]);
      v11 = vabsq_s64(*v6);
      v7 = vbslq_s8(vcgtq_s64(v7, v10), v7, v10);
      v9 = vbslq_s8(vcgtq_s64(v9, v11), v9, v11);
      v6 += 2;
      v8 -= 4;
    }

    while (v8);
    v12 = vbslq_s8(vcgtq_s64(v7, v9), v7, v9);
    v13 = vextq_s8(v12, v12, 8uLL).u64[0];
    result = vbsl_s8(vcgtd_s64(v12.i64[0], v13), *v12.i8, v13);
    if (v4 == v2)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  v14 = &v3->i64[v4];
  v15 = v2 - v4;
  do
  {
    v17 = *v14++;
    v16 = v17;
    if (v17 < 0)
    {
      v16 = -v16;
    }

    if (result <= v16)
    {
      result = v16;
    }

    --v15;
  }

  while (v15);
  return result;
}

uint64_t operations_research::sat::ScalarProduct(uint64_t this, const operations_research::sat::LinearConstraint *a2, const operations_research::sat::LinearConstraint *a3)
{
  v3 = *(this + 16);
  v4 = *(a2 + 4);
  v5 = 0.0;
  if (v3 >= 1 && v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(this + 24);
    v10 = *(this + 32);
    this = *(a2 + 3);
    v11 = *(a2 + 4);
    do
    {
      v12 = *(v9 + 4 * v7);
      v13 = *(this + 4 * v8);
      if (v12 == v13)
      {
        v14 = *(v10 + 8 * v7);
        v15 = v14;
        v16 = -INFINITY;
        if (v14 < 0x8000000000000003)
        {
          v15 = -INFINITY;
        }

        if (v14 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v15 = INFINITY;
        }

        v17 = *(v11 + 8 * v8);
        if (v17 >= 0x8000000000000003)
        {
          v16 = v17;
        }

        if (v17 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v16 = INFINITY;
        }

        v5 = v5 + v15 * v16;
        ++v7;
        ++v8;
        if (v7 >= v3)
        {
          return this;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          ++v7;
        }

        else
        {
          ++v8;
        }

        if (v7 >= v3)
        {
          return this;
        }
      }
    }

    while (v8 < v4);
  }

  return this;
}

uint64_t operations_research::sat::DivideByGCD(uint64_t this, operations_research::sat::LinearConstraint *a2)
{
  v2 = *(this + 16);
  if (!v2)
  {
    return this;
  }

  v3 = *(this + 32);
  if ((v2 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v4 = 0;
    v8 = *this;
    if (*this < 0x8000000000000003)
    {
LABEL_14:
      v9 = *(this + 8);
      if (v9 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_18:
      if (v8 / v4 * v4 >= v8)
      {
        v10 = v8 / v4;
      }

      else
      {
        v10 = v8 / v4 + 1;
      }

      *this = v10;
      v9 = *(this + 8);
      if (v9 <= 0x7FFFFFFFFFFFFFFDLL)
      {
LABEL_22:
        *(this + 8) = v9 / v4 - (v9 / v4 * v4 > v9);
        if (v2 < 1)
        {
          return this;
        }

        goto LABEL_23;
      }
    }

    if (v2 < 1)
    {
      return this;
    }

LABEL_23:
    if (v2 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v2 & 0x7FFFFFFE;
      v12 = (v3 + 8);
      v13 = v11;
      do
      {
        v14 = *v12 / v4;
        *(v12 - 1) /= v4;
        *v12 = v14;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v11 == v2)
      {
        return this;
      }
    }

    v15 = (v3 + 8 * v11);
    v16 = v2 - v11;
    do
    {
      *v15++ /= v4;
      --v16;
    }

    while (v16);
    return this;
  }

  v4 = 0;
  v5 = *(this + 32);
  while (1)
  {
    v6 = *v5;
    if (*v5)
    {
      if (v6 < 0)
      {
        v6 = -v6;
      }

      v7 = v4;
      do
      {
        v4 = v6;
        v6 = v7 % v6;
        v7 = v4;
      }

      while (v6);
      if (v4 == 1)
      {
        return this;
      }
    }

    if (++v5 == (v3 + 8 * v2))
    {
      if (v4 < 0)
      {
        return this;
      }

      v8 = *this;
      if (*this >= 0x8000000000000003)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }
}

uint64_t operations_research::sat::MakeAllVariablesPositive(uint64_t this, operations_research::sat::LinearConstraint *a2)
{
  v2 = *(this + 16);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(this + 24);
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5)
      {
        *(*(this + 32) + 8 * v3) = -*(*(this + 32) + 8 * v3);
        *(v4 + 4 * v3) = v5 & 0xFFFFFFFE;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  return this;
}

double operations_research::sat::LinearExpression::LpValue(int32x2_t **a1, uint64_t *a2)
{
  v2 = a1[6];
  result = v2;
  if (v2 < 0x8000000000000003)
  {
    result = -INFINITY;
  }

  if (v2 > 0x7FFFFFFFFFFFFFFDLL)
  {
    result = INFINITY;
  }

  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = v5 >> 2;
    v7 = a1[3];
    v8 = *a2;
    v9 = v6 - 1;
    if (v6 <= 1 || ((v10 = v9 > 0x7FFFFFFE, v11 = v9 >> 31, !v10) ? (v12 = v11 == 0) : (v12 = 0), !v12))
    {
      v13 = 0;
      v14 = 0;
LABEL_12:
      v15 = v14 + 1;
      do
      {
        v16 = v7[v13];
        v17 = v16;
        if (v16 < 0x8000000000000003)
        {
          v17 = -INFINITY;
        }

        if (v16 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v17 = INFINITY;
        }

        result = result + v17 * *(v8 + 8 * v4->i32[v13]);
        v13 = v15++;
      }

      while (v6 > v13);
      return result;
    }

    v13 = v6 & 0xFFFFFFFE;
    v14 = v6 & 0xFFFFFFFE;
    v18 = &v7[1];
    v19 = v13;
    v20 = *a1;
    do
    {
      v21 = *(v18 - 1);
      v22 = *v18;
      v23 = v21;
      v24 = *v18;
      if (v21 < 0x8000000000000003)
      {
        v23 = -INFINITY;
      }

      if (v22 < 0x8000000000000003)
      {
        v24 = -INFINITY;
      }

      if (v21 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v23 = INFINITY;
      }

      v25 = *v20++;
      v26 = vshrq_n_s64(vshll_n_s32(v25, 0x20uLL), 0x1DuLL);
      if (v22 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v24 = INFINITY;
      }

      result = result + v23 * *(v8 + v26.i64[0]) + v24 * *(v8 + v26.i64[1]);
      v18 += 2;
      v19 -= 2;
    }

    while (v19);
    if (v6 != v13)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t operations_research::sat::LinearExpression::Min(operations_research::sat::LinearExpression *this, const operations_research::sat::IntegerTrail *a2)
{
  result = *(this + 6);
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 2;
    v8 = *(this + 3);
    v9 = *(a2 + 5);
    v10 = 1;
    do
    {
      while (1)
      {
        v11 = *(v8 + 8 * v6);
        v12 = 8 * *(v4 + 4 * v6);
        if (v11 >= 1)
        {
          break;
        }

        result -= *(v9 + (v12 ^ 8)) * v11;
        v6 = v10++;
        if (v7 <= v6)
        {
          return result;
        }
      }

      result += *(v9 + v12) * v11;
      v6 = v10++;
    }

    while (v7 > v6);
  }

  return result;
}

uint64_t operations_research::sat::LinearExpression::Max(operations_research::sat::LinearExpression *this, const operations_research::sat::IntegerTrail *a2)
{
  result = *(this + 6);
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 2;
    v8 = *(this + 3);
    v9 = *(a2 + 5);
    v10 = 1;
    do
    {
      while (1)
      {
        v11 = *(v8 + 8 * v6);
        v12 = 8 * *(v4 + 4 * v6);
        if (v11 >= 1)
        {
          break;
        }

        result += *(v9 + v12) * v11;
        v6 = v10++;
        if (v7 <= v6)
        {
          return result;
        }
      }

      result -= *(v9 + (v12 ^ 8)) * v11;
      v6 = v10++;
    }

    while (v7 > v6);
  }

  return result;
}

void operations_research::sat::CanonicalizeExpr(operations_research::sat *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 48) = *(this + 6);
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      if ((*(*(this + 3) + 8 * v6) & 0x8000000000000000) != 0)
      {
        v9 = *(v4 + 4 * v6) ^ 1;
        std::vector<int>::push_back[abi:ne200100](a2, &v9);
        v8 = -*(*(this + 3) + 8 * v6);
        std::vector<long long>::push_back[abi:ne200100](a2 + 24, &v8);
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](a2, (v4 + 4 * v6));
        std::vector<long long>::push_back[abi:ne200100](a2 + 24, (*(this + 3) + 8 * v6));
      }

      v6 = v7;
      v4 = *this;
      ++v7;
    }

    while (v6 < (*(this + 1) - *this) >> 2);
  }
}

BOOL operations_research::sat::ValidateLinearConstraintForOverflow(operations_research::sat *this, const operations_research::sat::LinearConstraint *a2, const operations_research::sat::IntegerTrail *a3)
{
  v3 = *(this + 4);
  if (v3 < 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = *(a2 + 19);
    do
    {
      v10 = *v6++;
      v9 = v10;
      v12 = *v7++;
      v11 = v12;
      v13 = *(v8 + 24 * v9);
      v14 = *(v8 + 24 * (v9 ^ 1));
      v15 = -v14;
      v16 = ((v13 ^ v12) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v17 = v12 * v13;
      if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v19 = -(v14 * v11);
      if ((v11 * v15) >> 64 != v19 >> 63)
      {
        v19 = ((v11 ^ v15) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (v18 < v19)
      {
        v19 = v18;
      }

      v21 = v20 & ~(v20 >> 63);
      v22 = (v4 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v23 = __OFADD__(v4, v21);
      v4 += v21;
      if (v23)
      {
        v4 = v22;
      }

      v24 = v19 & (v19 >> 63);
      v25 = (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v23 = __OFADD__(v5, v24);
      v5 += v24;
      if (v23)
      {
        v5 = v25;
      }

      --v3;
    }

    while (v3);
  }

  v26 = (v4 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (!__OFSUB__(v4, v5))
  {
    v26 = v4 - v5;
  }

  v27 = v26 != 0x7FFFFFFFFFFFFFFFLL;
  v28 = v5 >= 0x8000000000000002 && v27;
  return v4 != 0x7FFFFFFFFFFFFFFFLL && v28;
}

void *operations_research::sat::NegationOf@<X0>(operations_research::sat *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = operations_research::sat::NegationOf(this, &v7);
  v6 = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  if (a2 != this)
  {
    result = std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a2 + 24), *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 3);
  }

  *(a2 + 48) = -*(this + 6);
  return result;
}

void operations_research::sat::PositiveVarExpr(operations_research::sat *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 48) = *(this + 6);
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = (v4 + 4 * v6);
      if (*v8)
      {
        v10 = *v8 & 0xFFFFFFFE;
        std::vector<int>::push_back[abi:ne200100](a2, &v10);
        v9 = -*(*(this + 3) + 8 * v6);
        std::vector<long long>::push_back[abi:ne200100](a2 + 24, &v9);
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](a2, v8);
        std::vector<long long>::push_back[abi:ne200100](a2 + 24, (*(this + 3) + 8 * v6));
      }

      v6 = v7;
      v4 = *this;
      ++v7;
    }

    while (v6 < (*(this + 1) - *this) >> 2);
  }
}

uint64_t operations_research::sat::GetCoefficientOfPositiveVar(int a1, void *a2)
{
  if (a1)
  {
    operations_research::sat::GetCoefficientOfPositiveVar(&v8);
  }

  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 == *a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = v3 >> 2;
  v6 = 1;
  while (*(*a2 + 4 * v4) != a1)
  {
    v4 = v6++;
    if (v5 <= v4)
    {
      return 0;
    }
  }

  return *(a2[3] + 8 * v4);
}

BOOL operations_research::sat::PossibleOverflow(operations_research::sat *this, const operations_research::sat::IntegerTrail *a2, const operations_research::sat::LinearConstraint *a3)
{
  v3 = *(a2 + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    v8 = *(this + 19);
    while (1)
    {
      v10 = *v6++;
      v9 = v10;
      v12 = *v7++;
      v11 = v12;
      v23 = v12;
      if (!v12)
      {
        operations_research::sat::PossibleOverflow(&v23);
      }

      v13 = *(v8 + 24 * v9);
      v14 = -*(v8 + 24 * (v9 ^ 1));
      if (v11 <= 0)
      {
        if ((v14 * v11) >> 64 == (v14 * v11) >> 63)
        {
          v18 = v14 * v11;
        }

        else
        {
          v18 = ((v11 ^ v14) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v18 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          return 1;
        }

        v16 = __OFADD__(v18, v4);
        v4 += v18;
        if (v16)
        {
          v4 = (v18 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v4 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
        {
          return 1;
        }

        v19 = (v13 * v11) >> 64 == (v13 * v11) >> 63 ? v13 * v11 : ((v11 ^ v13) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if (v19 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          return 1;
        }

        v16 = __OFADD__(v19, v5);
        v5 += v19;
        if (v16)
        {
          v5 = (v19 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v5 + 0x7FFFFFFFFFFFFFFFLL > 0xFFFFFFFFFFFFFFFDLL)
        {
          return 1;
        }
      }

      else
      {
        if ((v13 * v11) >> 64 == (v13 * v11) >> 63)
        {
          v15 = v13 * v11;
        }

        else
        {
          v15 = (v13 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v15 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          return 1;
        }

        v16 = __OFADD__(v15, v4);
        v4 += v15;
        if (v16)
        {
          v4 = (v15 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if ((v4 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
        {
          return 1;
        }

        v17 = (v14 * v11) >> 64 == (v14 * v11) >> 63 ? v14 * v11 : (v14 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if (v17 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          return 1;
        }

        v16 = __OFADD__(v17, v5);
        v5 += v17;
        if (v16)
        {
          v5 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v5 + 0x7FFFFFFFFFFFFFFFLL >= 0xFFFFFFFFFFFFFFFELL)
        {
          return 1;
        }
      }

      if (!--v3)
      {
        goto LABEL_37;
      }
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_37:
  v21 = (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v16 = __OFSUB__(v5, v4);
  v22 = v5 - v4;
  if (!v16)
  {
    v21 = v22;
  }

  return (v21 - 0x7FFFFFFFFFFFFFFFLL) < 2;
}

void operations_research::sat::LinearConstraintManager::~LinearConstraintManager(operations_research::sat::LinearConstraintManager *this)
{
  v48[2] = *MEMORY[0x277D85DE8];
  if (dword_2810BD4B8 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LinearConstraintManager::~LinearConstraintManager()::$_0::operator() const(void)::site, dword_2810BD4B8))
  {
    goto LABEL_2;
  }

  v9 = *(this + 35);
  v10 = v9[3];
  if (v10 > 1)
  {
    v11 = 0;
    _X12 = v9[5];
    __asm { PRFM            #4, [X12] }

    v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X12 >> 12)) & v10;
    v21 = *(_X12 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_30;
    }

LABEL_27:
    v23 = v9[6];
    do
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v10;
      if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        v11 = v23 + 16 * v24;
        v12 = (_X12 + v24);
        goto LABEL_35;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v22);
LABEL_30:
    while (!*&vceq_s8(v21, 0x8080808080808080))
    {
      v11 += 8;
      v20 = (v11 + v20) & v10;
      v21 = *(_X12 + v20);
      v22 = vceq_s8(v21, v19);
      if (v22)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_33;
  }

  v11 = v9[4];
  if (v11 < 2 || (v11 = (v9 + 5), v9[5] != &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d))
  {
LABEL_33:
    v12 = 0;
    goto LABEL_35;
  }

  v12 = &absl::lts_20240722::container_internal::kSooControl;
LABEL_35:
  if (!v12 || !*(v11 + 8))
  {
    goto LABEL_2;
  }

  v25 = *(this + 23);
  v26 = **(this + 22);
  v44 = *(v25 + 10);
  if (v26 != v25 || *(v25 + 10) != 0)
  {
    v47[0] = "cut/";
    v47[1] = 4;
    v28 = *(v26 + 16);
    v29 = *(v26 + 39);
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v26 + 24);
    }

    else
    {
      v28 = v26 + 16;
    }

    v46[0] = v28;
    v46[1] = v29;
    absl::lts_20240722::StrCat(v47, v46, &__p);
    v48[0] = __p.__r_.__value_.__l.__size_;
    *(v48 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    memset(&__p, 0, sizeof(__p));
    v30 = *(v26 + 40);
    operator new();
  }

  if (v10 > 1)
  {
    v32 = 0;
    _X12 = v9[5];
    __asm { PRFM            #4, [X12] }

    v35 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v36 = vdup_n_s8(v35 & 0x7F);
    v37 = ((v35 >> 7) ^ (_X12 >> 12)) & v10;
    v38 = *(_X12 + v37);
    v39 = vceq_s8(v38, v36);
    if (!v39)
    {
      goto LABEL_52;
    }

LABEL_49:
    v40 = v9[6];
    do
    {
      v41 = (v37 + (__clz(__rbit64(v39)) >> 3)) & v10;
      if (*(v40 + 16 * v41) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        v9 = (v40 + 16 * v41);
        v31 = (_X12 + v41);
        goto LABEL_58;
      }

      v39 &= ((v39 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v39);
LABEL_52:
    while (!*&vceq_s8(v38, 0x8080808080808080))
    {
      v32 += 8;
      v37 = (v32 + v37) & v10;
      v38 = *(_X12 + v37);
      v39 = vceq_s8(v38, v36);
      if (v39)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v9[4] >= 2uLL)
  {
    v42 = v9[5];
    v9 += 5;
    v31 = &absl::lts_20240722::container_internal::kSooControl;
    if (v42 != &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
    {
      v31 = 0;
    }

    goto LABEL_58;
  }

  v31 = 0;
LABEL_58:
  if (v31)
  {
    v43 = v9[1];
  }

  else
  {
    v43 = 0;
  }

  operations_research::sat::SharedStatistics::AddStats(v43, 0, 0);
LABEL_2:
  if (*(this + 29) >= 2uLL)
  {
    operator delete((*(this + 31) - (*(this + 30) & 1) - 8));
  }

  if (*(this + 24))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(this + 22));
  }

  *(this + 22) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 23) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 24) = 0;
  if (*(this + 10) >= 2uLL)
  {
    operator delete((*(this + 12) - (*(this + 11) & 1) - 8));
  }

  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 5);
    v5 = *(this + 4);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 48);
        *(v4 - 48) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8000313F17);
        }

        v7 = *(v4 - 56);
        *(v4 - 56) = 0;
        if (v7)
        {
          MEMORY[0x23EED9440](v7, 0x1000C8052888210);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = *(this + 4);
    }

    *(this + 5) = v3;
    operator delete(v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23CC33490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::LinearConstraintManager::RescaleActiveCounts(operations_research::sat::LinearConstraintManager *this, double a2)
{
  v2 = *(this + 4);
  v3 = -858993459 * ((*(this + 5) - v2) >> 4);
  if (v3 >= 1)
  {
    v4 = v3 & 0x7FFFFFFF;
    if (v4 < 2 || v2 + 64 + 80 * (v3 & 0x7FFFFFFF) - 80 < v2 + 64)
    {
      v6 = 0;
LABEL_10:
      v11 = (v2 + 80 * v6 + 64);
      v12 = v4 - v6;
      do
      {
        *v11 = *v11 * a2;
        v11 += 10;
        --v12;
      }

      while (v12);
      goto LABEL_12;
    }

    v7 = v3 & 1;
    v6 = v4 - v7;
    v8 = (v2 + 144);
    v9 = v4 - v7;
    do
    {
      v10 = *v8 * a2;
      *(v8 - 10) = *(v8 - 10) * a2;
      *v8 = v10;
      v8 += 20;
      v9 -= 2;
    }

    while (v9);
    if (v7)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  *(this + 37) = *(this + 37) * a2;
  if (dword_2810BD4E8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::LinearConstraintManager::RescaleActiveCounts(double)::$_0::operator() const(void)::site, dword_2810BD4E8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 84);
    v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v15, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Rescaled active counts by ", 0x1AuLL);
    v16 = a2;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v14, &v16);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v15);
  }
}

void sub_23CC33608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinearConstraintManager::MaybeRemoveSomeInactiveConstraints(uint64_t a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64) - v6;
  v8 = v7 >> 2;
  v9 = (v3 - v4);
  v10 = v3 - v4 - (v7 >> 2);
  if ((v7 >> 2) < 1)
  {
    v11 = 0;
    v21 = 0;
    v22 = v8 == 0;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = (v7 >> 2) & 0x7FFFFFFF;
  v13 = *(a1 + 32);
  v14 = v3 - v8 - v4;
  v15 = *(a1 + 56);
  do
  {
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      v18 = v4[v14];
      v19 = v13 + 80 * v17;
      if (v18)
      {
        *(v19 + 72) = 0;
        break;
      }

      v20 = *(v19 + 72) + 1;
      *(v19 + 72) = v20;
      if (*(*a1 + 604) >= v20)
      {
        break;
      }

      *(v19 + 75) = 0;
      ++v14;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    *(v6 + 4 * v11) = v16;
    v4[v11 + v10] = v18;
    ++v11;
    ++v14;
    --v12;
  }

  while (v12);
LABEL_9:
  v21 = v11;
  v22 = v11 >= v8;
  if (v11 > v8)
  {
    std::vector<int>::__append((a1 + 56), v11 - v8);
    v4 = *a2;
    v3 = a2[1];
    v9 = &v3[-*a2];
    goto LABEL_14;
  }

LABEL_12:
  if (!v22)
  {
    *(a1 + 64) = v6 + 4 * v21;
  }

LABEL_14:
  v23 = v21 + v10;
  v24 = v23 - v9;
  if (v23 <= v9)
  {
    if (v23 < v9)
    {
      a2[1] = &v4[v23];
    }

    v26 = v8 - v11;
    if (v8 - v11 > 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  else
  {
    v25 = a2[2];
    if (v25 - v3 < v24)
    {
      if ((v23 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v28 = &v3[v24];
    bzero(v3, v23 - v9);
    a2[1] = v28;
    v26 = v8 - v11;
    if (v8 - v11 <= 0)
    {
      return 0;
    }

LABEL_21:
    if (dword_2810BD4D0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::LinearConstraintManager::MaybeRemoveSomeInactiveConstraints(operations_research::glop::BasisState *)::$_0::operator() const(void)::site, dword_2810BD4D0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 125);
      v29 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v31, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "Removed ", 8uLL);
      v32 = v26;
      v30 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v29, &v32);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, " constraints", 0xCuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v31);
    }

    return 1;
  }
}

void sub_23CC338D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinearConstraintManager::Add(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  operations_research::sat::LinearConstraintManager::SimplifyConstraint(a1, a2);
  operations_research::sat::DivideByGCD(a2, v6);
  operations_research::sat::MakeAllVariablesPositive(a2, v7);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 4 * v9 - 4;
    v11 = *(a2 + 24);
    while (v10)
    {
      v12 = v11 + 1;
      v14 = *v11;
      v13 = v11[1];
      v10 -= 4;
      ++v11;
      if (v13 < v14)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v12 = *(a2 + 24);
LABEL_7:
    if (v12 != (*(a2 + 24) + 4 * v9))
    {
      operations_research::sat::LinearConstraintManager::Add(&v50);
    }
  }

  v55 = v15;
  v17 = *(a1 + 80);
  if (v17 > 1)
  {
    v32 = 0;
    _X10 = *(a1 + 96);
    __asm { PRFM            #4, [X10] }

    v39 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15));
    v40 = vdup_n_s8(v39 & 0x7F);
    v41 = ((v39 >> 7) ^ (_X10 >> 12)) & v17;
    v42 = *(_X10 + v41);
    v43 = vceq_s8(v42, v40);
    if (!v43)
    {
      goto LABEL_26;
    }

LABEL_24:
    while (*(*(a1 + 104) + 16 * ((v41 + (__clz(__rbit64(v43)) >> 3)) & v17)) != v15)
    {
      v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v43)
      {
LABEL_26:
        while (!*&vceq_s8(v42, 0x8080808080808080))
        {
          v32 += 8;
          v41 = (v32 + v41) & v17;
          v42 = *(_X10 + v41);
          v43 = vceq_s8(v42, v40);
          if (v43)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_17;
      }
    }
  }

  else if (*(a1 + 88) < 2uLL || *(a1 + 96) != v15)
  {
LABEL_17:
    if (a3)
    {
      *a3 = 1;
    }

    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v53 = 0uLL;
    *&v54[8] = 0;
    *&v54[15] = 0;
    v50 = *a2;
    v51 = *(a2 + 16);
    v24 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v52 = v24;
    *&v53 = operations_research::sat::ComputeL2Norm(&v50, v16);
    operations_research::sat::LinearConstraintManager::FillDerivedFields(a1, &v50);
    *v54 = v55;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::find_or_prepare_insert<unsigned long>((a1 + 80), &v55, v56);
    v19 = -858993459 * ((v23 - v22) >> 4);
    if (v58 == 1)
    {
      v25 = v57;
      *v57 = v55;
      *(v25 + 8) = 0;
    }

    *(v57 + 8) = v19;
    *&v54[8] = *(a1 + 296);
    v26 = *(a1 + 40);
    if (v26 >= *(a1 + 48))
    {
      v31 = std::vector<operations_research::sat::LinearConstraintManager::ConstraintInfo>::__emplace_back_slow_path<operations_research::sat::LinearConstraintManager::ConstraintInfo>(a1 + 32, &v50);
    }

    else
    {
      v27 = v50;
      *(v26 + 16) = v51;
      *v26 = v27;
      v28 = v52;
      v52 = 0uLL;
      *(v26 + 24) = v28;
      v29 = v53;
      v30 = *v54;
      *(v26 + 71) = *&v54[15];
      *(v26 + 56) = v30;
      *(v26 + 40) = v29;
      v31 = v26 + 80;
    }

    *(a1 + 40) = v31;
    v44 = *(&v52 + 1);
    *(&v52 + 1) = 0;
    if (v44)
    {
      MEMORY[0x23EED9440](v44, 0x1000C8000313F17);
    }

    v45 = v52;
    *&v52 = 0;
    if (v45)
    {
      MEMORY[0x23EED9440](v45, 0x1000C8052888210);
    }

    return v19;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::find_or_prepare_insert<unsigned long>((a1 + 80), &v55, &v50);
  if (v51 == 1)
  {
    v18 = *(&v50 + 1);
    **(&v50 + 1) = v55;
    *(v18 + 8) = 0;
  }

  v19 = *(*(&v50 + 1) + 8);
  v20 = *(a1 + 32) + 80 * v19;
  v21 = *(v20 + 16);
  if (v21 != *(a2 + 16) || v21 && (memcmp(*(v20 + 24), *(a2 + 24), 4 * v21) || memcmp(*(v20 + 32), *(a2 + 32), 8 * v21)))
  {
    goto LABEL_17;
  }

  v47 = *a2;
  v48 = *a2 > *v20;
  if (*a2 > *v20)
  {
    if (*(v20 + 75) == 1)
    {
      *(a1 + 16) = 1;
    }

    *v20 = v47;
    v49 = *(a2 + 8);
    if (v49 >= *(v20 + 8))
    {
LABEL_37:
      if (!a3)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v49 = *(a2 + 8);
    if (v49 >= *(v20 + 8))
    {
      goto LABEL_37;
    }
  }

  if (*(v20 + 75) == 1)
  {
    *(a1 + 16) = 1;
  }

  *(v20 + 8) = v49;
  v48 = 1;
  if (!a3)
  {
    goto LABEL_39;
  }

LABEL_38:
  *a3 = v48;
LABEL_39:
  if (v48)
  {
    ++*(a1 + 128);
    operations_research::sat::LinearConstraintManager::FillDerivedFields(a1, v20);
  }

  return v19;
}

uint64_t operations_research::sat::LinearConstraintManager::SimplifyConstraint(operations_research::sat::LinearConstraintManager *this, operations_research::sat::LinearConstraint *a2)
{
  v3 = *(a2 + 4);
  if (v3 < 1)
  {
    v34 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v11 = 0x7FFFFFFFFFFFFFFELL;
    v36 = *a2;
    v35 = *(a2 + 1);
    if (*a2 <= 0 && v35 >= 0)
    {
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(*(this + 1) + 152);
  v11 = 0x7FFFFFFFFFFFFFFELL;
  v12 = *(a2 + 4);
  do
  {
    v14 = *v8++;
    v13 = v14;
    v16 = *v9++;
    v15 = v16;
    v17 = *(v10 + 24 * v13);
    v18 = *(v10 + 24 * (v13 ^ 1));
    if (v17 + v18)
    {
      v19 = -v18;
      ++v4;
      if (v15 >= 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = -v15;
      }

      if (v7 <= v20)
      {
        v7 = v20;
      }

      if (v20 < v11)
      {
        v11 = v20;
      }

      if (v15 < 1)
      {
        v5 += v15 * v19;
        v6 += v17 * v15;
      }

      else
      {
        v5 += v17 * v15;
        v6 += v15 * v19;
      }
    }

    --v12;
  }

  while (v12);
  if (v4 >= v3)
  {
    v34 = 0;
    v36 = *a2;
    v35 = *(a2 + 1);
    if (v5 >= *a2 && v6 <= v35)
    {
      goto LABEL_35;
    }

LABEL_42:
    if (v36 <= v5)
    {
      v41 = v5;
    }

    else
    {
      v41 = v36;
    }

    if (v6 < v35)
    {
      v35 = v6;
    }

    *a2 = v41;
    *(a2 + 1) = v35;
    v42 = v6 - v35;
    v43 = v41 - v5;
    if (v43 <= v6 - v35)
    {
      v44 = v6 - v35;
    }

    else
    {
      v44 = v43;
    }

    v69 = v44;
    if (v44 < 1)
    {
      operations_research::sat::LinearConstraintManager::SimplifyConstraint(&v69);
    }

    if (v42 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v42;
    }

    if (v43 != v42 && v43 >= 1 && v42 >= 1 && v7 > v45)
    {
      ++*(this + 18);
    }

    if (v42 >= v43)
    {
      v42 = v43;
    }

    if (((v44 & 1) + (v44 >> 1)) <= v44 - v11)
    {
      v49 = v44 - v11;
    }

    else
    {
      v49 = (v44 & 1) + (v44 >> 1);
    }

    if (v49 > v42)
    {
      v42 = v49;
    }

    if (v7 <= v42)
    {
      return v34 & 1;
    }

    v50 = *(a2 + 4);
    if (v50 < 1)
    {
      return v34 & 1;
    }

    v52 = *(a2 + 3);
    v51 = *(a2 + 4);
    v53 = *(*(this + 1) + 152);
    v54 = -v42;
    v55 = -v44;
    while (1)
    {
      v56 = *v52++;
      v57 = *(v53 + 24 * v56);
      v58 = *v51;
      v59 = *(v53 + 24 * (v56 ^ 1));
      v60 = *v51 - v44;
      if (*v51 <= v44)
      {
        v63 = v58 - v42;
        if (v58 > v42 && v58 < v44)
        {
          ++*(this + 19);
          *v51 = v42;
          v66 = *a2;
          *(a2 + 1) += v59 * v63;
          v62 = v66 - v57 * v63;
        }

        else if (v58 >= v55)
        {
          if (v58 >= v54 || v58 <= v55)
          {
            goto LABEL_85;
          }

          ++*(this + 19);
          *v51 = v54;
          v67 = *a2;
          *(a2 + 1) -= v57 * (v58 + v42);
          v62 = v67 + v59 * (v58 + v42);
        }

        else
        {
          ++*(this + 19);
          *v51 = v55;
          v65 = *a2;
          *(a2 + 1) -= (v44 + v58) * v57;
          v62 = v65 + (v44 + v58) * v59;
        }
      }

      else
      {
        ++*(this + 19);
        *v51 = v44;
        v61 = *a2;
        *(a2 + 1) += v60 * v59;
        v62 = v61 - v60 * v57;
      }

      *a2 = v62;
      v34 = 1;
LABEL_85:
      ++v51;
      if (!--v50)
      {
        return v34 & 1;
      }
    }
  }

  v21 = 0;
  ++*(this + 17);
  v22 = *(a2 + 3);
  v23 = *(a2 + 4);
  v24 = *(*(this + 1) + 152);
  v25 = v22;
  v26 = v23;
  do
  {
    v28 = *v25++;
    v27 = v28;
    v30 = *v26++;
    v29 = v30;
    v31 = *(v24 + 24 * v27);
    if (v31 + *(v24 + 24 * (v27 ^ 1)))
    {
      v22[v21] = v27;
      v23[v21++] = v29;
      goto LABEL_17;
    }

    v32 = v31 * v29;
    if (*a2 >= 0x8000000000000003)
    {
      *a2 -= v32;
      v33 = *(a2 + 1);
      if (v33 > 0x7FFFFFFFFFFFFFFDLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v33 = *(a2 + 1);
      if (v33 > 0x7FFFFFFFFFFFFFFDLL)
      {
        goto LABEL_17;
      }
    }

    *(a2 + 1) = v33 - v32;
LABEL_17:
    --v3;
  }

  while (v3);
  v39 = this;
  operations_research::sat::LinearConstraint::resize(a2, v21);
  this = v39;
  v34 = 1;
  v36 = *a2;
  v35 = *(a2 + 1);
  if (v5 < *a2 || v6 > v35)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (*(a2 + 4))
  {
    operator new[]();
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v34 = 1;
  return v34 & 1;
}

unint64_t operations_research::sat::anonymous namespace::ComputeHashOfTerms(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::LinearConstraint *a2)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v7 = *(this + 3);
  v6 = *(this + 4);
  do
  {
    v8 = *v7++;
    v9 = (v4 + 0x1F73E299748A907ELL + v8) ^ (result >> 43);
    v10 = (v4 - 0x1F73E299748A907ELL - v9) ^ (v9 << 9);
    v11 = (result - (v9 + v10)) ^ (v10 >> 8);
    v12 = (v9 - (v10 + v11)) ^ (v11 >> 38);
    v13 = (v10 - (v11 + v12)) ^ (v12 << 23);
    v14 = (v11 - (v12 + v13)) ^ (v13 >> 5);
    v15 = (v12 - (v13 + v14)) ^ (v14 >> 35);
    v16 = (v13 - (v14 + v15)) ^ (v15 << 49);
    v17 = (v14 - (v15 + v16)) ^ (v16 >> 11);
    v18 = (v15 - (v16 + v17)) ^ (v17 >> 12);
    v19 = (v16 - (v17 + v18)) ^ (v18 << 18);
    v20 = v17 - (v18 + v19);
    v21 = v20 ^ (v19 >> 22);
    v22 = *v6++;
    v23 = (v22 + 0x1F73E299748A907ELL - v21) ^ (v20 >> 43);
    v24 = (0xE08C1D668B756F82 - (v21 + v23)) ^ (v23 << 9);
    v25 = (v21 - (v23 + v24)) ^ (v24 >> 8);
    v26 = (v23 - (v24 + v25)) ^ (v25 >> 38);
    v27 = (v24 - (v25 + v26)) ^ (v26 << 23);
    v28 = (v25 - (v26 + v27)) ^ (v27 >> 5);
    v29 = (v26 - (v27 + v28)) ^ (v28 >> 35);
    v30 = (v27 - (v28 + v29)) ^ (v29 << 49);
    v31 = (v28 - (v29 + v30)) ^ (v30 >> 11);
    v32 = (v29 - (v30 + v31)) ^ (v31 >> 12);
    result = (v31 - (v32 + ((v30 - (v31 + v32)) ^ (v32 << 18)))) ^ (((v30 - (v31 + v32)) ^ (v32 << 18)) >> 22);
    v4 = -result;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t *operations_research::sat::LinearConstraintManager::FillDerivedFields(uint64_t *result, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (v2 < 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_28;
  }

  v3 = a2[3];
  v4 = a2[4];
  v5 = *(result[1] + 152);
  if (v2 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_20:
    v26 = (v4 + 8 * v6);
    v27 = v2 - v6;
    v28 = (v3 + 4 * v6);
    do
    {
      v30 = *v28++;
      v29 = v30;
      v32 = *v26++;
      v31 = v32;
      v33 = *(v5 + 24 * v29);
      v34 = *(v5 + 24 * (v29 ^ 1));
      v35 = v32 <= 0;
      if (v32 > 0)
      {
        result = -v34;
      }

      else
      {
        result = v33;
      }

      if (v35)
      {
        v36 = -v34;
      }

      else
      {
        v36 = v33;
      }

      v7 += v36 * v31;
      v8 += v31 * result;
      --v27;
    }

    while (v27);
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = v2 & 0x7FFFFFFE;
  v13 = (v3 + 4);
  result = (v4 + 8);
  v14 = v6;
  do
  {
    v15 = *(v13 - 1);
    v16 = *(result - 1);
    v17 = *result;
    v18 = *(v5 + 24 * v15);
    v19 = *(v5 + 24 * *v13);
    v20 = *(v5 + 24 * (v15 ^ 1));
    v21 = *(v5 + 24 * (*v13 ^ 1));
    if (v16 > 0)
    {
      v22 = -v20;
    }

    else
    {
      v22 = v18;
    }

    if (v16 <= 0)
    {
      v23 = -v20;
    }

    else
    {
      v23 = v18;
    }

    if (v17 > 0)
    {
      v24 = -v21;
    }

    else
    {
      v24 = *(v5 + 24 * *v13);
    }

    if (v17 <= 0)
    {
      v25 = -v21;
    }

    else
    {
      v25 = *(v5 + 24 * *v13);
    }

    v9 += v23 * v16;
    v10 += v25 * v17;
    v11 += v16 * v22;
    v12 += v17 * v24;
    v13 += 2;
    result += 2;
    v14 -= 2;
  }

  while (v14);
  v7 = v10 + v9;
  v8 = v12 + v11;
  if (v6 != v2)
  {
    goto LABEL_20;
  }

LABEL_28:
  v37 = *a2;
  v38 = a2[1];
  if (v7 <= *a2)
  {
    v39 = *a2;
  }

  else
  {
    v39 = v7;
  }

  if (v38 >= v8)
  {
    v40 = v8;
  }

  else
  {
    v40 = a2[1];
  }

  *a2 = v39;
  a2[1] = v40;
  v41 = __OFSUB__(v40, v39);
  v42 = v40 - v39;
  if (v41)
  {
    v42 = (v40 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v42 == 0x7FFFFFFFFFFFFFFFLL)
  {
    operations_research::sat::LinearConstraintManager::FillDerivedFields();
  }

  *(a2 + 77) = v37 <= v7;
  *(a2 + 76) = v38 >= v8;
  return result;
}

BOOL operations_research::sat::LinearConstraintManager::UpdateConstraintLb(uint64_t a1, int a2, uint64_t a3)
{
  v3 = (*(a1 + 32) + 80 * *(*(a1 + 56) + 4 * a2));
  v4 = *v3;
  if (*v3 < a3)
  {
    ++*(a1 + 112);
    *(a1 + 16) = 1;
    *v3 = a3;
  }

  return v4 < a3;
}

BOOL operations_research::sat::LinearConstraintManager::UpdateConstraintUb(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32) + 80 * *(*(a1 + 56) + 4 * a2);
  v6 = *(v3 + 8);
  v4 = (v3 + 8);
  v5 = v6;
  if (v6 > a3)
  {
    ++*(a1 + 112);
    *(a1 + 16) = 1;
    *v4 = a3;
  }

  return v5 > a3;
}

double operations_research::sat::LinearConstraintManager::ComputeObjectiveParallelism(uint64_t a1, int a2)
{
  if ((*(a1 + 200) & 1) == 0)
  {
    operations_research::sat::LinearConstraintManager::ComputeObjectiveParallelism(&v31);
  }

  if (*(a1 + 201) == 1)
  {
    v2 = *(a1 + 208);
  }

  else
  {
    v2 = sqrt(*(a1 + 224));
    *(a1 + 208) = v2;
    *(a1 + 201) = 1;
  }

  if (v2 <= 0.0)
  {
    operations_research::sat::LinearConstraintManager::ComputeObjectiveParallelism(v2);
  }

  v3 = *(a1 + 32) + 80 * a2;
  *(v3 + 74) = 1;
  result = *(v3 + 40);
  v5 = 0.0;
  if (result == 0.0)
  {
    *(v3 + 48) = 0;
  }

  else
  {
    v6 = *(v3 + 16);
    if (v6 >= 1)
    {
      v7 = *(v3 + 24);
      v8 = *(a1 + 232);
      if (v8 > 1)
      {
        v9 = 0;
        _X15 = *(a1 + 248);
        do
        {
          v16 = 0;
          v20 = *(v7 + 4 * v9);
          __asm { PRFM            #4, [X15] }

          v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
          v17 = (_X15 >> 12) ^ (v26 >> 7);
          v27 = vdup_n_s8(v26 & 0x7F);
          while (1)
          {
            v11 = v17 & v8;
            v12 = *(_X15 + v11);
            v13 = vceq_s8(v12, v27);
            if (v13)
            {
              break;
            }

LABEL_17:
            if (vceq_s8(v12, 0x8080808080808080))
            {
              goto LABEL_24;
            }

            v16 += 8;
            v17 = v16 + v11;
          }

          v14 = *(a1 + 256);
          while (1)
          {
            v15 = (v11 + (__clz(__rbit64(v13)) >> 3)) & v8;
            if (*(v14 + 16 * v15) == v20)
            {
              break;
            }

            v13 &= ((v13 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          v18 = *(*(v3 + 32) + 8 * v9);
          v19 = v18;
          if (v18 < 0x8000000000000003)
          {
            v19 = -INFINITY;
          }

          if (v18 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v19 = INFINITY;
          }

          v5 = v5 + *(v14 + 16 * v15 + 8) * v19;
LABEL_24:
          ++v9;
        }

        while (v9 != v6);
      }

      else if (*(a1 + 240) >= 2uLL)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*(a1 + 248) == *(v7 + 4 * i))
          {
            v29 = *(*(v3 + 32) + 8 * i);
            v30 = v29;
            if (v29 < 0x8000000000000003)
            {
              v30 = -INFINITY;
            }

            if (v29 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v30 = INFINITY;
            }

            v5 = v5 + *(a1 + 256) * v30;
          }
        }
      }
    }

    result = v5 / (result * *(a1 + 208));
    *(v3 + 48) = fabs(result);
  }

  return result;
}

uint64_t operations_research::sat::LinearConstraintManager::AddCut(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  ++*(a1 + 168);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = operations_research::sat::ComputeActivity(a2, *(a1 + 272));
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = v10;
  v13 = -INFINITY;
  if (v10 < 0x8000000000000003)
  {
    v12 = -INFINITY;
  }

  if (v10 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v12 = INFINITY;
  }

  v14 = v9 - v12;
  if (v11 >= 0x8000000000000003)
  {
    v13 = v11;
  }

  if (v11 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v13 = INFINITY;
  }

  v15 = v13 - v9;
  if (v14 >= v15)
  {
    *&v16 = v14;
  }

  else
  {
    *&v16 = v15;
  }

  v18 = operations_research::sat::ComputeL2Norm(a2, v8);
  v19 = *&v16 / v18;
  if (*&v16 / v18 < 0.0001)
  {
    if (dword_2810C0760 > 2)
    {
      v20 = *&v18;
      if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_20, dword_2810C0760))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 249);
        v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v52, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "BAD Cut '", 9uLL);
        v22 = absl::lts_20240722::log_internal::LogMessage::operator<<(v21, a3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "'", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, " size=", 6uLL);
        LODWORD(v54) = *(a2 + 16);
        v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v22, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " max_magnitude=", 0xFuLL);
        v51 = operations_research::sat::ComputeInfinityNorm(a2, v24);
        v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v23, &v51);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " norm=", 6uLL);
        v54 = *&v20;
        v26 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v25, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, " violation=", 0xBuLL);
        v54 = *&v16;
        v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v26, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " eff=", 5uLL);
        v54 = v19;
        v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v27, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, " ", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v28, a4);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v52);
      }
    }

    return 0;
  }

  v29 = *&v18;
  if (operations_research::sat::PossibleOverflow(*(a1 + 8), a2, v17))
  {
    return 0;
  }

  v50 = 0;
  v47 = *a2;
  v48 = *(a2 + 16);
  v31 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v49 = v31;
  v32 = operations_research::sat::LinearConstraintManager::Add(a1, &v47, &v50);
  v33 = *(&v49 + 1);
  *(&v49 + 1) = 0;
  if (v33)
  {
    MEMORY[0x23EED9440](v33, 0x1000C8000313F17);
  }

  v34 = v49;
  *&v49 = 0;
  if (v34)
  {
    MEMORY[0x23EED9440](v34, 0x1000C8052888210);
  }

  result = v50;
  if (v50)
  {
    *(*(a1 + 32) + 80 * v32 + 78) = 1;
    if (dword_2810C0778 > 1)
    {
      v36 = result;
      IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0770, dword_2810C0778);
      result = v36;
      v35 = a3;
      if (IsEnabled2)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 273);
        v38 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v52, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "Cut '", 5uLL);
        v39 = absl::lts_20240722::log_internal::LogMessage::operator<<(v38, a3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "'", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, " size=", 6uLL);
        v40 = v32;
        LODWORD(v54) = *(*(a1 + 32) + 80 * v32 + 16);
        v41 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v39, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v41, " max_magnitude=", 0xFuLL);
        v51 = operations_research::sat::ComputeInfinityNorm((*(a1 + 32) + 80 * v40), v42);
        v43 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v41, &v51);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, " norm=", 6uLL);
        v54 = *&v29;
        v44 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v43, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " violation=", 0xBuLL);
        v54 = *&v16;
        v45 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v44, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, " eff=", 5uLL);
        v54 = v19;
        v46 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v45, &v54);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, " ", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v46, a4);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v52);
        v35 = a3;
        goto LABEL_28;
      }
    }

    else
    {
      v35 = a3;
    }

    v36 = result;
LABEL_28:
    ++*(a1 + 160);
    ++*(a1 + 304);
    v54 = *&v35;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 176), v35, &std::piecewise_construct, &v54, &v52);
    ++*&v52[32 * v53 + 40];
    return v36;
  }

  return result;
}

void sub_23CC34C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC34C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC34C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC34C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearConstraintManager::PermanentlyRemoveSomeConstraints(operations_research::sat::LinearConstraintManager *this)
{
  v1 = *(this + 4);
  v42 = (this + 32);
  if ((-858993459 * ((*(this + 5) - v1) >> 4)) >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(v1 + v3 + 78) == 1 && (*(v1 + v3 + 75) & 1) == 0)
      {
        v6 = v5;
        v7 = v5 >> 3;
        if (((v5 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v5 >> 3 != -1)
        {
          if (!(((v5 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v7) = *(v1 + v3 + 64);
        v5 = 8 * v7 + 8;
        memcpy(0, 0, v6);
      }

      ++v4;
      v1 = *(this + 4);
      v3 += 80;
    }

    while (v4 < (-858993459 * ((*(this + 5) - v1) >> 4)));
    if (v5)
    {
      std::__sort<std::__less<double,double> &,double *>();
      v8 = *(*this + 720);
      if (v8 >= v5 >> 3)
      {
        v9 = INFINITY;
        v11 = (this + 80);
        v10 = *(this + 10);
        if (v10 > 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = *(8 * v8);
        v11 = (this + 80);
        v10 = *(this + 10);
        if (v10 > 1)
        {
LABEL_14:
          absl::lts_20240722::container_internal::ClearBackingArray(v11, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::GetPolicyFunctions(void)::value, v10 < 0x80, 1u);
          goto LABEL_17;
        }
      }

      *(this + 11) = 0;
LABEL_17:
      v12 = *(this + 4);
      v13 = *(this + 5);
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 4);
      if (v13 != v12)
      {
        if (!(v14 >> 62))
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v14 < 1)
      {
        v41 = 0;
        v31 = 0;
        if (!v14)
        {
          goto LABEL_50;
        }

LABEL_42:
        for (i = v12 + 80 * v31; v13 != i; v13 -= 80)
        {
          v33 = *(v13 - 48);
          *(v13 - 48) = 0;
          if (v33)
          {
            MEMORY[0x23EED9440](v33, 0x1000C8000313F17);
          }

          v34 = *(v13 - 56);
          *(v13 - 56) = 0;
          if (v34)
          {
            MEMORY[0x23EED9440](v34, 0x1000C8052888210);
          }
        }

        *(this + 5) = i;
        goto LABEL_50;
      }

      v15 = 0;
      v16 = 0;
      v41 = 0;
      v17 = 0;
      do
      {
        v18 = (v12 + v15);
        if (*(v12 + v15 + 78) != 1 || (*(v18 + 75) & 1) != 0 || *(v12 + v15 + 64) > v9 || v41 >= *(*this + 720))
        {
          if (v16 != v17)
          {
            v19 = v12 + 80 * v17;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 4);
            *v19 = v20;
            v21 = v12 + v15;
            v22 = *(v12 + v15 + 24);
            *(v12 + v15 + 24) = 0;
            v23 = *(v19 + 24);
            *(v19 + 24) = v22;
            if (v23)
            {
              MEMORY[0x23EED9440](v23, 0x1000C8052888210);
            }

            v24 = *(v21 + 32);
            *(v21 + 32) = 0;
            v25 = *(v19 + 32);
            *(v19 + 32) = v24;
            if (v25)
            {
              MEMORY[0x23EED9440](v25, 0x1000C8000313F17);
            }

            v26 = *(v12 + v15 + 40);
            v27 = *(v12 + v15 + 56);
            *(v19 + 71) = *(v12 + v15 + 71);
            *(v19 + 56) = v27;
            *(v19 + 40) = v26;
            v12 = *v42;
          }

          *(4 * v16) = v17;
          v28 = v12 + 80 * v17;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::find_or_prepare_insert<unsigned long>(v11, (v28 + 56), v43);
          if (v45 == 1)
          {
            v29 = v44;
            *v44 = *(v28 + 56);
            *(v29 + 8) = 0;
          }

          *(v44 + 8) = v17++;
          v12 = *(this + 4);
          v13 = *(this + 5);
        }

        else
        {
          ++v41;
        }

        ++v16;
        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 4);
        v15 += 80;
      }

      while (v16 < v30);
      v31 = v17;
      if (v17 <= v30)
      {
        if (v30 > v17)
        {
          goto LABEL_42;
        }
      }

      else
      {
        std::vector<operations_research::sat::LinearConstraintManager::ConstraintInfo>::__append(v42, v17 - v30);
      }

LABEL_50:
      v35 = *(this + 7);
      v36 = *(this + 8) - v35;
      if (v36)
      {
        v37 = 0;
        v38 = v36 >> 2;
        v39 = 1;
        do
        {
          *(v35 + 4 * v37) = *(4 * *(v35 + 4 * v37));
          v37 = v39++;
        }

        while (v38 > v37);
      }

      if (v41 > 0 && unk_27E25D130 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::LinearConstraintManager::PermanentlyRemoveSomeConstraints(void)::$_0::operator() const(void)::site, unk_27E25D130))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 336);
        v40 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "Constraint manager cleanup: #deleted:", 0x25uLL);
        v46 = v41;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v40, &v46);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
      }

      *(this + 76) -= v41;
    }
  }
}

void sub_23CC351E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, char a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64_t operations_research::sat::LinearConstraintManager::SetObjectiveCoefficient(int64_t result, int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    *(result + 200) = 1;
    if (a2)
    {
      v4 = -a3;
    }

    else
    {
      v4 = a3;
    }

    v5 = v4;
    if (v4 < 0x8000000000000003)
    {
      v5 = -INFINITY;
    }

    if (v4 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
    }

    else
    {
      v6 = INFINITY;
    }

    v8 = a2 & 0xFFFFFFFE;
    v9 = v6;
    result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,double>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(result + 232, &v8, v10);
    if ((v12 & 1) == 0)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 352);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v8, "SetObjectiveCoefficient() called twice with same variable", 0x39uLL);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v8);
    }

    v7 = v11;
    *v11 = v8;
    *(v7 + 1) = v9;
    *(v3 + 224) = *(v3 + 224) + v6 * v6;
  }

  return result;
}

uint64_t operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::sat::LinearConstraintManager *this, void *a2, int *a3)
{
  if (dword_2810C0790 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0788, dword_2810C0790))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v130, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 519);
    v116 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v130, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v116, "Enter ChangeLP, scan ", 0x15uLL);
    __p = (0xCCCCCCCCCCCCCCCDLL * ((*(this + 5) - *(this + 4)) >> 4));
    v117 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v116, &__p);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v117, " constraints", 0xCuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v130);
  }

  v4 = *(this + 27);
  __p = 0;
  v128 = 0;
  v129 = 0;
  v5 = *(*(this + 1) + 728);
  v7 = *(this + 3);
  v6 = *(this + 4);
  *(this + 3) = v5;
  if ((-858993459 * ((*(this + 5) - v6) >> 4)) >= 1)
  {
    v8 = 0;
    __n = 0;
    while (1)
    {
      if (v5 > v7)
      {
        v9 = operations_research::sat::LinearConstraintManager::SimplifyConstraint(this, (v6 + 80 * v8));
        v6 = *(this + 4);
        if (v9)
        {
          ++*(this + 15);
          operations_research::sat::DivideByGCD(v6 + 80 * v8, v10);
          v11 = (*(this + 4) + 80 * v8);
          *(v11 + 74) = 0;
          v13 = operations_research::sat::ComputeL2Norm(v11, v12);
          v14 = *(this + 4) + 80 * v8;
          *(v14 + 40) = v13;
          operations_research::sat::LinearConstraintManager::FillDerivedFields(this, v14);
          v16 = *(this + 4);
          v17 = v16 + 80 * v8;
          if (*(v17 + 75) == 1)
          {
            *(this + 16) = 1;
          }

          v18 = *(this + 10);
          if (v18 > 1)
          {
            v19 = 0;
            _X11 = *(this + 12);
            __asm { PRFM            #4, [X11] }

            v25 = *(v17 + 56);
            v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25));
            v27 = vdup_n_s8(v26 & 0x7F);
            v28 = ((v26 >> 7) ^ (_X11 >> 12)) & v18;
            v29 = *(_X11 + v28);
            v30 = vceq_s8(v29, v27);
            if (!v30)
            {
              goto LABEL_16;
            }

            do
            {
LABEL_14:
              v15 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v18;
              if (*(*(this + 13) + 16 * v15) == v25)
              {
                absl::lts_20240722::container_internal::EraseMetaOnly(this + 10, v15);
                v16 = *(this + 4);
                goto LABEL_20;
              }

              v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v30);
LABEL_16:
            while (!*&vceq_s8(v29, 0x8080808080808080))
            {
              v19 += 8;
              v28 = (v19 + v28) & v18;
              v29 = *(_X11 + v28);
              v30 = vceq_s8(v29, v27);
              if (v30)
              {
                goto LABEL_14;
              }
            }
          }

          else if (*(this + 11) >= 2uLL && *(this + 12) == *(v17 + 56))
          {
            *(this + 11) = 0;
          }

LABEL_20:
          v31 = (v16 + 80 * v8);
          v32 = v31 + 7;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::find_or_prepare_insert<unsigned long>(this + 10, v32, v130);
          if (v132 == 1)
          {
            v33 = v131;
            *v131 = *v32;
            *(v33 + 8) = 0;
          }

          *(v131 + 8) = v8;
          v6 = *(this + 4);
        }
      }

      v34 = v6 + 80 * v8;
      if (*(v34 + 75))
      {
        goto LABEL_4;
      }

      *(this + 27) = *(this + 27) + *(v34 + 16) * 0.0000000017;
      v35 = operations_research::sat::ComputeActivity(v34, *(this + 34));
      v6 = *(this + 4);
      v36 = v6 + 80 * v8;
      v37 = *(v36 + 8);
      v38 = *v36;
      v39 = -INFINITY;
      if (*v36 < 0x8000000000000003)
      {
        v38 = -INFINITY;
      }

      if (*v36 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v38 = INFINITY;
      }

      v40 = v38 - v35;
      if (v37 >= 0x8000000000000003)
      {
        v39 = v37;
      }

      if (v37 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v39 = INFINITY;
      }

      v41 = v35 - v39;
      v42 = v40 >= v41 ? v40 : v41;
      if (v42 < 0.000001)
      {
        goto LABEL_4;
      }

      *(v36 + 72) = 0;
      if (*(this + 200) == 1)
      {
        if ((*(v36 + 74) & 1) == 0)
        {
          operations_research::sat::LinearConstraintManager::ComputeObjectiveParallelism(this, v8);
          v6 = *(this + 4);
        }
      }

      else
      {
        *(v36 + 48) = 0;
      }

      v43 = v42 / *(v6 + 80 * v8 + 40) + *(v6 + 80 * v8 + 48);
      v44 = v128;
      if (v128 >= v129)
      {
        break;
      }

      v128->n128_u32[0] = v8;
      v44->n128_f64[1] = v43;
      v128 = v44 + 1;
      v6 = *(this + 4);
      v45 = v6 + 80 * v8;
      if (*(v45 + 78) == 1)
      {
        goto LABEL_55;
      }

LABEL_4:
      if (++v8 >= (-858993459 * ((*(this + 5) - v6) >> 4)))
      {
        goto LABEL_58;
      }
    }

    v46 = __p;
    v47 = v128 - __p;
    v48 = (v128 - __p) >> 4;
    v49 = v48 + 1;
    if ((v48 + 1) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v50 = v129 - __p;
    if ((v129 - __p) >> 3 > v49)
    {
      v49 = v50 >> 3;
    }

    if (v50 >= 0x7FFFFFFFFFFFFFF0)
    {
      v51 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v51 = v49;
    }

    if (v51)
    {
      if (!(v51 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v52 = (v128 - __p) >> 4;
    v53 = 16 * v48;
    *v53 = v8;
    *(v53 + 8) = v43;
    v54 = 16 * v48 + 16;
    v55 = (16 * v48 - 16 * v52);
    memcpy((v53 - 16 * v52), v46, v47);
    __p = v55;
    v128 = v54;
    v129 = 0;
    if (v46)
    {
      operator delete(v46);
    }

    v128 = v54;
    v6 = *(this + 4);
    v45 = v6 + 80 * v8;
    if (*(v45 + 78) != 1)
    {
      goto LABEL_4;
    }

LABEL_55:
    v56 = *(this + 37) + *(v45 + 64);
    *(v45 + 64) = v56;
    if (v56 > *(*this + 704))
    {
      __n = 1;
    }

    goto LABEL_4;
  }

  __n = 0;
LABEL_58:
  if (a2)
  {
    v57 = *(this + 7);
    v58 = *(this + 8) - v57;
    v59 = v58 >> 2;
    v60 = __n;
    if ((v58 >> 2) >= 1)
    {
      v61 = *a2;
      v62 = (v58 >> 2) & 0x7FFFFFFF;
      v63 = (a2[1] << 32) - ((v59 + *a2) << 32);
      do
      {
        if (*(v61 + (v63 >> 32)))
        {
          v64 = v6 + 80 * *v57;
          if (*(v64 + 78) == 1)
          {
            v65 = *(this + 37) + *(v64 + 64);
            *(v64 + 64) = v65;
            if (v65 > *(*this + 704))
            {
              v60 = 1;
            }
          }
        }

        v63 += 0x100000000;
        ++v57;
        --v62;
      }

      while (v62);
    }
  }

  else
  {
    v60 = __n;
  }

  v66 = *this;
  if (v60)
  {
    v67 = *(v66 + 704);
    if (v67 <= 0.0)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<double,double>("sat_parameters_.cut_max_active_count_value() > 0.0", v67, 0.0);
    }

    operations_research::sat::LinearConstraintManager::RescaleActiveCounts(this, 1.0 / v67);
    v66 = *this;
  }

  *(this + 37) = *(this + 37) * (1.0 / *(v66 + 712));
  if (operations_research::sat::LinearConstraintManager::MaybeRemoveSomeInactiveConstraints(this, a2))
  {
    *(this + 16) = 1;
  }

  v69 = (v128 - __p) >> 4;
  v70 = *(*this + 624);
  if (*(this + 7) == *(this + 8))
  {
    v70 = 1000;
  }

  if (v70 >= v69)
  {
    v71 = (v128 - __p) >> 4;
  }

  else
  {
    v71 = v70;
  }

  if (dword_2810C07A8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C07A0, dword_2810C07A8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v130, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 653);
    v118 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v130, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v118, "   - size = ", 0xCuLL);
    LODWORD(v133) = v69;
    v119 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v118, &v133);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v119, ", limit = ", 0xAuLL);
    LODWORD(v133) = v71;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v119, &v133);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v130);
  }

  v72 = __p;
  v73 = v128;
  v74 = (v128 - __p) >> 4;
  if (v74 < 1)
  {
    v78 = 0;
LABEL_84:
    std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v72, v73, v74, 0, v78, v68);
    v82 = __p;
    v81 = v128;
    v83 = 4 * v71;
    v84 = 4 * v71;
    if (v84 < (v128 - __p) >> 4)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v75 = MEMORY[0x277D826F0];
    v76 = (v128 - __p) >> 4;
    while (1)
    {
      v77 = operator new(16 * v76, v75);
      if (v77)
      {
        break;
      }

      v78 = v76 >> 1;
      v79 = v76 > 1;
      v76 >>= 1;
      if (!v79)
      {
        goto LABEL_84;
      }
    }

    v85 = v77;
    std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v72, v73, v74, v77, v76, v68);
    operator delete(v85);
    v82 = __p;
    v81 = v128;
    v83 = 4 * v71;
    v84 = 4 * v71;
    if (v84 < (v128 - __p) >> 4)
    {
LABEL_87:
      if (dword_2810C07C0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C07B8, dword_2810C07C0))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v130, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 662);
        v120 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v130, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v120, "Resize candidate constraints from ", 0x22uLL);
        v133 = (v128 - __p) >> 4;
        v121 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v120, &v133);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v121, " down to ", 9uLL);
        LODWORD(v133) = v83;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v121, &v133);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v130);
      }

      v82 = __p;
      v81 = v128;
      v86 = (v128 - __p) >> 4;
      if (v84 <= v86)
      {
        if (v84 < v86)
        {
          v81 = (__p + 16 * v84);
          v128 = v81;
        }
      }

      else
      {
        std::vector<std::pair<int,long long>>::__append(&__p, v84 - v86);
        v82 = __p;
        v81 = v128;
      }
    }
  }

  if (v81 != v82)
  {
    if (((v81 - v82) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v71 >= 1)
  {
    v87 = 0;
    v88 = 0;
    v89 = -1;
    while (1)
    {
      LODWORD(v133) = -1;
      v90 = __p;
      if (v128 == __p)
      {
        break;
      }

      if (v89 != -1)
      {
        v91 = 0;
        v92 = v89;
        v93 = 0.0;
        v94 = 1;
        while (1)
        {
          if (++v88 >= 100)
          {
            if (operations_research::TimeLimit::LimitReached(*(this + 33)))
            {
              goto LABEL_132;
            }

            v88 = 0;
            v90 = __p;
          }

          v96 = *&v90[16 * v91];
          v97 = *(this + 4);
          v98 = (v97 + 80 * v96);
          if (*(v98 + 75))
          {
            goto LABEL_99;
          }

          operations_research::sat::ScalarProduct(v97 + 80 * v92, v98, v80);
          v100 = 1.0 - fabs(v99) / (*(*(this + 4) + 80 * v92 + 40) * *(*(this + 4) + 80 * v96 + 40));
          if (v100 >= *(8 * v91))
          {
            v100 = *(8 * v91);
          }

          *(8 * v91) = v100;
          v90 = __p;
          if (v100 < *(*this + 592))
          {
            goto LABEL_99;
          }

          v95 = v100 + *(__p + 2 * v91 + 1);
          if (v95 < 0.0)
          {
            goto LABEL_153;
          }

          if (v95 > v93 || v133 == -1)
          {
            LODWORD(v133) = v96;
          }

          else
          {
LABEL_99:
            v95 = v93;
          }

          v91 = v94++;
          v93 = v95;
          if (v91 >= (v128 - v90) >> 4)
          {
            goto LABEL_129;
          }
        }
      }

      v102 = 0;
      v103 = 0.0;
      v104 = 1;
      do
      {
        if (++v88 >= 100)
        {
          if (operations_research::TimeLimit::LimitReached(*(this + 33)))
          {
LABEL_132:
            v107 = *(this + 16);
            goto LABEL_133;
          }

          v88 = 0;
          v90 = __p;
        }

        if ((*(*(this + 4) + 80 * *&v90[16 * v102] + 75) & 1) == 0)
        {
          v105 = *(8 * v102);
          if (v105 >= *(*this + 592))
          {
            v95 = v105 + *&v90[16 * v102 + 8];
            if (v95 < 0.0)
            {
LABEL_153:
              absl::lts_20240722::log_internal::MakeCheckOpString<double,double>("score >= 0.0", v95, 0.0);
            }

            if (v95 > v103 || v133 == -1)
            {
              LODWORD(v133) = *&v90[16 * v102];
              v103 = v95;
            }
          }
        }

        v102 = v104++;
      }

      while (v102 < (v128 - v90) >> 4);
LABEL_129:
      if (v133 == -1)
      {
        break;
      }

      *(*(this + 4) + 80 * v133 + 75) = 1;
      *(this + 16) = 1;
      std::vector<int>::push_back[abi:ne200100](this + 56, &v133);
      ++v87;
      v89 = v133;
      if (v87 == v71)
      {
        v87 = v71;
        break;
      }
    }
  }

  else
  {
    v87 = 0;
  }

  v109 = a2;
  if (a3)
  {
    *a3 = v87;
  }

  if (v87 >= 1)
  {
    if (dword_2810C07D8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C07D0, dword_2810C07D8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v130, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_constraint_manager.cc", 743);
      v122 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v130, 3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v122, "Added ", 6uLL);
      LODWORD(v133) = v87;
      v123 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v122, &v133);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v123, " constraints.", 0xDuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v130);
      v109 = a2;
    }

    v110 = v109[1];
    v111 = &v110[-*v109];
    v112 = v87 + v111;
    v113 = v112 - v111;
    if (v112 > v111)
    {
      v114 = v109[2];
      if (v114 - v110 < v113)
      {
        if ((v112 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v115 = &v110[v113];
      bzero(v110, v113);
      v109[1] = v115;
      if (*(this + 76) <= *(*this + 576))
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }

    if (v112 < v111)
    {
      v109[1] = *v109 + v112;
    }
  }

  if (*(this + 76) > *(*this + 576))
  {
LABEL_149:
    operations_research::sat::LinearConstraintManager::PermanentlyRemoveSomeConstraints(this);
  }

LABEL_150:
  *(*(this + 33) + 112) = *(*(this + 33) + 112) + *(this + 27) - v4;
  *(this + 16) = 0;
  v107 = 1;
LABEL_133:
  if (__p)
  {
    v128 = __p;
    operator delete(__p);
  }

  return v107 & 1;
}

void sub_23CC360EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearConstraintManager::AddAllConstraintsToLp(operations_research::sat::LinearConstraintManager *this)
{
  v8 = 0;
  v2 = *(this + 4);
  v1 = *(this + 5);
  if ((-858993459 * ((v1 - v2) >> 4)) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = v2 + 80 * v4;
      v7 = *(v5 + 75);
      v6 = (v5 + 75);
      if ((v7 & 1) == 0)
      {
        *v6 = 1;
        std::vector<int>::push_back[abi:ne200100](this + 56, &v8);
        v4 = v8;
        v2 = *(this + 4);
        v1 = *(this + 5);
      }

      v8 = ++v4;
    }

    while (v4 < (-858993459 * ((v1 - v2) >> 4)));
  }
}

void operations_research::sat::TopNCuts::AddCut(int *a1, uint64_t a2, const void *a3, size_t a4, uint64_t *a5)
{
  if (*(a2 + 16))
  {
    v10 = operations_research::sat::ComputeActivity(a2, a5);
    v12 = *a2;
    v11 = *(a2 + 8);
    v13 = v11;
    v14 = -INFINITY;
    if (v11 < 0x8000000000000003)
    {
      v13 = -INFINITY;
    }

    if (v11 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v13 = INFINITY;
    }

    v15 = v10 - v13;
    if (v12 >= 0x8000000000000003)
    {
      v14 = v12;
    }

    if (v12 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v14 = INFINITY;
    }

    v16 = v14 - v10;
    if (v15 >= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = operations_research::sat::ComputeL2Norm(a2, v9);
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (a4 >= 0x17)
    {
      operator new();
    }

    v24 = a4;
    if (a4)
    {
      memmove(&__p, a3, a4);
    }

    *(&__p + a4) = 0;
    v25 = *a2;
    v26 = *(a2 + 16);
    v20 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v27 = v20;
    operations_research::sat::TopN<operations_research::sat::TopNCuts::CutCandidate,double>::Add(a1, &__p, v17 / v19);
    v21 = *(&v27 + 1);
    *(&v27 + 1) = 0;
    if (v21)
    {
      MEMORY[0x23EED9440](v21, 0x1000C8000313F17);
    }

    v22 = v27;
    *&v27 = 0;
    if (v22)
    {
      MEMORY[0x23EED9440](v22, 0x1000C8052888210);
    }

    if (v24 < 0)
    {
      operator delete(__p);
    }
  }
}

uint64_t operations_research::sat::TopN<operations_research::sat::TopNCuts::CutCandidate,double>::Add(int *a1, uint64_t a2, double a3)
{
  v8 = *(a1 + 1);
  result = (a1 + 2);
  v7 = v8;
  if (*a1 <= ((*(a1 + 2) - v8) >> 4))
  {
    if (v7[1] < a3)
    {
      v13 = *v7;
      v14 = *(a1 + 4) + (v13 << 6);
      if (*(v14 + 23) < 0)
      {
        operator delete(*v14);
      }

      v15 = *a2;
      *(v14 + 16) = *(a2 + 16);
      *v14 = v15;
      *(a2 + 23) = 0;
      *a2 = 0;
      v16 = *(a2 + 24);
      *(v14 + 40) = *(a2 + 40);
      *(v14 + 24) = v16;
      v17 = *(a2 + 48);
      *(a2 + 48) = 0;
      v18 = *(v14 + 48);
      *(v14 + 48) = v17;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8052888210);
      }

      v19 = *(a2 + 56);
      *(a2 + 56) = 0;
      result = *(v14 + 56);
      *(v14 + 56) = v19;
      if (result)
      {
        result = MEMORY[0x23EED9440](result, 0x1000C8000313F17);
      }

      v20 = *(a1 + 1);
      v21 = *(a1 + 2);
      v22 = (v21 - v20) >> 4;
      if (v22 <= 1)
      {
        *(v21 - 16) = v13;
        *(v21 - 8) = a3;
      }

      else
      {
        v23 = 0;
        v59 = *v20;
        v24 = v20;
        do
        {
          v25 = v24;
          v24 += v23 + 1;
          v26 = 2 * v23;
          v23 = (2 * v23) | 1;
          v27 = v26 + 2;
          if (v27 < v22 && *(v24 + 1) > *(v24 + 3))
          {
            ++v24;
            v23 = v27;
          }

          *v25 = *v24;
        }

        while (v23 <= ((v22 - 2) >> 1));
        v31 = (v21 - 16);
        if (v24 == v31)
        {
          *v24 = v59;
        }

        else
        {
          *v24 = *v31;
          *v31 = v59;
          v32 = (v24 - v20 + 16) >> 4;
          v30 = v32 < 2;
          v33 = v32 - 2;
          if (!v30)
          {
            v34 = v33 >> 1;
            v35 = &v20[v34];
            v36 = *(v24 + 1);
            if (*(v35 + 1) > v36)
            {
              v37 = *v24;
              do
              {
                v38 = v24;
                v24 = v35;
                *v38 = *v35;
                if (!v34)
                {
                  break;
                }

                v34 = (v34 - 1) >> 1;
                v35 = &v20[v34];
              }

              while (*(v35 + 1) > v36);
              *v24 = v37;
              *(v24 + 1) = v36;
            }
          }
        }

        v50 = *(a1 + 1);
        v51 = *(a1 + 2);
        v52 = (v51 - v50) >> 4;
        *(v51 - 8) = a3;
        *(v51 - 16) = v13;
        v53 = (v51 - 16);
        v30 = v52 < 2;
        v54 = v52 - 2;
        if (!v30)
        {
          v55 = v54 >> 1;
          v56 = (v50 + 16 * v55);
          if (v56[1] > a3)
          {
            v57 = *v53;
            do
            {
              v58 = v53;
              v53 = v56;
              *v58 = *v56;
              if (!v55)
              {
                break;
              }

              v55 = (v55 - 1) >> 1;
              v56 = (v50 + 16 * v55);
            }

            while (v56[1] > a3);
            *v53 = v57;
            v53[1] = a3;
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v59) = (*(a1 + 5) - *(a1 + 4)) >> 6;
    *(&v59 + 1) = a3;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](result, &v59);
    v9 = *(a1 + 5);
    if (v9 >= *(a1 + 6))
    {
      result = std::vector<operations_research::sat::TopNCuts::CutCandidate>::__emplace_back_slow_path<operations_research::sat::TopNCuts::CutCandidate>(a1 + 4, a2);
    }

    else
    {
      v10 = *a2;
      *(v9 + 16) = *(a2 + 16);
      *v9 = v10;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v11 = *(a2 + 24);
      *(v9 + 40) = *(a2 + 40);
      *(v9 + 24) = v11;
      v12 = *(a2 + 48);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(v9 + 48) = v12;
      result = v9 + 64;
    }

    *(a1 + 5) = result;
    v28 = *(a1 + 1);
    v29 = (*(a1 + 2) - v28) >> 4;
    v30 = v29 != *a1 || v29 < 2;
    if (!v30)
    {
      v39 = (v29 - 2) >> 1;
      v40 = v39;
      do
      {
        v41 = 16 * v40;
        if (v39 >= (16 * v40) >> 4)
        {
          v42 = (v41 >> 3) | 1;
          v43 = (v28 + 16 * v42);
          if ((v41 >> 3) + 2 < v29 && v43[1] > v43[3])
          {
            v43 += 2;
            v42 = (v41 >> 3) + 2;
          }

          v44 = (v41 + v28);
          v45 = v44[1];
          if (v43[1] <= v45)
          {
            v46 = *v44;
            do
            {
              v47 = v44;
              v44 = v43;
              *v47 = *v43;
              if (v39 < v42)
              {
                break;
              }

              v48 = 2 * v42;
              v42 = (2 * v42) | 1;
              v43 = (v28 + 16 * v42);
              v49 = v48 + 2;
              if (v49 < v29 && v43[1] > v43[3])
              {
                v43 += 2;
                v42 = v49;
              }
            }

            while (v43[1] <= v45);
            *v44 = v46;
            v44[1] = v45;
          }
        }

        v30 = v40-- <= 0;
      }

      while (!v30);
    }
  }

  return result;
}

void operations_research::sat::TopNCuts::CutCandidate::~CutCandidate(operations_research::sat::TopNCuts::CutCandidate *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8052888210);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void operations_research::sat::TopNCuts::TransferToManager(operations_research::sat::TopNCuts *this, operations_research::sat::LinearConstraintManager *a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 != v4)
  {
    while (1)
    {
      v16 = *(v3 + 24);
      v17 = *(v3 + 10);
      v6 = v3[3];
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      v18 = v6;
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *v3, *(v3 + 1));
      }

      else
      {
        v7 = *v3;
        v15.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v15.__r_.__value_.__l.__data_ = v7;
      }

      v14 = 0;
      LOBYTE(__p) = 0;
      operations_research::sat::LinearConstraintManager::AddCut(a2, &v16, &v15, &__p);
      if (v14 < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_14:
          operator delete(v15.__r_.__value_.__l.__data_);
          v8 = *(&v18 + 1);
          *(&v18 + 1) = 0;
          if (!v8)
          {
            goto LABEL_11;
          }

LABEL_10:
          MEMORY[0x23EED9440](v8, 0x1000C8000313F17);
          goto LABEL_11;
        }
      }

      else if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_14;
      }

      v8 = *(&v18 + 1);
      *(&v18 + 1) = 0;
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v9 = v18;
      *&v18 = 0;
      if (v9)
      {
        MEMORY[0x23EED9440](v9, 0x1000C8052888210);
      }

      v3 += 4;
      if (v3 == v4)
      {
        v3 = *(this + 4);
        v4 = *(this + 5);
        break;
      }
    }
  }

  *(this + 2) = *(this + 1);
  if (v4 != v3)
  {
    do
    {
      v10 = *(v4 - 1);
      *(v4 - 1) = 0;
      if (v10)
      {
        MEMORY[0x23EED9440](v10, 0x1000C8000313F17);
      }

      v11 = *(v4 - 2);
      *(v4 - 2) = 0;
      if (v11)
      {
        MEMORY[0x23EED9440](v11, 0x1000C8052888210);
      }

      v12 = (v4 - 4);
      if (*(v4 - 41) < 0)
      {
        operator delete(*v12);
      }

      v4 -= 4;
    }

    while (v12 != v3);
  }

  *(this + 5) = v3;
}

void sub_23CC36B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

void sub_23CC36B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::sat::LinearConstraint::~LinearConstraint(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  operations_research::sat::LinearConstraint::~LinearConstraint(&a23);
  _Unwind_Resume(a1);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::find_or_prepare_insert<unsigned long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

uint64_t std::vector<operations_research::sat::LinearConstraintManager::ConstraintInfo>::__emplace_back_slow_path<operations_research::sat::LinearConstraintManager::ConstraintInfo>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - v2) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v2) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = 16 * (v4 >> 4);
  *(v9 + 16) = *(a2 + 16);
  *v9 = *a2;
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v9 + 24) = v10;
  *(v9 + 40) = *(a2 + 40);
  *(v9 + 56) = *(a2 + 56);
  *(v9 + 71) = *(a2 + 71);
  v11 = v9 + 80;
  v12 = v9 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 4);
      *v14 = v15;
      v16 = *(v13 + 3);
      v13[3] = 0;
      v13[4] = 0;
      *(v14 + 24) = v16;
      v17 = *(v13 + 5);
      v18 = *(v13 + 7);
      *(v14 + 71) = *(v13 + 71);
      *(v14 + 56) = v18;
      *(v14 + 40) = v17;
      v13 += 10;
      v14 += 80;
    }

    while (v13 != v3);
    do
    {
      v19 = v2[4];
      v2[4] = 0;
      if (v19)
      {
        MEMORY[0x23EED9440](v19, 0x1000C8000313F17);
      }

      v20 = v2[3];
      v2[3] = 0;
      if (v20)
      {
        MEMORY[0x23EED9440](v20, 0x1000C8052888210);
      }

      v2 += 10;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 80 * v5 + 80;
}

void std::vector<operations_research::sat::LinearConstraintManager::ConstraintInfo>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4) >= a2)
  {
    v12 = 80 * a2;
    if (80 * a2)
    {
      bzero(*(a1 + 8), 80 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
    return;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4) + a2;
  if (v5 > 0x333333333333333)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
  if (2 * v6 > v5)
  {
    v5 = 2 * v6;
  }

  if (v6 >= 0x199999999999999)
  {
    v7 = 0x333333333333333;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (16 * ((v4 - *a1) >> 4));
  v14 = 80 * a2;
  if (80 * a2)
  {
    bzero(v13, v14);
    v8 = &v13[v14];
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = &v13[*a1 - v10];
    if (v10 != *a1)
    {
      goto LABEL_19;
    }

LABEL_12:
    *a1 = v11;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_28;
  }

  v8 = 16 * ((v4 - *a1) >> 4);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v13[*a1 - v10];
  if (v10 == *a1)
  {
    goto LABEL_12;
  }

LABEL_19:
  v15 = v9;
  v16 = v11;
  do
  {
    v17 = *v15;
    *(v16 + 4) = *(v15 + 4);
    *v16 = v17;
    v18 = *(v15 + 3);
    v15[3] = 0;
    v15[4] = 0;
    *(v16 + 24) = v18;
    v19 = *(v15 + 5);
    v20 = *(v15 + 7);
    *(v16 + 71) = *(v15 + 71);
    *(v16 + 56) = v20;
    *(v16 + 40) = v19;
    v15 += 10;
    v16 += 80;
  }

  while (v15 != v10);
  do
  {
    v21 = v9[4];
    v9[4] = 0;
    if (v21)
    {
      MEMORY[0x23EED9440](v21, 0x1000C8000313F17);
    }

    v22 = v9[3];
    v9[3] = 0;
    if (v22)
    {
      MEMORY[0x23EED9440](v22, 0x1000C8052888210);
    }

    v9 += 10;
  }

  while (v9 != v10);
  v9 = *a1;
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v9)
  {
LABEL_28:

    operator delete(v9);
  }
}