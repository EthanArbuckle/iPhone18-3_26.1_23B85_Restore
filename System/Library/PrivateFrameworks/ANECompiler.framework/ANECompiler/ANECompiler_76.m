void ***std::vector<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::~vector[abi:ne200100](void ***a1)
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
        if (*(v3 - 1))
        {
          absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(v3 - 3));
        }

        v5 = v3 - 6;
        *(v3 - 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
        *(v3 - 2) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
        *(v3 - 1) = 0;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v5);
        }

        v3 -= 6;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::SharedStatTables::AddTimingStat(atomic_ullong *this, const operations_research::sat::SubSolver *a2)
{
  v22[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v9 = *(a2 + 8);
  }

  size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  v4 = &v9;
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v9.__r_.__value_.__l.__size_;
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  v22[0] = "'";
  v22[1] = 1;
  p_data = &v4->__r_.__value_.__l.__data_;
  v21 = size;
  v19[0] = "':";
  v19[1] = 2;
  absl::lts_20240722::StrCat(v22, &p_data, v19, &v12);
  operations_research::TimeDistribution::ValueAsString((a2 + 48), &v13);
  if ((v15 & 0x8000000000000000) != 0)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    v5 = v14 - 1;
    v6 = v13;
    --v14;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_12;
    }

    v5 = --v15;
    v6 = &v13;
  }

  v6[v5] = 0;
LABEL_12:
  operations_research::TimeDistribution::ValueAsString((a2 + 152), &v16);
  if ((v18 & 0x8000000000000000) != 0)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v7 = v17 - 1;
    v8 = v16;
    --v17;
  }

  else
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    v7 = --v18;
    v8 = &v16;
  }

  v8[v7] = 0;
LABEL_18:
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  p_data = __p;
  LOBYTE(v21) = 0;
  operator new();
}

void operations_research::sat::SharedStatTables::AddSearchStat(atomic_ullong *a1, void **a2, uint64_t a3, void *a4)
{
  v33[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1);
  operations_research::sat::CpSolverResponse::CpSolverResponse(v16, 0);
  operations_research::sat::FillSolveStatsInResponse(a4, v16, v7);
  v33[0] = "'";
  v33[1] = 1;
  v31 = a2;
  v32 = a3;
  v30[0] = "':";
  v30[1] = 2;
  absl::lts_20240722::StrCat(v33, &v31, v30, &v23);
  operations_research::sat::FormatCounter(v17, v8, &v24);
  operations_research::sat::FormatCounter(v18, v9, &v25);
  operations_research::sat::FormatCounter(v19, v10, &v26);
  operations_research::sat::FormatCounter(v22, v11, &v27);
  operations_research::sat::FormatCounter(v20, v12, &v28);
  operations_research::sat::FormatCounter(v21, v13, &v29);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v31 = __p;
  LOBYTE(v32) = 0;
  operator new();
}

void sub_23CCFBB98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void operations_research::sat::SharedStatTables::AddClausesStat(atomic_ullong *a1, void **a2, uint64_t a3, void *a4)
{
  v47[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a4);
  v9 = v7[51];
  v8 = v7[52];
  v11 = v7[54];
  v10 = v7[55];
  v13 = v7[56];
  v12 = v7[57];
  v14 = v7[58];
  v15 = v7[61];
  v28 = v7[60];
  v29 = v7[59];
  v27 = v7[62];
  v47[0] = "'";
  v47[1] = 1;
  v45 = a2;
  v46 = a3;
  v44[0] = "':";
  v44[1] = 2;
  absl::lts_20240722::StrCat(v47, &v45, v44, &v32);
  operations_research::sat::FormatCounter(v9, v16, &v33);
  operations_research::sat::FormatCounter(v8, v17, &v34);
  operations_research::sat::FormatCounter(v11, v18, &v35);
  operations_research::sat::FormatCounter(v10, v19, &v36);
  operations_research::sat::FormatCounter(v13, v20, &v37);
  operations_research::sat::FormatCounter(v12, v21, &v38);
  operations_research::sat::FormatCounter(v14, v22, &v39);
  operations_research::sat::FormatCounter(v29, v23, &v40);
  operations_research::sat::FormatCounter(v28, v24, &v41);
  operations_research::sat::FormatCounter(v15, v25, &v42);
  operations_research::sat::FormatCounter(v27, v26, &v43);
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  v45 = __p;
  LOBYTE(v46) = 0;
  operator new();
}

void sub_23CCFC478(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_23CCFC5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  while (1)
  {
    v20 = *(v19 - 1);
    v19 -= 3;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (v19 == &a19)
    {
      JUMPOUT(0x23CCFC5D8);
    }
  }
}

void operations_research::sat::SharedStatTables::AddLpStat(atomic_ullong *a1, void **a2, uint64_t a3, void *a4)
{
  __dst[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1);
  *(v106 + 3) = 0;
  v106[0] = 0;
  v104[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v104[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v105 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a4);
  v8 = *v7;
  v61 = v7[1];
  if (*v7 != v61)
  {
    v56 = a3;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v62 = 0;
    v63 = 0;
    v59 = 0;
    v60 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v95 = 0;
    v96 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    __p = 0;
    size = 0;
    while (1)
    {
      v82 = v8;
      v14 = *v8;
      v15 = *(*v8 + 24880);
      v16 = *(*v8 + 24872);
      v17 = v15 - v16;
      if (v17)
      {
        v18 = v17 >> 3;
        if (v18 >= 9)
        {
          v60 = (v60 + v16[8]);
        }

        v62 = (v62 + *v16);
        if (v18 >= 6)
        {
          v59 = (v59 + v16[5]);
        }
      }

      v81 = *(v14 + 24648);
      v19 = *(v14 + 176);
      v20 = v63;
      if ((v63 & 0x80u) != 0)
      {
        v20 = size;
      }

      v83 = v13;
      v84 = v9;
      v86 = v12;
      v85 = v10;
      if (v20)
      {
        v80 = *(v14 + 176);
      }

      else
      {
        operations_research::glop::LinearProgram::GetDimensionString((v14 + 920), &__sz);
        if (v63 < 0)
        {
          operator delete(__p);
        }

        __p = __sz.__r_.__value_.__r.__words[0];
        v106[0] = __sz.__r_.__value_.__r.__words[2];
        *(v106 + 3) = *(&__sz.__r_.__value_.__r.__words[2] + 3);
        v63 = HIBYTE(__sz.__r_.__value_.__r.__words[2]);
        size = __sz.__r_.__value_.__l.__size_;
        v80 = *(v14 + 176);
      }

      v65 = *(v14 + 24816);
      v66 = *(v14 + 24824);
      v67 = *(v14 + 24840);
      v68 = *(v14 + 24848);
      v21 = *(v14 + 24864);
      v71 = v21;
      v72 = *(v14 + 56);
      v69 = *(v14 + 24856);
      v70 = *(v14 + 48);
      v73 = *(v14 + 128);
      v74 = *(v14 + 136);
      v75 = *(v14 + 144);
      v76 = *(v14 + 152);
      v77 = *(v14 + 160);
      v78 = *(v14 + 168);
      v79 = *(v14 + 184);
      v22 = **(v14 + 192);
      v23 = *(v14 + 200);
      v102 = v23;
      v100 = v23[10];
      if (v22 != v23 || v23[10] != 0)
      {
        break;
      }

LABEL_3:
      v98 = (v98 + v81);
      v99 = (v99 + v19);
      v96 = (v96 + v65);
      v91 = (v91 + v66);
      v92 = (v92 + v67);
      v93 = (v93 + v68);
      v94 = (v94 + v69);
      v95 = (v95 + v71);
      v89 = (v89 - 0x3333333333333333 * ((v72 - v70) >> 4));
      v90 = (v90 + v73);
      v87 = (v87 + v74);
      v88 = (v88 + v75);
      v9 = (v84 + v76);
      v10 = (v85 + v77);
      v11 += v78;
      v12 = v80 + v86;
      v13 = (v83 + v79);
      v97 = (v97 + 1);
      v8 = v82 + 1;
      if (v82 + 1 == v61)
      {
        __dst[0] = "'";
        __dst[1] = 1;
        v117 = a2;
        v118 = v56;
        v116[0] = "':";
        v116[1] = 2;
        absl::lts_20240722::StrCat(__dst, &v117, v116, &__sz);
        operations_research::sat::FormatCounter(v97, v49, &__s);
        operations_research::sat::FormatCounter(v98, v50, &v111);
        operations_research::sat::FormatCounter(v99, v51, &v112);
        operations_research::sat::FormatCounter(v62, v52, &v113);
        operations_research::sat::FormatCounter(v60, v53, &v114);
        operations_research::sat::FormatCounter(v59, v54, &v115);
        v107[1] = 0;
        v107[0] = 0;
        v108 = 0;
        v117 = v107;
        LOBYTE(v118) = 0;
        operator new();
      }
    }

    v25 = 0;
    v101 = v19;
    while (1)
    {
      v26 = &v22[32 * v25];
      v27 = *(v26 + 10);
      __sz.__r_.__value_.__r.__words[0] = (v26 + 16);
      if (!v105)
      {
        operator new();
      }

      v103 = v27;
      v28 = v26[39];
      v29 = v28 >= 0 ? v26 + 16 : *(v26 + 2);
      v30 = v28 >= 0 ? v26[39] : *(v26 + 3);
      v31 = v104[0];
      v32 = *(v104[0] + 10);
      if (*(v104[0] + 10))
      {
        break;
      }

      while (1)
      {
        LODWORD(v34) = 0;
LABEL_48:
        if (v31[11])
        {
          break;
        }

        v31 = *&v31[8 * v34 + 240];
        v32 = v31[10];
        if (v31[10])
        {
          goto LABEL_30;
        }
      }

      v42 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v104, v31, v34, &std::piecewise_construct, &__sz);
      v19 = v101;
      v41 = v103;
      v31 = v42;
      LOBYTE(v34) = v43;
LABEL_52:
      *&v31[32 * v34 + 40] += v41;
      if (v22[11])
      {
        if (++v25 == v22[10])
        {
          v44 = v22;
          do
          {
            v45 = *v44;
            if (*(*v44 + 11))
            {
              goto LABEL_61;
            }

            v46 = v44[8];
            v44 = *v44;
          }

          while (v46 == v45[10]);
          v25 = v46;
          v22 = v45;
        }
      }

      else
      {
        v47 = &v22[8 * (v25 + 1) + 240];
        do
        {
          v22 = *v47;
          v48 = *(*v47 + 11);
          v47 = *v47 + 240;
        }

        while (!v48);
        v25 = 0;
      }

LABEL_61:
      if (v22 == v102 && v25 == v100)
      {
        goto LABEL_3;
      }
    }

LABEL_30:
    v33 = 0;
    while (1)
    {
      v34 = (v32 + v33) >> 1;
      v35 = &v31[32 * v34 + 16];
      v36 = *(v35 + 23);
      if ((v36 & 0x8000000000000000) != 0)
      {
        v39 = *v35;
        v36 = *&v31[32 * v34 + 24];
        if (v30 >= v36)
        {
          v40 = *&v31[32 * v34 + 24];
        }

        else
        {
          v40 = v30;
        }

        v38 = memcmp(v39, v29, v40);
        if (v38)
        {
LABEL_38:
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          v33 = v34 + 1;
          v34 = v32;
          goto LABEL_32;
        }
      }

      else
      {
        if (v30 >= v36)
        {
          v37 = *(v35 + 23);
        }

        else
        {
          v37 = v30;
        }

        v38 = memcmp(v35, v29, v37);
        if (v38)
        {
          goto LABEL_38;
        }
      }

      if (v36 < v30)
      {
        goto LABEL_31;
      }

      if (v36 == v30)
      {
        v19 = v101;
        v41 = v103;
        goto LABEL_52;
      }

LABEL_32:
      v32 = v34;
      if (v33 == v34)
      {
        goto LABEL_48;
      }
    }
  }

  absl::lts_20240722::Mutex::Unlock(a1);
  v55 = *MEMORY[0x277D85DE8];
}

void sub_23CCFE0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, absl::lts_20240722::Mutex *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (*(v69 - 225) < 0)
  {
    operator delete(*(v69 - 248));
  }

  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(&a69);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::Unlock(a55);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>::~pair(uint64_t a1)
{
  if (*(a1 + 40))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(a1 + 24));
  }

  *(a1 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 32) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 40) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::SharedStatTables::AddLnsStat(atomic_ullong *a1, const char *a2, uint64_t a3, atomic_ullong *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1);
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v7 = a4[13];
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v8 = a4[12];
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v32 = "'";
  v33 = 1;
  v30 = a2;
  v31 = a3;
  v27 = "':";
  v28 = 2;
  absl::lts_20240722::StrCat(&v32, &v30, &v27, &v22);
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v10 = a4[14];
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  v12 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v10, v34, v11);
  v32 = v34;
  v33 = v12 - v34;
  v30 = "/";
  v31 = 1;
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v13 = a4[12];
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v13, v29, v14);
  v27 = v29;
  v28 = v15 - v29;
  absl::lts_20240722::StrCat(&v32, &v30, &v27, &v23);
  v35 = v7 / v9 * 100.0;
  v36 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("%2.0f%%", 7, &v35, 1uLL, &v24);
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v16 = *(a4 + 9);
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  v35 = v16;
  v36 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("%0.2f", 5, &v35, 1uLL, &v25);
  absl::lts_20240722::Mutex::Lock(a4 + 5);
  v17 = *(a4 + 11);
  absl::lts_20240722::Mutex::Unlock((a4 + 5));
  v35 = v17;
  v36 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("%0.2f", 5, &v35, 1uLL, &v26);
  __p[1] = 0;
  v19 = 0;
  __p[0] = 0;
  v20 = __p;
  v21 = 0;
  operator new();
}

void sub_23CCFEB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void operations_research::sat::SharedStatTables::AddLsStat(atomic_ullong *a1, void **a2, uint64_t a3, operations_research::sat *a4, operations_research::sat *a5, operations_research::sat *a6, operations_research::sat *a7, operations_research::sat *a8, operations_research::sat *a9)
{
  v34[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1);
  v34[0] = "'";
  v34[1] = 1;
  v32 = a2;
  v33 = a3;
  v31[0] = "':";
  v31[1] = 2;
  absl::lts_20240722::StrCat(v34, &v32, v31, &v24);
  operations_research::sat::FormatCounter(a4, v16, &v25);
  operations_research::sat::FormatCounter(a5, v17, &v26);
  operations_research::sat::FormatCounter(a6, v18, &v27);
  operations_research::sat::FormatCounter(a7, v19, &v28);
  operations_research::sat::FormatCounter(a8, v20, &v29);
  operations_research::sat::FormatCounter(a9, v21, &v30);
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v32 = __p;
  LOBYTE(v33) = 0;
  operator new();
}

void sub_23CCFF1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_23CCFF2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    v14 = *(v13 - 1);
    v13 -= 3;
    if (v14 < 0)
    {
      operator delete(*v13);
    }

    if (v13 == &a13)
    {
      JUMPOUT(0x23CCFF2D8);
    }
  }
}

void operations_research::sat::SharedStatTables::Display(atomic_ullong *this, operations_research::SolverLogger *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    absl::lts_20240722::Mutex::Lock(this);
    if (0xAAAAAAAAAAAAAAABLL * ((this[2] - this[1]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 1, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      if (size > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (size >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = size;
      if (size)
      {
        memmove(&__dst, v3, size);
      }

      *(&__dst + size) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 261, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[5] - this[4]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 4, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v6 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v6;
      if (v6)
      {
        memmove(&__dst, v5, v6);
      }

      *(&__dst + v6) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 262, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[8] - this[7]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 7, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v8;
      if (v8)
      {
        memmove(&__dst, v7, v8);
      }

      *(&__dst + v8) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 264, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[11] - this[10]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 10, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v10;
      if (v10)
      {
        memmove(&__dst, v9, v10);
      }

      *(&__dst + v10) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 267, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[14] - this[13]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 13, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v12;
      if (v12)
      {
        memmove(&__dst, v11, v12);
      }

      *(&__dst + v12) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 268, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[17] - this[16]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 16, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v14;
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v14) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 270, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[20] - this[19]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 19, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v16;
      if (v16)
      {
        memmove(&__dst, v15, v16);
      }

      *(&__dst + v16) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 273, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    v17 = this[28];
    v29 = this[29];
    if (v17 != v29)
    {
      while (1)
      {
        v30 = v17;
        v18 = *(v17 + 24);
        v19 = *(v17 + 32);
        if (*v18 != v19 || *(v19 + 10) != 0)
        {
          *&__dst = *v18 + 16;
          operator new();
        }

        v17 = v30 + 48;
        if (v30 + 48 == v29)
        {
          v22 = this[28];
          v21 = this[29];
          __dst = 0uLL;
          v33 = 0;
          __p[0].__r_.__value_.__r.__words[0] = &__dst;
          __p[0].__r_.__value_.__s.__data_[8] = 0;
          operator new();
        }
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[23] - this[22]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 22, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v24 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v24;
      if (v24)
      {
        memmove(&__dst, v23, v24);
      }

      *(&__dst + v24) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 313, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * ((this[26] - this[25]) >> 3) >= 2 && *a2 == 1)
    {
      operations_research::sat::FormatTable(this + 25, 2, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v26 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v26;
      if (v26)
      {
        memmove(&__dst, v25, v26);
      }

      *(&__dst + v26) = 0;
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/stat_tables.cc", 314, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    absl::lts_20240722::Mutex::Unlock(this);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_23CD00A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, absl::lts_20240722::Mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 153) < 0)
  {
    operator delete(*(v40 - 176));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::string>>::~vector[abi:ne200100](&a21);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(&a24);
  absl::lts_20240722::Mutex::Unlock(a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::__emplace_back_slow_path<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 48 * v2;
  __p = 0;
  v14 = v6;
  *v6 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 32) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(a2 + 40) = 0;
  v15 = 48 * v2 + 48;
  v16 = 0;
  std::vector<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v14;
  while (1)
  {
    v11 = v15;
    if (v15 == v10)
    {
      break;
    }

    v15 -= 48;
    if (*(v11 - 8))
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(v11 - 24));
    }

    *(v11 - 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(v11 - 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(v11 - 8) = 0;
    if (*(v11 - 25) < 0)
    {
      operator delete(*(v11 - 48));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CD00DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *v7 = 0;
      *(v7 + 1) = 0;
      v10 = *(v7 + 3);
      *(v7 + 2) = 0;
      *(v7 + 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
      *(v8 + 24) = v10;
      *(v8 + 32) = *(v7 + 4);
      v11 = *(v7 + 5);
      *(v7 + 5) = 0;
      *(v8 + 40) = v11;
      *(v7 + 4) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
      v7 += 3;
      v8 += 48;
    }

    while (v7 != v4);
    do
    {
      if (*(v5 + 40))
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(v5 + 24));
      }

      *(v5 + 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
      *(v5 + 32) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
      *(v5 + 40) = 0;
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 48;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<std::string,absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    if (*(i - 8))
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(i - 24));
    }

    *(i - 24) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(i - 16) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(i - 8) = 0;
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::SequentialLoop(uint64_t *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  memset(v18, 0, sizeof(v18));
  v4 = v2 - v3;
  if (v2 != v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  for (i = 0; ; ++i)
  {
    v6 = *a1;
    v7 = a1[1];
    while (v6 != v7)
    {
      if (*v6)
      {
        (*(**v6 + 16))(*v6);
      }

      ++v6;
    }

    v9 = SubsolverToSchedule;
    if (SubsolverToSchedule == -1)
    {
      break;
    }

    ++*(8 * SubsolverToSchedule);
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(SubsolverToSchedule);
    (*(**(*a1 + 8 * v9) + 40))(v19);
    if (!v20)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v20 + 48))(v20);
    v11 = v20;
    if (v20 == v19)
    {
      v11 = (*(*v20 + 32))(v20);
    }

    else if (v20)
    {
      v11 = (*(*v20 + 40))();
    }

    v12 = *(*a1 + 8 * v9);
    v13 = absl::lts_20240722::GetCurrentTimeNanos(v11);
    operations_research::TimeDistribution::AddTimeInSec(v12 + 48, (v13 - CurrentTimeNanos) * 0.000000001);
  }

  if (v4)
  {
    v16 = v4;
    operator delete(v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23CD01294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::function<void ()(void)>::~function(va);
  if (v9)
  {
    operator delete(v9);
    if (!v8)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::ClearSubsolversThatAreDone(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v4 = result;
    v5 = 0;
    v6 = 1;
    do
    {
      result = *(v2 + 8 * v5);
      if (result)
      {
        if (*(*v4 + 4 * v5) <= 0)
        {
          result = (*(*result + 24))(result);
          if (result)
          {
            {
              v10 = v6;
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/subsolver.cc", 69);
              v7 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v12, 1);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Deleting ", 9uLL);
              v8 = *(*a2 + 8 * v5);
              if (*(v8 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v11, *(v8 + 8), *(v8 + 16));
              }

              else
              {
                v9 = *(v8 + 8);
                v11.__r_.__value_.__r.__words[2] = *(v8 + 24);
                *&v11.__r_.__value_.__l.__data_ = v9;
              }

              absl::lts_20240722::log_internal::LogMessage::operator<<(v7, &v11);
              if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v11.__r_.__value_.__l.__data_);
              }

              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
              v6 = v10;
            }

            result = *(*a2 + 8 * v5);
            *(*a2 + 8 * v5) = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }
      }

      v5 = v6;
      v2 = *a2;
      ++v6;
    }

    while (v5 < (a2[1] - *a2) >> 3);
  }

  return result;
}

void sub_23CD0149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD014B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a18);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a18);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::anonymous namespace::NextSubsolverToSchedule(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  do
  {
    v8 = *(v2 + 8 * v5);
    if (v8 && (*(*v8 + 32))(v8) && (v6 == -1 || *(*a2 + 8 * v5) < *(*a2 + 8 * v6)))
    {
      v6 = (v7 - 1);
    }

    v5 = v7;
    v2 = *a1;
    ++v7;
  }

  while (v5 < (a1[1] - *a1) >> 3);
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/subsolver.cc", 57);
    v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v14, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Scheduling ", 0xBuLL);
    v10 = *(*a1 + 8 * v6);
    if (*(v10 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(v10 + 8), *(v10 + 16));
    }

    else
    {
      v12 = *(v10 + 8);
      v13.__r_.__value_.__r.__words[2] = *(v10 + 24);
      *&v13.__r_.__value_.__l.__data_ = v12;
    }

    absl::lts_20240722::log_internal::LogMessage::operator<<(v9, &v13);
    operations_research::sat::BruteForceOrthogonalPacking(&v13, v14);
  }

  return v6;
}

void sub_23CD0165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CD01670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void operations_research::sat::DeterministicLoop(uint64_t *a1, int a2, int a3)
{
  v52 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    operations_research::sat::DeterministicLoop(a2);
  }

  if (a3 <= 0)
  {
    operations_research::sat::DeterministicLoop(a3);
  }

  if (a3 == 1)
  {
    v5 = *MEMORY[0x277D85DE8];

    operations_research::sat::SequentialLoop(a1);
    return;
  }

  v7 = *a1;
  v6 = a1[1];
  memset(v45, 0, sizeof(v45));
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(&v44, 0, sizeof(v44));
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  std::vector<std::function<void ()(void)>>::reserve(&v41, a3);
  operations_research::ThreadPool::ThreadPool(v51, "DeterministicLoop", 17, a2);
  operations_research::ThreadPool::StartWorkers(v51);
  while (1)
  {
    v8 = *a1;
    v9 = a1[1];
    while (v8 != v9)
    {
      if (*v8)
      {
        (*(**v8 + 16))(*v8);
      }

      ++v8;
    }

    v10 = v41;
    v11 = v42;
    if (v42 != v41)
    {
      v12 = v42 - 4;
      do
      {
        v13 = *(v11 - 1);
        v11 -= 4;
        if (v11 == v13)
        {
          (*(*v13 + 32))(v13);
        }

        else if (v13)
        {
          (*(*v13 + 40))(v13);
        }

        v12 -= 4;
      }

      while (v11 != v10);
    }

    v42 = v10;
    if (SubsolverToSchedule != -1)
    {
      ++v44.__begin_[SubsolverToSchedule];
      ++*(v45[0] + SubsolverToSchedule);
      (*(**(*a1 + 8 * SubsolverToSchedule) + 40))(v49);
      v21 = v42;
      if (v42 >= v43)
      {
        v23 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(&v41, v49);
        goto LABEL_34;
      }

      if (v50)
      {
        if (v50 == v49)
        {
          v42[3] = v42;
          (*(*v50 + 24))(v50, v21);
          goto LABEL_33;
        }

        v42[3] = v50;
        v22 = &v50;
      }

      else
      {
        v22 = (v42 + 3);
      }

      *v22 = 0;
LABEL_33:
      v23 = (v21 + 4);
LABEL_34:
      v42 = v23;
      if (v50 == v49)
      {
        (*(*v50 + 32))(v50);
      }

      else if (v50)
      {
        (*(*v50 + 40))();
      }

      operator new();
    }

    if (v41 == v42)
    {
      break;
    }

    v24 = v42 - v41;
    v25 = (v39 - __p) >> 3;
    if ((v42 - v41) >> 5 <= v25)
    {
      if (v24 >> 5 < v25)
      {
        v39 = __p + 8 * (v24 >> 5);
      }
    }

    else
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(&__p, ((v42 - v41) >> 5) - v25);
      v24 = v42 - v41;
    }

    absl::lts_20240722::BlockingCounter::BlockingCounter(v49, v24 >> 5, v15, v16, v17, v18, v19, v20);
    if (v42 != v41)
    {
      v46 = 0;
      v26 = *(v41 + 3);
      v27 = v48;
      if (!v26)
      {
        goto LABEL_49;
      }

      if (v26 == v41)
      {
        v48[0] = v47;
        (*(**(v41 + 3) + 24))(*(v41 + 3), v47);
      }

      else
      {
        v48[0] = *(v41 + 3);
        v27 = v41 + 24;
LABEL_49:
        *v27 = 0;
      }

      v48[1] = &__p;
      v48[2] = v49;
      v48[6] = 0;
      operator new();
    }

    absl::lts_20240722::BlockingCounter::Wait(v49);
    v28 = (a1[1] - *a1) >> 3;
    __u = 0;
    std::vector<int>::assign(&v44, v28, &__u);
    if (v42 != v41)
    {
      v29 = 0;
      v30 = 1;
      do
      {
        operations_research::TimeDistribution::AddTimeInSec(*(*a1 + 8 * *(4 * v29)) + 48, *(__p + v29));
        v29 = v30++;
      }

      while (v29 < (v42 - v41) >> 5);
    }

    absl::lts_20240722::Mutex::~Mutex(v49);
  }

  operations_research::ThreadPool::~ThreadPool(v51);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  v31 = v41;
  if (v41)
  {
    v32 = v42;
    v33 = v41;
    if (v42 != v41)
    {
      v34 = v42 - 4;
      do
      {
        v35 = *(v32 - 1);
        v32 -= 4;
        if (v32 == v35)
        {
          (*(*v35 + 32))(v35);
        }

        else if (v35)
        {
          (*(*v35 + 40))(v35);
        }

        v34 -= 4;
      }

      while (v32 != v31);
      v33 = v41;
    }

    v42 = v31;
    operator delete(v33);
  }

  if (v44.__begin_)
  {
    v44.__end_ = v44.__begin_;
    operator delete(v44.__begin_);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_23CD02004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::function<void ()(void)>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CD0223C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0::~$_0(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
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

void **std::vector<std::function<void ()(void)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::NonDeterministicLoop(uint64_t *a1, int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    operations_research::sat::NonDeterministicLoop(a2);
  }

  if (a2 == 1)
  {
    v3 = *MEMORY[0x277D85DE8];

    operations_research::sat::SequentialLoop(a1);
    return;
  }

  v28 = 0;
  v27 = 0;
  v5 = *a1;
  v4 = a1[1];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v6 = v4 - v5;
  if (v6)
  {
    if (!((v6 >> 3) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v22 = &v27;
  v23 = a2;
  operations_research::ThreadPool::ThreadPool(v40, "NonDeterministicLoop", 20, a2);
  operations_research::ThreadPool::StartWorkers(v40);
  v8 = *a1;
  v7 = a1[1];
  memset(v21, 0, sizeof(v21));
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  while (1)
  {
    while (1)
    {
      v38[2] = absl::lts_20240722::Condition::CastAndCallMethod<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_1 const,BOOL (operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_1::*)(void)const>;
      v39 = &v22;
      v38[0] = operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_1::operator();
      v38[1] = 0;
      absl::lts_20240722::synchronization_internal::KernelTimeout::KernelTimeout(&v20, 0, 0x17D78400u);
      if (absl::lts_20240722::Mutex::LockWhenCommon(&v28, v38, v20.__r_.__value_.__l.__data_, 1))
      {
        break;
      }

      absl::lts_20240722::Mutex::Unlock(&v28);
      v12 = *a1;
      v13 = a1[1];
      while (v12 != v13)
      {
        if (*v12)
        {
          (*(**v12 + 16))(*v12);
        }

        ++v12;
      }
    }

    v9 = v27;
    absl::lts_20240722::Mutex::Unlock(&v28);
    v10 = *a1;
    v11 = a1[1];
    while (v10 != v11)
    {
      if (*v10)
      {
        (*(**v10 + 16))(*v10);
      }

      ++v10;
    }

    absl::lts_20240722::Mutex::Lock(&v28);
    absl::lts_20240722::Mutex::Unlock(&v28);
    v15 = SubsolverToSchedule;
    if (SubsolverToSchedule != -1)
    {
      ++*(8 * SubsolverToSchedule);
      absl::lts_20240722::Mutex::Lock(&v28);
      ++v27;
      ++*(v24 + v15);
      absl::lts_20240722::Mutex::Unlock(&v28);
      (*(**(*a1 + 8 * v15) + 40))(v38);
      v16 = *(*a1 + 8 * v15);
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v16 + 8), *(v16 + 16));
      }

      else
      {
        v17 = *(v16 + 8);
        v20.__r_.__value_.__r.__words[2] = *(v16 + 24);
        *&v20.__r_.__value_.__l.__data_ = v17;
      }

      v18 = &v30;
      if (v39)
      {
        if (v39 == v38)
        {
          v30 = &v29;
          (*(*v39 + 3))();
LABEL_34:
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v20;
          }

          v32 = v15;
          v33 = a1;
          v34 = &v28;
          v35 = &v27;
          v36 = &v24;
          v37 = 0;
          operator new();
        }

        v30 = v39;
        v18 = &v39;
      }

      *v18 = 0;
      goto LABEL_34;
    }

    if (!v9)
    {
      break;
    }

    AbslInternalSleepFor_lts_20240722(0, 0x3D0900u);
  }

  operations_research::ThreadPool::~ThreadPool(v40);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  absl::lts_20240722::Mutex::~Mutex(&v28);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23CD02A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    v2 = *(a1 + 24);
    if (v2 != a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(*v2 + 32))(v2);
    return a1;
  }

  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44848;
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

void std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F44848;
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

__n128 std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_284F44848;
  a2->n128_u32[2] = a1->n128_u32[2];
  v4 = a1[2].n128_u64[1];
  if (v4)
  {
    if (v4 == &a1[1])
    {
      a2[2].n128_u64[1] = a2[1].n128_u64;
      (*(*a1[2].n128_u64[1] + 24))(a1[2].n128_u64[1]);
    }

    else
    {
      a2[2].n128_u64[1] = (*(v4->n128_u64[0] + 16))(v4);
    }

    result = a1[3];
    a2[3] = result;
  }

  else
  {
    a2[2].n128_u64[1] = 0;
    result = a1[3];
    a2[3] = result;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::destroy(uint64_t a1)
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

void std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
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

BOOL std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = (*(*v3 + 48))(v3);
  v12 = (absl::lts_20240722::GetCurrentTimeNanos(v4) - CurrentTimeNanos) * 0.000000001;
  v13 = *(a1 + 56);
  *(**(a1 + 48) + 8 * *(a1 + 8)) = v12;

  return absl::lts_20240722::BlockingCounter::DecrementCount(v13, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t std::__function::__func<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0,std::allocator<operations_research::sat::DeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int,int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat17DeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiiE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat17DeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiiE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat17DeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiiE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat17DeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiiE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t absl::lts_20240722::Condition::CastAndCallMethod<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_1 const,BOOL (operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_1::*)(void)const>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F448C8;
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F448C8;
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
LABEL_3:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

LABEL_7:

      JUMPOUT(0x23EED9460);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
      goto LABEL_3;
    }
  }

  (*(*v3 + 32))(v3);
  goto LABEL_7;
}

void sub_23CD03494(_Unwind_Exception *a1)
{
  std::function<void ()(void)>::~function(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F448C8;
  v4 = *(a1 + 32);
  if (!v4)
  {
    *(a2 + 32) = 0;
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    std::string::__init_copy_ctor_external((a2 + 40), *(a1 + 40), *(a1 + 48));
    goto LABEL_9;
  }

  if (v4 == a1 + 8)
  {
    *(a2 + 32) = a2 + 8;
    (*(**(a1 + 32) + 24))(*(a1 + 32), a2 + 8);
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  *(a2 + 32) = (*(*v4 + 16))(v4);
  if (*(a1 + 63) < 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
LABEL_9:
  result = *(a1 + 64);
  v7 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 64) = result;
  *(a2 + 80) = v7;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    result = *(a1 + 32);
    if (result != v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = *(*result + 32);

    return v4();
  }

  result = *(a1 + 32);
  if (result == v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!result)
  {
    return result;
  }

  v4 = *(*result + 40);

  return v4();
}

void std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::destroy_deallocate(void **__p)
{
  v2 = (__p + 1);
  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
    v3 = __p[4];
    if (v3 != v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = __p[4];
    if (v3 != v2)
    {
LABEL_3:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = __p;

      goto LABEL_7;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = __p;

LABEL_7:
  operator delete(v4);
}

void std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(a1);
  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3);
  v4 = *(a1 + 80);
  IsEnabled1 = absl::lts_20240722::Mutex::Lock(v4);
  --*(**(a1 + 96) + 4 * *(a1 + 64));
  v6 = "ons_research3sat22SparsePermutationProtoE";
  if (dword_2810BD368 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0::operator() const(void)::{lambda(void)#1}::operator() const(void)::site, dword_2810BD368);
    if (IsEnabled1)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/subsolver.cc", 272);
      v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v13, 1);
      v10 = absl::lts_20240722::log_internal::LogMessage::operator<<(v9, (a1 + 40));
      v11 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " done in ", 9uLL);
      v14 = (absl::lts_20240722::GetCurrentTimeNanos(v11) - CurrentTimeNanos) * 0.000000001;
      v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v10, &v14);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "s.", 2uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v13);
      v6 = "N19operations_research3sat22SparsePermutationProtoE" + 10;
    }
  }

  v7 = *(**(a1 + 72) + 8 * *(a1 + 64));
  v8 = absl::lts_20240722::GetCurrentTimeNanos(IsEnabled1);
  operations_research::TimeDistribution::AddTimeInSec(v7 + 48, (v8 - CurrentTimeNanos) * *(v6 + 209));
  --**(a1 + 88);
  absl::lts_20240722::Mutex::Unlock(v4);
}

uint64_t std::__function::__func<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0,std::allocator<operations_research::sat::NonDeterministicLoop(std::vector<std::unique_ptr<operations_research::sat::SubSolver>> &,int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat20NonDeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat20NonDeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat20NonDeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat20NonDeterministicLoopERNSt3__16vectorINS1_10unique_ptrINS0_9SubSolverENS1_14default_deleteIS4_EEEENS1_9allocatorIS7_EEEEiE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::SymmetryPropagator::SymmetryPropagator(uint64_t this)
{
  strcpy((this + 8), "SymmetryPropagator");
  *(this + 31) = 18;
  *(this + 32) = 0xFFFFFFFFLL;
  *this = &unk_284F44948;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0;
  *(this + 183) = 18;
  strcpy((this + 160), "SymmetryPropagator");
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0;
  *(this + 224) = 0;
  *(this + 232) = 0;
  *(this + 240) = 0;
  *(this + 208) = 0;
  *(this + 216) = this + 224;
  return this;
}

void operations_research::sat::SymmetryPropagator::~SymmetryPropagator(operations_research::sat::SymmetryPropagator *this)
{
  *this = &unk_284F44948;
  operations_research::StatsGroup::~StatsGroup((this + 160));
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    v5 = *(this + 12);
    v6 = *(this + 11);
    if (v5 != v4)
    {
      v7 = *(this + 12);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 11);
    }

    *(this + 12) = v4;
    operator delete(v6);
  }

  v10 = *(this + 8);
  if (v10)
  {
    v11 = *(this + 9);
    v12 = *(this + 8);
    if (v11 != v10)
    {
      v13 = *(this + 9);
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *(this + 8);
    }

    *(this + 9) = v10;
    operator delete(v12);
  }

  v16 = *(this + 5);
  if (v16)
  {
    v17 = *(this + 6);
    v18 = *(this + 5);
    if (v17 != v16)
    {
      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          v21 = v19[4];
          if (v21)
          {
            v19[5] = v21;
            operator delete(v21);
          }

          v22 = v19[1];
          if (v22)
          {
            v19[2] = v22;
            operator delete(v22);
          }

          MEMORY[0x23EED9460](v19, 0x1010C40738DD8B8);
        }
      }

      while (v17 != v16);
      v18 = *(this + 5);
    }

    *(this + 6) = v16;
    operator delete(v18);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  operations_research::sat::SymmetryPropagator::~SymmetryPropagator(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SymmetryPropagator::AddSymmetry(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 32);
  v4 = *(*a2 + 40) - v3;
  if ((v4 & 0x3FFFFFFFCLL) != 0)
  {
    v6 = *v2;
    v8 = a1[8];
    v9 = a1[9];
    v7 = (a1 + 8);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
    if (v6 > v10)
    {
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v7, v6 - v10);
      v2 = *a2;
      v3 = *(*a2 + 32);
      v4 = *(*a2 + 40) - v3;
    }

    if ((v4 >> 2) >= 1)
    {
      for (i = 0; i < ((v2[5] - v3) >> 2); ++i)
      {
        if (i)
        {
          v12 = 4 * v3[i - 1];
          v13 = v3[i];
          v14 = 4 * v13;
          if (v12 != 4 * v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = 0;
          v13 = *v3;
          v14 = 4 * v13;
          if (4 * v13)
          {
LABEL_12:
            v15 = v2[1];
            LODWORD(v16) = *(v15 + 4 * (v13 - 1));
            v17 = (v14 + v15);
            v18 = (v12 + v15);
            while (1)
            {
              while (1)
              {
                v19 = a1[8] + 24 * v16;
                v16 = *v18;
                v20 = a1[6] - a1[5];
                v22 = *(v19 + 8);
                v21 = *(v19 + 16);
                if (v22 >= v21)
                {
                  break;
                }

                *v22 = (v16 << 32) | (v20 >> 3);
                *(v19 + 8) = v22 + 1;
                if (++v18 == v17)
                {
                  goto LABEL_6;
                }
              }

              v23 = *v19;
              v24 = v22 - *v19;
              v25 = (v24 >> 3) + 1;
              if (v25 >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v26 = v21 - v23;
              if (v26 >> 2 > v25)
              {
                v25 = v26 >> 2;
              }

              v27 = v26 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v25;
              if (v27)
              {
                break;
              }

              v28 = (8 * (v24 >> 3));
              *v28 = (v16 << 32) | (v20 >> 3);
              v29 = v28 + 1;
              memcpy(0, v23, v24);
              *v19 = 0;
              *(v19 + 8) = v29;
              *(v19 + 16) = 0;
              if (v23)
              {
                operator delete(v23);
              }

              *(v19 + 8) = v29;
              if (++v18 == v17)
              {
LABEL_6:
                v2 = *a2;
                goto LABEL_7;
              }
            }

            if (!(v27 >> 61))
            {
              operator new();
            }

LABEL_60:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }
        }

LABEL_7:
        v3 = v2[4];
      }
    }

    v31 = a1[12];
    v30 = a1[13];
    if (v31 >= v30)
    {
      v33 = a1[11];
      v34 = v31 - v33;
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 3);
      v36 = v35 + 1;
      if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v37 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
      if (2 * v37 > v36)
      {
        v36 = 2 * v37;
      }

      if (v37 >= 0x555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (v38 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_60;
      }

      v39 = 24 * v35;
      v32 = 24 * v35 + 24;
      v40 = v39 - v34;
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      memcpy((v39 - v34), v33, v34);
      a1[11] = v40;
      a1[12] = v32;
      a1[13] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      v32 = (v31 + 24);
      *v31 = 0;
      *(v31 + 1) = 0;
      *(v31 + 2) = 0;
    }

    a1[12] = v32;
    v41 = (*(*a2 + 16) - *(*a2 + 8)) >> 2;
    v42 = *(v32 - 24);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v32 - 8) - v42) >> 2) < v41)
    {
      if (v41 < 0x1555555555555556)
      {
        v43 = *(v32 - 16) - v42;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v44 = *a2;
    *a2 = 0;
    v46 = a1[6];
    v45 = a1[7];
    if (v46 >= v45)
    {
      v48 = a1[5];
      v49 = v46 - v48;
      v50 = (v46 - v48) >> 3;
      v51 = v50 + 1;
      if ((v50 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v52 = v45 - v48;
      if (v52 >> 2 > v51)
      {
        v51 = v52 >> 2;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (!(v53 >> 61))
        {
          operator new();
        }

        goto LABEL_60;
      }

      v54 = (v46 - v48) >> 3;
      v55 = (8 * v50);
      v56 = (8 * v50 - 8 * v54);
      *v55 = v44;
      v47 = v55 + 1;
      memcpy(v56, v48, v49);
      a1[5] = v56;
      a1[6] = v47;
      a1[7] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v46 = v44;
      v47 = v46 + 8;
    }

    a1[6] = v47;
  }
}

uint64_t operations_research::sat::SymmetryPropagator::PropagateNext(std::vector<int> *this, operations_research::sat::Trail *a2)
{
  end_high = SHIDWORD(this[1].__end_);
  v4 = *(*(a2 + 6) + 4 * end_high);
  value = this[2].__end_cap_.__value_;
  if (v4 >= (-1431655765 * ((this[3].__begin_ - value) >> 3)) || (v58 = &value[6 * v4], v6 = *v58, *(v58 + 1) == *v58))
  {
LABEL_28:
    HIDWORD(this[1].__end_) = end_high + 1;
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v16 = (v6 + 8 * v8);
    v59 = *v16;
    v17 = &this[3].__end_cap_.__value_[6 * *v16];
    v18 = *(v17 + 1);
    if (*v17 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v18 - 4);
    }

    v20 = HIDWORD(this[1].__end_);
    v21 = v4;
    v60 = __PAIR64__(v16[1], v4);
    v61 = v19;
    std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](v17, &v60);
    v22 = *v17;
    v23 = *(v17 + 1);
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v17) >> 2);
    v25 = *(v23 - 4);
    v26 = v25;
    if (v24 > v25)
    {
      v27 = *(a2 + 3);
      v28 = *(a2 + 12) + 4;
      do
      {
        v29 = *(v22 + 12 * v26 + 4);
        if (((*(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          break;
        }

        if (*(v28 + 8 * (v29 >> 1)) > v20)
        {
          goto LABEL_6;
        }

        *(v23 - 4) = ++v25;
        v26 = v25;
      }

      while (v24 > v25);
    }

    if (v24 == v26)
    {
      goto LABEL_6;
    }

    v30 = (v22 + 12 * v25);
    v31 = (*v30 >> 1);
    v32 = v31 << 32;
    v33 = *(a2 + 12);
    v34 = 8 * v31;
    v35 = (v33 + v34);
    v36 = v31 << 32;
    if (*(v33 + v34) >> 28 != 3)
    {
      break;
    }

    v37 = *(*(a2 + 16) + (v32 >> 30));
    v36 = v37 << 32;
    v38 = *(v33 + 8 * v37) >> 28;
    if (!v38)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v38 != 2)
    {
      goto LABEL_22;
    }

LABEL_6:
    v8 = ++v9;
    v6 = *v58;
    ++v10;
    v4 = v21;
    if (v9 >= ((*(v58 + 1) - *v58) >> 3))
    {
      LODWORD(end_high) = HIDWORD(this[1].__end_);
      goto LABEL_28;
    }
  }

  v38 = *(v33 + v34) >> 28;
  if (v38)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (*(*(a2 + 28) + (v36 >> 30)) == 2)
  {
    goto LABEL_6;
  }

LABEL_22:
  v40 = v30[1];
  v39 = v30 + 1;
  if (((*(*(a2 + 3) + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v40 & 0x3F ^ 1u)) & 1) == 0)
  {
    v11 = *(a2 + 3);
    v12 = this[5].__end_cap_.__value_;
    v41 = (this[6].__begin_ - v12) >> 3;
    if (v41 <= v11)
    {
      v42 = v11 + 1;
      if (v42 > v41)
      {
        std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(&this[5].__end_cap_, v42 - v41);
        v11 = *(a2 + 3);
        v12 = this[5].__end_cap_.__value_;
      }

      else if (v42 < v41)
      {
        this[6].__begin_ = &v12[2 * v42];
      }
    }

    v13 = &v12[2 * v11];
    *v13 = v35[1];
    v13[1] = v59;
    v14 = *v39;
    v15 = *(a2 + 3);
    *(a2 + 2) = *(a2 + 2) & 0xFFFFFFF | (LODWORD(this[1].__end_) << 28);
    *(*(a2 + 6) + 4 * v15) = v14;
    *(*(a2 + 12) + 8 * (v14 >> 1)) = *(a2 + 1);
    *(*(a2 + 3) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    ++*(a2 + 3);
    ++LODWORD(this[10].__begin_);
    goto LABEL_6;
  }

  ++HIDWORD(this[10].__begin_);
  *(a2 + 15) = 0;
  if (*v35 >> 28 == 3)
  {
    v44 = *(*(a2 + 16) + (v32 >> 30));
    v32 = v44 << 32;
    v34 = 8 * v44;
  }

  v45 = (v33 + v34);
  v46 = *(v33 + v34);
  if (v46 >> 28)
  {
    v48 = v46 >> 28;
    if ((v48 - 1) > 1)
    {
      v51 = *(*(a2 + 31) + 8 * v48);
      v52 = (*(*v51 + 32))(v51, a2, v45[1]);
      v49 = v32 >> 28;
      v53 = (*(a2 + 25) + (v32 >> 28));
      *v53 = v52;
      v53[1] = v54;
    }

    else
    {
      v49 = v32 >> 28;
      v50 = (*(a2 + 25) + (v32 >> 28));
      *v50 = 0;
      v50[1] = 0;
    }

    *(*(a2 + 28) + (v32 >> 30)) = *v45 >> 28;
    *(*(a2 + 12) + v34) &= 0xFFFFFFFu;
    v47 = *(a2 + 25) + v49;
  }

  else
  {
    v47 = *(a2 + 25) + (v32 >> 28);
  }

  operations_research::sat::SymmetryPropagator::Permute(this, v59, *v47, *(v47 + 8), a2 + 9);
  std::vector<int>::push_back[abi:ne200100](a2 + 72, v39);
  if ((v9 & 0x80000000) == 0)
  {
    v55 = this[3].__end_cap_.__value_;
    v56 = (*v58 + 8 * v9);
    do
    {
      v57 = *v56;
      v56 -= 2;
      *&v55[6 * v57 + 2] -= 12;
      --v10;
    }

    while (v10 > 0);
  }

  return 0;
}

void operations_research::sat::SymmetryPropagator::Permute(std::vector<int> *this, int a2, int *a3, uint64_t a4, void *a5)
{
  p_end_cap = &this[4].__end_cap_;
  value = this[4].__end_cap_.__value_;
  v11 = *&this[1].__end_cap_.__value_[2 * a2];
  v12 = *v11;
  v13 = this[5].__begin_ - value;
  if (v12 > v13)
  {
    std::vector<int>::__append((this + 112), v12 - v13);
    value = this[4].__end_cap_.__value_;
    v14 = this[5].__begin_ - value;
    if ((v14 >> 2) >= 1)
    {
      v15 = (v14 >> 2) & 0x7FFFFFFF;
      if (v15 < 8)
      {
        v16 = 0;
        do
        {
LABEL_8:
          value[v16] = v16;
          ++v16;
        }

        while (v15 != v16);
        goto LABEL_9;
      }

      v17 = (v14 >> 2) & 7;
      v16 = v15 - v17;
      v18 = xmmword_23CE38660;
      v19 = (value + 4);
      v20.i64[0] = 0x400000004;
      v20.i64[1] = 0x400000004;
      v21.i64[0] = 0x800000008;
      v21.i64[1] = 0x800000008;
      v22 = v15 - v17;
      do
      {
        v19[-1] = v18;
        *v19 = vaddq_s32(v18, v20);
        v18 = vaddq_s32(v18, v21);
        v19 += 2;
        v22 -= 8;
      }

      while (v22);
      if (v17)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v23 = v11[4];
  v24 = v11[5] - v23;
  if ((v24 >> 2) >= 1)
  {
    v25 = 0;
    v26 = v11[1];
    v27 = (v24 >> 2) & 0x7FFFFFFF;
    do
    {
      if (v25)
      {
        v28 = 4 * v23[v25 - 1];
        v29 = v23[v25];
        v30 = 4 * v29;
        if (v28 != 4 * v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = 0;
        v29 = *v23;
        v30 = 4 * v29;
        if (4 * v29)
        {
LABEL_16:
          v31 = *(v26 + 4 * (v29 - 1));
          v32 = (v30 + v26);
          v33 = (v28 + v26);
          do
          {
            v34 = *v33++;
            value[v31] = v34;
            v31 = v34;
          }

          while (v33 != v32);
        }
      }

      ++v25;
    }

    while (v25 != v27);
  }

  a5[1] = *a5;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v35 = 4 * a4;
    do
    {
      v36 = *a3++;
      v45 = v36;
      v37 = this[4].__end_cap_.__value_;
      v38 = (this[5].__begin_ - v37) >> 2;
      v39 = &v37[v36];
      if (v36 >= v38)
      {
        v40 = &v45;
      }

      else
      {
        v40 = v39;
      }

      std::vector<int>::push_back[abi:ne200100](a5, v40);
      v35 -= 4;
    }

    while (v35);
  }

  v41 = v11[1];
  v42 = v11[2];
  if (v41 != v42)
  {
    v43 = p_end_cap->__value_;
    do
    {
      v44 = *v41++;
      v43[v44] = v44;
    }

    while (v41 != v42);
  }
}

uint64_t operations_research::sat::SymmetryPropagator::Propagate(std::vector<int> *this, operations_research::sat::Trail *a2)
{
  v4 = *(a2 + 3);
  while (*(a2 + 3) == v4 && SHIDWORD(this[1].__end_) < v4)
  {
    if ((operations_research::sat::SymmetryPropagator::PropagateNext(this, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t operations_research::sat::SymmetryPropagator::Untrail(uint64_t this, const operations_research::sat::Trail *a2, int a3)
{
  v3 = *(this + 36);
  if (v3 > a3)
  {
    v4 = *(a2 + 6);
    v5 = *(this + 64);
    v6 = -1431655765 * ((*(this + 72) - v5) >> 3);
    do
    {
      *(this + 36) = --v3;
      v7 = *(v4 + 4 * v3);
      if (v7 < v6)
      {
        v8 = (v5 + 24 * v7);
        v9 = *v8;
        v10 = v8[1];
        if (v9 != v10)
        {
          v11 = *(this + 88);
          do
          {
            v12 = *v9;
            v9 += 2;
            *(v11 + 24 * v12 + 8) -= 12;
          }

          while (v9 != v10);
        }
      }
    }

    while (v3 > a3);
  }

  return this;
}

uint64_t operations_research::sat::SymmetryPropagator::Reason(std::vector<int> *this, const operations_research::sat::Trail *a2, int a3)
{
  v5 = &this[5].__end_cap_.__value_[2 * a3];
  EmptyVectorToStoreReason = operations_research::sat::Trail::GetEmptyVectorToStoreReason(a2, a3);
  v7 = v5[1];
  v8 = (*(*(a2 + 6) + 4 * *v5) >> 1);
  v9 = v8 << 32;
  v10 = *(a2 + 12);
  v11 = 8 * v8;
  if (*(v10 + v11) >> 28 == 3)
  {
    v12 = *(*(a2 + 16) + 4 * v8);
    v9 = v12 << 32;
    v11 = 8 * v12;
  }

  v13 = (v10 + v11);
  v14 = *(v10 + v11);
  if (v14 >> 28)
  {
    v16 = v14 >> 28;
    if ((v16 - 1) > 1)
    {
      v19 = *(*(a2 + 31) + 8 * v16);
      v20 = v7;
      v21 = (*(*v19 + 32))(v19, a2, v13[1]);
      v23 = v22;
      v7 = v20;
      v17 = v9 >> 28;
      v24 = (*(a2 + 25) + (v9 >> 28));
      *v24 = v21;
      v24[1] = v23;
    }

    else
    {
      v17 = v9 >> 28;
      v18 = (*(a2 + 25) + (v9 >> 28));
      *v18 = 0;
      v18[1] = 0;
    }

    *(*(a2 + 28) + (v9 >> 30)) = *v13 >> 28;
    *(*(a2 + 12) + v11) &= 0xFFFFFFFu;
    v15 = *(a2 + 25) + v17;
  }

  else
  {
    v15 = *(a2 + 25) + (v9 >> 28);
  }

  operations_research::sat::SymmetryPropagator::Permute(this, v7, *v15, *(v15 + 8), EmptyVectorToStoreReason);
  result = *EmptyVectorToStoreReason;
  v26 = (EmptyVectorToStoreReason[1] - *EmptyVectorToStoreReason) >> 2;
  return result;
}

void operations_research::sat::BasicOrbitopeExtraction(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v107 = 0;
  v108 = 0;
  v109 = 0;
  LODWORD(v111) = 0;
  if (!a2)
  {
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a1 + 8 * v5);
    v7 = *(v6 + 32);
    v8 = *(v6 + 40) - v7;
    if ((v8 >> 2) < 1)
    {
      goto LABEL_10;
    }

    if (*v7 != 2)
    {
      goto LABEL_3;
    }

    v9 = ((v8 >> 2) & 0x7FFFFFFF) - 1;
    if (((v8 >> 2) & 0x7FFFFFFF) == 1)
    {
LABEL_10:
      v11 = (v8 >> 2);
      v12 = v108;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3);
      if (v13 <= v11)
      {
        v14 = ((v8 << 30) + 0x100000000) >> 32;
        if (v14 <= v13)
        {
          if (v14 < v13)
          {
            v15 = v107 + 24 * v14;
            if (v108 != v15)
            {
              v16 = v108;
              do
              {
                v18 = *(v16 - 3);
                v16 -= 24;
                v17 = v18;
                if (v18)
                {
                  *(v12 - 2) = v17;
                  operator delete(v17);
                }

                v12 = v16;
              }

              while (v16 != v15);
            }

            v108 = v15;
          }
        }

        else
        {
          std::vector<std::vector<int>>::__append(&v107, v14 - v13);
        }
      }

      std::vector<int>::push_back[abi:ne200100](v107 + 24 * v11, &v111);
      v4 = v111;
    }

    else
    {
      v10 = v7 + 1;
      while (*v10 - *(v10 - 1) == 2)
      {
        ++v10;
        if (!--v9)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_3:
    LODWORD(v111) = ++v4;
    v5 = v4;
  }

  while (a2 > v4);
  v19 = v107;
  v20 = v108;
  if (v108 == v107)
  {
LABEL_34:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_35;
  }

  v21 = 0;
  v22 = 0;
  v23 = -1;
  v24 = 1;
  do
  {
    v26 = *&v19[24 * v21 + 8] - *&v19[24 * v21];
    if ((v26 >> 2) >= 2)
    {
      v27 = (v26 >> 2) + 1;
      if (dword_2810BD500 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BasicOrbitopeExtraction(absl::lts_20240722::Span<std::unique_ptr<operations_research::SparsePermutation> const>)::$_0::operator() const(void)::site, dword_2810BD500))
      {
        v28 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v111, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/symmetry_util.cc", 61);
        v103 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v28, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v103, "Potential orbitope: ", 0x14uLL);
        v110 = v24 - 1;
        v104 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v103, &v110);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v104, " x ", 3uLL);
        v110 = v27;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v104, &v110);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v111);
      }

      if (v27 >= v24 - 1)
      {
        v25 = v24 - 1;
      }

      else
      {
        v25 = v27;
      }

      if (v25 > v22)
      {
        v22 = v25;
        v23 = v24 - 1;
      }

      v19 = v107;
      v20 = v108;
    }

    v21 = v24++;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) > v21);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v23 != -1)
  {
    if (v23)
    {
      std::vector<std::vector<int>>::__append(a3, v23);
      v19 = v107;
    }

    v35 = &v19[24 * v23];
    v36 = *v35;
    v97 = v35[1];
    if (*v35 != v97)
    {
      v37 = 0;
      v38 = 0;
      v102 = 0;
      while (1)
      {
        v98 = v36;
        v100 = *v36;
        v39 = *(*(a1 + 8 * v100) + 40) - *(*(a1 + 8 * v100) + 32);
        v40 = v39 >> 2;
        if (**a3 != *(*a3 + 8))
        {
          if (v40 >= 1)
          {
            v41 = *(*(a1 + 8 * v100) + 8) + 4 * **(*(a1 + 8 * v100) + 32);
            operator new();
          }

          if (!(v39 >> 2))
          {
            v71 = *a3;
            if (a3[1] != *a3)
            {
              v72 = 0;
              v73 = 1;
              v74 = v38;
              while (1)
              {
                v75 = &v71[3 * v72];
                v77 = v75[1];
                v76 = v75[2];
                if (v77 >= v76)
                {
                  v79 = *v75;
                  v80 = v77 - *v75;
                  v81 = (v80 >> 2) + 1;
                  if (v81 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v82 = v76 - v79;
                  if (v82 >> 1 > v81)
                  {
                    v81 = v82 >> 1;
                  }

                  if (v82 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v83 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v83 = v81;
                  }

                  if (v83)
                  {
                    if (!(v83 >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v84 = (4 * (v80 >> 2));
                  *v84 = *(4 * v72);
                  v78 = v84 + 1;
                  memcpy(0, v79, v80);
                  *v75 = 0;
                  v75[1] = v78;
                  v75[2] = 0;
                  if (v79)
                  {
                    operator delete(v79);
                  }
                }

                else
                {
                  *v77 = *(4 * v72);
                  v78 = v77 + 1;
                }

                v75[1] = v78;
                v85 = *(4 * v72);
                if (v74 > v85)
                {
                  v38 = v74;
                  goto LABEL_117;
                }

                v38 = v85 + 1;
                v86 = v38 - v74;
                if (v38 <= v74)
                {
                  goto LABEL_117;
                }

                if (v102 << 6 < v86 || v74 > (v102 << 6) - v86)
                {
                  break;
                }

                v90 = &v37[8 * (v74 >> 6)];
                v92 = v74 & 0x3F;
                if (v86)
                {
LABEL_154:
                  if (v92)
                  {
                    if (64 - v92 >= v86)
                    {
                      v95 = v86;
                    }

                    else
                    {
                      v95 = 64 - v92;
                    }

                    *v90++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v92 - v95)) & (-1 << v92));
                    v86 -= v95;
                  }

                  v96 = v86 >> 6;
                  if (v86 >= 0x40)
                  {
                    bzero(v90, 8 * v96);
                  }

                  if ((v86 & 0x3F) != 0)
                  {
                    v90[v96] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v86 & 0x3F));
                  }
                }

LABEL_117:
                *&v37[(*(4 * v72) >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << *(4 * v72);
                v72 = v73;
                v71 = *a3;
                ++v73;
                v74 = v38;
                if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v72)
                {
                  operator delete(0);
                  goto LABEL_48;
                }
              }

              v111 = 0;
              v112 = 0;
              v113 = 0;
              if ((v38 & 0x80000000) != 0)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v88 = v102 << 7;
              if (v102 << 7 <= ((v85 + 64) & 0xFFFFFFC0))
              {
                v88 = (v85 + 64) & 0xFFFFFFC0;
              }

              if ((v102 << 6) <= 0x3FFFFFFFFFFFFFFELL)
              {
                v89 = v88;
              }

              else
              {
                v89 = 0x7FFFFFFFFFFFFFFFLL;
              }

              std::vector<BOOL>::reserve(&v111, v89);
              v112 = v38;
              v90 = v111;
              if (v74 < 1)
              {
                v92 = 0;
                v93 = v111;
                v38 = v112;
                v111 = v37;
                v112 = v74;
                v94 = v113;
                v113 = v102;
                if (v37)
                {
                  goto LABEL_150;
                }
              }

              else
              {
                v91 = v74 >> 6;
                if (v74 >= 0x40)
                {
                  memmove(v111, v37, 8 * v91);
                }

                v90 += v91;
                v92 = v74 & 0x3F;
                if ((v74 & 0x3F) != 0)
                {
                  *v90 = *v90 & ~(0xFFFFFFFFFFFFFFFFLL >> -v92) | *&v37[8 * v91] & (0xFFFFFFFFFFFFFFFFLL >> -v92);
                }

                v93 = v111;
                v38 = v112;
                v111 = v37;
                v112 = v74;
                v94 = v113;
                v113 = v102;
                if (v37)
                {
LABEL_150:
                  operator delete(v37);
                }
              }

              v102 = v94;
              v37 = v93;
              if (v86)
              {
                goto LABEL_154;
              }

              goto LABEL_117;
            }
          }

          goto LABEL_48;
        }

        if (v40 >= 1)
        {
          break;
        }

LABEL_48:
        v36 = v98 + 1;
        if (v98 + 1 == v97)
        {
          if (v37)
          {
            operator delete(v37);
          }

          goto LABEL_35;
        }
      }

      v42 = 0;
      v99 = (v39 >> 2) & 0x7FFFFFFF;
      v43 = v37;
      v44 = v38;
      while (2)
      {
        v45 = *(a1 + 8 * v100);
        v46 = *(v45 + 32);
        if (v42)
        {
          v47 = 4 * v46[v42 - 1];
          v48 = 4 * v46[v42];
          if (v47 != v48)
          {
            goto LABEL_60;
          }

LABEL_54:
          v38 = v44;
          v37 = v43;
LABEL_55:
          ++v42;
          v43 = v37;
          v44 = v38;
          if (v42 == v99)
          {
            goto LABEL_48;
          }

          continue;
        }

        break;
      }

      v47 = 0;
      v48 = 4 * *v46;
      if (!v48)
      {
        goto LABEL_54;
      }

LABEL_60:
      v49 = *(v45 + 8);
      v105 = (v48 + v49);
      v50 = (v47 + v49);
      while (2)
      {
        v51 = *v50;
        v52 = *a3 + 24 * v42;
        v54 = *(v52 + 8);
        v53 = *(v52 + 16);
        if (v54 >= v53)
        {
          v56 = *v52;
          v57 = v54 - *v52;
          v58 = v57 >> 2;
          v59 = (v57 >> 2) + 1;
          if (v59 >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v60 = v53 - v56;
          if (v60 >> 1 > v59)
          {
            v59 = v60 >> 1;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v61 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (v61)
          {
            if (!(v61 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v58) = v51;
          v55 = 4 * v58 + 4;
          memcpy(0, v56, v57);
          *v52 = 0;
          *(v52 + 8) = v55;
          *(v52 + 16) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v54 = v51;
          v55 = (v54 + 1);
        }

        v62 = v51;
        *(v52 + 8) = v55;
        if (v44 > v51)
        {
          v38 = v44;
        }

        else
        {
          v38 = v51 + 1;
          v63 = v38 - v44;
          if (v38 > v44)
          {
            if (v102 << 6 < v63 || v44 > (v102 << 6) - v63)
            {
              if ((v38 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              if ((v102 << 6) > 0x3FFFFFFFFFFFFFFELL)
              {
                goto LABEL_93;
              }

              v65 = v102 << 7;
              if (v102 << 7 <= ((v38 + 63) & 0xFFFFFFC0))
              {
                v65 = (v38 + 63) & 0xFFFFFFC0;
              }

              if (v65)
              {
                if (v65 < 0)
                {
LABEL_172:
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

LABEL_93:
                operator new();
              }

              v102 = 0;
              v37 = 0;
              v66 = 0;
              if (v44 < 1)
              {
                goto LABEL_100;
              }

              v68 = v44 >> 6;
              if (v44 >= 0x40)
              {
                memmove(0, v43, 8 * v68);
              }

              v66 = (8 * v68);
              v67 = v44 & 0x3F;
              if (v67)
              {
                *(8 * v68) = *(8 * v68) & ~(0xFFFFFFFFFFFFFFFFLL >> -v67) | *&v43[8 * v68] & (0xFFFFFFFFFFFFFFFFLL >> -v67);
                operator delete(v43);
                if (v63)
                {
                  goto LABEL_102;
                }
              }

              else
              {
LABEL_100:
                if (v43)
                {
                  v67 = 0;
                  operator delete(v43);
                  if (v63)
                  {
                    goto LABEL_102;
                  }
                }

                else if (v63)
                {
                  goto LABEL_107;
                }
              }

LABEL_63:
              *&v37[(v62 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v62;
              ++v50;
              v43 = v37;
              v44 = v38;
              if (v50 == v105)
              {
                goto LABEL_55;
              }

              continue;
            }

            if (v63)
            {
              v66 = &v43[8 * (v44 >> 6)];
              v67 = v44 & 0x3F;
              v37 = v43;
LABEL_102:
              if (v67)
              {
                if (64 - v67 >= v63)
                {
                  v69 = v63;
                }

                else
                {
                  v69 = 64 - v67;
                }

                *v66 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v67 - v69)) & (-1 << v67));
                v66 += 8;
                v63 -= v69;
              }

LABEL_107:
              v70 = v63 >> 6;
              if (v63 >= 0x40)
              {
                bzero(v66, 8 * v70);
              }

              if ((v63 & 0x3F) != 0)
              {
                *&v66[8 * v70] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v63 & 0x3F));
              }

              goto LABEL_63;
            }
          }
        }

        break;
      }

      v37 = v43;
      goto LABEL_63;
    }
  }

LABEL_35:
  v29 = v107;
  if (v107)
  {
    v30 = v108;
    v31 = v107;
    if (v108 != v107)
    {
      v32 = v108;
      do
      {
        v34 = *(v32 - 3);
        v32 -= 24;
        v33 = v34;
        if (v34)
        {
          *(v30 - 2) = v33;
          operator delete(v33);
        }

        v30 = v32;
      }

      while (v32 != v29);
      v31 = v107;
    }

    v108 = v29;
    operator delete(v31);
  }
}

void sub_23CD05770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CD05784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CD05798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v15 - 112));
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CD057B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, ...)
{
  va_start(va, a15);
  std::vector<std::vector<int>>::~vector[abi:ne200100](a15);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CD057D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void *a23)
{
  if (v24)
  {
    operator delete(v24);
    v26 = v23;
    if (!__p)
    {
LABEL_3:
      if (!v26)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v26 = v23;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(__p);
  v26 = v23;
  if (!v23)
  {
LABEL_5:
    std::vector<std::vector<int>>::~vector[abi:ne200100](a22);
    std::vector<std::vector<int>>::~vector[abi:ne200100](&a23);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v26);
  goto LABEL_5;
}

void sub_23CD058B0()
{
  if (!v0)
  {
    JUMPOUT(0x23CD05874);
  }

  JUMPOUT(0x23CD0586CLL);
}

void operations_research::sat::GetOrbits(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = 0;
  v21 = 0u;
  *__p = 0u;
  *v19 = 0u;
  *v20 = 0u;
  operations_research::MergingPartition::Reset(v19, 0);
  operations_research::MergingPartition::Reset(v19, a1);
  if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = a2 + 8 * a3;
    while (1)
    {
      v9 = *(*a2 + 40) - *(*a2 + 32);
      if ((v9 >> 2) >= 1)
      {
        break;
      }

LABEL_3:
      a2 += 8;
      if (a2 == v8)
      {
        goto LABEL_14;
      }
    }

    v10 = 0;
    v11 = (v9 >> 2) & 0x7FFFFFFF;
    while (1)
    {
      v12 = *(*a2 + 32);
      if (v10)
      {
        v13 = 4 * v12[v10 - 1];
        v14 = 4 * v12[v10];
        if (v13 != v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = 0;
        v14 = 4 * *v12;
        if (v14)
        {
LABEL_11:
          v15 = *(*a2 + 8);
          v16 = (v14 + v15);
          v18 = (v13 + v15 + 4);
          v17 = *(v13 + v15);
          if (v18 != (v14 + v15))
          {
            do
            {
              operations_research::MergingPartition::MergePartsOf(v19, v17, *v18++);
            }

            while (v18 != v16);
          }
        }
      }

      if (++v10 == v11)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a1)
  {
    if ((a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v20[1])
  {
    *&v21 = v20[1];
    operator delete(v20[1]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_23CD05AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a12;
    if (!a12)
    {
LABEL_3:
      v17 = a9;
      if (!a9)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v16 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  v17 = a9;
  if (!a9)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void sub_23CD05B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  operator delete(v10);
  operations_research::MergingPartition::~MergingPartition(&a9);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::GetOrbitopeOrbits@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (a3)
  {
    v4 = 0;
    for (i = 0; i < a3; v4 = ++i)
    {
      v7 = (a2 + 24 * v4);
      v6 = *v7;
      v8 = v7[1] - *v7;
      if (v8)
      {
        v9 = 0;
        v10 = v8 >> 2;
        v11 = 1;
        do
        {
          v12 = *(v6 + 4 * v9);
          result = *(4 * v12);
          if (result != -1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(result, -1, "orbits[orbitope[i][j]] == -1");
          }

          *(4 * v12) = i;
          v9 = v11++;
        }

        while (v10 > v9);
      }
    }
  }

  return result;
}

void sub_23CD05CD8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_23CD05CF0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

unint64_t AbslFlagHelpGenForcp_model_dump_solutions::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_dump_tightened_models::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void operations_research::sat::SharedLPSolutionRepository::NewLPSolution(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    *v6 = 0u;
    v7 = 0u;
    memset(__p, 0, 28);
    v5 = *(a2 + 16);
    v6[1] = v2;
    *&v7 = v3;
    *(&v7 + 1) = v5;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    absl::lts_20240722::Mutex::Lock((a1 + 32));
    v6[0] = -*(a1 + 64);
    operations_research::sat::SharedSolutionRepository<double>::AddInternal(a1, v6);
    absl::lts_20240722::Mutex::Unlock((a1 + 32));
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v6[1])
    {
      *&v7 = v6[1];
      operator delete(v6[1]);
    }
  }
}

void sub_23CD05F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  absl::lts_20240722::Mutex::Unlock((v9 + 32));
  operations_research::sat::SharedSolutionRepository<long long>::Solution::~Solution(&a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedSolutionRepository<double>::AddInternal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v3 = (a1 + 120);
  v6 = (v5 - v4) >> 6;
  if (v5 == v4)
  {
    v24 = 0;
    if (v6 >= *(a1 + 24))
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = (v4 + (v7 << 6));
    v11 = *v10;
    if (*v10 == *a2)
    {
      v12 = v10[1];
      v13 = v10[2];
      if (v13 - v12 == *(a2 + 16) - *(a2 + 8))
      {
        if (v12 == v13)
        {
          return;
        }

        for (i = *(a2 + 8); *v12 == *i; ++i)
        {
          if (++v12 == v13)
          {
            return;
          }
        }
      }
    }

    v15 = (v4 + (v9 << 6));
    if (*v15 == v11)
    {
      v16 = v10[1];
      v17 = v10[2];
      if (v16 != v17)
      {
        v18 = v15[1];
        v19 = v15[2];
        v20 = v16 + 8;
        while (v18 != v19)
        {
          v21 = *v18;
          v22 = *(v20 - 8);
          if (*v18 < v22)
          {
            break;
          }

          ++v18;
          v23 = v22 < v21 || v20 == v17;
          v20 += 8;
          if (v23)
          {
            goto LABEL_4;
          }
        }

LABEL_3:
        v9 = v8;
      }
    }

    else if (*v15 < v11)
    {
      goto LABEL_3;
    }

LABEL_4:
    v7 = ++v8;
  }

  while (v6 > v8);
  v24 = v9;
  if (v6 < *(a1 + 24))
  {
LABEL_26:
    ++*(a1 + 40);
    if (v5 >= *(a1 + 136))
    {
      *(a1 + 128) = std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>::__emplace_back_slow_path<operations_research::sat::SharedSolutionRepository<double>::Solution const&>(v3, a2);
    }

    else
    {
      std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(v3, v5, a2);
      *(a1 + 128) = v5 + 64;
      *(a1 + 128) = v5 + 64;
    }

    return;
  }

LABEL_31:
  v25 = v4 + (v24 << 6);
  v26 = *a2;
  if (*a2 != *v25)
  {
    if (*a2 < *v25)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v28 = *(v25 + 8);
  v27 = *(v25 + 16);
  if (v28 == v27)
  {
LABEL_46:
    ++*(a1 + 48);
    return;
  }

  v29 = *(a2 + 8);
  v30 = v28 + 8;
  while (v29 != *(a2 + 16))
  {
    v31 = *v29;
    v32 = *(v30 - 8);
    if (*v29 < v32)
    {
      break;
    }

    ++v29;
    v33 = v32 < v31 || v30 == v27;
    v30 += 8;
    if (v33)
    {
      goto LABEL_46;
    }
  }

LABEL_43:
  ++*(a1 + 40);
  *v25 = v26;
  if (v25 != a2)
  {
    v34 = a2;
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v25 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    a2 = v34;
  }

  v35 = a2;
  std::string::operator=((v25 + 32), (a2 + 32));
  *(v25 + 56) = *(v35 + 56);
}

void operations_research::sat::SharedIncompleteSolutionManager::AddSolution(uint64_t a1, void *a2)
{
  absl::lts_20240722::Mutex::Lock(a1);
  ++*(a1 + 56);
  std::deque<std::vector<double>>::push_back((a1 + 8), a2);
  v4 = *(a1 + 48);
  if (v4 >= 0x65)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 16) + 8 * (v5 / 0xAA)) + 24 * (v5 % 0xAA);
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
    }

    v8 = v5 + 1;
    *(a1 + 40) = v8;
    *(a1 + 48) = v4 - 1;
    if (v8 >= 0x154)
    {
      operator delete(**(a1 + 16));
      *(a1 + 16) += 8;
      *(a1 + 40) -= 170;
    }
  }

  absl::lts_20240722::Mutex::Unlock(a1);
}

void *std::deque<std::vector<double>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[5] + result[4])
  {
    result = std::deque<std::vector<double>>::__add_back_capacity(result);
    v4 = v3[1];
    v5 = v3[2];
  }

  if (v5 != v4)
  {
    v7 = v3[5] + v3[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v9 = a2[1] - *a2;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  MEMORY[0] = 0;
  MEMORY[8] = 0;
  MEMORY[0x10] = 0;
  v9 = a2[1] - *a2;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  ++v3[5];
  return result;
}

void sub_23CD063A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::SharedIncompleteSolutionManager::HasSolution(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this);
  v2 = this[6];
  absl::lts_20240722::Mutex::Unlock(this);
  return v2 != 0;
}

void operations_research::sat::SharedIncompleteSolutionManager::PopLast(atomic_ullong *this@<X0>, uint64_t a2@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this);
  v4 = this[6];
  if (v4)
  {
    v5 = v4 + this[5] - 1;
    v6 = *(this[2] + 8 * (v5 / 0xAA));
    ++this[8];
    v7 = v6 + 24 * (v5 % 0xAA);
    *a2 = *v7;
    *(a2 + 16) = *(v7 + 16);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v9 = this[5];
    v8 = this[6];
    v10 = v8 - 1;
    v11 = this[2];
    v12 = *(v11 + 8 * ((v8 - 1 + v9) / 0xAAuLL)) + 24 * ((v8 - 1 + v9) % 0xAAuLL);
    v13 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v13;
      operator delete(v13);
      v11 = this[2];
      v9 = this[5];
      v8 = this[6];
      v10 = v8 - 1;
    }

    v14 = this[3];
    this[6] = v10;
    if (v14 == v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = 170 * ((v14 - v11) >> 3) - 1;
    }

    if ((v15 - (v9 + v8) + 1) >= 0x154)
    {
      operator delete(*(v14 - 8));
      this[3] -= 8;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  absl::lts_20240722::Mutex::Unlock(this);
}

operations_research::sat::SharedResponseManager *operations_research::sat::SharedResponseManager::SharedResponseManager(operations_research::sat::SharedResponseManager *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(a2);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v4 = *(*this + 776);
  *(this + 111) = 18;
  strcpy(this + 88, "feasible solutions");
  *(this + 28) = v4;
  *(this + 58) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 15) = xmmword_23CE4E9F0;
  *(this + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 264) = 1;
  *(this + 17) = xmmword_23CE4E9F0;
  *(this + 288) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 80) = 0;
  *(this + 39) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 41) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 96) = 0;
  *(this + 45) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 63) = 0;
  *(this + 64) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 65) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 66) = 0;
  *(this + 67) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 68) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 69) = 0;
  *(this + 70) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 71) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 72) = 0;
  *(this + 73) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 74) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 75) = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  *(this + 76) = v5;
  *(this + 616) = 0u;
  *(this + 79) = &unk_23CE31C20;
  *(this + 86) = 0;
  *(this + 88) = 0;
  *(this + 87) = 0;
  *(this + 82) = 0;
  *(this + 84) = 0;
  *(this + 83) = 0;
  *(this + 680) = 0;
  *(this + 162) = operations_research::SolverLogger::GetNewThrottledId(v5);
  return this;
}

void sub_23CD066C0(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 696) = v7;
    operator delete(v7);
  }

  std::vector<operations_research::sat::CpSolverResponse>::~vector[abi:ne200100]((v1 + 656));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(v4);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v1 + 584);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v1 + 560);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v1 + 536);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v1 + 512);
  if (*(v1 + 511) < 0)
  {
    operator delete(*(v1 + 488));
  }

  std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~vector[abi:ne200100]((v1 + 464));
  std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~vector[abi:ne200100]((v1 + 440));
  std::vector<std::function<void ()(std::vector<long long> *)>>::~vector[abi:ne200100]((v1 + 416));
  std::vector<std::pair<int,std::function<void ()(double)>>>::~vector[abi:ne200100](v2);
  std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::~vector[abi:ne200100]((v1 + 360));
  std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::~vector[abi:ne200100]((v1 + 328));
  operations_research::sat::SharedSolutionRepository<double>::~SharedSolutionRepository(v1 + 88);
  v8 = *(v1 + 64);
  if (v8)
  {
    *(v1 + 72) = v8;
    operator delete(v8);
  }

  absl::lts_20240722::Mutex::~Mutex((v1 + 32));
  _Unwind_Resume(a1);
}

void **std::vector<operations_research::sat::CpSolverResponse>::~vector[abi:ne200100](void **a1)
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
        operations_research::sat::CpSolverResponse::~CpSolverResponse((v3 - 272));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::function<void ()(std::vector<long long> *)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::pair<int,std::function<void ()(double)>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        if (v3 - 32 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 -= 40;
        v5 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *operations_research::sat::FillSolveStatsInResponse(void *this, operations_research::sat::Model *a2, operations_research::sat::CpSolverResponse *a3)
{
  if (!this)
  {
    return this;
  }

  v4 = this;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
  v6 = v5;
  v7 = v4[3];
  if (v7 > 1)
  {
    v8 = 0;
    _X11 = v4[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v7;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_6:
    v20 = v4[6];
    while (1)
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v7;
      if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_9:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v7;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_17;
      }
    }

    v22 = (v20 + 16 * v21);
    if (!(_X11 + v21))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v4[4] >= 2uLL)
  {
    v22 = v4 + 5;
    v24 = &absl::lts_20240722::container_internal::kSooControl;
    if (v4[5] != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v24 = 0;
      v22 = 0;
    }

    if (v24)
    {
LABEL_13:
      v23 = v22[1];
      goto LABEL_18;
    }
  }

LABEL_17:
  v23 = 0;
LABEL_18:
  *(a2 + 20) = v5[4];
  *(a2 + 22) = operations_research::sat::SatSolver::num_branches(v5);
  *(a2 + 21) = operations_research::sat::SatSolver::num_failures(v6);
  *(a2 + 23) = operations_research::sat::SatSolver::num_propagations(v6);
  *(a2 + 29) = operations_research::sat::SatSolver::num_restarts(v6);
  if (v23)
  {
    *(a2 + 32) = (((v23[6] - v23[5]) >> 3) + (((v23[6] - v23[5]) >> 3) >> 31)) >> 1;
    v25 = v23[89];
  }

  else
  {
    v25 = 0;
    *(a2 + 32) = 0;
  }

  *(a2 + 24) = v25;
  *(a2 + 30) = 0;
  this = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpSolverResponseStatisticCallbacks>(v4);
  v26 = *this;
  v27 = this[1];
  if (*this != v27)
  {
    do
    {
      v29 = a2;
      v28 = *(v26 + 24);
      if (!v28)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      this = (*(*v28 + 48))(v28, &v29);
      v26 += 32;
    }

    while (v26 != v27);
  }

  return this;
}

void operations_research::sat::SharedResponseManager::LogMessage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  v17[0] = a4;
  v17[1] = a5;
  v6 = absl::lts_20240722::Mutex::Lock(a1 + 4);
  v7 = a1[76];
  if (*v7 == 1)
  {
    v8 = a1[1];
    if (*v8 == 1)
    {
      v9 = absl::lts_20240722::GetCurrentTimeNanos(v6) - *(v8 + 8) + *(v8 + 16);
    }

    else
    {
      v9 = *(v8 + 16);
    }

    v19[0] = v18;
    v19[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
    *&v19[2] = v9 * 0.000000001;
    v19[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v19[4] = v17;
    v19[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
    absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs %s", 15, v19, 3uLL, __p);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v16 = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
    }

    *(&__dst + v11) = 0;
    operations_research::SolverLogger::LogInfo(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 168, &__dst);
    if (v16 < 0)
    {
      operator delete(__dst);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(__p[0]);
  }

LABEL_19:
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CD06FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  absl::lts_20240722::Mutex::Unlock((v21 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::LogMessageWithThrottling(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  _X8 = *(a1 + 632);
  __asm { PRFM            #4, [X8] }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  v17 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v15, v16, v6, v7);
  v18 = 0;
  v19 = (((v17 + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + v16));
  v20 = *(a1 + 632);
  v21 = (v20 >> 12) ^ (v19 >> 7);
  v22 = vdup_n_s8(v19 & 0x7F);
  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = *(a2 + 23);
  }

  else
  {
    v24 = a2[1];
  }

  v25 = *(a1 + 616);
  if (v23 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  v27 = v21 & v25;
  v28 = *(v20 + (v21 & v25));
  v29 = vceq_s8(v28, v22);
  if (v29)
  {
LABEL_14:
    v30 = *(a1 + 640);
    v46 = v30;
    v47 = v18;
    while (1)
    {
      v31 = a3;
      v32 = v30 + 32 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v25);
      v33 = *(v32 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v32 + 8);
      }

      if (v33 == v24)
      {
        v35 = v34 >= 0 ? v32 : *v32;
        v36 = memcmp(v35, v26, v24);
        if (!v36)
        {
          break;
        }
      }

      v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
      a3 = v31;
      v30 = v46;
      v18 = v47;
      if (!v29)
      {
        goto LABEL_23;
      }
    }

    NewThrottledId = *(v32 + 24);
    a3 = v31;
    v38 = *(a1 + 608);
    v39 = *(a1 + 8);
    if (*v39 == 1)
    {
LABEL_27:
      v40 = absl::lts_20240722::GetCurrentTimeNanos(v36) - *(v39 + 8) + *(v39 + 16);
      goto LABEL_35;
    }
  }

  else
  {
LABEL_23:
    while (!*&vceq_s8(v28, 0x8080808080808080))
    {
      v18 += 8;
      v27 = (v18 + v27) & v25;
      v28 = *(v20 + v27);
      v29 = vceq_s8(v28, v22);
      if (v29)
      {
        goto LABEL_14;
      }
    }

    NewThrottledId = operations_research::SolverLogger::GetNewThrottledId(*(a1 + 608));
    v36 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::find_or_prepare_insert_non_soo<std::string>((a1 + 616), a2, v41, v42, &v50);
    if (LOBYTE(v52) == 1)
    {
      v43 = v51;
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v51, *a2, a2[1]);
      }

      else
      {
        v44 = *a2;
        v51->__r_.__value_.__r.__words[2] = a2[2];
        *&v43->__r_.__value_.__l.__data_ = v44;
      }

      LODWORD(v43[1].__r_.__value_.__l.__data_) = 0;
    }

    LODWORD(v51[1].__r_.__value_.__l.__data_) = NewThrottledId;
    v38 = *(a1 + 608);
    v39 = *(a1 + 8);
    if (*v39 == 1)
    {
      goto LABEL_27;
    }
  }

  v40 = *(v39 + 16);
LABEL_35:
  v50 = a2;
  v51 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v52 = v40 * 0.000000001;
  v53 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v54 = a3;
  v55 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs %s", 15, &v50, 3uLL, __p);
  operations_research::SolverLogger::ThrottledLog(v38, NewThrottledId, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  v45 = *MEMORY[0x277D85DE8];
}

void sub_23CD0732C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t operations_research::sat::SharedResponseManager::LoggingIsEnabled(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = *this[76];
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return v2;
}

void operations_research::sat::SharedResponseManager::InitializeObjective(operations_research::sat::SharedResponseManager *this, const operations_research::sat::CpModelProto *a2, __n128 a3)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 16);
    *(this + 3) = v4;
    operations_research::Domain::FromFlatSpanOfIntervals(*(v4 + 72), *(v4 + 64), v9, a3);
    if (!operations_research::Domain::IsEmpty(v9))
    {
      v8 = 14;
      strcpy(__p, "initial_domain");
      v5 = operations_research::Domain::Min(v9);
      v6 = operations_research::Domain::Max(v9);
      operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(this, __p, v5, v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v9[0])
    {
      operator delete(v9[1]);
    }
  }

  else
  {
    *(this + 3) = 0;
  }
}

void sub_23CD07488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p)
{
  if ((a15 & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = absl::lts_20240722::Mutex::Lock((a1 + 32));
  v10 = *(a1 + 24);
  if (!v10)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 294);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
  }

  v11 = *(a1 + 240);
  v12 = *(a1 + 248);
  if (v11 > v12)
  {
    goto LABEL_86;
  }

  if (v11 >= a3 && v12 <= a4)
  {
    goto LABEL_86;
  }

  v14 = *(a1 + 240);
  if (v11 >= a3)
  {
    if (v12 <= a4)
    {
      goto LABEL_9;
    }

LABEL_24:
    *(a1 + 248) = a4;
    if (v14 > a4)
    {
      goto LABEL_10;
    }

LABEL_25:
    if ((**(a1 + 608) & 1) != 0 || *(a1 + 392) != *(a1 + 400))
    {
      v27 = *(a1 + 256);
      v28 = v27;
      v29 = -INFINITY;
      if (v27 == 0x8000000000000000)
      {
        v28 = -INFINITY;
      }

      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = INFINITY;
      }

      v30 = *(v10 + 88);
      v31 = *(v10 + 96);
      v32 = v30 + v28;
      if (v14 != 0x8000000000000000)
      {
        v29 = v14;
      }

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = INFINITY;
      }

      if (v31 == 0.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31 * v32;
      }

      v34 = v29 + v30;
      v35 = v31 * (v29 + v30);
      if (v31 == 0.0)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      if (v11 < a3)
      {
        v37 = *(a1 + 392);
        v38 = *(a1 + 400);
        if (v37 != v38)
        {
          do
          {
            __p[0] = *&v36;
            v39 = *(v37 + 32);
            if (!v39)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v39 + 48))(v39, __p);
            v37 += 40;
          }

          while (v37 != v38);
          if ((**(a1 + 608) & 1) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_48;
        }
      }

      if (**(a1 + 608))
      {
LABEL_48:
        v40 = *(a1 + 248);
        v41 = v40;
        if (v40 == 0x8000000000000000)
        {
          v41 = -INFINITY;
        }

        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = INFINITY;
        }

        v42 = *(v10 + 96);
        v43 = *(v10 + 88) + v41;
        if (v42 != 0.0)
        {
          v43 = v42 * v43;
        }

        if (v42 >= 0.0)
        {
          v44 = v36;
        }

        else
        {
          v44 = v43;
        }

        if (v42 >= 0.0)
        {
          v36 = v43;
        }

        operations_research::sat::SharedResponseManager::RegisterObjectiveBoundImprovement(a1, a2);
        v46 = *(a1 + 608);
        v47 = *(a1 + 648);
        v58 = 5;
        strcpy(&__dst, "Bound");
        v48 = *(a1 + 8);
        if (*v48 == 1)
        {
          v49 = absl::lts_20240722::GetCurrentTimeNanos(v45) - *(v48 + 8) + *(v48 + 16);
        }

        else
        {
          v49 = *(v48 + 16);
        }

        operations_research::SolverLogger::ThrottledLog(v46, v47, __p);
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__p[0]);
        }

        if (v58 < 0)
        {
          operator delete(__dst);
        }
      }
    }

LABEL_85:
    operations_research::sat::SharedResponseManager::TestGapLimitsIfNeeded(a1, v9);
    goto LABEL_86;
  }

  v14 = *(a1 + 256);
  if (v14 >= a3)
  {
    v14 = a3;
  }

  *(a1 + 240) = v14;
  if (v12 > a4)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (v14 <= v12)
  {
    goto LABEL_25;
  }

LABEL_10:
  v15 = *(a1 + 56);
  if (v15 == 4 || v15 == 2)
  {
    v16 = 4;
    *(a1 + 56) = 4;
    if ((*(a1 + 264) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v16 = 3;
  *(a1 + 56) = 3;
  if (*(a1 + 264) == 1)
  {
LABEL_13:
    *(a1 + 60) = v16;
  }

LABEL_14:
  if (*(a1 + 288) == 1)
  {
    v17 = *(a1 + 16);
    absl::lts_20240722::Mutex::ReaderLock(v17);
    v18 = *(*(v17 + 1) + 112);
    absl::lts_20240722::Mutex::ReaderUnlock(v17);
    v19 = v18 - *(a1 + 312);
    v20 = *(*(a1 + 24) + 96);
    v21 = fabs(v20);
    if (v20 == 0.0)
    {
      v21 = 1.0;
    }

    v22 = log(v21 * *(a1 + 304) + 1.0);
    v23 = fmax(*(a1 + 248) - *(a1 + 240), 0.0);
    *(a1 + 296) = *(a1 + 296) + v19 * v22;
    *(a1 + 304) = v23;
    *(a1 + 312) = v18;
  }

  v24 = *(a1 + 608);
  if (*v24 != 1)
  {
    goto LABEL_86;
  }

  v54 = 4;
  strcpy(v53, "Done");
  v25 = *(a1 + 8);
  if (*v25 == 1)
  {
    v26 = absl::lts_20240722::GetCurrentTimeNanos(v8) - *(v25 + 8) + *(v25 + 16);
  }

  else
  {
    v26 = *(v25 + 16);
  }

  __p[0] = v53;
  __p[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v60 = v26 * 0.000000001;
  v61 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v62 = a2;
  v63 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs %s", 15, __p, 3uLL, v55);
  if ((v56 & 0x80u) == 0)
  {
    v50 = v55;
  }

  else
  {
    v50 = v55[0];
  }

  if ((v56 & 0x80u) == 0)
  {
    v51 = v56;
  }

  else
  {
    v51 = v55[1];
  }

  if (v51 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v51 >= 0x17)
  {
    operator new();
  }

  v58 = v51;
  if (v51)
  {
    memmove(&__dst, v50, v51);
  }

  *(&__dst + v51) = 0;
  operations_research::SolverLogger::LogInfo(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 330, &__dst);
  if (v58 < 0)
  {
    operator delete(__dst);
    if ((v56 & 0x80000000) == 0)
    {
LABEL_78:
      if (v54 < 0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }
  }

  else if ((v56 & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

  operator delete(v55[0]);
  if (v54 < 0)
  {
LABEL_89:
    operator delete(v53[0]);
  }

LABEL_86:
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  v52 = *MEMORY[0x277D85DE8];
}

void sub_23CD07A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  absl::lts_20240722::Mutex::Unlock((v32 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::SetSynchronizationMode(atomic_ullong *this, char a2)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  *(this + 264) = a2;
  absl::lts_20240722::Mutex::Unlock((this + 4));
}

void operations_research::sat::SharedResponseManager::SetUpdateGapIntegralOnEachChange(atomic_ullong *this, char a2)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  *(this + 288) = a2;
  absl::lts_20240722::Mutex::Unlock((this + 4));
}

void operations_research::sat::SharedResponseManager::UpdateGapIntegral(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  if (this[3])
  {
    v2 = this[2];
    absl::lts_20240722::Mutex::ReaderLock(v2);
    v3 = *(*(v2 + 1) + 112);
    absl::lts_20240722::Mutex::ReaderUnlock(v2);
    v4 = v3 - *(this + 39);
    v5 = *(this[3] + 96);
    v6 = fabs(v5);
    if (v5 == 0.0)
    {
      v6 = 1.0;
    }

    v7 = log(v6 * *(this + 38) + 1.0);
    v8 = fmax(this[31] - this[30], 0.0);
    *(this + 37) = *(this + 37) + v4 * v7;
    *(this + 38) = v8;
    *(this + 39) = v3;
  }

  absl::lts_20240722::Mutex::Unlock((this + 4));
}

void operations_research::sat::SharedResponseManager::SetGapLimitsFromParameters(atomic_ullong *this, const operations_research::sat::SatParameters *a2)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  if (this[3])
  {
    this[5] = *(a2 + 91);
    this[6] = *(a2 + 37);
  }

  absl::lts_20240722::Mutex::Unlock((this + 4));
}

void operations_research::sat::SharedResponseManager::TestGapLimitsIfNeeded(operations_research::sat::SharedResponseManager *this, char *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(this + 288) == 1 && *(this + 3))
  {
    v3 = *(this + 2);
    absl::lts_20240722::Mutex::ReaderLock(v3);
    v4 = *(*(v3 + 1) + 112);
    absl::lts_20240722::Mutex::ReaderUnlock(v3);
    v5 = v4 - *(this + 39);
    v6 = *(*(this + 3) + 96);
    v7 = fabs(v6);
    if (v6 == 0.0)
    {
      v7 = 1.0;
    }

    v8 = log(v7 * *(this + 38) + 1.0);
    v9 = fmax(*(this + 31) - *(this + 30), 0.0);
    *(this + 37) = *(this + 37) + v5 * v8;
    *(this + 38) = v9;
    *(this + 39) = v4;
  }

  v10 = *(this + 5);
  if (v10 != 0.0 || *(this + 6) != 0.0)
  {
    v11 = *(this + 32);
    if (v11 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v12 = *(this + 30);
      if (v12 >= 0x8000000000000003 && v12 <= *(this + 31))
      {
        v13 = v11;
        v14 = *(this + 3);
        if (v11 == 0x8000000000000000)
        {
          v13 = -INFINITY;
        }

        v15 = *(v14 + 88);
        v16 = *(v14 + 96);
        v17 = v13 + v15;
        v18 = v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = INFINITY;
        }

        if (v16 == 0.0)
        {
          v19 = v17;
        }

        else
        {
          v19 = v16 * v17;
        }

        v20 = v18 + v15;
        v21 = v16 * (v18 + v15);
        if (v16 != 0.0)
        {
          v20 = v21;
        }

        v22 = vabdd_f64(v19, v20);
        if (v22 <= v10)
        {
          v23 = *(this + 76);
          if (*v23 == 1)
          {
            v34 = "Absolute gap limit of ";
            v35 = 22;
            v31 = v33;
            v32 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v33, v10, a2);
            v29 = " reached.";
            v30 = 9;
            absl::lts_20240722::StrCat(&v34, &v31, &v29, &__p);
            operations_research::SolverLogger::LogInfo(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 273, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          *(this + 14) = 4;
          if (*(this + 264) == 1)
          {
            *(this + 15) = 4;
            operations_research::SharedTimeLimit::Stop(*(this + 2));
          }
        }

        v24 = *(this + 6);
        if (v22 / fmax(fabs(v19), 1.0) < v24)
        {
          v25 = *(this + 76);
          if (*v25 == 1)
          {
            v34 = "Relative gap limit of ";
            v35 = 22;
            v26 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v33, v24, a2);
            v31 = v33;
            v32 = v26;
            v29 = " reached.";
            v30 = 9;
            absl::lts_20240722::StrCat(&v34, &v31, &v29, &__p);
            operations_research::SolverLogger::LogInfo(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 283, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          *(this + 14) = 4;
          if (*(this + 264) == 1)
          {
            *(this + 15) = 4;
            operations_research::SharedTimeLimit::Stop(*(this + 2));
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_23CD07F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SharedResponseManager::RegisterObjectiveBoundImprovement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    if (v3 < 0)
    {
      if (*(a2 + 8) != 14)
      {
        goto LABEL_13;
      }

      v5 = *a2;
    }

    else
    {
      v5 = a2;
      if (v3 != 14)
      {
LABEL_13:
        operations_research::sat::ExtractSubSolverName(a2, &__p);
        p_p = &__p;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 584), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &p_p, &v10);
        ++*&v10[32 * v11 + 40];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    v6 = *v5;
    v7 = *(v5 + 6);
    if (v6 != 0x206C616974696E69 || v7 != 0x6E69616D6F64206CLL)
    {
      goto LABEL_13;
    }
  }
}

void sub_23CD080D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::ProgressMessage(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a6 <= a7)
  {
    v15 = a6;
    v16 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v17 = a7;
    v18 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::FormatPack("next:[%.9g,%.9g]", 16, &v15, 2uLL, __p);
  }

  else
  {
    v14 = 7;
    strcpy(__p, "next:[]");
  }

  v15 = *&a2;
  v16 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v17 = a4;
  v18 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v19 = a5;
  v20 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  v21 = __p;
  v22 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v23 = a3;
  v24 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs best:%-5.9g %-15s %s", 33, &v15, 5uLL, a1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CD08234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(uint64_t a1, uint64_t a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v4 = absl::lts_20240722::Mutex::Lock((a1 + 32));
  v5 = *(a1 + 56);
  if (v5 == 4 || v5 == 2)
  {
    *(a1 + 56) = 4;
    if (*(a1 + 264) == 1)
    {
      *(a1 + 60) = 4;
    }

    *(a1 + 240) = *(a1 + 256);
    if (*(a1 + 288) == 1 && *(a1 + 24))
    {
      v7 = *(a1 + 16);
      absl::lts_20240722::Mutex::ReaderLock(v7);
      v8 = *(*(v7 + 1) + 112);
      absl::lts_20240722::Mutex::ReaderUnlock(v7);
      v9 = v8 - *(a1 + 312);
      v10 = *(*(a1 + 24) + 96);
      v11 = fabs(v10);
      if (v10 == 0.0)
      {
        v11 = 1.0;
      }

      v12 = log(v11 * *(a1 + 304) + 1.0);
      v13 = fmax(*(a1 + 248) - *(a1 + 240), 0.0);
      *(a1 + 296) = *(a1 + 296) + v9 * v12;
      *(a1 + 304) = v13;
      *(a1 + 312) = v8;
    }
  }

  else
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v4, 0, "num_solutions_ == 0");
    }

    *(a1 + 56) = 3;
    if (*(a1 + 264) == 1)
    {
      *(a1 + 60) = 3;
    }
  }

  v14 = *(a1 + 608);
  if (*v14 == 1)
  {
    v21 = 4;
    strcpy(v20, "Done");
    v15 = *(a1 + 8);
    if (*v15 == 1)
    {
      v16 = absl::lts_20240722::GetCurrentTimeNanos(v4) - *(v15 + 8) + *(v15 + 16);
    }

    else
    {
      v16 = *(v15 + 16);
    }

    v26[0] = v20;
    v26[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
    *&v26[2] = v16 * 0.000000001;
    v26[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    v26[4] = a2;
    v26[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
    absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs %s", 15, v26, 3uLL, __p);
    if ((v23 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = __p[1];
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v25 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    *(&__dst + v18) = 0;
    operations_research::SolverLogger::LogInfo(v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 378, &__dst);
    if (v25 < 0)
    {
      operator delete(__dst);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_34:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_38:
        operator delete(v20[0]);
        goto LABEL_35;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(__p[0]);
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

LABEL_35:
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23CD08580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void operations_research::sat::SharedResponseManager::AddUnsatCore(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  if (a1 + 64 != a2)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 64), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  absl::lts_20240722::Mutex::Unlock((a1 + 32));
}

atomic_ullong operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = this[30];
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return v2;
}

atomic_ullong operations_research::sat::SharedResponseManager::GetInnerObjectiveUpperBound(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = this[31];
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return v2;
}

void operations_research::sat::SharedResponseManager::Synchronize(operations_research::sat::SharedResponseManager *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  *(this + 17) = *(this + 15);
  *(this + 15) = *(this + 14);
  absl::lts_20240722::Mutex::Lock(this + 15);
  v3 = *(this + 23);
  v2 = *(this + 24);
  absl::lts_20240722::Mutex::Unlock((this + 120));
  if (((v2 - v3) >> 6) >= 1)
  {
    atomic_store(1u, this + 680);
  }

  operations_research::SolverLogger::FlushPendingThrottledLogs(*(this + 76), 0, v4);
  absl::lts_20240722::Mutex::Unlock((this + 32));
}

atomic_ullong operations_research::sat::SharedResponseManager::SynchronizedInnerObjectiveLowerBound(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = this[34];
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return v2;
}

atomic_ullong operations_research::sat::SharedResponseManager::SynchronizedInnerObjectiveUpperBound(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = this[35];
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return v2;
}

void operations_research::sat::SharedResponseManager::AddSolutionPostprocessor(atomic_ullong *a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(a1 + 4);
  v4 = a1[53];
  if (v4 < a1[54])
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
        goto LABEL_8;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    *(v4 + 24) = v5;
LABEL_8:
    v6 = v4 + 32;
    a1[53] = v4 + 32;
    goto LABEL_9;
  }

  v6 = std::vector<std::function<void ()(std::vector<long long> *)>>::__emplace_back_slow_path<std::function<void ()(std::vector<long long> *)> const&>(a1 + 52, a2);
LABEL_9:
  a1[53] = v6;
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
}

void sub_23CD088F4(_Unwind_Exception *a1)
{
  *(v1 + 424) = v2;
  absl::lts_20240722::Mutex::Unlock((v1 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::AddResponsePostprocessor(atomic_ullong *a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(a1 + 4);
  v4 = a1[56];
  if (v4 < a1[57])
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
        goto LABEL_8;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    *(v4 + 24) = v5;
LABEL_8:
    v6 = v4 + 32;
    a1[56] = v4 + 32;
    goto LABEL_9;
  }

  v6 = std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__emplace_back_slow_path<std::function<void ()(operations_research::sat::CpSolverResponse *)> const&>(a1 + 55, a2);
LABEL_9:
  a1[56] = v6;
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
}

void sub_23CD089EC(_Unwind_Exception *a1)
{
  *(v1 + 448) = v2;
  absl::lts_20240722::Mutex::Unlock((v1 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::AddFinalResponsePostprocessor(atomic_ullong *a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(a1 + 4);
  v4 = a1[59];
  if (v4 < a1[60])
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
        goto LABEL_8;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    *(v4 + 24) = v5;
LABEL_8:
    v6 = v4 + 32;
    a1[59] = v4 + 32;
    goto LABEL_9;
  }

  v6 = std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__emplace_back_slow_path<std::function<void ()(operations_research::sat::CpSolverResponse *)> const&>(a1 + 58, a2);
LABEL_9:
  a1[59] = v6;
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
}

void sub_23CD08AE4(_Unwind_Exception *a1)
{
  *(v1 + 472) = v2;
  absl::lts_20240722::Mutex::Unlock((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::SharedResponseManager::AddSolutionCallback(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  v4 = *(a1 + 320);
  *(a1 + 320) = v4 + 1;
  v10 = v4;
  v5 = *(a1 + 336);
  if (v5 < *(a1 + 344))
  {
    *v5 = v4;
    v6 = a2 + 24;
    v7 = *(a2 + 24);
    if (v7)
    {
      if (v7 == a2)
      {
        *(v5 + 32) = v5 + 8;
        (*(**v6 + 24))();
        goto LABEL_9;
      }

      *(v5 + 32) = v7;
    }

    else
    {
      v6 = v5 + 32;
    }

    *v6 = 0;
LABEL_9:
    v8 = v5 + 40;
    goto LABEL_10;
  }

  v8 = std::vector<std::pair<int,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>>::__emplace_back_slow_path<int const&,std::function<void ()(operations_research::sat::CpSolverResponse const&)>>((a1 + 328), &v10, a2);
  v4 = v10;
LABEL_10:
  *(a1 + 336) = v8;
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  return v4;
}

uint64_t operations_research::sat::SharedResponseManager::AddLogCallback(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  v4 = *(a1 + 352);
  *(a1 + 352) = v4 + 1;
  v10 = v4;
  v5 = *(a1 + 368);
  if (v5 < *(a1 + 376))
  {
    *v5 = v4;
    v6 = a2 + 24;
    v7 = *(a2 + 24);
    if (v7)
    {
      if (v7 == a2)
      {
        *(v5 + 32) = v5 + 8;
        (*(**v6 + 24))();
        goto LABEL_9;
      }

      *(v5 + 32) = v7;
    }

    else
    {
      v6 = v5 + 32;
    }

    *v6 = 0;
LABEL_9:
    v8 = v5 + 40;
    goto LABEL_10;
  }

  v8 = std::vector<std::pair<int,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>>::__emplace_back_slow_path<int const&,std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>>((a1 + 360), &v10, a2);
  v4 = v10;
LABEL_10:
  *(a1 + 368) = v8;
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  return v4;
}

uint64_t operations_research::sat::SharedResponseManager::AddBestBoundCallback(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  v10 = v4;
  v5 = *(a1 + 400);
  if (v5 < *(a1 + 408))
  {
    *v5 = v4;
    v6 = a2 + 24;
    v7 = *(a2 + 24);
    if (v7)
    {
      if (v7 == a2)
      {
        *(v5 + 32) = v5 + 8;
        (*(**v6 + 24))();
        goto LABEL_9;
      }

      *(v5 + 32) = v7;
    }

    else
    {
      v6 = v5 + 32;
    }

    *v6 = 0;
LABEL_9:
    v8 = v5 + 40;
    goto LABEL_10;
  }

  v8 = std::vector<std::pair<int,std::function<void ()(double)>>>::__emplace_back_slow_path<int const&,std::function<void ()(double)>>((a1 + 392), &v10, a2);
  v4 = v10;
LABEL_10:
  *(a1 + 400) = v8;
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  return v4;
}

void operations_research::sat::SharedResponseManager::GetResponseInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const std::string *a4@<X3>, uint64_t a5@<X8>)
{
  operations_research::sat::CpSolverResponse::CpSolverResponse(a5, 0);
  *(a5 + 264) = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 64);
  if (v12 != v11)
  {
    *(a5 + 72) = 0;
    v13 = v11 - v12;
    v14 = (v11 - v12) >> 2;
    if (*(a5 + 76) < v14)
    {
      google::protobuf::RepeatedField<int>::Grow(a5 + 72, 0, (v11 - v12) >> 2);
      v15 = *(a5 + 72);
      v16 = *(a5 + 80);
      *(a5 + 72) = v14;
      v17 = &v16[v15];
      v18 = v13 - 4;
      if ((v13 - 4) < 0x1C)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = 0;
      v16 = *(a5 + 80);
      *(a5 + 72) = v14;
      v17 = v16;
      v18 = v13 - 4;
      if ((v13 - 4) < 0x1C)
      {
LABEL_4:
        v19 = v12;
        goto LABEL_11;
      }
    }

    v20 = &v16[v15];
    if (v20 - v12 < 0x20)
    {
      v19 = v12;
      do
      {
LABEL_11:
        v27 = *v19++;
        *v17++ = v27;
      }

      while (v19 != v11);
      goto LABEL_12;
    }

    v21 = (v18 >> 2) + 1;
    v22 = 4 * (v21 & 0x7FFFFFFFFFFFFFF8);
    v17 = (v17 + v22);
    v19 = (v12 + v22);
    v23 = (v12 + 16);
    v24 = v20 + 4;
    v25 = v21 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v21 != (v21 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v28 = *(a1 + 24);
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    if (v29 == 3)
    {
      *(a5 + 248) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      goto LABEL_34;
    }

    v30 = 256;
  }

  else
  {
    v30 = 248;
  }

  v31 = *(a1 + v30);
  v32 = v31;
  if (v31 == 0x8000000000000000)
  {
    v32 = -INFINITY;
  }

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = INFINITY;
  }

  v33 = *(v28 + 96);
  v34 = *(v28 + 88) + v32;
  if (v33 != 0.0)
  {
    v34 = v33 * v34;
  }

  *(a5 + 144) = v34;
  v35 = *(a1 + 240);
  v36 = *(v28 + 112);
  if (v36)
  {
    v37 = *(v28 + 120) + (*(v28 + 104) + v35) * v36;
  }

  else
  {
    v37 = *(v28 + 104) + v35;
  }

  *(a5 + 248) = v37;
  v38 = v35;
  if (v35 == 0x8000000000000000)
  {
    v38 = -INFINITY;
  }

  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = INFINITY;
  }

  v39 = *(v28 + 96);
  v40 = v38 + *(v28 + 88);
  if (v39 != 0.0)
  {
    v40 = v39 * v40;
  }

  *(a5 + 152) = v40;
  *(a5 + 224) = *(a1 + 296);
LABEL_34:
  v41 = *(a5 + 8);
  if (v41)
  {
    v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set<>((a5 + 120), a4, v41);
  v43 = *(a1 + 56);
  if (v43 == 4 || v43 == 2)
  {
    *(a5 + 24) = 0;
    if (*(a5 + 28) < a3)
    {
      google::protobuf::RepeatedField<long long>::Grow(a5 + 24, 0);
      v44 = *(a5 + 24);
      v45 = *(a5 + 32);
      *(a5 + 24) = a3;
      if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v44 = 0;
      v45 = *(a5 + 32);
      *(a5 + 24) = a3;
      if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_44;
      }
    }

    v46 = (v45 + 8 * v44);
    v47 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v47 < 7 || (v48 = 8 * v44 + v45, (v48 - a2) < 0x20))
    {
      v49 = a2;
      do
      {
LABEL_43:
        v50 = *v49++;
        *v46++ = v50;
      }

      while (v49 != (a2 + 8 * a3));
      goto LABEL_44;
    }

    v59 = v47 + 1;
    v60 = (v47 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v46 += v60;
    v49 = (a2 + 8 * v60);
    v61 = (a2 + 16);
    v62 = (v48 + 16);
    v63 = v60;
    do
    {
      v64 = *v61;
      *(v62 - 1) = *(v61 - 1);
      *v62 = v64;
      v61 += 2;
      v62 += 2;
      v63 -= 4;
    }

    while (v63);
    if (v59 != v60)
    {
      goto LABEL_43;
    }
  }

LABEL_44:
  v51 = *(a1 + 656);
  if (v51 != *(a1 + 664))
  {
    operations_research::sat::CpSolverResponse::MergeImpl(a5, v51, v42);
  }

  v52 = *(a5 + 264);
  if (v52 == 4 || v52 == 2)
  {
    v54 = *(a5 + 24);
    v55 = *(a5 + 32);
    v87 = 0;
    v88 = 0;
    __p = 0;
    if (v54)
    {
      if ((v54 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v56 = 0;
    v57 = 0;
    v58 = ((*(a1 + 424) - *(a1 + 416)) >> 5) - 1;
    if (v58 >= 0)
    {
      v65 = (32 * v58) | 0x18;
      do
      {
        v66 = *(a1 + 416);
        p_p = &__p;
        v67 = *(v66 + v65);
        if (!v67)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v67 + 48))(v67, &p_p);
        v65 -= 32;
      }

      while (v65 != -8);
      v57 = __p;
      v56 = v87;
    }

    *(a5 + 24) = 0;
    v68 = v56 - v57;
    v69 = (v56 - v57) >> 3;
    if (*(a5 + 28) < v69)
    {
      google::protobuf::RepeatedField<long long>::Grow(a5 + 24, 0);
      v70 = *(a5 + 24);
      v71 = *(a5 + 32);
      *(a5 + 24) = v69;
      if (v57 == v56)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v70 = 0;
      v71 = *(a5 + 32);
      *(a5 + 24) = v69;
      if (v57 == v56)
      {
        goto LABEL_74;
      }
    }

    v72 = (v71 + 8 * v70);
    if ((v68 - 8) >= 0x38)
    {
      v74 = 8 * v70 + v71;
      if ((v74 - v57) >= 0x20)
      {
        v75 = ((v68 - 8) >> 3) + 1;
        v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
        v72 = (v72 + v76);
        v73 = &v57[v76];
        v77 = (v57 + 16);
        v78 = (v74 + 16);
        v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v80 = *v77;
          *(v78 - 1) = *(v77 - 1);
          *v78 = v80;
          v77 += 2;
          v78 += 2;
          v79 -= 4;
        }

        while (v79);
        if (v75 == (v75 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_74:
          if (__p)
          {
            v87 = __p;
            operator delete(__p);
          }

          goto LABEL_76;
        }
      }

      else
      {
        v73 = v57;
      }
    }

    else
    {
      v73 = v57;
    }

    do
    {
      v81 = *v73;
      v73 += 8;
      *v72++ = v81;
    }

    while (v73 != v56);
    goto LABEL_74;
  }

LABEL_76:
  v82 = ((*(a1 + 448) - *(a1 + 440)) >> 5) - 1;
  if (v82 >= 0)
  {
    v83 = (32 * v82) | 0x18;
    do
    {
      v84 = *(a1 + 440);
      __p = a5;
      v85 = *(v84 + v83);
      if (!v85)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v85 + 48))(v85, &__p);
      v83 -= 32;
    }

    while (v83 != -8);
  }
}

void sub_23CD09420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    operations_research::sat::CpSolverResponse::~CpSolverResponse(v10);
    _Unwind_Resume(a1);
  }

  operations_research::sat::CpSolverResponse::~CpSolverResponse(v10);
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::GetResponse(atomic_ullong *this@<X0>, uint64_t a2@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  absl::lts_20240722::Mutex::Lock(this + 15);
  v5 = this[23];
  v4 = this[24];
  absl::lts_20240722::Mutex::Unlock((this + 15));
  v40 = a2;
  if (((v4 - v5) & 0x3FFFFFFFC0) != 0)
  {
    operations_research::sat::SharedSolutionRepository<long long>::GetSolution(this + 11, 0, &v44);
    v7 = v44.__r_.__value_.__r.__words[2];
    size = v44.__r_.__value_.__l.__size_;
    operations_research::sat::SharedSolutionRepository<long long>::GetSolution(this + 11, 0, v41);
    v8 = (v7 - size) >> 3;
    a2 = v40;
    operations_research::sat::SharedResponseManager::GetResponseInternal(this, size, v8, &__p, v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v41[1])
    {
      v42 = v41[1];
      operator delete(v41[1]);
    }

    if (v47 < 0)
    {
      operator delete(v46);
      v9 = v44.__r_.__value_.__l.__size_;
      if (!v44.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = v44.__r_.__value_.__l.__size_;
      if (!v44.__r_.__value_.__l.__size_)
      {
LABEL_15:
        if (*(*this + 287) != 1)
        {
          goto LABEL_41;
        }

        goto LABEL_16;
      }
    }

    v44.__r_.__value_.__r.__words[2] = v9;
    operator delete(v9);
    if (*(*this + 287) != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(&v44.__r_.__value_.__s + 23) = 0;
    v44.__r_.__value_.__s.__data_[0] = 0;
    operations_research::sat::SharedResponseManager::GetResponseInternal(this, 0, 0, &v44, a2);
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(v44.__r_.__value_.__l.__data_);
    if (*(*this + 287) != 1)
    {
      goto LABEL_41;
    }
  }

LABEL_16:
  v10 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  while (1)
  {
    absl::lts_20240722::Mutex::Lock(this + 15);
    v12 = this[23];
    v11 = this[24];
    absl::lts_20240722::Mutex::Unlock((this + 15));
    if (v10 >= ((v11 - v12) >> 6))
    {
      break;
    }

    operations_research::sat::SharedSolutionRepository<long long>::GetSolution(this + 11, v10, &v44);
    if (v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }

    *v41 = *&v44.__r_.__value_.__r.__words[1];
    v42 = v45;
    v45 = 0;
    *&v44.__r_.__value_.__r.__words[1] = 0uLL;
    if (v47 < 0)
    {
      operator delete(v46);
      if (v44.__r_.__value_.__l.__size_)
      {
        v44.__r_.__value_.__r.__words[2] = v44.__r_.__value_.__l.__size_;
        operator delete(v44.__r_.__value_.__l.__size_);
      }
    }

    v13 = ((this[53] - this[52]) >> 5) - 1;
    if (v13 >= 0)
    {
      v14 = (32 * v13) | 0x18;
      do
      {
        v15 = this[52];
        v44.__r_.__value_.__r.__words[0] = v41;
        v16 = *(v15 + v14);
        if (!v16)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v16 + 48))(v16, &v44);
        v14 -= 32;
      }

      while (v14 != -8);
    }

    v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v40 + 96), google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpSolverSolution>);
    v18 = v17;
    *(v17 + 16) = 0;
    v19 = (v17 + 16);
    v20 = v41[0];
    v21 = v41[1];
    v22 = v41[1] - v41[0];
    v23 = (v41[1] - v41[0]) >> 3;
    if (*(v17 + 20) < v23)
    {
      google::protobuf::RepeatedField<long long>::Grow(v17 + 16, 0);
      v24 = *v19;
      v25 = *(v18 + 24);
      *(v18 + 16) = v23;
      if (v20 == v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(v17 + 24);
      *(v17 + 16) = v23;
      if (v20 == v21)
      {
        goto LABEL_17;
      }
    }

    v26 = (v25 + 8 * v24);
    if ((v22 - 8) < 0x18)
    {
      goto LABEL_50;
    }

    v27 = 8 * v24;
    if ((8 * v24 + v25 - v20) < 0x20)
    {
      goto LABEL_50;
    }

    v28 = ((v22 - 8) >> 3) + 1;
    v29 = v28 & 0x3FFFFFFFFFFFFFFCLL;
    v26 = (v26 + v29 * 8);
    v30 = &v20[v29];
    v31 = (v20 + 2);
    v32 = (v25 + v27 + 16);
    v33 = v28 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v34 = *v31;
      *(v32 - 1) = *(v31 - 1);
      *v32 = v34;
      v31 += 2;
      v32 += 2;
      v33 -= 4;
    }

    while (v33);
    v20 = v30;
    if (v28 != (v28 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_50:
      do
      {
        v35 = *v20++;
        *v26++ = v35;
      }

      while (v20 != v21);
    }

LABEL_17:
    ++v10;
  }

  a2 = v40;
  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

LABEL_41:
  v36 = ((this[59] - this[58]) >> 5) - 1;
  if (v36 >= 0)
  {
    v37 = (32 * v36) | 0x18;
    do
    {
      v38 = this[58];
      v44.__r_.__value_.__r.__words[0] = a2;
      v39 = *(v38 + v37);
      if (!v39)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v39 + 48))(v39, &v44);
      v37 -= 32;
    }

    while (v37 != -8);
  }

  absl::lts_20240722::Mutex::Unlock((this + 4));
}

void sub_23CD0986C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::Mutex::Unlock((v24 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::AppendResponseToBeMerged(operations_research::sat::SharedResponseManager *this, const operations_research::sat::CpSolverResponse *a2)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v4 = *(this + 83);
  if (v4 >= *(this + 84))
  {
    v5 = std::vector<operations_research::sat::CpSolverResponse>::__emplace_back_slow_path<operations_research::sat::CpSolverResponse const&>(this + 656, a2);
  }

  else
  {
    operations_research::sat::CpSolverResponse::CpSolverResponse(*(this + 83), 0, a2);
    v5 = v4 + 272;
    *(this + 83) = v4 + 272;
  }

  *(this + 83) = v5;
  absl::lts_20240722::Mutex::Unlock((this + 32));
}

void operations_research::sat::SharedResponseManager::NewSolution(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v138 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock((a1 + 32));
  v10 = *(a1 + 24);
  if (!v10)
  {
    v122 = 0u;
    memset(__p, 0, 28);
    *v121 = 0u;
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(&v121[1], a2, &a2[8 * a3], (8 * a3) >> 3);
    std::string::operator=(__p, a4);
    if (*(a1 + 112) >= 1)
    {
      absl::lts_20240722::Mutex::Lock((a1 + 120));
      operations_research::sat::SharedSolutionRepository<long long>::AddInternal(a1 + 88, v121);
      absl::lts_20240722::Mutex::Unlock((a1 + 120));
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v121[1])
    {
      *&v122 = v121[1];
      operator delete(v121[1]);
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
LABEL_18:
      if (*(a1 + 264) == 1)
      {
        operations_research::sat::SharedSolutionRepository<long long>::Synchronize(a1 + 88);
        atomic_store(1u, (a1 + 680));
      }

      if (*(a1 + 24))
      {
        v12 = *(a1 + 264);
        *(a1 + 56) = 2;
        if (v12)
        {
          *(a1 + 60) = 2;
        }

        if (*(a1 + 240) <= *(a1 + 248))
        {
LABEL_30:
          ++*(a1 + 232);
          operations_research::sat::CpSolverResponse::CpSolverResponse(v121, 0);
          if ((*(a1 + 360) == *(a1 + 368) || (**(a1 + 608) & 1) == 0) && *(a1 + 328) == *(a1 + 336))
          {
LABEL_41:
            if (**(a1 + 608) != 1)
            {
              goto LABEL_165;
            }

            if (*(a4 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v124, *a4, *(a4 + 8));
            }

            else
            {
              v124 = *a4;
            }

            if (a5)
            {
              v20 = a5[3];
              if (v20 > 1)
              {
                v22 = 0;
                _X12 = a5[5];
                __asm { PRFM            #4, [X12] }

                v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
                v30 = vdup_n_s8(v29 & 0x7F);
                v31 = ((v29 >> 7) ^ (_X12 >> 12)) & v20;
                v32 = *(_X12 + v31);
                v16 = vceq_s8(v32, v30);
                if (!v16)
                {
                  goto LABEL_53;
                }

LABEL_50:
                v33 = a5[6];
                do
                {
                  v34 = (v31 + (__clz(__rbit64(v16)) >> 3)) & v20;
                  if (*(v33 + 16 * v34) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
                  {
                    v16 = v33 + 16 * v34;
                    goto LABEL_57;
                  }

                  v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
                }

                while (v16);
LABEL_53:
                while (!*&vceq_s8(v32, 0x8080808080808080))
                {
                  v22 += 8;
                  v31 = (v22 + v31) & v20;
                  v32 = *(_X12 + v31);
                  v16 = vceq_s8(v32, v30);
                  if (v16)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else if (a5[4] >= 2uLL)
              {
                v16 = (a5 + 5);
                v21 = a5[5];
              }

LABEL_57:
              v35 = *(v16 + 8);
              v37 = *(v35 + 48);
              v36 = *(v35 + 56);
              if (v20 > 1)
              {
                v77 = 0;
                _X11 = a5[5];
                __asm { PRFM            #4, [X11] }

                v80 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatSolver>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatSolver>(void)::d));
                v81 = vdup_n_s8(v80 & 0x7F);
                v82 = ((v80 >> 7) ^ (_X11 >> 12)) & v20;
                v83 = *(_X11 + v82);
                v84 = vceq_s8(v83, v81);
                if (!v84)
                {
                  goto LABEL_112;
                }

LABEL_109:
                v85 = a5[6];
                while (1)
                {
                  v86 = (v82 + (__clz(__rbit64(v84)) >> 3)) & v20;
                  if (*(v85 + 16 * v86) == &gtl::FastTypeId<operations_research::sat::SatSolver>(void)::d)
                  {
                    break;
                  }

                  v84 &= ((v84 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v84)
                  {
LABEL_112:
                    while (!*&vceq_s8(v83, 0x8080808080808080))
                    {
                      v77 += 8;
                      v82 = (v77 + v82) & v20;
                      v83 = *(_X11 + v82);
                      v84 = vceq_s8(v83, v81);
                      if (v84)
                      {
                        goto LABEL_109;
                      }
                    }

                    goto LABEL_59;
                  }
                }

                v87 = (v85 + 16 * v86);
                v38 = (_X11 + v86);
                if (_X11 + v86)
                {
                  goto LABEL_60;
                }
              }

              else if (a5[4] >= 2uLL)
              {
                v89 = a5[5];
                v88 = a5 + 5;
                v38 = &absl::lts_20240722::container_internal::kSooControl;
                if (v89 == &gtl::FastTypeId<operations_research::sat::SatSolver>(void)::d)
                {
                  v87 = v88;
                }

                else
                {
                  v38 = 0;
                  v87 = 0;
                }

                if (v38)
                {
LABEL_60:
                  v38 = v87[1];
                }
              }

              else
              {
LABEL_59:
                v38 = 0;
              }

              v39 = *(v38 + 38);
              if (v39 == *(v38 + 39))
              {
                v40 = v38[74];
                if (v40)
                {
                  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v40, 0, "CurrentDecisionLevel() == 0");
                }

                v39 = (*(v38 + 27) + 12);
              }

              v41 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*v39, v127, v15);
              v126[0] = v127;
              v126[1] = (v41 - v127);
              v43 = absl::lts_20240722::numbers_internal::FastIntToBuffer(((v36 - v37) >> 2), &v125.__r_.__value_.__r.__words[2], v42);
              v125.__r_.__value_.__r.__words[0] = &v125.__r_.__value_.__r.__words[2];
              v125.__r_.__value_.__l.__size_ = v43 - &v125.__r_.__value_.__r.__words[2];
              __dst = " (fixed_BOOLs=";
              v130 = 14;
              v131 = *v126;
              v132 = "/";
              v133 = 1;
              v134 = &v125.__r_.__value_.__s.__data_[16];
              v135 = v43 - &v125.__r_.__value_.__r.__words[2];
              v136 = ")";
              v137 = 1;
              absl::lts_20240722::strings_internal::AppendPieces(&v124, &__dst, 5);
            }

            v44 = *(a1 + 360);
            for (i = *(a1 + 368); v44 != i; v44 += 40)
            {
              __dst = " ";
              v130 = 1;
              v46 = *(v44 + 32);
              if (!v46)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v46 + 48))(&v125);
              size = HIBYTE(v125.__r_.__value_.__r.__words[2]);
              if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v48 = &v125;
              }

              else
              {
                v48 = v125.__r_.__value_.__r.__words[0];
              }

              if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v125.__r_.__value_.__l.__size_;
              }

              v126[0] = v48;
              v126[1] = size;
              absl::lts_20240722::StrAppend(&v124, &__dst, v126);
              if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v125.__r_.__value_.__l.__data_);
              }
            }

            v49 = *(a1 + 24);
            if (v49)
            {
              v50 = *(a1 + 256);
              v51 = v50;
              v52 = -INFINITY;
              if (v50 == 0x8000000000000000)
              {
                v51 = -INFINITY;
              }

              if (v50 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v51 = INFINITY;
              }

              v53 = *(v49 + 88);
              v54 = *(v49 + 96);
              v55 = v53 + v51;
              v56 = *(a1 + 240);
              v57 = *(a1 + 248);
              v58 = v56;
              if (v56 == 0x8000000000000000)
              {
                v58 = -INFINITY;
              }

              if (v56 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v58 = INFINITY;
              }

              if (v57 != 0x8000000000000000)
              {
                v52 = v57;
              }

              if (v57 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v52 = INFINITY;
              }

              if (v54 == 0.0)
              {
                v59 = v55;
              }

              else
              {
                v59 = v54 * v55;
              }

              v60 = v53 + v58;
              if (v54 != 0.0)
              {
                v60 = v54 * (v53 + v58);
              }

              v61 = v53 + v52;
              if (v54 != 0.0)
              {
                v61 = v54 * v61;
              }

              if (v54 >= 0.0)
              {
                v62 = v61;
              }

              else
              {
                v62 = v60;
              }

              if (v54 >= 0.0)
              {
                v63 = v60;
              }

              else
              {
                v63 = v61;
              }

              operations_research::sat::SharedResponseManager::RegisterSolutionFound(a1, &v124, *(a1 + 232));
              v65 = *(a1 + 608);
              if (*v65 != 1)
              {
                goto LABEL_163;
              }

              v66 = *(a1 + 232);
              v125.__r_.__value_.__r.__words[2] = 0x1600000000000000;
              *&v125.__r_.__value_.__l.__data_ = 0uLL;
              v67 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v66, &v125, v64);
              v68 = std::string::erase(&v125, v67 - &v125, 0xFFFFFFFFFFFFFFFFLL);
              v69 = *(a1 + 8);
              if (*v69 == 1)
              {
                v70 = absl::lts_20240722::GetCurrentTimeNanos(v68) - *(v69 + 8) + *(v69 + 16);
              }

              else
              {
                v70 = *(v69 + 16);
              }

              if ((v128 & 0x80u) == 0)
              {
                v90 = v126;
              }

              else
              {
                v90 = v126[0];
              }

              if ((v128 & 0x80u) == 0)
              {
                v91 = v128;
              }

              else
              {
                v91 = v126[1];
              }

              if (v91 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v91 >= 0x17)
              {
                operator new();
              }

              BYTE7(v131) = v91;
              if (v91)
              {
                memmove(&__dst, v90, v91);
              }

              *(&__dst + v91) = 0;
              operations_research::SolverLogger::LogInfo(v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 729, &__dst);
              if (SBYTE7(v131) < 0)
              {
                operator delete(__dst);
                if ((v128 & 0x80000000) == 0)
                {
LABEL_137:
                  if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_163;
                  }

LABEL_141:
                  v92 = v125.__r_.__value_.__r.__words[0];
LABEL_162:
                  operator delete(v92);
LABEL_163:
                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

LABEL_165:
                  operations_research::sat::SharedResponseManager::TestGapLimitsIfNeeded(a1, v14);
                  v96 = *(a1 + 328);
                  for (j = *(a1 + 336); v96 != j; v96 += 40)
                  {
                    v98 = *(v96 + 32);
                    if (!v98)
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    (*(*v98 + 48))(v98, v121);
                  }

                  if ((**(a1 + 608) & 1) == 0)
                  {
                    goto LABEL_171;
                  }

                  explicit = atomic_load_explicit(&qword_281A21980, memory_order_acquire);
                  if (explicit)
                  {
                    if ((explicit & 1) == 0)
                    {
LABEL_171:
                      operations_research::sat::CpSolverResponse::~CpSolverResponse(v121);
                      goto LABEL_172;
                    }
                  }

                  else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_solutions))
                  {
                    goto LABEL_171;
                  }

                  v101 = (a1 + 488);
                  v102 = *(a1 + 511);
                  if ((v102 & 0x80u) != 0)
                  {
                    v101 = *(a1 + 488);
                    v102 = *(a1 + 496);
                  }

                  __dst = v101;
                  v130 = v102;
                  v126[0] = "solution_";
                  v126[1] = 9;
                  v103 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 232), &v125.__r_.__value_.__s.__data_[16], v95);
                  v125.__r_.__value_.__r.__words[0] = &v125.__r_.__value_.__r.__words[2];
                  v125.__r_.__value_.__l.__size_ = v103 - &v125.__r_.__value_.__r.__words[2];
                  v124.__r_.__value_.__r.__words[0] = ".pb.txt";
                  v124.__r_.__value_.__l.__size_ = 7;
                  absl::lts_20240722::StrCat(&__dst, v126, &v125, &v124, &v120);
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 751);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__dst, "Dumping solution to '", 0x15uLL);
                  v104 = absl::lts_20240722::log_internal::LogMessage::operator<<(&__dst, &v120);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v104, "'.", 2uLL);
                  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
                  operations_research::sat::CpSolverResponse::CpSolverResponse(&__dst, 0);
                  DWORD2(v131) = 0;
                  if (SHIDWORD(v131) < a3)
                  {
                    google::protobuf::RepeatedField<long long>::Grow(&v131 + 8, 0);
                    v105 = SDWORD2(v131);
                    v106 = v132;
                    DWORD2(v131) = a3;
                    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
                    {
                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    v105 = 0;
                    v106 = v132;
                    DWORD2(v131) = a3;
                    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
                    {
                      goto LABEL_182;
                    }
                  }

                  v107 = &v106->__r_.__value_.__r.__words[v105];
                  v108 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                  if (v108 >= 7 && (v109 = &v106->__r_.__value_.__s.__data_[8 * v105], (v109 - a2) >= 0x20))
                  {
                    v114 = v108 + 1;
                    v115 = (v108 + 1) & 0x3FFFFFFFFFFFFFFCLL;
                    v107 += v115;
                    v110 = &a2[8 * v115];
                    v116 = (a2 + 16);
                    v117 = v109 + 16;
                    v118 = v115;
                    do
                    {
                      v119 = *v116;
                      *(v117 - 1) = *(v116 - 1);
                      *v117 = v119;
                      v116 += 2;
                      v117 += 2;
                      v118 -= 4;
                    }

                    while (v118);
                    if (v114 == v115)
                    {
LABEL_182:
                      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v112 = &v120;
                      }

                      else
                      {
                        v112 = v120.__r_.__value_.__r.__words[0];
                      }

                      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v113 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v113 = v120.__r_.__value_.__l.__size_;
                      }

                      file::SetTextProto(v112, v113, 47802, v126);
                      if (v126[0] != 1)
                      {
                        absl::lts_20240722::status_internal::MakeCheckFailString();
                      }

                      operations_research::sat::CpSolverResponse::~CpSolverResponse(&__dst);
                      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v120.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_171;
                    }
                  }

                  else
                  {
                    v110 = a2;
                  }

                  do
                  {
                    v111 = *v110;
                    v110 += 8;
                    *v107++ = v111;
                  }

                  while (v110 != &a2[8 * a3]);
                  goto LABEL_182;
                }
              }

              else if ((v128 & 0x80000000) == 0)
              {
                goto LABEL_137;
              }

              operator delete(v126[0]);
              if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_163;
              }

              goto LABEL_141;
            }

            v71 = *(a1 + 608);
            if (*v71 != 1)
            {
              goto LABEL_163;
            }

            v72 = *(a1 + 232);
            v120.__r_.__value_.__r.__words[2] = 0x1600000000000000;
            *&v120.__r_.__value_.__l.__data_ = 0uLL;
            v73 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v72, &v120, v15);
            v74 = std::string::erase(&v120, v73 - &v120, 0xFFFFFFFFFFFFFFFFLL);
            v75 = *(a1 + 8);
            if (*v75 == 1)
            {
              v76 = absl::lts_20240722::GetCurrentTimeNanos(v74) - *(v75 + 8) + *(v75 + 16);
            }

            else
            {
              v76 = *(v75 + 16);
            }

            __dst = &v120;
            v130 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
            *&v131 = v76 * 0.000000001;
            *(&v131 + 1) = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
            v132 = &v124;
            v133 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
            absl::lts_20240722::str_format_internal::FormatPack("#%-5s %6.2fs %s", 15, &__dst, 3uLL, &v125);
            if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = &v125;
            }

            else
            {
              v93 = v125.__r_.__value_.__r.__words[0];
            }

            if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v94 = v125.__r_.__value_.__l.__size_;
            }

            if (v94 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v94 >= 0x17)
            {
              operator new();
            }

            v128 = v94;
            if (v94)
            {
              memmove(v126, v93, v94);
            }

            *(v126 + v94) = 0;
            operations_research::SolverLogger::LogInfo(v71, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 733, v126);
            if (v128 < 0)
            {
              operator delete(v126[0]);
              if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_157:
                if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_163;
                }

LABEL_161:
                v92 = v120.__r_.__value_.__r.__words[0];
                goto LABEL_162;
              }
            }

            else if ((SHIBYTE(v125.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_157;
            }

            operator delete(v125.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_161;
          }

          operations_research::sat::SharedResponseManager::GetResponseInternal(a1, a2, a3, a4, &__dst);
          v17 = v121[1];
          if (v121[1])
          {
            v17 = *(v121[1] & 0xFFFFFFFFFFFFFFFELL);
            v18 = v130;
            if ((v130 & 1) == 0)
            {
LABEL_35:
              if (v17 != v18)
              {
LABEL_36:
                operations_research::sat::CpSolverResponse::CopyFrom(v121, &__dst);
LABEL_40:
                operations_research::sat::CpSolverResponse::~CpSolverResponse(&__dst);
                operations_research::sat::FillSolveStatsInResponse(a5, v121, v19);
                goto LABEL_41;
              }

LABEL_39:
              operations_research::sat::CpSolverResponse::InternalSwap(v121, &__dst);
              goto LABEL_40;
            }
          }

          else
          {
            v18 = v130;
            if ((v130 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          if (v17 != *(v18 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v12 = *(a1 + 264);
        if (*(*a1 + 284))
        {
          v13 = 2;
          *(a1 + 56) = 2;
          if ((v12 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_29:
          *(a1 + 60) = v13;
          goto LABEL_30;
        }
      }

      v13 = 4;
      *(a1 + 56) = 4;
      if ((v12 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  v11 = operations_research::sat::ComputeInnerObjective(v10, a2);
  if (a3)
  {
    v122 = 0u;
    memset(__p, 0, 28);
    *v121 = 0u;
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long const*,long long const*>(&v121[1], a2, &a2[8 * a3], (8 * a3) >> 3);
    v121[0] = v11;
    std::string::operator=(__p, a4);
    if (*(a1 + 112) >= 1)
    {
      absl::lts_20240722::Mutex::Lock((a1 + 120));
      operations_research::sat::SharedSolutionRepository<long long>::AddInternal(a1 + 88, v121);
      absl::lts_20240722::Mutex::Unlock((a1 + 120));
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v121[1])
    {
      *&v122 = v121[1];
      operator delete(v121[1]);
    }
  }

  if (v11 <= *(a1 + 248))
  {
    *(a1 + 248) = v11 - 1;
    *(a1 + 256) = v11;
    goto LABEL_18;
  }

LABEL_172:
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
  v100 = *MEMORY[0x277D85DE8];
}

void sub_23CD0A780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&a69);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::CpSolverResponse::~CpSolverResponse(&a16);
  absl::lts_20240722::Mutex::Unlock((v69 + 32));
  _Unwind_Resume(a1);
}

void operations_research::sat::SharedResponseManager::RegisterSolutionFound(unsigned __int8 **a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    operations_research::sat::ExtractSubSolverName(a2, &__p);
    v6[0] = &__p;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 64, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v6, &v7);
    ++*(v7.__r_.__value_.__r.__words[0] + 32 * v7.__r_.__value_.__s.__data_[8] + 40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    v8 = a3;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::pair<std::string const,int>&>(a1 + 67, &v7.__r_.__value_.__l.__data_, &v7, v6);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v6[0] = &__p;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 70, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v6, &v7);
    *(v7.__r_.__value_.__r.__words[0] + 32 * v7.__r_.__value_.__s.__data_[8] + 40) = a3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CD0AAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((a25 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::SharedResponseManager::ProblemIsSolved(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 4);
  v2 = *(this + 15);
  absl::lts_20240722::Mutex::Unlock((this + 4));
  return (v2 - 3) < 2;
}

void operations_research::sat::ExtractSubSolverName(const std::string::value_type **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 23);
  v4 = *(a1 + 23) < 0;
  v5 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  if (!v5)
  {
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  v7 = 0;
  v8 = 1;
  v9 = MEMORY[0x277D85DE0];
  do
  {
    if (v4)
    {
      v12 = *a1;
    }

    else
    {
      v12 = a1;
    }

    v13 = v12[v7];
    if ((v13 & 0x80000000) != 0)
    {
      v14 = __maskrune(v13, 0x500uLL);
      v3 = *(a1 + 23);
      if (v14)
      {
LABEL_5:
        v10 = a1[1];
        goto LABEL_6;
      }
    }

    else if ((*(v9 + 4 * v13 + 60) & 0x500) != 0)
    {
      goto LABEL_5;
    }

    v10 = a1[1];
    if ((v3 & 0x80u) == 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v15[v7] != 95)
    {
      if ((v3 & 0x80u) != 0)
      {
        v3 = a1[1];
      }

      if (v3 >= v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = v3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      *(&a2->__r_.__value_.__s + 23) = v16;
      if (v16)
      {
        memmove(a2, v15, v16);
      }

      a2->__r_.__value_.__s.__data_[v16] = 0;
      return;
    }

LABEL_6:
    v7 = v8;
    v4 = (v3 & 0x80u) != 0;
    if ((v3 & 0x80u) == 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = v10;
    }

    ++v8;
  }

  while (v11 > v7);
  if (v3 < 0)
  {
    v17 = *a1;

    std::string::__init_copy_ctor_external(a2, v17, v10);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = a1[2];
  }
}

void operations_research::sat::SharedResponseManager::DisplayImprovementStatistics(atomic_ullong *this)
{
  v23 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this + 4);
  if (this[66])
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    p_dst = "Solutions (";
    v14 = 11;
    v3 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 58), v22, v2);
    v21[0] = v22;
    v21[1] = v3 - v22;
    v15[0] = ")";
    v15[1] = 1;
    absl::lts_20240722::StrCat(&p_dst, v21, v15, &__dst);
    v18 = 3;
    LODWORD(v17) = 7173454;
    v20 = 4;
    strcpy(&v19, "Rank");
    v5[1] = 0;
    v6 = 0;
    v5[0] = 0;
    v9 = v5;
    v10 = 0;
    operator new();
  }

  if (this[75])
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    memset(&__dst, 0, sizeof(__dst));
    p_dst = &__dst;
    LOBYTE(v14) = 0;
    operator new();
  }

  absl::lts_20240722::Mutex::Unlock((this + 4));
  v4 = *MEMORY[0x277D85DE8];
}

void sub_23CD0BF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 217) < 0)
  {
    operator delete(*(v59 - 240));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::string>>::~vector[abi:ne200100](&a23);
  absl::lts_20240722::Mutex::Unlock((a12 + 32));
  _Unwind_Resume(a1);
}

operations_research::sat::SharedBoundsManager *operations_research::sat::SharedBoundsManager::SharedBoundsManager(operations_research::sat::SharedBoundsManager *this, const operations_research::sat::CpModelProto *a2)
{
  v4 = *(a2 + 8);
  *this = v4;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 184) = 0u;
  *(this + 29) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 30) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  operations_research::SparseBitset<int>::ClearAndResize(this + 72, 0);
  v5 = *this;
  if (v5 >= 1)
  {
    v6 = *(a2 + 3);
    v7 = *(this + 3);
    v8 = *(this + 6);
    v9 = *(this + 17);
    v10 = *(this + 20);
    if (v6)
    {
      v22 = (v6 + 7);
      do
      {
        v23 = *v22++;
        v24 = *(v23 + 24);
        *v7 = *v24;
        *v8 = v24[*(v23 + 16) - 1];
        v25 = *v7++;
        *v9++ = v25;
        v26 = *v8++;
        *v10++ = v26;
        --v5;
      }

      while (v5);
    }

    else
    {
      v11 = *(v6 + 24);
      v12 = *(v6 + 16) - 1;
      v13 = &v11[v12];
      if (v5 < 0x22)
      {
        v14 = 0;
LABEL_8:
        v15 = &v7[v14];
        v16 = &v8[v14];
        v17 = &v9[v14];
        v18 = &v10[v14];
        v19 = v5 - v14;
        do
        {
          *v15 = *v11;
          *v16 = *v13;
          v20 = *v15++;
          *v17++ = v20;
          v21 = *v16++;
          *v18++ = v21;
          --v19;
        }

        while (v19);
        return this;
      }

      v14 = 0;
      v28 = &v7[v5];
      v29 = &v8[v5];
      v30 = &v9[v5];
      v31 = &v10[v5];
      v32 = v11 + 1;
      v33 = &v11[v12 + 1];
      v35 = v7 < v30 && v9 < v28;
      v37 = v7 < v31 && v10 < v28;
      v39 = v7 < v33 && v13 < v28;
      v41 = v7 < v32 && v11 < v28;
      v43 = v8 < v30 && v9 < v29;
      v45 = v8 < v31 && v10 < v29;
      v47 = v8 < v33 && v13 < v29;
      v49 = v8 < v32 && v11 < v29;
      v51 = v9 < v31 && v10 < v30;
      v53 = v9 < v33 && v13 < v30;
      v55 = v9 < v32 && v11 < v30;
      v57 = v10 < v33 && v13 < v31;
      v59 = v10 < v32 && v11 < v31;
      if (v8 < v28 && v7 < v29)
      {
        goto LABEL_8;
      }

      if (v35)
      {
        goto LABEL_8;
      }

      if (v37)
      {
        goto LABEL_8;
      }

      if (v39)
      {
        goto LABEL_8;
      }

      if (v41)
      {
        goto LABEL_8;
      }

      if (v43)
      {
        goto LABEL_8;
      }

      if (v45)
      {
        goto LABEL_8;
      }

      if (v47)
      {
        goto LABEL_8;
      }

      if (v49)
      {
        goto LABEL_8;
      }

      if (v51)
      {
        goto LABEL_8;
      }

      if (v53)
      {
        goto LABEL_8;
      }

      if (v55)
      {
        goto LABEL_8;
      }

      if (v57)
      {
        goto LABEL_8;
      }

      if (v59)
      {
        goto LABEL_8;
      }

      v14 = v5 & 0x7FFFFFFE;
      v61 = vld1q_dup_f64(v11);
      v62 = v14;
      v63 = vld1q_dup_f64(v13);
      v64 = *(this + 20);
      v65 = *(this + 17);
      v66 = *(this + 6);
      v67 = *(this + 3);
      do
      {
        *v67++ = v61;
        *v66++ = v63;
        *v65++ = v61;
        *v64++ = v63;
        v62 -= 2;
      }

      while (v62);
      if (v14 != v5)
      {
        goto LABEL_8;
      }
    }
  }

  return this;
}

void sub_23CD0C66C(_Unwind_Exception *a1)
{
  v9 = *v7;
  if (*v7)
  {
    *v6 = v9;
    operator delete(v9);
  }

  v10 = v1[17];
  if (v10)
  {
    v1[18] = v10;
    operator delete(v10);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v3);
  v11 = *v5;
  if (*v5)
  {
    *v4 = v11;
    operator delete(v11);
    v12 = v1[3];
    if (!v12)
    {
LABEL_7:
      absl::lts_20240722::Mutex::~Mutex(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = v1[3];
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v1[4] = v12;
  operator delete(v12);
  absl::lts_20240722::Mutex::~Mutex(v2);
  _Unwind_Resume(a1);
}

void operations_research::SparseBitset<int>::ClearAndResize(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (300 * ((v4 - v3) >> 2) >= a2)
  {
    v15 = a2 & ~(a2 >> 31);
    *a1 = v15;
    v17 = (a1 + 8);
    v16 = *(a1 + 8);
    v18 = (v15 + 63) >> 6;
    v19 = *(a1 + 16) - v16;
    v20 = v19 >> 3;
    v24 = 0;
    if (v18 <= v19 >> 3)
    {
      if (v18 < v19 >> 3)
      {
        *(a1 + 16) = &v16[8 * v18];
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 8, v18 - (v19 >> 3), &v24);
      v16 = *v17;
    }

    if (v20 >= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v20;
    }

    bzero(v16, 8 * v23);
    *(a1 + 40) = *(a1 + 32);
  }

  else
  {
    if (v3 != v4)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 32);
      if (v4 - 1 == v3)
      {
        goto LABEL_27;
      }

      v7 = (((v4 - 1) - v3) >> 2) + 1;
      v6 = &v3[v7 & 0x7FFFFFFFFFFFFFFELL];
      v8 = v3 + 1;
      v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v10 = (*v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v5 + ((*(v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v5 + v10) = 0;
        v8 += 2;
        v9 -= 2;
      }

      while (v9);
      if (v7 != (v7 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_27:
        do
        {
          v11 = *v6++;
          *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v6 != v4);
      }
    }

    *(a1 + 40) = v3;
    v12 = a2 & ~(a2 >> 31);
    if (a2 < 1 || v12 >= *a1)
    {
      v13 = *(a1 + 8);
    }

    else
    {
      v13 = *(a1 + 8);
      v14 = v13 + 8 * ((a2 + 63) >> 6);
      *(v14 - 8) &= ~(-2 << (a2 + 63));
    }

    *a1 = v12;
    v21 = (v12 + 63) >> 6;
    v24 = 0;
    v22 = (*(a1 + 16) - v13) >> 3;
    if (v21 <= v22)
    {
      if (v21 < v22)
      {
        *(a1 + 16) = v13 + 8 * v21;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 8, v21 - v22, &v24);
    }
  }
}

void **std::deque<operations_research::SparseBitset<int>>::~deque[abi:ne200100](void **a1)
{
  std::deque<operations_research::SparseBitset<int>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    do
    {
      --v3;
    }

    while (v3 != v2);
    a1[2] = v3;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::SharedBoundsManager::ReportPotentialNewBounds(int *a1, __int128 *a2, uint64_t *a3, void *a4, void *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = (a3[1] - *a3) >> 2;
  v8 = (a4[1] - *a4) >> 3;
  if (v7 != v8)
  {
    operations_research::sat::SharedBoundsManager::ReportPotentialNewBounds(v7, v8);
  }

  v9 = (a5[1] - *a5) >> 3;
  if (v7 != v9)
  {
    operations_research::sat::SharedBoundsManager::ReportPotentialNewBounds(v7, v9);
  }

  absl::lts_20240722::Mutex::Lock(a1 + 2);
  v13 = *a3;
  v12 = a3[1];
  if (v12 != *a3)
  {
    v14 = 0;
    v52 = 0;
    v15 = 1;
    v16 = a5;
    do
    {
      v19 = *(v13 + 4 * v14);
      if (v19 < *a1)
      {
        v20 = *(*(a1 + 3) + 8 * v19);
        v21 = *(*(a1 + 6) + 8 * v19);
        v22 = *(*a4 + 8 * v14);
        v23 = *(*v16 + 8 * v14);
        if (v22 > v20 || v23 < v21)
        {
          if (dword_2810C0CA0 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&_MergedGlobals_30, dword_2810C0CA0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&v54, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 867);
            v25 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v54, 3);
            v46 = absl::lts_20240722::log_internal::LogMessage::operator<<(v25, a2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v46, " var=", 5uLL);
            LODWORD(v63) = v19;
            v47 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v46, &v63);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v47, " [", 2uLL);
            v63 = v20;
            v48 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v47, &v63);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v48, ",", 1uLL);
            v63 = v21;
            v49 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v48, &v63);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, "] -> [", 6uLL);
            v63 = v22;
            v50 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v49, &v63);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v50, ",", 1uLL);
            v63 = v23;
            v26 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v50, &v63);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, "]", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v54);
          }

          if (v22 > v20)
          {
            *(*(a1 + 3) + 8 * v19) = v22;
          }

          v16 = a5;
          if (v23 < v21)
          {
            *(*(a1 + 6) + 8 * v19) = v23;
          }

          LODWORD(v54) = v19;
          v17 = *(a1 + 10);
          v18 = *(v17 + 8 * (v19 >> 6));
          if ((v18 & (1 << v19)) == 0)
          {
            *(v17 + 8 * (v19 >> 6)) = v18 | (1 << v19);
            std::vector<int>::push_back[abi:ne200100]((a1 + 26), &v54);
            v16 = a5;
          }

          ++v52;
          v13 = *a3;
          v12 = a3[1];
        }
      }

      v14 = v15++;
    }

    while (v14 < (v12 - v13) >> 2);
    v27 = v52;
    if (v52 > 0)
    {
      *(a1 + 16) += v52;
      if (dword_2810C0CB8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0CB0, dword_2810C0CB8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v54, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 887);
        v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v54, 3);
        v63 = *(a1 + 16);
        v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v30, &v63);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "/", 1uLL);
        LODWORD(v63) = *a1;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v31, &v63);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v54);
        v27 = v52;
      }

      v63 = a2;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 29, a2, &std::piecewise_construct, &v63, &v54);
      *&v54[32 * v55 + 40] += v27;
      explicit = atomic_load_explicit(&qword_281A219D8, memory_order_acquire);
      if (explicit)
      {
        if ((explicit & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_tightened_models))
      {
        goto LABEL_26;
      }

      operations_research::sat::CpModelProto::CpModelProto(&v54, 0, *(a1 + 1));
      if (*a1 >= 1)
      {
        v34 = 0;
        v35 = 8;
        do
        {
          if (v56)
          {
            v36 = (v56 + v35 - 1);
          }

          else
          {
            v36 = &v56;
          }

          v37 = *v36;
          operations_research::Domain::FromFlatSpanOfIntervals(*(*v36 + 24), *(*v36 + 16), &v61, v33);
          operations_research::Domain::Domain(&v58, *(*(a1 + 3) + 8 * v34), *(*(a1 + 6) + 8 * v34));
          operations_research::Domain::IntersectionWith(&v61, &v58, &v63);
          if (v58)
          {
            operator delete(v59);
          }

          if (v61)
          {
            operator delete(v62);
          }

          operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(&v63, v37);
          if (v63)
          {
            operator delete(v64);
          }

          ++v34;
          v35 += 8;
        }

        while (v34 < *a1);
      }

      v38 = (a1 + 70);
      v39 = *(a1 + 303);
      if (v39 < 0)
      {
        v38 = *(a1 + 35);
        v39 = *(a1 + 36);
      }

      v63 = v38;
      v64 = v39;
      v61 = "tighened_model_";
      v62 = 15;
      v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a1[76], v60, v32);
      v58 = v60;
      v59 = (v40 - v60);
      v57[0] = ".pb.txt";
      v57[1] = 7;
      absl::lts_20240722::StrCat(&v63, &v61, &v58, v57, &__p);
      v41 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v63, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 900);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v41, "Dumping tightened model proto to '", 0x22uLL);
      v42 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v63, &__p);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, "'.", 2uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v63);
      ++a1[76];
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

      if (!operations_research::sat::WriteModelProtoToFile<operations_research::sat::CpModelProto>(&v54, p_p, size))
      {
        v45 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v63, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 902);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v45);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      operations_research::sat::CpModelProto::~CpModelProto(&v54);
    }
  }

LABEL_26:
  absl::lts_20240722::Mutex::Unlock((a1 + 4));
  v29 = *MEMORY[0x277D85DE8];
}

void operations_research::sat::SharedBoundsManager::FixVariablesFromPartialSolution(atomic_ullong *a1, uint64_t *a2, int **a3)
{
  absl::lts_20240722::Mutex::Lock(a1 + 2);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = *a3;
    while (1)
    {
      v9 = *v8;
      v10 = *(*a2 + 8 * *v8);
      if (v10 < *(a1[3] + 8 * *v8) || v10 > *(a1[6] + 8 * v9))
      {
        break;
      }

      if (++v8 == v7)
      {
        do
        {
          v11 = *v6;
          v12 = a1[3];
          v13 = a1[6];
          v14 = *a2;
          v15 = *(*a2 + 8 * *v6);
          if (v15 > *(v12 + 8 * *v6) || v15 < *(v13 + 8 * *v6))
          {
            *(v12 + 8 * v11) = v15;
            *(v13 + 8 * v11) = *(v14 + 8 * v11);
            v26[0] = v11;
            v17 = v11 >> 6;
            v18 = a1[10];
            v19 = *(v18 + 8 * v17);
            v20 = 1 << v11;
            if ((v19 & v20) == 0)
            {
              *(v18 + 8 * v17) = v19 | v20;
              std::vector<int>::push_back[abi:ne200100]((a1 + 13), v26);
            }
          }

          ++v6;
        }

        while (v6 != v7);
        goto LABEL_16;
      }
    }

    if (dword_27E25D3B8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SharedBoundsManager::FixVariablesFromPartialSolution(std::vector<long long> const&,std::vector<int> const&)::$_0::operator() const(void)::site, dword_27E25D3B8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v26, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.cc", 922);
      v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v26, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Incompatibility in FixVariablesFromPartialSolution() ", 0x35uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "var: ", 5uLL);
      LODWORD(v27) = v9;
      v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v21, &v27);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, " value: ", 8uLL);
      v27 = v10;
      v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v22, &v27);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " bounds: [", 0xAuLL);
      v27 = *(a1[3] + 8 * v9);
      v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v23, &v27);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, ",", 1uLL);
      v27 = *(a1[6] + 8 * v9);
      v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v24, &v27);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v26);
    }
  }

LABEL_16:
  absl::lts_20240722::Mutex::Unlock((a1 + 2));
}

void operations_research::sat::SharedBoundsManager::Synchronize(operations_research::sat::SharedBoundsManager *this)
{
  absl::lts_20240722::Mutex::Lock(this + 2);
  v2 = *(this + 13);
  v3 = *(this + 14);
  if (v2 != v3)
  {
    v4 = *(this + 28);
    if (v4)
    {
      v5 = 1;
      v31 = *(this + 14);
      do
      {
        v32 = v2;
        v6 = *v2;
        *(*(this + 17) + 8 * v6) = *(*(this + 3) + 8 * v6);
        *(*(this + 20) + 8 * v6) = *(*(this + 6) + 8 * v6);
        if (v5)
        {
          v7 = 0;
          v8 = v6 >> 6;
          v9 = 1;
          v10 = 1 << v6;
          do
          {
            v12 = (*(*(this + 24) + 8 * ((*(this + 27) + v7) / 0x49)) + 56 * ((*(this + 27) + v7) % 0x49));
            v13 = v12[1];
            v14 = *(v13 + 8 * v8);
            if ((v14 & v10) == 0)
            {
              *(v13 + 8 * v8) = v14 | v10;
              v16 = v12[5];
              v15 = v12[6];
              if (v16 < v15)
              {
                *v16 = v6;
                v11 = v16 + 4;
              }

              else
              {
                v17 = v12[4];
                v18 = v16 - v17;
                v19 = (v16 - v17) >> 2;
                v20 = v19 + 1;
                if ((v19 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v21 = v15 - v17;
                if (v21 >> 1 > v20)
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

                v23 = (v16 - v17) >> 2;
                v24 = (4 * v19);
                v25 = (4 * v19 - 4 * v23);
                *v24 = v6;
                v11 = v24 + 1;
                memcpy(v25, v17, v18);
                v12[4] = v25;
                v12[5] = v11;
                v12[6] = 0;
                if (v17)
                {
                  operator delete(v17);
                }
              }

              v12[5] = v11;
              v4 = *(this + 28);
            }

            v7 = v9++;
            v5 = v4;
          }

          while (v4 > v7);
        }

        v2 = v32 + 1;
      }

      while (v32 + 1 != v31);
    }

    else
    {
      v26 = *(this + 3);
      v27 = *(this + 17);
      v28 = *(this + 6);
      v29 = *(this + 20);
      do
      {
        v30 = *v2++;
        *(v27 + 8 * v30) = *(v26 + 8 * v30);
        *(v29 + 8 * v30) = *(v28 + 8 * v30);
      }

      while (v2 != v3);
    }
  }

  bzero(*(this + 10), *(this + 11) - *(this + 10));
  *(this + 14) = *(this + 13);
  absl::lts_20240722::Mutex::Unlock((this + 16));
}

unint64_t operations_research::sat::SharedBoundsManager::RegisterNewId(atomic_ullong *this)
{
  absl::lts_20240722::Mutex::Lock(this + 2);
  v2 = this[28];
  v3 = (v2 << 32) + 0x100000000;
  if (v3 >> 32 > v2)
  {
    std::deque<operations_research::SparseBitset<int>>::__append(this + 23, (v3 >> 32) - v2);
    goto LABEL_12;
  }

  if (v3 >> 32 < v2)
  {
    v4 = this[27];
    v5 = this[24];
    v6 = (v5 + 8 * (v4 / 0x49));
    if (this[25] == v5)
    {
      v7 = 0;
      if (v2 << 32 == 0xFFFFFFFF00000000)
      {
LABEL_11:
        std::deque<operations_research::SparseBitset<int>>::__erase_to_end(this + 23, v6, v7);
        goto LABEL_12;
      }
    }

    else
    {
      v7 = (*v6 + 56 * (v4 % 0x49));
      if (v2 << 32 == 0xFFFFFFFF00000000)
      {
        goto LABEL_11;
      }
    }

    v8 = (v3 >> 32) + 0x6DB6DB6DB6DB6DB7 * ((v7 - *v6) >> 3);
    if (v8 < 1)
    {
      v9 = 72 - v8;
      v6 -= v9 / 0x49;
      v7 = (*v6 + 56 * (73 * (v9 / 0x49) - v9) + 4032);
    }

    else
    {
      v6 += v8 / 0x49uLL;
      v7 = (*v6 + 56 * (v8 % 0x49uLL));
    }

    goto LABEL_11;
  }

LABEL_12:
  operations_research::SparseBitset<int>::ClearAndResize(*(this[24] + 8 * ((this[27] + v2) / 0x49uLL)) + 56 * ((this[27] + v2) % 0x49uLL), *this);
  v10 = *this;
  if (*this >= 1)
  {
    v11 = 0;
    v12 = 8;
    do
    {
      v16 = this[1];
      v18 = *(v16 + 24);
      v17 = v16 + 24;
      v19 = v18 + v12 - 1;
      if (v18)
      {
        v17 = v19;
      }

      v20 = *v17;
      v21 = *(*v17 + 24);
      if (*v21 != *(this[17] + 8 * v11) || v21[*(v20 + 16) - 1] != *(this[20] + 8 * v11))
      {
        v13 = *(this[24] + 8 * ((this[27] + v2) / 0x49uLL)) + 56 * ((this[27] + v2) % 0x49uLL);
        v23 = v11;
        v14 = *(v13 + 8);
        v15 = *(v14 + 8 * (v11 >> 6));
        if ((v15 & (1 << v11)) == 0)
        {
          *(v14 + 8 * (v11 >> 6)) = v15 | (1 << v11);
          std::vector<int>::push_back[abi:ne200100](v13 + 32, &v23);
          v10 = *this;
        }
      }

      ++v11;
      v12 += 8;
    }

    while (v11 < v10);
  }

  absl::lts_20240722::Mutex::Unlock((this + 2));
  return v2;
}

void operations_research::sat::SharedBoundsManager::GetChangedBounds(atomic_ullong *a1, int a2, int **a3, void *a4, void *a5)
{
  a3[1] = *a3;
  a4[1] = *a4;
  a5[1] = *a5;
  absl::lts_20240722::Mutex::Lock(a1 + 2);
  v10 = a1[27] + a2;
  v11 = a1[24];
  v12 = v10 / 0x49;
  v13 = *(v11 + 8 * (v10 / 0x49));
  v14 = v10 % 0x49;
  v15 = v13 + 56 * v14;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);
  if (v16 != v17)
  {
    do
    {
      v25 = *v16;
      std::vector<int>::push_back[abi:ne200100](a3, &v25);
      ++v16;
    }

    while (v16 != v17);
    v11 = a1[24];
    v18 = a1[27] + a2;
    v12 = v18 / 0x49;
    v14 = v18 % 0x49;
  }

  v19 = *(v11 + 8 * v12) + 56 * v14;
  bzero(*(v19 + 8), *(v19 + 16) - *(v19 + 8));
  *(v19 + 40) = *(v19 + 32);
  v20 = *a3;
  v21 = a3[1];
  std::__sort<std::__less<int,int> &,int *>();
  v23 = *a3;
  for (i = a3[1]; v23 != i; ++v23)
  {
    v24 = *v23;
    std::vector<long long>::push_back[abi:ne200100](a4, (a1[17] + 8 * v24));
    std::vector<long long>::push_back[abi:ne200100](a5, (a1[20] + 8 * v24));
  }

  absl::lts_20240722::Mutex::Unlock((a1 + 2));
}

void operations_research::sat::SharedBoundsManager::UpdateDomains(atomic_ullong *a1, uint64_t *a2)
{
  absl::lts_20240722::Mutex::Lock(a1 + 2);
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v7 = (a1[18] - a1[17]) >> 3;
  if (v6 != v7)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(v6, v7, "domains->size() == synchronized_lower_bounds_.size()");
  }

  if (v4 != v5)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      operations_research::Domain::Domain(v11, *(a1[17] + 8 * v8), *(a1[20] + 8 * v8));
      operations_research::Domain::IntersectionWith((v5 + 24 * v8), v11, &v12);
      v10 = *a2 + 24 * v8;
      if (v10 == &v12)
      {
        if (v12)
        {
          operator delete(v13);
        }
      }

      else
      {
        if (*v10)
        {
          operator delete(*(v10 + 8));
        }

        *v10 = v12;
        *(v10 + 8) = v13;
        v12 = 0;
      }

      if (v11[0])
      {
        operator delete(v11[1]);
      }

      v8 = v9;
      v5 = *a2;
      ++v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v8);
  }

  absl::lts_20240722::Mutex::Unlock((a1 + 2));
}

void operations_research::sat::SharedBoundsManager::LogStatistics(atomic_ullong *this, operations_research::SolverLogger *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this + 2);
  if (this[31])
  {
    operator new();
  }

  absl::lts_20240722::Mutex::Unlock((this + 2));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23CD0E328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::string>>::~vector[abi:ne200100](&a17);
  absl::lts_20240722::Mutex::Unlock((a11 + 16));
  _Unwind_Resume(a1);
}