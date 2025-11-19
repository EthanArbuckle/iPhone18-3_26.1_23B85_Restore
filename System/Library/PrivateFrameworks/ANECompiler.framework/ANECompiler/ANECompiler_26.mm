void sub_23CA554E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = *v39;
  if (*v39)
  {
    *(v39 + 8) = v40;
    v41 = a1;
    operator delete(v40);
    a1 = v41;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::IntervalsRepository>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::LoadBooleanSymmetries(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v46[6] = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 18))
  {
    v4 = *(this + 18);
  }

  else
  {
    v4 = &operations_research::sat::_SymmetryProto_default_instance_;
  }

  if (*(v4 + 6))
  {
    v5 = *(this + 8);
    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = *(this + 14);
    if (v6 >= 1)
    {
      v7 = *(this + 6);
      if (v7)
      {
        v15 = 0;
        v16 = v7 + 7;
        do
        {
          v17 = *(v16 + 8 * v15);
          if (*(v17 + 60) == 12)
          {
            v18 = *(v17 + 48);
            if (*(v18 + 64) >= 3)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *(v18 + 24);
                v21 = 4 * v19;
                do
                {
                  v23 = *v20++;
                  v22 = v23;
                  if (~v23 > v23)
                  {
                    v22 = ~v22;
                  }

                  *((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v22);
                  v21 -= 4;
                }

                while (v21);
              }
            }
          }

          ++v15;
        }

        while (v15 != v6);
      }

      else if (*(v7 + 60) == 12)
      {
        v8 = 0;
LABEL_12:
        v9 = *(v7 + 48);
        if (*(v9 + 64) >= 3)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = *(v9 + 24);
            v12 = 4 * v10;
            do
            {
              v14 = *v11++;
              v13 = v14;
              if (~v14 > v14)
              {
                v13 = ~v13;
              }

              *((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v13);
              v12 -= 4;
            }

            while (v12);
          }
        }

        while (++v8 != v6)
        {
          if (*(v7 + 60) == 12)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SymmetryPropagator>(a2);
    operations_research::sat::SatSolver::AddPropagator(v24, v25);
    v26 = v4[2];
    if (v26)
    {
      v27 = (v26 + 7);
    }

    else
    {
      v27 = v4 + 2;
    }

    v28 = *(v4 + 6);
    if (v28)
    {
      v38 = 2 * *(v24 + 4);
      v39 = &v27[v28];
      do
      {
        v40 = v27;
        v41 = *v27;
        v29 = *(*v27 + 4);
        if (!v29)
        {
LABEL_41:
          operator new();
        }

        v30 = v41[3];
        v31 = 4 * v29;
        while (((*((*v30 >> 3) & 0x1FFFFFFFFFFFFFF8) >> *v30) & 1) != 0)
        {
          v30 = (v30 + 4);
          v31 -= 4;
          if (!v31)
          {
            goto LABEL_41;
          }
        }

        v27 = v40 + 1;
      }

      while (v40 + 1 != v39);
    }

    v32 = v25;
    if (*operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2) == 1)
    {
      v33 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
      v46[0] = "Added ";
      v46[1] = 6;
      v35 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((*(v32 + 6) - *(v32 + 5)) >> 3), v45, v34);
      v44[0] = v45;
      v44[1] = v35 - v45;
      v43[0] = " symmetry to the SAT solver.";
      v43[1] = 28;
      absl::lts_20240722::StrCat(v46, v44, v43, &__p);
      operations_research::SolverLogger::LogInfo(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 371, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_23CA56080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (!v27)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v27)
  {
    goto LABEL_3;
  }

  operator delete(v27);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SymmetryPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SymmetryPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::ExtractEncoding(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v193 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v155 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  v162 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v164 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if (*(v164 + 528))
  {
    goto LABEL_217;
  }

  v7 = *(this + 8);
  v168 = 0;
  v169 = 0;
  v167 = 0;
  *&v185 = &v167;
  BYTE8(v185) = 0;
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(a2);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  v165 = v6;
  v11 = *(this + 6);
  if (v11)
  {
    v12 = (v11 + 7);
  }

  else
  {
    v12 = this + 48;
  }

  v13 = *(this + 14);
  v161 = a2;
  if (v13)
  {
    v158 = v9;
    v14 = 0;
    v15 = (this + 24);
    v16 = 8 * v13;
    while (1)
    {
      v18 = *v12;
      if (*(*v12 + 60) != 12)
      {
        goto LABEL_15;
      }

      if (*(v18 + 16) != 1)
      {
        goto LABEL_15;
      }

      v19 = *(v18 + 48);
      if (*(v19 + 16) != 1)
      {
        goto LABEL_15;
      }

      v20 = **(v18 + 24);
      v21 = ~v20 <= v20 ? **(v18 + 24) : ~v20;
      HIDWORD(v23) = *(v5[6] + 4 * v21);
      LODWORD(v23) = **(v18 + 24);
      v22 = v23 >> 31;
      if ((*(*(*(v164 + 216) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v23 >> 31) & 0x3F ^ 1)))
      {
        goto LABEL_15;
      }

      v24 = **(v19 + 24);
      if (~v24 <= v24)
      {
        v25 = **(v19 + 24);
      }

      else
      {
        v25 = ~v24;
      }

      if (*v15)
      {
        v26 = *v15 + 8 * v25 + 7;
      }

      else
      {
        v26 = v15;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(*(*v26 + 24), *(*v26 + 16), v180, v10);
      v28 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v18 + 60) == 12)
      {
        v28 = *(v18 + 48);
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v28[9], *(v28 + 16), &v185, v27);
      v29 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v18 + 60) == 12)
      {
        v29 = *(v18 + 48);
      }

      v30 = *v29[6];
      if (v24 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = -v30;
      }

      operations_research::Domain::InverseMultiplicationBy(&v185, v31, v179);
      if (v185)
      {
        operator delete(*(&v185 + 1));
      }

      if (operations_research::Domain::IsEmpty(v179))
      {
        if (operations_research::sat::SatSolver::AddUnitClause(v164, v22 ^ 1u))
        {
          v32 = 3;
        }

        else
        {
          v32 = 1;
        }

        if (v179[0].__r_.__value_.__s.__data_[0])
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      if ((v179[0].__r_.__value_.__r.__words[0] & 0x1FFFFFFFELL) == 2)
      {
        v33 = operations_research::Domain::Max(v179);
        if (v33 >= operations_research::Domain::Max(v180))
        {
          v34 = operations_research::Domain::Min(v179);
          if (v34 > operations_research::Domain::Min(v180))
          {
            v157 = v15;
            if (~v25 <= v25)
            {
              v35 = v25;
            }

            else
            {
              v35 = ~v25;
            }

            v36 = *(*v5 + 4 * v35);
            v37 = operations_research::Domain::Min(v179);
            v44 = v14;
            v45 = v14 >> 5;
            if (((v14 >> 5) + 1) >> 59)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v14 >> 5 != -1)
            {
              if (!(((v14 >> 5) + 1) >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v48 = 32 * v45;
            *v48 = v18;
            *(v48 + 8) = v22;
            *(v48 + 16) = v36 ^ (v25 >> 31);
            *(v48 + 24) = v37;
            v14 = 32 * v45 + 32;
            memcpy(0, 0, v44);
LABEL_71:
            v15 = v157;
            goto LABEL_72;
          }
        }

        v38 = operations_research::Domain::Min(v179);
        if (v38 <= operations_research::Domain::Min(v180))
        {
          v39 = operations_research::Domain::Max(v179);
          if (v39 < operations_research::Domain::Max(v180))
          {
            v157 = v15;
            if (~v25 <= v25)
            {
              v40 = v25;
            }

            else
            {
              v40 = ~v25;
            }

            v41 = *(*v5 + 4 * v40);
            v42 = operations_research::Domain::Max(v179);
            if (v42 >= 0x8000000000000002)
            {
              v43 = -v42;
            }

            else
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v46 = v14;
            v47 = v14 >> 5;
            if ((v47 + 1) >> 59)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v47 != -1)
            {
              if (!((v47 + 1) >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            MEMORY[0xFFFFFFFFFFFFFFE0] = v18;
            MEMORY[0xFFFFFFFFFFFFFFE8] = v22;
            MEMORY[0xFFFFFFFFFFFFFFF0] = v41 ^ (v25 >= 0);
            MEMORY[0xFFFFFFFFFFFFFFF8] = v43;
            v14 = 0;
            memcpy(0, 0, v46);
            goto LABEL_71;
          }
        }
      }

LABEL_72:
      v49 = operations_research::Domain::Min(v179);
      if (v49 > operations_research::Domain::Min(v180))
      {
        if (~v25 <= v25)
        {
          v50 = v25;
        }

        else
        {
          v50 = ~v25;
        }

        v51 = *(*v5 + 4 * v50);
        v52 = operations_research::Domain::Min(v179);
        operations_research::sat::ImpliedBounds::Add(v8, v22, v51 ^ (v25 >> 31), v52);
      }

      v53 = operations_research::Domain::Max(v179);
      if (v53 < operations_research::Domain::Max(v180))
      {
        if (~v25 <= v25)
        {
          v54 = v25;
        }

        else
        {
          v54 = ~v25;
        }

        v55 = *(*v5 + 4 * v54);
        v56 = operations_research::Domain::Max(v179);
        if (v56 >= 0x8000000000000002)
        {
          v57 = -v56;
        }

        else
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        operations_research::sat::ImpliedBounds::Add(v8, v22, v55 ^ (v25 >= 0), v57);
      }

      operations_research::Domain::IntersectionWith(v180, v179, &v166);
      if (!operations_research::Domain::IsEmpty(&v166))
      {
        v58 = operations_research::Domain::Min(&v166);
        if (v58 == operations_research::Domain::Max(&v166))
        {
          if (!operations_research::Domain::Min(&v166))
          {
            if (~v25 <= v25)
            {
              v59 = v25;
            }

            else
            {
              v59 = ~v25;
            }

            operations_research::sat::ProductDetector::ProcessConditionalZero(v158, v22, *(*v5 + 4 * v59) ^ (v25 >> 31));
          }

          v60 = v167;
          *&v185 = v18;
          DWORD2(v185) = v22;
          *&v186 = operations_research::Domain::Min(&v166);
          BYTE8(v186) = 1;
          std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](v60 + 24 * v25, &v185);
        }
      }

      if (v166.__r_.__value_.__s.__data_[0])
      {
        operator delete(v166.__r_.__value_.__l.__size_);
      }

      operations_research::Domain::Complement(v179, &v185);
      operations_research::Domain::IntersectionWith(v180, &v185, &v166);
      if (v185)
      {
        operator delete(*(&v185 + 1));
      }

      if (!operations_research::Domain::IsEmpty(&v166))
      {
        v61 = operations_research::Domain::Min(&v166);
        if (v61 == operations_research::Domain::Max(&v166))
        {
          v62 = v167;
          *&v185 = v18;
          DWORD2(v185) = v22;
          *&v186 = operations_research::Domain::Min(&v166);
          BYTE8(v186) = 0;
          std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](v62 + 24 * v25, &v185);
        }
      }

      if (v166.__r_.__value_.__s.__data_[0])
      {
        operator delete(v166.__r_.__value_.__l.__size_);
      }

      v32 = 0;
      if (v179[0].__r_.__value_.__s.__data_[0])
      {
LABEL_43:
        operator delete(v179[0].__r_.__value_.__l.__size_);
      }

LABEL_44:
      if (v180[0])
      {
        operator delete(v180[1]);
      }

      if (v32 != 3 && v32 != 0)
      {
        goto LABEL_209;
      }

LABEL_15:
      v12 += 8;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_105;
      }
    }
  }

  v14 = 0;
LABEL_105:
  v63 = v14 >> 5;
  v64 = 126 - 2 * __clz(v14 >> 5);
  if (v14)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::InequalityDetectionHelper *,false>(0, v14, v65, 1, v10);
  if (v63 < 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 2;
    for (i = 1; i < v63; i = v68++)
    {
      v148 = 32 * (v68 - 2);
      v149 = 32 * i;
      if ((*(v148 + 8) ^ *(32 * i + 8)) == 1)
      {
        v150 = *(32 * (v68 - 2) + 0x10);
        v66 = *(32 * (v68 - 2) + 0x18);
        v151 = *(v162 + 5);
        v152 = 8 * v150;
        if (v66 > *(v151 + v152) && v66 <= -*(v151 + (v152 ^ 8)))
        {
          v153 = *(v149 + 24);
          v154 = (*(v149 + 16) << 32) >> 29;
          if (v153 > *(v151 + v154) && v153 <= -*(v151 + (v154 ^ 8)))
          {
            operations_research::sat::IntegerEncoder::Canonicalize(v165, v150, v66, &v185);
            operations_research::sat::IntegerEncoder::Canonicalize(v165, *(v149 + 16), *(v149 + 24), v180);
            if (v185 == v181.n128_u32[0] && *(&v185 + 1) == v181.n128_u64[1])
            {
              operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v165, *(32 * (v68 - 2) + 8), *(32 * (v68 - 2) + 0x10), *(32 * (v68 - 2) + 0x18));
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v148, v179);
              if (v179[0].__r_.__value_.__s.__data_[16] == 1)
              {
                *v179[0].__r_.__value_.__l.__size_ = *v148;
              }

              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v149, v179);
              if (v179[0].__r_.__value_.__s.__data_[16] == 1)
              {
                *v179[0].__r_.__value_.__l.__size_ = *v149;
              }

              v67 = (v67 + 1);
            }
          }
        }
      }
    }
  }

  if (v14)
  {
    v70 = 0;
    v71 = 0;
    while (1)
    {
      v72 = v71[1];
      v185 = *v71;
      v186 = v72;
      v73 = v5[15];
      if (v73 > 1)
      {
        break;
      }

      if (v5[16] < 2uLL || v5[17] != v185)
      {
        goto LABEL_118;
      }

LABEL_114:
      v71 += 2;
      if (v71 == v14)
      {
        if (*v155 == 1)
        {
          v89 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v67, &v181, v66);
          v180[0] = &v181;
          v180[1] = (v89 - &v181);
          v91 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v70, &v179[0].__r_.__value_.__s.__data_[16], v90);
          v179[0].__r_.__value_.__r.__words[0] = &v179[0].__r_.__value_.__r.__words[2];
          v179[0].__r_.__value_.__l.__size_ = v91 - &v179[0].__r_.__value_.__r.__words[2];
          *&v185 = "[Encoding] ";
          *(&v185 + 1) = 11;
          v186 = *v180;
          v187 = " literals associated to VAR >= value, and ";
          v188 = 42;
          v189 = &v179[0].__r_.__value_.__s.__data_[16];
          v190 = v91 - &v179[0].__r_.__value_.__r.__words[2];
          v191 = " half-associations.";
          v192 = 19;
          absl::lts_20240722::strings_internal::CatPieces(&v185, 5, &v166);
          operations_research::SolverLogger::LogInfo(v155, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 566, &v166);
          if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v166.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_137;
      }
    }

    v77 = 0;
    _X11 = v5[17];
    v79 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v185) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v185))) + v185;
    v80 = ((v79 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v79);
    v81 = vdup_n_s8(v80 & 0x7F);
    __asm { PRFM            #4, [X11] }

    v86 = ((_X11 >> 12) ^ (v80 >> 7)) & v73;
    v87 = *(_X11 + v86);
    v88 = vceq_s8(v87, v81);
    if (!v88)
    {
      goto LABEL_126;
    }

    do
    {
LABEL_124:
      if (*(v5[18] + 8 * ((v86 + (__clz(__rbit64(v88)) >> 3)) & v73)) == v185)
      {
        goto LABEL_114;
      }

      v88 &= ((v88 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v88);
LABEL_126:
    while (!*&vceq_s8(v87, 0x8080808080808080))
    {
      v77 += 8;
      v86 = (v77 + v86) & v73;
      v87 = *(_X11 + v86);
      v88 = vceq_s8(v87, v81);
      if (v88)
      {
        goto LABEL_124;
      }
    }

LABEL_118:
    v74 = DWORD2(v185);
    AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v165, v186, *(&v186 + 1));
    v182 = &unk_284F3D130;
    v183 = v74 | (AssociatedLiteral << 32);
    v184 = &v182;
    v76 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v161);
    operations_research::sat::SatSolver::AddBinaryClause(v76, v183 ^ 1, SHIDWORD(v183));
    if (v184 == &v182)
    {
      (*(*v184 + 4))(v184);
      if (*(v164 + 528))
      {
        goto LABEL_209;
      }
    }

    else
    {
      if (v184)
      {
        (*(*v184 + 5))();
      }

      if (*(v164 + 528))
      {
        goto LABEL_209;
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, &v185, v180);
    if (v181.n128_u8[0] == 1)
    {
      *v180[1] = v185;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 19, &v185, v180);
    if (v181.n128_u8[0] == 1)
    {
      *v180[1] = v185;
    }

    v70 = (v70 + 1);
    goto LABEL_114;
  }

LABEL_137:
  v92 = v167;
  if (v168 != v167)
  {
    v93 = 0;
    v163 = 0;
    v94 = 0;
    v159 = 0;
    v160 = 0;
    v95 = 0;
    while (1)
    {
      v96 = &v92[24 * v93];
      v97 = *(v96 + 1);
      v98 = 126 - 2 * __clz((v97 - *v96) >> 5);
      v99 = v97 == *v96 ? 0 : v98;
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper *,false>(*v96, v97, v99, 1);
      if (*v96 != *(v96 + 1))
      {
        break;
      }

LABEL_140:
      v93 = ++v95;
      v92 = v167;
      if (0xAAAAAAAAAAAAAAABLL * ((v168 - v167) >> 3) <= v95)
      {
        goto LABEL_196;
      }
    }

    v185 = xmmword_23CE306D0;
    v100 = *(*v5 + 4 * v93);
    v102 = *v96;
    v101 = *(v96 + 1);
    if (v101->n128_u64 - *v96 >= 0x21)
    {
      v103 = 2;
      v104 = 1;
      do
      {
        v105 = v103 - 2;
        v106 = &v102[2 * v105];
        v107 = v106[1].n128_i64[0];
        v108 = &v102[2 * v104];
        if (v107 == v108[1].n128_u64[0])
        {
          v109 = v106->n128_u32[2];
          if ((v109 ^ v108->n128_u32[2]) == 1 && v106[1].n128_u8[8] && (v108[1].n128_u8[8] & 1) == 0)
          {
            operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v165, v109, v100, v107);
            v110 = (*v96 + 32 * v105);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v110, v180);
            if (v181.n128_u8[0] == 1)
            {
              *v180[1] = *v110;
            }

            v111 = (*v96 + 32 * v104);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v111, v180);
            if (v181.n128_u8[0] == 1)
            {
              *v180[1] = *v111;
            }

            v112 = *v96 + 32 * v105;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v185, (v112 + 16), v180);
            if (v181.n128_u8[0] == 1)
            {
              *v180[1] = *(v112 + 16);
            }

            ++v163;
            v102 = *v96;
            v101 = *(v96 + 1);
          }
        }

        v104 = v103++;
      }

      while (v104 < (v101 - v102) >> 5);
    }

    v113 = *(v164 + 528);
    if (v113)
    {
      goto LABEL_162;
    }

    v156 = *(v164 + 528);
    if (v102 == v101)
    {
LABEL_161:
      IsFullyEncoded = operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v165, v100);
      v160 += IsFullyEncoded ^ 1;
      v159 += IsFullyEncoded;
      v113 = v156;
LABEL_162:
      if (v185 >= 2)
      {
        operator delete((v186 - (BYTE8(v185) & 1) - 8));
      }

      if ((v113 & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_209;
    }

    while (1)
    {
      v115 = v102[1];
      *v180 = *v102;
      v181 = v115;
      v116 = v5[15];
      if (v116 > 1)
      {
        v120 = 0;
        _X11 = v5[17];
        v122 = v180[0] + ((((v180[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v180[0] + &absl::lts_20240722::hash_internal::MixingHashState::kSeed)));
        v123 = ((v122 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v122);
        v124 = vdup_n_s8(v123 & 0x7F);
        __asm { PRFM            #4, [X11] }

        v126 = ((_X11 >> 12) ^ (v123 >> 7)) & v116;
        v127 = *(_X11 + v126);
        v128 = vceq_s8(v127, v124);
        if (!v128)
        {
          goto LABEL_176;
        }

LABEL_174:
        while (*(v5[18] + 8 * ((v126 + (__clz(__rbit64(v128)) >> 3)) & v116)) != v180[0])
        {
          v128 &= ((v128 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v128)
          {
LABEL_176:
            while (!*&vceq_s8(v127, 0x8080808080808080))
            {
              v120 += 8;
              v126 = (v120 + v126) & v116;
              v127 = *(_X11 + v126);
              v128 = vceq_s8(v127, v124);
              if (v128)
              {
                goto LABEL_174;
              }
            }

            goto LABEL_169;
          }
        }

        goto LABEL_165;
      }

      if (v5[16] < 2uLL || v5[17] != v180[0])
      {
        break;
      }

LABEL_165:
      v102 += 2;
      if (v102 == v101)
      {
        goto LABEL_161;
      }
    }

LABEL_169:
    if (v181.n128_u8[8] == 1)
    {
      v117 = LODWORD(v180[1]);
      v118 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v165, v100, v181.n128_i64[0]);
      v176 = &unk_284F3D130;
      v177 = v117 | (v118 << 32);
      v178 = &v176;
      v119 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v161);
      operations_research::sat::SatSolver::AddBinaryClause(v119, v177 ^ 1, SHIDWORD(v177));
      if (v178 == &v176)
      {
        (*(*v178 + 4))(v178);
      }

      else if (v178)
      {
        (*(*v178 + 5))();
      }

      v132 = LODWORD(v180[1]);
      if (v181.n128_i64[0] >= 0x8000000000000002)
      {
        v133 = -v181.n128_u64[0];
      }

      else
      {
        v133 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v134 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v165, v100 ^ 1u, v133);
      v173 = &unk_284F3D130;
      v174 = v132 | (v134 << 32);
      v175 = &v173;
      v135 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v161);
      operations_research::sat::SatSolver::AddBinaryClause(v135, v174 ^ 1, SHIDWORD(v174));
      v131 = v175;
      if (v175 == &v173)
      {
        (*(*v175 + 4))(v175);
        goto LABEL_191;
      }

      if (!v175)
      {
LABEL_191:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 15, v180, v179);
        if (v179[0].__r_.__value_.__s.__data_[16] == 1)
        {
          *v179[0].__r_.__value_.__l.__size_ = v180[0];
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(v5 + 19, v180, v179);
        if (v179[0].__r_.__value_.__s.__data_[16] == 1)
        {
          *v179[0].__r_.__value_.__l.__size_ = v180[0];
        }

        v94 = (v94 + 1);
        goto LABEL_165;
      }
    }

    else
    {
      LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v165, v100, v181.n128_i64[0]);
      v170 = &unk_284F3D130;
      v171 = LODWORD(v180[1]) | ((LiteralAssociatedToEquality ^ 1u) << 32);
      v172 = &v170;
      v130 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v161);
      operations_research::sat::SatSolver::AddBinaryClause(v130, v171 ^ 1, SHIDWORD(v171));
      v131 = v172;
      if (v172 == &v170)
      {
        (*(*v172 + 4))(v172);
        goto LABEL_191;
      }

      if (!v172)
      {
        goto LABEL_191;
      }
    }

    (*(*v131 + 5))(v131);
    goto LABEL_191;
  }

  v160 = 0;
  v159 = 0;
  v94 = 0;
  v163 = 0;
LABEL_196:
  if ((v163 > 0 || v94 >= 1) && *v155 == 1)
  {
    v136 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v163, &v181, v66);
    v180[0] = &v181;
    v180[1] = (v136 - &v181);
    v138 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v94, &v179[0].__r_.__value_.__s.__data_[16], v137);
    v179[0].__r_.__value_.__r.__words[0] = &v179[0].__r_.__value_.__r.__words[2];
    v179[0].__r_.__value_.__l.__size_ = v138 - &v179[0].__r_.__value_.__r.__words[2];
    *&v185 = "[Encoding] ";
    *(&v185 + 1) = 11;
    v186 = *v180;
    v187 = " literals associated to VAR == value, and ";
    v188 = 42;
    v189 = &v179[0].__r_.__value_.__s.__data_[16];
    v190 = v138 - &v179[0].__r_.__value_.__r.__words[2];
    v191 = " half-associations.";
    v192 = 19;
    absl::lts_20240722::strings_internal::CatPieces(&v185, 5, &v166);
    operations_research::SolverLogger::LogInfo(v155, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 653, &v166);
    if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v166.__r_.__value_.__l.__data_);
    }
  }

  if (v159 >= 1 && *v155 == 1)
  {
    *&v185 = "[Encoding] num_fully_encoded_variables:";
    *(&v185 + 1) = 39;
    v139 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v159, &v181, v66);
    v180[0] = &v181;
    v180[1] = (v139 - &v181);
    absl::lts_20240722::StrCat(&v185, v180, v179);
    operations_research::SolverLogger::LogInfo(v155, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 657, v179);
    if (SHIBYTE(v179[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179[0].__r_.__value_.__l.__data_);
    }
  }

  if (v160 >= 1 && *v155 == 1)
  {
    *&v185 = "[Encoding] num_partially_encoded_variables:";
    *(&v185 + 1) = 43;
    v140 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v160, &v181, v66);
    v180[0] = &v181;
    v180[1] = (v140 - &v181);
    absl::lts_20240722::StrCat(&v185, v180, v179);
    operations_research::SolverLogger::LogInfo(v155, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 661, v179);
    if (SHIBYTE(v179[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179[0].__r_.__value_.__l.__data_);
    }
  }

LABEL_209:
  v141 = v167;
  if (v167)
  {
    v142 = v168;
    v143 = v167;
    if (v168 != v167)
    {
      v144 = v168;
      do
      {
        v146 = *(v144 - 3);
        v144 -= 24;
        v145 = v146;
        if (v146)
        {
          *(v142 - 2) = v145;
          operator delete(v145);
        }

        v142 = v144;
      }

      while (v144 != v141);
      v143 = v167;
    }

    v168 = v141;
    operator delete(v143);
  }

LABEL_217:
  v147 = *MEMORY[0x277D85DE8];
}

void sub_23CA57764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, void *a54)
{
  if (a44)
  {
    operator delete(__p);
  }

  if (a53)
  {
    operator delete(a54);
  }

  if (a21)
  {
    operator delete(a21);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::ImpliedBounds>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ImpliedBounds>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ProductDetector>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void std::vector<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper,std::allocator<operations_research::sat::ExtractEncoding(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::EqualityDetectionHelper>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void operations_research::sat::ExtractElementEncoding(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v194 = *MEMORY[0x277D85DE8];
  v160 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v148 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v3);
  v172 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(v3);
  v165 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(v3);
  v153 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ElementEncodings>(v3);
  v7 = *(this + 14);
  if (v7 < 1)
  {
    goto LABEL_189;
  }

  v8 = 0;
  v156 = 0;
  v169 = 0;
  v9 = 0;
  v171 = 0;
  v10 = 0;
  v166 = 0;
  v167 = 0;
  v149 = this;
  v150 = (this + 48);
  v152 = (v5 + 29);
  v151 = (v3 + 40);
  v11 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
  v147 = v11 >> 7;
  v12 = vdup_n_s8(v11 & 0x7F);
  v159 = v3;
  v161 = v5;
  do
  {
    if (*v150)
    {
      v13 = *v150 + 8 * v8 + 7;
    }

    else
    {
      v13 = v150;
    }

    v14 = *v13;
    if (*(*v13 + 60) != 29)
    {
      goto LABEL_4;
    }

    v182[0].__r_.__value_.__r.__words[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    v182[0].__r_.__value_.__l.__size_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    v182[0].__r_.__value_.__r.__words[2] = 0;
    v162 = v14;
    v15 = *(v14 + 48);
    v16 = *(v15 + 16);
    v155 = v8;
    if (v16)
    {
      v17 = *(v15 + 24);
      __src = &v17[v16];
      do
      {
        v18 = 0;
        if (~*v17 <= *v17)
        {
          v19 = *v17;
        }

        else
        {
          v19 = ~*v17;
        }

        HIDWORD(v21) = *(*(v160 + 48) + 4 * v19);
        LODWORD(v21) = *v17;
        v20 = (v21 >> 31);
        _X9 = v5[27];
        __asm { PRFM            #4, [X9] }

        v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
        v28 = vdup_n_s8(v27 & 0x7F);
        v29 = v5[25];
        v30 = ((v27 >> 7) ^ (_X9 >> 12)) & v29;
        v31 = *(_X9 + v30);
        v32 = vceq_s8(v31, v28);
        if (v32)
        {
LABEL_17:
          while (1)
          {
            v33 = v5[28] + 40 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v29);
            if (*v33 == v20)
            {
              break;
            }

            v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v32)
            {
              goto LABEL_19;
            }
          }

          v34 = (v33 + 8);
          if (*(v33 + 16) >= 2uLL)
          {
            goto LABEL_25;
          }
        }

        else
        {
LABEL_19:
          while (!*&vceq_s8(v31, 0x8080808080808080))
          {
            v18 += 8;
            v30 = (v18 + v30) & v29;
            v31 = *(_X9 + v30);
            v32 = vceq_s8(v31, v28);
            if (v32)
            {
              goto LABEL_17;
            }
          }

          v34 = v152;
          if (*(v152 + 1) >= 2uLL)
          {
LABEL_25:
            v35 = v34 + 16;
            if (*v34 >= 2uLL)
            {
              v36 = *(v34 + 2);
              v35 = *(v34 + 3);
              if (*v36 <= -2)
              {
                do
                {
                  v37 = __clz(__rbit64((*v36 | ~(*v36 >> 7)) & 0x101010101010101)) >> 3;
                  v36 = (v36 + v37);
                  v35 += 16 * v37;
                }

                while (*v36 < -1);
              }
            }

            v185 = v35;
            operator new();
          }
        }

        ++v17;
        v5 = v161;
      }

      while (v17 != __src);
      size = v182[0].__r_.__value_.__l.__size_;
      v38 = v182[0].__r_.__value_.__r.__words[0];
      v3 = v159;
    }

    else
    {
      size = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
      v38 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::ValueLiteralPair>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,std::vector<operations_research::sat::ValueLiteralPair>>>,256,false>>::EmptyNode(void)::empty_node;
    }

    memset(&__p, 0, sizeof(__p));
    v154 = *(size + 10);
    if (*v38 != size || *(size + 10) != 0)
    {
      v163 = *v38;
      v157 = size;
      v158 = 0;
      v41 = 0;
      v164 = 0;
      v42 = v162;
      while (1)
      {
        v43 = *(v42 + 60);
        v44 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        if (v43 == 29)
        {
          v44 = *(v162 + 48);
        }

        v45 = &v163[32 * v164];
        v46 = *(v45 + 3);
        v6 = (v45 + 24);
        v176 = v10;
        v173 = (v6 - 1);
        if ((v6[1] - v46) >> 4 >= *(v44 + 4))
        {
          v53 = v41;
          v174 = v6;
          __srca = v9;
          operations_research::sat::ElementEncodings::Add(v153, *(v6 - 2), v6, v8);
          v54 = v158;
          if (dword_2810BFBD8 >= 1)
          {
            v55 = v173;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFBD0, dword_2810BFBD8))
            {
              v122 = v158 - v41;
              v123 = (v158 - v41) >> 2;
              v124 = v123 + 1;
              if ((v123 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (-v41 >> 1 > v124)
              {
                v124 = -v41 >> 1;
              }

              if (-v41 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v125 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v125 = v124;
              }

              if (v125)
              {
                if (!(v125 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(4 * v123) = *v173;
              memcpy(0, v53, v122);
              v41 = 0;
              v54 = 4 * v123 + 4;
              v55 = v173;
              v56 = v174;
              v185 = " X";
              v186 = 2;
              v127 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v173, v184, v126);
              *&v183 = v184;
              *(&v183 + 1) = v127 - v184;
              absl::lts_20240722::StrAppend(&__p, &v185, &v183);
            }

            else
            {
              v56 = v174;
            }
          }

          else
          {
            v55 = v173;
            v56 = v174;
          }

          v57 = *(v55 + 1);
          v58 = *(v55 + 2);
          v59 = 126 - 2 * __clz((v58 - v57) >> 4);
          if (v58 == v57)
          {
            v60 = 0;
          }

          else
          {
            v60 = v59;
          }

          std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ValueLiteralPair::CompareByValue &,operations_research::sat::ValueLiteralPair*,false>(v57, v58, &v185, v60, 1);
          v158 = v54;
          v170 = v41;
          ++v156;
          v61 = *(v55 + 1);
          v62 = *(v55 + 2) - v61;
          if (!v62)
          {
LABEL_130:
            v8 = v155;
            v41 = v170;
            v116 = v163;
            if (v163[11])
            {
              goto LABEL_135;
            }

            goto LABEL_131;
          }

          v63 = 0;
          v168 = 0;
          v64 = 0;
          v65 = v62 >> 4;
          while (2)
          {
            v67 = 0;
            v68 = v64;
            v69 = v61[2 * v63];
            v70 = v64 + 1;
            v71 = 1;
            do
            {
              v64 = v70;
              v72 = v67;
              v73 = v71;
              v74 = v70;
              if (v65 <= v70)
              {
                break;
              }

              v75 = v61[2 * v70++];
              --v67;
              ++v71;
            }

            while (v75 == v69);
            v76 = *v173;
            if (v72)
            {
              if (operations_research::sat::IntegerEncoder::GetAssociatedEqualityLiteral(v172, v76, v61[2 * v63]) != -1)
              {
                if (v68 >= v64)
                {
                  v78 = __srca;
                  v79 = v171;
                }

                else
                {
                  v77 = (16 * v68) | 8;
                  v78 = __srca;
                  v79 = v171;
                  do
                  {
                    while (1)
                    {
                      v80 = *v56;
                      if (v78 >= v79)
                      {
                        break;
                      }

                      *v78 = *(v80 + v77);
                      v78 += 4;
                      v10 = v176;
                      v77 += 16;
                      if (!--v73)
                      {
                        goto LABEL_80;
                      }
                    }

                    v81 = v78 - __srca;
                    v82 = (v78 - __srca) >> 2;
                    v83 = v82 + 1;
                    if ((v82 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if ((v79 - __srca) >> 1 > v83)
                    {
                      v83 = (v79 - __srca) >> 1;
                    }

                    if (v79 - __srca >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v84 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v84 = v83;
                    }

                    if (v84)
                    {
                      if (!(v84 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v85 = (4 * v82);
                    *v85 = *(v80 + v77);
                    v78 = (v85 + 1);
                    memcpy(0, __srca, v81);
                    __srca = 0;
                    v79 = 0;
                    v56 = v174;
                    v10 = v176;
                    v77 += 16;
                    --v73;
                  }

                  while (v73);
                }

LABEL_80:
                v171 = v79;
                v87 = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v172, *v173, v69) ^ 1;
                if (v78 >= v171)
                {
                  v90 = v78 - __srca;
                  v91 = (v78 - __srca) >> 2;
                  v92 = v91 + 1;
                  if ((v91 + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v171 - __srca) >> 1 > v92)
                  {
                    v92 = (v171 - __srca) >> 1;
                  }

                  if (v171 - __srca >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v93 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v93 = v92;
                  }

                  if (v93)
                  {
                    if (!(v93 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v94 = (4 * v91);
                  v171 = 0;
                  *v94 = v87;
                  v88 = (v94 + 1);
                  memcpy(0, __srca, v90);
                  v89 = 0;
                  v10 = v176;
                }

                else
                {
                  *v78 = v87;
                  v88 = v78 + 4;
                  v89 = __srca;
                }

                __srca = v89;
                operations_research::sat::SatSolver::AddProblemClause(v165, v89, (v88 - v89) >> 2, 0);
                ++v169;
LABEL_52:
                v61 = *(v173 + 1);
                v66 = *(v173 + 2);
                v65 = (v66 - v61) >> 4;
                v63 = v74;
                if (v65 <= v74)
                {
                  if (v168)
                  {
                    v96 = 0;
                    v95 = 0;
                    for (i = v10; v61 != v66; v61 += 2)
                    {
                      v98 = *v61;
                      v99 = i - v10;
                      v100 = v10;
                      v101 = (i - v10) >> 2;
                      v102 = v101 + 1;
                      v177 = v100;
                      if ((v101 + 1) >> 62)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      v175 = v96;
                      v103 = -v100;
                      v104 = -v100 >> 1;
                      if (v104 > v102)
                      {
                        v102 = v104;
                      }

                      if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v105 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v105 = v102;
                      }

                      if (v105)
                      {
                        if (!(v105 >> 62))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      *(4 * v101) = *(v61 + 2);
                      i = 4 * v101 + 4;
                      memcpy(0, v177, v99);
                      v106 = v95 - v167;
                      v107 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v167) >> 3);
                      v108 = v107 + 1;
                      if (v107 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v167 >> 3) > v108)
                      {
                        v108 = 0x5555555555555556 * (-v167 >> 3);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v167 >> 3) >= 0x555555555555555)
                      {
                        v109 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      if (v109)
                      {
                        if (v109 <= 0xAAAAAAAAAAAAAAALL)
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v110 = 8 * ((v95 - v167) >> 3);
                      *v110 = -1;
                      *(v110 + 8) = 0;
                      *(v110 + 16) = v98;
                      v95 = v110 + 24;
                      v111 = 24 * v107 - v106;
                      memcpy((v110 - v106), v167, v106);
                      if (v167)
                      {
                        operator delete(v167);
                      }

                      v167 = v111;
                      v112 = v175 - v166;
                      v113 = 0xAAAAAAAAAAAAAAABLL * ((v175 - v166) >> 3) + 1;
                      if (v113 > 0xAAAAAAAAAAAAAAALL)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (0x5555555555555556 * (-v166 >> 3) > v113)
                      {
                        v113 = 0x5555555555555556 * (-v166 >> 3);
                      }

                      if (0xAAAAAAAAAAAAAAABLL * (-v166 >> 3) >= 0x555555555555555)
                      {
                        v114 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v114 = v113;
                      }

                      if (v114)
                      {
                        if (v114 <= 0xAAAAAAAAAAAAAAALL)
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      v115 = 8 * ((v175 - v166) >> 3);
                      *v115 = -1;
                      *(v115 + 8) = 0;
                      *(v115 + 16) = -v98;
                      v96 = v115 + 24;
                      memcpy((v115 - v112), v166, v112);
                      if (v166)
                      {
                        operator delete(v166);
                      }

                      v166 = 8 * ((v175 - v166) >> 3) - v112;
                      v10 = 0;
                    }

                    operator new();
                  }

                  v9 = __srca;
                  v3 = v159;
                  goto LABEL_130;
                }

                continue;
              }
            }

            else if (operations_research::sat::IntegerEncoder::IsFixedOrHasAssociatedLiteral(v172, v76, v61[2 * v63]))
            {
              v86 = v69 >= 0x8000000000000002 ? -v69 : 0x7FFFFFFFFFFFFFFFLL;
              if (operations_research::sat::IntegerEncoder::IsFixedOrHasAssociatedLiteral(v172, *v173 ^ 1, v86))
              {
                operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v172, *(*(v173 + 1) + 16 * v63 + 8), *v173, v69);
                goto LABEL_52;
              }
            }

            break;
          }

          v168 = 1;
          goto LABEL_52;
        }

        if (dword_2810BFBC0 < 2 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_7, dword_2810BFBC0))
        {
          v116 = v163;
          if (v163[11])
          {
            goto LABEL_135;
          }

          goto LABEL_131;
        }

        v47 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v183, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 704);
        v48 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v47, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v48, "X", 1uLL);
        LODWORD(v185) = *v173;
        v49 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v48, &v185);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, " has ", 5uLL);
        v185 = ((*(v173 + 2) - *(v173 + 1)) >> 4);
        v50 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v49, &v185);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, " implied values, and a domain of size ", 0x26uLL);
        v181 = &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d;
        v51 = *(v3 + 3);
        if (v51 > 1)
        {
          break;
        }

        v51 = *(v3 + 4);
        if (v51 < 2)
        {
          goto LABEL_43;
        }

        v51 = *v151;
        if (*v151 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v51 = v151;
        }

        v52 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v151 != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v52 = 0;
        }

LABEL_166:
        if (!v52)
        {
          operator new();
        }

        v136 = operations_research::sat::IntegerTrail::InitialVariableDomain(*(v51 + 8), *v173);
        v185 = operations_research::Domain::Size(v136);
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v50, &v185);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v183);
        v116 = v163;
        if (v163[11])
        {
LABEL_135:
          if (++v164 == v116[10])
          {
            while (1)
            {
              v120 = *v116;
              if (*(*v116 + 11))
              {
                break;
              }

              v121 = v116[8];
              v116 = *v116;
              if (v121 != v120[10])
              {
                v163 = v120;
                v164 = v121;
                goto LABEL_139;
              }
            }
          }

          goto LABEL_139;
        }

LABEL_131:
        v117 = &v116[8 * (v164 + 1) + 240];
        do
        {
          v118 = *v117;
          v119 = *(*v117 + 11);
          v117 = *v117 + 240;
        }

        while (!v119);
        v163 = v118;
        v164 = 0;
LABEL_139:
        v42 = v162;
        if (v163 == v157 && v164 == v154)
        {
          v137 = (v158 - v41) >> 2;
          if (v137 > 1 && dword_2810BFBF0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFBE8, dword_2810BFBF0) && dword_2810BFC08 >= 1)
          {
            v3 = v159;
            if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC00, dword_2810BFC08))
            {
              v138 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v185, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 790);
              v139 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v138, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v139, "exactly_one(", 0xCuLL);
              LODWORD(v183) = v8;
              v140 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v139, &v183);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v140, ") encodes ", 0xAuLL);
              *&v183 = v137;
              v141 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v140, &v183);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v141, " variables at the same time: ", 0x1DuLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<(v141, &__p);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v185);
              v3 = v159;
            }
          }

          goto LABEL_173;
        }
      }

      v128 = 0;
      _X9 = *v151;
      __asm { PRFM            #4, [X9] }

      v131 = (v147 ^ (*v151 >> 12)) & v51;
      v132 = *(*v151 + v131);
      v133 = vceq_s8(v132, v12);
      if (!v133)
      {
        goto LABEL_158;
      }

LABEL_155:
      v134 = *(v3 + 6);
      do
      {
        v135 = (v131 + (__clz(__rbit64(v133)) >> 3)) & v51;
        if (*(v134 + 16 * v135) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          v51 = v134 + 16 * v135;
          v52 = (_X9 + v135);
          goto LABEL_166;
        }

        v133 &= ((v133 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v133);
LABEL_158:
      while (!*&vceq_s8(v132, 0x8080808080808080))
      {
        v128 += 8;
        v131 = (v128 + v131) & v51;
        v132 = *(_X9 + v131);
        v133 = vceq_s8(v132, v12);
        if (v133)
        {
          goto LABEL_155;
        }
      }

LABEL_43:
      v52 = 0;
      goto LABEL_166;
    }

LABEL_173:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v161;
    if (v182[0].__r_.__value_.__r.__words[2])
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v182[0].__r_.__value_.__l.__data_);
    }

    v7 = *(v149 + 14);
LABEL_4:
    ++v8;
  }

  while (v8 < v7);
  if (v156 > 0 && *v148 == 1 && (v185 = "[Encoding] num_element_encoding: ", v186 = 33, v142 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v156, v184, v6), *&v183 = v184, *(&v183 + 1) = v142 - v184, absl::lts_20240722::StrCat(&v185, &v183, v182), operations_research::SolverLogger::LogInfo(v148, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 797, v182), SHIBYTE(v182[0].__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v182[0].__r_.__value_.__l.__data_);
    if (v169 < 1)
    {
      goto LABEL_189;
    }
  }

  else if (v169 < 1)
  {
    goto LABEL_189;
  }

  if (*v148 == 1)
  {
    v143 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v169, v184, v6);
    *&v183 = v184;
    *(&v183 + 1) = v143 - v184;
    v145 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, &v182[0].__r_.__value_.__s.__data_[16], v144);
    v182[0].__r_.__value_.__r.__words[0] = &v182[0].__r_.__value_.__r.__words[2];
    v182[0].__r_.__value_.__l.__size_ = v145 - &v182[0].__r_.__value_.__r.__words[2];
    v185 = "[Encoding] Added ";
    v186 = 17;
    v187 = v183;
    v188 = " element support clauses, and ";
    v189 = 30;
    v190 = &v182[0].__r_.__value_.__s.__data_[16];
    v191 = v145 - &v182[0].__r_.__value_.__r.__words[2];
    v192 = " dedicated propagators.";
    v193 = 23;
    absl::lts_20240722::strings_internal::CatPieces(&v185, 5, &__p);
    operations_research::SolverLogger::LogInfo(v148, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 802, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_189:
  v146 = *MEMORY[0x277D85DE8];
}

void sub_23CA59930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, _BYTE *a56, uint64_t a57, uint64_t a58)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v59 - 208));
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (a58)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(a56);
  }

  if (a35)
  {
    operator delete(a35);
    v61 = a36;
    if (!a36)
    {
LABEL_9:
      if (!a47)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v61 = a36;
    if (!a36)
    {
      goto LABEL_9;
    }
  }

  operator delete(v61);
  if (!a47)
  {
LABEL_10:
    if (!a48)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(a48);
    _Unwind_Resume(a1);
  }

LABEL_14:
  operator delete(a47);
  if (!a48)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ElementEncodings>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ElementEncodings>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::PropagateEncodingFromEquivalenceRelations(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v8 = *(this + 6);
  v7 = this + 48;
  v9 = (v8 + 7);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v7 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = &v10[8 * v11];
    do
    {
      v15 = *v10;
      if (!*(*v10 + 16) && *(v15 + 60) == 12)
      {
        v16 = *(v15 + 48);
        if (*(v16 + 16) == 2 && *(v16 + 64) == 2)
        {
          v17 = *(v16 + 72);
          v18 = *v17;
          if (*v17 == v17[1])
          {
            v19 = *(v16 + 48);
            v21 = *v19;
            v20 = v19[1];
            v22 = v21 >= 0 ? v21 : -v21;
            v23 = v20 >= 0 ? v20 : -v20;
            if (v21 && v20 != 0)
            {
              v41 = v13;
              v25 = *(v16 + 24);
              v40 = v5;
              v26 = vmax_s32(vmvn_s8(*v25), *v25);
              v27 = *(*v5 + 4 * v26.i32[1]) ^ (HIDWORD(*v25) >> 31) ^ (v20 >> 63);
              v42 = *(*v5 + 4 * v26.i32[0]) ^ (v25->u32[0] >> 31) ^ (v21 >> 63);
              operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v6, v42, &v44);
              v28 = v44;
              v29 = v45;
              v43 = v27;
              if (v44 != v45)
              {
                v30 = v27 ^ 1;
                do
                {
                  if ((v18 - *v28 * v22) / v23 - ((v18 - *v28 * v22) / v23 * v23 > v18 - *v28 * v22) >= 0x8000000000000002)
                  {
                    v31 = ((v18 - *v28 * v22) / v23 * v23 > v18 - *v28 * v22) - (v18 - *v28 * v22) / v23;
                  }

                  else
                  {
                    v31 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v6, *(v28 + 2), v30, v31);
                  ++v12;
                  v28 += 2;
                }

                while (v28 != v29);
                v28 = v44;
                v27 = v43;
              }

              if (v28)
              {
                v45 = v28;
                operator delete(v28);
              }

              operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v6, v27, &v44);
              v32 = v44;
              v33 = v45;
              if (v44 != v45)
              {
                do
                {
                  if ((v18 - *v32 * v23) / v22 - ((v18 - *v32 * v23) / v22 * v22 > v18 - *v32 * v23) >= 0x8000000000000002)
                  {
                    v34 = ((v18 - *v32 * v23) / v22 * v22 > v18 - *v32 * v23) - (v18 - *v32 * v23) / v22;
                  }

                  else
                  {
                    v34 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(v6, *(v32 + 2), v42 ^ 1, v34);
                  ++v12;
                  v32 += 2;
                }

                while (v32 != v33);
                v32 = v44;
              }

              if (v32)
              {
                v45 = v32;
                operator delete(v32);
              }

              v35 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(v6, v42);
              v36 = v35[1];
              if (v36 != *v35)
              {
                if (((v36 - *v35) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                goto LABEL_52;
              }

              v37 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(v6, v43);
              v38 = v37[1];
              if (v38 != *v37)
              {
                if (((v38 - *v37) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_52:
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v13 = v41;
              v5 = v40;
            }
          }
        }
      }

      v10 += 8;
    }

    while (v10 != v14);
    if (v12 >= 1 && dword_2810BFC20 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC18, dword_2810BFC20))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 884);
      v39 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v44, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "Num associations from equivalences = ", 0x25uLL);
      v46 = v12;
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v39, &v46);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v44);
    }
  }
}

void sub_23CA5A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CA5A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::DetectOptionalVariables(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(v4 + 272) == 1 && (*(v4 + 284) & 1) == 0)
  {
    v5 = *(this + 8);
    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 16))
    {
      v6 = *(this + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *(v6 + 24);
        v9 = 4 * v7;
        do
        {
          v11 = *v8++;
          v10 = v11;
          if (~v11 > v11)
          {
            v10 = ~v10;
          }

          *((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v10;
          v9 -= 4;
        }

        while (v9);
      }
    }

    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = &v53;
    LOBYTE(v57) = 0;
    v50 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
    v51 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
    v52 = 0;
    if (*(this + 14) >= 1)
    {
      v12 = 0;
      v49 = (this + 48);
      while (1)
      {
        v13 = (*v49 & 1) != 0 ? (*v49 + 8 * v12 + 7) : (this + 48);
        v14 = *v13;
        if (*(*v13 + 16))
        {
          break;
        }

        operations_research::sat::UsedVariables(v14, &v56);
        v37 = v56;
        v38 = v57;
        if (v56 != v57)
        {
          v39 = v53;
          v40 = v56;
          do
          {
            v41 = *v40;
            v40 = (v40 + 4);
            *((v41 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v41;
            v39[3 * v41 + 1] = v39[3 * v41];
          }

          while (v40 != v38);
        }

        if (v37)
        {
          v57 = v37;
LABEL_14:
          operator delete(v37);
        }

LABEL_15:
        if (++v12 >= *(this + 14))
        {
          goto LABEL_67;
        }
      }

      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v50);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v14 + 24);
        v17 = 4 * v15;
        do
        {
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::insert_hint_unique<int,int const&>(&v50, v51, v51[10], v16, v16, &v56);
          ++v16;
          v17 -= 4;
        }

        while (v17);
      }

      operations_research::sat::UsedVariables(v14, &v56);
      v19 = v56;
      v18 = v57;
      if (v56 == v57)
      {
        if (v56)
        {
          goto LABEL_61;
        }

        goto LABEL_15;
      }

      while (1)
      {
        v20 = *v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        v23 = (v53 + 24 * v20);
        if (((1 << v20) & *(8 * (v20 >> 6))) != 0)
        {
          begin = v23->__begin_;
          end = v23->__end_;
          if (v23->__begin_ == end)
          {
            v26 = 0;
            v36 = end - begin;
LABEL_58:
            if (v36 > v26)
            {
              v23->__end_ = &begin[v26];
            }

            goto LABEL_27;
          }

          LODWORD(v26) = 0;
          v27 = v51;
          v28 = v23->__begin_;
          v29 = *begin;
          v30 = v50;
          v31 = *(v50 + 10);
          if (!*(v50 + 10))
          {
LABEL_39:
            LODWORD(v32) = 0;
            goto LABEL_40;
          }

          while (1)
          {
            while (1)
            {
              v32 = 0;
              while (*(v30 + v32 + 3) < v29)
              {
                if (v31 == ++v32)
                {
                  LODWORD(v32) = v31;
                  break;
                }
              }

LABEL_40:
              if (*(v30 + 11))
              {
                break;
              }

              v30 = v30[v32 + 32];
              v31 = *(v30 + 10);
              if (!*(v30 + 10))
              {
                goto LABEL_39;
              }
            }

            while (v32 == *(v30 + 10))
            {
              LODWORD(v32) = *(v30 + 8);
              v30 = *v30;
              if (*(v30 + 11))
              {
                v33 = v27[10];
                v34 = v33;
                goto LABEL_53;
              }
            }

            v33 = v27[10];
            if (v29 >= *(v30 + v32 + 3))
            {
              v35 = v30;
            }

            else
            {
              v35 = v27;
            }

            if (v29 >= *(v30 + v32 + 3))
            {
              v34 = v32;
            }

            else
            {
              v34 = v27[10];
            }

            if (v35 != v27)
            {
LABEL_32:
              begin[v26] = v29;
              LODWORD(v26) = v26 + 1;
              goto LABEL_33;
            }

LABEL_53:
            if (v34 != v33)
            {
              goto LABEL_32;
            }

LABEL_33:
            if (++v28 == end)
            {
              break;
            }

            v29 = *v28;
            v30 = v50;
            v31 = *(v50 + 10);
            if (!*(v50 + 10))
            {
              goto LABEL_39;
            }
          }

          v26 = v26;
          v36 = end - begin;
          if (v26 <= v36)
          {
            goto LABEL_58;
          }

          std::vector<int>::__append(v23, v26 - v36);
        }

        else
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<int const>,google::protobuf::internal::RepeatedIterator<int const>>(v23, *(v14 + 24), (*(v14 + 24) + 4 * *(v14 + 16)), *(v14 + 16));
        }

LABEL_27:
        *(8 * v21) |= v22;
        v19 = (v19 + 4);
        if (v19 == v18)
        {
          v19 = v56;
          if (v56)
          {
LABEL_61:
            v57 = v19;
            v37 = v19;
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_67:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&v50);
    v42 = v53;
    if (v53)
    {
      v43 = v54;
      v44 = v53;
      if (v54 != v53)
      {
        v45 = v54;
        do
        {
          v47 = *(v45 - 3);
          v45 -= 24;
          v46 = v47;
          if (v47)
          {
            *(v43 - 2) = v46;
            operator delete(v46);
          }

          v43 = v45;
        }

        while (v45 != v42);
        v44 = v53;
      }

      v54 = v42;
      operator delete(v44);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_23CA5A970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, unsigned __int8 **a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(&a20);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a23);
  if (v23)
  {
    operator delete(v23);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::AddFullEncodingFromSearchBranching(uint64_t this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 80))
  {
    v4 = this;
    v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
    v7 = *(v4 + 72);
    v6 = v4 + 72;
    v8 = v7 + 7;
    v9 = ((v7 & 1) != 0 ? v8 : v6);
    v10 = *(v6 + 8);
    if (v10)
    {
      v11 = this;
      v12 = &v9[v10];
      do
      {
        v13 = *v9;
        if (*(*v9 + 68) == 4)
        {
          v15 = *(v13 + 40);
          v14 = v13 + 40;
          v16 = v15 + 7;
          v17 = (v15 & 1) != 0 ? v16 : v14;
          v18 = *(v14 + 8);
          if (v18)
          {
            v19 = 8 * v18;
            do
            {
              v20 = **(*v17 + 24);
              if (~v20 <= v20)
              {
                v21 = **(*v17 + 24);
              }

              else
              {
                v21 = ~v20;
              }

              v22 = *(*v5 + 4 * v21);
              if (v22 != -1)
              {
                v23 = v22 ^ (v20 >> 31);
                if (*(*(v11 + 40) + 8 * v23) + *(*(v11 + 40) + ((8 * v23) ^ 8)))
                {
                  v28 = &unk_284F3BAC8;
                  v29 = v23;
                  v30 = &v28;
                  v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
                  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v24, v29))
                  {
                    operations_research::sat::IntegerEncoder::FullyEncodeVariable(v24, v29);
                  }

                  v25 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v24, v29);
                  v26 = v25[1] - *v25;
                  if (v26)
                  {
                    if ((v26 & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  this = v30;
                  if (v30 == &v28)
                  {
                    this = (*(*v30 + 4))(v30);
                  }

                  else if (v30)
                  {
                    this = (*(*v30 + 5))();
                  }
                }
              }

              v17 += 8;
              v19 -= 8;
            }

            while (v19);
          }
        }

        ++v9;
      }

      while (v9 != v12);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CA5AC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<std::vector<operations_research::sat::ValueLiteralPair> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CA5AC54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<std::vector<operations_research::sat::ValueLiteralPair> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::LoadBoolOrConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v25 = a2;
  v26 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v6 = *(this + 6);
  if (*(this + 15) != 3)
  {
    v6 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v6 + 4, &__p);
  v7 = *(this + 4);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = v28;
    v10 = 4 * v7;
    do
    {
      v11 = *v8;
      if (~*v8 <= *v8)
      {
        v12 = *v8;
      }

      else
      {
        v12 = ~v11;
      }

      v13 = (__PAIR64__(*(*(v5 + 48) + 4 * v12), v11) >> 31) ^ 1;
      if (v9 < v29)
      {
        *v9 = v13;
        v9 += 4;
      }

      else
      {
        v14 = __p;
        v15 = v9 - __p;
        v16 = (v9 - __p) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v18 = v29 - __p;
        if ((v29 - __p) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v16;
        v21 = (4 * v16);
        v22 = &v21[-v20];
        *v21 = v13;
        v9 = (v21 + 1);
        memcpy(v22, v14, v15);
        __p = v22;
        v28 = v9;
        v29 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      v28 = v9;
      ++v8;
      v10 -= 4;
    }

    while (v10);
  }

  else
  {
    v9 = v28;
  }

  operations_research::sat::SatSolver::AddProblemClause(v26, __p, (v9 - __p) >> 2, 0);
  v23 = __p;
  if (v28 - __p == 12)
  {
    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(v25);
    operations_research::sat::ProductDetector::ProcessTernaryClause(v24, __p, (v28 - __p) >> 2);
    v23 = __p;
  }

  if (v23)
  {
    v28 = v23;
    operator delete(v23);
  }
}

void sub_23CA5AE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    if ((*a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA5AF3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadBoolAndConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 4))
  {
    v4 = *(this + 3);
    if (~*v4 <= *v4)
    {
      v5 = *v4;
    }

    operator new();
  }

  v6 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v8 = *(this + 6);
  if (*(this + 15) != 4)
  {
    v8 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v8 + 4, &v14);
  v9 = v14;
  v10 = v15;
  if (v14 != v15)
  {
    do
    {
      v11 = v6;
      v12 = v6 >> 2;
      if ((v12 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v12 != -1)
      {
        if (!((v12 + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFFC] = *v9;
      memcpy(0, 0, v11);
      operations_research::sat::SatSolver::AddProblemClause(v7, 0, 0, 0);
      v6 = -4;
      ++v9;
    }

    while (v9 != v10);
    v9 = v14;
  }

  if (v9)
  {
    v15 = v9;
    operator delete(v9);
  }
}

void sub_23CA5B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!v13)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadAtMostOneConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 26)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &__p);
    operations_research::sat::AtMostOneConstraint(&__p, v6);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1021);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
}

void sub_23CA5B3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadExactlyOneConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 29)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &v5);
    operations_research::sat::ExactlyOneConstraint(&v5, v6);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1027);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v5, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v5);
}

void sub_23CA5B5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadBoolXorConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (!*(this + 4))
  {
    v4 = *(this + 6);
    if (*(this + 15) != 5)
    {
      v4 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v4 + 4, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0;
    operator new();
  }

  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1037);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Not supported.", 0xEuLL);
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
}

void sub_23CA5B8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    operator delete(v14);
    v16 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SplitAndLoadIntermediateConstraints(char a1, char a2, char **a3, char **a4, void *a5)
{
  v117 = *MEMORY[0x277D85DE8];
  v9 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a5) + 284);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v103 = a3;
  v12 = a3;
  v11 = *a3;
  v10 = v12[1];
  v105 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v13 = (v10 - v11) >> 2;
  v14 = llround(sqrt(v13));
  v15 = v14;
  if (v14 < 1)
  {
    v98 = 0;
    v99 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_126;
  }

  v98 = 0;
  v99 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v95 = v9 | a2;
  v96 = v9 | a1;
  v97 = v13;
  v106 = v14;
  while (2)
  {
    v112 = v111;
    v109 = v108;
    v102 = v17 + 1;
    v107 = (v17 + 1) * v13;
    if (v16 * v15 >= v107)
    {
      goto LABEL_4;
    }

    v100 = v19;
    v101 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v30 = *&(*a4)[8 * v16];
      if (v30 >= 0)
      {
        v31 = *&(*a4)[8 * v16];
      }

      else
      {
        v31 = -v30;
      }

      if (v22 >= 0)
      {
        v32 = v22;
      }

      else
      {
        v32 = -v22;
      }

      if (v32 >= v31)
      {
        v22 = v31;
      }

      else
      {
        v22 = v32;
      }

      if (v32 > v31)
      {
        v31 = v32;
      }

      if (v22)
      {
        v33 = v31 % v22;
        if (v33)
        {
          v34 = v33 >> __clz(__rbit64(v33));
          v35 = v22;
          do
          {
            v36 = v35 >> __clz(__rbit64(v35));
            v35 = v36 - v34;
            if (v34 > v36)
            {
              v35 = v34 - v36;
            }

            if (v34 >= v36)
            {
              v34 = v36;
            }
          }

          while (v35);
          v22 = v34 << __clz(__rbit64(v33 | v22));
        }

        v37 = *&(*v103)[4 * v16];
        v39 = v112;
        v38 = v113;
        if (v112 < v113)
        {
LABEL_36:
          *v39 = v37;
          v40 = v39 + 4;
          goto LABEL_49;
        }
      }

      else
      {
        v22 = v31;
        v37 = *&(*v103)[4 * v16];
        v39 = v112;
        v38 = v113;
        if (v112 < v113)
        {
          goto LABEL_36;
        }
      }

      v41 = v111;
      v42 = v39 - v111;
      v43 = (v39 - v111) >> 2;
      v44 = v43 + 1;
      if ((v43 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v45 = v38 - v111;
      if (v45 >> 1 > v44)
      {
        v44 = v45 >> 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v46 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        if (!(v46 >> 62))
        {
          operator new();
        }

LABEL_131:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v47 = (v39 - v111) >> 2;
      v48 = (4 * v43);
      v49 = (4 * v43 - 4 * v47);
      *v48 = v37;
      v40 = (v48 + 1);
      memcpy(v49, v41, v42);
      v111 = v49;
      v112 = v40;
      v113 = 0;
      if (v41)
      {
        operator delete(v41);
      }

LABEL_49:
      v112 = v40;
      v50 = v109;
      if (v109 < v110)
      {
        *v109 = v30;
        v23 = v50 + 8;
      }

      else
      {
        v51 = v108;
        v52 = v109 - v108;
        v53 = (v109 - v108) >> 3;
        v54 = v53 + 1;
        if ((v53 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v55 = v110 - v108;
        if ((v110 - v108) >> 2 > v54)
        {
          v54 = v55 >> 2;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFF8)
        {
          v56 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          if (!(v56 >> 61))
          {
            operator new();
          }

          goto LABEL_131;
        }

        *(8 * v53) = v30;
        v23 = (8 * v53 + 8);
        memcpy(0, v51, v52);
        v108 = 0;
        v109 = v23;
        v110 = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      v109 = v23;
      v24 = *(v105 + 40);
      v25 = 8 * v37;
      v26 = *(v24 + v25) * v30;
      v27 = v30 * *(v24 + (v25 ^ 8));
      if (v26 >= -v27)
      {
        v28 = -v27;
      }

      else
      {
        v28 = v26;
      }

      v21 += v28;
      if (v26 <= -v27)
      {
        v29 = -v27;
      }

      else
      {
        v29 = v26;
      }

      v20 += v29;
      ++v16;
      v15 = v106;
    }

    while (v16 * v106 < v107);
    if (!v22)
    {
      v19 = v100;
      v18 = v101;
      v13 = v97;
      goto LABEL_4;
    }

    if (v22 >= 2)
    {
      if (v108 == v23)
      {
        goto LABEL_71;
      }

      if (v23 - v108 == 8)
      {
        v58 = v108;
      }

      else
      {
        v57 = ((v23 - v108 - 8) >> 3) + 1;
        v58 = (v108 + 8 * (v57 & 0x3FFFFFFFFFFFFFFELL));
        v59 = (v108 + 8);
        v60 = v57 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v61 = *v59 / v22;
          *(v59 - 1) /= v22;
          *v59 = v61;
          v59 += 2;
          v60 -= 2;
        }

        while (v60);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_71:
          v21 /= v22;
          v20 /= v22;
          goto LABEL_72;
        }
      }

      do
      {
        *v58++ /= v22;
      }

      while (v58 != v23);
      goto LABEL_71;
    }

LABEL_72:
    v62 = operations_research::sat::IntegerTrail::AddIntegerVariable(v105, v21, v20);
    v13 = v97;
    v63 = v62;
    v67 = (v99 - v101) >> 2;
    v68 = v67 + 1;
    if ((v67 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (-v101 >> 1 > v68)
    {
      v68 = -v101 >> 1;
    }

    if (-v101 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v69 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v69 = v68;
    }

    if (v69)
    {
      if (!(v69 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v70 = (4 * v67);
    *v70 = v62;
    memcpy(0, v101, v99 - v101);
    v18 = 0;
    v99 = (v70 + 1);
    v71 = v98 - v100;
    v72 = (v98 - v100) >> 3;
    v73 = v72 + 1;
    if ((v72 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (-v100 >> 2 > v73)
    {
      v73 = -v100 >> 2;
    }

    if (-v100 >= 0x7FFFFFFFFFFFFFF8)
    {
      v74 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    if (v74)
    {
      if (!(v74 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v72) = v22;
    v98 = 8 * v72 + 8;
    memcpy(0, v100, v71);
    v19 = 0;
    v15 = v106;
    v75 = v112;
    if (v112 < v113)
    {
      *v112 = v63;
      v112 = v75 + 4;
      v65 = v109;
      v64 = v110;
      if (v109 >= v110)
      {
        goto LABEL_107;
      }

LABEL_74:
      *v65 = -1;
      v66 = v65 + 8;
      v109 = v66;
      if (v96)
      {
        goto LABEL_119;
      }

      goto LABEL_123;
    }

    v76 = v111;
    v77 = v112 - v111;
    v78 = (v112 - v111) >> 2;
    v79 = v78 + 1;
    if ((v78 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v80 = v113 - v111;
    if ((v113 - v111) >> 1 > v79)
    {
      v79 = v80 >> 1;
    }

    if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v81 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v81 = v79;
    }

    if (v81)
    {
      if (!(v81 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v82 = (4 * v78);
    v83 = &v82[-((v112 - v111) >> 2)];
    *v82 = v63;
    v84 = (v82 + 1);
    memcpy(v83, v76, v77);
    v111 = v83;
    v112 = v84;
    v113 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    v15 = v106;
    v112 = v84;
    v65 = v109;
    v64 = v110;
    if (v109 < v110)
    {
      goto LABEL_74;
    }

LABEL_107:
    v85 = v108;
    v86 = v65 - v108;
    v87 = (v65 - v108) >> 3;
    v88 = v87 + 1;
    if ((v87 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v89 = v64 - v108;
    if (v89 >> 2 > v88)
    {
      v88 = v89 >> 2;
    }

    if (v89 >= 0x7FFFFFFFFFFFFFF8)
    {
      v90 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v90 = v88;
    }

    if (v90)
    {
      if (!(v90 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v91 = (v65 - v108) >> 3;
    v92 = (8 * v87);
    v93 = (8 * v87 - 8 * v91);
    *v92 = -1;
    v66 = (v92 + 1);
    memcpy(v93, v85, v86);
    v108 = v93;
    v109 = v66;
    v110 = 0;
    if (v85)
    {
      operator delete(v85);
    }

    v15 = v106;
    v109 = v66;
    if (v96)
    {
LABEL_119:
      memset(__p, 0, sizeof(__p));
      if (v66 != v108)
      {
        if (((v66 - v108) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v111, __p, v116);
    }

LABEL_123:
    if (v95)
    {
      operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v111, &v108, v115);
    }

LABEL_4:
    v17 = v102;
    if (v102 != v15)
    {
      continue;
    }

    break;
  }

LABEL_126:
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v103, v18, v99, (v99 - v18) >> 2);
  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, v19, v98, (v98 - v19) >> 3);
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void sub_23CA5C48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
    v33 = a27;
    if (a27)
    {
LABEL_8:
      operator delete(v33);
      if (v32)
      {
LABEL_9:
        operator delete(v32);
        if (v31)
        {
LABEL_10:
          operator delete(v31);
          _Unwind_Resume(exception_object);
        }

LABEL_5:
        _Unwind_Resume(exception_object);
      }

LABEL_4:
      if (v31)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v33 = a27;
    if (a27)
    {
      goto LABEL_8;
    }
  }

  if (v32)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

void operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      v5 = v4 - *a1;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a3 + 24) = 0;
  operator new();
}

void sub_23CA5C6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  operations_research::sat::LinearExpr::~LinearExpr(&a10);
  _Unwind_Resume(a1);
}

void sub_23CA5C704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA5C718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadLinearConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v290 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = v4;
  v256 = v4;
  v259 = this;
  if (*(this + 15) == 12)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 4);
    if (v8)
    {
      v253 = (this + 16);
      v9 = v8 <= 2 && *(this + 4) == 1;
      if (!v9)
      {
        goto LABEL_57;
      }

      if (*(v7 + 16) != 2)
      {
        goto LABEL_57;
      }

      v10 = v7[9];
      if (*v10 || v10[1])
      {
        goto LABEL_57;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (off_2810BEE58)
    {
      v253 = (this + 16);
      v11 = off_2810BEE58 <= 2 && *(this + 4) == 1;
      if (!v11 || dword_2810BEE88 != 2 || *off_2810BEE90 || *(off_2810BEE90 + 1))
      {
        goto LABEL_57;
      }

      v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_22:
      v12 = *(v7 + 10);
      if (v12)
      {
        v13 = v7[6];
        v14 = 8 * v12;
        while (1)
        {
          v15 = *v13;
          if (*v13 < 0)
          {
            v15 = -v15;
          }

          if (v15 != 1)
          {
            break;
          }

          ++v13;
          v14 -= 8;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

LABEL_57:
        __src = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
        v34 = *(this + 6);
        if (*(this + 15) != 12)
        {
          v34 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(v34 + 4, &v270);
        v35 = *(this + 6);
        if (*(this + 15) != 12)
        {
          v35 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v36 = *(v35 + 10);
        v37 = v35[6];
        v268 = 0;
        v269 = 0;
        v267 = 0;
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v271 == v270)
        {
          v40 = 0;
          v39 = 0;
          v43 = 0;
          v47 = 1;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = *(this + 15);
          v42 = *(this + 6);
          v43 = 0;
          if (v41 == 12)
          {
            v44 = v42;
          }

          else
          {
            v44 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          v45 = __src[5];
          v46 = 1;
          LOBYTE(v47) = 1;
          do
          {
            if (v47)
            {
              v48 = *(v44[3] + v38);
              if (~v48 > v48)
              {
                v48 = ~v48;
              }

              v47 = *(v6[6] + 4 * v48) != -1;
            }

            else
            {
              v47 = 0;
            }

            v49 = 8 * *(v270 + v38);
            v50 = *(v45 + v49);
            v51 = *(v45 + (v49 ^ 8));
            if (v40 <= 1 - (v50 + v51))
            {
              v40 = 1 - (v50 + v51);
            }

            v52 = *(8 * v38);
            v53 = v52 * v50;
            v54 = v51 * v52;
            v55 = -(v51 * v52);
            if (v55 < v53)
            {
              v56 = -v54;
            }

            else
            {
              v56 = v53;
            }

            v43 += v56;
            if (v53 <= v55)
            {
              v57 = -v54;
            }

            else
            {
              v57 = v53;
            }

            v39 += v57;
            v38 = v46++;
          }

          while ((v271 - v270) >> 2 > v38);
        }

        v58 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
        v257 = v39;
        v258 = v43;
        v59 = *v253;
        v252 = v58;
        if (*(v58 + 755) != 1 || v59 != 1)
        {
LABEL_110:
          if (!v59)
          {
            v85 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
            v86 = v85;
            v87 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v259 + 15) == 12)
            {
              v87 = *(v259 + 6);
            }

            v88 = v87[9];
            v89 = *v88;
            v90 = v88[*(v87 + 16) - 1];
            v91 = v258;
            if (v89 > v258)
            {
              v91 = v89;
            }

            v263 = v91;
            if (v257 >= v90)
            {
              v92 = v90;
            }

            else
            {
              v92 = v257;
            }

            v93 = (v271 - v270) >> 2;
            if (v93 == 2)
            {
              v163 = *v267;
              v164 = vabsq_s64(*v267);
              v165 = v164.i64[0];
              if (v164.i64[0] == v164.i64[1])
              {
                v166 = *v270 ^ (v163.i64[0] >> 63);
                v167 = *(v270 + 1) ^ (v163.i64[1] > 0);
                if ((v164.i64[0] ^ -v92) < 0 || -v92 % v164.i64[0] == 0)
                {
                  v169 = -v92 / v164.i64[0];
                }

                else
                {
                  v169 = -v92 / v164.i64[0] + 1;
                }

                operations_research::sat::PrecedenceRelations::Add(v85, *v270 ^ (v163.i64[0] >> 63), v167, v169);
                if ((v165 ^ v263) < 0 || v263 % v165 == 0)
                {
                  v171 = v263 / v165;
                }

                else
                {
                  v171 = v263 / v165 + 1;
                }

                operations_research::sat::PrecedenceRelations::Add(v86, v167, v166, v171);
              }
            }

            else if (v93 == 3)
            {
              v94 = 0;
              for (i = 0; ; ++i)
              {
                v102 = v267;
                if (!v94)
                {
                  goto LABEL_175;
                }

                v103 = *(v267 + i);
                if (v103 >= 0)
                {
                  v104 = *(v267 + i);
                }

                else
                {
                  v104 = -v103;
                }

                v105 = *v267;
                if (*v267 >= 0)
                {
                  v106 = *v267;
                }

                else
                {
                  v106 = -v105;
                }

                if (v104 == v106)
                {
                  v107 = v105 > 0;
                  v108 = *(v267 + v94 + 3);
                  v109 = __src[5];
                  if (v108 < 1)
                  {
                    v110 = -*(v109 + ((8 * *(v270 + v94 + 3)) ^ 8));
                  }

                  else
                  {
                    v110 = *(v109 + 8 * *(v270 + v94 + 3));
                  }

                  v111 = *(v270 + i) ^ (v103 >> 63);
                  v112 = *v270 ^ v107;
                  v113 = v110 * v108 - v92;
                  v114 = v113 / v104;
                  v9 = v113 % v104 == 0;
                  v115 = v113 ^ v104;
                  if (v9 || v115 < 0)
                  {
                    v117 = v114;
                  }

                  else
                  {
                    v117 = v114 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v86, v111, v112, v117);
                  v118 = __src[5];
                  if (v108 < 1)
                  {
                    v119 = *(v118 + 8 * *(v270 + v94 + 3));
                  }

                  else
                  {
                    v119 = -*(v118 + ((8 * *(v270 + v94 + 3)) ^ 8));
                  }

                  v120 = v263 - v119 * v108;
                  v121 = v120 / v104;
                  v9 = v120 % v104 == 0;
                  v122 = v120 ^ v104;
                  if (v9 || v122 < 0)
                  {
                    v124 = v121;
                  }

                  else
                  {
                    v124 = v121 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v86, v112, v111, v124);
                  v6 = v256;
                  v102 = v267;
                }

                if (v94 != -1)
                {
LABEL_175:
                  v125 = v102[i];
                  if (v125 >= 0)
                  {
                    v126 = v102[i];
                  }

                  else
                  {
                    v126 = -v125;
                  }

                  v127 = v102[1];
                  if (v127 >= 0)
                  {
                    v128 = v102[1];
                  }

                  else
                  {
                    v128 = -v127;
                  }

                  if (v126 == v128)
                  {
                    v129 = v127 > 0;
                    v130 = v102[v94 + 2];
                    v131 = __src[5];
                    if (v130 <= 0)
                    {
                      v132 = -*(v131 + ((8 * *(v270 + v94 + 2)) ^ 8));
                    }

                    else
                    {
                      v132 = *(v131 + 8 * *(v270 + v94 + 2));
                    }

                    v133 = *(v270 + i) ^ (v125 >> 63);
                    v134 = *(v270 + 1) ^ v129;
                    v135 = v132 * v130 - v92;
                    v136 = v135 / v126;
                    v9 = v135 % v126 == 0;
                    v137 = v135 ^ v126;
                    if (v9 || v137 < 0)
                    {
                      v139 = v136;
                    }

                    else
                    {
                      v139 = v136 + 1;
                    }

                    operations_research::sat::PrecedenceRelations::Add(v86, v133, v134, v139);
                    v140 = __src[5];
                    if (v130 <= 0)
                    {
                      v141 = *(v140 + 8 * *(v270 + v94 + 2));
                    }

                    else
                    {
                      v141 = -*(v140 + ((8 * *(v270 + v94 + 2)) ^ 8));
                    }

                    v142 = v263 - v141 * v130;
                    v143 = v142 / v126;
                    v9 = v142 % v126 == 0;
                    v144 = v142 ^ v126;
                    if (v9 || v144 < 0)
                    {
                      v146 = v143;
                    }

                    else
                    {
                      v146 = v143 + 1;
                    }

                    operations_research::sat::PrecedenceRelations::Add(v86, v134, v133, v146);
                    v6 = v256;
                  }

                  if (v94 == -2)
                  {
                    goto LABEL_111;
                  }

                  v102 = v267;
                }

                v147 = v102[i];
                if (v147 >= 0)
                {
                  v148 = v102[i];
                }

                else
                {
                  v148 = -v147;
                }

                v149 = v102[2];
                if (v149 >= 0)
                {
                  v150 = v102[2];
                }

                else
                {
                  v150 = -v149;
                }

                if (v148 == v150)
                {
                  v151 = v149 > 0;
                  v152 = v102[v94 + 1];
                  v153 = __src[5];
                  if (v152 <= 0)
                  {
                    v154 = -*(v153 + ((8 * *(v270 + v94 + 1)) ^ 8));
                  }

                  else
                  {
                    v154 = *(v153 + 8 * *(v270 + v94 + 1));
                  }

                  v155 = *(v270 + i) ^ (v147 >> 63);
                  v156 = *(v270 + 2) ^ v151;
                  v157 = v154 * v152 - v92;
                  v158 = v157 / v148;
                  v9 = v157 % v148 == 0;
                  v159 = v157 ^ v148;
                  if (v9 || v159 < 0)
                  {
                    v161 = v158;
                  }

                  else
                  {
                    v161 = v158 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v86, v155, v156, v161);
                  v162 = __src[5];
                  if (v152 > 0)
                  {
                    v96 = -*(v162 + ((8 * *(v270 + v94 + 1)) ^ 8));
                  }

                  else
                  {
                    v96 = *(v162 + 8 * *(v270 + v94 + 1));
                  }

                  v97 = v263 - v96 * v152;
                  v98 = v97 / v148;
                  v9 = v97 % v148 == 0;
                  v99 = v97 ^ v148;
                  if (v9 || v99 < 0)
                  {
                    v101 = v98;
                  }

                  else
                  {
                    v101 = v98 + 1;
                  }

                  operations_research::sat::PrecedenceRelations::Add(v86, v156, v155, v101);
                  v6 = v256;
                }

                --v94;
              }
            }
          }

          goto LABEL_111;
        }

        if ((v271 - v270) > 8)
        {
LABEL_111:
          v75 = v259;
          v76 = *(v259 + 15);
          v77 = *(v259 + 6);
          if (v76 != 12)
          {
            v77 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          if (*(v77 + 4) != 2 || (v78 = __src[5], !(*(v78 + 8 * *v270) + *(v78 + ((8 * *v270) ^ 8)))) || (*(v78 + 8 * *(v270 + 1)) + *(v78 + ((8 * *(v270 + 1)) ^ 8)) ? (v79 = v40 <= *(v252 + 768)) : (v79 = 0), !v79))
          {
LABEL_287:
            if (*v253)
            {
              goto LABEL_291;
            }

            v196 = *(v259 + 6);
            if (v76 != 12)
            {
              v196 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            }

            if (*(v196 + 16) != 2 || !v47)
            {
LABEL_291:
              if (v76 == 12)
              {
                v197 = *(v259 + 6);
                if (*(v197 + 4) <= *(v252 + 884))
                {
                  v198 = *(v197 + 16);
                  if (v198 != 2)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_308;
                }
              }

              else
              {
                v197 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                if (off_2810BEE58 <= *(v252 + 884))
                {
                  goto LABEL_307;
                }
              }

              if (*(v197 + 16) <= 2)
              {
                v201 = v197[9];
                v199 = v258 < *v201;
                v200 = v257 > v201[1];
              }

              else
              {
                v199 = 1;
                v200 = 1;
              }

              operations_research::sat::SplitAndLoadIntermediateConstraints(v199, v200, &v270, &v267, a2);
              v76 = *(v259 + 15);
            }

            if (v76 == 12)
            {
              v197 = *(v259 + 6);
              v198 = *(v197 + 16);
              if (v198 != 2)
              {
LABEL_294:
                if (*v253 || v198 != 4)
                {
                  v255 = 0;
                  v260 = v271 - v270 == 4 && *v267 == 1;
                }

                else
                {
                  v260 = 0;
                  v255 = 1;
                }

                v254 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
                v206 = 0;
                v207 = 0;
                for (j = 0; ; j += 2)
                {
                  while (1)
                  {
                    if (*(v259 + 15) == 12)
                    {
                      v209 = *(v259 + 6);
                      if (j >= *(v209 + 64))
                      {
                        goto LABEL_382;
                      }

                      v210 = (*(v209 + 72) + 8 * j);
                      v212 = *v210;
                      v211 = v210[1];
                      if (!v260)
                      {
LABEL_335:
                        v219 = v255;
                        if (j <= 0)
                        {
                          v219 = 0;
                        }

                        if (v219 == 1)
                        {
                          v220 = *(v207 - 4) ^ 1;
                          if (v207 >= v206)
                          {
                            goto LABEL_339;
                          }

LABEL_352:
                          *v207 = v220;
                        }

                        else
                        {
                          v288[0] = &unk_284F3D550;
                          v289 = v288;
                          v223 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                          v224 = *(v223 + 4);
                          operations_research::sat::SatSolver::SetNumVariables(v223, v224 + 1);
                          v220 = 2 * v224;
                          if (v289 == v288)
                          {
                            (*(*v289 + 32))(v289);
                            if (v207 < v206)
                            {
                              goto LABEL_352;
                            }
                          }

                          else
                          {
                            if (v289)
                            {
                              (*(*v289 + 40))();
                            }

                            if (v207 < v206)
                            {
                              goto LABEL_352;
                            }
                          }

LABEL_339:
                          v221 = (v207 >> 2) + 1;
                          if (v221 >> 62)
                          {
                            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                          }

                          if (v206 >> 1 > v221)
                          {
                            v221 = v206 >> 1;
                          }

                          if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v222 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v222 = v221;
                          }

                          if (v222)
                          {
                            if (!(v222 >> 62))
                            {
                              operator new();
                            }

                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          *(4 * (v207 >> 2)) = v220;
                          memcpy(0, 0, v207);
                        }

                        operator new();
                      }
                    }

                    else
                    {
                      if (j >= dword_2810BEE88)
                      {
LABEL_382:
                        v261 = v206;
                        operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v253, &v277);
                        if (*(v252 + 284) == 1 && v277 != __p)
                        {
                          if (__p - v277 != 4)
                          {
                            v286[0] = &unk_284F3D550;
                            v287 = v286;
                            v233 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                            v234 = *(v233 + 4);
                            operations_research::sat::SatSolver::SetNumVariables(v233, v234 + 1);
                            v235 = 2 * v234;
                            if (v287 == v286)
                            {
                              (*(*v287 + 32))(v287);
                            }

                            else if (v287)
                            {
                              (*(*v287 + 40))();
                            }

                            if (v277 != __p)
                            {
                              v236 = *v277 ^ 1;
                              v283 = &unk_284F3D130;
                              v284 = ((v235 | 1u) << 32) | v236;
                              v285 = &v283;
                              v237 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                              operations_research::sat::SatSolver::AddBinaryClause(v237, v284 ^ 1, SHIDWORD(v284));
                              if (v285 == &v283)
                              {
                                (*(*v285 + 4))(v285);
                              }

                              else if (v285)
                              {
                                (*(*v285 + 5))();
                              }

                              operator new();
                            }

                            operator new();
                          }

                          v228 = *v277;
                        }

                        if (v255)
                        {
                          v238 = v277;
                          if (!v277)
                          {
                            goto LABEL_434;
                          }

LABEL_431:
                          __p = v238;
                          operator delete(v238);
                        }

                        else
                        {
                          v239 = v277;
                          v240 = __p;
                          if (v277 != __p)
                          {
                            do
                            {
                              while (1)
                              {
                                v241 = *v239 ^ 1;
                                if (v207 >= v261)
                                {
                                  break;
                                }

                                *v207 = v241;
                                v207 += 4;
                                if (++v239 == v240)
                                {
                                  goto LABEL_427;
                                }
                              }

                              v242 = v207;
                              v243 = v207 >> 2;
                              v244 = v243 + 1;
                              if ((v243 + 1) >> 62)
                              {
                                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                              }

                              if (v261 >> 1 > v244)
                              {
                                v244 = v261 >> 1;
                              }

                              if (v261 >= 0x7FFFFFFFFFFFFFFCLL)
                              {
                                v245 = 0x3FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v245 = v244;
                              }

                              if (v245)
                              {
                                if (!(v245 >> 62))
                                {
                                  operator new();
                                }

                                std::__throw_bad_array_new_length[abi:ne200100]();
                              }

                              v246 = (4 * v243);
                              v261 = 0;
                              *v246 = v241;
                              v207 = (v246 + 1);
                              memcpy(0, 0, v242);
                              ++v239;
                            }

                            while (v239 != v240);
                          }

LABEL_427:
                          v279 = &unk_284F3BBD8;
                          v280 = 0;
                          v281 = v207 >> 2;
                          v282 = &v279;
                          v247 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                          operations_research::sat::SatSolver::AddProblemClause(v247, v280, v281, 0);
                          if (v282 == &v279)
                          {
                            (*(*v282 + 4))(v282);
                            v238 = v277;
                            if (v277)
                            {
                              goto LABEL_431;
                            }
                          }

                          else
                          {
                            if (v282)
                            {
                              (*(*v282 + 5))(v282);
                            }

                            v238 = v277;
                            if (v277)
                            {
                              goto LABEL_431;
                            }
                          }
                        }

LABEL_434:
                        if (v267)
                        {
                          v268 = v267;
                          operator delete(v267);
                        }

                        v28 = v270;
                        if (v270)
                        {
                          v271 = v270;
LABEL_438:
                          operator delete(v28);
                        }

                        goto LABEL_439;
                      }

                      v213 = (off_2810BEE90 + 8 * j);
                      v212 = *v213;
                      v211 = v213[1];
                      if (!v260)
                      {
                        goto LABEL_335;
                      }
                    }

                    if (v212 != v211)
                    {
                      break;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v254, *v270, v212);
                    if (v207 >= v206)
                    {
                      v215 = v207;
                      v216 = v207 >> 2;
                      v217 = (v207 >> 2) + 1;
                      if (v217 >> 62)
                      {
                        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                      }

                      if (v206 >> 1 > v217)
                      {
                        v217 = v206 >> 1;
                      }

                      if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v218 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v218 = v217;
                      }

                      if (v218)
                      {
                        if (!(v218 >> 62))
                        {
                          operator new();
                        }

                        std::__throw_bad_array_new_length[abi:ne200100]();
                      }

                      goto LABEL_381;
                    }

LABEL_371:
                    *v207 = LiteralAssociatedToEquality;
                    v207 += 4;
                    j += 2;
                  }

                  if (v258 >= v212)
                  {
                    if (v211 >= 0x8000000000000002)
                    {
                      v225 = -v211;
                    }

                    else
                    {
                      v225 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v254, *v270 ^ 1u, v225);
                    if (v207 < v206)
                    {
                      goto LABEL_371;
                    }

                    v215 = v207;
                    v216 = v207 >> 2;
                    v226 = (v207 >> 2) + 1;
                    if (v226 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (v206 >> 1 > v226)
                    {
                      v226 = v206 >> 1;
                    }

                    if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v218 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v218 = v226;
                    }

                    if (v218)
                    {
                      if (!(v218 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }
                  }

                  else
                  {
                    if (v257 > v211)
                    {
                      goto LABEL_335;
                    }

                    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v254, *v270, v212);
                    if (v207 < v206)
                    {
                      goto LABEL_371;
                    }

                    v215 = v207;
                    v216 = v207 >> 2;
                    v227 = (v207 >> 2) + 1;
                    if (v227 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (v206 >> 1 > v227)
                    {
                      v227 = v206 >> 1;
                    }

                    if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v218 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v218 = v227;
                    }

                    if (v218)
                    {
                      if (!(v218 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }
                  }

LABEL_381:
                  v206 = 4 * v218;
                  *(4 * v216) = LiteralAssociatedToEquality;
                  v207 = 4 * v216 + 4;
                  memcpy(0, 0, v215);
                }
              }

LABEL_308:
              v202 = v197[9];
              v204 = *v202;
              v203 = v202[1];
              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v253, &v277);
              v205 = v257;
              if (v47 && v277 == __p)
              {
                v274 = 0;
                v275 = 0;
                v276 = 0;
                if (v271 != v270)
                {
                  if (*(v259 + 15) == 12)
                  {
                    v229 = *(v259 + 6);
                  }

                  else
                  {
                    v229 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                  }

                  v230 = *v229[3];
                  v231 = *v267;
                  operator new();
                }

                v232 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
                operations_research::sat::SatSolver::AddLinearConstraint(v232, v258 < v204, v204, v257 > v203, v203, &v274);
                if (v274)
                {
                  v275 = v274;
                  operator delete(v274);
                }
              }

              else
              {
                if (v258 < v204)
                {
                  if (v268 != v267)
                  {
                    if (((v268 - v267) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  operations_research::sat::AddWeightedSumLowerOrEqual(v277, (__p - v277) >> 2, v270, (v271 - v270) >> 2, 0, 0, -v204, a2);
                  v205 = v257;
                }

                if (v205 > v203)
                {
                  operations_research::sat::AddWeightedSumLowerOrEqual(v277, (__p - v277) >> 2, v270, (v271 - v270) >> 2, v267, (v268 - v267) >> 3, v203, a2);
                }
              }

              v174 = v277;
              if (!v277)
              {
                goto LABEL_434;
              }

              __p = v277;
              goto LABEL_433;
            }

LABEL_307:
            v198 = dword_2810BEE88;
            v197 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (dword_2810BEE88 != 2)
            {
              goto LABEL_294;
            }

            goto LABEL_308;
          }

          v80 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
          if (*(v252 + 584) < 1)
          {
            goto LABEL_286;
          }

          v81 = v80;
          v82 = *(v259 + 15);
          if (v82 == 12)
          {
            v83 = *(v259 + 6);
          }

          else
          {
            v83 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          if (*(v83 + 16) == 2 && *v83[9] == v83[9][1])
          {
            v84 = v82 == 12 ? *(*(v259 + 6) + 72) : off_2810BEE90;
            v172 = *v84;
            if (v258 != v172 && v257 != v172 && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v80, *v270) && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v81, *(v270 + 1)))
            {
              if (dword_2810BFC68 >= 3)
              {
                v75 = v259;
                if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFC60, dword_2810BFC68))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v277, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1346);
                  v251 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v277, 3);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v251, "Load AC version of ", 0x13uLL);
                  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v251, v259);
                }
              }

              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v253, v266);
              if (*(v75 + 15) == 12)
              {
                v173 = *(v75 + 6);
              }

              else
              {
                v173 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              }

              v174 = v266[0];
              if (!v266[0])
              {
                goto LABEL_434;
              }

              v266[1] = v266[0];
              goto LABEL_433;
            }
          }

          if (*(v252 + 584) < 1)
          {
LABEL_286:
            v76 = *(v259 + 15);
            goto LABEL_287;
          }

          if (*(v259 + 15) == 12)
          {
            v175 = *(v259 + 6);
          }

          else
          {
            v175 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          v176 = *(v175 + 4);
          if (v176 < 1)
          {
            v177 = 0;
            v178 = 0;
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = v175[6];
            v180 = v175[3];
            v181 = __src[5];
            do
            {
              v183 = *v179++;
              v182 = v183;
              LODWORD(v183) = *v180;
              v180 = (v180 + 4);
              v184 = v183;
              if (~v183 <= v183)
              {
                v185 = v184;
              }

              else
              {
                v185 = ~v184;
              }

              v186 = 8 * (*(*v6 + 4 * v185) ^ (v184 >> 31));
              v187 = *(v181 + v186);
              v188 = *(v181 + (v186 ^ 8));
              if (v182 < 0)
              {
                v189 = -v188;
              }

              else
              {
                v189 = v187;
              }

              if (v182 >= 0)
              {
                v190 = -v188;
              }

              else
              {
                v190 = v187;
              }

              v177 += v189 * v182;
              v178 += v190 * v182;
              --v176;
            }

            while (v176);
          }

          operations_research::Domain::Domain(&v274, v177, v178);
          operations_research::Domain::FromFlatSpanOfIntervals(v175[9], *(v175 + 16), v272, v191);
          operations_research::Domain::Complement(v272, v273);
          operations_research::Domain::IntersectionWith(&v274, v273, &v277);
          if (v273[0])
          {
            operator delete(v273[1]);
            if ((v272[0] & 1) == 0)
            {
LABEL_266:
              if ((v274 & 1) == 0)
              {
                goto LABEL_268;
              }

              goto LABEL_267;
            }
          }

          else if ((v272[0] & 1) == 0)
          {
            goto LABEL_266;
          }

          operator delete(v272[1]);
          if ((v274 & 1) == 0)
          {
LABEL_268:
            if (operations_research::Domain::IsEmpty(&v277))
            {
              v192 = 0;
              v193 = 0;
            }

            else
            {
              v194 = operations_research::Domain::Min(&v277);
              v195 = operations_research::Domain::Size(&v277);
              v193 = v195 == 1;
              if (v195 == 1)
              {
                v192 = v194;
              }

              else
              {
                v192 = 0;
              }
            }

            if (v277)
            {
              operator delete(__p);
            }

            if (v193 && v258 != v192 && v257 != v192 && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v81, *v270) && operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v81, *(v270 + 1)))
            {
              if (dword_2810BFC80 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFC78, dword_2810BFC80))
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(&v277, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1362);
                v250 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v277, 3);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v250, "Load NAC version of ", 0x14uLL);
                absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v250, v259);
              }

              operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v253, v265);
              v174 = v265[0];
              if (!v265[0])
              {
                goto LABEL_434;
              }

              v265[1] = v265[0];
LABEL_433:
              operator delete(v174);
              goto LABEL_434;
            }

            goto LABEL_286;
          }

LABEL_267:
          operator delete(v275);
          goto LABEL_268;
        }

        if (*(v259 + 15) == 12)
        {
          v60 = *(v259 + 6);
        }

        else
        {
          v60 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        v61 = v60[9];
        v62 = v61[*(v60 + 16) - 1];
        if (*v61 <= v43)
        {
          v63 = v43;
        }

        else
        {
          v63 = *v61;
        }

        if (v39 >= v62)
        {
          v64 = v62;
        }

        else
        {
          v64 = v39;
        }

        v65 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(a2);
        v67 = **(v259 + 3);
        if (~v67 <= v67)
        {
          v68 = **(v259 + 3);
        }

        else
        {
          v68 = ~v67;
        }

        v69 = *(v6[6] + 4 * v68);
        if (*(v259 + 15) == 12)
        {
          v70 = *(v259 + 6);
        }

        else
        {
          v70 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(v70[9], *(v70 + 16), &v277, v66);
        v71 = (v271 - v270) >> 2;
        if (v71 == 2)
        {
          v73 = v267;
          v74 = *(v270 + 1);
          v72 = *(v267 + 1);
        }

        else
        {
          if (v71 != 1)
          {
LABEL_107:
            if (v277)
            {
              operator delete(__p);
            }

            v59 = *v253;
            goto LABEL_110;
          }

          v72 = 0;
          v73 = v267;
          v74 = 0xFFFFFFFFLL;
        }

        operations_research::sat::GreaterThanAtLeastOneOfDetector::Add(v65, (__PAIR64__(v69, v67) >> 31), *v270, *v73, v74, v72, v63, v64);
        goto LABEL_107;
      }

LABEL_28:
      v16 = **(this + 3);
      if (~v16 <= v16)
      {
        v17 = **(this + 3);
      }

      else
      {
        v17 = ~v16;
      }

      v18 = __PAIR64__(*(*(v4 + 48) + 4 * v17), v16) >> 31;
      v19 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
      v20 = *(this + 15);
      if (v20 == 12)
      {
        v21 = *(this + 6);
        v22 = *(v21 + 4);
        if (v22 != 1)
        {
          v23 = *(this + 6);
          if (v22 != 2)
          {
            goto LABEL_57;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (off_2810BEE58 == 2)
        {
          v21 = *(this + 6);
          v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_53:
          v31 = *v23[3];
          v32 = vmax_s32(vmvn_s8(v31), v31);
          if (v20 == 12)
          {
            v33 = v21;
          }

          else
          {
            v33 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          operations_research::sat::ProductDetector::ProcessConditionalEquality(v19, v18, *(*v6 + 4 * v32.i32[0]) ^ (v31.i32[0] >> 31), *(*v6 + 4 * v32.i32[1]) ^ (v31.i32[1] >> 31) ^ (*v33[6] == v23[6][1]));
          goto LABEL_57;
        }

        v21 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (off_2810BEE58 != 1)
        {
          goto LABEL_57;
        }
      }

      v29 = *v21[3];
      if (~v29 <= v29)
      {
        v30 = *v21[3];
      }

      else
      {
        v30 = ~v29;
      }

      operations_research::sat::ProductDetector::ProcessConditionalZero(v19, v18, *(*v6 + 4 * v30) ^ (v29 >> 31));
      goto LABEL_57;
    }

    v7 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v7[9], *(v7 + 16), &v277, v5);
  if (!operations_research::Domain::Contains(&v277, 0))
  {
    if (*(this + 4))
    {
      v24 = *(this + 3);
      v25 = *v24;
      if (~*v24 <= *v24)
      {
        v26 = *v24;
      }

      else
      {
        v26 = ~v25;
      }

      v27 = (__PAIR64__(*(v6[6] + 4 * v26), v25) >> 31) ^ 1;
      operator new();
    }

    if (dword_2810BFC50 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC48, dword_2810BFC50))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v274, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1209);
      v249 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v274, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v249, "Trivially UNSAT constraint: ", 0x1CuLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v249, this);
    }

    *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
  }

  if (v277)
  {
    v28 = __p;
    goto LABEL_438;
  }

LABEL_439:
  v248 = *MEMORY[0x277D85DE8];
}

void sub_23CA5EB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39, char a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, _Unwind_Exception *exception_objecta, void *a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a34)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a34);
  _Unwind_Resume(exception_object);
}

void sub_23CA5EEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    if ((*a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA5EFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::GreaterThanAtLeastOneOfDetector>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PrecedenceRelations>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::anonymous namespace::LoadEquivalenceAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a7);
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a3))
  {
  }

  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a5))
  {
  }

  v24 = xmmword_23CE306D0;
  v11 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a3);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = *(v12 + 8);
    v23 = *v12 * a2;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v24, &v23, &v27);
    if (v29 == 1)
    {
      v15 = v28;
      *v28 = v23;
      *(v15 + 8) = 0;
    }

    *(v28 + 8) = v14;
    v12 += 16;
  }

  v16 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a5);
  v17 = v16[1];
  if (v17 != *v16)
  {
    if (((v17 - *v16) & 0x8000000000000000) == 0)
    {
      v18 = v17 - *v16;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(&v24 + 1) >= 2uLL)
  {
    if (v24 >= 2)
    {
      v19 = v25;
      v20 = v26;
      if (*v25 <= -2)
      {
        do
        {
          v21 = __clz(__rbit64((*v19 | ~(*v19 >> 7)) & 0x101010101010101)) >> 3;
          v19 = (v19 + v21);
          v20 += 16 * v21;
        }

        while (*v19 < -1);
      }
    }

    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(0, 0, &v27, 0, 1);
  if (v24 >= 2)
  {
    operator delete(&v25[-(BYTE8(v24) & 1) - 8]);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23CA5FCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a10;
    if (!a10)
    {
LABEL_3:
      if (a13 < 2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v31 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  if (a13 < 2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete((a15 - (a14 & 1) - 8));
  _Unwind_Resume(exception_object);
}

void sub_23CA5FDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  if (a13 < 2)
  {
    JUMPOUT(0x23CA5FDB8);
  }

  JUMPOUT(0x23CA5FDE0);
}

void operations_research::sat::anonymous namespace::LoadEquivalenceNeqAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a7);
  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a3))
  {
  }

  if (!operations_research::sat::IntegerEncoder::VariableIsFullyEncoded(v10, a5))
  {
  }

  v21 = xmmword_23CE306D0;
  v11 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a3);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    v14 = *(v12 + 8);
    v20 = *v12 * a2;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v21, &v20, &v23);
    if (v25 == 1)
    {
      v15 = v24;
      *v24 = v20;
      *(v15 + 8) = 0;
    }

    *(v24 + 8) = v14;
    v12 += 16;
  }

  v16 = operations_research::sat::IntegerEncoder::FullDomainEncoding(v10, a5);
  v17 = v16[1];
  if (v17 != *v16)
  {
    if (((v17 - *v16) & 0x8000000000000000) == 0)
    {
      v18 = v17 - *v16;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v21 >= 2)
  {
    operator delete((v22 - (BYTE8(v21) & 1) - 8));
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23CA601E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a13 >= 2)
  {
    operator delete((a15 - (a14 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AddWeightedSumLowerOrEqual(int *a1, uint64_t a2, char *a3, unint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v71 = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v13 = *a5;
    if ((*a5 & 0x8000000000000000) == 0)
    {
      v14 = *a5;
    }

    else
    {
      v14 = -v13;
    }

    v15 = *a3 ^ (v13 >> 63);
    if (a2)
    {
      operator new();
    }

    v68 = &unk_284F3D318;
    v69[0] = v15;
    v69[1] = a7 / v14 - (a7 / v14 * v14 > a7);
    v70 = &v68;
    operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator()(v69, a8);
    if (v70 == &v68)
    {
      (*(*v70 + 4))(v70);
    }

    else if (v70)
    {
      (*(*v70 + 5))(v70);
    }

LABEL_59:
    v57 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a8);
  v61 = a2;
  if (*(v18 + 747))
  {
    if (!a2)
    {
      goto LABEL_43;
    }

LABEL_29:
    v43 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a8);
    if (a4)
    {
      v44 = 0;
      v45 = 0;
      v46 = 1;
      do
      {
        while (1)
        {
          v47 = a5[v44];
          v48 = *&a3[4 * v44];
          if ((v47 & 0x8000000000000000) == 0)
          {
            break;
          }

          v45 += -*(*(v43 + 152) + 24 * (v48 ^ 1)) * v47;
          v44 = v46++;
          if (a4 <= v44)
          {
            goto LABEL_34;
          }
        }

        v45 += *(*(v43 + 152) + 24 * v48) * v47;
        v44 = v46++;
      }

      while (a4 > v44);
LABEL_34:
      if (v45 == a7)
      {
        v60 = a7;
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = a5[v49];
          if (v51 >= 1)
          {
            *(*(v43 + 152) + 24 * *&a3[4 * v49]);
            operator new();
          }

          if (v51 < 0)
          {
            v52 = *(*(v43 + 152) + 24 * (*&a3[4 * v49] ^ 1));
            operator new();
          }

          v49 = v50++;
        }

        while (a4 > v49);
        goto LABEL_52;
      }
    }

    else if (!a7)
    {
      v60 = 0;
LABEL_52:
      if (v60 < 0)
      {
        if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          operator new();
        }

        v64 = &unk_284F3BBD8;
        v65 = 0;
        v66 = 0;
        v67 = &v64;
        v56 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a8);
        operations_research::sat::SatSolver::AddProblemClause(v56, v65, v66, 0);
        if (v67 == &v64)
        {
          (*(*v67 + 4))(v67);
        }

        else if (v67)
        {
          (*(*v67 + 5))();
        }
      }

      goto LABEL_59;
    }

    if (*(v18 + 747))
    {
LABEL_43:
      v53 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearPropagator>(a8);
      if ((a6 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        if (((8 * a6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operations_research::sat::LinearPropagator::AddConstraint(v53, a1, a2, a3, a4, 0, 0, a7);
      if ((v54 & 1) == 0)
      {
        v55 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a8);
        if (*(v55 + 296))
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v63, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_expr.h", 554);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v63, "We currently do not support adding conflicting constraint at positive level.");
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v63);
        }

        *(v55 + 528) = 1;
      }

      goto LABEL_59;
    }

LABEL_46:
    operator new();
  }

  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v19 = *a5;
      if (*a5 == 1 || v19 == -1)
      {
        v20 = a5[1];
        if (v20 == 1 || v20 == -1)
        {
          v21 = *(a3 + 1);
          v22 = *a3 ^ (v19 != 1);
          v23 = v21 ^ (v20 != 1);
          if (a2)
          {
            v24 = -a7;
            v25 = v23 ^ 1;
          }

          else
          {
            v58 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a8);
            v24 = -a7;
            v25 = v23 ^ 1;
            operations_research::sat::PrecedenceRelations::Add(v58, v22, v23 ^ 1, v24);
          }

          v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(a8);
          v59 = *MEMORY[0x277D85DE8];
          v39 = v22;
          v41 = v25;
          v42 = v24;
          v40 = -1;
          goto LABEL_62;
        }
      }
    }

LABEL_28:
    if (!a2)
    {
      goto LABEL_46;
    }

    goto LABEL_29;
  }

  v26 = *a5;
  if (*a5 != 1 && v26 != -1)
  {
    goto LABEL_28;
  }

  v27 = a5[1];
  if (v27 != 1 && v27 != -1)
  {
    goto LABEL_28;
  }

  v28 = a5[2];
  if (v28 != 1 && v28 != -1)
  {
    goto LABEL_28;
  }

  v29 = a7;
  v30 = v27 != 1;
  v31 = v26 != 1;
  v32 = v28 == 1;
  v33 = a8;
  v34 = *a3;
  v35 = *(a3 + 1);
  v36 = *(a3 + 2);
  v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(v33);
  v38 = *MEMORY[0x277D85DE8];
  v39 = v34 ^ v31;
  v40 = v35 ^ v30;
  v41 = v36 ^ v32;
  v42 = -v29;
LABEL_62:

  operations_research::sat::PrecedencesPropagator::AddArc(v37, v39, v41, v42, v40, a1, v61);
}

void sub_23CA60C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v9)
  {
    operator delete(v9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void operations_research::sat::LoadAllDiffConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v4 = *(this + 6);
  if (*(this + 15) != 13)
  {
    v4 = &operations_research::sat::_AllDifferentConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>((v4 + 2), &__p);
  operations_research::sat::AllDifferentOnBounds(&__p, v6);
}

void sub_23CA60ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA61054(_Unwind_Exception *a1)
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

void operations_research::sat::LoadIntProdConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v77 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 15) == 11)
  {
    v5 = *(this + 6);
  }

  else
  {
    v5 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v6 = v5[6];
  if (!v6)
  {
    v6 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v7 = *(v6 + 4);
  if (v7 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v7);
  }

  if (v7)
  {
    v8 = *v6[3];
    if (~v8 <= v8)
    {
      v9 = *v6[3];
    }

    else
    {
      v9 = ~v8;
    }

    v10 = *(*v77 + 4 * v9) ^ (v8 >> 31);
    v11 = *v6[6];
    v12 = v10 ^ (v11 >> 63);
    if (v11 >= 0)
    {
      v13 = *v6[6];
    }

    else
    {
      v13 = -v11;
    }
  }

  else
  {
    v13 = 0;
    v12 = -1;
  }

  v76 = v6[8];
  v15 = v5[3];
  v14 = v5 + 3;
  v16 = (v15 + 7);
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = *(v14 + 2);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_47;
  }

  v73 = v13;
  v74 = v12;
  v75 = v3;
  v19 = 0;
  v20 = 0;
  v21 = 8 * v18;
  do
  {
    v22 = *v17;
    v23 = *(*v17 + 4);
    if (v23 > 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v23, 1, "exp.vars().size() <= 1");
    }

    if (v23)
    {
      v24 = *v22[3];
      if (~v24 <= v24)
      {
        v25 = *v22[3];
      }

      else
      {
        v25 = ~v24;
      }

      v26 = *(*v77 + 4 * v25) ^ (v24 >> 31);
      v27 = *v22[6];
      v28 = v26 ^ (v27 >> 63);
      if (v27 >= 0)
      {
        v29 = *v22[6];
      }

      else
      {
        v29 = -v27;
      }

      v30 = v22[8];
    }

    else
    {
      v29 = 0;
      v28 = -1;
      v30 = v22[8];
    }

    v31 = v20 - v19;
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3);
    v33 = v32 + 1;
    if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * (-v19 >> 3) > v33)
    {
      v33 = 0x5555555555555556 * (-v19 >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v19 >> 3) >= 0x555555555555555)
    {
      v34 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v34 = v33;
    }

    if (v34)
    {
      if (v34 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = 24 * v32;
    *v35 = v28;
    *(v35 + 8) = v29;
    *(v35 + 16) = v30;
    v20 = 24 * v32 + 24;
    v36 = (v35 - v31);
    memcpy((v35 - v31), v19, v31);
    if (v19)
    {
      operator delete(v19);
    }

    v19 = v36;
    ++v17;
    v21 -= 8;
  }

  while (v21);
  v3 = v75;
  v12 = v74;
  v13 = v73;
  v37 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v36) >> 3);
  if (!v37)
  {
LABEL_47:
    v39 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v40 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
    if ((1 - v76) / v13 - ((1 - v76) / v13 * v13 > 1 - v76) >= 0x8000000000000002)
    {
      v41 = ((1 - v76) / v13 * v13 > 1 - v76) - (1 - v76) / v13;
    }

    else
    {
      v41 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v42 = 1;
    if (v76 <= 1)
    {
      v42 = -1;
    }

    if (v12 == -1)
    {
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      v43 = v12 ^ 1;
    }

    if (v12 == -1)
    {
      v44 = v42;
    }

    else
    {
      v44 = v41;
    }

    v90 = 0;
    if (operations_research::sat::IntegerTrail::Enqueue(v39, v43, v44, v89))
    {
      v45 = (1 - v76) / v13;
      if (v45 * v13 >= 1 - v76)
      {
        v46 = (1 - v76) / v13;
      }

      else
      {
        v46 = v45 + 1;
      }

      v47 = 1;
      if (v76 >= 1)
      {
        v47 = -1;
      }

      if (v12 == -1)
      {
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        v48 = v12;
      }

      if (v12 == -1)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      v88 = 0;
      v50 = operations_research::sat::IntegerTrail::Enqueue(v39, v48, v49, v87) ^ 1;
      if (v88 == v87)
      {
        (*(*v88 + 32))(v88);
        v51 = v90;
        if (v90 != v89)
        {
          goto LABEL_91;
        }

LABEL_73:
        (*(*v51 + 32))(v51);
        if (!v50)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      if (v88)
      {
        (*(*v88 + 40))();
        v51 = v90;
        if (v90 == v89)
        {
          goto LABEL_73;
        }

LABEL_91:
        if (v51)
        {
          (*(*v51 + 40))(v51);
        }

        if (!v50)
        {
LABEL_95:
          if (!v19)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

LABEL_94:
        *(v40 + 528) = 1;
        goto LABEL_95;
      }
    }

    else
    {
      v50 = 1;
    }

    v51 = v90;
    if (v90 != v89)
    {
      goto LABEL_91;
    }

    goto LABEL_73;
  }

  if (v37 != 1)
  {
    if (v37 == 2)
    {
      v38 = *v36;
      v81 = *(v36 + 2);
      v80 = v38;
      v79 = *(v36 + 5);
      v78 = *(v36 + 24);
      *v84 = v38;
      *&v84[16] = v81;
      v85 = v78;
      *&__p_8 = v79;
      operator new();
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v84, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1530);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v84, "Loading int_prod with arity > 2, should not be here.");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v84);
  }

  v52 = *(v75 + 3);
  if (v52 > 1)
  {
    v54 = 0;
    _X11 = *(v75 + 5);
    __asm { PRFM            #4, [X11] }

    v61 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v62 = vdup_n_s8(v61 & 0x7F);
    v63 = ((v61 >> 7) ^ (_X11 >> 12)) & v52;
    v64 = *(_X11 + v63);
    v65 = vceq_s8(v64, v62);
    if (!v65)
    {
      goto LABEL_84;
    }

LABEL_81:
    v66 = *(v75 + 6);
    while (1)
    {
      v67 = (v63 + (__clz(__rbit64(v65)) >> 3)) & v52;
      if (*(v66 + 16 * v67) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v65 &= ((v65 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v65)
      {
LABEL_84:
        while (!*&vceq_s8(v64, 0x8080808080808080))
        {
          v54 += 8;
          v63 = (v54 + v63) & v52;
          v64 = *(_X11 + v63);
          v65 = vceq_s8(v64, v62);
          if (v65)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_98;
      }
    }

    v53 = (v66 + 16 * v67);
    if (_X11 + v67)
    {
      goto LABEL_88;
    }

    goto LABEL_98;
  }

  if (*(v75 + 4) < 2uLL || (v53 = (v75 + 40), *(v75 + 5) != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) || !&absl::lts_20240722::container_internal::kSooControl)
  {
LABEL_98:
    v68 = 0;
    goto LABEL_99;
  }

LABEL_88:
  v68 = v53[1];
LABEL_99:
  *v84 = v68;
  *&v84[8] = 0u;
  v85 = 0u;
  __p_8 = 0u;
  LODWORD(v80) = v74;
  *(&v80 + 1) = v73;
  v81 = v76;
  operations_research::sat::LinearConstraintBuilder::AddTerm(v84, &v80, 1);
  v69 = *v36;
  v81 = *(v36 + 2);
  v80 = v69;
  operations_research::sat::LinearConstraintBuilder::AddTerm(v84, &v80, -1);
  operations_research::sat::LinearConstraintBuilder::Build(v84, &v80);
  operations_research::sat::LoadConditionalLinearConstraint(0, 0, &v80, v75);
  v70 = v83;
  v83 = 0;
  if (v70)
  {
    MEMORY[0x23EED9440](v70, 0x1000C8000313F17);
  }

  v71 = v82;
  v82 = 0;
  if (v71)
  {
    MEMORY[0x23EED9440](v71, 0x1000C8052888210);
  }

  if (*(&v85 + 1))
  {
    *&__p_8 = *(&v85 + 1);
    operator delete(*(&v85 + 1));
  }

LABEL_105:
  operator delete(v19);
LABEL_106:
  v72 = *MEMORY[0x277D85DE8];
}

void sub_23CA61878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(v34 - 160);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(v34 - 128);
  if (!v33)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v33);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void operations_research::sat::LinearConstraint::~LinearConstraint(operations_research::sat::LinearConstraint *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8052888210);
  }
}

void operations_research::sat::LoadIntDivConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v7 = *(this + 6);
  if (*(this + 15) != 7)
  {
    v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (v7[6])
  {
    v8 = v7[6];
  }

  v9 = *(v8 + 4);
  if (v9 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(*(v8 + 4));
  }

  if (v9)
  {
    v10 = *v8[3];
    v11 = ~v10 <= v10 ? *v8[3] : ~v10;
    v12 = *(*v6 + 4 * v11) ^ (v10 >> 31);
    if (*v8[6] >= 0)
    {
      v13 = *v8[6];
    }
  }

  v16 = v7[3];
  v14 = v7 + 3;
  v15 = v16;
  v17 = (v16 + 7);
  if ((v16 & 1) == 0)
  {
    v17 = v14;
  }

  v18 = *v17;
  v19 = *(*v17 + 4);
  if (v19 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v19);
  }

  if (v19)
  {
    v20 = *v18[3];
    if (~v20 <= v20)
    {
      v21 = *v18[3];
    }

    else
    {
      v21 = ~v20;
    }

    v22 = *v18[6];
    v23 = *(*v6 + 4 * v21) ^ (v20 >> 31) ^ (v22 >> 63);
    if (v22 >= 0)
    {
      v24 = *v18[6];
    }

    else
    {
      v24 = -v22;
    }
  }

  else
  {
    v24 = 0;
    v23 = -1;
  }

  v25 = v8[8];
  v26 = v18[8];
  LODWORD(v64) = v23;
  *(&v64 + 1) = v24;
  v65 = v26;
  v27 = (v15 + 15);
  if ((v15 & 1) == 0)
  {
    v27 = v14;
  }

  v28 = *v27;
  v29 = *(*v27 + 4);
  if (v29 > 1)
  {
    operations_research::sat::LoadIntProdConstraint(v29);
  }

  if (v29)
  {
    v30 = *v28[3];
    if (~v30 <= v30)
    {
      v31 = *v28[3];
    }

    else
    {
      v31 = ~v30;
    }

    v32 = *v28[6];
    v33 = *(*v6 + 4 * v31) ^ (v30 >> 31) ^ (v32 >> 63);
    if (v32 >= 0)
    {
      v34 = *v28[6];
    }

    else
    {
      v34 = -v32;
    }

    v35 = v28[8];
    LODWORD(v62) = v33;
    *(&v62 + 1) = v34;
    v63 = v35;
    if (v33 != -1)
    {
      if (*(*(v5 + 40) + 8 * v33) + *(*(v5 + 40) + ((8 * v33) ^ 8)))
      {
        if (dword_2810BFC98 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFC90, dword_2810BFC98))
        {
          v37 = *(a2 + 3);
          if (v37 > 1)
          {
            v39 = 0;
            _X11 = *(a2 + 5);
            __asm { PRFM            #4, [X11] }

            v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
            v47 = vdup_n_s8(v46 & 0x7F);
            v48 = ((v46 >> 7) ^ (_X11 >> 12)) & v37;
            v49 = *(_X11 + v48);
            v50 = vceq_s8(v49, v47);
            if (!v50)
            {
              goto LABEL_53;
            }

LABEL_50:
            v51 = *(a2 + 6);
            do
            {
              v52 = (v48 + (__clz(__rbit64(v50)) >> 3)) & v37;
              if (*(v51 + 16 * v52) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
              {
                v37 = v51 + 16 * v52;
                v38 = (_X11 + v52);
                goto LABEL_58;
              }

              v50 &= ((v50 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v50);
LABEL_53:
            while (!*&vceq_s8(v49, 0x8080808080808080))
            {
              v39 += 8;
              v48 = (v39 + v48) & v37;
              v49 = *(_X11 + v48);
              v50 = vceq_s8(v49, v47);
              if (v50)
              {
                goto LABEL_50;
              }
            }

LABEL_56:
            v38 = 0;
          }

          else
          {
            v37 = *(a2 + 4);
            if (v37 < 2)
            {
              goto LABEL_56;
            }

            v37 = a2 + 40;
            if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              goto LABEL_56;
            }

            v38 = &absl::lts_20240722::container_internal::kSooControl;
          }

LABEL_58:
          if (v38)
          {
            v53 = *(v37 + 8);
          }

          else
          {
            v53 = 0;
          }

          *v57 = v53;
          *&v57[8] = 0u;
          v58 = 0u;
          __p_8 = 0u;
          v54 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(a2);
          if (operations_research::sat::ProductDecomposer::TryToLinearize(v54, &v64, &v62, v57) && dword_2810BFCB0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFCA8, dword_2810BFCB0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v56, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_loader.cc", 1549);
            v55 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v56, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v55, "Division ", 9uLL);
            absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto,0>(v55, this);
          }

          if (*(&v58 + 1))
          {
            *&__p_8 = *(&v58 + 1);
            operator delete(*(&v58 + 1));
          }
        }

        v58 = v64;
        *&__p_8 = v65;
        *v57 = v62;
        *&v57[16] = v63;
        operator new();
      }

      v60 = v64;
      v61 = v65;
LABEL_38:
      operator new();
    }
  }

  else
  {
    v36 = v28[8];
  }

  v60 = v64;
  v61 = v65;
  goto LABEL_38;
}

void sub_23CA61F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ProductDecomposer>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::LoadIntModConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v7 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  if (*(this + 15) == 8)
  {
    v7 = *(this + 6);
  }

  v8 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  if (v7[6])
  {
    v8 = v7[6];
  }

  v9 = *(v8 + 4);
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = *v8[3];
      v11 = ~v10 <= v10 ? *v8[3] : ~v10;
      v12 = *(*v5 + 4 * v11) ^ (v10 >> 31);
      if (*v8[6] >= 0)
      {
        v13 = *v8[6];
      }
    }

    v16 = v7[3];
    v14 = v7 + 3;
    v15 = v16;
    v17 = (v16 + 7);
    if ((v16 & 1) == 0)
    {
      v17 = v14;
    }

    v18 = *v17;
    v19 = *(*v17 + 4);
    if (v19 <= 1)
    {
      if (v19)
      {
        v20 = *v18[3];
        v21 = ~v20 <= v20 ? *v18[3] : ~v20;
        v22 = *(*v5 + 4 * v21) ^ (v20 >> 31);
        if (*v18[6] >= 0)
        {
          v23 = *v18[6];
        }
      }

      v24 = (v15 + 15);
      if ((v15 & 1) == 0)
      {
        v24 = v14;
      }

      v25 = *v24;
      v26 = *(*v24 + 4);
      if (v26 <= 1)
      {
        v27 = v8[8];
        v28 = v18[8];
        if (v26)
        {
          v29 = *v25[3];
          if (~v29 <= v29)
          {
            v30 = *v25[3];
          }

          else
          {
            v30 = ~v29;
          }

          v31 = *v25[6];
          v32 = *(*v5 + 4 * v30) ^ (v29 >> 31) ^ (v31 >> 63);
          if (v31 >= 0)
          {
            v33 = *v25[6];
          }

          v34 = v25[8];
          if (v32 != -1)
          {
            if (*(*(v6 + 40) + 8 * v32) + *(*(v6 + 40) + ((8 * v32) ^ 8)))
            {
              operations_research::sat::LoadIntModConstraint(v36);
            }
          }
        }

        else
        {
          v35 = v25[8];
        }

        operator new();
      }

      operations_research::sat::LoadIntProdConstraint(v26);
    }

    operations_research::sat::LoadIntProdConstraint(v19);
  }

  operations_research::sat::LoadIntProdConstraint(*(v8 + 4));
}

void sub_23CA624B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LoadLinMaxConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 15) == 27)
  {
    v3 = *(this + 6);
  }

  else
  {
    v3 = &operations_research::sat::_LinearArgumentProto_default_instance_;
  }

  if (*(v3 + 8))
  {
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    if (*(this + 15) == 27)
    {
      v5 = *(this + 6);
    }

    else
    {
      v5 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    v6 = v5[6];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &operations_research::sat::_LinearExpressionProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::GetExprFromProto(v7, &v29);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (*(this + 15) == 27)
    {
      v8 = *(this + 6);
    }

    else
    {
      v8 = &operations_research::sat::_LinearArgumentProto_default_instance_;
    }

    std::vector<operations_research::sat::LinearExpression>::reserve(&v26, *(v8 + 8));
    v9 = 0;
    for (i = 1; ; ++i)
    {
      if (*(this + 15) == 27)
      {
        v11 = *(this + 6);
        if (v9 >= *(v11 + 8))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 >= dword_2810BEFF8)
        {
LABEL_33:
          operations_research::sat::NegationOf(&v29, v21);
          operations_research::sat::IsEqualToMinOf(v21, &v26, v30);
        }

        v11 = &operations_research::sat::_LinearArgumentProto_default_instance_;
      }

      v13 = v11[3];
      v12 = (v11 + 3);
      v14 = &v13[i - 1] + 7;
      if (v13)
      {
        v12 = v14;
      }

      operations_research::sat::CpModelMapping::GetExprFromProto(*v12, v18);
      operations_research::sat::NegationOf(v18, v21);
      v15 = v27;
      if (v27 >= v28)
      {
        v27 = std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression>(&v26, v21);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        *(v27 + 16) = 0;
        v15[3] = 0;
        *v15 = 0;
        v15[1] = 0;
        *v15 = *v21;
        v15[2] = v22;
        v21[0] = 0;
        v21[1] = 0;
        v22 = 0;
        v15[4] = 0;
        v15[5] = 0;
        *(v15 + 3) = *__p;
        v15[5] = v24;
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        v15[6] = v25;
        v27 = (v15 + 7);
      }

      if (v21[0])
      {
        v21[1] = v21[0];
        operator delete(v21[0]);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }

      ++v9;
    }
  }

  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(result + 528) = 1;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CA6285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a17);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](&a24);
  operations_research::sat::LinearExpr::~LinearExpr(&a27);
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelMapping::GetExprFromProto(const operations_research::sat::LinearExpressionProto *a1@<X1>, uint64_t a2@<X8>)
{
  v23 = 0;
  *__p = 0u;
  v22 = 0u;
  *v20 = 0u;
  operations_research::sat::CpModelMapping::Integers<google::protobuf::RepeatedField<int>>(a1 + 4, &v18);
  v4 = *(a1 + 10);
  *v20 = v18;
  __p[0] = v19;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 6) + 8 * v6);
      if (v5 < *(&v22 + 1))
      {
        *v5 = v7;
        v5 += 8;
      }

      else
      {
        v8 = __p[1];
        v9 = v5 - __p[1];
        v10 = (v5 - __p[1]) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v12 = *(&v22 + 1) - __p[1];
        if ((*(&v22 + 1) - __p[1]) >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (!(v13 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v14 = (v5 - __p[1]) >> 3;
        v15 = (8 * v10);
        v16 = (8 * v10 - 8 * v14);
        *v15 = v7;
        v5 = (v15 + 1);
        memcpy(v16, v8, v9);
        __p[1] = v16;
        v22 = v5;
        if (v8)
        {
          operator delete(v8);
        }
      }

      *&v22 = v5;
      ++v6;
    }

    while (v6 < *(a1 + 10));
  }

  v23 = *(a1 + 8);
  operations_research::sat::CanonicalizeExpr(v20, a2);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void sub_23CA62A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void sub_23CA62ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  _Unwind_Resume(a1);
}

void *std::vector<operations_research::sat::LinearExpression>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CA62BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::LinearExpression>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::IsEqualToMinOf(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      v5 = v4 - *a1;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[3];
  v6 = a1[4];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(__p, 0, sizeof(__p));
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(__p, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a3 + 24) = 0;
  operator new();
}

void sub_23CA62E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operations_research::sat::LinearExpr::~LinearExpr(v10);
  operator delete(v9);
  operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::~Model(&a9);
  _Unwind_Resume(a1);
}

void sub_23CA62E70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 7);
        if (v7)
        {
          *(v3 - 6) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    if ((*a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CA62FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LoadNoOverlap2dConstraint(uint64_t this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  if (*(this + 60) == 21)
  {
    v3 = *(this + 48);
  }

  else
  {
    v3 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
  }

  if (*(v3 + 4))
  {
    v5 = this;
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    v6 = *(v5 + 48);
    if (*(v5 + 60) != 21)
    {
      v6 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v6 + 4, &v9);
    v7 = *(v5 + 48);
    if (*(v5 + 60) != 21)
    {
      v7 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 10, &__p);
    operations_research::sat::AddNonOverlappingRectangles(&v9, &__p, a2);
  }

  return this;
}

void sub_23CA630A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadCumulativeConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = *(this + 15);
  v5 = (this + 60);
  v7 = *(v5 - 3);
  if (v6 != 22)
  {
    v7 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 6, &v21);
  v8 = *(v5 - 3);
  if (*v5 != 22)
  {
    v8 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
  }

  v9 = v8[9];
  if (!v9)
  {
    v9 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v10 = *(v9 + 4);
  if (v10 <= 1)
  {
    if (v10)
    {
      v11 = *v9[3];
      if (~v11 <= v11)
      {
        v12 = *v9[3];
      }

      else
      {
        v12 = ~v11;
      }

      v13 = *(*v4 + 4 * v12) ^ (v11 >> 31);
      v14 = *v9[6];
      v15 = v13 ^ (v14 >> 63);
      if (v14 >= 0)
      {
        v16 = *v9[6];
      }

      else
      {
        v16 = -v14;
      }
    }

    else
    {
      v16 = 0;
      v15 = -1;
    }

    v17 = v9[8];
    operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>((v8 + 6), &__p);
    LODWORD(v18) = v15;
    *(&v18 + 1) = v16;
    v19 = v17;
    operations_research::sat::Cumulative(&v21, &__p, &v18, v22);
  }

  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v10, 1, "exp.vars().size() <= 1");
}

void sub_23CA6333C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a15)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadReservoirConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v7 = *(this + 6);
  if (*(this + 15) != 24)
  {
    v7 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>((v7 + 2), &v39);
  v8 = *(this + 6);
  if (*(this + 15) != 24)
  {
    v8 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  v27 = v5;
  operations_research::sat::CpModelMapping::Affines<google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>>((v8 + 8), &v37);
  if (*(this + 15) == 24)
  {
    v9 = *(this + 6);
  }

  else
  {
    v9 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  }

  v10 = *(v9 + 6);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 4 * v10;
    while (1)
    {
      if (*(this + 15) == 24)
      {
        v15 = *(this + 6);
        if (*(v15 + 10))
        {
          goto LABEL_13;
        }

LABEL_27:
        v18 = v6[82];
        if (v18 == -1)
        {
          v23 = *(*v6 + 16);
          operations_research::sat::SatSolver::SetNumVariables(*v6, v23 + 1);
          v6[82] = 2 * v23;
          operations_research::sat::SatSolver::AddUnitClause(*v6, 2 * v23);
          v18 = v6[82];
          if (v12 >= v13)
          {
LABEL_31:
            v19 = v12;
            v20 = v12 >> 2;
            v24 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v13 >> 1 > v24)
            {
              v24 = v13 >> 1;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v24;
            }

            if (v22)
            {
              if (!(v22 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            goto LABEL_40;
          }
        }

        else if (v12 >= v13)
        {
          goto LABEL_31;
        }

LABEL_10:
        *v12 = v18;
        v12 += 4;
        v11 += 4;
        if (v14 == v11)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v15 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
        if (!dword_2810BEB28)
        {
          goto LABEL_27;
        }

LABEL_13:
        v16 = *(v15[6] + v11);
        if (~v16 <= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = ~v16;
        }

        v18 = __PAIR64__(*(*(v27 + 48) + 4 * v17), v16) >> 31;
        if (v12 < v13)
        {
          goto LABEL_10;
        }

        v19 = v12;
        v20 = v12 >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v13 >> 1 > v21)
        {
          v21 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (!(v22 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

LABEL_40:
        v25 = (4 * v20);
        v13 = 4 * v22;
        *v25 = v18;
        v12 = (v25 + 1);
        memcpy(0, 0, v19);
        v11 += 4;
        if (v14 == v11)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v12 = 0;
LABEL_43:
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v40 != v39)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v38 != v37)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v26 = &operations_research::sat::_ReservoirConstraintProto_default_instance_;
  if (*(this + 15) == 24)
  {
    v26 = *(this + 6);
  }

  operations_research::sat::AddReservoirConstraint(&v34, &v31, &__p, v26[11], v26[12], a2);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
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

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_23CA63800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a15;
    if (!a15)
    {
LABEL_3:
      v26 = a18;
      if (!a18)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  v26 = a18;
  if (!a18)
  {
LABEL_4:
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v26);
  if (!v22)
  {
LABEL_5:
    v27 = a21;
    if (!a21)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v22);
  v27 = a21;
  if (!a21)
  {
LABEL_6:
    v28 = *(v23 - 104);
    if (!v28)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v27);
  v28 = *(v23 - 104);
  if (!v28)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v23 - 96) = v28;
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LoadCircuitConstraint(uint64_t this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 60) == 15)
  {
    v3 = *(this + 48);
  }

  else
  {
    v3 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v3[3];
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CA63C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ReindexArcs<std::vector<int>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (!v3)
  {
    return 0;
  }

  v11[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v11[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v12 = 0;
  if (v3 >= 1)
  {
    v5 = *a1;
    operator new();
  }

  v9 = xmmword_23CE306D0;
  if (a3)
  {
    if (*a3 >= 2uLL)
    {
      operator delete((a3[2] - (a3[1] & 1) - 8));
    }

    v7 = v10;
    *a3 = v9;
    *(a3 + 1) = v7;
    v6 = v12;
  }

  else
  {
    v6 = v12;
    if (v9 >= 2)
    {
      operator delete((v10 - (BYTE8(v9) & 1) - 8));
    }
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(v11);
  return v6;
}

void sub_23CA640E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a4 >= 2)
  {
    operator delete((a6 - (a5 & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LoadRoutesConstraint(uint64_t this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 60) == 23)
  {
    v3 = *(this + 48);
  }

  else
  {
    v3 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  v4 = *(v3 + 4);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v3[3];
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CA6444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LoadConstraint(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3)
{
  v3 = *(this + 15);
  result = 1;
  switch(v3)
  {
    case 0:
    case 19:
      return result;
    case 3:
      operations_research::sat::LoadBoolOrConstraint(this, a2, a3);
      result = 1;
      break;
    case 4:
      operations_research::sat::LoadBoolAndConstraint(this, a2, a3);
      result = 1;
      break;
    case 5:
      operations_research::sat::LoadBoolXorConstraint(this, a2, a3);
    case 7:
      operations_research::sat::LoadIntDivConstraint(this, a2, a3);
    case 8:
      operations_research::sat::LoadIntModConstraint(this, a2, a3);
    case 11:
      operations_research::sat::LoadIntProdConstraint(this, a2, a3);
      result = 1;
      break;
    case 12:
      operations_research::sat::LoadLinearConstraint(this, a2, a3);
      result = 1;
      break;
    case 13:
      operations_research::sat::LoadAllDiffConstraint(this, a2, a3);
    case 15:
      operations_research::sat::LoadCircuitConstraint(this, a2, a3);
      result = 1;
      break;
    case 20:
      operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
      v7 = *(this + 6);
      if (*(this + 15) != 20)
      {
        v7 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
      }

      operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 4, __p);
      operations_research::sat::AddDisjunctive(__p, a2);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      result = 1;
      break;
    case 21:
      operations_research::sat::LoadNoOverlap2dConstraint(this, a2, a3);
      result = 1;
      break;
    case 22:
      operations_research::sat::LoadCumulativeConstraint(this, a2, a3);
    case 23:
      operations_research::sat::LoadRoutesConstraint(this, a2, a3);
      result = 1;
      break;
    case 24:
      operations_research::sat::LoadReservoirConstraint(this, a2, a3);
      result = 1;
      break;
    case 26:
      operations_research::sat::LoadAtMostOneConstraint(this, a2, a3);
    case 27:
      operations_research::sat::LoadLinMaxConstraint(this, a2, a3);
      result = 1;
      break;
    case 29:
      operations_research::sat::LoadExactlyOneConstraint(this, a2, a3);
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_23CA6475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_284F3D130;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*a2);
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) ^ 1;

  return operations_research::sat::SatSolver::AddBinaryClause(v3, v5, v4);
}

uint64_t std::__function::__func<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(operations_research::sat::Literal,operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE410BALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE410BALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE410BALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE410BALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *result)
{
  *result = &unk_284F3D1B0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3D1B0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CA64A7C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = &unk_284F3D1B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a2 + 32) = *(result + 32);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void sub_23CA64B58(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4125FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4125FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4125FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4125FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LiteralXorIs(std::vector<operations_research::sat::Literal> const&,BOOL)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  operator new();
}

void sub_23CA64D98(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

void *operations_research::sat::Model::Delete<operations_research::sat::BooleanXorPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D220;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::BooleanXorPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3D220;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>::resize_impl(uint64_t *a1, uint64_t a2)
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

__n128 std::__function::__func<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE41371)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE41371 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE41371))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE41371 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::EnforcedClause(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a1[1] & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = *a1;
    operator new();
  }

  if ((a1[3] & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a1[2];
    operator new();
  }

  v6 = &unk_284F3BBD8;
  v7 = 0;
  v8 = 0;
  v9 = &v6;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddProblemClause(v4, v7, v8, 0);
  if (v9 == &v6)
  {
    (*(*v9 + 4))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 5))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23CA65954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

__n128 std::__function::__func<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE447C0)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE447C0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE447C0))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE447C0 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator()(unsigned int *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = *(a1 + 1);
  if (v5 >= 0x8000000000000002)
  {
    v6 = -v5;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((operations_research::sat::IntegerTrail::Enqueue(v4, *a1 ^ 1, v6, 0, 0, 0, 0) & 1) == 0)
  {
    *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
    if (dword_27E25CBB0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LowerOrEqual(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,long long)::{lambda(operations_research::sat::Model *)#1}::operator() const(operations_research::sat::Model *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CBB0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.h", 1892);
      v8 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v12, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "Model trivially infeasible, variable ", 0x25uLL);
      v9 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v8, a1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " has lower bound ", 0x11uLL);
      v10 = *a1;
      v14 = &unk_284F3D388;
      v15 = v10;
      v16 = &v14;
      v13 = std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::operator()(&v14, a2);
      v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v9, &v13);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " and LowerOrEqual() was called with an upper bound of ", 0x36uLL);
      v13 = *(a1 + 1);
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v11, &v13);
      std::function<long long ()(operations_research::sat::Model const&)>::~function(&v14);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23CA65F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::function<long long ()(operations_research::sat::Model const&)>::~function(&a12);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a9);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(uint64_t a1, unsigned int *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6 = a1;
  v7[0] = v3;
  v7[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v6, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::log_internal::StringifySink>, "%v", 2, v7, 1uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::function<long long ()(operations_research::sat::Model const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F3D388;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3 > 1)
  {
    v8 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v16 = (v15 >> 7) ^ (_X11 >> 12);
    v17 = vdup_n_s8(v15 & 0x7F);
    v18 = a2[6];
    v19 = v16 & v3;
    v20 = *(_X11 + v19);
    v2 = vceq_s8(v20, v17);
    if (!v2)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      v21 = (v19 + (__clz(__rbit64(v2)) >> 3)) & v3;
      if (*(v18 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
      {
        return *(*(*(v18 + 16 * v21 + 8) + 40) + 8 * *(a1 + 8));
      }

      v2 &= ((v2 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v2);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v8 += 8;
      v19 = (v8 + v19) & v3;
      v20 = *(_X11 + v19);
      v2 = vceq_s8(v20, v17);
      if (v2)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a2[4] >= 2uLL)
  {
    v6 = a2[5];
    v4 = a2 + 5;
    v5 = v6;
    if (v6 == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v2 = v4;
    }

    else
    {
      v2 = v5;
    }
  }

  return *(*(*(v2 + 8) + 40) + 8 * *(a1 + 8));
}

uint64_t std::__function::__func<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::LowerBound(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4156ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4156ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4156ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4156ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3D428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4168ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4168ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4168ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4168ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::Implication(absl::lts_20240722::Span<operations_research::sat::Literal const>,operations_research::sat::IntegerLiteral)::{lambda(operations_research::sat::Model *)#1}::operator()(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = a1[1];
  v6 = *(v4 + 40);
  v7 = 8 * *a1;
  if (v5 > *(v6 + v7))
  {
    if (v5 <= -*(v6 + (v7 ^ 8)))
    {
      v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
      operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(v10, *a1, a1[1]);
      operator new();
    }

    v8 = a1[3];
    if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a1[2];
      operator new();
    }

    v13 = &unk_284F3BBD8;
    v14 = 0;
    v15 = 0;
    v16 = &v13;
    v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    operations_research::sat::SatSolver::AddProblemClause(v11, v14, v15, 0);
    if (v16 == &v13)
    {
      (*(*v16 + 4))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 5))(v16);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CA6684C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedencesPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PrecedencesPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

operations_research::sat::PrecedencesPropagator *operations_research::sat::PrecedencesPropagator::PrecedencesPropagator(operations_research::sat::PrecedencesPropagator *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "PrecedencesPropagator");
  *(this + 31) = 21;
  *(this + 4) = 0xFFFFFFFFLL;
  v4 = this + 40;
  *this = &unk_284F44060;
  *(this + 5) = &unk_284F440A8;
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = *(a2 + 3);
  if (v5 > 1)
  {
    v7 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X11 >> 12)) & v5;
    v17 = *(_X11 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(a2 + 6);
    while (1)
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v5;
      if (*(v19 + 16 * v20) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
LABEL_8:
        while (!*&vceq_s8(v17, 0x8080808080808080))
        {
          v7 += 8;
          v16 = (v7 + v16) & v5;
          v17 = *(_X11 + v16);
          v18 = vceq_s8(v17, v15);
          if (v18)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v21 = (v19 + 16 * v20);
    v6 = (_X11 + v20);
    if (!(_X11 + v20))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 4) < 2uLL)
  {
LABEL_3:
    v6 = 0;
    goto LABEL_13;
  }

  v21 = a2 + 40;
  v6 = &absl::lts_20240722::container_internal::kSooControl;
  if (*(a2 + 5) != &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
  {
    v6 = 0;
    v21 = 0;
  }

  if (v6)
  {
LABEL_12:
    v6 = *(v21 + 1);
  }

LABEL_13:
  *(this + 9) = v6;
  v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  *(this + 10) = v22;
  v23 = operations_research::sat::GenericLiteralWatcher::Register(v22, v4);
  *(this + 24) = 0;
  *(this + 22) = v23;
  *(this + 152) = 0u;
  *(this + 200) = 0u;
  *(this + 248) = 0u;
  *(this + 344) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 63) = 0;
  *(this + 104) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddPropagator(v24, this);
  v25 = *(this + 8);
  v27 = this + 96;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 96, (*(v25 + 48) - *(v25 + 40)) >> 3);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v25 + 744, &v27);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(*(this + 10), *(this + 22), 0);
  return this;
}