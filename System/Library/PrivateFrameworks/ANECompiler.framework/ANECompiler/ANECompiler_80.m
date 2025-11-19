void sub_23CD2C45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, void *a44, int a45, __int16 a46, char a47, char a48, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v51 = *(v49 - 216);
    if (!v51)
    {
LABEL_3:
      v52 = *(v49 - 120);
      if (!v52)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v51 = *(v49 - 216);
    if (!v51)
    {
      goto LABEL_3;
    }
  }

  *(v49 - 208) = v51;
  operator delete(v51);
  v52 = *(v49 - 120);
  if (!v52)
  {
LABEL_4:
    if (*(v49 - 192) < 2uLL)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v49 - 112) = v52;
  operator delete(v52);
  if (*(v49 - 192) < 2uLL)
  {
LABEL_5:
    if (*(v49 - 160) < 2uLL)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    operator delete((*(v49 - 144) - (*(v49 - 152) & 1) - 8));
    goto LABEL_12;
  }

LABEL_10:
  operator delete((*(v49 - 176) - (*(v49 - 184) & 1) - 8));
  if (*(v49 - 160) < 2uLL)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

BOOL operations_research::Domain::operator==(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5 = a1[1];
  v3 = a1 + 1;
  v4 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = v3;
  }

  v6 = *a2;
  v9 = a2[1];
  v7 = a2 + 1;
  v8 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = v7;
  }

  if ((((v6 >> 1) ^ (v2 >> 1)) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v11 = &v4[2 * (v2 >> 1)];
  v12 = &v8[2 * (v6 >> 1)];
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0 && (v6 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    while (*v4 == *v8 && v4[1] == v8[1])
    {
      v4 += 2;
      v8 += 2;
      if (v4 == v11 || v8 == v12)
      {
        return v8 == v12 && v4 == v11;
      }
    }

    return 0;
  }

  return v8 == v12 && v4 == v11;
}

void operations_research::sat::anonymous namespace::TransformLinearWithSpecialBoolean(uint64_t a1, int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*(a1 + 16))
  {
    v21 = *(a1 + 16);
    std::vector<long long>::push_back[abi:ne200100](a3, &v21);
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(a1 + 24);
      v8 = 4 * v6;
      do
      {
        while ((*v7 ^ a2) != 0xFFFFFFFF)
        {
          v21 = *v7;
          std::vector<long long>::push_back[abi:ne200100](a3, &v21);
          ++v7;
          v8 -= 4;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        v21 = 0x7FFFFFFFLL;
        std::vector<long long>::push_back[abi:ne200100](a3, &v21);
        ++v7;
        v8 -= 4;
      }

      while (v8);
    }
  }

LABEL_7:
  if (*(a1 + 60) == 12)
  {
    v9 = *(a1 + 48);
  }

  else
  {
    v9 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v21 = *(v9 + 4);
  std::vector<long long>::push_back[abi:ne200100](a3, &v21);
  v10 = 0;
  v11 = 0;
  if (*(a1 + 60) != 12)
  {
    goto LABEL_17;
  }

  while (1)
  {
LABEL_14:
    v12 = *(a1 + 48);
    if (v10 >= *(v12 + 4))
    {
      goto LABEL_24;
    }

    v13 = *(v12[3] + v10);
    v21 = v12[6][v10];
    if (v13 != a2)
    {
      break;
    }

LABEL_12:
    v20 = 0x7FFFFFFFLL;
LABEL_13:
    std::vector<long long>::push_back[abi:ne200100](a3, &v20);
    std::vector<long long>::push_back[abi:ne200100](a3, &v21);
    ++v10;
    if (*(a1 + 60) != 12)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    if ((v13 ^ a2) != 0xFFFFFFFF)
    {
      v20 = v13;
      goto LABEL_13;
    }

    v20 = 0x7FFFFFFFLL;
    std::vector<long long>::push_back[abi:ne200100](a3, &v20);
    v20 = -v21;
    std::vector<long long>::push_back[abi:ne200100](a3, &v20);
    v11 += v21;
    ++v10;
    if (*(a1 + 60) == 12)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (v10 >= off_2810BEE58)
    {
      break;
    }

    v13 = *(off_2810BEE60 + v10);
    v21 = *(off_2810BEE78 + v10);
    if (v13 == a2)
    {
      goto LABEL_12;
    }
  }

  v12 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_24:
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12[9];
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      v18 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v19 = v17 - v11;
      if (__OFSUB__(v17, v11))
      {
        v19 = v18;
      }

      v21 = v19;
      std::vector<long long>::push_back[abi:ne200100](a3, &v21);
      v16 -= 8;
    }

    while (v16);
  }
}

_BYTE *operations_research::sat::ScanModelForDominanceDetection(_BYTE *this, operations_research::sat::PresolveContext *a2, operations_research::sat::VarDomination *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if ((this[416] & 1) == 0)
  {
    operations_research::sat::VarDomination::Reset(a2, *(*this + 32));
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CD2D934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    operator delete(v18);
    v20 = a12;
    v21 = a13;
    if (!a12)
    {
LABEL_3:
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v20 = a12;
    v21 = a13;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  if (!v21)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v21);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::ScanModelForDualBoundStrengthening(operations_research::sat *this, int64x2_t **a2, operations_research::sat::DualBoundStrengthening *a3)
{
  if ((*(this + 416) & 1) == 0)
  {
    v3 = a2;
    v4 = this;
    v5 = *this;
    v6 = *(*this + 32);
    v7 = 2 * v6;
    std::vector<long long>::assign(a2, v7, &operations_research::sat::kMinIntegerValue);
    __u[0] = 0;
    std::vector<int>::assign(v3 + 1, v7, __u);
    __u[0] = -1;
    std::vector<int>::assign(v3 + 2, v7, __u);
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v103 = vdupq_n_s64(0x7FFFFFFFFFFFFFFEuLL);
      do
      {
        if (operations_research::sat::PresolveContext::IsFixed(v4, v9) || (operations_research::sat::PresolveContext::VariableWasRemoved(v4, v9) & 1) != 0 || operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(v4, v9))
        {
          begin = v3[1].__begin_;
          v11 = v3[2].__begin_;
          *&v3->__begin_[2 * v8] = v103;
          v12 = v8;
          *&begin[v12] = vadd_s32(*&begin[v12], 0x100000001);
          *&v11[v12] = -1;
        }

        else
        {
          operations_research::sat::PresolveContext::GetAffineRelation(v4, v9, __u);
          v13 = __u[0];
          if (v9 != __u[0])
          {
            v14 = v3->__begin_;
            v15 = v3[1].__begin_;
            v16 = v3[2].__begin_;
            *&v3->__begin_[2 * v8] = v103;
            v17 = v8;
            *&v15[v17] = vadd_s32(*&v15[v17], 0x100000001);
            *&v16[v17] = -1;
            if (v13 < 0)
            {
              v18 = 2 * ~v13 + 1;
            }

            else
            {
              v18 = 2 * v13;
            }

            v19 = v18 ^ 1;
            *&v14[2 * v18] = 0x7FFFFFFFFFFFFFFELL;
            *&v14[2 * v19] = 0x7FFFFFFFFFFFFFFELL;
            ++v15[v18];
            ++v15[v19];
            v16[v18] = -1;
            v16[v19] = -1;
          }
        }

        ++v9;
        v8 += 2;
      }

      while (v6 != v9);
    }

    v100 = v5;
    v101 = v3;
    v20 = *(v5 + 56);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = (v100 + 48);
      v105 = v4;
      v99 = v20;
      while (1)
      {
        if (*v22)
        {
          v26 = *v22 + 8 * v21 + 7;
        }

        else
        {
          v26 = v22;
        }

        v27 = *v26;
        v28 = *(*v26 + 16);
        v29 = v3->__begin_;
        v30 = v3[1].__begin_;
        v31 = v3[2].__begin_;
        if ((v28 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = *(v27 + 24);
          v33 = 4 * v28;
          do
          {
            v34 = *v32++;
            v35 = 2 * v34;
            v36 = 2 * ~v34;
            if (v34 < 0)
            {
              v37 = v36 + 1;
            }

            else
            {
              v37 = v35;
            }

            v38 = v37 ^ 1;
            *&v29[2 * v38] = 0x7FFFFFFFFFFFFFFELL;
            ++v30[v38];
            v31[v38] = v21;
            v33 -= 4;
          }

          while (v33);
        }

        v39 = *(v27 + 60);
        if (v39 <= 11)
        {
          if (v39 == 3)
          {
            v72 = *(v27 + 48);
            v73 = *(v72 + 16);
            if ((v73 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v74 = *(v72 + 24);
              v75 = 4 * v73;
              do
              {
                v76 = *v74++;
                v77 = 2 * v76;
                v78 = 2 * ~v76;
                if (v76 < 0)
                {
                  v79 = v78 + 1;
                }

                else
                {
                  v79 = v77;
                }

                *&v29[2 * v79] = 0x7FFFFFFFFFFFFFFELL;
                ++v30[v79];
                v31[v79] = v21;
                v75 -= 4;
              }

              while (v75);
            }

            goto LABEL_19;
          }

          if (v39 == 4)
          {
            v49 = *(v27 + 48);
            v50 = *(v49 + 16);
            if ((v50 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v51 = *(v49 + 24);
              v52 = 4 * v50;
              do
              {
                v53 = *v51++;
                v54 = 2 * v53;
                v55 = 2 * ~v53;
                if (v53 < 0)
                {
                  v56 = v55 + 1;
                }

                else
                {
                  v56 = v54;
                }

                *&v29[2 * v56] = 0x7FFFFFFFFFFFFFFELL;
                ++v30[v56];
                v31[v56] = v21;
                v52 -= 4;
              }

              while (v52);
            }

            goto LABEL_19;
          }

LABEL_70:
          v80 = (*(v4 + 81) + 24 * v21);
          v81 = *v80;
          for (i = v80[1]; v81 != i; v31[v87] = v21)
          {
            v83 = *v81++;
            v84 = 2 * v83;
            v85 = 2 * ~v83;
            if (v83 < 0)
            {
              v86 = v85 + 1;
            }

            else
            {
              v86 = v84;
            }

            v87 = v86 ^ 1;
            *&v29[2 * v86] = 0x7FFFFFFFFFFFFFFELL;
            *&v29[2 * v87] = 0x7FFFFFFFFFFFFFFELL;
            ++v30[v86];
            ++v30[v87];
            v31[v86] = v21;
          }

          goto LABEL_19;
        }

        if (v39 == 12)
        {
          break;
        }

        if (v39 == 26)
        {
          v63 = *(v27 + 48);
          v64 = *(v63 + 16);
          if ((v64 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v65 = *(v63 + 24);
            v66 = 4 * v64;
            do
            {
              v67 = *v65++;
              v68 = 2 * v67;
              v69 = 2 * ~v67;
              if (v67 < 0)
              {
                v70 = v69 + 1;
              }

              else
              {
                v70 = v68;
              }

              v71 = v70 ^ 1;
              *&v29[2 * v71] = 0x7FFFFFFFFFFFFFFELL;
              ++v30[v71];
              v31[v71] = v21;
              v66 -= 4;
            }

            while (v66);
          }

          goto LABEL_19;
        }

        if (v39 != 29)
        {
          goto LABEL_70;
        }

        v40 = *(v27 + 48);
        v41 = *(v40 + 16);
        if ((v41 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v42 = *(v40 + 24);
          v43 = 4 * v41;
          do
          {
            v44 = *v42++;
            v45 = 2 * v44;
            v46 = 2 * ~v44;
            if (v44 < 0)
            {
              v47 = v46 + 1;
            }

            else
            {
              v47 = v45;
            }

            v48 = v47 ^ 1;
            *&v29[2 * v47] = 0x7FFFFFFFFFFFFFFELL;
            *&v29[2 * v48] = 0x7FFFFFFFFFFFFFFELL;
            ++v30[v47];
            ++v30[v48];
            v31[v47] = v21;
            v31[v48] = v21;
            v43 -= 4;
          }

          while (v43);
        }

LABEL_19:
        if (++v21 == v20)
        {
          goto LABEL_76;
        }
      }

      v57 = *(v27 + 48);
      v104 = *(v57 + 16);
      if (v104 < 1)
      {
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v102 = v27;
        v58 = 0;
        v23 = 0;
        v24 = 0;
        do
        {
          while (1)
          {
            v60 = *(*(v57 + 24) + 4 * v58);
            v61 = *(*(v57 + 48) + 8 * v58);
            if (v61 >= 1)
            {
              break;
            }

            v59 = operations_research::sat::PresolveContext::MaxOf(v105, *(*(v57 + 24) + 4 * v58));
            v23 += operations_research::sat::PresolveContext::MinOf(v105, v60) * v61;
            v24 += v59 * v61;
            if (v104 == ++v58)
            {
              goto LABEL_54;
            }
          }

          v62 = operations_research::sat::PresolveContext::MinOf(v105, *(*(v57 + 24) + 4 * v58));
          v23 += operations_research::sat::PresolveContext::MaxOf(v105, v60) * v61;
          v24 += v62 * v61;
          ++v58;
        }

        while (v104 != v58);
LABEL_54:
        v3 = v101;
        v27 = v102;
        v25 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        v22 = (v100 + 48);
        v20 = v99;
        if (*(v102 + 60) != 12)
        {
          goto LABEL_18;
        }
      }

      v25 = *(v27 + 48);
LABEL_18:
      v4 = v105;
      operations_research::sat::DualBoundStrengthening::ProcessLinearConstraint<operations_research::sat::LinearConstraintProto>(v3, 0, v105, v25, v24, v23, v21);
      goto LABEL_19;
    }

LABEL_76:
    if (*(v100 + 16))
    {
      operations_research::sat::PresolveContext::WriteObjectiveToProto(v4);
      v88 = *(v100 + 128);
      if (v88)
      {
        v89 = *(v100 + 128);
      }

      else
      {
        v89 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      v90 = *(v89 + 4);
      if (v90 < 1)
      {
        v93 = 0;
        v92 = 0;
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        do
        {
          while (1)
          {
            v95 = *(v89[3] + v91);
            v96 = v89[6][v91];
            if (v96 < 1)
            {
              break;
            }

            v94 = operations_research::sat::PresolveContext::MinOf(v4, v95);
            v92 += operations_research::sat::PresolveContext::MaxOf(v4, v95) * v96;
            v93 += v94 * v96;
            if (v90 == ++v91)
            {
              goto LABEL_85;
            }
          }

          v97 = operations_research::sat::PresolveContext::MaxOf(v4, v95);
          v92 += operations_research::sat::PresolveContext::MinOf(v4, v95) * v96;
          v93 += v97 * v96;
          ++v91;
        }

        while (v90 != v91);
LABEL_85:
        v3 = v101;
        v88 = *(v100 + 128);
      }

      if (v88)
      {
        v98 = v88;
      }

      else
      {
        v98 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      operations_research::sat::DualBoundStrengthening::ProcessLinearConstraint<operations_research::sat::LinearConstraintProto>(v3, 1, v4, v98, v93, v92, -1);
    }
  }
}

uint64_t operations_research::sat::DualBoundStrengthening::ProcessLinearConstraint<operations_research::sat::LinearConstraintProto>(uint64_t result, int a2, operations_research::sat::PresolveContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v37 = *(a4 + 16);
  if (v37 >= 1)
  {
    v7 = a6;
    v8 = a5;
    v9 = result;
    v10 = 0;
    v11 = *(a4 + 72);
    v41 = *(v11 + 8 * (*(a4 + 64) - 2));
    v31 = v41 - a5;
    v35 = *(v11 + 8);
    v30 = a6 - v35;
    while (1)
    {
      v12 = *(*(a4 + 24) + 4 * v10);
      v13 = *(*(a4 + 48) + 8 * v10);
      if (v13 >= 0)
      {
        v14 = *(*(a4 + 48) + 8 * v10);
      }

      else
      {
        v14 = -v13;
      }

      v15 = v13 >> 63;
      v16 = v12 ^ (v13 >> 63);
      v17 = operations_research::sat::PresolveContext::MinOf(a3, v16);
      result = operations_research::sat::PresolveContext::MaxOf(a3, v16);
      v18 = (result - v17) * v14;
      if (v16 < 0)
      {
        v19 = 2 * (v12 ^ ~v15) + 1;
      }

      else
      {
        v19 = 2 * v16;
      }

      if (v41 <= v8)
      {
        goto LABEL_14;
      }

      v20 = 4 * v19;
      ++*(v9[3] + v20);
      *(v9[6] + v20) = a7;
      if (v18 + v8 < v41)
      {
        break;
      }

      v34 = *v9;
      result = operations_research::sat::PresolveContext::MinOf(a3, v16);
      v26 = result + v31 / v14;
      v8 = a5;
      v7 = a6;
      if (v31 / v14 * v14 < v31)
      {
        ++v26;
      }

      if (*(v34 + 8 * v19) > v26)
      {
        v26 = *(v34 + 8 * v19);
      }

      *(*v9 + 8 * v19) = v26;
      if (!a2)
      {
LABEL_15:
        if (v7 > v35)
        {
          v21 = v19 ^ 1u;
          v22 = v21 << 32;
          v23 = 4 * v21;
          ++*(v9[3] + v23);
          *(v9[6] + v23) = a7;
          v24 = v7 - v18;
          v25 = v22 >> 29;
          if (v24 <= v35)
          {
            v27 = *v9;
            result = operations_research::sat::PresolveContext::MaxOf(a3, v16);
            v28 = v30 / v14 - result;
            v29 = *(v27 + v25);
            v8 = a5;
            v7 = a6;
            if (v30 / v14 * v14 < v30)
            {
              ++v28;
            }

            if (v29 > v28)
            {
              v28 = v29;
            }

            *(*v9 + v25) = v28;
          }

          else
          {
            *(*v9 + v25) = 0x7FFFFFFFFFFFFFFELL;
          }
        }

        goto LABEL_4;
      }

LABEL_3:
      ++*(v9[3] + 4 * (v19 ^ 1));
      *(*v9 + 8 * (v19 ^ 1)) = 0x7FFFFFFFFFFFFFFELL;
LABEL_4:
      if (v37 == ++v10)
      {
        return result;
      }
    }

    *(*v9 + 8 * v19) = 0x7FFFFFFFFFFFFFFELL;
LABEL_14:
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t operations_research::sat::ExploitDominanceRelations(operations_research::sat *this, const operations_research::sat::VarDomination *a2, operations_research::sat::PresolveContext *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 32);
  if (v3 >= 1)
  {
    v5 = 0;
    for (i = 0; i != v3; ++i)
    {
      if (!operations_research::sat::PresolveContext::IsFixed(a2, i))
      {
        v7 = *(this + 34) + (v5 >> 29);
        if (*(v7 + 4) || *(v7 + 12))
        {
          if (((2 * v3) & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }
      }

      v5 += 0x200000000;
    }
  }

  result = 1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD2F6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, void *a42, void *a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = *(v47 - 232);
  if (v49)
  {
    operator delete(v49);
  }

  if (*(v47 - 208) >= 2uLL)
  {
    operator delete((*(v47 - 192) - (*(v47 - 200) & 1) - 8));
    v50 = *(v47 - 168);
    if (!v50)
    {
LABEL_5:
      operator delete(__p);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v50 = *(v47 - 168);
    if (!v50)
    {
      goto LABEL_5;
    }
  }

  operator delete(v50);
  operator delete(__p);
  _Unwind_Resume(a1);
}

unint64_t operations_research::sat::ExploitDominanceRelations(operations_research::sat::VarDomination const&,operations_research::sat::PresolveContext *)::$_0::operator()(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 - 1 <= 2)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v7 != v9)
        {
          v20 = *v5;
          v21 = ~*(a2 + 4 * v8);
          v22 = *(a2 + 4 * v6);
          v23 = **v5;
          if (v23 > 1)
          {
            v18 = 0;
            _X9 = v20[2];
            __asm { PRFM            #4, [X9] }

            v29 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22))) + v21;
            v30 = ((v29 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v29);
            v31 = vdup_n_s8(v30 & 0x7F);
            for (i = (v30 >> 7) ^ (_X9 >> 12); ; i = v18 + v10)
            {
              v10 = i & v23;
              v11 = *(_X9 + v10);
              v12 = vceq_s8(v11, v31);
              if (v12)
              {
                break;
              }

LABEL_10:
              v17 = vceq_s8(v11, 0x8080808080808080);
              if (v17)
              {
                result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(*v5, v30, (v10 + (__clz(__rbit64(v17)) >> 3)) & v23, v18, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::GetPolicyFunctions(void)::value);
                v33 = (v20[3] + 8 * result);
                goto LABEL_23;
              }

              v18 += 8;
            }

            while (1)
            {
              v13 = (v20[3] + 8 * ((v10 + (__clz(__rbit64(v12)) >> 3)) & v23));
              v15 = *v13;
              v14 = v13[1];
              if (v15 == v22 && v14 == v21)
              {
                break;
              }

              v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v12)
              {
                goto LABEL_10;
              }
            }
          }

          else if (v20[1] > 1)
          {
            if (*(v20 + 4) != v22 || *(v20 + 5) != v21)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::resize_impl(*v5, 3);
            }
          }

          else
          {
            v20[1] = 2;
            v33 = v20 + 2;
LABEL_23:
            *v33 = v22 | (v21 << 32);
          }
        }

        v8 = ++v9;
      }

      while (a3 > v9);
      v6 = ++v7;
    }

    while (a3 > v7);
  }

  return result;
}

uint64_t operations_research::sat::anonymous namespace::ProcessAtMostOne(int *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5, operations_research::sat::PresolveContext *this)
{
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v8 = a1;
  v9 = &a1[a2];
  v10 = *a5;
  v11 = 4 * a2;
  v12 = 4 * a2;
  v13 = a1;
  do
  {
    v14 = *v13++;
    v15 = 2 * v14;
    v16 = 2 * ~v14;
    if (v14 < 0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v15;
    }

    *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v12 -= 4;
  }

  while (v12);
  v18 = a1;
  do
  {
    v19 = *v18;
    if (!operations_research::sat::PresolveContext::IsFixed(this, *v18))
    {
      v20 = 2 * v19;
      if (v19 < 0)
      {
        v20 = 2 * ~v19 + 1;
      }

      v21 = (*(a4 + 272) + 8 * v20);
      v22 = v21[1];
      if (v22)
      {
        v23 = (*(a4 + 224) + 4 * *v21);
        v24 = 4 * v22;
        while (1)
        {
          v25 = *v23;
          if ((*(*a5 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
          {
            v26 = (v25 & 1) != 0 ? ~(v25 / 2) : v25 >> 1;
            if (!operations_research::sat::PresolveContext::IsFixed(this, v26))
            {
              break;
            }
          }

          ++v23;
          v24 -= 4;
          if (!v24)
          {
            goto LABEL_8;
          }
        }

        operations_research::sat::PresolveContext::UpdateRuleStats(this, a3, 1, v27, v28);
        if ((operations_research::sat::PresolveContext::SetLiteralToFalse(this, v19) & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_8:
    ++v18;
  }

  while (v18 != v9);
  v30 = *a5;
  do
  {
    v31 = *v8++;
    v32 = 2 * v31;
    v33 = 2 * ~v31;
    if (v31 < 0)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v32;
    }

    result = 1;
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v34);
    v11 -= 4;
  }

  while (v11);
  return result;
}

uint64_t operations_research::SimpleDynamicPartition::SimpleDynamicPartition(uint64_t this, int a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 64) = 0u;
  *(this + 80) = 0u;
  *(this + 48) = 0u;
  return this;
}

void sub_23CD2FD90(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<operations_research::sat::VarDomination::IntegerVariableSpan>::assign(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v6 = *a1;
  result = v6;
  if (a2 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a2 >> 61))
    {
      v8 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v8 = a2;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v6;
  v12 = v11 >> 3;
  if (v11 >> 3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v11 >> 3;
  }

  if (v13)
  {
    if (v13 < 8 || v6 < a3 + 1 && &v6[v13] > a3)
    {
      goto LABEL_37;
    }

    result = &v6[v13 & 0xFFFFFFFFFFFFFFFCLL];
    v14 = vdupq_lane_s64(*a3, 0);
    v15 = (v6 + 2);
    v16 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v15[-1] = v14;
      *v15 = v14;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v17 = v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL);
    v13 &= 3u;
    if (!v17)
    {
LABEL_37:
      do
      {
        *result++ = *a3;
        --v13;
      }

      while (v13);
    }
  }

  v9 = a2 >= v12;
  v18 = a2 - v12;
  if (v18 != 0 && v9)
  {
    v19 = *(a1 + 8);
    if ((v18 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = &v19[v18];
      v21 = 8 * a2 - v11 - 8;
      if (v21 < 0x98 || v19 < a3 + 1 && (v19 + (v21 & 0xFFFFFFFFFFFFFFF8) + 8) > a3)
      {
        goto LABEL_38;
      }

      v22 = (v21 >> 3) + 1;
      v23 = &v19[v22 & 0x3FFFFFFFFFFFFFFCLL];
      v24 = vdupq_lane_s64(*a3, 0);
      v25 = (v19 + 2);
      v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v25[-1] = v24;
        *v25 = v24;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      v19 = v23;
      if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_38:
        do
        {
          *v19++ = *a3;
        }

        while (v19 != v20);
      }

      v19 = v20;
    }

    *(a1 + 8) = v19;
  }

  else
  {
    *(a1 + 8) = *a1 + 8 * a2;
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 3) < *(a1 + 4))
      {
        v6 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v18 = a3 >> 1;
      v19 = (a1 + 16 * (a3 >> 1));
      v20 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v26 = a4;
        v27.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(a1, (a1 + 16 * (a3 >> 1)), a3 >> 1, a4, a6);
        v28 = v26 + 16 * v18;
        std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(v19, a2, v20, v28, v27);
        v29 = v26 + 16 * a3;
        if ((a3 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v30 = v28;
          v31 = a1;
          while (v30 != v29)
          {
            if (*(v30 + 4) >= *(v26 + 4))
            {
              v32 = *v26;
              v26 += 16;
              *v31++ = v32;
              if (v26 == v28)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v33 = *v30;
              v30 += 16;
              *v31++ = v33;
              if (v26 == v28)
              {
                goto LABEL_34;
              }
            }
          }

          while (v26 != v28)
          {
            v34 = *v26;
            v26 += 16;
            *v31++ = v34;
          }
        }

        else
        {
          v30 = v28;
          v31 = a1;
LABEL_34:
          while (v30 != v29)
          {
            v35 = *v30;
            v30 += 16;
            *v31++ = v35;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(a1, a1 + 16 * (a3 >> 1), a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(v19, a2, v20, a4, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(a1, v19, a2, v18, v20, a4, a5);
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 16);
      if ((a1 + 16) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = v7;
          v12 = v9[5];
          if (v12 < v9[1])
          {
            v13 = *v11;
            v14 = *(v9 + 3);
            v15 = v8;
            do
            {
              *(a1 + v15 + 16) = *(a1 + v15);
              if (!v15)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v16 = *(a1 + v15 - 12);
              v15 -= 16;
            }

            while (v12 < v16);
            v10 = a1 + v15 + 16;
LABEL_11:
            *v10 = v13;
            *(v10 + 4) = v12;
            *(v10 + 8) = v14;
          }

          v7 = v11 + 4;
          v8 += 16;
          v9 = v11;
        }

        while (v11 + 4 != a2);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (a2 - 1);
      if (*(a2 - 3) >= *(a1 + 1))
      {
        *a4 = *a1;
        a5 = *v5;
      }

      else
      {
        *a4 = *v5;
        a5 = *a1;
      }

      *(a4 + 16) = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v13 = a3 >> 1;
      v14 = 16 * (a3 >> 1);
      v15 = &a1[v14 / 0x10];
      v16 = a1;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>)();
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(v15, a2, a3 - v13, a4 + v14, a3 - v13);
      if (v14)
      {
        v20 = v15;
        v21 = a4;
        v22 = v16;
        v23 = a2;
        while (v20 != a2)
        {
          if (*(v20 + 1) >= *(v22 + 1))
          {
            v24 = *v22++;
            a5.n128_u64[0] = v24;
            *v21++ = v24;
            if (v22 == v15)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v25 = *v20++;
            a5.n128_u64[0] = v25;
            *v21++ = v25;
            if (v22 == v15)
            {
              goto LABEL_32;
            }
          }
        }

        while (v22 != v15)
        {
          v26 = *v22++;
          a5.n128_u64[0] = v26;
          *v21++ = v26;
        }
      }

      else
      {
        v20 = v15;
        v21 = a4;
        v23 = a2;
LABEL_32:
        while (v20 != v23)
        {
          v27 = *v20++;
          a5.n128_u64[0] = v27;
          *v21++ = v27;
        }
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v6 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v7 = 0;
        v8 = a4;
        do
        {
          v9 = a1;
          v10 = v8;
          a1 = v6;
          v11 = ++v8;
          if (*(v9 + 5) < *(v10 + 1))
          {
            *v8 = *v10;
            v11 = a4;
            if (v10 != a4)
            {
              v12 = v7;
              while (1)
              {
                v11 = (a4 + v12);
                if (*(v9 + 5) >= *(a4 + v12 - 12))
                {
                  break;
                }

                *v11 = *(v11 - 1);
                v12 -= 16;
                if (!v12)
                {
                  v11 = a4;
                  break;
                }
              }
            }
          }

          a5 = *a1;
          *v11 = *a1;
          v6 = a1 + 1;
          v7 += 16;
        }

        while (a1 + 1 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = &v9[v10];
        if (*(a2 + 1) < *&v9[v10 + 4])
        {
          break;
        }

        v10 += 16;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v14 = -v11;
      v48 = a3;
      __src = a6;
      v47 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          v50 = *&v9[v10];
          *&v9[v10] = *a2;
          *a2 = v50;
          return result;
        }

        v23 = v14 / 2;
        v17 = &v9[16 * (v14 / 2) + v10];
        v16 = a2;
        if (a2 != a3)
        {
          v24 = (a3 - a2) >> 4;
          v16 = a2;
          do
          {
            v25 = v24 >> 1;
            v26 = &v16[16 * (v24 >> 1)];
            v27 = *(v26 + 1);
            v28 = v26 + 16;
            v24 += ~(v24 >> 1);
            if (v27 < *(v17 + 1))
            {
              v16 = v28;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        v15 = (v16 - a2) >> 4;
      }

      else
      {
        v15 = a5 / 2;
        v16 = &a2[16 * (a5 / 2)];
        v17 = a2;
        if (a2 - v9 != v10)
        {
          v18 = (a2 - v9 - v10) >> 4;
          v17 = &v9[v10];
          do
          {
            v19 = v18 >> 1;
            v20 = &v17[16 * (v18 >> 1)];
            v21 = *(v20 + 1);
            v22 = v20 + 16;
            v18 += ~(v18 >> 1);
            if (v21 > *(v16 + 1))
            {
              v18 = v19;
            }

            else
            {
              v17 = v22;
            }
          }

          while (v18);
        }

        v23 = (v17 - v9 - v10) >> 4;
      }

      a4 = -(v23 + v11);
      v46 = a5 - v15;
      v29 = a5;
      v30 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::TaskTime *>,std::__wrap_iter<operations_research::sat::TaskTime *>>(v17, a2, v16);
      v31 = v23;
      v32 = v30;
      if (v31 + v15 >= v29 - (v31 + v15) - v11)
      {
        a6 = __src;
        v33 = v31;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(v30, v16, v48, a4, v46, __src, v47);
        a7 = v47;
        a4 = v33;
        a3 = v32;
        a5 = v15;
        v9 = v12;
        a2 = v17;
        if (!v15)
        {
          return result;
        }
      }

      else
      {
        a6 = __src;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(&v9[v10], v17, v30, v31, v15, __src, v47);
        a7 = v47;
        a3 = v48;
        a5 = v46;
        v9 = v32;
        a2 = v16;
        if (!v46)
        {
          return result;
        }
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v40 = 0;
        v41 = -a6;
        do
        {
          *(a6 + v40) = *&v9[v40];
          v41 -= 16;
          v40 += 16;
        }

        while (&v9[v40] != a2);
        if (v40)
        {
          v42 = (a6 + v40);
          while (a2 != a3)
          {
            if (*(a2 + 1) >= *(a6 + 4))
            {
              v43 = *a6;
              a6 += 16;
              *v9 = v43;
              v9 += 16;
              if (v42 == a6)
              {
                return result;
              }
            }

            else
            {
              v44 = *a2;
              a2 += 16;
              *v9 = v44;
              v9 += 16;
              if (v42 == a6)
              {
                return result;
              }
            }
          }

          return memmove(v9, a6, -(a6 + v41));
        }
      }
    }

    else if (a2 != a3)
    {
      v34 = 0;
      do
      {
        *(a6 + v34) = *&a2[v34];
        v34 += 16;
      }

      while (&a2[v34] != a3);
      if (v34)
      {
        v35 = (a6 + v34);
        while (a2 != v9)
        {
          v36 = *(a2 - 3);
          v37 = *(v35 - 3);
          v38 = v37 < v36;
          if (v37 >= v36)
          {
            v39 = v35 - 16;
          }

          else
          {
            v39 = a2 - 16;
          }

          *(a3 - 1) = *v39;
          a3 -= 16;
          if (v38)
          {
            a2 -= 16;
          }

          else
          {
            v35 -= 16;
          }

          if (v35 == a6)
          {
            return result;
          }
        }

        if (v35 != a6)
        {
          v45 = -16;
          do
          {
            *&a3[v45] = *(v35 - 1);
            v45 -= 16;
            v35 -= 16;
          }

          while (v35 != a6);
        }
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = a2 - 1;
  v74 = a2 - 2;
  v12 = a2 - 3;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = a2 - v13;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (a2[-1].n128_u64[1] < v13->n128_u64[1])
      {
        v98 = *v13;
        *v13 = a2[-1];
        result = v98;
        a2[-1] = v98;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v58 = v13 + 1;
      v60 = v13 == a2 || v58 == a2;
      if (a5)
      {
        if (!v60)
        {
          v61 = 0;
          v62 = v13;
          do
          {
            v64 = v62[1].n128_i64[1];
            v65 = v62->n128_i64[1];
            v62 = v58;
            if (v64 < v65)
            {
              v66 = v58->n128_u64[0];
              v67 = v61;
              do
              {
                result = *(v13 + v67);
                *(v13 + v67 + 16) = result;
                if (!v67)
                {
                  v63 = v13;
                  goto LABEL_125;
                }

                v68 = *(&v13->n128_i64[-1] + v67);
                v67 -= 16;
              }

              while (v64 < v68);
              v63 = (v13 + v67 + 16);
LABEL_125:
              v63->n128_u64[0] = v66;
              v63->n128_u64[1] = v64;
            }

            v58 = v62 + 1;
            v61 += 16;
          }

          while (&v62[1] != a2);
        }
      }

      else if (!v60)
      {
        do
        {
          v69 = a1[1].n128_i64[1];
          v70 = a1->n128_i64[1];
          a1 = v58;
          if (v69 < v70)
          {
            v71 = v58->n128_u64[0];
            v72 = a1;
            do
            {
              result = v72[-1];
              *v72 = result;
              v73 = v72[-2].n128_i64[1];
              --v72;
            }

            while (v69 < v73);
            v72->n128_u64[0] = v71;
            v72->n128_u64[1] = v69;
          }

          v58 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,operations_research::sat::VarDomination::IntegerVariableWithRank *>(v13, a2, a2);
      }

      return result;
    }

    v15 = &v13[v14 >> 1];
    v16 = a2[-1].n128_i64[1];
    if (v14 < 0x81)
    {
      v18 = v13->n128_i64[1];
      if (v18 < v15->n128_u64[1])
      {
        if (v16 < v18)
        {
          v76 = *v15;
          *v15 = *v11;
          goto LABEL_36;
        }

        v85 = *v15;
        *v15 = *v13;
        result = v85;
        *v13 = v85;
        if (a2[-1].n128_u64[1] < v13->n128_u64[1])
        {
          v76 = *v13;
          *v13 = *v11;
LABEL_36:
          result = v76;
          *v11 = v76;
        }

LABEL_37:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v79 = *v13;
      *v13 = *v11;
      result = v79;
      *v11 = v79;
      if (v13->n128_u64[1] >= v15->n128_u64[1])
      {
        goto LABEL_37;
      }

      v80 = *v15;
      *v15 = *v13;
      result = v80;
      *v13 = v80;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_61:
      v23 = v13->n128_i64[1];
      if (v13[-1].n128_u64[1] < v23)
      {
        goto LABEL_62;
      }

      if (v23 >= a2[-1].n128_u64[1])
      {
        v45 = v13 + 1;
        do
        {
          v13 = v45;
          if (v45 >= a2)
          {
            break;
          }

          v46 = v45->n128_i64[1];
          ++v45;
        }

        while (v23 >= v46);
      }

      else
      {
        v43 = v13;
        do
        {
          v13 = v43 + 1;
          v44 = v43[1].n128_i64[1];
          ++v43;
        }

        while (v23 >= v44);
      }

      v47 = a2;
      if (v13 < a2)
      {
        v48 = a2;
        do
        {
          v47 = v48 - 1;
          v49 = v48[-1].n128_i64[1];
          --v48;
        }

        while (v23 < v49);
      }

      v50 = a1->n128_u64[0];
      while (v13 < v47)
      {
        v97 = *v13;
        *v13 = *v47;
        result = v97;
        *v47 = v97;
        do
        {
          v51 = v13[1].n128_i64[1];
          ++v13;
        }

        while (v23 >= v51);
        do
        {
          v52 = v47[-1].n128_i64[1];
          --v47;
        }

        while (v23 < v52);
      }

      v53 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v53;
        *a1 = *v53;
      }

      a5 = 0;
      v13[-1].n128_u64[0] = v50;
      v13[-1].n128_u64[1] = v23;
    }

    else
    {
      v17 = v15->n128_i64[1];
      if (v17 >= v13->n128_u64[1])
      {
        if (v16 < v17)
        {
          v77 = *v15;
          *v15 = *v11;
          *v11 = v77;
          if (v15->n128_u64[1] < v13->n128_u64[1])
          {
            v78 = *v13;
            *v13 = *v15;
            *v15 = v78;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v81 = *v13;
          *v13 = *v15;
          *v15 = v81;
          if (a2[-1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_28;
          }

          v75 = *v15;
          *v15 = *v11;
        }

        else
        {
          v75 = *v13;
          *v13 = *v11;
        }

        *v11 = v75;
      }

LABEL_28:
      v19 = v15 - 1;
      v20 = v15[-1].n128_i64[1];
      v21 = a2[-2].n128_i64[1];
      if (v20 >= v13[1].n128_u64[1])
      {
        if (v21 < v20)
        {
          v83 = *v19;
          *v19 = *v74;
          *v74 = v83;
          if (v15[-1].n128_u64[1] < v13[1].n128_u64[1])
          {
            v84 = v13[1];
            v13[1] = *v19;
            *v19 = v84;
          }
        }
      }

      else
      {
        if (v21 >= v20)
        {
          v86 = v13[1];
          v13[1] = *v19;
          *v19 = v86;
          if (a2[-2].n128_u64[1] >= v15[-1].n128_u64[1])
          {
            goto LABEL_42;
          }

          v82 = *v19;
          v22 = a2 - 2;
          *v19 = *v74;
        }

        else
        {
          v82 = v13[1];
          v22 = a2 - 2;
          v13[1] = *v74;
        }

        *v22 = v82;
      }

LABEL_42:
      v24 = v15[1].n128_i64[1];
      v25 = a2[-3].n128_i64[1];
      if (v24 >= v13[2].n128_u64[1])
      {
        if (v25 < v24)
        {
          v88 = v15[1];
          v15[1] = *v12;
          *v12 = v88;
          if (v15[1].n128_u64[1] < v13[2].n128_u64[1])
          {
            v89 = v13[2];
            v13[2] = v15[1];
            v15[1] = v89;
          }
        }
      }

      else
      {
        if (v25 >= v24)
        {
          v90 = v13[2];
          v13[2] = v15[1];
          v15[1] = v90;
          if (a2[-3].n128_u64[1] >= v15[1].n128_u64[1])
          {
            goto LABEL_51;
          }

          v87 = v15[1];
          v15[1] = *v12;
        }

        else
        {
          v87 = v13[2];
          v13[2] = *v12;
        }

        *v12 = v87;
      }

LABEL_51:
      v26 = v15->n128_i64[1];
      v27 = v15[1].n128_i64[1];
      if (v26 >= v15[-1].n128_u64[1])
      {
        if (v27 < v26)
        {
          v92 = *v15;
          *v15 = v15[1];
          v15[1] = v92;
          if (v15->n128_u64[1] < v15[-1].n128_u64[1])
          {
            v93 = *v19;
            *v19 = *v15;
            *v15 = v93;
          }
        }
      }

      else
      {
        if (v27 >= v26)
        {
          v94 = *v19;
          *v19 = *v15;
          *v15 = v94;
          if (v15[1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_60;
          }

          v91 = *v15;
          *v15 = v15[1];
        }

        else
        {
          v91 = *v19;
          *v19 = v15[1];
        }

        v15[1] = v91;
      }

LABEL_60:
      v95 = *v13;
      *v13 = *v15;
      result = v95;
      *v15 = v95;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v23 = v13->n128_i64[1];
LABEL_62:
      v28 = 0;
      v29 = v13->n128_u64[0];
      do
      {
        v30 = v13[++v28].n128_i64[1];
      }

      while (v30 < v23);
      v31 = &v13[v28];
      v32 = a2;
      if (v28 == 1)
      {
        v35 = a2;
        while (v31 < v35)
        {
          v33 = v35 - 1;
          v36 = v35[-1].n128_i64[1];
          --v35;
          if (v36 < v23)
          {
            goto LABEL_70;
          }
        }

        v33 = v35;
        v13 = v31;
      }

      else
      {
        do
        {
          v33 = v32 - 1;
          v34 = v32[-1].n128_i64[1];
          --v32;
        }

        while (v34 >= v23);
LABEL_70:
        v13 = v31;
        if (v31 < v33)
        {
          v37 = v33;
          do
          {
            v96 = *v13;
            *v13 = *v37;
            result = v96;
            *v37 = v96;
            do
            {
              v38 = v13[1].n128_i64[1];
              ++v13;
            }

            while (v38 < v23);
            do
            {
              v39 = v37[-1].n128_i64[1];
              --v37;
            }

            while (v39 >= v23);
          }

          while (v13 < v37);
        }
      }

      v40 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v40;
        *a1 = *v40;
      }

      v13[-1].n128_u64[0] = v29;
      v13[-1].n128_u64[1] = v23;
      if (v31 < v33)
      {
        goto LABEL_81;
      }

      v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *>(a1, v13 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *>(v13, a2, v42))
      {
        a2 = v13 - 1;
        if (!v41)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v41)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,false>(a1, &v13[-1], a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v56 = v13[1].n128_i64[1];
      v57 = v13[2].n128_i64[1];
      if (v56 >= v13->n128_u64[1])
      {
        if (v57 < v56)
        {
          v102 = v13[1];
          v13[1] = v13[2];
          result = v102;
          v13[2] = v102;
          if (v13[1].n128_u64[1] < v13->n128_u64[1])
          {
            v103 = *v13;
            *v13 = v13[1];
            result = v103;
            v13[1] = v103;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v100 = *v13;
          *v13 = v13[2];
          goto LABEL_153;
        }

        v105 = *v13;
        *v13 = v13[1];
        result = v105;
        v13[1] = v105;
        if (v13[2].n128_u64[1] < v13[1].n128_u64[1])
        {
          v100 = v13[1];
          v13[1] = v13[2];
LABEL_153:
          result = v100;
          v13[2] = v100;
        }
      }

      if (a2[-1].n128_u64[1] >= v13[2].n128_u64[1])
      {
        return result;
      }

      v106 = v13[2];
      v13[2] = *v11;
      result = v106;
      *v11 = v106;
      if (v13[2].n128_u64[1] >= v13[1].n128_u64[1])
      {
        return result;
      }

      v107 = v13[1];
      v13[1] = v13[2];
      result = v107;
      v13[2] = v107;
LABEL_157:
      if (v13[1].n128_u64[1] < v13->n128_u64[1])
      {
        v108 = *v13;
        *v13 = v13[1];
        result = v108;
        v13[1] = v108;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,0>(v13, v13 + 1, v13 + 2, v13 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v54 = v13[1].n128_i64[1];
  v55 = a2[-1].n128_i64[1];
  if (v54 >= v13->n128_u64[1])
  {
    if (v55 >= v54)
    {
      return result;
    }

    v101 = v13[1];
    v13[1] = *v11;
    result = v101;
    *v11 = v101;
    goto LABEL_157;
  }

  if (v55 >= v54)
  {
    v104 = *v13;
    *v13 = v13[1];
    result = v104;
    v13[1] = v104;
    if (a2[-1].n128_u64[1] >= v13[1].n128_u64[1])
    {
      return result;
    }

    v99 = v13[1];
    v13[1] = *v11;
  }

  else
  {
    v99 = *v13;
    *v13 = *v11;
  }

  result = v99;
  *v11 = v99;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_i64[1];
      v8 = a2[-1].n128_i64[1];
      if (v7 < a1->n128_u64[1])
      {
        if (v8 >= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_u64[1] >= a1[1].n128_u64[1])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_u64[1] >= a1->n128_u64[1])
      {
        return 1;
      }

LABEL_52:
      v37 = *a1;
      *a1 = a1[1];
      a1[1] = v37;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1[1].n128_i64[1];
      v12 = a1->n128_i64[1];
      v13 = a1[2].n128_i64[1];
      if (v11 >= v12)
      {
        if (v13 < v11)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_u64[1] < v12)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 >= v11)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 >= a1[1].n128_u64[1])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v26->n128_i64[1];
        if (v29 < v10->n128_u64[1])
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v30 = v26->n128_u64[0];
      v31 = v27;
      do
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          a1->n128_u64[0] = v30;
          a1->n128_u64[1] = v29;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v32 = *(&a1[1].n128_i64[1] + v31);
        v31 -= 16;
      }

      while (v29 < v32);
      v33 = a1 + v31;
      *(v33 + 6) = v30;
      *(v33 + 7) = v29;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1[1].n128_i64[1];
    v16 = a1->n128_i64[1];
    v17 = a1[2].n128_i64[1];
    if (v15 >= v16)
    {
      if (v17 < v15)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_u64[1] < v16)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v17 < a1[1].n128_u64[1])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_u64[1] >= a1[2].n128_u64[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_u64[1] >= a1[1].n128_u64[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    if (a1[1].n128_u64[1] >= a1->n128_u64[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_u64[1] >= a1->n128_u64[1])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,operations_research::sat::VarDomination::IntegerVariableWithRank *>(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v7 = 16 * v5;
      if (v4 >= (16 * v5) >> 4)
      {
        v8 = (v7 >> 3) | 1;
        v9 = &a1[16 * v8];
        if ((v7 >> 3) + 2 < v3)
        {
          v10 = v9[1];
          v11 = v9[3];
          v9 += 2 * (v10 < v11);
          if (v10 < v11)
          {
            v8 = (v7 >> 3) + 2;
          }
        }

        v12 = &a1[v7];
        v13 = v12[1];
        if (v9[1] >= v13)
        {
          v14 = *v12;
          do
          {
            v15 = v12;
            v12 = v9;
            *v15 = *v9;
            if (v4 < v8)
            {
              break;
            }

            v16 = (2 * v8) | 1;
            v9 = &a1[16 * v16];
            v17 = 2 * v8 + 2;
            if (v17 < v3)
            {
              v18 = v9[1];
              v19 = v9[3];
              v9 += 2 * (v18 < v19);
              if (v18 < v19)
              {
                v16 = v17;
              }
            }

            v8 = v16;
          }

          while (v9[1] >= v13);
          *v12 = v14;
          v12[1] = v13;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v21 = *i;
          *i = *a1;
          *a1 = v21;
        }

        i += 16;
      }

      while (i != a3);
      goto LABEL_42;
    }

    for (i = a2; i != a3; i += 16)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (a2 - a1 == 32)
        {
          v23 = (a1 + 16);
          v24 = 1;
          v25 = *(a1 + 1);
          if (*(a1 + 3) >= v25)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = &a1[16 * (*(a1 + 3) < *(a1 + 5)) + 16];
          if (*(a1 + 3) >= *(a1 + 5))
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          v25 = *(a1 + 1);
          if (*(v23 + 8) >= v25)
          {
LABEL_35:
            v26 = *a1;
            v27 = a1;
            do
            {
              v28 = v27;
              v27 = v23;
              *v28 = *v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[16 * v29];
              v30 = 2 * v24 + 2;
              if (v30 < v3)
              {
                v31 = *(v23 + 8);
                v32 = *(v23 + 24);
                v23 += 16 * (v31 < v32);
                if (v31 < v32)
                {
                  v29 = v30;
                }
              }

              v24 = v29;
            }

            while (*(v23 + 8) >= v25);
            *v27 = v26;
            v27[1] = v25;
          }
        }
      }
    }
  }

LABEL_42:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v50 = *a1;
      v35 = (v3 - 2) >> 1;
      v36 = a1;
      do
      {
        while (1)
        {
          v41 = &v36[16 * v34];
          v40 = (v41 + 16);
          v42 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v42;
          *v36 = *v40;
          v36 = v41 + 16;
          if (v42 > v35)
          {
            goto LABEL_54;
          }
        }

        v37 = *(v41 + 3);
        v38 = *(v41 + 5);
        v39 = (v41 + 32);
        if (v37 >= v38)
        {
          v34 = v42;
        }

        else
        {
          v40 = v39;
        }

        *v36 = *v40;
        v36 = v40;
      }

      while (v34 <= v35);
LABEL_54:
      a2 -= 16;
      if (v40 == a2)
      {
        *v40 = v50;
      }

      else
      {
        *v40 = *a2;
        *a2 = v50;
        v43 = (v40 - a1 + 16) >> 4;
        v6 = v43 < 2;
        v44 = v43 - 2;
        if (!v6)
        {
          v45 = v44 >> 1;
          v46 = &a1[16 * (v44 >> 1)];
          v47 = v40[1];
          if (v46[1] < v47)
          {
            v48 = *v40;
            do
            {
              v49 = v40;
              v40 = v46;
              *v49 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[16 * v45];
            }

            while (v46[1] < v47);
            *v40 = v48;
            v40[1] = v47;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::find_or_prepare_insert<unsigned long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1[2];
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,false,true,8ul>(&v7, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t operations_research::sat::ProtoLiteral::Encode@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (result == 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v4 = a2[9];
  if (result >> 1 >= ((a2[10] - v4) >> 2) || (v5 = *(v4 + 4 * (result >> 1)), v5 == -1))
  {
    v8 = a3[14];
    if (result >= (-858993459 * ((a3[15] - v8) >> 3)))
    {
      v9 = a3 + 9;
    }

    else
    {
      v9 = (v8 + 40 * result);
    }

    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    if (v12)
    {
      v10 = *v10;
    }

    if ((v11 & 0x1FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_20;
    }

    v13 = a2[12];
    v14 = (a2[13] - v13) >> 2;
    v15 = *v10;
    v16 = (*v10 << 32) & 0xFFFFFFFE00000000;
    if (v14 <= v16 >> 32 || (v17 = *(v13 + (v16 >> 30)), v17 == -1))
    {
      v18 = (8 * v11) & 0xFFFFFFFFFFFFFFF0;
      *a4 = 0;
      if (v18 == 16)
      {
LABEL_20:
        *a4 = 0;
        *(a4 + 16) = 0;
        return result;
      }

      v19 = (v10 + v18);
      v10 += 2;
      while (1)
      {
        v15 = *v10;
        v20 = (*v10 << 32) & 0xFFFFFFFE00000000;
        if (v14 > v20 >> 32)
        {
          v17 = *(v13 + (v20 >> 30));
          if (v17 != -1)
          {
            break;
          }
        }

        *a4 = 0;
        v10 += 2;
        if (v10 == v19)
        {
          goto LABEL_20;
        }
      }
    }

    v21 = v10[1];
    *a4 = v17 ^ -(v15 & 1);
    *(a4 + 8) = v21;
    *(a4 + 16) = 1;
    return result;
  }

  v6 = ~v5;
  if (~v5 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = ~v5;
  }

  if (*(a2[6] + 4 * v7) == -1)
  {
    operations_research::sat::ProtoLiteral::Encode(&v22);
  }

  if ((result & 1) == 0)
  {
    v6 = v5;
  }

  *a4 = v6;
  *(a4 + 8) = !(result & 1);
  *(a4 + 16) = 1;
  return result;
}

void operations_research::sat::ProtoTrail::PushLevel(void *a1, _OWORD *a2, uint64_t a3, int a4)
{
  v13 = a3;
  v12 = a4;
  if (a4 < 1)
  {
    operations_research::sat::ProtoTrail::PushLevel(a4);
  }

  v11[0] = (a1[1] - *a1) >> 4;
  std::vector<int>::push_back[abi:ne200100]((a1 + 6), v11);
  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1, a2);
  std::vector<int>::push_back[abi:ne200100]((a1 + 3), &v12);
  v8 = a1[9];
  v7 = a1[10];
  v9 = (a1 + 9);
  if (v8 != v7)
  {
    v10 = *(v7 - 8);
    if (v10 <= a3)
    {
      v10 = a3;
    }

    v13 = v10;
  }

  std::vector<long long>::push_back[abi:ne200100](v9, &v13);
}

void *operations_research::sat::ProtoTrail::SetLevelImplied(void *this, unsigned int a2)
{
  if (a2 <= 0)
  {
    operations_research::sat::ProtoTrail::SetLevelImplied(a2);
  }

  v2 = this;
  if (a2 == 1)
  {
    v3 = 1;
    v4 = this[7];
    v5 = (this[6] + 4);
    v6 = this[6];
    v7 = v4 - v5;
    if (v4 == v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    this = memmove(v6, v5, v7);
    goto LABEL_9;
  }

  v3 = a2;
  v8 = this[9] + 8 * a2;
  v9 = *(v8 - 8);
  if (*(v8 - 16) > v9)
  {
    v9 = *(v8 - 16);
  }

  *(v8 - 16) = v9;
  v10 = this[7];
  v5 = (this[6] + 4 * a2);
  v6 = v5 - 4;
  v7 = v10 - v5;
  if (v10 != v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2[7] = &v6[v7];
  v11 = v2[10];
  v12 = (v2[9] + 8 * v3);
  v13 = v12 - 8;
  v14 = v11 - v12;
  if (v11 != v12)
  {
    this = memmove(v12 - 8, v12, v11 - v12);
  }

  v2[10] = &v13[v14];
  return this;
}

operations_research::sat::SharedTreeManager *operations_research::sat::SharedTreeManager::SharedTreeManager(operations_research::sat::SharedTreeManager *this, operations_research::sat::Model *a2)
{
  *this = 0;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = v4;
  v5 = *(v4 + 344);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(this + 4) = v5;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  *(this + 3) = v6;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 88) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 13) = 0;
  v7 = *(this + 4);
  v8 = *(this + 1);
  *(this + 28) = (v7 * *(v8 + 968) + -1.0);
  LODWORD(v8) = *(v8 + 852);
  v9 = 0x7FFFFFFF / v7;
  *(this + 8) = 0u;
  v10 = v8 * v7;
  if (v8 >= v9)
  {
    v10 = 0x7FFFFFFF;
  }

  *(this + 29) = v10;
  *(this + 30) = 0;
  *(this + 48) = 0;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 9) = 0uLL;
  InnerObjectiveLowerBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(v6);
  v12 = *(this + 3);
  v13 = *(this + 7);
  v14 = *(this + 6);
  v15 = 73 * ((v13 - v14) >> 3) - 1;
  if (v13 == v14)
  {
    v15 = 0;
  }

  v16 = *(this + 10) + *(this + 9);
  if (v15 == v16)
  {
    std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity(this + 5);
    v14 = *(this + 6);
    v16 = *(this + 10) + *(this + 9);
  }

  v17 = (*(v14 + 8 * (v16 / 0x49)) + 56 * (v16 % 0x49));
  *v17 = 0x7FFFFFFFLL;
  v17[1] = 0x7FFFFFFFFFFFFFFELL;
  v17[2] = InnerObjectiveLowerBound;
  v17[4] = 0;
  v17[5] = 0;
  v17[3] = 0;
  *(v17 + 46) = 0;
  v18 = *(this + 11);
  ++*(this + 10);
  v19 = *(this + 4);
  if (v19 > (*(this + 13) - v18) >> 3)
  {
    if ((v19 & 0x80000000) == 0)
    {
      v20 = *(this + 12);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v21 = *(this + 10) + *(this + 9) - 1;
  v23 = *(*(this + 6) + 8 * (v21 / 0x49)) + 56 * (v21 % 0x49);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 88, &v23);
  return this;
}

void sub_23CD32598(_Unwind_Exception *a1)
{
  v6 = *(v1 + 19);
  if (v6)
  {
    *(v1 + 20) = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 17) = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    std::deque<operations_research::sat::SharedTreeManager::Node>::~deque[abi:ne200100](v2);
    absl::lts_20240722::Mutex::~Mutex(v1);
    _Unwind_Resume(a1);
  }

LABEL_4:
  *(v1 + 12) = v8;
  operator delete(v8);
  goto LABEL_5;
}

void operations_research::sat::SharedTreeManager::GetAssignedNodes(operations_research::sat::SharedTreeManager *this@<X0>, void *a2@<X8>)
{
  v3 = *(*(this + 6) + 8 * (*(this + 9) / 0x49uLL));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_23CD32CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, char a14)
{
  a10[1] = v14;
  a10[2] = a11;
  *a10 = __p;
  if (__p)
  {
    a10[1] = __p;
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::SharedTreeManager::ProcessNodeChanges(operations_research::sat::SharedTreeManager *this, uint64_t a2, char *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = *(this + 17);
  if (*(this + 16) == v4)
  {
    goto LABEL_56;
  }

  v5 = 0;
  do
  {
    v9 = *(v4 - 8);
    v8 = (v4 - 8);
    v7 = v9;
    if (!v9)
    {
      operations_research::sat::SharedTreeManager::ProcessNodeChanges();
    }

    *(this + 17) = v8;
    if ((*(v7 + 52) & 1) == 0)
    {
      v10 = v5 + 1;
      while (1)
      {
        v5 = v10;
        ++*(this + 48);
        *(v7 + 52) = 1;
        *(v7 + 16) = 0x7FFFFFFFFFFFFFFELL;
        v11 = *(v7 + 32);
        v12 = *(this + 28);
        if (!v11)
        {
          ++v12;
        }

        *(this + 28) = v12;
        if (v11 && (*(v11 + 52) & 1) == 0)
        {
          v13 = *(this + 18);
          if (v8 >= v13)
          {
            v14 = *(this + 16);
            v15 = v8 - v14;
            v16 = (v8 - v14) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              goto LABEL_73;
            }

            v18 = v13 - v14;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              if (!(v19 >> 61))
              {
                operator new();
              }

LABEL_74:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v20 = v16;
            v21 = (8 * v16);
            v22 = &v21[-v20];
            *v21 = v11;
            v8 = (v21 + 1);
            memcpy(v22, v14, v15);
            *(this + 16) = v22;
            *(this + 17) = v8;
            *(this + 18) = 0;
            if (v14)
            {
              operator delete(v14);
            }
          }

          else
          {
            *v8 = v11;
            v8 += 8;
          }

          *(this + 17) = v8;
        }

        v23 = *(v7 + 40);
        if (v23 && (*(v23 + 52) & 1) == 0)
        {
          v24 = *(this + 18);
          if (v8 >= v24)
          {
            v25 = *(this + 16);
            v26 = v8 - v25;
            v27 = (v8 - v25) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
LABEL_73:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v29 = v24 - v25;
            if (v29 >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 61))
              {
                operator new();
              }

              goto LABEL_74;
            }

            v31 = v27;
            v32 = (8 * v27);
            v33 = &v32[-v31];
            *v32 = v23;
            v8 = (v32 + 1);
            memcpy(v33, v25, v26);
            *(this + 16) = v33;
            *(this + 17) = v8;
            *(this + 18) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v8 = v23;
            v8 += 8;
          }

          *(this + 17) = v8;
        }

        v6 = *(v7 + 24);
        if (!v6)
        {
          v35 = *(this + 3);
          v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 22), v94, a3);
          *&v93 = v94;
          *(&v93 + 1) = v36 - v94;
          v38 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 10), v92, v37);
          v90 = v92;
          v91 = v38 - v92;
          v71 = "shared_tree_manager(r=";
          v72 = 22;
          v73 = v93;
          v74 = " n=";
          v75 = 3;
          v76 = v92;
          v77 = v38 - v92;
          v78 = ")";
          v79 = 1;
          absl::lts_20240722::strings_internal::CatPieces(&v71, 5, __p);
          operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v35, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_5;
        }

        v34 = *(v6 + 32);
        if (v34 == v7)
        {
          v34 = *(v6 + 40);
          if (!v34)
          {
            goto LABEL_9;
          }
        }

        else if (!v34)
        {
          goto LABEL_9;
        }

        *(v34 + 53) = 1;
        if (*(v34 + 52) != 1)
        {
          break;
        }

LABEL_9:
        v10 = v5 + 1;
        v7 = v6;
        if (*(v6 + 52))
        {
          goto LABEL_4;
        }
      }
    }

    v6 = v7;
LABEL_4:
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](this + 152, (v6 + 24));
LABEL_5:
    v4 = *(this + 17);
  }

  while (*(this + 16) != v4);
  if (v5 < 1)
  {
    goto LABEL_56;
  }

  v39 = *(this + 3);
  v64 = 4;
  strcpy(v63, "Tree");
  v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 10), v69, a3);
  *&v68 = v69;
  *(&v68 + 1) = v40 - v69;
  v42 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 29), v67, v41);
  v65 = v67;
  v66 = v42 - v67;
  v44 = *(this + 11);
  v43 = *(this + 12);
  v71 = "nodes:";
  v72 = 6;
  v73 = v68;
  v74 = "/";
  v75 = 1;
  v76 = v67;
  v77 = v42 - v67;
  v78 = " closed:";
  v79 = 8;
  v46 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 48), v94, v45);
  *&v93 = v94;
  *(&v93 + 1) = v46 - v94;
  v80 = v94;
  v81 = v46 - v94;
  v82 = " unassigned:";
  v83 = 12;
  v48 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v43 - v44) >> 3, v92, v47);
  v90 = v92;
  v91 = v48 - v92;
  v84 = v92;
  v85 = v48 - v92;
  v86 = " restarts:";
  v87 = 10;
  v50 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 22), &__p[0].__r_.__value_.__r.__words[2], v49);
  __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
  __p[0].__r_.__value_.__l.__size_ = v50 - &__p[0].__r_.__value_.__r.__words[2];
  v88 = &__p[0].__r_.__value_.__s.__data_[16];
  v89 = v50 - &__p[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::strings_internal::CatPieces(&v71, 10, &v62);
  operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v39, v63, &v62);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
    if (v64 < 0)
    {
      goto LABEL_70;
    }

LABEL_56:
    v52 = *(this + 19);
    v51 = *(this + 20);
    if (v52 == v51)
    {
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  if ((v64 & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_70:
  operator delete(v63[0]);
  v52 = *(this + 19);
  v51 = *(this + 20);
  if (v52 != v51)
  {
LABEL_57:
    v53 = 0;
    do
    {
      v55 = *(v51 - 8);
      v51 -= 8;
      v54 = v55;
      if (v55)
      {
        while (1)
        {
          v56 = *(v54[4] + 16);
          if (*(v54[5] + 16) < v56)
          {
            v56 = *(v54[5] + 16);
          }

          if (v56 <= v54[2])
          {
            break;
          }

          v54[2] = v56;
          v54 = v54[3];
          if (!v54)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
LABEL_58:
        v53 = 1;
      }
    }

    while (v52 != v51);
    *(this + 20) = v51;
    if (v53)
    {
      v57 = *(this + 3);
      v58 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 22), v94, a3);
      *&v93 = v94;
      *(&v93 + 1) = v58 - v94;
      v60 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 10), v92, v59);
      v90 = v92;
      v91 = v60 - v92;
      v71 = "shared_tree_manager(r=";
      v72 = 22;
      v73 = v93;
      v74 = " n=";
      v75 = 3;
      v76 = v92;
      v77 = v60 - v92;
      v78 = ")";
      v79 = 1;
      absl::lts_20240722::strings_internal::CatPieces(&v71, 5, __p);
      operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(v57, __p, *(*(*(this + 6) + 8 * (*(this + 9) / 0x49uLL)) + 56 * (*(this + 9) % 0x49uLL) + 16), 0x7FFFFFFFFFFFFFFELL);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_71:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_23CD33368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::SharedTreeManager::RestartLockHeld(operations_research::sat::SharedTreeManager *this)
{
  v2 = *(this + 10);
  *(this + 8) += v2;
  if (v2 != 1)
  {
    if (v2)
    {
      v3 = *(this + 9);
      v4 = *(this + 6);
      v5 = (v4 + 8 * (v3 / 0x49));
      v6 = *v5;
      v7 = *v5 + 56 * (v3 % 0x49);
      if (*(this + 7) == v4)
      {
        v7 = 0;
      }

      v8 = v7 - v6;
      v9 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3);
      if (v8 < -55)
      {
        v13 = 71 - v9;
        v11 = &v5[-(v13 / 0x49)];
        v12 = *v11 + 56 * (73 * (v13 / 0x49) - v13) + 4032;
      }

      else
      {
        v10 = v9 + 1;
        v11 = &v5[v10 / 0x49];
        v12 = *v11 + 56 * (v10 % 0x49);
      }

      std::deque<operations_research::sat::SharedTreeManager::Node>::__erase_to_end(this + 5, v11, v12);
    }

    else
    {
      std::deque<operations_research::sat::SharedTreeManager::Node>::__append(this + 5, 1uLL);
    }
  }

  v14 = *(*(this + 6) + 8 * (*(this + 9) / 0x49uLL)) + 56 * (*(this + 9) % 0x49uLL);
  *(v14 + 48) = *(this + 8);
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(this + 12) = *(this + 11);
  result = *(this + 4) * *(*(this + 1) + 968) + -1.0;
  *(this + 28) = result;
  *(this + 48) = 0;
  ++*(this + 22);
  *(this + 23) = 0;
  return result;
}

void operations_research::sat::SharedTreeManager::AssignLeaf(uint64_t a1, void *a2, uint64_t a3)
{
  a2[7] = a2[6];
  a2[1] = *a2;
  a2[10] = a2[9];
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(v4 + 8 * (v3 / 0x49));
  a2[4] = a2[3];
  if (v5 + 56 * (v3 % 0x49) != a3)
  {
    v6 = v3 + *(a3 + 48) - *(a1 + 32);
    operator new();
  }
}

void sub_23CD337BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SharedTreeManager::ProposeSplit(uint64_t a1, void *a2)
{
  absl::lts_20240722::Mutex::Lock(a1);
  v4 = a2[6];
  v5 = a2[7] - v4;
  if ((v5 & 0x3FFFFFFFCLL) != 0)
  {
    v6 = *(v4 + 4 * (((v5 << 30) - 0x100000000) >> 32));
    v7 = (v5 >> 2);
    if (v7 == v5 >> 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = *(v4 + 4 * v7);
    v8 = a2[3];
    v9 = v10 - v6;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 0;
  v7 = (v5 >> 2);
  if (v7 != v5 >> 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = a2[3];
  v9 = ((a2[4] - v8) >> 2) - v6;
  if (!v9)
  {
LABEL_8:
    operations_research::sat::SharedTreeManager::GetAssignedNodes(a1, &__p);
  }

LABEL_7:
  if (*(v8 + 4 * v6 + 4 * v9 - 4) >= *(a1 + 32))
  {
    goto LABEL_8;
  }

  absl::lts_20240722::Mutex::Unlock(a1);
}

void sub_23CD33DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::Unlock(v12);
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedTreeManager::Split(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  v10 = 73 * ((v9 - v8) >> 3) - 1;
  v11 = v9 == v8;
  v12 = *(a2 + 8);
  v13 = *(v12 - 16);
  v33 = *(v12 - 8);
  v14 = v13[2];
  v15 = *(a1 + 32);
  if (v11)
  {
    v10 = 0;
  }

  v16 = *(a1 + 80);
  v17 = *(a1 + 72) + v16;
  if (v10 == v17)
  {
    std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity((a1 + 40));
    v8 = *(a1 + 48);
    v17 = *(a1 + 80) + *(a1 + 72);
  }

  v18 = *(v8 + 8 * (v17 / 0x49)) + 56 * (v17 % 0x49);
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *v18 = a3;
  v19 = *(a1 + 48);
  v20 = *(a1 + 48);
  v11 = *(a1 + 56) == v20;
  v21 = 73 * ((*(a1 + 56) - v20) >> 3) - 1;
  *(v18 + 8) = a4;
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  *(v18 + 48) = v15 + v16;
  *(v18 + 52) = 0;
  v23 = *(a1 + 72);
  v22 = *(a1 + 80);
  v24 = v22 + 1;
  *(a1 + 80) = v22 + 1;
  v25 = v23 + v22;
  if (v11)
  {
    v21 = 0;
  }

  v26 = v13[2];
  v27 = *(a1 + 32);
  v13[4] = *(v20 + 8 * (v25 / 0x49)) + 56 * (v25 % 0x49);
  v28 = v23 + v24;
  if (v21 == v23 + v24)
  {
    std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity((a1 + 40));
    v20 = *(a1 + 48);
    v28 = *(a1 + 80) + *(a1 + 72);
  }

  v29 = *(v20 + 8 * (v28 / 0x49)) + 56 * (v28 % 0x49);
  *v29 = ~a3;
  *(v29 + 8) = 1 - a4;
  *(v29 + 16) = v26;
  *(v29 + 24) = v13;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = v27 + v24;
  *(v29 + 52) = 0;
  v31 = *(a1 + 72);
  v30 = *(a1 + 80);
  *(a1 + 80) = v30 + 1;
  v13[5] = *(*(a1 + 48) + 8 * ((v31 + v30) / 0x49uLL)) + 56 * ((v31 + v30) % 0x49uLL);
  v32 = v13 + 5;
  *&v34 = *(v32 - 1);
  DWORD2(v34) = v33 + 1;
  std::vector<std::pair<operations_research::sat::SharedTreeManager::Node *,int>>::push_back[abi:ne200100](a2, &v34);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 88, v32);
  --*(a1 + 112);
}

void sub_23CD342AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::Unlock(v12);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<operations_research::sat::SharedTreeManager::Node *,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void operations_research::sat::SharedTreeManager::CloseTree(atomic_ullong *this, operations_research::sat::ProtoTrail *a2, unsigned int a3)
{
  absl::lts_20240722::Mutex::Lock(this);
  v6 = *(a2 + 6);
  if (a3)
  {
    v7 = *(v6 + 4 * (a3 - 1));
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 3);
  v9 = *(v8 + 4 * v7);
  *(a2 + 7) = v6;
  *(a2 + 1) = *a2;
  *(a2 + 10) = *(a2 + 9);
  *(a2 + 4) = v8;
  v10 = *(this + 8);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v12 < 0 == v11)
  {
    v17 = *(this[6] + 8 * ((this[9] + v12) / 0x49uLL)) + 56 * ((this[9] + v12) % 0x49uLL);
    if (unk_27E25D3D8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SharedTreeManager::CloseTree(operations_research::sat::ProtoTrail &,int)::$_0::operator() const(void)::site, unk_27E25D3D8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 478);
      v15 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Closing subtree at level ", 0x19uLL);
      v18 = a3;
      absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v15, &v18);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
    }

    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((this + 16), &v17);
    operations_research::sat::SharedTreeManager::ProcessNodeChanges(this, v13, v14);
  }

  absl::lts_20240722::Mutex::Unlock(this);
}

operations_research::sat::SharedTreeWorker *operations_research::sat::SharedTreeWorker::SharedTreeWorker(operations_research::sat::SharedTreeWorker *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeManager>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v4 = *(a2 + 3);
  if (v4 > 1)
  {
    v6 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v4;
    v16 = *(_X11 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_10;
    }

LABEL_7:
    v18 = *(a2 + 6);
    while (1)
    {
      v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v4;
      if (*(v18 + 16 * v19) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
LABEL_10:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v6 += 8;
          v15 = (v6 + v15) & v4;
          v16 = *(_X11 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_16;
      }
    }

    v5 = (v18 + 16 * v19);
    if (_X11 + v19)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (*(a2 + 4) < 2uLL || (v5 = a2 + 40, *(a2 + 5) != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) || !&absl::lts_20240722::container_internal::kSooControl)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v20 = *(v5 + 1);
LABEL_17:
  *(this + 9) = v20;
  *(this + 10) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(this + 11) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(a2);
  *(this + 12) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(a2);
  *(this + 13) = operations_research::sat::Model::GetOrCreate<operations_research::sat::RestartPolicy>(a2);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  *(this + 31) = -1;
  *(this + 64) = 1;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  *(this + 72) = 8;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 89) = 0;
  return this;
}

uint64_t operations_research::sat::SharedTreeWorker::DecisionReason(operations_research::sat::SharedTreeWorker *this, int a2)
{
  v3 = (*(this + 29) - *(this + 28)) >> 2;
  if (v3 < a2)
  {
    operations_research::sat::SharedTreeWorker::DecisionReason(a2, v3);
  }

  *(this + 34) = *(this + 33);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = 4 * a2;
    do
    {
      v7[0] = *(*(this + 28) + v4) ^ 1;
      std::vector<int>::push_back[abi:ne200100](this + 264, v7);
      v4 += 4;
    }

    while (v5 != v4);
  }

  return this + 264;
}

BOOL operations_research::sat::SharedTreeWorker::AddDecisionImplication(operations_research::sat::SharedTreeWorker *a1, int a2, int a3)
{
  v25 = a2;
  if (a2 == -1)
  {
    operations_research::sat::SharedTreeWorker::AddDecisionImplication(&v25);
  }

  v4 = *(*(*(*(a1 + 5) + 216) + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8));
  if ((v4 >> a2))
  {
    operations_research::sat::SharedTreeWorker::AddDecisionImplication(v24);
  }

  v5 = v4 & (1 << (a2 & 0x3F ^ 1u));
  if (v5)
  {
    if (dword_2810C0E08 >= 2)
    {
      v17 = a1;
      v18 = a3;
      IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0E00, dword_2810C0E08);
      a3 = v18;
      v20 = IsEnabled2;
      a1 = v17;
      if (v20)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 556);
        v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v24, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Closing subtree via impl at ", 0x1CuLL);
        v25 = v18 + 1;
        v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v21, &v25);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, " assigned=", 0xAuLL);
        v25 = (*(v17 + 23) - *(v17 + 22)) >> 2;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v22, &v25);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
        a1 = v17;
        a3 = v18;
      }
    }

    v6 = *(a1 + 7);
    v7 = a1;
    v8 = a3;
    v9 = operations_research::sat::SharedTreeWorker::DecisionReason(a1, a3);
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = &v11[-*v9];
    v13 = *(v6 + 840);
    *(v13 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v13 + 72), v10, v11, v12 >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v6, 0, 0, (v13 + 72));
    operations_research::sat::SharedTreeManager::CloseTree(*(v7 + 3), (v7 + 128), v8);
    *(v7 + 29) = *(v7 + 28);
  }

  else
  {
    v14 = *(a1 + 7);
    v15 = operations_research::sat::SharedTreeWorker::DecisionReason(a1, a3);
    operations_research::sat::IntegerTrail::EnqueueLiteral(v14, a2, *v15, (*(v15 + 8) - *v15) >> 2, 0, 0);
    if (dword_2810C0E20 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0E18, dword_2810C0E20))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 564);
      v23 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v24, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Learned shared clause", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
    }
  }

  return v5 == 0;
}

void sub_23CD34AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD34ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SharedTreeWorker::AddImplications(operations_research::sat::SharedTreeWorker *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(*(a1 + 5) + 296);
  if (v3 && v3 <= ((*(a1 + 23) - *(a1 + 22)) >> 2))
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
      v5 = 0;
      v8 = &a2[4 * a3];
      while (1)
      {
        v9 = *v7;
        v10 = *(a1 + 4);
        v11 = ~*v7 <= *v7 ? *v7 : ~v9;
        v12 = *(v10[6] + 4 * v11);
        if (v12 == -1)
        {
          if (~v11 > v11)
          {
            v11 = ~v11;
          }

          v14 = *(*v10 + 4 * v11);
          if (v14 == -1)
          {
            v15 = 0;
            v14 = -1;
          }

          else
          {
            v15 = *(v7 + 1);
            if ((v9 & 0x80000000) != 0)
            {
              if (v15 - 1 > 0x7FFFFFFFFFFFFFFDLL)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v14 ^= 1u;
            }
          }

          AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(a1 + 8), v14, v15);
        }

        else
        {
          AssociatedLiteral = __PAIR64__(v12, v9) >> 31;
        }

        if (((*(*(*(*(a1 + 5) + 216) + 24) + ((AssociatedLiteral >> 3) & 0x1FFFFFFFFFFFFFF8)) >> AssociatedLiteral) & 1) == 0)
        {
          v5 = 1;
          if (!operations_research::sat::SharedTreeWorker::AddDecisionImplication(a1, AssociatedLiteral, v3))
          {
            break;
          }
        }

        v7 += 4;
        if (v7 == v8)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v5 = 0;
LABEL_26:
      v16 = *(a1 + 9);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17 != -1)
        {
          v18 = *(*(*(a1 + 7) + 40) + 8 * v17);
          v19 = v3 - 1;
          v20 = *(a1 + 25);
          if (*(v20 + 8 * (v3 - 1)) > v18)
          {
            v18 = *(v20 + 8 * v19);
          }

          *(v20 + 8 * v19) = v18;
          if (v3 <= 0)
          {
            operations_research::sat::ProtoTrail::SetLevelImplied(v3);
          }

          v21 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(a1 + 8), v17, *(v20 + 8 * v3 - 8));
          if (((*(*(*(*(a1 + 5) + 216) + 24) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            operations_research::sat::SharedTreeWorker::AddDecisionImplication(a1, v21, v3);
            v5 = 1;
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t operations_research::sat::SharedTreeWorker::SyncWithLocalTrail(operations_research::sat::SharedTreeWorker *this)
{
  result = operations_research::sat::SatSolver::FinishPropagation(*(this + 5));
  if (result)
  {
    while (1)
    {
      v4 = *(*(this + 5) + 296);
      v5 = *(this + 22);
      v6 = (*(this + 23) - v5) >> 2;
      if (v6 < v4)
      {
        if (operations_research::sat::SharedTreeWorker::AddImplications(this, *(this + 16), 0))
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }

      if (v4)
      {
        v7 = *(v5 + 4 * (v4 - 1)) + 1;
        if (v6 == v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
        if (v6 == v4)
        {
LABEL_11:
          v4 = (*(this + 20) - *(this + 19)) >> 2;
          goto LABEL_14;
        }
      }

      LODWORD(v4) = *(v5 + 4 * v4);
LABEL_14:
      if (operations_research::sat::SharedTreeWorker::AddImplications(this, (*(this + 16) + 16 * v7), v4 - v7))
      {
        goto LABEL_5;
      }

LABEL_15:
      result = operations_research::sat::IntegerSearchHelper::BeforeTakingDecision(*(this + 11));
      if (!result)
      {
        return result;
      }

      v8 = *(this + 5);
      v9 = *(v8 + 296);
      if (v9 >= ((*(this + 23) - *(this + 22)) >> 2))
      {
        return 1;
      }

      v10 = *(*(this + 28) + 4 * v9);
      v11 = *(*(*(v8 + 216) + 24) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v11 >> (v10 & 0x3E)) & 3) == 0)
      {
        return 1;
      }

      if ((v11 >> (v10 & 0x3F ^ 1)))
      {
        if (dword_27E25D3F0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SharedTreeWorker::SyncWithLocalTrail(void)::$_0::operator() const(void)::site, dword_27E25D3F0))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 617);
          v15 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v17, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Closing subtree at ", 0x13uLL);
          v18 = v9 + 1;
          v16 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v15, &v18);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, " assigned=", 0xAuLL);
          v18 = (*(this + 23) - *(this + 22)) >> 2;
          absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v16, &v18);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
        }

        operations_research::sat::SharedTreeManager::CloseTree(*(this + 3), (this + 128), v9 + 1);
        v3 = *(this + 28);
      }

      else
      {
        operations_research::sat::ProtoTrail::SetLevelImplied(this + 16, v9 + 1);
        v12 = *(this + 29);
        v13 = *(this + 28) + 4 * v9;
        v14 = v12 - (v13 + 4);
        if (v12 != v13 + 4)
        {
          memmove(v13, (v13 + 4), v12 - (v13 + 4));
        }

        v3 = v13 + v14;
      }

      *(this + 29) = v3;
LABEL_5:
      if ((operations_research::sat::SatSolver::FinishPropagation(*(this + 5)) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23CD34F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SharedTreeWorker::NextDecision(void *a1, _DWORD *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v5 = *(v4 + 12);
  v6 = *v4;
  v7 = *(a1[5] + 296);
  v8 = (a1[29] - a1[28]) >> 2;
  v9 = a1[23] - a1[22];
  v10 = (v9 >> 2);
  if (v8 != v10)
  {
    operations_research::sat::SharedTreeWorker::NextDecision(v8, v10);
  }

  if (v7 + 1 <= (v9 >> 2))
  {
    if (dword_27E25D408 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_1::operator() const(void)::site, dword_27E25D408))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 636);
      v26 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v33, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, "Following shared trail depth=", 0x1DuLL);
      LODWORD(v30) = v7 + 1;
      v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v26, &v30);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " ", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v27, (*(*a1 + 176) & 0xFFFFFFFFFFFFFFFCLL));
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v33);
    }

    v17 = *(a1[28] + 4 * v7);
    v18 = *(*(*(a1[5] + 216) + 24) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v18 >> (v17 & 0x3F ^ 1u)))
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 639);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v33, " at depth ", 0xAuLL);
      LODWORD(v30) = v7 + 1;
      v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(&v33, &v30);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, " ", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v28, (*(*a1 + 176) & 0xFFFFFFFFFFFFFFFCLL));
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v33);
    }

    if ((v18 >> (v17 & 0x3F)))
    {
      operations_research::sat::SharedTreeWorker::NextDecision(&v33);
    }

    *a2 = v17;
    result = 1;
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = v6 + 32 * v5;
    v12 = a1[9];
    if (v12)
    {
      v13 = *(v12 + 16);
      if (v13 != -1)
      {
        v14 = a1[10];
        v15 = -*(*(a1[7] + 152) + 24 * v13) - *(*(a1[7] + 152) + 24 * (v13 ^ 1));
        v30 = 0;
        v31 = v15;
        v32 = 2;
        v29 = 0;
        v16 = v14[1];
        if (v16 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v33 = 0;
          v34 = v15;
          v35 = 2;
          v36 = v15;
        }

        else
        {
          if ((v16)(*v14, &absl::lts_20240722::base_internal::FastTypeTag<long long ()(absl::lts_20240722::log_uniform_int_distribution<long long>,std::tuple<long long,long long,long long>)>::dummy_var, &v30, &v29))
          {
LABEL_20:
            v30 = *(*a1 + 856);
            v25 = a1[11];
            operator new();
          }

          v33 = v30;
          v34 = v31;
          v15 = v31 - v30;
          v35 = v32;
          v36 = v31 - v30;
          if (v32 != 2)
          {
            v24 = 1.0 / log(v32);
            v23 = vcvtpd_s64_f64(v24 * log(v15 + 0.5));
            goto LABEL_19;
          }
        }

        v23 = 64 - __clz(v15);
LABEL_19:
        v37 = v23;
        absl::lts_20240722::log_uniform_int_distribution<long long>::Generate<absl::lts_20240722::BitGenRef>(&v33, v14, &v33);
        goto LABEL_20;
      }
    }

    v21 = a1[11];
    v22 = *MEMORY[0x277D85DE8];

    return operations_research::sat::IntegerSearchHelper::GetDecision(v21, v11, a2);
  }

  return result;
}

void sub_23CD353C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD353D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

unint64_t operations_research::sat::SharedTreeWorker::MaybeProposeSplit(unint64_t this)
{
  if (*(this + 256))
  {
    v1 = this;
    v2 = *(this + 40);
    v3 = (*(this + 184) - *(this + 176)) >> 2;
    if (*(v2 + 296) == v3 + 1)
    {
      v9 = *(*(v2 + 304) + 8 * v3 + 4);
      this = operations_research::sat::ProtoLiteral::Encode(v9, *(this + 32), *(this + 64), &v7);
      if (v8 == 1)
      {
        v4 = (*(v1 + 232) - *(v1 + 224)) >> 2;
        v5 = ((*(v1 + 184) - *(v1 + 176)) >> 2);
        if (v4 != v5)
        {
          operations_research::sat::SharedTreeWorker::MaybeProposeSplit(v4, v5);
        }

        operations_research::sat::SharedTreeManager::ProposeSplit(*(v1 + 24), (v1 + 128));
        v6 = ((*(v1 + 184) - *(v1 + 176)) >> 2);
        this = (*(v1 + 232) - *(v1 + 224)) >> 2;
        if (this >= v6)
        {
          *(v1 + 256) = 0;
        }

        else
        {
          --*(v1 + 256);
          std::vector<int>::push_back[abi:ne200100](v1 + 224, &v9);
          this = (*(v1 + 232) - *(v1 + 224)) >> 2;
          v6 = ((*(v1 + 184) - *(v1 + 176)) >> 2);
        }

        if (this != v6)
        {
          operations_research::sat::SharedTreeWorker::MaybeProposeSplit(this, v6);
        }
      }
    }
  }

  return this;
}

void operations_research::sat::SharedTreeWorker::SyncWithSharedTree(operations_research::sat::SharedTreeWorker *this)
{
  v2 = *(this + 3);
  absl::lts_20240722::Mutex::Lock(v2);
  v3 = *(v2 + 80);
  v4 = *(v2 + 112);
  v5 = *(v2 + 116);
  absl::lts_20240722::Mutex::Unlock(v2);
  if (((v5 - v3) & 0x80000001) == 1)
  {
    v6 = (v5 - v3) / 2 + 1;
  }

  else
  {
    v6 = (v5 - v3) / 2;
  }

  if (v6 >= v4)
  {
    v6 = v4;
  }

  if ((v6 & 0x80000001) == 1)
  {
    v7 = v6 / 2 + 1;
  }

  else
  {
    v7 = v6 / 2;
  }

  *(this + 64) = v7;
  if (dword_2810C0E38 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0E30, dword_2810C0E38))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/work_assignment.cc", 715);
    v8 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v10, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "Splits wanted: ", 0xFuLL);
    LODWORD(v11) = *(this + 64);
    v9 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v8, &v11);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " ", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v9, (*(*this + 176) & 0xFFFFFFFFFFFFFFFCLL));
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v10);
  }

  operations_research::sat::SharedTreeManager::SyncTree(*(this + 3), (this + 128));
}

void sub_23CD35AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD35AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD35ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ProtoTrail::Decision(operations_research::sat::ProtoTrail *this, unsigned int a2)
{
  if (a2 < 1)
  {
    operations_research::sat::ProtoTrail::Decision(a2);
  }

  v3 = *(this + 6);
  v4 = (*(this + 7) - v3) >> 2;
  if (v4 < a2)
  {
    operations_research::sat::ProtoTrail::Decision(a2, v4);
  }

  v5 = (*this + 16 * *(v3 + 4 * a2 - 4));
  result = *v5;
  v7 = v5[1];
  return result;
}

uint64_t operations_research::sat::SharedTreeWorker::Search(unint64_t a1, uint64_t a2)
{
  operations_research::sat::SatSolver::Backtrack(*(a1 + 40), 0);
  v4 = *(a1 + 64);
  if (v4[82] == -1 && (v5 = *(*v4 + 16), operations_research::sat::SatSolver::SetNumVariables(*v4, v5 + 1), v4[82] = 2 * v5, operations_research::sat::SatSolver::AddUnitClause(*v4, 2 * v5), v6 = *(a1 + 64), *(v6 + 328) == -1))
  {
    v9 = *(*v6 + 16);
    operations_research::sat::SatSolver::SetNumVariables(*v6, v9 + 1);
    *(v6 + 328) = 2 * v9;
    operations_research::sat::SatSolver::AddUnitClause(*v6, 2 * v9);
    v7 = *(a1 + 72);
    if (v7)
    {
LABEL_4:
      v8 = *(v7 + 16) != -1;
      if ((operations_research::TimeLimit::LimitReached(*(a1 + 16)) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 3;
    }
  }

  else
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v8 = 0;
  if ((operations_research::TimeLimit::LimitReached(*(a1 + 16)) & 1) == 0)
  {
    do
    {
LABEL_11:
      if ((operations_research::sat::SatSolver::FinishPropagation(*(a1 + 40)) & 1) == 0)
      {
        return *(*(a1 + 40) + 528);
      }

      v11 = *(*(*(a1 + 96) + 24) + 32 * *(*(a1 + 96) + 48) + 24);
      if (!v11)
      {
        goto LABEL_38;
      }

      if ((*(*v11 + 48))(v11))
      {
        v12 = *(a1 + 112) + 1;
        *(a1 + 112) = v12;
        *(*(a1 + 96) + 48) = v12 % ((*(*(a1 + 96) + 8) - **(a1 + 96)) >> 5);
        operations_research::sat::SatSolver::Backtrack(*(a1 + 40), 0);
        if ((*(*(a1 + 48) + 8) & 0xFFFFFFF) == 0)
        {
LABEL_18:
          operations_research::sat::SharedTreeWorker::SyncWithSharedTree(a1);
        }
      }

      else if ((*(*(a1 + 48) + 8) & 0xFFFFFFF) == 0)
      {
        goto LABEL_18;
      }

      if ((operations_research::sat::SharedTreeWorker::SyncWithLocalTrail(a1) & 1) == 0)
      {
        return *(*(a1 + 40) + 528);
      }

      v20 = 0;
      if (operations_research::sat::SharedTreeWorker::NextDecision(a1, &v20))
      {
        if (operations_research::TimeLimit::LimitReached(*(a1 + 16)))
        {
          return 3;
        }

        if (v20 == -1)
        {
          v15 = *(a2 + 24);
          if (!v15)
          {
LABEL_38:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v15 + 48))(v15);
          if (!v8)
          {
            return 2;
          }

          v16 = *(*(*(a1 + 56) + 40) + 8 * *(*(a1 + 72) + 16));
          operations_research::sat::SatSolver::Backtrack(*(a1 + 40), 0);
          v10 = 1;
          if (v16 - 1 >= 0x8000000000000002)
          {
            v17 = 1 - v16;
          }

          else
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((operations_research::sat::IntegerTrail::Enqueue(*(a1 + 56), *(*(a1 + 72) + 16) ^ 1, v17, 0, 0, 0, 0) & 1) == 0)
          {
            return v10;
          }
        }

        else
        {
          v14 = *(*(*(*(a1 + 40) + 216) + 24) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if ((v14 >> (v20 & 0x3F ^ 1u)))
          {
            operations_research::sat::SharedTreeWorker::Search(v19);
          }

          if ((v14 >> (v20 & 0x3F)))
          {
            operations_research::sat::SharedTreeWorker::Search(v19);
          }

          if ((operations_research::sat::IntegerSearchHelper::TakeDecision(*(a1 + 88), v20, v13) & 1) == 0)
          {
            return *(*(a1 + 40) + 528);
          }

          operations_research::sat::SharedTreeWorker::MaybeProposeSplit(a1);
        }
      }
    }

    while (!operations_research::TimeLimit::LimitReached(*(a1 + 16)));
  }

  return 3;
}

void *std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23CD361DC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::deque<operations_research::sat::SharedTreeManager::Node>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 73 * ((v5 - v4) >> 3) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    result = std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity(result, v11);
    v7 = v3[5];
    v4 = v3[1];
    v5 = v3[2];
    v8 = v3[4] + v7;
  }

  v12 = (v4 + 8 * (v8 / 0x49));
  if (v5 != v4)
  {
    v13 = *v12 + 56 * (v8 % 0x49);
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = v12;
    if (v13 != v14)
    {
      goto LABEL_16;
    }

    return result;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 + 0x6DB6DB6DB6DB6DB7 * ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 72 - v15;
    v16 = &v12[v17 / -73];
    v14 = *v16 + 56 * (73 * (v17 / 73) - v17) + 4032;
    if (v13 != v14)
    {
      do
      {
LABEL_16:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4088;
        }

        if (v13 == v18)
        {
          v3[5] = v7;
          if (v12 == v16)
          {
            return result;
          }
        }

        else
        {
          v19 = v13;
          do
          {
            *v19 = 0uLL;
            *(v19 + 16) = 0uLL;
            *(v19 + 32) = 0uLL;
            *(v19 + 40) = 0;
            *(v19 + 48) = 0;
            *v19 = 0x7FFFFFFF;
            *(v19 + 8) = xmmword_23CE4EB20;
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            v19 += 56;
          }

          while (v19 != v18);
          v7 = v3[5] + 0x6DB6DB6DB6DB6DB7 * ((v18 - v13) >> 3);
          v3[5] = v7;
          if (v12 == v16)
          {
            return result;
          }
        }

        v20 = v12[1];
        ++v12;
        v13 = v20;
      }

      while (v20 != v14);
    }
  }

  else
  {
    v16 = &v12[v15 / 0x49uLL];
    v14 = *v16 + 56 * (v15 % 0x49uLL);
    if (v13 != v14)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void std::deque<operations_research::sat::SharedTreeManager::Node>::__erase_to_end(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v4 + v5) / 0x49uLL));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 56 * ((v4 + v5) % 0x49uLL);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = 73 * (v8 - a2) + 0x6DB6DB6DB6DB6DB7 * ((v9 - *v8) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a3 - *a2) >> 3);
  if (v10 >= 1)
  {
    v11 = v6 == v7 ? 0 : 73 * ((v6 - v7) >> 3) - 1;
    v12 = v5 - v10;
    a1[5] = v12;
    if ((v11 - (v12 + v4)) >= 0x92)
    {
      do
      {
        operator delete(*(v6 - 8));
        v6 = a1[2] - 8;
        v13 = v6 == a1[1];
        v14 = 73 * ((v6 - a1[1]) >> 3) - 1;
        a1[2] = v6;
        if (v13)
        {
          v14 = 0;
        }
      }

      while ((v14 - (a1[5] + a1[4])) > 0x91);
    }
  }
}

void *std::deque<operations_research::sat::SharedTreeManager::Node>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x49)
  {
    v5 = v4 / 0x49 + 1;
  }

  else
  {
    v5 = v4 / 0x49;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x49)
  {
    v7 = v6 / 0x49;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x49)
  {
    for (result[4] = v6 - 73 * v7; v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 73 * v7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  return result;
}

void sub_23CD36C5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0,std::allocator<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44B70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0,std::allocator<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(v2[7] + 40);
  v4 = 8 * *(v2[9] + 16);
  v5 = *(v3 + v4);
  v6 = -*(v3 + (v4 ^ 8));
  v7 = **(result + 16);
  v8 = v5 <= v7 && v7 < v6;
  if (!v8 || **(result + 24) > (((v2[23] - v2[22]) >> 2) + 1))
  {
    goto LABEL_17;
  }

  v9 = v2[10];
  v10 = 1.0 - **(result + 32);
  v25 = v10;
  v24 = 0;
  v11 = v9[1];
  if (v11 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    goto LABEL_12;
  }

  v12 = result;
  v13 = a2;
  if (!(v11)(*v9, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v25, &v24))
  {
    v10 = v25;
    a2 = v13;
    result = v12;
LABEL_12:
    v15 = result;
    v16 = a2;
    while (1)
    {
      v17 = vcvtd_n_s64_f64(v10, 0x20uLL);
      v18 = (v9[2])(*v9);
      v19 = v18 >= v17;
      if (v18 != v17)
      {
        break;
      }

      v10 = (v10 + v17 * -2.32830644e-10) * 4294967300.0;
      if (v10 == 0.0)
      {
        v14 = v16;
        result = v15;
        goto LABEL_19;
      }
    }

    v14 = v16;
    result = v15;
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v14 = v13;
  result = v12;
  if ((v24 & 1) == 0)
  {
LABEL_19:
    v21 = **(result + 16);
    if (v21 >= 0x8000000000000002)
    {
      v22 = -v21;
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = *(v2[9] + 16) ^ 1;
    *v14 = -1;
    *(v14 + 8) = v23;
    *(v14 + 16) = v22;
    return result;
  }

LABEL_17:
  v20 = *(*(result + 40) + 24);
  if (!v20)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v20 + 48))(v20);
}

uint64_t std::__function::__func<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0,std::allocator<operations_research::sat::SharedTreeWorker::NextDecision(operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16SharedTreeWorker12NextDecisionEPNS_11StrongIndexINS0_23LiteralIndex_index_tag_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16SharedTreeWorker12NextDecisionEPNS_11StrongIndexINS0_23LiteralIndex_index_tag_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16SharedTreeWorker12NextDecisionEPNS_11StrongIndexINS0_23LiteralIndex_index_tag_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16SharedTreeWorker12NextDecisionEPNS_11StrongIndexINS0_23LiteralIndex_index_tag_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::ZeroHalfCutHelper::Reset(operations_research::sat::ZeroHalfCutHelper *this, int a2)
{
  v5 = *(this + 12);
  v4 = *(this + 13);
  if (v4 != v5)
  {
    do
    {
      v10 = *(v4 - 40);
      if (v10)
      {
        *(v4 - 32) = v10;
        operator delete(v10);
      }

      v11 = v4 - 64;
      v12 = *(v4 - 64);
      if (v12)
      {
        *(v4 - 56) = v12;
        operator delete(v12);
      }

      v4 -= 64;
    }

    while (v11 != v5);
  }

  v6 = *(this + 15);
  *(this + 13) = v5;
  *(this + 7) = *(this + 6);
  *(this + 10) = *(this + 9);
  v7 = *(this + 16);
  v8 = v6;
  if (v7 != v6)
  {
    v9 = *(this + 16);
    do
    {
      v14 = *(v9 - 24);
      v9 -= 24;
      v13 = v14;
      if (v14)
      {
        *(v7 - 16) = v13;
        operator delete(v13);
      }

      v7 = v9;
    }

    while (v9 != v6);
    v8 = *(this + 15);
  }

  *(this + 16) = v6;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
  if (a2 <= v15)
  {
    if (a2 < v15)
    {
      v16 = v8 + 24 * a2;
      if (v6 != v16)
      {
        v17 = v6;
        do
        {
          v19 = *(v17 - 24);
          v17 -= 24;
          v18 = v19;
          if (v19)
          {
            *(v6 - 16) = v18;
            operator delete(v18);
          }

          v6 = v17;
        }

        while (v17 != v16);
      }

      *(this + 16) = v16;
    }
  }

  else
  {
    std::vector<std::vector<int>>::__append(this + 120, a2 - v15);
  }

  std::vector<BOOL>::resize(this + 168, a2, 0);
}

void operations_research::sat::ZeroHalfCutHelper::ProcessVariables(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  operations_research::sat::ZeroHalfCutHelper::Reset(a1, (*(a2 + 8) - *a2) >> 3);
  if (a1 + 3 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v9 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v13 = *&v9[8 * v10];
      v14 = *(a3 + 8 * v10);
      v15 = v14;
      if (v14 < 0x8000000000000003)
      {
        v15 = -INFINITY;
      }

      if (v14 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v15 = INFINITY;
      }

      v16 = v13 - v15;
      v23 = v16;
      v17 = *(a5 + 8 * v10);
      v18 = v17;
      if (v17 < 0x8000000000000003)
      {
        v18 = -INFINITY;
      }

      if (v17 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v18 = INFINITY;
      }

      v22 = v18 - *&a1[3][8 * v10];
      v19 = 8 * v10;
      v20 = (a1 + 6);
      if (v16 < v22)
      {
        std::vector<double>::push_back[abi:ne200100](v20, &v23);
        v12 = *(a3 + v19);
      }

      else
      {
        std::vector<double>::push_back[abi:ne200100](v20, &v22);
        v12 = *(a5 + v19);
      }

      v21 = v12 & 1;
      std::vector<int>::push_back[abi:ne200100]((a1 + 9), &v21);
      v10 = v11;
      v9 = *a2;
      ++v11;
    }

    while (v10 < (*(a2 + 8) - *a2) >> 3);
  }
}

void operations_research::sat::ZeroHalfCutHelper::AddOneConstraint(uint64_t a1, int a2, int *a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v59 = *MEMORY[0x277D85DE8];
  if (*(a1 + 12) >= a4)
  {
    *__p = 0u;
    v54 = 0u;
    *v52 = 0u;
    if (a4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = a4 & 0x7FFFFFFF;
      v16 = 0.0;
      do
      {
        v18 = *a3++;
        v17 = v18;
        v20 = *a5++;
        v19 = v20;
        v21 = v20;
        if (v20 < 0x8000000000000003)
        {
          v21 = -INFINITY;
        }

        if (v19 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v22 = v21;
        }

        else
        {
          v22 = INFINITY;
        }

        v23 = *(*(a1 + 24) + 8 * v17);
        if (v19 >= 0)
        {
          v24 = v19;
        }

        else
        {
          v24 = -v19;
        }

        if (v14 <= v24)
        {
          v14 = v24;
        }

        if (v19)
        {
          if (*(*(a1 + 48) + 8 * v17) > 0.01)
          {
            v25 = v12 - v11;
            v26 = (v12 - v11) >> 2;
            v27 = v26 + 1;
            if ((v26 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (-v11 >> 1 > v27)
            {
              v27 = -v11 >> 1;
            }

            if (-v11 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v28 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v27;
            }

            v51 = v13;
            if (v28)
            {
              if (!(v28 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = v26;
            v30 = (4 * v26);
            v31 = &v30[-v29];
            *v30 = v17;
            v12 = v30 + 1;
            memcpy(v31, v11, v25);
            __p[1] = v31;
            *(&v54 + 1) = 0;
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v31;
            v13 = v51;
            *&v54 = v12;
          }

          v13 ^= *(*(a1 + 72) + 4 * v17);
        }

        v16 = v16 + v22 * v23;
        --v15;
      }

      while (v15);
      if (v14 <= *(a1 + 16) && v11 != v12)
      {
        v33 = a8;
        if (a8 < 0x8000000000000003)
        {
          v33 = -INFINITY;
        }

        if (a8 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v33 = INFINITY;
        }

        v34 = v33 - v16;
        if (v33 - v16 < 0.01)
        {
          v57 = a2;
          v58 = 1;
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(v52, &v57, &v59, 1uLL);
          v56 = v34;
          v55 = v13 ^ a8 & 1;
          v35 = __p[1];
          v36 = v54;
          if (__p[1] != v54 || (a8 & 1) != v13)
          {
            if (__p[1] != v54)
            {
              do
              {
                v37 = *(a1 + 120) + 24 * *v35;
                v57 = (*(a1 + 104) - *(a1 + 96)) >> 6;
                std::vector<int>::push_back[abi:ne200100](v37, &v57);
                ++v35;
              }

              while (v35 != v36);
            }

            v38 = *(a1 + 104);
            if (v38 >= *(a1 + 112))
            {
              v39 = std::vector<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows>::__emplace_back_slow_path<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows const&>((a1 + 96), v52);
            }

            else
            {
              operations_research::sat::ZeroHalfCutHelper::CombinationOfRows::CombinationOfRows(*(a1 + 104), v52);
              v39 = v38 + 64;
              *(a1 + 104) = v38 + 64;
            }

            *(a1 + 104) = v39;
          }
        }

        v40 = a7;
        if (a7 < 0x8000000000000003)
        {
          v40 = -INFINITY;
        }

        if (a7 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v40 = INFINITY;
        }

        v41 = v16 - v40;
        if (v41 < 0.01)
        {
          v57 = a2;
          v58 = -1;
          std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(v52, &v57, &v59, 1uLL);
          v56 = v41;
          v55 = v13 ^ a7 & 1;
          v42 = __p[1];
          v43 = v54;
          if (__p[1] != v54 || (a7 & 1) != v13)
          {
            if (__p[1] != v54)
            {
              do
              {
                v44 = *(a1 + 120) + 24 * *v42;
                v57 = (*(a1 + 104) - *(a1 + 96)) >> 6;
                std::vector<int>::push_back[abi:ne200100](v44, &v57);
                ++v42;
              }

              while (v42 != v43);
            }

            v45 = *(a1 + 104);
            if (v45 >= *(a1 + 112))
            {
              v46 = std::vector<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows>::__emplace_back_slow_path<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows const&>((a1 + 96), v52);
            }

            else
            {
              operations_research::sat::ZeroHalfCutHelper::CombinationOfRows::CombinationOfRows(*(a1 + 104), v52);
              v46 = v45 + 64;
              *(a1 + 104) = v45 + 64;
            }

            *(a1 + 104) = v46;
          }
        }
      }
    }

    if (__p[1])
    {
      *&v54 = __p[1];
      operator delete(__p[1]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_23CD376F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 104) = v6;
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD37710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 104) = v6;
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD37728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD3773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD37750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD37764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD37778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD3778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CD377A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::ZeroHalfCutHelper::SymmetricDifference(uint64_t a1, int **a2, std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    v7 = *(a1 + 168);
    v8 = this->__begin_;
    do
    {
      v9 = *v8++;
      *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    }

    while (v8 != end);
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      while (1)
      {
        v22 = *v10;
        v12 = *(a1 + 168);
        v13 = v22 >> 6;
        v14 = 1 << v22;
        v15 = *(v12 + 8 * v13);
        if (((1 << v22) & v15) != 0)
        {
          break;
        }

        *(v12 + 8 * v13) = v15 | v14;
        std::vector<int>::push_back[abi:ne200100](this, &v22);
        if (++v10 == v11)
        {
          goto LABEL_9;
        }
      }

      *(v12 + 8 * v13) = v15 & ~v14;
      ++v10;
    }

    while (v10 != v11);
LABEL_9:
    begin = this->__begin_;
    end = this->__end_;
  }

  if (begin == end)
  {
    v16 = 0;
    v21 = end - begin;
  }

  else
  {
    LODWORD(v16) = 0;
    v17 = *(a1 + 168);
    v18 = begin;
    do
    {
      v19 = *v18;
      v20 = *(v17 + 8 * (v19 >> 6));
      if (((1 << v19) & v20) != 0)
      {
        begin[v16] = v19;
        LODWORD(v16) = v16 + 1;
        *(v17 + 8 * (v19 >> 6)) = v20 & ~(1 << v19);
      }

      ++v18;
    }

    while (v18 != end);
    v16 = v16;
    v21 = end - begin;
    if (v16 > v21)
    {
      std::vector<int>::__append(this, v16 - v21);
      return;
    }
  }

  if (v21 > v16)
  {
    this->__end_ = &begin[v16];
  }
}

double operations_research::sat::ZeroHalfCutHelper::EliminateVarUsingRow(operations_research::sat::ZeroHalfCutHelper *this, int a2, int a3)
{
  v4 = *(this + 12);
  v56 = a3;
  v5 = v4 + (a3 << 6);
  v6 = *(v5 + 56);
  if (v6 > 0.000001)
  {
    operations_research::sat::ZeroHalfCutHelper::EliminateVarUsingRow(v6);
  }

  if (*(v5 + 24) == *(v5 + 32))
  {
    operations_research::sat::ZeroHalfCutHelper::EliminateVarUsingRow(v57);
  }

  v9 = (*(this + 13) - v4) >> 6;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3);
  }

  std::vector<BOOL>::resize(this + 168, v10, 0);
  v11 = (*(this + 15) + 24 * a2);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v14 = 0;
    v15 = v56 << 6;
    while (1)
    {
      v16 = *v12;
      if (*v12 == a3)
      {
        goto LABEL_9;
      }

      *(*(*(this + 15) + 24 * a2) + 4 * v14) = v16;
      v17 = v16 << 6;
      operations_research::sat::ZeroHalfCutHelper::SymmetricDifference(this, (*(this + 12) + v15 + 24), (*(this + 12) + v17 + 24));
      v18 = *(this + 12);
      v19 = v18 + v17;
      *(v19 + 48) = *(v18 + v17 + 48) ^ *(v18 + v15 + 48);
      *(v19 + 56) = *(v18 + v15 + 56) + *(v18 + v17 + 56);
      std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>>(v18 + v17, *(v18 + v17 + 8), *(v18 + (v56 << 6)), *(v18 + (v56 << 6) + 8), (*(v18 + (v56 << 6) + 8) - *(v18 + (v56 << 6))) >> 4);
      v20 = *(v19 + 8);
      v21 = 126 - 2 * __clz((v20 - *v19) >> 4);
      ++v14;
      if (v20 == *v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(*v19, v20, v57, v22, 1);
      v23 = *v19;
      v24 = *(v19 + 8);
      if (*v19 == v24)
      {
        v35 = 0;
        if ((v24 - v23) >> 4)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      v25 = 0;
      v26 = *v19;
      do
      {
        v30 = *v26;
        if (v25 <= 0)
        {
          v27 = *(v26 + 8);
LABEL_17:
          v28 = v25 + 1;
          v29 = v23 + 16 * v25;
          *v29 = v30;
          *(v29 + 8) = v27;
          goto LABEL_18;
        }

        v28 = v25 - 1;
        v31 = v23 + 16 * (v25 - 1);
        v32 = *v31;
        v27 = *(v26 + 8);
        v33 = *(v31 + 8);
        if (v30 != v32 || v27 != v33)
        {
          goto LABEL_17;
        }

LABEL_18:
        v26 += 16;
        v25 = v28;
      }

      while (v26 != v24);
      v35 = v28;
      v36 = (v24 - v23) >> 4;
      if (v28 > v36)
      {
        std::vector<std::pair<int,long long>>::__append(v19, v28 - v36);
      }

      else if (v36 > v28)
      {
LABEL_30:
        *(v19 + 8) = v23 + 16 * v35;
      }

LABEL_9:
      if (++v12 == v13)
      {
        v37 = (*(this + 15) + 24 * a2);
        v38 = v37->__end_ - v37->__begin_;
        if (v14 <= v38)
        {
          if (v14 < v38)
          {
            v37->__end_ = &v37->__begin_[v14];
          }
        }

        else
        {
          std::vector<int>::__append(v37, v14 - v38);
        }

        break;
      }
    }
  }

  v39 = *(this + 12);
  v40 = v39 + (v56 << 6);
  v41 = *(v40 + 24);
  v42 = *(v40 + 32);
  if (v41 != v42)
  {
    v43 = 0;
    do
    {
      v44 = *v41;
      if (*v41 != a2)
      {
        v45 = 24 * v44;
        operations_research::sat::ZeroHalfCutHelper::SymmetricDifference(this, (*(this + 15) + 24 * a2), (*(this + 15) + v45));
        v46 = *(this + 15) + v45;
        v47 = *v46;
        if (*(v46 + 8) - *v46 == 4)
        {
          if (*v47 != a3)
          {
            operations_research::sat::ZeroHalfCutHelper::EliminateVarUsingRow(*v47, v56);
          }

          *(v46 + 8) = v47;
          v39 = *(this + 12);
          *(v39 + (v56 << 6) + 56) = *(*(this + 6) + 8 * v44) + *(v39 + (v56 << 6) + 56);
        }

        else
        {
          v39 = *(this + 12);
          *(*(v39 + (v56 << 6) + 24) + 4 * v43++) = v44;
        }
      }

      ++v41;
    }

    while (v41 != v42);
    v48 = (v39 + (v56 << 6));
    begin = v48[1].__begin_;
    end = v48[1].__end_;
    v49 = v48 + 1;
    v52 = end - begin;
    if (v43 <= v52)
    {
      if (v43 < v52)
      {
        v49->__end_ = &begin[v43];
      }
    }

    else
    {
      std::vector<int>::__append(v49, v43 - v52);
      v39 = *(this + 12);
    }
  }

  v53 = (*(this + 15) + 24 * a2);
  v53[1] = *v53;
  v54 = v39 + (v56 << 6);
  result = *(*(this + 6) + 8 * a2) + *(v54 + 56);
  *(v54 + 56) = result;
  return result;
}

void operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ZeroHalfCutHelper *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(this + 15);
  v6 = -1431655765 * ((*(this + 16) - v5) >> 3);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v11 = (v5 + 24 * v7);
      if (v11[1] - *v11 == 4)
      {
        v12 = *(this + 12) + (**v11 << 6);
        v13 = *(v12 + 24);
        v14 = *(v12 + 32);
        if (v13 == v14)
        {
          v9 = 0;
          v10 = v14 - v13;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v15 = 0;
          v16 = *(v12 + 24);
          do
          {
            v17 = *v16;
            if (v7 != v17)
            {
              v13[v15++] = v17;
            }

            ++v16;
          }

          while (v16 != v14);
          v9 = v15;
          v10 = v14 - v13;
          if (v10 <= v15)
          {
LABEL_13:
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v9, v10, "new_size < mutable_cols.size()");
          }
        }

        *(v12 + 32) = &v13[v9];
        v11[1] = *v11;
        *(v12 + 56) = *(*(this + 6) + 8 * v7) + *(v12 + 56);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  if (*(this + 13) != *(this + 12))
  {
    operator new();
  }

  v23[0] = this;
  std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(0, 0, v23, 0, 0, 0);
  v19 = *(this + 12);
  for (i = *(this + 13); v19 != i; v19 += 64)
  {
    v20 = *(v19 + 24) != *(v19 + 32) || *(v19 + 48) == 0;
    if (!v20 && *(v19 + 56) < *this)
    {
      std::vector<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::push_back[abi:ne200100](a2, v19);
    }
  }

  if (dword_2810BD5F0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_1::operator() const(void)::site, dword_2810BD5F0))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/zero_half_cuts.cc", 273);
    v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v23, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "#candidates: ", 0xDuLL);
    v24 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v21, &v24);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, " / ", 3uLL);
    v24 = (*(this + 13) - *(this + 12)) >> 6;
    absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v22, &v24);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v23);
  }
}

void sub_23CD382AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char a10)
{
  if (v10)
  {
    operator delete(v10);
    std::vector<std::vector<int>>::~vector[abi:ne200100](a9);
    _Unwind_Resume(a1);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](a9);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::__emplace_back_slow_path<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>> const&>(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v4 = a2[1];
    if (v4 != *a2)
    {
      if (((v4 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    result = v3 + 3;
    *(a1 + 8) = v3 + 3;
    *(a1 + 8) = v3 + 3;
  }

  return result;
}

void sub_23CD38400(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows>::__emplace_back_slow_path<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows const&>(void ***a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = v2 << 6;
  operations_research::sat::ZeroHalfCutHelper::CombinationOfRows::CombinationOfRows(v2 << 6, a2);
  v7 = (v2 << 6) + 64;
  v8 = *a1;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v16 + *a1 - v9;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = *v11;
      *(v12 + 16) = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 3);
      *(v12 + 40) = v11[5];
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v12 + 48) = *(v11 + 3);
      v11 += 8;
      v12 += 64;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[3];
      if (v13)
      {
        v8[4] = v13;
        operator delete(v13);
      }

      v14 = *v8;
      if (*v8)
      {
        v8[1] = v14;
        operator delete(v14);
      }

      v8 += 8;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CD385BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ZeroHalfCutHelper::CombinationOfRows::CombinationOfRows(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

void sub_23CD386C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<operations_research::sat::ZeroHalfCutHelper::CombinationOfRows>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 64);
    *(a1 + 16) = i - 64;
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

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>>(uint64_t a1, _BYTE *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 <= (v6 - v5) >> 4)
  {
    v11 = (v5 - a2) >> 4;
    if (v11 < a5)
    {
      v12 = (a3 + v5 - a2);
      v13 = *(a1 + 8);
      if (v12 == a4)
      {
        v14 = *(a1 + 8);
      }

      else
      {
        v33 = (a3 + v5 - a2);
        v14 = *(a1 + 8);
        do
        {
          v34 = *v33++;
          *v14++ = v34;
          ++v13;
        }

        while (v33 != a4);
      }

      *(a1 + 8) = v13;
      if (v11 >= 1)
      {
        v35 = &a2[16 * a5];
        v36 = &v13[-a5];
        for (i = v13; v36 < v5; ++i)
        {
          v38 = *v36++;
          *i = v38;
        }

        *(a1 + 8) = i;
        if (v14 != v35)
        {
          v39 = 0;
          v40 = -1 * a5;
          do
          {
            v41 = &v13[v39];
            *(v41 - 4) = v13[v40 - 1];
            *(v41 - 1) = *(&v13[v40 - 1] + 1);
            --v39;
            --v40;
            ++v35;
          }

          while (v13 != v35);
        }

        if (v5 != a2)
        {
          v42 = a2;
          do
          {
            *v42 = *a3;
            *(v42 + 1) = *(a3++ + 1);
            v42 += 16;
          }

          while (a3 != v12);
        }
      }

      return a2;
    }

    v15 = a5;
    v16 = &a2[16 * a5];
    v17 = (v5 - 16 * a5);
    if (v17 >= v5)
    {
      *(a1 + 8) = v5;
      if (v5 == v16)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v18 = (v5 - 16 * a5);
      v19 = *(a1 + 8);
      do
      {
        v20 = *v18++;
        *v19++ = v20;
      }

      while (v18 < v5);
      *(a1 + 8) = v19;
      if (v5 == v16)
      {
LABEL_40:
        if (v15 * 16)
        {
          v45 = &a3[v15];
          v46 = a2;
          do
          {
            *v46 = *a3;
            *(v46 + 1) = *(a3++ + 1);
            v46 += 16;
          }

          while (a3 != v45);
        }

        return a2;
      }
    }

    v43 = 0;
    do
    {
      v44 = &v43[v5];
      *(v44 - 4) = *&v43[v17 - 16];
      *(v44 - 1) = *&v43[v17 - 8];
      v43 -= 16;
    }

    while (&a2[16 * a5 - v5] != v43);
    goto LABEL_40;
  }

  v7 = *a1;
  v8 = a5 + ((v5 - *a1) >> 4);
  if (v8 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v6 - v7;
  if (v9 >> 3 > v8)
  {
    v8 = v9 >> 3;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v21 = 16 * ((a2 - v7) >> 4);
  v22 = v21;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = 16 * a5;
    v24 = v21;
    v22 = (v21 + 16 * a5);
    do
    {
      v25 = *a3++;
      *v24++ = v25;
      v23 -= 16;
    }

    while (v23);
  }

  v26 = *(a1 + 8) - a2;
  memcpy(v22, a2, v26);
  v29 = &v22[v26];
  *(a1 + 8) = a2;
  v30 = *a1;
  v31 = &a2[-*a1];
  v32 = v21 - v31;
  memcpy((v21 - v31), *a1, v31);
  *a1 = v32;
  *(a1 + 8) = v29;
  *(a1 + 16) = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return v21;
}

int *std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t *a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (*(*(*a3 + 96) + (v6 << 6) + 32) - *(*(*a3 + 96) + (v6 << 6) + 24) < *(*(*a3 + 96) + (v7 << 6) + 32) - *(*(*a3 + 96) + (v7 << 6) + 24))
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = 4 * (a4 >> 1);
      v20 = a4 - (a4 >> 1);
      v21 = &result[v19 / 4];
      v22 = result;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(result, v21, a3, a4 >> 1, a5);
        v29 = &a5[v18];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(&v22[v19], a2, a3, v20, v29);
        v30 = *a3;
        v31 = v29;
        v32 = a5;
        v33 = v22;
        v34 = &a5[a4];
        do
        {
          if (v31 == v34)
          {
            if (v32 == v29)
            {
              return result;
            }

            v48 = &a5[v19 / 4] - v32 - 4;
            if (v48 >= 0x1C)
            {
              if ((v22 - v32) >= 0x20)
              {
                v50 = v33 + 4;
                v51 = (v48 >> 2) + 1;
                v52 = v51 & 0x7FFFFFFFFFFFFFF8;
                v49 = &v32[v52];
                v33 = (v33 + v52 * 4);
                v53 = (v32 + 4);
                v54 = v51 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v55 = *v53;
                  *(v50 - 1) = *(v53 - 1);
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 8;
                }

                while (v54);
                if (v51 == (v51 & 0x7FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v49 = v32;
              }
            }

            else
            {
              v49 = v32;
            }

            do
            {
              v56 = *v49++;
              *v33++ = v56;
            }

            while (v49 != v29);
            return result;
          }

          v35 = v31;
          v36 = *v31;
          v37 = *v32;
          if (*(*(v30 + 96) + (v36 << 6) + 32) - *(*(v30 + 96) + (v36 << 6) + 24) >= *(*(v30 + 96) + (v37 << 6) + 32) - *(*(v30 + 96) + (v37 << 6) + 24))
          {
            v38 = *v32;
          }

          else
          {
            v38 = v36;
          }

          v32 += *(*(v30 + 96) + (v36 << 6) + 32) - *(*(v30 + 96) + (v36 << 6) + 24) >= *(*(v30 + 96) + (v37 << 6) + 32) - *(*(v30 + 96) + (v37 << 6) + 24);
          v39 = *(*(v30 + 96) + (v36 << 6) + 32) - *(*(v30 + 96) + (v36 << 6) + 24) < *(*(v30 + 96) + (v37 << 6) + 32) - *(*(v30 + 96) + (v37 << 6) + 24);
          v31 = &v35[v39];
          *v33++ = v38;
          v22 += 4;
        }

        while (v32 != v29);
        if (v31 != v34)
        {
          v40 = v34 - &v35[v39] - 4;
          if (v40 <= 0x2B)
          {
            goto LABEL_47;
          }

          if ((v22 - &v35[v39]) < 0x20)
          {
            goto LABEL_47;
          }

          v41 = v33 + 4;
          v42 = (v40 >> 2) + 1;
          v43 = 4 * (v42 & 0x7FFFFFFFFFFFFFF8);
          v31 = (v31 + v43);
          v33 = (v33 + v43);
          v44 = &v35[v39 + 4];
          v45 = v42 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v46 = *v44;
            *(v41 - 1) = *(v44 - 1);
            *v41 = v46;
            v41 += 2;
            v44 += 8;
            v45 -= 8;
          }

          while (v45);
          if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_47:
            do
            {
              v47 = *v31++;
              *v33++ = v47;
            }

            while (v31 != v34);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(result, v21, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(&v22[v19], a2, a3, v20, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(v22, &v22[v19], a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 1;
      if (result + 1 != a2)
      {
        v9 = 0;
        v10 = *(*a3 + 96);
        v11 = result;
        do
        {
          v13 = *v11;
          v11 = v8;
          v14 = *v8;
          v15 = *(v10 + (v14 << 6) + 32) - *(v10 + (v14 << 6) + 24);
          if (v15 < *(v10 + (v13 << 6) + 32) - *(v10 + (v13 << 6) + 24))
          {
            v16 = v9;
            do
            {
              *(result + v16 + 4) = v13;
              if (!v16)
              {
                v12 = result;
                goto LABEL_11;
              }

              v13 = *(result + v16 - 4);
              v16 -= 4;
            }

            while (v15 < *(v10 + (v13 << 6) + 32) - *(v10 + (v13 << 6) + 24));
            v12 = (result + v16 + 4);
LABEL_11:
            *v12 = v14;
          }

          v8 = v11 + 1;
          v9 += 4;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = *(*a3 + 96);
      v9 = *(v8 + (v7 << 6) + 32) - *(v8 + (v7 << 6) + 24);
      v10 = *(v8 + (*result << 6) + 32) - *(v8 + (*result << 6) + 24);
      if (v9 >= v10)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (v9 >= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = a4 >> 1;
      v25 = a4 >> 1;
      v26 = &result[v25];
      v27 = result;
      v31 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(v26, a2, a3, a4 - v24, &v31[v25], a4 - v24);
      v32 = *a3;
      v33 = v31;
      v34 = v26;
      do
      {
        if (v34 == a2)
        {
          if (v27 == v26)
          {
            return result;
          }

          v51 = v26 - v27 - 4;
          if (v51 >= 0x1C)
          {
            if ((v33 - v27) >= 0x20)
            {
              v53 = v31 + 4;
              v54 = (v51 >> 2) + 1;
              v55 = v54 & 0x7FFFFFFFFFFFFFF8;
              v31 = (v31 + v55 * 4);
              v52 = &v27[v55];
              v56 = (v27 + 4);
              v57 = v54 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v58 = *v56;
                *(v53 - 1) = *(v56 - 1);
                *v53 = v58;
                v56 += 2;
                v53 += 2;
                v57 -= 8;
              }

              while (v57);
              if (v54 == (v54 & 0x7FFFFFFFFFFFFFF8))
              {
                return result;
              }
            }

            else
            {
              v52 = v27;
            }
          }

          else
          {
            v52 = v27;
          }

          do
          {
            v59 = *v52++;
            *v31++ = v59;
          }

          while (v52 != v26);
          return result;
        }

        v35 = v34;
        v36 = *v34;
        v37 = *v27;
        v38 = *(*(v32 + 96) + (v36 << 6) + 32) - *(*(v32 + 96) + (v36 << 6) + 24) >= *(*(v32 + 96) + (v37 << 6) + 32) - *(*(v32 + 96) + (v37 << 6) + 24);
        if (*(*(v32 + 96) + (v36 << 6) + 32) - *(*(v32 + 96) + (v36 << 6) + 24) >= *(*(v32 + 96) + (v37 << 6) + 32) - *(*(v32 + 96) + (v37 << 6) + 24))
        {
          v39 = *v27;
        }

        else
        {
          v39 = v36;
        }

        v40 = *(*(v32 + 96) + (v36 << 6) + 32) - *(*(v32 + 96) + (v36 << 6) + 24) < *(*(v32 + 96) + (v37 << 6) + 32) - *(*(v32 + 96) + (v37 << 6) + 24);
        v34 = &v35[v40];
        v27 += v38;
        *v31++ = v39;
        v33 += 4;
      }

      while (v27 != v26);
      if (v34 != a2)
      {
        v41 = a2 - v35 - v40 * 4 - 4;
        if (v41 < 0x2C)
        {
          goto LABEL_48;
        }

        if ((v33 - &v35[v40]) < 0x20)
        {
          goto LABEL_48;
        }

        v42 = 0;
        v43 = (v41 >> 2) + 1;
        v44 = v43 & 0x7FFFFFFFFFFFFFF8;
        v45 = &v31[v44];
        v34 = (v34 + v44 * 4);
        v46 = &v35[v40 + 4];
        v47 = v43 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v48 = &v31[v42];
          v49 = *v46;
          *v48 = *(v46 - 1);
          *(v48 + 1) = v49;
          v46 += 8;
          v42 += 8;
          v47 -= 8;
        }

        while (v47);
        v31 = v45;
        if (v43 != (v43 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_48:
          do
          {
            v50 = *v34++;
            *v31++ = v50;
          }

          while (v34 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result++;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *(v11 + 96);
        v15 = a5;
        v16 = a5;
        do
        {
          while (1)
          {
            v18 = *v16++;
            v17 = v18;
            v19 = *result;
            if (*(v14 + (v19 << 6) + 32) - *(v14 + (v19 << 6) + 24) < *(v14 + (v18 << 6) + 32) - *(v14 + (v18 << 6) + 24))
            {
              break;
            }

            *v16 = v19;
            ++result;
            v13 += 4;
            v15 = v16;
            if (result == a2)
            {
              return result;
            }
          }

          v15[1] = v17;
          v20 = a5;
          if (v15 != a5)
          {
            v21 = v13;
            while (1)
            {
              v20 = (a5 + v21);
              v22 = *(a5 + v21 - 4);
              if (*(v14 + (*result << 6) + 32) - *(v14 + (*result << 6) + 24) >= *(v14 + (v22 << 6) + 32) - *(v14 + (v22 << 6) + 24))
              {
                break;
              }

              *v20 = v22;
              v21 -= 4;
              if (!v21)
              {
                v20 = a5;
                break;
              }
            }
          }

          v23 = *result++;
          *v20 = v23;
          v13 += 4;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(char *result, char *a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  v10 = result;
  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = 0;
    v12 = *a2;
    v13 = *(*a4 + 96);
    v14 = -a5;
    while (1)
    {
      v15 = *&v10[v11];
      if (*(v13 + (v12 << 6) + 32) - *(v13 + (v12 << 6) + 24) < *(v13 + (v15 << 6) + 32) - *(v13 + (v15 << 6) + 24))
      {
        break;
      }

      v11 += 4;
      if (__CFADD__(v14++, 1))
      {
        return result;
      }
    }

    v17 = -v14;
    v71 = a3;
    __src = a7;
    v69 = a8;
    v70 = a4;
    if (-v14 >= a6)
    {
      if (v14 == -1)
      {
        *&v10[v11] = v12;
        *a2 = v15;
        return result;
      }

      v26 = v17 / 2;
      v27 = &v10[4 * (v17 / 2)];
      v19 = a2;
      if (a2 != a3)
      {
        v28 = (a3 - a2) >> 2;
        v19 = a2;
        do
        {
          v29 = v28 >> 1;
          v30 = &v19[v28 >> 1];
          v32 = *v30;
          v31 = v30 + 1;
          v28 += ~(v28 >> 1);
          if (*(v13 + (v32 << 6) + 32) - *(v13 + (v32 << 6) + 24) < *(v13 + (*&v27[v11] << 6) + 32) - *(v13 + (*&v27[v11] << 6) + 24))
          {
            v19 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
      }

      v18 = (v19 - a2) >> 2;
      v20 = &v27[v11];
    }

    else
    {
      v18 = a6 / 2;
      v19 = &a2[4 * (a6 / 2)];
      v20 = a2;
      if (a2 - v10 != v11)
      {
        v21 = (a2 - v10 - v11) >> 2;
        v20 = &v10[v11];
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[4 * (v21 >> 1)];
          v25 = *v23;
          v24 = v23 + 4;
          v21 += ~(v21 >> 1);
          if (*(v13 + (*v19 << 6) + 32) - *(v13 + (*v19 << 6) + 24) < *(v13 + (v25 << 6) + 32) - *(v13 + (v25 << 6) + 24))
          {
            v21 = v22;
          }

          else
          {
            v20 = v24;
          }
        }

        while (v21);
      }

      v26 = (v20 - v10 - v11) >> 2;
    }

    a5 = -(v26 + v14);
    v33 = a6 - v18;
    v34 = a6;
    v35 = v26;
    v36 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(v20, a2, v19);
    v37 = v35;
    v38 = v36;
    if (v37 + v18 >= v34 - (v37 + v18) - v14)
    {
      v39 = v37;
      a7 = __src;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(v36, v19, v71, v70, a5, v33, __src, v69);
      a4 = v70;
      a8 = v69;
      a5 = v39;
      a3 = v38;
      v10 += v11;
      a6 = v18;
      a2 = v20;
      if (!v18)
      {
        return result;
      }
    }

    else
    {
      a7 = __src;
      result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::ZeroHalfCutHelper::InterestingCandidates(operations_research::sat::ModelRandomGenerator *)::$_0 &,std::__wrap_iter<int *>>(&v10[v11], v20, v36, v70, v37, v18, __src, v69);
      a8 = v69;
      a4 = v70;
      v10 = v38;
      a3 = v71;
      a6 = v33;
      a2 = v19;
      if (!v33)
      {
        return result;
      }
    }
  }

  if (a5 > a6)
  {
    if (a2 == a3)
    {
      return result;
    }

    v40 = a3 - a2 - 4;
    if (v40 < 0x1C)
    {
      v41 = a7;
      v42 = a2;
    }

    else
    {
      v41 = a7;
      v42 = a2;
      if ((a7 - a2) > 0x1F)
      {
        v43 = (v40 >> 2) + 1;
        v44 = 4 * (v43 & 0x7FFFFFFFFFFFFFF8);
        v41 = &a7[v44];
        v42 = &a2[v44];
        v45 = (a2 + 16);
        v46 = a7 + 16;
        v47 = v43 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v48 = *v45;
          *(v46 - 1) = *(v45 - 1);
          *v46 = v48;
          v45 += 2;
          v46 += 2;
          v47 -= 8;
        }

        while (v47);
        if (v43 == (v43 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_60:
          if (v41 != a7)
          {
            v65 = *a4;
            while (a2 != v10)
            {
              v66 = *(a2 - 1);
              if (*(*(v65 + 96) + (*(v41 - 1) << 6) + 32) - *(*(v65 + 96) + (*(v41 - 1) << 6) + 24) < *(*(v65 + 96) + (v66 << 6) + 32) - *(*(v65 + 96) + (v66 << 6) + 24))
              {
                a2 -= 4;
              }

              else
              {
                LODWORD(v66) = *--v41;
              }

              *--a3 = v66;
              if (v41 == a7)
              {
                return result;
              }
            }

            if (v41 != a7)
            {
              v67 = 0x3FFFFFFFFFFFFFFFLL;
              do
              {
                v68 = *--v41;
                a3[v67--] = v68;
              }

              while (v41 != a7);
            }
          }

          return result;
        }
      }
    }

    do
    {
      v64 = *v42++;
      *v41++ = v64;
    }

    while (v42 != a3);
    goto LABEL_60;
  }

  if (a2 != v10)
  {
    v49 = a2 - v10 - 4;
    v50 = a7;
    v51 = v10;
    if (v49 < 0x1C)
    {
      goto LABEL_73;
    }

    v50 = a7;
    v51 = v10;
    if ((a7 - v10) <= 0x1F)
    {
      goto LABEL_73;
    }

    v52 = (v49 >> 2) + 1;
    v53 = 4 * (v52 & 0x7FFFFFFFFFFFFFF8);
    v50 = &a7[v53];
    v51 = &v10[v53];
    v54 = (v10 + 16);
    v55 = a7 + 16;
    v56 = v52 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v57 = *v54;
      *(v55 - 1) = *(v54 - 1);
      *v55 = v57;
      v54 += 2;
      v55 += 2;
      v56 -= 8;
    }

    while (v56);
    if (v52 != (v52 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_73:
      do
      {
        v58 = *v51;
        v51 += 4;
        *v50 = v58;
        v50 += 4;
      }

      while (v51 != a2);
    }

    if (v50 != a7)
    {
      v59 = *a4;
      while (a2 != a3)
      {
        v60 = *a2;
        v61 = *a7;
        v62 = *(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) >= *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24);
        v63 = *(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) < *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24);
        if (*(*(v59 + 96) + (v60 << 6) + 32) - *(*(v59 + 96) + (v60 << 6) + 24) >= *(*(v59 + 96) + (v61 << 6) + 32) - *(*(v59 + 96) + (v61 << 6) + 24))
        {
          LODWORD(v60) = *a7;
        }

        a2 += 4 * v63;
        a7 += 4 * v62;
        *v10 = v60;
        v10 += 4;
        if (a7 == v50)
        {
          return result;
        }
      }

      return memmove(v10, a7, v50 - a7);
    }
  }

  return result;
}

void *std::vector<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::__emplace_back_slow_path<std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>> const&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CD39774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void operations_research::SigintHandler::Register(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      v6 = v5;
      (*(*v2 + 24))(v2, v5);
    }

    else
    {
      v6 = (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v6 = 0;
  }

  if (!*__tls_guard())
  {
    operations_research::SigintHandler::Register();
  }

  operations_research::SigintHandler::handler_();
  v3 = v6;
  v7 = a1;
  if (v6)
  {
    if (v6 == v5)
    {
      v9 = &v8;
      (*(*v6 + 24))();
LABEL_13:
      operator new();
    }

    v3 = (*(*v6 + 16))();
  }

  v9 = v3;
  goto LABEL_13;
}

void sub_23CD39B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  operator delete(v15);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(&a15);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(&a10);
  _Unwind_Resume(a1);
}

void sub_23CD39B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_23CD39B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va1);
  operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::SigintHandler::ControlCHandler(operations_research::SigintHandler *this)
{
  if (*__tls_guard())
  {
    v1 = *(operations_research::SigintHandler::handler_() + 24);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  operations_research::SigintHandler::ControlCHandler();
  v1 = *(operations_research::SigintHandler::handler_() + 24);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(*v1 + 48);

  return v2();
}

void *std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44BF0;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44BF0;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  *a2 = &unk_284F44BF0;
  a2[1] = v3;
  v4 = *(result + 40);
  if (v4)
  {
    if (v4 == result + 16)
    {
      a2[5] = a2 + 2;
      v5 = *(**(result + 40) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 40));
      a2[5] = result;
    }
  }

  else
  {
    a2[5] = 0;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1 + 1;
  *v1 = v2;
  if (v2 >= 3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/sigint.cc", 27);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "^C pressed ", 0xBuLL);
    v7 = *v1;
    v3 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v6, &v7);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, " times. Forcing termination.");
    std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(v6);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/sigint.cc", 31);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "^C pressed ", 0xBuLL);
  v7 = *v1;
  v5 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v6, &v7);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, " times. ", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v5, "Interrupting the solver. Press 3 times to force termination.", 0x3CuLL);
  std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::operator()(v6, v1, a1);
}

void sub_23CD3A178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD3A18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0,std::allocator<operations_research::SigintHandler::Register(std::function<void ()(void)> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research13SigintHandler8RegisterERKNSt3__18functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD3A49C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL operations_research::IntervalsAreSortedAndNonAdjacent(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return !a2 || *(a1 + 16 * a2 - 16) <= *(a1 + 16 * a2 - 8);
  }

  else
  {
    v2 = 2;
    v3 = 1;
    while (1)
    {
      v4 = (a1 + 16 * (v2 - 2));
      v6 = *v4;
      v5 = v4[1];
      if (v6 > v5)
      {
        break;
      }

      v7 = *(a1 + 16 * v3);
      if (v5 >= v7 || v5 + 1 >= v7)
      {
        break;
      }

      v3 = v2++;
      if (a2 <= v3)
      {
        return *(a1 + 16 * a2 - 16) <= *(a1 + 16 * a2 - 8);
      }
    }

    return 0;
  }
}

void *operations_research::operator<<(void *a1, unint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  v3 = *a2;
  v6 = a2[1];
  v4 = (a2 + 1);
  v5 = v6;
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v8 = &v7[2 * (v3 >> 1)];
  do
  {
    v9 = v7[1];
    if (*v7 == v9)
    {
      v21 = *v7;
      v22 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      absl::lts_20240722::str_format_internal::FormatPack("[%d]", 4, &v21, 1uLL, __p);
    }

    else
    {
      v21 = *v7;
      v22 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      v23 = v9;
      v24 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
      absl::lts_20240722::str_format_internal::FormatPack("[%d,%d]", 7, &v21, 2uLL, __p);
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(&v18, v10, v11);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 2;
  }

  while (v7 != v8);
  v12 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v18.__r_.__value_.__l.__size_)
  {
    goto LABEL_24;
  }

LABEL_23:
  MEMORY[0x23EED9020](&v18, "[]");
  LOBYTE(v12) = *(&v18.__r_.__value_.__s + 23);
LABEL_24:
  if ((v12 & 0x80u) == 0)
  {
    v13 = &v18;
  }

  else
  {
    v13 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    size = v12;
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = result;
    operator delete(v18.__r_.__value_.__l.__data_);
    result = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CD3A6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *operations_research::Domain::Domain(void *this, uint64_t a2)
{
  this[1] = a2;
  this[2] = a2;
  *this = 2;
  return this;
}

void *operations_research::Domain::Domain(void *this, uint64_t a2, uint64_t a3)
{
  this[1] = a2;
  this[2] = a3;
  *this = 2 * (a2 <= a3);
  return this;
}

double operations_research::Domain::AllValues@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *&result = 2;
  *a1 = xmmword_23CE4ED90;
  return result;
}

uint64_t operations_research::Domain::FromValues@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = std::__sort<std::__less<long long,long long> &,long long *>();
  *a2 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v7 != v8)
  {
    v9 = 0;
    v10 = a2 + 1;
    for (i = v7 + 8; ; i += 8)
    {
      v16 = *(i - 8);
      if (v9 < 2)
      {
        break;
      }

      v17 = v9 >> 1;
      if (v9)
      {
        v12 = *v10;
        if (v16 > *(*v10 + 16 * v17 - 8) + 1)
        {
          v18 = 0;
          *&v20 = *(i - 8);
          *(&v20 + 1) = v20;
          if (v17 == a2[2])
          {
LABEL_24:
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a2);
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (v16 > (a2[v9] + 1))
        {
          *&v20 = *(i - 8);
          *(&v20 + 1) = v20;
          v18 = 1;
          goto LABEL_18;
        }

        v12 = a2 + 1;
      }

      v13 = v9 & 1;
      v12[2 * v17 - 1] = v16;
LABEL_5:
      v14 = *v10;
      if (!v13)
      {
        v14 = a2 + 1;
      }

      if (v14[2 * (v9 >> 1) - 1] == 0x7FFFFFFFFFFFFFFFLL || i == v8)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = v9 == 0;
    *&v20 = *(i - 8);
    *(&v20 + 1) = v20;
    if (v9)
    {
      if (!a2[2])
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_18:
      if (v17 == 1)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v19 = a2[1];
    if (v18)
    {
      v19 = a2 + 1;
    }

    *&v19[2 * v17] = v20;
    v9 = *a2 + 2;
    *a2 = v9;
    v13 = v9 & 1;
    goto LABEL_5;
  }

  return result;
}

void sub_23CD3A8F4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::Domain::FromFlatSpanOfIntervals(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  *a3 = 0;
  v5 = (a3 + 1);
  if (a2 >= 4)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (a2)
  {
    v6 = 0;
    v7 = 2;
    do
    {
      v29 = *(a1 + 8 * v6);
      v8 = *a3;
      if (*a3)
      {
        v9 = a3[2];
      }

      else
      {
        v9 = 1;
      }

      v10 = v8 >> 1;
      if (v8 >> 1 == v9)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3);
      }

      if (v8)
      {
        v11 = a3[1];
      }

      else
      {
        v11 = v5;
      }

      a4 = v29;
      *&v11[2 * v10] = v29;
      *a3 += 2;
      v6 = v7;
      v7 += 2;
    }

    while (a2 > v6);
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *v5;
  }

  else
  {
    v13 = v5;
  }

  v14 = 126 - 2 * __clz((8 * v12) >> 4);
  if ((v12 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v13, (v13 + ((8 * v12) & 0xFFFFFFFFFFFFFFF0)), &v29, v15, 1, a4);
  v16 = *a3;
  v17 = *a3 >> 1;
  if (v17)
  {
    if (v17 < 2)
    {
      v28 = 1;
    }

    else
    {
      v18 = 0;
      v19 = (v16 >> 1) - 1;
      v20 = 1;
      do
      {
        while (1)
        {
          v22 = *v5;
          if ((v16 & 1) == 0)
          {
            v22 = v5;
          }

          v23 = &v22[v18];
          v24 = &v22[v20 - 1];
          v27 = *(v24 + 1);
          v25 = v24 + 8;
          v26 = v27;
          if (v27 == 0x7FFFFFFFFFFFFFFFLL || *(v23 + 2) <= v26 + 1)
          {
            break;
          }

          v22[v20++] = *(v23 + 1);
          v16 = *a3;
          ++v18;
          if (!--v19)
          {
            goto LABEL_32;
          }
        }

        v21 = *(v23 + 3);
        if (v21 <= v26)
        {
          v21 = v26;
        }

        *v25 = v21;
        ++v18;
        --v19;
      }

      while (v19);
LABEL_32:
      v28 = v20;
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::ClosedInterval>>>(a3, v28);
    if (*a3)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::ShrinkToFit(a3);
    }
  }
}

void sub_23CD3AB14(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::Domain::IsFixed(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  return *v1 == v1[2 * (v2 >> 1) - 1];
}

uint64_t operations_research::Domain::Min(operations_research::Domain *this)
{
  v2 = *this;
  v1 = this + 8;
  if (v2)
  {
    v1 = *v1;
  }

  return *v1;
}

uint64_t operations_research::Domain::Max(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  return v1[2 * (v2 >> 1) - 1];
}

unint64_t operations_research::Domain::Size(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  v4 = v2 >> 1;
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return v2 >> 1;
  }

  v5 = 0;
  v6 = &v1[2 * v4];
  do
  {
    v7 = *v1;
    v8 = v1[1];
    v1 += 2;
    v9 = __OFSUB__(v8, v7);
    v10 = v8 - v7;
    if (v9)
    {
      v10 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v9 = __OFADD__(v5, v10);
    v5 += v10;
    if (v9)
    {
      v5 = v11;
    }
  }

  while (v1 != v6);
  v9 = __OFADD__(v5, v4);
  v12 = v5 + v4;
  if (v9)
  {
    return (v5 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

uint64_t operations_research::Domain::SmallestValue(operations_research::Domain *this)
{
  v3 = *this;
  v1 = (this + 8);
  v2 = v3;
  if (v3)
  {
    v1 = *v1;
  }

  v4 = *v1;
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v5 = &v1[2 * (v2 >> 1)];
    while (1)
    {
      v14 = *v1;
      v13 = v1[1];
      if (*v1 <= 0 && (v13 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v4 >= 0)
      {
        v6 = v4;
      }

      else
      {
        v6 = -v4;
      }

      if (v6 <= -v14)
      {
        v7 = v4;
      }

      else
      {
        v7 = *v1;
      }

      if (v14 >= 0)
      {
        v7 = v4;
      }

      if (v4 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = -v4;
      }

      if (v14 <= v8)
      {
        v4 = *v1;
      }

      if (v14 < 1)
      {
        v4 = v7;
      }

      if (v4 >= 0)
      {
        v9 = v4;
      }

      else
      {
        v9 = -v4;
      }

      if (v13 <= v9)
      {
        v10 = v1[1];
      }

      else
      {
        v10 = v4;
      }

      if (v4 >= 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = -v4;
      }

      if (v11 <= -v13)
      {
        v12 = v4;
      }

      else
      {
        v12 = v1[1];
      }

      if (v13 < 0)
      {
        v4 = v12;
      }

      if (v13 > 0)
      {
        v4 = v10;
      }

      v1 += 2;
      if (v1 == v5)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t *operations_research::Domain::PartAroundZero@<X0>(operations_research::Domain *this@<X0>, void *a2@<X8>)
{
  v4 = *this;
  result = (this + 8);
  v3 = v4;
  if (v4)
  {
    result = *result;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v5 = &result[2 * (v3 >> 1)];
    while (1)
    {
      if (*result <= 0)
      {
        v6 = result[1];
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      result += 2;
      if (result == v5)
      {
        goto LABEL_9;
      }
    }

    a2[1] = *result;
    a2[2] = v6;
    *a2 = 2;
  }

  else
  {
LABEL_9:
    *a2 = 0;
  }

  return result;
}

void *operations_research::Domain::ClosestValue(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  v5 = *v2;
  if (*v2 >= a2)
  {
    return v5;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v2[2 * (v3 >> 1)];
  while (1)
  {
    v9 = *v2;
    v5 = v2[1];
    if (*v2 <= a2 && v5 >= a2)
    {
      return a2;
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = a2 - v5;
    if (__OFSUB__(a2, v5))
    {
      v7 = (a2 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v2 += 2;
    v6 = v5;
    if (v2 == v8)
    {
      return v5;
    }
  }

  v12 = (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (!__OFSUB__(v9, a2))
  {
    v12 = v9 - a2;
  }

  if (v12 <= v7)
  {
    return *v2;
  }

  else
  {
    return v6;
  }
}

uint64_t operations_research::Domain::ValueAtOrBefore(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = (8 * v3) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  if (v3)
  {
    v2 = *v2;
  }

  if (v5 == v2)
  {
    return a2;
  }

  v11 = *(v5 - 1);
  if (v11 >= a2)
  {
    return a2;
  }

  else
  {
    return v11;
  }
}

uint64_t operations_research::Domain::ValueAtOrAfter(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  v6 = v3 >> 1;
  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v7 = (16 * v6) >> 4;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 > a2)
      {
        v7 = v8;
      }

      else
      {
        v5 = v10;
      }
    }

    while (v7);
  }

  if (v3)
  {
    v2 = *v2;
  }

  if (v5 == &v2[2 * v6])
  {
    return a2;
  }

  if (v5 != v2)
  {
    if (*(v5 - 1) < a2)
    {
      return *v5;
    }

    return a2;
  }

  return *v5;
}

BOOL operations_research::Domain::Contains(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  v5 = v2;
  if (v4)
  {
    v5 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = (8 * v3) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 > a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  if (v3)
  {
    v2 = *v2;
  }

  return v5 != v2 && *(v5 - 1) >= a2;
}

uint64_t operations_research::Domain::Distance(operations_research::Domain *this, uint64_t a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = &v2[2 * (v3 >> 1)];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v8 = *v2;
    v7 = v2[1];
    v9 = *v2 <= a2 && a2 <= v7;
    if (v9)
    {
      return 0;
    }

    v9 = v8 <= a2;
    v10 = v8 - a2;
    if (!v9)
    {
      break;
    }

    v6 = a2 - v7;
    v2 += 2;
    if (v2 == v5)
    {
      return a2 - v7;
    }
  }

  if (v10 >= v6)
  {
    return v6;
  }

  else
  {
    return v10;
  }
}

uint64_t operations_research::Domain::IsIncludedIn(operations_research::Domain *this, const operations_research::Domain *a2)
{
  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4)
  {
    v2 = *v2;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFELL) == 0)
  {
    return 1;
  }

  v5 = 0;
  v6 = &v2[2 * (v3 >> 1)];
  v7 = *a2;
  v8 = *a2 >> 1;
  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  while (1)
  {
    for (i = v5; v8 > v5; i = ++v5)
    {
      if (v2[1] <= *&v12[16 * i + 8])
      {
        break;
      }
    }

    if (v8 == i || *v2 < *&v12[16 * i])
    {
      break;
    }

    v2 += 2;
    if (v2 == v6)
    {
      return 1;
    }
  }

  return 0;
}

double operations_research::Domain::Complement@<D0>(operations_research::Domain *this@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  v3 = a2 + 1;
  v4 = *this;
  if (*this >= 2uLL)
  {
    if (v4 < 0x1FFFFFFFFFFFFFFELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 0;
  v5 = (this + 8);
  if (v4)
  {
    v5 = *v5;
  }

  if ((v4 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v6 = &v5[2 * (v4 >> 1)];
    v7 = 0x8000000000000000;
    while (1)
    {
      if (*v5 != 0x8000000000000000)
      {
        *&v18 = v7;
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[2];
        }

        else
        {
          v9 = 1;
        }

        v10 = v8 >> 1;
        if (v8 >> 1 == v9)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a2);
        }

        if (v8)
        {
          v11 = a2[1];
        }

        else
        {
          v11 = v3;
        }

        *(&v18 + 1) = *v5 - 1;
        result = *&v18;
        *&v11[2 * v10] = v18;
        *a2 += 2;
      }

      v13 = v5[1];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v7 = v13 + 1;
      v5 += 2;
      if (v5 == v6)
      {
        v14 = *a2;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v7 = 0x8000000000000000;
LABEL_21:
    *&v19 = v7;
    *(&v19 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    if (v14)
    {
      v15 = a2[2];
    }

    else
    {
      v15 = 1;
    }

    v16 = v14 >> 1;
    if (v14 >> 1 == v15)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a2);
    }

    if (v14)
    {
      v17 = a2[1];
    }

    else
    {
      v17 = v3;
    }

    result = *&v19;
    *&v17[2 * v16] = v19;
    *a2 += 2;
  }

  return result;
}

void sub_23CD3B1B0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *operations_research::Domain::Negation@<X0>(char *this@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  v2 = *this;
  if (*this < 2uLL)
  {
    return this;
  }

  if ((v2 & 1) == 0)
  {
    *a2 = v2;
    v3 = a2 + 1;
    *(a2 + 1) = *(this + 8);
    v4 = a2[1];
LABEL_4:
    v5 = 0;
    v6 = v3;
    goto LABEL_5;
  }

  v21 = a2;
  this = absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a2, this);
  v2 = *v21;
  if (*v21 < 2)
  {
    return this;
  }

  a2 = v21;
  v3 = v21 + 1;
  v4 = v21[1];
  if ((v2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = 1;
  v6 = v21[1];
LABEL_5:
  v7 = v2 >> 1;
  v8 = (v6 + 16 * (v2 >> 1) - 16);
  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0 && v8 > v6)
  {
    v10 = v6 + 16;
    do
    {
      v29 = *(v10 - 16);
      *(v10 - 16) = *v8;
      *v8-- = v29;
      v14 = v10 >= v8;
      v10 += 16;
    }

    while (!v14);
    v2 = *a2;
    v4 = a2[1];
    v5 = *a2 & 1;
    v7 = *a2 >> 1;
  }

  if (v5)
  {
    v11 = v4;
  }

  else
  {
    v11 = v3;
  }

  if (v11[2 * v7 - 1] == 0x8000000000000000)
  {
    v5 = v2 & 1;
    v2 -= 2;
    *a2 = v2;
    v7 = v2 >> 1;
  }

  if (v5)
  {
    v12 = v4;
  }

  else
  {
    v12 = v3;
  }

  if ((v2 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v13 < 0xB || (v12 + 8 + 16 * (v7 - 1) >= v12 + 8 ? (v14 = v12 + 16 * (v7 - 1) >= v12) : (v14 = 0), !v14))
    {
      v15 = v12;
LABEL_29:
      v16 = (v12 + 16 * v7);
      v17 = vnegq_f64(0);
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      v19 = vnegq_f64(v18);
      do
      {
        v20 = vextq_s8(*v15, *v15, 8uLL);
        *v15++ = vbslq_s8(vceqq_s64(v20, v17), v19, vnegq_s64(v20));
      }

      while (v15 != v16);
      return this;
    }

    v22 = v13 + 1;
    v23 = (v13 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v15 = (v12 + 16 * v23);
    v24 = vnegq_f64(0);
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v26 = vnegq_f64(v25);
    v27 = v23;
    v28 = v12;
    do
    {
      v30 = vld2q_f64(v28);
      v31.val[0] = vbslq_s8(vceqq_s64(v30.val[1], v24), v26, vnegq_s64(v30.val[1]));
      v31.val[1] = vbslq_s8(vceqq_s64(v30.val[0], v24), v26, vnegq_s64(v30.val[0]));
      vst2q_f64(v28, v31);
      v28 += 4;
      v27 -= 2;
    }

    while (v27);
    if (v22 != v23)
    {
      goto LABEL_29;
    }
  }

  return this;
}

void sub_23CD3B3B4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *operations_research::Domain::IntersectionWith@<X0>(uint64_t *this@<X0>, const operations_research::Domain *a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  v3 = *this;
  if (*this >= 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = this + 1;
    v9 = (a2 + 8);
    do
    {
      v14 = *a2;
      if (v6 >= *a2 >> 1)
      {
        return this;
      }

      v15 = this + 1;
      if (v3)
      {
        v15 = *v8;
      }

      v16 = 2 * v5;
      v17 = v15[2 * v5];
      if (v14)
      {
        v18 = *v9;
        if (v17 <= *&(*v9)[16 * v6])
        {
LABEL_19:
          v19 = this + 1;
          if (v3)
          {
            v19 = *v8;
          }

          v20 = v19[2 * v5 + 1];
          v21 = *v9;
          if (v14)
          {
            v22 = *v9;
          }

          else
          {
            v22 = a2 + 8;
          }

          if (v20 < *&v22[16 * v6])
          {
            ++v7;
            goto LABEL_13;
          }

          v29 = this + 1;
          if (v3)
          {
            v29 = *v8;
          }

          v30 = v29[2 * v5 + 1];
          if (v14)
          {
            v31 = *&v21[16 * v6 + 8];
            if (v30 <= v31)
            {
LABEL_51:
              v35 = this + 1;
              if (v3)
              {
                v35 = *v8;
              }

              *&v39 = *&v21[16 * v6];
              *(&v39 + 1) = v35[2 * v5 + 1];
              v32 = *a3;
              if (*a3)
              {
                v36 = a3[2];
              }

              else
              {
                v36 = 1;
              }

              v34 = v32 >> 1;
              if (v32 >> 1 == v36)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3);
              }

LABEL_57:
              if (v32)
              {
                v37 = a3[1];
              }

              else
              {
                v37 = a3 + 1;
              }

              *&v37[2 * v34] = v39;
              *a3 += 2;
              ++v7;
              goto LABEL_13;
            }
          }

          else
          {
            v31 = v9[2 * v6 + 1];
            v21 = a2 + 8;
            if (v30 <= v31)
            {
              goto LABEL_51;
            }
          }

          *&v38 = *&v21[16 * v6];
          *(&v38 + 1) = v31;
          v10 = *a3;
          if (*a3)
          {
            v11 = a3[2];
          }

          else
          {
            v11 = 1;
          }

          v12 = v10 >> 1;
          if (v10 >> 1 == v11)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3);
          }

          goto LABEL_8;
        }
      }

      else
      {
        v18 = a2 + 8;
        if (v17 <= v9[2 * v6])
        {
          goto LABEL_19;
        }
      }

      v23 = this + 1;
      if (v3)
      {
        v23 = *v8;
      }

      if (*&v18[16 * v6 + 8] < v23[2 * v5])
      {
        goto LABEL_12;
      }

      v24 = *v9;
      if ((v14 & 1) == 0)
      {
        v24 = a2 + 8;
      }

      v25 = *&v24[16 * v6 + 8];
      if (v3)
      {
        v27 = *v8;
        v26 = *(*v8 + 16 * v5 + 8);
        if (v25 > v26)
        {
LABEL_45:
          *&v39 = v27[v16];
          *(&v39 + 1) = v26;
          v32 = *a3;
          if (*a3)
          {
            v33 = a3[2];
          }

          else
          {
            v33 = 1;
          }

          v34 = v32 >> 1;
          if (v32 >> 1 == v33)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3);
          }

          goto LABEL_57;
        }
      }

      else
      {
        v26 = v8[2 * v5 + 1];
        v27 = this + 1;
        if (v25 > v26)
        {
          goto LABEL_45;
        }
      }

      *&v38 = v27[v16];
      *(&v38 + 1) = *&v24[16 * v6 + 8];
      v10 = *a3;
      if (*a3)
      {
        v28 = a3[2];
      }

      else
      {
        v28 = 1;
      }

      v12 = v10 >> 1;
      if (v10 >> 1 == v28)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::EmplaceBackSlow<operations_research::ClosedInterval>(a3);
      }

LABEL_8:
      if (v10)
      {
        v13 = a3[1];
      }

      else
      {
        v13 = a3 + 1;
      }

      *&v13[2 * v12] = v38;
      *a3 += 2;
LABEL_12:
      ++v6;
LABEL_13:
      v5 = v7;
      v3 = *this;
    }

    while (v7 < *this >> 1);
  }

  return this;
}