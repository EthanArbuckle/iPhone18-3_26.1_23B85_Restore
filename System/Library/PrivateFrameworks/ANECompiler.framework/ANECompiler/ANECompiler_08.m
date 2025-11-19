int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,0>(int *result, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *(a5 + 8 * v7);
  v9 = *result;
  v10 = *result;
  v11 = *(a5 + 8 * v10);
  if (v11 < v8 || v8 >= v11 && *(a6 + 8 * v9) < *(a6 + 8 * v6))
  {
    v12 = *a3;
    v13 = *(a5 + 8 * *a3);
    if (v8 < v13 || v13 >= v8 && *(a6 + 8 * v6) < *(a6 + 8 * v12))
    {
      *result = v12;
    }

    else
    {
      *result = v6;
      *a2 = v9;
      v6 = *a3;
      v19 = *(a5 + 8 * *a3);
      if (v11 >= v19)
      {
        v7 = v6;
        if (v19 < v11 || *(a6 + 8 * v9) >= *(a6 + 8 * v6))
        {
          goto LABEL_15;
        }
      }

      *a2 = v6;
    }

    *a3 = v9;
    goto LABEL_14;
  }

  v9 = *a3;
  v14 = *(a5 + 8 * *a3);
  if (v8 >= v14)
  {
    v10 = v9;
    if (v14 < v8 || *(a6 + 8 * v6) >= *(a6 + 8 * v9))
    {
LABEL_14:
      v7 = v10;
      v6 = v9;
      goto LABEL_15;
    }
  }

  *a2 = v9;
  *a3 = v6;
  v15 = *a2;
  v16 = *result;
  v17 = *(a5 + 8 * *result);
  v18 = *(a5 + 8 * *a2);
  if (v17 < v18 || v18 >= v17 && *(a6 + 8 * v16) < *(a6 + 8 * v15))
  {
    *result = v15;
    *a2 = v16;
    v6 = *a3;
    v7 = *a3;
  }

LABEL_15:
  v20 = *a4;
  v21 = *(a5 + 8 * v7);
  v22 = *(a5 + 8 * *a4);
  if (v21 < v22 || v22 >= v21 && *(a6 + 8 * v7) < *(a6 + 8 * v20))
  {
    *a3 = v20;
    *a4 = v6;
    v23 = *a3;
    v24 = *a2;
    v25 = *(a5 + 8 * *a2);
    v26 = *(a5 + 8 * *a3);
    if (v25 < v26 || v26 >= v25 && *(a6 + 8 * v24) < *(a6 + 8 * v23))
    {
      *a2 = v23;
      *a3 = v24;
      v27 = *a2;
      v28 = *result;
      v29 = *(a5 + 8 * *result);
      v30 = *(a5 + 8 * *a2);
      if (v29 < v30 || v30 >= v29 && *(a6 + 8 * v28) < *(a6 + 8 * v27))
      {
        *result = v27;
        *a2 = v28;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *>(int *a1, int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v22 = *(a2 - 1);
      v23 = *a1;
      v24 = **a3;
      v25 = *(v24 + 8 * *a1);
      v26 = *(v24 + 8 * v22);
      if (v25 < v26)
      {
        goto LABEL_14;
      }

      if (v26 < v25)
      {
        return 1;
      }

      if (*(*a3[1] + 8 * v23) < *(*a3[1] + 8 * v22))
      {
LABEL_14:
        *a1 = v22;
        *(a2 - 1) = v23;
        return 1;
      }

      return 1;
    }

LABEL_18:
    v35 = a1 + 2;
    v36 = *a1;
    v37 = a1 + 1;
    v38 = a1[1];
    v39 = **a3;
    v40 = *a3[1];
    v41 = *(v39 + 8 * *a1);
    v42 = *(v39 + 8 * v38);
    if (v41 < v42 || v42 >= v41 && *(v40 + 8 * v36) < *(v40 + 8 * v38))
    {
      v43 = *v35;
      v44 = *(v39 + 8 * *v35);
      if (v42 < v44 || v44 >= v42 && *(v40 + 8 * v38) < *(v40 + 8 * v43))
      {
        *a1 = v43;
      }

      else
      {
        *a1 = v38;
        a1[1] = v36;
        if (v41 >= v44 && (v44 < v41 || *(v40 + 8 * v36) >= *(v40 + 8 * v43)))
        {
          goto LABEL_47;
        }

        *v37 = v43;
      }

      v37 = a1 + 2;
    }

    else
    {
      v51 = *v35;
      v52 = *(v39 + 8 * *v35);
      if (v42 >= v52 && (v52 < v42 || *(v40 + 8 * v38) >= *(v40 + 8 * v51)))
      {
        goto LABEL_47;
      }

      *v37 = v51;
      *v35 = v38;
      if (v41 >= v52 && (v52 < v41 || *(v40 + 8 * v36) >= *(v40 + 8 * v51)))
      {
        goto LABEL_47;
      }

      *a1 = v51;
    }

    *v37 = v36;
LABEL_47:
    v55 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v56 = 0;
    v57 = 0;
LABEL_52:
    v59 = *v55;
    v60 = *v35;
    v61 = *(v39 + 8 * *v35);
    v62 = *(v39 + 8 * *v55);
    if (v61 >= v62 && (v62 < v61 || *(v40 + 8 * v60) >= *(v40 + 8 * v59)))
    {
      goto LABEL_51;
    }

    *v55 = v60;
    v58 = a1;
    if (v35 == a1)
    {
      goto LABEL_50;
    }

    v63 = v56;
    while (1)
    {
      v64 = *(a1 + v63 + 4);
      v65 = *(v39 + 8 * v64);
      if (v65 >= v62)
      {
        if (v62 < v65)
        {
          v58 = v35;
LABEL_50:
          *v58 = v59;
          if (++v57 == 8)
          {
            return v55 + 1 == a2;
          }

LABEL_51:
          v35 = v55;
          v56 += 4;
          if (++v55 != a2)
          {
            goto LABEL_52;
          }

          return 1;
        }

        if (*(v40 + 8 * v64) >= *(v40 + 8 * v59))
        {
          v58 = (a1 + v63 + 8);
          goto LABEL_50;
        }
      }

      --v35;
      *(a1 + v63 + 8) = v64;
      v63 -= 4;
      if (v63 == -8)
      {
        v58 = a1;
        goto LABEL_50;
      }
    }
  }

  switch(v3)
  {
    case 3:
      v27 = **a3;
      v28 = *a3[1];
      v29 = *a1;
      v30 = a1[1];
      v31 = *(v27 + 8 * *a1);
      v32 = *(v27 + 8 * v30);
      if (v31 < v32 || v32 >= v31 && *(v28 + 8 * v29) < *(v28 + 8 * v30))
      {
        v33 = *(a2 - 1);
        v34 = *(v27 + 8 * v33);
        if (v32 < v34 || v34 >= v32 && *(v28 + 8 * v30) < *(v28 + 8 * v33))
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v30;
          a1[1] = v29;
          v53 = *(a2 - 1);
          v54 = *(v27 + 8 * v53);
          if (v31 >= v54)
          {
            if (v54 < v31)
            {
              return 1;
            }

            if (*(v28 + 8 * v29) >= *(v28 + 8 * v53))
            {
              return 1;
            }
          }

          a1[1] = v53;
        }

        *(a2 - 1) = v29;
        return 1;
      }

      v45 = *(a2 - 1);
      v46 = *(v27 + 8 * v45);
      if (v32 < v46)
      {
        goto LABEL_25;
      }

      if (v46 < v32)
      {
        return 1;
      }

      if (*(v28 + 8 * v30) < *(v28 + 8 * v45))
      {
LABEL_25:
        a1[1] = v45;
        *(a2 - 1) = v30;
        v48 = *a1;
        v47 = a1[1];
        v49 = *(v27 + 8 * *a1);
        v50 = *(v27 + 8 * v47);
        if (v49 < v50)
        {
          goto LABEL_26;
        }

        if (v50 < v49)
        {
          return 1;
        }

        if (*(v28 + 8 * v48) < *(v28 + 8 * v47))
        {
LABEL_26:
          *a1 = v47;
          a1[1] = v48;
          return 1;
        }

        return 1;
      }

      else
      {
        return 1;
      }

    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, **a3, *a3[1]);
      return 1;
    case 5:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, **a3, *a3[1]);
      v8 = *(a2 - 1);
      v9 = a1[3];
      v10 = **a3;
      v11 = *a3[1];
      v12 = *(v10 + 8 * v9);
      v13 = *(v10 + 8 * v8);
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          return 1;
        }

        if (*(v11 + 8 * v9) >= *(v11 + 8 * v8))
        {
          return 1;
        }
      }

      a1[3] = v8;
      *(a2 - 1) = v9;
      v15 = a1[2];
      v14 = a1[3];
      v16 = *(v10 + 8 * v15);
      v17 = *(v10 + 8 * v14);
      if (v16 >= v17)
      {
        if (v17 < v16)
        {
          return 1;
        }

        if (*(v11 + 8 * v15) >= *(v11 + 8 * v14))
        {
          return 1;
        }
      }

      a1[2] = v14;
      a1[3] = v15;
      v18 = a1[1];
      v19 = *(v10 + 8 * v18);
      if (v19 < v17)
      {
        goto LABEL_10;
      }

      if (v17 < v19)
      {
        return 1;
      }

      if (*(v11 + 8 * v18) < *(v11 + 8 * v14))
      {
LABEL_10:
        a1[1] = v14;
        a1[2] = v18;
        v20 = *a1;
        v21 = *(v10 + 8 * *a1);
        if (v21 < v17)
        {
          goto LABEL_11;
        }

        if (v17 < v21)
        {
          return 1;
        }

        if (*(v11 + 8 * v20) < *(v11 + 8 * v14))
        {
LABEL_11:
          *a1 = v14;
          a1[1] = v20;
          return 1;
        }

        return 1;
      }

      else
      {
        return 1;
      }

    default:
      goto LABEL_18;
  }
}

uint64_t operations_research::sat::Preprocess(uint64_t *a1, int8x16_t *a2, int a3)
{
  v3 = a1[1];
  if (v3 != 1)
  {
    v4 = 0;
    v9 = v3;
    while (1)
    {
      if (v9 <= 0)
      {
        v27 = 0x8000000000000000;
        v35 = -1;
        v32 = a2->i64[0];
        v33 = a2->i64[1];
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        v25 = -1;
        v26 = 0x8000000000000000;
        if (a2->i64[0] < -1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v22 = 0;
        v23 = (*a1 + 8);
        v24 = 0x7FFFFFFFFFFFFFFFLL;
        v25 = -1;
        v26 = 0x8000000000000000;
        v27 = 0x8000000000000000;
        v28 = -1;
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v30 = *(v23 - 1);
          v31 = *v23;
          if (v30 > v26)
          {
            v25 = v22;
            v26 = *(v23 - 1);
          }

          if (v31 > v27)
          {
            v28 = v22;
            v27 = *v23;
          }

          if (v30 < v24)
          {
            v24 = *(v23 - 1);
          }

          if (v31 < v29)
          {
            v29 = *v23;
          }

          ++v22;
          v23 += 7;
        }

        while (v9 != v22);
        v32 = a2->i64[0];
        v33 = a2->i64[1];
        if (v26 > a2->i64[0] || v27 > v33)
        {
          return v4 & 1;
        }

        v35 = v28;
        if (v26 + v24 > v32)
        {
LABEL_5:
          v10 = *a1;
          v11 = *a1 + 56 * v25;
          v12 = v33 - *(v11 + 8);
          a2->i64[1] = v12;
          v13 = *(v11 + 8) + v12;
          *(v11 + 24) = 0;
          *(v11 + 32) = v26;
          *(v11 + 40) = v12;
          *(v11 + 48) = v13;
          v14 = v10 + 56 * v3;
LABEL_6:
          v15 = *(v11 + 48);
          v17 = *(v11 + 16);
          v16 = *(v11 + 32);
          v18 = *v11;
          v19 = *(v14 - 40);
          v20 = *(v14 - 24);
          v21 = *(v14 - 56);
          *(v11 + 48) = *(v14 - 8);
          *(v11 + 16) = v19;
          *(v11 + 32) = v20;
          *v11 = v21;
          *(v14 - 56) = v18;
          *(v14 - 40) = v17;
          *(v14 - 24) = v16;
          *(v14 - 8) = v15;
          --a1[1];
          goto LABEL_7;
        }
      }

      if (v27 + v29 > v33)
      {
        v36 = *a1;
        v11 = *a1 + 56 * v35;
        v37 = v32 - *v11;
        a2->i64[0] = v37;
        v38 = *v11 + v37;
        *(v11 + 24) = v37;
        *(v11 + 32) = v38;
        *(v11 + 40) = 0;
        *(v11 + 48) = v27;
        v14 = v36 + 56 * v3;
        goto LABEL_6;
      }

      {
        if ((v39 & 1) == 0)
        {
          return v4 & 1;
        }
      }

LABEL_7:
      v3 = a1[1];
      v9 = v3;
      v4 = 1;
      if (v3 == 1)
      {
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(uint64_t *a1, uint64_t *a2, int a3)
{
  v6 = *a1;
  v7 = 56 * a1[1];
  v28 = a2;
  v8 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v7 >> 3));
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 2);
  v13 = (v12 - 1);
  if (v13 < 1)
  {
    v26 = 0;
  }

  else
  {
    v14 = 0;
    v15 = a3;
    v16 = 56 * (v12 - 1);
    for (i = -v13; ; ++i)
    {
      v19 = *a1;
      if (*a2 < 2 * *(*a1 + v16))
      {
        v20 = a1[1];
        if (v20 < v13)
        {
          goto LABEL_20;
        }

        if (i + v20 > v15)
        {
          v11 = 0;
          v26 = 1;
          return v26 & v11;
        }

        v14 += *(v16 + v19 + 8);
        {
          break;
        }
      }

      v16 -= 56;
      if (v13-- <= 1)
      {
        v26 = 0;
        v11 = 0;
        return v26 & v11;
      }
    }

    a2[1] -= v14;
    v21 = a1[1];
    if (v21 < v13)
    {
LABEL_20:
      absl::lts_20240722::base_internal::ThrowStdOutOfRange("pos > size()", v10);
    }

    v22 = *a1;
    v23 = 56 * v21 - v16;
    if (v23)
    {
      v24 = (v22 + v16 + 48);
      do
      {
        v25 = *v24;
        *(v24 - 1) += a2[1];
        *v24 = v25 + a2[1];
        v24 += 7;
        v23 -= 56;
      }

      while (v23);
    }

    *a1 = v22;
    a1[1] = v13;
    v26 = 1;
    v11 = 1;
  }

  return v26 & v11;
}

int8x16_t operations_research::sat::anonymous namespace::PreprocessLargeWithSmallY(uint64_t *a1, int8x16_t *a2, int a3)
{
  v4 = *a1;
  v5 = 56 * a1[1];
  v6 = *a1 + v5;
  if (v5)
  {
    v7 = *a1;
    do
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
      v8 = *(v7 + 24);
      *(v7 + 24) = *(v7 + 40);
      *(v7 + 40) = v8;
      v7 += 56;
    }

    while (v7 != v6);
  }

  *a2 = vextq_s8(*a2, *a2, 8uLL);
  result = vextq_s8(*a2, *a2, 8uLL);
  *a2 = result;
  if (v5)
  {
    do
    {
      *v4 = vextq_s8(*v4, *v4, 8uLL);
      result = *(v4 + 40);
      v10 = *(v4 + 24);
      *(v4 + 24) = result;
      *(v4 + 40) = v10;
      v4 += 56;
    }

    while (v4 != v6);
  }

  return result;
}

void operations_research::sat::BruteForceOrthogonalPacking(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v85[6] = *MEMORY[0x277D85DE8];
  if (a2 > 2 * a6)
  {
    goto LABEL_7;
  }

  if (a2 > 16)
  {
    operations_research::sat::BruteForceOrthogonalPacking(a2);
  }

  v34[0] = 0;
  v34[1] = 0;
  v81 = 0u;
  *&v35[8] = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v51 = 0u;
  v50 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v58 = 0u;
  v57 = 0u;
  v52 = 0u;
  v56 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v63 = 0u;
  v62 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v70 = 0u;
  v69 = 0u;
  v64 = 0u;
  v68 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v80 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  if (a2 >= 1)
  {
    v10 = 0;
    v11 = v35;
    do
    {
      v12 = *(a3 + 8 * v10);
      *(v11 - 2) = *(a1 + 8 * v10);
      *(v11 - 1) = v12;
      *v11 = v10++;
      *(v11 + 8) = 0uLL;
      *(v11 + 24) = 0uLL;
      v11 += 56;
    }

    while ((a2 & 0x7FFFFFFF) != v10);
  }

  v32 = v34;
  v33 = a2;
  v31.i64[0] = a4;
  v31.i64[1] = a5;
  v13 = operations_research::sat::Preprocess(&v32, &v31, a6 - 1);
  v14 = v33;
  if (v33 > a6)
  {
LABEL_7:
    v15 = 2;
LABEL_8:
    *a7 = v15;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 8) = 0;
    goto LABEL_9;
  }

  v17 = v13;
  if (dword_2810BF758 >= 2 && (operations_research::sat::BruteForceOrthogonalPacking(dword_2810BF758) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v30, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_packing_brute_force.cc", 671);
    v19 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v30, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "Solved by brute force a problem of ", 0x23uLL);
    LODWORD(v85[0]) = a2;
    v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v19, v85);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " items", 6uLL);
    if (v17)
    {
      v85[0] = " (";
      v85[1] = 2;
      v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v14, v84, v21);
      v83[0] = v84;
      v83[1] = v22 - v84;
      v82[0] = " after preprocessing)";
      v82[1] = 21;
      absl::lts_20240722::StrCat(v85, v83, v82, &__p);
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
    }

    v25 = absl::lts_20240722::log_internal::LogMessage::operator<<(v20, &__p);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, ": solution ", 0xBuLL);
    v26 = "not found";
    if (v18)
    {
      v26 = "found";
    }

    v28 = v26;
    v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v25, &v28);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, ".", 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v30);
  }

  if ((v18 & 1) == 0)
  {
    v15 = 1;
    goto LABEL_8;
  }

  if (a2 << 32)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (dword_2810BF770 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BF768, dword_2810BF770) && (absl::lts_20240722::log_internal::LogEveryNSecState::ShouldLog(&dword_27E25F5A0, 3.0) & 1) != 0)
  {
    v23 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_packing_brute_force.cc", 684);
    v24 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v23, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "Found a feasible packing by brute force. Dot:\n ", 0x2FuLL);
    operations_research::sat::RenderDot();
  }

  *a7 = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 8) = 0;
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C9858C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (*(v18 - 113) < 0)
  {
    operator delete(*(v18 - 136));
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v18 - 184));
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::string::operator std::string_view[abi:ne200100](uint64_t *result)
{
  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v2 = result;
    result = *result;
    v1 = v2[1];
  }

  return result;
}

uint64_t operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = v4;
  if (v4 > 16)
  {
  }

  v8 = v5;
  v9 = v6 * v5;
  v10 = 56 * v4;
  v11 = v3 + 56 * v4;
  if (56 * v7)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = v3;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v15 = *v13;
      v16 = v13[1];
      if (*v13 > v5 || v16 > v6)
      {
        return 0;
      }

      v9 -= v16 * v15;
      if (v16 < v14)
      {
        v14 = v13[1];
      }

      if (v15 < v12)
      {
        v12 = *v13;
      }

      v13 += 7;
      if (v13 == v11)
      {
        if (v9 < 0)
        {
          return 0;
        }

        goto LABEL_15;
      }
    }
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 < 0)
  {
    return 0;
  }

LABEL_15:
  v31 = v6;
  v32 = v3;
  v18 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((56 * v7) >> 3));
  if (v10)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  memset(v72, 0, 128);
  memset(v71, 0, sizeof(v71));
  v70[0] = 0;
  v70[49] = 0;
  v70[98] = 0;
  v70[147] = 0;
  v70[196] = 0;
  v70[245] = 0;
  v70[294] = 0;
  v70[343] = 0;
  v70[392] = 0;
  v70[441] = 0;
  v70[490] = 0;
  v70[539] = 0;
  v70[588] = 0;
  v70[637] = 0;
  v70[686] = 0;
  v70[735] = 0;
  v33 = v7;
  if (v7 >= 1)
  {
    v20 = v7 & 0x7FFFFFFF;
    v21 = (v32 + 8);
    v22 = v70;
    v23 = v71;
    v24 = v72;
    do
    {
      *v24 = *(v21 - 1);
      *v23 = *v21;
      v38 = 0uLL;
      LOBYTE(v39) = 0;
      v25 = v22 + 1;
      if (*v22)
      {
        v25 = v22[1];
        v26 = v22[2];
      }

      else
      {
        v26 = 16;
      }

      v27 = *v22 >> 1;
      if (v27 == v26)
      {
      }

      v28 = &v25[3 * v27];
      *v28 = 0;
      v28[1] = 0;
      *(v28 + 16) = 0;
      *v22 += 2;
      v21 += 7;
      v22 += 49;
      ++v23;
      ++v24;
      --v20;
    }

    while (v20);
  }

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
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  LODWORD(v34) = v33 & ~(v33 >> 31);
  v36 = 0;
  v37 = 0;
  __p = 0;
  if (v33 >= 1)
  {
    operator new();
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  return v29;
}

void sub_23C985D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,false>(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t a4, char a5)
{
  v356 = *MEMORY[0x277D85DE8];
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v10 = (a2 - 56);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = ((a2 - v11) >> 3) * v9;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v154 = *MEMORY[0x277D85DE8];

          return;
        case 4:
          v155 = *MEMORY[0x277D85DE8];

          return;
        case 5:
          v142 = *MEMORY[0x277D85DE8];

          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        goto LABEL_508;
      }

      if (v13 == 2)
      {
        v145 = *(a2 - 56);
        v144 = a2 - 56;
        v143 = v145;
        v146 = *v11;
        v147 = **a3;
        v148 = 2 * v145;
        v149 = 2 * *v11;
        v150 = v147 - v145;
        if (2 * v145 > v147)
        {
          v143 = v150;
        }

        if (v149 > v147)
        {
          v146 = v147 - v146;
        }

        if (v146 < v143 || v143 >= v146 && (v148 > v147 ? (v290 = v149 <= v147) : (v290 = 0), v290 || (v149 > v147 ? (v291 = v148 <= v147) : (v291 = 0), !v291 ? (v292 = *(v11 + 16) < *(v144 + 16)) : (v292 = 0), v292)))
        {
          v354 = *(v11 + 48);
          v338 = *(v11 + 16);
          v346 = *(v11 + 32);
          v330 = *v11;
          v151 = *v144;
          v152 = *(v144 + 16);
          v153 = *(v144 + 32);
          *(v11 + 48) = *(v144 + 48);
          *(v11 + 16) = v152;
          *(v11 + 32) = v153;
          *v11 = v151;
          *(v144 + 48) = v354;
          *(v144 + 16) = v338;
          *(v144 + 32) = v346;
          *v144 = v330;
        }

        goto LABEL_508;
      }
    }

    if (v12 <= 1343)
    {
      break;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v186 = (v13 - 2) >> 1;
        v187 = v186;
        do
        {
          v189 = v187;
          v190 = 56 * v187;
          v191 = ((56 * v187) >> 3) * v9;
          if (v186 >= v191)
          {
            v192 = 2 * v191;
            v193 = (2 * v191) | 1;
            v194 = v11 + 56 * v193;
            v195 = v192 + 2;
            v196 = **a3;
            if (v195 < v13)
            {
              v197 = *(v194 + 56);
              v198 = *v194;
              v199 = 2 * *v194;
              v200 = 2 * v197;
              if (v199 > v196)
              {
                v198 = v196 - *v194;
              }

              if (v200 > v196)
              {
                v197 = v196 - v197;
              }

              if (v197 < v198 || v198 >= v197 && (v199 > v196 ? (v234 = v200 <= v196) : (v234 = 0), v234 || (v200 > v196 ? (v235 = v199 <= v196) : (v235 = 0), !v235 ? (v236 = *(v194 + 72) < *(v194 + 16)) : (v236 = 0), v236)))
              {
                v194 += 56;
                v193 = v195;
              }
            }

            v201 = v11 + v190;
            v202 = *(v11 + v190);
            v203 = 2 * *v194;
            v204 = 2 * v202;
            v205 = v196 - *v194;
            if (v203 <= v196)
            {
              v205 = *v194;
            }

            v206 = v204 > v196 ? v196 - v202 : v202;
            if (v206 >= v205)
            {
              v207 = *(v201 + 16);
              if (v205 < v206 || (v203 > v196 ? (v231 = v204 <= v196) : (v231 = 0), !v231 && (v204 > v196 ? (v232 = v203 <= v196) : (v232 = 0), !v232 ? (v233 = v207 < *(v194 + 16)) : (v233 = 0), !v233)))
              {
                v208 = *(v201 + 8);
                v348 = *(v201 + 52);
                v332 = *(v201 + 20);
                v340 = *(v201 + 36);
                v209 = *v194;
                v210 = *(v194 + 16);
                v211 = *(v194 + 32);
                *(v201 + 48) = *(v194 + 48);
                *(v201 + 16) = v210;
                *(v201 + 32) = v211;
                *v201 = v209;
                if (v186 >= v193)
                {
                  while (1)
                  {
                    v215 = 2 * v193;
                    v193 = (2 * v193) | 1;
                    v188 = v11 + 56 * v193;
                    v216 = v215 + 2;
                    v217 = **a3;
                    if (v216 < v13)
                    {
                      v218 = *(v188 + 56);
                      v219 = *v188;
                      v220 = 2 * *v188;
                      v221 = 2 * v218;
                      if (v220 > v217)
                      {
                        v219 = v217 - *v188;
                      }

                      if (v221 > v217)
                      {
                        v218 = v217 - v218;
                      }

                      if (v218 < v219 || v219 >= v218 && (v220 > v217 ? (v228 = v221 <= v217) : (v228 = 0), v228 || (v221 > v217 ? (v229 = v220 <= v217) : (v229 = 0), !v229 ? (v230 = *(v188 + 72) < *(v188 + 16)) : (v230 = 0), v230)))
                      {
                        v188 += 56;
                        v193 = v216;
                      }
                    }

                    v222 = *v188;
                    v223 = 2 * *v188;
                    if (v223 > v217)
                    {
                      v222 = v217 - *v188;
                    }

                    v224 = v217 - v202;
                    if (v204 <= v217)
                    {
                      v224 = v202;
                    }

                    if (v224 < v222)
                    {
                      break;
                    }

                    if (v222 >= v224)
                    {
                      if (v204 <= v217 && v223 > v217)
                      {
                        break;
                      }

                      v226 = v223 > v217 || v204 <= v217;
                      if (v226 && v207 < *(v188 + 16))
                      {
                        break;
                      }
                    }

                    v212 = *v188;
                    v213 = *(v188 + 16);
                    v214 = *(v188 + 32);
                    *(v194 + 48) = *(v188 + 48);
                    *(v194 + 16) = v213;
                    *(v194 + 32) = v214;
                    *v194 = v212;
                    v194 = v188;
                    if (v186 < v193)
                    {
                      goto LABEL_341;
                    }
                  }
                }

                v188 = v194;
LABEL_341:
                *v188 = v202;
                *(v188 + 8) = v208;
                *(v188 + 16) = v207;
                *(v188 + 20) = v332;
                *(v188 + 36) = v340;
                *(v188 + 52) = v348;
              }
            }
          }

          v187 = v189 - 1;
        }

        while (v189);
        v237 = (v12 >> 3) * v9;
        do
        {
          v238 = 0;
          v355 = *(v11 + 48);
          v341 = *(v11 + 16);
          v349 = *(v11 + 32);
          v333 = *v11;
          v239 = v11;
          do
          {
            v243 = v239;
            v244 = v239 + 56 * v238;
            v239 = v244 + 56;
            v245 = 2 * v238;
            v238 = (2 * v238) | 1;
            v246 = v245 + 2;
            if (v246 < v237)
            {
              v249 = *(v244 + 112);
              v248 = v244 + 112;
              v247 = v249;
              v250 = *(v248 - 56);
              v251 = **a3;
              v252 = 2 * v250;
              v253 = 2 * v249;
              if (2 * v250 > v251)
              {
                v250 = v251 - v250;
              }

              if (v253 > v251)
              {
                v247 = v251 - v247;
              }

              if (v247 < v250 || v250 >= v247 && (v252 > v251 ? (v254 = v253 <= v251) : (v254 = 0), v254 || (v253 > v251 ? (v255 = v252 <= v251) : (v255 = 0), !v255 ? (v256 = *(v248 + 16) < *(v248 - 40)) : (v256 = 0), v256)))
              {
                v239 = v248;
                v238 = v246;
              }
            }

            v240 = *v239;
            v241 = *(v239 + 16);
            v242 = *(v239 + 32);
            *(v243 + 48) = *(v239 + 48);
            *(v243 + 16) = v241;
            *(v243 + 32) = v242;
            *v243 = v240;
          }

          while (v238 <= ((v237 - 2) >> 1));
          a2 -= 56;
          if (v239 == a2)
          {
            *(v239 + 48) = v355;
            *(v239 + 16) = v341;
            *(v239 + 32) = v349;
            *v239 = v333;
          }

          else
          {
            v257 = *a2;
            v258 = *(a2 + 16);
            v259 = *(a2 + 32);
            *(v239 + 48) = *(a2 + 48);
            *(v239 + 16) = v258;
            *(v239 + 32) = v259;
            *v239 = v257;
            *(a2 + 48) = v355;
            *(a2 + 16) = v341;
            *(a2 + 32) = v349;
            *a2 = v333;
            v260 = v239 - v11 + 56;
            if (v260 >= 57)
            {
              v261 = (v260 >> 3) * v9 - 2;
              v262 = v261 >> 1;
              v263 = v11 + 56 * (v261 >> 1);
              v264 = *v263;
              v265 = *v239;
              v266 = *(v239 + 16);
              v267 = **a3;
              v268 = 2 * *v263;
              v269 = 2 * *v239;
              if (v268 > v267)
              {
                v264 = v267 - *v263;
              }

              v270 = v267 - v265;
              if (v269 <= v267)
              {
                v270 = *v239;
              }

              if (v270 < v264 || v264 >= v270 && (v268 > v267 ? (v287 = v269 <= v267) : (v287 = 0), v287 || (v269 > v267 ? (v288 = v268 <= v267) : (v288 = 0), !v288 ? (v289 = v266 < *(v263 + 16)) : (v289 = 0), v289)))
              {
                v271 = *(v239 + 8);
                v326 = *(v239 + 52);
                v320 = *(v239 + 20);
                v323 = *(v239 + 36);
                v272 = *v263;
                v273 = *(v263 + 16);
                v274 = *(v263 + 32);
                *(v239 + 48) = *(v263 + 48);
                *(v239 + 16) = v273;
                *(v239 + 32) = v274;
                *v239 = v272;
                if (v261 >= 2)
                {
                  while (1)
                  {
                    v279 = v262 - 1;
                    v262 = (v262 - 1) >> 1;
                    v275 = v11 + 56 * v262;
                    v280 = *v275;
                    v281 = **a3;
                    v282 = 2 * *v275;
                    if (v282 > v281)
                    {
                      v280 = v281 - *v275;
                    }

                    v283 = v281 - v265;
                    if (v269 <= v281)
                    {
                      v283 = v265;
                    }

                    if (v283 >= v280)
                    {
                      if (v280 < v283)
                      {
                        break;
                      }

                      if (v282 <= v281 || v269 > v281)
                      {
                        v285 = v269 > v281 && v282 <= v281;
                        if (v285 || v266 >= *(v275 + 16))
                        {
                          break;
                        }
                      }
                    }

                    v276 = *v275;
                    v277 = *(v275 + 16);
                    v278 = *(v275 + 32);
                    *(v263 + 48) = *(v275 + 48);
                    *(v263 + 16) = v277;
                    *(v263 + 32) = v278;
                    *v263 = v276;
                    v263 = v11 + 56 * v262;
                    if (v279 <= 1)
                    {
                      goto LABEL_460;
                    }
                  }
                }

                v275 = v263;
LABEL_460:
                *v275 = v265;
                *(v275 + 8) = v271;
                *(v275 + 16) = v266;
                *(v275 + 20) = v320;
                *(v275 + 36) = v323;
                *(v275 + 52) = v326;
              }
            }
          }

          v31 = v237-- <= 2;
        }

        while (!v31);
      }

      goto LABEL_508;
    }

    v14 = v13 >> 1;
    v15 = v11 + 56 * (v13 >> 1);
    if (v12 < 0x1C01)
    {
      --a4;
      v23 = *a1;
      if (a5)
      {
LABEL_39:
        v25 = *(a1 + 16);
        v26 = **a3;
        v28 = 2 * v23;
        v29 = v26 - v23;
        goto LABEL_40;
      }
    }

    else
    {
      v16 = v9;
      v17 = 56 * v14;
      v18 = (56 * v14 + a1 - 56);
      v19 = (a1 + 56 + v17);
      v9 = v16;
      v351 = *(a1 + 48);
      v335 = *(a1 + 16);
      v343 = *(a1 + 32);
      v327 = *a1;
      v20 = *v15;
      v21 = *(v15 + 16);
      v22 = *(v15 + 32);
      *(a1 + 48) = *(v15 + 48);
      *(a1 + 16) = v21;
      *(a1 + 32) = v22;
      *a1 = v20;
      *(v15 + 48) = v351;
      *(v15 + 16) = v335;
      *(v15 + 32) = v343;
      *v15 = v327;
      --a4;
      v23 = *a1;
      if (a5)
      {
        goto LABEL_39;
      }
    }

    v24 = *(a1 - 56);
    v25 = *(a1 + 16);
    v26 = **a3;
    v27 = 2 * v24;
    v28 = 2 * v23;
    if (2 * v24 > v26)
    {
      v24 = v26 - v24;
    }

    v29 = v26 - v23;
    if (v28 > v26)
    {
      v30 = v26 - v23;
    }

    else
    {
      v30 = v23;
    }

    if (v30 >= v24 && (v24 < v30 || (v27 <= v26 || v28 > v26) && (v28 > v26 ? (v31 = v27 <= v26) : (v31 = 0), v31 || v25 >= *(a1 - 40))))
    {
      v32 = *(a1 + 8);
      v33 = *(a1 + 20);
      v318 = v33;
      v321 = *(a1 + 36);
      v324 = *(a1 + 52);
      v34 = *(a2 - 56);
      v35 = *(a2 - 40);
      v36 = v28 > v26;
      v37 = 2 * v34;
      if (v28 <= v26)
      {
        v29 = v23;
      }

      v38 = v26 - v34;
      if (v37 <= v26)
      {
        v38 = *(a2 - 56);
      }

      if (v38 < v29 || v29 >= v38 && ((v139 = v37 <= v26) ? (v140 = v28 > v26) : (v140 = 0), v140 || (v139 ? (v141 = 0) : (v141 = 1), (v141 & ~v36 & 1) == 0 && v35 < v25)))
      {
        v11 = a1 + 56;
        v39 = *(a1 + 56);
        v40 = v26 - v39;
        v41 = 2 * v39 <= v26;
        if (2 * v39 <= v26)
        {
          v40 = *(a1 + 56);
        }

        if (v40 >= v29)
        {
          v42 = *(a1 + 72);
          v43 = (a1 + 128);
          if (v28 > v26)
          {
            do
            {
              v100 = v42 < v25;
              if (v29 >= v40 && (v41 || v100))
              {
                break;
              }

              v40 = *(v43 - 2);
              v99 = *v43;
              v43 += 14;
              v42 = v99;
              v41 = 2 * v40 <= v26;
              if (2 * v40 > v26)
              {
                v40 = v26 - v40;
              }
            }

            while (v40 >= v29);
          }

          else
          {
            do
            {
              if (v29 >= v40 && v41 && v42 < v25)
              {
                break;
              }

              v40 = *(v43 - 2);
              v101 = *v43;
              v43 += 14;
              v42 = v101;
              LOBYTE(v41) = 2 * v40 <= v26;
              if (2 * v40 > v26)
              {
                v40 = v26 - v40;
              }
            }

            while (v40 >= v29);
          }

          v11 = (v43 - 18);
        }
      }

      else
      {
        v11 = a1 + 56;
        if (a1 + 56 < a2)
        {
          if (v28 > v26)
          {
            do
            {
              v106 = *v11;
              v107 = 2 * *v11;
              if (v107 > v26)
              {
                v106 = v26 - *v11;
              }

              if (v106 < v29)
              {
                break;
              }

              v108 = v107 <= v26 || *(v11 + 16) < v25;
              v109 = v108;
              if (v29 >= v106 && v109)
              {
                break;
              }

              v11 += 56;
            }

            while (v11 < a2);
          }

          else
          {
            do
            {
              v102 = *v11;
              v103 = 2 * *v11;
              if (v103 > v26)
              {
                v102 = v26 - *v11;
              }

              if (v102 < v29)
              {
                break;
              }

              v104 = v103 > v26 || v29 < v102;
              if (!v104 && *(v11 + 16) < v25)
              {
                break;
              }

              v11 += 56;
            }

            while (v11 < a2);
          }
        }
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = (a2 - 56); ; v35 = *(i + 4))
        {
          v112 = 2 * v34;
          if (2 * v34 > v26)
          {
            v34 = v26 - v34;
          }

          if (v34 >= v29)
          {
            if (v29 < v34)
            {
              break;
            }

            v113 = v112 <= v26 && v28 > v26;
            if (!v113 && (((v112 > v26) & ~v36) != 0 || v35 >= v25))
            {
              break;
            }
          }

          v111 = *(i - 7);
          i -= 7;
          v34 = v111;
        }
      }

      while (v11 < i)
      {
        v353 = *(v11 + 48);
        v337 = *(v11 + 16);
        v345 = *(v11 + 32);
        v329 = *v11;
        v114 = *i;
        v115 = *(i + 1);
        v116 = *(i + 2);
        *(v11 + 48) = i[6];
        *(v11 + 16) = v115;
        *(v11 + 32) = v116;
        *v11 = v114;
        i[6] = v353;
        *(i + 1) = v337;
        *(i + 2) = v345;
        *i = v329;
        v117 = **a3;
        v118 = v117 - v23;
        v119 = v28 > v117;
        if (v28 <= v117)
        {
          v118 = v23;
        }

        v120 = *(v11 + 56);
        v121 = 2 * v120 <= v117;
        if (2 * v120 > v117)
        {
          v120 = v117 - v120;
        }

        if (v120 >= v118)
        {
          v122 = *(v11 + 72);
          if (v28 <= v117)
          {
            v126 = (v11 + 128);
            do
            {
              if (v118 >= v120 && v121 && v122 < v25)
              {
                break;
              }

              v127 = *(v126 - 2);
              v128 = *v126;
              v126 += 14;
              v122 = v128;
              v120 = v117 - v127;
              LOBYTE(v121) = 2 * v127 <= v117;
              if (2 * v127 <= v117)
              {
                v120 = v127;
              }
            }

            while (v120 >= v118);
            v119 = 0;
            v11 = (v126 - 18);
          }

          else
          {
            v123 = (v11 + 128);
            do
            {
              v125 = v122 < v25;
              if (v118 >= v120 && (v121 || v125))
              {
                break;
              }

              v120 = *(v123 - 2);
              v124 = *v123;
              v123 += 14;
              v122 = v124;
              v121 = 2 * v120 <= v117;
              if (2 * v120 > v117)
              {
                v120 = v117 - v120;
              }
            }

            while (v120 >= v118);
            v11 = (v123 - 18);
            v119 = 1;
          }
        }

        else
        {
          v11 += 56;
        }

        v129 = i - 7;
        while (1)
        {
          i = v129;
          v130 = *v129;
          v131 = 2 * v130;
          v132 = v117 - v130;
          if (2 * v130 <= v117)
          {
            v132 = v130;
          }

          v129 = i - 7;
          if (v132 >= v118)
          {
            if (v118 < v132)
            {
              break;
            }

            v133 = v131 <= v117;
            v134 = v131 <= v117 ? v119 : 0;
            if ((v134 & 1) == 0)
            {
              v135 = !v133;
              if ((v135 & ~v119 & 1) != 0 || *(i + 4) >= v25)
              {
                break;
              }
            }
          }
        }
      }

      if (v11 - 56 != a1)
      {
        v136 = *(v11 - 56);
        v137 = *(v11 - 40);
        v138 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v137;
        *(a1 + 32) = v138;
        *a1 = v136;
      }

      a5 = 0;
      *(v11 - 56) = v23;
      *(v11 - 48) = v32;
      *(v11 - 40) = v25;
      *(v11 - 4) = v324;
      *(v11 - 20) = v321;
      *(v11 - 36) = v318;
    }

    else
    {
LABEL_40:
      v44 = *(a1 + 8);
      v45 = *(a1 + 20);
      v319 = v45;
      v322 = *(a1 + 36);
      v325 = *(a1 + 52);
      if (v28 > v26)
      {
        v46 = v29;
      }

      else
      {
        v46 = v23;
      }

      v47 = a1 + 56;
      if (v28 <= v26)
      {
        while (1)
        {
          v48 = *v47;
          v49 = 2 * *v47;
          if (v49 > v26)
          {
            v48 = v26 - *v47;
          }

          if (v46 >= v48)
          {
            v50 = v49 > v26 || v25 < *(v47 + 16);
            v51 = v50;
            if (v48 < v46 || !v51)
            {
              break;
            }
          }

          v47 += 56;
        }
      }

      else
      {
        while (1)
        {
          v53 = *v47;
          v54 = 2 * *v47;
          if (v54 > v26)
          {
            v53 = v26 - *v47;
          }

          if (v46 >= v53)
          {
            v55 = v54 <= v26 || v53 < v46;
            if (v55 || v25 >= *(v47 + 16))
            {
              break;
            }
          }

          v47 += 56;
        }
      }

      if (v47 - 56 == a1)
      {
        v60 = a2;
        if (v47 < a2)
        {
          v66 = 2 * *v10;
          v67 = v26 - *v10;
          v31 = v66 <= v26;
          v68 = v66 > v26;
          if (v31)
          {
            v67 = *v10;
          }

          v60 = a2 - 56;
          if (v46 >= v67)
          {
            v60 = a2 - 56;
            do
            {
              if (v67 < v46)
              {
                if (v47 >= v60)
                {
                  break;
                }
              }

              else if (v28 <= v26 && v68 || v47 >= v60 || (v28 <= v26 || v68) && v25 < *(v60 + 16))
              {
                break;
              }

              v97 = *(v60 - 56);
              v60 -= 56;
              v67 = v97;
              v98 = v26 - v97;
              v68 = 2 * v97 > v26;
              if (2 * v97 > v26)
              {
                v67 = v98;
              }
            }

            while (v46 >= v67);
          }
        }
      }

      else
      {
        v57 = 2 * *v10;
        v31 = v57 <= v26;
        v58 = v57 > v26;
        if (v31)
        {
          v59 = *v10;
        }

        else
        {
          v59 = v26 - *v10;
        }

        v60 = a2 - 56;
        if (v46 >= v59)
        {
          v61 = *(a2 - 40);
          v60 = a2 - 56;
          if (v28 <= v26)
          {
            do
            {
              if (v59 >= v46 && (v58 || v25 < v61))
              {
                break;
              }

              v63 = *(v60 - 56);
              v60 -= 56;
              v62 = v63;
              v61 = *(v60 + 16);
              v59 = v26 - v63;
              v58 = 2 * v63 > v26;
              if (2 * v63 <= v26)
              {
                v59 = v62;
              }
            }

            while (v46 >= v59);
          }

          else
          {
            do
            {
              if (v59 >= v46 && v58 && v25 < v61)
              {
                break;
              }

              v65 = *(v60 - 56);
              v60 -= 56;
              v64 = v65;
              v61 = *(v60 + 16);
              v59 = v26 - v65;
              v58 = 2 * v65 > v26;
              if (2 * v65 <= v26)
              {
                v59 = v64;
              }
            }

            while (v46 >= v59);
          }
        }
      }

      v11 = v47;
      if (v47 < v60)
      {
        v11 = v47;
        v69 = v60;
        do
        {
          v352 = *(v11 + 48);
          v336 = *(v11 + 16);
          v344 = *(v11 + 32);
          v328 = *v11;
          v70 = *v69;
          v71 = *(v69 + 16);
          v72 = *(v69 + 32);
          *(v11 + 48) = *(v69 + 48);
          *(v11 + 16) = v71;
          *(v11 + 32) = v72;
          *v11 = v70;
          v11 += 56;
          *(v69 + 48) = v352;
          *(v69 + 16) = v336;
          *(v69 + 32) = v344;
          *v69 = v328;
          v73 = **a3;
          v74 = v73 - v23;
          if (v28 > v73)
          {
            while (1)
            {
              v80 = *v11;
              v81 = 2 * *v11;
              if (v81 > v73)
              {
                v80 = v73 - *v11;
              }

              if (v74 >= v80)
              {
                v82 = v81 <= v73 || v80 < v74;
                if (v82 || v25 >= *(v11 + 16))
                {
                  break;
                }
              }

              v11 += 56;
            }
          }

          else
          {
            v74 = v23;
            while (1)
            {
              v75 = *v11;
              v76 = 2 * *v11;
              if (v76 > v73)
              {
                v75 = v73 - *v11;
              }

              if (v23 >= v75)
              {
                v77 = v76 > v73 || v25 < *(v11 + 16);
                v78 = v77;
                if (v75 < v23 || !v78)
                {
                  break;
                }
              }

              v11 += 56;
            }
          }

          v85 = v69 - 56;
          v84 = *(v69 - 56);
          v86 = 2 * v84 > v73;
          if (2 * v84 > v73)
          {
            v84 = v73 - v84;
          }

          if (v74 >= v84)
          {
            v87 = *(v69 - 40);
            if (v28 <= v73)
            {
              do
              {
                v90 = v25 < v87;
                if (v84 >= v74 && (v86 || v90))
                {
                  break;
                }

                v89 = *(v85 - 56);
                v85 -= 56;
                v88 = v89;
                v87 = *(v85 + 16);
                v84 = v73 - v89;
                v86 = 2 * v89 > v73;
                if (2 * v89 <= v73)
                {
                  v84 = v88;
                }
              }

              while (v74 >= v84);
            }

            else
            {
              do
              {
                if (v84 >= v74 && v86 && v25 < v87)
                {
                  break;
                }

                v92 = *(v85 - 56);
                v85 -= 56;
                v91 = v92;
                v87 = *(v85 + 16);
                v84 = v73 - v92;
                LOBYTE(v86) = 2 * v92 > v73;
                if (2 * v92 <= v73)
                {
                  v84 = v91;
                }
              }

              while (v74 >= v84);
            }
          }

          v69 = v85;
        }

        while (v11 < v85);
      }

      if (v11 - 56 != a1)
      {
        v93 = *(v11 - 56);
        v94 = *(v11 - 40);
        v95 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v94;
        *(a1 + 32) = v95;
        *a1 = v93;
      }

      *(v11 - 56) = v23;
      *(v11 - 48) = v44;
      *(v11 - 40) = v25;
      *(v11 - 4) = v325;
      *(v11 - 20) = v322;
      *(v11 - 36) = v319;
      if (v47 < v60)
      {
        goto LABEL_153;
      }

      {
        a2 = v11 - 56;
        if (v96)
        {
          goto LABEL_508;
        }

        goto LABEL_2;
      }

      if ((v96 & 1) == 0)
      {
LABEL_153:
        a5 = 0;
      }
    }
  }

  v156 = v11 + 56;
  v158 = v11 == a2 || v156 == a2;
  if ((a5 & 1) == 0)
  {
    if (!v158)
    {
      v294 = *a3;
      do
      {
        v295 = a1;
        a1 = v156;
        v296 = *(v295 + 56);
        v297 = *(v295 + 72);
        v298 = *v295;
        v299 = *v294;
        v300 = 2 * v296;
        v301 = 2 * *v295;
        v302 = *v294 - v296;
        if (2 * v296 <= *v294)
        {
          v302 = *(v295 + 56);
        }

        if (v301 > v299)
        {
          v298 = v299 - v298;
        }

        if (v298 < v302 || v302 >= v298 && (v300 > v299 ? (v314 = v301 <= v299) : (v314 = 0), v314 || (v301 > v299 ? (v315 = v300 <= v299) : (v315 = 0), !v315 ? (v316 = *(v295 + 16) < v297) : (v316 = 0), v316)))
        {
          v303 = *(v295 + 64);
          v350 = *(v295 + 108);
          v334 = *(v295 + 76);
          v342 = *(v295 + 92);
          while (1)
          {
            v304 = v295;
            v305 = *(v295 + 16);
            *(v295 + 56) = *v295;
            *(v295 + 72) = v305;
            *(v295 + 88) = *(v295 + 32);
            *(v295 + 104) = *(v295 + 48);
            v307 = *(v295 - 56);
            v295 -= 56;
            v306 = v307;
            v308 = **a3;
            v309 = 2 * v307;
            v310 = v308 - v296;
            if (v300 <= v308)
            {
              v310 = v296;
            }

            if (v309 > v308)
            {
              v306 = v308 - v306;
            }

            if (v306 >= v310)
            {
              if (v310 < v306)
              {
                break;
              }

              if (v300 <= v308 || v309 > v308)
              {
                v312 = v309 > v308 && v300 <= v308;
                if (v312 || *(v304 - 40) >= v297)
                {
                  break;
                }
              }
            }
          }

          *v304 = v296;
          *(v304 + 8) = v303;
          *(v304 + 16) = v297;
          *(v304 + 20) = v334;
          *(v304 + 36) = v342;
          *(v304 + 52) = v350;
          v294 = *a3;
        }

        v156 = a1 + 56;
      }

      while (a1 + 56 != a2);
    }

    goto LABEL_508;
  }

  if (v158)
  {
    goto LABEL_508;
  }

  v159 = 0;
  v160 = *a3;
  v161 = v11;
  while (2)
  {
    v163 = v161;
    v161 = v156;
    v164 = *(v163 + 56);
    v165 = *(v163 + 72);
    v166 = *v163;
    v167 = *v160;
    v168 = 2 * v164;
    v169 = 2 * *v163;
    v170 = *v160 - v164;
    if (2 * v164 <= *v160)
    {
      v170 = *(v163 + 56);
    }

    if (v169 > v167)
    {
      v166 = v167 - v166;
    }

    if (v166 >= v170)
    {
      if (v170 < v166)
      {
        goto LABEL_296;
      }

      if (v168 <= v167 || v169 > v167)
      {
        v184 = v169 > v167 && v168 <= v167;
        if (v184 || *(v163 + 16) >= v165)
        {
          goto LABEL_296;
        }
      }
    }

    v171 = *(v163 + 64);
    v347 = *(v163 + 108);
    v331 = *(v163 + 76);
    v339 = *(v163 + 92);
    v172 = *(v163 + 16);
    *v161 = *v163;
    *(v161 + 16) = v172;
    *(v161 + 32) = *(v163 + 32);
    *(v161 + 48) = *(v163 + 48);
    v162 = v11;
    if (v163 == v11)
    {
      goto LABEL_295;
    }

    v173 = v159;
    while (2)
    {
      v175 = v11 + v173;
      v176 = *(v11 + v173 - 56);
      v177 = **a3;
      v178 = 2 * v176;
      v179 = v177 - v164;
      if (v168 <= v177)
      {
        v179 = v164;
      }

      if (v178 > v177)
      {
        v176 = v177 - v176;
      }

      if (v176 < v179)
      {
LABEL_304:
        v163 -= 56;
        v174 = *(v11 + v173 - 40);
        *v175 = *(v11 + v173 - 56);
        *(v175 + 16) = v174;
        *(v175 + 32) = *(v11 + v173 - 24);
        *(v175 + 48) = *(v11 + v173 - 8);
        v173 -= 56;
        if (!v173)
        {
          v162 = v11;
          goto LABEL_295;
        }

        continue;
      }

      break;
    }

    if (v179 >= v176)
    {
      if (v168 <= v177 || v178 > v177)
      {
        v181 = v178 > v177 && v168 <= v177;
        if (v181 || *(v175 - 40) >= v165)
        {
          v162 = v163;
          goto LABEL_295;
        }
      }

      goto LABEL_304;
    }

    v162 = v11 + v173;
LABEL_295:
    *v162 = v164;
    *(v162 + 8) = v171;
    *(v162 + 16) = v165;
    *(v162 + 20) = v331;
    *(v162 + 36) = v339;
    *(v162 + 52) = v347;
    v160 = *a3;
LABEL_296:
    v156 = v161 + 56;
    v159 += 56;
    if (v161 + 56 != a2)
    {
      continue;
    }

    break;
  }

LABEL_508:
  v293 = *MEMORY[0x277D85DE8];
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t **a4)
{
  v4 = a2->n128_u64[0];
  v5 = a2[1].n128_i32[0];
  v6 = a1->n128_u64[0];
  v7 = **a4;
  v8 = 2 * a2->n128_u64[0];
  v9 = 2 * a1->n128_u64[0];
  if (v8 > v7)
  {
    v4 = v7 - a2->n128_u64[0];
  }

  if (v9 > v7)
  {
    v6 = v7 - v6;
  }

  if (v6 < v4 || v4 >= v6 && (v8 > v7 ? (v55 = v9 <= v7) : (v55 = 0), v55 || (v9 > v7 ? (v56 = v8 <= v7) : (v56 = 0), !v56 ? (v57 = a1[1].n128_u32[0] < v5) : (v57 = 0), v57)))
  {
    v10 = a3->n128_u64[0];
    v11 = 2 * a3->n128_u64[0];
    if (v11 > v7)
    {
      v10 = v7 - a3->n128_u64[0];
    }

    if (v4 < v10 || v10 >= v4 && (v8 <= v7 ? (v58 = v11 <= v7) : (v58 = 1), !v58 || (v11 <= v7 ? (v59 = v8 <= v7) : (v59 = 1), v59 ? (v60 = v5 < a3[1].n128_u32[0]) : (v60 = 0), v60)))
    {
      v12 = a1[3].n128_i64[0];
      v14 = a1[1];
      result = a1[2];
      v15 = *a1;
      v17 = a3[1];
      v16 = a3[2];
      v18 = *a3;
      a1[3].n128_u64[0] = a3[3].n128_u64[0];
      a1[1] = v17;
      a1[2] = v16;
      *a1 = v18;
      *a3 = v15;
      a3[1] = v14;
      a3[2] = result;
      a3[3].n128_u64[0] = v12;
    }

    else
    {
      v38 = a1[3].n128_i64[0];
      v39 = a1[1];
      result = a1[2];
      v40 = *a1;
      v42 = a2[1];
      v41 = a2[2];
      v43 = *a2;
      a1[3].n128_u64[0] = a2[3].n128_u64[0];
      a1[1] = v42;
      a1[2] = v41;
      *a1 = v43;
      *a2 = v40;
      a2[1] = v39;
      a2[2] = result;
      a2[3].n128_u64[0] = v38;
      v44 = a3->n128_u64[0];
      v45 = a2->n128_u64[0];
      v46 = **a4;
      v47 = 2 * a3->n128_u64[0];
      v48 = 2 * a2->n128_u64[0];
      if (v47 > v46)
      {
        v44 = v46 - a3->n128_u64[0];
      }

      if (v48 > v46)
      {
        v45 = v46 - v45;
      }

      if (v45 < v44 || v44 >= v45 && (v47 > v46 && v48 <= v46 || (v48 > v46 ? (v65 = v47 <= v46) : (v65 = 0), !v65 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
      {
        v49 = a2[3].n128_i64[0];
        v50 = a2[1];
        result = a2[2];
        v51 = *a2;
        v53 = a3[1];
        v52 = a3[2];
        v54 = *a3;
        a2[3].n128_u64[0] = a3[3].n128_u64[0];
        a2[1] = v53;
        a2[2] = v52;
        *a2 = v54;
        *a3 = v51;
        a3[1] = v50;
        a3[2] = result;
        a3[3].n128_u64[0] = v49;
      }
    }
  }

  else
  {
    v19 = a3->n128_u64[0];
    v20 = 2 * a3->n128_u64[0];
    if (v20 > v7)
    {
      v19 = v7 - a3->n128_u64[0];
    }

    if (v4 < v19 || v19 >= v4 && (v8 <= v7 ? (v61 = v20 <= v7) : (v61 = 1), !v61 || (v20 <= v7 ? (v62 = v8 <= v7) : (v62 = 1), v62 ? (v63 = v5 < a3[1].n128_u32[0]) : (v63 = 0), v63)))
    {
      v21 = a2[3].n128_i64[0];
      v22 = a2[1];
      result = a2[2];
      v23 = *a2;
      v25 = a3[1];
      v24 = a3[2];
      v26 = *a3;
      a2[3].n128_u64[0] = a3[3].n128_u64[0];
      a2[1] = v25;
      a2[2] = v24;
      *a2 = v26;
      *a3 = v23;
      a3[1] = v22;
      a3[2] = result;
      a3[3].n128_u64[0] = v21;
      v27 = a2->n128_u64[0];
      v28 = a1->n128_u64[0];
      v29 = **a4;
      v30 = 2 * a2->n128_u64[0];
      v31 = 2 * a1->n128_u64[0];
      if (v30 > v29)
      {
        v27 = v29 - a2->n128_u64[0];
      }

      if (v31 > v29)
      {
        v28 = v29 - v28;
      }

      if (v28 < v27 || v27 >= v28 && (v30 > v29 && v31 <= v29 || (v31 > v29 ? (v64 = v30 <= v29) : (v64 = 0), !v64 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
      {
        v32 = a1[3].n128_i64[0];
        v33 = a1[1];
        result = a1[2];
        v34 = *a1;
        v36 = a2[1];
        v35 = a2[2];
        v37 = *a2;
        a1[3].n128_u64[0] = a2[3].n128_u64[0];
        a1[1] = v36;
        a1[2] = v35;
        *a1 = v37;
        *a2 = v34;
        a2[1] = v33;
        a2[2] = result;
        a2[3].n128_u64[0] = v32;
      }
    }
  }

  return result;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t **a5)
{
  v10 = a4->n128_u64[0];
  v11 = a3->n128_u64[0];
  v12 = **a5;
  v13 = 2 * a4->n128_u64[0];
  v14 = 2 * a3->n128_u64[0];
  if (v13 > v12)
  {
    v10 = v12 - a4->n128_u64[0];
  }

  if (v14 > v12)
  {
    v11 = v12 - v11;
  }

  if (v11 < v10 || v10 >= v11 && (v13 > v12 ? (v46 = v14 <= v12) : (v46 = 0), v46 || (v14 > v12 ? (v47 = v13 <= v12) : (v47 = 0), !v47 ? (v48 = a3[1].n128_u32[0] < a4[1].n128_u32[0]) : (v48 = 0), v48)))
  {
    v15 = a3[3].n128_i64[0];
    v17 = a3[1];
    v16 = a3[2];
    v18 = *a3;
    v20 = a4[1];
    v19 = a4[2];
    v21 = *a4;
    a3[3].n128_u64[0] = a4[3].n128_u64[0];
    a3[1] = v20;
    a3[2] = v19;
    *a3 = v21;
    *a4 = v18;
    a4[1] = v17;
    a4[2] = v16;
    a4[3].n128_u64[0] = v15;
    v22 = a3->n128_u64[0];
    v23 = a2->n128_u64[0];
    v24 = **a5;
    v25 = 2 * a3->n128_u64[0];
    v26 = 2 * a2->n128_u64[0];
    if (v25 > v24)
    {
      v22 = v24 - a3->n128_u64[0];
    }

    if (v26 > v24)
    {
      v23 = v24 - v23;
    }

    if (v23 < v22 || v22 >= v23 && (v25 > v24 && v26 <= v24 || (v26 > v24 ? (v49 = v25 <= v24) : (v49 = 0), !v49 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
    {
      v27 = a2[3].n128_i64[0];
      v29 = a2[1];
      v28 = a2[2];
      v30 = *a2;
      v32 = a3[1];
      v31 = a3[2];
      v33 = *a3;
      a2[3].n128_u64[0] = a3[3].n128_u64[0];
      a2[1] = v32;
      a2[2] = v31;
      *a2 = v33;
      *a3 = v30;
      a3[1] = v29;
      a3[2] = v28;
      a3[3].n128_u64[0] = v27;
      v34 = a2->n128_u64[0];
      v35 = a1->n128_u64[0];
      v36 = **a5;
      v37 = 2 * a2->n128_u64[0];
      v38 = 2 * a1->n128_u64[0];
      if (v37 > v36)
      {
        v34 = v36 - a2->n128_u64[0];
      }

      if (v38 > v36)
      {
        v35 = v36 - v35;
      }

      if (v35 < v34 || v34 >= v35 && (v37 > v36 && v38 <= v36 || (v38 > v36 ? (v50 = v37 <= v36) : (v50 = 0), !v50 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
      {
        v39 = a1[3].n128_i64[0];
        v41 = a1[1];
        v40 = a1[2];
        v42 = *a1;
        v44 = a2[1];
        v43 = a2[2];
        v45 = *a2;
        a1[3].n128_u64[0] = a2[3].n128_u64[0];
        a1[1] = v44;
        a1[2] = v43;
        *a1 = v45;
        *a2 = v42;
        a2[1] = v41;
        a2[2] = v40;
        a2[3].n128_u64[0] = v39;
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t **a6)
{
  v12 = a5->n128_u64[0];
  v13 = a4->n128_u64[0];
  v14 = **a6;
  v15 = 2 * a5->n128_u64[0];
  v16 = 2 * a4->n128_u64[0];
  if (v15 > v14)
  {
    v12 = v14 - a5->n128_u64[0];
  }

  if (v16 > v14)
  {
    v13 = v14 - v13;
  }

  if (v13 < v12 || v12 >= v13 && (v15 > v14 ? (v60 = v16 <= v14) : (v60 = 0), v60 || (v16 > v14 ? (v61 = v15 <= v14) : (v61 = 0), !v61 ? (v62 = a4[1].n128_u32[0] < a5[1].n128_u32[0]) : (v62 = 0), v62)))
  {
    v17 = a4[3].n128_i64[0];
    v19 = a4[1];
    v18 = a4[2];
    v20 = *a4;
    v22 = a5[1];
    v21 = a5[2];
    v23 = *a5;
    a4[3].n128_u64[0] = a5[3].n128_u64[0];
    a4[1] = v22;
    a4[2] = v21;
    *a4 = v23;
    *a5 = v20;
    a5[1] = v19;
    a5[2] = v18;
    a5[3].n128_u64[0] = v17;
    v24 = a4->n128_u64[0];
    v25 = a3->n128_u64[0];
    v26 = **a6;
    v27 = 2 * a4->n128_u64[0];
    v28 = 2 * a3->n128_u64[0];
    if (v27 > v26)
    {
      v24 = v26 - a4->n128_u64[0];
    }

    if (v28 > v26)
    {
      v25 = v26 - v25;
    }

    if (v25 < v24 || v24 >= v25 && (v27 > v26 && v28 <= v26 || (v28 > v26 ? (v63 = v27 <= v26) : (v63 = 0), !v63 && a3[1].n128_u32[0] < a4[1].n128_u32[0])))
    {
      v29 = a3[3].n128_i64[0];
      v31 = a3[1];
      v30 = a3[2];
      v32 = *a3;
      v34 = a4[1];
      v33 = a4[2];
      v35 = *a4;
      a3[3].n128_u64[0] = a4[3].n128_u64[0];
      a3[1] = v34;
      a3[2] = v33;
      *a3 = v35;
      *a4 = v32;
      a4[1] = v31;
      a4[2] = v30;
      a4[3].n128_u64[0] = v29;
      v36 = a3->n128_u64[0];
      v37 = a2->n128_u64[0];
      v38 = **a6;
      v39 = 2 * a3->n128_u64[0];
      v40 = 2 * a2->n128_u64[0];
      if (v39 > v38)
      {
        v36 = v38 - a3->n128_u64[0];
      }

      if (v40 > v38)
      {
        v37 = v38 - v37;
      }

      if (v37 < v36 || v36 >= v37 && (v39 > v38 && v40 <= v38 || (v40 > v38 ? (v64 = v39 <= v38) : (v64 = 0), !v64 && a2[1].n128_u32[0] < a3[1].n128_u32[0])))
      {
        v41 = a2[3].n128_i64[0];
        v43 = a2[1];
        v42 = a2[2];
        v44 = *a2;
        v46 = a3[1];
        v45 = a3[2];
        v47 = *a3;
        a2[3].n128_u64[0] = a3[3].n128_u64[0];
        a2[1] = v46;
        a2[2] = v45;
        *a2 = v47;
        *a3 = v44;
        a3[1] = v43;
        a3[2] = v42;
        a3[3].n128_u64[0] = v41;
        v48 = a2->n128_u64[0];
        v49 = a1->n128_u64[0];
        v50 = **a6;
        v51 = 2 * a2->n128_u64[0];
        v52 = 2 * a1->n128_u64[0];
        if (v51 > v50)
        {
          v48 = v50 - a2->n128_u64[0];
        }

        if (v52 > v50)
        {
          v49 = v50 - v49;
        }

        if (v49 < v48 || v48 >= v49 && (v51 > v50 && v52 <= v50 || (v52 > v50 ? (v65 = v51 <= v50) : (v65 = 0), !v65 && a1[1].n128_u32[0] < a2[1].n128_u32[0])))
        {
          v53 = a1[3].n128_i64[0];
          v55 = a1[1];
          v54 = a1[2];
          v56 = *a1;
          v58 = a2[1];
          v57 = a2[2];
          v59 = *a2;
          a1[3].n128_u64[0] = a2[3].n128_u64[0];
          a1[1] = v58;
          a1[2] = v57;
          *a1 = v59;
          *a2 = v56;
          a2[1] = v55;
          a2[2] = v54;
          a2[3].n128_u64[0] = v53;
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PreprocessLargeWithSmallX(absl::lts_20240722::Span<operations_research::sat::PermutableItem> &,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,int)::$_0 &,operations_research::sat::PermutableItem*>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = 1;
        goto LABEL_77;
      case 4:
        v5 = 1;
        goto LABEL_77;
      case 5:
        v5 = 1;
        goto LABEL_77;
    }
  }

  else
  {
    if (v4 < 2)
    {
LABEL_3:
      v5 = 1;
      goto LABEL_77;
    }

    if (v4 == 2)
    {
      v8 = *(a2 - 56);
      v6 = a2 - 56;
      v7 = v8;
      v9 = *a1;
      v10 = **a3;
      v11 = 2 * v8;
      v12 = 2 * *a1;
      v13 = v10 - v8;
      if (2 * v8 > v10)
      {
        v7 = v13;
      }

      if (v12 > v10)
      {
        v9 = v10 - v9;
      }

      if (v9 >= v7)
      {
        if (v7 < v9)
        {
          goto LABEL_3;
        }

        if (v11 <= v10 || v12 > v10)
        {
          v52 = v12 > v10 && v11 <= v10;
          v5 = 1;
          if (v52 || *(a1 + 16) >= *(v6 + 16))
          {
            goto LABEL_77;
          }
        }
      }

      v14 = *(a1 + 48);
      v16 = *(a1 + 16);
      v15 = *(a1 + 32);
      v17 = *a1;
      v19 = *(v6 + 16);
      v18 = *(v6 + 32);
      v20 = *v6;
      *(a1 + 48) = *(v6 + 48);
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      *a1 = v20;
      *v6 = v17;
      *(v6 + 16) = v16;
      *(v6 + 32) = v15;
      v5 = 1;
      *(v6 + 48) = v14;
      goto LABEL_77;
    }
  }

  v21 = a1 + 112;
  v25 = a1 + 168;
  if (a1 + 168 == a2)
  {
LABEL_63:
    v50 = 1;
    goto LABEL_76;
  }

  v24 = a2;
  v26 = 0;
  v27 = 0;
  while (2)
  {
    v29 = *v25;
    v30 = *(v25 + 16);
    v31 = *v21;
    v32 = **a3;
    v33 = 2 * *v25;
    v34 = 2 * *v21;
    v35 = v32 - *v25;
    if (v33 <= v32)
    {
      v35 = *v25;
    }

    if (v34 > v32)
    {
      v31 = v32 - v31;
    }

    if (v31 >= v35)
    {
      if (v35 < v31)
      {
        goto LABEL_20;
      }

      if (v33 <= v32 || v34 > v32)
      {
        v48 = v34 > v32 && v33 <= v32;
        if (v48 || *(v21 + 16) >= v30)
        {
          goto LABEL_20;
        }
      }
    }

    v36 = *(v25 + 8);
    v57 = *(v25 + 52);
    v55 = *(v25 + 20);
    v56 = *(v25 + 36);
    v37 = *(v21 + 32);
    *(v25 + 16) = *(v21 + 16);
    *(v25 + 32) = v37;
    *(v25 + 48) = *(v21 + 48);
    *v25 = *v21;
    v28 = a1;
    if (v21 == a1)
    {
      goto LABEL_19;
    }

    v38 = v26;
    while (1)
    {
      v40 = *(a1 + v38 + 56);
      v41 = **a3;
      v42 = 2 * v40;
      v43 = v41 - v29;
      if (v33 <= v41)
      {
        v43 = v29;
      }

      if (v42 > v41)
      {
        v40 = v41 - v40;
      }

      if (v40 < v43)
      {
        goto LABEL_28;
      }

      if (v43 < v40)
      {
        break;
      }

      if (v33 <= v41 || v42 > v41)
      {
        v45 = v42 > v41 && v33 <= v41;
        if (v45 || *(a1 + v38 + 72) >= v30)
        {
          v28 = a1 + v38 + 112;
          goto LABEL_19;
        }
      }

LABEL_28:
      v21 -= 56;
      v39 = *(a1 + v38 + 72);
      *(a1 + v38 + 112) = *(a1 + v38 + 56);
      *(a1 + v38 + 128) = v39;
      *(a1 + v38 + 144) = *(a1 + v38 + 88);
      *(a1 + v38 + 160) = *(a1 + v38 + 104);
      v38 -= 56;
      if (v38 == -112)
      {
        v28 = a1;
        goto LABEL_19;
      }
    }

    v28 = v21;
LABEL_19:
    *v28 = v29;
    *(v28 + 8) = v36;
    *(v28 + 16) = v30;
    *(v28 + 20) = v55;
    *(v28 + 36) = v56;
    *(v28 + 52) = v57;
    if (++v27 != 8)
    {
LABEL_20:
      v21 = v25;
      v26 += 56;
      v25 += 56;
      if (v25 == a2)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v50 = 0;
  v24 = v25 + 56 == a2;
LABEL_76:
  v5 = v50 | v24;
LABEL_77:
  v53 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = MEMORY[0x28223BE20](a1, a2, a3);
  v100 = v18;
  v19 = a11;
  v113 = v14;
  v114 = v15;
  v111 = v20;
  v112 = v21;
  v109 = a9;
  v110 = a10;
  v108[0] = &v109;
  v108[1] = v22;
  v99 = v22;
  v108[2] = v16;
  v108[3] = &v113;
  v23 = 1;
  v108[4] = &v111;
  v108[5] = a11;
  if (v15 < 1)
  {
    return v23 & 1;
  }

  v24 = v17;
  v25 = 0;
  v26 = 0;
  v27 = v15 & 0x7FFFFFFF;
  v28 = a11[1];
  v96 = v17;
  v97 = v16;
  while (1)
  {
    v29 = *(v28 + 8 * (v25 >> 6));
    if ((v29 & (1 << v25)) != 0)
    {
      goto LABEL_4;
    }

    v30 = (a12 + 392 * v25);
    v31 = *v30;
    if (*v30 < 2)
    {
      v23 = 0;
      return v23 & 1;
    }

    *(v28 + 8 * (v25 >> 6)) = v29 | (1 << v25);
    v32 = v30 + 1;
    v92 = 1 << v25;
    v93 = v25 >> 6;
    if (v31)
    {
      v32 = *v32;
    }

    v33 = 3 * (v31 >> 1);
    if (v33 * 8)
    {
      break;
    }

LABEL_3:
    v28 = v19[1];
    *(v28 + 8 * v93) &= ~v92;
    v26 = 1;
LABEL_4:
    if (++v25 == v27)
    {
      v23 = v26 ^ 1;
      return v23 & 1;
    }
  }

  v98 = &v32[v33];
  v103 = v25;
  while (1)
  {
    if ((v32[2] & 1) == 0)
    {
      v34 = *(v113 + 8 * v25);
      v35 = *(v111 + 8 * v25);
      v101 = v32;
      v36 = *v32;
      v37 = v32[1];
      v38 = v37 + v35;
      v39 = (v109 + 32 * v25);
      *v39 = v36;
      v39[1] = v36 + v34;
      v39[2] = v37;
      v39[3] = v37 + v35;
      v40 = v99 - (v36 + v34);
      v41 = v40 * v35;
      v32 = v101;
      if (v40 >= v100)
      {
        v41 = 0;
      }

      v42 = (v16 - v38) * v34;
      if (v16 - v38 >= v24)
      {
        v42 = 0;
      }

      v43 = v42 + v41;
      v44 = __OFSUB__(a14, v43);
      v45 = a14 - v43;
      if (v45 < 0 == v44)
      {
        break;
      }
    }

LABEL_12:
    v32 += 3;
    if (v32 == v98)
    {
      goto LABEL_3;
    }
  }

  v95 = v45;
  v107[0] = 0;
  v107[49] = 0;
  v107[98] = 0;
  v107[147] = 0;
  v107[196] = 0;
  v107[245] = 0;
  v107[294] = 0;
  v107[343] = 0;
  v107[392] = 0;
  v107[441] = 0;
  v107[490] = 0;
  v107[539] = 0;
  v107[588] = 0;
  v107[637] = 0;
  v107[686] = 0;
  v107[735] = 0;
  v46 = v19[1];
  v47 = (v19[2] - v46) >> 3;
  if (v19[2] == v46)
  {
    v50 = 0;
    v51 = 0;
    if (!v47)
    {
      goto LABEL_57;
    }

    goto LABEL_25;
  }

  v48 = *v46;
  if (*v46)
  {
    v49 = 0;
    goto LABEL_22;
  }

  if (v47 != 1)
  {
    v68 = 1;
    v49 = 64;
    while (1)
    {
      v48 = v46[v68];
      if (v48)
      {
        break;
      }

      ++v68;
      v49 += 64;
      if (v47 == v68)
      {
        goto LABEL_57;
      }
    }

LABEL_22:
    v50 = v49 | __clz(__rbit64(v48));
    v51 = (v48 - 1) & v48;
    if (v47)
    {
LABEL_25:
      v94 = v19[1];
      v52 = v19;
      v53 = v47 - 1;
      v54 = v50;
      if (v25 != v50)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v55 = v54 >> 6;
        if (!v51)
        {
          break;
        }

        v25 = v103;
LABEL_42:
        v65 = __clz(__rbit64(v51)) | (v55 << 6);
        v51 &= v51 - 1;
        v54 = v65;
        if (v25 != v65)
        {
LABEL_28:
          v56 = v109 + 32 * v54;
          v57 = *(v56 + 24);
          v58 = v39[3];
          v59 = v39[1];
          v61 = v57 <= v58 && v59 + v100 <= v99 && v57 + v96 <= v97;
          v102 = v61;
          v62 = *(v56 + 8);
          v64 = v62 <= v59 && v62 + v100 <= v99 && v58 + v96 <= v97;
          v66 = 0;
          v67 = v107;
          do
          {
            if (v54 != v66 && ((*(v52[1] + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              if (v102)
              {
              }

              if (v64)
              {
              }
            }

            ++v66;
            v67 += 49;
          }

          while (v27 != v66);
        }
      }

      v24 = v96;
      v19 = v52;
      v25 = v103;
      while (v53 != v55)
      {
        v51 = *(v94 + 8 * ++v55);
        if (v51)
        {
          goto LABEL_42;
        }
      }
    }
  }

LABEL_57:
  v69 = 0;
  do
  {
    if (v25 != v69 && ((*(v19[1] + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
    {
      v70 = (a12 + 392 * v69);
      v73 = *v70;
      v72 = v70 + 1;
      v71 = v73;
      if (v73)
      {
        v72 = *v72;
      }

      v74 = 24 * (v71 >> 1);
      if (v74)
      {
        v75 = &v107[49 * v69];
        if (v69 >= v103)
        {
          do
          {
            v87 = *(v111 + 8 * v69);
            v88 = v72[1];
            v89 = *v72 + *(v113 + 8 * v69);
            *&v104 = *v72;
            *(&v104 + 1) = v89;
            v105 = v88;
            v106 = v88 + v87;
            if (operations_research::sat::Rectangle::IsDisjoint(&v104, v39))
            {
              v90 = *v75;
              if (*v75)
              {
                v83 = v75[1];
                v84 = v90 >> 1;
                if (v84 == v75[2])
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v83 = v75 + 1;
                v84 = v90 >> 1;
                if (v84 == 16)
                {
LABEL_79:
                }
              }

              v85 = &v83[3 * v84];
              v86 = *v72;
              v85[2] = v72[2];
              *v85 = v86;
              *v75 += 2;
            }

            v72 += 3;
            v74 -= 24;
          }

          while (v74);
        }

        else
        {
          do
          {
            v79 = *(v111 + 8 * v69);
            v80 = v72[1];
            v81 = *v72 + *(v113 + 8 * v69);
            *&v104 = *v72;
            *(&v104 + 1) = v81;
            v105 = v80;
            v106 = v80 + v79;
            if (operations_research::sat::Rectangle::IsDisjoint(&v104, v39))
            {
              v105 = v72[2];
              v104 = *v72;
              LOBYTE(v105) = 1;
              v82 = *v75;
              if (*v75)
              {
                v76 = v75[1];
                v77 = v82 >> 1;
                if (v77 == v75[2])
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v76 = v75 + 1;
                v77 = v82 >> 1;
                if (v77 == 16)
                {
LABEL_72:
                }
              }

              v78 = &v76[3 * v77];
              *v78 = v104;
              v78[2] = v105;
              *v75 += 2;
            }

            v72 += 3;
            v74 -= 24;
          }

          while (v74);
        }
      }

      v25 = v103;
      if (v107[49 * v69] < 2uLL)
      {
        goto LABEL_11;
      }
    }

    ++v69;
  }

  while (v69 != v27);
  {
LABEL_11:
    v16 = v97;
    v32 = v101;
    goto LABEL_12;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t std::array<absl::lts_20240722::InlinedVector<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>>,16ul>::~array(uint64_t a1)
{
  if (*(a1 + 5880))
  {
    operator delete(*(a1 + 5888));
    if ((*(a1 + 5488) & 1) == 0)
    {
LABEL_3:
      if ((*(a1 + 5096) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 5488) & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 5496));
  if ((*(a1 + 5096) & 1) == 0)
  {
LABEL_4:
    if ((*(a1 + 4704) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 5104));
  if ((*(a1 + 4704) & 1) == 0)
  {
LABEL_5:
    if ((*(a1 + 4312) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(a1 + 4712));
  if ((*(a1 + 4312) & 1) == 0)
  {
LABEL_6:
    if ((*(a1 + 3920) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*(a1 + 4320));
  if ((*(a1 + 3920) & 1) == 0)
  {
LABEL_7:
    if ((*(a1 + 3528) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*(a1 + 3928));
  if ((*(a1 + 3528) & 1) == 0)
  {
LABEL_8:
    if ((*(a1 + 3136) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 3536));
  if ((*(a1 + 3136) & 1) == 0)
  {
LABEL_9:
    if ((*(a1 + 2744) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 3144));
  if ((*(a1 + 2744) & 1) == 0)
  {
LABEL_10:
    if ((*(a1 + 2352) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*(a1 + 2752));
  if ((*(a1 + 2352) & 1) == 0)
  {
LABEL_11:
    if ((*(a1 + 1960) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*(a1 + 2360));
  if ((*(a1 + 1960) & 1) == 0)
  {
LABEL_12:
    if ((*(a1 + 1568) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(*(a1 + 1968));
  if ((*(a1 + 1568) & 1) == 0)
  {
LABEL_13:
    if ((*(a1 + 1176) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(*(a1 + 1576));
  if ((*(a1 + 1176) & 1) == 0)
  {
LABEL_14:
    if ((*(a1 + 784) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(*(a1 + 1184));
  if ((*(a1 + 784) & 1) == 0)
  {
LABEL_15:
    if ((*(a1 + 392) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    operator delete(*(a1 + 400));
    if ((*a1 & 1) == 0)
    {
      return a1;
    }

    goto LABEL_33;
  }

LABEL_31:
  operator delete(*(a1 + 792));
  if (*(a1 + 392))
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((*a1 & 1) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(*(a1 + 8));
  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v258 = *MEMORY[0x277D85DE8];
  v8 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = ((a2 - v9) >> 3) * v8;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      goto LABEL_234;
    }

    if (v11 == 2)
    {
      v85 = (a2 - 56);
      v86 = *(a2 - 48) * *(a2 - 56);
      v87 = *(v9 + 8) * *v9;
      if (v87 < v86 || (v86 >= v87 ? (v88 = *(v9 + 16) < *(a2 - 40)) : (v88 = 0), v88))
      {
        v253 = *(v9 + 48);
        v231 = *(v9 + 16);
        v242 = *(v9 + 32);
        v220 = *v9;
        v89 = *v85;
        v90 = *(a2 - 40);
        v91 = *(a2 - 24);
        *(v9 + 48) = *(a2 - 8);
        *(v9 + 16) = v90;
        *(v9 + 32) = v91;
        *v9 = v89;
        *(a2 - 8) = v253;
        *(a2 - 40) = v231;
        *(a2 - 24) = v242;
        *v85 = v220;
      }

      goto LABEL_234;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      v107 = v9 + 56;
      v109 = v9 == a2 || v107 == a2;
      if (a4)
      {
        if (v109)
        {
          goto LABEL_234;
        }

        v110 = 0;
        v111 = v9;
        while (2)
        {
          v113 = v107;
          v114 = *(v111 + 56);
          v115 = *(v111 + 64);
          v116 = v115 * v114;
          v117 = *(v111 + 8) * *v111;
          if (v117 < v115 * v114)
          {
            v118 = *(v111 + 72);
            goto LABEL_157;
          }

          v118 = *(v111 + 72);
          if (v116 >= v117 && *(v111 + 16) < v118)
          {
LABEL_157:
            v246 = *(v111 + 108);
            v224 = *(v111 + 76);
            v235 = *(v111 + 92);
            v120 = *(v111 + 16);
            *v113 = *v111;
            *(v113 + 16) = v120;
            *(v113 + 32) = *(v111 + 32);
            *(v113 + 48) = *(v111 + 48);
            v112 = v9;
            if (v111 != v9)
            {
              v121 = v110;
              while (1)
              {
                v123 = v9 + v121;
                v124 = *(v9 + v121 - 48) * *(v9 + v121 - 56);
                if (v124 >= v116 && (v116 < v124 || *(v123 - 40) >= v118))
                {
                  break;
                }

                v122 = *(v9 + v121 - 40);
                *v123 = *(v9 + v121 - 56);
                *(v123 + 16) = v122;
                *(v123 + 32) = *(v9 + v121 - 24);
                *(v123 + 48) = *(v9 + v121 - 8);
                v121 -= 56;
                if (!v121)
                {
                  v112 = v9;
                  goto LABEL_148;
                }
              }

              v112 = v9 + v121;
            }

LABEL_148:
            *v112 = v114;
            *(v112 + 8) = v115;
            *(v112 + 16) = v118;
            *(v112 + 20) = v224;
            *(v112 + 36) = v235;
            *(v112 + 52) = v246;
          }

          v107 = v113 + 56;
          v110 += 56;
          v111 = v113;
          if (v113 + 56 == a2)
          {
            goto LABEL_234;
          }

          continue;
        }
      }

      if (v109)
      {
        goto LABEL_234;
      }

      while (2)
      {
        v196 = v107;
        v197 = *(a1 + 56);
        v198 = *(a1 + 64);
        v199 = v198 * v197;
        v200 = *(a1 + 8) * *a1;
        if (v200 >= v198 * v197)
        {
          v201 = *(a1 + 72);
          if (v199 >= v200 && *(a1 + 16) < v201)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v201 = *(a1 + 72);
LABEL_243:
          v249 = *(a1 + 108);
          v227 = *(a1 + 76);
          v238 = *(a1 + 92);
          do
          {
            do
            {
              v203 = a1;
              v204 = *(a1 + 16);
              *(a1 + 56) = *a1;
              *(a1 + 72) = v204;
              *(a1 + 88) = *(a1 + 32);
              *(a1 + 104) = *(a1 + 48);
              v205 = *(a1 - 56);
              a1 -= 56;
              v206 = *(v203 - 48) * v205;
            }

            while (v206 < v199);
          }

          while (v199 >= v206 && *(v203 - 40) < v201);
          *v203 = v197;
          *(v203 + 8) = v198;
          *(v203 + 16) = v201;
          *(v203 + 20) = v227;
          *(v203 + 36) = v238;
          *(v203 + 52) = v249;
        }

        v107 = v196 + 56;
        a1 = v196;
        if (v196 + 56 == a2)
        {
          goto LABEL_234;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        goto LABEL_234;
      }

      v126 = (v11 - 2) >> 1;
      v127 = v126;
      do
      {
        v128 = v127;
        v129 = 56 * v127;
        v130 = ((56 * v127) >> 3) * v8;
        if (v126 >= v130)
        {
          v131 = 2 * v130;
          v132 = (2 * v130) | 1;
          v133 = v9 + 56 * v132;
          v134 = v131 + 2;
          if (v134 < v11)
          {
            v135 = *(v133 + 8) * *v133;
            v136 = *(v133 + 64) * *(v133 + 56);
            if (v136 < v135 || (v135 >= v136 ? (v137 = *(v133 + 72) < *(v133 + 16)) : (v137 = 0), v137))
            {
              v133 += 56;
              v132 = v134;
            }
          }

          v138 = v9 + v129;
          v139 = *(v133 + 8) * *v133;
          v140 = *v138;
          v141 = *(v138 + 8);
          v142 = v141 * *v138;
          if (v142 >= v139)
          {
            v143 = *(v138 + 16);
            if (v139 < v142 || v143 >= *(v133 + 16))
            {
              v247 = *(v138 + 52);
              v225 = *(v138 + 20);
              v236 = *(v138 + 36);
              do
              {
                v145 = v138;
                v138 = v133;
                v146 = *v133;
                v147 = *(v133 + 16);
                v148 = *(v133 + 32);
                *(v145 + 48) = *(v133 + 48);
                *(v145 + 16) = v147;
                *(v145 + 32) = v148;
                *v145 = v146;
                if (v126 < v132)
                {
                  break;
                }

                v149 = 2 * v132;
                v132 = (2 * v132) | 1;
                v133 = v9 + 56 * v132;
                v150 = v149 + 2;
                if (v150 < v11)
                {
                  v151 = *(v133 + 8) * *v133;
                  v152 = *(v133 + 64) * *(v133 + 56);
                  if (v152 < v151 || (v151 >= v152 ? (v153 = *(v133 + 72) < *(v133 + 16)) : (v153 = 0), v153))
                  {
                    v133 += 56;
                    v132 = v150;
                  }
                }

                v154 = *(v133 + 8) * *v133;
                if (v142 < v154)
                {
                  break;
                }
              }

              while (v154 < v142 || v143 >= *(v133 + 16));
              *v138 = v140;
              *(v138 + 8) = v141;
              *(v138 + 16) = v143;
              *(v138 + 20) = v225;
              *(v138 + 36) = v236;
              *(v138 + 52) = v247;
            }
          }
        }

        v127 = v128 - 1;
      }

      while (v128);
      v156 = (v10 >> 3) * v8;
      while (2)
      {
        v157 = 0;
        v257 = *(v9 + 48);
        v237 = *(v9 + 16);
        v248 = *(v9 + 32);
        v226 = *v9;
        v158 = v9;
        do
        {
          v162 = v158;
          v163 = v158 + 56 * v157;
          v158 = v163 + 56;
          v164 = 2 * v157;
          v157 = (2 * v157) | 1;
          v165 = v164 + 2;
          if (v165 < v156)
          {
            v166 = v163 + 112;
            v167 = *(v163 + 64) * *(v163 + 56);
            v168 = *(v163 + 120) * *(v163 + 112);
            if (v168 < v167 || ((v169 = *(v163 + 128), v170 = *(v163 + 72), v167 >= v168) ? (v171 = v169 < v170) : (v171 = 0), v171))
            {
              v158 = v166;
              v157 = v165;
            }
          }

          v159 = *v158;
          v160 = *(v158 + 16);
          v161 = *(v158 + 32);
          *(v162 + 48) = *(v158 + 48);
          *(v162 + 16) = v160;
          *(v162 + 32) = v161;
          *v162 = v159;
        }

        while (v157 <= ((v156 - 2) >> 1));
        a2 -= 56;
        if (v158 == a2)
        {
          *(v158 + 48) = v257;
          *(v158 + 16) = v237;
          *(v158 + 32) = v248;
          *v158 = v226;
        }

        else
        {
          v172 = *a2;
          v173 = *(a2 + 16);
          v174 = *(a2 + 32);
          *(v158 + 48) = *(a2 + 48);
          *(v158 + 16) = v173;
          *(v158 + 32) = v174;
          *v158 = v172;
          *(a2 + 48) = v257;
          *(a2 + 16) = v237;
          *(a2 + 32) = v248;
          *a2 = v226;
          v175 = v158 - v9 + 56;
          if (v175 >= 57)
          {
            v176 = (v175 >> 3) * v8 - 2;
            v177 = v176 >> 1;
            v178 = v9 + 56 * (v176 >> 1);
            v179 = *(v178 + 8) * *v178;
            v180 = *v158;
            v181 = *(v158 + 8);
            v182 = v181 * *v158;
            if (v182 < v179)
            {
              v183 = *(v158 + 16);
              goto LABEL_223;
            }

            v183 = *(v158 + 16);
            if (v179 >= v182 && v183 < *(v178 + 16))
            {
LABEL_223:
              v216 = *(v158 + 52);
              v210 = *(v158 + 20);
              v213 = *(v158 + 36);
              v185 = *v178;
              v186 = *(v178 + 16);
              v187 = *(v178 + 32);
              *(v158 + 48) = *(v178 + 48);
              *(v158 + 16) = v186;
              *(v158 + 32) = v187;
              *v158 = v185;
              if (v176 >= 2)
              {
                while (1)
                {
                  v191 = v177 - 1;
                  v177 = (v177 - 1) >> 1;
                  v192 = v9 + 56 * v177;
                  v193 = *(v192 + 8) * *v192;
                  if (v182 >= v193 && (v193 < v182 || v183 >= *(v192 + 16)))
                  {
                    break;
                  }

                  v188 = *v192;
                  v189 = *(v192 + 16);
                  v190 = *(v192 + 32);
                  *(v178 + 48) = *(v192 + 48);
                  *(v178 + 16) = v189;
                  *(v178 + 32) = v190;
                  *v178 = v188;
                  v178 = v9 + 56 * v177;
                  if (v191 <= 1)
                  {
                    goto LABEL_232;
                  }
                }
              }

              v192 = v178;
LABEL_232:
              *v192 = v180;
              *(v192 + 8) = v181;
              *(v192 + 16) = v183;
              *(v192 + 20) = v210;
              *(v192 + 36) = v213;
              *(v192 + 52) = v216;
            }
          }
        }

        v32 = v156-- <= 2;
        if (v32)
        {
          goto LABEL_234;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = v9 + 56 * (v11 >> 1);
    if (v10 < 0x1C01)
    {
      --a3;
      v21 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_30:
      v23 = *(a1 + 8);
      v24 = v23 * v21;
LABEL_31:
      v34 = 0;
      v35 = *(a1 + 16);
      v36 = *(a1 + 20);
      v209 = v36;
      v212 = *(a1 + 36);
      v215 = *(a1 + 52);
      while (1)
      {
        v37 = *(a1 + v34 + 64) * *(a1 + v34 + 56);
        if (v24 >= v37 && (v37 < v24 || v35 >= *(a1 + v34 + 72)))
        {
          break;
        }

        v34 += 56;
      }

      v39 = a1 + v34 + 56;
      v40 = a2 - 56;
      if (v34)
      {
        do
        {
          v41 = v40;
          v42 = *(v40 + 8) * *v40;
          if (v24 < v42)
          {
            break;
          }

          v43 = *(v40 + 16);
          v40 -= 56;
        }

        while (v42 < v24 || v35 >= v43);
LABEL_54:
        v9 = v39;
        if (v39 < v41)
        {
          v49 = v41;
          do
          {
            v251 = *(v9 + 48);
            v229 = *(v9 + 16);
            v240 = *(v9 + 32);
            v218 = *v9;
            v50 = *v49;
            v51 = *(v49 + 16);
            v52 = *(v49 + 32);
            *(v9 + 48) = *(v49 + 48);
            *(v9 + 16) = v51;
            *(v9 + 32) = v52;
            *v9 = v50;
            *(v49 + 48) = v251;
            *(v49 + 16) = v229;
            *(v49 + 32) = v240;
            *v49 = v218;
            do
            {
              do
              {
                v53 = *(v9 + 56);
                v54 = *(v9 + 64);
                v9 += 56;
                v55 = v54 * v53;
              }

              while (v24 < v55);
            }

            while (v55 >= v24 && v35 < *(v9 + 16));
            v57 = v49 - 56;
            do
            {
              v49 = v57;
              v58 = *(v57 + 8) * *v57;
              if (v24 < v58)
              {
                break;
              }

              v59 = *(v57 + 16);
              v57 -= 56;
            }

            while (v58 < v24 || v35 >= v59);
          }

          while (v9 < v49);
        }
      }

      else
      {
        v45 = a2 - 56;
        while (1)
        {
          v41 = v45;
          v46 = v45 + 56;
          if (v39 >= v46)
          {
            break;
          }

          v47 = *(v41 + 8) * *v41;
          if (v24 >= v47)
          {
            v45 = v41 - 56;
            if (v47 < v24 || v35 >= *(v41 + 16))
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v41 = v46;
        v9 = v39;
      }

      if (v9 - 56 != a1)
      {
        v63 = *(v9 - 56);
        v64 = *(v9 - 40);
        v65 = *(v9 - 24);
        *(a1 + 48) = *(v9 - 8);
        *(a1 + 16) = v64;
        *(a1 + 32) = v65;
        *a1 = v63;
      }

      *(v9 - 56) = v21;
      *(v9 - 48) = v23;
      *(v9 - 40) = v35;
      *(v9 - 4) = v215;
      *(v9 - 20) = v212;
      *(v9 - 36) = v209;
      if (v39 < v41)
      {
        goto LABEL_84;
      }

      {
        a2 = v9 - 56;
        if (v66)
        {
          goto LABEL_234;
        }

        goto LABEL_2;
      }

      if ((v66 & 1) == 0)
      {
LABEL_84:
        a4 = 0;
      }
    }

    else
    {
      v14 = v8;
      v15 = 56 * v12;
      v16 = (56 * v12 + a1 - 56);
      v17 = (a1 + 56 + v15);
      v8 = v14;
      v250 = *(a1 + 48);
      v228 = *(a1 + 16);
      v239 = *(a1 + 32);
      v217 = *a1;
      v18 = *v13;
      v19 = *(v13 + 16);
      v20 = *(v13 + 32);
      *(a1 + 48) = *(v13 + 48);
      *(a1 + 16) = v19;
      *(a1 + 32) = v20;
      *a1 = v18;
      *(v13 + 48) = v250;
      *(v13 + 16) = v228;
      *(v13 + 32) = v239;
      *v13 = v217;
      --a3;
      v21 = *a1;
      if (a4)
      {
        goto LABEL_30;
      }

LABEL_14:
      v22 = *(a1 - 48) * *(a1 - 56);
      v23 = *(a1 + 8);
      v24 = v23 * v21;
      if (v23 * v21 < v22)
      {
        goto LABEL_31;
      }

      v25 = *(a1 + 16);
      if (v22 >= v24 && v25 < *(a1 - 40))
      {
        goto LABEL_31;
      }

      v26 = *(a1 + 20);
      v208 = v26;
      v211 = *(a1 + 36);
      v214 = *(a1 + 52);
      v27 = *(a2 - 56);
      v28 = *(a2 - 48);
      if (v28 * v27 >= v24 && (v24 < v28 * v27 || *(a2 - 40) >= v25))
      {
        v81 = (a1 + 56);
        do
        {
          v9 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *v81;
          v83 = *(v9 + 8) * *v9;
          if (v83 < v24)
          {
            break;
          }

          v81 = (v9 + 56);
        }

        while (v24 < v83 || *(v9 + 16) >= v25);
      }

      else
      {
        v29 = a1 + 56;
        do
        {
          v9 = v29;
          v30 = *(v29 + 8) * *v29;
          if (v30 < v24)
          {
            break;
          }

          v31 = *(v29 + 16);
          v29 += 56;
          v32 = v24 >= v30 && v31 < v25;
        }

        while (!v32);
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = a2 - 56; ; i -= 56)
        {
          v61 = v27 * v28;
          if (v61 >= v24 && (v24 < v61 || *(i + 16) >= v25))
          {
            break;
          }

          v27 = *(i - 56);
          v28 = *(i - 48);
        }
      }

      while (v9 < i)
      {
        v252 = *(v9 + 48);
        v230 = *(v9 + 16);
        v241 = *(v9 + 32);
        v219 = *v9;
        v67 = *i;
        v68 = *(i + 16);
        v69 = *(i + 32);
        *(v9 + 48) = *(i + 48);
        *(v9 + 16) = v68;
        *(v9 + 32) = v69;
        *v9 = v67;
        *(i + 48) = v252;
        *(i + 16) = v230;
        *(i + 32) = v241;
        *i = v219;
        v70 = v9 + 56;
        do
        {
          v9 = v70;
          v71 = *(v70 + 8) * *v70;
          if (v71 < v24)
          {
            break;
          }

          v72 = *(v70 + 16);
          v70 += 56;
        }

        while (v24 < v71 || v72 >= v25);
        do
        {
          do
          {
            v74 = *(i - 56);
            v75 = *(i - 48);
            i -= 56;
            v76 = v75 * v74;
          }

          while (v76 < v24);
        }

        while (v24 >= v76 && *(i + 16) < v25);
      }

      if (v9 - 56 != a1)
      {
        v78 = *(v9 - 56);
        v79 = *(v9 - 40);
        v80 = *(v9 - 24);
        *(a1 + 48) = *(v9 - 8);
        *(a1 + 16) = v79;
        *(a1 + 32) = v80;
        *a1 = v78;
      }

      a4 = 0;
      *(v9 - 56) = v21;
      *(v9 - 48) = v23;
      *(v9 - 40) = v25;
      *(v9 - 4) = v214;
      *(v9 - 20) = v211;
      *(v9 - 36) = v208;
    }
  }

  if (v11 == 3)
  {
    v92 = *MEMORY[0x277D85DE8];

    return;
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      v93 = *MEMORY[0x277D85DE8];

      return;
    }

    goto LABEL_10;
  }

  v94 = (a2 - 56);
  v95 = *(a2 - 48) * *(a2 - 56);
  v96 = *(v9 + 120) * *(v9 + 112);
  if (v96 < v95 || (v95 >= v96 ? (v97 = *(v9 + 128) < *(a2 - 40)) : (v97 = 0), v97))
  {
    v254 = *(v9 + 160);
    v232 = *(v9 + 128);
    v243 = *(v9 + 144);
    v221 = *(v9 + 112);
    v98 = *v94;
    v99 = *(a2 - 40);
    v100 = *(a2 - 24);
    *(v9 + 160) = *(a2 - 8);
    *(v9 + 128) = v99;
    *(v9 + 144) = v100;
    *(v9 + 112) = v98;
    *(a2 - 8) = v254;
    *(a2 - 40) = v232;
    *(a2 - 24) = v243;
    *v94 = v221;
    v101 = *(v9 + 120) * *(v9 + 112);
    v102 = *(v9 + 64) * *(v9 + 56);
    if (v102 < v101 || v101 >= v102 && *(v9 + 72) < *(v9 + 128))
    {
      v255 = *(v9 + 104);
      v233 = *(v9 + 72);
      v244 = *(v9 + 88);
      v222 = *(v9 + 56);
      v103 = *(v9 + 128);
      *(v9 + 56) = *(v9 + 112);
      *(v9 + 72) = v103;
      *(v9 + 88) = *(v9 + 144);
      *(v9 + 104) = *(v9 + 160);
      *(v9 + 128) = v233;
      *(v9 + 144) = v244;
      *(v9 + 160) = v255;
      *(v9 + 112) = v222;
      v104 = *(v9 + 64) * *(v9 + 56);
      v105 = *(v9 + 8) * *v9;
      if (v105 < v104 || v104 >= v105 && *(v9 + 16) < *(v9 + 72))
      {
        v256 = *(v9 + 48);
        v234 = *(v9 + 16);
        v245 = *(v9 + 32);
        v223 = *v9;
        v106 = *(v9 + 72);
        *v9 = *(v9 + 56);
        *(v9 + 16) = v106;
        *(v9 + 32) = *(v9 + 88);
        *(v9 + 48) = *(v9 + 104);
        *(v9 + 72) = v234;
        *(v9 + 88) = v245;
        *(v9 + 104) = v256;
        *(v9 + 56) = v223;
      }
    }
  }

LABEL_234:
  v195 = *MEMORY[0x277D85DE8];
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1) * *a2;
  v4 = *(a1 + 1) * *a1;
  if (v4 < v3 || ((v5 = *(a2 + 4), v3 >= v4) ? (v6 = *(a1 + 4) < v5) : (v6 = 0), v6))
  {
    v24 = *(a3 + 1) * *a3;
    if (v3 < v24 || (v24 >= v3 ? (v25 = *(a2 + 4) < *(a3 + 4)) : (v25 = 0), v25))
    {
      v40 = *(a1 + 6);
      v41 = a1[1];
      result = a1[2];
      v42 = *a1;
      v44 = a3[1];
      v43 = a3[2];
      v45 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v44;
      a1[2] = v43;
      *a1 = v45;
      *a3 = v42;
      a3[1] = v41;
      a3[2] = result;
      *(a3 + 6) = v40;
    }

    else
    {
      v26 = *(a1 + 6);
      v27 = a1[1];
      result = a1[2];
      v28 = *a1;
      v30 = a2[1];
      v29 = a2[2];
      v31 = *a2;
      *(a1 + 6) = *(a2 + 6);
      a1[1] = v30;
      a1[2] = v29;
      *a1 = v31;
      *a2 = v28;
      a2[1] = v27;
      a2[2] = result;
      *(a2 + 6) = v26;
      v32 = *(a3 + 1) * *a3;
      v33 = *(a2 + 1) * *a2;
      if (v33 < v32 || v32 >= v33 && *(a2 + 4) < *(a3 + 4))
      {
        v34 = *(a2 + 6);
        v35 = a2[1];
        result = a2[2];
        v36 = *a2;
        v38 = a3[1];
        v37 = a3[2];
        v39 = *a3;
        *(a2 + 6) = *(a3 + 6);
        a2[1] = v38;
        a2[2] = v37;
        *a2 = v39;
        *a3 = v36;
        a3[1] = v35;
        a3[2] = result;
        *(a3 + 6) = v34;
      }
    }
  }

  else
  {
    v7 = *(a3 + 1) * *a3;
    if (v3 < v7 || (v7 >= v3 ? (v8 = v5 < *(a3 + 4)) : (v8 = 0), v8))
    {
      v9 = *(a2 + 6);
      v11 = a2[1];
      result = a2[2];
      v12 = *a2;
      v14 = a3[1];
      v13 = a3[2];
      v15 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v14;
      a2[2] = v13;
      *a2 = v15;
      *a3 = v12;
      a3[1] = v11;
      a3[2] = result;
      *(a3 + 6) = v9;
      v16 = *(a2 + 1) * *a2;
      v17 = *(a1 + 1) * *a1;
      if (v17 < v16 || v16 >= v17 && *(a1 + 4) < *(a2 + 4))
      {
        v18 = *(a1 + 6);
        v19 = a1[1];
        result = a1[2];
        v20 = *a1;
        v22 = a2[1];
        v21 = a2[2];
        v23 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v22;
        a1[2] = v21;
        *a1 = v23;
        *a2 = v20;
        a2[1] = v19;
        a2[2] = result;
        *(a2 + 6) = v18;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v11 = *(a4 + 1) * *a4;
  v12 = *(a3 + 8) * *a3;
  if (v12 < v11 || (v11 >= v12 ? (v13 = *(a3 + 16) < *(a4 + 4)) : (v13 = 0), v13))
  {
    v14 = *(a3 + 48);
    v15 = *(a3 + 16);
    result = *(a3 + 32);
    v16 = *a3;
    v18 = a4[1];
    v17 = a4[2];
    v19 = *a4;
    *(a3 + 48) = *(a4 + 6);
    *(a3 + 16) = v18;
    *(a3 + 32) = v17;
    *a3 = v19;
    *a4 = v16;
    a4[1] = v15;
    a4[2] = result;
    *(a4 + 6) = v14;
    v20 = *(a3 + 8) * *a3;
    v21 = *(a2 + 8) * *a2;
    if (v21 < v20 || v20 >= v21 && *(a2 + 16) < *(a3 + 16))
    {
      v22 = *(a2 + 48);
      v23 = *(a2 + 16);
      result = *(a2 + 32);
      v24 = *a2;
      v26 = *(a3 + 16);
      v25 = *(a3 + 32);
      v27 = *a3;
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 16) = v26;
      *(a2 + 32) = v25;
      *a2 = v27;
      *a3 = v24;
      *(a3 + 16) = v23;
      *(a3 + 32) = result;
      *(a3 + 48) = v22;
      v28 = *(a2 + 8) * *a2;
      v29 = *(a1 + 8) * *a1;
      if (v29 < v28 || v28 >= v29 && *(a1 + 16) < *(a2 + 16))
      {
        v30 = *(a1 + 48);
        v31 = *(a1 + 16);
        result = *(a1 + 32);
        v32 = *a1;
        v34 = *(a2 + 16);
        v33 = *(a2 + 32);
        v35 = *a2;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 16) = v34;
        *(a1 + 32) = v33;
        *a1 = v35;
        *a2 = v32;
        *(a2 + 16) = v31;
        *(a2 + 32) = result;
        *(a2 + 48) = v30;
      }
    }
  }

  v36 = *(a5 + 1) * *a5;
  v37 = *(a4 + 1) * *a4;
  if (v37 < v36 || (v36 >= v37 ? (v38 = *(a4 + 4) < *(a5 + 4)) : (v38 = 0), v38))
  {
    v39 = *(a4 + 6);
    v40 = a4[1];
    result = a4[2];
    v41 = *a4;
    v43 = a5[1];
    v42 = a5[2];
    v44 = *a5;
    *(a4 + 6) = *(a5 + 6);
    a4[1] = v43;
    a4[2] = v42;
    *a4 = v44;
    *a5 = v41;
    a5[1] = v40;
    a5[2] = result;
    *(a5 + 6) = v39;
    v45 = *(a4 + 1) * *a4;
    v46 = *(a3 + 8) * *a3;
    if (v46 < v45 || v45 >= v46 && *(a3 + 16) < *(a4 + 4))
    {
      v47 = *(a3 + 48);
      v48 = *(a3 + 16);
      result = *(a3 + 32);
      v49 = *a3;
      v51 = a4[1];
      v50 = a4[2];
      v52 = *a4;
      *(a3 + 48) = *(a4 + 6);
      *(a3 + 16) = v51;
      *(a3 + 32) = v50;
      *a3 = v52;
      *a4 = v49;
      a4[1] = v48;
      a4[2] = result;
      *(a4 + 6) = v47;
      v53 = *(a3 + 8) * *a3;
      v54 = *(a2 + 8) * *a2;
      if (v54 < v53 || v53 >= v54 && *(a2 + 16) < *(a3 + 16))
      {
        v55 = *(a2 + 48);
        v56 = *(a2 + 16);
        result = *(a2 + 32);
        v57 = *a2;
        v59 = *(a3 + 16);
        v58 = *(a3 + 32);
        v60 = *a3;
        *(a2 + 48) = *(a3 + 48);
        *(a2 + 16) = v59;
        *(a2 + 32) = v58;
        *a2 = v60;
        *a3 = v57;
        *(a3 + 16) = v56;
        *(a3 + 32) = result;
        *(a3 + 48) = v55;
        v61 = *(a2 + 8) * *a2;
        v62 = *(a1 + 8) * *a1;
        if (v62 < v61 || v61 >= v62 && *(a1 + 16) < *(a2 + 16))
        {
          v63 = *(a1 + 48);
          v64 = *(a1 + 16);
          result = *(a1 + 32);
          v65 = *a1;
          v67 = *(a2 + 16);
          v66 = *(a2 + 32);
          v68 = *a2;
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 16) = v67;
          *(a1 + 32) = v66;
          *a1 = v68;
          *a2 = v65;
          *(a2 + 16) = v64;
          *(a2 + 32) = result;
          *(a2 + 48) = v63;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingNoPreprocessing(absl::lts_20240722::Span<operations_research::sat::PermutableItem>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>)::$_0 &,operations_research::sat::PermutableItem*>(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 1;
        goto LABEL_54;
      case 4:
        v36 = (a2 - 56);
        v37 = *(a2 - 48) * *(a2 - 56);
        v38 = *(a1 + 120) * *(a1 + 112);
        if (v38 < v37 || (v37 >= v38 ? (v39 = *(a1 + 128) < *(a2 - 40)) : (v39 = 0), v39))
        {
          v40 = *(a1 + 160);
          v42 = *(a1 + 128);
          v41 = *(a1 + 144);
          v43 = *(a1 + 112);
          v45 = *(a2 - 40);
          v44 = *(a2 - 24);
          v46 = *v36;
          *(a1 + 160) = *(a2 - 8);
          *(a1 + 128) = v45;
          *(a1 + 144) = v44;
          *(a1 + 112) = v46;
          *v36 = v43;
          *(a2 - 40) = v42;
          *(a2 - 24) = v41;
          *(a2 - 8) = v40;
          v47 = *(a1 + 120) * *(a1 + 112);
          v48 = *(a1 + 64) * *(a1 + 56);
          if (v48 < v47 || (v3 = 1, v47 >= v48) && *(a1 + 72) < *(a1 + 128))
          {
            v49 = *(a1 + 104);
            v50 = *(a1 + 88);
            v51 = *(a1 + 56);
            v52 = *(a1 + 128);
            *(a1 + 56) = *(a1 + 112);
            v53 = *(a1 + 72);
            *(a1 + 72) = v52;
            *(a1 + 88) = *(a1 + 144);
            *(a1 + 104) = *(a1 + 160);
            *(a1 + 112) = v51;
            *(a1 + 128) = v53;
            *(a1 + 144) = v50;
            *(a1 + 160) = v49;
            v54 = *(a1 + 64) * *(a1 + 56);
            v55 = *(a1 + 8) * *a1;
            if (v55 < v54 || (v3 = 1, v54 >= v55) && *(a1 + 16) < *(a1 + 72))
            {
              v56 = *(a1 + 48);
              v58 = *(a1 + 16);
              v57 = *(a1 + 32);
              v59 = *a1;
              v60 = *(a1 + 72);
              *a1 = *(a1 + 56);
              *(a1 + 16) = v60;
              *(a1 + 32) = *(a1 + 88);
              *(a1 + 48) = *(a1 + 104);
              *(a1 + 56) = v59;
              *(a1 + 72) = v58;
              *(a1 + 88) = v57;
              v3 = 1;
              *(a1 + 104) = v56;
            }
          }

          goto LABEL_54;
        }

LABEL_3:
        v3 = 1;
        goto LABEL_54;
      case 5:
        v3 = 1;
        goto LABEL_54;
    }
  }

  else
  {
    if (v2 < 2)
    {
      goto LABEL_3;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 56);
      v5 = *(a2 - 48) * *(a2 - 56);
      v6 = *(a1 + 8) * *a1;
      if (v6 < v5 || (v5 >= v6 ? (v7 = *(a1 + 16) < *(a2 - 40)) : (v7 = 0), v7))
      {
        v8 = *(a1 + 48);
        v10 = *(a1 + 16);
        v9 = *(a1 + 32);
        v11 = *a1;
        v13 = *(a2 - 40);
        v12 = *(a2 - 24);
        v14 = *v4;
        *(a1 + 48) = *(a2 - 8);
        *(a1 + 16) = v13;
        *(a1 + 32) = v12;
        *a1 = v14;
        *v4 = v11;
        *(a2 - 40) = v10;
        *(a2 - 24) = v9;
        v3 = 1;
        *(a2 - 8) = v8;
        goto LABEL_54;
      }

      goto LABEL_3;
    }
  }

  v15 = a1 + 112;
  v19 = a1 + 168;
  if (a1 + 168 == a2)
  {
LABEL_51:
    v61 = 1;
    goto LABEL_53;
  }

  v18 = a2;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    v23 = *v19;
    v24 = *(v19 + 8);
    v25 = v24 * *v19;
    v26 = *(v15 + 8) * *v15;
    if (v26 < v25)
    {
      break;
    }

    v27 = *(v19 + 16);
    if (v25 >= v26 && *(v15 + 16) < v27)
    {
      goto LABEL_29;
    }

LABEL_21:
    v15 = v19;
    v20 += 56;
    v19 += 56;
    if (v19 == a2)
    {
      goto LABEL_51;
    }
  }

  v27 = *(v19 + 16);
LABEL_29:
  v66 = *(v19 + 52);
  v64 = *(v19 + 20);
  v65 = *(v19 + 36);
  v29 = *(v15 + 16);
  *v19 = *v15;
  *(v19 + 16) = v29;
  *(v19 + 32) = *(v15 + 32);
  *(v19 + 48) = *(v15 + 48);
  v22 = a1;
  if (v15 != a1)
  {
    v30 = v20;
    while (1)
    {
      v32 = *(a1 + v30 + 64) * *(a1 + v30 + 56);
      if (v32 >= v25 && (v25 < v32 || *(a1 + v30 + 72) >= v27))
      {
        break;
      }

      v31 = *(a1 + v30 + 72);
      *(a1 + v30 + 112) = *(a1 + v30 + 56);
      *(a1 + v30 + 128) = v31;
      *(a1 + v30 + 144) = *(a1 + v30 + 88);
      *(a1 + v30 + 160) = *(a1 + v30 + 104);
      v30 -= 56;
      if (v30 == -112)
      {
        v22 = a1;
        goto LABEL_20;
      }
    }

    v22 = a1 + v30 + 112;
  }

LABEL_20:
  *v22 = v23;
  *(v22 + 8) = v24;
  *(v22 + 16) = v27;
  *(v22 + 20) = v64;
  *(v22 + 36) = v65;
  *(v22 + 52) = v66;
  if (++v21 != 8)
  {
    goto LABEL_21;
  }

  v61 = 0;
  v18 = v19 + 56 == a2;
LABEL_53:
  v3 = v61 | v18;
LABEL_54:
  v62 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>>::EmplaceBackSlow<operations_research::sat::anonymous namespace::PotentialPositionForItem>(void *a1)
{
  if (*a1)
  {
    if ((2 * a1[2]) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v1 = a1[1];
  }

  operator new();
}

double operations_research::sat::anonymous namespace::BruteForceOrthogonalPackingImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::Rectangle>,operations_research::Bitset64<int> &,absl::lts_20240722::Span<absl::lts_20240722::InlinedVector<operations_research::sat::anonymous namespace::PotentialPositionForItem,16ul,std::allocator<operations_research::sat::anonymous namespace::PotentialPositionForItem>> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0::operator()(uint64_t **a1, unint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a1[3] + 8 * a3);
  v6 = *(*a1[4] + 8 * a3);
  v7 = v5 + a4;
  v8 = (v6 + a5);
  v10 = a1[1];
  v9 = a1[2];
  if (v5 + a4 > v10 || v8 > v9)
  {
    return result;
  }

  v12 = **a1;
  v13 = a1[5];
  v14 = v13[1];
  v15 = v13[2];
  if (!a3 && (v10 - v5 < 2 * a4 || v9 - v6 < 2 * a5))
  {
    return result;
  }

  v16 = a4 == 0;
  v17 = a5 == 0;
  v18 = v15 - v14;
  v19 = v18 >> 3;
  if (!v18)
  {
    v22 = 0;
    if (v19)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v20 = *v14;
  if (*v14)
  {
    v21 = 0;
    goto LABEL_10;
  }

  if (v19 == 1)
  {
LABEL_40:
    if (v16 & 1) != 0 && (v17)
    {
      *&v34 = a4;
      *(&v34 + 1) = a5;
      LOBYTE(v35) = 0;
      v28 = *a2;
      v29 = 16;
      if (*a2)
      {
        v29 = a2[2];
      }

      v30 = v28 >> 1;
      if (v28 >> 1 == v29)
      {
      }

      if (v28)
      {
        v31 = a2[1];
      }

      else
      {
        v31 = a2 + 1;
      }

      v32 = &v31[3 * v30];
      result = *&v34;
      *v32 = v34;
      v32[2] = v35;
      *a2 += 2;
    }

    return result;
  }

  v27 = 1;
  v21 = 64;
  while (1)
  {
    v20 = v14[v27];
    if (v20)
    {
      break;
    }

    ++v27;
    v21 += 64;
    if (v19 == v27)
    {
      goto LABEL_40;
    }
  }

LABEL_10:
  v22 = v21 | __clz(__rbit64(v20));
  v18 = (v20 - 1) & v20;
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_16:
  v23 = v19 - 1;
  while (1)
  {
    v24 = (v12 + 32 * v22);
    v25 = v24[1];
    if (v25 > a4 && *v24 < v7 && v24[3] > a5 && v24[2] < v8)
    {
      return result;
    }

    if (v25 == a4 && v24[3] > a5 && v24[2] < v8)
    {
      v16 |= 1u;
      v26 = v22 >> 6;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else if (v25 > a4 && *v24 < v7 && v24[3] == a5)
    {
      v17 |= 1u;
      v26 = v22 >> 6;
      if (!v18)
      {
LABEL_33:
        while (v23 != v26)
        {
          v18 = v14[++v26];
          if (v18)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v26 = v22 >> 6;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

LABEL_17:
    v22 = __clz(__rbit64(v18)) | (v26 << 6);
    v18 &= v18 - 1;
  }
}

void *operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(void *result, uint64_t a2)
{
  *result = off_284F391C0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  result[4] = a2;
  result[5] = 0;
  result[6] = a2;
  result[7] = &google::protobuf::internal::fixed_address_empty_string;
  result[8] = 0;
  result[9] = 0;
  return result;
}

uint64_t operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F391C0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v8 = *(a3 + 24);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 24, 0, *(a3 + 24));
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v23 = *(a1 + 48);
      v24 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_19;
      }

      v25 = v21;
      v26 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 2);
      v30 = v23 + 2;
      v31 = v26;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_19:
        v33 = v21 + 1;
        do
        {
          v34 = *v24++;
          *v23++ = v34;
          --v33;
        }

        while (v33 > 1);
      }
    }
  }

  v35 = *(a3 + 56);
  if ((v35 & 3) != 0)
  {
    v35 = google::protobuf::internal::TaggedStringPtr::ForceCopy((a3 + 56), a2);
  }

  *(a1 + 56) = v35;
  *(a1 + 64) = *(a3 + 64);
  return a1;
}

void sub_23C98A344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 44) >= 1)
  {
    v3 = *(v1 + 48);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v6 = *(v1 + 32);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearBooleanConstraint::~LinearBooleanConstraint(operations_research::sat::LinearBooleanConstraint *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 7);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearBooleanConstraint::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = (v4 + v3);
    if (*(this + 7) < v5)
    {
      v41 = this;
      v42 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 3, v4, v5);
      a2 = v42;
      this = v41;
      LODWORD(v4) = *(v41 + 6);
      v6 = v41[4];
      *(v41 + 6) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[4];
      *(this + 6) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 4);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  if (*(this + 11) < v20 + v19)
  {
    v43 = this;
    v44 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v44;
    this = v43;
    LODWORD(v20) = *(v43 + 10);
    v21 = v43[6];
    *(v43 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = this[6];
    *(this + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a2 + 6);
  v23 = (v21 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v24 = 8 * v20 + v21;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_19;
  }

  v25 = v19;
  v26 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v23 += v26;
  v27 = &v22[v26];
  v28 = (v22 + 2);
  v29 = (v24 + 16);
  v30 = v26;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  v22 = v27;
  if (v26 != v25)
  {
LABEL_19:
    v32 = v19 + 1;
    do
    {
      v33 = *v22++;
      *v23++ = v33;
      --v32;
    }

    while (v32 > 1);
  }

LABEL_21:
  v34 = *(a2 + 4);
  if ((v34 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v34)
  {
    v37 = *(a2 + 7);
    *(this + 4) |= 1u;
    v38 = this[1];
    v39 = a2;
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = this;
    google::protobuf::internal::ArenaStringPtr::Set<>(this + 7, (v37 & 0xFFFFFFFFFFFFFFFCLL), v38);
    this = v40;
    a2 = v39;
    if ((v34 & 2) == 0)
    {
LABEL_24:
      if ((v34 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_24;
  }

  this[8] = *(a2 + 8);
  if ((v34 & 4) != 0)
  {
LABEL_25:
    this[9] = *(a2 + 9);
  }

LABEL_26:
  *(this + 4) |= v34;
  v35 = *(a2 + 1);
  if (v35)
  {
    v36 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanConstraint::Clear(operations_research::sat::LinearBooleanConstraint *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 6) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 6) != 0)
  {
LABEL_5:
    *(this + 8) = 0;
    *(this + 9) = 0;
  }

LABEL_6:
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanConstraint::_InternalSerialize(operations_research::sat::LinearBooleanConstraint *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v8 = *(*(this + 4) + 4 * i);
        *v11 = 8;
        v9 = v11 + 1;
        if (v8 >= 0x80)
        {
          do
          {
LABEL_9:
            *v9++ = v8 | 0x80;
            v10 = v8 >> 7;
            v12 = v8 >> 14;
            v8 >>= 7;
          }

          while (v12);
          goto LABEL_6;
        }
      }

      else
      {
        v8 = *(*(this + 4) + 4 * i);
        *a2 = 8;
        v9 = a2 + 1;
        if (v8 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v10) = v8;
LABEL_6:
      *v9 = v10;
      a2 = (v9 + 1);
    }
  }

  v13 = *(this + 10);
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        v18 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v15 = *(*(this + 6) + 8 * j);
        *v18 = 16;
        v16 = v18 + 1;
        if (v15 >= 0x80)
        {
          do
          {
LABEL_19:
            *v16++ = v15 | 0x80;
            v17 = v15 >> 7;
            v19 = v15 >> 14;
            v15 >>= 7;
          }

          while (v19);
          goto LABEL_16;
        }
      }

      else
      {
        v15 = *(*(this + 6) + 8 * j);
        *a2 = 16;
        v16 = a2 + 1;
        if (v15 >= 0x80)
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v17) = v15;
LABEL_16:
      *v16 = v17;
      a2 = (v16 + 1);
    }
  }

  v20 = *(this + 4);
  if ((v20 & 2) != 0)
  {
    a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(a3, *(this + 8), a2);
    if ((v20 & 4) == 0)
    {
LABEL_23:
      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v23 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = *(v23 + 8), v24 > 127) || *a3 - a2 + 14 < v24)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 5, v23, a2);
        v21 = *(this + 1);
        if ((v21 & 1) == 0)
        {
          return a2;
        }
      }

      else
      {
        *a2 = 42;
        v25 = a2 + 2;
        *(a2 + 1) = v24;
        if (*(v23 + 23) >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = *v23;
        }

        memcpy(a2 + 2, v26, v24);
        a2 = &v25[v24];
        v21 = *(this + 1);
        if ((v21 & 1) == 0)
        {
          return a2;
        }
      }

      goto LABEL_35;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_23;
  }

  a2 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<4>(a3, *(this + 9), a2);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_24:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

LABEL_35:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 24;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 24;
    v3 = a3 + 1;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v4) = a2;
      goto LABEL_4;
    }
  }

  do
  {
    *v3++ = a2 | 0x80;
    v4 = a2 >> 7;
    v8 = a2 >> 14;
    a2 >>= 7;
  }

  while (v8);
LABEL_4:
  *v3 = v4;
  return v3 + 1;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<4>(google::protobuf::io::EpsCopyOutputStream *a1, unint64_t a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v6 = a2;
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    a2 = v6;
    *v7 = 32;
    v3 = v7 + 1;
    if (v6 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 32;
    v3 = a3 + 1;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v4) = a2;
      goto LABEL_4;
    }
  }

  do
  {
    *v3++ = a2 | 0x80;
    v4 = a2 >> 7;
    v8 = a2 >> 14;
    a2 >>= 7;
  }

  while (v8);
LABEL_4:
  *v3 = v4;
  return v3 + 1;
}

char *operations_research::sat::LinearBooleanConstraint::ByteSizeLong(operations_research::sat::LinearBooleanConstraint *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  v3 = *(this + 6);
  v4 = (v2 + google::protobuf::internal::WireFormatLite::Int64Size(this + 10) + v3 + *(this + 10));
  v5 = *(this + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v7 = *(this + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v4 = (v4 + v9 + ((352 - 9 * __clz(v9)) >> 6) + 1);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    v4 = (v4 + ((704 - 9 * __clz(*(this + 8))) >> 6));
    if ((v5 & 4) != 0)
    {
LABEL_5:
      v4 = (v4 + ((704 - 9 * __clz(*(this + 9))) >> 6));
    }
  }

LABEL_6:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v4, this + 5);
}

uint64_t operations_research::sat::LinearObjective::LinearObjective(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39158;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = *(a3 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v8 = *(a3 + 24);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 24, 0, *(a3 + 24));
    *(a1 + 24) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v23 = *(a1 + 48);
      v24 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_19;
      }

      v25 = v21;
      v26 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 2);
      v30 = v23 + 2;
      v31 = v26;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_19:
        v33 = v21 + 1;
        do
        {
          v34 = *v24++;
          *v23++ = v34;
          --v33;
        }

        while (v33 > 1);
      }
    }
  }

  *(a1 + 56) = *(a3 + 56);
  return a1;
}

void sub_23C98AE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearObjective::~LinearObjective(operations_research::sat::LinearObjective *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearObjective::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = (v4 + v3);
    if (*(this + 7) < v5)
    {
      v37 = this;
      v38 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 3, v4, v5);
      a2 = v38;
      this = v37;
      LODWORD(v4) = *(v37 + 6);
      v6 = v37[4];
      *(v37 + 6) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[4];
      *(this + 6) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 4);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  if (*(this + 11) < v20 + v19)
  {
    v39 = this;
    v40 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v40;
    this = v39;
    LODWORD(v20) = *(v39 + 10);
    v21 = v39[6];
    *(v39 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = this[6];
    *(this + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a2 + 6);
  v23 = (v21 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v24 = 8 * v20 + v21;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_19;
  }

  v25 = v19;
  v26 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v23 += v26;
  v27 = &v22[v26];
  v28 = (v22 + 2);
  v29 = (v24 + 16);
  v30 = v26;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  v22 = v27;
  if (v26 != v25)
  {
LABEL_19:
    v32 = v19 + 1;
    do
    {
      v33 = *v22++;
      *v23++ = v33;
      --v32;
    }

    while (v32 > 1);
  }

LABEL_21:
  v34 = *(a2 + 4);
  if ((v34 & 3) != 0)
  {
    if (v34)
    {
      this[7] = *(a2 + 7);
    }

    if ((v34 & 2) != 0)
    {
      this[8] = *(a2 + 8);
    }
  }

  *(this + 4) |= v34;
  v35 = *(a2 + 1);
  if (v35)
  {
    v36 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearObjective::Clear(operations_research::sat::LinearObjective *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 56) = xmmword_23CE35A10;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearObjective::_InternalSerialize(operations_research::sat::LinearObjective *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*a3 <= a2)
      {
        v9 = this;
        v10 = a3;
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v10;
        v12 = v11;
        this = v9;
        v6 = *(*(v9 + 4) + 4 * i);
        *v12 = 8;
        v7 = v12 + 1;
        if (v6 >= 0x80)
        {
          do
          {
LABEL_9:
            *v7++ = v6 | 0x80;
            v8 = v6 >> 7;
            v13 = v6 >> 14;
            v6 >>= 7;
          }

          while (v13);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(*(this + 4) + 4 * i);
        *a2 = 8;
        v7 = a2 + 1;
        if (v6 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v8) = v6;
LABEL_6:
      *v7 = v8;
      a2 = v7 + 1;
    }
  }

  v14 = *(this + 10);
  if (v14 >= 1)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        v19 = this;
        v20 = a3;
        v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v20;
        v22 = v21;
        this = v19;
        v16 = *(*(v19 + 6) + 8 * j);
        *v22 = 16;
        v17 = v22 + 1;
        if (v16 >= 0x80)
        {
          do
          {
LABEL_19:
            *v17++ = v16 | 0x80;
            v18 = v16 >> 7;
            v23 = v16 >> 14;
            v16 >>= 7;
          }

          while (v23);
          goto LABEL_16;
        }
      }

      else
      {
        v16 = *(*(this + 6) + 8 * j);
        *a2 = 16;
        v17 = a2 + 1;
        if (v16 >= 0x80)
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v18) = v16;
LABEL_16:
      *v17 = v18;
      a2 = v17 + 1;
    }
  }

  v24 = *(this + 4);
  if ((v24 & 1) == 0)
  {
    if ((v24 & 2) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (*a3 <= a2)
    {
      v32 = this;
      v33 = a3;
      v34 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v33;
      a2 = v34;
      this = v32;
    }

    v28 = *(this + 8);
    *a2 = 33;
    *(a2 + 1) = v28;
    a2 += 9;
    v25 = *(this + 1);
    if ((v25 & 1) == 0)
    {
      return a2;
    }

    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    v29 = this;
    v30 = a3;
    v31 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    a3 = v30;
    a2 = v31;
    this = v29;
  }

  v27 = *(this + 7);
  *a2 = 25;
  *(a2 + 1) = v27;
  a2 += 9;
  if ((v24 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

LABEL_31:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::LinearObjective::ByteSizeLong(operations_research::sat::LinearObjective *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  v3 = *(this + 6);
  v4 = google::protobuf::internal::WireFormatLite::Int64Size(this + 10);
  v5 = *(this + 4);
  v6 = v2 + v4 + v3 + *(this + 10) + 9;
  if ((v5 & 1) == 0)
  {
    v6 = v2 + v4 + v3 + *(this + 10);
  }

  if ((v5 & 2) != 0)
  {
    v6 += 9;
  }

  if ((v5 & 3) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (v2 + v4 + v3 + *(this + 10));
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v7, this + 5);
}

void operations_research::sat::BooleanAssignment::~BooleanAssignment(operations_research::sat::BooleanAssignment *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::BooleanAssignment::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::BooleanAssignment::Clear(operations_research::sat::BooleanAssignment *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::BooleanAssignment::_InternalSerialize(operations_research::sat::BooleanAssignment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*a3 <= a2)
      {
        v9 = this;
        v10 = a3;
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        a3 = v10;
        v12 = v11;
        this = v9;
        v6 = *(*(v9 + 3) + 4 * i);
        *v12 = 8;
        v7 = v12 + 1;
        if (v6 >= 0x80)
        {
          do
          {
LABEL_9:
            *v7++ = v6 | 0x80;
            v8 = v6 >> 7;
            v13 = v6 >> 14;
            v6 >>= 7;
          }

          while (v13);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(*(this + 3) + 4 * i);
        *a2 = 8;
        v7 = a2 + 1;
        if (v6 >= 0x80)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v8) = v6;
LABEL_6:
      *v7 = v8;
      a2 = v7 + 1;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::BooleanAssignment::ByteSizeLong(operations_research::sat::BooleanAssignment *this)
{
  v2 = (google::protobuf::internal::WireFormatLite::Int32Size(this + 4) + *(this + 4));

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v2, this + 8);
}

void operations_research::sat::LinearBooleanProblem::SharedDtor(operations_research::sat::LinearBooleanProblem *this)
{
  google::protobuf::internal::ArenaStringPtr::Destroy(this + 9);
  v2 = *(this + 10);
  if (v2)
  {
    if (*(v2 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v2 + 8));
    }

    if (*(v2 + 44) >= 1)
    {
      v3 = *(v2 + 48);
      v5 = *(v3 - 8);
      v4 = (v3 - 8);
      if (!v5)
      {
        operator delete(v4);
      }
    }

    if (*(v2 + 28) >= 1)
    {
      v6 = *(v2 + 32);
      v8 = *(v6 - 8);
      v7 = (v6 - 8);
      if (!v8)
      {
        operator delete(v7);
      }
    }

    MEMORY[0x23EED9460](v2, 0x1081C4051377B33);
  }

  v9 = *(this + 11);
  if (v9)
  {
    if (*(v9 + 8))
    {
      google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>((v9 + 8));
    }

    operations_research::sat::LinearBooleanProblem::SharedDtor(v9);
    v11 = (this + 48);
    v10 = *(this + 6);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = (this + 48);
    v10 = *(this + 6);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  if (*(this + 8))
  {
    goto LABEL_27;
  }

  if (v10)
  {
    v15 = *(v10 - 1);
    v14 = (v10 - 1);
    v12 = v15;
    if (v15 < 1)
    {
LABEL_26:
      operator delete(v14);
      goto LABEL_27;
    }

    v13 = v14 + 1;
  }

  else
  {
    v12 = 1;
    v13 = v11;
  }

  v16 = v12;
  do
  {
    v17 = *v13;
    if (*v13)
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      MEMORY[0x23EED9460](v17, 0x1012C40EC159624);
    }

    ++v13;
    --v16;
  }

  while (v16);
  if (*v11)
  {
    v14 = (*v11 - 1);
    goto LABEL_26;
  }

LABEL_27:
  v19 = *(this + 3);
  v18 = (this + 24);
  if (v19)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(v18);
  }
}

void operations_research::sat::LinearBooleanProblem::~LinearBooleanProblem(operations_research::sat::LinearBooleanProblem *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearBooleanProblem::SharedDtor(this);
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  operations_research::sat::LinearBooleanProblem::SharedDtor(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearBooleanProblem::MergeImpl(operations_research::sat::LinearBooleanProblem *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v5 = (this + 8);
  v6 = *(this + 1);
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  if (*(a2 + 8))
  {
LABEL_3:
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(this + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearBooleanConstraint>);
  }

LABEL_4:
  if (*(a2 + 14))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(this + 48, a2 + 48);
  }

  v7 = *(a2 + 4);
  if ((v7 & 0x1F) != 0)
  {
    if ((v7 & 1) == 0)
    {
      if ((v7 & 2) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v10 = *(this + 10);
      v11 = *(a2 + 10);
      if (v10)
      {
        operations_research::sat::LinearObjective::MergeImpl(v10, v11, a3);
        if ((v7 & 4) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *(this + 10) = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearObjective>(v6, v11);
        if ((v7 & 4) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_17:
      v12 = *(this + 11);
      v13 = *(a2 + 11);
      if (!v12)
      {
        *(this + 11) = google::protobuf::Arena::CopyConstruct<operations_research::sat::BooleanAssignment>(v6, v13);
        if ((v7 & 8) == 0)
        {
LABEL_32:
          if ((v7 & 0x10) != 0)
          {
            *(this + 25) = *(a2 + 25);
          }

          goto LABEL_34;
        }

LABEL_31:
        *(this + 24) = *(a2 + 24);
        goto LABEL_32;
      }

      v14 = *(v13 + 16);
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = *(v12 + 16);
      v16 = (v15 + v14);
      if (*(v12 + 20) < v16)
      {
        v32 = *(this + 11);
        v33 = *(a2 + 11);
        google::protobuf::RepeatedField<int>::Grow(v12 + 16, v15, v16);
        v12 = v32;
        v13 = v33;
        LODWORD(v15) = *(v32 + 16);
        v17 = *(v32 + 24);
        *(v32 + 16) = v15 + v14;
        if (v14 >= 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = *(v12 + 24);
        *(v12 + 16) = v16;
        if (v14 >= 1)
        {
LABEL_21:
          v18 = *(v13 + 24);
          v19 = (v17 + 4 * v15);
          if (v14 < 8)
          {
            goto LABEL_26;
          }

          v20 = 4 * v15 + v17;
          if ((v20 - v18) < 0x20)
          {
            goto LABEL_26;
          }

          v21 = v14;
          v22 = v14 & 0x7FFFFFF8;
          LODWORD(v14) = v14 - (v14 & 0x7FFFFFF8);
          v19 += v22;
          v23 = &v18[v22];
          v24 = (v18 + 4);
          v25 = (v20 + 16);
          v26 = v22;
          do
          {
            v27 = *v24;
            *(v25 - 1) = *(v24 - 1);
            *v25 = v27;
            v24 += 2;
            v25 += 2;
            v26 -= 8;
          }

          while (v26);
          v18 = v23;
          if (v22 != v21)
          {
LABEL_26:
            v28 = v14 + 1;
            do
            {
              v29 = *v18++;
              *v19++ = v29;
              --v28;
            }

            while (v28 > 1);
          }
        }
      }

LABEL_28:
      v30 = *(v13 + 8);
      if (v30)
      {
        google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v12 + 8), ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8));
      }

LABEL_30:
      if ((v7 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v8 = *(a2 + 9);
    *(this + 4) |= 1u;
    v9 = *(this + 1);
    if (v9)
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 9, (v8 & 0xFFFFFFFFFFFFFFFCLL), *(v9 & 0xFFFFFFFFFFFFFFFELL));
      if ((v7 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      google::protobuf::internal::ArenaStringPtr::Set<>(this + 9, (v8 & 0xFFFFFFFFFFFFFFFCLL), v9);
      if ((v7 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_9:
    if ((v7 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

LABEL_34:
  *(this + 4) |= v7;
  v31 = *(a2 + 1);
  if (v31)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v5, ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanProblem::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 8) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this + 6);
  }

  if (*(v1 + 56) >= 1)
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(v1 + 48);
  }

  v2 = *(v1 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v5 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  this = operations_research::sat::LinearObjective::Clear(*(v1 + 80));
  if ((v2 & 4) != 0)
  {
LABEL_9:
    this = operations_research::sat::BooleanAssignment::Clear(*(v1 + 88));
  }

LABEL_10:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 96) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearBooleanProblem::_InternalSerialize(operations_research::sat::LinearBooleanProblem *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, uint64_t a4, uint64_t a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a2;
  v9 = *(this + 4);
  if (v9)
  {
    v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *(v11 + 23);
    if (v12 < 0 && (v12 = *(v11 + 8), v12 > 127) || *a3 - a2 + 14 < v12)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v11, a2);
      if ((v9 & 8) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a2 = 10;
      v13 = a2 + 2;
      *(a2 + 1) = v12;
      if (*(v11 + 23) >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = *v11;
      }

      memcpy(v7 + 2, v14, v12);
      v7 = &v13[v12];
      if ((v9 & 8) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v10 = *(this + 8);
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((v9 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<3>(a3, *(this + 24), v7);
  v10 = *(this + 8);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = 0;
  v16 = (this + 24);
  do
  {
    if (*v16)
    {
      v17 = (*v16 + 8 * v15 + 7);
    }

    else
    {
      v17 = (this + 24);
    }

    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(4, *v17, *(*v17 + 20), v7, a3, a6);
    ++v15;
  }

  while (v10 != v15);
LABEL_18:
  if ((v9 & 2) != 0)
  {
    v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(5, *(this + 10), *(*(this + 10) + 20), v7, a3, a6);
  }

  v18 = *(this + 14);
  if (v18 >= 1)
  {
    v19 = (this + 48);
    v20 = 8;
    do
    {
      while (1)
      {
        v21 = (*v19 & 1) != 0 ? (*v19 + v20 - 1) : (this + 48);
        v22 = *v21;
        v23 = *(*v21 + 23);
        if ((v23 & 0x8000000000000000) == 0 || (v23 = v22[1], v23 <= 127))
        {
          if (*a3 - v7 + 14 >= v23)
          {
            break;
          }
        }

        v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 6, v22, v7);
        v20 += 8;
        if (!--v18)
        {
          goto LABEL_33;
        }
      }

      *v7 = 50;
      v7[1] = v23;
      if (*(v22 + 23) < 0)
      {
        v22 = *v22;
      }

      v24 = v7 + 2;
      memcpy(v7 + 2, v22, v23);
      v7 = &v24[v23];
      v20 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_33:
  if ((v9 & 4) == 0)
  {
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v7 = google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<8>(a3, *(this + 25), v7);
    v25 = *(this + 1);
    if ((v25 & 1) == 0)
    {
      return v7;
    }

    goto LABEL_39;
  }

  v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(7, *(this + 11), *(*(this + 11) + 32), v7, a3, a6);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v7;
  }

LABEL_39:

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), v7, a3, v7);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteInt32ToArrayWithField<8>(google::protobuf::io::EpsCopyOutputStream *a1, unsigned int a2, unsigned __int8 *a3)
{
  if (*a1 <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a3);
    *v8 = 64;
    v4 = v8 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = 64;
    v4 = a3 + 1;
    v5 = a2;
    if (a2 < 0x80)
    {
LABEL_3:
      LOBYTE(v6) = v5;
      goto LABEL_4;
    }
  }

  do
  {
    *v4++ = v5 | 0x80;
    v6 = v5 >> 7;
    v9 = v5 >> 14;
    v5 >>= 7;
  }

  while (v9);
LABEL_4:
  *v4 = v6;
  return v4 + 1;
}

char *operations_research::sat::LinearBooleanProblem::ByteSizeLong(operations_research::sat::LinearBooleanProblem *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v2)
  {
    v4 = (v2 + 7);
  }

  else
  {
    v4 = (this + 24);
  }

  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      v7 = operations_research::sat::LinearBooleanConstraint::ByteSizeLong(v6);
      v3 += &v7[(352 - 9 * __clz(v7)) >> 6];
      v5 -= 8;
    }

    while (v5);
    v8 = *(this + 14);
    v9 = (v8 + v3);
    if (v8 < 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v3 = 0;
    v8 = *(this + 14);
    v9 = v8;
    if (v8 < 1)
    {
      goto LABEL_27;
    }
  }

  v10 = *(this + 6);
  if ((v10 & 1) == 0)
  {
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v13 = v12 + ((352 - 9 * __clz(v12)) >> 6);
    v9 = (v8 + v13 + v3 + v13 * (v8 - 1));
    goto LABEL_27;
  }

  v14 = v10 - 1;
  if (v8 == 1)
  {
    v15 = 0;
LABEL_23:
    v23 = (v14 + 8 * v15 + 8);
    v24 = (v8 - v15);
    do
    {
      v25 = *v23++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v9 = (v9 + v27 + ((352 - 9 * __clz(v27)) >> 6));
      --v24;
    }

    while (v24);
    goto LABEL_27;
  }

  v16 = 0;
  v15 = (v8 & 0x7FFFFFFE);
  v17 = v14 + 16;
  v18 = v15;
  do
  {
    v19 = *(v17 - 8);
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    v22 = *(*v17 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    if (*(*v17 + 23) >= 0)
    {
      v22 = *(*v17 + 23);
    }

    v9 = (v9 + v21 + ((352 - 9 * __clz(v21)) >> 6));
    v16 += v22 + ((352 - 9 * __clz(v22)) >> 6);
    v17 += 16;
    v18 = (v18 - 2);
  }

  while (v18);
  v9 = (v9 + v16);
  if (v15 != v8)
  {
    goto LABEL_23;
  }

LABEL_27:
  v28 = *(this + 4);
  if ((v28 & 0x1F) == 0)
  {
    goto LABEL_34;
  }

  if (v28)
  {
    v30 = *(this + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v9 = (v9 + v32 + ((352 - 9 * __clz(v32)) >> 6) + 1);
    if ((v28 & 2) == 0)
    {
LABEL_30:
      if ((v28 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_48;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_30;
  }

  v33 = *(this + 10);
  v34 = google::protobuf::internal::WireFormatLite::Int32Size(v33 + 6);
  v35 = v33[6];
  v36 = google::protobuf::internal::WireFormatLite::Int64Size(v33 + 10);
  v37 = v33[4];
  v38 = v34 + v36 + v35 + v33[10] + 9;
  if ((v37 & 1) == 0)
  {
    v38 = v34 + v36 + v35 + v33[10];
  }

  if ((v37 & 2) != 0)
  {
    v38 += 9;
  }

  if ((v37 & 3) != 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = (v34 + v36 + v35 + v33[10]);
  }

  v40 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v33, v39, v33 + 5);
  v9 = &v40[((352 - 9 * __clz(v40)) >> 6) + 1 + v9];
  if ((v28 & 4) == 0)
  {
LABEL_31:
    if ((v28 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_48:
  v41 = *(this + 11);
  v42 = google::protobuf::internal::WireFormatLite::Int32Size(v41 + 4);
  v43 = google::protobuf::Message::MaybeComputeUnknownFieldsSize(v41, (v42 + v41[4]), v41 + 8);
  v9 = &v43[((352 - 9 * __clz(v43)) >> 6) + 1 + v9];
  if ((v28 & 8) == 0)
  {
LABEL_32:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_49:
  v9 = (v9 + ((704 - 9 * __clz(*(this + 24))) >> 6));
  if ((v28 & 0x10) != 0)
  {
LABEL_33:
    v9 = (v9 + ((704 - 9 * __clz(*(this + 25))) >> 6));
  }

LABEL_34:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v9, this + 5);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearObjective>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39158;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    *v2 = off_284F39158;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0;
  }

  result = 0.0;
  *(v2 + 56) = xmmword_23CE35A10;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::BooleanAssignment>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39228;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    *result = off_284F39228;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearBooleanProblem>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39290;
    result[1] = a1;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = a1;
    result[6] = 0;
    result[7] = 0;
    result[8] = a1;
  }

  else
  {
    result = operator new(0x68uLL);
    *result = off_284F39290;
    result[1] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    result[8] = 0;
  }

  result[9] = &google::protobuf::internal::fixed_address_empty_string;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  return result;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearObjective>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearObjective::LinearObjective(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return operations_research::sat::LinearObjective::LinearObjective(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::BooleanAssignment>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39228;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39228;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearBooleanConstraint>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x50uLL);
    return operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(v6, 0, a2);
  }
}

uint64_t operations_research::sat::IntegerVariableProto::IntegerVariableProto(uint64_t result, uint64_t a2)
{
  *result = off_284F397E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(result + 48) = 0;
  return result;
}

uint64_t operations_research::sat::IntegerVariableProto::IntegerVariableProto(uint64_t a1, google::protobuf::Arena *a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F397E8;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = *(a3 + 16);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 16, 0);
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v10 = *(a1 + 24);
      v11 = *(a3 + 24);
      if (v8 < 4)
      {
        goto LABEL_10;
      }

      if ((v10 - v11) < 0x20)
      {
        goto LABEL_10;
      }

      v12 = v8;
      v13 = v8 & 0x7FFFFFFC;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFFC);
      v14 = &v10[v13];
      v15 = &v11[v13];
      v16 = (v11 + 2);
      v17 = v10 + 2;
      v18 = v13;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      v10 = v14;
      v11 = v15;
      if (v13 != v12)
      {
LABEL_10:
        v20 = v8 + 1;
        do
        {
          v21 = *v11++;
          *v10++ = v21;
          --v20;
        }

        while (v20 > 1);
      }
    }
  }

  *(a1 + 32) = 0;
  v24 = *(a3 + 40);
  v23 = (a3 + 40);
  v22 = v24;
  if ((v24 & 3) != 0)
  {
    v22 = google::protobuf::internal::TaggedStringPtr::ForceCopy(v23, a2);
  }

  *(a1 + 40) = v22;
  *(a1 + 48) = 0;
  return a1;
}

void sub_23C98CB6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::IntegerVariableProto::~IntegerVariableProto(operations_research::sat::IntegerVariableProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  google::protobuf::internal::ArenaStringPtr::Destroy(this + 5);
  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

std::string *operations_research::sat::IntegerVariableProto::MergeImpl(std::string *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v4 = this;
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = LODWORD(this->__r_.__value_.__r.__words[2]);
    if (SHIDWORD(this->__r_.__value_.__r.__words[2]) < v6 + v5)
    {
      this = google::protobuf::RepeatedField<long long>::Grow(&this->__r_.__value_.__r.__words[2], v6);
      LODWORD(v6) = *(v4 + 16);
      data = *(v4 + 24);
      *(v4 + 16) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      data = this[1].__r_.__value_.__l.__data_;
      LODWORD(this->__r_.__value_.__r.__words[2]) = v6 + v5;
      if (v5 < 1)
      {
        goto LABEL_11;
      }
    }

    v8 = *(a2 + 3);
    v9 = &data[8 * v6];
    if (v5 < 8)
    {
      goto LABEL_9;
    }

    v10 = &data[8 * v6];
    if ((v10 - v8) < 0x20)
    {
      goto LABEL_9;
    }

    v11 = v5;
    v12 = v5 & 0x7FFFFFFC;
    LODWORD(v5) = v5 - (v5 & 0x7FFFFFFC);
    v9 += 8 * v12;
    v13 = &v8[v12];
    v14 = (v8 + 2);
    v15 = v10 + 16;
    v16 = v12;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v8 = v13;
    if (v12 != v11)
    {
LABEL_9:
      v18 = v5 + 1;
      do
      {
        v19 = *v8++;
        *v9 = v19;
        v9 += 8;
        --v18;
      }

      while (v18 > 1);
    }
  }

LABEL_11:
  v20 = *(a2 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 23);
  if (v21 < 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21)
  {
    v22 = *(v4 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set<>((v4 + 40), v20, v22);
  }

  v23 = *(a2 + 1);
  if (v23)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v23 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::IntegerVariableProto::Clear(operations_research::sat::IntegerVariableProto *this)
{
  *(this + 4) = 0;
  result = google::protobuf::internal::ArenaStringPtr::ClearToEmpty(this + 5);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::IntegerVariableProto::_InternalSerialize(operations_research::sat::IntegerVariableProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5);
  v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23);
  if (v9 < 0)
  {
    v11 = *(v8 + 8);
    if (!v11)
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(*v8, v11, 1, "operations_research.sat.IntegerVariableProto.name");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
LABEL_7:
      v10 = *(v8 + 8);
      if (v10 > 127)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFFFCLL) + 23))
    {
      goto LABEL_13;
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String((v7 & 0xFFFFFFFFFFFFFFFCLL), v9, 1, "operations_research.sat.IntegerVariableProto.name");
    v10 = *(v8 + 23);
    if (v10 < 0)
    {
      goto LABEL_7;
    }
  }

  if (*a3 - a2 + 14 >= v10)
  {
    *a2 = 10;
    *(a2 + 1) = v10;
    if (*(v8 + 23) >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    memcpy(a2 + 2, v12, v10);
    a2 = (a2 + v10 + 2);
LABEL_13:
    v13 = *(this + 8);
    if (v13 >= 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a3, 1, v8, a2);
  v13 = *(this + 8);
  if (v13 >= 1)
  {
LABEL_14:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *a2 = 18;
      v14 = a2 + 1;
      if (v13 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *a2 = 18;
      v14 = a2 + 1;
      if (v13 < 0x80)
      {
LABEL_16:
        a2 = (a2 + 2);
        *v14 = v13;
        v15 = *(this + 3);
        v16 = &v15[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            v20 = *v15++;
            v17 = v20;
            if (v20 >= 0x80)
            {
              do
              {
LABEL_23:
                *a2 = v17 | 0x80;
                a2 = (a2 + 1);
                v19 = v17 >> 7;
                v21 = v17 >> 14;
                v17 >>= 7;
              }

              while (v21);
              goto LABEL_20;
            }
          }

          else
          {
            v18 = *v15++;
            v17 = v18;
            if (v18 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v19) = v17;
LABEL_20:
          *a2 = v19;
          a2 = (a2 + 1);
          if (v15 >= v16)
          {
            goto LABEL_26;
          }
        }
      }
    }

    do
    {
      *v14++ = v13 | 0x80;
      v24 = v13 >> 14;
      v13 = v13 >> 7;
    }

    while (v24);
    a2 = (v14 - 1);
    goto LABEL_16;
  }

LABEL_26:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::IntegerVariableProto::ByteSizeLong(operations_research::sat::IntegerVariableProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int64Size(this + 4);
  *(this + 8) = v2;
  v3 = (640 - 9 * __clz(v2)) >> 6;
  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = (v4 + v2);
    if (!*(v5 + 8))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = (v4 + v2);
    if (!*(v5 + 23))
    {
      goto LABEL_9;
    }
  }

  v8 = *(v5 + 8);
  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  v7 = (v7 + v8 + ((352 - 9 * __clz(v8)) >> 6) + 1);
LABEL_9:

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, v7, this + 12);
}

std::string *operations_research::sat::IntegerVariableProto::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::IntegerVariableProto::Clear(this);

    return operations_research::sat::IntegerVariableProto::MergeImpl(v4, a2, v5);
  }

  return this;
}

uint64_t operations_research::sat::IntegerVariableProto::InternalSwap(uint64_t this, operations_research::sat::IntegerVariableProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  v3 = *(a2 + 5);
  *(a2 + 5) = *(this + 40);
  *(this + 40) = v3;
  return this;
}

double operations_research::sat::BoolArgumentProto::BoolArgumentProto(void *a1, uint64_t a2)
{
  *a1 = off_284F39AC0;
  a1[1] = a2;
  result = 0.0;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  return result;
}

uint64_t operations_research::sat::BoolArgumentProto::BoolArgumentProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F39AC0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 32) = 0;
  return a1;
}

void operations_research::sat::BoolArgumentProto::~BoolArgumentProto(operations_research::sat::BoolArgumentProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::BoolArgumentProto::MergeImpl(void *this, int **a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v21 = this;
      v22 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v22;
      this = v21;
      LODWORD(v4) = *(v21 + 16);
      v6 = *(v21 + 24);
      *(v21 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = a2[3];
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = a2[1];
  if (v19)
  {
    v20 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v20, ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::BoolArgumentProto::Clear(operations_research::sat::BoolArgumentProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::BoolArgumentProto::_InternalSerialize(operations_research::sat::BoolArgumentProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    if (*a3 <= a2)
    {
      v18 = this;
      v19 = a3;
      v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a3 = v19;
      a2 = v20;
      this = v18;
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v5 = a2 + 1;
      if (v4 < 0x80)
      {
LABEL_4:
        a2 += 2;
        *v5 = v4;
        v6 = *(this + 3);
        v7 = &v6[*(this + 4)];
        while (1)
        {
          if (*a3 <= a2)
          {
            v11 = this;
            v12 = a3;
            v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
            a3 = v12;
            a2 = v13;
            this = v11;
            v14 = *v6++;
            v8 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *a2++ = v8 | 0x80;
                v10 = v8 >> 7;
                v15 = v8 >> 14;
                v8 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v10) = v8;
LABEL_8:
          *a2++ = v10;
          if (v6 >= v7)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v5++ = v4 | 0x80;
      v21 = v4 >> 14;
      v4 >>= 7;
    }

    while (v21);
    a2 = v5 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *operations_research::sat::BoolArgumentProto::ByteSizeLong(operations_research::sat::BoolArgumentProto *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 4);
  *(this + 8) = v2;
  if (v2)
  {
    v3 = ((640 - 9 * __clz(v2)) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  return google::protobuf::Message::MaybeComputeUnknownFieldsSize(this, (v3 + v2), this + 9);
}

google::protobuf::UnknownFieldSet *operations_research::sat::BoolArgumentProto::CopyFrom(google::protobuf::UnknownFieldSet *this, const operations_research::sat::BoolArgumentProto *a2)
{
  if (a2 == this)
  {
    return this;
  }

  v3 = this;
  this = operations_research::sat::BoolArgumentProto::Clear(this);
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(v3 + 4);
    v6 = (v5 + v4);
    if (*(v3 + 5) < v6)
    {
      this = google::protobuf::RepeatedField<int>::Grow(v3 + 16, v5, v6);
      LODWORD(v5) = *(v3 + 4);
      v7 = *(v3 + 3);
      *(v3 + 4) = v5 + v4;
      if (v4 >= 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v3 + 3);
      *(v3 + 4) = v6;
      if (v4 >= 1)
      {
LABEL_5:
        v8 = *(a2 + 3);
        v9 = (v7 + 4 * v5);
        if (v4 < 8)
        {
          goto LABEL_10;
        }

        v10 = 4 * v5 + v7;
        if ((v10 - v8) < 0x20)
        {
          goto LABEL_10;
        }

        v11 = v4;
        v12 = v4 & 0x7FFFFFF8;
        LODWORD(v4) = v4 - (v4 & 0x7FFFFFF8);
        v9 += v12;
        v13 = &v8[v12];
        v14 = (v8 + 4);
        v15 = (v10 + 16);
        v16 = v12;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 8;
        }

        while (v16);
        v8 = v13;
        if (v12 != v11)
        {
LABEL_10:
          v18 = v4 + 1;
          do
          {
            v19 = *v8++;
            *v9++ = v19;
            --v18;
          }

          while (v18 > 1);
        }
      }
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v3 + 1, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void *operations_research::sat::BoolArgumentProto::MergeFrom(void *this, int **a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = (v3 + v2);
    if (*(this + 5) < v4)
    {
      v20 = this;
      v21 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v3, v4);
      a2 = v21;
      this = v20;
      LODWORD(v3) = *(v20 + 16);
      v5 = *(v20 + 24);
      *(v20 + 16) = v3 + v2;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = this[3];
      *(this + 4) = v4;
      if (v2 < 1)
      {
        goto LABEL_11;
      }
    }

    v6 = a2[3];
    v7 = (v5 + 4 * v3);
    if (v2 < 8)
    {
      goto LABEL_9;
    }

    v8 = 4 * v3 + v5;
    if ((v8 - v6) < 0x20)
    {
      goto LABEL_9;
    }

    v9 = v2;
    v10 = v2 & 0x7FFFFFF8;
    LODWORD(v2) = v2 - (v2 & 0x7FFFFFF8);
    v7 += v10;
    v11 = &v6[v10];
    v12 = (v6 + 4);
    v13 = (v8 + 16);
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 8;
    }

    while (v14);
    v6 = v11;
    if (v10 != v9)
    {
LABEL_9:
      v16 = v2 + 1;
      do
      {
        v17 = *v6++;
        *v7++ = v17;
        --v16;
      }

      while (v16 > 1);
    }
  }

LABEL_11:
  v18 = a2[1];
  if (v18)
  {
    v19 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v19, ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

uint64_t operations_research::sat::BoolArgumentProto::InternalSwap(uint64_t this, operations_research::sat::BoolArgumentProto *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  LOBYTE(v2) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  LOBYTE(v2) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v2;
  LOBYTE(v2) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v2;
  LOBYTE(v2) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v2;
  LOBYTE(v2) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  LOBYTE(v2) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v2;
  LOBYTE(v2) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v2;
  LOBYTE(v2) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  return this;
}

double operations_research::sat::LinearExpressionProto::LinearExpressionProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_284F396B0;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t operations_research::sat::LinearExpressionProto::LinearExpressionProto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *a1 = off_284F396B0;
  v7 = *(a3 + 8);
  if (v7)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v6, ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    google::protobuf::RepeatedField<int>::Grow(a1 + 16, 0, *(a3 + 16));
    *(a1 + 16) = v8;
    if (v8 >= 1)
    {
      v9 = *(a1 + 24);
      v10 = *(a3 + 24);
      if (v8 < 8)
      {
        goto LABEL_10;
      }

      if ((v9 - v10) < 0x20)
      {
        goto LABEL_10;
      }

      v11 = v8;
      v12 = v8 & 0x7FFFFFF8;
      LODWORD(v8) = v8 - (v8 & 0x7FFFFFF8);
      v13 = &v9[v12];
      v14 = &v10[v12];
      v15 = (v10 + 4);
      v16 = v9 + 4;
      v17 = v12;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      v10 = v14;
      if (v12 != v11)
      {
LABEL_10:
        v19 = v8 + 1;
        do
        {
          v20 = *v10++;
          *v9++ = v20;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  v21 = *(a3 + 40);
  if (v21)
  {
    v22 = *(a3 + 40);
    google::protobuf::RepeatedField<long long>::Grow(a1 + 40, 0);
    *(a1 + 40) = v21;
    if (v21 >= 1)
    {
      v23 = *(a1 + 48);
      v24 = *(a3 + 48);
      if (v21 < 4)
      {
        goto LABEL_19;
      }

      if ((v23 - v24) < 0x20)
      {
        goto LABEL_19;
      }

      v25 = v21;
      v26 = v21 & 0x7FFFFFFC;
      LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
      v27 = &v23[v26];
      v28 = &v24[v26];
      v29 = (v24 + 2);
      v30 = v23 + 2;
      v31 = v26;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v23 = v27;
      v24 = v28;
      if (v26 != v25)
      {
LABEL_19:
        v33 = v21 + 1;
        do
        {
          v34 = *v24++;
          *v23++ = v34;
          --v33;
        }

        while (v33 > 1);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = *(a3 + 64);
  return a1;
}

void sub_23C98DDF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    operations_research::sat::LinearObjective::LinearObjective((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearExpressionProto::~LinearExpressionProto(operations_research::sat::LinearExpressionProto *this)
{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<google::protobuf::UnknownFieldSet>(v2);
  }

  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 5) >= 1)
  {
    v7 = *(this + 3);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearExpressionProto::MergeImpl(void *this, google::protobuf::MessageLite *a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = (v4 + v3);
    if (*(this + 5) < v5)
    {
      v37 = this;
      v38 = a2;
      google::protobuf::RepeatedField<int>::Grow(this + 2, v4, v5);
      a2 = v38;
      this = v37;
      LODWORD(v4) = *(v37 + 16);
      v6 = *(v37 + 24);
      *(v37 + 16) = v4 + v3;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = this[3];
      *(this + 4) = v5;
      if (v3 < 1)
      {
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 3);
    v8 = (v6 + 4 * v4);
    if (v3 < 8)
    {
      goto LABEL_9;
    }

    v9 = 4 * v4 + v6;
    if ((v9 - v7) < 0x20)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v11 = v3 & 0x7FFFFFF8;
    LODWORD(v3) = v3 - (v3 & 0x7FFFFFF8);
    v8 += v11;
    v12 = &v7[v11];
    v13 = (v7 + 4);
    v14 = (v9 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 8;
    }

    while (v15);
    v7 = v12;
    if (v11 != v10)
    {
LABEL_9:
      v17 = v3 + 1;
      do
      {
        v18 = *v7++;
        *v8++ = v18;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_11:
  v19 = *(a2 + 10);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *(this + 10);
  if (*(this + 11) < v20 + v19)
  {
    v39 = this;
    v40 = a2;
    google::protobuf::RepeatedField<long long>::Grow(this + 5, v20);
    a2 = v40;
    this = v39;
    LODWORD(v20) = *(v39 + 10);
    v21 = v39[6];
    *(v39 + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = this[6];
    *(this + 10) = v20 + v19;
    if (v19 < 1)
    {
      goto LABEL_21;
    }
  }

  v22 = *(a2 + 6);
  v23 = (v21 + 8 * v20);
  if (v19 < 8)
  {
    goto LABEL_19;
  }

  v24 = 8 * v20 + v21;
  if ((v24 - v22) < 0x20)
  {
    goto LABEL_19;
  }

  v25 = v19;
  v26 = v19 & 0x7FFFFFFC;
  LODWORD(v19) = v19 - (v19 & 0x7FFFFFFC);
  v23 += v26;
  v27 = &v22[v26];
  v28 = (v22 + 2);
  v29 = (v24 + 16);
  v30 = v26;
  do
  {
    v31 = *v28;
    *(v29 - 1) = *(v28 - 1);
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  v22 = v27;
  if (v26 != v25)
  {
LABEL_19:
    v32 = v19 + 1;
    do
    {
      v33 = *v22++;
      *v23++ = v33;
      --v32;
    }

    while (v32 > 1);
  }

LABEL_21:
  v34 = *(a2 + 8);
  if (v34)
  {
    this[8] = v34;
  }

  v35 = *(a2 + 1);
  if (v35)
  {
    v36 = (this + 1);

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>(v36, ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

google::protobuf::UnknownFieldSet *operations_research::sat::LinearExpressionProto::Clear(operations_research::sat::LinearExpressionProto *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 8) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *operations_research::sat::LinearExpressionProto::_InternalSerialize(operations_research::sat::LinearExpressionProto *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      *v5 = 10;
      v8 = v5 + 1;
      if (v7 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *a2 = 10;
      v8 = a2 + 1;
      if (v7 < 0x80)
      {
LABEL_4:
        v5 += 2;
        *v8 = v7;
        v9 = *(this + 3);
        v10 = &v9[*(this + 4)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v14 = *v9++;
            v11 = v14;
            if (v14 >= 0x80)
            {
              do
              {
LABEL_11:
                *v5++ = v11 | 0x80;
                v13 = v11 >> 7;
                v15 = v11 >> 14;
                v11 >>= 7;
              }

              while (v15);
              goto LABEL_8;
            }
          }

          else
          {
            v12 = *v9++;
            v11 = v12;
            if (v12 >= 0x80)
            {
              goto LABEL_11;
            }
          }

          LOBYTE(v13) = v11;
LABEL_8:
          *v5++ = v13;
          if (v9 >= v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    do
    {
      *v8++ = v7 | 0x80;
      v28 = v7 >> 14;
      v7 >>= 7;
    }

    while (v28);
    v5 = v8 - 1;
    goto LABEL_4;
  }

LABEL_13:
  v16 = *(this + 14);
  if (v16 >= 1)
  {
    if (*a3 <= v5)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 18;
      v17 = v5 + 1;
      if (v16 < 0x80)
      {
LABEL_16:
        v5 += 2;
        *v17 = v16;
        v18 = *(this + 6);
        v19 = &v18[*(this + 10)];
        while (1)
        {
          if (*a3 <= v5)
          {
            v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
            v23 = *v18++;
            v20 = v23;
            if (v23 >= 0x80)
            {
              do
              {
LABEL_23:
                *v5++ = v20 | 0x80;
                v22 = v20 >> 7;
                v24 = v20 >> 14;
                v20 >>= 7;
              }

              while (v24);
              goto LABEL_20;
            }
          }

          else
          {
            v21 = *v18++;
            v20 = v21;
            if (v21 >= 0x80)
            {
              goto LABEL_23;
            }
          }

          LOBYTE(v22) = v20;
LABEL_20:
          *v5++ = v22;
          if (v18 >= v19)
          {
            goto LABEL_25;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v29 = v16 >> 14;
      v16 >>= 7;
    }

    while (v29);
    v5 = v17 - 1;
    goto LABEL_16;
  }

LABEL_25:
  v25 = *(this + 8);
  if (v25)
  {
    v5 = google::protobuf::internal::WireFormatLite::WriteInt64ToArrayWithField<3>(a3, v25, v5);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v26 & 0xFFFFFFFFFFFFFFFELL) + 8), v5, a3, a4);
}