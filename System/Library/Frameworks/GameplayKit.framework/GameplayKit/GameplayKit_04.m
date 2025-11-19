void *OpenSteer::PolygonObstacle::PolygonObstacle(void *this)
{
  *this = &unk_284B50708;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_284B50708;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *OpenSteer::PolygonObstacle::PolygonObstacle(void *a1, void *a2)
{
  *a1 = &unk_284B50708;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 == *a2;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 2);
  if (!v7)
  {
    std::vector<OpenSteer::Vec3>::__append((a1 + 1), v8);
    v5 = *a2;
    v6 = a2[1];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 2);
  }

  if (v6 != v5)
  {
    v9 = *v4;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    if (v8 <= 0xB)
    {
      v11 = 0;
LABEL_9:
      v12 = v9 + 12 * v11;
      v13 = v5 + 12 * v11;
      v14 = v10 - v11;
      do
      {
        v15 = *v13;
        *(v12 + 8) = *(v13 + 2);
        *v12 = v15;
        v12 += 12;
        v13 += 12;
        --v14;
      }

      while (v14);
      return a1;
    }

    v11 = 0;
    v17 = v9 + 12 * v10;
    v18 = v17 - 8;
    v19 = v5 + 12 * v10;
    v21 = v9 + 4 < v19 - 4 && v5 + 4 < v17 - 4;
    v23 = v9 + 8 < v19 && v5 + 8 < v17;
    if (v5 < v18 && v9 < v19 - 8)
    {
      goto LABEL_9;
    }

    if (v21)
    {
      goto LABEL_9;
    }

    if (v23)
    {
      goto LABEL_9;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    v25 = v10 & 0xFFFFFFFFFFFFFFF8;
    v26 = v5;
    v27 = *v4;
    do
    {
      v28 = v26[1];
      v30 = v26[4];
      v29 = v26[5];
      v31 = v26[2];
      v32 = v26[3];
      *v27 = *v26;
      v27[1] = v28;
      v27[2] = v31;
      v27[3] = v32;
      v27[4] = v30;
      v27[5] = v29;
      v27 += 6;
      v26 += 6;
      v25 -= 8;
    }

    while (v25);
    if (v8 != v11)
    {
      goto LABEL_9;
    }
  }

  return a1;
}

{
  *a1 = &unk_284B50708;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 == *a2;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 2);
  if (!v7)
  {
    std::vector<OpenSteer::Vec3>::__append((a1 + 1), v8);
    v5 = *a2;
    v6 = a2[1];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 2);
  }

  if (v6 != v5)
  {
    v9 = *v4;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    if (v8 <= 0xB)
    {
      v11 = 0;
LABEL_9:
      v12 = v10 - v11;
      v13 = 12 * v11;
      v14 = v9 + v13;
      v15 = v5 + v13;
      do
      {
        v16 = *v15;
        *(v14 + 8) = *(v15 + 2);
        *v14 = v16;
        v14 += 12;
        v15 += 12;
        --v12;
      }

      while (v12);
      return a1;
    }

    v11 = 0;
    v18 = v9 + 12 * v10;
    v19 = v18 - 8;
    v20 = v5 + 12 * v10;
    v22 = v9 + 4 < v20 - 4 && v5 + 4 < v18 - 4;
    v24 = v9 + 8 < v20 && v5 + 8 < v18;
    if (v5 < v19 && v9 < v20 - 8)
    {
      goto LABEL_9;
    }

    if (v22)
    {
      goto LABEL_9;
    }

    if (v24)
    {
      goto LABEL_9;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    v26 = v10 & 0xFFFFFFFFFFFFFFF8;
    v27 = v5;
    v28 = *v4;
    do
    {
      v29 = v27[1];
      v31 = v27[4];
      v30 = v27[5];
      v32 = v27[2];
      v33 = v27[3];
      *v28 = *v27;
      v28[1] = v29;
      v28[2] = v32;
      v28[3] = v33;
      v28[4] = v31;
      v28[5] = v30;
      v28 += 6;
      v27 += 6;
      v26 -= 8;
    }

    while (v26);
    if (v8 != v11)
    {
      goto LABEL_9;
    }
  }

  return a1;
}

void sub_2389E2548(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2389E26EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void OpenSteer::PolygonObstacle::findIntersectionWithVehiclePath(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *a3 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 2) >= 3)
  {
    v8 = (*(*a2 + 48))(a2);
    v38 = LODWORD(v8);
    (*(*a2 + 48))(a2);
    v35 = v9;
    v10 = (*(*a2 + 192))(a2);
    v34 = LODWORD(v10);
    (*(*a2 + 192))(a2);
    __p = 0;
    v43 = 0;
    v44 = 0;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v12)
    {
      v33 = v11;
      std::vector<long>::__append(&__p, 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 2));
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
      v11 = v33;
    }

    if (v13 != v12)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = (v12 + v14);
        LODWORD(v17) = *v16;
        HIDWORD(v17) = v16[2];
        *(__p + v15++) = v17;
        v12 = *(a1 + 8);
        v14 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v12) >> 2) > v15);
    }

    v18 = __p;
    if (v43 == __p)
    {
      *&v37 = 0;
      v32 = 3.4028e38;
      v4.i32[0] = 2139095039;
    }

    else
    {
      v19 = 0;
      v39 = __PAIR64__(v35, v38);
      *(&v20 + 1) = a4.n128_u64[1];
      v21 = vmla_n_f32(v39, __PAIR64__(v11, v34), a4.n128_f32[0]);
      v22 = (v43 - __p) >> 3;
      v4.i32[0] = 2139095039;
      *&v20 = 0;
      v37 = v20;
      v23 = 3.4028e38;
      do
      {
        v27 = v19 + 1;
        v28 = *&v18[8 * v19];
        if (v22 > v19 + 1)
        {
          v29 = v19 + 1;
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v18[8 * v29];
        v40 = 0;
        v41 = 0;
        GKClosestPointsBetweenLineSegments(&v41, &v40, v28, v30, v39, v21);
        v31 = vsub_f32(v40, v41);
        v32 = vaddv_f32(vmul_f32(v31, v31));
        if (v32 < v23)
        {
          *(&v24 + 1) = *(&v37 + 1);
          v25 = vsub_f32(v41, v39);
          v26 = vmul_f32(v25, v25);
          *&v24 = vbsl_s8(vdup_lane_s32(vcgt_f32(v4, vadd_f32(v26, vdup_lane_s32(v26, 1))), 0), v41, *&v37);
          v37 = v24;
          v4.f32[0] = fminf(vaddv_f32(v26), v4.f32[0]);
          v23 = v32;
        }

        else
        {
          v32 = v23;
        }

        v18 = __p;
        v22 = (v43 - __p) >> 3;
        v19 = v27;
      }

      while (v22 > v27);
    }

    if (v32 <= (*(*a2 + 176))(a2))
    {
      *a3 = 1;
      *(a3 + 4) = sqrtf(v4.f32[0]);
      *(a3 + 8) = v37;
      *(a3 + 16) = DWORD1(v37);
      *(a3 + 32) = a1;
    }

    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }
}

void sub_2389E2A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GKDoesLineSegmentIntersectPolygon(uint64_t a1, int a2, float32x2_t a3, float32x2_t a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = vsub_f32(a4, a3);
    v6 = vrev64_s32(v5);
    v7 = 1;
    __asm { FMOV            V3.4S, #1.0 }

    while (1)
    {
      v15 = v4 + 1;
      v16 = *(a1 + 8 * v4);
      if (v4 + 1 < a2)
      {
        v17 = v4 + 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a1 + 8 * v17);
      v19 = v4 + 1 < a2;
      v20 = vsub_f32(v18, v16);
      v21 = vsub_f32(v16, a3);
      v22 = vmul_f32(v20, v6);
      v23 = vsub_f32(v22, vdup_lane_s32(v22, 1));
      *v24.f32 = vmls_lane_f32(vmul_lane_f32(vzip1_s32(v5, v20), v21, 1), vzip2_s32(v5, v20), v21, 0);
      if (*v23.i32 == 0.0)
      {
        if (v24.f32[0] == 0.0 && v24.f32[1] == 0.0)
        {
          return v7 & 1;
        }
      }

      else
      {
        v24.i64[1] = v24.i64[0];
        v13 = vmulq_f32(v24, vdivq_f32(_Q3, vdupq_lane_s32(v23, 0)));
        v14.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2389FBDE0, v13)).u32[0];
        v14.i32[1] = vmovn_s32(vcgeq_f32(v13, xmmword_2389FBDE0)).i32[1];
        if (vminv_u16(vcltz_s16(vshl_n_s16(v14, 0xFuLL))))
        {
          return v7 & 1;
        }
      }

      ++v4;
      v7 = v19;
      if (a2 == v15)
      {
        return v7 & 1;
      }
    }
  }

  return 0;
}

void GKGetLineSegmentPolygonIntersectionPoints(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>, float32x2_t a4@<D0>, float32x2_t a5@<D1>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = vsub_f32(a5, a4);
    v11 = vrev64_s32(v10);
    v12 = a2;
    __asm { FMOV            V0.4S, #1.0 }

    v29 = _Q0;
    do
    {
      v20 = v9++;
      v21 = *(a1 + 8 * v20);
      if (v9 < v12)
      {
        v22 = v20 + 1;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(a1 + 8 * v22);
      v24 = vsub_f32(v23, v21);
      v25 = vsub_f32(v21, a4);
      v26 = vmul_f32(v24, v11);
      v27 = vsub_f32(v26, vdup_lane_s32(v26, 1));
      *v28.f32 = vmls_lane_f32(vmul_lane_f32(vzip1_s32(v10, v24), v25, 1), vzip2_s32(v10, v24), v25, 0);
      if (*v27.i32 == 0.0)
      {
        if (v28.f32[0] == 0.0 && v28.f32[1] == 0.0)
        {
LABEL_10:
          v30 = 0;
          v30 = GKGetLineSegmentToLineSegmentIntersectionPoint(v21, v23, a4, a5);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a3, &v30);
        }
      }

      else
      {
        v28.i64[1] = v28.i64[0];
        v18 = vmulq_f32(v28, vdivq_f32(v29, vdupq_lane_s32(v27, 0)));
        v19.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2389FBDE0, v18)).u32[0];
        v19.i32[1] = vmovn_s32(vcgeq_f32(v18, xmmword_2389FBDE0)).i32[1];
        if (vminv_u16(vcltz_s16(vshl_n_s16(v19, 0xFuLL))))
        {
          goto LABEL_10;
        }
      }
    }

    while (v12 != v9);
  }
}

void sub_2389E2C80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void OpenSteer::PolygonObstacle::~PolygonObstacle(OpenSteer::PolygonObstacle *this)
{
  *this = &unk_284B50708;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_284B50708;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EE6C500);
}

void std::vector<OpenSteer::Vec3>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2) + a2;
    if (v7 > 0x1555555555555555)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    if (v5 != v4)
    {
      v13 = &v11[-v6];
      do
      {
        v14 = *v5;
        *(v13 + 2) = *(v5 + 2);
        *v13 = v14;
        v13 += 12;
        v5 += 12;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = &v11[-v6];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2389E3FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = GKGraphNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2389E4424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double getGradientCoherentNoise(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 16);
  v3 = *a1 - (*a1 <= 0.0);
  v4 = *a1 - v3;
  v5 = vextq_s8(*a1, v2, 8uLL);
  v6 = vadd_s32(vmovn_s64(vclezq_f64(v5)), vmovn_s64(vcvtq_s64_f64(v5)));
  v7.i64[0] = v6.i32[0];
  v7.i64[1] = v6.i32[1];
  v8 = v6.i16[0];
  _Q2 = vsubq_f64(v5, vcvtq_f64_s64(v7));
  v10 = 1013 * a2 + 6971 * v6.i16[2];
  v11 = &g_randomVectors + 32 * ((-11 * a2 + 59 * v6.i8[4] + 83 * v3 + 105 * v8) ^ ((v10 + 1619 * v3 + 31337 * v8) >> 8));
  v12 = vmulq_f64(_Q2, *(v11 + 8));
  v12.f64[0] = (v12.f64[0] + v4 * *v11 + v12.f64[1]) * 2.12;
  v13 = (&g_randomVectors + 32 * ((v10 + 83 * v3 + 83 + 105 * v8) ^ ((v10 + 1619 * v3 + 1619 + 31337 * v8) >> 8)));
  v14 = *a1 - (v3 + 1);
  v15 = vdupq_lane_s64(*&_Q2.f64[0], 0);
  v16.f64[1] = v15.f64[1];
  v16.f64[0] = v14;
  v17 = vmulq_f64(v16, *v13);
  v18 = v12.f64[0] + -(v12.f64[0] - (vmuld_lane_f64(v13[1].f64[0], _Q2, 1) + v17.f64[0] + v17.f64[1]) * 2.12) * v4;
  v19 = &g_randomVectors + 32 * ((v10 + 105 * v8 + 105 + 83 * v3) ^ ((v10 + 31337 * v8 + 31337 + 1619 * v3) >> 8));
  v12.f64[0] = *(a1 + 8) - (v6.i32[0] + 1);
  v20.f64[1] = _Q2.f64[1];
  v20.f64[0] = v12.f64[0];
  v21 = vmulq_f64(*(v19 + 8), v20);
  v21.f64[0] = (v21.f64[0] + *v19 * v4 + v21.f64[1]) * 2.12;
  v22 = &g_randomVectors + 32 * ((v10 + 83 * v3 + 83 + 105 * v8 + 105) ^ ((v10 + 1619 * v3 + 1619 + 31337 * v8 + 31337) >> 8));
  v23 = vmulq_f64(*(v22 + 8), v20);
  v21.f64[0] = v18 + (v21.f64[0] - v18 + -(v21.f64[0] - (v23.f64[0] + *v22 * v14 + v23.f64[1]) * 2.12) * v4) * _Q2.f64[0];
  v24 = (&g_randomVectors + 32 * ((v10 + 59 + 83 * v3 + 105 * v8) ^ ((v10 + 6971 + 1619 * v3 + 31337 * v8) >> 8)));
  *v2.i64 = *v2.i64 - (v6.i32[1] + 1);
  v15.f64[0] = v4;
  v25 = (vaddvq_f64(vmulq_f64(*v24, v15)) + v24[1].f64[0] * *v2.i64) * 2.12;
  v26 = (&g_randomVectors + 32 * ((v10 + 59 + 83 * v3 + 83 + 105 * v6.i8[0]) ^ ((v10 + 6971 + 1619 * v3 + 1619 + 31337 * v6.i16[0]) >> 8)));
  v16.f64[0] = v25 + -(v25 - (vaddvq_f64(vmulq_f64(*v26, v16)) + v26[1].f64[0] * *v2.i64) * 2.12) * v4;
  v27 = (&g_randomVectors + 32 * ((v10 + 59 + 105 * v6.i8[0] + 105 + 83 * v3) ^ ((v10 + 6971 + 31337 * v6.i16[0] + 31337 + 1619 * v3) >> 8)));
  v28 = (*v27 * v4 + v27[1] * v12.f64[0] + v27[2] * *v2.i64) * 2.12;
  v29 = (&g_randomVectors + 32 * ((v10 + 59 + 83 * v3 + 83 + 105 * v6.i8[0] + 105) ^ ((v10 + 6971 + 1619 * v3 + 1619 + 31337 * v6.i16[0] + 31337) >> 8)));
  _D1 = v16.f64[0] - v21.f64[0] + (v28 - v16.f64[0] + -(v28 - (*v29 * v14 + v29[1] * v12.f64[0] + v29[2] * *v2.i64) * 2.12) * v4) * _Q2.f64[0];
  __asm { FMLA            D0, D1, V2.D[1] }

  return result;
}

float64_t getCoherentNoise(int8x16_t *a1, __int32 a2, int8x16_t a3)
{
  v3 = a3;
  v4 = vextq_s8(a3, a3, 4uLL).u64[0];
  v5 = a3.i32[0];
  v3.i32[3] = a2;
  v6 = vaddvq_s32(vmulq_s32(v3, xmmword_2389FBE20));
  v7 = &g_randomVectors + 32 * (v6 ^ HIBYTE(v6));
  v8.i64[0] = v4;
  v8.i64[1] = SHIDWORD(v4);
  v9 = vmulq_f64(*(v7 + 8), vsubq_f64(vextq_s8(*a1, a1[1], 8uLL), vcvtq_f64_s64(v8)));
  return (v9.f64[0] + (*a1->i64 - v5) * *v7 + v9.f64[1]) * 2.12;
}

void sub_2389E5F08(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v2, 0xA1C40BD48D6D6);

  _Unwind_Resume(a1);
}

void sub_2389E61D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389E61F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389E6204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389E6304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389E631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389E6330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *GKCOctree<NSObject>::~GKCOctree(void *result)
{
  *result = &unk_284B50750;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void GKCOctree<NSObject>::~GKCOctree(void *a1)
{
  *a1 = &unk_284B50750;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCOctreeNode<NSObject>::GKCOctreeNode(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float a5)
{
  *a1 = &unk_284B50780;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  v6 = vsubq_f32(a4, a3);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(v6, v7);
  *(a1 + 64) = v6;
  *(a1 + 80) = vaddq_f32(v8, a3);
  *(a1 + 96) = a5;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 48) = v8;
  v9 = objc_alloc_init(GKOctreeNode);
  v10 = *(a1 + 200);
  *(a1 + 200) = v9;

  [*(a1 + 200) setCOctreeNode:a1];
  return a1;
}

void GKCOctreeNode<NSObject>::~GKCOctreeNode(uint64_t a1)
{
  GKCOctreeNode<NSObject>::~GKCOctreeNode(a1);

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCOctreeNode<NSObject>::~GKCOctreeNode(uint64_t a1)
{
  *a1 = &unk_284B50780;
  v3 = (a1 + 112);
  v2 = *(a1 + 112);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v11 = *(a1 + 176);
  for (i = *(a1 + 184); i != v11; i -= 8)
  {
    v13 = *(i - 8);
  }

  *(a1 + 184) = v11;

  v14 = *(a1 + 176);
  if (v14)
  {
    v15 = *(a1 + 184);
    v16 = *(a1 + 176);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 8);
        v15 -= 8;
      }

      while (v15 != v14);
      v16 = *(a1 + 176);
    }

    *(a1 + 184) = v14;
    operator delete(v16);
  }

  return a1;
}

uint64_t GKCOctreeNode<NSObject>::addPoint(uint64_t a1, void *a2, int8x16_t a3)
{
  v4 = a2;
  v5 = v4;
  v27 = v4;
  v6 = *(a1 + 96);
  if (COERCE_FLOAT(*(a1 + 48)) < v6 || COERCE_FLOAT(HIDWORD(*(a1 + 48))) < v6 || COERCE_FLOAT(*(a1 + 56)) < v6)
  {
    v9 = *(a1 + 184);
    if (v9 >= *(a1 + 192))
    {
      v15 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>((a1 + 176), &v27);
      v5 = v27;
      *(a1 + 184) = v15;
    }

    else
    {
      v5 = v4;
      *v9 = v5;
      *(a1 + 184) = v9 + 1;
    }
  }

  else
  {
    v10 = *(a1 + 80);
    v11 = vcge_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL), vext_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL), 4uLL));
    if (v11.i8[0])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (*a3.i32 >= *v10.i32)
    {
      ++v12;
    }

    if (v11.i8[4])
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    if (!*(a1 + 8 * v14 + 112))
    {
      if (v14 > 3)
      {
        if (v14 > 5)
        {
          v25 = *(a1 + 80);
          if (v14 == 6)
          {
            v19 = *(a1 + 16);
          }
        }

        else if (v14 == 4)
        {
          v17 = *(a1 + 16);
        }

        else
        {
          v21 = *(a1 + 20);
        }
      }

      else if (v14 > 1)
      {
        if (v14 == 2)
        {
          v18 = *(a1 + 16);
        }

        else
        {
          v22 = *(a1 + 24);
        }
      }

      else if (v14)
      {
        v20 = *(a1 + 16);
      }

      else
      {
        v24 = *(a1 + 16);
      }

      v23 = *(a1 + 48);
      operator new();
    }

    a1 = GKCOctreeNode<NSObject>::addPoint(a3);
  }

  return a1;
}

void sub_2389E6A38(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v2, 0x10A1C40256F229BLL);

  _Unwind_Resume(a1);
}

uint64_t GKCOctreeNode<NSObject>::createNodeForOctant(float32x4_t *a1, int a2)
{
  v2 = a1 + 8 * a2;
  if (!*(v2 + 14))
  {
    if (a2 > 3)
    {
      if (a2 > 5)
      {
        if (a2 == 6)
        {
          v4 = &a1[1];
          v5 = a1[5];
          goto LABEL_20;
        }

        if (a2 == 7)
        {
          v5 = a1[5];
          goto LABEL_21;
        }

LABEL_22:
        GKCOctreeNode<NSObject>::createNodeForOctant();
      }

      if (a2 == 4)
      {
        v5 = a1[1];
        v5.i32[2] = a1[5].i32[2];
      }

      else
      {
        v5 = a1[5];
        v5.i32[1] = a1[1].i32[1];
      }
    }

    else
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
          v5 = a1[1];
          goto LABEL_21;
        }

        if (a2 == 1)
        {
          v4 = &a1[5];
          v5 = a1[1];
LABEL_20:
          v5.i32[0] = *v4;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (a2 == 2)
      {
        v5 = a1[1];
        v5.i32[1] = a1[5].i32[1];
      }

      else
      {
        v5 = a1[5];
        v5.i32[2] = a1[1].i32[2];
      }
    }

LABEL_21:
    v6 = vaddq_f32(a1[3], v5);
    operator new();
  }

  return *(v2 + 14);
}

id std::vector<NSObject * {__strong}>::emplace_back<NSObject * const {__strong}&>(unint64_t *a1, id *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(a1, a2);
    a1[1] = result;
  }

  else
  {
    result = *a2;
    *v3 = result;
    a1[1] = (v3 + 1);
  }

  return result;
}

uint64_t GKCOctreeNode<NSObject>::addBox(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4)
{
  v55 = a4;
  v56 = a3;
  v5 = a2;
  v6 = v5;
  v54 = v5;
  v7 = (a1 + 48);
  v8 = *(a1 + 48);
  LODWORD(v9) = HIDWORD(*(a1 + 48));
  v10 = *(a1 + 96);
  if (v8.f32[0] <= v10 || v9 <= v10)
  {
    v12 = *(a1 + 184);
    if (v12 >= *(a1 + 192))
    {
      *(a1 + 184) = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>((a1 + 176), &v54);
    }

    else
    {
      *v12 = v5;
      *(a1 + 184) = v12 + 1;
    }
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 80);
    v15 = a3;
    v16 = vaddq_f32(a4, a3).u64[0];
    v17 = *&v16 > vaddq_f32(v13, v8).f32[0];
    v18 = a3.f32[0] < v13.f32[0] || v17;
    if (a3.f32[0] >= v13.f32[0] && !v17 && a3.f32[1] >= v14.f32[1])
    {
      if (*(&v16 + 1) <= (v14.f32[1] + v9) && a3.f32[2] >= v13.f32[2])
      {
        v19 = vadd_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        if ((vcgt_f32(v19, vdup_lane_s32(v19, 1)).u32[0] & 1) == 0)
        {
          v36 = *(a1 + 136);
          if (!v36)
          {
            v45 = *(a1 + 80);
            v49 = *(a1 + 16);
            v41 = *v7;
            operator new();
          }

          goto LABEL_62;
        }
      }

      v15 = a3;
      if (*(&v16 + 1) <= (v14.f32[1] + v9) && a3.f32[2] >= v13.f32[2])
      {
        v20 = vadd_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        if ((vcgt_f32(v20, vdup_lane_s32(v20, 1)).u32[0] & 1) == 0)
        {
          v36 = *(a1 + 128);
          if (!v36)
          {
            v46 = *(a1 + 80);
            v50 = *(a1 + 16);
            v42 = *v7;
            operator new();
          }

          goto LABEL_62;
        }
      }
    }

    v21 = (*v15.i32 < v14.f32[0]) | (*&v16 > vaddq_f32(v14, v8).f32[0]);
    if ((v21 & 1) == 0)
    {
      v22 = *&v15.i32[1] >= v13.f32[1] && *(&v16 + 1) <= (v13.f32[1] + v9);
      if (v22 && *&v15.i32[2] >= v13.f32[2])
      {
        v35 = vadd_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        if ((vcgt_f32(v35, vdup_lane_s32(v35, 1)).u32[0] & 1) == 0)
        {
          v36 = *(a1 + 120);
          if (!v36)
          {
            v43 = *(a1 + 80);
            v47 = *(a1 + 16);
            v40 = *v7;
            operator new();
          }

LABEL_62:
          v34 = GKCOctreeNode<NSObject>::addBox(v36, v6, a3, a4);
          goto LABEL_63;
        }
      }
    }

    if (!v18)
    {
      v24 = a3.f32[1] >= v13.f32[1] && *(&v16 + 1) <= (v13.f32[1] + v9);
      if (v24 && a3.f32[2] >= v13.f32[2])
      {
        v37 = vadd_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        if ((vcgt_f32(v37, vdup_lane_s32(v37, 1)).u8[0] & 1) == 0)
        {
          v36 = *(a1 + 112);
          if (!v36)
          {
            v44 = *v7;
            v48 = *(a1 + 16);
            operator new();
          }

          goto LABEL_62;
        }
      }
    }

    if ((v21 & 1) == 0)
    {
      v26 = v14.f32[1] + v9;
      v27 = a3.f32[1] >= v14.f32[1] && *(&v16 + 1) <= v26;
      if (v27 && a3.f32[2] >= v14.f32[2])
      {
        v38 = vadd_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
        if ((vcgt_f32(v38, vdup_lane_s32(v38, 1)).u8[0] & 1) == 0)
        {
          NodeForOctant = GKCOctreeNode<NSObject>::createNodeForOctant(a1, 7);
          v33 = a4;
          v32 = a3;
          goto LABEL_49;
        }
      }
    }

    v14.i32[2] = DWORD2(*(a1 + 24));
    v53 = v14;
    if (isBoxInsideBox(&v56, &v55, &v53, (a1 + 48)))
    {
      NodeForOctant = GKCOctreeNode<NSObject>::createNodeForOctant(a1, 6);
LABEL_48:
      v33 = v55;
      v32 = v56;
LABEL_49:
      v34 = GKCOctreeNode<NSObject>::addBox(NodeForOctant, v54, v32, v33);
LABEL_63:
      a1 = v34;
      goto LABEL_64;
    }

    v30 = *(a1 + 80);
    v30.i32[1] = *(a1 + 20);
    v53 = v30;
    if (isBoxInsideBox(&v56, &v55, &v53, (a1 + 48)))
    {
      NodeForOctant = GKCOctreeNode<NSObject>::createNodeForOctant(a1, 5);
      goto LABEL_48;
    }

    v31 = *(a1 + 16);
    v31.i32[2] = *(a1 + 88);
    v53 = v31;
    if (isBoxInsideBox(&v56, &v55, &v53, (a1 + 48)))
    {
      NodeForOctant = GKCOctreeNode<NSObject>::createNodeForOctant(a1, 4);
      goto LABEL_48;
    }

    std::vector<NSObject * {__strong}>::emplace_back<NSObject * const {__strong}&>((a1 + 176), &v54);
  }

LABEL_64:

  return a1;
}

void sub_2389E7118(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v1, 0x10A1C40256F229BLL);

  _Unwind_Resume(a1);
}

BOOL isBoxInsideBox(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *a1;
  v5 = *a3;
  result = 0;
  if ((vmovn_s32(vcgtq_f32(*a3, *a1)).u8[0] & 1) == 0)
  {
    v7 = vmovn_s32(vcgtq_f32(vaddq_f32(*a2, v4), vaddq_f32(*a4, v5)));
    if ((v7.i8[0] & 1) == 0 && v4.f32[1] >= v5.f32[1] && (v7.i8[2] & 1) == 0 && v4.f32[2] >= v5.f32[2] && (v7.i8[4] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

id *GKCOctreeNode<NSObject>::queryBox(id *result, float32x4_t *a2, float32x4_t *a3, void ***a4)
{
  v7 = result;
  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 11);
      v9 = v7[23];
      v10 = v7[22];
      if (v9 != v10)
      {
        result = std::vector<NSObject * {__strong}>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NSObject * const {__strong}*>,NSObject * const {__strong}*>(a4, a4[1], v10, v9, v9 - v10);
      }

      v11 = *a2;
      v12 = *(v7 + 5);
      v13 = COERCE_FLOAT(v7[11]);
      LODWORD(v14) = HIDWORD(a2->i64[0]);
      LODWORD(v15) = HIDWORD(v7[10]);
      if (COERCE_FLOAT(a2->i64[1]) <= v13)
      {
        break;
      }

      if (v14 >= v15)
      {
        v34 = *a3;
        v35 = vaddq_f32(*a3, v11);
        v36 = vmovn_s32(vcgtq_f32(v35, v12));
        if ((v36.i8[2] & 1) == 0)
        {
          v52 = *(v7 + 1);
          if (v36.i8[0])
          {
            v53 = *(v7 + 3);
            v54 = vmovn_s32(vcgtq_f32(vaddq_f32(v53, v12), v11));
            if (v54.i8[0] & 1) != 0 && (vmovn_s32(vcgtq_f32(v35, v52)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v53, v52), v11)).i8[2] & 1) != 0 && (v36.i8[4] & 1) != 0 && (v54.i8[4])
            {
              result = v7[19];
              if (result)
              {
                result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
                v52 = *(v7 + 1);
                v12 = *(v7 + 5);
                v11 = *a2;
                v34 = *a3;
                v35.i32[0] = vaddq_f32(*a3, *a2).u32[0];
              }
            }
          }

          if (v52.f32[0] < v35.f32[0])
          {
            v55 = *(v7 + 3);
            v56 = vaddq_f32(v55, v52);
            if (v56.f32[0] > v11.f32[0])
            {
              v57 = vaddq_f32(v34, v11);
              if (vmovn_s32(vcgtq_f32(v57, v52)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v56, v11)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v57, v12)).i32[1] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v55, v12), v11)).i32[1])
              {
                result = v7[18];
                if (result)
                {
                  result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
                  v12 = *(v7 + 5);
                  v11 = *a2;
                  v34 = *a3;
                  v35.i32[0] = vaddq_f32(*a3, *a2).u32[0];
                }
              }
            }
          }

          if (v12.f32[0] >= v35.f32[0])
          {
            goto LABEL_90;
          }

          v58 = vaddq_f32(*(v7 + 3), v12);
          if (v58.f32[0] <= v11.f32[0])
          {
            goto LABEL_90;
          }

          v36 = vmovn_s32(vcgtq_f32(vaddq_f32(v34, v11), v12));
          if ((v36.i8[2] & 1) == 0)
          {
            goto LABEL_90;
          }

          v37 = vmovn_s32(vcgtq_f32(v58, v11));
          if ((v37.i8[2] & 1) == 0)
          {
            goto LABEL_90;
          }

LABEL_86:
          if (v36.i8[4] & 1) != 0 && (v37.i8[4])
          {
            result = v7[21];
            if (result)
            {
              result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
              v12 = *(v7 + 5);
              v11 = *a2;
              v34 = *a3;
              v35.i32[0] = vaddq_f32(*a3, *a2).u32[0];
            }
          }

          goto LABEL_90;
        }

        if (v36.i8[0])
        {
          v37 = vmovn_s32(vcgtq_f32(vaddq_f32(*(v7 + 3), v12), v11));
          if (v37.i8[0] & 1) != 0 && (v37.i8[2])
          {
            goto LABEL_86;
          }
        }

LABEL_90:
        if (v12.f32[0] >= v35.f32[0])
        {
          return result;
        }

        v59 = *(v7 + 3);
        if ((v59.f32[0] + v12.f32[0]) <= v11.f32[0])
        {
          return result;
        }

        v60 = vaddq_f32(v34, v11);
        if ((vmovn_s32(vcgtq_f32(v60, v12)).i8[2] & 1) == 0)
        {
          return result;
        }

        if ((vmovn_s32(vcgtq_f32(vaddq_f32(v59, v12), v11)).i8[2] & 1) == 0)
        {
          return result;
        }

        v61 = *(v7 + 1);
        if ((vmovn_s32(vcgtq_f32(v60, v61)).i32[1] & 1) == 0)
        {
          return result;
        }

        if ((vmovn_s32(vcgtq_f32(vaddq_f32(v59, v61), v11)).i32[1] & 1) == 0)
        {
          return result;
        }

        v7 = v7[20];
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        v16 = *(v7 + 1);
        v17 = *a3;
        v18 = vaddq_f32(*a3, v11);
        v19 = vmovn_s32(vcgtq_f32(v18, v12));
        if (v19.i8[0])
        {
          v20 = *(v7 + 3);
          v21 = vmovn_s32(vcgtq_f32(vaddq_f32(v20, v12), v11));
          if (v21.i8[0] & 1) != 0 && (vmovn_s32(vcgtq_f32(v18, v16)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v20, v16), v11)).i8[2] & 1) != 0 && (v19.i8[4] & 1) != 0 && (v21.i8[4])
          {
            result = v7[19];
            if (result)
            {
              result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
              v16 = *(v7 + 1);
              v12 = *(v7 + 5);
              v11 = *a2;
              v17 = *a3;
              v18.i32[0] = vaddq_f32(*a3, *a2).u32[0];
            }
          }
        }

        if (v16.f32[0] >= v18.f32[0])
        {
          return result;
        }

        v22 = *(v7 + 3);
        v23 = vaddq_f32(v22, v16);
        if (v23.f32[0] <= v11.f32[0])
        {
          return result;
        }

        v24 = vaddq_f32(v17, v11);
        if ((vmovn_s32(vcgtq_f32(v24, v16)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(v23, v11)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(v24, v12)).i32[1] & 1) == 0 || (vmovn_s32(vcgtq_f32(vaddq_f32(v22, v12), v11)).i32[1] & 1) == 0)
        {
          return result;
        }

LABEL_183:
        v7 = v7[18];
        if (!v7)
        {
          return result;
        }
      }
    }

    v25 = *a3;
    v26 = vaddq_f32(*a3, v11);
    if (v26.f32[2] >= v13)
    {
      break;
    }

    if (v14 >= v15)
    {
      v47 = vmovn_s32(vcgtq_f32(v26, v12));
      v48 = *(v7 + 1);
      if ((v47.i8[2] & 1) == 0)
      {
        if (v47.i8[0])
        {
          v69 = *(v7 + 3);
          if (vmovn_s32(vcgtq_f32(vaddq_f32(v69, v12), v11)).u8[0])
          {
            v70 = vmovn_s32(vcgtq_f32(v26, v48));
            if (v70.i8[2])
            {
              v71 = vmovn_s32(vcgtq_f32(vaddq_f32(v69, v48), v11));
              if (v71.i8[2] & 1) != 0 && (v70.i8[4] & 1) != 0 && (v71.i8[4])
              {
                result = v7[15];
                if (result)
                {
                  result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
                  v48 = *(v7 + 1);
                  v11 = *a2;
                  v25 = *a3;
                  v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
                }
              }
            }
          }
        }

        if (v48.f32[0] < v26.f32[0])
        {
          v72 = vaddq_f32(*(v7 + 3), v48);
          if (v72.f32[0] > v11.f32[0])
          {
            v73 = vmovn_s32(vcgtq_f32(vaddq_f32(v25, v11), v48));
            if (v73.i8[2])
            {
              v74 = vmovn_s32(vcgtq_f32(v72, v11));
              if (v74.i8[2] & 1) != 0 && (v73.i8[4] & 1) != 0 && (v74.i8[4])
              {
                result = v7[14];
                if (result)
                {
                  result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
                  v48 = *(v7 + 1);
                  v11 = *a2;
                  v25 = *a3;
                  v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
                }
              }
            }
          }
        }

        v12 = *(v7 + 5);
        if (v48.f32[0] >= v26.f32[0])
        {
          goto LABEL_145;
        }

        v75 = *(v7 + 3);
        if ((v75.f32[0] + v48.f32[0]) <= v11.f32[0])
        {
          goto LABEL_145;
        }

        v76 = vaddq_f32(v25, v11);
        if ((vmovn_s32(vcgtq_f32(v76, v12)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(vaddq_f32(v75, v12), v11)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(v76, v48)).i32[1] & 1) == 0)
        {
          goto LABEL_145;
        }

        v67 = vaddq_f32(v75, v48);
LABEL_142:
        if (vmovn_s32(vcgtq_f32(v67, v11)).i32[1])
        {
          goto LABEL_143;
        }

        goto LABEL_145;
      }

      v49 = vmovn_s32(vcgtq_f32(v26, v48));
      if (v49.i8[0])
      {
        v50 = *(v7 + 3);
        v51 = vmovn_s32(vcgtq_f32(vaddq_f32(v50, v48), v11));
        if (v51.i8[0] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v50, v12), v11)).i8[2] & 1) != 0 && (v49.i8[4] & 1) != 0 && (v51.i8[4])
        {
LABEL_143:
          result = v7[17];
          if (result)
          {
            result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
            v48 = *(v7 + 1);
            v12 = *(v7 + 5);
            v11 = *a2;
            v25 = *a3;
            v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
          }
        }
      }

LABEL_145:
      if (v48.f32[0] >= v26.f32[0])
      {
        return result;
      }

      v77 = *(v7 + 3);
      if ((v77.f32[0] + v48.f32[0]) <= v11.f32[0])
      {
        return result;
      }

      v78 = vaddq_f32(v25, v11);
      if ((vmovn_s32(vcgtq_f32(v78, v12)).i8[2] & 1) == 0)
      {
        return result;
      }

      if ((vmovn_s32(vcgtq_f32(vaddq_f32(v77, v12), v11)).i8[2] & 1) == 0)
      {
        return result;
      }

      if ((vmovn_s32(vcgtq_f32(v78, v48)).i32[1] & 1) == 0)
      {
        return result;
      }

      if ((vmovn_s32(vcgtq_f32(vaddq_f32(v77, v48), v11)).i32[1] & 1) == 0)
      {
        return result;
      }

      v7 = v7[16];
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v27 = *(v7 + 1);
      if (vmovn_s32(vcgtq_f32(v26, v12)).u8[0])
      {
        v28 = *(v7 + 3);
        if (vmovn_s32(vcgtq_f32(vaddq_f32(v28, v12), v11)).u8[0])
        {
          v29 = vmovn_s32(vcgtq_f32(v26, v27));
          if (v29.i8[2])
          {
            v30 = vmovn_s32(vcgtq_f32(vaddq_f32(v28, v27), v11));
            if (v30.i8[2] & 1) != 0 && (v29.i8[4] & 1) != 0 && (v30.i8[4])
            {
              result = v7[15];
              if (result)
              {
                result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
                v27 = *(v7 + 1);
                v11 = *a2;
                v25 = *a3;
                v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
              }
            }
          }
        }
      }

      if (v27.f32[0] >= v26.f32[0])
      {
        return result;
      }

      v31 = vaddq_f32(*(v7 + 3), v27);
      if (v31.f32[0] <= v11.f32[0])
      {
        return result;
      }

      v32 = vmovn_s32(vcgtq_f32(vaddq_f32(v25, v11), v27));
      if ((v32.i8[2] & 1) == 0)
      {
        return result;
      }

      v33 = vmovn_s32(vcgtq_f32(v31, v11));
      if ((v33.i8[2] & 1) == 0)
      {
        return result;
      }

      if ((v32.i8[4] & 1) == 0)
      {
        return result;
      }

      if ((v33.i8[4] & 1) == 0)
      {
        return result;
      }

      v7 = v7[14];
      if (!v7)
      {
        return result;
      }
    }
  }

  v38 = v14 < v15;
  v39 = vcgtq_f32(v26, v12);
  if (v38)
  {
    v40 = *(v7 + 1);
    if (vmovn_s32(v39).u8[0])
    {
      v41 = *(v7 + 3);
      if (vmovn_s32(vcgtq_f32(vaddq_f32(v41, v12), v11)).u8[0])
      {
        v42 = vmovn_s32(vcgtq_f32(v26, v40));
        if (v42.i8[2])
        {
          v43 = vmovn_s32(vcgtq_f32(vaddq_f32(v41, v40), v11));
          if (v43.i8[2] & 1) != 0 && (v42.i8[4] & 1) != 0 && (v43.i8[4])
          {
            result = v7[15];
            if (result)
            {
              result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
              v40 = *(v7 + 1);
              v11 = *a2;
              v25 = *a3;
              v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
            }
          }
        }
      }
    }

    if (v40.f32[0] < v26.f32[0])
    {
      v44 = vaddq_f32(*(v7 + 3), v40);
      if (v44.f32[0] > v11.f32[0])
      {
        v45 = vmovn_s32(vcgtq_f32(vaddq_f32(v25, v11), v40));
        if (v45.i8[2])
        {
          v46 = vmovn_s32(vcgtq_f32(v44, v11));
          if (v46.i8[2])
          {
            goto LABEL_165;
          }
        }
      }
    }

    goto LABEL_169;
  }

  v62 = vmovn_s32(v39);
  if (v62.i8[2])
  {
    if (v62.i8[0])
    {
      v63 = vmovn_s32(vcgtq_f32(vaddq_f32(*(v7 + 3), v12), v11));
      if (v63.i8[0] & 1) != 0 && (v63.i8[2] & 1) != 0 && v13 < v26.f32[2] && (v63.i8[4])
      {
        result = v7[21];
        if (result)
        {
          result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
          v12 = *(v7 + 5);
          v11 = *a2;
          v25 = *a3;
          v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
        }
      }
    }

    v48 = *(v7 + 1);
    if (v12.f32[0] < v26.f32[0])
    {
      v64 = *(v7 + 3);
      if ((v64.f32[0] + v12.f32[0]) > v11.f32[0])
      {
        v65 = vaddq_f32(v25, v11);
        if (vmovn_s32(vcgtq_f32(v65, v12)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v64, v12), v11)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v65, v48)).i32[1] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v64, v48), v11)).i32[1])
        {
          result = v7[20];
          if (result)
          {
            result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
            v48 = *(v7 + 1);
            v12 = *(v7 + 5);
            v11 = *a2;
            v25 = *a3;
            v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
          }
        }
      }
    }

    if (v48.f32[0] >= v26.f32[0])
    {
      goto LABEL_145;
    }

    v66 = *(v7 + 3);
    v67 = vaddq_f32(v66, v48);
    if (v67.f32[0] <= v11.f32[0])
    {
      goto LABEL_145;
    }

    v68 = vaddq_f32(v25, v11);
    if ((vmovn_s32(vcgtq_f32(v68, v12)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(vaddq_f32(v66, v12), v11)).i8[2] & 1) == 0 || (vmovn_s32(vcgtq_f32(v68, v48)).i32[1] & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_142;
  }

  v40 = *(v7 + 1);
  if (v62.i8[0])
  {
    v79 = *(v7 + 3);
    if (vmovn_s32(vcgtq_f32(vaddq_f32(v79, v12), v11)).u8[0])
    {
      v80 = vmovn_s32(vcgtq_f32(v26, v40));
      if (v80.i8[2])
      {
        v81 = vmovn_s32(vcgtq_f32(vaddq_f32(v79, v40), v11));
        if (v81.i8[2] & 1) != 0 && (v80.i8[4] & 1) != 0 && (v81.i8[4])
        {
          result = v7[15];
          if (result)
          {
            result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
            v40 = *(v7 + 1);
            v11 = *a2;
            v25 = *a3;
            v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
          }
        }
      }
    }
  }

  if (v40.f32[0] < v26.f32[0])
  {
    v82 = *(v7 + 3);
    if ((v82.f32[0] + v40.f32[0]) > v11.f32[0])
    {
      v45 = vmovn_s32(vcgtq_f32(vaddq_f32(v25, v11), v40));
      if (v45.i8[2])
      {
        v46 = vmovn_s32(vcgtq_f32(vaddq_f32(v82, v40), v11));
        if (v46.i8[2])
        {
LABEL_165:
          if (v45.i8[4] & 1) != 0 && (v46.i8[4])
          {
            result = v7[14];
            if (result)
            {
              result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
              v40 = *(v7 + 1);
              v11 = *a2;
              v25 = *a3;
              v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
            }
          }
        }
      }
    }
  }

LABEL_169:
  v83 = *(v7 + 5);
  if (v83.f32[0] < v26.f32[0])
  {
    v84 = *(v7 + 3);
    v85 = vaddq_f32(v84, v83);
    if (v85.f32[0] > v11.f32[0])
    {
      v86 = vaddq_f32(v25, v11);
      if (vmovn_s32(vcgtq_f32(v86, v40)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v84, v40), v11)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v86, v83)).i32[1] & 1) != 0 && (vmovn_s32(vcgtq_f32(v85, v11)).i32[1])
      {
        result = v7[19];
        if (result)
        {
          result = GKCOctreeNode<NSObject>::queryBox(result, a2, a3, a4);
          v40 = *(v7 + 1);
          v83 = *(v7 + 5);
          v11 = *a2;
          v25 = *a3;
          v26.i32[0] = vaddq_f32(*a3, *a2).u32[0];
        }
      }
    }
  }

  if (v40.f32[0] < v26.f32[0])
  {
    v87 = *(v7 + 3);
    v88 = vaddq_f32(v87, v40);
    if (v88.f32[0] > v11.f32[0])
    {
      v89 = vaddq_f32(v25, v11);
      if (vmovn_s32(vcgtq_f32(v89, v40)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v88, v11)).i8[2] & 1) != 0 && (vmovn_s32(vcgtq_f32(v89, v83)).i32[1] & 1) != 0 && (vmovn_s32(vcgtq_f32(vaddq_f32(v87, v83), v11)).i32[1])
      {
        goto LABEL_183;
      }
    }
  }

  return result;
}

uint64_t GKCOctreeNode<NSObject>::removeDataRecursive(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = a1[22];
  v5 = a1[23];
  if (v6 == v5)
  {
LABEL_4:

    v7 = a1[14];
    if (!v7 || (GKCOctreeNode<NSObject>::removeDataRecursive(v7, v4) & 1) == 0)
    {
      v8 = a1[15];
      if (!v8 || (GKCOctreeNode<NSObject>::removeDataRecursive(v8, v4) & 1) == 0)
      {
        v9 = a1[16];
        if (!v9 || (GKCOctreeNode<NSObject>::removeDataRecursive(v9, v4) & 1) == 0)
        {
          v10 = a1[17];
          if (!v10 || (GKCOctreeNode<NSObject>::removeDataRecursive(v10, v4) & 1) == 0)
          {

            return 0;
          }
        }
      }
    }
  }

  else
  {
    while (*v6 != v3)
    {
      if (++v6 == v5)
      {
        goto LABEL_4;
      }
    }

    v12 = v6 + 1;
    if (v6 + 1 != v5)
    {
      do
      {
        v6 = v12;
        v13 = *(v12 - 1);
        *(v12 - 1) = *v12;
        *v12 = 0;

        v12 = v6 + 1;
      }

      while (v6 + 1 != v5);
      v5 = a1[23];
    }

    while (v5 != v6)
    {
      v14 = *--v5;
    }

    a1[23] = v6;
  }

  return 1;
}

void *GKCPolygonObstacle::GKCPolygonObstacle(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_284B507B0;
  a1[1] = 0;
  v6 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  OpenSteer::PolygonObstacle::PolygonObstacle(a1 + 4);
  a1[8] = 0;
  v7 = a1[1];
  v8 = (a1[2] - v7) >> 3;
  if (a3 <= v8)
  {
    if (a3 < v8)
    {
      a1[2] = v7 + 8 * a3;
    }
  }

  else
  {
    std::vector<long>::__append(v6, a3 - v8);
  }

  v9 = a1[5];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[6] - v9) >> 2);
  if (a3 > v10)
  {
    std::vector<OpenSteer::Vec3>::__append((a1 + 5), a3 - v10);
LABEL_10:
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 8 * v12);
      *(*v6 + 8 * v12) = v13;
      v14 = a1[5] + v11;
      *v14 = v13;
      *(v14 + 8) = HIDWORD(v13);
      ++v12;
      v11 += 12;
    }

    while (a3 != v12);
    return a1;
  }

  if (a3 < v10)
  {
    a1[6] = v9 + 12 * a3;
  }

  if (a3)
  {
    goto LABEL_10;
  }

  return a1;
}

void sub_2389E7F44(_Unwind_Exception *exception_object)
{
  v1[4] = &unk_284B50708;
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void GKCPolygonObstacle::~GKCPolygonObstacle(GKCPolygonObstacle *this)
{
  *this = &unk_284B507B0;
  *(this + 4) = &unk_284B50708;
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
}

{
  *this = &unk_284B507B0;
  *(this + 4) = &unk_284B50708;
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
}

{
  *this = &unk_284B507B0;
  *(this + 4) = &unk_284B50708;
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

  JUMPOUT(0x23EE6C500);
}

BOOL GKCPolygonObstacle::intersectsLineFrom(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if ((v4 & 0x7FFFFFFF8) != 0)
  {
    v5 = v4 >> 3;
    v6 = vsub_f32(*a3, *a2);
    v7 = vrev64_s32(v6);
    v8 = (v4 >> 3);
    v9 = 1;
    __asm { FMOV            V3.4S, #1.0 }

    v15 = v8;
    v16 = *(a1 + 8);
    v17 = 1;
    while (1)
    {
      if (v5 <= v9)
      {
        v20 = 0;
      }

      else
      {
        v20 = v9;
      }

      v21 = vsub_f32(*(v3 + 8 * v20), *v16);
      v22 = vsub_f32(*v16, *a2);
      v23 = vmul_f32(v7, v21);
      v24 = vsub_f32(v23, vdup_lane_s32(v23, 1));
      *v25.f32 = vmls_lane_f32(vmul_lane_f32(vzip1_s32(v6, v21), v22, 1), vzip2_s32(v6, v21), v22, 0);
      if (*v24.i32 == 0.0)
      {
        if (v25.f32[0] == 0.0 && v25.f32[1] == 0.0)
        {
          return v17;
        }
      }

      else
      {
        v25.i64[1] = v25.i64[0];
        v18 = vmulq_f32(v25, vdivq_f32(_Q3, vdupq_lane_s32(v24, 0)));
        v19.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2389FBDE0, v18)).u32[0];
        v19.i32[1] = vmovn_s32(vcgeq_f32(v18, xmmword_2389FBDE0)).i32[1];
        if (vminv_u16(vcltz_s16(vshl_n_s16(v19, 0xFuLL))))
        {
          return v17;
        }
      }

      v17 = v9 < v8;
      ++v16;
      ++v9;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return 0;
}

BOOL GKCPolygonObstacle::intersectsPoint(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 >> 3) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v3 >> 3) - 1;
  LODWORD(v7) = HIDWORD(*a2);
  v8 = (v3 >> 3) & 0x7FFFFFFF;
  do
  {
    v9 = 8 * v6;
    v6 = v4;
    v10 = *(v2 + v9);
    LODWORD(v11) = HIDWORD(*(v2 + 8 * v4));
    if (v11 > v7 == v10.f32[1] <= v7 && COERCE_FLOAT(*a2) < ((((v7 - v11) * vsub_f32(v10, *(v2 + 8 * v4)).f32[0]) / (v10.f32[1] - v11)) + COERCE_FLOAT(*(v2 + 8 * v4))))
    {
      v5 = !v5;
    }

    ++v4;
  }

  while (v8 != v6 + 1);
  return v5;
}

id GKCPolygonObstacle::extrudeObstacle(GKCPolygonObstacle *this, GKCPolygonObstacle *a2, float32_t a3)
{
  __p = 0;
  v58 = 0;
  v59 = 0;
  v3 = *(this + 2) - *(this + 1);
  if (v3)
  {
    std::vector<long>::__append(&__p, v3 >> 3);
    v6 = *(this + 1);
    v3 = *(this + 2) - v6;
    v7.i32[0] = 955908096;
    if (a3 > 0.0)
    {
      v7.f32[0] = a3;
    }

    if ((v3 >> 3) >= 1)
    {
      v8 = (v3 >> 3) & 0x7FFFFFFF;
      v9 = v6[v8 - 1];
      v10 = v6[v8 > 1];
      v11 = vsub_f32(*v6, v9);
      v12 = vmul_f32(v11, v11);
      v12.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
      v13 = vrsqrte_f32(v12.u32[0]);
      v14 = vmul_n_f32(v11, vmul_f32(vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)), v13).f32[0]);
      v15 = vsub_f32(v10, *v6);
      v16 = vmul_f32(v15, v15);
      v16.i32[0] = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
      v17 = vrsqrte_f32(v16.u32[0]);
      v18 = vmul_n_f32(v15, vmul_f32(vrsqrts_f32(v16.u32[0], vmul_f32(v17, v17)), v17).f32[0]);
      v19 = vmul_f32(vrev64_s32(v18), v14);
      LODWORD(v20) = vsub_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
      if (fabsf(v20) == 0.00000011921)
      {
        v21 = vsub_f32(v10, v9);
        v22 = vmul_f32(v21, v21);
        v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
        v23 = vrsqrte_f32(v22.u32[0]);
        v24 = vmul_f32(vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)), v23);
        v25 = vmul_n_f32(v21, *v24.i32);
        *v24.i32 = -*&v25.i32[1];
        v26 = vzip1_s32(v24, v25);
        v27 = vmul_f32(v26, v26);
        v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
        v28 = vrsqrte_f32(v27.u32[0]);
        *__p = vmul_n_f32(v26, vmul_f32(vmul_f32(v28, v7), vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28))).f32[0]);
        if (v8 == 1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *__p = vmla_n_f32(*v6, vsub_f32(v14, v18), v7.f32[0] / v20);
        if (v8 == 1)
        {
LABEL_15:
          v3 = *(this + 2) - *(this + 1);
          goto LABEL_16;
        }
      }

      v29 = 1;
      do
      {
        while (1)
        {
          v38 = *(this + 1);
          v39 = *(v38 + 8 * v29);
          v40 = *(v38 + 8 * v29 - 8);
          v41 = v29 + 1;
          v42 = (v29 + 1);
          if (v29 + 1 >= v8)
          {
            v42 = 0;
          }

          v43 = *(v38 + 8 * v42);
          v44 = vsub_f32(v39, v40);
          v45 = vmul_f32(v44, v44);
          v45.i32[0] = vadd_f32(v45, vdup_lane_s32(v45, 1)).u32[0];
          v46 = vrsqrte_f32(v45.u32[0]);
          v47 = vmul_n_f32(v44, vmul_f32(vrsqrts_f32(v45.u32[0], vmul_f32(v46, v46)), v46).f32[0]);
          v48 = vsub_f32(v43, v39);
          v49 = vmul_f32(v48, v48);
          v49.i32[0] = vadd_f32(v49, vdup_lane_s32(v49, 1)).u32[0];
          v50 = vrsqrte_f32(v49.u32[0]);
          v51 = vmul_n_f32(v48, vmul_f32(vrsqrts_f32(v49.u32[0], vmul_f32(v50, v50)), v50).f32[0]);
          v52 = vmul_f32(vrev64_s32(v51), v47);
          LODWORD(v53) = vsub_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
          if (fabsf(v53) != 0.00000011921)
          {
            break;
          }

          v30 = vsub_f32(v43, v40);
          v31 = vmul_f32(v30, v30);
          v31.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
          v32 = vrsqrte_f32(v31.u32[0]);
          v33 = vmul_f32(vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)), v32);
          v34 = vmul_n_f32(v30, *v33.i32);
          *v33.i32 = -*&v34.i32[1];
          v35 = vzip1_s32(v33, v34);
          v36 = vmul_f32(v35, v35);
          v36.i32[0] = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
          v37 = vrsqrte_f32(v36.u32[0]);
          *(__p + v29++) = vmul_n_f32(v35, vmul_f32(vmul_f32(v37, v7), vrsqrts_f32(v36.u32[0], vmul_f32(v37, v37))).f32[0]);
          if (v8 == v41)
          {
            goto LABEL_15;
          }
        }

        *(__p + v29++) = vmla_n_f32(v39, vsub_f32(v47, v51), v7.f32[0] / v53);
      }

      while (v8 != v41);
      goto LABEL_15;
    }
  }

LABEL_16:
  v54 = [GKPolygonObstacle obstacleWithPoints:__p count:v3 >> 3];
  if (__p)
  {
    v58 = __p;
    v55 = v54;
    operator delete(__p);
    v54 = v55;
  }

  return v54;
}

void sub_2389E8608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2389E9D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<OpenSteer::Vec3>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
  if (v9 > 0x1555555555555555)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 4 * (v8 >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = v12 + 12;
  v13 = v12 - v8;
  if (v7 != v3)
  {
    v14 = v13;
    do
    {
      v15 = *v7;
      *(v14 + 8) = v7[2];
      *v14 = v15;
      v14 += 12;
      v7 += 3;
    }

    while (v7 != v3);
    v7 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_2389EA160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (!__p)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_2389EA3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *p2t::AdvancingFront::AdvancingFront(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = a2;
  return result;
}

uint64_t p2t::AdvancingFront::LocateNode(p2t::AdvancingFront *this, double *a2)
{
  result = *(this + 2);
  v4 = *a2;
  if (*a2 >= *(result + 32))
  {
    while (1)
    {
      result = *(result + 16);
      if (!result)
      {
        break;
      }

      if (v4 < *(result + 32))
      {
        result = *(result + 24);
LABEL_8:
        *(this + 2) = result;
        return result;
      }
    }
  }

  else
  {
    while (1)
    {
      result = *(result + 24);
      if (!result)
      {
        break;
      }

      if (v4 >= *(result + 32))
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t p2t::AdvancingFront::LocatePoint(p2t::AdvancingFront *this, const Point *a2)
{
  result = *(this + 2);
  v4 = **result;
  if (*&a2->v == v4)
  {
    if (*result != a2)
    {
      if (**(result + 24) == a2)
      {
        result = *(result + 24);
      }

      else
      {
        result = *(result + 16);
        if (*result != a2)
        {
          p2t::AdvancingFront::LocatePoint();
        }
      }
    }

LABEL_14:
    *(this + 2) = result;
  }

  else if (*&a2->v >= v4)
  {
    while (1)
    {
      result = *(result + 16);
      if (!result)
      {
        break;
      }

      if (*result == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    while (1)
    {
      result = *(result + 24);
      if (!result)
      {
        break;
      }

      if (*result == a2)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

BOOL pointOnLine(double a1, double a2, double a3)
{
  v3 = fmaxf(*&a2, *&a3);
  v4 = *&a1 >= fminf(*&a2, *&a3) && *&a1 <= v3;
  v5 = fminf(*(&a2 + 1), *(&a3 + 1));
  v6 = fmaxf(*(&a2 + 1), *(&a3 + 1));
  return v4 && *(&a1 + 1) >= v5 && *(&a1 + 1) <= v6;
}

uint64_t orientation(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vmul_f32(vsub_f32(a3, a2), vrev64_s32(vsub_f32(a2, a1)));
  v4 = vsub_f32(v3, vdup_lane_s32(v3, 1)).f32[0];
  if (v4 >= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

float32x2_t GKGetClosestPointOnLineSegmentToPoint(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a1);
  v4 = vsub_f32(a2, a1);
  v5 = vext_s8(v3, v4, 4uLL);
  v3.i32[1] = v4.i32[1];
  v6 = vmla_f32(vmul_f32(vrev64_s32(v4), v5), v4, v3);
  v7 = vdiv_f32(v6, vdup_lane_s32(v6, 1)).f32[0];
  v8 = 0.0;
  if (v7 >= 0.0)
  {
    v8 = v7;
    if (v7 > 1.0)
    {
      v8 = 1.0;
    }
  }

  return vmla_n_f32(a1, v4, v8);
}

float32x2_t GKGetLineSegmentToLineSegmentIntersectionPoint(int32x2_t a1, int32x2_t a2, int32x2_t a3, int32x2_t a4)
{
  v4 = vzip2_s32(a1, a3);
  v5 = vsub_f32(vzip2_s32(a2, a4), v4);
  v6 = vzip1_s32(a1, a3);
  v7 = vsub_f32(v6, vzip1_s32(a2, a4));
  v8 = vmul_f32(v5, vrev64_s32(v7));
  v9 = vsub_f32(v8, vdup_lane_s32(v8, 1));
  result = 0;
  if (*v9.i32 != 0.0)
  {
    v11 = vadd_f32(vmul_f32(v5, v6), vmul_f32(v7, v4));
    v12.i32[0] = vmul_lane_f32(v11, v7, 1).u32[0];
    v13 = vmul_lane_f32(v7, v11, 1).u32[0];
    v14 = vmul_f32(v11, vrev64_s32(v5));
    v12.i32[1] = v14.i32[1];
    v15 = vdup_lane_s32(v14, 0);
    v15.i32[0] = v13;
    return vdiv_f32(vsub_f32(v12, v15), vdup_lane_s32(v9, 0));
  }

  return result;
}

uint64_t GKGetLineToLineIntersection(float32x2_t *a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vsub_f32(a3, a2);
  v6 = vsub_f32(a5, a4);
  v7 = vdiv_f32(vzip2_s32(v5, v6), vzip1_s32(v5, v6));
  if ((vmvn_s8(vceq_f32(v7, vdup_lane_s32(v7, 1))).u8[0] & 1) == 0)
  {
    return 0;
  }

  v8 = vmul_f32(vrev64_s32(v6), v5);
  v9 = vsub_f32(v8, vdup_lane_s32(v8, 1));
  if (v9.f32[0] == 0.0)
  {
    return 0;
  }

  v10 = vmul_f32(v6, vrev64_s32(vsub_f32(a2, a4)));
  *a1 = vmla_n_f32(a2, v5, vdiv_f32(vsub_f32(v10, vdup_lane_s32(v10, 1)), v9).f32[0]);
  return 1;
}

BOOL GKDoesCircleIntersectLine(float32x2_t a1, float a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a4, a3);
  v5 = vsub_f32(a1, a3);
  v6 = vmla_f32(vmul_f32(vrev64_s32(v4), vext_s8(v4, v5, 4uLL)), v4, __PAIR64__(v5.u32[1], v4.u32[0]));
  v7 = vmul_f32(v5, v5);
  v7.f32[0] = (v7.f32[1] - (a2 * a2)) + v7.f32[0];
  v8 = vdiv_f32(vdup_lane_s32(v6, 1), v6);
  return vmul_f32(v8, v8).f32[0] >= (v7.f32[0] / v6.f32[0]);
}

float GKGetCircleToLineIntersectionPoints(_DWORD *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t a4, float a5, float32x2_t a6, float32x2_t a7)
{
  v7 = vsub_f32(a7, a6);
  v8 = vsub_f32(a4, a6);
  v9 = vext_s8(v8, v7, 4uLL);
  v10 = __PAIR64__(v7.u32[1], v8.u32[0]);
  v11 = vmul_f32(v8, v8);
  v12 = vrev64_s32(v7);
  v13 = vmla_f32(vmul_f32(v12, v9), v7, v10);
  v14 = -(v11.f32[1] - (a5 * a5)) - v11.f32[0];
  result = v13.f32[0] / v13.f32[1];
  v16 = (v14 / v13.f32[1]) + (result * result);
  if (v16 >= 0.0)
  {
    v17 = sqrtf(v16);
    v12.f32[0] = v17 - result;
    v18 = vmls_lane_f32(a6, v7, v12, 0);
    if (v16 == 0.0)
    {
      *a1 = 1;
      *a2 = v18;
    }

    else
    {
      result = v17 + result;
      *a1 = 2;
      *a2 = v18;
      *a3 = vmla_n_f32(a6, v7, result);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

BOOL GKDoesCircleIntersectLineSegment(float32x2_t a1, float a2, double a3, double a4)
{
  v7 = 0;
  GKGetCircleToLineSegmentIntersectionPoints(&v7, &v6, &v5, a1, a2, a3, a4);
  return v7 > 0;
}

_DWORD *GKGetCircleToLineSegmentIntersectionPoints(_DWORD *result, float32x2_t *a2, float32x2_t *a3, float32x2_t a4, float a5, double a6, double a7)
{
  *result = 0;
  _D4 = vsub_f32(*&a7, *&a6);
  _S6 = _D4.i32[1];
  __asm { FMLA            S5, S6, V4.S[1] }

  if (_S5 == 0.0)
  {
    return result;
  }

  v14 = vsub_f32(a4, *&a6);
  v15 = vaddv_f32(vmul_f32(_D4, v14)) / _S5;
  v16 = vmul_f32(v14, v14);
  v17 = ((-(v16.f32[1] - (a5 * a5)) - v16.f32[0]) / _S5) + (v15 * v15);
  if (v17 < 0.0)
  {
    return result;
  }

  v18 = *(&a6 + 1);
  v19 = *&a6;
  v20 = sqrtf(v17);
  v7.f32[0] = v20 - v15;
  v21 = vmls_lane_f32(*&a6, _D4, v7, 0);
  if (v17 == 0.0)
  {
    v22 = fminf(*&a6, *&a7);
    v23 = fmaxf(v19, *&a7);
    v24 = v21.f32[0] >= v22 && v21.f32[0] <= v23;
    *&a6 = fminf(*(&a6 + 1), *(&a7 + 1));
    v25 = fmaxf(*(&a6 + 1), *(&a7 + 1));
    if (!v24 || v21.f32[1] < *&a6 || v21.f32[1] > v25)
    {
      return result;
    }

LABEL_49:
    *result = 1;
    *a2 = v21;
    return result;
  }

  v28 = vmla_n_f32(*&a6, _D4, v20 + v15);
  v29 = fminf(v19, *&a7);
  v30 = fmaxf(v19, *&a7);
  v31 = v21.f32[0] >= v29 && v21.f32[0] <= v30;
  *&a7 = fminf(v18, *(&a7 + 1));
  v32 = fmaxf(v18, *(&a7 + 1));
  if (v31 && v21.f32[1] >= *&a7 && v21.f32[1] <= v32)
  {
    if (v28.f32[0] >= v29 && v28.f32[0] <= v30 && v28.f32[1] >= *&a7 && v28.f32[1] <= v32)
    {
      *result = 2;
      *a2 = v21;
      *a3 = v28;
      return result;
    }

    goto LABEL_49;
  }

  if (v28.f32[0] >= v29 && v28.f32[0] <= v30 && v28.f32[1] >= *&a7 && v28.f32[1] <= v32)
  {
    *result = 1;
    *a2 = v28;
  }

  return result;
}

BOOL GKDoesCircleIntersectPolygon(double *a1, int a2, double a3, float a4)
{
  v7 = a2 - 1;
  v8 = 1;
  v9 = a1;
  for (i = a2 & ~(a2 >> 31); i; --i)
  {
    v11 = a1[v8 % v7];
    v12 = *v9++;
    v21 = 0;
    GKGetCircleToLineSegmentIntersectionPoints(&v21, &v20, &v19, *&a3, a4, v12, v11);
    ++v8;
    if (v21 > 0)
    {
      return 1;
    }
  }

  if (a2 < 1)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *&a1[v7];
    LODWORD(v17) = HIDWORD(*&a1[v14]);
    if (v17 > *(&a3 + 1) == v16.f32[1] <= *(&a3 + 1) && *&a3 < ((((*(&a3 + 1) - v17) * vsub_f32(v16, *&a1[v14]).f32[0]) / (v16.f32[1] - v17)) + COERCE_FLOAT(*&a1[v14])))
    {
      v15 = !v15;
    }

    v7 = v14++;
  }

  while (a2 != v14);
  return v15;
}

float Clamp(float a1, float a2, float a3)
{
  v3 = fminf(a1, a3);
  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

float32x2_t GKClosestPointsBetweenLineSegments(float32x2_t *a1, double *a2, float32x2_t result, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v6 = vsub_f32(a4, result);
  v7 = vsub_f32(a6, a5);
  v8 = vmul_f32(v6, v6);
  v9 = vaddv_f32(v8);
  v10 = vmul_f32(v7, v7);
  v11 = vaddv_f32(v10);
  if (v9 <= 0.00000011921 && v11 <= 0.00000011921)
  {
    *a1 = result;
    *a2 = *&a5;
    return result;
  }

  v13 = vsub_f32(result, a5);
  v14 = vadd_f32(v10, vdup_lane_s32(v10, 1));
  v15 = vmul_f32(v7, v13);
  v16 = vadd_f32(v15, vdup_lane_s32(v15, 1));
  if (v9 <= 0.00000011921)
  {
    v17 = fminf(vdiv_f32(v16, v14).f32[0], 1.0);
    v18 = 0.0;
    v19 = fmaxf(v17, 0.0);
LABEL_7:
    result = vmla_n_f32(result, v6, v18);
    *a1 = result;
    *a2 = vmla_n_f32(a5, v7, v19);
    return result;
  }

  v20 = vmul_f32(v13, v6);
  v21 = vaddv_f32(v20);
  if (v11 <= 0.00000011921)
  {
    goto LABEL_12;
  }

  v22 = vadd_f32(v8, vdup_lane_s32(v8, 1));
  v23 = vaddv_f32(v15);
  v24 = vmul_f32(v7, v6);
  v25 = vadd_f32(v20, vdup_lane_s32(v20, 1));
  v26 = vadd_f32(v24, vdup_lane_s32(v24, 1));
  v27 = vaddv_f32(v24);
  v28 = vmls_f32(vmul_f32(v14, v22), v26, v26);
  if (v28.f32[0] == 0.0)
  {
    v18 = 0.0;
    v19 = (v23 + (0.0 * v27)) / v11;
    if (v19 < 0.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = fmaxf(fminf(vdiv_f32(vmls_f32(vmul_f32(v26, v16), v14, v25), v28).f32[0], 1.0), 0.0);
    v19 = (v23 + (v18 * v27)) / v11;
    if (v19 < 0.0)
    {
LABEL_12:
      result = vmla_n_f32(result, v6, fmaxf(fminf(-v21 / v9, 1.0), 0.0));
      *a1 = result;
      *a2 = vmla_n_f32(a5, v7, 0.0);
      return result;
    }
  }

  if (v19 <= 1.0)
  {
    goto LABEL_7;
  }

  result = vmla_n_f32(result, v6, fmaxf(fminf(vdiv_f32(vsub_f32(v26, v25), v22).f32[0], 1.0), 0.0));
  *a1 = result;
  *a2 = vmla_n_f32(a5, v7, 1.0);
  return result;
}

uint64_t p2t::Orient2d(float64x2_t *this, Point *a2, Point *a3, Point *a4)
{
  v4 = vsubq_f64(*&a2->v, *&a3->v);
  v5 = vmulq_f64(vextq_s8(v4, v4, 8uLL), vsubq_f64(*this, *&a3->v));
  v6 = vsubq_f64(v5, vdupq_laneq_s64(v5, 1)).f64[0];
  if (fabs(v6) >= 1.0e-12)
  {
    return v6 > 0.0;
  }

  else
  {
    return 2;
  }
}

BOOL p2t::InScanArea(p2t *this, Point *a2, Point *a3, Point *a4, Point *a5)
{
  v5 = *(this + 1);
  v6 = *&a4[2].v;
  return (*&a2[2].v - v5) * (*&a4->v - *&a2->v) + (v6 - *&a2[2].v) * (*this - *&a2->v) < -1.0e-12 && (*&a3[2].v - v5) * (*&a4->v - *&a3->v) + (v6 - *&a3[2].v) * (*this - *&a3->v) > 1.0e-12;
}

void sub_2389EBE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void p2t::Sweep::SweepPoints(p2t::Sweep *this, p2t::SweepContext *a2)
{
  v4 = 1;
  if (((*(a2 + 17) - *(a2 + 16)) >> 3) >= 2)
  {
    Point = p2t::SweepContext::GetPoint(a2, &v4);
    p2t::SweepContext::LocateNode(a2, Point);
    p2t::Sweep::NewFrontTriangle();
  }
}

void p2t::Sweep::FinalizationPolygon(p2t::Sweep *this, p2t::SweepContext *a2)
{
  v3 = *(**(a2 + 19) + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  if ((p2t::Triangle::GetConstrainedEdgeCW(v4, *v3) & 1) == 0)
  {
    do
    {
      v4 = p2t::Triangle::NeighborCCW(v4, v5);
    }

    while (!p2t::Triangle::GetConstrainedEdgeCW(v4, v5));
  }

  p2t::SweepContext::MeshClean(a2, v4);
}

uint64_t p2t::Sweep::EdgeEvent(p2t::Sweep *a1, uint64_t a2, Point **a3, uint64_t a4)
{
  *(a2 + 64) = a3;
  v8 = *a3;
  v9 = a3[1];
  *(a2 + 72) = *&(*a3)->v > *&v9->v;
  v10 = *(a4 + 8);
  v11 = p2t::Triangle::EdgeIndex(v10, v8, v9);
  if (v11 == -1)
  {
    p2t::Sweep::FillEdgeEvent(a1, a2, a3, a4);
    v14 = *a3;
    v15 = a3[1];
    v16 = *(a4 + 8);

    return p2t::Sweep::EdgeEvent(a1, a2, v14, v15, v16, v15);
  }

  else
  {
    v12 = v11;
    p2t::Triangle::MarkConstrainedEdge(v10, v11);
    result = *(v10 + v12 + 4);
    if (result)
    {

      return p2t::Triangle::MarkConstrainedEdge(result, v8, v9);
    }
  }

  return result;
}

void p2t::Sweep::FillAdvancingFront(_BOOL8 a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  if (*(a3[2] + 16))
  {
    a1 = p2t::Sweep::LargeHole_DontFill(a1, a3[2]);
    if (!a1)
    {
      p2t::Sweep::Fill();
    }
  }

  if (*(a3[3] + 24) && !p2t::Sweep::LargeHole_DontFill(a1, a3[3]))
  {
    p2t::Sweep::Fill();
  }

  v6 = a3[2];
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      if (atan2(*(*a3 + 8) - *(*v7 + 8), **a3 - **v7) < 2.35619449)
      {

        p2t::Sweep::FillBasin(v5, a2, a3);
      }
    }
  }
}

BOOL p2t::Sweep::IsEdgeSideOfTriangle(p2t::Sweep *this, p2t::Triangle *a2, Point *a3, Point *a4)
{
  v7 = p2t::Triangle::EdgeIndex(a2, a3, a4);
  if (v7 != -1)
  {
    p2t::Triangle::MarkConstrainedEdge(a2, v7);
    v8 = *(a2 + v7 + 4);
    if (v8)
    {
      p2t::Triangle::MarkConstrainedEdge(v8, a3, a4);
    }
  }

  return v7 != -1;
}

void p2t::Sweep::FillEdgeEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a3;
  v9 = **a3;
  if (*(a2 + 72) == 1)
  {
    v10 = *(a4 + 16);
    v11 = *v10;
    for (i = **v10; i < v9; i = **v10)
    {
      v13 = (v8->f64[1] - *(*(a3 + 8) + 8)) * (i - v9) + (v11[1] - v8->f64[1]) * (**(a3 + 8) - v9);
      if (fabs(v13) >= 1.0e-12 && v13 > 0.0)
      {
        p2t::Sweep::FillRightBelowEdgeEvent(a1, a2, a3, v4);
        v8 = *a3;
        v9 = **a3;
        v10 = v4;
      }

      v4 = v10;
      v10 = *(v10 + 16);
      v11 = *v10;
    }
  }

  else
  {
    v14 = *(a4 + 24);
    v15 = *v14;
    for (j = **v14; j > v9; j = **v14)
    {
      v17 = (v8->f64[1] - *(*(a3 + 8) + 8)) * (j - v9) + (v15[1] - v8->f64[1]) * (**(a3 + 8) - v9);
      if (fabs(v17) >= 1.0e-12 && v17 <= 0.0)
      {
        p2t::Sweep::FillLeftBelowEdgeEvent(a1, a2, a3, v4);
        v8 = *a3;
        v9 = **a3;
        v14 = v4;
      }

      v4 = v14;
      v14 = *(v14 + 24);
      v15 = *v14;
    }
  }
}

uint64_t p2t::Sweep::EdgeEvent(p2t::Sweep *this, p2t::SweepContext *a2, Point *a3, Point *a4, p2t::Triangle *a5, Point *a6)
{
  v7 = a5;
  v11 = a4;
  v12 = p2t::Triangle::EdgeIndex(a5, a3, a4);
  if (v12 != -1)
  {
LABEL_29:
    v25 = v12;
    p2t::Triangle::MarkConstrainedEdge(v7, v12);
    result = *(v7 + v25 + 4);
    if (result)
    {

      return p2t::Triangle::MarkConstrainedEdge(result, a3, v11);
    }

    return result;
  }

  v13 = v11;
  while (1)
  {
    while (1)
    {
      v14 = p2t::Triangle::PointCCW(v7, a6);
      v15 = vsubq_f64(*&v14->v, *&a3->v);
      v16 = vmulq_f64(vextq_s8(v15, v15, 8uLL), vsubq_f64(*v13, *&a3->v));
      *&v17 = *&vsubq_f64(v16, vdupq_laneq_s64(v16, 1));
      if (fabs(v17) < 1.0e-12)
      {
        v21 = *(v7 + 1);
        if (v21 != v13 && *(v7 + 2) != v13 && *(v7 + 3) != v13 || v21 != v14 && *(v7 + 2) != v14 && *(v7 + 3) != v14)
        {
          p2t::Sweep::EdgeEvent(v28);
        }

        goto LABEL_23;
      }

      v26 = v17;
      v14 = p2t::Triangle::PointCW(v7, a6);
      v18 = vsubq_f64(*&v14->v, *&a3->v);
      v19 = vmulq_f64(vextq_s8(v18, v18, 8uLL), vsubq_f64(*v13, *&a3->v));
      *&v20 = *&vsubq_f64(v19, vdupq_laneq_s64(v19, 1));
      if (fabs(v20) >= 1.0e-12)
      {
        break;
      }

      v22 = *(v7 + 1);
      if (v22 != v13 && *(v7 + 2) != v13 && *(v7 + 3) != v13 || v22 != v14 && *(v7 + 2) != v14 && *(v7 + 3) != v14)
      {
        p2t::Sweep::EdgeEvent(v27);
      }

LABEL_23:
      v23 = v14;
      p2t::Triangle::MarkConstrainedEdge(v7, v13, v14);
      *(*(a2 + 8) + 8) = v23;
      v7 = p2t::Triangle::NeighborAcross(v7, a6);
      v12 = p2t::Triangle::EdgeIndex(v7, a3, v23);
      a6 = v23;
      v11 = v23;
      v13 = v23;
      if (v12 != -1)
      {
        goto LABEL_29;
      }
    }

    if (v26 > 0.0 == v20 <= 0.0)
    {
      break;
    }

    if (v26 > 0.0)
    {
      v7 = p2t::Triangle::NeighborCW(v7, a6);
      v12 = p2t::Triangle::EdgeIndex(v7, a3, v13);
      if (v12 != -1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v7 = p2t::Triangle::NeighborCCW(v7, a6);
      v12 = p2t::Triangle::EdgeIndex(v7, a3, v13);
      if (v12 != -1)
      {
LABEL_28:
        v11 = v13;
        goto LABEL_29;
      }
    }
  }

  return p2t::Sweep::FlipEdgeEvent(this, a2, a3, v13, v7, a6);
}

uint64_t p2t::Sweep::FlipEdgeEvent(p2t::Sweep *this, p2t::SweepContext *a2, Point *a3, Point *a4, p2t::Triangle *a5, Point *a6)
{
  v7 = a5;
  v12 = p2t::Triangle::NeighborAcross(a5, a6);
  v13 = p2t::Triangle::OppositePoint(v12, v7, a6);
  if (!v13)
  {
LABEL_37:
    p2t::Sweep::FlipEdgeEvent();
  }

  v14 = v13;
  while (1)
  {
    v19 = p2t::Triangle::PointCCW(v7, a6);
    v20 = p2t::Triangle::PointCW(v7, a6);
    v21 = *v14;
    v22 = vsubq_f64(*v14, *&v19->v);
    v23 = vmulq_f64(vsubq_f64(*&a6->v, *&v19->v), vextq_s8(v22, v22, 8uLL));
    if (vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0] >= -1.0e-12)
    {
      break;
    }

    v24 = vsubq_f64(v21, *&v20->v);
    v25 = vmulq_f64(vsubq_f64(*&a6->v, *&v20->v), vextq_s8(v24, v24, 8uLL));
    if (vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0] <= 1.0e-12)
    {
      break;
    }

    p2t::Sweep::RotateTrianglePair(v20, v7, a6, v12, v14);
    p2t::SweepContext::MapTriangleToNodes(a2, v7);
    result = p2t::SweepContext::MapTriangleToNodes(a2, v12);
    v28 = *&a4->v;
    v27 = *&a4[2].v;
    v29 = *&a3->v;
    v30 = *&a3[2].v;
    v31 = v14->f64[0];
    v32 = v14->f64[1];
    if (*&a6->v == *&a4->v && *&a6[2].v == v27 && v31 == v29 && v32 == v30)
    {
      v33 = *(a2 + 8);
      v34 = v33[1];
      if (v28 == *v34 && v27 == v34[1])
      {
        v36 = *v33;
        if (v29 == *v36 && v30 == v36[1])
        {
          p2t::Triangle::MarkConstrainedEdge(v7, a3, a4);
          p2t::Triangle::MarkConstrainedEdge(v12, a3, a4);
          p2t::Sweep::Legalize(this, a2, v7);

          return p2t::Sweep::Legalize(this, a2, v12);
        }
      }

      return result;
    }

    v15 = (v29 - v31) * (v27 - v30) + (v32 - v30) * (v28 - v29);
    v16 = fabs(v15) >= 1.0e-12;
    v17 = v15 > 0.0;
    if (v16 && v17)
    {
      v18 = v12;
    }

    else
    {
      v18 = v7;
    }

    if (!v16 || !v17)
    {
      v7 = v12;
    }

    *(v18 + p2t::Triangle::EdgeIndex(v18, a6, v14) + 3) = 1;
    p2t::Sweep::Legalize(this, a2, v18);
    p2t::Triangle::ClearDelunayEdges(v18);
    v12 = p2t::Triangle::NeighborAcross(v7, a6);
    v14 = p2t::Triangle::OppositePoint(v12, v7, a6);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v38 = vsubq_f64(v21, *&a3->v);
  v39 = vmulq_f64(vsubq_f64(*&a4->v, *&a3->v), vextq_s8(v38, v38, 8uLL));
  v39.f64[0] = vsubq_f64(v39, vdupq_laneq_s64(v39, 1)).f64[0];
  v40 = v39.f64[0] > 0.0;
  if (fabs(v39.f64[0]) < 1.0e-12)
  {
    v40 = 2;
  }

  if (v40 == 1)
  {
    v41 = p2t::Triangle::PointCW(v12, v14);
  }

  else
  {
    if (v40)
    {
      p2t::Sweep::FlipEdgeEvent();
    }

    v41 = p2t::Triangle::PointCCW(v12, v14);
  }

  p2t::Sweep::FlipScanEdgeEvent(this, a2, a3, a4, v7, v12, v41);

  return p2t::Sweep::EdgeEvent(this, a2, a3, a4, v7, a6);
}

uint64_t p2t::Sweep::Legalize(p2t::Sweep *this, p2t::SweepContext *a2, p2t::Triangle *a3)
{
  if ((*(a3 + 3) & 1) == 0)
  {
    v6 = *(a3 + 4);
    if (v6)
    {
      v7 = *(a3 + 1);
      v8 = p2t::Triangle::OppositePoint(*(a3 + 4), a3, v7);
      v9 = p2t::Triangle::Index(v6, v8);
      if ((*(v6 + v9) & 1) != 0 || *(v6 + v9 + 3) == 1)
      {
        *a3 = *(v6 + v9);
      }

      else
      {
        v11 = p2t::Triangle::PointCCW(a3, v7);
        v12 = p2t::Triangle::PointCW(a3, v7);
        v13 = *&v8[2].v;
        v14 = *v7 - *&v8->v;
        v15 = *(v7 + 8) - v13;
        v16 = *v11 - *&v8->v;
        v17 = v11[1] - v13;
        v18 = -(v16 * v15 - v17 * v14);
        if (v18 > 0.0)
        {
          v19 = *v12 - *&v8->v;
          v20 = v12[1] - v13;
          v21 = -(v20 * v14 - v19 * v15);
          if (v21 > 0.0 && v21 * (v16 * v16 + v17 * v17) + -(v19 * v17 - v20 * v16) * (v14 * v14 + v15 * v15) + (v19 * v19 + v20 * v20) * v18 > 0.0)
          {
            v22 = 0;
            v23 = v6 + 3;
            goto LABEL_28;
          }
        }
      }
    }
  }

  if ((*(a3 + 4) & 1) == 0)
  {
    v6 = *(a3 + 5);
    if (v6)
    {
      v7 = *(a3 + 2);
      v8 = p2t::Triangle::OppositePoint(*(a3 + 5), a3, v7);
      v9 = p2t::Triangle::Index(v6, v8);
      if (*(v6 + v9) & 1) != 0 || (*(v6 + v9 + 3))
      {
        *(a3 + 1) = *(v6 + v9);
      }

      else
      {
        v24 = p2t::Triangle::PointCCW(a3, v7);
        v12 = p2t::Triangle::PointCW(a3, v7);
        v25 = *&v8[2].v;
        v26 = *v7 - *&v8->v;
        v27 = *(v7 + 8) - v25;
        v28 = *v24 - *&v8->v;
        v29 = v24[1] - v25;
        v30 = -(v28 * v27 - v29 * v26);
        if (v30 > 0.0)
        {
          v31 = *v12 - *&v8->v;
          v32 = v12[1] - v25;
          v33 = -(v32 * v26 - v31 * v27);
          if (v33 > 0.0 && v33 * (v28 * v28 + v29 * v29) + -(v31 * v29 - v32 * v28) * (v26 * v26 + v27 * v27) + (v31 * v31 + v32 * v32) * v30 > 0.0)
          {
            v23 = v6 + 3;
            v22 = 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

  if (*(a3 + 5))
  {
    return 0;
  }

  v6 = *(a3 + 6);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a3 + 3);
  v8 = p2t::Triangle::OppositePoint(*(a3 + 6), a3, v7);
  v9 = p2t::Triangle::Index(v6, v8);
  if (*(v6 + v9) & 1) != 0 || (*(v6 + v9 + 3))
  {
    result = 0;
    *(a3 + 2) = *(v6 + v9);
    return result;
  }

  v34 = p2t::Triangle::PointCCW(a3, v7);
  v12 = p2t::Triangle::PointCW(a3, v7);
  v35 = *&v8[2].v;
  v36 = *v7 - *&v8->v;
  v37 = *(v7 + 8) - v35;
  v38 = *v34 - *&v8->v;
  v39 = v34[1] - v35;
  v40 = -(v38 * v37 - v39 * v36);
  if (v40 <= 0.0)
  {
    return 0;
  }

  v41 = *v12 - *&v8->v;
  v42 = v12[1] - v35;
  v43 = -(v42 * v36 - v41 * v37);
  if (v43 <= 0.0 || v43 * (v38 * v38 + v39 * v39) + -(v41 * v39 - v42 * v38) * (v36 * v36 + v37 * v37) + (v41 * v41 + v42 * v42) * v40 <= 0.0)
  {
    return 0;
  }

  v23 = v6 + 3;
  v22 = 2;
LABEL_28:
  v44 = a3 + v22;
  *(a3 + v22 + 3) = 1;
  v23[v9] = 1;
  p2t::Sweep::RotateTrianglePair(v12, a3, v7, v6, v8);
  if ((p2t::Sweep::Legalize(this, a2, a3) & 1) == 0)
  {
    p2t::SweepContext::MapTriangleToNodes(a2, a3);
  }

  if ((p2t::Sweep::Legalize(this, a2, v6) & 1) == 0)
  {
    p2t::SweepContext::MapTriangleToNodes(a2, v6);
  }

  v44[3] = 0;
  v23[v9] = 0;
  return 1;
}

BOOL p2t::Sweep::LargeHole_DontFill(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = **a2;
  v5 = *(*a2 + 8);
  v6 = **v3 - v4;
  v7 = *(*v3 + 8) - v5;
  v8 = **v2 - v4;
  v9 = *(*v2 + 8) - v5;
  result = 0;
  if (fabs(atan2(-(v8 * v7 - v9 * v6), v8 * v6 + v9 * v7)) > 1.57079633)
  {
    v10 = v3[2];
    if (!v10 || (v11 = atan2(-((*(*v10 + 8) - v5) * v8 - (**v10 - v4) * v9), (**v10 - v4) * v8 + (*(*v10 + 8) - v5) * v9), v11 > 1.57079633) || v11 < 0.0)
    {
      v12 = v2[3];
      if (!v12)
      {
        return 1;
      }

      v13 = atan2(-((**v12 - v4) * v7 - (*(*v12 + 8) - v5) * v6), (**v12 - v4) * v6 + (*(*v12 + 8) - v5) * v7);
      if (v13 > 1.57079633 || v13 < 0.0)
      {
        return 1;
      }
    }
  }

  return result;
}

void p2t::Sweep::FillBasin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = ***(v3 + 16);
  v5 = vsubq_f64(**a3, v4);
  v6 = vsubq_f64(**v3, v4);
  v7 = vmulq_f64(vextq_s8(v6, v6, 8uLL), v5);
  v7.f64[0] = vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0];
  if (fabs(v7.f64[0]) >= 1.0e-12 && v7.f64[0] > 0.0)
  {
    v8 = *(v3 + 16);
  }

  else
  {
    v8 = *(a3 + 16);
  }

  *(a2 + 24) = v8;
  v9 = v8;
  do
  {
    v10 = v9;
    v9 = v9[2];
  }

  while (v9 && *(*v10 + 8) >= (*v9)[1]);
  *(a2 + 32) = v10;
  if (v10 != v8)
  {
    v11 = v10;
    do
    {
      v12 = v11;
      v11 = v11[2];
    }

    while (v11 && (*v12)[1] < (*v11)[1]);
    *(a2 + 40) = v12;
    if (v12 != v10)
    {
      v13 = *v12;
      v14 = *v8;
      v15 = v14[1];
      v16 = v13[1];
      *(a2 + 48) = *v13 - *v14;
      *(a2 + 56) = v15 > v16;
      p2t::Sweep::FillBasinReq(a1, a2, v10);
    }
  }
}

BOOL p2t::Sweep::AngleExceeds90Degrees(p2t::Sweep *this, Point *a2, Point *a3, Point *a4)
{
  v4 = vsubq_f64(*&a3->v, *&a2->v);
  v5 = vsubq_f64(*&a4->v, *&a2->v);
  return fabs(atan2(vmlsq_laneq_f64(vmulq_laneq_f64(v4, v5, 1), v5, v4, 1).f64[0], vaddvq_f64(vmulq_f64(v5, v4)))) > 1.57079633;
}

uint64_t p2t::Sweep::AngleExceedsPlus90DegreesOrIsNegative(p2t::Sweep *this, Point *a2, Point *a3, Point *a4)
{
  v4 = vsubq_f64(*&a3->v, *&a2->v);
  v5 = vsubq_f64(*&a4->v, *&a2->v);
  v6 = vmulq_f64(vextq_s8(v5, v5, 8uLL), v4);
  v7 = atan2(vsubq_f64(v6, vdupq_laneq_s64(v6, 1)).f64[0], vaddvq_f64(vmulq_f64(v5, v4)));
  return (v7 > 1.57079633) | (v7 < 0.0);
}

long double p2t::Sweep::Angle(p2t::Sweep *this, Point *a2, Point *a3, Point *a4)
{
  v4 = vsubq_f64(*&a3->v, *&a2->v);
  v5 = vsubq_f64(*&a4->v, *&a2->v);
  return atan2(vmlsq_laneq_f64(vmulq_laneq_f64(v4, v5, 1), v5, v4, 1).f64[0], vaddvq_f64(vmulq_f64(v5, v4)));
}

double p2t::Sweep::HoleAngle(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = vsubq_f64(***(a2 + 16), v2);
  v4 = vsubq_f64(***(a2 + 24), v2);
  return atan2(vmlsq_laneq_f64(vmulq_laneq_f64(v3, v4, 1), v4, v3, 1).f64[0], vaddvq_f64(vmulq_f64(v4, v3)));
}

BOOL p2t::Sweep::Incircle(p2t::Sweep *this, Point *a2, Point *a3, Point *a4, Point *a5)
{
  v5 = *&a5[2].v;
  v6 = *&a2->v - *&a5->v;
  v7 = *&a2[2].v - v5;
  v8 = *&a3->v - *&a5->v;
  v9 = *&a3[2].v - v5;
  v10 = -(v8 * v7 - v9 * v6);
  if (v10 <= 0.0)
  {
    return 0;
  }

  v11 = *&a4->v - *&a5->v;
  v12 = *&a4[2].v - v5;
  v13 = -(v12 * v6 - v11 * v7);
  return v13 > 0.0 && v13 * (v8 * v8 + v9 * v9) + -(v11 * v9 - v12 * v8) * (v6 * v6 + v7 * v7) + (v11 * v11 + v12 * v12) * v10 > 0.0;
}

void *p2t::Sweep::RotateTrianglePair(p2t::Sweep *this, p2t::Triangle *a2, Point *a3, p2t::Triangle *a4, Point *a5)
{
  v18 = p2t::Triangle::NeighborCCW(a2, a3);
  v19 = p2t::Triangle::NeighborCW(a2, a3);
  v20 = p2t::Triangle::NeighborCCW(a4, a5);
  v21 = p2t::Triangle::NeighborCW(a4, a5);
  ConstrainedEdgeCCW = p2t::Triangle::GetConstrainedEdgeCCW(a2, a3);
  ConstrainedEdgeCW = p2t::Triangle::GetConstrainedEdgeCW(a2, a3);
  v17 = p2t::Triangle::GetConstrainedEdgeCCW(a4, a5);
  v16 = p2t::Triangle::GetConstrainedEdgeCW(a4, a5);
  DelunayEdgeCCW = p2t::Triangle::GetDelunayEdgeCCW(a2, a3);
  DelunayEdgeCW = p2t::Triangle::GetDelunayEdgeCW(a2, a3);
  v13 = p2t::Triangle::GetDelunayEdgeCCW(a4, a5);
  v14 = p2t::Triangle::GetDelunayEdgeCW(a4, a5);
  p2t::Triangle::Legalize(a2, a3, a5);
  p2t::Triangle::Legalize(a4, a5, a3);
  p2t::Triangle::SetDelunayEdgeCCW(a4, a3, DelunayEdgeCCW);
  p2t::Triangle::SetDelunayEdgeCW(a2, a3, DelunayEdgeCW);
  p2t::Triangle::SetDelunayEdgeCCW(a2, a5, v13);
  p2t::Triangle::SetDelunayEdgeCW(a4, a5, v14);
  p2t::Triangle::SetConstrainedEdgeCCW(a4, a3, ConstrainedEdgeCCW);
  p2t::Triangle::SetConstrainedEdgeCW(a2, a3, ConstrainedEdgeCW);
  p2t::Triangle::SetConstrainedEdgeCCW(a2, a5, v17);
  p2t::Triangle::SetConstrainedEdgeCW(a4, a5, v16);
  p2t::Triangle::ClearNeighbors(a2);
  p2t::Triangle::ClearNeighbors(a4);
  if (v18)
  {
    p2t::Triangle::MarkNeighbor(a4, v18);
  }

  if (v19)
  {
    p2t::Triangle::MarkNeighbor(a2, v19);
  }

  if (v20)
  {
    p2t::Triangle::MarkNeighbor(a2, v20);
  }

  if (v21)
  {
    p2t::Triangle::MarkNeighbor(a4, v21);
  }

  return p2t::Triangle::MarkNeighbor(a2, a4);
}

void p2t::Sweep::FillBasinReq(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 40;
  if (*(a2 + 56))
  {
    v3 = 24;
  }

  if (*(a2 + 48) <= *(**(a2 + v3) + 8) - *(*a3 + 8))
  {
    p2t::Sweep::Fill();
  }
}

BOOL p2t::Sweep::IsShallow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 40;
  if (*(a2 + 56))
  {
    v3 = 24;
  }

  return *(a2 + 48) > *(**(a2 + v3) + 8) - *(*a3 + 8);
}

void p2t::Sweep::FillRightAboveEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *v4;
  v6 = **v4;
  v7 = *a3;
  v8 = (*a3)->f64[0];
  if (v6 < v8)
  {
    v9 = a4;
    do
    {
      v13 = (v7->f64[1] - a3[1]->f64[1]) * (v6 - v8) + (v5[1] - v7->f64[1]) * (a3[1]->f64[0] - v8);
      if (fabs(v13) >= 1.0e-12 && v13 > 0.0)
      {
        p2t::Sweep::FillRightBelowEdgeEvent(a1, a2, a3, v9);
        v7 = *a3;
        v8 = (*a3)->f64[0];
        v4 = v9;
      }

      v9 = v4;
      v4 = *(v4 + 16);
      v5 = *v4;
      v6 = **v4;
    }

    while (v6 < v8);
  }
}

void p2t::Sweep::FillLeftAboveEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *v4;
  v6 = **v4;
  v7 = *a3;
  v8 = (*a3)->f64[0];
  if (v6 > v8)
  {
    v9 = a4;
    do
    {
      v13 = (v7->f64[1] - a3[1]->f64[1]) * (v6 - v8) + (v5[1] - v7->f64[1]) * (a3[1]->f64[0] - v8);
      if (fabs(v13) >= 1.0e-12 && v13 <= 0.0)
      {
        p2t::Sweep::FillLeftBelowEdgeEvent(a1, a2, a3, v9);
        v7 = *a3;
        v8 = (*a3)->f64[0];
        v4 = v9;
      }

      v9 = v4;
      v4 = *(v4 + 24);
      v5 = *v4;
      v6 = **v4;
    }

    while (v6 > v8);
  }
}

void p2t::Sweep::FillRightBelowEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *a4;
  for (v5.f64[0] = **a4; v5.f64[0] < (*a3)->f64[0]; v5.f64[0] = **a4)
  {
    v10 = *(a4 + 16);
    v11 = **(v10 + 16);
    v5.f64[1] = v4[1];
    v12 = vsubq_f64(v5, *v11);
    v13 = vmulq_f64(vsubq_f64(**v10, *v11), vextq_s8(v12, v12, 8uLL));
    *&v14 = *&vsubq_f64(vdupq_laneq_s64(v13, 1), v13);
    if (fabs(v14) >= 1.0e-12 && v14 > 0.0)
    {
      p2t::Sweep::Fill();
    }

    p2t::Sweep::FillRightConvexEdgeEvent(a1, a2, a3, a4);
    v4 = *a4;
  }
}

void p2t::Sweep::FillRightConvexEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *v4;
  v6 = v4[2];
  v7 = *v6;
  v8.f64[0] = **v4;
  v9 = **v6;
  do
  {
    v10 = v5 + 1;
    v5 = v7;
    v6 = v6[2];
    v7 = *v6;
    v11 = **v6;
    v8.f64[1] = *v10;
    v12 = vsubq_f64(v8, v11);
    v13 = vmulq_f64(vsubq_f64(v9, v11), vextq_s8(v12, v12, 8uLL));
    *&v14 = *&vsubq_f64(vdupq_laneq_s64(v13, 1), v13);
    if (fabs(v14) >= 1.0e-12 && v14 > 0.0)
    {
      p2t::Sweep::Fill();
    }

    v15 = **a3;
    v16 = vsubq_f64(*a3[1], v15);
    v17 = vmulq_f64(vextq_s8(v16, v16, 8uLL), vsubq_f64(v9, v15));
    *&v18 = *&vsubq_f64(vdupq_laneq_s64(v17, 1), v17);
    if (fabs(v18) < 1.0e-12)
    {
      break;
    }

    v19 = v18 <= 0.0;
    v8.f64[0] = v9.f64[0];
    v9 = **v6;
  }

  while (!v19);
}

void p2t::Sweep::FillLeftBelowEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *a4;
  for (v5.f64[0] = **a4; v5.f64[0] > (*a3)->f64[0]; v5.f64[0] = **a4)
  {
    v10 = *(a4 + 24);
    v11 = **(v10 + 24);
    v5.f64[1] = v4[1];
    v12 = vsubq_f64(v5, *v11);
    v13 = vmulq_f64(vsubq_f64(**v10, *v11), vextq_s8(v12, v12, 8uLL));
    *&v14 = *&vsubq_f64(vdupq_laneq_s64(v13, 1), v13);
    if (fabs(v14) >= 1.0e-12 && v14 <= 0.0)
    {
      p2t::Sweep::Fill();
    }

    p2t::Sweep::FillLeftConvexEdgeEvent(a1, a2, a3, a4);
    v4 = *a4;
  }
}

void p2t::Sweep::FillLeftConvexEdgeEvent(uint64_t a1, uint64_t a2, float64x2_t **a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *v4;
  v6 = v4[3];
  v7 = *v6;
  v8.f64[0] = **v4;
  v9 = **v6;
  do
  {
    v10 = v5 + 1;
    v5 = v7;
    v6 = v6[3];
    v7 = *v6;
    v11 = **v6;
    v8.f64[1] = *v10;
    v12 = vsubq_f64(v8, v11);
    v13 = vmulq_f64(vsubq_f64(v9, v11), vextq_s8(v12, v12, 8uLL));
    *&v14 = *&vsubq_f64(vdupq_laneq_s64(v13, 1), v13);
    if (fabs(v14) >= 1.0e-12 && v14 <= 0.0)
    {
      p2t::Sweep::Fill();
    }

    v15 = **a3;
    v16 = vsubq_f64(*a3[1], v15);
    v17 = vmulq_f64(vextq_s8(v16, v16, 8uLL), vsubq_f64(v9, v15));
    *&v18 = *&vsubq_f64(vdupq_laneq_s64(v17, 1), v17);
    if (fabs(v18) < 1.0e-12)
    {
      break;
    }

    v19 = v18 <= 0.0;
    v8.f64[0] = v9.f64[0];
    v9 = **v6;
  }

  while (v19);
}

p2t::Triangle *p2t::Sweep::NextFlipTriangle(p2t::Sweep *this, p2t::SweepContext *a2, int a3, p2t::Triangle *a4, p2t::Triangle *a5, Point *a6, Point *a7)
{
  if (a3 == 1)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  if (a3 == 1)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  *(v9 + p2t::Triangle::EdgeIndex(v9, a6, a7) + 3) = 1;
  p2t::Sweep::Legalize(this, a2, v9);
  p2t::Triangle::ClearDelunayEdges(v9);
  return v10;
}

Point *p2t::Sweep::NextFlipPoint(p2t::Sweep *this, Point *a2, Point *a3, p2t::Triangle *a4, Point *a5)
{
  v6 = vsubq_f64(*&a5->v, *&a2->v);
  v7 = vmulq_f64(vextq_s8(v6, v6, 8uLL), vsubq_f64(*&a3->v, *&a2->v));
  v7.f64[0] = vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0];
  v8 = v7.f64[0] > 0.0;
  if (fabs(v7.f64[0]) < 1.0e-12)
  {
    v8 = 2;
  }

  if (v8 == 1)
  {

    return p2t::Triangle::PointCW(a4, a5);
  }

  else
  {
    if (v8)
    {
      p2t::Sweep::FlipEdgeEvent();
    }

    return p2t::Triangle::PointCCW(a4, a5);
  }
}

uint64_t p2t::Sweep::FlipScanEdgeEvent(p2t::Sweep *this, p2t::SweepContext *a2, Point *a3, Point *a4, p2t::Triangle *a5, p2t::Triangle *a6, Point *a7)
{
  while (1)
  {
    v14 = a6;
    a6 = p2t::Triangle::NeighborAcross(a6, a7);
    v15 = p2t::Triangle::OppositePoint(a6, v14, a7);
    v16 = p2t::Triangle::PointCCW(a5, a4);
    v17 = p2t::Triangle::PointCW(a5, a4);
    v18 = *&a4->v;
    v19 = *&a4[2].v;
    v20 = *&v15->v;
    v21 = *&v15[2].v;
    if ((v16[1] - v19) * (*&v15->v - *v16) + (v21 - v16[1]) * (*&a4->v - *v16) < -1.0e-12 && (v17[1] - v19) * (v20 - *v17) + (v21 - v17[1]) * (v18 - *v17) > 1.0e-12)
    {
      break;
    }

    v22 = (*&a3[2].v - v19) * (v20 - *&a3->v) + (v21 - *&a3[2].v) * (v18 - *&a3->v);
    v23 = v22 > 0.0;
    if (fabs(v22) < 1.0e-12)
    {
      v23 = 2;
    }

    if (v23 == 1)
    {
      a7 = p2t::Triangle::PointCW(a6, v15);
    }

    else
    {
      if (v23)
      {
        p2t::Sweep::FlipEdgeEvent();
      }

      a7 = p2t::Triangle::PointCCW(a6, v15);
    }
  }

  return p2t::Sweep::FlipEdgeEvent(this, a2, a4, v15, a6, v15);
}

void p2t::Sweep::~Sweep(p2t::Sweep *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x23EE6C500](v2[v5], 0x1020C40DBF2485DLL);
        v2 = *this;
        v3 = *(this + 1);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_2389EEE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    MEMORY[0x23EE6C500](v12, v11);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EE6C500](v12, v11);
  _Unwind_Resume(a1);
}

void p2t::CDT::AddHole(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  p2t::SweepContext::AddHole(v2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_2389EEF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void p2t::CDT::~CDT(p2t::SweepContext **this)
{
  v2 = *this;
  if (v2)
  {
    p2t::SweepContext::~SweepContext(v2);
    MEMORY[0x23EE6C500]();
  }

  v3 = this[1];
  if (v3)
  {
    p2t::Sweep::~Sweep(v3);
    MEMORY[0x23EE6C500]();
  }
}

void sub_2389EF3C8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389EF7DC(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389EFBF0(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389F0228(_Unwind_Exception *a1)
{
  if (v2)
  {
    v7 = 8 * *(v5 - 168);
    do
    {

      v7 -= 8;
    }

    while (v7 != -8);
  }

  _Unwind_Resume(a1);
}

void makeHeap(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 8) != *a1)
  {
    v24 = **a1;
    v5 = *a1;
    v4 = *(a1 + 8);
    if (v4 == *a1)
    {
      v19 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = (a2 + 8);
      do
      {
        v9 = v5[v6];
        v10 = v9;
        v11 = *v8;
        if (!*v8)
        {
LABEL_12:
          operator new();
        }

        v12 = *v8;
        while (1)
        {
          while (1)
          {
            v13 = v12;
            v14 = v12[4];
            if (v9 >= v14)
            {
              break;
            }

            v12 = *v13;
            if (!*v13)
            {
              goto LABEL_12;
            }
          }

          if (v14 >= v9)
          {
            break;
          }

          v12 = *(v13 + 1);
          if (!v12)
          {
            goto LABEL_12;
          }
        }

        v15 = v13[10];
        if (!v11)
        {
LABEL_19:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v16 = v11;
            v17 = v11[4];
            if (v24 >= v17)
            {
              break;
            }

            v11 = *v16;
            if (!*v16)
            {
              goto LABEL_19;
            }
          }

          if (v17 >= v24)
          {
            break;
          }

          v11 = *(v16 + 1);
          if (!v11)
          {
            goto LABEL_19;
          }
        }

        if (v15 < v16[10])
        {
          v18 = v9;

          v24 = v18;
          v7 = v6;
        }

        ++v6;
        v5 = *a1;
        v4 = *(a1 + 8);
      }

      while (v6 < (v4 - *a1) >> 3);
      v19 = v7;
    }

    v20 = *(v4 - 8);
    *(v4 - 8) = 0;
    v21 = v5[v19];
    v5[v19] = 0;
    v22 = *(v4 - 8);
    *(v4 - 8) = v21;

    v23 = v5[v19];
    v5[v19] = v20;
  }
}

uint64_t makeHeap(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *result;
    if (*(result + 8) != *result)
    {
      v3 = 0;
      v4 = 0;
      v5 = *v2;
      v6 = (a2 + 8);
      do
      {
        v8 = v2[v3];
        v9 = *v6;
        if (!*v6)
        {
LABEL_13:
          operator new();
        }

        v10 = *v6;
        while (1)
        {
          while (1)
          {
            v11 = v10;
            v12 = v10[4];
            if (v8 >= v12)
            {
              break;
            }

            v10 = *v11;
            if (!*v11)
            {
              goto LABEL_13;
            }
          }

          if (v12 >= v8)
          {
            break;
          }

          v10 = *(v11 + 1);
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        v13 = v11[10];
        if (!v9)
        {
LABEL_20:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v14 = v9;
            v15 = v9[4];
            if (v5 >= v15)
            {
              break;
            }

            v9 = *v14;
            if (!*v14)
            {
              goto LABEL_20;
            }
          }

          if (v15 >= v5)
          {
            break;
          }

          v9 = *(v14 + 1);
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        if (v13 < v14[10])
        {
          v5 = v8;
          v4 = v3;
        }

        ++v3;
        v2 = *result;
        v7 = *(result + 8);
      }

      while (v3 < (v7 - *result) >> 3);
      v16 = *(v7 - 8);
      *(v7 - 8) = v2[v4];
      v2[v4] = v16;
    }
  }

  return result;
}

void sub_2389F1CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *__p, uint64_t a26)
{
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(&a16, a17);
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::__map_value_compare<p2t::Triangle *,std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>,std::less<p2t::Triangle *>,true>,std::allocator<std::__value_type<p2t::Triangle *,GKTriangleGraphNodes>>>::destroy(&a22, a23);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  _Unwind_Resume(a1);
}

void GKFindPath(GKGraphNode *a1, GKGraphNode *a2)
{
  a1;
  a2;
  operator new();
}

void sub_2389F343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26, uint64_t a27, void *a28)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<GKGraphNode * {__strong},float>,std::__map_value_compare<GKGraphNode * {__strong},std::__value_type<GKGraphNode * {__strong},float>,std::less<GKGraphNode * {__strong}>,true>,std::allocator<std::__value_type<GKGraphNode * {__strong},float>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<GKGraphNode * {__strong},float>,std::__map_value_compare<GKGraphNode * {__strong},std::__value_type<GKGraphNode * {__strong},float>,std::less<GKGraphNode * {__strong}>,true>,std::allocator<std::__value_type<GKGraphNode * {__strong},float>>>::destroy(&a25, a26);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](&a28);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100]((v30 - 128));

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<GKGraphNode * {__strong},float>,std::__map_value_compare<GKGraphNode * {__strong},std::__value_type<GKGraphNode * {__strong},float>,std::less<GKGraphNode * {__strong}>,true>,std::allocator<std::__value_type<GKGraphNode * {__strong},float>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<GKGraphNode * {__strong},float>,std::__map_value_compare<GKGraphNode * {__strong},std::__value_type<GKGraphNode * {__strong},float>,std::less<GKGraphNode * {__strong}>,true>,std::allocator<std::__value_type<GKGraphNode * {__strong},float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<GKGraphNode * {__strong},float>,std::__map_value_compare<GKGraphNode * {__strong},std::__value_type<GKGraphNode * {__strong},float>,std::less<GKGraphNode * {__strong}>,true>,std::allocator<std::__value_type<GKGraphNode * {__strong},float>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void RepairGKSceneNodeReferencesRelativeToScene(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [a1 entities];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v6 = [v5 components];
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v20 == v9)
              {
                v11 = *(*(&v19 + 1) + 8 * j);
                if (![v11 conformsToProtocol:&unk_284B59A68])
                {
                  continue;
                }
              }

              else
              {
                objc_enumerationMutation(v6);
                v11 = *(*(&v19 + 1) + 8 * j);
                if (![v11 conformsToProtocol:&unk_284B59A68])
                {
                  continue;
                }
              }

              v12 = v11;
              v13 = [v12 serializableNodeIndexPath];
              v14 = [v3 _subnodeFromIndexPath:v13];
              [v12 setNode:v14];

              [v12 setSerializableNodeIndexPath:0];
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void _ZN12GKCRTreeNodeI8NSObjectDv2_fE18SplitReduceOverlapEPS0_RKS1_S5__cold_1(void **a1, id *a2, void **a3)
{
  v5 = *a1;
  v6 = a2;
  if (v5 != a2)
  {
    do
    {

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEED1B8ne200100Ev(v5 - 4);
      v5 -= 7;
    }

    while (v5 != a2);
    v6 = *a3;
  }

  *a1 = a2;
  operator delete(v6);
}

void p2t::Sweep::EdgeEvent(uint64_t a1)
{
  v1 = MEMORY[0x23EE6C3F0](a1, "EdgeEvent - collinear points not supported");
  MEMORY[0x23EE6C400](v1);
  __assert_rtn("EdgeEvent", "sweep.cc", 142, "0");
}

{
  v1 = MEMORY[0x23EE6C3F0](a1, "EdgeEvent - collinear points not supported");
  MEMORY[0x23EE6C400](v1);
  __assert_rtn("EdgeEvent", "sweep.cc", 125, "0");
}

void p2t::Sweep::FlipEdgeEvent()
{
  __assert_rtn("NextFlipPoint", "sweep.cc", 771, "0");
}

{
  __assert_rtn("FlipEdgeEvent", "sweep.cc", 710, "0");
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7930]();
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}