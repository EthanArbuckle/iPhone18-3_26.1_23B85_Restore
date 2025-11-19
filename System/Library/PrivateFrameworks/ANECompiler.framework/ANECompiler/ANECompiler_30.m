void sub_23CA902D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, _Unwind_Exception *exception_objecta, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, void *a33, void *a34, int a35, __int16 a36, char a37, char a38)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstraintProto::mutable_element(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 14)
  {
    v2 = *(this + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(this);
    *(this + 15) = 14;
    v3 = *(this + 1);
    if (v3)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(v3);
    }

    *(this + 6) = v4;
  }
}

char *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::operator[]<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,(int *)0>(int64_t a1, _DWORD *a2)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a1, a2, v4);
  if (v6 == 1)
  {
    *v5 = *a2;
  }

  return v5 + 4;
}

char *absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::at<int,absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>>(void *a1, const char *a2)
{
  v2 = *a1;
  if (*a1 > 1uLL)
  {
    v3 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v9 = *a2;
    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
    v11 = vdup_n_s8(v10 & 0x7F);
    v12 = ((v10 >> 7) ^ (_X9 >> 12)) & v2;
    v13 = *(_X9 + v12);
    v14 = vceq_s8(v13, v11);
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = a1[3];
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v2;
      if (*(v15 + 8 * v16) == v9)
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
          v13 = *(_X9 + v12);
          v14 = vceq_s8(v13, v11);
          if (v14)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v17 = (v15 + 8 * v16);
    if (!(_X9 + v16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[1] < 2uLL)
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 4);
    v19 = (a1 + 2);
    _ZF = v20 == *a2;
    v17 = &absl::lts_20240722::container_internal::kSooControl;
    v22 = v20 == *a2 ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v17 = v19;
    }

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  return v17 + 4;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveTable(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(this[1] + 416) & 1) == 0)
  {
    if (*(a2 + 15) == 16)
    {
      v2 = *(*(a2 + 6) + 16);
      if (v2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = dword_2810BEF00;
      if (dword_2810BEF00)
      {
LABEL_5:
        v6 = 1;
        if (v2 >= 1)
        {
          v3 = &operations_research::sat::_TableConstraintProto_default_instance_;
          if (*(a2 + 15) == 16)
          {
            v3 = *(a2 + 6);
          }

          operations_research::sat::PresolveContext::GetAffineRelation(this[1], *v3[3], &v5);
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }
    }

    operator new();
  }

  return 0;
}

void sub_23CA9215C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a38);
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 224));
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 200));
  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v42 - 136));
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 176));
  operator delete(a17);
  operator delete(a16);
  if (a30)
  {
    operator delete(a30);
    if (!a29)
    {
LABEL_5:
      if (!a28)
      {
LABEL_10:
        _Unwind_Resume(a1);
      }

LABEL_9:
      operator delete(a28);
      goto LABEL_10;
    }
  }

  else if (!a29)
  {
    goto LABEL_5;
  }

  operator delete(a29);
  if (!a28)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t operations_research::sat::ConstraintProto::mutable_table(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 16)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 16;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::TableConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::TableConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

void gtl::STLSortAndRemoveDuplicates<std::vector<std::vector<long long>>>(const void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<long long> *,false>(v2, v3, &v12, v5, 1);
  v6 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>,std::__equal_to &>(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    v9 = a1[1];
    do
    {
      v11 = *(v9 - 3);
      v9 -= 3;
      v10 = v11;
      if (v11)
      {
        *(v7 - 2) = v10;
        operator delete(v10);
      }

      v7 = v9;
    }

    while (v9 != v8);
    a1[1] = v8;
  }
}

void *std::vector<std::vector<long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::set_difference[abi:ne200100]<std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>>(uint64_t a1, uint64_t a2, char **a3, char **a4, char **a5)
{
  v10 = a2;
  v11 = a1;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &>(&v11, &v10, &v9, &v8, &v7);
  return v5;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    v2 = 0;
    return v2 & 1;
  }

  v4 = this;
  if (*(a2 + 15) != 13)
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 13;
    v12 = *(a2 + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v12);
    *(a2 + 6) = v13;
    v125 = v13;
    if (*(a2 + 15) == 13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v6 = (v14 + 7);
      }

      else
      {
        v6 = (v13 + 16);
      }

      v7 = *(v13 + 24);
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 13;
      v15 = *(a2 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v15);
      *(a2 + 6) = v16;
      v18 = *(v16 + 16);
      v17 = v16 + 16;
      v19 = (v18 + 7);
      if (v18)
      {
        v6 = v19;
      }

      else
      {
        v6 = v17;
      }

      v7 = *(v17 + 8);
      if (v7)
      {
        goto LABEL_10;
      }
    }

LABEL_27:
    LOBYTE(v8) = 0;
    goto LABEL_28;
  }

  v125 = *(a2 + 6);
  v5 = *(v125 + 16);
  if (v5)
  {
    v6 = (v5 + 7);
  }

  else
  {
    v6 = (v125 + 16);
  }

  v7 = *(v125 + 24);
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_10:
  v8 = 0;
  v9 = 8 * v7;
  do
  {
    v10 = *v6++;
    v8 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(v4 + 1), *(a2 + 3), *(a2 + 4), v10);
    v9 -= 8;
  }

  while (v9);
LABEL_28:
  v122 = v8;
  v129 = (v125 + 16);
  v127 = v4;
LABEL_31:
  while (2)
  {
    v20 = *(v125 + 24);
    if (v20 == 1)
    {
      v120 = *(v4 + 1);
      operator new();
    }

    if (!v20)
    {
      v119 = *(v4 + 1);
      operator new();
    }

    v139 = 0;
    v21 = 0uLL;
    v138 = 0u;
    if (v20 < 1)
    {
      goto LABEL_72;
    }

    v22 = 0;
    v23 = 0;
    while (2)
    {
      if (*v129)
      {
        v25 = (*v129 + 8 * v23 + 7);
      }

      else
      {
        v25 = (v125 + 16);
      }

      if (!operations_research::sat::PresolveContext::IsFixed(*(v4 + 1), *v25))
      {
        if (*v129)
        {
          v37 = (*v129 + 8 * v23 + 7);
        }

        else
        {
          v37 = (v125 + 16);
        }

        v38 = *v37;
        v39 = *(&v138 + 1);
        if (*(&v138 + 1) >= v139)
        {
          v24 = std::vector<operations_research::sat::LinearExpressionProto>::__emplace_back_slow_path<operations_research::sat::LinearExpressionProto const&>(&v138, v38);
        }

        else
        {
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(*(&v138 + 1), 0, v38);
          v24 = v39 + 80;
        }

        *(&v138 + 1) = v24;
        goto LABEL_37;
      }

      if (*v129)
      {
        v26 = (*v129 + 8 * v23 + 7);
      }

      else
      {
        v26 = (v125 + 16);
      }

      v27 = operations_research::sat::PresolveContext::MinOf(*(v4 + 1), *v26);
      v28 = 0;
      v29 = 0;
LABEL_46:
      v30 = 8 * v28++;
      v31 = v30 + 8;
      do
      {
        if (v22 + v28 != 1)
        {
          v32 = ((*v129 & 1) != 0 ? *v129 + v31 - 1 : v125 + 16);
          if (operations_research::sat::PresolveContext::DomainContains(*(v4 + 1), *v32, v27))
          {
            v33 = *(v4 + 1);
            if (*v129)
            {
              v34 = (*v129 + v31 - 1);
            }

            else
            {
              v34 = (v125 + 16);
            }

            v35 = *v34;
            operations_research::Domain::Domain(&v132, v27);
            operations_research::Domain::Complement(&v132, &v140);
            v36 = operations_research::sat::PresolveContext::IntersectDomainWith(v33, v35, &v140, 0);
            if (v140)
            {
              operator delete(v141);
              if ((v132 & 1) == 0)
              {
LABEL_58:
                if ((v36 & 1) == 0)
                {
                  goto LABEL_97;
                }

LABEL_62:
                v29 = 1;
                if (v28 == v20)
                {
LABEL_70:
                  v40 = *(v4 + 1);
                  operator new();
                }

                goto LABEL_46;
              }
            }

            else if ((v132 & 1) == 0)
            {
              goto LABEL_58;
            }

            operator delete(__p);
            if ((v36 & 1) == 0)
            {
LABEL_97:
              v53 = 1;
              IsUnsat = 1;
              v54 = v138;
              if (!v138)
              {
                goto LABEL_29;
              }

              goto LABEL_202;
            }

            goto LABEL_62;
          }
        }

        ++v28;
        v31 += 8;
      }

      while (v28 - v20 != 1);
      if (v29)
      {
        goto LABEL_70;
      }

LABEL_37:
      ++v23;
      --v22;
      if (v23 != v20)
      {
        continue;
      }

      break;
    }

    v21 = v138;
LABEL_72:
    v41 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v21 + 1) - v21) >> 4));
    if (*(&v21 + 1) == v21)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,false>(v21, *(&v21 + 1), v42, 1);
    v43 = v125;
    v44 = *(&v138 + 1);
    v45 = v138;
    v46 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v138 + 1) - v138) >> 4);
    if (v46 >= 2)
    {
      v47 = 2;
      v48 = 1;
      while (1)
      {
        if (operations_research::sat::LinearExpressionProtosAreEqual((v45 + 80 * v48), (v45 + 80 * v47 - 160), 1))
        {
          IsUnsat = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(v4 + 1), "Duplicate variable in all_diff", 30);
          v53 = 1;
          v54 = v138;
          if (!v138)
          {
            goto LABEL_29;
          }

          goto LABEL_202;
        }

        if (!operations_research::sat::LinearExpressionProtosAreEqual((v138 + 80 * v48), (v138 + 80 * (v47 - 2)), 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_77;
        }

        v136[0] = 0;
        v49 = *(v4 + 1);
        v50 = v138;
        operations_research::Domain::Domain(&v132, 0);
        operations_research::Domain::Complement(&v132, &v140);
        v51 = operations_research::sat::PresolveContext::IntersectDomainWith(v49, (v50 + 80 * v48), &v140, v136);
        if (v140)
        {
          operator delete(v141);
          if (v132)
          {
LABEL_85:
            operator delete(__p);
            if ((v51 & 1) == 0)
            {
LABEL_207:
              IsUnsat = 0;
              v53 = 1;
              v54 = v138;
              if (v138)
              {
                goto LABEL_202;
              }

LABEL_29:
              if (v53)
              {
                goto LABEL_214;
              }

              goto LABEL_31;
            }

            goto LABEL_86;
          }
        }

        else if (v132)
        {
          goto LABEL_85;
        }

        if ((v51 & 1) == 0)
        {
          goto LABEL_207;
        }

LABEL_86:
        if (v136[0])
        {
          v52 = *(v4 + 1);
          operator new();
        }

LABEL_77:
        v48 = v47;
        v44 = *(&v138 + 1);
        v45 = v138;
        v46 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v138 + 1) - v138) >> 4);
        ++v47;
        if (v46 <= v48)
        {
          v43 = v125;
          break;
        }
      }
    }

    v55 = *(v43 + 24);
    if (v46 < v55)
    {
      if (v55 >= 1)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v129);
        v44 = *(&v138 + 1);
        v45 = v138;
      }

      while (v45 != v44)
      {
        v56 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v129, google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
        operations_research::sat::LinearExpressionProto::CopyFrom(v56, v45);
        v45 = (v45 + 80);
      }

      v57 = *(v4 + 1);
      operator new();
    }

    if (v55 <= 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v55, 2, "all_diff.exprs_size() >= 2");
    }

    if (*v129)
    {
      v58 = (*v129 + 7);
    }

    else
    {
      v58 = (v125 + 16);
    }

    operations_research::sat::PresolveContext::DomainSuperSetOf(*(v4 + 1), *v58, v136);
    LODWORD(v59) = *(v43 + 24);
    if (v59 >= 2)
    {
      v60 = 16;
      v61 = 1;
      do
      {
        if (*v129)
        {
          v62 = (*v129 + v60 - 1);
        }

        else
        {
          v62 = (v125 + 16);
        }

        operations_research::sat::PresolveContext::DomainSuperSetOf(*(v4 + 1), *v62, &v132);
        operations_research::Domain::UnionWith(v136, &v132, &v140);
        if (v136[0])
        {
          operator delete(v137);
        }

        *v136 = v140;
        v137 = v141;
        v140 = 0;
        if (v132)
        {
          operator delete(__p);
        }

        ++v61;
        v59 = *(v125 + 24);
        v60 += 8;
      }

      while (v61 < v59);
      v43 = v125;
    }

    if (operations_research::Domain::Size(v136) != v59)
    {
      goto LABEL_197;
    }

    v132 = 0;
    __p = 0;
    v134 = &unk_23CE31C20;
    v63 = *(v43 + 16);
    if (v63)
    {
      v64 = v63 + 7;
    }

    else
    {
      v64 = v125 + 16;
    }

    v65 = *(v43 + 24);
    if (!v65)
    {
      goto LABEL_211;
    }

    v124 = v64 + 8 * v65;
    do
    {
      v66 = *v64;
      operations_research::sat::PresolveContext::DomainOf(*(v4 + 1), **(*v64 + 24), &v140);
      v130 = 0;
      if (v140 < 2)
      {
        goto LABEL_124;
      }

      if ((v140 & 1) == 0)
      {
        v130 = v140;
        v131 = v141;
LABEL_124:
        if ((v140 & 1) == 0)
        {
          goto LABEL_126;
        }

LABEL_125:
        operator delete(v141);
        goto LABEL_126;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v130, &v140);
      if (v140)
      {
        goto LABEL_125;
      }

LABEL_126:
      v126 = v64;
      if (v130 <= 1)
      {
        v67 = v130;
        goto LABEL_176;
      }

      v67 = v130 & 1;
      if (v130)
      {
        v68 = v131;
      }

      else
      {
        v68 = &v131;
      }

      v69 = *v68;
      if (v130)
      {
        v70 = v131;
      }

      else
      {
        v70 = &v131;
      }

      if ((v130 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v71 = &v70[2 * (v130 >> 1)];
        v128 = v71;
        do
        {
          v72 = 0;
          v73 = *(v66 + 64) + **(v66 + 48) * v69;
          _X8 = v134;
          __asm { PRFM            #4, [X8] }

          v80 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73));
          v81 = vdup_n_s8(v80 & 0x7F);
          v82 = ((v80 >> 7) ^ (v134 >> 12)) & v132;
          v83 = *(v134 + v82);
          v84 = vceq_s8(v83, v81);
          if (!v84)
          {
            goto LABEL_141;
          }

          do
          {
LABEL_139:
            v85 = (v82 + (__clz(__rbit64(v84)) >> 3)) & v132;
            if (v135[4 * v85] == v73)
            {
              v87 = &v135[4 * v85];
              v89 = v87[2];
              v88 = v87[3];
              if (v89 >= v88)
              {
                goto LABEL_148;
              }

              goto LABEL_145;
            }

            v84 &= ((v84 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v84);
LABEL_141:
          while (1)
          {
            v86 = vceq_s8(v83, 0x8080808080808080);
            if (v86)
            {
              break;
            }

            v72 += 8;
            v82 = (v72 + v82) & v132;
            v83 = *(v134 + v82);
            v84 = vceq_s8(v83, v81);
            if (v84)
            {
              goto LABEL_139;
            }
          }

          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v132, v80, (v82 + (__clz(__rbit64(v86)) >> 3)) & v132, v72, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::GetPolicyFunctions(void)::value);
          v87 = &v135[4 * inserted];
          *v87 = v73;
          v87[1] = 0;
          v87[2] = 0;
          v87[3] = 0;
          v89 = v87[2];
          v88 = v87[3];
          if (v89 >= v88)
          {
LABEL_148:
            v91 = v87[1];
            v92 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v91) >> 4);
            v93 = v92 + 1;
            if (v92 + 1 > 0x333333333333333)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v94 = 0xCCCCCCCCCCCCCCCDLL * ((v88 - v91) >> 4);
            if (2 * v94 > v93)
            {
              v93 = 2 * v94;
            }

            if (v94 >= 0x199999999999999)
            {
              v95 = 0x333333333333333;
            }

            else
            {
              v95 = v93;
            }

            v143 = v87 + 1;
            if (v95)
            {
              if (v95 <= 0x333333333333333)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v140 = 0;
            *&v141 = 80 * v92;
            *(&v141 + 1) = 80 * v92;
            v142 = 0;
            operations_research::sat::LinearExpressionProto::LinearExpressionProto((80 * v92), 0, v66);
            v96 = *(&v141 + 1) + 80;
            *(&v141 + 1) += 80;
            v98 = v87[1];
            v97 = v87[2];
            v99 = (v141 + v98 - v97);
            if (v98 != v97)
            {
              v100 = v87[1];
              v101 = (v141 + v98 - v97);
              while (2)
              {
                operations_research::sat::LinearExpressionProto::LinearExpressionProto(v101, 0);
                if (v101 == v100)
                {
                  goto LABEL_160;
                }

                v102 = *(v101 + 1);
                if (v102)
                {
                  v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
                  v103 = *(v100 + 1);
                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_164;
                  }
                }

                else
                {
                  v103 = *(v100 + 1);
                  if ((v103 & 1) == 0)
                  {
LABEL_164:
                    if (v102 != v103)
                    {
                      goto LABEL_165;
                    }

                    goto LABEL_159;
                  }
                }

                if (v102 != *(v103 & 0xFFFFFFFFFFFFFFFELL))
                {
LABEL_165:
                  operations_research::sat::LinearExpressionProto::CopyFrom(v101, v100);
                  goto LABEL_160;
                }

LABEL_159:
                operations_research::sat::LinearExpressionProto::InternalSwap(v101, v100);
LABEL_160:
                v100 = (v100 + 80);
                v101 = (v101 + 80);
                if (v100 == v97)
                {
                  do
                  {
                    operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v98);
                    v98 = (v98 + 80);
                  }

                  while (v98 != v97);
                  break;
                }

                continue;
              }
            }

            v104 = v87[1];
            v87[1] = v99;
            v87[2] = v96;
            v87[3] = v142;
            if (v104)
            {
              operator delete(v104);
            }

            v4 = v127;
            v71 = v128;
            v87[2] = v96;
            if (v69 == v70[1])
            {
              goto LABEL_173;
            }

LABEL_136:
            ++v69;
            continue;
          }

LABEL_145:
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(v89, 0, v66);
          v87[2] = v89 + 80;
          v87[2] = v89 + 80;
          if (v69 != v70[1])
          {
            goto LABEL_136;
          }

LABEL_173:
          v70 += 2;
          if (v70 != v71)
          {
            v69 = *v70;
          }
        }

        while (v70 != v71);
        v67 = v130 & 1;
      }

LABEL_176:
      if (v67)
      {
        operator delete(v131);
      }

      v64 = v126 + 8;
    }

    while (v126 + 8 != v124);
    if (__p >= 2)
    {
      v105 = v134;
      v106 = v135;
      if (*v134 <= -2)
      {
        do
        {
          v107 = __clz(__rbit64((*v105 | ~(*v105 >> 7)) & 0x101010101010101)) >> 3;
          v105 = (v105 + v107);
          v106 += 4 * v107;
        }

        while (*v105 < -1);
      }

      LOBYTE(v53) = 0;
      do
      {
        v108 = v106[1];
        if (v106[2] - v108 == 80 && !operations_research::sat::PresolveContext::IsFixed(*(v4 + 1), v108))
        {
          v109 = *(v4 + 1);
          v110 = v106[1];
          operations_research::Domain::Domain(&v140, *v106);
          v111 = operations_research::sat::PresolveContext::IntersectDomainWith(v109, v110, &v140, 0);
          if (v140)
          {
            operator delete(v141);
          }

          v53 = 1;
          if ((v111 & 1) == 0)
          {
            v115 = 0;
            IsUnsat = 1;
            goto LABEL_194;
          }
        }

        v113 = *(v105 + 1);
        v105 = (v105 + 1);
        LOBYTE(v112) = v113;
        v106 += 4;
        if (v113 <= -2)
        {
          do
          {
            v114 = __clz(__rbit64((*v105 | ~(*v105 >> 7)) & 0x101010101010101)) >> 3;
            v105 = (v105 + v114);
            v106 += 4 * v114;
            v112 = *v105;
          }

          while (v112 < -1);
        }
      }

      while (v112 != 255);
      if (v53)
      {
        v118 = *(v4 + 1);
        operator new();
      }
    }

LABEL_211:
    v53 = 0;
    v115 = 1;
LABEL_194:
    if (v132)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::destroy_slots(&v132);
      operator delete((v134 - (__p & 1) - 8));
    }

    if (v115)
    {
LABEL_197:
      v53 = 4;
      if (!v136[0])
      {
        goto LABEL_201;
      }

      goto LABEL_198;
    }

    if (!v136[0])
    {
LABEL_201:
      v54 = v138;
      if (!v138)
      {
        goto LABEL_29;
      }

      goto LABEL_202;
    }

LABEL_198:
    operator delete(v137);
    v54 = v138;
    if (!v138)
    {
      goto LABEL_29;
    }

LABEL_202:
    v116 = *(&v138 + 1);
    v117 = v54;
    if (*(&v138 + 1) != v54)
    {
      do
      {
        operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v116 - 80));
      }

      while (v116 != v54);
      v117 = v138;
    }

    *(&v138 + 1) = v54;
    operator delete(v117);
    if (!v53)
    {
      continue;
    }

    break;
  }

LABEL_214:
  v2 = IsUnsat;
  if (v53 == 4)
  {
    v2 = v122;
  }

  return v2 & 1;
}

void sub_23CA9365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *__p, uint64_t a33, uint64_t a34, void *a35)
{
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  absl::lts_20240722::flat_hash_map<long long,std::vector<operations_research::sat::LinearExpressionProto>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::~flat_hash_map(&a34);
  if (*(v35 - 200))
  {
    operator delete(*(v35 - 192));
  }

  std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100]((v35 - 176));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ConstraintProto::mutable_all_diff(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 13)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 13;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

void *absl::lts_20240722::flat_hash_map<long long,std::vector<operations_research::sat::LinearExpressionProto>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  if (*(a2 + 15) == 20)
  {
    v4 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 20;
    v5 = *(a2 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v5);
    *(a2 + 6) = v4;
  }

  v112 = xmmword_23CE306D0;
  *v109 = xmmword_23CE306D0;
  v6 = *(v4 + 4);
  if (v6)
  {
    v7 = v4[3];
    v8 = 4 * v6;
    do
    {
      v108 = *v7;
      if ((operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), v108) & 1) == 0)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v112, &v108, &__p);
        if (LOBYTE(v107[1]) == 1 || (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v109, &v108, &__p), LOBYTE(v107[1]) == 1))
        {
          *v107[0] = v108;
        }
      }

      ++v7;
      v8 -= 4;
    }

    while (v8);
    v9 = *(v4 + 4);
    if (v112 > 1)
    {
      absl::lts_20240722::container_internal::ClearBackingArray(&v112, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v112 < 0x80, 1u);
      v105 = (v4 + 2);
      v104 = v9;
      if (v9 >= 1)
      {
LABEL_17:
        v10 = 0;
        v11 = 0;
        v12 = 1;
        while (1)
        {
          v108 = *(v4[3] + 4 * v10);
          if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), v108))
          {
            goto LABEL_18;
          }

          if (v109[0] > 1)
          {
            v21 = 0;
            _X10 = v110;
            __asm { PRFM            #4, [X10] }

            v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v108) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v108));
            v29 = vdup_n_s8(v28 & 0x7F);
            v30 = ((v28 >> 7) ^ (v110 >> 12)) & v109[0];
            v31 = *(v110 + v30);
            v32 = vceq_s8(v31, v29);
            if (!v32)
            {
              goto LABEL_32;
            }

LABEL_30:
            while (*(v111 + 4 * ((v30 + (__clz(__rbit64(v32)) >> 3)) & v109[0])) != v108)
            {
              v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v32)
              {
LABEL_32:
                while (!*&vceq_s8(v31, 0x8080808080808080))
                {
                  v21 += 8;
                  v30 = (v21 + v30) & v109[0];
                  v31 = *(v110 + v30);
                  v32 = vceq_s8(v31, v29);
                  if (v32)
                  {
                    goto LABEL_30;
                  }
                }

                goto LABEL_73;
              }
            }
          }

          else if (v109[1] < 2 || v110 != v108)
          {
            goto LABEL_73;
          }

          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v112, &v108, &__p);
          if ((v107[1] & 1) == 0)
          {
LABEL_18:
            v12 = ++v10 < v9;
            if (v10 == v9)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v13 = v108;
            *v107[0] = v108;
            v14 = *(this + 1);
            v15 = (*v14 + 48);
            if (*v15)
            {
              v15 = (*v15 + 8 * v13 + 7);
            }

            v16 = *v15;
            if (operations_research::sat::PresolveContext::SizeMin(v14, v13) >= 1)
            {
              if (operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, v16, v17, v18, v19))
              {
                operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v108);
                v20 = *(this + 1);
                operator new();
              }

              goto LABEL_83;
            }

            if (operations_research::sat::PresolveContext::SizeMax(*(this + 1), v108) >= 1)
            {
              if (operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v108))
              {
                v33 = **(v16 + 24);
                v34 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v37 = v34;
                v39 = *(v34 + 16);
                v38 = *(v34 + 20);
                v40 = (v34 + 16);
                if (v39 == v38)
                {
                  google::protobuf::RepeatedField<int>::Grow(v34 + 16, v38, (v38 + 1));
                  v39 = *v40;
                }

                v41 = *(v37 + 24);
                *(v37 + 16) = v39 + 1;
                *(v41 + 4 * v39) = v33;
                if (*(v37 + 60) == 12)
                {
                  v42 = *(v37 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v37);
                  *(v37 + 60) = 12;
                  v49 = *(v37 + 8);
                  if (v49)
                  {
                    v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v42 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v49);
                  *(v37 + 48) = v42;
                }

                v51 = *(v42 + 64);
                v50 = *(v42 + 68);
                if (v51 == v50)
                {
                  google::protobuf::RepeatedField<long long>::Grow(v42 + 64, v50);
                  v51 = *(v42 + 64);
                }

                v52 = *(v42 + 72);
                *(v42 + 64) = v51 + 1;
                *(v52 + 8 * v51) = 0;
                if (*(v37 + 60) == 12)
                {
                  v53 = *(v37 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v37);
                  *(v37 + 60) = 12;
                  v54 = *(v37 + 8);
                  if (v54)
                  {
                    v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v53 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v54);
                  *(v37 + 48) = v53;
                }

                v56 = *(v53 + 64);
                v55 = *(v53 + 68);
                if (v56 == v55)
                {
                  google::protobuf::RepeatedField<long long>::Grow(v53 + 64, v55);
                  v56 = *(v53 + 64);
                }

                v57 = *(v53 + 72);
                *(v53 + 64) = v56 + 1;
                *(v57 + 8 * v56) = 0;
                v58 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
                if (*(v16 + 60) == 19)
                {
                  v58 = *(v16 + 48);
                }

                v59 = v58[5];
                if (v59)
                {
                  v60 = v59;
                }

                else
                {
                  v60 = &operations_research::sat::_LinearExpressionProto_default_instance_;
                }

                if (*(v37 + 60) == 12)
                {
                  v61 = *(v37 + 48);
                }

                else
                {
                  operations_research::sat::ConstraintProto::clear_constraint(v37);
                  *(v37 + 60) = 12;
                  v62 = *(v37 + 8);
                  if (v62)
                  {
                    v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v61 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v62);
                  *(v37 + 48) = v61;
                }

                operations_research::sat::AddLinearExpressionToLinearConstraint(v60, 1, v61, v35, v36);
                v63 = *(this + 1);
                operator new();
              }

              v43 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
              if (*(v16 + 60) == 19)
              {
                v43 = *(v16 + 48);
              }

              v44 = *(this + 1);
              v45 = v43[5];
              operations_research::Domain::Domain(&__p, 0);
              if (v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = &operations_research::sat::_LinearExpressionProto_default_instance_;
              }

              v47 = operations_research::sat::PresolveContext::IntersectDomainWith(v44, v46, &__p, 0);
              if (__p)
              {
                operator delete(v107[0]);
              }

              if (v47)
              {
                v48 = *(this + 1);
                operator new();
              }

              goto LABEL_83;
            }

LABEL_73:
            *(v4[3] + 4 * v11++) = v108;
            v12 = ++v10 < v9;
            if (v10 == v9)
            {
              goto LABEL_78;
            }
          }
        }
      }

      goto LABEL_77;
    }
  }

  else
  {
    v9 = 0;
  }

  *(&v112 + 1) = 0;
  v105 = (v4 + 2);
  v104 = v9;
  if (v9 >= 1)
  {
    goto LABEL_17;
  }

LABEL_77:
  v11 = 0;
LABEL_78:
  if (v11 < v104)
  {
    if (*v105 > v11)
    {
      *v105 = v11;
    }

    v64 = *(this + 1);
    operator new();
  }

  v12 = 0;
LABEL_83:
  v65 = v105;
  if (v109[0] >= 2)
  {
    operator delete((v110 - (v109[1] & 1) - 8));
  }

  if (v112 >= 2)
  {
    operator delete((v113 - (BYTE8(v112) & 1) - 8));
    if (v12)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  LODWORD(v67) = *v105;
  if (*v105 > 1)
  {
    v113 = 0;
    v112 = 0uLL;
    if (*v105 >= 1)
    {
      v68 = 0;
      do
      {
        while (1)
        {
          v69 = *(v4[3] + 4 * v68);
          started = operations_research::sat::PresolveContext::StartMin(*(this + 1), v69);
          v71 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v69);
          v72 = *(&v112 + 1);
          if (*(&v112 + 1) >= v113)
          {
            break;
          }

          **(&v112 + 1) = v69;
          *(v72 + 8) = started;
          *(v72 + 16) = v71;
          *(&v112 + 1) = v72 + 24;
          if (++v68 >= *v65)
          {
            goto LABEL_106;
          }
        }

        v73 = v112;
        v74 = *(&v112 + 1) - v112;
        v75 = 0xAAAAAAAAAAAAAAABLL * ((*(&v112 + 1) - v112) >> 3);
        v76 = v75 + 1;
        if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v113 - v112) >> 3) > v76)
        {
          v76 = 0x5555555555555556 * ((v113 - v112) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) >= 0x555555555555555)
        {
          v77 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v77 = v76;
        }

        if (v77)
        {
          if (v77 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v78 = 8 * ((*(&v112 + 1) - v112) >> 3);
        *v78 = v69;
        *(v78 + 8) = started;
        *(v78 + 16) = v71;
        v79 = 24 * v75 + 24;
        v80 = 24 * v75 - v74;
        memcpy((v78 - v74), v73, v74);
        *&v112 = v80;
        *(&v112 + 1) = v79;
        v113 = 0;
        if (v73)
        {
          operator delete(v73);
        }

        v65 = v105;
        *(&v112 + 1) = v79;
        ++v68;
      }

      while (v68 < *v105);
    }

LABEL_106:
    v109[0] = 0;
    v109[1] = 0;
    v110 = 0;
    operations_research::sat::GetOverlappingIntervalComponents(&v112, v109);
    v81 = v109[0];
    v82 = v109[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v109[1] - v109[0]) >> 3) >= 2)
    {
      if (v109[0] == v109[1])
      {
LABEL_128:
        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
        v97 = *(this + 1);
        operator new();
      }

      while (1)
      {
        if ((v81[1] - *v81) >= 5)
        {
          v83 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v84 = v83;
          if (*(v83 + 60) != 20)
          {
            operations_research::sat::ConstraintProto::clear_constraint(v83);
            *(v84 + 60) = 20;
            v88 = *(v84 + 8);
            if (v88)
            {
              v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
            }

            v85 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v88);
            *(v84 + 48) = v85;
            v86 = *v81;
            v87 = v81[1];
            if (*v81 == v87)
            {
              goto LABEL_109;
            }

LABEL_117:
            v89 = *(v85 + 4);
            v90 = *(v85 + 5);
            do
            {
              v91 = *v86;
              if (v89 == v90)
              {
                google::protobuf::RepeatedField<int>::Grow(v85 + 2, v89, (v89 + 1));
                LODWORD(v89) = *(v85 + 4);
                v90 = *(v85 + 5);
              }

              v92 = v85[3];
              *(v85 + 4) = v89 + 1;
              *(v92 + 4 * v89) = v91;
              ++v86;
              v89 = (v89 + 1);
            }

            while (v86 != v87);
            goto LABEL_109;
          }

          v85 = *(v83 + 48);
          v86 = *v81;
          v87 = v81[1];
          if (*v81 != v87)
          {
            goto LABEL_117;
          }
        }

LABEL_109:
        v81 += 3;
        if (v81 == v82)
        {
          goto LABEL_128;
        }
      }
    }

    if (v109[0])
    {
      v93 = v109[0];
      if (v109[1] != v109[0])
      {
        v94 = v109[1];
        do
        {
          v96 = *(v94 - 3);
          v94 -= 3;
          v95 = v96;
          if (v96)
          {
            *(v82 - 2) = v95;
            operator delete(v95);
          }

          v82 = v94;
        }

        while (v94 != v81);
        v93 = v109[0];
      }

      v109[1] = v81;
      operator delete(v93);
    }

    if (v112)
    {
      *(&v112 + 1) = v112;
      operator delete(v112);
    }

    LODWORD(v67) = *v65;
  }

  if (v67 < 1)
  {
    if (!v67)
    {
      goto LABEL_148;
    }
  }

  else
  {
    v98 = 0;
    v99 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v100 = *(v4[3] + 4 * v98);
      if (operations_research::sat::PresolveContext::IntervalIsConstant(*(this + 1), v100))
      {
        operator new();
      }

      v101 = operations_research::sat::PresolveContext::SizeMin(*(this + 1), v100);
      if (v101 < v99)
      {
        v99 = v101;
      }

      ++v98;
      v67 = *v105;
    }

    while (v98 < v67);
    if (!v67)
    {
LABEL_148:
      v103 = *(this + 1);
      operator new();
    }
  }

  if (v67 == 1)
  {
    v102 = *(this + 1);
    operator new();
  }

  return 0;
}

void sub_23CA94D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 144) >= 2uLL)
  {
    operator delete((*(v36 - 128) - (*(v36 - 136) & 1) - 8));
  }

  if (v35)
  {
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::ConstraintProto::mutable_no_overlap(operations_research::sat::ConstraintProto *this)
{
  if (*(this + 15) == 20)
  {
    return *(this + 6);
  }

  operations_research::sat::ConstraintProto::clear_constraint(this);
  *(this + 15) = 20;
  v3 = *(this + 1);
  if (v3)
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(*(v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v3);
  }

  *(this + 6) = result;
  return result;
}

BOOL operations_research::sat::CpModelPresolver::PresolveNoOverlap2D(operations_research::sat::CpModelPresolver *this, int a2, operations_research::sat::ConstraintProto *a3)
{
  if (*(*(this + 1) + 416))
  {
    return 0;
  }

  v4 = this;
  if (*(a3 + 15) == 21)
  {
    v5 = *(a3 + 6);
    v61 = a3;
    v62 = this;
    v6 = *(v5 + 4);
    if (v6 < 1)
    {
LABEL_5:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 1;
      IsConstant = 1;
      goto LABEL_40;
    }
  }

  else
  {
    v5 = &operations_research::sat::_NoOverlap2DConstraintProto_default_instance_;
    v61 = a3;
    v62 = this;
    v6 = dword_2810BEA40;
    if (dword_2810BEA40 < 1)
    {
      goto LABEL_5;
    }
  }

  v54 = 0;
  v12 = 0;
  v9 = 0;
  v59 = 0;
  v7 = 0;
  IsConstant = 1;
  v58 = 1;
  do
  {
    v13 = *(v5[3] + v12);
    v14 = *(v5[6] + v12);
    if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(v62 + 1), v13) & 1) != 0 || (operations_research::sat::PresolveContext::ConstraintIsInactive(*(v62 + 1), v14))
    {
      goto LABEL_9;
    }

    v15 = v61;
    if (*(v61 + 15) == 21)
    {
      v16 = *(v61 + 6);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v61);
      *(v61 + 15) = 21;
      v17 = *(v61 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v17);
      v15 = v61;
      *(v61 + 6) = v16;
    }

    *(*(v16 + 24) + 4 * v9) = v13;
    v57 = v7;
    if (*(v15 + 60) == 21)
    {
      v18 = *(v15 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v15);
      *(v61 + 15) = 21;
      v19 = *(v61 + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v19);
      *(v61 + 6) = v18;
    }

    v56 = v9;
    *(*(v18 + 48) + 4 * v9) = v14;
    started = operations_research::sat::PresolveContext::StartMin(*(v62 + 1), v13);
    v20 = operations_research::sat::PresolveContext::EndMax(*(v62 + 1), v13);
    v21 = operations_research::sat::PresolveContext::StartMin(*(v62 + 1), v14);
    v22 = operations_research::sat::PresolveContext::EndMax(*(v62 + 1), v14);
    v23 = v59;
    v24 = v59 >> 5;
    if (((v59 >> 5) + 1) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v59 >> 5 != -1)
    {
      if (!(((v59 >> 5) + 1) >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = (32 * v24);
    *v25 = started;
    v25[1] = v20;
    v25[2] = v21;
    v25[3] = v22;
    v59 = 32 * v24 + 32;
    memcpy(0, 0, v23);
    if (((v57 >> 2) + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v57 >> 2 != -1)
    {
      if (!(((v57 >> 2) + 1) >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = (4 * (v57 >> 2));
    *v26 = v56;
    v7 = (v26 + 1);
    memcpy(0, 0, v57);
    if (IsConstant)
    {
      IsConstant = operations_research::sat::PresolveContext::IntervalIsConstant(*(v62 + 1), v13);
      if (!v58)
      {
        goto LABEL_35;
      }
    }

    else
    {
      IsConstant = 0;
      if (!v58)
      {
LABEL_35:
        v58 = 0;
        goto LABEL_36;
      }
    }

    v58 = operations_research::sat::PresolveContext::IntervalIsConstant(*(v62 + 1), v14);
LABEL_36:
    v9 = v56 + 1;
    if (!operations_research::sat::PresolveContext::SizeMax(*(v62 + 1), v13) || !operations_research::sat::PresolveContext::SizeMax(*(v62 + 1), v14))
    {
      v54 = 1;
    }

LABEL_9:
    ++v12;
  }

  while (v12 < *(v5 + 4));
  v10 = v54 ^ 1;
  v4 = v62;
  v11 = v58;
  v8 = v59;
LABEL_40:
  operations_research::sat::GetOverlappingRectangleComponents(0, (v8 >> 5), 0, v7 >> 2, &v63);
  v28 = v63;
  v27 = v64;
  if ((v64 - v63) >= 0x11)
  {
    if (v63 == v64)
    {
LABEL_60:
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v4 + 1));
      v48 = *(v4 + 1);
      operator new();
    }

    while (2)
    {
      v29 = v28[1];
      if (v29 >= 2)
      {
        v30 = *v28;
        v31 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(v4 + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v32 = v31;
        if (*(v31 + 60) == 21)
        {
          v33 = *(v31 + 48);
          if ((v29 & 0x3FFFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_43;
          }

LABEL_51:
          v35 = 4 * v29;
          do
          {
            v36 = *v30;
            v37 = *(v5[3] + v36);
            v39 = *(v33 + 16);
            v38 = *(v33 + 20);
            if (v39 == v38)
            {
              v45 = v33;
              google::protobuf::RepeatedField<int>::Grow(v33 + 16, v38, (v38 + 1));
              v33 = v45;
              v39 = *(v45 + 16);
            }

            v40 = *(v33 + 24);
            *(v33 + 16) = v39 + 1;
            *(v40 + 4 * v39) = v37;
            v41 = *(v5[6] + v36);
            v43 = *(v33 + 40);
            v42 = *(v33 + 44);
            if (v43 == v42)
            {
              v46 = v33;
              google::protobuf::RepeatedField<int>::Grow(v33 + 40, v42, (v42 + 1));
              v33 = v46;
              v43 = *(v46 + 40);
            }

            v44 = *(v33 + 48);
            *(v33 + 40) = v43 + 1;
            *(v44 + 4 * v43) = v41;
            ++v30;
            v35 -= 4;
          }

          while (v35);
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v31);
          *(v32 + 60) = 21;
          v34 = *(v32 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(v34);
          *(v32 + 48) = v33;
          if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_43:
      v28 += 2;
      if (v28 == v27)
      {
        goto LABEL_60;
      }

      continue;
    }
  }

  if (v10 & (IsConstant | v11))
  {
    v47 = *(v4 + 1);
    operator new();
  }

  v50 = v9 < v6;
  v3 = v9 < v6;
  if (v50)
  {
    v51 = *(v4 + 1);
    operator new();
  }

  if (v9 == 1)
  {
    v53 = *(v4 + 1);
    operator new();
  }

  if (!v9)
  {
    v52 = *(v4 + 1);
    operator new();
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return v3;
}

void sub_23CA95B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    *(v32 - 104) = v34;
    operator delete(v34);
    v35 = a19;
    if (!a19)
    {
LABEL_5:
      v36 = v31;
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v35 = a19;
    if (!a19)
    {
      goto LABEL_5;
    }
  }

  operator delete(v35);
  v36 = v31;
  if (!v31)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveCumulative(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if (*(*(this + 1) + 416))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*(a2 + 15) == 22)
  {
    v5 = *(a2 + 6);
    *(v5 + 16) |= 1u;
    v6 = *(v5 + 72);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 22;
  v7 = *(a2 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v7);
  v5 = v8;
  *(a2 + 6) = v8;
  *(v8 + 16) |= 1u;
  v6 = *(v8 + 72);
  if (!v6)
  {
LABEL_9:
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v9);
    v6 = v10;
    *(v5 + 72) = v10;
  }

LABEL_12:
  v2 = operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v6);
  if (*(a2 + 15) == 22)
  {
    v11 = *(a2 + 6);
    v13 = *(v11 + 48);
    v12 = v11 + 48;
    v14 = (v13 + 7);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = *(v12 + 8);
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 22;
    v17 = *(a2 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v17);
    *(a2 + 6) = v18;
    v20 = *(v18 + 48);
    v19 = v18 + 48;
    v21 = (v20 + 7);
    if (v20)
    {
      v15 = v21;
    }

    else
    {
      v15 = v19;
    }

    v16 = *(v19 + 8);
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  v22 = 8 * v16;
  do
  {
    v23 = *v15++;
    v2 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v23);
    v22 -= 8;
  }

  while (v22);
LABEL_26:
  v360 = a2;
  if (*(v5 + 72))
  {
    v24 = *(v5 + 72);
  }

  else
  {
    v24 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v25 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v24);
  LOBYTE(v379) = 0;
  v26 = *(this + 1);
  if (*(v5 + 72))
  {
    v27 = *(v5 + 72);
  }

  else
  {
    v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v372 = v25;
  operations_research::Domain::Domain(__p, 0, v25);
  v29 = operations_research::sat::PresolveContext::IntersectDomainWith(v26, v27, __p, &v379);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_292;
  }

  if (v379 == 1)
  {
    v30 = *(this + 1);
    operator new();
  }

  *__p = xmmword_23CE306D0;
  LODWORD(v31) = *(v5 + 24);
  if (v31 < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = (v5 + 48);
    v35 = 8;
    do
    {
      LODWORD(v377) = *(*(v5 + 32) + 4 * v32);
      DWORD1(v377) = v33;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(__p, &v377, &v379);
      if (v380 != 1)
      {
        if (*v34)
        {
          v36 = (*v34 + v35 - 1);
        }

        else
        {
          v36 = (v5 + 48);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v36))
        {
          v37 = *v34 - 1;
          v38 = v37 + 8 * *(*(&v379 + 1) + 4) + 8;
          if ((*v34 & 1) == 0)
          {
            v38 = v5 + 48;
          }

          v39 = *v38;
          v40 = *(*v38 + 64);
          v41 = (v37 + v35);
          if ((*v34 & 1) == 0)
          {
            v41 = (v5 + 48);
          }

          *(v39 + 64) = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v41) + v40;
          v42 = *(this + 1);
          operator new();
        }

        v43 = *(this + 1);
        operator new();
      }

      **(&v379 + 1) = v377;
      *(*(v5 + 32) + 4 * v33) = *(*(v5 + 32) + 4 * v32);
      v44 = *(v5 + 48);
      v45 = v44 - 1 + 8 * v33;
      if (v44)
      {
        v46 = (v44 - 1 + v35);
      }

      else
      {
        v46 = (v5 + 48);
      }

      v47 = *v46;
      v48 = (v45 + 8);
      if ((*(v5 + 48) & 1) == 0)
      {
        v48 = (v5 + 48);
      }

      operations_research::sat::LinearExpressionProto::CopyFrom(*v48, v47);
      ++v33;
      ++v32;
      v31 = *(v5 + 24);
      v35 += 8;
    }

    while (v32 < v31);
  }

  if (v33 < v31)
  {
    v49 = *(v5 + 48);
    *(v5 + 24) = v33;
    if (v49)
    {
      v50 = v49 + 7;
    }

    else
    {
      v50 = v5 + 48;
    }

    v51 = *(v5 + 56) - v33;
    if (v51 >= 1)
    {
      if (!*(v5 + 64))
      {
        v52 = (v50 + 8 * v33);
        v53 = (*(v5 + 56) - v33);
        do
        {
          google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v52++, v28);
          --v53;
        }

        while (v53);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v5 + 48), v33, v51);
    }

    LOBYTE(v2) = 1;
  }

  if (__p[0] >= 2)
  {
    operator delete((v374 - (__p[1] & 1) - 8));
  }

  if (*(v5 + 24) < 1)
  {
    v84 = 0;
    v83 = 0;
    v82 = 0;
LABEL_121:
    if (v82)
    {
      goto LABEL_122;
    }

    goto LABEL_123;
  }

  v54 = 0;
  v361 = 0;
  v55 = 0;
  v363 = 0;
  v365 = 0;
  v56 = (v5 + 48);
  v57 = 8;
  do
  {
    if (operations_research::sat::PresolveContext::ConstraintIsInactive(*(this + 1), *(*(v5 + 32) + 4 * v54)))
    {
      goto LABEL_74;
    }

    if (*v56)
    {
      v60 = (*v56 + v57 - 1);
    }

    else
    {
      v60 = (v5 + 48);
    }

    v61 = *v60;
    if (!operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v60))
    {
      ++v55;
      goto LABEL_74;
    }

    v62 = *(*(v5 + 32) + 4 * v54);
    if (!operations_research::sat::PresolveContext::SizeMax(*(this + 1), v62))
    {
      ++v365;
      goto LABEL_74;
    }

    started = operations_research::sat::PresolveContext::StartMin(*(this + 1), v62);
    v64 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v62);
    v65 = *(this + 1);
    if (started <= v64)
    {
      if (operations_research::sat::PresolveContext::MinOf(v65, v61) <= v372)
      {
        goto LABEL_92;
      }

      IsOptional = operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v62);
      v70 = *(this + 1);
      if (!IsOptional)
      {
        v76 = (*v70 + 48);
        if (*v76)
        {
          v76 = (*v76 + 8 * v62 + 7);
        }

        v77 = *v76;
        v78 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v77 + 60) == 19)
        {
          v78 = *(v77 + 48);
        }

        if (v78[5])
        {
          v79 = v78[5];
        }

        else
        {
          v79 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        operations_research::Domain::Domain(__p, 0, 0);
        v80 = operations_research::sat::PresolveContext::IntersectDomainWith(v70, v79, __p, 0);
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if (v80)
        {
          v81 = *(this + 1);
          operator new();
        }

        goto LABEL_292;
      }

      if (operations_research::sat::PresolveContext::SizeMin(*(this + 1), v62) < 1)
      {
LABEL_92:
        *(*(v5 + 32) + 4 * v361) = v62;
        v71 = *(v5 + 48);
        v72 = v71 - 1 + 8 * v361;
        if (v71)
        {
          v73 = (v71 - 1 + v57);
        }

        else
        {
          v73 = (v5 + 48);
        }

        v74 = *v73;
        v75 = (v72 + 8);
        if ((*(v5 + 48) & 1) == 0)
        {
          v75 = (v5 + 48);
        }

        operations_research::sat::LinearExpressionProto::CopyFrom(*v75, v74);
        ++v361;
        goto LABEL_74;
      }

      v67 = *(this + 1);
    }

    else
    {
      v66 = operations_research::sat::PresolveContext::ConstraintIsOptional(v65, v62);
      v67 = *(this + 1);
      if (!v66)
      {
        v237 = "cumulative: inconsistent intervals cannot be performed.";
        v238 = 55;
LABEL_313:
        LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v67, v237, v238);
        return v2 & 1;
      }
    }

    v68 = *v67 + 48;
    if (*v68)
    {
      v68 = *v68 + 8 * v62 + 7;
    }

    if ((operations_research::sat::PresolveContext::SetLiteralToFalse(v67, **(*v68 + 24)) & 1) == 0)
    {
      goto LABEL_292;
    }

    ++v363;
LABEL_74:
    ++v54;
    v58 = *(v5 + 24);
    v57 += 8;
  }

  while (v54 < v58);
  v82 = v55 > 0;
  v83 = v365 > 0;
  v84 = v363 > 0;
  if (v361 >= v58)
  {
    goto LABEL_121;
  }

  v85 = *(v5 + 48);
  *(v5 + 24) = v361;
  if (v85)
  {
    v86 = v85 + 7;
  }

  else
  {
    v86 = v5 + 48;
  }

  v87 = *(v5 + 56) - v361;
  if (v87 >= 1)
  {
    if (!*(v5 + 64))
    {
      v88 = (v86 + 8 * v361);
      v89 = (*(v5 + 56) - v361);
      do
      {
        v90 = *v88++;
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v90, v59);
        --v89;
      }

      while (v89);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v5 + 48), v361, v87);
  }

  LOBYTE(v2) = 1;
  if (v82)
  {
LABEL_122:
    v91 = *(this + 1);
    operator new();
  }

LABEL_123:
  if (v83)
  {
    v92 = *(this + 1);
    operator new();
  }

  if (v84)
  {
    v93 = *(this + 1);
    operator new();
  }

  if (*(v5 + 56) >= 1)
  {
    v94 = 0;
    v95 = 8;
    do
    {
      v96 = *(*(v5 + 32) + 4 * v94);
      v97 = *(v5 + 48);
      if (v97)
      {
        v98 = (v97 + v95 - 1);
      }

      else
      {
        v98 = (v5 + 48);
      }

      v99 = *v98;
      if ((operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), *(*(v5 + 32) + 4 * v94)) & 1) == 0 && operations_research::sat::PresolveContext::SizeMin(*(this + 1), v96))
      {
        LOBYTE(v379) = 0;
        v100 = *(this + 1);
        operations_research::Domain::Domain(__p, 0, v372);
        v101 = operations_research::sat::PresolveContext::IntersectDomainWith(v100, v99, __p, &v379);
        if (__p[0])
        {
          operator delete(__p[1]);
        }

        if ((v101 & 1) == 0)
        {
          goto LABEL_292;
        }

        if (v379 == 1)
        {
          v102 = *(this + 1);
          operator new();
        }
      }

      ++v94;
      v95 += 8;
    }

    while (v94 < *(v5 + 56));
  }

  if (*(v5 + 24) > 1)
  {
    v103 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v374 = 0;
    do
    {
      v105 = *(*(v5 + 32) + 4 * v103);
      v106 = operations_research::sat::PresolveContext::StartMin(*(this + 1), v105);
      v107 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v105);
      v108 = __p[1];
      if (__p[1] < v374)
      {
        *__p[1] = v103;
        v104 = v108 + 3;
        v108[1] = v106;
        v108[2] = v107;
      }

      else
      {
        v109 = __p[0];
        v110 = __p[1] - __p[0];
        v111 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
        v112 = v111 + 1;
        if (v111 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v374 - __p[0]) >> 3) > v112)
        {
          v112 = 0x5555555555555556 * ((v374 - __p[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v374 - __p[0]) >> 3) >= 0x555555555555555)
        {
          v113 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v113 = v112;
        }

        if (v113)
        {
          if (v113 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v114 = 8 * ((__p[1] - __p[0]) >> 3);
        *v114 = v103;
        *(v114 + 8) = v106;
        *(v114 + 16) = v107;
        v104 = (24 * v111 + 24);
        v115 = (24 * v111 - v110);
        memcpy(v115, v109, v110);
        __p[0] = v115;
        __p[1] = v104;
        v374 = 0;
        if (v109)
        {
          operator delete(v109);
        }
      }

      __p[1] = v104;
      ++v103;
    }

    while (v103 < *(v5 + 24));
    v379 = 0uLL;
    v380 = 0;
    operations_research::sat::GetOverlappingIntervalComponents(__p, &v379);
    v116 = v379;
    v117 = (*(&v379 + 1) - v379) >> 3;
    v118 = 0xAAAAAAAAAAAAAAABLL * v117;
    if (0xAAAAAAAAAAAAAAABLL * v117 >= 2)
    {
      v366 = 0xAAAAAAAAAAAAAAABLL * v117;
      if (v379 != *(&v379 + 1))
      {
        v119 = (v5 + 48);
        v369 = *(&v379 + 1);
        while (1)
        {
          v120 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v121 = v120;
          if (*(v120 + 60) != 22)
          {
            break;
          }

          v122 = *(v120 + 48);
          v123 = *v116;
          v124 = v116[1];
          if (*v116 != v124)
          {
            goto LABEL_165;
          }

LABEL_171:
          if (*(v5 + 72))
          {
            v135 = *(v5 + 72);
          }

          else
          {
            v135 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          *(v122 + 16) |= 1u;
          v136 = *(v122 + 72);
          if (!v136)
          {
            v137 = *(v122 + 8);
            if (v137)
            {
              v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v137);
            *(v122 + 72) = v136;
          }

          operations_research::sat::LinearExpressionProto::CopyFrom(v136, v135);
          v116 += 3;
          if (v116 == v369)
          {
            goto LABEL_179;
          }
        }

        operations_research::sat::ConstraintProto::clear_constraint(v120);
        *(v121 + 60) = 22;
        v125 = *(v121 + 8);
        if (v125)
        {
          v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(v125);
        v122 = v126;
        *(v121 + 48) = v126;
        v123 = *v116;
        v124 = v116[1];
        if (*v116 == v124)
        {
          goto LABEL_171;
        }

        do
        {
LABEL_165:
          v127 = *v123;
          v128 = *(*(v5 + 32) + 4 * v127);
          v130 = *(v122 + 24);
          v129 = *(v122 + 28);
          if (v130 == v129)
          {
            google::protobuf::RepeatedField<int>::Grow(v122 + 24, v129, (v129 + 1));
            v130 = *(v122 + 24);
          }

          v131 = *(v122 + 32);
          *(v122 + 24) = v130 + 1;
          *(v131 + 4 * v130) = v128;
          if (*v119)
          {
            v132 = (*v119 + 8 * v127 + 7);
          }

          else
          {
            v132 = (v5 + 48);
          }

          v133 = *v132;
          v134 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v122 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
          operations_research::sat::LinearExpressionProto::CopyFrom(v134, v133);
          ++v123;
        }

        while (v123 != v124);
        goto LABEL_171;
      }

LABEL_179:
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      v118 = v366;
      v138 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v377, "cumulative: split into disjoint components");
      operations_research::sat::PresolveContext::UpdateRuleStats(v138, &v377, 1, v139, v140);
      if (SHIBYTE(v378) < 0)
      {
        operator delete(v377);
      }

      operations_research::sat::ConstraintProto::Clear(v360);
    }

    std::vector<std::vector<int>>::~vector[abi:ne200100](&v379);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v118 >= 2)
    {
      goto LABEL_292;
    }
  }

  *&v377 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  *(&v377 + 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  v378 = 0;
  if (*(v5 + 72))
  {
    v141 = *(v5 + 72);
  }

  else
  {
    v141 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v142 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v141);
  if (*(v5 + 24) >= 1)
  {
    v143 = 0;
    v144 = 8;
    do
    {
      v145 = *(*(v5 + 32) + 4 * v143);
      v146 = *(v5 + 48);
      if (v146)
      {
        v147 = (v146 + v144 - 1);
      }

      else
      {
        v147 = (v5 + 48);
      }

      v148 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v147);
      __p[0] = operations_research::sat::PresolveContext::StartMin(*(this + 1), v145);
      v149 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v377, __p);
      *v149 += v148;
      __p[0] = operations_research::sat::PresolveContext::EndMax(*(this + 1), v145);
      v150 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>>::operator[]<long long>(&v377, __p);
      *v150 -= v148;
      ++v143;
      v144 += 8;
    }

    while (v143 < *(v5 + 24));
  }

  *__p = xmmword_23CE306D0;
  v151 = *(&v377 + 1);
  v152 = *v377;
  v153 = *(*(&v377 + 1) + 10);
  if (*v377 == *(&v377 + 1) && !*(*(&v377 + 1) + 10))
  {
    goto LABEL_246;
  }

  v370 = *(*(&v377 + 1) + 10);
  v154 = 0;
  v155 = 0;
  v156 = 0;
  do
  {
    v157 = &v152[16 * v156];
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::find_or_prepare_insert<long long>(__p, v157 + 2, &v379);
    if (v380 == 1)
    {
      v158 = *(&v379 + 1);
      **(&v379 + 1) = *(v157 + 2);
      *(v158 + 8) = 0;
    }

    *(*(&v379 + 1) + 8) = v154;
    v155 += *(v157 + 3);
    if (v155 > v142)
    {
      ++v154;
    }

    if (v152[11])
    {
      if (++v156 == v152[10])
      {
        v159 = v152;
        while (1)
        {
          v160 = *v159;
          if (*(*v159 + 11))
          {
            break;
          }

          v161 = v159[8];
          v159 = *v159;
          if (v161 != v160[10])
          {
            v152 = v160;
            v156 = v161;
            break;
          }
        }
      }
    }

    else
    {
      v162 = &v152[8 * (v156 + 1) + 256];
      do
      {
        v152 = *v162;
        v163 = *(*v162 + 11);
        v162 = *v162 + 256;
      }

      while (!v163);
      v156 = 0;
    }
  }

  while (v152 != v151 || v156 != v370);
  if (v155)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v155, 0, "current_load == 0");
  }

  if (v154)
  {
    LODWORD(v164) = *(v5 + 24);
    if (v164 < 1)
    {
      v166 = 0;
    }

    else
    {
      v165 = 0;
      v166 = 0;
      do
      {
        v167 = *(*(v5 + 32) + 4 * v165);
        v168 = operations_research::sat::PresolveContext::StartMin(*(this + 1), v167);
        v169 = operations_research::sat::PresolveContext::EndMax(*(this + 1), v167);
        if (v168 < v169)
        {
          v171 = __p[0];
          if (__p[0] >= 2)
          {
            v174 = 0;
            _X9 = v374;
            __asm { PRFM            #4, [X9] }

            v181 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v169) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v169));
            v182 = vdup_n_s8(v181 & 0x7F);
            v183 = ((v374 >> 12) ^ (v181 >> 7)) & __p[0];
            v184 = *(v374 + v183);
            v185 = vceq_s8(v184, v182);
            if (!v185)
            {
              goto LABEL_227;
            }

LABEL_225:
            while (1)
            {
              v186 = (v183 + (__clz(__rbit64(v185)) >> 3)) & __p[0];
              if (*(v375 + 16 * v186) == v169)
              {
                break;
              }

              v185 &= ((v185 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v185)
              {
LABEL_227:
                while (!*&vceq_s8(v184, 0x8080808080808080))
                {
                  v174 += 8;
                  v183 = (v174 + v183) & __p[0];
                  v184 = *(v374 + v183);
                  v185 = vceq_s8(v184, v182);
                  if (v185)
                  {
                    goto LABEL_225;
                  }
                }

LABEL_269:
                absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v170);
              }
            }

            v187 = 0;
            v172 = *(v375 + 16 * v186 + 8);
            __asm { PRFM            #4, [X9] }

            v189 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v168) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v168));
            v190 = vdup_n_s8(v189 & 0x7F);
            v191 = ((v374 >> 12) ^ (v189 >> 7)) & __p[0];
            v192 = *(v374 + v191);
            v193 = vceq_s8(v192, v190);
            if (!v193)
            {
              goto LABEL_233;
            }

            do
            {
LABEL_231:
              v194 = (v191 + (__clz(__rbit64(v193)) >> 3)) & __p[0];
              if (*(v375 + 16 * v194) == v168)
              {
                v171 = (v375 + 16 * v194);
                v173 = (v374 + v194);
                goto LABEL_238;
              }

              v193 &= ((v193 & 0x8080808080808080) - 1) & 0x8080808080808080;
            }

            while (v193);
LABEL_233:
            while (!*&vceq_s8(v192, 0x8080808080808080))
            {
              v187 += 8;
              v191 = (v187 + v191) & __p[0];
              v192 = *(v374 + v191);
              v193 = vceq_s8(v192, v190);
              if (v193)
              {
                goto LABEL_231;
              }
            }

            v173 = 0;
          }

          else
          {
            if (__p[1] < 2 || v374 != v169)
            {
              goto LABEL_269;
            }

            LODWORD(v172) = v375;
            v171 = &v374;
            v173 = &absl::lts_20240722::container_internal::kSooControl;
            if (v374 != v168)
            {
              v173 = 0;
            }
          }

LABEL_238:
          if (!v173)
          {
            goto LABEL_269;
          }

          if (v172 != *(v171 + 2))
          {
            *(*(v5 + 32) + 4 * v166) = *(*(v5 + 32) + 4 * v165);
            v195 = *(v5 + 48);
            v196 = v195 + 7;
            if (v195)
            {
              v197 = (v195 + 7 + 8 * v165);
            }

            else
            {
              v197 = (v5 + 48);
            }

            v198 = *v197;
            v199 = (v196 + 8 * v166);
            if ((*(v5 + 48) & 1) == 0)
            {
              v199 = (v5 + 48);
            }

            operations_research::sat::LinearExpressionProto::CopyFrom(*v199, v198);
            ++v166;
          }
        }

        ++v165;
        v164 = *(v5 + 24);
      }

      while (v165 < v164);
    }

    v203 = v360;
    if (v166 >= v164)
    {
      v204 = 0;
    }

    else
    {
      v222 = *(v5 + 48);
      *(v5 + 24) = v166;
      if (v222)
      {
        v223 = v222 + 7;
      }

      else
      {
        v223 = v5 + 48;
      }

      google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::erase((v5 + 48), (v223 + 8 * v166), v223 + 8 * *(v5 + 56));
      v224 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: remove never conflicting intervals.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v224, &v379, 1, v225, v226);
      if (SHIBYTE(v380) < 0)
      {
        operator delete(v379);
      }

      v204 = 0;
      LOBYTE(v2) = 1;
    }
  }

  else
  {
LABEL_246:
    v200 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: max profile is always under the min capacity");
    operations_research::sat::PresolveContext::UpdateRuleStats(v200, &v379, 1, v201, v202);
    v203 = v360;
    if (SHIBYTE(v380) < 0)
    {
      operator delete(v379);
    }

    operations_research::sat::ConstraintProto::Clear(v360);
    v204 = 1;
  }

  if (__p[0] >= 2)
  {
    operator delete((v374 - (__p[1] & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::clear(&v377);
  if (v204)
  {
LABEL_292:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v205 = *(v5 + 24);
  if (!v205)
  {
    v218 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: no intervals");
    operations_research::sat::PresolveContext::UpdateRuleStats(v218, __p, 1, v219, v220);
    if (SHIBYTE(v374) < 0)
    {
      operator delete(__p[0]);
    }

    v221 = v203;
    goto LABEL_268;
  }

  if (v205 < 1)
  {
    v367 = 0;
    v207 = 0;
  }

  else
  {
    v206 = 0;
    v207 = 0;
    v367 = 0;
    v208 = 8;
    do
    {
      v209 = *(*(v5 + 32) + 4 * v206);
      v210 = *(this + 1);
      v211 = (*v210 + 48);
      if (*v211)
      {
        v211 = (*v211 + 8 * v209 + 7);
      }

      v212 = *v211;
      v213 = (v5 + 48);
      if (*(v5 + 48))
      {
        v213 = (*(v5 + 48) + v208 - 1);
      }

      v214 = *v213;
      v215 = operations_research::sat::PresolveContext::MaxOf(v210, *v213);
      if (!*(v212 + 16) && operations_research::sat::PresolveContext::SizeMin(*(this + 1), v209) >= 1)
      {
        v216 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v214);
        v217 = v367;
        if (v367 <= v216)
        {
          v217 = v216;
        }

        v367 = v217;
      }

      v207 += v215;
      ++v206;
      v208 += 8;
    }

    while (v206 < *(v5 + 24));
  }

  if (*(v5 + 72))
  {
    v227 = *(v5 + 72);
  }

  else
  {
    v227 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (v367 > operations_research::sat::PresolveContext::MinOf(*(this + 1), v227))
  {
    v228 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: propagate min capacity.");
    operations_research::sat::PresolveContext::UpdateRuleStats(v228, __p, 1, v229, v230);
    if (SHIBYTE(v374) < 0)
    {
      operator delete(__p[0]);
    }

    v231 = *(this + 1);
    operations_research::Domain::Domain(__p, v367, 0x7FFFFFFFFFFFFFFFLL);
    v232 = operations_research::sat::PresolveContext::IntersectDomainWith(v231, v227, __p, 0);
    if (__p[0])
    {
      operator delete(__p[1]);
    }

    if ((v232 & 1) == 0)
    {
      goto LABEL_292;
    }
  }

  v233 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v227);
  v234 = *(this + 1);
  if (v367 > v233)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: cannot fit performed demands");
    operations_research::sat::PresolveContext::UpdateRuleStats(v234, __p, 1, v235, v236);
    if (SHIBYTE(v374) < 0)
    {
      operator delete(__p[0]);
    }

    v67 = *(this + 1);
    v237 = &byte_23CE7F131;
    v238 = 0;
    goto LABEL_313;
  }

  v240 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v227);
  v241 = *(this + 1);
  if (v207 <= v240)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: capacity exceeds sum of demands");
    operations_research::sat::PresolveContext::UpdateRuleStats(v241, __p, 1, v253, v254);
    v221 = v360;
    if (SHIBYTE(v374) < 0)
    {
      operator delete(__p[0]);
      v221 = v360;
    }

LABEL_268:
    operations_research::sat::ConstraintProto::Clear(v221);
    goto LABEL_292;
  }

  if (*(v5 + 72))
  {
    v242 = *(v5 + 72);
  }

  else
  {
    v242 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), v242))
  {
    goto LABEL_344;
  }

  v243 = 0;
  v244 = 0;
  while (1)
  {
    if (*(v360 + 15) == 22)
    {
      v246 = *(v360 + 6);
      v247 = *(v246 + 14);
    }

    else
    {
      v247 = dword_2810BEAE8;
      v246 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
    }

    if (v243 >= v247)
    {
      break;
    }

    v249 = v246[6];
    v248 = (v246 + 6);
    v250 = &v249[v243] + 7;
    if (v249)
    {
      v248 = v250;
    }

    v251 = *v248;
    if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v248))
    {
      v252 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v251);
      if (v252)
      {
        do
        {
          v245 = v252;
          v252 = v244 % v252;
          v244 = v245;
        }

        while (v252);
      }

      else
      {
        v245 = v244;
      }

      ++v243;
      v244 = v245;
      if (v245 != 1)
      {
        continue;
      }
    }

    goto LABEL_344;
  }

  if (v244 < 2)
  {
    goto LABEL_344;
  }

  v255 = 0;
  v256 = (v5 + 48);
  v257 = 1;
  while (2)
  {
    if (*(v360 + 15) == 22)
    {
      v258 = *(v360 + 6);
      v259 = *(v258 + 14);
    }

    else
    {
      v259 = dword_2810BEAE8;
      v258 = &operations_research::sat::_CumulativeConstraintProto_default_instance_;
    }

    if (v255 < v259)
    {
      v261 = v258[6];
      v260 = (v258 + 6);
      v262 = &v261[v257 - 1] + 7;
      if (v261)
      {
        v260 = v262;
      }

      v263 = operations_research::sat::PresolveContext::MinOf(*(this + 1), *v260) / v244;
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
      v376 = v263;
      if (*v256)
      {
        v264 = (*v256 + v257 * 8 - 1);
      }

      else
      {
        v264 = (v5 + 48);
      }

      v265 = *v264;
      if (*v264 != __p)
      {
        v266 = v265[1];
        if (v266)
        {
          v266 = *(v266 & 0xFFFFFFFFFFFFFFFELL);
          v267 = __p[1];
          if (__p[1])
          {
            goto LABEL_336;
          }

LABEL_333:
          if (v266 != v267)
          {
            goto LABEL_334;
          }

LABEL_319:
          operations_research::sat::LinearExpressionProto::InternalSwap(v265, __p);
        }

        else
        {
          v267 = __p[1];
          if ((__p[1] & 1) == 0)
          {
            goto LABEL_333;
          }

LABEL_336:
          if (v266 == *(v267 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_319;
          }

LABEL_334:
          operations_research::sat::LinearExpressionProto::CopyFrom(v265, __p);
        }
      }

      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
      ++v255;
      ++v257;
      continue;
    }

    break;
  }

  if (*(v5 + 72))
  {
    v268 = *(v5 + 72);
  }

  else
  {
    v268 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v269 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v268) / v244;
  operations_research::sat::LinearExpressionProto::LinearExpressionProto(__p, 0);
  v376 = v269;
  operations_research::sat::CumulativeConstraintProto::mutable_capacity(v5);
  operations_research::sat::LinearExpressionProto::operator=(v270, __p);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(__p);
  v271 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "cumulative: divide demands and capacity by gcd");
  operations_research::sat::PresolveContext::UpdateRuleStats(v271, __p, 1, v272, v273);
  if (SHIBYTE(v374) < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(v2) = 1;
LABEL_344:
  v274 = *(v5 + 24);
  v275 = *(v5 + 72);
  if (!v275)
  {
    v275 = &operations_research::sat::_LinearExpressionProto_default_instance_;
  }

  v359 = v275;
  std::vector<operations_research::sat::LinearExpressionProto>::vector[abi:ne200100](__p, v274);
  if (v274 < 1)
  {
    v371 = 0;
    LOBYTE(v277) = 0;
    v364 = 0;
LABEL_375:
    if (v371 == v274)
    {
      v301 = *(this + 1);
      if ((v364 != v274) | v277 & 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: convert to no_overlap");
        operations_research::sat::PresolveContext::UpdateRuleStats(v301, &v379, 1, v302, v303);
        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        if (*(v5 + 56) >= 1)
        {
          v304 = 0;
          v305 = (v5 + 48);
          v306 = 8;
          do
          {
            if (*v305)
            {
              v307 = (*v305 + v306 - 1);
            }

            else
            {
              v307 = (v5 + 48);
            }

            v308 = *v307;
            v309 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v307);
            if (v309 > operations_research::sat::PresolveContext::MinOf(*(this + 1), v359))
            {
              v310 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
              v311 = v310;
              v312 = **(this + 1);
              v314 = *(v312 + 48);
              v313 = v312 + 48;
              v315 = v314 + 8 * *(*(v5 + 32) + 4 * v304) + 7;
              if (v314)
              {
                v313 = v315;
              }

              google::protobuf::RepeatedField<int>::operator=((v310 + 16), (*v313 + 16));
              v316 = operations_research::sat::ConstraintProto::mutable_linear(v311);
              operations_research::sat::LinearConstraintProto::add_domain(v316, 0);
              v317 = operations_research::sat::ConstraintProto::mutable_linear(v311);
              operations_research::sat::LinearConstraintProto::add_domain(v317, 0x7FFFFFFFFFFFFFFFLL);
              v318 = operations_research::sat::ConstraintProto::mutable_linear(v311);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v359, 1, v318, v319, v320);
              v321 = operations_research::sat::ConstraintProto::mutable_linear(v311);
              operations_research::sat::AddLinearExpressionToLinearConstraint(v308, 0xFFFFFFFFFFFFFFFFLL, v321, v322, v323);
            }

            ++v304;
            v306 += 8;
          }

          while (v304 < *(v5 + 56));
        }

        v351 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v352 = operations_research::sat::ConstraintProto::mutable_no_overlap(v351);
        v353 = *(v5 + 24);
        if (v353)
        {
          v354 = v352;
          v355 = *(v5 + 32);
          v356 = 4 * v353;
          do
          {
            operations_research::sat::BoolArgumentProto::add_literals(v354, *v355++);
            v356 -= 4;
          }

          while (v356);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: convert to all_different");
        operations_research::sat::PresolveContext::UpdateRuleStats(v301, &v379, 1, v328, v329);
        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        v330 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v331 = operations_research::sat::ConstraintProto::mutable_all_diff(v330);
        v333 = __p[0];
        v332 = __p[1];
        if (__p[0] != __p[1])
        {
          v334 = v331;
          do
          {
            v335 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v334 + 16), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            operations_research::sat::LinearExpressionProto::CopyFrom(v335, v333);
            v333 = (v333 + 80);
          }

          while (v333 != v332);
        }

        if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), v359))
        {
          v336 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v359);
          v338 = *(v5 + 48);
          v337 = v5 + 48;
          v339 = v338 + 7;
          v340 = ((v338 & 1) != 0 ? v339 : v337);
          v341 = *(v337 + 8);
          if (v341)
          {
            v342 = v336;
            v343 = 8 * v341;
            do
            {
              v344 = *v340;
              if (v342 < operations_research::sat::PresolveContext::MaxOf(*(this + 1), *v340))
              {
                v345 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
                v346 = operations_research::sat::ConstraintProto::mutable_linear(v345);
                operations_research::sat::LinearConstraintProto::add_domain(v346, 0);
                operations_research::sat::LinearConstraintProto::add_domain(v346, 0x7FFFFFFFFFFFFFFFLL);
                operations_research::sat::AddLinearExpressionToLinearConstraint(v359, 1, v346, v347, v348);
                operations_research::sat::AddLinearExpressionToLinearConstraint(v344, 0xFFFFFFFFFFFFFFFFLL, v346, v349, v350);
              }

              ++v340;
              v343 -= 8;
            }

            while (v343);
          }
        }
      }

      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(this + 1));
      operations_research::sat::ConstraintProto::Clear(v360);
LABEL_413:
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    v276 = 0;
    v364 = 0;
    v277 = 0;
    v371 = 0;
    v362 = (v5 + 48);
    while (1)
    {
      v278 = *(*(v5 + 32) + 4 * v276);
      v279 = operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v278);
      v280 = **(this + 1);
      v282 = *(v280 + 48);
      v281 = v280 + 48;
      v283 = v282 + 8 * *(*(v5 + 32) + 4 * v276) + 7;
      if (v282)
      {
        v281 = v283;
      }

      v284 = *v281;
      v285 = *(*v281 + 60);
      v286 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
      if (v285 == 19)
      {
        v286 = *(v284 + 48);
      }

      v368 = v277;
      v287 = v286[3];
      if (v287)
      {
        v288 = v287;
      }

      else
      {
        v288 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      operations_research::sat::LinearExpressionProto::CopyFrom((__p[0] + 80 * v276), v288);
      if (*v362)
      {
        v289 = (*v362 + 8 * v276 + 7);
      }

      else
      {
        v289 = (v5 + 48);
      }

      v290 = *v289;
      if (operations_research::sat::PresolveContext::SizeMin(*(this + 1), v278) == 1)
      {
        v291 = operations_research::sat::PresolveContext::SizeMax(*(this + 1), v278);
        v292 = v364;
        if (v291 == 1)
        {
          v292 = v364 + 1;
        }

        v364 = v292;
      }

      if (!operations_research::sat::PresolveContext::SizeMin(*(this + 1), v278))
      {
        break;
      }

      v293 = operations_research::sat::PresolveContext::MinOf(*(this + 1), v290);
      v294 = operations_research::sat::PresolveContext::MaxOf(*(this + 1), v290);
      v295 = v371;
      if (v293 > v372 / 2)
      {
        v295 = v371 + 1;
      }

      v371 = v295;
      if (v293 > v372)
      {
        v324 = *(this + 1);
        std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: demand_min exceeds capacity max");
        operations_research::sat::PresolveContext::UpdateRuleStats(v324, &v379, 1, v325, v326);
        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        if (operations_research::sat::PresolveContext::ConstraintIsOptional(*(this + 1), v278))
        {
          v327 = *(v284 + 16);
          if (v327 != 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v327, 1, "ct.enforcement_literal().size() == 1");
          }

          LOBYTE(v2) = operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), **(v284 + 24)) ^ 1 | v2;
        }

        else
        {
          LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
        }

        break;
      }

      if (v294 > v372)
      {
        v296 = *(this + 1);
        if (*(v284 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: demand_max of optional interval exceeds capacity.");
          operations_research::sat::PresolveContext::UpdateRuleStats(v296, &v379, 1, v357, v358);
          if (SHIBYTE(v380) < 0)
          {
            operator delete(v379);
          }

          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v379, "cumulative: demand_max exceeds capacity max.");
        operations_research::sat::PresolveContext::UpdateRuleStats(v296, &v379, 1, v297, v298);
        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        v299 = *(this + 1);
        operations_research::Domain::Domain(&v379, 0x8000000000000000, v372);
        v300 = operations_research::sat::PresolveContext::IntersectDomainWith(v299, v290, &v379, 0);
        if (v379)
        {
          operator delete(*(&v379 + 1));
        }

        if ((v300 & 1) == 0)
        {
          goto LABEL_413;
        }
      }

      v277 = v279 | v368;
      if (++v276 == v274)
      {
        goto LABEL_375;
      }
    }
  }

  std::vector<operations_research::sat::LinearExpressionProto>::~vector[abi:ne200100](__p);
  return v2 & 1;
}

void sub_23CA97D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *__p)
{
  if (a23)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23CA97E54);
}

void sub_23CA97D74()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x23CA97DCCLL);
}

void sub_23CA97DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, char a24, uint64_t a25)
{
  if (a23 >= 2)
  {
    operator delete((a25 - (a24 & 1) - 8));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23CA97E54);
}

void sub_23CA97E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v25 - 128));
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CumulativeConstraintProto::mutable_capacity(operations_research::sat::CumulativeConstraintProto *this)
{
  *(this + 4) |= 1u;
  if (!*(this + 9))
  {
    v2 = *(this + 1);
    if (v2)
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    }

    else
    {
      google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v2);
    }

    *(this + 9) = v3;
  }
}

operations_research::sat::LinearExpressionProto *operations_research::sat::LinearExpressionProto::operator=(operations_research::sat::LinearExpressionProto *result, const operations_research::sat::LinearExpressionProto *a2)
{
  if (result != a2)
  {
    v2 = *(result + 1);
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
LABEL_4:
        if (v2 != v3)
        {
LABEL_5:
          v4 = result;
          operations_research::sat::LinearExpressionProto::CopyFrom(result, a2);
          return v4;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(a2 + 1);
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v2 != *(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = result;
    operations_research::sat::LinearExpressionProto::InternalSwap(result, a2);
    return v5;
  }

  return result;
}

void *std::vector<operations_research::sat::LinearExpressionProto>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CA9800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<operations_research::sat::LinearExpressionProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveRoutes(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2, char *a3)
{
  v35[6] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    result = 0;
    goto LABEL_4;
  }

  if (*(a2 + 15) == 23)
  {
    v6 = *(a2 + 6);
    v7 = *(v6 + 64);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v7 < 1)
    {
LABEL_7:
      v8 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 23;
    v10 = *(a2 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::RoutesConstraintProto>(v10);
    *(a2 + 6) = v6;
    v7 = *(v6 + 64);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v7 < 1)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
  v8 = 0;
  v27 = v7;
  v12 = 4 * v7;
  do
  {
    v14 = *(*(v6 + 72) + v11);
    v15 = *(*(v6 + 24) + v11);
    v16 = *(*(v6 + 48) + v11);
    v17 = v30;
    if (v30 <= v15)
    {
      std::vector<BOOL>::resize(&v29, v15 + 1, 0);
      v17 = v30;
    }

    if (v17 <= v16)
    {
      std::vector<BOOL>::resize(&v29, v16 + 1, 0);
    }

    if (operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v14))
    {
      v18 = *(this + 1);
      operator new();
    }

    *(*(v6 + 72) + 4 * v8) = v14;
    *(*(v6 + 24) + 4 * v8) = v15;
    *(*(v6 + 48) + 4 * v8++) = v16;
    v13 = v29;
    *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *&v13[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v11 += 4;
  }

  while (v12 != v11);
  LODWORD(v7) = v27;
  if (!v8)
  {
    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), "routes: graph with nodes and no arcs", 36);
    goto LABEL_40;
  }

LABEL_20:
  if (v30)
  {
    v19 = 0;
    v20 = 0;
    while (((*(v29 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) != 0)
    {
      v20 = (v20 + 1);
      v19 = v20;
      if (v30 <= v20)
      {
        goto LABEL_24;
      }
    }

    v21 = *(this + 1);
    v35[0] = "routes: node ";
    v35[1] = 13;
    v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v20, v34, a3);
    v33[0] = v34;
    v33[1] = v22 - v34;
    v32[0] = " misses incoming or outgoing arcs";
    v32[1] = 33;
    absl::lts_20240722::StrCat(v35, v33, v32, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    result = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(v21, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      result = v25;
    }

    goto LABEL_40;
  }

LABEL_24:
  if (v8 < v7)
  {
    if (*(v6 + 64) > v8)
    {
      *(v6 + 64) = v8;
      if (*(v6 + 16) <= v8)
      {
LABEL_27:
        if (*(v6 + 40) <= v8)
        {
LABEL_29:
          result = 1;
          goto LABEL_40;
        }

LABEL_28:
        *(v6 + 40) = v8;
        goto LABEL_29;
      }
    }

    else if (*(v6 + 16) <= v8)
    {
      goto LABEL_27;
    }

    *(v6 + 16) = v8;
    if (*(v6 + 40) <= v8)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  result = 0;
LABEL_40:
  if (v29)
  {
    v26 = result;
    operator delete(v29);
    result = v26;
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CA983E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveCircuit(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*(a2 + 15) == 15)
  {
    v5 = *(a2 + 6);
    v6 = v5;
    v7 = v5;
    goto LABEL_18;
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v9 = *(a2 + 1);
  if (v9)
  {
    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(*(v9 & 0xFFFFFFFFFFFFFFFELL));
    *(a2 + 6) = v6;
    if (*(a2 + 15) == 15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v9);
    *(a2 + 6) = v6;
    if (*(a2 + 15) == 15)
    {
LABEL_9:
      v5 = v6;
      v7 = v6;
      goto LABEL_18;
    }
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v10 = *(a2 + 1);
  if (v10)
  {
    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(*(v10 & 0xFFFFFFFFFFFFFFFELL));
    *(a2 + 6) = v5;
    if (*(a2 + 15) == 15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v10);
    *(a2 + 6) = v5;
    if (*(a2 + 15) == 15)
    {
LABEL_13:
      v7 = v5;
      goto LABEL_18;
    }
  }

  operations_research::sat::ConstraintProto::clear_constraint(a2);
  *(a2 + 15) = 15;
  v11 = *(a2 + 1);
  if (v11)
  {
    v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  v7 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(v11);
  *(a2 + 6) = v7;
LABEL_18:
  operations_research::sat::ReindexArcs<google::protobuf::RepeatedField<int>>(v5 + 16, v7 + 40, 0);
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v12 = *(v6 + 64);
  v125 = v6;
  v127 = v12;
  if (v12 < 1)
  {
    v121 = 0;
    LODWORD(v2) = 0;
  }

  else
  {
    v13 = 0;
    LODWORD(v2) = 0;
    do
    {
      *__p = *(*(v6 + 72) + 4 * v13);
      v14 = *(*(v6 + 24) + 4 * v13);
      v15 = *(*(v6 + 48) + 4 * v13);
      if (v14 <= v15)
      {
        v16 = *(*(v6 + 48) + 4 * v13);
      }

      else
      {
        v16 = *(*(v6 + 24) + 4 * v13);
      }

      v17 = v16 + 1;
      if (v2 <= v16 + 1)
      {
        v2 = (v16 + 1);
      }

      else
      {
        v2 = v2;
      }

      v18 = v139;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v139 - v138);
      if (v19 <= v16)
      {
        v20 = v17;
        if (v17 <= v19)
        {
          if (v17 < v19)
          {
            v21 = &v138[3 * v17];
            if (v139 != v21)
            {
              v22 = v139;
              do
              {
                v24 = *(v22 - 3);
                v22 -= 3;
                v23 = v24;
                if (v24)
                {
                  *(v18 - 2) = v23;
                  operator delete(v23);
                }

                v18 = v22;
              }

              while (v22 != v21);
            }

            v139 = v21;
            v6 = v125;
            v12 = v127;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v138, v17 - v19);
        }

        v25 = v136;
        v26 = 0xAAAAAAAAAAAAAAABLL * (v136 - v135);
        if (v20 <= v26)
        {
          if (v20 < v26)
          {
            v27 = &v135[3 * v20];
            if (v136 != v27)
            {
              v28 = v136;
              do
              {
                v30 = *(v28 - 3);
                v28 -= 3;
                v29 = v30;
                if (v30)
                {
                  *(v25 - 2) = v29;
                  operator delete(v29);
                }

                v25 = v28;
              }

              while (v28 != v27);
            }

            v136 = v27;
            v6 = v125;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v135, v20 - v26);
        }
      }

      std::vector<int>::push_back[abi:ne200100](&v138[3 * v15], __p);
      std::vector<int>::push_back[abi:ne200100](&v135[3 * v14], __p);
      ++v13;
    }

    while (v13 != v12);
    if (v2 < 1)
    {
      v121 = 0;
    }

    else
    {
      v34 = v135 + 1;
      v35 = v138 + 1;
      v36 = v2;
      do
      {
        if (*(v35 - 1) == *v35 || *(v34 - 1) == *v34)
        {
          LOBYTE(v2) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v31, v32, v33);
          goto LABEL_98;
        }

        v34 += 3;
        v35 += 3;
        --v36;
      }

      while (v36);
      v121 = 1;
    }
  }

  v128 = 0;
  v37 = v138;
  v38 = v139;
  if (v138 != v139)
  {
    do
    {
      v39 = *v37;
      v40 = v37[1];
      if (v40 - *v37 == 4)
      {
        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v39))
        {
          if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), **v37) & 1) == 0)
          {
LABEL_97:
            LOBYTE(v2) = 1;
            goto LABEL_98;
          }

          ++v128;
        }
      }

      else
      {
        while (v39 != v40)
        {
          v41 = *v39;
          if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v39))
          {
            v43 = *v37;
            v42 = v37[1];
            while (v43 != v42)
            {
              v44 = *v43;
              if (*v43 != v41)
              {
                if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v43))
                {
                  v45 = *(this + 1);
                  operator new();
                }

                if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v44))
                {
                  goto LABEL_97;
                }
              }

              ++v43;
            }

            v12 = v127;
            break;
          }

          ++v39;
        }
      }

      v37 += 3;
    }

    while (v37 != v38);
  }

  v46 = v135;
  v47 = v136;
LABEL_76:
  while (v46 != v47)
  {
    v48 = *v46;
    v49 = v46[1];
    if (v49 - *v46 == 4)
    {
      if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v48))
      {
        if (!operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), **v46))
        {
          goto LABEL_97;
        }

        ++v128;
      }
    }

    else
    {
      while (v48 != v49)
      {
        v50 = *v48;
        if (operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), *v48))
        {
          v51 = *v46;
          v52 = v46[1];
          if (*v46 == v52)
          {
            v12 = v127;
            v46 += 3;
            goto LABEL_76;
          }

          while (1)
          {
            v53 = *v51;
            if (*v51 != v50)
            {
              if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v51))
              {
                v54 = *(this + 1);
                operator new();
              }

              if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), v53))
              {
                goto LABEL_97;
              }
            }

            if (++v51 == v52)
            {
              v12 = v127;
              v46 += 3;
              goto LABEL_76;
            }
          }
        }

        ++v48;
      }
    }

    v46 += 3;
  }

  if (v128 >= 1)
  {
    v55 = *(this + 1);
    operator new();
  }

  if (v2)
  {
    operator new();
  }

  if (v12 >= 1)
  {
    v68 = 0;
    v69 = 0;
    v129 = 0;
    v70 = -1;
    while (1)
    {
      LODWORD(v2) = *(*(v6 + 72) + v68);
      if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), v2))
      {
        IsTrue = operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v2);
        v73 = *(v6 + 24);
        v74 = *(v73 + v68);
        if (IsTrue)
        {
          if (*(4 * v74) != -1)
          {
            LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
            goto LABEL_98;
          }

          v71 = *(v6 + 48);
          v75 = *(v71 + v68);
          *(4 * v74) = v75;
          v74 = *(v73 + v68);
          if (v74 != v75)
          {
            v70 = *(v73 + v68);
          }

          ++v69;
        }

        else
        {
          v71 = *(v6 + 48);
        }

        ++*(4 * v74);
        ++*(4 * *(v71 + v68));
        *(v73 + 4 * v129) = *(v73 + v68);
        *(v71 + 4 * v129) = *(v71 + v68);
        *(*(v6 + 72) + 4 * v129++) = v2;
      }

      v68 += 4;
      if (4 * v12 == v68)
      {
        goto LABEL_126;
      }
    }
  }

  v129 = 0;
  v69 = 0;
  v70 = -1;
LABEL_126:
  if (v121)
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    while (1)
    {
      v79 = *v78++;
      if (!v79 || !*v77)
      {
        break;
      }

      ++v77;
      if (!--v76)
      {
        goto LABEL_131;
      }
    }

    LOBYTE(v2) = operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(*(this + 1), &byte_23CE7F131, 0);
    goto LABEL_98;
  }

LABEL_131:
  if (v70 == -1)
  {
    if (v69 == v129)
    {
      v89 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "circuit: empty circuit.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v89, __p, 1, v90, v91);
      v92 = a2;
      if (v134 < 0)
      {
        operator delete(*__p);
        v92 = a2;
      }

      operations_research::sat::ConstraintProto::Clear(v92);
      goto LABEL_207;
    }

LABEL_165:
    if (v121)
    {
      v97 = 0;
      while (1)
      {
        v126 = v97;
        v98 = 24 * v97;
        v99 = &v138[3 * v97];
        v100 = v135;
        v101 = *v99;
        v102 = v99[1];
        if (*v99 != v102)
        {
          v122 = v135;
          v124 = 24 * v97;
          while (1)
          {
            v103 = *v101;
            if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *v101))
            {
              break;
            }

            LODWORD(v12) = v127;
            if (++v101 == v102)
            {
              goto LABEL_177;
            }
          }

          if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v103))
          {
            operator new();
          }

          LODWORD(v12) = v127;
LABEL_177:
          v100 = v122;
          v98 = v124;
        }

        v104 = *(v100 + v98);
        v105 = *(v100 + v98 + 8);
        if (v104 == v105)
        {
          goto LABEL_169;
        }

        v106 = 0;
        v107 = 0;
        while (1)
        {
          v109 = *v104;
          if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *v104))
          {
            break;
          }

          v108 = v107;
LABEL_181:
          LODWORD(v12) = v127;
          ++v104;
          v107 = v108;
          if (v104 == v105)
          {
            goto LABEL_195;
          }
        }

        if (!operations_research::sat::PresolveContext::LiteralIsTrue(*(this + 1), v109))
        {
          break;
        }

        v108 = v107;
        v106 = v107;
        LODWORD(v12) = v127;
LABEL_195:
        if (v106 - v108 == 8)
        {
          if ((v108[1] ^ *v108) != 0xFFFFFFFF)
          {
            v117 = *(this + 1);
            v134 = 17;
            strcpy(__p, "circuit: degree 2");
            operations_research::sat::PresolveContext::UpdateRuleStats(v117, __p, 1, v110, v111);
            if (v134 < 0)
            {
              operator delete(*__p);
            }

            operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(*(this + 1), *v108, ~v108[1]);
          }

          operator delete(v108);
        }

LABEL_169:
        v97 = v126 + 1;
        if (v126 == -1)
        {
          goto LABEL_200;
        }
      }

      v112 = &v106[-v107];
      v113 = &v106[-v107] >> 2;
      v114 = v113 + 1;
      if ((v113 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v107 >> 1 > v114)
      {
        v114 = -v107 >> 1;
      }

      if (-v107 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v115 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v115 = v114;
      }

      if (v115)
      {
        if (!(v115 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v108 = 0;
      v116 = (4 * v113);
      *v116 = v109;
      v106 = (v116 + 1);
      memcpy(0, v107, v112);
      goto LABEL_181;
    }

LABEL_200:
    if (v129 >= v12)
    {
      LOBYTE(v2) = 0;
      goto LABEL_98;
    }

    if (*(v6 + 16) <= v129)
    {
      if (*(v6 + 40) <= v129)
      {
LABEL_203:
        if (*(v6 + 64) <= v129)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }
    }

    else
    {
      *(v6 + 16) = v129;
      if (*(v6 + 40) <= v129)
      {
        goto LABEL_203;
      }
    }

    *(v6 + 40) = v129;
    if (*(v6 + 64) <= v129)
    {
LABEL_205:
      v118 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "circuit: removed false arcs.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v118, __p, 1, v119, v120);
      if (v134 < 0)
      {
        operator delete(*__p);
      }

LABEL_207:
      LOBYTE(v2) = 1;
      goto LABEL_98;
    }

LABEL_204:
    *(v6 + 64) = v129;
    goto LABEL_205;
  }

  LOBYTE(v132) = 0;
  std::vector<BOOL>::vector(__p, 0);
  v80 = *__p;
  v81 = v70;
  while (1)
  {
    v82 = v81 >> 6;
    v83 = *(v80 + 8 * v82);
    if ((v83 & (1 << v81)) != 0)
    {
      break;
    }

    *(v80 + 8 * v82) = v83 | (1 << v81);
    v81 = *(4 * v81);
    if (v81 == -1)
    {
      v81 = -1;
      break;
    }
  }

  if (v81 == v70)
  {
    LOBYTE(v130[0]) = 0;
    std::vector<BOOL>::vector(&v132, 0);
    if (v12 >= 1)
    {
      for (i = 0; 4 * v12 != i; i += 4)
      {
        v88 = *(*(v6 + 24) + i);
        if (((1 << v88) & *(*__p + 8 * (v88 >> 6))) == 0)
        {
          if (v88 == *(*(v6 + 48) + i))
          {
            *(v132 + (v88 >> 6)) |= 1 << v88;
            if ((operations_research::sat::PresolveContext::SetLiteralToTrue(*(this + 1), *(*(v6 + 72) + i)) & 1) == 0)
            {
              goto LABEL_145;
            }
          }

          else if (!operations_research::sat::PresolveContext::SetLiteralToFalse(*(this + 1), *(*(v6 + 72) + i)))
          {
LABEL_145:
            LOBYTE(v2) = 1;
            goto LABEL_160;
          }
        }
      }
    }

    if (v121)
    {
      v93 = 0;
      while ((*(*__p + 8 * (v93 >> 6)) & (1 << v93)) != 0 || (*(v132 + (v93 >> 6)) & (1 << v93)) != 0)
      {
        if (!++v93)
        {
          goto LABEL_157;
        }
      }

      LOBYTE(v2) = operations_research::sat::CpModelPresolver::MarkConstraintAsFalse(this, a2, v84, v85, v86);
      v6 = v125;
      LODWORD(v12) = v127;
    }

    else
    {
LABEL_157:
      v94 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v130, "circuit: fully specified.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v94, v130, 1, v95, v96);
      if (v131 < 0)
      {
        operator delete(v130[0]);
      }

      operations_research::sat::ConstraintProto::Clear(a2);
      LOBYTE(v2) = 1;
    }

LABEL_160:
    if (v132)
    {
      operator delete(v132);
    }
  }

  if (*__p)
  {
    operator delete(*__p);
  }

  if (v81 != v70)
  {
    goto LABEL_165;
  }

LABEL_98:
  v56 = v135;
  if (v135)
  {
    v57 = v136;
    v58 = v135;
    if (v136 != v135)
    {
      v59 = v136;
      do
      {
        v61 = *(v59 - 3);
        v59 -= 3;
        v60 = v61;
        if (v61)
        {
          *(v57 - 2) = v60;
          operator delete(v60);
        }

        v57 = v59;
      }

      while (v59 != v56);
      v58 = v135;
    }

    v136 = v56;
    operator delete(v58);
  }

  v62 = v138;
  if (v138)
  {
    v63 = v139;
    v64 = v138;
    if (v139 != v138)
    {
      v65 = v139;
      do
      {
        v67 = *(v65 - 3);
        v65 -= 3;
        v66 = v67;
        if (v67)
        {
          *(v63 - 2) = v66;
          operator delete(v66);
        }

        v63 = v65;
      }

      while (v65 != v62);
      v64 = v138;
    }

    v139 = v62;
    operator delete(v64);
  }

  return v2 & 1;
}

void sub_23CA9937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a28;
    if (!a28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v34 = a28;
    if (!a28)
    {
LABEL_7:
      if (a11)
      {
        operator delete(a11);
        if (!a16)
        {
LABEL_9:
          if (!a9)
          {
LABEL_14:
            std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 136));
            std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 112));
            _Unwind_Resume(a1);
          }

LABEL_13:
          operator delete(a9);
          std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 136));
          std::vector<std::vector<int>>::~vector[abi:ne200100]((v33 - 112));
          _Unwind_Resume(a1);
        }
      }

      else if (!a16)
      {
        goto LABEL_9;
      }

      operator delete(a16);
      if (!a9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  operator delete(v34);
  goto LABEL_7;
}

uint64_t operations_research::sat::ReindexArcs<google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v11[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::EmptyNode(void)::empty_node;
  v12 = 0;
  if (v3 >= 1)
  {
    v5 = *(a1 + 8);
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

void sub_23CA99968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a4 >= 2)
  {
    operator delete((a6 - (a5 & 1) - 8));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>>::clear(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t operations_research::sat::CpModelPresolver::PresolveAutomaton(operations_research::sat::PresolveContext **this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(this[1] + 416) & 1) == 0 && !*(a2 + 4))
  {
    if (*(a2 + 15) == 17)
    {
      v5 = *(a2 + 6);
      if (!*(v5 + 112))
      {
        return 0;
      }
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(a2);
      *(a2 + 15) = 17;
      v6 = *(a2 + 1);
      if (v6)
      {
        v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(*(v6 & 0xFFFFFFFFFFFFFFFELL));
        *(a2 + 6) = v5;
        if (!*(v5 + 112))
        {
          return 0;
        }
      }

      else
      {
        v5 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(v6);
        *(a2 + 6) = v5;
        if (!*(v5 + 112))
        {
          return 0;
        }
      }
    }

    if (*(v5 + 88))
    {
      v7 = &operations_research::sat::_AutomatonConstraintProto_default_instance_;
      if (*(a2 + 15) == 17)
      {
        v7 = v5;
      }

      operations_research::sat::PresolveContext::GetAffineRelation(this[1], *v7[15], &v8);
      operator new();
    }
  }

  return 0;
}

void sub_23CA9A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a24);
  }

  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100](&a27);
  std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::~vector[abi:ne200100]((v27 - 112));
  if (a10)
  {
    operator delete(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CpModelPresolver::PresolveReservoir(operations_research::sat::CpModelPresolver *this, operations_research::sat::ConstraintProto *a2)
{
  if ((*(*(this + 1) + 416) & 1) != 0 || *(a2 + 4))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (*(a2 + 15) == 24)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 24;
    v7 = *(a2 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::ReservoirConstraintProto>(v7);
    v6 = v8;
    *(a2 + 6) = v8;
  }

  v9 = *(v6 + 16);
  if (v9)
  {
    v10 = (v9 + 7);
  }

  else
  {
    v10 = (v6 + 16);
  }

  v11 = *(v6 + 24);
  if (v11)
  {
    v3 = 0;
    v12 = 8 * v11;
    do
    {
      v13 = *v10++;
      v3 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v13);
      v12 -= 8;
    }

    while (v12);
  }

  else
  {
    v3 = 0;
  }

  v15 = (v6 + 64);
  v14 = *(v6 + 64);
  if (v14)
  {
    v16 = (v14 + 7);
  }

  else
  {
    v16 = (v6 + 64);
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      v19 = *v16++;
      v3 |= operations_research::sat::PresolveContext::CanonicalizeLinearExpression(*(this + 1), *(a2 + 3), *(a2 + 4), v19);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = (v6 + 40);
  if (*(v6 + 40))
  {
    LODWORD(v21) = *(v6 + 72);
    if (v21 < 1)
    {
      goto LABEL_91;
    }

    goto LABEL_33;
  }

  TrueLiteral = operations_research::sat::PresolveContext::GetTrueLiteral(*(this + 1));
  if (*(v6 + 24) >= 1)
  {
    v23 = 0;
    v24 = *(v6 + 40);
    v25 = *(v6 + 44);
    do
    {
      if (v24 == v25)
      {
        v27 = TrueLiteral;
        google::protobuf::RepeatedField<int>::Grow(v6 + 40, v24, (v24 + 1));
        TrueLiteral = v27;
        LODWORD(v24) = *(v6 + 40);
        v25 = *(v6 + 44);
      }

      v26 = *(v6 + 48);
      *(v6 + 40) = v24 + 1;
      *(v26 + 4 * v24) = TrueLiteral;
      ++v23;
      v24 = (v24 + 1);
    }

    while (v23 < *(v6 + 24));
  }

  LOBYTE(v3) = 1;
  LODWORD(v21) = *(v6 + 72);
  if (v21 >= 1)
  {
LABEL_33:
    v28 = 0;
    v29 = 0;
    v30 = 8;
    do
    {
      if (*v15)
      {
        v31 = (*v15 + v30 - 1);
      }

      else
      {
        v31 = (v6 + 64);
      }

      if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v31) && ((*v15 & 1) != 0 ? (v32 = (*v15 + v30 - 1)) : (v32 = (v6 + 64)), !operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v32)) || operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *(*(v6 + 48) + 4 * v28)))
      {
        ++v29;
      }

      ++v28;
      v21 = *(v6 + 72);
      v30 += 8;
    }

    while (v28 < v21);
    if (v29 >= 1)
    {
      if (v21 < 1)
      {
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 8;
        do
        {
          if (*v15)
          {
            v37 = (*v15 + v36 - 1);
          }

          else
          {
            v37 = (v6 + 64);
          }

          if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v37) || ((*v15 & 1) != 0 ? (v38 = (*v15 + v36 - 1)) : (v38 = (v6 + 64)), operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v38)))
          {
            if (!operations_research::sat::PresolveContext::LiteralIsFalse(*(this + 1), *(*(v6 + 48) + 4 * v34)))
            {
              v39 = *(v6 + 64);
              v40 = 8 * v35;
              v41 = v39 - 1 + v40;
              if (v39)
              {
                v42 = (v39 - 1 + v36);
              }

              else
              {
                v42 = (v6 + 64);
              }

              v43 = *v42;
              v44 = (v41 + 8);
              if ((*(v6 + 64) & 1) == 0)
              {
                v44 = (v6 + 64);
              }

              operations_research::sat::LinearExpressionProto::CopyFrom(*v44, v43);
              v45 = *(v6 + 16);
              v46 = v45 - 1 + v40;
              if (v45)
              {
                v47 = (v45 - 1 + v36);
              }

              else
              {
                v47 = (v6 + 16);
              }

              v48 = *v47;
              v49 = (v46 + 8);
              if ((*(v6 + 16) & 1) == 0)
              {
                v49 = (v6 + 16);
              }

              operations_research::sat::LinearExpressionProto::CopyFrom(*v49, v48);
              *(*(v6 + 48) + 4 * v35++) = *(*(v6 + 48) + 4 * v34);
            }
          }

          ++v34;
          v21 = *(v6 + 72);
          v36 += 8;
        }

        while (v34 < v21);
      }

      if (*v15)
      {
        v50 = *v15 + 7;
      }

      else
      {
        v50 = v6 + 64;
      }

      v51 = v21 - v35;
      if (v21 - v35 >= 1)
      {
        if (!*(v6 + 80))
        {
          v52 = (v50 + 8 * v35);
          v53 = (v21 - v35);
          do
          {
            v54 = *v52++;
            google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v54, v33);
            --v53;
          }

          while (v53);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v6 + 64), v35, v51);
      }

      v55 = *(v6 + 16);
      if (v55)
      {
        v56 = v55 + 7;
      }

      else
      {
        v56 = v6 + 16;
      }

      v57 = *(v6 + 24) - v35;
      if (v57 >= 1)
      {
        if (!*(v6 + 32))
        {
          v58 = (v56 + 8 * v35);
          v59 = (*(v6 + 24) - v35);
          do
          {
            v60 = *v58++;
            google::protobuf::internal::InternalOutOfLineDeleteMessageLite(v60, v33);
            --v59;
          }

          while (v59);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::CloseGap((v6 + 16), v35, v57);
      }

      if (*v20 > v35)
      {
        *v20 = v35;
      }

      v61 = *(this + 1);
      operator new();
    }
  }

LABEL_91:
  if (*v15)
  {
    v62 = (*v15 + 7);
  }

  else
  {
    v62 = (v6 + 64);
  }

  if (!v21)
  {
    v153 = (v6 + 16);
LABEL_122:
    v67 = 0;
    goto LABEL_123;
  }

  v63 = 8 * v21;
  do
  {
    if (!operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v62))
    {
      return v3 & 1;
    }

    ++v62;
    v63 -= 8;
  }

  while (v63);
  v153 = (v6 + 16);
  v64 = *(v6 + 72);
  if (!v64)
  {
    goto LABEL_122;
  }

  if (*v15)
  {
    v65 = (*v15 + 7);
  }

  else
  {
    v65 = (v6 + 64);
  }

  v66 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v65);
  if (v66 >= 0)
  {
    v67 = v66;
  }

  else
  {
    v67 = -v66;
  }

  if (v64 >= 1)
  {
    v155 = v64;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v156 = 0;
    v154 = 0;
    v71 = v67;
    while (1)
    {
      if (*v15)
      {
        v72 = (*v15 + 8 * v68 + 7);
      }

      else
      {
        v72 = (v6 + 64);
      }

      v73 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v72);
      if (v73)
      {
        if (v73 >= 0)
        {
          v74 = v73;
        }

        else
        {
          v74 = -v73;
        }

        do
        {
          v67 = v74;
          v74 = v71 % v74;
          v71 = v67;
        }

        while (v74);
        if (v73 < 1)
        {
          goto LABEL_119;
        }

        ++v154;
        v70 += v73;
        ++v68;
        v71 = v67;
        if (v68 == v155)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v67 = v71;
LABEL_119:
        ++v156;
        v69 += v73;
        ++v68;
        v71 = v67;
        if (v68 == v155)
        {
          goto LABEL_124;
        }
      }
    }
  }

LABEL_123:
  v154 = 0;
  v156 = 0;
  v70 = 0;
  v69 = 0;
LABEL_124:
  v76 = *(v6 + 88);
  v75 = *(v6 + 96);
  if (v69 >= v76 && v70 <= v75)
  {
    v77 = *(this + 1);
    operator new();
  }

  if (v69 > v75 || v70 < v76)
  {
    v123 = *(this + 1);
    operator new();
  }

  if (v69 > v76)
  {
    *(v6 + 88) = v69;
    v78 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: increase min_level to reachable value");
    operations_research::sat::PresolveContext::UpdateRuleStats(v78, &__p, 1, v79, v80);
    if (SHIBYTE(v163[1]) < 0)
    {
      operator delete(__p);
    }

    v75 = *(v6 + 96);
  }

  if (v70 < v75)
  {
    *(v6 + 96) = v70;
    v81 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: reduce max_level to reachable value");
    operations_research::sat::PresolveContext::UpdateRuleStats(v81, &__p, 1, v82, v83);
    if (SHIBYTE(v163[1]) < 0)
    {
      operator delete(__p);
    }
  }

  v84 = *(v6 + 88);
  if (v84 >= 1 || (*(v6 + 96) & 0x8000000000000000) != 0 || v154 && v156)
  {
    if (v67 > 1)
    {
      if (*(v6 + 72) >= 1)
      {
        v85 = 0;
        v86 = *v15;
        v87 = 8;
        do
        {
          if (v86)
          {
            v88 = (v86 + v87 - 1);
          }

          else
          {
            v88 = (v6 + 64);
          }

          v89 = *v88;
          *(v89 + 8) = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v88) / v67;
          v86 = *(v6 + 64);
          v90 = (v86 + v87 - 1);
          if ((v86 & 1) == 0)
          {
            v90 = (v6 + 64);
          }

          v91 = *v90;
          *(v91 + 16) = 0;
          *(v91 + 40) = 0;
          ++v85;
          v87 += 8;
        }

        while (v85 < *(v6 + 72));
        v84 = *(v6 + 88);
      }

      operations_research::Domain::Domain(v160, v84, *(v6 + 96));
      operations_research::Domain::InverseMultiplicationBy(v160, v67, &__p);
      if (v160[0])
      {
        operator delete(v160[1]);
      }

      *(v6 + 88) = operations_research::Domain::Min(&__p);
      *(v6 + 96) = operations_research::Domain::Max(&__p);
      v92 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(v160, "reservoir: simplify level_changes and levels by gcd.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v92, v160, 1, v93, v94);
      if (SBYTE7(v161) < 0)
      {
        operator delete(v160[0]);
      }

      if (__p)
      {
        operator delete(v163[0]);
      }
    }

    if (v154 == 1 && v156 >= 1)
    {
      v95 = *(this + 1);
      std::string::basic_string[abi:ne200100]<0>(&__p, "TODO reservoir: one producer, multiple consumers.");
      operations_research::sat::PresolveContext::UpdateRuleStats(v95, &__p, 1, v96, v97);
      if (SHIBYTE(v163[1]) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v163[0] = 0;
    v163[1] = &unk_23CE31C20;
    if (*(v6 + 72) >= 1)
    {
      v98 = 0;
      do
      {
        if (*v153)
        {
          v99 = (*v153 + 8 * v98 + 7);
        }

        else
        {
          v99 = v153;
        }

        v100 = *v99;
        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), *v99))
        {
          v101 = 0x80000000;
        }

        else
        {
          v101 = **(v100 + 3);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v100))
        {
          v102 = 0;
        }

        else
        {
          v102 = **(v100 + 6);
        }

        if (operations_research::sat::PresolveContext::IsFixed(*(this + 1), v100))
        {
          v103 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), v100);
        }

        else
        {
          v103 = *(v100 + 8);
        }

        v104 = 0;
        v105 = *(*(v6 + 48) + 4 * v98);
        LODWORD(v160[0]) = v101;
        v160[1] = v102;
        *&v161 = v103;
        DWORD2(v161) = v105;
        _X10 = v163[1];
        __asm { PRFM            #4, [X10] }

        v111 = &v102[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v101) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v101))];
        v112 = v103 + (((v111 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v111));
        v113 = (((v112 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v112)) + v105;
        v114 = ((v113 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v113);
        v115 = vdup_n_s8(v114 & 0x7F);
        v116 = ((v114 >> 7) ^ (v163[1] >> 12)) & __p;
        v117 = *(v163[1] + v116);
        v118 = vceq_s8(v117, v115);
        if (!v118)
        {
          goto LABEL_183;
        }

        do
        {
LABEL_175:
          v119 = v164 + 32 * ((v116 + (__clz(__rbit64(v118)) >> 3)) & __p);
          _ZF = *v119 == v101 && *(v119 + 8) == v102;
          if (_ZF && *(v119 + 16) == v103 && *(v119 + 24) == v105)
          {
            v124 = *(this + 1);
            operator new();
          }

          v118 &= ((v118 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v118);
LABEL_183:
        while (!*&vceq_s8(v117, 0x8080808080808080))
        {
          v104 += 8;
          v116 = (v104 + v116) & __p;
          v117 = *(v163[1] + v116);
          v118 = vceq_s8(v117, v115);
          if (v118)
          {
            goto LABEL_175;
          }
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,long long,int>>(&__p, v160, &v157);
        if (v159 == 1)
        {
          v121 = v158;
          v122 = v161;
          *v158 = *v160;
          v121[1] = v122;
        }

        ++v98;
      }

      while (v98 < *(v6 + 72));
      if (__p)
      {
        operator delete(v163[1] - (v163[0] & 1) - 8);
      }
    }
  }

  else
  {
    v125 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v126 = operations_research::sat::ConstraintProto::mutable_linear(v125);
    if (*(v6 + 72) < 1)
    {
      v128 = 0;
    }

    else
    {
      v127 = 0;
      v128 = 0;
      v129 = 8;
      do
      {
        while (1)
        {
          v130 = *(v6 + 64);
          v131 = ((v130 & 1) != 0 ? v130 + v129 - 1 : v6 + 64);
          v132 = operations_research::sat::PresolveContext::FixedValue(*(this + 1), *v131);
          v133 = *(*(v6 + 48) + 4 * v127);
          if (v133 < 0)
          {
            break;
          }

          v134 = *(v126 + 16);
          v135 = v134;
          if (v134 == HIDWORD(v134))
          {
            v146 = v132;
            google::protobuf::RepeatedField<int>::Grow(v126 + 16, HIDWORD(v134), (HIDWORD(v134) + 1));
            v132 = v146;
            v135 = *(v126 + 16);
          }

          v136 = *(v126 + 24);
          *(v126 + 16) = v135 + 1;
          *(v136 + 4 * v135) = v133;
          v138 = *(v126 + 40);
          v137 = *(v126 + 44);
          if (v138 == v137)
          {
            v147 = v132;
            google::protobuf::RepeatedField<long long>::Grow(v126 + 40, v137);
            v132 = v147;
            v138 = *(v126 + 40);
          }

          v139 = *(v126 + 48);
          *(v126 + 40) = v138 + 1;
          *(v139 + 8 * v138) = v132;
          ++v127;
          v129 += 8;
          if (v127 >= *(v6 + 72))
          {
            goto LABEL_216;
          }
        }

        v140 = *(v126 + 16);
        v141 = v140;
        if (v140 == HIDWORD(v140))
        {
          v148 = v132;
          google::protobuf::RepeatedField<int>::Grow(v126 + 16, HIDWORD(v140), (HIDWORD(v140) + 1));
          v132 = v148;
          v141 = *(v126 + 16);
        }

        v142 = *(v126 + 24);
        *(v126 + 16) = v141 + 1;
        *(v142 + 4 * v141) = ~v133;
        v144 = *(v126 + 40);
        v143 = *(v126 + 44);
        if (v144 == v143)
        {
          v149 = v132;
          google::protobuf::RepeatedField<long long>::Grow(v126 + 40, v143);
          v132 = v149;
          v144 = *(v126 + 40);
        }

        v145 = *(v126 + 48);
        *(v126 + 40) = v144 + 1;
        *(v145 + 8 * v144) = -v132;
        v128 += v132;
        ++v127;
        v129 += 8;
      }

      while (v127 < *(v6 + 72));
    }

LABEL_216:
    operations_research::sat::LinearConstraintProto::add_domain(v126, *(v6 + 88) - v128);
    operations_research::sat::LinearConstraintProto::add_domain(v126, *(v6 + 96) - v128);
    v150 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "reservoir: converted to linear");
    operations_research::sat::PresolveContext::UpdateRuleStats(v150, &__p, 1, v151, v152);
    if (SHIBYTE(v163[1]) < 0)
    {
      operator delete(__p);
    }

    operations_research::sat::ConstraintProto::Clear(a2);
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

void sub_23CA9B0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ConvertToBoolAnd(operations_research::sat::CpModelPresolver *this)
{
  v28 = xmmword_23CE306D0;
  v2 = *(this + 1);
  v3 = *(v2->__begin_ + 14);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 8;
    while (1)
    {
      v8 = **(this + 1);
      v10 = *(v8 + 48);
      v9 = (v8 + 48);
      v11 = v10 + v7 - 1;
      if (v10)
      {
        v9 = v11;
      }

      v12 = *v9;
      if (*(v12 + 16))
      {
        goto LABEL_4;
      }

      v13 = *(v12 + 60);
      if (v13 == 26)
      {
        v19 = *(v12 + 48);
        if (*(v19 + 16) != 2)
        {
          goto LABEL_4;
        }

        if (v5 >= v6)
        {
          v15 = v5;
          v16 = v5 >> 2;
          v20 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
LABEL_43:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v6 >> 1 > v20)
          {
            v20 = v6 >> 1;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v20;
          }

          if (v18)
          {
            if (!(v18 >> 62))
            {
              operator new();
            }

LABEL_44:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_4;
        }

        v14 = *(v12 + 48);
        if (*(v14 + 16) != 2)
        {
          goto LABEL_4;
        }

        if (v5 >= v6)
        {
          v15 = v5;
          v16 = v5 >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            goto LABEL_43;
          }

          if (v6 >> 1 > v17)
          {
            v17 = v6 >> 1;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (!(v18 >> 62))
            {
              operator new();
            }

            goto LABEL_44;
          }

LABEL_32:
          v21 = (4 * v16);
          v6 = 4 * v18;
          *v21 = v4;
          v5 = (v21 + 1);
          memcpy(0, 0, v15);
          goto LABEL_4;
        }
      }

      *v5 = v4;
      v5 += 4;
LABEL_4:
      ++v4;
      v7 += 8;
      if (v3 == v4)
      {
        v2 = *(this + 1);
        goto LABEL_35;
      }
    }
  }

  v5 = 0;
LABEL_35:
  operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v2);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v23 = **(this + 1);
      v25 = *(v23 + 48);
      v24 = (v23 + 48);
      v26 = *i;
      v27 = v25 + 8 * v26 + 7;
      if (v25)
      {
        v24 = v27;
      }

      operations_research::sat::ConstraintProto::Clear(*v24);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v26);
    }
  }

  if (v28 >= 2)
  {
    operator delete((v29 - (BYTE8(v28) & 1) - 8));
  }
}

void sub_23CA9B444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    if (a9 < 2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (a9 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a11 - (a10 & 1) - 8));
  _Unwind_Resume(exception_object);
}

void *operations_research::sat::anonymous namespace::AddImplication(unsigned int a1, int a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v55 = a1;
  v6 = *a4;
  if (*a4 > 1uLL)
  {
    v22 = 0;
    _X9 = a4[2];
    __asm { PRFM            #4, [X9] }

    v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v30 = vdup_n_s8(v29 & 0x7F);
    v31 = ((_X9 >> 12) ^ (v29 >> 7)) & v6;
    v32 = *(_X9 + v31);
    v33 = vceq_s8(v32, v30);
    if (!v33)
    {
      goto LABEL_15;
    }

LABEL_13:
    while (*(a4[3] + 8 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v6)) != a1)
    {
      v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v33)
      {
LABEL_15:
        while (!*&vceq_s8(v32, 0x8080808080808080))
        {
          v22 += 8;
          v31 = (v22 + v31) & v6;
          v32 = *(_X9 + v31);
          v33 = vceq_s8(v32, v30);
          if (v33)
          {
            goto LABEL_13;
          }
        }

        v40 = 0;
        v41 = ~a2;
        __asm { PRFM            #4, [X9] }

        v43 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41));
        v44 = vdup_n_s8(v43 & 0x7F);
        v45 = ((_X9 >> 12) ^ (v43 >> 7)) & v6;
        v46 = *(_X9 + v45);
        v47 = vceq_s8(v46, v44);
        if (!v47)
        {
          goto LABEL_29;
        }

LABEL_27:
        while (*(a4[3] + 8 * ((v45 + (__clz(__rbit64(v47)) >> 3)) & v6)) != v41)
        {
          v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v47)
          {
LABEL_29:
            while (!*&vceq_s8(v46, 0x8080808080808080))
            {
              v40 += 8;
              v45 = (v40 + v45) & v6;
              v46 = *(_X9 + v45);
              v47 = vceq_s8(v46, v44);
              if (v47)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_3;
          }
        }

        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  if (a4[1] < 2uLL)
  {
    goto LABEL_3;
  }

  v34 = *(a4 + 4);
  if (v34 == a1)
  {
LABEL_19:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v55, v56);
    if (v58 == 1)
    {
      *v57 = v55;
    }

    v36 = *(a3 + 48);
    v35 = a3 + 48;
    v37 = v36 + 8 * *(v57 + 4) + 7;
    if ((v36 & 1) == 0)
    {
      v37 = v35;
    }

    v9 = *v37;
    if (*(*v37 + 60) != 4)
    {
LABEL_8:
      operations_research::sat::ConstraintProto::clear_constraint(v9);
      *(v9 + 60) = 4;
      v15 = *(v9 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v15);
      *(v9 + 48) = result;
      v17 = result + 2;
      v18 = result[2];
      v19 = HIDWORD(v18);
      v20 = v18;
      if (v18 != HIDWORD(v18))
      {
        goto LABEL_11;
      }

LABEL_25:
      v39 = result;
      google::protobuf::RepeatedField<int>::Grow(v17, v19, (v19 + 1));
      result = v39;
      v20 = *(v39 + 4);
      goto LABEL_11;
    }

LABEL_24:
    result = *(v9 + 48);
    v38 = result[2];
    v17 = result + 2;
    v19 = HIDWORD(v38);
    v20 = v38;
    if (v38 != HIDWORD(v38))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  LODWORD(v41) = ~a2;
  if (v34 != ~a2)
  {
LABEL_3:
    v7 = *(a3 + 56);
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v55, v56);
    if (v58 == 1)
    {
      *v57 = v55;
    }

    *(v57 + 4) = v7;
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v9 = v8;
    v10 = v55;
    v11 = (v8 + 16);
    v12 = *(v8 + 16);
    v13 = v12;
    if (v12 == HIDWORD(v12))
    {
      google::protobuf::RepeatedField<int>::Grow(v8 + 16, HIDWORD(v12), (HIDWORD(v12) + 1));
      v13 = *v11;
    }

    v14 = *(v9 + 24);
    *(v9 + 16) = v13 + 1;
    *(v14 + 4 * v13) = v10;
    if (*(v9 + 60) != 4)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_33:
  v54 = v41;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(a4, &v54, v56);
  if (v58 == 1)
  {
    *v57 = v54;
  }

  v49 = *(a3 + 48);
  v48 = a3 + 48;
  v50 = v49 + 8 * *(v57 + 4) + 7;
  if ((v49 & 1) == 0)
  {
    v50 = v48;
  }

  v51 = *v50;
  if (*(*v50 + 60) == 4)
  {
    result = *(v51 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v51);
    *(v51 + 60) = 4;
    v52 = *(v51 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v52);
    *(v51 + 48) = result;
  }

  v5 = ~v55;
  v17 = result + 2;
  v53 = result[2];
  v19 = HIDWORD(v53);
  v20 = v53;
  if (v53 == HIDWORD(v53))
  {
    goto LABEL_25;
  }

LABEL_11:
  v21 = result[3];
  *(result + 4) = v20 + 1;
  *(v21 + 4 * v20) = v5;
  return result;
}

void sub_23CA9C938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, operations_research::sat::PresolveTimer *a62)
{
  if (*(v62 - 225) < 0)
  {
    operator delete(*(v62 - 248));
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a17);
  operations_research::sat::PresolveTimer::~PresolveTimer(&__p);
  operations_research::sat::Model::~Model(&a52);
  std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](&a62);
  _Unwind_Resume(a1);
}

void sub_23CA9CAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  operations_research::sat::Model::~Model(&a52);
  std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](&a62);
  _Unwind_Resume(a1);
}

void sub_23CA9CC58(_Unwind_Exception *a1)
{
  std::vector<std::string>::~vector[abi:ne200100]((v2 + 96));
  std::vector<std::pair<std::string,long long>>::~vector[abi:ne200100]((v2 + 72));
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    MEMORY[0x23EED9460](v2, v1);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EED9460](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::Prober>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Prober>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Prober>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::Prober>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t std::function<void ()(operations_research::sat::Literal)>::~function(uint64_t a1)
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

operations_research::sat::PresolveTimer **std::unique_ptr<operations_research::sat::PresolveTimer>::~unique_ptr[abi:ne200100](operations_research::sat::PresolveTimer **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::PresolveTimer::~PresolveTimer(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

uint64_t operations_research::sat::CpModelPresolver::PresolvePureSatPart(operations_research::sat::CpModelPresolver *this)
{
  v114[125] = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (v1[416] & 1) != 0 || (v1[16])
  {
    v2 = 1;
    goto LABEL_4;
  }

  v5 = this;
  v6 = *(*v1 + 32);
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v109 = 0;
  v108 = 0;
  v107 = 0;
  memset(v102, 0, sizeof(v102));
  v103 = xmmword_23CE306D0;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v102);
  operations_research::TimeLimit::MergeWithGlobalTimeLimit(v7, *(v5 + 3));
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v102);
  operations_research::sat::SatSolver::SetNumVariables(v8, 0);
  v9 = **(v5 + 1);
  if (*(v9 + 14) < 1)
  {
    v2 = *(v8 + 528) ^ 1;
    goto LABEL_127;
  }

  v78 = v8;
  v10 = 0;
  v11 = 0;
  v75 = 0;
  do
  {
    v16 = *(v9 + 6);
    v15 = v9 + 48;
    v17 = v16 + 8 * v10 + 7;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v77 = *v18;
    v19 = *(*v18 + 60);
    if (v19 == 4)
    {
      v23 = *(v77 + 16);
      v24 = *(*(v77 + 48) + 16);
      if (v23 < 2 || v24 < 2)
      {
        if (!v23)
        {
          operator new();
        }

        v26 = *(v77 + 24);
LABEL_42:
        if (~*v26 <= *v26)
        {
          v33 = *v26;
        }

        operator new();
      }

      if (v24 + v24 * v23 <= 10000)
      {
        v26 = *(v77 + 24);
        goto LABEL_42;
      }

      v13 = v75 + 1;
      goto LABEL_12;
    }

    if (v19 != 3)
    {
      v12 = v19 == 0;
      v13 = v75;
      if (!v12)
      {
        v13 = v75 + 1;
      }

LABEL_12:
      v75 = v13;
      goto LABEL_13;
    }

    v20 = *(v77 + 48);
    if (*(v20 + 16))
    {
      v21 = *(v20 + 24);
      if (~*v21 <= *v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = ~*v21;
      }

      operator new();
    }

    if (*(v77 + 16))
    {
      v27 = *(v77 + 24);
      if (~*v27 <= *v27)
      {
        v28 = *v27;
      }

      else
      {
        v28 = ~*v27;
      }

      operator new();
    }

    operations_research::sat::SatSolver::AddProblemClause(v78, 0, 0, 0);
    v5 = this;
    v29 = **(this + 1);
    v31 = *(v29 + 48);
    v30 = (v29 + 48);
    v32 = v31 + 8 * v10 + 7;
    if (v31)
    {
      v30 = v32;
    }

    operations_research::sat::ConstraintProto::Clear(*v30);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(this + 1), v10);
    ++v11;
LABEL_13:
    ++v10;
    v14 = *(v5 + 1);
    v9 = *v14;
  }

  while (v10 < *(*v14 + 14));
  v2 = *(v78 + 528) ^ 1;
  if ((*(v78 + 528) & 1) != 0 || !v11)
  {
    goto LABEL_127;
  }

  memset(v101, 0, sizeof(v101));
  operations_research::sat::SatParameters::SatParameters(v96, 0, v14[49]);
  if (v98 == 1)
  {
    v99 = 0;
    v97 |= 1u;
  }

  operations_research::sat::SatPostsolver::SatPostsolver(v81, 0);
  memset(&__p, 0, sizeof(__p));
  if ((*(*(*(this + 1) + 392) + 281) & 1) == 0 && v75 == 0)
  {
    if ((operations_research::sat::LookForTrivialSatSolution(v102, 1.0, *(this + 2), v34) & 1) == 0)
    {
      goto LABEL_100;
    }

    v35 = *(v78 + 216);
    if (!*(v35 + 12))
    {
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v110, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7318);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v110);
      }

      v2 = 1;
      goto LABEL_101;
    }

    v59 = *(*(*(this + 1) + 392) + 504);
    v60 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Inprocessing>(v102);
    *(v60 + 104) = *(this + 2);
    if ((operations_research::sat::Inprocessing::PresolveLoop(v60, v59, 1uLL) & 1) == 0)
    {
      goto LABEL_100;
    }

    v61 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(v102);
    v62 = v61[1];
    if (v61[2] != v62)
    {
      v63 = v61[4];
      v64 = (v62 + 8 * (v63 / 0xAA));
      v65 = *v64 + 24 * (v63 % 0xAA);
      v66 = *(v62 + 8 * ((v61[5] + v63) / 0xAA)) + 24 * ((v61[5] + v63) % 0xAA);
      while (v65 != v66)
      {
        operations_research::sat::SatPostsolver::Add(v81, **v65, *v65, (*(v65 + 8) - *v65) >> 2);
        v65 += 24;
        if (v65 - *v64 == 4080)
        {
          v67 = v64[1];
          ++v64;
          v65 = v67;
        }
      }
    }

    operations_research::sat::ProbeAndFindEquivalentLiteral(v78, v81, 0, &__p, *(this + 2));
    if (*(v78 + 528))
    {
LABEL_100:
      v2 = 0;
      goto LABEL_101;
    }
  }

  else
  {
    v100 = 0;
    v97 |= 2u;
  }

  if (!operations_research::sat::SatSolver::ResetToLevelZero(v78))
  {
    goto LABEL_100;
  }

  v36 = *(this + 3);
  *(v36 + 112) = *(operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v102) + 112) + *(v36 + 112);
  operations_research::sat::SatPresolver::SatPresolver(v110, v81, *(this + 2));
  operations_research::sat::SatPresolver::SetNumVariables(v110, 0);
  if (__p.__begin_ != __p.__end_)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v113, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
  }

  v114[123] = *(this + 3);
  operations_research::sat::SatParameters::CopyFrom(v114, v96);
  v37 = *(v78 + 216);
  if (*(v37 + 12) >= 1)
  {
    v38 = 0;
    do
    {
      operations_research::sat::SatPostsolver::FixVariable(v81, *(*(v37 + 48) + 4 * v38++));
      v37 = *(v78 + 216);
    }

    while (v38 < *(v37 + 12));
  }

  operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(v78, v110);
  v39 = this;
  if ((operations_research::sat::SatPresolver::Presolve(v110, v101) & 1) == 0)
  {
    goto LABEL_91;
  }

  v40 = (v112 - v111) >> 3;
  if (v40 <= 0)
  {
    goto LABEL_89;
  }

  if (dword_27E25CBF0 >= 1)
  {
    v39 = this;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CpModelPresolver::PresolvePureSatPart(void)::$_1::operator() const(void)::site, dword_27E25CBF0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v79, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7381);
      v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v79, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "New variables added by the SAT presolver.", 0x29uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v79);
      v39 = this;
    }
  }

  v41 = v107;
  v42 = v108;
  while (2)
  {
    while (2)
    {
      v43 = *(**(v39 + 1) + 32);
      if (v42 >= v109)
      {
        v44 = v42 - v41;
        v45 = (v42 - v41) >> 2;
        v46 = v45 + 1;
        if ((v45 + 1) >> 62)
        {
          v108 = v42;
          v107 = v41;
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v47 = v109 - v41;
        if ((v109 - v41) >> 1 > v46)
        {
          v46 = v47 >> 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v48 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (!(v48 >> 62))
          {
            operator new();
          }

          v108 = v42;
          v107 = v41;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v45) = v43;
        v42 = (4 * v45 + 4);
        memcpy(0, v41, v44);
        v109 = 0;
        if (v41)
        {
          operator delete(v41);
        }

        v41 = 0;
      }

      else
      {
        *v42 = v43;
        v42 += 4;
      }

      v39 = this;
      v49 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((**(this + 1) + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
      v50 = v49;
      v52 = *(v49 + 16);
      v51 = *(v49 + 20);
      v53 = (v49 + 16);
      if (v52 != v51)
      {
        v54 = *(v49 + 24);
        v55 = v52 + 1;
        *(v49 + 16) = v52 + 1;
        *(v54 + 8 * v52) = 0;
        if (v52 + 1 == v51)
        {
          break;
        }

        goto LABEL_84;
      }

      google::protobuf::RepeatedField<long long>::Grow(v49 + 16, v51);
      v56 = *(v50 + 16);
      v51 = *(v50 + 20);
      v54 = *(v50 + 24);
      v55 = v56 + 1;
      *(v50 + 16) = v56 + 1;
      *(v54 + 8 * v56) = 0;
      if (v56 + 1 != v51)
      {
LABEL_84:
        *v53 = v55 + 1;
        *(v54 + 8 * v55) = 1;
        if (!--v40)
        {
          goto LABEL_88;
        }

        continue;
      }

      break;
    }

    google::protobuf::RepeatedField<long long>::Grow(v53, v51);
    v57 = *(v50 + 16);
    v58 = *(v50 + 24);
    *v53 = v57 + 1;
    *(v58 + 8 * v57) = 1;
    if (--v40)
    {
      continue;
    }

    break;
  }

LABEL_88:
  v108 = v42;
  v107 = v41;
  operations_research::sat::PresolveContext::InitializeNewDomains(*(this + 1));
LABEL_89:
  {
    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(*(v39 + 1));
    v2 = 1;
    goto LABEL_92;
  }

LABEL_91:
  v2 = 0;
LABEL_92:
  operations_research::sat::SatPresolver::~SatPresolver(v110);
LABEL_101:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  v68 = v85;
  v69 = v86;
  v88 = 0;
  v70 = v86 - v85;
  if (v70 >= 3)
  {
    do
    {
      operator delete(*v68);
      v69 = v86;
      v68 = v85 + 1;
      v85 = v68;
      v70 = v86 - v68;
    }

    while (v70 > 2);
  }

  if (v70 == 1)
  {
    v71 = 512;
LABEL_115:
    v87 = v71;
  }

  else if (v70 == 2)
  {
    v71 = 1024;
    goto LABEL_115;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    v73 = v86;
    if (v86 != v85)
    {
      do
      {
        --v73;
      }

      while (v73 != v85);
      v86 = v73;
    }
  }

  if (v84)
  {
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  operations_research::sat::SatParameters::~SatParameters(v96);
  if (v101[0])
  {
    operator delete(v101[0]);
  }

LABEL_127:
  operations_research::sat::Model::~Model(v102);
  if (v107)
  {
    operator delete(v107);
  }

LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

void sub_23CA9E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  operations_research::sat::SatPresolver::~SatPresolver(&STACK[0x558]);
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::SatPostsolver::~SatPostsolver(&a22);
  operations_research::sat::SatParameters::~SatParameters(&a42);
  if (STACK[0x4D8])
  {
    operator delete(STACK[0x4D8]);
  }

  if (v42)
  {
    operator delete(v42);
  }

  operations_research::sat::Model::~Model(&STACK[0x4F0]);
  v44 = STACK[0x540];
  if (STACK[0x540])
  {
    STACK[0x548] = v44;
    operator delete(v44);
    if (!a15)
    {
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (!a15)
  {
    goto LABEL_9;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::anonymous namespace::FixFromAssignment(unsigned int *a1, void *a2, operations_research::sat::PresolveContext *this)
{
  v3 = *a1;
  if (v3 >= 2)
  {
    v9 = 0;
    v4 = 0;
    v10 = v3 >> 1;
    while (1)
    {
      v11 = *(*a2 + 4 * v9);
      v12 = *(*(a1 + 1) + ((v9 >> 2) & 0x3FFFFFFFFFFFFFF8)) >> (2 * (v9 & 0x1Fu));
      if (v12)
      {
        if ((operations_research::sat::PresolveContext::SetLiteralToTrue(this, v11) & 1) == 0)
        {
          return v4;
        }
      }

      else if ((v12 & 2) != 0 && !operations_research::sat::PresolveContext::SetLiteralToFalse(this, v11))
      {
        return v4;
      }

      v4 = ++v9 >= v10;
      if (v9 == v10)
      {
        return v4;
      }
    }
  }

  return 1;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::Inprocessing>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::Inprocessing>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PostsolveClauses>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(uint64_t a1, operations_research::sat::SatPresolver *a2)
{
  if (*(a1 + 528) == 1)
  {
    operations_research::sat::SatSolver::ExtractClauses<operations_research::sat::SatPresolver>(&v24);
  }

  operations_research::sat::SatSolver::Backtrack(a1, 0);
  if (operations_research::sat::SatSolver::FinishPropagation(a1))
  {
    if (*(a1 + 360) < *(*(a1 + 216) + 12))
    {
      operations_research::sat::SatSolver::ProcessNewlyFixedVariables(a1);
    }

    operations_research::sat::ClauseManager::DeleteRemovedClauses(*(a1 + 32));
    operations_research::sat::SatPresolver::SetNumVariables(a2, *(a1 + 16));
    operations_research::sat::BinaryImplicationGraph::ExtractAllBinaryClauses<operations_research::sat::SatPresolver>(*(a1 + 24), a2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 280);
    for (i = *(v4 + 288); v5 != i; ++v5)
    {
      v10 = 0;
      v12 = *v5;
      v13 = *(a1 + 32);
      _X10 = v13[41];
      __asm { PRFM            #4, [X10] }

      v20 = *v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v5)));
      v21 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
      v22 = vdup_n_s8(v21 & 0x7F);
      v23 = v13[39];
      for (j = (v21 >> 7) ^ (_X10 >> 12); ; j = v10 + v7)
      {
        v7 = j & v23;
        v8 = *(_X10 + v7);
        v9 = vceq_s8(v8, v22);
        if (v9)
        {
          break;
        }

LABEL_10:
        if (vceq_s8(v8, 0x8080808080808080))
        {
          operations_research::sat::SatPresolver::AddClause(a2, v12 + 1, *v12);
          goto LABEL_13;
        }

        v10 += 8;
      }

      while (*(v13[42] + 24 * ((v7 + (__clz(__rbit64(v9)) >> 3)) & v23)) != v12)
      {
        v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      ;
    }
  }
}

void operations_research::sat::anonymous namespace::ExtractClauses<operations_research::sat::SatPresolver>(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = xmmword_23CE306D0;
  v3 = *(a2 + 328);
  if ((-1431655765 * ((*(a2 + 336) - v3) >> 3)) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (v3 + 24 * v7);
      v9 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        if (v10 - v9 != 8)
        {
          v11 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v12 = v11;
          if (*(v11 + 60) == 3)
          {
            v13 = *(v11 + 48);
            v15 = *v8;
            v14 = v8[1];
            v16 = (v14 - *v8) >> 2;
            if (*(v13 + 5) >= v16)
            {
              goto LABEL_16;
            }

            goto LABEL_13;
          }

          operations_research::sat::ConstraintProto::clear_constraint(v11);
          *(v12 + 60) = 3;
          v17 = *(v12 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v17);
          *(v12 + 48) = v13;
          v15 = *v8;
          v14 = v8[1];
          v16 = (v14 - *v8) >> 2;
          if (*(v13 + 5) < v16)
          {
LABEL_13:
            google::protobuf::RepeatedField<int>::Grow(v13 + 2, *(v13 + 4), v16);
            v15 = *v8;
            v14 = v8[1];
          }

LABEL_16:
          while (2)
          {
            if (v15 == v14)
            {
              goto LABEL_4;
            }

            v23 = *(*a1 + 4 * (*v15 >> 1));
            v24 = *(v12 + 60);
            if (*v15)
            {
              if (v24 == 3)
              {
                v18 = *(v12 + 48);
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(v12);
                *(v12 + 60) = 3;
                v27 = *(v12 + 8);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v27);
                *(v12 + 48) = v18;
              }

              v23 = ~v23;
              v28 = v18[2];
              v22 = v28;
              if (v28 == HIDWORD(v28))
              {
                google::protobuf::RepeatedField<int>::Grow(v18 + 2, HIDWORD(v28), (HIDWORD(v28) + 1));
LABEL_32:
                v22 = *(v18 + 4);
              }
            }

            else if (v24 == 3)
            {
              v18 = *(v12 + 48);
              v20 = v18[2];
              v19 = v18 + 2;
              v21 = HIDWORD(v20);
              v22 = v20;
              if (v20 == HIDWORD(v20))
              {
                goto LABEL_22;
              }
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v12);
              *(v12 + 60) = 3;
              v25 = *(v12 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v25);
              *(v12 + 48) = v18;
              v19 = v18 + 2;
              v26 = v18[2];
              v21 = HIDWORD(v26);
              v22 = v26;
              if (v26 == HIDWORD(v26))
              {
LABEL_22:
                google::protobuf::RepeatedField<int>::Grow(v19, v21, (v21 + 1));
                goto LABEL_32;
              }
            }

            v29 = v18[3];
            *(v18 + 4) = v22 + 1;
            *(v29 + 4 * v22) = v23;
            ++v15;
            continue;
          }
        }
      }

LABEL_4:
      ++v7;
      v3 = *(a2 + 328);
    }

    while (v7 < (-1431655765 * ((*(a2 + 336) - v3) >> 3)));
    if (v30 >= 2)
    {
      operator delete((v31 - (BYTE8(v30) & 1) - 8));
    }
  }
}

void sub_23CA9EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10, uint64_t a11)
{
  if (a9 >= 2)
  {
    v11 = a1;
    operator delete((a11 - (a10 & 1) - 8));
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::ExtractClauses<operations_research::sat::SatPostsolver>(void *a1, operations_research::sat::SatPostsolver *this, uint64_t a3)
{
  if (((*(this + 2) - *(this + 1)) >> 2) < 1)
  {
    return;
  }

  v6 = 0;
  do
  {
    operations_research::sat::SatPostsolver::Clause(this, v6, &v26);
    v7 = v26;
    if (v26 == v27)
    {
      goto LABEL_34;
    }

    v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((a3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v9 = v8;
    if (*(v8 + 60) == 3)
    {
      v10 = *(v8 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v8);
      *(v9 + 60) = 3;
      v11 = *(v9 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v11);
      *(v9 + 48) = v10;
    }

    v7 = v26;
    v12 = v27;
    v13 = (v27 - v26) >> 2;
    if (*(v10 + 5) < v13)
    {
      google::protobuf::RepeatedField<int>::Grow(v10 + 2, *(v10 + 4), v13);
      v7 = v26;
      v12 = v27;
      if (v26 == v27)
      {
        goto LABEL_34;
      }

LABEL_17:
      while (1)
      {
        v19 = *(*a1 + 4 * (*v7 >> 1));
        v20 = *(v9 + 60);
        if (*v7)
        {
          break;
        }

        if (v20 != 3)
        {
          operations_research::sat::ConstraintProto::clear_constraint(v9);
          *(v9 + 60) = 3;
          v21 = *(v9 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v21);
          *(v9 + 48) = v14;
          v15 = v14 + 2;
          v22 = v14[2];
          v17 = HIDWORD(v22);
          v18 = v22;
          if (v22 != HIDWORD(v22))
          {
            goto LABEL_30;
          }

LABEL_22:
          google::protobuf::RepeatedField<int>::Grow(v15, v17, (v17 + 1));
LABEL_33:
          v18 = *(v14 + 4);
          goto LABEL_30;
        }

        v14 = *(v9 + 48);
        v16 = v14[2];
        v15 = v14 + 2;
        v17 = HIDWORD(v16);
        v18 = v16;
        if (v16 == HIDWORD(v16))
        {
          goto LABEL_22;
        }

LABEL_30:
        v25 = v14[3];
        *(v14 + 4) = v18 + 1;
        *(v25 + 4 * v18) = v19;
        if (++v7 == v12)
        {
          v7 = v26;
          goto LABEL_34;
        }
      }

      if (v20 == 3)
      {
        v14 = *(v9 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v9);
        *(v9 + 60) = 3;
        v23 = *(v9 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v23);
        *(v9 + 48) = v14;
      }

      v19 = ~v19;
      v24 = v14[2];
      v18 = v24;
      if (v24 != HIDWORD(v24))
      {
        goto LABEL_30;
      }

      google::protobuf::RepeatedField<int>::Grow(v14 + 2, HIDWORD(v24), (HIDWORD(v24) + 1));
      goto LABEL_33;
    }

    if (v26 != v27)
    {
      goto LABEL_17;
    }

LABEL_34:
    if (v7)
    {
      v27 = v7;
      operator delete(v7);
    }

    ++v6;
  }

  while (v6 < ((*(this + 2) - *(this + 1)) >> 2));
}

void sub_23CA9ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    v11 = a1;
    operator delete(__p);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::SatPostsolver::~SatPostsolver(operations_research::sat::SatPostsolver *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  std::deque<int>::~deque[abi:ne200100](this + 32);
  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void operations_research::sat::CpModelPresolver::ShiftObjectiveWithExactlyOnes(operations_research::sat::CpModelPresolver *this)
{
  v2 = *(this + 1);
  if ((*(v2 + 416) & 1) == 0)
  {
    if (operations_research::sat::PresolveContext::CanonicalizeObjective(v2, 1))
    {
      v3 = *(**(this + 1) + 56);
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = 8;
        do
        {
          v6 = **(this + 1);
          v8 = *(v6 + 48);
          v7 = (v6 + 48);
          v9 = v8 + v5 - 1;
          if (v8)
          {
            v7 = v9;
          }

          v10 = *v7;
          if (!*(v10 + 16) && *(v10 + 60) == 29)
          {
            operator new();
          }

          ++v4;
          v5 += 8;
        }

        while (v3 != v4);
      }
    }
  }
}

void sub_23CA9F258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a9)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CpModelPresolver::ExpandObjective(operations_research::sat::CpModelPresolver *this)
{
  if (*(*(this + 1) + 416))
  {
    return;
  }

  v1 = this;
  strcpy(v194, "ExpandObjective");
  v195 = 271;
  v198 = *(this + 1);
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v197 = 0;
  v202 = 0;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if ((operations_research::sat::PresolveContext::CanonicalizeObjective(*(v1 + 1), 1) & 1) == 0)
  {
    goto LABEL_252;
  }

  v2 = **(v1 + 1);
  v3 = *(v2 + 56);
  v161 = *(v2 + 32);
  v191 = 0;
  v192 = 0;
  v193 = 0;
  __p = &v191;
  LOBYTE(v189) = 0;
  if (2 * v161)
  {
    if (((2 * v161) & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v169 = v1;
  if (v3 < 1)
  {
    v66 = 0;
    LODWORD(v162) = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_115;
  }

  v4 = 0;
  v5 = 0;
  v162 = 0;
  v163 = v3;
  v168 = 0;
  v6 = 0;
  do
  {
    v7 = v5;
    v8 = *(v1 + 1);
    v9 = *v8 + 48;
    if (*v9)
    {
      v9 = *v9 + 8 * v4 + 7;
    }

    v10 = *v9;
    if (*(*v9 + 16))
    {
LABEL_10:
      v5 = v7;
      goto LABEL_11;
    }

    v11 = *(v10 + 60);
    v174 = v10;
    if (v11 != 12)
    {
      v5 = v7;
      if (v11 == 29)
      {
        v12 = *(*(v10 + 48) + 16);
        ++v6;
        v168 = (v12 + v168);
        if (v12 >= 1)
        {
          v170 = v4;
          v166 = v6;
          v13 = 0;
          do
          {
            v14 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (*(v10 + 60) == 29)
            {
              v14 = *(v10 + 48);
            }

            v15 = *(v14[3] + v13);
            if (v15 < 0)
            {
              v16 = 2 * ~v15 + 1;
            }

            else
            {
              v16 = 2 * v15;
            }

            v17 = v16 ^ 1;
            if (*(4 * v17) == -1 || v12 > *(4 * v17))
            {
              *(4 * v17) = v170;
              *(4 * v17) = v12;
            }

            v18 = 0;
            v172 = v16 ^ 1;
            do
            {
              if (v13 != v18)
              {
                v20 = &operations_research::sat::_BoolArgumentProto_default_instance_;
                if (*(v10 + 60) == 29)
                {
                  v20 = *(v10 + 48);
                }

                v21 = *(v20[3] + v18);
                if (v21 < 0)
                {
                  v22 = 2 * ~v21 + 1;
                }

                else
                {
                  v22 = 2 * v21;
                }

                v23 = &v191[3 * v17];
                v25 = *(v23 + 1);
                v24 = *(v23 + 2);
                if (v25 < v24)
                {
                  *v25 = v22;
                  v19 = (v25 + 1);
                }

                else
                {
                  v26 = v5;
                  v27 = *v23;
                  v28 = v25 - *v23;
                  v29 = v28 >> 2;
                  v30 = (v28 >> 2) + 1;
                  if (v30 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v31 = v24 - v27;
                  if (v31 >> 1 > v30)
                  {
                    v30 = v31 >> 1;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v32 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  if (v32)
                  {
                    if (!(v32 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v29) = v22;
                  v19 = 4 * v29 + 4;
                  memcpy(0, v27, v28);
                  *v23 = 0;
                  *(v23 + 1) = v19;
                  *(v23 + 2) = 0;
                  if (v27)
                  {
                    operator delete(v27);
                  }

                  LODWORD(v5) = v26;
                  LODWORD(v17) = v172;
                  v10 = v174;
                }

                *(v23 + 1) = v19;
                v5 = (v5 + 1);
              }

              ++v18;
            }

            while (v12 != v18);
            ++v13;
          }

          while (v13 < v12 && v5 <= 100000000);
          v1 = v169;
          v4 = v170;
          v3 = v163;
          v6 = v166;
        }
      }

      goto LABEL_11;
    }

    v33 = *(v10 + 48);
    if (*(v33 + 64) != 2 || **(v33 + 72) != *(*(v33 + 72) + 8))
    {
      goto LABEL_10;
    }

    v167 = v6;
    v171 = v4;
    if (*(v33 + 16) < 1)
    {
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = *(v33 + 16);
      do
      {
        v38 = *(*(v33 + 24) + 4 * v34);
        v39 = *(*(v33 + 48) + 8 * v34);
        if (v39 < 1)
        {
          v40 = operations_research::sat::PresolveContext::MaxOf(v8, *(*(v33 + 24) + 4 * v34));
          v41 = operations_research::sat::PresolveContext::MinOf(v8, v38);
        }

        else
        {
          v40 = operations_research::sat::PresolveContext::MinOf(v8, *(*(v33 + 24) + 4 * v34));
          v41 = operations_research::sat::PresolveContext::MaxOf(v8, v38);
        }

        v35 += v41 * v39;
        v36 += v40 * v39;
        ++v34;
      }

      while (v37 != v34);
      v42 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      v1 = v169;
      v4 = v171;
      v3 = v163;
      v6 = v167;
      if (*(v174 + 60) != 12)
      {
        v43 = off_2810BEE58;
        v5 = v7;
        if (off_2810BEE58 >= 1)
        {
          goto LABEL_63;
        }

        goto LABEL_108;
      }
    }

    v42 = *(v174 + 48);
    v43 = *(v42 + 4);
    v5 = v7;
    if (v43 >= 1)
    {
LABEL_63:
      v44 = 0;
      v173 = 0;
      v45 = *v42[9];
      v164 = v35 - v45;
      v165 = v45 - v36;
      v46 = v162;
      v47 = v168;
      v48 = v174;
      while (1)
      {
        v49 = &operations_research::sat::_LinearConstraintProto_default_instance_;
        if (*(v48 + 60) == 12)
        {
          v49 = *(v48 + 48);
        }

        v50 = v49[6][v44];
        if (v50 >= 0)
        {
          v51 = v49[6][v44];
        }

        else
        {
          v51 = -v50;
        }

        if (v51 != 1)
        {
          goto LABEL_65;
        }

        if (v5 > 100000000)
        {
LABEL_105:
          v168 = v47;
          v162 = v46;
          v64 = v173 & 1;
          v1 = v169;
          v4 = v171;
          v3 = v163;
          v6 = v167;
          goto LABEL_109;
        }

        v52 = v5;
        v53 = *(v49[3] + v44);
        if (v50 >= 1)
        {
          v54 = (2 * v53);
        }

        else
        {
          v54 = (2 * v53) + 1;
        }

        v55 = operations_research::sat::PresolveContext::MaxOf(v169[1], v53);
        v56 = operations_research::sat::PresolveContext::MinOf(v169[1], v53);
        v57 = v55 - v56;
        if (v165 <= v55 - v56)
        {
          if (v165 >= v55 - v56)
          {
            v46 = v46;
          }

          else
          {
            v46 = (v46 + 1);
          }

          v59 = v54 ^ 1;
          v5 = v52;
          if (*(4 * (v54 ^ 1)) == -1 || v43 > *(4 * v59))
          {
            *(4 * v59) = v171;
            *(4 * v59) = v43;
          }

          v60 = 0;
          v47 = (v47 + 1);
          do
          {
            if (v44 != v60)
            {
              v61 = &operations_research::sat::_LinearConstraintProto_default_instance_;
              if (*(v174 + 60) == 12)
              {
                v61 = *(v174 + 48);
              }

              LODWORD(__p) = (v61[6][v60] < 1) | (2 * *(v61[3] + v60));
              std::vector<int>::push_back[abi:ne200100](&v191[3 * v59], &__p);
              v5 = (v5 + 1);
            }

            ++v60;
          }

          while (v43 != v60);
          v173 = 1;
          v58 = v164 < v57;
          if (v164 <= v57)
          {
LABEL_92:
            if (v58)
            {
              v46 = (v46 + 1);
            }

            else
            {
              v46 = v46;
            }

            if (*(4 * v54) == -1 || v43 > *(4 * v54))
            {
              *(4 * v54) = v171;
              *(4 * v54) = v43;
            }

            v62 = 0;
            v47 = (v47 + 1);
            v48 = v174;
            do
            {
              if (v44 != v62)
              {
                v63 = &operations_research::sat::_LinearConstraintProto_default_instance_;
                if (*(v174 + 60) == 12)
                {
                  v63 = *(v174 + 48);
                }

                LODWORD(__p) = (v63[6][v62] >= 0) | (2 * *(v63[3] + v62));
                std::vector<int>::push_back[abi:ne200100](&v191[3 * v54], &__p);
                v5 = (v5 + 1);
              }

              ++v62;
            }

            while (v43 != v62);
            v173 = 1;
            goto LABEL_65;
          }
        }

        else
        {
          v5 = v52;
          v58 = v164 < v57;
          if (v164 <= v57)
          {
            goto LABEL_92;
          }
        }

        v48 = v174;
LABEL_65:
        if (++v44 == v43)
        {
          goto LABEL_105;
        }
      }
    }

LABEL_108:
    v64 = 0;
LABEL_109:
    v6 += v64;
LABEL_11:
    ++v4;
  }

  while (v4 < v3 && v5 <= 100000000);
  if (v162 >= 1)
  {
    v65 = *(v1 + 1);
    operator new();
  }

  v66 = v5;
  v67 = v168;
  v68 = v6;
LABEL_115:
  util::graph::FastTopologicalSort<std::vector<std::vector<int>>>(&v191, &__p);
  if (__p != 1)
  {
    if (v161)
    {
      if ((v161 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v186 = 0uLL;
    v187 = 0;
    FindStronglyConnectedComponents<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>(-1431655765 * ((v192 - v191) >> 3), &v191, &v186);
    v76 = v186;
    if (v186 != *(&v186 + 1))
    {
      while (1)
      {
        v77 = *v76;
        v78 = v76[1] - *v76;
        if (v78 != 4)
        {
          break;
        }

        v76 += 3;
        if (v76 == *(&v186 + 1))
        {
          goto LABEL_148;
        }
      }

      if (v78 < 5)
      {
LABEL_147:
        v94 = v169[1];
        operator new();
      }

      v79 = *v77;
      v80 = (*v77 / 2);
      if (*v77)
      {
        v81 = 1;
      }

      else
      {
        v81 = -1;
      }

      if (v79)
      {
        v82 = -1;
      }

      else
      {
        v82 = 1;
      }

      v83 = 2;
      if (v79)
      {
        v89 = 1;
        while (1)
        {
          v90 = v77[v89];
          v91 = (v90 + (v90 >> 31)) >> 1;
          if (v90)
          {
            v92 = *(8 * v91);
            v93 = v81;
          }

          else
          {
            v92 = -*(8 * v91);
            v93 = v82;
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(v169[1], v80, v91, v93, (v92 - *(8 * v80)) * v82, 0) & 1) == 0)
          {
            break;
          }

          v89 = v83;
          v77 = *v76;
          ++v83;
          if (v89 >= v76[1] - *v76)
          {
            goto LABEL_147;
          }
        }
      }

      else
      {
        v84 = 1;
        while (1)
        {
          v85 = v77[v84];
          v86 = (v85 + (v85 >> 31)) >> 1;
          if (v85)
          {
            v87 = *(8 * v86);
            v88 = v81;
          }

          else
          {
            v87 = -*(8 * v86);
            v88 = v82;
          }

          if ((operations_research::sat::PresolveContext::StoreAffineRelation(v169[1], v80, v86, v88, (v87 + *(8 * v80)) * v82, 0) & 1) == 0)
          {
            break;
          }

          v84 = v83;
          v77 = *v76;
          ++v83;
          if (v84 >= v76[1] - *v76)
          {
            goto LABEL_147;
          }
        }
      }
    }

LABEL_148:
    v95 = v186;
    if (v186)
    {
      v96 = *(&v186 + 1);
      v97 = v186;
      if (*(&v186 + 1) != v186)
      {
        v98 = *(&v186 + 1);
        do
        {
          v100 = *(v98 - 24);
          v98 -= 24;
          v99 = v100;
          if (v100)
          {
            *(v96 - 16) = v99;
            operator delete(v99);
          }

          v96 = v98;
        }

        while (v98 != v95);
        v97 = v186;
      }

      *(&v186 + 1) = v95;
      operator delete(v97);
    }

    goto LABEL_239;
  }

  v69 = v189;
  v70 = v190;
  if (v189 == v190)
  {
    v73 = 0;
    v72 = 0;
    v74 = v162;
    goto LABEL_227;
  }

  v71 = 0;
  v72 = 0;
  while (2)
  {
    v101 = *v69;
    if (v191[3 * v101] != v191[3 * v101 + 1])
    {
      v102 = (v101 / 2);
      v103 = v169[1];
      v104 = *(v103 + 64);
      if (v104 > 1)
      {
        v106 = 0;
        _X10 = *(v103 + 66);
        __asm { PRFM            #4, [X10] }

        v113 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102));
        v114 = vdup_n_s8(v113 & 0x7F);
        v115 = ((v113 >> 7) ^ (_X10 >> 12)) & v104;
        v116 = *(_X10 + v115);
        v117 = vceq_s8(v116, v114);
        if (!v117)
        {
          goto LABEL_170;
        }

LABEL_167:
        v118 = *(v103 + 67);
        while (1)
        {
          v119 = (v115 + (__clz(__rbit64(v117)) >> 3)) & v104;
          if (*(v118 + 16 * v119) == v102)
          {
            break;
          }

          v117 &= ((v117 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v117)
          {
LABEL_170:
            while (!*&vceq_s8(v116, 0x8080808080808080))
            {
              v106 += 8;
              v115 = (v106 + v115) & v104;
              v116 = *(_X10 + v115);
              v117 = vceq_s8(v116, v114);
              if (v117)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_159;
          }
        }

        v105 = (v118 + 16 * v119);
        if (!(_X10 + v119))
        {
          goto LABEL_159;
        }
      }

      else
      {
        if (*(v103 + 65) < 2uLL)
        {
          goto LABEL_159;
        }

        if (*(v103 + 132) != v102)
        {
          goto LABEL_159;
        }

        v105 = v103 + 528;
        if (!&absl::lts_20240722::container_internal::kSooControl)
        {
          goto LABEL_159;
        }
      }

      v120 = *(v105 + 1);
      if (!v120 || (((v120 < 1) ^ v101) & 1) != 0)
      {
        goto LABEL_159;
      }

      v121 = *(*v103 + 48);
      v122 = v121 + 8 * *(4 * v101) + 7;
      if ((v121 & 1) == 0)
      {
        v122 = *v103 + 48;
      }

      v123 = *v122;
      v124 = *(*v122 + 60);
      if (v124 == 12)
      {
        v132 = *(v123 + 6);
        v133 = *(v132 + 4);
        if (v133 <= 0)
        {
          goto LABEL_158;
        }

        v134 = 0;
        while (*(v132[3] + v134) != v102)
        {
          if (v133 == ++v134)
          {
            goto LABEL_158;
          }
        }
      }

      else
      {
        if (v124 == 29)
        {
          v125 = *(v123 + 6);
          v126 = *(v125 + 16);
          if (v126)
          {
            v127 = *(v125 + 24);
            v128 = 4 * v126;
            v129 = v127;
            while (1)
            {
              v130 = *v129;
              v131 = ~*v129 <= *v129 ? *v129 : ~v130;
              if (v131 == v102)
              {
                break;
              }

              ++v129;
              v128 -= 4;
              if (!v128)
              {
                goto LABEL_158;
              }
            }

            v135 = v130 >= 0 ? v120 : -v120;
            if (v135)
            {
              v136 = operations_research::sat::PresolveContext::ShiftCostInExactlyOne(v103, v127, v126, v135);
              v137 = v169[1];
              if (v136)
              {
                v138 = *(v137 + 64);
                if (v138 > 1)
                {
                  v141 = 0;
                  _X10 = *(v137 + 66);
                  __asm { PRFM            #4, [X10] }

                  v144 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102));
                  v145 = vdup_n_s8(v144 & 0x7F);
                  v146 = ((v144 >> 7) ^ (_X10 >> 12)) & v138;
                  v147 = *(_X10 + v146);
                  v148 = vceq_s8(v147, v145);
                  if (!v148)
                  {
                    goto LABEL_216;
                  }

LABEL_213:
                  v149 = *(v137 + 67);
                  do
                  {
                    v150 = (v146 + (__clz(__rbit64(v148)) >> 3)) & v138;
                    if (*(v149 + 16 * v150) == v102)
                    {
                      v137 = (v149 + 16 * v150);
                      v139 = (_X10 + v150);
                      goto LABEL_221;
                    }

                    v148 &= ((v148 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v148);
LABEL_216:
                  while (!*&vceq_s8(v147, 0x8080808080808080))
                  {
                    v141 += 8;
                    v146 = (v141 + v146) & v138;
                    v147 = *(_X10 + v146);
                    v148 = vceq_s8(v147, v145);
                    if (v148)
                    {
                      goto LABEL_213;
                    }
                  }
                }

                else if (*(v137 + 65) >= 2uLL && *(v137 + 132) == v102)
                {
                  v137 = (v137 + 528);
                  v139 = &absl::lts_20240722::container_internal::kSooControl;
                  goto LABEL_221;
                }

                v139 = 0;
LABEL_221:
                if (v139)
                {
                  v151 = *(v137 + 1);
                  if (v151)
                  {
                    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v151, 0, "context_->ObjectiveCoeff(var) == 0");
                  }
                }

LABEL_223:
                ++v72;
                goto LABEL_159;
              }

LABEL_157:
              if (*(v137 + 416))
              {
                goto LABEL_239;
              }
            }
          }

          goto LABEL_158;
        }

        if (off_2810BEE58 <= 0)
        {
          goto LABEL_158;
        }

        v134 = 0;
        while (*(off_2810BEE60 + v134) != v102)
        {
          if (off_2810BEE58 == ++v134)
          {
            goto LABEL_158;
          }
        }

        v132 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v140 = v132[6][v134];
      if (v140)
      {
        if (operations_research::sat::PresolveContext::SubstituteVariableInObjective(v103, v102, v140, v123))
        {
          goto LABEL_223;
        }

        v137 = v169[1];
        goto LABEL_157;
      }

LABEL_158:
      ++v71;
    }

LABEL_159:
    if (++v69 != v70)
    {
      continue;
    }

    break;
  }

  v73 = v71;
  v74 = v162;
  if (v72 >= 1)
  {
    v152 = v169[1];
    std::string::basic_string[abi:ne200100]<0>(&v186, "objective: expanded via tight equality");
    operations_research::sat::PresolveContext::UpdateRuleStats(v152, &v186, v72, v153, v154);
    if (SHIBYTE(v187) < 0)
    {
      operator delete(v186);
    }
  }

LABEL_227:
  v185 = 12;
  strcpy(&v184, "propagations");
  operations_research::sat::PresolveTimer::AddCounter(v194, &v184, v74);
  if (v185 < 0)
  {
    operator delete(v184);
  }

  v183 = 7;
  strcpy(v182, "entries");
  operations_research::sat::PresolveTimer::AddCounter(v194, v182, v66);
  if (v183 < 0)
  {
    operator delete(v182[0]);
  }

  v181 = 15;
  strcpy(&v180, "tight_variables");
  operations_research::sat::PresolveTimer::AddCounter(v194, &v180, v67);
  if (v181 < 0)
  {
    operator delete(v180);
  }

  v179[23] = 17;
  strcpy(v179, "tight_constraints");
  operations_research::sat::PresolveTimer::AddCounter(v194, v179, v68);
  if ((v179[23] & 0x80000000) != 0)
  {
    operator delete(*v179);
  }

  v178 = 7;
  strcpy(v177, "expands");
  operations_research::sat::PresolveTimer::AddCounter(v194, v177, v72);
  if (v178 < 0)
  {
    operator delete(v177[0]);
  }

  v176 = 6;
  strcpy(v175, "issues");
  operations_research::sat::PresolveTimer::AddCounter(v194, v175, v73);
  if (v176 < 0)
  {
    operator delete(v175[0]);
  }

LABEL_239:
  if (__p == 1)
  {
    if (v189)
    {
      v190 = v189;
      operator delete(v189);
    }
  }

  else if ((__p & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(__p, v75);
  }

  v155 = v191;
  if (v191)
  {
    v156 = v192;
    v157 = v191;
    if (v192 != v191)
    {
      v158 = v192;
      do
      {
        v160 = *(v158 - 3);
        v158 -= 3;
        v159 = v160;
        if (v160)
        {
          *(v156 - 2) = v159;
          operator delete(v159);
        }

        v156 = v158;
      }

      while (v158 != v155);
      v157 = v191;
    }

    v192 = v155;
    operator delete(v157);
  }

LABEL_252:
  operations_research::sat::PresolveTimer::~PresolveTimer(v194);
}

void sub_23CAA04C0(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  absl::lts_20240722::StatusOr<std::vector<int>>::~StatusOr(&a47, a2);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v47 - 256));
  operations_research::sat::PresolveTimer::~PresolveTimer((v47 - 232));
  _Unwind_Resume(a1);
}

void util::graph::FastTopologicalSort<std::vector<std::vector<int>>>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  if (v4 >> 31)
  {
    absl::lts_20240722::InvalidArgumentError("More than kint32max nodes", 25, v11);
    v5 = v11[0];
    *a2 = v11[0];
    v11[0] = 55;
    if (v5 == 1)
    {
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a2);
      v7 = v11[0];
      if ((v11[0] & 1) == 0)
      {
LABEL_4:
        absl::lts_20240722::status_internal::StatusRep::Unref(v7, v6);
      }
    }
  }

  else
  {
    if (v3 != *a1)
    {
      v8 = 0xAAAAAAAAAAAAAAACLL * ((v3 - *a1) >> 3);
      operator new();
    }

    if (!v4)
    {
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *a2 = 1;
      *(a2 + 8) = 0;
      goto LABEL_9;
    }

    absl::lts_20240722::InvalidArgumentError("The graph has a cycle", 21, v11);
    v9 = v11[0];
    *a2 = v11[0];
    v11[0] = 55;
    if (v9 == 1)
    {
      absl::lts_20240722::internal_statusor::Helper::HandleInvalidStatusCtorArg(a2);
      v7 = v11[0];
      if ((v11[0] & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_23CAA0BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::StatusOr<std::vector<int>>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = a1[1];
    if (v4)
    {
      a1[2] = v4;
      operator delete(v4);
      return a1;
    }
  }

  else if ((v3 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
  }

  return a1;
}

void operations_research::sat::CpModelPresolver::MergeNoOverlapConstraints(operations_research::sat::CpModelPresolver *this)
{
  v125 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (v1[416])
  {
    goto LABEL_81;
  }

  v2 = *(*v1 + 56);
  __p = 0;
  v95 = 0;
  v96 = 0;
  if (v2 < 1)
  {
    goto LABEL_81;
  }

  v3 = 0;
  v85 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v79 = v2;
  do
  {
    v9 = **(this + 1);
    v11 = *(v9 + 48);
    v10 = (v9 + 48);
    v12 = v11 + 8 * v3 + 7;
    if (v11)
    {
      v10 = v12;
    }

    v13 = *v10;
    if (*(v13 + 60) == 20)
    {
      v80 = v5;
      v81 = v6;
      v83 = v4;
      v109 = 0;
      *&v110 = 0;
      v108 = 0;
      v14 = *(v13 + 48);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 24);
        v18 = 4 * v15;
        do
        {
          v19 = 2 * *v17;
          if (v16 < v110)
          {
            *v16++ = v19;
          }

          else
          {
            v20 = v108;
            v21 = v16 - v108;
            v22 = (v16 - v108) >> 2;
            v23 = v22 + 1;
            if ((v22 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v24 = v110 - v108;
            if ((v110 - v108) >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              if (!(v25 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v26 = v22;
            v27 = (4 * v22);
            v28 = &v27[-v26];
            *v27 = v19;
            v16 = v27 + 1;
            memcpy(v28, v20, v21);
            v108 = v28;
            v109 = v16;
            *&v110 = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          v109 = v16;
          ++v17;
          v18 -= 4;
        }

        while (v18);
      }

      v29 = v95;
      if (v95 >= v96)
      {
        v4 = v83;
        v31 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(&__p, &v108);
        v30 = v80;
        v6 = v81;
      }

      else
      {
        *v95 = 0;
        *(v29 + 1) = 0;
        *(v29 + 2) = 0;
        v30 = v80;
        v6 = v81;
        if (v109 != v108)
        {
          if (((v109 - v108) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v31 = v29 + 24;
        v4 = v83;
      }

      v95 = v31;
      if (v30 < v6)
      {
        *v30 = v3;
        v5 = (v30 + 4);
        v8 = v108;
        v7 = v109;
        if (!v108)
        {
LABEL_6:
          LODWORD(v85) = v85 + ((v7 - v8) >> 2);
          ++HIDWORD(v85);
          v2 = v79;
          goto LABEL_7;
        }
      }

      else
      {
        v32 = v30 - v4;
        v33 = (v30 - v4) >> 2;
        v34 = v33 + 1;
        if ((v33 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v6 - v4) >> 1 > v34)
        {
          v34 = (v6 - v4) >> 1;
        }

        if (v6 - v4 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v35 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          if (!(v35 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v6 = 0;
        *(4 * v33) = v3;
        v5 = 4 * v33 + 4;
        memcpy(0, v4, v32);
        v4 = 0;
        v8 = v108;
        v7 = v109;
        if (!v108)
        {
          goto LABEL_6;
        }
      }

      v109 = v8;
      operator delete(v8);
      goto LABEL_6;
    }

LABEL_7:
    ++v3;
  }

  while (v3 != v2);
  if (HIDWORD(v85))
  {
    memset(v89, 0, sizeof(v89));
    v90 = xmmword_23CE306D0;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v36 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(v89);
    operations_research::sat::Trail::Resize(v36, v2);
    v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v89);
    operations_research::sat::BinaryImplicationGraph::Resize(v37, v2);
    v38 = __p;
    v39 = v95;
    if (__p != v95)
    {
      while ((operations_research::sat::BinaryImplicationGraph::AddAtMostOne(v37, *v38, (v38[1] - *v38) >> 2) & 1) != 0)
      {
        v38 += 3;
        if (v38 == v39)
        {
          goto LABEL_49;
        }
      }

      v69 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v108, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7799);
LABEL_83:
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v69);
    }

LABEL_49:
    if ((operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v37, 0) & 1) == 0)
    {
      v69 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v108, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7801);
      goto LABEL_83;
    }

    v40 = *(*(*(this + 1) + 392) + 664);
    operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(v37, &__p);
    if (v95 != __p)
    {
      v41 = 0;
      v42 = 0;
      v84 = 0;
      v43 = 0;
      while (1)
      {
        v45 = v4;
        v46 = **(this + 1);
        v48 = *(v46 + 48);
        v47 = (v46 + 48);
        v49 = (v48 + 8 * *(v4 + v41) + 7);
        if ((v48 & 1) == 0)
        {
          v49 = v47;
        }

        v50 = *v49;
        operations_research::sat::ConstraintProto::Clear(*v49);
        v44 = __p;
        v51 = (__p + 24 * v41);
        v52 = *v51;
        v53 = v51[1];
        if (*v51 != v53)
        {
          break;
        }

LABEL_55:
        v41 = ++v42;
        v4 = v45;
        if (0xAAAAAAAAAAAAAAABLL * ((v95 - v44) >> 3) <= v42)
        {
          goto LABEL_69;
        }
      }

      v82 = v43;
      while (2)
      {
        v59 = *v52;
        if (*v52)
        {
          v69 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v108, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7816);
          goto LABEL_83;
        }

        if (*(v50 + 15) == 20)
        {
          v54 = *(v50 + 6);
          v56 = *(v54 + 4);
          v55 = *(v54 + 5);
          v57 = (v54 + 2);
          if (v56 == v55)
          {
            goto LABEL_67;
          }
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v50);
          *(v50 + 15) = 20;
          v60 = *(v50 + 1);
          if (v60)
          {
            v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
          }

          v54 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(v60);
          *(v50 + 6) = v54;
          v56 = *(v54 + 4);
          v55 = *(v54 + 5);
          v57 = (v54 + 2);
          if (v56 == v55)
          {
LABEL_67:
            google::protobuf::RepeatedField<int>::Grow(v57, v55, (v55 + 1));
            v56 = *v57;
          }
        }

        v58 = v54[3];
        *(v54 + 4) = v56 + 1;
        *(v58 + 4 * v56) = v59 >> 1;
        if (++v52 == v53)
        {
          ++v84;
          v44 = __p;
          v43 = (v82 + ((*(__p + 3 * v41 + 1) - *(__p + 3 * v41)) >> 2));
          goto LABEL_55;
        }

        continue;
      }
    }

    v43 = 0;
    v84 = 0;
LABEL_69:
    if (v85 != __PAIR64__(v84, v43))
    {
      if (dword_27E25CC08 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CpModelPresolver::MergeNoOverlapConstraints(void)::$_0::operator() const(void)::site, dword_27E25CC08))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_presolve.cc", 7824);
        v70 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v88, 1);
        v72 = absl::lts_20240722::numbers_internal::FastIntToBuffer(HIDWORD(v85), v101, v71);
        *&v100 = v101;
        *(&v100 + 1) = v72 - v101;
        v74 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v85, v99, v73);
        v97 = v99;
        v98 = v74 - v99;
        v108 = "Merged ";
        v109 = 7;
        v110 = v100;
        v111 = " no-overlaps (";
        v112 = 14;
        v113 = v99;
        v114 = v74 - v99;
        v115 = " intervals) into ";
        v116 = 17;
        v76 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v84, v107, v75);
        v105 = v107;
        v106 = v76 - v107;
        v117 = v107;
        v118 = v76 - v107;
        v119 = " no-overlaps (";
        v120 = 14;
        v78 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v43, v104, v77);
        v102 = v104;
        v103 = v78 - v104;
        v121 = v104;
        v122 = v78 - v104;
        v123 = " intervals).";
        v124 = 12;
        absl::lts_20240722::strings_internal::CatPieces(&v108, 9, &v87);
        absl::lts_20240722::log_internal::LogMessage::operator<<(v70, &v87);
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v88);
      }

      v61 = *(this + 1);
      operator new();
    }

    operations_research::sat::Model::~Model(v89);
  }

  v62 = __p;
  if (__p)
  {
    v63 = v95;
    v64 = __p;
    if (v95 != __p)
    {
      v65 = v95;
      do
      {
        v67 = *(v65 - 3);
        v65 -= 24;
        v66 = v67;
        if (v67)
        {
          *(v63 - 2) = v66;
          operator delete(v66);
        }

        v63 = v65;
      }

      while (v65 != v62);
      v64 = __p;
    }

    v95 = v62;
    operator delete(v64);
  }

LABEL_81:
  v68 = *MEMORY[0x277D85DE8];
}