uint64_t operations_research::sat::SharedBoundsManager::NumBoundsExported(atomic_ullong *a1, void *a2)
{
  absl::lts_20240722::Mutex::Lock(a1 + 2);
  v4 = a1 + 29;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = *v4;
  v8 = *(*v4 + 10);
  if (!*(*v4 + 10))
  {
    goto LABEL_24;
  }

LABEL_5:
  v9 = 0;
  while (1)
  {
    v10 = v8;
    v11 = v8 + v9;
    v8 = (v8 + v9) >> 1;
    v12 = (v7 + 16 + 32 * v8);
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v16 = *v12;
      v13 = *(v7 + 16 + 32 * v8 + 8);
      if (v6 >= v13)
      {
        v17 = *(v7 + 16 + 32 * v8 + 8);
      }

      else
      {
        v17 = v6;
      }

      v15 = memcmp(v16, a2, v17);
      if (v15)
      {
LABEL_13:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v6 >= v13)
      {
        v14 = *(v12 + 23);
      }

      else
      {
        v14 = v6;
      }

      v15 = memcmp(v12, a2, v14);
      if (v15)
      {
        goto LABEL_13;
      }
    }

    if (v13 >= v6)
    {
      break;
    }

LABEL_6:
    v9 = v8 + 1;
    v8 = v10;
LABEL_7:
    if (v9 == v8)
    {
      v18 = v8;
      if (*(v7 + 11))
      {
LABEL_32:
        v22 = *(a1[30] + 10);
        goto LABEL_33;
      }

      while (1)
      {
        v7 = *(v7 + 8 * v18 + 240);
        v8 = *(v7 + 10);
        if (*(v7 + 10))
        {
          goto LABEL_5;
        }

LABEL_24:
        v18 = 0;
        if (*(v7 + 11))
        {
          goto LABEL_32;
        }
      }
    }
  }

  if (v13 != v6)
  {
    goto LABEL_7;
  }

  v19 = a1[30];
  if (v7 != v19 || (v11 >> 1) != *(v19 + 10))
  {
    v21 = *(v7 + 32 * (v11 >> 1) + 40);
    goto LABEL_34;
  }

LABEL_33:
  v21 = 0;
LABEL_34:
  absl::lts_20240722::Mutex::Unlock((a1 + 2));
  return v21;
}

double operations_research::sat::SharedClausesManager::SharedClausesManager(operations_research::sat::SharedClausesManager *this, char a2)
{
  *this = xmmword_23CE48D30;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = &unk_23CE31C20;
  return result;
}

unint64_t operations_research::sat::SharedClausesManager::RegisterNewId(operations_research::sat::SharedClausesManager *this)
{
  absl::lts_20240722::Mutex::Lock(this);
  v2 = *(this + 8);
  v3 = *(this + 9) - v2;
  v4 = ((v3 << 30) + 0x100000000) >> 32;
  __x = 0;
  if (v4 <= v3 >> 2)
  {
    if (v4 < v3 >> 2)
    {
      *(this + 9) = v2 + 4 * v4;
    }
  }

  else
  {
    std::vector<int>::__append((this + 64), v4 - (v3 >> 2), &__x);
  }

  v5 = *(this + 11);
  v6 = *(this + 12);
  v9 = 0;
  v7 = (v6 - v5) >> 3;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      *(this + 12) = v5 + 8 * v4;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(this + 88, v4 - v7, &v9);
  }

  absl::lts_20240722::Mutex::Unlock(this);
  return v3 >> 2;
}

void operations_research::sat::SharedClausesManager::SetWorkerNameForId(atomic_ullong *a1, unsigned int a2, const std::string *a3)
{
  absl::lts_20240722::Mutex::Lock(a1);
  v6 = 0;
  _X8 = a1[17];
  __asm { PRFM            #4, [X8] }

  v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
  v14 = 0x9DDFEA08EB382D69 * v13;
  v15 = (v13 * 0x9DDFEA08EB382D69) >> 64;
  v16 = a1[15];
  v17 = v15 ^ v14;
  v18 = vdup_n_s8((v15 ^ v14) & 0x7F);
  v19 = (((v15 ^ v14) >> 7) ^ (_X8 >> 12)) & v16;
  v20 = *(_X8 + v19);
  v21 = vceq_s8(v20, v18);
  if (v21)
  {
LABEL_2:
    v22 = a1[18];
    while (1)
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v16;
      if (*(v22 + 32 * v23) == a2)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v25 = v22 + 32 * v23;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = vceq_s8(v20, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v6 += 8;
      v19 = (v6 + v19) & v16;
      v20 = *(_X8 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_2;
      }
    }

    v25 = a1[18] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 15, v17, (v19 + (__clz(__rbit64(v24)) >> 3)) & v16, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::GetPolicyFunctions(void)::value);
    *v25 = a2;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 8) = 0;
  }

  std::string::operator=((v25 + 8), a3);
  absl::lts_20240722::Mutex::Unlock(a1);
}

void operations_research::sat::SharedClausesManager::AddBinaryClause(atomic_ullong *this, int a2, unsigned int a3, unsigned int a4)
{
  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a4 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a4;
  }

  v12 = v7 | (v6 << 32);
  absl::lts_20240722::Mutex::Lock(this);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>((this + 1), &v12, v10);
  if (v11 == 1)
  {
    *v10[1] = v12;
    if (v11)
    {
      std::vector<long long>::push_back[abi:ne200100]((this + 5), &v12);
      if (*(this + 116) == 1)
      {
        ++*(this + 28);
      }

      ++*(this[11] + 8 * a2);
      v8 = this[8];
      v9 = *(v8 + 4 * a2);
      if (((this[6] - this[5]) >> 3) - 1 == v9)
      {
        *(v8 + 4 * a2) = v9 + 1;
      }
    }
  }

  absl::lts_20240722::Mutex::Unlock(this);
}

void operations_research::sat::SharedClausesManager::GetUnseenBinaryClauses(uint64_t a1, int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  absl::lts_20240722::Mutex::Lock(a1);
  v6 = *(*(a1 + 64) + 4 * a2);
  v7 = *(a1 + 112);
  if (v6 < v7)
  {
    std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,int>*>,std::__wrap_iter<std::pair<int,int>*>>(a3, 8 * v6 + *(a1 + 40), (8 * v7 + *(a1 + 40)), (8 * v7 - 8 * v6) >> 3);
    *(*(a1 + 64) + 4 * a2) = *(a1 + 112);
  }

  absl::lts_20240722::Mutex::Unlock(a1);
}

void operations_research::sat::SharedClausesManager::LogStatistics(atomic_ullong *this, operations_research::SolverLogger *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this);
  v26[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  v26[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  v27 = 0;
  v4 = this[11];
  v3 = this[12];
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v5);
      if (v7)
      {
        v8 = 0;
        _X9 = this[17];
        __asm { PRFM            #4, [X9] }

        v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6));
        v16 = this[15];
        v17 = vdup_n_s8(v15 & 0x7F);
        v18 = ((v15 >> 7) ^ (_X9 >> 12)) & v16;
        v19 = *(_X9 + v18);
        v20 = vceq_s8(v19, v17);
        if (!v20)
        {
          goto LABEL_9;
        }

LABEL_6:
        v21 = this[18];
        do
        {
          v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
          if (*(v21 + 32 * v22) == v6)
          {
            v24 = v21 + 32 * v22;
            goto LABEL_14;
          }

          v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v20);
LABEL_9:
        while (1)
        {
          v23 = vceq_s8(v19, 0x8080808080808080);
          if (v23)
          {
            break;
          }

          v8 += 8;
          v18 = (v8 + v18) & v16;
          v19 = *(_X9 + v18);
          v20 = vceq_s8(v19, v17);
          if (v20)
          {
            goto LABEL_6;
          }
        }

        v24 = this[18] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 15, v15, (v18 + (__clz(__rbit64(v23)) >> 3)) & v16, v8, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::GetPolicyFunctions(void)::value);
        *v24 = v6;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 8) = 0;
LABEL_14:
        p_dst = (v24 + 8);
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string&>,std::tuple<>>(v26, (v24 + 8), &std::piecewise_construct, &p_dst, &__dst);
        *(__dst + 32 * BYTE8(__dst) + 40) = v7;
        v4 = this[11];
        v3 = this[12];
      }

      v5 = ++v6;
    }

    while (v6 < ((v3 - v4) >> 3));
    if (v27)
    {
      __dst = 0uLL;
      v31 = 0;
      p_dst = &__dst;
      LOBYTE(v29) = 0;
      operator new();
    }
  }

  absl::lts_20240722::Mutex::Unlock(this);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_23CD0F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::string>>::~vector[abi:ne200100](&a14);
  absl::lts_20240722::btree_map<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>>::~btree_map(&a17);
  absl::lts_20240722::Mutex::Unlock(v44);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::btree_map<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

void operations_research::sat::SharedClausesManager::Synchronize(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this);
  *(this + 28) = (this[6] - this[5]) >> 3;
  absl::lts_20240722::Mutex::Unlock(this);
}

void operations_research::sat::SharedStatistics::AddStats(atomic_ullong *a1, __int128 *a2, uint64_t a3)
{
  absl::lts_20240722::Mutex::Lock(a1);
  if ((a3 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v8 = 32 * a3;
    do
    {
      v10 = *(a2 + 3);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::find_or_prepare_insert_non_soo<std::string>(a1 + 1, a2, v6, v7, v12);
      if (v14 == 1)
      {
        v11 = v13;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v13, *a2, *(a2 + 1));
        }

        else
        {
          v9 = *a2;
          v13->__r_.__value_.__r.__words[2] = *(a2 + 2);
          *&v11->__r_.__value_.__l.__data_ = v9;
        }

        v11[1].__r_.__value_.__r.__words[0] = 0;
      }

      v13[1].__r_.__value_.__r.__words[0] += v10;
      a2 += 2;
      v8 -= 32;
    }

    while (v8);
  }

  absl::lts_20240722::Mutex::Unlock(a1);
}

void operations_research::sat::SharedStatistics::Log(atomic_ullong *this, operations_research::SolverLogger *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this);
  if (this[2] < 2)
  {
    goto LABEL_56;
  }

  if (*a2 == 1)
  {
    *(&v42.__r_.__value_.__s + 23) = 0;
    v42.__r_.__value_.__s.__data_[0] = 0;
    operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 1121, &v42);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((*a2 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((*a2 & 1) == 0)
    {
      goto LABEL_8;
    }

    operator new();
  }

LABEL_8:
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (this[2] >= 2)
  {
    v4 = this[3];
    v5 = this[4];
    if (*v4 <= -2)
    {
      do
      {
        v6 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
        v4 = (v4 + v6);
        v5 += 32 * v6;
      }

      while (*v4 < -1);
    }

    v7 = 0;
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *v5, *(v5 + 8));
      }

      else
      {
        v8 = *v5;
        v42.__r_.__value_.__r.__words[2] = *(v5 + 16);
        *&v42.__r_.__value_.__l.__data_ = v8;
      }

      v9 = *(v5 + 24);
      v43 = v9;
      if (v7 >= v38)
      {
        break;
      }

      v10 = *&v42.__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&v42.__r_.__value_.__l + 2);
      *v7 = v10;
      memset(&v42, 0, sizeof(v42));
      *(v7 + 24) = v43;
      v7 += 32;
      v37 = v7;
      v12 = *(v4 + 1);
      v4 = (v4 + 1);
      LOBYTE(v11) = v12;
      v5 += 32;
      if (v12 <= -2)
      {
        goto LABEL_28;
      }

LABEL_29:
      if (v11 == 255)
      {
        v23 = v36;
        goto LABEL_34;
      }
    }

    v13 = v36;
    v14 = v7 - v36;
    v15 = (v7 - v36) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v17 = v38 - v36;
    if ((v38 - v36) >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 32 * v15;
    *v19 = *&v42.__r_.__value_.__l.__data_;
    v20 = v42.__r_.__value_.__r.__words[2];
    memset(&v42, 0, sizeof(v42));
    *(v19 + 16) = v20;
    *(v19 + 24) = v9;
    v7 = 32 * v15 + 32;
    memcpy(0, v13, v14);
    v36 = 0;
    v38 = 0;
    v37 = v7;
    v22 = *(v4 + 1);
    v4 = (v4 + 1);
    LOBYTE(v11) = v22;
    v5 += 32;
    if (v22 > -2)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_28:
      v21 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
      v4 = (v4 + v21);
      v5 += 32 * v21;
      v11 = *v4;
    }

    while (v11 < -1);
    goto LABEL_29;
  }

  v7 = 0;
  v23 = 0;
LABEL_34:
  v24 = 126 - 2 * __clz((v7 - v23) >> 5);
  if (v7 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,false>(v23, v7, &v42, v25, 1);
  v27 = v37;
  if (v36 != v37 && *a2 == 1)
  {
    for (i = v36; i != v27; i += 32)
    {
      if (*a2 == 1)
      {
        v42.__r_.__value_.__r.__words[0] = "  ";
        v42.__r_.__value_.__l.__size_ = 2;
        v29 = i[23];
        if ((v29 & 0x80u) == 0)
        {
          v30 = i;
        }

        else
        {
          v30 = *i;
        }

        if ((v29 & 0x80u) != 0)
        {
          v29 = *(i + 1);
        }

        v41[0] = v30;
        v41[1] = v29;
        v40[0] = ": ";
        v40[1] = 2;
        operations_research::sat::FormatCounter(*(i + 3), v26, &v34);
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v34;
        }

        else
        {
          v32 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        v39[0] = v32;
        v39[1] = size;
        absl::lts_20240722::StrCat(&v42.__r_.__value_.__l.__data_, v41, v40, v39, &__p);
        operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 1129, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_55;
          }
        }

        else if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_55:
          operator delete(v34.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_56:
  absl::lts_20240722::Mutex::Unlock(this);
  v33 = *MEMORY[0x277D85DE8];
}

void sub_23CD0FA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v23 - 137) < 0)
  {
    operator delete(*(v23 - 160));
  }

  absl::lts_20240722::Mutex::Unlock(v22);
  _Unwind_Resume(a1);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpSolverSolution>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x28uLL);
    v3 = 0;
  }

  return operations_research::sat::CpSolverSolution::CpSolverSolution(v2, v3);
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>::__emplace_back_slow_path<operations_research::sat::SharedSolutionRepository<double>::Solution const&>(uint64_t *a1, uint64_t *a2)
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
  std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(a1, v2 << 6, a2);
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
      *v12 = *v11;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v13 = *(v11 + 32);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 32) = v13;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      *(v12 + 56) = *(v11 + 56);
      v11 += 64;
      v12 += 64;
    }

    while (v11 != v9);
    while (*(v8 + 55) < 0)
    {
      operator delete(*(v8 + 32));
      v14 = *(v8 + 8);
      if (v14)
      {
        goto LABEL_19;
      }

LABEL_14:
      v8 += 64;
      if (v8 == v9)
      {
        v8 = *a1;
        goto LABEL_21;
      }
    }

    v14 = *(v8 + 8);
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_19:
    *(v8 + 16) = v14;
    operator delete(v14);
    goto LABEL_14;
  }

LABEL_21:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CD0FD14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::deque<std::vector<double>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_23CD1009C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::function<void ()(std::vector<long long> *)>>::__emplace_back_slow_path<std::function<void ()(std::vector<long long> *)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<void ()(std::vector<long long> *)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CD102D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(std::vector<long long> *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(std::vector<long long> *)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(std::vector<long long> *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__emplace_back_slow_path<std::function<void ()(operations_research::sat::CpSolverResponse *)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CD106F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::__emplace_back_slow_path<int const&,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 40 * v3;
  __p = 0;
  v16 = 40 * v3;
  v17 = 40 * v3;
  v18 = 0;
  *(40 * v3) = *a2;
  v9 = (a3 + 24);
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      *(40 * v3 + 0x20) = 40 * v3 + 8;
      (*(*v8 + 24))(v8);
      v7 = v17;
      goto LABEL_16;
    }

    *(40 * v3 + 0x20) = v8;
  }

  else
  {
    v9 = (v7 + 32);
  }

  *v9 = 0;
LABEL_16:
  v17 = v7 + 40;
  std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::__swap_out_circular_buffer(a1, &__p);
  v10 = a1[1];
  v11 = v16;
  while (1)
  {
    v12 = v17;
    if (v17 == v11)
    {
      break;
    }

    v17 -= 40;
    v13 = *(v12 - 8);
    if (v13 == v12 - 32)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))(v13);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_23CD108FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 == *result)
  {
    goto LABEL_16;
  }

  v7 = 0;
  v8 = *result;
  do
  {
    v10 = v6 + v7;
    v11 = v5 + v7;
    *(v6 + v7) = *(v5 + v7);
    v12 = v6 + v7 + 8;
    v13 = *(v5 + v7 + 32);
    if (!v13)
    {
      v9 = (v10 + 32);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v11 + 8 != v13)
    {
      v9 = (v8 + 32);
      *(v10 + 32) = v13;
      goto LABEL_4;
    }

    *(v10 + 32) = v12;
    (*(**(v11 + 32) + 24))(*(v11 + 32));
LABEL_5:
    v8 += 40;
    v7 += 40;
  }

  while (v5 + v7 != v4);
  v14 = v5 + 8;
  do
  {
    result = *(v5 + 32);
    if ((v5 + 8) == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result, v12);
    }

    v5 += 40;
    v14 += 40;
  }

  while (v5 != v4);
LABEL_16:
  a2[1] = v6;
  v15 = *v3;
  *v3 = v6;
  v3[1] = v15;
  a2[1] = v15;
  v16 = v3[1];
  v3[1] = a2[2];
  a2[2] = v16;
  v17 = v3[2];
  v3[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 40;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::__emplace_back_slow_path<int const&,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 40 * v3;
  __p = 0;
  v16 = 40 * v3;
  v17 = 40 * v3;
  v18 = 0;
  *(40 * v3) = *a2;
  v9 = (a3 + 24);
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      *(40 * v3 + 0x20) = 40 * v3 + 8;
      (*(*v8 + 24))(v8);
      v7 = v17;
      goto LABEL_16;
    }

    *(40 * v3 + 0x20) = v8;
  }

  else
  {
    v9 = (v7 + 32);
  }

  *v9 = 0;
LABEL_16:
  v17 = v7 + 40;
  std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::__swap_out_circular_buffer(a1, &__p);
  v10 = a1[1];
  v11 = v16;
  while (1)
  {
    v12 = v17;
    if (v17 == v11)
    {
      break;
    }

    v17 -= 40;
    v13 = *(v12 - 8);
    if (v13 == v12 - 32)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))(v13);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_23CD10D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 == *result)
  {
    goto LABEL_16;
  }

  v7 = 0;
  v8 = *result;
  do
  {
    v10 = v6 + v7;
    v11 = v5 + v7;
    *(v6 + v7) = *(v5 + v7);
    v12 = v6 + v7 + 8;
    v13 = *(v5 + v7 + 32);
    if (!v13)
    {
      v9 = (v10 + 32);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v11 + 8 != v13)
    {
      v9 = (v8 + 32);
      *(v10 + 32) = v13;
      goto LABEL_4;
    }

    *(v10 + 32) = v12;
    (*(**(v11 + 32) + 24))(*(v11 + 32));
LABEL_5:
    v8 += 40;
    v7 += 40;
  }

  while (v5 + v7 != v4);
  v14 = v5 + 8;
  do
  {
    result = *(v5 + 32);
    if ((v5 + 8) == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result, v12);
    }

    v5 += 40;
    v14 += 40;
  }

  while (v5 != v4);
LABEL_16:
  a2[1] = v6;
  v15 = *v3;
  *v3 = v6;
  v3[1] = v15;
  a2[1] = v15;
  v16 = v3[1];
  v3[1] = a2[2];
  a2[2] = v16;
  v17 = v3[2];
  v3[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 40;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<int,std::function<void ()(double)>>>::__emplace_back_slow_path<int const&,std::function<void ()(double)>>(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 40 * v3;
  __p = 0;
  v16 = 40 * v3;
  v17 = 40 * v3;
  v18 = 0;
  *(40 * v3) = *a2;
  v9 = (a3 + 24);
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      *(40 * v3 + 0x20) = 40 * v3 + 8;
      (*(*v8 + 24))(v8);
      v7 = v17;
      goto LABEL_16;
    }

    *(40 * v3 + 0x20) = v8;
  }

  else
  {
    v9 = (v7 + 32);
  }

  *v9 = 0;
LABEL_16:
  v17 = v7 + 40;
  std::vector<std::pair<int,std::function<void ()(double)>>>::__swap_out_circular_buffer(a1, &__p);
  v10 = a1[1];
  v11 = v16;
  while (1)
  {
    v12 = v17;
    if (v17 == v11)
    {
      break;
    }

    v17 -= 40;
    v13 = *(v12 - 8);
    if (v13 == v12 - 32)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))(v13);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_23CD111A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<int,std::function<void ()(double)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<int,std::function<void ()(double)>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 == *result)
  {
    goto LABEL_16;
  }

  v7 = 0;
  v8 = *result;
  do
  {
    v10 = v6 + v7;
    v11 = v5 + v7;
    *(v6 + v7) = *(v5 + v7);
    v12 = v6 + v7 + 8;
    v13 = *(v5 + v7 + 32);
    if (!v13)
    {
      v9 = (v10 + 32);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v11 + 8 != v13)
    {
      v9 = (v8 + 32);
      *(v10 + 32) = v13;
      goto LABEL_4;
    }

    *(v10 + 32) = v12;
    (*(**(v11 + 32) + 24))(*(v11 + 32));
LABEL_5:
    v8 += 40;
    v7 += 40;
  }

  while (v5 + v7 != v4);
  v14 = v5 + 8;
  do
  {
    result = *(v5 + 32);
    if ((v5 + 8) == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result, v12);
    }

    v5 += 40;
    v14 += 40;
  }

  while (v5 != v4);
LABEL_16:
  a2[1] = v6;
  v15 = *v3;
  *v3 = v6;
  v3[1] = v15;
  a2[1] = v15;
  v16 = v3[1];
  v3[1] = a2[2];
  a2[2] = v16;
  v17 = v3[2];
  v3[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::pair<int,std::function<void ()(double)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 40;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::CpSolverResponse>::__emplace_back_slow_path<operations_research::sat::CpSolverResponse const&>(uint64_t a1, const operations_research::sat::CpSolverResponse *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v5 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = (16 * ((*(a1 + 8) - *a1) >> 4));
  operations_research::sat::CpSolverResponse::CpSolverResponse(v11, 0, a2);
  v6 = 272 * v2 + 272;
  v7 = *(a1 + 8);
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::CpSolverResponse>,operations_research::sat::CpSolverResponse*>(a1, *a1, v7, (v11 + *a1 - v7));
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

void sub_23CD11534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::CpSolverResponse>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::CpSolverResponse>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    operations_research::sat::CpSolverResponse::~CpSolverResponse((i - 272));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::CpSolverResponse>,operations_research::sat::CpSolverResponse*>(uint64_t a1, operations_research::sat::CpSolverResponse *a2, operations_research::sat::CpSolverResponse *a3, operations_research::sat::CpSolverResponse *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::CpSolverResponse::CpSolverResponse(a4, 0);
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
            operations_research::sat::CpSolverResponse::CopyFrom(a4, v7);
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
      operations_research::sat::CpSolverResponse::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 272);
      a4 = (a4 + 272);
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::CpSolverResponse::~CpSolverResponse(v6);
          v6 = (v6 + 272);
        }

        return;
      }
    }
  }
}

void operations_research::sat::SharedSolutionRepository<long long>::AddInternal(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 120);
  v4 = *(a1 + 128);
  v5 = (a1 + 120);
  v7 = v4 - v6;
  v8 = (v4 - v6) >> 6;
  if (v4 != v6)
  {
    v36 = *(a1 + 128);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2[1];
    v13 = *a2;
    v14 = a2[2] - v12;
    while (1)
    {
      v15 = (v6 + (v9 << 6));
      v16 = *v15;
      if (*v15 == v13)
      {
        v17 = v15[1];
        if (v15[2] - v17 == v14 && !memcmp(v17, v12, v14))
        {
          return;
        }
      }

      v18 = (v6 + (v11 << 6));
      v19 = *v18 < v16;
      if (*v18 != v16)
      {
        goto LABEL_19;
      }

      v20 = v18[1];
      v21 = v18[2];
      v22 = v15[1];
      v23 = v15[2];
      v24 = v21 - v20;
      if (v23 - v22 < v24)
      {
        v24 = v23 - v22;
      }

      if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = 8 * v24;
        v26 = &v20[v24];
        while (*v20 == *v22)
        {
          ++v20;
          ++v22;
          v25 -= 8;
          if (!v25)
          {
            v20 = v26;
            break;
          }
        }
      }

      if (v22 == v23)
      {
        goto LABEL_4;
      }

      if (v20 != v21)
      {
        break;
      }

LABEL_3:
      v11 = v10;
LABEL_4:
      v9 = ++v10;
      if (v8 <= v10)
      {
        v7 = v11;
        v3 = a1;
        v2 = a2;
        v4 = v36;
        goto LABEL_22;
      }
    }

    v19 = *v20 < *v22;
LABEL_19:
    if (!v19)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_22:
  if (v8 < *(v3 + 24))
  {
    ++*(v3 + 40);
    if (v4 >= *(v3 + 136))
    {
      *(v3 + 128) = std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__emplace_back_slow_path<operations_research::sat::SharedSolutionRepository<long long>::Solution const&>(v5, v2);
    }

    else
    {
      std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(v5, v4, v2);
      *(v3 + 128) = v4 + 64;
      *(v3 + 128) = v4 + 64;
    }

    return;
  }

  v27 = v6 + (v7 << 6);
  v28 = *v2;
  if (*v2 == *v27)
  {
    v29 = v2[1];
    v30 = v2[2];
    v31 = *(v27 + 8);
    v32 = *(v27 + 16);
    v33 = v30 - v29;
    if (v32 - v31 < v33)
    {
      v33 = v32 - v31;
    }

    if ((v33 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v34 = 8 * v33;
      v35 = &v29[v33];
      while (*v29 == *v31)
      {
        ++v29;
        ++v31;
        v34 -= 8;
        if (!v34)
        {
          v29 = v35;
          break;
        }
      }
    }

    if (v31 == v32 || v29 != v30 && *v29 >= *v31)
    {
      goto LABEL_36;
    }
  }

  else if (*v2 >= *v27)
  {
LABEL_36:
    ++*(v3 + 48);
    return;
  }

  ++*(v3 + 40);
  *v27 = v28;
  if (v27 != v2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v27 + 8), v2[1], v2[2], (v2[2] - v2[1]) >> 3);
  }

  std::string::operator=((v27 + 32), (v2 + 4));
  *(v27 + 56) = *(v2 + 14);
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__emplace_back_slow_path<operations_research::sat::SharedSolutionRepository<long long>::Solution const&>(uint64_t *a1, uint64_t *a2)
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
  std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(a1, v2 << 6, a2);
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
      *v12 = *v11;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v13 = *(v11 + 32);
      *(v12 + 48) = *(v11 + 48);
      *(v12 + 32) = v13;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      *(v12 + 56) = *(v11 + 56);
      v11 += 64;
      v12 += 64;
    }

    while (v11 != v9);
    while (*(v8 + 55) < 0)
    {
      operator delete(*(v8 + 32));
      v14 = *(v8 + 8);
      if (v14)
      {
        goto LABEL_19;
      }

LABEL_14:
      v8 += 64;
      if (v8 == v9)
      {
        v8 = *a1;
        goto LABEL_21;
      }
    }

    v14 = *(v8 + 8);
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_19:
    *(v8 + 16) = v14;
    operator delete(v14);
    goto LABEL_14;
  }

LABEL_21:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CD11AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>@<X0>(unsigned __int8 **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X3>, unsigned __int8 **a5@<X8>)
{
  v5 = a2;
  if (!a1[2])
  {
    operator new();
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v5 = *a2;
    v7 = a2[1];
  }

  v8 = *a1;
  v9 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_24;
  }

LABEL_7:
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = &v8[32 * v11 + 16];
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v16 = *v12;
      v13 = *&v8[32 * v11 + 24];
      if (v7 >= v13)
      {
        v17 = *&v8[32 * v11 + 24];
      }

      else
      {
        v17 = v7;
      }

      result = memcmp(v16, v5, v17);
      if (result)
      {
LABEL_15:
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (v7 >= v13)
      {
        v14 = *(v12 + 23);
      }

      else
      {
        v14 = v7;
      }

      result = memcmp(v12, v5, v14);
      if (result)
      {
        goto LABEL_15;
      }
    }

    if (v13 < v7)
    {
LABEL_8:
      v10 = v11 + 1;
      v11 = v9;
      goto LABEL_9;
    }

    if (v13 == v7)
    {
      v18 = 0;
      v19 = a5;
      *a5 = v8;
      a5[1] = ((v9 + v10) >> 1);
      goto LABEL_29;
    }

LABEL_9:
    v9 = v11;
  }

  while (v10 != v11);
  while (!v8[11])
  {
    v8 = *&v8[8 * v11 + 240];
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_7;
    }

LABEL_24:
    LODWORD(v11) = 0;
  }

  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v8, v11, a3, a4);
  v19 = a5;
  *a5 = result;
  *(a5 + 2) = v20;
  v18 = 1;
LABEL_29:
  *(v19 + 16) = v18;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int128 **a5)
{
  i = a2;
  v25 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *&a2[8 * a3 + 240];
  for (i = v8; !v8[11]; i = v8)
  {
    v8 = *&v8[8 * v8[10] + 240];
  }

  LODWORD(v25) = v8[10];
  v7 = v8[11];
  if (!v8[11])
  {
    v7 = 7;
  }

  if (v8[10] == v7)
  {
LABEL_9:
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v25;
  v11 = i[10];
  v12 = v25;
  if (v11 > v25)
  {
    v12 = v25;
    if (((v11 - v25) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 32 * i[10];
      v14 = &i[v13 - 16];
      v15 = 32 * v25 - v13;
      do
      {
        *(v14 + 2) = *v14;
        *(v14 + 6) = *(v14 + 2);
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = 0;
        *(v14 + 14) = *(v14 + 6);
        if (v14[23] < 0)
        {
          operator delete(*v14);
        }

        v14 -= 32;
        v15 += 32;
      }

      while (v15);
    }
  }

  v16 = &v9[32 * v12];
  v17 = *a5;
  v18 = **a5;
  *(v16 + 4) = *(*a5 + 2);
  *(v16 + 1) = v18;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = 0;
  *(v16 + 10) = 0;
  v19 = ++v9[10];
  if (!v9[11] && v10 + 1 < v19)
  {
    v20 = v9 + 240;
    do
    {
      v21 = *&v20[8 * (v19 - 1)];
      *&v20[8 * v19] = v21;
      *(v21 + 8) = v19;
    }

    while (v10 + 1 < --v19);
  }

  ++*(a1 + 16);
  return i;
}

void *std::deque<operations_research::SparseBitset<int>>::__append(void *result, unint64_t a2)
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
    result = std::deque<operations_research::SparseBitset<int>>::__add_back_capacity(result, v11);
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
            *v19 = 0;
            *(v19 + 8) = 0uLL;
            *(v19 + 24) = 0uLL;
            *(v19 + 40) = 0uLL;
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

void std::deque<operations_research::SparseBitset<int>>::__erase_to_end(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v5 + v4) / 0x49));
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
    v9 = *v8 + 56 * ((v5 + v4) % 0x49);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = (a3 - *a2) >> 3;
  v11 = 73 * (v8 - a2) + 0x6DB6DB6DB6DB6DB7 * ((v9 - *v8) >> 3) - 0x6DB6DB6DB6DB6DB7 * v10;
  if (v11 < 1)
  {
    return;
  }

  v12 = (v7 + 8 * (v5 / 0x49));
  if (v6 == v7)
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = (*v12 + 56 * (v5 % 0x49));
    if (a3 == v13)
    {
LABEL_13:
      if (v13 == v9)
      {
        goto LABEL_25;
      }

      do
      {
LABEL_18:
        v15 = v13[4];
        if (v15)
        {
          v13[5] = v15;
          operator delete(v15);
        }

        v16 = v13[1];
        if (v16)
        {
          v13[2] = v16;
          operator delete(v16);
        }

        v13 += 7;
        if ((v13 - *v12) == 4088)
        {
          v17 = v12[1];
          ++v12;
          v13 = v17;
        }
      }

      while (v13 != v9);
      v7 = a1[1];
      v6 = a1[2];
      v5 = a1[4];
      v4 = a1[5];
      goto LABEL_25;
    }
  }

  v14 = 73 * (a2 - v12) + 0x6DB6DB6DB6DB6DB7 * v10;
  if (v14 == 0x6DB6DB6DB6DB6DB7 * ((v13 - *v12) >> 3))
  {
    goto LABEL_13;
  }

  if (v14 >= 1)
  {
    v12 += v14 / 0x49uLL;
    v13 = (*v12 + 56 * (v14 % 0x49uLL));
    goto LABEL_13;
  }

  v12 += (72 - v14) / -73;
  v13 = (*v12 + 56 * (73 * ((72 - v14) / 73) - (72 - v14)) + 4032);
  if (v13 != v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  if (v6 == v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = 73 * ((v6 - v7) >> 3) - 1;
  }

  v19 = v4 - v11;
  a1[5] = v19;
  if (v18 - (v19 + v5) >= 0x92)
  {
    do
    {
      operator delete(*(v6 - 8));
      v6 = a1[2] - 8;
      v20 = v6 == a1[1];
      v21 = 73 * ((v6 - a1[1]) >> 3) - 1;
      a1[2] = v6;
      if (v20)
      {
        v21 = 0;
      }
    }

    while ((v21 - (a1[5] + a1[4])) > 0x91);
  }
}

void *std::deque<operations_research::SparseBitset<int>>::__add_back_capacity(void *result, unint64_t a2)
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

void sub_23CD12A34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  return result;
}

char *std::vector<std::pair<int,int>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,int>*>,std::__wrap_iter<std::pair<int,int>*>>(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      a1[1] = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v32 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v11 = v10;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v7) >> 3)
  {
    if (a2 != a3)
    {
      v26 = a3 - a2 - 8;
      if (v26 < 0x78)
      {
        goto LABEL_64;
      }

      v45 = v26 & 0xFFFFFFFFFFFFFFF8 | 4;
      v46 = &v7[v45];
      v47 = a2 + v45;
      v48 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
      v49 = (v7 + 4) >= a2 + v48 || a2 + 4 >= &v7[v48];
      v50 = !v49;
      if (v46 > a2 && v7 < v47)
      {
        goto LABEL_64;
      }

      if (v50)
      {
        goto LABEL_64;
      }

      v52 = (v26 >> 3) + 1;
      v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFF8);
      result = &v7[v53];
      v54 = (a2 + v53);
      v55 = (a2 + 32);
      v56 = v7 + 32;
      v57 = v52 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v59 = *(v55 - 2);
        v58 = *(v55 - 1);
        v61 = *v55;
        v60 = v55[1];
        v55 += 4;
        *(v56 - 2) = v59;
        *(v56 - 1) = v58;
        *v56 = v61;
        v56[1] = v60;
        v56 += 4;
        v57 -= 8;
      }

      while (v57);
      v4 = v54;
      if (v52 != (v52 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_64:
        do
        {
          v27 = *v4++;
          *result = v27;
          result += 8;
        }

        while (v4 != a3);
      }
    }

    a1[1] = result;
  }

  else
  {
    v13 = v12 - v7 + a2;
    if (v12 != v7)
    {
      v14 = v12 - v7 - 8;
      if (v14 < 0x78)
      {
        goto LABEL_65;
      }

      v28 = v14 & 0xFFFFFFFFFFFFFFF8 | 4;
      v29 = &v7[v28];
      v30 = a2 + v28;
      v31 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
      v32 = (v7 + 4) >= a2 + v31 || a2 + 4 >= &v7[v31];
      v33 = !v32;
      if (v29 > a2 && v7 < v30)
      {
        goto LABEL_65;
      }

      if (v33)
      {
        goto LABEL_65;
      }

      v35 = (v14 >> 3) + 1;
      v36 = 8 * (v35 & 0x3FFFFFFFFFFFFFF8);
      result = &v7[v36];
      v37 = (a2 + v36);
      v38 = (a2 + 32);
      v39 = v7 + 32;
      v40 = v35 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v42 = *(v38 - 2);
        v41 = *(v38 - 1);
        v44 = *v38;
        v43 = v38[1];
        v38 += 4;
        *(v39 - 2) = v42;
        *(v39 - 1) = v41;
        *v39 = v44;
        v39[1] = v43;
        v39 += 4;
        v40 -= 8;
      }

      while (v40);
      v4 = v37;
      if (v35 != (v35 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_65:
        do
        {
          v15 = *v4++;
          *result = v15;
          result += 8;
        }

        while (v4 != v13);
      }
    }

    if (v13 == a3)
    {
      a1[1] = v12;
    }

    else
    {
      v16 = v13;
      v17 = a3 - v13 - 8;
      if (v17 < 0x18)
      {
        goto LABEL_21;
      }

      if (&v12[-v13] < 0x20)
      {
        goto LABEL_21;
      }

      v18 = (v17 >> 3) + 1;
      v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
      v16 = (v13 + v19);
      v20 = &v12[v19];
      v21 = v12 + 16;
      v22 = (v13 + 16);
      v23 = v18 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v24 = *v22;
        *(v21 - 1) = *(v22 - 1);
        *v21 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      v12 = v20;
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_21:
        v20 = v12;
        do
        {
          v25 = *v16++;
          *v20 = v25;
          v20 += 8;
        }

        while (v16 != a3);
      }

      a1[1] = v20;
    }
  }

  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string&>,std::tuple<>>@<X0>(unsigned __int8 **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X3>, unsigned __int8 **a5@<X8>)
{
  v5 = a2;
  if (!a1[2])
  {
    operator new();
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v5 = *a2;
    v7 = a2[1];
  }

  v8 = *a1;
  v9 = (*a1)[10];
  if (!(*a1)[10])
  {
    goto LABEL_24;
  }

LABEL_7:
  v10 = 0;
  do
  {
    v11 = (v9 + v10) >> 1;
    v12 = &v8[32 * v11 + 16];
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v16 = *v12;
      v13 = *&v8[32 * v11 + 24];
      if (v7 >= v13)
      {
        v17 = *&v8[32 * v11 + 24];
      }

      else
      {
        v17 = v7;
      }

      result = memcmp(v16, v5, v17);
      if (result)
      {
LABEL_15:
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (v7 >= v13)
      {
        v14 = *(v12 + 23);
      }

      else
      {
        v14 = v7;
      }

      result = memcmp(v12, v5, v14);
      if (result)
      {
        goto LABEL_15;
      }
    }

    if (v13 < v7)
    {
LABEL_8:
      v10 = v11 + 1;
      v11 = v9;
      goto LABEL_9;
    }

    if (v13 == v7)
    {
      v18 = 0;
      v19 = a5;
      *a5 = v8;
      a5[1] = ((v9 + v10) >> 1);
      goto LABEL_29;
    }

LABEL_9:
    v9 = v11;
  }

  while (v10 != v11);
  while (!v8[11])
  {
    v8 = *&v8[8 * v11 + 240];
    v9 = v8[10];
    if (v8[10])
    {
      goto LABEL_7;
    }

LABEL_24:
    LODWORD(v11) = 0;
  }

  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string&>,std::tuple<>>(a1, v8, v11, a3, a4);
  v19 = a5;
  *a5 = result;
  *(a5 + 2) = v20;
  v18 = 1;
LABEL_29:
  *(v19 + 16) = v18;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int128 **a5)
{
  i = a2;
  v27 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *&a2[8 * a3 + 240];
  for (i = v8; !v8[11]; i = v8)
  {
    v8 = *&v8[8 * v8[10] + 240];
  }

  LODWORD(v27) = v8[10];
  v7 = v8[11];
  if (!v8[11])
  {
    v7 = 7;
  }

  if (v8[10] == v7)
  {
LABEL_9:
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v27;
  v11 = i[10];
  v12 = v27;
  if (v11 > v27)
  {
    v12 = v27;
    if (((v11 - v27) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 32 * i[10];
      v14 = &i[v13 - 16];
      v15 = 32 * v27 - v13;
      do
      {
        *(v14 + 2) = *v14;
        v16 = *(v14 + 2);
        v17 = *(v14 + 3);
        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        *v14 = 0;
        *(v14 + 6) = v16;
        *(v14 + 7) = v17;
        if (v14[23] < 0)
        {
          operator delete(*v14);
        }

        v14 -= 32;
        v15 += 32;
      }

      while (v15);
    }
  }

  v18 = &v9[32 * v12];
  v19 = *a5;
  if (*(*a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v18 + 16), *v19, *(v19 + 1));
    *(v18 + 5) = 0;
    v21 = ++v9[10];
    if (v9[11])
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *v19;
    *(v18 + 4) = *(v19 + 2);
    *(v18 + 5) = 0;
    *(v18 + 1) = v20;
    v21 = ++v9[10];
    if (v9[11])
    {
      goto LABEL_26;
    }
  }

  if (v10 + 1 < v21)
  {
    v22 = v9 + 240;
    do
    {
      v23 = *&v22[8 * (v21 - 1)];
      *&v22[8 * v21] = v23;
      *(v23 + 8) = v21;
    }

    while (v10 + 1 < --v21);
  }

LABEL_26:
  ++*(a1 + 16);
  return i;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 240);
    v7 = v6[10];
    if (v7 <= 6)
    {
      v8 = *(a2 + 8);
      v9 = (7 - v7) >> (v8 < 7) <= 1u ? 1 : (7 - v7) >> (v8 < 7);
      v10 = (v9 + v7);
      if (v8 >= v9 || v10 <= 6)
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
        v12 = *(a2 + 8) - v9;
        *(a2 + 2) = v12;
        if (v12 >= 0)
        {
          return;
        }

        v23 = v12 + v6[10] + 1;
LABEL_30:
        *(a2 + 2) = v23;
        *a2 = v6;
        return;
      }
    }
  }

  v13 = *(v4 + 10);
  if (v5 >= v13 || (v6 = *(v4 + 8 * (v5 + 1) + 240), v14 = v6[10], v14 > 6) || ((v15 = *(a2 + 2), (7 - v14) >> (v15 > 0) <= 1u) ? (v16 = 1) : (v16 = (7 - v14) >> (v15 > 0)), (v17 = (v16 + v14), (v3[10] - v16) < v15) ? (v18 = v17 > 6) : (v18 = 0), v18))
  {
    if (v13 == 7)
    {
      v24 = v4;
      v25 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_or_split(a1, &v24);
      v3 = *a2;
      v21 = **a2;
    }

    v22 = v3[8] + 1;
    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_left_to_right(v3, v16, *(v4 + 8 * (v5 + 1) + 240));
  v19 = *(a2 + 2);
  v20 = (*a2)[10];
  if (v19 > v20)
  {
    v23 = v19 + ~v20;
    goto LABEL_30;
  }
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_right_to_left(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a1 + 32 * *(a1 + 10);
  v7 = *a1 + 32 * *(a1 + 8);
  v8 = *(v7 + 32);
  *(v6 + 16) = *(v7 + 16);
  *(v6 + 32) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v6 + 40) = *(v7 + 40);
  if (*(v7 + 39) < 0)
  {
    operator delete(*(v7 + 16));
  }

  v9 = (a2 - 1);
  v10 = a3 + 32 * v9;
  if ((v9 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 0;
    v12 = a1 + 32 * *(a1 + 10);
    do
    {
      v13 = a3 + v11;
      v14 = v12 + v11;
      v15 = *(a3 + v11 + 16);
      *(v14 + 64) = *(a3 + v11 + 32);
      *(v14 + 48) = v15;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v14 + 72) = *(a3 + v11 + 40);
      if (*(a3 + v11 + 39) < 0)
      {
        operator delete(*(v13 + 16));
      }

      v11 += 32;
    }

    while (32 * a2 - 32 != v11);
  }

  v16 = *a1 + 32 * *(a1 + 8);
  v17 = *(v10 + 16);
  *(v16 + 32) = *(v10 + 32);
  *(v16 + 16) = v17;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v16 + 40) = *(v10 + 40);
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v18 = *(a3 + 10);
  v19 = a2;
  if (((v18 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 0;
    v21 = a3 + 32 * a2;
    v22 = 32 * v18 - 32 * a2;
    do
    {
      v23 = a3 + v20;
      v24 = v21 + v20;
      v25 = *(v21 + v20 + 16);
      v26 = *(v21 + v20 + 40);
      *(v23 + 32) = *(v21 + v20 + 32);
      *(v23 + 40) = v26;
      *(v23 + 16) = v25;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      if (*(v21 + v20 + 39) < 0)
      {
        operator delete(*(v24 + 16));
      }

      v20 += 32;
    }

    while (v22 != v20);
  }

  if (!*(a1 + 11))
  {
    if (a2)
    {
      v27 = (a3 + 240);
      v28 = 1;
      do
      {
        v29 = *(a1 + 10) + v28;
        v30 = *v27++;
        *(a1 + 240 + 8 * v29) = v30;
        *(v30 + 8) = v29;
        *v30 = a1;
        ++v28;
        --v19;
      }

      while (v19);
    }

    if (*(a3 + 10) >= a2)
    {
      v31 = 0;
      v32 = a3 + 240;
      do
      {
        v33 = *(v32 + 8 * (v31 + a2));
        *(v32 + 8 * v31) = v33;
        *(v33 + 8) = v31;
        *v33 = a3;
        ++v31;
      }

      while ((*(a3 + 10) - a2) >= v31);
    }
  }

  *(a1 + 10) += a2;
  *(a3 + 10) -= a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::rebalance_left_to_right(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  if (*(a3 + 10))
  {
    v7 = 0;
    v8 = 32 * *(a3 + 10);
    v9 = a3 + 32 * a2;
    v10 = a3;
    do
    {
      v11 = (v9 + v8);
      v12 = (v10 + v8);
      v13 = *(v10 + v8 - 16);
      *v11 = *(v10 + v8);
      *(v11 - 1) = v13;
      *(v12 - 1) = 0;
      *v12 = 0;
      *(v12 - 2) = 0;
      v11[1] = *(v10 + v8 + 8);
      if (*(v10 + v8 + 7) < 0)
      {
        operator delete(*(v12 - 2));
      }

      v10 -= 32;
      v9 -= 32;
      v7 += 32;
    }

    while (v8 != v7);
  }

  v14 = a2 - 1;
  v15 = v6 + 32 * v14;
  v16 = *a1 + 32 * *(a1 + 8);
  v17 = *(v16 + 16);
  *(v15 + 16) = *(v16 + 32);
  *v15 = v17;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  *(v15 + 24) = *(v16 + 40);
  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  v18 = *(a1 + 10);
  if ((v14 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v19 = 0;
    v20 = 32 * a2;
    v21 = a1 - v20 + 32 * v18;
    v22 = v20 - 32;
    do
    {
      v23 = v6 + v19;
      v24 = v21 + v19;
      v25 = *(v21 + v19 + 48);
      *(v23 + 16) = *(v21 + v19 + 64);
      *v23 = v25;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      *(v24 + 48) = 0;
      *(v23 + 24) = *(v21 + v19 + 72);
      if (*(v21 + v19 + 71) < 0)
      {
        operator delete(*(v24 + 48));
      }

      v19 += 32;
    }

    while (v22 != v19);
    LODWORD(v18) = *(a1 + 10);
  }

  v26 = *a1 + 32 * *(a1 + 8);
  v27 = a1 + 16 + 32 * (v18 - a2);
  v28 = *v27;
  *(v26 + 32) = *(v27 + 16);
  *(v26 + 16) = v28;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 0;
  *(v26 + 40) = *(v27 + 24);
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
    if (*(a1 + 11))
    {
      goto LABEL_27;
    }
  }

  else if (*(a1 + 11))
  {
    goto LABEL_27;
  }

  if (((*(a3 + 10) + 1) & 0x100) == 0)
  {
    v29 = a3 + 240;
    v30 = (*(a3 + 10) + 1);
    do
    {
      v31 = *(v29 + 8 * (v30 - 1));
      *(v29 + 8 * (v30 - 1 + a2)) = v31;
      *(v31 + 8) = v30 - 1 + a2;
      *v31 = a3;
      --v30;
    }

    while (v30);
  }

  if (a2)
  {
    v32 = 0;
    if ((a2 + 1) <= 2u)
    {
      v33 = 2;
    }

    else
    {
      v33 = (a2 + 1);
    }

    v34 = v33 - 1;
    do
    {
      v35 = *(a1 + 240 + 8 * (v32 + 1 - a2 + *(a1 + 10)));
      *(a3 + 8 * v32 + 240) = v35;
      *(v35 + 8) = v32;
      *v35 = a3;
      ++v32;
    }

    while (v34 != v32);
  }

LABEL_27:
  *(a1 + 10) -= a2;
  *(a3 + 10) += a2;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,long long,std::less<std::string>,std::allocator<std::pair<std::string const,long long>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = a3 + 16;
    v9 = &a1[32 * v6 + 40];
    v10 = 32 * *(a3 + 10);
    do
    {
      v11 = *(v9 - 24);
      *(v8 + 16) = *(v9 - 1);
      *v8 = v11;
      *(v9 - 2) = 0;
      *(v9 - 1) = 0;
      *(v9 - 3) = 0;
      *(v8 + 24) = *v9;
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
      }

      v8 += 32;
      v9 += 32;
      v10 -= 32;
    }

    while (v10);
    v6 = a1[10];
  }

  v12 = v6 - 1;
  a1[10] = v12;
  v13 = *a1;
  v14 = a1[8];
  v15 = &v7[32 * v12];
  v16 = *(*a1 + 10);
  if (v16 > v14 && ((v16 - v14) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 32 * *(*a1 + 10);
    v18 = v17 + v13 - 16;
    v19 = 32 * v14 - v17;
    do
    {
      *(v18 + 32) = *v18;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 0;
      *(v18 + 48) = v20;
      *(v18 + 56) = v21;
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      v18 -= 32;
      v19 += 32;
    }

    while (v19);
  }

  v22 = v13 + 32 * v14;
  v23 = *v15;
  *(v22 + 32) = *(v15 + 2);
  *(v22 + 16) = v23;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = 0;
  *(v22 + 40) = *(v15 + 3);
  v24 = (*(v13 + 10))++ + 1;
  if (!*(v13 + 11) && v14 + 1 < v24)
  {
    v25 = v13 + 240;
    do
    {
      v26 = *(v25 + 8 * (v24 - 1));
      *(v25 + 8 * v24) = v26;
      *(v26 + 8) = v24;
    }

    while (v14 + 1 < --v24);
  }

  v28 = &v7[32 * a1[10]];
  if (v28[23] < 0)
  {
    operator delete(*v28);
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v29 = a1[11];
  if (!a1[11])
  {
    v30 = a1[10];
    do
    {
      v31 = *&a1[8 * ++v30 + 240];
      *(a3 + 240 + 8 * v29) = v31;
      *(v31 + 8) = v29;
      *v31 = a3;
      ++v29;
    }

    while (*(a3 + 10) >= v29);
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(uint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = *(v5 + 23);
  _NF = (v20 & 0x80u) != 0;
  if ((v20 & 0x80u) == 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::string,long long> *)#1}::operator()(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v8, a4, a5);
  v10 = (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
  v11 = *(a1 + 8);
  v12 = v11[2];
  v13 = *v11;
  v14 = ((v10 >> 7) ^ (v12 >> 12)) & v13;
  if (*(v12 + v14) >= -1)
  {
    v15 = 0;
    for (i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080; !i; i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080)
    {
      v15 += 8;
      v14 = (v15 + v14) & v13;
    }

    v14 = (v14 + (__clz(__rbit64(i)) >> 3)) & v13;
  }

  else
  {
    v15 = 0;
  }

  v17 = v10 & 0x7F;
  *(v12 + v14) = v17;
  *(v12 + ((v14 - 7) & v13) + (v13 & 7)) = v17;
  v18 = **(a1 + 16) + 32 * v14;
  v19 = *v5;
  *(v18 + 16) = *(v5 + 2);
  *v18 = v19;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  *(v18 + 24) = *(v5 + 3);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  return v15;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,long long>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,long long>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v51 = (a2 - 32);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v33 = a2 - 32;
        v32 = *(a2 - 4);
        v34 = *(v9 + 23);
        v35 = *(a2 - 9);
        if (v35 >= 0)
        {
          v36 = *(a2 - 9);
        }

        else
        {
          v36 = *(a2 - 3);
        }

        if (v35 >= 0)
        {
          v37 = a2 - 32;
        }

        else
        {
          v37 = *(a2 - 4);
        }

        if (v34 >= 0)
        {
          v38 = *(v9 + 23);
        }

        else
        {
          v38 = v9[1];
        }

        if (v34 >= 0)
        {
          v39 = v9;
        }

        else
        {
          v39 = *v9;
        }

        if (v38 >= v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = v38;
        }

        v41 = memcmp(v37, v39, v40);
        v42 = v36 < v38;
        if (v41)
        {
          v42 = v41 < 0;
        }

        if (v42)
        {
          goto LABEL_64;
        }

        v49 = memcmp(v39, v37, v40);
        v50 = v38 < v36;
        if (v49)
        {
          v50 = v49 < 0;
        }

        if (!v50 && *(a2 - 1) < v9[3])
        {
LABEL_64:
          v55 = v9[2];
          v53 = *v9;
          v43 = *v33;
          v9[2] = *(a2 - 2);
          *v9 = v43;
          *v33 = v53;
          *(a2 - 2) = v55;
          v44 = v9[3];
          v9[3] = *(a2 - 1);
          *(a2 - 1) = v44;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(v9, v9 + 2, v9 + 4, v51);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(v9, (v9 + 4), (v9 + 8), v9 + 6, v51);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(v9, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v45 = (v12 - 2) >> 1;
        v46 = v45 + 1;
        v47 = &v9[4 * v45];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(v9, a3, (a2 - v9) >> 5, v47);
          v47 -= 2;
          --v46;
        }

        while (v46);
        do
        {
          std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,long long> *>(v9, a2, a3, v12);
          a2 -= 32;
        }

        while (v12-- > 2);
      }

      return;
    }

    v13 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>((a1 + 32 * (v12 >> 1)), a1, v51);
      if (a5)
      {
        goto LABEL_38;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, (a1 + 32 * (v12 >> 1)), v51);
      v14 = 32 * (v12 >> 1);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>((a1 + 32), (v14 + a1 - 32), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>((a1 + 64), (a1 + 32 + v14), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>((v14 + a1 - 32), v13, (a1 + 32 + v14));
      v15 = *(a1 + 24);
      v54 = *(a1 + 16);
      v52 = *a1;
      v16 = v13[2];
      v17 = v13[3];
      *a1 = *v13;
      *(a1 + 16) = v16;
      *(a1 + 24) = v17;
      *v13 = v52;
      v13[2] = v54;
      v13[3] = v15;
      if (a5)
      {
        goto LABEL_38;
      }
    }

    v18 = *(a1 + 23);
    v19 = *(a1 - 9);
    if (v19 >= 0)
    {
      v20 = *(a1 - 9);
    }

    else
    {
      v20 = *(a1 - 24);
    }

    if (v19 >= 0)
    {
      v21 = (a1 - 32);
    }

    else
    {
      v21 = *(a1 - 32);
    }

    if (v18 >= 0)
    {
      v22 = *(a1 + 23);
    }

    else
    {
      v22 = *(a1 + 8);
    }

    if (v18 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, v23, v24);
    v26 = v20 < v22;
    if (v25)
    {
      v26 = v25 < 0;
    }

    if (!v26)
    {
      v27 = memcmp(v23, v21, v24);
      v28 = v22 < v20;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28 || *(a1 - 8) >= *(a1 + 24))
      {
        v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,long long> *,std::__less<void,void> &>(a1, a2);
        goto LABEL_43;
      }
    }

LABEL_38:
    v29 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,long long> *,std::__less<void,void> &>(a1, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_41;
    }

    v31 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(a1, v29);
    v9 = v29 + 4;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>((v29 + 4), a2))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v31 & 1) == 0)
    {
LABEL_41:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,false>(a1, v29, a3, -v11, a5 & 1);
      v9 = v29 + 4;
LABEL_43:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(v9, v9 + 4, v51);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  v14 = v8 < v10;
  if (v13)
  {
    v14 = v13 < 0;
  }

  if (v14)
  {
    goto LABEL_19;
  }

  v25 = memcmp(v11, v9, v12);
  v26 = v10 < v8;
  if (v25)
  {
    v26 = v25 < 0;
  }

  if (!v26 && a2[3] < a1[3])
  {
LABEL_19:
    v15 = *(a3 + 23);
    if (v15 >= 0)
    {
      v16 = *(a3 + 23);
    }

    else
    {
      v16 = a3[1];
    }

    if (v15 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v8 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    v19 = memcmp(v17, v9, v18);
    v20 = v16 < v8;
    if (v19)
    {
      v20 = v19 < 0;
    }

    if (v20)
    {
      goto LABEL_31;
    }

    v50 = memcmp(v9, v17, v18);
    v51 = v8 < v16;
    if (v50)
    {
      v51 = v50 < 0;
    }

    if (!v51 && a3[3] < a2[3])
    {
LABEL_31:
      v21 = a1[2];
      v22 = *a1;
      v23 = a3[2];
      *a1 = *a3;
      a1[2] = v23;
      *a3 = v22;
      a3[2] = v21;
      v24 = (a1 + 3);
    }

    else
    {
      v52 = a1[2];
      v53 = *a1;
      v54 = a2[2];
      *a1 = *a2;
      a1[2] = v54;
      *a2 = v53;
      a2[2] = v52;
      v24 = (a2 + 3);
      v55 = a1[3];
      a1[3] = a2[3];
      a2[3] = v55;
      v56 = *(a2 + 23);
      v57 = *(a3 + 23);
      if (v57 >= 0)
      {
        v58 = *(a3 + 23);
      }

      else
      {
        v58 = a3[1];
      }

      if (v57 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v56 >= 0)
      {
        v60 = *(a2 + 23);
      }

      else
      {
        v60 = a2[1];
      }

      if (v56 >= 0)
      {
        v61 = a2;
      }

      else
      {
        v61 = *a2;
      }

      if (v60 >= v58)
      {
        v62 = v58;
      }

      else
      {
        v62 = v60;
      }

      v63 = memcmp(v59, v61, v62);
      v64 = v58 < v60;
      if (v63)
      {
        v64 = v63 < 0;
      }

      if (!v64)
      {
        v74 = memcmp(v61, v59, v62);
        v75 = v60 < v58;
        if (v74)
        {
          v75 = v74 < 0;
        }

        if (v75 || a3[3] >= v55)
        {
          return 1;
        }
      }

      v65 = a2[2];
      v66 = *a2;
      v67 = a3[2];
      *a2 = *a3;
      a2[2] = v67;
      *a3 = v66;
      a3[2] = v65;
    }

    v37 = (a3 + 3);
LABEL_91:
    v68 = *v24;
    *v24 = *v37;
    *v37 = v68;
    return 1;
  }

  v27 = *(a3 + 23);
  if (v27 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v27 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v8 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v8;
  }

  v31 = memcmp(v29, v9, v30);
  v32 = v28 < v8;
  if (v31)
  {
    v32 = v31 < 0;
  }

  if (v32)
  {
    goto LABEL_48;
  }

  v70 = memcmp(v9, v29, v30);
  v71 = v8 < v28;
  if (v70)
  {
    v71 = v70 < 0;
  }

  if (!v71 && a3[3] < a2[3])
  {
LABEL_48:
    v33 = a2[2];
    v34 = *a2;
    v35 = a3[2];
    *a2 = *a3;
    a2[2] = v35;
    *a3 = v34;
    a3[2] = v33;
    v37 = (a2 + 3);
    v36 = a2[3];
    a2[3] = a3[3];
    a3[3] = v36;
    v38 = *(a1 + 23);
    v39 = *(a2 + 23);
    if (v39 >= 0)
    {
      v40 = *(a2 + 23);
    }

    else
    {
      v40 = a2[1];
    }

    if (v39 >= 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = *a2;
    }

    if (v38 >= 0)
    {
      v42 = *(a1 + 23);
    }

    else
    {
      v42 = a1[1];
    }

    if (v38 >= 0)
    {
      v43 = a1;
    }

    else
    {
      v43 = *a1;
    }

    if (v42 >= v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = v42;
    }

    v45 = memcmp(v41, v43, v44);
    v46 = v40 < v42;
    if (v45)
    {
      v46 = v45 < 0;
    }

    if (!v46)
    {
      v72 = memcmp(v43, v41, v44);
      v73 = v42 < v40;
      if (v72)
      {
        v73 = v72 < 0;
      }

      if (v73 || *v37 >= a1[3])
      {
        return 1;
      }
    }

    v47 = a1[2];
    v48 = *a1;
    v49 = a2[2];
    *a1 = *a2;
    a1[2] = v49;
    *a2 = v48;
    a2[2] = v47;
    v24 = (a1 + 3);
    goto LABEL_91;
  }

  return 0;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(__int128 *a1, __int128 *a2, __int128 *a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 1);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    goto LABEL_19;
  }

  result = memcmp(v13, v11, v14);
  v47 = v12 < v10;
  if (result)
  {
    v47 = result < 0;
  }

  if (!v47 && a4[3] < *(a3 + 3))
  {
LABEL_19:
    v17 = *(a3 + 2);
    v18 = *a3;
    v19 = a4[2];
    *a3 = *a4;
    *(a3 + 2) = v19;
    *a4 = v18;
    a4[2] = v17;
    v20 = *(a3 + 3);
    *(a3 + 3) = a4[3];
    a4[3] = v20;
    v21 = *(a2 + 23);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 1);
    }

    if (v22 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v21 >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = *(a2 + 1);
    }

    if (v21 >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    if (v25 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(v24, v26, v27);
    v29 = v23 < v25;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (v29)
    {
      goto LABEL_37;
    }

    result = memcmp(v26, v24, v27);
    v48 = v25 < v23;
    if (result)
    {
      v48 = result < 0;
    }

    if (!v48 && *(a3 + 3) < *(a2 + 3))
    {
LABEL_37:
      v30 = *(a2 + 2);
      v31 = *a2;
      v32 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v32;
      *a3 = v31;
      *(a3 + 2) = v30;
      v33 = *(a2 + 3);
      *(a2 + 3) = *(a3 + 3);
      *(a3 + 3) = v33;
      v34 = *(a1 + 23);
      v35 = *(a2 + 23);
      if (v35 >= 0)
      {
        v36 = *(a2 + 23);
      }

      else
      {
        v36 = *(a2 + 1);
      }

      if (v35 >= 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = *a2;
      }

      if (v34 >= 0)
      {
        v38 = *(a1 + 23);
      }

      else
      {
        v38 = *(a1 + 1);
      }

      if (v34 >= 0)
      {
        v39 = a1;
      }

      else
      {
        v39 = *a1;
      }

      if (v38 >= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = v38;
      }

      result = memcmp(v37, v39, v40);
      v42 = v36 < v38;
      if (result)
      {
        v42 = result < 0;
      }

      if (v42)
      {
        goto LABEL_55;
      }

      result = memcmp(v39, v37, v40);
      v49 = v38 < v36;
      if (result)
      {
        v49 = result < 0;
      }

      if (!v49 && *(a2 + 3) < *(a1 + 3))
      {
LABEL_55:
        v43 = *(a1 + 2);
        v44 = *a1;
        v45 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v45;
        *a2 = v44;
        *(a2 + 2) = v43;
        v46 = *(a1 + 3);
        *(a1 + 3) = *(a2 + 3);
        *(a2 + 3) = v46;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 1);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  result = memcmp(v15, v13, v16);
  v62 = v14 < v12;
  if (result)
  {
    v62 = result < 0;
  }

  if (!v62 && a5[3] < *(a4 + 3))
  {
LABEL_19:
    v19 = *(a4 + 2);
    v20 = *a4;
    v21 = a5[2];
    *a4 = *a5;
    *(a4 + 2) = v21;
    *a5 = v20;
    a5[2] = v19;
    v22 = *(a4 + 3);
    *(a4 + 3) = a5[3];
    a5[3] = v22;
    v23 = *(a3 + 23);
    v24 = *(a4 + 23);
    if (v24 >= 0)
    {
      v25 = *(a4 + 23);
    }

    else
    {
      v25 = *(a4 + 1);
    }

    if (v24 >= 0)
    {
      v26 = a4;
    }

    else
    {
      v26 = *a4;
    }

    if (v23 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = *(a3 + 8);
    }

    if (v23 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      goto LABEL_37;
    }

    result = memcmp(v28, v26, v29);
    v63 = v27 < v25;
    if (result)
    {
      v63 = result < 0;
    }

    if (!v63 && *(a4 + 3) < *(a3 + 24))
    {
LABEL_37:
      v32 = *(a3 + 16);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      v35 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 3);
      *(a4 + 3) = v35;
      v36 = *(a2 + 23);
      v37 = *(a3 + 23);
      if (v37 >= 0)
      {
        v38 = *(a3 + 23);
      }

      else
      {
        v38 = *(a3 + 8);
      }

      if (v37 >= 0)
      {
        v39 = a3;
      }

      else
      {
        v39 = *a3;
      }

      if (v36 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      if (v36 >= 0)
      {
        v41 = a2;
      }

      else
      {
        v41 = *a2;
      }

      if (v40 >= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v40;
      }

      v43 = memcmp(v39, v41, v42);
      v44 = v38 < v40;
      if (v43)
      {
        v44 = v43 < 0;
      }

      if (v44)
      {
        goto LABEL_55;
      }

      result = memcmp(v41, v39, v42);
      v64 = v40 < v38;
      if (result)
      {
        v64 = result < 0;
      }

      if (!v64 && *(a3 + 24) < *(a2 + 24))
      {
LABEL_55:
        v45 = *(a2 + 16);
        v46 = *a2;
        v47 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v47;
        *a3 = v46;
        *(a3 + 16) = v45;
        v48 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v48;
        v49 = *(a1 + 23);
        v50 = *(a2 + 23);
        if (v50 >= 0)
        {
          v51 = *(a2 + 23);
        }

        else
        {
          v51 = *(a2 + 8);
        }

        if (v50 >= 0)
        {
          v52 = a2;
        }

        else
        {
          v52 = *a2;
        }

        if (v49 >= 0)
        {
          v53 = *(a1 + 23);
        }

        else
        {
          v53 = *(a1 + 8);
        }

        if (v49 >= 0)
        {
          v54 = a1;
        }

        else
        {
          v54 = *a1;
        }

        if (v53 >= v51)
        {
          v55 = v51;
        }

        else
        {
          v55 = v53;
        }

        result = memcmp(v52, v54, v55);
        v57 = v51 < v53;
        if (result)
        {
          v57 = result < 0;
        }

        if (v57)
        {
          goto LABEL_73;
        }

        result = memcmp(v54, v52, v55);
        v65 = v53 < v51;
        if (result)
        {
          v65 = result < 0;
        }

        if (!v65 && *(a2 + 24) < *(a1 + 24))
        {
LABEL_73:
          v58 = *(a1 + 16);
          v59 = *a1;
          v60 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v60;
          *a2 = v59;
          *(a2 + 16) = v58;
          v61 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v61;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(char *a1, char *a2)
{
  if (a1 != a2)
  {
    v40 = v2;
    v41 = v3;
    v6 = (a1 + 32);
    if (a1 + 32 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v10 = v8;
        v8 = v6;
        v11 = *(v10 + 23);
        v12 = *(v10 + 55);
        if (v12 >= 0)
        {
          v13 = *(v10 + 55);
        }

        else
        {
          v13 = v10[5];
        }

        if (v12 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = v10[4];
        }

        if (v11 >= 0)
        {
          v15 = *(v10 + 23);
        }

        else
        {
          v15 = v10[1];
        }

        if (v11 >= 0)
        {
          v16 = v10;
        }

        else
        {
          v16 = *v10;
        }

        if (v15 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        v18 = memcmp(v14, v16, v17);
        v19 = v13 < v15;
        if (v18)
        {
          v19 = v18 < 0;
        }

        if (v19)
        {
          goto LABEL_24;
        }

        v35 = memcmp(v16, v14, v17);
        v36 = v15 < v13;
        if (v35)
        {
          v36 = v35 < 0;
        }

        if (!v36 && v10[7] < v10[3])
        {
LABEL_24:
          v38 = v8[2];
          v37 = *v8;
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v39 = v10[7];
          if (SHIBYTE(v38) >= 0)
          {
            v20 = HIBYTE(v38);
          }

          else
          {
            v20 = *(&v37 + 1);
          }

          if (SHIBYTE(v38) >= 0)
          {
            v21 = &v37;
          }

          else
          {
            v21 = v37;
          }

          for (i = v7; ; i -= 32)
          {
            v23 = &a1[i];
            if (a1[i + 55] < 0)
            {
              operator delete(*(v23 + 4));
            }

            *(v23 + 2) = *v23;
            v24 = *(v23 + 2);
            v25 = *(v23 + 3);
            v23[23] = 0;
            *v23 = 0;
            *(v23 + 6) = v24;
            *(v23 + 7) = v25;
            if (!i)
            {
              break;
            }

            v26 = a1[i - 9];
            if (v26 >= 0)
            {
              v27 = a1[i - 9];
            }

            else
            {
              v27 = *&a1[i - 24];
            }

            if (v26 >= 0)
            {
              v28 = &a1[i - 32];
            }

            else
            {
              v28 = *&a1[i - 32];
            }

            if (v27 >= v20)
            {
              v29 = v20;
            }

            else
            {
              v29 = v27;
            }

            v30 = memcmp(v21, v28, v29);
            v31 = v20 < v27;
            if (v30)
            {
              v31 = v30 < 0;
            }

            if (!v31)
            {
              v32 = memcmp(v28, v21, v29);
              v33 = v27 < v20;
              if (v32)
              {
                v33 = v32 < 0;
              }

              if (v33 || v39 >= *&a1[i - 8])
              {
                v34 = &a1[i];
                if ((a1[i + 23] & 0x80000000) == 0)
                {
                  goto LABEL_4;
                }

                goto LABEL_59;
              }
            }
          }

          v34 = a1;
          if ((a1[23] & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_59:
          operator delete(*v34);
LABEL_4:
          *v34 = v37;
          v9 = v39;
          *(v34 + 2) = v38;
          *(v34 + 3) = v9;
        }

        v6 = v8 + 4;
        v7 += 32;
      }

      while (v8 + 4 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v37 = v2;
    v38 = v3;
    v5 = a1;
    v6 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = a1 + 7;
      do
      {
        v9 = v5;
        v5 = v6;
        v10 = *(v9 + 23);
        v11 = *(v9 + 55);
        if (v11 >= 0)
        {
          v12 = *(v9 + 55);
        }

        else
        {
          v12 = v9[5];
        }

        if (v11 >= 0)
        {
          v13 = v6;
        }

        else
        {
          v13 = v9[4];
        }

        if (v10 >= 0)
        {
          v14 = *(v9 + 23);
        }

        else
        {
          v14 = v9[1];
        }

        if (v10 >= 0)
        {
          v15 = v9;
        }

        else
        {
          v15 = *v9;
        }

        if (v14 >= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v13, v15, v16);
        v18 = v12 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (v18)
        {
          goto LABEL_24;
        }

        v32 = memcmp(v15, v13, v16);
        v33 = v14 < v12;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (!v33 && v9[7] < v9[3])
        {
LABEL_24:
          v35 = v5[2];
          v34 = *v5;
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v36 = v9[7];
          if (SHIBYTE(v35) >= 0)
          {
            v19 = HIBYTE(v35);
          }

          else
          {
            v19 = *(&v34 + 1);
          }

          if (SHIBYTE(v35) >= 0)
          {
            v20 = &v34;
          }

          else
          {
            v20 = v34;
          }

          for (i = v7; ; i -= 4)
          {
            v22 = (i - 3);
            if (*(i - 1) < 0)
            {
              operator delete(*v22);
            }

            v23 = (i - 7);
            *v22 = *(i - 7);
            *(i - 1) = *(i - 5);
            *(i - 33) = 0;
            *(i - 56) = 0;
            *i = *(i - 4);
            v24 = *(i - 65);
            if (v24 >= 0)
            {
              v25 = *(i - 65);
            }

            else
            {
              v25 = *(i - 10);
            }

            if (v24 >= 0)
            {
              v26 = i - 11;
            }

            else
            {
              v26 = *(i - 11);
            }

            if (v25 >= v19)
            {
              v27 = v19;
            }

            else
            {
              v27 = v25;
            }

            v28 = memcmp(v20, v26, v27);
            v29 = v19 < v25;
            if (v28)
            {
              v29 = v28 < 0;
            }

            if (!v29)
            {
              v30 = memcmp(v26, v20, v27);
              v31 = v25 < v19;
              if (v30)
              {
                v31 = v30 < 0;
              }

              if (v31 || v36 >= *(i - 8))
              {
                break;
              }
            }
          }

          if (*(i - 33) < 0)
          {
            operator delete(*v23);
          }

          *v23 = v34;
          v8 = v36;
          *(i - 5) = v35;
          *(i - 4) = v8;
        }

        v6 = v5 + 4;
        v7 += 4;
      }

      while (v5 + 4 != a2);
    }
  }
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,long long> *,std::__less<void,void> &>(uint64_t a1, _OWORD *a2)
{
  v2 = a2;
  *__p = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v72 = v4;
  v73 = v5;
  v70 = v5;
  v6 = *(a2 - 4);
  v7 = *(a2 - 9);
  v8 = *(a2 - 3);
  if (SHIBYTE(v4) >= 0)
  {
    v9 = HIBYTE(v72);
  }

  else
  {
    v9 = __p[1];
  }

  if (SHIBYTE(v4) >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v11 = *(a2 - 9);
  }

  else
  {
    v11 = *(a2 - 3);
  }

  if ((v7 & 0x80u) == 0)
  {
    v12 = a2 - 2;
  }

  else
  {
    v12 = *(a2 - 4);
  }

  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = memcmp(v10, v12, v13);
  v15 = v9 < v11;
  if (v14)
  {
    v15 = v14 < 0;
  }

  v69 = a1;
  if (v15)
  {
    goto LABEL_19;
  }

  v59 = memcmp(v12, v10, v13);
  v60 = v11 < v9;
  if (v59)
  {
    v60 = v59 < 0;
  }

  if (!v60 && v70 < *(v2 - 1))
  {
LABEL_19:
    for (i = (a1 + 32); ; i += 4)
    {
      v17 = *(i + 23);
      if (v17 >= 0)
      {
        v18 = *(i + 23);
      }

      else
      {
        v18 = i[1];
      }

      if (v17 >= 0)
      {
        v19 = i;
      }

      else
      {
        v19 = *i;
      }

      if (v18 >= v9)
      {
        v20 = v9;
      }

      else
      {
        v20 = v18;
      }

      v21 = memcmp(v10, v19, v20);
      v22 = v9 < v18;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (v22)
      {
        break;
      }

      v23 = memcmp(v19, v10, v20);
      v24 = v18 < v9;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (!v24 && v70 < i[3])
      {
        break;
      }
    }
  }

  else
  {
    for (i = (a1 + 32); i < v2; i += 4)
    {
      v61 = *(i + 23);
      if (v61 >= 0)
      {
        v62 = *(i + 23);
      }

      else
      {
        v62 = i[1];
      }

      if (v61 >= 0)
      {
        v63 = i;
      }

      else
      {
        v63 = *i;
      }

      if (v62 >= v9)
      {
        v64 = v9;
      }

      else
      {
        v64 = v62;
      }

      v65 = memcmp(v10, v63, v64);
      v66 = v9 < v62;
      if (v65)
      {
        v66 = v65 < 0;
      }

      if (v66)
      {
        break;
      }

      v67 = memcmp(v63, v10, v64);
      v68 = v62 < v9;
      if (v67)
      {
        v68 = v67 < 0;
      }

      if (!v68 && v70 < i[3])
      {
        break;
      }
    }
  }

  if (i < v2)
  {
    for (v2 -= 2; ; v8 = *(v2 + 1))
    {
      if ((v7 & 0x80u) != 0)
      {
        v26 = v6;
      }

      else
      {
        v8 = v7;
        v26 = v2;
      }

      if (v8 >= v9)
      {
        v27 = v9;
      }

      else
      {
        v27 = v8;
      }

      v28 = memcmp(v10, v26, v27);
      v29 = v9 < v8;
      if (v28)
      {
        v29 = v28 < 0;
      }

      if (!v29)
      {
        v30 = memcmp(v26, v10, v27);
        v31 = v8 < v9;
        if (v30)
        {
          v31 = v30 < 0;
        }

        if (v31 || v70 >= *(v2 + 3))
        {
          break;
        }
      }

      v25 = *(v2 - 4);
      v2 -= 2;
      v6 = v25;
      v7 = *(v2 + 23);
    }
  }

  while (i < v2)
  {
    v32 = *i;
    v75 = i[2];
    v74 = v32;
    v33 = *v2;
    i[2] = *(v2 + 2);
    *i = v33;
    v34 = v74;
    *(v2 + 2) = v75;
    *v2 = v34;
    v35 = i[3];
    i[3] = *(v2 + 3);
    *(v2 + 3) = v35;
    if (SHIBYTE(v72) >= 0)
    {
      v36 = HIBYTE(v72);
    }

    else
    {
      v36 = __p[1];
    }

    if (SHIBYTE(v72) >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    v38 = v73;
    do
    {
      i += 4;
      v39 = *(i + 23);
      if (v39 >= 0)
      {
        v40 = *(i + 23);
      }

      else
      {
        v40 = i[1];
      }

      if (v39 >= 0)
      {
        v41 = i;
      }

      else
      {
        v41 = *i;
      }

      if (v40 >= v36)
      {
        v42 = v36;
      }

      else
      {
        v42 = v40;
      }

      v43 = memcmp(v37, v41, v42);
      v44 = v36 < v40;
      if (v43)
      {
        v44 = v43 < 0;
      }

      if (v44)
      {
        break;
      }

      v45 = memcmp(v41, v37, v42);
      v46 = v40 < v36;
      if (v45)
      {
        v46 = v45 < 0;
      }
    }

    while (v46 || v38 >= i[3]);
    while (1)
    {
      v2 -= 2;
      v47 = *(v2 + 23);
      if (v47 >= 0)
      {
        v48 = *(v2 + 23);
      }

      else
      {
        v48 = *(v2 + 1);
      }

      if (v47 >= 0)
      {
        v49 = v2;
      }

      else
      {
        v49 = *v2;
      }

      if (v48 >= v36)
      {
        v50 = v36;
      }

      else
      {
        v50 = v48;
      }

      v51 = memcmp(v37, v49, v50);
      v52 = v36 < v48;
      if (v51)
      {
        v52 = v51 < 0;
      }

      if (!v52)
      {
        v53 = memcmp(v49, v37, v50);
        v54 = v48 < v36;
        if (v53)
        {
          v54 = v53 < 0;
        }

        if (v54 || v38 >= *(v2 + 3))
        {
          break;
        }
      }
    }
  }

  v55 = (i - 4);
  if (i - 4 != v69)
  {
    if (*(v69 + 23) < 0)
    {
      operator delete(*v69);
    }

    v56 = *v55;
    *(v69 + 16) = *(i - 2);
    *v69 = v56;
    *(i - 9) = 0;
    *(i - 32) = 0;
    *(v69 + 24) = *(i - 1);
  }

  if (*(i - 9) < 0)
  {
    operator delete(*v55);
  }

  v57 = *__p;
  *(i - 2) = v72;
  *v55 = v57;
  HIBYTE(v72) = 0;
  LOBYTE(__p[0]) = 0;
  *(i - 1) = v73;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  return i;
}

const void **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,long long> *,std::__less<void,void> &>(uint64_t a1, const void **a2)
{
  v4 = 0;
  *__p = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v65 = v5;
  v66 = v6;
  v7 = HIBYTE(v5);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = __p[1];
  }

  if (v7 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  while (1)
  {
    v10 = *(a1 + v4 + 55);
    if (v10 >= 0)
    {
      v11 = *(a1 + v4 + 55);
    }

    else
    {
      v11 = *(a1 + v4 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (a1 + v4 + 32);
    }

    else
    {
      v12 = *(a1 + v4 + 32);
    }

    if (v8 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = memcmp(v12, v9, v13);
    v15 = v11 < v8;
    if (v14)
    {
      v15 = v14 < 0;
    }

    if (!v15)
    {
      v16 = memcmp(v9, v12, v13);
      v17 = v8 < v11;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (v17 || *(a1 + v4 + 56) >= v6)
      {
        break;
      }
    }

    v4 += 32;
  }

  v18 = a1 + v4 + 32;
  if (v4)
  {
    do
    {
      a2 -= 4;
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = a2[1];
      }

      if (v19 >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      if (v8 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v8;
      }

      v23 = memcmp(v21, v9, v22);
      v24 = v20 < v8;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (v24)
      {
        break;
      }

      v25 = memcmp(v9, v21, v22);
      v26 = v8 < v20;
      if (v25)
      {
        v26 = v25 < 0;
      }
    }

    while (v26 || a2[3] >= v6);
  }

  else
  {
    do
    {
      if (v18 >= a2)
      {
        break;
      }

      a2 -= 4;
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = a2[1];
      }

      if (v27 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v8 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v8;
      }

      v31 = memcmp(v29, v9, v30);
      v32 = v28 < v8;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (v32)
      {
        break;
      }

      v33 = memcmp(v9, v29, v30);
      v34 = v8 < v28;
      if (v33)
      {
        v34 = v33 < 0;
      }
    }

    while (v34 || a2[3] >= v6);
  }

  v35 = v18;
  if (v18 < a2)
  {
    v36 = a2;
    do
    {
      v37 = *v35;
      v68 = v35[2];
      v67 = v37;
      v38 = *v36;
      v35[2] = v36[2];
      *v35 = v38;
      v39 = v67;
      v36[2] = v68;
      *v36 = v39;
      v40 = v35[3];
      v35[3] = v36[3];
      v36[3] = v40;
      if (SHIBYTE(v65) >= 0)
      {
        v41 = HIBYTE(v65);
      }

      else
      {
        v41 = __p[1];
      }

      if (SHIBYTE(v65) >= 0)
      {
        v42 = __p;
      }

      else
      {
        v42 = __p[0];
      }

      v43 = v66;
      while (1)
      {
        v35 += 4;
        v44 = *(v35 + 23);
        if (v44 >= 0)
        {
          v45 = *(v35 + 23);
        }

        else
        {
          v45 = v35[1];
        }

        if (v44 >= 0)
        {
          v46 = v35;
        }

        else
        {
          v46 = *v35;
        }

        if (v41 >= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v41;
        }

        v48 = memcmp(v46, v42, v47);
        v49 = v45 < v41;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          v50 = memcmp(v42, v46, v47);
          v51 = v41 < v45;
          if (v50)
          {
            v51 = v50 < 0;
          }

          if (v51 || v35[3] >= v43)
          {
            break;
          }
        }
      }

      do
      {
        v36 -= 4;
        v52 = *(v36 + 23);
        if (v52 >= 0)
        {
          v53 = *(v36 + 23);
        }

        else
        {
          v53 = v36[1];
        }

        if (v52 >= 0)
        {
          v54 = v36;
        }

        else
        {
          v54 = *v36;
        }

        if (v41 >= v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = v41;
        }

        v56 = memcmp(v54, v42, v55);
        v57 = v53 < v41;
        if (v56)
        {
          v57 = v56 < 0;
        }

        if (v57)
        {
          break;
        }

        v58 = memcmp(v42, v54, v55);
        v59 = v41 < v53;
        if (v58)
        {
          v59 = v58 < 0;
        }
      }

      while (v59 || v36[3] >= v43);
    }

    while (v35 < v36);
  }

  v60 = (v35 - 4);
  if (v35 - 4 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v61 = *v60;
    *(a1 + 16) = *(v35 - 2);
    *a1 = v61;
    *(v35 - 9) = 0;
    *(v35 - 32) = 0;
    *(a1 + 24) = *(v35 - 1);
  }

  if (*(v35 - 9) < 0)
  {
    operator delete(*v60);
  }

  v62 = *__p;
  *(v35 - 2) = v65;
  *v60 = v62;
  HIBYTE(v65) = 0;
  LOBYTE(__p[0]) = 0;
  *(v35 - 1) = v66;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  return v35 - 4;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(uint64_t a1, const void **a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, (a1 + 32), a2 - 4);
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, (a1 + 32), (a1 + 64), a2 - 4);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, a1 + 32, a1 + 64, (a1 + 96), a2 - 4);
        v5 = 1;
        return v5 & 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
LABEL_3:
      v5 = 1;
      return v5 & 1;
    }

    if (v4 == 2)
    {
      v7 = a2 - 4;
      v6 = *(a2 - 4);
      v8 = *(a1 + 23);
      v9 = *(a2 - 9);
      if (v9 >= 0)
      {
        v10 = *(a2 - 9);
      }

      else
      {
        v10 = *(a2 - 3);
      }

      if (v9 >= 0)
      {
        v11 = a2 - 4;
      }

      else
      {
        v11 = *(a2 - 4);
      }

      if (v8 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v8 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v11, v13, v14);
      v16 = v10 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (v16)
      {
        goto LABEL_27;
      }

      v58 = memcmp(v13, v11, v14);
      v59 = v12 < v10;
      if (v58)
      {
        v59 = v58 < 0;
      }

      if (!v59 && *(a2 - 1) < *(a1 + 24))
      {
LABEL_27:
        v17 = *(a1 + 16);
        v18 = *a1;
        v19 = *(a2 - 2);
        *a1 = *v7;
        *(a1 + 16) = v19;
        *v7 = v18;
        *(a2 - 2) = v17;
        v20 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v20;
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_3;
    }
  }

  v21 = a1 + 64;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *,0>(a1, (a1 + 32), (a1 + 64));
  v23 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
LABEL_90:
    v57 = 1;
    goto LABEL_97;
  }

  v63 = 0;
  v24 = 0;
  v61 = a2;
  while (1)
  {
    v29 = *(v21 + 23);
    v30 = *(v23 + 23);
    if (v30 >= 0)
    {
      v31 = *(v23 + 23);
    }

    else
    {
      v31 = v23[1];
    }

    if (v30 >= 0)
    {
      v32 = v23;
    }

    else
    {
      v32 = *v23;
    }

    if (v29 >= 0)
    {
      v33 = *(v21 + 23);
    }

    else
    {
      v33 = *(v21 + 8);
    }

    if (v29 >= 0)
    {
      v34 = v21;
    }

    else
    {
      v34 = *v21;
    }

    if (v33 >= v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v33;
    }

    v36 = memcmp(v32, v34, v35);
    v37 = v31 < v33;
    if (v36)
    {
      v37 = v36 < 0;
    }

    if (v37)
    {
      break;
    }

    v55 = memcmp(v34, v32, v35);
    v56 = v33 < v31;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v38 = v23[3];
      if (v38 < *(v21 + 24))
      {
        goto LABEL_53;
      }
    }

    v26 = v61;
LABEL_33:
    v21 = v23;
    v22 = v63 + 32;
    v63 += 32;
    v23 += 4;
    if (v23 == v26)
    {
      goto LABEL_90;
    }
  }

  v38 = v23[3];
LABEL_53:
  v62 = v24;
  v39 = 0;
  v64 = *v23;
  v40 = v23[2];
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  v65 = v40;
  v66 = v38;
  for (i = v63; ; i -= 32)
  {
    v42 = a1 + i;
    if (v39 < 0)
    {
      operator delete(*(v42 + 96));
    }

    *(v42 + 96) = *(v42 + 64);
    v43 = *(v42 + 80);
    v44 = *(v42 + 88);
    *(v42 + 87) = 0;
    *(v42 + 64) = 0;
    *(v42 + 112) = v43;
    *(v42 + 120) = v44;
    if (i == -64)
    {
      break;
    }

    v45 = *(a1 + i + 55);
    if (SHIBYTE(v65) >= 0)
    {
      v46 = HIBYTE(v65);
    }

    else
    {
      v46 = *(&v64 + 1);
    }

    if (SHIBYTE(v65) >= 0)
    {
      v47 = &v64;
    }

    else
    {
      v47 = v64;
    }

    if (v45 >= 0)
    {
      v48 = *(a1 + i + 55);
    }

    else
    {
      v48 = *(a1 + i + 40);
    }

    if (v45 >= 0)
    {
      v49 = (a1 + i + 32);
    }

    else
    {
      v49 = *(a1 + i + 32);
    }

    if (v48 >= v46)
    {
      v50 = v46;
    }

    else
    {
      v50 = v48;
    }

    v51 = memcmp(v47, v49, v50);
    v52 = v46 < v48;
    if (v51)
    {
      v52 = v51 < 0;
    }

    if (!v52)
    {
      v53 = memcmp(v49, v47, v50);
      v54 = v48 < v46;
      if (v53)
      {
        v54 = v53 < 0;
      }

      if (v54)
      {
        v21 = a1 + i + 64;
        v25 = *(a1 + i + 87);
        v26 = v61;
        v27 = v62;
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_88;
      }

      if (v66 >= *(a1 + i + 56))
      {
        v26 = v61;
        v27 = v62;
        if ((*(v21 + 23) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_88;
      }
    }

    v21 -= 32;
    v39 = *(v42 + 87);
  }

  v21 = a1;
  v26 = v61;
  v27 = v62;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_88:
  operator delete(*v21);
LABEL_32:
  v28 = v64;
  *(v21 + 16) = v65;
  *v21 = v28;
  HIBYTE(v65) = 0;
  LOBYTE(v64) = 0;
  *(v21 + 24) = v66;
  v24 = v27 + 1;
  if (v24 != 8)
  {
    goto LABEL_33;
  }

  v57 = 0;
  v22 = v23 + 4 == v26;
LABEL_97:
  v5 = v57 | v22;
  return v5 & 1;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v65 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v6 = (a4 - a1) >> 4;
      v7 = v6 + 1;
      v8 = (a1 + 32 * (v6 + 1));
      v9 = v6 + 2;
      if (v6 + 2 < a3)
      {
        v10 = v8[4];
        v11 = *(v8 + 55);
        v12 = *(v8 + 23);
        if (v12 >= 0)
        {
          v13 = *(v8 + 23);
        }

        else
        {
          v13 = v8[1];
        }

        if (v12 >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        if (v11 >= 0)
        {
          v15 = *(v8 + 55);
        }

        else
        {
          v15 = v8[5];
        }

        if (v11 >= 0)
        {
          v16 = v8 + 4;
        }

        else
        {
          v16 = v8[4];
        }

        if (v15 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        v18 = v14;
        v19 = memcmp(v14, v16, v17);
        v20 = v13 < v15;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (v20)
        {
          goto LABEL_22;
        }

        v21 = memcmp(v16, v18, v17);
        v22 = v15 < v13;
        if (v21)
        {
          v22 = v21 < 0;
        }

        if (!v22 && v8[3] < v8[7])
        {
LABEL_22:
          v8 += 4;
          v7 = v9;
        }
      }

      v23 = v5[1].n128_i8[7];
      v24 = *(v8 + 23);
      if (v24 >= 0)
      {
        v25 = *(v8 + 23);
      }

      else
      {
        v25 = v8[1];
      }

      if (v24 >= 0)
      {
        v26 = v8;
      }

      else
      {
        v26 = *v8;
      }

      if (v23 >= 0)
      {
        v27 = v5[1].n128_u8[7];
      }

      else
      {
        v27 = v5->n128_u64[1];
      }

      if (v23 >= 0)
      {
        v28 = v5;
      }

      else
      {
        v28 = v5->n128_u64[0];
      }

      if (v27 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(v26, v28, v29);
      v32 = v25 < v27;
      if (v30)
      {
        v32 = v30 < 0;
      }

      if (!v32)
      {
        v33 = memcmp(v28, v26, v29);
        v34 = v27 < v25;
        if (v33)
        {
          v34 = v33 < 0;
        }

        if (v34)
        {
          v35 = v5[1].n128_i64[1];
        }

        else
        {
          v35 = v5[1].n128_i64[1];
          if (v8[3] < v35)
          {
            return result;
          }
        }

        v36 = 0;
        v67 = *v5;
        v37 = v5[1].n128_u64[0];
        v5->n128_u64[1] = 0;
        v5[1].n128_u64[0] = 0;
        v5->n128_u64[0] = 0;
        v68 = v37;
        v69 = v35;
        while (1)
        {
          if (v36 < 0)
          {
            operator delete(v5->n128_u64[0]);
          }

          v38 = *v8;
          v5[1].n128_u64[0] = v8[2];
          *v5 = v38;
          *(v8 + 23) = 0;
          *v8 = 0;
          v5[1].n128_u64[1] = v8[3];
          if (v65 < v7)
          {
            break;
          }

          v39 = 2 * v7;
          v7 = (2 * v7) | 1;
          v40 = (a1 + 32 * v7);
          v41 = v39 + 2;
          if (v39 + 2 < a3)
          {
            v42 = v40[4];
            v43 = *(v40 + 55);
            v44 = *(v40 + 23);
            if (v44 >= 0)
            {
              v45 = *(v40 + 23);
            }

            else
            {
              v45 = v40[1];
            }

            if (v44 >= 0)
            {
              v46 = (a1 + 32 * v7);
            }

            else
            {
              v46 = *v40;
            }

            if (v43 >= 0)
            {
              v47 = *(v40 + 55);
            }

            else
            {
              v47 = v40[5];
            }

            if (v43 >= 0)
            {
              v48 = v40 + 4;
            }

            else
            {
              v48 = v40[4];
            }

            if (v47 >= v45)
            {
              v49 = v45;
            }

            else
            {
              v49 = v47;
            }

            v50 = memcmp(v46, v48, v49);
            v51 = v45 < v47;
            if (v50)
            {
              v51 = v50 < 0;
            }

            if (v51)
            {
              goto LABEL_74;
            }

            v52 = memcmp(v48, v46, v49);
            v53 = v47 < v45;
            if (v52)
            {
              v53 = v52 < 0;
            }

            if (!v53 && v40[3] < v40[7])
            {
LABEL_74:
              v40 += 4;
              v7 = v41;
            }
          }

          v54 = *(v40 + 23);
          if (v54 >= 0)
          {
            v55 = *(v40 + 23);
          }

          else
          {
            v55 = v40[1];
          }

          if (v54 >= 0)
          {
            v56 = v40;
          }

          else
          {
            v56 = *v40;
          }

          if (SHIBYTE(v68) >= 0)
          {
            v57 = HIBYTE(v68);
          }

          else
          {
            v57 = v67.n128_u64[1];
          }

          if (SHIBYTE(v68) >= 0)
          {
            v58 = &v67;
          }

          else
          {
            v58 = v67.n128_u64[0];
          }

          if (v57 >= v55)
          {
            v59 = v55;
          }

          else
          {
            v59 = v57;
          }

          v60 = memcmp(v56, v58, v59);
          v61 = v55 < v57;
          if (v60)
          {
            v61 = v60 < 0;
          }

          if (v61)
          {
            break;
          }

          v62 = memcmp(v58, v56, v59);
          v63 = v57 < v55;
          if (v62)
          {
            v63 = v62 < 0;
          }

          if (!v63 && v40[3] < v69)
          {
            break;
          }

          v36 = *(v8 + 23);
          v5 = v8;
          v8 = v40;
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        result = v67;
        v8[2] = v68;
        *v8 = result;
        v8[3] = v69;
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,long long> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4 < 2)
  {
LABEL_8:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *a1;
  *v19 = *(a1 + 8);
  *&v19[7] = *(a1 + 15);
  v6 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v7 = *(a1 + 24);
  v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(a1, a3, a4);
  v11 = (a2 - 32);
  v12 = *(v10 + 23);
  if (v10 != (a2 - 32))
  {
    if (v12 < 0)
    {
      v13 = v10;
      operator delete(*v10);
      v10 = v13;
    }

    v14 = *v11;
    *(v10 + 2) = *(a2 - 16);
    *v10 = v14;
    *(a2 - 9) = 0;
    *(a2 - 32) = 0;
    *(v10 + 3) = *(a2 - 8);
    v15 = (v10 + 2);
    if (*(a2 - 9) < 0)
    {
      operator delete(*v11);
    }

    *(a2 - 32) = v5;
    *(a2 - 24) = *v19;
    *(a2 - 17) = *&v19[7];
    *(a2 - 9) = v6;
    *(a2 - 8) = v7;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(a1, v15, a3, (v15 - a1) >> 5);
    goto LABEL_8;
  }

  if (v12 < 0)
  {
    v17 = v10;
    operator delete(*v10);
    v10 = v17;
  }

  *v10 = v5;
  *(v10 + 1) = *v19;
  *(v10 + 15) = *&v19[7];
  *(v10 + 23) = v6;
  *(v10 + 3) = v7;
  v18 = *MEMORY[0x277D85DE8];
}

void sub_23CD169D0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v24 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v4];
    v5 = v7 + 2;
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v8 + 2 < a3)
    {
      v10 = *(v7 + 8);
      v11 = *(v7 + 87);
      v12 = *(v7 + 55);
      if (v12 >= 0)
      {
        v13 = *(v7 + 55);
      }

      else
      {
        v13 = *(v7 + 5);
      }

      if (v12 >= 0)
      {
        v14 = v7 + 2;
      }

      else
      {
        v14 = *(v7 + 4);
      }

      if (v11 >= 0)
      {
        v15 = *(v7 + 87);
      }

      else
      {
        v15 = *(v7 + 9);
      }

      if (v11 >= 0)
      {
        v16 = v7 + 4;
      }

      else
      {
        v16 = *(v7 + 8);
      }

      if (v15 >= v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      __s2 = v14;
      v18 = memcmp(v14, v16, v17);
      v19 = v13 < v15;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (v19)
      {
        goto LABEL_2;
      }

      v20 = memcmp(v16, __s2, v17);
      v21 = v15 < v13;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21 && *(v7 + 7) < *(v7 + 11))
      {
LABEL_2:
        v5 = v7 + 4;
        v4 = v9;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v6 = *v5;
    *(a1 + 2) = *(v5 + 2);
    *a1 = v6;
    *(v5 + 23) = 0;
    *v5 = 0;
    *(a1 + 3) = *(v5 + 3);
    a1 = v5;
  }

  while (v4 <= v24);
  return v5;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,long long> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v42 = v4;
  v43 = v5;
  v9 = v6 >> 1;
  v10 = (a1 + 32 * (v6 >> 1));
  v12 = (a2 - 32);
  v11 = *(a2 - 32);
  v13 = *(a2 - 9);
  v14 = *(v10 + 23);
  if (v14 >= 0)
  {
    v15 = *(v10 + 23);
  }

  else
  {
    v15 = v10[1];
  }

  if (v14 >= 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = *v10;
  }

  if (v13 >= 0)
  {
    v17 = *(a2 - 9);
  }

  else
  {
    v17 = *(a2 - 24);
  }

  if (v13 >= 0)
  {
    v18 = (a2 - 32);
  }

  else
  {
    v18 = *(a2 - 32);
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  v20 = memcmp(v16, v18, v19);
  v21 = v15 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    v22 = *(a2 - 8);
LABEL_21:
    v23 = v12[2];
    v39 = *v12;
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v40 = v23;
    v41 = v22;
    if (v23 >= 0)
    {
      v24 = HIBYTE(v23);
    }

    else
    {
      v24 = *(&v39 + 1);
    }

    if (v23 >= 0)
    {
      v25 = &v39;
    }

    else
    {
      v25 = v39;
    }

    while (1)
    {
      v26 = v10;
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v27 = *v10;
      v12[2] = v10[2];
      *v12 = v27;
      *(v10 + 23) = 0;
      *v10 = 0;
      v12[3] = v10[3];
      if (!v9)
      {
        break;
      }

      v9 = (v9 - 1) >> 1;
      v10 = (a1 + 32 * v9);
      v28 = *(v10 + 23);
      if (v28 >= 0)
      {
        v29 = *(v10 + 23);
      }

      else
      {
        v29 = v10[1];
      }

      if (v28 >= 0)
      {
        v30 = (a1 + 32 * v9);
      }

      else
      {
        v30 = *v10;
      }

      if (v24 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v24;
      }

      v32 = memcmp(v30, v25, v31);
      v33 = v29 < v24;
      if (v32)
      {
        v33 = v32 < 0;
      }

      v12 = v26;
      if (!v33)
      {
        v34 = memcmp(v25, v30, v31);
        v35 = v24 < v29;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (v35)
        {
          break;
        }

        v12 = v26;
        if (v10[3] >= v41)
        {
          break;
        }
      }
    }

    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    *v26 = v39;
    v36 = v41;
    v26[2] = v40;
    v26[3] = v36;
    return;
  }

  v37 = memcmp(v18, v16, v19);
  v38 = v17 < v15;
  if (v37)
  {
    v38 = v37 < 0;
  }

  if (!v38)
  {
    v22 = *(a2 - 8);
    if (v10[3] < v22)
    {
      goto LABEL_21;
    }
  }
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::ThetaLambdaTree(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

_OWORD *operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Reset(_DWORD *a1, int a2)
{
  v3 = (a2 & 1) + a2;
  v4 = vdupq_n_s64(0x8000000000000002);
  v5 = 2;
  if (v3 <= 2)
  {
    v3 = 2;
  }

  *a1 = a2;
  a1[1] = v3;
  v8 = v4;
  v9 = 0;
  v10 = 0;
  result = std::vector<operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::TreeNode,std::allocator<operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::TreeNode>>::assign((a1 + 4), 2 * v3, &v8);
  do
  {
    v7 = v5;
    v5 *= 2;
  }

  while (v7 < a1[1]);
  a1[2] = v7;
  return result;
}

_OWORD *std::vector<operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::TreeNode,std::allocator<operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::TreeNode>>::assign(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a2 > (v5 - result) >> 5)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a2 >> 59))
    {
      v7 = v5 >> 4;
      if (v5 >> 4 <= a2)
      {
        v7 = a2;
      }

      v8 = v5 >= 0x7FFFFFFFFFFFFFE0;
      v9 = 0x7FFFFFFFFFFFFFFLL;
      if (!v8)
      {
        v9 = v7;
      }

      if (!(v9 >> 59))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = (*(a1 + 8) - result) >> 5;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (*(a1 + 8) - result) >> 5;
  }

  for (; v11; --v11)
  {
    v12 = a3[1];
    *result = *a3;
    result[1] = v12;
    result += 2;
  }

  v13 = a2 - v10;
  if (a2 <= v10)
  {
    *(a1 + 8) = *a1 + 32 * a2;
  }

  else
  {
    v14 = *(a1 + 8);
    if ((v13 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v15 = &v14[2 * v13];
      v16 = 32 * a2 - 32 * v10;
      do
      {
        v17 = a3[1];
        *v14 = *a3;
        v14[1] = v17;
        v14 += 2;
        v16 -= 32;
      }

      while (v16);
      v14 = v15;
    }

    *(a1 + 8) = v14;
  }

  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 8) + a2;
  if (v6 < 2 * v5)
  {
    v5 = 0;
  }

  v7 = v6 - v5;
  v8 = *(a1 + 16);
  v9 = (v8 + 32 * v7);
  *v9 = a4 + a3;
  v9[1] = a5 + a3;
  v9[2] = a4;
  v9[3] = a5 - a4;
  do
  {
    v10 = 32 * v7;
    v11 = v7 >> 1;
    v12 = v7 >> 1;
    v13 = (v8 + 32 * (v7 & 0x7FFFFFFFFFFFFFELL));
    v14 = *v13;
    v15 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = (v8 + (v10 | 0x20));
    v19 = *v18;
    v20 = v18[1];
    result = v18[2];
    v22 = v18[3];
    if (v19 <= result + v14)
    {
      v19 = result + v14;
    }

    v23 = v22 + v14;
    if (v15 > v23)
    {
      v23 = v15;
    }

    v24 = v23 + result;
    if (v20 > v24)
    {
      v24 = v20;
    }

    v25 = (v8 + 32 * v11);
    *v25 = v19;
    v25[1] = v24;
    if (v22 > v16)
    {
      v16 = v22;
    }

    v25[2] = result + v17;
    v25[3] = v16;
    v7 = v12;
  }

  while (v12 > 1);
  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetLeafFromEvent(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8) + a2;
  if (v3 < 2 * v2)
  {
    v2 = 0;
  }

  return (v3 - v2);
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateOptionalEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8) + a2;
  if (v5 < 2 * v4)
  {
    v4 = 0;
  }

  v6 = v5 - v4;
  v7 = *(a1 + 16);
  v8 = (v7 + 32 * v6);
  *v8 = 0x8000000000000002;
  v8[1] = a4 + a3;
  v8[2] = 0;
  v8[3] = a4;
  do
  {
    v9 = 32 * v6;
    v10 = v6 >> 1;
    v11 = v6 >> 1;
    v12 = (v7 + 32 * (v6 & 0x7FFFFFFFFFFFFFELL));
    v13 = *v12;
    v14 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = (v7 + (v9 | 0x20));
    v18 = *v17;
    v19 = v17[1];
    result = v17[2];
    v21 = v17[3];
    if (v18 <= result + v13)
    {
      v18 = result + v13;
    }

    v22 = v21 + v13;
    if (v14 > v22)
    {
      v22 = v14;
    }

    v23 = v22 + result;
    if (v19 > v23)
    {
      v23 = v19;
    }

    v24 = (v7 + 32 * v10);
    *v24 = v18;
    v24[1] = v23;
    if (v21 > v15)
    {
      v15 = v21;
    }

    v24[2] = result + v16;
    v24[3] = v15;
    v6 = v11;
  }

  while (v11 > 1);
  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::RemoveEvent(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8) + a2;
  if (v3 < 2 * v2)
  {
    v2 = 0;
  }

  v4 = v3 - v2;
  v5 = *(a1 + 16);
  v6 = (v5 + 32 * v4);
  *v6 = vdupq_n_s64(0x8000000000000002);
  v6[1].i64[0] = 0;
  v6[1].i64[1] = 0;
  do
  {
    v7 = 32 * v4;
    v8 = v4 >> 1;
    v9 = v4 >> 1;
    v10 = (v5 + 32 * (v4 & 0x7FFFFFFFFFFFFFELL));
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    v15 = (v5 + (v7 | 0x20));
    v16 = *v15;
    v17 = v15[1];
    result = v15[2];
    v19 = v15[3];
    if (v16 <= result + v11)
    {
      v16 = result + v11;
    }

    v20 = v19 + v11;
    if (v12 > v20)
    {
      v20 = v12;
    }

    v21 = v20 + result;
    if (v17 > v21)
    {
      v21 = v17;
    }

    v22 = (v5 + 32 * v8);
    *v22 = v16;
    v22[1] = v21;
    if (v19 > v13)
    {
      v13 = v19;
    }

    v22[2] = result + v14;
    v22[3] = v13;
    v4 = v9;
  }

  while (v9 > 1);
  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetMaxEventWithEnvelopeGreaterThan(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = 1;
  if (v2 >= 2)
  {
    v4 = 1;
    do
    {
      v3 = (2 * v4) | 1;
      v5 = (*(a1 + 16) + 32 * v3);
      if (a2 >= *v5)
      {
        v3 = 2 * v4;
        a2 -= v5[2];
      }

      v4 = v3;
    }

    while (v3 < v2);
  }

  return (v2 & ((v3 - *(a1 + 8)) >> 31)) + v3 - *(a1 + 8);
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelopeOf(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8) + a2;
  if (v3 < 2 * v2)
  {
    v2 = 0;
  }

  v4 = v3 - v2;
  v5 = *(a1 + 16);
  result = *(v5 + 32 * v4);
  if (v4 >= 2)
  {
    do
    {
      v8 = v4 | 1u;
      if (v4 != v8)
      {
        result += *(v5 + 32 * v8 + 16);
      }

      v7 = v4 > 3;
      v4 = v4 >> 1;
    }

    while (v7);
  }

  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEventsWithOptionalEnvelopeGreaterThan(uint64_t a1, uint64_t a2, int *a3, int *a4, void *a5)
{
  v11 = 0;
  result = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetLeavesWithOptionalEnvelopeGreaterThan(a1, a2, &v11 + 1, &v11, a5);
  v9 = HIDWORD(v11) - *(a1 + 8);
  if (v9 < 0)
  {
    *a3 = *(a1 + 4) + v9;
    v10 = v11 - *(a1 + 8);
    if (v10 >= 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a3 = v9;
    v10 = v11 - *(a1 + 8);
    if (v10 >= 0)
    {
LABEL_3:
      *a4 = v10;
      return result;
    }
  }

  *a4 = *(a1 + 4) + v10;
  return result;
}

uint64_t operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetLeavesWithOptionalEnvelopeGreaterThan(uint64_t result, uint64_t a2, int *a3, int *a4, void *a5)
{
  v5 = *(result + 4);
  v6 = *(result + 16);
  v7 = 1;
  if (v5 >= 2)
  {
    while (1)
    {
      while (1)
      {
        v7 *= 2;
        v8 = v7 | 1;
        v9 = (v6 + 32 * v8);
        if (a2 >= v9[1])
        {
          break;
        }

        v7 |= 1u;
        if (v8 >= v5)
        {
          goto LABEL_7;
        }
      }

      v11 = v9[2];
      v10 = v9[3];
      v12 = *(v6 + 32 * v7);
      if (a2 < v10 + v11 + v12)
      {
        break;
      }

      a2 -= v11;
      if (v7 >= v5)
      {
        goto LABEL_7;
      }
    }

    while (v8 < v5)
    {
      LODWORD(v8) = 2 * v8;
      if (*(v6 + 32 * (v8 | 1) + 24) == v10)
      {
        LODWORD(v8) = v8 | 1;
      }
    }

    *a4 = v8;
    v13 = a2 - (v10 + v11);
    v14 = *(result + 4);
    if (v14 > v7)
    {
      do
      {
        while (1)
        {
          v15 = (2 * v7) | 1;
          v16 = (v6 + 32 * v15);
          if (v13 < *v16)
          {
            break;
          }

          v7 *= 2;
          v13 -= v16[2];
          if (v7 >= v14)
          {
            goto LABEL_17;
          }
        }

        v7 = (2 * v7) | 1;
      }

      while (v15 < v14);
LABEL_17:
      v12 = *(v6 + 32 * v7);
    }

    *a3 = v7;
    *a5 = v13 - v12 + *(v6 + 32 * *a4 + 16) + *(v6 + 32 * *a4 + 24);
  }

  else
  {
LABEL_7:
    *a3 = v7;
    *a4 = v7;
    *a5 = a2 - *(v6 + 32 * v7 + 8) + *(v6 + 32 * v7 + 16) + *(v6 + 32 * v7 + 24);
  }

  return result;
}

uint64_t operations_research::sat::AddReservoirConstraint(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a6);
  v10 = a2[1];
  if (*a2 == v10)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = (*a2 + 8);
    do
    {
      v19 = v13 - 1;
      v20 = *(v13 - 2);
      v18 = v13[1];
      if (v20 == -1)
      {
        v17 = v18 & (v18 >> 63);
      }

      else
      {
        v14 = *(result + 40);
        v15 = 8 * v20;
        v16 = v18 + *(v14 + v15) * *v13;
        v17 = v16 & (v16 >> 63);
        v18 -= *(v14 + (v15 ^ 8)) * *v13;
      }

      v11 += v17;
      v12 += v18 & ~(v18 >> 63);
      v13 += 3;
    }

    while (v19 + 3 != v10);
  }

  if (v12 > a5)
  {
    operator new();
  }

  if (v11 < a4)
  {
    v21 = a2[1];
    if (*a2 != v21)
    {
      v22 = (*a2 + 8);
      do
      {
        v26 = v22 - 1;
        v27 = *(v22 - 2);
        if (v27 == -1)
        {
          v24 = 0;
          v23 = -1;
        }

        else
        {
          v23 = v27 ^ (*v22 >> 63) ^ 1;
          if (*v22 >= 0)
          {
            v24 = *v22;
          }

          else
          {
            v24 = -*v22;
          }
        }

        v25 = -v22[1];
        *(v22 - 2) = v23;
        *v22 = v24;
        v22[1] = v25;
        v22 += 3;
      }

      while (v26 + 3 != v21);
    }

    operator new();
  }

  return result;
}

uint64_t operations_research::sat::ReservoirTimeTabling::ReservoirTimeTabling(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  *(a1 + 8) = 0;
  v9 = (a1 + 8);
  *a1 = &unk_284F44A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = a2[1];
  v76 = (a1 + 8);
  if (v10 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = (a1 + 32);
  *(a1 + 48) = 0;
  v12 = a3[1] - *a3;
  if (v12)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v13 = (a1 + 56);
  *(a1 + 72) = 0;
  v14 = a4[1] - *a4;
  v75 = (a1 + 56);
  if (v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 80) = a5;
  *(a1 + 88) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a6) + 16;
  v15 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a6);
  *(a1 + 104) = 0u;
  *(a1 + 96) = v15;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a6);
  v17 = operations_research::sat::GenericLiteralWatcher::Register(v16, a1);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v18 >= 1)
  {
    v19 = 0;
    v77 = v18 & 0x7FFFFFFF;
    do
    {
      v21 = *v11 + 24 * v19;
      v22 = *(v21 + 16);
      v78 = *v21;
      v79 = v22;
      operations_research::sat::GenericLiteralWatcher::WatchLowerBound(v16, &v78, v17);
      v23 = *v11;
      v24 = (*v11 + 24 * v19);
      v25 = *v24;
      v26 = *(v24 + 2);
      v27 = v26;
      if (v25 != -1)
      {
        v27 = v26 - *(*(*(a1 + 96) + 40) + ((8 * v25) ^ 8)) * *(v24 + 1);
      }

      if (v27 >= 1)
      {
        v28 = *(*v9 + 24 * v19);
        if ((~v28 & 0xFFFFFFFE) != 0)
        {
          v29 = (v28 << 32) ^ 0x100000000;
          v30 = v29 >> 32;
          v32 = v16[11];
          v31 = v16[12];
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3);
          if (v33 <= v29 >> 32)
          {
            v34 = (v29 + 0x100000000) >> 32;
            if (v34 <= v33)
            {
              if (v34 < v33)
              {
                v35 = v32 + 24 * v34;
                if (v31 != v35)
                {
                  v36 = v16[12];
                  do
                  {
                    v38 = *(v36 - 24);
                    v36 -= 24;
                    v37 = v38;
                    if (v38)
                    {
                      *(v31 - 16) = v37;
                      operator delete(v37);
                    }

                    v31 = v36;
                  }

                  while (v36 != v35);
                }

                v16[12] = v35;
                v13 = v75;
                v9 = v76;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((v16 + 11), v34 - v33);
            }
          }

          *&v78 = v17 | 0xFFFFFFFF00000000;
          v39 = (v16[11] + 24 * v30);
          v40 = v39[1];
          if (*v39 == v40 || *(v40 - 8) != v17 || *(v40 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v39, &v78);
          }
        }

        v41 = *(*v13 + 4 * v19);
        v43 = v16[8];
        v42 = v16[9];
        v44 = (v42 - v43) >> 3;
        v45 = 0xAAAAAAAAAAAAAAABLL * v44;
        if (v41 >= -1431655765 * v44)
        {
          v46 = v41 + 1;
          if (v46 <= v45)
          {
            if (v46 < v45)
            {
              v47 = v43 + 24 * v46;
              if (v42 != v47)
              {
                v48 = v16[9];
                do
                {
                  v50 = *(v48 - 24);
                  v48 -= 24;
                  v49 = v50;
                  if (v50)
                  {
                    *(v42 - 16) = v49;
                    operator delete(v49);
                  }

                  v42 = v48;
                }

                while (v48 != v47);
              }

              v16[9] = v47;
              v13 = v75;
              v9 = v76;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((v16 + 8), v46 - v45);
          }
        }

        v51 = v16[8] + 24 * v41;
        *&v78 = v17 | 0xFFFFFFFF00000000;
        std::vector<long long>::push_back[abi:ne200100](v51, &v78);
        v23 = *v11;
        v52 = (*v11 + 24 * v19);
        v25 = *v52;
        v26 = *(v52 + 2);
      }

      if (v25 != 0xFFFFFFFFLL)
      {
        v26 += *(*(*(a1 + 96) + 40) + 8 * v25) * *(v23 + 24 * v19 + 8);
      }

      if (v26 < 0)
      {
        v53 = *(*v9 + 24 * v19);
        if (v53 != -1)
        {
          v55 = v16[11];
          v54 = v16[12];
          v56 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v55) >> 3);
          if (v56 <= v53)
          {
            v57 = v53 + 1;
            if (v57 <= v56)
            {
              if (v57 < v56)
              {
                v58 = v55 + 24 * v57;
                if (v54 != v58)
                {
                  v59 = v16[12];
                  do
                  {
                    v61 = *(v59 - 24);
                    v59 -= 24;
                    v60 = v61;
                    if (v61)
                    {
                      *(v54 - 16) = v60;
                      operator delete(v60);
                    }

                    v54 = v59;
                  }

                  while (v59 != v58);
                }

                v16[12] = v58;
                v13 = v75;
                v9 = v76;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((v16 + 11), v57 - v56);
            }
          }

          *&v78 = v17 | 0xFFFFFFFF00000000;
          v62 = (v16[11] + 24 * v53);
          v63 = v62[1];
          if (*v62 == v63 || *(v63 - 8) != v17 || *(v63 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v62, &v78);
          }
        }

        v64 = *(*v13 + 4 * v19) ^ 1;
        v66 = v16[8];
        v65 = v16[9];
        v67 = (v65 - v66) >> 3;
        v68 = 0xAAAAAAAAAAAAAAABLL * v67;
        if (v64 >= -1431655765 * v67)
        {
          v69 = v64 + 1;
          if (v69 > v68)
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((v16 + 8), v69 - v68);
          }

          else if (v69 < v68)
          {
            v70 = v66 + 24 * v69;
            if (v65 != v70)
            {
              v71 = v16[9];
              do
              {
                v73 = *(v71 - 24);
                v71 -= 24;
                v72 = v73;
                if (v73)
                {
                  *(v65 - 16) = v72;
                  operator delete(v72);
                }

                v65 = v71;
              }

              while (v71 != v70);
            }

            v16[9] = v70;
            v13 = v75;
            v9 = v76;
          }
        }

        v20 = v16[8] + 24 * v64;
        *&v78 = v17 | 0xFFFFFFFF00000000;
        std::vector<long long>::push_back[abi:ne200100](v20, &v78);
      }

      ++v19;
    }

    while (v19 != v77);
  }

  operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(v16, v17);
  return a1;
}

void sub_23CD17D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11)
{
  v14 = v11[19];
  if (v14)
  {
    v11[20] = v14;
    operator delete(v14);
    v15 = v11[16];
    if (!v15)
    {
LABEL_3:
      v16 = *a9;
      if (!*a9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = v11[16];
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  v11[17] = v15;
  operator delete(v15);
  v16 = *a9;
  if (!*a9)
  {
LABEL_4:
    v17 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11[14] = v16;
  operator delete(v16);
  v17 = *a10;
  if (!*a10)
  {
LABEL_5:
    v18 = *v12;
    if (!*v12)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11[8] = v17;
  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_6:
    v19 = *a11;
    if (!*a11)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11[5] = v18;
  operator delete(v18);
  v19 = *a11;
  if (!*a11)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v11[2] = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ReservoirTimeTabling::Propagate(operations_research::sat::ReservoirTimeTabling *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  result = operations_research::sat::ReservoirTimeTabling::BuildProfile(this);
  if (result)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        v9 = *(*(this + 7) + 4 * v7);
        if (((*(*(*(this + 11) + 8) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3F ^ 1u)) & 1) == 0)
        {
          v10 = (*(this + 4) + v6);
          v11 = *(v10 + 2);
          if (*v10 != -1)
          {
            v11 += *(*(*(this + 12) + 40) + 8 * *v10) * *(v10 + 1);
          }

          if (v11 >= 1)
          {
            if ((operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(this, v7) & 1) == 0)
            {
              return 0;
            }
          }

          else if (v11 < 0)
          {
            result = operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(this, v7);
            if (!result)
            {
              return result;
            }
          }
        }

        ++v7;
        v6 += 24;
      }

      while (v8 != v7);
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::ReservoirTimeTabling::BuildProfile(operations_research::sat::ReservoirTimeTabling *this)
{
  v2 = (this + 152);
  v3 = *(this + 19);
  *(this + 20) = v3;
  v5 = *(this + 1);
  v4 = *(this + 2);
  v6 = *(this + 21);
  if (v3 >= v6)
  {
    v8 = v6 - v3;
    v9 = v8 >> 3;
    if ((v8 >> 3) <= 1)
    {
      v9 = 1;
    }

    v10 = v8 >= 0x7FFFFFFFFFFFFFF0;
    v11 = 0xFFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v9;
    }

    if (!(v11 >> 60))
    {
      operator new();
    }

LABEL_55:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v3 = xmmword_23CE487A0;
  v7 = v3 + 1;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  *(this + 20) = v7;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v12 & 0x7FFFFFFF;
    v15 = 16;
    while (1)
    {
      v16 = *(this + 12);
      v17 = (*(this + 4) + v15);
      v18 = *(v17 - 4);
      v19 = *v17;
      if (v18 != -1)
      {
        v19 += *(*(v16 + 40) + 8 * v18) * *(v17 - 1);
      }

      if (v19 < 1)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v24 = *(*(this + 7) + 4 * v13);
        if ((*(*(*(this + 11) + 8) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v24 & 0x3F ^ 1u)))
        {
          goto LABEL_12;
        }

        v25 = (*(this + 1) + v15);
        v26 = *(v25 - 4);
        v23 = *v25;
        if (v26 != -1)
        {
          v23 += *(*(v16 + 40) + 8 * v26) * *(v25 - 1);
        }
      }

      else
      {
        v20 = *(*(this + 7) + 4 * v13);
        if (((*(*(*(this + 11) + 8) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_12;
        }

        v21 = (*(this + 1) + v15);
        v22 = *(v21 - 4);
        v23 = *v21;
        if (v22 != -1)
        {
          v23 -= *(*(v16 + 40) + ((8 * v22) ^ 8)) * *(v21 - 1);
        }
      }

      *&v54 = v23;
      *(&v54 + 1) = v19;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v2, &v54);
LABEL_12:
      ++v13;
      v15 += 24;
      if (v14 == v13)
      {
        v7 = *(this + 20);
        break;
      }
    }
  }

  v27 = *(this + 21);
  if (v7 < v27)
  {
    v28 = xmmword_23CE4EA10;
    *v7 = xmmword_23CE4EA10;
    v29 = v7 + 1;
    goto LABEL_37;
  }

  v30 = *v2;
  v31 = v7 - *v2;
  v32 = (v31 >> 4) + 1;
  if (v32 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v33 = v27 - v30;
  if (v33 >> 3 > v32)
  {
    v32 = v33 >> 3;
  }

  if (v33 >= 0x7FFFFFFFFFFFFFF0)
  {
    v34 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    if (!(v34 >> 60))
    {
      operator new();
    }

    goto LABEL_55;
  }

  v35 = (16 * (v31 >> 4));
  *v35 = xmmword_23CE4EA10;
  v29 = v35 + 1;
  memcpy(0, v30, v31);
  *(this + 19) = 0;
  *(this + 20) = v29;
  *(this + 21) = 0;
  if (v30)
  {
    operator delete(v30);
  }

LABEL_37:
  v36 = *(this + 19);
  v37 = 126 - 2 * __clz(v29 - v36);
  *(this + 20) = v29;
  if (v29 == v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  v39 = 1;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::ReservoirTimeTabling::ProfileRectangle *,false>(v36, v29, &v54, v38, 1, v28);
  v40 = *(this + 19);
  v41 = *(this + 20);
  if (v40 != v41)
  {
    v42 = 0;
    v43 = *(this + 19);
    do
    {
      while (1)
      {
        v45 = &v40[2 * v42];
        if (*v43 == *v45)
        {
          break;
        }

        v44 = &v40[2 * ++v42];
        *v44 = *v43;
        v44[1] = v45[1] + v43[1];
        v43 += 2;
        if (v43 == v41)
        {
          goto LABEL_45;
        }
      }

      v45[1] += v43[1];
      v43 += 2;
    }

    while (v43 != v41);
LABEL_45:
    v39 = v42 + 1;
  }

  v46 = (v41 - v40) >> 4;
  if (v39 <= v46)
  {
    if (v39 < v46)
    {
      v41 = &v40[2 * v39];
      *(this + 20) = v41;
    }
  }

  else
  {
    std::vector<std::array<long long,2ul>>::__append(v2, v39 - v46);
    v40 = *(this + 19);
    v41 = *(this + 20);
  }

  if (v40 == v41)
  {
    return 1;
  }

  while (v40[1] <= *(this + 10))
  {
    v40 += 2;
    if (v40 == v41)
    {
      return 1;
    }
  }

  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, *v40, 0xFFFFFFFF);
  v49 = *(this + 12);
  v48 = *(this + 13);
  v50 = *(this + 14);
  v51 = *(this + 16);
  v52 = (*(this + 17) - v51) >> 4;
  v53 = *(v49 + 840);
  *(v53 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v53 + 72), v48, v50, (v50 - v48) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v49, v51, v52, (v53 + 72));
  return 0;
}

uint64_t operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(operations_research::sat::ReservoirTimeTabling *this, signed int a2)
{
  v2 = (*(this + 4) + 24 * a2);
  v3 = *(v2 + 2);
  if (*v2 != -1)
  {
    v3 += *(*(*(this + 12) + 40) + 8 * *v2) * *(v2 + 1);
  }

  v42 = v3;
  if (v3 < 1)
  {
    operations_research::sat::ReservoirTimeTabling::TryToIncreaseMin(&v42);
  }

  v4 = a2;
  v5 = *(this + 1) + 24 * a2;
  v6 = *v5;
  if (*v5 == -1)
  {
    return 1;
  }

  v9 = v5 + 8;
  v7 = *(v5 + 8);
  v8 = *(v9 + 8);
  v10 = *(*(this + 12) + 40);
  v11 = 8 * v6;
  v12 = v8 + *(v10 + v11) * v7;
  v13 = v8 - *(v10 + (v11 ^ 8)) * v7;
  if (v12 == v13)
  {
    return 1;
  }

  v15 = *(this + 19);
  v16 = *(this + 20);
  if (v16 != v15)
  {
    v17 = (v16 - v15) >> 4;
    v16 = *(this + 19);
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[16 * (v17 >> 1)];
      v21 = *v19;
      v20 = (v19 + 2);
      v17 += ~(v17 >> 1);
      if (v21 > v13)
      {
        v17 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    while (v17);
  }

  v22 = (v16 - v15) >> 4;
  v23 = &v15[16 * v22 - 16];
  v24 = *(this + 10);
  if (v3 + *(v23 + 1) <= v24)
  {
LABEL_16:
    v26 = v22 - 2;
    while (1)
    {
      v13 = *&v15[16 * v26 + 16];
      if (v13 <= v12)
      {
        return 1;
      }

      v27 = *&v15[16 * v26-- + 8] + v3;
      if (v27 > v24)
      {
        goto LABEL_21;
      }
    }
  }

  v25 = *(*(this + 7) + 4 * a2);
  if ((*(*(*(this + 11) + 8) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
  {
    if (*v23 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    ++v13;
  }

LABEL_21:
  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, v13 - 1, a2);
  v29 = this;
  v30 = (*(this + 4) + 24 * v4);
  v31 = *v30;
  if (v31 != -1)
  {
    v33 = v30 + 2;
    v32 = *(v30 + 1);
    v34 = v3 - *(v33 + 1);
    if (v34 / v32 * v32 >= v34)
    {
      v35 = v34 / v32;
    }

    else
    {
      v35 = v34 / v32 + 1;
    }

    *&v43 = v31;
    *(&v43 + 1) = v35;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 128, &v43);
    v29 = this;
  }

  v36 = (*(v29 + 1) + 24 * v4);
  v37 = *v36;
  if (v37 == -1)
  {
    if (*(v36 + 2) < v13)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    v37 = 0xFFFFFFFFLL;
  }

  else
  {
    v39 = v36 + 2;
    v38 = *(v36 + 1);
    v40 = v13 - *(v39 + 1);
    if (v40 / v38 * v38 >= v40)
    {
      v41 = v40 / v38;
    }

    else
    {
      v41 = v40 / v38 + 1;
    }
  }

  return operations_research::sat::IntegerTrail::ConditionalEnqueue(*(v29 + 12), *(*(v29 + 7) + 4 * v4), v37, v41, v29 + 13, v29 + 16);
}

uint64_t operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(operations_research::sat::ReservoirTimeTabling *this, signed int a2)
{
  v2 = (*(this + 4) + 24 * a2);
  v3 = *(v2 + 2);
  if (*v2 != -1)
  {
    v3 += *(*(*(this + 12) + 40) + 8 * *v2) * *(v2 + 1);
  }

  v52 = v3;
  if ((v3 & 0x8000000000000000) == 0)
  {
    operations_research::sat::ReservoirTimeTabling::TryToDecreaseMax(&v52);
  }

  v4 = a2;
  v5 = *(this + 1) + 24 * a2;
  v6 = *v5;
  if (*v5 == -1)
  {
    return 1;
  }

  v9 = v5 + 8;
  v7 = *(v5 + 8);
  v8 = *(v9 + 8);
  v10 = *(*(this + 12) + 40);
  v11 = 8 * v6;
  v12 = v8 + *(v10 + v11) * v7;
  v13 = v8 - *(v10 + (v11 ^ 8)) * v7;
  if (v12 == v13)
  {
    return 1;
  }

  v14 = *(this + 19);
  v15 = *(this + 20);
  if (v15 != v14)
  {
    v16 = (v15 - v14) >> 4;
    v15 = *(this + 19);
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[16 * (v16 >> 1)];
      v20 = *v18;
      v19 = (v18 + 2);
      v16 += ~(v16 >> 1);
      if (v20 > v12)
      {
        v16 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    while (v16);
  }

  v21 = (v15 - v14) >> 4;
  v22 = *&v14[16 * v21 - 16];
  if (v22 >= v13)
  {
    return 1;
  }

  v23 = *(this + 10);
  if (*&v14[16 * v21 - 8] - v3 <= v23)
  {
    do
    {
      v22 = *&v14[16 * v21];
      if (v22 >= v13)
      {
        return 1;
      }

      v24 = *&v14[16 * v21 + 8] - v3;
      LODWORD(v21) = v21 + 1;
    }

    while (v24 <= v23);
  }

  operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(this, v22, a2);
  v26 = this;
  if (v22 >= v12)
  {
    v40 = *(*(this + 7) + 4 * v4);
    if (((*(*(*(this + 11) + 8) + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      operations_research::sat::IntegerTrail::EnqueueLiteral(*(this + 12), v40, *(this + 13), (*(this + 14) - *(this + 13)) >> 2, *(this + 16), (*(this + 17) - *(this + 16)) >> 4);
      v26 = this;
    }

    v41 = *(v26 + 12);
    v42 = (*(v26 + 1) + 24 * v4);
    v43 = *v42;
    v44 = *(v42 + 2);
    if (v43 == -1)
    {
      if (v22 < v44)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      v45 = (v22 - v44) / *(v42 + 1) - ((v22 - v44) / *(v42 + 1) * *(v42 + 1) > v22 - v44);
      if (v45 >= 0x8000000000000002)
      {
        v46 = -v45;
      }

      else
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v47 = v43 ^ 1;
    }

    v48 = *(v26 + 13);
    v49 = (*(v26 + 14) - v48) >> 2;
    v50 = *(v26 + 16);
    v51 = (*(v26 + 17) - v50) >> 4;

    return operations_research::sat::IntegerTrail::Enqueue(v41, v47, v46, v48, v49, v50, v51);
  }

  else
  {
    v27 = (*(this + 1) + 24 * v4);
    v28 = *v27;
    if (v28 != -1)
    {
      v30 = v27 + 2;
      v29 = *(v27 + 1);
      v31 = v22 - *(v30 + 1) + 1;
      if (v31 / v29 * v29 >= v31)
      {
        v32 = v31 / v29;
      }

      else
      {
        v32 = v31 / v29 + 1;
      }

      *&v53 = v28;
      *(&v53 + 1) = v32;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 128, &v53);
      v26 = this;
    }

    v34 = *(v26 + 12);
    v33 = *(v26 + 13);
    v35 = *(v26 + 14);
    v36 = *(v26 + 16);
    v37 = (*(v26 + 17) - v36) >> 4;
    v38 = *(v34 + 840);
    *(v38 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v38 + 72), v33, v35, (v35 - v33) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v34, v36, v37, (v38 + 72));
    return 0;
  }
}

void operations_research::sat::ReservoirTimeTabling::FillReasonForProfileAtGivenTime(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a1 + 16);
  a1[17] = a1[16];
  v4 = (a1 + 13);
  a1[14] = a1[13];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3);
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v38 = a2 + 1;
    v10 = v5 & 0x7FFFFFFF;
    v11 = a3;
    do
    {
      if (v11)
      {
        v12 = a1[12];
        v13 = (a1[4] + v9);
        v14 = *v13;
        v15 = *(v13 + 2);
        if (v14 == -1)
        {
          v16 = *(v13 + 2);
        }

        else
        {
          v16 = v15 + *(*(v12 + 40) + 8 * v14) * *(v13 + 1);
        }

        v17 = a1[7];
        v18 = *(v17 + v8);
        v19 = *(*(a1[11] + 8) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v20 = v18 & 0x3F;
        if (v16 < 1)
        {
          if ((v19 >> (v20 ^ 1u)))
          {
            std::vector<int>::push_back[abi:ne200100](v4, (v17 + v8));
          }

          else
          {
            if (v14 != -1)
            {
              v28 = v16 - v15;
              v29 = *(v13 + 1);
              if (v28 / v29 * v29 >= v28)
              {
                v30 = v28 / v29;
              }

              else
              {
                v30 = v28 / v29 + 1;
              }

              *&v39 = v14;
              *(&v39 + 1) = v30;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
            }

            if (v16 < 0)
            {
              v31 = a1[1];
              v32 = *(v31 + v9);
              if (v32 != -1)
              {
                v35 = (v31 + v9 + 8);
                v33 = *v35;
                v34 = v35[1];
                if (v34 + *(*(a1[12] + 40) + 8 * v32) * *v35 > a2)
                {
                  v36 = v38 - v34;
                  if (v36 / v33 * v33 >= v36)
                  {
                    v37 = v36 / v33;
                  }

                  else
                  {
                    v37 = v36 / v33 + 1;
                  }

                  *&v39 = v32;
                  *(&v39 + 1) = v37;
                  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
                }
              }
            }
          }
        }

        else if ((v19 >> v20))
        {
          v21 = a1[1];
          v22 = *(v21 + v9);
          v23 = *(v21 + v9 + 16);
          if (v22 != -1)
          {
            v23 -= *(*(v12 + 40) + ((8 * v22) ^ 8)) * *(v21 + v9 + 8);
          }

          if (v23 <= a2)
          {
            if (v14 != -1)
            {
              v24 = v16 - v15;
              v25 = *(v13 + 1);
              if (v24 / v25 * v25 >= v24)
              {
                v26 = v24 / v25;
              }

              else
              {
                v26 = v24 / v25 + 1;
              }

              *&v39 = v14;
              *(&v39 + 1) = v26;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
              v21 = a1[1];
              v22 = *(v21 + v9);
            }

            if (v22 != -1)
            {
              if ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) - ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) * *(v21 + v9 + 8) > a2 - *(v21 + v9 + 16)) >= 0x8000000000000002)
              {
                v27 = ((a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8) * *(v21 + v9 + 8) > a2 - *(v21 + v9 + 16)) - (a2 - *(v21 + v9 + 16)) / *(v21 + v9 + 8);
              }

              else
              {
                v27 = 0x7FFFFFFFFFFFFFFFLL;
              }

              *&v39 = v22 ^ 1u;
              *(&v39 + 1) = v27;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v3, &v39);
            }

            LODWORD(v39) = *(a1[7] + v8) ^ 1;
            std::vector<int>::push_back[abi:ne200100](v4, &v39);
          }
        }
      }

      v9 += 24;
      --v11;
      v8 += 4;
      --v10;
    }

    while (v10);
  }
}

uint64_t operations_research::sat::TimeTablingPerTask::TimeTablingPerTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = &unk_284F44A30;
  *(a1 + 8) = -1431655765 * ((*(a3 + 88) - *(a3 + 80)) >> 3);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  *(a1 + 128) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (2 * *(a1 + 8) != -4)
  {
    if (((2 * *(a1 + 8) + 4) & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 120) = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v10 = (*(a1 + 104) - v9) >> 2;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      *(a1 + 104) = v9 + 4 * v8;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 96), v8 - v10);
  }

  *(a1 + 160) = 0;
  v11 = *(a1 + 16);
  if (v11 == -1)
  {
    if (*(a1 + 8) <= 0)
    {
      return a1;
    }

    v15 = *(a1 + 32);
  }

  else
  {
    if (*(a1 + 8) <= 0)
    {
      return a1;
    }

    v12 = *(*(a1 + 56) + 40);
    v13 = 8 * v11;
    v14 = *(v12 + v13);
    if (v14 + *(v12 + (v13 ^ 8)))
    {
      v19 = 0;
      do
      {
        *(*(a1 + 96) + 4 * v19) = v19;
        v20 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 48), v19);
        v21 = *(a1 + 160);
        if (v21 <= v20)
        {
          v21 = v20;
        }

        *(a1 + 160) = v21;
        ++v19;
      }

      while (v19 < *(a1 + 8));
      return a1;
    }

    v15 = *(a1 + 32) + v14 * *(a1 + 24);
  }

  v16 = 0;
  do
  {
    while (1)
    {
      *(*(a1 + 96) + 4 * v16) = v16;
      if (operations_research::sat::SchedulingDemandHelper::DemandMin(*(a1 + 48), v16) < v15)
      {
        break;
      }

      *(a1 + 152) = 1;
      if (++v16 >= *(a1 + 8))
      {
        return a1;
      }
    }

    v17 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 48), v16);
    v18 = *(a1 + 160);
    if (v18 <= v17)
    {
      v18 = v17;
    }

    *(a1 + 160) = v18;
    ++v16;
  }

  while (v16 < *(a1 + 8));
  return a1;
}