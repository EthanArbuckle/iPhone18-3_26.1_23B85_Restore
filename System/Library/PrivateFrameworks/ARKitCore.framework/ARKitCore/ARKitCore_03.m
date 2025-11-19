void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(cva::Logger *a1, uint64_t **a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != *(v6 + 20) || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != *(v6 + 20) || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v31 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > *(v6 + 16))
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v28[0] = v4;
  v28[1] = v7;
  v29 = v5;
  v30 = 0;
  v23 = &v31;
  v27 = &v23;
  v32[0] = v28;
  v32[1] = &v24;
  v10 = *a1;
  v25 = v4;
  v26 = v7;
  v19[0] = v4;
  v19[1] = v7;
  v20 = v10;
  v21 = v4;
  v22 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v19, v32);
  v11 = *(*v5 + 16);
  v12 = *(a1 + 5) - v11;
  if (*(a1 + 5) > v11)
  {
    v13 = *(a1 + 4);
    v14 = *a1 + 4 * v13 * v11;
    v15 = v13 * v12;
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v14 + 4 * v15);
    if (v16)
    {
      v18 = 0;
    }

    if (v17 != v18)
    {
      bzero(v17, ((v18 - v17 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }
}

uint64_t cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - 4 * *(a1 + 20);
  if (***(*a2 + 8) == v4 || **(****(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 4);
    v21[0] = 0;
    v21[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v21, (v6 * v5));
    v22 = v5;
    v23 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v21, a2);
    v8 = *a1;
    if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
    {
      cva::Logger::instance(v7);
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = *(a1 + 16);
    v11 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 8) + 4 * (v10 * v9);
    if (v11)
    {
      v13 = 0;
    }

    v14 = v21[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v8;
      v17 = v21[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v12 != v13);
    }

    free(v14);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || **(a2 + 16) == *a1)
  {
    v6 = *(v4 + 16);
    v12 = 0;
    v13 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v12, v6);
    v14 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v12, a2);
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = v13;
    *a1 = v12;
    *(a1 + 8) = v9;
    v12 = v7;
    v13 = v8;
    *(a1 + 16) = v14;
    v14 = 0;
    free(v7);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5 && *(*(a2 + 16) + 16))
    {
      cva::VecLib<float>::gemv();
    }

    if (v5)
    {
      v10 = *a1;
      v11 = 4 * v5;

      bzero(v10, v11);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,9u,1u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || *(a2 + 16) == *a1)
  {
    v6 = *(v4 + 16);
    v12 = 0;
    v13 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v12, v6);
    v14 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,9u,1u,false>>(&v12, a2);
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = v13;
    *a1 = v12;
    *(a1 + 8) = v9;
    v12 = v7;
    v13 = v8;
    *(a1 + 16) = v14;
    v14 = 0;
    free(v7);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5)
    {
      cva::VecLib<float>::gemv();
    }

    if (v5)
    {
      v10 = *a1;
      v11 = 4 * v5;

      bzero(v10, v11);
    }
  }
}

uint64_t arkit::FaceTrackingData::FaceTrackingData(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>(a1 + 40, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  return a1;
}

{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>(a1 + 40, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  return a1;
}

uint64_t arkit::FaceTrackingData::filteredLandmarks@<X0>(uint64_t a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::vector<arkit::Landmark>::reserve(a3, a2[1] - *a2);
  v8 = *a2;
  v7 = a2[1];
  if (v8 != v7)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 2) - 1;
    do
    {
      v10 = *v8;
      if (v9 >= v10)
      {
        v11 = *(a1 + 40) + 12 * v10;
        v12 = a3[1];
        if (v12 >= a3[2])
        {
          result = std::vector<arkit::Landmark>::__emplace_back_slow_path<arkit::Landmark const&>(a3, v11);
        }

        else
        {
          *v12 = *v11;
          *(v12 + 8) = *(v11 + 8);
          result = v12 + 12;
        }

        a3[1] = result;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

void sub_1C254C440(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<arkit::Landmark>::__init_with_size[abi:ne200100]<arkit::Landmark*,arkit::Landmark*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<arkit::Landmark>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C254C4E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<arkit::Landmark>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<arkit::Landmark>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void arkit::FacialLightEstimation::FacialLightEstimation(arkit::FacialLightEstimation *this)
{
  *(this + 24) = 0u;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  operator new();
}

void sub_1C254C618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  free(*(v15 + 72));
  v18 = *(v15 + 48);
  if (v18)
  {
    *(v15 + 56) = v18;
    operator delete(v18);
  }

  v19 = *v16;
  if (*v16)
  {
    *(v15 + 32) = v19;
    operator delete(v19);
  }

  free(*v15);
  _Unwind_Resume(a1);
}

void arkit::FacialLightEstimation::estimateLight(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  arkit::PrecomputedFaceData::getValidSampleIDs(*(a1 + 96), &__p);
  v8 = *(a1 + 48);
  if (v8)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = __p;
  *(a1 + 64) = v80;
  arkit::FaceTrackingData::filteredLandmarks(a3, (a1 + 48), &v96);
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v9 = v96;
  v10 = v97;
  if (v96 != v97)
  {
    v11 = 0;
    do
    {
      v12 = v9[8];
      if (v11 >= v95)
      {
        v13 = v93;
        v14 = v11 - v93;
        v15 = (v11 - v93) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v17 = v95 - v93;
        if ((v95 - v93) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&v93, v18);
        }

        v19 = v15;
        v20 = (4 * v15);
        v21 = &v20[-v19];
        *v20 = v12;
        v11 = (v20 + 1);
        memcpy(v21, v13, v14);
        v22 = v93;
        v93 = v21;
        v94 = v11;
        v95 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v12;
        v11 += 4;
      }

      v94 = v11;
      v9 += 12;
    }

    while (v9 != v10);
  }

  if (*(a2 + 9))
  {
    kdebug_trace();
    arkit::ChromaFilter::filter();
    kdebug_trace();
    v23 = v93;
    v24 = __p;
    if (v94 == v93)
    {
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
      v26 = (v94 - v93) >> 2;
      if (v26 <= 1)
      {
        v26 = 1;
      }

      do
      {
        v27 = ((*&v24[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v25) & 1) != 0 && *&v23[4 * v25] == 1;
        *&v23[4 * v25++] = v27;
      }

      while (v26 != v25);
    }

    operator delete(v24);
  }

LABEL_29:
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v28 = v93;
  v29 = v94;
  if (v93 != v94)
  {
    v30 = v90;
    do
    {
      if (*v28)
      {
        ++v30;
      }

      else
      {
        v31 = v91 - (v30 + 1);
        if (v91 != v30 + 1)
        {
          memmove(v30, v30 + 1, v91 - (v30 + 1));
        }

        v91 = (v30 + v31);
      }

      v28 += 4;
    }

    while (v28 != v29);
  }

  arkit::FaceTrackingData::filteredLandmarks(a3, &v90, &v88);
  if (0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 2) != v91 - v90)
  {
    __assert_rtn("estimateLight", "FacialLightEstimation.cpp", 67, "sampleIndices.size() == samplePositions.size()");
  }

  if (v89 == v88)
  {
    goto LABEL_44;
  }

  arkit::FacialLightEstimation::populateValidImageSamples(a1, a4, &v90, &v88, &v93);
  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = *a1;
    v34 = *(a1 + 16);
    do
    {
      *v33 = powf(*v33, 2.2);
      ++v33;
      --v34;
    }

    while (v34);
  }

  if (v32 == *(a1 + 88) && v32 >= *(a1 + 92))
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
    std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::reserve(&v85, v32);
    v35 = *(a1 + 88);
    if (v35)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        if (v37 >= *(a1 + 16))
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        if (v37 >= v35)
        {
          __assert_rtn("row", "matrixmixin.h", 1063, "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)");
        }

        v38 = *(a1 + 92);
        v39 = *(a1 + 72) + v36;
        LODWORD(v76) = *(*a1 + v36);
        DWORD2(v76) = v38;
        *&v77 = v39;
        *(&v77 + 1) = __PAIR64__(v37, v35);
        std::pair<float,cva::Matrix<float,1u,0u,false>>::pair[abi:ne200100]<float,cva::MatrixRef<float,1u,0u,false>,0>(&__p, &v76);
        v40 = v86;
        if (v86 >= v87)
        {
          v42 = std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__emplace_back_slow_path<std::pair<float,cva::Matrix<float,1u,0u,false>>>(&v85, &__p);
          v41 = *(&__p + 1);
        }

        else
        {
          v41 = 0;
          *v86 = __p;
          *(v40 + 1) = 0;
          *(v40 + 2) = 0;
          *(v40 + 1) = *(&__p + 1);
          *(v40 + 2) = v80;
          v40[6] = DWORD2(v80);
          *(&__p + 1) = 0;
          *&v80 = 0;
          DWORD2(v80) = 0;
          v42 = (v40 + 8);
        }

        ++v37;
        v86 = v42;
        free(v41);
        v35 = *(a1 + 88);
        v36 += 4;
      }

      while (v37 < v35);
    }

    arkit::runSolver(&v85, a2, &__p);
    v76 = __p;
    v77 = v80;
    v78 = v81;
    v44 = (a1 + 152);
    v43 = *(a1 + 152);
    *(a1 + 160) = v43;
    v45 = v82;
    v46 = v83;
    if (v82 != v83)
    {
      do
      {
        v47 = v90[*v45];
        v48 = *(a1 + 168);
        if (v43 >= v48)
        {
          v49 = *v44;
          v50 = v43 - *v44;
          v51 = (v50 >> 3) + 1;
          if (v51 >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v52 = v48 - v49;
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
            _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1 + 152, v53);
          }

          v54 = (8 * (v50 >> 3));
          *v54 = v47;
          v43 = (v54 + 1);
          memcpy(0, v49, v50);
          v55 = *(a1 + 152);
          *(a1 + 152) = 0;
          *(a1 + 160) = v43;
          *(a1 + 168) = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v43 = v47;
          v43 += 8;
        }

        *(a1 + 160) = v43;
        ++v45;
      }

      while (v45 != v46);
    }

      ;
    }

    v57 = *(a3 + 16);
    v73 = *a3;
    v74 = v57;
    v75 = *(a3 + 32);
    arkit::shct::rotateShCoeff(&v76, &v73, v72);
    v58 = *(&v73 + 2);
    v59 = *(&v74 + 1);
    v60 = v75;
    v68 = atan2f(*(&v74 + 1), v75);
    v61.f32[0] = atan2f(-v58, sqrtf((v60 * v60) + (v59 * v59)));
    v61.f32[1] = v68;
    v62 = vsubq_f64(xmmword_1C25ED0F0, vabsq_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(v61, vdup_n_s32(0x43340000u))), vdupq_n_s64(0x400921FB54442D18uLL))));
    if (v62.f64[0] >= v62.f64[1])
    {
      v62.f64[0] = v62.f64[1];
    }

    v63 = *a2;
    v64 = v62.f64[0];
    v65 = 1.0 / (expf(v64 * -0.8) + 1.0) * v63;
    arkit::ExponentialSmoother<cva::Matrix<float,9u,1u,false>>::step(a1 + 112, v72, v70, v65);
    v66 = v70[1];
    *a5 = v70[0];
    *(a5 + 16) = v66;
    *(a5 + 32) = v71;
    *(a5 + 36) = v84;
    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }

    *&__p = &v85;
    std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
LABEL_44:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_1C254CDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  a35 = v41 - 248;
  std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](&a35);
  v43 = *(v41 - 224);
  if (v43)
  {
    *(v41 - 216) = v43;
    operator delete(v43);
  }

  v44 = *(v41 - 200);
  if (v44)
  {
    *(v41 - 192) = v44;
    operator delete(v44);
  }

  v45 = *(v41 - 176);
  if (v45)
  {
    *(v41 - 168) = v45;
    operator delete(v45);
  }

  v46 = *(v41 - 152);
  if (v46)
  {
    *(v41 - 144) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void arkit::FacialLightEstimation::populateValidImageSamples(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v6 = a4;
  v9 = a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 2);
  *(a1 + 16) = v10;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1, v10);
  *(v9 + 32) = *(v9 + 24);
  std::vector<float>::reserve((v9 + 24), 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 2));
  v11 = (v6[1] - *v6) >> 2;
  *(v9 + 88) = -1431655765 * v11;
  *(v9 + 92) = 9;
  v55 = (v9 + 24);
  cva::MatrixData<float,0ul,0ul,false>::reserve(v9 + 72, (3 * v11));
  v13 = *a3;
  v12 = a3[1];
  if (v12 != *a3)
  {
    v14 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    v50 = "matrixmixin.h";
    v51 = "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)";
    v49 = "row";
    v53 = v9;
    v54 = v6;
    v52 = a2;
    while (1)
    {
      v17 = (a5[1] - *a5) >> 2;
      if (v17 > v16)
      {
        v16 = v16;
        do
        {
          if (*(*a5 + 4 * v16))
          {
            break;
          }

          ++v16;
        }

        while (v17 > v16);
      }

      v18 = (*v6 + 12 * v14);
      v19 = *v18;
      if (*v18 >= 0.0 && v19 < *(a2 + 8))
      {
        v20 = v18[1];
        if (v20 >= 0.0)
        {
          v21 = *(a2 + 12);
          if (v20 < v21)
          {
            v23 = *(v9 + 32);
            v22 = *(v9 + 40);
            if (v23 >= v22)
            {
              v25 = *v55;
              v26 = v23 - *v55;
              v27 = (v26 >> 2) + 1;
              if (v27 >> 62)
              {
                _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
              }

              v28 = v22 - v25;
              if (v28 >> 1 > v27)
              {
                v27 = v28 >> 1;
              }

              v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
              v30 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v29)
              {
                v30 = v27;
              }

              if (v30)
              {
                std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v55, v30);
              }

              v31 = (4 * (v26 >> 2));
              *v31 = *(v13 + 4 * v14);
              v24 = v31 + 1;
              memcpy(0, v25, v26);
              v32 = *(v9 + 24);
              *(v9 + 24) = 0;
              *(v9 + 32) = v24;
              *(v9 + 40) = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v23 = *(v13 + 4 * v14);
              v24 = v23 + 1;
            }

            v33 = 0;
            *(v9 + 32) = v24;
            v34 = v19;
            v35 = v20;
            v58[0] = v34 | (v35 << 32);
            v56[0] = *(a2 + 8);
            do
            {
              v36 = *(v58 + v33);
              v37 = *(v56 + v33);
              v38 = v36 >= v37 || v33 == 4;
              v33 += 4;
            }

            while (!v38);
            if (v36 >= v37)
            {
              arkit::ImageViewYUV::at();
            }

            if (v14 >= *(v9 + 16))
            {
              arkit::FacialLightEstimation::populateValidImageSamples();
            }

            LOBYTE(v21) = *(*(a2 + 24) + *a2 + (*(a2 + 16) * v34 + *(a2 + 20) * v35));
            *(*v9 + 4 * v14) = LODWORD(v21) * 0.0039216;
            RTF = arkit::PrecomputedFaceData::getRTF(*(v9 + 96), v16, v56);
            v40 = *(v9 + 88);
            if (v40 <= v15)
            {
              v48 = 1063;
              goto LABEL_51;
            }

            v41 = *(v9 + 92);
            v42 = *(v9 + 72);
            if (v41 != v57)
            {
              cva::Logger::instance(RTF);
              cva::Logger::logInCategory();
              if (v41 != v57)
              {
                v48 = 163;
                v49 = "assert_equal_size";
                v50 = "matrixfun.h";
                v51 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
LABEL_51:
                __assert_rtn(v49, v50, v48, v51);
              }
            }

            if (v41)
            {
              v43 = (v42 + 4 * v15);
            }

            else
            {
              v43 = 0;
            }

            v44 = v42 + 4 * v15 + 4 * (v41 * v40);
            if (!v41)
            {
              v44 = 0;
            }

            v45 = v56[0];
            if (v43 != v44)
            {
              v46 = v56[0];
              do
              {
                v47 = *v46++;
                *v43 = v47;
                v43 += v40;
              }

              while (v43 != v44);
            }

            ++v15;
            free(v45);
            LODWORD(v16) = v16 + 1;
            v6 = v54;
            v13 = *a3;
            v12 = a3[1];
            a2 = v52;
            v9 = v53;
          }
        }
      }

      if (++v14 >= (v12 - v13) >> 2)
      {
        goto LABEL_45;
      }
    }
  }

  v15 = 0;
LABEL_45:
  cva::Matrix<float,0u,0u,false>::conservativeResize(v55 + 6, v15, 9u);
  cva::Matrix<float,0u,1u,false>::conservativeResize(v9, v15, 1);
}

void *std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](result, a2);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_1C254D3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 arkit::ExponentialSmoother<cva::Matrix<float,9u,1u,false>>::step@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 36))
  {
    v13 = a2;
    v15 = 0;
    v14 = a4;
    v10 = a1;
    v12 = 0;
    v11 = 1.0 - a4;
    v16[0] = &v13;
    v16[1] = &v10;
    std::optional<cva::Matrix<float,9u,1u,false>>::operator=[abi:ne200100]<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,void>(a1, v16);
    if ((*(a1 + 36) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(a1 + 32) = *(a2 + 8);
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 36) = 1;
  }

  result = *a1;
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 32) = *(a1 + 32);
  return result;
}

void cva::Matrix<float,0u,0u,false>::conservativeResize(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v6 = a3 * a2;
  if (a1[1] >= v6)
  {
    if (a3 >= 2)
    {
      v14 = *(a1 + 4);
      if (v14 != a2)
      {
        v15 = *(a1 + 5);
        if (v15 > 1)
        {
          if (v15 >= a3)
          {
            v16 = a3;
          }

          else
          {
            v16 = v15;
          }

          if (v14 <= a2)
          {
            v19 = v16 - 1;
            v20 = a2 * (v16 - 1);
            do
            {
              memmove((*a1 + 4 * v20), (*a1 + 4 * (*(a1 + 4) * v19)), 4 * *(a1 + 4));
              v20 -= a2;
              --v19;
            }

            while (v19);
          }

          else
          {
            v17 = 1;
            v18 = a2;
            do
            {
              memmove((*a1 + 4 * v18), (*a1 + 4 * (*(a1 + 4) * v17++)), 4 * a2);
              v18 += a2;
            }

            while (v16 != v17);
          }
        }
      }
    }

    *(a1 + 4) = a2;
    *(a1 + 5) = a3;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v29, v6);
    v31 = __PAIR64__(a3, a2);
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    if (v7 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(a1 + 4);
    }

    if (v8 >= a3)
    {
      v8 = a3;
    }

    v10 = *a1;
    v25[0] = v9;
    v25[1] = v8;
    v26 = v10;
    v27 = v7;
    v28 = 0;
    v21[0] = v9;
    v21[1] = v8;
    v22 = v29;
    v23 = a2;
    v24 = 0;
    cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixRef<float,0u,0u,false>>(v21, v25);
    v11 = *a1;
    v12 = a1[1];
    v13 = v30;
    *a1 = v29;
    a1[1] = v13;
    v29 = v11;
    v30 = v12;
    a1[2] = v31;
    v31 = 0;
    free(v11);
  }
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C254D67C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>,std::pair<float,cva::Matrix<float,1u,0u,false>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v7 = *(v6 + 16);
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      free(*(v5 + 8));
      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    free(*(i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__emplace_back_slow_path<std::pair<float,cva::Matrix<float,1u,0u,false>>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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

  v19 = a1;
  if (v7)
  {
    std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = *(a2 + 16);
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<float,cva::Matrix<float,1u,0u,false>>>,std::pair<float,cva::Matrix<float,1u,0u,false>>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C254D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<float,cva::Matrix<float,1u,0u,false>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<float,cva::Matrix<float,1u,0u,false>>::pair[abi:ne200100]<float,cva::MatrixRef<float,1u,0u,false>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate((a1 + 8), v4);
  v6 = *(a2 + 8);
  *(a1 + 24) = v6;
  v7 = *v5;
  v8 = *(a2 + 16);
  if (&v8[-*(a2 + 28)] == *v5)
  {
    v21 = 0;
    v22 = 0;
    v11 = cva::MatrixData<float,0ul,0ul,false>::allocate(&v21, v6);
    v23 = v6;
    if (v6 != *(a2 + 8))
    {
      cva::Logger::instance(v11);
      cva::Logger::logInCategory();
      v6 = v23;
      if (v23 != *(a2 + 8))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v12 = v21;
    if (v6)
    {
      v13 = *(a2 + 16);
      v14 = 4 * v6;
      v15 = 4 * *(a2 + 24);
      v16 = v21;
      do
      {
        *v16++ = *v13;
        v13 = (v13 + v15);
        v14 -= 4;
      }

      while (v14);
    }

    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = v22;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    v21 = v17;
    v22 = v18;
    *(a1 + 24) = v6;
    v23 = 0;
    free(v17);
  }

  else if (v6)
  {
    v9 = 4 * v6;
    v10 = 4 * *(a2 + 24);
    do
    {
      *v7++ = *v8;
      v8 = (v8 + v10);
      v9 -= 4;
    }

    while (v9);
  }

  return a1;
}

void std::vector<std::pair<float,cva::Matrix<float,1u,0u,false>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 4;
        free(*(v4 - 3));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::shared_ptr<arkit::PrecomputedFaceData>::shared_ptr[abi:ne200100]<arkit::PrecomputedFaceData,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1C254DB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<arkit::PrecomputedFaceData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

arkit::PrecomputedFaceData **std::unique_ptr<arkit::PrecomputedFaceData>::~unique_ptr[abi:ne200100](arkit::PrecomputedFaceData **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    arkit::PrecomputedFaceData::~PrecomputedFaceData(v2);
    MEMORY[0x1C691A790]();
  }

  return a1;
}

void std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

arkit::PrecomputedFaceData *std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    arkit::PrecomputedFaceData::~PrecomputedFaceData(result);

    JUMPOUT(0x1C691A790);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<arkit::PrecomputedFaceData *,std::shared_ptr<arkit::PrecomputedFaceData>::__shared_ptr_default_delete<arkit::PrecomputedFaceData,arkit::PrecomputedFaceData>,std::allocator<arkit::PrecomputedFaceData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<cva::Matrix<float,9u,1u,false>>::operator=[abi:ne200100]<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::Matrix<float,9u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,void>(uint64_t result, float **a2)
{
  if (*(result + 36) == 1)
  {
    v2 = 0;
    v3 = *a2;
    v4 = a2[1];
    v5 = **a2;
    v6 = *v4;
    do
    {
      *(result + v2) = (*(v5 + v2) * v3[2]) + (*(v6 + v2) * v4[2]);
      v2 += 4;
    }

    while (v2 != 36);
  }

  else
  {
    v7 = 0;
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    v8 = *a2;
    v9 = a2[1];
    v10 = **a2;
    v11 = *v9;
    do
    {
      *(result + v7) = (*(v10 + v7) * v8[2]) + (*(v11 + v7) * v9[2]);
      v7 += 4;
    }

    while (v7 != 36);
    *(result + 36) = 1;
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

cva::Logger *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixRef<float,0u,0u,false>>(cva::Logger *a1, uint64_t a2)
{
  if (*(a2 + 8) - 4 * *(a2 + 20) != *(a1 + 1) - 4 * *(a1 + 5))
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixRef<float,0u,0u,false>>(a1, a2);
    return a1;
  }

  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = (v5 * *a1);
  v25[0] = 0;
  v25[1] = 0;
  v7 = cva::MatrixData<float,0ul,0ul,false>::allocate(v25, v6);
  v26 = v4;
  v27 = v5;
  if (v4 != *a2 || v5 != *(a2 + 4))
  {
    cva::Logger::instance(v7);
    cva::Logger::logInCategory();
    v4 = v26;
    if (v26 != *a2)
    {
      goto LABEL_38;
    }

    v5 = v27;
    if (v27 != *(a2 + 4))
    {
      goto LABEL_38;
    }

    v6 = (v26 * v27);
  }

  v8 = v25[0];
  if (v6)
  {
    v9 = 0;
    v10 = *(a2 + 16) - v4;
    v11 = *(a2 + 8);
    v12 = 4 * v6;
    v13 = v25[0];
    do
    {
      *v13 = *v11;
      v13 = (v13 + 4);
      if (v9 + 1 >= v4)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      v15 = &v11[v14];
      if (v9 + 1 < v4)
      {
        ++v9;
      }

      else
      {
        v9 = 0;
      }

      v11 = v15 + 1;
      v12 -= 4;
    }

    while (v12);
  }

  if (*a1 == v4 && *(a1 + 1) == v5)
  {
    goto LABEL_22;
  }

  cva::Logger::instance(v8);
  cva::Logger::logInCategory();
  v4 = *a1;
  if (*a1 != v26 || (v5 = *(a1 + 1), v5 != v27))
  {
LABEL_38:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v8 = v25[0];
  LODWORD(v6) = v4 * v5;
LABEL_22:
  v16 = *(a1 + 4);
  if (v6)
  {
    v17 = *(a1 + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 1) + 4 * (v16 * v5);
  if (!v6)
  {
    v18 = 0;
  }

  if (v17 != v18)
  {
    v19 = 0;
    v20 = v16 - v4;
    v21 = v8;
    do
    {
      v22 = *v21;
      v21 = (v21 + 4);
      *v17 = v22;
      if (v19 + 1 >= v4)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v17 += v23 + 1;
      if (v19 + 1 < v4)
      {
        ++v19;
      }

      else
      {
        v19 = 0;
      }
    }

    while (v17 != v18);
  }

  free(v8);
  return a1;
}

cva::Logger *cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixRef<float,0u,0u,false>>(cva::Logger *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (*result != *a2 || (v5 = *(result + 1), v5 != *(a2 + 4)))
  {
    cva::Logger::instance(result);
    result = cva::Logger::logInCategory();
    v4 = *v3;
    if (*v3 != *a2 || (v5 = *(v3 + 1), v5 != *(a2 + 4)))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v6 = v5 * v4;
  v7 = *(v3 + 4);
  if (v5 * v4)
  {
    v8 = *(v3 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 1) + 4 * (v7 * v5);
  if (!v6)
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 16) - v4;
    v13 = v7 - v4;
    if (v6)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    do
    {
      *v8 = *v14;
      if (v10 + 1 >= v4)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v14 += v15 + 1;
      if (v10 + 1 < v4)
      {
        ++v10;
      }

      else
      {
        v10 = 0;
      }

      if (v11 + 1 >= v4)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v8 += v16 + 1;
      if (v11 + 1 < v4)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v8 != v9);
  }

  return result;
}

void cva::Matrix<float,0u,1u,false>::conservativeResize(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 != 1)
  {
    cva::Matrix<float,0u,1u,false>::conservativeResize();
  }

  if (*(a1 + 8) >= a2)
  {
    *(a1 + 16) = a2;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v19, a2);
    v21 = a2;
    v5 = *(a1 + 16);
    if (v5 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = *(a1 + 16);
    }

    v7 = *a1;
    v14 = 0;
    v15 = v6;
    v16 = v7;
    v17 = v5;
    v18 = 0;
    v11 = v6;
    v12 = v19;
    v13 = a2;
    cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(&v11, &v15);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v20;
    *a1 = v19;
    *(a1 + 8) = v10;
    v19 = v8;
    v20 = v9;
    *(a1 + 16) = v21;
    v21 = 0;
    free(v8);
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixRef<float,0u,1u,false>>(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  if ((*(a2 + 8) - 4 * *(a2 + 20)) != &v4[-a1[5]])
  {
    v5 = *a1;
    if (*a1 != *a2)
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *a1;
      if (*a1 != *a2)
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }

      v4 = *(a1 + 1);
    }

    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      v8 = 4 * v6;
      do
      {
        v9 = *v7++;
        *v4++ = v9;
        v8 -= 4;
      }

      while (v8);
    }

    return a1;
  }

  v10 = *a1;
  v22[0] = 0;
  v22[1] = 0;
  v11 = cva::MatrixData<float,0ul,0ul,false>::allocate(v22, v10);
  v23 = v10;
  if (v10 != *a2)
  {
    cva::Logger::instance(v11);
    cva::Logger::logInCategory();
    v10 = v23;
    if (v23 != *a2)
    {
      goto LABEL_22;
    }
  }

  v12 = v22[0];
  if (v10)
  {
    v13 = *(a2 + 8);
    v14 = 4 * v10;
    v15 = v22[0];
    do
    {
      v16 = *v13++;
      *v15 = v16;
      v15 = (v15 + 4);
      v14 -= 4;
    }

    while (v14);
  }

  if (*a1 == v10)
  {
    goto LABEL_17;
  }

  cva::Logger::instance(v12);
  cva::Logger::logInCategory();
  v10 = *a1;
  if (v10 != v23)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v12 = v22[0];
LABEL_17:
  if (v10)
  {
    v17 = *(a1 + 1);
    v18 = 4 * v10;
    v19 = v12;
    do
    {
      v20 = *v19;
      v19 = (v19 + 4);
      *v17++ = v20;
      v18 -= 4;
    }

    while (v18);
  }

  free(v12);
  return a1;
}

char *arkit::wrap@<X0>(arkit *this@<X0>, void *a2@<X8>)
{
  if (CVPixelBufferGetPixelFormatType(this) != 875704422)
  {
    arkit::wrap();
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, 0);
  *a2 = 0;
  a2[1] = WidthOfPlane | (HeightOfPlane << 32);
  a2[2] = (BytesPerRowOfPlane << 32) | 1;
  a2[3] = BaseAddressOfPlane;
  v9 = CVPixelBufferGetWidthOfPlane(this, 1uLL);
  v10 = v9 | (CVPixelBufferGetHeightOfPlane(this, 1uLL) << 32);
  v11 = (CVPixelBufferGetBytesPerRowOfPlane(this, 1uLL) << 32) | 2;
  v12 = CVPixelBufferGetBaseAddressOfPlane(this, 1uLL);
  a2[4] = 0;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  LODWORD(v10) = CVPixelBufferGetWidthOfPlane(this, 1uLL);
  v13 = v10 | (CVPixelBufferGetHeightOfPlane(this, 1uLL) << 32);
  v14 = (CVPixelBufferGetBytesPerRowOfPlane(this, 1uLL) << 32) | 2;
  result = CVPixelBufferGetBaseAddressOfPlane(this, 1uLL);
  a2[8] = 0;
  a2[9] = v13;
  a2[10] = v14;
  a2[11] = result + 1;
  return result;
}

void *arkit::PrecomputedFaceData::PrecomputedFaceData(void *a1, __int128 *a2)
{
  std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](&__p, a2);
  arkit::RTFSPContainer::loadRtfsp(a1, &__p);
  if (v5 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C254E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void arkit::PrecomputedFaceData::~PrecomputedFaceData(arkit::PrecomputedFaceData *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v3 = (v1 + 72);
    std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *(v1 + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x1C691A790](v1, 0x1032C40D1F799DBLL);
  }
}

uint64_t arkit::PrecomputedFaceData::getRTF@<X0>(arkit::PrecomputedFaceData *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*this + 72) + 24 * a2;
  v5 = *(v4 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  result = cva::MatrixData<float,0ul,0ul,false>::allocate(a3, v5);
  if (v5)
  {
    result = memcpy(*a3, *v4, 4 * v5);
  }

  *(a3 + 16) = *(v4 + 16);
  return result;
}

void arkit::PrecomputedFaceData::getRTF(arkit::PrecomputedFaceData *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = (a2[1] - *a2) >> 2;
  v7 = *(*a1 + 96);
  *(a3 + 16) = v6;
  *(a3 + 20) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a3, (v7 * v6));
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v21 = "matrixmixin.h";
    v22 = "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)";
    v20 = "row";
    while (1)
    {
      RTF = arkit::PrecomputedFaceData::getRTF(a1, *(v8 + 4 * v9), &v23);
      v11 = *(a3 + 16);
      if (v9 >= v11)
      {
        break;
      }

      v12 = *(a3 + 20);
      v13 = *a3;
      if (v12 != v24)
      {
        cva::Logger::instance(RTF);
        cva::Logger::logInCategory();
        if (v12 != v24)
        {
          v19 = 163;
          v20 = "assert_equal_size";
          v21 = "matrixfun.h";
          v22 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
LABEL_18:
          __assert_rtn(v20, v21, v19, v22);
        }
      }

      if (v12)
      {
        v14 = (v13 + 4 * v9);
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 + 4 * v9 + 4 * (v12 * v11);
      if (!v12)
      {
        v15 = 0;
      }

      v16 = v23;
      if (v14 != v15)
      {
        v17 = v23;
        do
        {
          v18 = *v17++;
          *v14 = v18;
          v14 += v11;
        }

        while (v14 != v15);
      }

      ++v9;
      free(v16);
      v8 = *a2;
      if (v9 >= (a2[1] - *a2) >> 2)
      {
        return;
      }
    }

    v19 = 1063;
    goto LABEL_18;
  }
}

uint64_t arkit::PrecomputedFaceData::getValidSampleIDs(arkit::PrecomputedFaceData *this, int a2)
{
  v2 = *(*this + 48);
  if (a2 >= ((*(*this + 56) - v2) >> 2))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 4 * a2);
}

uint64_t arkit::PrecomputedFaceData::getValidSampleIDs@<X0>(arkit::PrecomputedFaceData *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 2);
}

std::string *std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string const,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string const,false> const&>(a1, a2);
  return a1;
}

void sub_1C254E8F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string const,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string const,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string const,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
        free(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t arkit::Random::seedFromCurrentTime(arkit::Random *this)
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  [v1 systemUptime];
  v2 = (v3 * 1000000000.0);

  return (v2 / 1000000);
}

int *arkit::Random::globalSeed(arkit::Random *this)
{
  {
    if (v2)
    {
      arkit::Random::globalSeed(void)::s_seed = arkit::Random::seedFromCurrentTime(v2);
    }
  }

  return &arkit::Random::globalSeed(void)::s_seed;
}

void arkit::runSolver(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = (a1[1] - *a1) >> 5;
  v33 = v7;
  v34 = v6;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v5 == 1 && v7 > v6)
  {
    kdebug_trace();
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v8) = -1;
    for (i = 1; i != 33; ++i)
    {
      arkit::Random::sampleNumbers<unsigned long>(&v33, &v34, v26);
      arkit::FaceLightOptimizer::compute(a1, v26, v23);
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v27, __p, v25, (v25 - __p) >> 3);
      v10 = (v28 - v27) >> 3;
      v11 = 1;
      if (v8 < v10)
      {
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v30, v27, v28, v10);
        v8 = (v28 - v27) >> 3;
        if ((v33 * 0.9) < v8)
        {
          v11 = 0;
        }
      }

      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v26[0])
      {
        v26[1] = v26[0];
        operator delete(v26[0]);
      }

      if (!v11)
      {
        break;
      }
    }

    kdebug_trace();
    v12 = v27;
    if (v27)
    {
      v28 = v27;
LABEL_27:
      operator delete(v12);
    }
  }

  else
  {
    std::vector<unsigned long long>::resize(&v30, v7);
    v13 = v30;
    if (v30 != v31)
    {
      v14 = 0;
      v15 = (v31 - v30 - 8) >> 3;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v18 = xmmword_1C25C8A20;
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v18));
        if (v20.i8[0])
        {
          v13[v14] = v14;
        }

        if (v20.i8[4])
        {
          v13[v14 + 1] = v14 + 1;
        }

        v14 += 2;
        v18 = vaddq_s64(v18, v19);
      }

      while (v17 != v14);
    }

    arkit::FaceLightOptimizer::compute(a1, &v30, v23);
    v21 = __p;
    v22 = (v25 - __p) >> 3;
    if (v22 >= 9)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v30, __p, v25, v22);
      v21 = __p;
    }

    if (v21)
    {
      v25 = v21;
      v12 = v21;
      goto LABEL_27;
    }
  }

  arkit::FaceLightOptimizer::compute(a1, &v30, a3);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_1C254EE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

arkit::Random *arkit::Random::sampleNumbers<unsigned long>@<X0>(arkit::Random *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *result;
  if (v5 > *result || v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v8 = result;
    if (v5 <= v6 >> 1)
    {
      result = std::vector<unsigned long>::vector[abi:ne200100](a3, v5);
      if (*a2)
      {
        v9 = 0;
        do
        {
          do
          {
            v10 = *v8;
            v11 = arkit::Random::globalSeed(result);
            result = rand_r(v11);
            v12 = result / 2147483650.0 * (v10 - 1);
            if (v12 >= 0.0)
            {
              v13 = 0.5;
            }

            else
            {
              v13 = -0.5;
            }

            v14 = (v12 + v13);
            v15 = a3[1];
            v16 = *a3;
            if (*a3 != v15)
            {
              v16 = *a3;
              while (*v16 != v14)
              {
                if (++v16 == v15)
                {
                  goto LABEL_22;
                }
              }
            }
          }

          while (v16 != v15);
LABEL_22:
          *(*a3 + 8 * v9++) = v14;
        }

        while (v9 < *a2);
      }
    }

    else
    {

      return arkit::Random::fisherYatesSample<unsigned long>(result, a2, a3);
    }
  }

  return result;
}

void sub_1C254F02C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

arkit::Random *arkit::Random::fisherYatesSample<unsigned long>@<X0>(arkit::Random *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *result;
  if (v5 > *result || v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v8 = result;
    result = std::vector<unsigned long>::vector[abi:ne200100](a3, v6);
    v10 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      v11 = 0;
      v12 = (v9 - v10 - 8) >> 3;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v15 = xmmword_1C25C8A20;
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v15));
        if (v17.i8[0])
        {
          *(v10 + 8 * v11) = v11;
        }

        if (v17.i8[4])
        {
          *(v10 + 8 * v11 + 8) = v11 + 1;
        }

        v11 += 2;
        v15 = vaddq_s64(v15, v16);
      }

      while (v14 != v11);
    }

    v18 = *a2;
    if (*a2)
    {
      v19 = 0;
      v20 = -1;
      do
      {
        v21 = *v8;
        v22 = arkit::Random::globalSeed(result);
        result = rand_r(v22);
        v23 = result / 2147483650.0 * (v20 + v21);
        if (v23 >= 0.0)
        {
          v24 = 0.5;
        }

        else
        {
          v24 = -0.5;
        }

        v25 = (v23 + v24);
        if (v25)
        {
          v26 = (*a3 + 8 * v19);
          v27 = *v26;
          *v26 = v26[v25];
          v26[v25] = v27;
        }

        ++v19;
        --v20;
      }

      while (v19 < *a2);
      v10 = *a3;
      v9 = a3[1];
      v18 = 8 * *a2;
    }

    if (v18 + v10 != v9)
    {
      a3[1] = v18 + v10;
    }
  }

  return result;
}

void sub_1C254F1E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_1C254F25C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *arkit::RTFSPContainer::loadRtfsp@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*(result + *(*result - 24) + 32) & 1) == 0)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_1C254FA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::istringstream::~istringstream(&a14);
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(a1);
}

void arkit::RTFSPContainer::~RTFSPContainer(arkit::RTFSPContainer *this)
{
  v3 = (this + 72);
  std::vector<cva::Matrix<float,1u,0u,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<cva::Matrix<float,1u,0u,false>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<cva::Matrix<float,1u,0u,false>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 24);
      v3 -= 24;
      free(v8);
    }

    a1[1] = v7;
  }
}

uint64_t arkit::RTFSPContainer::loadRtfsp@<X0>(void *a1@<X8>, arkit::RTFSPContainer *a2@<X0>)
{
  if (*(a2 + 24) != 1)
  {
    arkit::RTFSPContainer::loadRtfspDefault(a2);
  }

  return arkit::RTFSPContainer::loadRtfsp(a1);
}

uint64_t arkit::RTFSPContainer::loadRtfsp@<X0>(void *a1@<X8>)
{
  v5[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v3);
  if (v4[15])
  {
    arkit::RTFSPContainer::loadRtfsp(v3, a1);
  }

  else
  {
    *a1 = 0;
  }

  v3[0] = *MEMORY[0x1E69E54C8];
  *(v3 + *(v3[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1C691A5C0](v4);
  std::istream::~istream();
  return MEMORY[0x1C691A740](v5);
}

void sub_1C254FD28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ifstream::~ifstream(va, MEMORY[0x1E69E54C8]);
  MEMORY[0x1C691A740](v2 + 424);
  _Unwind_Resume(a1);
}

void sub_1C254FEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::istringstream::~istringstream(va);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1C691A5B0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C25500B4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1C25502AC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1C691A740](a1 + 120);
  return a1;
}

uint64_t std::vector<cva::Matrix<float,1u,0u,false>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v22 = result;
    if (v9)
    {
      std::allocator<cva::Matrix<float,1u,0u,false>>::allocate_at_least[abi:ne200100](result, v9);
    }

    v12 = 24 * v6;
    v19 = 0;
    v20 = 24 * v6;
    *(&v21 + 1) = 0;
    v13 = 24 * a2;
    v14 = 24 * v6;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v14 += 24;
      v13 -= 24;
    }

    while (v13);
    *&v21 = v12 + 24 * a2;
    v15 = *(result + 8);
    v16 = v12 + *result - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cva::Matrix<float,1u,0u,false>>,cva::Matrix<float,1u,0u,false>*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(&v19);
  }

  return result;
}

void sub_1C255055C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<cva::Matrix<float,1u,0u,false>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cva::Matrix<float,1u,0u,false>>,cva::Matrix<float,1u,0u,false>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      v7 = v6[1];
      *a4 = *v6;
      *(a4 + 8) = v7;
      *v6 = 0;
      v6[1] = 0;
      *(a4 + 16) = *(v6 + 4);
      *(v6 + 4) = 0;
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 3;
      free(v8);
    }
  }
}

uint64_t std::__split_buffer<cva::Matrix<float,1u,0u,false>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    free(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C691A5C0](a1 + 2);

  return std::istream::~istream();
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1C691A5F0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1C25508B8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C2550878);
  }

  __cxa_rethrow();
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1C691A5F0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1C2550B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C2550B4CLL);
  }

  __cxa_rethrow();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C691A6F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C2550CE8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

double arkit::shct::rotateShCoeff@<D0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = acosf(a2[8]);
  if (fabsf(v6) >= 0.001)
  {
    v9 = a2[6];
    v10 = a2[7];
    v7 = atan2f(a2[5], -a2[2]);
    v8 = atan2f(v10, v9);
  }

  else
  {
    v7 = atan2f(a2[1], *a2);
    v8 = 0.0;
  }

  v11 = -*(a3 + 4);
  v12 = -*(a3 + 20);
  v14 = *(a3 + 24);
  v13 = *(a3 + 28);
  v15 = *(a3 + 32);
  v16 = -*(a3 + 16);
  *(a3 + 4) = *(a3 + 8);
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 20) = v12;
  *(a3 + 24) = (v14 + (v15 * 1.7321)) * -0.5;
  *(a3 + 28) = v16;
  *(a3 + 32) = (v15 + (v14 * -1.7321)) * 0.5;
  v17 = v26;
  *a3 = v25;
  *(a3 + 16) = v17;
  *(a3 + 32) = v27;
  LODWORD(v17) = *(a3 + 4);
  v18 = *(a3 + 24);
  v19 = -*(a3 + 28);
  v20 = *(a3 + 32);
  v21 = *(a3 + 16);
  v22 = -*(a3 + 20);
  *(a3 + 4) = -*(a3 + 8);
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  *(a3 + 20) = v22;
  *(a3 + 24) = (v18 + (v20 * 1.7321)) * -0.5;
  *(a3 + 28) = v21;
  *(a3 + 32) = (v20 + (v18 * -1.7321)) * 0.5;
  result = *&v25;
  v24 = v26;
  *a3 = v25;
  *(a3 + 16) = v24;
  *(a3 + 32) = v27;
  return result;
}

float arkit::anonymous namespace::rotateSHCoeffsAroundZ@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = __sincosf_stret(a3);
  v7 = __sincosf_stret(a3 + a3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 4) = (v6.__sinval * v9) + (v6.__cosval * v8);
  *(a2 + 8) = v10;
  *(a2 + 12) = (v6.__cosval * v9) - (v6.__sinval * v8);
  v12 = *(a1 + 28);
  v11 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  v15 = *(a1 + 24);
  *(a2 + 16) = (v7.__sinval * v11) + (v7.__cosval * v13);
  *(a2 + 20) = (v6.__sinval * v12) + (v6.__cosval * v14);
  *(a2 + 24) = v15;
  *(a2 + 28) = (v6.__cosval * v12) - (v6.__sinval * v14);
  result = (v7.__cosval * v11) - (v7.__sinval * v13);
  *(a2 + 32) = result;
  return result;
}

uint64_t arkit::shct::flipAxesShCoeff@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(result + 4);
  if (a3)
  {
    v5 = -v5;
  }

  *a5 = *result;
  *(a5 + 4) = v5;
  v7 = *(result + 8);
  v6 = *(result + 12);
  if (a4)
  {
    v7 = -v7;
  }

  *(a5 + 12) = 0;
  *(a5 + 8) = v7;
  if (a2)
  {
    *(a5 + 12) = -v6;
    if ((a3 & 1) == 0)
    {
LABEL_7:
      v8 = -*(result + 16);
      goto LABEL_10;
    }
  }

  else
  {
    *(a5 + 12) = v6;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v8 = *(result + 16);
LABEL_10:
  v9 = *(result + 20);
  v10 = *(result + 24);
  if (a3 != a4)
  {
    v9 = -v9;
  }

  *(a5 + 16) = v8;
  *(a5 + 20) = v9;
  v11 = *(result + 28);
  v12 = *(result + 32);
  if (a2 != a4)
  {
    v11 = -v11;
  }

  *(a5 + 24) = v10;
  *(a5 + 28) = v11;
  *(a5 + 32) = v12;
  return result;
}

id ARQATraceableDefaultEntryForResultData(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKeyedSubscript:@"type"];

  v5 = MEMORY[0x1E696AD98];
  [v1 timestamp];
  v6 = [v5 numberWithDouble:?];
  [v2 setObject:v6 forKeyedSubscript:@"timestamp"];

  return v2;
}

void sub_1C2551194(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ARQATraceableDefaultFormatForResultData()
{
  v0 = objc_opt_new();
  [v0 setObject:@"Name of this data type" forKeyedSubscript:@"type"];
  [v0 setObject:@"Timestamp in seconds" forKeyedSubscript:@"timestamp"];

  return v0;
}

void sub_1C25512FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id ARFloat(float a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v1];

  return v3;
}

void sub_1C2553354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C25535BC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C2558C8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_22()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_22()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_35()
{
  if (_ARLogGeneral_onceToken_37 != -1)
  {
    _ARLogGeneral_cold_1_35();
  }

  v1 = _ARLogGeneral_logObj_37;

  return v1;
}

uint64_t ARRigInputJoints()
{
  v3 = *MEMORY[0x1E69E9840];
  {
    v1[6] = xmmword_1E817DA60;
    v1[7] = *off_1E817DA70;
    v2 = "righthand";
    v1[2] = xmmword_1E817DA20;
    v1[3] = *&off_1E817DA30;
    v1[4] = xmmword_1E817DA40;
    v1[5] = *&off_1E817DA50;
    v1[0] = xmmword_1E817DA00;
    v1[1] = *&off_1E817DA10;
    ARRigInputJoints::dataVector = 0;
    unk_1EBF42B80 = 0;
    qword_1EBF42B88 = 0;
    std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&ARRigInputJoints::dataVector, v1, &v3, 0x11uLL);
    __cxa_atexit(std::vector<char const*>::~vector[abi:ne200100], &ARRigInputJoints::dataVector, &dword_1C241C000);
  }

  return ARRigInputJoints::dataVector;
}

uint64_t std::vector<char const*>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t ARRigOutputJoints()
{
  v2 = *MEMORY[0x1E69E9840];
  {
    memcpy(v1, off_1E817DA88, sizeof(v1));
    qword_1EBF42BA0 = 0;
    unk_1EBF42BA8 = 0;
    ARRigOutputJoints::dataVector = 0;
    std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&ARRigOutputJoints::dataVector, v1, &v2, 0x5BuLL);
    __cxa_atexit(std::vector<char const*>::~vector[abi:ne200100], &ARRigOutputJoints::dataVector, &dword_1C241C000);
  }

  return ARRigOutputJoints::dataVector;
}

uint64_t ARNeutralBodySkeleton3DModelTransforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  v7[1] = *MEMORY[0x1E69E9840];
  {
    v6[0] = xmmword_1C25C8910;
    v6[1] = xmmword_1C25C8BC0;
    v6[2] = xmmword_1C25C86A0;
    v6[3] = xmmword_1C25ED250;
    v6[4] = xmmword_1C25ED260;
    v6[5] = xmmword_1C25ED270;
    v6[6] = xmmword_1C25ED280;
    v6[7] = xmmword_1C25ED290;
    v6[8] = xmmword_1C25ED2A0;
    v6[9] = xmmword_1C25ED2B0;
    v6[10] = xmmword_1C25ED2C0;
    v6[11] = xmmword_1C25ED2D0;
    v6[12] = xmmword_1C25ED2E0;
    v6[13] = xmmword_1C25ED2F0;
    v6[14] = xmmword_1C25ED300;
    v6[15] = xmmword_1C25ED310;
    v6[16] = xmmword_1C25ED320;
    v6[17] = xmmword_1C25ED330;
    v6[18] = xmmword_1C25ED340;
    v6[19] = xmmword_1C25ED350;
    v6[20] = xmmword_1C25ED360;
    v6[21] = xmmword_1C25ED370;
    v6[22] = xmmword_1C25ED340;
    v6[23] = xmmword_1C25ED380;
    v6[24] = xmmword_1C25ED360;
    v6[25] = xmmword_1C25ED390;
    v6[26] = xmmword_1C25ED340;
    v6[27] = xmmword_1C25ED3A0;
    v6[28] = xmmword_1C25ED3B0;
    v6[29] = xmmword_1C25ED3C0;
    v6[30] = xmmword_1C25ED260;
    v6[31] = xmmword_1C25ED3D0;
    v6[32] = xmmword_1C25ED3E0;
    v6[33] = xmmword_1C25ED3F0;
    v6[34] = xmmword_1C25ED260;
    v6[35] = xmmword_1C25ED400;
    v6[36] = xmmword_1C25ED410;
    v6[37] = xmmword_1C25ED420;
    v6[38] = xmmword_1C25ED430;
    v6[39] = xmmword_1C25ED440;
    v6[40] = xmmword_1C25ED450;
    v6[41] = xmmword_1C25ED460;
    v6[42] = xmmword_1C25ED470;
    v6[43] = xmmword_1C25ED480;
    v6[44] = xmmword_1C25ED450;
    v6[45] = xmmword_1C25ED490;
    v6[46] = xmmword_1C25ED4A0;
    v6[47] = xmmword_1C25ED4B0;
    v6[48] = xmmword_1C25ED4C0;
    v6[49] = xmmword_1C25ED4D0;
    v6[50] = xmmword_1C25ED4E0;
    v6[51] = xmmword_1C25ED4F0;
    v6[52] = xmmword_1C25ED4C0;
    v6[53] = xmmword_1C25ED4D0;
    v6[54] = xmmword_1C25ED4E0;
    v6[55] = xmmword_1C25ED500;
    v6[56] = xmmword_1C25ED4C0;
    v6[57] = xmmword_1C25ED4D0;
    v6[58] = xmmword_1C25ED4E0;
    v6[59] = xmmword_1C25ED510;
    v6[60] = xmmword_1C25ED4C0;
    v6[61] = xmmword_1C25ED4D0;
    v6[62] = xmmword_1C25ED4E0;
    v6[63] = xmmword_1C25ED520;
    v6[64] = xmmword_1C25ED530;
    v6[65] = xmmword_1C25ED540;
    v6[66] = xmmword_1C25ED550;
    v6[67] = xmmword_1C25ED560;
    v6[68] = xmmword_1C25ED570;
    v6[69] = xmmword_1C25ED580;
    v6[70] = xmmword_1C25ED590;
    v6[71] = xmmword_1C25ED5A0;
    v6[72] = xmmword_1C25ED570;
    v6[73] = xmmword_1C25ED580;
    v6[74] = xmmword_1C25ED590;
    v6[75] = xmmword_1C25ED5B0;
    v6[76] = xmmword_1C25ED5C0;
    v6[77] = xmmword_1C25ED5D0;
    v6[78] = xmmword_1C25ED5E0;
    v6[79] = xmmword_1C25ED5F0;
    v6[80] = xmmword_1C25ED600;
    v6[81] = xmmword_1C25ED610;
    v6[82] = xmmword_1C25ED620;
    v6[83] = xmmword_1C25ED630;
    v6[84] = xmmword_1C25ED640;
    v6[85] = xmmword_1C25ED650;
    v6[86] = xmmword_1C25ED660;
    v6[87] = xmmword_1C25ED670;
    v6[88] = xmmword_1C25ED640;
    v6[89] = xmmword_1C25ED680;
    v6[90] = xmmword_1C25ED690;
    v6[91] = xmmword_1C25ED6A0;
    v6[92] = xmmword_1C25ED6B0;
    v6[93] = xmmword_1C25ED6C0;
    v6[94] = xmmword_1C25ED6D0;
    v6[95] = xmmword_1C25ED6E0;
    v6[96] = xmmword_1C25ED6B0;
    v6[97] = xmmword_1C25ED6C0;
    v6[98] = xmmword_1C25ED6D0;
    v6[99] = xmmword_1C25ED6F0;
    v6[100] = xmmword_1C25ED6B0;
    v6[101] = xmmword_1C25ED6C0;
    v6[102] = xmmword_1C25ED6D0;
    v6[103] = xmmword_1C25ED700;
    v6[104] = xmmword_1C25ED6B0;
    v6[105] = xmmword_1C25ED6C0;
    v6[106] = xmmword_1C25ED6D0;
    v6[107] = xmmword_1C25ED710;
    v6[108] = xmmword_1C25ED6B0;
    v6[109] = xmmword_1C25ED6C0;
    v6[110] = xmmword_1C25ED6D0;
    v6[111] = xmmword_1C25ED720;
    v6[112] = xmmword_1C25ED730;
    v6[113] = xmmword_1C25ED740;
    v6[114] = xmmword_1C25ED750;
    v6[115] = xmmword_1C25ED760;
    v6[116] = xmmword_1C25ED730;
    v6[117] = xmmword_1C25ED740;
    v6[118] = xmmword_1C25ED750;
    v6[119] = xmmword_1C25ED770;
    v6[120] = xmmword_1C25ED730;
    v6[121] = xmmword_1C25ED740;
    v6[122] = xmmword_1C25ED750;
    v6[123] = xmmword_1C25ED780;
    v6[124] = xmmword_1C25ED730;
    v6[125] = xmmword_1C25ED740;
    v6[126] = xmmword_1C25ED750;
    v6[127] = xmmword_1C25ED790;
    v6[128] = xmmword_1C25ED730;
    v6[129] = xmmword_1C25ED740;
    v6[130] = xmmword_1C25ED750;
    v6[131] = xmmword_1C25ED7A0;
    v6[132] = xmmword_1C25ED7B0;
    v6[133] = xmmword_1C25ED7C0;
    v6[134] = xmmword_1C25ED7D0;
    v6[135] = xmmword_1C25ED7E0;
    v6[136] = xmmword_1C25ED7B0;
    v6[137] = xmmword_1C25ED7C0;
    v6[138] = xmmword_1C25ED7D0;
    v6[139] = xmmword_1C25ED7F0;
    v6[140] = xmmword_1C25ED7B0;
    v6[141] = xmmword_1C25ED7C0;
    v6[142] = xmmword_1C25ED7D0;
    v6[143] = xmmword_1C25ED800;
    v6[144] = xmmword_1C25ED7B0;
    v6[145] = xmmword_1C25ED7C0;
    v6[146] = xmmword_1C25ED7D0;
    v6[147] = xmmword_1C25ED810;
    v6[148] = xmmword_1C25ED7B0;
    v6[149] = xmmword_1C25ED7C0;
    v6[150] = xmmword_1C25ED7D0;
    v6[151] = xmmword_1C25ED820;
    v6[152] = xmmword_1C25ED830;
    v6[153] = xmmword_1C25ED840;
    v6[154] = xmmword_1C25ED850;
    v6[155] = xmmword_1C25ED860;
    v6[156] = xmmword_1C25ED830;
    v6[157] = xmmword_1C25ED840;
    v6[158] = xmmword_1C25ED850;
    v6[159] = xmmword_1C25ED870;
    v6[160] = xmmword_1C25ED830;
    v6[161] = xmmword_1C25ED840;
    v6[162] = xmmword_1C25ED850;
    v6[163] = xmmword_1C25ED880;
    v6[164] = xmmword_1C25ED830;
    v6[165] = xmmword_1C25ED840;
    v6[166] = xmmword_1C25ED850;
    v6[167] = xmmword_1C25ED890;
    v6[168] = xmmword_1C25ED830;
    v6[169] = xmmword_1C25ED840;
    v6[170] = xmmword_1C25ED850;
    v6[171] = xmmword_1C25ED8A0;
    v6[172] = xmmword_1C25ED8B0;
    v6[173] = xmmword_1C25ED8C0;
    v6[174] = xmmword_1C25ED8D0;
    v6[175] = xmmword_1C25ED8E0;
    v6[176] = xmmword_1C25ED8B0;
    v6[177] = xmmword_1C25ED8C0;
    v6[178] = xmmword_1C25ED8D0;
    v6[179] = xmmword_1C25ED8F0;
    v6[180] = xmmword_1C25ED8B0;
    v6[181] = xmmword_1C25ED8C0;
    v6[182] = xmmword_1C25ED8D0;
    v6[183] = xmmword_1C25ED900;
    v6[184] = xmmword_1C25ED8B0;
    v6[185] = xmmword_1C25ED8C0;
    v6[186] = xmmword_1C25ED8D0;
    v6[187] = xmmword_1C25ED910;
    v6[188] = xmmword_1C25ED920;
    v6[189] = xmmword_1C25ED930;
    v6[190] = xmmword_1C25ED590;
    v6[191] = xmmword_1C25ED940;
    v6[192] = xmmword_1C25ED950;
    v6[193] = xmmword_1C25ED960;
    v6[194] = xmmword_1C25ED970;
    v6[195] = xmmword_1C25ED980;
    v6[196] = xmmword_1C25ED950;
    v6[197] = xmmword_1C25ED960;
    v6[198] = xmmword_1C25ED970;
    v6[199] = xmmword_1C25ED990;
    v6[200] = xmmword_1C25ED950;
    v6[201] = xmmword_1C25ED960;
    v6[202] = xmmword_1C25ED970;
    v6[203] = xmmword_1C25ED9A0;
    v6[204] = xmmword_1C25ED9B0;
    v6[205] = xmmword_1C25ED9C0;
    v6[206] = xmmword_1C25ED9D0;
    v6[207] = xmmword_1C25ED9E0;
    v6[208] = xmmword_1C25ED9B0;
    v6[209] = xmmword_1C25ED9C0;
    v6[210] = xmmword_1C25ED9D0;
    v6[211] = xmmword_1C25ED9F0;
    v6[212] = xmmword_1C25ED9B0;
    v6[213] = xmmword_1C25ED9C0;
    v6[214] = xmmword_1C25ED9D0;
    v6[215] = xmmword_1C25EDA00;
    v6[216] = xmmword_1C25EDA10;
    v6[217] = xmmword_1C25EDA20;
    v6[218] = xmmword_1C25ED9D0;
    v6[219] = xmmword_1C25EDA30;
    v6[220] = xmmword_1C25EDA10;
    v6[221] = xmmword_1C25EDA20;
    v6[222] = xmmword_1C25ED9D0;
    v6[223] = xmmword_1C25EDA30;
    v6[224] = xmmword_1C25EDA10;
    v6[225] = xmmword_1C25EDA20;
    v6[226] = xmmword_1C25ED9D0;
    v6[227] = xmmword_1C25EDA30;
    v6[228] = xmmword_1C25EDA10;
    v6[229] = xmmword_1C25EDA20;
    v6[230] = xmmword_1C25ED9D0;
    v6[231] = xmmword_1C25EDA30;
    v6[232] = xmmword_1C25EDA40;
    v6[233] = xmmword_1C25EDA50;
    v6[234] = xmmword_1C25ED9D0;
    v6[235] = xmmword_1C25EDA60;
    v6[236] = xmmword_1C25EDA10;
    v6[237] = xmmword_1C25EDA20;
    v6[238] = xmmword_1C25ED9D0;
    v6[239] = xmmword_1C25EDA70;
    v6[240] = xmmword_1C25EDA10;
    v6[241] = xmmword_1C25EDA20;
    v6[242] = xmmword_1C25ED9D0;
    v6[243] = xmmword_1C25EDA70;
    v6[244] = xmmword_1C25EDA10;
    v6[245] = xmmword_1C25EDA20;
    v6[246] = xmmword_1C25ED9D0;
    v6[247] = xmmword_1C25EDA70;
    v6[248] = xmmword_1C25EDA10;
    v6[249] = xmmword_1C25EDA20;
    v6[250] = xmmword_1C25ED9D0;
    v6[251] = xmmword_1C25EDA70;
    v6[252] = xmmword_1C25EDA80;
    v6[253] = xmmword_1C25EDA90;
    v6[254] = xmmword_1C25EDAA0;
    v6[255] = xmmword_1C25EDAB0;
    v6[256] = xmmword_1C25EDAC0;
    v6[257] = xmmword_1C25EDAD0;
    v6[258] = xmmword_1C25EDAE0;
    v6[259] = xmmword_1C25EDAF0;
    v6[260] = xmmword_1C25EDB00;
    v6[261] = xmmword_1C25EDB10;
    v6[262] = xmmword_1C25EDB20;
    v6[263] = xmmword_1C25EDB30;
    v6[264] = xmmword_1C25EDB00;
    v6[265] = xmmword_1C25EDB40;
    v6[266] = xmmword_1C25EDB10;
    v6[267] = xmmword_1C25EDB50;
    v6[268] = xmmword_1C25EDB60;
    v6[269] = xmmword_1C25EDB70;
    v6[270] = xmmword_1C25EDB80;
    v6[271] = xmmword_1C25EDB90;
    v6[272] = xmmword_1C25EDB60;
    v6[273] = xmmword_1C25EDB70;
    v6[274] = xmmword_1C25EDB80;
    v6[275] = xmmword_1C25EDBA0;
    v6[276] = xmmword_1C25EDB60;
    v6[277] = xmmword_1C25EDB70;
    v6[278] = xmmword_1C25EDB80;
    v6[279] = xmmword_1C25EDBB0;
    v6[280] = xmmword_1C25EDB60;
    v6[281] = xmmword_1C25EDB70;
    v6[282] = xmmword_1C25EDB80;
    v6[283] = xmmword_1C25EDBC0;
    v6[284] = xmmword_1C25EDB60;
    v6[285] = xmmword_1C25EDB70;
    v6[286] = xmmword_1C25EDB80;
    v6[287] = xmmword_1C25EDBD0;
    v6[288] = xmmword_1C25EDBE0;
    v6[289] = xmmword_1C25EDBF0;
    v6[290] = xmmword_1C25EDC00;
    v6[291] = xmmword_1C25EDC10;
    v6[292] = xmmword_1C25EDBE0;
    v6[293] = xmmword_1C25EDBF0;
    v6[294] = xmmword_1C25EDC00;
    v6[295] = xmmword_1C25EDC20;
    v6[296] = xmmword_1C25EDBE0;
    v6[297] = xmmword_1C25EDBF0;
    v6[298] = xmmword_1C25EDC00;
    v6[299] = xmmword_1C25EDC30;
    v6[300] = xmmword_1C25EDBE0;
    v6[301] = xmmword_1C25EDBF0;
    v6[302] = xmmword_1C25EDC00;
    v6[303] = xmmword_1C25EDC40;
    v6[304] = xmmword_1C25EDBE0;
    v6[305] = xmmword_1C25EDBF0;
    v6[306] = xmmword_1C25EDC00;
    v6[307] = xmmword_1C25EDC50;
    v6[308] = xmmword_1C25EDC60;
    v6[309] = xmmword_1C25EDC70;
    v6[310] = xmmword_1C25EDC80;
    v6[311] = xmmword_1C25EDC90;
    v6[312] = xmmword_1C25EDC60;
    v6[313] = xmmword_1C25EDC70;
    v6[314] = xmmword_1C25EDC80;
    v6[315] = xmmword_1C25EDCA0;
    v6[316] = xmmword_1C25EDC60;
    v6[317] = xmmword_1C25EDC70;
    v6[318] = xmmword_1C25EDC80;
    v6[319] = xmmword_1C25EDCB0;
    v6[320] = xmmword_1C25EDC60;
    v6[321] = xmmword_1C25EDC70;
    v6[322] = xmmword_1C25EDC80;
    v6[323] = xmmword_1C25EDCC0;
    v6[324] = xmmword_1C25EDC60;
    v6[325] = xmmword_1C25EDC70;
    v6[326] = xmmword_1C25EDC80;
    v6[327] = xmmword_1C25EDCD0;
    v6[328] = xmmword_1C25EDCE0;
    v6[329] = xmmword_1C25EDCF0;
    v6[330] = xmmword_1C25EDD00;
    v6[331] = xmmword_1C25EDD10;
    v6[332] = xmmword_1C25EDCE0;
    v6[333] = xmmword_1C25EDCF0;
    v6[334] = xmmword_1C25EDD00;
    v6[335] = xmmword_1C25EDD20;
    v6[336] = xmmword_1C25EDCE0;
    v6[337] = xmmword_1C25EDCF0;
    v6[338] = xmmword_1C25EDD00;
    v6[339] = xmmword_1C25EDD30;
    v6[340] = xmmword_1C25EDCE0;
    v6[341] = xmmword_1C25EDCF0;
    v6[342] = xmmword_1C25EDD00;
    v6[343] = xmmword_1C25EDD40;
    v6[344] = xmmword_1C25EDCE0;
    v6[345] = xmmword_1C25EDCF0;
    v6[346] = xmmword_1C25EDD00;
    v6[347] = xmmword_1C25EDD50;
    v6[348] = xmmword_1C25EDD60;
    v6[349] = xmmword_1C25EDD70;
    v6[350] = xmmword_1C25EDD80;
    v6[351] = xmmword_1C25EDD90;
    v6[352] = xmmword_1C25EDD60;
    v6[353] = xmmword_1C25EDD70;
    v6[354] = xmmword_1C25EDD80;
    v6[355] = xmmword_1C25EDDA0;
    v6[356] = xmmword_1C25EDD60;
    v6[357] = xmmword_1C25EDD70;
    v6[358] = xmmword_1C25EDD80;
    v6[359] = xmmword_1C25EDDB0;
    v6[360] = xmmword_1C25EDD60;
    v6[361] = xmmword_1C25EDD70;
    v6[362] = xmmword_1C25EDD80;
    v6[363] = xmmword_1C25EDDC0;
    ARNeutralBodySkeleton3DModelTransforms::dataVector = 0;
    unk_1EBF42BC0 = 0;
    qword_1EBF42BC8 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&ARNeutralBodySkeleton3DModelTransforms::dataVector, v6, v7, 0x5BuLL);
    __cxa_atexit(std::vector<simd_float4x4>::~vector[abi:ne200100], &ARNeutralBodySkeleton3DModelTransforms::dataVector, &dword_1C241C000);
  }

  result = ARNeutralBodySkeleton3DModelTransforms::dataVector;
  if (unk_1EBF42BC0 - ARNeutralBodySkeleton3DModelTransforms::dataVector != 5824)
  {
    ARNeutralBodySkeleton3DModelTransforms_cold_1();
  }

  return result;
}

uint64_t std::vector<simd_float4x4>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t ARNeutralBodySkeleton3DLocalTransforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  v920[1] = *MEMORY[0x1E69E9840];
  {
    __asm { FMOV            V0.4S, #1.0 }

    v11 = ARMakeSRT(_Q0);
    v466 = v11.n128_u32[2];
    v465 = v11.n128_u64[0];
    v467 = v12;
    v469 = v13;
    v468 = v14;
    __asm { FMOV            V0.4S, #1.0 }

    v16 = ARMakeSRT(_Q0);
    v471 = v16.n128_u32[2];
    v470 = v16.n128_u64[0];
    v472 = v17;
    v474 = v18;
    v473 = v19;
    __asm { FMOV            V0.4S, #1.0 }

    v21 = ARMakeSRT(_Q0);
    v476 = v21.n128_u32[2];
    v475 = v21.n128_u64[0];
    v477 = v22;
    v479 = v23;
    v478 = v24;
    __asm { FMOV            V0.4S, #1.0 }

    v26 = ARMakeSRT(_Q0);
    v481 = v26.n128_u32[2];
    v480 = v26.n128_u64[0];
    v482 = v27;
    v484 = v28;
    v483 = v29;
    __asm { FMOV            V0.4S, #1.0 }

    v31 = ARMakeSRT(_Q0);
    v486 = v31.n128_u32[2];
    v485 = v31.n128_u64[0];
    v487 = v32;
    v489 = v33;
    v488 = v34;
    __asm { FMOV            V0.4S, #1.0 }

    v36 = ARMakeSRT(_Q0);
    v491 = v36.n128_u32[2];
    v490 = v36.n128_u64[0];
    v492 = v37;
    v494 = v38;
    v493 = v39;
    __asm { FMOV            V0.4S, #1.0 }

    v41 = ARMakeSRT(_Q0);
    v496 = v41.n128_u32[2];
    v495 = v41.n128_u64[0];
    v497 = v42;
    v499 = v43;
    v498 = v44;
    __asm { FMOV            V0.4S, #1.0 }

    v46 = ARMakeSRT(_Q0);
    v501 = v46.n128_u32[2];
    v500 = v46.n128_u64[0];
    v502 = v47;
    v504 = v48;
    v503 = v49;
    __asm { FMOV            V0.4S, #1.0 }

    v51 = ARMakeSRT(_Q0);
    v506 = v51.n128_u32[2];
    v505 = v51.n128_u64[0];
    v507 = v52;
    v509 = v53;
    v508 = v54;
    __asm { FMOV            V0.4S, #1.0 }

    v56 = ARMakeSRT(_Q0);
    v511 = v56.n128_u32[2];
    v510 = v56.n128_u64[0];
    v512 = v57;
    v514 = v58;
    v513 = v59;
    __asm { FMOV            V0.4S, #1.0 }

    v61 = ARMakeSRT(_Q0);
    v516 = v61.n128_u32[2];
    v515 = v61.n128_u64[0];
    v517 = v62;
    v519 = v63;
    v518 = v64;
    __asm { FMOV            V0.4S, #1.0 }

    v66 = ARMakeSRT(_Q0);
    v521 = v66.n128_u32[2];
    v520 = v66.n128_u64[0];
    v522 = v67;
    v524 = v68;
    v523 = v69;
    __asm { FMOV            V0.4S, #1.0 }

    v71 = ARMakeSRT(_Q0);
    v526 = v71.n128_u32[2];
    v525 = v71.n128_u64[0];
    v527 = v72;
    v529 = v73;
    v528 = v74;
    __asm { FMOV            V0.4S, #1.0 }

    v76 = ARMakeSRT(_Q0);
    v531 = v76.n128_u32[2];
    v530 = v76.n128_u64[0];
    v532 = v77;
    v534 = v78;
    v533 = v79;
    __asm { FMOV            V0.4S, #1.0 }

    v81 = ARMakeSRT(_Q0);
    v536 = v81.n128_u32[2];
    v535 = v81.n128_u64[0];
    v537 = v82;
    v539 = v83;
    v538 = v84;
    __asm { FMOV            V0.4S, #1.0 }

    v86 = ARMakeSRT(_Q0);
    v541 = v86.n128_u32[2];
    v540 = v86.n128_u64[0];
    v542 = v87;
    v544 = v88;
    v543 = v89;
    __asm { FMOV            V0.4S, #1.0 }

    v91 = ARMakeSRT(_Q0);
    v546 = v91.n128_u32[2];
    v545 = v91.n128_u64[0];
    v547 = v92;
    v549 = v93;
    v548 = v94;
    __asm { FMOV            V0.4S, #1.0 }

    v96 = ARMakeSRT(_Q0);
    v551 = v96.n128_u32[2];
    v550 = v96.n128_u64[0];
    v552 = v97;
    v554 = v98;
    v553 = v99;
    __asm { FMOV            V0.4S, #1.0 }

    v101 = ARMakeSRT(_Q0);
    v556 = v101.n128_u32[2];
    v555 = v101.n128_u64[0];
    v557 = v102;
    v559 = v103;
    v558 = v104;
    __asm { FMOV            V0.4S, #1.0 }

    v106 = ARMakeSRT(_Q0);
    v561 = v106.n128_u32[2];
    v560 = v106.n128_u64[0];
    v562 = v107;
    v564 = v108;
    v563 = v109;
    __asm { FMOV            V0.4S, #1.0 }

    v111 = ARMakeSRT(_Q0);
    v566 = v111.n128_u32[2];
    v565 = v111.n128_u64[0];
    v567 = v112;
    v569 = v113;
    v568 = v114;
    __asm { FMOV            V0.4S, #1.0 }

    v116 = ARMakeSRT(_Q0);
    v571 = v116.n128_u32[2];
    v570 = v116.n128_u64[0];
    v572 = v117;
    v574 = v118;
    v573 = v119;
    __asm { FMOV            V0.4S, #1.0 }

    v121 = ARMakeSRT(_Q0);
    v576 = v121.n128_u32[2];
    v575 = v121.n128_u64[0];
    v577 = v122;
    v579 = v123;
    v578 = v124;
    __asm { FMOV            V0.4S, #1.0 }

    v126 = ARMakeSRT(_Q0);
    v581 = v126.n128_u32[2];
    v580 = v126.n128_u64[0];
    v582 = v127;
    v584 = v128;
    v583 = v129;
    __asm { FMOV            V0.4S, #1.0 }

    v131 = ARMakeSRT(_Q0);
    v586 = v131.n128_u32[2];
    v585 = v131.n128_u64[0];
    v587 = v132;
    v589 = v133;
    v588 = v134;
    __asm { FMOV            V0.4S, #1.0 }

    v136 = ARMakeSRT(_Q0);
    v591 = v136.n128_u32[2];
    v590 = v136.n128_u64[0];
    v592 = v137;
    v594 = v138;
    v593 = v139;
    __asm { FMOV            V0.4S, #1.0 }

    v141 = ARMakeSRT(_Q0);
    v596 = v141.n128_u32[2];
    v595 = v141.n128_u64[0];
    v597 = v142;
    v599 = v143;
    v598 = v144;
    __asm { FMOV            V0.4S, #1.0 }

    v146 = ARMakeSRT(_Q0);
    v601 = v146.n128_u32[2];
    v600 = v146.n128_u64[0];
    v602 = v147;
    v604 = v148;
    v603 = v149;
    __asm { FMOV            V0.4S, #1.0 }

    v151 = ARMakeSRT(_Q0);
    v606 = v151.n128_u32[2];
    v605 = v151.n128_u64[0];
    v607 = v152;
    v609 = v153;
    v608 = v154;
    __asm { FMOV            V0.4S, #1.0 }

    v156 = ARMakeSRT(_Q0);
    v611 = v156.n128_u32[2];
    v610 = v156.n128_u64[0];
    v612 = v157;
    v614 = v158;
    v613 = v159;
    __asm { FMOV            V0.4S, #1.0 }

    v161 = ARMakeSRT(_Q0);
    v616 = v161.n128_u32[2];
    v615 = v161.n128_u64[0];
    v617 = v162;
    v619 = v163;
    v618 = v164;
    __asm { FMOV            V0.4S, #1.0 }

    v166 = ARMakeSRT(_Q0);
    v621 = v166.n128_u32[2];
    v620 = v166.n128_u64[0];
    v622 = v167;
    v624 = v168;
    v623 = v169;
    __asm { FMOV            V0.4S, #1.0 }

    v171 = ARMakeSRT(_Q0);
    v626 = v171.n128_u32[2];
    v625 = v171.n128_u64[0];
    v627 = v172;
    v629 = v173;
    v628 = v174;
    __asm { FMOV            V0.4S, #1.0 }

    v176 = ARMakeSRT(_Q0);
    v631 = v176.n128_u32[2];
    v630 = v176.n128_u64[0];
    v632 = v177;
    v634 = v178;
    v633 = v179;
    __asm { FMOV            V0.4S, #1.0 }

    v181 = ARMakeSRT(_Q0);
    v636 = v181.n128_u32[2];
    v635 = v181.n128_u64[0];
    v637 = v182;
    v639 = v183;
    v638 = v184;
    __asm { FMOV            V0.4S, #1.0 }

    v186 = ARMakeSRT(_Q0);
    v641 = v186.n128_u32[2];
    v640 = v186.n128_u64[0];
    v642 = v187;
    v644 = v188;
    v643 = v189;
    __asm { FMOV            V0.4S, #1.0 }

    v191 = ARMakeSRT(_Q0);
    v646 = v191.n128_u32[2];
    v645 = v191.n128_u64[0];
    v647 = v192;
    v649 = v193;
    v648 = v194;
    __asm { FMOV            V0.4S, #1.0 }

    v196 = ARMakeSRT(_Q0);
    v651 = v196.n128_u32[2];
    v650 = v196.n128_u64[0];
    v652 = v197;
    v654 = v198;
    v653 = v199;
    __asm { FMOV            V0.4S, #1.0 }

    v201 = ARMakeSRT(_Q0);
    v656 = v201.n128_u32[2];
    v655 = v201.n128_u64[0];
    v657 = v202;
    v659 = v203;
    v658 = v204;
    __asm { FMOV            V0.4S, #1.0 }

    v206 = ARMakeSRT(_Q0);
    v661 = v206.n128_u32[2];
    v660 = v206.n128_u64[0];
    v662 = v207;
    v664 = v208;
    v663 = v209;
    __asm { FMOV            V0.4S, #1.0 }

    v211 = ARMakeSRT(_Q0);
    v666 = v211.n128_u32[2];
    v665 = v211.n128_u64[0];
    v667 = v212;
    v669 = v213;
    v668 = v214;
    __asm { FMOV            V0.4S, #1.0 }

    v216 = ARMakeSRT(_Q0);
    v671 = v216.n128_u32[2];
    v670 = v216.n128_u64[0];
    v672 = v217;
    v674 = v218;
    v673 = v219;
    __asm { FMOV            V0.4S, #1.0 }

    v221 = ARMakeSRT(_Q0);
    v676 = v221.n128_u32[2];
    v675 = v221.n128_u64[0];
    v677 = v222;
    v679 = v223;
    v678 = v224;
    __asm { FMOV            V0.4S, #1.0 }

    v226 = ARMakeSRT(_Q0);
    v681 = v226.n128_u32[2];
    v680 = v226.n128_u64[0];
    v682 = v227;
    v684 = v228;
    v683 = v229;
    __asm { FMOV            V0.4S, #1.0 }

    v231 = ARMakeSRT(_Q0);
    v686 = v231.n128_u32[2];
    v685 = v231.n128_u64[0];
    v687 = v232;
    v689 = v233;
    v688 = v234;
    __asm { FMOV            V0.4S, #1.0 }

    v236 = ARMakeSRT(_Q0);
    v691 = v236.n128_u32[2];
    v690 = v236.n128_u64[0];
    v692 = v237;
    v694 = v238;
    v693 = v239;
    __asm { FMOV            V0.4S, #1.0 }

    v241 = ARMakeSRT(_Q0);
    v696 = v241.n128_u32[2];
    v695 = v241.n128_u64[0];
    v697 = v242;
    v699 = v243;
    v698 = v244;
    __asm { FMOV            V0.4S, #1.0 }

    v246 = ARMakeSRT(_Q0);
    v701 = v246.n128_u32[2];
    v700 = v246.n128_u64[0];
    v702 = v247;
    v704 = v248;
    v703 = v249;
    __asm { FMOV            V0.4S, #1.0 }

    v251 = ARMakeSRT(_Q0);
    v706 = v251.n128_u32[2];
    v705 = v251.n128_u64[0];
    v707 = v252;
    v709 = v253;
    v708 = v254;
    __asm { FMOV            V0.4S, #1.0 }

    v256 = ARMakeSRT(_Q0);
    v711 = v256.n128_u32[2];
    v710 = v256.n128_u64[0];
    v712 = v257;
    v714 = v258;
    v713 = v259;
    __asm { FMOV            V0.4S, #1.0 }

    v261 = ARMakeSRT(_Q0);
    v716 = v261.n128_u32[2];
    v715 = v261.n128_u64[0];
    v717 = v262;
    v719 = v263;
    v718 = v264;
    __asm { FMOV            V0.4S, #1.0 }

    v266 = ARMakeSRT(_Q0);
    v721 = v266.n128_u32[2];
    v720 = v266.n128_u64[0];
    v722 = v267;
    v724 = v268;
    v723 = v269;
    __asm { FMOV            V0.4S, #1.0 }

    v271 = ARMakeSRT(_Q0);
    v726 = v271.n128_u32[2];
    v725 = v271.n128_u64[0];
    v727 = v272;
    v729 = v273;
    v728 = v274;
    __asm { FMOV            V0.4S, #1.0 }

    v276 = ARMakeSRT(_Q0);
    v731 = v276.n128_u32[2];
    v730 = v276.n128_u64[0];
    v732 = v277;
    v734 = v278;
    v733 = v279;
    __asm { FMOV            V0.4S, #1.0 }

    v281 = ARMakeSRT(_Q0);
    v736 = v281.n128_u32[2];
    v735 = v281.n128_u64[0];
    v737 = v282;
    v739 = v283;
    v738 = v284;
    __asm { FMOV            V0.4S, #1.0 }

    v286 = ARMakeSRT(_Q0);
    v741 = v286.n128_u32[2];
    v740 = v286.n128_u64[0];
    v742 = v287;
    v744 = v288;
    v743 = v289;
    __asm { FMOV            V0.4S, #1.0 }

    v291 = ARMakeSRT(_Q0);
    v746 = v291.n128_u32[2];
    v745 = v291.n128_u64[0];
    v747 = v292;
    v749 = v293;
    v748 = v294;
    __asm { FMOV            V0.4S, #1.0 }

    v296 = ARMakeSRT(_Q0);
    v751 = v296.n128_u32[2];
    v750 = v296.n128_u64[0];
    v752 = v297;
    v754 = v298;
    v753 = v299;
    __asm { FMOV            V0.4S, #1.0 }

    v301 = ARMakeSRT(_Q0);
    v756 = v301.n128_u32[2];
    v755 = v301.n128_u64[0];
    v757 = v302;
    v759 = v303;
    v758 = v304;
    __asm { FMOV            V0.4S, #1.0 }

    v306 = ARMakeSRT(_Q0);
    v761 = v306.n128_u32[2];
    v760 = v306.n128_u64[0];
    v762 = v307;
    v764 = v308;
    v763 = v309;
    __asm { FMOV            V0.4S, #1.0 }

    v311 = ARMakeSRT(_Q0);
    v766 = v311.n128_u32[2];
    v765 = v311.n128_u64[0];
    v767 = v312;
    v769 = v313;
    v768 = v314;
    __asm { FMOV            V0.4S, #1.0 }

    v316 = ARMakeSRT(_Q0);
    v771 = v316.n128_u32[2];
    v770 = v316.n128_u64[0];
    v772 = v317;
    v774 = v318;
    v773 = v319;
    __asm { FMOV            V0.4S, #1.0 }

    v321 = ARMakeSRT(_Q0);
    v776 = v321.n128_u32[2];
    v775 = v321.n128_u64[0];
    v777 = v322;
    v779 = v323;
    v778 = v324;
    __asm { FMOV            V0.4S, #1.0 }

    v326 = ARMakeSRT(_Q0);
    v781 = v326.n128_u32[2];
    v780 = v326.n128_u64[0];
    v782 = v327;
    v784 = v328;
    v783 = v329;
    __asm { FMOV            V0.4S, #1.0 }

    v331 = ARMakeSRT(_Q0);
    v786 = v331.n128_u32[2];
    v785 = v331.n128_u64[0];
    v787 = v332;
    v789 = v333;
    v788 = v334;
    __asm { FMOV            V0.4S, #1.0 }

    v336 = ARMakeSRT(_Q0);
    v791 = v336.n128_u32[2];
    v790 = v336.n128_u64[0];
    v792 = v337;
    v794 = v338;
    v793 = v339;
    __asm { FMOV            V0.4S, #1.0 }

    v341 = ARMakeSRT(_Q0);
    v796 = v341.n128_u32[2];
    v795 = v341.n128_u64[0];
    v797 = v342;
    v799 = v343;
    v798 = v344;
    __asm { FMOV            V0.4S, #1.0 }

    v346 = ARMakeSRT(_Q0);
    v801 = v346.n128_u32[2];
    v800 = v346.n128_u64[0];
    v802 = v347;
    v804 = v348;
    v803 = v349;
    __asm { FMOV            V0.4S, #1.0 }

    v351 = ARMakeSRT(_Q0);
    v806 = v351.n128_u32[2];
    v805 = v351.n128_u64[0];
    v807 = v352;
    v809 = v353;
    v808 = v354;
    __asm { FMOV            V0.4S, #1.0 }

    v356 = ARMakeSRT(_Q0);
    v811 = v356.n128_u32[2];
    v810 = v356.n128_u64[0];
    v812 = v357;
    v814 = v358;
    v813 = v359;
    __asm { FMOV            V0.4S, #1.0 }

    v361 = ARMakeSRT(_Q0);
    v816 = v361.n128_u32[2];
    v815 = v361.n128_u64[0];
    v817 = v362;
    v819 = v363;
    v818 = v364;
    __asm { FMOV            V0.4S, #1.0 }

    v366 = ARMakeSRT(_Q0);
    v821 = v366.n128_u32[2];
    v820 = v366.n128_u64[0];
    v822 = v367;
    v824 = v368;
    v823 = v369;
    __asm { FMOV            V0.4S, #1.0 }

    v371 = ARMakeSRT(_Q0);
    v826 = v371.n128_u32[2];
    v825 = v371.n128_u64[0];
    v827 = v372;
    v829 = v373;
    v828 = v374;
    __asm { FMOV            V0.4S, #1.0 }

    v376 = ARMakeSRT(_Q0);
    v831 = v376.n128_u32[2];
    v830 = v376.n128_u64[0];
    v832 = v377;
    v834 = v378;
    v833 = v379;
    __asm { FMOV            V0.4S, #1.0 }

    v381 = ARMakeSRT(_Q0);
    v836 = v381.n128_u32[2];
    v835 = v381.n128_u64[0];
    v837 = v382;
    v839 = v383;
    v838 = v384;
    __asm { FMOV            V0.4S, #1.0 }

    v386 = ARMakeSRT(_Q0);
    v841 = v386.n128_u32[2];
    v840 = v386.n128_u64[0];
    v842 = v387;
    v844 = v388;
    v843 = v389;
    __asm { FMOV            V0.4S, #1.0 }

    v391 = ARMakeSRT(_Q0);
    v846 = v391.n128_u32[2];
    v845 = v391.n128_u64[0];
    v847 = v392;
    v849 = v393;
    v848 = v394;
    __asm { FMOV            V0.4S, #1.0 }

    v396 = ARMakeSRT(_Q0);
    v851 = v396.n128_u32[2];
    v850 = v396.n128_u64[0];
    v852 = v397;
    v854 = v398;
    v853 = v399;
    __asm { FMOV            V0.4S, #1.0 }

    v401 = ARMakeSRT(_Q0);
    v856 = v401.n128_u32[2];
    v855 = v401.n128_u64[0];
    v857 = v402;
    v859 = v403;
    v858 = v404;
    __asm { FMOV            V0.4S, #1.0 }

    v406 = ARMakeSRT(_Q0);
    v861 = v406.n128_u32[2];
    v860 = v406.n128_u64[0];
    v862 = v407;
    v864 = v408;
    v863 = v409;
    __asm { FMOV            V0.4S, #1.0 }

    v411 = ARMakeSRT(_Q0);
    v866 = v411.n128_u32[2];
    v865 = v411.n128_u64[0];
    v867 = v412;
    v869 = v413;
    v868 = v414;
    __asm { FMOV            V0.4S, #1.0 }

    v416 = ARMakeSRT(_Q0);
    v871 = v416.n128_u32[2];
    v870 = v416.n128_u64[0];
    v872 = v417;
    v874 = v418;
    v873 = v419;
    __asm { FMOV            V0.4S, #1.0 }

    v421 = ARMakeSRT(_Q0);
    v876 = v421.n128_u32[2];
    v875 = v421.n128_u64[0];
    v877 = v422;
    v879 = v423;
    v878 = v424;
    __asm { FMOV            V0.4S, #1.0 }

    v426 = ARMakeSRT(_Q0);
    v881 = v426.n128_u32[2];
    v880 = v426.n128_u64[0];
    v882 = v427;
    v884 = v428;
    v883 = v429;
    __asm { FMOV            V0.4S, #1.0 }

    v431 = ARMakeSRT(_Q0);
    v886 = v431.n128_u32[2];
    v885 = v431.n128_u64[0];
    v887 = v432;
    v889 = v433;
    v888 = v434;
    __asm { FMOV            V0.4S, #1.0 }

    v436 = ARMakeSRT(_Q0);
    v891 = v436.n128_u32[2];
    v890 = v436.n128_u64[0];
    v892 = v437;
    v894 = v438;
    v893 = v439;
    __asm { FMOV            V0.4S, #1.0 }

    v441 = ARMakeSRT(_Q0);
    v896 = v441.n128_u32[2];
    v895 = v441.n128_u64[0];
    v897 = v442;
    v899 = v443;
    v898 = v444;
    __asm { FMOV            V0.4S, #1.0 }

    v446 = ARMakeSRT(_Q0);
    v901 = v446.n128_u32[2];
    v900 = v446.n128_u64[0];
    v902 = v447;
    v904 = v448;
    v903 = v449;
    __asm { FMOV            V0.4S, #1.0 }

    v451 = ARMakeSRT(_Q0);
    v906 = v451.n128_u32[2];
    v905 = v451.n128_u64[0];
    v907 = v452;
    v909 = v453;
    v908 = v454;
    __asm { FMOV            V0.4S, #1.0 }

    v456 = ARMakeSRT(_Q0);
    v911 = v456.n128_u32[2];
    v910 = v456.n128_u64[0];
    v912 = v457;
    v914 = v458;
    v913 = v459;
    __asm { FMOV            V0.4S, #1.0 }

    v461 = ARMakeSRT(_Q0);
    v916 = v461.n128_u32[2];
    v915 = v461.n128_u64[0];
    v917 = v462;
    v919 = v463;
    v918 = v464;
    qword_1EBF42BE0 = 0;
    unk_1EBF42BE8 = 0;
    ARNeutralBodySkeleton3DLocalTransforms::dataVector = 0;
    std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&ARNeutralBodySkeleton3DLocalTransforms::dataVector, &v465, v920, 0x5BuLL);
    __cxa_atexit(std::vector<ARSRT>::~vector[abi:ne200100], &ARNeutralBodySkeleton3DLocalTransforms::dataVector, &dword_1C241C000);
  }

  result = ARNeutralBodySkeleton3DLocalTransforms::dataVector;
  if (qword_1EBF42BE0 - ARNeutralBodySkeleton3DLocalTransforms::dataVector != 4368)
  {
    ARNeutralBodySkeleton3DLocalTransforms_cold_1();
  }

  return result;
}

uint64_t std::vector<ARSRT>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C255D968(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<char const*>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<char const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float arkit::btr::EstimateScaleReprojectionLinear(uint64_t a1)
{
  v1 = *a1;
  v2 = 0xEFBEFBEFBEFBEFBFLL * ((*(a1 + 8) - *a1) >> 3);
  result = -1.0;
  if (v2 >= 2)
  {
    v16[0] = 10;
    v16[1] = 0x3CA3D70A3A83126FLL;
    v16[2] = 5;
    v18 = 0x3FF9999A3D4CCCCDLL;
    v19 = 1;
    v17 = xmmword_1C25EFF50;
    v7 = 0;
    v8 = xmmword_1C25EFF64;
    v9 = *algn_1C25EFF74;
    v10 = xmmword_1C25EFF84;
    v11 = unk_1C25EFF94;
    v12 = xmmword_1C25EFF64;
    v13 = *algn_1C25EFF74;
    v14 = xmmword_1C25EFF84;
    v15 = unk_1C25EFF94;
    v5 = v2 - 1;
    v6 = 504;
    do
    {
      v6 += 504;
      --v5;
    }

    while (v5);
    return *&v7 / *(&v7 + 1);
  }

  return result;
}

__n128 arkit::btr::anonymous namespace::LinearScaleEstimatorOnline::Reset(arkit::btr::_anonymous_namespace_::LinearScaleEstimatorOnline *this, const RegistrationData *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  *this = 0;
  p_cam_from_vio = &a2->cam_from_vio;
  v24 = xmmword_1C25EFF64;
  v25 = *algn_1C25EFF74;
  v26 = xmmword_1C25EFF84;
  v27 = unk_1C25EFF94;
  *&v32[0] = &a2->cam_from_vio;
  *(&v32[0] + 1) = 4;
  v34[0] = v32;
  v30 = &v24;
  v31 = 4;
  cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(&v30, v34);
  v29[0] = &v24;
  v29[1] = 4;
  v34[0] = v29;
  v28[0] = &a2->cam_from_vio.m_data[12];
  v28[1] = 0xC00000004;
  v30 = v34;
  v31 = v28;
  if (p_cam_from_vio == &v24)
  {
    DWORD2(v32[0]) = 0;
    *&v32[0] = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(v32, &v30);
    *&v27 = *&v32[0];
    DWORD2(v27) = DWORD2(v32[0]);
  }

  else
  {
    v6 = 0;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v7 = &v24;
    v8 = 0x100000000;
    do
    {
      *(v32 + v6) = -*v7;
      v9 = HIDWORD(v8);
      v10 = v8 < 2;
      if (v8 < 2)
      {
        v9 = 0;
      }

      v11 = &v7[v9];
      v12 = (v8 + 1);
      v13 = v8 & 0xFFFFFFFF00000000;
      v7 = v11 + 1;
      if (!v10)
      {
        v12 = 0;
      }

      v8 = v12 | v13;
      v6 += 4;
    }

    while (v6 != 36);
    v14 = 0;
    v15 = v32;
    do
    {
      v16 = 0;
      v17 = 0.0;
      v18 = &a2->cam_from_vio.m_data[12];
      do
      {
        v19 = *v18++;
        v17 = v17 + (*(v15 + v16) * v19);
        v16 += 12;
      }

      while (v16 != 36);
      *(&v28[-2] + v14++) = v17;
      v15 = (v15 + 4);
    }

    while (v14 != 3);
  }

  v20 = v25;
  *(this + 8) = v24;
  *(this + 24) = v20;
  result.n128_u64[0] = v26;
  v21 = v27;
  *(this + 40) = v26;
  *(this + 56) = v21;
  if ((this + 72) != &a2->cam_from_obj)
  {
    result = *a2->cam_from_obj.m_data;
    v22 = *&a2->cam_from_obj.m_data[4];
    v23 = *&a2->cam_from_obj.m_data[12];
    *(this + 104) = *&a2->cam_from_obj.m_data[8];
    *(this + 120) = v23;
    *(this + 72) = result;
    *(this + 88) = v22;
  }

  return result;
}

unint64_t arkit::btr::anonymous namespace::LinearScaleEstimatorOnline::Add(float *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = 0;
  v78 = *MEMORY[0x1E69E9840];
  v7 = a2 + 356;
  v8 = a2 + 128;
  v9 = a2 + 404;
  memset(&v75, 0, 128);
  do
  {
    v10 = v8 + 12 * v6;
    *&v71[0] = *v10;
    DWORD2(v71[0]) = *(v10 + 8);
    *&v73[0] = v7;
    *(&v73[0] + 1) = 4;
    *&v76[0] = v73;
    *(&v76[0] + 1) = v71;
    *(v77 + 4) = 0;
    HIDWORD(v77[0]) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v77 + 4, v76);
    v11 = 0;
    v12 = v6 + 1;
    DWORD2(v72[0]) = 0;
    *&v72[0] = 0;
    do
    {
      *(v72 + v11) = *(v77 + v11 + 4) + *(v9 + v11);
      v11 += 4;
    }

    while (v11 != 12);
    v13 = v72 + 2;
    v14 = vld1_dup_f32(v13);
    *(&v75 + v6++) = vdiv_f32(*&v72[0], v14);
  }

  while (v12 != 16);
  v15 = 0;
  memset(v77, 0, sizeof(v77));
  do
  {
    v16 = v8 + 12 * v15;
    *&v70[0] = *v16;
    DWORD2(v70[0]) = *(v16 + 8);
    *&v72[0] = a1 + 18;
    *(&v72[0] + 1) = 4;
    *&v73[0] = v72;
    *(&v73[0] + 1) = v70;
    *(v76 + 4) = 0;
    HIDWORD(v76[0]) = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v76 + 4, v73);
    v17 = 0;
    DWORD2(v71[0]) = 0;
    *&v71[0] = 0;
    do
    {
      *(v71 + v17 * 4) = *(v76 + v17 * 4 + 4) + a1[v17 + 30];
      ++v17;
    }

    while (v17 != 3);
    v18 = v77 + 12 * v15++;
    *v18 = *&v71[0];
    *(v18 + 2) = DWORD2(v71[0]);
  }

  while (v15 != 16);
  *&v76[0] = a2 + 420;
  *(&v76[0] + 1) = a1 + 2;
  memset(v73, 0, sizeof(v73));
  v74 = 0u;
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(v73, v76);
  *&v71[0] = v73;
  *(&v71[0] + 1) = 4;
  *&v72[0] = v71;
  *(&v72[0] + 1) = v77;
  memset(v76, 0, sizeof(v76));
  cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(v76, v72);
  v19 = 0;
  *&v71[0] = v74;
  DWORD2(v71[0]) = DWORD2(v74);
  v20 = 0.0;
  v21 = v76;
  do
  {
    v22 = 0;
    DWORD2(v72[0]) = 0;
    *&v72[0] = 0;
    do
    {
      *(v72 + v22) = (*(v21 + v22) * a4) + *(v71 + v22);
      v22 += 4;
    }

    while (v22 != 12);
    v23 = v72 + 2;
    v24 = vld1_dup_f32(v23);
    v25 = vsub_f32(vdiv_f32(*&v72[0], v24), *(&v75 + v19));
    v20 = v20 + sqrtf(vaddv_f32(vmul_f32(v25, v25)));
    v21 = (v21 + 12);
    ++v19;
  }

  while (v19 != 16);
  v26 = v20 * 0.0625;
  if ((v20 * 0.0625) >= *(a3 + 36))
  {
    v28 = 0;
    v29 = v76 + 2;
    memset(v72, 0, sizeof(v72));
    v30 = &v75;
    v31 = v76 + 2;
    do
    {
      v32 = *v30;
      v30 += 2;
      *(v72 + v28) = (*v31 * v32) - *(v31 - 2);
      v31 += 3;
      v28 += 4;
    }

    while (v28 != 64);
    v33 = 0;
    v34 = &v75 + 1;
    memset(v71, 0, sizeof(v71));
    v35 = &v75 + 1;
    do
    {
      v36 = *v35;
      v35 += 2;
      *(v71 + v33) = (*v29 * v36) - *(v29 - 1);
      v29 += 3;
      v33 += 4;
    }

    while (v33 != 64);
    v37 = 0;
    v38 = *(&v74 + 2);
    v39 = *&v74;
    memset(v70, 0, sizeof(v70));
    v40 = &v75;
    do
    {
      v41 = *v40;
      v40 += 2;
      *(v70 + v37) = v39 - (v41 * v38);
      v37 += 4;
    }

    while (v37 != 64);
    v42 = 0;
    v43 = *(&v74 + 1);
    memset(v69, 0, sizeof(v69));
    do
    {
      v44 = *v34;
      v34 += 2;
      *(v69 + v42) = v43 - (v44 * v38);
      v42 += 4;
    }

    while (v42 != 64);
    v64 = v70;
    v65 = v72;
    v66 = &v64;
    v61 = v69;
    v62 = v71;
    v63 = &v61;
    v67.i32[1] = 0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v67 + 1, &v65);
    v68 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v68, &v62);
    v45 = v67.f32[1];
    v46 = v68;
    v64 = v72;
    v65 = v72;
    v66 = &v64;
    v61 = v71;
    v62 = v71;
    v63 = &v61;
    v67.i32[1] = 0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v67 + 1, &v65);
    v68 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v68, &v62);
    v47 = 0;
    v65 = v74;
    LODWORD(v66) = DWORD2(v74);
    v48 = v67.f32[1] + v68;
    v49 = (v45 + v46) / (v67.f32[1] + v68);
    v50 = 0.0;
    v51 = v76;
    do
    {
      v52 = 0;
      v68 = 0.0;
      v67 = 0;
      do
      {
        v67.f32[v52] = (v49 * *(v51 + v52 * 4)) + *(&v65 + v52 * 4);
        ++v52;
      }

      while (v52 != 3);
      v53 = &v68;
      v54 = vld1_dup_f32(v53);
      v55 = vsub_f32(vdiv_f32(v67, v54), *(&v75 + v47));
      v50 = v50 + sqrtf(vaddv_f32(vmul_f32(v55, v55)));
      v51 = (v51 + 12);
      ++v47;
    }

    while (v47 != 16);
    v56 = v50 * 0.0625;
    if (v56 <= (v26 * 1.001))
    {
      v57 = v48 + a1[1];
      *a1 = (v45 + v46) + *a1;
      a1[1] = v57;
      v27 = 13;
      v56 = v49;
    }

    else
    {
      v27 = 8;
    }

    v26 = v56;
  }

  else
  {
    v27 = 12;
  }

  return v27 | (LODWORD(v26) << 32);
}

void arkit::btr::ComputeReprojectionErrorS(uint64_t a1, float a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (a2 >= 0.0 && *(a1 + 8) - *a1 >= 9uLL)
  {
    v5 = *v2;
    v6 = (*v2 + 356);
    v7 = v6[1];
    v57[0] = *v6;
    v57[1] = v7;
    v8 = v6[3];
    v57[2] = v6[2];
    v57[3] = v8;
    for (i = 48; i != 60; i += 4)
    {
      *(v57 + i) = *(v57 + i) * a2;
    }

    v62 = xmmword_1C25EFF64;
    v63 = *algn_1C25EFF74;
    v64 = xmmword_1C25EFF84;
    v65 = unk_1C25EFF94;
    *&v53 = v5 + 420;
    *(&v53 + 1) = 4;
    v66 = &v53;
    *&v68[0] = &v62;
    *(&v68[0] + 1) = 4;
    cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(v68, &v66);
    v60 = &v62;
    v61 = 4;
    v66 = &v60;
    v58 = (v5 + 468);
    v59 = 0xC00000004;
    *&v68[0] = &v66;
    *(&v68[0] + 1) = &v58;
    if ((v5 + 420) == &v62)
    {
      DWORD2(v53) = 0;
      *&v53 = 0;
      cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v53, v68);
      *&v65 = v53;
      DWORD2(v65) = DWORD2(v53);
    }

    else
    {
      v10 = 0;
      LODWORD(v55) = 0;
      v53 = 0u;
      v54 = 0u;
      v11 = &v62;
      v12 = 0x100000000;
      do
      {
        *(&v53 + v10) = -*v11;
        v13 = HIDWORD(v12);
        v14 = v12 < 2;
        if (v12 < 2)
        {
          v13 = 0;
        }

        v15 = &v11[v13];
        v16 = (v12 + 1);
        v17 = v12 & 0xFFFFFFFF00000000;
        v11 = v15 + 1;
        if (!v14)
        {
          v16 = 0;
        }

        v12 = v16 | v17;
        v10 += 4;
      }

      while (v10 != 36);
      v18 = 0;
      v19 = &v53;
      do
      {
        v20 = 0;
        v21 = 0.0;
        v22 = (v5 + 468);
        do
        {
          v23 = *v22++;
          v21 = v21 + (*(v19 + v20) * v23);
          v20 += 12;
        }

        while (v20 != 36);
        *(&v65 + v18++) = v21;
        v19 = (v19 + 4);
      }

      while (v18 != 3);
    }

    *&v68[0] = &v62;
    *(&v68[0] + 1) = v57;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v53, v68);
    v46 = (*(a1 + 8) - *a1) >> 3;
    if (v46 >= 2)
    {
      v24 = 0.0;
      for (j = 1; j != v46; ++j)
      {
        v25 = 0;
        v26 = 128;
        do
        {
          v27 = *(*a1 + 8 * j);
          v28 = 3 * v25;
          LODWORD(v61) = 0;
          v60 = 0;
          if ((v27 + 128) == &v60)
          {
            v30 = v27 + 128 + 12 * v25;
            v31 = *v30;
            LODWORD(v61) = *(v30 + 8);
            v60 = v31;
          }

          else
          {
            for (k = 0; k != 12; k += 4)
            {
              *(&v60 + k) = *(v27 + v26 + k);
            }
          }

          v66 = (v27 + 356);
          v67 = 4;
          *&v68[0] = &v66;
          *(&v68[0] + 1) = &v60;
          *(&v62 + 4) = 0;
          HIDWORD(v62) = 0;
          cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v62 + 4, v68);
          v32 = 0;
          ++v25;
          LODWORD(v59) = 0;
          v58 = 0;
          do
          {
            v58.f32[v32] = *(&v62 + v32 * 4 + 4) + *(v27 + 404 + v32 * 4);
            ++v32;
          }

          while (v32 != 3);
          v33 = &v59;
          v34 = vld1_dup_f32(v33);
          v35 = v58;
          *&v68[0] = *(*a1 + 8 * j) + 420;
          *(&v68[0] + 1) = &v53;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v62, v68);
          v36 = *(*a1 + 8 * j);
          v49 = 0;
          v50 = 0;
          if ((v36 + 4 * v28 - 4 * v28 + 128) == &v49)
          {
            v39 = 0;
            DWORD2(v68[0]) = 0;
            *&v68[0] = 0;
            v40 = v36 + v26;
            do
            {
              *(v68 + v39) = *(v40 + v39) * a2;
              v39 += 4;
            }

            while (v39 != 12);
            v49 = *&v68[0];
            v50 = DWORD2(v68[0]);
          }

          else
          {
            v37 = 0;
            v38 = v36 + v26;
            do
            {
              *(&v49 + v37) = *(v38 + v37) * a2;
              v37 += 4;
            }

            while (v37 != 12);
          }

          v60 = &v62;
          v61 = 4;
          v66 = &v60;
          v67 = &v49;
          *(v68 + 4) = 0;
          HIDWORD(v68[0]) = 0;
          cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(v68 + 4, &v66);
          v41 = 0;
          v42 = vdiv_f32(v35, v34);
          v52 = 0;
          v51 = 0;
          do
          {
            v51.f32[v41] = *(v68 + v41 * 4 + 4) + *(&v65 + v41 * 4);
            ++v41;
          }

          while (v41 != 3);
          v43 = &v52;
          v44 = vld1_dup_f32(v43);
          v45 = vsub_f32(vdiv_f32(v51, v44), v42);
          v24 = v24 + sqrtf(vaddv_f32(vmul_f32(v45, v45)));
          v26 += 12;
        }

        while (v25 != 16);
      }
    }
  }
}

void arkit::btr::ScaleCorrection::ScaleCorrection(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void arkit::btr::ScaleCorrection::EstimateScale(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  if (*(a1 + 48) == 1 && *(v6 + 5) == 1)
  {
    *a3 = 6;
    return;
  }

  v7 = (a2 + 420);
  if (*(v6 + 8) == 1)
  {
    *(v6 + 8) = 0;
    v93 = xmmword_1C25EFF64;
    v94 = *algn_1C25EFF74;
    v95 = xmmword_1C25EFF84;
    v96[0] = unk_1C25EFF94;
    *&v87 = a2 + 420;
    *(&v87 + 1) = 4;
    v103 = &v87;
    *&v97[0] = &v93;
    *(&v97[0] + 1) = 4;
    cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(v97, &v103);
    v102[0] = &v93;
    v102[1] = 4;
    v103 = v102;
    v100 = (a2 + 468);
    v101 = 0xC00000004;
    *&v97[0] = &v103;
    *(&v97[0] + 1) = &v100;
    if (v7 == &v93)
    {
      DWORD2(v87) = 0;
      *&v87 = 0;
      cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v87, v97);
      *&v96[0] = v87;
      DWORD2(v96[0]) = DWORD2(v87);
    }

    else
    {
      v8 = 0;
      LODWORD(v89) = 0;
      v87 = 0u;
      v88 = 0u;
      v9 = &v93;
      v10 = 0x100000000;
      do
      {
        *(&v87 + v8) = -*v9;
        v11 = HIDWORD(v10);
        v12 = v10 < 2;
        if (v10 < 2)
        {
          v11 = 0;
        }

        v13 = &v9[v11];
        v14 = (v10 + 1);
        v15 = v10 & 0xFFFFFFFF00000000;
        v9 = v13 + 1;
        if (!v12)
        {
          v14 = 0;
        }

        v10 = v14 | v15;
        v8 += 4;
      }

      while (v8 != 36);
      v16 = 0;
      v17 = &v87;
      do
      {
        v18 = 0;
        v19 = 0.0;
        v20 = (a2 + 468);
        do
        {
          v21 = *v20++;
          v19 = v19 + (*(v17 + v18) * v21);
          v18 += 12;
        }

        while (v18 != 36);
        *(v96 + v16++) = v19;
        v17 = (v17 + 4);
      }

      while (v16 != 3);
    }

    v36 = v94;
    *(v6 + 408) = v93;
    *(v6 + 424) = v36;
    v37 = v96[0];
    *(v6 + 440) = v95;
    *(v6 + 456) = v37;
    v38 = 1;
    goto LABEL_31;
  }

  *&v93 = a2 + 420;
  *(&v93 + 1) = v6 + 408;
  memset(v97, 0, sizeof(v97));
  v98 = 0u;
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(v97, &v93);
  v93 = xmmword_1C25EFF64;
  v94 = *algn_1C25EFF74;
  v95 = xmmword_1C25EFF84;
  v96[0] = unk_1C25EFF94;
  *&v87 = a2 + 420;
  *(&v87 + 1) = 4;
  v102[0] = &v87;
  v103 = &v93;
  v104 = 4;
  cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(&v103, v102);
  v100 = &v93;
  v101 = 4;
  v102[0] = &v100;
  v99[0] = a2 + 468;
  v99[1] = 0xC00000004;
  v103 = v102;
  v104 = v99;
  if (v7 == &v93)
  {
    DWORD2(v87) = 0;
    *&v87 = 0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(&v87, &v103);
    *&v96[0] = v87;
    DWORD2(v96[0]) = DWORD2(v87);
  }

  else
  {
    v22 = 0;
    LODWORD(v89) = 0;
    v87 = 0u;
    v88 = 0u;
    v23 = &v93;
    v24 = 0x100000000;
    do
    {
      *(&v87 + v22) = -*v23;
      v25 = HIDWORD(v24);
      v26 = v24 < 2;
      if (v24 < 2)
      {
        v25 = 0;
      }

      v27 = &v23[v25];
      v28 = (v24 + 1);
      v29 = v24 & 0xFFFFFFFF00000000;
      v23 = v27 + 1;
      if (!v26)
      {
        v28 = 0;
      }

      v24 = v28 | v29;
      v22 += 4;
    }

    while (v22 != 36);
    v30 = 0;
    v31 = &v87;
    do
    {
      v32 = 0;
      v33 = 0.0;
      v34 = (a2 + 468);
      do
      {
        v35 = *v34++;
        v33 = v33 + (*(v31 + v32) * v35);
        v32 += 12;
      }

      while (v32 != 36);
      *(v96 + v30++) = v33;
      v31 = (v31 + 4);
    }

    while (v30 != 3);
  }

  v39 = v94;
  *(v6 + 408) = v93;
  *(v6 + 424) = v39;
  v40 = v96[0];
  *(v6 + 440) = v95;
  *(v6 + 456) = v40;
  *&v40 = vmul_f32(*(&v98 + 4), *(&v98 + 4));
  v41 = sqrtf(((*&v98 * *&v98) + *&v40) + *(&v40 + 1));
  if (v41 >= *(a1 + 8))
  {
    if (v41 <= *(a1 + 12))
    {
      v43 = 0;
      v44 = *(a2 + 272);
      v96[5] = *(a2 + 256);
      v96[6] = v44;
      v45 = *(a2 + 304);
      v96[7] = *(a2 + 288);
      v96[8] = v45;
      v46 = *(a2 + 208);
      v96[1] = *(a2 + 192);
      v96[2] = v46;
      v47 = *(a2 + 240);
      v96[3] = *(a2 + 224);
      v96[4] = v47;
      v48 = *(a2 + 144);
      v93 = *(a2 + 128);
      v94 = v48;
      v49 = *(a2 + 176);
      v95 = *(a2 + 160);
      v51.i32[1] = DWORD1(v95);
      v96[0] = v49;
      v50 = *(v6 + 16) + 1;
      *(v6 + 16) = v50;
      *v51.i32 = v50;
      v52 = vdupq_lane_s32(v51, 0);
      do
      {
        *(v6 + 24 + v43) = vaddq_f32(*(v6 + 24 + v43), vdivq_f32(vsubq_f32(*(&v93 + v43), *(v6 + 24 + v43)), v52));
        v43 += 16;
      }

      while (v43 != 192);
      v53 = 0;
      v54 = (v6 + 216);
      do
      {
        v55 = vsubq_f32(*(&v93 + v53), *(v6 + v53 + 24));
        *(v6 + v53 + 216) = vaddq_f32(*(v6 + v53 + 216), vmulq_f32(v55, v55));
        v53 += 16;
      }

      while (v53 != 192);
      v56 = 0;
      v57 = 0;
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      do
      {
        *(&v87 + v56) = *v54 / *v51.i32;
        v58 = HIDWORD(v57);
        v59 = v57 < 2;
        if (v57 < 2)
        {
          v58 = 0;
        }

        v60 = &v54[v58];
        v61 = (v57 + 1);
        v62 = v57 & 0xFFFFFFFF00000000;
        v54 = v60 + 1;
        if (!v59)
        {
          v61 = 0;
        }

        v57 = v61 | v62;
        v56 += 4;
      }

      while (v56 != 84);
      v63 = *&v87;
      for (i = 12; i != 84; i += 12)
      {
        v63 = v63 + *(&v87 + i);
      }

      v65 = 1;
      v66 = &v87;
      v67 = sqrtf(v63);
      do
      {
        v68 = *(&v87 + v65);
        for (j = 16; j != 88; j += 12)
        {
          v68 = v68 + *(v66 + j);
        }

        v70 = sqrtf(v68);
        if (v67 < v70)
        {
          v67 = v70;
        }

        ++v65;
        v66 = (v66 + 4);
      }

      while (v65 != 3);
      v42 = 13;
      if (v67 > *(a1 + 32))
      {
        v42 = 5;
        v41 = v67;
      }
    }

    else
    {
      v42 = 2;
    }
  }

  else
  {
    v42 = 1;
  }

  *a3 = v42 | (LODWORD(v41) << 32);
  if (v42 == 5 || v42 == 2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v42 == 13)
  {
    v71 = *(a1 + 56);
    if ((*(v71 + 4) & 1) == 0)
    {
      *(v71 + 4) = 1;
      v38 = 7;
LABEL_31:
      *a3 = v38;
      return;
    }

    v72 = *(a3 + 4);
    *a3 = v73;
    v74 = *(a1 + 56);
    if (v73 == 13)
    {
      v75 = *(v74 + 472) / *(v74 + 476);
      v76 = v72 + *(v74 + 628);
      *(v74 + 628) = v76;
      v77 = *(v74 + 608) + 1;
      *(v74 + 608) = v77;
      if (v77 < *a1)
      {
        v78 = 7;
LABEL_84:
        *a3 = v78 | (LODWORD(v75) << 32);
        *(a3 + 4) = HIDWORD(v73);
        return;
      }

      if (v76 < *(a1 + 28))
      {
        v78 = 3;
        v75 = v76;
        goto LABEL_84;
      }

      if (*(a1 + 40) > v75 || *(a1 + 44) < v75)
      {
        *a3 = (LODWORD(v75) << 32) | 0xB;
        *(a3 + 4) = HIDWORD(v73);
        _ZNSt3__115allocate_sharedB8ne200100IN5arkit3btr15ScaleCorrection4ImplENS_9allocatorIS4_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      v80 = vabds_f32(v75, *(v74 + 624)) / fminf(v75, *(v74 + 624));
      *(v74 + 624) = v75;
      if (v80 >= *(a1 + 24))
      {
        *(v74 + 616) = 0;
      }

      else
      {
        v81 = *(v74 + 616);
        v84 = __CFADD__(v81, 1);
        v82 = v81 + 1;
        *(v74 + 616) = v82;
        if (!v84)
        {
          v83 = *(a1 + 16);
          v84 = v82 >= v83;
          if (v82 >= v83)
          {
            v85 = 0;
          }

          else
          {
            v85 = 9;
          }

          *a3 = v85 | (LODWORD(v75) << 32);
          *(a3 + 4) = HIDWORD(v73);
          if (v84)
          {
            v86 = *(a1 + 56);
            *v86 = v75;
            *(v86 + 5) = 1;
          }

          return;
        }
      }

      v78 = 10;
      goto LABEL_84;
    }
  }
}

double cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(uint64_t *a1, uint64_t **a2)
{
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == a1 || (v4 = a2[1], v4 == a1))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    cva::assign<false,false,cva::Matrix<float,3u,16u,false>,cva::MatrixRef<float,3u,3u,false>,cva::Matrix<float,3u,16u,false>>(&v19);
    v13 = v28;
    *(a1 + 8) = v27;
    *(a1 + 9) = v13;
    v14 = v30;
    *(a1 + 10) = v29;
    *(a1 + 11) = v14;
    v15 = v24;
    *(a1 + 4) = v23;
    *(a1 + 5) = v15;
    v16 = v26;
    *(a1 + 6) = v25;
    *(a1 + 7) = v16;
    v17 = v20;
    *a1 = v19;
    *(a1 + 1) = v17;
    result = *&v21;
    v18 = v22;
    *(a1 + 2) = v21;
    *(a1 + 3) = v18;
  }

  else
  {
    v5 = 0;
    v6 = *(*a2 + 2);
    do
    {
      v7 = 0;
      v8 = v3;
      do
      {
        if (v6)
        {
          v9 = 0;
          result = 0.0;
          v11 = v4 + 3 * v5;
          do
          {
            v12 = *v11++;
            *&result = *&result + (*(v8 + v9) * v12);
            v9 += 4 * v6;
          }

          while (4 * (3 * v6) != v9);
        }

        else
        {
          result = 0.0;
        }

        *(a1 + 3 * v5 + v7++) = LODWORD(result);
        v8 += 4;
      }

      while (v7 != 3);
      ++v5;
    }

    while (v5 != 16);
  }

  return result;
}

float *cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(float *result, uint64_t a2)
{
  v2 = result;
  if (*a2 == result)
  {
    v6 = 0;
    result = cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::Matrix<float,1u,16u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,1u,16u,false>>>(&v6);
    *v2 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = vmulq_f32(*(*a2 + v3), *(**(a2 + 8) + v3));
      v4 = (((v4 + v5.f32[0]) + v5.f32[1]) + v5.f32[2]) + v5.f32[3];
      v3 += 16;
    }

    while (v3 != 64);
    *result = v4;
  }

  return result;
}

uint64_t cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(uint64_t result, float **a2)
{
  v2 = result;
  v3 = **a2;
  if (v3 - 4 * *(*a2 + 3) == result || (v4 = a2[1], v4 == result))
  {
    v12 = 0;
    v11 = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixRef<float const,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v11);
    *v2 = v11;
    *(v2 + 8) = v12;
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
        v8 = 0.0;
        v9 = v4;
        do
        {
          v10 = *v9++;
          v8 = v8 + (*(v3 + v7) * v10);
          v7 += 4 * v6;
        }

        while (4 * (3 * v6) != v7);
      }

      else
      {
        v8 = 0.0;
      }

      *(result + 4 * v5++) = v8;
      v3 += 4;
    }

    while (v5 != 3);
  }

  return result;
}

uint64_t cva::MatrixRef<float,3u,3u,false>::operator=<cva::MatrixTransposeExpr<cva::MatrixRef<float const,3u,3u,false>>>(uint64_t result, uint64_t **a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = **a2;
  if (v4 - 4 * *(*a2 + 3) == *result - 4 * *(result + 12))
  {
    v15 = 0;
    v16 = 0;
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    do
    {
      if (HIDWORD(v16) > 2 || v16 >= 3)
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      *(v28 + v15) = *(v4 + 4 * (HIDWORD(v16) + *(v3 + 2) * v16));
      if (v16 >= 2)
      {
        v16 = (v16 & 0x300000000) + 0x100000000;
      }

      else
      {
        v16 = v16 & 0x300000000 | (v16 + 1) & 7;
      }

      v15 += 4;
    }

    while (v15 != 36);
    v18 = *(result + 8);
    if (v18)
    {
      v19 = &v2[3 * v18];
      v20 = (v18 - 3) << 32;
      v21 = v28;
      do
      {
        v22 = *v21++;
        *v2 = v22;
        v23 = HIDWORD(v20);
        v24 = v20 < 2;
        if (v20 < 2)
        {
          v23 = 0;
        }

        v25 = &v2[v23];
        v26 = (v20 + 1);
        v27 = v20 & 0xFFFFFFFF00000000;
        if (!v24)
        {
          v26 = 0;
        }

        v20 = v26 | v27;
        v2 = v25 + 1;
      }

      while (v2 != v19);
    }
  }

  else
  {
    v5 = *(result + 8);
    if (v5)
    {
      v6 = 0;
      v7 = &v2[3 * v5];
      v8 = (v5 - 3) << 32;
      do
      {
        if (HIDWORD(v6) > 2 || v6 >= 3)
        {
          cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
        }

        *v2 = *(v4 + 4 * (HIDWORD(v6) + *(v3 + 2) * v6));
        if (v6 >= 2)
        {
          v6 = (v6 & 0x300000000) + 0x100000000;
        }

        else
        {
          v6 = v6 & 0x300000000 | (v6 + 1) & 7;
        }

        v10 = HIDWORD(v8);
        v11 = v8 < 2;
        if (v8 < 2)
        {
          v10 = 0;
        }

        v12 = &v2[v10];
        v13 = (v8 + 1);
        v14 = v8 & 0xFFFFFFFF00000000;
        if (!v11)
        {
          v13 = 0;
        }

        v8 = v13 | v14;
        v2 = v12 + 1;
      }

      while (v2 != v7);
    }
  }

  return result;
}

uint64_t cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  v4 = *v3;
  if (*v3 - 4 * *(v3 + 12) == result)
  {
    DWORD2(v21[0]) = 0;
    *&v21[0] = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixUnaryExpr<cva::MatrixRef<float,3u,3u,false>,cva::detail::NegOp>,cva::MatrixRef<float const,3u,1u,false>>(v21);
    *v2 = *&v21[0];
    *(v2 + 8) = DWORD2(v21[0]);
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    v7 = *v6;
    v8 = **v6;
    v9 = (*(v7 + 2) - 3) << 32;
    do
    {
      *(v21 + v5) = -*v8;
      v10 = HIDWORD(v9);
      v11 = v9 < 2;
      if (v9 < 2)
      {
        v10 = 0;
      }

      v12 = &v8[v10];
      v13 = (v9 + 1);
      v14 = v9 & 0xFFFFFFFF00000000;
      v8 = v12 + 1;
      if (!v11)
      {
        v13 = 0;
      }

      v9 = v13 | v14;
      v5 += 4;
    }

    while (v5 != 36);
    v15 = 0;
    v16 = v21;
    do
    {
      v17 = 0;
      v18 = 0.0;
      v19 = v4;
      do
      {
        v20 = *v19++;
        v18 = v18 + (*(v16 + v17) * v20);
        v17 += 12;
      }

      while (v17 != 36);
      *(result + 4 * v15++) = v18;
      v16 = (v16 + 4);
    }

    while (v15 != 3);
  }

  return result;
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4207550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

void std::__shared_ptr_emplace<arkit::btr::ScaleCorrection::Impl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }
}

id _ARLogGeneral_36()
{
  if (_ARLogGeneral_onceToken_38 != -1)
  {
    _ARLogGeneral_cold_1_36();
  }

  v1 = _ARLogGeneral_logObj_38;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_44()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_43 = result;
  return result;
}

__CFString *NSStringFromCV3DVIOReturn(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DD78[a1];
  }
}

__CFString *NSStringFromCV3DSLAMConfigReturn(unsigned int a1)
{
  if (a1 < 5)
  {
    return off_1E817DE88[a1];
  }

  v6 = v1;
  v7 = v2;
  v4 = _ARLogGeneral_37();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "Unknown CV3DSLAMConfigReturn value passed.", v5, 2u);
  }

  return &stru_1F4208A80;
}

id _ARLogGeneral_37()
{
  if (_ARLogGeneral_onceToken_39 != -1)
  {
    _ARLogGeneral_cold_1_37();
  }

  v1 = _ARLogGeneral_logObj_39;

  return v1;
}

__CFString *NSStringFromCV3DSLAMReturn(int a1)
{
  if (*MEMORY[0x1E698BD80] == a1)
  {
    return @"NoError";
  }

  if (*MEMORY[0x1E698BD60] == a1)
  {
    return @"Error";
  }

  if (*MEMORY[0x1E698BD68] == a1)
  {
    return @"InsufficientMemory";
  }

  if (*MEMORY[0x1E698BD70] == a1)
  {
    return @"InvalidContext";
  }

  if (*MEMORY[0x1E698BD78] == a1)
  {
    return @"InvalidParameter";
  }

  if (*MEMORY[0x1E698BD58] == a1)
  {
    return @"CMMapNotAvailable";
  }

  v6 = v1;
  v7 = v2;
  v4 = _ARLogGeneral_37();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "Unknown CV3DSLAMReturn value passed.", v5, 2u);
  }

  return &stru_1F4208A80;
}

__CFString *NSStringFromCV3DPosePredictionReturn(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DEB0[a1];
  }
}

id NSStringFromCV3DSLAMAnchorAddedResult(uint64_t a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  if (*MEMORY[0x1E698BCA8] == v1)
  {
    v3 = @"NoError";
  }

  else if (*MEMORY[0x1E698BCA0] == v1)
  {
    v3 = @"NoActiveAnchorGroup";
  }

  else if (*MEMORY[0x1E698BC88] == v1)
  {
    v3 = @"InactiveAnchorGroup";
  }

  else if (*MEMORY[0x1E698BCB0] == v1)
  {
    v3 = @"TooManyAnchors";
  }

  else if (*MEMORY[0x1E698BC70] == v1)
  {
    v3 = @"DuplicateAnchor";
  }

  else if (*MEMORY[0x1E698BC78] == v1)
  {
    v3 = @"Error";
  }

  else if (*MEMORY[0x1E698BC90] == v1)
  {
    v3 = @"MaxNRAreasReached";
  }

  else if (*MEMORY[0x1E698BC98] == v1)
  {
    v3 = @"NRAnchorNotPermitted";
  }

  else
  {
    if (*MEMORY[0x1E698BC80] != v1)
    {
      goto LABEL_20;
    }

    v3 = @"AnchorGroupNotAuthorized";
  }

  v2 = v3;
LABEL_20:

  return v2;
}

__CFString *NSStringFromSLAMCMDataType(int a1)
{
  if (*MEMORY[0x1E698BCB8] == a1)
  {
    return @"KeyframeInfo";
  }

  if (*MEMORY[0x1E698BCD8] == a1)
  {
    return @"ObjectsAnchor";
  }

  if (*MEMORY[0x1E698BCF0] == a1)
  {
    return @"RelocalizationResult";
  }

  if (*MEMORY[0x1E698BCE8] == a1)
  {
    return @"RegistrationData";
  }

  if (*MEMORY[0x1E698BCD0] == a1)
  {
    return @"ObjectAnchorRemoval";
  }

  if (*MEMORY[0x1E698BD00] == a1)
  {
    return @"VIOStateAndUTCTimestamp";
  }

  if (*MEMORY[0x1E698BCC8] == a1)
  {
    return @"MapRegistrationStats";
  }

  if (*MEMORY[0x1E698BCE0] == a1)
  {
    return @"PoseAnchor";
  }

  if (*MEMORY[0x1E698BCF8] == a1)
  {
    return @"SubmapsStatsInfo";
  }

  if (*MEMORY[0x1E698BCC0] == a1)
  {
    return @"MLFrameSet";
  }

  return @"Unknown";
}

__CFString *NSStringFromCV3DSLAMCalibrationReturn(unsigned int a1)
{
  if (a1 > 6)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DEE8[a1];
  }
}

__CFString *NSStringFromCV3DSLAMJasperPointCloudReturn(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E817DF20[a1];
  }
}

__CFString *NSStringFromCV3DVIOTrackingState(unsigned int a1)
{
  if (a1 > 4)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817DF38[a1];
  }
}

__CFString *NSStringFromCV3DSLAMMode(int a1)
{
  if (*MEMORY[0x1E698BD50] == a1)
  {
    v1 = @"Visual";
  }

  else
  {
    v1 = @"Unknown";
  }

  if (*MEMORY[0x1E698BD48] == a1)
  {
    return @"Regular";
  }

  else
  {
    return v1;
  }
}

id ARGetAnchorIdentifierFromAnchorRef()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = CV3DSLAMAnchorCopyAnchorID();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v0];
    CFRelease(v1);
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion_44;
  v4 = _ARLogGeneral_37();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = 0;
      v6 = "Failed to retrieve anchor identifier %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v11 = 0;
    v6 = "Error: Failed to retrieve anchor identifier %{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v2 = 0;
LABEL_12:

  return v2;
}

__CFString *NSStringFromCV3DVisualSLAMState(int a1)
{
  if (*MEMORY[0x1E698BE50] == a1)
  {
    return @"VisionOnly";
  }

  if (*MEMORY[0x1E698BE58] == a1)
  {
    return @"VisionOnlyAndInertialInitialization";
  }

  if (*MEMORY[0x1E698BE60] == a1)
  {
    return @"VisualInertial";
  }

  return @"Unknown";
}

uint64_t CV3DSLAMCameraVideoModeForResolutionAndDeviceType(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a1;
  v7 = [v5 stringWithFormat:@"%.0fx%.0f", *&a2, *&a3];
  v8 = *MEMORY[0x1E6986948];

  if (v8 == v6)
  {
    v9 = [v7 stringByAppendingString:@"xSW"];

    v7 = v9;
  }

  [v7 UTF8String];
  v10 = CV3DSLAMCameraVideoModeFromString();

  return v10;
}

id ARVisionDataParametersForWorldTrackingOptions(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v21 = 0;
  v2 = [v1 createSLAMCalibration:&v21];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __ARVisionDataParametersForWorldTrackingOptions_block_invoke;
  v19 = &__block_descriptor_40_e5_v8__0l;
  v20 = v21;
  if (!v2)
  {
    v16 = 0;
    [v1 createSLAMConfig:&v16 calibration:?];
    AVCaptureConfig = CV3DSLAMConfigCreateAVCaptureConfig();
    CV3DSLAMConfigRelease();
    if (AVCaptureConfig)
    {
      goto LABEL_17;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_44;
    v9 = _ARLogGeneral_37();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = v1;
        v24 = 2112;
        v25 = 0;
        v11 = "Error reading vision data output parameters for %{public}@: %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = v1;
      v24 = 2112;
      v25 = 0;
      v11 = "Error: Error reading vision data output parameters for %{public}@: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v3 = ARShouldUseLogTypeError_internalOSVersion_44;
  v4 = _ARLogGeneral_37();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromCV3DSLAMCalibrationReturn(v2);
      *buf = 138543618;
      v23 = v1;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "Error building slam calibration, unable to fetch vision data output parameters for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v14 = NSStringFromCV3DSLAMCalibrationReturn(v2);
    *buf = 138543618;
    v23 = v1;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "Error: Error building slam calibration, unable to fetch vision data output parameters for %{public}@: %{public}@", buf, 0x16u);
  }

  AVCaptureConfig = 0;
LABEL_17:
  (v18)(v17);

  return AVCaptureConfig;
}

uint64_t ARParseAndAddCameraCalibrationParameters(void *a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
  v3 = [v2 intValue];

  v4 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
  v5 = [v4 intValue];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v11 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyLensType];
    v9 = v11;
    if (!v11)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v17 = ARShouldUseLogTypeError_internalOSVersion_44;
      v18 = _ARLogGeneral_37();
      v12 = v18;
      if (v17 == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 2114;
          *(&buf[1] + 6) = 0;
          _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}s: wrong lens type(%{public}@)", buf, 0x16u);
        }

        v10 = 1;
      }

      else
      {
        v10 = 1;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 2114;
          *(&buf[1] + 6) = 0;
          _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong lens type(%{public}@)", buf, 0x16u);
        }
      }

      goto LABEL_86;
    }

    v12 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraMatrix];
    v13 = [v12 componentsSeparatedByString:@", "];
    if ([v13 count] <= 8)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v14 = ARShouldUseLogTypeError_internalOSVersion_44;
      v15 = _ARLogGeneral_37();
      v16 = v15;
      if (v14 == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v13 count];
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}s: wrong Intrinsics array (intrinsicsArray.count=%d)", buf, 0x12u);
        }

        v10 = 1;
      }

      else
      {
        v10 = 1;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v13 count];
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong Intrinsics array (intrinsicsArray.count=%d)", buf, 0x12u);
        }
      }

      goto LABEL_85;
    }

    v19 = [v13 objectAtIndex:0];
    [v19 floatValue];

    v20 = [v13 objectAtIndex:4];
    [v20 floatValue];

    v21 = [v13 objectAtIndex:2];
    [v21 floatValue];

    v22 = [v13 objectAtIndex:5];
    [v22 floatValue];

    v76 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyRadialDistortion];
    v23 = [v76 componentsSeparatedByString:@", "];
    if ([v23 count] <= 2)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v16 = v76;
      v24 = ARShouldUseLogTypeError_internalOSVersion_44;
      v25 = _ARLogGeneral_37();
      v26 = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v23 count];
          v27 = "%s: wrong radialDistortionArray array (radialDistortionArray.count=%d)";
          v28 = v26;
          v29 = OS_LOG_TYPE_ERROR;
LABEL_48:
          _os_log_impl(&dword_1C241C000, v28, v29, v27, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v23 count];
        v27 = "Error: %s: wrong radialDistortionArray array (radialDistortionArray.count=%d)";
        v28 = v26;
        v29 = OS_LOG_TYPE_INFO;
        goto LABEL_48;
      }

      v10 = 1;
LABEL_84:

LABEL_85:
LABEL_86:

      goto LABEL_87;
    }

    v74 = v12;
    v30 = 0;
    memset(v86, 0, sizeof(v86));
    do
    {
      v31 = [v23 objectAtIndex:v30];
      [v31 doubleValue];
      *(v86 + v30) = v32;

      ++v30;
    }

    while (v30 != 4);
    v73 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTangentialDistortion];
    v33 = [v73 componentsSeparatedByString:{@", "}];
    v75 = v33;
    if ([v33 count] < 2)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v16 = v76;
      v34 = ARShouldUseLogTypeError_internalOSVersion_44;
      v35 = _ARLogGeneral_37();
      v36 = v35;
      v12 = v74;
      if (v34 == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v75 count];
          v37 = "%s: wrong tangentialDistortionArray (tangentialDistortionArray.count=%d)";
          v38 = v36;
          v39 = OS_LOG_TYPE_ERROR;
LABEL_58:
          _os_log_impl(&dword_1C241C000, v38, v39, v37, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v75 count];
        v37 = "Error: %s: wrong tangentialDistortionArray (tangentialDistortionArray.count=%d)";
        v38 = v36;
        v39 = OS_LOG_TYPE_INFO;
        goto LABEL_58;
      }

      v10 = 1;
LABEL_83:

      goto LABEL_84;
    }

    v40 = [v33 objectAtIndex:0];
    [v40 doubleValue];
    v85[3] = v41;
    v42 = [v33 objectAtIndex:1];
    [v42 doubleValue];
    v85[4] = v43;

    v71 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuPosition];
    v72 = [v71 componentsSeparatedByString:{@", "}];
    if ([v72 count] <= 2)
    {
      v16 = v76;
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v12 = v74;
      v44 = v72;
      v45 = ARShouldUseLogTypeError_internalOSVersion_44;
      v46 = _ARLogGeneral_37();
      v47 = v46;
      if (v45 == 1)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v72 count];
          v48 = "%s: wrong cameraToImuPositionArray (cameraToImuPositionArray=%d)";
          v49 = v47;
          v50 = OS_LOG_TYPE_ERROR;
LABEL_66:
          _os_log_impl(&dword_1C241C000, v49, v50, v48, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v72 count];
        v48 = "Error: %s: wrong cameraToImuPositionArray (cameraToImuPositionArray=%d)";
        v49 = v47;
        v50 = OS_LOG_TYPE_INFO;
        goto LABEL_66;
      }

      v10 = 1;
LABEL_82:

      goto LABEL_83;
    }

    v51 = 0;
    memset(v85, 0, 24);
    do
    {
      v52 = [v72 objectAtIndex:v51];
      [v52 doubleValue];
      v85[v51] = v53;

      ++v51;
    }

    while (v51 != 3);
    v54 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuRotation];
    v55 = [v54 componentsSeparatedByString:{@", "}];
    v70 = v55;
    if ([v55 count] < 9)
    {
      v10 = 1;
      v12 = v74;
      v16 = v76;
      v44 = v72;
LABEL_81:

      goto LABEL_82;
    }

    v69 = v54;
    v56 = 0;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      v57 = [v55 objectAtIndex:v56];
      [v57 doubleValue];
      buf[v56] = v58;

      ++v56;
    }

    while (v56 != 9);
    v59 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTimestampCorrectionForCamera];
    [v59 doubleValue];

    v60 = [v1 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraReadoutTime];
    [v60 doubleValue];

    ARGetCV3DCameraLensDistortionModelFromLensType(v9);
    v10 = CV3DSLAMCalibrationAddCameraParameters2();
    v12 = v74;
    v44 = v72;
    v54 = v69;
    if (!v10)
    {
LABEL_80:
      v16 = v76;
      goto LABEL_81;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v61 = ARShouldUseLogTypeError_internalOSVersion_44;
    v62 = _ARLogGeneral_37();
    v63 = v62;
    if (v61 == 1)
    {
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v64 = NSStringFromCV3DSLAMCalibrationReturn(v10);
        *v77 = 136315394;
        v78 = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
        v79 = 2112;
        v80 = v64;
        v65 = "%s: CV3DSLAMCalibrationAddCameraParameters failed (result=%@)";
        v66 = v63;
        v67 = OS_LOG_TYPE_ERROR;
LABEL_78:
        _os_log_impl(&dword_1C241C000, v66, v67, v65, v77, 0x16u);
      }
    }

    else if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v64 = NSStringFromCV3DSLAMCalibrationReturn(v10);
      *v77 = 136315394;
      v78 = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      v79 = 2112;
      v80 = v64;
      v65 = "Error: %s: CV3DSLAMCalibrationAddCameraParameters failed (result=%@)";
      v66 = v63;
      v67 = OS_LOG_TYPE_INFO;
      goto LABEL_78;
    }

    v54 = v69;
    goto LABEL_80;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v7 = ARShouldUseLogTypeError_internalOSVersion_44;
  v8 = _ARLogGeneral_37();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v3;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v5;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}s: wrong width (%d) or height(%d)", buf, 0x18u);
    }

    v10 = 1;
  }

  else
  {
    v10 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddCameraCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull, CV3DSLAMCameraMode, const uint32_t, const uint32_t)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v3;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v5;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}s: wrong width (%d) or height(%d)", buf, 0x18u);
    }
  }

LABEL_87:

  return v10;
}

uint64_t ARGetCV3DCameraLensDistortionModelFromLensType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Perspective"])
  {
    goto LABEL_2;
  }

  if ([v1 isEqualToString:@"Fisheye"])
  {
    v2 = 1;
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"FlyoverPerspective"])
  {
    v2 = 2;
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"NoDistortion"])
  {
    v2 = 3;
    goto LABEL_9;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v4 = ARShouldUseLogTypeError_internalOSVersion_44;
  v5 = _ARLogGeneral_37();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v7 = "LensType not configured in calibration directory, defaulting to Perspective";
      v8 = &v12;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v9, v10, v7, v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 0;
    v7 = "Error: LensType not configured in calibration directory, defaulting to Perspective";
    v8 = &v11;
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_17;
  }

LABEL_2:
  v2 = 0;
LABEL_9:

  return v2;
}

id AppleCV3DValuesFromExternalCalibrationDictionary(void *a1)
{
  v52[9] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [v1 objectForKeyedSubscript:@"CameraDescription"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_34;
  }

  v5 = [v3 objectForKeyedSubscript:@"CameraIntrinsics"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"DistortionCoefficients"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 componentsJoinedByString:{@", "}];
      [v2 setObject:v9 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyRadialDistortion];
    }

    v10 = [v6 objectForKeyedSubscript:@"LensType"];
    if (v10)
    {
      [v2 setObject:v10 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyLensType];
    }

    v11 = [v6 objectForKeyedSubscript:@"Resolution"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"Height"];
      if (v13)
      {
        [v2 setObject:v13 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      }

      v14 = [v12 objectForKeyedSubscript:@"Width"];
      if (v14)
      {
        [v2 setObject:v14 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      }
    }

    v48 = v12;
    v51 = v1;
    v15 = [v6 objectForKeyedSubscript:@"EffectiveFocusLength"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"X"];
      v18 = [v16 objectForKeyedSubscript:@"Y"];
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v49 = v10;
    v50 = v8;
    v19 = [v6 objectForKeyedSubscript:@"PrincipalPoint"];
    v20 = v19;
    v47 = v16;
    if (v19)
    {
      v21 = [v19 objectForKeyedSubscript:@"X"];
      v22 = [v20 objectForKeyedSubscript:@"Y"];
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0;
      v21 = 0;
      if (!v17)
      {
LABEL_24:
        v26 = [v6 objectForKeyedSubscript:@"TangentialDistortionCoefficients"];
        v27 = v26;
        if (v26)
        {
          [v26 componentsJoinedByString:{@", "}];
          v29 = v28 = v17;
          [v2 setObject:v29 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTangentialDistortion];

          v17 = v28;
        }

        [v2 setObject:&unk_1F4259500 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraReadoutTime];

        v1 = v51;
        goto LABEL_27;
      }
    }

    if (v18 && v21 && v22)
    {
      v52[0] = v17;
      v52[1] = &unk_1F42594E0;
      v52[2] = v21;
      v52[3] = &unk_1F42594E0;
      v52[4] = v18;
      v52[5] = v22;
      v52[6] = &unk_1F42594E0;
      v52[7] = &unk_1F42594E0;
      v52[8] = &unk_1F42594F0;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:9];
      [v23 componentsJoinedByString:{@", "}];
      v25 = v24 = v17;
      [v2 setObject:v25 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraMatrix];

      v17 = v24;
    }

    goto LABEL_24;
  }

LABEL_27:
  v30 = [v4 objectForKeyedSubscript:@"RotationIMUToCamera"];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 componentsJoinedByString:{@", "}];
    [v2 setObject:v32 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuRotation];
  }

  v33 = [v4 objectForKeyedSubscript:@"TranslationCameraToIMU"];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 componentsJoinedByString:{@", "}];
    [v2 setObject:v35 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyCameraToImuPosition];
  }

  v36 = [v4 objectForKeyedSubscript:@"TimestampCorrectionForCamera"];
  if (v36)
  {
    [v2 setObject:v36 forKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyTimestampCorrectionForCamera];
  }

LABEL_34:
  v37 = [v1 objectForKeyedSubscript:@"IMUDescription"];
  if (v37)
  {
    v38 = [v4 objectForKeyedSubscript:@"AccelerometerTimestampCorrection"];
    if (v38)
    {
      [v2 setObject:v38 forKeyedSubscript:@"AccelerometerTimestampCorrection"];
    }

    v39 = [v37 objectForKeyedSubscript:@"Gravity"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 componentsJoinedByString:{@", "}];
      [v2 setObject:v41 forKeyedSubscript:@"Gravity"];
    }

    v42 = [v37 objectForKeyedSubscript:@"NoiseCharacteristics"];
    v43 = v42;
    if (v42)
    {
      v44 = [v42 componentsJoinedByString:{@", "}];
      [v2 setObject:v44 forKeyedSubscript:@"ImuNoiseCharacteristics"];
    }
  }

  v45 = [v2 copy];

  return v45;
}

uint64_t ARParseAndAddImuCalibrationParameters(void *a1)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 valueForKey:@"Gravity"];
  v3 = [v2 componentsSeparatedByString:{@", "}];
  if ([v3 count] > 2)
  {
    v10 = 0;
    memset(v39, 0, 24);
    do
    {
      v11 = [v3 objectAtIndex:v10];
      [v11 doubleValue];
      v39[v10] = v12;

      ++v10;
    }

    while (v10 != 3);
    v13 = [v1 valueForKey:@"ImuNoiseCharacteristics"];
    v14 = [v13 componentsSeparatedByString:{@", "}];
    if ([v14 count] < 4)
    {
      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARParseAndAddCameraCalibrationParameters_cold_2();
      }

      v15 = ARShouldUseLogTypeError_internalOSVersion_44;
      v16 = _ARLogGeneral_37();
      v17 = v16;
      if (v15 == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = [v14 count];
          v18 = "%{public}s: wrong imuNoiseCharacteristicsArray (imuNoiseCharacteristicsArray.count=%d)";
          v19 = v17;
          v20 = OS_LOG_TYPE_ERROR;
LABEL_29:
          _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = [v14 count];
        v18 = "Error: %{public}s: wrong imuNoiseCharacteristicsArray (imuNoiseCharacteristicsArray.count=%d)";
        v19 = v17;
        v20 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      v21 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v22 = 0;
    memset(buf, 0, sizeof(buf));
    do
    {
      v23 = [v14 objectAtIndex:v22];
      [v23 doubleValue];
      buf[v22] = v24;

      ++v22;
    }

    while (v22 != 4);
    v25 = [v1 valueForKey:@"AccelerometerTimestampCorrection"];
    [v25 doubleValue];

    v21 = CV3DSLAMCalibrationAddIMUParameters();
    if (!v21)
    {
      goto LABEL_35;
    }

    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARGetAnchorIdentifierFromAnchorRef_cold_1();
    }

    v26 = ARShouldUseLogTypeError_internalOSVersion_44;
    v27 = _ARLogGeneral_37();
    v28 = v27;
    if (v26 == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromCV3DSLAMCalibrationReturn(v21);
        v34 = 136315394;
        v35 = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
        v36 = 2112;
        v37 = v29;
        v30 = "%s: CV3DSLAMCalibrationAddIMUParameters failed (result=%@)";
        v31 = v28;
        v32 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v31, v32, v30, &v34, 0x16u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v29 = NSStringFromCV3DSLAMCalibrationReturn(v21);
      v34 = 136315394;
      v35 = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
      v36 = 2112;
      v37 = v29;
      v30 = "Error: %s: CV3DSLAMCalibrationAddIMUParameters failed (result=%@)";
      v31 = v28;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARParseAndAddCameraCalibrationParameters_cold_2();
  }

  v4 = ARShouldUseLogTypeError_internalOSVersion_44;
  v5 = _ARLogGeneral_37();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = [v3 count];
      v7 = "%{public}s: wrong gravityArray (gravityArray.count=%d)";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_1C241C000, v8, v9, v7, buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "CV3DSLAMCalibrationReturn ARParseAndAddImuCalibrationParameters(NSDictionary *__strong _Nonnull, CV3DSLAMMutableCalibrationRef _Nonnull)";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = [v3 count];
    v7 = "Error: %{public}s: wrong gravityArray (gravityArray.count=%d)";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_17;
  }

  v21 = 1;
LABEL_36:

  return v21;
}

float ARGetIntrinsicsFromCalibrationDictionary(void *a1)
{
  v1 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v2 = [v1 objectForKey:*MEMORY[0x1E698BE30]];
  point.x = 0.0;
  point.y = 0.0;
  v13.x = 0.0;
  v13.y = 0.0;
  Value = CFDictionaryGetValue(v2, *MEMORY[0x1E698BE28]);
  CGPointMakeWithDictionaryRepresentation(Value, &point);
  v4 = CFDictionaryGetValue(v2, *MEMORY[0x1E698BE38]);
  CGPointMakeWithDictionaryRepresentation(v4, &v13);
  x = point.x;
  v12 = x;

  __asm { FMOV            V2.4S, #1.0 }

  return v12;
}

void ARGetRadialDistortionFromCalibrationDictionary(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v4 = [v3 objectForKey:*MEMORY[0x1E698BE30]];
  v5 = [v4 objectForKey:*MEMORY[0x1E698BE40]];
  if ([v5 count] < 3)
  {
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_44;
    v16 = _ARLogGeneral_37();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v26 = [v5 count];
        v18 = "ARGetRadialDistortionFromCalibrationDictionary: wrong radialDistortion coeffs (coefficients.count = %d)";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 8u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v26 = [v5 count];
      v18 = "Error: ARGetRadialDistortionFromCalibrationDictionary: wrong radialDistortion coeffs (coefficients.count = %d)";
      v19 = v17;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v13 = 0uLL;
    v14 = 0uLL;
    goto LABEL_12;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 doubleValue];
  v23 = v7;

  v8 = [v5 objectAtIndexedSubscript:1];
  [v8 doubleValue];
  v21 = v9;

  v10 = [v5 objectAtIndexedSubscript:2];
  [v10 doubleValue];
  *&v11 = v23;
  *(&v11 + 1) = v21;
  v24 = v11;
  v22 = v12;

  v14 = v22;
  v13 = v24;
LABEL_12:
  *a2 = v13;
  a2[1] = v14;
}

__n128 ARGetTangentialDistortionFromCalibrationDictionary(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKey:*MEMORY[0x1E698BE20]];
  v2 = [v1 objectForKey:*MEMORY[0x1E698BE30]];
  v3 = [v2 objectForKey:*MEMORY[0x1E698BE48]];
  if ([v3 count] < 2)
  {
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_44;
    v10 = _ARLogGeneral_37();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v19 = [v3 count];
        v12 = "ARGetTangentialDistortionFromCalibrationDictionary: wrong tangentialDistortion coeffs (coefficients.count = %d)";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 8u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = [v3 count];
      v12 = "Error: ARGetTangentialDistortionFromCalibrationDictionary: wrong tangentialDistortion coeffs (coefficients.count = %d)";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v17 = 0u;
    goto LABEL_12;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v16 = v5;

  v6 = [v3 objectAtIndexedSubscript:1];
  [v6 doubleValue];
  *&v7 = v16;
  *(&v7 + 1) = v8;
  v17 = v7;

LABEL_12:
  return v17;
}

uint64_t ARSurfaceOrientationForPlaneDetectionType(char a1)
{
  v1 = 3;
  if ((~a1 & 3) != 0)
  {
    if (a1 < 0)
    {
      LODWORD(v1) = 3;
    }

    else
    {
      LODWORD(v1) = 1;
    }

    if ((a1 & 0x81) != 0)
    {
      return v1;
    }

    else
    {
      return a1 & 2;
    }
  }

  return v1;
}

uint64_t ARSurfaceExtentTypeForPlaneDetectionType(__int16 a1)
{
  if ((a1 & 0x200) != 0)
  {
    return 15;
  }

  else
  {
    return 7;
  }
}

uint64_t ARPlaneClassificationForSceneUnderstandingLabel(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1C25F0640[a1 - 1];
  }
}

__CFString *NSStringFromSceneUnderstandingLabel(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return @"Empty";
  }

  else
  {
    return off_1E817DF60[a1];
  }
}

void ARInitializeHitTestIntentWithExtentCheck(uint64_t a1, void *a2, int a3, int a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v29.columns[2] = a7;
  v29.columns[3] = a8;
  v29.columns[0] = a5;
  v29.columns[1] = a6;
  v31 = a2;
  [v31 direction];
  v27 = v11;
  v35 = __invert_f4(v29);
  v29.columns[1] = v35.columns[0];
  v29.columns[2] = v35.columns[1];
  v29.columns[3] = v35.columns[2];
  v28 = v35.columns[3];
  v29.columns[0] = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], v27.f32[0]), v35.columns[1], *v27.f32, 1), v35.columns[2], v27, 2), 0, v35.columns[3]);
  *v12.i64 = ARRenderingToVisionCoordinateTransform();
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v29.columns[0].f32[0]), v13, *v29.columns[0].f32, 1), v14, v29.columns[0], 2), v15, v29.columns[0], 3);
  [v31 origin];
  v29.columns[3] = vaddq_f32(v28, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.columns[1], v16.f32[0]), v29.columns[2], *v16.f32, 1), v29.columns[3], v16, 2));
  *v17.i64 = ARRenderingToVisionCoordinateTransform();
  v18 = 0;
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v29.columns[3].f32[0]), v19, *v29.columns[3].f32, 1), v20, v29.columns[3], 2), v21, v29.columns[3], 3);
  do
  {
    v32 = v22;
    v23 = (a1 + 8 * v18);
    *v23 = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
    v33 = v30;
    v23[3] = *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18++ & 3)));
  }

  while (v18 != 3);
  *(a1 + 48) = xmmword_1C25F0020;
  *(a1 + 88) = CFAbsoluteTimeGetCurrent();
  *(a1 + 72) = a3;
  *(a1 + 76) = 0;
  *(a1 + 84) = 0;
  v24 = [v31 target];
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = 1;
      a4 = 1;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_10;
      }

      v25 = 3;
    }
  }

  else
  {
    v25 = 1;
  }

  *(a1 + 76) = v25;
  *(a1 + 84) = a4;
LABEL_10:
  v26 = [v31 targetAlignment];
  if (v26 <= 2)
  {
    *(a1 + 80) = dword_1C25F0690[v26];
  }

  *(a1 + 64) = CFUUIDCreate(*MEMORY[0x1E695E480]);
}

void ARReleaseHitTestIntent(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t ARCreateCV3DLoggingHandle(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  Handle = CV3DLoggingCreateHandle();
  if (a1 < 0)
  {
    v9 = _ARLogGeneral_37();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    LOWORD(v24) = 0;
    v10 = "AppleCV3D API logging disabled";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 2;
    goto LABEL_16;
  }

  v5 = CV3DLoggingEnable();
  if (v5)
  {
    v6 = v5;
    if (ARShouldUseLogTypeError_onceToken_44 != -1)
    {
      ARParseAndAddCameraCalibrationParameters_cold_2();
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_44;
    v8 = _ARLogGeneral_37();
    v9 = v8;
    if (v7 == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v24 = 67109120;
      v25 = v6;
      v10 = "Error enabling AppleCV3D API logging: %i";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v24 = 67109120;
    v25 = v6;
    v10 = "Error: Error enabling AppleCV3D API logging: %i";
  }

  else
  {
    v9 = _ARLogGeneral_37();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v24 = 67109120;
    v25 = a1;
    v10 = "AppleCV3D API logging level enabled: %i";
  }

  v11 = v9;
  v12 = OS_LOG_TYPE_INFO;
LABEL_15:
  v13 = 8;
LABEL_16:
  _os_log_impl(&dword_1C241C000, v11, v12, v10, &v24, v13);
LABEL_17:

  if (a2 < 0)
  {
    v18 = _ARLogGeneral_37();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      v19 = "AppleCV3D internal logging disabled";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      v22 = 2;
LABEL_32:
      _os_log_impl(&dword_1C241C000, v20, v21, v19, &v24, v22);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v14 = CV3DLoggingEnableInternal();
  if (!v14)
  {
    v18 = _ARLogGeneral_37();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v24 = 67109120;
    v25 = a2;
    v19 = "AppleCV3D internal logging level enabled: %i";
LABEL_30:
    v20 = v18;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_31;
  }

  v15 = v14;
  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_44;
  v17 = _ARLogGeneral_37();
  v18 = v17;
  if (v16 != 1)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v24 = 67109120;
    v25 = v15;
    v19 = "Error: Error enabling AppleCV3D internal logging: %i";
    goto LABEL_30;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v24 = 67109120;
    v25 = v15;
    v19 = "Error enabling AppleCV3D internal logging: %i";
    v20 = v18;
    v21 = OS_LOG_TYPE_ERROR;
LABEL_31:
    v22 = 8;
    goto LABEL_32;
  }

LABEL_33:

  return Handle;
}

id ARAnchorsFromCV3DAnchorsArray(void *a1, double a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 count];
  v38 = [MEMORY[0x1E695DFA8] setWithCapacity:v4];
  if (v4)
  {
    v5 = 0;
    v6 = 0x1E696A000uLL;
    do
    {
      [v3 objectAtIndex:v5];
      v7 = CV3DSLAMAnchorCopyAnchorID();
      if (v7)
      {
        v8 = v7;
        v9 = [*(v6 + 4016) ar_UUIDWithCFUUIDRef:v7];
        CFRelease(v8);
        v10 = CV3DSLAMAnchorCopySessionID();
        v11 = v10;
        if (v10)
        {
          v12 = [*(v6 + 4016) ar_UUIDWithIntegerValue:{objc_msgSend(v10, "integerValue")}];
        }

        else
        {
          v19 = _ARLogGeneral_37();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = 0;
            _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Unable to parse SLAM anchor session identifier: %@", buf, 0xCu);

            v6 = 0x1E696A000;
          }

          v12 = 0;
        }

        if (CV3DSLAMAnchorCopyPose())
        {
          v51.columns[2] = 0u;
          v51.columns[3] = 0u;
          v51.columns[0] = 0u;
          v51.columns[1] = 0u;
          v43 = __invert_f4(v51);
          *v20.i64 = ARVisionToRenderingCoordinateTransform();
          v24 = 0;
          v44 = v43;
          *buf = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          do
          {
            *&buf[v24 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*&v44.columns[v24])), v21, *v44.columns[v24].f32, 1), v22, v44.columns[v24], 2), v23, v44.columns[v24], 3);
            ++v24;
          }

          while (v24 != 4);
          v41 = v46;
          v42 = *buf;
          v39 = v48;
          v40 = v47;
          *v25.i64 = ARRenderingToVisionCoordinateTransform();
          v26 = 0;
          v44.columns[0] = v25;
          v44.columns[1] = v27;
          v44.columns[2] = v28;
          v44.columns[3] = v29;
          *buf = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          do
          {
            *&buf[v26 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*&v44.columns[v26])), v41, *v44.columns[v26].f32, 1), v40, v44.columns[v26], 2), v39, v44.columns[v26], 3);
            ++v26;
          }

          while (v26 != 4);
          v30 = [[ARAnchor alloc] initWithIdentifier:v9 transform:*buf, *v46.i64, *v47.i64, *v48.i64];
          [(ARAnchor *)v30 setSessionIdentifier:v12];
          [(ARAnchor *)v30 setLastUpdateTimestamp:a2];
          [v38 addObject:v30];

          goto LABEL_33;
        }

        if (ARShouldUseLogTypeError_onceToken_44 != -1)
        {
          ARGetAnchorIdentifierFromAnchorRef_cold_1();
        }

        v31 = ARShouldUseLogTypeError_internalOSVersion_44;
        v32 = _ARLogGeneral_37();
        v33 = v32;
        if (v31 == 1)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = 0;
            v34 = v33;
            v35 = OS_LOG_TYPE_ERROR;
            v36 = "Unable to parse SLAM anchor transform: %@";
            goto LABEL_31;
          }
        }

        else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          v34 = v33;
          v35 = OS_LOG_TYPE_INFO;
          v36 = "Error: Unable to parse SLAM anchor transform: %@";
LABEL_31:
          _os_log_impl(&dword_1C241C000, v34, v35, v36, buf, 0xCu);
        }

        v6 = 0x1E696A000;
LABEL_33:

        goto LABEL_34;
      }

      if (ARShouldUseLogTypeError_onceToken_44 != -1)
      {
        ARGetAnchorIdentifierFromAnchorRef_cold_1();
      }

      v13 = ARShouldUseLogTypeError_internalOSVersion_44;
      v14 = _ARLogGeneral_37();
      v15 = v14;
      if (v13 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          v16 = v15;
          v17 = OS_LOG_TYPE_ERROR;
          v18 = "Unable to parse SLAM anchor identifier: %@";
LABEL_27:
          _os_log_impl(&dword_1C241C000, v16, v17, v18, buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = 0;
        v16 = v15;
        v17 = OS_LOG_TYPE_INFO;
        v18 = "Error: Unable to parse SLAM anchor identifier: %@";
        goto LABEL_27;
      }

LABEL_34:
      ++v5;
    }

    while (v5 != v4);
  }

  return v38;
}

id ARGetAnchorIdentifierFromCMData(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0uLL;
  v10 = 0;
  if (MEMORY[0x1C6919870](a1, &v12, &v11, &v10))
  {
    *buf = v11;
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_44 != -1)
  {
    ARGetAnchorIdentifierFromAnchorRef_cold_1();
  }

  v2 = ARShouldUseLogTypeError_internalOSVersion_44;
  v3 = _ARLogGeneral_37();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = v10;
      *buf = 138412290;
      *&buf[4] = v10;
      v6 = "Unable to parse anchor metadata: %@";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = v10;
    *buf = 138412290;
    *&buf[4] = v10;
    v6 = "Error: Unable to parse anchor metadata: %@";
    v7 = v4;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v1 = 0;
LABEL_12:

  return v1;
}

__n128 ARCV3DColorComponentsForRawSemantics(unint64_t a1)
{
  if (ARDeviceSupportsJasper())
  {
    if (_CV3DColorMappingForRawSemantics_onceToken != -1)
    {
      ARCV3DColorComponentsForRawSemantics_cold_2();
    }

    result.n128_u64[0] = 0;
    if (a1 <= 0x64)
    {
      v3 = &_CV3DColorMappingForRawSemantics_cv3DColors;
      return v3[a1];
    }
  }

  else
  {
    if (_CV3DColorComponentsFor12ClassModelIndex_onceToken != -1)
    {
      ARCV3DColorComponentsForRawSemantics_cold_1();
    }

    result.n128_u64[0] = 0;
    if (a1 <= 0xB)
    {
      v3 = &_CV3DColorComponentsFor12ClassModelIndex_cv3DColors;
      return v3[a1];
    }
  }

  return result;
}

uint64_t _CV3DRawSemanticsValueForARKitSemantics(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1C25F06A0[a1 - 1];
  }
}

__int128 *ARCV3DColorComponentsForARKitSemanticsLUT8Elements()
{
  if (ARCV3DColorComponentsForARKitSemanticsLUT8Elements_onceToken != -1)
  {
    ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cold_1();
  }

  return ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors;
}

double __ARCV3DColorComponentsForARKitSemanticsLUT8Elements_block_invoke()
{
  if (_CV3DColorMappingForRawSemantics_onceToken != -1)
  {
    ARCV3DColorComponentsForRawSemantics_cold_2();
  }

  result = *&_CV3DColorMappingForRawSemantics_cv3DColors;
  ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors[0] = _CV3DColorMappingForRawSemantics_cv3DColors;
  unk_1EBF42C20 = xmmword_1EBF42CE0;
  xmmword_1EBF42C30 = xmmword_1EBF42CD0;
  unk_1EBF42C40 = xmmword_1EBF42CF0;
  xmmword_1EBF42C50 = xmmword_1EBF42DF0;
  unk_1EBF42C60 = xmmword_1EBF42DB0;
  xmmword_1EBF42C70 = xmmword_1EBF42D30;
  unk_1EBF42C80 = xmmword_1EBF42D20;
  return result;
}

__n128 ARCV3DColorComponentsForARKitSemantics(unint64_t a1)
{
  if (ARCV3DColorComponentsForARKitSemanticsLUT8Elements_onceToken != -1)
  {
    ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cold_1();
  }

  result.n128_u64[0] = 0;
  if (a1 <= 7)
  {
    return ARCV3DColorComponentsForARKitSemanticsLUT8Elements_cv3DColors[a1];
  }

  return result;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_45()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_44 = result;
  return result;
}

BOOL __ARSkipCrashOnCrash_block_invoke_1()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.skipCrashOnARCrash"];
  ARSkipCrashOnCrash_skipCrashOnCrash_1 = result;
  return result;
}

uint64_t ARCreatePlaneDetectionExtentTypeForPlaneDetectionType(__int16 a1)
{
  v2 = CV3DPlaneDetectionExtentTypesCreate();
  if (v2)
  {
    goto LABEL_11;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCreatePlaneDetectionExtentTypeForPlaneDetectionType();
  }

  v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v4 = _ARLogGeneral();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v6 = "Could not instantiate desired extent for plane detection";
      v7 = &v12;
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v8, v9, v6, v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 0;
    v6 = "Error: Could not instantiate desired extent for plane detection";
    v7 = &v11;
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

LABEL_11:
  if ((a1 & 0x200) != 0)
  {
    CV3DPlaneDetectionExtentTypesSetAll();
  }

  else
  {
    CV3DPlaneDetectionExtentTypesSetAxisAlignedBox();
    CV3DPlaneDetectionExtentTypesSetOrientedBox();
    CV3DPlaneDetectionExtentTypesSetConvexHull();
  }

  return v2;
}

uint64_t ARPlaneDetectionOrientationForPlaneDetectionType(char a1)
{
  v1 = MEMORY[0x1E69C6C68];
  if ((~a1 & 3) != 0)
  {
    if ((a1 & 0x80) == 0)
    {
      v1 = MEMORY[0x1E69C6C60];
    }

    v2 = MEMORY[0x1E69C6C78];
    if ((a1 & 2) == 0)
    {
      v2 = MEMORY[0x1E69C6C70];
    }

    if ((a1 & 0x81) == 0)
    {
      v1 = v2;
    }
  }

  return *v1;
}

uint64_t ExtractConfig(const PlaneDetectionConfiguration *a1)
{
  v2 = CV3DPlaneDetectionConfigurationCreate();
  minVergenceAngleDegreesUserDefaultValue = a1->minVergenceAngleDegreesUserDefaultValue;
  if (minVergenceAngleDegreesUserDefaultValue)
  {
    [(NSNumber *)minVergenceAngleDegreesUserDefaultValue doubleValue];
  }

  else
  {
    [(ARWorldTrackingOptions *)a1->options minVergenceAngle];
  }

  CV3DPlaneDetectionConfigurationSetMinVergenceAngle();
  [(ARWorldTrackingOptions *)a1->options planeDetection];
  CV3DPlaneDetectionConfigurationSetDesiredOrientations();
  ARCreatePlaneDetectionExtentTypeForPlaneDetectionType([(ARWorldTrackingOptions *)a1->options planeDetection]);
  CV3DPlaneDetectionConfigurationSetDesiredExtent();
  CV3DPlaneDetectionExtentTypesRelease();
  if ([(ARWorldTrackingOptions *)a1->options planeEstimationShouldUseJasperData])
  {
    detectionPolicyString = a1->detectionPolicyString;
    if (detectionPolicyString)
    {
      [(NSString *)detectionPolicyString isEqualToString:@"jasper"];
    }

    CV3DPlaneDetectionConfigurationSetDetectionPolicy();
  }

  else
  {
    CV3DPlaneDetectionConfigurationSetDetectionPolicy();
    CV3DPlaneDetectionConfigurationEnableMLSegmentDetector();
  }

  if (a1->var0)
  {
    CV3DPlaneDetectionConfigurationEnableDeterministicMode();
  }

  if ([(ARWorldTrackingOptions *)a1->options lowQosSchedulingEnabled])
  {
    CV3DPlaneDetectionConfigurationEnableLowQosScheduling();
  }

  return v2;
}

uint64_t ExtractParams(const PlaneDetectionConfiguration *a1)
{
  v2 = CV3DPlaneDetectionParametersCreate();
  detectionCountUserDefaultValue = a1->detectionCountUserDefaultValue;
  if (detectionCountUserDefaultValue)
  {
    [(NSNumber *)detectionCountUserDefaultValue intValue];
    CV3DPlaneDetectionParametersSetMinDetections();
  }

  if ([(ARWorldTrackingOptions *)a1->options planeBundleAdjustmentEnabled])
  {
    CV3DPlaneDetectionParametersSetMinDetections();
  }

  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableInverseDepthDetector"])
  {
    CV3DPlaneDetectionParametersSetInverseDepthDetector();
    CV3DPlaneDetectionParametersSetMinimumCellSize();
    CV3DPlaneDetectionParametersSetPlaneFitThreshold();
    CV3DPlaneDetectionParametersSetMinDepthConfidence();
    CV3DPlaneDetectionParametersSetMinNormalDotProduct();
    CV3DPlaneDetectionParametersSetMinClusterSize();
  }

  return v2;
}

void *PlaneDetectionSession::PlaneDetectionSession(void *a1, uint64_t a2, const PlaneDetectionConfiguration *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  a1[1] = ExtractParams(a3);
  *a1 = ExtractConfig(a3);
  err = 0;
  v11 = CV3DPlaneDetectionSessionCreateWithConfig();
  a1[2] = v11;
  if (!v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v21 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v22 = _ARLogGeneral();
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = CFErrorCopyDescription(err);
        v24 = "Error initializing surface detection: %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v25, v26, v24, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = CFErrorCopyDescription(err);
      v24 = "Error: Error initializing surface detection: %@";
      v25 = v23;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    CFRelease(err);
    goto LABEL_34;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = ___ZN21PlaneDetectionSessionC2EP15CV3DSLAMSessionRK27PlaneDetectionConfigurationU13block_pointerFvPK27CV3DPlaneDetectionPlaneListEU13block_pointerFvPK37CV3DPlaneDetectionSingleShotPlaneListE_block_invoke;
  v38[3] = &__block_descriptor_40_e28_v80__0____CFUUID__8____4__16l;
  v38[4] = a2;
  v12 = MEMORY[0x1C691B4C0](v38);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ___ZN21PlaneDetectionSessionC2EP15CV3DSLAMSessionRK27PlaneDetectionConfigurationU13block_pointerFvPK27CV3DPlaneDetectionPlaneListEU13block_pointerFvPK37CV3DPlaneDetectionSingleShotPlaneListE_block_invoke_2;
  v37[3] = &__block_descriptor_40_e19_v16__0____CFUUID__8l;
  v37[4] = a2;
  v13 = MEMORY[0x1C691B4C0](v37);
  if (CV3DPlaneDetectionSessionSetAnchoringFunctors())
  {
    goto LABEL_21;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    PlaneDetectionSession::PlaneDetectionSession();
  }

  v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v15 = _ARLogGeneral();
  v16 = v15;
  if (v14 == 1)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = CFErrorCopyDescription(err);
      *buf = 138412290;
      v41 = v17;
      v18 = "Error setting anchoring functors: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v27 = CFErrorCopyDescription(err);
    *buf = 138412290;
    v41 = v27;
    v18 = "Error: Error setting anchoring functors: %@";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }

  CFRelease(err);
LABEL_21:
  if ((CV3DPlaneDetectionSessionRegisterUpdateCallback() & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v29 = _ARLogGeneral();
    v30 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = CFErrorCopyDescription(err);
        *buf = 138412290;
        v41 = v31;
        v32 = "Error registering update callback: %@";
        v33 = v30;
        v34 = OS_LOG_TYPE_ERROR;
LABEL_29:
        _os_log_impl(&dword_1C241C000, v33, v34, v32, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v35 = CFErrorCopyDescription(err);
      *buf = 138412290;
      v41 = v35;
      v32 = "Error: Error registering update callback: %@";
      v33 = v30;
      v34 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    CFRelease(err);
  }

  if (v10)
  {
    CV3DPlaneDetectionSessionSetSingleShotPlanesCallback();
  }

LABEL_34:
  return a1;
}

void PlaneDetectionSession::~PlaneDetectionSession(PlaneDetectionSession *this)
{
  CV3DPlaneDetectionConfigurationRelease();
  CV3DPlaneDetectionParametersRelease();
  CV3DPlaneDetectionSessionRelease();
}

void PlaneDetectionSession::PushSlamState(PlaneDetectionSession *this, const CV3DSLAMStateContext *a2)
{
  CV3DPlaneDetectionSlamMetadataCreateFromSlamState();
  CV3DPlaneDetectionPushSlamMetadata();
  CV3DPlaneDetectionSlamMetadataRelease();
}

uint64_t PlaneDetectionSession::PushSemanticsAndNormals(PlaneDetectionSession *this, ARSegmentationData *a2, simd_float4x4 a3, simd_float3x3 a4, double a5)
{
  v5 = a2;
  [(ARSegmentationData *)v5 timestamp];
  [(ARSegmentationData *)v5 segmentationBuffer];
  [(ARSegmentationData *)v5 confidenceBuffer];
  [(ARSegmentationData *)v5 normalsBuffer];
  CV3DPlaneDetectionSemanticFrameCreate();
  CV3DPlaneDetectionPushSemanticFrame();
  CV3DPlaneDetectionSemanticFrameRelease();

  return 1;
}

uint64_t PlaneDetectionSession::PushDepthWithSemantics(PlaneDetectionSession *this, ARMLDepthData *a2, ARSegmentationData *a3, simd_float4x4 a4, simd_float3x3 a5, double a6)
{
  v7 = a2;
  v8 = a3;
  [(ARSegmentationData *)v8 timestamp];
  [(ARMLDepthData *)v7 singleFrameDepthBuffer];
  [(ARMLDepthData *)v7 confidenceBuffer];
  [(ARMLDepthData *)v7 normalsBuffer];
  [(ARSegmentationData *)v8 maskedSemanticsSampledForDepth];
  [(ARSegmentationData *)v8 confidenceSampledForDepth];
  CV3DPlaneDetectionDepthAndSemanticFrameCreate();
  CV3DPlaneDetectionPushDepthAndSemanticFrame();
  CV3DPlaneDetectionDepthAndSemanticFrameRelease();

  return 1;
}

uint64_t PlaneDetectionSession::PushJasperPointCloud(uint64_t a1, void *a2)
{
  v2 = a2;
  CV3DPlaneDetectionDepthCameraFrameCreateFromAD();
  CV3DPlaneDetectionPushSparseDepthFrame();
  CV3DPlaneDetectionDepthCameraFrameRelease();

  return 1;
}

id PlaneDetectionSession::SerializePlanes(PlaneDetectionSession *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_new();
  if (CV3DPlaneDetectionSerialize())
  {
    v2 = 0;
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    PlaneDetectionSession::PlaneDetectionSession();
  }

  v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v4 = _ARLogGeneral();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = CFErrorCopyDescription(0);
      v6 = "Failed to serialize surface data: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v7, v8, v6, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = CFErrorCopyDescription(0);
    v6 = "Error: Failed to serialize surface data: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  CFRelease(0);
  v2 = v1;
  v1 = 0;
LABEL_12:

  return v1;
}

void PlaneDetectionSession::LoadPlanes(PlaneDetectionSession *this, const __CFData *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((CV3DPlaneDetectionLoadMap() & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      PlaneDetectionSession::PlaneDetectionSession();
    }

    v2 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v3 = _ARLogGeneral();
    v4 = v3;
    if (v2 == 1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = CFErrorCopyDescription(0);
        v5 = "Failed to load surface data: %@";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v6, v7, v5, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = CFErrorCopyDescription(0);
      v5 = "Error: Failed to load surface data: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }

    CFRelease(0);
  }
}

void PlaneDetectionSession::ErasePlanes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 identifier];
          v10 = [v9 ar_createCFUUIDRef];

          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  CV3DPlaneDetectionErasePlaneDetections();
  CFRelease(Mutable);
}

uint64_t PlaneDetectionSession::UpdateConfiguration(PlaneDetectionSession *this, const PlaneDetectionConfiguration *a2)
{
  CV3DPlaneDetectionConfigurationRelease();
  Config = ExtractConfig(a2);
  *this = Config;
  v5 = *(this + 2);

  return MEMORY[0x1EEE31C18](v5, Config, 0);
}

uint64_t PlaneDetectionSession::DidParametersOrConfigurationChanged(PlaneDetectionSession *this, const PlaneDetectionConfiguration *a2)
{
  ExtractParams(a2);
  ExtractConfig(a2);
  v3 = CV3DPlaneDetectionParametersEqualParameters() ^ 1;
  v4 = CV3DPlaneDetectionConfigurationEqualConfigurations();
  CV3DPlaneDetectionConfigurationRelease();
  CV3DPlaneDetectionParametersRelease();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 256;
  }

  return v5 | v3;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_23()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_23()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

ARRaycastResult *raycastResultFromNewAPI(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  *v4.i64 = ARVisionToRenderingCoordinateTransform();
  v33 = v4;
  v35 = v5;
  v29 = v7;
  v31 = v6;
  CV3DRaycastResultTransformationToWorld();
  v8 = 0;
  v45 = v9;
  v46 = v10;
  v47 = v11;
  v48 = v12;
  do
  {
    *(&v49 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v45 + v8))), v35, *&v45.f32[v8 / 4], 1), v31, *(&v45 + v8), 2), v29, *(&v45 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v34 = v49;
  v36 = v50;
  v30 = v52;
  v32 = v51;
  *v13.i64 = ARRenderingToVisionCoordinateTransform();
  v14 = 0;
  v45 = v13;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  do
  {
    *(&v49 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v45 + v14))), v36, *&v45.f32[v14 / 4], 1), v32, *(&v45 + v14), 2), v30, *(&v45 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v18 = 0;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  do
  {
    *(&v49 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*(&v45 + v18))), a2, *&v45.f32[v18 / 4], 1), a3, *(&v45 + v18), 2), a4, *(&v45 + v18), 3);
    v18 += 16;
  }

  while (v18 != 64);
  v42 = *v51.i64;
  v44 = *v52.i64;
  v38 = *v49.i64;
  v40 = *v50.i64;
  v19 = CV3DRaycastResultOriginatedFrom();
  v20 = CV3DRaycastResultExtentChecked() == *MEMORY[0x1E698BC50];
  if (v19 == *MEMORY[0x1E698BC68])
  {
    v21 = v20;
  }

  else
  {
    v21 = 2;
  }

  ResultOrientation = CV3DRaycastGetResultOrientation();
  v23 = 1;
  if (ResultOrientation != *MEMORY[0x1E698BC60])
  {
    v23 = 2;
  }

  if (ResultOrientation == *MEMORY[0x1E698BC58])
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  v25 = [[ARRaycastResult alloc] initWithWorldTransform:v21 target:v24 targetAlignment:v38, v40, v42, v44];
  v26 = CV3DRaycastResultPlaneIdentifier();
  if (v26)
  {
    v27 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v26];
    [(ARRaycastResult *)v25 setAnchorIdentifier:v27];
    CFRelease(v26);
  }

  return v25;
}

id raycastResultsFromNewAPI(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, void *a6)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a6;
  v7 = objc_opt_new();
  for (i = 0; i < CV3DRayCastResultsLength(); ++i)
  {
    CV3DRayCastResultAtIndex();
    v9 = raycastResultFromNewAPI(a1, a2, a3, a4);
    [v7 addObject:v9];
  }

  if ([v6 target] == 2)
  {
    v10 = [v7 firstObject];
    [v10 setTarget:2];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

    v7 = v11;
  }

  return v7;
}

id ARRaycastResultsDictionaryFrom(const CV3DRaycastResultMap *a1, simd_float4x4 a2)
{
  v15 = CV3DRayCastResultMapLength();
  if (v15)
  {
    v3 = objc_opt_new();
    theArray = MEMORY[0x1C6918D20](a1);
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v6 = a1;
      CV3DRayCastResultListFromId();
      v7 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:ValueAtIndex];
      v8 = CV3DRayCastResultsLength();
      if (v8)
      {
        for (j = 0; j != v8; ++j)
        {
          CV3DRayCastResultAtIndex();
          v10 = raycastResultFromNewAPI(a2.columns[0], a2.columns[1], a2.columns[2], a2.columns[3]);
          v11 = [v3 objectForKeyedSubscript:v7];

          if (!v11)
          {
            v12 = objc_opt_new();
            [v3 setObject:v12 forKeyedSubscript:v7];
          }

          v13 = [v3 objectForKeyedSubscript:{v7, v15}];
          [v13 addObject:v10];
        }
      }

      a1 = v6;
    }

    CFRelease(theArray);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

ARRaycastResult *ARRaycastResultFrom(CV3DHitTestResult *a1, simd_float4x4 a2)
{
  *v3.i64 = ARVisionToRenderingCoordinateTransform();
  v29 = v3;
  v31 = v4;
  v25 = v6;
  v27 = v5;
  *v7.i64 = ARMatrix4x4MakeColumnMajorTransformFromArray(a1->var1);
  v8 = 0;
  v34 = v7;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  do
  {
    *(&v38 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v34 + v8))), v31, *&v34.f32[v8 / 4], 1), v27, *(&v34 + v8), 2), v25, *(&v34 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v30 = v38;
  v32 = v39;
  v26 = v41;
  v28 = v40;
  *v12.i64 = ARRenderingToVisionCoordinateTransform();
  v13 = 0;
  v34 = v12;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  do
  {
    *(&v38 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v34 + v13))), v32, *&v34.f32[v13 / 4], 1), v28, *(&v34 + v13), 2), v26, *(&v34 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v17 = 0;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  do
  {
    *(&v38 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[0], COERCE_FLOAT(*(&v34 + v17))), a2.columns[1], *&v34.f32[v17 / 4], 1), a2.columns[2], *(&v34 + v17), 2), a2.columns[3], *(&v34 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  if (a1->var2 == 1 && (v18 = a1->var3 - 1, v18 <= 3))
  {
    v19 = qword_1C25F06E0[v18];
  }

  else
  {
    v19 = 2;
  }

  var4 = a1->var4;
  if (var4 == 4)
  {
    v21 = 2;
  }

  else
  {
    v21 = var4 == 2;
  }

  v22 = [[ARRaycastResult alloc] initWithWorldTransform:v19 target:v21 targetAlignment:*v38.i64, *v39.i64, *v40.i64, *v41.i64];
  if (a1->var5)
  {
    v23 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:?];
    [(ARRaycastResult *)v22 setAnchorIdentifier:v23];
  }

  return v22;
}

id raycastResultsFrom(CV3DHitTestResults *a1, ARRaycastQuery *a2, simd_float4x4 a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_new();
  if (a1->var1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = ARRaycastResultFrom(&a1->var0[v6], a3);
      [v5 addObject:v8];

      ++v7;
      ++v6;
    }

    while (v7 < a1->var1);
  }

  if ([(ARRaycastQuery *)v4 target:*a3.columns]== ARRaycastTargetEstimatedPlane)
  {
    v9 = [v5 firstObject];
    [v9 setTarget:2];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    v5 = v10;
  }

  return v5;
}

uint64_t intentFrom(uint64_t a1)
{
  v2 = CV3DRaycastIntentCreate();
  if (*(a1 + 72))
  {
    CV3DRaycastIntentEnableTracking();
  }

  v3 = *(a1 + 76);
  if (v3 == 1 || v3 == 3)
  {
    CV3DRaycastIntentSetConsideredGeometry();
  }

  CV3DRaycastIntentSetConsideredOrientations();
  CV3DRaycastIntentSetExtentCheckForTrackedPlanes();
  return v2;
}

uint64_t *RaycastSession::RaycastSession(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  CV3DRaycastSessionConfigurationCreate();
  if (a4)
  {
    CV3DRaycastSessionConfigurationEnableDeterministicMode();
  }

  v17 = 0;
  *a1 = CV3DRaycastSessionCreateWithConfig();
  CV3DRaycastSessionConfigurationRelease();
  if (v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v14 = v17;
    *exception = &unk_1F42076E0;
    exception[1] = v14;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke;
  v16[3] = &__block_descriptor_40_e28_v80__0____CFUUID__8____4__16l;
  v16[4] = a2;
  v8 = MEMORY[0x1C691B4C0](v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_5;
  v15[3] = &__block_descriptor_40_e19_v16__0____CFUUID__8l;
  v15[4] = a2;
  v9 = MEMORY[0x1C691B4C0](v15);
  CV3DRaycastSessionSetAnchoringFunctors();
  if (v17 || (CV3DRaycastSessionRegisterOnTrackableUpdateCallback(), v17))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = v17;
    *v11 = &unk_1F42076E0;
    v11[1] = v12;
  }

  return a1;
}

void ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if ((CV3DSLAMSessionAddAnchor() & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_cold_1();
    }

    v0 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v1 = _ARLogGeneral();
    v2 = v1;
    if (v0 == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v7 = 0;
        v3 = "Error adding anchor: %@";
        v4 = v2;
        v5 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v4, v5, v3, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v7 = 0;
      v3 = "Error: Error adding anchor: %@";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

void ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_5()
{
  v8 = *MEMORY[0x1E69E9840];
  if ((CV3DSLAMSessionRemoveAnchor() & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ___ZN14RaycastSessionC2EP15CV3DSLAMSessionU13block_pointerFvPK20CV3DRaycastResultMapEb_block_invoke_cold_1();
    }

    v0 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v1 = _ARLogGeneral();
    v2 = v1;
    if (v0 == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v7 = 0;
        v3 = "Error removing anchor: %@";
        v4 = v2;
        v5 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v4, v5, v3, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v7 = 0;
      v3 = "Error: Error removing anchor: %@";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

uint64_t RaycastSession::PushDenseFrame(RaycastSession *this, __CVBuffer *a2, __CVBuffer *a3, simd_float3x3 a4, simd_float4x4 a5)
{
  CV3DRaycastDenseFrameCreate();
  CV3DRaycastPushDenseFrame();
  return CV3DRaycastDenseFrameRelease();
}

id RaycastSession::PerformHitTest(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7;
  intentFrom(a6);
  v9 = MEMORY[0x1E695E0F0];
  v10 = CV3DRaycastSessionAttemptWithIntent();
  CV3DRaycastIntentRelease();
  if (v10 && CV3DRayCastResultsLength())
  {
    v9 = raycastResultsFromNewAPI(a1, a2, a3, a4, v10, v8);
  }

  CV3DRaycastResultListRelease();

  return v9;
}

void CFErrorRefException::~CFErrorRefException(std::exception *this)
{
  CFErrorRefException::~CFErrorRefException(this);

  JUMPOUT(0x1C691A790);
}

{
  this->__vftable = &unk_1F42076E0;
  v2 = this[1].__vftable;
  if (v2)
  {
    CFRelease(v2);
  }

  std::exception::~exception(this);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_24()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_24()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_38()
{
  if (_ARLogGeneral_onceToken_40 != -1)
  {
    _ARLogGeneral_cold_1_38();
  }

  v1 = _ARLogGeneral_logObj_40;

  return v1;
}

void ARSurfaceUseCountIsZeroCallback(void *a1, uint64_t a2)
{
  v3 = [a1 object];
  [v3 updateBufferPopulationRegistryWithReleasedSurfaceID:a2];
}

uint64_t ARBufferPopulationMonitorSignpostTypeForCaptureDevice(void *a1)
{
  v1 = a1;
  if (*MEMORY[0x1E6986950] == v1)
  {
    v2 = 1;
  }

  else if (*MEMORY[0x1E6986940] == v1)
  {
    v2 = 4;
  }

  else if (*MEMORY[0x1E6986948] == v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4 * (*MEMORY[0x1E6986930] == v1);
  }

  return v2;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2567DE0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C2568B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id visitChildren(int a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v34 = a4;
  v12 = objc_opt_new();
  v38 = a1;
  v13 = [&stru_1F4208A80 stringByPaddingToLength:a1 withString:@"\t" startingAtIndex:0];
  v36 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v34;
  v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v47;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v46 + 1) + 8 * i) intValue] == a2)
        {
          v18 = [MEMORY[0x1E696AD98] numberWithInt:v15];
          [v36 addObject:v18];
        }

        v15 = (v15 + 1);
      }

      v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v14);
  }

  if ([v36 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = v36;
    v19 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v37 = *v43;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v21 = *(*(&v42 + 1) + 8 * j);
          v22 = MEMORY[0x1E696AEC0];
          v23 = [v41 objectAtIndexedSubscript:{objc_msgSend(v21, "intValue")}];
          v24 = [v22 stringWithFormat:@"%@JOINT %@\n", v13, v23];
          [v12 appendString:v24];

          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@{\n", v13];
          [v12 appendString:v25];

          [v12 appendFormat:@"\t%@OFFSET %f %f %f\n", v13, (*(a5 + (objc_msgSend(v21, "intValue") << 6) + 48) * a7.n128_f32[0]), vmuls_lane_f32(a7.n128_f32[1], *(a5 + (objc_msgSend(v21, "intValue") << 6) + 48), 1), (a7.n128_f32[2] * *(a5 + 8 + (objc_msgSend(v21, "intValue") << 6) + 48))];
          if (a6)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@CHANNELS 3 Xposition Yposition Zposition\n", v13];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@CHANNELS 3 Xrotation Yrotation Zrotation\n", v13];
          }
          v26 = ;
          [v12 appendString:v26];

          v27 = visitChildren((v38 + 1), [v21 intValue], v41, obj, a5, a6, a7);
          [v12 appendString:v27];
          [v12 appendFormat:@"%@}\n", v13];
        }

        v19 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v19);
    }

    v28 = v35;
  }

  else
  {
    v29 = [&stru_1F4208A80 stringByPaddingToLength:v38 - 1 withString:@"\t" startingAtIndex:0];

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@End Site\n", v29];
    [v12 appendString:v30];

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@{\n", v29];
    [v12 appendString:v31];

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@\tOFFSET 0.0 0.0 0.0\n", v29];
    [v12 appendString:v32];

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@}\n", v29];
    [v12 appendString:v28];
    v13 = v29;
  }

  return v12;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_25()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_25()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void *ARC3DShapeTriangulationListCreate@<X0>(void *a1@<X8>)
{
  *a1 = 0x400000000;
  a1[1] = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  result = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  a1[2] = result;
  return result;
}

void ARC3DShapeTriangulationListDestroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  free(v2);
}

void **ARC3DShapeTriangulationListInsert(void **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == *(result + 1))
  {
    v7 = 2 * v6;
    *(result + 1) = v7;
    result[1] = malloc_type_realloc(result[1], 8 * v7, 0x2004093837F09uLL);
    result = malloc_type_realloc(v5[2], 8 * *(v5 + 1), 0x2004093837F09uLL);
    v5[2] = result;
    v6 = *v5;
  }

  *(v5[1] + v6) = a2;
  *(v5[2] + v6) = a3;
  *v5 = v6 + 1;
  return result;
}

void *ARC3DShapeTriangulationStackPush(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    a1[1] = 2 * v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * (2 * v5), 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t ARC3DShapeTriangulationStackPop(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1 - 1;
  *a1 = v2;
  return *(v1 + 8 * v2);
}

void *ARC3DNeighborSharingVertex(void *result, uint64_t a2)
{
  if (*result == a2)
  {
    v2 = 3;
    return result[v2];
  }

  if (result[1] == a2)
  {
    v2 = 4;
    return result[v2];
  }

  if (result[2] == a2)
  {
    v2 = 5;
    return result[v2];
  }

  return result;
}

uint64_t ARC3DNeighborSharingVertices(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2 || *a1 == a3)
  {
    v4 = a1[1];
    v5 = v4 == a3 || v4 == a2;
    v6 = 5;
    if (v5)
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 4;
  }

  return a1[v6];
}