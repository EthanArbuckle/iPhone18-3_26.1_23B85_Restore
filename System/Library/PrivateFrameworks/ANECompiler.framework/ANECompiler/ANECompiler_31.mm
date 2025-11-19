void sub_23CAA1558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a21);
  operations_research::sat::Model::~Model(&a23);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a33);
  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::Trail::Resize(operations_research::sat::Trail *this, int a2)
{
  v4 = 2 * a2;
  if (2 * a2 < 1)
  {
    v4 = 0;
  }

  else if (*(this + 4) > v4)
  {
    v5 = *(this + 3) + (((v4 + 63) >> 3) & 0x1FFFFFF8);
    *(v5 - 8) &= ~(-2 << (v4 + 63));
  }

  *(this + 4) = v4;
  v7 = *(this + 3);
  v8 = *(this + 4);
  v6 = this + 24;
  v9 = (v4 + 63) >> 6;
  v21 = 0;
  v10 = (v8 - v7) >> 3;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      *(this + 4) = v7 + 8 * v9;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v6, v9 - v10, &v21);
  }

  v11 = *(this + 12);
  v12 = (*(this + 13) - v11) >> 3;
  if (a2 <= v12)
  {
    if (a2 < v12)
    {
      *(this + 13) = v11 + 8 * a2;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 96, a2 - v12);
  }

  v13 = *(this + 6);
  v14 = (*(this + 7) - v13) >> 2;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      *(this + 7) = v13 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append(this + 2, a2 - v14);
  }

  v15 = *(this + 25);
  v16 = (*(this + 26) - v15) >> 4;
  if (a2 <= v16)
  {
    if (a2 < v16)
    {
      *(this + 26) = v15 + 16 * a2;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::Span<operations_research::sat::Literal const>>::__append(this + 200, a2 - v16);
  }

  v17 = *(this + 28);
  v18 = (*(this + 29) - v17) >> 2;
  if (a2 <= v18)
  {
    if (a2 < v18)
    {
      *(this + 29) = v17 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 224), a2 - v18);
  }

  v19 = *(this + 16);
  v20 = (*(this + 17) - v19) >> 2;
  if (a2 <= v20)
  {
    if (a2 < v20)
    {
      *(this + 17) = v19 + 4 * a2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), a2 - v20);
  }
}

void operations_research::sat::CpModelPresolver::TransformIntoMaxCliques(operations_research::sat::CpModelPresolver *this)
{
  v106 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if ((*(v1 + 416) & 1) != 0 || *(*(v1 + 392) + 672) <= 0.0)
  {
    goto LABEL_103;
  }

  v2 = this;
  v3 = *(*v1 + 56);
  v96 = 0;
  v97 = 0;
  v98 = 0;
  if (v3 < 1)
  {
    v33 = 0;
  }

  else
  {
    v4 = 0;
    v83 = v3;
    do
    {
      v5 = **(v2 + 1);
      v7 = *(v5 + 48);
      v6 = v5 + 48;
      v8 = v7 + 8 * v4 + 7;
      if (v7)
      {
        v6 = v8;
      }

      v9 = *v6;
      v10 = *(*v6 + 60);
      if (v10 == 4)
      {
        if (*(v9 + 16) == 1)
        {
          v26 = *(v9 + 48);
          v27 = *(v26 + 16);
          if (v27)
          {
            v28 = *(v26 + 24);
            v29 = **(v9 + 24);
            v30 = 4 * v27;
            do
            {
              if (*v28 != **(v9 + 24))
              {
                operator new();
              }

              ++v28;
              v30 -= 4;
            }

            while (v30);
          }

          operations_research::sat::ConstraintProto::Clear(v9);
          v3 = v83;
          v2 = this;
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v4);
        }
      }

      else if (v10 == 26)
      {
        v90 = 0;
        v91 = 0;
        __p = 0;
        v11 = *(v9 + 48);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = 0;
          v14 = *(v11 + 24);
          v15 = 4 * v12;
          do
          {
            if (*v14 < 0)
            {
              v16 = 2 * ~*v14 + 1;
            }

            else
            {
              v16 = 2 * *v14;
            }

            if (v13 < v91)
            {
              *v13++ = v16;
            }

            else
            {
              v17 = __p;
              v18 = v13 - __p;
              v19 = (v13 - __p) >> 2;
              v20 = v19 + 1;
              if ((v19 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v21 = v91 - __p;
              if ((v91 - __p) >> 1 > v20)
              {
                v20 = v21 >> 1;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v22 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                if (!(v22 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v23 = (v13 - __p) >> 2;
              v24 = (4 * v19);
              v25 = (4 * v19 - 4 * v23);
              *v24 = v16;
              v13 = v24 + 1;
              memcpy(v25, v17, v18);
              __p = v25;
              v90 = v13;
              v91 = 0;
              if (v17)
              {
                operator delete(v17);
              }
            }

            v90 = v13;
            ++v14;
            v15 -= 4;
          }

          while (v15);
        }

        v31 = v97;
        if (v97 >= v98)
        {
          v32 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(&v96, &__p);
          v3 = v83;
          v2 = this;
        }

        else
        {
          *v97 = 0;
          *(v31 + 1) = 0;
          *(v31 + 2) = 0;
          if (v90 != __p)
          {
            if (((v90 - __p) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v32 = v31 + 24;
          v3 = v83;
          v2 = this;
        }

        v97 = v32;
        operations_research::sat::ConstraintProto::Clear(v9);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v2 + 1), v4);
        if (__p)
        {
          v90 = __p;
          operator delete(__p);
        }
      }

      v4 = (v4 + 1);
    }

    while (v4 != v3);
    v1 = *(v2 + 1);
    v33 = -1431655765 * ((v97 - v96) >> 3);
  }

  __p = 0;
  v90 = 0;
  v91 = 0;
  v92 = xmmword_23CE306D0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v34 = *(*v1 + 32);
  v35 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(&__p);
  operations_research::sat::Trail::Resize(v35, v34);
  v36 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(&__p);
  operations_research::sat::BinaryImplicationGraph::Resize(v36, v34);
  v37 = v96;
  v38 = v97;
  if (v96 != v97)
  {
    v39 = 0;
    while (1)
    {
      v40 = (*(v37 + 1) - *v37) >> 2;
      if ((operations_research::sat::BinaryImplicationGraph::AddAtMostOne(v36, *v37, v40) & 1) == 0)
      {
        break;
      }

      v39 += v40;
      v37 += 24;
      if (v37 == v38)
      {
        goto LABEL_52;
      }
    }

    operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
    goto LABEL_95;
  }

  v39 = 0;
LABEL_52:
  v41 = operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v36, 0);
  v42 = *(this + 1);
  if (v41)
  {
    v43 = *(*(v42 + 392) + 672);
    operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(v36, &v96);
    v84 = v33;
    if (v34 >= 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 2 * v34;
      do
      {
        begin = v36[29].__begin_;
        if (v44 < ((v36[29].__end_ - begin) >> 2))
        {
          v49 = *(begin + (v46 >> 30));
          if (v49 != -1 && v44 != v49)
          {
            operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), v45, -(v49 & 1) ^ (v49 >> 1));
          }
        }

        v46 += 0x200000000;
        v45 = (v45 + 1);
        v44 += 2;
      }

      while (v47 != v44);
    }

    v88 = 0;
    v87 = 0;
    v51 = v96;
    v52 = v97;
    v53 = this;
    if (v96 != v97)
    {
      while (1)
      {
        v54 = *v51;
        v55 = *(v51 + 1);
        if (*v51 != v55)
        {
          break;
        }

LABEL_68:
        v51 += 24;
        if (v51 == v52)
        {
          goto LABEL_88;
        }
      }

      ++v88;
      v87 += (v55 - v54) >> 2;
      v56 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v53 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v58 = *v51;
      v57 = *(v51 + 1);
      while (1)
      {
        if (v58 == v57)
        {
          v53 = this;
          operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v56);
          goto LABEL_68;
        }

        v66 = *v58;
        v67 = *(v56 + 60);
        if (*v58)
        {
          if (v67 == 26)
          {
            v59 = *(v56 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v56);
            *(v56 + 60) = 26;
            v69 = *(v56 + 8);
            if (v69)
            {
              v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v69);
            *(v56 + 48) = v59;
          }

          v60 = ~(v66 >> 1);
          v61 = v59 + 2;
          v62 = v59[2];
          v63 = HIDWORD(v62);
          v64 = v62;
          if (v62 == HIDWORD(v62))
          {
LABEL_87:
            google::protobuf::RepeatedField<int>::Grow(v61, v63, (HIDWORD(v62) + 1));
            v64 = *(v59 + 4);
          }
        }

        else
        {
          if (v67 == 26)
          {
            v59 = *(v56 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v56);
            *(v56 + 60) = 26;
            v68 = *(v56 + 8);
            if (v68)
            {
              v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v68);
            *(v56 + 48) = v59;
          }

          v60 = v66 >> 1;
          v61 = v59 + 2;
          v62 = v59[2];
          v63 = HIDWORD(v62);
          v64 = v62;
          if (v62 == HIDWORD(v62))
          {
            goto LABEL_87;
          }
        }

        v65 = v59[3];
        *(v59 + 4) = v64 + 1;
        *(v65 + 4 * v64) = v60;
        ++v58;
      }
    }

LABEL_88:
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v53 + 1));
    if (v88 != v84)
    {
      v71 = *(v53 + 1);
      operator new();
    }

    if (v39 != v87)
    {
      v72 = *(v53 + 2);
      if (*v72 == 1)
      {
        *&v105 = "[MaxClique] Merged ";
        *(&v105 + 1) = 19;
        v73 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v84, v104, v70);
        *&v103 = v104;
        *(&v103 + 1) = v73 - v104;
        v102[0] = "(";
        v102[1] = 1;
        v75 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v39, v101, v74);
        *&v100 = v101;
        *(&v100 + 1) = v75 - v101;
        *&v99 = " literals) into ";
        *(&v99 + 1) = 16;
        absl::lts_20240722::StrCat<int,char [2],long long,char [25]>(&v105, &v103, v102, &v100, &v99, &v88, "(", &v87, &v86, " literals) at_most_ones.");
        operations_research::SolverLogger::LogInfo(v72, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7937, &v86);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v42, &byte_23CE7F131, 0);
  }

LABEL_95:
  operations_research::sat::Model::~Model(&__p);
  v76 = v96;
  if (v96)
  {
    v77 = v97;
    v78 = v96;
    if (v97 != v96)
    {
      v79 = v97;
      do
      {
        v81 = *(v79 - 3);
        v79 -= 24;
        v80 = v81;
        if (v81)
        {
          *(v77 - 2) = v80;
          operator delete(v80);
        }

        v77 = v79;
      }

      while (v79 != v76);
      v78 = v96;
    }

    v97 = v76;
    operator delete(v78);
  }

LABEL_103:
  v82 = *MEMORY[0x277D85DE8];
}

void sub_23CAA217C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  operations_research::sat::Model::~Model(&a21);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<int,char [2],long long,char [25]>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unsigned int *a6@<X5>, const char *a7@<X6>, unint64_t *a8@<X7>, std::string *a9@<X8>, const char *a10)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v26[0] = *a1;
  v26[1] = v13;
  v14 = *a4;
  v26[2] = *a3;
  v26[3] = v14;
  v26[4] = *a5;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v25, a3);
  v23 = v25;
  v24 = v15 - v25;
  v27 = v25;
  v28 = v15 - v25;
  v16 = strlen(a7);
  v29 = a7;
  v30 = v16;
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v22, v17) - v22;
  v31 = v22;
  v32 = v21;
  v18 = strlen(a10);
  v33 = a10;
  v34 = v18;
  result = absl::lts_20240722::strings_internal::CatPieces(v26, 9, a9);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveOneConstraint(operations_research::sat::CpModelPresolver *this, signed int a2)
{
  v2 = *(this + 1);
  if (v2[52])
  {
    return 0;
  }

  v6 = *v2;
  v8 = *(v6 + 48);
  v7 = (v6 + 48);
  v9 = v8 + 8 * a2 + 7;
  if (v8)
  {
    v7 = v9;
  }

  v10 = *v7;
  if (!operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(this, a2, *v7))
  {
    if (!operations_research::sat::CpModelPresolver::PresolveEnforcementLiteral(this, v10))
    {
      goto LABEL_7;
    }

LABEL_10:
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
    v15 = *(v10 + 15) - 3;
    goto LABEL_11;
  }

  operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
  if (operations_research::sat::CpModelPresolver::PresolveEnforcementLiteral(this, v10))
  {
    goto LABEL_10;
  }

LABEL_7:
  v15 = *(v10 + 15) - 3;
  if (v15 <= 0x1A)
  {
LABEL_11:
    switch(v15)
    {
      case 0u:

        return operations_research::sat::CpModelPresolver::PresolveBoolOr(this, v10, v12, v13, v14);
      case 1u:

        return operations_research::sat::CpModelPresolver::PresolveBoolAnd(this, v10, v12, v13, v14);
      case 2u:

        return operations_research::sat::CpModelPresolver::PresolveBoolXor(this, v10);
      case 4u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntDiv(this, a2, v10);
      case 5u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntMod(this, a2, v10);
      case 8u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        return operations_research::sat::CpModelPresolver::PresolveIntProd(this, v10);
      case 9u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinear(this, v10, v12, v13, v14))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
          if (!operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, a2, v10))
          {
LABEL_49:
            if (!operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v16, v17, v18, v19))
            {
              goto LABEL_50;
            }

            goto LABEL_121;
          }
        }

        else if (!operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(this, a2, v10))
        {
          goto LABEL_49;
        }

        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v45, v46, v47, v48))
        {
LABEL_50:
          if (!operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(this, v10))
          {
            goto LABEL_51;
          }

          goto LABEL_122;
        }

LABEL_121:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::PresolveLinearEqualityWithModulo(this, v10))
        {
LABEL_51:
          if (!operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(this, v10, v20))
          {
            goto LABEL_125;
          }

          goto LABEL_123;
        }

LABEL_122:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (!operations_research::sat::CpModelPresolver::RemoveSingletonInLinear(this, v10, v49))
        {
          goto LABEL_125;
        }

LABEL_123:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v50, v51, v52, v53))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

LABEL_125:
        if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v21, v22, v23, v24))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        if (operations_research::sat::CpModelPresolver::PresolveLinearOnBooleans(this, v10))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        v54 = *(v10 + 4);
        operations_research::sat::CpModelPresolver::ExtractEnforcementLiteralFromLinearConstraint(this, a2, v10);
        if ((*(*(this + 1) + 416) & 1) == 0)
        {
          if (*(v10 + 4) > v54)
          {
            if (operations_research::sat::CpModelPresolver::DivideLinearByGcd(this, v10, v55, v56, v57))
            {
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
            }

            if (operations_research::sat::CpModelPresolver::PresolveSmallLinear(this, v10, v58, v59, v60, v61))
            {
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
            }
          }

          if (operations_research::sat::CpModelPresolver::PresolveDiophantine(this, v10))
          {
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
          }

          operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(this, a2, v10, v62);
        }

        return 0;
      case 0xAu:

        return operations_research::sat::CpModelPresolver::PresolveAllDiff(this, v10);
      case 0xBu:

        return operations_research::sat::CpModelPresolver::PresolveElement(this, v10, v12, v13, v14);
      case 0xCu:

        return operations_research::sat::CpModelPresolver::PresolveCircuit(this, v10);
      case 0xDu:

        return operations_research::sat::CpModelPresolver::PresolveTable(this, v10);
      case 0xEu:

        return operations_research::sat::CpModelPresolver::PresolveAutomaton(this, v10);
      case 0xFu:

        return operations_research::sat::CpModelPresolver::PresolveInverse(this, v10);
      case 0x10u:

        return operations_research::sat::CpModelPresolver::PresolveInterval(this, a2, v10);
      case 0x11u:
        v25 = *(v10 + 6);
        v26 = *(v25 + 16);
        if (v26 < 1)
        {
          goto LABEL_107;
        }

        v27 = 0;
        v28 = 0;
        do
        {
          while (1)
          {
            v29 = *(*(v25 + 24) + 4 * v27);
            IntervalRepresentative = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v29);
            if (v29 == IntervalRepresentative)
            {
              break;
            }

            *(*(v25 + 24) + 4 * v27) = IntervalRepresentative;
            v28 = 1;
            v31 = v26 - 1 == v27++;
            if (v31)
            {
              goto LABEL_106;
            }
          }

          ++v27;
        }

        while (v26 != v27);
        if ((v28 & 1) == 0)
        {
          goto LABEL_107;
        }

LABEL_106:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_107:

        return operations_research::sat::CpModelPresolver::PresolveNoOverlap(this, v10);
      case 0x12u:
        v32 = *(v10 + 6);
        v33 = *(v32 + 16);
        if (v33 < 1)
        {
          goto LABEL_112;
        }

        v34 = 0;
        v35 = 0;
        do
        {
          while (1)
          {
            v36 = *(*(v32 + 24) + 4 * v34);
            v37 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v36);
            if (v36 == v37)
            {
              break;
            }

            *(*(v32 + 24) + 4 * v34) = v37;
            v35 = 1;
            v31 = v33 - 1 == v34++;
            if (v31)
            {
              goto LABEL_111;
            }
          }

          ++v34;
        }

        while (v33 != v34);
        if ((v35 & 1) == 0)
        {
          goto LABEL_112;
        }

LABEL_111:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_112:
        if (*(v10 + 15) == 21)
        {
          v44 = *(v10 + 6);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v10);
          *(v10 + 15) = 21;
          v63 = *(v10 + 1);
          if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v63);
          *(v10 + 6) = v44;
        }

        v64 = *(v44 + 40);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = 0;
          do
          {
            while (1)
            {
              v67 = *(*(v44 + 48) + 4 * v65);
              v68 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v67);
              if (v67 == v68)
              {
                break;
              }

              *(*(v44 + 48) + 4 * v65) = v68;
              v66 = 1;
              v31 = v64 - 1 == v65++;
              if (v31)
              {
                goto LABEL_150;
              }
            }

            ++v65;
          }

          while (v64 != v65);
          if ((v66 & 1) == 0)
          {
            goto LABEL_151;
          }

LABEL_150:
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

LABEL_151:

        return operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(this, v11, v10);
      case 0x13u:
        v38 = *(v10 + 6);
        v39 = *(v38 + 24);
        if (v39 < 1)
        {
          goto LABEL_116;
        }

        v40 = 0;
        v41 = 0;
        do
        {
          while (1)
          {
            v42 = *(*(v38 + 32) + 4 * v40);
            v43 = operations_research::sat::PresolveContext::GetIntervalRepresentative(*(this + 1), v42);
            if (v42 == v43)
            {
              break;
            }

            *(*(v38 + 32) + 4 * v40) = v43;
            v41 = 1;
            v31 = v39 - 1 == v40++;
            if (v31)
            {
              goto LABEL_115;
            }
          }

          ++v40;
        }

        while (v39 != v40);
        if ((v41 & 1) == 0)
        {
          goto LABEL_116;
        }

LABEL_115:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
LABEL_116:

        return operations_research::sat::CpModelPresolver::PresolveCumulative(this, v10);
      case 0x14u:

        return operations_research::sat::CpModelPresolver::PresolveRoutes(this, v10, v12);
      case 0x15u:

        return operations_research::sat::CpModelPresolver::PresolveReservoir(this, v10);
      case 0x17u:

        return operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v10);
      case 0x18u:
        if (operations_research::sat::CpModelPresolver::CanonicalizeLinearArgument(this, v10, *(v10 + 6)))
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), a2);
        }

        if (!operations_research::sat::CpModelPresolver::DivideLinMaxByGcd(this, a2, v10))
        {
          return 0;
        }

        return operations_research::sat::CpModelPresolver::PresolveLinMax(this, v10);
      case 0x1Au:

        return operations_research::sat::CpModelPresolver::PresolveExactlyOne(this, v10);
      default:
        return 0;
    }
  }

  return 0;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessSetPPCSubset(uint64_t a1, int a2, signed int a3, uint64_t *a4, uint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v7 = *(a1 + 8);
  v8 = (*v7 + 48);
  if (*v8)
  {
    v9 = (*v8 + 7 + 8 * a2);
  }

  else
  {
    v9 = (*v7 + 48);
  }

  v10 = *v9;
  if (*v8)
  {
    v8 = (*v8 + 7 + 8 * a3);
  }

  v11 = *v8;
  v12 = *(v10 + 60);
  if (v12 != 3 && v12 != 29)
  {
    if (v12 == 26)
    {
      v16 = *(v11 + 60);
LABEL_19:
      if (v16 == 29 || v16 == 26)
      {
        operator new();
      }

      return 1;
    }

    return 1;
  }

  v16 = *(v11 + 60);
  if (v16 == 29 || v16 == 26)
  {
    operator new();
  }

  if (v12 != 29)
  {
    if (v12 == 26)
    {
      goto LABEL_19;
    }

    if (v12 != 3)
    {
      return 1;
    }
  }

  if (v16 == 3)
  {
    operator new();
  }

  if (v12 != 29 || v16 != 12)
  {
    return 1;
  }

  if (*a4 > 1)
  {
    v22 = a6;
    absl::lts_20240722::container_internal::ClearBackingArray(a4, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, *a4 < 0x80, 1u);
    a6 = v22;
  }

  else
  {
    a4[1] = 0;
  }

  v138 = a6;
  if (*(v10 + 60) == 29)
  {
    v23 = *(v10 + 48);
  }

  else
  {
    v23 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v24 = 4 * *(v23 + 4);
  if (v24)
  {
    v25 = v23[3];
    v26 = (v25 + v24);
    do
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a4, v25, &v153);
      if (BYTE8(v154) == 1)
      {
        *v154 = *v25;
      }

      v25 = (v25 + 4);
    }

    while (v25 != v26);
  }

  v137 = a7;
  operations_research::sat::ConstraintProto::Clear((a1 + 168));
  operations_research::Domain::Domain(&v153, 0);
  v27 = 0;
  v141 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v139 = 0x7FFFFFFFFFFFFFFFLL;
  v140 = 0x8000000000000000;
  v28 = *(v11 + 60);
  if (v28 == 12)
  {
    goto LABEL_47;
  }

LABEL_46:
  for (i = &operations_research::sat::_LinearConstraintProto_default_instance_; v27 < *(i + 4); i = *(v11 + 48))
  {
    v30 = v11;
    v31 = *(i[3] + v27);
    v32 = i[6][v27];
    v33 = *a4;
    if (*a4 > 1)
    {
      v40 = 0;
      _X11 = a4[2];
      __asm { PRFM            #4, [X11] }

      v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31));
      v47 = vdup_n_s8(v46 & 0x7F);
      v48 = ((v46 >> 7) ^ (_X11 >> 12)) & v33;
      v49 = *(_X11 + v48);
      v50 = vceq_s8(v49, v47);
      if (!v50)
      {
        goto LABEL_64;
      }

LABEL_62:
      while (*(a4[3] + 4 * ((v48 + (__clz(__rbit64(v50)) >> 3)) & v33)) != v31)
      {
        v50 &= ((v50 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v50)
        {
LABEL_64:
          while (!*&vceq_s8(v49, 0x8080808080808080))
          {
            v40 += 8;
            v48 = (v40 + v48) & v33;
            v49 = *(_X11 + v48);
            v50 = vceq_s8(v49, v47);
            if (v50)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_67;
        }
      }

LABEL_52:
      v34 = v140;
      if (v32 >= v139)
      {
        v35 = v139;
      }

      else
      {
        v35 = v32;
      }

      if (v140 <= v32)
      {
        v34 = v32;
      }

      v139 = v35;
      v140 = v34;
      v36 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      v11 = v30;
      if (v28 == 12)
      {
        v36 = *(v30 + 48);
      }

      v37 = v36[6][v27];
      v38 = v151;
      if (v151 >= v152)
      {
        v62 = v150;
        v63 = v151 - v150;
        v64 = (v151 - v150) >> 4;
        v65 = v64 + 1;
        if ((v64 + 1) >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v66 = v152 - v150;
        if ((v152 - v150) >> 3 > v65)
        {
          v65 = v66 >> 3;
        }

        if (v66 >= 0x7FFFFFFFFFFFFFF0)
        {
          v67 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v65;
        }

        if (v67)
        {
          if (!(v67 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v68 = (v151 - v150) >> 4;
        v69 = 16 * v64;
        *v69 = v37;
        *(v69 + 8) = 1;
        v39 = (16 * v64 + 16);
        v70 = (16 * v64 - 16 * v68);
        memcpy((v69 - 16 * v68), v62, v63);
        v150 = v70;
        v151 = v39;
        v152 = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v151 = v37;
        *(v38 + 2) = 1;
        v39 = (v38 + 16);
      }

      ++v141;
      v151 = v39;
      ++v27;
      v28 = *(v11 + 60);
      if (v28 != 12)
      {
        goto LABEL_46;
      }

      continue;
    }

    if (a4[1] >= 2 && *(a4 + 4) == v31)
    {
      goto LABEL_52;
    }

LABEL_67:
    operations_research::sat::PresolveContext::DomainOf(*(a1 + 8), v31, &v142);
    operations_research::Domain::ContinuousMultiplicationBy(&v142, v32, &v144);
    operations_research::Domain::AdditionWith(&v153, &v144, v146, v51);
    operations_research::Domain::RelaxIfTooComplex(v146, &v148);
    if (v153)
    {
      operator delete(v154);
    }

    v153 = v148;
    v154 = *v149;
    v148 = 0;
    if (v146[0])
    {
      operator delete(v146[1]);
      if ((v144 & 1) == 0)
      {
LABEL_71:
        if ((v142 & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_76;
      }
    }

    else if ((v144 & 1) == 0)
    {
      goto LABEL_71;
    }

    operator delete(v145);
    if ((v142 & 1) == 0)
    {
LABEL_72:
      if (*(a1 + 228) == 12)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }

LABEL_76:
    operator delete(v143);
    if (*(a1 + 228) == 12)
    {
LABEL_73:
      v52 = *(a1 + 216);
      goto LABEL_80;
    }

LABEL_77:
    operations_research::sat::ConstraintProto::clear_constraint(a1 + 168);
    *(a1 + 228) = 12;
    v53 = *(a1 + 176);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v53);
    *(a1 + 216) = v52;
LABEL_80:
    v55 = *(v52 + 16);
    v54 = *(v52 + 20);
    if (v55 == v54)
    {
      google::protobuf::RepeatedField<int>::Grow(v52 + 16, v54, (v54 + 1));
      v55 = *(v52 + 16);
    }

    v56 = *(v52 + 24);
    *(v52 + 16) = v55 + 1;
    *(v56 + 4 * v55) = v31;
    if (*(a1 + 228) == 12)
    {
      v57 = *(a1 + 216);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a1 + 168);
      *(a1 + 228) = 12;
      v58 = *(a1 + 176);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v58);
      *(a1 + 216) = v57;
    }

    v60 = *(v57 + 40);
    v59 = *(v57 + 44);
    if (v60 == v59)
    {
      google::protobuf::RepeatedField<long long>::Grow(v57 + 40, v59);
      v60 = *(v57 + 40);
    }

    v61 = *(v57 + 48);
    *(v57 + 40) = v60 + 1;
    *(v61 + 8 * v60) = v32;
    v11 = v30;
    ++v27;
    v28 = *(v30 + 60);
    if (v28 != 12)
    {
      goto LABEL_46;
    }

LABEL_47:
    ;
  }

  v71 = a4[1] >> 1;
  if (v71 != v141)
  {
    result = 1;
    goto LABEL_196;
  }

  v72 = *(a1 + 8);
  if (*(v10 + 60) == 29)
  {
    std::string::basic_string[abi:ne200100]<0>(&v148, "setppc: exactly_one included in linear");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v148, "setppc: at_most_one included in linear");
  }

  operations_research::sat::PresolveContext::UpdateRuleStats(v72, &v148, 1, v73, v74);
  if (SHIBYTE(v149[1]) < 0)
  {
    operator delete(v148);
  }

  operations_research::Domain::Domain(v146, v139, v140);
  operations_research::Domain::AdditionWith(&v153, v146, &v148, v75);
  if (v153)
  {
    operator delete(v154);
  }

  v153 = v148;
  v76 = *v149;
  v154 = *v149;
  v148 = 0;
  if (v146[0])
  {
    operator delete(v146[1]);
  }

  v77 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  if (*(v11 + 60) == 12)
  {
    v77 = *(v11 + 48);
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v77[9], *(v77 + 16), &v148, v76);
  if (operations_research::Domain::IsIncludedIn(&v153, &v148))
  {
    v78 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v146, "setppc: removed trivial linear constraint");
    operations_research::sat::PresolveContext::UpdateRuleStats(v78, v146, 1, v79, v80);
    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    result = 1;
    *v138 = 1;
    goto LABEL_194;
  }

  operations_research::Domain::IntersectionWith(&v153, &v148, v146);
  IsEmpty = operations_research::Domain::IsEmpty(v146);
  if (v146[0])
  {
    operator delete(v146[1]);
  }

  if (IsEmpty)
  {
    v83 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(v146, "setppc: removed infeasible linear constraint");
    operations_research::sat::PresolveContext::UpdateRuleStats(v83, v146, 1, v84, v85);
    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    *v137 = 1;
    result = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(a1, v11, v86, v87, v88);
    goto LABEL_194;
  }

  if (!*(v11 + 16))
  {
    if (v141 <= 0)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v71, 0, "num_matches > 0");
    }

    if (*(v11 + 60) == 12)
    {
      v89 = *(v11 + 48);
    }

    else
    {
      v89 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    operations_research::Domain::FromFlatSpanOfIntervals(v89[9], *(v89 + 16), &v144, v82);
    operations_research::Domain::Domain(&v142, -v140, -v139);
    operations_research::Domain::AdditionWith(&v144, &v142, v146, v90);
    v91 = operations_research::sat::ConstraintProto::mutable_linear((a1 + 168));
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v146, v91);
    if ((v146[0] & 1) == 0)
    {
      if ((v142 & 1) == 0)
      {
        goto LABEL_134;
      }

LABEL_204:
      operator delete(v143);
      if ((v144 & 1) == 0)
      {
        goto LABEL_136;
      }

LABEL_135:
      operator delete(v145);
      goto LABEL_136;
    }

    operator delete(v146[1]);
    if (v142)
    {
      goto LABEL_204;
    }

LABEL_134:
    if (v144)
    {
      goto LABEL_135;
    }

LABEL_136:
    operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(a1, -1, (a1 + 168));
  }

  std::sort[abi:ne200100]<std::__wrap_iter<std::pair<long long,int> *>>(v150, v151);
  v92 = v150;
  if (v151 == v150)
  {
    v100 = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = (v151 - v150) >> 4;
    v96 = 1;
    do
    {
      while (1)
      {
        v98 = v92[2 * v93];
        if (v94 >= 1)
        {
          v99 = &v92[2 * v94];
          if (v98 == *(v99 - 2))
          {
            break;
          }
        }

        v97 = &v92[2 * v94++];
        *v97 = v98;
        *(v97 + 2) = v92[2 * v93 + 1];
        v93 = v96++;
        if (v95 <= v93)
        {
          goto LABEL_143;
        }
      }

      ++*(v99 - 2);
      v93 = v96++;
    }

    while (v95 > v93);
LABEL_143:
    v100 = v94;
  }

  std::vector<std::pair<long long,int>>::resize(&v150, v100);
  v101 = v150;
  if (v150 == v151)
  {
    goto LABEL_193;
  }

  v102 = 0;
  v103 = 0;
  do
  {
    v104 = *(v101 + 2);
    if (v102 < v104)
    {
      v103 = *v101;
    }

    if (v102 <= v104)
    {
      v102 = *(v101 + 2);
    }

    v101 += 2;
  }

  while (v101 != v151);
  if (!v103)
  {
    goto LABEL_193;
  }

  v105 = 0;
  v106 = 0;
  while (2)
  {
    v108 = *(v11 + 60);
    if (v108 == 12)
    {
      v109 = *(v11 + 48);
    }

    else
    {
      v109 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    }

    if (v106 < *(v109 + 4))
    {
      v110 = *(v109[3] + v106);
      v111 = v109[6][v106];
      v112 = *a4;
      if (*a4 <= 1)
      {
        if (a4[1] >= 2 && *(a4 + 4) == v110)
        {
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      v115 = 0;
      _X11 = a4[2];
      __asm { PRFM            #4, [X11] }

      v118 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110));
      v119 = vdup_n_s8(v118 & 0x7F);
      v120 = ((v118 >> 7) ^ (_X11 >> 12)) & v112;
      v121 = *(_X11 + v120);
      v122 = vceq_s8(v121, v119);
      if (!v122)
      {
        goto LABEL_170;
      }

LABEL_168:
      while (*(a4[3] + 4 * ((v120 + (__clz(__rbit64(v122)) >> 3)) & v112)) != v110)
      {
        v122 &= ((v122 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v122)
        {
LABEL_170:
          while (!*&vceq_s8(v121, 0x8080808080808080))
          {
            v115 += 8;
            v120 = (v115 + v120) & v112;
            v121 = *(_X11 + v120);
            v122 = vceq_s8(v121, v119);
            if (v122)
            {
              goto LABEL_168;
            }
          }

          goto LABEL_165;
        }
      }

LABEL_164:
      v111 = (v111 - v103);
      if (v111)
      {
LABEL_165:
        if (v108 == 12)
        {
          v113 = v11;
          v114 = *(v11 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v11);
          *(v11 + 60) = 12;
          v123 = *(v11 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          v114 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v123);
          v113 = v11;
          *(v11 + 48) = v114;
        }

        *(*(v114 + 24) + 4 * v105) = v110;
        if (*(v113 + 60) == 12)
        {
          v107 = *(v113 + 48);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v113);
          *(v113 + 60) = 12;
          v124 = *(v113 + 8);
          if (v124)
          {
            v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
          }

          v107 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v124);
          *(v11 + 48) = v107;
        }

        *(*(v107 + 48) + 8 * v105++) = v111;
      }

      ++v106;
      continue;
    }

    break;
  }

  v125 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  if (*(v125 + 16) > v105)
  {
    *(v125 + 16) = v105;
  }

  v126 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  if (*(v126 + 40) > v105)
  {
    *(v126 + 40) = v105;
  }

  if (*(v11 + 60) == 12)
  {
    v128 = *(v11 + 48);
  }

  else
  {
    v128 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v128[9], *(v128 + 16), &v144, v127);
  operations_research::Domain::Domain(&v142, -v103);
  operations_research::Domain::AdditionWith(&v144, &v142, v146, v129);
  v130 = operations_research::sat::ConstraintProto::mutable_linear(v11);
  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v146, v130);
  if ((v146[0] & 1) == 0)
  {
    if ((v142 & 1) == 0)
    {
      goto LABEL_189;
    }

LABEL_201:
    operator delete(v143);
    if ((v144 & 1) == 0)
    {
      goto LABEL_191;
    }

LABEL_190:
    operator delete(v145);
    goto LABEL_191;
  }

  operator delete(v146[1]);
  if (v142)
  {
    goto LABEL_201;
  }

LABEL_189:
  if (v144)
  {
    goto LABEL_190;
  }

LABEL_191:
  operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(a1 + 8), a3);
  v131 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v146, "setppc: reduced linear coefficients");
  operations_research::sat::PresolveContext::UpdateRuleStats(v131, v146, 1, v132, v133);
  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

LABEL_193:
  result = 1;
LABEL_194:
  if (v148)
  {
    v134 = result;
    operator delete(v149[0]);
    result = v134;
  }

LABEL_196:
  if (v150)
  {
    v151 = v150;
    v135 = result;
    operator delete(v150);
    result = v135;
  }

  if (v153)
  {
    v136 = result;
    operator delete(v154);
    return v136;
  }

  return result;
}

void sub_23CAA3FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, char a20, void *a21, uint64_t a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, void *a29, void *a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36)
{
  if (a17)
  {
    operator delete(__p);
    if ((a20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a20 & 1) == 0)
  {
LABEL_6:
    if (a29)
    {
      operator delete(a30);
    }

    if (a35)
    {
      operator delete(a35);
    }

    if (*(v36 - 168))
    {
      operator delete(*(v36 - 160));
      _Unwind_Resume(exception_object);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(a21);
  goto LABEL_6;
}

uint64_t std::sort[abi:ne200100]<std::__wrap_iter<std::pair<long long,int> *>>(uint64_t a1, uint64_t *a2)
{
  v2 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(a1, a2, &v5, v3, 1);
}

void std::vector<std::pair<long long,int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::pair<long long,int>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 16 * a2;
  }
}

void operations_research::sat::CpModelPresolver::ProcessSetPPC(operations_research::TimeLimit **this)
{
  v1 = this;
  v101 = *MEMORY[0x277D85DE8];
  v2 = operations_research::TimeLimit::LimitReached(this[3]);
  if (v2)
  {
    goto LABEL_117;
  }

  v3 = v1[1];
  if ((*(v3 + 416) & 1) != 0 || !*(*(v3 + 49) + 792))
  {
    goto LABEL_117;
  }

  strcpy(v91, "ProcessSetPPC");
  v92 = 269;
  v95 = *(v1 + 1);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v94 = 0;
  v99 = 0;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v2);
  v4 = v1[1];
  v5 = *(*(v4 + 49) + 792);
  v89 = 0u;
  memset(v90, 0, 24);
  v87 = 0u;
  v88 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = &v87;
  v79 = 0;
  v80 = v5;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v6 = *(*v4 + 56);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = v6;
  if (v6 < 1)
  {
LABEL_91:
    v72 = xmmword_23CE306D0;
    v100 = 0;
    operator new();
  }

  v7 = 0;
  v71 = v1;
  while (1)
  {
    v8 = *v1[1];
    v10 = *(v8 + 48);
    v9 = v8 + 48;
    v11 = v10 + 8 * v7 + 7;
    if (v10)
    {
      v9 = v11;
    }

    v12 = *v9;
    v13 = *(*v9 + 60);
    if (v13 > 25)
    {
      if (v13 != 29 && v13 != 26)
      {
        goto LABEL_7;
      }
    }

    else if (v13 != 3)
    {
      if (v13 == 12)
      {
        v14 = *(*(v12 + 48) + 16);
        if (v14 >= 3)
        {
          v15 = 0;
          v16 = 4 * v14;
          do
          {
            v17 = &operations_research::sat::_LinearConstraintProto_default_instance_;
            if (*(v12 + 60) == 12)
            {
              v17 = *(v12 + 48);
            }

            v18 = *(v17[3] + v15);
            CanBeUsedAsLiteral = operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v71[1], v18);
            if (v18 >= 0 && CanBeUsedAsLiteral)
            {
              operator new();
            }

            v15 += 4;
          }

          while (v16 != v15);
          v1 = v71;
        }
      }

      goto LABEL_7;
    }

    if (operations_research::sat::CpModelPresolver::PresolveOneConstraint(v1, v7))
    {
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v71[1], v7);
    }

    if (*(v71[1] + 416))
    {
      break;
    }

    v22 = *(v12 + 60);
    if (v13 == 3)
    {
      if (v22 == 3)
      {
        goto LABEL_34;
      }
    }

    else if (v13 == 26)
    {
      if (v22 == 26)
      {
        goto LABEL_34;
      }
    }

    else if (v22 == 29)
    {
LABEL_34:
      v23 = *(v12 + 48);
      v24 = *(v23 + 4);
      if (!v24)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v23 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v24 = dword_2810BF048;
    if (!dword_2810BF048)
    {
LABEL_48:
      v27 = 0;
      v33 = v74;
      v32 = v75;
      if (v74 >= v75)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

LABEL_35:
    v25 = v23[3];
    v26 = 4 * v24;
    v27 = 0;
    do
    {
      v28 = *v25;
      if (~*v25 <= *v25)
      {
        v29 = *v25;
      }

      else
      {
        v29 = ~v28;
      }

      v30 = v27;
      v31 = v27 >> 2;
      if (((v27 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v27 >> 2 != -1)
      {
        if (!(((v27 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v31) = __PAIR64__(v29, v28) >> 31;
      v27 = 4 * v31 + 4;
      memcpy(0, 0, v30);
      ++v25;
      v26 -= 4;
    }

    while (v26);
    v33 = v74;
    v32 = v75;
    if (v74 >= v75)
    {
LABEL_49:
      v35 = v73;
      v36 = v33 - v73;
      v37 = (v33 - v73) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        goto LABEL_120;
      }

      v39 = v32 - v73;
      if (v39 >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v40 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (!(v40 >> 62))
        {
          operator new();
        }

LABEL_121:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v41 = v37;
      v42 = (4 * v37);
      v43 = &v42[-v41];
      *v42 = v7;
      v34 = (v42 + 1);
      memcpy(v43, v35, v36);
      v73 = v43;
      v74 = v34;
      v75 = 0;
      if (v35)
      {
        operator delete(v35);
      }

      goto LABEL_62;
    }

LABEL_45:
    *v33 = v7;
    v34 = v33 + 4;
LABEL_62:
    v74 = v34;
    v44 = v87;
    v45 = *(&v87 + 1) - v87;
    v46 = (v90[1] - v90[0]) >> 2;
    if (*(&v87 + 1) >= v88)
    {
      v48 = (v45 >> 2) + 1;
      if (v48 >> 62)
      {
LABEL_120:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v49 = v88 - v87;
      if ((v88 - v87) >> 1 > v48)
      {
        v48 = v49 >> 1;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v50 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 62))
        {
          operator new();
        }

        goto LABEL_121;
      }

      v51 = *(&v87 + 1) - v87;
      v52 = (4 * (v45 >> 2));
      *v52 = v46;
      v47 = (v52 + 1);
      memcpy(0, v44, v51);
      *&v87 = 0;
      *(&v87 + 1) = v47;
      *&v88 = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      **(&v87 + 1) = v46;
      v47 = *(&v44 + 1) + 4;
    }

    *(&v87 + 1) = v47;
    LODWORD(v72) = v27 >> 2;
    std::vector<int>::push_back[abi:ne200100](&v88 + 8, &v72);
    std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v90, v90[1], 0, (4 * (v27 >> 2)), v27 >> 2);
    v53 = v45 >> 2;
    v54 = *(*(v76 + 3) + 4 * (v45 >> 2));
    if (v54)
    {
      *(&v78 + 1) = vadd_s32(*(&v78 + 8), 0x100000001);
      v55 = *(&v77 + 1);
      if (*(&v77 + 1) >= v78)
      {
        v57 = v77;
        v58 = *(&v77 + 1) - v77;
        v59 = 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 2) + 1;
        if (v59 > 0x1555555555555555)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v78 - v77) >> 2) > v59)
        {
          v59 = 0x5555555555555556 * ((v78 - v77) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v60 = 0x1555555555555555;
        }

        else
        {
          v60 = v59;
        }

        if (v60)
        {
          if (v60 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_121;
        }

        v61 = (4 * ((*(&v77 + 1) - v77) >> 2));
        *v61 = v53;
        v61[1] = v54;
        v61[2] = 1;
        v56 = v61 + 3;
        v62 = v61 - v58;
        memcpy(v61 - v58, v57, v58);
        *&v77 = v62;
        *(&v77 + 1) = v56;
        *&v78 = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        **(&v77 + 1) = v53;
        v55[1] = v54;
        v56 = v55 + 3;
        v55[2] = 1;
      }

      v1 = v71;
      *(&v77 + 1) = v56;
    }

    else
    {
      v1 = v71;
    }

LABEL_7:
    if (++v7 == v70)
    {
      goto LABEL_91;
    }
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (*(&v85 + 1))
  {
    operator delete(*(&v85 + 1));
  }

  if (v84)
  {
    *(&v84 + 1) = v84;
    operator delete(v84);
  }

  v63 = *(&v82 + 1);
  if (*(&v82 + 1))
  {
    v64 = v83;
    v65 = *(&v82 + 1);
    if (v83 != *(&v82 + 1))
    {
      v66 = v83;
      do
      {
        v68 = *(v66 - 24);
        v66 -= 24;
        v67 = v68;
        if (v68)
        {
          *(v64 - 16) = v67;
          operator delete(v67);
        }

        v64 = v66;
      }

      while (v66 != v63);
      v65 = *(&v82 + 1);
    }

    *&v83 = v63;
    operator delete(v65);
  }

  if (v81)
  {
    *(&v81 + 1) = v81;
    operator delete(v81);
  }

  if (v77)
  {
    *(&v77 + 1) = v77;
    operator delete(v77);
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (*(&v88 + 1))
  {
    *&v89 = *(&v88 + 1);
    operator delete(*(&v88 + 1));
  }

  if (v87)
  {
    *(&v87 + 1) = v87;
    operator delete(v87);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(v91);
LABEL_117:
  v69 = *MEMORY[0x277D85DE8];
}

void sub_23CAA4F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a22 >= 2)
  {
    operator delete((a24 - (a23 & 1) - 8));
    v62 = a27;
    if (!a27)
    {
LABEL_5:
      if (!v60)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v62 = a27;
    if (!a27)
    {
      goto LABEL_5;
    }
  }

  operator delete(v62);
  if (!v60)
  {
LABEL_7:
    operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a30);
    operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a50);
    operations_research::sat::PresolveTimer::~PresolveTimer(&a60);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(v60);
  goto LABEL_7;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessEncodingFromLinear(operations_research::sat::CpModelPresolver *this, signed int a2, const operations_research::sat::ConstraintProto *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = xmmword_23CE306D0;
  v157 = xmmword_23CE306D0;
  v7 = *(a3 + 15);
  if (v7 == 26)
  {
    v8 = *(a3 + 6);
    v9 = *(v8 + 16);
    if (v9)
    {
      v135 = xmmword_23CE306D0;
      v10 = a4;
      v11 = a5;
      v12 = this;
      v13 = a2;
      v14 = *(v8 + 24);
      v15 = &v14[v9];
      while (1)
      {
        v16 = *v14;
        if (~*v14 <= *v14)
        {
          v17 = *v14;
        }

        else
        {
          v17 = ~v16;
        }

        if (v157 > 1)
        {
          v19 = 0;
          _X11 = v158;
          __asm { PRFM            #4, [X11] }

          v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v17));
          v26 = vdup_n_s8(v25 & 0x7F);
          v27 = ((v25 >> 7) ^ (v158 >> 12)) & v157;
          v28 = *(v158 + v27);
          v29 = vceq_s8(v28, v26);
          if (!v29)
          {
            goto LABEL_18;
          }

          do
          {
LABEL_16:
            if (*(v159 + 8 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v157)) == v17)
            {
              goto LABEL_41;
            }

            v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v29);
LABEL_18:
          while (!*&vceq_s8(v28, 0x8080808080808080))
          {
            v19 += 8;
            v27 = (v19 + v27) & v157;
            v28 = *(v158 + v27);
            v29 = vceq_s8(v28, v26);
            if (v29)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          _ZF = *(&v157 + 1) >= 2uLL && v158 == v17;
          if (_ZF)
          {
LABEL_41:
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 8508);
            goto LABEL_43;
          }
        }

        LODWORD(v153) = v17;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(&v157, &v153, __p);
        if (v146 == 1)
        {
          *__p[1] = v153;
        }

        *(__p[1] + 1) = v16;
        if (++v14 == v15)
        {
          v45 = 0;
          goto LABEL_101;
        }
      }
    }

    v45 = 0;
  }

  else
  {
    if (v7 != 29)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v7, 29, "at_most_or_exactly_one.constraint_case() == ConstraintProto::kExactlyOne");
    }

    v30 = *(a3 + 6);
    v31 = *(v30 + 16);
    if (v31)
    {
      v135 = xmmword_23CE306D0;
      v10 = a4;
      v11 = a5;
      v12 = this;
      v13 = a2;
      v32 = *(v30 + 24);
      v33 = &v32[v31];
      do
      {
        v34 = *v32;
        if (~*v32 <= *v32)
        {
          v35 = *v32;
        }

        else
        {
          v35 = ~v34;
        }

        if (v157 > 1)
        {
          v37 = 0;
          _X11 = v158;
          __asm { PRFM            #4, [X11] }

          v40 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v35));
          v41 = vdup_n_s8(v40 & 0x7F);
          v42 = ((v40 >> 7) ^ (v158 >> 12)) & v157;
          v43 = *(v158 + v42);
          v44 = vceq_s8(v43, v41);
          if (!v44)
          {
            goto LABEL_38;
          }

          do
          {
LABEL_36:
            if (*(v159 + 8 * ((v42 + (__clz(__rbit64(v44)) >> 3)) & v157)) == v35)
            {
              goto LABEL_42;
            }

            v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v44);
LABEL_38:
          while (!*&vceq_s8(v43, 0x8080808080808080))
          {
            v37 += 8;
            v42 = (v37 + v42) & v157;
            v43 = *(v158 + v42);
            v44 = vceq_s8(v43, v41);
            if (v44)
            {
              goto LABEL_36;
            }
          }
        }

        else if (*(&v157 + 1) >= 2uLL && v158 == v35)
        {
LABEL_42:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 8516);
LABEL_43:
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
        }

        LODWORD(v153) = v35;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(&v157, &v153, __p);
        if (v146 == 1)
        {
          *__p[1] = v153;
        }

        *(__p[1] + 1) = v34;
        ++v32;
      }

      while (v32 != v33);
      v45 = 1;
LABEL_101:
      a2 = v13;
      this = v12;
      a5 = v11;
      a4 = v10;
      v6 = v135;
    }

    else
    {
      v45 = 1;
    }
  }

  v46 = **(this + 1) + 48;
  if (*v46)
  {
    v46 = *v46 + 8 * a2 + 7;
  }

  v47 = *v46;
  if (*(*v46 + 60) == 12)
  {
    v48 = *(v47 + 48);
    v156 = **(v48 + 72);
    v49 = *(v48 + 16);
    if (v49 < 1)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v156 = *off_2810BEE90;
    v49 = off_2810BEE58;
    if (off_2810BEE58 < 1)
    {
LABEL_88:
      operator new();
    }
  }

  v136 = v6;
  v134 = v45;
  v130 = a4;
  v131 = a2;
  v137 = this;
  v50 = 0;
  v132 = a2;
  v133 = a5;
  LODWORD(v51) = 0x80000000;
  while (2)
  {
    v52 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    if (*(v47 + 60) == 12)
    {
      v52 = *(v47 + 48);
    }

    v53 = *(v52[3] + v50);
    v54 = v52[6][v50];
    if (~v53 <= v53)
    {
      v55 = *(v52[3] + v50);
    }

    else
    {
      v55 = ~v53;
    }

    if (v157 <= 1)
    {
      v56 = v158 == v55 && *(&v157 + 1) > 1uLL;
      v57 = &absl::lts_20240722::container_internal::kSooControl;
      if (!v56)
      {
        v57 = 0;
      }

      v58 = &v158;
      if (!v57)
      {
        goto LABEL_75;
      }

LABEL_66:
      if (*(v58 + 1) == v53)
      {
        operator new();
      }

      v156 -= v54;
      operator new();
    }

    v59 = 0;
    _X10 = v158;
    __asm { PRFM            #4, [X10] }

    v62 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v55));
    v63 = vdup_n_s8(v62 & 0x7F);
    v64 = ((v62 >> 7) ^ (v158 >> 12)) & v157;
    v65 = *(v158 + v64);
    v66 = vceq_s8(v65, v63);
    if (!v66)
    {
      goto LABEL_71;
    }

    do
    {
LABEL_69:
      v67 = (v64 + (__clz(__rbit64(v66)) >> 3)) & v157;
      if (*(v159 + 8 * v67) == v55)
      {
        v58 = (v159 + 8 * v67);
        if (!(v158 + v67))
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      v66 &= ((v66 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v66);
LABEL_71:
    while (!*&vceq_s8(v65, 0x8080808080808080))
    {
      v59 += 8;
      v64 = (v59 + v64) & v157;
      v65 = *(v158 + v64);
      v66 = vceq_s8(v65, v63);
      if (v66)
      {
        goto LABEL_69;
      }
    }

LABEL_75:
    if (v51 != 0x80000000)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v51, 0xFFFFFFFF80000000, "target_ref == std::numeric_limits<int>::min()");
    }

    if (v54 >= 0)
    {
      v68 = v54;
    }

    else
    {
      v68 = -v54;
    }

    if (v68 != 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v68, 1, "std::abs(coeff) == 1");
    }

    if (v54 == 1)
    {
      v51 = v53;
    }

    else
    {
      v51 = ~v53;
    }

    if (++v50 != v49)
    {
      continue;
    }

    break;
  }

  v69 = *(v137 + 1);
  if (v51 == 0x80000000)
  {
    goto LABEL_88;
  }

  if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(v137 + 1), v51))
  {
    v70 = *(v137 + 1);
    goto LABEL_88;
  }

  v139 = v51;
  v153 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v154 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  v155 = 0;
  if (*(&v157 + 1) >= 2uLL)
  {
    if (v157 >= 2)
    {
      v72 = v158;
      v73 = v159;
      if (*v158 <= -2)
      {
        do
        {
          v74 = __clz(__rbit64((*v72 | ~(*v72 >> 7)) & 0x101010101010101)) >> 3;
          v72 = (v72 + v74);
          v73 += 8 * v74;
        }

        while (*v72 < -1);
      }
    }

    operator new();
  }

  if ((v134 & 1) == 0)
  {
    operator new();
  }

  v150 = 0;
  v151 = 0;
  v149 = 0;
  operations_research::Domain::FromValues(&v149, v152);
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  v148 = 0;
  if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(v137 + 1), v51, v152, &v148) & 1) == 0)
  {
    v77 = 0;
    goto LABEL_110;
  }

  if (v148)
  {
    v75 = *(v137 + 1);
    operator new();
  }

  if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(v137 + 1), v51))
  {
    v76 = *(v137 + 1);
    operator new();
  }

  *__p = v136;
  operations_research::sat::PresolveContext::DomainOf(*(v137 + 1), v51, &v141);
  v143 = 0;
  v78 = v141;
  if (v141 >= 2)
  {
    if (v141)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v143, &v141);
      v78 = v141;
    }

    else
    {
      v143 = v141;
      *v144 = *v142;
    }
  }

  if (v78)
  {
    operator delete(v142[0]);
  }

  if (v143 > 1)
  {
    v81 = v143 & 1;
    v82 = v144;
    v80 = v144[0];
    if (v143)
    {
      v82 = v144[0];
    }

    v79 = *v82;
  }

  else
  {
    v79 = 0;
    v80 = v144[0];
    v81 = v143;
  }

  if (v81)
  {
    v83 = v80;
  }

  else
  {
    v83 = v144;
  }

  if ((v143 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v84 = &v83[2 * (v143 >> 1)];
    do
    {
      v140 = v79;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(__p, &v140, &v141);
      if (LOBYTE(v142[1]) == 1)
      {
        *v142[0] = v140;
      }

      if (v79 == v83[1])
      {
        v83 += 2;
        if (v83 != v84)
        {
          v79 = *v83;
        }
      }

      else
      {
        ++v79;
      }
    }

    while (v83 != v84);
    v81 = v143 & 1;
  }

  if (v81)
  {
    operator delete(v144[0]);
  }

  v85 = v154;
  v86 = *v153;
  v138 = v154[10];
  v87 = *v153 == v154 && v154[10] == 0;
  v88 = v137;
  if (v87)
  {
LABEL_196:
    v126 = **(v88 + 1);
    v128 = *(v126 + 48);
    v127 = (v126 + 48);
    v129 = v128 + 8 * v132 + 7;
    if (v128)
    {
      v127 = v129;
    }

    operations_research::sat::ConstraintProto::Clear(*v127);
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v88 + 1));
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v88 + 1), v131);
    v77 = 1;
    goto LABEL_200;
  }

  v89 = 0;
  while (2)
  {
    v90 = &v86[32 * v89];
    if (__p[0] > 1)
    {
      v94 = 0;
      _X11 = v146;
      __asm { PRFM            #4, [X11] }

      v91 = v90[2];
      v97 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v91) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v91));
      v98 = vdup_n_s8(v97 & 0x7F);
      v99 = ((v97 >> 7) ^ (v146 >> 12)) & __p[0];
      v100 = *(v146 + v99);
      v101 = vceq_s8(v100, v98);
      if (!v101)
      {
        goto LABEL_158;
      }

LABEL_156:
      while (*(v147 + 8 * ((v99 + (__clz(__rbit64(v101)) >> 3)) & __p[0])) != v91)
      {
        v101 &= ((v101 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v101)
        {
LABEL_158:
          while (!*&vceq_s8(v100, 0x8080808080808080))
          {
            v94 += 8;
            v99 = (v94 + v99) & __p[0];
            v100 = *(v146 + v99);
            v101 = vceq_s8(v100, v98);
            if (v101)
            {
              goto LABEL_156;
            }
          }

          goto LABEL_161;
        }
      }

      goto LABEL_149;
    }

    if (__p[1] >= 2)
    {
      v91 = v146;
      if (v146 == v90[2])
      {
LABEL_149:
        v92 = v90[3];
        if (v90[4] - v92 != 4)
        {
          goto LABEL_165;
        }

        _ZF = v91 == v156;
        v93 = v134;
        if (!_ZF)
        {
          v93 = 1;
        }

        if (v93 == 1)
        {
          ++*v130;
          if ((operations_research::sat::PresolveContext::InsertVarValueEncoding(*(v137 + 1), *v92, v51, v90[2]) & 1) == 0)
          {
            goto LABEL_199;
          }
        }

        else
        {
LABEL_165:
          ++*v133;
          VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(v137 + 1), v51, v90[2]);
          v105 = v90[3];
          for (i = v90[4]; v105 != i; ++v105)
          {
            operations_research::sat::PresolveContext::AddImplication(*(v137 + 1), *v105, VarValueEncoding);
          }

          if ((v134 & 1) != 0 || v90[2] != v156)
          {
            v107 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v137 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v108 = v107;
            if (*(v107 + 60) == 3)
            {
              v109 = *(v107 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v107);
              *(v108 + 60) = 3;
              v110 = *(v108 + 8);
              if (v110)
              {
                v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
              }

              v109 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v110);
              *(v108 + 48) = v109;
            }

            v111 = v90[3];
            v112 = v90[4];
            if (v111 == v112)
            {
              v118 = *(v109 + 4);
              v115 = *(v109 + 5);
            }

            else
            {
              v113 = *(v109 + 4);
              v115 = *(v109 + 5);
              v114 = v109 + 2;
              do
              {
                v116 = *v111;
                if (v113 == v115)
                {
                  v119 = v114;
                  google::protobuf::RepeatedField<int>::Grow(v114, v113, (v113 + 1));
                  LODWORD(v113) = *(v109 + 4);
                  v115 = *(v109 + 5);
                  v114 = v119;
                }

                v117 = v109[3];
                v118 = (v113 + 1);
                *(v109 + 4) = v118;
                *(v117 + 4 * v113) = v116;
                ++v111;
                v113 = v118;
              }

              while (v111 != v112);
            }

            if (v118 == v115)
            {
              google::protobuf::RepeatedField<int>::Grow(v109 + 2, v118, (v118 + 1));
              LODWORD(v118) = *(v109 + 4);
            }

            v120 = v109[3];
            *(v109 + 4) = v118 + 1;
            *(v120 + 4 * v118) = ~VarValueEncoding;
          }
        }

LABEL_184:
        if (v86[11])
        {
          ++v89;
          v88 = v137;
          if (v89 == v86[10])
          {
            v121 = v86;
            LODWORD(v51) = v139;
            while (1)
            {
              v122 = *v121;
              if (*(*v121 + 11))
              {
                break;
              }

              v123 = v121[8];
              v121 = *v121;
              if (v123 != v122[10])
              {
                v89 = v123;
                v86 = v122;
                break;
              }
            }

LABEL_194:
            if (v86 == v85 && v89 == v138)
            {
              goto LABEL_196;
            }

            continue;
          }
        }

        else
        {
          v124 = &v86[8 * (v89 + 1) + 240];
          v88 = v137;
          do
          {
            v86 = *v124;
            v125 = *(*v124 + 11);
            v124 = *v124 + 240;
          }

          while (!v125);
          v89 = 0;
        }

        LODWORD(v51) = v139;
        goto LABEL_194;
      }
    }

    break;
  }

LABEL_161:
  v102 = v90[3];
  v103 = v90[4];
  if (v102 == v103)
  {
    goto LABEL_184;
  }

  while ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(v137 + 1), *v102) & 1) != 0)
  {
    if (++v102 == v103)
    {
      goto LABEL_184;
    }
  }

LABEL_199:
  v77 = 0;
LABEL_200:
  if (__p[0] >= 2)
  {
    operator delete((v146 - (__p[1] & 1) - 8));
  }

LABEL_110:
  if (v152[0])
  {
    operator delete(v152[1]);
  }

  if (v155)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v153);
  }

  if (v157 >= 2)
  {
    operator delete((v158 - (BYTE8(v157) & 1) - 8));
  }

  return v77;
}

void sub_23CAA6520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a29 >= 2)
  {
    operator delete((a31 - (a30 & 1) - 8));
  }

  if (*(v37 - 200))
  {
    operator delete(*(v37 - 192));
  }

  absl::lts_20240722::btree_map<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::~btree_map(v37 - 176);
  if (v36)
  {
    operator delete(v36);
  }

  v39 = a1;
  if (__p)
  {
    operator delete(__p);
    v39 = a1;
    if (*(v37 - 144) < 2uLL)
    {
LABEL_9:
      _Unwind_Resume(v39);
    }
  }

  else if (*(v37 - 144) < 2uLL)
  {
    goto LABEL_9;
  }

  v40 = v39;
  operator delete((*(v37 - 128) - (*(v37 - 136) & 1) - 8));
  _Unwind_Resume(v40);
}

uint64_t absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>>::operator[]<long long>(unsigned __int8 **a1, void *a2)
{
  v13 = a2;
  if (!a1[2])
  {
    operator new();
  }

  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  v6 = (v3 + 16);
  do
  {
    v7 = *v6;
    v6 += 4;
    if (v7 >= v2)
    {
      goto LABEL_9;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_9:
  while (!v3[11])
  {
    v3 = *&v3[8 * v5 + 240];
    v4 = v3[10];
    if (v3[10])
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v5) = 0;
  }

  v8 = v5;
  v9 = v5;
  v10 = v3;
  while (v9 == v10[10])
  {
    v9 = v10[8];
    v10 = *v10;
    if (v10[11])
    {
      goto LABEL_17;
    }
  }

  if (v2 >= *&v10[32 * v9 + 16])
  {
    return &v10[32 * v9 + 24];
  }

LABEL_17:
  v10 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1, v3, v8, &std::piecewise_construct, &v13);
  LOBYTE(v9) = v11;
  return &v10[32 * v9 + 24];
}

uint64_t absl::lts_20240722::btree_map<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

uint64_t operations_research::sat::CpModelPresolver::DetectDuplicateConstraints(operations_research::TimeLimit **this)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_23CAA76E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, int a31, __int16 a32, char a33, char a34, void *__p, void *a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a53)
  {
    operator delete(a53);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a56);
  _Unwind_Resume(a1);
}

void operations_research::sat::FindDuplicateConstraints(operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  operations_research::sat::ConstraintProto::ConstraintProto(v60, 0);
  __p[0] = 0;
  __p[1] = 0;
  v59 = 0;
  v56 = xmmword_23CE306D0;
  if (*(this + 16) & 1) == 0 || (v3)
  {
    goto LABEL_21;
  }

  v5 = v61;
  if ((v61 & 1) == 0)
  {
    v6 = v51[1];
    if ((v51[1] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v5 != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_6;
    }

LABEL_9:
    operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
    goto LABEL_10;
  }

  v5 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
  v6 = v51[1];
  if (v51[1])
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5 == v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
LABEL_10:
  operations_research::sat::ConstraintProto::~ConstraintProto(v51);
  google::protobuf::MessageLite::SerializeAsString(v60, v51);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  v59 = *v52;
  *__p = *v51;
  if ((v52[7] & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = v51[0];
  }

  if ((v52[7] & 0x80u) == 0)
  {
    v10 = HIBYTE(*v52);
  }

  else
  {
    v10 = v51[1];
  }

  v11 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v9, v10, v7, v8);
  v48 = (((v10 + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v11));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v56, &v48, v51);
  if (v52[0] == 1)
  {
    v12 = v51[1];
    *v51[1] = v48;
    v12[2] = 0;
  }

  *(v51[1] + 2) = -1;
LABEL_21:
  v13 = *(this + 14);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = (this + 48);
    v16 = 8;
    do
    {
      if (*v15)
      {
        v18 = (*v15 + v16 - 1);
      }

      else
      {
        v18 = this + 48;
      }

      v19 = *v18;
      v20 = *(*v18 + 60);
      if (v20)
      {
        v21 = v20 == 19;
      }

      else
      {
        v21 = 1;
      }

      if (v21 || v20 == 4 && (v3 & 1) != 0)
      {
        goto LABEL_24;
      }

      operations_research::sat::ConstraintProto::ConstraintProto(v51, 0, v19);
      google::protobuf::internal::ArenaStringPtr::ClearToEmpty(&v53);
      v22 = v52;
      if ((v3 & 1) == 0)
      {
        if (*(v19 + 15) != 12)
        {
          goto LABEL_43;
        }

        if (v55 == 12)
        {
          v23 = v54;
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v51);
          v55 = 12;
          v24 = v51[1];
          if (v51[1])
          {
            v24 = *(v51[1] & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v24);
          v54 = v23;
        }

        v22 = (v23 + 64);
      }

      *v22 = 0;
LABEL_43:
      v25 = v61;
      if (v61)
      {
        v25 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
        v26 = v51[1];
        if ((v51[1] & 1) == 0)
        {
LABEL_45:
          if (v25 == v26)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v26 = v51[1];
        if ((v51[1] & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (v25 == *(v26 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_49:
        operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
        goto LABEL_50;
      }

LABEL_46:
      operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
LABEL_50:
      operations_research::sat::ConstraintProto::~ConstraintProto(v51);
      google::protobuf::MessageLite::SerializeAsString(v60, v51);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = *v52;
      *__p = *v51;
      if ((v52[7] & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = v51[0];
      }

      if ((v52[7] & 0x80u) == 0)
      {
        v30 = HIBYTE(*v52);
      }

      else
      {
        v30 = v51[1];
      }

      v31 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v29, v30, v27, v28);
      v51[0] = ((((v30 + v31) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v30 + v31)));
      LODWORD(v51[1]) = v14;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>(&v56, v51, &v48);
      if (v50 != 1)
      {
        v32 = *(v49 + 8);
        if (v32 == -1)
        {
          if (*(this + 16))
          {
            v37 = *(this + 16);
          }

          else
          {
            v37 = &operations_research::sat::_CpObjectiveProto_default_instance_;
          }
        }

        else
        {
          v33 = (*v15 + 8 * v32 + 7);
          if ((*v15 & 1) == 0)
          {
            v33 = (this + 48);
          }

          v34 = *v33;
          operations_research::sat::ConstraintProto::ConstraintProto(v51, 0, *v33);
          google::protobuf::internal::ArenaStringPtr::ClearToEmpty(&v53);
          v35 = v52;
          if (v3)
          {
LABEL_74:
            *v35 = 0;
          }

          else if (*(v34 + 15) == 12)
          {
            if (v55 == 12)
            {
              v36 = v54;
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v51);
              v55 = 12;
              v38 = v51[1];
              if (v51[1])
              {
                v38 = *(v51[1] & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v38);
              v54 = v36;
            }

            v35 = (v36 + 64);
            goto LABEL_74;
          }
        }

        v39 = v61;
        if (v61)
        {
          v39 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          v40 = v51[1];
          if (v51[1])
          {
            goto LABEL_80;
          }

LABEL_77:
          if (v39 != v40)
          {
            goto LABEL_78;
          }

LABEL_81:
          operations_research::sat::ConstraintProto::InternalSwap(v60, v51);
        }

        else
        {
          v40 = v51[1];
          if ((v51[1] & 1) == 0)
          {
            goto LABEL_77;
          }

LABEL_80:
          if (v39 == *(v40 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_81;
          }

LABEL_78:
          operations_research::sat::ConstraintProto::CopyFrom(v60, v51);
        }

        operations_research::sat::ConstraintProto::~ConstraintProto(v51);
        google::protobuf::MessageLite::SerializeAsString(v60, v51);
        if (v59 >= 0)
        {
          v41 = HIBYTE(v59);
        }

        else
        {
          v41 = __p[1];
        }

        v42 = v52[7];
        v43 = v52[7];
        if ((v52[7] & 0x80u) != 0)
        {
          v42 = v51[1];
        }

        if (v41 == v42)
        {
          if (v59 >= 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if ((v52[7] & 0x80u) == 0)
          {
            v45 = v51;
          }

          else
          {
            v45 = v51[0];
          }

          v46 = memcmp(v44, v45, v41) == 0;
          if (v43 < 0)
          {
LABEL_97:
            operator delete(v51[0]);
          }
        }

        else
        {
          v46 = 0;
          if (v52[7] < 0)
          {
            goto LABEL_97;
          }
        }

        if (v46)
        {
          v51[0] = __PAIR64__(v32, v14);
          std::vector<long long>::push_back[abi:ne200100](a3, v51);
        }

        goto LABEL_24;
      }

      v17 = v49;
      *v49 = v51[0];
      *(v17 + 8) = v51[1];
LABEL_24:
      ++v14;
      v16 += 8;
    }

    while (v13 != v14);
  }

  if (v56 >= 2)
  {
    operator delete((v57 - (BYTE8(v56) & 1) - 8));
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  operations_research::sat::ConstraintProto::~ConstraintProto(v60);
}

void sub_23CAA7E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a23 >= 2)
  {
    operator delete((a25 - (a24 & 1) - 8));
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::sat::ConstraintProto::~ConstraintProto((v32 - 152));
      v34 = *a10;
      if (!*a10)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  operations_research::sat::ConstraintProto::~ConstraintProto((v32 - 152));
  v34 = *a10;
  if (!*a10)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(a10 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::DetectDifferentVariables(operations_research::TimeLimit **this)
{
  v4 = *MEMORY[0x277D85DE8];
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAA9B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v72)
  {
    operator delete(v72);
  }

  operations_research::sat::Model::~Model(&a39);
  if (a49 >= 2)
  {
    operator delete((a51 - (a50 & 1) - 8));
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a60);
  if (a21)
  {
    operator delete(a21);
    if (!a71)
    {
LABEL_9:
      v75 = STACK[0x210];
      if (!STACK[0x210])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!a71)
  {
    goto LABEL_9;
  }

  operator delete((STACK[0x200] - (a72 & 1) - 8));
  v75 = STACK[0x210];
  if (!STACK[0x210])
  {
LABEL_11:
    operations_research::sat::PresolveTimer::~PresolveTimer((v73 - 248));
    _Unwind_Resume(a1);
  }

LABEL_10:
  STACK[0x218] = v75;
  operator delete(v75);
  goto LABEL_11;
}

void operations_research::sat::CpModelPresolver::DetectDifferentVariables(void)::$_0::operator()(uint64_t a1, signed int a2, signed int a3, operations_research::Domain *this)
{
  operations_research::Domain::Complement(this, &v17);
  operations_research::Domain::PartAroundZero(&v17, &v15);
  if (v17)
  {
    operator delete(__p[0]);
  }

  IsEmpty = operations_research::Domain::IsEmpty(&v15);
  v8 = a2 == a3 || IsEmpty;
  if ((v8 & 1) == 0)
  {
    v14 = __PAIR64__(a3, a2);
    if (a2 > a3)
    {
      v14 = __PAIR64__(a2, a3);
      operations_research::Domain::Negation(&v15, &v17);
      if (v15)
      {
        operator delete(v16[0]);
      }

      v15 = v17;
      *v16 = *__p;
    }

    std::vector<long long>::push_back[abi:ne200100](*a1, &v14);
    if (operations_research::Domain::Min(&v15) == 0x8000000000000000)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = operations_research::Domain::Min(&v15);
      if (__OFADD__(-v10, 1))
      {
        v9 = (v10 > 0) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 1 - v10;
      }
    }

    v11 = operations_research::Domain::Max(&v15);
    absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,std::pair<long long,long long>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,std::pair<long long,long long>>>>::try_emplace_impl<std::pair<int,int> const&>(*(a1 + 8), &v14, &v17);
    v12 = v11 + 1;
    v13 = __p[0];
    if (__OFADD__(v11, 1))
    {
      v12 = (v11 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    *(__p[0] + 1) = v9;
    v13[2] = v12;
  }

  if (v15)
  {
    operator delete(v16[0]);
  }
}

void sub_23CAAA01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, char a14, uint64_t a15)
{
  if (a11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(operations_research::TimeLimit **this)
{
  v5 = *MEMORY[0x277D85DE8];
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v3 = this[1];
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 49) + 792))
      {
        operator new();
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAAB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::~raw_hash_set(&a29);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a36);
  operations_research::sat::PresolveTimer::~PresolveTimer(&a57);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::RemoveCommonPart(void *a1, void *a2, int **a3)
{
  v3 = a1;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v6 = a1[1];
    v7 = *(*v6 + 48);
    v8 = ((a2[1] >> 1) + 1);
    do
    {
      v9 = *(v4 + 1);
      v10 = v7 + 7 + 8 * *v4;
      if ((v7 & 1) == 0)
      {
        v10 = *v6 + 48;
      }

      v11 = *v10;
      if (*(*v10 + 60) == 12)
      {
        v12 = *(v11 + 48);
        if (v8 == *(v12 + 4))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (v8 == off_2810BEE58)
        {
LABEL_10:
          if (*v12[9] == v12[9][1])
          {
            v13 = v9 >= 0 ? *(v4 + 1) : -v9;
            if (!*(v11 + 16) && v13 == 1)
            {
              operator new();
            }
          }
        }
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  a1[5] = a1[4];
  if (a2[1] >= 2uLL)
  {
    v15 = a2 + 2;
    if (*a2 >= 2uLL)
    {
      v16 = a2[2];
      v15 = a2[3];
      if (*v16 <= -2)
      {
        do
        {
          v17 = __clz(__rbit64((*v16 | ~(*v16 >> 7)) & 0x101010101010101)) >> 3;
          v16 = (v16 + v17);
          v15 += 2 * v17;
        }

        while (*v16 < -1);
      }
    }

    v18 = *v15;
    v19 = v15[1];
    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(0, 0, __p, 0, 1);
  v20 = v3[1];
  operations_research::Domain::Domain(__p, 0, 0);
  v21 = operations_research::sat::PresolveContext::NewIntVarWithDefinition(v20, __p, 0, 0);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  v22 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v3[1] + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v23 = v22;
  if (*(v22 + 60) == 12)
  {
    v24 = *(v22 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v22);
    *(v23 + 60) = 12;
    v25 = *(v23 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v25);
    *(v23 + 48) = v24;
  }

  v27 = *(v24 + 16);
  v26 = *(v24 + 20);
  if (v27 == v26)
  {
    google::protobuf::RepeatedField<int>::Grow(v24 + 16, v26, (v26 + 1));
    v27 = *(v24 + 16);
  }

  v28 = *(v24 + 24);
  *(v24 + 16) = v27 + 1;
  *(v28 + 4 * v27) = v21;
  v30 = *(v24 + 40);
  v29 = *(v24 + 44);
  if (v30 == v29)
  {
    google::protobuf::RepeatedField<long long>::Grow(v24 + 40, v29);
    v30 = *(v24 + 40);
  }

  v31 = *(v24 + 64);
  v32 = *(v24 + 48);
  *(v24 + 40) = v30 + 1;
  *(v32 + 8 * v30) = -1;
  v33 = *(v24 + 68);
  if (v31 == v33)
  {
    google::protobuf::RepeatedField<long long>::Grow(v24 + 64, v33);
    v105 = *(v24 + 64);
    v33 = *(v24 + 68);
    v34 = *(v24 + 72);
    v35 = v105 + 1;
    *(v24 + 64) = v105 + 1;
    *(v34 + 8 * v105) = 0;
    if (v105 + 1 != v33)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v34 = *(v24 + 72);
    v35 = v31 + 1;
    *(v24 + 64) = v31 + 1;
    *(v34 + 8 * v31) = 0;
    if (v31 + 1 != v33)
    {
      goto LABEL_38;
    }
  }

  google::protobuf::RepeatedField<long long>::Grow(v24 + 64, v33);
  v35 = *(v24 + 64);
  v34 = *(v24 + 72);
LABEL_38:
  *(v24 + 64) = v35 + 1;
  *(v34 + 8 * v35) = 0;
  v36 = operations_research::sat::PossibleIntegerOverflow(*v3[1], *(v24 + 24), *(v24 + 16), *(v24 + 48), *(v24 + 40), 0);
  v37 = v36;
  v38 = v3[1];
  if (v36)
  {
    operator new();
  }

  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v3[1]);
  if (v37)
  {
    return 0;
  }

  v40 = 0;
  v42 = *a3;
  v41 = a3[1];
  if (*a3 != v41)
  {
    v43 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
    v106 = v3;
    do
    {
      v44 = *v42;
      if (v44 == -1)
      {
        goto LABEL_45;
      }

      v45 = v3;
      v46 = *(v42 + 1);
      v47 = *v45[1];
      v49 = *(v47 + 48);
      v48 = (v47 + 48);
      v50 = v49 + 8 * v44 + 7;
      if (v49)
      {
        v48 = v50;
      }

      v51 = *v48;
      v110 = *v42;
      if (*(*v48 + 60) == 12)
      {
        v52 = *(v51 + 48);
        v53 = (v52 + 16);
        v54 = *(v52 + 16);
        if (*(v52 + 16) < 1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v51);
        *(v51 + 60) = 12;
        v66 = *(v51 + 8);
        if (v66)
        {
          v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
        }

        v52 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v66);
        *(v51 + 48) = v52;
        v53 = (v52 + 16);
        v54 = *(v52 + 16);
        if (v54 < 1)
        {
LABEL_51:
          v55 = 0;
          v56 = 0;
          goto LABEL_52;
        }
      }

      v67 = *(v52 + 24);
      v68 = *a2;
      if (*a2 >= 2uLL)
      {
        v75 = 0;
        v56 = 0;
        v55 = 0;
        do
        {
          v82 = 0;
          v83 = *(v67 + 4 * v75);
          _X16 = a2[2];
          __asm { PRFM            #4, [X16] }

          v89 = (((v43 + v83) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v43 + v83));
          v81 = (v89 >> 7) ^ (_X16 >> 12);
          v90 = vdup_n_s8(v89 & 0x7F);
          v91 = a2[3];
          v92 = v81 & v68;
          v93 = *(_X16 + (v81 & v68));
          v94 = vceq_s8(v93, v90);
          if (!v94)
          {
            goto LABEL_86;
          }

LABEL_84:
          while (*(v91 + 16 * ((v92 + (__clz(__rbit64(v94)) >> 3)) & v68)) != v83)
          {
            v94 &= ((v94 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v94)
            {
LABEL_86:
              while (!*&vceq_s8(v93, 0x8080808080808080))
              {
                v82 += 8;
                v92 = (v82 + v92) & v68;
                v93 = *(_X16 + v92);
                v94 = vceq_s8(v93, v90);
                if (v94)
                {
                  goto LABEL_84;
                }
              }

              v96 = *(v52 + 48);
              v97 = *(v96 + 8 * v75);
              if (v83 != v21 || (v56 = 1, v97))
              {
                *(v67 + 4 * v55) = v83;
                *(v96 + 8 * v55) = v97;
                v55 = (v55 + 1);
              }

              goto LABEL_82;
            }
          }

          v80 = 0;
          __asm { PRFM            #4, [X16] }

          while (1)
          {
            v76 = (v81 & v68);
            v77 = *&v76[_X16];
            v78 = vceq_s8(v77, v90);
            if (v78)
            {
              break;
            }

LABEL_79:
            if (vceq_s8(v77, 0x8080808080808080))
            {
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v76);
            }

            v80 += 8;
            v81 = &v76[v80];
          }

          while (1)
          {
            v79 = &v76[__clz(__rbit64(v78)) >> 3] & v68;
            if (*(v91 + 16 * v79) == v83)
            {
              break;
            }

            v78 &= ((v78 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v78)
            {
              goto LABEL_79;
            }
          }

          v70 = *(v91 + 16 * v79 + 8) * v46;
          v71 = *(*(v52 + 48) + 8 * v75);
          if (v70 != v71)
          {
LABEL_101:
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v70, v71, "common_var_coeff_map.at(mutable_linear->vars(k)) * multiple == mutable_linear->coeffs(k)");
          }

LABEL_82:
          ++v75;
        }

        while (v75 != v54);
      }

      else if (a2[1] < 2uLL)
      {
        v56 = 0;
        v55 = 0;
        v98 = *(v52 + 48);
        v99 = v98;
        v100 = *(v52 + 24);
        do
        {
          v102 = *v100++;
          v101 = v102;
          v104 = *v99++;
          v103 = v104;
          if (v101 != v21 || (v56 = 1, v103))
          {
            *(v67 + 4 * v55) = v101;
            v98[v55] = v103;
            v55 = (v55 + 1);
          }

          --v54;
        }

        while (v54);
      }

      else
      {
        v69 = 0;
        v56 = 0;
        v55 = 0;
        do
        {
          v72 = *(v67 + 4 * v69);
          if (*(a2 + 4) == v72)
          {
            v70 = a2[3] * v46;
            v71 = *(*(v52 + 48) + 8 * v69);
            if (v70 != v71)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v73 = *(v52 + 48);
            v74 = *(v73 + 8 * v69);
            if (v72 != v21 || (v56 = 1, v74))
            {
              *(v67 + 4 * v55) = v72;
              *(v73 + 8 * v55) = v74;
              v55 = (v55 + 1);
            }
          }

          ++v69;
        }

        while (v54 != v69);
      }

LABEL_52:
      v57 = v43;
      v58 = v41;
      v59 = v40;
      v60 = *v53;
      if (v60 <= v55)
      {
        v61 = (v52 + 40);
        if (*(v52 + 40) <= v55)
        {
LABEL_54:
          if ((v56 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_55;
        }
      }

      else
      {
        *v53 = v55;
        v60 = v55;
        v61 = (v52 + 40);
        if (*(v52 + 40) <= v55)
        {
          goto LABEL_54;
        }
      }

      *v61 = v55;
      if ((v56 & 1) == 0)
      {
LABEL_58:
        if (v60 == *(v52 + 20))
        {
          v109 = v53;
          google::protobuf::RepeatedField<int>::Grow(v53, v60, (v60 + 1));
          LODWORD(v60) = *v109;
        }

        v62 = *(v52 + 24);
        *(v52 + 16) = v60 + 1;
        *(v62 + 4 * v60) = v21;
        v64 = *(v52 + 40);
        v63 = *(v52 + 44);
        if (v64 == v63)
        {
          google::protobuf::RepeatedField<long long>::Grow(v61, v63);
          v64 = *v61;
        }

        v65 = *(v52 + 48);
        *(v52 + 40) = v64 + 1;
        *(v65 + 8 * v64) = 0;
        v40 = v59;
        v41 = v58;
        v43 = v57;
        goto LABEL_44;
      }

LABEL_55:
      v40 = v59;
      v41 = v58;
      v43 = v57;
LABEL_44:
      v3 = v106;
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(v106[1], v110);
LABEL_45:
      v42 += 4;
    }

    while (v42 != v41);
  }

  return 1;
}

void sub_23CAAC2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::FindBigAtMostOneAndLinearOverlap(operations_research::TimeLimit **this, operations_research::sat::ActivityBoundHelper *a2)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v4 = this[1];
    if ((*(v4 + 416) & 1) == 0)
    {
      if (*(*(v4 + 49) + 792))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_23CAAE898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, unint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a51 >= 2)
  {
    operator delete((a53 - (a52 & 1) - 8));
    if (!a27)
    {
LABEL_3:
      v67 = a56;
      if (!a56)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!a27)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  v67 = a56;
  if (!a56)
  {
LABEL_4:
    v68 = a59;
    if (!a59)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v67);
  v68 = a59;
  if (!a59)
  {
LABEL_5:
    if (!v65)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v68);
  if (!v65)
  {
LABEL_6:
    v69 = a62;
    if (!a62)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v65);
  v69 = a62;
  if (!a62)
  {
LABEL_7:
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  operator delete(v69);
  if (!__p)
  {
LABEL_9:
    operations_research::sat::PresolveTimer::~PresolveTimer(&a65);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(__p);
  goto LABEL_9;
}

unint64_t std::shuffle[abi:ne200100]<std::__wrap_iter<int *>,operations_research::sat::ModelRandomGenerator &>(unint64_t result, uint64_t a2, void *a3)
{
  v3 = (a2 - result) >> 2;
  if (v3 >= 2)
  {
    v4 = result;
    v5 = a2 - 4;
    if (a2 - 4 > result)
    {
      do
      {
        if (v3 != 1)
        {
          if (v3)
          {
            v7 = __clz(v3);
            if (((v3 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v8 = 64;
            }

            else
            {
              v8 = 63;
            }

            v9 = v8 - v7;
            v10 = v9 >> 6;
            if ((v9 & 0x3F) != 0)
            {
              ++v10;
            }

            if (v10 <= v9)
            {
              v11 = 0xFFFFFFFFFFFFFFFFLL >> -(v9 / v10);
            }

            else
            {
              v11 = 0;
            }

            do
            {
              result = (a3[2])(*a3) & v11;
            }

            while (result >= v3);
            if (!result)
            {
              goto LABEL_4;
            }

LABEL_19:
            v12 = *v4;
            *v4 = v4[result];
            v4[result] = v12;
            goto LABEL_4;
          }

          result = (a3[2])(*a3);
          if (result)
          {
            goto LABEL_19;
          }
        }

LABEL_4:
        ++v4;
        --v3;
      }

      while (v4 < v5);
    }
  }

  return result;
}

uint64_t operations_research::sat::CpModelPresolver::FindBigVerticalLinearOverlap(operations_research::TimeLimit **this, operations_research::sat::ActivityBoundHelper *a2)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v4 = this[1];
    if ((*(v4 + 416) & 1) == 0)
    {
      if (*(*(v4 + 49) + 792))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_23CAB0080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (v49)
    {
LABEL_8:
      operator delete(v49);
      v52 = a43;
      if (a43)
      {
LABEL_9:
        operator delete(v52);
        if (!v48)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

LABEL_6:
      if (!v48)
      {
LABEL_11:
        if (a46 >= 2)
        {
          operator delete((a48 - (a47 & 1) - 8));
        }

        operations_research::sat::PresolveTimer::~PresolveTimer((v50 - 248));
        _Unwind_Resume(a1);
      }

LABEL_10:
      operator delete(v48);
      goto LABEL_11;
    }
  }

  else if (v49)
  {
    goto LABEL_8;
  }

  v52 = a43;
  if (a43)
  {
    goto LABEL_9;
  }

  goto LABEL_6;
}

uint64_t operations_research::sat::CpModelPresolver::FindBigHorizontalLinearOverlap(operations_research::TimeLimit **this, operations_research::sat::ActivityBoundHelper *a2)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v4 = this[1];
    if ((*(v4 + 416) & 1) == 0)
    {
      if (*(*(v4 + 49) + 792))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_23CAB1734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
    if (!v63)
    {
LABEL_6:
      if (a32)
      {
        operator delete(a32);
      }

      if (a16)
      {
        operator delete(a16);
      }

      operations_research::sat::PresolveTimer::~PresolveTimer((v64 - 256));
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  operator delete(v63);
  goto LABEL_6;
}

uint64_t operations_research::sat::CpModelPresolver::FindAlmostIdenticalLinearConstraints(operations_research::TimeLimit **this)
{
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0 && (*(this[1] + 416) & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_23CAB2448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (v51)
  {
    operator delete(v51);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a46);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(operations_research::TimeLimit **this)
{
  v5 = *MEMORY[0x277D85DE8];
  result = operations_research::TimeLimit::LimitReached(this[3]);
  if ((result & 1) == 0)
  {
    v3 = this[1];
    if ((*(v3 + 416) & 1) == 0)
    {
      if (*(*(v3 + 49) + 792))
      {
        operator new();
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAB36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v69)
  {
    operator delete(v69);
  }

  operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a39);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a59);
  if (__p)
  {
    a69 = __p;
    operator delete(__p);
  }

  operations_research::sat::PresolveTimer::~PresolveTimer((v70 - 256));
  _Unwind_Resume(a1);
}

void operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(operations_research::sat::PresolveContext **this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(&v8);
  }

  if (!operations_research::sat::PresolveContext::ConstraintVariableGraphIsUpToDate(this[1]))
  {
    operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(&v8);
  }

  v4 = this[1];
  if ((*(v4 + 416) & 1) == 0 && (*(v4 + 16) & 1) == 0 && !operations_research::sat::PresolveContext::IsFixed(v4, a2))
  {
    v5 = this[1];
    if (*(v5 + 1176) == 1 && operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v5, a2))
    {
      v6 = (*(this[1] + 84) + 32 * a2);
      if ((v6[1] & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v8 = 0;
        if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin(v6))
        {
          if ((*v7 & 0x80000000) == 0)
          {
            operator new();
          }
        }
      }
    }
  }
}

void sub_23CAB3C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
    if ((a25 & 1) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 1) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a26);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ProcessVariableInTwoAtMostOrExactlyOne(operations_research::sat::CpModelPresolver *this, int a2)
{
  v106 = a2;
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::IsFixed(v3, a2))
  {
    return;
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2))
  {
    return;
  }

  v5 = *(this + 1);
  if (*(v5 + 1176) != 1 || !operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v5, a2))
  {
    return;
  }

  v6 = *(this + 1);
  v7 = a2;
  v8 = *(v6 + 672);
  v9 = (v8 + 32 * a2);
  v10 = *v9;
  if (*v9 > 1uLL)
  {
    v12 = 0;
    _X14 = v9[2];
    __asm { PRFM            #4, [X14] }

    v18 = ((0x378BC386FLL * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * 0x378BC386FLL);
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X14 >> 12)) & v10;
    v21 = *(_X14 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_11:
      if (*(v9[3] + 4 * ((v20 + (__clz(__rbit64(v22)) >> 3)) & v10)) == -1)
      {
        v11 = v9[1];
        goto LABEL_17;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v22);
LABEL_13:
    while (!*&vceq_s8(v21, 0x8080808080808080))
    {
      v12 += 8;
      v20 = (v12 + v20) & v10;
      v21 = *(_X14 + v20);
      v22 = vceq_s8(v21, v19);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    v11 = v9[1];
  }

  else
  {
    v11 = v9[1];
    if (v11 >= 2 && *(v9 + 4) == -1)
    {
LABEL_17:
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 6)
      {
        return;
      }

      v23 = *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((v6 + 512), &v106);
      v7 = v106;
      v8 = *(*(this + 1) + 672);
      goto LABEL_23;
    }
  }

  if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return;
  }

  v23 = 0;
LABEL_23:
  v24 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((v8 + 32 * v7));
  if (v24)
  {
    v26 = -1;
    v27 = -1;
    do
    {
      v28 = *v25;
      if ((v28 & 0x80000000) == 0)
      {
        v29 = **(this + 1);
        v31 = *(v29 + 48);
        v30 = v29 + 48;
        v32 = v31 + 8 * v28 + 7;
        if (v31)
        {
          v30 = v32;
        }

        v33 = *(*v30 + 60);
        if (v33 != 29 && v33 != 26)
        {
          return;
        }

        if (v26 == -1)
        {
          v26 = *v25;
        }

        else
        {
          v27 = *v25;
        }
      }

      v36 = *(v24 + 1);
      v24 = (v24 + 1);
      LOBYTE(v35) = v36;
      ++v25;
      if (v36 <= -2)
      {
        do
        {
          v37 = __clz(__rbit64((*v24 | ~(*v24 >> 7)) & 0x101010101010101)) >> 3;
          v24 = (v24 + v37);
          v25 += v37;
          v35 = *v24;
        }

        while (v35 < -1);
      }
    }

    while (v35 != 255);
    if (v26 != -1 && v27 != -1)
    {
      if (v26 <= v27)
      {
        v38 = v27;
      }

      else
      {
        v38 = v26;
      }

      if (v26 >= v27)
      {
        v39 = v27;
      }

      else
      {
        v39 = v26;
      }

      v40 = *(this + 1);
      v40[5] = v40[4];
      v41 = *v40;
      v42 = (v41 + 48);
      v43 = *(v41 + 48) - 1;
      v44 = *(v41 + 48) & 1;
      if (v44)
      {
        v42 = (v43 + 8 * v39 + 8);
      }

      v45 = *v42;
      v47 = (*v42 + 48);
      v46 = *v47;
      v48 = *(v45 + 60);
      v49 = *v47;
      if (v48 != 26)
      {
        if (v48 == 29)
        {
          v49 = *v47;
        }

        else
        {
          v49 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }
      }

      if (*(v49 + 4) >= 2u)
      {
        if (v48 != 26 && v48 != 29)
        {
          v46 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }

        v50 = *(v46 + 4);
        if (v50)
        {
          v51 = v46[3];
          v52 = 4 * v50;
          v53 = 0x80000000;
          do
          {
            v54 = *v51;
            LODWORD(__p[0]) = v54;
            if (~v54 <= v54)
            {
              v55 = v54;
            }

            else
            {
              v55 = ~v54;
            }

            if (v55 != v106)
            {
              std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, __p);
              v54 = v53;
            }

            v51 = (v51 + 4);
            v53 = v54;
            v52 -= 4;
          }

          while (v52);
          v41 = **(this + 1);
          v44 = *(v41 + 48) & 1;
          v43 = *(v41 + 48) - 1;
        }

        else
        {
          LODWORD(v54) = 0x80000000;
        }

        v56 = (v41 + 48);
        v57 = v43 + 8 * v38 + 8;
        if (v44)
        {
          v56 = v57;
        }

        v58 = *v56;
        v60 = (*v56 + 48);
        v59 = *v60;
        v61 = *(v58 + 60);
        v62 = *v60;
        if (v61 != 26)
        {
          if (v61 == 29)
          {
            v62 = *v60;
          }

          else
          {
            v62 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }
        }

        if (*(v62 + 4) >= 2u)
        {
          v102 = v39;
          v103 = v38;
          if (v61 != 26 && v61 != 29)
          {
            v59 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }

          v63 = *(v59 + 4);
          if (v63)
          {
            v64 = v59[3];
            v65 = 4 * v63;
            v66 = 0x80000000;
            do
            {
              v67 = *v64;
              LODWORD(__p[0]) = v67;
              if (~v67 <= v67)
              {
                v68 = v67;
              }

              else
              {
                v68 = ~v67;
              }

              if (v68 != v106)
              {
                std::vector<int>::push_back[abi:ne200100](*(this + 1) + 32, __p);
                v67 = v66;
              }

              v64 = (v64 + 4);
              v66 = v67;
              v65 -= 4;
            }

            while (v65);
          }

          else
          {
            LODWORD(v67) = 0x80000000;
          }

          if ((v67 ^ v54) == 0xFFFFFFFF)
          {
            v69 = *(v45 + 60);
            if (v69 == 29)
            {
              if (v54 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

              goto LABEL_96;
            }

            v71 = *(v58 + 60);
            if (v71 == 29)
            {
              if (v67 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

LABEL_95:
              v47 = v60;
LABEL_96:
              v72 = *v47;
              goto LABEL_97;
            }

            v101 = *(this + 1);
            if (*(v101 + 16) & 1) != 0 || v23 && (*(v101 + 576))
            {
              return;
            }

            if (v23 >= 0 == v54 >= 0)
            {
              if (v67 >= 0)
              {
                v70 = v23;
              }

              else
              {
                v70 = -v23;
              }

              if (v71 == 26)
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (v54 < 0)
              {
                v70 = -v23;
              }

              else
              {
                v70 = v23;
              }

              if (v69 == 26)
              {
                goto LABEL_96;
              }
            }

            v72 = &operations_research::sat::_BoolArgumentProto_default_instance_;
LABEL_97:
            v73 = v72[3];
            v74 = *(v72 + 4);
            if (operations_research::sat::PresolveContext::ShiftCostInExactlyOne(*(this + 1), v73, v74, v70))
            {
              v75 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x29B3);
              v76 = operations_research::sat::ConstraintProto::mutable_exactly_one(v75);
              google::protobuf::RepeatedField<int>::Assign<int const*>((v76 + 2), v73, &v73[4 * v74]);
              v77 = **(this + 1);
              v78 = *(v77 + 56);
              v79 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v77 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              if (*(v45 + 60) == 29 && *(v58 + 60) == 29)
              {
                v80 = *(this + 1);
                v81 = *(v80 + 32);
                v82 = *(v80 + 40);
                while (v81 != v82)
                {
                  v83 = *v81++;
                  v84 = operations_research::sat::ConstraintProto::mutable_exactly_one(v79);
                  operations_research::sat::BoolArgumentProto::add_literals(v84, v83);
                }
              }

              else
              {
                v85 = *(this + 1);
                v86 = *(v85 + 32);
                v87 = *(v85 + 40);
                while (v86 != v87)
                {
                  v88 = *v86++;
                  v89 = operations_research::sat::ConstraintProto::mutable_at_most_one(v79);
                  operations_research::sat::BoolArgumentProto::add_literals(v89, v88);
                }
              }

              operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
              v90 = **(this + 1);
              v92 = *(v90 + 48);
              v91 = (v90 + 48);
              v93 = v92 + 8 * v102 + 7;
              if (v92)
              {
                v91 = v93;
              }

              operations_research::sat::ConstraintProto::Clear(*v91);
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v102);
              v94 = **(this + 1);
              v96 = *(v94 + 48);
              v95 = (v94 + 48);
              v97 = v96 + 8 * v103 + 7;
              if (v96)
              {
                v95 = v97;
              }

              operations_research::sat::ConstraintProto::Clear(*v95);
              operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v103);
              v98 = *(this + 1);
              std::string::basic_string[abi:ne200100]<0>(__p, "at_most_one: resolved two constraints with opposite literal");
              operations_research::sat::PresolveContext::UpdateRuleStats(v98, __p, 1, v99, v100);
              if (v105 < 0)
              {
                operator delete(__p[0]);
              }

              operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v106);
              if (operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(this, v79))
              {
                operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v78);
              }
            }
          }
        }
      }
    }
  }
}

void sub_23CAB43DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::RepeatedField<int>::Assign<int const*>(uint64_t result, char *a2, char *a3)
{
  *result = 0;
  v3 = (a3 - a2);
  v4 = (a3 - a2) >> 2;
  if (*(result + 4) < v4)
  {
    v17 = result;
    v18 = a2;
    v19 = a3;
    result = google::protobuf::RepeatedField<int>::Grow(result, 0, v4);
    a2 = v18;
    a3 = v19;
    v5 = *v17;
    v6 = *(v17 + 1);
    *v17 = v4;
    if (v18 == v19)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(result + 8);
    *result = v4;
    if (a2 == a3)
    {
      return result;
    }
  }

  v7 = (v6 + 4 * v5);
  if ((v3 - 4) < 0x1C)
  {
    v8 = a2;
    goto LABEL_10;
  }

  v9 = 4 * v5 + v6;
  if ((v9 - a2) < 0x20)
  {
    v8 = a2;
    do
    {
LABEL_10:
      v16 = *v8++;
      *v7++ = v16;
    }

    while (v8 != a3);
    return result;
  }

  v10 = ((v3 - 4) >> 2) + 1;
  v11 = 4 * (v10 & 0x7FFFFFFFFFFFFFF8);
  v7 = (v7 + v11);
  v8 = &a2[v11];
  v12 = (a2 + 16);
  v13 = (v9 + 16);
  v14 = v10 & 0x7FFFFFFFFFFFFFF8;
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
  if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_10;
  }

  return result;
}

void operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(operations_research::sat::CpModelPresolver *this, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = (*(*(this + 1) + 672) + 32 * a2);
  if (v2[1] >= 2uLL)
  {
    v4 = (v2 + 2);
    if (*v2 >= 2uLL)
    {
      v5 = v2[2];
      v4 = v2[3];
      if (*v5 <= -2)
      {
        do
        {
          v6 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
          v5 = (v5 + v6);
          v4 += v6;
        }

        while (*v5 < -1);
      }
    }

    else
    {
      v5 = &absl::lts_20240722::container_internal::kSooControl;
    }

    v7 = 0;
    do
    {
      v8 = *v4;
      if ((v8 & 0x80000000) == 0)
      {
        v9 = **(this + 1);
        v11 = *(v9 + 48);
        v10 = (v9 + 48);
        v12 = v11 + 8 * v8 + 7;
        if (v11)
        {
          v10 = v12;
        }

        v13 = *v10;
        if (*(v13 + 60) == 12 && *(*(v13 + 48) + 16) == 1)
        {
          operator new();
        }
      }

      ++v7;
      v15 = *(v5 + 1);
      v5 = (v5 + 1);
      LOBYTE(v14) = v15;
      ++v4;
      if (v15 <= -2)
      {
        do
        {
          v16 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
          v5 = (v5 + v16);
          v4 += v16;
          v14 = *v5;
        }

        while (v14 < -1);
      }
    }

    while (v14 != 255);
    if (v7 == 1 && (v8 & 0x80000000) == 0)
    {
      v17 = *(this + 1);
      v18 = *v17 + 48;
      if (*v18)
      {
        v18 = *v18 + 8 * v8 + 7;
      }

      v19 = (v17[81] + 24 * v8);
      if (v19[1] - *v19 == 8)
      {
        v20 = *v18;
        if (!*(*v18 + 16))
        {
          v21 = *(v20 + 60);
          if (v21 != 12)
          {
            v39 = 0;
            if (v21 == 27)
            {
              v22 = *(v20 + 48);
              v23 = *(v22 + 6);
              if (!v23)
              {
                v23 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              if (*(v23 + 4) == 1 && *v23[3] == a2)
              {
                v24 = *v23[6];
                if (v24 < 0)
                {
                  v24 = -v24;
                }

                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "linear1: transferred from abs(X) to X");
                  operations_research::sat::PresolveContext::UpdateRuleStats(v17, &__p, 1, v25, v26);
                  if (SHIBYTE(v36[1]) < 0)
                  {
                    operator delete(__p);
                  }

                  if (*(v20 + 60) == 27)
                  {
                    v27 = *(v20 + 48);
                  }

                  else
                  {
                    v27 = &operations_research::sat::_LinearArgumentProto_default_instance_;
                  }

                  v30 = v27[3];
                  v28 = (v27 + 3);
                  v29 = v30;
                  if (v28[3])
                  {
                    v31 = v28[3];
                  }

                  else
                  {
                    v31 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                  }

                  if (v29)
                  {
                    v28 = (v29 + 7);
                  }

                  v32 = *v28;
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&__p, 0, v31);
                  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v37, 0, v32);
                  std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::operator=<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,void>(v38, &__p);
                }
              }

              v33 = *(this + 1);
            }

            operator new();
          }
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_23CAB4DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a25);
  if (a22)
  {
    operator delete(__p);
  }

  std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~function(v30 - 128);
  if (!a12)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::operator=<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,void>(uint64_t a1, uint64_t a2)
{
  v4[14] = *MEMORY[0x277D85DE8];
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v3, 0, a2);
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(v4, 0, (a2 + 80));
  operator new();
}

void sub_23CAB5068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v11);
  operator delete(v10);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v12 + 80));
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&a10);
  _Unwind_Resume(a1);
}

void sub_23CAB50A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~function(uint64_t a1)
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

void operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(operations_research::sat::CpModelPresolver *this, signed int a2)
{
  v240 = *MEMORY[0x277D85DE8];
  v235 = a2;
  v3 = *(this + 1);
  if (*(v3 + 416))
  {
    goto LABEL_7;
  }

  if (*(v3 + 16))
  {
    goto LABEL_7;
  }

  if (operations_research::sat::PresolveContext::IsFixed(v3, a2))
  {
    goto LABEL_7;
  }

  if (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2))
  {
    goto LABEL_7;
  }

  if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(*(this + 1), a2))
  {
    goto LABEL_7;
  }

  v5 = *(this + 1);
  if (*(*(v5 + 49) + 248) == 1)
  {
    goto LABEL_7;
  }

  IsOnlyUsedInEncodingAndMaybeInObjective = operations_research::sat::PresolveContext::VariableIsOnlyUsedInEncodingAndMaybeInObjective(v5, a2);
  v8 = *(this + 1);
  if (IsOnlyUsedInEncodingAndMaybeInObjective)
  {
    if (!operations_research::sat::PresolveContext::VariableWithCostIsUniqueAndRemovable(v8, a2))
    {
      v9 = a2;
      goto LABEL_11;
    }

    v9 = a2;
    v90 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * a2));
    if (!v90)
    {
      goto LABEL_275;
    }

    v92 = 0xFFFFFFFFLL;
    do
    {
      v93 = *v91;
      if ((v93 & 0x80000000) != 0)
      {
        v93 = v92;
      }

      else if (v92 != -1)
      {
        operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(v92);
      }

      v95 = *(v90 + 1);
      v90 = (v90 + 1);
      LOBYTE(v94) = v95;
      ++v91;
      if (v95 <= -2)
      {
        do
        {
          v96 = __clz(__rbit64((*v90 | ~(*v90 >> 7)) & 0x101010101010101)) >> 3;
          v90 = (v90 + v96);
          v91 += v96;
          v94 = *v90;
        }

        while (v94 < -1);
      }

      v97 = v94;
      v92 = v93;
    }

    while (v97 != 255);
    if (v93 == -1)
    {
LABEL_275:
      operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding();
    }

    v98 = *(this + 1);
    v99 = (*v98 + 48);
    if (*v99)
    {
      v99 = (*v99 + 8 * v93 + 7);
    }

    v100 = *v99;
    v101 = operations_research::sat::PresolveContext::ObjectiveCoeff(v98, a2);
    if (*(v100 + 60) == 12)
    {
      v103 = *(v100 + 48);
      if (*v103[3] == a2)
      {
        v104 = v101;
        goto LABEL_139;
      }
    }

    else if (*off_2810BEE60 == a2)
    {
      v104 = v101;
      v103 = &operations_research::sat::_LinearConstraintProto_default_instance_;
LABEL_139:
      operations_research::Domain::FromFlatSpanOfIntervals(v103[9], *(v103 + 16), &v236, v102);
      if (*(v100 + 60) == 12)
      {
        v105 = *(v100 + 48);
      }

      else
      {
        v105 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      operations_research::Domain::InverseMultiplicationBy(&v236, *v105[6], &v232);
      operations_research::sat::PresolveContext::DomainOf(*(this + 1), v235, &v228);
      operations_research::Domain::IntersectionWith(&v232, &v228, &v212);
      if (v228)
      {
        operator delete(v229);
        if ((v232 & 1) == 0)
        {
LABEL_245:
          if ((v236 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_246;
        }
      }

      else if ((v232 & 1) == 0)
      {
        goto LABEL_245;
      }

      operator delete(*(&v232 + 1));
      if ((v236 & 1) == 0)
      {
LABEL_247:
        if (operations_research::Domain::IsEmpty(&v212))
        {
          v188 = **(this + 1);
          v190 = *(v188 + 48);
          v189 = (v188 + 48);
          v191 = v190 + 8 * v93 + 7;
          if (v190)
          {
            v189 = v191;
          }

          if (operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, *v189, v185, v186, v187))
          {
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v93);
          }
        }

        else
        {
          if (v104)
          {
            v192 = *(this + 1);
            if (v104 < 1)
            {
              v193 = operations_research::sat::PresolveContext::MaxOf(v192, v235);
              v194 = operations_research::Domain::Max(&v212);
            }

            else
            {
              v193 = operations_research::sat::PresolveContext::MinOf(v192, v235);
              v194 = operations_research::Domain::Min(&v212);
            }

            v202 = v194;
            v203 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(&v232, "variables: reduced domain to two values");
            operations_research::sat::PresolveContext::UpdateRuleStats(v203, &v232, 1, v204, v205);
            if (SHIBYTE(v233) < 0)
            {
              operator delete(v232);
            }

            v206 = *(this + 1);
            v207 = v235;
            v236 = v193;
            v237 = v202;
            v208 = std::vector<long long>::vector[abi:ne200100](v234, &v236, 2uLL);
            operations_research::Domain::FromValues(v208, &v232);
            operations_research::sat::PresolveContext::IntersectDomainWith(v206, v207, &v232, 0);
            if (v232)
            {
              operator delete(*(&v232 + 1));
            }

            v201 = v234[0];
            if (!v234[0])
            {
              goto LABEL_270;
            }

            v234[1] = v234[0];
          }

          else
          {
            v195 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(&v232, "variables: fix singleton var in linear1");
            operations_research::sat::PresolveContext::UpdateRuleStats(v195, &v232, 1, v196, v197);
            if (SHIBYTE(v233) < 0)
            {
              operator delete(v232);
            }

            v198 = *(this + 1);
            v199 = v235;
            v200 = operations_research::Domain::Min(&v212);
            operations_research::Domain::Domain(&v232, v200);
            operations_research::sat::PresolveContext::IntersectDomainWith(v198, v199, &v232, 0);
            if ((v232 & 1) == 0)
            {
              goto LABEL_270;
            }

            v201 = *(&v232 + 1);
          }

          operator delete(v201);
        }

LABEL_270:
        if ((v212 & 1) == 0)
        {
          goto LABEL_7;
        }

        v179 = v213[0];
        goto LABEL_236;
      }

LABEL_246:
      operator delete(v237);
      goto LABEL_247;
    }

LABEL_11:
    v232 = xmmword_23CE306D0;
    v236 = 0;
    v237 = 0;
    v238 = &unk_23CE31C20;
    v228 = 0;
    v229 = 0;
    v230 = &unk_23CE31C20;
    v11 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * v9));
    if (v11)
    {
      v12 = v10;
      v13 = 0;
      while (1)
      {
        v14 = *v12;
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_64;
        }

        v15 = *(this + 1);
        v16 = *(*v15 + 48);
        v17 = v16 + 8 * v14 + 7;
        if ((v16 & 1) == 0)
        {
          v17 = *v15 + 48;
        }

        v18 = *v17;
        v19 = *(*v17 + 60);
        if (v19 != 12)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v19, 12, "ct.constraint_case() == ConstraintProto::kLinear");
        }

        v20 = *(v18 + 48);
        if (*(v20 + 16) != 1)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(*(v20 + 16), 1, "ct.linear().vars().size() == 1");
        }

        v21 = *(v20 + 48);
        v22 = *v21;
        if (*v21 >= 0)
        {
          v23 = *v21;
        }

        else
        {
          v23 = -v22;
        }

        if (v23 != 1 || *(v18 + 16) != 1)
        {
          goto LABEL_68;
        }

        v24 = **(v20 + 24);
        if (~v24 <= v24)
        {
          v25 = **(v20 + 24);
        }

        else
        {
          v25 = ~v24;
        }

        operations_research::sat::PresolveContext::DomainOf(v15, v25, &v212);
        v27 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v18 + 60) == 12)
        {
          v27 = *(v18 + 48);
        }

        operations_research::Domain::FromFlatSpanOfIntervals(v27[9], *(v27 + 16), &v221, v26);
        operations_research::Domain::InverseMultiplicationBy(&v221, v22, &v224);
        operations_research::Domain::IntersectionWith(&v224, &v212, &v226);
        if (v224)
        {
          operator delete(__p);
        }

        if (v221)
        {
          operator delete(*(&v221 + 1));
        }

        if (operations_research::Domain::IsEmpty(&v226))
        {
          operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v18 + 24));
LABEL_34:
          v28 = 1;
          if (v226)
          {
            goto LABEL_35;
          }

          goto LABEL_62;
        }

        if (operations_research::Domain::IsFixed(&v226))
        {
          break;
        }

        operations_research::Domain::Complement(&v226, &v221);
        operations_research::Domain::IntersectionWith(&v212, &v221, &v224);
        if (v221)
        {
          operator delete(*(&v221 + 1));
        }

        if (operations_research::Domain::IsEmpty(&v224) || !operations_research::Domain::IsFixed(&v224))
        {
          v33 = 0;
          v28 = 8;
          v13 = 1;
        }

        else
        {
          v31 = operations_research::Domain::Min(&v224);
          if (operations_research::Domain::Contains(&v212, v31))
          {
            v218 = operations_research::Domain::Min(&v224);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v232, &v218, &v221);
            if (v222 == 1)
            {
              **(&v221 + 1) = v218;
            }

            *&v221 = operations_research::Domain::Min(&v224);
            v32 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(&v228, &v221);
            LODWORD(v218) = **(v18 + 24);
            std::vector<int>::push_back[abi:ne200100](v32, &v218);
          }

          v28 = 0;
          v33 = 1;
        }

        if (v224)
        {
          operator delete(__p);
          if (v33)
          {
            goto LABEL_59;
          }
        }

        else if (v33)
        {
          goto LABEL_59;
        }

        if (v226)
        {
LABEL_35:
          operator delete(v227);
          if (v212)
          {
            goto LABEL_36;
          }

          goto LABEL_63;
        }

LABEL_62:
        if (v212)
        {
LABEL_36:
          operator delete(v213[0]);
          if (v28)
          {
            goto LABEL_135;
          }

          goto LABEL_64;
        }

LABEL_63:
        if (v28)
        {
LABEL_135:
          if (v28 != 8)
          {
            goto LABEL_234;
          }

LABEL_67:
          if ((v13 & 1) == 0)
          {
            goto LABEL_74;
          }

LABEL_68:
          v37 = *(this + 1);
          std::string::basic_string[abi:ne200100]<0>(&v212, "TODO variables: only used in linear1.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v37, &v212, 1, v38, v39);
          if ((SHIBYTE(v213[1]) & 0x80000000) == 0)
          {
            goto LABEL_234;
          }

          v40 = v212;
LABEL_233:
          operator delete(v40);
          goto LABEL_234;
        }

LABEL_64:
        v35 = *(v11 + 1);
        v11 = (v11 + 1);
        LOBYTE(v34) = v35;
        ++v12;
        if (v35 <= -2)
        {
          do
          {
            v36 = __clz(__rbit64((*v11 | ~(*v11 >> 7)) & 0x101010101010101)) >> 3;
            v11 = (v11 + v36);
            v12 += v36;
            v34 = *v11;
          }

          while (v34 < -1);
        }

        if (v34 == 255)
        {
          goto LABEL_67;
        }
      }

      v29 = operations_research::Domain::Min(&v226);
      if (operations_research::Domain::Contains(&v212, v29))
      {
        *&v221 = operations_research::Domain::Min(&v226);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find_or_prepare_insert<long long>(&v232, &v221, &v224);
        if (BYTE8(__p) == 1)
        {
          *__p = v221;
        }

        v224 = operations_research::Domain::Min(&v226);
        v30 = absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(&v236, &v224);
        LODWORD(v221) = **(v18 + 24);
        std::vector<int>::push_back[abi:ne200100](v30, &v221);
      }

      else if ((operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v18 + 24)) & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_59:
      v28 = 0;
      if (v226)
      {
        goto LABEL_35;
      }

      goto LABEL_62;
    }

LABEL_74:
    if (v229 <= 1 && v237 < 2)
    {
      goto LABEL_234;
    }

    v42 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::begin(&v232);
    std::vector<long long>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::iterator,0>(&v226, v42, v43, 0);
    std::__sort<std::__less<long long,long long> &,long long *>();
    v44 = v226;
    v45 = v227;
    if (v226 == v227)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v212, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 10982);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v212);
    }

    operations_research::sat::PresolveContext::DomainOf(*(this + 1), v235, &v212);
    v209 = v45;
    v210 = v44;
    v211 = operations_research::Domain::Size(&v212);
    if (v212)
    {
      operator delete(v213[0]);
    }

    v46 = v226;
    v47 = v227;
    if (v226 != v227)
    {
      do
      {
        v57 = *v46;
        VarValueEncoding = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v235, *v46);
        v59 = 0;
        _X9 = v238;
        __asm { PRFM            #4, [X9] }

        v66 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57));
        v67 = v66 >> 7;
        v68 = vdup_n_s8(v66 & 0x7F);
        v69 = ((v66 >> 7) ^ (v238 >> 12)) & v236;
        v70 = *(v238 + v69);
        v71 = vceq_s8(v70, v68);
        if (!v71)
        {
          goto LABEL_92;
        }

        do
        {
LABEL_90:
          v72 = (v69 + (__clz(__rbit64(v71)) >> 3)) & v236;
          if (*(v239 + 32 * v72) == v57)
          {
            v73 = v239 + 32 * v72;
            v74 = *(v73 + 8);
            for (i = *(v73 + 16); v74 != i; ++v74)
            {
              operations_research::sat::PresolveContext::AddImplication(*(this + 1), *v74, VarValueEncoding);
            }

            goto LABEL_97;
          }

          v71 &= ((v71 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v71);
LABEL_92:
        while (!*&vceq_s8(v70, 0x8080808080808080))
        {
          v59 += 8;
          v69 = (v59 + v69) & v236;
          v70 = *(v238 + v69);
          v71 = vceq_s8(v70, v68);
          if (v71)
          {
            goto LABEL_90;
          }
        }

LABEL_97:
        v52 = 0;
        _X9 = v230;
        __asm { PRFM            #4, [X9] }

        for (j = v67 ^ (v230 >> 12); ; j = v52 + v48)
        {
          v48 = j & v228;
          v49 = *(v230 + v48);
          v50 = vceq_s8(v49, v68);
          if (v50)
          {
            break;
          }

LABEL_84:
          if (vceq_s8(v49, 0x8080808080808080))
          {
            goto LABEL_88;
          }

          v52 += 8;
        }

        while (1)
        {
          v51 = (v48 + (__clz(__rbit64(v50)) >> 3)) & v228;
          if (*(v231 + 32 * v51) == v57)
          {
            break;
          }

          v50 &= ((v50 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v50)
          {
            goto LABEL_84;
          }
        }

        v54 = v231 + 32 * v51;
        v55 = *(v54 + 8);
        for (k = *(v54 + 16); v55 != k; ++v55)
        {
          operations_research::sat::PresolveContext::AddImplication(*(this + 1), *v55, ~VarValueEncoding);
        }

LABEL_88:
        ++v46;
      }

      while (v46 != v47);
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
    v78 = (v209 - v210) >> 3;
    v224 = 0;
    if (v78 == v211)
    {
LABEL_107:
      v80 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::contains<int>((*(*(this + 1) + 672) + 32 * v235), &operations_research::sat::kObjectiveConstraint);
      v81 = *(this + 1);
      if (v80)
      {
        v82 = *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>>((v81 + 512), &v235);
        if (v78 == v211)
        {
          v83 = v226;
          v84 = v227;
          v85 = (v227 - 8);
          if (v82 > 0)
          {
            v85 = v226;
          }

          v86 = *v85;
        }

        else
        {
          if (*(*(this + 1) + 576) == 1 && !operations_research::Domain::IsFixed(&v224))
          {
LABEL_240:
            v182 = *(this + 1);
            std::string::basic_string[abi:ne200100]<0>(&v212, "TODO variables: only used in objective and in encoding");
            operations_research::sat::PresolveContext::UpdateRuleStats(v182, &v212, 1, v183, v184);
            if (SHIBYTE(v213[1]) < 0)
            {
              operator delete(v212);
            }

            goto LABEL_229;
          }

          if (v82 < 1)
          {
            v89 = operations_research::Domain::Max(&v224);
          }

          else
          {
            v89 = operations_research::Domain::Min(&v224);
          }

          operations_research::Domain::Domain(&v212, v89);
          if (v224)
          {
            operator delete(__p);
          }

          v224 = v212;
          __p = *v213;
          v86 = operations_research::Domain::Min(&v224);
          v83 = v226;
          v84 = v227;
        }

        if (v83 != v84)
        {
          if (v86 >= 0)
          {
            v106 = v86;
          }

          else
          {
            v106 = -v86;
          }

          do
          {
            v107 = *v83 - v86;
            if (__OFSUB__(*v83, v86))
            {
              v107 = (*v83 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v107 < 0)
            {
              v107 = -v107;
            }

            v108 = (v106 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            _VF = __OFADD__(v106, v107);
            v106 += v107;
            if (_VF)
            {
              v106 = v108;
            }

            if (v106 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_240;
            }

            ++v83;
          }

          while (v83 != v84);
        }

        operations_research::sat::ConstraintProto::ConstraintProto(&v212, 0);
        v109 = operations_research::sat::ConstraintProto::mutable_linear(&v212);
        operations_research::sat::BoolArgumentProto::add_literals(v109, v235);
        operations_research::sat::LinearConstraintProto::add_coeffs(v109, -1);
        operations_research::sat::LinearConstraintProto::add_domain(v109, -v86);
        operations_research::sat::LinearConstraintProto::add_domain(v109, -v86);
        v110 = v226;
        v111 = v227;
        if (v226 != v227)
        {
          do
          {
            v112 = *v110 - v86;
            if (*v110 != v86)
            {
              v113 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v235, *v110);
              if (v113 < 0)
              {
                if (v215 == 12)
                {
                  v114 = v214;
                }

                else
                {
                  v114 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                }

                v115 = *(v109 + 72);
                *v115 = *v114[9] - v112;
                if (v215 == 12)
                {
                  v116 = v214;
                }

                else
                {
                  v116 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                }

                v115[1] = v116[9][1] - v112;
                operations_research::sat::BoolArgumentProto::add_literals(v109, ~v113);
                operations_research::sat::LinearConstraintProto::add_coeffs(v109, -v112);
              }

              else
              {
                operations_research::sat::BoolArgumentProto::add_literals(v109, v113);
                operations_research::sat::LinearConstraintProto::add_coeffs(v109, v112);
              }
            }

            ++v110;
          }

          while (v110 != v111);
        }

        v117 = operations_research::sat::PresolveContext::SubstituteVariableInObjective(*(this + 1), v235, -1, &v212);
        v118 = *(this + 1);
        if ((v117 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&v221, "TODO variables: only used in objective and in encoding");
          operations_research::sat::PresolveContext::UpdateRuleStats(v118, &v221, 1, v180, v181);
          if (v223 < 0)
          {
            operator delete(v221);
          }

          operations_research::sat::ConstraintProto::~ConstraintProto(&v212);
          goto LABEL_229;
        }

        std::string::basic_string[abi:ne200100]<0>(&v221, "variables: only used in objective and in encoding");
        operations_research::sat::PresolveContext::UpdateRuleStats(v118, &v221, 1, v119, v120);
        operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(&v221, &v212);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v212, "variables: only used in encoding");
        operations_research::sat::PresolveContext::UpdateRuleStats(v81, &v212, 1, v87, v88);
        operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(&v212);
      }

      v218 = 0;
      v219 = 0;
      v220 = 0;
      v122 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::begin((*(*(this + 1) + 672) + 32 * v235));
      if (v122)
      {
        v123 = v121;
        do
        {
          LODWORD(v217[0]) = *v123;
          if ((v217[0] & 0x80000000) == 0)
          {
            std::vector<int>::push_back[abi:ne200100](&v218, v217);
          }

          v125 = *(v122 + 1);
          v122 = (v122 + 1);
          LOBYTE(v124) = v125;
          ++v123;
          if (v125 <= -2)
          {
            do
            {
              v126 = __clz(__rbit64((*v122 | ~(*v122 >> 7)) & 0x101010101010101)) >> 3;
              v122 = (v122 + v126);
              v123 += v126;
              v124 = *v122;
            }

            while (v124 < -1);
          }
        }

        while (v124 != 255);
      }

      std::__sort<std::__less<int,int> &,int *>();
      v128 = v218;
      v127 = v219;
      if (v218 != v219)
      {
        do
        {
          v129 = *v128;
          if ((v129 & 0x80000000) == 0)
          {
            v130 = **(this + 1);
            v132 = *(v130 + 48);
            v131 = (v130 + 48);
            v133 = v132 + 8 * v129 + 7;
            if (v132)
            {
              v131 = v133;
            }

            operations_research::sat::ConstraintProto::Clear(*v131);
            operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v129);
          }

          ++v128;
        }

        while (v128 != v127);
        v128 = v218;
      }

      if (v128)
      {
        v219 = v128;
        operator delete(v128);
      }

      v134 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      if (v78 == v211)
      {
        v135 = v226;
        v136 = v227;
        if (v226 != v227)
        {
          do
          {
            v137 = *v135;
            v138 = operations_research::sat::ConstraintProto::mutable_exactly_one(v134);
            v139 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v235, v137);
            operations_research::sat::BoolArgumentProto::add_literals(v138, v139);
            ++v135;
          }

          while (v135 != v136);
        }

        operations_research::sat::CpModelPresolver::PresolveExactlyOne(this, v134);
      }

      else
      {
        v140 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2B6F);
        v141 = operations_research::sat::ConstraintProto::mutable_linear(v140);
        operations_research::sat::BoolArgumentProto::add_literals(v141, v235);
        v142 = operations_research::sat::ConstraintProto::mutable_linear(v140);
        operations_research::sat::LinearConstraintProto::add_coeffs(v142, 1);
        v143 = operations_research::sat::ConstraintProto::mutable_linear(v140);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v224, v143);
        v144 = v226;
        v145 = v227;
        if (v226 != v227)
        {
          do
          {
            v146 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v235, *v144);
            operations_research::sat::BoolArgumentProto::add_literals(v140, ~v146);
            v147 = operations_research::sat::ConstraintProto::mutable_at_most_one(v134);
            operations_research::sat::BoolArgumentProto::add_literals(v147, v146);
            ++v144;
          }

          while (v144 != v145);
        }

        operations_research::sat::CpModelPresolver::PresolveAtMostOne(this, v134);
      }

      v148 = v226;
      v149 = v227;
      if (v226 != v227)
      {
        do
        {
          v150 = *v148;
          v151 = operations_research::sat::PresolveContext::GetOrCreateVarValueEncoding(*(this + 1), v235, *v148);
          v152 = operations_research::sat::PresolveContext::NewMappingConstraint(*(this + 1), "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2B80);
          v153 = v152;
          v155 = *(v152 + 16);
          v154 = *(v152 + 20);
          if (v155 == v154)
          {
            v178 = (v152 + 16);
            google::protobuf::RepeatedField<int>::Grow(v152 + 16, v154, (v154 + 1));
            v155 = *v178;
          }

          v156 = *(v153 + 24);
          *(v153 + 16) = v155 + 1;
          *(v156 + 4 * v155) = v151;
          if (*(v153 + 60) == 12)
          {
            v157 = *(v153 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v153);
            *(v153 + 60) = 12;
            v158 = *(v153 + 8);
            if (v158)
            {
              v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
            }

            v157 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v158);
            *(v153 + 48) = v157;
          }

          v159 = v235;
          v161 = *(v157 + 16);
          v160 = *(v157 + 20);
          if (v161 == v160)
          {
            google::protobuf::RepeatedField<int>::Grow(v157 + 16, v160, (v160 + 1));
            v161 = *(v157 + 16);
          }

          v162 = *(v157 + 24);
          *(v157 + 16) = v161 + 1;
          *(v162 + 4 * v161) = v159;
          if (*(v153 + 60) == 12)
          {
            v163 = *(v153 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v153);
            *(v153 + 60) = 12;
            v164 = *(v153 + 8);
            if (v164)
            {
              v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
            }

            v163 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v164);
            *(v153 + 48) = v163;
          }

          v166 = *(v163 + 40);
          v165 = *(v163 + 44);
          if (v166 == v165)
          {
            google::protobuf::RepeatedField<long long>::Grow(v163 + 40, v165);
            v166 = *(v163 + 40);
          }

          v167 = *(v163 + 48);
          *(v163 + 40) = v166 + 1;
          *(v167 + 8 * v166) = 1;
          if (*(v153 + 60) == 12)
          {
            v168 = *(v153 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v153);
            *(v153 + 60) = 12;
            v169 = *(v153 + 8);
            if (v169)
            {
              v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
            }

            v168 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v169);
            *(v153 + 48) = v168;
          }

          v171 = *(v168 + 64);
          v170 = *(v168 + 68);
          if (v171 == v170)
          {
            google::protobuf::RepeatedField<long long>::Grow(v168 + 64, v170);
            v171 = *(v168 + 64);
          }

          v172 = *(v168 + 72);
          *(v168 + 64) = v171 + 1;
          *(v172 + 8 * v171) = v150;
          if (*(v153 + 60) == 12)
          {
            v173 = *(v153 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v153);
            *(v153 + 60) = 12;
            v174 = *(v153 + 8);
            if (v174)
            {
              v174 = *(v174 & 0xFFFFFFFFFFFFFFFELL);
            }

            v173 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v174);
            *(v153 + 48) = v173;
          }

          v176 = *(v173 + 64);
          v175 = *(v173 + 68);
          if (v176 == v175)
          {
            google::protobuf::RepeatedField<long long>::Grow(v173 + 64, v175);
            v176 = *(v173 + 64);
          }

          v177 = *(v173 + 72);
          *(v173 + 64) = v176 + 1;
          *(v177 + 8 * v176) = v150;
          ++v148;
        }

        while (v148 != v149);
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      operations_research::sat::PresolveContext::MarkVariableAsRemoved(*(this + 1), v235);
LABEL_229:
      if (v224)
      {
        operator delete(__p);
      }

      v40 = v226;
      if (v226)
      {
        v227 = v226;
        goto LABEL_233;
      }

LABEL_234:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(&v228);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(&v236);
      if (v232 < 2)
      {
        goto LABEL_7;
      }

      v179 = (v233 - (BYTE8(v232) & 1) - 8);
LABEL_236:
      operator delete(v179);
      goto LABEL_7;
    }

    operations_research::sat::PresolveContext::DomainOf(*(this + 1), v235, &v221);
    std::vector<long long>::vector[abi:ne200100](v216, &v226);
    operations_research::Domain::FromValues(v216, v217);
    operations_research::Domain::Complement(v217, &v218);
    operations_research::Domain::IntersectionWith(&v221, &v218, &v212);
    if (v224)
    {
      operator delete(__p);
    }

    v224 = v212;
    __p = *v213;
    v212 = 0;
    if (v218)
    {
      operator delete(v219);
      if ((v217[0] & 1) == 0)
      {
LABEL_103:
        v79 = v216[0];
        if (!v216[0])
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }
    }

    else if ((v217[0] & 1) == 0)
    {
      goto LABEL_103;
    }

    operator delete(v217[1]);
    v79 = v216[0];
    if (!v216[0])
    {
LABEL_105:
      if (v221)
      {
        operator delete(*(&v221 + 1));
      }

      goto LABEL_107;
    }

LABEL_104:
    v216[1] = v79;
    operator delete(v79);
    goto LABEL_105;
  }

  if (!operations_research::sat::PresolveContext::VariableIsOnlyUsedInLinear1AndOneExtraConstraint(v8, a2))
  {
LABEL_7:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v41 = *MEMORY[0x277D85DE8];

  operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(this, a2);
}

void sub_23CAB65A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *a30, void *a31, uint64_t a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, void *a42, void *a43, uint64_t a44, char a45, void *a46)
{
  if (*(v46 - 224))
  {
    operator delete(*(v46 - 216));
  }

  if (a13)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CAB6A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::operator[]<long long,absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,(long long *)0>(uint64_t *a1, void *a2)
{
  v2 = 0;
  _X9 = a1[2];
  __asm { PRFM            #4, [X9] }

  v9 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
  v10 = *a1;
  v11 = vdup_n_s8(v9 & 0x7F);
  v12 = ((v9 >> 7) ^ (_X9 >> 12)) & *a1;
  v13 = *(_X9 + v12);
  v14 = vceq_s8(v13, v11);
  if (v14)
  {
LABEL_2:
    v15 = a1[3];
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v10;
      if (*(v15 + 32 * v16) == *a2)
      {
        return v15 + 32 * v16 + 8;
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = vceq_s8(v13, 0x8080808080808080);
      if (v17)
      {
        break;
      }

      v2 += 8;
      v12 = (v2 + v12) & v10;
      v13 = *(_X9 + v12);
      v14 = vceq_s8(v13, v11);
      if (v14)
      {
        goto LABEL_2;
      }
    }

    v20 = (a1[3] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)), (v12 + (__clz(__rbit64(v17)) >> 3)) & v10, v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::GetPolicyFunctions(void)::value));
    *v20 = *a2;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = 0;
    return (v20 + 1);
  }
}

void operations_research::sat::CpModelPresolver::TryToSimplifyDomain(operations_research::sat::CpModelPresolver *this, uint64_t a2)
{
  v3 = *(this + 1);
  if ((*(v3 + 416) & 1) == 0 && !operations_research::sat::PresolveContext::IsFixed(v3, a2) && (operations_research::sat::PresolveContext::VariableWasRemoved(*(this + 1), a2) & 1) == 0 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), a2))
  {
    operations_research::sat::PresolveContext::GetAffineRelation(*(this + 1), a2, v15);
    if (v15[0] == a2)
    {
      operations_research::sat::PresolveContext::DomainOf(*(this + 1), a2, &v13);
      if (operations_research::Domain::Size(&v13) == 2 && (operations_research::Domain::Min(&v13) || operations_research::Domain::Max(&v13) != 1))
      {
        operations_research::sat::PresolveContext::CanonicalizeDomainOfSizeTwo(*(this + 1), a2);
      }

      else
      {
        v5 = v13;
        if (operations_research::Domain::Size(&v13) == (v5 >> 1))
        {
          v6 = operations_research::Domain::Min(&v13);
          p_p = &__p;
          if (v13)
          {
            p_p = __p;
          }

          v8 = __p + 16;
          if ((v13 & 1) == 0)
          {
            v8 = v15;
          }

          v9 = *v8 - v6;
          if ((v13 >> 1) < 3)
          {
            if (v9 != 1)
            {
LABEL_24:
              operations_research::sat::PresolveContext::CanonicalizeAffineVariable(*(this + 1), a2, 1, v9, v6);
            }
          }

          else
          {
            v10 = 2;
            while (1)
            {
              v11 = p_p[2 * v10] - v6;
              if (v11)
              {
                v12 = v9;
                do
                {
                  v9 = v11;
                  v11 = v12 % v11;
                  v12 = v9;
                }

                while (v11);
              }

              if (v9 == 1)
              {
                break;
              }

              if (++v10 == v13 >> 1)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      if (v13)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_23CAB6CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::EncodeAllAffineRelations(operations_research::sat::CpModelPresolver *this)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (*(*v2 + 32) <= 0)
  {
    v5 = *MEMORY[0x277D85DE8];

    operations_research::sat::PresolveContext::RemoveAllVariablesFromAffineRelationConstraint(v2);
    return;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    if (!operations_research::sat::PresolveContext::IsFixed(v2, v4))
    {
      operations_research::sat::PresolveContext::GetAffineRelation(*(this + 1), v4, &v34);
      if (v4 != v34 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v4))
      {
        break;
      }
    }

LABEL_7:
    ++v4;
    v2 = *(this + 1);
    if (v4 >= *(*v2 + 32))
    {
      goto LABEL_32;
    }
  }

  if (operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(this, v4))
  {
    if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v4) && !operations_research::sat::PresolveContext::IsFixed(*(this + 1), v4))
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v7 = v6;
      if (*(v6 + 60) == 12)
      {
        v8 = *(v6 + 48);
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

        v8 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v9);
        *(v7 + 48) = v8;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 20);
      if (v11 == v10)
      {
        google::protobuf::RepeatedField<int>::Grow(v8 + 16, v10, (v10 + 1));
        v11 = *(v8 + 16);
        LODWORD(v10) = *(v8 + 20);
      }

      v12 = *(v8 + 24);
      v13 = (v11 + 1);
      *(v8 + 16) = v13;
      *(v12 + 4 * v11) = v4;
      v14 = *(v8 + 40);
      if (v14 == *(v8 + 44))
      {
        google::protobuf::RepeatedField<long long>::Grow(v8 + 40, *(v8 + 44));
        v14 = *(v8 + 40);
        v13 = *(v8 + 16);
        LODWORD(v10) = *(v8 + 20);
      }

      v15 = *(v8 + 48);
      *(v8 + 40) = v14 + 1;
      *(v15 + 8 * v14) = 1;
      v16 = v34;
      if (v13 == v10)
      {
        google::protobuf::RepeatedField<int>::Grow(v8 + 16, v13, (v13 + 1));
        LODWORD(v13) = *(v8 + 16);
      }

      v17 = *(v8 + 24);
      *(v8 + 16) = v13 + 1;
      *(v17 + 4 * v13) = v16;
      v18 = v35;
      v20 = *(v8 + 40);
      v19 = *(v8 + 44);
      if (v20 == v19)
      {
        google::protobuf::RepeatedField<long long>::Grow(v8 + 40, v19);
        v20 = *(v8 + 40);
      }

      v21 = *(v8 + 64);
      v22 = *(v8 + 48);
      *(v8 + 40) = v20 + 1;
      *(v22 + 8 * v20) = -v18;
      v23 = v36[0];
      v24 = *(v8 + 68);
      if (v21 == v24)
      {
        google::protobuf::RepeatedField<long long>::Grow(v8 + 64, v24);
        v21 = *(v8 + 64);
        v24 = *(v8 + 68);
      }

      v25 = *(v8 + 72);
      v26 = v21 + 1;
      *(v8 + 64) = v21 + 1;
      *(v25 + 8 * v21) = v23;
      v27 = v36[0];
      if (v21 + 1 == v24)
      {
        google::protobuf::RepeatedField<long long>::Grow(v8 + 64, v24);
        v26 = *(v8 + 64);
        v25 = *(v8 + 72);
      }

      *(v8 + 64) = v26 + 1;
      *(v25 + 8 * v26) = v27;
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      ++v3;
    }

    goto LABEL_7;
  }

  v2 = *(this + 1);
LABEL_32:
  operations_research::sat::PresolveContext::RemoveAllVariablesFromAffineRelationConstraint(v2);
  if (v3 >= 1)
  {
    v29 = *(this + 2);
    if (*v29 == 1)
    {
      v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v3, v36, v28);
      v34 = v36;
      v35 = v30 - v36;
      v33[0] = " affine relations still in the model.";
      v33[1] = 37;
      absl::lts_20240722::StrCat(&v34, v33, &__p);
      operations_research::SolverLogger::LogInfo(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 11221, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_23CAB70C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(operations_research::sat::PresolveContext **this, unsigned int a2)
{
  operations_research::sat::PresolveContext::GetAffineRelation(this[1], a2, &v45);
  if (v45 == a2)
  {
    return 1;
  }

  result = operations_research::sat::PresolveContext::PropagateAffineRelation(this[1], a2);
  if (result)
  {
    if (!operations_research::sat::PresolveContext::IsFixed(this[1], a2) && operations_research::sat::PresolveContext::VariableIsUnique(this[1], a2))
    {
      v5 = operations_research::sat::PresolveContext::NewMappingConstraint(this[1], "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 99, 0x2BEE);
      v6 = v5;
      if (*(v5 + 60) == 12)
      {
        v7 = *(v5 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v5);
        *(v6 + 60) = 12;
        v8 = *(v6 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v8);
        *(v6 + 48) = v7;
      }

      v11 = *(v7 + 16);
      v9 = *(v7 + 20);
      v10 = (v7 + 16);
      if (v11 == v9)
      {
        v40 = v7;
        v31 = v7 + 16;
        google::protobuf::RepeatedField<int>::Grow(v7 + 16, v9, (v9 + 1));
        v10 = v31;
        v7 = v40;
        v11 = *(v40 + 16);
        LODWORD(v9) = *(v40 + 20);
      }

      v12 = *(v7 + 24);
      v13 = (v11 + 1);
      *(v7 + 16) = v13;
      *(v12 + 4 * v11) = a2;
      v16 = *(v7 + 40);
      v15 = *(v7 + 44);
      v14 = (v7 + 40);
      if (v16 == v15)
      {
        v36 = v7 + 40;
        v41 = v7;
        v32 = v10;
        google::protobuf::RepeatedField<long long>::Grow(v7 + 40, v15);
        v14 = v36;
        v7 = v41;
        v10 = v32;
        v16 = v41[10];
        v13 = v41[4];
        LODWORD(v9) = v41[5];
      }

      v17 = *(v7 + 48);
      *(v7 + 40) = v16 + 1;
      *(v17 + 8 * v16) = 1;
      v18 = v45;
      if (v13 == v9)
      {
        v37 = v14;
        v42 = v7;
        v33 = v10;
        google::protobuf::RepeatedField<int>::Grow(v10, v13, (v13 + 1));
        v14 = v37;
        v7 = v42;
        LODWORD(v13) = *v33;
      }

      v19 = *(v7 + 24);
      *(v7 + 16) = v13 + 1;
      *(v19 + 4 * v13) = v18;
      v20 = -v46;
      v22 = *(v7 + 40);
      v21 = *(v7 + 44);
      if (v22 == v21)
      {
        v43 = v7;
        v34 = v14;
        google::protobuf::RepeatedField<long long>::Grow(v14, v21);
        v7 = v43;
        v22 = *v34;
      }

      v23 = (v7 + 64);
      v24 = *(v7 + 64);
      v25 = *(v7 + 48);
      *(v7 + 40) = v22 + 1;
      *(v25 + 8 * v22) = v20;
      v26 = v47;
      v27 = *(v7 + 68);
      if (v24 == v27)
      {
        v38 = (v7 + 64);
        v44 = v7;
        google::protobuf::RepeatedField<long long>::Grow(v7 + 64, v27);
        v23 = v38;
        v7 = v44;
        v24 = *(v44 + 64);
        v27 = *(v44 + 68);
      }

      v28 = *(v7 + 72);
      v29 = v24 + 1;
      *(v7 + 64) = v24 + 1;
      *(v28 + 8 * v24) = v26;
      v30 = v47;
      if (v24 + 1 == v27)
      {
        v35 = v7;
        v39 = v23;
        google::protobuf::RepeatedField<long long>::Grow(v23, v27);
        v23 = v39;
        v29 = *(v35 + 64);
        v28 = *(v35 + 72);
      }

      *v23 = v29 + 1;
      *(v28 + 8 * v29) = v30;
      operations_research::sat::PresolveContext::RemoveVariableFromAffineRelation(this[1], a2);
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::CpModelPresolver::ProcessChangedVariables(operations_research::sat::PresolveContext **a1, void *a2, void *a3)
{
  if ((*(a1[1] + 416) & 1) == 0 && (operations_research::TimeLimit::LimitReached(a1[3]) & 1) == 0)
  {
    std::vector<BOOL>::resize(a2, *(*a1[1] + 56), 0);
    v7 = a1[1];
    v8 = *(v7 + 21);
    v9 = *(v7 + 22);
    if (v9 != v8)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v24 = v8[v10];
        if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(a1[1], v24))
        {
          if (*(a1[1] + 416))
          {
            return 0;
          }

          result = operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(a1, v24);
          if (!result)
          {
            return result;
          }

          if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(a1[1], v24))
          {
            operations_research::sat::CpModelPresolver::TryToSimplifyDomain(a1, v24);
            v25 = a1[1];
            if (*(v25 + 416))
            {
              return 0;
            }

            operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v25);
            result = operations_research::sat::PresolveContext::CanonicalizeOneObjectiveVariable(a1[1], v24);
            if (!result)
            {
              return result;
            }

            std::vector<BOOL>::resize(a2, *(*a1[1] + 56), 0);
            v26 = (*(a1[1] + 84) + 32 * v24);
            if (v26[1] >= 2uLL)
            {
              break;
            }
          }
        }

LABEL_19:
        v10 = ++v11;
        v8 = *(v7 + 21);
        if (v11 >= ((*(v7 + 22) - v8) >> 2))
        {
          v7 = a1[1];
          v8 = *(v7 + 21);
          v9 = *(v7 + 22);
          goto LABEL_33;
        }
      }

      v20 = (v26 + 2);
      if (*v26 >= 2uLL)
      {
        v18 = v26[2];
        v20 = v26[3];
        if (*v18 <= -2)
        {
          do
          {
            v27 = __clz(__rbit64((*v18 | ~(*v18 >> 7)) & 0x101010101010101)) >> 3;
            v18 = (v18 + v27);
            v20 += v27;
          }

          while (*v18 < -1);
        }
      }

      else
      {
        v18 = &absl::lts_20240722::container_internal::kSooControl;
      }

      while (1)
      {
        v21 = *v20;
        if ((v21 & 0x80000000) == 0)
        {
          v22 = *(*a2 + 8 * (v21 >> 6));
          if ((v22 & (1 << v21)) == 0)
          {
            break;
          }
        }

        v23 = *(v18 + 1);
        v18 = (v18 + 1);
        LOBYTE(v14) = v23;
        ++v20;
        if (v23 <= -2)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v14 == 255)
        {
          goto LABEL_19;
        }
      }

      v12 = *(a3 + 1);
      v13 = a3[2];
      v14 = a3[1];
      *(*a2 + 8 * (v21 >> 6)) = v22 | (1 << v21);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = ((v13 - v14) << 7) - 1;
      }

      v16 = a3[5];
      v17 = v16 + a3[4];
      if (v15 == v17)
      {
        std::deque<int>::__add_back_capacity(a3);
        v14 = a3[1];
        v16 = a3[5];
        v17 = a3[4] + v16;
      }

      *(*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF)) = v21;
      a3[5] = v16 + 1;
      v19 = *(v18 + 1);
      v18 = (v18 + 1);
      LOBYTE(v14) = v19;
      ++v20;
      if (v19 > -2)
      {
        goto LABEL_18;
      }

      do
      {
LABEL_17:
        v14 = __clz(__rbit64((*v18 | ~(*v18 >> 7)) & 0x101010101010101)) >> 3;
        v18 = (v18 + v14);
        v20 += v14;
        LODWORD(v14) = *v18;
      }

      while (v14 < -1);
      goto LABEL_18;
    }

LABEL_33:
    if (v8 != v9)
    {
      v28 = *(v7 + 18);
      v29 = v8;
      if (v9 - 1 == v8)
      {
        goto LABEL_48;
      }

      v30 = (((v9 - 1) - v8) >> 2) + 1;
      v29 = &v8[v30 & 0x7FFFFFFFFFFFFFFELL];
      v31 = v8 + 1;
      v32 = v30 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v33 = (*v31 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v28 + ((*(v31 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v28 + v33) = 0;
        v31 += 2;
        v32 -= 2;
      }

      while (v32);
      if (v30 != (v30 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_48:
        do
        {
          v34 = *v29++;
          *(v28 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v29 != v9);
      }
    }

    *(v7 + 22) = v8;
    v35 = a3[4];
    v36 = (v35 >> 7) & 0x1FFFFFFFFFFFFF8;
    v37 = a3[1];
    v38 = (v37 + v36);
    if (a3[2] == v37)
    {
      v46 = 0;
      v40 = 0;
      v49 = a3[5];
      v41 = a3 + 5;
      v45 = (v37 + 8 * ((v49 + v35) >> 10));
    }

    else
    {
      v39 = a3[4] & 0x3FFLL;
      v40 = &(*v38)[4 * v39];
      v42 = a3[5];
      v41 = a3 + 5;
      v43 = v42 + v35;
      v44 = ((v42 + v35) >> 7) & 0x1FFFFFFFFFFFFF8;
      v45 = (v37 + v44);
      v46 = (*(v37 + v44) + 4 * (v43 & 0x3FF));
      if (v46 != v40)
      {
        v47 = v43 & 0x3FF | ((v44 - v36) << 7);
        if (v47 != v39)
        {
          v48 = 63 - __clz(v47 - v39);
LABEL_45:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(v38, v40, v45, v46, &v50, 2 * v48, 1);
          return *v41 != 0;
        }
      }
    }

    v48 = 0;
    goto LABEL_45;
  }

  return 0;
}

void operations_research::sat::CpModelPresolver::PresolveToFixPoint(operations_research::sat::CpModelPresolver *this)
{
  v148 = *MEMORY[0x277D85DE8];
  if (*(*(this + 1) + 416))
  {
    goto LABEL_197;
  }

  strcpy(v124, "PresolveToFixPoint");
  *(&v124[2] + 3) = 0;
  *(&v124[2] + 7) = 274;
  v125 = *(this + 1);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v124[5] = 0;
  v129 = 0;
  v124[4] = absl::lts_20240722::GetCurrentTimeNanos(this);
  v2 = *(this + 1);
  if (*(v2[49] + 304) <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = *(v2[49] + 304);
  }

  v121 = xmmword_23CE306D0;
  v4 = *(*v2 + 56);
  memset(v120, 0, sizeof(v120));
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v118 = 0u;
  v119 = 0u;
  *v117 = 0u;
  v5 = *(this + 1);
  if (*(*(v5 + 392) + 288) == 1)
  {
    std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,operations_research::sat::ModelRandomGenerator &>(0, 0, 0, 0, *(v5 + 408));
  }

  else
  {
    *v130 = this;
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(0, 0, 0, 0, v130, 0, 1);
  }

  v6 = 0;
  v110 = 0;
  for (i = 0; i != 1000; ++i)
  {
    if (!v119.i64[1])
    {
      break;
    }

    if (operations_research::TimeLimit::LimitReached(*(this + 3)))
    {
      break;
    }

    v8 = *(this + 1);
    if ((*(v8 + 416) & 1) != 0 || *(v8 + 24) > v3)
    {
      break;
    }

    if (v119.i64[1])
    {
      while (1)
      {
        v8 = *(this + 1);
        if (*(v8 + 416))
        {
          break;
        }

        v9 = operations_research::TimeLimit::LimitReached(*(this + 3));
        v8 = *(this + 1);
        if ((v9 & 1) != 0 || *(v8 + 24) > v3)
        {
          break;
        }

        v10 = v117[1];
        v11 = *(*(v117[1] + ((v119.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v119.i16[0] & 0x3FF));
        *(v120[0] + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v11);
        v119 = vaddq_s64(v119, xmmword_23CE306C0);
        if (v119.i64[0] >= 0x800uLL)
        {
          operator delete(*v10);
          v117[1] = v117[1] + 8;
          v119.i64[0] -= 1024;
          v8 = *(this + 1);
        }

        v12 = *(*v8 + 56);
        v14 = operations_research::sat::CpModelPresolver::PresolveOneConstraint(this, v11);
        v15 = *(this + 1);
        if (LOBYTE(v15[17].__end_) == 1 && **(this + 2) == 1)
        {
          *v130 = "Unsat after presolving constraint #";
          *&v130[8] = 35;
          v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v11, v145, v13);
          v144[0] = v145;
          v144[1] = (v16 - v145);
          *v146 = " (warning, dump might be inconsistent): ";
          v147 = 40;
          v17 = **(this + 1);
          v19 = *(v17 + 48);
          v18 = (v17 + 48);
          v20 = v19 + 8 * v11 + 7;
          if (v19)
          {
            v18 = v20;
          }

          v21 = *v18;
          google::protobuf::Message::ShortDebugString(&v116);
        }

        v22 = v15->__begin_[14];
        if (v22 > v12)
        {
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v15);
          std::vector<BOOL>::resize(v120, v22, 1);
          v23 = v117[1];
          v24 = v118;
          v26 = v119.i64[1];
          v25 = v119.i64[0];
          do
          {
            if (v24 == v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = ((v24 - v23) << 7) - 1;
            }

            v28 = v26 + v25;
            if (v27 == v26 + v25)
            {
              std::deque<int>::__add_back_capacity(v117);
              v23 = v117[1];
              v24 = v118;
              v26 = v119.i64[1];
              v25 = v119.i64[0];
              v28 = v119.i64[0] + v119.i64[1];
            }

            *(*&v23[(v28 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v28 & 0x3FF)) = v12;
            v119.i64[1] = ++v26;
            ++v12;
          }

          while (v22 != v12);
        }

        if (v14)
        {
          operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v11);
        }

        if (!v119.i64[1])
        {
          v8 = *(this + 1);
          break;
        }
      }

      if (*(v8 + 416))
      {
        goto LABEL_178;
      }
    }

    std::vector<BOOL>::resize(v120, *(*v8 + 56), 0);
    v29 = *(this + 1);
    v30 = v29[28];
    v31 = v29[29];
    if (v31 != v30)
    {
      v32 = 0;
      v33 = 0;
      while (1)
      {
        v43 = v30[v32];
        if (!operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(*(this + 1), v30[v32]))
        {
          if ((*(*(this + 1) + 416) & 1) != 0 || !operations_research::sat::CpModelPresolver::PresolveAffineRelationIfAny(this, v43))
          {
            goto LABEL_178;
          }

          v44 = (*(*(this + 1) + 672) + 32 * v43);
          v45 = v44[1] >> 1;
          if (v45)
          {
            if (v45 == 2)
            {
              operations_research::sat::CpModelPresolver::LookAtVariableWithDegreeTwo(this, v43);
            }

            else if ((v45 & 0xFFFFFFFE) != 2)
            {
              if (v45 == 1)
              {
                v46 = (v44 + 2);
                if (*v44 >= 2uLL)
                {
                  v47 = v44[2];
                  v46 = v44[3];
                  if (*v47 <= -2)
                  {
                    do
                    {
                      v48 = __clz(__rbit64((*v47 | ~(*v47 >> 7)) & 0x101010101010101)) >> 3;
                      v47 = (v47 + v48);
                      v46 += v48;
                    }

                    while (*v47 < -1);
                  }
                }

                v49 = *v46;
                if ((v49 & 0x80000000) == 0)
                {
                  if (v121 > 1)
                  {
                    v41 = 0;
                    _X10 = v122;
                    __asm { PRFM            #4, [X10] }

                    v62 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43))) + v49;
                    v63 = ((v62 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v62);
                    v42 = (v63 >> 7) ^ (v122 >> 12);
                    v64 = vdup_n_s8(v63 & 0x7F);
                    while (1)
                    {
                      v34 = v42 & v121;
                      v35 = *(v122 + v34);
                      v36 = vceq_s8(v35, v64);
                      if (v36)
                      {
                        break;
                      }

LABEL_49:
                      if (vceq_s8(v35, 0x8080808080808080))
                      {
                        goto LABEL_68;
                      }

                      v41 += 8;
                      v42 = v41 + v34;
                    }

                    while (1)
                    {
                      v37 = (v123 + 8 * ((v34 + (__clz(__rbit64(v36)) >> 3)) & v121));
                      v39 = *v37;
                      v38 = v37[1];
                      if (v39 == v43 && v38 == v49)
                      {
                        break;
                      }

                      v36 &= ((v36 & 0x8080808080808080) - 1) & 0x8080808080808080;
                      if (!v36)
                      {
                        goto LABEL_49;
                      }
                    }
                  }

                  else if (*(&v121 + 1) < 2uLL || v122 != __PAIR64__(v49, v43))
                  {
LABEL_68:
                    v144[0] = __PAIR64__(v49, v43);
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v121, v144, v130);
                    if (v130[16] == 1)
                    {
                      **&v130[8] = v144[0];
                    }

                    v50 = *(v120[0] + (v49 >> 6));
                    if ((v50 & (1 << v49)) == 0)
                    {
                      v51 = v118;
                      v52 = v117[1];
                      v53 = ((v118 - v117[1]) << 7) - 1;
                      *(v120[0] + (v49 >> 6)) = v50 | (1 << v49);
                      if (v51 == v52)
                      {
                        v54 = 0;
                      }

                      else
                      {
                        v54 = v53;
                      }

                      v55 = v119.i64[1];
                      v56 = v119.i64[1] + v119.i64[0];
                      if (v54 == v119.i64[1] + v119.i64[0])
                      {
                        std::deque<int>::__add_back_capacity(v117);
                        v55 = v119.i64[1];
                        v52 = v117[1];
                        v56 = v119.i64[0] + v119.i64[1];
                      }

                      *(*&v52[(v56 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v56 & 0x3FF)) = v49;
                      v119.i64[1] = v55 + 1;
                    }
                  }
                }
              }

              goto LABEL_59;
            }

            operations_research::sat::CpModelPresolver::ProcessVariableInTwoAtMostOrExactlyOne(this, v43);
            std::vector<BOOL>::resize(v120, *(**(this + 1) + 56), 0);
          }
        }

LABEL_59:
        v32 = ++v33;
        v30 = v29[28];
        if (v33 >= ((v29[29] - v30) >> 2))
        {
          v29 = *(this + 1);
          v30 = v29[28];
          v31 = v29[29];
          break;
        }
      }
    }

    if (v30 != v31)
    {
      v65 = v29[25];
      v66 = v30;
      if (v31 - 1 == v30)
      {
        goto LABEL_201;
      }

      v67 = (((v31 - 1) - v30) >> 2) + 1;
      v66 = &v30[v67 & 0x7FFFFFFFFFFFFFFELL];
      v68 = v30 + 1;
      v69 = v67 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v70 = (*v68 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v65 + ((*(v68 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v65 + v70) = 0;
        v68 += 2;
        v69 -= 2;
      }

      while (v69);
      if (v67 != (v67 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_201:
        do
        {
          v71 = *v66++;
          *(v65 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v66 != v31);
      }
    }

    v29[29] = v30;
    if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v120, v117))
    {
      goto LABEL_116;
    }

    if (*(**(this + 1) + 32) >= 1)
    {
      v72 = 0;
      do
      {
        operations_research::sat::CpModelPresolver::ProcessVariableOnlyUsedInEncoding(this, v72++);
      }

      while (v72 < *(**(this + 1) + 32));
    }

    if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v120, v117))
    {
LABEL_116:
      v80 = v6;
      goto LABEL_117;
    }

    v74 = *(this + 1);
    if ((v74[16] & 1) != 0 || *(*v74 + 96))
    {
      break;
    }

    v75 = -1;
    while (1)
    {
      v76 = *(this + 1);
      if (*(v76 + 416))
      {
        goto LABEL_178;
      }

      memset(v130, 0, 76);
      operations_research::sat::ScanModelForDualBoundStrengthening(v76, v130, v73);
      if ((operations_research::sat::DualBoundStrengthening::Strengthen(v130, *(this + 1)) & 1) == 0)
      {
        v77 = 0;
        v78 = 1;
        v79 = *&v130[48];
        if (!*&v130[48])
        {
          goto LABEL_101;
        }

LABEL_100:
        *&v130[56] = v79;
        operator delete(v79);
        goto LABEL_101;
      }

      if (operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v120, v117))
      {
        v77 = 0;
        v78 = 19;
        v79 = *&v130[48];
        if (*&v130[48])
        {
          goto LABEL_100;
        }
      }

      else
      {
        v77 = *&v130[72] != 0;
        if (*&v130[72])
        {
          v78 = 0;
        }

        else
        {
          v78 = 19;
        }

        v79 = *&v130[48];
        if (*&v130[48])
        {
          goto LABEL_100;
        }
      }

LABEL_101:
      if (*&v130[24])
      {
        *&v130[32] = *&v130[24];
        operator delete(*&v130[24]);
      }

      if (*v130)
      {
        *&v130[8] = *v130;
        operator delete(*v130);
      }

      if (!v77)
      {
        break;
      }

      if (--v75 == -11)
      {
        v110 += 10;
        goto LABEL_115;
      }
    }

    v110 -= v75;
    if (v78 != 19)
    {
      v80 = v6;
LABEL_129:
      if (v78 && v78 != 7)
      {
        goto LABEL_178;
      }

      goto LABEL_117;
    }

LABEL_115:
    if (v119.i64[1])
    {
      goto LABEL_116;
    }

    v80 = (v6 + 1);
    if (v6 <= 1)
    {
      if (*(*(this + 1) + 416))
      {
        goto LABEL_178;
      }

      std::string::basic_string[abi:ne200100]<0>(v114, "DetectDominanceRelations");
      operations_research::sat::PresolveTimer::PresolveTimer(v144, v114, *(this + 2), *(this + 3));
      if (v115 < 0)
      {
        operator delete(v114[0]);
      }

      *v130 = 0;
      memset(&v130[8], 0, 80);
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0;
      operations_research::sat::ScanModelForDominanceDetection(*(this + 1), v130, v81);
      if (operations_research::sat::ExploitDominanceRelations(v130, *(this + 1), v82))
      {
        v83 = operations_research::sat::CpModelPresolver::ProcessChangedVariables(this, v120, v117);
        v84 = v83 ^ 1;
        v78 = v83 ? 7 : 0;
      }

      else
      {
        v84 = 0;
        v78 = 1;
      }

      operations_research::sat::VarDomination::~VarDomination(v130);
      operations_research::sat::PresolveTimer::~PresolveTimer(v144);
      if ((v84 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

LABEL_117:
    v6 = v80;
  }

  v85 = *(this + 1);
  if (v85[416])
  {
    goto LABEL_178;
  }

  v86 = *(*v85 + 56);
  if (v86 < 1)
  {
LABEL_165:
    v113 = 9;
    strcpy(&v112, "num_loops");
    operations_research::sat::PresolveTimer::AddCounter(v124, &v112, i);
    if (v113 < 0)
    {
      operator delete(v112);
    }

    strcpy(v111, "num_dual_strengthening");
    BYTE7(v111[1]) = 22;
    operations_research::sat::PresolveTimer::AddCounter(v124, v111, v110);
    if (SBYTE7(v111[1]) < 0)
    {
      operator delete(*&v111[0]);
    }

    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(*(this + 1) + 272, *(*(this + 1) + 272));
    goto LABEL_178;
  }

  v87 = 0;
  while (2)
  {
    v88 = *(this + 1);
    v89 = *v88 + 48;
    if (*v89)
    {
      v89 = *v89 + 8 * v87 + 7;
    }

    v90 = *v89;
    v91 = *(*v89 + 60);
    if (v91 > 20)
    {
      if (v91 == 21)
      {
        v92 = operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(this, v90, v90);
LABEL_154:
        if ((v92 & 1) == 0)
        {
LABEL_136:
          if (++v87 == v86)
          {
            goto LABEL_165;
          }

          continue;
        }
      }

      else if (v91 != 22 || !operations_research::sat::CpModelPresolver::PresolveCumulative(this, v90))
      {
        goto LABEL_136;
      }

      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v87);
      goto LABEL_136;
    }

    break;
  }

  if (v91 != 3)
  {
    if (v91 == 20)
    {
      v92 = operations_research::sat::CpModelPresolver::PresolveNoOverlap(this, v90);
      goto LABEL_154;
    }

    goto LABEL_136;
  }

  operations_research::sat::DomainDeductions::ProcessClause(v88 + 31, *(*(v90 + 6) + 24), *(*(v90 + 6) + 16), v130);
  v93 = *v130;
  v94 = *&v130[8];
  if (*v130 == *&v130[8])
  {
LABEL_157:
    if (v93)
    {
      v98 = *&v130[8];
      v99 = v93;
      if (*&v130[8] != v93)
      {
        do
        {
          if (*(v98 - 3))
          {
            operator delete(*(v98 - 2));
          }

          v98 -= 4;
        }

        while (v98 != v93);
        v99 = *v130;
      }

      *&v130[8] = v93;
      operator delete(v99);
    }

    goto LABEL_136;
  }

  while (1)
  {
    v146[0] = 0;
    v96 = *v93;
    v95 = (v93 + 1);
    if ((operations_research::sat::PresolveContext::IntersectDomainWith(*(this + 1), v96, v95, v146) & 1) == 0)
    {
      break;
    }

    if (v146[0])
    {
      v97 = *(this + 1);
      operator new();
    }

    v93 = (v95 + 24);
    if (v93 == v94)
    {
      v93 = *v130;
      goto LABEL_157;
    }
  }

  v100 = *v130;
  if (*v130)
  {
    v101 = *&v130[8];
    v102 = *v130;
    if (*&v130[8] != *v130)
    {
      do
      {
        if (*(v101 - 24))
        {
          operator delete(*(v101 - 16));
        }

        v101 -= 32;
      }

      while (v101 != v100);
      v102 = *v130;
    }

    *&v130[8] = v100;
    operator delete(v102);
  }

LABEL_178:
  v103 = v117[1];
  v104 = v118;
  v119.i64[1] = 0;
  v105 = (v118 - v117[1]) >> 3;
  if (v105 >= 3)
  {
    do
    {
      operator delete(*v103);
      v104 = v118;
      v103 = (v117[1] + 8);
      v117[1] = v103;
      v105 = (v118 - v103) >> 3;
    }

    while (v105 > 2);
  }

  if (v105 == 1)
  {
    v106 = 512;
LABEL_184:
    v119.i64[0] = v106;
  }

  else if (v105 == 2)
  {
    v106 = 1024;
    goto LABEL_184;
  }

  if (v103 != v104)
  {
    do
    {
      v107 = *v103++;
      operator delete(v107);
    }

    while (v103 != v104);
    v108 = v118;
    if (v118 != v117[1])
    {
      do
      {
        v108 -= 8;
      }

      while (v108 != v117[1]);
      *&v118 = v108;
    }
  }

  if (v117[0])
  {
    operator delete(v117[0]);
  }

  if (v120[0])
  {
    operator delete(v120[0]);
  }

  if (v121 >= 2)
  {
    operator delete((v122 - (BYTE8(v121) & 1) - 8));
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(v124);
LABEL_197:
  v109 = *MEMORY[0x277D85DE8];
}

void sub_23CAB8754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a32);
  if (a39)
  {
    operator delete(a39);
  }

  if (a42 >= 2)
  {
    operator delete((a44 - (a43 & 1) - 8));
  }

  operations_research::sat::PresolveTimer::~PresolveTimer(&a47);
  _Unwind_Resume(a1);
}

void **std::vector<std::pair<int,operations_research::Domain>>::~vector[abi:ne200100](void **a1)
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
        if (*(v3 - 3))
        {
          operator delete(*(v3 - 2));
        }

        v3 -= 4;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double operations_research::sat::ModelCopy::ModelCopy(operations_research::sat::ModelCopy *this, operations_research::sat::PresolveContext *a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *&result = 1;
  *(this + 56) = xmmword_23CE306D0;
  *(this + 22) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = xmmword_23CE306D0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 11) = xmmword_23CE306D0;
  return result;
}

int *operations_research::sat::ModelCopy::ImportVariablesAndMaybeIgnoreNames(int *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = *this;
  if (*(*(*this + 392) + 813) == 1)
  {
    v4 = this;
    v5 = *v3;
    if (*(v5 + 8) >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v5 + 6);
      v5 = **v4;
    }

    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), *(a2 + 8));
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = (v6 + 7);
    }

    else
    {
      v7 = (a2 + 24);
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      v9 = &v7[v8];
      do
      {
        v10 = *v7;
        this = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**v4 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
        if (this != v10)
        {
          this[4] = 0;
          v11 = *(v10 + 16);
          if (v11)
          {
            if (this[5] < v11)
            {
              v27 = this;
              v28 = *(v10 + 16);
              this = google::protobuf::RepeatedField<long long>::Grow(this + 4, 0);
              v12 = v27[4];
              v14 = *(v27 + 3);
              v27[4] = v12 + v11;
              if (v11 >= 1)
              {
LABEL_14:
                v15 = *(v10 + 24);
                v16 = (v14 + 8 * v12);
                if (v11 < 4)
                {
                  goto LABEL_19;
                }

                v17 = 8 * v12;
                if ((8 * v12 + v14 - v15) < 0x20)
                {
                  goto LABEL_19;
                }

                v18 = v11;
                v19 = v11 & 0x7FFFFFFC;
                LODWORD(v11) = v11 - (v11 & 0x7FFFFFFC);
                v16 += v19;
                v20 = &v15[v19];
                v21 = (v15 + 2);
                v22 = (v14 + v17 + 16);
                v23 = v19;
                do
                {
                  v24 = *v21;
                  *(v22 - 1) = *(v21 - 1);
                  *v22 = v24;
                  v21 += 2;
                  v22 += 2;
                  v23 -= 4;
                }

                while (v23);
                v15 = v20;
                if (v19 != v18)
                {
LABEL_19:
                  v25 = v11 + 1;
                  do
                  {
                    v26 = *v15++;
                    *v16++ = v26;
                    --v25;
                  }

                  while (v25 > 1);
                }
              }
            }

            else
            {
              v12 = 0;
              v13 = *(v10 + 16);
              v14 = *(this + 3);
              this[4] = v11;
              if (v11 >= 1)
              {
                goto LABEL_14;
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v9);
    }
  }

  else
  {
    v29 = *v3;
    if (*v3 != a2)
    {
      if (*(v29 + 8) >= 1)
      {
        this = google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v29 + 6);
      }

      if (*(a2 + 8))
      {

        return google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v29 + 6, (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
      }
    }
  }

  return this;
}

uint64_t operations_research::sat::ModelCopy::ImportAndSimplifyConstraints(operations_research::sat::PresolveContext **this, const operations_research::sat::CpModelProto *a2, int a3)
{
  operations_research::sat::PresolveContext::InitializeNewDomains(*this);
  *v36 = *(*(*this + 49) + 813);
  *(this + 22) = *(**this + 56);
  if (*(a2 + 14) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a2 + 48);
  do
  {
    if (*v9)
    {
      v11 = (*v9 + 8 * v6 + 7);
    }

    else
    {
      v11 = (a2 + 48);
    }

    v12 = *v11;
    if (a3)
    {
      if ((operations_research::sat::ModelCopy::PrepareEnforcementCopyWithDup(this, *v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!operations_research::sat::ModelCopy::PrepareEnforcementCopy(this, *v11))
    {
      goto LABEL_5;
    }

    v16 = *(v12 + 15);
    if (v16 > 19)
    {
      if (v16 <= 21)
      {
        if (v16 == 20)
        {
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapNoOverlap(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
            goto LABEL_57;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v21 = (v7 >> 2) + 1;
          if (v21 >> 62)
          {
            goto LABEL_99;
          }

          if (v8 >> 1 > v21)
          {
            v21 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v21;
          }

          if (v20)
          {
            if (!(v20 >> 62))
            {
              operator new();
            }

LABEL_100:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }
        }

        else
        {
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapNoOverlap2D(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
            goto LABEL_57;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v19 = (v7 >> 2) + 1;
          if (v19 >> 62)
          {
            goto LABEL_99;
          }

          if (v8 >> 1 > v19)
          {
            v19 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            if (!(v20 >> 62))
            {
              operator new();
            }

            goto LABEL_100;
          }
        }

LABEL_82:
        v8 = 4 * v20;
        *(4 * v18) = v6;
        v7 = 4 * v18 + 4;
        memcpy(0, 0, v17);
        goto LABEL_5;
      }

      switch(v16)
      {
        case 22:
          if (!a3)
          {
            operations_research::sat::ModelCopy::CopyAndMapCumulative(this, v12);
            goto LABEL_5;
          }

          if (v7 < v8)
          {
LABEL_57:
            *v7 = v6;
            v7 += 4;
            goto LABEL_5;
          }

          v17 = v7;
          v18 = v7 >> 2;
          v29 = (v7 >> 2) + 1;
          if (v29 >> 62)
          {
LABEL_99:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v8 >> 1 > v29)
          {
            v29 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v29;
          }

          if (v20)
          {
            if (!(v20 >> 62))
            {
              operator new();
            }

            goto LABEL_100;
          }

          goto LABEL_82;
        case 26:
          v10 = operations_research::sat::ModelCopy::CopyAtMostOne(this, v12);
          break;
        case 29:
          v10 = operations_research::sat::ModelCopy::CopyExactlyOne(this, v12);
          break;
        default:
          goto LABEL_59;
      }
    }

    else if (v16 <= 3)
    {
      if (!v16)
      {
        goto LABEL_5;
      }

      if (v16 != 3)
      {
        goto LABEL_59;
      }

      if (a3)
      {
        v10 = operations_research::sat::ModelCopy::CopyBoolOrWithDupSupport(this, v12);
      }

      else
      {
        v10 = operations_research::sat::ModelCopy::CopyBoolOr(this, v12);
      }
    }

    else
    {
      switch(v16)
      {
        case 4:
          if (this[12] == this[13])
          {
            v23 = *(v12 + 6);
            v24 = *(v23 + 16);
            if (v24)
            {
              v35 = v8;
              v25 = *(v23 + 24);
              v26 = 4 * v24;
              do
              {
                v27 = *v25;
                v28 = *this;
                strcpy(__p, "BOOL_and: non-reified.");
                v38 = 22;
                operations_research::sat::PresolveContext::UpdateRuleStats(v28, __p, 1, v14, v15);
                if (v38 < 0)
                {
                  operator delete(*__p);
                }

                if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*this, v27) & 1) == 0)
                {
                  return operations_research::sat::ModelCopy::CreateUnsatModel(this, v6, v12);
                }

                ++v25;
                v26 -= 4;
              }

              while (v26);
              v8 = v35;
            }

            goto LABEL_5;
          }

          if (a3)
          {
            v10 = operations_research::sat::ModelCopy::CopyBoolAndWithDupSupport(this, v12, v13, v14, v15);
          }

          else
          {
            v10 = operations_research::sat::ModelCopy::CopyBoolAnd(this, v12);
          }

          break;
        case 12:
          v10 = operations_research::sat::ModelCopy::CopyLinear(this, v12);
          break;
        case 19:
          operations_research::sat::ModelCopy::CopyInterval(this, v12, v6, v36[0]);
          if (a3)
          {
            operations_research::sat::ModelCopy::AddLinearConstraintForInterval(this, v12);
          }

          goto LABEL_5;
        default:
LABEL_59:
          v22 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          operations_research::sat::ConstraintProto::CopyFrom(v22, v12);
          if (*v36)
          {
            google::protobuf::internal::ArenaStringPtr::ClearToEmpty(v22 + 5);
          }

          goto LABEL_5;
      }
    }

    if ((v10 & 1) == 0)
    {
      return operations_research::sat::ModelCopy::CreateUnsatModel(this, v6, v12);
    }

LABEL_5:
    ++v6;
  }

  while (v6 < *(a2 + 14));
  v30 = 0;
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v31 = (*v9 + 8 * *v30 + 7);
        if ((*v9 & 1) == 0)
        {
          v31 = a2 + 48;
        }

        v32 = *v31;
        v33 = *(*v31 + 60);
        if (v33 != 20)
        {
          break;
        }

        operations_research::sat::ModelCopy::CopyAndMapNoOverlap(this, v32);
LABEL_86:
        if (++v30 == v7)
        {
          return 1;
        }
      }

      if (v33 == 21)
      {
        operations_research::sat::ModelCopy::CopyAndMapNoOverlap2D(this, v32);
        goto LABEL_86;
      }

      if (v33 == 22)
      {
        operations_research::sat::ModelCopy::CopyAndMapCumulative(this, v32);
        goto LABEL_86;
      }

      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 11671, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "Shouldn't be here.", 0x12uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
      if (++v30 == v7)
      {
        return 1;
      }
    }
  }

  return 1;
}

void sub_23CAB9148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::PrepareEnforcementCopyWithDup(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 96;
  *(this + 13) = *(this + 12);
  v6 = (this + 120);
  v5 = *(this + 15);
  if (v5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v5 < 0x80, 1u);
    v7 = *(a2 + 4);
    if (!v7)
    {
      return 1;
    }
  }

  else
  {
    *(this + 16) = 0;
    v7 = *(a2 + 4);
    if (!v7)
    {
      return 1;
    }
  }

  v8 = *(a2 + 3);
  v9 = &v8[v7];
  do
  {
    v40 = *v8;
    if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v40))
    {
      v10 = *v6;
      if (*v6 > 1)
      {
        v13 = 0;
        _X10 = *(this + 17);
        __asm { PRFM            #4, [X10] }

        v11 = v40;
        v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40));
        v21 = vdup_n_s8(v20 & 0x7F);
        v22 = ((v20 >> 7) ^ (_X10 >> 12)) & v10;
        v23 = *(_X10 + v22);
        v24 = vceq_s8(v23, v21);
        if (!v24)
        {
          goto LABEL_15;
        }

        do
        {
LABEL_13:
          if (*(*(this + 18) + 4 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v10)) == v40)
          {
            goto LABEL_11;
          }

          v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v24);
LABEL_15:
        while (!*&vceq_s8(v23, 0x8080808080808080))
        {
          v13 += 8;
          v22 = (v13 + v22) & v10;
          v23 = *(_X10 + v22);
          v24 = vceq_s8(v23, v21);
          if (v24)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v11 = v40;
        if (*(this + 16) >= 2uLL && *(this + 34) == v40)
        {
LABEL_11:
          v12 = *this;
          operator new();
        }
      }

      if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v11))
      {
        v37 = *this;
        operator new();
      }

      v25 = ~v40;
      v26 = *v6;
      if (*v6 > 1)
      {
        v27 = 0;
        _X11 = *(this + 17);
        __asm { PRFM            #4, [X11] }

        v30 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25));
        v31 = vdup_n_s8(v30 & 0x7F);
        v32 = ((v30 >> 7) ^ (_X11 >> 12)) & v26;
        v33 = *(_X11 + v32);
        v34 = vceq_s8(v33, v31);
        if (!v34)
        {
          goto LABEL_27;
        }

        do
        {
LABEL_25:
          if (*(*(this + 18) + 4 * ((v32 + (__clz(__rbit64(v34)) >> 3)) & v26)) == v25)
          {
            goto LABEL_31;
          }

          v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v34);
LABEL_27:
        while (!*&vceq_s8(v33, 0x8080808080808080))
        {
          v27 += 8;
          v32 = (v27 + v32) & v26;
          v33 = *(_X11 + v32);
          v34 = vceq_s8(v33, v31);
          if (v34)
          {
            goto LABEL_25;
          }
        }
      }

      else if (*(this + 16) >= 2uLL && *(this + 34) == v25)
      {
LABEL_31:
        v36 = *this;
        operator new();
      }

      std::vector<int>::push_back[abi:ne200100](v4, &v40);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v40, __p);
      if (v39 == 1)
      {
        *__p[1] = v40;
      }
    }

    ++v8;
  }

  while (v8 != v9);
  return 1;
}

void sub_23CAB95B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::PrepareEnforcementCopy(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v2 = this + 96;
  *(this + 13) = *(this + 12);
  v3 = *(a2 + 4);
  if (v3)
  {
    v5 = *(a2 + 3);
    v6 = 4 * v3;
    do
    {
      v9 = *v5;
      if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v9))
      {
        if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v9))
        {
          v8 = *this;
          operator new();
        }

        std::vector<int>::push_back[abi:ne200100](v2, &v9);
      }

      ++v5;
      v6 -= 4;
    }

    while (v6);
  }

  return 1;
}

void sub_23CAB9708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::CopyBoolOrWithDupSupport(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 152;
  *(this + 20) = *(this + 19);
  v6 = (this + 176);
  v5 = *(this + 22);
  if (v5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 22, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v5 < 0x80, 1u);
  }

  else
  {
    *(this + 23) = 0;
  }

  v7 = *(this + 12);
  v8 = *(this + 13);
  while (v7 != v8)
  {
    v37 = ~*v7;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v37, __p);
    if (__p[16] == 1)
    {
      **&__p[8] = v37;
    }

    std::vector<int>::push_back[abi:ne200100](v4, &v37);
    ++v7;
  }

  v9 = *(a2 + 6);
  if (*(a2 + 15) != 3)
  {
    v9 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v10 = *(v9 + 4);
  if (!v10)
  {
    return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
  }

  v11 = v9[3];
  v12 = &v11[v10];
  while (1)
  {
    v37 = *v11;
    IsTrue = operations_research::sat::PresolveContext::LiteralIsTrue(*this, v37);
    v16 = *this;
    if (IsTrue)
    {
      break;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsFalse(v16, v37))
    {
      v19 = ~v37;
      v20 = *v6;
      if (*v6 > 1)
      {
        v21 = 0;
        _X11 = *(this + 24);
        __asm { PRFM            #4, [X11] }

        v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
        v29 = vdup_n_s8(v28 & 0x7F);
        v30 = ((v28 >> 7) ^ (_X11 >> 12)) & v20;
        v31 = *(_X11 + v30);
        v32 = vceq_s8(v31, v29);
        if (!v32)
        {
          goto LABEL_24;
        }

LABEL_22:
        while (*(*(this + 25) + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v20)) != v19)
        {
          v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v32)
          {
LABEL_24:
            while (!*&vceq_s8(v31, 0x8080808080808080))
            {
              v21 += 8;
              v30 = (v21 + v30) & v20;
              v31 = *(_X11 + v30);
              v32 = vceq_s8(v31, v29);
              if (v32)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_19;
          }
        }

LABEL_27:
        v33 = *this;
        v36 = 20;
        strcpy(__p, "BOOL_or: always true");
        operations_research::sat::PresolveContext::UpdateRuleStats(v33, __p, 1, v17, v18);
        goto LABEL_28;
      }

      if (*(this + 23) >= 2uLL && *(this + 48) == v19)
      {
        goto LABEL_27;
      }

LABEL_19:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v6, &v37, __p);
      if (__p[16] == 1)
      {
        **&__p[8] = v37;
        std::vector<int>::push_back[abi:ne200100](v4, &v37);
      }
    }

    if (++v11 == v12)
    {
      return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
    }
  }

  v36 = 20;
  strcpy(__p, "BOOL_or: always true");
  operations_research::sat::PresolveContext::UpdateRuleStats(v16, __p, 1, v13, v14);
LABEL_28:
  if (v36 < 0)
  {
    operator delete(*__p);
  }

  return 1;
}

void sub_23CAB9A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ModelCopy::CreateUnsatModel(uint64_t **this, int a2, const operations_research::sat::ConstraintProto *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = **this;
  if (*(v4 + 56) >= 1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v4 + 48));
    v4 = **this;
  }

  v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v4 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  if (*(v5 + 60) != 3)
  {
    v6 = v5;
    operations_research::sat::ConstraintProto::clear_constraint(v5);
    *(v6 + 60) = 3;
    v7 = *(v6 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(v6 + 48) = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v7);
  }

  if (((*this)[52] & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    google::protobuf::TextFormat::Printer::Printer(v11);
    operations_research::sat::SetupTextFormatPrinter(v11, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_23CAB9DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (a48)
  {
    a49 = a48;
    operator delete(a48);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_4:
      google::protobuf::TextFormat::Printer::~Printer(&a19);
      if (a38 < 0)
      {
        operator delete(a33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(__p);
  goto LABEL_4;
}

uint64_t operations_research::sat::ModelCopy::CopyBoolOr(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2)
{
  v4 = this + 152;
  *(this + 20) = *(this + 19);
  v5 = *(this + 12);
  v6 = *(this + 13);
  while (v5 != v6)
  {
    v7 = *v5++;
    v14 = ~v7;
    std::vector<int>::push_back[abi:ne200100](v4, &v14);
  }

  v8 = *(a2 + 6);
  if (*(a2 + 15) != 3)
  {
    v8 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v9 = *(v8 + 4);
  if (!v9)
  {
    return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
  }

  v10 = v8[3];
  v11 = 4 * v9;
  while (1)
  {
    v13 = *v10;
    if (operations_research::sat::PresolveContext::LiteralIsTrue(*this, v13))
    {
      break;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsFalse(*this, v13))
    {
      std::vector<int>::push_back[abi:ne200100](v4, &v13);
    }

    ++v10;
    v11 -= 4;
    if (!v11)
    {
      return operations_research::sat::ModelCopy::FinishBoolOrCopy(this);
    }
  }

  return 1;
}

BOOL operations_research::sat::ModelCopy::CopyBoolAndWithDupSupport(operations_research::sat::ModelCopy *this, const operations_research::sat::ConstraintProto *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = this + 152;
  *(this + 20) = *(this + 19);
  v9 = (this + 176);
  v8 = *(this + 22);
  if (v8 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 22, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
  }

  else
  {
    *(this + 23) = 0;
  }

  v10 = *(a2 + 6);
  if (*(a2 + 15) != 4)
  {
    v10 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v11 = *(v10 + 4);
  if (!v11)
  {
LABEL_42:
    v49 = *this;
    if (*(this + 19) == *(this + 20))
    {
      v106 = 15;
      strcpy(__p, "BOOL and: empty");
      operations_research::sat::PresolveContext::UpdateRuleStats(v49, __p, 1, a4, a5);
      if (v106 < 0)
      {
        operator delete(*__p);
      }

      return 1;
    }

    v50 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v49 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v51 = v50;
    v53 = (v50 + 16);
    v52 = *(v50 + 16);
    v55 = *(this + 12);
    v54 = *(this + 13);
    v56 = v54 - v55;
    v57 = v52 + ((v54 - v55) >> 2);
    if (v57 > *(v50 + 20))
    {
      google::protobuf::RepeatedField<int>::Grow(v50 + 16, v52, v52 + ((v54 - v55) >> 2));
      LODWORD(v52) = *v53;
      v58 = *(v51 + 24);
      *(v51 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v58 = *(v50 + 24);
      *(v50 + 16) = v57;
      if (v55 == v54)
      {
        goto LABEL_51;
      }
    }

    v59 = (v58 + 4 * v52);
    if ((v56 - 4) < 0x1C)
    {
      goto LABEL_91;
    }

    v60 = 4 * v52 + v58;
    if ((v60 - v55) < 0x20)
    {
      goto LABEL_91;
    }

    v61 = ((v56 - 4) >> 2) + 1;
    v62 = 4 * (v61 & 0x7FFFFFFFFFFFFFF8);
    v59 = (v59 + v62);
    v63 = &v55[v62];
    v64 = (v55 + 16);
    v65 = (v60 + 16);
    v66 = v61 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v67 = *v64;
      *(v65 - 1) = *(v64 - 1);
      *v65 = v67;
      v64 += 2;
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    v55 = v63;
    if (v61 != (v61 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_91:
      do
      {
        v68 = *v55;
        v55 += 4;
        *v59++ = v68;
      }

      while (v55 != v54);
    }

LABEL_51:
    if (*(v51 + 60) == 4)
    {
      v69 = *(v51 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v51);
      *(v51 + 60) = 4;
      v85 = *(v51 + 8);
      if (v85)
      {
        v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v85);
      *(v51 + 48) = v69;
    }

    v86 = *(v69 + 4);
    v87 = v69 + 2;
    v89 = *(this + 19);
    v88 = *(this + 20);
    v90 = v88 - v89;
    v91 = v86 + ((v88 - v89) >> 2);
    if (v91 > *(v69 + 5))
    {
      v104 = v69;
      google::protobuf::RepeatedField<int>::Grow(v69 + 2, v86, v86 + ((v88 - v89) >> 2));
      LODWORD(v86) = *v87;
      v92 = v104[3];
      *(v104 + 4) = v91;
      if (v89 != v88)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v92 = v69[3];
      *(v69 + 4) = v91;
      if (v89 != v88)
      {
LABEL_75:
        v93 = (v92 + 4 * v86);
        if ((v90 - 4) < 0x1C)
        {
          goto LABEL_92;
        }

        v94 = 4 * v86 + v92;
        if ((v94 - v89) < 0x20)
        {
          goto LABEL_92;
        }

        v95 = ((v90 - 4) >> 2) + 1;
        v96 = 4 * (v95 & 0x7FFFFFFFFFFFFFF8);
        v93 = (v93 + v96);
        v97 = &v89[v96];
        v98 = (v89 + 16);
        v99 = (v94 + 16);
        v100 = v95 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v101 = *v98;
          *(v99 - 1) = *(v98 - 1);
          *v99 = v101;
          v98 += 2;
          v99 += 2;
          v100 -= 8;
        }

        while (v100);
        v89 = v97;
        if (v95 != (v95 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_92:
          do
          {
            v102 = *v89;
            v89 += 4;
            *v93++ = v102;
          }

          while (v89 != v88);
        }
      }
    }

    return 1;
  }

  v12 = v10[3];
  v13 = &v12[v11];
  while (1)
  {
    v107 = *v12;
    if (operations_research::sat::PresolveContext::LiteralIsFalse(*this, v107))
    {
      break;
    }

    v16 = ~v107;
    v17 = *v9;
    if (*v9 > 1)
    {
      v21 = 0;
      _X11 = *(this + 24);
      __asm { PRFM            #4, [X11] }

      v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
      v29 = vdup_n_s8(v28 & 0x7F);
      v30 = ((v28 >> 7) ^ (_X11 >> 12)) & v17;
      v31 = *(_X11 + v30);
      v32 = vceq_s8(v31, v29);
      if (!v32)
      {
        goto LABEL_24;
      }

      do
      {
LABEL_22:
        if (*(*(this + 25) + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v17)) == v16)
        {
          goto LABEL_53;
        }

        v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v32);
LABEL_24:
      while (!*&vceq_s8(v31, 0x8080808080808080))
      {
        v21 += 8;
        v30 = (v21 + v30) & v17;
        v31 = *(_X11 + v30);
        v32 = vceq_s8(v31, v29);
        if (v32)
        {
          goto LABEL_22;
        }
      }
    }

    else if (*(this + 23) >= 2uLL && *(this + 48) == v16)
    {
LABEL_53:
      v70 = *this;
      operator new();
    }

    v18 = *(this + 15);
    if (v18 > 1)
    {
      v33 = 0;
      _X11 = *(this + 17);
      __asm { PRFM            #4, [X11] }

      v36 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
      v37 = vdup_n_s8(v36 & 0x7F);
      v38 = ((v36 >> 7) ^ (_X11 >> 12)) & v18;
      v39 = *(_X11 + v38);
      v40 = vceq_s8(v39, v37);
      if (!v40)
      {
        goto LABEL_30;
      }

      do
      {
LABEL_28:
        if (*(*(this + 18) + 4 * ((v38 + (__clz(__rbit64(v40)) >> 3)) & v18)) == v16)
        {
          goto LABEL_54;
        }

        v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v40);
LABEL_30:
      while (!*&vceq_s8(v39, 0x8080808080808080))
      {
        v33 += 8;
        v38 = (v33 + v38) & v18;
        v39 = *(_X11 + v38);
        v40 = vceq_s8(v39, v37);
        if (v40)
        {
          goto LABEL_28;
        }
      }
    }

    else if (*(this + 16) >= 2uLL && *(this + 34) == v16)
    {
LABEL_54:
      v71 = *this;
      v106 = 21;
      strcpy(__p, "BOOL and: not(x) => x");
      operations_research::sat::PresolveContext::UpdateRuleStats(v71, __p, 1, v14, v15);
      goto LABEL_55;
    }

    if (!operations_research::sat::PresolveContext::LiteralIsTrue(*this, v107))
    {
      v19 = *(this + 15);
      if (v19 > 1)
      {
        v41 = 0;
        _X10 = *(this + 17);
        __asm { PRFM            #4, [X10] }

        v44 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v107) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v107));
        v45 = vdup_n_s8(v44 & 0x7F);
        v46 = ((v44 >> 7) ^ (_X10 >> 12)) & v19;
        v47 = *(_X10 + v46);
        v48 = vceq_s8(v47, v45);
        if (!v48)
        {
          goto LABEL_36;
        }

LABEL_34:
        while (*(*(this + 18) + 4 * ((v46 + (__clz(__rbit64(v48)) >> 3)) & v19)) != v107)
        {
          v48 &= ((v48 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v48)
          {
LABEL_36:
            while (!*&vceq_s8(v47, 0x8080808080808080))
            {
              v41 += 8;
              v46 = (v41 + v46) & v19;
              v47 = *(_X10 + v46);
              v48 = vceq_s8(v47, v45);
              if (v48)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_39;
          }
        }
      }

      else if (*(this + 16) < 2uLL || *(this + 34) != v107)
      {
LABEL_39:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v9, &v107, __p);
        if (__p[16] == 1)
        {
          **&__p[8] = v107;
          std::vector<int>::push_back[abi:ne200100](v7, &v107);
        }

        goto LABEL_41;
      }

      v20 = *this;
      v106 = 16;
      strcpy(__p, "BOOL and: x => x");
      operations_research::sat::PresolveContext::UpdateRuleStats(v20, __p, 1, a4, a5);
      if (v106 < 0)
      {
        operator delete(*__p);
      }
    }

LABEL_41:
    if (++v12 == v13)
    {
      goto LABEL_42;
    }
  }

  v103 = *this;
  strcpy(__p, "BOOL and: always false");
  v106 = 22;
  operations_research::sat::PresolveContext::UpdateRuleStats(v103, __p, 1, v14, v15);
LABEL_55:
  if (v106 < 0)
  {
    operator delete(*__p);
  }

  v72 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v73 = v72;
  if (*(v72 + 60) != 3)
  {
    operations_research::sat::ConstraintProto::clear_constraint(v72);
    *(v73 + 60) = 3;
    v83 = *(v73 + 8);
    if (v83)
    {
      v74 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v83 & 0xFFFFFFFFFFFFFFFELL));
      *(v73 + 48) = v74;
      v76 = *(this + 12);
      v75 = *(this + 13);
      if (v76 != v75)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v74 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v83);
      *(v73 + 48) = v74;
      v76 = *(this + 12);
      v75 = *(this + 13);
      if (v76 != v75)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_66;
  }

  v74 = *(v72 + 48);
  v76 = *(this + 12);
  v75 = *(this + 13);
  if (v76 == v75)
  {
LABEL_66:
    v81 = *(v74 + 4);
    return v81 != 0;
  }

LABEL_59:
  v77 = *(v74 + 4);
  v78 = *(v74 + 5);
  do
  {
    v79 = *v76;
    if (v77 == v78)
    {
      v82 = v74;
      google::protobuf::RepeatedField<int>::Grow(v74 + 2, v77, (v77 + 1));
      v74 = v82;
      LODWORD(v77) = *(v82 + 4);
      v78 = *(v82 + 5);
    }

    v80 = v74[3];
    v81 = v77 + 1;
    *(v74 + 4) = v77 + 1;
    *(v80 + 4 * v77) = ~v79;
    ++v76;
    v77 = (v77 + 1);
  }

  while (v76 != v75);
  return v81 != 0;
}