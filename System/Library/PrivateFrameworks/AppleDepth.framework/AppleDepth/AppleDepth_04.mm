void sub_24038AAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  MatrixNxPts<1u,double>::~MatrixNxPts(va1);
  _Unwind_Resume(a1);
}

void CGMC_BundleAdjustment::OptimizationParams::~OptimizationParams(CGMC_BundleAdjustment::OptimizationParams *this)
{
  *(this + 12) = off_285231258;
  v1 = *(this + 13);
  if (v1 && *(this + 120) == 1)
  {
    v2 = this;
    MEMORY[0x245CBFC90](v1, 0x1000C8000313F17);
    this = v2;
    *(v2 + 13) = 0;
    *(v2 + 16) = 0;
    *(v2 + 120) = 0;
  }

  *(this + 14) = 0;
}

double CGMC_BundleAdjustment::angleAxisToRotationMatrix@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = sqrt(v3 * v3 + 0.0 + v4 * v4 + v5 * v5);
  if (v6 != 0.0)
  {
    v3 = v3 / v6;
    v4 = v4 / v6;
    *a1 = v3;
    a1[1] = v4;
    v5 = v5 / v6;
    a1[2] = v5;
  }

  v7 = __sincos_stret(v6);
  v8 = v7.__sinval * 0.0 + 1.0;
  v9 = 0.0 - v5 * v5;
  v10 = v5 * v4 + 0.0;
  *a2 = v8 + (1.0 - v7.__cosval) * (v9 - v4 * v4);
  a2[1] = 0.0 - v7.__sinval * v5 + (1.0 - v7.__cosval) * (0.0 - v5 * 0.0 - v5 * 0.0 + v4 * v3);
  a2[2] = v7.__sinval * v4 + 0.0 + (1.0 - v7.__cosval) * (v4 * 0.0 + 0.0 + v5 * v3 + v4 * 0.0);
  a2[3] = v7.__sinval * v5 + 0.0 + (1.0 - v7.__cosval) * (v5 * 0.0 + 0.0 + v5 * 0.0 + v3 * v4);
  a2[4] = v8 + (1.0 - v7.__cosval) * (v9 + 0.0 - v3 * v3);
  a2[5] = 0.0 - v7.__sinval * v3 + (1.0 - v7.__cosval) * (v10 - v3 * 0.0 - v3 * 0.0);
  a2[6] = 0.0 - v7.__sinval * v4 + (1.0 - v7.__cosval) * (0.0 - v4 * 0.0 + v3 * v5 - v4 * 0.0);
  a2[7] = v7.__sinval * v3 + 0.0 + (1.0 - v7.__cosval) * (v10 + v3 * 0.0 + v3 * 0.0);
  result = v8 + (1.0 - v7.__cosval) * (0.0 - v4 * v4 - v3 * v3 + 0.0);
  a2[8] = result;
  return result;
}

uint64_t CGMC_BundleAdjustment::getNumberOfPearlJasperCorrespondences(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(*(a2 + 8) + 8 * result) != 0.0)
  {
    if (v2 == ++result)
    {
      return *(a2 + 20);
    }
  }

  return result;
}

double CGMC_BundleAdjustment::OptimizationParams::OptimizationParams(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = *a3;
  *(a1 + 104) = *(a4 + 8);
  result = *(a4 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = *(a4 + 24);
  *(a1 + 128) = *(a4 + 32);
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *(a1 + 96) = &unk_2852312D8;
  *(a1 + 136) = a5;
  return result;
}

{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a1 + 88) = *(a3 + 64);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = *a3;
  *(a1 + 104) = *(a4 + 8);
  result = *(a4 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = *(a4 + 24);
  *(a1 + 128) = *(a4 + 32);
  *(a4 + 8) = 0;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *(a1 + 96) = &unk_2852312D8;
  *(a1 + 136) = a5;
  return result;
}

void CGMC_BundleAdjustment::OptimizationParams::OptimizationParams(CGMC_BundleAdjustment::OptimizationParams *this, const CGMC_BundleAdjustment::OptimizationParams *a2)
{
  v2 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v2;
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 11);
  *(this + 40) = *(a2 + 40);
  *(this + 11) = v5;
  *(this + 72) = v4;
  *(this + 56) = v3;
  *(this + 24) = *(a2 + 24);
  Matrix<double>::Matrix(this + 96, a2 + 96);
}

{
  v2 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v2;
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 11);
  *(this + 40) = *(a2 + 40);
  *(this + 11) = v5;
  *(this + 72) = v4;
  *(this + 56) = v3;
  *(this + 24) = *(a2 + 24);
  Matrix<double>::Matrix(this + 96, a2 + 96);
}

double CGMC_BundleAdjustment::OptimizationParams::ShiftBy(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 8);
  v4 = a3[560];
  v5 = a3[561];
  v6 = a3[562];
  if (a3[560])
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  v8 = v7 + v5;
  if (a3[561])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  if (a3[562])
  {
    v10 = v7 + v5;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  *a1 = **(a2 + 8) + *a1;
  *(a1 + 8) = *(*(a2 + 8) + 8) + v3;
  result = *(*(a2 + 8) + 16) + *(a1 + 16);
  *(a1 + 16) = result;
  if (*(a1 + 136) == 1)
  {
    v17 = v4 == 0;
    v18 = 24;
    if (v17)
    {
      v18 = 0x7FFFFFFF8;
    }

    *(a1 + 24) = *(*(a2 + 8) + v18) + *(a1 + 24);
    result = *(*(a2 + 8) + v18) + *(a1 + 56);
    *(a1 + 56) = result;
    v12 = v8 + v6;
    if (!v5)
    {
LABEL_12:
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = v8 + v6;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  result = *(*(a2 + 8) + 8 * v9) + *(a1 + 40);
  *(a1 + 40) = result;
  if (v6)
  {
LABEL_13:
    result = *(*(a2 + 8) + 8 * v10) + *(a1 + 64);
    *(a1 + 64) = result;
  }

LABEL_14:
  v13 = *(a2 + 20);
  if (v13 > v12)
  {
    v14 = *(a1 + 104);
    v15 = *(a1 + 116);
    v16 = 2 * v15;
    do
    {
      *v14 = *(*(a2 + 8) + 8 * v12) + *v14;
      v14[v15] = *(*(a2 + 8) + 8 * (v12 + 1)) + v14[v15];
      result = *(*(a2 + 8) + 8 * (v12 + 2)) + v14[v16];
      v14[v16] = result;
      ++v14;
      v12 += 3;
    }

    while (v13 > v12);
  }

  return result;
}

BOOL CGMC_BundleAdjustment::isStalled(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v5 = sqrt(v4[1] * v4[1] + *v4 * *v4 + v4[2] * v4[2]);
  if (v5 < *(a4 + 648))
  {
    v5 = fabs(v4[3]);
    if (v5 < *(a4 + 656))
    {
      return 1;
    }
  }

  LODWORD(v5) = *(a4 + 568);
  return fabs(a1) / *&v5 < *(a4 + 640);
}

uint64_t CGMC_BundleAdjustment::getResidualsStats(uint64_t a1, uint64_t a2, double *a3, double *a4, double *a5)
{
  v5 = *(a2 + 20);
  if (*(a2 + 16) * v5)
  {
    operator new[]();
  }

  v6 = v5 >> 1;
  if (v5 >= 2)
  {
    operator new[]();
  }

  *a3 = 0.0 / v6;
  *a4 = sqrt((*(8 * ((v5 >> 2) - 1)) + *(8 * (v5 >> 2))) * 0.5);
  *a5 = sqrt(*(8 * (vcvtad_u64_f64(v6 * 0.95) - 1)));
  return 0;
}

void sub_24038B6EC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_24038BE84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24038C958(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24038CB54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24038CD50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24038CF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24038D3F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24038D498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24038D5A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24038D6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24038D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v8 = v6;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void jpc::JPC::~JPC(jpc::JPC *this)
{
  jpc::JPC::~JPC(this);

  JUMPOUT(0x245CBFCB0);
}

{
  *this = &unk_2852316B8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

uint64_t jpc::JPC::JPC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, char a11)
{
  v11 = *a2;
  *a2 = 0;
  *result = &unk_2852316B8;
  *(result + 8) = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = *a4;
  *a4 = 0;
  *(result + 16) = v12;
  *(result + 24) = v13;
  v14 = *a5;
  *a5 = 0;
  v15 = *a6;
  *a6 = 0;
  *(result + 32) = v14;
  *(result + 40) = v15;
  v16 = *a7;
  *a7 = 0;
  v17 = *a8;
  *a8 = 0;
  *(result + 48) = v16;
  *(result + 56) = v17;
  v18 = *a9;
  *a9 = 0;
  v19 = *a10;
  *a10 = 0;
  *(result + 64) = v18;
  *(result + 72) = v19;
  *(result + 80) = a11;
  *(result + 81) = 0;
  *(result + 88) = 0;
  *(result + 96) = -1;
  return result;
}

{
  v11 = *a2;
  *a2 = 0;
  *result = &unk_2852316B8;
  *(result + 8) = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = *a4;
  *a4 = 0;
  *(result + 16) = v12;
  *(result + 24) = v13;
  v14 = *a5;
  *a5 = 0;
  v15 = *a6;
  *a6 = 0;
  *(result + 32) = v14;
  *(result + 40) = v15;
  v16 = *a7;
  *a7 = 0;
  v17 = *a8;
  *a8 = 0;
  *(result + 48) = v16;
  *(result + 56) = v17;
  v18 = *a9;
  *a9 = 0;
  v19 = *a10;
  *a10 = 0;
  *(result + 64) = v18;
  *(result + 72) = v19;
  *(result + 80) = a11;
  *(result + 81) = 0;
  *(result + 88) = 0;
  *(result + 96) = -1;
  return result;
}

void jpc::JPC::run(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (!*(a1 + 96))
  {
    goto LABEL_103;
  }

  v80 = v10;
  v81 = v11;
  if (((*(**(a1 + 8) + 16))(*(a1 + 8), a2, v11) & 1) == 0)
  {
    __cxa_allocate_exception(0x80uLL);
    jpc::PreprocessingFilterInvalidFrameException::PreprocessingFilterInvalidFrameException(&__p);
  }

  (*(**(a1 + 16) + 16))(&__p);
  v78 = a2;
  v79 = a4;
  if (*(a1 + 80) == 1)
  {
    v12 = __dst;
    v91 = __dst;
    v13 = __dst;
  }

  else
  {
    v13 = __dst;
    v12 = v91;
    if (v91 != __dst)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = &v13[72 * v14];
        if (*v18 >= 100.0)
        {
          v19 = v15 - v16;
          v20 = 0x8E38E38E38E38E39 * ((v15 - v16) >> 3);
          v21 = v20 + 1;
          __src = v16;
          if (v20 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          if (0x1C71C71C71C71C72 * (-v16 >> 3) > v21)
          {
            v21 = 0x1C71C71C71C71C72 * (-v16 >> 3);
          }

          if (0x8E38E38E38E38E39 * (-v16 >> 3) >= 0x1C71C71C71C71C7)
          {
            v22 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            if (v22 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v23 = 72 * v20;
          *v23 = *v18;
          v24 = *(v18 + 1);
          v25 = *(v18 + 2);
          v26 = *(v18 + 3);
          *(v23 + 64) = *(v18 + 8);
          *(v23 + 32) = v25;
          *(v23 + 48) = v26;
          *(v23 + 16) = v24;
          v15 = 72 * v20 + 72;
          v27 = (v23 + 72 * (v19 / -72));
          memcpy(v27, v16, v19);
          if (__src)
          {
            operator delete(__src);
          }

          v16 = v27;
        }

        v14 = v17;
        v13 = __dst;
        v12 = v91;
        ++v17;
      }

      while (0x8E38E38E38E38E39 * ((v91 - __dst) >> 3) > v14);
      goto LABEL_22;
    }
  }

  v16 = 0;
  v15 = 0;
LABEL_22:
  __srca = v16;
  v28 = v15 - v16;
  v29 = v92;
  if (v92 - v13 < (v15 - v16))
  {
    v30 = 0x8E38E38E38E38E39 * (v28 >> 3);
    if (v13)
    {
      v91 = v13;
      operator delete(v13);
      v29 = 0;
      __dst = 0;
      v91 = 0;
      v92 = 0;
    }

    if (v30 <= 0x38E38E38E38E38ELL)
    {
      v31 = 0x8E38E38E38E38E39 * (v29 >> 3);
      v32 = 2 * v31;
      if (2 * v31 <= v30)
      {
        v32 = 0x8E38E38E38E38E39 * (v28 >> 3);
      }

      if (v31 >= 0x1C71C71C71C71C7)
      {
        v33 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v33 = v32;
      }

      if (v33 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v34 = v12 - v13;
  if (v12 - v13 >= v28)
  {
    if (v15 != v16)
    {
      v37 = v13;
      memmove(v13, v16, v15 - v16);
      v13 = v37;
    }

    v36 = &v13[v28];
  }

  else
  {
    v35 = (v16 + v34);
    if (v12 != v13)
    {
      memmove(v13, v16, v34);
      v12 = v91;
    }

    if (v15 != v35)
    {
      memmove(v12, v35, v15 - v35);
    }

    v36 = &v12[v15 - v35];
  }

  v91 = v36;
  v38 = __p;
  v39 = v88;
  if (v88 == __p)
  {
    v42 = 0;
    v41 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = &v38[56 * v40];
      if (*v44 >= 100.0)
      {
        v45 = v41 - v42;
        v46 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v42) >> 3);
        v47 = v46 + 1;
        if ((v46 + 1) > 0x492492492492492)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        if (0xDB6DB6DB6DB6DB6ELL * (-v42 >> 3) > v47)
        {
          v47 = 0xDB6DB6DB6DB6DB6ELL * (-v42 >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * (-v42 >> 3)) >= 0x249249249249249)
        {
          v48 = 0x492492492492492;
        }

        else
        {
          v48 = v47;
        }

        if (v48)
        {
          if (v48 <= 0x492492492492492)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v49 = 56 * v46;
        v50 = *v44;
        v51 = *(v44 + 1);
        v52 = *(v44 + 2);
        *(v49 + 48) = *(v44 + 6);
        *(v49 + 16) = v51;
        *(v49 + 32) = v52;
        *v49 = v50;
        v41 = 56 * v46 + 56;
        v53 = (v49 + 56 * (v45 / -56));
        memcpy(v53, v42, v45);
        if (v42)
        {
          operator delete(v42);
        }

        v42 = v53;
      }

      v40 = v43;
      v38 = __p;
      v39 = v88;
      ++v43;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v88 - __p) >> 3) > v40);
    v10 = v80;
    v11 = v81;
  }

  v54 = v41 - v42;
  v55 = v89;
  if (v89 - v38 < (v41 - v42))
  {
    v56 = 0x6DB6DB6DB6DB6DB7 * (v54 >> 3);
    if (v38)
    {
      v88 = v38;
      operator delete(v38);
      v55 = 0;
      __p = 0;
      v88 = 0;
      v89 = 0;
    }

    if (v56 <= 0x492492492492492)
    {
      v57 = 0x6DB6DB6DB6DB6DB7 * (v55 >> 3);
      v58 = 2 * v57;
      if (2 * v57 <= v56)
      {
        v58 = 0x6DB6DB6DB6DB6DB7 * (v54 >> 3);
      }

      if (v57 >= 0x249249249249249)
      {
        v59 = 0x492492492492492;
      }

      else
      {
        v59 = v58;
      }

      if (v59 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v60 = v39 - v38;
  if (v39 - v38 >= v54)
  {
    if (v41 != v42)
    {
      v63 = v38;
      memmove(v38, v42, v41 - v42);
      v38 = v63;
    }

    v62 = &v38[v54];
  }

  else
  {
    v61 = (v42 + v60);
    if (v39 != v38)
    {
      memmove(v38, v42, v60);
      v39 = v88;
    }

    if (v41 != v61)
    {
      memmove(v39, v61, v41 - v61);
    }

    v62 = &v39[v41 - v61];
    v11 = v81;
  }

  v88 = v62;
  v64 = __srca;
  if (*(a1 + 96) >= 2uLL)
  {
    (*(**(a1 + 24) + 16))(*(a1 + 24), &__p, v10, v11);
    if (((*(**(a1 + 24) + 24))(*(a1 + 24), v10, v94, v11) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x80uLL);
      jpc::IFANotReadyException::IFANotReadyException(v96);
      std::string::__assign_external((v97 + 8), "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/InFieldCalibrations/JPC/JPC.mm");
      *&v98 = 123;
      jpc::JPCException::generateExceptionStr(v96);
      jpc::JPCException::JPCException(exception, v96);
    }

    v65 = (*(**(a1 + 24) + 32))(&v85);
    if (!v85)
    {
      v77 = __cxa_allocate_exception(0x80uLL);
      jpc::IFAFailedException::IFAFailedException(v96);
      std::string::__assign_external((v97 + 8), "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/InFieldCalibrations/JPC/JPC.mm");
      *&v98 = 131;
      jpc::JPCException::generateExceptionStr(v96);
      jpc::JPCException::JPCException(v77, v96);
    }

    v66 = v86;
    v84[0] = v85;
    v84[1] = v86;
    if (v86)
    {
      atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
    }

    v67.n128_f64[0] = jpc::JPC::undistortRefPoints(v65, v78, v84);
    if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66, v67.n128_f64[0]);
      std::__shared_weak_count::__release_weak(v66);
    }

    v64 = __srca;
    if (*(a1 + 96) >= 3uLL)
    {
      (*(**(a1 + 32) + 16))(v96, v67);
      if (*(a1 + 96) >= 4uLL)
      {
        (*(**(a1 + 40) + 16))(*(a1 + 40), v96, v85 + 6, v93, v11);
        v68 = *(v79 + 192);
        v69 = v102;
        *(v79 + 128) = v101;
        *(v79 + 144) = v69;
        v70 = v104;
        *(v79 + 160) = v103;
        *(v79 + 176) = v70;
        v71 = v98;
        *(v79 + 64) = v97[1];
        *(v79 + 80) = v71;
        v72 = v100;
        *(v79 + 96) = v99;
        *(v79 + 112) = v72;
        v73 = v96[1];
        *v79 = v96[0];
        *(v79 + 16) = v73;
        v74 = v97[0];
        *(v79 + 32) = v96[2];
        *(v79 + 48) = v74;
        if ((v68 & 1) == 0)
        {
          *(v79 + 192) = 1;
        }
      }
    }

    v75 = v86;
    if (v86 && !atomic_fetch_add(v86 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v75->__on_zero_shared)(v75);
      std::__shared_weak_count::__release_weak(v75);
    }
  }

  if (v64)
  {
    operator delete(v64);
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (__dst)
  {
    v91 = __dst;
    operator delete(__dst);
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

LABEL_103:
}

void sub_24038E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *__p, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  jpc::JPCException::~JPCException(&STACK[0x220]);
  std::shared_ptr<jpc::IIFABlock::IFAOutput>::~shared_ptr[abi:ne200100](va);
  if (__p)
  {
    operator delete(__p);
  }

  if (v9)
  {
    operator delete(v9);
  }

  jpc::IPreprocessorBlock::JpcPreprocessorOutput::~JpcPreprocessorOutput(&(va1)->__vftable);

  _Unwind_Resume(a1);
}

void jpc::PreprocessingFilterInvalidFrameException::PreprocessingFilterInvalidFrameException(jpc::PreprocessingFilterInvalidFrameException *this)
{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_2852316D8;
  operator new();
}

jpc::IFANotReadyException *jpc::IFANotReadyException::IFANotReadyException(jpc::IFANotReadyException *this)
{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_285231700;
  v3[7] = 20;
  strcpy(v3, "tion");
  *(this + 2) = *"IFANotReadyException";
  *(this + 6) = *v3;
  jpc::JPCException::generateExceptionStr(this);
  *(this + 22) = 1;
  jpc::JPCException::generateExceptionStr(this);
  return this;
}

jpc::IFAFailedException *jpc::IFAFailedException::IFAFailedException(jpc::IFAFailedException *this)
{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_285231AE0;
  v3[7] = 18;
  strcpy(v3, "on");
  *(this + 2) = *"IFAFailedException";
  *(this + 6) = *v3;
  jpc::JPCException::generateExceptionStr(this);
  *(this + 22) = 50331648;
  jpc::JPCException::generateExceptionStr(this);
  return this;
}

{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_285231AE0;
  v3[7] = 18;
  strcpy(v3, "on");
  *(this + 2) = *"IFAFailedException";
  *(this + 6) = *v3;
  jpc::JPCException::generateExceptionStr(this);
  *(this + 22) = 50331648;
  jpc::JPCException::generateExceptionStr(this);
  return this;
}

double jpc::JPC::undistortRefPoints(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = *a3;
  v6 = (*a3)[3];
  if ((*a3)[4] != v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *(a2 + 280);
      v10 = 48 * v7;
      v30 = *(v6 + 48 * v7 + 16);
      [v9 undistort:1 distortedPixels:&v30 outUndistorted:&v29];
      result = *&v29;
      v5 = *a3;
      v6 = (*a3)[3];
      *(v6 + v10 + 16) = v29;
      v7 = v8++;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5[4] - v6) >> 4) > v7);
  }

  v12 = v5[9];
  if (v5[10] != v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(a2 + 280);
      v16 = 48 * v13;
      v30 = *(v12 + 48 * v13 + 16);
      [v15 undistort:1 distortedPixels:&v30 outUndistorted:&v29];
      result = *&v29;
      v5 = *a3;
      v12 = (*a3)[9];
      *(v12 + v16 + 16) = v29;
      v13 = v14++;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5[10] - v12) >> 4) > v13);
  }

  v17 = *v5;
  if (v5[1] != *v5)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = *(a2 + 280);
      v21 = 56 * v18;
      v30 = *(v17 + 56 * v18 + 16);
      [v20 undistort:1 distortedPixels:&v30 outUndistorted:&v29];
      result = *&v29;
      v5 = *a3;
      v17 = **a3;
      *(v17 + v21 + 16) = v29;
      v18 = v19++;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v5[1] - v17) >> 3) > v18);
  }

  v23 = v5 + 6;
  v22 = v5[6];
  if (v23[1] != v22)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v26 = *(a2 + 280);
      v27 = 56 * v24;
      v30 = *(v22 + 56 * v24 + 16);
      [v26 undistort:1 distortedPixels:&v30 outUndistorted:&v29];
      result = *&v29;
      v28 = *a3;
      v22 = (*a3)[6];
      *(v22 + v27 + 16) = v29;
      v24 = v25++;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v28[7] - v22) >> 3) > v24);
  }

  return result;
}

void jpc::IPreprocessorBlock::JpcPreprocessorOutput::~JpcPreprocessorOutput(id *this)
{
  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void jpc::IFAFailedException::~IFAFailedException(std::exception *this)
{
  jpc::JPCException::~JPCException(this);

  JUMPOUT(0x245CBFCB0);
}

void jpc::IFANotReadyException::~IFANotReadyException(std::exception *this)
{
  jpc::JPCException::~JPCException(this);

  JUMPOUT(0x245CBFCB0);
}

void jpc::PreprocessingFilterInvalidFrameException::~PreprocessingFilterInvalidFrameException(std::exception *this)
{
  jpc::JPCException::~JPCException(this);

  JUMPOUT(0x245CBFCB0);
}

void sub_2403907BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  a10.super_class = ADExecutor;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

__CVBuffer *calibrationFromAttachment(__CVBuffer *Attachment)
{
  if (Attachment)
  {
    Attachment = CVBufferGetAttachment(Attachment, @"Calibration Data", 0);
    if (Attachment)
    {
      v2 = Attachment;
      CFRetain(Attachment);
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFDictionaryGetTypeID())
      {
        Attachment = v3;
      }

      else
      {
        CFRelease(v3);
        Attachment = 0;
      }
    }

    v1 = vars8;
  }

  return Attachment;
}

void sub_240390C2C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_240392A68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2403934BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_240393B74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2403968F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

uint64_t isJasperFrameValidImpl(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  v8 = [v5 euclideanDistances];
  if (v7 < [v6 numberOfValidSpotsForValidFrame])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "ADJasperColorInFieldCalibration jasper controller failed: number of valid spots is too low";
      v11 = &v19;
LABEL_12:
      _os_log_impl(&dword_2402F6000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v12 = 0;
  if (v7)
  {
    v13 = v7;
    do
    {
      v14 = *v8;
      [v6 thresholdDepthValue];
      if (v14 < v15)
      {
        ++v12;
      }

      ++v8;
      --v13;
    }

    while (v13);
  }

  if (v7 - v12 < [v6 numberOfMinimalRangeSpots])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "ADJasperColorInFieldCalibration jasper controller failed: number of good spots is too low";
      v11 = &v18;
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    *a3 = 100 * (v7 - v12) / v7;
  }

  v16 = 1;
LABEL_17:

  return v16;
}

uint64_t isColorFrameValidImpl(__CVBuffer *a1, NSDictionary *a2, ADJasperColorInFieldCalibrationPipelineParameters *a3, ADJasperColorInFieldCalibrationControllerParameters *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([(ADJasperColorInFieldCalibrationPipelineParameters *)v8 forceRun])
  {
    v10 = 1;
    goto LABEL_32;
  }

  [MEMORY[0x277CED070] getFrameTransformsFromMetadataDictionary:v7 sensorCropRect:v38 rawSensorSize:&v36 postReadCropRect:&v32];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT) || (*buf = 134218752, v40 = *&v38[2], v41 = 2048, v42 = *&v38[3], v43 = 2048, v44 = *v38, v45 = 2048, v46 = *&v38[1], _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AD-RGBJ controller SensorCropRect       size.width:%f,  size.height:%f,  origin.x:%f,    origin.y:%f\n", buf, 0x2Au), (ADDebugUtilsADVerboseLogsEnabled & 1) != 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT) || (*buf = 134218240, v40 = v36, v41 = 2048, v42 = v37, _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AD-RGBJ controller rawSensorSize        size.width:%f,  size.height:%f\n", buf, 0x16u), (ADDebugUtilsADVerboseLogsEnabled & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          v40 = v34;
          v41 = 2048;
          v42 = v35;
          v43 = 2048;
          v44 = v32;
          v45 = 2048;
          v46 = v33;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AD-RGBJ controller TotalSensorCropRect  size.width:%f,  size.height:%f,  origin.x:%f,    origin.y:%f\n", buf, 0x2Au);
        }
      }
    }
  }

  v11 = v36;
  v12 = v32;
  v13 = v34;
  [(ADJasperColorInFieldCalibrationControllerParameters *)v9 allowedDriftFromSymmetricCrop];
  LODWORD(v15) = v14;
  if (![ADJasperColorInFieldCalibrationPipeline isCroppingPointInThresholdRange:v12 distanceFromSymmetricCroppingPoint:(v11 - v13) * 0.5 normalizedBySensorDimention:v11 andAllowedDriftFromSymmetricCrop:v15])
  {
    if (ADDebugUtilsADVerboseLogsEnabled != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v22 = MEMORY[0x277D86220];
    v23 = "AD-RGBJ None ISP symmetric width";
    goto LABEL_27;
  }

  v16 = v37;
  v17 = v33;
  v18 = v35;
  [(ADJasperColorInFieldCalibrationControllerParameters *)v9 allowedDriftFromSymmetricCrop];
  LODWORD(v20) = v19;
  if (![ADJasperColorInFieldCalibrationPipeline isCroppingPointInThresholdRange:v17 distanceFromSymmetricCroppingPoint:(v16 - v18) * 0.5 normalizedBySensorDimention:v16 andAllowedDriftFromSymmetricCrop:v20])
  {
    if (ADDebugUtilsADVerboseLogsEnabled != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v22 = MEMORY[0x277D86220];
    v23 = "AD-RGBJ None ISP symmetric height";
    goto LABEL_27;
  }

  v21 = [(ADPipelineParameters *)v8 deviceName];
  if ([v21 hasPrefix:@"J7"])
  {

LABEL_21:
    v25 = 3024.0;
    v26 = 76.0;
    v27 = 96.0;
    *&v28 = 4032.0;
    goto LABEL_23;
  }

  v24 = [v21 hasPrefix:@"J8"];

  if (v24)
  {
    goto LABEL_21;
  }

  v25 = 4736.0;
  v26 = 656.0;
  v27 = 1067.0;
  *&v28 = 6314.0;
LABEL_23:
  v29 = *&v28;

  Width = CVPixelBufferGetWidth(a1);
  [MEMORY[0x277CED070] calcSensorCrop:v7 onImageWithDimensions:1 metadataDictionary:v27 negativeCropHandling:{v26, v29, v25, Width, CVPixelBufferGetHeight(a1)}];
  if (!CGRectIsNull(v48))
  {
    v10 = 1;
    goto LABEL_29;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v22 = MEMORY[0x277D86220];
    v23 = "AD-RGBJ cannot create crop rectangle";
LABEL_27:
    _os_log_impl(&dword_2402F6000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
  }

LABEL_28:
  v10 = 0;
LABEL_29:
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v40) = v10;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AD-RGBJ controller status:%d\n", buf, 8u);
  }

LABEL_32:

  return v10;
}

void sub_240397C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_240397F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperColorInFieldCalibrationPipeline;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240399A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperColorExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24039B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, id obj, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard((v62 - 176));
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_24039C0A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_24039CB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

float postProcessingLogarithmicVarianceToStd(float a1)
{
  v1 = 1.0;
  if (a1 <= 0.0)
  {
    v1 = 0.0;
    if (a1 > -3.4028e38)
    {
      v2 = ((a1 * 0.0019531) + 1.0) * ((a1 * 0.0019531) + 1.0);
      v3 = ((v2 * v2) * (v2 * v2)) * ((v2 * v2) * (v2 * v2));
      v4 = ((v3 * v3) * (v3 * v3)) * ((v3 * v3) * (v3 * v3));
      return v4 * v4;
    }
  }

  return v1;
}

float postProcessingStandardDeviationToConfidence(float a1)
{
  v1 = 1.0;
  v2 = 1.0 - a1;
  if (v2 <= 1.0)
  {
    v1 = v2;
  }

  v3 = v2 < 0.0;
  result = 0.0;
  if (!v3)
  {
    return v1;
  }

  return result;
}

float postProcessingLogarithmicVarianceToConfidence(float a1)
{
  v1 = 1.0;
  v2 = 1.0;
  if (a1 <= 0.0)
  {
    v2 = 0.0;
    if (a1 > -3.4028e38)
    {
      v3 = ((a1 * 0.0019531) + 1.0) * ((a1 * 0.0019531) + 1.0);
      v4 = ((v3 * v3) * (v3 * v3)) * ((v3 * v3) * (v3 * v3));
      v5 = ((v4 * v4) * (v4 * v4)) * ((v4 * v4) * (v4 * v4));
      v2 = v5 * v5;
    }
  }

  if ((1.0 - v2) <= 1.0)
  {
    v1 = 1.0 - v2;
  }

  result = 0.0;
  if ((1.0 - v2) >= 0.0)
  {
    return v1;
  }

  return result;
}

void sub_2403A3F88(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t copyModifyPixelBuffer<&(postProcessingNone(float))>(__CVBuffer *a1, __CVBuffer *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v82 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v13 = CVPixelBufferGetPixelFormatType(a2);
  v14 = v13;
  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType == 1717856627)
    {
      goto LABEL_14;
    }

    if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
    {
      goto LABEL_87;
    }

LABEL_9:
    if (v13 <= 1717856626)
    {
      if (v13 == 1278226536)
      {
        goto LABEL_89;
      }

      if (v13 != 1717855600)
      {
LABEL_87:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          PixelBufferUtils::pixelFormatAsString(PixelFormatType, v72);
          v62 = SHIBYTE(v75);
          v63 = *v72;
          PixelBufferUtils::pixelFormatAsString(v14, __p);
          v64 = v72;
          if (v62 < 0)
          {
            v64 = v63;
          }

          if (v67 >= 0)
          {
            v65 = __p;
          }

          else
          {
            v65 = __p[0];
          }

          *buf = 136446466;
          v69 = v64;
          v70 = 2082;
          v71 = v65;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unsupported map format (%{public}s, %{public}s)", buf, 0x16u);
          if (v67 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v75) < 0)
          {
            operator delete(*v72);
          }
        }

        return -22956;
      }
    }

    else if (v13 != 1717856627)
    {
      if (v13 != 1751411059 && v13 != 1751410032)
      {
        goto LABEL_87;
      }

LABEL_89:
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v17 = CVPixelBufferGetWidth(a2);
      v18 = CVPixelBufferGetHeight(a2);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      v52 = CVPixelBufferGetBytesPerRow(a2);
      v86.origin.x = a3;
      v86.origin.y = a4;
      v86.size.width = a5;
      v86.size.height = a6;
      if (CGRectIsEmpty(v86))
      {
        a3 = *MEMORY[0x277CBF348];
        a4 = *(MEMORY[0x277CBF348] + 8);
        a6 = Height;
        a5 = Width;
      }

      if (a5 <= v17 && a6 <= v18)
      {
        if (a3 + a5 > Width || a4 + a6 > Height)
        {
          goto LABEL_101;
        }

        if (a1 != a2)
        {
          CVPixelBufferLockBaseAddress(a1, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a2, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v59 = CVPixelBufferGetBaseAddress(a2);
        if (a5 > 0.0 && a6 > 0.0)
        {
          v60 = 0;
          do
          {
            v61 = 0;
            do
            {
              *&v59[2 * v61 + v52 * v60] = *&BaseAddress[2 * a3 + 2 * v61 + BytesPerRow * (a4 + v60)];
              ++v61;
            }

            while (a5 > v61);
            ++v60;
          }

          while (a6 > v60);
        }

        goto LABEL_111;
      }

      goto LABEL_95;
    }

    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v17 = CVPixelBufferGetWidth(a2);
    v18 = CVPixelBufferGetHeight(a2);
    v40 = CVPixelBufferGetBytesPerRow(a1);
    v41 = CVPixelBufferGetBytesPerRow(a2);
    v85.origin.x = a3;
    v85.origin.y = a4;
    v85.size.width = a5;
    v85.size.height = a6;
    if (CGRectIsEmpty(v85))
    {
      a3 = *MEMORY[0x277CBF348];
      a4 = *(MEMORY[0x277CBF348] + 8);
      a5 = Width;
      a6 = Height;
    }

    if (a5 <= v17 && a6 <= v18)
    {
      if (a3 + a5 > Width || a4 + a6 > Height)
      {
        goto LABEL_101;
      }

      if (a1 != a2)
      {
        CVPixelBufferLockBaseAddress(a1, 1uLL);
      }

      CVPixelBufferLockBaseAddress(a2, 0);
      v44 = CVPixelBufferGetBaseAddress(a1);
      v45 = CVPixelBufferGetBaseAddress(a2);
      if (a5 > 0.0 && a6 > 0.0)
      {
        v46 = 0;
        do
        {
          v47 = 0;
          do
          {
            _H0 = *&v44[2 * a3 + 2 * v47 + v40 * (a4 + v46)];
            __asm { FCVT            S0, H0 }

            *&v45[4 * v47++ + v41 * v46] = _S0;
          }

          while (a5 > v47);
          ++v46;
        }

        while (a6 > v46);
      }

      goto LABEL_111;
    }

LABEL_95:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v72 = 134218752;
      *&v72[4] = a5;
      v73 = 2048;
      v74 = a6;
      v75 = 1024;
      *v76 = v17;
      *&v76[4] = 1024;
      *&v76[6] = v18;
      v54 = MEMORY[0x277D86220];
      v55 = "Dimensions mismatch. Cannot fit ROI (%f,%f) inside output (%d,%d)";
      v56 = 34;
LABEL_124:
      _os_log_error_impl(&dword_2402F6000, v54, OS_LOG_TYPE_ERROR, v55, v72, v56);
      return -22957;
    }

    return -22957;
  }

  if (PixelFormatType == 1278226534)
  {
    goto LABEL_14;
  }

  if (PixelFormatType == 1278226536)
  {
    goto LABEL_9;
  }

  if (PixelFormatType != 1717855600)
  {
    goto LABEL_87;
  }

LABEL_14:
  if (v13 > 1717856626)
  {
    if (v13 != 1717856627)
    {
      if (v13 != 1751411059 && v13 != 1751410032)
      {
        goto LABEL_87;
      }

LABEL_22:
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v17 = CVPixelBufferGetWidth(a2);
      v18 = CVPixelBufferGetHeight(a2);
      v19 = CVPixelBufferGetBytesPerRow(a1);
      v20 = CVPixelBufferGetBytesPerRow(a2);
      v83.origin.x = a3;
      v83.origin.y = a4;
      v83.size.width = a5;
      v83.size.height = a6;
      if (CGRectIsEmpty(v83))
      {
        a3 = *MEMORY[0x277CBF348];
        a4 = *(MEMORY[0x277CBF348] + 8);
        a5 = Width;
        a6 = Height;
      }

      if (a5 <= v17 && a6 <= v18)
      {
        if (a3 + a5 > Width || a4 + a6 > Height)
        {
          goto LABEL_101;
        }

        if (a1 != a2)
        {
          CVPixelBufferLockBaseAddress(a1, 1uLL);
        }

        CVPixelBufferLockBaseAddress(a2, 0);
        v23 = CVPixelBufferGetBaseAddress(a1);
        v24 = CVPixelBufferGetBaseAddress(a2);
        if (a5 > 0.0 && a6 > 0.0)
        {
          v25 = 0;
          do
          {
            v26 = 0;
            do
            {
              _S0 = *&v23[4 * a3 + 4 * v26 + v19 * (a4 + v25)];
              __asm { FCVT            H0, S0 }

              *&v24[2 * v26++ + v20 * v25] = _S0;
            }

            while (a5 > v26);
            ++v25;
          }

          while (a6 > v25);
        }

        goto LABEL_111;
      }

      goto LABEL_95;
    }
  }

  else if (v13 != 1278226534)
  {
    if (v13 != 1278226536)
    {
      if (v13 != 1717855600)
      {
        goto LABEL_87;
      }

      goto LABEL_43;
    }

    goto LABEL_22;
  }

LABEL_43:
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v17 = CVPixelBufferGetWidth(a2);
  v18 = CVPixelBufferGetHeight(a2);
  v32 = CVPixelBufferGetBytesPerRow(a1);
  v33 = CVPixelBufferGetBytesPerRow(a2);
  v84.origin.x = a3;
  v84.origin.y = a4;
  v84.size.width = a5;
  v84.size.height = a6;
  if (CGRectIsEmpty(v84))
  {
    a3 = *MEMORY[0x277CBF348];
    a4 = *(MEMORY[0x277CBF348] + 8);
    a6 = Height;
    a5 = Width;
  }

  if (a5 > v17 || a6 > v18)
  {
    goto LABEL_95;
  }

  if (a3 + a5 > Width || a4 + a6 > Height)
  {
LABEL_101:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v72 = 134219264;
      *&v72[4] = a3;
      v73 = 2048;
      v74 = a4;
      v75 = 2048;
      *v76 = a5;
      *&v76[8] = 2048;
      v77 = a6;
      v78 = 1024;
      v79 = Width;
      v80 = 1024;
      v81 = Height;
      v54 = MEMORY[0x277D86220];
      v55 = "Dimensions mismatch. Cannot fit ROI (%f,%f,%f,%f) inside input (%d,%d)";
      v56 = 54;
      goto LABEL_124;
    }

    return -22957;
  }

  if (a1 != a2)
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
  }

  CVPixelBufferLockBaseAddress(a2, 0);
  v36 = CVPixelBufferGetBaseAddress(a1);
  v37 = CVPixelBufferGetBaseAddress(a2);
  if (a5 > 0.0 && a6 > 0.0)
  {
    v38 = 0;
    do
    {
      v39 = 0;
      do
      {
        *&v37[4 * v39 + v33 * v38] = *&v36[4 * a3 + 4 * v39 + v32 * (a4 + v38)];
        ++v39;
      }

      while (a5 > v39);
      ++v38;
    }

    while (a6 > v38);
  }

LABEL_111:
  if (a1 != a2)
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

void sub_2403A489C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2403A5308(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2403A7548(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_2403A76B0(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_2403AA048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADLKTExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403AA8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  kdebug_trace();

  _Unwind_Resume(a1);
}

uint64_t normalizeCoords@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 20);
  *a2 = off_285231258;
  if (v2)
  {
    operator new[]();
  }

  result = 0;
  *(a2 + 16) = 3;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 24 * v2;
  *a2 = &unk_2852312D8;
  *(a2 + 8) = 0;
  return result;
}

uint64_t GMC_WorldFromPoints@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, double *a4@<X5>, int a5@<W6>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 20);
  *a6 = off_285231258;
  if (v10)
  {
    operator new[]();
  }

  *(a6 + 16) = 3;
  *(a6 + 20) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 24 * v10;
  *a6 = &unk_2852312D8;
  *(a6 + 8) = 0;
  v55 = 3;
  v56 = 0;
  v57 = 0;
  v53 = &unk_2852312D8;
  v54 = 0;
  v50 = 3;
  v51 = 0;
  v52 = 0;
  v48 = &unk_2852312D8;
  v49 = 0;
  if (!a5)
  {
    v55 = *(a1 + 16);
    v54 = *(a1 + 8);
    v56 = 0;
    v57 = *(a1 + 32);
    MatrixMxN<3u,3u,double>::operator*(v58, a3, a2);
    v46 = v61;
    v47 = v62;
    v43 = &unk_2852312D8;
    v44 = v59;
    LODWORD(v45) = 3;
    HIDWORD(v45) = HIDWORD(v60);
    LODWORD(v50) = 3;
    HIDWORD(v50) = HIDWORD(v60);
    v49 = v59;
    v51 = v61;
    v52 = v62;
    v16 = SHIDWORD(v55);
    if (!HIDWORD(v55))
    {
      goto LABEL_20;
    }

LABEL_13:
    if (!v55)
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    if (v50)
    {
      v17 = 0;
      v18 = *(a6 + 16);
      v19 = *(a6 + 20);
      v20 = HIDWORD(v50);
      v21 = SHIDWORD(v50);
      v22 = 2 * SHIDWORD(v50);
      while (v20 != v17)
      {
        if (!v18 || v17 >= v19)
        {
          __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
        }

        v23 = a4[2];
        v24 = (v54 + 8 * v17);
        v25 = v24[2 * v16];
        v26 = (v49 + 8 * v17);
        v27 = v26[v22];
        v28 = v26[v21];
        v29 = sqrt(*v26 * *v26 + 0.0 + v28 * v28 + v27 * v27);
        v30 = -v27 / v29;
        v31 = v24[v16];
        v32 = -v28 / v29;
        v33 = -*v26 / v29;
        v34 = v33 * *v24 + 0.0 + v32 * v31 + v30 * v25;
        v35 = a4[1];
        v36 = ((*v24 - v33 * v34) * *a4 + 0.0 + (v31 - v32 * v34) * v35 + (v25 - v30 * v34) * v23) / ((*v24 - v33 * v34) * *v24 + 0.0 + (v31 - v32 * v34) * v31 + (v25 - v30 * v34) * v25);
        v37 = (v33 * *a4 + 0.0 + v32 * v35 + v30 * v23 - v36 * v34) / (0.0 - v33 * *v26 - v32 * v28 - v30 * v27);
        v38 = (*(a6 + 8) + 8 * v17);
        *v38 = (*a4 + *v24 * v36 + *v26 * v37) * 0.5;
        v38[v19] = (v35 + v31 * v36 + v28 * v37) * 0.5;
        v38[2 * v19] = (v23 + v25 * v36 + v27 * v37) * 0.5;
        if (v16 == ++v17)
        {
          goto LABEL_20;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  normalizeCoords(a1, v58);
  v55 = v60;
  v54 = v59;
  v56 = v61;
  v57 = v62;
  normalizeCoords(a2, &v40);
  MatrixMxN<3u,3u,double>::operator*(v58, a3, &v40);
  v11 = v59;
  v12 = HIDWORD(v60);
  v13 = v61;
  v46 = v61;
  v14 = v62;
  v47 = v62;
  v43 = &unk_2852312D8;
  v44 = v59;
  v15 = 3;
  LODWORD(v45) = 3;
  HIDWORD(v45) = HIDWORD(v60);
  if (v51 == 1 && v49)
  {
    MEMORY[0x245CBFC90](v49, 0x1000C8000313F17);
    v15 = v45;
    v12 = HIDWORD(v45);
    v11 = v44;
    v13 = v46;
    v14 = v47;
  }

  v50 = __PAIR64__(v12, v15);
  v49 = v11;
  v51 = v13;
  v52 = v14;
  v46 = 0;
  v43 = off_285231258;
  v45 = 0;
  v40 = off_285231258;
  if (v41 && v42 == 1)
  {
    MEMORY[0x245CBFC90](v41);
  }

  v16 = SHIDWORD(v55);
  if (HIDWORD(v55))
  {
    goto LABEL_13;
  }

LABEL_20:
  v48 = off_285231258;
  if (v49 && v51 == 1)
  {
    MEMORY[0x245CBFC90](v49);
  }

  v53 = off_285231258;
  result = v54;
  if (v54)
  {
    if (v56 == 1)
    {
      return MEMORY[0x245CBFC90](v54);
    }
  }

  return result;
}

void sub_2403AB48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a11);
  if (a22 && a24 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  a26 = a10;
  if (a27 && a29 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  *v29 = a9;
  if (*(v29 + 8))
  {
    if (*(v29 + 24) == 1)
    {
      MEMORY[0x245CBFC90]();
      *(v29 + 8) = 0;
      *(v29 + 32) = 0;
      *(v29 + 24) = 0;
    }
  }

  *(v29 + 16) = 0;
  _Unwind_Resume(a1);
}

void sub_2403ABB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperColorV2Executor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403AD078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _Unwind_Exception *exception_object, uint64_t a28, uint64_t a29, char a30)
{
  objc_sync_exit(v32);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a30);
  _Unwind_Resume(a1);
}

void sub_2403AD61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  objc_sync_exit(v2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403ADDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403AE32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ADUserNotifier;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___ZL37ADUserNotificationAlertResultBlockMapv_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v1 = ADUserNotificationAlertResultBlockMap(void)::s_map;
  ADUserNotificationAlertResultBlockMap(void)::s_map = v0;
}

void userNotificationCallback(__CFUserNotification *a1, char a2)
{
  if (a1)
  {
    if (ADUserNotificationAlertResultBlockMap(void)::onceToken != -1)
    {
      dispatch_once(&ADUserNotificationAlertResultBlockMap(void)::onceToken, &__block_literal_global_6915);
    }

    v6 = ADUserNotificationAlertResultBlockMap(void)::s_map;
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
    v5 = [v6 objectForKey:v4];
    [v6 removeObjectForKey:v4];
    v5[2](v5, a2 & 3);
  }
}

void sub_2403AED84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2403AEFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t jpc::IFAJConfidenceFilter::apply(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2[18];
  if (v7)
  {
    if (a2[20])
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 8);
      v11 = (*(*a2 + 24) + 64);
      do
      {
        if (*v11 < v10)
        {
          ++v9;
          if (a2[11] > v8)
          {
            v12 = a2[10];
            v13 = v8 >> 6;
            v14 = *(v12 + 8 * (v8 >> 6));
            if ((v14 & (1 << v8)) != 0)
            {
              v15 = a2[20];
              if (v15)
              {
                a2[20] = v15 - 1;
                v14 = *(v12 + 8 * v13);
              }
            }

            *(v12 + 8 * v13) = v14 & ~(1 << v8);
          }
        }

        ++v8;
        v11 += 18;
      }

      while (v7 > v8);
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 67109120;
          v22 = v9;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJConfidenceFilter: Filtered jasper spots: %d\n", &v21, 8u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v21 = 67109120;
        v22 = v9;
        v17 = MEMORY[0x277D86220];
        v18 = "IFAJConfidenceFilter: Filtered jasper spots: %d\n";
        v19 = 8;
LABEL_26:
        _os_log_debug_impl(&dword_2402F6000, v17, OS_LOG_TYPE_DEBUG, v18, &v21, v19);
      }
    }

    else
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJConfidenceFilter: no valid jasper spots as input", &v21, 2u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        v17 = MEMORY[0x277D86220];
        v18 = "IFAJConfidenceFilter: no valid jasper spots as input";
        v19 = 2;
        goto LABEL_26;
      }
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPJDepthDiffFilter: no spots", &v21, 2u);
  }

  v16 = -22950;
LABEL_24:

  return v16;
}

uint64_t jpc::IFAJDepthRangeFilter::apply(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2[18];
  if (v7)
  {
    if (a2[20])
    {
      v8 = 0;
      v9 = 0;
      v10 = 56;
      do
      {
        if (a2[11] > v8)
        {
          v11 = a2[10];
          v12 = v8 >> 6;
          v13 = *(v11 + 8 * (v8 >> 6));
          if ((v13 & (1 << v8)) != 0)
          {
            v14 = *(*(*a2 + 24) + v10);
            if (v14 < *(a1 + 8) || v14 > *(a1 + 12))
            {
              v15 = a2[20];
              if (v15)
              {
                a2[20] = v15 - 1;
                v13 = *(v11 + 8 * v12);
              }

              ++v9;
              *(v11 + 8 * v12) = v13 & ~(1 << v8);
            }
          }
        }

        ++v8;
        v10 += 72;
      }

      while (v7 > v8);
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 67109120;
          v22 = v9;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJDepthRangeFilter: Filtered jasper spots: %d\n", &v21, 8u);
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v21 = 67109120;
        v22 = v9;
        v17 = MEMORY[0x277D86220];
        v18 = "IFAJDepthRangeFilter: Filtered jasper spots: %d\n";
        v19 = 8;
LABEL_27:
        _os_log_debug_impl(&dword_2402F6000, v17, OS_LOG_TYPE_DEBUG, v18, &v21, v19);
      }
    }

    else
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJConfidenceFilter: no valid jasper spots as input", &v21, 2u);
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        v17 = MEMORY[0x277D86220];
        v18 = "IFAJConfidenceFilter: no valid jasper spots as input";
        v19 = 2;
        goto LABEL_27;
      }
    }

LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPJDepthDiffFilter: no spots", &v21, 2u);
  }

  v16 = -22950;
LABEL_25:

  return v16;
}

uint64_t jpc::IFAThermalTransientFilter::apply(jpc::IFAThermalTransientFilter *this, jpc::IFA_DataFrame *a2, id *a3, ADJasperPearlTelemetryData *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  LastPearlTemp = jpc::IFA_DB::getLastPearlTemp(a3);
  if (LastPearlTemp == -1.0)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPoseDiffFilter no temperature info in dict\n", &v13, 2u);
      }

      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    LOWORD(v13) = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "IFAPoseDiffFilter no temperature info in dict\n";
    v10 = 2;
LABEL_15:
    _os_log_debug_impl(&dword_2402F6000, v8, OS_LOG_TYPE_DEBUG, v9, &v13, v10);
    return 0;
  }

  if (vabds_f32(*(*a2 + 384), LastPearlTemp) > *(this + 2))
  {
    *(a2 + 104) = 1;
  }

  if (ADDebugUtilsADVerboseLogsEnabled != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v12 = *(a2 + 104);
    v13 = 67109120;
    v14 = v12;
    v8 = MEMORY[0x277D86220];
    v9 = "IFAThermalTransientFilter eraseAll %d\n";
    v10 = 8;
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 104);
    v13 = 67109120;
    v14 = v7;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAThermalTransientFilter eraseAll %d\n", &v13, 8u);
  }

  return 0;
}

uint64_t jpc::IFAPJDepthDiffFilter::apply(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (*(a2 + 144))
  {
    if (*(a2 + 160))
    {
      operator new[]();
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPJDepthDiffFilter: no valid jasper spots as input", &v8, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFAPJDepthDiffFilter: no valid jasper spots as input", &v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPJDepthDiffFilter: no spots", &v8, 2u);
    }

    v6 = -22950;
  }

  return v6;
}

void sub_2403B02A8(_Unwind_Exception *a1)
{
  MEMORY[0x245CBFC90](v2, v3);

  _Unwind_Resume(a1);
}

uint64_t jpc::IFAPJWorkDistOverlapFilter::apply(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2[18];
  if (v7)
  {
    if (a2[20])
    {
      v8 = 0;
      v9 = 0;
      v10 = a2[4];
      v11 = (a2[5] - v10) >> 1;
      v12 = (*(*a2 + 24) + 56);
      do
      {
        if (v11 <= v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v10 + 2 * v8);
        }

        if (a2[11] > v8)
        {
          v14 = a2[10];
          v15 = v8 >> 6;
          v16 = *(v14 + 8 * (v8 >> 6));
          if ((v16 & (1 << v8)) != 0 && (!v13 || *v12 == 0.0 || *(a1 + 12) < v13 || *(a1 + 8) > v13))
          {
            v17 = a2[20];
            if (v17)
            {
              a2[20] = v17 - 1;
              v16 = *(v14 + 8 * v15);
            }

            *(v14 + 8 * v15) = v16 & ~(1 << v8);
            ++v9;
          }
        }

        ++v8;
        v12 += 18;
      }

      while (v7 > v8);
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v20 = 67109120;
          v21 = v9;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPJWorkDistOverlapFilter: Filtered jasper spots: %d\n", &v20, 8u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v20 = 67109120;
        v21 = v9;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFAPJWorkDistOverlapFilter: Filtered jasper spots: %d\n", &v20, 8u);
      }

      [v6 setNumPearlJasperCorrespondencesPostPJWorkDistOverlapFilter:*(a2 + 80)];
    }

    else if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPJWorkDistOverlapFilter: no valid jasper spots as input", &v20, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFAPJWorkDistOverlapFilter: no valid jasper spots as input", &v20, 2u);
    }

    v18 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPJWorkDistOverlapFilter: no spots", &v20, 2u);
    }

    v18 = -22950;
  }

  return v18;
}

uint64_t jpc::IFAPRGScoreFilter::apply(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *(a2 + 136);
  if (v7)
  {
    if ((*(a2 + 104) & 1) != 0 || !*(a2 + 152))
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPRGScoreFilter: no valid pearl spots as input", &v31, 2u);
        }

        goto LABEL_33;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      LOWORD(v31) = 0;
      v20 = MEMORY[0x277D86220];
      v21 = "IFAPRGScoreFilter: no valid pearl spots as input";
      v22 = 2;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *a2;
      v12 = *(a1 + 8) + 32;
      v13 = (**a2 + 48);
      do
      {
        v14 = *v13;
        v13 += 56;
        if (v12 > v14)
        {
          ++v9;
          if (*(a2 + 64) > v8)
          {
            v15 = *(a2 + 56);
            v16 = v8 >> 6;
            v17 = *(v15 + 8 * (v8 >> 6));
            if ((v17 & (1 << v8)) != 0)
            {
              v18 = *(a2 + 152);
              if (v18)
              {
                *(a2 + 152) = v18 - 1;
                v17 = *(v15 + 8 * v16);
              }
            }

            *(v15 + 8 * v16) = v17 & ~(1 << v8);
          }
        }

        ++v8;
      }

      while (v7 > v8);
      if (v10)
      {
        v23 = 0;
        v24 = (v11[3] + 48);
        do
        {
          v25 = *v24;
          v24 += 72;
          if (v12 > v25)
          {
            ++v9;
            if (*(a2 + 88) > v23)
            {
              v26 = *(a2 + 80);
              v27 = v23 >> 6;
              v28 = *(v26 + 8 * (v23 >> 6));
              if ((v28 & (1 << v23)) != 0)
              {
                v29 = *(a2 + 160);
                if (v29)
                {
                  *(a2 + 160) = v29 - 1;
                  v28 = *(v26 + 8 * v27);
                }
              }

              *(v26 + 8 * v27) = v28 & ~(1 << v23);
            }
          }

          ++v23;
        }

        while (v10 > v23);
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v31 = 67109120;
          v32 = v9;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPRGScoreFilter: Filtered pearl spots: %d\n", &v31, 8u);
        }

        goto LABEL_33;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_33:
        v19 = 0;
        goto LABEL_34;
      }

      v31 = 67109120;
      v32 = v9;
      v20 = MEMORY[0x277D86220];
      v21 = "IFAPRGScoreFilter: Filtered pearl spots: %d\n";
      v22 = 8;
    }

    _os_log_debug_impl(&dword_2402F6000, v20, OS_LOG_TYPE_DEBUG, v21, &v31, v22);
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v31) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPJDepthDiffFilter: no spots", &v31, 2u);
  }

  v19 = -22950;
LABEL_34:

  return v19;
}

uint64_t jpc::IFAPLocalDepthVarFilter::apply(jpc::IFAPLocalDepthVarFilter *this, jpc::IFA_DataFrame *a2, jpc::IFA_DB *a3, ADJasperPearlTelemetryData *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!*(a2 + 17))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = "IFAPJDepthDiffFilter: no spots";
    goto LABEL_34;
  }

  if ((*(a2 + 104) & 1) == 0 && *(a2 + 19))
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        v9 = *(a2 + 18);
        CVPixelBufferLockBaseAddress(*(v7 + 72), 0);
        if (CVPixelBufferGetPixelFormatType(v8) == 825437747)
        {
          Width = CVPixelBufferGetWidth(v8);
          Height = CVPixelBufferGetHeight(v8);
          BaseAddress = CVPixelBufferGetBaseAddress(v8);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
          v14 = *(this + 2);
          v15 = vcvtas_u32_f32(*(this + 3) / *(this + 8));
          *buf = 0;
          v36 = 0;
          v37 = 0;
          v16 = (v15 + v14 + 1) * (v15 + v14 + 1);
          if (v16)
          {
            if ((v16 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          if (v9)
          {
            v17 = 0;
            v34 = 0;
            v18 = 0;
            v19 = BytesPerRow >> 1;
            do
            {
              v23 = v18;
              if (*(a2 + 11) > v18)
              {
                v24 = v18 >> 6;
                v25 = 1 << v18;
                if ((*(*(a2 + 10) + 8 * v24) & (1 << v18)) != 0)
                {
                  v26 = *(*a2 + 24) + 72 * v17;
                  if (!jpc::IFAPLocalDepthVarFilter::check_local_depth(this, Width, v19, Height, BaseAddress, buf, *(v26 + 32), *(v26 + 40), v11, v12, v13))
                  {
                    ++v34;
                    if (*(a2 + 11) > v23)
                    {
                      v27 = *(a2 + 10);
                      v28 = *(v27 + 8 * v24);
                      if ((v28 & v25) != 0)
                      {
                        v29 = *(a2 + 20);
                        if (v29)
                        {
                          *(a2 + 20) = v29 - 1;
                          v28 = *(v27 + 8 * v24);
                        }
                      }

                      *(v27 + 8 * v24) = v28 & ~v25;
                    }
                  }
                }
              }

              v17 = (v23 + 1);
              v18 = v23 + 1;
            }

            while (v9 > v17);
          }

          else
          {
            v34 = 0;
          }

          CVPixelBufferUnlockBaseAddress(v8, 0);
          if (ADDebugUtilsADVerboseLogsEnabled == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v38 = 67109120;
              v39 = v34;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPLocalDepthVarFilter: Filtered pearl spots: %d\n", v38, 8u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            *v38 = 67109120;
            v39 = v34;
            _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFAPLocalDepthVarFilter: Filtered pearl spots: %d\n", v38, 8u);
          }

          [(ADJasperPearlTelemetryData *)v6 setNumPearlJasperCorrespondencesPostLocalDepthVarFilter:*(a2 + 80), BaseAddress];
          if (*buf)
          {
            operator delete(*buf);
            v22 = 0;
            goto LABEL_36;
          }

          goto LABEL_18;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "IFAPLocalDepthVarFilter: pearlDepthBuffer wrong type";
          goto LABEL_34;
        }

LABEL_35:
        v22 = -22950;
        goto LABEL_36;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: inputData is NULL", buf, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = "IFAPLocalDepthVarFilter: pearlDepthBuffer is NULL";
LABEL_34:
    _os_log_error_impl(&dword_2402F6000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_35;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPLocalDepthVarFilter: no valid pearl spots as input", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFAPLocalDepthVarFilter: no valid pearl spots as input", buf, 2u);
    v22 = 0;
    goto LABEL_36;
  }

LABEL_18:
  v22 = 0;
LABEL_36:

  return v22;
}

BOOL jpc::IFAPLocalDepthVarFilter::check_local_depth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = a7;
  v12 = llroundf(v11);
  v13 = a8;
  v14 = llroundf(v13);
  v15 = *(a5 + 2 * v14 * a3 + 2 * v12);
  if (v15 < 8)
  {
    return 0;
  }

  v16 = v15 >> 3;
  if (*(a1 + 32) > v16)
  {
    return 0;
  }

  v18 = v12;
  v19 = vcvts_n_f32_u64(*(a1 + 16), 1uLL);
  v20 = (*(a1 + 24) / v16);
  v21 = llroundf((v12 - v19) - v20);
  v22 = v21 & ~(v21 >> 63);
  v23 = llroundf(v19 + v18);
  v24 = a2 - 1;
  v25 = v14;
  *&a10 = v19 + v14;
  v26 = llroundf(*&a10);
  if (v23 < a2)
  {
    v24 = v23;
  }

  if (v26 >= a4)
  {
    v26 = a4 - 1;
  }

  v27 = 0.0;
  v60 = v24;
  if (v22 <= v24 && (v28 = llroundf((v25 - v19) - v20), v29 = v28 & ~(v28 >> 63), v29 <= v26))
  {
    v36 = a3;
    v30 = 0;
    v37 = a4 * a3;
    v59 = v26 - v29 + 1;
    v38 = v22 + a3 * v29;
    v64 = a5;
    do
    {
      v61 = v38;
      v62 = v22;
      v39 = v59;
      do
      {
        if (v38 <= v37)
        {
          v41 = *(a5 + 2 * v38);
          if (v41 >= 8)
          {
            v42 = v41 >> 3;
            v44 = a6[1];
            v43 = a6[2];
            if (v44 < v43)
            {
              *v44 = v42;
              v40 = (v44 + 1);
            }

            else
            {
              v45 = a6;
              v46 = *a6;
              v47 = v44 - *a6;
              v48 = v47 >> 1;
              if (v47 >> 1 <= -2)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v49 = v43 - v46;
              if (v49 <= v48 + 1)
              {
                v50 = v48 + 1;
              }

              else
              {
                v50 = v49;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v51 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v51 = v50;
              }

              if (v51)
              {
                if ((v51 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(2 * v48) = v42;
              v40 = 2 * v48 + 2;
              memcpy(0, v46, v47);
              *v45 = 0;
              v45[1] = v40;
              v45[2] = 0;
              a6 = v45;
              if (v46)
              {
                operator delete(v46);
              }

              v36 = a3;
              a5 = v64;
            }

            a6[1] = v40;
            v27 = v27 + v42;
            ++v30;
          }
        }

        v38 += v36;
        --v39;
      }

      while (v39);
      v38 = v61 + 1;
      v22 = v62 + 1;
    }

    while (v62 != v60);
  }

  else
  {
    v30 = 0;
  }

  v31 = *a6;
  if (a6[1] == *a6)
  {
    return 0;
  }

  v32 = v27 / v30;
  if (!v30)
  {
    v35 = 0.0;
    v33 = a1;
    goto LABEL_42;
  }

  v33 = a1;
  if (v30 == 1)
  {
    v34 = 0;
    v35 = 0.0;
LABEL_40:
    v54 = v30 - v34;
    v55 = (v31 + 2 * v34);
    do
    {
      v56 = *v55++;
      v35 = v35 + (v56 - v32) * (v56 - v32);
      --v54;
    }

    while (v54);
    goto LABEL_42;
  }

  v34 = v30 & 0xFFFFFFFE;
  v52 = (v31 + 2);
  v35 = 0.0;
  v53 = v34;
  do
  {
    LOWORD(a10) = *(v52 - 1);
    LOWORD(a11) = *v52;
    a10 = (*&a10 - v32) * (*&a10 - v32);
    a11 = (*&a11 - v32) * (*&a11 - v32);
    v35 = v35 + a10 + a11;
    v52 += 2;
    v53 -= 2;
  }

  while (v53);
  if (v34 != v30)
  {
    goto LABEL_40;
  }

LABEL_42:
  a6[1] = v31;
  return v32 != 0.0 && sqrt(v35 / v30) <= *(v33 + 8);
}

uint64_t jpc::IFASpatialCoverageFilter::apply(jpc::IFASpatialCoverageFilter *this, jpc::IFA_DataFrame *a2, id *a3, ADJasperPearlTelemetryData *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *(a2 + 17);
  if (v8)
  {
    if ((*(a2 + 104) & 1) != 0 || !*(a2 + 19))
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFASpatialCoverageFilter: no valid pearl spots as input", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFASpatialCoverageFilter: no valid pearl spots as input", buf, 2u);
      }

      goto LABEL_60;
    }

    v9 = *(*a2 + 128);
    [v9 referenceDimensions];
    v11 = v10;
    [v9 referenceDimensions];
    v13 = *(this + 2) * *(this + 1);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    *buf = &v52;
    LOBYTE(v56) = 0;
    if (v13)
    {
      if (v13 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = v11;
    v16 = v12;
    v17 = 0;
    v18 = 0;
    v19 = v11;
    v20 = v12;
    v21 = v15;
    v22 = v12;
    do
    {
      if (*(a2 + 8) > v18 && ((*(*(a2 + 7) + ((v18 >> 3) & 0x1FFFFFF8)) >> v18) & 1) != 0)
      {
        v23 = (**a2 + 56 * v17);
        v24 = *v23;
        v25 = v23[1];
        if (*v23 > v19)
        {
          v24 = v15;
        }

        if (v24 < 0.0)
        {
          v24 = 0.0;
        }

        v26 = *(this + 2);
        v27 = (ceil(v24 * *(this + 1) / v21) + -1.0);
        if (v25 <= v20)
        {
          v28 = v25;
        }

        else
        {
          v28 = v16;
        }

        if (v28 < 0.0)
        {
          v28 = 0.0;
        }

        *buf = v18;
        std::vector<int>::push_back[abi:ne200100](v52 + 24 * v26 * v27 + 24 * (ceil(v28 * v26 / v22) + -1.0), buf);
      }

      v17 = ++v18;
    }

    while (v8 > v18);
    jpc::IFA_DB::getAggPoints(a3, &v49);
    v30 = __p;
    v29 = v51;
    if (v51 != __p)
    {
      v31 = *(this + 2);
      v32 = *(this + 1);
      v33 = (__p + 8);
      v34 = 1;
      do
      {
        v35 = *(v33 - 1);
        v36 = *v33;
        if (v35 > v19)
        {
          v35 = v19;
        }

        if (v35 < 0.0)
        {
          v35 = 0.0;
        }

        v37 = ceil(v35 * v32 / v21);
        if (v36 > v20)
        {
          v36 = v16;
        }

        if (v36 < 0.0)
        {
          v36 = 0.0;
        }

        v38 = ceil(v36 * v31 / v22) + -1.0;
        v33 += 6;
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 4) > v34++;
        ++*(4 * (v38 + v31 * (v37 + -1.0)));
      }

      while (v39);
    }

    v40 = [MEMORY[0x277CCABB0] numberWithDouble:0.0 / 0 * 100.0];
    [*a3 setIrCamFOVCoveragePercent:v40];

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFASpatialCoverageFilter: Filtered pearl spots: %d\n", buf, 8u);
        if ((*(a2 + 104) & 1) == 0)
        {
LABEL_43:
          v41 = *(a2 + 76);
LABEL_47:
          [(ADJasperPearlTelemetryData *)v7 setNumPearlOnlyCorrespondencesPostSpatialCoverageFilter:v41];
          if (__p)
          {
            v51 = __p;
            operator delete(__p);
          }

          if (v49)
          {
            *(&v49 + 1) = v49;
            operator delete(v49);
          }

          v42 = v52;
          if (v52)
          {
            v43 = v53;
            v44 = v52;
            if (v53 != v52)
            {
              v45 = v53;
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
              v44 = v52;
            }

            v53 = v42;
            operator delete(v44);
          }

LABEL_60:
          v14 = 0;
          goto LABEL_61;
        }

LABEL_46:
        v41 = 0;
        goto LABEL_47;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IFASpatialCoverageFilter: Filtered pearl spots: %d\n", buf, 8u);
      if ((*(a2 + 104) & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPJDepthDiffFilter: no spots", buf, 2u);
  }

  v14 = -22950;
LABEL_61:

  return v14;
}

void sub_2403B1C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a28);

  _Unwind_Resume(a1);
}

uint64_t jpc::IFAJConfidenceFilter::IFAJConfidenceFilter(uint64_t this, float a2)
{
  *this = &unk_285231748;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_285231748;
  *(this + 8) = a2;
  return this;
}

uint64_t jpc::IFAJDepthRangeFilter::IFAJDepthRangeFilter(uint64_t this, float a2, float a3)
{
  *this = &unk_285231770;
  *(this + 8) = a2;
  *(this + 12) = a3;
  return this;
}

{
  *this = &unk_285231770;
  *(this + 8) = a2;
  *(this + 12) = a3;
  return this;
}

uint64_t jpc::IFAThermalTransientFilter::IFAThermalTransientFilter(uint64_t this, float a2)
{
  *this = &unk_285231798;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_285231798;
  *(this + 8) = a2;
  return this;
}

void *jpc::IFAPoseDiffFilter::IFAPoseDiffFilter(void *this)
{
  *this = &unk_2852317C0;
  return this;
}

{
  *this = &unk_2852317C0;
  return this;
}

uint64_t jpc::IFAPJDepthDiffFilter::IFAPJDepthDiffFilter(uint64_t this, float a2)
{
  *this = &unk_2852317E8;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_2852317E8;
  *(this + 8) = a2;
  return this;
}

uint64_t jpc::IFAPJWorkDistOverlapFilter::IFAPJWorkDistOverlapFilter(uint64_t this, float a2, float a3)
{
  *this = &unk_285231810;
  *(this + 8) = a2;
  *(this + 12) = a3;
  return this;
}

{
  *this = &unk_285231810;
  *(this + 8) = a2;
  *(this + 12) = a3;
  return this;
}

uint64_t jpc::IFAPRGScoreFilter::IFAPRGScoreFilter(uint64_t this, char a2)
{
  *this = &unk_285231838;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_285231838;
  *(this + 8) = a2;
  return this;
}

uint64_t jpc::IFAPLocalDepthVarFilter::IFAPLocalDepthVarFilter(uint64_t this, float a2, uint64_t a3, uint64_t a4, float a5)
{
  *this = &unk_285231860;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = 1000 * a4;
  *(this + 32) = a5;
  return this;
}

{
  *this = &unk_285231860;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = 1000 * a4;
  *(this + 32) = a5;
  return this;
}

void *jpc::IFASpatialCoverageFilter::IFASpatialCoverageFilter(void *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *this = &unk_285231888;
  this[1] = a2;
  this[2] = a3;
  this[3] = a4;
  return this;
}

{
  *this = &unk_285231888;
  this[1] = a2;
  this[2] = a3;
  this[3] = a4;
  return this;
}

void sub_2403B2554(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2403B2854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B2EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B3490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

jpc::IFA_DataFrame *jpc::IFA_DataFrame::IFA_DataFrame(jpc::IFA_DataFrame *this, const jpc::IPreprocessorBlock::JpcPreprocessorOutput *a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  jpc::IFA_DataFrame::init(this);
  return this;
}

{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  jpc::IFA_DataFrame::init(this);
  return this;
}

void sub_2403B35EC(_Unwind_Exception *exception_object)
{
  v4 = v1[10];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[7];
    if (!v5)
    {
LABEL_3:
      v6 = v1[4];
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = v1[7];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = v1[4];
  if (!v6)
  {
LABEL_4:
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[5] = v6;
  operator delete(v6);
  v7 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  v1[2] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void jpc::IFA_DataFrame::init(jpc::IFA_DataFrame *this)
{
  v1 = *this;
  if (!*this)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v19 = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "ADJasperPearlInField_IFA_DataFrame: inputData is NULL";
    v12 = &v19;
    goto LABEL_16;
  }

  v5 = v1 + 24;
  v3 = *(v1 + 24);
  v4 = *(v5 + 8);
  v6 = v4 - v3;
  if (v4 == v3)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v18 = 0;
      v7 = MEMORY[0x277D86220];
      v8 = &v18;
      v9 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v7 = MEMORY[0x277D86220];
      v8 = buf;
      v9 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2402F6000, v7, v9, "ADJasperPearlInField_IFA_DataFrame: no jasper spots", v8, 2u);
  }

LABEL_11:
  v13 = *(*this + 8) - **this;
  if (v13)
  {
    v14 = 0x8E38E38E38E38E39 * (v6 >> 3);
    v15 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    *(this + 17) = v15;
    *(this + 18) = v14;
    *(this + 19) = v15;
    *(this + 20) = v14;
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "ADJasperPearlInField_IFA_DataFrame: no pearl pts";
    v12 = v16;
LABEL_16:
    _os_log_error_impl(&dword_2402F6000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
  }
}

uint64_t jpc::IFA_DataFrame::initPearlPts(jpc::IFA_DataFrame *this)
{
  if (*this)
  {
    v2 = *(this + 17);
    if (v2)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_37;
    }

    v6 = *(this + 1);
    if (v6)
    {
      *(this + 2) = v6;
      operator delete(v6);
    }

    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    v3 = *(this + 18);
    if (v3)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_37:
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = *(this + 4);
    if (v7)
    {
      *(this + 5) = v7;
      operator delete(v7);
    }

    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (*this)
    {
      v4 = *(*this + 72);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: inputData is NULL", v27, 2u);
      }

      v4 = 0;
    }

    CVPixelBufferLockBaseAddress(v4, 0);
    if (CVPixelBufferGetPixelFormatType(v4) == 825437747)
    {
      Height = CVPixelBufferGetHeight(v4);
      BaseAddress = CVPixelBufferGetBaseAddress(v4);
      v10 = CVPixelBufferGetBytesPerRow(v4) >> 1;
      v11 = *(this + 17);
      if (v11)
      {
        v12 = 0;
        v13 = (**this + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = llroundf(v14);
          v16 = *v13;
          v17 = v15 + llroundf(v16) * v10;
          if (v17 <= v10 * Height)
          {
            *(*(this + 1) + 2 * v12) = BaseAddress[v17] >> 3;
          }

          ++v12;
          v13 += 7;
        }

        while (v11 > v12);
      }

      v18 = *(this + 18);
      if (v18)
      {
        v19 = 0;
        v20 = (*(*this + 24) + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = llroundf(v21);
          v23 = *v20;
          v24 = v22 + llroundf(v23) * v10;
          if (v24 <= v10 * Height)
          {
            *(*(this + 4) + 2 * v19) = BaseAddress[v24] >> 3;
          }

          ++v19;
          v20 += 9;
        }

        while (v18 > v19);
      }

      CVPixelBufferUnlockBaseAddress(v4, 0);
      return 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: wrong image data type", v25, 2u);
      }

      CVPixelBufferUnlockBaseAddress(v4, 0);
      return -22950;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: inputData is NULL", buf, 2u);
    }

    return -22950;
  }
}

void sub_2403B3E60(_Unwind_Exception *exception_object)
{
  v4 = v1[10];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[7];
    if (!v5)
    {
LABEL_3:
      v6 = v1[4];
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = v1[7];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = v1[4];
  if (!v6)
  {
LABEL_4:
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[5] = v6;
  operator delete(v6);
  v7 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  v1[2] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void jpc::IFA_DataFrame::~IFA_DataFrame(jpc::IFA_DataFrame *this)
{
  *this = 0;
  *(this + 104) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 2) = *(this + 1);
  *(this + 5) = *(this + 4);
  v2 = *(this + 10);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

{
  *this = 0;
  *(this + 104) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 2) = *(this + 1);
  *(this + 5) = *(this + 4);
  v2 = *(this + 10);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void *jpc::IFA_DataFrame::setJasperInvalidSpot(void *this, unsigned int a2)
{
  if (this[11] > a2)
  {
    v2 = this[10];
    v3 = a2 >> 6;
    v4 = *(v2 + 8 * v3);
    if ((v4 & (1 << a2)) != 0)
    {
      v5 = this[20];
      if (v5)
      {
        this[20] = v5 - 1;
        v4 = *(v2 + 8 * v3);
      }
    }

    *(v2 + 8 * v3) = v4 & ~(1 << a2);
  }

  return this;
}

void jpc::IFA_DataFrame::rotationMatrixToEulerAngles(jpc::IFA_DataFrame *this, const simd_float4x4 *a2, float (*a3)[3])
{
  v4 = a2->columns[1];
  v11 = a2->columns[0];
  v5 = sqrtf(vmulq_f32(v4, v4).f32[0] + (v11.f32[0] * v11.f32[0]));
  if (v5 >= 0.000001)
  {
    v9 = a2->columns[2];
    v10 = a2->columns[1];
    v6 = atan2f(COERCE_FLOAT(HIDWORD(a2->columns[2].i64[0])), COERCE_FLOAT(a2->columns[2].i64[1]));
    v7 = atan2f(-v9.f32[0], v5);
    v8 = atan2f(v10.f32[0], v11.f32[0]);
  }

  else
  {
    v6 = atan2f(-v4.f32[2], v4.f32[1]);
    v7 = atan2f(-v11.f32[2], v5);
    v8 = 0.0;
  }

  (*a3)[0] = v6;
  (*a3)[1] = v7;
  (*a3)[2] = v8;
}

uint64_t jpc::IFA_DataFrame::getValidPearlSpotsNum(jpc::IFA_DataFrame *this)
{
  if (*(this + 104))
  {
    return 0;
  }

  else
  {
    return *(this + 19);
  }
}

uint64_t jpc::IFA_DataFrame::getPearlDepth(jpc::IFA_DataFrame *this)
{
  if (*this)
  {
    return *(*this + 72);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: inputData is NULL", v2, 2u);
  }

  return 0;
}

uint64_t jpc::IFA_DataFrame::getPearlZ(jpc::IFA_DataFrame *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (a2 >= ((*(this + 2) - v2) >> 1))
  {
    return 0;
  }

  else
  {
    return *(v2 + 2 * a2);
  }
}

uint64_t jpc::IFA_DataFrame::getPearlJasperZ(jpc::IFA_DataFrame *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (a2 >= ((*(this + 5) - v2) >> 1))
  {
    return 0;
  }

  else
  {
    return *(v2 + 2 * a2);
  }
}

void *jpc::IFA_DataFrame::setPearlInvalidSpot(void *this, unsigned int a2)
{
  if (this[8] > a2)
  {
    v2 = this[7];
    v3 = a2 >> 6;
    v4 = *(v2 + 8 * v3);
    if ((v4 & (1 << a2)) != 0)
    {
      v5 = this[19];
      if (v5)
      {
        this[19] = v5 - 1;
        v4 = *(v2 + 8 * v3);
      }
    }

    *(v2 + 8 * v3) = v4 & ~(1 << a2);
  }

  return this;
}

uint64_t jpc::IFA_DataFrame::getPearlRgScore(jpc::IFA_DataFrame *this)
{
  if (*this)
  {
    return *(*this + 64);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_DataFrame: inputData is NULL", v2, 2u);
  }

  return 0;
}

uint64_t jpc::IFA_DataFrame::isPearlSpotValid(jpc::IFA_DataFrame *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 7) + ((a2 >> 3) & 0x1FFFFFF8)) >> a2) & 1;
  }
}

uint64_t jpc::IFA_DataFrame::isJasperSpotValid(jpc::IFA_DataFrame *this, unsigned int a2)
{
  if (*(this + 11) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 10) + ((a2 >> 3) & 0x1FFFFFF8)) >> a2) & 1;
  }
}

float jpc::IFA_DataFrame::setRotation(jpc::IFA_DataFrame *this, float *a2)
{
  *(this + 27) = *a2;
  *(this + 28) = a2[1];
  result = a2[2];
  *(this + 29) = result;
  return result;
}

float jpc::IFA_DataFrame::setTranslation(jpc::IFA_DataFrame *this, float *a2)
{
  *(this + 30) = *a2;
  *(this + 31) = a2[1];
  result = a2[2];
  *(this + 32) = result;
  return result;
}

void sub_2403B47A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADMonocularV2Executor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403B4E60(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v5);

  _Unwind_Resume(a1);
}

void sub_2403B515C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403B5504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

double updatePCECalibWithGMCStereoResults(uint64_t a1, double *a2, void *__dst)
{
  memcpy(__dst, a2, 0x3388uLL);
  *(__dst + 1069) = *a1;
  *(__dst + 1070) = *(a1 + 8);
  *(__dst + 1071) = *(a1 + 16);
  *(__dst + 1072) = *(a1 + 24);
  *(__dst + 1073) = *(a1 + 32);
  *(__dst + 1074) = *(a1 + 40);
  *(__dst + 1075) = *(a1 + 48);
  *(__dst + 1076) = *(a1 + 56);
  *(__dst + 1077) = *(a1 + 64);
  *(__dst + 1078) = *(a1 + 72);
  *(__dst + 1079) = *(a1 + 80);
  v6 = *(a1 + 96);
  *(__dst + 1080) = *(a1 + 88);
  result = v6 * a2[536];
  *(__dst + 537) = result;
  return result;
}

void sub_2403B7060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _GMC_Params::_calib::_cam::_distLUT::_nonradial *a18, uint64_t a19, _GMC_Params::_calib::_cam::_distLUT::_nonradial *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a36 && a38 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a41 && a43 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  _GMC_Params::_calib::_cam::_distLUT::_nonradial::~_nonradial(a18);
  STACK[0x458] = off_285231258;
  if (STACK[0x460] && LOBYTE(STACK[0x470]) == 1)
  {
    MEMORY[0x245CBFC90]();
    STACK[0x460] = 0;
    STACK[0x478] = 0;
    LOBYTE(STACK[0x470]) = 0;
  }

  STACK[0x468] = 0;
  _GMC_Params::_calib::_cam::_distLUT::_nonradial::~_nonradial(a20);
  if (a62)
  {
    if (a64 == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(a1);
}

jpc::IFA_DB *jpc::IFA_DB::IFA_DB(jpc::IFA_DB *this, ADJasperPearlInFieldCalibrationInterSessionData *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void jpc::IFA_DB::~IFA_DB(id *this)
{
}

{
}

void jpc::IFA_DB::setLastRotation(id *this, float *a2)
{
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  *&v4 = *a2;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v10 addObject:v5];

  *&v6 = a2[1];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v10 addObject:v7];

  *&v8 = a2[2];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v10 addObject:v9];

  [*this setRotArray:v10];
}

void jpc::IFA_DB::setLastTranslation(id *this, float *a2)
{
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  *&v4 = *a2;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v10 addObject:v5];

  *&v6 = a2[1];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v10 addObject:v7];

  *&v8 = a2[2];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v10 addObject:v9];

  [*this setTransArray:v10];
}

void jpc::IFA_DB::getLastRotation(id *this, float **a2)
{
  v4 = [*this rotArray];

  if (!v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v11 = MEMORY[0x277D86220];
        v12 = &v16;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_2402F6000, v11, v13, "ADJasperPearlInField_IFA_DB: no rotation in db", v12, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = MEMORY[0x277D86220];
      v12 = buf;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    memset_pattern16(*a2, &unk_2404070A0, 0xCuLL);
    return;
  }

  v14 = [*this rotArray];
  v5 = [v14 objectAtIndexedSubscript:0];
  [v5 floatValue];
  **a2 = v6;

  v7 = [v14 objectAtIndexedSubscript:1];
  [v7 floatValue];
  *(*a2 + 1) = v8;

  v9 = [v14 objectAtIndexedSubscript:2];
  [v9 floatValue];
  *(*a2 + 2) = v10;
}

void jpc::IFA_DB::getLastTranslation(id *this, float **a2)
{
  v4 = [*this transArray];

  if (!v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v11 = MEMORY[0x277D86220];
        v12 = &v16;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_2402F6000, v11, v13, "ADJasperPearlInField_IFA_DB: no translation in db", v12, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = MEMORY[0x277D86220];
      v12 = buf;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    memset_pattern16(*a2, &unk_2404070A0, 0xCuLL);
    return;
  }

  v14 = [*this transArray];
  v5 = [v14 objectAtIndexedSubscript:0];
  [v5 floatValue];
  **a2 = v6;

  v7 = [v14 objectAtIndexedSubscript:1];
  [v7 floatValue];
  *(*a2 + 1) = v8;

  v9 = [v14 objectAtIndexedSubscript:2];
  [v9 floatValue];
  *(*a2 + 2) = v10;
}

float jpc::IFA_DB::getLastPearlTemp(id *this)
{
  [*this lastPearlTemp];
  if (v2 == -1.0)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v3 = MEMORY[0x277D86220];
        v4 = &v9;
        v5 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_2402F6000, v3, v5, "ADJasperPearlInField_IFA_DB: no PearlTemp in db", v4, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v3 = MEMORY[0x277D86220];
      v4 = &v8;
      v5 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    return -1.0;
  }

  v6 = *this;

  [v6 lastPearlTemp];
  return result;
}

void jpc::IFA_DB::setAggPoints(id *this, const jpc::IIFABlock::AggregatedData *a2)
{
  v4 = objc_alloc_init(AggregatedDataWrapper);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v5 = *(a2 + 1);
  if (v5 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v5 - *a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  [(AggregatedDataWrapper *)v4 setAggPoints:&v8];
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  [*this setAggPointsWrapperObj:{v4, v8, v9, v10}];
}

void jpc::IFA_DB::setTelemetryNumOfUniqueTOFSpots(id *this, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  [*this setNumOfUniqueTOFSpots:?];
}

unint64_t jpc::IFA_DB::getTelemetryNumOfUniqueTOFSpots(id *this)
{
  v2 = [*this numOfUniqueTOFSpots];

  if (!v2)
  {
    return -1;
  }

  v3 = [*this numOfUniqueTOFSpots];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

void jpc::IFA_DB::setTelemetryIRCamFOVCoveragePercent(id *this, double a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [*this setIrCamFOVCoveragePercent:?];
}

double jpc::IFA_DB::getTelemetryIRCamFOVCoveragePercent(id *this)
{
  v2 = [*this irCamFOVCoveragePercent];

  if (!v2)
  {
    return -1.0;
  }

  v3 = [*this irCamFOVCoveragePercent];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

double jpc::IFA_DB::getAggPoints@<D0>(id *this@<X0>, _OWORD *a2@<X8>)
{
  v4 = [*this aggPointsWrapperObj];

  if (!v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v6 = MEMORY[0x277D86220];
        v7 = &v12;
        v8 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_2402F6000, v6, v8, "ADJasperPearlInField_IFA_DB: no AGG_POINTS in db", v7, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = buf;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v5 = [*this aggPointsWrapperObj];
  v10 = v5;
  if (v5)
  {
    [v5 aggData];
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_2403B815C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2403B8530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403B9064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2403B9A44(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403B9EDC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BA044(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BA270(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BA3B8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BA80C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BA904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2403BA998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2403BAA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADVisualLoggerHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403BB1EC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BC7B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BC9A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BCAFC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BCC34(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BCDA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2403BD0E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BD26C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BD3E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BD664(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403BD878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2403BDD18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void jpc::PORPreprocessorBlock::process(id *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  [a1[38] referenceDimensions];
  v5 = v4;
  [a1[38] referenceDimensions];
  v7 = ((((v6 >> 1) * (v5 >> 1)) * 0.8) * 0.5);
  if (v7)
  {
    if (v7 < 0x492492492492493)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_2403BE054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  jpc::JPCException::~JPCException(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_2403BE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  jpc::JPCException::~JPCException(&a9);
  __cxa_free_exception(v9);
  JUMPOUT(0x2403BE0B4);
}

uint64_t jpc::PORPreprocessorBlock::createPearlCorrespondences(jpc::PORPreprocessorBlock *this, const jpc::JpcInputData *a2, jpc::IPreprocessorBlock::JpcPreprocessorOutput *a3)
{
  v70 = *a2;
  if (!*a2 || (CVPixelBufferGetBytesPerRow(*a2), Width = CVPixelBufferGetWidth(v70), Height = CVPixelBufferGetHeight(v70), v5 = *(a2 + 1), (v67 = v5) == 0) || (CVPixelBufferGetBytesPerRow(v5), v68 = CVPixelBufferGetWidth(v67), v69 = CVPixelBufferGetHeight(v67), v6 = *(a2 + 2), (pixelBuffer = v6) == 0))
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  CVPixelBufferGetBytesPerRow(v6);
  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(v70, 1uLL);
  CVPixelBufferLockBaseAddress(v67, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 2));
  v8 = CVPixelBufferGetBaseAddress(*a2);
  v9 = CVPixelBufferGetBaseAddress(*(a2 + 1));
  v57 = a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(*(a2 + 2));
  v10 = CVPixelBufferGetBytesPerRow(*a2);
  v11 = CVPixelBufferGetBytesPerRow(*(a2 + 1));
  [*(a2 + 38) referenceDimensions];
  v13 = v12;
  [*(a2 + 38) referenceDimensions];
  if (Width != v68 || Height != v69)
  {
    __assert_rtn("createPearlCorrespondences", "JPC_PORPreprocessorBlock.mm", 98, "dxHelper.getWidth() == dyHelper.getWidth() && dxHelper.getHeight() == dyHelper.getHeight()");
  }

  if (Height && Width)
  {
    v15 = 0;
    v16.f64[0] = v13;
    v17 = v14;
    v56 = v16.f64[0];
    v16.f64[1] = v17;
    v59 = v16;
    v53 = 2 * (v10 >> 1);
    v54 = 2 * (v11 >> 1);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #2.0
      FMOV            V0.2D, #7.0
    }

    v60 = _Q0;
    v61 = _Q3;
    v63 = vdupq_n_s64(0x3FE99999A0000000uLL);
    v64 = _Q2;
    __asm { FMOV            V0.2D, #-0.5 }

    v51 = _Q0;
    v52 = v17;
    do
    {
      v58 = v15 + 1;
      if (0xAAAAAAAAAAAAAAABLL * (v15 + 1) < 0x5555555555555556)
      {
        v26 = 0;
        v62 = v15;
        v27 = 1;
        do
        {
          if (v27 >= 2 && (v28 = BaseAddress[v26], v28 >= 0x2C) && ((v29 = v8[v26], v29 <= 0x3FFE) ? (v30 = ((*(a2 + 64) + vcvts_n_f32_u32(v29, 5uLL)) - *(a2 + 65)) + (*(a2 + 68) * -0.8)) : (v30 = nanf(0)), (v31 = (*(a2 + 66) + vcvts_n_f32_s32(v9[v26] << 19 >> 19, 5uLL)) - *(a2 + 67), v32.f64[0] = v26, v32.f64[1] = v62, v33 = *(a2 + 38), v65 = vdivq_f64(vmlaq_f64(v60, v61, vaddq_f64(v32, v64)), v63), v74[0] = v65, [v33 undistort:1 distortedPixels:v74 outUndistorted:&v73], v34 = vmovn_s64(vcgtq_f64(v73, v59)), v35 = vuzp1_s16(v34, v34), v35.i32[1] = vuzp1_s16(v35, vmovn_s64(vcgtq_f64(0, v73))).i32[1], (vmaxv_u16(v35) & 1) == 0) && (v36 = v65.f64[0] + (v30 / 0.8), v36 <= v56) && v36 >= 0.0 && ((v37 = v65.f64[1] + (v31 / 0.8), v37 >= 0.0) ? (v38 = v37 <= v52) : (v38 = 0), v38)))
          {
            v39 = vaddq_f64(vmulq_f64(vmulq_f64(v73, v63), v64), v51);
            v40 = *(v57 + 1);
            v41 = *(v57 + 2);
            if (v40 >= v41)
            {
              v43 = *v57;
              v44 = 0x6DB6DB6DB6DB6DB7 * ((v40 - *v57) >> 3);
              v45 = v44 + 1;
              if ((v44 + 1) > 0x492492492492492)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v46 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v43) >> 3);
              if (2 * v46 > v45)
              {
                v45 = 2 * v46;
              }

              if (v46 >= 0x249249249249249)
              {
                v47 = 0x492492492492492;
              }

              else
              {
                v47 = v45;
              }

              if (v47)
              {
                if (v47 <= 0x492492492492492)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v48 = 8 * ((v40 - *v57) >> 3);
              *v48 = v73;
              *(v48 + 16) = v36;
              *(v48 + 24) = v37;
              *(v48 + 32) = v39;
              *(v48 + 48) = v28;
              *(v48 + 49) = 0;
              *(v48 + 52) = 0;
              v42 = 56 * v44 + 56;
              v49 = (56 * v44 - (v40 - v43));
              memcpy(v49, v43, v40 - v43);
              *v57 = v49;
              *(v57 + 1) = v42;
              *(v57 + 2) = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              *v40 = v73;
              *(v40 + 16) = v36;
              *(v40 + 24) = v37;
              *(v40 + 32) = v39;
              *(v40 + 48) = v28;
              *(v40 + 49) = 0;
              v42 = v40 + 56;
              *(v40 + 52) = 0;
            }

            v27 = 0;
            *(v57 + 1) = v42;
          }

          else
          {
            ++v27;
          }

          ++v26;
        }

        while (Width != v26);
      }

      v9 = (v9 + v54);
      v8 = (v8 + v53);
      BaseAddress += BytesPerRow;
      v15 = v58;
    }

    while (v58 != Height);
  }

  if (CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  if (CVPixelBufferUnlockBaseAddress(v67, 1uLL))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  result = CVPixelBufferUnlockBaseAddress(v70, 1uLL);
  if (result)
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  return result;
}

void sub_2403BE800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __CVBuffer *a45, CVPixelBufferLockFlags a46, uint64_t a47, __CVBuffer *a48, CVPixelBufferLockFlags a49, uint64_t a50, __CVBuffer *a51, CVPixelBufferLockFlags a52)
{
  if (!CVPixelBufferUnlockBaseAddress(a45, a46))
  {
    if (!CVPixelBufferUnlockBaseAddress(a48, a49))
    {
      if (!CVPixelBufferUnlockBaseAddress(a51, a52))
      {
        _Unwind_Resume(a1);
      }

      __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
    }

    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
}

void jpc::PORPreprocessorBlock::createPearlJasperCorrespondences(jpc::PORPreprocessorBlock *this, id *a2, jpc::IPreprocessorBlock::JpcPreprocessorOutput *a3)
{
  v4 = a2[22];
  v15 = *a2;
  if (!*a2)
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  CVPixelBufferGetBytesPerRow(*a2);
  CVPixelBufferGetWidth(v15);
  CVPixelBufferGetHeight(v15);
  v5 = a2[1];
  v14 = v5;
  if (!v5)
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  CVPixelBufferGetBytesPerRow(v5);
  CVPixelBufferGetWidth(v14);
  CVPixelBufferGetHeight(v14);
  v6 = a2[2];
  pixelBuffer = v6;
  if (!v6)
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  CVPixelBufferGetBytesPerRow(v6);
  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(v15, 1uLL);
  CVPixelBufferLockBaseAddress(v14, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  __asm
  {
    FMOV            V0.2D, #0.5
    FMOV            V0.2D, #-0.5
  }

  if ([v4 length] > 0)
  {
    [v4 cameraPixels];
    jpc::PORPreprocessorBlock::interpolateDownscaledDxDyForNonIntegerCoordinate();
  }

  if (CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  if (CVPixelBufferUnlockBaseAddress(v14, 1uLL))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }

  if (CVPixelBufferUnlockBaseAddress(v15, 1uLL))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }
}

void sub_2403BEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  jpc::CVPixelBufferLock::~CVPixelBufferLock(&a30);
  jpc::CVPixelBufferLock::~CVPixelBufferLock(&a33);
  jpc::CVPixelBufferLock::~CVPixelBufferLock(&a36);

  _Unwind_Resume(a1);
}

void jpc::PreprocessingFailedException::PreprocessingFailedException(jpc::PreprocessingFailedException *this)
{
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_2852318F8;
  operator new();
}

void jpc::PreprocessingFailedException::~PreprocessingFailedException(std::exception *this)
{
  jpc::JPCException::~JPCException(this);

  JUMPOUT(0x245CBFCB0);
}

void sub_2403BF2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  jpc::IIFABlock::AggregatedData::~AggregatedData(&a11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void jpc::CVPixelBufferLock::~CVPixelBufferLock(jpc::CVPixelBufferLock *this)
{
  *this = &unk_285231920;
  if (CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {
    __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
  }
}

{
  *this = &unk_285231920;
  if (!CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {

    JUMPOUT(0x245CBFCB0);
  }

  __assert_rtn("~CVPixelBufferLock", "JPC_CVPixelBufferHelper.hpp", 133, "false");
}

void jpc::PORPreprocessorBlock::pickDxDySamplePointsForInterpolation(__CVBuffer **a1@<X1>, float64x2_t *a2@<X2>, float64x2_t *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v6 = a6;
  a6[1] = 0u;
  a6[2] = 0u;
  *a6 = 0u;
  v7 = vdupq_n_s64(0x3FE99999A0000000uLL);
  __asm
  {
    FMOV            V2.2D, #-7.0
    FMOV            V0.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v73 = vrndmq_f64(vaddq_f64(vmulq_f64(vmlaq_f64(_Q2, v7, *a2), _Q0), _Q3));
  __asm
  {
    FMOV            V2.2D, #2.0
    FMOV            V3.2D, #7.0
  }

  *a3 = vdivq_f64(vmlaq_f64(_Q3, _Q2, vaddq_f64(v73, _Q0)), v7);
  v85 = *a1;
  v88 = 0u;
  if (!*a1 || (v86 = CVPixelBufferGetBytesPerRow(*a1) >> 1, Width = CVPixelBufferGetWidth(v85), Height = CVPixelBufferGetHeight(v85), v19 = a1[1], pixelBuffer = v19, v83 = 0u, !v19))
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  v81 = CVPixelBufferGetBytesPerRow(v19) >> 1;
  v82 = CVPixelBufferGetWidth(pixelBuffer);
  v84 = CVPixelBufferGetHeight(pixelBuffer);
  v20 = a1[2];
  v75 = v20;
  v78 = 0u;
  if (!v20)
  {
    __assert_rtn("CVPixelBufferHelper", "JPC_CVPixelBufferHelper.hpp", 164, "nullptr != m_pixelBuffer");
  }

  v71 = a1;
  v67 = a4;
  BytesPerRow = CVPixelBufferGetBytesPerRow(v20);
  v77 = CVPixelBufferGetWidth(v75);
  v21 = CVPixelBufferGetHeight(v75);
  v72 = 0;
  v22 = 0;
  v23 = 0;
  v70 = v73.f64[0];
  v24 = 1;
  v25 = v73.f64[1];
  v79 = v21;
LABEL_5:
  v26 = 0;
  v68 = v24;
  v27 = v23 + v25;
  v28 = 1;
  v69 = v27;
  while (1)
  {
    v30 = v28;
    v31 = v26 + v70;
    if (v26 + v70 >= Width || v27 >= Height)
    {
      break;
    }

    if (Width <= v31)
    {
      v58 = 211;
      v59 = "getPixelPtr";
      v60 = "x < getWidth()";
      goto LABEL_70;
    }

    if (Height <= v27)
    {
      v58 = 213;
      v60 = "y < getHeight()";
      goto LABEL_69;
    }

    if (CVPixelBufferGetBytesPerRow(v85))
    {
      v58 = 214;
      v60 = "CVPixelBufferGetBytesPerRow(m_pixelBuffer) % sizeof(PixelDatatype) == 0";
LABEL_69:
      v59 = "getPixelPtr";
LABEL_70:
      *v6 = 0;
      __assert_rtn(v59, "JPC_CVPixelBufferHelper.hpp", v58, v60);
    }

    BaseAddress = *(&v88 + 1);
    if (!*(&v88 + 1))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(v85);
      *(&v88 + 1) = BaseAddress;
      if (!BaseAddress)
      {
        v58 = 200;
        v59 = "getDataPtr";
        v60 = "nullptr != m_dataPtr";
        goto LABEL_70;
      }
    }

    v34 = BaseAddress[v86 * v27 + v31];
    if (v34 < 0x3FFF)
    {
      v35 = ((v71[64] + vcvts_n_f32_u32(v34, 5uLL)) - v71[65]) + (v71[68] * -0.8);
    }

    else
    {
      v35 = nanf(0);
    }

    if (v82 <= v31)
    {
      v61 = 211;
      v62 = "getPixelPtr";
      v63 = "x < getWidth()";
      goto LABEL_75;
    }

    if (v84 <= v27)
    {
      v61 = 213;
      v63 = "y < getHeight()";
      goto LABEL_74;
    }

    v74 = v30;
    v36 = v6;
    if (CVPixelBufferGetBytesPerRow(pixelBuffer))
    {
      v61 = 214;
      v63 = "CVPixelBufferGetBytesPerRow(m_pixelBuffer) % sizeof(PixelDatatype) == 0";
LABEL_74:
      v62 = "getPixelPtr";
LABEL_75:
      *v6 = 0;
      __assert_rtn(v62, "JPC_CVPixelBufferHelper.hpp", v61, v63);
    }

    v37 = *(&v83 + 1);
    if (!*(&v83 + 1))
    {
      v37 = CVPixelBufferGetBaseAddress(pixelBuffer);
      *(&v83 + 1) = v37;
      if (!v37)
      {
        v61 = 200;
        v62 = "getDataPtr";
        v63 = "nullptr != m_dataPtr";
        goto LABEL_75;
      }
    }

    v38 = (v71[66] + vcvts_n_f32_s32(v37[v81 * v27 + v31] << 19 >> 19, 5uLL)) - v71[67];
    v39 = v6[2];
    if (v22 >= v39)
    {
      v40 = v22;
      v41 = v22 >> 2;
      v42 = (v22 >> 2) + 1;
      if (v42 >> 62)
      {
        *v6 = 0;
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (v39 >> 1 > v42)
      {
        v42 = v39 >> 1;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v43 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        if (!(v43 >> 62))
        {
          operator new();
        }

        *v36 = 0;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v41) = v35;
      v22 = 4 * v41 + 4;
      memcpy(0, 0, v40);
      v6 = v36;
      v36[1] = v22;
      v36[2] = 0;
    }

    else
    {
      *v22 = v35;
      v22 += 4;
    }

    v6[1] = v22;
    v44 = v6[3];
    v45 = (v72 - v44) >> 2;
    v46 = v45 + 1;
    if ((v45 + 1) >> 62)
    {
      *v36 = 0;
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    if (-v44 >> 1 > v46)
    {
      v46 = -v44 >> 1;
    }

    if (-v44 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v47 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v47 = v46;
    }

    if (v47)
    {
      if (!(v47 >> 62))
      {
        operator new();
      }

      *v36 = 0;
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(4 * v45) = v38;
    memcpy(0, v44, v72 - v44);
    v6 = v36;
    v36[3] = 0;
    v36[5] = 0;
    if (v44)
    {
      operator delete(v44);
    }

    v27 = v69;
    v36[4] = 4 * v45 + 4;
    if (v77 <= v31)
    {
      v64 = 211;
      v65 = "getPixelPtr";
      v66 = "x < getWidth()";
      goto LABEL_81;
    }

    if (v79 <= v69)
    {
      v64 = 213;
      v66 = "y < getHeight()";
      v65 = "getPixelPtr";
      goto LABEL_81;
    }

    v72 = 4 * v45 + 4;
    CVPixelBufferGetBytesPerRow(v75);
    v48 = *(&v78 + 1);
    if (!*(&v78 + 1))
    {
      v48 = CVPixelBufferGetBaseAddress(v75);
      *(&v78 + 1) = v48;
      if (!v48)
      {
        v64 = 200;
        v65 = "getDataPtr";
        v66 = "nullptr != m_dataPtr";
LABEL_81:
        *v36 = 0;
        __assert_rtn(v65, "JPC_CVPixelBufferHelper.hpp", v64, v66);
      }
    }

    v49 = v48[BytesPerRow * v69 + v31];
    v51 = *(a5 + 8);
    v50 = *(a5 + 16);
    if (v51 < v50)
    {
      *v51 = v49;
      v29 = v51 + 1;
    }

    else
    {
      v52 = *a5;
      v53 = &v51[-*a5];
      v54 = (v53 + 1);
      if ((v53 + 1) < 0)
      {
        *v36 = 0;
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v55 = v50 - v52;
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        operator new();
      }

      v57 = &v51[-*a5];
      *v53 = v49;
      v29 = v53 + 1;
      memcpy(0, v52, v57);
      *a5 = 0;
      *(a5 + 8) = v53 + 1;
      *(a5 + 16) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    v28 = 0;
    *(a5 + 8) = v29;
    v26 = 1;
    if ((v74 & 1) == 0)
    {
      v24 = 0;
      *v36 = 0;
      v23 = 1;
      v25 = v73.f64[1];
      if ((v68 & 1) == 0)
      {
        *v67 = 0x4003FFFFFB000004;
        return;
      }

      goto LABEL_5;
    }
  }

  *v6 = 0;
}

void sub_2403BFB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  *v17 = __p;
  v19 = v17[3];
  if (v19)
  {
    v17[4] = v19;
    operator delete(v19);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  v17[1] = __p;
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

float jpc::MathUtils::bilinearInterpolateInSquare<float>(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  if (a3 <= 0.0)
  {
    __assert_rtn("bilinearInterpolateInSquare", "JPC_MathUtils.hpp", 115, "singleAxisDistance > 0");
  }

  if (a8 < a1)
  {
    __assert_rtn("bilinearInterpolateInSquare", "JPC_MathUtils.hpp", 116, "estimationX >= x1");
  }

  if ((a1 + a3) < a8)
  {
    __assert_rtn("bilinearInterpolateInSquare", "JPC_MathUtils.hpp", 117, "estimationX <= x2");
  }

  if (a9 < a2)
  {
    __assert_rtn("bilinearInterpolateInSquare", "JPC_MathUtils.hpp", 118, "estimationY >= y1");
  }

  if ((a2 + a3) < a9)
  {
    __assert_rtn("bilinearInterpolateInSquare", "JPC_MathUtils.hpp", 119, "estimationY <= y2");
  }

  return (1.0 / (a3 * a3)) * ((((a8 - a1) * a7) * (a9 - a2)) + (((((a1 + a3) - a8) * a5) * (a9 - a2)) + (((((a1 + a3) - a8) * a4) * ((a2 + a3) - a9)) + (((a8 - a1) * a6) * ((a2 + a3) - a9)))));
}

__n128 jpc::PORPreprocessorBlock::forwardRelevantInputsToOutputWithNoPreprocessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = std::chrono::system_clock::now().__d_.__rep_ / 1000;
  *(a3 + 56) = *(a2 + 276);
  *(a3 + 64) = *(a2 + 16);
  v5 = *(a2 + 272);
  *(a3 + 80) = *(a2 + 256);
  *(a3 + 96) = v5;
  objc_storeStrong((a3 + 104), *(a2 + 280));
  *(a3 + 112) = *(a2 + 288);
  objc_storeStrong((a3 + 128), *(a2 + 304));
  *(a3 + 136) = *(a2 + 312);
  v6 = *(a2 + 416);
  v8 = *(a2 + 368);
  v7 = *(a2 + 384);
  *(a3 + 224) = *(a2 + 400);
  *(a3 + 240) = v6;
  *(a3 + 192) = v8;
  *(a3 + 208) = v7;
  v9 = *(a2 + 480);
  v11 = *(a2 + 432);
  v10 = *(a2 + 448);
  *(a3 + 288) = *(a2 + 464);
  *(a3 + 304) = v9;
  *(a3 + 256) = v11;
  *(a3 + 272) = v10;
  v12 = *(a2 + 352);
  *(a3 + 160) = *(a2 + 336);
  *(a3 + 176) = v12;
  result = *(a2 + 496);
  v14 = *(a2 + 512);
  v15 = *(a2 + 544);
  *(a3 + 352) = *(a2 + 528);
  *(a3 + 368) = v15;
  *(a3 + 320) = result;
  *(a3 + 336) = v14;
  *(a3 + 384) = *(a2 + 560);
  return result;
}

float64_t jpc::PORPreprocessorBlock::createPearlCorrespondenceFromDxDy@<D0>(uint64_t a1@<X1>, float64x2_t *a2@<X2>, char a3@<W3>, float64x2_t *a4@<X8>, float32x2_t a5@<D0>, float32_t a6@<S1>)
{
  v7 = *a2;
  __asm { FMOV            V3.2D, #0.5 }

  v22 = _Q3;
  if ((a3 & 1) == 0)
  {
    v13 = vaddq_f64(v7, _Q3);
    __asm
    {
      FMOV            V3.2D, #2.0
      FMOV            V4.2D, #7.0
    }

    v7 = vdivq_f64(vmlaq_f64(_Q4, _Q3, v13), vdupq_n_s64(0x3FE99999A0000000uLL));
  }

  a5.f32[1] = a6;
  v16 = vdiv_f32(a5, vdup_n_s32(0x3F4CCCCDu));
  v17 = *(a1 + 304);
  v24 = v7;
  [v17 undistort:1 distortedPixels:&v24 outUndistorted:{&v23, *&v7}];
  result = v23.f64[0];
  __asm { FMOV            V2.2D, #-0.5 }

  v20 = vaddq_f64(vmulq_f64(vmulq_f64(v23, vdupq_n_s64(0x3FE99999A0000000uLL)), v22), _Q2);
  *a4 = v23;
  a4[1] = vaddq_f64(v21, vcvtq_f64_f32(v16));
  a4[2] = v20;
  return result;
}

double jpc::undistortFromPixelCenter(void *a1, __int128 *a2)
{
  v4 = *a2;
  [a1 undistort:1 distortedPixels:&v4 outUndistorted:&v3];
  return v3;
}

id jpc::PORPreprocessorBlock::getJasperNoPoseToIRSensorOperationalWithPoseCalibration(jpc::PORPreprocessorBlock *this, const jpc::JpcInputData *a2)
{
  v2 = *(a2 + 31);
  v3 = *(a2 + 32);
  v4 = *(a2 + 33);
  v5 = *(a2 + 34);
  *&v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(a2 + 2))), v3, *(a2 + 32), 1), v4, *(a2 + 2), 2), v5, *(a2 + 2), 3).u64[0];
  *&v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(a2 + 4))), v3, *(a2 + 64), 1), v4, *(a2 + 4), 2), v5, *(a2 + 4), 3).u64[0];
  *&v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(a2 + 3))), v3, *(a2 + 48), 1), v4, *(a2 + 3), 2), v5, *(a2 + 3), 3).u64[0];
  *&v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(a2 + 5))), v3, *(a2 + 80), 1), v4, *(a2 + 5), 2), v5, *(a2 + 5), 3).u64[0];
  v6 = [*(a2 + 38) mutableCopy];
  [v6 setCameraToPlatformTransform:{v11, v10, v9, v8}];

  return v6;
}

void sub_2403C049C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22)
{
  MEMORY[0x245CBFC90](v24, 0x1000C80FA0F61DDLL);

  _Unwind_Resume(a1);
}

BOOL GMC_SpatialCoverageTest(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 116) / 32;
  v4 = *(a2 + 112) / 32;
  if (v4 * v3)
  {
    operator new[]();
  }

  v5 = *(a1 + 20);
  v6 = v4 * v3;
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a1 + 16);
      if (!v8)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      if (v8 == 1)
      {
        __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
      }

      v9 = *(a2 + 112);
      v10 = v9 + 31;
      if (v9 >= 0)
      {
        v10 = *(a2 + 112);
      }

      v11 = (*(a1 + 8) + 8 * i);
      v12 = fmin((*(a2 + 116) / 32 - 1), fmax((v11[v5] * 0.03125), 0.0));
      if (v3 <= v12 || (v13 = fmin(((v10 >> 5) - 1), fmax((*v11 * 0.03125), 0.0)), v4 <= v13))
      {
        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

      *(4 * v13 + 4 * v4 * v12) = 1;
      v5 = *(a1 + 20);
    }

    v6 = v4 * v3;
  }

  if (!v6)
  {
    v15 = 0.0;
    goto LABEL_22;
  }

  if (v6 <= 7)
  {
    v14 = 0;
    v15 = 0.0;
LABEL_20:
    v24 = v6 - v14;
    v25 = (4 * v14);
    do
    {
      v26 = *v25++;
      v15 = v15 + v26;
      --v24;
    }

    while (v24);
    goto LABEL_22;
  }

  v14 = v6 & 0xFFFFFFF8;
  v16 = 16;
  v15 = 0.0;
  v17 = v14;
  do
  {
    v18 = *(v16 - 16);
    v19.i64[0] = DWORD2(v18);
    v19.i64[1] = HIDWORD(v18);
    v20 = vcvtq_f64_u64(v19);
    v19.i64[0] = v18;
    v19.i64[1] = DWORD1(v18);
    v21 = vcvtq_f64_u64(v19);
    v19.i64[0] = *(v16 + 8);
    v19.i64[1] = HIDWORD(*v16);
    v22 = vcvtq_f64_u64(v19);
    v19.i64[0] = *v16;
    v19.i64[1] = HIDWORD(*v16);
    v23 = vcvtq_f64_u64(v19);
    v15 = v15 + v21.f64[0] + v21.f64[1] + v20.f64[0] + v20.f64[1] + v23.f64[0] + v23.f64[1] + v22.f64[0] + v22.f64[1];
    v16 += 32;
    v17 -= 8;
  }

  while (v17);
  if (v14 != v6)
  {
    goto LABEL_20;
  }

LABEL_22:
  v27 = *(a2 + 584);
  v28 = v15 / v6;
  *a3 = v28;
  return v28 > v27;
}

void sub_2403C0BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a11)
  {
    if (a13 == 1)
    {
      v14 = a1;
      MEMORY[0x245CBFC90](a11, v13);
      a1 = v14;
    }
  }

  _Unwind_Resume(a1);
}

void JacobianMatrix::JacobianMatrix(JacobianMatrix *this, JacobianMatrix *a2, unint64_t a3, int a4, unsigned int a5, unsigned int a6, char a7)
{
  v8 = 3;
  if (a4)
  {
    v8 = 4;
  }

  v9 = v8 + 3 * a2;
  v10 = a5 + a6;
  v11 = a3 + 4 * a2;
  JacobianMatrix::createNzPerColumn(a2, a3, a4, a5, a6, a7, &v22);
  if (v22 == v23)
  {
    v13 = 0;
    v15 = v11;
    goto LABEL_14;
  }

  v12 = v23 - v22 - 4;
  if (v12 >= 0x1C)
  {
    v16 = (v12 >> 2) + 1;
    v17 = v22 + 1;
    v18 = 0uLL;
    v19 = v16 & 0x7FFFFFFFFFFFFFF8;
    v20 = 0uLL;
    do
    {
      v18 = vaddq_s32(v17[-1], v18);
      v20 = vaddq_s32(*v17, v20);
      v17 += 2;
      v19 -= 8;
    }

    while (v19);
    v13 = vaddvq_s32(vaddq_s32(v20, v18));
    if (v16 == (v16 & 0x7FFFFFFFFFFFFFF8))
    {
      v15 = v11;
      goto LABEL_14;
    }

    v14 = &v22->i32[v16 & 0x7FFFFFFFFFFFFFF8];
  }

  else
  {
    v13 = 0;
    v14 = v22;
  }

  v15 = v11;
  do
  {
    v21 = *v14++;
    v13 += v21;
  }

  while (v14 != v23);
LABEL_14:
  SparseMatrix::SparseMatrix(this, v15, v9 + v10, v22->i32, v13, 1);
}

void sub_2403C1564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void JacobianMatrix::createNzPerColumn(JacobianMatrix *this@<X0>, unint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, char a6@<W5>, void *a7@<X8>)
{
  v12 = this;
  if (a2 && (a6 & 1) == 0)
  {
    __assert_rtn("createNzPerColumn", "JacobianMatrix.mm", 63, "shouldIncludeJasperResidualFunction || 0 == numOfJasperCorrespondences");
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v14 = 3;
  if (a3)
  {
    v14 = 4;
  }

  v15 = v14 + 3 * this + a4 + a5;
  if (v15)
  {
    if (!(v15 >> 62))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v16 = 2 * this;
  v19 = 2 * this;
  std::vector<int>::push_back[abi:ne200100](a7, &v19);
  v19 = 2 * v12;
  std::vector<int>::push_back[abi:ne200100](a7, &v19);
  v19 = 2 * v12;
  std::vector<int>::push_back[abi:ne200100](a7, &v19);
  if (a3)
  {
    v19 = v16;
    std::vector<int>::push_back[abi:ne200100](a7, &v19);
  }

  if (a4)
  {
    v19 = v12;
    std::vector<int>::push_back[abi:ne200100](a7, &v19);
  }

  if (a5)
  {
    v19 = v12;
    std::vector<int>::push_back[abi:ne200100](a7, &v19);
  }

  if (v12)
  {
    if (a6)
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        v19 = 3;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
        v19 = 3;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
        if (i >= a2)
        {
          v18 = 4;
        }

        else
        {
          v18 = 5;
        }

        v19 = v18;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
      }
    }

    else
    {
      do
      {
        v19 = 3;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
        v19 = 3;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
        v19 = 4;
        std::vector<int>::push_back[abi:ne200100](a7, &v19);
        v12 = (v12 - 1);
      }

      while (v12);
    }
  }
}

void sub_2403C1764(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void JacobianMatrix::Solve(uint64_t a1)
{
  if (*(a1 + 40) > *(a1 + 36))
  {
    JacobianMatrix::qlDecompose(a1);
  }

  __assert_rtn("Solve", "JacobianMatrix.mm", 39, "GetMatrixHeight() > GetMatrixWidth()");
}

void sub_2403C1AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  MatrixNxPts<9u,double>::~MatrixNxPts(&a20);
  std::pair<SparseMatrix,MatrixNxPts<1u,double>>::~pair(&a9);
  _Unwind_Resume(a1);
}

void JacobianMatrix::qlDecompose(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    if (v1 <= 0x666666666666666)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v2 = *(a1 + 36);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  operator new[]();
}

void sub_2403C3C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  SparseMatrix::~SparseMatrix((v57 - 224));
  if (__p)
  {
    operator delete(__p);
  }

  v59 = *(v57 - 144);
  if (!v59)
  {
    _Unwind_Resume(a1);
  }

  v60 = *(v57 - 136);
  v61 = *(v57 - 144);
  if (v60 != v59)
  {
    v62 = v60 - 5;
    v63 = v60 - 5;
    v64 = v60 - 5;
    do
    {
      v65 = *v64;
      v64 -= 5;
      (*v65)(v63);
      v62 -= 5;
      v66 = v63 == v59;
      v63 = v64;
    }

    while (!v66);
    v61 = *(v57 - 144);
  }

  *(v57 - 136) = v59;
  operator delete(v61);
  _Unwind_Resume(a1);
}

uint64_t std::pair<SparseMatrix,MatrixNxPts<1u,double>>::~pair(uint64_t a1)
{
  *(a1 + 48) = off_285231258;
  if (*(a1 + 56) && *(a1 + 72) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  if (*a1)
  {
    MEMORY[0x245CBFC90](*a1, 0x1000C8000313F17);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    MEMORY[0x245CBFC90](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x245CBFC90](v3, 0x1000C8052888210);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    MEMORY[0x245CBFC90](v4, 0x1000C8052888210);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<MatrixNxPts<1u,double>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 5;
        v7 = v4 - 5;
        v8 = v4 - 5;
        do
        {
          v9 = *v8;
          v8 -= 5;
          (*v9)(v7);
          v6 -= 5;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2403C4650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADMonocularExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403C4D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_2403C4F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403C5354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403C5AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperColorStillsExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403C6C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, id obj, uint64_t a35, char a36)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a36);

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void mergePointCloudsUsingSameTransform(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  [a3 count];
  operator new[]();
}

void sub_2403C72E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v12 = v9;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v6);

  _Unwind_Resume(a1);
}

void sub_2403C7B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

uint64_t GMC_Controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8)
{
  v77 = *MEMORY[0x277D85DE8];
  v12 = *(a4 + 72);
  a7[12] = v12;
  a7[13] = *(a4 + 56);
  a7[14] = *(a4 + 64);
  a7[2] = 0;
  a7[3] = 0;
  *a7 = 0x3FF0000000000000;
  a7[1] = 0;
  a7[6] = 0;
  a7[7] = 0;
  a7[4] = 0x3FF0000000000000;
  a7[5] = 0;
  a7[8] = 0x3FF0000000000000;
  v13 = *(a4 + 16);
  *(a8 + 104) = v12;
  *(a8 + 112) = v13;
  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 272) = 0;
  *(a8 + 128) = *a7;
  *(a8 + 136) = a7[1];
  *(a8 + 144) = a7[2];
  *(a8 + 152) = a7[3];
  *(a8 + 160) = a7[4];
  *(a8 + 168) = a7[5];
  *(a8 + 176) = a7[6];
  *(a8 + 184) = a7[7];
  *(a8 + 192) = a7[8];
  if (*(a4 + 576))
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInFieldCalibration GMCJ: WARNING: GMCJ does not work with params.consts.testSetSize > 0. Results unpredictable.", buf, 2u);
    }
  }

  v16 = *(a1 + 20);
  *(a8 + 48) = v16;
  v17 = 0.0;
  if (v16 >= *(a4 + 592))
  {
    v17 = 1.0;
  }

  *(a8 + 456) = v17;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 20);
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperPearlInFieldCalibration GMCJ: Num of points: %d\n", buf, 8u);
    }

    if (ADDebugUtilsADVerboseLogsEnabled)
    {
      v21 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a8 + 456);
        *buf = 134217984;
        *&buf[4] = v22;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperPearlInFieldCalibration GMCJ: outStats->tests.isEnoughInPoints = %lf\n", buf, 0xCu);
      }
    }
  }

  if (*(a8 + 456) != 0.0 || a5)
  {
    v23 = *(a4 + 564);
    v24 = *(a1 + 20);
    if (v23 > v24 && ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 20);
        *buf = 67109376;
        *&buf[4] = v23;
        *&buf[8] = 1024;
        *&buf[10] = v27;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperPearlInFieldCalibration GMCJ: Required points: %d, available points: %d. Only these will be used.\n", buf, 0xEu);
      }

      v24 = *(a1 + 20);
    }

    v71[0] = off_285231258;
    if (v24)
    {
      operator new[]();
    }

    v71[1] = 0;
    v72 = 3;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v71[0] = &unk_2852312D8;
    v28 = *(a2 + 20);
    v66[0] = off_285231258;
    if (v28)
    {
      operator new[]();
    }

    v66[1] = 0;
    v67 = 3;
    v68 = 0;
    v69 = 0;
    v70 = 24 * v28;
    v66[0] = &unk_2852312D8;
    if (*(a4 + 573) == 1)
    {
      GMC_Homography(0, v66, a4);
    }

    v29 = *(a4 + 576);
    v61[0] = off_285231258;
    if (v29)
    {
      operator new[]();
    }

    v61[1] = 0;
    v62 = 3;
    v63 = 0;
    v64 = 0;
    v65 = 24 * v29;
    v61[0] = &unk_2852312D8;
    v56[1] = 0;
    v57 = 3;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v56[0] = &unk_2852312D8;
    v51[0] = off_285231258;
    if (!v73)
    {
      v51[1] = 0;
      v52 = 3;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v51[0] = &unk_2852312D8;
      v46[0] = off_285231258;
      if (!v68)
      {
        v46[1] = 0;
        v47 = 3;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v46[0] = &unk_2852312D8;
        v41 = 0;
        v42 = 1;
        v43 = v73;
        v44 = v73 != 0;
        v45 = 0;
        v40 = &unk_285231358;
        GMC_ExtractTestSamples(v71, v66, 0, v51, v46, v61, v56, a8);
        v38 = 0u;
        v39 = 0u;
        if (*(a4 + 576))
        {
          v34[1] = 0;
          v34[2] = 1;
          v35 = 0;
          *&v36 = 0;
          v34[0] = &unk_285231338;
          calcProjectionDists(v61, v56, a4, v34);
        }

        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          v30 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperPearlInFieldCalibration GMCJ: WARNING: test set size is 0. PDM is not calculated.\n", buf, 2u);
          }
        }

        v37 = off_285231258;
        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  return 4294967294;
}

void sub_2403C9D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a57);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a32);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a37);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a42);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a47);
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(&a52);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a72);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x220]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x248]);
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(&STACK[0x2C8]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x338]);
  Matrix<BOOL>::~Matrix(&STACK[0x388]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x3B0]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x3D8]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x400]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x428]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x450]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x478]);
  _Unwind_Resume(a1);
}

void calcProjectionDists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 64);
  v7 = *(a3 + 72);
  v9 = *(a3 + 80);
  v67 = *(a3 + 96);
  v68 = *(a3 + 88);
  v66 = *(a3 + 104);
  v10 = *a3;
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v78 = *(a3 + 40);
  v79 = *(a3 + 32);
  v13 = *(a3 + 56);
  v76 = *(a3 + 8);
  v77 = *(a3 + 48);
  v14 = *(a3 + 472);
  v174 = *(a3 + 456);
  v175 = v14;
  v15 = *(a3 + 488);
  v16 = *(a3 + 440);
  v172 = *(a3 + 424);
  v173 = v16;
  v177 = *(a3 + 496);
  v17 = *(a3 + 512);
  v176 = v15;
  v178 = v17;
  v18 = *(a3 + 400);
  v74 = *(a3 + 408);
  v75 = *(a3 + 416);
  GeomUtils::ToNonHomg(a1, &v170);
  GeomUtils::ToNonHomg(a2, v168);
  v19 = v7 / v9;
  v20 = 0.0 / v9;
  v159 = v19;
  v160 = 0.0 / v9;
  v69 = v13 / v9;
  v70 = v8 / v9;
  v161 = v13 / v9;
  v162 = 0.0 / v9;
  v71 = v19;
  v72 = v9 / v9;
  v163 = v19;
  v164 = v8 / v9;
  v165 = 0.0 / v9;
  v166 = 0.0 / v9;
  v167 = v9 / v9;
  v21 = v12 / v11;
  v22 = v10 / v11;
  v23 = 0.0 / v11;
  v150 = v21;
  v151 = 0.0 / v11;
  v73 = v22;
  v152 = v22;
  v153 = 0.0 / v11;
  v154 = v21;
  v155 = v76 / v11;
  v156 = 0.0 / v11;
  v157 = 0.0 / v11;
  v158 = v11 / v11;
  v147 = v174;
  v148 = v175;
  v149 = v176;
  v145 = v172;
  v146 = v173;
  v24 = v18 - v79;
  v25 = v74 - v78;
  v142 = v18 - v79;
  v143 = v74 - v78;
  v26 = v75 - v77;
  v144 = v75 - v77;
  if ((*(a3 + 573) & 1) == 0)
  {
    v24 = v79 - v68;
    v25 = v78 - v67;
    v26 = v77 - v66;
    v142 = v79 - v68;
    v143 = v78 - v67;
    v144 = v77 - v66;
  }

  v134 = off_285231258;
  if (v171)
  {
    operator new[]();
  }

  v135 = 0;
  v136 = 3;
  v137 = 0;
  v138 = 0;
  v134 = &unk_2852312D8;
  v129 = off_285231258;
  if (v169)
  {
    operator new[]();
  }

  v130 = 0;
  LODWORD(v131) = 3;
  HIDWORD(v131) = v169;
  v132 = v169 != 0;
  v133 = 24 * v169;
  v129 = &unk_2852312D8;
  memcpy(0, v168[1], 16 * v169);
  GMC_WorldFromPoints(&v134, &v129, &v145, &v142, 1, &v139);
  v129 = off_285231258;
  if (v130 && v132)
  {
    MEMORY[0x245CBFC90]();
    v130 = 0;
    v133 = 0;
    v132 = 0;
  }

  v131 = 0;
  v134 = off_285231258;
  if (v135 && v137 == 1)
  {
    MEMORY[0x245CBFC90]();
    v135 = 0;
    v138 = 0;
    v137 = 0;
  }

  v136 = 0;
  v27 = v141;
  v28 = &v140[16 * v141];
  v29 = 8 * v141;
  v118 = v28;
  HIDWORD(v119) = v141;
  LOBYTE(v120) = 0;
  v121 = *&v29;
  v117 = COERCE_DOUBLE(&unk_285231338);
  LODWORD(v119) = 1;
  v30 = *(a4 + 8);
  if (*(a4 + 32) < v29)
  {
    if (v30)
    {
      if (*(a4 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }
    }

    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = v27;
  memcpy(v30, v28, v29);
  v117 = COERCE_DOUBLE(off_285231258);
  if (*&v118 != 0.0 && LOBYTE(v120) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v31 = v71 + 0.0 + v20 * 0.0 + v69 * 0.0;
  v32 = v71 * 0.0 + 0.0;
  v33 = v20 + v32 + v69 * 0.0;
  v34 = v69 + v32 + v20 * 0.0;
  v35 = v20 + 0.0 + v71 * 0.0 + v70 * 0.0;
  v36 = v20 * 0.0 + 0.0;
  v37 = v71 + v36 + v70 * 0.0;
  v38 = v70 + v36 + v71 * 0.0;
  v39 = v20 + 0.0 + v20 * 0.0 + v72 * 0.0;
  v40 = v20 + v36 + v72 * 0.0;
  v41 = v72 + v36 + v20 * 0.0;
  v42 = v31 + 0.0 + v33 * 0.0 + v34 * 0.0;
  v43 = v31 * 0.0 + 0.0;
  v117 = v42;
  *&v118 = v33 + v43 + v34 * 0.0;
  v44 = v43 + v33 * 0.0;
  v119 = v34 + v44;
  v120 = v44 + v34 * 0.0;
  v45 = v35 * 0.0 + 0.0;
  v121 = v35 + 0.0 + v37 * 0.0 + v38 * 0.0;
  v122 = v37 + v45 + v38 * 0.0;
  v46 = v45 + v37 * 0.0;
  v123 = v38 + v46;
  v124 = v46 + v38 * 0.0;
  v47 = v39 * 0.0 + 0.0;
  v125 = v39 + 0.0 + v40 * 0.0 + v41 * 0.0;
  v126 = v40 + v47 + v41 * 0.0;
  v48 = v47 + v40 * 0.0;
  v127 = v41 + v48;
  v128 = v48 + v41 * 0.0;
  v49 = v21 * *&v145 + 0.0 + v23 * *(&v145 + 1) + v73 * *&v146;
  v50 = v21 * *(&v146 + 1) + 0.0 + v23 * *&v147 + v73 * *(&v147 + 1);
  v51 = v21 * *&v148 + 0.0 + v23 * *(&v148 + 1) + v73 * v149;
  v52 = v153 * *&v145 + 0.0 + v154 * *(&v145 + 1) + v155 * *&v146;
  v53 = v153 * *(&v146 + 1) + 0.0 + v154 * *&v147 + v155 * *(&v147 + 1);
  v54 = v153 * *&v148 + 0.0 + v154 * *(&v148 + 1) + v155 * v149;
  v55 = v156 * *&v145 + 0.0 + v157 * *(&v145 + 1) + v158 * *&v146;
  v56 = v156 * *(&v146 + 1) + 0.0 + v157 * *&v147 + v158 * *(&v147 + 1);
  v57 = v156 * *&v148 + 0.0 + v157 * *(&v148 + 1) + v158 * v149;
  v58 = v49 * 0.0 + 0.0;
  v116[0] = v49 + 0.0 + v50 * 0.0 + v51 * 0.0;
  v116[1] = v50 + v58 + v51 * 0.0;
  v116[2] = v51 + v58 + v50 * 0.0;
  v116[3] = 0.0 - v49 * v24 - v50 * v25 - v51 * v26;
  v59 = v52 * 0.0 + 0.0;
  v116[4] = v52 + 0.0 + v53 * 0.0 + v54 * 0.0;
  v116[5] = v53 + v59 + v54 * 0.0;
  v116[6] = v54 + v59 + v53 * 0.0;
  v116[7] = 0.0 - v52 * v24 - v53 * v25 - v54 * v26;
  v60 = v55 * 0.0 + 0.0;
  v116[8] = v55 + 0.0 + v56 * 0.0 + v57 * 0.0;
  v116[9] = v56 + v60 + v57 * 0.0;
  v116[10] = v57 + v60 + v56 * 0.0;
  v116[11] = 0.0 - v55 * v24 - v56 * v25 - v57 * v26;
  v110 = off_285231258;
  if (4 * v141)
  {
    operator new[]();
  }

  v112 = 4;
  v113 = v141;
  v114 = 0;
  v115 = 32 * v141;
  v110 = &unk_2852319A0;
  v111 = 0;
  v188 = 0;
  v189 = 8 * v141;
  v185 = &unk_285231338;
  v186 = v140;
  LODWORD(v187) = 1;
  HIDWORD(v187) = v141;
  v183 = 0;
  v184 = v189;
  v179 = &unk_285231338;
  v180 = 0;
  v181 = 1;
  v182 = v141;
  memcpy(0, v140, v189);
  v179 = off_285231258;
  if (v180 && v183 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v185 = off_285231258;
  if (v186 && v188 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v61 = 8 * v141;
  v188 = 0;
  v189 = v61;
  v185 = &unk_285231338;
  v186 = &v140[v61];
  LODWORD(v187) = 1;
  HIDWORD(v187) = v141;
  v62 = 8 * v113;
  v181 = 1;
  v182 = v113;
  v183 = 0;
  v184 = v62;
  v179 = &unk_285231338;
  v180 = v111 + v62;
  if (v62 < v61)
  {
    operator new[]();
  }

  v181 = 1;
  v182 = v141;
  memcpy((v111 + v62), &v140[v61], v61);
  v179 = off_285231258;
  if (v180 && v183 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v185 = off_285231258;
  if (v186 && v188 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v63 = 8 * v141;
  v188 = 0;
  v189 = v63;
  v185 = &unk_285231338;
  v186 = &v140[16 * v141];
  LODWORD(v187) = 1;
  HIDWORD(v187) = v141;
  v181 = 1;
  v182 = v113;
  v183 = 0;
  v184 = 8 * v113;
  v179 = &unk_285231338;
  v180 = v111 + 16 * v113;
  if (v184 < v63)
  {
    operator new[]();
  }

  v181 = 1;
  v182 = v141;
  memcpy((v111 + 16 * v113), &v140[16 * v141], v63);
  v179 = off_285231258;
  if (v180 && v183 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v185 = off_285231258;
  if (v186 && v188 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  v64 = v113;
  if (v113)
  {
    v65 = 24 * v113;
    do
    {
      *(v111 + v65) = 0x3FF0000000000000;
      v65 += 8;
      --v64;
    }

    while (v64);
  }

  MatrixMxN<3u,4u,double>::operator*(&v185, &v117, &v110);
  v107 = HIDWORD(v187);
  v108 = v188;
  v109 = v189;
  v105[0] = &unk_2852312D8;
  v105[1] = v186;
  v106 = 3;
  GeomUtils::ToNonHomg(v105, &v103);
  MatrixMxN<3u,4u,double>::operator*(&v185, v116, &v110);
  v100 = HIDWORD(v187);
  v101 = v188;
  v102 = v189;
  v98[0] = &unk_2852312D8;
  v98[1] = v186;
  v99 = 3;
  GeomUtils::ToNonHomg(v98, &v97);
  v91 = off_285231258;
  if (v104)
  {
    operator new[]();
  }

  v93 = 1;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v91 = &unk_285231338;
  v92 = 0;
  v87 = 1;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v85 = &unk_285231338;
  v86 = 0;
  v180 = 0;
  v181 = 1;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v80[1] = 0;
  v83 = 0;
  v84 = 0;
  v185 = off_285231258;
  v186 = 0;
  v189 = 0;
  v188 = 0;
  v80[0] = &unk_285231338;
  v81 = 1;
  v82 = 0;
  v187 = 0;
  v179 = off_285231258;
  Matrix<double>::Matrix(&v179, v80);
}

void sub_2403CBDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  Matrix<double>::~Matrix(v67 - 240);
  if (a35 && a37 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a40 && a42 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a45 && a47 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a50 && a52 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a55 && a57 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a60 && a62 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a65 && a67 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x2F0] = off_285231258;
  if (STACK[0x2F8] && LOBYTE(STACK[0x308]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x410] = off_285231258;
  if (STACK[0x418] && LOBYTE(STACK[0x428]) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  STACK[0x438] = off_285231258;
  if (STACK[0x440])
  {
    if (LOBYTE(STACK[0x450]) == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(a1);
}

double MatrixMxN<3u,3u,double>::operator*<3u,3u,3u,void>(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[6];
  v10 = a3[7];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a3[4];
  v14 = a3[5];
  v15 = *a2 * v6 + 0.0 + v4 * v13 + v11 * v10;
  *a1 = *a2 * *a3 + 0.0 + v4 * v7 + v11 * v9;
  a1[1] = v15;
  v16 = v3 * v8 + 0.0 + v4 * v14;
  v17 = a3[8];
  v18 = v16 + v11 * v17;
  v19 = a2[4];
  v20 = a2[5];
  a1[2] = v18;
  a1[3] = v12 * v5 + 0.0 + v19 * v7 + v20 * v9;
  a1[4] = v12 * v6 + 0.0 + v19 * v13 + v20 * v10;
  a1[5] = v12 * v8 + 0.0 + v19 * v14 + v20 * v17;
  v21 = a2[6];
  v22 = a2[7];
  v23 = v21 * v5 + 0.0 + v22 * v7;
  v24 = a2[8];
  a1[6] = v23 + v24 * v9;
  a1[7] = v21 * v6 + 0.0 + v22 * v13 + v24 * v10;
  result = v21 * v8 + 0.0 + v22 * v14 + v24 * v17;
  a1[8] = result;
  return result;
}

uint64_t MatrixNxPts<1u,unsigned int>::MatrixNxPts(uint64_t result, int a2)
{
  *result = off_285231218;
  if (a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = &unk_285231318;
  return result;
}

_DWORD *diluteInliers(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a2 / a3;
  if (v4 <= 1.0)
  {
    v7 = result[5];
    if (v7 == *(a4 + 20))
    {
      v8 = result[4];
      v9 = *(a4 + 8);
      if (*(a4 + 32) < 4 * v8 * v7)
      {
        if (v9)
        {
          if (*(a4 + 24) == 1)
          {
            MEMORY[0x245CBFC90](*(a4 + 8));
          }
        }

        operator new[]();
      }

      *(a4 + 16) = v8;
      *(a4 + 20) = v7;
      v10 = *(result + 1);

      return memcpy(v9, v10, 4 * v8 * v7);
    }

    else if (a3)
    {
      v11 = 0;
      while (v11 < (result[5] * result[4]))
      {
        if (v11 >= (*(a4 + 20) * *(a4 + 16)))
        {
LABEL_24:
          __assert_rtn("operator()", "Matrix.hpp", 132, "index < m_rows * m_cols");
        }

        *(*(a4 + 8) + 4 * v11) = *(*(result + 1) + 4 * v11);
        if (a3 == ++v11)
        {
          return result;
        }
      }

LABEL_23:
      __assert_rtn("operator()", "Matrix.hpp", 138, "index < m_rows * m_cols");
    }
  }

  else if (a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = (v4 * v5);
      if (result[5] * result[4] <= v6)
      {
        goto LABEL_23;
      }

      if (v5 >= (*(a4 + 20) * *(a4 + 16)))
      {
        goto LABEL_24;
      }

      *(*(a4 + 8) + 4 * v5++) = *(*(result + 1) + 4 * v6);
      if (a3 == v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t MatrixNxPts<3u,double>::MatrixNxPts(uint64_t result, int a2)
{
  *result = off_285231258;
  if (a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = 3;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = &unk_2852312D8;
  return result;
}

uint64_t MatrixNxPts<1u,double>::MatrixNxPts(uint64_t result, int a2)
{
  *result = off_285231258;
  if (a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = &unk_285231338;
  return result;
}

double MatrixNxPts<3u,double>::CopyCols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  v4 = *(a3 + 20);
  if (v3 >= v4 && v4)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(a2 + 20);
      do
      {
        v8 = *(*(a3 + 8) + 4 * v6);
        if (v8 >= v7)
        {
          goto LABEL_20;
        }

        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_19:
          __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
        }

        *(*(a1 + 8) + 8 * v6++) = *(*(a2 + 8) + 8 * v8);
      }

      while (v4 != v6);
      if (v5 != 1)
      {
        v10 = 0;
        v11 = *(a2 + 20);
        v12 = 4 * v4;
        v13 = 8 * v3;
        do
        {
          v14 = *(*(a3 + 8) + v10);
          if (v14 >= v11)
          {
            goto LABEL_20;
          }

          if (v9 == 1)
          {
            goto LABEL_19;
          }

          *(*(a1 + 8) + v13) = *(*(a2 + 8) + 8 * v14 + 8 * v11);
          v10 += 4;
          v13 += 8;
        }

        while (v12 != v10);
        v15 = *(a2 + 20);
        if (v5 >= 3)
        {
          v16 = 0;
          for (i = 8 * (2 * v3); ; i += 8)
          {
            v18 = *(*(a3 + 8) + v16);
            if (v18 >= v15)
            {
              break;
            }

            if (v9 < 3)
            {
              goto LABEL_19;
            }

            result = *(*(a2 + 8) + 8 * v18 + 16 * v15);
            *(*(a1 + 8) + i) = result;
            v16 += 4;
            if (v12 == v16)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_20:
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  return result;
}

double MatrixNxPts<1u,double>::CopyCols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + 20) >= v3 && v3 != 0)
  {
    if (*(a2 + 16))
    {
      v5 = 0;
      v6 = *(a2 + 20);
      while (1)
      {
        v7 = *(*(a3 + 8) + 4 * v5);
        if (v7 >= v6)
        {
          break;
        }

        if (!*(a1 + 16))
        {
          __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
        }

        result = *(*(a2 + 8) + 8 * v7);
        *(*(a1 + 8) + 8 * v5++) = result;
        if (v3 == v5)
        {
          return result;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  return result;
}

uint64_t GMCAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a5 + 608) == 1)
  {
    v7 = *(a5 + 416) - *(a5 + 48);
    *(a7 + 72) = vsubq_f64(*(a5 + 400), *(a5 + 32));
    *(a7 + 88) = v7;
    if ((*(a5 + 573) & 1) == 0)
    {
      v8 = *(a5 + 48) - *(a5 + 104);
      *(a7 + 72) = vsubq_f64(*(a5 + 32), *(a5 + 88));
      *(a7 + 88) = v8;
    }

    GMC_BundleAdjustment(a1);
  }

  *(a7 + 96) = *(a5 + 72) / *(a5 + 80);
  if (a6 != a7)
  {
    *a7 = *a6;
    v9 = *(a6 + 16);
    v10 = *(a6 + 32);
    v11 = *(a6 + 48);
    *(a7 + 64) = *(a6 + 64);
    *(a7 + 32) = v10;
    *(a7 + 48) = v11;
    *(a7 + 16) = v9;
  }

  return 0xFFFFFFFFLL;
}

uint64_t MatrixMxN<3u,4u,double>::operator*(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (*(a3 + 16) == 4)
  {
    v4 = *(a3 + 20);
    *result = off_285231258;
    if (v4)
    {
      operator new[]();
    }

    result = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 3;
    *(v3 + 20) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 24 * v4;
  }

  else
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_285231258;
    *(result + 24) = 0;
  }

  return result;
}

void MatrixNxPts<4u,double>::~MatrixNxPts(uint64_t a1)
{
  *a1 = off_285231258;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x245CBFC90](v2, 0x1000C8000313F17);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x245CBFCB0);
}

uint64_t MatrixNxPts<4u,double>::~MatrixNxPts(uint64_t result)
{
  *result = off_285231258;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x245CBFC90](v1, 0x1000C8000313F17);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void findJasperMisalignment(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if (!*(a1 + 16))
    {
      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }

    if (**(a1 + 8) != 0.0)
    {
      if (*(a2 + 16))
      {
        v2 = *(a2 + 20) == 0;
      }

      else
      {
        v2 = 1;
      }

      if (!v2)
      {
        operator new();
      }

      __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
    }
  }
}

void sub_2403CD0D8(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void GMC_Validation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 20);
  v19[0] = off_285231258;
  if (v5)
  {
    operator new[]();
  }

  v20 = 3;
  v21 = 0;
  v22 = 0;
  v23 = 24 * v5;
  v19[0] = &unk_2852312D8;
  v19[1] = 0;
  v6 = *(a2 + 20);
  v14[0] = off_285231258;
  if (v6)
  {
    operator new[]();
  }

  v15 = 3;
  v16 = 0;
  v17 = 0;
  v18 = 24 * v6;
  v14[0] = &unk_2852312D8;
  v14[1] = 0;
  if (*(a4 + 573) == 1)
  {
    GMC_Homography(0, v14, a4);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v7[2] = 1;
  v8 = 0;
  v9 = 0;
  v7[0] = &unk_285231338;
  v7[1] = 0;
  calcProjectionDists(v19, v14, a4, v7);
}

void sub_2403CE00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a47);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a52);
  _Unwind_Resume(a1);
}

void _GMC_Params::_calib::_cam::_distLUT::_distLUT(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v2;
  Matrix<double>::Matrix(a1 + 8, (a2 + 2));
}

void sub_2403CE16C(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(v3 + 128);
  MatrixNxPts<1u,double>::~MatrixNxPts(v4);
  MatrixNxPts<1u,double>::~MatrixNxPts(v2);
  MatrixNxPts<9u,double>::~MatrixNxPts(v1);
  _Unwind_Resume(a1);
}

void _GMC_Params::_calib::~_calib(_GMC_Params::_calib *this)
{
  _GMC_Params::_calib::_cam::_distLUT::_nonradial::~_nonradial((this + 168));
  *(this + 16) = off_285231258;
  if (*(this + 17) && *(this + 152) == 1)
  {
    MEMORY[0x245CBFC90]();
    *(this + 17) = 0;
    *(this + 20) = 0;
    *(this + 152) = 0;
  }

  *(this + 18) = 0;
}

uint64_t jpc::IFAPullCriteriaRunner::isReadyToPull(jpc::IFAPullCriteriaRunner *this, jpc::IFA_DB *a2, const ADCameraCalibration *a3)
{
  v5 = a3;
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 == v7)
  {
    v11 = 1;
  }

  else
  {
    v8 = v6 + 8;
    do
    {
      v9 = (*(**(v8 - 8) + 16))(*(v8 - 8), a2, v5);
      if (v8 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      v8 += 8;
    }

    while ((v10 & 1) != 0);
    v11 = v9;
  }

  return v11;
}

void jpc::IFAPullCriteriaRunner::~IFAPullCriteriaRunner(jpc::IFAPullCriteriaRunner *this)
{
  *this = &unk_2852319C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x245CBFCB0);
}

{
  *this = &unk_2852319C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_2852319C0;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

__n128 jpc::IFAPullCriteriaRunner::IFAPullCriteriaRunner(void *a1, __n128 *a2)
{
  *a1 = &unk_2852319C0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2852319C0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t jpc::PORPreprocessorFilterBlock::process(jpc::PORPreprocessorFilterBlock *this, float32x4_t *a2, ADJasperPearlTelemetryData *a3)
{
  v5 = a3;
  if (jpc::PORPreprocessorFilterBlock::vioChangeWithinFrameFilter(this, a2, v5) && jpc::PORPreprocessorFilterBlock::vioChangeBetweenFramesFilter(this, a2, v5) && jpc::PORPreprocessorFilterBlock::jasperReflectionsFrameFilter(this, a2, v5))
  {
    v6 = 1;
  }

  else
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC PreprocessorFilterBlock: Current JPC frame is to be discarded.", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

BOOL jpc::PORPreprocessorFilterBlock::vioChangeWithinFrameFilter(jpc::PORPreprocessorFilterBlock *this, float32x4_t *a2, ADJasperPearlTelemetryData *a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v64 = vsubq_f32(a2[5], a2[15]);
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankTranslationX:?];
  HIDWORD(v6) = v64.i32[1];
  LODWORD(v6) = v64.i32[1];
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankTranslationY:v6];
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankTranslationZ:COERCE_DOUBLE(__PAIR64__(v64.u32[1], v64.u32[2]))];
  f32 = a2[2].f32;
  v80 = vld4q_f32(f32);
  v8 = a2[12];
  v9 = a2[13];
  v10 = a2[14];
  memset(buf, 0, sizeof(buf));
  *v77 = 0u;
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80.val[0], v8.f32[0]), v80.val[1], *v8.f32, 1), v80.val[2], v8, 2), v80.val[3], v8, 3);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80.val[0], v9.f32[0]), v80.val[1], *v9.f32, 1), v80.val[2], v9, 2), v80.val[3], v9, 3);
  *&buf[8] = v11.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80.val[0], v10.f32[0]), v80.val[1], *v10.f32, 1), v80.val[2], v10, 2), v80.val[3], v10, 3);
  *&buf[24] = v12.i32[2];
  *buf = v11.i64[0];
  *&buf[16] = v12.i64[0];
  *&v77[8] = v13.i32[2];
  *v77 = v13.i64[0];
  [ADUtils calcRotationAngle:buf];
  v66 = v14;
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankRotationX:*v14.i64];
  HIDWORD(v15) = v66.i32[1];
  LODWORD(v15) = v66.i32[1];
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankRotationY:v15];
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankRotationZ:COERCE_DOUBLE(__PAIR64__(v66.u32[1], v66.u32[2]))];
  _Q1 = vabsq_f32(v64);
  v17 = _Q1.f32[1];
  _S9 = _Q1.f32[2];
  v65 = _Q1.f32[0];
  __asm { FMLA            S0, S9, V1.S[2] }

  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankTranslation:sqrtf(_S0)];
  v81 = vld4q_f32(f32);
  v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81.val[0], COERCE_FLOAT(*&a2[12])), v81.val[1], *a2[12].f32, 1), v81.val[2], a2[12], 2), v81.val[3], a2[12], 3);
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81.val[0], COERCE_FLOAT(*&a2[13])), v81.val[1], *a2[13].f32, 1), v81.val[2], a2[13], 2), v81.val[3], a2[13], 3);
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81.val[0], COERCE_FLOAT(*&a2[14])), v81.val[1], *a2[14].f32, 1), v81.val[2], a2[14], 2), v81.val[3], a2[14], 3);
  v27 = *v24.i32;
  v28 = v25.f32[1];
  v29 = vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *v25.f32);
  v30 = v26.f32[2];
  v31 = (*v24.i32 + 0.0 + v25.f32[1] + v26.f32[2] + -1.0) * 0.5;
  v32 = 1.0;
  if (v31 <= 1.0)
  {
    v32 = (*v24.i32 + 0.0 + v25.f32[1] + v26.f32[2] + -1.0) * 0.5;
    if (v31 < -1.0)
    {
      v32 = -1.0;
    }
  }

  v33 = v26.f32[1];
  v60 = v81.val[1];
  v34 = vcvtq_f64_f32(v29);
  v59 = v34;
  v34.f64[0] = v25.f32[2];
  v62 = v34;
  v61 = vcvtq_f64_f32(__PAIR64__(v24.u32[1], v26.u32[0]));
  v63 = acos(v32);
  v35 = sin(v63);
  v41 = v35 + v35;
  if (v41 <= 0.0000001)
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v73 = 0.0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    memset(v68, 0, sizeof(v68));
    v36.f64[0] = v28 + -1.0;
    v37.f64[0] = v30 + -1.0;
    *&buf[8] = v61.n128_u64[1];
    *buf = v27 + -1.0;
    *&buf[16] = v59;
    *&v77[24] = v60.i64[0];
    v78 = v30 + -1.0;
    *&v77[16] = v61.n128_u64[0];
    *v77 = v28 + -1.0;
    *&v77[8] = v62.i64[0];
    svd_os(3, buf, v74, v68, &v69, v62, v59, v36, v61, v37, v38, v39, v40);
    *&v49.f64[0] = v70;
    v49.f64[1] = *(&v71 + 1);
    _Q0 = vmulq_n_f64(v49, v63);
    v48 = v63 * v73;
  }

  else
  {
    v42 = COERCE_DOUBLE(*&vsubq_f64(*&v61, v59).f64[1]) / v41;
    _Q0 = vdivq_f64(vsubq_f64(vzip1q_s64(v62, v61), vzip1q_s64(v60, v59)), vdupq_lane_s64(*&v41, 0));
    _D3 = _Q0.f64[1];
    __asm { FMLA            D1, D3, V0.D[1] }

    v46 = v63 / sqrt(_D1 + v42 * v42);
    _Q0 = vmulq_n_f64(_Q0, v46);
    v48 = v42 * v46;
  }

  _D3 = _Q0.f64[1];
  __asm { FMLA            D2, D3, V0.D[1] }

  v52 = sqrt(_D2 + v48 * v48) * 1000.0;
  [(ADJasperPearlTelemetryData *)v5 setPearlToLastJasperBankRotation:v52, *&v59, v60.i64[0]];
  v53 = vabsq_f32(v66);
  v54 = fmaxf(fmaxf(v65, v17), _S9);
  v55 = v53.f32[1];
  v67 = v53.f32[0];
  v56 = v53.f32[2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    *&buf[4] = v65;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    *&buf[24] = _S9;
    *v77 = 2048;
    *&v77[2] = v67;
    *&v77[10] = 2048;
    *&v77[12] = v55;
    *&v77[20] = 2048;
    *&v77[22] = v56;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC PreprocessorFilterBlock: Pearl-Jasper frame translation: (%f, %f, %f), rotation: (%f, %f, %f).", buf, 0x3Eu);
  }

  v57 = v54 <= *(this + 4) && fmaxf(fmaxf(v67, v55), v56) <= *(this + 5);

  return v57;
}

BOOL jpc::PORPreprocessorFilterBlock::vioChangeBetweenFramesFilter(jpc::PORPreprocessorFilterBlock *this, float32x4_t *a2, ADJasperPearlTelemetryData *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = vsubq_f32(a2[5], a2[9]);
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesTranslationX:?];
  HIDWORD(v6) = v22.i32[1];
  LODWORD(v6) = v22.i32[1];
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesTranslationY:v6];
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesTranslationZ:COERCE_DOUBLE(__PAIR64__(v22.u32[1], v22.u32[2]))];
  f32 = a2[6].f32;
  v30 = vld4q_f32(f32);
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  *buf_12 = 0;
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.val[0], v8.f32[0]), v30.val[1], *v8.f32, 1), v30.val[2], v8, 2), v30.val[3], v8, 3);
  v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.val[0], v9.f32[0]), v30.val[1], *v9.f32, 1), v30.val[2], v9, 2), v30.val[3], v9, 3);
  *&buf[8] = v11.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.val[0], v10.f32[0]), v30.val[1], *v10.f32, 1), v30.val[2], v10, 2), v30.val[3], v10, 3);
  v26 = v12.u32[2];
  *buf = v11.i64[0];
  *&buf_12[4] = v12.i64[0];
  v28 = v13.u32[2];
  v27 = v13.i64[0];
  [ADUtils calcRotationAngle:buf];
  v23 = v14;
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesRotationX:*v14.i64];
  HIDWORD(v15) = v23.i32[1];
  LODWORD(v15) = v23.i32[1];
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesRotationY:v15];
  [(ADJasperPearlTelemetryData *)v5 setMotionBetweenFramesRotationZ:COERCE_DOUBLE(__PAIR64__(v23.u32[1], v23.u32[2]))];
  v16 = vabsq_f32(v22);
  v17 = vabsq_f32(v23);
  v18 = fminf(fminf(v16.f32[0], v16.f32[1]), v16.f32[2]);
  v19 = fminf(fminf(v17.f32[0], v17.f32[1]), v17.f32[2]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v18;
    *buf_12 = 2048;
    *&buf_12[2] = v19;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC PreprocessorFilterBlock: Min translation, rotation: (%f, %f).", buf, 0x16u);
  }

  v20 = v18 >= *(this + 2) && v19 >= *(this + 3);

  return v20;
}

BOOL jpc::PORPreprocessorFilterBlock::jasperReflectionsFrameFilter(jpc::PORPreprocessorFilterBlock *this, id *a2, ADJasperPearlTelemetryData *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (v6 < [a2[22] length])
  {
    v8 += (*([a2[22] flags] + 4 * v6) >> 9) & 1;
    v7 += (*([a2[22] flags] + 4 * v6++) >> 11) & 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = v8;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC PreprocessorFilterBlock: Jasper spots on reflective surfaces: %d.", &v11, 8u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = v7;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC PreprocessorFilterBlock: Jasper spots with glare: %d.", &v11, 8u);
  }

  [(ADJasperPearlTelemetryData *)v5 setIsAssignedJasperReflectionsFrameFilter:1];
  [(ADJasperPearlTelemetryData *)v5 setNumJasperSpotsFlaggedAsReflectiveSurface:v8];
  [(ADJasperPearlTelemetryData *)v5 setNumJasperSpotsFlaggedAsGlare:v7];
  v9 = *(this + 7) >= v8 && *(this + 6) >= v7;

  return v9;
}

__n128 jpc::PORPreprocessorFilterBlock::PORPreprocessorFilterBlock(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2852319E8;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_2852319E8;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

uint64_t jpc::PORPreprocessorFilterBlock::getRotationAnglesDelta(jpc::PORPreprocessorFilterBlock *this, simd_float4x4 a2, simd_float4x4 a3)
{
  a3.columns[3] = vzip1q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[0] = vzip2q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[2] = vzip1q_s32(a2.columns[1], a2.columns[3]);
  a2.columns[1] = vzip2q_s32(a2.columns[1], a2.columns[3]);
  a2.columns[3] = vzip1q_s32(a3.columns[3], a2.columns[2]);
  a2.columns[2] = vzip2q_s32(a3.columns[3], a2.columns[2]);
  a3.columns[3] = vzip1q_s32(a2.columns[0], a2.columns[1]);
  a2.columns[0] = vzip2q_s32(a2.columns[0], a2.columns[1]);
  a2.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[0].f32[0]), a2.columns[2], *a3.columns[0].f32, 1), a3.columns[3], a3.columns[0], 2), a2.columns[0], a3.columns[0], 3);
  a3.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[1].f32[0]), a2.columns[2], *a3.columns[1].f32, 1), a3.columns[3], a3.columns[1], 2), a2.columns[0], a3.columns[1], 3);
  v4[1] = a2.columns[1].u32[2];
  a2.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[2].f32[0]), a2.columns[2], *a3.columns[2].f32, 1), a3.columns[3], a3.columns[2], 2), a2.columns[0], a3.columns[2], 3);
  v4[3] = a3.columns[0].u32[2];
  v4[0] = a2.columns[1].i64[0];
  v4[2] = a3.columns[0].i64[0];
  v4[5] = a2.columns[3].u32[2];
  v4[4] = a2.columns[3].i64[0];
  return [ADUtils calcRotationAngle:v4];
}

float jpc::PORPreprocessorFilterBlock::getRotationDeltaMagnitude(jpc::PORPreprocessorFilterBlock *this, simd_float4x4 a2, simd_float4x4 a3)
{
  a3.columns[3] = vzip1q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[0] = vzip2q_s32(a2.columns[0], a2.columns[2]);
  a2.columns[2] = vzip1q_s32(a2.columns[1], a2.columns[3]);
  a2.columns[1] = vzip2q_s32(a2.columns[1], a2.columns[3]);
  a2.columns[3] = vzip1q_s32(a3.columns[3], a2.columns[2]);
  a2.columns[2] = vzip2q_s32(a3.columns[3], a2.columns[2]);
  a3.columns[3] = vzip1q_s32(a2.columns[0], a2.columns[1]);
  a2.columns[0] = vzip2q_s32(a2.columns[0], a2.columns[1]);
  v3 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[0].f32[0]), a2.columns[2], *a3.columns[0].f32, 1), a3.columns[3], a3.columns[0], 2), a2.columns[0], a3.columns[0], 3);
  a3.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[1].f32[0]), a2.columns[2], *a3.columns[1].f32, 1), a3.columns[3], a3.columns[1], 2), a2.columns[0], a3.columns[1], 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2.columns[3], a3.columns[2].f32[0]), a2.columns[2], *a3.columns[2].f32, 1), a3.columns[3], a3.columns[2], 2), a2.columns[0], a3.columns[2], 3);
  v4 = *v3.i32;
  v5.i32[0] = v8.i32[1];
  v6 = __PAIR64__(v3.u32[1], v8.u32[0]);
  v7 = a3.columns[0].f32[1];
  *v8.f32 = vzip1_s32(*&vextq_s8(v3, v3, 8uLL), *a3.columns[0].f32);
  v9 = v8.f32[2];
  *a3.columns[2].i64 = (*v3.i32 + 0.0 + a3.columns[0].f32[1] + v8.f32[2] + -1.0) * 0.5;
  v10 = 1.0;
  if (*a3.columns[2].i64 <= 1.0)
  {
    v10 = (*v3.i32 + 0.0 + a3.columns[0].f32[1] + v8.f32[2] + -1.0) * 0.5;
    if (*a3.columns[2].i64 < -1.0)
    {
      v10 = -1.0;
    }
  }

  *v5.i64 = *v5.i32;
  v35 = v5;
  v11 = vcvtq_f64_f32(*v8.f32);
  v34 = v11;
  v11.f64[0] = a3.columns[0].f32[2];
  v37 = v11;
  v36 = vcvtq_f64_f32(v6);
  v38 = acos(v10);
  v12 = sin(v38);
  v18 = v12 + v12;
  if (v18 <= 0.0000001)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v44 = 0.0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v13.f64[0] = v7 + -1.0;
    v14.n128_f64[0] = v9 + -1.0;
    v47[0] = v4 + -1.0;
    v47[1] = v36.f64[1];
    v48 = v34;
    v52 = v35.i64[0];
    v53 = v9 + -1.0;
    v49 = v7 + -1.0;
    v50 = v37.i64[0];
    v51 = v36.f64[0];
    svd_os(3, v47, v45, v39, &v40, v37, v36, v13, v14, v34, v15, v16, v17);
    *&v30.f64[0] = v41;
    v30.f64[1] = *(&v42 + 1);
    _Q0 = vmulq_n_f64(v30, v38);
    v29 = v38 * v44;
  }

  else
  {
    v19 = COERCE_DOUBLE(*&vsubq_f64(v36, v34).f64[1]) / v18;
    _Q0 = vdivq_f64(vsubq_f64(vzip1q_s64(v37, v36), vzip1q_s64(v35, v34)), vdupq_lane_s64(*&v18, 0));
    _D3 = _Q0.f64[1];
    __asm { FMLA            D1, D3, V0.D[1] }

    v27 = v38 / sqrt(_D1 + v19 * v19);
    _Q0 = vmulq_n_f64(_Q0, v27);
    v29 = v19 * v27;
  }

  _D3 = _Q0.f64[1];
  __asm { FMLA            D2, D3, V0.D[1] }

  return sqrt(_D2 + v29 * v29) * 1000.0;
}

void sub_2403CF80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADStereoV2Executor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403D0328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v7);

  _Unwind_Resume(a1);
}

void sub_2403D0758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403D0DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t GMC_AmbiguityTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 20))
  {
    operator new[]();
  }

  result = 0;
  *a5 = 1;
  return result;
}

void sub_2403D0FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MatrixNxPts<9u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

uint64_t calcEpipolarDistances(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = *(a1 + 20);
  if (v4)
  {
    if (*(a1 + 16) && *(a2 + 16))
    {
      v5 = 0;
      v6 = *a3;
      v7 = a3[1];
      v8 = a3[2];
      v9 = a3[3];
      v10 = a3[4];
      v11 = a3[5];
      v12 = a3[6];
      v13 = a3[7];
      v14 = a3[8];
      v15 = v4;
      v16 = 2 * v4;
      v17 = *(a2 + 20);
      v18 = v17;
      v19 = v4;
      v20 = 16 * v17;
      v21 = 8 * v17;
      v22 = 8 * v19;
      v23 = 8 * v18;
      while (v23 != v5)
      {
        v24 = (*(a1 + 8) + v5);
        v25 = v24[v16];
        v26 = v24[v15];
        v27 = v8 * *v24 + 0.0 + v11 * v26 + v14 * v25;
        v28 = v7 * *v24 + 0.0 + v10 * v26 + v13 * v25;
        v29 = v6 * *v24 + 0.0 + v9 * v26 + v12 * v25;
        *(*(a4 + 8) + v5) = fabs(v29 * *(*(a2 + 8) + v5) + 0.0 + v28 * *(*(a2 + 8) + v5 + v21) + v27 * *(*(a2 + 8) + v5 + v20)) / sqrt(v28 * v28 + v29 * v29);
        v5 += 8;
        if (v22 == v5)
        {
          return 0;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  return 0;
}

void sub_2403D2A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADVisualDepthBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403D3760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jpc::IFADepthCoverageCriteria::apply(jpc::IFADepthCoverageCriteria *this, id *a2, const ADCameraCalibration *a3)
{
  v4 = a3;
  if (a2)
  {
    jpc::IFA_DB::getAggPoints(a2, v7);
    if (*&v7[8] != *v7)
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFADepthCoverageCriteria: no correspodences in aggData", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFADepthCoverageCriteria: No data to pull.", buf, 2u);
    }

    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (*v7)
    {
      *&v7[8] = *v7;
      operator delete(*v7);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFADepthCoverageCriteria: ifaDB is NULL", v7, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFADepthCoverageCriteria: No data to pull.", v7, 2u);
    }
  }

  return 0;
}

void sub_2403D3EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  jpc::IIFABlock::AggregatedData::~AggregatedData(&a13);

  _Unwind_Resume(a1);
}

uint64_t jpc::IFAJPtsIDCoverageCriteria::apply(jpc::IFAJPtsIDCoverageCriteria *this, id *a2, const ADCameraCalibration *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    jpc::IFA_DB::getAggPoints(a2, &v20);
    v6 = v20;
    v7 = *(&v20 + 1) - v20;
    if (*(&v20 + 1) != v20)
    {
      bzero(buf, 0x900uLL);
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v6 + 56 * v8;
        if (*(v11 + 48) != 0.0)
        {
          v12 = *(v11 + 52) + 144 * *(v11 + 53);
          if (v12 >= 0x240)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *v19 = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAJPtsIDCoverageCriteria: bad jasper spot id", v19, 2u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              v16 = MEMORY[0x277D86220];
LABEL_25:
              v17 = v19;
              goto LABEL_26;
            }

LABEL_27:
            v13 = 0;
            goto LABEL_28;
          }

          if (!*&buf[4 * v12])
          {
            ++v9;
            *&buf[4 * v12] = 1;
          }
        }

        v8 = v10++;
        if (0x6DB6DB6DB6DB6DB7 * (v7 >> 3) <= v8)
        {
          v14 = v9;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
          [*a2 setNumOfUniqueTOFSpots:v15];

          if (*(this + 1) < v14)
          {
            v13 = 1;
            goto LABEL_28;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            v16 = MEMORY[0x277D86220];
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJPtsIDCoverageCriteria: no pearlJasper correspodences in aggData", buf, 2u);
    }

    v13 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = MEMORY[0x277D86220];
      v17 = buf;
LABEL_26:
      _os_log_impl(&dword_2402F6000, v16, OS_LOG_TYPE_DEFAULT, "IFAJPtsIDCoverageCriteria: No data to pull.", v17, 2u);
      goto LABEL_27;
    }

LABEL_28:
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      *(&v20 + 1) = v20;
      operator delete(v20);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAJPtsIDCoverageCriteria: ifaDB is NULL", buf, 2u);
    }

    v13 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAJPtsIDCoverageCriteria: No data to pull.", buf, 2u);
      v13 = 0;
    }
  }

  return v13;
}

void sub_2403D4268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  jpc::IIFABlock::AggregatedData::~AggregatedData(va);
  _Unwind_Resume(a1);
}

uint64_t jpc::IFAPearlFovCoverageCriteria::apply(jpc::IFAPearlFovCoverageCriteria *this, id *a2, const ADCameraCalibration *a3)
{
  v5 = a3;
  if (a2)
  {
    AggPoints = jpc::IFA_DB::getAggPoints(a2, buf);
    if (v17 == __p)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPearlFovCoverageCriteria: no pearl correspodences in aggPoints", v14, 2u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v8 = MEMORY[0x277D86220];
        goto LABEL_18;
      }
    }

    else
    {
      [(ADCameraCalibration *)v5 referenceDimensions];
      [(ADCameraCalibration *)v5 referenceDimensions];
      v7 = *(this + 2) * *(this + 1);
      if (!v7)
      {
        if (v17 != __p)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 4);
          if (v11 <= 1)
          {
            v11 = 1;
          }

          v12 = __p + 8;
          do
          {
            v12 += 48;
            --v11;
          }

          while (v11);
        }

        v9 = 1;
        v10 = __p;
        if (!__p)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (v7 != 1)
      {
        if (!(v7 >> 61))
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 4) >= *(this + 3))
      {
        v9 = 1;
        v10 = __p;
        if (!__p)
        {
LABEL_34:
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_36;
        }

LABEL_33:
        v17 = v10;
        operator delete(v10);
        goto LABEL_34;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPearlFovCoverageCriteria: No data to pull due to aggPoints.pearlCorrespondences.size() < m_minPtsPerBin.", v14, 2u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        v8 = MEMORY[0x277D86220];
LABEL_18:
        _os_log_impl(&dword_2402F6000, v8, OS_LOG_TYPE_DEFAULT, "IFAPearlFovCoverageCriteria: No data to pull.", v14, 2u);
      }
    }

    v9 = 0;
    v10 = __p;
    if (!__p)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IFAPearlFovCoverageCriteria: ifaDB is NULL", buf, 2u);
  }

  v9 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFAPearlFovCoverageCriteria: No data to pull.", buf, 2u);
    v9 = 0;
  }

LABEL_36:

  return v9;
}

void sub_2403D4744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  jpc::IIFABlock::AggregatedData::~AggregatedData(va);

  _Unwind_Resume(a1);
}

uint64_t jpc::IFADepthCoverageCriteria::IFADepthCoverageCriteria(uint64_t this, int a2, int a3, float a4)
{
  *this = &unk_285231A10;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  return this;
}

{
  *this = &unk_285231A10;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = a4;
  return this;
}

void *jpc::IFAJPtsIDCoverageCriteria::IFAJPtsIDCoverageCriteria(void *this, uint64_t a2)
{
  *this = &unk_285231A38;
  this[1] = a2;
  return this;
}

{
  *this = &unk_285231A38;
  this[1] = a2;
  return this;
}

void *jpc::IFAPearlFovCoverageCriteria::IFAPearlFovCoverageCriteria(void *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *this = &unk_285231A60;
  this[1] = a2;
  this[2] = a3;
  this[3] = a4;
  return this;
}

{
  *this = &unk_285231A60;
  this[1] = a2;
  this[2] = a3;
  this[3] = a4;
  return this;
}

void sub_2403D52C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a26);

  _Unwind_Resume(a1);
}

void sub_2403D5548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void jpc::PORIFABlock::pull(ADJasperPearlInFieldCalibrationInterSessionData *a1@<X1>, const ADCameraCalibration *a2@<X2>, void *a3@<X8>)
{
  v6 = a1;
  v7 = a2;
  if (v6)
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_Block: invalid params", v8, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
}

void jpc::PORIFABlock::pullAndErase(ADJasperPearlInFieldCalibrationInterSessionData *a1@<X1>, const ADCameraCalibration *a2@<X2>, ADJasperPearlTelemetryData *a3@<X3>, void *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (v8)
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_Block: invalid params", buf, 2u);
  }

  *a4 = 0;
  a4[1] = 0;
}

void jpc::PORIFABlock::processTelemetryData(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 setIsAssignedIFABlock:1];
    [v7 setPearlCalibSetSize:0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 4)];
    [v7 setPearlJapserCalibSetSize:0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3)];
    LODWORD(v8) = *(a2[3] + 36);
    [v7 setPearlTemperature:v8];
    [v7 setNumOfAggregatedFrames:{objc_msgSend(v15, "numOfIFAFramesCurrentExecution")}];
    [v15 lastIFAFrameTimestampCurrentExecution];
    v10 = v9;
    [v15 firstIFAFrameTimestampCurrentExecution];
    [v7 setIntervalBetweenIFAFrames:v10 - v11];
    v12 = [v15 minIRCamTemperatureCurrentExecution];
    [v7 setMinIRCamTemperature:v12];

    v13 = [v15 maxIRCamTemperatureCurrentExecution];
    [v7 setMaxIRCamTemperature:v13];

    v14 = [v15 irCamFOVCoveragePercent];
    [v14 doubleValue];
    [v7 setIrCamFOVCoveragePercent:?];

    [v15 setNumOfIFAFramesCurrentExecution:0];
    [v15 setFirstIFAFrameTimestampCurrentExecution:0.0];
    [v15 setLastIFAFrameTimestampCurrentExecution:0.0];
    [v15 setMinIRCamTemperatureCurrentExecution:&unk_28524A978];
    [v15 setMaxIRCamTemperatureCurrentExecution:&unk_28524A988];
    [v15 setIrCamFOVCoveragePercent:&unk_28524A938];
  }
}

void sub_2403D5B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t jpc::PORIFABlock::isReadyToPull(jpc::PORIFABlock *this, ADJasperPearlInFieldCalibrationInterSessionData *a2, const ADCameraCalibration *a3, ADJasperPearlTelemetryData *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v6)
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_Block: invalid params", v10, 2u);
  }

  return 0;
}

void jpc::PORIFABlock::process(jpc::PORIFABlock *this, const jpc::IPreprocessorBlock::JpcPreprocessorOutput *a2, ADJasperPearlInFieldCalibrationInterSessionData *a3, ADJasperPearlTelemetryData *a4)
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_Block: invalid params", v7, 2u);
  }
}

void sub_2403D6268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  jpc::JPCException::~JPCException(&a9);

  _Unwind_Resume(a1);
}

void jpc::PORIFABlock::updateTelemetryInterSessionData(jpc::PORIFABlock *this, const jpc::IPreprocessorBlock::JpcPreprocessorOutput *a2, double a3, ADJasperPearlInFieldCalibrationInterSessionData *a4)
{
  v22 = a4;
  if (![(ADJasperPearlInFieldCalibrationInterSessionData *)v22 numOfIFAFramesCurrentExecution])
  {
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setFirstIFAFrameTimestampCurrentExecution:*(a2 + 6)];
    LODWORD(v18) = *(a2 + 96);
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setMinIRCamTemperatureCurrentExecution:v19];

    LODWORD(v20) = *(a2 + 96);
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setMaxIRCamTemperatureCurrentExecution:v17];
    goto LABEL_7;
  }

  v6 = *(a2 + 96);
  v7 = [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 minIRCamTemperatureCurrentExecution];
  [v7 floatValue];
  v9 = v8;

  if (v6 < v9)
  {
    LODWORD(v10) = *(a2 + 96);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setMinIRCamTemperatureCurrentExecution:v11];
  }

  v12 = *(a2 + 96);
  v13 = [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 maxIRCamTemperatureCurrentExecution];
  [v13 floatValue];
  v15 = v14;

  if (v12 > v15)
  {
    LODWORD(v16) = *(a2 + 96);
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setMaxIRCamTemperatureCurrentExecution:v17];
LABEL_7:
  }

  [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setLastIFAFrameTimestampCurrentExecution:*(a2 + 6)];
  [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setNumOfIFAFramesCurrentExecution:[(ADJasperPearlInFieldCalibrationInterSessionData *)v22 numOfIFAFramesCurrentExecution]+ 1];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(ADJasperPearlInFieldCalibrationInterSessionData *)v22 setIrCamFOVCoveragePercent:v21];
}

void jpc::PORIFABlock::~PORIFABlock(jpc::PORIFABlock *this)
{
  *this = &unk_285231A88;
  *(this + 5) = &unk_2852319C0;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  *(this + 1) = &unk_285231508;
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = *(this + 2);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 2);
    }

    *(this + 3) = v7;
    operator delete(v9);
  }

  JUMPOUT(0x245CBFCB0);
}

{
  *this = &unk_285231A88;
  *(this + 5) = &unk_2852319C0;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  *(this + 1) = &unk_285231508;
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = *(this + 2);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 2);
    }

    *(this + 3) = v7;
    operator delete(v9);
  }
}

{
  *this = &unk_285231A88;
  *(this + 5) = &unk_2852319C0;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  *(this + 1) = &unk_285231508;
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 3);
    v9 = *(this + 2);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 2);
    }

    *(this + 3) = v7;
    operator delete(v9);
  }
}

uint64_t jpc::PORIFABlock::PORIFABlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  *result = &unk_285231A88;
  *(result + 8) = &unk_285231508;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = *a2;
  *(result + 32) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 40) = &unk_2852319C0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = *a3;
  *(result + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(result + 72) = &unk_285231608;
  *(result + 80) = 1;
  *(result + 88) = a4;
  *(result + 96) = a5;
  *(result + 104) = a6;
  return result;
}

{
  *result = &unk_285231A88;
  *(result + 8) = &unk_285231508;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = *a2;
  *(result + 32) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 40) = &unk_2852319C0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = *a3;
  *(result + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(result + 72) = &unk_285231608;
  *(result + 80) = 1;
  *(result + 88) = a4;
  *(result + 96) = a5;
  *(result + 104) = a6;
  return result;
}

void jpc::PORIFABlock::eraseAll(jpc::PORIFABlock *this, void **a2)
{
  if (a2)
  {
    v4 = *a2;

    [v4 resetIFAObjects];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInField_IFA_Block: could not init", v5, 2u);
    }
  }
}

double *FundamentalEpipolarError_precomputeFundamental@<X0>(double *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  v8 = result[4];
  v7 = result[5];
  v9 = -1.0 / *result;
  v10 = v6 / *result;
  v11 = v8 / *result;
  v12 = -1.0 / v3;
  v13 = v5 / v3;
  v14 = v7 / v3;
  v15 = result[6];
  v16 = result[7];
  v17 = result[10];
  v18 = result[11];
  v19 = result[14];
  v20 = result[15];
  v22 = result[8];
  v21 = result[9];
  v23 = result[12];
  v24 = result[13];
  v25 = result[16];
  v26 = result[17];
  v27 = v24 * v19 - v26 * v17;
  v28 = v24 * v20 - v26 * v18;
  v29 = v24 * v25 - v26 * v23;
  v30 = v26 * v15 - v21 * v19;
  v31 = v26 * v16 - v21 * v20;
  v32 = v26 * v22 - v21 * v25;
  v33 = v21 * v17 - v24 * v15;
  v34 = v21 * v18 - v24 * v16;
  v35 = v21 * v23 - v24 * v22;
  v36 = v9 * v27;
  v37 = v9 * v30;
  v38 = v9 * v33;
  v39 = v9 * v28;
  v40 = v9 * v31;
  v41 = v9 * v34;
  v42 = v29 + v11 * v28 + v10 * v27;
  v43 = v32 + v11 * v31 + v10 * v30;
  *a3 = -1.0 / v3 * v36;
  *(a3 + 8) = -1.0 / v3 * v39;
  *(a3 + 16) = -1.0 / v3 * v42;
  *(a3 + 24) = -1.0 / v3 * v37;
  *(a3 + 32) = -1.0 / v3 * v40;
  *(a3 + 40) = -1.0 / v3 * v43;
  *(a3 + 48) = v38 + v7 / v3 * v37 + v36 * (v5 / v3);
  *(a3 + 56) = v41 + v7 / v3 * v40 + v39 * (v5 / v3);
  *(a3 + 64) = v35 + v11 * v34 + v10 * v33 + v7 / v3 * v43 + v42 * (v5 / v3);
  if (a2)
  {
    v44 = v12 * v27;
    v45 = v12 * v28;
    v46 = v12 * v30;
    v47 = v12 * v31;
    v48 = v33 + v14 * v30 + v13 * v27;
    v49 = v34 + v14 * v31 + v13 * v28;
    v50 = 1.0 / v4;
    v51 = v4 * v4;
    v52 = 1.0 / v51;
    v53 = -v6 / v51;
    v54 = -v8 / v51;
    v55 = 1.0 / v3;
    v56 = v3 * v3;
    *(a3 + 72) = v50 * v44;
    *(a3 + 80) = v50 * v46;
    *(a3 + 120) = v52 * v44;
    *(a3 + 128) = v52 * v45;
    *(a3 + 136) = v54 * v45 + v44 * v53;
    *(a3 + 144) = v52 * v46;
    *(a3 + 152) = v52 * v47;
    *(a3 + 160) = v54 * v47 + v46 * v53;
    v57 = -v7 / v56;
    *(a3 + 168) = v52 * v48;
    *(a3 + 176) = v52 * v49;
    *(a3 + 88) = v50 * v48;
    *(a3 + 96) = v55 * v36;
    *(a3 + 104) = v55 * v39;
    *(a3 + 112) = v55 * v42;
    *(a3 + 184) = v54 * v49 + v48 * v53;
    *(a3 + 192) = 1.0 / v56 * v36;
    *(a3 + 200) = 1.0 / v56 * v39;
    *(a3 + 208) = 1.0 / v56 * v42;
    *(a3 + 216) = 1.0 / v56 * v37;
    *(a3 + 224) = 1.0 / v56 * v40;
    v58 = 1.0 / v56 * v43;
    v59 = -v5 / v56;
    *(a3 + 232) = v58;
    *(a3 + 240) = v57 * v37 + v36 * v59;
    *(a3 + 248) = v57 * v40 + v39 * v59;
    *(a3 + 256) = v57 * v43 + v42 * v59;
  }

  return result;
}

const double *FundamentalEpipolarError_ABSVec(const double *result, const double *a2, unsigned int a3, double *a4, float64x2_t *a5)
{
  if (a3 >= 1)
  {
    v5 = a4[1];
    v6 = a4[6];
    v7 = a4[7];
    v8 = a4[8];
    v9 = a4[9];
    v10 = a4[10];
    v11 = a4[11];
    v12 = a4[12];
    v13 = a4[13];
    v14 = a4[14];
    v15 = a4[15];
    v16 = a4[16];
    v17 = a4[17];
    v18 = -1.0 / *a4;
    v19 = a4[2] / *a4;
    v20 = a4[4] / *a4;
    v21 = -1.0 / v5;
    v22 = a4[3] / v5;
    v23 = v13 * v14 - v17 * v10;
    v24 = v13 * v15 - v17 * v11;
    v25 = a4[5] / v5;
    v26 = v13 * v16 - v17 * v12;
    v27 = v17 * v6 - v9 * v14;
    v28 = v17 * v7 - v9 * v15;
    v29 = v17 * v8 - v9 * v16;
    v30 = v9 * v10 - v13 * v6;
    v31 = v9 * v11 - v13 * v7;
    v32 = v9 * v12 - v13 * v8;
    v33 = v18 * v23;
    v34 = v18 * v27;
    v35 = v18 * v24;
    v36 = v18 * v28;
    v37 = v26 + v20 * v24 + v19 * v23;
    v38 = v29 + v20 * v28 + v19 * v27;
    v39 = v32 + v20 * v31 + v19 * v30;
    v40 = v21 * (v18 * v23);
    v41 = v21 * (v18 * v24);
    v42 = v21 * v37;
    v43 = v21 * (v18 * v27);
    v44 = v21 * v36;
    v45 = v21 * v38;
    v46 = v18 * v30 + v25 * v34 + v33 * v22;
    v47 = v18 * v31 + v25 * v36 + v35 * v22;
    v48 = v39 + v25 * v38 + v37 * v22;
    if (a3 <= 3)
    {
      v49 = 0;
LABEL_4:
      v50 = a3 - v49;
      v51 = &a5->f64[v49];
      v52 = (16 * v49) | 8;
      v53 = (result + v52);
      v54 = (a2 + v52);
      do
      {
        v55 = *(v53 - 1);
        v56 = v42 + v41 * *v53 + v40 * v55;
        v57 = v45 + v44 * *v53 + v43 * v55;
        v58 = v48 + v47 * *v53 + v46 * v55 + *v54 * v57 + v56 * *(v54 - 1);
        *v51++ = sqrt(v58 * v58 / (v57 * v57 + v56 * v56) + 0.00155346992);
        v53 += 2;
        v54 += 2;
        --v50;
      }

      while (v50);
      return result;
    }

    v49 = 0;
    v59 = &a5->f64[a3];
    v61 = &a2[2 * a3] > a5 && v59 > a2;
    if (v59 > result && &result[2 * a3] > a5)
    {
      goto LABEL_4;
    }

    if (v61)
    {
      goto LABEL_4;
    }

    v63 = vdupq_lane_s64(*&v40, 0);
    v64 = vdupq_lane_s64(*&v42, 0);
    v65 = vdupq_lane_s64(*&v43, 0);
    v66 = vdupq_lane_s64(*&v45, 0);
    v49 = a3 & 0x7FFFFFFE;
    v67 = vdupq_lane_s64(*&v46, 0);
    v68 = vdupq_lane_s64(*&v48, 0);
    v69 = result;
    v70 = a2;
    v71 = a5;
    v72 = v49;
    v73 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
    do
    {
      v76 = vld2q_f64(v69);
      v69 += 4;
      v77 = vld2q_f64(v70);
      v70 += 4;
      v74 = vaddq_f64(v64, vmlaq_f64(vmulq_n_f64(v76.val[1], v41), v76.val[0], v63));
      v75 = vaddq_f64(v66, vmlaq_f64(vmulq_n_f64(v76.val[1], v44), v76.val[0], v65));
      v76.val[0] = vaddq_f64(vaddq_f64(v68, vmlaq_f64(vmulq_n_f64(v76.val[1], v47), v76.val[0], v67)), vmlaq_f64(vmulq_f64(v77.val[1], v75), v77.val[0], v74));
      *v71++ = vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v76.val[0], v76.val[0]), vmlaq_f64(vmulq_f64(v75, v75), v74, v74)), v73));
      v72 -= 2;
    }

    while (v72);
    if (v49 != a3)
    {
      goto LABEL_4;
    }
  }

  return result;
}

double FundamentalEpipolarError_MeanVal(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5)
{
  if (a3 < 1)
  {
    v50 = 0.0;
    goto LABEL_10;
  }

  v5 = a4[1];
  v6 = a4[6];
  v7 = a4[7];
  v8 = a4[8];
  v9 = a4[9];
  v10 = a4[10];
  v11 = a4[11];
  v12 = a4[12];
  v13 = a4[13];
  v14 = a4[14];
  v15 = a4[15];
  v16 = a4[16];
  v17 = a4[17];
  v18 = -1.0 / *a4;
  v19 = a4[2] / *a4;
  v20 = a4[4] / *a4;
  v21 = -1.0 / v5;
  v22 = a4[3] / v5;
  v23 = v13 * v14 - v17 * v10;
  v24 = v13 * v15 - v17 * v11;
  v25 = a4[5] / v5;
  v26 = v13 * v16 - v17 * v12;
  v27 = v17 * v6 - v9 * v14;
  v28 = v17 * v7 - v9 * v15;
  v29 = v17 * v8 - v9 * v16;
  v30 = v9 * v10 - v13 * v6;
  v31 = v9 * v11 - v13 * v7;
  v32 = v9 * v12 - v13 * v8;
  v33 = v18 * v23;
  v34 = v18 * v27;
  v35 = v18 * v24;
  v36 = v18 * v28;
  v37 = v26 + v20 * v24 + v19 * v23;
  v38 = v29 + v20 * v28 + v19 * v27;
  v39 = v32 + v20 * v31 + v19 * v30;
  v40 = v21 * (v18 * v23);
  v41 = v21 * (v18 * v24);
  v42 = v21 * v37;
  v43 = v21 * (v18 * v27);
  v44 = v21 * v36;
  v45 = v21 * v38;
  v46 = v18 * v30 + v25 * v34 + v33 * v22;
  v47 = v18 * v31 + v25 * v36 + v35 * v22;
  v48 = v39 + v25 * v38 + v37 * v22;
  if (a3 <= 3)
  {
    v49 = 0;
    v50 = 0.0;
LABEL_8:
    v67 = a3 - v49;
    v68 = (16 * v49) | 8;
    v69 = (a2 + v68);
    v70 = (a1 + v68);
    do
    {
      v71 = *(v70 - 1);
      v72 = v42 + v41 * *v70 + v40 * v71;
      v73 = v45 + v44 * *v70 + v43 * v71;
      v74 = v48 + v47 * *v70 + v46 * v71 + *v69 * v73 + v72 * *(v69 - 1);
      v50 = v50 + sqrt(v74 * v74 / (v73 * v73 + v72 * v72) + 0.00155346992);
      v69 += 2;
      v70 += 2;
      --v67;
    }

    while (v67);
    goto LABEL_10;
  }

  v51 = vdupq_lane_s64(*&v40, 0);
  v52 = vdupq_lane_s64(*&v42, 0);
  v53 = vdupq_lane_s64(*&v43, 0);
  v54 = vdupq_lane_s64(*&v45, 0);
  v49 = a3 & 0x7FFFFFFC;
  v55 = vdupq_lane_s64(*&v46, 0);
  v56 = (a2 + 32);
  v57 = vdupq_lane_s64(*&v48, 0);
  v58 = (a1 + 32);
  v50 = 0.0;
  v59 = v49;
  v60 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
  do
  {
    v61 = v58 - 4;
    v77 = vld2q_f64(v61);
    v78 = vld2q_f64(v58);
    v79 = vld2q_f64(v56);
    v62 = v56 - 4;
    v76 = vld2q_f64(v62);
    v63 = vaddq_f64(v52, vmlaq_f64(vmulq_n_f64(v78.val[1], v41), v78.val[0], v51));
    v64 = vaddq_f64(v54, vmlaq_f64(vmulq_n_f64(v77.val[1], v44), v77.val[0], v53));
    v65 = vaddq_f64(v54, vmlaq_f64(vmulq_n_f64(v78.val[1], v44), v78.val[0], v53));
    v66 = vmlaq_f64(vmulq_n_f64(v77.val[1], v47), v77.val[0], v55);
    v77.val[0] = vaddq_f64(v52, vmlaq_f64(vmulq_n_f64(v77.val[1], v41), v77.val[0], v51));
    v77.val[1] = vaddq_f64(vaddq_f64(v57, v66), vmlaq_f64(vmulq_f64(v76.val[1], v64), v76.val[0], v77.val[0]));
    v78.val[0] = vaddq_f64(vaddq_f64(v57, vmlaq_f64(vmulq_n_f64(v78.val[1], v47), v78.val[0], v55)), vmlaq_f64(vmulq_f64(v79.val[1], v65), v79.val[0], v63));
    v77.val[0] = vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v77.val[1], v77.val[1]), vmlaq_f64(vmulq_f64(v64, v64), v77.val[0], v77.val[0])), v60));
    v77.val[1] = vsqrtq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v78.val[0], v78.val[0]), vmlaq_f64(vmulq_f64(v65, v65), v63, v63)), v60));
    v50 = v50 + v77.val[0].f64[0] + v77.val[0].f64[1] + v77.val[1].f64[0] + v77.val[1].f64[1];
    v56 += 8;
    v58 += 8;
    v59 -= 4;
  }

  while (v59);
  if (v49 != a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  result = v50 / a3;
  *a5 = result;
  return result;
}

double FundamentalEpipolarError_MeanValPlusGradient(uint64_t a1, uint64_t a2, int a3, __int128 *a4, double *a5, double *a6)
{
  v190 = 0.0;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v11 = a4[7];
  v173[6] = a4[6];
  v173[7] = v11;
  v173[8] = a4[8];
  v12 = a4[3];
  v173[2] = a4[2];
  v173[3] = v12;
  v13 = a4[4];
  v173[5] = a4[5];
  v173[4] = v13;
  v14 = *a4;
  v173[1] = a4[1];
  v173[0] = v14;
  FundamentalEpipolarError_precomputeFundamental(v173, 1, &v174);
  if (a3 < 1)
  {
    v32 = 0.0;
    v31 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    goto LABEL_10;
  }

  v20 = *(&v174 + 1);
  *&v16 = *(&v175 + 1);
  *&v17 = *(&v176 + 1);
  *&v19 = v176;
  v21 = *(&v177 + 1);
  *&v18 = v177;
  v22 = *(&v178 + 1);
  *&v15 = *(&v179 + 1);
  v23 = *&v179;
  v24 = *(&v180 + 1);
  v25 = *&v182;
  v26 = *(&v185 + 1);
  if (a3 <= 3)
  {
    v27 = 0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = v190;
LABEL_8:
    v94 = a3 - v27;
    v95 = (16 * v27) | 8;
    v96 = (a2 + v95);
    v97 = (a1 + v95);
    do
    {
      v98 = *(v97 - 1);
      v99 = v32;
      v100 = *(v96 - 1);
      v101 = *&v175 + *v97 * v20 + *&v174 * v98;
      v102 = *&v17 + *v97 * *&v19 + *&v16 * v98;
      v103 = v31;
      v104 = v15;
      v105 = v28;
      v106 = *v97 * v24 + *&v180 * v98;
      v107 = v16;
      v108 = v17;
      v109 = *(&v182 + 1) + *v97 * v25 + *(&v181 + 1) * v98;
      v110 = *&v184 + *v97 * *(&v183 + 1) + *&v183 * v98;
      v111 = v18;
      v112 = *v96 * v102 + v101 * v100 + *&v178 + *v97 * v21 + *&v18 * v98;
      v113 = *&v187 + *v97 * *(&v186 + 1) + *&v186 * v98;
      v114 = *v96 * v110 + v100 * v109 + v26 + *v97 * *&v185 + *(&v184 + 1) * v98;
      v115 = *(&v188 + 1) + *v97 * *&v188 + *(&v187 + 1) * v98;
      v116 = *v96 * v23 + v100 * v22;
      v117 = *v96 * v115 + v100 * v113 + v33 + *v97 * *(&v189 + 1) + *&v189 * v98;
      v118 = v102 * v102 + v101 * v101;
      v119 = v102 * v110;
      v17 = v108;
      v120 = v119 + v101 * v109;
      v121 = v112 * v112 / v118;
      v122 = v112 / v118;
      v123 = v102 * v115;
      v25 = *&v182;
      v124 = v123 + v101 * v113;
      v15 = v104;
      v125 = v102 * v23 + v101 * v22;
      v126 = *&v104 + v116;
      v18 = v111;
      v127 = v126 - v122 * v125;
      v128 = v114 - v122 * v120;
      v129 = v117 - v122 * v124;
      v130 = v121 + 0.00155346992;
      v16 = v107;
      v131 = sqrt(v130);
      v132 = v122 / v131;
      v133 = v132 * (*&v181 + v106);
      v28 = v105 + v131;
      v29 = v29 + v127 * v132;
      v30 = v30 + v133;
      v31 = v103 + v132 * v128;
      v32 = v99 + v132 * v129;
      v96 += 2;
      v97 += 2;
      --v94;
    }

    while (v94);
    goto LABEL_10;
  }

  v172 = vdupq_lane_s64(v175, 0);
  v137 = v17;
  v138 = v16;
  v158 = vdupq_lane_s64(*(&v175 + 1), 0);
  v159 = vdupq_lane_s64(v174, 0);
  v136 = v18;
  v156 = vdupq_lane_s64(v177, 0);
  v157 = vdupq_lane_s64(*(&v176 + 1), 0);
  v154 = vdupq_lane_s64(v180, 0);
  v155 = vdupq_lane_s64(v178, 0);
  v152 = vdupq_lane_s64(*(&v181 + 1), 0);
  v153 = vdupq_lane_s64(v181, 0);
  v150 = vdupq_lane_s64(v183, 0);
  v151 = vdupq_lane_s64(*(&v182 + 1), 0);
  v27 = a3 & 0x7FFFFFFC;
  v34 = (a2 + 32);
  v148 = vdupq_lane_s64(*(&v184 + 1), 0);
  v149 = vdupq_lane_s64(v184, 0);
  v35 = (a1 + 32);
  v28 = 0.0;
  v36 = v27;
  v146 = vdupq_lane_s64(v186, 0);
  v147 = vdupq_lane_s64(*(&v185 + 1), 0);
  v144 = vdupq_lane_s64(*(&v187 + 1), 0);
  v145 = vdupq_lane_s64(v187, 0);
  v29 = 0.0;
  v30 = 0.0;
  v142 = vdupq_lane_s64(v189, 0);
  v143 = vdupq_lane_s64(*(&v188 + 1), 0);
  v31 = 0.0;
  v135 = v15;
  v140 = vdupq_lane_s64(*(&v178 + 1), 0);
  v141 = vdupq_lane_s64(*&v190, 0);
  v32 = 0.0;
  v139 = vdupq_lane_s64(*(&v179 + 1), 0);
  do
  {
    v166 = v31;
    v167 = v32;
    v168 = v29;
    v171 = v28;
    v37 = v35 - 4;
    v194 = vld2q_f64(v37);
    v193 = vld2q_f64(v35);
    v191 = vld2q_f64(v34);
    v38 = v34 - 4;
    v192 = vld2q_f64(v38);
    v164 = vmlaq_f64(vmulq_n_f64(v193.val[1], v20), v193.val[0], v159);
    v39 = v19;
    v162 = vmlaq_f64(vmulq_n_f64(v193.val[1], *&v19), v193.val[0], v158);
    v165 = vmlaq_f64(vmulq_n_f64(v194.val[1], v21), v194.val[0], v156);
    v163 = vmlaq_f64(vmulq_n_f64(v193.val[1], v21), v193.val[0], v156);
    v169 = vmlaq_f64(vmulq_n_f64(v194.val[1], v24), v194.val[0], v154);
    v170 = vmlaq_f64(vmulq_n_f64(v193.val[1], v24), v193.val[0], v154);
    v40 = vaddq_f64(v172, vmlaq_f64(vmulq_n_f64(v194.val[1], v20), v194.val[0], v159));
    v41 = vmlaq_f64(vmulq_n_f64(v194.val[1], v25), v194.val[0], v152);
    v42 = vmlaq_f64(vmulq_n_f64(v193.val[1], v25), v193.val[0], v152);
    v43 = vaddq_f64(v157, vmlaq_f64(vmulq_n_f64(v194.val[1], *&v19), v194.val[0], v158));
    v44 = vmlaq_f64(vmulq_n_f64(v193.val[1], *(&v183 + 1)), v193.val[0], v150);
    v45 = vmlaq_f64(vmulq_n_f64(v194.val[1], *&v185), v194.val[0], v148);
    v46 = vmlaq_f64(vmulq_n_f64(v193.val[1], *&v185), v193.val[0], v148);
    v47 = vaddq_f64(v149, vmlaq_f64(vmulq_n_f64(v194.val[1], *(&v183 + 1)), v194.val[0], v150));
    v48 = vmlaq_f64(vmulq_n_f64(v193.val[1], *(&v186 + 1)), v193.val[0], v146);
    v160 = vaddq_f64(v151, v41);
    v161 = vaddq_f64(v145, vmlaq_f64(vmulq_n_f64(v194.val[1], *(&v186 + 1)), v194.val[0], v146));
    v49 = vmlaq_f64(vmulq_n_f64(v194.val[1], *(&v189 + 1)), v194.val[0], v142);
    v50 = vmlaq_f64(vmulq_n_f64(v193.val[1], *&v188), v193.val[0], v144);
    v194.val[0] = vaddq_f64(v143, vmlaq_f64(vmulq_n_f64(v194.val[1], *&v188), v194.val[0], v144));
    v51 = vmlaq_f64(vmulq_f64(v192.val[1], v43), v192.val[0], v40);
    v52 = vmlaq_f64(vmulq_n_f64(v193.val[1], *(&v189 + 1)), v193.val[0], v142);
    v193.val[0] = vmlaq_f64(vmulq_n_f64(v192.val[1], *&v179), v140, v192.val[0]);
    v53 = vmlaq_f64(vmulq_f64(v192.val[1], v47), v160, v192.val[0]);
    v54 = vmlaq_f64(vmulq_f64(v192.val[1], v194.val[0]), v161, v192.val[0]);
    v193.val[1] = vaddq_f64(v172, v164);
    v194.val[1] = vaddq_f64(v157, v162);
    v192.val[1] = vaddq_f64(v151, v42);
    v55 = vmlaq_f64(vmulq_f64(v191.val[1], v194.val[1]), v191.val[0], v193.val[1]);
    v56 = vaddq_f64(v149, v44);
    v57 = vaddq_f64(v145, v48);
    v58 = vaddq_f64(v143, v50);
    v192.val[0] = vmlaq_f64(vmulq_n_f64(v191.val[1], *&v179), v140, v191.val[0]);
    v59 = vmlaq_f64(vmulq_f64(v191.val[1], v56), v192.val[1], v191.val[0]);
    v60 = vmlaq_f64(vmulq_f64(v191.val[1], v58), v57, v191.val[0]);
    v191.val[0] = vaddq_f64(v51, vaddq_f64(v155, v165));
    v61 = vaddq_f64(v55, vaddq_f64(v155, v163));
    v62 = vaddq_f64(v53, vaddq_f64(v147, v45));
    v19 = v39;
    v63 = vaddq_f64(v59, vaddq_f64(v147, v46));
    v64 = vaddq_f64(v54, vaddq_f64(v141, v49));
    v65 = vaddq_f64(v60, vaddq_f64(v141, v52));
    v66 = vmlaq_f64(vmulq_f64(v43, v47), v160, v40);
    v67 = vmlaq_f64(vmulq_f64(v43, v194.val[0]), v161, v40);
    v68 = vmlaq_f64(vmulq_f64(v43, v43), v40, v40);
    v69 = vmlaq_f64(vmulq_n_f64(v43, *&v179), v140, v40);
    v24 = *(&v180 + 1);
    v21 = *(&v177 + 1);
    v70 = vmlaq_f64(vmulq_f64(v194.val[1], v194.val[1]), v193.val[1], v193.val[1]);
    v194.val[0] = vmlaq_f64(vmulq_f64(v194.val[1], v56), v192.val[1], v193.val[1]);
    v71 = vmulq_f64(v61, v61);
    v72 = vdivq_f64(v61, v70);
    v73 = vdivq_f64(v71, v70);
    v74 = vmulq_f64(v194.val[1], v58);
    v20 = *(&v174 + 1);
    v75 = vmlaq_f64(v74, v57, v193.val[1]);
    v194.val[1] = vmlaq_f64(vmulq_n_f64(v194.val[1], *&v179), v140, v193.val[1]);
    v193.val[1] = vdivq_f64(v191.val[0], v68);
    v193.val[0] = vmlsq_f64(vaddq_f64(v139, v193.val[0]), v69, v193.val[1]);
    v76 = vmlsq_f64(vaddq_f64(v139, v192.val[0]), v194.val[1], v72);
    v77 = vmlsq_f64(v62, v66, v193.val[1]);
    v78 = vmlsq_f64(v63, v194.val[0], v72);
    v79 = vmlsq_f64(v64, v67, v193.val[1]);
    v80 = vdupq_n_s64(0x3F5973B9A04DB73CuLL);
    v81 = vaddq_f64(vdivq_f64(vmulq_f64(v191.val[0], v191.val[0]), v68), v80);
    v82 = vaddq_f64(v73, v80);
    v83 = vmlsq_f64(v65, v75, v72);
    v25 = *&v182;
    v84 = vsqrtq_f64(v81);
    v85 = vdivq_f64(v193.val[1], v84);
    v193.val[0] = vmulq_f64(v193.val[0], v85);
    v86 = vmulq_f64(v85, vaddq_f64(v153, v169));
    v87 = vmulq_f64(v85, v77);
    v88 = vmulq_f64(v85, v79);
    v89 = vsqrtq_f64(v82);
    v90 = vdivq_f64(v72, v89);
    v91 = vmulq_f64(v76, v90);
    v193.val[1] = vmulq_f64(v90, vaddq_f64(v153, v170));
    v92 = vmulq_f64(v90, v78);
    v93 = vmulq_f64(v90, v83);
    v43.f64[0] = v168 + v193.val[0].f64[0] + v193.val[0].f64[1];
    v28 = v171 + v84.f64[0] + v84.f64[1] + v89.f64[0] + v89.f64[1];
    v29 = v43.f64[0] + v91.f64[0] + v91.f64[1];
    v30 = v30 + v86.f64[0] + v86.f64[1] + v193.val[1].f64[0] + v193.val[1].f64[1];
    v31 = v166 + v87.f64[0] + v87.f64[1] + v92.f64[0] + v92.f64[1];
    v32 = v167 + v88.f64[0] + v88.f64[1] + v93.f64[0] + v93.f64[1];
    v34 += 8;
    v35 += 8;
    v36 -= 4;
  }

  while (v36);
  v17 = v137;
  v16 = v138;
  v22 = *(&v178 + 1);
  v18 = v136;
  v23 = *&v179;
  v26 = *(&v185 + 1);
  v15 = v135;
  v33 = v190;
  if (v27 != a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  *a5 = v28 / a3;
  *a6 = v29 / a3;
  a6[1] = v30 / a3;
  result = v32 / a3;
  a6[2] = v31 / a3;
  a6[3] = result;
  return result;
}

void SelectPointsWithEpipolarThreshold(const double *a1, const double *a2, signed int a3, double *a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, double a9)
{
  v18 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  if (v18 && (FundamentalEpipolarError_ABSVec(a1, a2, a3, a4, v18), a3 >= 1))
  {
    v19 = a3;
    if (a8)
    {
      v20 = 0;
      v21 = 0;
      v22 = a2 + 1;
      v23 = a1 + 1;
      do
      {
        if (v18->f64[v20] < a9)
        {
          if (v20 <= 0x7FF)
          {
            *(a8 + v20) = 1;
          }

          v24 = 2 * v21;
          *(a5 + 8 * v24) = *(v23 - 1);
          v25 = (16 * v21) | 8;
          *(a5 + v25) = *v23;
          *(a6 + 8 * v24) = *(v22 - 1);
          *(a6 + v25) = *v22;
          ++v21;
        }

        ++v20;
        v22 += 2;
        v23 += 2;
      }

      while (a3 != v20);
    }

    else
    {
      v21 = 0;
      v26 = a2 + 1;
      v27 = a1 + 1;
      v28 = v18;
      do
      {
        if (*v28 < a9)
        {
          v29 = 2 * v21;
          *(a5 + 8 * v29) = *(v27 - 1);
          v30 = (16 * v21) | 8;
          *(a5 + v30) = *v27;
          *(a6 + 8 * v29) = *(v26 - 1);
          *(a6 + v30) = *v26;
          ++v21;
        }

        v26 += 2;
        v27 += 2;
        ++v28;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v21 = 0;
  }

  *a7 = v21;

  free(v18);
}