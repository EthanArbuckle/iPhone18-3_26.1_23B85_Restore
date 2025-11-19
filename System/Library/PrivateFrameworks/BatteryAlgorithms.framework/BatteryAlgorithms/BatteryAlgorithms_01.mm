size_t *std::vector<std::vector<double>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v7, *a3, a3[1], (a3[1] - *a3) >> 3);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<double>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<SmartBatteryData>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_241A97340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<SmartBatteryData>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<double>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *a3, a3[1], (a3[1] - *a3) >> 3);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double const*,double const*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *AdaptiveOcvAlgo::CCSOCLinearModel::pushOCVPOR(AdaptiveOcvAlgo::CCSOCLinearModel *this, const ConfigurationOCV *a2)
{
  result = memcpy(this, a2, 0x1028uLL);
  *(this + 4128) = 1;
  return result;
}

void *AdaptiveOcvAlgo::CCSOCLinearModel::pushOCVSelected(AdaptiveOcvAlgo::CCSOCLinearModel *this, const ConfigurationOCV *a2)
{
  result = memcpy(this + 4136, a2, 0x1028uLL);
  *(this + 8264) = 1;
  return result;
}

double AdaptiveOcvAlgo::CoverageScoreParam::calculateCoverageScoreSOC(AdaptiveOcvAlgo *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 4264);
  v6 = 0.0;
  if (v5)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = v8;
      v11 = v8 / v5;
      v12 = AdaptiveOcvAlgo::cdf(a1, (v8 + 1) / v5, *(a4 + 4184), *(a4 + 4192));
      v14 = AdaptiveOcvAlgo::cdf(v13, v11, *(a4 + 4184), *(a4 + 4192));
      v5 = *(a4 + 4264);
      v15 = vcvtmd_u64_f64(v10 * 100.0 / v5);
      LODWORD(v16) = vcvtmd_u64_f64(v9 * 100.0 / v5);
      v17 = 0.0;
      if (v15 < v16)
      {
        v18 = (a2 + 4 * v15);
        v19 = v16 - v15;
        do
        {
          v20 = *v18++;
          v17 = v17 + v20;
          --v19;
        }

        while (v19);
      }

      v21 = fmax(*(a2 + 21088), 1.0);
      v6 = v6 + (v12 - v14 - v17 / v21) * (v12 - v14 - v17 / v21);
      v8 = v9;
    }

    while (v9 < v5);
  }

  return fmin(exp(-fmax(*(a4 + 4240) + sqrt(v6 / 100.0) * *(a4 + 4232), 0.0)) / *(a4 + 4248), 1.0);
}

void AdaptiveOcvAlgo::CoverageScoreParam::calculateCoverageScore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = -1.0;
  if (*(v6 + 12472) == 1)
  {
    v8 = v4;
    v9 = v3;
    memcpy(v20, v3, sizeof(v20));
    v10 = memcpy(__dst, v8, sizeof(__dst));
    v12 = AdaptiveOcvAlgo::CoverageScoreParam::calculateCoverageScoreSOC(v10, v20, v11, __dst);
    *(v5 + 8) = v12;
    v13 = fmin(v9[5272] / v8[532], 1.0);
    *(v5 + 16) = v13;
    __asm { FMOV            V2.2D, #1.0 }

    *(v5 + 24) = _Q2;
    v7 = v12 * v13;
  }

  *v5 = v7;
}

AdaptiveOcvAlgo::MLOCVModel *AdaptiveOcvAlgo::MLOCVModel::MLOCVModel(AdaptiveOcvAlgo::MLOCVModel *this)
{
  bzero(this, 0x2D8uLL);
  return this;
}

{
  bzero(this, 0x2D8uLL);
  return this;
}

void AugmentedBatteryHealthLib::initParametersV53eATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB17C0;
  v17 = unk_241AB17D0;
  v18 = xmmword_241AB17E0;
  *__p = unk_241AB17F0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB1800;
  v25 = unk_241AB1810;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB15C0;
  v29 = unk_241AB15D0;
  *v30 = xmmword_241AB15E0;
  v31 = unk_241AB15F0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB1600;
  v61 = unk_241AB1610;
  v62 = xmmword_241AB1620;
  v63 = unk_241AB1630;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB1640;
  v57 = unk_241AB1650;
  v58 = xmmword_241AB1660;
  v59 = unk_241AB1670;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB1680;
  v53 = unk_241AB1690;
  v54 = xmmword_241AB16A0;
  v55 = unk_241AB16B0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB16C0;
  v49 = unk_241AB16D0;
  v50 = xmmword_241AB16E0;
  v51 = unk_241AB16F0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB1700;
  v45 = unk_241AB1710;
  v46 = xmmword_241AB1720;
  v47 = unk_241AB1730;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB1740;
  v41 = unk_241AB1750;
  v42 = xmmword_241AB1760;
  v43 = unk_241AB1770;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB1780;
  v37 = unk_241AB1790;
  v38 = xmmword_241AB17A0;
  v39 = unk_241AB17B0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB17C0;
  v61 = unk_241AB17D0;
  v62 = xmmword_241AB17E0;
  v63 = unk_241AB17F0;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB1800;
  v27[1] = unk_241AB1810;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB1820;
  v57 = unk_241AB1830;
  v58 = xmmword_241AB1840;
  v59 = unk_241AB1850;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB1860;
  v53 = unk_241AB1870;
  v54 = xmmword_241AB1880;
  v55 = unk_241AB1890;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB18A0;
  v49 = unk_241AB18B0;
  v50 = xmmword_241AB18C0;
  v51 = unk_241AB18D0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB18E0;
  v45 = unk_241AB18F0;
  v46 = xmmword_241AB1900;
  v47 = unk_241AB1910;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB1920;
  v41 = unk_241AB1930;
  v42 = xmmword_241AB1940;
  v43 = unk_241AB1950;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB1960;
  v37 = *algn_241AB1970;
  v38 = xmmword_241AB1980;
  v39 = unk_241AB1990;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB19E0;
  v20[1] = unk_241AB19F0;
  v20[2] = xmmword_241AB1A00;
  *v16 = xmmword_241AB19A0;
  v17 = unk_241AB19B0;
  v18 = xmmword_241AB19C0;
  *__p = unk_241AB19D0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB1A18;
  v61 = unk_241AB1A28;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A982A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A98360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double> const*,std::vector<double> const*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, const AugmentedBatteryHealthLib::RdcParam *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  AugmentedBatteryHealthLib::RdcParam::RdcParam((a1 + 80), a3);
  v12 = *a4;
  v13 = a4[1];
  *(a1 + 216) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = v13;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 216, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 240, *(a5 + 24), *(a5 + 32), (*(a5 + 32) - *(a5 + 24)) >> 3);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 264, *(a5 + 48), *(a5 + 56), (*(a5 + 56) - *(a5 + 48)) >> 3);
  v14 = *(a5 + 88);
  *(a1 + 288) = *(a5 + 72);
  *(a1 + 304) = v14;
  *(a1 + 320) = *a6;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 328, *(a6 + 8), *(a6 + 16), (*(a6 + 16) - *(a6 + 8)) >> 3);
  *(a1 + 352) = *(a6 + 32);
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 368, *(a6 + 48), *(a6 + 56), (*(a6 + 56) - *(a6 + 48)) >> 3);
  *(a1 + 392) = *(a6 + 72);
  return a1;
}

void sub_241A985C4(_Unwind_Exception *a1)
{
  v4 = v1[41];
  if (v4)
  {
    v1[42] = v4;
    operator delete(v4);
  }

  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(v2);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam((v1 + 10));
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(v1);
  _Unwind_Resume(a1);
}

void sub_241A98640()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 40) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x241A98630);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241A986D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

AugmentedBatteryHealthLib::RdcParam *AugmentedBatteryHealthLib::RdcParam::RdcParam(AugmentedBatteryHealthLib::RdcParam *this, const AugmentedBatteryHealthLib::RdcParam *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(this + 56, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  return this;
}

void sub_241A987C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 40) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(AugmentedBatteryHealthLib::SOCOCVParam *this)
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

void AugmentedBatteryHealthLib::RdcParam::~RdcParam(AugmentedBatteryHealthLib::RdcParam *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v5 = (this + 56);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(AugmentedBatteryHealthLib::QmaxParam *this)
{
  v4 = (this + 56);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AugmentedBatteryHealthLib::fetchParameter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) != 7 || (**a1 == 1634100548 ? (v19 = *(*a1 + 3) == 1953264993) : (v19 = 0), !v19))
    {
      if (*(a1 + 8) != 7 || (**a1 == 1697854806 ? (v20 = *(*a1 + 3) == 1280590181) : (v20 = 0), !v20))
      {
        if (*(a1 + 8) != 7 || (**a1 == 1697854806 ? (v21 = *(*a1 + 3) == 1397703525) : (v21 = 0), !v21))
        {
          if (*(a1 + 8) == 7)
          {
            if (**a1 == 1882404182 && *(*a1 + 3) == 1397703536)
            {
              goto LABEL_89;
            }

            if ((v12 & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (*(a1 + 8) != 7 || (**a1 == 1882404182 ? (v23 = *(*a1 + 3) == 1280590192) : (v23 = 0), !v23))
          {
            if (*(a1 + 8) != 7)
            {
              goto LABEL_56;
            }

            v18 = *a1;
LABEL_52:
            v24 = *v18;
            v25 = *(v18 + 3);
            if (v24 == 1697920342 && v25 == 1280590181)
            {
              AugmentedBatteryHealthLib::initParametersV54eATL(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8D99C0, &unk_27E8D9CE8, 0x65uLL);
              v48 = *a5;
              if (*a5)
              {
                a5[1] = v48;
                operator delete(v48);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8D9CE8, &unk_27E8DA010, 0x65uLL);
              v49 = a5[3];
              if (v49)
              {
                a5[4] = v49;
                operator delete(v49);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV54eATL;
              goto LABEL_134;
            }

LABEL_56:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V54eLGC"))
            {
              AugmentedBatteryHealthLib::initParametersV54eLGC(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E86CA58, &unk_27E86CD80, 0x65uLL);
              v27 = *a5;
              if (*a5)
              {
                a5[1] = v27;
                operator delete(v27);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E86CD80, &unk_27E86D0A8, 0x65uLL);
              v28 = a5[3];
              if (v28)
              {
                a5[4] = v28;
                operator delete(v28);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV54eLGC;
LABEL_134:
              *(a4 + 24) = *v30;
              return FaultParameter;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V54pATL"))
            {
              AugmentedBatteryHealthLib::initParametersV54pATL(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27EA264B0, &unk_27EA267D8, 0x65uLL);
              v31 = *a5;
              if (*a5)
              {
                a5[1] = v31;
                operator delete(v31);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27EA267D8, &unk_27EA26B00, 0x65uLL);
              v32 = a5[3];
              if (v32)
              {
                a5[4] = v32;
                operator delete(v32);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV54pATL;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V54pLGC"))
            {
              AugmentedBatteryHealthLib::initParametersV54pLGC(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E92E380, &unk_27E92E6A8, 0x65uLL);
              v35 = *a5;
              if (*a5)
              {
                a5[1] = v35;
                operator delete(v35);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E92E6A8, &unk_27E92E9D0, 0x65uLL);
              v36 = a5[3];
              if (v36)
              {
                a5[4] = v36;
                operator delete(v36);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV54pLGC;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V57ATL"))
            {
              AugmentedBatteryHealthLib::initParametersV57ATL(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27EA5B838, &unk_27EA5BB60, 0x65uLL);
              v42 = *a5;
              if (*a5)
              {
                a5[1] = v42;
                operator delete(v42);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27EA5BB60, &unk_27EA5BE88, 0x65uLL);
              v43 = a5[3];
              if (v43)
              {
                a5[4] = v43;
                operator delete(v43);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV57ATL;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V57COS"))
            {
              AugmentedBatteryHealthLib::initParametersV57COS(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8A3258, &unk_27E8A3580, 0x65uLL);
              v46 = *a5;
              if (*a5)
              {
                a5[1] = v46;
                operator delete(v46);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8A3580, &unk_27E8A38A8, 0x65uLL);
              v47 = a5[3];
              if (v47)
              {
                a5[4] = v47;
                operator delete(v47);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV57COS;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V59ATL"))
            {
              AugmentedBatteryHealthLib::initParametersV59ATL(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E56E948, &unk_27E56EC70, 0x65uLL);
              v50 = *a5;
              if (*a5)
              {
                a5[1] = v50;
                operator delete(v50);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E56EC70, &unk_27E56EF98, 0x65uLL);
              v51 = a5[3];
              if (v51)
              {
                a5[4] = v51;
                operator delete(v51);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV59ATL;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "V59LGC"))
            {
              AugmentedBatteryHealthLib::initParametersV59LGC(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E5A4968, &unk_27E5A4C90, 0x65uLL);
              v52 = *a5;
              if (*a5)
              {
                a5[1] = v52;
                operator delete(v52);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E5A4C90, &unk_27E5A4FB8, 0x65uLL);
              v53 = a5[3];
              if (v53)
              {
                a5[4] = v53;
                operator delete(v53);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterV59LGC;
              goto LABEL_134;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "D23ATL"))
            {
              AugmentedBatteryHealthLib::initParametersD23ATL(&v63);
              v58 = a2;
              v59 = a3;
              v60 = a4;
              v61 = a5;
              v62 = a6;
              std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
              std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8D8BF0, &unk_27E8D8F18, 0x65uLL);
              v54 = *a5;
              if (*a5)
              {
                a5[1] = v54;
                operator delete(v54);
                *a5 = 0;
                a5[1] = 0;
                a5[2] = 0;
              }

              *a5 = v63;
              a5[2] = v64;
              v63 = 0uLL;
              v64 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8D8F18, &unk_27E8D9240, 0x65uLL);
              v55 = a5[3];
              if (v55)
              {
                a5[4] = v55;
                operator delete(v55);
                a5[3] = 0;
                a5[4] = 0;
                a5[5] = 0;
              }

              FaultParameter = 0;
              *(a5 + 3) = v63;
              a5[5] = v64;
              v30 = &gACAMCommonParameterD23ATL;
              goto LABEL_134;
            }

            if (*(a1 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v57, *a1, *(a1 + 8));
            }

            else
            {
              v57 = *a1;
            }

            FaultParameter = AugmentedBatteryHealthLib::fetchFaultParameter(&v57, a2, a3, a4, a5, a6);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              v39 = v57.__r_.__value_.__r.__words[0];
              goto LABEL_88;
            }

            return FaultParameter;
          }

LABEL_100:
          AugmentedBatteryHealthLib::initParametersV53pATL(&v63);
          v58 = a2;
          v59 = a3;
          v60 = a4;
          v61 = a5;
          v62 = a6;
          std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
          v63 = 0uLL;
          v64 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E8067B0, &unk_27E806AD8, 0x65uLL);
          v44 = *a5;
          if (*a5)
          {
            a5[1] = v44;
            operator delete(v44);
            *a5 = 0;
            a5[1] = 0;
            a5[2] = 0;
          }

          *a5 = v63;
          a5[2] = v64;
          v63 = 0uLL;
          v64 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E806AD8, &unk_27E806E00, 0x65uLL);
          v45 = a5[3];
          if (v45)
          {
            a5[4] = v45;
            operator delete(v45);
            a5[3] = 0;
            a5[4] = 0;
            a5[5] = 0;
          }

          FaultParameter = 0;
          *(a5 + 3) = v63;
          a5[5] = v64;
          v30 = &gACAMCommonParameterV53pATL;
          goto LABEL_134;
        }

LABEL_80:
        AugmentedBatteryHealthLib::initParametersV53eCOS(&v63);
        v58 = a2;
        v59 = a3;
        v60 = a4;
        v61 = a5;
        v62 = a6;
        std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
        v63 = 0uLL;
        v64 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E924000, &unk_27E924328, 0x65uLL);
        v37 = *a5;
        if (*a5)
        {
          a5[1] = v37;
          operator delete(v37);
          *a5 = 0;
          a5[1] = 0;
          a5[2] = 0;
        }

        *a5 = v63;
        a5[2] = v64;
        v63 = 0uLL;
        v64 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E924328, &unk_27E924650, 0x65uLL);
        v38 = a5[3];
        if (v38)
        {
          a5[4] = v38;
          operator delete(v38);
          a5[3] = 0;
          a5[4] = 0;
          a5[5] = 0;
        }

        FaultParameter = 0;
        *(a5 + 3) = v63;
        a5[5] = v64;
        v30 = &gACAMCommonParameterV53eCOS;
        goto LABEL_134;
      }

LABEL_68:
      AugmentedBatteryHealthLib::initParametersV53eATL(&v63);
      v58 = a2;
      v59 = a3;
      v60 = a4;
      v61 = a5;
      v62 = a6;
      std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
      v63 = 0uLL;
      v64 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E970250, &unk_27E970578, 0x65uLL);
      v33 = *a5;
      if (*a5)
      {
        a5[1] = v33;
        operator delete(v33);
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
      }

      *a5 = v63;
      a5[2] = v64;
      v63 = 0uLL;
      v64 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E970578, &unk_27E9708A0, 0x65uLL);
      v34 = a5[3];
      if (v34)
      {
        a5[4] = v34;
        operator delete(v34);
        a5[3] = 0;
        a5[4] = 0;
        a5[5] = 0;
      }

      FaultParameter = 0;
      *(a5 + 3) = v63;
      a5[5] = v64;
      v30 = &gACAMCommonParameterV53eATL;
      goto LABEL_134;
    }

    std::string::__init_copy_ctor_external(&v65, *a1, 7uLL);
  }

  else
  {
    if (v12 != 7)
    {
      goto LABEL_56;
    }

    if (*a1 != 1634100548 || *(a1 + 3) != 1953264993)
    {
      if (*a1 != 1697854806 || *(a1 + 3) != 1280590181)
      {
        if (*a1 != 1697854806 || *(a1 + 3) != 1397703525)
        {
          if (*a1 != 1882404182 || *(a1 + 3) != 1397703536)
          {
            if (*a1 != 1882404182 || *(a1 + 3) != 1280590192)
            {
              v18 = a1;
              goto LABEL_52;
            }

            goto LABEL_100;
          }

LABEL_89:
          AugmentedBatteryHealthLib::initParametersV53pCOS(&v63);
          v58 = a2;
          v59 = a3;
          v60 = a4;
          v61 = a5;
          v62 = a6;
          std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(&v58, &v63);
          std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(&v63);
          v63 = 0uLL;
          v64 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E9F1100, &unk_27E9F1428, 0x65uLL);
          v40 = *a5;
          if (*a5)
          {
            a5[1] = v40;
            operator delete(v40);
            *a5 = 0;
            a5[1] = 0;
            a5[2] = 0;
          }

          *a5 = v63;
          a5[2] = v64;
          v63 = 0uLL;
          v64 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v63, &unk_27E9F1428, &unk_27E9F1750, 0x65uLL);
          v41 = a5[3];
          if (v41)
          {
            a5[4] = v41;
            operator delete(v41);
            a5[3] = 0;
            a5[4] = 0;
            a5[5] = 0;
          }

          FaultParameter = 0;
          *(a5 + 3) = v63;
          a5[5] = v64;
          v30 = &gACAMCommonParameterV53pCOS;
          goto LABEL_134;
        }

        goto LABEL_80;
      }

      goto LABEL_68;
    }

    v65 = *a1;
  }

  FaultParameter = AugmentedBatteryHealthLib::fetchdefaultParameter(&v65, a2, a3, a4, a5, a6);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    v39 = v65.__r_.__value_.__r.__words[0];
LABEL_88:
    operator delete(v39);
  }

  return FaultParameter;
}

void sub_241A99734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t AugmentedBatteryHealthLib::fetchdefaultParameter(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x277D85DE8];
  LODWORD(__dst[0]) = 1000;
  *v31 = xmmword_241AB1A90;
  v32 = 0x3FF0000000000000;
  memset(&__dst[1], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__dst[1], v31, &v33, 3uLL);
  *&v37 = 0xC800000064;
  DWORD2(v37) = 300;
  memset(&__dst[4], 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__dst[4], &v37, &v37 + 12, 3uLL);
  v49 = xmmword_241AB1AA8;
  v50 = 0x3FE0000000000000;
  memset(v28, 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v28, &v49, &v51, 3uLL);
  v47 = 0x3FE0000000000000;
  v46 = xmmword_241AB1AA8;
  memset(&v28[24], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[24], &v46, &v48, 3uLL);
  v44 = 0x3FE0000000000000;
  v43 = xmmword_241AB1AA8;
  memset(&v28[48], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[48], &v43, &v45, 3uLL);
  memset(&__dst[7], 0, 24);
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&__dst[7], v28, &v28[72], 3uLL);
  *a2 = __dst[0];
  v11 = *(a2 + 8);
  if (v11)
  {
    *(a2 + 16) = v11;
    operator delete(v11);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  v12 = *(a2 + 32);
  *(a2 + 8) = *&__dst[1];
  *(a2 + 24) = __dst[3];
  memset(&__dst[1], 0, 24);
  if (v12)
  {
    *(a2 + 40) = v12;
    operator delete(v12);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 32) = *&__dst[4];
  *(a2 + 48) = __dst[6];
  memset(&__dst[4], 0, 24);
  std::vector<std::vector<double>>::__vdeallocate((a2 + 56));
  *(a2 + 56) = *&__dst[7];
  *(a2 + 72) = __dst[9];
  memset(&__dst[7], 0, 24);
  v40 = &__dst[7];
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v40);
  if (__dst[4])
  {
    __dst[5] = __dst[4];
    operator delete(__dst[4]);
  }

  if (__dst[1])
  {
    __dst[2] = __dst[1];
    operator delete(__dst[1]);
  }

  for (i = 0; i != -72; i -= 24)
  {
    v14 = *&v28[i + 48];
    if (v14)
    {
      *&v28[i + 56] = v14;
      operator delete(v14);
    }
  }

  *v28 = 0xC8000003E8;
  v49 = xmmword_241AB1A90;
  v50 = 0x3FF0000000000000;
  memset(&v28[8], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[8], &v49, &v51, 3uLL);
  v40 = 0xC800000064;
  v41 = 300;
  memset(&v28[32], 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28[32], &v40, &v42, 3uLL);
  v46 = xmmword_241AB1AA8;
  v47 = 0x3FE0000000000000;
  v32 = 0;
  v31[0] = 0;
  v31[1] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v31, &v46, &v48, 3uLL);
  v44 = 0x3FE0000000000000;
  v43 = xmmword_241AB1AA8;
  v34 = 0;
  v33 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, &v43, &v45, 3uLL);
  v38 = 0x3FE0000000000000;
  v37 = xmmword_241AB1AA8;
  *v36 = 0;
  v35 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v35, &v37, &v39, 3uLL);
  memset(&v28[56], 0, 24);
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v28[56], v31, &v36[8], 3uLL);
  __dst[14] = 0x3FF0000000000000;
  *&__dst[8] = xmmword_241AB1B00;
  *&__dst[10] = unk_241AB1B10;
  *&__dst[12] = xmmword_241AB1B20;
  *__dst = xmmword_241AB1AC0;
  *&__dst[2] = unk_241AB1AD0;
  *&__dst[4] = xmmword_241AB1AE0;
  *&__dst[6] = unk_241AB1AF0;
  memset(&v28[80], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[80], __dst, &__dst[15], 0xFuLL);
  *a3 = *v28;
  v15 = a3[1];
  if (v15)
  {
    a3[2] = v15;
    operator delete(v15);
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  v16 = a3[4];
  *(a3 + 1) = *&v28[8];
  a3[3] = *&v28[24];
  memset(&v28[8], 0, 24);
  if (v16)
  {
    a3[5] = v16;
    operator delete(v16);
    a3[4] = 0;
    a3[5] = 0;
    a3[6] = 0;
  }

  *(a3 + 2) = *&v28[32];
  a3[6] = *&v28[48];
  memset(&v28[32], 0, 24);
  std::vector<std::vector<double>>::__vdeallocate(a3 + 7);
  *(a3 + 7) = *&v28[56];
  v17 = a3[10];
  a3[9] = *&v28[72];
  memset(&v28[56], 0, 24);
  if (v17)
  {
    a3[11] = v17;
    operator delete(v17);
    a3[10] = 0;
    a3[11] = 0;
    a3[12] = 0;
  }

  *(a3 + 5) = *&v28[80];
  a3[12] = *&v28[96];
  memset(&v28[80], 0, 24);
  v27 = &v28[56];
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (*&v28[32])
  {
    *&v28[40] = *&v28[32];
    operator delete(*&v28[32]);
  }

  if (*&v28[8])
  {
    *&v28[16] = *&v28[8];
    operator delete(*&v28[8]);
  }

  for (j = 0; j != -72; j -= 24)
  {
    v19 = *&v36[j - 16];
    if (v19)
    {
      *&v36[j - 8] = v19;
      operator delete(v19);
    }
  }

  *a4 = xmmword_241AB1A50;
  a4[1] = xmmword_241AB1A60;
  memcpy(__dst, &unk_241AB1B38, sizeof(__dst));
  v32 = 0;
  v31[0] = 0;
  v31[1] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v31, __dst, &v30, 0x65uLL);
  memcpy(v28, &unk_241AB1E60, sizeof(v28));
  v34 = 0;
  v33 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v28, __dst, 0x65uLL);
  *v36 = 0u;
  v35 = 0u;
  *&v36[16] = xmmword_241AB15B0;
  *&v36[32] = 0x3F50624DD2F1A9FCLL;
  v20 = *a5;
  if (*a5)
  {
    *(a5 + 8) = v20;
    operator delete(v20);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  *a5 = *v31;
  *(a5 + 16) = v32;
  v32 = 0;
  v31[1] = 0;
  v31[0] = 0;
  v21 = *(a5 + 24);
  if (v21)
  {
    *(a5 + 32) = v21;
    operator delete(v21);
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
  }

  v22 = *(a5 + 48);
  *(a5 + 24) = v33;
  *(a5 + 40) = v34;
  v34 = 0;
  v33 = 0uLL;
  if (v22)
  {
    *(a5 + 56) = v22;
    operator delete(v22);
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v22 = v33;
  }

  *(a5 + 48) = v35;
  *(a5 + 64) = *v36;
  *v36 = 0;
  v35 = 0uLL;
  *(a5 + 72) = *&v36[8];
  *(a5 + 88) = *&v36[24];
  if (v22)
  {
    *(&v33 + 1) = v22;
    operator delete(v22);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  memset(__dst, 0, 32);
  *v28 = 0;
  *&v28[8] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__dst[1], v28, &v28[16], 2uLL);
  memset(&__dst[4], 0, 40);
  v31[1] = 0;
  v31[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__dst[6], v31, &v32, 2uLL);
  __dst[9] = 0;
  *a6 = __dst[0];
  v23 = *(a6 + 8);
  if (v23)
  {
    *(a6 + 16) = v23;
    operator delete(v23);
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
  }

  v24 = *(a6 + 48);
  *(a6 + 8) = *&__dst[1];
  *(a6 + 24) = __dst[3];
  memset(&__dst[1], 0, 24);
  *(a6 + 32) = *&__dst[4];
  if (v24)
  {
    *(a6 + 56) = v24;
    operator delete(v24);
    *(a6 + 48) = 0;
    *(a6 + 56) = 0;
    *(a6 + 64) = 0;
    v24 = __dst[1];
  }

  *(a6 + 48) = *&__dst[6];
  *(a6 + 64) = __dst[8];
  memset(&__dst[6], 0, 24);
  *(a6 + 72) = __dst[9];
  if (v24)
  {
    __dst[2] = v24;
    operator delete(v24);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_241A99FD4(_Unwind_Exception *a1)
{
  v2 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t AugmentedBatteryHealthLib::fetchFaultParameter(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v50[1] = *MEMORY[0x277D85DE8];
  LODWORD(v33[0]) = 1000;
  v49 = xmmword_241AB1A70;
  v33[2] = 0;
  __p[0] = 0;
  v33[1] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33[1], &v49, v50, 2uLL);
  v48 = 0x12C00000064;
  __p[2] = 0;
  *v35 = 0;
  __p[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p[1], &v48, &v49, 2uLL);
  __asm { FMOV            V0.2D, #0.5 }

  v32 = _Q0;
  v39 = _Q0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v40, &v39, &v40, 2uLL);
  v38 = v32;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v43, &v38, &v39, 2uLL);
  v37 = v32;
  v47[0] = 0;
  v47[1] = 0;
  v46 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v46, &v37, &v38, 2uLL);
  memset(&v35[8], 0, 24);
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v35[8], &v40, &v48, 3uLL);
  *a2 = 1000;
  v16 = *(a2 + 8);
  if (v16)
  {
    *(a2 + 16) = v16;
    operator delete(v16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  v17 = *(a2 + 32);
  *(a2 + 8) = *&v33[1];
  *(a2 + 24) = __p[0];
  v33[2] = 0;
  __p[0] = 0;
  v33[1] = 0;
  if (v17)
  {
    *(a2 + 40) = v17;
    operator delete(v17);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 32) = *&__p[1];
  *(a2 + 48) = *v35;
  __p[2] = 0;
  *v35 = 0;
  __p[1] = 0;
  std::vector<std::vector<double>>::__vdeallocate((a2 + 56));
  *(a2 + 56) = *&v35[8];
  *(a2 + 72) = *&v35[24];
  memset(&v35[8], 0, 24);
  v36 = &v35[8];
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }

  if (v33[1])
  {
    v33[2] = v33[1];
    operator delete(v33[1]);
  }

  for (i = 0; i != -9; i -= 3)
  {
    v19 = v47[i - 1];
    if (v19)
    {
      v47[i] = v19;
      operator delete(v19);
    }
  }

  v33[0] = 0xC8000003E8;
  v49 = xmmword_241AB1A70;
  v33[2] = 0;
  __p[0] = 0;
  v33[1] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33[1], &v49, v50, 2uLL);
  v48 = 0x12C00000064;
  __p[2] = 0;
  *v35 = 0;
  __p[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p[1], &v48, &v49, 2uLL);
  v39 = v32;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v40, &v39, &v40, 2uLL);
  v38 = v32;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v43, &v38, &v39, 2uLL);
  memset(&v35[8], 0, 24);
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v35[8], &v40, &v46, 2uLL);
  v37 = xmmword_241AB1A80;
  memset(&v35[32], 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v35[32], &v37, &v38, 2uLL);
  *a3 = 0xC8000003E8;
  v20 = a3[1];
  if (v20)
  {
    a3[2] = v20;
    operator delete(v20);
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  v21 = a3[4];
  *(a3 + 1) = *&v33[1];
  a3[3] = __p[0];
  v33[2] = 0;
  __p[0] = 0;
  v33[1] = 0;
  if (v21)
  {
    a3[5] = v21;
    operator delete(v21);
    a3[4] = 0;
    a3[5] = 0;
    a3[6] = 0;
  }

  *(a3 + 2) = *&__p[1];
  a3[6] = *v35;
  __p[2] = 0;
  *v35 = 0;
  __p[1] = 0;
  std::vector<std::vector<double>>::__vdeallocate(a3 + 7);
  *(a3 + 7) = *&v35[8];
  v22 = a3[10];
  a3[9] = *&v35[24];
  memset(&v35[8], 0, 24);
  if (v22)
  {
    a3[11] = v22;
    operator delete(v22);
    a3[10] = 0;
    a3[11] = 0;
    a3[12] = 0;
  }

  *(a3 + 5) = *&v35[32];
  a3[12] = *&v35[48];
  memset(&v35[32], 0, 24);
  v36 = &v35[8];
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }

  if (v33[1])
  {
    v33[2] = v33[1];
    operator delete(v33[1]);
  }

  for (j = 0; j != -48; j -= 24)
  {
    v24 = *(&v43 + j);
    if (v24)
    {
      *(&v44 + j) = v24;
      operator delete(v24);
    }
  }

  *a4 = xmmword_241AB1A50;
  a4[1] = xmmword_241AB1A60;
  v40 = 0;
  memset(v33, 0, sizeof(v33));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v33, &v40, &v41, 1uLL);
  *&v49 = 0;
  memset(__p, 0, sizeof(__p));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v49, &v49 + 8, 1uLL);
  memset(v35, 0, 32);
  *&v35[32] = xmmword_241AB15B0;
  *&v35[48] = 0x3F50624DD2F1A9FCLL;
  v25 = *a5;
  if (*a5)
  {
    *(a5 + 8) = v25;
    operator delete(v25);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  *a5 = *v33;
  *(a5 + 16) = v33[2];
  memset(v33, 0, sizeof(v33));
  v26 = *(a5 + 24);
  if (v26)
  {
    *(a5 + 32) = v26;
    operator delete(v26);
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
  }

  v27 = *(a5 + 48);
  *(a5 + 24) = *__p;
  *(a5 + 40) = __p[2];
  memset(__p, 0, sizeof(__p));
  if (v27)
  {
    *(a5 + 56) = v27;
    operator delete(v27);
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v27 = __p[0];
  }

  *(a5 + 48) = *v35;
  *(a5 + 64) = *&v35[16];
  memset(v35, 0, 24);
  *(a5 + 72) = *&v35[24];
  *(a5 + 88) = *&v35[40];
  if (v27)
  {
    __p[1] = v27;
    operator delete(v27);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  memset(v33, 0, sizeof(v33));
  v40 = 0;
  v41 = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33[1], &v40, &v42, 2uLL);
  __p[1] = 0;
  __p[2] = 0;
  v49 = 0uLL;
  memset(v35, 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v35, &v49, v50, 2uLL);
  *&v35[24] = 0;
  *a6 = v33[0];
  v28 = *(a6 + 8);
  if (v28)
  {
    *(a6 + 16) = v28;
    operator delete(v28);
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
  }

  v29 = *(a6 + 48);
  *(a6 + 8) = *&v33[1];
  *(a6 + 24) = __p[0];
  v33[2] = 0;
  __p[0] = 0;
  v33[1] = 0;
  *(a6 + 32) = *&__p[1];
  if (v29)
  {
    *(a6 + 56) = v29;
    operator delete(v29);
    *(a6 + 48) = 0;
    *(a6 + 56) = 0;
    *(a6 + 64) = 0;
    v29 = v33[1];
  }

  *(a6 + 48) = *v35;
  *(a6 + 64) = *&v35[16];
  memset(v35, 0, 24);
  *(a6 + 72) = *&v35[24];
  if (v29)
  {
    v33[2] = v29;
    operator delete(v29);
  }

  v30 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

void sub_241A9A80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<int>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::vector<std::vector<double>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<SmartBatteryData>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double std::__memberwise_forward_assign[abi:ne200100]<std::tuple<AugmentedBatteryHealthLib::QmaxParam &,AugmentedBatteryHealthLib::RdcParam &,AugmentedBatteryHealthLib::NccParam &,AugmentedBatteryHealthLib::SOCOCVParam &,AugmentedBatteryHealthLib::ABHWeekly &>,std::tuple<AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly,0ul,1ul,2ul,3ul,4ul>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *v4 = *a2;
  std::vector<int>::__move_assign(v4 + 8, (a2 + 8));
  std::vector<int>::__move_assign(v4 + 32, (a2 + 32));
  std::vector<std::vector<double>>::__vdeallocate((v4 + 56));
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v5 = a1[1];
  *v5 = *(a2 + 80);
  std::vector<int>::__move_assign((v5 + 1), (a2 + 88));
  std::vector<int>::__move_assign((v5 + 4), (a2 + 112));
  std::vector<std::vector<double>>::__vdeallocate(v5 + 7);
  *(v5 + 7) = *(a2 + 136);
  v5[9] = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  std::vector<int>::__move_assign((v5 + 10), (a2 + 160));
  v6 = a1[2];
  v7 = *(a2 + 200);
  *v6 = *(a2 + 184);
  v6[1] = v7;
  v8 = a1[3];
  std::vector<int>::__move_assign(v8, (a2 + 216));
  std::vector<int>::__move_assign(v8 + 24, (a2 + 240));
  std::vector<int>::__move_assign(v8 + 48, (a2 + 264));
  v9 = *(a2 + 288);
  *(v8 + 88) = *(a2 + 304);
  *(v8 + 72) = v9;
  v10 = a1[4];
  *v10 = *(a2 + 320);
  std::vector<int>::__move_assign(v10 + 8, (a2 + 328));
  *(v10 + 32) = *(a2 + 352);
  std::vector<int>::__move_assign(v10 + 48, (a2 + 368));
  result = *(a2 + 392);
  *(v10 + 72) = result;
  return result;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,AugmentedBatteryHealthLib::QmaxParam,AugmentedBatteryHealthLib::RdcParam,AugmentedBatteryHealthLib::NccParam,AugmentedBatteryHealthLib::SOCOCVParam,AugmentedBatteryHealthLib::ABHWeekly>::~__tuple_impl(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    *(a1 + 376) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 328);
  if (v3)
  {
    *(a1 + 336) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    *(a1 + 272) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    *(a1 + 248) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    *(a1 + 224) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    *(a1 + 168) = v7;
    operator delete(v7);
  }

  v13 = (a1 + 136);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v8 = *(a1 + 112);
  if (v8)
  {
    *(a1 + 120) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    *(a1 + 96) = v9;
    operator delete(v9);
  }

  v13 = (a1 + 56);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v10 = *(a1 + 32);
  if (v10)
  {
    *(a1 + 40) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
  }

  return a1;
}

void AugmentedBatteryHealthLib::initParametersV57ATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB2388;
  v17 = unk_241AB2398;
  v18 = xmmword_241AB23A8;
  *__p = unk_241AB23B8;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB23C8;
  v25 = unk_241AB23D8;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB2188;
  v29 = unk_241AB2198;
  *v30 = xmmword_241AB21A8;
  v31 = unk_241AB21B8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB21C8;
  v61 = unk_241AB21D8;
  v62 = xmmword_241AB21E8;
  v63 = unk_241AB21F8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB2208;
  v57 = unk_241AB2218;
  v58 = xmmword_241AB2228;
  v59 = unk_241AB2238;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB2248;
  v53 = unk_241AB2258;
  v54 = xmmword_241AB2268;
  v55 = unk_241AB2278;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2288;
  v49 = unk_241AB2298;
  v50 = xmmword_241AB22A8;
  v51 = unk_241AB22B8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB22C8;
  v45 = unk_241AB22D8;
  v46 = xmmword_241AB22E8;
  v47 = unk_241AB22F8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB2308;
  v41 = unk_241AB2318;
  v42 = xmmword_241AB2328;
  v43 = unk_241AB2338;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB2348;
  v37 = unk_241AB2358;
  v38 = xmmword_241AB2368;
  v39 = unk_241AB2378;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB2388;
  v61 = unk_241AB2398;
  v62 = xmmword_241AB23A8;
  v63 = unk_241AB23B8;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB23C8;
  v27[1] = unk_241AB23D8;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB23E8;
  v57 = unk_241AB23F8;
  v58 = xmmword_241AB2408;
  v59 = unk_241AB2418;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB2428;
  v53 = unk_241AB2438;
  v54 = xmmword_241AB2448;
  v55 = unk_241AB2458;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2468;
  v49 = unk_241AB2478;
  v50 = xmmword_241AB2488;
  v51 = unk_241AB2498;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB24A8;
  v45 = unk_241AB24B8;
  v46 = xmmword_241AB24C8;
  v47 = unk_241AB24D8;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB24E8;
  v41 = unk_241AB24F8;
  v42 = xmmword_241AB2508;
  v43 = unk_241AB2518;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB2528;
  v37 = unk_241AB2538;
  v38 = xmmword_241AB2548;
  v39 = unk_241AB2558;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB25A8;
  v20[1] = unk_241AB25B8;
  v20[2] = xmmword_241AB25C8;
  *v16 = xmmword_241AB2568;
  v17 = unk_241AB2578;
  v18 = xmmword_241AB2588;
  *__p = unk_241AB2598;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB25E0;
  v61 = unk_241AB25F0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV59ATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB2800;
  v17 = unk_241AB2810;
  v18 = xmmword_241AB2820;
  *__p = unk_241AB2830;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB2840;
  v25 = unk_241AB2850;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB2600;
  v29 = unk_241AB2610;
  *v30 = xmmword_241AB2620;
  v31 = unk_241AB2630;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB2640;
  v61 = unk_241AB2650;
  v62 = xmmword_241AB2660;
  v63 = unk_241AB2670;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB2680;
  v57 = unk_241AB2690;
  v58 = xmmword_241AB26A0;
  v59 = unk_241AB26B0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB26C0;
  v53 = unk_241AB26D0;
  v54 = xmmword_241AB26E0;
  v55 = unk_241AB26F0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2700;
  v49 = unk_241AB2710;
  v50 = xmmword_241AB2720;
  v51 = unk_241AB2730;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB2740;
  v45 = unk_241AB2750;
  v46 = xmmword_241AB2760;
  v47 = unk_241AB2770;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB2780;
  v41 = unk_241AB2790;
  v42 = xmmword_241AB27A0;
  v43 = unk_241AB27B0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB27C0;
  v37 = unk_241AB27D0;
  v38 = xmmword_241AB27E0;
  v39 = unk_241AB27F0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB2800;
  v61 = unk_241AB2810;
  v62 = xmmword_241AB2820;
  v63 = unk_241AB2830;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB2840;
  v27[1] = unk_241AB2850;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB2860;
  v57 = unk_241AB2870;
  v58 = xmmword_241AB2880;
  v59 = unk_241AB2890;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB28A0;
  v53 = unk_241AB28B0;
  v54 = xmmword_241AB28C0;
  v55 = unk_241AB28D0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB28E0;
  v49 = unk_241AB28F0;
  v50 = xmmword_241AB2900;
  v51 = unk_241AB2910;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB2920;
  v45 = unk_241AB2930;
  v46 = xmmword_241AB2940;
  v47 = unk_241AB2950;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB2960;
  v41 = unk_241AB2970;
  v42 = xmmword_241AB2980;
  v43 = unk_241AB2990;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB29A0;
  v37 = *algn_241AB29B0;
  v38 = xmmword_241AB29C0;
  v39 = unk_241AB29D0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB2A20;
  v20[1] = unk_241AB2A30;
  v20[2] = xmmword_241AB2A40;
  *v16 = xmmword_241AB29E0;
  v17 = unk_241AB29F0;
  v18 = xmmword_241AB2A00;
  *__p = unk_241AB2A10;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB2A58;
  v61 = unk_241AB2A68;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV57COS(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB2C78;
  v17 = unk_241AB2C88;
  v18 = xmmword_241AB2C98;
  *__p = unk_241AB2CA8;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB2CB8;
  v25 = unk_241AB2CC8;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB2A78;
  v29 = unk_241AB2A88;
  *v30 = xmmword_241AB2A98;
  v31 = unk_241AB2AA8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB2AB8;
  v61 = unk_241AB2AC8;
  v62 = xmmword_241AB2AD8;
  v63 = unk_241AB2AE8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB2AF8;
  v57 = unk_241AB2B08;
  v58 = xmmword_241AB2B18;
  v59 = unk_241AB2B28;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB2B38;
  v53 = unk_241AB2B48;
  v54 = xmmword_241AB2B58;
  v55 = unk_241AB2B68;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2B78;
  v49 = unk_241AB2B88;
  v50 = xmmword_241AB2B98;
  v51 = unk_241AB2BA8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB2BB8;
  v45 = unk_241AB2BC8;
  v46 = xmmword_241AB2BD8;
  v47 = unk_241AB2BE8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB2BF8;
  v41 = unk_241AB2C08;
  v42 = xmmword_241AB2C18;
  v43 = unk_241AB2C28;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB2C38;
  v37 = unk_241AB2C48;
  v38 = xmmword_241AB2C58;
  v39 = unk_241AB2C68;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB2C78;
  v61 = unk_241AB2C88;
  v62 = xmmword_241AB2C98;
  v63 = unk_241AB2CA8;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB2CB8;
  v27[1] = unk_241AB2CC8;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB2CD8;
  v57 = unk_241AB2CE8;
  v58 = xmmword_241AB2CF8;
  v59 = unk_241AB2D08;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB2D18;
  v53 = unk_241AB2D28;
  v54 = xmmword_241AB2D38;
  v55 = unk_241AB2D48;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2D58;
  v49 = unk_241AB2D68;
  v50 = xmmword_241AB2D78;
  v51 = unk_241AB2D88;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB2D98;
  v45 = unk_241AB2DA8;
  v46 = xmmword_241AB2DB8;
  v47 = unk_241AB2DC8;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB2DD8;
  v41 = unk_241AB2DE8;
  v42 = xmmword_241AB2DF8;
  v43 = unk_241AB2E08;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB2E18;
  v37 = unk_241AB2E28;
  v38 = xmmword_241AB2E38;
  v39 = unk_241AB2E48;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB2E98;
  v20[1] = unk_241AB2EA8;
  v20[2] = xmmword_241AB2EB8;
  *v16 = xmmword_241AB2E58;
  v17 = unk_241AB2E68;
  v18 = xmmword_241AB2E78;
  *__p = unk_241AB2E88;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB2ED0;
  v61 = unk_241AB2EE0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9C7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV53eCOS(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB30F0;
  v17 = unk_241AB3100;
  v18 = xmmword_241AB3110;
  *__p = unk_241AB3120;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB3130;
  v25 = unk_241AB3140;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB2EF0;
  v29 = unk_241AB2F00;
  *v30 = xmmword_241AB2F10;
  v31 = unk_241AB2F20;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB2F30;
  v61 = unk_241AB2F40;
  v62 = xmmword_241AB2F50;
  v63 = unk_241AB2F60;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB2F70;
  v57 = unk_241AB2F80;
  v58 = xmmword_241AB2F90;
  v59 = unk_241AB2FA0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB2FB0;
  v53 = unk_241AB2FC0;
  v54 = xmmword_241AB2FD0;
  v55 = unk_241AB2FE0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB2FF0;
  v49 = unk_241AB3000;
  v50 = xmmword_241AB3010;
  v51 = unk_241AB3020;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3030;
  v45 = unk_241AB3040;
  v46 = xmmword_241AB3050;
  v47 = unk_241AB3060;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3070;
  v41 = unk_241AB3080;
  v42 = xmmword_241AB3090;
  v43 = unk_241AB30A0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB30B0;
  v37 = unk_241AB30C0;
  v38 = xmmword_241AB30D0;
  v39 = unk_241AB30E0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB30F0;
  v61 = unk_241AB3100;
  v62 = xmmword_241AB3110;
  v63 = unk_241AB3120;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB3130;
  v27[1] = unk_241AB3140;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB3150;
  v57 = unk_241AB3160;
  v58 = xmmword_241AB3170;
  v59 = unk_241AB3180;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3190;
  v53 = unk_241AB31A0;
  v54 = xmmword_241AB31B0;
  v55 = unk_241AB31C0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB31D0;
  v49 = unk_241AB31E0;
  v50 = xmmword_241AB31F0;
  v51 = unk_241AB3200;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3210;
  v45 = unk_241AB3220;
  v46 = xmmword_241AB3230;
  v47 = unk_241AB3240;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3250;
  v41 = unk_241AB3260;
  v42 = xmmword_241AB3270;
  v43 = unk_241AB3280;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3290;
  v37 = unk_241AB32A0;
  v38 = xmmword_241AB32B0;
  v39 = unk_241AB32C0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB3310;
  v20[1] = unk_241AB3320;
  v20[2] = xmmword_241AB3330;
  *v16 = xmmword_241AB32D0;
  v17 = unk_241AB32E0;
  v18 = xmmword_241AB32F0;
  *__p = unk_241AB3300;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB3348;
  v61 = unk_241AB3358;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9D204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV54eATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB3568;
  v17 = unk_241AB3578;
  v18 = xmmword_241AB3588;
  *__p = unk_241AB3598;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB35A8;
  v25 = unk_241AB35B8;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB3368;
  v29 = unk_241AB3378;
  *v30 = xmmword_241AB3388;
  v31 = unk_241AB3398;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB33A8;
  v61 = unk_241AB33B8;
  v62 = xmmword_241AB33C8;
  v63 = unk_241AB33D8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB33E8;
  v57 = unk_241AB33F8;
  v58 = xmmword_241AB3408;
  v59 = unk_241AB3418;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3428;
  v53 = unk_241AB3438;
  v54 = xmmword_241AB3448;
  v55 = unk_241AB3458;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB3468;
  v49 = unk_241AB3478;
  v50 = xmmword_241AB3488;
  v51 = unk_241AB3498;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB34A8;
  v45 = unk_241AB34B8;
  v46 = xmmword_241AB34C8;
  v47 = unk_241AB34D8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB34E8;
  v41 = unk_241AB34F8;
  v42 = xmmword_241AB3508;
  v43 = unk_241AB3518;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3528;
  v37 = unk_241AB3538;
  v38 = xmmword_241AB3548;
  v39 = unk_241AB3558;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB3568;
  v61 = unk_241AB3578;
  v62 = xmmword_241AB3588;
  v63 = unk_241AB3598;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB35A8;
  v27[1] = unk_241AB35B8;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB35C8;
  v57 = unk_241AB35D8;
  v58 = xmmword_241AB35E8;
  v59 = unk_241AB35F8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3608;
  v53 = unk_241AB3618;
  v54 = xmmword_241AB3628;
  v55 = unk_241AB3638;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB3648;
  v49 = unk_241AB3658;
  v50 = xmmword_241AB3668;
  v51 = unk_241AB3678;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3688;
  v45 = unk_241AB3698;
  v46 = xmmword_241AB36A8;
  v47 = unk_241AB36B8;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB36C8;
  v41 = unk_241AB36D8;
  v42 = xmmword_241AB36E8;
  v43 = unk_241AB36F8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3708;
  v37 = unk_241AB3718;
  v38 = xmmword_241AB3728;
  v39 = unk_241AB3738;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB3788;
  v20[1] = unk_241AB3798;
  v20[2] = xmmword_241AB37A8;
  *v16 = xmmword_241AB3748;
  v17 = unk_241AB3758;
  v18 = xmmword_241AB3768;
  *__p = unk_241AB3778;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB37C0;
  v61 = unk_241AB37D0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9DC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV54eLGC(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB39E0;
  v17 = unk_241AB39F0;
  v18 = xmmword_241AB3A00;
  *__p = unk_241AB3A10;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB3A20;
  v25 = unk_241AB3A30;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB37E0;
  v29 = unk_241AB37F0;
  *v30 = xmmword_241AB3800;
  v31 = unk_241AB3810;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB3820;
  v61 = unk_241AB3830;
  v62 = xmmword_241AB3840;
  v63 = unk_241AB3850;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB3860;
  v57 = unk_241AB3870;
  v58 = xmmword_241AB3880;
  v59 = unk_241AB3890;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB38A0;
  v53 = unk_241AB38B0;
  v54 = xmmword_241AB38C0;
  v55 = unk_241AB38D0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB38E0;
  v49 = unk_241AB38F0;
  v50 = xmmword_241AB3900;
  v51 = unk_241AB3910;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3920;
  v45 = unk_241AB3930;
  v46 = xmmword_241AB3940;
  v47 = unk_241AB3950;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3960;
  v41 = unk_241AB3970;
  v42 = xmmword_241AB3980;
  v43 = unk_241AB3990;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB39A0;
  v37 = unk_241AB39B0;
  v38 = xmmword_241AB39C0;
  v39 = unk_241AB39D0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB39E0;
  v61 = unk_241AB39F0;
  v62 = xmmword_241AB3A00;
  v63 = unk_241AB3A10;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB3A20;
  v27[1] = unk_241AB3A30;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB3A40;
  v57 = unk_241AB3A50;
  v58 = xmmword_241AB3A60;
  v59 = unk_241AB3A70;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3A80;
  v53 = unk_241AB3A90;
  v54 = xmmword_241AB3AA0;
  v55 = unk_241AB3AB0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB3AC0;
  v49 = unk_241AB3AD0;
  v50 = xmmword_241AB3AE0;
  v51 = unk_241AB3AF0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3B00;
  v45 = unk_241AB3B10;
  v46 = xmmword_241AB3B20;
  v47 = unk_241AB3B30;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3B40;
  v41 = unk_241AB3B50;
  v42 = xmmword_241AB3B60;
  v43 = unk_241AB3B70;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3B80;
  v37 = *algn_241AB3B90;
  v38 = xmmword_241AB3BA0;
  v39 = unk_241AB3BB0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB3C00;
  v20[1] = unk_241AB3C10;
  v20[2] = xmmword_241AB3C20;
  *v16 = xmmword_241AB3BC0;
  v17 = unk_241AB3BD0;
  v18 = xmmword_241AB3BE0;
  *__p = unk_241AB3BF0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB3C38;
  v61 = unk_241AB3C48;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9E614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV54pATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB3E58;
  v17 = unk_241AB3E68;
  v18 = xmmword_241AB3E78;
  *__p = unk_241AB3E88;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB3E98;
  v25 = unk_241AB3EA8;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB3C58;
  v29 = unk_241AB3C68;
  *v30 = xmmword_241AB3C78;
  v31 = unk_241AB3C88;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB3C98;
  v61 = unk_241AB3CA8;
  v62 = xmmword_241AB3CB8;
  v63 = unk_241AB3CC8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB3CD8;
  v57 = unk_241AB3CE8;
  v58 = xmmword_241AB3CF8;
  v59 = unk_241AB3D08;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3D18;
  v53 = unk_241AB3D28;
  v54 = xmmword_241AB3D38;
  v55 = unk_241AB3D48;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB3D58;
  v49 = unk_241AB3D68;
  v50 = xmmword_241AB3D78;
  v51 = unk_241AB3D88;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3D98;
  v45 = unk_241AB3DA8;
  v46 = xmmword_241AB3DB8;
  v47 = unk_241AB3DC8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3DD8;
  v41 = unk_241AB3DE8;
  v42 = xmmword_241AB3DF8;
  v43 = unk_241AB3E08;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3E18;
  v37 = unk_241AB3E28;
  v38 = xmmword_241AB3E38;
  v39 = unk_241AB3E48;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB3E58;
  v61 = unk_241AB3E68;
  v62 = xmmword_241AB3E78;
  v63 = unk_241AB3E88;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB3E98;
  v27[1] = unk_241AB3EA8;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB3EB8;
  v57 = unk_241AB3EC8;
  v58 = xmmword_241AB3ED8;
  v59 = unk_241AB3EE8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB3EF8;
  v53 = unk_241AB3F08;
  v54 = xmmword_241AB3F18;
  v55 = unk_241AB3F28;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB3F38;
  v49 = unk_241AB3F48;
  v50 = xmmword_241AB3F58;
  v51 = unk_241AB3F68;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB3F78;
  v45 = unk_241AB3F88;
  v46 = xmmword_241AB3F98;
  v47 = unk_241AB3FA8;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB3FB8;
  v41 = unk_241AB3FC8;
  v42 = xmmword_241AB3FD8;
  v43 = unk_241AB3FE8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB3FF8;
  v37 = unk_241AB4008;
  v38 = xmmword_241AB4018;
  v39 = unk_241AB4028;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB4078;
  v20[1] = unk_241AB4088;
  v20[2] = xmmword_241AB4098;
  *v16 = xmmword_241AB4038;
  v17 = unk_241AB4048;
  v18 = xmmword_241AB4058;
  *__p = unk_241AB4068;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB40B0;
  v61 = unk_241AB40C0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9F01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV53pATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB42D0;
  v17 = unk_241AB42E0;
  v18 = xmmword_241AB42F0;
  *__p = unk_241AB4300;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB4310;
  v25 = unk_241AB4320;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB40D0;
  v29 = unk_241AB40E0;
  *v30 = xmmword_241AB40F0;
  v31 = unk_241AB4100;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB4110;
  v61 = unk_241AB4120;
  v62 = xmmword_241AB4130;
  v63 = unk_241AB4140;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB4150;
  v57 = unk_241AB4160;
  v58 = xmmword_241AB4170;
  v59 = unk_241AB4180;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4190;
  v53 = unk_241AB41A0;
  v54 = xmmword_241AB41B0;
  v55 = unk_241AB41C0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB41D0;
  v49 = unk_241AB41E0;
  v50 = xmmword_241AB41F0;
  v51 = unk_241AB4200;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4210;
  v45 = unk_241AB4220;
  v46 = xmmword_241AB4230;
  v47 = unk_241AB4240;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB4250;
  v41 = unk_241AB4260;
  v42 = xmmword_241AB4270;
  v43 = unk_241AB4280;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4290;
  v37 = unk_241AB42A0;
  v38 = xmmword_241AB42B0;
  v39 = unk_241AB42C0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB42D0;
  v61 = unk_241AB42E0;
  v62 = xmmword_241AB42F0;
  v63 = unk_241AB4300;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB4310;
  v27[1] = unk_241AB4320;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB4330;
  v57 = unk_241AB4340;
  v58 = xmmword_241AB4350;
  v59 = unk_241AB4360;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4370;
  v53 = unk_241AB4380;
  v54 = xmmword_241AB4390;
  v55 = unk_241AB43A0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB43B0;
  v49 = unk_241AB43C0;
  v50 = xmmword_241AB43D0;
  v51 = unk_241AB43E0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB43F0;
  v45 = unk_241AB4400;
  v46 = xmmword_241AB4410;
  v47 = unk_241AB4420;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB4430;
  v41 = unk_241AB4440;
  v42 = xmmword_241AB4450;
  v43 = unk_241AB4460;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4470;
  v37 = unk_241AB4480;
  v38 = xmmword_241AB4490;
  v39 = unk_241AB44A0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB44F0;
  v20[1] = unk_241AB4500;
  v20[2] = xmmword_241AB4510;
  *v16 = xmmword_241AB44B0;
  v17 = unk_241AB44C0;
  v18 = xmmword_241AB44D0;
  *__p = unk_241AB44E0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB4528;
  v61 = unk_241AB4538;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241A9FA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV59LGC(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB4748;
  v17 = unk_241AB4758;
  v18 = xmmword_241AB4768;
  *__p = unk_241AB4778;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB4788;
  v25 = unk_241AB4798;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB4548;
  v29 = unk_241AB4558;
  *v30 = xmmword_241AB4568;
  v31 = unk_241AB4578;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB4588;
  v61 = unk_241AB4598;
  v62 = xmmword_241AB45A8;
  v63 = unk_241AB45B8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB45C8;
  v57 = unk_241AB45D8;
  v58 = xmmword_241AB45E8;
  v59 = unk_241AB45F8;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4608;
  v53 = unk_241AB4618;
  v54 = xmmword_241AB4628;
  v55 = unk_241AB4638;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB4648;
  v49 = unk_241AB4658;
  v50 = xmmword_241AB4668;
  v51 = unk_241AB4678;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4688;
  v45 = unk_241AB4698;
  v46 = xmmword_241AB46A8;
  v47 = unk_241AB46B8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB46C8;
  v41 = unk_241AB46D8;
  v42 = xmmword_241AB46E8;
  v43 = unk_241AB46F8;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4708;
  v37 = unk_241AB4718;
  v38 = xmmword_241AB4728;
  v39 = unk_241AB4738;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB4748;
  v61 = unk_241AB4758;
  v62 = xmmword_241AB4768;
  v63 = unk_241AB4778;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB4788;
  v27[1] = unk_241AB4798;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB47A8;
  v57 = unk_241AB47B8;
  v58 = xmmword_241AB47C8;
  v59 = unk_241AB47D8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB47E8;
  v53 = unk_241AB47F8;
  v54 = xmmword_241AB4808;
  v55 = unk_241AB4818;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB4828;
  v49 = unk_241AB4838;
  v50 = xmmword_241AB4848;
  v51 = unk_241AB4858;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4868;
  v45 = unk_241AB4878;
  v46 = xmmword_241AB4888;
  v47 = unk_241AB4898;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB48A8;
  v41 = unk_241AB48B8;
  v42 = xmmword_241AB48C8;
  v43 = unk_241AB48D8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB48E8;
  v37 = unk_241AB48F8;
  v38 = xmmword_241AB4908;
  v39 = unk_241AB4918;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB4968;
  v20[1] = unk_241AB4978;
  v20[2] = xmmword_241AB4988;
  *v16 = xmmword_241AB4928;
  v17 = unk_241AB4938;
  v18 = xmmword_241AB4948;
  *__p = unk_241AB4958;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB49A0;
  v61 = unk_241AB49B0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241AA042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV54pLGC(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB4BC0;
  v17 = unk_241AB4BD0;
  v18 = xmmword_241AB4BE0;
  *__p = unk_241AB4BF0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB4C00;
  v25 = unk_241AB4C10;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB49C0;
  v29 = unk_241AB49D0;
  *v30 = xmmword_241AB49E0;
  v31 = unk_241AB49F0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB4A00;
  v61 = unk_241AB4A10;
  v62 = xmmword_241AB4A20;
  v63 = unk_241AB4A30;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB4A40;
  v57 = unk_241AB4A50;
  v58 = xmmword_241AB4A60;
  v59 = unk_241AB4A70;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4A80;
  v53 = unk_241AB4A90;
  v54 = xmmword_241AB4AA0;
  v55 = unk_241AB4AB0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB4AC0;
  v49 = unk_241AB4AD0;
  v50 = xmmword_241AB4AE0;
  v51 = unk_241AB4AF0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4B00;
  v45 = unk_241AB4B10;
  v46 = xmmword_241AB4B20;
  v47 = unk_241AB4B30;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB4B40;
  v41 = unk_241AB4B50;
  v42 = xmmword_241AB4B60;
  v43 = unk_241AB4B70;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4B80;
  v37 = unk_241AB4B90;
  v38 = xmmword_241AB4BA0;
  v39 = unk_241AB4BB0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB4BC0;
  v61 = unk_241AB4BD0;
  v62 = xmmword_241AB4BE0;
  v63 = unk_241AB4BF0;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB4C00;
  v27[1] = unk_241AB4C10;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB4C20;
  v57 = unk_241AB4C30;
  v58 = xmmword_241AB4C40;
  v59 = unk_241AB4C50;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4C60;
  v53 = unk_241AB4C70;
  v54 = xmmword_241AB4C80;
  v55 = unk_241AB4C90;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB4CA0;
  v49 = unk_241AB4CB0;
  v50 = xmmword_241AB4CC0;
  v51 = unk_241AB4CD0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4CE0;
  v45 = unk_241AB4CF0;
  v46 = xmmword_241AB4D00;
  v47 = unk_241AB4D10;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB4D20;
  v41 = unk_241AB4D30;
  v42 = xmmword_241AB4D40;
  v43 = unk_241AB4D50;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4D60;
  v37 = *algn_241AB4D70;
  v38 = xmmword_241AB4D80;
  v39 = unk_241AB4D90;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB4DE0;
  v20[1] = unk_241AB4DF0;
  v20[2] = xmmword_241AB4E00;
  *v16 = xmmword_241AB4DA0;
  v17 = unk_241AB4DB0;
  v18 = xmmword_241AB4DC0;
  *__p = unk_241AB4DD0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB4E18;
  v61 = unk_241AB4E28;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241AA0E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersD23ATL(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB5038;
  v17 = unk_241AB5048;
  v18 = xmmword_241AB5058;
  *__p = unk_241AB5068;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB5078;
  v25 = unk_241AB5088;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB4E38;
  v29 = unk_241AB4E48;
  *v30 = xmmword_241AB4E58;
  v31 = unk_241AB4E68;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB4E78;
  v61 = unk_241AB4E88;
  v62 = xmmword_241AB4E98;
  v63 = unk_241AB4EA8;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB4EB8;
  v57 = unk_241AB4EC8;
  v58 = xmmword_241AB4ED8;
  v59 = unk_241AB4EE8;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB4EF8;
  v53 = unk_241AB4F08;
  v54 = xmmword_241AB4F18;
  v55 = unk_241AB4F28;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB4F38;
  v49 = unk_241AB4F48;
  v50 = xmmword_241AB4F58;
  v51 = unk_241AB4F68;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB4F78;
  v45 = unk_241AB4F88;
  v46 = xmmword_241AB4F98;
  v47 = unk_241AB4FA8;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB4FB8;
  v41 = unk_241AB4FC8;
  v42 = xmmword_241AB4FD8;
  v43 = unk_241AB4FE8;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB4FF8;
  v37 = unk_241AB5008;
  v38 = xmmword_241AB5018;
  v39 = unk_241AB5028;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB5038;
  v61 = unk_241AB5048;
  v62 = xmmword_241AB5058;
  v63 = unk_241AB5068;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB5078;
  v27[1] = unk_241AB5088;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB5098;
  v57 = unk_241AB50A8;
  v58 = xmmword_241AB50B8;
  v59 = unk_241AB50C8;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB50D8;
  v53 = unk_241AB50E8;
  v54 = xmmword_241AB50F8;
  v55 = unk_241AB5108;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB5118;
  v49 = unk_241AB5128;
  v50 = xmmword_241AB5138;
  v51 = unk_241AB5148;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB5158;
  v45 = unk_241AB5168;
  v46 = xmmword_241AB5178;
  v47 = unk_241AB5188;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB5198;
  v41 = unk_241AB51A8;
  v42 = xmmword_241AB51B8;
  v43 = unk_241AB51C8;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB51D8;
  v37 = unk_241AB51E8;
  v38 = xmmword_241AB51F8;
  v39 = unk_241AB5208;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB5258;
  v20[1] = unk_241AB5268;
  v20[2] = xmmword_241AB5278;
  *v16 = xmmword_241AB5218;
  v17 = unk_241AB5228;
  v18 = xmmword_241AB5238;
  *__p = unk_241AB5248;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB5290;
  v61 = unk_241AB52A0;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241AA183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::initParametersV53pCOS(uint64_t a1@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v16 = xmmword_241AB54B0;
  v17 = unk_241AB54C0;
  v18 = xmmword_241AB54D0;
  *__p = unk_241AB54E0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v9, v16, v20, 8uLL);
  v24 = xmmword_241AB54F0;
  v25 = unk_241AB5500;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v12, &v24, v26, 8uLL);
  *v28 = xmmword_241AB52B0;
  v29 = unk_241AB52C0;
  *v30 = xmmword_241AB52D0;
  v31 = unk_241AB52E0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v28, v32, 8uLL);
  v60 = xmmword_241AB52F0;
  v61 = unk_241AB5300;
  v62 = xmmword_241AB5310;
  v63 = unk_241AB5320;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v60, &v64, 8uLL);
  v56 = xmmword_241AB5330;
  v57 = unk_241AB5340;
  v58 = xmmword_241AB5350;
  v59 = unk_241AB5360;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v56, &v60, 8uLL);
  v52 = xmmword_241AB5370;
  v53 = unk_241AB5380;
  v54 = xmmword_241AB5390;
  v55 = unk_241AB53A0;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v52, &v56, 8uLL);
  v48 = xmmword_241AB53B0;
  v49 = unk_241AB53C0;
  v50 = xmmword_241AB53D0;
  v51 = unk_241AB53E0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v48, &v52, 8uLL);
  v44 = xmmword_241AB53F0;
  v45 = unk_241AB5400;
  v46 = xmmword_241AB5410;
  v47 = unk_241AB5420;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v44, &v48, 8uLL);
  v40 = xmmword_241AB5430;
  v41 = unk_241AB5440;
  v42 = xmmword_241AB5450;
  v43 = unk_241AB5460;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v40, &v44, 8uLL);
  v36 = xmmword_241AB5470;
  v37 = unk_241AB5480;
  v38 = xmmword_241AB5490;
  v39 = unk_241AB54A0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, &v36, &v40, 8uLL);
  memset(v15, 0, sizeof(v15));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v15, &v65, &v86, 8uLL);
  for (i = 0; i != -192; i -= 24)
  {
    v4 = *(&v83 + i);
    if (v4)
    {
      *(&v84 + i) = v4;
      operator delete(v4);
    }
  }

  *v28 = 0u;
  v60 = xmmword_241AB54B0;
  v61 = unk_241AB54C0;
  v62 = xmmword_241AB54D0;
  v63 = unk_241AB54E0;
  v29 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v28[1], &v60, &v64, 8uLL);
  v27[0] = xmmword_241AB54F0;
  v27[1] = unk_241AB5500;
  v30[1] = 0;
  *&v31 = 0;
  v30[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v30, v27, v28, 8uLL);
  v56 = xmmword_241AB5510;
  v57 = unk_241AB5520;
  v58 = xmmword_241AB5530;
  v59 = unk_241AB5540;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, &v56, &v60, 8uLL);
  v52 = xmmword_241AB5550;
  v53 = unk_241AB5560;
  v54 = xmmword_241AB5570;
  v55 = unk_241AB5580;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v52, &v56, 8uLL);
  v48 = xmmword_241AB5590;
  v49 = unk_241AB55A0;
  v50 = xmmword_241AB55B0;
  v51 = unk_241AB55C0;
  *&v72 = 0;
  v71 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v71, &v48, &v52, 8uLL);
  v44 = xmmword_241AB55D0;
  v45 = unk_241AB55E0;
  v46 = xmmword_241AB55F0;
  v47 = unk_241AB5600;
  *(&v72 + 1) = 0;
  v73 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v72 + 8, &v44, &v48, 8uLL);
  v40 = xmmword_241AB5610;
  v41 = unk_241AB5620;
  v42 = xmmword_241AB5630;
  v43 = unk_241AB5640;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v74, &v40, &v44, 8uLL);
  v36 = xmmword_241AB5650;
  v37 = unk_241AB5660;
  v38 = xmmword_241AB5670;
  v39 = unk_241AB5680;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v77, &v36, &v40, 8uLL);
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v80, &v24, v27, 8uLL);
  memset(v23, 0, sizeof(v23));
  v85 = 0;
  v83 = 0;
  v84 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v83, v23, &v24, 8uLL);
  *(&v31 + 1) = 0;
  v32[0] = 0;
  v32[1] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(&v31 + 8, &v65, &v86, 8uLL);
  v21 = 0x3FF0000000000000;
  v20[0] = xmmword_241AB56D0;
  v20[1] = unk_241AB56E0;
  v20[2] = xmmword_241AB56F0;
  *v16 = xmmword_241AB5690;
  v17 = unk_241AB56A0;
  v18 = xmmword_241AB56B0;
  *__p = unk_241AB56C0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v33, v16, &v22, 0xFuLL);
  for (j = 0; j != -192; j -= 24)
  {
    v6 = *(&v83 + j);
    if (v6)
    {
      *(&v84 + j) = v6;
      operator delete(v6);
    }
  }

  v60 = xmmword_241AB5708;
  v61 = unk_241AB5718;
  v16[0] = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v65, v16, &v16[1], 1uLL);
  *&v56 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v68, &v56, &v56 + 8, 1uLL);
  v71 = 0u;
  v72 = 0u;
  v73 = xmmword_241AB15B0;
  v74 = 0x3F50624DD2F1A9FCLL;
  v16[0] = 0;
  v16[1] = 0;
  v56 = 0uLL;
  v17 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v16[1], &v56, &v57, 2uLL);
  v18 = 0uLL;
  v52 = 0uLL;
  __p[1] = 0;
  *&v20[0] = 0;
  __p[0] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(__p, &v52, &v53, 2uLL);
  *(&v20[0] + 1) = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJN25AugmentedBatteryHealthLib9QmaxParamENS3_8RdcParamENS3_8NccParamENS3_11SOCOCVParamENS3_9ABHWeeklyEEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJS4_S5_S6_S7_S8_EJEJEJRS4_RS5_RS6_RS7_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(a1, &v8, v28, &v60, &v65, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v71)
  {
    *(&v71 + 1) = v71;
    operator delete(v71);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v65 = &v31 + 8;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v65 = v15;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241AA2244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly(&a31);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&STACK[0x408]);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam(&a67);
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(&a21);
  _Unwind_Resume(a1);
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::MainAlgorithm(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  AugmentedBatteryHealthLib::MainParameters::MainParameters(a1 + 80, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = (*(a1 + 520) == -1) << 17;
  *(a1 + 792) = v3;
  if (*(a1 + 600) == -1)
  {
    v3 |= 0x80000u;
    *(a1 + 792) = v3;
  }

  if (*(a1 + 704) == -1)
  {
    v3 |= 0x100000u;
    *(a1 + 792) = v3;
  }

  if (*(a1 + 784) == -1)
  {
    *(a1 + 792) = v3 | 0x200000;
  }

  return a1;
}

void AugmentedBatteryHealthLib::MainAlgorithm::~MainAlgorithm(AugmentedBatteryHealthLib::MainAlgorithm *this)
{
  AugmentedBatteryHealthLib::MainParameters::~MainParameters((this + 80));
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::augmentQmax(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a2 + 16);
  v6 = *a2 - v5;
  if (v6 < 0)
  {
    v11 = *(a1 + 792) | 2;
    goto LABEL_17;
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<AugmentedBatteryHealthLib::DailyData>::__init_with_size[abi:ne200100]<AugmentedBatteryHealthLib::DailyData*,AugmentedBatteryHealthLib::DailyData*>(&__p, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  v10 = AugmentedBatteryHealthLib::findTimeStamp<AugmentedBatteryHealthLib::DailyData>(v5, &__p);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v10 == -1.0)
  {
    v11 = *(a1 + 792) | 0x10;
LABEL_17:
    *(a1 + 792) = v11;
    return 0xFFFFFFFFLL;
  }

  v12 = a4[1];
  v14 = *(v12 - 16);
  v13 = v12 - 16;
  if (v14 > *(a2 + 8))
  {
    v15 = *a4;
LABEL_16:
    v11 = *(a1 + 792) | 4;
    goto LABEL_17;
  }

  v16 = *(v13 + 8);
  AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMDailyData,0>(a4, v30, v10, 86400.0);
  v17 = a3[1];
  v18 = *(v17 - 24);
  v19 = (v17 - 40);
  if (v18 > *(a2 + 8))
  {
    v20 = *a3;
    goto LABEL_16;
  }

  v21 = *v19;
  v22 = v19[1];
  AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::DailyData,0>(a3, v28, v10, 86400.0);
  if (v29 == -1)
  {
    goto LABEL_16;
  }

  if (v6 <= *(a1 + 80))
  {
    result = 0;
    *(a1 + 792) |= 0x40u;
  }

  else
  {
    ConfidenceQmax = AugmentedBatteryHealthLib::MainParameters::getConfidenceQmax((a1 + 80), v22, v21);
    if (ConfidenceQmax < 0.0 || (v24 = ConfidenceQmax, v25 = AugmentedBatteryHealthLib::MainParameters::getConfidenceQmax((a1 + 80), v28[1], v28[0]), v25 < 0.0))
    {
      v11 = *(a1 + 792) | 0x800000;
      goto LABEL_17;
    }

    result = 0;
    if (v25 >= v24)
    {
      v25 = v24;
    }

    v27 = v16 - v31;
    *a1 = v16 - v31;
    *(a1 + 40) = v28[3] / 1000.0 + v27 * v25;
  }

  return result;
}

double AugmentedBatteryHealthLib::findTimeStamp<AugmentedBatteryHealthLib::DailyData>(int a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  result = -1.0;
  if (*a2 != v3)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3);
    while (--v5)
    {
      v6 = v2 + 40;
      v7 = *(v2 + 8);
      v8 = *(v2 + 48);
      v9 = __OFSUB__(a1, v7);
      v10 = a1 - v7;
      v11 = v10 < 0 != v9 || v8 < a1;
      v2 += 40;
      if (!v11)
      {
        if (v10 >= v8 - a1)
        {
          v12 = v6;
        }

        else
        {
          v12 = v6 - 40;
        }

        return *(v12 + 16);
      }
    }
  }

  return result;
}

uint64_t AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMDailyData,0>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  v5 = **result;
  if (v5 > a3)
  {
    *a2 = *v4;
    if (v5 - a4 <= a3)
    {
      goto LABEL_13;
    }

LABEL_9:
    *(a2 + 16) = -1;
    return result;
  }

  v6 = *(result + 8);
  v7 = (v6 - v4) >> 4;
  if (v7 >= 2)
  {
    v8 = v4 + 2;
    v9 = 1;
    while (*v8 < a3)
    {
      ++v9;
      v8 += 2;
      if (v7 == v9)
      {
        goto LABEL_8;
      }
    }

    v11 = &v4[2 * v9];
    v13 = *(v11 - 2);
    v12 = v11 - 2;
    if (vabdd_f64(a3, v13) >= vabdd_f64(a3, *v8))
    {
      v12 = v8;
    }

    *a2 = *v12;
    goto LABEL_13;
  }

LABEL_8:
  v10 = *(v6 - 16) + a4;
  *a2 = *(v6 - 16);
  if (v10 <= a3)
  {
    goto LABEL_9;
  }

LABEL_13:
  *(a2 + 16) = 0;
  return result;
}

void *AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::DailyData,0>@<X0>(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 > a3)
  {
    v6 = *(v4 + 16);
    *a2 = *v4;
    *(a2 + 16) = v6;
    *(a2 + 32) = *(v4 + 32);
    if (v5 - a4 <= a3)
    {
      goto LABEL_14;
    }

LABEL_9:
    *(a2 + 40) = -1;
    return result;
  }

  v7 = result[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3);
  if (v8 >= 2)
  {
    v9 = v4 + 40;
    v10 = 1;
    while (1)
    {
      v11 = *(v9 + 16);
      if (v11 >= a3)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }

    v14 = v4 + 40 * v10;
    if (vabdd_f64(a3, *(v14 - 24)) >= vabdd_f64(a3, v11))
    {
      v15 = v9;
    }

    else
    {
      v15 = v14 - 40;
    }

    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    goto LABEL_14;
  }

LABEL_8:
  v12 = *(v7 - 24) + a4;
  v13 = *(v7 - 24);
  *a2 = *(v7 - 40);
  *(a2 + 16) = v13;
  *(a2 + 32) = *(v7 - 8);
  if (v12 <= a3)
  {
    goto LABEL_9;
  }

LABEL_14:
  *(a2 + 40) = 0;
  return result;
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::augmentRdc(uint64_t a1, double *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = *(a2 + 5);
  v67 = 0;
  v68 = 0;
  v66 = 0;
  std::vector<AugmentedBatteryHealthLib::DailyData>::__init_with_size[abi:ne200100]<AugmentedBatteryHealthLib::DailyData*,AugmentedBatteryHealthLib::DailyData*>(&v66, *a5, a5[1], 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3));
  v12 = AugmentedBatteryHealthLib::findTimeStamp<AugmentedBatteryHealthLib::DailyData>(v11, &v66);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v12 == -1.0)
  {
    *(a1 + 792) |= 0x20u;
    return 0xFFFFFFFFLL;
  }

  AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,2>(a4, v63, a2[1]);
  if (v65 != -1)
  {
    AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,0>(a4, v60, v12, 86400.0);
    if (v62 == -1)
    {
      *(a1 + 792) |= 4u;
      v13 = 0xFFFFFFFFLL;
LABEL_27:
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      goto LABEL_29;
    }

    AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,2>(a3, v56, a2[1]);
    if (v59 == -1)
    {
      *(a1 + 792) |= 4u;
      v13 = 0xFFFFFFFFLL;
LABEL_25:
      if (v58 < 0)
      {
        operator delete(v57);
      }

      goto LABEL_27;
    }

    AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,0>(a3, v53, v12, 86400.0);
    if (v55 == -1)
    {
      goto LABEL_21;
    }

    v14 = a5[1];
    v15 = *(v14 - 24);
    v16 = (v14 - 40);
    if (v15 > a2[1])
    {
      v17 = *a5;
LABEL_21:
      *(a1 + 792) |= 4u;
      v13 = 0xFFFFFFFFLL;
LABEL_22:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_25;
    }

    v18 = *v16;
    v19 = v16[1];
    AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::DailyData,0>(a5, v51, v12, 86400.0);
    if (v52 == -1)
    {
      goto LABEL_21;
    }

    AugmentedBatteryHealthLib::processRaTableRaw(&v64, &v48);
    if (v48 == -1)
    {
      *(a1 + 792) |= 0x80u;
      v13 = 0xFFFFFFFFLL;
LABEL_41:
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      goto LABEL_22;
    }

    AugmentedBatteryHealthLib::processRaTableRaw(&v61, &v45);
    if (v45 == -1)
    {
      *(a1 + 792) |= 0x100u;
      v13 = 0xFFFFFFFFLL;
LABEL_39:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      goto LABEL_41;
    }

    AugmentedBatteryHealthLib::processRaTableRaw(&__p, &v42);
    if (v42 == -1)
    {
      v22 = *(a1 + 792) | 0x200;
      goto LABEL_35;
    }

    if (v10 - v11 <= *(a1 + 160))
    {
      v13 = 0;
      *(a1 + 792) |= 0x10000u;
LABEL_37:
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      goto LABEL_39;
    }

    ConfidenceRdc = AugmentedBatteryHealthLib::MainParameters::getConfidenceRdc((a1 + 80), v19, v18);
    if (ConfidenceRdc < 0.0 || (v21 = AugmentedBatteryHealthLib::MainParameters::getConfidenceRdc((a1 + 80), v51[1], v51[0]), v21 < 0.0))
    {
      v22 = *(a1 + 792) | 0x800000;
LABEL_35:
      *(a1 + 792) = v22;
      v13 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    if (v21 < ConfidenceRdc)
    {
      ConfidenceRdc = v21;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    v25 = v49;
    v24 = v50;
    v26 = v50 - v49;
    if (v50 - v49 == v47 - v46)
    {
      v27 = v26 >> 2;
      std::vector<double>::reserve(&v39, v26 >> 2);
      if (v24 != v25)
      {
        v28 = 0;
        if (v27 <= 1)
        {
          v27 = 1;
        }

        do
        {
          v38 = (*(v49 + v28) - *(v46 + v28));
          std::vector<double>::emplace_back<double>(&v39, &v38);
          ++v28;
        }

        while (v27 != v28);
      }

      if ((a1 + 8) != &v39)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 8), v39, v40, (v40 - v39) >> 3);
      }

      v29 = (*(a1 + 16) - *(a1 + 8)) >> 3;
      if (v29 == (v44 - v43) >> 2)
      {
        std::vector<double>::resize((a1 + 48), v29);
        v30 = *(a1 + 8);
        v31 = *(a1 + 16) - v30;
        if (v31)
        {
          v32 = v31 >> 3;
          v33 = v43;
          v34 = *(a1 + 48);
          if (v32 <= 1)
          {
            v32 = 1;
          }

          do
          {
            v35 = *v30++;
            v36 = v35;
            LODWORD(v35) = *v33++;
            *v34++ = SLODWORD(v35) + v36 * ConfidenceRdc;
            --v32;
          }

          while (v32);
        }

        v13 = 0;
        goto LABEL_61;
      }

      v37 = 2048;
    }

    else
    {
      v37 = 1024;
    }

    *(a1 + 792) |= v37;
    v13 = 0xFFFFFFFFLL;
LABEL_61:
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    goto LABEL_37;
  }

  *(a1 + 792) |= 4u;
  v13 = 0xFFFFFFFFLL;
LABEL_29:
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_241AA2E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 169) < 0)
  {
    operator delete(*(v46 - 192));
  }

  if (*(v46 - 129) < 0)
  {
    operator delete(*(v46 - 152));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,2>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = a1[1];
  v5 = *(v3 - 32);
  v4 = v3 - 32;
  if (v5 <= a3)
  {
    v6 = &AugmentedBatteryHealthLib::NORMAL;
  }

  else
  {
    v4 = *a1;
    v6 = &AugmentedBatteryHealthLib::FAULTED;
  }

  return _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN25AugmentedBatteryHealthLib14ACAMWeeklyDataEiEEC1B8ne200100IJLm0ELm1EEJS4_iEJEJEJRKS4_RKiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a2, v4, v6);
}

uint64_t AugmentedBatteryHealthLib::searchbyTime<AugmentedBatteryHealthLib::ACAMWeeklyData,0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = *a1;
  v7 = **a1;
  if (v7 > a3)
  {
    if (v7 - a4 > a3)
    {
      v8 = &AugmentedBatteryHealthLib::FAULTED;
      return _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN25AugmentedBatteryHealthLib14ACAMWeeklyDataEiEEC1B8ne200100IJLm0ELm1EEJS4_iEJEJEJRKS4_RKiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a2, v6, v8);
    }

LABEL_16:
    v8 = &AugmentedBatteryHealthLib::NORMAL;
    return _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN25AugmentedBatteryHealthLib14ACAMWeeklyDataEiEEC1B8ne200100IJLm0ELm1EEJS4_iEJEJEJRKS4_RKiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a2, v6, v8);
  }

  v9 = *(a1 + 8);
  v10 = (v9 - v6) >> 5;
  if (v10 >= 2)
  {
    v11 = v6 + 4;
    v12 = 1;
    while (*v11 < a3)
    {
      ++v12;
      v11 += 4;
      if (v10 == v12)
      {
        goto LABEL_9;
      }
    }

    v16 = &v6[4 * v12];
    v18 = *(v16 - 4);
    v17 = v16 - 4;
    if (vabdd_f64(a3, v18) >= vabdd_f64(a3, *v11))
    {
      v6 = v11;
    }

    else
    {
      v6 = v17;
    }

    goto LABEL_16;
  }

LABEL_9:
  v14 = *(v9 - 32);
  v13 = (v9 - 32);
  if (v14 + a4 <= a3)
  {
    v8 = &AugmentedBatteryHealthLib::FAULTED;
  }

  else
  {
    v8 = &AugmentedBatteryHealthLib::NORMAL;
  }

  v6 = v13;
  return _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN25AugmentedBatteryHealthLib14ACAMWeeklyDataEiEEC1B8ne200100IJLm0ELm1EEJS4_iEJEJEJRKS4_RKiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a2, v6, v8);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::augmentNCC(uint64_t a1, double *a2, uint64_t *a3)
{
  v4 = a3[1];
  v5 = *(v4 - 24);
  v6 = v4 - 40;
  if (v5 > a2[1])
  {
    v7 = *a3;
    *(a1 + 792) |= 4u;
    return 0xFFFFFFFFLL;
  }

  v10 = *(v6 + 32);
  v11 = *(a1 + 288);
  v12 = *(a1 + 272);
  v13 = *(a1 + 368);
  AugmentedBatteryHealthLib::Lut1D::Lut1D(v24, a1 + 240, a1 + 48);
  if (v27 == -1)
  {
    *(a1 + 792) |= 0x1000u;
  }

  else
  {
    v14 = v11 * v12;
    v15 = *(a1 + 392);
    v16 = 1;
    while (1)
    {
      v17 = v13;
      v18 = *(a1 + 376);
      if (v13 > v18)
      {
        break;
      }

      OCV = AugmentedBatteryHealthLib::MainParameters::getOCV((a1 + 80), v13, *(a1 + 384));
      v20 = OCV + AugmentedBatteryHealthLib::Lut1D::lookUp(v24, 1.0 - v17) / -1000.0 * v14 - *(a1 + 264);
      v13 = v15 + v17;
      if (v20 >= 0.0 || v16++ >= 0x2711)
      {
        v18 = *(a1 + 376);
        break;
      }
    }

    if (v17 <= v18)
    {
      v8 = 0;
      v22 = *(a1 + 40) * (1.0 - a2[5] - a2[4] - v17);
      *(a1 + 72) = v22;
      *(a1 + 32) = v22 + v10 / -1000.0;
      goto LABEL_16;
    }
  }

  v8 = 0xFFFFFFFFLL;
LABEL_16:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_241AA31F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::validateInput(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  if ((*a2 & 0x80000000) != 0)
  {
    v7 = 0x2000;
  }

  else if ((a2[5] & 0x80000000) != 0)
  {
    v7 = 0x4000;
  }

  else if ((a2[4] & 0x80000000) != 0)
  {
    v7 = 0x8000;
  }

  else
  {
    if (*a4 != a4[1] && *a5 != a5[1] && *a6 != a6[1] && *a3 != a3[1])
    {
      return 0;
    }

    v7 = 0x400000;
  }

  *(a1 + 792) |= v7;
  return 0xFFFFFFFFLL;
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::runOnce@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 792) & 0x3A0000;
  *(a1 + 792) = v9;
  if (v9)
  {
    goto LABEL_2;
  }

  if (AugmentedBatteryHealthLib::MainAlgorithm::validateInput(a1, a2, a3, a4, a5, a6) == -1)
  {
    v9 = *(a1 + 792);
LABEL_2:
    *a7 = v9;
    *(a7 + 8) = *(a1 + 400);
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a7 + 16, *(a1 + 408), *(a1 + 416), (*(a1 + 416) - *(a1 + 408)) >> 3);
    v10 = *(a1 + 432);
    *(a7 + 56) = 0;
    *(a7 + 40) = v10;
    *(a7 + 64) = 0;
    *(a7 + 72) = 0;
    result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a7 + 56, *(a1 + 448), *(a1 + 456), (*(a1 + 456) - *(a1 + 448)) >> 3);
    v12 = *(a1 + 472);
    goto LABEL_11;
  }

  if (AugmentedBatteryHealthLib::MainAlgorithm::augmentQmax(a1, a2, a3, a4) == -1)
  {
    *(a1 + 40) = *(a1 + 440);
    *a1 = *(a1 + 400);
  }

  if (AugmentedBatteryHealthLib::MainAlgorithm::augmentRdc(a1, a2, a5, a6, a3) == -1)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 48), *(a1 + 448), *(a1 + 456), (*(a1 + 456) - *(a1 + 448)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 8), *(a1 + 408), *(a1 + 416), (*(a1 + 416) - *(a1 + 408)) >> 3);
  }

  if (AugmentedBatteryHealthLib::MainAlgorithm::augmentNCC(a1, a2, a3) == -1)
  {
    *(a1 + 72) = *(a1 + 472);
    *(a1 + 32) = *(a1 + 432);
  }

  v18 = *a1;
  v20 = 0;
  v19 = 0uLL;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v19, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  v21 = *(a1 + 32);
  v23 = 0;
  v22 = 0uLL;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v22, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
  v12 = *(a1 + 72);
  *a7 = *(a1 + 792);
  *(a7 + 8) = v18;
  *(a7 + 16) = v19;
  *(a7 + 32) = v20;
  *(a7 + 40) = v21;
  *(a7 + 56) = v22;
  *(a7 + 72) = v23;
LABEL_11:
  *(a7 + 80) = v12;
  return result;
}

void sub_241AA349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AugmentedBatteryHealthLib::MainAlgorithm::clearStateFault(AugmentedBatteryHealthLib::MainAlgorithm *this)
{
  v1 = (*(this + 198) & 0x3A0000) == 0;
  *(this + 198) &= 0x3A0000u;
  if (v1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::vector<AugmentedBatteryHealthLib::DailyData>::__init_with_size[abi:ne200100]<AugmentedBatteryHealthLib::DailyData*,AugmentedBatteryHealthLib::DailyData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AugmentedBatteryHealthLib::DailyData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241AA3544(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AugmentedBatteryHealthLib::DailyData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::DailyData>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void *std::vector<double>::emplace_back<double>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN25AugmentedBatteryHealthLib14ACAMWeeklyDataEiEEC1B8ne200100IJLm0ELm1EEJS4_iEJEJEJRKS4_RKiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(a1 + 32) = *a3;
  return a1;
}

uint64_t AugmentedBatteryHealthLib::MainParameters::MainParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 88) = 0u;
  v5 = a1 + 88;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 216) = 0u;
  v6 = (a1 + 216);
  *(a1 + 168) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v7 = (a1 + 400);
  *(a1 + 384) = 0;
  AugmentedBatteryHealthLib::Lut1D::Lut1D((a1 + 400));
  AugmentedBatteryHealthLib::Lut1D::Lut1D((a1 + 448));
  AugmentedBatteryHealthLib::Lut2D::Lut2D((a1 + 496));
  AugmentedBatteryHealthLib::Lut2D::Lut2D((a1 + 600));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
  }

  else
  {
    v23 = *a2;
  }

  *(a1 + 704) = AugmentedBatteryHealthLib::fetchParameter(&v23, a1, v4 + 9, a1 + 184, v6, (v4 + 39));
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  AugmentedBatteryHealthLib::Lut1D::Lut1D(v16, v6, a1 + 240);
  *v7 = *v16;
  v8 = *(a1 + 416);
  if (v8)
  {
    *(a1 + 424) = v8;
    operator delete(v8);
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
  }

  *(a1 + 416) = *&v16[16];
  *(a1 + 432) = v17[0];
  v17[0] = 0;
  *&v16[16] = 0uLL;
  *(a1 + 440) = v17[1];
  AugmentedBatteryHealthLib::Lut2D::Lut2D(v16, a1 + 32, v4, a1 + 56);
  v9 = v4 + 68;
  *(a1 + 496) = *v16;
  *(a1 + 508) = *&v16[12];
  v10 = *(a1 + 528);
  if (v10)
  {
    *(a1 + 536) = v10;
    operator delete(v10);
    *(a1 + 528) = 0;
    *(a1 + 536) = 0;
    *(a1 + 544) = 0;
  }

  *(a1 + 528) = *v17;
  *(a1 + 544) = v18;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v11 = *(a1 + 552);
  if (v11)
  {
    *(a1 + 560) = v11;
    operator delete(v11);
    *v9 = 0;
    v4[69] = 0;
    v4[70] = 0;
  }

  *v9 = *__p;
  *(a1 + 568) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  std::vector<std::vector<double>>::__vdeallocate((a1 + 576));
  *(a1 + 576) = v21;
  *(a1 + 592) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  AugmentedBatteryHealthLib::Lut2D::Lut2D(v16, a1 + 112, v5, a1 + 136);
  *(a1 + 600) = *v16;
  *(a1 + 612) = *&v16[12];
  v13 = v4 + 78;
  v12 = v9[10];
  if (v12)
  {
    *(a1 + 640) = v12;
    operator delete(v12);
    *v13 = 0;
    v9[11] = 0;
    v9[12] = 0;
  }

  *v13 = *v17;
  *(a1 + 648) = v18;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v14 = *(a1 + 656);
  if (v14)
  {
    *(a1 + 664) = v14;
    operator delete(v14);
    *(a1 + 656) = 0;
    *(a1 + 664) = 0;
    *(a1 + 672) = 0;
  }

  *(a1 + 656) = *__p;
  *(a1 + 672) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  std::vector<std::vector<double>>::__vdeallocate(v9 + 16);
  *(v9 + 8) = v21;
  *(a1 + 696) = v22;
  v22 = 0;
  v21 = 0uLL;
  v24 = &v21;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return a1;
}

void sub_241AA3A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  AugmentedBatteryHealthLib::Lut2D::~Lut2D(v32);
  AugmentedBatteryHealthLib::Lut2D::~Lut2D(v31);
  v34 = *(v28 + 58);
  if (v34)
  {
    *(v28 + 59) = v34;
    operator delete(v34);
  }

  v35 = *(v28 + 52);
  if (v35)
  {
    *(v28 + 53) = v35;
    operator delete(v35);
  }

  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly((v29 + 312));
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(v30);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam((v29 + 72));
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(v28);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::Lut2D::~Lut2D(AugmentedBatteryHealthLib::Lut2D *this)
{
  v4 = (this + 80);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

uint64_t AugmentedBatteryHealthLib::MainParameters::MainParameters(uint64_t a1, uint64_t a2, const AugmentedBatteryHealthLib::RdcParam *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v12 = a1 + 8;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  AugmentedBatteryHealthLib::RdcParam::RdcParam((a1 + 80), a3);
  v13 = *a4;
  v14 = a4[1];
  *(a1 + 216) = 0;
  *(a1 + 184) = v13;
  *(a1 + 200) = v14;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 216, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 240, *(a5 + 24), *(a5 + 32), (*(a5 + 32) - *(a5 + 24)) >> 3);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 264, *(a5 + 48), *(a5 + 56), (*(a5 + 56) - *(a5 + 48)) >> 3);
  v15 = *(a5 + 88);
  *(a1 + 288) = *(a5 + 72);
  *(a1 + 304) = v15;
  *(a1 + 320) = *a6;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 328, *(a6 + 8), *(a6 + 16), (*(a6 + 16) - *(a6 + 8)) >> 3);
  *(a1 + 352) = *(a6 + 32);
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 368, *(a6 + 48), *(a6 + 56), (*(a6 + 56) - *(a6 + 48)) >> 3);
  *(a1 + 392) = *(a6 + 72);
  AugmentedBatteryHealthLib::Lut1D::Lut1D((a1 + 400));
  AugmentedBatteryHealthLib::Lut1D::Lut1D((a1 + 448));
  AugmentedBatteryHealthLib::Lut2D::Lut2D((a1 + 496));
  AugmentedBatteryHealthLib::Lut2D::Lut2D((a1 + 600));
  AugmentedBatteryHealthLib::Lut1D::Lut1D(v24, a1 + 216, a1 + 240);
  *(a1 + 400) = *v24;
  v16 = *(a1 + 416);
  if (v16)
  {
    *(a1 + 424) = v16;
    operator delete(v16);
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
  }

  *(a1 + 416) = *&v24[16];
  *(a1 + 432) = v25[0];
  v25[0] = 0;
  *&v24[16] = 0uLL;
  *(a1 + 440) = v25[1];
  AugmentedBatteryHealthLib::Lut2D::Lut2D(v24, a1 + 32, v12, a1 + 56);
  v17 = (a1 + 552);
  *(a1 + 496) = *v24;
  *(a1 + 508) = *&v24[12];
  v18 = *(a1 + 528);
  if (v18)
  {
    *(a1 + 536) = v18;
    operator delete(v18);
    *(a1 + 528) = 0;
    *(a1 + 536) = 0;
    *(a1 + 544) = 0;
  }

  *(a1 + 528) = *v25;
  *(a1 + 544) = v26;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  v19 = *(a1 + 552);
  if (v19)
  {
    *(a1 + 560) = v19;
    operator delete(v19);
    *v17 = 0;
    *(a1 + 560) = 0;
    *(a1 + 568) = 0;
  }

  *v17 = *__p;
  *(a1 + 568) = v28;
  __p[1] = 0;
  v28 = 0;
  __p[0] = 0;
  std::vector<std::vector<double>>::__vdeallocate((a1 + 576));
  *(a1 + 576) = v29;
  *(a1 + 592) = v30;
  v30 = 0;
  v29 = 0uLL;
  v31 = &v29;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  AugmentedBatteryHealthLib::Lut2D::Lut2D(v24, a1 + 112, a1 + 88, a1 + 136);
  *(a1 + 600) = *v24;
  *(a1 + 612) = *&v24[12];
  v21 = (a1 + 632);
  v20 = *(a1 + 632);
  if (v20)
  {
    *(a1 + 640) = v20;
    operator delete(v20);
    *v21 = 0;
    *(a1 + 640) = 0;
    *(a1 + 648) = 0;
  }

  *v21 = *v25;
  *(a1 + 648) = v26;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  v22 = *(a1 + 656);
  if (v22)
  {
    *(a1 + 664) = v22;
    operator delete(v22);
    *(a1 + 656) = 0;
    *(a1 + 664) = 0;
    *(a1 + 672) = 0;
  }

  *(a1 + 656) = *__p;
  *(a1 + 672) = v28;
  __p[1] = 0;
  v28 = 0;
  __p[0] = 0;
  std::vector<std::vector<double>>::__vdeallocate((a1 + 680));
  *(a1 + 680) = v29;
  *(a1 + 696) = v30;
  v30 = 0;
  v29 = 0uLL;
  v31 = &v29;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  *(a1 + 704) = 0;
  return a1;
}

void sub_241AA3F1C(_Unwind_Exception *a1)
{
  AugmentedBatteryHealthLib::Lut2D::~Lut2D(v4);
  AugmentedBatteryHealthLib::Lut2D::~Lut2D(v3);
  v6 = v1[58];
  if (v6)
  {
    v1[59] = v6;
    operator delete(v6);
  }

  v7 = v1[52];
  if (v7)
  {
    v1[53] = v7;
    operator delete(v7);
  }

  AugmentedBatteryHealthLib::ABHWeekly::~ABHWeekly((v1 + 40));
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(v2);
  AugmentedBatteryHealthLib::RdcParam::~RdcParam((v1 + 10));
  AugmentedBatteryHealthLib::QmaxParam::~QmaxParam(v1);
  _Unwind_Resume(a1);
}

void sub_241AA3FA0()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    *(v0 + 336) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x241AA3F80);
}

void sub_241AA3FC0()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 248) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v0 + 224) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x241AA3F88);
}

void sub_241AA4000()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 40) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x241AA3F98);
}

void AugmentedBatteryHealthLib::MainParameters::~MainParameters(AugmentedBatteryHealthLib::MainParameters *this)
{
  v18 = (this + 680);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v2 = *(this + 82);
  if (v2)
  {
    *(this + 83) = v2;
    operator delete(v2);
  }

  v3 = *(this + 79);
  if (v3)
  {
    *(this + 80) = v3;
    operator delete(v3);
  }

  v18 = (this + 576);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v4 = *(this + 69);
  if (v4)
  {
    *(this + 70) = v4;
    operator delete(v4);
  }

  v5 = *(this + 66);
  if (v5)
  {
    *(this + 67) = v5;
    operator delete(v5);
  }

  v6 = *(this + 58);
  if (v6)
  {
    *(this + 59) = v6;
    operator delete(v6);
  }

  v7 = *(this + 52);
  if (v7)
  {
    *(this + 53) = v7;
    operator delete(v7);
  }

  v8 = *(this + 46);
  if (v8)
  {
    *(this + 47) = v8;
    operator delete(v8);
  }

  v9 = *(this + 41);
  if (v9)
  {
    *(this + 42) = v9;
    operator delete(v9);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  v11 = *(this + 30);
  if (v11)
  {
    *(this + 31) = v11;
    operator delete(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    *(this + 28) = v12;
    operator delete(v12);
  }

  v13 = *(this + 20);
  if (v13)
  {
    *(this + 21) = v13;
    operator delete(v13);
  }

  v18 = (this + 136);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v14 = *(this + 14);
  if (v14)
  {
    *(this + 15) = v14;
    operator delete(v14);
  }

  v15 = *(this + 11);
  if (v15)
  {
    *(this + 12) = v15;
    operator delete(v15);
  }

  v18 = (this + 56);
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v16 = *(this + 4);
  if (v16)
  {
    *(this + 5) = v16;
    operator delete(v16);
  }

  v17 = *(this + 1);
  if (v17)
  {
    *(this + 2) = v17;
    operator delete(v17);
  }
}

double AugmentedBatteryHealthLib::MainParameters::getOCV(AugmentedBatteryHealthLib::MainParameters *this, double a2, double a3)
{
  if (*(this + 37) < a2)
  {
    a2 = *(this + 37);
  }

  if (a2 < *(this + 36))
  {
    a2 = *(this + 36);
  }

  return AugmentedBatteryHealthLib::Lut1D::lookUp((this + 400), a2);
}

double AugmentedBatteryHealthLib::MainParameters::getConfidenceQmax(AugmentedBatteryHealthLib::MainParameters *this, int a2, double a3)
{
  if (a2 < 1 || a3 < 0.0)
  {
    return -1.0;
  }

  else
  {
    return AugmentedBatteryHealthLib::Lut2D::getValue((this + 496), a2, a3 / a2);
  }
}

double AugmentedBatteryHealthLib::MainParameters::getConfidenceRdc(AugmentedBatteryHealthLib::MainParameters *this, int a2, double a3)
{
  if (a2 < 1 || a3 < 0.0)
  {
    return -1.0;
  }

  else
  {
    return AugmentedBatteryHealthLib::Lut2D::getValue((this + 600), a2, a3 / a2);
  }
}

uint64_t AugmentedBatteryHealthLib::Lut1D::Lut1D(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(a1 + 16, v14, &v15, 3uLL);
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 == a3[1] - *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v8)
  {
    v10 = a2;
  }

  else
  {
    v10 = v6;
  }

  if (v8)
  {
    v11 = a3;
  }

  else
  {
    v11 = v6;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 40) = v9 << 31 >> 31;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

AugmentedBatteryHealthLib::Lut1D *AugmentedBatteryHealthLib::Lut1D::Lut1D(AugmentedBatteryHealthLib::Lut1D *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = this + 16;
  *this = v2;
  *(this + 1) = v2;
  memset(v5, 0, sizeof(v5));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v2, v5, &v6, 3uLL);
  *(this + 10) = -1;
  v3 = *MEMORY[0x277D85DE8];
  return this;
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = this + 16;
  *this = v2;
  *(this + 1) = v2;
  memset(v5, 0, sizeof(v5));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v2, v5, &v6, 3uLL);
  *(this + 10) = -1;
  v3 = *MEMORY[0x277D85DE8];
  return this;
}

double AugmentedBatteryHealthLib::Lut1D::lookUp(AugmentedBatteryHealthLib::Lut1D *this, double a2)
{
  result = 0.0;
  if (*(this + 10) == -1)
  {
    return result;
  }

  v4 = **this;
  v5 = *(*this + 8);
  v6 = v4 + 1;
  if (v4 == v5 || v6 == v5)
  {
    v12 = **this;
    v8 = v12;
  }

  else
  {
    v9 = *v4;
    v10 = *v4;
    v11 = v4 + 1;
    v12 = **this;
    v13 = v4 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v14 < v10)
      {
        v10 = v15;
        v12 = v11;
      }

      v11 = v13;
    }

    while (v13 != v5);
    v8 = **this;
    v16 = v4 + 1;
    do
    {
      v17 = *v16++;
      v18 = v17;
      if (v9 < v17)
      {
        v9 = v18;
        v8 = v6;
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (*v12 >= a2)
  {
    v24 = *(this + 1);
    v25 = v12 - v4;
    return *(*v24 + v25);
  }

  if (*v8 <= a2)
  {
    v24 = *(this + 1);
    v25 = v8 - v4;
    return *(*v24 + v25);
  }

  v19 = 0;
  v20 = v5 - v4 - 1;
  while (v20 != v19)
  {
    v21 = &v4[v19];
    v22 = v21[1];
    if (*v21 < a2 && v22 > a2)
    {
      v26 = (**(this + 1) + 8 * v19);
      return *v26 + (a2 - *v21) / (v22 - *v21) * (v26[1] - *v26);
    }

    ++v19;
    if (v22 == a2)
    {
      return *(**(this + 1) + 8 * v19);
    }
  }

  return result;
}

uint64_t AugmentedBatteryHealthLib::Lut2D::Lut2D(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0;
  v8 = a1 + 32;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(a1 + 32, &v23, v26, 3uLL);
  *(a1 + 56) = 0;
  v23 = 0;
  LODWORD(v24) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(a1 + 56, &v23, &v24 + 4, 3uLL);
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v23, v22, &v23, 3uLL);
  memset(v21, 0, sizeof(v21));
  memset(v26, 0, sizeof(v26));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v26, v21, v22, 3uLL);
  memset(v20, 0, sizeof(v20));
  v28[0] = 0;
  v28[1] = 0;
  v27 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v27, v20, v21, 3uLL);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(a1 + 80, &v23, &v29, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    v10 = v28[i - 1];
    if (v10)
    {
      v28[i] = v10;
      operator delete(v10);
    }
  }

  *a1 = a1 + 56;
  *(a1 + 8) = v8;
  *(a1 + 16) = a1 + 80;
  *(a1 + 24) = -1;
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = a3[1];
    if (*a3 != v13)
    {
      v14 = a2[1];
      if (*a2 != v14)
      {
        v15 = (v13 - *a3) >> 3;
        if (v15 == 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3))
        {
          if (v15 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = (v13 - *a3) >> 3;
          }

          v17 = (v11 + 8);
          while ((v14 - *a2) >> 2 == (*v17 - *(v17 - 1)) >> 3)
          {
            v17 += 3;
            if (!--v16)
            {
              *a1 = a2;
              *(a1 + 8) = a3;
              *(a1 + 16) = a4;
              *(a1 + 24) = 0;
              break;
            }
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_241AA4758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = &a26;
  v31 = -72;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      v33 = *v28;
      if (*v28)
      {
        *(v26 + 64) = v33;
        operator delete(v33);
      }

      v34 = *v27;
      if (*v27)
      {
        *(v26 + 40) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

AugmentedBatteryHealthLib::Lut2D *AugmentedBatteryHealthLib::Lut2D::Lut2D(AugmentedBatteryHealthLib::Lut2D *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (this + 56);
  *this = this + 56;
  *(this + 1) = this + 32;
  v3 = (this + 80);
  *(this + 2) = this + 80;
  *(this + 6) = -1;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(this + 32, &v11, v14, 3uLL);
  v11 = 0;
  LODWORD(v12) = 0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v2, &v11, &v12 + 4, 3uLL);
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v11, v10, &v11, 3uLL);
  memset(v9, 0, sizeof(v9));
  memset(v14, 0, sizeof(v14));
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(v14, v9, v10, 3uLL);
  memset(v8, 0, sizeof(v8));
  v16[0] = 0;
  v16[1] = 0;
  v15 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&v15, v8, v9, 3uLL);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double> const*,std::vector<double> const*>(v3, &v11, &v17, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    v5 = v16[i - 1];
    if (v5)
    {
      v16[i] = v5;
      operator delete(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_241AA4998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = &a26;
  v31 = -72;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      v33 = *v28;
      if (*v28)
      {
        *(v26 + 64) = v33;
        operator delete(v33);
      }

      v34 = *v27;
      if (*v27)
      {
        *(v26 + 40) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

double AugmentedBatteryHealthLib::Lut2D::getValue(AugmentedBatteryHealthLib::Lut2D *this, int a2, double a3)
{
  if (*(this + 6) == -1)
  {
    return 0.0;
  }

  v5 = AugmentedBatteryHealthLib::locate<double>(*(this + 1), a3);
  return *(*(**(this + 2) + 24 * v5) + 8 * AugmentedBatteryHealthLib::locate<int>(*this, a2));
}

unint64_t AugmentedBatteryHealthLib::locate<double>(double **a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = v4 + 1;
  if (v4 + 1 == v3)
  {
    v9 = *a1;
    v14 = *a1;
  }

  else
  {
    v6 = *v4;
    v7 = *v4;
    v8 = v4 + 1;
    v9 = *a1;
    v10 = v4 + 1;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 < v7)
      {
        v7 = v12;
        v9 = v8;
      }

      v8 = v10;
    }

    while (v10 != v3);
    v13 = v4 + 1;
    v14 = *a1;
    v15 = v4 + 1;
    do
    {
      v16 = *v15++;
      v17 = v16;
      if (v6 < v16)
      {
        v6 = v17;
        v14 = v13;
      }

      v13 = v15;
    }

    while (v15 != v3);
  }

  if (*v9 > a2)
  {
    return (v9 - v4) >> 3;
  }

  if (*v14 < a2)
  {
    return (v14 - v4) >> 3;
  }

  v19 = v3 - v4;
  v20 = v3 - v4;
  if (v20 == 1)
  {
    return 0;
  }

  v21 = 0;
  result = (v19 >> 3) - 1;
  v22 = 1 - v20;
  while (*(v5 - 1) > a2 || *v5 <= a2)
  {
    --v21;
    ++v5;
    if (v22 == v21)
    {
      return result;
    }
  }

  return -v21;
}

unint64_t AugmentedBatteryHealthLib::locate<int>(char **a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = v4 + 4;
  if (v4 + 4 == v3)
  {
    v9 = *a1;
    v14 = *a1;
  }

  else
  {
    v6 = *v4;
    v7 = *v4;
    v8 = v4 + 4;
    v9 = *a1;
    v10 = v4 + 4;
    do
    {
      v12 = *v10;
      v10 += 4;
      v11 = v12;
      if (v12 < v7)
      {
        v7 = v11;
        v9 = v8;
      }

      v8 = v10;
    }

    while (v10 != v3);
    v13 = v4 + 4;
    v14 = *a1;
    v15 = v4 + 4;
    do
    {
      v17 = *v15;
      v15 += 4;
      v16 = v17;
      v18 = v6 < v17;
      if (v6 <= v17)
      {
        v6 = v16;
      }

      if (v18)
      {
        v14 = v13;
      }

      v13 = v15;
    }

    while (v15 != v3);
  }

  if (*v9 > a2)
  {
    return (v9 - v4) >> 2;
  }

  if (*v14 < a2)
  {
    return (v14 - v4) >> 2;
  }

  v20 = v3 - v4;
  v21 = (v3 - v4) >> 2;
  if (v21 == 1)
  {
    return 0;
  }

  v22 = 0;
  result = (v20 >> 2) - 1;
  v23 = 1 - v21;
  while (*(v5 - 1) > a2 || *v5 <= a2)
  {
    ++v5;
    if (v23 == --v22)
    {
      return result;
    }
  }

  return -v22;
}

uint64_t AugmentedBatteryHealthLib::hex2double(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  v2 = 0xFFFFFFFFLL;
  if (v1 == 4)
  {
    v15 = -1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
    *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
    MEMORY[0x245CF6640](v9, &v15);
    v2 = v15;
    v9[0] = *MEMORY[0x277D82818];
    v7 = *(MEMORY[0x277D82818] + 72);
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v10 = v7;
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::iostream::~basic_iostream();
    MEMORY[0x245CF6700](&v14);
  }

  return v2;
}

void sub_241AA4ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x245CF6700](&a25);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_241AA5170(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245CF6700](v1);
  _Unwind_Resume(a1);
}

void AugmentedBatteryHealthLib::processRaTableRaw(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size == 64)
  {
    v5 = 0;
    __src[0] = 0;
    __src[1] = 0;
    v21 = 0;
    while (1)
    {
      std::string::basic_string(&v19, __str, v5, 4uLL, &v18);
      v6 = AugmentedBatteryHealthLib::hex2double(&v19);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v6 == -1)
      {
        break;
      }

      v7 = __src[1];
      if (__src[1] >= v21)
      {
        v9 = __src[0];
        v10 = __src[1] - __src[0];
        v11 = (__src[1] - __src[0]) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v13 = v21 - __src[0];
        if ((v21 - __src[0]) >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v14);
        }

        v15 = (4 * v11);
        v16 = &v15[-((__src[1] - __src[0]) >> 2)];
        *v15 = v6;
        v8 = v15 + 1;
        memcpy(v16, v9, v10);
        v17 = __src[0];
        __src[0] = v16;
        __src[1] = v8;
        v21 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *__src[1] = v6;
        v8 = v7 + 4;
      }

      __src[1] = v8;
      v5 += 4;
      if (v5 == 60)
      {
        *a2 = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 8) = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 8, __src[0], v8, (v8 - __src[0]) >> 2);
        goto LABEL_24;
      }
    }

    v18 = 0;
    std::vector<int>::vector[abi:ne200100](&v19, 0xFuLL);
    *a2 = -1;
    *(a2 + 8) = v19;
LABEL_24:
    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  else
  {
    LODWORD(v19.__r_.__value_.__l.__data_) = 0;
    std::vector<int>::vector[abi:ne200100](__src, 0xFuLL);
    *a2 = -1;
    *(a2 + 8) = *__src;
    *(a2 + 24) = v21;
  }
}

void sub_241AA5398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_241AA5624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CF66B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_241AA56D4(_Unwind_Exception *a1)
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

double CafeSwellAlgo::CoreEngine::freshInit(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(a1 + 184) = result;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v3 = *(a2 + 8);
  *(a1 + 208) = v3;
  *(a1 + 216) = v3 + -8640000.0;
  *(a1 + 224) = v3 + -8640000.0;
  *(a1 + 232) = result;
  *(a1 + 240) = v3;
  return result;
}

double CafeSwellAlgo::CoreEngine::runOnce(CafeSwellAlgo::CoreEngine *this, double **a2, double *a3, char a4)
{
  result = a3[1];
  *(this + 26) = result;
  if (a4)
  {
    result = result - *(this + 28);
    if (result >= *(this + 7))
    {
      CafeSwellAlgo::CoreEngine::runCafeSlow(this, a2, a3);
    }
  }

  if ((a4 & 2) != 0)
  {
    result = *(this + 26) - *(this + 27);
    if (result >= *(this + 6))
    {
      CafeSwellAlgo::CoreEngine::runCafeFast(this);
      result = *(this + 26);
      *(this + 27) = result;
    }
  }

  return result;
}

double *CafeSwellAlgo::CoreEngine::runCafeSlow(uint64_t a1, double **a2, double *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  result = CafeSwellAlgo::getNearestTimeBinary<CafeSwellAlgo::ACAMDailyData>(a2 + 9, *(a1 + 208));
  v7 = a2[10];
  if (v7 == result)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = result;
  }

  if (v8[4] <= 0.0)
  {
    *(a1 + 192) = -*(a1 + 80);
  }

  else
  {
    v9 = *(a1 + 208);
    v10 = v9 - a3[2];
    if (v10 >= *(a1 + 168) * 31536000.0)
    {
      *(a1 + 192) = -*(a1 + 80);
      *(a1 + 200) = 0xC010000000000000;
      *(a1 + 224) = v9;
      *(a1 + 240) = v9;
      *(a1 + 232) = a3[3];
    }

    else
    {
      if (v10 > *(a1 + 88))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        memset(v25, 0, sizeof(v25));
        v24 = 0u;
        memset(__p, 0, sizeof(__p));
        v22 = 0;
        v20 = 0u;
        *v21 = 0u;
        *v18 = 0u;
        *v19 = 0u;
        ACAMAgingUpdator::ACAMAgingUpdator(v17, *(*a1 + 16), **a1, *(*a1 + 24), *a1 + 40);
        CafeSwellAlgo::SyncedData::SyncedData(&v31, *(a1 + 208), a2, 2592000.0);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v31;
        __p[2] = v32;
        v32 = 0;
        v31 = 0uLL;
        if (__p[3])
        {
          __p[4] = __p[3];
          operator delete(__p[3]);
        }

        *&__p[3] = v33;
        __p[5] = v34;
        v34 = 0;
        v33 = 0uLL;
        if (v24)
        {
          *(&v24 + 1) = v24;
          operator delete(v24);
        }

        v24 = v35;
        v25[0] = v36;
        v36 = 0;
        v35 = 0uLL;
        v11 = v25[1];
        if (v25[1])
        {
          v25[2] = v25[1];
          operator delete(v25[1]);
          v11 = v35;
        }

        *&v25[1] = v37;
        v12 = v38;
        v38 = 0;
        v37 = 0uLL;
        v26 = v39;
        v25[3] = v12;
        v27 = v40;
        if (v11)
        {
          *(&v35 + 1) = v11;
          operator delete(v11);
        }

        if (v33)
        {
          *(&v33 + 1) = v33;
          operator delete(v33);
        }

        if (v31)
        {
          *(&v31 + 1) = v31;
          operator delete(v31);
        }

        v13 = *(a1 + 208);
        v14 = *(a3 + 2);
        v15 = *a3;
        CafeSwellAlgo::generateSyntheticData(a1 + 8, __p, v17);
      }

      *(a1 + 192) = xmmword_241AB5770;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241AA5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v43 - 240);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v43 - 208);
  ACAMAgingUpdator::~ACAMAgingUpdator(&a13);
  AugmentedBatteryHealthLib::SOCOCVParam::~SOCOCVParam(&a17);
  CafeSwellAlgo::BDCInput::~BDCInput(&a27);
  if (__p)
  {
    a43 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double CafeSwellAlgo::CoreEngine::runCafeFast(CafeSwellAlgo::CoreEngine *this)
{
  v1 = *(this + 20);
  v2 = (*(this + 19) - v1) / (*(this + 18) + -1.0);
  result = fmin(fmax(round((v1 + round((*(this + 29) + *(this + 24) * (*(this + 26) - *(this + 30)) / 86400.0 - v1) / v2) * v2) / 0.001) * 0.001, *(this + 4) + -0.11), *(this + 4));
  *(this + 23) = result;
  return result;
}

double *CafeSwellAlgo::getNearestTimeBinary<CafeSwellAlgo::ACAMDailyData>(double **a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    result = a1[1];
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 4);
    result = *a1;
    do
    {
      v6 = v4 >> 1;
      v7 = &result[6 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 6;
      v4 += ~(v4 >> 1);
      if (v9 > a2)
      {
        v4 = v6;
      }

      else
      {
        result = v8;
      }
    }

    while (v4);
  }

  if (v3 == result)
  {
    return v3;
  }

  if (v2 == result)
  {
    return v2 - 6;
  }

  if (vabdd_f64(a2, *(result - 6)) < vabdd_f64(a2, *result))
  {
    result -= 6;
  }

  return result;
}

void CafeSwellAlgo::CoreEngine::~CoreEngine(CafeSwellAlgo::CoreEngine *this)
{
  v2 = *this;
  if (v2)
  {
    ACAMUtility::ACAMParameterPack::~ACAMParameterPack(v2);
    MEMORY[0x245CF6740]();
    *this = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

__n128 std::__function::__func<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0,std::allocator<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0>,double ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2853A40D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0,std::allocator<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v2 = *a2;
  v4 = 0.0;
  CafeSwellAlgo::forecastLongevity((*(a1 + 8) + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), &v4, v2, *(*(a1 + 8) + 208), *(*(a1 + 16) + 16), *(*(a1 + 16) + 24), *(a1 + 56));
  return v4;
}

uint64_t std::__function::__func<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0,std::allocator<CafeSwellAlgo::CoreEngine::runCafeSlow(CafeSwellAlgo::BDCInput const&,CafeSwellAlgo::SMCKeyData const&)::$_0>,double ()(double)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

CafeSwellAlgo::SyncedData *CafeSwellAlgo::SyncedData::SyncedData(CafeSwellAlgo::SyncedData *this, double a2, const CafeSwellAlgo::BDCInput *a3, double a4)
{
  *(this + 3) = 0u;
  v6 = (this + 48);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v8 = *(a3 + 6);
  v7 = *(a3 + 7);
  if (v7 == v8)
  {
    v8 = *(a3 + 7);
  }

  else
  {
    v9 = a2 - a4;
    v10 = (v7 - v8) >> 4;
    do
    {
      v11 = v10 >> 1;
      v12 = &v8[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v9)
      {
        v8 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  v15 = (v7 - v8) >> 4;
  std::vector<double>::reserve(this, v15);
  std::vector<double>::reserve(this + 3, v15);
  for (; v8 != *(a3 + 7); v8 += 2)
  {
    std::vector<double>::push_back[abi:ne200100](this, v8 + 1);
    std::vector<double>::push_back[abi:ne200100](this + 3, v8);
  }

  v17 = *(this + 3);
  v16 = *(this + 4);
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = CafeSwellAlgo::getNearestTimeBinary<CafeSwellAlgo::OBCData>(a3, *(v17 + 8 * v18));
      v20 = CafeSwellAlgo::getNearestTimeBinary<CafeSwellAlgo::OBCData>(a3 + 3, *(*(this + 3) + 8 * v18));
      std::vector<double>::push_back[abi:ne200100](this + 9, v19);
      std::vector<double>::push_back[abi:ne200100](v6, v20);
      ++v18;
      v17 = *(this + 3);
      v16 = *(this + 4);
    }

    while (v18 < (v16 - v17) >> 3);
  }

  v21 = CafeSwellAlgo::interpolatePrevious<CafeSwellAlgo::ACAMDailyData>(a3 + 72, *(v16 - 8));
  *(this + 14) = v21[3];
  *(this + 6) = vextq_s8(*(v21 + 1), *(v21 + 1), 8uLL);
  return this;
}

void sub_241AA63B4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 72);
  if (v4)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 24);
  if (v6)
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

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t CafeSwellAlgo::getNearestTimeBinary<CafeSwellAlgo::OBCData>(uint64_t *a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    result = a1[1];
  }

  else
  {
    v4 = (v2 - *a1) >> 4;
    result = *a1;
    do
    {
      v6 = v4 >> 1;
      v7 = result + 16 * (v4 >> 1);
      v8 = *(v7 + 8);
      v9 = v7 + 16;
      v4 += ~(v4 >> 1);
      if (v8 > a2)
      {
        v4 = v6;
      }

      else
      {
        result = v9;
      }
    }

    while (v4);
  }

  if (v3 == result)
  {
    return v3;
  }

  if (v2 == result)
  {
    return v2 - 16;
  }

  if (vabdd_f64(a2, *(result - 8)) < vabdd_f64(a2, *(result + 8)))
  {
    result -= 16;
  }

  return result;
}

double *CafeSwellAlgo::interpolatePrevious<CafeSwellAlgo::ACAMDailyData>(uint64_t a1, double a2)
{
  result = *a1;
  v3 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - result) >> 4);
  if (v5 >= 2 && *result <= a2)
  {
    v6 = v5 - 1;
    if (v6)
    {
      v7 = result;
      while (*result > a2 || result[6] <= a2)
      {
        v7 += 6;
        result += 6;
        if (!--v6)
        {
          return (v3 - 48);
        }
      }

      return v7;
    }

    else
    {
      return (v3 - 48);
    }
  }

  return result;
}

double CafeSwellAlgo::optimizeCafeTrajectory(uint64_t a1, double *a2, double *a3, double a4, double a5, double a6)
{
  v10 = a5;
  v12 = -a5;
  std::function<double ()(double)>::operator()(a1, -a5);
  v14 = v13;
  std::function<double ()(double)>::operator()(a1, v10);
  if (v14 < a6)
  {
    goto LABEL_4;
  }

  if (v15 > a6)
  {
    v14 = v15;
    v12 = v10;
LABEL_4:
    *a3 = v14;
    v16 = v12;
    goto LABEL_10;
  }

  v17 = 5;
  do
  {
    v16 = (v12 + v10) * 0.5;
    std::function<double ()(double)>::operator()(a1, v16);
    *a3 = v18;
    if (v18 < a6)
    {
      v10 = (v12 + v10) * 0.5;
    }

    else
    {
      v12 = (v12 + v10) * 0.5;
    }

    --v17;
  }

  while (v17);
LABEL_10:
  result = (v16 + a4) * 0.5;
  *a2 = result;
  return result;
}

uint64_t std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

double CafeSwellAlgo::forecastLongevity(double *a1, uint64_t a2, void *a3, void *a4, ACAMAgingModel *this, double *a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = 1.0;
  if (*(a2 + 32) >= 1.0)
  {
    v20 = a3[3];
    v21 = a3[4];
    v22 = *v20;
    v23 = 1;
    v24 = 0.0;
    v14 = 0.0;
    v25 = (a8 - a9) / 86400.0;
    do
    {
      if (v21 == v20)
      {
        v21 = v20;
        v15 = a11;
      }

      else
      {
        v26 = 0;
        v43 = a11;
        v15 = a11;
        do
        {
          v27 = a9;
          v14 = (v20[v26] - a9) / 86400.0 + v13 * *(a2 + 24);
          v29 = a1[18];
          v28 = a1[19];
          v30 = (v29 - v28) / (a1[17] + -1.0);
          v31 = vcvtad_u64_f64((fmin(fmax(v28 + round((a10 + a7 * fmax(v14 - v25, 0.0) - v28) / v30) * v30, v28), v29) - v28) / v30);
          v32 = a4[6];
          v33 = (a4[7] - v32) >> 3;
          if (v33 <= v31)
          {
            v31 = v33 - 1;
          }

          v34 = *(a2 + 8);
          if (v34 != *a2)
          {
            v35 = (v34 - *a2) >> 3;
            v34 = *a2;
            do
            {
              v36 = v35 >> 1;
              v37 = &v34[v35 >> 1];
              v39 = *v37;
              v38 = v37 + 1;
              v35 += ~(v35 >> 1);
              if (v14 < v39)
              {
                v35 = v36;
              }

              else
              {
                v34 = v38;
              }
            }

            while (v35);
          }

          v40 = fmin(*(v32 + 8 * v31), fmin(*(v34 + a4[3] - *a2 - 8), *(a4[1] - 8))) - *(*a4 + 8 * v26) + *(*a3 + 8 * v26);
          v46 = 0.0;
          ACAMAgingModel::IPBGasSwell(this, *(a3[6] + 8 * v26) + 273.15, v40, &v46);
          v20 = a3[3];
          v21 = a3[4];
          v15 = v15 - ((v24 + v46) * 0.5 * ((v20[v26] - v22) / 3600.0) + 0.0);
          if (v21 - v20 - 1 == v26)
          {
            v41 = 0;
          }

          else
          {
            v41 = v26;
          }

          v22 = v20[v41];
          ++v26;
          v24 = v46;
          a9 = v27;
        }

        while (v26 < v21 - v20);
        v24 = v46;
        a11 = v43;
      }

      if (v15 < 0.0)
      {
        break;
      }

      v13 = ++v23;
      a11 = v15;
    }

    while (*(a2 + 32) >= v23);
  }

  else
  {
    v14 = 0.0;
    v15 = a11;
  }

  result = fmax(fmin((v14 - v15 / ((v15 - a11) / *(a2 + 24))) / 365.0, 5.0), 0.0);
  *a6 = result;
  return result;
}

unint64_t findVCathAtVmax(uint64_t *a1, double **a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  v12 = *a2;
  v13 = *a1;
  v14 = a1[1] - *a1;
  v20[0] = v12;
  v20[1] = v14 >> 3;
  v15 = *v12;
  v16 = (v12 + v14);
  v17 = *(v12 + v14 - 8);
  v22 = v13;
  if ((v14 >> 3) <= 1)
  {
    puts("dataTable<T>::dataTable requires at least two elements[pointer constructor]");
    v15 = *v12;
    v17 = *(v16 - 1);
  }

  v21 = v15 > v17;
  dataTable<double>::getValue(v20, 0, a6 - a7);
  return dataTable<double>::getValue(a3, 0, a4 - v18 * (a4 - a5));
}

unint64_t dataTable<double>::getValue(uint64_t *a1, char a2, double a3)
{
  result = sortedUniqueArray<double>::getIdx(a1, -1, -1, a3);
  v6 = a1[1] - 1;
  if (a2)
  {
    if (result <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = result;
    }

    if (result <= v6)
    {
      result = v7;
    }

    else
    {
      result = a1[1] - 1;
    }
  }

  else
  {
    if (result > v6)
    {
      v8 = *(a1[3] + 8 * v6);
      return result;
    }

    if (!result)
    {
      v13 = *a1[3];
      return result;
    }
  }

  v9 = a1[3];
  v10 = *(v9 + 8 * result);
  v11 = 8 * result - 8;
  v12 = *(v9 + v11);
  if (*(*a1 + 8 * result) == *(*a1 + v11))
  {
    return puts("dataTable<T>::interpolate: Division by zero");
  }

  return result;
}

void findVCathAtVmax(uint64_t *a1@<X0>, double **a2@<X1>, double **a3@<X2>, uint64_t *a4@<X3>, const void **a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    do
    {
      findVCathAtVmax(a1, a2, a4, a6, a7, *v8, a8);
      v19 = a5[1];
      v18 = a5[2];
      if (v19 >= v18)
      {
        v21 = *a5;
        v22 = v19 - *a5;
        v23 = v22 >> 3;
        v24 = (v22 >> 3) + 1;
        if (v24 >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v25 = v18 - v21;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a5, v26);
        }

        *(8 * v23) = v17;
        v20 = 8 * v23 + 8;
        memcpy(0, v21, v22);
        v27 = *a5;
        *a5 = 0;
        a5[1] = v20;
        a5[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v19 = v17;
        v20 = (v19 + 8);
      }

      a5[1] = v20;
      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_241AA6D20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CafeSwellAlgo::generateSyntheticData(uint64_t a1, double *a2, ACAMAgingUpdator *a3)
{
  std::vector<double>::vector[abi:ne200100](v14, 0x65uLL);
  __p = 0;
  std::vector<double>::vector[abi:ne200100](&v13, 0x65uLL);
  v5 = 0;
  v11 = 0.0;
  v12 = 0.0;
  v6 = xmmword_241AB1500;
  v7 = vdupq_n_s64(0x65uLL);
  v8 = v14[0];
  v9 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (vmovn_s64(vcgtq_u64(v7, v6)).u8[0])
    {
      v8[v5] = v5 * 0.01;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x65uLL), *&v6)).i32[1])
    {
      v8[v5 + 1] = (v5 + 1) * 0.01;
    }

    v5 += 2;
    v6 = vaddq_s64(v6, v9);
    if (v5 == 102)
    {
      ACAMAgingUpdator::getOCV(a3, a2[12] * *(*(a3 + 2) + 8), a2[13] * *(*(a3 + 2) + 16), a2[14] * *(*(a3 + 2) + 24), v8, v14[1] - v8, v13);
    }
  }
}

void sub_241AA70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sortedUniqueArray<double>::getIdx(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == -1)
  {
    result = 0;
  }

  else
  {
    result = a2;
  }

  if (a3 == -1)
  {
    a3 = a1[1] - 1;
  }

  v6 = a3 - result + 1;
  if (a3 - result != -1)
  {
    v7 = *a1;
    v8 = *(a1 + 16);
    do
    {
      v9 = v6 >> 1;
      v10 = result + (v6 >> 1);
      v11 = *(v7 + 8 * v10);
      v12 = v11 > a4;
      if (!v8)
      {
        v12 = v11 < a4;
      }

      v6 += ~(v6 >> 1);
      if (v12)
      {
        result = v10 + 1;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v6);
  }

  return result;
}

void ACAMCrossModelLibrary::getResistance(int a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v71[2] = *MEMORY[0x277D85DE8];
  v15 = fabs(a4) / a5;
  Idx = sortedUniqueArray<double>::getIdx((a2 + 176), -1, -1, a8);
  v17 = *(a2 + 184) - 1;
  if (Idx < v17)
  {
    v17 = Idx;
  }

  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 - 1;
  v20 = 224;
  if (a4 > 0.0)
  {
    v20 = 200;
  }

  v21 = 232;
  if (a4 > 0.0)
  {
    v21 = 208;
  }

  v22 = *(a2 + v20);
  v23 = *(a2 + v21);
  if (!v23)
  {
    v24 = 0;
LABEL_23:
    if (v24)
    {
      v33 = v24 - 1;
    }

    else
    {
      v33 = 0;
    }

    v32 = v24;
    goto LABEL_27;
  }

  v24 = 0;
  v25 = 240;
  if (a4 > 0.0)
  {
    v25 = 216;
  }

  v26 = *(a2 + v25);
  v27 = v23;
  do
  {
    v28 = v27 >> 1;
    v29 = v24 + (v27 >> 1);
    v30 = *(v22 + 8 * v29);
    v31 = v30 > v15;
    if (!v26)
    {
      v31 = v30 < v15;
    }

    v27 += ~(v27 >> 1);
    if (v31)
    {
      v24 = v29 + 1;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
  v32 = v23 - 1;
  v33 = v23 - 1;
  if (v24 <= v23 - 1)
  {
    goto LABEL_23;
  }

LABEL_27:
  v34 = 248;
  if (a1 == 1)
  {
    v34 = 256;
  }

  v35 = 264;
  if (a1 == 1)
  {
    v35 = 272;
  }

  if (a4 <= 0.0)
  {
    v34 = v35;
  }

  v36 = *(a2 + v34);
  v37 = *(v36 + 8 * v18);
  v38 = (v37 + 32 * v32);
  v39 = v38[1];
  v68[0] = *v38;
  v68[1] = v39;
  v40 = (v37 + 32 * v33);
  v41 = v40[1];
  v67[0] = *v40;
  v67[1] = v41;
  v42 = *(v36 + 8 * v19);
  v43 = (v42 + 32 * v32);
  v44 = v43[1];
  v66[0] = *v43;
  v66[1] = v44;
  v45 = (v42 + 32 * v33);
  v46 = v45[1];
  v65[0] = *v45;
  v65[1] = v46;
  dataTable<double>::getValue(v68, 0, a9);
  v48 = v47;
  dataTable<double>::getValue(v67, 0, a9);
  v50 = v49;
  dataTable<double>::getValue(v66, 0, a9);
  v52 = v51;
  dataTable<double>::getValue(v65, 0, a9);
  if (v33 == v32)
  {
    v54 = (v52 + v53) * 0.5;
    v55 = (v48 + v50) * 0.5;
  }

  else
  {
    v56 = *(v22 + 8 * v33);
    v57 = *(v22 + 8 * v32) - v56;
    v58 = v15 - v56;
    v54 = v53 + (v52 - v53) * v58 / v57;
    v55 = v50 + (v48 - v50) * v58 / v57;
  }

  v59 = *(a2 + 176);
  v69 = *(v59 + 8 * v19);
  v70 = *(v59 + 8 * v18);
  *v71 = v54;
  *&v71[1] = v55;
  v62[0] = &v69;
  v62[1] = 2;
  v63 = v69 > v70;
  v64 = v71;
  dataTable<double>::getValueArrhenius(v62, 1, a8, 273.15);
  *a3 = v60;
  v61 = *MEMORY[0x277D85DE8];
}

void dataTable<double>::getValueArrhenius(uint64_t *a1, char a2, double a3, double a4)
{
  Idx = sortedUniqueArray<double>::getIdx(a1, -1, -1, a3);
  v9 = a1[1] - 1;
  if (a2)
  {
    if (Idx <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = Idx;
    }

    if (Idx <= v9)
    {
      Idx = v10;
    }

    else
    {
      Idx = a1[1] - 1;
    }
  }

  else
  {
    if (Idx > v9)
    {
      v11 = *(a1[3] + 8 * v9);
      return;
    }

    if (!Idx)
    {
      v24 = *a1[3];
      return;
    }
  }

  v12 = 8 * Idx - 8;
  v13 = *(*a1 + v12);
  v14 = *(*a1 + 8 * Idx);
  v15 = a1[3];
  v16 = *(v15 + v12);
  if (v16 < 0.0)
  {
    v17 = *(v15 + 8 * Idx);
    if (v17 < 0.0)
    {
      v18 = log10(-v16);
      v19 = -v17;
LABEL_17:
      v20 = 1.0 / (v13 + a4);
      v21 = 1.0 / (v14 + a4);
      v22 = log10(v19);
      v23 = 1.0 / (a3 + a4);
      if (v21 == v20)
      {
        puts("dataTable<T>::interpolate: Division by zero");
      }

      __exp10(v18 + (v22 - v18) / (v21 - v20) * (v23 - v20));
      return;
    }
  }

  v19 = *(v15 + 8 * Idx);
  if (v16 > 0.0 && v19 > 0.0)
  {
    v18 = log10(*(v15 + v12));
    goto LABEL_17;
  }

  if (v14 == v13)
  {
    puts("dataTable<T>::interpolate: Division by zero");
  }
}

void ACAMCrossModelLibrary::getResistanceVersion2(int a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v72[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a6 = a7;
  }

  v16 = fabs(a4) / a6;
  Idx = sortedUniqueArray<double>::getIdx((a2 + 176), -1, -1, a8);
  v18 = *(a2 + 184) - 1;
  if (Idx < v18)
  {
    v18 = Idx;
  }

  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 - 1;
  v21 = 224;
  if (a4 > 0.0)
  {
    v21 = 200;
  }

  v22 = 232;
  if (a4 > 0.0)
  {
    v22 = 208;
  }

  v23 = *(a2 + v21);
  v24 = *(a2 + v22);
  if (!v24)
  {
    v25 = 0;
LABEL_26:
    if (v25)
    {
      v34 = v25 - 1;
    }

    else
    {
      v34 = 0;
    }

    v33 = v25;
    goto LABEL_30;
  }

  v25 = 0;
  v26 = 240;
  if (a4 > 0.0)
  {
    v26 = 216;
  }

  v27 = *(a2 + v26);
  v28 = v24;
  do
  {
    v29 = v28 >> 1;
    v30 = v25 + (v28 >> 1);
    v31 = *(v23 + 8 * v30);
    v32 = v31 > v16;
    if (!v27)
    {
      v32 = v31 < v16;
    }

    v28 += ~(v28 >> 1);
    if (v32)
    {
      v25 = v30 + 1;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  v33 = v24 - 1;
  v34 = v24 - 1;
  if (v25 <= v24 - 1)
  {
    goto LABEL_26;
  }

LABEL_30:
  v35 = 248;
  if (a1 == 1)
  {
    v35 = 256;
  }

  v36 = 264;
  if (a1 == 1)
  {
    v36 = 272;
  }

  if (a4 <= 0.0)
  {
    v35 = v36;
  }

  v37 = *(a2 + v35);
  v38 = *(v37 + 8 * v19);
  v39 = (v38 + 32 * v33);
  v40 = v39[1];
  v69[0] = *v39;
  v69[1] = v40;
  v41 = (v38 + 32 * v34);
  v42 = v41[1];
  v68[0] = *v41;
  v68[1] = v42;
  v43 = *(v37 + 8 * v20);
  v44 = (v43 + 32 * v33);
  v45 = v44[1];
  v67[0] = *v44;
  v67[1] = v45;
  v46 = (v43 + 32 * v34);
  v47 = v46[1];
  v66[0] = *v46;
  v66[1] = v47;
  dataTable<double>::getValue(v69, 0, a9);
  v49 = v48;
  dataTable<double>::getValue(v68, 0, a9);
  v51 = v50;
  dataTable<double>::getValue(v67, 0, a9);
  v53 = v52;
  dataTable<double>::getValue(v66, 0, a9);
  if (v34 == v33)
  {
    v55 = (v53 + v54) * 0.5;
    v56 = (v49 + v51) * 0.5;
  }

  else
  {
    v57 = *(v23 + 8 * v34);
    v58 = *(v23 + 8 * v33) - v57;
    v59 = v16 - v57;
    v55 = v54 + (v53 - v54) * v59 / v58;
    v56 = v51 + (v49 - v51) * v59 / v58;
  }

  v60 = *(a2 + 176);
  v70 = *(v60 + 8 * v20);
  v71 = *(v60 + 8 * v19);
  *v72 = v55;
  *&v72[1] = v56;
  v63[0] = &v70;
  v63[1] = 2;
  v64 = v70 > v71;
  v65 = v72;
  dataTable<double>::getValueArrhenius(v63, 1, a8, 273.15);
  *a3 = v61;
  v62 = *MEMORY[0x277D85DE8];
}