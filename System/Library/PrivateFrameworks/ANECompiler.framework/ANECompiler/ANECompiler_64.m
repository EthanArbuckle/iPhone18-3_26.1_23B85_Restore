void operations_research::glop::SparseMatrixScaler::ScaleRowVector(uint64_t a1, char a2, unint64_t *a3)
{
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 157, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "vector_to_scale", 0xFuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
    return;
  }

  v3 = *(a1 + 32);
  v4 = *a3;
  v5 = (a3[1] - *a3) >> 3;
  if (v5 >= (*(a1 + 40) - v3) >> 3)
  {
    v5 = (*(a1 + 40) - v3) >> 3;
  }

  if ((a2 & 1) == 0)
  {
    if (v5 < 1)
    {
      return;
    }

    v14 = v5 & 0x7FFFFFFF;
    if (v14 > 3 && (v4 < v3 + 8 * v14 ? (v15 = v3 >= v4 + 8 * v14) : (v15 = 1), v15))
    {
      v16 = v5 & 3;
      v17 = v14 - v16;
      v18 = (v4 + 16);
      v19 = (v3 + 16);
      v20 = v14 - v16;
      do
      {
        v21 = vdivq_f64(*v18, *v19);
        v18[-1] = vdivq_f64(v18[-1], v19[-1]);
        *v18 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v17 = 0;
    }

    v22 = v14 - v17;
    v23 = 8 * v17;
    v24 = (v4 + v23);
    v25 = (v3 + v23);
    do
    {
      v26 = *v25++;
      *v24 = *v24 / v26;
      ++v24;
      --v22;
    }

    while (v22);
    return;
  }

  if (v5 < 1)
  {
    return;
  }

  v6 = v5 & 0x7FFFFFFF;
  if (v6 < 4 || (v4 < v3 + 8 * v6 ? (v7 = v3 >= v4 + 8 * v6) : (v7 = 1), !v7))
  {
    v9 = 0;
LABEL_32:
    v27 = v6 - v9;
    v28 = 8 * v9;
    v29 = (v4 + v28);
    v30 = (v3 + v28);
    do
    {
      v31 = *v30++;
      *v29 = v31 * *v29;
      ++v29;
      --v27;
    }

    while (v27);
    return;
  }

  v8 = v5 & 3;
  v9 = v6 - v8;
  v10 = (v4 + 16);
  v11 = (v3 + 16);
  v12 = v6 - v8;
  do
  {
    v13 = vmulq_f64(*v11, *v10);
    v10[-1] = vmulq_f64(v11[-1], v10[-1]);
    *v10 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8)
  {
    goto LABEL_32;
  }
}

void operations_research::glop::SparseMatrixScaler::ScaleColumnVector(uint64_t a1, char a2, unint64_t *a3)
{
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/matrix_scaler.cc", 157, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "vector_to_scale", 0xFuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
    return;
  }

  v3 = *(a1 + 8);
  v4 = *a3;
  v5 = (a3[1] - *a3) >> 3;
  if (v5 >= (*(a1 + 16) - v3) >> 3)
  {
    v5 = (*(a1 + 16) - v3) >> 3;
  }

  if ((a2 & 1) == 0)
  {
    if (v5 < 1)
    {
      return;
    }

    v14 = v5 & 0x7FFFFFFF;
    if (v14 > 3 && (v4 < v3 + 8 * v14 ? (v15 = v3 >= v4 + 8 * v14) : (v15 = 1), v15))
    {
      v16 = v5 & 3;
      v17 = v14 - v16;
      v18 = (v4 + 16);
      v19 = (v3 + 16);
      v20 = v14 - v16;
      do
      {
        v21 = vdivq_f64(*v18, *v19);
        v18[-1] = vdivq_f64(v18[-1], v19[-1]);
        *v18 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v17 = 0;
    }

    v22 = v14 - v17;
    v23 = 8 * v17;
    v24 = (v4 + v23);
    v25 = (v3 + v23);
    do
    {
      v26 = *v25++;
      *v24 = *v24 / v26;
      ++v24;
      --v22;
    }

    while (v22);
    return;
  }

  if (v5 < 1)
  {
    return;
  }

  v6 = v5 & 0x7FFFFFFF;
  if (v6 < 4 || (v4 < v3 + 8 * v6 ? (v7 = v3 >= v4 + 8 * v6) : (v7 = 1), !v7))
  {
    v9 = 0;
LABEL_32:
    v27 = v6 - v9;
    v28 = 8 * v9;
    v29 = (v4 + v28);
    v30 = (v3 + v28);
    do
    {
      v31 = *v30++;
      *v29 = v31 * *v29;
      ++v29;
      --v27;
    }

    while (v27);
    return;
  }

  v8 = v5 & 3;
  v9 = v6 - v8;
  v10 = (v4 + 16);
  v11 = (v3 + 16);
  v12 = v6 - v8;
  do
  {
    v13 = vmulq_f64(*v11, *v10);
    v10[-1] = vmulq_f64(v11[-1], v10[-1]);
    *v10 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8)
  {
    goto LABEL_32;
  }
}

operations_research::glop::LinearProgram **std::unique_ptr<operations_research::glop::LinearProgram>::~unique_ptr[abi:ne200100](operations_research::glop::LinearProgram **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::glop::LinearProgram::~LinearProgram(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::glop::FindProportionalColumns(operations_research::glop *this@<X0>, __n128 a2@<Q0>, uint64_t *a3@<X8>)
{
  v4 = a2.n128_f64[0];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6 << 32)
  {
    if (!(v6 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v75 = v6;
  if (v6 < 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v6 & 0x7FFFFFFF;
    do
    {
      v11 = (*this + 48 * v7);
      v12 = v11[1];
      if (v12)
      {
        if (v12 < 1)
        {
          v14 = 0;
          v20 = 0.0;
          v18 = 1.79769313e308;
          v17 = 0.0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v11[3];
          v16 = v11[4];
          v17 = 0.0;
          v18 = 1.79769313e308;
          v19 = v12;
          v20 = 0.0;
          do
          {
            v21 = *v15++;
            v22 = (v13 + 0x1F73E299748A907ELL + v21) ^ (v14 >> 43);
            v23 = (v13 - v22 - 0x1F73E299748A907ELL) ^ (v22 << 9);
            v24 = (v14 - (v22 + v23)) ^ (v23 >> 8);
            v25 = (v22 - (v23 + v24)) ^ (v24 >> 38);
            v26 = (v23 - (v24 + v25)) ^ (v25 << 23);
            v27 = (v24 - (v25 + v26)) ^ (v26 >> 5);
            v28 = (v25 - (v26 + v27)) ^ (v27 >> 35);
            v29 = (v26 - (v27 + v28)) ^ (v28 << 49);
            v30 = (v27 - (v28 + v29)) ^ (v29 >> 11);
            v31 = (v28 - (v29 + v30)) ^ (v30 >> 12);
            v14 = (v30 - (v31 + ((v29 - (v30 + v31)) ^ (v31 << 18)))) ^ (((v29 - (v30 + v31)) ^ (v31 << 18)) >> 22);
            v32 = *v16++;
            v17 = v17 + v32;
            v33 = fabs(v32);
            if (v33 < v18)
            {
              v18 = v33;
            }

            if (v20 < v33)
            {
              v20 = v33;
            }

            v13 = -v14;
            --v19;
          }

          while (v19);
        }

        v34 = v18 / v20 + fabs(v17) / (v20 * v12);
        v35 = v9 - v8;
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-v8 >> 3) > v37)
        {
          v37 = 0x5555555555555556 * (-v8 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          if (v38 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v39 = 24 * v36;
        *v39 = v7;
        *(v39 + 8) = v14;
        *(v39 + 16) = v34;
        v9 = (24 * v36 + 24);
        v40 = v39 - v35;
        memcpy((v39 - v35), v8, v35);
        if (v8)
        {
          operator delete(v8);
        }

        v8 = v40;
      }

      ++v7;
    }

    while (v7 != v10);
  }

  v41 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
  v42 = 126 - 2 * __clz(v41);
  if (v9 == v8)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  if (v9 != v8)
  {
    v44 = 0;
    v45 = 0;
    v46 = *a3;
    do
    {
      v47 = (v8 + 24 * v44);
      v48 = *v47;
      v44 = ++v45;
      if (*(v46 + 4 * *v47) == -1 && v41 > v45)
      {
        v50 = *this;
        v51 = (*this + 48 * v48);
        v52 = v45;
        v53 = v45;
        do
        {
          v54 = (v8 + 24 * v52);
          v55 = 4 * *v54;
          if (*(v46 + v55) == -1)
          {
            v56 = vabdd_f64(v47[2], v54[2]);
            if (*(v47 + 1) != *(v54 + 1) || v56 >= v4)
            {
              break;
            }

            v58 = (v50 + 48 * *v54);
            v59 = v51[1];
            if (v59 == v58[1])
            {
              if (v59 < 1)
              {
LABEL_42:
                *(v46 + v55) = v48;
              }

              else
              {
                v60 = v51[3];
                v61 = v51[4];
                v62 = 1;
                v63 = 0.0;
                v64 = v58[3];
                v65 = v58[4];
                while (1)
                {
                  v67 = *v60++;
                  v66 = v67;
                  v68 = *v64++;
                  if (v66 != v68)
                  {
                    break;
                  }

                  v69 = *v61;
                  v70 = *v65;
                  if (v63 == 0.0)
                  {
                    if (fabs(v69) <= fabs(v70))
                    {
                      v62 = 0;
                      v63 = v70 / v69;
                    }

                    else
                    {
                      v62 = 1;
                      v63 = v69 / v70;
                    }
                  }

                  else if (v62)
                  {
                    if (vabdd_f64(v69 / v70, v63) > v4)
                    {
                      break;
                    }

                    v62 = 1;
                  }

                  else
                  {
                    if (vabdd_f64(v70 / v69, v63) > v4)
                    {
                      break;
                    }

                    v62 = 0;
                  }

                  ++v65;
                  ++v61;
                  if (!--v59)
                  {
                    goto LABEL_42;
                  }
                }
              }
            }
          }

          v52 = ++v53;
        }

        while (v41 > v53);
      }
    }

    while (v41 > v45);
  }

  if (v75 >= 1)
  {
    v71 = 0;
    v72 = *a3;
    do
    {
      v73 = *(v72 + 4 * v71);
      if (v73 != -1)
      {
        v74 = *(v72 + 4 * v73);
        if (v74 == -1)
        {
          if (v71 >= v73)
          {
            goto LABEL_67;
          }

          *(v72 + 4 * v73) = v71;
          v74 = -1;
        }

        *(v72 + 4 * v71) = v74;
      }

LABEL_67:
      ++v71;
    }

    while ((v75 & 0x7FFFFFFF) != v71);
  }

  if (v8)
  {

    operator delete(v8);
  }
}

void sub_23CC6DA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
    v12 = *a10;
    if (!*a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v12 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  *(a10 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::AreFirstColumnsAndRowsExactlyEquals(int a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 6) >= a1 && *a4 >= a1)
  {
    v5 = *a3;
    if (a2 <= (-1431655765 * ((a3[1] - *a3) >> 4)) && *(a4 + 4) >= a2)
    {
      if (a2 < 1)
      {
        return 1;
      }

      v9 = 0;
      v10 = *(a4 + 56);
      v11 = *(a4 + 32);
      v12 = a2 & 0x7FFFFFFF;
      v13 = *(a4 + 8);
      while (1)
      {
        v15 = (v5 + 48 * v9);
        v16 = *(v10 + 8 * v9);
        v17 = *(v10 + (((v9 << 32) + 0x100000000) >> 29));
        v18 = v17 - v16;
        v19 = v15[1];
        v20 = v17 - v16 < v19;
        v21 = v17 - v16 >= v19 ? v15[1] : v17 - v16;
        if (v20 && *(v15[3] + 4 * v18) < a1)
        {
          break;
        }

        v22 = v11 + 4 * v16;
        if (v19 < v18 && *(v22 + 4 * v21) < a1)
        {
          break;
        }

        if (v21 >= 1)
        {
          v23 = v13 + 8 * v16;
          v24 = v15[3];
          if (v18 >= v19)
          {
            if (v19 >= v18)
            {
              v29 = 0;
              while (1)
              {
                v26 = *(v24 + 4 * v29);
                v27 = *(v22 + 4 * v29);
                if (v26 != v27)
                {
                  break;
                }

                if (*(v15[4] + 8 * v29) != *(v23 + 8 * v29))
                {
                  return 0;
                }

                if (v21 == ++v29)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v28 = 0;
              while (1)
              {
                v26 = *(v24 + 4 * v28);
                v27 = *(v22 + 4 * v28);
                if (v26 != v27)
                {
                  break;
                }

                if (*(v15[4] + 8 * v28) != *(v23 + 8 * v28) || *(v22 + 4 * v21) < a1)
                {
                  return 0;
                }

                if (v21 == ++v28)
                {
                  goto LABEL_19;
                }
              }
            }
          }

          else
          {
            v25 = 0;
            while (1)
            {
              v26 = *(v24 + 4 * v25);
              v27 = *(v22 + 4 * v25);
              if (v26 != v27)
              {
                break;
              }

              if (*(v15[4] + 8 * v25) != *(v23 + 8 * v25) || *(v24 + 4 * v18) < a1)
              {
                return 0;
              }

              if (v21 == ++v25)
              {
                goto LABEL_19;
              }
            }
          }

          if (v26 < a1 || v27 < a1)
          {
            break;
          }
        }

LABEL_19:
        ++v9;
        v7 = 1;
        if (v9 == v12)
        {
          return v7;
        }
      }
    }
  }

  return 0;
}

BOOL operations_research::glop::IsRightMostSquareMatrixIdentity(operations_research::glop *this, const operations_research::glop::SparseMatrix *a2)
{
  v2 = *(this + 6);
  v3 = -1431655765 * ((*(this + 1) - *this) >> 4);
  v4 = v3 - v2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v4 < v3)
  {
    v6 = v4;
    for (i = (*this + 48 * v4 + 32); *(i - 3) == 1 && **i == 1.0; i += 6)
    {
      ++v6;
      if (!--v2)
      {
        return v6 >= v3;
      }
    }

    return 0;
  }

  return 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnFingerprint *,false>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, __n128 result)
{
  while (2)
  {
    v9 = (a2 - 3);
    v10 = a2 - 6;
    v11 = a2 - 9;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 > 2)
          {
            switch(v14)
            {
              case 3:
                v165 = *(v12 + 32);
                result.n128_u64[0] = *(v12 + 40);
                v166 = *(v12 + 8);
                v162 = v165 == v166;
                v167 = v165 < v166;
                if (v162)
                {
                  v167 = result.n128_f64[0] < *(v12 + 16);
                }

                v168 = *(a2 - 2);
                v162 = v168 == v165;
                v169 = v168 < v165;
                if (v162)
                {
                  v169 = *(a2 - 1) < result.n128_f64[0];
                }

                if (!v167)
                {
                  if (!v169)
                  {
                    return result;
                  }

                  v320 = *(v12 + 40);
                  v288 = *(v12 + 24);
                  result = *v9;
                  *(v12 + 40) = *(a2 - 1);
                  *(v12 + 24) = result;
                  *(a2 - 1) = v320;
                  *v9 = v288;
                  goto LABEL_268;
                }

                if (v169)
                {
                  v318 = *(v12 + 16);
                  v286 = *v12;
                  v170 = *v9;
                  *(v12 + 16) = *(a2 - 1);
                  *v12 = v170;
                }

                else
                {
                  v322 = *(v12 + 16);
                  v290 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  *(v12 + 40) = v322;
                  *(v12 + 24) = v290;
                  v255 = *(a2 - 2);
                  result.n128_u64[0] = *(a2 - 1);
                  v256 = *(v12 + 32);
                  v162 = v255 == v256;
                  v257 = v255 < v256;
                  if (v162)
                  {
                    v257 = result.n128_f64[0] < *(v12 + 40);
                  }

                  if (!v257)
                  {
                    return result;
                  }

                  v318 = *(v12 + 40);
                  v286 = *(v12 + 24);
                  v258 = *v9;
                  *(v12 + 40) = *(a2 - 1);
                  *(v12 + 24) = v258;
                }

                result = v286;
                *(a2 - 1) = v318;
                *v9 = v286;
                return result;
              case 4:

                return result;
              case 5:
                v151 = *(a2 - 2);
                result.n128_u64[0] = *(a2 - 1);
                v152 = *(v12 + 80);
                v162 = v151 == v152;
                v153 = v151 < v152;
                if (v162)
                {
                  v153 = result.n128_f64[0] < *(v12 + 88);
                }

                if (!v153)
                {
                  return result;
                }

                v314 = *(v12 + 88);
                v282 = *(v12 + 72);
                result = *(a2 - 3);
                *(v12 + 88) = *(a2 - 1);
                *(v12 + 72) = result;
                *(a2 - 1) = v314;
                *(a2 - 3) = v282;
                v154 = *(v12 + 80);
                result.n128_u64[0] = *(v12 + 88);
                v155 = *(v12 + 56);
                v162 = v154 == v155;
                v156 = v154 < v155;
                if (v162)
                {
                  v156 = result.n128_f64[0] < *(v12 + 64);
                }

                if (!v156)
                {
                  return result;
                }

                v315 = *(v12 + 64);
                v283 = *(v12 + 48);
                *(v12 + 48) = *(v12 + 72);
                *(v12 + 64) = *(v12 + 88);
                *(v12 + 88) = v315;
                *(v12 + 72) = v283;
                v157 = *(v12 + 56);
                result.n128_u64[0] = *(v12 + 64);
                v158 = *(v12 + 32);
                v162 = v157 == v158;
                v159 = v157 < v158;
                if (v162)
                {
                  v159 = result.n128_f64[0] < *(v12 + 40);
                }

                if (!v159)
                {
                  return result;
                }

                v316 = *(v12 + 40);
                v284 = *(v12 + 24);
                *(v12 + 24) = *(v12 + 48);
                *(v12 + 40) = *(v12 + 64);
                *(v12 + 64) = v316;
                *(v12 + 48) = v284;
LABEL_268:
                v244 = *(v12 + 32);
                result.n128_u64[0] = *(v12 + 40);
                v245 = *(v12 + 8);
                v162 = v244 == v245;
                v246 = v244 < v245;
                if (v162)
                {
                  v246 = result.n128_f64[0] < *(v12 + 16);
                }

                if (v246)
                {
                  v321 = *(v12 + 16);
                  v289 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  result = v289;
                  *(v12 + 40) = v321;
                  *(v12 + 24) = v289;
                }

                return result;
            }
          }

          else
          {
            if (v14 < 2)
            {
              return result;
            }

            if (v14 == 2)
            {
              v160 = *(a2 - 2);
              result.n128_u64[0] = *(a2 - 1);
              v161 = *(v12 + 8);
              v162 = v160 == v161;
              v163 = v160 < v161;
              if (v162)
              {
                v163 = result.n128_f64[0] < *(v12 + 16);
              }

              if (v163)
              {
                v317 = *(v12 + 16);
                v285 = *v12;
                v164 = *(a2 - 3);
                *(v12 + 16) = *(a2 - 1);
                *v12 = v164;
                result = v285;
                *(a2 - 1) = v317;
                *(a2 - 3) = v285;
              }

              return result;
            }
          }

          if (v13 <= 575)
          {
            v171 = (v12 + 24);
            v173 = v12 == a2 || v171 == a2;
            if (a4)
            {
              if (!v173)
              {
                v174 = 0;
                v175 = v12;
                do
                {
                  v177 = *(v175 + 4);
                  result.n128_f64[0] = v175[5];
                  v178 = *(v175 + 1);
                  v179 = v175[2];
                  v175 = v171;
                  v180 = result.n128_f64[0] < v179;
                  v162 = v177 == v178;
                  v181 = v177 < v178;
                  if (!v162)
                  {
                    v180 = v181;
                  }

                  if (v180)
                  {
                    v182 = *v175;
                    v183 = v174;
                    do
                    {
                      v184 = v12 + v183;
                      *(v184 + 24) = *(v12 + v183);
                      *(v184 + 40) = *(v12 + v183 + 16);
                      if (!v183)
                      {
                        v176 = v12;
                        goto LABEL_202;
                      }

                      v185 = *(v184 - 16);
                      v186 = result.n128_f64[0] < *(v184 - 8);
                      v162 = v177 == v185;
                      v187 = v177 < v185;
                      if (!v162)
                      {
                        v186 = v187;
                      }

                      v183 -= 24;
                    }

                    while (v186);
                    v176 = (v12 + v183 + 24);
LABEL_202:
                    *v176 = v182;
                    v176[1] = v177;
                    v176[2] = result.n128_u64[0];
                  }

                  v171 = v175 + 3;
                  v174 += 24;
                }

                while (v175 + 3 != a2);
              }
            }

            else if (!v173)
            {
              do
              {
                v247 = *(a1 + 32);
                result.n128_u64[0] = *(a1 + 40);
                v248 = *(a1 + 8);
                v249 = *(a1 + 16);
                a1 = v171;
                v162 = v247 == v248;
                v250 = v247 < v248;
                if (v162)
                {
                  v250 = result.n128_f64[0] < v249;
                }

                if (v250)
                {
                  v251 = *v171;
                  do
                  {
                    *v171 = *(v171 - 3);
                    v171[2] = *(v171 - 1);
                    v252 = *(v171 - 5);
                    v253 = *(v171 - 4);
                    v171 -= 3;
                    v162 = v247 == v252;
                    v254 = v247 < v252;
                    if (v162)
                    {
                      v254 = result.n128_f64[0] < v253;
                    }
                  }

                  while (v254);
                  *v171 = v251;
                  *(v171 + 1) = v247;
                  v171[2] = result.n128_f64[0];
                }

                v171 = (a1 + 24);
              }

              while ((a1 + 24) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v188 = (v14 - 2) >> 1;
              v189 = v188;
              do
              {
                v190 = v189;
                v191 = 3 * v189;
                v192 = 0xAAAAAAAAAAAAAAABLL * ((24 * v189) >> 3);
                if (v188 >= v192)
                {
                  v193 = 2 * v192;
                  v194 = (2 * v192) | 1;
                  v195 = v12 + 24 * v194;
                  v196 = v193 + 2;
                  if (v196 < v14)
                  {
                    v197 = *(v195 + 8);
                    v198 = *(v195 + 32);
                    v162 = v197 == v198;
                    v199 = v197 < v198;
                    if (v162)
                    {
                      v199 = *(v195 + 16) < *(v195 + 40);
                    }

                    v200 = !v199;
                    if (v199)
                    {
                      v201 = 24;
                    }

                    else
                    {
                      v201 = 0;
                    }

                    v195 += v201;
                    if (!v200)
                    {
                      v194 = v196;
                    }
                  }

                  v202 = v12 + 8 * v191;
                  v203 = *(v195 + 8);
                  v204 = *(v202 + 8);
                  v205 = *(v202 + 16);
                  v162 = v203 == v204;
                  v206 = v203 < v204;
                  if (v162)
                  {
                    v206 = *(v195 + 16) < v205;
                  }

                  if (!v206)
                  {
                    v207 = *v202;
                    do
                    {
                      v211 = v202;
                      v202 = v195;
                      v212 = *v195;
                      *(v211 + 16) = *(v195 + 16);
                      *v211 = v212;
                      if (v188 < v194)
                      {
                        break;
                      }

                      v213 = (2 * v194) | 1;
                      v195 = v12 + 24 * v213;
                      v214 = 2 * v194 + 2;
                      if (v214 < v14)
                      {
                        v215 = *(v195 + 8);
                        v216 = *(v195 + 32);
                        v162 = v215 == v216;
                        v217 = v215 < v216;
                        if (v162)
                        {
                          v217 = *(v195 + 16) < *(v195 + 40);
                        }

                        v218 = !v217;
                        if (v217)
                        {
                          v219 = 24;
                        }

                        else
                        {
                          v219 = 0;
                        }

                        v195 += v219;
                        if (!v218)
                        {
                          v213 = v214;
                        }
                      }

                      v208 = *(v195 + 8);
                      v209 = *(v195 + 16) < v205;
                      v162 = v208 == v204;
                      v210 = v208 < v204;
                      if (!v162)
                      {
                        v209 = v210;
                      }

                      v194 = v213;
                    }

                    while (!v209);
                    *v202 = v207;
                    *(v202 + 8) = v204;
                    *(v202 + 16) = v205;
                  }
                }

                v189 = v190 - 1;
              }

              while (v190);
              v220 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v222 = 0;
                v319 = *(v12 + 16);
                v287 = *v12;
                v223 = v12;
                do
                {
                  v230 = v223 + 24 * v222;
                  v228 = (v230 + 24);
                  v231 = (2 * v222) | 1;
                  v222 = 2 * v222 + 2;
                  if (v222 < v220)
                  {
                    v224 = *(v230 + 32);
                    v225 = *(v230 + 56);
                    v162 = v224 == v225;
                    v226 = v224 < v225;
                    if (v162)
                    {
                      v226 = *(v230 + 40) < *(v230 + 64);
                    }

                    v227 = (v230 + 48);
                    if (v226)
                    {
                      v228 = v227;
                    }

                    else
                    {
                      v222 = v231;
                    }
                  }

                  else
                  {
                    v222 = v231;
                  }

                  v229 = *v228;
                  *(v223 + 16) = v228[2];
                  *v223 = v229;
                  v223 = v228;
                }

                while (v222 <= ((v220 - 2) >> 1));
                a2 -= 3;
                if (v228 == a2)
                {
                  result = v287;
                  v228[2] = v319;
                  *v228 = v287;
                }

                else
                {
                  v232 = *a2;
                  v228[2] = a2[2];
                  *v228 = v232;
                  result = v287;
                  a2[2] = v319;
                  *a2 = v287;
                  v233 = v228 - v12 + 24;
                  if (v233 >= 25)
                  {
                    v234 = (-2 - 0x5555555555555555 * (v233 >> 3)) >> 1;
                    v235 = v12 + 24 * v234;
                    v236 = *(v235 + 8);
                    v237 = v228[1];
                    result.n128_u64[0] = v228[2];
                    v162 = v236 == v237;
                    v238 = v236 < v237;
                    if (v162)
                    {
                      v238 = *(v235 + 16) < result.n128_f64[0];
                    }

                    if (v238)
                    {
                      v239 = *v228;
                      do
                      {
                        v240 = v228;
                        v228 = v235;
                        v241 = *v235;
                        v240[2] = *(v235 + 16);
                        *v240 = v241;
                        if (!v234)
                        {
                          break;
                        }

                        v234 = (v234 - 1) >> 1;
                        v235 = v12 + 24 * v234;
                        v242 = *(v235 + 8);
                        v162 = v242 == v237;
                        v243 = v242 < v237;
                        if (v162)
                        {
                          v243 = *(v235 + 16) < result.n128_f64[0];
                        }
                      }

                      while (v243);
                      *v228 = v239;
                      v228[1] = v237;
                      v228[2] = result.n128_u64[0];
                    }
                  }
                }
              }

              while (v220-- > 2);
            }

            return result;
          }

          v15 = v14 >> 1;
          v16 = (v12 + 24 * (v14 >> 1));
          v17 = *(a2 - 2);
          v18 = *(a2 - 1);
          if (v13 < 0xC01)
          {
            v25 = *(v12 + 8);
            v26 = *(v12 + 16);
            v27 = v16->n128_i64[1];
            v162 = v25 == v27;
            v28 = v25 < v27;
            if (v162)
            {
              v28 = v26 < v16[1].n128_f64[0];
            }

            v162 = v17 == v25;
            v29 = v17 < v25;
            if (v162)
            {
              v29 = v18 < v26;
            }

            if (!v28)
            {
              if (v29)
              {
                v295 = *(v12 + 16);
                v263 = *v12;
                result = *v9;
                *(v12 + 16) = *(a2 - 1);
                *v12 = result;
                result.n128_u64[1] = v263.n128_u64[1];
                *(a2 - 1) = v295;
                *v9 = v263;
                v36 = *(v12 + 8);
                v37 = v16->n128_i64[1];
                v162 = v36 == v37;
                v38 = v36 < v37;
                if (v162)
                {
                  v38 = *(v12 + 16) < v16[1].n128_f64[0];
                }

                if (v38)
                {
                  v296 = v16[1].n128_u64[0];
                  v264 = *v16;
                  result = *v12;
                  v16[1].n128_u64[0] = *(v12 + 16);
                  *v16 = result;
                  result.n128_u64[1] = v264.n128_u64[1];
                  *(v12 + 16) = v296;
                  *v12 = v264;
                  --a3;
                  if (a4)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_101;
                }
              }

              goto LABEL_59;
            }

            if (v29)
            {
              v292 = v16[1].n128_i64[0];
              v260 = *v16;
              v30 = *v9;
              v16[1].n128_u64[0] = *(a2 - 1);
              *v16 = v30;
            }

            else
            {
              v301 = v16[1].n128_u64[0];
              v269 = *v16;
              result = *v12;
              v16[1].n128_u64[0] = *(v12 + 16);
              *v16 = result;
              result.n128_u64[1] = v269.n128_u64[1];
              *(v12 + 16) = v301;
              *v12 = v269;
              v59 = *(a2 - 2);
              v60 = *(v12 + 8);
              v162 = v59 == v60;
              v61 = v59 < v60;
              if (v162)
              {
                v61 = *(a2 - 1) < *(v12 + 16);
              }

              if (!v61)
              {
LABEL_59:
                --a3;
                if (a4)
                {
                  goto LABEL_60;
                }

                goto LABEL_101;
              }

              v292 = *(v12 + 16);
              v260 = *v12;
              v62 = *v9;
              *(v12 + 16) = *(a2 - 1);
              *v12 = v62;
            }

            result.n128_u64[1] = v260.n128_u64[1];
            *(a2 - 1) = v292;
            *v9 = v260;
            goto LABEL_59;
          }

          v19 = v16->n128_i64[1];
          v20 = v16[1].n128_f64[0];
          v21 = *(v12 + 8);
          v162 = v19 == v21;
          v22 = v19 < v21;
          if (v162)
          {
            v22 = v20 < *(v12 + 16);
          }

          v162 = v17 == v19;
          v23 = v17 < v19;
          if (v162)
          {
            v23 = v18 < v20;
          }

          if (v22)
          {
            if (v23)
            {
              v291 = *(v12 + 16);
              v259 = *v12;
              v24 = *v9;
              *(v12 + 16) = *(a2 - 1);
              *v12 = v24;
LABEL_41:
              *(a2 - 1) = v291;
              *v9 = v259;
              goto LABEL_42;
            }

            v297 = *(v12 + 16);
            v265 = *v12;
            v39 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v39;
            v16[1].n128_u64[0] = v297;
            *v16 = v265;
            v40 = *(a2 - 2);
            v41 = v16->n128_i64[1];
            v162 = v40 == v41;
            v42 = v40 < v41;
            if (v162)
            {
              v42 = *(a2 - 1) < v16[1].n128_f64[0];
            }

            if (v42)
            {
              v291 = v16[1].n128_i64[0];
              v259 = *v16;
              v43 = *v9;
              v16[1].n128_u64[0] = *(a2 - 1);
              *v16 = v43;
              goto LABEL_41;
            }
          }

          else if (v23)
          {
            v293 = v16[1].n128_i64[0];
            v261 = *v16;
            v31 = *v9;
            v16[1].n128_u64[0] = *(a2 - 1);
            *v16 = v31;
            *(a2 - 1) = v293;
            *v9 = v261;
            v32 = v16->n128_i64[1];
            v33 = *(v12 + 8);
            v162 = v32 == v33;
            v34 = v32 < v33;
            if (v162)
            {
              v34 = v16[1].n128_f64[0] < *(v12 + 16);
            }

            if (v34)
            {
              v294 = *(v12 + 16);
              v262 = *v12;
              v35 = *v16;
              *(v12 + 16) = v16[1].n128_u64[0];
              *v12 = v35;
              v16[1].n128_u64[0] = v294;
              *v16 = v262;
            }
          }

LABEL_42:
          v44 = v12 + 24 * v15;
          v45 = (v44 - 24);
          v46 = *(v44 - 16);
          v47 = *(v44 - 8);
          v48 = *(v12 + 32);
          v49 = v47 < *(v12 + 40);
          v162 = v46 == v48;
          v50 = v46 < v48;
          if (!v162)
          {
            v49 = v50;
          }

          v51 = *(a2 - 5);
          v162 = v51 == v46;
          v52 = v51 < v46;
          if (v162)
          {
            v52 = *(a2 - 4) < v47;
          }

          if (v49)
          {
            if (v52)
            {
              v298 = *(v12 + 40);
              v266 = *(v12 + 24);
              v53 = *v10;
              *(v12 + 40) = *(a2 - 4);
              *(v12 + 24) = v53;
LABEL_65:
              *(a2 - 4) = v298;
              *v10 = v266;
              goto LABEL_66;
            }

            v302 = *(v12 + 40);
            v270 = *(v12 + 24);
            v64 = *v45;
            *(v12 + 40) = v45[1].n128_u64[0];
            *(v12 + 24) = v64;
            v45[1].n128_u64[0] = v302;
            *v45 = v270;
            v65 = *(a2 - 5);
            v66 = v45->n128_i64[1];
            v162 = v65 == v66;
            v67 = v65 < v66;
            if (v162)
            {
              v67 = *(a2 - 4) < v45[1].n128_f64[0];
            }

            if (v67)
            {
              v298 = v45[1].n128_i64[0];
              v266 = *v45;
              v68 = *v10;
              v45[1].n128_u64[0] = *(a2 - 4);
              *v45 = v68;
              goto LABEL_65;
            }
          }

          else if (v52)
          {
            v299 = v45[1].n128_i64[0];
            v267 = *v45;
            v54 = *v10;
            v45[1].n128_u64[0] = *(a2 - 4);
            *v45 = v54;
            *(a2 - 4) = v299;
            *v10 = v267;
            v55 = v45->n128_i64[1];
            v56 = *(v12 + 32);
            v162 = v55 == v56;
            v57 = v55 < v56;
            if (v162)
            {
              v57 = v45[1].n128_f64[0] < *(v12 + 40);
            }

            if (v57)
            {
              v300 = *(v12 + 40);
              v268 = *(v12 + 24);
              v58 = *v45;
              *(v12 + 40) = v45[1].n128_u64[0];
              *(v12 + 24) = v58;
              v45[1].n128_u64[0] = v300;
              *v45 = v268;
            }
          }

LABEL_66:
          v69 = v12 + 24 * v15;
          v70 = *(v69 + 32);
          v71 = *(v69 + 40);
          v72 = *(v12 + 56);
          v162 = v70 == v72;
          v73 = v70 < v72;
          if (v162)
          {
            v73 = v71 < *(v12 + 64);
          }

          v74 = *(a2 - 8);
          v162 = v74 == v70;
          v75 = v74 < v70;
          if (v162)
          {
            v75 = *(a2 - 7) < v71;
          }

          if (v73)
          {
            if (v75)
            {
              v303 = *(v12 + 64);
              v271 = *(v12 + 48);
              v76 = *v11;
              *(v12 + 64) = *(a2 - 7);
              *(v12 + 48) = v76;
LABEL_82:
              *(a2 - 7) = v303;
              *v11 = v271;
              goto LABEL_83;
            }

            v306 = *(v12 + 64);
            v274 = *(v12 + 48);
            v82 = *(v69 + 24);
            *(v12 + 64) = *(v69 + 40);
            *(v12 + 48) = v82;
            *(v69 + 40) = v306;
            *(v69 + 24) = v274;
            v83 = *(a2 - 8);
            v84 = *(v69 + 32);
            v162 = v83 == v84;
            v85 = v83 < v84;
            if (v162)
            {
              v85 = *(a2 - 7) < *(v69 + 40);
            }

            if (v85)
            {
              v303 = *(v69 + 40);
              v271 = *(v69 + 24);
              v86 = *v11;
              *(v69 + 40) = *(a2 - 7);
              *(v69 + 24) = v86;
              goto LABEL_82;
            }
          }

          else if (v75)
          {
            v304 = *(v69 + 40);
            v272 = *(v69 + 24);
            v77 = *v11;
            *(v69 + 40) = *(a2 - 7);
            *(v69 + 24) = v77;
            *(a2 - 7) = v304;
            *v11 = v272;
            v78 = *(v69 + 32);
            v79 = *(v12 + 56);
            v162 = v78 == v79;
            v80 = v78 < v79;
            if (v162)
            {
              v80 = *(v69 + 40) < *(v12 + 64);
            }

            if (v80)
            {
              v305 = *(v12 + 64);
              v273 = *(v12 + 48);
              v81 = *(v69 + 24);
              *(v12 + 64) = *(v69 + 40);
              *(v12 + 48) = v81;
              *(v69 + 40) = v305;
              *(v69 + 24) = v273;
            }
          }

LABEL_83:
          v87 = v16->n128_i64[1];
          v88 = v16[1].n128_f64[0];
          v89 = v45->n128_i64[1];
          v162 = v87 == v89;
          v90 = v87 < v89;
          if (v162)
          {
            v90 = v88 < v45[1].n128_f64[0];
          }

          v91 = *(v69 + 32);
          v162 = v91 == v87;
          v92 = v91 < v87;
          if (v162)
          {
            v92 = *(v69 + 40) < v88;
          }

          if (v90)
          {
            if (v92)
            {
              v307 = v45[1].n128_u64[0];
              v275 = *v45;
              *v45 = *(v69 + 24);
              v45[1].n128_u64[0] = *(v69 + 40);
LABEL_99:
              *(v69 + 40) = v307;
              *(v69 + 24) = v275;
              goto LABEL_100;
            }

            v310 = v45[1].n128_u64[0];
            v278 = *v45;
            *v45 = *v16;
            v45[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v310;
            *v16 = v278;
            v96 = *(v69 + 32);
            v97 = v16->n128_i64[1];
            v162 = v96 == v97;
            v98 = v96 < v97;
            if (v162)
            {
              v98 = *(v69 + 40) < v16[1].n128_f64[0];
            }

            if (v98)
            {
              v307 = v16[1].n128_u64[0];
              v275 = *v16;
              *v16 = *(v69 + 24);
              v16[1].n128_u64[0] = *(v69 + 40);
              goto LABEL_99;
            }
          }

          else if (v92)
          {
            v308 = v16[1].n128_u64[0];
            v276 = *v16;
            *v16 = *(v69 + 24);
            v16[1].n128_u64[0] = *(v69 + 40);
            *(v69 + 40) = v308;
            *(v69 + 24) = v276;
            v93 = v16->n128_i64[1];
            v94 = v45->n128_i64[1];
            v162 = v93 == v94;
            v95 = v93 < v94;
            if (v162)
            {
              v95 = v16[1].n128_f64[0] < v45[1].n128_f64[0];
            }

            if (v95)
            {
              v309 = v45[1].n128_u64[0];
              v277 = *v45;
              *v45 = *v16;
              v45[1].n128_u64[0] = v16[1].n128_u64[0];
              v16[1].n128_u64[0] = v309;
              *v16 = v277;
            }
          }

LABEL_100:
          v311 = *(v12 + 16);
          v279 = *v12;
          result = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = result;
          result.n128_u64[1] = v279.n128_u64[1];
          v16[1].n128_u64[0] = v311;
          *v16 = v279;
          --a3;
          if (a4)
          {
LABEL_60:
            v63 = *(v12 + 8);
            result.n128_u64[0] = *(v12 + 16);
            break;
          }

LABEL_101:
          v99 = *(v12 - 16);
          v63 = *(v12 + 8);
          result.n128_u64[0] = *(v12 + 16);
          v162 = v99 == v63;
          v100 = v99 < v63;
          if (v162)
          {
            v100 = *(v12 - 8) < result.n128_f64[0];
          }

          if (v100)
          {
            break;
          }

          v127 = *(a2 - 2);
          v162 = v63 == v127;
          v128 = v63 < v127;
          if (v162)
          {
            v128 = result.n128_f64[0] < *(a2 - 1);
          }

          if (v128)
          {
            v129 = v12;
            do
            {
              v12 = v129 + 24;
              v130 = *(v129 + 32);
              v131 = result.n128_f64[0] < *(v129 + 40);
              v162 = v63 == v130;
              v132 = v63 < v130;
              if (v162)
              {
                v132 = v131;
              }

              v129 = v12;
            }

            while (!v132);
          }

          else
          {
            v133 = v12 + 24;
            do
            {
              v12 = v133;
              if (v133 >= a2)
              {
                break;
              }

              v134 = *(v133 + 8);
              v135 = result.n128_f64[0] < *(v12 + 16);
              v162 = v63 == v134;
              v136 = v63 < v134;
              if (!v162)
              {
                v135 = v136;
              }

              v133 = v12 + 24;
            }

            while (!v135);
          }

          v137 = a2;
          if (v12 < a2)
          {
            v138 = a2;
            do
            {
              v137 = v138 - 3;
              v139 = *(v138 - 2);
              v140 = result.n128_f64[0] < *(v138 - 1);
              v162 = v63 == v139;
              v141 = v63 < v139;
              if (v162)
              {
                v141 = v140;
              }

              v138 = v137;
            }

            while (v141);
          }

          v142 = *a1;
          while (v12 < v137)
          {
            v313 = *(v12 + 16);
            v281 = *v12;
            v143 = *v137;
            *(v12 + 16) = v137[2];
            *v12 = v143;
            v137[2] = v313;
            *v137 = v281;
            do
            {
              v144 = *(v12 + 32);
              v145 = *(v12 + 40);
              v12 += 24;
              v162 = v63 == v144;
              v146 = v63 < v144;
              if (v162)
              {
                v146 = result.n128_f64[0] < v145;
              }
            }

            while (!v146);
            do
            {
              v147 = *(v137 - 2);
              v148 = *(v137 - 1);
              v137 -= 3;
              v162 = v63 == v147;
              v149 = v63 < v147;
              if (v162)
              {
                v149 = result.n128_f64[0] < v148;
              }
            }

            while (v149);
          }

          if (v12 - 24 != a1)
          {
            v150 = *(v12 - 24);
            *(a1 + 16) = *(v12 - 8);
            *a1 = v150;
          }

          a4 = 0;
          *(v12 - 24) = v142;
          *(v12 - 16) = v63;
          *(v12 - 8) = result.n128_u64[0];
        }

        v101 = 0;
        v102 = *v12;
        do
        {
          v103 = *(v12 + v101 + 32);
          v104 = *(v12 + v101 + 40) < result.n128_f64[0];
          v162 = v103 == v63;
          v105 = v103 < v63;
          if (!v162)
          {
            v104 = v105;
          }

          v101 += 24;
        }

        while (v104);
        v106 = v12 + v101;
        v107 = a2;
        if (v101 == 24)
        {
          v112 = a2;
          while (v106 < v112)
          {
            v108 = v112 - 3;
            v113 = *(v112 - 2);
            v114 = *(v112 - 1) < result.n128_f64[0];
            v162 = v113 == v63;
            v115 = v113 < v63;
            if (v162)
            {
              v115 = v114;
            }

            v112 = v108;
            if (v115)
            {
              goto LABEL_118;
            }
          }

          v108 = v112;
          v12 = v106;
        }

        else
        {
          do
          {
            v108 = v107 - 3;
            v109 = *(v107 - 2);
            v110 = *(v107 - 1) < result.n128_f64[0];
            v162 = v109 == v63;
            v111 = v109 < v63;
            if (v162)
            {
              v111 = v110;
            }

            v107 = v108;
          }

          while (!v111);
LABEL_118:
          v12 = v106;
          if (v106 < v108)
          {
            v116 = v108;
            do
            {
              v312 = *(v12 + 16);
              v280 = *v12;
              v117 = *v116;
              *(v12 + 16) = *(v116 + 16);
              *v12 = v117;
              *(v116 + 16) = v312;
              *v116 = v280;
              do
              {
                v118 = *(v12 + 32);
                v119 = *(v12 + 40);
                v12 += 24;
                v162 = v118 == v63;
                v120 = v118 < v63;
                if (v162)
                {
                  v120 = v119 < result.n128_f64[0];
                }
              }

              while (v120);
              do
              {
                v121 = *(v116 - 16);
                v122 = *(v116 - 8);
                v116 -= 24;
                v162 = v121 == v63;
                v123 = v121 < v63;
                if (v162)
                {
                  v123 = v122 < result.n128_f64[0];
                }
              }

              while (!v123);
            }

            while (v12 < v116);
          }
        }

        if (v12 - 24 != a1)
        {
          v124 = *(v12 - 24);
          *(a1 + 16) = *(v12 - 8);
          *a1 = v124;
        }

        *(v12 - 24) = v102;
        *(v12 - 16) = v63;
        *(v12 - 8) = result.n128_u64[0];
        if (v106 >= v108)
        {
          break;
        }

LABEL_133:
        a4 = 0;
      }

      {
        break;
      }

      if ((v125 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    a2 = (v12 - 24);
    if ((v125 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnFingerprint *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_i64[1];
  v6 = a2[1].n128_f64[0];
  v7 = a1->n128_i64[1];
  v8 = v5 == v7;
  v9 = v5 < v7;
  if (v8)
  {
    v9 = v6 < a1[1].n128_f64[0];
  }

  v10 = a3->n128_i64[1];
  v8 = v10 == v5;
  v11 = v10 < v5;
  if (v8)
  {
    v11 = a3[1].n128_f64[0] < v6;
  }

  if (v9)
  {
    if (v11)
    {
      v12 = a1[1].n128_u64[0];
      result = *a1;
      v13 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v13;
LABEL_17:
      *a3 = result;
      a3[1].n128_u64[0] = v12;
      goto LABEL_18;
    }

    v21 = a1[1].n128_u64[0];
    result = *a1;
    v22 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v22;
    *a2 = result;
    a2[1].n128_u64[0] = v21;
    v23 = a3->n128_i64[1];
    v24 = a2->n128_i64[1];
    v8 = v23 == v24;
    v25 = v23 < v24;
    if (v8)
    {
      v25 = a3[1].n128_f64[0] < a2[1].n128_f64[0];
    }

    if (v25)
    {
      v12 = a2[1].n128_u64[0];
      result = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    v14 = a2[1].n128_u64[0];
    result = *a2;
    v15 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v15;
    *a3 = result;
    a3[1].n128_u64[0] = v14;
    v16 = a2->n128_i64[1];
    v17 = a1->n128_i64[1];
    v8 = v16 == v17;
    v18 = v16 < v17;
    if (v8)
    {
      v18 = a2[1].n128_f64[0] < a1[1].n128_f64[0];
    }

    if (v18)
    {
      v19 = a1[1].n128_u64[0];
      result = *a1;
      v20 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v20;
      *a2 = result;
      a2[1].n128_u64[0] = v19;
    }
  }

LABEL_18:
  v27 = a4->n128_i64[1];
  result.n128_u64[0] = a4[1].n128_u64[0];
  v28 = a3->n128_i64[1];
  v8 = v27 == v28;
  v29 = v27 < v28;
  if (v8)
  {
    v29 = result.n128_f64[0] < a3[1].n128_f64[0];
  }

  if (v29)
  {
    v30 = a3[1].n128_u64[0];
    result = *a3;
    v31 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v31;
    *a4 = result;
    a4[1].n128_u64[0] = v30;
    v32 = a3->n128_i64[1];
    result.n128_u64[0] = a3[1].n128_u64[0];
    v33 = a2->n128_i64[1];
    v8 = v32 == v33;
    v34 = v32 < v33;
    if (v8)
    {
      v34 = result.n128_f64[0] < a2[1].n128_f64[0];
    }

    if (v34)
    {
      v35 = a2[1].n128_u64[0];
      result = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = result;
      a3[1].n128_u64[0] = v35;
      v37 = a2->n128_i64[1];
      result.n128_u64[0] = a2[1].n128_u64[0];
      v38 = a1->n128_i64[1];
      v8 = v37 == v38;
      v39 = v37 < v38;
      if (v8)
      {
        v39 = result.n128_f64[0] < a1[1].n128_f64[0];
      }

      if (v39)
      {
        v40 = a1[1].n128_u64[0];
        result = *a1;
        v41 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v41;
        *a2 = result;
        a2[1].n128_u64[0] = v40;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnFingerprint *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v34 = (a2 - 3);
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v37 = *(a1 + 8);
        v6 = v35 == v37;
        v38 = v35 < v37;
        if (v6)
        {
          v38 = v36 < *(a1 + 16);
        }

        v39 = *(a2 - 2);
        v6 = v39 == v35;
        v40 = v39 < v35;
        if (v6)
        {
          v40 = *(a2 - 1) < v36;
        }

        if (!v38)
        {
          if (v40)
          {
            v55 = *(a1 + 40);
            v56 = *(a1 + 24);
            v57 = *(a2 - 1);
            *(a1 + 24) = *v34;
            *(a1 + 40) = v57;
            *v34 = v56;
            *(a2 - 1) = v55;
            v58 = *(a1 + 32);
            v59 = *(a1 + 8);
            v6 = v58 == v59;
            v60 = v58 < v59;
            if (v6)
            {
              v60 = *(a1 + 40) < *(a1 + 16);
            }

            if (v60)
            {
              v61 = *(a1 + 16);
              v62 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v62;
              *(a1 + 40) = v61;
            }
          }

          return 1;
        }

        if (v40)
        {
          v41 = *(a1 + 16);
          v42 = *a1;
          v43 = *(a2 - 1);
          *a1 = *v34;
          *(a1 + 16) = v43;
        }

        else
        {
          v69 = *(a1 + 16);
          v70 = *(a1 + 24);
          *(a1 + 24) = *a1;
          v71 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *a1 = v70;
          *(a1 + 40) = v69;
          v72 = *(a2 - 2);
          v6 = v72 == v71;
          v73 = v72 < v71;
          if (v6)
          {
            v73 = *(a2 - 1) < *(a1 + 40);
          }

          if (!v73)
          {
            return 1;
          }

          v41 = *(a1 + 40);
          v42 = *(a1 + 24);
          v74 = *(a2 - 1);
          *(a1 + 24) = *v34;
          *(a1 + 40) = v74;
        }

        *v34 = v42;
        *(a2 - 1) = v41;
        break;
      case 4:
        break;
      case 5:
        v13 = *(a2 - 2);
        v14 = *(a1 + 80);
        v6 = v13 == v14;
        v15 = v13 < v14;
        if (v6)
        {
          v15 = *(a2 - 1) < *(a1 + 88);
        }

        if (v15)
        {
          v16 = *(a1 + 88);
          v17 = *(a1 + 72);
          v18 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v18;
          *(a2 - 3) = v17;
          *(a2 - 1) = v16;
          v19 = *(a1 + 80);
          v20 = *(a1 + 56);
          v6 = v19 == v20;
          v21 = v19 < v20;
          if (v6)
          {
            v21 = *(a1 + 88) < *(a1 + 64);
          }

          if (v21)
          {
            v22 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            v24 = *(a1 + 56);
            v23 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v22;
            *(a1 + 88) = v23;
            v25 = *(a1 + 32);
            v6 = v24 == v25;
            v26 = v24 < v25;
            if (v6)
            {
              v26 = *(a1 + 64) < *(a1 + 40);
            }

            if (v26)
            {
              v27 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              v29 = *(a1 + 32);
              v28 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v27;
              *(a1 + 64) = v28;
              v30 = *(a1 + 8);
              v6 = v29 == v30;
              v31 = v29 < v30;
              if (v6)
              {
                v31 = *(a1 + 40) < *(a1 + 16);
              }

              if (v31)
              {
                v32 = *(a1 + 16);
                v33 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v33;
                *(a1 + 40) = v32;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 2);
    v5 = *(a1 + 8);
    v6 = v4 == v5;
    v7 = v4 < v5;
    if (v6)
    {
      v7 = *(a2 - 1) < *(a1 + 16);
    }

    if (v7)
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v10;
      *(a2 - 3) = v9;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_31:
  v44 = (a1 + 48);
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  v47 = *(a1 + 8);
  v48 = *(a1 + 16);
  v49 = v45 < v47;
  if (v45 == v47)
  {
    v49 = v46 < v48;
  }

  v50 = *(a1 + 56);
  v51 = *(a1 + 64);
  v6 = v50 == v45;
  v52 = v50 < v45;
  if (v6)
  {
    v52 = v51 < v46;
  }

  if (!v49)
  {
    if (v52)
    {
      v63 = *(a1 + 24);
      *(a1 + 24) = *v44;
      v65 = *(a1 + 32);
      v64 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v44 = v63;
      *(a1 + 64) = v64;
      v6 = v65 == v47;
      v66 = v65 < v47;
      if (v6)
      {
        v66 = *(a1 + 40) < v48;
      }

      if (v66)
      {
        v67 = *(a1 + 16);
        v68 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v68;
        *(a1 + 40) = v67;
      }
    }

    goto LABEL_60;
  }

  if (v52)
  {
    v53 = *(a1 + 16);
    v54 = *a1;
    *a1 = *v44;
    *(a1 + 16) = *(a1 + 64);
  }

  else
  {
    v76 = *(a1 + 16);
    v77 = *(a1 + 24);
    *(a1 + 24) = *a1;
    v78 = *(a1 + 32);
    *(a1 + 16) = *(a1 + 40);
    *a1 = v77;
    *(a1 + 40) = v76;
    v79 = v51 < *(a1 + 40);
    v6 = v50 == v78;
    v80 = v50 < v78;
    if (!v6)
    {
      v79 = v80;
    }

    if (!v79)
    {
      goto LABEL_60;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 24);
    *(a1 + 24) = *v44;
    *(a1 + 40) = *(a1 + 64);
  }

  *v44 = v54;
  *(a1 + 64) = v53;
LABEL_60:
  v81 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_74:
    v96 = 1;
  }

  else
  {
    v82 = 0;
    v83 = 0;
    while (1)
    {
      v84 = *(v81 + 1);
      v85 = v81[2];
      v86 = *(v44 + 1);
      v87 = v85 < v44[2];
      v6 = v84 == v86;
      v88 = v84 < v86;
      if (!v6)
      {
        v87 = v88;
      }

      if (v87)
      {
        break;
      }

LABEL_63:
      v44 = v81;
      v82 += 24;
      v81 += 3;
      if (v81 == a2)
      {
        goto LABEL_74;
      }
    }

    v89 = *v81;
    v90 = v82;
    do
    {
      v91 = a1 + v90;
      *(v91 + 72) = *(a1 + v90 + 48);
      *(v91 + 88) = *(a1 + v90 + 64);
      if (v90 == -48)
      {
        *a1 = v89;
        *(a1 + 8) = v84;
        *(a1 + 16) = v85;
        if (++v83 != 8)
        {
          goto LABEL_63;
        }

        goto LABEL_73;
      }

      v92 = *(v91 + 32);
      v93 = v85 < *(v91 + 40);
      v6 = v84 == v92;
      v94 = v84 < v92;
      if (!v6)
      {
        v93 = v94;
      }

      v90 -= 24;
    }

    while (v93);
    v95 = a1 + v90;
    *(v95 + 72) = v89;
    *(v95 + 80) = v84;
    *(v95 + 88) = v85;
    if (++v83 != 8)
    {
      goto LABEL_63;
    }

LABEL_73:
    v96 = 0;
    LODWORD(v81) = v81 + 3 == a2;
  }

  return (v96 | v81) & 1;
}

void operations_research::glop::LinearProgramToMPModelProto(operations_research::glop *this, const operations_research::glop::LinearProgram *a2, operations_research::MPModelProto *a3)
{
  operations_research::MPModelProto::Clear(a2);
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>(a2 + 15, (this + 416), v5);
  *(a2 + 152) = *(this + 408);
  v6 = *(a2 + 4);
  *(a2 + 18) = *(this + 49);
  *(a2 + 4) = v6 | 0x18;
  if ((-1431655765 * ((*(this + 1) - *this) >> 4)) >= 1)
  {
    v7 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::MPVariableProto>);
      *(v9 + 48) = *(*(this + 20) + 8 * v7);
      v10 = *(v9 + 16);
      *(v9 + 56) = *(*(this + 23) + 8 * v7);
      *(v9 + 16) = v10 | 0x30;
      operations_research::glop::LinearProgram::GetVariableName(this, v7, &__p);
      *(v9 + 16) |= 1u;
      v11 = *(v9 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v9 + 24), &__p, v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(v9 + 40) = operations_research::glop::LinearProgram::IsVariableInteger(this, v7);
      v8 = *(v9 + 16);
      *(v9 + 32) = *(*(this + 17) + 8 * v7);
      *(v9 + 16) = v8 | 6;
      ++v7;
    }

    while (v7 < (-1431655765 * ((*(this + 1) - *this) >> 4)));
  }

  operations_research::glop::SparseMatrix::SparseMatrix(&__p);
  operations_research::glop::SparseMatrix::PopulateFromTranspose<operations_research::glop::SparseMatrix>(&__p, this);
  if (*(this + 6) >= 1)
  {
    for (i = 0; i < *(this + 6); ++i)
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>);
      v14 = 8 * i;
      *(v13 + 80) = *(*(this + 8) + v14);
      v15 = *(v13 + 16);
      *(v13 + 88) = *(*(this + 11) + v14);
      *(v13 + 16) = v15 | 0xC;
      operations_research::glop::LinearProgram::GetConstraintName(this, i, &v35);
      *(v13 + 16) |= 1u;
      v16 = *(v13 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((v13 + 64), &v35, v16);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
        v17 = (__p.__r_.__value_.__r.__words[0] + 48 * i);
        v18 = v17[1];
        if (v18 >= 1)
        {
LABEL_19:
          v19 = v17[3];
          v20 = v17[4];
          do
          {
            v22 = *v19++;
            v21 = v22;
            v24 = *(v13 + 24);
            v23 = *(v13 + 28);
            if (v24 == v23)
            {
              google::protobuf::RepeatedField<int>::Grow(v13 + 24, v23, (v23 + 1));
              v24 = *(v13 + 24);
            }

            v25 = *(v13 + 32);
            *(v13 + 24) = v24 + 1;
            *(v25 + 4 * v24) = v21;
            v26 = *v20;
            v28 = *(v13 + 48);
            v27 = *(v13 + 52);
            if (v28 == v27)
            {
              google::protobuf::RepeatedField<long long>::Grow(v13 + 48, v27);
              v28 = *(v13 + 48);
            }

            v29 = *(v13 + 56);
            *(v13 + 48) = v28 + 1;
            *(v29 + 8 * v28) = v26;
            ++v20;
            --v18;
          }

          while (v18);
        }
      }

      else
      {
        v17 = (__p.__r_.__value_.__r.__words[0] + 48 * i);
        v18 = v17[1];
        if (v18 >= 1)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v30 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    size = __p.__r_.__value_.__l.__size_;
    v32 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v34 = *(size - 6);
        size -= 6;
        v33 = v34;
        *size = 0;
        if (v34)
        {
          MEMORY[0x23EED9440](v33, 0x1000C8077774924);
        }
      }

      while (size != v30);
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v30;
    operator delete(v32);
  }
}

void sub_23CC6FC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::glop::SparseMatrix::~SparseMatrix(va);
  _Unwind_Resume(a1);
}

void sub_23CC6FC4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23CC6FC3CLL);
}

void sub_23CC6FC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23CC6FC44);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPVariableProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    v3 = 0;
  }

  return operations_research::MPVariableProto::MPVariableProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::MPConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x60uLL);
    v3 = 0;
  }

  return operations_research::MPConstraintProto::MPConstraintProto(v2, v3);
}

void operations_research::glop::SparseMatrix::PopulateFromTranspose<operations_research::glop::SparseMatrix>(void *a1, uint64_t *a2)
{
  operations_research::glop::SparseMatrix::Reset(a1, *(a2 + 6), -1431655765 * ((a2[1] - *a2) >> 4));
  v25 = a2;
  v4 = *(a2 + 6);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v6 + 48 * v8;
      v10 = *(v9 + 8);
      if (v10 >= 1)
      {
        v11 = *(v9 + 24);
        do
        {
          v12 = *v11++;
          ++*(8 * v12);
          --v10;
        }

        while (v10);
      }

      ++v8;
    }

    while (v8 != (v7 & 0x7FFFFFFF));
  }

  if (*(a2 + 6) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (*(*a1 + v13 + 16) < *(8 * v14))
      {
        operator new[]();
      }

      ++v14;
      v13 += 48;
    }

    while (v14 < *(v25 + 6));
    v6 = *v25;
    v5 = v25[1];
    LODWORD(v7) = -1431655765 * ((v5 - *v25) >> 4);
  }

  if (v7 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = (v6 + 48 * v15);
      v17 = v16[1];
      if (v17 >= 1)
      {
        v18 = v16[3];
        v19 = v16[4];
        do
        {
          v21 = *v18++;
          v22 = *a1 + 48 * v21;
          v23 = *v19;
          v24 = *(v22 + 8);
          if (v24 == *(v22 + 16) && (!v24 || v24 < 2 * v24))
          {
            operator new[]();
          }

          v20 = *(v22 + 32);
          *(*(v22 + 24) + 4 * v24) = v15;
          *(v22 + 8) = v24 + 1;
          *(v20 + 8 * v24) = v23;
          *(v22 + 40) = 1;
          ++v19;
          --v17;
        }

        while (v17);
        v6 = *v25;
        v5 = v25[1];
      }

      ++v15;
    }

    while (v15 < (-1431655765 * ((v5 - v6) >> 4)));
  }
}

uint64_t operations_research::glop::SparseMatrix::Reset(uint64_t result, int a2, int a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(result + 8);
  v8 = *result;
  if (v7 != *result)
  {
    do
    {
      v9 = *(v7 - 6);
      v7 -= 6;
      result = v9;
      *v7 = 0;
      if (v9)
      {
        result = MEMORY[0x23EED9440](result, 0x1000C8077774924);
      }
    }

    while (v7 != v6);
    v8 = *v5;
  }

  *(v5 + 8) = v6;
  *(v5 + 24) = 0;
  memset(v13, 0, 41);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 4);
  if (a2 <= v10)
  {
    if (a2 < v10)
    {
      v11 = (v8 + 48 * a2);
      while (v6 != v11)
      {
        v12 = *(v6 - 6);
        v6 -= 6;
        result = v12;
        *v6 = 0;
        if (v12)
        {
          result = MEMORY[0x23EED9440](result, 0x1000C8077774924);
        }
      }

      *(v5 + 8) = v11;
    }
  }

  else
  {
    std::vector<operations_research::glop::SparseColumn>::__append(v5, a2 - v10, v13);
    result = *&v13[0];
    *&v13[0] = 0;
    if (result)
    {
      result = MEMORY[0x23EED9440](result, 0x1000C8077774924);
    }
  }

  *(v5 + 24) = a3;
  return result;
}

void sub_23CC70230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x23EED9440](a9, v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::SparseMatrix::SparseMatrix(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

void *operations_research::glop::SparseMatrix::Clear(void *this)
{
  v1 = this;
  v2 = *this;
  v3 = this[1];
  if (v3 != *this)
  {
    do
    {
      v4 = *(v3 - 6);
      v3 -= 6;
      this = v4;
      *v3 = 0;
      if (v4)
      {
        this = MEMORY[0x23EED9440](this, 0x1000C8077774924);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  *(v1 + 6) = 0;
  return this;
}

void operations_research::glop::SparseMatrix::CleanUp(operations_research::glop::SparseMatrix *this, __n128 a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0x7FFFFFFF;
    do
    {
      operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(*this + v4, a2);
      v4 += 48;
      --v5;
    }

    while (v5);
  }
}

void operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!(v3 >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(0, 0, &v12, 0, 0, 0, a2);
  v4 = *(a1 + 8);
  if (v4 < 1)
  {
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      v9 = (16 * v5);
      v10 = *(16 * v5 + 8);
      v5 = v7;
      if (v10 != 0.0)
      {
        v11 = *v9;
        if (v4 == v5 || v11 != *(16 * v5))
        {
          v8 = *(a1 + 32);
          *(*(a1 + 24) + 4 * v6) = v11;
          *(v8 + 8 * v6++) = v10;
        }
      }

      v7 = v5 + 1;
    }

    while (v4 > v5);
    *(a1 + 8) = v6;
    *(a1 + 40) = 0;
    operator delete(0);
  }
}

void sub_23CC705EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::SparseMatrix::IsCleanedUp(operations_research::glop::SparseMatrix *this)
{
  v1 = *this;
  v2 = -1431655765 * ((*(this + 1) - *this) >> 4);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 & 0x7FFFFFFF;
  do
  {
    v6 = v1 + 48 * v3;
    v7 = *(v6 + 8);
    if (v7 >= 1)
    {
      v8 = *(v6 + 24);
      v9 = *v8;
      if (*v8 < 0)
      {
        return v4;
      }

      v10 = *(v6 + 32);
      if (*v10 == 0.0)
      {
        return v4;
      }

      v11 = 1;
      while (v7 != v11)
      {
        v12 = v11;
        v13 = v8[v11];
        if (v13 > v9)
        {
          v14 = v10[v11++];
          v9 = v13;
          if (v14 != 0.0)
          {
            continue;
          }
        }

        if (v12 >= v7)
        {
          goto LABEL_4;
        }

        return v4;
      }
    }

    *(v6 + 40) = 0;
LABEL_4:
    v4 = ++v3 >= v5;
  }

  while (v3 != v5);
  return v4;
}

uint64_t operations_research::glop::SparseMatrix::AppendEmptyColumn(operations_research::glop::SparseMatrix *this)
{
  v3 = *this;
  v2 = *(this + 1);
  memset(v9, 0, 41);
  if (v2 >= *(this + 2))
  {
    v6 = std::vector<operations_research::glop::SparseColumn>::__emplace_back_slow_path<operations_research::glop::SparseColumn>(this, v9);
    v7 = *&v9[0];
    *(this + 1) = v6;
    *&v9[0] = 0;
    if (v7)
    {
      MEMORY[0x23EED9440](v7, 0x1000C8077774924);
    }
  }

  else
  {
    *v2 = 0;
    v4 = *(v9 + 8);
    v5 = *(&v9[1] + 8);
    *(v2 + 40) = BYTE8(v9[2]);
    *(v2 + 24) = v5;
    *(v2 + 8) = v4;
    *(this + 1) = v2 + 48;
  }

  return -1431655765 * ((v2 - v3) >> 4);
}

void sub_23CC707B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x23EED9440](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *operations_research::glop::SparseMatrix::Swap(uint64_t *this, operations_research::glop::SparseMatrix *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  return this;
}

uint64_t operations_research::glop::SparseMatrix::PopulateFromSparseMatrix(operations_research::glop::SparseMatrix *this, const operations_research::glop::SparseMatrix *a2)
{
  result = operations_research::glop::SparseMatrix::Reset(this, 0, *(a2 + 6));
  if (this != a2)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);

    return std::vector<operations_research::glop::SparseColumn>::__assign_with_size[abi:ne200100]<operations_research::glop::SparseColumn*,operations_research::glop::SparseColumn*>(this, v5, v6, v7);
  }

  return result;
}

void operations_research::glop::SparseMatrix::DeleteColumns(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a2;
    v10 = v4 + 24;
    do
    {
      if (v7 >= v2 || ((*(v9 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v11 = v4 + 48 * v8;
        v12 = *(v10 - 24);
        *(v10 - 24) = *v11;
        *v11 = v12;
        v13 = *(v10 - 16);
        v14 = *v10;
        v15 = *(v11 + 24);
        *(v10 - 16) = *(v11 + 8);
        *(v11 + 8) = v13;
        LOBYTE(v12) = *(v10 + 16);
        *(v10 + 16) = *(v11 + 40);
        *(v11 + 40) = v12;
        *v10 = v15;
        *(v11 + 24) = v14;
        LODWORD(v8) = v8 + 1;
      }

      ++v7;
      v10 += 48;
    }

    while ((v6 & 0x7FFFFFFF) != v7);
    v8 = v8;
    if (v8 > v6)
    {

      std::vector<operations_research::glop::SparseColumn>::__append(a1, v8 - v6);
      return;
    }
  }

  if (v6 > v8)
  {
    v16 = (v4 + 48 * v8);
    while (v5 != v16)
    {
      v18 = *(v5 - 6);
      v5 -= 6;
      v17 = v18;
      *v5 = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v17, 0x1000C8077774924);
      }
    }

    a1[1] = v16;
  }
}

uint64_t *operations_research::glop::SparseMatrix::DeleteRows(uint64_t *result, int a2, uint64_t *a3)
{
  v3 = *result;
  v4 = -1431655765 * ((result[1] - *result) >> 4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *a3;
    v7 = v4 & 0x7FFFFFFF;
    do
    {
      v9 = (v3 + 48 * v5);
      v10 = v9[1];
      if (v10 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v11 = 0;
        v12 = v9[3];
        do
        {
          v13 = *(v6 + 4 * *(v12 + 4 * v11));
          if ((v13 & 0x80000000) == 0)
          {
            *(v12 + 4 * v8) = v13;
            *(v9[4] + 8 * v8++) = *(v9[4] + 8 * v11);
          }

          ++v11;
        }

        while (v10 != v11);
      }

      v9[1] = v8;
      ++v5;
    }

    while (v5 != v7);
  }

  *(result + 6) = a2;
  return result;
}

void operations_research::glop::SparseMatrix::ComputeMinAndMaxMagnitudes(operations_research::glop::SparseMatrix *this, double *a2, double *a3)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 378, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "min_magnitude", 0xDuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " == NULL", 8uLL);
LABEL_20:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
    return;
  }

  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 379, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "max_magnitude", 0xDuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " == NULL", 8uLL);
    goto LABEL_20;
  }

  *a2 = INFINITY;
  *a3 = 0.0;
  v3 = *this;
  v4 = -1431655765 * ((*(this + 1) - *this) >> 4);
  if (v4 < 1)
  {
    goto LABEL_16;
  }

  v5 = 0;
  v6 = v4 & 0x7FFFFFFF;
  v7 = 0.0;
  do
  {
    v8 = v3 + 48 * v5;
    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = *(v8 + 32);
      do
      {
        if (*v10 != 0.0)
        {
          v7 = fabs(*v10);
          v11 = *a2;
          if (v7 < *a2)
          {
            v11 = v7;
          }

          *a2 = v11;
          if (*a3 >= v7)
          {
            v7 = *a3;
          }

          *a3 = v7;
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v5;
  }

  while (v5 != v6);
  if (v7 == 0.0)
  {
LABEL_16:
    *a2 = 0.0;
  }
}

uint64_t operations_research::glop::SparseMatrix::num_entries(operations_research::glop::SparseMatrix *this)
{
  v1 = *this;
  v2 = -1431655765 * ((*(this + 1) - *this) >> 4);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  if (v3 < 2)
  {
    v4 = 0;
    result = 0;
LABEL_8:
    v13 = v3 - v4;
    v14 = (v1 + 48 * v4 + 8);
    do
    {
      v15 = *v14;
      v14 += 6;
      result += v15;
      --v13;
    }

    while (v13);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = v2 & 1;
  v4 = v3 - v8;
  v9 = (v1 + 56);
  v10 = v3 - v8;
  do
  {
    v11 = *(v9 - 6);
    v12 = *v9;
    v9 += 12;
    v6 += v11;
    v7 += v12;
    v10 -= 2;
  }

  while (v10);
  result = v7 + v6;
  if (v8)
  {
    goto LABEL_8;
  }

  return result;
}

void operations_research::glop::CompactSparseMatrix::PopulateFromMatrixView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16) - v4;
  *(a1 + 4) = v5 >> 3;
  *a1 = *a2;
  if ((v5 >> 3) < 1)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v6 = (v5 >> 3) & 0x7FFFFFFF;
  if (v6 < 2)
  {
    v7 = 0;
    v8 = 0;
LABEL_8:
    v14 = v7 - v6;
    v15 = (v4 + 8 * v7);
    do
    {
      v16 = *v15++;
      v8 += *(v16 + 8);
    }

    while (!__CFADD__(v14++, 1));
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 0;
  v11 = (v5 >> 3) & 1;
  v7 = v6 - v11;
  v12 = v4 + 8;
  v13 = v6 - v11;
  do
  {
    v9 += *(*(v12 - 8) + 8);
    v10 += *(*v12 + 8);
    v12 += 16;
    v13 -= 2;
  }

  while (v13);
  v8 = v10 + v9;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_11:
  *__u = 0;
  std::vector<long long>::assign((a1 + 56), ((v5 << 29) + 0x100000000) >> 32, __u);
  *__u = 0;
  std::vector<double>::assign((a1 + 8), v8, __u);
  __u[0] = 0;
  std::vector<int>::assign((a1 + 32), v8, __u);
  v18 = *(a2 + 8);
  v19 = *(a2 + 16) - v18;
  v20 = *(a1 + 56);
  if ((v19 >> 3) >= 1)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = 8 * v21;
      *(v20 + v23) = v22;
      v24 = *(v18 + v23);
      v25 = v24[1];
      if (v25 >= 1)
      {
        v27 = v24[3];
        v26 = v24[4];
        v28 = *(a1 + 8);
        v29 = *(a1 + 32);
        if (v25 > 7)
        {
          v30 = 0;
          v35 = 8 * v22;
          if ((8 * v22 + v28 - v26) >= 0x40)
          {
            v36 = 4 * v22;
            if ((4 * v22 + v29 - v27) >= 0x20)
            {
              v30 = v25 & 0x7FFFFFFFFFFFFFF8;
              v22 += v25 & 0x7FFFFFFFFFFFFFF8;
              v37 = (v26 + 32);
              v38 = (v29 + v36 + 16);
              v39 = (v27 + 16);
              v40 = (v28 + v35 + 32);
              v41 = v25 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v43 = *(v37 - 2);
                v42 = *(v37 - 1);
                v45 = *v37;
                v44 = v37[1];
                v37 += 4;
                *(v40 - 2) = v43;
                *(v40 - 1) = v42;
                *v40 = v45;
                v40[1] = v44;
                v40 += 4;
                v46 = *v39;
                *(v38 - 1) = *(v39 - 1);
                *v38 = v46;
                v38 += 2;
                v39 += 2;
                v41 -= 8;
              }

              while (v41);
              if (v25 == v30)
              {
                goto LABEL_13;
              }
            }
          }
        }

        else
        {
          v30 = 0;
        }

        v31 = (v26 + 8 * v30);
        v32 = v25 - v30;
        v33 = (v27 + 4 * v30);
        do
        {
          v34 = *v31++;
          *(v28 + 8 * v22) = v34;
          LODWORD(v34) = *v33++;
          *(v29 + 4 * v22++) = v34;
          --v32;
        }

        while (v32);
      }

LABEL_13:
      if (++v21 == ((v19 >> 3) & 0x7FFFFFFF))
      {
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
LABEL_27:
  *(v20 + (((v19 << 29) >> 29) & 0xFFFFFFFFFFFFFFF8)) = v22;
}

void operations_research::glop::CompactSparseMatrix::PopulateFromSparseMatrixAndAddSlacks(operations_research::glop::CompactSparseMatrix *this, const operations_research::glop::SparseMatrix *a2)
{
  v4 = *a2;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v6 = *(a2 + 6) - 1431655765 * ((*(a2 + 1) - *a2) >> 4);
  *(this + 1) = v6;
  v7 = *(a2 + 6);
  *this = v7;
  if (v5 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = v5 & 0x7FFFFFFF;
  if (v8 < 2)
  {
    v9 = 0;
    v10 = 0;
LABEL_8:
    v18 = v8 - v9;
    v19 = (v4 + 48 * v9 + 8);
    do
    {
      v20 = *v19;
      v19 += 6;
      v10 += v20;
      --v18;
    }

    while (v18);
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  v13 = v5 & 1;
  v9 = v8 - v13;
  v14 = (v4 + 56);
  v15 = v8 - v13;
  do
  {
    v16 = *(v14 - 6);
    v17 = *v14;
    v14 += 12;
    v11 += v16;
    v12 += v17;
    v15 -= 2;
  }

  while (v15);
  v10 = v12 + v11;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_10:
  *__u = 0;
  std::vector<long long>::assign(this + 7, v6 + 1, __u);
  *__u = 0;
  std::vector<double>::assign(this + 1, v10 + v7, __u);
  __u[0] = 0;
  std::vector<int>::assign((this + 32), v10 + v7, __u);
  v21 = *a2;
  v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v23 = *(this + 7);
  if (v22 >= 1)
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      *(v23 + 8 * v24) = v25;
      v26 = (v21 + 48 * v24);
      v27 = v26[1];
      if (v27 >= 1)
      {
        v28 = v26[3];
        v29 = v26[4];
        v30 = *(this + 1);
        v31 = *(this + 4);
        if (v27 > 7)
        {
          v32 = 0;
          v37 = 8 * v25;
          if ((8 * v25 + v30 - v29) >= 0x40)
          {
            v38 = 4 * v25;
            if ((4 * v25 + v31 - v28) >= 0x20)
            {
              v32 = v27 & 0x7FFFFFFFFFFFFFF8;
              v25 += v27 & 0x7FFFFFFFFFFFFFF8;
              v39 = (v29 + 32);
              v40 = (v31 + v38 + 16);
              v41 = (v28 + 16);
              v42 = (v30 + v37 + 32);
              v43 = v27 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v45 = *(v39 - 2);
                v44 = *(v39 - 1);
                v47 = *v39;
                v46 = v39[1];
                v39 += 4;
                *(v42 - 2) = v45;
                *(v42 - 1) = v44;
                *v42 = v47;
                v42[1] = v46;
                v42 += 4;
                v48 = *v41;
                *(v40 - 1) = *(v41 - 1);
                *v40 = v48;
                v40 += 2;
                v41 += 2;
                v43 -= 8;
              }

              while (v43);
              if (v27 == v32)
              {
                goto LABEL_12;
              }
            }
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = (v29 + 8 * v32);
        v34 = v27 - v32;
        v35 = (v28 + 4 * v32);
        do
        {
          v36 = *v33++;
          *(v30 + 8 * v25) = v36;
          LODWORD(v36) = *v35++;
          *(v31 + 4 * v25++) = v36;
          --v34;
        }

        while (v34);
      }

LABEL_12:
      if (++v24 == (v22 & 0x7FFFFFFF))
      {
        goto LABEL_26;
      }
    }
  }

  v25 = 0;
LABEL_26:
  if (*this >= 1)
  {
    v49 = 0;
    v50 = v22 << 32;
    v51 = *(this + 1) + 8 * v25;
    v52 = *(this + 4) + 4 * v25;
    do
    {
      *(v23 + (v50 >> 29)) = v25 + v49;
      *(v51 + 8 * v49) = 0x3FF0000000000000;
      *(v52 + 4 * v49) = v49;
      ++v49;
      v50 += 0x100000000;
    }

    while (v49 < *this);
    v25 += v49;
  }

  *(v23 + 8 * *(this + 1)) = v25;
}

void operations_research::glop::CompactSparseMatrix::PopulateFromTranspose(operations_research::glop::CompactSparseMatrix *this, const operations_research::glop::CompactSparseMatrix *a2)
{
  v4 = *a2;
  *(this + 1) = *a2;
  *this = *(a2 + 1);
  v42 = 0;
  std::vector<long long>::assign(this + 7, v4 + 2, &v42);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  for (i = *(this + 7); v5 != v6; ++*(i + 8 * (v8 + 2)))
  {
    v8 = *v5++;
  }

  v9 = *(this + 8);
  if (((v9 - i) >> 3) >= 3)
  {
    v10 = ((v9 - i) >> 3) & 0x7FFFFFFF;
    if ((v10 - 3) <= 0x7FFFFFFE && (v10 - 3) >> 32 == 0)
    {
      v15 = *(i + 8);
      v16 = (i + 16);
      v17 = v10 - 2;
      do
      {
        v15 += *v16;
        *v16++ = v15;
        --v17;
      }

      while (v17);
    }

    else
    {
      v12 = v10 - 2;
      v13 = (i + 16);
      v14 = 0x100000000;
      do
      {
        *v13++ += *(i + (v14 >> 29));
        v14 += 0x100000000;
        --v12;
      }

      while (v12);
    }
  }

  v18 = *(this + 1);
  v19 = *(this + 2);
  v20 = *(v9 - 8);
  v42 = 0;
  v21 = (v19 - v18) >> 3;
  if (v20 <= v21)
  {
    if (v20 < v21)
    {
      *(this + 2) = v18 + 8 * v20;
    }
  }

  else
  {
    std::vector<double>::__append(this + 8, v20 - v21, &v42);
    v9 = *(this + 8);
  }

  v22 = *(this + 4);
  v23 = *(v9 - 8);
  v24 = (*(this + 5) - v22) >> 2;
  if (v23 <= v24)
  {
    if (v23 < v24)
    {
      *(this + 5) = v22 + 4 * v23;
    }
  }

  else
  {
    std::vector<int>::__append((this + 32), v23 - v24, &operations_research::glop::kInvalidRow);
    v9 = *(this + 8);
    v22 = *(this + 4);
  }

  *(this + 8) = v9 - 8;
  v25 = *(a2 + 1);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = *(a2 + 4);
    v28 = *(this + 1);
    v29 = *(a2 + 1);
    v30 = *(this + 7);
    v31 = *(a2 + 7);
    do
    {
      v32 = *(v31 + 8 * v26);
      v33 = *(v31 + (((v26 << 32) + 0x100000000) >> 29));
      v34 = v33 <= v32;
      v35 = v33 - v32;
      if (!v34)
      {
        v36 = (v27 + 4 * v32);
        v37 = (v29 + 8 * v32);
        do
        {
          v38 = *v36++;
          v39 = 8 * (v38 + 1);
          v40 = *(v30 + v39);
          *(v30 + v39) = v40 + 1;
          v41 = *v37++;
          *(v28 + 8 * v40) = v41;
          *(v22 + 4 * v40) = v26;
          --v35;
        }

        while (v35);
      }

      ++v26;
    }

    while (v26 != v25);
  }
}

void operations_research::glop::TriangularMatrix::PopulateFromTranspose(char **this, char **a2)
{
  operations_research::glop::CompactSparseMatrix::PopulateFromTranspose(this, a2);
  if (this != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 10, a2[10], a2[11], (a2[11] - a2[10]) >> 3);
  }

  *(this + 108) = *(a2 + 108);
  v4 = *(this + 1);
  v24 = 0;
  v5 = this[34];
  v6 = (this[35] - v5) >> 3;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      this[35] = &v5[8 * v4];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append((this + 34), v4 - v6, &v24);
    v4 = *(this + 1);
  }

  if (v4 >= 1)
  {
    v7 = this[7];
    v8 = this[34];
    v9 = v4;
    if (v4 <= 3 || (v8 - v7 - 8) < 0x20)
    {
      v10 = 0;
LABEL_11:
      v11 = &v8[8 * v10];
      v12 = v9 - v10;
      v13 = &v7[8 * v10 + 8];
      do
      {
        v14 = *v13;
        v13 += 8;
        *v11 = v14;
        v11 += 8;
        --v12;
      }

      while (v12);
      goto LABEL_13;
    }

    v10 = v4 & 0x7FFFFFFC;
    v20 = v8 + 16;
    v21 = (v7 + 24);
    v22 = v9 & 0x7FFFFFFC;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v10 != v9)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  *(this + 26) = 0;
  v15 = this[10];
  v16 = (this[11] - v15) >> 3;
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = this[7];
    v19 = 0x100000000;
    do
    {
      if (*&v18[v19 >> 29] != *&v18[8 * v17])
      {
        break;
      }

      if (*&v15[8 * v17] != 1.0)
      {
        break;
      }

      *(this + 26) = ++v17;
      v19 += 0x100000000;
    }

    while (v16 != v17);
  }
}

void operations_research::glop::CompactSparseMatrix::Reset(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 64) = *(a1 + 56);
  v2 = 0;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v2);
}

void operations_research::glop::TriangularMatrix::Reset(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 16) = *(a1 + 8);
  v5 = (a1 + 56);
  *(a1 + 64) = *(a1 + 56);
  v15 = 0;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v15);
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  v6 = a3;
  v7 = *(a1 + 272);
  v8 = (*(a1 + 280) - v7) >> 3;
  if (a3 <= v8)
  {
    if (a3 < v8)
    {
      *(a1 + 280) = v7 + 8 * a3;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 272, a3 - v8);
  }

  v9 = a3 << 32;
  v10 = *(a1 + 80);
  v11 = (*(a1 + 88) - v10) >> 3;
  if (v6 <= v11)
  {
    if (v6 < v11)
    {
      *(a1 + 88) = v10 + 8 * v6;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 80, v6 - v11);
  }

  v12 = (v9 + 0x100000000) >> 32;
  v13 = *(a1 + 56);
  v14 = (*(a1 + 64) - v13) >> 3;
  if (v12 > v14)
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v5, v12 - v14);
    v13 = *v5;
LABEL_11:
    *v13 = 0;
    return;
  }

  if (v12 >= v14)
  {
    goto LABEL_11;
  }

  *(a1 + 64) = &v13[v12];
  *v13 = 0;
}

uint64_t operations_research::glop::CompactSparseMatrix::AddDenseColumn(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (a2[1] - *a2) >> 3;
  v8 = 0;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if (*(v3 + 8 * v5) != 0.0)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v8);
        std::vector<double>::push_back[abi:ne200100](a1 + 8, (v3 + 8 * v8));
        v5 = v8;
      }

      v8 = ++v5;
    }

    while (v5 < v4);
  }

  v7 = (*(a1 + 40) - *(a1 + 32)) >> 2;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v7);
  result = *(a1 + 4);
  *(a1 + 4) = result + 1;
  return result;
}

uint64_t operations_research::glop::CompactSparseMatrix::AddDenseColumnPrefix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (i = a4; a4 < a3; i = a4)
  {
    if (*(a2 + 8 * a4) != 0.0)
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 32, &i);
      std::vector<double>::push_back[abi:ne200100](a1 + 8, (a2 + 8 * i));
      a4 = i;
    }

    ++a4;
  }

  v8 = (*(a1 + 40) - *(a1 + 32)) >> 2;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v8);
  result = *(a1 + 4);
  *(a1 + 4) = result + 1;
  return result;
}

uint64_t operations_research::glop::CompactSparseMatrix::AddDenseColumnWithNonZeros(uint64_t a1, uint64_t *a2, int **a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v7 = *a2;
    v8 = (a2[1] - *a2) >> 3;
    LODWORD(v12) = 0;
    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        if (*(v7 + 8 * v9) != 0.0)
        {
          std::vector<int>::push_back[abi:ne200100](a1 + 32, &v12);
          std::vector<double>::push_back[abi:ne200100](a1 + 8, (v7 + 8 * v12));
          v9 = v12;
        }

        LODWORD(v12) = ++v9;
      }

      while (v9 < v8);
    }
  }

  else
  {
    do
    {
      v11 = *v5;
      v12 = *(*a2 + 8 * v11);
      if (*&v12 != 0.0)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v11);
        std::vector<double>::push_back[abi:ne200100](a1 + 8, &v12);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v12 = (*(a1 + 40) - *(a1 + 32)) >> 2;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v12);
  result = *(a1 + 4);
  *(a1 + 4) = result + 1;
  return result;
}

uint64_t operations_research::glop::CompactSparseMatrix::AddAndClearColumnWithNonZeros(uint64_t a1, uint64_t *a2, int **a3)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v8 = *a2;
    do
    {
      v11 = *v5;
      v10 = *(v8 + 8 * v11);
      if (*&v10 != 0.0)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v11);
        std::vector<double>::push_back[abi:ne200100](a1 + 8, &v10);
        v8 = *a2;
        *(*a2 + 8 * v11) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *a3;
  }

  a3[1] = v5;
  v10 = (*(a1 + 40) - *(a1 + 32)) >> 2;
  std::vector<long long>::push_back[abi:ne200100](a1 + 56, &v10);
  result = *(a1 + 4);
  *(a1 + 4) = result + 1;
  return result;
}

__n128 operations_research::glop::TriangularMatrix::Swap(operations_research::glop::TriangularMatrix *this, operations_research::glop::TriangularMatrix *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  result = *(a2 + 72);
  v11 = *(this + 72);
  *(this + 72) = result;
  *(a2 + 72) = v11;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  LODWORD(v13) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v13;
  LOBYTE(v13) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v13;
  return result;
}

double operations_research::glop::CompactSparseMatrixView::ComputeInfinityNorm(int **this)
{
  v1 = *this;
  v2 = **this;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (this[2] >= 1)
  {
    v3 = 0;
    v4 = this[1];
    v5 = *(v1 + 7);
    v6 = *(v1 + 4);
    v7 = this[2] & 0x7FFFFFFF;
    v8 = *(v1 + 1);
    do
    {
      v9 = v4[v3];
      v10 = *(v5 + 8 * v9);
      v11 = *(v5 + (((v9 << 32) + 0x100000000) >> 29)) - v10;
      if (v11 >= 1)
      {
        v12 = (v6 + 4 * v10);
        v13 = (v8 + 8 * v10);
        do
        {
          v14 = *v13++;
          v15 = fabs(v14);
          LODWORD(v14) = *v12++;
          *(8 * SLODWORD(v14)) = v15 + *(8 * SLODWORD(v14));
          --v11;
        }

        while (v11);
      }

      ++v3;
    }

    while (v3 != v7);
  }

  v16 = *v1;
  v17 = 0.0;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *v18++;
      v20 = v19;
      if (v17 < v19)
      {
        v17 = v20;
      }

      --v16;
    }

    while (v16);
    operator delete(0);
  }

  return v17;
}

uint64_t operations_research::glop::TriangularMatrix::AddDiagonalOnlyColumn(uint64_t this, double a2)
{
  v2 = *(this + 4);
  v3 = 8 * v2;
  *(*(this + 80) + v3) = a2;
  v5 = *(this + 8);
  v4 = *(this + 16);
  v6 = (v4 - v5) >> 3;
  *(*(this + 272) + v3) = v6;
  *(this + 4) = v2 + 1;
  *(*(this + 56) + 8 * (v2 + 1)) = v6;
  if (*(this + 104) == v2 && a2 == 1.0 && v5 == v4)
  {
    *(this + 104) = v2 + 1;
  }

  *(this + 108) &= a2 == 1.0;
  return this;
}

void operations_research::glop::TriangularMatrix::AddTriangularColumn(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  if (*a2 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = a2[1];
    v7 = a2[2];
    v8 = 0.0;
    do
    {
      while (1)
      {
        v11 = *v6++;
        v10 = v11;
        if (v11 == a3)
        {
          break;
        }

        v19 = v10;
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v19);
        v9 = *v7++;
        v18 = v9;
        std::vector<double>::push_back[abi:ne200100](a1 + 8, &v18);
        if (!--v4)
        {
          goto LABEL_8;
        }
      }

      v12 = *v7++;
      v8 = v12;
      --v4;
    }

    while (v4);
  }

LABEL_8:
  v13 = *(a1 + 4);
  v14 = 8 * v13;
  *(*(a1 + 80) + v14) = v8;
  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = (v15 - v16) >> 3;
  *(*(a1 + 272) + v14) = v17;
  *(a1 + 4) = v13 + 1;
  *(*(a1 + 56) + 8 * (v13 + 1)) = v17;
  if (*(a1 + 104) == v13 && v8 == 1.0 && v16 == v15)
  {
    *(a1 + 104) = v13 + 1;
  }

  *(a1 + 108) &= v8 == 1.0;
}

void operations_research::glop::TriangularMatrix::AddAndNormalizeTriangularColumn(uint64_t a1, void *a2, int a3, double a4)
{
  v5 = a2[1];
  if (v5 >= 1)
  {
    v8 = a2[3];
    v9 = a2[4];
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 != a3 && *v9 != 0.0)
      {
        v18 = v10;
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v18);
        v17 = *v9 / a4;
        std::vector<double>::push_back[abi:ne200100](a1 + 8, &v17);
      }

      ++v9;
      --v5;
    }

    while (v5);
  }

  v12 = *(a1 + 4);
  v13 = 8 * v12;
  *(*(a1 + 80) + v13) = 0x3FF0000000000000;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  v16 = (v14 - v15) >> 3;
  *(*(a1 + 272) + v13) = v16;
  *(a1 + 4) = v12 + 1;
  *(*(a1 + 56) + 8 * (v12 + 1)) = v16;
  if (*(a1 + 104) == v12 && v15 == v14)
  {
    *(a1 + 104) = v12 + 1;
  }
}

void operations_research::glop::TriangularMatrix::AddTriangularColumnWithGivenDiagonalEntry(uint64_t a1, void *a2, double a3)
{
  v5 = a2[1];
  if (v5 >= 1)
  {
    v6 = a2[3];
    v7 = a2[4];
    do
    {
      v8 = *v6++;
      v16 = v8;
      std::vector<int>::push_back[abi:ne200100](a1 + 32, &v16);
      v9 = *v7++;
      v15 = v9;
      std::vector<double>::push_back[abi:ne200100](a1 + 8, &v15);
      --v5;
    }

    while (v5);
  }

  v10 = *(a1 + 4);
  v11 = 8 * v10;
  *(*(a1 + 80) + v11) = a3;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = (v12 - v13) >> 3;
  *(*(a1 + 272) + v11) = v14;
  *(a1 + 4) = v10 + 1;
  *(*(a1 + 56) + 8 * (v10 + 1)) = v14;
  if (*(a1 + 104) == v10 && a3 == 1.0 && v13 == v12)
  {
    *(a1 + 104) = v10 + 1;
  }

  *(a1 + 108) &= a3 == 1.0;
}

uint64_t operations_research::glop::TriangularMatrix::ApplyRowPermutationToNonDiagonalEntries(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  v3 = (*(result + 40) - v2) >> 2;
  if (v3 >= 1)
  {
    v4 = *a2;
    do
    {
      *v2 = *(v4 + 4 * *v2);
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void operations_research::glop::TriangularMatrix::CopyColumnToSparseColumn(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(a3 + 8) = 0;
  *(a3 + 40) = 0;
  v4 = a1[7];
  v5 = *(v4 + 8 * a2);
  v6 = *(v4 + (((a2 << 32) + 0x100000000) >> 29));
  v7 = v6 - v5;
  if (v6 <= v5)
  {
    v15 = *(a1[10] + 8 * a2);
    if (!*(a3 + 16))
    {
      goto LABEL_13;
    }

    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (a1[4] + 4 * v5);
    v10 = (a1[1] + 8 * v5);
    do
    {
      v13 = *v9++;
      v12 = v13;
      v14 = *v10;
      if (v8 == *(a3 + 16) && (!v8 || v8 < 2 * v8))
      {
        operator new[]();
      }

      v11 = *(a3 + 32);
      *(*(a3 + 24) + 4 * v8) = v12;
      *(v11 + 8 * v8++) = v14;
      *(a3 + 8) = v8;
      *(a3 + 40) = 1;
      ++v10;
      --v7;
    }

    while (v7);
    v15 = *(a1[10] + 8 * a2);
    if (v8 == *(a3 + 16) && (!v8 || v8 < 2 * v8))
    {
LABEL_13:
      operator new[]();
    }
  }

  v16 = *(a3 + 32);
  *(*(a3 + 24) + 4 * v8) = a2;
  *(a3 + 8) = v8 + 1;
  *(v16 + 8 * v8) = v15;
  *(a3 + 40) = 1;

  operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(a3, a4);
}

void operations_research::glop::TriangularMatrix::LowerSolveStartingAt(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (a3)
  {
    v3 = *a3;
    v4 = *(a1 + 104);
    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 8);
    v8 = *(a1 + 80);
    v9 = (*(a1 + 88) - v8) >> 3;
    if (*(a1 + 108) == 1)
    {
      if (v5 < v9)
      {
        do
        {
          v10 = *(v3 + 8 * v5);
          if (v10 != 0.0)
          {
            v11 = *(a1 + 56);
            v12 = *(v11 + 8 * v5);
            v13 = *(v11 + (((v5 << 32) + 0x100000000) >> 29));
            v14 = v13 <= v12;
            v15 = v13 - v12;
            if (!v14)
            {
              v16 = -v10;
              v17 = (v6 + 4 * v12);
              v18 = (v7 + 8 * v12);
              do
              {
                v19 = *v18++;
                v20 = v19;
                LODWORD(v19) = *v17++;
                *(v3 + 8 * SLODWORD(v19)) = *(v3 + 8 * SLODWORD(v19)) + v16 * v20;
                --v15;
              }

              while (v15);
            }
          }

          v5 = (v5 + 1);
        }

        while (v5 != v9);
      }
    }

    else if (v5 < v9)
    {
      do
      {
        v21 = *(v3 + 8 * v5);
        if (v21 != 0.0)
        {
          v22 = v21 / *(v8 + 8 * v5);
          *(v3 + 8 * v5) = v22;
          v23 = *(a1 + 56);
          v24 = *(v23 + 8 * v5);
          v25 = *(v23 + (((v5 << 32) + 0x100000000) >> 29));
          v14 = v25 <= v24;
          v26 = v25 - v24;
          if (!v14)
          {
            v27 = -v22;
            v28 = (v6 + 4 * v24);
            v29 = (v7 + 8 * v24);
            do
            {
              v30 = *v29++;
              v31 = v30;
              LODWORD(v30) = *v28++;
              *(v3 + 8 * SLODWORD(v30)) = *(v3 + 8 * SLODWORD(v30)) + v27 * v31;
              --v26;
            }

            while (v26);
          }
        }

        v5 = (v5 + 1);
      }

      while (v5 != v9);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 785, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
  }
}

void operations_research::glop::TriangularMatrix::UpperSolve(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = *(a1 + 104);
    v4 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a1 + 80);
    v7 = (*(a1 + 88) - v6) >> 3;
    v8 = v7 - 1;
    if (*(a1 + 108) == 1)
    {
      while (v8 >= v3)
      {
        v9 = v7;
        LODWORD(v7) = v8;
        v10 = 8 * v8;
        v11 = *(v2 + v10);
        if (v11 != 0.0)
        {
          v12 = *(a1 + 56);
          v13 = *(v12 + v10);
          v14 = *(v12 + 8 * v9) - 1;
          if (v14 >= v13)
          {
            v15 = -v11;
            do
            {
              v16 = 8 * *(v4 + 4 * v14);
              *(v2 + v16) = *(v2 + v16) + v15 * *(v5 + 8 * v14--);
            }

            while (v14 >= v13);
          }
        }

        v8 = v7 - 1;
      }
    }

    else if (v8 >= v3)
    {
      do
      {
        v17 = v7;
        LODWORD(v7) = v8;
        v18 = 8 * v8;
        v19 = *(v2 + v18);
        if (v19 != 0.0)
        {
          v20 = v19 / *(v6 + v18);
          *(v2 + v18) = v20;
          v21 = *(a1 + 56);
          v22 = *(v21 + v18);
          v23 = *(v21 + 8 * v17) - 1;
          if (v23 >= v22)
          {
            v24 = -v20;
            do
            {
              v25 = 8 * *(v4 + 4 * v23);
              *(v2 + v25) = *(v2 + v25) + v24 * *(v5 + 8 * v23--);
            }

            while (v23 >= v22);
          }
        }

        v8 = v7 - 1;
      }

      while (v7 - 1 >= v3);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 816, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v26);
  }
}

void operations_research::glop::TriangularMatrix::TransposeUpperSolve(int64x2_t *a1, uint64_t *a2, double a3)
{
  if (a2)
  {
    v4 = *a2;
    v5 = ((a2[1] - v4) >> 3);
    if (a1[6].i8[12] == 1)
    {

      operations_research::glop::TriangularMatrix::TransposeUpperSolveInternal<true>(a1, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeUpperSolveInternal<false>(a1, v4, a3);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 850, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v6);
  }
}

int64x2_t *operations_research::glop::TriangularMatrix::TransposeUpperSolveInternal<true>(int64x2_t *result, uint64_t a2)
{
  v2 = result->i32[1];
  v3 = result[6].i32[2];
  if (v3 < v2)
  {
    v4 = result[3].i64[1];
    v5 = result[2].i64[0];
    v6 = result->i64[1];
    v7 = *(v4 + 8 * v3);
    do
    {
      v9 = 8 * v3;
      v10 = *(a2 + v9);
      v8 = *(v4 + 8 * ++v3);
      if (v7 < v8 - 3)
      {
        result = (v5 + 4 * v7);
        v11 = (v6 + 16 + 8 * v7);
        do
        {
          v12 = *result++;
          _Q1 = v12;
          v14 = vshrq_n_s64(vshll_n_s32(*v12.i8, 0x20uLL), 0x1DuLL);
          v15 = *(v11 - 2);
          v16 = *(v11 - 1);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v21 = vshrq_n_s64(_Q1, 0x1DuLL);
          v22 = *v11;
          v23 = v11[1];
          v11 += 4;
          v10 = v10 - (v16 * *(a2 + v14.i64[1]) + v15 * *(a2 + v14.i64[0]) + v22 * *(a2 + v21.i64[0]) + v23 * *(a2 + v21.i64[1]));
          v7 += 4;
        }

        while (v7 < v8 - 3);
      }

      if (v7 >= v8)
      {
        v8 = v7;
      }

      else
      {
        v10 = v10 - *(v6 + 8 * v7) * *(a2 + 8 * *(v5 + 4 * v7));
        if (v7 + 1 < v8)
        {
          v10 = v10 - *(v6 + 8 * (v7 + 1)) * *(a2 + 8 * *(v5 + 4 * (v7 + 1)));
          v24 = v7 + 2;
          if (v24 < v8)
          {
            v10 = v10 - *(v6 + 8 * v24) * *(a2 + 8 * *(v5 + 4 * v24));
          }
        }
      }

      *(a2 + v9) = v10;
      v7 = v8;
    }

    while (v3 != v2);
  }

  return result;
}

double operations_research::glop::TriangularMatrix::TransposeUpperSolveInternal<false>(uint64_t a1, uint64_t a2, double result)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 104);
  if (v4 < v3)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 8);
    v8 = *(a1 + 80);
    v9 = *(v5 + 8 * v4);
    do
    {
      v11 = 8 * v4;
      v12 = *(a2 + v11);
      v10 = *(v5 + 8 * ++v4);
      if (v9 < v10 - 3)
      {
        v13 = (v6 + 4 * v9);
        v14 = (v7 + 16 + 8 * v9);
        do
        {
          v15 = *v13++;
          _Q1 = v15;
          v17 = vshrq_n_s64(vshll_n_s32(*v15.i8, 0x20uLL), 0x1DuLL);
          v18 = *(v14 - 2);
          v19 = *(v14 - 1);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v24 = vshrq_n_s64(_Q1, 0x1DuLL);
          v25 = *v14;
          v26 = v14[1];
          v14 += 4;
          v12 = v12 - (v19 * *(a2 + v17.i64[1]) + v18 * *(a2 + v17.i64[0]) + v25 * *(a2 + v24.i64[0]) + v26 * *(a2 + v24.i64[1]));
          v9 += 4;
        }

        while (v9 < v10 - 3);
      }

      if (v9 >= v10)
      {
        v10 = v9;
      }

      else
      {
        v12 = v12 - *(v7 + 8 * v9) * *(a2 + 8 * *(v6 + 4 * v9));
        if (v9 + 1 < v10)
        {
          v12 = v12 - *(v7 + 8 * (v9 + 1)) * *(a2 + 8 * *(v6 + 4 * (v9 + 1)));
          v27 = v9 + 2;
          if (v27 < v10)
          {
            v12 = v12 - *(v7 + 8 * v27) * *(a2 + 8 * *(v6 + 4 * v27));
          }
        }
      }

      result = v12 / *(v8 + v11);
      *(a2 + v11) = result;
      v9 = v10;
    }

    while (v4 != v3);
  }

  return result;
}

void operations_research::glop::TriangularMatrix::TransposeLowerSolve(uint64_t a1, uint64_t *a2, double a3)
{
  if (a2)
  {
    v4 = *a2;
    v5 = ((a2[1] - v4) >> 3);
    if (*(a1 + 108) == 1)
    {

      operations_research::glop::TriangularMatrix::TransposeLowerSolveInternal<true>(a1, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeLowerSolveInternal<false>(a1, v4, a3);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 901, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v6);
  }
}

uint64_t operations_research::glop::TriangularMatrix::TransposeLowerSolveInternal<true>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  v3 = *(result + 4);
  while (--v3 >= v2)
  {
    if (*(a2 + 8 * v3) != 0.0)
    {
      v4 = *(result + 56);
      v5 = *(result + 32);
      v6 = *(result + 8);
      v7 = *(v4 + 8 * (v3 + 1)) - 1;
      do
      {
        v8 = 8 * v3;
        v9 = *(a2 + v8);
        v10 = *(v4 + v8);
        result = v10 + 3;
        if (v7 >= v10 + 3)
        {
          v11 = (v5 - 12 + 4 * v7);
          v12 = (v6 - 8 + 8 * v7);
          do
          {
            v13 = *v11--;
            _Q5 = v13;
            __asm { SHLL2           V6.2D, V5.4S, #0x20 ; ' ' }

            v20 = vshrq_n_s64(vshll_n_s32(*&v13, 0x20uLL), 0x1DuLL);
            v21 = vshrq_n_s64(_Q6, 0x1DuLL);
            v9 = v9 - (*v12 * *(a2 + v21.i64[0]) + v12[1] * *(a2 + v21.i64[1]) + *(v12 - 1) * *(a2 + v20.i64[1]) + *(v12 - 2) * *(a2 + v20.i64[0]));
            v7 -= 4;
            v12 -= 4;
          }

          while (v7 >= result);
        }

        if (v7 >= v10)
        {
          result = 8 * *(v5 + 4 * v7);
          v9 = v9 - *(v6 + 8 * v7) * *(a2 + result);
          if (v7 > v10)
          {
            v9 = v9 - *(v6 + 8 * (v7 - 1)) * *(a2 + 8 * *(v5 + 4 * (v7 - 1)));
            result = v10 + 2;
            if (v7 >= v10 + 2)
            {
              v9 = v9 - *(v6 + 8 * (v7 - 2)) * *(a2 + 8 * *(v5 + 4 * (v7 - 2)));
            }
          }

          v7 = v10 - 1;
        }

        *(a2 + 8 * v3--) = v9;
      }

      while (v3 >= v2);
      return result;
    }
  }

  return result;
}

double operations_research::glop::TriangularMatrix::TransposeLowerSolveInternal<false>(uint64_t a1, uint64_t a2, double result)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 4);
  while (--v4 >= v3)
  {
    result = *(a2 + 8 * v4);
    if (result != 0.0)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 80);
      v7 = *(a1 + 32);
      v8 = *(a1 + 8);
      v9 = *(v5 + 8 * (v4 + 1)) - 1;
      do
      {
        v10 = 8 * v4;
        v11 = *(a2 + v10);
        v12 = *(v5 + v10);
        if (v9 >= v12 + 3)
        {
          v13 = (v7 - 12 + 4 * v9);
          v14 = (v8 - 8 + 8 * v9);
          do
          {
            v15 = *v13--;
            _Q5 = v15;
            __asm { SHLL2           V6.2D, V5.4S, #0x20 ; ' ' }

            v22 = vshrq_n_s64(vshll_n_s32(*&v15, 0x20uLL), 0x1DuLL);
            v23 = vshrq_n_s64(_Q6, 0x1DuLL);
            v11 = v11 - (*v14 * *(a2 + v23.i64[0]) + v14[1] * *(a2 + v23.i64[1]) + *(v14 - 1) * *(a2 + v22.i64[1]) + *(v14 - 2) * *(a2 + v22.i64[0]));
            v9 -= 4;
            v14 -= 4;
          }

          while (v9 >= v12 + 3);
        }

        if (v9 >= v12)
        {
          v11 = v11 - *(v8 + 8 * v9) * *(a2 + 8 * *(v7 + 4 * v9));
          if (v9 > v12)
          {
            v11 = v11 - *(v8 + 8 * (v9 - 1)) * *(a2 + 8 * *(v7 + 4 * (v9 - 1)));
            if (v9 >= v12 + 2)
            {
              v11 = v11 - *(v8 + 8 * (v9 - 2)) * *(a2 + 8 * *(v7 + 4 * (v9 - 2)));
            }
          }

          v9 = v12 - 1;
        }

        result = v11 / *(v6 + 8 * v4);
        *(a2 + 8 * v4--) = result;
      }

      while (v4 >= v3);
      return result;
    }
  }

  return result;
}

void operations_research::glop::TriangularMatrix::HyperSparseSolve(uint64_t a1, uint64_t *a2, std::vector<int> *this)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v37, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 960, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v37);
    return;
  }

  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  begin = this->__begin_;
  end = this->__end_;
  if (*(a1 + 108) == 1)
  {
    if (begin != end)
    {
      v8 = 0;
      v9 = this->__begin_;
      do
      {
        v10 = *v9;
        v11 = *(v3 + 8 * v10);
        if (v11 != 0.0)
        {
          v12 = *(a1 + 56);
          v13 = *(v12 + 8 * v10);
          v14 = *(v12 + (((v10 << 32) + 0x100000000) >> 29));
          v15 = v14 <= v13;
          v16 = v14 - v13;
          if (!v15)
          {
            v17 = -v11;
            v18 = (v4 + 4 * v13);
            v19 = (v5 + 8 * v13);
            do
            {
              v20 = *v19++;
              v21 = v20;
              LODWORD(v20) = *v18++;
              *(v3 + 8 * SLODWORD(v20)) = *(v3 + 8 * SLODWORD(v20)) + v17 * v21;
              --v16;
            }

            while (v16);
          }

          begin[v8++] = v10;
        }

        ++v9;
      }

      while (v9 != end);
      goto LABEL_21;
    }

LABEL_25:
    v35 = 0;
    v36 = end - begin;
    goto LABEL_26;
  }

  if (begin == end)
  {
    goto LABEL_25;
  }

  v8 = 0;
  v22 = this->__begin_;
  do
  {
    v23 = *v22;
    v24 = *(v3 + 8 * v23);
    if (v24 != 0.0)
    {
      v25 = v24 / *(*(a1 + 80) + 8 * v23);
      *(v3 + 8 * v23) = v25;
      v26 = *(a1 + 56);
      v27 = *(v26 + 8 * v23);
      v28 = *(v26 + (((v23 << 32) + 0x100000000) >> 29));
      v15 = v28 <= v27;
      v29 = v28 - v27;
      if (!v15)
      {
        v30 = -v25;
        v31 = (v4 + 4 * v27);
        v32 = (v5 + 8 * v27);
        do
        {
          v33 = *v32++;
          v34 = v33;
          LODWORD(v33) = *v31++;
          *(v3 + 8 * SLODWORD(v33)) = *(v3 + 8 * SLODWORD(v33)) + v30 * v34;
          --v29;
        }

        while (v29);
      }

      begin[v8++] = v23;
    }

    ++v22;
  }

  while (v22 != end);
LABEL_21:
  v35 = v8;
  v36 = end - begin;
  if (v8 > v36)
  {

    std::vector<int>::__append(this, v8 - v36);
    return;
  }

LABEL_26:
  if (v36 > v35)
  {
    this->__end_ = &begin[v35];
  }
}

void operations_research::glop::TriangularMatrix::HyperSparseSolveWithReversedNonZeros(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *a2;
    v5 = *a3;
    v4 = *(a3 + 8);
    v6 = &v4[-*a3] >> 2;
    v7 = *(a1 + 32);
    v8 = *(a1 + 8);
    if (*(a1 + 108) == 1)
    {
      if (v4 != v5)
      {
        v9 = *(a3 + 8);
        do
        {
          v11 = *--v9;
          v10 = v11;
          v12 = 8 * v11;
          v13 = *(v3 + v12);
          if (v13 != 0.0)
          {
            v14 = *(a1 + 56);
            v15 = *(v14 + v12);
            v16 = *(v14 + (((v10 << 32) + 0x100000000) >> 29));
            v17 = v16 <= v15;
            v18 = v16 - v15;
            if (!v17)
            {
              v19 = -v13;
              v20 = (v7 + 4 * v15);
              v21 = (v8 + 8 * v15);
              do
              {
                v22 = *v21++;
                v23 = v22;
                LODWORD(v22) = *v20++;
                *(v3 + 8 * SLODWORD(v22)) = *(v3 + 8 * SLODWORD(v22)) + v19 * v23;
                --v18;
              }

              while (v18);
            }

            LODWORD(v6) = v6 - 1;
            v5[v6] = v10;
          }
        }

        while (v9 != v5);
      }
    }

    else if (v4 != v5)
    {
      v24 = *(a3 + 8);
      do
      {
        v26 = *--v24;
        v25 = v26;
        v27 = 8 * v26;
        v28 = *(v3 + v27);
        if (v28 != 0.0)
        {
          v29 = v28 / *(*(a1 + 80) + v27);
          *(v3 + v27) = v29;
          v30 = *(a1 + 56);
          v31 = *(v30 + v27);
          v32 = *(v30 + (((v25 << 32) + 0x100000000) >> 29));
          v17 = v32 <= v31;
          v33 = v32 - v31;
          if (!v17)
          {
            v34 = -v29;
            v35 = (v7 + 4 * v31);
            v36 = (v8 + 8 * v31);
            do
            {
              v37 = *v36++;
              v38 = v37;
              LODWORD(v37) = *v35++;
              *(v3 + 8 * SLODWORD(v37)) = *(v3 + 8 * SLODWORD(v37)) + v34 * v38;
              --v33;
            }

            while (v33);
          }

          LODWORD(v6) = v6 - 1;
          v5[v6] = v25;
        }
      }

      while (v24 != v5);
    }

    if (v6)
    {
      v39 = &v5[v6];
      v40 = v4 - v39;
      if (v4 != v39)
      {
        v41 = a3;
        memmove(v5, v39, v4 - v39);
        a3 = v41;
      }

      *(a3 + 8) = v5 + v40;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 992, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v42);
  }
}

void operations_research::glop::TriangularMatrix::TransposeHyperSparseSolve(uint64_t a1, uint64_t *a2, std::vector<int> *this)
{
  if (a2)
  {
    v5 = *a2;
    v6 = (a2[1] - v5) >> 3;
    if (*(a1 + 108) == 1)
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveInternal<true>(a1, v5, v6, this);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveInternal<false>(a1, v5, v6, this);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 1027, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v7);
  }
}

void operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveInternal<true>(void *a1, uint64_t a2, int a3, std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    v7 = 0;
    v32 = end - begin;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a1[4];
    v9 = a1[1];
    v10 = a1[7];
    v11 = this->__begin_;
    do
    {
      v12 = *v11;
      v13 = 8 * *v11;
      v14 = *(a2 + v13);
      v15 = *(v10 + v13);
      v16 = *(v10 + 8 * (*v11 + 1));
      if (v15 < v16 - 3)
      {
        v17 = (v8 + 4 * v15);
        v18 = (v9 + 16 + 8 * v15);
        do
        {
          v19 = *v17++;
          _Q1 = v19;
          v21 = vshrq_n_s64(vshll_n_s32(*v19.i8, 0x20uLL), 0x1DuLL);
          v22 = *(v18 - 2);
          v23 = *(v18 - 1);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v28 = vshrq_n_s64(_Q1, 0x1DuLL);
          v29 = *v18;
          v30 = v18[1];
          v18 += 4;
          v14 = v14 - (v23 * *(a2 + v21.i64[1]) + v22 * *(a2 + v21.i64[0]) + v29 * *(a2 + v28.i64[0]) + v30 * *(a2 + v28.i64[1]));
          v15 += 4;
        }

        while (v15 < v16 - 3);
      }

      if (v15 < v16)
      {
        v14 = v14 - *(v9 + 8 * v15) * *(a2 + 8 * *(v8 + 4 * v15));
        if (v15 + 1 < v16)
        {
          v14 = v14 - *(v9 + 8 * (v15 + 1)) * *(a2 + 8 * *(v8 + 4 * (v15 + 1)));
          v31 = v15 + 2;
          if (v31 < v16)
          {
            v14 = v14 - *(v9 + 8 * v31) * *(a2 + 8 * *(v8 + 4 * v31));
          }
        }
      }

      *(a2 + 8 * v12) = v14;
      if (v14 != 0.0)
      {
        begin[v7] = v12;
        LODWORD(v7) = v7 + 1;
      }

      ++v11;
    }

    while (v11 != end);
    v7 = v7;
    v32 = end - begin;
    if (v7 > v32)
    {

      std::vector<int>::__append(this, v7 - v32);
      return;
    }
  }

  if (v32 > v7)
  {
    this->__end_ = &begin[v7];
  }
}

void operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveInternal<false>(void *a1, uint64_t a2, int a3, std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    v7 = 0;
    v33 = end - begin;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a1[4];
    v9 = a1[1];
    v10 = a1[7];
    v11 = a1[10];
    v12 = this->__begin_;
    do
    {
      v13 = *v12;
      v14 = 8 * *v12;
      v15 = *(a2 + v14);
      v16 = *(v10 + v14);
      v17 = *(v10 + 8 * (*v12 + 1));
      if (v16 < v17 - 3)
      {
        v18 = (v8 + 4 * v16);
        v19 = (v9 + 16 + 8 * v16);
        do
        {
          v20 = *v18++;
          _Q1 = v20;
          v22 = vshrq_n_s64(vshll_n_s32(*v20.i8, 0x20uLL), 0x1DuLL);
          v23 = *(v19 - 2);
          v24 = *(v19 - 1);
          __asm { SHLL2           V1.2D, V1.4S, #0x20 ; ' ' }

          v29 = vshrq_n_s64(_Q1, 0x1DuLL);
          v30 = *v19;
          v31 = v19[1];
          v19 += 4;
          v15 = v15 - (v24 * *(a2 + v22.i64[1]) + v23 * *(a2 + v22.i64[0]) + v30 * *(a2 + v29.i64[0]) + v31 * *(a2 + v29.i64[1]));
          v16 += 4;
        }

        while (v16 < v17 - 3);
      }

      if (v16 < v17)
      {
        v15 = v15 - *(v9 + 8 * v16) * *(a2 + 8 * *(v8 + 4 * v16));
        if (v16 + 1 < v17)
        {
          v15 = v15 - *(v9 + 8 * (v16 + 1)) * *(a2 + 8 * *(v8 + 4 * (v16 + 1)));
          v32 = v16 + 2;
          if (v32 < v17)
          {
            v15 = v15 - *(v9 + 8 * v32) * *(a2 + 8 * *(v8 + 4 * v32));
          }
        }
      }

      *(a2 + 8 * v13) = v15 / *(v11 + 8 * v13);
      if (v15 != 0.0)
      {
        begin[v7] = v13;
        LODWORD(v7) = v7 + 1;
      }

      ++v12;
    }

    while (v12 != end);
    v7 = v7;
    v33 = end - begin;
    if (v7 > v33)
    {

      std::vector<int>::__append(this, v7 - v33);
      return;
    }
  }

  if (v33 > v7)
  {
    this->__end_ = &begin[v7];
  }
}

void operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZeros(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *a2;
    v6 = ((a2[1] - v5) >> 3);
    if (*(a1 + 108) == 1)
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZerosInternal<true>(a1, v5, v6, a3);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZerosInternal<false>(a1, v5, v6, a3);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 1079, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "rhs", 3uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v7);
  }
}

uint64_t operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZerosInternal<true>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  v5 = *(a4 + 8);
  v7 = &v5[-*a4] >> 2;
  if (v5 != *a4)
  {
    v8 = *(result + 32);
    v9 = *(result + 8);
    v10 = *(result + 56);
    v11 = *(a4 + 8);
    do
    {
      v13 = *--v11;
      v12 = v13;
      v14 = 8 * v13;
      v15 = *(a2 + v14);
      v16 = *(v10 + 8 * (v13 + 1));
      result = v16 - 1;
      v17 = *(v10 + v14);
      if (v16 - 1 >= v17 + 3)
      {
        v18 = (v8 - 16 + 4 * v16);
        v19 = (v9 - 16 + 8 * v16);
        do
        {
          v20 = *v18--;
          _Q5 = v20;
          __asm { SHLL2           V6.2D, V5.4S, #0x20 ; ' ' }

          v27 = vshrq_n_s64(vshll_n_s32(*&v20, 0x20uLL), 0x1DuLL);
          v28 = vshrq_n_s64(_Q6, 0x1DuLL);
          v15 = v15 - (*v19 * *(a2 + v28.i64[0]) + v19[1] * *(a2 + v28.i64[1]) + *(v19 - 1) * *(a2 + v27.i64[1]) + *(v19 - 2) * *(a2 + v27.i64[0]));
          result -= 4;
          v19 -= 4;
        }

        while (result >= v17 + 3);
      }

      if (result >= v17)
      {
        v15 = v15 - *(v9 + 8 * result) * *(a2 + 8 * *(v8 + 4 * result));
        if (result > v17)
        {
          v15 = v15 - *(v9 + 8 * (result - 1)) * *(a2 + 8 * *(v8 + 4 * (result - 1)));
          if (result >= v17 + 2)
          {
            v29 = result - 2;
            v30 = *(v9 + 8 * v29);
            result = 8 * *(v8 + 4 * v29);
            v15 = v15 - v30 * *(a2 + result);
          }
        }
      }

      *(a2 + v14) = v15;
      if (v15 != 0.0)
      {
        LODWORD(v7) = v7 - 1;
        v6[v7] = v12;
      }
    }

    while (v11 != v6);
  }

  if (v7)
  {
    v31 = &v6[v7];
    v32 = v5 - v31;
    if (v5 != v31)
    {
      result = memmove(v6, v31, v5 - v31);
    }

    *(a4 + 8) = v6 + v32;
  }

  return result;
}

void *operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZerosInternal<false>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  v5 = *(a4 + 8);
  v7 = &v5[-*a4] >> 2;
  if (v5 != *a4)
  {
    v8 = result[4];
    v9 = result[1];
    v10 = result[7];
    v11 = result[10];
    v12 = *(a4 + 8);
    do
    {
      v14 = *--v12;
      v13 = v14;
      result = (8 * v14);
      v15 = *(result + a2);
      v16 = *(v10 + 8 * (v14 + 1));
      v17 = v16 - 1;
      v18 = *(result + v10);
      if (v16 - 1 >= v18 + 3)
      {
        v19 = (v8 - 16 + 4 * v16);
        v20 = (v9 - 16 + 8 * v16);
        do
        {
          v21 = *v19--;
          _Q5 = v21;
          __asm { SHLL2           V6.2D, V5.4S, #0x20 ; ' ' }

          v28 = vshrq_n_s64(vshll_n_s32(*&v21, 0x20uLL), 0x1DuLL);
          v29 = vshrq_n_s64(_Q6, 0x1DuLL);
          v15 = v15 - (*v20 * *(a2 + v29.i64[0]) + v20[1] * *(a2 + v29.i64[1]) + *(v20 - 1) * *(a2 + v28.i64[1]) + *(v20 - 2) * *(a2 + v28.i64[0]));
          v17 -= 4;
          v20 -= 4;
        }

        while (v17 >= v18 + 3);
      }

      if (v17 >= v18)
      {
        v15 = v15 - *(v9 + 8 * v17) * *(a2 + 8 * *(v8 + 4 * v17));
        if (v17 > v18)
        {
          v15 = v15 - *(v9 + 8 * (v17 - 1)) * *(a2 + 8 * *(v8 + 4 * (v17 - 1)));
          if (v17 >= v18 + 2)
          {
            v15 = v15 - *(v9 + 8 * (v17 - 2)) * *(a2 + 8 * *(v8 + 4 * (v17 - 2)));
          }
        }
      }

      *(result + a2) = v15 / *(result + v11);
      if (v15 != 0.0)
      {
        LODWORD(v7) = v7 - 1;
        v6[v7] = v13;
      }
    }

    while (v12 != v6);
  }

  if (v7)
  {
    v30 = &v6[v7];
    v31 = v5 - v30;
    if (v5 != v30)
    {
      result = memmove(v6, v30, v5 - v30);
    }

    *(a4 + 8) = v6 + v31;
  }

  return result;
}

void operations_research::glop::TriangularMatrix::PermutedLowerSparseSolve(int *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 1179, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, "lower_column", 0xCuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, " == NULL", 8uLL);
LABEL_35:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v46);
    return;
  }

  if (!a5)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/sparse.cc", 1180, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, "upper_column", 0xCuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, " == NULL", 8uLL);
    goto LABEL_35;
  }

  operations_research::glop::TriangularMatrix::PermutedComputeRowsToConsider(a1, a2, a3, a1 + 22, a1 + 25);
  v10 = *(a1 + 28);
  v11 = *(a1 + 29);
  v12 = (a1 + 56);
  v13 = *a1;
  v46[0] = 0;
  v14 = (v11 - v10) >> 3;
  if (v13 <= v14)
  {
    if (v13 < v14)
    {
      *(a1 + 29) = v10 + 8 * v13;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 56), v13 - v14, v46);
  }

  v15 = *a2;
  if (*a2 >= 1)
  {
    v16 = a2[1];
    v17 = a2[2];
    v18 = *v12;
    do
    {
      v19 = *v17++;
      v20 = v19;
      LODWORD(v19) = *v16++;
      *(v18 + 8 * v19) = v20;
      --v15;
    }

    while (v15);
  }

  *(a1 + 21) = 0;
  *(a4 + 8) = 0;
  *(a4 + 40) = 0;
  if (*(a5 + 16) < *(a5 + 8) + ((*(a1 + 26) - *(a1 + 25)) >> 2))
  {
    operator new[]();
  }

  v21 = *(a1 + 25);
  v22 = *(a1 + 26);
  if (v22 != v21)
  {
    v45 = *(a1 + 25);
    do
    {
      v24 = *(v22 - 4);
      v22 -= 4;
      v23 = v24;
      v25 = 8 * v24;
      v26 = *(*v12 + v25);
      if (v26 != 0.0)
      {
        *(*v12 + v25) = 0;
        v27 = *(*a3 + 4 * v23);
        v28 = *(a5 + 8);
        if (v28 == *(a5 + 16) && (!v28 || v28 < 2 * v28))
        {
          operator new[]();
        }

        *(a5 + 8) = v28 + 1;
        *(*(a5 + 24) + 4 * v28) = v23;
        *(*(a5 + 32) + 8 * v28) = v26;
        *(a5 + 40) = 1;
        v29 = *(a1 + 7);
        v30 = ((v27 << 32) + 0x100000000) >> 29;
        v31 = 8 * v27;
        *(a1 + 21) += *(v29 + v30) - *(v29 + v31) + 1;
        v32 = *(v29 + v31);
        v33 = *(v29 + v30) - v32;
        if (v33 >= 1)
        {
          v34 = (*(a1 + 4) + 4 * v32);
          v35 = (*(a1 + 1) + 8 * v32);
          v36 = *v12;
          do
          {
            v37 = *v35++;
            v38 = v37;
            LODWORD(v37) = *v34++;
            *(v36 + 8 * SLODWORD(v37)) = *(v36 + 8 * SLODWORD(v37)) - v38 * v26;
            --v33;
          }

          while (v33);
        }
      }
    }

    while (v22 != v21);
  }

  if (*(a4 + 16) < (*(a1 + 23) - *(a1 + 22)) >> 2)
  {
    operator new[]();
  }

  v39 = *(a1 + 22);
  v40 = *(a1 + 23);
  if (v39 != v40)
  {
    v41 = *(a4 + 8);
    do
    {
      v42 = *v39;
      v43 = 8 * *v39;
      v44 = *(*v12 + v43);
      *(*v12 + v43) = 0;
      if (v41 == *(a4 + 16) && (!v41 || v41 < 2 * v41))
      {
        operator new[]();
      }

      *(a4 + 8) = v41 + 1;
      *(*(a4 + 24) + 4 * v41) = v42;
      *(*(a4 + 32) + 8 * v41) = v44;
      *(a4 + 40) = 1;
      ++v39;
      ++v41;
    }

    while (v39 != v40);
  }
}

void sub_23CC73E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC73E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::TriangularMatrix::PermutedComputeRowsToConsider(unsigned int *a1, uint64_t *a2, void *a3, void *a4, int **a5)
{
  v9 = *a1;
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
    if (a1[28] > v9)
    {
      v11 = *(a1 + 15) + (((v9 + 63) >> 3) & 0x3FFFFFF8);
      *(v11 - 8) &= ~(-2 << (v9 + 63));
      v10 = v9;
    }
  }

  a1[28] = v10;
  v12 = *(a1 + 15);
  v13 = *(a1 + 16);
  v14 = (a1 + 30);
  v15 = (v10 + 63) >> 6;
  v81 = 0;
  v16 = (v13 - v12) >> 3;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a1 + 16) = v12 + 8 * v15;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append((a1 + 30), v15 - v16, &v81);
    LODWORD(v9) = *a1;
  }

  std::vector<BOOL>::resize((a1 + 62), v9, 0);
  a4[1] = *a4;
  a5[1] = *a5;
  v79 = (a1 + 36);
  *(a1 + 19) = *(a1 + 18);
  v17 = *a2;
  if (*a2 >= 1)
  {
    v18 = a2[1];
    do
    {
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        if ((*(*a3 + 4 * v20) & 0x80000000) != 0)
        {
          break;
        }

        LODWORD(v81) = v19;
        std::vector<int>::push_back[abi:ne200100](v79, &v81);
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      *(*v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      LODWORD(v81) = v19;
      std::vector<int>::push_back[abi:ne200100](a4, &v81);
      --v17;
    }

    while (v17);
LABEL_14:
    v21 = *(a1 + 19);
    if (*(a1 + 18) != v21)
    {
      v22 = *(a1 + 4);
      v76 = a4;
      v78 = a3;
      v75 = v22;
      do
      {
        v23 = *(v21 - 4);
        LODWORD(v81) = v23;
        if ((v23 & 0x80000000) != 0)
        {
          v80 = *(v21 - 8);
          v43 = v80;
          *(a1 + 19) = v21 - 8;
          *(*(a1 + 15) + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
          std::vector<int>::push_back[abi:ne200100](a5, &v80);
          v44 = 8 * *(*a3 + 4 * v80);
          v45 = *(*(a1 + 7) + v44);
          v46 = *(a1 + 34);
          v47 = *(v46 + v44);
          if (v45 >= v47)
          {
            *(v46 + 8 * *(*a3 + 4 * v80)) = v47;
          }

          else
          {
            v48 = *(a1 + 31);
            do
            {
              while (1)
              {
                v49 = *(v22 + 4 * v45);
                v50 = v49 >> 6;
                v51 = 1 << v49;
                v52 = *(v48 + 8 * v50);
                if ((v51 & v52) == 0)
                {
                  break;
                }

                *(v48 + 8 * v50) = v52 & ~v51;
                if (++v45 >= v47)
                {
                  goto LABEL_45;
                }
              }

              --v47;
              v53 = *(a1 + 4);
              v54 = *(v53 + 4 * v45);
              *(v53 + 4 * v45) = *(v53 + 4 * v47);
              *(v53 + 4 * v47) = v54;
              v55 = *(a1 + 1);
              v56 = *(v55 + 8 * v45);
              *(v55 + 8 * v45) = *(v55 + 8 * v47);
              *(v55 + 8 * v47) = v56;
            }

            while (v45 < v47);
LABEL_45:
            *(v46 + v44) = v47;
          }
        }

        else
        {
          v24 = *(*v14 + 8 * (v23 >> 6));
          if ((v24 & (1 << v23)) != 0)
          {
            *(a1 + 19) = v21 - 4;
          }

          else
          {
            v25 = *(*a3 + 4 * v23);
            if ((v25 & 0x80000000) != 0)
            {
              *(*v14 + 8 * (v23 >> 6)) = v24 | (1 << v23);
              std::vector<int>::push_back[abi:ne200100](a4, &v81);
              *(a1 + 19) -= 4;
            }

            else
            {
              std::vector<int>::push_back[abi:ne200100](v79, &operations_research::glop::kInvalidRow);
              v26 = *(*(a1 + 34) + 8 * v25);
              v27 = *(*(a1 + 7) + 8 * v25);
              v28 = v26 - v27;
              if (v26 > v27)
              {
                v29 = (v22 + 4 * v27);
                do
                {
                  v32 = *v29++;
                  v31 = v32;
                  v33 = v32 >> 6;
                  v34 = 1 << v32;
                  if (((1 << v32) & *(*v14 + 8 * v33)) == 0)
                  {
                    v36 = *(a1 + 19);
                    v35 = *(a1 + 20);
                    if (v36 < v35)
                    {
                      *v36 = v31;
                      v30 = (v36 + 4);
                    }

                    else
                    {
                      v37 = *v79;
                      v38 = v36 - *v79;
                      v39 = v38 >> 2;
                      v40 = (v38 >> 2) + 1;
                      if (v40 >> 62)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      v41 = v35 - v37;
                      if (v41 >> 1 > v40)
                      {
                        v40 = v41 >> 1;
                      }

                      if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v42 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v42 = v40;
                      }

                      if (v42)
                      {
                        if (!(v42 >> 62))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      *(4 * v39) = v31;
                      v30 = 4 * v39 + 4;
                      memcpy(0, v37, v38);
                      *(a1 + 18) = 0;
                      *(a1 + 19) = v30;
                      *(a1 + 20) = 0;
                      if (v37)
                      {
                        operator delete(v37);
                      }

                      a4 = v76;
                      v14 = (a1 + 30);
                      v22 = v75;
                    }

                    *(a1 + 19) = v30;
                    a3 = v78;
                  }

                  *(*(a1 + 31) + 8 * v33) |= v34;
                  --v28;
                }

                while (v28);
              }
            }
          }
        }

        v21 = *(a1 + 19);
      }

      while (*(a1 + 18) != v21);
    }
  }

  v58 = *a4;
  v57 = a4[1];
  if (*a4 != v57)
  {
    v59 = *v14;
    v60 = *a4;
    if (v57 - 1 == v58)
    {
      goto LABEL_65;
    }

    v61 = (((v57 - 1) - v58) >> 2) + 1;
    v60 = &v58[v61 & 0x7FFFFFFFFFFFFFFELL];
    v62 = v58 + 1;
    v63 = v61 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v64 = (*v62 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *(v59 + ((*(v62 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      *(v59 + v64) = 0;
      v62 += 2;
      v63 -= 2;
    }

    while (v63);
    if (v61 != (v61 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_65:
      do
      {
        v65 = *v60++;
        *(v59 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      }

      while (v60 != v57);
    }
  }

  v67 = *a5;
  v66 = a5[1];
  if (*a5 != v66)
  {
    v68 = *v14;
    v69 = *a5;
    if (v66 - 1 == v67)
    {
      goto LABEL_66;
    }

    v70 = (((v66 - 1) - v67) >> 2) + 1;
    v69 = &v67[v70 & 0x7FFFFFFFFFFFFFFELL];
    v71 = v67 + 1;
    v72 = v70 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v73 = (*v71 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *(v68 + ((*(v71 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      *(v68 + v73) = 0;
      v71 += 2;
      v72 -= 2;
    }

    while (v72);
    if (v70 != (v70 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_66:
      do
      {
        v74 = *v69++;
        *(v68 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
      }

      while (v69 != v66);
    }
  }
}

void operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(unsigned int *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = *a1;
    v6 = v5;
    v7 = (v3 - v2) >> 2;
    if (v7 > (v5 * 0.025))
    {
LABEL_39:
      a2[1] = v2;
      return;
    }

    if (v5 < 1)
    {
      LODWORD(v5) = 0;
    }

    else if (a1[28] > v5)
    {
      v8 = *(a1 + 15) + (((v5 + 63) >> 3) & 0x3FFFFFF8);
      *(v8 - 8) &= ~(-2 << (v5 + 63));
    }

    v9 = v6 * 0.05;
    a1[28] = v5;
    v10 = *(a1 + 15);
    v11 = *(a1 + 16);
    v12 = a1 + 30;
    v13 = (v5 + 63) >> 6;
    v56 = 0;
    v14 = (v11 - v10) >> 3;
    if (v13 <= v14)
    {
      if (v13 < v14)
      {
        *(a1 + 16) = v10 + 8 * v13;
      }
    }

    else
    {
      v15 = a1;
      std::vector<unsigned long long>::__append((a1 + 30), v13 - v14, &v56);
      a1 = v15;
      v2 = *a2;
      v3 = a2[1];
    }

    v16 = v9;
    if (v2 != v3)
    {
      v17 = *v12;
      v18 = v2;
      do
      {
        v19 = *v18++;
        *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      }

      while (v18 != v3);
      v20 = 0;
      v21 = 0;
      v51 = a1;
      v52 = *(a1 + 4);
      v55 = v12;
      do
      {
        v22 = *(v2 + 4 * v20);
        v23 = *(a1 + 7);
        v24 = *(v23 + 8 * v22);
        v25 = *(v23 + (((v22 << 32) + 0x100000000) >> 29));
        v26 = v25 - v24;
        if (v25 > v24)
        {
          v53 = v21;
          v54 = v7 + v25 - v24;
          v27 = *v12;
          v28 = (v52 + 4 * v24);
          do
          {
            v30 = *v28++;
            v29 = v30;
            v31 = v30 >> 6;
            v32 = 1 << v30;
            if (((1 << v30) & *(v27 + 8 * v31)) == 0)
            {
              v33 = a2[2];
              if (v3 < v33)
              {
                *v3++ = v29;
              }

              else
              {
                v34 = *a2;
                v35 = v3 - *a2;
                v36 = (v35 >> 2) + 1;
                if (v36 >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v37 = v33 - v34;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v38 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  if (!(v38 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v39 = (4 * (v35 >> 2));
                *v39 = v29;
                v3 = v39 + 1;
                memcpy(0, v34, v35);
                *a2 = 0;
                a2[1] = v3;
                a2[2] = 0;
                if (v34)
                {
                  operator delete(v34);
                }

                v12 = v55;
              }

              a2[1] = v3;
              v27 = *v12;
              *(*v12 + 8 * v31) |= v32;
            }

            --v26;
          }

          while (v26);
          a1 = v51;
          v21 = v53;
          LODWORD(v7) = v54;
          v16 = v9;
        }

        if (v7 > v16)
        {
          break;
        }

        v20 = ++v21;
        v2 = *a2;
      }

      while (v21 < ((v3 - *a2) >> 2));
    }

    if (v7 > v16)
    {
      bzero(*(a1 + 15), *(a1 + 16) - *(a1 + 15));
      v2 = *a2;
      goto LABEL_39;
    }

    v40 = 126 - 2 * __clz((v3 - *a2) >> 2);
    if (v3 == *a2)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(*a2, v3, &v57, v41, 1);
    v43 = *a2;
    v42 = a2[1];
    if (*a2 != v42)
    {
      v44 = *v12;
      v45 = *a2;
      if (v42 - 1 == v43)
      {
        goto LABEL_55;
      }

      v46 = ((v42 - v43 - 4) >> 2) + 1;
      v45 = (v43 + 4 * (v46 & 0x7FFFFFFFFFFFFFFELL));
      v47 = (v43 + 4);
      v48 = v46 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v49 = (*v47 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v44 + ((*(v47 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v44 + v49) = 0;
        v47 += 2;
        v48 -= 2;
      }

      while (v48);
      if (v46 != (v46 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_55:
        do
        {
          v50 = *v45++;
          *(v44 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v45 != v42);
      }
    }
  }
}

void operations_research::glop::TriangularMatrix::ComputeInverseInfinityNormUpperBound(operations_research::glop::TriangularMatrix *this)
{
  v1 = *(this + 1);
  if (*(this + 26) != v1)
  {
    if (v1 < 1)
    {
      v3 = 1;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      while (*(*(this + 10) + 8 * v2) != 0.0)
      {
        v4 = *(this + 7);
        v5 = *(v4 + 8 * v2);
        v6 = *(v4 + (((v2 << 32) + 0x100000000) >> 29));
        v7 = v6 <= v5;
        v8 = v6 - v5;
        if (!v7)
        {
          v9 = (*(this + 4) + 4 * v5);
          do
          {
            v10 = *v9++;
            if (v2 <= v10)
            {
              goto LABEL_12;
            }
          }

          while (--v8);
        }

        v3 = ++v2 >= v1;
        if (v2 == v1)
        {
          break;
        }
      }
    }

LABEL_12:
    if (*this)
    {
      if ((*this & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v1 >= 1)
    {
      v11 = 0;
      v12 = *(this + 4);
      v13 = *(this + 1);
      v14 = *(this + 10);
      v15 = *(this + 7);
      do
      {
        LODWORD(v16) = v1 + ~v11;
        if (v3)
        {
          v16 = v16;
        }

        else
        {
          v16 = v11;
        }

        v17 = (8 * v16);
        v18 = *v17 / fabs(*(v17 + v14));
        *v17 = v18;
        v19 = *(v17 + v15);
        v20 = *(v15 + (((v16 << 32) + 0x100000000) >> 29));
        v7 = v20 <= v19;
        v21 = v20 - v19;
        if (!v7)
        {
          v22 = (v13 + 8 * v19);
          v23 = (v12 + 4 * v19);
          do
          {
            v24 = *v22++;
            v25 = fabs(v24);
            LODWORD(v24) = *v23++;
            *(8 * SLODWORD(v24)) = *(8 * SLODWORD(v24)) + v18 * v25;
            --v21;
          }

          while (v21);
        }

        ++v11;
      }

      while (v11 != v1);
    }
  }
}

uint64_t std::vector<operations_research::glop::SparseColumn>::__assign_with_size[abi:ne200100]<operations_research::glop::SparseColumn*,operations_research::glop::SparseColumn*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v12 = *(v9 - 6);
          v9 -= 6;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x23EED9440](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x555555555555555)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 4) >= a4)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *>(v24, a2, a3, v7);
    v18 = v17;
    v19 = a1[1];
    if (v19 != v17)
    {
      do
      {
        v20 = *(v19 - 6);
        v19 -= 6;
        result = v20;
        *v19 = 0;
        if (v20)
        {
          result = MEMORY[0x23EED9440](result, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
    }

    a1[1] = v18;
  }

  else
  {
    v14 = a2 + v13;
    result = std::__copy_impl::operator()[abi:ne200100]<operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *>(v24, a2, a2 + v13, v7);
    v16 = a1[1];
    v26 = v16;
    v27 = v16;
    v24[0] = a1;
    v24[1] = &v26;
    v24[2] = &v27;
    v25 = 0;
    if (v14 != a3)
    {
      result = v16;
      do
      {
        operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(result, v14);
        v14 += 48;
        result = v27 + 48;
        v27 += 48;
      }

      while (v14 != a3);
      v16 = result;
    }

    a1[1] = v16;
  }

  return result;
}

void sub_23CC74C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::glop::SparseColumn>,operations_research::glop::SparseColumn*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_23CC74C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::glop::SparseColumn>,operations_research::glop::SparseColumn*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::glop::SparseColumn>,operations_research::glop::SparseColumn*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    while (v4 != v5)
    {
      v7 = *(v4 - 6);
      v4 -= 6;
      v6 = v7;
      *v4 = 0;
      if (v7)
      {
        MEMORY[0x23EED9440](v6, 0x1000C8077774924);
      }
    }
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *,operations_research::glop::SparseColumn *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    *(v8 + 8) = 0;
    *(v8 + 40) = 0;
    v9 = a2 + v7;
    if (*(a4 + v7 + 16) < *(a2 + v7 + 16))
    {
      operator new[]();
    }

    v10 = *(v9 + 8);
    if (v10 >= 1)
    {
      memmove(*(a4 + v7 + 24), *(a2 + v7 + 24), 4 * v10);
      memmove(*(a4 + v7 + 32), *(a2 + v7 + 32), 8 * *(v9 + 8));
      v10 = *(v9 + 8);
    }

    *(v8 + 8) = v10;
    *(v8 + 40) = *(a2 + v7 + 40);
    v7 += 48;
  }

  while (a2 + v7 != v6);
  return v6;
}

void std::vector<operations_research::glop::SparseColumn>::__append(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4) < a2)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4);
    v8 = v7 + a2;
    if (v7 + a2 > 0x555555555555555)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = 48 * v7;
    v25 = v13;
    v14 = 48 * a2;
    if (48 * a2)
    {
      v15 = v13 + v14;
      do
      {
        operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v13, a3);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
      v16 = *a1;
      v17 = a1[1];
      v18 = v25 + *a1 - v17;
      if (v17 == *a1)
      {
LABEL_30:
        *a1 = v18;
        a1[1] = v15;
        a1[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }

        return;
      }
    }

    else
    {
      v15 = v13;
      v16 = *a1;
      v17 = a1[1];
      v18 = v13 + *a1 - v17;
      if (v17 == *a1)
      {
        goto LABEL_30;
      }
    }

    v19 = v16;
    v20 = v18;
    do
    {
      v21 = *v19;
      *v19 = 0;
      *v20 = v21;
      v22 = *(v19 + 1);
      v23 = *(v19 + 3);
      *(v20 + 40) = *(v19 + 40);
      *(v20 + 24) = v23;
      *(v20 + 8) = v22;
      v19 += 6;
      v20 += 48;
    }

    while (v19 != v17);
    do
    {
      v24 = *v16;
      *v16 = 0;
      if (v24)
      {
        MEMORY[0x23EED9440](v24, 0x1000C8077774924);
      }

      v16 += 6;
    }

    while (v16 != v17);
    v16 = *a1;
    goto LABEL_30;
  }

  v11 = 48 * a2;
  if (48 * a2)
  {
    v12 = v6 + v11;
    do
    {
      operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v6, a3);
      v6 += 48;
      v11 -= 48;
    }

    while (v11);
    v6 = v12;
  }

  a1[1] = v6;
}

void sub_23CC750C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::glop::SparseColumn>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::glop::SparseColumn>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 6);
    v2 -= 6;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x23EED9440](v4, 0x1000C8077774924);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 4);
      v8 = *a1;
      if (v7 < *a1)
      {
        *a1 = v7;
        *(a2 - 4) = v8;
        a7.n128_u64[0] = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = a7.n128_u64[0];
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v18 = (a1 + 16);
        if ((a1 + 16) != a2)
        {
          v19 = 0;
          v20 = a1;
          do
          {
            v22 = v18;
            v23 = *v18;
            v24 = *v20;
            if (v23 < *v20)
            {
              a7.n128_u64[0] = *(v20 + 3);
              v25 = v19;
              do
              {
                v26 = a1 + v25;
                *(v26 + 16) = v24;
                *(v26 + 24) = *(a1 + v25 + 8);
                if (!v25)
                {
                  v21 = a1;
                  goto LABEL_15;
                }

                v24 = *(v26 - 16);
                v25 -= 16;
              }

              while (v23 < v24);
              v21 = a1 + v25 + 16;
LABEL_15:
              *v21 = v23;
              *(v21 + 8) = a7.n128_u64[0];
            }

            v18 = v22 + 4;
            v19 += 16;
            v20 = v22;
          }

          while (v22 + 4 != a2);
        }
      }
    }

    else
    {
      v10 = a4 >> 1;
      v11 = (a1 + 16 * (a4 >> 1));
      v12 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v30 = a5;
        v31.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(a1, (a1 + 16 * (a4 >> 1)), a3, a4 >> 1, a5, a7);
        v32 = &v30[16 * v10];
        a7.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(v11, a2, a3, v12, v32, v31);
        v33 = &v30[16 * a4];
        if ((a4 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v34 = v32;
          v35 = a1;
          while (v34 != v33)
          {
            v36 = *v34;
            if (*v34 < *v30)
            {
              v37 = v34;
            }

            else
            {
              v36 = *v30;
              v37 = v30;
            }

            a7.n128_u64[0] = *(v37 + 1);
            if (*v34 < *v30)
            {
              v34 += 16;
            }

            else
            {
              v30 += 16;
            }

            *v35 = v36;
            *(v35 + 8) = a7.n128_u64[0];
            v35 += 16;
            if (v30 == v32)
            {
              goto LABEL_35;
            }
          }

          if (v30 != v32)
          {
            v38 = 0;
            do
            {
              v39 = &v30[v38];
              v40 = v35 + v38;
              *v40 = *&v30[v38];
              a7.n128_u64[0] = *&v30[v38 + 8];
              *(v40 + 8) = a7.n128_u64[0];
              v38 += 16;
            }

            while (v39 + 16 != v32);
          }
        }

        else
        {
          v34 = v32;
          v35 = a1;
LABEL_35:
          while (v34 != v33)
          {
            *v35 = *v34;
            a7.n128_u64[0] = *(v34 + 8);
            *(v35 + 8) = a7.n128_u64[0];
            v34 += 16;
            v35 += 16;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(a1, a1 + 16 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(v11, a2, a3, v12, a5, a6);

        a7.n128_f64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(a1, v11, a2, a3, v10, v12, a5, a6, v17);
      }
    }
  }

  return a7.n128_f64[0];
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = *(a2 - 4);
      v6 = (a2 - 1);
      if (v7 >= *a1)
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v17 = a4 >> 1;
      v18 = 16 * (a4 >> 1);
      v19 = &a1[v18 / 0x10];
      v20 = a1;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>)();
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(v19, a2, a3, a4 - v17, a5 + v18, a4 - v17);
      if (v18)
      {
        v25 = v19;
        v26 = a5;
        v27 = a2;
        v28 = v20;
        while (v25 != a2)
        {
          if (*v25 >= *v28)
          {
            v29 = *v28++;
            a6.n128_u64[0] = v29;
            *v26++ = v29;
            if (v28 == v19)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v30 = *v25++;
            a6.n128_u64[0] = v30;
            *v26++ = v30;
            if (v28 == v19)
            {
              goto LABEL_34;
            }
          }
        }

        while (v28 != v19)
        {
          v31 = *v28++;
          a6.n128_u64[0] = v31;
          *v26++ = v31;
        }
      }

      else
      {
        v25 = v19;
        v26 = a5;
        v27 = a2;
LABEL_34:
        while (v25 != v27)
        {
          v32 = *v25++;
          a6.n128_u64[0] = v32;
          *v26++ = v32;
        }
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v8 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v9 = 0;
        v10 = a5;
        v11 = a5;
        do
        {
          while (1)
          {
            v12 = v8;
            v13 = *v11;
            v11 += 4;
            if (*v8 < v13)
            {
              break;
            }

            a6 = *v8;
            *v11 = *v8;
            v8 += 4;
            v9 += 16;
            v10 = v11;
            a1 = v12;
            if (v12 + 4 == a2)
            {
              return a6.n128_f64[0];
            }
          }

          *v11 = *v10;
          v14 = a5;
          if (v10 != a5)
          {
            v15 = v9;
            while (1)
            {
              v14 = a5 + v15;
              v16 = *(a5 + v15 - 16);
              if (*v12 >= v16)
              {
                break;
              }

              *v14 = v16;
              *(v14 + 8) = *(v14 - 8);
              v15 -= 16;
              if (!v15)
              {
                v14 = a5;
                break;
              }
            }
          }

          *v14 = *v12;
          a6.n128_u64[0] = *(a1 + 3);
          *(v14 + 8) = a6.n128_u64[0];
          v8 = v12 + 4;
          v9 += 16;
          v10 = v11;
          a1 = v12;
        }

        while (v12 + 4 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

double std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __n128 a9)
{
  if (!a6)
  {
    return a9.n128_f64[0];
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return a9.n128_f64[0];
    }

    v12 = 0;
    v13 = *a2;
    v14 = -a5;
    while (1)
    {
      v15 = *(v12 + a1);
      if (v13 < v15)
      {
        break;
      }

      v12 += 4;
      if (__CFADD__(v14++, 1))
      {
        return a9.n128_f64[0];
      }
    }

    v17 = -v14;
    v18 = v12 + a1;
    if (-v14 >= a6)
    {
      if (v14 == -1)
      {
        v64 = v12 + a1;
        *v64 = v13;
        *a2 = v15;
        a9.n128_u64[0] = *(v64 + 8);
        *(v64 + 8) = *(a2 + 1);
        *(a2 + 1) = a9.n128_u64[0];
        return a9.n128_f64[0];
      }

      v27 = v17 / 2;
      v21 = &a1[16 * (v17 / 2) + v12];
      v20 = a2;
      if (a2 != a3)
      {
        v29 = (a3 - a2) >> 4;
        v20 = a2;
        do
        {
          v30 = v29 >> 1;
          v31 = &v20[16 * (v29 >> 1)];
          v33 = *v31;
          v32 = v31 + 16;
          v29 += ~(v29 >> 1);
          if (v33 < *v21)
          {
            v20 = v32;
          }

          else
          {
            v29 = v30;
          }
        }

        while (v29);
      }

      v19 = (v20 - a2) >> 4;
      v28 = v20;
      if (a2 != v21)
      {
LABEL_27:
        v28 = v21;
        if (a2 != v20)
        {
          v34 = *v21;
          *v21 = v13;
          *a2 = v34;
          v35 = *(v21 + 1);
          *(v21 + 1) = *(a2 + 1);
          *(a2 + 1) = v35;
          v28 = v21 + 16;
          for (i = a2 + 16; i != v20; i += 16)
          {
            if (v28 == a2)
            {
              a2 = i;
            }

            v37 = *v28;
            *v28 = *i;
            *i = v37;
            v38 = *(v28 + 1);
            *(v28 + 1) = *(i + 1);
            *(i + 1) = v38;
            v28 += 16;
          }

          if (v28 != a2)
          {
            v39 = v28;
            v40 = a2;
            while (1)
            {
              v41 = *v39;
              *v39 = *v40;
              *v40 = v41;
              v42 = *(v39 + 1);
              *(v39 + 1) = *(v40 + 1);
              *(v40 + 1) = v42;
              v39 += 16;
              v40 += 16;
              v43 = v39 == a2;
              if (v40 == v20)
              {
                if (v39 == a2)
                {
                  break;
                }

                v40 = a2 + 16;
                while (1)
                {
                  v44 = *v39;
                  *v39 = *a2;
                  *a2 = v44;
                  v45 = *(v39 + 1);
                  *(v39 + 1) = *(a2 + 1);
                  *(a2 + 1) = v45;
                  v39 += 16;
                  v43 = v39 == a2;
                  if (v40 != v20)
                  {
                    break;
                  }

                  if (v39 == a2)
                  {
                    goto LABEL_41;
                  }
                }
              }

              if (v43)
              {
                a2 = v40;
              }
            }
          }
        }
      }
    }

    else
    {
      v19 = a6 / 2;
      v20 = &a2[16 * (a6 / 2)];
      v21 = a2;
      if ((a2 - a1) != v12)
      {
        v22 = (a2 - a1 - v12) >> 4;
        v21 = v12 + a1;
        do
        {
          v23 = v22 >> 1;
          v24 = &v21[16 * (v22 >> 1)];
          v26 = *v24;
          v25 = v24 + 16;
          v22 += ~(v22 >> 1);
          if (*v20 < v26)
          {
            v22 = v23;
          }

          else
          {
            v21 = v25;
          }
        }

        while (v22);
      }

      v27 = (v21 - a1 - v12) >> 4;
      v28 = &a2[16 * (a6 / 2)];
      if (a2 != v21)
      {
        goto LABEL_27;
      }
    }

LABEL_41:
    v46 = a6 - v19;
    if (v27 + v19 >= a6 - (v27 + v19) - v14)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(v28, v20, a3, a4, -(v27 + v14), a6 - v19, a7, a8);
      a2 = v21;
      a5 = v27;
      a3 = v28;
      a6 = v19;
      a1 = v18;
      if (!v19)
      {
        return a9.n128_f64[0];
      }
    }

    else
    {
      v47 = v21;
      v48 = a3;
      v49 = -(v27 + v14);
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::CleanUp(void)::{lambda(std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&,std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double> const&)#1} &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>*>>(v12 + a1, v47, v28, a4, v27, v19, a7, a8);
      a5 = v49;
      a3 = v48;
      a2 = v20;
      a6 = v46;
      a1 = v28;
      if (!v46)
      {
        return a9.n128_f64[0];
      }
    }
  }

  if (a5 <= a6)
  {
    if (a2 != a1)
    {
      v58 = 0;
      do
      {
        a9 = *&a1[v58];
        *&a7[v58] = a9;
        v58 += 16;
      }

      while (&a1[v58] != a2);
      if (v58)
      {
        v59 = &a7[v58];
        v60 = &a7[v58 - 16];
        while (a2 != a3)
        {
          v61 = *a2;
          v62 = *a2 < *a7;
          if (*a2 < *a7)
          {
            v63 = a2;
          }

          else
          {
            v61 = *a7;
            v63 = a7;
          }

          if (*a2 < *a7)
          {
            a2 += 16;
          }

          a9.n128_u64[0] = *(v63 + 1);
          if (!v62)
          {
            a7 += 16;
          }

          *a1 = v61;
          *(a1 + 1) = a9.n128_u64[0];
          a1 += 16;
          if (v59 == a7)
          {
            return a9.n128_f64[0];
          }
        }

        v65 = 0;
        do
        {
          v66 = &a1[v65];
          v67 = &a7[v65];
          *v66 = *&a7[v65];
          a9.n128_u64[0] = *&a7[v65 + 8];
          *(v66 + 1) = a9.n128_u64[0];
          v65 += 16;
        }

        while (v60 != v67);
      }
    }
  }

  else if (a2 != a3)
  {
    v50 = 0;
    do
    {
      a9 = *&a2[v50];
      *&a7[v50] = a9;
      v50 += 16;
    }

    while (&a2[v50] != a3);
    if (v50)
    {
      v51 = &a7[v50];
      v52 = a3 - 8;
      while (a2 != a1)
      {
        v53 = *(a2 - 4);
        v54 = *(v51 - 4);
        v55 = v54 < v53;
        if (v54 < v53)
        {
          v56 = a2;
        }

        else
        {
          v53 = *(v51 - 4);
          v56 = v51;
        }

        if (v55)
        {
          a2 -= 16;
        }

        a9.n128_u64[0] = *(v56 - 1);
        if (!v55)
        {
          v51 -= 16;
        }

        *(v52 - 2) = v53;
        *v52 = a9.n128_u64[0];
        v52 -= 16;
        if (v51 == a7)
        {
          return a9.n128_f64[0];
        }
      }

      while (v51 != a7)
      {
        v57 = *(v51 - 4);
        v51 -= 16;
        *(v52 - 2) = v57;
        a9.n128_u64[0] = *(v51 + 1);
        *v52 = a9.n128_u64[0];
        v52 -= 16;
      }
    }
  }

  return a9.n128_f64[0];
}

void std::vector<operations_research::glop::SparseColumn>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    v15 = 3 * a2;
    if (48 * a2)
    {
      v16 = &v3[v15];
      do
      {
        *(v3 + 25) = 0uLL;
        *v3 = 0uLL;
        v3[1] = 0uLL;
        v3 += 3;
        v15 -= 3;
      }

      while (v15 * 16);
      v3 = v16;
    }

    a1[1] = v3;
    return;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v6 = v5 + a2;
  if (v5 + a2 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = 48 * v5;
  v11 = 48 * a2;
  if (48 * a2)
  {
    v9 = v17 + v11;
    v10 = 48 * v5;
    do
    {
      *(v10 + 25) = 0uLL;
      *v10 = 0uLL;
      *(v10 + 16) = 0uLL;
      v10 += 48;
      v11 -= 48;
    }

    while (v11);
    v12 = *a1;
    v13 = a1[1];
    v14 = v17 + *a1 - v13;
    if (v13 != *a1)
    {
      goto LABEL_23;
    }

LABEL_14:
    *a1 = v14;
    a1[1] = v9;
    a1[2] = 0;
    if (!v12)
    {
      return;
    }

    goto LABEL_30;
  }

  v9 = 48 * v5;
  v12 = *a1;
  v13 = a1[1];
  v14 = v17 + *a1 - v13;
  if (v13 == *a1)
  {
    goto LABEL_14;
  }

LABEL_23:
  v18 = v12;
  v19 = v14;
  do
  {
    v20 = *v18;
    *v18 = 0;
    *v19 = v20;
    v21 = *(v18 + 1);
    v22 = *(v18 + 3);
    *(v19 + 40) = *(v18 + 40);
    *(v19 + 24) = v22;
    *(v19 + 8) = v21;
    v18 += 6;
    v19 += 48;
  }

  while (v18 != v13);
  do
  {
    v23 = *v12;
    *v12 = 0;
    if (v23)
    {
      MEMORY[0x23EED9440](v23, 0x1000C8077774924);
    }

    v12 += 6;
  }

  while (v12 != v13);
  v12 = *a1;
  *a1 = v14;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
LABEL_30:

    operator delete(v12);
  }
}

uint64_t operations_research::sat::HittingSetOptimizer::HittingSetOptimizer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = -1;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  v7 = a1 + 24;
  v8 = *(a4 + 24);
  if (v8)
  {
    if (v8 == a4)
    {
      *(a1 + 48) = v7;
      (*(**(a4 + 24) + 24))(*(a4 + 24), v7);
    }

    else
    {
      *(a1 + 48) = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = a5;
  *(a1 + 64) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a5);
  *(a1 + 72) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a5);
  *(a1 + 80) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a5);
  *(a1 + 88) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a5);
  *(a1 + 96) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a5);
  *(a1 + 104) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 112) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(*(a1 + 56));
  *(a1 + 120) = 0;
  operations_research::MPModelRequest::MPModelRequest(a1 + 128, 0);
  operations_research::MPSolutionResponse::MPSolutionResponse(a1 + 200, 0);
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_23CE31C20;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = &unk_23CE31C20;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 144) |= 1u;
  v9 = *(a1 + 136);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 152), "limits/gap = 0", 0xEuLL, v9);
  *(a1 + 192) = 3;
  *(a1 + 144) |= 0x80u;
  return a1;
}

void sub_23CC75EFC(_Unwind_Exception *a1)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v2 + 608));
  v6 = *(v2 + 584);
  if (v6)
  {
    *(v2 + 592) = v6;
    operator delete(v6);
    v7 = *(v2 + 560);
    if (!v7)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(v2 + 560);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 568) = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_4:
    v9 = *(v2 + 504);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v2 + 544) = v8;
  operator delete(v8);
  v9 = *(v2 + 504);
  if (!v9)
  {
LABEL_5:
    v10 = *(v2 + 480);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v2 + 512) = v9;
  operator delete(v9);
  v10 = *(v2 + 480);
  if (!v10)
  {
LABEL_6:
    if (!*(v2 + 448))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v2 + 488) = v10;
  operator delete(v10);
  if (!*(v2 + 448))
  {
LABEL_8:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set((v2 + 416));
    operations_research::sat::LinearRelaxation::~LinearRelaxation(v3);
    operations_research::MPSolutionResponse::~MPSolutionResponse((v2 + 200));
    operations_research::MPModelRequest::~MPModelRequest((v2 + 128));
    std::function<void ()(void)>::~function(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete((*(v2 + 464) - (*(v2 + 456) & 1) - 8));
  goto LABEL_8;
}

void operations_research::sat::HittingSetOptimizer::Optimize(operations_research::sat::HittingSetOptimizer *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/max_hs.cc", 665);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "Not supported.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

void operations_research::sat::MinimizeCoreWithPropagation(operations_research::TimeLimit *a1, operations_research::sat::SatSolver *this, std::vector<int> *a3)
{
  if (*(this + 528))
  {
    return;
  }

  v55[0] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v55[1] = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v56 = 0;
  begin = a3->__begin_;
  end = a3->__end_;
  __p[1] = 0;
  v54 = 0;
  __p[0] = 0;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::SatSolver::Backtrack(this, 0);
  operations_research::sat::SatSolver::SetAssumptionLevel(this, 0);
  if (!operations_research::sat::SatSolver::FinishPropagation(this))
  {
    goto LABEL_63;
  }

  while ((operations_research::TimeLimit::LimitReached(a1) & 1) == 0)
  {
    v8 = operations_research::sat::MoveOneUnprocessedLiteralLast(v55, *(this + 74), __p);
    if (v8 == -1)
    {
      break;
    }

    operations_research::sat::SatSolver::Backtrack(this, v8);
    if ((*(this + 528) & 1) == 0)
    {
      do
      {
        if (operations_research::TimeLimit::LimitReached(a1))
        {
          break;
        }

        v13 = *(this + 74);
        if (v13 >= (__p[1] - __p[0]) >> 2)
        {
          break;
        }

        v14 = *(__p[0] + v13);
        v15 = *(*(*(this + 27) + 24) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if ((v15 >> v14))
        {
          v16 = __p[0] + 4 * v13;
          v17 = (__p[1] - (v16 + 4));
          if (__p[1] != v16 + 4)
          {
            memmove(__p[0] + 4 * v13, v16 + 4, __p[1] - (v16 + 4));
          }

          __p[1] = &v17[v16];
        }

        else
        {
          if ((v15 >> (v14 & 0x3F ^ 1)))
          {
            operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(this, v14, 0);
            operations_research::sat::SatSolver::GetLastIncompatibleDecisions(this, &v50);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            *__p = v50;
            v54 = v51;
            break;
          }

          operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(this, v14);
        }
      }

      while (*(this + 528) != 1);
    }

    v9 = __p[0];
    if (__p[0] == __p[1])
    {
      goto LABEL_64;
    }

    if (*(this + 528))
    {
      goto LABEL_63;
    }

    v10 = *(__p[1] - 1);
    LODWORD(v50) = v10;
    if (!v56)
    {
      operator new();
    }

    v11 = v55[0];
    v12 = *(v55[0] + 10);
    if (*(v55[0] + 10))
    {
LABEL_27:
      v18 = 0;
      do
      {
        v19 = (v12 + v18) >> 1;
        if (*&v11[4 * v19 + 12] < v10)
        {
          v18 = v19 + 1;
        }

        else
        {
          v12 = (v12 + v18) >> 1;
        }
      }

      while (v18 != v12);
    }

    while (!v11[11])
    {
      v11 = *&v11[8 * v12 + 256];
      v12 = v11[10];
      if (v11[10])
      {
        goto LABEL_27;
      }
    }

    v20 = v12;
    v21 = v11;
    while (v12 == v21[10])
    {
      LODWORD(v12) = v21[8];
      v21 = *v21;
      if (v21[11])
      {
        goto LABEL_7;
      }
    }

    if (v10 < *&v21[4 * v12 + 12])
    {
LABEL_7:
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(v55, v11, v20, &v50);
      continue;
    }
  }

  operations_research::sat::SatSolver::Backtrack(this, 0);
  operations_research::sat::SatSolver::SetAssumptionLevel(this, 0);
  if ((__p[1] - __p[0]) >= (a3->__end_ - a3->__begin_))
  {
    goto LABEL_63;
  }

  if (dword_27E25D190 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::MinimizeCoreWithPropagation(operations_research::TimeLimit *,operations_research::sat::SatSolver *,std::vector<operations_research::sat::Literal> *)::$_0::operator() const(void)::site, dword_27E25D190))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v50, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 104);
    v45 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v50, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, "minimization with propag ", 0x19uLL);
    v47[0] = a3->__end_ - a3->__begin_;
    v46 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v45, v47);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, " -> ", 4uLL);
    v47[0] = (__p[1] - __p[0]) >> 2;
    absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v46, v47);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v50);
  }

  v50 = xmmword_23CE306D0;
  v22 = __p[0];
  v23 = __p[1];
  while (v22 != v23)
  {
    v49 = *v22;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>(&v50, &v49, v47);
    if (v48 == 1)
    {
      *v47[1] = v49;
    }

    ++v22;
  }

  v24 = a3->__begin_;
  v25 = a3->__end_;
  if (a3->__begin_ == v25)
  {
    goto LABEL_56;
  }

  v26 = v50;
  if (v50 >= 2)
  {
    v27 = 0;
    v30 = a3->__begin_;
    while (1)
    {
      v34 = 0;
      v36 = *v30;
      _X17 = v51;
      __asm { PRFM            #4, [X17] }

      v43 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36));
      v35 = (v43 >> 7) ^ (v51 >> 12);
      v44 = vdup_n_s8(v43 & 0x7F);
      while (1)
      {
        v31 = v35 & v26;
        v32 = *(v51 + v31);
        v33 = vceq_s8(v32, v44);
        if (v33)
        {
          break;
        }

LABEL_72:
        if (vceq_s8(v32, 0x8080808080808080))
        {
          goto LABEL_75;
        }

        v34 += 8;
        v35 = v34 + v31;
      }

      while (*(v52 + 4 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v26)) != v36)
      {
        v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v33)
        {
          goto LABEL_72;
        }
      }

      v24[v27++] = v36;
LABEL_75:
      if (++v30 == v25)
      {
        goto LABEL_57;
      }
    }
  }

  if (*(&v50 + 1) < 2uLL)
  {
LABEL_56:
    v27 = 0;
    goto LABEL_57;
  }

  v27 = 0;
  v28 = a3->__begin_;
  do
  {
    if (v51 == *v28)
    {
      v24[v27++] = *v28;
    }

    ++v28;
  }

  while (v28 != v25);
LABEL_57:
  v29 = v25 - v24;
  if (v27 <= v29)
  {
    if (v27 < v29)
    {
      a3->__end_ = &v24[v27];
    }
  }

  else
  {
    std::vector<int>::__append(a3, v27 - v29);
  }

  if (v50 >= 2)
  {
    operator delete((v51 - (BYTE8(v50) & 1) - 8));
  }

LABEL_63:
  v9 = __p[0];
LABEL_64:
  if (v9)
  {
    __p[1] = v9;
    operator delete(v9);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(v55);
}

void sub_23CC765D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear((v18 - 72));
  _Unwind_Resume(a1);
}

void operations_research::sat::MinimizeCoreWithSearch(operations_research::TimeLimit *this, uint64_t a2, void *a3)
{
  if ((*(a2 + 528) & 1) == 0)
  {
    v4 = a3[1] - *a3;
    if (v4 != 4 && (v4 >> 2) <= 0x64)
    {
      v7 = v4 >> 2;
      v8 = *(a2 + 256);
      v9 = *v8;
      *v8 = 0;
      __p = 0;
      v39 = 0;
      v40 = 0;
      v36 = xmmword_23CE306D0;
      while ((operations_research::TimeLimit::LimitReached(this) & 1) == 0)
      {
        v10 = (a3[1] - *a3) >> 2;
        v11 = v10 - 1;
        if (v10 - 1 < 0)
        {
          break;
        }

        v12 = (v10 - 1);
        while (1)
        {
          LODWORD(v41) = *(*a3 + 4 * v12);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>(&v36, &v41, &v34);
          if (v35)
          {
            break;
          }

          --v11;
          if (v12-- <= 0)
          {
            goto LABEL_34;
          }
        }

        v32 = v7;
        v33 = v9;
        **(&v34 + 1) = v41;
        v14 = __p;
        v39 = __p;
        v16 = *a3;
        v15 = a3[1];
        if (v15 != *a3)
        {
          v17 = 0;
          v18 = 1;
          do
          {
            if (v11)
            {
              if (v14 < v40)
              {
                *v14 = v16[v17];
                v14 += 4;
              }

              else
              {
                v19 = __p;
                v20 = v14 - __p;
                v21 = (v14 - __p) >> 2;
                v22 = v21 + 1;
                if ((v21 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v23 = v40 - __p;
                if ((v40 - __p) >> 1 > v22)
                {
                  v22 = v23 >> 1;
                }

                if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v24 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v22;
                }

                if (v24)
                {
                  if (!(v24 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v25 = v21;
                v26 = (4 * v21);
                v27 = v16[v17];
                v28 = &v26[-v25];
                *v26 = v27;
                v14 = (v26 + 1);
                memcpy(v28, v19, v20);
                __p = v28;
                v39 = v14;
                v40 = 0;
                if (v19)
                {
                  operator delete(v19);
                }
              }

              v39 = v14;
              v16 = *a3;
              v15 = a3[1];
            }

            v17 = v18;
            --v11;
            ++v18;
          }

          while (v17 < (v15 - v16) >> 2);
        }

        v9 = v33;
        v7 = v32;
        if (!operations_research::sat::SatSolver::ResetAndSolveWithGivenAssumptions(a2, &__p, 1000))
        {
          operations_research::sat::SatSolver::GetLastIncompatibleDecisions(a2, &v34);
          v29 = *a3;
          if (*a3)
          {
            a3[1] = v29;
            operator delete(v29);
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
          }

          *a3 = v34;
          a3[2] = v35;
        }
      }

LABEL_34:
      if ((a3[1] - *a3) >> 2 < v7 && dword_27E25D1A8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::MinimizeCoreWithSearch(operations_research::TimeLimit *,operations_research::sat::SatSolver *,std::vector<operations_research::sat::Literal> *)::$_0::operator() const(void)::site, dword_27E25D1A8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 166);
        v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v34, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "minimization with search ", 0x19uLL);
        LODWORD(v41) = v7;
        v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v30, &v41);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " -> ", 4uLL);
        v41 = (a3[1] - *a3) >> 2;
        absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v31, &v41);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v34);
      }

      operations_research::sat::SatSolver::ResetToLevelZero(a2);
      **(a2 + 256) = v9;
      if (v36 >= 2)
      {
        operator delete((v37 - (BYTE8(v36) & 1) - 8));
      }

      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_23CC769D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a15 >= 2)
  {
    operator delete((a17 - (a16 & 1) - 8));
    v21 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ProbeLiteral(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 528) & 1) == 0)
  {
    v3 = *(a2 + 256);
    v4 = *v3;
    *v3 = 0;
    operator new();
  }

  return 0;
}

void sub_23CC76B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::FilterAssignedLiteral(uint64_t a1, std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    LODWORD(v4) = 0;
    v5 = *(a1 + 8);
    v6 = this->__begin_;
    while (1)
    {
      v7 = *v6;
      v8 = *(v5 + ((*v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v8 >> *v6) & 1) == 0)
      {
        if ((v8 >> (v7 & 0x3F ^ 1u)))
        {
          *begin = v7;
          if ((end - begin) < 5)
          {
            return;
          }

          v10 = begin + 1;
LABEL_14:
          this->__end_ = v10;
          return;
        }

        begin[v4] = v7;
        LODWORD(v4) = v4 + 1;
      }

      if (++v6 == end)
      {
        v4 = v4;
        v9 = end - begin;
        if (v4 <= v9)
        {
          goto LABEL_10;
        }

        std::vector<int>::__append(this, v4 - v9);
        return;
      }
    }
  }

  v4 = 0;
  v9 = end - begin;
LABEL_10:
  if (v9 > v4)
  {
    v10 = &begin[v4];
    goto LABEL_14;
  }
}

uint64_t operations_research::sat::MinimizeIntegerVariableWithLinearScanAndLazyEncoding(unsigned int a1, uint64_t a2, void *a3)
{
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(a3);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  if (!operations_research::sat::SatSolver::ResetToLevelZero(v6))
  {
    return 1;
  }

  v10 = a1;
  v11 = 8 * a1;
  while (1)
  {
    v12 = operations_research::sat::IntegerSearchHelper::SolveIntegerProblem(v8);
    if (v12 != 2)
    {
      return v12;
    }

    v13 = *(*(v7 + 40) + v11);
    v14 = *(a2 + 24);
    if (v14)
    {
      (*(*v14 + 48))(v14);
    }

    if (*(v9 + 292))
    {
      break;
    }

    operations_research::sat::SatSolver::Backtrack(v6, 0);
    v15 = 1;
    if (v13 - 1 >= 0x8000000000000002)
    {
      v16 = 1 - v13;
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((operations_research::sat::IntegerTrail::Enqueue(v7, v10 ^ 1, v16, 0, 0, 0, 0) & 1) == 0)
    {
      return v15;
    }
  }

  return 3;
}

void operations_research::sat::RestrictObjectiveDomainWithBinarySearch(unsigned int a1, uint64_t a2, void *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  operations_research::sat::SatParameters::SatParameters(v47, 0, v5);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a3);
  operations_research::sat::SatParameters::SatParameters(&__p, 0, v47);
  v46 = v48;
  v45 |= 0x40u;
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  operations_research::sat::SatParameters::CopyFrom(v9, &__p);
  operations_research::sat::SatParameters::~SatParameters(&__p);
  v10 = *(v7 + 40);
  v11 = 8 * a1;
  v41 = -*(v10 + (v11 ^ 8));
  v12 = *(v10 + v11);
LABEL_41:
  v40 = v12;
  while (1)
  {
    operations_research::sat::SatSolver::Backtrack(v6, 0);
    v13 = *(v7 + 40);
    v14 = *(v13 + 8 * a1);
    v39 = v14;
    v15 = *(v13 + (v11 ^ 8));
    v16 = -v15;
    v37 = 0;
    v38 = -v15;
    if (v41 >= -v15)
    {
      v17 = -v15;
    }

    else
    {
      v17 = v41;
    }

    v18 = v40;
    if (v40 <= v14)
    {
      v18 = v14;
    }

    v40 = v18;
    v41 = v17;
    v19 = v17 <= v14;
    v20 = v17 - v14;
    if (!v19)
    {
      v37 = v14 + v20 / 2;
      v21 = dword_2810C0B50;
      if (dword_2810C0B50 >= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_12;
    }

    if (v16 <= v18)
    {
      break;
    }

    v37 = -(v15 + (v16 - v18) / 2);
    v21 = dword_2810C0B50;
    if (dword_2810C0B50 >= 1)
    {
LABEL_35:
      if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B48, v21))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 290);
        v28 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, "Binary-search, objective: [", 0x1BuLL);
        v29 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v28, &v39);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, ",", 1uLL);
        v30 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v29, &v38);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "]", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, " tried: [", 9uLL);
        v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v30, &v41);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, ",", 1uLL);
        v32 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v31, &v40);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "]", 1uLL);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " target: obj<=", 0xEuLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v32, &v37);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
      }
    }

LABEL_12:
    if (v37 < v38)
    {
      if (v37 >= 0x8000000000000002)
      {
        v22 = -v37;
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v8, a1 ^ 1, v22);
      __p = 0;
      v43 = 0;
      v44 = 0;
      operator new();
    }

    __p = 0;
    v43 = 0;
    v44 = 0;
    v23 = operations_research::sat::ResetAndSolveIntegerProblem(&__p, a3);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }

    if (v23 <= 1)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        operations_research::sat::SatSolver::Backtrack(v6, 0);
        v24 = operations_research::sat::IntegerTrail::Enqueue(v7, a1, v37 + 1, 0, 0, 0, 0);
LABEL_31:
        if ((v24 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v23 == 2)
      {
        v25 = *(*(v7 + 40) + 8 * a1);
        v26 = *(a2 + 24);
        if (v26)
        {
          (*(*v26 + 48))(v26);
        }

        operations_research::sat::SatSolver::Backtrack(v6, 0);
        if (v25 - 1 >= 0x8000000000000002)
        {
          v27 = 1 - v25;
        }

        else
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v24 = operations_research::sat::IntegerTrail::Enqueue(v7, a1 ^ 1, v27, 0, 0, 0, 0);
        goto LABEL_31;
      }

      if (v23 == 3)
      {
        v33 = v41;
        if (v41 >= v37)
        {
          v33 = v37;
        }

        v41 = v33;
        v12 = v40;
        if (v37 > v40)
        {
          v12 = v37;
        }

        goto LABEL_41;
      }
    }
  }

  if (dword_2810C0B38 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_27, dword_2810C0B38))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 287);
    v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Binary-search, done.", 0x14uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
  }

LABEL_43:
  operations_research::sat::SatSolver::Backtrack(v6, 0);
  v34 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  operations_research::sat::SatParameters::CopyFrom(v34, v47);
  operations_research::sat::SatParameters::~SatParameters(v47);
}

uint64_t operations_research::sat::CoreBasedOptimizer::CoreBasedOptimizer(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a1 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a8);
  *(a1 + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a8);
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a8);
  *(a1 + 24) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a8);
  *(a1 + 32) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a8);
  *(a1 + 40) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a8);
  v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a8);
  *(a1 + 72) = 0u;
  *(a1 + 48) = v16;
  *(a1 + 56) = a8;
  *(a1 + 64) = a2;
  *(a1 + 88) = 0u;
  v17 = (a7 + 24);
  v18 = *(a7 + 24);
  if (!v18)
  {
    v17 = (a1 + 128);
    goto LABEL_5;
  }

  if (v18 != a7)
  {
    *(a1 + 128) = v18;
LABEL_5:
    *v17 = 0;
    goto LABEL_7;
  }

  *(a1 + 128) = a1 + 104;
  (*(**v17 + 24))(*v17, a1 + 104);
LABEL_7:
  *(a1 + 136) = 0;
  if (a4 != a6)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(a4, a6, "variables.size() == coefficients.size()");
  }

  if (a4)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = *(a5 + 8 * v19);
      if (v21 >= 1)
      {
        LODWORD(v24) = *(a3 + 4 * v19);
        *(&v24 + 1) = v21;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        std::vector<operations_research::sat::CoreBasedOptimizer::ObjectiveTerm>::push_back[abi:ne200100](a1 + 72, &v24);
      }

      else
      {
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        LODWORD(v24) = *(a3 + 4 * v19) ^ 1;
        *(&v24 + 1) = -v21;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        std::vector<operations_research::sat::CoreBasedOptimizer::ObjectiveTerm>::push_back[abi:ne200100](a1 + 72, &v24);
      }

      *(*(a1 + 80) - 24) = 0;
LABEL_12:
      v19 = v20++;
    }

    while (a4 > v19);
  }

  v22 = 0x7FFFFFFFFFFFFFFELL;
  if (!*(*a1 + 492))
  {
    v22 = 1;
  }

  *(a1 + 96) = v22;
  return a1;
}

{
  return operations_research::sat::CoreBasedOptimizer::CoreBasedOptimizer(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_23CC7750C(_Unwind_Exception *a1)
{
  std::function<void ()(void)>::~function(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::CoreBasedOptimizer::ObjectiveTerm>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = v3 - *a1;
  v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3) + 1;
  if (v10 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * (v9 >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = v13 + 40;
  v15 = v13 - v9;
  memcpy((v13 - v9), v8, v9);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

uint64_t operations_research::sat::CoreBasedOptimizer::ProcessSolution(operations_research::sat::CoreBasedOptimizer *this)
{
  v2 = *(this + 9);
  v3 = *(this + 10);
  v4 = *(this + 5);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *(v4 + 40);
    do
    {
      v7 = *(v6 + 8 * *v2);
      v5 += *(v2 + 1) * v7;
      if (v7 >= *(v2 + 4))
      {
        v7 = *(v2 + 4);
      }

      *(v2 + 4) = v7;
      v2 += 10;
    }

    while (v2 != v3);
    v8 = operations_research::sat::IntegerTrail::InitialVariableDomain(v4, *(this + 16));
    if (operations_research::Domain::Contains(v8, v5))
    {
      goto LABEL_7;
    }

    return 1;
  }

  v5 = 0;
  v14 = operations_research::sat::IntegerTrail::InitialVariableDomain(v4, *(this + 16));
  if (!operations_research::Domain::Contains(v14, 0))
  {
    return 1;
  }

LABEL_7:
  v9 = *(this + 16);
  if (v9)
  {
    (*(*v9 + 48))(v9);
  }

  if (*(*this + 292) == 1)
  {
    *(this + 137) = 1;
  }

  operations_research::sat::SatSolver::Backtrack(*(this + 1), 0);
  operations_research::sat::SatSolver::SetAssumptionLevel(*(this + 1), 0);
  v10 = *(this + 5);
  v11 = *(this + 16);
  if (v5 - 1 >= 0x8000000000000002)
  {
    v12 = 1 - v5;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return operations_research::sat::IntegerTrail::Enqueue(v10, v11 ^ 1, v12, 0, 0, 0, 0);
}

uint64_t operations_research::sat::CoreBasedOptimizer::PropagateObjectiveBounds(operations_research::sat::SatSolver **this)
{
  while (1)
  {
    result = operations_research::sat::SatSolver::ResetToLevelZero(this[1]);
    if (!result)
    {
      return result;
    }

    if (operations_research::TimeLimit::LimitReached(this[3]))
    {
      return 1;
    }

    v3 = this[9];
    v4 = this[10];
    v5 = this[5];
    v6 = *(v5 + 40);
    if (v3 == v4)
    {
      v7 = 0;
      v10 = *(this + 16);
      v11 = 8 * v10;
      v14 = *(v6 + v11);
      v13 = v14 < 0;
      if (v14 >= 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      v8 = this[9];
      do
      {
        v9 = *(v6 + 8 * *v8);
        *(v8 + 3) = v9;
        v7 += *(v8 + 1) * v9;
        v8 += 10;
      }

      while (v8 != v4);
      v10 = *(this + 16);
      v11 = 8 * v10;
      v12 = *(v6 + v11);
      v13 = v7 > v12;
      if (v7 <= v12)
      {
LABEL_9:
        if (v3 != v4)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    result = operations_research::sat::IntegerTrail::Enqueue(v5, v10, v7, 0, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    v6 = *(this[5] + 5);
    v3 = this[9];
    v4 = this[10];
    v11 = 8 * *(this + 16);
    if (v3 != v4)
    {
LABEL_14:
      v15 = -*(v6 + (v11 ^ 8)) - v7;
      do
      {
        v16 = *(v3 + 1);
        if (v16)
        {
          v17 = this[5];
          v18 = *v3;
          v19 = *(v17 + 40);
          v20 = 8 * v18;
          v21 = *(v19 + v20);
          v22 = *(v19 + (v20 ^ 8));
          if (v21 + v22)
          {
            v23 = v15 / v16;
            if (v23 < -v22 - v21)
            {
              v24 = v23 + v21;
              if (v24 >= 0x8000000000000002)
              {
                v25 = -v24;
              }

              else
              {
                v25 = 0x7FFFFFFFFFFFFFFFLL;
              }

              result = operations_research::sat::IntegerTrail::Enqueue(v17, v18 ^ 1, v25, 0, 0, 0, 0);
              if (!result)
              {
                return result;
              }

              v13 = 1;
            }
          }
        }

        v3 += 10;
      }

      while (v3 != v4);
    }

LABEL_2:
    if (!v13)
    {
      return 1;
    }
  }
}

void operations_research::sat::CoreBasedOptimizer::ComputeNextStratificationThreshold(operations_research::sat::CoreBasedOptimizer *this)
{
  v1 = *(this + 9);
  v2 = *(this + 10);
  if (v1 == v2)
  {
    *(this + 12) = 0;
  }

  else
  {
    do
    {
      v3 = *(v1 + 1);
      if (v3)
      {
        v4 = v3 < *(this + 12);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        if (*(*(*(this + 5) + 152) + 24 * *v1) + *(*(*(this + 5) + 152) + 24 * (*v1 ^ 1)))
        {
          operator new();
        }
      }

      v1 += 10;
    }

    while (v1 != v2);
    *(this + 12) = 0;
  }
}

void sub_23CC77BE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CoreBasedOptimizer::CoverOptimization(operations_research::sat::CoreBasedOptimizer *this)
{
  result = operations_research::sat::SatSolver::ResetToLevelZero(*(this + 1));
  if (result)
  {
    v3 = *this;
    v4 = *(*this + 536);
    *(v3 + 67) = 0x3FE0000000000000;
    *(v3 + 7) |= 0x100000u;
    v6 = *(this + 9);
    for (i = *(this + 10); v6 != i; v6 += 10)
    {
      if (v6[4])
      {
        v13 = *v6;
        v7 = *(*(this + 5) + 40);
        v8 = *(v7 + ((8 * *v6) ^ 8));
        v9 = *(v6 + 4) >= -v8 ? -v8 : *(v6 + 4);
        if (v9 > *(v7 + 8 * v13))
        {
          v10 = *(*(this + 3) + 112) + 0.5;
          if (v9 >= 0x8000000000000003)
          {
            v11 = 1 - v9;
          }

          else
          {
            v11 = 0x7FFFFFFFFFFFFFFFLL;
          }

          operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(this + 6), v13 ^ 1, v11);
          operator new();
        }
      }
    }

    result = operations_research::sat::CoreBasedOptimizer::PropagateObjectiveBounds(this);
    v12 = *this;
    *(v12 + 67) = v4;
    *(v12 + 7) |= 0x100000u;
  }

  return result;
}

void sub_23CC77F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  *(v13 + 536) = v12;
  *(v13 + 28) |= 0x100000u;
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(operations_research::sat::SatSolver **a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v133 = *MEMORY[0x277D85DE8];
  v14 = a1[7];
  v98[0] = 0;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  v104 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v14);
  v105 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v14);
  v106 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v14);
  v107 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(v14);
  if (a5)
  {
    if (a5 != a7)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(a5, a7, "vars.size() == coefficients.size()");
    }

    v15 = 0;
    v16 = &v109;
    v17 = &v111;
    v18 = 1;
    do
    {
      v19 = (a6 + 8 * v15);
      if (*v19 <= 0)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>((a6 + 8 * v15), 0, "coefficients[i] > 0");
      }

      v20 = v17;
      v21 = v16;
      v22 = *(a4 + 4 * v15);
      v23 = *(a1[5] + 5);
      v24 = 8 * v22;
      v25 = -*(v23 + (v24 ^ 8));
      if (v25 - *(v23 + v24) != 1)
      {
        v108 = 0;
        operator new();
      }

      AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(a1[6], v22, v25);
      operations_research::sat::EncodingNode::LiteralNode(AssociatedLiteral, *v19, v110);
      std::deque<operations_research::sat::EncodingNode>::push_back(&v100 + 8, v110);
      v16 = v21;
      v17 = v20;
      v120 = *(v101 + 8 * ((v103 + *(&v102 + 1) - 1) / 0x27uLL)) + 104 * ((v103 + *(&v102 + 1) - 1) % 0x27uLL);
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](&v99, &v120);
      if (__p)
      {
        v114 = __p;
        operator delete(__p);
      }

      if (v112 == v20)
      {
        (*(*v112 + 32))();
      }

      else if (v112)
      {
        (*(*v112 + 40))(v112);
      }

      v15 = v18++;
    }

    while (a5 > v15);
  }

  else if (a3)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      v29 = *(a6 + 8 * v27);
      if (v29 <= 0)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>((a6 + 8 * v27), 0, "coefficients[i] > 0");
      }

      operations_research::sat::EncodingNode::LiteralNode(*(a2 + 4 * v27), v29, v115);
      std::deque<operations_research::sat::EncodingNode>::push_back(&v100 + 8, v115);
      v120 = *(v101 + 8 * ((v103 + *(&v102 + 1) - 1) / 0x27uLL)) + 104 * ((v103 + *(&v102 + 1) - 1) % 0x27uLL);
      std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](&v99, &v120);
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v117 == &v116)
      {
        (*(*v117 + 32))(v117);
      }

      else if (v117)
      {
        (*(*v117 + 40))();
      }

      v27 = v28++;
    }

    while (a3 > v27);
  }

  v96 = 0;
  v97 = 0;
  v30 = a8;
  if (!*(*a1 + 123) || v99 == *(&v99 + 1))
  {
    goto LABEL_41;
  }

  v31 = 0;
  if (*(&v99 + 1) - 8 == v99)
  {
    v32 = v99;
  }

  else
  {
    v33 = 0;
    v34 = ((*(&v99 + 1) - 8 - v99) >> 3) + 1;
    v32 = (v99 + 8 * (v34 & 0x3FFFFFFFFFFFFFFELL));
    v35 = v99 + 8;
    v36 = v34 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      if (v31 <= *(*(v35 - 8) + 24))
      {
        v31 = *(*(v35 - 8) + 24);
      }

      if (v33 <= *(*v35 + 24))
      {
        v33 = *(*v35 + 24);
      }

      v35 += 16;
      v36 -= 2;
    }

    while (v36);
    if (v31 <= v33)
    {
      v31 = v33;
    }

    if (v34 == (v34 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_40;
    }
  }

  do
  {
    v37 = *v32++;
    v38 = *(v37 + 24);
    if (v31 <= v38)
    {
      v31 = v38;
    }
  }

  while (v32 != *(&v99 + 1));
LABEL_40:
  v96 = v31;
LABEL_41:
  v87 = 0;
  *(&v95.__r_.__value_.__s + 23) = 0;
  v95.__r_.__value_.__s.__data_[0] = 0;
  v39 = "cover";
  do
  {
    while (1)
    {
      if (operations_research::TimeLimit::LimitReached(a1[3]))
      {
        v69 = 3;
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_120;
        }

        goto LABEL_102;
      }

      if (!operations_research::sat::SatSolver::ResetToLevelZero(a1[1]))
      {
        goto LABEL_101;
      }

      v40 = -v30 - *(*(a1[5] + 5) + ((8 * *(a1 + 16)) ^ 8));
      operations_research::sat::ReduceNodes(v40, &v97, &v99, a1[1]);
      v42 = v97 + v30;
      v43 = a1[5];
      v44 = *(a1 + 16);
      if (v97 + v30 <= *(*(v43 + 40) + 8 * v44))
      {
LABEL_51:
        if (*(*a1 + 550) != 1)
        {
          break;
        }

        goto LABEL_52;
      }

      if ((operations_research::sat::IntegerTrail::Enqueue(v43, v44, v97 + v30, 0, 0, 0, 0) & 1) == 0)
      {
LABEL_101:
        v69 = 1;
        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_120;
        }

        goto LABEL_102;
      }

      v45 = a1[1];
      v46 = *(v45 + 4);
      v47 = *(v45 + 38);
      if (v47 == *(v45 + 39))
      {
        v48 = *(v45 + 74);
        if (v48)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v48, 0, "CurrentDecisionLevel() == 0");
        }

        v47 = (*(v45 + 27) + 12);
      }

      v49 = v39;
      v50 = *v47;
      v51 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a1[7]);
      v52 = *(&v99 + 1);
      v53 = v99;
      operations_research::sat::FormatCounter(((*(a1[2] + 36) - *(a1[2] + 35)) >> 3), v54, &v92);
      v120 = HIDWORD(v87);
      *&v121 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      *(&v121 + 1) = &v95;
      v122 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
      v123 = (v52 - v53) >> 3;
      v124 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
      v125 = v87;
      v126 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      v127 = v50;
      v128 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      v129 = v46;
      v130 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      v131 = &v92;
      v132 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
      absl::lts_20240722::str_format_internal::FormatPack("BOOL_core (num_cores=%d [%s] a=%u d=%d fixed=%d/%d clauses=%s)", 62, &v120, 7uLL, &v93);
      operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(v51, &v93, v42, -*(*(a1[5] + 19) + 24 * (*(a1 + 16) ^ 1)));
      v30 = a8;
      v39 = v49;
      if (SHIBYTE(v94) < 0)
      {
        operator delete(v93);
        if ((SHIBYTE(v92.__end_cap_.__value_) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }
      }

      else if ((SHIBYTE(v92.__end_cap_.__value_) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v92.__begin_);
      if (*(*a1 + 550) != 1)
      {
        break;
      }

LABEL_52:
      if (*(&v99 + 1) - v99 < 9uLL)
      {
        break;
      }

      Assumption = operations_research::sat::EncodingNode::GetAssumption(*(*(&v99 + 1) - 8), a1[1], v41);
      if (!operations_research::sat::ProbeLiteral(Assumption, a1[1]))
      {
        break;
      }

      MEMORY[0x23EED9020](&v95, v39);
    }

    v56 = v96;
    v91 = v40 - v97;
    if (v96 > (v40 - v97 + 2) / 2)
    {
      v96 = (v40 - v97 + 2) / 2;
      v56 = v96;
    }

    v93 = 0;
    v94 = 0uLL;
    do
    {
      operations_research::sat::ExtractAssumptions(a1[1], v56, &v99, &v120);
      if (v93)
      {
        *&v94 = v93;
        operator delete(v93);
      }

      v93 = v120;
      v94 = v121;
      if (v120 != v121)
      {
        break;
      }

      v56 = operations_research::sat::MaxNodeWeightSmallerThan(&v99, v96);
      v96 = v56;
    }

    while (v56 > 0);
    if (dword_27E25D1E0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>)::$_1::operator() const(void)::site, dword_27E25D1E0))
    {
      v64 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v120, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 799);
      v65 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v64, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, "[Core] #nodes ", 0xEuLL);
      v92.__begin_ = ((*(&v99 + 1) - v99) >> 3);
      v66 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v65, &v92);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, " #assumptions:", 0xEuLL);
      v92.__begin_ = ((v94 - v93) >> 2);
      v67 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v66, &v92);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v67, " stratification:", 0x10uLL);
      v68 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v67, &v96);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v68, " gap:", 5uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v68, &v91);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v120);
      v30 = a8;
    }

    v57 = operations_research::sat::ResetAndSolveIntegerProblem(&v93, a1[7]);
    if (v57)
    {
      if (v57 == 2)
      {
        if (operations_research::sat::CoreBasedOptimizer::ProcessSolution(a1))
        {
          if (*(a1 + 137))
          {
            v86 = 3;
            v58 = 1;
            goto LABEL_94;
          }

          v63 = operations_research::sat::MaxNodeWeightSmallerThan(&v99, v96);
          v96 = v63;
          if (v63 <= 0)
          {
            v58 = 1;
          }

          else
          {
            v58 = 17;
          }

          v62 = v86;
          if (v63 <= 0)
          {
            v62 = 1;
          }
        }

        else
        {
          v58 = 1;
          v62 = 1;
        }

        v86 = v62;
      }

      else
      {
        v58 = 1;
        v86 = v57;
      }
    }

    else
    {
      operations_research::sat::SatSolver::GetLastIncompatibleDecisions(a1[1], &v92);
      if (*(*a1 + 122) >= 1)
      {
        operations_research::sat::MinimizeCoreWithPropagation(a1[3], a1[1], &v92);
        if (*(*a1 + 122) >= 2)
        {
          operations_research::sat::MinimizeCoreWithSearch(a1[3], a1[1], &v92);
        }
      }

      if (!operations_research::sat::SatSolver::ResetToLevelZero(a1[1]))
      {
        goto LABEL_83;
      }

      operations_research::sat::FilterAssignedLiteral(*(a1[1] + 27) + 16, &v92);
      begin = v92.__begin_;
      if (v92.__begin_ == v92.__end_)
      {
        v58 = 1;
        v86 = 1;
        if (!v92.__begin_)
        {
          goto LABEL_94;
        }

LABEL_93:
        v92.__end_ = begin;
        operator delete(begin);
        goto LABEL_94;
      }

      v60 = operations_research::sat::ComputeCoreMinWeight(&v99, &v92);
      v120 = v92.__end_ - v92.__begin_;
      *&v121 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
      *(&v121 + 1) = v60;
      v122 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      absl::lts_20240722::str_format_internal::FormatPack("size:%u mw:%d", 13, &v120, 2uLL, &v90);
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      v95 = v90;
      ++HIDWORD(v87);
      if (operations_research::sat::ObjectiveEncoder::ProcessCore(v98, v92.__begin_, v92.__end_ - v92.__begin_, v60, v91, &v95))
      {
        v58 = 0;
        v61 = v87;
        if (v87 <= **(*(&v99 + 1) - 8))
        {
          v61 = **(*(&v99 + 1) - 8);
        }

        LODWORD(v87) = v61;
        begin = v92.__begin_;
        if (v92.__begin_)
        {
          goto LABEL_93;
        }
      }

      else
      {
LABEL_83:
        v58 = 1;
        v86 = 1;
        begin = v92.__begin_;
        if (v92.__begin_)
        {
          goto LABEL_93;
        }
      }
    }

LABEL_94:
    if (v93)
    {
      *&v94 = v93;
      operator delete(v93);
    }
  }

  while (!v58 || v58 == 17);
  v69 = v86;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_120:
    operator delete(v95.__r_.__value_.__l.__data_);
    v71 = *(&v101 + 1);
    v70 = v101;
    if (*(&v101 + 1) == v101)
    {
      goto LABEL_121;
    }

    goto LABEL_103;
  }

LABEL_102:
  v71 = *(&v101 + 1);
  v70 = v101;
  if (*(&v101 + 1) == v101)
  {
LABEL_121:
    v103 = 0;
    v77 = 0;
    goto LABEL_106;
  }

LABEL_103:
  v72 = &v70[*(&v102 + 1) / 0x27uLL];
  v73 = *v72 + 104 * (*(&v102 + 1) % 0x27uLL);
  v74 = ((v103 + *(&v102 + 1)) * 0xA41A41A41A41A41BLL) >> 64;
  v75 = (v74 + ((v103 + *(&v102 + 1) - v74) >> 1)) >> 5;
  v76 = v70[v75] + 104 * (v103 + *(&v102 + 1) - 39 * v75);
  if (v73 != v76)
  {
    while (1)
    {
      v79 = *(v73 + 10);
      if (v79)
      {
        *(v73 + 11) = v79;
        operator delete(v79);
      }

      v80 = *(v73 + 9);
      if (v80 != v73 + 48)
      {
        break;
      }

      (*(*v80 + 32))(v80);
      v73 += 104;
      if (v73 - *v72 == 4056)
      {
        goto LABEL_118;
      }

LABEL_109:
      if (v73 == v76)
      {
        v71 = *(&v101 + 1);
        v70 = v101;
        v103 = 0;
        v77 = (*(&v101 + 1) - v101) >> 3;
        if (v77 >= 3)
        {
          goto LABEL_105;
        }

        goto LABEL_106;
      }
    }

    if (v80)
    {
      (*(*v80 + 40))(v80);
    }

    v73 += 104;
    if (v73 - *v72 != 4056)
    {
      goto LABEL_109;
    }

LABEL_118:
    v81 = v72[1];
    ++v72;
    v73 = v81;
    goto LABEL_109;
  }

  v103 = 0;
  v77 = v71 - v70;
  if (v77 >= 3)
  {
    do
    {
LABEL_105:
      operator delete(*v70);
      v71 = *(&v101 + 1);
      v70 = (v101 + 8);
      *&v101 = v70;
      v77 = (*(&v101 + 1) - v70) >> 3;
    }

    while (v77 > 2);
  }

LABEL_106:
  if (v77 == 1)
  {
    v78 = 19;
LABEL_125:
    *(&v102 + 1) = v78;
  }

  else if (v77 == 2)
  {
    v78 = 39;
    goto LABEL_125;
  }

  if (v70 != v71)
  {
    do
    {
      v82 = *v70++;
      operator delete(v82);
    }

    while (v70 != v71);
    v83 = *(&v101 + 1);
    if (*(&v101 + 1) != v101)
    {
      do
      {
        v83 -= 8;
      }

      while (v83 != v101);
      *(&v101 + 1) = v83;
    }
  }

  if (*(&v100 + 1))
  {
    operator delete(*(&v100 + 1));
  }

  if (v99)
  {
    *(&v99 + 1) = v99;
    operator delete(v99);
  }

  v84 = *MEMORY[0x277D85DE8];
  return v69;
}