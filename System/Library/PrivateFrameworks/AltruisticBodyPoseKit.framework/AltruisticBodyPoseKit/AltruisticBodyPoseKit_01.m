void *std::vector<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDFB428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 80 * a2;
  }
}

void cva::PoseRefiner<double>::computeError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a1 + 392) = 0;
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = a3 + 96;
    do
    {
      v9 = *(a1 + 32);
      v10 = (v3 + 40 * v7);
      v26[0] = a3;
      v26[1] = 4;
      v27[0] = v26;
      v27[1] = v10;
      memset(v28, 0, 24);
      cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(v28, v27);
      v11 = 0;
      v24 = 0uLL;
      v25 = 0;
      do
      {
        *(&v24 + v11 * 8) = *&v27[v11 + 3] + *(v8 + v11 * 8);
        ++v11;
      }

      while (v11 != 3);
      v12 = 0;
      v13 = v9 + 80 * v7;
      *(v13 + 24) = v25;
      v14 = *(v13 + 24);
      v15 = dbl_23EE28760[v14 >= 0.0];
      *(v13 + 8) = v24;
      if (fabs(v14) < 1.0e-15)
      {
        v14 = v15;
      }

      v16 = 1.0 / v14;
      *(v13 + 48) = 1.0 / v14;
      v17 = vmulq_n_f64(*(v13 + 8), 1.0 / v14);
      *(v13 + 32) = v17;
      if (v16 >= 0.0 && v16 <= 1.0e14)
      {
        v18 = v10[3] - v17.f64[0];
        *(v13 + 56) = v18;
        v19 = v10[4] - v17.f64[1];
        if (v18 < 0.0)
        {
          v18 = -v18;
        }

        v20 = -v19;
        if (v19 >= 0.0)
        {
          v20 = v10[4] - v17.f64[1];
        }

        v21 = v18 + v20;
        *(v13 + 64) = v19;
        *(v13 + 72) = v21;
        v22 = *(a1 + 392);
        *(*(a1 + 400) + 8 * v22) = v21;
        *(a1 + 392) = v22 + 1;
        v12 = 1;
      }

      *v13 = v12;
      ++v7;
      v3 = *a2;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t cva::PoseRefiner<double>::accumuateJacobian(uint64_t result, double *a2, double a3)
{
  *a2 = 0.0;
  v3 = *(result + 392);
  if (v3)
  {
    v4 = 0;
    v40 = a3 * a3;
    v5 = (*(result + 32) + 72);
    v48 = 0.0;
    v49 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v42 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v18 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v22 = 0.0;
    v43 = 0.0;
    do
    {
      if (*(v5 - 72) == 1)
      {
        ++v4;
        v23 = *v5;
        v24 = 1.0;
        if (*result != 1 || v23 * v23 < v40 && (v24 = (1.0 - v23 * v23 / v40) * (1.0 - v23 * v23 / v40), v24 >= 0.00000001))
        {
          if (v23 < 0.0)
          {
            v23 = -v23;
          }

          v41 = v22 + v24 * v23;
          *a2 = v41;
          v25 = *(v5 - 3);
          v27 = *(v5 - 8);
          v26 = *(v5 - 7);
          v28 = v25 * v25 * (v27 * v26);
          v29 = v27 * v27 * (v25 * v25) + 1.0;
          v30 = -(v26 * v26) * (v25 * v25) + -1.0;
          v31 = -(v26 * v25);
          v32 = -(v26 * (v25 * v25));
          v33 = -(v27 * (v25 * v25));
          v34 = -(v28 * v24);
          v35 = v24 * *(v5 - 2);
          v36 = v25 * v27;
          v49 = v49 - v34 * v28 + v24 * v30 * v30;
          v48 = v48 + v34 * v33 + v24 * v30 * v32;
          v42 = v42 + v24 * v29 * v29 + v24 * v28 * v28;
          v10 = v10 + v24 * v29 * v31 + v24 * v28 * v36;
          v11 = v11 + v24 * v29 * v25 + v24 * v28 * 0.0;
          v12 = v12 + v24 * v29 * 0.0 + v24 * v28 * v25;
          v13 = v13 + v24 * v29 * v33 + v24 * v28 * v32;
          v15 = v15 + v24 * v31 * v25 + v24 * v36 * 0.0;
          v16 = v16 + v24 * v31 * 0.0 + v24 * v36 * v25;
          v17 = v17 + v24 * v31 * v33 + v24 * v36 * v32;
          v52 = v52 + v24 * v25 * v25 + v24 * 0.0 * 0.0;
          v8 = v8 + v34 * v25 + v24 * v30 * 0.0;
          v6 = v6 + v34 * v29 + v24 * v30 * v28;
          v9 = v9 + v34 * 0.0 + v24 * v30 * v25;
          v7 = v7 + v34 * v31 + v24 * v30 * v36;
          v53 = v53 + v24 * v25 * 0.0 + v24 * 0.0 * v25;
          v18 = v18 + v24 * v25 * v33 + v24 * 0.0 * v32;
          v14 = v14 + v24 * v31 * v31 + v24 * v36 * v36;
          v51 = v51 + v24 * 0.0 * 0.0 + v24 * v25 * v25;
          v19 = v19 + v24 * 0.0 * v33 + v24 * v25 * v32;
          v20 = v20 + v24 * v33 * v33 + v24 * v32 * v32;
          v50 = v50 + v24;
          v37 = v24 * *(v5 - 1);
          v43 = v43 - v35 * v28 + v37 * v30;
          v38 = v44 + v35 * v29 + v37 * v28;
          v22 = v41;
          v44 = v38;
          v45 = v45 + v35 * v31 + v37 * v36;
          v21 = v21 + v35 * v33 + v37 * v32;
          v46 = v46 + v35 * v25 + v37 * 0.0;
          v47 = v47 + v35 * 0.0 + v37 * v25;
        }
      }

      v5 += 10;
    }

    while (v4 < v3);
  }

  else
  {
    v48 = 0.0;
    v49 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v18 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v21 = 0.0;
  }

  *(result + 56) = v49;
  *(result + 64) = v6;
  *(result + 72) = v7;
  *(result + 80) = v8;
  *(result + 88) = v9;
  *(result + 96) = v48;
  *(result + 104) = v6;
  *(result + 112) = v42;
  *(result + 152) = v7;
  *(result + 160) = v10;
  *(result + 120) = v10;
  *(result + 128) = v11;
  *(result + 200) = v8;
  *(result + 208) = v11;
  *(result + 248) = v9;
  *(result + 256) = v12;
  *(result + 136) = v12;
  *(result + 144) = v13;
  *(result + 296) = v48;
  *(result + 304) = v13;
  *(result + 168) = v14;
  *(result + 176) = v15;
  *(result + 184) = v16;
  *(result + 192) = v17;
  *(result + 216) = v15;
  *(result + 224) = v52;
  *(result + 264) = v16;
  *(result + 272) = v53;
  *(result + 232) = v53;
  *(result + 240) = v18;
  *(result + 312) = v17;
  *(result + 320) = v18;
  *(result + 280) = v51;
  *(result + 288) = v19;
  *(result + 328) = v19;
  *(result + 336) = v20;
  *(result + 344) = v43;
  *(result + 352) = v44;
  *(result + 360) = v45;
  *(result + 368) = v46;
  *(result + 376) = v47;
  *(result + 384) = v21;
  if (v50 <= 1.0e-10)
  {
    v39 = 1.79769313e308;
  }

  else
  {
    v39 = *a2 / v50;
  }

  *a2 = v39;
  return result;
}

BOOL cva::ldlt<double,6u,1u>()
{
  v8[0] = 0;
  v8[1] = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(v8, 6);
  v9 = 6;
  v7 = 0;
  v6 = 0;
  cva::vecLib::sysv<double>();
  v4[0] = 0;
  v4[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v4, 0.0);
  v5 = 0.0;
  v0 = cva::vecLib::sysv<double>();
  if (v7 < 0)
  {
    __assert_rtn("ldlt", "linearalgebra.h", 2235, "(0 <= info) || cva::detail::assertMessage(sysv() Linear system failed to be solved!)");
  }

  if (v7)
  {
    cva::Logger::instance(v0);
    v1 = *MEMORY[0x277CFD380];
    cva::Logger::logInCategory();
  }

  free(v4[0]);
  v2 = v7 == 0;
  free(v8[0]);
  return v2;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cva::PoseRefiner<double>::projData>>(a1, v9);
    }

    __p = 0;
    v13 = 80 * v6;
    v15 = 0;
    v11 = 80 * ((80 * a2 - 80) / 0x50) + 80;
    bzero((80 * v6), v11);
    v14 = 80 * v6 + v11;
    std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 80) % 0x50 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_23EDFBFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 8);
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 8) = v6;
      *(v5 + 32) = *(v2 + 32);
      *(v5 + 48) = *(v2 + 48);
      *(v5 + 56) = *(v2 + 56);
      *(v5 + 72) = *(v2 + 72);
      v2 += 80;
      v5 += 80;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cva::PoseRefiner<double>::projData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(uint64_t a1, double **a2)
{
  v3 = **a2;
  if (v3 - 8 * *(*a2 + 3) == a1 || (v4 = a2[1], v4 == a1))
  {
    v11 = 0uLL;
    v12 = 0;
    cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(&v11);
    result = *&v11;
    *a1 = v11;
    *(a1 + 16) = v12;
  }

  else
  {
    v5 = 0;
    v6 = *(*a2 + 2);
    do
    {
      if (v6)
      {
        v7 = 0;
        result = 0.0;
        v9 = v4;
        do
        {
          v10 = *v9++;
          result = result + *(v3 + v7) * v10;
          v7 += 8 * v6;
        }

        while (8 * (3 * v6) != v7);
      }

      else
      {
        result = 0.0;
      }

      *(a1 + 8 * v5++) = result;
      v3 += 8;
    }

    while (v5 != 3);
  }

  return result;
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double *a3, double a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 4];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

double std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t cva::MatrixData<int,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<int,0ul,0ul,false>::allocate();
  }

  v3 = (4 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 2);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<int,0ul,0ul,false>::allocate();
  }

  return result;
}

uint64_t cva::MatrixData<double,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<int,0ul,0ul,false>::allocate();
  }

  v3 = (8 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 3);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<int,0ul,0ul,false>::allocate();
  }

  return result;
}

float64x2_t *cva::ExponentialCoefficients<double,3>::ExponentialCoefficients(float64x2_t *a1, double a2)
{
  _D3 = a2;
  if (a2 >= 0.0000002635)
  {
    v11 = sqrt(a2);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    _D0 = v12.__sinval / v11;
    v13.f64[0] = v12.__cosval;
    v13.f64[1] = v12.__sinval / v11;
    __asm { FMOV            V4.2D, #1.0 }

    _Q2 = vmulq_n_f64(vsubq_f64(_Q4, v13), 1.0 / a2);
  }

  else
  {
    _Q2 = vmlsq_lane_f64(xmmword_23EE28790, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_23EE28770), xmmword_23EE28780), a2, 0);
    __asm { FMLS            D0, D3, V2.D[1] }

    cosval = 1.0 - _Q2.f64[0] * _D3;
  }

  a1[1] = _Q2;
  a1->f64[0] = cosval;
  a1->f64[1] = _D0;
  return a1;
}

double cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::SE3GroupStorage(_OWORD *a1, uint64_t *a2, double *a3)
{
  v3 = 0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  v4 = 0x100000000;
  *a1 = 0u;
  a1[1] = 0u;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 2;
    v7 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 2)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 8;
  }

  while (v3 != 96);
  do
  {
    v11 = *a3++;
    result = v11;
    *(a1 + v3) = v11;
    v3 += 8;
  }

  while (v3 != 120);
  v13 = 0;
  v14 = 0;
  v15 = a1 + 24;
  do
  {
    while (v14 == 4)
    {
      *&v15[32 * v13++] = 0;
      if (v13 == 4)
      {
        return result;
      }
    }

    result = *&qword_23EE28860[v14];
    v16 = v14 * 8 + 8;
    *&v15[32 * v13++] = result;
    ++v14;
  }

  while (v13 != 4);
  if (v16 != 32)
  {
    cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::SE3GroupStorage();
  }

  return result;
}

float64_t cva::assign<false,false,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>>(_OWORD *a1, void *a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    cva::assign<false,false,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>>(&v17);
    v12 = v22;
    a1[4] = v21;
    a1[5] = v12;
    v13 = v24;
    a1[6] = v23;
    a1[7] = v13;
    v14 = v18;
    *a1 = v17;
    a1[1] = v14;
    *&v7.f64[0] = v19;
    v15 = v20;
    a1[2] = v19;
    a1[3] = v15;
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      v6 = 0;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = &v4[2 * i];
      do
      {
        v10 = vld1q_dup_f64(v9++);
        v8 = vmlaq_f64(v8, v10, v3[v6 + 1]);
        v7 = vmlaq_f64(v7, v10, v3[v6]);
        v6 += 2;
      }

      while (v6 != 8);
      v11 = &a1[2 * i];
      *v11 = v7;
      v11[1] = v8;
    }
  }

  return v7.f64[0];
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::log(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v39 = a1;
  v40 = 4;
  v32 = a2;
  v33 = 6;
  cva::computeLogarithmVector<cva::MatrixRef<double const,3u,3u,false>,cva::MatrixRef<double,3u,1u,false>>(&v39, &v32);
  v4 = vmulq_f64(*(a2 + 8), *(a2 + 8));
  v5 = *a2 * *a2 + v4.f64[0] + v4.f64[1];
  cva::ExponentialCoefficients<double,3>::ExponentialCoefficients(&v26, v5);
  if (v5 >= 2.775e-15)
  {
    v6 = (v27 + v26.f64[1] * -0.5) / (v5 * v27);
    if (v5 <= 9.0)
    {
      v6 = -(v28 - v27 * 0.5) / v26.f64[1];
    }
  }

  else
  {
    v6 = v5 * 0.00138888889 + 0.0833333333 + v5 * 0.0000330687831;
  }

  v24 = 0uLL;
  v25 = 0;
  if (&v24 == a2 || &v24 == a1)
  {
    v13 = 0;
    v30 = 0uLL;
    v31 = 0;
    v14 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a1 + 96);
    v17 = *(a1 + 104);
    v18 = *(a1 + 112);
    v40 = *(a2 + 8);
    v41 = v15;
    v42 = v14;
    v43 = v18;
    v44 = v16;
    v45 = v17;
    v33 = v15;
    v34 = v14;
    v35 = v40;
    v36 = v17;
    v37 = v18;
    v38 = v16;
    do
    {
      *(&v30 + v13 * 8) = *&(&v39)[v13 + 1] * *(&v43 + v13 * 8) - *&(&v32)[v13 + 1] * *(&v36 + v13 * 8);
      ++v13;
    }

    while (v13 != 3);
    v24 = v30;
    v25 = v31;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    v9 = *(a2 + 16);
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v40 = *(a2 + 8);
    v41 = v9;
    v42 = v8;
    v43 = v12;
    v44 = v10;
    v45 = v11;
    v33 = v9;
    v34 = v8;
    v35 = v40;
    v36 = v11;
    v37 = v12;
    v38 = v10;
    do
    {
      *(&v24 + v7 * 8) = *&(&v39)[v7 + 1] * *(&v43 + v7 * 8) - *&(&v32)[v7 + 1] * *(&v36 + v7 * 8);
      ++v7;
    }

    while (v7 != 3);
  }

  v23[0] = a1 + 96;
  v23[1] = 0xC00000004;
  *&v30 = &v24;
  *(&v30 + 1) = 0x3FE0000000000000;
  v32 = v23;
  v33 = &v30;
  v21[0] = a2;
  v21[1] = 6;
  v22[0] = v21;
  v22[1] = &v24;
  v29[0] = v22;
  *&v29[1] = v6;
  v39 = &v32;
  v40 = v29;
  v20[0] = a2 + 24;
  v20[1] = 0x300000006;
  cva::MatrixRef<double,3u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixBinaryExpr<cva::MatrixRef<double const,3u,1u,false>,cva::MatrixScalarExpr<cva::Matrix<double,3u,1u,false>,cva::detail::MulOp>,cva::detail::SubOp>,cva::MatrixScalarExpr<cva::MatrixCrossProdExpr<cva::MatrixRef<double,3u,1u,false>,cva::Matrix<double,3u,1u,false>>,cva::detail::MulOp>,cva::detail::AddOp>>(v20, &v39);
  v19 = *MEMORY[0x277D85DE8];
}

void cva::computeLogarithmVector<cva::MatrixRef<double const,3u,3u,false>,cva::MatrixRef<double,3u,1u,false>>(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 + 2);
  v5 = (2 * v3) | 1;
  v6 = (*(*a1 + 8 * v4) - *(*a1 + 8 * v5)) * 0.5;
  v7 = *a2;
  *v7 = v6;
  v8 = &v2[(2 * v3)];
  v9 = (v8->f64[0] - v2[2]) * 0.5;
  v7[1] = v9;
  v10 = (v2[1] - v2[v3]) * 0.5;
  v7[2] = v10;
  v11 = *v2;
  v12 = v2[(v3 + 1)];
  v13 = v2[(2 * v3 + 2)];
  v14 = -1.0;
  v15 = (*v2 + v12 + v13 + -1.0) * 0.5;
  v16 = v9 * v9 + v6 * v6 + v10 * v10;
  if (v15 >= -1.0 || v15 + 1.0 <= -0.00001)
  {
    v26 = v15 > 1.0;
    if (v15 + -1.0 >= 0.00001)
    {
      v26 = 0;
    }

    if (v15 <= 0.99 && !v26)
    {
      if (v15 <= -0.99)
      {
        v14 = (*v2 + v12 + v13 + -1.0) * 0.5;
        goto LABEL_3;
      }

      v28 = acos(v15) / sqrt(v16);
    }

    else
    {
      v28 = v16 * (v16 * (v16 * 5.0 / 112.0 + 0.075) + 0.166666667) + 1.0;
    }

    *v7 = v6 * v28;
    v7[1] = v9 * v28;
    v33 = v10 * v28;
LABEL_22:
    v7[2] = v33;
    return;
  }

LABEL_3:
  v17 = asin(sqrt(v16));
  v18 = (3.14159265 - v17) * (3.14159265 - v17) / (1.0 - v14);
  v19 = (v11 - v14) * v18;
  v20 = (v12 - v14) * v18;
  v21 = (v13 - v14) * v18;
  if (v19 > v20)
  {
    v22 = v18 * 0.5;
    v23 = v22 * (v8->f64[0] + v2[2]);
    if (v19 <= v21)
    {
      v34 = sqrt(v21);
      if (v10 < 0.0)
      {
        v34 = -v34;
      }

      v7[2] = v34;
      v35 = 1.0 / v34;
      v36 = v35 * (v22 * (v2[v5] + v2[v4]));
      *v7 = v35 * v23;
      v7[1] = v36;
    }

    else
    {
      v24 = sqrt(v19);
      if (v6 < 0.0)
      {
        v24 = -v24;
      }

      *v7 = v24;
      v25 = 1.0 / v24;
      v7[1] = v25 * (v22 * (v2[v3] + v2[1]));
      v7[2] = v25 * v23;
    }

    return;
  }

  v29 = v18 * 0.5;
  if (v20 > v21)
  {
    v30 = sqrt(v20);
    if (v9 < 0.0)
    {
      v30 = -v30;
    }

    v7[1] = v30;
    v31 = 1.0 / v30;
    v32 = v2[v5] + v2[v4];
    *v7 = v31 * (v29 * (v2[v3] + v2[1]));
    v33 = v31 * (v29 * v32);
    goto LABEL_22;
  }

  v37 = sqrt(v21);
  if (v10 < 0.0)
  {
    v37 = -v37;
  }

  v7[2] = v37;
  v38.f64[0] = v2[2];
  v38.f64[1] = v2[v4];
  *v7 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(*v8, v38), v29), 1.0 / v37);
}

double cva::MatrixRef<double,3u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixBinaryExpr<cva::MatrixRef<double const,3u,1u,false>,cva::MatrixScalarExpr<cva::Matrix<double,3u,1u,false>,cva::detail::MulOp>,cva::detail::SubOp>,cva::MatrixScalarExpr<cva::MatrixCrossProdExpr<cva::MatrixRef<double,3u,1u,false>,cva::Matrix<double,3u,1u,false>>,cva::detail::MulOp>,cva::detail::AddOp>>(uint64_t *a1, uint64_t ***a2)
{
  v2 = *a1;
  v3 = *a1 - 8 * *(a1 + 3);
  v5 = *a2;
  v4 = a2[1];
  v6 = **a2;
  v7 = *v6;
  v8 = *v6 - 8 * *(v6 + 3);
  v9 = *v4;
  v10 = **v4;
  v11 = *v10;
  if (v8 == v3 || v11 - 8 * *(v10 + 3) == v3 || (v12 = v9[1], v12 == v3))
  {
    v20 = 0;
    v29 = 0uLL;
    v30 = 0;
    v21 = v5[1];
    v22 = *v21;
    v23 = v9[1];
    v24 = v21[1];
    v25 = v4[1];
    v26 = 1;
    v27 = 2;
    do
    {
      if (v20 == 16)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      *(&v29 + v20) = *(v7 + v20) - *(*&v22 + v20) * v24 + v25 * (*(v11 + 8 * v28) * *&v23[v20 / 8 + 2 + -3 * (v27 / 3)] - *(v11 + 16 - 24 * (v27 / 3) + v20) * *&v23[v28]);
      v20 += 8;
      ++v27;
      ++v26;
    }

    while (v20 != 24);
    result = *&v29;
    *v2 = v29;
    *(v2 + 16) = v30;
  }

  else
  {
    v13 = 0;
    v14 = v5[1];
    v15 = *v14;
    v16 = 1;
    v17 = 2;
    do
    {
      if (v13 == 16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      result = *(v7 + v13) - *(*&v15 + v13) * v14[1] + v4[1] * (*(v11 + 8 * v18) * *&v12[v13 / 8 + 2 + -3 * (v17 / 3)] - *(v11 + 16 - 24 * (v17 / 3) + v13) * *&v12[v18]);
      *(v2 + v13) = result;
      v13 += 8;
      ++v17;
      ++v16;
    }

    while (v13 != 24);
  }

  return result;
}

void cva::computeExponentialMatrix<double,cva::Matrix<double,6u,1u,false>,cva::Matrix<double,4u,4u,false>>(double *a1, double *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v33 = a1;
  *&v34 = 6;
  v28 = a3;
  v29 = 4;
  cva::computeExponentialMatrix<double,cva::MatrixRef<double const,3u,1u,false>,cva::MatrixRef<double,3u,3u,false>>(&v33, &v28, v6, v7, v8);
  v24[0] = a1;
  v24[1] = 6;
  v23[0] = a1 + 3;
  v23[1] = 0x300000006;
  v21 = 0uLL;
  v22 = 0;
  if (&v21 == a1)
  {
    v13 = 0;
    v26 = 0uLL;
    v27 = 0;
    *&v15 = vdupq_laneq_s64(*a1, 1).u64[0];
    v16 = *(a1 + 2);
    v30 = *a1;
    *&v14 = v30.i64[0];
    v31 = v16;
    *(&v14 + 1) = *(&v16 + 1);
    v35 = v14;
    *(&v15 + 1) = a1[2];
    v36 = *(a1 + 3);
    v37 = v16;
    v34 = v15;
    v29 = *(&v15 + 1);
    v32 = v36;
    do
    {
      *(&v26 + v13 * 8) = *&(&v33)[v13 + 1] * *(&v35 + v13 * 8 + 8) - *&(&v28)[v13 + 1] * *(&v31 + v13 * 8);
      ++v13;
    }

    while (v13 != 3);
    v21 = v26;
    v22 = v27;
  }

  else
  {
    v9 = 0;
    *&v11 = vdupq_laneq_s64(*a1, 1).u64[0];
    v12 = *(a1 + 2);
    v30 = *a1;
    *&v10 = v30.i64[0];
    v31 = v12;
    *(&v10 + 1) = *(&v12 + 1);
    v35 = v10;
    *(&v11 + 1) = a1[2];
    v36 = *(a1 + 3);
    v37 = v12;
    v34 = v11;
    v29 = *(&v11 + 1);
    v32 = v36;
    do
    {
      *(&v21 + v9 * 8) = *&(&v33)[v9 + 1] * *(&v35 + v9 * 8 + 8) - *&(&v28)[v9 + 1] * *(&v31 + v9 * 8);
      ++v9;
    }

    while (v9 != 3);
  }

  v17 = *(a2 + 3);
  *(&v26 + 1) = a2[2];
  *&v26 = &v21;
  v28 = v23;
  v29 = &v26;
  v20[0] = v24;
  v20[1] = &v21;
  v25[0] = v20;
  v25[1] = v17;
  v33 = &v28;
  *&v34 = v25;
  v19[0] = (a3 + 12);
  v19[1] = 0xC00000004;
  cva::MatrixRef<double,3u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixBinaryExpr<cva::MatrixRef<double const,3u,1u,false>,cva::MatrixScalarExpr<cva::Matrix<double,3u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::MatrixScalarExpr<cva::MatrixCrossProdExpr<cva::MatrixRef<double const,3u,1u,false>,cva::Matrix<double,3u,1u,false>>,cva::detail::MulOp>,cva::detail::AddOp>>(v19, &v33);
  v18 = *MEMORY[0x277D85DE8];
}

double cva::computeExponentialMatrix<double,cva::MatrixRef<double const,3u,1u,false>,cva::MatrixRef<double,3u,3u,false>>(double **a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = *a1;
  v6 = **a1;
  v7 = v6 * a5;
  v8 = (*a1)[1] * a5;
  v9 = (*a1)[2] * a5;
  v10 = *a2;
  *v10 = a3 + v7 * v6;
  v11 = *(a2 + 8);
  v10[(v11 + 1)] = a3 + v8 * v5[1];
  v12 = 2 * v11;
  v10[v12 + 2] = a3 + v9 * v5[2];
  v13 = v5[1];
  v14 = v7 * v13;
  v15 = v5[2];
  v16 = v7 * v15;
  v17 = v8 * v15;
  v18 = *v5 * a4;
  v19 = v13 * a4;
  v20 = v15 * a4;
  v10[v11] = v14 - v20;
  v10[v12] = v19 + v16;
  v10[1] = v14 + v20;
  v10[(2 * v11) | 1u] = v17 - v18;
  v10[2] = v16 - v19;
  result = v17 + v18;
  v10[(v11 + 2)] = v17 + v18;
  return result;
}

double cva::MatrixRef<double,3u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixBinaryExpr<cva::MatrixRef<double const,3u,1u,false>,cva::MatrixScalarExpr<cva::Matrix<double,3u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::MatrixScalarExpr<cva::MatrixCrossProdExpr<cva::MatrixRef<double const,3u,1u,false>,cva::Matrix<double,3u,1u,false>>,cva::detail::MulOp>,cva::detail::AddOp>>(uint64_t *a1, uint64_t ***a2)
{
  v2 = *a1;
  v3 = *a1 - 8 * *(a1 + 3);
  v5 = *a2;
  v4 = a2[1];
  v6 = **a2;
  v7 = *v6;
  v8 = *v6 - 8 * *(v6 + 3);
  v9 = *v4;
  v10 = **v4;
  v11 = *v10;
  if (v8 == v3 || v11 - 8 * *(v10 + 3) == v3 || (v12 = v9[1], v12 == v3))
  {
    v20 = 0;
    v29 = 0uLL;
    v30 = 0;
    v21 = v5[1];
    v22 = *v21;
    v23 = v9[1];
    v24 = v21[1];
    v25 = v4[1];
    v26 = 1;
    v27 = 2;
    do
    {
      if (v20 == 16)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      *(&v29 + v20) = *(v7 + v20) + *(*&v22 + v20) * v24 + v25 * (*(v11 + 8 * v28) * *&v23[v20 / 8 + 2 + -3 * (v27 / 3)] - *(v11 + 16 - 24 * (v27 / 3) + v20) * *&v23[v28]);
      v20 += 8;
      ++v27;
      ++v26;
    }

    while (v20 != 24);
    result = *&v29;
    *v2 = v29;
    *(v2 + 16) = v30;
  }

  else
  {
    v13 = 0;
    v14 = v5[1];
    v15 = *v14;
    v16 = 1;
    v17 = 2;
    do
    {
      if (v13 == 16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      result = *(v7 + v13) + *(*&v15 + v13) * v14[1] + v4[1] * (*(v11 + 8 * v18) * *&v12[v13 / 8 + 2 + -3 * (v17 / 3)] - *(v11 + 16 - 24 * (v17 / 3) + v13) * *&v12[v18]);
      *(v2 + v13) = result;
      v13 += 8;
      ++v17;
      ++v16;
    }

    while (v13 != 24);
  }

  return result;
}

void *cva::PoseRefiner<double>::~PoseRefiner(void *a1)
{
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

char *std::vector<cva::Matrix<double,2u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<double,2u,1u,false>*,cva::Matrix<double,2u,1u,false>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, v10);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      if (v5 != result)
      {
        *result = *v5;
      }

      v5 += 16;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12];
    if (v11 != result)
    {
      do
      {
        if (v5 != result)
        {
          *result = *v5;
        }

        v5 += 16;
        result += 16;
        v12 -= 16;
      }

      while (v12);
      v11 = a1[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<cva::Matrix<double,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<double,3u,1u,false>*,cva::Matrix<double,3u,1u,false>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<cva::Matrix<double,3u,1u,false>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      if (v5 != result)
      {
        v19 = *v5;
        *(result + 2) = *(v5 + 2);
        *result = v19;
      }

      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      do
      {
        if (v5 != result)
        {
          v15 = *v5;
          *(result + 2) = *(v5 + 2);
          *result = v15;
        }

        v5 += 24;
        result += 24;
        v13 -= 24;
      }

      while (v13);
      v12 = a1[1];
    }

    v16 = v12;
    if (v14 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 24;
        v14 += 24;
        v16 += 24;
      }

      while (v14 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<cva::Matrix<double,3u,1u,false>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cva::Matrix<double,3u,1u,false>>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void btr::BodyRegistrationInfo::~BodyRegistrationInfo(btr::BodyRegistrationInfo *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }
}

void *std::vector<cva::Matrix<double,2u,1u,false>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_23EDFD838(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::Matrix<double,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v10 = 0uLL;
    v11 = 0;
    cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::Matrix<double,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(&v10);
    result = *&v10;
    *a1 = v10;
    *(a1 + 16) = v11;
  }

  else
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      result = 0.0;
      v8 = v4;
      do
      {
        v9 = *v8++;
        result = result + *(v3 + v6) * v9;
        v6 += 24;
      }

      while (v6 != 72);
      *(a1 + 8 * i) = result;
      v3 += 8;
    }
  }

  return result;
}

uint64_t GetDimensionForIndexBackwards(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 >= a2)
  {
    return 1;
  }

  else
  {
    return *(a1 + 8 * ~a3 + 8 * a2);
  }
}

uint64_t GetStrideForIndexBackwards(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 >= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 8 * ~a3 + 8 * a2;
  }

  return *v3;
}

uint64_t convertFloatToInt(float a1)
{
  v1 = a1;
  v2 = a1 < 0.0;
  v3 = 0.5;
  if (v2)
  {
    v3 = -0.5;
  }

  return (v3 + v1);
}

size_t wrapCVPixelBufferVImage@<X0>(__CVBuffer *a1@<X0>, void **a2@<X8>)
{
  *a2 = CVPixelBufferGetBaseAddress(a1);
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetBytesPerRow(a1);
  a2[3] = result;
  return result;
}

size_t vImage_Buffer_From_CVPixelBufferPlane@<X0>(__CVBuffer *a1@<X0>, size_t a2@<X1>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  a3[1] = CVPixelBufferGetHeightOfPlane(a1, a2);
  a3[2] = CVPixelBufferGetWidthOfPlane(a1, a2);
  result = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  a3[3] = result;
  return result;
}

double getImageDimensionsFromFile(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
  v2 = CGImageSourceCreateWithURL(v1, 0);
  v3 = v2;
  if (v2)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    Width = CGImageGetWidth(ImageAtIndex);
    CGImageGetHeight(ImageAtIndex);
    CGImageRelease(ImageAtIndex);
    CFRelease(v3);
    v6 = Width;
  }

  else
  {
    v7 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, " CGImageSourceCreateWithURL error: Couldn't create cgimagesource with URL ", v9, 2u);
    }

    v6 = 0.0;
  }

  return v6;
}

void readImage(uint64_t a1, CVPixelBufferRef *a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
  v4 = CGImageSourceCreateWithURL(v3, 0);
  v5 = v4;
  if (!v4)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18.a) = 0;
      v17 = " CGImageSourceCreateWithURL error: Couldn't create cgimagesource with URL ";
LABEL_8:
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, v17, &v18, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
  CFRelease(v5);
  if (!ImageAtIndex)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18.a) = 0;
      v17 = " CGImageSourceCreateImageAtIndex error: Couldn't create image. ";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*a2);
  BitsPerComponent = CGImageGetBitsPerComponent(ImageAtIndex);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*a2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  v13 = CGBitmapContextCreate(BaseAddress, Width, Height, BitsPerComponent, BytesPerRow, DeviceRGB, 6u);
  CGAffineTransformMakeRotation(&v18, 0.0);
  CGContextConcatCTM(v13, &v18);
  v14 = CGImageGetWidth(ImageAtIndex);
  v15 = CGImageGetHeight(ImageAtIndex);
  v19.size.width = v14;
  v19.size.height = v15;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextDrawImage(v13, v19, ImageAtIndex);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v13);
  CGImageRelease(ImageAtIndex);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
LABEL_10:
}

uint64_t readGrayScaleImage(uint64_t a1, CVPixelBufferRef *a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
  v4 = CGImageSourceCreateWithURL(v3, 0);
  v5 = v4;
  if (!v4)
  {
    v18 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21.a) = 0;
      v19 = " CGImageSourceCreateWithURL error: Couldn't create cgimagesource with URL ";
LABEL_8:
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, v19, &v21, 2u);
    }

LABEL_9:

    v17 = 4294960636;
    goto LABEL_10;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
  CFRelease(v5);
  if (!ImageAtIndex)
  {
    v18 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21.a) = 0;
      v19 = " CGImageSourceCreateImageAtIndex error: Couldn't create image. ";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*a2);
  BitsPerComponent = CGImageGetBitsPerComponent(ImageAtIndex);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*a2);
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  BitmapInfo = CGImageGetBitmapInfo(ImageAtIndex);
  v14 = CGBitmapContextCreate(BaseAddress, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  CGAffineTransformMakeRotation(&v21, 0.0);
  CGContextConcatCTM(v14, &v21);
  v15 = CGImageGetWidth(ImageAtIndex);
  v16 = CGImageGetHeight(ImageAtIndex);
  v22.size.width = v15;
  v22.size.height = v16;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextDrawImage(v14, v22, ImageAtIndex);
  CGImageRelease(ImageAtIndex);
  CGContextRelease(v14);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  v17 = 0;
LABEL_10:

  return v17;
}

uint64_t readImageAndConvertToYCbCr(void *a1, CVPixelBufferRef *a2)
{
  v3 = a1;
  if ((CVPixelBufferGetPixelFormatType(*a2) & 0xFFFFFFEF) == 0x34323066)
  {
    Width = CVPixelBufferGetWidth(*a2);
    Height = CVPixelBufferGetHeight(*a2);
    pixelBufferOut[0] = 0;
    v6 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x20u, 0, pixelBufferOut);
    if (v6)
    {
      v7 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, " Could not create imageARGB buffer of type kCVPixelFormatType_32ARGB ", v14, 2u);
      }

      goto LABEL_26;
    }

    readImage(v3, pixelBufferOut);
    if (pixelBufferOut[0])
    {
      if (CVPixelBufferGetPixelFormatType(pixelBufferOut[0]) == 32)
      {
        if (convertFormatARGBToYCbCr(pixelBufferOut[0], a2))
        {
          v9 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            v10 = " Could not convert pixelBuffer from ARGB->YCbCr ";
LABEL_24:
            _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, v10, v14, 2u);
            goto LABEL_25;
          }

          goto LABEL_25;
        }

        if (CVPixelBufferGetPixelFormatType(*a2) != 875704438)
        {
          v9 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            v10 = " Invalid pixel buffer format for imageYCbCr ";
            goto LABEL_24;
          }

LABEL_25:

          CVPixelBufferRelease(pixelBufferOut[0]);
          v6 = 1;
          goto LABEL_26;
        }

LABEL_20:
        CVPixelBufferRelease(pixelBufferOut[0]);
        v6 = 0;
        goto LABEL_26;
      }

      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v12 = " Invalid pixel buffer format for imageARGB ";
        goto LABEL_18;
      }
    }

    else
    {
      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        v12 = " Failed to read imageARGB from the specified path ";
LABEL_18:
        _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, v12, v14, 2u);
      }
    }

    goto LABEL_20;
  }

  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(pixelBufferOut[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange ", pixelBufferOut, 2u);
  }

  v6 = 4294960616;
LABEL_26:

  return v6;
}

vImage_Error convertFormatARGBToYCbCr(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  memset(&src, 0, sizeof(src));
  wrapCVPixelBufferVImage(a1, &src.data);
  *permuteMap = 50462976;
  memset(&destYp, 0, sizeof(destYp));
  vImage_Buffer_From_CVPixelBufferPlane(*a2, 0, &destYp.data);
  memset(&destCbCr, 0, sizeof(destCbCr));
  vImage_Buffer_From_CVPixelBufferPlane(*a2, 1uLL, &destCbCr.data);
  v5 = *MEMORY[0x277CB86C8];
  v6.i32[0] = 875704422;
  v7.i32[0] = PixelFormatType;
  v8 = vbsl_s8(vdup_lane_s32(vceq_s32(v7, v6), 0), 0x1000000FFLL, 0x10000000EBLL);
  pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
  pixelRange.CbCr_bias = 128;
  pixelRange.YpRangeMax = v8.i32[0];
  if (PixelFormatType == 875704422)
  {
    v9 = 255;
  }

  else
  {
    v9 = 240;
  }

  pixelRange.CbCrRangeMax = v9;
  *&pixelRange.YpMax = v8;
  pixelRange.CbCrMax = v9;
  pixelRange.CbCrMin = 16 * (PixelFormatType != 875704422);
  if (vImageConvert_ARGBToYpCbCr_GenerateConversion(v5, &pixelRange, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0))
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      v11 = " Could not generate the conversion format ";
LABEL_10:
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_ERROR, v11, v14, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  result = vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &outInfo, permuteMap, 0);
  if (result)
  {
    v10 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      v11 = " Could not generate the convert image ";
      goto LABEL_10;
    }

LABEL_11:

    result = 4294960636;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t writeImage(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelFormatType;
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_8;
    }

    v6 = 875704422;
  }

  else
  {
    if (PixelFormatType == 875704438 || PixelFormatType == 1111970369)
    {
      goto LABEL_8;
    }

    v6 = 1278226488;
  }

  if (PixelFormatType != v6)
  {
    v13 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_ERROR, " Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, kCVPixelFormatType_OneComponent8 or kCVPixelFormatType_32ARGB or kCVPixelFormatType_32BGRA ", &buf, 2u);
    }

    v10 = 4294960616;
    goto LABEL_42;
  }

LABEL_8:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  pixelBufferOut = 0;
  if ((v5 & 0x7E77726F) == 0x34323066)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], WidthOfPlane, HeightOfPlane, 0x20u, 0, &pixelBufferOut);
    if (v10)
    {
      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v12 = " Could not create image buffer of type kCVPixelFormatType_32ARGB ";
LABEL_23:
        _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, v12, &buf, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v10 = convertFormatYCbCrToARGB(a1, &pixelBufferOut);
    if (v10)
    {
      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v12 = " Could not convert pixel formats ";
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  else if (v5 == 1111970369)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], WidthOfPlane, HeightOfPlane, 0x20u, 0, &pixelBufferOut);
    if (v10)
    {
      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v12 = " Could not create image buffer of type kCVPixelFormatType_32ARGB ";
        goto LABEL_23;
      }

LABEL_24:

      goto LABEL_42;
    }

    if (changeChannelsARGB(a1, &pixelBufferOut))
    {
      v14 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_ERROR, " Conversion failed BGRA->ARGB ", &buf, 2u);
      }
    }
  }

  else
  {
    pixelBufferOut = a1;
    CVPixelBufferRetain(a1);
    v9 = *MEMORY[0x277CBECE8];
  }

  v28 = 0;
  v10 = CVPixelBufferCreate(v9, WidthOfPlane, HeightOfPlane, 0x18u, 0, &v28);
  if (v10)
  {
    v15 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, " Could not convert image buffer to kCVPixelFormatType_24RGB ", &buf, 2u);
    }

    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    CVPixelBufferLockBaseAddress(v28, 0);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    memset(&buf, 0, sizeof(buf));
    buf.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
    buf.height = CVPixelBufferGetHeight(pixelBufferOut);
    buf.width = CVPixelBufferGetWidth(pixelBufferOut);
    buf.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v26.data = CVPixelBufferGetBaseAddress(v28);
    v26.height = CVPixelBufferGetHeight(v28);
    v26.width = CVPixelBufferGetWidth(v28);
    v26.rowBytes = CVPixelBufferGetBytesPerRow(v28);
    v16 = vImageConvert_ARGB8888toRGB888(&buf, &v26, 0x10u);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CVPixelBufferUnlockBaseAddress(v28, 0);
    if (v16)
    {
      v17 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, " Could not convert ARGB to RGB ", v22, 2u);
      }

      CVPixelBufferRelease(pixelBufferOut);
      CVPixelBufferRelease(v28);
      v10 = 4294960633;
    }

    else
    {
      CVPixelBufferLockBaseAddress(v28, 0);
      Width = CVPixelBufferGetWidth(v28);
      *v22 = 0;
      v23 = Width | (CVPixelBufferGetHeight(v28) << 32);
      v24 = (CVPixelBufferGetBytesPerRowOfPlane(v28, 0) << 32) | 3;
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v28, 0);
      [v3 UTF8String];
      LOBYTE(Width) = cva::imwrite<cva::Matrix<unsigned char,3u,1u,false>>();
      CVPixelBufferUnlockBaseAddress(v28, 0);
      CVPixelBufferRelease(v28);
      CVPixelBufferRelease(pixelBufferOut);
      if (Width)
      {
        v10 = 0;
      }

      else
      {
        v19 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, " Could not save image to file ", v21, 2u);
        }

        v10 = 4294960636;
      }
    }
  }

LABEL_42:

  return v10;
}

uint64_t convertFormatYCbCrToARGB(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (a1)
  {
    v7 = Height;
    v8 = CVPixelBufferGetPixelFormatType(*a2);
    v9 = CVPixelBufferGetWidth(*a2);
    v10 = CVPixelBufferGetHeight(*a2);
    if (v8 == 32)
    {
      if (v10 == v7 && v9 == Width)
      {
        CVPixelBufferLockBaseAddress(*a2, 0);
        CVPixelBufferLockBaseAddress(a1, 0);
        v13 = *MEMORY[0x277CB86F0];
        *permuteMap = 50462976;
        if ((PixelFormatType | 0x10) == 0x34323076)
        {
          v11.i32[0] = 875704422;
          v12.i32[0] = PixelFormatType;
          v14 = vbsl_s8(vdup_lane_s32(vceq_s32(v12, v11), 0), 0x1000000FFLL, 0x10000000EBLL);
          pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
          pixelRange.CbCr_bias = 128;
          pixelRange.YpRangeMax = v14.i32[0];
          if (PixelFormatType == 875704422)
          {
            v15 = 255;
          }

          else
          {
            v15 = 240;
          }

          pixelRange.CbCrRangeMax = v15;
          *&pixelRange.YpMax = v14;
          pixelRange.CbCrMax = v15;
          pixelRange.CbCrMin = 16 * (PixelFormatType != 875704422);
          if (vImageConvert_YpCbCrToARGB_GenerateConversion(v13, &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
          {
            v16 = __ABPKLogSharedInstance();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.data) = 0;
              _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, " Could not generate the conversion format ", &buf, 2u);
            }
          }

          memset(&buf, 0, sizeof(buf));
          __convertFormatYCbCrToARGB_block_invoke(a1, 0, &buf.data);
          memset(&srcCbCr, 0, sizeof(srcCbCr));
          __convertFormatYCbCrToARGB_block_invoke(a1, 1uLL, &srcCbCr.data);
          memset(&dest, 0, sizeof(dest));
          __convertFormatYCbCrToARGB_block_invoke(*a2, 0, &dest.data);
          if (!vImageConvert_420Yp8_CbCr8ToARGB8888(&buf, &srcCbCr, &dest, &outInfo, permuteMap, 0xFFu, 0))
          {
            v19 = 0;
            goto LABEL_32;
          }

          v17 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, " Could not convert color formats ", v23, 2u);
          }
        }

        else
        {
          v22 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *outInfo.opaque = 0;
            _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, " Pixel format not supported ", outInfo.opaque, 2u);
          }
        }

        v19 = 4294960636;
LABEL_32:
        CVPixelBufferUnlockBaseAddress(*a2, 0);
        CVPixelBufferUnlockBaseAddress(a1, 0);
        goto LABEL_26;
      }

      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Output pixel buffer must have same dimensions as input pixel buffer ", outInfo.opaque, 2u);
      }
    }

    else
    {
      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Output pixel buffer must have format kCVPixelFormatType_32ARGB ", outInfo.opaque, 2u);
      }
    }
  }

  else
  {
    v18 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *outInfo.opaque = 0;
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Input buffer cannot be null ", outInfo.opaque, 2u);
    }
  }

  v19 = 0;
LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t changeChannelsARGB(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  memset(&src, 0, sizeof(src));
  wrapCVPixelBufferVImage(a1, &src.data);
  memset(&dest, 0, sizeof(dest));
  wrapCVPixelBufferVImage(*a2, &dest.data);
  *permuteMap = 66051;
  v4 = vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Could not convert ARGB to RGB ", v7, 2u);
  }

  return 4294960633;
}

uint64_t saveDepthBufferToFile(__CVBuffer *a1, void *a2, float a3)
{
  v5 = a2;
  CVPixelBufferLockBaseAddress(a1, 0);
  v25 = 0u;
  v26 = 0u;
  wrapCVPixelBufferVImage(a1, &v25);
  v6 = v26;
  v7 = v25;
  v8 = v26 | (DWORD2(v25) << 32);
  v9 = ((v26 << 33) + 0xF00000000) & 0xFFFFFFF000000000;
  v27 = v9 | 2;
  v28 = v8;
  v10 = cva::Array<unsigned short,2u,16u>::allocate(&v28, &v27);
  if (v6)
  {
    v11 = 0;
    do
    {
      if (DWORD2(v7))
      {
        v12 = 0;
        do
        {
          v13 = 0;
          v27 = v11 | (v12 << 32);
          v28 = v8;
          do
          {
            v14 = *(&v27 + v13);
            v15 = *(&v28 + v13);
            v16 = v14 >= v15 || v13 == 4;
            v13 += 4;
          }

          while (!v16);
          if (v14 >= v15)
          {
            goto LABEL_28;
          }

          v17 = 0;
          v18 = *(v7 + (4 * v11 + v12 * DWORD2(v6))) * a3;
          v19 = v18 < 0.0;
          if (v18 > 65535.0)
          {
            v19 = 1;
          }

          v27 = v11 | (v12 << 32);
          v28 = v8;
          do
          {
            v20 = *(&v27 + v17);
            v21 = *(&v28 + v17);
            v22 = v20 >= v21 || v17 == 4;
            v17 += 4;
          }

          while (!v22);
          if (v20 >= v21)
          {
LABEL_28:
            __assert_rtn("operator[]", "arrayview.h", 267, "(check_bounds(*this, idx)) || cva::detail::assertMessage(Index out of bounds!)");
          }

          v23 = v18;
          if (v19)
          {
            LOWORD(v23) = 0;
          }

          *&v10[(2 * v11 + HIDWORD(v9) * v12++) & 0xFFFFFFFE] = v23;
        }

        while (v12 != DWORD2(v7));
      }

      ++v11;
    }

    while (v11 != v6);
  }

  [v5 UTF8String];
  cva::imwrite<unsigned short>();
  CVPixelBufferUnlockBaseAddress(a1, 0);
  if (v10)
  {
    free(v10);
  }

  return 0;
}

size_t __convertFormatYCbCrToARGB_block_invoke@<X0>(CVPixelBufferRef pixelBuffer@<X1>, size_t planeIndex@<X2>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, planeIndex);
  a3[1] = CVPixelBufferGetHeightOfPlane(pixelBuffer, planeIndex);
  a3[2] = CVPixelBufferGetWidthOfPlane(pixelBuffer, planeIndex);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, planeIndex);
  a3[3] = result;
  return result;
}

uint64_t convertFormatYCbCrToBGRA(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (a1)
  {
    v7 = Height;
    v8 = CVPixelBufferGetPixelFormatType(*a2);
    v9 = CVPixelBufferGetWidth(*a2);
    v10 = CVPixelBufferGetHeight(*a2);
    if (v8 == 1111970369)
    {
      if (v10 == v7 && v9 == Width)
      {
        CVPixelBufferLockBaseAddress(*a2, 0);
        CVPixelBufferLockBaseAddress(a1, 0);
        v13 = *MEMORY[0x277CB86F0];
        *permuteMap = 66051;
        if ((PixelFormatType | 0x10) == 0x34323076)
        {
          v11.i32[0] = 875704422;
          v12.i32[0] = PixelFormatType;
          v14 = vbsl_s8(vdup_lane_s32(vceq_s32(v12, v11), 0), 0x1000000FFLL, 0x10000000EBLL);
          pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
          pixelRange.CbCr_bias = 128;
          pixelRange.YpRangeMax = v14.i32[0];
          if (PixelFormatType == 875704422)
          {
            v15 = 255;
          }

          else
          {
            v15 = 240;
          }

          pixelRange.CbCrRangeMax = v15;
          *&pixelRange.YpMax = v14;
          pixelRange.CbCrMax = v15;
          pixelRange.CbCrMin = 16 * (PixelFormatType != 875704422);
          if (vImageConvert_YpCbCrToARGB_GenerateConversion(v13, &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
          {
            v16 = __ABPKLogSharedInstance();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.data) = 0;
              _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, " Could not generate the conversion format ", &buf, 2u);
            }
          }

          memset(&buf, 0, sizeof(buf));
          __convertFormatYCbCrToARGB_block_invoke(a1, 0, &buf.data);
          memset(&srcCbCr, 0, sizeof(srcCbCr));
          __convertFormatYCbCrToARGB_block_invoke(a1, 1uLL, &srcCbCr.data);
          memset(&dest, 0, sizeof(dest));
          __convertFormatYCbCrToARGB_block_invoke(*a2, 0, &dest.data);
          if (!vImageConvert_420Yp8_CbCr8ToARGB8888(&buf, &srcCbCr, &dest, &outInfo, permuteMap, 0xFFu, 0))
          {
            v19 = 0;
            goto LABEL_32;
          }

          v17 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, " Could not convert color formats ", v23, 2u);
          }
        }

        else
        {
          v22 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *outInfo.opaque = 0;
            _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, " Pixel format not supported ", outInfo.opaque, 2u);
          }
        }

        v19 = 4294960636;
LABEL_32:
        CVPixelBufferUnlockBaseAddress(*a2, 0);
        CVPixelBufferUnlockBaseAddress(a1, 0);
        goto LABEL_26;
      }

      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Output pixel buffer must have same dimensions as input pixel buffer ", outInfo.opaque, 2u);
      }
    }

    else
    {
      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *outInfo.opaque = 0;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Output pixel buffer must have format kCVPixelFormatType_32BGRA ", outInfo.opaque, 2u);
      }
    }
  }

  else
  {
    v18 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *outInfo.opaque = 0;
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Input buffer cannot be null ", outInfo.opaque, 2u);
    }
  }

  v19 = 0;
LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t convertFormatGrayscaleToYCbCr(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) == 1278226488)
  {
    if (CVPixelBufferGetPixelFormatType(*a2) == 875704422 || CVPixelBufferGetPixelFormatType(*a2) == 875704438)
    {
      pixelBufferOut = 0;
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v15 = *MEMORY[0x277CC4DE8];
      v16[0] = MEMORY[0x277CBEC10];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x20u, v6, &pixelBufferOut))
      {
        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          v8 = " Could not create pixelBuffer for kCVPixelFormatType_32ARGB. ";
LABEL_13:
          _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, v8, v13, 2u);
        }
      }

      else
      {
        convertFormatGrayScaleToARGB_BGRA(a1, &pixelBufferOut);
        if (!convertFormatARGBToYCbCr(pixelBufferOut, a2))
        {
          CVPixelBufferRelease(pixelBufferOut);
          v10 = 0;
          goto LABEL_15;
        }

        v7 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          v8 = " Could not convert pixelBuffer from ARGB->YCbCr ";
          goto LABEL_13;
        }
      }

      CVPixelBufferRelease(pixelBufferOut);
      v10 = 4294960636;
LABEL_15:

      goto LABEL_16;
    }

    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut) = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Output pixel buffer must have format kCVPixelFormatType_420YpCbCr8BiPlanarFullRange or kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange ", &pixelBufferOut, 2u);
    }
  }

  else
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut) = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Input pixel buffer must have format kCVPixelFormatType_OneComponent8 ", &pixelBufferOut, 2u);
    }
  }

  v10 = 4294960635;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t convertFormatGrayScaleToARGB_BGRA(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  dest.data = CVPixelBufferGetBaseAddress(*a2);
  dest.height = CVPixelBufferGetHeight(*a2);
  dest.width = CVPixelBufferGetWidth(*a2);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(*a2);
  v5.data = CVPixelBufferGetBaseAddress(a1);
  v5.height = CVPixelBufferGetHeight(a1);
  v5.width = CVPixelBufferGetWidth(a1);
  v5.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  vImageOverwriteChannels_ARGB8888(&v5, &dest, &dest, 2u, 0x10u);
  vImageOverwriteChannels_ARGB8888(&v5, &dest, &dest, 4u, 0x10u);
  vImageOverwriteChannels_ARGB8888(&v5, &dest, &dest, 8u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0x10u);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  return 0;
}

uint64_t cropImage(__CVBuffer *a1, CVPixelBufferRef *a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  src.width = v8;
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  src.data = &BaseAddress[4 * v6 + src.rowBytes * v5];
  src.height = v7;
  memset(&dest, 0, sizeof(dest));
  wrapCVPixelBufferVImage(*a2, &dest.data);
  v10 = vImageScale_ARGB8888(&src, &dest, 0, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  if (!v10)
  {
    return 0;
  }

  v11 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " Could not crop image ", v13, 2u);
  }

  return 4294960633;
}

uint64_t flipImage(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  memset(&src, 0, sizeof(src));
  wrapCVPixelBufferVImage(a1, &src.data);
  memset(&dest, 0, sizeof(dest));
  wrapCVPixelBufferVImage(*a2, &dest.data);
  v4 = vImageVerticalReflect_ARGB8888(&src, &dest, 0x10u);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Could not flip image ", v7, 2u);
  }

  return 4294960633;
}

uint64_t rotateImage90(__CVBuffer *a1, int a2, CVPixelBufferRef *a3)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a3, 0);
  memset(&src, 0, sizeof(src));
  wrapCVPixelBufferVImage(a1, &src.data);
  memset(&dest, 0, sizeof(dest));
  wrapCVPixelBufferVImage(*a3, &dest.data);
  v6 = 0;
  if (a2 > 89)
  {
    if (a2 <= 269)
    {
      if (a2 != 90)
      {
        if (a2 != 180)
        {
          goto LABEL_15;
        }

LABEL_9:
        v6 = 2;
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a2 != 270)
    {
      if (a2 != 360)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  if (a2 <= -91)
  {
    if (a2 != -270)
    {
      if (a2 != -180)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_17:
    v6 = 3;
    goto LABEL_19;
  }

  if (a2 == -90)
  {
    goto LABEL_18;
  }

  if (a2)
  {
LABEL_15:
    v7 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v8 = " Invalid rotation angle specified ";
LABEL_22:
      _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, v8, v11, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

LABEL_19:
  v9 = vImageRotate90_ARGB8888(&src, &dest, v6, rotateImage90::bgColor, 0x10u);
  CVPixelBufferUnlockBaseAddress(*a3, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  if (v9)
  {
    v7 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v8 = " Could not rotate image ";
      goto LABEL_22;
    }

LABEL_23:

    return 4294960633;
  }

  return 0;
}

uint64_t scaleImage(__CVBuffer *a1, CVPixelBufferRef *a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  memset(&src, 0, sizeof(src));
  wrapCVPixelBufferVImage(a1, &src.data);
  memset(&dest, 0, sizeof(dest));
  wrapCVPixelBufferVImage(*a2, &dest.data);
  v4 = vImageScale_ARGB8888(&src, &dest, 0, 0);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Could not scale image ", v7, 2u);
  }

  return 4294960633;
}

uint64_t padImage(__CVBuffer *a1, CVPixelBufferRef *a2, uint64_t a3, uint64_t a4)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(*a2, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Height = CVPixelBufferGetHeight(a1);
  v12 = CVPixelBufferGetBytesPerRow(*a2);
  v13 = CVPixelBufferGetBaseAddress(*a2);
  if (Height)
  {
    v14 = &v13[(a4 << (2 * (PixelFormatType != 1278226488))) + v12 * a3];
    do
    {
      memcpy(v14, BaseAddress, BytesPerRow);
      v14 += v12;
      BaseAddress += BytesPerRow;
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(*a2, 0);
  return 0;
}

void reprojectOnImage(uint64_t a1, uint64_t a2, void *a3, float a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  v35 = HIDWORD(a5);
  v37[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (a2)
  {
    v13 = 0;
    _S8 = v35;
    do
    {
      *v15.i64 = transform_point(a7, a8, a9, a10, *(a1 + 16 * v13));
      v16 = v15;
      v17 = v15.f32[2];
      v15.i32[1] = HIDWORD(a6);
      v36 = v16.i32[1];
      v15.f32[0] = (vmuls_lane_f32(*&a6, v16, 2) + (a4 * v16.f32[0])) / v15.f32[2];
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:*v15.i64];
      _V1.S[1] = v36;
      __asm { FMLA            S0, S8, V1.S[1] }

      *&v25 = _S0 / v17;
      v37[0] = v18;
      v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
      v37[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      [v12 setObject:v27 atIndexedSubscript:v13];

      ++v13;
    }

    while (a2 != v13);
  }

  v28 = *MEMORY[0x277D85DE8];
}

id normalize2dKeypoints(NSMutableArray *a1, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v4, "count")}];
  for (i = 0; [(NSMutableArray *)v4 count]> i; ++i)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [(NSMutableArray *)v4 objectAtIndexedSubscript:i];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 floatValue];
    v10 = [v6 numberWithDouble:v9 / width];
    v20[0] = v10;
    v11 = MEMORY[0x277CCABB0];
    v12 = [(NSMutableArray *)v4 objectAtIndexedSubscript:i];
    v13 = [v12 objectAtIndexedSubscript:1];
    [v13 floatValue];
    v15 = [v11 numberWithDouble:v14 / height];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v19 setObject:v16 atIndexedSubscript:i];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t overlay2dSkeleton(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = objc_opt_new();
  v14 = [v13 generateStickFigureImageFrom:a1 detectedBodies2d:v10 confidences:v11 skeletonDefinition:v12 overlayImage:a5 color:0 faceOnly:a6];

  return v14;
}

uint64_t overlay2dBoundingBox(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_new();
  v14 = [v13 drawBoundingBox:a1 withColor:a2 OnImage:a3 andGenerateOverlayImage:{a4, a5, a6, a7}];

  return v14;
}

uint64_t overlay2dFace(uint64_t a1, void *a2, void *a3, uint64_t a4, __n128 a5)
{
  v8 = a2;
  v9 = a3;
  v10 = objc_opt_new();
  if (*[v9 visibility] == 1 && *(objc_msgSend(v9, "visibility") + 56) == 1 && *(objc_msgSend(v9, "visibility") + 60) == 1 && *(objc_msgSend(v9, "visibility") + 68) == 1 && *(objc_msgSend(v9, "visibility") + 72) == 1)
  {
    v11 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_INFO, " Not all 5 face joints are visible. This person is probably not facing the camera at this frame. ", buf, 2u);
    }

    v12 = [v9 skeletonDefinition];
    [v10 drawFaceBbox:a1 detectedBodies2d:v8 skeletonDefinition:v12 overlayImage:a4 color:a5.n128_f64[0]];
  }

  v13 = [v9 skeletonDefinition];
  v14 = [v10 generateStickFigureImageFrom:a1 detectedBodies2d:v8 confidences:0 skeletonDefinition:v13 overlayImage:a4 color:1 faceOnly:v17];

  return v14;
}

uint64_t overlay2dResultOnImage(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = [v6 skeletonDefinition];
  v8 = [v7 jointCount];

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  v37 = a3;
  [v6 imageRes];
  v12 = v11;
  [v6 imageRes];
  if (v8)
  {
    v14 = 0;
    v15 = v12;
    v16 = v13;
    v35 = v8 - 1;
    v17 = 1;
LABEL_3:
    v36 = v17;
    v18 = (8 * v14) | 4;
    do
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = *([v6 keypoints2d] + 8 * v14);
      *&v20 = *&v20 / v15;
      v21 = [v19 numberWithFloat:v20];
      v39[0] = v21;
      v22 = MEMORY[0x277CCABB0];
      *&v23 = *([v6 keypoints2d] + v18) / v16;
      v24 = [v22 numberWithFloat:v23];
      v39[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      [v9 setObject:v25 atIndexedSubscript:v14];

      v26 = MEMORY[0x277CCABB0];
      LODWORD(v27) = *([v6 confidences] + 4 * v14);
      v28 = [v26 numberWithFloat:v27];
      [v10 setObject:v28 atIndexedSubscript:v14];

      if (*([v6 confidences] + 4 * v14) != 0.5 && *(objc_msgSend(v6, "confidences") + 4 * v14) != 0.0)
      {
        v17 = 0;
        if (v35 != v14++)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      ++v14;
      v18 += 8;
    }

    while (v8 != v14);
    if (v36)
    {
      goto LABEL_12;
    }

LABEL_13:
    v30 = [v6 skeletonDefinition];
    v31 = overlay2dSkeleton(a2, v9, v10, v30, v37, a4);
  }

  else
  {
LABEL_12:
    v30 = [v6 skeletonDefinition];
    v31 = overlay2dSkeleton(a2, v9, 0, v30, v37, a4);
  }

  v32 = v31;

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t overlay3dResultOnImage(void *a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, CGFloat a7, CGFloat a8, __n128 a9)
{
  v29 = a9;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v13 = a1;
  v14 = [v13 skeletonDefinition];
  v15 = [v14 jointCount];

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v15);
  if (v15)
  {
    v17 = 0;
    v18 = 48;
    do
    {
      v19 = [v13 modelPoses];
      *(__p[0] + v17++) = *(v19 + v18);
      v18 += 64;
    }

    while (v15 != v17);
  }

  v20 = __p[0];
  [v13 cameraRootTransform];
  reprojectOnImage(v20, v15, v16, v31.n128_f32[0], v32.n128_f64[0], v33.n128_f64[0], v21, v22, v23, v24);
  v35.width = a7;
  v35.height = a8;
  v25 = normalize2dKeypoints(v16, v35);
  v26 = [v13 skeletonDefinition];
  v27 = overlay2dSkeleton(a2, v25, 0, v26, a3, v30);

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v27;
}

void sub_23EE022D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t drawFullyVisibleFace(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = [v6 skeletonDefinition];
  v8 = [v7 jointCount];

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  [v6 imageRes];
  v11 = v10;
  [v6 imageRes];
  if (v8)
  {
    v13 = 0;
    v14 = v11;
    v15 = v12;
    do
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = *([v6 keypoints2d] + 8 * v13);
      *&v17 = *&v17 / v14;
      v18 = [v16 numberWithFloat:v17];
      v27[0] = v18;
      v19 = MEMORY[0x277CCABB0];
      *&v20 = *([v6 keypoints2d] + 8 * v13 + 4) / v15;
      v21 = [v19 numberWithFloat:v20];
      v27[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v9 setObject:v22 atIndexedSubscript:v13];

      ++v13;
    }

    while (v13 != v8);
  }

  v23 = overlay2dFace(a2, v9, v6, a3, a4);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL transferCVPixelBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &pixelTransferSessionOut);
  v4 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
  if (v4)
  {
    v5 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Could not transfer image. ", v7, 2u);
    }
  }

  else
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  }

  return v4 == 0;
}

uint64_t convert16BitDepthToFloat32Depth(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelFormatType == 1278226742 && v5 == 1717855600;
  v7 = v6;
  if (v6)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v9 = CVPixelBufferGetBytesPerRow(a2);
    Height = CVPixelBufferGetHeight(a2);
    Width = CVPixelBufferGetWidth(a2);
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v13 = CVPixelBufferGetBaseAddress(a2);
    if (Height)
    {
      for (i = 0; i != Height; ++i)
      {
        v15 = Width;
        v16 = v13;
        for (j = BaseAddress; v15; --v15)
        {
          v18 = *j++;
          *v16++ = v18 / 10000.0;
        }

        BaseAddress = (BaseAddress + BytesPerRow);
        v13 = (v13 + v9);
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    CVPixelBufferUnlockBaseAddress(a2, 0);
  }

  else
  {
    v19 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, " Source buffer must have pixel format kCVPixelFormatType_OneComponent16 and destination buffer kCVPixelFormatType_DepthFloat32. ", v22, 2u);
    }
  }

  return v7;
}

uint64_t unWrapOneComponent16BufferDepth32BitsBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1278226742 || v5 != 1717855600)
  {
    v16 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v25 = 0;
    v17 = " Source buffer must have pixel format kCVPixelFormatType_OneComponent16 and destination buffer kCVPixelFormatType_DepthFloat32. ";
    v18 = &v25;
LABEL_16:
    _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_17;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  v10 = CVPixelBufferGetHeight(a2);
  v11 = CVPixelBufferGetWidth(a2);
  if (Height != v10)
  {
    v16 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 0;
    v17 = " Source buffer and destination buffer must have the same height ";
    v18 = &v24;
    goto LABEL_16;
  }

  v12 = v11;
  if (Width != 2 * v11)
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v17 = " Source buffer must have double the width of the source buffer ";
      v18 = &v23;
      goto LABEL_16;
    }

LABEL_17:

    return 0;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v14 = CVPixelBufferGetBaseAddress(a2);
  if (BytesPerRow == v9)
  {
    if (Height)
    {
      v15 = 0;
      do
      {
        memcpy(&v14[v15], &BaseAddress[v15], BytesPerRow);
        v15 += BytesPerRow;
        --Height;
      }

      while (Height);
    }
  }

  else if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (v12)
      {
        v21 = 0;
        v22 = v12;
        do
        {
          *&v14[v21] = *&BaseAddress[i * BytesPerRow + (v21 & 0xFFFFFFFC)];
          v21 += 4;
          --v22;
        }

        while (v22);
      }

      v14 += v9;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 1;
}

__CFString *getPixelBufferFormatTypeAsString(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = &stru_28516DA30;
  if (PixelFormatType > 1278226487)
  {
    v3 = 1278226535;
    v7 = @"kCVPixelFormatType_DepthFloat32";
    v8 = @"kCVPixelFormatType_OneComponent16";
    if (PixelFormatType != 1278226742)
    {
      v8 = &stru_28516DA30;
    }

    if (PixelFormatType != 1717855600)
    {
      v7 = v8;
    }

    if (PixelFormatType == 1278226536)
    {
      v6 = @"kCVPixelFormatType_OneComponent16Half";
    }

    else
    {
      v6 = v7;
    }

    if (PixelFormatType == 1278226534)
    {
      v2 = @"kCVPixelFormatType_OneComponent32Float";
    }

    if (PixelFormatType == 1278226488)
    {
      v2 = @"kCVPixelFormatType_OneComponent8";
    }
  }

  else
  {
    v3 = 875704421;
    v4 = @"kCVPixelFormatType_32BGRA";
    if (PixelFormatType != 1111970369)
    {
      v4 = &stru_28516DA30;
    }

    if (PixelFormatType == 875704438)
    {
      v5 = @"kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange";
    }

    else
    {
      v5 = v4;
    }

    if (PixelFormatType == 875704422)
    {
      v6 = @"kCVPixelFormatType_420YpCbCr8BiPlanarFullRange";
    }

    else
    {
      v6 = v5;
    }

    if (PixelFormatType == 32)
    {
      v2 = @"kCVPixelFormatType_32ARGB";
    }

    if (PixelFormatType == 24)
    {
      v2 = @"kCVPixelFormatType_24RGB";
    }
  }

  if (PixelFormatType <= v3)
  {
    return v2;
  }

  else
  {
    return v6;
  }
}

void *cva::Array<unsigned short,2u,16u>::allocate(uint64_t a1, uint64_t a2)
{
  size = *(a1 + 4) * *(a2 + 4);
  if (!size)
  {
    return 0;
  }

  result = malloc_type_malloc(size, 0x1000040BDFB0063uLL);
  if (!result)
  {
    cva::Array<unsigned short,2u,16u>::allocate();
  }

  return result;
}

void printErrorCode(int a1)
{
  v2 = __ABPKLogSharedInstance();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (a1 > -6663)
  {
    if (a1 <= -6661)
    {
      if (a1 == -6662)
      {
        if (v3)
        {
          *v5 = 0;
          v4 = " 2d-3d lifting failed ";
          goto LABEL_25;
        }
      }

      else if (v3)
      {
        *v5 = 0;
        v4 = " 2d Pose estimation failed ";
LABEL_25:
        _os_log_impl(&dword_23EDDC000, v2, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (a1 == -6660)
    {
      if (v3)
      {
        *v5 = 0;
        v4 = " Image preprocessing failed ";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (!a1)
    {
      if (v3)
      {
        *v5 = 0;
        v4 = " Algorithm executed successfully ";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_17:
    if (v3)
    {
      *v5 = 0;
      v4 = " Invalid error code ";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a1 == -6666)
  {
    if (v3)
    {
      *v5 = 0;
      v4 = " Skeleton image overlay failed ";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a1 == -6665)
  {
    if (v3)
    {
      *v5 = 0;
      v4 = " Skeleton conversion failed ";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a1 != -6664)
  {
    goto LABEL_17;
  }

  if (v3)
  {
    *v5 = 0;
    v4 = " 3d camera-bodypose registration failed ";
    goto LABEL_25;
  }

LABEL_26:
}

float std::deque<float>::push_back(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    std::deque<float>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void sub_23EE03EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  free(a26);
  free(a29);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a1 + 6;
  v6 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
  v13[0] = v6;
  v13[1] = v7;
  v8 = *a2;
  v14 = v13;
  v15 = v8;
  if (a1[10] != HIDWORD(v6))
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
  }

  v17[0] = &v16;
  v17[1] = &v14;
  v12 = a1;
  if (a1[5] != v6)
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
  }

  v9 = (a1[4] * a1[11]);
  *a3 = 0;
  *(a3 + 8) = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(a3, v9);
  v10 = a1[4];
  *(a3 + 16) = v16[5];
  *(a3 + 20) = v10;
  v19 = v17;
  v20 = &v12;
  if (*v14 != a1[5])
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v21 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(a3, v18);
  v11 = *MEMORY[0x277D85DE8];
}

void **cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(void **a1)
{
  free(a1[6]);
  free(a1[3]);
  free(*a1);
  return a1;
}

void cva::MatrixData<float,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      *a1 = 0;

      cva::MatrixData<int,0ul,0ul,false>::allocate(a1, a2);
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void *std::deque<float>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<float *>::emplace_back<float *&>(a1, &v10);
}

void sub_23EE04454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<float *>::emplace_back<float *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<float *>::emplace_front<float *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<float *>::emplace_back<float *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<float *>::emplace_front<float *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<float>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,0u,0u,false> const&>(a1, a2, a3, a4);
  return a1;
}

void sub_23EE049B0(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,0u,0u,false> const&>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 72) = v5;
  *(a1 + 76) = v6;
  if (!(v5 | v6))
  {
    *(a1 + 80) = 1;
LABEL_8:
    v7 = *(a1 + 48);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    free(v7);
    v8 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v8);
    v9 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;

    free(v9);
    return;
  }

  if (a4 && fabsf((v5 - v6)) >= ((v6 + v5) * 0.1))
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<float,0u,0u,false>>(a1, a2, a3);
  }

  else
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::Matrix<float,0u,0u,false>>(a1, a2, a3);
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    goto LABEL_8;
  }
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(a2 + 20) * *(a2 + 16));
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(__dst, v6);
  if (v6)
  {
    memcpy(__dst[0], *a2, 4 * v6);
  }

  __dst[2] = *(a2 + 16);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, __dst, a3);
  free(__dst[0]);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<float,0u,0u,false>>(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a3;
  v48 = *MEMORY[0x277D85DE8];
  if (a2[5] >= a2[4])
  {
    v41 = a2;
    v44 = a2;
    v45 = &v41;
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>>(a1, &v44, a3 != 0);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_37;
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = *(a1 + 48);
      v14 = 4 * v12;
      do
      {
        *v13 = sqrtf(*v13);
        ++v13;
        v14 -= 4;
      }

      while (v14);
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_37;
    }

    v34 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
    v35 = v15;
    v36 = &v34;
    v37 = 925353388;
    v38 = a1;
    if (*(a1 + 20) != v34)
    {
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
    }

    v39 = &v36;
    v40 = &v38;
    if (*(a1 + 16) != a2[4])
    {
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
    }

    v16 = HIDWORD(v34);
    if (__PAIR64__(a2[5], HIDWORD(v34)) == *(a1 + 40))
    {
      v45 = &v39;
      v46 = a2;
LABEL_30:
      v47 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>((a1 + 24), &v44);
      goto LABEL_37;
    }

    v20 = *(a1 + 24);
    if (*v15 == v20)
    {
      v21 = a2[5];
    }

    else
    {
      v21 = a2[5];
      if (*a1 != v20 && *a2 != v20)
      {
        *(a1 + 40) = HIDWORD(v34);
        *(a1 + 44) = v21;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 24, (v21 * v16));
        v22 = a2[4];
        v23 = *(*v40 + 4);
        v45 = &v39;
        v46 = a2;
        if (v23 != v22)
        {
          cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
        }

        goto LABEL_30;
      }
    }

    v41 = 0;
    v42 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v41, (v21 * HIDWORD(v34)));
    v30 = a2[4];
    v29 = a2[5];
    LODWORD(v43) = *(*v39 + 1);
    HIDWORD(v43) = v29;
    v45 = &v39;
    v46 = a2;
    if (*(*v40 + 4) != v30)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v47 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(&v41, &v44);
    v26 = *(a1 + 24);
    v31 = *(a1 + 32);
    v32 = v42;
    *(a1 + 24) = v41;
    *(a1 + 32) = v32;
    v41 = v26;
    v42 = v31;
    *(a1 + 40) = v43;
    goto LABEL_36;
  }

  v41 = a2;
  v44 = &v41;
  v45 = a2;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(a1, &v44, 2 * (a3 != 0));
  if (*(a1 + 80) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = 4 * v6;
      do
      {
        *v7 = sqrtf(*v7);
        ++v7;
        v8 -= 4;
      }

      while (v8);
    }

    if (v3)
    {
      v38 = a1 + 24;
      v9 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
      v34 = v9;
      v35 = v10;
      v36 = &v34;
      v37 = 925353388;
      if (*(a1 + 40) != HIDWORD(v9))
      {
        cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
      }

      v39 = &v38;
      v40 = &v36;
      if (a2[5] != *(a1 + 44))
      {
        cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
      }

      v11 = a2[4];
      if (v11 == *(a1 + 16) && *(a1 + 20) == v9)
      {
        v45 = a2;
        v46 = &v39;
LABEL_25:
        v47 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(a1, &v44);
        goto LABEL_37;
      }

      v17 = *a1;
      if (*a2 != *a1 && *(a1 + 24) != v17 && *v10 != v17)
      {
        *(a1 + 16) = v11;
        *(a1 + 20) = v9;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a1, (v11 * v9));
        v18 = a2[5];
        v19 = *(*v39 + 5);
        v45 = a2;
        v46 = &v39;
        if (v18 != v19)
        {
          cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
        }

        goto LABEL_25;
      }

      v41 = 0;
      v42 = 0;
      cva::MatrixData<int,0ul,0ul,false>::allocate(&v41, (v11 * v9));
      v24 = **v40;
      v25 = a2[5];
      LODWORD(v43) = a2[4];
      HIDWORD(v43) = v24;
      v45 = a2;
      v46 = &v39;
      if (v25 != *(*v39 + 5))
      {
        __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v47 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(&v41, &v44);
      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = v42;
      *a1 = v41;
      *(a1 + 8) = v28;
      v41 = v26;
      v42 = v27;
      *(a1 + 16) = v43;
LABEL_36:
      v43 = 0;
      free(v26);
    }
  }

LABEL_37:
  v33 = *MEMORY[0x277D85DE8];
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a1 + 64) = v8;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 48, v8);
  if (a3)
  {
    *(a1 + 16) = v6;
    *(a1 + 20) = v8;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, v8 * v6);
    if ((a3 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v9);
    if ((a3 & 2) != 0)
    {
LABEL_6:
      *(a1 + 40) = v8;
      *(a1 + 44) = v7;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 24, v8 * v7);
      goto LABEL_9;
    }
  }

  v10 = *(a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  free(v10);
LABEL_9:
  if (a3)
  {
    v14 = *a1;
    if ((a3 & 2) != 0)
    {
LABEL_11:
      v11 = *(a1 + 24);
      if (a3)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else if ((a3 & 2) != 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
LABEL_12:
    v12 = *(a1 + 16);
    if ((a3 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_16:
  if ((a3 & 2) != 0)
  {
LABEL_13:
    v13 = *(a1 + 40);
  }

LABEL_17:
  v15 = *(a2 + 4);
  v25 = 0;
  v24 = 0;
  v16 = *a2;
  v17 = *(a1 + 48);
  cva::vecLib::gesvd<float>();
  v22[0] = 0;
  v22[1] = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(v22, 0.0);
  v23 = 0.0;
  v18 = *a2;
  v19 = *(a1 + 48);
  v20 = cva::vecLib::gesvd<float>();
  if (v24 < 0)
  {
    __assert_rtn("decomposeDirect", "matrixsvd.h", 439, "(info >= 0) || cva::detail::assertMessage(gesvd() compute SVD failed!)");
  }

  if (v24)
  {
    cva::Logger::instance(v20);
    v21 = *MEMORY[0x277CFD380];
    cva::Logger::logInCategory();
  }

  free(v22[0]);
  *(a1 + 80) = v24 == 0;
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(uint64_t a1, uint64_t **a2, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (a2 + 1);
  v7 = (*(a2[1] + 5) * *(**a2 + 20));
  v13[0] = 0;
  v13[1] = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(v13, v7);
  v8 = *a2;
  v9 = **a2;
  v10 = *v6;
  v14 = *(v9 + 20);
  v11 = *(v10 + 16);
  v15 = *(v10 + 20);
  v17 = v8;
  v18 = v10;
  if (*(v9 + 16) != v11)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v19 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(v13, v16);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v13, a3);
  free(v13[0]);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(_DWORD *a1)
{
  v2 = a1[18];
  LODWORD(v1) = a1[19];
  if (v1 >= v2)
  {
    v1 = v2;
  }

  else
  {
    v1 = v1;
  }

  if (v1 > a1[16])
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S();
  }

  return v1 | (v1 << 32);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>>(uint64_t a1, void **a2, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2 + 1;
  v7 = (*(*a2[1] + 16) * *(*a2 + 4));
  v13[0] = 0;
  v13[1] = 0;
  cva::MatrixData<int,0ul,0ul,false>::allocate(v13, v7);
  v8 = *a2;
  v9 = *v6;
  v10 = **v6;
  v15 = *(v10 + 16);
  v11 = v8[5];
  v14 = v8[4];
  v17 = v8;
  v18 = v9;
  if (v11 != *(v10 + 20))
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v19 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(v13, v16);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v13, a3);
  free(v13[0]);
  v12 = *MEMORY[0x277D85DE8];
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = **(a2 + 8);
  if (*v5 == *a1 || *v4 == *a1)
  {
    v12 = (*(v4 + 5) * *(v5 + 5));
    v24 = 0;
    v25 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v24, v12);
    v13 = *(*(a2 + 16) + 20);
    LODWORD(v26) = *(**(a2 + 8) + 20);
    HIDWORD(v26) = v13;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(&v24, a2);
    v14 = *a1;
    v15 = a1[1];
    v16 = v25;
    *a1 = v24;
    a1[1] = v16;
    v24 = v14;
    v25 = v15;
    a1[2] = v26;
    v26 = 0;
    free(v14);
  }

  else
  {
    v6 = *(a1 + 4);
    if (v6 != *(v5 + 5) || (v7 = *(a1 + 5), v7 != *(v4 + 5)))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v22 = *(**(a2 + 8) + 20);
      v23 = *(*(a2 + 16) + 20);
      v18 = *(a1 + 4);
      v20 = *(a1 + 5);
      cva::Logger::logInCategory();
      v6 = *(a1 + 4);
      v5 = **(a2 + 8);
      if (v6 != *(v5 + 5) || (v4 = *(a2 + 16), v7 = *(v4 + 5), *(a1 + 5) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v5 + 4) * v6 && v7 * *(v4 + 4))
    {
      v9 = *(a2 + 24);
      v10 = *v5;
      v11 = *v4;
      v21 = *a1;
      v19 = *(v4 + 4);
      cva::VecLib<float>::gemm();
    }

    if (v6 * v7)
    {
      v17 = *a1;

      bzero(v17, 4 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1)
  {
    v20 = (***(*(a2 + 16) + 8) * *(v4 + 4));
    v31 = 0;
    v32 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v31, v20);
    v21 = ***(*(a2 + 16) + 8);
    LODWORD(v33) = *(*(a2 + 8) + 16);
    HIDWORD(v33) = v21;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(&v31, a2);
    v22 = *a1;
    v23 = a1[1];
    v24 = v32;
    *a1 = v31;
    a1[1] = v24;
    v31 = v22;
    v32 = v23;
    a1[2] = v33;
    v33 = 0;
    free(v22);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4) || (v6 = *(a1 + 5), v7 = *(a2 + 16), v6 != **v7[1]))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v28 = *(*(a2 + 8) + 16);
      v30 = ***(*(a2 + 16) + 8);
      v25 = *(a1 + 4);
      v26 = *(a1 + 5);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 4) || (v7 = *(a2 + 16), v6 = **v7[1], *(a1 + 5) != v6))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 5) * v5)
    {
      v9 = v6 * (**v7)[5];
      if (v9)
      {
        v31 = 0;
        v32 = 0;
        cva::MatrixData<int,0ul,0ul,false>::allocate(&v31, v9);
        v10 = **v7[1];
        LODWORD(v33) = (**v7)[5];
        HIDWORD(v33) = v10;
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(&v31, v7);
        v11 = *(a2 + 8);
        v12 = ***(*(a2 + 16) + 8);
        v13 = *(v11 + 16);
        v14 = *(v11 + 20);
        v15 = *(a2 + 24);
        v16 = *v4;
        v17 = *(v4 + 4);
        v29 = *(a1 + 4);
        v27 = *a1;
        cva::VecLib<float>::gemm();
      }
    }

    v18 = v5 * v6;
    if (v18)
    {
      v19 = *a1;

      bzero(v19, 4 * v18);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(cva::Logger *a1, unsigned int ***a2)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != v6[5] || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    cva::Logger::instance(a1);
    v10 = *MEMORY[0x277CFD380];
    v23 = (**a2)[5];
    v24 = **a2[1];
    v21 = *(a1 + 4);
    v22 = *(a1 + 5);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != v6[5] || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v37 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > v6[4])
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v34[0] = v4;
  v34[1] = v7;
  v35 = v5;
  v36 = 0;
  v29 = &v37;
  v33 = &v29;
  v38[0] = v34;
  v38[1] = &v30;
  v11 = *a1;
  v31 = v4;
  v32 = v7;
  v25[0] = v4;
  v25[1] = v7;
  v26 = v11;
  v27 = v4;
  v28 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v25, v38);
  v12 = (*v5)[4];
  v13 = *(a1 + 5) - v12;
  if (*(a1 + 5) > v12)
  {
    v14 = *(a1 + 4);
    v15 = *a1 + 4 * v14 * v12;
    v16 = v14 * v13;
    v17 = v16 == 0;
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v15 + 4 * v16);
    if (v17)
    {
      v19 = 0;
    }

    if (v18 != v19)
    {
      bzero(v18, ((v19 - v18 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

unsigned int *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1) - 4 * a1[5];
  if (***(*a2 + 8) == v4 || **(****(*(a2 + 8) + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v24[0] = 0;
    v24[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v24, v6 * v5);
    v25 = v5;
    v26 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v24, a2);
    v8 = *a1;
    if (*a1 != v25 || (v9 = a1[1], v9 != v26))
    {
      cva::Logger::instance(v7);
      v10 = *MEMORY[0x277CFD380];
      v22 = *a1;
      v23 = a1[1];
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v25 || (v9 = a1[1], v9 != v26))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v11 = a1[4];
    v12 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v13 = *(a1 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 1) + 4 * v11 * v9;
    if (v12)
    {
      v14 = 0;
    }

    v15 = v24[0];
    if (v13 != v14)
    {
      v16 = 0;
      v17 = v11 - v8;
      v18 = v24[0];
      do
      {
        v19 = *v18++;
        *v13 = v19;
        if (v16 + 1 >= v8)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v13 += v20 + 1;
        if (v16 + 1 < v8)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v13 != v14);
    }

    free(v15);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(cva::Logger *a1, unsigned int **a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(a1);
    v7 = *MEMORY[0x277CFD380];
    v23 = **a2;
    v24 = (*a2)[1];
    v21 = *(a1 + 4);
    v22 = *(a1 + 5);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != *(v5 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v8 = v6 * v4;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2[1];
    v12 = *a1;
    v13 = 4 * v8;
    do
    {
      if (v4 <= v10 || *(v5 + 4) <= HIDWORD(v10))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v14 = *(v5 + 20) + HIDWORD(v10);
      v15 = **(v5 + 8);
      v16 = *(v15 + 16);
      if (v16 <= v14 || (v17 = *(v5 + 16) + v10, v17 >= *(v15 + 20)))
      {
        [PolyNomialExtrapolation predict];
      }

      v18 = *(*v15 + 4 * (v14 + v16 * v17));
      *v12++ = v18 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v11, v9, HIDWORD(v9));
      v19 = (v10 + 1);
      v4 = *v5;
      if (*v5 <= v19)
      {
        v10 = (v10 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v10 = v10 & 0xFFFFFFFF00000000 | v19;
      }

      v20 = (v9 + 1);
      if (*(v11 + 4) <= v20)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v20;
      }

      v13 -= 4;
    }

    while (v13);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(float **a1, unsigned int **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 1), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(a1);
    v7 = *MEMORY[0x277CFD380];
    v29 = **a2;
    v30 = (*a2)[1];
    v27 = *a1;
    v28 = *(a1 + 1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 1), v6 != *(v5 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v8 = v6 * v4;
  v9 = *(a1 + 4);
  if (v6 * v4)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = 0;
  }

  v11 = &a1[1][v9 * v6];
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 != v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2[1];
    v17 = v9 - v4;
    v18 = v4;
    do
    {
      if (v18 <= v14 || *(v5 + 4) <= HIDWORD(v14))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v19 = *(v5 + 20) + HIDWORD(v14);
      v20 = **(v5 + 8);
      v21 = *(v20 + 16);
      if (v21 <= v19 || (v22 = *(v5 + 16) + v14, v22 >= *(v20 + 20)))
      {
        [PolyNomialExtrapolation predict];
      }

      v23 = *(*v20 + 4 * (v19 + v21 * v22));
      *v10 = v23 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v16, v13, HIDWORD(v13));
      v24 = (v14 + 1);
      v18 = *v5;
      if (*v5 <= v24)
      {
        v14 = (v14 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFF00000000 | v24;
      }

      v25 = (v13 + 1);
      if (*(v16 + 4) <= v25)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v25;
      }

      if (v15 + 1 >= v4)
      {
        v26 = v17;
      }

      else
      {
        v26 = 0;
      }

      v10 += v26 + 1;
      if (v15 + 1 < v4)
      {
        ++v15;
      }

      else
      {
        v15 = 0;
      }
    }

    while (v10 != v12);
  }
}

float cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    [PolyNomialExtrapolation predict];
  }

  v3 = ***(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a3 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    [PolyNomialExtrapolation predict];
  }

  v7 = *(*v6 + 4 * v5);
  v8 = fabsf(v7);
  result = 1.0 / v7;
  if (v8 < v3[2])
  {
    return 0.0;
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **(a2 + 16);
  if (*v4 == *a1 || *v5 == *a1)
  {
    v12 = (*(v5 + 4) * *(v4 + 4));
    v23 = 0;
    v24 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v23, v12);
    v13 = *(**(a2 + 16) + 16);
    LODWORD(v25) = *(*(a2 + 8) + 16);
    HIDWORD(v25) = v13;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(&v23, a2);
    v14 = *a1;
    v15 = a1[1];
    v16 = v24;
    *a1 = v23;
    a1[1] = v16;
    v23 = v14;
    v24 = v15;
    a1[2] = v25;
    v25 = 0;
    free(v14);
  }

  else
  {
    v6 = *(a1 + 4);
    if (v6 != *(v4 + 4) || (v7 = *(a1 + 5), v7 != *(v5 + 4)))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v21 = *(*(a2 + 8) + 16);
      v22 = *(**(a2 + 16) + 16);
      v18 = *(a1 + 4);
      v19 = *(a1 + 5);
      cva::Logger::logInCategory();
      v6 = *(a1 + 4);
      v4 = *(a2 + 8);
      if (v6 != *(v4 + 4) || (v5 = **(a2 + 16), v7 = *(v5 + 4), *(a1 + 5) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 5) * v6 && v7 * *(v5 + 5))
    {
      v9 = *(a2 + 24);
      v10 = *v4;
      v11 = *v5;
      v20 = *a1;
      cva::VecLib<float>::gemm();
    }

    if (v6 * v7)
    {
      v17 = *a1;

      bzero(v17, 4 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*v4 == *a1)
  {
    v20 = (*(v4 + 20) * *(***(a2 + 8) + 4));
    v32 = 0;
    v33 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v32, v20);
    v21 = *(*(a2 + 16) + 20);
    LODWORD(v34) = *(***(a2 + 8) + 4);
    HIDWORD(v34) = v21;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(&v32, a2);
    v22 = *a1;
    v23 = a1[1];
    v24 = v33;
    *a1 = v32;
    a1[1] = v24;
    v32 = v22;
    v33 = v23;
    a1[2] = v34;
    v34 = 0;
    free(v22);
  }

  else
  {
    v5 = *(a1 + 4);
    v6 = *(a2 + 8);
    if (v5 != (**v6)[1] || (v7 = *(a1 + 5), v7 != *(v4 + 20)))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v29 = *(***(a2 + 8) + 4);
      v31 = *(*(a2 + 16) + 20);
      v25 = *(a1 + 4);
      v27 = *(a1 + 5);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v6 = *(a2 + 8);
      if (v5 != (**v6)[1] || (v4 = *(a2 + 16), v7 = *(v4 + 20), *(a1 + 5) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    v9 = (*v6[1])[4] * v5;
    if (v9 && v7 * *(v4 + 16))
    {
      v32 = 0;
      v33 = 0;
      cva::MatrixData<int,0ul,0ul,false>::allocate(&v32, v9);
      v10 = (*v6[1])[4];
      LODWORD(v34) = (**v6)[1];
      HIDWORD(v34) = v10;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(&v32, v6);
      v12 = *(a2 + 8);
      v11 = *(a2 + 16);
      v13 = *(**v12 + 4);
      v14 = *(*v12[1] + 16);
      v15 = *(a2 + 24);
      v16 = *v11;
      v17 = *(v11 + 5);
      v30 = *(a1 + 4);
      v28 = *a1;
      v26 = *(v11 + 4);
      cva::VecLib<float>::gemm();
    }

    v18 = v5 * v7;
    if (v18)
    {
      v19 = *a1;

      bzero(v19, 4 * v18);
    }
  }
}

unsigned int *cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(cva::Logger *a1, unsigned int ***a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != v6[1] || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != (*v8)[4]))
  {
    cva::Logger::instance(a1);
    v10 = *MEMORY[0x277CFD380];
    v27 = (**a2)[1];
    v28 = (*a2[1])[4];
    v25 = *(a1 + 4);
    v26 = *(a1 + 5);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != v6[1] || (v8 = a2[1], v9 = *v8, v7 = (*v8)[4], *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v40 = v5;
  v11 = *v6;
  if (*v6 >= v4)
  {
    v11 = v4;
  }

  if (v11 > v9[5])
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v37[0] = v11;
  v37[1] = v7;
  v38 = v8;
  v39 = 0;
  v34 = v11;
  v35 = v7;
  v36 = &v40;
  v41[0] = v37;
  v41[1] = &v33;
  v12 = *a1;
  v29[0] = v11;
  v29[1] = v7;
  v30 = v12;
  v31 = v4;
  v32 = 0;
  result = cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v29, v41);
  v14 = (*v8)[5];
  v15 = *(a1 + 4);
  if (v15 > v14)
  {
    v16 = v15 - v14;
    v17 = *(a1 + 5);
    v18 = v17 * (v15 - v14);
    v19 = v18 == 0;
    if (v18)
    {
      v20 = (*a1 + 4 * v14);
    }

    else
    {
      v20 = 0;
    }

    v21 = *a1 + 4 * v14 + 4 * v17 * v15;
    if (v19)
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      v22 = 0;
      do
      {
        *v20 = 0;
        if (v22 + 1 >= v16)
        {
          v23 = v14;
        }

        else
        {
          v23 = 0;
        }

        v20 += v23 + 1;
        if (v22 + 1 < v16)
        {
          ++v22;
        }

        else
        {
          v22 = 0;
        }
      }

      while (v20 != v21);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1) - 4 * a1[5];
  if (***(*a2 + 8) == v4 || **(***(*(a2 + 8) + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v24[0] = 0;
    v24[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v24, v6 * v5);
    v25 = v5;
    v26 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v24, a2);
    v8 = *a1;
    if (*a1 != v25 || (v9 = a1[1], v9 != v26))
    {
      cva::Logger::instance(v7);
      v10 = *MEMORY[0x277CFD380];
      v22 = *a1;
      v23 = a1[1];
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v25 || (v9 = a1[1], v9 != v26))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v11 = a1[4];
    v12 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v13 = *(a1 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 1) + 4 * v11 * v9;
    if (v12)
    {
      v14 = 0;
    }

    v15 = v24[0];
    if (v13 != v14)
    {
      v16 = 0;
      v17 = v11 - v8;
      v18 = v24[0];
      do
      {
        v19 = *v18++;
        *v13 = v19;
        if (v16 + 1 >= v8)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v13 += v20 + 1;
        if (v16 + 1 < v8)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v13 != v14);
    }

    free(v15);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(cva::Logger *a1, unsigned int **a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(a1);
    v7 = *MEMORY[0x277CFD380];
    v23 = **a2;
    v24 = (*a2)[1];
    v21 = *(a1 + 4);
    v22 = *(a1 + 5);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != *(v5 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v8 = v6 * v4;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2[1];
    v12 = *a1;
    v13 = 4 * v8;
    do
    {
      if (v4 <= v10 || *(v5 + 4) <= HIDWORD(v10))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v14 = *(v5 + 20) + HIDWORD(v10);
      v15 = **(v5 + 8);
      v16 = *(v15 + 16);
      if (v16 <= v14 || (v17 = *(v5 + 16) + v10, v17 >= *(v15 + 20)))
      {
        [PolyNomialExtrapolation predict];
      }

      v18 = *(*v15 + 4 * (v14 + v16 * v17));
      *v12++ = v18 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v11, v9, HIDWORD(v9));
      v19 = (v10 + 1);
      v4 = *v5;
      if (*v5 <= v19)
      {
        v10 = (v10 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v10 = v10 & 0xFFFFFFFF00000000 | v19;
      }

      v20 = (v9 + 1);
      if (*(v11 + 4) <= v20)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v20;
      }

      v13 -= 4;
    }

    while (v13);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(float **a1, unsigned int **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 1), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(a1);
    v7 = *MEMORY[0x277CFD380];
    v29 = **a2;
    v30 = (*a2)[1];
    v27 = *a1;
    v28 = *(a1 + 1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 1), v6 != *(v5 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v8 = v6 * v4;
  v9 = *(a1 + 4);
  if (v6 * v4)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = 0;
  }

  v11 = &a1[1][v9 * v6];
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10 != v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2[1];
    v17 = v9 - v4;
    v18 = v4;
    do
    {
      if (v18 <= v14 || *(v5 + 4) <= HIDWORD(v14))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v19 = *(v5 + 20) + HIDWORD(v14);
      v20 = **(v5 + 8);
      v21 = *(v20 + 16);
      if (v21 <= v19 || (v22 = *(v5 + 16) + v14, v22 >= *(v20 + 20)))
      {
        [PolyNomialExtrapolation predict];
      }

      v23 = *(*v20 + 4 * (v19 + v21 * v22));
      *v10 = v23 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v16, v13, HIDWORD(v13));
      v24 = (v14 + 1);
      v18 = *v5;
      if (*v5 <= v24)
      {
        v14 = (v14 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFF00000000 | v24;
      }

      v25 = (v13 + 1);
      if (*(v16 + 4) <= v25)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v25;
      }

      if (v15 + 1 >= v4)
      {
        v26 = v17;
      }

      else
      {
        v26 = 0;
      }

      v10 += v26 + 1;
      if (v15 + 1 < v4)
      {
        ++v15;
      }

      else
      {
        v15 = 0;
      }
    }

    while (v10 != v12);
  }
}

float cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    [PolyNomialExtrapolation predict];
  }

  v3 = **(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a2 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    [PolyNomialExtrapolation predict];
  }

  v7 = *(*v6 + 4 * v5);
  v8 = fabsf(v7);
  result = 1.0 / v7;
  if (v8 < v3[2])
  {
    return 0.0;
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 16);
  if (*v4 == *a1)
  {
    v19 = (*(v4 + 16) * *(***(a2 + 8) + 20));
    v31 = 0;
    v32 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v31, v19);
    v20 = *(**(a2 + 16) + 16);
    LODWORD(v33) = *(***(a2 + 8) + 20);
    HIDWORD(v33) = v20;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(&v31, a2);
    v21 = *a1;
    v22 = a1[1];
    v23 = v32;
    *a1 = v31;
    a1[1] = v23;
    v31 = v21;
    v32 = v22;
    a1[2] = v33;
    v33 = 0;
    free(v21);
  }

  else
  {
    v5 = *(a1 + 4);
    v6 = *(a2 + 8);
    if (v5 != (**v6)[5] || (v7 = *(a1 + 5), v7 != *(v4 + 16)))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v28 = *(***(a2 + 8) + 20);
      v30 = *(**(a2 + 16) + 16);
      v24 = *(a1 + 4);
      v26 = *(a1 + 5);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v6 = *(a2 + 8);
      if (v5 != (**v6)[5] || (v4 = **(a2 + 16), v7 = *(v4 + 16), *(a1 + 5) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    v9 = **v6[1] * v5;
    if (v9 && v7 * *(v4 + 20))
    {
      v31 = 0;
      v32 = 0;
      cva::MatrixData<int,0ul,0ul,false>::allocate(&v31, v9);
      v10 = **v6[1];
      LODWORD(v33) = (**v6)[5];
      HIDWORD(v33) = v10;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(&v31, v6);
      v11 = *(a2 + 8);
      v12 = **(a2 + 16);
      v13 = (**v11)[5];
      v14 = **v11[1];
      v15 = *(a2 + 24);
      v16 = *v12;
      v29 = *(a1 + 4);
      v27 = *a1;
      v25 = *(v12 + 4);
      cva::VecLib<float>::gemm();
    }

    v17 = v5 * v7;
    if (v17)
    {
      v18 = *a1;

      bzero(v18, 4 * v17);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(cva::Logger *a1, unsigned int ***a2)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != v6[5] || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    cva::Logger::instance(a1);
    v10 = *MEMORY[0x277CFD380];
    v23 = (**a2)[5];
    v24 = **a2[1];
    v21 = *(a1 + 4);
    v22 = *(a1 + 5);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != v6[5] || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v37 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > v6[4])
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v34[0] = v4;
  v34[1] = v7;
  v35 = v5;
  v36 = 0;
  v29 = &v37;
  v33 = &v29;
  v38[0] = v34;
  v38[1] = &v30;
  v11 = *a1;
  v31 = v4;
  v32 = v7;
  v25[0] = v4;
  v25[1] = v7;
  v26 = v11;
  v27 = v4;
  v28 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v25, v38);
  v12 = (*v5)[4];
  v13 = *(a1 + 5) - v12;
  if (*(a1 + 5) > v12)
  {
    v14 = *(a1 + 4);
    v15 = *a1 + 4 * v14 * v12;
    v16 = v14 * v13;
    v17 = v16 == 0;
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v15 + 4 * v16);
    if (v17)
    {
      v19 = 0;
    }

    if (v18 != v19)
    {
      bzero(v18, ((v19 - v18 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

unsigned int *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1) - 4 * a1[5];
  if (***(*a2 + 8) == v4 || **(****(*(a2 + 8) + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v24[0] = 0;
    v24[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v24, v6 * v5);
    v25 = v5;
    v26 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v24, a2);
    v8 = *a1;
    if (*a1 != v25 || (v9 = a1[1], v9 != v26))
    {
      cva::Logger::instance(v7);
      v10 = *MEMORY[0x277CFD380];
      v22 = *a1;
      v23 = a1[1];
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v25 || (v9 = a1[1], v9 != v26))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v11 = a1[4];
    v12 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v13 = *(a1 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 1) + 4 * v11 * v9;
    if (v12)
    {
      v14 = 0;
    }

    v15 = v24[0];
    if (v13 != v14)
    {
      v16 = 0;
      v17 = v11 - v8;
      v18 = v24[0];
      do
      {
        v19 = *v18++;
        *v13 = v19;
        if (v16 + 1 >= v8)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v13 += v20 + 1;
        if (v16 + 1 < v8)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v13 != v14);
    }

    free(v15);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || **(a2 + 16) == *a1)
  {
    v12 = *(v4 + 4);
    v20 = 0;
    v21 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v20, v12);
    v22 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v20, a2);
    v13 = *a1;
    v14 = a1[1];
    v15 = v21;
    *a1 = v20;
    a1[1] = v15;
    v20 = v13;
    v21 = v14;
    *(a1 + 4) = v22;
    v22 = 0;
    free(v13);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v19 = *(*(a2 + 8) + 16);
      v18 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 4))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 5) * v5)
    {
      v7 = *(a2 + 16);
      if (*(v7 + 4))
      {
        v8 = *(a2 + 24);
        v9 = *v4;
        v10 = *v7;
        v11 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v16 = *a1;
      v17 = 4 * v5;

      bzero(v16, v17);
    }
  }
}

uint64_t std::deque<float>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::~__split_buffer(a1);
}

void sub_23EE07D08(_Unwind_Exception *a1)
{
  free(*(v3 - 160));
  free(*(v3 - 136));

  _Unwind_Resume(a1);
}

void sub_23EE08354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  free(*(v34 - 168));
  free(*(v34 - 144));

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE08B54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

double cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>,cva::Matrix<float,0u,4u,false>>(_OWORD *a1, uint64_t **a2)
{
  v3 = a2[1];
  v4 = *v3;
  if (*v3 == a1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>,cva::Matrix<float,0u,4u,false>>(&v26);
    v24 = v27;
    *a1 = v26;
    a1[1] = v24;
    result = *&v28;
    v25 = v29;
    a1[2] = v28;
    a1[3] = v25;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = **a2;
    v8 = *(v3 + 4);
    v9 = v8 & 0xFFFFFFFC;
    v10 = v8 & 0xFFFFFFFE;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        if (v9)
        {
          v12 = 0;
          v13 = *(v7 + 16);
          result = 0.0;
          do
          {
            if (v12 >= v13)
            {
              [PolyNomialExtrapolation predict];
            }

            v15 = &v4[(v5 + v12)];
            v16 = (*v7 + 4 * (v13 * i + v12));
            *&result = *&result + ((((v16[1] * v15[1]) + (*v16 * *v15)) + (v16[2] * v15[2])) + (v16[3] * v15[3]));
            v12 += 4;
          }

          while (v12 < v9);
        }

        else
        {
          LODWORD(v12) = 0;
          result = 0.0;
        }

        if (v12 < v10)
        {
          v17 = *(v7 + 16);
          v12 = v12;
          do
          {
            if (v12 >= v17)
            {
              [PolyNomialExtrapolation predict];
            }

            v18 = (*v7 + 4 * (v17 * i + v12));
            *&result = *&result + ((v18[1] * v4[(v5 + v12) + 1]) + (*v18 * v4[(v5 + v12)]));
            v12 += 2;
          }

          while (v12 < v10);
        }

        if (v12 < v8)
        {
          v19 = *(v7 + 16);
          v20 = v19 - v12;
          if (v19 < v12)
          {
            v20 = 0;
          }

          if (v20 <= v8 + ~v12)
          {
            [PolyNomialExtrapolation predict];
          }

          v21 = v5 + v12;
          v22 = v12 + v19 * i;
          v23 = v8 - v12;
          do
          {
            *&result = *&result + (*(*v7 + 4 * v22++) * v4[v21++]);
            --v23;
          }

          while (v23);
        }

        *(&a1[v6] + i) = LODWORD(result);
      }

      ++v6;
      v5 += v8;
    }

    while (v6 != 4);
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>,cva::Matrix<float,0u,1u,false>>(float32x4_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (**(a2 + 8) == a1)
  {
    v20 = 0uLL;
    cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>,cva::Matrix<float,0u,1u,false>>(&v20, a2);
    *a1 = v20;
  }

  else
  {
    v4 = *a2;
    v5 = *a2 + 8;
    v6 = (4 * *(**v5 + 16));
    v18[0] = 0;
    v18[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v18, v6);
    v7 = *v5;
    v19 = *(**v5 + 16);
    v20.i64[1] = *v4;
    v21 = v7;
    v22 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>(v18, &v20);
    v8 = *(a2 + 8);
    if (!*(v8 + 16))
    {
      __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
    }

    if (!v19)
    {
      __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
    }

    v9 = (4 * v19);
    v10 = v18[0];
    if (v9)
    {
      v11 = *v8;
      v12 = 4 * v9;
      v13 = 0uLL;
      v14 = v18[0];
      do
      {
        v15 = *v14++;
        v16 = v15;
        v15.i32[0] = *v11++;
        v13 = vmlaq_n_f32(v13, v16, v15.f32[0]);
        v12 -= 16;
      }

      while (v12);
    }

    else
    {
      v13 = 0uLL;
    }

    *a1 = v13;
    free(v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 16);
  if (*(a2 + 8) == *a1 || *v4 == *a1)
  {
    v10 = (4 * *(v4 + 4));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(&v17, v10);
    v19 = *(**(a2 + 16) + 16);
    cva::assign<false,false,cva::Matrix<float,4u,0u,false>,cva::Matrix<float,4u,4u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,4u,false> const>>(&v17, a2);
    v11 = *a1;
    v12 = a1[1];
    v13 = v18;
    *a1 = v17;
    a1[1] = v13;
    v17 = v11;
    v18 = v12;
    *(a1 + 4) = v19;
    v19 = 0;
    free(v11);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v16 = *(**(a2 + 16) + 16);
      v14 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = **(a2 + 16);
      if (v5 != *(v4 + 4))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if ((v5 & 0x3FFFFFFF) != 0)
    {
      v7 = *(a2 + 8);
      v8 = *(a2 + 24);
      v9 = *v4;
      v15 = *a1;
      cva::VecLib<float>::gemm();
    }
  }
}

id simdMatrix4x4ToNSMat(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 4; ++i)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (j = 0; j != 16; j += 4)
    {
      LODWORD(v7) = v11.n128_u32[(i & 3) + j];
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:{v7, *&v11, *&v12, *&v13, *&v14}];
      [v6 addObject:v9];
    }

    [v4 addObject:v6];
  }

  return v4;
}

id simdMatrix4x4ToNSArray(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a1.n128_f64[0]];
  [v4 setObject:v5 atIndexedSubscript:0];

  HIDWORD(v6) = a1.n128_u32[1];
  LODWORD(v6) = a1.n128_u32[1];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v4 setObject:v7 atIndexedSubscript:1];

  v8 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  [v4 setObject:v8 atIndexedSubscript:2];

  v9 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  [v4 setObject:v9 atIndexedSubscript:3];

  v10 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  [v4 setObject:v10 atIndexedSubscript:4];

  HIDWORD(v11) = a2.n128_u32[1];
  LODWORD(v11) = a2.n128_u32[1];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v4 setObject:v12 atIndexedSubscript:5];

  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  [v4 setObject:v13 atIndexedSubscript:6];

  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  [v4 setObject:v14 atIndexedSubscript:7];

  v15 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  [v4 setObject:v15 atIndexedSubscript:8];

  HIDWORD(v16) = a3.n128_u32[1];
  LODWORD(v16) = a3.n128_u32[1];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v4 setObject:v17 atIndexedSubscript:9];

  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  [v4 setObject:v18 atIndexedSubscript:10];

  v19 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  [v4 setObject:v19 atIndexedSubscript:11];

  v20 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  [v4 setObject:v20 atIndexedSubscript:12];

  HIDWORD(v21) = a4.n128_u32[1];
  LODWORD(v21) = a4.n128_u32[1];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [v4 setObject:v22 atIndexedSubscript:13];

  v23 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  [v4 setObject:v23 atIndexedSubscript:14];

  v24 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  [v4 setObject:v24 atIndexedSubscript:15];

  return v4;
}

id simdMatrix3x3ToNSMat(__n128 a1, __n128 a2, __n128 a3)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 3; ++i)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (j = 0; j != 12; j += 4)
    {
      LODWORD(v6) = v10.n128_u32[(i & 3) + j];
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:{v6, *&v10, *&v11, *&v12}];
      [v5 addObject:v8];
    }

    [v3 addObject:v5];
  }

  return v3;
}

id simdFloat4ToNSArray(__n128 a1)
{
  v6 = a1;
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 4; ++i)
  {
    HIDWORD(v3) = v6.n128_u32[1];
    v7 = v6;
    LODWORD(v3) = *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:{v3, *&v6, *&v6}];
    [v1 addObject:v4];
  }

  return v1;
}

id simdFloat3ToNSArray(__n128 a1)
{
  v6 = a1;
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 3; ++i)
  {
    HIDWORD(v3) = v6.n128_u32[1];
    v7 = v6;
    LODWORD(v3) = *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:{v3, *&v6, *&v6}];
    [v1 addObject:v4];
  }

  return v1;
}

void printSimd4x4Matrix(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[0];
    v15 = 2048;
    v16 = a2.n128_f32[0];
    v17 = 2048;
    v18 = a3.n128_f32[0];
    v19 = 2048;
    v20 = a4.n128_f32[0];
    _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[1];
    v15 = 2048;
    v16 = a2.n128_f32[1];
    v17 = 2048;
    v18 = a3.n128_f32[1];
    v19 = 2048;
    v20 = a4.n128_f32[1];
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[2];
    v15 = 2048;
    v16 = a2.n128_f32[2];
    v17 = 2048;
    v18 = a3.n128_f32[2];
    v19 = 2048;
    v20 = a4.n128_f32[2];
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[3];
    v15 = 2048;
    v16 = a2.n128_f32[3];
    v17 = 2048;
    v18 = a3.n128_f32[3];
    v19 = 2048;
    v20 = a4.n128_f32[3];
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

__n128 convertNSArrayToSimd3x3(void *a1)
{
  v1 = a1;
  if ([v1 count] != 9 && objc_msgSend(v1, "count") != 3)
  {
    convertNSArrayToSimd3x3_cold_1();
  }

  v2 = [v1 count];
  v3 = [v1 objectAtIndexedSubscript:0];
  v4 = v3;
  if (v2 == 9)
  {
    [v3 floatValue];
    v40 = v5;
    v6 = [v1 objectAtIndexedSubscript:1];
    [v6 floatValue];
    v38 = v7;
    v8 = [v1 objectAtIndexedSubscript:2];
    [v8 floatValue];
    v9 = v40;
    DWORD1(v9) = v38;
    DWORD2(v9) = v10;
    v41 = v9;
    v11 = [v1 objectAtIndexedSubscript:3];
    [v11 floatValue];
    v12 = [v1 objectAtIndexedSubscript:4];
    [v12 floatValue];
    v13 = [v1 objectAtIndexedSubscript:5];
    [v13 floatValue];
    v14 = [v1 objectAtIndexedSubscript:6];
    [v14 floatValue];
    v15 = [v1 objectAtIndexedSubscript:7];
    [v15 floatValue];
    v16 = [v1 objectAtIndexedSubscript:8];
    [v16 floatValue];
  }

  else
  {
    v37 = [v3 objectAtIndexedSubscript:0];
    [v37 floatValue];
    v42 = v17;
    v35 = [v1 objectAtIndexedSubscript:1];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 floatValue];
    v39 = v18;
    v34 = [v1 objectAtIndexedSubscript:2];
    v33 = [v34 objectAtIndexedSubscript:0];
    [v33 floatValue];
    v19 = v42;
    DWORD1(v19) = v39;
    DWORD2(v19) = v20;
    v41 = v19;
    v31 = [v1 objectAtIndexedSubscript:0];
    v15 = [v31 objectAtIndexedSubscript:1];
    [v15 floatValue];
    v16 = [v1 objectAtIndexedSubscript:1];
    v32 = [v16 objectAtIndexedSubscript:1];
    [v32 floatValue];
    v30 = [v1 objectAtIndexedSubscript:2];
    v29 = [v30 objectAtIndexedSubscript:1];
    [v29 floatValue];
    v21 = [v1 objectAtIndexedSubscript:0];
    v22 = [v21 objectAtIndexedSubscript:2];
    [v22 floatValue];
    v23 = [v1 objectAtIndexedSubscript:1];
    v24 = [v23 objectAtIndexedSubscript:2];
    [v24 floatValue];
    [v1 objectAtIndexedSubscript:2];
    v26 = v25 = v4;
    v27 = [v26 objectAtIndexedSubscript:2];
    [v27 floatValue];

    v14 = v31;
    v4 = v25;
    v8 = v35;

    v6 = v37;
    v13 = v33;

    v12 = v34;
    v11 = v36;
  }

  return v41;
}

__n128 convertNSArrayToSimd4x4(void *a1)
{
  v1 = a1;
  if ([v1 count] != 16)
  {
    convertNSArrayToSimd4x4_cold_1();
  }

  v23 = [v1 objectAtIndexedSubscript:0];
  [v23 floatValue];
  v26 = v2;
  v22 = [v1 objectAtIndexedSubscript:1];
  [v22 floatValue];
  v25 = v3;
  v21 = [v1 objectAtIndexedSubscript:2];
  [v21 floatValue];
  v24 = v4;
  v20 = [v1 objectAtIndexedSubscript:3];
  [v20 floatValue];
  *&v5 = __PAIR64__(v25, v26);
  *(&v5 + 1) = __PAIR64__(v6, v24);
  v27 = v5;
  v19 = [v1 objectAtIndexedSubscript:4];
  [v19 floatValue];
  v18 = [v1 objectAtIndexedSubscript:5];
  [v18 floatValue];
  v17 = [v1 objectAtIndexedSubscript:6];
  [v17 floatValue];
  v7 = [v1 objectAtIndexedSubscript:7];
  [v7 floatValue];
  v8 = [v1 objectAtIndexedSubscript:8];
  [v8 floatValue];
  v9 = [v1 objectAtIndexedSubscript:9];
  [v9 floatValue];
  v10 = [v1 objectAtIndexedSubscript:10];
  [v10 floatValue];
  v11 = [v1 objectAtIndexedSubscript:11];
  [v11 floatValue];
  v12 = [v1 objectAtIndexedSubscript:12];
  [v12 floatValue];
  v13 = [v1 objectAtIndexedSubscript:13];
  [v13 floatValue];
  v14 = [v1 objectAtIndexedSubscript:14];
  [v14 floatValue];
  v15 = [v1 objectAtIndexedSubscript:15];
  [v15 floatValue];

  return v27;
}

__n128 convertNSMatToSimd4x4(void *a1)
{
  v1 = a1;
  if ([v1 count] != 4)
  {
    convertNSMatToSimd4x4_cold_1();
  }

  v39 = [v1 objectAtIndexedSubscript:0];
  v38 = [v39 objectAtIndexedSubscript:0];
  [v38 floatValue];
  v42 = v2;
  v37 = [v1 objectAtIndexedSubscript:1];
  v36 = [v37 objectAtIndexedSubscript:0];
  [v36 floatValue];
  v41 = v3;
  v35 = [v1 objectAtIndexedSubscript:2];
  v34 = [v35 objectAtIndexedSubscript:0];
  [v34 floatValue];
  v40 = v4;
  v33 = [v1 objectAtIndexedSubscript:3];
  v32 = [v33 objectAtIndexedSubscript:0];
  [v32 floatValue];
  *&v5 = __PAIR64__(v41, v42);
  *(&v5 + 1) = __PAIR64__(v6, v40);
  v43 = v5;
  v31 = [v1 objectAtIndexedSubscript:0];
  v30 = [v31 objectAtIndexedSubscript:1];
  [v30 floatValue];
  v29 = [v1 objectAtIndexedSubscript:1];
  v28 = [v29 objectAtIndexedSubscript:1];
  [v28 floatValue];
  v27 = [v1 objectAtIndexedSubscript:2];
  v26 = [v27 objectAtIndexedSubscript:1];
  [v26 floatValue];
  v25 = [v1 objectAtIndexedSubscript:3];
  v24 = [v25 objectAtIndexedSubscript:1];
  [v24 floatValue];
  v23 = [v1 objectAtIndexedSubscript:0];
  v22 = [v23 objectAtIndexedSubscript:2];
  [v22 floatValue];
  v21 = [v1 objectAtIndexedSubscript:1];
  v20 = [v21 objectAtIndexedSubscript:2];
  [v20 floatValue];
  v19 = [v1 objectAtIndexedSubscript:2];
  v18 = [v19 objectAtIndexedSubscript:2];
  [v18 floatValue];
  v17 = [v1 objectAtIndexedSubscript:3];
  v7 = [v17 objectAtIndexedSubscript:2];
  [v7 floatValue];
  v8 = [v1 objectAtIndexedSubscript:0];
  v9 = [v8 objectAtIndexedSubscript:3];
  [v9 floatValue];
  v10 = [v1 objectAtIndexedSubscript:1];
  v11 = [v10 objectAtIndexedSubscript:3];
  [v11 floatValue];
  v12 = [v1 objectAtIndexedSubscript:2];
  v13 = [v12 objectAtIndexedSubscript:3];
  [v13 floatValue];
  v14 = [v1 objectAtIndexedSubscript:3];
  v15 = [v14 objectAtIndexedSubscript:3];
  [v15 floatValue];

  return v43;
}

__n128 convertNSArrayToSimd4(void *a1)
{
  v1 = a1;
  if ([v1 count] != 4)
  {
    convertNSArrayToSimd4_cold_1();
  }

  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v14 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v13 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v12 = v7;
  v8 = [v1 objectAtIndexedSubscript:3];
  [v8 floatValue];
  *&v9 = __PAIR64__(v13, v14);
  *(&v9 + 1) = __PAIR64__(v10, v12);
  v15 = v9;

  return v15;
}

void printSimd3x3(__n128 a1, __n128 a2, __n128 a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v11 = a1.n128_f32[0];
    v12 = 2048;
    v13 = a2.n128_f32[0];
    v14 = 2048;
    v15 = a3.n128_f32[0];
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " %f, %f, %f ", buf, 0x20u);
  }

  v4 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v11 = a1.n128_f32[1];
    v12 = 2048;
    v13 = a2.n128_f32[1];
    v14 = 2048;
    v15 = a3.n128_f32[1];
    _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " %f, %f, %f ", buf, 0x20u);
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v11 = a1.n128_f32[2];
    v12 = 2048;
    v13 = a2.n128_f32[2];
    v14 = 2048;
    v15 = a3.n128_f32[2];
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " %f, %f, %f ", buf, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void printSimd4x4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[0];
    v15 = 2048;
    v16 = a2.n128_f32[0];
    v17 = 2048;
    v18 = a3.n128_f32[0];
    v19 = 2048;
    v20 = a4.n128_f32[0];
    _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[1];
    v15 = 2048;
    v16 = a2.n128_f32[1];
    v17 = 2048;
    v18 = a3.n128_f32[1];
    v19 = 2048;
    v20 = a4.n128_f32[1];
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[2];
    v15 = 2048;
    v16 = a2.n128_f32[2];
    v17 = 2048;
    v18 = a3.n128_f32[2];
    v19 = 2048;
    v20 = a4.n128_f32[2];
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v14 = a1.n128_f32[3];
    v15 = 2048;
    v16 = a2.n128_f32[3];
    v17 = 2048;
    v18 = a3.n128_f32[3];
    v19 = 2048;
    v20 = a4.n128_f32[3];
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void printSimd4(__n128 a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v5 = a1.n128_f32[0];
    v6 = 2048;
    v7 = a1.n128_f32[1];
    v8 = 2048;
    v9 = a1.n128_f32[2];
    v10 = 2048;
    v11 = a1.n128_f32[3];
    _os_log_impl(&dword_23EDDC000, v1, OS_LOG_TYPE_DEBUG, " %f, %f, %f, %f ", buf, 0x2Au);
  }

  v2 = *MEMORY[0x277D85DE8];
}

__n128 simdFloat3FromArray(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    simdFloat3FromArray_cold_2();
  }

  v2 = v1;
  if ([v1 count] != 3)
  {
    simdFloat3FromArray_cold_1();
  }

  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 floatValue];
  v12 = v4;
  v5 = [v2 objectAtIndexedSubscript:1];
  [v5 floatValue];
  v11 = v6;
  v7 = [v2 objectAtIndexedSubscript:2];
  [v7 floatValue];
  v10 = v8;

  result.n128_u32[0] = v12;
  result.n128_u32[1] = v11;
  result.n128_u32[2] = v10;
  return result;
}

double simdFloat4x4fromArray(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 floatValue];
  v44 = v5;
  v6 = [v3 objectAtIndexedSubscript:1];
  [v6 floatValue];
  v41 = v7;
  v8 = [v3 objectAtIndexedSubscript:2];
  [v8 floatValue];
  v9 = [v3 objectAtIndexedSubscript:3];
  [v9 floatValue];
  v10 = v44;
  v10.i32[1] = v41;
  v45 = v10;
  v34 = *v10.i64;

  v11 = [v3 objectAtIndexedSubscript:4];
  [v11 floatValue];
  v42 = v12;
  v13 = [v3 objectAtIndexedSubscript:5];
  [v13 floatValue];
  v38 = v14;
  v15 = [v3 objectAtIndexedSubscript:6];
  [v15 floatValue];
  v16 = [v3 objectAtIndexedSubscript:7];
  [v16 floatValue];
  v17 = v42;
  v17.i32[1] = v38;
  v43 = v17;

  v18 = [v3 objectAtIndexedSubscript:8];
  [v18 floatValue];
  v39 = v19;
  v20 = [v3 objectAtIndexedSubscript:9];
  [v20 floatValue];
  v35 = v21;
  v22 = [v3 objectAtIndexedSubscript:10];
  [v22 floatValue];
  v23 = [v3 objectAtIndexedSubscript:11];
  [v23 floatValue];
  v24 = v39;
  v24.i32[1] = v35;
  v40 = v24;

  v25 = [v3 objectAtIndexedSubscript:12];
  [v25 floatValue];
  v36 = v26;
  v27 = [v3 objectAtIndexedSubscript:13];
  [v27 floatValue];
  v33 = v28;
  v29 = [v3 objectAtIndexedSubscript:14];
  [v29 floatValue];
  v30 = [v3 objectAtIndexedSubscript:15];

  [v30 floatValue];
  v31 = v36;
  v31.i32[1] = v33;
  v37 = v31;

  if (a2)
  {
    return v34;
  }

  *&result = vzip1q_s32(vzip1q_s32(v45, v40), vzip1q_s32(v43, v37)).u64[0];
  return result;
}

__n128 simdFloat4x4FromRotation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 || (v5 = v4) == 0)
  {
    simdFloat4x4FromRotation_cold_3();
  }

  if ([v3 count] != 9)
  {
    simdFloat4x4FromRotation_cold_1();
  }

  if ([v5 count] != 3)
  {
    simdFloat4x4FromRotation_cold_2();
  }

  v6 = [v3 objectAtIndexedSubscript:0];
  [v6 floatValue];
  v32 = v7;
  v8 = [v3 objectAtIndexedSubscript:1];
  [v8 floatValue];
  v31 = v9;
  v10 = [v3 objectAtIndexedSubscript:2];
  [v10 floatValue];
  v11 = [v5 objectAtIndexedSubscript:0];
  [v11 floatValue];

  v12 = [v3 objectAtIndexedSubscript:3];
  [v12 floatValue];
  v30 = v13;
  v14 = [v3 objectAtIndexedSubscript:4];
  [v14 floatValue];
  v29 = v15;
  v16 = [v3 objectAtIndexedSubscript:5];
  [v16 floatValue];
  v17 = [v5 objectAtIndexedSubscript:1];
  [v17 floatValue];

  v18 = [v3 objectAtIndexedSubscript:6];
  [v18 floatValue];
  v28 = v19;
  v20 = [v3 objectAtIndexedSubscript:7];
  [v20 floatValue];
  v27 = v21;
  v22 = [v3 objectAtIndexedSubscript:8];
  [v22 floatValue];
  v23 = [v5 objectAtIndexedSubscript:2];
  [v23 floatValue];

  v24.i64[0] = __PAIR64__(v28, v32);
  v24.i64[1] = __PAIR64__(v27, v31);
  v25 = v24;
  v24.i64[0] = v30;
  v24.i64[1] = v29;
  v33 = vzip1q_s32(v25, v24);

  return v33;
}

uint64_t simdEqualTransforms(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vabdq_f32(a1, a5);
  v9 = vdupq_n_s32(0x38FA0000u);
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v9, v8), vcgeq_f32(v9, vabdq_f32(a2, a6))), vandq_s8(vcgeq_f32(v9, vabdq_f32(a3, a7)), vcgeq_f32(v9, vabdq_f32(a4, a8))))) >> 31;
}

float32x2_t Matrix4x4MakeColumnMajorTransform(uint64_t a1, float64x2_t *a2)
{
  result = vcvt_f32_f64(*a1);
  v3 = *(a1 + 16);
  v4 = vcvt_f32_f64(*(a1 + 24));
  v5 = *(a1 + 40);
  v6 = vcvt_f32_f64(*(a1 + 48));
  v7 = *(a1 + 64);
  v8 = vcvt_f32_f64(*a2);
  v9 = a2[1].f64[0];
  return result;
}

float computeAngleBetweenVectors(double a1, double a2)
{
  v2 = atan2f((-*(&a1 + 1) * *&a2) + (*&a1 * *(&a2 + 1)), vaddv_f32(vmul_f32(*&a1, *&a2))) * 0.318309886 * 180.0;
  v3 = v2 % 360;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return v3;
}

BOOL detectRaisingHand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  __p[3] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v10 = 0;
    v11 = a2 + 4;
    v12 = (a4 + 4);
    v13 = a3 + 4;
    v14 = (a2 + 4);
    v15 = (a3 + 4);
    do
    {
      LODWORD(v16) = HIDWORD(*(a1 + 8 * v10));
      if (COERCE_FLOAT(*(a1 + 8 * v10)) == -1.0 || v16 == -1.0)
      {
        v35 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v10;
          _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " Raising Hand: Wrist not detected in frame: %d ", __p, 8u);
        }

        goto LABEL_44;
      }

      if (v16 > *v14 || v16 > *v12 || v16 > *v15)
      {
        v35 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v10;
          _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " Raising Hand: Hand too low in frame: %d ", __p, 8u);
        }

LABEL_44:

        v19 = 0;
        goto LABEL_45;
      }

      ++v10;
      v15 += 2;
      v12 += 2;
      v14 += 2;
    }

    while (a6 != v10);
    std::vector<float>::vector[abi:ne200100](__p, a6);
    v18 = 0;
    v19 = 0;
    v20 = __p[0];
    do
    {
      v21 = *(a2 + 8 * v18);
      v22 = vsub_f32(*(a1 + 8 * v18), v21);
      v23 = vsub_f32(*(a3 + 8 * v18), v21);
      v24 = atan2f((-v22.f32[1] * v23.f32[0]) + (v22.f32[0] * v23.f32[1]), vaddv_f32(vmul_f32(v22, v23))) * 0.318309886 * 180.0;
      v25 = v24 % 360;
      if (v25 < 0)
      {
        v25 = -v25;
      }

      v20[v18] = v25;
      if (v25 <= 0x3B)
      {
        v39 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(__p[0] + v18);
          v41 = 134218240;
          v42 = v38;
          v43 = 1024;
          v44 = v18;
          _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, " Raising Hand: Angle (%f) < 70 degrees in frame: %d ", &v41, 0x12u);
        }

        goto LABEL_37;
      }

      v19 = ++v18 >= v6;
    }

    while (v6 != v18);
    v26 = 0;
    do
    {
      while (1)
      {
        v27 = *(v11 + 8 * v26);
        if (*(a1 + 4 + 8 * v26) < v27 && v27 < *(v13 + 8 * v26))
        {
          break;
        }

        if (++v26 == v6)
        {
          v28 = __p[0];
          v29 = 1000.0;
          v30 = -1000.0;
          do
          {
            v31 = *v28++;
            v32 = v31;
            if (v31 < v29)
            {
              v29 = v32;
            }

            if (v32 > v30)
            {
              v30 = v32;
            }

            --v6;
          }

          while (v6);
          if ((v30 - v29) > 10000.0)
          {
            v33 = __ABPKLogSharedInstance();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v41) = 0;
              _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " Raising Hand: Angles changing too much ", &v41, 2u);
            }
          }

          goto LABEL_33;
        }
      }

      ++v26;
    }

    while (v26 != v6);
    v39 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v41) = 0;
      v34 = " Raising Hand: Gesture detected - Wrist is above elbow and elbow is above the shoulder ";
      goto LABEL_35;
    }
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](__p, 0);
LABEL_33:
    v39 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v41) = 0;
      v34 = " Raising Hand: Gesture detected ";
LABEL_35:
      _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, v34, &v41, 2u);
    }
  }

  v19 = 1;
LABEL_37:

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_45:
  v36 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_23EE0B710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float computeMeanOfVector(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 2;
  if (*(a1 + 8) == *a1)
  {
    v4 = 0.0;
  }

  else
  {
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = (*(a1 + 8) - *a1) >> 2;
    }

    v4 = 0.0;
    do
    {
      v5 = *v1++;
      v4 = v4 + v5;
      --v3;
    }

    while (v3);
  }

  return v4 / v2;
}

float getFrequencyOfZeroCrossing(uint64_t *a1, float a2)
{
  __src = 0;
  v55 = 0;
  v56 = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 == 4)
  {
    v5 = 0;
    v6 = 0;
    __p = 0;
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + 4 * v9);
      if (v10[1] >= 0.0 && *v10 < 0.0)
      {
        if (v8 >= v56)
        {
          v11 = __src;
          v12 = v8 - __src;
          v13 = (v8 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
          }

          v15 = v56 - __src;
          if ((v56 - __src) >> 2 > v14)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v16);
          }

          v17 = (v8 - __src) >> 3;
          v18 = (8 * v13);
          v19 = (8 * v13 - 8 * v17);
          *v18 = v9;
          v8 = v18 + 1;
          memcpy(v19, v11, v12);
          v20 = __src;
          __src = v19;
          v55 = v8;
          v56 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v8++ = v9;
        }

        v55 = v8;
        v4 = *a1;
        v3 = a1[1];
      }

      ++v9;
    }

    while (v9 < ((v3 - v4) >> 2) - 1);
    v21 = __src;
    __p = 0;
    v52 = 0;
    v53 = 0;
    if (v8 == __src)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v22 = 0;
      do
      {
        v23 = v21[v22] - (*(*a1 + 4 * v21[v22]) / (*(*a1 + 4 * v21[v22] + 4) - *(*a1 + 4 * v21[v22])));
        if (v6 >= v53)
        {
          v24 = __p;
          v25 = v6 - __p;
          v26 = (v6 - __p) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
          }

          v28 = v53 - __p;
          if ((v53 - __p) >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v29);
          }

          v30 = (v6 - __p) >> 2;
          v31 = (4 * v26);
          v32 = (4 * v26 - 4 * v30);
          *v31 = v23;
          v6 = v31 + 1;
          memcpy(v32, v24, v25);
          v33 = __p;
          __p = v32;
          v52 = v6;
          v53 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v6++ = v23;
        }

        v52 = v6;
        ++v22;
        v21 = __src;
      }

      while (v22 < (v55 - __src) >> 3);
      v5 = __p;
    }
  }

  v34 = v6 - v5;
  v35 = 0.0;
  if (v34 >= 2)
  {
    std::vector<float>::vector[abi:ne200100](&v49, v34 - 1);
    v36 = v49;
    v37 = ((v52 - __p) >> 2) - 1;
    if ((v52 - __p) >> 2 != 1)
    {
      v38 = (__p + 4);
      v39 = v49;
      do
      {
        *v39++ = (*v38 - *(v38 - 1)) / a2;
        ++v38;
        --v37;
      }

      while (v37);
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v46, v36, v50, (v50 - v36) >> 2);
    v40 = v47 - v46;
    if (v47 == v46)
    {
      v35 = 0.0 / v40;
      if (!v47)
      {
LABEL_50:
        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        v5 = __p;
        goto LABEL_53;
      }
    }

    else
    {
      if (v40 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v47 - v46;
      }

      v42 = 0.0;
      v43 = v46;
      do
      {
        v44 = *v43++;
        v42 = v42 + v44;
        --v41;
      }

      while (v41);
      v35 = v42 / v40;
    }

    v47 = v46;
    operator delete(v46);
    goto LABEL_50;
  }

LABEL_53:
  if (v5)
  {
    v52 = v5;
    operator delete(v5);
  }

  if (__src)
  {
    v55 = __src;
    operator delete(__src);
  }

  return v35;
}

void sub_23EE0BAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

BOOL detectWavingHand(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, unsigned int a8)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    std::vector<float>::vector[abi:ne200100](v74, 0);
    goto LABEL_17;
  }

  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = 0;
  v15 = a2 + 1;
  v16 = (a4 + 4);
  v17 = a3 + 1;
  while (1)
  {
    LODWORD(v18) = HIDWORD(*&a1[v14]);
    if (COERCE_FLOAT(*&a1[v14]) == -1.0 || v18 == -1.0)
    {
      break;
    }

    if (v18 > *v15 || v18 > *v16 || v18 > *v17)
    {
      v55 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *v74 = 0;
        _os_log_impl(&dword_23EDDC000, v55, OS_LOG_TYPE_DEBUG, " Waving Hand: Hand too low ", v74, 2u);
      }

      goto LABEL_64;
    }

    ++v14;
    v17 += 2;
    v16 += 2;
    v15 += 2;
    if (a6 == v14)
    {
      std::vector<float>::vector[abi:ne200100](v74, a6);
      v20 = *v74;
      v21 = a6;
      do
      {
        v22 = *v13++;
        v23 = v22;
        v24 = *v12++;
        v25 = v24;
        v26 = vsub_f32(v23, v24);
        v27 = *v11++;
        v28 = vsub_f32(v27, v25);
        v29 = atan2f((-v26.f32[1] * v28.f32[0]) + (v26.f32[0] * v28.f32[1]), vaddv_f32(vmul_f32(v26, v28))) * 0.318309886 * 180.0;
        v30 = v29 % 360;
        if (v30 < 0)
        {
          v30 = -v30;
        }

        *v20++ = v30;
        --v21;
      }

      while (v21);
LABEL_17:
      if (a6 - a7 >= a6)
      {
        goto LABEL_26;
      }

      v31 = -a7;
      v33 = -1000.0;
      v34 = 1000.0;
      do
      {
        v32 = *v74 + 4 * a6;
        v35 = *(v32 + 4 * v31);
        if (v35 < v34)
        {
          v34 = *(v32 + 4 * v31);
        }

        if (v35 > v33)
        {
          v33 = *(v32 + 4 * v31);
        }

        v36 = __CFADD__(v31++, 1);
      }

      while (!v36);
      if ((v33 - v34) < 20.0)
      {
LABEL_26:
        v37 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v37, OS_LOG_TYPE_DEBUG, " Waving Hand: Angles not changing enough for waving ", buf, 2u);
        }
      }

      std::vector<std::vector<float>>::vector[abi:ne200100](buf, a6);
      if (a6)
      {
        v38 = 0;
        do
        {
          std::vector<float>::vector[abi:ne200100](__p, a6);
          v39 = 0;
          v40 = *v74;
          v41 = __p[0];
          do
          {
            v41[v39] = vabds_f32(v40[v39], v40[v38]);
            ++v39;
          }

          while (a6 != v39);
          v42 = (*buf + 24 * v38);
          if (v42 == __p || (std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v42, v41, __p[1], (__p[1] - v41) >> 2), (v41 = __p[0]) != 0))
          {
            __p[1] = v41;
            operator delete(v41);
          }

          ++v38;
        }

        while (v38 != a6);
        v43 = 0;
        v44 = 0;
        while (1)
        {
          memset(__p, 0, 24);
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *(*buf + 24 * v43), *(*buf + 24 * v43 + 8), (*(*buf + 24 * v43 + 8) - *(*buf + 24 * v43)) >> 2);
          v69 = 0;
          v70 = 0;
          v71 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v69, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
          v45 = v70 - v69;
          if (v70 == v69)
          {
            v50 = 0.0 / v45;
            if (!v70)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v45 <= 1)
            {
              v46 = 1;
            }

            else
            {
              v46 = v70 - v69;
            }

            v47 = 0.0;
            v48 = v69;
            do
            {
              v49 = *v48++;
              v47 = v47 + v49;
              --v46;
            }

            while (v46);
            v50 = v47 / v45;
          }

          v70 = v69;
          operator delete(v69);
LABEL_47:
          std::vector<float>::vector[abi:ne200100](&v67, a6);
          v51 = 0;
          v52 = __p[0];
          v53 = v67;
          do
          {
            v53[v51] = v52[v51] - v50;
            ++v51;
          }

          while (a6 != v51);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v64, v53, v68, (v68 - v53) >> 2);
          FrequencyOfZeroCrossing = getFrequencyOfZeroCrossing(&v64, 1.0);
          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          if (FrequencyOfZeroCrossing != 0.0)
          {
            ++v44;
          }

          if (v67)
          {
            v68 = v67;
            operator delete(v67);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (++v43 == a6)
          {
            goto LABEL_66;
          }
        }
      }

      v44 = 0;
LABEL_66:
      v36 = v44 >= a8;
      v56 = v36;
      if (v36)
      {
        v60 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(__p[0]) = 0;
          v57 = " Waving Hand: Gesture detected ";
          v58 = v60;
          v59 = 2;
          goto LABEL_72;
        }
      }

      else
      {
        v60 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 134218240;
          *(__p + 4) = v44;
          WORD2(__p[1]) = 2048;
          *(&__p[1] + 6) = a6;
          v57 = " Waving Hand: No periodic motion detected (%lu/%lu periodic frames) ";
          v58 = v60;
          v59 = 22;
LABEL_72:
          _os_log_impl(&dword_23EDDC000, v58, OS_LOG_TYPE_DEBUG, v57, __p, v59);
        }
      }

      __p[0] = buf;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (*v74)
      {
        v75 = *v74;
        operator delete(*v74);
      }

      goto LABEL_75;
    }
  }

  v55 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    *v74 = 67109120;
    *&v74[4] = v14;
    _os_log_impl(&dword_23EDDC000, v55, OS_LOG_TYPE_DEBUG, " Waving Hand: Wrist not detected in frame: %d ", v74, 8u);
  }

LABEL_64:

  v56 = 0;
LABEL_75:
  v62 = *MEMORY[0x277D85DE8];
  return v56;
}

void sub_23EE0C0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  a23 = &a19;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a23);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL detectFaceVisible(int a1, int a2, int a3, int a4, int a5)
{
  v9 = a1 == 1 && a2 == 1 && a3 == 1 && a4 == 1 && a5 == 1;
  v10 = __ABPKLogSharedInstance();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      v16 = 0;
      v12 = " Face visible: YES ";
      v13 = &v16;
LABEL_21:
      _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, v12, v13, 2u);
    }
  }

  else if (v11)
  {
    v15 = 0;
    v12 = " Face visible: NO ";
    v13 = &v15;
    goto LABEL_21;
  }

  return v9;
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void printCGRect(double a1, double a2, double a3, double a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218752;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " \t\t Start, Size: (%f,%f,%f,%f) ", &v11, 0x2Au);
  }

  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218752;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a1 + a3;
    v17 = 2048;
    v18 = a2 + a4;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t\t Start, End: (%f,%f,%f,%f) ", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

float computeIOUbetweenRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v45[1] = *MEMORY[0x277D85DE8];
  *&v12 = a1;
  *&v13 = a2;
  __p = __PAIR64__(v13, v12);
  v14 = a3;
  v15 = *&v12 + v14;
  v16 = a4;
  *&v44 = v15;
  *(&v44 + 1) = *&v13 + v16;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v36, &__p, v45, 4uLL);
  v17 = a5;
  v18 = a6;
  *buf = v17;
  v40 = v18;
  v19 = a7;
  v20 = v17 + v19;
  v21 = a8;
  v41 = v20;
  v42 = v18 + v21;
  v44 = 0;
  v45[0] = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, buf, &__p, 4uLL);
  v22 = *v36;
  v23 = __p;
  v24 = *__p;
  if (*v36 <= *__p)
  {
    v25 = 0.0;
    if (v24 > *(v36 + 2))
    {
LABEL_11:
      v44 = v23;
      operator delete(v23);
      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0.0;
    if (v22 > *(__p + 2))
    {
      goto LABEL_11;
    }
  }

  v26 = *(v36 + 1);
  v27 = *(__p + 3);
  if (v26 > v27)
  {
    goto LABEL_11;
  }

  v28 = *(__p + 1);
  v29 = *(v36 + 3);
  if (v28 > v29)
  {
    goto LABEL_11;
  }

  v30 = *(v36 + 2);
  v31 = *(__p + 2);
  v32 = (fminf(v30, v31) - fmaxf(v22, v24)) * (fminf(v29, v27) - fmaxf(v26, v28));
  v25 = v32 / ((((v27 - v28) * (v31 - v24)) + ((v30 - v22) * (v29 - v26))) - v32);
  if (v25 >= 0.0)
  {
    goto LABEL_11;
  }

  v33 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_ERROR, " iou < 0.0 ", buf, 2u);
  }

  v23 = __p;
  if (__p)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_23EE0C7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE0C898(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *getABPKAlgorithmExitPointTypeAsString(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_278C719A8[a1];
  }
}

void sub_23EE0E280(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

__CFString *convertABPKDeviceOrientationEnumToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return &stru_28516DA30;
  }

  else
  {
    return off_278C719E8[a1 - 1];
  }
}

void sub_23EE0EF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPKPoseEstimationPipeline;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<simd_float4x4>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE111F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const float *DepthAndConfidenceInNeighborood(const float *result, int a2, const float *a3, const float *a4, int a5, int a6, int a7, int a8)
{
  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  LODWORD(v9) = a6 - 1;
  if (a2 + 1 < a6 - 1)
  {
    v9 = (a2 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v8 - 1 <= v9)
  {
    if (result <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = result;
    }

    v11 = v10 - 1;
    v12 = a5 - 1;
    if (result + 1 < a5 - 1)
    {
      v12 = result + 1;
    }

    v13 = v8 - 1;
    v14 = &a3[v13 * a7 - 1 + v10];
    v15 = &a4[v13 * a8 - 1 + v10];
    v16 = (v12 + 1) - v10 + 1;
    v17 = 3.4028e38;
    do
    {
      v18 = v16;
      result = v15;
      v19 = v14;
      if (v11 <= v12)
      {
        do
        {
          if (*v19 > 0.0 && *v19 < v17)
          {
            v21 = *result;
            v17 = *v19;
          }

          ++v19;
          ++result;
          --v18;
        }

        while (v18);
      }

      v14 += a7;
      v15 += a8;
    }

    while (v13++ < v9);
  }

  return result;
}

void ExtractJasperNSZs(void *a1@<X0>, const void **a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a2, [v3 length]);
  v4 = 0;
  for (i = 0; i < [v20 length]; ++i)
  {
    if (*([v20 confidences] + 4 * i) >= 0.85)
    {
      v6 = *([v20 points] + v4);
      v7 = vmuls_lane_f32(0.001, v6, 2);
      v8 = vdivq_f32(v6, vdupq_laneq_s32(v6, 2));
      v8.f32[2] = v7;
      v10 = a2[1];
      v9 = a2[2];
      if (v10 >= v9)
      {
        v19 = v8;
        v12 = (v10 - *a2) >> 4;
        if ((v12 + 1) >> 60)
        {
          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - *a2;
        v14 = v13 >> 3;
        if (v13 >> 3 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2, v15);
        }

        *(16 * v12) = v8;
        v11 = 16 * v12 + 16;
        v16 = a2[1] - *a2;
        v17 = (16 * v12 - v16);
        memcpy(v17, *a2, v16);
        v18 = *a2;
        *a2 = v17;
        a2[1] = v11;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = &v10[1];
      }

      a2[1] = v11;
    }

    v4 += 16;
  }
}

void sub_23EE11494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

float32_t DepthOfClosestJasperPoint(float32x2_t *a1, float32x2_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  result = -1.0;
  if (*a2 != v3)
  {
    v5 = v2 + 2;
    v6 = vsub_f32(*v2, *a1);
    v7 = vaddv_f32(vmul_f32(v6, v6));
    if (v3 != &v2[2])
    {
      v8 = v2 + 2;
      do
      {
        v9 = *v8;
        v8 += 2;
        v10 = vsub_f32(v9, *a1);
        v11 = vaddv_f32(vmul_f32(v10, v10));
        if (v11 < v7)
        {
          v2 = v5;
          v7 = v11;
        }

        v5 = v8;
      }

      while (v8 != v3);
    }

    if (sqrtf(v7) <= 0.03)
    {
      return v2[1].f32[0];
    }
  }

  return result;
}

float ABPKAdjustIntrinsicsForViewportSize(simd_float3x3 a1, CGSize a2, CGSize a3)
{
  if (a2.width != a3.width || a2.height != a3.height)
  {
    *a1.columns[0].i64 = a1.columns[0].f32[0];
    v4 = a3.width / a3.height < a2.width / a2.height;
    v5 = a3.width / a2.width;
    if (v4)
    {
      v5 = a3.height / a2.height;
    }

    v6 = v5 * *a1.columns[0].i64;
    a1.columns[0].f32[0] = v6;
  }

  return a1.columns[0].f32[0];
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float,0u,1u,false>,cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>>(unsigned int *a1, unsigned int **a2)
{
  v4 = *(a1 + 1);
  v5 = &v4[-a1[5]];
  v6 = *a2;
  if ((*(*a2 + 1) - 4 * (*a2)[5]) != v5 && (*(a2[1] + 1) - 4 * a2[1][5]) != v5)
  {
    v7 = *a1;
    if (*a1 != *v6)
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v36 = **a2;
      v34 = *a1;
      cva::Logger::logInCategory();
      v7 = *a1;
      v6 = *a2;
      if (*a1 != **a2)
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }

      v4 = *(a1 + 1);
    }

    if (v7)
    {
      v9 = v7;
      v10 = *(a2[1] + 1);
      v11 = *(v6 + 1);
      v12 = 4 * v9;
      do
      {
        v13 = *v11++;
        v14 = v13;
        v15 = *v10++;
        *v4++ = v14 * v15;
        v12 -= 4;
      }

      while (v12);
    }

    return a1;
  }

  v16 = *a1;
  v38[0] = 0;
  v38[1] = 0;
  v17 = cva::MatrixData<int,0ul,0ul,false>::allocate(v38, v16);
  v39 = v16;
  v18 = *a2;
  if (v16 != **a2)
  {
    cva::Logger::instance(v17);
    v19 = *MEMORY[0x277CFD380];
    v37 = **a2;
    cva::Logger::logInCategory();
    v16 = v39;
    v18 = *a2;
    if (v39 != **a2)
    {
      goto LABEL_23;
    }
  }

  v20 = v38[0];
  if (v16)
  {
    v21 = *(a2[1] + 1);
    v22 = *(v18 + 1);
    v23 = 4 * v16;
    v24 = v38[0];
    do
    {
      v25 = *v22++;
      v26 = v25;
      v27 = *v21++;
      *v24++ = v26 * v27;
      v23 -= 4;
    }

    while (v23);
  }

  if (*a1 == v16)
  {
    goto LABEL_18;
  }

  cva::Logger::instance(v20);
  v28 = *MEMORY[0x277CFD380];
  v35 = *a1;
  cva::Logger::logInCategory();
  v16 = *a1;
  if (v16 != v39)
  {
LABEL_23:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v20 = v38[0];
LABEL_18:
  if (v16)
  {
    v29 = *(a1 + 1);
    v30 = 4 * v16;
    v31 = v20;
    do
    {
      v32 = *v31;
      v31 = (v31 + 4);
      *v29++ = v32;
      v30 -= 4;
    }

    while (v30);
  }

  free(v20);
  return a1;
}

void sub_23EE12408(_Unwind_Exception *a1)
{
  v5 = *(v3 - 160);
  if (v5)
  {
    *(v3 - 152) = v5;
    operator delete(v5);
  }

  v6 = *(v3 - 136);
  if (v6)
  {
    *(v3 - 128) = v6;
    operator delete(v6);
  }

  v7 = *(v3 - 112);
  if (v7)
  {
    *(v3 - 104) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

float *cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(float *result, unsigned int ***a2)
{
  v2 = result;
  v3 = a2[1];
  v4 = v3[1];
  if (&v4[-*(v3 + 5)] == result)
  {
    v30 = 0;
    result = cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v30);
    *v2 = v30;
  }

  else
  {
    v5 = **a2;
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *v3;
    if ((v8 & 0xFFFFFFFC) != 0)
    {
      v9 = 0;
      v10 = (v4 + 2);
      v11 = (v7 + 8);
      v12 = 0.0;
      do
      {
        if (v9 >= v6)
        {
          [PolyNomialExtrapolation predict];
        }

        v13 = (*(v11 - 1) * *(v10 - 1)) + (*(v11 - 2) * *(v10 - 2));
        v14 = *v11;
        v15 = v11[1];
        v11 += 4;
        v16 = *v10;
        v17 = v10[1];
        v10 += 4;
        v12 = v12 + ((v13 + (v14 * v16)) + (v15 * v17));
        v9 += 4;
      }

      while (v9 < (v8 & 0xFFFFFFFC));
    }

    else
    {
      LODWORD(v9) = 0;
      v12 = 0.0;
    }

    if (v9 < (v8 & 0xFFFFFFFE))
    {
      v18 = v9;
      v19 = 4 * v9 + 4;
      v20 = (v7 + v19);
      v21 = (v4 + v19);
      do
      {
        if (v18 >= v6)
        {
          [PolyNomialExtrapolation predict];
        }

        v12 = v12 + ((*v20 * *v21) + (*(v20 - 1) * *(v21 - 1)));
        v18 += 2;
        v20 += 2;
        v21 += 2;
      }

      while (v18 < (v8 & 0xFFFFFFFE));
      LODWORD(v9) = v18;
    }

    if (v9 < v8)
    {
      v22 = v6 >= v9;
      v23 = v6 - v9;
      if (!v22)
      {
        v23 = 0;
      }

      if (v23 <= v8 + ~v9)
      {
        [PolyNomialExtrapolation predict];
      }

      v24 = (v7 + 4 * v9);
      v25 = &v4[v9];
      v26 = v8 - v9;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v12 = v12 + (v28 * v29);
        --v26;
      }

      while (v26);
    }

    *result = v12;
  }

  return result;
}

void sub_23EE134E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 160);
  if (v35)
  {
    *(v33 - 152) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_23EE13CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

std::vector<unsigned int> *abpk::SkeletonJointFilter<float>::filter(std::vector<unsigned int> *this, float *a2, std::vector<unsigned int>::size_type __sz, double a4)
{
  v25 = a4;
  begin = this->__begin_;
  end = this->__end_;
  if (__sz == end - this->__begin_)
  {
    if (end != begin)
    {
      v9 = 0;
      v10 = this[1].__begin_;
      while (1)
      {
        v11 = *&begin[v9];
        if (v11 < 0.0)
        {
          v12 = a2[v9];
          if (v12 > 0.0)
          {
            *&begin[v9] = v12;
            v10[v9] = 0;
            v11 = *&begin[v9];
          }
        }

        v13 = v11 + (*&this[4].__begin_ * *&v10[v9]);
        v14 = a2[v9];
        if (v14 >= 0.0)
        {
          break;
        }

        if (v9 > 0x25 || ((1 << v9) & 0x3CF0000003) == 0)
        {
          goto LABEL_22;
        }

        *&begin[v9] = v14;
        v15 = 0.0;
LABEL_23:
        *&v10[v9++] = v15;
        if (__sz <= v9)
        {
          return this;
        }
      }

      *&this[2].__begin_[2 * v9] = a4;
      v16 = vabds_f32(v14, v13);
      v17 = *(&this[3].__begin_ + 1);
      v18 = 0.0;
      if (v16 >= v17)
      {
        if (v16 >= *&this[3].__end_)
        {
          v19 = *(&this[3].__end_ + 1);
          v18 = 1.0;
          if (v16 >= v19)
          {
            v18 = 0.0;
            if (v16 < *&this[3].__end_cap_.__value_)
            {
              v18 = 1.0 - ((v16 - v19) * *(&this[4].__end_ + 1));
            }
          }
        }

        else
        {
          v18 = (v16 - v17) * *&this[4].__end_;
        }
      }

      v20 = fminf(*(&this[4].__begin_ + 1) + (v18 / (*&this[3].__begin_ + 1.0)), 1.0);
      v21 = fmaxf(v20, 0.5);
      if (((1 << v9) & 0x3CF0000003) == 0)
      {
        v21 = v20;
      }

      if (v9 <= 0x25)
      {
        v20 = v21;
      }

      v13 = (v13 * (1.0 - v20)) + (v20 * v14);
LABEL_22:
      *&begin[v9] = v13;
      v15 = ((1.0 - *&this[4].__end_cap_.__value_) * *&v10[v9]) + (*&this[4].__end_cap_.__value_ * (v13 - v11));
      goto LABEL_23;
    }
  }

  else
  {
    std::vector<unsigned int>::resize(this, __sz);
    memcpy(this->__begin_, a2, 4 * __sz);
    v24 = 0;
    std::vector<float>::resize(&this[1].__begin_, __sz, &v24, v22);
    std::vector<double>::resize(&this[2].__begin_, __sz, &v25);
  }

  return this;
}

uint64_t *abpk::SkeletonJointFilter<float>::applyTimeConstraint(uint64_t *result, double a2, double a3)
{
  if (a3 >= 0.0)
  {
    v3 = *result;
    v4 = result[1];
    v5 = v4 - *result;
    if (v4 != *result)
    {
      v6 = 0;
      v7 = v5 >> 2;
      v8 = result[6];
      do
      {
        if (a2 - *(v8 + 8 * v6) > a3)
        {
          *(result[3] + 4 * v6) = 0;
          *(v3 + 4 * v6) = -1082130432;
        }

        ++v6;
      }

      while (v7 > v6);
    }
  }

  return result;
}

void printCGRect(CGRect a1, float a2, float a3)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v19 = *MEMORY[0x277D85DE8];
  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218752;
    v12 = x * a2;
    v13 = 2048;
    v14 = y * a3;
    v15 = 2048;
    v16 = width * a2 + v12;
    v17 = 2048;
    v18 = height * a3 + v14;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t\t (%f,%f,%f,%f) ", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23EE15850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100INS_27__optional_move_assign_baseIS5_Lb0EEEEEvOT_(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<float>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100IRKNS_27__optional_copy_assign_baseIS5_Lb0EEEEEvOT_(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 3;
      v5 = *a2;

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE15CB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

abpk::Human *abpk::Human::Human(abpk::Human *this, const abpk::Human *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
  _ZNSt3__120__optional_copy_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EEC2B8ne200100ERKS6_(this + 72, a2 + 72);
  v4 = *(a2 + 13);
  *(this + 109) = *(a2 + 109);
  *(this + 13) = v4;
  return this;
}

void sub_23EE15D74(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__120__optional_copy_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EEC2B8ne200100ERKS6_(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE16__construct_fromB8ne200100IRKNS_20__optional_copy_baseIS5_Lb0EEEEEvOT_(a1, a2);
  return a1;
}

void sub_23EE15DF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    _ZNSt3__120__optional_copy_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EEC2B8ne200100ERKS6__cold_1(v1);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE16__construct_fromB8ne200100IRKNS_20__optional_copy_baseIS5_Lb0EEEEEvOT_(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE15EC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abpk::SkeletonJointFilter<float>::~SkeletonJointFilter(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<abpk::Human>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EE15F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<abpk::Human>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Human>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

abpk::Human *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<abpk::Human>,abpk::Human*,abpk::Human*,abpk::Human*>(uint64_t a1, abpk::Human *a2, abpk::Human *a3, abpk::Human *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      abpk::Human::Human(v4, v6);
      v6 = (v6 + 120);
      v4 = (v11 + 120);
      v11 = (v11 + 120);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abpk::Human>,abpk::Human*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}