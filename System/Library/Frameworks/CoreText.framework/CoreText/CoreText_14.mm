uint64_t *std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) < *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) < *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) < *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) < *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 < *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) < *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 < *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

__n128 std::__function::__func<TLine::PositionToCharIndex(CGPoint)::$_0,std::allocator<TLine::PositionToCharIndex(CGPoint)::$_0>,void ()(double,long,BOOL,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257008;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<TLine::PositionToCharIndex(CGPoint)::$_0,std::allocator<TLine::PositionToCharIndex(CGPoint)::$_0>,void ()(double,long,BOOL,BOOL *)>::operator()(uint64_t a1, double *a2, uint64_t *a3, unsigned __int8 *a4, _BYTE **a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a1 + 40);
  result = TLine::FindRunWithCharIndex(v10, *a3, 1);
  v12 = *(v10 + 16);
  if (result >= (*(v10 + 24) - v12) >> 3)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(*(v12 + 8 * result) + 40) + 224);
    if (((((v13 & 1) == 0) ^ v8) & 1) == 0)
    {
      v14 = *(a1 + 16);
      if (*v14 < v6 && *(a1 + 32) >= v6)
      {
        *v14 = v6;
        **(a1 + 24) = v7 + (v8 ^ 1u);
      }
    }

    if (((v13 ^ v8) & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16 <= v6)
      {
        if (v16 >= **(a1 + 16) + (v6 - **(a1 + 16)) * 0.5)
        {
          v17 = v7 + (v8 ^ 1u);
        }

        else
        {
          v17 = **(a1 + 24);
        }

        **(a1 + 8) = v17;
        *v9 = 1;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<TLine::CharIndexToOffsets(long)::$_0,std::allocator<TLine::CharIndexToOffsets(long)::$_0>,void ()(double,long,BOOL,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257050;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 1;
      if (a2[-1].n128_f64[0] >= a1->n128_f64[0])
      {
        *a4 = *a1;
        a5 = *v9;
      }

      else
      {
        *a4 = *v9;
        a5 = *a1;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v18 = &a1[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(a1, v18, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(&v8[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v19 = &v8[a3 >> 1];
      while (v19 != a2)
      {
        if (v19->n128_f64[0] >= v8->n128_f64[0])
        {
          v21 = *v8++;
          a5 = v21;
        }

        else
        {
          v20 = *v19++;
          a5 = v20;
        }

        *v5++ = a5;
        if (v8 == v18)
        {
          while (v19 != a2)
          {
            v23 = *v19++;
            a5.n128_u64[0] = v23.n128_u64[0];
            *v5++ = v23;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v18)
      {
        v22 = *v8++;
        a5.n128_u64[0] = v22.n128_u64[0];
        *v5++ = v22;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      n128_f64 = a1[1].n128_f64;
      if (&a1[1] != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v13 = v12;
          v14 = *v12;
          v12 += 2;
          v15 = v12;
          if (*n128_f64 < v14)
          {
            *v12 = *v13;
            v15 = a4;
            if (v13 != a4)
            {
              v16 = v11;
              while (1)
              {
                v15 = (a4->n128_f64 + v16);
                if (*n128_f64 >= *(a4[-1].n128_f64 + v16))
                {
                  break;
                }

                *v15 = *(a4 + v16 - 16);
                v16 -= 16;
                if (!v16)
                {
                  v15 = a4;
                  break;
                }
              }
            }
          }

          v17 = *n128_f64;
          n128_f64 += 2;
          a5.n128_u64[0] = v17;
          *v15 = v17;
          v11 += 16;
        }

        while (n128_f64 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(char *result, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    while (a4 > a7 && v9 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = *&result[v12];
        if (*a2 < *&v14)
        {
          break;
        }

        v12 += 16;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v17 = &result[v12];
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          v82 = &result[v12];
          v83 = *(v82 + 2);
          v84 = *(v82 + 3);
          *v82 = *a2;
          *a2 = *&v14;
          *(a2 + 2) = v83;
          *(a2 + 3) = v84;
          return result;
        }

        v26 = v16 / 2;
        v21 = &result[16 * (v16 / 2) + v12];
        if (a3 == a2)
        {
          v19 = a2;
        }

        else
        {
          v27 = (a3 - a2) >> 4;
          v19 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v19[2 * (v27 >> 1)];
            v31 = *v29;
            v30 = v29 + 2;
            v14.i32[1] = HIDWORD(v31);
            v27 += ~(v27 >> 1);
            if (v31 < *v21)
            {
              v19 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v18 = (v19 - a2) >> 4;
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[2 * (v9 / 2)];
        if (v17 == a2)
        {
          v21 = &result[v12];
        }

        else
        {
          v20 = (a2 - result - v12) >> 4;
          v21 = &result[v12];
          do
          {
            v22 = v20 >> 1;
            v23 = &v21[16 * (v20 >> 1)];
            v25 = *v23;
            v24 = v23 + 2;
            v14.i32[1] = HIDWORD(v25);
            v20 += ~(v20 >> 1);
            if (*v19 < v25)
            {
              v20 = v22;
            }

            else
            {
              v21 = v24;
            }
          }

          while (v20);
        }

        v26 = (v21 - result - v12) >> 4;
      }

      v32 = v19;
      if (v21 != a2)
      {
        v32 = v21;
        if (a2 != v19)
        {
          if (v21 + 16 == a2)
          {
            v41 = *v21;
            v32 = &v21[v19 - a2];
            v87 = *(v21 + 2);
            v86 = *(v21 + 3);
            v89 = a6;
            v91 = v17;
            v42 = a3;
            v43 = v18;
            memmove(v21, v21 + 16, v19 - a2);
            v18 = v43;
            a6 = v89;
            v17 = v91;
            a3 = v42;
            *v32 = v41;
            *(v32 + 2) = v87;
            *(v32 + 3) = v86;
          }

          else if (a2 + 2 == v19)
          {
            v44 = *(v19 - 2);
            v32 = (v21 + 16);
            v45 = *(v19 - 2);
            v7.i32[0] = *(v19 - 1);
            if (v19 - 2 != v21)
            {
              v90 = a6;
              v92 = v17;
              v46 = a3;
              v47 = v18;
              v88 = *(v19 - 2);
              memmove(v21 + 16, v21, (v19 - 2) - v21);
              v45 = v88;
              v18 = v47;
              a6 = v90;
              v17 = v92;
              a3 = v46;
            }

            v48 = vmovl_u8(v7).u64[0];
            *v21 = v44;
            *(v21 + 2) = v45;
            *(v21 + 3) = vuzp1_s8(v48, v48).u32[0];
          }

          else
          {
            v33 = a2 - v21;
            v34 = (a2 - v21) >> 4;
            v35 = v19 - a2;
            if (v34 == (v19 - a2) >> 4)
            {
              v36 = 0;
              do
              {
                v37 = &a2[v36 / 8];
                v38 = *&v21[v36];
                v39 = *&v21[v36 + 8];
                v40 = *&v21[v36 + 12];
                *&v21[v36] = *&a2[v36 / 8];
                *v37 = v38;
                *(v37 + 2) = v39;
                *(v37 + 3) = v40;
                if (&v21[v36 + 16] == a2)
                {
                  break;
                }

                v36 += 16;
              }

              while (v37 + 2 != v19);
              v32 = a2;
            }

            else
            {
              v49 = v35 >> 4;
              v50 = (a2 - v21) >> 4;
              do
              {
                v51 = v50;
                v50 = v49;
                v49 = v51 % v49;
              }

              while (v49);
              v52 = &v21[16 * v50];
              do
              {
                v53 = *(v52 - 16);
                v52 -= 16;
                v54 = v53;
                v55 = *(v52 + 2);
                v14.i32[0] = *(v52 + 3);
                v14 = vmovl_u8(v14).u64[0];
                v56 = &v52[v33];
                v57 = v52;
                do
                {
                  v58 = v57;
                  v57 = v56;
                  *v58 = *v56;
                  v59 = __OFSUB__(v34, (v19 - v56) >> 4);
                  v61 = v34 - ((v19 - v56) >> 4);
                  v60 = (v61 < 0) ^ v59;
                  v56 = &v21[16 * v61];
                  if (v60)
                  {
                    v56 = &v57[v33];
                  }
                }

                while (v56 != v52);
                *v57 = v54;
                *(v57 + 2) = v55;
                *(v57 + 3) = vuzp1_s8(v14, v54).u32[0];
              }

              while (v52 != v21);
              v32 = &v21[v35];
            }
          }
        }
      }

      a4 = -(v26 + v13);
      v62 = v9 - v18;
      if (v26 + v18 >= v9 - (v26 + v18) - v13)
      {
        v66 = -(v26 + v13);
        v67 = v18;
        v68 = v9 - v18;
        v64 = a6;
        v69 = v17;
        std::__inplace_merge<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(v32, v19, a3, v66, v68, a6, a7);
        result = v69;
        v19 = v21;
        v62 = v67;
        a4 = v26;
        a3 = v32;
      }

      else
      {
        v63 = v26;
        v64 = a6;
        v65 = a3;
        std::__inplace_merge<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(v17, v21, v32, v63, v18, a6, a7);
        a3 = v65;
        result = v32;
      }

      v9 = v62;
      a2 = v19;
      a6 = v64;
      if (!v62)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (result != a2)
      {
        v75 = -a6;
        v76 = a6;
        v77 = result;
        do
        {
          v78 = *v77;
          v77 += 2;
          *v76++ = v78;
          v75 -= 16;
        }

        while (v77 != a2);
        while (a2 != a3)
        {
          if (*a2 >= *a6)
          {
            v81 = *a6;
            a6 += 16;
            v80 = v81;
          }

          else
          {
            v79 = *a2;
            a2 += 2;
            v80 = v79;
          }

          *result = v80;
          result += 16;
          if (v76 == a6)
          {
            return result;
          }
        }

        return memmove(result, a6, -(a6 + v75));
      }
    }

    else if (a2 != a3)
    {
      v70 = 0;
      do
      {
        *(a6 + v70 * 8) = *&a2[v70];
        v70 += 2;
      }

      while (&a2[v70] != a3);
      v71 = (a6 + v70 * 8);
      while (a2 != result)
      {
        v72 = *(v71 - 2);
        v73 = *(a2 - 2);
        if (v72 >= v73)
        {
          v74 = v71 - 2;
        }

        else
        {
          v74 = a2 - 2;
        }

        *(a3 - 1) = *v74;
        a3 -= 2;
        if (v72 >= v73)
        {
          v71 -= 2;
        }

        else
        {
          a2 -= 2;
        }

        if (v71 == a6)
        {
          return result;
        }
      }

      if (v71 != a6)
      {
        v85 = 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *&a3[v85] = *(v71 - 1);
          v85 -= 2;
          v71 -= 2;
        }

        while (v71 != a6);
      }
    }
  }

  return result;
}

BOOL TFrame::operator==(uint64_t a1, atomic_ullong *a2)
{
  if (*(a1 + 16) != a2[2])
  {
    return 0;
  }

  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != a2[1])
  {
    return 0;
  }

  explicit = atomic_load_explicit((a1 + 80), memory_order_acquire);
  v5 = atomic_load_explicit(a2 + 10, memory_order_acquire);
  if (explicit != v5 && (!explicit || !v5 || !CFEqual(explicit, v5)))
  {
    return 0;
  }

  v6 = atomic_load_explicit((a1 + 88), memory_order_acquire);
  v7 = atomic_load_explicit(a2 + 11, memory_order_acquire);
  if (v6 != v7 && (!v6 || !v7 || !CFEqual(v6, v7)))
  {
    return 0;
  }

  v8 = atomic_load_explicit((a1 + 104), memory_order_acquire);
  v9 = atomic_load_explicit(a2 + 13, memory_order_acquire);
  if (v8 != v9 && (!v8 || !v9 || !CFEqual(v8, v9)))
  {
    return 0;
  }

  if (!std::operator==[abi:fn200100]<CGPoint,std::allocator<CGPoint>>((a1 + 112), (a2 + 14)))
  {
    return 0;
  }

  return operator==((a1 + 136), a2 + 17);
}

BOOL std::operator==[abi:fn200100]<CGPoint,std::allocator<CGPoint>>(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *v3;
    v6 = v3[1];
    v3 += 2;
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result = v6 == v8 && v5 == v7;
  }

  while (result && v3 != v2);
  return result;
}

__CFString *TFrame::DebugDescription(TFrame *this)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFStringCreateWithFormat(v2, 0, @"(%ld, %ld)", *(this + 2), *(this + 3));
  CFStringAppendFormat(Mutable, 0, @"visible string range = %@, path = %@, attributes = %@, lines = %@", v4, atomic_load_explicit(this + 10, memory_order_acquire), atomic_load_explicit(this + 11, memory_order_acquire), atomic_load_explicit(this + 13, memory_order_acquire));

  return Mutable;
}

id TFrame::CopyDescriptionDictionary(atomic_ullong *this, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = this + 13;
  v7 = atomic_load_explicit(this + 13, memory_order_acquire);
  v8 = v7;
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", Count), @"numLines"}];
  explicit = atomic_load_explicit(v6, memory_order_acquire);
  if (explicit)
  {
    v11 = CFArrayGetCount(explicit);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
        [v5 addObject:{TLine::CopyDescriptionDictionary(ValueAtIndex[5], a2)}];
      }
    }
  }

  [v4 setObject:v5 forKey:@"lines"];
  return v4;
}

void TFrame::CopyVisibleString(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v4 = atomic_load_explicit(this + 13, memory_order_acquire);
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);

  if (Count <= 0)
  {
LABEL_7:
    *a2 = 0;
    return;
  }

  v7 = *(***(CFArrayGetValueAtIndex(atomic_load_explicit(this + 13, memory_order_acquire), 0) + 5) + 16);

  v7();
}

uint64_t TFrame::DrawFrameVertical(atomic_ullong *this, CGContext *a2)
{
  result = CFArrayGetCount(atomic_load_explicit(this + 13, memory_order_acquire));
  if (result)
  {
    v5 = result;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&v16.c = v6;
    *&v16.tx = v6;
    *&v16.a = v6;
    v15 = a2;
    CGContextGetCTM(&v16, a2);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v14.c = v7;
    *&v14.tx = v7;
    *&v14.a = v7;
    *&transform.a = xmmword_18475B160;
    transform.c = 1.0;
    memset(&transform.d, 0, 24);
    CGAffineTransformInvert(&v14, &transform);
    *&transform.a = xmmword_18475B160;
    transform.c = 1.0;
    memset(&transform.d, 0, 24);
    CGContextConcatCTM(a2, &transform);
    if (v5 < 1)
    {
LABEL_6:
      transform = v16;
      return CGContextSetCTM();
    }

    else
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        result = TFrame::GetLineAtIndex(this, v9);
        v10 = this[14];
        if (v9 >= (this[15] - v10) >> 4)
        {
          break;
        }

        v11 = *(result + 40);
        v12 = (v10 + v8);
        v13 = v12[1] + *(this + 7);
        CGContextSetTextPosition(a2, v14.tx + v13 * v14.c + v14.a * (*v12 + *(this + 6)), v14.ty + v13 * v14.d + v14.b * (*v12 + *(this + 6)));
        TLine::DrawGlyphs(v11, a2);
        ++v9;
        v8 += 16;
        if (v5 == v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void TextEncapsulationData::TextEncapsulationData(TextEncapsulationData *this, const __CFDictionary *a2)
{
  *this = 65537;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x3FF0000000000000;
  *(this + 20) = 400;
  *(this + 6) = 0x3FF0000000000000;
  TypeID = CFNumberGetTypeID();
  Value = CFDictionaryGetValue(a2, @"CTTextEncapsulationScale");
  if (Value && (v7 = Value, CFGetTypeID(Value) == TypeID))
  {
    valuePtr = -1431655766;
    v8 = CFGetTypeID(v7);
    if (v8 == CFNumberGetTypeID() || v8 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
      IntValue = valuePtr;
    }

    else
    {
      if (v8 != CFStringGetTypeID())
      {
        goto LABEL_9;
      }

      IntValue = CFStringGetIntValue(v7);
      valuePtr = IntValue;
    }

    if (IntValue <= 2)
    {
      *this = IntValue;
    }
  }

  else
  {
    valuePtr = -1431655766;
  }

LABEL_9:
  v10 = CFDictionaryGetValue(a2, @"CTTextEncapsulationPlatterSize");
  if (v10)
  {
    v11 = v10;
    if (CFGetTypeID(v10) == TypeID)
    {
      v12 = CFGetTypeID(v11);
      if (v12 == CFNumberGetTypeID() || v12 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
        v13 = valuePtr;
      }

      else
      {
        if (v12 != CFStringGetTypeID())
        {
          goto LABEL_20;
        }

        v13 = CFStringGetIntValue(v11);
        valuePtr = v13;
      }

      if (v13 <= 1)
      {
        *(this + 1) = v13;
      }
    }
  }

LABEL_20:
  v14 = CFDictionaryGetValue(a2, @"CTTextEncapsulationShape");
  if (v14)
  {
    v15 = v14;
    if (CFGetTypeID(v14) == TypeID)
    {
      v16 = CFGetTypeID(v15);
      if (v16 == CFNumberGetTypeID() || v16 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
        v17 = valuePtr;
      }

      else
      {
        if (v16 != CFStringGetTypeID())
        {
          goto LABEL_29;
        }

        v17 = CFStringGetIntValue(v15);
        valuePtr = v17;
      }

      if (v17 <= 2)
      {
        *(this + 2) = v17;
      }
    }
  }

LABEL_29:
  v18 = CFDictionaryGetValue(a2, @"CTTextEncapsulationStyle");
  if (v18)
  {
    v19 = v18;
    if (CFGetTypeID(v18) == TypeID)
    {
      v20 = CFGetTypeID(v19);
      if (v20 == CFNumberGetTypeID() || v20 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
        v21 = valuePtr;
      }

      else
      {
        if (v20 != CFStringGetTypeID())
        {
          goto LABEL_38;
        }

        v21 = CFStringGetIntValue(v19);
        valuePtr = v21;
      }

      if (v21 <= 1)
      {
        *(this + 3) = v21;
      }
    }
  }

LABEL_38:
  v22 = CFDictionaryGetValue(a2, @"CTTextEncapsulationLineWidth");
  if (v22 && (v23 = v22, CFGetTypeID(v22) == TypeID))
  {
    v26 = NAN;
    v24 = CFGetTypeID(v23);
    if (v24 == CFNumberGetTypeID() || v24 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v23, kCFNumberDoubleType, &v26);
      DoubleValue = v26;
    }

    else
    {
      if (v24 != CFStringGetTypeID())
      {
        goto LABEL_45;
      }

      DoubleValue = CFStringGetDoubleValue(v23);
      v26 = DoubleValue;
    }

    *v4 = DoubleValue;
  }

  else
  {
    v26 = NAN;
  }

LABEL_45:
  *(this + 3) = CFDictionaryGetValue(a2, @"CTTextEncapsulationEnclosureColor");
}

void TextEncapsulationData::TextEncapsulationData(TextEncapsulationData *this, NSTextEncapsulation *a2)
{
  *this = 65537;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x3FF0000000000000;
  *(this + 20) = 400;
  *(this + 6) = 0x3FF0000000000000;
  v4 = [(NSTextEncapsulation *)a2 scale];
  if (v4 <= 2)
  {
    *this = 0x20001u >> (8 * v4);
  }

  v5 = [(NSTextEncapsulation *)a2 platterSize];
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *(this + 1) = v6;
LABEL_8:
  v7 = [(NSTextEncapsulation *)a2 shape];
  if (v7 <= 2)
  {
    *(this + 2) = 0x20001u >> (8 * v7);
  }

  v8 = [(NSTextEncapsulation *)a2 style];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v9 = 1;
LABEL_14:
    *(this + 3) = v9;
  }

  [(NSTextEncapsulation *)a2 lineWeight];
  *(this + 1) = v10;
  *(this + 3) = [(NSTextEncapsulation *)a2 color];
  [(NSTextEncapsulation *)a2 minimumWidth];
  *(this + 2) = v11;
}

CFTypeID CTRunGetTypeID(void)
{
  if (TCFBase<TRun>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TRun>::GetTypeID(void)::once, 0, TCFBase<TRun>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TRun>::fTypeID;
}

unint64_t CTRunGetFont(unint64_t result)
{
  if (result)
  {
    return atomic_load_explicit((*(result + 40) + 56), memory_order_acquire);
  }

  return result;
}

uint64_t CTRunGetScript(uint64_t result)
{
  if (result)
  {
    return ScriptTagForScriptCode(*(*(result + 40) + 304));
  }

  return result;
}

CTRunStatus CTRunGetStatus(CTRunRef run)
{
  if (run)
  {
    v1 = *(run + 5);
    v2 = *(v1 + 224) & 1 | (2 * (*(v1 + 256) == 2));
    if ((*(v1 + 90) & 1) != 0 || *(v1 + 144) == 1)
    {
      v2 |= 4u;
    }

    v3 = *(v1 + 312);
    if (v3 && *(v3 + 56) != *(v3 + 64))
    {
      v2 |= 8u;
    }

    LODWORD(run) = v2 | *(v1 + 225) & 0x10;
  }

  return run;
}

const CGGlyph *__cdecl CTRunGetGlyphsPtr(const CGGlyph *run)
{
  if (run)
  {
    v1 = *(run + 5);
    if ((*(v1 + 225) & 8) != 0)
    {
      return 0;
    }

    else
    {
      return (*(*(v1 + 216) + 16) + 2 * *(v1 + 200));
    }
  }

  return run;
}

void CTRunGetGlyphs(CTRunRef run, CFRange range, CGGlyph *buffer)
{
  v18 = *MEMORY[0x1E69E9840];
  if (run && buffer)
  {
    v3 = *(run + 5);
    if ((*(v3 + 225) & 8) != 0)
    {
      v7 = *(v3 + 208);
      v8 = *(*(v3 + 216) + 16) + 2 * *(v3 + 200);
      v9 = *(v3 + 264);
      v16[0] = &unk_1EF257098;
      v16[1] = buffer;
      v16[2] = v8;
      v17 = v16;
      if (range.length)
      {
        length = range.length;
      }

      else
      {
        length = v7;
      }

      v11 = 0;
      if (v7 >= 1 && range.location >= 1)
      {
        v13 = 0;
        do
        {
          if (v9 == v11 || *(v8 + 2 * v11) != -1)
          {
            ++v13;
          }

          ++v11;
        }

        while (v11 < v7 && v13 < range.location);
      }

      if (v11 < v7 && length >= 1)
      {
        v15 = 0;
        do
        {
          if (v9 == v11 || *(v8 + 2 * v11) != 0xFFFF)
          {
            std::function<void ()(long,long)>::operator()(v17, v11, v15++);
          }

          ++v11;
        }

        while (v11 < v7 && v15 < length);
      }

      std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v16);
    }

    else if ((range.location & 0x8000000000000000) == 0)
    {
      v4 = *(v3 + 208);
      if (range.location + range.length <= v4)
      {
        v5 = v4 - range.location;
        if (range.length)
        {
          v5 = range.length;
        }

        if (v5)
        {
          v6 = (*(*(v3 + 216) + 16) + 2 * *(v3 + 200) + 2 * range.location);

          memmove(buffer, v6, 2 * v5);
        }
      }
    }
  }
}

const CGSize *__cdecl CTRunGetAdvancesPtr(const CGSize *run)
{
  if (run)
  {
    height = run[2].height;
    if ((*(*&height + 225) & 0x18) != 0)
    {
      return 0;
    }

    v2 = *(*&height + 216);
    v3 = *(v2 + 32);
    if (!v3 && *(v2 + 24))
    {
      return 0;
    }

    else
    {
      return (v3 + 16 * *(*&height + 200));
    }
  }

  return run;
}

void CTRunGetAdvances(CTRunRef run, CFRange range, CGSize *buffer)
{
  if (run)
  {
    v3 = buffer;
    if (buffer)
    {
      v4 = *(run + 5);
      if ((*(v4 + 225) & 0x18) != 0)
      {
        operator new();
      }

      if ((range.location & 0x8000000000000000) == 0)
      {
        v5 = *(v4 + 208);
        if (range.location + range.length <= v5)
        {
          length = v5 - range.location;
          if (range.length)
          {
            length = range.length;
          }

          v7 = *(v4 + 216);
          v8 = *(v7 + 32);
          if (v8 || (v10 = *(v7 + 24)) == 0)
          {
            if (length)
            {
              v9 = (v8 + 16 * *(v4 + 200) + 16 * range.location);

              memmove(buffer, v9, 16 * length);
            }
          }

          else if (length)
          {
            v11 = (v10 + 8 * *(v4 + 200) + 8 * range.location);
            v12 = 8 * length;
            do
            {
              v13 = *v11++;
              v3->width = v13;
              v3->height = 0.0;
              ++v3;
              v12 -= 8;
            }

            while (v12);
          }
        }
      }
    }
  }
}

const CFIndex *__cdecl CTRunGetStringIndicesPtr(const CFIndex *run)
{
  if (run)
  {
    v1 = run[5];
    if ((*(v1 + 225) & 8) != 0)
    {
      return 0;
    }

    else
    {
      return (*(*(v1 + 216) + 48) + 8 * *(v1 + 200));
    }
  }

  return run;
}

void CTRunGetStringIndices(CTRunRef run, CFRange range, CFIndex *buffer)
{
  v21 = *MEMORY[0x1E69E9840];
  if (run && buffer)
  {
    v3 = *(run + 5);
    if ((*(v3 + 225) & 8) != 0)
    {
      v8 = *(v3 + 208);
      v7 = *(v3 + 216);
      v9 = *(v3 + 200);
      v10 = *(v7 + 48) + 8 * v9;
      v11 = *(v3 + 264);
      v19[0] = &unk_1EF257170;
      v19[1] = buffer;
      v19[2] = v10;
      v20 = v19;
      v12 = *(v7 + 16) + 2 * v9;
      if (range.length)
      {
        length = range.length;
      }

      else
      {
        length = v8;
      }

      v14 = 0;
      if (v8 >= 1 && range.location >= 1)
      {
        v16 = 0;
        do
        {
          if (v11 == v14 || *(v12 + 2 * v14) != -1)
          {
            ++v16;
          }

          ++v14;
        }

        while (v14 < v8 && v16 < range.location);
      }

      if (v14 < v8 && length >= 1)
      {
        v18 = 0;
        do
        {
          if (v11 == v14 || *(v12 + 2 * v14) != 0xFFFF)
          {
            std::function<void ()(long,long)>::operator()(v20, v14, v18++);
          }

          ++v14;
        }

        while (v14 < v8 && v18 < length);
      }

      std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v19);
    }

    else if ((range.location & 0x8000000000000000) == 0)
    {
      v4 = *(v3 + 208);
      if (range.location + range.length <= v4)
      {
        v5 = v4 - range.location;
        if (range.length)
        {
          v5 = range.length;
        }

        if (v5)
        {
          v6 = (*(*(v3 + 216) + 48) + 8 * *(v3 + 200) + 8 * range.location);

          memmove(buffer, v6, 8 * v5);
        }
      }
    }
  }
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  if (run)
  {
    v1 = *(run + 5);
    run = *(v1 + 8);
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  result.length = v2;
  result.location = run;
  return result;
}

void CTRunGetMetrics(uint64_t a1, double *a2, double *a3, double *a4)
{
  if (a1)
  {
    v6 = *(a1 + 40);
    if (a2)
    {
      *a2 = (*(*v6 + 56))(*(a1 + 40));
    }

    if (a3)
    {
      *a3 = (*(*v6 + 64))(v6);
    }

    if (a4)
    {
      *a4 = (*(*v6 + 72))(v6);
    }
  }
}

CGRect CTRunGetImageBounds(CTRunRef run, CGContextRef context, CFRange range)
{
  if (!run)
  {
    goto LABEL_58;
  }

  location = range.location;
  v5 = *(run + 5);
  if ((*(v5 + 225) & 8) != 0)
  {
    v7 = *(v5 + 264);
    v6 = *(v5 + 208);
    v8 = *(*(v5 + 216) + 16);
    v9 = *(v5 + 200);
    if (v6 < 1 || range.location < 1)
    {
      location = 0;
    }

    else
    {
      v11 = range.location;
      location = 0;
      do
      {
        v13 = v7 == location || *(v8 + 2 * v9 + 2 * location) != -1;
        if (++location >= v6)
        {
          break;
        }

        v11 -= v13;
      }

      while (v11);
    }

    if (range.length)
    {
      v14 = 0;
      if (v6 > location && range.length >= 1)
      {
        v14 = 0;
        v15 = v7 - location;
        v16 = v8 + 2 * location + 2 * v9;
        do
        {
          v18 = v15 == v14 || *(v16 + 2 * v14) != -1;
          v19 = location + 1 + v14++;
          if (v19 >= v6)
          {
            break;
          }

          range.length -= v18;
        }

        while (range.length);
      }
    }

    else
    {
      v14 = v6 - location;
    }

    range.length = v14;
  }

  else
  {
    v6 = *(v5 + 208);
  }

  if (location < 0 || location + range.length > v6)
  {
    goto LABEL_58;
  }

  v20 = v6 - location;
  if (range.length)
  {
    length = range.length;
  }

  else
  {
    length = v20;
  }

  if (!length)
  {
    v33 = MEMORY[0x1E695F058];
LABEL_47:
    x = *v33;
    y = v33[1];
    width = v33[2];
    height = v33[3];
    goto LABEL_48;
  }

  v22 = *(v5 + 312);
  v23 = MEMORY[0x1E695F060];
  if (!v22)
  {
    v22 = MEMORY[0x1E695F060];
  }

  v24 = *v22;
  v45 = *(v22 + 8);
  v46 = v24;
  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 4) == 0)
  {
    goto LABEL_44;
  }

  v38 = *(v5 + 272);
  if (!v38)
  {
LABEL_58:
    v33 = MEMORY[0x1E695F050];
    goto LABEL_47;
  }

  TLine::GetLeftHangersGlyphCountAndWidth(*(v5 + 272), 0);
  if (v39 != 0.0)
  {
    v24 = v24 - v39;
    v46 = v24;
  }

  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  while (v40 != v41)
  {
    v42 = *(*v40 + 40);
    if (v42 == v5)
    {
      break;
    }

    v43 = *(v42 + 192);
    v44 = *(v42 + 312);
    if (!v44)
    {
      v44 = v23;
    }

    v24 = v24 + v43 + *v44;
    v46 = v24;
    v40 += 8;
  }

LABEL_44:
  x = (*(*v5 + 104))(v5, context, location, length, &v46, &v45);
  y = v26;
  width = v28;
  height = v30;
  if (context)
  {
    TextPosition = CGContextGetTextPosition(context);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v48 = CGRectOffset(v47, TextPosition.x, TextPosition.y);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
  }

LABEL_48:
  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

double CTRunGetBackgroundBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F050];
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 272);
  if (!v4)
  {
    return *MEMORY[0x1E695F050];
  }

  v5 = a2;
  if ((*(v3 + 225) & 8) != 0)
  {
    v7 = *(v3 + 264);
    v6 = *(v3 + 208);
    v8 = *(*(v3 + 216) + 16);
    v9 = *(v3 + 200);
    if (v6 < 1 || a2 < 1)
    {
      v5 = 0;
    }

    else
    {
      v11 = a2;
      v5 = 0;
      do
      {
        v13 = v7 == v5 || *(v8 + 2 * v9 + 2 * v5) != -1;
        if (++v5 >= v6)
        {
          break;
        }

        v11 -= v13;
      }

      while (v11);
    }

    if (a3)
    {
      v14 = 0;
      if (v6 > v5 && a3 >= 1)
      {
        v14 = 0;
        v15 = v7 - v5;
        v16 = v8 + 2 * v5 + 2 * v9;
        do
        {
          v18 = v15 == v14 || *(v16 + 2 * v14) != -1;
          v19 = v5 + 1 + v14++;
          if (v19 >= v6)
          {
            break;
          }

          a3 -= v18;
        }

        while (a3);
      }
    }

    else
    {
      v14 = v6 - v5;
    }

    a3 = v14;
  }

  else
  {
    v6 = *(v3 + 208);
  }

  if (v5 < 0 || v5 + a3 > v6)
  {
    return *MEMORY[0x1E695F050];
  }

  v20 = v6 - v5;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v3 + 312);
  v23 = MEMORY[0x1E695F060];
  if (!v22)
  {
    v22 = MEMORY[0x1E695F060];
  }

  v24 = *v22;
  TLine::GetLeftHangersGlyphCountAndWidth(*(v3 + 272), 0);
  if (v25 != 0.0)
  {
    v24 = v24 - v25;
  }

  for (i = *(v4 + 16); i != *(v4 + 24); i += 8)
  {
    v27 = *(*i + 40);
    if (v27 == v3)
    {
      break;
    }

    v28 = *(v27 + 192);
    v29 = *(v27 + 312);
    if (!v29)
    {
      v29 = v23;
    }

    v24 = v24 + v28 + *v29;
  }

  v30 = *(v3 + 216);
  v31 = *(v30 + 32);
  if (v31 || (v34 = *(v30 + 24)) == 0)
  {
    v32 = 0;
    v33 = (v31 + 16 * *(v3 + 200));
  }

  else
  {
    v33 = (v34 + 8 * *(v3 + 200));
    v32 = 1;
  }

  if (v5 >= 1)
  {
    v35 = v33;
    v36 = v33;
    v37 = v5;
    do
    {
      if (v32)
      {
        v38 = v35;
      }

      else
      {
        v38 = v36;
      }

      v24 = v24 + *v38;
      v36 += 2;
      ++v35;
      --v37;
    }

    while (v37);
  }

  v39 = *(atomic_load_explicit((v3 + 56), memory_order_acquire) + 40);
  v48 = NAN;
  v49 = NAN;
  if ((*(v4 + 154) & 0x100) != 0)
  {
    v40 = v39 + 56;
    if (!*(v39 + 56))
    {
      TFont::InitStrikeMetrics(v39);
    }

    v49 = *(v40 + 8);
    if (!*(v39 + 56))
    {
      TFont::InitStrikeMetrics(v39);
    }
  }

  else
  {
    TFont::GetDefaultMetrics(v39, &v49, &v48, &v47);
    TFont::GetWindowsDescent(v39);
  }

  TRun::GetCrossStreamMinMax(v3);
  if (v21 >= 1)
  {
    v41 = v21 + v5;
    v42 = &v33[2 * v5];
    v43 = 0.0;
    v44 = &v33[v5];
    do
    {
      if (v32)
      {
        v45 = v44;
      }

      else
      {
        v45 = v42;
      }

      v43 = v43 + *v45;
      ++v5;
      v42 += 2;
      ++v44;
    }

    while (v5 < v41);
  }

  return v24;
}

void CTRunDrawDecorations(uint64_t a1, CGContextRef c, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a3;
    v6 = *(a1 + 40);
    if ((v6[14].n128_u8[1] & 8) != 0)
    {
      v8 = v6[16].n128_u64[1];
      v7 = v6[13].n128_i64[0];
      v9 = *(v6[13].n128_u64[1] + 16);
      v10 = v6[12].n128_u64[1];
      if (v7 < 1 || a3 < 1)
      {
        v4 = 0;
      }

      else
      {
        v12 = a3;
        v4 = 0;
        do
        {
          v14 = v8 == v4 || *(v9 + 2 * v10 + 2 * v4) != -1;
          if (++v4 >= v7)
          {
            break;
          }

          v12 -= v14;
        }

        while (v12);
      }

      if (a4)
      {
        v15 = 0;
        if (v7 > v4 && a4 >= 1)
        {
          v15 = 0;
          v16 = v8 - v4;
          v17 = v9 + 2 * v4 + 2 * v10;
          do
          {
            v19 = v16 == v15 || *(v17 + 2 * v15) != -1;
            v20 = v4 + 1 + v15++;
            if (v20 >= v7)
            {
              break;
            }

            a4 -= v19;
          }

          while (a4);
        }
      }

      else
      {
        v15 = v7 - v4;
      }

      a4 = v15;
    }

    else
    {
      v7 = v6[13].n128_i64[0];
    }

    if ((v4 & 0x8000000000000000) == 0 && v4 + a4 <= v7)
    {
      v21 = v7 - v4;
      if (a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = v21;
      }

      TextPosition = CGContextGetTextPosition(c);
      v24 = v6[11].n128_u8[1];
      if ((v24 & 4) != 0)
      {
        v25 = 0;
        v26 = 0;
        v29 = xmmword_184778400;
        v30 = unk_184778410;
        v31 = xmmword_184778420;
        v32 = -1;
        v27 = __const__ZN10TDecorator14DrawDecorationEP9CGContextRK4TRun7CFRange7CGPoint_c;
        v28 = unk_1847783F0;
        TLineDrawContext::TLineDrawContext(&v27, c);
        v33.location = v4;
        v33.length = v22;
        TDecorator::DrawDecoration(&v25, &v27, v6, v33, TextPosition);
        v24 = v6[11].n128_u8[1];
      }

      if ((v24 & 0x10) != 0)
      {
        v25 = 1;
        v26 = 0;
        v29 = xmmword_184778400;
        v30 = unk_184778410;
        v31 = xmmword_184778420;
        v32 = -1;
        v27 = __const__ZN10TDecorator14DrawDecorationEP9CGContextRK4TRun7CFRange7CGPoint_c;
        v28 = unk_1847783F0;
        TLineDrawContext::TLineDrawContext(&v27, c);
        v34.location = v4;
        v34.length = v22;
        TDecorator::DrawDecoration(&v25, &v27, v6, v34, TextPosition);
      }
    }
  }
}

double CTRunGetInitialAdvance(uint64_t a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  v1 = *(a1 + 40);
  v2 = MEMORY[0x1E695F060];
  if (*(v1 + 312))
  {
    v2 = *(v1 + 312);
  }

  v3 = *v2;
  if ((*(v1 + 225) & 0x10) != 0)
  {
    v4 = *(v1 + 208);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(v1 + 216);
      v7 = *(v1 + 200);
      v8 = v6[2] + 2 * v7;
      v9 = -v7;
      while (*(v8 + 2 * v5) == -1 && v5 != *(v1 + 264))
      {
        ++v5;
        --v9;
        if (v4 == v5)
        {
          return v3;
        }
      }

      [v6 originAtIndex:-v9];
      return v3 + v10;
    }
  }

  return v3;
}

double CTRunGetInitialBaseAdvance(uint64_t a1)
{
  v1 = MEMORY[0x1E695F060];
  if (a1 && *(*(a1 + 40) + 312))
  {
    v1 = *(*(a1 + 40) + 312);
  }

  return *v1;
}

uint64_t CTRunGetAttachmentCounts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = a4;
    if (a4)
    {
      v5 = a2;
      v6 = *(result + 40);
      if ((*(v6 + 225) & 8) != 0)
      {
        v10 = *(v6 + 264);
        v19[0] = &unk_1EF2571B8;
        v19[1] = a4;
        v19[2] = v6 + 192;
        v20 = v19;
        v11 = *(v6 + 208);
        v12 = *(*(v6 + 216) + 16) + 2 * *(v6 + 200);
        if (a3)
        {
          v13 = a3;
        }

        else
        {
          v13 = v11;
        }

        v14 = 0;
        if (v11 >= 1 && a2 >= 1)
        {
          v16 = 0;
          do
          {
            if (v10 == v14 || *(v12 + 2 * v14) != -1)
            {
              ++v16;
            }

            ++v14;
          }

          while (v14 < v11 && v16 < a2);
        }

        if (v14 < v11 && v13 >= 1)
        {
          v18 = 0;
          do
          {
            if (v10 == v14 || *(v12 + 2 * v14) != 0xFFFF)
            {
              std::function<void ()(long,long)>::operator()(v20, v14, v18++);
            }

            ++v14;
          }

          while (v14 < v11 && v18 < v13);
        }

        return std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v19);
      }

      else if ((a2 & 0x8000000000000000) == 0)
      {
        v7 = *(v6 + 208);
        if (a2 + a3 <= v7)
        {
          v8 = v7 - a2;
          if (a3)
          {
            v9 = a3;
          }

          else
          {
            v9 = v8;
          }

          if (v9 >= 1)
          {
            do
            {
              result = [*(v6 + 216) attachmentCountAtIndex:v5 + *(v6 + 200)];
              *v4++ = result;
              ++v5;
              --v9;
            }

            while (v9);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTRunGetAttachmentCountsPtr(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if ((*(v1 + 225) & 2) != 0)
    {
      return *(*(v1 + 216) + 56);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CTRunGetPropertiesPtr(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if ((*(v1 + 225) & 8) == 0)
  {
    return *(*(v1 + 216) + 40) + 4 * *(v1 + 200);
  }

  NonDeletedGlyphCount = TRun::GetNonDeletedGlyphCount(*(a1 + 40));
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  BytePtr = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 4 * NonDeletedGlyphCount);
    CFAutorelease(BytePtr);
    BytePtr = CFDataGetBytePtr(BytePtr);
    v6 = *(v1 + 208);
    v5 = *(v1 + 216);
    v7 = *(v1 + 200);
    v8 = *(v5 + 40) + 4 * v7;
    v9 = *(v1 + 264);
    v16[0] = &unk_1EF257200;
    v16[1] = BytePtr;
    v16[2] = v8;
    v17 = v16;
    if (NonDeletedGlyphCount)
    {
      v10 = NonDeletedGlyphCount;
    }

    else
    {
      v10 = v6;
    }

    if (v6 >= 1 && v10 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = *(v5 + 16) + 2 * v7;
      do
      {
        if (v9 == v13 || *(v14 + 2 * v13) != 0xFFFF)
        {
          std::function<void ()(long,long)>::operator()(v17, v13, v12++);
        }

        ++v13;
      }

      while (v13 < v6 && v12 < v10);
    }

    std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v16);
  }

  return BytePtr;
}

void *CTRunGetStretchFactors(void *result, CFRange a2, CGSize *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result && a3)
  {
    result = result[5];
    if ((*(result + 225) & 8) != 0)
    {
      v5 = result[33];
      v14[0] = &unk_1EF257248;
      v14[1] = result;
      v14[2] = a3;
      v15 = v14;
      v6 = result[26];
      v7 = *(result[27] + 16) + 2 * result[25];
      if (a2.length)
      {
        length = a2.length;
      }

      else
      {
        length = result[26];
      }

      v9 = 0;
      if (v6 >= 1 && a2.location >= 1)
      {
        v11 = 0;
        do
        {
          if (v5 == v9 || *(v7 + 2 * v9) != -1)
          {
            ++v11;
          }

          ++v9;
        }

        while (v9 < v6 && v11 < a2.location);
      }

      if (v9 < v6 && length >= 1)
      {
        v13 = 0;
        do
        {
          if (v5 == v9 || *(v7 + 2 * v9) != 0xFFFF)
          {
            std::function<void ()(long,long)>::operator()(v15, v9, v13++);
          }

          ++v9;
        }

        while (v9 < v6 && v13 < length);
      }

      return std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v14);
    }

    else if ((a2.location & 0x8000000000000000) == 0)
    {
      v3 = result[26];
      if (a2.location + a2.length <= v3)
      {
        v4 = v3 - a2.location;
        if (!a2.length)
        {
          a2.length = v4;
        }

        return TRun::GetStretchFactors(result, a2, a3);
      }
    }
  }

  return result;
}

double CTRunSyncWithStorage(uint64_t a1)
{
  if (a1)
  {
    return TStorageRange::SyncWithStorage((*(a1 + 48) + 192));
  }

  return result;
}

uint64_t CTRunGetGlyphStorage(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    v2 = *(result + 40);
    if (a2)
    {
      *a2 = *(v2 + 200);
    }

    return *(v2 + 216);
  }

  return result;
}

CGAffineTransform *__cdecl CTRunGetTextMatrix(CGAffineTransform *__return_ptr retstr, CGAffineTransform *run)
{
  v2 = MEMORY[0x1E695EFD0];
  if (run)
  {
    ty = run->ty;
    if (*(*&ty + 144))
    {
      v2 = (*&ty + 96);
    }
  }

  v4 = v2[1];
  *&retstr->a = *v2;
  *&retstr->c = v4;
  *&retstr->tx = v2[2];
  return run;
}

unint64_t CTRunCopyRubyAnnotationLineForPosition(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(a1 + 40) + 136))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTRunCopyEncapsulationPath(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(a1 + 40) + 128))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

__n128 std::__function::__func<CTRunGetGlyphs::$_0,std::allocator<CTRunGetGlyphs::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257098;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetAdvances::$_0,std::allocator<CTRunGetAdvances::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2570E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<CTRunGetAdvances::$_0,std::allocator<CTRunGetAdvances::$_0>,void ()(long,long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 24);
  if (*(a1 + 16) == 1)
  {
    v7 = (v6 + 8 * v4);
    v8 = 0;
  }

  else
  {
    v7 = (v6 + 16 * v4);
    v8 = v7[1];
  }

  v9 = *v7;
  v10 = (*(a1 + 8) + 16 * v5);
  *v10 = v9;
  v10[1] = v8;
  v11 = *(a1 + 32);
  if ((*(v11 + 33) & 0x10) != 0)
  {
    [*(v11 + 24) originAtIndex:*(v11 + 8) + v4];
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    result = *MEMORY[0x1E695EFF8];
    v15 = v13;
  }

  if (result != v12 || v15 != v13)
  {
    v17 = (*(a1 + 8) + 16 * v5);
    if (v5 >= 1)
    {
      v18 = v15 + *(v17 - 1);
      *(v17 - 2) = result + *(v17 - 2);
      *(v17 - 1) = v18;
    }

    result = *v17 - result;
    v19 = v17[1] - v15;
    *v17 = result;
    v17[1] = v19;
  }

  return result;
}

__n128 std::__function::__func<CTRunGetPositions::$_0,std::allocator<CTRunGetPositions::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetPositions::$_0,std::allocator<CTRunGetPositions::$_0>,void ()(long,long)>::operator()(uint64_t a1, void *a2, void *a3)
{
  result = *(*(a1 + 16) + 16 * *a2);
  *(*(a1 + 8) + 16 * *a3) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetStringIndices::$_0,std::allocator<CTRunGetStringIndices::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257170;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetAttachmentCounts::$_0,std::allocator<CTRunGetAttachmentCounts::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2571B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CTRunGetAttachmentCounts::$_0,std::allocator<CTRunGetAttachmentCounts::$_0>,void ()(long,long)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  result = [*(*(a1 + 16) + 24) attachmentCountAtIndex:*(*(a1 + 16) + 8) + *a2];
  *(*(a1 + 8) + 8 * v4) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetPropertiesPtr::$_0,std::allocator<CTRunGetPropertiesPtr::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetStretchFactors::$_0,std::allocator<CTRunGetStretchFactors::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<CTRunGetStretchFactors::$_0,std::allocator<CTRunGetStretchFactors::$_0>,void ()(long,long)>::operator()(uint64_t a1, CFIndex *a2, void *a3)
{
  v5.location = *a2;
  v3 = (*(a1 + 16) + 16 * *a3);
  v5.length = 1;
  return TRun::GetStretchFactors(*(a1 + 8), v5, v3);
}

__n128 std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_0,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_0>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257290;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_0,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_0>,void ()(long,long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a2;
  v5 = *a3;
  v6 = *(result + 24);
  if (*(result + 16) == 1)
  {
    v7 = (v6 + 8 * v4);
    v8 = 0;
  }

  else
  {
    v7 = (v6 + 16 * v4);
    v8 = v7[1];
  }

  v9 = *v7;
  v10 = (*(result + 8) + 16 * v5);
  *v10 = v9;
  v10[1] = v8;
  v11 = *(result + 40);
  if ((*(v11 + 33) & 0x10) != 0)
  {
    result = [*(v11 + 24) originAtIndex:*(v11 + 8) + v4];
    *(&v12 + 1) = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
  }

  *(*(v3 + 32) + 16 * v5) = v12;
  return result;
}

__n128 std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_1,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_1>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2572D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_1,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_1>,void ()(long,long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 24);
  if (*(a1 + 16) == 1)
  {
    v6 = (v5 + 8 * v3);
    v7 = 0;
  }

  else
  {
    v6 = (v5 + 16 * v3);
    v7 = v6[1];
  }

  v8 = *v6;
  v9 = (*(a1 + 8) + 16 * v4);
  *v9 = v8;
  v9[1] = v7;
  result = *MEMORY[0x1E695EFF8];
  *(*(a1 + 32) + 16 * v4) = *MEMORY[0x1E695EFF8];
  return result;
}

__n128 std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_2,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_2>,void ()(long,long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257320;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

CFTypeID CTFrameGetTypeID(void)
{
  if (TCFBase<TFrame>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TFrame>::GetTypeID(void)::once, 0, TCFBase<TFrame>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TFrame>::fTypeID;
}

CFRange CTFrameGetStringRange(CTFrameRef frame)
{
  if (frame)
  {
    v1 = *(frame + 5);
    frame = *v1;
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  result.length = v2;
  result.location = frame;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  if (frame)
  {
    v1 = *(frame + 5);
    frame = *(v1 + 16);
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  result.length = v2;
  result.location = frame;
  return result;
}

unint64_t CTFrameCopyVisibleString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  TFrame::CopyVisibleString(*(a1 + 40), &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CGPathRef CTFrameGetPath(CGPathRef frame)
{
  if (frame)
  {
    return atomic_load_explicit((*(frame + 5) + 80), memory_order_acquire);
  }

  return frame;
}

CFDictionaryRef CTFrameGetFrameAttributes(CFDictionaryRef frame)
{
  if (frame)
  {
    return atomic_load_explicit((*(frame + 5) + 88), memory_order_acquire);
  }

  return frame;
}

CFArrayRef CTFrameGetLines(CFArrayRef frame)
{
  if (frame)
  {
    return atomic_load_explicit((*(frame + 5) + 104), memory_order_acquire);
  }

  return frame;
}

uint64_t TCFBase<TFrame>::CreateTypeID()
{
  {
    TCFBase<TFrame>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED567048 = "CTFrame";
    qword_1ED567050 = 0;
    unk_1ED567058 = 0;
    qword_1ED567060 = TCFBase<TFrame>::ClassDestruct;
    qword_1ED567068 = TCFBase<TFrame>::ClassEqual;
    qword_1ED567070 = TCFBase<TFrame>::ClassHash;
    unk_1ED567078 = 0;
    qword_1ED567080 = TCFBase<TFrame>::ClassDebug;
    unk_1ED567088 = 0;
    qword_1ED567090 = 0;
    unk_1ED567098 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TFrame>::fTypeID = result;
  return result;
}

void *TCFBase<TFrame>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

__CFString *TCFBase<TFrame>::ClassDebug(uint64_t a1)
{
  result = TFrame::DebugDescription(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTFrame", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFTypeID CTTypesetterGetTypeID(void)
{
  if (TCFBase<TTypesetter>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TTypesetter>::GetTypeID(void)::once, 0, TCFBase<TTypesetter>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TTypesetter>::fTypeID;
}

uint64_t TypesetterSuggestClusterBreak(const __CTTypesetter *a1, uint64_t a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v8 = 0;
  v5 = TTypesetter::SuggestClusterBreak(v4, a2, v7, a3, a4);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v7);
  return v5;
}

unint64_t CTTypesetterCreateWithUniCharProvider(const unsigned __int16 *(*a1)(uint64_t, uint64_t *, const __CFDictionary **, void *), void (*a2)(const unsigned __int16 *, void *), void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = TCFBase<TTypesetter>::Allocate();
  if (v6)
  {
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TTypesetterUniChar::TTypesetterUniChar((v6 + 6), a1, a2, a3);
  }

  v9 = 0;
  v7 = atomic_exchange(&v9, 0);

  return v7;
}

unint64_t CTTypesetterCreateWithUniCharProviderAndOptions(const unsigned __int16 *(*a1)(uint64_t, uint64_t *, const __CFDictionary **, void *), void (*a2)(const unsigned __int16 *, void *), void *a3, const __CFDictionary *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = TCFBase<TTypesetter>::Allocate();
  if (v8)
  {
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TTypesetterUniChar::TTypesetterUniChar((v8 + 6), a1, a2, a3, a4);
  }

  v11 = 0;
  if (atomic_load_explicit(&v11, memory_order_acquire) && (*(*(atomic_load_explicit(&v11, memory_order_acquire) + 40) + 257) & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = atomic_exchange(&v11, 0);
  }

  return v9;
}

unint64_t CTTypesetterCreateWithRunArrayAndOptions(const __CFArray *a1, const __CFString *a2, const void *(*a3)(const __CTRun *, const __CFString *, void *), void *a4, const __CFDictionary *a5)
{
  v10 = TCFBase<TTypesetter>::Allocate();
  if (v10)
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 6;
    TTypesetter::TTypesetter((v10 + 6), a1, a2, a3, a4, a5);
  }

  v13 = 0;
  if (atomic_load_explicit(&v13, memory_order_acquire) && (*(*(atomic_load_explicit(&v13, memory_order_acquire) + 40) + 257) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = atomic_exchange(&v13, 0);
  }

  return v11;
}

void *TCFBase<TTypesetter>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

CFTypeID CTFramesetterGetTypeID(void)
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once_f(&_MergedGlobals_8, 0, TCFBase<TFramesetter>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return qword_1ED567838;
}

CTFramesetterRef CTFramesetterCreateWithTypesetter(CTTypesetterRef typesetter)
{
  v1 = typesetter;
  if (typesetter)
  {
    v2 = TCFBase<TFramesetter>::Allocate();
    v3 = v2;
    if (v2)
    {
      v2[2] = 0;
      v2[3] = 0;
      v2[4] = 0;
      v2[5] = v2 + 6;
      v2[6] = &unk_1EF257368;
      v2[7] = v1;
    }

    v5 = v3;
    v1 = atomic_exchange(&v5, 0);
  }

  return v1;
}

unint64_t CTFramesetterCreateWithUniCharProvider(const unsigned __int16 *(*a1)(uint64_t, uint64_t *, const __CFDictionary **, void *), void (*a2)(const unsigned __int16 *, void *), void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = TCFBase<TFramesetter>::Allocate();
  if (v6)
  {
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = v6 + 6;
    v6[6] = &unk_1EF257490;
    TTypesetterUniChar::TTypesetterUniChar((v6 + 7), a1, a2, a3);
  }

  v9 = 0;
  v7 = atomic_exchange(&v9, 0);

  return v7;
}

CTTypesetterRef CTFramesetterGetTypesetter(CTTypesetterRef framesetter)
{
  if (framesetter)
  {
    return (*(**(framesetter + 5) + 24))();
  }

  return framesetter;
}

uint64_t TCFBase<TFramesetter>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  if ((atomic_load_explicit(&qword_1ED567840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567840))
  {
    qword_1ED567848 = 0;
    unk_1ED567850 = "CTFramesetter";
    qword_1ED567858 = 0;
    unk_1ED567860 = 0;
    qword_1ED567868 = TCFBase<TFramesetter>::ClassDestruct;
    qword_1ED567870 = TCFBase<TFramesetter>::ClassEqual;
    qword_1ED567878 = TCFBase<TFramesetter>::ClassHash;
    unk_1ED567880 = 0;
    qword_1ED567888 = TCFBase<TFramesetter>::ClassDebug;
    unk_1ED567890 = 0;
    qword_1ED567898 = 0;
    unk_1ED5678A0 = 0;
    __cxa_guard_release(&qword_1ED567840);
  }

  result = _CFRuntimeRegisterClass();
  qword_1ED567838 = result;
  return result;
}

void *TCFBase<TFramesetter>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

void TCFBase_NEW<CTFrame,CGPath const*&,__CFDictionary const*&>(void **a1@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  v6 = TCFBase<TFrame>::Allocate();
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = *a2;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TFrame::TFrame((v6 + 6), v8, v9);
  }

  *a3 = v7;
}

void TFramesetter::FrameInPath(TFramesetter *this, TFrame *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 36);
  v7 = (*(*this + 16))(this);
  atomic_load_explicit(a2 + 10, memory_order_acquire);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[11] = v8;
  v27[12] = v8;
  v27[9] = v8;
  v27[10] = v8;
  v27[7] = v8;
  v27[8] = v8;
  v27[5] = v8;
  v27[6] = v8;
  v27[3] = v8;
  v27[4] = v8;
  v27[1] = v8;
  v27[2] = v8;
  v27[0] = v8;
  TClippingPathInfo::TClippingPathInfo(v27, atomic_load_explicit(a2 + 12, memory_order_acquire), v6 != 0);
  v20 = *(a2 + 7);
  v21 = *(a2 + 6);
  v18 = *(a2 + 9);
  v19 = *(a2 + 8);
  if (location)
  {
    IsParagraphSeparator = TCharStream::IsParagraphSeparator(*v7, location - 1);
  }

  else
  {
    IsParagraphSeparator = 1;
  }

  v10 = *(a2 + 162);
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  __p = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v12 = v20;
  v11 = v21;
  v14 = v18;
  v13 = v19;
  if (v6)
  {
    CGRectGetWidth(*&v11);
  }

  else
  {
    CGRectGetHeight(*&v11);
  }

  if (length >= 1)
  {
    TLine::GetAttributesAtCharIndex(v7, location);
    TFramesetter::GetCharMetricsForLine(v22, this, location, location, 1, IsParagraphSeparator, (v6 == 0) & v10);
    v22[6] = v22[2];
    v22[7] = v22[1];
    v22[0] = v22[0] + v22[3];
    v22[8] = v22[0];
    operator new();
  }

  if (v6)
  {
    explicit = 0;
  }

  else
  {
    explicit = atomic_load_explicit(&v23, memory_order_acquire);
  }

  TFrame::SetLines(a2, theArray, &__p, explicit, location, length, location, 0);

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  TClippingPathInfo::~TClippingPathInfo(v27);
}

TFramesetter::TPathFrameLinesetter *TFramesetter::TPathFrameLinesetter::TPathFrameLinesetter(TFramesetter::TPathFrameLinesetter *this, const TFramesetter *a2, const CGPath *a3, double a4, char a5, const TClippingPathInfo *a6, char a7, CGRect a8, double a9, double a10, CFRange a11, const TAttributes *a12, BOOL a13, BOOL a14, BOOL a15)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 24) = a5;
  *(this + 4) = a6;
  *(this + 40) = a8;
  *(this + 72) = a11;
  *(this + 11) = a9;
  *(this + 12) = a10;
  *(this + 13) = a12;
  if (a12)
  {
    v17 = *(a12 + 16);
    if (v17)
    {
      LOBYTE(v17) = TParagraphStyle::GetLineBreakMode(v17, a2);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  *(this + 112) = v17;
  *(this + 113) = a13;
  *(this + 114) = a14;
  *(this + 115) = a15;
  *(this + 15) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 160) = 0;
  *(this + 161) = a7;
  v18 = *(this + 112);
  *(this + 162) = v18 != 1;
  *(this + 163) = v18 > 1;
  *(this + 21) = TFramesetter::GetHeadIndent(*(this + 13), *(this + 114));
  v20 = *(this + 13);
  TailIndent = 0.0;
  if (v20)
  {
    v22 = *(v20 + 128);
    if (v22)
    {
      TailIndent = TParagraphStyle::GetTailIndent(v22, v19);
    }
  }

  *(this + 22) = TailIndent;
  return this;
}

const __CFArray *TFramesetter::TPathFrameLinesetter::LayoutLines(uint64_t a1, uint64_t a2, _BYTE *a3, double *a4, void *a5, double *a6)
{
  v109 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = *a4;
  v9 = (a1 + 184);
  *a4 = 0.0;
  *a5 = 0;
  *a6 = 0.0;
  v10 = *(a1 + 80);
  v98.location = *(a1 + 72);
  v11 = *(a1 + 115);
  v12 = *(a1 + 8);
  v13 = *(v9 - 21);
  v14 = *(v9 - 160);
  v89 = v9;
  v15 = *(v9 - 19);
  if (v11 == 1)
  {
    RectArrayFromPathVertical = CreateRectArrayFromPathVertical(v12, v14, v15, v13, *(a1 + 40) + *(a1 + 96), *(a1 + 40) + *(a1 + 88));
  }

  else
  {
    RectArrayFromPathVertical = CreateRectArrayFromPath(v12, v14, v15, 0, v13, *(a1 + 48) + *(a1 + 88), *(a1 + 48) + *(a1 + 96));
  }

  v17 = RectArrayFromPathVertical;
  v18 = RectArrayFromPathVertical;
  v19 = v18;
  if (!v18)
  {

    goto LABEL_88;
  }

  Count = CFArrayGetCount(v18);

  if (!Count)
  {
    v19 = 0;
    goto LABEL_88;
  }

  v97 = v10;
  v21 = 0;
  v93 = (a1 + 120);
  v22 = 1;
  v84 = a2;
  v88 = v17;
  while (1)
  {
    v23 = v21;
    location = v98.location;
    std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v106, a2);
    v25 = *(a1 + 176);
    MaxY = CGRectGetMaxY(*(a1 + 40));
    if (*(a1 + 115))
    {
      v27 = MaxY - *(a1 + 168);
      v28 = v97;
      if (v25 <= 0.0)
      {
        v30 = CGRectGetMinY(*(a1 + 40)) - v25;
        goto LABEL_22;
      }

      v29 = v25;
    }

    else
    {
      if (v21)
      {
        v29 = *(a1 + 168);
      }

      else
      {
        v29 = v25;
      }

      if (v21)
      {
        v27 = v25;
      }

      else
      {
        v27 = *(a1 + 168);
      }

      v28 = v97;
      if (v29 <= 0.0)
      {
        v30 = v29 + CGRectGetWidth(*(a1 + 40));
        goto LABEL_22;
      }
    }

    v30 = *(a1 + 115) ? MaxY - v29 : v29;
LABEL_22:
    v96 = (*(**a1 + 16))();
    v31 = CFArrayGetCount(v17);
    if (v28 < 1 || (v32 = v31, v31 < 1))
    {
      *(a1 + 160) = 0;
      std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v106);
      v81 = v22;
      v21 = v23;
      goto LABEL_78;
    }

    v92 = 0;
    v33 = 0;
    v34 = 0;
    v86 = v98.location;
    v85 = v23;
    v87 = v22;
    v95 = v22;
    v35 = v23;
    v36 = v96;
    while (1)
    {
      v37.width = NAN;
      v37.height = NAN;
      rect.origin = v37;
      rect.size = v37;
      v38 = v34;
      if ((*(a1 + 115) & 1) == 0)
      {
        if (v35)
        {
          v38 = v32 + ~v34;
        }

        else
        {
          v38 = v34;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v17, v38);
      CGRectMakeWithDictionaryRepresentation(ValueAtIndex, &rect);
      x = rect.origin.x;
      if (*(a1 + 115) == 1)
      {
        y = rect.origin.y;
        width = rect.size.width;
        height = rect.size.height;
        v44 = CGRectGetMaxY(*&x);
        v45 = rect.origin.y;
        if (rect.origin.y >= v27)
        {
          goto LABEL_70;
        }

        v46 = v44;
        v47 = rect.size.height;
        if (v44 > v27)
        {
          v47 = rect.size.height - (v44 - v27);
          rect.size.height = v47;
        }

        if (rect.origin.y < v30)
        {
          v47 = v47 - (v30 - rect.origin.y);
          rect.size.height = v47;
          rect.origin.y = v30;
          v45 = v30;
        }

        v48 = rect.origin.x;
        v49 = rect.size.width;
        v50 = CGRectGetHeight(*(&v45 - 1));
      }

      else
      {
        v46 = rect.origin.x - *(a1 + 40);
        v51 = rect.origin.y;
        v52 = rect.size.width;
        v53 = rect.size.height;
        v54 = v46 + CGRectGetWidth(*&x);
        if (v54 <= v27)
        {
          goto LABEL_70;
        }

        v55 = rect.size.width;
        if (v46 < v27)
        {
          v55 = rect.size.width - (v27 - v46);
          rect.size.width = v55;
          rect.origin.x = v27;
          v46 = v27;
        }

        if (v54 > v30)
        {
          v55 = v55 - (v54 - v30);
          rect.size.width = v55;
        }

        v56 = rect.origin.x;
        v57 = rect.origin.y;
        v58 = rect.size.height;
        v50 = CGRectGetWidth(*(&v55 - 2));
      }

      v59 = v50;
      if (v50 > 0.0)
      {
        break;
      }

LABEL_70:
      if (!v33 && v28 >= 1 && ++v34 < v32)
      {
        continue;
      }

      v97 = v28;
      v21 = v35;
      *(a1 + 160) = v92 & 1;
      std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v106);
      v80 = v98.location;
      a2 = v84;
LABEL_74:
      LOBYTE(v22) = v87;
      location = v86;
      LOBYTE(v23) = v85;
      v81 = v95;
      goto LABEL_75;
    }

    v97 = v28;
    v21 = v35;
    if (*(a1 + 163))
    {
      v60 = 1.79769313e308;
    }

    else
    {
      v60 = v50;
    }

    if (*(a1 + 115))
    {
      v61 = MaxY - v46;
    }

    else
    {
      v61 = v46;
    }

    if (*(a1 + 162))
    {
      v62 = v108;
      std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v108, v106);
      v63 = TTypesetter::SuggestLineBreak(v36, v98.location, v108, v60, v61);
    }

    else
    {
      v62 = v107;
      std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v107, v106);
      v63 = TTypesetter::SuggestClusterBreak(v36, v98.location, v107, v60, v61);
    }

    v65 = v63;
    *a3 = v64;
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v62);
    if (!v65 && CFArrayGetCount(atomic_load_explicit(v93, memory_order_acquire)))
    {
      v35 = v21;
      v28 = v97;
      goto LABEL_70;
    }

    v66 = a3;
    v33 = *a3 != 0;
    if (v65 >= v97)
    {
      v67 = v97;
    }

    else
    {
      v67 = v65;
    }

    v104 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v36, &v98.length);
    v104 = atomic_exchange(&v98.length, 0);

    if (!atomic_load_explicit(&v104, memory_order_acquire))
    {

      *(a1 + 160) = v92 & 1;
      std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v106);
      v80 = v98.location;
      a3 = v66;
      a2 = v84;
      v17 = v88;
      goto LABEL_74;
    }

    v68 = *(atomic_load_explicit(&v104, memory_order_acquire) + 40);
    v110.location = v98.location;
    v110.length = v67;
    TTypesetter::FillLine(v36, v68, v110, v60, v61);
    v103 = 0xAAAAAAAAAAAAAAAALL;
    ExternalizeLine(&v104);
    v103 = v70;
    v71 = v95;
    if (v95)
    {
      v72 = v68[76];
      if ((v72 & 8) != 0)
      {
        v71 = 0;
        v73 = 0;
        v21 = (v72 & 8) >> 3;
        if (*(a1 + 115) != 1)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v71 = 0;
        v21 = (v72 >> 3) & 1;
      }
    }

    v95 = v71;
    v74 = TFramesetter::ParagraphEndsWith(v68, *v96, v69);
    TFramesetter::GetLineMetrics(&v98.length, v68, *(a1 + 113), *(a1 + 114), v74, *(a1 + 161));
    v75 = v99;
    *a4 = *&v98.length;
    *a5 = v75;
    v76 = v101;
    *a6 = v100;
    v77 = v102;
    *a4 = v76 + *a4;
    *a6 = v77 + *a6;
    if (*(a1 + 115) == 1)
    {
      v46 = CGRectGetMaxY(rect) - *(a1 + 48);
      v78 = *(a1 + 115) ^ 1;
    }

    else
    {
      v78 = 1;
    }

    v35 = v21;
    v79 = a4;
    if (v67 <= 0)
    {
      v79 = v89;
    }

    if (TFramesetter::AppendLine(*(a1 + 104), v78 & 1, v21 & 1, v74, *(a1 + 112), v34, &v103, v93, v59, v46, *(a1 + 88) - *v79, (a1 + 128), (a1 + 152)))
    {
      v28 = v97 - v67;
      v98.location += v67;

      LOBYTE(v92) = v74;
      BYTE4(v92) = 1;
      a3 = v66;
      v17 = v88;
      v36 = v96;
      goto LABEL_70;
    }

    BYTE4(v92) = 1;
    v73 = v95;
LABEL_83:

    *(a1 + 160) = v92 & 1;
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v106);
    v81 = v73;
    v80 = v98.location;
    a3 = v66;
    a2 = v84;
    v17 = v88;
    LOBYTE(v22) = v87;
    location = v86;
    LOBYTE(v23) = v85;
LABEL_75:
    if ((v92 & 0x100000000) != 0)
    {
      break;
    }

LABEL_78:
    v82 = v22;
    v22 = v81;
    if (v82 == v81)
    {
      v22 = v81;
      if (v23 == v21)
      {
        v22 = v81;
        v80 = location;
        if (location == v98.location)
        {
          break;
        }
      }
    }
  }

  v19 = (v80 - *(a1 + 72));
LABEL_88:

  return v19;
}

void TFramesetter::GetCharMetricsForLine(TFramesetter *this, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, int a6, int a7)
{
  v13 = (*(*a2 + 16))(a2);
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(v13, a4);
  if ((*(AttributesAtCharIndex + 69) & 0x40) != 0)
  {
    v15 = *(CFDictionaryGetValue(atomic_load_explicit(AttributesAtCharIndex, memory_order_acquire), @"CTRunDelegate") + 5);
    v16 = v15[2];
    v17 = 0.0;
    v18 = 0.0;
    if (v16)
    {
      v18 = v16(v15[5], 0.0);
    }

    *this = v18;
    v19 = v15[3];
    if (v19)
    {
      v17 = v19(v15[5]);
    }

    *(this + 1) = v17;
  }

  else
  {
    TFont::GetDefaultMetrics(*(atomic_load_explicit(AttributesAtCharIndex + 2, memory_order_acquire) + 40), this, this + 1, this + 2);
  }

  v20 = TLine::GetAttributesAtCharIndex(v13, a3);

  ApplyParagraphStyleSettings(v20, a5, a6, 0, a7, this, 0);
}

void TFramesetterBase::~TFramesetterBase(id *this)
{
  *this = &unk_1EF257368;
}

{
  *this = &unk_1EF257368;

  JUMPOUT(0x1865F22D0);
}

uint64_t *std::unique_ptr<TFramesetter::TPathFrameLinesetter>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

void TClippingPathInfo::~TClippingPathInfo(TClippingPathInfo *this)
{
  v2 = (this + 152);
  std::vector<CTFramePathFillRule,TInlineBufferAllocator<CTFramePathFillRule,5ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = (this + 80);
  std::vector<double,TInlineBufferAllocator<double,5ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = (this + 8);
  std::vector<TCFRef<CGPath const*>,TInlineBufferAllocator<TCFRef<CGPath const*>,5ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

void std::vector<CTFramePathFillRule,TInlineBufferAllocator<CTFramePathFillRule,5ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = (v1 + 44);
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[6])
      {
        v1[6] = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void std::vector<double,TInlineBufferAllocator<double,5ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 8;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[8])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void std::vector<TCFRef<CGPath const*>,TInlineBufferAllocator<TCFRef<CGPath const*>,5ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v7 = v4 - 1;

        v4 = v7;
      }

      while (v7 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    v8 = v6 + 8;
    if (v6 + 3 <= v5 && v8 > v5)
    {
      if (v6[2] == v6[8])
      {
        *v8 = v5;
      }
    }

    else
    {

      operator delete(v5);
    }
  }
}

__n128 std::__function::__func<TFramesetter::FrameInPath(TFrame &,CFRange)::$_0,std::allocator<TFramesetter::FrameInPath(TFrame &,CFRange)::$_0>,unsigned char ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257398;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TFramesetter::FrameInPath(TFrame &,CFRange)::$_0,std::allocator<TFramesetter::FrameInPath(TFrame &,CFRange)::$_0>,unsigned char ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  TFramesetter::GetCharMetricsForLine(v13, *(a1 + 8), *(a1 + 40), *a2, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  v3 = v13[1];
  v4 = v13[2];
  v5 = v13[0] + v14;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v13[0] + v14 < *v7)
  {
    v5 = *v7;
  }

  *v7 = v5;
  v8 = *v6;
  if (v3 >= *v6)
  {
    v8 = v3;
  }

  *v6 = v8;
  v9 = *(a1 + 32);
  v10 = *v9;
  if (v4 >= *v9)
  {
    v10 = v4;
  }

  *v9 = v10;
  result = 32;
  if (*(a1 + 56) >= *v7)
  {
    if (*(a1 + 72) < v10 || *(a1 + 64) < *v6)
    {
      return 32;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 std::__function::__func<TFramesetter::FrameInPath(TFrame &,CFRange)::$_1,std::allocator<TFramesetter::FrameInPath(TFrame &,CFRange)::$_1>,unsigned char ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2573E0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TFramesetter::FrameInPath(TFrame &,CFRange)::$_1,std::allocator<TFramesetter::FrameInPath(TFrame &,CFRange)::$_1>,unsigned char ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  TFramesetter::GetCharMetricsForLine(v13, *(a1 + 8), *(a1 + 40), *a2, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  v3 = v13[1];
  v4 = v13[2];
  v5 = v13[0] + v14;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v13[0] + v14 < *v7)
  {
    v5 = *v7;
  }

  *v7 = v5;
  v8 = *v6;
  if (v3 >= *v6)
  {
    v8 = v3;
  }

  *v6 = v8;
  v9 = *(a1 + 32);
  v10 = *v9;
  if (v4 >= *v9)
  {
    v10 = v4;
  }

  *v9 = v10;
  result = 32;
  if (*(a1 + 56) >= *v7)
  {
    if (*(a1 + 72) < v10 || *(a1 + 64) < *v6)
    {
      return 32;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFBundleRef _CTGetFrameworkBundleForLocalization()
{
  result = sBundleForLocalization;
  if (!sBundleForLocalization)
  {
    return CFBundleGetBundleWithIdentifier(@"com.apple.CoreText");
  }

  return result;
}

CFTypeRef _CTSetFrameworkBundleForLocalization(CFTypeRef cf)
{
  if (sBundleForLocalization)
  {
    CFRelease(sBundleForLocalization);
  }

  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  sBundleForLocalization = result;
  return result;
}

void CTCopyLocalizedString(CFStringRef key@<X0>, CFStringRef tableName@<X1>, void *a3@<X8>)
{
  BundleWithIdentifier = sBundleForLocalization;
  if (sBundleForLocalization || (BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CoreText")) != 0)
  {
    v7 = CFBundleCopyLocalizedString(BundleWithIdentifier, key, 0, tableName);
    *a3 = atomic_exchange(&v7, 0);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t TTypesetterUniChar::Initialize(TTypesetterUniChar *this)
{
  __dst[67] = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 27) + 16);
  v29 = 0;
  v3 = [_CTNativeGlyphStorage newWithCount:v2 capacity:v2];
  v28 = 0xAAAAAAAAFFFFFFFFLL;
  memset(&v27[80], 170, 160);
  memset(v27, 170, 32);
  v4 = *(this + 27);
  memset(&v27[16], 0, 184);
  *&v27[176] = v4[2];
  *&v27[200] = this;
  memset(&v27[208], 0, 32);
  LODWORD(v28) = 1065353216;
  v5 = v4[7] - v4[6];
  v19 = v3;
  *v27 = v3;
  *&v27[8] = v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v5 / 0x18uLL;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v12 = *(this + 27);
      v13 = *(v12 + 6);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v12 + 7) - v13) >> 3) <= v9)
      {
        __break(1u);
      }

      v14 = v13 + v6;
      v15 = *v14;
      v32.location = v8;
      v32.length = *v14;
      TAttributes::TAttributes(__dst, *(v14 + 16), v12, v32, 0);
      v7 |= TGlyphEncoder::EncodeChars(v27, v8, v15, __dst, 0);
      v29 = v7;
      TAttributes::~TAttributes(__dst);
      v8 += v15;
      ++v9;
      v6 += 24;
    }

    while (v11 != v9);
  }

  *(this + 9) = 0;
  *(this + 10) = v2;
  TLine::LinkRuns(this);
  if (TTypesetter::CanLayout(this))
  {
    v20 = this;
    v21 = *(this + 216);
    v22 = *(this + 29);
    v23 = this + 240;
    v16 = *(this + 65);
    v25 = -1431655766;
    v26 = 0;
    v24 = v16;
    LOBYTE(v25) = *(this + 264);
    BYTE1(v25) = *(this + 257);
    memcpy(__dst, &unk_18475B6B0, 0x218uLL);
    TRunGlue::TRunGlue(__dst, this);
    v17 = TTypesetter::FinishEncoding(&v20, __dst, &v29);
    TTypesetter::FinishLayout(&v20, __dst, v29, v17);
    std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&__dst[56]);
    v30 = &__dst[32];
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v30);
    v30 = &__dst[27];
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v30);
    v30 = &__dst[7];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v30);
  }

  return std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v27[208]);
}

double __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v2 = *(a2 + 80);
    *(a1 + 72) = *(a2 + 72);
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a1 + 80) = v2;
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

uint64_t __Block_byref_object_dispose_(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    return std::deque<CFRange>::~deque[abi:fn200100](result + 48);
  }

  return result;
}

void *___ZN21TTypesetterAttrString10InitializeEPK20__CFAttributedStringb_block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result[4] + 8);
  if (*(v3 + 96))
  {
    v6 = *(v3 + 64);
    v7 = *(v3 + 56);
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 32 * (v6 - v7) - 1;
    }

    v9 = *(v3 + 80);
    v10 = *(v3 + 88) + v9;
    if (v8 == v10)
    {
      if (v9 < 0x100)
      {
        v11 = *(v3 + 72);
        v12 = *(v3 + 48);
        if (v6 - v7 < (v11 - v12))
        {
          operator new();
        }

        if (v11 == v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = (v11 - v12) >> 2;
        }

        std::allocator<TAATMorphSubtable::SimpleGlyphEntry *>::allocate_at_least[abi:fn200100](v13);
      }

      *(v3 + 80) = v9 - 256;
      v15 = *v7;
      *(v3 + 56) = v7 + 8;
      result = std::__split_buffer<TAATMorphSubtable::SimpleGlyphEntry *>::emplace_back<TAATMorphSubtable::SimpleGlyphEntry *&>((v3 + 48), &v15);
      v7 = *(v3 + 56);
      v10 = *(v3 + 88) + *(v3 + 80);
    }

    v14 = (*&v7[(v10 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v10);
    *v14 = a2;
    v14[1] = a3;
    ++*(v3 + 88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *std::__deque_iterator<CFRange,CFRange*,CFRange&,CFRange**,long,256l>::operator+[abi:fn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

uint64_t std::deque<CFRange>::~deque[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<TCharStreamCFAttrString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF257428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fn200100]<CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a2) >> 4;
      }

      v11 -= 16 * v13;
      a5 -= 16 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 16 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *std::__copy_move_unwrap_iters[abi:fn200100]<std::__move_impl<std::_ClassicAlgPolicy>,CFRange *,CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 4 >= v11 >> 4 ? v11 >> 4 : (a3 - v9) >> 4;
      if (v12)
      {
        result = memmove(__dst, v9, 16 * v12);
      }

      v9 += 16 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 16 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

unint64_t TFramesetterAttrString::GetTypesetter(TFramesetterAttrString *this)
{
  v1 = (this + 280);
  if (!atomic_load_explicit(this + 35, memory_order_acquire))
  {
    v3 = *(this + 28);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v3 + 32))(&v10);
    explicit = atomic_load_explicit(&v10, memory_order_acquire);
    v5 = TCFBase<TTypesetter>::Allocate();
    if (v5)
    {
      v5[2] = 0;
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = v5 + 6;
      TTypesetterAttrString::TTypesetterAttrString((v5 + 6), explicit, 0);
    }

    v11 = 0;
    v12 = atomic_exchange(&v11, 0);

    v6 = 0;
    v7 = atomic_exchange(&v12, 0);
    atomic_compare_exchange_strong(this + 35, &v6, v7);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return atomic_load_explicit(v1, memory_order_acquire);
}

void TFramesetterUniChar::~TFramesetterUniChar(TFramesetterUniChar *this)
{
  *this = &unk_1EF257490;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TLine::~TLine((this + 8));
}

{
  *this = &unk_1EF257490;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TLine::~TLine((this + 8));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__value_func<void ()(long)>::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:fn200100]();
    JUMPOUT(0x1846926B4);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<TASCIIDataCache::InitProps(void)::$_0,std::allocator<TASCIIDataCache::InitProps(void)::$_0>,void ()(long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF2574C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TASCIIDataCache::InitProps(void)::$_1,std::allocator<TASCIIDataCache::InitProps(void)::$_1>,void ()(long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257508;
  a2[1] = v2;
  return result;
}

uint64_t std::function<void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:fn200100]();
    return TAATMorphTable::AddCoveredGlyphs(v5);
  }
}

uint64_t TAATMorphTable::AddCoveredGlyphs(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45[71] = *MEMORY[0x1E69E9840];
  CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), 1634561906, 0);
  if (!CommonTable)
  {
    return 0;
  }

  v9 = CommonTable;
  values[0] = a2;
  v10 = 1;
  v36 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  BytePtr = CFDataGetBytePtr(v9);
  Length = CFDataGetLength(v9);
  if (Length <= 7)
  {
    std::function<void ()(void)>::operator()(a4);
    v10 = 0;
    goto LABEL_30;
  }

  v13 = &BytePtr[Length];
  memset(v45, 170, 0x230uLL);
  v14 = *(a1 + 12);
  v45[2] = a1;
  LOBYTE(v45[3]) = 1;
  values[0] = &unk_1EF257678;
  values[1] = BytePtr;
  v45[7] = TAATLookupTable::BadTable;
  v45[8] = 0;
  v45[12] = 0;
  LOWORD(v45[13]) = -1;
  LOBYTE(v45[14]) = v14 & 1;
  v45[4] = &unk_1EF256A28;
  memset(&v45[19], 0, 24);
  v45[70] = &v45[22];
  values[2] = v13;
  v43 = BytePtr + 8;
  v44 = BytePtr + 8;
  v15 = *(BytePtr + 1);
  if (!v15)
  {
LABEL_29:
    values[0] = &unk_1EF257678;
    v37 = &v45[19];
    std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v37);
LABEL_30:

    return v10;
  }

  v10 = 0;
  v16 = 0;
  v17 = bswap32(*BytePtr);
  v18 = bswap32(v15);
  v33 = v18;
  if (v18 <= 1)
  {
    v18 = 1;
  }

  v32 = v18;
  v35 = HIWORD(v17);
  while (1)
  {
    if ((TAATMorphChainMorx::NextChain(values, v35) & 1) == 0)
    {
      std::function<void ()(void)>::operator()(a4);
      goto LABEL_29;
    }

    v34 = v10;
    TFontFeatureSettingList::TFontFeatureSettingList(&v37, v36);
    v19 = TAATMorphChain::ResolveFlags(values, 0, &v37, 0, 0);
    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v40);
    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v39);
    std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(v38, v38[1]);

    v20 = *(v43 + 3);
    if (v20)
    {
      break;
    }

LABEL_24:
    v10 = ++v16 >= v33;
    if (v16 == v32)
    {
      v10 = 1;
      goto LABEL_29;
    }
  }

  v21 = 0;
  v22 = bswap32(v20);
  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  while (((*(v45[4] + 16))(&v45[4]) & 1) != 0)
  {
    if ((v45[5] & v19) != 0)
    {
      if (v21 < (v45[20] - v45[19]) >> 3 && (v24 = *(v45[19] + 8 * v21)) != 0)
      {
        GlyphCount = TBaseFont::GetGlyphCount(*(a1 + 408));
        if (GlyphCount >= 1)
        {
          v26 = GlyphCount;
          for (i = 0; i != v26; ++i)
          {
            if ((*(v24 + (i >> 3)) >> (i & 7)))
            {
              std::function<void ()(unsigned short,unsigned short)>::operator()(a3, i, i);
            }
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v41, a3);
        v28 = TAATMorphSubtableMorx::AddShapingGlyphs(&v45[4], v41);
        std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v41);
        if ((v28 & 1) == 0)
        {
          break;
        }
      }
    }

    if (++v21 == v23)
    {
      goto LABEL_24;
    }
  }

  v29 = *(a4 + 24);
  if (v29)
  {
    (*(*v29 + 48))(v29);
    v10 = v34;
    goto LABEL_29;
  }

  v31 = std::__throw_bad_function_call[abi:fn200100]();
  return TAATMorphTable::AddShapingLanguages(v31);
}

BOOL TAATMorphTable::AddShapingLanguages(TBaseFont *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  CommonTable = TBaseFont::GetCommonTable(a1, 1634561906, 0);
  if (CommonTable)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    TAATLtagTable::TAATLtagTable(&keys, a1);
    TAATLtagTable::CopyLanguageTags(&keys, &v11);
    if (atomic_load_explicit(&v11, memory_order_acquire))
    {
      Count = CFDictionaryGetCount(atomic_load_explicit(&v11, memory_order_acquire));
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[14] = v6;
      v16[13] = v6;
      v16[12] = v6;
      v16[11] = v6;
      v16[10] = v6;
      v16[9] = v6;
      v16[8] = v6;
      v16[7] = v6;
      v16[6] = v6;
      v16[4] = v6;
      v16[5] = v6;
      v16[2] = v6;
      v16[3] = v6;
      v16[0] = v6;
      v16[1] = v6;
      v14 = 0;
      v15 = 0;
      keys = 0;
      v17 = v16;
      if (Count)
      {
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&keys, Count);
        v7 = v14;
        bzero(v14, 8 * Count);
        v14 = &v7[8 * Count];
      }

      explicit = atomic_load_explicit(&v11, memory_order_acquire);
      CFDictionaryGetKeysAndValues(explicit, keys, 0);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          if (i >= (v14 - keys) >> 3)
          {
            __break(1u);
          }

          std::function<void ()(__CFString const*)>::operator()(a2, keys[i]);
        }
      }

      p_keys = &keys;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_keys);
    }
  }

  return CommonTable != 0;
}

uint64_t std::function<void ()(__CFString const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:fn200100]();
    JUMPOUT(0x184692DDCLL);
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t TAATMorphChain::FlagsForOptionalLigatures(TAATMorphChain *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 6);
  v5 = 12 * v1;
  v6 = (v4 + 4);
  do
  {
    if (*(v6 - 2) == 256)
    {
      v7 = bswap32(*(v6 - 1));
      if (HIWORD(v7) >= 2u && (v7 & 0x10000) == 0)
      {
        result = (bswap32(*v6) | result) & bswap32(v6[1]);
      }
    }

    v6 += 3;
    v5 -= 12;
  }

  while (v5);
  return result;
}

uint64_t std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v3 = a1 + 33;
  result = a1[33];
  v5 = result + 8 * a2;
  if (v5 > v3)
  {
    operator new();
  }

  *v3 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * a2;
  return result;
}

void TAATMorphTableMorx::~TAATMorphTableMorx(TAATMorphTableMorx *this)
{
  *this = &unk_1EF257650;
  *(this + 8) = &unk_1EF257678;
  v1 = (this + 256);
  std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v1);
}

{
  *this = &unk_1EF257650;
  *(this + 8) = &unk_1EF257678;
  v2 = (this + 256);
  std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  MEMORY[0x1865F22D0](this, 0x10F3C406B59EFBDLL);
}

void TAATMorphChainMorx::~TAATMorphChainMorx(TAATMorphChainMorx *this)
{
  *this = &unk_1EF257678;
  v1 = (this + 192);
  std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v1);
}

{
  *this = &unk_1EF257678;
  v2 = (this + 192);
  std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  MEMORY[0x1865F22D0](this, 0x10F3C4076A4214ELL);
}

void *std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 384);
    v6 = v5 + 8 * a2;
    if (v6 > a4 + 384)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 384) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 8 * a3;
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + 8 * a2;
  return a1;
}

uint64_t std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 384);
    if (v5 <= v4 && v6 > v4)
    {
      if (*(a1 + 24) == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t TTateChuYokoRun::TTateChuYokoRun(uint64_t a1, uint64_t a2)
{
  TRun::TRun(a1, *(a2 + 40));
  *v3 = &unk_1EF2576B8;
  *(a1 + 320) = TRun::GetAscent(v3);
  *(a1 + 328) = TRun::GetDescent(a1);
  *(a1 + 336) = 0;
  return a1;
}

void TTateChuYokoRun::TTateChuYokoRun(TTateChuYokoRun *this, const TTateChuYokoRun *a2)
{
  TRun::TRun(this, a2);
  *v3 = &unk_1EF2576B8;
  *(this + 40) = TRun::GetAscent(v3);
  *(this + 41) = TRun::GetDescent(this);
  *(this + 42) = 0;
}

uint64_t TTateChuYokoRun::TTateChuYokoRun(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  v6 = TRun::TRun(a1, a2, a3, a4, a5);
  *v6 = &unk_1EF2576B8;
  *(a1 + 320) = TRun::GetAscent(v6);
  *(a1 + 328) = TRun::GetDescent(a1);
  *(a1 + 336) = 0;
  return a1;
}

void TTateChuYokoRun::CacheGlyphPositions(double **this, double *a2, double *a3)
{
  v4 = *a2;
  v5 = *a3;
  TRun::CacheGlyphPositions(this, a2, a3);
  v6 = this[39];
  if (!v6)
  {
    v6 = MEMORY[0x1E695F060];
  }

  v7 = *(this + 24) + *v6;
  v8 = *(this + 40) + *(this + 41);
  if (v8 > v7 || vabdd_f64(v8, v7) < 0.001)
  {
    TRun::GetPositions(this, 0);
    *(this + 42) = *v9 - v4 - v5;
  }
}

void TTateChuYokoRun::GetImageBounds(__n128 *this, CGContext *a2, CFRange a3, double *a4, double *a5)
{
  length = a3.length;
  location = a3.location;
  v21.width = NAN;
  v21.height = NAN;
  TRun::GetPositions(this, &v21);
  v11 = *a4;
  v12 = *a5;
  v22.location = location;
  v22.length = length;
  ImageBounds = TRun::GetImageBounds(this, a2, v22, a4, a5);
  v17 = this[21].n128_f64[0];
  if (v17 != 0.0)
  {
    v18 = ImageBounds - (v12 + v11 * 0.0 + 0.0 - v17);
    v19 = v14 - (v12 * 0.0 - v11 + 0.0 - v17);
    v20 = *kRotateLeftTransform;
    CGRectApplyAffineTransform(*(&v15 - 2), &v20);
  }
}

void TTateChuYokoRun::~TTateChuYokoRun(TTateChuYokoRun *this)
{
  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TTateChuYokoRun::FindBreak@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  a5[2] = -1;
  result = TRun::FindBreak(a1, a2, a3, a4, a5, a6);
  *a5 |= 8u;
  return result;
}

CTFontDescriptorRef CTFontDescriptorCreateWithNameAndSize(CFStringRef name, CGFloat size)
{
  v2 = name;
  if (name)
  {
    v4 = TCFBase<TDescriptor>::Allocate();
    v5 = v4;
    if (v4)
    {
      v4[2] = 0;
      v4[3] = TDescriptor::Hash;
      v4[4] = 0;
      v4[5] = v4 + 6;
      TDescriptor::TDescriptor((v4 + 6), v2, size, 0);
    }

    v7 = v5;
    v2 = atomic_exchange(&v7, 0);
  }

  return v2;
}

void TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = TCFBase<TDescriptor>::Allocate();
  v5 = v4;
  if (v4)
  {
    v6 = *a1;
    *(v4 + 56) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = TDescriptor::Hash;
    *(v4 + 32) = 0;
    *(v4 + 40) = v4 + 48;
    *(v4 + 48) = &unk_1EF257E00;
    *(v4 + 64) = 0;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 72) = 0;
    TCFRef<__CTFont const*>::Retain((v4 + 56), v6);
  }

  *a2 = v5;
}

void TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&,unsigned int &>(const __CFDictionary **a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v6 = TCFBase<TDescriptor>::Allocate();
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = *a2;
    v6[2] = 0;
    v6[3] = TDescriptor::Hash;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TDescriptor::TDescriptor((v6 + 6), v8, v9);
  }

  *a3 = v7;
}

void TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(uint64_t *a1@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  v6 = TCFBase<TDescriptor>::Allocate();
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = *a2;
    v6[2] = 0;
    v6[3] = TDescriptor::Hash;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TDescriptor::TDescriptor((v6 + 6), *(v8 + 40), v9);
  }

  *a3 = v7;
}

CTFontDescriptorRef CTFontDescriptorCreateCopyWithVariation(CTFontDescriptorRef original, CFNumberRef variationIdentifier, CGFloat variationValue)
{
  v9 = variationIdentifier;
  v8 = variationValue;
  if (!original)
  {
    return 0;
  }

  if (variationIdentifier)
  {
    v6 = original;
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v5 = 0;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFNumber const*&,double &,int>(&v6, &v9, &v8, &v5, &v7);
    v3 = atomic_exchange(&v7, 0);

    return v3;
  }

  return original;
}

void TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFNumber const*&,double &,int>(uint64_t *a1@<X0>, const __CFNumber **a2@<X1>, double *a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v10 = TCFBase<TDescriptor>::Allocate();
  v11 = v10;
  if (v10)
  {
    v12 = *a1;
    v13 = *a2;
    v14 = *a3;
    v15 = *a4;
    v10[2] = 0;
    v10[3] = TDescriptor::Hash;
    v10[4] = 0;
    v10[5] = v10 + 6;
    TDescriptor::TDescriptor((v10 + 6), *(v12 + 40), v13, v14, v15);
  }

  *a5 = v11;
}

void TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFNumber const*&,__CFNumber const*&>(uint64_t *a1@<X0>, const __CFNumber **a2@<X1>, const __CFNumber **a3@<X2>, void *a4@<X8>)
{
  v8 = TCFBase<TDescriptor>::Allocate();
  v9 = v8;
  if (v8)
  {
    v10 = *a1;
    v11 = *a2;
    v12 = *a3;
    v8[2] = 0;
    v8[3] = TDescriptor::Hash;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TDescriptor::TDescriptor((v8 + 6), *(v10 + 40), v11, v12);
  }

  *a4 = v9;
}

CFArrayRef CTFontDescriptorCreateMatchingFontDescriptors(CTFontDescriptorRef descriptor, CFSetRef mandatoryAttributes)
{
  if (!descriptor)
  {
    return 0;
  }

  TDescriptor::CreateMatchingDescriptors(*(descriptor + 5), mandatoryAttributes, 0, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

unint64_t CTFontDescriptorCreateMatchingFontDescriptorsWithOptions(uint64_t a1, const __CFSet *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  TDescriptor::CreateMatchingDescriptors(*(a1 + 40), a2, a3, &v5);
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

CFTypeRef CTFontDescriptorCopyLocalizedAttribute(CTFontDescriptorRef descriptor, CFStringRef attribute, CFStringRef *language)
{
  v3 = 0;
  if (descriptor && attribute)
  {
    TDescriptor::CopyLocalizedAttribute(*(descriptor + 5), attribute, language, &v5);
    v3 = atomic_exchange(&v5, 0);
  }

  return v3;
}

unint64_t CTFontDescriptorsCopyLocalizedAttribute(const __CFArray *a1, const __CFString *a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    v6 = CFArrayGetCount(a1);
    v13 = Mutable;
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        TDescriptor::CopyLocalizedAttribute(ValueAtIndex[5], a2, 0, &v12);
        CFArrayAppendValue(atomic_load_explicit(&v13, memory_order_acquire), atomic_load_explicit(&v12, memory_order_acquire));
      }
    }
  }

  else
  {
    v13 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  v10 = atomic_exchange(&v13, 0);

  return v10;
}

unint64_t CTFontDescriptorsCopyAttribute(const __CFArray *a1, void *a2)
{
  values = a2;
  v3 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9F8]);
  v4 = CTFontDescriptorsCopyAttributesInternal(a1, v3);

  return v4;
}

unint64_t CTFontDescriptorsCopyAttributesInternal(const __CFArray *a1, const __CFSet *a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v94 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v56 = Count;
  if (v6)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
  }

  else
  {
    Mutable = 0;
  }

  if (v8)
  {
    v12 = CFSetGetCount(v8);
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v92 = v13;
    v91 = v13;
    v90 = v13;
    v89 = v13;
    v88 = v13;
    v87 = v13;
    v86 = v13;
    v85 = v13;
    v84 = v13;
    v83 = v13;
    v82 = v13;
    v81 = v13;
    v80 = v13;
    v79 = v13;
    v78 = v13;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v93 = &v78;
    if (v12)
    {
      std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&v75, v12);
      v14 = v6;
      v15 = v76;
      bzero(v76, 8 * v12);
      v16 = &v15[8 * v12];
      v6 = v14;
      v76 = v16;
      v17 = v75;
    }

    else
    {
      v17 = 0;
    }

    CFSetGetValues(v8, v17);
  }

  else
  {
    v12 = 0;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v92 = v18;
    v91 = v18;
    v90 = v18;
    v89 = v18;
    v88 = v18;
    v87 = v18;
    v86 = v18;
    v85 = v18;
    v84 = v18;
    v83 = v18;
    v82 = v18;
    v81 = v18;
    v80 = v18;
    v79 = v18;
    v78 = v18;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v93 = &v78;
  }

  memset(v73, 170, sizeof(v73));
  __p = 0;
  v71 = 0;
  v72 = 0;
  v74 = v73;
  v51 = v6;
  if (v56)
  {
    if (v56 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v19 = 16 * v56;
    v54 = v12;
    if (v56 > 0x80)
    {
      operator new();
    }

    v74 = &v73[v19];
    v58 = v6 & 3;
    __p = v73;
    v72 = &v73[16 * v56];
    bzero(v73, v19);
    v71 = &v73[16 * v56];
    memset(v68, 170, sizeof(v68));
    v66 = 0;
    v69 = &v68[v56];
    __base = v68;
    v67 = v69;
    bzero(v68, 8 * v56);
    v21 = 0;
    v22 = 0;
    v66 = &v68[v56];
    v23 = v56;
    v53 = *MEMORY[0x1E695E480];
    v52 = *MEMORY[0x1E695E738];
    v57 = v9;
    v55 = v4;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v22);
      v25 = ValueAtIndex;
      v59 = 0xAAAAAAAAAAAAAAAALL;
      if (v4)
      {
        v26 = Mutable;
        v60 = CFDictionaryCreateMutable(v53, v54, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v27 = CTFontDescriptorCopyAttributes(v25);
        v28 = v75;
        v29 = v76;
        while (v28 != v29)
        {
          v30 = *v28;
          v31 = v27;
          if (v31)
          {
            v32 = v31;
            Value = CFDictionaryGetValue(v31, v30);

            if (Value)
            {
              CFDictionarySetValue(atomic_load_explicit(&v60, memory_order_acquire), v30, Value);
            }
          }

          else
          {
          }

          ++v28;
        }

        v34 = atomic_exchange(&v60, 0);

        Mutable = v26;
        v4 = v55;
        v23 = v56;
      }

      else
      {
        if (v76 == v75)
        {
          goto LABEL_75;
        }

        v34 = CTFontDescriptorCopyAttribute(ValueAtIndex, *v75);
      }

      v59 = v34;
      explicit = atomic_load_explicit(&v59, memory_order_acquire);
      if (!v58 && !explicit)
      {
        TCFRef<__CTFont const*>::Retain(&v59, v52);
      }

      if (atomic_load_explicit(&v59, memory_order_acquire))
      {
        if (!Mutable)
        {
          goto LABEL_39;
        }

        v36 = Mutable;
        v37 = atomic_load_explicit(&v59, memory_order_acquire);
        v38 = v37;
        if (!v36)
        {

LABEL_39:
          v40 = atomic_exchange(&v59, 0);
          if (v21 >= (v71 - __p) >> 4 || v21 >= (v66 - __base) >> 3 || (*(__base + v21) = __p + 16 * v21, v9 = v57, v21 >= (v71 - __p) >> 4))
          {
LABEL_75:
            __break(1u);
          }

          v20 = v21 + 1;
          v41 = (__p + 16 * v21);
          *v41 = v25;
          v41[1] = v40;
          if (Mutable)
          {
            CFSetSetValue(Mutable, v40);
          }

          goto LABEL_44;
        }

        v39 = CFSetContainsValue(v36, v37);

        if (!v39)
        {
          goto LABEL_39;
        }
      }

      v20 = v21;
      v9 = v57;
LABEL_44:

      ++v22;
      v21 = v20;
      if (v22 == v23)
      {
        goto LABEL_45;
      }
    }
  }

  memset(v68, 170, sizeof(v68));
  v20 = 0;
  __base = 0;
  v66 = 0;
  v67 = 0;
  v69 = v68;
LABEL_45:
  if ((v51 & 2) != 0)
  {
    qsort(__base, v20, 8uLL, CTFontDescriptorsCopyAttributesInternal(__CFArray const*,__CFSet const*,unsigned int,BOOL)::$_0::__invoke);
  }

  memset(v63, 170, sizeof(v63));
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v64 = v63;
  if (v20)
  {
    if (v20 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    if (v20 > 0x80)
    {
      operator new();
    }

    v64 = &v63[v20];
    v60 = v63;
    v62 = v64;
    bzero(v63, 8 * v20);
    v44 = 0;
    v61 = &v63[v20];
    do
    {
      if (v44 >= (v66 - __base) >> 3 || v44 >= (v61 - v60) >> 3)
      {
        goto LABEL_75;
      }

      *(v60 + v44) = *(*(__base + v44) + 8);
      ++v44;
    }

    while (v20 != v44);
    v42 = v60;
    v43 = v61;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v59 = CFArrayCreate(*MEMORY[0x1E695E480], v42, (v43 - v42) >> 3, MEMORY[0x1E695E9C0]);
  v45 = atomic_exchange(&v59, 0);

  v46 = v60;
  v47 = v61;
  if (v60 != v61)
  {
    do
    {
      v48 = *v46++;
    }

    while (v46 != v47);
    v46 = v60;
  }

  if (v46)
  {
    v61 = v46;
    if (v63 > v46 || &v64 <= v46)
    {
      operator delete(v46);
    }
  }

  if (__base)
  {
    v66 = __base;
    if (v68 > __base || &v69 <= __base)
    {
      operator delete(__base);
    }
  }

  if (__p)
  {
    v71 = __p;
    if (v73 > __p || &v74 <= __p)
    {
      operator delete(__p);
    }
  }

  __p = &v75;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&__p);

  return v45;
}

CFTypeID CTFontDescriptorGetTypeID(void)
{
  if (TCFBase<TDescriptor>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TDescriptor>::GetTypeID(void)::once, 0, TCFBase<TDescriptor>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TDescriptor>::fTypeID;
}

uint64_t CTFontDescriptorIsValid(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if ((*(v1 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(result + 40), 0, 0.0);
    }

    explicit = atomic_load_explicit((v1 + 32), memory_order_acquire);
    if (explicit)
    {
      v3 = *(*explicit + 752);

      return v3();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CTFontDescriptorIsVisible(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if ((*(v1 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(result + 40), 0, 0.0);
    }

    explicit = atomic_load_explicit((v1 + 32), memory_order_acquire);
    if (explicit)
    {
      return (*(*explicit + 704))(explicit) ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CTFontDescriptorIsAppleFont(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a1 + 40), 0, 0.0);
  }

  explicit = atomic_load_explicit((v1 + 32), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  v3 = *(*explicit + 712);

  return v3();
}

CTFontDescriptorRef CTFontDescriptorCreateCopyWithFamily(CTFontDescriptorRef original, CFStringRef family)
{
  if (!original)
  {
    return 0;
  }

  v2 = *(original + 5);
  if ((*(v2 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(original + 5), 0, 0.0);
  }

  explicit = atomic_load_explicit((v2 + 32), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  (*(*explicit + 760))(&v6);
  v4 = atomic_exchange(&v6, 0);

  return v4;
}

BOOL CTFontDescriptorHasPostScriptNameAlias(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  if ((*(v3 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a1 + 40), 0, 0.0);
  }

  explicit = atomic_load_explicit((v3 + 32), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  return TBaseFont::HasPostScriptNameAlias(explicit, a2);
}

unint64_t CTFontDescriptorCreateForCSSFamily(__CFString *a1, __CFString *a2)
{
  TDescriptorSource::TDescriptorSource(&v6);
  TDescriptorSource::CreateDescriptorForCSSFamily(&v6, a1, a2, &v7);
  v4 = atomic_exchange(&v7, 0);

  return v4;
}

unint64_t CTFontDescriptorCreateLastResort()
{
  TDescriptorSource::TDescriptorSource(&v2);
  TDescriptorSource::CopyLastResort(&v3);
  v0 = atomic_exchange(&v3, 0);

  return v0;
}

unint64_t CTFontDescriptorCopyName(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(a1 + 40), 0, 0.0);
    }

    explicit = atomic_load_explicit((v3 + 32), memory_order_acquire);
    if (explicit)
    {
      (*(*explicit + 72))(&v6);
      v2 = atomic_exchange(&v6, 0);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id CTFontDescriptorGetClientObject(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = atomic_load_explicit((*(a1 + 40) + 40), memory_order_acquire);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void CTFontDescriptorSetClientObject(uint64_t a1, void *a2)
{
  if (a1)
  {
    TCFRef<__CTFont const*>::Retain((*(a1 + 40) + 40), a2);
  }
}

unint64_t CTFontDescriptorCopyDefaultCascadeListForLanguagesWithOption(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  valuePtr = a3;
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if ((*(v4 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a1 + 40), 0, 0.0);
  }

  explicit = atomic_load_explicit((v4 + 32), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  if (valuePtr == -1)
  {
    TDescriptor::CopyAttribute(v4, @"NSCTFontFallbackOptionAttribute", &v16);
    v6 = atomic_exchange(&v16, 0);

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      CFNumberGetValue(v9, kCFNumberLongType, &valuePtr);
    }

    else
    {
      valuePtr = 3;
    }
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  v11 = CreateCanonicalLanguages(a2, &v16);
  v12 = *(v4 + 16);
  v13 = (TDescriptor::GetSystemUIFontOptions(v11) & v12) != 0;
  TBaseFont::CreateFallbacks(explicit, v13, valuePtr, 0, atomic_load_explicit(&v16, memory_order_acquire), &v15);
  v10 = atomic_exchange(&v15, 0);

  return v10;
}

uint64_t TCFBase<TDescriptor>::ClassDebug(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTFontDescriptor", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void TCFBase_NEW<CTFont,__CFString const*&,double &,CGAffineTransform const*&,char const(&)[21]>(__CFString **a1@<X0>, double *a2@<X1>, const CGAffineTransform **a3@<X2>, const char *a4@<X3>, void *a5@<X8>)
{
  v10 = TCFBase<TFont>::Allocate();
  v11 = v10;
  if (v10)
  {
    v12 = *a1;
    v13 = *a2;
    v14 = *a3;
    v10[2] = 0;
    v10[3] = TFont::Hash;
    v10[4] = 0;
    v10[5] = v10 + 6;
    TFont::TFont((v10 + 6), v12, v13, v14, a4, 0);
  }

  *a5 = v11;
}

void TCFBase_NEW<CTFontDescriptor,__CFString const*&,double &,unsigned int &>(__CFString **a1@<X0>, double *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v8 = TCFBase<TDescriptor>::Allocate();
  v9 = v8;
  if (v8)
  {
    v10 = *a1;
    v11 = *a2;
    v12 = *a3;
    v8[2] = 0;
    v8[3] = TDescriptor::Hash;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TDescriptor::TDescriptor((v8 + 6), v10, v11, v12);
  }

  *a4 = v9;
}

CTFontRef CTFontCreateWithFontDescriptorAndOptions(CTFontDescriptorRef descriptor, CGFloat size, const CGAffineTransform *matrix, CTFontOptions options)
{
  v22 = descriptor;
  sizea = size;
  matrixa = matrix;
  if (!descriptor)
  {
    return 0;
  }

  v7 = *(descriptor + 5);
  v8 = *(v7 + 4);
  SystemUIFontOptions = TDescriptor::GetSystemUIFontOptions(descriptor);
  if ((SystemUIFontOptions & v8) != 0 || (SystemUIFontOptions = TFont::GetSystemUIFontOptions(SystemUIFontOptions), (SystemUIFontOptions & options) == 0))
  {
    if ((TFont::GetSystemUIFontOptions(SystemUIFontOptions) & options) != 0)
    {
      v10 = options & 0x85 | 0x400;
    }

    else
    {
      v10 = options & 0x85;
    }

    v19 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptor::CreateMatchingDescriptor(v7, 0, size, (options >> 1) & 0x10000 | (((options >> 1) & 1) << 9) | v10, &v19);
    if (!atomic_load_explicit(&v19, memory_order_acquire))
    {
      if ((options & 0x20000000) != 0)
      {
        v14 = 0;
        goto LABEL_13;
      }

      TDescriptorSource::TDescriptorSource(&explicit);
      v11 = *(v7 + 4);
      v13 = (TDescriptor::GetSystemUIFontOptions(v12) & v11) != 0;
      TDescriptorSource::CreateDefaultDescriptor(v13, &v18);
    }

    explicit = atomic_load_explicit(&v19, memory_order_acquire);
    v18 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTFont,__CTFontDescriptor const*,double &,CGAffineTransform const*&,__CTFontDescriptor const*&>(&explicit, &sizea, &matrixa, &v22, &v18);
    v14 = atomic_exchange(&v18, 0);
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    explicit = descriptor;
    v18 = atomic_exchange(&explicit, 0);
    TDescriptorSource::CopyPossibleSystemUIFontDescriptor(&v18, 1, &v19);

    v15 = atomic_load_explicit(&v19, memory_order_acquire);
    v14 = CTFontCreateWithFontDescriptorAndOptions(v15, sizea, matrixa, options);
  }

LABEL_13:

  return v14;
}

void TCFBase_NEW<CTFont,__CFString const*&,double &,CGAffineTransform const*&,char const(&)[31],unsigned long &>(__CFString **a1@<X0>, double *a2@<X1>, const CGAffineTransform **a3@<X2>, const char *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = TCFBase<TFont>::Allocate();
  v13 = v12;
  if (v12)
  {
    v14 = *a1;
    v15 = *a2;
    v16 = *a3;
    v17 = *a5;
    v12[2] = 0;
    v12[3] = TFont::Hash;
    v12[4] = 0;
    v12[5] = v12 + 6;
    TFont::TFont((v12 + 6), v14, v15, v16, a4, v17);
  }

  *a6 = v13;
}

void TCFBase_NEW<CTFont,__CTFontDescriptor const*,double &,CGAffineTransform const*&,__CTFontDescriptor const*&>(const __CTFontDescriptor **a1@<X0>, double *a2@<X1>, const CGAffineTransform **a3@<X2>, const __CTFontDescriptor **a4@<X3>, void *a5@<X8>)
{
  v10 = TCFBase<TFont>::Allocate();
  v11 = v10;
  if (v10)
  {
    v12 = *a1;
    v13 = *a2;
    v14 = *a3;
    v15 = *a4;
    v10[2] = 0;
    v10[3] = TFont::Hash;
    v10[4] = 0;
    v10[5] = v10 + 6;
    TFont::TFont((v10 + 6), v12, v13, v14, v15);
  }

  *a5 = v11;
}

CGFloat CTFontGetSize(CTFontRef font)
{
  if (font)
  {
    return *(*(font + 5) + 24);
  }

  else
  {
    return 0.0;
  }
}

CTFontRef CTFontCreateWithGraphicsFont(CGFontRef graphicsFont, CGFloat size, const CGAffineTransform *matrix, CTFontDescriptorRef attributes)
{
  v8 = TCFBase<TFont>::Allocate();
  v9 = v8;
  if (v8)
  {
    v8[2] = 0;
    v8[3] = TFont::Hash;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TFont::TFont((v8 + 6), graphicsFont, size, matrix, attributes);
  }

  v12 = v9;
  v10 = atomic_exchange(&v12, 0);

  return v10;
}

CTFontRef CTFontCreateCopyWithFamily(CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CFStringRef family)
{
  if (!font)
  {
    return 0;
  }

  v4 = *(font + 5);
  v5 = *(v4 + 408);
  if (!v5)
  {
    return 0;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v5 + 760))(&v10);
  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    if (size == 0.0)
    {
      size = *(v4 + 24);
    }

    v8 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v10, memory_order_acquire), size, matrix);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CTFontRef CTFontCreateForStringWithLanguage(CTFontRef currentFont, CFStringRef string, CFRange range, CFStringRef language)
{
  v4 = 0;
  v28 = *MEMORY[0x1E69E9840];
  if (currentFont && string)
  {
    length = range.length;
    location = range.location;
    if (range.location + range.length > CFStringGetLength(string))
    {
      return 0;
    }

    else
    {
      v10 = *(currentFont + 5);
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26[2] = v11;
      v26[3] = v11;
      v26[0] = v11;
      v26[1] = v11;
      memset(buffer, 0, sizeof(buffer));
      v27 = v26;
      CharactersPtr = CFStringGetCharactersPtr(string);
      if (CharactersPtr)
      {
        v13 = &CharactersPtr[location];
      }

      else
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(buffer, length);
        v29.location = location;
        v29.length = length;
        CFStringGetCharacters(string, v29, buffer[0]);
        v13 = buffer[0];
      }

      v14 = (*(**(v10 + 51) + 824))(*(v10 + 51), v13, length);
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15 == length;
      }

      if (v16 || ((v17 = v15, v14 + location == CFStringGetRangeOfCharacterClusterAtIndex()) ? (v19 = v17 == v18) : (v19 = 0), v19))
      {
        v4 = currentFont;
      }

      else
      {
        v24 = 0;
        v20 = TCFBase<TFont>::Allocate();
        v21 = v20;
        if (v20)
        {
          v20[2] = 0;
          v20[3] = TFont::Hash;
          v20[4] = 0;
          v20[5] = v20 + 6;
          TFont::TFont((v20 + 6), v10, v13, length, language, 0xFFFFFFFFFFFFFFFFLL, 0, &v24);
        }

        v23 = v21;
        v4 = atomic_exchange(&v23, 0);
      }

      v24 = buffer;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
    }
  }

  return v4;
}

void *CTFontCreateForCharactersWithLanguageAndOption(void *a1, unsigned __int16 *a2, uint64_t a3, __CFString *a4, unint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = a1[5];
  (*(**(v12 + 51) + 824))(*(v12 + 51));
  if (v13 != a3)
  {
    v20 = 0;
    v15 = TCFBase<TFont>::Allocate();
    v16 = v15;
    if (v15)
    {
      v15[2] = 0;
      v15[3] = TFont::Hash;
      v15[4] = 0;
      v15[5] = v15 + 6;
      TFont::TFont((v15 + 6), v12, a2, a3, a4, a5, a6 == 0, &v20);
      v17 = v20;
      v19 = v16;
      if (a6)
      {
        *a6 = v20;
        if (!v17)
        {
          goto LABEL_16;
        }

LABEL_17:
        v18 = atomic_exchange(&v19, 0);

        return v18;
      }
    }

    else
    {
      v19 = 0;
      if (a6)
      {
        *a6 = 0;
        goto LABEL_16;
      }

      v17 = 0;
    }

    if (v17 >= a3)
    {
      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (a6)
  {
    *a6 = a3;
  }

  return a1;
}

void TCFBase_NEW<CTFont,__CTFontDescriptor const*,double &,decltype(nullptr),decltype(nullptr)>(const __CTFontDescriptor **a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v6 = TCFBase<TFont>::Allocate();
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = *a2;
    v6[2] = 0;
    v6[3] = TFont::Hash;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TFont::TFont((v6 + 6), v8, v9, 0, 0);
  }

  *a3 = v7;
}

uint64_t CTFontGetPhysicalSymbolicTraits(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 408)) != 0)
  {
    return (*(*v1 + 536))();
  }

  else
  {
    return 0;
  }
}

unint64_t CTFontCreateForCharacterRange(uint64_t a1, const unsigned __int16 *a2, uint64_t a3, CFRange *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v13.location = 0;
  v13.length = 0;
  v8 = TCFBase<TFont>::Allocate();
  v9 = v8;
  if (v8)
  {
    v8[2] = 0;
    v8[3] = TFont::Hash;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TFont::TFont((v8 + 6), v7, a2, a3, &v13);
  }

  v12 = v9;
  if (a4)
  {
    *a4 = v13;
  }

  v10 = atomic_exchange(&v12, 0);

  return v10;
}

CGAffineTransform *__cdecl CTFontGetMatrix(CGAffineTransform *__return_ptr retstr, CGAffineTransform *font)
{
  v2 = MEMORY[0x1E695EFD0];
  if (font && *(*&font->ty + 48))
  {
    v2 = *(*&font->ty + 48);
  }

  v3 = v2[1];
  *&retstr->a = *v2;
  *&retstr->c = v3;
  *&retstr->tx = v2[2];
  return font;
}

uint64_t CTFontIsVertical(uint64_t result)
{
  if (result)
  {
    return *(*(result + 40) + 12) & 1;
  }

  return result;
}

CFDictionaryRef CTFontCopyTraits(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  TBaseFont::CopyTraits(*(*(font + 5) + 408), *(*(font + 5) + 12) & 1, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

double CTFontGetWidth(uint64_t a1)
{
  v1 = 0.0;
  if (a1)
  {
    v2 = *(*(a1 + 40) + 408);
    if (v2)
    {
      explicit = atomic_load_explicit(v2 + 30, memory_order_acquire);
      if (!explicit)
      {
        explicit = TBaseFont::CreateTraitsValues(v2);
      }

      if (explicit)
      {
        return *(explicit + 16);
      }
    }
  }

  return v1;
}

CFStringRef CTFontCopyFullName(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 72))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CFStringRef CTFontCopyDisplayName(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 88))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CFStringRef CTFontCopyName(CTFontRef font, CFStringRef nameKey)
{
  v2 = 0;
  if (font && nameKey)
  {
    (*(**(*(font + 5) + 408) + 72))(&v4);
    v2 = atomic_exchange(&v4, 0);
  }

  return v2;
}

unint64_t CTFontCopyOTName(uint64_t a1, int a2)
{
  v2 = 0;
  if (a1 && a2 < 0)
  {
    (*(**(*(a1 + 40) + 408) + 80))(&v4);
    v2 = atomic_exchange(&v4, 0);
  }

  return v2;
}

CFStringRef CTFontCopyLocalizedName(CTFontRef font, CFStringRef nameKey, CFStringRef *actualLanguage)
{
  v3 = 0;
  if (font && nameKey)
  {
    (*(**(*(font + 5) + 408) + 88))(&v5);
    v3 = atomic_exchange(&v5, 0);
  }

  return v3;
}

unint64_t CTFontCopyLocalizedNameWithLanguages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    (*(**(*(a1 + 40) + 408) + 88))(&v5);
    v3 = atomic_exchange(&v5, 0);
  }

  return v3;
}

unint64_t CTFontCopyLocalizedNameByIDWithLanguages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    (*(**(*(a1 + 40) + 408) + 96))(&v5);
    v3 = atomic_exchange(&v5, 0);
  }

  return v3;
}

unint64_t CTFontCopyLogicalCharacterSet(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(*(a1 + 40) + 408) + 776))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CFStringEncoding CTFontGetStringEncoding(CTFontRef font)
{
  if (font)
  {
    return (*(**(*(font + 5) + 408) + 424))();
  }

  else
  {
    return 256;
  }
}

CFArrayRef CTFontCopySupportedLanguages(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 344))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

BOOL CTFontGetGlyphsForLongCharacters(uint64_t a1, const unsigned int *a2, unsigned __int16 *a3, int64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    if (a3)
    {
      return GetGlyphsForLongCharacters(*(a1 + 40), a2, a3, a4) == a4;
    }
  }

  return result;
}

uint64_t CTFontGetGlyphsForCharacterRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    result = *(*(a1 + 40) + 408);
    if (result)
    {
      (*(*result + 680))(result, a3, a4, a2);
      return 1;
    }
  }

  return result;
}

uint64_t CTFontGetGlyphsAndAdvancesForCharacterRange(uint64_t a1, _WORD *a2, double *a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a1)
  {
    v7 = a2;
    if (a2)
    {
      v8 = a3;
      if (a3)
      {
        v9 = *(a1 + 40);
        v10 = *(v9 + 408);
        if (v10)
        {
          v11 = a5;
          v12 = a4;
          if (a4 + a5 < 257 || (*(v9 + 400) & 1) != 0)
          {
            goto LABEL_9;
          }

          if ((*(*v10 + 720))(*(v9 + 408)))
          {
            v10 = *(v9 + 408);
LABEL_9:
            (*(*v10 + 680))(v10, v12, v11, v7);
            TFont::GetAdvancesForGlyphs(v9, v7, v8, 2, v11, 0, 0, 0);
            return 1;
          }

          UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(v9);
          TFont::GetScaledMatrix(v9, &v22);
          a = v22.a;
          result = TBaseFont::AcquireBMPDataCache(v10);
          if (result)
          {
            v15 = result;
            *&v22.a = v10;
            *&v22.b = result;
            v22.c = 0.0;
            v22.d = -3.72066279e-103;
            if (v11 >= 1)
            {
              v16 = MEMORY[0x1E695F060];
              do
              {
                TBMPDataCache::Iterator::GetDataForCharacter(&v22, v12, &v20);
                v17 = v21;
                *v7++ = v20;
                v18 = vdup_n_s32(v17 != 0.0);
                v19.i64[0] = v18.u32[0];
                v19.i64[1] = v18.u32[1];
                *v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), COERCE_UNSIGNED_INT64(a * (UnscaledTrackAmount + v17)), *v16);
                v8 += 2;
                LODWORD(v12) = v12 + 1;
                --v11;
              }

              while (v11);
            }

            os_unfair_lock_unlock(v15);
            return 1;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

__CFString *CTFontCopyStringForGlyph(uint64_t a1)
{
  if (!a1)
  {
    return &stru_1EF25C610;
  }

  v1 = *(*(a1 + 40) + 408);
  if (!v1)
  {
    return &stru_1EF25C610;
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 688))(&v4);
  if (!atomic_load_explicit(&v4, memory_order_acquire))
  {

    return &stru_1EF25C610;
  }

  v2 = atomic_exchange(&v4, 0);

  return v2;
}

CGFloat CTFontGetUnderlinePosition(CTFontRef font)
{
  if (font)
  {
    return TFont::GetUnderlinePositionAndThickness(*(font + 5));
  }

  else
  {
    return 0.0;
  }
}

CGFloat CTFontGetUnderlineThickness(CTFontRef font)
{
  if (!font)
  {
    return 0.0;
  }

  TFont::GetUnderlinePositionAndThickness(*(font + 5));
  return v1;
}

unsigned int CTFontGetUnitsPerEm(CTFontRef font)
{
  if (!font)
  {
    return 1000;
  }

  v1 = *(font + 5);
  if (*(v1 + 56))
  {
    v2 = (v1 + 56);
  }

  else
  {
    TFont::InitStrikeMetrics(v1);
  }

  return *v2;
}

CFIndex CTFontGetGlyphCount(CFIndex font)
{
  if (font)
  {
    return TBaseFont::GetGlyphCount(*(*(font + 40) + 408));
  }

  return font;
}

CGFloat CTFontGetSlantAngle(CTFontRef font)
{
  if (!font)
  {
    return 0.0;
  }

  v1 = *(font + 5);
  v2 = *(v1 + 51);
  TFont::GetScaledMatrix(v1, &v4);
  (*(*v2 + 624))(v2, &v4);
  return result;
}

double CTFontGetDefaultAscent(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = NAN;
  TFont::GetDefaultMetrics(*(a1 + 40), &v4, &v3, &v2);
  return v4;
}

double CTFontGetMaximumAdvance(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  TFont::GetMaxAdvance(*(a1 + 40));
  return result;
}

uint64_t CTFontGetTypographicMetrics(uint64_t a1, double *a2, double *a3, double *a4, _BYTE *a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  TypoMetrics = TFont::GetTypoMetrics(v6, a2, a3, a4);
  v8 = TypoMetrics;
  if (TypoMetrics)
  {
    if (!a5)
    {
      return 1;
    }

    LOBYTE(TypoMetrics) = TFont::UseTypoMetrics(v6);
    goto LABEL_6;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_6:
  *a5 = TypoMetrics;
  return v8;
}

uint64_t CTFontSupportsConnectedLanguage(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 408)) != 0)
  {
    return (*(*v1 + 400))();
  }

  else
  {
    return 0;
  }
}

double CTFontGetTrackingFloor(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = COERCE_DOUBLE(TFont::GetTrackingFloor(*(a1 + 40)));
  if ((v2 & 1) == 0)
  {
    return -1.79769313e308;
  }

  return result;
}

CGGlyph CTFontGetGlyphWithName(CTFontRef font, CFStringRef glyphName)
{
  if (font && glyphName)
  {
    return TFont::GetGlyphWithName(*(font + 5), glyphName);
  }

  else
  {
    return 0;
  }
}

CFStringRef CTFontCopyNameForGlyph(CTFontRef font, CGGlyph glyph)
{
  if (!font)
  {
    return 0;
  }

  TFont::CopyNameForGlyph(*(font + 5), glyph, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

void std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 >> 5;
  if (a2 <= v5 >> 5)
  {
    if (a2 >= v6)
    {
      return;
    }

    v23 = &v3[32 * a2];
    goto LABEL_17;
  }

  v7 = a2 - v6;
  v8 = a1[2];
  if (v7 <= (v8 - v4) >> 5)
  {
    bzero(a1[1], 32 * v7);
    v23 = &v4[32 * v7];
LABEL_17:
    a1[1] = v23;
    return;
  }

  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v9 = v8 - v3;
  v10 = v9 >> 4;
  if (v9 >> 4 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFE0)
  {
    v11 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = (a1 + 3);
  v13 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGRect,30ul>>((a1 + 3), v11);
  v14 = (v13 + v5);
  v16 = v13 + 32 * v15;
  bzero(v14, 32 * v7);
  v17 = &v14[32 * v7];
  v18 = a1[1] - *a1;
  v19 = &v14[-v18];
  memcpy(v19, *a1, v18);
  v20 = *a1;
  *a1 = v19;
  a1[1] = v17;
  v21 = a1[2];
  a1[2] = v16;
  if (v20)
  {
    if (v12 > v20 || (v22 = (a1 + 123), a1 + 123 <= v20))
    {

      operator delete(v20);
    }

    else if (v21 == *v22)
    {
      *v22 = v20;
    }
  }
}

double CTFontGetTransformedBoundingRectsForGlyphsAndStyle(uint64_t a1, unsigned __int32 a2, char a3, CGAffineTransform *a4, const unsigned __int16 *a5, CGRect *a6, unint64_t a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1 || !a5)
  {
    return *MEMORY[0x1E695F050];
  }

  memset(v19, 170, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = v19;
  if (!a6)
  {
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::resize(v18, a7);
    a6 = v18[0];
  }

  TFont::GetBoundingBoxesForGlyphs(*(a1 + 40), a4, a3, a5, a6, a7, a2);
  v15 = v14;
  v17 = v18;
  std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v17);
  return v15;
}

void std::vector<CGSize,TInlineBufferAllocator<CGSize,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<CGSize,TInlineBufferAllocator<CGSize,30ul>>::__append(a1, a2 - v2);
  }
}

void CTFontGetVerticalTranslationsForGlyphs(CTFontRef font, const CGGlyph *glyphs, CGSize *translations, CFIndex count)
{
  if (font && glyphs && translations && count >= 1)
  {
    TFont::GetVerticalTranslationsForGlyphs(*(font + 5), glyphs, translations, count);
  }
}

CFIndex CTFontGetLigatureCaretPositions(CTFontRef font, CGGlyph glyph, CGFloat *positions, CFIndex maxPositions)
{
  if (font && (positions || !maxPositions))
  {
    return TFont::GetLigatureCaretPositionsForGlyph(*(font + 5), glyph, positions, maxPositions);
  }

  else
  {
    return 0;
  }
}

CGRect CTFontGetOpticalBoundsForGlyphs(CTFontRef font, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count, CFOptionFlags options)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (font && glyphs && count > 0)
  {
    v7 = boundingRects;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[0] = v9;
    v29[1] = v9;
    v27 = 0;
    v28 = 0;
    __p = 0;
    v30[0] = v29;
    if (!boundingRects)
    {
      if (count >> 59)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v21 = 2 * count;
      v22 = (32 * count) | 0x18;
      if (v22 > 56)
      {
        operator new();
      }

      v30[0] = &__p + v22;
      bzero(v29, 32 * count);
      v23 = &v29[v21];
      v7 = v29;
      v24 = __p;
      v25 = v28;
      __p = v29;
      v27 = v23;
      v28 = &v29[2 * count];
      if (v24)
      {
        if (v29 > v24 || v30 <= v24)
        {
          operator delete(v24);
          v7 = __p;
        }

        else if (v25 == v30[0])
        {
          v30[0] = v24;
        }
      }
    }

    OpticalBoundsForGlyphs = TFont::GetOpticalBoundsForGlyphs(*(font + 5), glyphs, v7, count);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (__p)
    {
      v27 = __p;
      if (v29 > __p || v30 <= __p)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    OpticalBoundsForGlyphs = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

  v17 = OpticalBoundsForGlyphs;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

unint64_t CTFontCopyVariationAxesInternal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(*(a1 + 40) + 408) + 120))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CFArrayRef CTFontCopyFeatures(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  TBaseFont::CopyFeaturesLocalized(*(*(font + 5) + 408), &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTFontCopyFeaturesInternal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(*(a1 + 40) + 408) + 136))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CFArrayRef CTFontCopyFeatureSettings(CFArrayRef font)
{
  if (font)
  {
    return atomic_load_explicit((*(font + 5) + 176), memory_order_acquire);
  }

  return font;
}

CFArrayRef CTFontCopyAvailableTables(CTFontRef font, CTFontTableOptions options)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 472))(&v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

uint64_t CTFontHasTable(uint64_t a1, int a2)
{
  if (a1 && a2)
  {
    return (*(**(*(a1 + 40) + 408) + 480))();
  }

  else
  {
    return 0;
  }
}

CFDataRef CTFontCopyTable(CTFontRef font, CTFontTableTag table, CTFontTableOptions options)
{
  v3 = 0;
  if (font && table)
  {
    (*(**(*(font + 5) + 408) + 488))(&v5);
    v3 = atomic_exchange(&v5, 0);
  }

  return v3;
}

unint64_t CTFontCopyOTFontFeatureTable(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(**(*(a1 + 40) + 408) + 144))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

__CFDictionary *CTFontCopyConvertedTables(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0;
  v3 = *(*(a1 + 40) + 408);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v3 + 488))(&v7, v3, 1196643650);
  if (atomic_load_explicit(&v7, memory_order_acquire))
  {
    CopyConvertedMorxFromGSUB(v3, atomic_load_explicit(&v7, memory_order_acquire));
  }

  else
  {

    v5 = 0;
  }

  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    CFDictionaryAddValue(Mutable, @"amor", atomic_load_explicit(&v5, memory_order_acquire));
    if (atomic_load_explicit(&v6, memory_order_acquire))
    {
      CFDictionaryAddValue(Mutable, @"ltag", atomic_load_explicit(&v6, memory_order_acquire));
    }
  }

  return Mutable;
}

CFTypeID CTFontGetTypeID(void)
{
  if (TCFBase<TFont>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TFont>::GetTypeID(void)::once, 0, TCFBase<TFont>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TFont>::fTypeID;
}

unint64_t CTFontCopySampleLettersWithLanguages(uint64_t a1, uint64_t a2, const __CFArray *a3, void **a4)
{
  if (!a1)
  {
    return 0;
  }

  TSampleManager::TSampleManager(&v11);
  TSampleManagerImp::Copy(v11, 0, *(*(a1 + 40) + 408), a2, a3, a4, &v13);
  v12 = atomic_exchange(&v13, 0);

  if (atomic_load_explicit(&v12, memory_order_acquire))
  {
    v8 = atomic_exchange(&v12, 0);
  }

  else
  {
    v8 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v13 = v8;
  v9 = atomic_exchange(&v13, 0);

  return v9;
}

unint64_t CTFontCopySampleStringWithLanguages(uint64_t a1, uint64_t a2, const __CFArray *a3, void **a4)
{
  if (!a1)
  {
    return 0;
  }

  TSampleManager::TSampleManager(&v10);
  TSampleManager::CopySampleString(&v10, *(*(a1 + 40) + 408), a2, a3, a4, &v11);
  v8 = atomic_exchange(&v11, 0);

  return v8;
}

unint64_t CTCopySampleStringForLanguage(void *a1, unsigned int a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  TSampleManager::TSampleManager(&v6);
  TSampleManagerImp::CopySampleLettersForLanguage(a1, v6, a2, &v7);
  TSampleManager::CreateStringWithLetters(atomic_load_explicit(&v7, memory_order_acquire), &v6);
  v4 = atomic_exchange(&v6, 0);

  return v4;
}

void CTFontEnumerateOverlappingGlyphs(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      EnumerateOverlappingGlyphs(*(*(a1 + 40) + 408), a2, a3, a4, a6);
    }
  }
}

uint64_t CTFontIsAppleColorEmoji(uint64_t result)
{
  if (result)
  {
    return (*(**(*(result + 40) + 408) + 720))();
  }

  return result;
}

uint64_t CTFontGetDescriptorOptions(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = atomic_load_explicit((*(a1 + 40) + 16), memory_order_acquire);
  v2 = *(v1[5] + 16);

  return v2;
}

BOOL CTFontHasDerivedOpticalSize(_BOOL8 result)
{
  if (result)
  {
    return TFont::HasDerivedOpticalSize(*(result + 40));
  }

  return result;
}

void CTFontDrawGlyphsAtPoint(uint64_t a1, CGGlyph *a2, unint64_t a3, CGContext *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v7 = *(a1 + 40);
      *&v8 = -1;
      *(&v8 + 1) = -1;
      *&v25.c = v8;
      *&v25.tx = v8;
      *&v25.a = v8;
      GetFontScaleTransform(&v25, v7);
      CGContextGetCharacterSpacing();
      CGAffineTransformMakeTranslation(&v23, v9, v9);
      *t1 = v25;
      v17 = v23;
      CGAffineTransformConcat(&v24, t1, &v17);
      v25 = v24;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v53 = v10;
      v54 = v10;
      v51 = v10;
      v52 = v10;
      v49 = v10;
      v50 = v10;
      v47 = v10;
      v48 = v10;
      v45 = v10;
      v46 = v10;
      v43 = v10;
      v44 = v10;
      v41 = v10;
      v42 = v10;
      v40 = v10;
      v39 = v10;
      v38 = v10;
      v37 = v10;
      v36 = v10;
      v35 = v10;
      v34 = v10;
      v33 = v10;
      v32 = v10;
      v31 = v10;
      v30 = v10;
      v29 = v10;
      v28 = v10;
      v27 = v10;
      *&t1[40] = v10;
      *&t1[24] = v10;
      memset(t1, 0, 24);
      v55 = &t1[24];
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](t1, a3);
      v11 = *&t1[8];
      bzero(*&t1[8], 16 * a3);
      *&t1[8] = v11 + 16 * a3;
      TFont::GetUnsummedAdvancesForGlyphs(v7, a2, *t1, 2, a3, 0, 0);
      memset(&v17, 255, sizeof(v17));
      v19 = xmmword_18475BDD0;
      v20 = unk_18475BDE0;
      v21 = xmmword_18475BDF0;
      v18 = unk_18475BDC0;
      v12 = *(MEMORY[0x1E695EFD0] + 16);
      v13 = v12;
      *&v17.a = *MEMORY[0x1E695EFD0];
      *&v17.c = v12;
      v15 = *MEMORY[0x1E695EFD0];
      v14 = *(MEMORY[0x1E695EFD0] + 16);
      *&v17.tx = *(MEMORY[0x1E695EFD0] + 32);
      v18 = v15;
      v16 = *(MEMORY[0x1E695EFD0] + 32);
      v19 = v14;
      v20 = v16;
      *&v21 = 0;
      BYTE8(v21) = 0;
      HIDWORD(v21) = 19;
      v22 = 0;
      *&v24.a = *&v17.a;
      *&v24.c = v13;
      *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
      v23 = v25;
      DrawGlyphsWithAdvancesAndTransform(v7, a2, *t1, a3, a4, &v24, &v23.a, &v17);
      *&v17.a = t1;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v17);
    }
  }
}

CGAffineTransform *GetFontScaleTransform(CGAffineTransform *a1, TBaseFont **a2)
{
  CGContextGetFontSize();
  v5 = v4;
  if (*(a2 + 14))
  {
    v6 = (a2 + 7);
  }

  else
  {
    TFont::InitStrikeMetrics(a2);
  }

  v7 = *v6;
  v8 = v5 * (TFont::GetEffectiveSize(a2) / *(a2 + 3)) / v7;

  return CGAffineTransformMakeScale(a1, v8, v8);
}

double CTFontGetSbixImageSizeForGlyph(uint64_t a1, unsigned int a2, CGContext *a3)
{
  if (!a3)
  {
    return 0.0;
  }

  ContentsScale = GetContentsScale(a3);

  return CTFontGetSbixImageSizeForGlyphAndContentsScale(a1, a2, ContentsScale);
}

long double GetContentsScale(CGContext *a1)
{
  Type = CGContextGetType();
  if (Type <= 6 && ((1 << Type) & 0x46) != 0)
  {
    return 300.0;
  }

  *&v4 = -1;
  *(&v4 + 1) = -1;
  *&v5.c = v4;
  *&v5.tx = v4;
  *&v5.a = v4;
  CGContextGetUserSpaceToDeviceSpaceTransform(&v5, a1);
  return hypot(v5.c, v5.d);
}

double CTFontGetSbixImageSizeForGlyphAndContentsScale(uint64_t a1, unsigned int a2, double a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = *(a1 + 40);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v5[51] + 488))(&v19);
  if (atomic_load_explicit(&v19, memory_order_acquire))
  {
    memset(v18, 170, sizeof(v18));
    explicit = atomic_load_explicit(&v19, memory_order_acquire);
    TBaseFont::GetGlyphCount(v5[51]);
    TsbixContext::TsbixContext(v18, explicit);
    v13[0] = -1;
    v13[1] = -1;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = -1;
    *(&v7 + 1) = -1;
    v15 = v7;
    v16 = v7;
    *&v17 = NAN;
    TFont::GetColorBitmapFontTranslate(v5);
    v9 = v8;
    v20.x = v10;
    v20.y = v9;
    v11 = *&v17;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

_anonymous_namespace_::TCGImageData *anonymous namespace::TCGImageData::TCGImageData(_anonymous_namespace_::TCGImageData *this, TBaseFont **context, unsigned int a3, atomic_ullong *a4, double a5, CGPoint a6)
{
  v121[1] = *MEMORY[0x1E69E9840];
  *this = a6;
  *(this + 2) = 0;
  *(this + 24) = *MEMORY[0x1E695EFF8];
  *(this + 40) = *MEMORY[0x1E695F060];
  *(this + 7) = 0;
  if (qword_1ED5678E0 != -1)
  {
    dispatch_once_f(&qword_1ED5678E0, context, GetGlyphAfterHiding(TFont const*,unsigned short)::$_0::__invoke);
  }

  if (_MergedGlobals_11 == a3 && ((IsGB18030ComplianceRequired() & 1) != 0 || CurrentLocaleIsChina()))
  {
    a3 = word_1ED5678CA;
  }

  if (TBaseFont::GetGlyphCount(context[51]) <= a3)
  {
    return this;
  }

  memset(v90, 170, sizeof(v90));
  v91 = NAN;
  v92 = -1;
  v93 = 0xAAAAAAAAAAAAAAAALL;
  v94 = 0xAAAAAAAAAAAAAAAALL;
  TFont::FindColorBitmapForGlyph(context, a3, a4, v90, a5);
  if (v94 != 1)
  {
    return this;
  }

  v11 = v90[0];
  v12 = v91;
  *(this + 7) = v92;
  v13 = v12 * a5;
  v14 = (bswap32(v11[1]) >> 16) / v13;
  *(this + 3) = (bswap32(*v11) >> 16) / v13;
  *(this + 4) = v14;
  if (*(*context[51] + 720))() && (TFont::GetEmojiMLUpscalingTimeout(context), (v15))
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_83;
    }

    v16 = *(this + 7);
    v17 = v16 / v91 > v16 && v16 == 160.0;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  v89 = 0;
  if ((*(context + 12) & 2) == 0)
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_83;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v90[2] ^ -BYTE1(v93)];
    TBaseFont::RetainedObject(context[51], 0, 1, &valuePtr);

    if (!atomic_load_explicit(&v89, memory_order_acquire))
    {
      *&valuePtr = COERCE_DOUBLE(objc_opt_new());

      [atomic_load_explicit(&v89 memory:"setName:" order:@"com.apple.CoreText.UpscaledGlyphs"acquire)];
      [atomic_load_explicit(&v89 memory:"setEvictsObjectsWithDiscardedContent:" order:0acquire)];
      TBaseFont::SetObject(context[51], 0, 1, atomic_load_explicit(&v89, memory_order_acquire));
    }

    v19 = [atomic_load_explicit(&v89 memory:"objectForKey:" order:v18acquire)];
    if (v19)
    {
      v20 = v19;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v97[0] = 0xAAAAAAAAAAAAAAAALL;
        *&valuePtr = COERCE_DOUBLE([v20 valueForKey:@"image"]);
        v97[0] = atomic_exchange(&valuePtr, 0);

        if (atomic_load_explicit(v97, memory_order_acquire))
        {
          v21 = [v20 valueForKey:@"scaleFactor"];
          *&valuePtr = NAN;
          CFNumberGetValue(v21, kCFNumberDoubleType, &valuePtr);
          v22 = valuePtr;

          explicit = atomic_load_explicit(this + 2, memory_order_acquire);
          v24 = v13 * *&v22;
          Width = CGImageGetWidth(explicit);
          Height = CGImageGetHeight(explicit);
          *(this + 5) = Width / v24;
          *(this + 6) = Height / v24;
          v27 = v97[0];
LABEL_81:

          return this;
        }
      }
    }
  }

  v28 = atomic_load_explicit(&v89, memory_order_acquire);
  v30 = 0;
  v88 = 0;
  if ((*(context + 12) & 2) == 0)
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_83;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v90[2] ^ -BYTE1(v93)];
    TBaseFont::RetainedObject(context[51], 0, 0, &valuePtr);

    if (!atomic_load_explicit(&v88, memory_order_acquire))
    {
      *&valuePtr = COERCE_DOUBLE(objc_opt_new());

      [atomic_load_explicit(&v88 memory:"setName:" order:@"com.apple.CoreText.GlyphImages"acquire)];
      [atomic_load_explicit(&v88 memory:"setEvictsObjectsWithDiscardedContent:" order:0acquire)];
      TBaseFont::SetObject(context[51], 0, 0, atomic_load_explicit(&v88, memory_order_acquire));
    }

    *&valuePtr = -3.72066208e-103;
    v97[0] = [atomic_load_explicit(&v88 memory:"objectForKey:" order:v30acquire)];
    *&valuePtr = COERCE_DOUBLE(atomic_exchange(v97, 0));

    if (atomic_load_explicit(&valuePtr, memory_order_acquire))
    {
      v31 = atomic_load_explicit(&valuePtr, memory_order_acquire);
      if (*MEMORY[0x1E695E738] != v31)
      {

        v32 = atomic_load_explicit(this + 2, memory_order_acquire);
        v33 = CGImageGetWidth(v32);
        v34 = CGImageGetHeight(v32);
        *(this + 5) = v33 / v13;
        *(this + 6) = v34 / v13;
      }
    }
  }

  if (atomic_load_explicit(this + 2, memory_order_acquire) != 0 && !v17)
  {
    goto LABEL_80;
  }

  if (!atomic_load_explicit(this + 2, memory_order_acquire))
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_83;
    }

    if (v93)
    {
      v35 = v90[1];
      if ((v90[1] - 10) <= 0xFFFFFFFFFFFFFFF9)
      {
        v36 = *(v11 + 1);
        if (v36 != 1667919205 || (*(*context[51] + 720))(context[51]))
        {
          CopyEmojiImage(&valuePtr, bswap32(v36), v11 + 4, v13, v29, (v35 - 8), atomic_load_explicit(a4, memory_order_acquire), this + 40);

          if (atomic_load_explicit(this + 2, memory_order_acquire))
          {
            if ((v94 & 1) == 0)
            {
              goto LABEL_83;
            }

            if (BYTE1(v93) == 1)
            {
              CreateHorizontallyFlippedCopyOfImage(&valuePtr, atomic_load_explicit(this + 2, memory_order_acquire));
            }
          }

          if (atomic_load_explicit(this + 2, memory_order_acquire))
          {
            v37 = atomic_load_explicit(this + 2, memory_order_acquire);
          }

          else
          {
            v37 = *MEMORY[0x1E695E738];
          }

          [atomic_load_explicit(&v88 memory:"setObject:forKey:" order:{v37, v30}acquire)];
        }
      }
    }
  }

  if (atomic_load_explicit(this + 2, memory_order_acquire) == 0 || !v17)
  {
LABEL_80:

    v27 = v28;
    goto LABEL_81;
  }

  v85 = 0xAAAAAAAAAAAAAAAALL;
  *&v86 = NAN;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v38 = atomic_load_explicit(this + 2, memory_order_acquire);
  EmojiMLUpscalingTimeout = TFont::GetEmojiMLUpscalingTimeout(context);
  if (v40)
  {
    v41 = *&EmojiMLUpscalingTimeout;
    *&valuePtr = MEMORY[0x1E69E9820];
    v100 = 3321888768;
    v101 = ___ZZN12_GLOBAL__N_112TCGImageDataC1EPK5TFonttRK12TsbixContextd7CGPointENKUlP7CGImagedE_cvU13block_pointerFvS9_dEEv_block_invoke;
    v102 = &__block_descriptor_48_8_32c87_ZTSKZN12_GLOBAL__N_112TCGImageDataC1EPK5TFonttRK12TsbixContextd7CGPointEUlP7CGImagedE__e21_v24__0__CGImage__8d16l;
    v103 = v28;
    v104 = v18;
    v42 = [objc_msgSend(&valuePtr "copy")];

    v107 = 0;
    v108 = &v107;
    v109 = 0x3052000000;
    v110 = __Block_byref_object_copy__61;
    v44 = qword_1ED567940;
    v111 = __Block_byref_object_dispose__62;
    v112 = qword_1ED567940;
    if (!qword_1ED567940)
    {
      v114 = MEMORY[0x1E69E9820];
      v115 = 3221225472;
      v116 = ___ZL18getMADServiceClassv_block_invoke;
      v117 = &unk_1E6E37AF8;
      v118 = &v107;
      MediaAnalysisServicesLibraryCore(v43);
      Class = objc_getClass("MADService");
      v46 = v118;
      *(v118[1] + 40) = Class;
      qword_1ED567940 = *(v46[1] + 40);
      v44 = v108[5];
    }

    _Block_object_dispose(&v107, 8);
    v47 = [v44 service];
    v48 = v47;
    v107 = 0;
    v108 = &v107;
    v109 = 0x3052000000;
    v110 = __Block_byref_object_copy__61;
    v49 = qword_1ED567948;
    v111 = __Block_byref_object_dispose__62;
    v112 = qword_1ED567948;
    if (!qword_1ED567948)
    {
      v114 = MEMORY[0x1E69E9820];
      v115 = 3221225472;
      v116 = ___ZL27getMADMLScalingRequestClassv_block_invoke;
      v117 = &unk_1E6E37AF8;
      v118 = &v107;
      MediaAnalysisServicesLibraryCore(v47);
      v50 = objc_getClass("MADMLScalingRequest");
      v51 = v118;
      *(v118[1] + 40) = v50;
      qword_1ED567948 = *(v51[1] + 40);
      v49 = v108[5];
    }

    _Block_object_dispose(&v107, 8);
    v52 = [[v49 alloc] initWithScaledImageWidth:320 scaledImageHeight:320];
    if (v52)
    {
      v53 = v52;
      v54 = v41;
      v107 = 0;
      v108 = &v107;
      v109 = 0x3812000000;
      v110 = __Block_byref_object_copy__0;
      v112 = 0;
      v113 = 0;
      v111 = __Block_byref_object_dispose__0;
      v114 = 0;
      v115 = &v114;
      v116 = 0x2020000000;
      v117 = 0;
      ColorSpace = CGImageGetColorSpace(v38);
      Image = 0;
      if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
      {
        v57 = CGImageGetWidth(v38);
        v58 = v48;
        v59 = CGImageGetHeight(v38);
        v84 = v18;
        v60 = v28;
        v61 = v42;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v63 = CGBitmapContextCreate(0, v57, v59, 8uLL, 0, DeviceRGB, 2u);
        CGContextClear();
        v122.size.width = v57;
        v122.size.height = v59;
        v48 = v58;
        v122.origin.x = 0.0;
        v122.origin.y = 0.0;
        CGContextDrawImage(v63, v122, v38);
        Image = CGBitmapContextCreateImage(v63);

        v64 = DeviceRGB;
        v42 = v61;
        v28 = v60;
        v18 = v84;
      }

      if (Image)
      {
        v38 = Image;
      }

      *&valuePtr = MEMORY[0x1E69E9820];
      v100 = 3221225472;
      v101 = ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke;
      v102 = &unk_1E6E37A40;
      v105 = &v114;
      v106 = v38;
      v103 = v42;
      v104 = &v107;
      if (v54 == 0.0)
      {
        v95 = 0xAAAAAAAAAAAAAAAALL;
        v121[0] = v53;
        if ([v48 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] onCGImage:"arrayWithObjects:count:" withOrientation:v121 andIdentifier:1) error:{v38, 1, 0, &v95}])
        {
          v65 = [objc_msgSend(v53 "results")];
          v101(&valuePtr, v65);
        }

        else
        {
          v83 = v95;
          CFLog();
        }
      }

      else if (v54 < 0.0)
      {
        v120 = v53;
        v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke_3;
        v98[3] = &unk_1E6E37A88;
        v98[4] = v53;
        v98[5] = &__block_literal_global_55;
        v98[6] = &valuePtr;
        [v48 performRequests:v66 onCGImage:v38 withOrientation:1 andIdentifier:0 completionHandler:v98];
      }

      else
      {
        v67 = dispatch_group_create();
        dispatch_group_enter(v67);
        v119 = v53;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = ___ZL22GetMLUpscaledImageDataP7CGImagemmdU13block_pointerFvS0_dE_block_invoke_4;
        v97[3] = &unk_1E6E37AB0;
        v97[4] = v53;
        v97[5] = v67;
        v97[6] = &__block_literal_global_55;
        v97[7] = &valuePtr;
        [v48 performRequests:v68 onCGImage:v38 withOrientation:1 andIdentifier:0 completionHandler:v97];
        v69 = 2.0;
        if (v54 <= 2.0)
        {
          v69 = v54;
        }

        v70 = dispatch_time(0, (v69 * 1000000000.0));
        dispatch_group_wait(v67, v70);
        dispatch_release(v67);
      }

      if (atomic_load_explicit(v108 + 6, memory_order_acquire) && *(v115 + 24) > 2.22044605e-16)
      {
        v95 = atomic_load_explicit(v108 + 6, memory_order_acquire);
        v96 = *(v115 + 24);
        v85 = atomic_exchange(&v95, 0);
        v86 = v96;
        v71 = 1;
        LOBYTE(v87) = 1;
      }

      else
      {
        v71 = 0;
        LOBYTE(v85) = 0;
        LOBYTE(v87) = 0;
      }

      _Block_object_dispose(&v114, 8);
      _Block_object_dispose(&v107, 8);

      if (v71)
      {

        if (v87)
        {
          v72 = *&v86;
          v73 = atomic_load_explicit(this + 2, memory_order_acquire);
          v74 = v13 * v72;
          v75 = CGImageGetWidth(v73);
          v76 = CGImageGetHeight(v73);
          *(this + 5) = v75 / v74;
          *(this + 6) = v76 / v74;
          goto LABEL_78;
        }

LABEL_83:
        __break(1u);
      }
    }

    else
    {
      LOBYTE(v85) = 0;
      LOBYTE(v87) = 0;
    }

    v77 = atomic_load_explicit(&v89, memory_order_acquire);
    [v77 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null", v83), v18}];
LABEL_78:
    if (v87 == 1)
    {
    }

    goto LABEL_80;
  }

  std::__throw_bad_optional_access[abi:fn200100]();
  return TFont::HasBBoxes(v79, v80, v81, v82);
}

CGFont *TFont::HasBBoxes(TFont *this, const unsigned __int16 *a2, size_t a3, CGRect *a4)
{
  result = TBaseFont::GetInitializedGraphicsFont(this);
  if (result)
  {

    return CGFontGetGlyphBBoxes(result, a2, a3, a4);
  }

  return result;
}

void anonymous namespace::TCGImageData::DrawAtPoint(_anonymous_namespace_::TCGImageData *this, CGContextRef c, CGPoint a3)
{
  y = a3.y;
  x = a3.x;
  v7 = *(this + 5);
  v8 = *(this + 6);
  TextPosition = CGContextGetTextPosition(c);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *&v19.c = v10;
  *&v19.tx = v10;
  *&v19.a = v10;
  CGContextGetUserSpaceToDeviceSpaceTransform(&v19, c);
  v11 = *&v19.a;
  v12 = *&v19.c;
  v13 = *this;
  v14 = *(this + 1);
  v15 = *(this + 3);
  v16 = *(this + 4);
  if (atomic_load_explicit(this + 2, memory_order_acquire))
  {
    v17 = *(&v11 + 1) + *(&v12 + 1);
    v18 = 1.0;
    if (*(&v11 + 1) * *&v12 == 0.0)
    {
      v18 = *&v12 + *&v11;
    }

    else
    {
      v17 = 1.0;
    }

    v20.origin.y = round(v17 * (v16 + y + TextPosition.y + v14)) / v17 - TextPosition.y;
    v20.origin.x = round(v18 * (v15 + x + TextPosition.x + v13)) / v18 - TextPosition.x;
    v20.size.height = round(v8 * v17) / v17;
    v20.size.width = round(v7 * v18) / v18;
    CGContextDrawImage(c, v20, atomic_load_explicit(this + 2, memory_order_acquire));
  }
}

void DrawInvisibleGlyph(CGContext *a1, CGGlyph a2, CGPoint a3, const CGAffineTransform *a4, const CGAffineTransform *a5)
{
  y = a3.y;
  x = a3.x;
  CGContextGetAlpha();
  v12 = v11;
  CGContextSetAlpha(a1, 0.0);
  v14.x = x;
  v14.y = y;
  DrawVisibleGlyph(a1, a2, v14, a4, a5);

  CGContextSetAlpha(a1, v12);
}

void DrawVisibleGlyph(CGContextRef c, CGGlyph a2, CGPoint a3, const CGAffineTransform *a4, const CGAffineTransform *a5)
{
  Lpositions = a3;
  glyphs = a2;
  v6 = vandq_s8(vceqq_f64(*&a4->a, xmmword_18475BD80), vandq_s8(vceqq_f64(*&a4->c, xmmword_18475A330), vceqzq_f64(*&a4->tx)));
  if ((vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    CGContextShowGlyphsAtPositions(c, &glyphs, &Lpositions, 1uLL);
  }

  else
  {
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *&v14.c = v9;
    *&v14.tx = v9;
    *&v14.a = v9;
    CGContextGetTextMatrix(&v14, c);
    v10 = vaddq_f64(*&a5->tx, vmlaq_n_f64(vmulq_n_f64(*&a5->c, Lpositions.y), *&a5->a, Lpositions.x));
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *&v13.c = v11;
    *&v13.tx = v11;
    *&v13.a = v11;
    v12 = *&a4->c;
    *&t1.a = *&a4->a;
    *&t1.c = v12;
    *&t1.tx = *&a4->tx;
    Lpositions = v10;
    t2 = v14;
    CGAffineTransformConcat(&v13, &t1, &t2);
    t1 = v13;
    CGContextSetTextMatrix(c, &t1);
    CGContextShowGlyphsAtPositions(c, &glyphs, &Lpositions, 1uLL);
    t1 = v14;
    CGContextSetTextMatrix(c, &t1);
  }
}

void CTFontDrawGlyphs(CTFontRef font, const CGGlyph *glyphs, const CGPoint *positions, size_t count, CGContextRef context)
{
  if (font && glyphs && positions && count)
  {
    if (context)
    {
      v9 = *(font + 5);
      TFont::SetInContext(v9, context);
      *&v10 = -1;
      *(&v10 + 1) = -1;
      *&v13.c = v10;
      *&v13.tx = v10;
      *&v13.a = v10;
      TFont::GetEffectiveMatrix(v9, &v13);
      memset(v12, 255, 48);
      memset(&v12[48], 170, 24);
      v11 = v13;
      v14 = v13;
      CGAffineTransformInvert(v12, &v14);
      *&v12[48] = 0;
      v12[56] = 0;
      *&v12[60] = 19;
      *&v12[64] = 0;
      DrawGlyphsAtPositions(v9, glyphs, positions, count, context, &v11);
    }
  }
}

CFArrayRef CTFontCopyDefaultCascadeList()
{
  v0 = CTFontDescriptorCreateForUIType(0, 0, 0.0);
  memcpy(v4, &unk_18475BE08, sizeof(v4));
  TFont::TFont(v4, v0, 0.0, 0, 0, 0);
  DefaultFallbacks = TFont::GetDefaultFallbacks(v4);
  if (DefaultFallbacks)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], DefaultFallbacks);
  }

  else
  {
    Copy = 0;
  }

  TFont::~TFont(v4);

  return Copy;
}

unint64_t TFont::GetDefaultFallbacks(TFont *this)
{
  v2 = *(this + 51);
  IsSystemUIFontAndForShaping = TFont::IsSystemUIFontAndForShaping(this, &v6);
  v4 = (*(this + 3) >> 6) & 7;

  return TBaseFont::GetDefaultFallbacks(v2, IsSystemUIFontAndForShaping, v4);
}

CFArrayRef CTFontCopyDefaultCascadeListForLanguages(CTFontRef font, CFArrayRef languagePrefList)
{
  if (!font)
  {
    return 0;
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  TFont::CreateDefaultCascadeList(*(font + 5), languagePrefList, &v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], atomic_load_explicit(&v4, memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

atomic_ullong *CTFontInitializeShapingGlyphs(atomic_ullong *result)
{
  if (result)
  {
    result = result[5];
    if (!result[41])
    {
      TFont::InitShapingGlyphs(result);
    }
  }

  return result;
}

uint64_t CTFontTransformGlyphs(const __CTFont *a1, unsigned __int16 *a2, CGSize *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v22[67] = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    if (a4 >= 1)
    {
      if (a5)
      {
        v10 = a5;
      }

      else
      {
        v10 = 3;
      }

      if (!StackHasAvailable(0x8000uLL))
      {
        return 0;
      }

      memcpy(v22, &unk_18475C038, 0x218uLL);
      TRunGlue::TRunGlue(v22, a1, a2, a3, a4, 0, 0, 0);
      v11 = v22[62];
      ShapingType = TBaseFont::GetShapingType(*(v22[62] + 408));
      v13 = ShapingType;
      v14 = 0;
      if (ShapingType >= 2)
      {
        if (v22[63] <= 0x10000uLL)
        {
          v15 = ((LODWORD(v22[63]) + 63) >> 3) & 0x7FF8;
        }

        else
        {
          v15 = 0x2000;
        }

        MEMORY[0x1EEE9AC00](ShapingType, v15);
        v14 = &v20 - v16;
        bzero(&v20 - v16, v17);
      }

      TRunGlue::DetermineCoverage(v22, v14);
      v20 = 0xAAAAAAAAAAAAAA00;
      v21 = -1431655936;
      if (v10)
      {
        if (v11[41])
        {
          if (TFont::NeedsShapingForGlyphs(v11, a2, a4, 0))
          {
            v5 = TShapingEngine::ShapeGlyphs(v22, v13, 0, &v20, 0);
            if ((v10 & 2) == 0)
            {
              goto LABEL_27;
            }

LABEL_25:
            if (v5)
            {
              v22[54] = 0x7FF0000000000000;
              v5 = TKerningEngine::PositionGlyphs(v22, v13, v20, v21, 0, 0, 1);
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (!TShapingEngine::ShapeGlyphs(v22, v13, 0, &v20, 0))
          {
            v5 = 0;
            goto LABEL_27;
          }

          if (qword_1ED5678D8 != -1)
          {
            dispatch_once_f(&qword_1ED5678D8, 0, GetShapingGlyphsQueue(void)::$_0::__invoke);
          }

          v18 = qword_1ED5678D0;
          CFRetain(a1);
          dispatch_async_f(v18, a1, InitShapingGlyphsOnQueue(__CTFont const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::__invoke);
        }
      }

      v5 = 1;
      if ((v10 & 2) != 0)
      {
        goto LABEL_25;
      }

LABEL_27:
      std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&v22[56]);
      v20 = &v22[32];
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
      v20 = &v22[27];
      std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
      v20 = &v22[7];
      std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
      return v5;
    }

    return 1;
  }

  return v5;
}

double CTFontShapeGlyphs(const __CTFont *a1, unsigned __int16 *a2, CGSize *a3, CGPoint *a4, uint64_t *a5, void **a6, void **a7, unsigned int a8, __CFString *a9, uint64_t a10)
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = a2;
  if (a1 && a2 && a3 && a4 && a5 && a10 && a7 > 0 && StackHasAvailable(0x8000uLL))
  {
    memcpy(v41, &unk_18475C038, sizeof(v41));
    TRunGlue::TRunGlue(v41, a1, a2, a3, a7, *a5, a4, a5);
    v18 = *&v41[496];
    ShapingType = TBaseFont::GetShapingType(*(*&v41[496] + 408));
    LODWORD(v31[0]) = ShapingType;
    if (ShapingType < 2)
    {
      v22 = 0;
    }

    else
    {
      if (*&v41[504] <= 0x10000uLL)
      {
        v20 = ((*&v41[504] + 63) >> 3) & 0x7FF8;
      }

      else
      {
        v20 = 0x2000;
      }

      MEMORY[0x1EEE9AC00](ShapingType, v20);
      v22 = v31 - v21;
      bzero(v31 - v21, v23);
    }

    TRunGlue::DetermineCoverage(v41, v22);
    v24 = v18[41];
    if (!v24)
    {
      if (qword_1ED5678D8 != -1)
      {
        dispatch_once_f(&qword_1ED5678D8, 0, GetShapingGlyphsQueue(void)::$_0::__invoke);
      }

      v25 = qword_1ED5678D0;
      CFRetain(a1);
      dispatch_async_f(v25, a1, InitShapingGlyphsOnQueue(__CTFont const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::__invoke);
    }

    v36[1] = *a5;
    v36[2] = a7;
    v36[0] = &unk_1EF2591A0;
    v36[3] = a6;
    if ((a8 & 2) != 0)
    {
      v40[0] = &unk_1EF257960;
      v40[1] = a10;
      v40[2] = &v37;
      v40[3] = v40;
      std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(&v41[448], v40);
      std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v40);
      TRunGlue::InitPropertiesForCombining(v41, v36);
      v34 = v41;
      v35 = v36;
      v33 = -86;
      v32 = 0;
      TCombiningEngine::ResolveCombiningMarks(&v34, (a8 >> 2) & 1, &v33, &v32);
    }

    if ((a8 & 4) != 0)
    {
      TRunGlue::ReorderGlyphs(v41);
    }

    v34 = 0xAAAAAAAAAAAAAA00;
    LODWORD(v35) = -1431655936;
    if (v24)
    {
      v26 = v37;
      v27 = TRunGlue::length(v41);
      v28 = TFont::NeedsShapingForGlyphs(v18, v26, v27, a9);
      v29 = LODWORD(v31[0]);
      if (v28)
      {
        if ((a8 & 2) == 0)
        {
          v39[0] = &unk_1EF257960;
          v39[1] = a10;
          v39[2] = &v37;
          v39[3] = v39;
          std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(&v41[448], v39);
          std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v39);
        }

        if ((TShapingEngine::ShapeGlyphs(v41, v29, a9, &v34, v36) & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if ((a8 & 2) == 0)
      {
        v38[0] = &unk_1EF257960;
        v38[1] = a10;
        v38[2] = &v37;
        v38[3] = v38;
        std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=(&v41[448], v38);
        std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v38);
      }

      v29 = LODWORD(v31[0]);
      if (!TShapingEngine::ShapeGlyphs(v41, SLODWORD(v31[0]), a9, &v34, v36))
      {
        goto LABEL_34;
      }
    }

    TKerningEngine::PositionGlyphs(v41, v29, v34, v35, a9, v36, a8);
LABEL_34:
    *v31 = *&v41[432];
    std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&v41[448]);
    v36[0] = &v41[256];
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v36);
    v36[0] = &v41[216];
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](v36);
    v36[0] = &v41[56];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](v36);
    return v31[0];
  }

  *v31 = *MEMORY[0x1E695F060];
  return v31[0];
}

unint64_t CTFontCopyColorGlyphCoverage(const void *a1)
{
  v1 = _CTFontEnsureFontRef(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 5);
  GlyphCount = TBaseFont::GetGlyphCount(v2[51]);
  v19 = 0;
  if (TFont::ensureSVGTableObject(v2))
  {
    if (!atomic_load_explicit(&v19, memory_order_acquire))
    {
      Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], GlyphCount);
      if (Mutable)
      {
        v5 = Mutable;
        CFBitVectorSetCount(Mutable, GlyphCount);
      }
    }

    if (atomic_load_explicit(&v19, memory_order_acquire))
    {
      v17[1] = MEMORY[0x1E69E9820];
      v17[2] = 3321888768;
      v17[3] = __CTFontCopyColorGlyphCoverage_block_invoke;
      v17[4] = &__block_descriptor_48_8_40c29_ZTS6TCFRefIP13__CFBitVectorE_e13_v24__0___qq_8l;
      v17[5] = GlyphCount;
      v18 = atomic_load_explicit(&v19, memory_order_acquire);
      OTSVGTableEnumerateGlyphs();
    }
  }

  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2[51] + 488))(v17);
  if (atomic_load_explicit(v17, memory_order_acquire))
  {
    if (!atomic_load_explicit(&v19, memory_order_acquire))
    {
      v6 = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], GlyphCount);
      if (v6)
      {
        v7 = v6;
        CFBitVectorSetCount(v6, GlyphCount);
      }
    }

    if (atomic_load_explicit(&v19, memory_order_acquire))
    {
      v8 = GlyphCount >= 0xFFFF ? 0xFFFFLL : GlyphCount;
      if (GlyphCount >= 1)
      {
        v9 = 0;
        do
        {
          if (TFont::HasColorBitmapForGlyph(v2, v9, atomic_load_explicit(v17, memory_order_acquire)))
          {
            v20.location = v9;
            v20.length = 1;
            CFBitVectorSetBits(atomic_load_explicit(&v19, memory_order_acquire), v20, 1u);
          }

          ++v9;
        }

        while (v8 != v9);
      }
    }
  }

  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2[51] + 488))(v17);
  if (atomic_load_explicit(v17, memory_order_acquire))
  {
    if (!atomic_load_explicit(&v19, memory_order_acquire))
    {
      v10 = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], GlyphCount);
      if (v10)
      {
        v11 = v10;
        CFBitVectorSetCount(v10, GlyphCount);
      }
    }

    if (atomic_load_explicit(&v19, memory_order_acquire))
    {
      explicit = atomic_load_explicit(v17, memory_order_acquire);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3321888768;
      v15[2] = __CTFontCopyColorGlyphCoverage_block_invoke_22;
      v15[3] = &__block_descriptor_48_8_40c29_ZTS6TCFRefIP13__CFBitVectorE_e13_v24__0___qq_8l;
      v15[4] = GlyphCount;
      v16 = atomic_load_explicit(&v19, memory_order_acquire);
      EnumerateGlyphsWithLayerRecords(explicit, v15);
    }
  }

  v13 = atomic_exchange(&v19, 0);
  return v13;
}

void __CTFontCopyColorGlyphCoverage_block_invoke(uint64_t a1, CFRange a2)
{
  v2 = *(a1 + 32);
  if (a2.location + a2.length >= v2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = a2.location + a2.length;
  }

  if (a2.location < 0 || a2.location >= v2)
  {
    v4 = a2.location + a2.length > 0 && a2.location < 1;
    a2.location = 0;
    if (v4)
    {
      a2.length = v3;
    }

    else
    {
      a2.length = 0;
    }
  }

  else
  {
    a2.length = v3 - a2.location;
  }

  CFBitVectorSetBits(atomic_load_explicit((a1 + 40), memory_order_acquire), a2, 1u);
}

id __copy_helper_block_8_40c29_ZTS6TCFRefIP13__CFBitVectorE(uint64_t a1, uint64_t a2)
{
  result = atomic_load_explicit((a2 + 40), memory_order_acquire);
  *(a1 + 40) = result;
  return result;
}

void __CTFontCopyColorGlyphCoverage_block_invoke_22(uint64_t a1, CFRange a2)
{
  v2 = *(a1 + 32);
  if (a2.location + a2.length >= v2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = a2.location + a2.length;
  }

  if (a2.location < 0 || a2.location >= v2)
  {
    v4 = a2.location + a2.length > 0 && a2.location < 1;
    a2.location = 0;
    if (v4)
    {
      a2.length = v3;
    }

    else
    {
      a2.length = 0;
    }
  }

  else
  {
    a2.length = v3 - a2.location;
  }

  CFBitVectorSetBits(atomic_load_explicit((a1 + 40), memory_order_acquire), a2, 1u);
}

CFBitVectorRef CTFontCopyGlyphCoverageForFeature(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1 && (v2 = theDict) != 0)
  {
    v15 = 0;
    if (CFDictionaryGetValue(theDict, @"CTFeatureOpenTypeTag") && !CFDictionaryGetValue(v2, @"CTFeatureOpenTypeValue"))
    {
      v4 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);

      explicit = atomic_load_explicit(&v15, memory_order_acquire);
      LODWORD(MutableCopy) = 1;
      v6 = CFNumberCreate(v4, kCFNumberIntType, &MutableCopy);
      CFDictionarySetValue(explicit, @"CTFeatureOpenTypeValue", v6);

      v2 = atomic_load_explicit(&v15, memory_order_acquire);
    }

    v7 = *(a1 + 40);
    v8 = [[CTFeatureSetting alloc] initWithDictionary:v2];
    if (v8)
    {
      MutableCopy = 0xAAAAAAAAAAAAAAAALL;
      TFont::CoverageForFeatureSetting(v7, v8, &MutableCopy);
      v9 = atomic_exchange(&MutableCopy, 0);
    }

    else
    {
      v12 = *MEMORY[0x1E695E480];
      GlyphCount = TBaseFont::GetGlyphCount(v7[51]);
      v9 = CFBitVectorCreate(v12, 0, GlyphCount);
    }

    return v9;
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];

    return CFBitVectorCreate(v11, 0, 0);
  }
}

unint64_t CTFontCopyShapingLanguages(uint64_t a1)
{
  if (a1)
  {
    v3 = 0xAAAAAAAAAAAAAAAALL;
    TFont::ShapingLanguages(*(a1 + 40), &v3);
  }

  else
  {
    v3 = CFSetCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9F8]);
  }

  v1 = atomic_exchange(&v3, 0);

  return v1;
}

unint64_t CTFontCopyVariantsOfGlyph(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    TFont::CopyVariantsOfGlyph(*(a1 + 40), a2, &v4);
  }

  else
  {
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v2 = atomic_exchange(&v4, 0);

  return v2;
}

id CTFontCopyTallestTextStyleLanguageForString(const __CFString *a1)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (qword_1ED567958 != -1)
  {
    dispatch_once_f(&qword_1ED567958, 0, GetExcessiveLineHeightCharacterSet(void)::$_0::__invoke);
  }

  if (!qword_1ED567950)
  {
    return 0;
  }

  *v25 = 0u;
  *__p = 0u;
  v27 = 0xAAAAAAAA3F800000;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v2;
  v24[1] = v2;
  CFCharacterSetInitInlineBuffer();
  if (a1)
  {
    Length = CFStringGetLength(a1);
  }

  else
  {
    Length = 0;
  }

  v29[0] = &unk_1EF2579A8;
  v29[1] = v24;
  v29[2] = v25;
  v29[3] = v29;
  EnumerateCharactersInRange(a1, 0, Length, v29);
  std::__function::__value_func<void ()(CFRange,unsigned int,BOOL *)>::~__value_func[abi:fn200100](v29);
  LOBYTE(v23) = -86;
  _ExuberatedGroupForPreferredLanguages(&v23, 0);
  v4 = v23;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = __p[0];
  if (__p[0])
  {
    do
    {
      if (v7[4] == 25)
      {
        CFArrayAppendValue(Mutable, @"vi");
      }

      else
      {
        ShortName = uscript_getShortName();
        if (ShortName)
        {
          v9 = CFStringCreateWithFormat(v5, 0, @"und-%s", ShortName);
          v23 = 0xAAAAAAAAAAAAAAAALL;
          LanguageIdentifierByNormalizing(v9, 0, &v23);
          if (atomic_load_explicit(&v23, memory_order_acquire))
          {
            if (!v4)
            {
              goto LABEL_20;
            }

            v10 = atomic_load_explicit(&v23, memory_order_acquire);
            v11 = v10;
            if (v10 == @"ar")
            {
            }

            else
            {
              if (!v10)
              {

                goto LABEL_20;
              }

              v12 = CFEqual(v10, @"ar");

              if (!v12)
              {
LABEL_20:
                v13 = atomic_load_explicit(&v23, memory_order_acquire);
                CFArrayAppendValue(Mutable, v13);

                goto LABEL_21;
              }
            }

            CFArrayAppendValue(Mutable, @"ur");
          }

LABEL_21:
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

  v23 = Mutable;
  if (CFArrayGetCount(Mutable) > 1)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    CreateNormalizedPreferredLanguages(&v22);
    explicit = atomic_load_explicit(&v22, memory_order_acquire);
    v28[0] = &unk_1EF2579F0;
    v28[3] = v28;
    CreateSortedArrayWithOrdering(Mutable, explicit, v28, &v21);

    std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v28);
  }

  v22 = 0;
  v15 = atomic_load_explicit(&v23, memory_order_acquire);
  LOBYTE(v21) = -86;
  _ExuberatedGroupForPreferredLanguages(&v21, 0);
  _LargestExuberatedGroupForLanguages(v15, &v22, (v21 & 1) == 0, 0);
  v16 = v22;

  v17 = __p[0];
  if (__p[0])
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = v25[0];
  v25[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v16;
}

void *CTFontStrikeMetricsCreateDictionaryRepresentation(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 408)) != 0)
  {
    return TBaseFont::CreateStrikeMetricsDictionaryRepresentation(v1);
  }

  else
  {
    return 0;
  }
}

id CTFontCopyCharacterSetOfDefaultCascadeListForSystemUIFonts(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!TFont::IsSystemUIFontAndForShaping(v1, &v5))
  {
    return 0;
  }

  v2 = *(v1 + 51);
  if (!v2)
  {
    return 0;
  }

  DefaultComposite = TBaseFont::GetDefaultComposite(v2, 1, 3);

  return DefaultComposite;
}

CTFontRef CTFontCreateEmojiFontForFont(TFont **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[5];
  if (!(*(**(v2 + 51) + 720))(*(v2 + 51)))
  {
    TFont::CopyDescriptor(a1[5], 0, &v7);
    v4 = atomic_exchange(&v7, 0);

    v7 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::TDescriptorSource(&v6);
    TDescriptorSource::CopyEmojiFontDescriptor(&v6, 0, v4, &v7);
    if (atomic_load_explicit(&v7, memory_order_acquire))
    {
      v5 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v7, memory_order_acquire), *(v2 + 3), 0);
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  return a1;
}

CGImageRef CTFontCopyImageForGlyph(const void *a1, unsigned int a2, float64x2_t *a3, float64x2_t *a4, double a5)
{
  v9 = _CTFontEnsureFontRef(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 5);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v10[51] + 488))(&v24);
  if (atomic_load_explicit(&v24, memory_order_acquire))
  {
    memset(v23, 170, sizeof(v23));
    explicit = atomic_load_explicit(&v24, memory_order_acquire);
    TBaseFont::GetGlyphCount(v10[51]);
    TsbixContext::TsbixContext(v23, explicit);
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v20 = v12;
    v21 = v12;
    v22 = -1;
    TFont::GetColorBitmapFontTranslate(v10);
    v14 = v13;
    v25.x = v15;
    v25.y = v14;
    v16 = CGImageRetain(atomic_load_explicit(&v19, memory_order_acquire));
    if (v16)
    {
      if (a3)
      {
        *a3 = vaddq_f64(v20, v18);
      }

      if (a4)
      {
        *a4 = v21;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

double CTFontGetTypographicBoundsForAdaptiveImageProvider(void *a1)
{
  v1 = EmojiFontForFont(a1);
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    v7 = *TBaseFont::GetCachedSpaceAndJoinerGlyphs(*(v3 + 408), 0);
    v6 = NAN;
    TFont::GetUnsummedAdvancesForGlyphs(v3, &v7, &v6, 1, 1, 0, 0);
    v4 = v2[5];
    if (!*(v4 + 56))
    {
      TFont::InitStrikeMetrics(v4);
      v4 = v2[5];
    }

    if (!*(v4 + 56))
    {
      TFont::InitStrikeMetrics(v4);
    }
  }

  return 0.0;
}

void *EmojiFontForFont(void *object)
{
  if (object && ((*(**(object[5] + 408) + 720))(*(object[5] + 408)) & 1) != 0)
  {
    return object;
  }

  AssociatedObject = objc_getAssociatedObject(object, EmojiFontForFont(__CTFont const*)::sEmojiFontAssociationKey);
  if (!AssociatedObject)
  {
    AssociatedObject = CTFontCreateEmojiFontForFont(object);
    objc_setAssociatedObject(object, EmojiFontForFont(__CTFont const*)::sEmojiFontAssociationKey, AssociatedObject, 0x301);
  }

  return AssociatedObject;
}

CGImageRef CTFontCopyImageFromAdaptiveImageProvider(const __CTFont *a1, void *a2, float64x2_t *a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v11 = v5;
  v12 = v5;
  v13 = -1;
  if (a3)
  {
    v6 = v12;
    *a3 = vaddq_f64(v11, v9);
    a3[1] = v6;
  }

  v7 = CGImageRetain(atomic_load_explicit(&v10, memory_order_acquire));

  return v7;
}

_anonymous_namespace_::TCGImageData *anonymous namespace::TCGImageData::TCGImageData(_anonymous_namespace_::TCGImageData *this, const __CTFont *a2, void *a3, double a4)
{
  v8 = MEMORY[0x1E695EFF8];
  *this = *MEMORY[0x1E695EFF8];
  *(this + 2) = 0;
  v9 = *v8;
  v10 = MEMORY[0x1E695F060];
  *(this + 24) = v9;
  *(this + 40) = *v10;
  *(this + 7) = 0;
  if (objc_opt_respondsToSelector())
  {
    v11 = EmojiFontForFont(a2);
    if (!v11)
    {
      return this;
    }

    v12 = v11[5];
    v13 = v12[3];
    if (v13 <= 16.0)
    {
      v14 = v13 * 0.25;
    }

    else
    {
      v14 = 0.0;
      if (v13 < 24.0)
      {
        v14 = (24.0 - v13) * 0.5;
      }
    }

    v18 = [a3 imageForProposedSize:this + 24 scaleFactor:this + 40 imageOffset:v13 + v14 imageSize:{v13 + v14, a4}];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return this;
    }

    v15 = EmojiFontForFont(a2);
    if (!v15)
    {
      return this;
    }

    v12 = v15[5];
    v16 = v12[3];
    if (v16 <= 16.0)
    {
      v17 = v16 * 0.25;
    }

    else
    {
      v17 = 0.0;
      if (v16 < 24.0)
      {
        v17 = (24.0 - v16) * 0.5;
      }
    }

    v18 = [a3 imageForPointSize:this + 24 scaleFactor:this + 40 imageOffset:v16 + v17 imageSize:a4];
  }

  v22 = v18;
  if (atomic_load_explicit(&v22, memory_order_acquire))
  {
    TFont::GetColorBitmapFontTranslate(v12);
    *this = v19;
    *(this + 1) = v20;
  }

  return this;
}

void CTFontDrawImageFromAdaptiveImageProviderAtPoint(const __CTFont *a1, void *a2, CGContext *a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    v12[0] = -1;
    v12[1] = -1;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v14 = v10;
    v15 = v10;
    v16 = -1;
    ContentsScale = GetContentsScale(a3);
    v17.x = a4;
    v17.y = a5;
  }
}

double CTFontGetTypographicBoundsForEmojiImageProvider(void *a1, uint64_t a2, CGFloat *a3, CGFloat *a4)
{
  v12.origin.x = CTFontGetTypographicBoundsForAdaptiveImageProvider(a1);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MaxX = CGRectGetMaxX(v12);
  if (a3)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    *a3 = CGRectGetMaxY(v13);
  }

  if (a4)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    *a4 = -CGRectGetMinY(v14);
  }

  return MaxX;
}

float64_t CTFontCopyImageFromEmojiImageProvider(const __CTFont *a1, void *a2, float64x2_t *a3, float64x2_t *a4, double a5)
{
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v9 = v7;
  v10 = v7;
  CTFontCopyImageFromAdaptiveImageProvider(a1, a2, &v9, a5);
  if (a3)
  {
    result = v9.f64[0];
    *a3 = v9;
  }

  if (a4)
  {
    result = v10.f64[0];
    *a4 = v10;
  }

  return result;
}

uint64_t TEmojiImageRun::TEmojiImageRun(uint64_t a1, uint64_t a2)
{
  TRun::TRun(a1, *(a2 + 40));
  *v3 = &unk_1EF2577C8;
  *(a1 + 320) = CFDictionaryGetValue(atomic_load_explicit(v3 + 5, memory_order_acquire), @"CTAdaptiveImageProvider");
  v10 = EmojiFontForFont(atomic_load_explicit((a1 + 56), memory_order_acquire));
  if (atomic_load_explicit(&v10, memory_order_acquire) && atomic_load_explicit(&v10, memory_order_acquire))
  {

    *(a1 + 88) = 1;
  }

  v4 = *(atomic_load_explicit((a1 + 56), memory_order_acquire) + 40);
  CachedSpaceAndJoinerGlyphs = TBaseFont::GetCachedSpaceAndJoinerGlyphs(*(v4 + 408), 0);
  v6 = *CachedSpaceAndJoinerGlyphs;
  v11 = *CachedSpaceAndJoinerGlyphs;
  v10 = -1;
  TFont::GetUnsummedAdvancesForGlyphs(v4, &v11, &v10, 1, 1, 0, 0);
  *(a1 + 328) = v10;
  v7 = *(a1 + 208);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      [*(a1 + 216) setGlyph:v6 atIndex:i + *(a1 + 200)];
      if (v6 == 0xFFFF && (*(a1 + 225) & 2) != 0)
      {
        *(a1 + 225) |= 8u;
      }

      v12.width = *(a1 + 328);
      v12.height = 0.0;
      TStorageRange::SetAdvance((a1 + 192), i, v12);
    }
  }

  return a1;
}

void TEmojiImageRun::DrawGlyphs(TEmojiImageRun *this, CGContextRef c, CFRange a3)
{
  location = a3.location;
  v6 = *(this + 26);
  if (a3.location + a3.length >= v6)
  {
    v7 = *(this + 26);
  }

  else
  {
    v7 = a3.location + a3.length;
  }

  if (a3.location < 0 || a3.location >= v6)
  {
    v9 = a3.location + a3.length > 0 && a3.location < 1;
    location = 0;
    if (v9)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v7 - a3.location;
  }

  if (v8 >= 1)
  {
    TextPosition = CGContextGetTextPosition(c);
    v10.f64[0] = TextPosition.x;
    v12 = *(this + 39);
    if (!v12)
    {
      v12 = MEMORY[0x1E695F060];
    }

    v10.f64[1] = TextPosition.y;
    v36 = vaddq_f64(v10, *v12);
    v29 = TAttributes::SetContextAttributes(this + 5, c, 0);
    v31[0] = -1;
    v31[1] = -1;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = -1;
    *(&v13 + 1) = -1;
    v33 = v13;
    v34 = v13;
    v35 = -1;
    explicit = atomic_load_explicit(this + 7, memory_order_acquire);
    v15 = *(this + 40);
    ContentsScale = GetContentsScale(c);
    v17 = *(this + 27);
    v18 = *(this + 25);
    v19 = v17[4];
    if (v19 || (v21 = v17[3]) == 0)
    {
      v20 = 0;
      v30 = (v19 + 16 * v18);
    }

    else
    {
      v30 = (v21 + 8 * v18);
      v20 = 1;
    }

    if (v6 >= 1)
    {
      v22 = 0;
      v23 = v17[2] + 2 * v18;
      v24 = location + v8;
      v25 = v30;
      do
      {
        if ((*(*(*(this + 27) + 40) + 4 * *(this + 25) + 4 * v22) & 0x20) == 0)
        {
          if (location <= v22 && v24 > v22)
          {
          }

          CGContextShowGlyphsAtPositionsWithString();
          if (v20)
          {
            v26 = &v30[v22];
            v27 = 0.0;
          }

          else
          {
            v27 = v25[1];
            v26 = v25;
          }

          v28.f64[0] = *v26;
          v28.f64[1] = v27;
          v36 = vaddq_f64(v28, v36);
        }

        ++v22;
        v25 += 2;
        v23 += 2;
      }

      while (v6 != v22);
    }

    if (v29)
    {
      CGContextRestoreGState(c);
    }

    CGContextSetTextPosition(c, v36.f64[0], v36.f64[1]);
  }
}

void TEmojiImageRun::DrawGlyphsAtPositions(uint64_t a1, CGContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = *(a1 + 208);
  if (a3 + a4 >= v11)
  {
    v12 = *(a1 + 208);
  }

  else
  {
    v12 = a3 + a4;
  }

  if (a3 < 0 || a3 >= v11)
  {
    v14 = a3 + a4 > 0 && a3 < 1;
    v8 = 0;
    if (v14)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = v12 - a3;
  }

  if (v13 >= 1)
  {
    FillColorAsColor = CGContextGetFillColorAsColor();
    Alpha = CGColorGetAlpha(FillColorAsColor);
    if (*(a6 + 8))
    {
      v17 = *(a6 + 8);
    }

    else
    {
      v17 = (a1 + 40);
    }

    if (*a6 == 1)
    {
      v63.location = v8;
      v63.length = v13;
      TRun::DrawBackground(a1, a2, v63, v17, 1);
    }

    *&v18 = -1;
    *(&v18 + 1) = -1;
    *&v58.c = v18;
    *&v58.tx = v18;
    *&v58.a = v18;
    CGContextGetTextMatrix(&v58, a2);
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *&v57.c = v19;
    *&v57.tx = v19;
    *&v57.a = v19;
    CGContextGetCTM(&v57, a2);
    v20 = TAttributes::SetContextAttributes(v17, a2, 0);
    v56 = *MEMORY[0x1E695F060];
    *&v21 = -1;
    *(&v21 + 1) = -1;
    v22 = *(atomic_load_explicit((a1 + 56), memory_order_acquire) + 40);
    if (*(v22 + 12))
    {
      LOWORD(t2.a) = TEmojiImageRun::DrawGlyphsAtPositions(CGContext *,CFRange,CGPoint const*,TRun::DrawGlyphsAtPositionsConfiguration const&)const::sVisibleGlyph;
      if (!TEmojiImageRun::DrawGlyphsAtPositions(CGContext *,CFRange,CGPoint const*,TRun::DrawGlyphsAtPositionsConfiguration const&)const::sVisibleGlyph)
      {
        *v54 = 9731;
        if (!GetGlyphsForLongCharacters(v22, v54, &t2, 1))
        {
          return;
        }

        TEmojiImageRun::DrawGlyphsAtPositions(CGContext *,CFRange,CGPoint const*,TRun::DrawGlyphsAtPositionsConfiguration const&)const::sVisibleGlyph = LOWORD(t2.a);
      }

      TFont::GetUnscaledVerticalTranslationsForGlyphs(v22, &t2, &v56, 1);
      v23 = (a1 + 96);
      if (!*(a1 + 144))
      {
        v23 = MEMORY[0x1E695EFD0];
      }

      v49 = vmlaq_n_f64(vmulq_n_f64(v23[1], v56.height), *v23, v56.width);
      v56 = v49;
      *v54 = v58;
      CGAffineTransformInvert(&t1, v54);
      v56 = vmlaq_n_f64(vmulq_laneq_f64(*&t1.c, v49, 1), *&t1.a, v49.width);
      *&v21 = -1;
      *(&v21 + 1) = -1;
    }

    *v54 = -1;
    *&v54[8] = -1;
    *&v54[24] = v21;
    *&v54[40] = v21;
    *&v54[16] = 0xAAAAAAAAAAAAAAAALL;
    v55 = -1;
    explicit = atomic_load_explicit((a1 + 56), memory_order_acquire);
    v25 = *(a1 + 320);
    ContentsScale = GetContentsScale(a2);
    v27 = *(*(a1 + 216) + 16) + 2 * v8 + 2 * *(a1 + 200);
    v48 = vdupq_n_s64(0x3CB0000000000000uLL);
    _D10 = 0;
    do
    {
      if ((*(*(*(a1 + 216) + 40) + 4 * *(a1 + 200) + 4 * v8) & 0x20) == 0)
      {
        v53 = v57;
        _V2.D[1] = v58.b;
        v30 = vandq_s8(vcgeq_f64(v48, vabsq_f64(vaddq_f64(*&v58.c, xmmword_18475B150))), vcgeq_f64(v48, vabsq_f64(vaddq_f64(*&v58.a, xmmword_18475B140))));
        v50 = v56;
        if ((vandq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0] & 0x8000000000000000) != 0)
        {
          t2 = v57;
          CGAffineTransformMakeTranslation(&v52, v58.tx, v58.ty);
          *&v51.a = vaddq_f64(v50, *(a5 + 16 * v8));
          if (atomic_load_explicit(&v54[16], memory_order_acquire) && Alpha != 0.0)
          {
            v46 = vaddq_f64(*&v52.tx, vmlaq_n_f64(vmulq_n_f64(*&v52.c, v51.b), *&v52.a, v51.a));
            y = v46.y;
          }

          t1 = v53;
          CGContextSetCTM();
          v62.f64[0] = 0.0;
          CGContextShowGlyphsAtPositionsWithString();
          *&t1.a = *&t2.a;
          *&t1.c = *&t2.c;
          v45 = *&t2.tx;
        }

        else
        {
          __asm { FMLA            D1, D10, V2.D[1]; __y }

          v36 = hypot(v58.c + v58.a * 0.0, _D1);
          v37 = 1.0;
          if (v36 > 1.0)
          {
            t1 = v58;
            CGAffineTransformScale(&t2, &t1, 1.0 / v36, 1.0 / v36);
            v58 = t2;
            v37 = v36;
          }

          *&v38 = -1;
          *(&v38 + 1) = -1;
          *&v52.c = v38;
          *&v52.tx = v38;
          *&v52.a = v38;
          CGAffineTransformMakeScale(&v52, v37, v37);
          *&v39 = -1;
          *(&v39 + 1) = -1;
          *&v51.c = v39;
          *&v51.tx = v39;
          *&v51.a = v39;
          t1 = v58;
          t2 = v57;
          CGAffineTransformConcat(&v51, &t1, &t2);
          t1 = v51;
          CGContextSetCTM();
          t2 = v51;
          v40 = *&v52.a;
          v42 = *&v52.c;
          v41 = *&v52.tx;
          v62 = vaddq_f64(v50, *(a5 + 16 * v8));
          if (atomic_load_explicit(&v54[16], memory_order_acquire) && Alpha != 0.0)
          {
            v43 = vaddq_f64(v41, vmlaq_n_f64(vmulq_n_f64(v42, v62.f64[1]), v40, v62.f64[0]));
            v44 = v43.y;
          }

          t1 = v53;
          CGContextSetCTM();
          v60 = 0;
          CGContextShowGlyphsAtPositionsWithString();
          t1 = t2;
          CGContextSetCTM();
          *&t1.a = *&v57.a;
          *&t1.c = *&v57.c;
          v45 = *&v57.tx;
        }

        *&t1.tx = v45;
        CGContextSetCTM();
      }

      ++v8;
      v27 += 2;
      --v13;
    }

    while (v13);
    if (v20)
    {
      CGContextRestoreGState(a2);
    }
  }
}

double TEmojiImageRun::GetImageBounds(TEmojiImageRun *this, CGContext *a2, CFRange a3, double *a4, double *a5)
{
  location = a3.location;
  v9 = *(this + 26);
  if (a3.location + a3.length >= v9)
  {
    v10 = *(this + 26);
  }

  else
  {
    v10 = a3.location + a3.length;
  }

  if (a3.location < 0 || a3.location >= v9)
  {
    v12 = a3.location + a3.length > 0 && a3.location < 1;
    location = 0;
    if (v12)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v10 - a3.location;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (v11 >= 1)
  {
    v35 = NAN;
    v36 = NAN;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v17.width = NAN;
    v17.height = NAN;
    v38 = v17;
    v39 = v17;
    v40 = -1;
    explicit = atomic_load_explicit(this + 7, memory_order_acquire);
    v19 = *(this + 40);
    ContentsScale = GetContentsScale(a2);
    v21 = *(this + 27);
    v22 = *(v21 + 32);
    if (v22 || (v25 = *(v21 + 24)) == 0)
    {
      v23 = 0;
      v24 = v22 + 16 * *(this + 25);
    }

    else
    {
      v24 = v25 + 8 * *(this + 25);
      v23 = 1;
    }

    v26 = location + v11;
    if (v26)
    {
      v27 = 0;
      v28 = v39;
      v29 = v38.width + v35 + *a4;
      v30 = v38.height + v36 + *a5;
      v31 = (v24 + 8);
      do
      {
        if (location <= v27 && v26 > v27 && (*(*(*(this + 27) + 40) + 4 * *(this + 25) + 4 * v27) & 0x20) == 0)
        {
          v41.origin.x = x;
          v41.origin.y = y;
          v41.size.width = width;
          v41.size.height = height;
          v43.origin.x = v29;
          v43.origin.y = v30;
          v43.size = v28;
          v42 = CGRectUnion(v41, v43);
          x = v42.origin.x;
          y = v42.origin.y;
          width = v42.size.width;
          height = v42.size.height;
        }

        if (v23)
        {
          v32 = *(v24 + 8 * v27);
          v33 = 0.0;
          v30 = v30 + 0.0;
          *a4 = v32 + *a4;
        }

        else
        {
          v32 = *(v31 - 1);
          v30 = v30 + *v31;
          *a4 = v32 + *a4;
          v33 = *v31;
        }

        v29 = v29 + v32;
        *a5 = v33 + *a5;
        ++v27;
        v31 += 2;
      }

      while (v26 != v27);
    }
  }

  return x;
}