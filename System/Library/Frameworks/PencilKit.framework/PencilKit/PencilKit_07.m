void ClipperLib::ClipperOffset::Execute(ClipperLib::ClipperOffset *this, ClipperLib::PolyTree *a2, double a3)
{
  v33 = *MEMORY[0x1E69E9840];
  ClipperLib::PolyTree::Clear(a2);
  ClipperLib::ClipperOffset::FixOrientations(this);
  ClipperLib::ClipperOffset::DoOffset(this, a3);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v20 = 0u;
  v21 = 0u;
  v8 = &off_1F4769838;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v12 = 0u;
  v13 = 0;
  v14[0] = v14;
  v14[1] = v14;
  v14[2] = 0;
  v15 = 0;
  v22 = 0;
  v16 = 0;
  v17 = 0;
  v26 = 0;
  v18 = 0;
  v19 = &unk_1F4769880;
  ClipperLib::ClipperBase::AddPaths(&v19, this + 2, 0, 1);
  if (a3 <= 0.0)
  {
    memset(v7, 0, sizeof(v7));
    ClipperLib::ClipperBase::GetBounds((&v9[-1] + *(v8 - 3)), v7);
    std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](&__p);
  }

  ClipperLib::Clipper::Execute(&v8, 1, a2, 2, 2);
  v8 = &off_1F4769838;
  v19 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v14);
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v19);
}

void sub_1C7E6B4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  ClipperLib::Clipper::~Clipper(&a18);
  _Unwind_Resume(a1);
}

void std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void ClipperLib::ClipperOffset::OffsetPoint(ClipperLib::ClipperOffset *this, int a2, int *a3, int a4)
{
  v7 = *a3;
  v8 = *(this + 11);
  v9 = a2;
  v10 = (v8 + 16 * a2);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v8 + 16 * v7);
  v14 = *(v8 + 16 * v7 + 8);
  v15 = vmuld_lane_f64(-*v10, v13, 1) + v13.f64[0] * v11;
  *(this + 15) = v15;
  v16 = *(this + 14);
  v17 = v15 * v16;
  v18 = 1.0;
  if (fabs(v15 * v16) >= 1.0)
  {
    if (v15 > 1.0 || (v18 = -1.0, v15 < -1.0))
    {
      *(this + 15) = v18;
      v17 = v16 * v18;
    }
  }

  else if (v11 * v14 + v13.f64[0] * v12 > 0.0)
  {
    v19 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), v13, v16);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v35 = vcvtq_s64_f64(vaddq_f64(v19, vbslq_s8(vcltzq_f64(v19), _Q3, _Q2)));
    __asm { FMOV            V0.2S, #-1.0 }

    v36 = _D0;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v35.i8);
    return;
  }

  if (v17 < 0.0)
  {
    v27 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), v13, v16);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v33 = _Q2;
    v34 = _Q3;
    v35 = vcvtq_s64_f64(vaddq_f64(v27, vbslq_s8(vcltzq_f64(v27), _Q3, _Q2)));
    __asm { FMOV            V8.2S, #-1.0 }

    v36 = _D8;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v35.i8);
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, (*(this + 5) + 24 * v9));
    v31 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * v9)), *(*(this + 11) + 16 * v9), *(this + 14));
    v35 = vcvtq_s64_f64(vaddq_f64(v31, vbslq_s8(vcltzq_f64(v31), v34, v33)));
    v36 = _D8;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v35.i8);
    goto LABEL_16;
  }

  switch(a4)
  {
    case 0:
LABEL_13:
      ClipperLib::ClipperOffset::DoSquare(this, a2, v7);
      break;
    case 1:
      ClipperLib::ClipperOffset::DoRound(this, a2, v7);
      break;
    case 2:
      v32 = v11 * v14 + v12 * v13.f64[0] + 1.0;
      if (v32 >= *(this + 18))
      {
        ClipperLib::ClipperOffset::DoMiter(this, a2, v7, v32);
        break;
      }

      goto LABEL_13;
  }

LABEL_16:
  *a3 = a2;
}

void ClipperLib::ClipperOffset::DoSquare(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v5 = *(this + 11);
  v21 = *(v5 + 16 * a3);
  v6 = *(v5 + 16 * a3 + 8);
  v7 = atan2(*(this + 15), vmuld_lane_f64(*(v5 + 16 * a2 + 8), v21, 1) + v21.f64[0] * *(v5 + 16 * a2));
  v23 = tan(v7 * 0.25);
  v8 = vdupq_lane_s64(*&v21.f64[0], 0);
  v8.f64[0] = -v6;
  v9 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vmlaq_n_f64(v21, v8, v23), *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v20 = _Q2;
  v22 = _Q3;
  v24 = vcvtq_s64_f64(vaddq_f64(v9, vbslq_s8(vcltzq_f64(v9), _Q3, _Q2)));
  __asm { FMOV            V8.2S, #-1.0 }

  v25 = _D8;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v24.i8);
  v17 = *(*(this + 11) + 16 * a2);
  *&v18.f64[0] = vdupq_laneq_s64(v17, 1).u64[0];
  v18.f64[1] = -v17.f64[0];
  v19 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vmlaq_n_f64(v17, v18, v23), *(this + 14));
  v24 = vcvtq_s64_f64(vaddq_f64(v19, vbslq_s8(vcltzq_f64(v19), v22, v20)));
  v25 = _D8;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v24.i8);
}

void ClipperLib::ClipperOffset::DoRound(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v4 = *(this + 11);
  v5 = (v4 + 16 * a3);
  v6 = a2;
  v8 = *v5;
  v7 = v5[1];
  v9 = *(this + 19) * fabs(atan2(*(this + 15), v7 * *(v4 + 16 * a2 + 8) + *v5 * *(v4 + 16 * a2)));
  if (v9 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  if ((v9 + v10) <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v9 + v10);
  }

  __asm { FMOV            V10.2S, #-1.0 }

  do
  {
    v17 = (*(this + 5) + 24 * v6);
    v18 = v17[1];
    v19 = *(this + 14);
    v20 = *v17 + v8 * v19;
    if (v20 >= 0.0)
    {
      v21 = 0.5;
    }

    else
    {
      v21 = -0.5;
    }

    v22 = (v20 + v21);
    v23 = v18 + v7 * v19;
    if (v23 >= 0.0)
    {
      v24 = 0.5;
    }

    else
    {
      v24 = -0.5;
    }

    v31.i64[0] = v22;
    v31.i64[1] = (v23 + v24);
    v32 = _D10;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v31.i8);
    v26 = *(this + 16);
    v25 = *(this + 17);
    v27 = -(v26 * v7);
    v7 = v7 * v25 + v8 * v26;
    v8 = v27 + v8 * v25;
    --v11;
  }

  while (v11);
  v28 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * v6)), *(*(this + 11) + 16 * v6), *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v31 = vcvtq_s64_f64(vaddq_f64(v28, vbslq_s8(vcltzq_f64(v28), _Q3, _Q2)));
  v32 = _D10;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v31.i8);
}

double ClipperLib::ClipperOffset::DoMiter(ClipperLib::ClipperOffset *this, int a2, int a3, double a4)
{
  v4 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vaddq_f64(*(*(this + 11) + 16 * a3), *(*(this + 11) + 16 * a2)), *(this + 14) / a4);
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v13 = vcvtq_s64_f64(vaddq_f64(v4, vbslq_s8(vcltzq_f64(v4), _Q3, _Q2)));
  __asm { FMOV            V0.2S, #-1.0 }

  v14 = _D0;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v13.i8);
  return result;
}

uint64_t *ClipperLib::ReversePaths(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (v1 != *result)
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 24 * v3);
      v5 = *v4;
      v6 = v4[1];
      v7 = v6 - 24;
      if (v5 != v6 && v7 > v5)
      {
        v9 = v5 + 24;
        do
        {
          v10 = *(v9 - 8);
          v11 = *(v9 - 24);
          v12 = *(v7 + 16);
          *(v9 - 24) = *v7;
          *(v9 - 8) = v12;
          *v7 = v11;
          *(v7 + 16) = v10;
          v7 -= 24;
          v13 = v9 >= v7;
          v9 += 24;
        }

        while (!v13);
        v2 = *result;
        v1 = result[1];
      }

      ++v3;
    }

    while (v3 < 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3));
  }

  return result;
}

void ClipperLib::SimplifyPolygon(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &off_1F4769838;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_1F4769880;
  v14 = 1;
  ClipperLib::ClipperBase::AddPath(&v16, a1, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a2, a3, a3);
  v5 = &off_1F4769838;
  v16 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_1C7E6BD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::SimplifyPolygons(uint64_t *a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &off_1F4769838;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_1F4769880;
  v14 = 1;
  ClipperLib::ClipperBase::AddPaths(&v16, a1, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a2, a3, a3);
  v5 = &off_1F4769838;
  v16 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_1C7E6BE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

double ClipperLib::DistanceFromLineSqrd(ClipperLib *this, const IntPoint *a2, const IntPoint *a3, const IntPoint *a4)
{
  v4 = *(a2 + 1);
  v5 = (v4 - *(a3 + 1));
  v6 = *a3 - *a2;
  v7 = v6 * *(this + 1) + v5 * *this - (v4 * v6 + v5 * *a2);
  return v7 * v7 / (v6 * v6 + v5 * v5);
}

BOOL ClipperLib::SlopesNearCollinear(ClipperLib *this, const IntPoint *a2, const IntPoint *a3, const IntPoint *a4, double a5)
{
  v6 = *this;
  v5 = *(this + 1);
  v8 = *a2;
  v7 = *(a2 + 1);
  if ((*this - *a2) >= 0)
  {
    v9 = *this - *a2;
  }

  else
  {
    v9 = *a2 - *this;
  }

  v10 = v5 - v7;
  if (v5 - v7 >= 0)
  {
    v11 = v5 - v7;
  }

  else
  {
    v11 = v7 - v5;
  }

  if (v9 <= v11)
  {
    v15 = *(a3 + 1);
    if (v5 > v7 != v5 >= v15)
    {
      v13 = (v7 - v15);
      v14 = *a3 - v8;
      goto LABEL_12;
    }

    if (v5 < v7 != v7 >= v15)
    {
      v13 = (v5 - v15);
      v16 = (*a3 - v6);
      goto LABEL_17;
    }

    v13 = v10;
    v16 = (v8 - v6);
    v17 = v5 * v16 + v10 * v6;
    v18 = *a3;
    v22 = v15;
LABEL_21:
    v21 = v16 * v22;
    return (v21 + v13 * v18 - v17) * (v21 + v13 * v18 - v17) / (v16 * v16 + v13 * v13) < a5;
  }

  v12 = *a3;
  if (v8 < v6 == *a3 <= v6)
  {
    v20 = v8 - v6;
    if (v8 > v6 != v12 <= v8)
    {
      v13 = (v5 - *(a3 + 1));
      v16 = (*a3 - v6);
LABEL_17:
      v17 = v5 * v16 + v13 * v6;
      v18 = v8;
      v19 = v7;
      goto LABEL_18;
    }

    v13 = v10;
    v16 = v20;
    v17 = v5 * v20 + v10 * v6;
    v18 = v12;
    v22 = *(a3 + 1);
    goto LABEL_21;
  }

  v13 = (v7 - *(a3 + 1));
  v14 = v12 - v8;
LABEL_12:
  v16 = v14;
  v17 = v7 * v14 + v13 * v8;
  v18 = v6;
  v19 = v5;
LABEL_18:
  v21 = v19 * v16;
  return (v21 + v13 * v18 - v17) * (v21 + v13 * v18 - v17) / (v16 * v16 + v13 * v13) < a5;
}

BOOL ClipperLib::PointsAreClose(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1 - *a2;
  v4 = a1[1] - a2[1];
  return v4 * v4 + v3 * v3 <= a3;
}

uint64_t ClipperLib::ExcludeOp(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v1 + 32) = v2;
  *(v2 + 40) = v1;
  *v1 = 0;
  return v1;
}

void *ClipperLib::CleanPolygon(void *result, void *a2)
{
  v2 = result[1] - *result;
  if (v2)
  {
    is_mul_ok(0xAAAAAAAAAAAAAAABLL * (v2 >> 3), 0x30uLL);
    operator new[]();
  }

  a2[1] = *a2;
  return result;
}

void std::vector<ClipperLib::IntPoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<ClipperLib::IntPoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void ClipperLib::CleanPolygons(uint64_t *a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::CleanPolygon((v4 + v5), (*a2 + v5));
      ++v6;
      v4 = *a1;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void ClipperLib::Minkowski(uint64_t *a1, void *a2, uint64_t *a3, char a4, unsigned int a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a2[1] - *a2;
  if (v8)
  {
    _ZF = v6 == v7;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {

    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a3);
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    memset(v49, 0, 24);
    std::vector<std::vector<ClipperLib::IntPoint>>::reserve(v49, v14);
    v41 = a5;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v42 = v16;
    __asm { FMOV            V8.2S, #-1.0 }

    if (a4)
    {
      for (i = 0; i != v42; ++i)
      {
        __p = 0;
        v47 = 0;
        v48 = 0;
        std::vector<ClipperLib::IntPoint>::reserve(&__p, v15);
        v22 = *a1;
        if (a1[1] != *a1)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v44 = vaddq_s64(*(v22 + v23), *(*a2 + 24 * i));
            v45 = _D8;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, v44.i8);
            ++v24;
            v22 = *a1;
            v23 += 24;
          }

          while (v24 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
        }

        std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](v49, &__p);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      for (j = 0; j != v42; ++j)
      {
        __p = 0;
        v47 = 0;
        v48 = 0;
        std::vector<ClipperLib::IntPoint>::reserve(&__p, v15);
        v26 = *a1;
        if (a1[1] != *a1)
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v44 = vsubq_s64(*(*a2 + 24 * j), *(v26 + v27));
            v45 = _D8;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, v44.i8);
            ++v28;
            v26 = *a1;
            v27 += 24;
          }

          while (v28 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
        }

        std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](v49, &__p);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }
      }
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a3);
    v29 = v14;
    v30 = v14 + v41;
    std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a3, v30 + v30 * v15);
    v43 = v29;
    if (v30 != 1)
    {
      v31 = 0;
      if (v15 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v15;
      }

      do
      {
        v33 = 0;
        v34 = v31 % v43;
        v35 = ++v31 % v43;
        do
        {
          __p = 0;
          v47 = 0;
          v48 = 0;
          std::vector<ClipperLib::IntPoint>::reserve(&__p, 4uLL);
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v34) + 24 * (v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v35) + 24 * (v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v35) + 24 * (++v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v34) + 24 * (v33 % v15)));
          if (ClipperLib::Area(&__p) < 0.0 && __p != v47)
          {
            v36 = v47 - 24;
            if (v47 - 24 > __p)
            {
              v37 = __p + 24;
              do
              {
                v38 = *(v37 - 1);
                v39 = *(v37 - 24);
                v40 = *(v36 + 2);
                *(v37 - 24) = *v36;
                *(v37 - 1) = v40;
                *v36 = v39;
                *(v36 + 2) = v38;
                v36 -= 24;
                _CF = v37 >= v36;
                v37 += 24;
              }

              while (!_CF);
            }
          }

          std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a3, &__p);
          if (__p)
          {
            v47 = __p;
            operator delete(__p);
          }
        }

        while (v33 != v32);
      }

      while (v31 != v30 - 1);
    }

    __p = v49;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_1C7E6C810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a18;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ClipperLib::MinkowskiSum(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  ClipperLib::Minkowski(a1, a2, a3, 1, a4);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &off_1F4769838;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v14 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_1F4769880;
  ClipperLib::ClipperBase::AddPaths(&v16, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a3, 1, 1);
  v5 = &off_1F4769838;
  v16 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_1C7E6C9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::TranslatePath(void *a1, int64x2_t **a2, int64x2_t *a3)
{
  std::vector<ClipperLib::IntPoint>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = *a2 + 1;
    __asm { FMOV            V0.2S, #-1.0 }

    do
    {
      v15 = *v6;
      v6 = (v6 + 24);
      v9[-1] = vaddq_s64(*a3, v15);
      v9->i64[0] = _D0;
      v9 = (v9 + 24);
      --v8;
    }

    while (v8);
  }
}

void ClipperLib::MinkowskiSum(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v36 = 0u;
  v37 = 0u;
  v24 = &off_1F4769838;
  *v25 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  v38 = 0;
  v32 = 0;
  v33 = 0;
  v42 = 0;
  v34 = 0;
  v35 = &unk_1F4769880;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      ClipperLib::Minkowski(a1, (v4 + 24 * v8), &v21, 1, a4);
      v9 = v21;
      if (v22 != v21)
      {
        v10 = 0;
        v11 = 0;
        v12 = &v25[-1] + *(v24 - 3);
        do
        {
          (*(*v12 + 16))(v12, v9 + v10, 0, 1);
          ++v11;
          v9 = v21;
          v10 += 24;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
      }

      if (a4)
      {
        __p = 0;
        v19 = 0;
        v20 = 0;
        v13 = (*a2 + 24 * v8);
        v14 = *a1;
        v16 = **a1;
        v17 = *(v14 + 16);
        ClipperLib::TranslatePath(v13, &__p, &v16);
        ClipperLib::ClipperBase::AddPath(&v25[-1] + *(v24 - 3), &__p, 1, 1);
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }

      __p = &v21;
      std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v8;
      v4 = *a2;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  ClipperLib::Clipper::Execute(&v24, 1, a3, 1, 1);
  v24 = &off_1F4769838;
  v35 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v30);
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v35);
}

void ClipperLib::MinkowskiDiff(uint64_t *a1, void *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ClipperLib::Minkowski(a1, a2, a3, 0, 1u);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v16 = 0u;
  v17 = 0u;
  v4 = &off_1F4769838;
  *v5 = 0u;
  *v6 = 0u;
  v7 = 0u;
  *__p = 0u;
  v9 = 0;
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v11 = 0;
  v18 = 0;
  v12 = 0;
  v13 = 0;
  v22 = 0;
  v14 = 0;
  v15 = &unk_1F4769880;
  ClipperLib::ClipperBase::AddPaths(&v15, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v4, 1, a3, 1, 1);
  v4 = &off_1F4769838;
  v15 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[1])
  {
    *&v7 = v6[1];
    operator delete(v6[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v15);
}

void sub_1C7E6CF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

uint64_t ClipperLib::AddPolyNodeToPaths(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v5 = result;
    if (a2 == 2)
    {
      v6 = *(result + 68);
    }

    else
    {
      v6 = 0;
    }

    if (*(result + 8) != *(result + 16) && (v6 & 1) == 0)
    {
      result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a3, (result + 8));
    }

    v7 = *(v5 + 32);
    if (((*(v5 + 40) - v7) >> 3) >= 1)
    {
      v8 = 0;
      do
      {
        result = ClipperLib::AddPolyNodeToPaths(*(v7 + 8 * v8++), a2, a3);
        v7 = *(v5 + 32);
      }

      while (v8 < ((*(v5 + 40) - v7) >> 3));
    }
  }

  return result;
}

uint64_t ClipperLib::PolyTreeToPaths(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 0, a2);
}

uint64_t ClipperLib::ClosedPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 2, a2);
}

uint64_t ClipperLib::OpenPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (((v7 - v8) >> 3) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 68) == 1)
      {
        result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a2, (v10 + 8));
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
      }

      ++v9;
    }

    while (v9 < ((v7 - v8) >> 3));
  }

  return result;
}

void *ClipperLib::operator<<(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v5 = MEMORY[0x1CCA6EC00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
  v7 = MEMORY[0x1CCA6EC00](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

{
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = (v3 - *a2) >> 3;
    v6 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
    if (0xAAAAAAAAAAAAAAABLL * v5 != 1)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
      do
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
        v10 = MEMORY[0x1CCA6EC00](v9, *(*a2 + v7));
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
        v12 = MEMORY[0x1CCA6EC00](v11, *(*a2 + v7 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), ", 3);
        v7 += 24;
        --v8;
      }

      while (v8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    v14 = MEMORY[0x1CCA6EC00](v13, *(*a2 + 24 * v6));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",", 1);
    v16 = MEMORY[0x1CCA6EC00](v15, *(*a2 + 24 * v6 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")\n", 2);
  }

  return a1;
}

void *ClipperLib::operator<<(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      a1 = ClipperLib::operator<<(a1, (v3 + v5));
      ++v6;
      v3 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n", 1);
}

void virtual thunk toClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &off_1F4769838;
  v1[18] = &unk_1F4769880;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));
}

{
  v1 = (this + *(*this - 24));
  *v1 = &off_1F4769838;
  v1[18] = &unk_1F4769880;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));

  JUMPOUT(0x1CCA6ECB0);
}

void ClipperLib::PolyNode::~PolyNode(ClipperLib::PolyNode *this)
{
  ClipperLib::PolyNode::~PolyNode(this);

  JUMPOUT(0x1CCA6ECB0);
}

{
  *this = &unk_1F47697C0;
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

void std::vector<ClipperLib::PolyNode *>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

ClipperLib::clipperException *ClipperLib::clipperException::clipperException(ClipperLib::clipperException *this, const char *__s)
{
  *this = &unk_1F4769910;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  return this;
}

void ClipperLib::clipperException::~clipperException(std::exception *this)
{
  ClipperLib::clipperException::~clipperException(this);

  JUMPOUT(0x1CCA6ECB0);
}

{
  this->__vftable = &unk_1F4769910;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t ClipperLib::clipperException::what(ClipperLib::clipperException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        if (*v12 >= v90)
        {
          return result;
        }

LABEL_106:
        v201 = *(v12 + 16);
        v172 = *v12;
        v95 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v95;
        result = v172;
        v89[1].n128_u64[0] = v201;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (*v12 >= v96)
      {
        if (v96 < v98)
        {
          v141 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v141;
          if (*v12 < *(v12 + 24))
          {
            v204 = *(v12 + 16);
            v177 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v177;
            *v91 = v177;
            *(v12 + 40) = v204;
          }
        }
      }

      else
      {
        if (v96 < v98)
        {
          v202 = *(v12 + 16);
          v173 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v173;
          *v97 = v173;
          v99 = v202;
          goto LABEL_183;
        }

        v206 = *(v12 + 16);
        v180 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v180;
        *v91 = v180;
        *(v12 + 40) = v206;
        if (*(v12 + 24) < v98)
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_183:
          *(v12 + 64) = v99;
        }
      }

      if (v97->n128_u64[0] >= v9->n128_u64[0])
      {
        return result;
      }

      result = *v97;
      v147 = *(v12 + 64);
      v148 = *(a2 - 8);
      *v97 = *v9;
      *(v12 + 64) = v148;
      *(a2 - 8) = v147;
      *v9 = result;
      if (v91->n128_u64[0] >= v97->n128_u64[0])
      {
        return result;
      }

      v149 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v149;
LABEL_187:
      if (*v12 < *(v12 + 24))
      {
        v207 = *(v12 + 16);
        v181 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v181;
        *v91 = v181;
        v91[1].n128_u64[0] = v207;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(v12, (v12 + 24), (v12 + 48), v12 + 72, a2 - 24, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = v12 + 24;
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v105 = v100;
            v106 = v104[1].n128_i64[1];
            if (v104->n128_u64[0] < v106)
            {
              v174 = v104[2];
              v107 = v103;
              while (1)
              {
                v108 = v12 + v107;
                *(v108 + 24) = *(v12 + v107);
                *(v108 + 40) = *(v12 + v107 + 16);
                if (!v107)
                {
                  break;
                }

                v107 -= 24;
                if (*(v108 - 24) >= v106)
                {
                  v109 = v12 + v107 + 24;
                  goto LABEL_126;
                }
              }

              v109 = v12;
LABEL_126:
              *v109 = v106;
              result = v174;
              *(v109 + 8) = v174;
            }

            v100 = &v105[1].n128_u64[1];
            v103 += 24;
            v104 = v105;
          }

          while (&v105[1].n128_i8[8] != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v142 = v100;
          v143 = *(a1 + 24);
          if (*a1 < v143)
          {
            v178 = *(a1 + 32);
            do
            {
              *v100 = *(v100 - 24);
              *(v100 + 16) = *(v100 - 8);
              v144 = *(v100 - 48);
              v100 -= 24;
            }

            while (v144 < v143);
            *v100 = v143;
            result = v178;
            *(v100 + 8) = v178;
          }

          v100 = v142 + 24;
          a1 = v142;
        }

        while (v142 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = (v12 + 24 * v113);
            if (2 * v112 + 2 >= v14)
            {
              v115 = *v114;
            }

            else
            {
              v115 = v114[3];
              if (v115 < *v114)
              {
                v114 += 3;
                v113 = 2 * v112 + 2;
              }

              else
              {
                v115 = *v114;
              }
            }

            v116 = (v12 + 24 * v112);
            v117 = *v116;
            if (*v116 >= v115)
            {
              v175 = *(v116 + 1);
              do
              {
                v118 = v116;
                v116 = v114;
                v119 = *v114;
                v118[2] = v114[2];
                *v118 = v119;
                if (v110 < v113)
                {
                  break;
                }

                v120 = (2 * v113) | 1;
                v114 = (v12 + 24 * v120);
                v113 = 2 * v113 + 2;
                if (v113 >= v14)
                {
                  v121 = *v114;
                  v113 = v120;
                }

                else
                {
                  v121 = v114[3];
                  if (v121 < *v114)
                  {
                    v114 += 3;
                  }

                  else
                  {
                    v121 = *v114;
                    v113 = v120;
                  }
                }
              }

              while (v117 >= v121);
              *v116 = v117;
              *(v116 + 1) = v175;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        v122 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v123 = 0;
          v203 = *(v12 + 16);
          v176 = *v12;
          v124 = v12;
          do
          {
            v125 = v124 + 24 * v123;
            v126 = v125 + 24;
            v127 = (2 * v123) | 1;
            v123 = 2 * v123 + 2;
            if (v123 >= v122)
            {
              v123 = v127;
            }

            else
            {
              v129 = *(v125 + 48);
              v128 = v125 + 48;
              if (v129 >= *(v128 - 24))
              {
                v123 = v127;
              }

              else
              {
                v126 = v128;
              }
            }

            v130 = *v126;
            *(v124 + 16) = *(v126 + 16);
            *v124 = v130;
            v124 = v126;
          }

          while (v123 <= ((v122 - 2) >> 1));
          a2 -= 24;
          if (v126 == a2)
          {
            result = v176;
            *(v126 + 16) = v203;
            *v126 = v176;
          }

          else
          {
            v131 = *a2;
            *(v126 + 16) = *(a2 + 16);
            *v126 = v131;
            result = v176;
            *(a2 + 16) = v203;
            *a2 = v176;
            v132 = v126 - v12 + 24;
            if (v132 >= 25)
            {
              v133 = (-2 - 0x5555555555555555 * (v132 >> 3)) >> 1;
              v134 = v12 + 24 * v133;
              v135 = *v126;
              if (*v126 < *v134)
              {
                v152 = *(v126 + 8);
                do
                {
                  v136 = v126;
                  v126 = v134;
                  v137 = *v134;
                  *(v136 + 16) = *(v134 + 16);
                  *v136 = v137;
                  if (!v133)
                  {
                    break;
                  }

                  v133 = (v133 - 1) >> 1;
                  v134 = v12 + 24 * v133;
                }

                while (v135 < *v134);
                *v126 = v135;
                result = v152;
                *(v126 + 8) = v152;
              }
            }
          }
        }

        while (v122-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = v9->n128_u64[0];
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*v12 >= *v16)
      {
        if (v18 < v17)
        {
          v184 = v16[2];
          v155 = *v16;
          v22 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v184;
          *v9 = v155;
          if (*v12 < *v16)
          {
            v185 = *(v12 + 16);
            v156 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[2];
            *v12 = v23;
            v16[2] = v185;
            *v16 = v156;
          }
        }
      }

      else
      {
        if (v18 < v17)
        {
          v182 = *(v12 + 16);
          v153 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v188 = *(v12 + 16);
        v159 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[2];
        *v12 = v26;
        v16[2] = v188;
        *v16 = v159;
        if (*v16 < v9->n128_u64[0])
        {
          v182 = v16[2];
          v153 = *v16;
          v27 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v182;
          *v9 = v153;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v32 = *(v29 - 24);
      v30 = v29 - 24;
      v31 = v32;
      v33 = *v10;
      if (*(v12 + 24) >= v32)
      {
        if (v31 < v33)
        {
          v189 = *(v30 + 16);
          v160 = *v30;
          v37 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v189;
          *v10 = v160;
          if (*v28 < *v30)
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = *(v30 + 16);
            *v28 = *v30;
            *(v12 + 40) = v40;
            *(v30 + 16) = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v31 < v33)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = *(v30 + 16);
        *v28 = *v30;
        *(v12 + 40) = v45;
        *(v30 + 16) = v44;
        *v30 = v43;
        if (*v30 < *v10)
        {
          v191 = *(v30 + 16);
          v162 = *v30;
          v46 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v46;
          v34 = v162;
          *(a2 - 32) = v191;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v51 = *(v48 + 24);
      v49 = v48 + 24;
      v50 = v51;
      v52 = *v11;
      if (*(v12 + 48) >= v51)
      {
        if (v50 < v52)
        {
          v192 = *(v49 + 16);
          v163 = *v49;
          v56 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v192;
          *v11 = v163;
          if (*v47 < *v49)
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = *(v49 + 16);
            *v47 = *v49;
            *(v12 + 64) = v59;
            *(v49 + 16) = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v50 < v52)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = *(v49 + 16);
        *v47 = *v49;
        *(v12 + 64) = v62;
        *(v49 + 16) = v61;
        *v49 = v60;
        if (*v49 < *v11)
        {
          v193 = *(v49 + 16);
          v164 = *v49;
          v63 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v63;
          v53 = v164;
          *(a2 - 56) = v193;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = *v49;
      if (*v30 >= *v16)
      {
        if (v64 < v65)
        {
          v195 = v16[2];
          v166 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
          *(v49 + 16) = v195;
          *v49 = v166;
          if (*v30 < *v16)
          {
            v196 = *(v30 + 16);
            v167 = *v30;
            *v30 = *v16;
            *(v30 + 16) = v16[2];
            v16[2] = v196;
            *v16 = v167;
          }
        }
      }

      else
      {
        if (v64 < v65)
        {
          v194 = *(v30 + 16);
          v165 = *v30;
          *v30 = *v49;
          *(v30 + 16) = *(v49 + 16);
          goto LABEL_56;
        }

        v197 = *(v30 + 16);
        v168 = *v30;
        *v30 = *v16;
        *(v30 + 16) = v16[2];
        v16[2] = v197;
        *v16 = v168;
        if (*v16 < *v49)
        {
          v194 = v16[2];
          v165 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
LABEL_56:
          *(v49 + 16) = v194;
          *v49 = v165;
        }
      }

      v198 = *(v12 + 16);
      v169 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[2];
      *v12 = v66;
      v16[2] = v198;
      *v16 = v169;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v16 >= *v12)
    {
      if (v20 < v17)
      {
        v186 = *(v12 + 16);
        v157 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v186;
        *v9 = v157;
        if (*v16 < *v12)
        {
          v187 = v16[2];
          v158 = *v16;
          v25 = *v12;
          v16[2] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v187;
          *v12 = v158;
        }
      }

      goto LABEL_58;
    }

    if (v20 >= v17)
    {
      v190 = v16[2];
      v161 = *v16;
      v41 = *v12;
      v16[2] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v190;
      *v12 = v161;
      if (*v12 >= v9->n128_u64[0])
      {
        goto LABEL_58;
      }

      v183 = *(v12 + 16);
      v154 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v183 = v16[2];
      v154 = *v16;
      v21 = *v9;
      v16[2] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v183;
    *v9 = v154;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || v67 < *(v12 - 24))
    {
      v68 = 0;
      v150 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v67 < v69);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v67 >= v73);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v67 >= v72);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v199;
          *v74 = v170;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v67 < v76);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v67 >= v77);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v150;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, (v12 - 24), v150);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v12, a2, v80))
      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v151 = *(v12 + 8);
      if (v9->n128_u64[0] >= v67)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (*v12 >= v67);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v81 >= v67);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v84 < v67);
      }

      while (v12 < v83)
      {
        v200 = *(v12 + 16);
        v171 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v200;
        *v83 = v171;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v86 >= v67);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v87 < v67);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v151;
      *(v12 - 16) = v151;
    }
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v94;
  if (*v12 >= v92)
  {
    if (v92 >= v93)
    {
      return result;
    }

    result = *v91;
    v139 = *(v12 + 40);
    v140 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v140;
    v89[1].n128_u64[0] = v139;
    *v89 = result;
    goto LABEL_187;
  }

  if (v92 < v93)
  {
    goto LABEL_106;
  }

  v205 = *(v12 + 16);
  v179 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v179;
  *v91 = v179;
  *(v12 + 40) = v205;
  if (*(v12 + 24) < v89->n128_u64[0])
  {
    result = *v91;
    v145 = *(v12 + 40);
    v146 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v146;
    v89[1].n128_u64[0] = v145;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a2->n128_u64[0] < *a3)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (a2->n128_u64[0] < *a3)
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a4 < *a5)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a3 < *a4)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (a2->n128_u64[0] < *a3)
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*(a1 + 24) < v4->n128_u64[0])
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*a1 < *(a1 + 24))
      {
        v62 = *(a1 + 16);
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v63;
        v6[1].n128_u64[0] = v62;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (*a1 >= v20)
    {
      if (v20 < v22)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v24 < v6->n128_u64[0])
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v20 >= v22)
    {
      v55 = *(a1 + 16);
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v56;
      *(a1 + 40) = v55;
      if (*(a1 + 24) >= v22)
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v21->n128_u64[0] >= v23->n128_u64[0])
    {
      return 1;
    }

    v57 = *(a1 + 64);
    v58 = *v21;
    v59 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v59;
    *v23 = v58;
    *(a2 - 1) = v57;
    if (v6->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v60 = *(a1 + 40);
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v61;
    *(a1 + 64) = v60;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (*a1 >= v16)
  {
    if (v16 < v14)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v17 < v15->n128_u64[0])
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v16 >= v14)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (*(a1 + 24) < v14)
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = v13->n128_u64[0];
    v51 = *v47;
    if (v50 < *v47)
    {
      v65 = *(v47 + 8);
      v52 = v48;
      while (1)
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          break;
        }

        v52 -= 24;
        if (*(v53 + 24) >= v51)
        {
          v54 = a1 + v52 + 72;
          goto LABEL_39;
        }
      }

      v54 = a1;
LABEL_39:
      *v54 = v51;
      *(v54 + 8) = v65;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v18);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v122 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v76 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v76;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->u64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v85 = *v83;
            v84 = v83[1];
            v83 = v79;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v83;
              v87 = v82;
              while (1)
              {
                *(&v10->i64[1] + v87) = *(v10->i64 + v87);
                if (!v87)
                {
                  break;
                }

                result = (*a3)(v86, *(&v10->i64[-1] + v87));
                v87 -= 8;
                if ((result & 1) == 0)
                {
                  v88 = (&v10->i64[1] + v87);
                  goto LABEL_127;
                }
              }

              v88 = v10;
LABEL_127:
              *v88 = v86;
            }

            v79 = (v83 + 1);
            v82 += 8;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v117 = v9->i64[0];
          v116 = v9->i64[1];
          v9 = v79;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v9->i64[0];
            v119 = v9;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v79 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = (v11 - 2) >> 1;
        v123 = v89;
        do
        {
          v90 = v89;
          if (v123 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v9->i64[v91];
            if (2 * v89 + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v9->i64[v90];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v94 = *v93;
              do
              {
                v95 = v92;
                *v93 = *v92;
                if (v123 < v91)
                {
                  break;
                }

                v96 = (2 * v91) | 1;
                v92 = &v9->i64[v96];
                v97 = 2 * v91 + 2;
                if (v97 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v96 = v97;
                }

                result = (*a3)(*v92, v94);
                v93 = v95;
                v91 = v96;
              }

              while (!result);
              *v95 = v94;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v98 = v122;
        do
        {
          v99 = v98;
          v100 = 0;
          v124 = v9->i64[0];
          v101 = v9;
          do
          {
            v102 = &v101[v100];
            v103 = v102 + 1;
            v104 = (2 * v100) | 1;
            v105 = 2 * v100 + 2;
            if (v105 >= v11)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v107 = v102[2];
              v106 = v102 + 2;
              result = (*a3)(*(v106 - 1), v107);
              if (result)
              {
                v103 = v106;
                v100 = v105;
              }

              else
              {
                v100 = v104;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v100 <= ((v11 - 2) >> 1));
          v98 = v99 - 1;
          if (v103 == v99 - 1)
          {
            *v103 = v124;
          }

          else
          {
            *v103 = *v98;
            *v98 = v124;
            v108 = (v103 - v9 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &v9->i64[v110 >> 1];
              result = (*a3)(*v112, *v103);
              if (result)
              {
                v113 = *v103;
                do
                {
                  v114 = v112;
                  *v103 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v9->i64[v111];
                  result = (*a3)(*v112, v113);
                  v103 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = (*a3)();
      v43 = v9->i64[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v45;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v46 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v46)
      {
        v45 = v9->i64[v33];
        v9->i64[v12] = v45;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v45;
      }
    }

LABEL_54:
    v47 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v47;
LABEL_55:
    --a4;
    v48 = v9->i64[0];
    if (a5 & 1) != 0 || (v49 = (*a3)(v9[-1].i64[1], v9->i64[0]), v48 = v9->i64[0], (v49))
    {
      v50 = 0;
      do
      {
        v51 = (*a3)(v9->i64[++v50], v48);
      }

      while ((v51 & 1) != 0);
      v52 = (v9 + v50 * 8);
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (((*a3)(v55, v48) & 1) == 0);
      }

      else
      {
        do
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (!(*a3)(v54, v48));
      }

      if (v52 >= v53)
      {
        v61 = (v52 - 8);
      }

      else
      {
        v56 = &v9->i64[v50];
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v59 = v56[1];
            ++v56;
          }

          while (((*a3)(v59, v48) & 1) != 0);
          do
          {
            v60 = *--v57;
          }

          while (!(*a3)(v60, v48));
        }

        while (v56 < v57);
        v61 = (v56 - 1);
        a2 = v122;
      }

      if (v61 != v9)
      {
        v9->i64[0] = v61->i64[0];
      }

      v61->i64[0] = v48;
      if (v52 < v53)
      {
        goto LABEL_78;
      }

      v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v9, v61, a3);
      v10 = &v61->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(&v61->i64[1], a2, a3);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(v9, v61, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v61->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v48, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v9->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = (*a3)(v48, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v48, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v48, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v48;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

void std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1C7E70068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<ClipperLib::IntPoint>::__move_assign(uint64_t a1, __n128 *a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ClipperLib::IntPoint>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      __asm { FMOV            V0.2S, #-1.0 }

      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4[2] = _D0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, v9);
    }

    v16 = 24 * v6;
    v17 = 24 * v6 + 24 * a2;
    __asm { FMOV            V0.2S, #-1.0 }

    v19 = v16;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = _D0;
      v19 += 3;
    }

    while (v19 != v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v16 - v20;
    memcpy((v16 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v7 = *(a2 - 8);
    v5 = (a2 - 8);
    v6 = v7;
    v8 = *v4;
    if (*v4 < v7)
    {
      do
      {
        *v5 = v8;
        v5 = v4;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v8 = *v4;
      }

      while (*v4 < v6);
      *v5 = v6;
    }
  }

  return result;
}

uint64_t *std::list<long long>::__sort<std::__less<void,void>>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v4 = *a2;
      if (*(*a2 + 16) < result[2])
      {
        v6 = *v4;
        v5 = v4[1];
        *(v6 + 8) = v5;
        *v5 = v6;
        v7 = *result;
        *(v7 + 8) = v4;
        *v4 = v7;
        *result = v4;
        v4[1] = result;
        return v4;
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = (a3 >> 1) + 1;
      v11 = result;
      do
      {
        v11 = v11[1];
        --v10;
      }

      while (v10 > 1);
      v12 = std::list<long long>::__sort<std::__less<void,void>>(result, v11, a3 >> 1);
      result = std::list<long long>::__sort<std::__less<void,void>>(v11, a2, a3 - v9);
      v13 = v12[2];
      if (result[2] >= v13)
      {
        v15 = v12[1];
        i = result;
        result = v12;
      }

      else
      {
          ;
        }

        v16 = *i;
        v17 = *(*i + 8);
        v18 = *result;
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *v12;
        v15 = v12[1];
        *(v19 + 8) = result;
        *result = v19;
        *v12 = v16;
        *(v16 + 8) = v12;
      }

      if (v15 != i && i != a2)
      {
        v20 = i;
        do
        {
          v21 = v15[2];
          if (i[2] >= v21)
          {
            v15 = v15[1];
          }

          else
          {
              ;
            }

            v23 = *j;
            v24 = *(*j + 8);
            v25 = *i;
            *(v25 + 8) = v24;
            *v24 = v25;
            if (v20 == i)
            {
              v20 = j;
            }

            v27 = *v15;
            v26 = v15[1];
            *(v27 + 8) = i;
            *i = v27;
            *v15 = v23;
            *(v23 + 8) = v15;
            v15 = v26;
            i = j;
          }
        }

        while (v15 != v20 && i != a2);
      }
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA6EBE0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1CCA6EBF0](v20);
  return a1;
}

void sub_1C7E70720(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1CCA6EBF0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C7E706F4);
}

uint64_t drawingV1::Transform::Transform(uint64_t this)
{
  *this = &unk_1F4769938;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4769938;
  *(this + 32) = 0;
  return this;
}

void drawingV1::Transform::~Transform(drawingV1::Transform *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawingV1::Transform::Transform(drawingV1::Transform *this, const drawingV1::Transform *a2)
{
  *this = &unk_1F4769938;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 2) = result;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 7);
    *(this + 32) = v3 | 0x20;
    *(this + 7) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 6) = result;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t drawingV1::Transform::operator=(uint64_t a1, const drawingV1::Transform *a2)
{
  if (a1 != a2)
  {
    drawingV1::Transform::Transform(v6, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float drawingV1::swap(drawingV1 *this, drawingV1::Transform *a2, drawingV1::Transform *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

float drawingV1::Transform::Transform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4769938;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  return result;
}

{
  *a1 = &unk_1F4769938;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  return result;
}

uint64_t drawingV1::Transform::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F4769938;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a2 + 8);
    v9 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    *(a1 + 32) = v3;
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t drawingV1::Transform::formatText(drawingV1::Transform *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "a", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "b", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "c", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "d", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "tx", *(this + 6));
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "ty", *(this + 7));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Transform::readFrom(drawingV1::Transform *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_46;
        case 5:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_46;
        case 6:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_46;
        case 2:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_46;
        case 3:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_46:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_47:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawingV1::Transform::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 28);

  return PB::Writer::write(a2, v5);
}

BOOL drawingV1::Transform::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 0x20) == 0;
  if ((*(a1 + 32) & 0x20) != 0)
  {
    return (*(a2 + 32) & 0x20) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

uint64_t drawingV1::Transform::hash_value(drawingV1::Transform *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v5 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(this + 2);
  v1 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    v9 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    if ((*(this + 32) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
  }

LABEL_24:
  v9 = 0;
  if ((*(this + 32) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 7);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
}

void PKNoiseSmoothingFilter::run(PKNoiseSmoothingFilter *this)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - *(this + 6)) >> 3);
  std::vector<PKInputPoint>::resize(this + 10, v2);
  v3 = *(this + 13) * 0.5;
  if (v3 == 0.0)
  {
    v4 = *(this + 9);
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 136 * v4;
      do
      {
        v7 = *(this + 6) + v6;
        v8 = *(this + 10) + v6;
        v9 = *(v7 + 64);
        v11 = *(v7 + 16);
        v10 = *(v7 + 32);
        *(v8 + 48) = *(v7 + 48);
        *(v8 + 64) = v9;
        *(v8 + 16) = v11;
        *(v8 + 32) = v10;
        v13 = *(v7 + 96);
        v12 = *(v7 + 112);
        v14 = *(v7 + 80);
        *(v8 + 128) = *(v7 + 128);
        *(v8 + 96) = v13;
        *(v8 + 112) = v12;
        *(v8 + 80) = v14;
        *v8 = *v7;
        v6 += 136;
        --v5;
      }

      while (v5);
    }

    v15 = *(this + 4);
  }

  else
  {
    v15 = *(this + 9);
    if (v15 < v2)
    {
      v16 = dbl_1C801D710[*(this + 14) == 1];
      v17 = v3 / v16;
      v18 = vcvtpd_s64_f64(v17);
      v19 = v16 * ceil(v17);
      v20 = MEMORY[0x1E695EFF8];
      v21 = *(this + 6);
      v22 = *(this + 9);
      do
      {
        v23 = v21 + 136 * v22;
        v24 = *(this + 10) + 136 * v22;
        *v24 = *v23;
        v25 = *(v23 + 16);
        v26 = *(v23 + 32);
        v27 = *(v23 + 64);
        *(v24 + 48) = *(v23 + 48);
        *(v24 + 64) = v27;
        *(v24 + 16) = v25;
        *(v24 + 32) = v26;
        v28 = *(v23 + 80);
        v29 = *(v23 + 96);
        v30 = *(v23 + 112);
        *(v24 + 128) = *(v23 + 128);
        *(v24 + 96) = v29;
        *(v24 + 112) = v30;
        *(v24 + 80) = v28;
        v21 = *(this + 6);
        v31 = *(this + 9) - 1;
        if ((v18 & 0x8000000000000000) == 0)
        {
          v32 = 0;
          v33 = (v21 + 136 * v22);
          v34 = v33[4].f64[0];
          v35 = *v20;
          v36 = v34 - v19;
          v37 = -1 - 0xF0F0F0F0F0F0F0FLL * ((*(this + 7) - v21) >> 3);
          v38 = 0.0;
          do
          {
            if (v34 == v36)
            {
              if (v31 <= v22)
              {
                v31 = v22;
              }

              v39 = *v33;
            }

            else
            {
              v40 = (v21 + 136 * v22 + 64);
              v41 = v22;
              if (v22 >= 1)
              {
                while (*v40 > v36)
                {
                  v40 -= 17;
                  if (v41-- <= 1)
                  {
                    v41 = 0;
                    break;
                  }
                }
              }

              if (v41 <= v37)
              {
                v43 = -1 - 0xF0F0F0F0F0F0F0FLL * ((*(this + 7) - v21) >> 3);
              }

              else
              {
                v43 = v41;
              }

              v44 = (v21 + 200 + 136 * v41);
              v45 = v41 - 1;
              while (v45 - v43 != -1)
              {
                v46 = *v44;
                v44 += 17;
                ++v45;
                if (v46 >= v36)
                {
                  goto LABEL_27;
                }
              }

              v45 = v43;
LABEL_27:
              v47 = (v21 + 136 * v45);
              v48 = v47[4].f64[0];
              if (v31 <= v45)
              {
                v31 = v45;
              }

              if (v48 <= v36)
              {
                v39 = *v47;
                if (v45 != v37)
                {
                  v49 = (v21 + 136 * (v45 + 1));
                  v50 = v49[4].f64[0] - v48;
                  if (v31 <= v45 + 1)
                  {
                    v31 = v45 + 1;
                  }

                  if (v50 != 0.0)
                  {
                    v39 = vaddq_f64(v39, vmulq_n_f64(vsubq_f64(*v49, v39), (v36 - v48) / v50));
                  }
                }
              }

              else
              {
                v39 = *v47;
              }
            }

            v36 = v16 + v36;
            v35 = vaddq_f64(v35, v39);
            v38 = v38 + 1.0;
          }

          while (v32++ != ((2 * v18) & ~((2 * v18) >> 63)));
          if (v38 > 0.0)
          {
            *(*(this + 10) + 136 * v22) = vmulq_n_f64(v35, 1.0 / v38);
          }
        }

        if ((*(this + 16) & 1) != 0 || v31 < *(this + 4) - 1)
        {
          v15 = ++v22;
        }

        else
        {
          ++v22;
        }
      }

      while (v22 != v2);
    }
  }

  *(this + 9) = v15;
}

void PKNoiseSmoothingFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, a2, a3, a4);
  *(a1 + 112) = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 objectForKey:@"internalSettings.pathSmoothing.timeInterval"];
  v11 = PKDynamicCast(v6, v8);

  v9 = v11;
  if (v11)
  {
    [v11 doubleValue];
    *(a1 + 104) = v10;
    v9 = v11;
  }
}

uint64_t PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingEnded(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t PKInputBufferedFilter<PKInputPoint,PKInputPoint>::copyUpdatedRangeFromIndex(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 48))(a1);
  std::vector<PKInputPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKInputPoint*>,std::__wrap_iter<PKInputPoint*>>(a3, *(a3 + 8), (*v6 + 136 * a2), *(v6 + 8), 0xF0F0F0F0F0F0F0F1 * ((*(v6 + 8) - (*v6 + 136 * a2)) >> 3));
  return a1[9];
}

void *PKInputFilter<PKInputPoint,PKInputPoint>::reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 48))(a1);
  result[1] = *result;
  return result;
}

uint64_t PKInputBufferedFilter<PKInputPoint,PKInputPoint>::fetchInput(uint64_t a1)
{
  std::vector<PKInputPoint>::resize((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 56);

  return v2(a1);
}

void PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    (**v7)(v7, v8, a3, a4);
  }

  *(a1 + 24) = a4;
  *(a1 + 16) = 0;
}

char *std::vector<PKInputPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PKInputPoint*>,std::__wrap_iter<PKInputPoint*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xF0F0F0F0F0F0F0F1 * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0xF0F0F0F0F0F0F0FLL * ((v10 - *a1) >> 3);
    if (v12 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xF0F0F0F0F0F0F0)
    {
      v15 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(a1, v15);
    }

    v44 = 8 * (v13 >> 3);
    v45 = 136 * a5;
    v46 = v44;
    do
    {
      *v46 = *v7;
      v47 = *(v7 + 1);
      v48 = *(v7 + 2);
      v49 = *(v7 + 4);
      *(v46 + 48) = *(v7 + 3);
      *(v46 + 64) = v49;
      *(v46 + 16) = v47;
      *(v46 + 32) = v48;
      v50 = *(v7 + 5);
      v51 = *(v7 + 6);
      v52 = *(v7 + 7);
      *(v46 + 128) = *(v7 + 16);
      *(v46 + 96) = v51;
      *(v46 + 112) = v52;
      *(v46 + 80) = v50;
      v46 += 136;
      v7 += 136;
      v45 -= 136;
    }

    while (v45);
    memcpy((v44 + 136 * a5), v5, *(a1 + 8) - v5);
    v53 = *a1;
    v54 = v44 + 136 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v55 = v5 - v53;
    v56 = (v44 - (v5 - v53));
    memcpy(v56, v53, v55);
    v57 = *a1;
    *a1 = v56;
    *(a1 + 8) = v54;
    *(a1 + 16) = 0;
    if (v57)
    {
      operator delete(v57);
    }

    return v44;
  }

  v16 = v10 - __dst;
  if ((0xF0F0F0F0F0F0F0F1 * ((v10 - __dst) >> 3)) >= a5)
  {
    v34 = 17 * a5;
    v35 = &__dst[136 * a5];
    v36 = v10 - 136 * a5;
    v37 = *(a1 + 8);
    while (v36 < v10)
    {
      *v37 = *v36;
      v38 = *(v36 + 16);
      v39 = *(v36 + 32);
      v40 = *(v36 + 64);
      *(v37 + 48) = *(v36 + 48);
      *(v37 + 64) = v40;
      *(v37 + 16) = v38;
      *(v37 + 32) = v39;
      v41 = *(v36 + 80);
      v42 = *(v36 + 96);
      v43 = *(v36 + 112);
      *(v37 + 128) = *(v36 + 128);
      *(v37 + 96) = v42;
      *(v37 + 112) = v43;
      *(v37 + 80) = v41;
      v36 += 136;
      v37 += 136;
    }

    *(a1 + 8) = v37;
    if (v10 != v35)
    {
      memmove(&__dst[136 * a5], __dst, v10 - v35);
    }

    v33 = 8 * v34;
    v31 = v5;
    v32 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[136 * a5];
    v21 = v10 + v18;
    if (&v19[-136 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -136 * a5];
      do
      {
        v24 = v22 - v7;
        *v24 = *(v23 - v7);
        v25 = *(v23 - v7 + 16);
        v26 = *(v23 - v7 + 32);
        v27 = *(v23 - v7 + 64);
        *(v24 + 48) = *(v23 - v7 + 48);
        *(v24 + 64) = v27;
        *(v24 + 16) = v25;
        *(v24 + 32) = v26;
        v28 = *(v23 - v7 + 80);
        v29 = *(v23 - v7 + 96);
        v30 = *(v23 - v7 + 112);
        *(v24 + 128) = *(v23 - v7 + 128);
        *(v24 + 96) = v29;
        *(v24 + 112) = v30;
        *(v24 + 80) = v28;
        v23 += 136;
        v22 += 136;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[136 * a5], v5, v19 - v20);
    }

    v31 = v5;
    v32 = v7;
    v33 = v10 - v5;
LABEL_28:
    memmove(v31, v32, v33);
  }

  return v5;
}

void sub_1C7E73460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E752AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a28 = &a31;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a28);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float SegmentMix(IntPoint *a1, IntPoint *a2, IntPoint *a3, float a4, float a5)
{
  v5 = vsubq_s64(*a1, *a2);
  v6 = vabsq_s64(v5);
  v7 = vmovn_s64(vcgtq_u64(v6, vdupq_laneq_s64(v6, 1))).u8[0];
  v8 = 8;
  if (v7)
  {
    v8 = 0;
  }

  v9 = *(a2 + 1);
  if (v7)
  {
    v9 = *a2;
  }

  v10 = v5.i64[1];
  v11 = *(a3 + v8);
  if (v7)
  {
    v10 = v5.i64[0];
  }

  v12 = ((v11 - v9) / v10);
  return (1.0 - v12) * *(a2 + 4) + *(a1 + 4) * v12;
}

void ZFillCallback(IntPoint *a1, IntPoint *a2, IntPoint *a3, IntPoint *a4, IntPoint *a5, double a6, float a7)
{
  if (*(a5 + 4) < 0.0)
  {
    v10 = *(a1 + 4);
    if (v10 >= 0.0)
    {
      *(a5 + 4) = SegmentMix(a1, a2, a5, v10, a7);
    }

    else if (*(a1 + 5) >= 0.0)
    {
      *(a5 + 5) = 1065353216;
    }

    if (*(a3 + 5) >= 0.0)
    {
      *(a5 + 5) = 1065353216;
    }

    else
    {
      v11 = *(a3 + 4);
      if (v11 >= 0.0)
      {
        *(a5 + 4) = SegmentMix(a3, a4, a5, v11, a7);
      }
    }
  }
}

void sub_1C7E756BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7E75A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__18(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1C7E75F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E76288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  ClipperLib::PolyTree::~PolyTree(&a10);
  ClipperLib::Clipper::~Clipper(&a26);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E763C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void generateRectClipperPath(float64x2_t *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  std::vector<ClipperLib::IntPoint>::reserve(a2, 4uLL);
  v12 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v12;
  *&t1.tx = a1[2];
  CGAffineTransformMakeScale(&t2, 100.0, 100.0);
  CGAffineTransformConcat(&v36, &t1, &t2);
  v13 = *&v36.c;
  *a1 = *&v36.a;
  a1[1] = v13;
  a1[2] = *&v36.tx;
  v14 = a3;
  v13.f64[0] = a4;
  v15 = a5;
  v16 = a6;
  MinX = CGRectGetMinX(*(&v13 - 8));
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  MinY = CGRectGetMinY(v37);
  v31 = a1[2].f64[1] + MinY * a1[1].f64[1] + a1->f64[1] * MinX;
  v32 = a1[2].f64[0] + MinY * a1[1].f64[0] + a1->f64[0] * MinX;
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  v20 = CGRectGetMinY(v39);
  v21 = a1[2].f64[0] + v20 * a1[1].f64[0] + a1->f64[0] * MaxX;
  v22 = a1[2].f64[1] + v20 * a1[1].f64[1] + a1->f64[1] * MaxX;
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  v23 = CGRectGetMaxX(v40);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  MaxY = CGRectGetMaxY(v41);
  v25 = a1[2].f64[0] + MaxY * a1[1].f64[0] + a1->f64[0] * v23;
  v26 = a1[2].f64[1] + MaxY * a1[1].f64[1] + a1->f64[1] * v23;
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  v30 = CGRectGetMinX(v42);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  v27 = CGRectGetMaxY(v43);
  *&v36.a = v32;
  *&v36.b = v31;
  v36.c = -0.0078125;
  v33 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], v27), *a1, v30));
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a2, &v36);
  *&v36.a = v21;
  *&v36.b = v22;
  v36.c = -0.00781250185;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a2, &v36);
  *&v36.a = v25;
  *&v36.b = v26;
  v36.c = -0.00781250186;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a2, &v36);
  v28 = vmovn_s64(vcvtq_s64_f64(v33));
  *&v29 = v28.i32[0];
  *(&v29 + 1) = v28.i32[1];
  *&v36.a = v29;
  v36.c = -0.00781250187;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a2, &v36);
}

void sub_1C7E76B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7E77FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ClipperLib::ClipperBase *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  a67 = &a30;
  std::vector<std::vector<ClipperLib::PolyNode *>>::__destroy_vector::operator()[abi:ne200100](&a67);
  ClipperLib::PolyTree::~PolyTree(&a33);
  a33 = &a46;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a33);
  v68 = off_1F47698C0;
  *(&STACK[0x208] + *(v69 - 3)) = v68;
  std::__list_imp<long long>::clear(a9);
  v70 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v72;
    operator delete(v72);
  }

  ClipperLib::ClipperBase::~ClipperBase(a10);

  _Unwind_Resume(a1);
}

void sub_1C7E78ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v41 = v37;

  _Block_object_dispose(&a29, 8);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v40 - 152), 8);
  v43 = *(v40 - 104);
  if (v43)
  {
    *(v40 - 96) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1C7E78EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E79744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50, char a51)
{
  a50 = &a24;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a50);
  ClipperLib::PolyTree::~PolyTree(&a27);
  ClipperLib::Clipper::~Clipper(&a51);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7E79B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a43);
  _Block_object_dispose(&a34, 8);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  ClipperLib::Clipper::~Clipper(&a44);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1C7E79F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  ClipperLib::Clipper::~Clipper(&a30);
  _Unwind_Resume(a1);
}

void sub_1C7E7AD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  STACK[0x310] = v68;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);

  _Block_object_dispose(&a43, 8);
  STACK[0x310] = a24;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&STACK[0x310]);
  _Block_object_dispose(&a53, 8);
  a43 = v67;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a43);
  a53 = &a63;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a53);
  a43 = &a66;
  std::vector<Bucket>::__destroy_vector::operator()[abi:ne200100](&a43);

  _Block_object_dispose(&STACK[0x2B0], 8);
  a43 = a14;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a43);
  v70 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v70;
    operator delete(v70);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__75(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

id std::vector<PKStroke * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v12[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKStroke * {__strong}>>(v10);
    }

    v11 = (8 * v7);
    v12[0] = 0;
    v12[1] = v11;
    v12[3] = 0;
    *v11 = *a2;
    v12[2] = v11 + 1;
    std::vector<PKStroke * {__strong}>::__swap_out_circular_buffer(a1, v12);
    v6 = a1[1];
    result = std::__split_buffer<PKStroke * {__strong}>::~__split_buffer(v12);
  }

  else
  {
    result = *a2;
    *v4 = result;
    v6 = v4 + 1;
  }

  a1[1] = v6;
  return result;
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
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

__n128 __Block_byref_object_copy__82(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __copy_helper_block_ea8_40c71_ZTSNSt3__16vectorIU8__strongP7NSArrayIP8PKStrokeENS_9allocatorIS6_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__init_with_size[abi:ne200100]<NSArray<PKStroke *> * {__strong}*,NSArray<PKStroke *> * {__strong}*>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void sub_1C7E7BA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  _Block_object_dispose(&a34, 8);
  *(v53 - 248) = a9;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
  _Block_object_dispose(&a43, 8);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__90(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__91(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C7E7BD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose((v11 - 144), 8);
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::vector<std::vector<ClipperLib::IntPoint>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<ClipperLib::IntPoint>*>,std::__wrap_iter<std::vector<ClipperLib::IntPoint>*>>(char **result, char **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<ClipperLib::IntPoint>>::__move_range(result, a2, result[1], &a2[3 * a5]);
        v17 = (v6 + 8 * v18);
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(result, (v16 + a3), a4, result[1]);
        v8[1] = result;
        if (v16 < 1)
        {
          return result;
        }

        std::vector<std::vector<ClipperLib::IntPoint>>::__move_range(v8, a2, v10, &a2[3 * a5]);
        v17 = (v16 + v6);
      }

      return std::__copy_impl::operator()[abi:ne200100]<std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *,std::vector<ClipperLib::IntPoint> *>(&v29, v6, v17, a2);
    }

    v11 = *result;
    v12 = a5 - 0x5555555555555555 * ((v10 - *result) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v33 = result;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(result, v15);
    }

    v19 = (8 * (v13 >> 3));
    v29 = 0;
    v30 = v19;
    v31 = v19;
    v32 = 0;
    v20 = &v19[24 * a5];
    v21 = 24 * a5;
    do
    {
      *v19 = 0;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v19, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      v19 += 24;
      v6 += 24;
      v21 -= 24;
    }

    while (v21);
    v22 = v30;
    memcpy(v20, a2, v8[1] - a2);
    v23 = *v8;
    v24 = &v20[v8[1] - a2];
    v8[1] = a2;
    v25 = a2 - v23;
    v26 = v22 - (a2 - v23);
    memcpy(v26, v23, v25);
    v27 = *v8;
    *v8 = v26;
    v8[1] = v24;
    v28 = v8[2];
    v8[2] = v32;
    v31 = v27;
    v32 = v28;
    v29 = v27;
    v30 = v27;
    return std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(&v29);
  }

  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v5 += 24;
    v6 += 24;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v7 = (v4 - 24);
    v8 = a4 - v4;
    v9 = (a2 + v4 - 24 - a4);
    do
    {
      std::vector<ClipperLib::IntPoint>::__move_assign(v7, v9);
      v7 -= 24;
      v9 = (v9 - 24);
      v8 += 24;
    }

    while (v8);
  }
}

void ClipperLib::PolyTree::~PolyTree(ClipperLib::PolyTree *this)
{
  ClipperLib::PolyTree::~PolyTree(this);

  JUMPOUT(0x1CCA6ECB0);
}

{
  *this = &unk_1F4769AC8;
  ClipperLib::PolyTree::Clear(this);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  ClipperLib::PolyNode::~PolyNode(this);
}

void std::vector<std::vector<ClipperLib::PolyNode *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ClipperLib::PolyNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ClipperLib::PolyNode **>,std::__wrap_iter<ClipperLib::PolyNode **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = &v10[-8 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 8;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[v20];
    if (&v21[-8 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -8 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

void *std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

      std::vector<CGPoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<PKStroke * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKStroke * {__strong}>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<PKStroke * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Bucket>::push_back[abi:ne200100](void ***a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = (v3 - *a1) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - *a1;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = v8 << 6;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 40) = *(a2 + 40);
    *(v12 + 56) = *(a2 + 56);
    v7 = (v8 << 6) + 64;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v12 + *a1 - v14;
      v17 = *a1;
      do
      {
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = *v17;
        *(v16 + 16) = v17[2];
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v18 = *(v17 + 3);
        v19 = *(v17 + 5);
        *(v16 + 56) = v17[7];
        *(v16 + 40) = v19;
        *(v16 + 24) = v18;
        v17 += 8;
        v16 += 64;
      }

      while (v17 != v14);
      do
      {
        v20 = *v13;
        if (*v13)
        {
          v13[1] = v20;
          operator delete(v20);
        }

        v13 += 8;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v7;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    v3[7] = *(a2 + 56);
    *(v3 + 5) = v6;
    *(v3 + 3) = v5;
    v7 = (v3 + 8);
  }

  a1[1] = v7;
}

void *std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void ___ZL12sliceBucketsPNSt3__16vectorINS0_IN10ClipperLib8IntPointENS_9allocatorIS2_EEEENS3_IS5_EEEERNS0_IU8__strongP8PKStrokeNS3_ISB_EEEERNS0_I6BucketNS3_ISF_EEEERNS0_IU8__strongP7NSArrayISA_ENS3_ISM_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(**(a1 + 32) + (a2 << 6) + 8) - *(**(a1 + 32) + (a2 << 6))) >> 3];
  v4 = **(a1 + 32) + (a2 << 6);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v5 != v6)
  {
    [v14 addObject:*(**(a1 + 40) + 8 * *v5++)];
  }

  v7 = [PKStroke sliceWithEraser:*(a1 + 48) toClip:v14];
  v8 = 0;
  v9 = a2 << 6;
  while (v8 < [v7 count])
  {
    v10 = *(*(**(a1 + 32) + v9) + 8 * v8);
    v11 = [v7 objectAtIndexedSubscript:v8];
    v12 = **(a1 + 56);
    v13 = *(v12 + 8 * v10);
    *(v12 + 8 * v10) = v11;

    ++v8;
  }
}

void *std::vector<PKStroke * {__strong}>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKStroke * {__strong}>>(a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__init_with_size[abi:ne200100]<NSArray<PKStroke *> * {__strong}*,NSArray<PKStroke *> * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<Bucket>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 8);
        v6 -= 64;
        v7 = v8;
        if (v8)
        {
          *(v4 - 7) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void PKProtobufUtilitiesFormatTooNew(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A578];
    v3 = _PencilKitBundle();
    v4 = [v3 localizedStringForKey:@"Apple Drawing Format is from a future version that is too new." value:@"Apple Drawing Format is from a future version that is too new." table:@"Localizable"];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    *a1 = [v2 errorWithDomain:*MEMORY[0x1E696A250] code:2 userInfo:v5];
  }
}

void PKProtobufUtilitiesMalformedError(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A578];
    v3 = _PencilKitBundle();
    v4 = [v3 localizedStringForKey:@"Apple Drawing Format data is malformed." value:@"Apple Drawing Format data is malformed." table:@"Localizable"];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    *a1 = [v2 errorWithDomain:*MEMORY[0x1E696A250] code:3 userInfo:v5];
  }
}

uint64_t legacy_drawing::CommandID::CommandID(uint64_t this)
{
  *this = &unk_1F4769B00;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F4769B00;
  *(this + 20) = 0;
  return this;
}

void legacy_drawing::CommandID::~CommandID(legacy_drawing::CommandID *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t legacy_drawing::CommandID::CommandID(uint64_t this, const legacy_drawing::CommandID *a2)
{
  *this = &unk_1F4769B00;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 4u;
    *(this + 20) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 20) = v3 | 2;
    *(this + 12) = v6;
  }

  return this;
}

uint64_t legacy_drawing::CommandID::operator=(uint64_t a1, const legacy_drawing::CommandID *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::CommandID::CommandID(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    PB::Base::~Base(v5);
  }

  return a1;
}

_DWORD *legacy_drawing::swap(_DWORD *this, legacy_drawing::CommandID *a2, legacy_drawing::CommandID *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t legacy_drawing::CommandID::CommandID(uint64_t result, _DWORD *a2)
{
  *result = &unk_1F4769B00;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = &unk_1F4769B00;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

uint64_t legacy_drawing::CommandID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = &unk_1F4769B00;
    v3 = *(a2 + 8);
    *(a2 + 20) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

uint64_t legacy_drawing::CommandID::formatText(legacy_drawing::CommandID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "clock");
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "replicaID");
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "subclock");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::CommandID::readFrom(legacy_drawing::CommandID *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v54 = 0;
          v55 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v56 = (v40 + v39);
          v57 = v3 - v39;
          v58 = v39 + 1;
          while (1)
          {
            if (!v57)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_84;
            }

            v59 = v58;
            v60 = *v56;
            *(a2 + 1) = v59;
            v43 |= (v60 & 0x7F) << v54;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            ++v56;
            --v57;
            v58 = v59 + 1;
            v14 = v55++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_83;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_83:
          v3 = v59;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              break;
            }
          }
        }

LABEL_84:
        *(this + 3) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = (v32 + v31);
          v50 = v3 - v31;
          v51 = v31 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_80;
            }

            v52 = v51;
            v53 = *v49;
            *(a2 + 1) = v52;
            v35 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_79;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_79:
          v3 = v52;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_80:
        *(this + 4) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v61 = 0;
          v62 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v63 = (v24 + v23);
          v64 = v3 - v23;
          v65 = v23 + 1;
          while (1)
          {
            if (!v64)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_88;
            }

            v66 = v65;
            v67 = *v63;
            *(a2 + 1) = v66;
            v27 |= (v67 & 0x7F) << v61;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            ++v63;
            --v64;
            v65 = v66 + 1;
            v14 = v62++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_87;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_87:
          v3 = v66;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_88:
        *(this + 2) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v68 = 0;
          return v68 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_90:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t legacy_drawing::CommandID::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 20) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:

  return PB::Writer::writeVarInt(a2);
}

BOOL legacy_drawing::CommandID::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t legacy_drawing::CommandID::hash_value(legacy_drawing::CommandID *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 2);
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

void sub_1C7E7E46C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *std::vector<double>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_1C7E7E80C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7E8192C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C7E82A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKHoverController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL isPencilGesture(UIHoverGestureRecognizer *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [(UIHoverGestureRecognizer *)v1 _allActiveTouches];
    if ([v2 count] == 1)
    {
      v3 = [v2 anyObject];
      v4 = v3;
      if (v3 && [v3 type] == 2)
      {
        v4 = v4;
        v5 = v4;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5 != 0;
}

void sub_1C7E83CDC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1C7E840F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E86650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E86904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7E87168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKImageRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _fuzzOneInput(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:a1 length:a2];
  [PKImageRenderer _fuzzTestUnzippedData:v2];

  return 0;
}

void sub_1C7E8BDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1C7E8C248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t drawingV1::Ink::Ink(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4769CB0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4769CB0;
  return this;
}

void drawingV1::Ink::~Ink(drawingV1::Ink *this)
{
  *this = &unk_1F4769CB0;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

{
  drawingV1::Ink::~Ink(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t drawingV1::Ink::Ink(uint64_t this, const drawingV1::Ink *a2)
{
  *(this + 8) = 0;
  *this = &unk_1F4769CB0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    v2 = *(a2 + 3);
    *(this + 32) |= 1u;
    *(this + 24) = v2;
  }

  return this;
}

uint64_t drawingV1::Ink::operator=(uint64_t a1, const drawingV1::Ink *a2)
{
  if (a1 != a2)
  {
    drawingV1::Ink::Ink(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    drawingV1::Ink::~Ink(v7);
  }

  return a1;
}

uint64_t drawingV1::swap(uint64_t this, drawingV1::Ink *a2, drawingV1::Ink *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  v6 = *(this + 24);
  v7 = *(a2 + 3);
  *(this + 16) = *(a2 + 2);
  *(this + 24) = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  return this;
}

uint64_t drawingV1::Ink::Ink(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *a1 = &unk_1F4769CB0;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4, v8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t drawingV1::Ink::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawingV1::Ink::Ink(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    drawingV1::Ink::~Ink(v7);
  }

  return a1;
}

uint64_t drawingV1::Ink::formatText(drawingV1::Ink *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "color");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 32))
  {
    PB::TextFormatter::format(a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Ink::readFrom(drawingV1::Ink *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 32) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              v28 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(this + 3) = v28;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t drawingV1::Ink::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 32))
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL drawingV1::Ink::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !drawingV1::Color::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? *(a1 + 16) : *v6;
  v13 = v11 >= 0 ? *(a2 + 16) : *v7;
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

LABEL_25:
  result = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

unint64_t drawingV1::Ink::hash_value(drawingV1::Ink *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = drawingV1::Color::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](&v8, v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 32))
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = 0;
  }

  return v5 ^ v3 ^ v6;
}

uint64_t drawingV1::Ink::makeColor(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
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

void sub_1C7E8ECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<CGPoint,anonymous namespace::HashFunctions,std::equal_to<CGPoint>,std::allocator<CGPoint>>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1C7E8F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  else
  {
    return v2 < v3;
  }
}

void sub_1C7E8F5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7E8F934(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7E8FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Unwind_Resume(a1);
}

__n128 *std::vector<CGPoint>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<CGPoint>::emplace_back<CGPoint const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_1C7E900E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::unordered_set<anonymous namespace::Edge,anonymous namespace::HashFunctions,std::equal_to<anonymous namespace::Edge>,std::allocator<anonymous namespace::Edge>>::insert[abi:ne200100](void *a1, double *a2)
{
  result = PKHashBytes(a2, 32);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_27;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = result;
    if (result >= *&v5)
    {
      v7 = result % v5.i32[0];
    }
  }

  else
  {
    v7 = (*&v5 + 0xFFFFFFFFLL) & result;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == result)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_27;
    }

LABEL_26:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_26;
  }

  if (v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_26;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PolarPoint>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<CGPoint>::emplace_back<CGPoint const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void std::__hash_table<CGPoint,anonymous namespace::HashFunctions,std::equal_to<CGPoint>,std::allocator<CGPoint>>::__rehash_unique[abi:ne200100](uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      a6.n128_u64[0] = a2[-1].n128_u64[0];
      v8 = a1[1].n128_f64[0];
      v9 = a2[-1].n128_f64[1] < a1[1].n128_f64[1];
      if (a6.n128_f64[0] != v8)
      {
        v9 = a6.n128_f64[0] < v8;
      }

      if (v9)
      {
        v10 = *a1;
        a6 = a1[1];
        v11 = a2[-1];
        *a1 = a2[-2];
        a1[1] = v11;
        a2[-2] = v10;
        a2[-1] = a6;
      }
    }

    else if (a3 > 128)
    {
      v27 = a4;
      v28 = a3 >> 1;
      v29 = &a1[2 * (a3 >> 1)];
      v30 = a3 >> 1;
      if (a3 <= a5)
      {
        v32 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(a1, v29, v30, a4, a6);
        v33 = &v27[2 * v28];
        a6.n128_u64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v33, v32).n128_u64[0];
        v34 = &v27[2 * a3];
        v35 = v33;
        while (v35 != v34)
        {
          v36 = v35[1].n128_f64[0];
          v37 = v27[1].n128_f64[0];
          v38 = v35[1].n128_f64[1] < v27[1].n128_f64[1];
          if (v36 != v37)
          {
            v38 = v36 < v37;
          }

          if (v38)
          {
            a6 = *v35;
            v39 = v35[1];
            v35 += 2;
          }

          else
          {
            a6 = *v27;
            v39 = v27[1];
            v27 += 2;
          }

          *v7 = a6;
          v7[1] = v39;
          v7 += 2;
          if (v27 == v33)
          {
            while (v35 != v34)
            {
              a6 = *v35;
              v41 = v35[1];
              v35 += 2;
              *v7 = a6;
              v7[1] = v41;
              v7 += 2;
            }

            return a6.n128_f64[0];
          }
        }

        while (v27 != v33)
        {
          a6 = *v27;
          v40 = v27[1];
          v27 += 2;
          *v7 = a6;
          v7[1] = v40;
          v7 += 2;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(a1, v29, v30, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v27, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(v7->n128_f64, v7[2 * (a3 >> 1)].n128_f64, a2->n128_f64, a3 >> 1, a3 - (a3 >> 1), v27, a5, v31).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v13 = a1 + 2;
      if (&a1[2] != a2)
      {
        v14 = 0;
        v15 = a1;
        do
        {
          a6.n128_u64[0] = v15[3].n128_u64[0];
          v16 = v15[3].n128_f64[1];
          v17 = v15[1].n128_f64[0];
          v18 = v15[1].n128_f64[1];
          v15 = v13;
          v19 = v16 < v18;
          if (a6.n128_f64[0] != v17)
          {
            v19 = a6.n128_f64[0] < v17;
          }

          if (v19)
          {
            v43 = *v15;
            v20 = v14;
            while (1)
            {
              v21 = (a1 + v20);
              v22 = *(a1 + v20 + 16);
              v21[2] = *(a1 + v20);
              v21[3] = v22;
              if (!v20)
              {
                break;
              }

              v23 = v21[-1].n128_f64[0];
              v24 = v16 < v21[-1].n128_f64[1];
              if (a6.n128_f64[0] != v23)
              {
                v24 = a6.n128_f64[0] < v23;
              }

              v20 -= 32;
              if (!v24)
              {
                v25 = &a1[2] + v20;
                goto LABEL_22;
              }
            }

            v25 = a1;
LABEL_22:
            *v25 = v43;
            *(v25 + 16) = a6.n128_u64[0];
            *(v25 + 24) = v16;
          }

          v13 = v15 + 2;
          v14 += 32;
        }

        while (&v15[2] != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v10 = a2 - 2;
      v11 = a2[-1].n128_f64[0];
      v12 = a1[1].n128_f64[0];
      v13 = a2[-1].n128_f64[1] < a1[1].n128_f64[1];
      if (v11 != v12)
      {
        v13 = v11 < v12;
      }

      if (v13)
      {
        v14 = a2[-1];
        *a4 = *v10;
        a4[1] = v14;
        result = *a1;
        v15 = a1[1];
      }

      else
      {
        v33 = a1[1];
        *a4 = *a1;
        a4[1] = v33;
        result = *v10;
        v15 = a2[-1];
      }

      a4[2] = result;
      a4[3] = v15;
    }

    else if (a3 == 1)
    {
      result = *a1;
      v9 = a1[1];
      *a4 = *a1;
      a4[1] = v9;
    }

    else if (a3 > 8)
    {
      v34 = &a1[2 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(a1, v34, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(&v8[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v35 = &v8[2 * (a3 >> 1)];
      while (v35 != a2)
      {
        v36 = v35[1].n128_f64[0];
        v37 = v8[1].n128_f64[0];
        v38 = v35[1].n128_f64[1] < v8[1].n128_f64[1];
        if (v36 != v37)
        {
          v38 = v36 < v37;
        }

        if (v38)
        {
          result = *v35;
          v39 = v35[1];
          v35 += 2;
        }

        else
        {
          result = *v8;
          v39 = v8[1];
          v8 += 2;
        }

        *v5 = result;
        v5[1] = v39;
        v5 += 2;
        if (v8 == v34)
        {
          while (v35 != a2)
          {
            result = *v35;
            v41 = v35[1];
            v35 += 2;
            *v5 = result;
            v5[1] = v41;
            v5 += 2;
          }

          return result;
        }
      }

      while (v8 != v34)
      {
        result = *v8;
        v40 = v8[1];
        v8 += 2;
        *v5 = result;
        v5[1] = v40;
        v5 += 2;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v16 = a1[1];
      *a4 = *a1;
      a4[1] = v16;
      v17 = a1 + 2;
      if (&a1[2] != a2)
      {
        v18 = 0;
        v19 = a4;
        do
        {
          v20 = v8;
          v21 = v19;
          v8 = v17;
          v19 += 2;
          v22 = v20[3].n128_f64[0];
          v23 = v21[2];
          v24 = v22 < v23;
          if (v22 == v23)
          {
            v24 = v20[3].n128_f64[1] < v21[3];
          }

          v25 = v19;
          if (v24)
          {
            v26 = *(v21 + 2);
            *v19 = *v21;
            v19[1] = v26;
            v25 = a4;
            if (v21 != a4)
            {
              v27 = v18;
              while (1)
              {
                v25 = (a4 + v27);
                v28 = v20[3].n128_f64[0];
                v29 = *(a4[-1].n128_f64 + v27);
                v30 = v20[3].n128_f64[1] < *(&a4->n128_f64[-1] + v27);
                if (v28 != v29)
                {
                  v30 = v28 < v29;
                }

                if (!v30)
                {
                  break;
                }

                v31 = v25[-1];
                *v25 = v25[-2];
                v25[1] = v31;
                v27 -= 32;
                if (!v27)
                {
                  v25 = a4;
                  break;
                }
              }
            }
          }

          result = *v8;
          v32 = v8[1];
          *v25 = *v8;
          v25[1] = v32;
          v17 = v8 + 2;
          v18 += 32;
        }

        while (&v8[2] != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(double *a1, double *a2, double *a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v8 = a5;
    while (a4 > a7 && v8 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      result.n128_f64[0] = a2[2];
      v13 = -a4;
      while (1)
      {
        v14 = &a1[v12 / 8];
        v15 = a1[v12 / 8 + 2];
        v16 = a2[3] < a1[v12 / 8 + 3];
        if (result.n128_f64[0] != v15)
        {
          v16 = result.n128_f64[0] < v15;
        }

        if (v16)
        {
          break;
        }

        v12 += 32;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v18 = -v13;
      if (-v13 >= v8)
      {
        if (v13 == -1)
        {
          v94 = &a1[v12 / 8];
          v108 = *&a1[v12 / 8];
          v112 = *&a1[v12 / 8 + 2];
          v95 = *(a2 + 1);
          *v94 = *a2;
          *(v94 + 1) = v95;
          result = v108;
          *a2 = v108;
          *(a2 + 1) = v112;
          return result;
        }

        v29 = v18 / 2;
        v30 = &a1[4 * (v18 / 2)];
        v20 = a2;
        if (a2 != a3)
        {
          v31 = (a3 - a2) >> 5;
          v32 = v30[v12 / 8 + 2];
          v20 = a2;
          do
          {
            v33 = v31 >> 1;
            v34 = &v20[4 * (v31 >> 1)];
            v35 = v34[2];
            v36 = v34[3] < v30[v12 / 8 + 3];
            if (v35 != v32)
            {
              v36 = v35 < v32;
            }

            v37 = v34 + 4;
            v31 += ~(v31 >> 1);
            if (v36)
            {
              v20 = v37;
            }

            else
            {
              v31 = v33;
            }
          }

          while (v31);
        }

        v19 = (v20 - a2) >> 5;
        v21 = &v30[v12 / 8];
      }

      else
      {
        v19 = v8 / 2;
        v20 = &a2[4 * (v8 / 2)];
        v21 = a2;
        if (a2 - a1 != v12)
        {
          v22 = v20[2];
          v23 = (a2 - a1 - v12) >> 5;
          v21 = &a1[v12 / 8];
          do
          {
            v24 = v23 >> 1;
            v25 = &v21[4 * (v23 >> 1)];
            v26 = v25[2];
            v27 = v25[3] > v20[3];
            if (v26 != v22)
            {
              v27 = v26 > v22;
            }

            v28 = v25 + 4;
            v23 += ~(v23 >> 1);
            if (v27)
            {
              v23 = v24;
            }

            else
            {
              v21 = v28;
            }
          }

          while (v23);
        }

        v29 = (v21 - a1 - v12) >> 5;
      }

      v38 = v20;
      v39 = a2 - v21;
      if (a2 != v21)
      {
        v38 = v21;
        v40 = v20 - a2;
        if (v20 != a2)
        {
          if (v21 + 4 == a2)
          {
            v106 = *v21;
            v109 = *(v21 + 1);
            v41 = v20 - a2;
            v102 = a6;
            v104 = a7;
            v42 = a3;
            v43 = v19;
            v100 = v29;
            memmove(v21, a2, v20 - a2);
            v29 = v100;
            a6 = v102;
            v19 = v43;
            a7 = v104;
            a3 = v42;
            v38 = (v21 + v41);
            *v38 = v106;
            *(v38 + 1) = v109;
          }

          else if (a2 + 4 == v20)
          {
            v38 = v21 + 4;
            v107 = *(v20 - 2);
            v110 = *(v20 - 1);
            if (v20 - 4 != v21)
            {
              v103 = a6;
              v105 = a7;
              v44 = a3;
              v45 = v19;
              v101 = v29;
              memmove(v21 + 4, v21, (v20 - 4) - v21);
              v29 = v101;
              a6 = v103;
              v19 = v45;
              a7 = v105;
              a3 = v44;
            }

            *v21 = v107;
            *(v21 + 1) = v110;
          }

          else
          {
            v46 = v39 >> 5;
            if (v39 >> 5 == v40 >> 5)
            {
              v47 = v21 + 4;
              v48 = a2 + 4;
              do
              {
                v50 = *(v47 - 2);
                v49 = *(v47 - 1);
                v51 = *(v48 - 1);
                *(v47 - 2) = *(v48 - 2);
                *(v47 - 1) = v51;
                *(v48 - 2) = v50;
                *(v48 - 1) = v49;
                if (v47 == a2)
                {
                  break;
                }

                v47 += 4;
                v82 = v48 == v20;
                v48 += 4;
              }

              while (!v82);
              v38 = a2;
            }

            else
            {
              v52 = v40 >> 5;
              v53 = v39 >> 5;
              do
              {
                v54 = v53;
                v53 = v52;
                v52 = v54 % v52;
              }

              while (v52);
              v55 = &v21[4 * v53];
              do
              {
                v56 = *(v55 - 2);
                v57 = *(v55 - 1);
                v55 -= 4;
                v111 = v57;
                v58 = (v55 + v39);
                v59 = v55;
                do
                {
                  v60 = v58;
                  v61 = *(v58 + 1);
                  *v59 = *v58;
                  *(v59 + 1) = v61;
                  v62 = v20 - v58;
                  v58 += 4 * v46;
                  v63 = __OFSUB__(v46, v62 >> 5);
                  v65 = v46 - (v62 >> 5);
                  v64 = (v65 < 0) ^ v63;
                  v66 = &v21[4 * v65];
                  if (!v64)
                  {
                    v58 = v66;
                  }

                  v59 = v60;
                }

                while (v58 != v55);
                *v60 = v56;
                *(v60 + 1) = v111;
              }

              while (v55 != v21);
              v38 = (v21 + v40);
            }
          }
        }
      }

      a4 = -v13 - v29;
      v67 = v8 - v19;
      if (v29 + v19 >= v8 - (v29 + v19) - v13)
      {
        v72 = v29;
        v73 = -v13 - v29;
        v74 = v19;
        v69 = a6;
        v70 = a7;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(v38, v20, a3, v73, v67);
        v20 = v21;
        v67 = v74;
        a4 = v72;
        a3 = v38;
      }

      else
      {
        v68 = &a1[v12 / 8];
        v69 = a6;
        v70 = a7;
        v71 = a3;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<PolarPoint *>>(v68, v21, v38, v29, v19);
        a3 = v71;
        v14 = v38;
      }

      v8 = v67;
      a2 = v20;
      a1 = v14;
      a6 = v69;
      a7 = v70;
      if (!v67)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != a1)
      {
        v85 = -a6;
        v86 = a6;
        v87 = a1;
        do
        {
          v88 = *v87;
          v89 = *(v87 + 2);
          v87 += 4;
          *v86 = v88;
          v86[1] = v89;
          v86 += 2;
          v85 -= 32;
        }

        while (v87 != a2);
        while (a2 != a3)
        {
          v90 = a2[2];
          v91 = a6[1].n128_f64[0];
          v92 = a2[3] < a6[1].n128_f64[1];
          if (v90 != v91)
          {
            v92 = v90 < v91;
          }

          if (v92)
          {
            result = *a2;
            v93 = *(a2 + 2);
            a2 += 4;
          }

          else
          {
            result = *a6;
            v93 = a6[1];
            a6 += 2;
          }

          *a1 = result;
          *(a1 + 1) = v93;
          a1 += 4;
          if (v86 == a6)
          {
            return result;
          }
        }

        memmove(a1, a6, -(a6 + v85));
      }
    }

    else if (a2 != a3)
    {
      v75 = 0;
      do
      {
        v76 = &a6[v75 / 0x10];
        result = *&a2[v75 / 8];
        v77 = *&a2[v75 / 8 + 2];
        *v76 = result;
        v76[1] = v77;
        v75 += 32;
      }

      while (&a2[v75 / 8] != a3);
      v78 = &a6[v75 / 0x10];
      while (a2 != a1)
      {
        v79 = v78[-1].n128_f64[0];
        v80 = *(a2 - 2);
        v81 = v78[-1].n128_f64[1] < *(a2 - 1);
        if (v79 != v80)
        {
          v81 = v79 < v80;
        }

        v82 = !v81;
        if (v81)
        {
          n128_f64 = a2 - 4;
        }

        else
        {
          n128_f64 = v78[-2].n128_f64;
        }

        result = *n128_f64;
        v84 = *(n128_f64 + 1);
        *(a3 - 2) = *n128_f64;
        *(a3 - 1) = v84;
        a3 -= 4;
        if (v82)
        {
          v78 -= 2;
        }

        else
        {
          a2 -= 4;
        }

        if (v78 == a6)
        {
          return result;
        }
      }

      if (v78 != a6)
      {
        v96 = 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          result = v78[-2];
          v97 = v78[-1];
          v98 = v78 - 2;
          v99 = &a3[v96];
          *v99 = result;
          *(v99 + 1) = v97;
          v96 -= 4;
          v78 = v98;
        }

        while (v98 != a6);
      }
    }
  }

  return result;
}

__CFString *PKPaletteVisualStateDescription(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E82DA048[a1];
  }
}

uint64_t PKPaletteVisualStateIsRegular(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1C801DB50[a1 - 1];
  }
}

uint64_t _PKPaletteVisualStateForPointInRectToSettle(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = CGRectGetWidth(*&a2) * 0.25;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v15 = CGRectGetHeight(v38) * 0.25;
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  v40 = CGRectInset(v39, v14, v15);
  v37.x = a6;
  v37.y = a7;
  if (CGRectContainsPoint(v40, v37))
  {
    return 3;
  }

  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  v36 = CGRectGetMidX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  MaxY = CGRectGetMaxY(v46);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  v31 = CGRectGetMidY(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v30 = CGRectGetMinX(v49);
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  v29 = CGRectGetMinY(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v28 = CGRectGetMaxX(v51);
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  v27 = CGRectGetMinY(v52);
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  v26 = CGRectGetMaxX(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  v25 = CGRectGetMaxY(v54);
  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  v24 = CGRectGetMinX(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  v23 = CGRectGetMaxY(v56);
  _PKPaletteClosestReferencePointFromPointInRect(a2, a3, a4, a5, a6, a7);
  if (MidX == v19 && MinY == v20)
  {
    return 4;
  }

  if (v36 == v19 && MaxY == v20)
  {
    return 5;
  }

  if (MaxX == v19 && MidY == v20)
  {
    return 7;
  }

  if (MinX == v19 && v31 == v20)
  {
    return 6;
  }

  if (v30 == v19 && v29 == v20 || v28 == v19 && v27 == v20 || v26 == v19 && v25 == v20)
  {
    if (a1)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v21 = 2;
    if (!a1)
    {
      v21 = 3;
    }

    if (v23 == v20 && v24 == v19)
    {
      return v21;
    }

    else
    {
      return 5;
    }
  }
}