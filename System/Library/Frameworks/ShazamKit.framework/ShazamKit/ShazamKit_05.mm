void sub_230FCC988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a36)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&a31);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

double shazam::matrix_for<(AlgoType)1,(void *)0>@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  shazam::algo<(AlgoType)1>::matrix_for (*a1, a3);
  result = fabs(*(a1 + 4) + -1.0);
  if (result > 0.01)
  {
    *&v7 = *(a1 + 4) * shazam::targetFP(a3, a2);
    shazam::reframe_matrix(a3, *&v7, a2, v10, v7, v8);
    result = *v10;
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
    *(a3 + 32) = v11;
  }

  return result;
}

void shazam::link_bands<(AlgoType)12>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, float *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __p[240] = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(v72, a5);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  shazam::matrix_for<(AlgoType)12,(void *)0>(a4, a3, &v76);
  shazam::algo<(AlgoType)12>::tzones_for (v74);
  v9 = a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v58 = a6;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v79, 0x64uLL);
    v11 = *a2;
    v10 = a2[1];
    if (v10 != *a2)
    {
      v12 = 0;
      do
      {
        v13 = *(&v76 + v12 + 2);
        if (v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14(__p, v11 + 24 * v12);
            shazam::chooseAnchors(__p, *(&v76 + v12 + 2), &v76, &v79);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            shazam::chooseAnchors((v11 + 24 * v12), v13, &v76, &v79);
          }

          v11 = *v9;
          v10 = v9[1];
          if (v10 != *v9)
          {
            v15 = 0;
            v59 = 4 * v12;
            v62 = &v77 + 4 * v12 + 8;
            v60 = v12;
            do
            {
              v64 = v15;
              v70 = v62[v15];
              if (v62[v15])
              {
                if (v75 == 1)
                {
                  v16 = v15;
                  LODWORD(__p[0]) = v59 + v15;
                  if (std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v74, __p))
                  {
                    v17 = std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v74, __p);
                    if (!v17)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v68 = *(v17 + 20);
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v11 = *v9;
                  v70 = v62[v64];
                }

                else
                {
                  v68 = 0;
                  v16 = v15;
                }

                v67 = (v11 + 24 * v16);
                v18 = *v67;
                bzero(__p, 0x780uLL);
                v19 = v79;
                v66 = v80;
                if (v79 != v80)
                {
                  if (HIDWORD(v68))
                  {
                    v20 = v68 == 0;
                  }

                  else
                  {
                    v20 = 1;
                  }

                  v21 = v20;
                  v65 = v21;
                  do
                  {
                    v22 = *v19 + 8;
                    if (v65)
                    {
                      v23 = *v19 + 197;
                    }

                    else
                    {
                      v22 = *v19 + v68;
                      v23 = v22 + HIDWORD(v68);
                    }

                    v24 = v67[1];
                    if (v24 == v18)
                    {
                      v18 = v67[1];
                      v31 = v18;
                    }

                    else
                    {
                      v25 = (v24 - v18) >> 3;
                      do
                      {
                        v26 = v25 >> 1;
                        v27 = &v18[8 * (v25 >> 1)];
                        v29 = *v27;
                        v28 = (v27 + 2);
                        v25 += ~(v25 >> 1);
                        if (v29 < v22)
                        {
                          v18 = v28;
                        }

                        else
                        {
                          v25 = v26;
                        }
                      }

                      while (v25);
                      if (v24 == v18)
                      {
                        v31 = v67[1];
                      }

                      else
                      {
                        v30 = (v24 - v18) >> 3;
                        v31 = v18;
                        do
                        {
                          v32 = v30 >> 1;
                          v33 = (v31 + 8 * (v30 >> 1));
                          v35 = *v33;
                          v34 = v33 + 2;
                          v30 += ~(v30 >> 1);
                          if (v35 < v23)
                          {
                            v31 = v34;
                          }

                          else
                          {
                            v30 = v32;
                          }
                        }

                        while (v30);
                      }

                      v24 = v18;
                    }

                    v36 = (v31 - v24) >> 3;
                    gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,0>(&v82, v18, v31);
                    if (v36 <= v70)
                    {
                      v36 = v82;
                      v37 = v83;
                    }

                    else
                    {
                      if (v31 != v24)
                      {
                        memmove(__p, v18, v31 - v24);
                      }

                      v37 = __p;
                      v38 = 126 - 2 * __clz(v36);
                      if (v31 == v24)
                      {
                        v39 = 0;
                      }

                      else
                      {
                        v39 = v38;
                      }

                      v40 = std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(__p, &__p[v36], v39, 1);
                      if (v31 - v24 == -8)
                      {
LABEL_86:
                        gsl::details::terminate(v40);
                      }
                    }

                    v69 = v19;
                    v41 = *v19;
                    v42 = WORD2(*v19);
                    v43 = 0;
                    v44 = shazam::FreqLogTable::at(WORD2(*v19));
                    v45 = &v37[v36];
                    v82 = v37;
                    v83 = v45;
                    v84 = v37;
                    LODWORD(v46) = 2 * (((v44 + -3.46573591) * 3103.75977) & 0x3FFF);
                    v71 = v41 << 32;
                    while (v84 != v45)
                    {
                      v47 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v82);
                      v46 = v46 & 0x7FFF | ((((v44 - shazam::FreqLogTable::at(*(v47 + 2))) * 151.569275) & 0x3FFu) << 15) | (((sqrtf(((v42 * 7.8125) * 0.015625) * (*v47 - v41)) / 830.36) * 120.0) << 25);
                      v48 = v42 - *(v47 + 2);
                      if (v48 < 0)
                      {
                        v48 = *(v47 + 2) - v42;
                      }

                      if (v48 >= 0x101)
                      {
                        v49 = v72[1];
                        if (v72[1] >= v73)
                        {
                          v51 = (v72[1] - v72[0]) >> 3;
                          if ((v51 + 1) >> 61)
                          {
                            std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
                          }

                          v52 = (v73 - v72[0]) >> 2;
                          if (v52 <= v51 + 1)
                          {
                            v52 = v51 + 1;
                          }

                          if (v73 - v72[0] >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v53 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v53 = v52;
                          }

                          if (v53)
                          {
                            std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(v72, v53);
                          }

                          v54 = (8 * v51);
                          *v54 = v71 | v46;
                          v50 = (8 * v51 + 8);
                          v55 = v54 - (v72[1] - v72[0]);
                          memcpy(v55, v72[0], v72[1] - v72[0]);
                          v56 = v72[0];
                          v72[0] = v55;
                          v72[1] = v50;
                          v73 = 0;
                          if (v56)
                          {
                            operator delete(v56);
                          }
                        }

                        else
                        {
                          *v72[1] = v71 | v46;
                          v50 = v49 + 8;
                        }

                        v72[1] = v50;
                        if (v70 == ++v43)
                        {
                          break;
                        }
                      }

                      v40 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v82);
                      if (v82 != v37 || v83 != v45)
                      {
                        goto LABEL_86;
                      }
                    }

                    v19 = v69 + 2;
                  }

                  while (v69 + 2 != v66);
                  v11 = *a2;
                }

                v9 = a2;
                v10 = a2[1];
                v12 = v60;
              }

              v15 = v64 + 1;
            }

            while (v64 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
          }
        }

        ++v12;
      }

      while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
    }

    a6 = v58;
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }
  }

  if (v75 == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v74);
  }

  *a6 = *v72;
  *(a6 + 16) = v73;
  v57 = *MEMORY[0x277D85DE8];
}

void sub_230FCD104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a36)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&a31);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

double shazam::matrix_for<(AlgoType)12,(void *)0>@<D0>(float *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a1;
  shazam::algo<(AlgoType)12>::matrix_for (a3);
  result = fabs(a1[1] + -1.0);
  if (result > 0.01)
  {
    *&v8 = a1[1] * shazam::targetFP(a3, a2);
    shazam::reframe_matrix(a3, *&v8, a2, v11, v8, v9);
    result = *v11;
    v10 = v11[1];
    *a3 = v11[0];
    *(a3 + 16) = v10;
    *(a3 + 32) = v12;
  }

  return result;
}

void shazam::kvsort<gsl::span<shazam::lmfp<(shazam::fp_type)0>,18446744073709551615ul>>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v32 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  if (*v1 >= 2)
  {
    v4 = v2;
    v5 = v1;
    bzero(v31, 0x1000uLL);
    v7 = v5[1];
    v8 = v7 + 8 * v3;
    v28 = v7;
    v29 = v8;
    v30 = v7;
    while (v30 != v8)
    {
      v9 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v28);
      v10 = 0;
      v11 = v31;
      do
      {
        ++*&v11[4 * *(v9 + v10++)];
        v11 += 1024;
      }

      while (v10 != 4);
      v6 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v28);
      if (v28 != v7 || v29 != v8)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = v31;
    do
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *&v14[v15];
        *&v14[v15] = v16;
        v16 += v17;
        v15 += 4;
      }

      while (v15 != 1024);
      ++v13;
      v14 += 1024;
    }

    while (v13 != 4);
    v18 = 0;
    v19 = *v5;
    while (!v19)
    {
LABEL_21:
      v26 = *v5;
      *v5 = *v4;
      *v4 = v26;
      if (++v18 == 4)
      {
        goto LABEL_22;
      }
    }

    v20 = 0;
    v21 = &v31[1024 * v18];
    v22 = v18;
    while (*v5 > v20)
    {
      v23 = v5[1];
      v24 = *(v23 + v22);
      v25 = *&v21[4 * v24];
      *&v21[4 * v24] = v25 + 1;
      if (*v4 <= v25)
      {
        break;
      }

      *(*(v4 + 8) + 8 * v25) = *(v23 + 8 * v20++);
      v22 += 8;
      if (v19 == v20)
      {
        goto LABEL_21;
      }
    }

LABEL_10:
    gsl::details::terminate(v6);
  }

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
}

void std::vector<shazam::SearchPlan>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::SearchPlan>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::SearchPlan>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::vector<char>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<char>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<char>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<char>>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN6shazam12SongDataBaseENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2845C49C0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 0u;
  shazam::SongDataBase::SongDataBase((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<shazam::SongDataBase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2845C49C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x231921F20);
}

void std::__shared_ptr_emplace<shazam::SongDataBase>::__on_zero_shared(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    a1[7] = v6;
    operator delete(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;

    operator delete(v7);
  }
}

shazam::SongDataBase *shazam::SongDataBase::SongDataBase(shazam::SongDataBase *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v4 = 0;
  *(this + 9) = 0;
  v2 = this + 72;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v2, &v4, &v5, 1uLL);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  return this;
}

void shazam::TrackDatabase::~TrackDatabase(shazam::TrackDatabase *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FCD8C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN6shazam16CPUOnePtDatabaseENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2845C4988;
  shazam::CPUOnePtDatabase::CPUOnePtDatabase((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<shazam::CPUOnePtDatabase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2845C4988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x231921F20);
}

shazam::CPUOnePtDatabase *shazam::CPUOnePtDatabase::CPUOnePtDatabase(shazam::CPUOnePtDatabase *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v3 = 0;
  std::vector<unsigned int>::push_back[abi:ne200100](this + 3, &v3);
  return this;
}

void sub_230FCDA84(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  shazam::CPUOnePtDatabase::CPUOnePtDatabase(v1);
  _Unwind_Resume(a1);
}

void std::allocator<shazam::CPUOnePtDatabase>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::vector<shazam::SearchPlan>::__init_with_size[abi:ne200100]<shazam::SearchPlan const*,shazam::SearchPlan const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<shazam::SearchPlan>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FCDB58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void shazam::crop<(shazam::signature_density)16>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize(&v16, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
  v8 = *(a1 + 32);
  if (*(a1 + 40) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,std::vector<shazam::spectral_peak_t>,0>(&v14, (v8 + v9));
      shazam::crop_band<shazam::spectral_peak_t>(v14, *(&v14 + 1), (v16 + v9), a2, a3);
      ++v10;
      v8 = *(a1 + 32);
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v8) >> 3));
  }

  shazam::cropped_info(a1, a2, a3, &v14);
  DWORD2(v15) = shazam::find_last_peak_tick(&v16);
  v13 = 0;
  v12 = 0uLL;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v12, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
  v11 = v15;
  *a4 = v14;
  *(a4 + 16) = v11;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  v12 = 0uLL;
  v13 = 0;
  v19 = &v12;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v19);
  *&v14 = &v16;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_230FCDCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::vector<shazam::peak_tf>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__shared_ptr_emplace<std::vector<shazam::CPULMFPDataBase>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2845C4950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x231921F20);
}

void std::vector<shazam::CPULMFPDataBase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<shazam::CPULMFPDataBase>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<shazam::CPULMFPDataBase>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<shazam::CPULMFPDataBase>>::destroy[abi:ne200100]<shazam::CPULMFPDataBase,0>(a1, i))
  {
    i -= 13;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<shazam::CPULMFPDataBase>>::destroy[abi:ne200100]<shazam::CPULMFPDataBase,0>(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    a2[11] = v3;
    operator delete(v3);
  }

  v4 = a2[7];
  if (v4)
  {
    a2[8] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

uint64_t std::vector<shazam::CPULMFPDataBase>::__emplace_back_slow_path<shazam::SearchPlan &,std::vector<char> &>(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x276276276276276)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v7 = 0x276276276276276;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::CPULMFPDataBase>>(a1, v7);
  }

  v14 = 0;
  v15 = 104 * v3;
  std::allocator<shazam::CPULMFPDataBase>::construct[abi:ne200100]<shazam::CPULMFPDataBase,shazam::SearchPlan &,std::vector<char> &>(a1, (104 * v3), a2, a3);
  v16 = (104 * v3 + 104);
  v8 = a1[1];
  v9 = 104 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<shazam::CPULMFPDataBase>::~__split_buffer(&v14);
  return v13;
}

void sub_230FCE114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<shazam::CPULMFPDataBase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<shazam::CPULMFPDataBase>::construct[abi:ne200100]<shazam::CPULMFPDataBase,shazam::SearchPlan &,std::vector<char> &>(gsl::details *a1, gsl::details *this, uint64_t a3, unint64_t *a4)
{
  v5 = *a4;
  v6 = a4[1];
  if (v6 - v5 == -1 || (!v5 ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    gsl::details::terminate(a1);
  }

  return shazam::CPULMFPDataBase::CPULMFPDataBase(this, a3, v6 - v5, v5);
}

uint64_t shazam::CPULMFPDataBase::CPULMFPDataBase(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  shazam::visit<shazam::CPULMFPDataBase::prefix_strip,gsl::span<char,18446744073709551615ul> &>(*(a2 + 28), &v8, v9, (a1 + 32));
  shazam::visit<shazam::CPULMFPDataBase::landmarks_init,gsl::span<char,18446744073709551615ul> &>(*(a2 + 28), &v8, v9, (a1 + 56));
  shazam::visit<shazam::CPULMFPDataBase::ptable_init,gsl::span<char,18446744073709551615ul> &>(*(a2 + 28), &v8, v9, (a1 + 80));
  return a1;
}

void sub_230FCE1F8(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void shazam::visit<shazam::CPULMFPDataBase::prefix_strip,gsl::span<char,18446744073709551615ul> &>(int a1@<W0>, gsl::details *a2@<X1>, unint64_t *a3@<X2>, std::vector<char> *a4@<X8>)
{
  if (a1 == 12)
  {
    v8 = *a3;
    v7 = a3[1];

    shazam::CPULMFPDataBase::prefix_strip::operator()<(AlgoType)12>(a2, v8, v7, a4);
  }

  else
  {
    if (a1 != 1)
    {
      std::terminate();
    }

    v6 = *a3;
    v5 = a3[1];

    shazam::CPULMFPDataBase::prefix_strip::operator()<(AlgoType)1>(a2, v6, v5, a4);
  }
}

void shazam::visit<shazam::CPULMFPDataBase::landmarks_init,gsl::span<char,18446744073709551615ul> &>(int a1@<W0>, gsl::details *a2@<X1>, unint64_t *a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a1 == 12)
  {
    v8 = *a3;
    v7 = a3[1];

    shazam::CPULMFPDataBase::landmarks_init::operator()<(AlgoType)12>(a2, v8, v7, a4);
  }

  else
  {
    if (a1 != 1)
    {
      std::terminate();
    }

    v6 = *a3;
    v5 = a3[1];

    shazam::CPULMFPDataBase::landmarks_init::operator()<(AlgoType)1>(a2, v6, v5, a4);
  }
}

void shazam::visit<shazam::CPULMFPDataBase::ptable_init,gsl::span<char,18446744073709551615ul> &>(int a1@<W0>, gsl::details *a2@<X1>, unint64_t *a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a1 == 12)
  {
    v8 = *a3;
    v7 = a3[1];

    shazam::CPULMFPDataBase::ptable_init::operator()<(AlgoType)12>(a2, v8, v7, a4);
  }

  else
  {
    if (a1 != 1)
    {
      std::terminate();
    }

    v6 = *a3;
    v5 = a3[1];

    shazam::CPULMFPDataBase::ptable_init::operator()<(AlgoType)1>(a2, v6, v5, a4);
  }
}

void shazam::CPULMFPDataBase::prefix_strip::operator()<(AlgoType)1>(gsl::details *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::vector<char> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::getLMFPSuffixes<(AlgoType)1>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::CPULMFPDataBase::prefix_strip::operator()<(AlgoType)12>(gsl::details *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::vector<char> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::getLMFPSuffixes<(AlgoType)12>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::getLMFPSuffixes<(AlgoType)1>(unint64_t *a1@<X0>, std::vector<char> *a2@<X8>)
{
  __src = 0;
  v12 = 0;
  v13 = 0;
  std::vector<shazam::fp_suffix<(AlgoType)1>>::resize(&__src, *a1);
  v4 = *a1;
  v5 = __src;
  if (*a1)
  {
    v6 = a1[1];
    v7 = __src;
    do
    {
      v8 = *v6;
      v6 += 2;
      *v7++ = v8;
      --v4;
    }

    while (v4);
  }

  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  v9 = v12 - v5;
  if (v12 == v5)
  {
    begin = 0;
  }

  else
  {
    std::vector<char>::__append(a2, v12 - v5);
    begin = a2->__begin_;
    v5 = __src;
  }

  memcpy(begin, v5, v9);
  if (__src)
  {
    v12 = __src;
    operator delete(__src);
  }
}

void sub_230FCE478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<shazam::fp_suffix<(AlgoType)1>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<shazam::fp_suffix<(AlgoType)1>>::__append(a1, a2 - v2);
  }
}

void std::vector<shazam::fp_suffix<(AlgoType)1>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void shazam::getLMFPSuffixes<(AlgoType)12>(unint64_t *a1@<X0>, std::vector<char> *a2@<X8>)
{
  __src = 0;
  v12 = 0;
  v13 = 0;
  std::vector<shazam::fp_suffix<(AlgoType)1>>::resize(&__src, *a1);
  v4 = *a1;
  v5 = __src;
  if (*a1)
  {
    v6 = a1[1];
    v7 = __src;
    do
    {
      v8 = *v6;
      v6 += 2;
      *v7++ = v8;
      --v4;
    }

    while (v4);
  }

  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  v9 = v12 - v5;
  if (v12 == v5)
  {
    begin = 0;
  }

  else
  {
    std::vector<char>::__append(a2, v12 - v5);
    begin = a2->__begin_;
    v5 = __src;
  }

  memcpy(begin, v5, v9);
  if (__src)
  {
    v12 = __src;
    operator delete(__src);
  }
}

void sub_230FCE6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::CPULMFPDataBase::landmarks_init::operator()<(AlgoType)1>(gsl::details *a1@<X0>, unint64_t a2@<X1>, std::vector<unsigned int>::size_type a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::getLandmarks<(AlgoType)1>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::CPULMFPDataBase::landmarks_init::operator()<(AlgoType)12>(gsl::details *a1@<X0>, unint64_t a2@<X1>, std::vector<unsigned int>::size_type a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::getLandmarks<(AlgoType)12>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::getLandmarks<(AlgoType)1>(std::vector<unsigned int>::size_type *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<shazam::signature_header_type>::resize(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    begin = a2->__begin_;
    v6 = (a1[1] + 4);
    do
    {
      v7 = *v6;
      v6 += 2;
      *begin++ = v7;
      --v4;
    }

    while (v4);
  }
}

void sub_230FCE7D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void shazam::getLandmarks<(AlgoType)12>(std::vector<unsigned int>::size_type *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<shazam::signature_header_type>::resize(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    begin = a2->__begin_;
    v6 = (a1[1] + 4);
    do
    {
      v7 = *v6;
      v6 += 2;
      *begin++ = v7;
      --v4;
    }

    while (v4);
  }
}

void sub_230FCE850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void shazam::CPULMFPDataBase::ptable_init::operator()<(AlgoType)1>(gsl::details *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::genPrefixTable<(AlgoType)1>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::CPULMFPDataBase::ptable_init::operator()<(AlgoType)12>(gsl::details *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, std::vector<unsigned int> *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 8 && !a3)
    {
      gsl::details::terminate(a1);
    }

    v4[0] = a2 >> 3;
    v4[1] = a3;
    shazam::genPrefixTable<(AlgoType)12>(v4, a4);
  }

  else
  {
    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
  }
}

void shazam::genPrefixTable<(AlgoType)1>(unint64_t *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<shazam::signature_header_type>::resize(a2, 0x40000uLL);
  v5 = *a1;
  if (!*a1)
  {
    v6 = 0;
    LODWORD(v7) = 0;
LABEL_21:
    v12 = &a2->__begin_[v6];
    v13 = v6 + 1;
    do
    {
      *v12++ = v7;
    }

    while (v13++ != 0x40000);
    return;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (v5 <= v7)
    {
LABEL_25:
      gsl::details::terminate(v4);
    }

    v8 = (a1[1] + 8 * v7);
    begin = a2->__begin_;
    while (v6 <= *v8 >> 14)
    {
      begin[v6++] = v7;
      if (v6 == 0x40000)
      {
        goto LABEL_9;
      }
    }

    v6 = v6;
LABEL_9:
    v10 = v6 >> 18;
    if (v7 < v5)
    {
      v11 = (a1[1] + 8 * v7);
      while (1)
      {
        if (v5 == v7)
        {
          goto LABEL_25;
        }

        if (v6 <= *v11 >> 14)
        {
          break;
        }

        ++v7;
        v11 += 2;
        if (v5 == v7)
        {
          LODWORD(v7) = v5;
          goto LABEL_18;
        }
      }

      v7 = v7;
    }
  }

  while (!v10 && v7 < v5);
LABEL_18:
  if (!v10)
  {
    goto LABEL_21;
  }
}

void sub_230FCEA18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void shazam::genPrefixTable<(AlgoType)12>(unint64_t *a1@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<shazam::signature_header_type>::resize(a2, 0x40000uLL);
  v5 = *a1;
  if (!*a1)
  {
    v6 = 0;
    LODWORD(v7) = 0;
LABEL_21:
    v12 = &a2->__begin_[v6];
    v13 = v6 + 1;
    do
    {
      *v12++ = v7;
    }

    while (v13++ != 0x40000);
    return;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (v5 <= v7)
    {
LABEL_25:
      gsl::details::terminate(v4);
    }

    v8 = (a1[1] + 8 * v7);
    begin = a2->__begin_;
    while (v6 <= *v8 >> 14)
    {
      begin[v6++] = v7;
      if (v6 == 0x40000)
      {
        goto LABEL_9;
      }
    }

    v6 = v6;
LABEL_9:
    v10 = v6 >> 18;
    if (v7 < v5)
    {
      v11 = (a1[1] + 8 * v7);
      while (1)
      {
        if (v5 == v7)
        {
          goto LABEL_25;
        }

        if (v6 <= *v11 >> 14)
        {
          break;
        }

        ++v7;
        v11 += 2;
        if (v5 == v7)
        {
          LODWORD(v7) = v5;
          goto LABEL_18;
        }
      }

      v7 = v7;
    }
  }

  while (!v10 && v7 < v5);
LABEL_18:
  if (!v10)
  {
    goto LABEL_21;
  }
}

void sub_230FCEB48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::CPULMFPDataBase>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v7 + 5);
      *(a4 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      v7 += 13;
      a4 += 104;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<shazam::CPULMFPDataBase>>::destroy[abi:ne200100]<shazam::CPULMFPDataBase,0>(a1, v5);
      v5 += 13;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<shazam::CPULMFPDataBase>,shazam::CPULMFPDataBase*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 13;
      std::allocator_traits<std::allocator<shazam::CPULMFPDataBase>>::destroy[abi:ne200100]<shazam::CPULMFPDataBase,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<shazam::CPULMFPDataBase>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<shazam::CPULMFPDataBase>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<shazam::CPULMFPDataBase>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<shazam::CPULMFPDataBase>>::destroy[abi:ne200100]<shazam::CPULMFPDataBase,0>(v5, (v4 - 104));
  }
}

void shazam::CPUOnePtDatabase::CPUOnePtDatabase(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::create(int a1@<W0>, shazam::resample_stream *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a1 == 3 || a1 == 5;
  if (a3 == 2)
  {
    v9 = 1025;
  }

  else
  {
    v9 = 693;
  }

  shazam::sig_stream::create(v8, (a3 == 6), v9, &v16);
  if (v23 == 1)
  {
    shazam::fft_stream::create((a3 == 2), v8, v14);
    if (v15)
    {
      shazam::resample_stream::create(a2, 0x3E80u, v12);
      if (v13)
      {
        operator new();
      }

      *a4 = v12[0];
      *(a4 + 8) = 0;
      if (v15)
      {
        shazam::fft_stream::~fft_stream(v14);
      }
    }

    else
    {
      *a4 = v14[0];
      *(a4 + 8) = 0;
    }

    if (v23)
    {
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      v10 = v17;
      v17 = 0;
      if (v10)
      {
        v18();
      }
    }
  }

  else
  {
    *a4 = v16;
    *(a4 + 8) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_230FCEFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x231921F20](v65, 0x10B1C402AE32D67);
  if (a26 == 1)
  {
    shazam::resample_stream::~resample_stream(&a10);
  }

  if (a65)
  {
    shazam::fft_stream::~fft_stream(&a28);
  }

  tl::expected<shazam::sig_stream,shazam::sigx_error>::~expected(v66 - 224);
  _Unwind_Resume(a1);
}

gsl::details *shazam::sig_extractor_pipe<shazam::spectral_peak_t>::stream_flow(gsl::details *result, __int16 *a2, int a3)
{
  if (!*(result + 562))
  {
    v15 = v3;
    v16 = v4;
    memset(v14, 0, sizeof(v14));
    if (a3)
    {
      v6 = result;
      v7 = 0;
      v8 = a3;
      do
      {
        v9 = a2;
        if (v8 - v7 >= 0x80)
        {
          v10 = 128;
        }

        else
        {
          v10 = v8 - v7;
        }

        a2 += v10;
        v11 = 2 * v10;
        v12 = v14;
        do
        {
          v13 = *v9++;
          *v12++ = v13;
          v11 -= 2;
        }

        while (v11);
        result = shazam::sig_extractor_pipe<shazam::spectral_peak_t>::stream_flow_internal(v6, v14, v10);
        v7 += v10;
      }

      while (v7 < v8);
    }
  }

  return result;
}

gsl::details *shazam::sig_extractor_pipe<shazam::spectral_peak_t>::stream_flow_internal(gsl::details *result, gsl::details *a2, int a3)
{
  if (!*(result + 562))
  {
    v31 = v6;
    v32 = v5;
    v33 = v3;
    v34 = v4;
    v8 = result;
    v9 = a3;
    *(result + 276) += a3;
    samples_for_sigx_fft_step = shazam::resample_stream::get_samples_for_sigx_fft_step((result + 1776));
    result = gsl::make_span<shazam::spectral_peak_compact_t const>(a2, v9);
    v29 = result;
    v30 = v11;
    if (result)
    {
      v12 = vcvts_n_f32_u32(samples_for_sigx_fft_step, 7uLL);
      do
      {
        v13 = v12 * (128 - ((*(v8 + 32) - *(v8 + 24)) >> 2));
        if (result >= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = result;
        }

        memcpy((v8 + 48), v11, 4 * v14);
        shazam::resample_stream::stream_flow(v8 + 1776);
        v15 = *(v8 + 24);
        if (*(v8 + 32) - v15 >= 0x1FDuLL)
        {
          shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flow_single_frame(v8, v15);
          if ((*(v8 + 2204) & 0xFFFFFFFE) == 4)
          {
            v16 = *(v8 + 1592);
            v17 = *(v8 + 1584);
            v18 = &v16[-v17] >> 3;
            v19 = *(v8 + 2240);
            v20 = v18 > v19;
            v21 = v18 - v19;
            if (v20)
            {
              v22 = (v17 + 8 * v21);
              v23 = v16 - v22;
              if (v16 != v22)
              {
                memmove(*(v8 + 1584), v22, v16 - v22);
              }

              *(v8 + 1592) = v17 + v23;
            }
          }

          v25 = *(v8 + 24);
          v24 = *(v8 + 32);
          v26 = ((v24 - v25) >> 2) - 128;
          if (4 * v26)
          {
            v27 = v24 - 4 * v26;
            do
            {
              v28 = *(v24 - 4);
              v24 -= 4;
              *v25++ = v28;
            }

            while (v24 != v27);
          }

          std::vector<shazam::signature_header_type>::resize((v8 + 24), v26);
        }

        result = gsl::span<float,18446744073709551615ul>::make_subspan(&v29, v14, 0xFFFFFFFFFFFFFFFFLL);
        v29 = result;
        v30 = v11;
      }

      while (result);
    }
  }

  return result;
}

gsl::details *shazam::sig_extractor_pipe<shazam::spectral_peak_t>::stream_flow(gsl::details *result, gsl::details *a2, int a3)
{
  if (!*(result + 562))
  {
    return shazam::sig_extractor_pipe<shazam::spectral_peak_t>::stream_flow_internal(result, a2, a3);
  }

  return result;
}

void *shazam::sig_extractor_pipe<shazam::spectral_peak_t>::set_max_rolling_buffer(void *result, float a2)
{
  if (a2 >= 0.0 && *(result + 562) == 0)
  {
    v4 = result;
    v5 = (a2 * 1000.0);
    v6 = 240;
    if (*(result + 551) == 5)
    {
      v6 = 0;
    }

    v7 = result[278];
    if (v6 + v7 < v5)
    {
      v8 = ((v7 - v6) * *(result + 550) * 0x20C49BA5E353F7CFLL) >> 64;
      v9 = (v8 >> 7) + (v8 >> 63);
      v10 = result[276];
      v11 = v10 >= v9;
      v12 = v10 - v9;
      if (v11)
      {
        result[279] = v12;
      }
    }

    result[278] = v6 + v5;
    v13 = (ceilf(a2 * 0.5) + 1.0);
    exclusion_width = shazam::sig_stream::get_exclusion_width((result + 201));
    v15 = 300;
    if (exclusion_width == 21)
    {
      v15 = 550;
    }

    v16 = v15 * v13;
    v4[280] = v16;

    return std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(v4 + 198, v16 + 10);
  }

  return result;
}

float shazam::sig_extractor_pipe<shazam::spectral_peak_t>::get_samples_seconds(uint64_t a1)
{
  v2 = *(a1 + 2208);
  v3 = *&v2;
  v4 = *(a1 + 2204);
  v5 = v4 == 5 || v4 == 3;
  if (v5 && *(a1 + 1768) == -shazam::sig_stream::get_half_exclusion_zone_width_ticks((a1 + 1608)))
  {
    v6 = *(a1 + 2200);
    v2 = (shazam::sig_stream::get_half_exclusion_zone_width_ticks((a1 + 1608)) / 125.0 * v6);
    v3 = v3 - v2;
  }

  LODWORD(v2) = *(a1 + 2200);
  *&v2 = v3 / *&v2;
  return *&v2;
}

uint64_t shazam::sig_extractor_pipe<shazam::spectral_peak_t>::get_signature(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  result = v4(v6, a2, *(a1 + 2220));
  if (*(a1 + 2248))
  {
    a2[1] = *a2;
  }

  return result;
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::reset(uint64_t a1)
{
  *(a1 + 2208) = 0;
  shazam::sig_stream::reset((a1 + 1608));
  *(a1 + 1768) = shazam::sig_stream::now((a1 + 1608));
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 1592) = *(a1 + 1584);
  shazam::resample_stream::reset((a1 + 1776));
  shazam::fft_stream::reset((a1 + 1904));
  *(a1 + 2248) = 0;
}

uint64_t shazam::sig_extractor_pipe<shazam::spectral_peak_t>::sig_extractor_pipe(uint64_t a1, int a2, int a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v14 = a1 + 1672;
  *a1 = &unk_2845C5F38;
  bzero((a1 + 24), 0x630uLL);
  *(a1 + 1608) = *a6;
  v15 = *(a6 + 8);
  *(a6 + 8) = 0;
  *(a1 + 1616) = v15;
  v16 = *(a6 + 24);
  *(a1 + 1624) = *(a6 + 16);
  *(a1 + 1632) = v16;
  v17 = *(a6 + 32);
  *(a1 + 1656) = *(a6 + 48);
  *(a1 + 1640) = v17;
  *(a1 + 1664) = *(a6 + 56);
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0;
  *v14 = *(a6 + 64);
  *(a1 + 1688) = *(a6 + 80);
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a1 + 1696) = *(a6 + 88);
  *(a1 + 1712) = *(a6 + 104);
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(v14 + 48) = 0;
  *(v14 + 48) = *(a6 + 112);
  *(a1 + 1736) = *(a6 + 128);
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a1 + 1744) = *(a6 + 136);
  *(a1 + 1760) = *(a6 + 152);
  *(a1 + 1768) = shazam::sig_stream::now((a1 + 1608));
  v19 = *(a7 + 48);
  v18 = *(a7 + 64);
  v20 = *(a7 + 16);
  *(a1 + 1808) = *(a7 + 32);
  *(a1 + 1824) = v19;
  *(a1 + 1792) = v20;
  *(a1 + 1840) = v18;
  *(a1 + 1776) = *a7;
  v21 = *(a7 + 80);
  *(a7 + 80) = 0;
  *(a1 + 1856) = v21;
  v22 = *(a7 + 96);
  *(a1 + 1864) = *(a7 + 88);
  *(a1 + 1872) = v22;
  v23 = *(a7 + 104);
  *(a7 + 104) = 0;
  *(a1 + 1880) = v23;
  v24 = *(a7 + 120);
  *(a1 + 1888) = *(a7 + 112);
  *(a1 + 1896) = v24;
  v25 = *a5;
  *(a1 + 1916) = *(a5 + 12);
  *(a1 + 1904) = v25;
  v26 = *(a5 + 4);
  *(a5 + 4) = 0;
  *(a1 + 1936) = v26;
  std::__function::__value_func<void ()(float const*,unsigned long)>::__value_func[abi:ne200100](a1 + 1944, a5 + 40);
  v27 = *(a5 + 72);
  *(a1 + 1992) = *(a5 + 22);
  *(a1 + 1976) = v27;
  v28 = *(a5 + 12);
  *(a5 + 12) = 0;
  *(a1 + 2000) = v28;
  v29 = *(a5 + 14);
  *(a1 + 2008) = *(a5 + 13);
  *(a1 + 2016) = v29;
  v30 = *(a5 + 15);
  *(a5 + 15) = 0;
  *(a1 + 2024) = v30;
  v31 = *(a5 + 17);
  *(a1 + 2032) = *(a5 + 16);
  *(a1 + 2040) = v31;
  v32 = *(a5 + 18);
  *(a5 + 18) = 0;
  *(a1 + 2048) = v32;
  v33 = *(a5 + 20);
  *(a1 + 2056) = *(a5 + 19);
  *(a1 + 2064) = v33;
  v34 = *(a5 + 21);
  *(a5 + 21) = 0;
  *(a1 + 2072) = v34;
  v35 = *(a5 + 23);
  *(a1 + 2080) = *(a5 + 22);
  *(a1 + 2088) = v35;
  v36 = a5[12];
  *(a1 + 2112) = *(a5 + 26);
  *(a1 + 2096) = v36;
  shazam::SHZ_FFT::SHZ_FFT((a1 + 2120), a5 + 27);
  *(a1 + 2192) = *(a5 + 72);
  *(a1 + 2200) = a3;
  *(a1 + 2204) = a2;
  *(a1 + 2208) = 0;
  if ((a4 & 0xFFFFFFFE) == 4)
  {
    v37 = 3;
  }

  else
  {
    v37 = 4;
  }

  *(a1 + 2216) = v37;
  if ((a4 - 2) > 3)
  {
    v38 = 24;
  }

  else
  {
    v38 = dword_231002980[a4 - 2];
  }

  *(a1 + 2220) = v38;
  *(a1 + 2224) = 0;
  *(a1 + 2240) = 0;
  *(a1 + 2232) = 0;
  *(a1 + 2248) = 0;
  switch(a2)
  {
    case 5:
      shazam::sig_extractor_pipe<shazam::spectral_peak_t>::set_max_rolling_buffer(a1, 12.0);
      v39 = shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getStreamingWindowedSig;
      goto LABEL_13;
    case 4:
      shazam::sig_extractor_pipe<shazam::spectral_peak_t>::set_max_rolling_buffer(a1, 12.0);
      v39 = shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getWindowedSig;
      goto LABEL_13;
    case 3:
      v39 = shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getStreamingSig;
LABEL_13:
      *(a1 + 8) = v39;
      *(a1 + 16) = 0;
      goto LABEL_14;
  }

  *(a1 + 8) = shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getProgressiveSig;
  *(a1 + 16) = 0;
  if ((a2 - 1) >= 5)
  {
    *(a1 + 2248) = 520;
  }

LABEL_14:
  if ((a4 - 3) >= 4 && a4)
  {
    *(a1 + 2248) = 519;
  }

  if ((shazam::resample_stream::sample_rate_check((a1 + 1776), a3) & 1) == 0)
  {
    *(a1 + 2248) = 518;
  }

  return a1;
}

void sub_230FCF8A4(_Unwind_Exception *a1)
{
  shazam::fft_stream::~fft_stream(v2);
  shazam::resample_stream::~resample_stream((v1 + 222));
  shazam::sig_stream::~sig_stream((v1 + 201));
  v4 = v1[198];
  if (v4)
  {
    v1[199] = v4;
    operator delete(v4);
  }

  v5 = v1[3];
  if (v5)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getStreamingSig(uint64_t result, std::vector<char> *a2, unsigned int a3)
{
  if (!*(result + 2248))
  {
    v5 = result;
    v13 = 0;
    v14 = 0;
    v6 = *(result + 2200);
    v7 = *(result + 2208);
    LODWORD(v13) = v6;
    *(&v12 + 1) = v7;
    *(result + 2208) = 0;
    if (*(result + 1768) == -shazam::sig_stream::get_half_exclusion_zone_width_ticks((result + 1608)))
    {
      result = shazam::sig_stream::get_half_exclusion_zone_width_ticks((v5 + 1608));
      if ((v7 / v6) * 125.0 < result)
      {
        *(v5 + 2248) = 521;
        return result;
      }

      *(&v12 + 1) = v7 - (shazam::sig_stream::get_half_exclusion_zone_width_ticks((v5 + 1608)) / 125.0 * v6);
    }

    v8 = shazam::sig_stream::now((v5 + 1608));
    *(v5 + 1768) = v8;
    *&v12 = v8 & ~(v8 >> 63);
    if (shazam::sig_stream::get_exclusion_width((v5 + 1608)) == 21)
    {
      shazam::exclusion_zone::apply_exclusion_zone_to_peaks<shazam::spectral_peak_t>((v5 + 1584), v9, v10);
    }

    *(v5 + 2248) = result;
    *(v5 + 1592) = *(v5 + 1584);
    v11 = *(v5 + 1768);
    if (v11 >= 1)
    {
      *(v5 + 1648) = v11;
    }
  }

  return result;
}

void sub_230FCFA2C(_Unwind_Exception *a1)
{
  v1[199] = v1[198];
  v2 = v1[221];
  if (v2 >= 1)
  {
    v1[206] = v2;
  }

  _Unwind_Resume(a1);
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getWindowedSig(uint64_t a1, std::vector<char> *a2, unsigned int a3, double a4)
{
  if (!*(a1 + 2248))
  {
    v21 = 0;
    v22 = 0;
    LODWORD(v21) = *(a1 + 2200);
    BYTE4(v21) = 15;
    LODWORD(a4) = *(a1 + 1792);
    v7 = *&a4 * 0.24;
    v8 = *(a1 + 2208) + v7;
    v9 = *(a1 + 2232);
    v10 = v8 - v9;
    if (v8 - v9 >= *(a1 + 2224) * v21 / 1000)
    {
      v10 = *(a1 + 2224) * v21 / 1000;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(a1 + 2224) * v21 / 1000;
    }

    if (v11 >= v8)
    {
      v12 = *(a1 + 2208) + v7;
    }

    else
    {
      v12 = v11;
    }

    v13 = ((v8 - v11) / v21) * 125.0;
    *&v20 = v13 & ~(v13 >> 63);
    *(&v20 + 1) = v12;
    v14 = *(a1 + 1592) - *(a1 + 1584);
    shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flush_fft(a1);
    if (!*(a1 + 2248))
    {
      if (shazam::sig_stream::get_exclusion_width((a1 + 1608)) == 21)
      {
        shazam::exclusion_zone::apply_exclusion_zone_to_peaks<shazam::spectral_peak_t>(__p, v15, v16);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v17 = v14 + *(a1 + 1584);
    if (v17 != *(a1 + 1592))
    {
      v18 = *(a1 + 1592);
      *(a1 + 1592) = v17;
    }
  }
}

void sub_230FCFBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = v12 + *(v11 + 1584);
  if (v13 != *(v11 + 1592))
  {
    v14 = *(v11 + 1592);
    *(v11 + 1592) = v13;
  }

  _Unwind_Resume(exception_object);
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getStreamingWindowedSig(uint64_t a1, std::vector<char> *a2, unsigned int a3)
{
  if (!*(a1 + 2248))
  {
    v16 = 0;
    v17 = 0;
    LODWORD(v16) = *(a1 + 2200);
    v6 = *(a1 + 2208);
    v7 = *(a1 + 2224) * v16 / 1000;
    v8 = *(a1 + 2232);
    v9 = v6 - v8;
    if (v6 - v8 >= v7)
    {
      v9 = *(a1 + 2224) * v16 / 1000;
    }

    if (v8)
    {
      v7 = v9;
    }

    if (v7 >= v6)
    {
      v10 = *(a1 + 2208);
    }

    else
    {
      v10 = v7;
    }

    v11 = ((v6 - v7) / v16) * 125.0;
    *&v15 = v11 & ~(v11 >> 63);
    *(&v15 + 1) = v10;
    if (shazam::sig_stream::get_exclusion_width((a1 + 1608)) == 21)
    {
      shazam::exclusion_zone::apply_exclusion_zone_to_peaks<shazam::spectral_peak_t>(__p, v12, v13);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_230FCFD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::getProgressiveSig(uint64_t a1, std::vector<char> *a2, unsigned int a3)
{
  if (!*(a1 + 2248))
  {
    v14 = 0u;
    v15 = 0u;
    LODWORD(v15) = *(a1 + 2200);
    *(&v14 + 1) = *(a1 + 2208) + (*(a1 + 1792) * 0.24);
    BYTE4(v15) = 15;
    v6 = *(a1 + 1592) - *(a1 + 1584);
    shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flush_fft(a1);
    if (!*(a1 + 2248))
    {
      if (shazam::sig_stream::get_exclusion_width((a1 + 1608)) == 21)
      {
        __p = 0;
        v12 = 0;
        v13 = 0;
        std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<shazam::spectral_peak_t*,shazam::spectral_peak_t*>(&__p, *(a1 + 1584), *(a1 + 1592), (*(a1 + 1592) - *(a1 + 1584)) >> 3);
        shazam::exclusion_zone::apply_exclusion_zone_to_peaks<shazam::spectral_peak_t>(&__p, v7, v8);
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }
      }

      else
      {
      }
    }

    v9 = v6 + *(a1 + 1584);
    if (v9 != *(a1 + 1592))
    {
      v10 = *(a1 + 1592);
      *(a1 + 1592) = v9;
    }
  }
}

void sub_230FCFEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = v12 + *(v11 + 1584);
  if (v13 != *(v11 + 1592))
  {
    v14 = *(v11 + 1592);
    *(v11 + 1592) = v13;
  }

  _Unwind_Resume(exception_object);
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flow_single_frame(uint64_t a1, char *a2)
{
  writable_fft_frame_magnitude = shazam::sig_stream::get_writable_fft_frame_magnitude((a1 + 1608));
  shazam::sig_stream::get_writable_fft_frame_complex((a1 + 1608));
  shazam::fft_stream::stream_flow(a1 + 1904, a2, writable_fft_frame_magnitude);

  shazam::sig_stream::stream_flow((a1 + 1608), a1 + 1584);
}

uint64_t shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flush_fft(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (!*(result + 2248))
  {
    v1 = result;
    result = shazam::sig_stream::checkpoint((result + 1608));
    v1[562] = result;
    if (!result)
    {
      result = shazam::fft_stream::checkpoint((v1 + 476));
      v1[562] = result;
      if (!result)
      {
        memset(v5, 0, sizeof(v5));
        v2 = 0;
        v3 = ((shazam::sig_stream::get_exclusion_width((v1 + 402)) >> 1) << 7) + 2048;
        do
        {
          shazam::sig_extractor_pipe<shazam::spectral_peak_t>::flow_single_frame(v1, v5);
          v2 += 128;
        }

        while (v2 < v3);
        result = shazam::sig_stream::rewind((v1 + 402));
        v1[562] = result;
        if (!result)
        {
          result = shazam::fft_stream::rewind((v1 + 476));
          v1[562] = result;
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void shazam::exclusion_zone::apply_exclusion_zone_to_peaks<shazam::spectral_peak_t>(int **a1, float a2, float a3)
{
  __src = 0;
  v26 = 0;
  v27 = 0;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return;
  }

  v6 = 0;
  v7 = *a1;
  do
  {
    if (v4 == v3)
    {
      goto LABEL_12;
    }

    v8 = *v7;
    LOWORD(a2) = *(v7 + 2);
    a2 = (LODWORD(a2) * 7.8125) * 0.015625;
    v9 = v4;
    while (v9 == v7)
    {
LABEL_11:
      v9 += 2;
      if (v9 == v3)
      {
        goto LABEL_12;
      }
    }

    if (v8 - *v9 >= 46)
    {
      v4 += 2;
      goto LABEL_11;
    }

    if (*v9 - v8 > 45)
    {
      goto LABEL_12;
    }

    LOWORD(a3) = *(v9 + 2);
    a3 = fabsf(a2 + ((LODWORD(a3) * -7.8125) * 0.015625));
    if (a3 > 15.625 || *(v7 + 3) >= *(v9 + 3))
    {
      goto LABEL_11;
    }

    v10 = (v7 - *a1) >> 3;
    if (v6 >= v27)
    {
      v11 = __src;
      v12 = v6 - __src;
      v13 = (v6 - __src) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v27 - __src;
      if ((v27 - __src) >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(&__src, v16);
      }

      v17 = (v6 - __src) >> 3;
      v18 = (8 * v13);
      v19 = (8 * v13 - 8 * v17);
      *v18 = v10;
      v6 = v18 + 1;
      memcpy(v19, v11, v12);
      v20 = __src;
      __src = v19;
      v26 = v6;
      v27 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v6++ = v10;
    }

    v26 = v6;
    v3 = a1[1];
LABEL_12:
    v7 += 2;
  }

  while (v7 != v3);
  v21 = __src;
  while (v6 != v21)
  {
    v22 = *--v6;
    v23 = &(*a1)[2 * v22];
    v24 = v3 - v23 - 8;
    if (v3 != (v23 + 8))
    {
      memmove(v23, (v23 + 8), v3 - v23 - 8);
      v21 = __src;
    }

    v3 = (v23 + v24);
    a1[1] = (v23 + v24);
  }

  if (v21)
  {
    v26 = v21;
    operator delete(v21);
  }
}

void sub_230FD0304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t shazam::anonymous namespace::get_sig(std::vector<char> *a1, shazam **a2, __int128 *a3, unsigned int a4, int a5, unint64_t a6)
{
  shazam::BandSpectralPeaks<std::__wrap_iter<shazam::spectral_peak_t const*>,std::vector<std::vector<shazam::spectral_peak_t>>>(*a2, a2[1], a4, a6, a5, v18);
  if (v19 != 1)
  {
    return v18[0];
  }

  v8 = tl::expected<std::vector<std::vector<shazam::spectral_peak_t>>,shazam::sig_error>::value<std::vector<std::vector<shazam::spectral_peak_t>>,(void *)0>(v18);
  v12 = 0uLL;
  v13 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v12, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
  v9 = a3[1];
  v14 = *a3;
  v15 = v9;
  v16 = v12;
  v17 = v13;
  v12 = 0uLL;
  v13 = 0;
  v20 = &v12;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v10 = tl::expected<std::vector<std::vector<shazam::spectral_peak_t>>,shazam::sig_error>::value<std::vector<std::vector<shazam::spectral_peak_t>>,(void *)0>(v18);
  DWORD2(v15) = shazam::find_last_peak_tick(v10);
  shazam::io::pack(a1, &v14);
  v20 = &v16;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v19)
  {
    *&v14 = v18;
    std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  return 0;
}

void sub_230FD042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  *(v14 - 40) = v13;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  if (*(v14 - 48) == 1)
  {
    a13 = (v14 - 72);
    std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t shazam::anonymous namespace::window_peaks<shazam::spectral_peak_t>@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a1;
  if (*a1 == v6)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v18 = a3;
    v9 = 0;
LABEL_15:

    return std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<shazam::spectral_peak_t*,shazam::spectral_peak_t*>(v18, v7, v6, v9);
  }

  v8 = *(v6 - 8);
  v9 = (v6 - v7) >> 3;
  v10 = v8 - a2;
  if (v8 <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v18 = a3;
    goto LABEL_15;
  }

  v11 = 0;
  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (v6 - v7) >> 3;
  }

  v13 = *a1;
  while (1)
  {
    v14 = *v13;
    v13 += 2;
    if (v14 >= v10)
    {
      break;
    }

    if (v12 == ++v11)
    {
      v11 = v12;
      break;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<std::__wrap_iter<shazam::spectral_peak_t*>,std::__wrap_iter<shazam::spectral_peak_t*>>(a3, v7 + 8 * v11, v6, (v6 - (v7 + 8 * v11)) >> 3);
  v16 = *a3;
  v17 = a3[1];
  while (v16 != v17)
  {
    *v16 -= v10;
    v16 += 2;
  }

  return result;
}

void shazam::sig_extractor_pipe<shazam::spectral_peak_t>::~sig_extractor_pipe(uint64_t a1)
{
  shazam::sig_extractor_pipe<shazam::spectral_peak_t>::~sig_extractor_pipe(a1);

  JUMPOUT(0x231921F20);
}

uint64_t tl::expected<shazam::sig_stream,shazam::sigx_error>::~expected(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4)
    {
      (*(a1 + 16))();
    }
  }

  return a1;
}

__n128 shazam::SHZ_FFT::SHZ_FFT(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 1) = *(a2 + 1);
  v3 = a2[4];
  a1[3] = a2[3];
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  a1[4] = v3;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 5);
  *(a1 + 5) = result;
  v5 = a2[8];
  a1[7] = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  a1[8] = v5;
  return result;
}

void shazam::fft_stream::~fft_stream(shazam::fft_stream *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  v5 = *(this + 21);
  *(this + 21) = 0;
  if (v5)
  {
    (*(this + 22))();
  }

  v6 = *(this + 18);
  *(this + 18) = 0;
  if (v6)
  {
    (*(this + 19))();
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    (*(this + 16))();
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    (*(this + 13))();
  }

  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](this + 40);
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    MEMORY[0x231921F00](v9, 0x1000C8052888210);
  }
}

void shazam::sig_stream::~sig_stream(shazam::sig_stream *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(this + 2))();
  }
}

void shazam::BandSpectralPeaks<std::__wrap_iter<shazam::spectral_peak_t const*>,std::vector<std::vector<shazam::spectral_peak_t>>>(shazam *a1@<X0>, shazam *a2@<X1>, unsigned int a3@<W2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a1;
  if (a5)
  {
    v11 = -45;
  }

  else
  {
    v11 = 0;
  }

  if (a1 == a2)
  {
    goto LABEL_13;
  }

  v12 = (a1 + 8);
  while (v12 != a2)
  {
    v13 = *(v12 - 2);
    v14 = *v12 < v13;
    if (*v12 == v13)
    {
      v14 = v12[2] < *(v12 - 2);
    }

    v12 += 4;
    if (v14)
    {
      v15 = (v12 - 4);
      goto LABEL_12;
    }
  }

  v15 = a2;
LABEL_12:
  if (v15 == a2)
  {
LABEL_13:
    v34 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](__p, a4);
    std::vector<std::vector<shazam::spectral_peak_t>>::vector[abi:ne200100](&v34, a4);
    if (v9 == a2)
    {
      v17 = v34;
      v18 = v35;
LABEL_15:
      *a6 = v17;
      *(a6 + 8) = v18;
      *(a6 + 16) = v36;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v19 = 1;
    }

    else
    {
      while (1)
      {
        v11 += 256;
        do
        {
          if (v11 <= *v9)
          {
            break;
          }

          shazam::addPeakToBands<shazam::spectral_peak_t,std::vector<std::vector<shazam::spectral_peak_t>>>(v9, &v34, v16);
          v9 = (v9 + 8);
        }

        while (v9 != a2);
        v17 = v34;
        v18 = v35;
        if (v35 != v34)
        {
          break;
        }

LABEL_32:
        if (v9 == a2)
        {
          goto LABEL_15;
        }
      }

      v20 = 0;
      v21 = 0;
      v22 = __p[0];
      while (1)
      {
        v24 = *(v17 + v20);
        v23 = *(v17 + v20 + 8);
        v25 = (v23->i64 - v24) >> 3;
        v26 = v22[v21];
        if (v25 < v26)
        {
          break;
        }

        if (a3 && v25 - v26 > a3)
        {
          v27 = v24 + 8 * v26;
          v28 = 126 - 2 * __clz((v23->i64 - v27) >> 3);
          if (v23 == v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28;
          }

          std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(v27, v23, v29, 1);
          std::vector<shazam::spectral_peak_t>::resize((v34 + v20), *(__p[0] + v21) + a3);
          v30 = *(v34 + v20 + 8);
          v31 = (*(v34 + v20) + 8 * *(__p[0] + v21));
          v32 = 126 - 2 * __clz((v30 - v31) >> 3);
          if (v30 == v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(v31, v30, &v38, v33, 1);
          v17 = v34;
          v18 = v35;
          v22 = __p[0];
          v25 = (*(v34 + v20 + 8) - *(v34 + v20)) >> 3;
        }

        v22[v21++] = v25;
        v20 += 24;
        if (v21 >= 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3))
        {
          goto LABEL_32;
        }
      }

      v19 = 0;
      *a6 = 126;
    }

    *(a6 + 24) = v19;
    v39 = &v34;
    std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v39);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a6 = 201;
    *(a6 + 24) = 0;
  }
}

void sub_230FD0A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *tl::expected<std::vector<std::vector<shazam::spectral_peak_t>>,shazam::sig_error>::value<std::vector<std::vector<shazam::spectral_peak_t>>,(void *)0>(int *result)
{
  if ((result[6] & 1) == 0)
  {
    v1 = *result;
    v2 = &unk_2845C58E0;
    v3 = v1;
    tl::detail::throw_exception<tl::bad_expected_access<shazam::sig_error>>(&v2);
  }

  return result;
}

void shazam::addPeakToBands<shazam::spectral_peak_t,std::vector<std::vector<shazam::spectral_peak_t>>>(shazam *a1, void *a2, float a3)
{
  LOWORD(a3) = *(a1 + 2);
  peak_band = shazam::get_peak_band(a1, (LODWORD(a3) * 7.8125) * 0.015625);
  if ((v6 & 1) != 0 && peak_band < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
  {
    v7 = *a2 + 24 * peak_band;
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v9 >= v8)
    {
      v11 = (v9 - *v7) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - *v7;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(v7, v14);
      }

      v15 = (8 * v11);
      *v15 = *a1;
      v10 = 8 * v11 + 8;
      v16 = *(v7 + 8) - *v7;
      v17 = v15 - v16;
      memcpy(v15 - v16, *v7, v16);
      v18 = *v7;
      *v7 = v17;
      *(v7 + 8) = v10;
      *(v7 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v9 = *a1;
      v10 = (v9 + 1);
    }

    *(v7 + 8) = v10;
  }
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FD0D2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t shazam::sig_extractor_pipe<shazam::spectral_peak_t>::~sig_extractor_pipe(uint64_t a1)
{
  shazam::fft_stream::~fft_stream((a1 + 1904));
  shazam::resample_stream::~resample_stream((a1 + 1776));
  v2 = *(a1 + 1720);
  if (v2)
  {
    *(a1 + 1728) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1672);
  if (v3)
  {
    *(a1 + 1680) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1616);
  *(a1 + 1616) = 0;
  if (v4)
  {
    (*(a1 + 1624))();
  }

  v5 = *(a1 + 1584);
  if (v5)
  {
    *(a1 + 1592) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<std::__wrap_iter<shazam::spectral_peak_t*>,std::__wrap_iter<shazam::spectral_peak_t*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FD0E34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_230FD109C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, _Unwind_Exception *a13)
{
  v14 = a1;
  if (a10 == 1)
  {
    [SHSigX initWithSignatureType:a1 sampleRate:a2 signatureOptions:&a13 error:?];
    v14 = a13;
  }

  _Unwind_Resume(v14);
}

int *tl::expected<std::unique_ptr<shazam::sigx_pipe_base>,shazam::sigx_error>::value<std::unique_ptr<shazam::sigx_pipe_base>,(void *)0>(int *result)
{
  if ((result[2] & 1) == 0)
  {
    v1 = *result;
    v2 = &unk_2845C5FE0;
    v3 = v1;
    tl::detail::throw_exception<tl::bad_expected_access<shazam::sigx_error>>(&v2);
  }

  return result;
}

uint64_t shazam::audio::downMix<short>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2 && a2)
  {
    v3 = 0;
    v4 = 1.0 / a3;
    v5 = (result + 2);
    do
    {
      v6 = (v4 * *(result + 2 * v3 * a3));
      *(result + 2 * v3) = v6;
      v7 = v5;
      v8 = a3 - 1;
      do
      {
        v9 = *v7++;
        v6 = (v6 + (v9 * v4));
        *(result + 2 * v3) = v6;
        --v8;
      }

      while (v8);
      ++v3;
      v5 += a3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t shazam::audio::downMix<float>(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2 && a2)
  {
    v3 = 0;
    v4 = 1.0 / a3;
    v5 = (result + 4);
    do
    {
      v6 = v4 * *(result + 4 * v3 * a3);
      *(result + 4 * v3) = v6;
      v7 = v5;
      v8 = a3 - 1;
      do
      {
        v9 = *v7++;
        v6 = v6 + (v9 * v4);
        *(result + 4 * v3) = v6;
        --v8;
      }

      while (v8);
      ++v3;
      v5 += a3;
    }

    while (v3 != a2);
  }

  return result;
}

void sub_230FD1788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_230FD1A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void tl::detail::throw_exception<tl::bad_expected_access<shazam::sigx_error>>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2845C5FE0;
  exception[2] = *(a1 + 8);
}

void tl::bad_expected_access<shazam::sigx_error>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x231921F20);
}

uint64_t shazam::FreebirdHeaderIterator(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  if (a1 <= 0x23)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, error_code, v16);
    goto LABEL_18;
  }

  v4 = shazam::reinterpret_safer<shazam::freebird_header const*,0>(&v25);
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v25, 0x1CuLL, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v6;
  v8 = gsl::span<char const,18446744073709551615ul>::make_subspan(&v25, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  if (v25 != *(v4 + 8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v17 = shazam::make_error_code(0x87);
    MEMORY[0x231921D00](exception, v17, v18);
LABEL_18:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v10 = *(v4 + 4);
  v11 = shazam::crc32(0, v9, v8);
  if (v10 != -87368039 && v11 != v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v20 = shazam::make_error_code(0x84);
    MEMORY[0x231921D00](exception, v20, v21);
    goto LABEL_18;
  }

  v22 = 1342177285;
  v23 = v25;
  if (v25 == -1 || (v24 = v26) == 0 && v25)
  {
    gsl::details::terminate(v11);
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v13 + 48))(v13, &v22);
  if (*(v26 + 16))
  {
    return shazam::iterate_headers<shazam::fp_data_header_extern_new>(subspan, v7, a3);
  }

  return result;
}

uint64_t shazam::SumoHeaderIterator(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  if (a1 <= 0x2B)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, error_code, v21);
    goto LABEL_25;
  }

  v4 = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>(&v37);
  v36[0] = gsl::span<char const,18446744073709551615ul>::make_subspan(&v37, 0x1CuLL, 0xFFFFFFFFFFFFFFFFLL);
  v36[1] = v5;
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v37, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v4 + 4);
  v9 = shazam::crc32(0, v8, subspan);
  if (v7 != -87368039 && v9 != v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v23 = shazam::make_error_code(0x84);
    MEMORY[0x231921D00](exception, v23, v24);
    goto LABEL_25;
  }

  v34 = 1342177283;
  *&v35 = v37;
  if (v37 == -1 || (*(&v35 + 1) = v38) == 0 && v37)
  {
    gsl::details::terminate(v9);
  }

  v11 = *(a3 + 24);
  if (!v11)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, &v34);
  v12 = shazam::reinterpret_safer<shazam::fp_data_header_extern_new const*,0>(v36);
  *&v33 = gsl::span<char const,18446744073709551615ul>::make_subspan(v36, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  *(&v33 + 1) = v13;
  if (*v12 != 0x40000000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v25 = shazam::make_error_code(0x72);
    MEMORY[0x231921D00](exception, v25, v26);
    goto LABEL_25;
  }

  if (v36[0] != v12[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v27 = shazam::make_error_code(0x70);
    MEMORY[0x231921D00](exception, v27, v28);
    goto LABEL_25;
  }

  v34 = 0x40000000;
  v35 = v33;
  v14 = *(a3 + 24);
  if (!v14)
  {
    goto LABEL_19;
  }

  (*(*v14 + 48))(v14, &v34);
  v15 = shazam::reinterpret_safer<shazam::fp_data_header_extern_new const*,0>(&v33);
  v16 = gsl::span<char const,18446744073709551615ul>::make_subspan(&v33, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  if (*v15 != 1610874935)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v29 = shazam::make_error_code(0x6B);
    MEMORY[0x231921D00](exception, v29, v30);
    goto LABEL_25;
  }

  if (v16 != v15[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v31 = shazam::make_error_code(0x70);
    MEMORY[0x231921D00](exception, v31, v32);
LABEL_25:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v34 = 1610874935;
  *&v35 = v16;
  *(&v35 + 1) = v17;
  v18 = *(a3 + 24);
  if (!v18)
  {
    goto LABEL_19;
  }

  return (*(*v18 + 48))(v18, &v34);
}

unint64_t shazam::get_peak_band(shazam *this, float a2)
{
  if (a2 < 250.0)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    if (a2 <= 5500.0)
    {
      v2 = 0;
      while (shazam::FREQ_BAND_EDGES[v2 + 1] < a2)
      {
        if (++v2 == 4)
        {
          v2 = 0;
          v3 = 0;
          return v3 | v2;
        }
      }

      v3 = v2 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v3 | v2;
}

int8x16_t *shazam::chooseAnchors(char **a1, unsigned int a2, _DWORD *a3, void *a4)
{
  a4[1] = *a4;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(a4, 0x200uLL);
  v7 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v8 = 0;
    v9 = a3[1];
    v10 = (v6 - *a1) >> 3;
    do
    {
      if (v6 != v7)
      {
        v6 = v7;
        do
        {
          v11 = v10 >> 1;
          v12 = &v6[8 * (v10 >> 1)];
          v14 = *v12;
          v13 = (v12 + 2);
          v10 += ~(v10 >> 1);
          if (v14 < v9)
          {
            v6 = v13;
          }

          else
          {
            v10 = v11;
          }
        }

        while (v10);
      }

      v69 = v6 - v7;
      v15 = (v6 - v7) >> 3;
      v70 = v15;
      v16 = v15 - v8;
      if (v15 - v8 >= a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = v15 - v8;
      }

      v18 = a4[1];
      v68 = *a4;
      v19 = v18 - *a4;
      std::vector<shazam::spectral_peak_t>::resize(a4, v17 + (v19 >> 3));
      if (v16 <= a2)
      {
        if (v17)
        {
          v25 = 8 * v8;
          do
          {
            *(*a4 + v19) = *&(*a1)[v25];
            v25 += 8;
            v19 += 8;
            --v17;
          }

          while (v17);
        }
      }

      else if (a2)
      {
        v20 = *a4;
        v21 = *a4 + v19;
        v22 = 8 * v8;
        v66 = *a1;
        v23 = &(*a1)[8 * v8];
        if (v22 == v69)
        {
          v24 = v21;
        }

        else
        {
          v26 = 0;
          v27 = v69 - v22 - 8;
          do
          {
            *(v21 + v26) = *(v23 + v26);
            v28 = v26 + 8;
            if (v27 == v26)
            {
              break;
            }

            v29 = 8 * a2 - 8 == v26;
            v26 += 8;
          }

          while (!v29);
          v23 += v28;
          v24 = (v21 + v28);
        }

        v30 = (v24 - v21) >> 3;
        if (v30 >= 2)
        {
          v31 = (v30 - 2) >> 1;
          v32 = v31 + 1;
          v33 = (v20 + v18 + 8 * v31 - v68);
          do
          {
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_1 &,shazam::spectral_peak_t *>(v21, (v24 - v21) >> 3, v33--);
            --v32;
          }

          while (v32);
        }

        while (v23 != &v66[v69])
        {
          v34 = *(v23 + 6);
          v35 = *(v21 + 6);
          v29 = v34 == v35;
          v36 = v34 > v35;
          if (v29)
          {
            v36 = *(v23 + 4) > *(v21 + 4);
          }

          if (v36)
          {
            *v21 = *v23;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_1 &,shazam::spectral_peak_t *>(v21, (v24 - v21) >> 3, v21);
          }

          v23 += 8;
        }

        if (v30 >= 2)
        {
          do
          {
            v37 = 0;
            v38 = *v21;
            v39 = v21;
            do
            {
              v40 = &v39[v37];
              v41 = v40 + 4;
              v42 = (2 * v37) | 1;
              v37 = 2 * v37 + 2;
              if (v37 >= v30)
              {
                v37 = v42;
              }

              else
              {
                v43 = v40[7];
                v44 = v40[11];
                v29 = v43 == v44;
                v45 = v43 > v44;
                if (v29)
                {
                  v45 = v40[6] > v40[10];
                }

                v46 = v40 + 8;
                if (v45)
                {
                  v41 = v46;
                }

                else
                {
                  v37 = v42;
                }
              }

              *v39 = *v41;
              v39 = v41;
            }

            while (v37 <= ((v30 - 2) >> 1));
            if (v41 == --v24)
            {
              *v41 = v38;
            }

            else
            {
              *v41 = *v24;
              *v24 = v38;
              v47 = (v41 - v21 + 8) >> 3;
              v48 = v47 < 2;
              v49 = v47 - 2;
              if (!v48)
              {
                v50 = v49 >> 1;
                v51 = v21 + 8 * v50;
                v52 = *(v51 + 6);
                v53 = v41[3];
                v29 = v52 == v53;
                v54 = v52 > v53;
                if (v29)
                {
                  v54 = *(v51 + 4) > v41[2];
                }

                if (v54)
                {
                  v55 = *v41;
                  v56 = HIWORD(*v41);
                  do
                  {
                    v57 = v41;
                    v41 = v51;
                    *v57 = *v51;
                    if (!v50)
                    {
                      break;
                    }

                    v50 = (v50 - 1) >> 1;
                    v51 = v21 + 8 * v50;
                    v58 = *(v51 + 6);
                    v59 = *(v51 + 4) > WORD2(v55);
                    v29 = v58 == v56;
                    v60 = v58 > v56;
                    if (!v29)
                    {
                      v59 = v60;
                    }
                  }

                  while (v59);
                  *v41 = v55;
                }
              }
            }

            v48 = v30-- <= 2;
          }

          while (!v48);
        }
      }

      v9 += *a3;
      v7 = *a1;
      v6 = a1[1];
      v10 = (v6 - *a1) >> 3;
      v8 = v70;
    }

    while (v70 < v10);
  }

  v61 = a4[1];
  v62 = 126 - 2 * __clz((v61->i64 - *a4) >> 3);
  if (v61 == *a4)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(*a4, v61, &v71, v63, 1);
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_1 &,shazam::spectral_peak_t *>(uint64_t result, uint64_t a2, unint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 < a2)
      {
        v9 = *(v7 + 3);
        v10 = *(v7 + 7);
        v12 = v9 == v10;
        v11 = v9 > v10;
        if (v12)
        {
          v11 = *(v7 + 2) > *(v7 + 6);
        }

        v12 = !v11;
        v13 = 8;
        if (v12)
        {
          v13 = 0;
        }

        v7 = (v7 + v13);
        if (!v12)
        {
          v6 = v8;
        }
      }

      v14 = *(v7 + 3);
      v15 = *(a3 + 3);
      v12 = v14 == v15;
      v16 = v14 > v15;
      if (v12)
      {
        v16 = *(v7 + 2) > *(a3 + 2);
      }

      if (!v16)
      {
        v17 = *a3;
        v18 = WORD2(*a3);
        v19 = HIWORD(*a3);
        do
        {
          v20 = a3;
          a3 = v7;
          *v20 = *v7;
          if (v4 < v6)
          {
            break;
          }

          v21 = (2 * v6) | 1;
          v7 = (result + 8 * v21);
          v22 = 2 * v6 + 2;
          if (v22 < a2)
          {
            v23 = *(v7 + 3);
            v24 = *(v7 + 7);
            v12 = v23 == v24;
            v25 = v23 > v24;
            if (v12)
            {
              v25 = *(v7 + 2) > *(v7 + 6);
            }

            v26 = !v25;
            if (v25)
            {
              v27 = 8;
            }

            else
            {
              v27 = 0;
            }

            v7 = (v7 + v27);
            if (!v26)
            {
              v21 = v22;
            }
          }

          v28 = *(v7 + 3);
          v29 = *(v7 + 2) > v18;
          v12 = v28 == v19;
          v30 = v28 > v19;
          if (!v12)
          {
            v29 = v30;
          }

          v6 = v21;
        }

        while (!v29);
        *a3 = v17;
      }
    }
  }

  return result;
}

void shazam::dsp::FeatureExtractor::FeatureExtractor(shazam::dsp::FeatureExtractor *this, shazam::resample_stream *a2)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  shazam::resample_stream::create_unique(a2, 0x3E80u);
}

void sub_230FD2A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, shazam::resample_stream *a9, char a10)
{
  if (a10 == 1)
  {
    std::unique_ptr<shazam::resample_stream>::reset[abi:ne200100](&a9, 0);
  }

  std::unique_ptr<shazam::dsp::CrepeFramer>::reset[abi:ne200100]((v10 + 56), 0);
  std::unique_ptr<shazam::dsp::HCQT<2u,6u>>::reset[abi:ne200100](v11, 0);
  std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::~__hash_table(v10 + 8);
  _Unwind_Resume(a1);
}

unsigned int *shazam::unwrap_or_throw<std::unique_ptr<shazam::resample_stream>,shazam::sigx_error,void>(unsigned int *result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(*v1);
    MEMORY[0x231921D00](exception, error_code, v4);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void shazam::dsp::FeatureExtractor::enableFeature(shazam::dsp::FeatureExtractor *a1, int a2)
{
  shazam::dsp::FeatureExtractor::reset(a1);
  if (a2 == 2)
  {
    operator new();
  }

  if (a2 == 1)
  {
    operator new();
  }
}

void shazam::dsp::FeatureExtractor::reset(shazam::dsp::FeatureExtractor *this)
{
  v2 = *this;
  if (*this)
  {
    shazam::dsp::HCQT<2u,6u>::reset(*(this + 6));
    v2 = *this;
  }

  if ((v2 & 2) != 0)
  {
    shazam::dsp::CrepeFramer::reset(*(this + 7));
  }

  *(this + 9) = 0;
  v3 = *(this + 8);

  shazam::resample_stream::reset(v3);
}

void shazam::dsp::FeatureExtractor::flow(uint64_t *a1, unint64_t a2, __int16 *a3)
{
  memset(v15, 0, sizeof(v15));
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s32(0x46FFFE00u);
    v14 = v7;
    do
    {
      v8 = a3;
      if (a2 - v6 >= 0x80)
      {
        v9 = 128;
      }

      else
      {
        v9 = a2 - v6;
      }

      a3 += v9;
      v10 = 2 * v9;
      v11 = v15;
      do
      {
        v12 = *v8++;
        *v11++ = v12;
        v10 -= 2;
      }

      while (v10);
      for (i = 0; i != 32; ++i)
      {
        v15[i] = vdivq_f32(v15[i], v7);
      }

      shazam::dsp::FeatureExtractor::flow(a1, v9, v15);
      v7 = v14;
      v6 += v9;
    }

    while (v6 < a2);
  }
}

void shazam::dsp::FeatureExtractor::flow(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    __p = 0;
    v14 = 0;
    v15 = 0;
    v6 = std::vector<float>::reserve(&__p, 0x400uLL);
    if (v4 >= 0x400)
    {
      v7 = 0;
      v8 = v4 >> 10;
      v9 = v4 + 1024;
      do
      {
        if (v4 < v7 || (v9 -= 1024, v9 <= 0x3FF))
        {
          gsl::details::terminate(v6);
        }

        shazam::resample_stream::stream_flow(a1[8]);
        gsl::span<float,18446744073709551615ul>::span<18446744073709551615ul,std::vector<float>,0>(&v11, &__p);
        shazam::dsp::FeatureExtractor::subflow(a1, v11, v12);
        v3 += 4096;
        v7 += 1024;
        v14 = __p;
        --v8;
      }

      while (v8);
    }

    if (v4 != (v4 & 0xFFFFFFFFFFFFFC00))
    {
      gsl::span<float,18446744073709551615ul>::make_subspan(v16, v4 & 0xFFFFFFFFFFFFFC00, (v4 & 0x3FF));
      shazam::resample_stream::stream_flow(a1[8]);
      gsl::span<float,18446744073709551615ul>::span<18446744073709551615ul,std::vector<float>,0>(&v11, &__p);
      shazam::dsp::FeatureExtractor::subflow(a1, v11, v12);
      v4 = v16[0];
    }

    v10 = __p;
    a1[9] += v4;
    if (v10)
    {
      v14 = v10;
      operator delete(v10);
    }
  }
}

void sub_230FD2F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::dsp::FeatureExtractor::subflow(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    shazam::dsp::HCQT<2u,6u>::flow(a1[6], a2, a3);
    v6 = *a1;
  }

  if ((v6 & 2) != 0)
  {
    v7 = a1[7];

    shazam::dsp::CrepeFramer::flow(v7, a2, a3);
  }
}

uint64_t shazam::dsp::HCQT<2u,6u>::flow(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27[0] = a2;
  v27[1] = a3;
  if (a2)
  {
    v5 = result;
    v6 = 0;
    v7 = result + 512;
    do
    {
      subspan = gsl::span<float,18446744073709551615ul>::make_subspan(v27, v6, 0xFFFFFFFFFFFFFFFFLL);
      result = shazam::dsp::cascade_buf::flow(*(v5 + 72), subspan, v9);
      v10 = result;
      if (v11)
      {
        LODWORD(v3) = *(v5 + 528);
        v12 = *(v5 + 512);
        v13 = exp2(v12);
        SamplesWritten = shazam::dsp::cascade_buf::getSamplesWritten(*(v5 + 72), v12);
        if (*(v5 + 4692) == 1)
        {
          v15 = v3 / v13;
          v16 = SamplesWritten / v15;
          if (v16 >= 0x105)
          {
            bzero((*(v5 + 536) + 1728 * (v16 % 0x108)), 0x6C0uLL);
          }
        }

        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v18;
          LODWORD(v15) = *(v5 + 528);
          v20 = 0;
          v21 = (*&v15 / exp2(*(v7 + 8 * v17)));
          do
          {
            v22 = *(v5 + 72);
            v23 = *(v7 + 8 * v17);
            v24[0] = v21;
            v24[1] = v17;
            v25 = v20;
            v26 = v5;
            result = shazam::dsp::cascade_buf::get_frame<shazam::dsp::HCQT<2u,6u>::flow(gsl::span<float,18446744073709551615ul>)::{lambda(gsl::span<float const,18446744073709551615ul>,unsigned long,unsigned long)#1}>(v22, v20 + v23, v17, v24);
            v21 >>= 1;
            ++v20;
          }

          while (v20 != 6);
          v18 = 0;
          v17 = 1;
        }

        while ((v19 & 1) != 0);
      }

      v6 += v10;
    }

    while (v6 != a2);
  }

  return result;
}

BOOL shazam::dsp::FeatureExtractor::generate(uint64_t *a1, uint64_t a2)
{
  v27 = 1115701264;
  v26 = 0;
  v4 = a1[9];
  v28 = *(a1[8] + 16);
  v25 = 0u;
  v29 = v4;
  v5 = *a1;
  if (*a1)
  {
    shazam::dsp::HCQT<2u,6u>::generate(a1[6], &v23);
    v6 = v23;
    if (v23 != v24)
    {
      LODWORD(__p.__begin_) = 1;
      v7 = std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::find<shazam::feature_type>(a1 + 1, &__p);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v8 = v7[3];
      v9 = gsl::make_span<shazam::spectral_peak_compact_t const>(v23, ((v24 - v23) >> 2));
      (*(*v8 + 16))(v21, v8, v9, v10);
      LOWORD(__p.__begin_) = 1;
      WORD1(__p.__begin_) = (*(*v8 + 24))(v8);
      HIDWORD(__p.__begin_) = 0;
      *&__p.__end_ = *v21;
      v20 = v22;
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
      v11 = *(&v25 + 1);
      if (*(&v25 + 1) >= v26)
      {
        v12 = std::vector<shazam::freebird_tensor>::__emplace_back_slow_path<shazam::freebird_tensor&>(&v25, &__p);
      }

      else
      {
        **(&v25 + 1) = __p.__begin_;
        v11[2] = 0;
        v11[3] = 0;
        v11[1] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v11 + 1), __p.__end_, __p.__end_cap_.__value_, (__p.__end_cap_.__value_ - __p.__end_) >> 2);
        v12 = (v11 + 4);
      }

      *(&v25 + 1) = v12;
      ++HIDWORD(v27);
      if (__p.__end_)
      {
        __p.__end_cap_.__value_ = __p.__end_;
        operator delete(__p.__end_);
      }

      if (v21[0])
      {
        v21[1] = v21[0];
        operator delete(v21[0]);
      }

      v6 = v23;
    }

    if (v6)
    {
      v24 = v6;
      operator delete(v6);
    }

    v5 = *a1;
  }

  if ((v5 & 2) != 0)
  {
    shazam::dsp::CrepeFramer::generate(a1[7], &v23);
    v13 = v23;
    if (v23 != v24)
    {
      LOWORD(__p.__begin_) = 2;
      WORD1(__p.__begin_) = shazam::dsp::CrepeFramer::getModelVersion(a1[7]);
      memset(&__p.__begin_ + 4, 0, 20);
      v20 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p.__end_, v23, v24, (v24 - v23) >> 2);
      v14 = *(&v25 + 1);
      if (*(&v25 + 1) >= v26)
      {
        v15 = std::vector<shazam::freebird_tensor>::__emplace_back_slow_path<shazam::freebird_tensor&>(&v25, &__p);
      }

      else
      {
        **(&v25 + 1) = __p.__begin_;
        v14[2] = 0;
        v14[3] = 0;
        v14[1] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v14 + 1), __p.__end_, __p.__end_cap_.__value_, (__p.__end_cap_.__value_ - __p.__end_) >> 2);
        v15 = (v14 + 4);
      }

      *(&v25 + 1) = v15;
      ++HIDWORD(v27);
      if (__p.__end_)
      {
        __p.__end_cap_.__value_ = __p.__end_;
        operator delete(__p.__end_);
      }

      v13 = v23;
    }

    if (v13)
    {
      v24 = v13;
      operator delete(v13);
    }
  }

  v16 = HIDWORD(v27);
  if (HIDWORD(v27))
  {
    shazam::io::pack(&v25, &__p);
    v17 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v17;
      operator delete(v17);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = __p;
  }

  __p.__begin_ = &v25;
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v16 != 0;
}

void sub_230FD3494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a9 = &a19;
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

gsl::details *shazam::dsp::HCQT<2u,6u>::generate@<X0>(gsl::details *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 1172);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (*(result + 67) == *(result + 68))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 132);
  v6 = *(result + 64);
  SamplesWritten = shazam::dsp::cascade_buf::getSamplesWritten(*(result + 9), v6);
  v8 = exp2(v6);
  v9 = 0;
  v35 = SamplesWritten / (v5 / v8);
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = *(v4 + 9);
    v13 = *(v4 + 132);
    v34[0] = v4;
    v34[1] = v9;
    v34[2] = &v35;
    shazam::dsp::cascade_buf::flush<shazam::dsp::HCQT<2u,6u>::generate(void)::{lambda(gsl::span<float const,18446744073709551615ul>,unsigned long,unsigned long)#1}>(v12);
    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  LODWORD(v34[0]) = 0x800000;
  if (*(v4 + 4692) != 1 || v35 <= 0x104)
  {
    v19 = *(v4 + 67);
    v20 = *(v4 + 68);
    if (v20 - v19 != -1728 && (v19 || !v20))
    {
      result = shazam::dsp::HCQT<2u,6u>::scale_to_db(v4, 0x84BDA12F684BDA13 * ((v20 - v19) >> 6), v19, v34, a2);
      goto LABEL_20;
    }

LABEL_37:
    gsl::details::terminate(v14);
  }

  v15 = (v35 - 260) % 0x108;
  v16 = v35 % 0x108;
  v17 = *(v4 + 67);
  v18 = v35 % 0x108 - v15;
  if (v35 % 0x108 <= v15)
  {
    if (v17)
    {
      v14 = shazam::dsp::HCQT<2u,6u>::scale_to_db(v4, 1749801491 * ((456192 - 1728 * v15) >> 6), v17 + 1728 * v15, v34, a2);
      v21 = *(v4 + 67);
      if (!v16 || v21 != 0)
      {
        result = shazam::dsp::HCQT<2u,6u>::scale_to_db(v4, v16, v21, v34, a2);
        goto LABEL_20;
      }
    }

    goto LABEL_37;
  }

  if (v18 == -1 || !v17)
  {
    goto LABEL_37;
  }

  result = shazam::dsp::HCQT<2u,6u>::scale_to_db(v4, v18, v17 + 1728 * v15, v34, a2);
LABEL_20:
  v23 = *a2;
  v24 = a2[1];
  if (*a2 != v24)
  {
    v25 = (v23 + 4);
    do
    {
      v26 = 0;
      v27 = v25;
      do
      {
        v28 = v27;
        v29 = 36;
        do
        {
          v30 = *v34;
          v31 = *(v28 - 1);
          v32 = *v28;
          if (*v34 >= v31)
          {
            v30 = *(v28 - 1);
          }

          if (v31 < (*v34 + -80.0))
          {
            v30 = *v34 + -80.0;
          }

          *(v28 - 1) = v30;
          v33 = *v34;
          if (*v34 >= v32)
          {
            v33 = v32;
          }

          if (v32 < (*v34 + -80.0))
          {
            v33 = *v34 + -80.0;
          }

          *v28 = v33;
          v28 += 2;
          --v29;
        }

        while (v29);
        ++v26;
        v27 += 72;
      }

      while (v26 != 6);
      v23 += 1728;
      v25 += 432;
    }

    while (v23 != v24);
  }

  *(v4 + 1172) = v3;
  return result;
}

void sub_230FD37BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t shazam::dsp::FeatureExtractor::getAudioLengthMs(shazam::dsp::FeatureExtractor *this, double a2, double a3)
{
  if (!*this)
  {
    return 0;
  }

  v3 = *(this + 9);
  if (!v3)
  {
    return 0;
  }

  LODWORD(a3) = *(*(this + 8) + 16);
  return (v3 / (*&a3 / 1000.0));
}

void *shazam::dsp::HCQT<2u,6u>::reset(uint64_t a1)
{
  shazam::dsp::cascade_buf::reset(*(a1 + 72));
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      result = shazam::dsp::cascade_buf::set_read_point(*(a1 + 72), (v4 + *(a1 + 512 + 8 * v2)), v2, 0);
      ++v4;
    }

    while (v4 != 6);
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  *(a1 + 544) = *(a1 + 536);
  *(a1 + 4688) = 0;
  return result;
}

void sub_230FD3940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    std::unique_ptr<shazam::resample_stream>::reset[abi:ne200100](&a9, 0);
  }

  _Unwind_Resume(exception_object);
}

shazam::resample_stream *std::unique_ptr<shazam::resample_stream>::reset[abi:ne200100](shazam::resample_stream **a1, shazam::resample_stream *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    shazam::resample_stream::~resample_stream(result);

    JUMPOUT(0x231921F20);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::unique_ptr<shazam::dsp::HCQT<2u,6u>>::reset[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    shazam::dsp::HCQT<2u,6u>::~HCQT(result);

    JUMPOUT(0x231921F20);
  }

  return result;
}

uint64_t *shazam::dsp::HCQT<2u,6u>::~HCQT(uint64_t *a1)
{
  v2 = a1[583];
  if (v2)
  {
    a1[584] = v2;
    operator delete(v2);
  }

  v3 = a1[67];
  if (v3)
  {
    a1[68] = v3;
    operator delete(v3);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v5 = a1[i + 61];
    if (v5)
    {
      a1[i + 62] = v5;
      operator delete(v5);
    }
  }

  v6 = 36;
  do
  {
    v7 = a1[v6 + 7];
    if (v7)
    {
      a1[v6 + 8] = v7;
      operator delete(v7);
    }

    v6 -= 3;
  }

  while (v6 * 8);
  std::unique_ptr<shazam::dsp::cascade_buf>::reset[abi:ne200100](a1 + 9, 0);
  v8 = a1[5];
  if (v8)
  {
    a1[6] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    (*(*v10 + 48))(v10);
  }

  return a1;
}

void shazam::SHZ_FFT::~SHZ_FFT(shazam::SHZ_FFT *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }
}

uint64_t **std::unique_ptr<shazam::dsp::CrepeFramer>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[7];
    v2[7] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    std::unique_ptr<shazam::dsp::cascade_buf>::reset[abi:ne200100](v2 + 3, 0);

    JUMPOUT(0x231921F20);
  }

  return result;
}

void sub_230FD40A8(_Unwind_Exception *a1)
{
  v4 = v2[574];
  if (v4)
  {
    v1[584] = v4;
    operator delete(v4);
  }

  v5 = v2[58];
  if (v5)
  {
    v1[68] = v5;
    operator delete(v5);
  }

  v6 = v1 + 62;
  v7 = -48;
  while (1)
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      *v6 = v8;
      operator delete(v8);
    }

    v6 -= 3;
    v7 += 24;
    if (!v7)
    {
      v9 = v1 + 44;
      v10 = -288;
      while (1)
      {
        v11 = *(v9 - 1);
        if (v11)
        {
          *v9 = v11;
          operator delete(v11);
        }

        v9 -= 3;
        v10 += 24;
        if (!v10)
        {
          std::unique_ptr<shazam::dsp::cascade_buf>::reset[abi:ne200100](v2, 0);
          shazam::SHZ_FFT::~SHZ_FFT(v1);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

gsl::details *shazam::element_op<std::complex<float>,shazam::dsp::HCQT<2u,6u>::HCQT(unsigned int,float,BOOL)::{lambda(std::complex<float> &)#1}>(gsl::details *result, uint64_t a2, float *a3)
{
  v5 = a2 + 8 * result;
  v8 = a2;
  v9 = v5;
  v10 = a2;
  while (v10 != v5)
  {
    v6 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v8);
    *v6 = vmul_n_f32(*v6, *a3);
    result = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v8);
    if (v8 != a2 || v9 != v5)
    {
      gsl::details::terminate(result);
    }
  }

  return result;
}

gsl::details *shazam::element_op<float,shazam::dsp::HCQT<2u,6u>::HCQT(unsigned int,float,BOOL)::{lambda(float &)#2}>(gsl::details *result, uint64_t a2, float *a3)
{
  v5 = a2 + 4 * result;
  v7 = a2;
  v8 = v5;
  v9 = a2;
  while (v9 != v5)
  {
    v6 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v7);
    *v6 = sqrtf(*a3 / *v6);
    result = gsl::details::span_iterator<float>::operator++(&v7);
    if (v7 != a2 || v8 != v5)
    {
      gsl::details::terminate(result);
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::__emplace_unique_key_args<shazam::feature_type,std::piecewise_construct_t const&,std::tuple<shazam::feature_type&&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

gsl::details *shazam::dsp::cascade_buf::get_frame<shazam::dsp::HCQT<2u,6u>::flow(gsl::span<float,18446744073709551615ul>)::{lambda(gsl::span<float const,18446744073709551615ul>,unsigned long,unsigned long)#1}>(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a2;
  v15 = a3 | (a2 << 32);
  v5 = a1[6];
  if (a2 >= ((a1[7] - v5) >> 3))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = *(v5 + 8 * a2);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a1 + 9, &v15);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = *(result + 3);
  v11 = v8 - v10;
  if (v8 < v10)
  {
    v11 = 0;
  }

  if (v11 >= 0x400)
  {
    v12 = a1[3];
    if (0xAAAAAAAAAAAAAAABLL * ((a1[4] - v12) >> 3) > v4)
    {
      v13 = (v12 + 24 * v4);
      if (*v13)
      {
        if (*(*(a4 + 24) + 4692))
        {
          v14 = v10 / *a4 % 0x108;
        }

        else
        {
          v14 = v10 / *a4;
        }

        shazam::dsp::HCQT<2u,6u>::flow_frame(*(a4 + 24), *v13 + 4 * (((v13[2] >> 1) - 1) & v10), v14, *(a4 + 8), *(a4 + 16));
      }

      gsl::details::terminate(result);
    }

    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return result;
}

void shazam::dsp::HCQT<2u,6u>::flow_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (0x84BDA12F684BDA13 * ((*(a1 + 544) - *(a1 + 536)) >> 6) < a3 + 1)
  {
    std::vector<shazam::dsp::HCQT<2u,6u>::timeframe,std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>::resize((a1 + 536), a3 + 1);
  }

  v8 = shazam::SHZ_FFT::fftr(a1);
  if (b16k_len[0] && *(a1 + 532) == 16000)
  {
    v16 = 513;
    v17 = a1 + 560;
    v14 = 18468;
    v15 = &b16k + 886464 * a4 + 147744 * a5;
    v9 = b16k_len[6 * a4 + a5];
  }

  else
  {
    v16 = 513;
    v17 = a1 + 560;
    v10 = a1 + 144 * a4 + 24 * a5;
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    v14 = (v12 - v11) >> 3;
    if (v12 - v11 == -8 || ((v15 = v11) == 0 ? (v13 = v12 == 0) : (v13 = 1), !v13))
    {
      gsl::details::terminate(v8);
    }

    v9 = *(a1 + 48 * a4 + 8 * a5 + 368);
  }

  shazam::dsp::matmul(&v16, &v14, v9, (a1 + 4664));
}

void std::vector<shazam::dsp::HCQT<2u,6u>::timeframe,std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>::resize(void *a1, unint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 6);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<shazam::dsp::HCQT<2u,6u>::timeframe,std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 1728 * a2;
  }
}

void std::vector<shazam::dsp::HCQT<2u,6u>::timeframe,std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x84BDA12F684BDA13 * ((v4 - v5) >> 6) >= a2)
  {
    if (a2)
    {
      v10 = 1728 * ((1728 * a2 - 1728) / 0x6C0) + 1728;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x84BDA12F684BDA13 * ((v5 - *a1) >> 6);
    if (v6 + a2 > 0x25ED097B425ED0)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x84BDA12F684BDA13 * ((v4 - *a1) >> 6);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x12F684BDA12F68)
    {
      v9 = 0x25ED097B425ED0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>(a1, v9);
    }

    v11 = 1728 * v6;
    v12 = 1728 * ((1728 * a2 - 1728) / 0x6C0) + 1728;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x25ED097B425ED1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void shazam::dsp::cascade_buf::flush<shazam::dsp::HCQT<2u,6u>::generate(void)::{lambda(gsl::span<float const,18446744073709551615ul>,unsigned long,unsigned long)#1}>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  bzero(v43, 0x1000uLL);
  v9 = *(v8 + 112);
  if (v9)
  {
    memcpy(v43, (**(v8 + 24) + 4 * (((*(*(v8 + 24) + 16) >> 1) - 1) & (**(v8 + 48) - v9))), 4 * v9);
  }

  v41 = 0;
  __p = 0;
  v42 = 0;
  std::vector<float>::reserve(&__p, 0x200uLL);
  bzero(__dst, 0x1000uLL);
  if (*(v8 + 32) != *(v8 + 24))
  {
    v10 = 0;
    v11 = 1024;
    v35 = v4;
    do
    {
      v38 = v35 | (v10 << 32);
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((v8 + 72), &v38);
      if (v12)
      {
        v13 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>((v8 + 72), &v38);
        if (!v13)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v14 = v13[3];
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v8 + 48);
      if (v10 >= (*(v8 + 56) - v15) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v36 = v11;
      v16 = *(v15 + 8 * v10);
      if (v16 >= v14)
      {
        v17 = v16 - v14;
      }

      else
      {
        v17 = 0;
      }

      if (v10 && v12 && v17 > 0x400)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Invalid read offset");
        exception->__vftable = (MEMORY[0x277D828E8] + 16);
        __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
      }

      v18 = exp2(v10);
      if ((1024 / v6 + (((1024 / v6) & 0x8000) >> 15)) >> 1 <= 0)
      {
        if (v12 && !v10 && v17)
        {
LABEL_22:
          bzero(__dst, 0x1000uLL);
          if (v17 >= 0x400)
          {
            v19 = 1024;
          }

          else
          {
            v19 = v17;
          }

          memcpy(__dst, (*(*(v8 + 24) + 24 * v10) + 4 * (((*(*(v8 + 24) + 24 * v10 + 16) >> 1) - 1) & v14)), 4 * v19);
          if (v17 <= 0x3FF)
          {
            v21 = (v19 + v14) & 0x3FF;
            if (v21 <= v19)
            {
              v22 = v19;
            }

            else
            {
              v22 = (v19 + v14) & 0x3FF;
            }

            memcpy(&__dst[v19], &v43[v21], 4096 - 4 * v22);
          }

          v23 = *v2;
          v24 = v2[1];
          LODWORD(v20) = *(*v2 + 528);
          v25 = v20 / v18;
          v26 = *(*v2 + 4692);
          v27 = v14 / v25;
          v28 = *(*v2 + 8 * v24 + 512);
          v29 = v2[2];
          if (v27 >= *v29)
          {
            *v29 = v27 + 1;
            v24 = v2[1];
          }

          if (v26)
          {
            v30 = v27 % 0x108;
          }

          else
          {
            v30 = v14 / v25;
          }

          shazam::dsp::HCQT<2u,6u>::flow_frame(v23, __dst, v30, v24, v10 - v28);
        }
      }

      else if (v12)
      {
        goto LABEL_22;
      }

      if (v10 < (*(v8 + 8) - *v8) >> 3)
      {
        shazam::resample_stream::resample_stream(v37, *(*v8 + 8 * v10));
        shazam::resample_stream::stream_flow(v37);
        v31 = __p;
        v32 = v41;
        v33 = __p;
        if (__p != v41)
        {
          do
          {
            *v33 = *v33 * 1.4142;
            ++v33;
          }

          while (v33 != v32);
        }

        bzero(v43, 0x1000uLL);
        memcpy(v43, v31, v32 - v31);
        v41 = v31;
        shazam::resample_stream::~resample_stream(v37);
      }

      v6 = v6 >> 1;
      v11 = v36 / 2;
      ++v10;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 32) - *(v8 + 24)) >> 3));
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }
}

void sub_230FD4F7C(_Unwind_Exception *a1)
{
  v2 = STACK[0x10A0];
  if (STACK[0x10A0])
  {
    STACK[0x10A8] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

gsl::details *shazam::dsp::HCQT<2u,6u>::scale_to_db(gsl::details *result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5)
{
  v6 = result;
  v7 = a3 + 1728 * a2;
  v36 = a3;
  v37 = v7;
  v38 = a3;
  v32 = v7;
  while (v38 != v7)
  {
    v8 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v36);
    memcpy(__dst, v8, sizeof(__dst));
    for (i = 0; i != 6; ++i)
    {
      for (j = 0; j != 36; ++j)
      {
        v11 = 0;
        v12 = &__dst[18 * i] + 8 * j;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = *&v12[4 * v11];
          v16 = *(v6 + 1172);
          if (v16 >= v15)
          {
            v17 = *&v12[4 * v11];
          }

          else
          {
            v17 = *(v6 + 1172);
          }

          if (v15 >= 0.00001)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0.00001;
          }

          v19 = log10f(v18 / fmaxf(v16, 0.00001));
          v13 = 0;
          v20 = v19 * 20.0;
          *&v12[4 * v11] = v20;
          if (*a4 >= v20)
          {
            v20 = *a4;
          }

          *a4 = v20;
          v11 = 1;
        }

        while ((v14 & 1) != 0);
      }
    }

    v22 = *(a5 + 8);
    v21 = *(a5 + 16);
    if (v22 >= v21)
    {
      v24 = 0x84BDA12F684BDA13 * ((v22 - *a5) >> 6);
      v25 = v24 + 1;
      if (v24 + 1 > 0x25ED097B425ED0)
      {
        std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0x84BDA12F684BDA13 * ((v21 - *a5) >> 6);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x12F684BDA12F68)
      {
        v27 = 0x25ED097B425ED0;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::HCQT<2u,6u>::timeframe>>(a5, v27);
      }

      v28 = (v22 - *a5) >> 6 << 6;
      memcpy((1728 * v24), __dst, 0x6C0uLL);
      v23 = 1728 * v24 + 1728;
      v29 = *(a5 + 8) - *a5;
      v30 = (v28 - v29);
      memcpy(v30, *a5, v29);
      v31 = *a5;
      *a5 = v30;
      *(a5 + 8) = v23;
      *(a5 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      memcpy(*(a5 + 8), __dst, 0x6C0uLL);
      v23 = v22 + 1728;
    }

    *(a5 + 8) = v23;
    result = gsl::details::span_iterator<shazam::dsp::HCQT<2u,6u>::timeframe const>::operator++(&v36);
    v7 = v32;
    if (v36 != a3 || v37 != v32)
    {
      gsl::details::terminate(result);
    }
  }

  return result;
}

gsl::details *gsl::details::span_iterator<shazam::dsp::HCQT<2u,6u>::timeframe const>::operator++(gsl::details *result)
{
  if (!*result || (v1 = *(result + 2)) == 0 || (v2 = *(result + 1)) == 0 || v1 >= v2)
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 + 1728;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::find<shazam::feature_type>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::vector<shazam::freebird_tensor>::__emplace_back_slow_path<shazam::freebird_tensor&>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::freebird_tensor>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  v17 = (32 * v2);
  *v8 = *a2;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(32 * v2 + 8, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<shazam::freebird_tensor>::~__split_buffer(&v15);
  return v14;
}

void sub_230FD5420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<shazam::freebird_tensor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void shazam::fft_stream::fft_stream(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char a6)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_2845C6088;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 40;
  *(a1 + 88) = 0;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 96) = v6;
  v7 = a2[2];
  *(a1 + 104) = a2[1];
  *(a1 + 112) = v7;
  v8 = *a3;
  *a3 = 0;
  *(a1 + 120) = v8;
  v9 = a3[2];
  *(a1 + 128) = a3[1];
  *(a1 + 136) = v9;
  v10 = *a4;
  *a4 = 0;
  *(a1 + 144) = v10;
  v11 = a4[2];
  *(a1 + 152) = a4[1];
  *(a1 + 160) = v11;
  v12 = *a5;
  *a5 = 0;
  *(a1 + 168) = v12;
  v13 = a5[2];
  *(a1 + 176) = a5[1];
  *(a1 + 184) = v13;
  *(a1 + 192) = a6;
  *(a1 + 200) = xmmword_231002B40;
  shazam::SHZ_FFT::SHZ_FFT((a1 + 216), 0x800);
}

void sub_230FD5504(_Unwind_Exception *a1)
{
  v3 = *(v1 + 168);
  *(v1 + 168) = 0;
  if (v3)
  {
    (*(v1 + 176))();
  }

  v4 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v4)
  {
    (*(v1 + 152))();
  }

  v5 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (v5)
  {
    (*(v1 + 128))();
  }

  v6 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v6)
  {
    (*(v1 + 104))();
  }

  shazam::SpectralOutput::~SpectralOutput(v1);
  _Unwind_Resume(a1);
}

void *shazam::fft_stream::create@<X0>(shazam::fft_stream *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  v29 = *MEMORY[0x277D85DE8];
  result = malloc_type_aligned_alloc(0x10uLL, 0x2010uLL, 0xB425FBCFuLL);
  if (result)
  {
    v7 = result;
    bzero(result, 0x2010uLL);
    v24 = v7;
    v25 = shazam::aligned_free;
    v26 = 2048;
    v27 = 1;
    if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2048;
    }

    result = malloc_type_aligned_alloc(0x10uLL, (((v8 >> 11) & 1) << 13) | 0x10, 0xB425FBCFuLL);
    v9 = result;
    if (result)
    {
      bzero(result, (((v8 >> 11) & 1) << 13) | 0x10);
      v20 = v9;
      v21 = shazam::aligned_free;
      v22 = v8;
      v23 = 1;
      result = malloc_type_aligned_alloc(0x10uLL, 0x2020uLL, 0xB425FBCFuLL);
      v10 = result;
      if (result)
      {
        bzero(result, 0x2020uLL);
        v16 = v10;
        v17 = shazam::aligned_free;
        v18 = 2052;
        v19 = 1;
        if (v4)
        {
          v11 = 0;
        }

        else
        {
          v11 = 1025;
        }

        result = malloc_type_aligned_alloc(0x10uLL, (((v11 >> 10) & 1) << 12) | 0x10, 0xB425FBCFuLL);
        v12 = result;
        if (result)
        {
          bzero(result, (((v11 >> 10) & 1) << 12) | 0x10);
          v14[0] = v12;
          v14[1] = shazam::aligned_free;
          v14[2] = v11;
          v15 = 1;
          shazam::fft_stream::fft_stream(&v28, &v24, &v20, &v16, v14, v4);
        }

        LODWORD(v14[0]) = 512;
        *a3 = 512;
        *(a3 + 296) = 0;
        if (v19)
        {
          result = v16;
          v16 = 0;
          if (result)
          {
            result = (v17)(result);
          }
        }
      }

      else
      {
        *a3 = 512;
        *(a3 + 296) = 0;
      }

      if (v23)
      {
        result = v20;
        v20 = 0;
        if (result)
        {
          result = (v21)(result);
        }
      }
    }

    else
    {
      *a3 = 512;
      *(a3 + 296) = 0;
    }

    if (v27)
    {
      result = v24;
      v24 = 0;
      if (result)
      {
        result = (v25)(result);
      }
    }
  }

  else
  {
    *a3 = 512;
    *(a3 + 296) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_230FD58E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void shazam::fft_stream::reset(void **this)
{
  bzero(this[12], ((4 * this[14]) & 0xFFFFFFFFFFFFFFF0) + 16);
  bzero(this[18], ((4 * this[20]) & 0xFFFFFFFFFFFFFFF0) + 16);
  this[25] = 0;
  *(this + 72) = 0;
  bzero(this[21], ((4 * this[23]) & 0xFFFFFFFFFFFFFFF0) + 16);

  shazam::SpectralOutput::reset(this);
}

uint64_t shazam::fft_stream::checkpoint(shazam::fft_stream *this)
{
  if (*(this + 26) != -1)
  {
    return 503;
  }

  *(this + 26) = *(this + 25);
  memcpy(*(this + 15), *(this + 12), ((4 * *(this + 17)) & 0xFFFFFFFFFFFFFFF0) + 16);
  return 0;
}

uint64_t shazam::fft_stream::rewind(shazam::fft_stream *this)
{
  v1 = *(this + 26);
  if (v1 == -1)
  {
    return 504;
  }

  *(this + 25) = v1;
  memcpy(*(this + 12), *(this + 15), ((4 * *(this + 14)) & 0xFFFFFFFFFFFFFFF0) + 16);
  *(this + 26) = -1;
  bzero(*(this + 15), ((4 * *(this + 17)) & 0xFFFFFFFFFFFFFFF0) + 16);
  return 0;
}

void shazam::fft_stream::stream_flow(uint64_t a1, char *a2, float *a3)
{
  v6 = *(a1 + 112);
  v7 = *(a1 + 200) % v6;
  v8 = v6 - v7;
  if (v8 >= 0x80)
  {
    v9 = 128;
  }

  else
  {
    v9 = v8;
  }

  memcpy((*(a1 + 96) + 4 * v7), a2, 4 * v9);
  memcpy(*(a1 + 96), &a2[4 * v9], 512 - 4 * v9);
  v10 = *(a1 + 200);
  *(a1 + 200) = v10 + 128;
  v11 = *(a1 + 144);
  v12 = *(a1 + 112);
  v13 = (v10 - 1920) % v12;
  v14 = v12 - v13;
  if (v14 >= 0x800)
  {
    v15 = 2048;
  }

  else
  {
    v15 = v14;
  }

  memcpy(*(a1 + 144), (*(a1 + 96) + 4 * v13), 4 * v15);
  memcpy((v11 + 4 * v15), *(a1 + 96), 0x2000 - 4 * v15);
  v16 = *(a1 + 144);
  if (*(a1 + 192) == 1)
  {
    shazam::SHZ_FFT::complexform(a1 + 216, v16);
    shazam::fft_stream::stream_flow_spectral_output(a1, a3);
    v17 = 1025;
  }

  else
  {
    v18 = *(a1 + 168);
    shazam::SHZ_FFT::complexform(a1 + 216, v16);
    memcpy(a3, (*(a1 + 168) + 88), 0xAD4uLL);
    shazam::fft_stream::stream_flow_spectral_output(a1, *(a1 + 168));
    v17 = 693;
  }

  do
  {
    v19 = *a3;
    if (*a3 <= 1.0e-10)
    {
      v19 = 1.0e-10;
    }

    *a3++ = v19;
    --v17;
  }

  while (v17);
  ++*(a1 + 288);
}

void shazam::fft_stream::stream_flow_spectral_output(shazam::fft_stream *this, const float *a2)
{
  if (shazam::SpectralOutput::is_enabled(this))
  {
    if (shazam::SpectralOutput::should_use_frame(this, *(this + 72)))
    {

      shazam::SpectralOutput::process_frame(this, a2);
    }
  }

  else if (shazam::SpectralOutput::is_legacy_enabled(this) && shazam::SpectralOutput::should_use_frame(this, *(this + 72)))
  {
    frame = shazam::SpectralOutput::get_frame(this, *(this + 18));
    v5 = *(this + 22);
    if (v5 <= 0xA)
    {
      v6 = frame;
      v7 = 0;
      do
      {
        v8 = 0;
        v9 = 0.0;
        do
        {
          v9 = v9 + (logf(a2[v8++] + 1.0) * 1477.3);
        }

        while (1 << v5 != v8);
        *(v6 + 4 * v7++) = v9 >> v5;
        a2 += 1 << v5;
      }

      while (v7 != 0x400uLL >> v5);
    }

    ++*(this + 18);
  }
}

uint64_t _ZNKSt3__110__function6__funcIN6shazam14SpectralOutput8callbackMUlPKfmE_ENS_9allocatorIS6_EEFvS5_mEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN6shazam14SpectralOutput8callbackMUlPKfmE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void shazam::SpectralOutput::~SpectralOutput(shazam::SpectralOutput *this)
{
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](this + 40);
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x231921F00](v2, 0x1000C8052888210);
  }
}

void sub_230FD63B4(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    [SHFeatureExtractor initWithFeatureConfiguration:a3 error:? completionHandler:?];
  }

  std::unique_ptr<CoreMLFeatureModel>::~unique_ptr[abi:ne200100](va);

  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    v13 = v12[4];
    if (v13 >= 0)
    {
      v13 = -100;
    }

    [v5 convertException:v12 toError:v6 code:v13];
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    if (v6)
    {
      *v6 = v14[2];
    }

    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    [v5 convertException:__cxa_begin_catch(a1) toError:v6 code:-100];

    __cxa_end_catch();
  }

  JUMPOUT(0x230FD6384);
}

BNNSGraphFeatureModel **std::unique_ptr<BNNSGraphFeatureModel>::~unique_ptr[abi:ne200100](BNNSGraphFeatureModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    BNNSGraphFeatureModel::~BNNSGraphFeatureModel(v2);
    MEMORY[0x231921F20]();
  }

  return a1;
}

id **std::unique_ptr<CoreMLFeatureModel>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CoreMLFeatureModel::~CoreMLFeatureModel(v2);
    MEMORY[0x231921F20]();
  }

  return a1;
}

void sub_230FD68E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v15 = __cxa_begin_catch(exception_object);
    v16 = v15[4];
    if (v16 >= 0)
    {
      v16 = -100;
    }

    [v12 convertException:v15 toError:v11 code:v16];
  }

  else if (a2 == 2)
  {
    v17 = __cxa_begin_catch(exception_object);
    if (v11)
    {
      *v11 = v17[2];
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    [v12 convertException:__cxa_begin_catch(exception_object) toError:v11 code:-100];
  }

  __cxa_end_catch();
  JUMPOUT(0x230FD68C0);
}

shazam::resample_stream **std::unique_ptr<shazam::dsp::FeatureExtractor>::reset[abi:ne200100](shazam::resample_stream ***a1, shazam::resample_stream **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    shazam::dsp::FeatureExtractor::~FeatureExtractor(result);

    JUMPOUT(0x231921F20);
  }

  return result;
}

void shazam::dsp::FeatureExtractor::~FeatureExtractor(shazam::resample_stream **this)
{
  std::unique_ptr<shazam::resample_stream>::~unique_ptr[abi:ne200100](this + 8);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    v3 = v2[7];
    v2[7] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    std::unique_ptr<shazam::dsp::cascade_buf>::~unique_ptr[abi:ne200100](v2 + 3);
    MEMORY[0x231921F20](v2, 0x1020C400147A1ECLL);
  }

  v5 = this[6];
  this[6] = 0;
  if (v5)
  {
    v6 = shazam::dsp::HCQT<2u,6u>::~HCQT(v5);
    MEMORY[0x231921F20](v6, 0x10A0C40B5D43A4ELL);
  }

  std::__hash_table<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::__unordered_map_hasher<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::hash<shazam::feature_type>,std::equal_to<shazam::feature_type>,true>,std::__unordered_map_equal<shazam::feature_type,std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>,std::equal_to<shazam::feature_type>,std::hash<shazam::feature_type>,true>,std::allocator<std::__hash_value_type<shazam::feature_type,std::unique_ptr<shazam::dsp::FeatureModel>>>>::~__hash_table((this + 1));
}

uint64_t *std::unique_ptr<shazam::dsp::cascade_buf>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v2 + 72);
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v5 = (v2 + 24);
    std::vector<shazam::static_aligned_dual_buffer<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = v2;
    std::vector<std::unique_ptr<shazam::resample_stream>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x231921F20](v2, 0x10B0C40FA719F4DLL);
  }

  return a1;
}

uint64_t shazam::LegacyFatSigInfo::LegacyFatSigInfo(uint64_t this, int a2)
{
  *(this + 40) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = 0xFACADE99CAFE2580;
  v2 = &dword_231002BFC;
  v3 = 56;
  while (*v2 != a2)
  {
    v2 += 2;
    v3 -= 8;
    if (!v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = (*(v2 - 1) & 0xF) << 27;
LABEL_6:
  *(this + 28) = v4;
  *(this + 44) = 7864320;
  return this;
}

uint64_t shazam::LegacyFatSigInfo::set_audio_sample_length(uint64_t this, uint64_t a2)
{
  *(this + 40) = a2;
  *(this + 44) = WORD2(a2);
  return this;
}

uint64_t shazam::LegacyFatSigInfo::get_raw_sample_rate(shazam::LegacyFatSigInfo *this)
{
  v1 = &dword_231002BFC;
  v2 = 56;
  while (*(v1 - 1) != ((*(this + 7) >> 27) & 0xF))
  {
    v1 += 2;
    v2 -= 8;
    if (!v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t shazam::LegacyFatSigInfo::set_stream_pos(uint64_t result, uint64_t a2)
{
  *(result + 32) = a2;
  *(result + 36) = BYTE4(a2);
  return result;
}

double shazam::algo<(AlgoType)12>::matrix_for@<D0>(_OWORD *a1@<X8>)
{
  *a1 = shazam::algo<(AlgoType)12>::matrix_for (shazam::QueryDensity)::query;
  a1[1] = unk_231002C40;
  *&result = 0xB0909060000;
  a1[2] = xmmword_231002C50;
  return result;
}

double shazam::algo<(AlgoType)12>::matrix_for@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0x902070B0000;
  result = *&shazam::algo<(AlgoType)12>::matrix_for (shazam::DBDensity)::db;
  *a1 = shazam::algo<(AlgoType)12>::matrix_for (shazam::DBDensity)::db;
  *(a1 + 16) = unk_231002C70;
  return result;
}

uint64_t shazam::algo<(AlgoType)12>::tzones_for@<X0>(uint64_t a1@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  {
    v4 = 6;
    v5 = 0xBF00000002;
    v6 = 10;
    v7 = 0xF600000015;
    v8 = 11;
    v9 = 0xF600000001;
    v10 = 12;
    v11 = 0xDF0000000ALL;
    v12 = 13;
    v13 = 0x6900000002;
    std::unordered_map<int,shazam::target_zone_2d>::unordered_map(&shazam::algo<(AlgoType)12>::tzones_for (void)::m, &v4, 5);
    __cxa_atexit(std::unordered_map<int,shazam::target_zone_2d>::~unordered_map[abi:ne200100], &shazam::algo<(AlgoType)12>::tzones_for (void)::m, &dword_230F52000);
  }

  result = std::unordered_map<int,shazam::target_zone_2d>::unordered_map(a1, &shazam::algo<(AlgoType)12>::tzones_for (void)::m);
  *(a1 + 40) = 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_230FD6EF0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::unordered_map<int,shazam::target_zone_2d>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::__emplace_unique_key_args<int,std::pair<int const,shazam::target_zone_2d> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::__emplace_unique_key_args<int,std::pair<int const,shazam::target_zone_2d> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<int,shazam::target_zone_2d>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 12 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::__emplace_unique_key_args<int,std::pair<int const,shazam::target_zone_2d> const&>(a1, a2);
      a2 += 3;
      v5 -= 12;
    }

    while (v5);
  }

  return a1;
}

_DWORD *shazam::sig_alignment::setZeroPadding(_DWORD *result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      return result;
    }

LABEL_6:
    *result += 15;
    return result;
  }

  if (a2)
  {
    ++result;
    goto LABEL_6;
  }

  return result;
}

__n128 shazam::algo<(AlgoType)1>::matrix_for@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v2 = &shazam::algo<(AlgoType)1>::matrix_for (shazam::QueryDensity)::query + 48 * a1;
  v3 = *(v2 + 1);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 2);
  *(a2 + 32) = result;
  return result;
}

{
  if (a1 >= 7)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v2 = &shazam::algo<(AlgoType)1>::matrix_for (shazam::DBDensity)::db + 40 * a1;
  result = *v2;
  v4 = *(v2 + 1);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 4);
  return result;
}

void sub_230FD741C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a2 == 3)
  {
    [v18 ConvertSystemError:__cxa_begin_catch(a1) toError:v17];
    __cxa_end_catch();
  }

  else
  {
    v21 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v18 ConvertException:v21 toError:v17];
    }

    else
    {
      [v18 FillUnknownError:v17];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x230FD73ECLL);
}

_DWORD *shazam::ShazamKitHeader::validate(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  result = shazam::reinterpret_safer<shazam::ShazamKitHeader const*,0>(v8);
  if (*result != 629155200)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x67);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (v8[0] <= result[2])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::reinterpret_safer<shazam::ShazamKitHeader const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0xBuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

gsl::details *shazam::ShazamKitHeader::pop(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return gsl::span<char const,18446744073709551615ul>::make_subspan(v3, *(a2 + 8), 0xFFFFFFFFFFFFFFFFLL);
}

void shazam::dsp::constant_q_frequencies(shazam::dsp *this@<X0>, float a2@<S0>, float a3@<S1>, unsigned int a4@<W1>, const void **a5@<X8>)
{
  v6 = this;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<float>::reserve(a5, a4 * this);
  if (v6)
  {
    v10 = 0;
    for (i = 0; i != v6; ++i)
    {
      v12 = v10;
      v13 = a4;
      if (a4)
      {
        do
        {
          v14 = exp2f(v12 / a4) * a2;
          if (v14 <= a3)
          {
            std::vector<float>::push_back[abi:ne200100](a5, &v14);
          }

          ++v12;
          --v13;
        }

        while (v13);
      }

      v10 += a4;
    }
  }
}

void sub_230FD7B58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void octave_frequencies_lengths(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>, float a5@<S0>)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v9 = exp2f(1.0 / a3);
  v10 = (1.0 / (((v9 * v9) + -1.0) / ((v9 * v9) + 1.0))) * a5;
  v11 = a2 + 4 * a1;
  v17 = a2;
  v18 = v11;
  v19 = a2;
  v12 = 1.1755e-38;
  while (v19 != v11)
  {
    v16 = v10 / *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v17);
    std::vector<float>::push_back[abi:ne200100](&__p, &v16);
    if (v16 >= v12)
    {
      v12 = v16;
    }

    v13 = gsl::details::span_iterator<float>::operator++(&v17);
    if (v17 != a2 || v18 != v11)
    {
      gsl::details::terminate(v13);
    }
  }

  v14 = log2f(ceilf(v12));
  if (exp2f(ceilf(v14)) > 0x400)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "matrix size to large at requested sample rate");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2788F7BA0, MEMORY[0x277D82610]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4, __p, v21, (v21 - __p) >> 2);
  a4[3] = 1024;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_230FD7D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  __cxa_free_exception(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float find_sparsity_threshold(uint64_t a1, uint64_t a2, float a3)
{
  v5 = a2 + 4 * a1;
  v16 = a2;
  v17 = v5;
  v18 = a2;
  v15[0] = a2;
  v15[1] = v5;
  v15[2] = v5;
  std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float>,0>(&v19, &v16, v15);
  v16 = a2;
  v17 = v5;
  v6 = 0.0;
  v18 = a2;
  while (v18 != v5)
  {
    v6 = v6 + *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v16);
    v7 = gsl::details::span_iterator<float>::operator++(&v16);
    if (v16 != a2 || v17 != v5)
    {
      gsl::details::terminate(v7);
    }
  }

  std::__sort<std::__less<float,float> &,float *>();
  v9 = 0.0;
  if (v19 != v20)
  {
    v10 = *v19;
    if (*v19 <= (v6 * a3))
    {
      v11 = v10 + 0.0;
      v12 = v19 + 1;
      do
      {
        v9 = v10;
        if (v12 == v20)
        {
          break;
        }

        v13 = *v12++;
        v10 = v13;
        v11 = v11 + v13;
      }

      while (v11 <= (v6 * a3));
    }
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v9;
}

void sub_230FD7E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sum_abs(gsl::details *a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFFFELL;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    v8 = 0.0;
    v7 = 0.0;
    if ((a1 & 1) == 0)
    {
      return v7 + v8;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = (a2 + 8);
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    if (a1 <= v5 + 1)
    {
      gsl::details::terminate(a1);
    }

    v8 = v8 + hypotf(*(v6 - 2), *(v6 - 1));
    v9 = *v6;
    v10 = v6[1];
    v6 += 4;
    v7 = v7 + hypotf(v9, v10);
    v5 += 2;
  }

  while (v5 < v4);
  if (a1)
  {
LABEL_6:
    v8 = v8 + hypotf(*(a2 + 8 * a1 - 8), *(a2 + 8 * a1 - 4));
  }

  return v7 + v8;
}

void shazam::dsp::build_basis(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, float a6)
{
  octave_frequencies_lengths(a1, a2, a3, &v13, a6);
  v9 = v14;
  *a4 = vcvts_n_f32_u64(v14, 1uLL) + 1;
  memset(v12, 0, sizeof(v12));
  std::vector<std::complex<float>>::resize(v12, v9);
  memset(v11, 0, sizeof(v11));
  std::vector<std::complex<float>>::resize(v11, *a4 * a3);
  std::vector<std::complex<float>>::resize(a5, *a4 * a3);
  shazam::SHZ_FFT::SHZ_FFT(&v10, (2 * v14));
}

void sub_230FD8500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 208);
  if (v37)
  {
    *(v35 - 200) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

gsl::details *std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float>,0>(gsl::details *a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (*a3 != *a2 || a3[1] != a2[1])
  {
    gsl::details::terminate(a1);
  }

  v5 = (a3[2] - a2[2]) >> 2;
  v9 = *a2;
  v10 = a2[2];
  v7 = *a3;
  v8 = a3[2];
  std::vector<float>::__init_with_size[abi:ne200100]<gsl::details::span_iterator<float>,gsl::details::span_iterator<float>>(a1, &v9, &v7, v5);
  return a1;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<gsl::details::span_iterator<float>,gsl::details::span_iterator<float>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FD86A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<float>::__construct_at_end<gsl::details::span_iterator<float>,gsl::details::span_iterator<float>>(gsl::details *a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a1 + 1);
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<float>,gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>,float *>(a1, &v8, &v6, v4);
  *(a1 + 1) = result;
  return result;
}

uint64_t BNNSGraphFeatureModel::BNNSGraphFeatureModel(uint64_t a1, void *a2, __int128 *a3, __int128 *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  *a1 = &unk_2845C6108;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v61 = 0;
  v57 = v9;
  v11 = [MEMORY[0x277CBFF28] modelAssetWithURL:v9 error:&v61];
  v12 = v61;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = ___ZN21BNNSGraphFeatureModelC2EP5NSURLN6shazam3dsp10TensorSpecES4_P8NSObject_block_invoke;
  v58[3] = &unk_2788F8430;
  v60 = a1;
  v13 = v10;
  v59 = v13;
  [v11 modelDescriptionWithCompletionHandler:v58];
  if (v12)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v47 = std::generic_category();
    MEMORY[0x231921D20](exception, 4294967187, v47);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = a3[3];
  *(a1 + 48) = a3[2];
  *(a1 + 64) = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  v17 = *a4;
  v18 = a4[1];
  v19 = a4[3];
  *(a1 + 112) = a4[2];
  *(a1 + 128) = v19;
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  BNNSGraphCompileOptionsMakeDefault();
  BNNSGraphCompileOptionsSetTargetSingleThread();
  v20 = [v57 path];
  [v20 UTF8String];
  *(a1 + 144) = BNNSGraphCompileFromFile_v2();
  *(a1 + 152) = v21;

  BNNSGraphCompileOptionsDestroy();
  if (!*(a1 + 144))
  {
    v48 = __cxa_allocate_exception(0x20uLL);
    v49 = std::generic_category();
    MEMORY[0x231921D20](v48, 4294967192, v49);
    goto LABEL_15;
  }

  v22 = *(a1 + 152);
  v23 = *a4;
  *(a1 + 192) = BNNSGraphGetArgumentPosition();
  v24 = *(a1 + 144);
  v25 = *(a1 + 152);
  v26 = *a3;
  ArgumentPosition = BNNSGraphGetArgumentPosition();
  *(a1 + 200) = ArgumentPosition;
  if (*(a1 + 192) == -1 || ArgumentPosition == -1)
  {
    free(*(a1 + 144));
    *(a1 + 152) = 0;
    v48 = __cxa_allocate_exception(0x20uLL);
    v50 = std::generic_category();
    MEMORY[0x231921D20](v48, 4294967189, v50);
LABEL_15:
    __cxa_throw(v48, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v28 = *(a1 + 144);
  v29 = *(a1 + 152);
  ArgumentCount = BNNSGraphGetArgumentCount();
  std::vector<bnns_graph_argument_t>::resize((a1 + 208), ArgumentCount);
  v31 = *(a1 + 192);
  v32 = *(a1 + 208);
  v33 = (*(a1 + 216) - v32) >> 4;
  if (v33 <= v31 || (*(v32 + 16 * v31 + 8) = *(a1 + 128), v34 = *(a1 + 200), v33 <= v34))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  *(v32 + 16 * v34 + 8) = *(a1 + 64);
  v35 = *(a1 + 144);
  v36 = *(a1 + 152);
  v37 = BNNSGraphContextMake();
  *(a1 + 160) = v37;
  *(a1 + 168) = v38;
  if (!v37)
  {
    free(*(a1 + 144));
    *(a1 + 152) = 0;
    v51 = __cxa_allocate_exception(0x20uLL);
    v52 = std::generic_category();
    MEMORY[0x231921D20](v51, 4294967191, v52);
    goto LABEL_19;
  }

  v39 = BNNSGraphContextSetArgumentType();
  v40 = *(a1 + 160);
  v41 = *(a1 + 168);
  if (v39)
  {
    BNNSGraphContextDestroy_v2();
    free(*(a1 + 144));
    *(a1 + 152) = 0;
    v51 = __cxa_allocate_exception(0x20uLL);
    v53 = std::generic_category();
    MEMORY[0x231921D20](v51, 4294967190, v53);
    goto LABEL_19;
  }

  WorkspaceSize_v2 = BNNSGraphContextGetWorkspaceSize_v2();
  *(a1 + 176) = NSRoundUpToMultipleOfPageSize(WorkspaceSize_v2);
  v43 = NSPageSize();
  v44 = malloc_type_aligned_alloc(v43, *(a1 + 176), 0x100004077774924uLL);
  *(a1 + 184) = v44;
  if (!v44)
  {
    v54 = *(a1 + 160);
    v55 = *(a1 + 168);
    BNNSGraphContextDestroy_v2();
    free(*(a1 + 144));
    *(a1 + 152) = 0;
    v51 = __cxa_allocate_exception(0x20uLL);
    v56 = std::generic_category();
    MEMORY[0x231921D20](v51, 12, v56);
LABEL_19:
    __cxa_throw(v51, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return a1;
}

void sub_230FD8B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  __cxa_free_exception(v19);

  v21 = *(v18 + 208);
  if (v21)
  {
    *(v18 + 216) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN21BNNSGraphFeatureModelC2EP5NSURLN6shazam3dsp10TensorSpecES4_P8NSObject_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  if (!v12 || v5)
  {
    v11 = v5;
    v9 = *(v6 + 240);
    *(v6 + 240) = v11;
  }

  else
  {
    v8 = [v12 metadata];
    v9 = [v8 valueForKey:*MEMORY[0x277CBFEA8]];

    v10 = [MEMORY[0x277CCA980] decimalNumberWithString:v9];
    *(v6 + 8) = [v10 intValue];
    *(v6 + 232) = 1;
  }
}

void std::vector<bnns_graph_argument_t>::resize(void *a1, unint64_t a2)
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
    std::vector<bnns_graph_argument_t>::__append(a1, a2 - v2);
  }
}

uint64_t BNNSGraphFeatureModel::runInference@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  std::vector<float>::vector[abi:ne200100](a3, a1[16] >> 2);
  *(a1[26] + 16 * a1[25]) = a2;
  *(a1[26] + 16 * a1[24]) = *a3;
  v6 = a1[20];
  v7 = a1[21];
  v8 = a1[26];
  v9 = a1[22];
  v10 = a1[23];
  result = BNNSGraphContextExecute_v2();
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v13 = std::generic_category();
    MEMORY[0x231921D20](exception, 4294967188, v13);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_230FD8E38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t BNNSGraphFeatureModel::version(BNNSGraphFeatureModel *this)
{
  if (*(this + 30))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::__init(&v6, "failed to init cleanly", 0x16uLL);
    inference_error::inference_error(exception, &v6, *(this + 30));
  }

  if ((*(this + 232) & 1) == 0)
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    v5 = std::generic_category();
    MEMORY[0x231921D20](v4, 4294967193, v5);
    __cxa_throw(v4, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return *(this + 4);
}

void BNNSGraphFeatureModel::~BNNSGraphFeatureModel(BNNSGraphFeatureModel *this)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  BNNSGraphContextDestroy_v2();
  free(*(this + 18));
  *(this + 19) = 0;
  free(*(this + 23));

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }
}

{
  BNNSGraphFeatureModel::~BNNSGraphFeatureModel(this);

  JUMPOUT(0x231921F20);
}

void std::vector<bnns_graph_argument_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void shazam::get_grain(float **a1@<X0>, float **a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v7 = std::vector<float>::vector[abi:ne200100](a3, a1[1] - *a1);
  v9 = a1;
  v8 = *a1;
  v10 = v9[1] - v8;
  if (v10)
  {
    v11 = v10 >> 2;
    v12 = a4 * 6.2832;
    v13 = *a2;
    v14 = *v7;
    if (v11 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11;
    }

    do
    {
      v16 = *v8++;
      v17 = v16;
      v18 = *v13++;
      *v14++ = v17 * cosf(v12 * v18);
      --v15;
    }

    while (v15);
  }
}

void shazam::blips_and_blops(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = (a2 * 0.03);
  if ((v6 & 0x80000001) == 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  shazam::windows::blackmanHarris(v7, v48);
  std::vector<float>::vector[abi:ne200100](v47, v7);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_230FE40E0;
    v11 = xmmword_230FE3AF0;
    v12 = (v47[0] + 8);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = v8 / v5;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = (v8 + 1) / v5;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = (v8 + 2) / v5;
        v12[1] = (v8 + 3) / v5;
      }

      v8 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (((v7 + 3) & 0xFFFFFFFC) != v8);
  }

  v15 = (((*(a1[1] - 8) / 125.0) + 0.03) * v5);
  std::vector<short>::vector[abi:ne200100](a3, v15);
  std::vector<float>::vector[abi:ne200100](&v45, v15);
  v18 = *a1;
  v17 = a1[1];
  if (v18 != v17)
  {
    while (1)
    {
      v19 = *v18;
      LOWORD(v16) = *(v18 + 4);
      shazam::get_grain(v48, v47, __p, (v16 * 7.8125) * 0.015625);
      v20 = __p[0];
      if (v7 >= 1)
      {
        break;
      }

      if (__p[0])
      {
        goto LABEL_19;
      }

LABEL_20:
      v18 += 8;
      if (v18 == v17)
      {
        goto LABEL_21;
      }
    }

    *&v21 = ((v19 / 125.0) + -0.015) * v5;
    LODWORD(v25) = *&v21;
    v22 = v7 + *&v21;
    LOWORD(v21) = *(v18 + 6);
    v23 = v21;
    v24 = v45;
    v25 = v25;
    v26 = __p[0];
    do
    {
      v27 = *v26++;
      v24[v25] = v24[v25] + (v23 * v27);
      ++v25;
    }

    while (v25 < v22);
LABEL_19:
    __p[1] = v20;
    operator delete(v20);
    goto LABEL_20;
  }

LABEL_21:
  v28 = v45;
  v29 = v45 + 1;
  v30 = v45 == v46 || v29 == v46;
  v31 = v45;
  if (!v30)
  {
    v32 = *v45;
    v31 = v45;
    v33 = v45 + 1;
    do
    {
      v34 = *v33++;
      v35 = v34;
      v36 = vabs_s32(vcvt_s32_f32(__PAIR64__(v34, v32)));
      if (vcgt_u32(vdup_lane_s32(v36, 1), v36).u8[0])
      {
        v32 = v35;
        v31 = v29;
      }

      v29 = v33;
    }

    while (v33 != v46);
  }

  v37 = *a3;
  v38 = a3[1] - *a3;
  if (v38)
  {
    v39 = v38 >> 1;
    v40 = *v31;
    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v39;
    }

    v42 = v45;
    do
    {
      v43 = *v42++;
      *v37++ = ((v43 / v40) * 32767.0);
      --v41;
    }

    while (v41);
  }

  else if (!v45)
  {
    goto LABEL_38;
  }

  v46 = v28;
  operator delete(v28);
LABEL_38:
  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }
}

void sub_230FD953C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void shazam::sonify_signature(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  shazam::flatten_and_sort((a1 + 32), __p);
  shazam::blips_and_blops(__p, a2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_230FD95F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FD9670(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_230FD9C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t *a49, uint64_t a50, char a51)
{
  if (a2)
  {
    shazam::CPUDatabases::~CPUDatabases(&a17);
    shazam::CPUDatabaseBuilder::~CPUDatabaseBuilder(&a32);
    v54 = a49;
    a49 = 0;
    if (v54)
    {
      std::default_delete<MREInstance>::operator()[abi:ne200100](&a49, v54);
    }

    if (a2 == 3)
    {
      [0 ConvertSystemError:__cxa_begin_catch(exception_object) toError:v51];

      __cxa_end_catch();
    }

    else
    {
      v55 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        [0 ConvertException:v55 toError:v51];
      }

      else
      {
        [0 FillUnknownError:v51];
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x230FD9BC0);
  }

  _Unwind_Resume(exception_object);
}

void sub_230FD9FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    std::__function::__value_func<void ()(shazam::SearchResponse const&)>::~__value_func[abi:ne200100](v24 - 88);
    a12 = &a19;
    std::vector<shazam::basic_signature<(shazam::signature_density)24>>::__destroy_vector::operator()[abi:ne200100](&a12);
    if (a2 == 3)
    {
      [v23 ConvertSystemError:__cxa_begin_catch(exception_object) toError:v22];
      __cxa_end_catch();
    }

    else
    {
      v27 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        [v23 ConvertException:v27 toError:v22];
      }

      else
      {
        [v23 FillUnknownError:v22];
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x230FD9F34);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<MREInstance>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x231921F20);
  }
}

void shazam::FFT_implementation_apple::FFT_implementation_apple(shazam::FFT_implementation_apple *this, uint64_t a2)
{
  *this = &unk_2845C61D0;
  v2 = 31 - __clz(a2);
  *(this + 2) = v2;
  *(this + 2) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = vDSP_create_fftsetup(v2, 0);
  operator new[]();
}

void shazam::FFT_implementation_apple::~FFT_implementation_apple(FFTSetup *this)
{
  *this = &unk_2845C61D0;
  vDSP_destroy_fftsetup(this[3]);
  v2 = this[4];
  if (v2)
  {
    MEMORY[0x231921F00](v2, 0x1000C8052888210);
  }

  v3 = this[5];
  if (v3)
  {
    MEMORY[0x231921F00](v3, 0x1000C8052888210);
  }
}

{
  shazam::FFT_implementation_apple::~FFT_implementation_apple(this);

  JUMPOUT(0x231921F20);
}

uint64_t shazam::FFT_implementation_apple::magxform(shazam::FFT_implementation_apple *this, DSPComplex *__C, float *a3)
{
  vDSP_ctoz(__C, 2, this + 2, 1, 1 << (*(this + 2) - 1));
  vDSP_fft_zrip(*(this + 3), this + 2, 1, *(this + 2), 1);
  v5 = *(this + 5);
  v6 = 1 << (*(this + 2) - 1);
  *(*(this + 4) + 4 * v6) = *v5;
  v5[v6] = 0;
  *v5 = 0;

  return shazam::FFT_implementation_apple::toSHZFFT_Magnitude(this, a3);
}

uint64_t shazam::FFT_implementation_apple::toSHZFFT_Magnitude(const DSPSplitComplex *this, float *__C)
{
  vDSP_zvmags(this + 2, 1, __C, 1, 0x401uLL);
  v4 = 905969664;
  return MEMORY[0x231922A50](__C, 1, &v4, __C, 1, 1025);
}

uint64_t shazam::FFT_implementation_apple::magcomplexform(uint64_t a1, DSPComplex *__C, float *a3, uint64_t a4)
{
  vDSP_ctoz(__C, 2, (a1 + 32), 1, 1 << (*(a1 + 8) - 1));
  vDSP_fft_zrip(*(a1 + 24), (a1 + 32), 1, *(a1 + 8), 1);
  v7 = 0;
  v8 = *(a1 + 40);
  v9 = 1 << (*(a1 + 8) - 1);
  *(*(a1 + 32) + 4 * v9) = *v8;
  v8[v9] = 0;
  *v8 = 0;
  v10 = (a4 + 4);
  do
  {
    v11 = *(*(a1 + 40) + 4 * v7);
    *(v10 - 1) = *(*(a1 + 32) + 4 * v7);
    *v10 = v11;
    ++v7;
    v10 += 2;
  }

  while (v7 != 1025);

  return shazam::FFT_implementation_apple::toSHZFFT_Magnitude(a1, a3);
}

uint64_t shazam::FFT_implementation_apple::fftr(uint64_t a1, DSPComplex *__C, uint64_t a3)
{
  vDSP_ctoz(__C, 2, (a1 + 32), 1, 1 << (*(a1 + 8) - 1));
  vDSP_fft_zrip(*(a1 + 24), (a1 + 32), 1, *(a1 + 8), 1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = 1 << (*(a1 + 8) - 1);
  *(v5 + 4 * v7) = *v6;
  v6[v7] = 0;
  *v6 = 0;
  v8 = (*(a1 + 16) >> 1) + 1;
  v13 = 1056964608;
  MEMORY[0x231922A50](v5, 1, &v13, v5, 1, v8);
  result = MEMORY[0x231922A50](*(a1 + 40), 1, &v13, *(a1 + 40), 1, v8);
  v10 = 0;
  v11 = (a3 + 4);
  do
  {
    v12 = *(*(a1 + 40) + 4 * v10);
    *(v11 - 1) = *(*(a1 + 32) + 4 * v10);
    *v11 = v12;
    ++v10;
    v11 += 2;
  }

  while (v8 != v10);
  return result;
}

void shazam::FFT_implementation_apple::fftc(uint64_t a1, DSPComplex *__C, DSPComplex *a3)
{
  v5 = 1 << (*(a1 + 8) - 1);
  vDSP_ctoz(__C, 2, (a1 + 32), 1, v5);
  vDSP_fft_zip(*(a1 + 24), (a1 + 32), 1, *(a1 + 8) - 1, 1);

  vDSP_ztoc((a1 + 32), 1, a3, 2, v5);
}

void shazam::FFT_implementation_apple::fftri(uint64_t a1, uint64_t a2, unint64_t a3, DSPComplex *a4)
{
  vDSP_ctoz(*(a2 + 8), 2, (a1 + 32), 1, *a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  **(a1 + 40) = *(*(a1 + 32) + 4 * (1 << (v7 - 1)));
  vDSP_fft_zrip(v8, (a1 + 32), 1, v7, -1);

  vDSP_ztoc((a1 + 32), 1, a4, 2, a3 >> 1);
}

float __divsc3(float a1, float a2, float a3, float a4)
{
  v4 = fmaxf(fabsf(a3), fabsf(a4));
  v5 = LODWORD(v4) >> 23;
  v6 = -INFINITY;
  v7 = __clz(LODWORD(v4));
  v8 = ((LODWORD(v4) << (v7 - 8) >> 23) - v7 - 119);
  if (LODWORD(v4) >= 0x800000)
  {
    v8 = (v5 - 127);
  }

  if (v4 != 0.0)
  {
    v6 = v8;
  }

  if (v5 == 255)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v24 = -v9;
  if (a3 == 0.0 || (v25 = (LODWORD(a3) >> 23), v25 == 255))
  {
LABEL_32:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v26 = LODWORD(a3) & 0x7FFFFF;
  if (!(LODWORD(a3) >> 23))
  {
    v27 = __clz(v26);
    v28 = v26 << (v27 - 8);
    v25 = 9 - v27;
    v26 = v28 & 0xFF7FFFFF;
  }

  v21 = __OFADD__(v25, v24);
  v29 = v25 - v9;
  if (v21)
  {
    v29 = (v29 >> 31) ^ 0x80000000;
  }

  v30 = LODWORD(a3) & 0x80000000;
  if (v29 < 255)
  {
    if (v29 <= 0)
    {
      v40 = v26 | v30 | 0x800000;
      if (v29 <= -125)
      {
        v41 = -125;
      }

      else
      {
        v41 = v29;
      }

      a3 = *&v40 * COERCE_FLOAT((v41 << 23) + 1056964608);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    LODWORD(a3) = v30 | (v29 << 23) | v26;
    goto LABEL_32;
  }

  a3 = COERCE_FLOAT(v30 | 0x7F000000) + COERCE_FLOAT(v30 | 0x7F000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_33:
  v31 = (LODWORD(a4) >> 23);
  if (v31 != 255)
  {
    v32 = LODWORD(a4) & 0x7FFFFF;
    if (!(LODWORD(a4) >> 23))
    {
      v33 = __clz(v32);
      v34 = v32 << (v33 - 8);
      v31 = 9 - v33;
      v32 = v34 & 0xFF7FFFFF;
    }

    v21 = __OFADD__(v31, v24);
    v35 = v31 - v9;
    if (v21)
    {
      v35 = (v35 >> 31) ^ 0x80000000;
    }

    v36 = LODWORD(a4) & 0x80000000;
    if (v35 < 255)
    {
      if (v35 <= 0)
      {
        if (v35 <= -125)
        {
          v35 = -125;
        }

        a4 = COERCE_FLOAT(v32 | v36 | 0x800000) * COERCE_FLOAT((v35 << 23) + 1056964608);
      }

      else
      {
        LODWORD(a4) = v36 | (v35 << 23) | v32;
      }
    }

    else
    {
      a4 = COERCE_FLOAT(v36 | 0x7F000000) + COERCE_FLOAT(v36 | 0x7F000000);
    }
  }

LABEL_10:
  v11 = (a4 * a4) + (a3 * a3);
  *&v12 = ((a4 * a2) + (a1 * a3)) / v11;
  v13 = -v10;
  if (*&v12 != 0.0)
  {
    v14 = ((a4 * a2) + (a1 * a3)) / v11;
    v15 = (v12 >> 23);
    if (v15 != 255)
    {
      v16 = LODWORD(v14) & 0x7FFFFF;
      v17 = __clz(LODWORD(v14) & 0x7FFFFF);
      v18 = (LODWORD(v14) & 0x7FFFFF) << (v17 - 8);
      v19 = 9 - v17;
      v20 = v18 & 0xFF7FFFFF;
      if (!(v12 >> 23))
      {
        v16 = v20;
        v15 = v19;
      }

      v21 = __OFADD__(v15, v13);
      v22 = v15 + v13;
      if (v21)
      {
        v22 = (v22 >> 31) ^ 0x80000000;
      }

      v23 = v12 & 0x80000000;
      if (v22 < 255)
      {
        if (v22 <= 0)
        {
          v37 = v16 | v23 | 0x800000;
          if (v22 <= -125)
          {
            v38 = -125;
          }

          else
          {
            v38 = v22;
          }

          *&v12 = *&v37 * COERCE_FLOAT((v38 << 23) + 1056964608);
        }

        else
        {
          v12 = v23 | (v22 << 23) | v16;
        }
      }

      else
      {
        *&v12 = COERCE_FLOAT(v23 | 0x7F000000) + COERCE_FLOAT(v23 | 0x7F000000);
      }
    }
  }

  return *&v12;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}