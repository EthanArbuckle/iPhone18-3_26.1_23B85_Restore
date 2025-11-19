unint64_t DecodeN(unint64_t result, uint64_t a2, unsigned int (*a3)[16], unsigned int (*a4)[16], unint64_t a5)
{
  v5 = a2 - 1;
  if (a2 != 1)
  {
    do
    {
      v6 = (*a4)[v5];
      (*a3)[v5] = result / v6;
      result %= v6;
      --v5;
    }

    while (v5);
  }

  if (result >= a5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  (*a3)[0] = result;
  return result;
}

int *CMMLutTag::Interpolate(CMMLutTag *this, int a2, uint64_t a3, int *a4, uint64_t a5, unsigned __int16 *a6, unsigned int *a7, unsigned int *a8)
{
  v10 = a5;
  v11 = a4;
  if (a2)
  {
    v14 = a2;
    v15 = ~a2 + this;
    if (*(a3 + 4 * v15))
    {
      v16 = 0;
      v17 = *a7;
      *a7 = v17 + 1;
      v18 = (bswap32(*(a5 + 2 * *&a6[2 * v17])) >> 16);
      do
      {
        v19 = CMMLutTag::Interpolate(this, v16, a3, v18, v10, a6, a7, a8);
        v18 = v19;
        ++v16;
      }

      while (v14 != v16);
      v20 = *(a3 + 4 * v15);
      v21 = v19 - v11;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }

    v23 = 1;
    do
    {
      v24 = 2 * v23;
      v26 = v23 >= 0 && v24 != 0;
      CMMThrowExceptionWithLog(v26, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      v23 = v24;
      --v14;
    }

    while (v14);
    *a7 += v24;
  }

  else
  {
    v22 = *a7;
    *a7 = v22 + 1;
    v21 = *(a3 + 4 * (this - 1));
    if (v21)
    {
      v20 = *(a5 + 2 * *&a6[2 * v22]) - a4;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }
  }

  return v11;
}

void CMMLutTag::GetWholeCloth(CMMLutTag *this, unsigned __int8 *a2, unint64_t *a3)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

uint64_t CMMLutAtoBTag::GetPostCLUTLutSize(CMMLutAtoBTag *this, unsigned int a2)
{
  result = *(this + a2 + 44);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutAtoBTag::GetPreCLUTLutSize(CMMLutAtoBTag *this, unsigned int a2)
{
  result = *(this + a2 + 61);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutAtoBTag::MakeOutputTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 208) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 216);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutAtoBTag::GetOutputMatrix(CMMLutAtoBTag *this)
{
  v3 = *(this + 28);
  result = this + 112;
  if (v3 == 0x10000 && *(this + 33) == 0x10000 && *(this + 38) == 0x10000)
  {
    v4 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*(this + 116)), vceqzq_s32(*(this + 136)))));
    v4.i8[0] = vmaxv_u8(v4);
    if (((*(this + 39) == 0) & ~v4.i32[0]) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMLutAtoBTag::MakePostCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 344) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 352);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutAtoBTag::MakePreCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 480) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 488);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

float CMMParaCurveTag::EvaluateGamma(CMMParaCurveTag *this, BOOL *a2, double a3)
{
  if (*(this + 28))
  {
    v29 = 0;
    CMMMemMgr::CMMMemMgr(&v29);
    v7 = CMMBase::NewInternal(0x28, &v29, v5, v6);
    *v7 = &unk_1F0E09180;
    v7[1] = 1;
    v7[3] = 0;
    v7[4] = 16388;
    v10 = CMMBase::NewInternal(0x4004, &v29, v8, v9);
    v7[2] = v10;
    v11 = CMMTable::UInt8Data(v10, v7[3]);
    CMMParaCurveTag::MakeLut(this, 0, v11, -1, 1.0);
    v12 = CMMTable::UInt8Data(v7[2], v7[3]);
    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      if ((v13 & 0xFFF) != 0)
      {
        v17 = vcvtd_n_f64_u32(*(v12 + 4 * v13), 0x18uLL);
        if (v17 != 0.0 && v17 != 1.0)
        {
          v19 = log(v16 * 0.000244140625);
          v15 = v15 + log(v17) / v19;
          ++v14;
        }
      }

      ++v13;
      v16 = v16 + 1.0;
    }

    while (v13 != 4097);
    if (v14)
    {
      v20 = CMMTable::UInt8Data(v7[2], v7[3]);
      v21 = 0;
      v22 = v15 / v14;
      while (vabdd_f64(vcvtd_n_f64_u32(*(v20 + 4 * v21), 0x18uLL), pow(vcvtd_n_f64_u32(v21, 0xCuLL), v22)) <= a3)
      {
        if (++v21 == 4097)
        {
          goto LABEL_20;
        }
      }

      v22 = 0.0;
LABEL_20:
      v24 = v22;
    }

    else
    {
      v24 = 1.0;
    }

    if (v29)
    {
      v25 = *v29;
      if (*v29)
      {
        do
        {
          v26 = *v25;
          free(v25);
          v25 = v26;
        }

        while (v26);
      }
    }

    CMMMemMgr::ReleaseMemList(&v29);
  }

  else
  {
    v23 = *(this + 16);
    if (v23 >> 1 == 58982)
    {
      v24 = 1.8;
      if (a2)
      {
        *a2 = 1;
      }
    }

    else
    {
      v27 = vcvtd_n_f64_s32(v23, 0x10uLL);
      if (a2)
      {
        *a2 = 1;
      }

      return v27;
    }
  }

  return v24;
}

void sub_19A954978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

void CMMParaCurveTag::MakeLut(uint64_t a1, uint64_t a2, int *a3, int a4, double a5)
{
  v10 = *(a1 + 56);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 0;
      v12 = *(a1 + 64);
      __y = vcvtd_n_f64_s32(v12, 0x10uLL);
      v13 = *(a1 + 68);
      v22.i64[0] = v13.i32[0];
      v22.i64[1] = v13.i32[1];
      v16 = vmulq_f64(vcvtq_f64_s64(v22), vdupq_n_s64(0x3EF0000000000000uLL));
      v19 = 0uLL;
      v72 = COERCE_UNSIGNED_INT64(vcvtd_n_f64_s32(*(a1 + 76), 0x10uLL));
      v20 = 2;
      goto LABEL_31;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        v11 = 0;
        v12 = *(a1 + 64);
        __y = vcvtd_n_f64_s32(v12, 0x10uLL);
        v13 = *(a1 + 68);
        v14.i64[0] = v13.i32[0];
        v14.i64[1] = v13.i32[1];
        v15 = vdupq_n_s64(0x3EF0000000000000uLL);
        v16 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v17 = *(a1 + 76);
        v14.i64[0] = v17;
        v14.i64[1] = SHIDWORD(v17);
        v72 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v18 = *(a1 + 84);
        v14.i64[0] = v18;
        v14.i64[1] = SHIDWORD(v18);
        v19 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v20 = 4;
        goto LABEL_31;
      }

LABEL_103:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }

    v11 = 0;
    v12 = *(a1 + 64);
    __y = vcvtd_n_f64_s32(v12, 0x10uLL);
    v13 = *(a1 + 68);
    v23.i64[0] = v13.i32[0];
    v23.i64[1] = v13.i32[1];
    v24 = vdupq_n_s64(0x3EF0000000000000uLL);
    v16 = vmulq_f64(vcvtq_f64_s64(v23), v24);
    v25 = *(a1 + 76);
    v23.i64[0] = v25;
    v23.i64[1] = SHIDWORD(v25);
    v72 = vmulq_f64(vcvtq_f64_s64(v23), v24);
    v19 = 0uLL;
    goto LABEL_30;
  }

  if (!*(a1 + 56))
  {
    v12 = *(a1 + 64);
    v26 = vcvtd_n_f64_s32(v12, 0x10uLL);
    if (v26 >= 2.4023 || v26 <= 2.398)
    {
      v28 = v26;
    }

    else
    {
      v28 = 2.4;
    }

    v29 = 1.0;
    if (v28 < 1.0)
    {
      v29 = 16.0;
    }

    v30 = v29;
    v31 = v30;
    if (v28 > 1.0)
    {
      v31 = 0.0625;
    }

    __y = v28;
    v73 = v31;
    v32 = v28;
    v33 = 0.0;
    if (v32 != 1.0 && v32 != 0.0)
    {
      v34 = v32;
      if (v32 <= 1.0)
      {
        v35 = v32;
      }

      else
      {
        v35 = 1.0 / v32;
      }

      v36 = exp2(1.0 / (v35 + -1.0) * 4.0);
      if (v35 != v34)
      {
        v36 = v36 * 16.0;
      }

      v37 = v36;
      v33 = v37;
    }

    *(a1 + 60) = 5;
    v13 = 0x10000;
    *(a1 + 68) = 0x10000;
    v38.f64[0] = v73;
    v39 = v73 * 65536.0 + 0.5;
    v38.f64[1] = v33;
    v72 = v38;
    *(a1 + 76) = v39;
    *(a1 + 80) = (v33 * 65536.0 + 0.5);
    v16 = xmmword_19A96E2F0;
    v19 = 0uLL;
    v11 = 1;
LABEL_30:
    v20 = 3;
    goto LABEL_31;
  }

  if (v10 != 1)
  {
    goto LABEL_103;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  __y = vcvtd_n_f64_s32(v12, 0x10uLL);
  v13 = *(a1 + 68);
  v21.i64[0] = v13.i32[0];
  v21.i64[1] = v13.i32[1];
  v16 = vmulq_f64(vcvtq_f64_s64(v21), vdupq_n_s64(0x3EF0000000000000uLL));
  v19 = 0uLL;
  v20 = 1;
  v72 = 0u;
LABEL_31:
  if (a5 == 1.0 || a5 == 0.0)
  {
    v70 = v16.f64[0];
  }

  else
  {
    v40 = v72.f64[1];
    v41.f64[0] = v72.f64[0];
    if ((v20 - 3) < 2)
    {
      v41.f64[0] = a5 * v72.f64[0];
    }

    else
    {
      v40 = -v16.f64[1] / v16.f64[0];
    }

    v70 = v16.f64[0] * a5;
    v41.f64[1] = v40 / a5;
    v72 = v41;
  }

  v42 = v16.f64[1];
  if (a2)
  {
    *(a2 + 8) = v11;
    *(a2 + 12) = v20;
    v43.f64[0] = __y;
    v43.f64[1] = v70;
    *(a2 + 16) = 0;
    *&v43.f64[0] = vcvt_f32_f64(v43);
    v44 = v42;
    v45 = vcvt_f32_f64(v72);
    *a2 = 1;
    *(a2 + 24) = vand_s8(*&v43.f64[0], vceq_f32(*&v43.f64[0], *&v43.f64[0]));
    *(a2 + 32) = v44;
    *(a2 + 36) = vand_s8(v45, vceq_f32(v45, v45));
    *(a2 + 44) = vcvt_f32_f64(v19);
    *(a2 + 52) = 0;
    if (v10 == 3 && v12 == 145636)
    {
      v46 = vceq_s32(v13, 0x17200000E8E0);
      if ((v46.i8[0] & 1) != 0 && (v46.i8[4] & 1) != 0 && *(a1 + 76) == 14564 && *(a1 + 80) == 5308 && !*(a1 + 84) && !*(a1 + 88))
      {
        *(a2 + 4) = 14;
      }
    }
  }

  v47 = 0;
  v48 = ceil(__y);
  v49 = floor(__y);
  v50 = v19;
  v51 = a3;
  v52 = -v42 / v70;
  do
  {
    v53 = vcvtd_n_f64_u32(v47, 0x18uLL);
    v54 = 0.0;
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v53 < v52)
        {
          goto LABEL_86;
        }

LABEL_69:
        v53 = v42 + v70 * v53;
        if (v53 <= 0.0 && v48 != v49)
        {
          goto LABEL_86;
        }
      }

      else if (v53 <= 0.0 && __y < 0.0)
      {
        goto LABEL_86;
      }

      v55 = pow(v53, __y);
      goto LABEL_82;
    }

    if (v10 == 2)
    {
      v55 = v72.f64[0];
      if (v53 < v52)
      {
        goto LABEL_82;
      }

      v56 = v42 + v70 * v53;
      if (v56 <= 0.0 && v48 != v49)
      {
        goto LABEL_86;
      }

      v58 = pow(v56, __y);
      v59 = v72.f64[0];
      goto LABEL_81;
    }

    if (v10 != 3)
    {
      if (v53 < v72.f64[1])
      {
        v55 = v50.f64[1] + v72.f64[0] * v53;
        goto LABEL_82;
      }

      v61 = v42 + v70 * v53;
      if (v61 <= 0.0 && v48 != v49)
      {
        goto LABEL_86;
      }

      v58 = pow(v61, __y);
      v59 = v50.f64[0];
LABEL_81:
      v55 = v59 + v58;
      goto LABEL_82;
    }

    if (v53 >= v72.f64[1])
    {
      goto LABEL_69;
    }

    v55 = v72.f64[0] * v53;
LABEL_82:
    if (fabs(v55) == INFINITY || v55 >= 0.0 && (v54 = v55, v55 > 1.0))
    {
      v54 = 1.0;
    }

LABEL_86:
    v63 = vcvtmd_s64_f64(v54 * 16777216.0 + 0.5);
    *v51 = v63;
    v64 = 0x1000000;
    if (v63 <= 0x1000000)
    {
      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v64 = 0;
    }

    *v51 = v64;
LABEL_90:
    v47 += 4096;
    ++v51;
  }

  while (v47 != 16781312);
  if (a4)
  {
    if (a4 == 1)
    {
      v65 = a3[2056];
      memmove(a3 + 2058, a3 + 2057, 0x1FD8uLL);
      a3[2057] = v65;
      a3[2055] = v65;
    }
  }

  else
  {
    v66 = a3[4096];
    v67 = a3[1] - *a3;
    if (v67 < 0)
    {
      v67 = *a3 - a3[1];
    }

    if (v67 <= 0xFFF)
    {
      a3[1] = *a3;
    }

    v68 = v66 - a3[4095];
    if (v68 < 0)
    {
      v68 = a3[4095] - v66;
    }

    if (v68 <= 0xFFF)
    {
      a3[4095] = v66;
    }
  }
}

BOOL CMMLut16Tag::HasCLUT(CMMLut16Tag *this)
{
  if ((*(*this + 64))(this) > 2)
  {
    return 1;
  }

  if ((*(*this + 64))(this) != 2)
  {
    return 0;
  }

  if ((*(*this + 48))(this) != 3 || (*(*this + 56))(this) != 3)
  {
    return 1;
  }

  v3 = CMMTable::UInt8Data(*(*(this + 12) + 16), *(*(this + 12) + 24));
  return memcmp(v3, &k3x3LinearCLUT16bit, 0x30uLL) != 0;
}

uint64_t CMMLut16Tag::SetNULLOutputTables(CMMLut16Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  NULLTable = CMMLut16Tag::MakeNULLTable(a2, *(this + 51), a3, a4);
  v6 = *(*this + 152);

  return v6(this, NULLTable);
}

void *CMMLut16Tag::MakeNULLTable(CMMLut16Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  v4 = a2;
  v6 = (4 * a2);
  v7 = CMMBase::NewInternal(0x28, this, a3, a4);
  *v7 = &unk_1F0E09180;
  v7[1] = 1;
  v7[3] = 0;
  v7[4] = v6;
  v10 = CMMBase::NewInternal(v6, this, v8, v9);
  v7[2] = v10;
  v11 = CMMTable::UInt8Data(v10, v7[3]);
  if (v4)
  {
    v12 = 0;
    do
    {
      *(v11 + 2 * (v12 & 0xFFFFFFFE)) = -65536;
      v12 += 2;
    }

    while (2 * v4 != v12);
  }

  return v7;
}

uint64_t CMMLut16Tag::SetNULLInputTables(CMMLut16Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  NULLTable = CMMLut16Tag::MakeNULLTable(a2, *(this + 50), a3, a4);
  v6 = *(*this + 144);

  return v6(this, NULLTable);
}

uint64_t CMMLut16Tag::GetCLutPtr(CMMLut16Tag *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return CMMTable::UInt8Data(*(v1 + 16), *(v1 + 24));
  }

  else
  {
    return 0;
  }
}

CMMTable *CMMLut16Tag::MakeOutputLutTable(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, int a5)
{
  if (!*(a1 + 112))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  OutputTable = CMMLut16Tag::GetOutputTable(a1, a2);
  if (*(a1 + 90) != 2 || *OutputTable || OutputTable[1] != -1)
  {
    v13 = CMMBase::NewInternal(0x28, a4, v11, v12);
    *v13 = &unk_1F0E09180;
    *(v13 + 1) = 1;
    *(v13 + 3) = 0;
    *(v13 + 4) = 21512;
    v16 = CMMBase::NewInternal(0x5408, a4, v14, v15);
    *(v13 + 2) = v16;
    v17 = CMMTable::UInt8Data(v16, *(v13 + 3));
    (*(*a1 + 104))(a1, a2, v17, a5 == 1347182946);
    if (a3)
    {
      v30 = 0;
      v18 = CMMLut16Tag::GetOutputTable(a1, a2);
      v22 = CMMLut16Tag::EvaluateGamma(v18, *(a1 + 92), &v30, v19);
      if (v30 == 1)
      {
        FloatCopy = 0;
        *a3 = 1;
        *(a3 + 12) = 0;
        *(a3 + 8) = 1;
        *(a3 + 24) = v22;
      }

      else
      {
        *a3 = 0;
        FloatCopy = CMMTable::MakeFloatCopy(v13, a4, v20, v21);
      }

      *(a3 + 16) = FloatCopy;
    }

    return v13;
  }

  if (CMMInitializeLinearGammaTable(void)::predicate == -1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
  if (a3)
  {
LABEL_13:
    v26 = *(CMMLinearGammaFloatLutInfo + 16);
    v25 = *(CMMLinearGammaFloatLutInfo + 32);
    v27 = *CMMLinearGammaFloatLutInfo;
    *(a3 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
    *(a3 + 16) = v26;
    *(a3 + 32) = v25;
    *a3 = v27;
  }

LABEL_14:
  v13 = CMMLinearGammaTable;
  v28 = *(CMMLinearGammaTable + 8);
  if (v28)
  {
    *(CMMLinearGammaTable + 8) = v28 + 1;
  }

  return v13;
}

uint64_t CMMLut16Tag::GetOutputTable(CMMLut16Tag *this, int a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return CMMTable::UInt8Data(*(v2 + 16), *(v2 + 24)) + 2 * *(this + 46) * a2;
}

float CMMLut16Tag::EvaluateGamma(CMMLut16Tag *this, unsigned __int16 *a2, _BYTE *a3, BOOL *a4)
{
  v5 = a2;
  v22 = 0.0;
  *a3 = 0;
  if (a2 == 2 && (!*this ? (v7 = *(this + 1) == 0xFFFF) : (v7 = 0), v7))
  {
    *a3 = 1;
    return 1.0;
  }

  else
  {
    v8 = 0.0;
    if (*this)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(this + a2 - 1) == 0xFFFF;
    }

    if (v9)
    {
      if (IsPureGammaCurve(a2, this, &v22))
      {
        *a3 = 1;
        return v22;
      }

      else if (v5)
      {
        v10 = 0;
        v11 = 0;
        v12 = v5;
        v13 = (v5 - 1);
        v14 = -v5;
        v15 = 0.0;
        do
        {
          if (v10)
          {
            v16 = (bswap32(*(this + v10)) >> 16) / 65535.0;
            if (v16 != 0.0 && v14 + v10 != -1 && v16 != 1.0)
            {
              v19 = log(v15 / v13);
              v8 = log(v16) / v19 + v8;
              ++v11;
            }
          }

          ++v10;
          v15 = v15 + 1.0;
        }

        while (v14 + v10);
        if (v11)
        {
          v20 = 0;
          v8 = v8 / v11;
          while (vabdd_f64((bswap32(*(this + v20)) >> 16) / 65535.0, pow(v20 / v13, v8)) <= 0.001)
          {
            if (v12 == ++v20)
            {
              return v8;
            }
          }

          return 0.0;
        }
      }
    }
  }

  return v8;
}

CMMTable *CMMLut16Tag::MakeInputLutTable(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, int a5)
{
  if (!*(a1 + 104))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  InputTable = CMMLut16Tag::GetInputTable(a1, a2);
  if (*(a1 + 90) != 2 || *InputTable || InputTable[1] != -1)
  {
    v13 = CMMBase::NewInternal(0x28, a4, v11, v12);
    *v13 = &unk_1F0E09180;
    *(v13 + 1) = 1;
    *(v13 + 3) = 0;
    *(v13 + 4) = 21512;
    v16 = CMMBase::NewInternal(0x5408, a4, v14, v15);
    *(v13 + 2) = v16;
    v17 = CMMTable::UInt8Data(v16, *(v13 + 3));
    (*(*a1 + 96))(a1, a2, v17, a5 == 1347182946);
    if (a3)
    {
      v30 = 0;
      v18 = CMMLut16Tag::GetInputTable(a1, a2);
      v22 = CMMLut16Tag::EvaluateGamma(v18, *(a1 + 90), &v30, v19);
      *a3 = 1;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 52) = 0;
      v23 = v30;
      if (v30 == 1)
      {
        *(a3 + 24) = v22;
        *(a3 + 8) = v23;
      }

      else
      {
        *a3 = 0;
        *(a3 + 16) = CMMTable::MakeFloatCopy(v13, a4, v20, v21);
      }
    }

    return v13;
  }

  if (CMMInitializeLinearGammaTable(void)::predicate == -1)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
  if (a3)
  {
LABEL_12:
    v26 = *(CMMLinearGammaFloatLutInfo + 16);
    v25 = *(CMMLinearGammaFloatLutInfo + 32);
    v27 = *CMMLinearGammaFloatLutInfo;
    *(a3 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
    *(a3 + 16) = v26;
    *(a3 + 32) = v25;
    *a3 = v27;
  }

LABEL_13:
  v13 = CMMLinearGammaTable;
  v28 = *(CMMLinearGammaTable + 8);
  if (v28)
  {
    *(CMMLinearGammaTable + 8) = v28 + 1;
  }

  return v13;
}

uint64_t CMMLut16Tag::GetInputTable(CMMLut16Tag *this, int a2)
{
  v2 = *(this + 13);
  if (!v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return CMMTable::UInt8Data(*(v2 + 16), *(v2 + 24)) + 2 * *(this + 45) * a2;
}

uint64_t CMMLut16Tag::MakeOutputLut(CMMLut16Tag *this, uint64_t a2, int *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v57 = *MEMORY[0x1E69E9840];
  if (!*(v3 + 14))
  {
    goto LABEL_37;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  OutputTable = CMMLut16Tag::GetOutputTable(v3, v4);
  bzero(&v55, 0x4004uLL);
  v12 = ((v9 - 1) < 2) & v7;
  if (v12)
  {
    v13 = &v55;
  }

  else
  {
    v13 = v8;
  }

  memset(v13, 255, 0x4004uLL);
  v14 = 0xFFFF;
  if (!v7)
  {
    goto LABEL_23;
  }

  if (!*(v10 + 14))
  {
    goto LABEL_37;
  }

  v15 = CMMLut16Tag::GetOutputTable(v10, v9);
  v23 = v15;
  v24 = *(v10 + 46);
  if (v9 == 1)
  {
    AZero = CMMLut16Tag::GetAZero(v10, v16, v17, v18, v19, v20, v21, v22);
LABEL_18:
    v34 = 8421504 - CMMLut16Tag::ApplyLut(v23, v24, AZero);
    if (v34 < 0)
    {
      v34 = -v34;
    }

    if (v34 >= 0x100)
    {
      v14 = 65792;
    }

    else
    {
      v14 = 0xFFFF;
    }

    goto LABEL_23;
  }

  if (v9)
  {
    AZero = CMMLut16Tag::GetBZero(v10, v16, v17, v18, v19, v20, v21, v22);
    goto LABEL_18;
  }

  if (CMMLut16Tag::ApplyLut(v15, *(v10 + 46), 0x1000000) < 16776961)
  {
LABEL_15:
    v14 = 65792;
    goto LABEL_23;
  }

  if (!*(v10 + 12) || *(v10 + 51) != 3)
  {
LABEL_37:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v32 = *(v10 + 60);
  if (!*(v10 + 60))
  {
    CMMLut16Tag::GetLabCriticalValues(v10, v25, v26, v27, v28, v29, v30, v31);
    v32 = *(v10 + 60);
  }

  v14 = 0xFFFF;
  if (v32 != 0xFFFF)
  {
    goto LABEL_15;
  }

LABEL_23:
  v35 = 0;
  v36 = v14;
  do
  {
    result = CMMLut16Tag::ApplyLut(OutputTable, *(v10 + 46), v35);
    if (v36 != 0xFFFF)
    {
      result = ((v36 * result + 0x7FFF) / 0xFFFF);
    }

    if (result >= 0x1000000)
    {
      v45 = 0x1000000;
    }

    else
    {
      v45 = result;
    }

    *v13++ = v45;
    v35 += 4096;
  }

  while (v35 != 16781312);
  if (v12)
  {
    if (v9 == 1)
    {
      BZero = CMMLut16Tag::GetAZero(v10, v38, v39, v40, v41, v42, v43, v44);
    }

    else
    {
      BZero = CMMLut16Tag::GetBZero(v10, v38, v39, v40, v41, v42, v43, v44);
    }

    v48 = BZero;
    v49 = BZero >> 12;
    v50 = v56[(BZero >> 12) - 1];
    v51 = v56[4095];
    *v8 = v55;
    memcpy(v8 + 1, v56, 4 * ((BZero >> 12) - 2));
    v8[v49 + 1] = v50;
    v52 = &v8[v49];
    *v52 = v50;
    v8[v49 - 1] = v50;
    result = memcpy(v52 + 2, &v56[v49], 4 * (4094 - (v48 >> 12)));
    v8[4096] = v51;
  }

  else
  {
    v47 = v8[4096];
    v8[1] = *v8;
    v8[4095] = v47;
  }

  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMMLut16Tag::ApplyLut(CMMLut16Tag *this, unsigned __int16 *a2, int a3)
{
  v3 = a2 - 1;
  v4 = (a3 * (a2 - 1)) >> 24;
  if (v4 >= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = bswap32(*(this + v4));
  result = (((v6 >> 7) & 0x1FFFE00 | (v6 >> 23)) + 1) >> 1;
  v8 = a3 - (v4 << 24) / v3;
  if (v8)
  {
    v9 = bswap32(*(this + (((v4 << 32) + 0x100000000) >> 31)));
    v10 = (((((v9 >> 7) & 0x1FFFE00 | (v9 >> 23)) + 1) >> 1) - result) * v8;
    if (v10)
    {
      v11 = v10 * v3;
      v13 = v11 + 0x800000;
      v12 = v11 < -8388608;
      v14 = v11 + 25165823;
      if (!v12)
      {
        v14 = v13;
      }

      return result + (v14 >> 24);
    }
  }

  return result;
}

uint64_t CMMLut16Tag::GetAZero(CMMLut16Tag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 12) || *(this + 51) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  result = *(this + 33);
  if (!result)
  {
    CMMLut16Tag::GetLabCriticalValues(this, a2, a3, a4, a5, a6, a7, a8);
    return *(this + 33);
  }

  return result;
}

uint64_t CMMLut16Tag::GetBZero(CMMLut16Tag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 12) || *(this + 51) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  result = *(this + 34);
  if (!result)
  {
    CMMLut16Tag::GetLabCriticalValues(this, a2, a3, a4, a5, a6, a7, a8);
    return *(this + 34);
  }

  return result;
}

uint64_t CMMLut16Tag::GetLabCriticalValues(CMMLut16Tag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 12);
  if (!v8 || *(this + 51) != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v10 = *(this + 50);
  if (*(this + 50))
  {
    v11 = *(this + 52);
    v12 = 1;
    do
    {
      v13 = v12;
      v12 *= v11;
      v15 = v12 >= v13 && v12 >= v11;
      CMMThrowExceptionWithLog(v15, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      --v10;
    }

    while (v10);
    result = CMMTable::UInt8Data(*(*(this + 12) + 16), *(*(this + 12) + 24));
    if (!v12)
    {
      v17 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    result = CMMTable::UInt8Data(*(v8 + 16), *(v8 + 24));
    v12 = 1;
  }

  v18 = *(this + 60);
  v19 = (result + 4);
  v20 = v12;
  do
  {
    v21 = bswap32(*(v19 - 2)) >> 16;
    if (v21 > v18)
    {
      *(this + 60) = v21;
      v22 = bswap32(*v19) >> 16;
      *(this + 33) = bswap32(*(v19 - 1)) >> 16;
      *(this + 34) = v22;
      v18 = v21;
    }

    v19 += 3;
    --v20;
  }

  while (v20);
  v17 = 0;
LABEL_20:
  if (*(this + 52) == 2)
  {
    result = CMMTable::UInt8Data(*(*(this + 12) + 16), *(*(this + 12) + 24));
    if (v17)
    {
      v23 = *(this + 61);
      v24 = *(this + 63);
      v25 = *(this + 62);
      v26 = *(this + 64);
    }

    else
    {
      v29 = bswap32(*(result + 2)) >> 16;
      v30 = bswap32(*(result + 4)) >> 16;
      v23 = *(this + 61);
      v24 = *(this + 63);
      v25 = *(this + 62);
      v26 = *(this + 64);
      v31 = 1;
      do
      {
        if (v29 > v23)
        {
          *(this + 61) = v29;
          v23 = v29;
        }

        if (v29 < v24)
        {
          *(this + 63) = v29;
          v24 = v29;
        }

        if (v30 > v25)
        {
          *(this + 62) = v30;
          v25 = v30;
        }

        if (v30 < v26)
        {
          *(this + 64) = v30;
          v26 = v30;
        }
      }

      while (v12 > v31++);
    }

    v27 = (v23 + v24 + 1) >> 1;
    v28 = (v25 + v26 + 1) >> 1;
  }

  else
  {
    v27 = *(this + 33);
    v28 = *(this + 34);
  }

  if (v27 <= 32832)
  {
    v33 = 0x800000;
  }

  else
  {
    v33 = 8421504;
  }

  if (v28 <= 32832)
  {
    v34 = 0x800000;
  }

  else
  {
    v34 = 8421504;
  }

  *(this + 33) = v33;
  *(this + 34) = v34;
  return result;
}

uint64_t CMMLut16Tag::MakeInputLut(CMMLut16Tag *this, uint64_t a2, int *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v59 = *MEMORY[0x1E69E9840];
  if (!*(v3 + 13))
  {
    goto LABEL_39;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  InputTable = CMMLut16Tag::GetInputTable(v3, v4);
  bzero(&v54, 0x4004uLL);
  v12 = ((v9 - 1) < 2) & v7;
  if (v12)
  {
    v13 = &v54;
  }

  else
  {
    v13 = v8;
  }

  memset(v13, 255, 0x4004uLL);
  v14 = 0xFFFF;
  if (!v7)
  {
    goto LABEL_27;
  }

  if (!*(v10 + 13))
  {
    goto LABEL_39;
  }

  v15 = CMMLut16Tag::GetInputTable(v10, v9);
  v16 = v15;
  v17 = *(v10 + 45);
  if (!v9)
  {
    if (CMMLut16Tag::ApplyLut(v15, *(v10 + 45), 16711935) <= 16744575)
    {
      v14 = 0xFFFF;
    }

    else
    {
      v14 = 65280;
    }

    goto LABEL_27;
  }

  v18 = *(v10 + 52);
  v19 = CMMLut16Tag::ApplyLut(v15, *(v10 + 45), 0x800000);
  v20 = CMMLut16Tag::ApplyLut(v16, v17, 8388736);
  v21 = CMMLut16Tag::ApplyLut(v16, v17, 8421505);
  v22 = (v18 - 1);
  v23 = vcvtd_n_f64_s32(v19, 0x18uLL) * v22;
  v24.i64[0] = v20;
  v24.i64[1] = v21;
  v25 = vmulq_n_f64(vmulq_f64(vcvtq_f64_s64(v24), vdupq_n_s64(0x3E70000000000000uLL)), v22);
  v26 = vabdd_f64(v25.f64[0], floor(v25.f64[0]));
  v27 = vabdd_f64(v25.f64[0], floor(v25.f64[0] + 1.0));
  if (v26 >= v27)
  {
    v26 = v27;
  }

  v28.f64[1] = v25.f64[1];
  v28.f64[0] = v23;
  v29 = vrndmq_f64(v28);
  __asm { FMOV            V6.2D, #1.0 }

  v35 = vrndmq_f64(vaddq_f64(v28, _Q6));
  v36 = vbslq_s8(vcagtq_f64(vsubq_f64(v28, v35), vsubq_f64(v28, v29)), vabdq_f64(v28, v29), vabdq_f64(v28, v35));
  if (*v36.i64 <= v26 && *v36.i64 <= *&v36.i64[1])
  {
    v38 = vdupq_lane_s64(*&v25.f64[0], 0);
    v38.f64[0] = v23;
    __asm { FMOV            V1.2D, #0.5 }

    v40 = vbicq_s8(vabdq_f64(v38, vrndmq_f64(vaddq_f64(v38, _Q1))), vceqq_f64(v38, _Q1));
    if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v40, 1), v40))).u8[0] & 1) == 0)
    {
      v41 = vabdd_f64(v25.f64[1], floor(v25.f64[1] + 0.5));
      v25.f64[0] = 0.0;
      if (v25.f64[1] != 0.5)
      {
        v25.f64[0] = v41;
      }

      if (v40.f64[0] <= v25.f64[0])
      {
        v14 = 65280;
        goto LABEL_27;
      }
    }

LABEL_39:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (v26 <= *&v36.i64[1])
  {
    __asm { FMOV            V1.2D, #0.5 }

    v43 = vbicq_s8(vabdq_f64(v25, vrndmq_f64(vaddq_f64(v25, _Q1))), vceqq_f64(v25, _Q1));
    if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v43, 1), v43))).u8[0] & 1) == 0)
    {
      v14 = 65281;
      goto LABEL_27;
    }

    goto LABEL_39;
  }

  v14 = 0xFFFF;
LABEL_27:
  v44 = 0;
  v45 = 0x7FFFLL;
  do
  {
    if (v14 == 0xFFFF)
    {
      LODWORD(v46) = v44;
    }

    else
    {
      v46 = v45 / 0xFFFF;
    }

    result = CMMLut16Tag::ApplyLut(InputTable, *(v10 + 45), v46);
    if (result >= 0x1000000)
    {
      v48 = 0x1000000;
    }

    else
    {
      v48 = result;
    }

    *v13++ = v48;
    v44 += 4096;
    v45 += v14 << 12;
  }

  while (v44 != 16781312);
  if (v12)
  {
    v49 = v56;
    v50 = v58;
    *v8 = v54;
    memcpy(v8 + 1, v55, 0x2018uLL);
    v8[2057] = v49;
    v8[2056] = v49;
    v8[2055] = v49;
    result = memcpy(v8 + 2058, v57, 0x1FD8uLL);
    v8[4096] = v50;
  }

  else
  {
    v51 = v8[4096];
    v8[1] = *v8;
    v8[4095] = v51;
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CMMLut16Tag::InterpolationProtectionZone(CMMLut16Tag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 50);
  if ((v8 - 3) > 1)
  {
    return 0;
  }

  else
  {
    return 2 * CMMLutTagBase::CalculateProtectionZone(*(this + 52), v8, *(this + 51), a4, a5, a6, a7, a8);
  }
}

void *CMMLut16Tag::CopyClut(CMMLut16Tag *this, CMMMemMgr *a2)
{
  if (*(this + 12))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294967246;
  }

  CMMThrowExceptionOnError(v4);
  v5 = (*(*this + 72))(this);
  if (v5 < 0)
  {
    v6 = 4294967246;
  }

  else
  {
    v6 = 0;
  }

  CMMThrowExceptionOnError(v6);
  v7 = *(*(this + 12) + 32);
  v8 = (v7 + 2 * v5);
  if (__CFADD__(v7, 2 * v5))
  {
    v9 = 4294967246;
  }

  else
  {
    v9 = 0;
  }

  CMMThrowExceptionOnError(v9);
  v12 = CMMBase::NewInternal(0x28, a2, v10, v11);
  v13 = 1;
  *v12 = &unk_1F0E09180;
  v12[1] = 1;
  v12[3] = 0;
  v12[4] = v8;
  v12[2] = CMMBase::NewInternal(v8, a2, v14, v15);
  v16 = CMMTable::UInt8Data(*(*(this + 12) + 16), *(*(this + 12) + 24));
  v23 = CMMTable::UInt8Data(v12[2], v12[3]);
  v24 = *(this + 50);
  if (!*(this + 50))
  {
    goto LABEL_20;
  }

  v25 = *(this + 52);
  v13 = 1;
  do
  {
    v26 = v13;
    v13 *= v25;
    v28 = v13 >= v26 && v13 >= v25;
    CMMThrowExceptionWithLog(v28, "Overflow in Power", v17, v18, v19, v20, v21, v22);
    --v24;
  }

  while (v24);
  if (v13)
  {
LABEL_20:
    v29 = 0;
    v30 = *(this + 51);
    do
    {
      v31 = v30;
      if (v30)
      {
        do
        {
          v32 = *v16++;
          *v23++ = bswap32(v32) >> 16;
          --v31;
        }

        while (v31);
      }

      ++v29;
    }

    while (v29 != v13);
  }

  return v12;
}

char *CMMLut16Tag::GetWholeCloth(char *this, unsigned __int8 *a2, unint64_t *a3)
{
  if (!a3)
  {
    goto LABEL_22;
  }

  v4 = this;
  if (!a2)
  {
    *a3 = *(this + 4);
    return this;
  }

  if (*a3 != *(this + 4))
  {
LABEL_22:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  bzero(a2, *a3);
  *a2 = 846489197;
  v11 = *(v4 + 50);
  v12 = *(v4 + 66);
  *(a2 + 36) = *(v4 + 78);
  *(a2 + 24) = v12;
  *(a2 + 8) = v11;
  v13 = 12;
  do
  {
    *&a2[v13] = bswap32(*&a2[v13]);
    v13 += 4;
  }

  while (v13 != 48);
  *(a2 + 24) = bswap32(*(a2 + 24)) >> 16;
  *(a2 + 25) = bswap32(*(a2 + 25)) >> 16;
  v14 = v4[50];
  if (v4[50])
  {
    v15 = v4[52];
    v16 = 1;
    do
    {
      v17 = v16 * v15;
      v19 = v16 * v15 >= v16 && v17 >= v15;
      CMMThrowExceptionWithLog(v19, "Overflow in Power", v5, v6, v7, v8, v9, v10);
      v16 = v17;
      --v14;
    }

    while (v14);
    v20 = 2 * v17;
    v21 = 2 * v4[50];
  }

  else
  {
    v21 = 0;
    v20 = 2;
  }

  v22 = v20 * v4[51];
  v23 = *(v4 + 45);
  v24 = v21 * *(v4 + 45);
  v25 = v4[51] * *(v4 + 46);
  v26 = a2 + 52;
  v27 = CMMTable::UInt8Data(*(*(v4 + 13) + 16), *(*(v4 + 13) + 24));
  memcpy(v26, v27, v24);
  v28 = CMMTable::UInt8Data(*(*(v4 + 12) + 16), *(*(v4 + 12) + 24));
  memcpy(&v26[v21 * v23], v28, v22);
  v29 = CMMTable::UInt8Data(*(*(v4 + 14) + 16), *(*(v4 + 14) + 24));
  this = memcpy(&v26[v21 * v23 + v22], v29, 2 * v25);
  v30 = v22 + v21 * v23 + 2 * v25;
  if (v30)
  {
    v31 = v30 >> 1;
    do
    {
      *v26 = bswap32(*v26) >> 16;
      v26 += 2;
      --v31;
    }

    while (v31);
  }

  return this;
}

void CMMLut16Tag::~CMMLut16Tag(CMMLut16Tag *this)
{
  CMMLut16Tag::~CMMLut16Tag(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E09278;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  v5 = *(this + 13);
  if (v5)
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = v6 - 1;
      v5[1] = v7;
      if (!v7)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  v8 = *(this + 14);
  if (v8)
  {
    v9 = v8[1];
    if (v9)
    {
      v10 = v9 - 1;
      v8[1] = v10;
      if (!v10)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  CMMTag::~CMMTag(this);
}

uint64_t CMMLut8Tag::SetNULLOutputTables(CMMLut8Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  NULLTable = CMMLut8Tag::MakeNULLTable(a2, *(this + 51), a3, a4);
  v6 = *(*this + 152);

  return v6(this, NULLTable);
}

void *CMMLut8Tag::MakeNULLTable(CMMLut8Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  v4 = a2;
  v6 = (a2 << 8);
  v7 = CMMBase::NewInternal(0x28, this, a3, a4);
  *v7 = &unk_1F0E09180;
  v7[1] = 1;
  v7[3] = 0;
  v7[4] = v6;
  v10 = CMMBase::NewInternal(v6, this, v8, v9);
  v7[2] = v10;
  v11 = CMMTable::UInt8Data(v10, v7[3]);
  if (v4)
  {
    v12 = 0;
    v13.i64[0] = 0x1010101010101010;
    v13.i64[1] = 0x1010101010101010;
    do
    {
      v14 = 0;
      v15 = xmmword_19A96E300;
      do
      {
        *(v11 + ((v12 & 0xFFFFFF) << 8) + v14) = v15;
        v14 += 16;
        v15 = vaddq_s8(v15, v13);
      }

      while (v14 != 256);
      ++v12;
    }

    while (v12 != v4);
  }

  return v7;
}

uint64_t CMMLut8Tag::SetNULLInputTables(CMMLut8Tag *this, CMMMemMgr *a2, CMMMemMgr *a3, const char *a4)
{
  NULLTable = CMMLut8Tag::MakeNULLTable(a2, *(this + 50), a3, a4);
  v6 = *(*this + 144);

  return v6(this, NULLTable);
}

uint64_t CMMLut8Tag::GetCLutPtr(CMMLut8Tag *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return CMMTable::UInt8Data(*(v1 + 16), *(v1 + 24));
  }

  else
  {
    return 0;
  }
}

char *CMMLut8Tag::GetWholeCloth(char *this, unsigned __int8 *a2, unint64_t *a3)
{
  if (!a3)
  {
    goto LABEL_21;
  }

  v4 = this;
  if (!a2)
  {
    *a3 = *(this + 4);
    return this;
  }

  if (*a3 != *(this + 4))
  {
LABEL_21:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  bzero(a2, *a3);
  *a2 = 829711981;
  v11 = *(v4 + 50);
  v12 = *(v4 + 66);
  *(a2 + 5) = *(v4 + 82);
  *(a2 + 24) = v12;
  *(a2 + 8) = v11;
  v13 = 12;
  do
  {
    *&a2[v13] = bswap32(*&a2[v13]);
    v13 += 4;
  }

  while (v13 != 48);
  v14 = v4[50];
  if (v4[50])
  {
    v15 = v4[52];
    v16 = 1;
    do
    {
      v17 = v16;
      v16 *= v15;
      v19 = v16 >= v17 && v16 >= v15;
      CMMThrowExceptionWithLog(v19, "Overflow in Power", v5, v6, v7, v8, v9, v10);
      --v14;
    }

    while (v14);
    v20 = v4[50] << 8;
  }

  else
  {
    v20 = 0;
    v16 = 1;
  }

  v21 = v4[51];
  v22 = v16 * v21;
  v23 = v21 << 8;
  v24 = a2 + 48;
  v25 = CMMTable::UInt8Data(*(*(v4 + 13) + 16), *(*(v4 + 13) + 24));
  memcpy(v24, v25, v20);
  v26 = &v24[v20];
  v27 = CMMTable::UInt8Data(*(*(v4 + 12) + 16), *(*(v4 + 12) + 24));
  memcpy(v26, v27, v22);
  v28 = CMMTable::UInt8Data(*(*(v4 + 14) + 16), *(*(v4 + 14) + 24));

  return memcpy(&v26[v22], v28, v23);
}

void CMMProfileSequenceDescTag::~CMMProfileSequenceDescTag(CMMProfileSequenceDescTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMTechnologyTag::~CMMTechnologyTag(CMMTechnologyTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMNamedColorTag::GetWholeCloth(CMMNamedColorTag *this, unsigned __int8 *a2, unint64_t *a3)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void CMMNamedColorTag::~CMMNamedColorTag(CMMNamedColorTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMTextTag::~CMMTextTag(CMMTextTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMTextDescTag::~CMMTextDescTag(CMMTextDescTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMInputProfile::GetDstColorSpace(char **lpsrc, int a2, _BYTE *a3)
{
  v4 = a2;
  if (a2 == 1)
  {
    v6 = *(lpsrc + 13);
    goto LABEL_18;
  }

  if (lpsrc)
  {
    v7 = *lpsrc;
    v8 = **lpsrc;
    {
      goto LABEL_9;
    }

    v9 = *v7;
    {
      goto LABEL_9;
    }

    v10 = lpsrc;
  }

  else
  {
    v10 = 0;
  }

  if (!CMMProfile::GetTag(v10, 1110589744))
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v4 == 3)
  {
    v6 = *(lpsrc + 13);
    LOBYTE(v4) = 1;
LABEL_18:
    if (v6 == 1281450528)
    {
      v11 = 0;
      v6 = 1347182946;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v4 != 2)
  {
LABEL_16:
    LOBYTE(v4) = 0;
LABEL_25:
    v11 = 4294967246;
    v6 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v6 = *(lpsrc + 12);
  if (v6 <= 1296255029)
  {
    if (v6 != 1281450528)
    {
      LOBYTE(v4) = 0;
      if (v6 == 1296255029)
      {
        LOBYTE(v4) = 0;
        v11 = 0;
        v6 = 893602898;
        goto LABEL_26;
      }

LABEL_23:
      if (v6 != -1)
      {
        v11 = 0;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    LOBYTE(v4) = 0;
    v11 = 0;
    v6 = 1145856354;
  }

  else if (v6 == 1296255030)
  {
    LOBYTE(v4) = 0;
    v11 = 0;
    v6 = 910380114;
  }

  else
  {
    if (v6 != 1296255031)
    {
      LOBYTE(v4) = 0;
      if (v6 == 1296255032)
      {
        LOBYTE(v4) = 0;
        v11 = 0;
        v6 = 943934546;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    LOBYTE(v4) = 0;
    v11 = 0;
    v6 = 927157330;
  }

LABEL_26:
  CMMThrowExceptionOnError(v11);
  if (a3)
  {
    *a3 = v4;
  }

  return v6;
}

uint64_t CMMInputProfile::GetSrcColorSpace(char **lpsrc, int a2)
{
  if (a2 != 1)
  {
    if (lpsrc)
    {
      v6 = *lpsrc;
      v7 = **lpsrc;
      {
        if ((a2 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v9 = lpsrc;
    }

    else
    {
      v9 = 0;
    }

    Tag = CMMProfile::GetTag(v9, 1110589744);
    if ((a2 & 0xFFFFFFFE) != 2 || !Tag)
    {
      goto LABEL_22;
    }

LABEL_18:
    v3 = *(lpsrc + 13);
    if (v3 == 1281450528)
    {
      v4 = 0;
      v3 = 1347182946;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v3 = *(lpsrc + 12);
  if (v3 <= 1296255029)
  {
    if (v3 == 1281450528)
    {
      v4 = 0;
      v3 = 1145856354;
      goto LABEL_26;
    }

    if (v3 == 1296255029)
    {
      v4 = 0;
      v3 = 893602898;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (v3 == 1296255030)
  {
    v4 = 0;
    v3 = 910380114;
    goto LABEL_26;
  }

  if (v3 == 1296255031)
  {
    v4 = 0;
    v3 = 927157330;
    goto LABEL_26;
  }

  if (v3 != 1296255032)
  {
LABEL_20:
    if (v3 != -1)
    {
      v4 = 0;
      goto LABEL_26;
    }

LABEL_22:
    v4 = 4294967246;
    v3 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v4 = 0;
  v3 = 943934546;
LABEL_26:
  CMMThrowExceptionOnError(v4);
  return v3;
}

uint64_t CMMMatrixInputProfile::GetMatrixTags(CMMMatrixInputProfile *this, CMMXYZTag *(*a2)[3], CMMRGBCurves *a3, const __CFDictionary *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  result = CMMProfile::InnerGetMatrixTags(this, a2, v7);
  if (result)
  {
    *(a3 + 8) = *v7;
    *(a3 + 3) = v7[2];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CMMPQCurveTag::CMMPQCurveTag(CMMPQCurveTag *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_1F0E08E28;
  if (CMMPQCurveTag::get_dafault_data(void)::predicate[0] != -1)
  {
    dispatch_once(CMMPQCurveTag::get_dafault_data(void)::predicate, &__block_literal_global_1021);
  }

  CMMCurveTag::CMMCurveTag(this, 1751405638, &CMMPQCurveTag::get_dafault_data(void)::default_data, 12, a3);
  *this = &unk_1F0E08E28;
  if (a2)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      *(a2 + 8) = v6 + 1;
    }
  }

  *(this + 8) = a2;
  *(this + 72) = xmmword_19A96E230;
  *(this + 22) = 1100316672;
  CMMPQCurveTag::Initialize(this);
}

void CMMHLGCurveTag::CMMHLGCurveTag(CMMHLGCurveTag *this, uint64_t a2)
{
  *this = &unk_1F0E08EE8;
  if (CMMHLGCurveTag::get_dafault_data(void)::predicate != -1)
  {
    dispatch_once(&CMMHLGCurveTag::get_dafault_data(void)::predicate, &__block_literal_global_1024);
  }

  CMMCurveTag::CMMCurveTag(this, 1751405638, &CMMHLGCurveTag::get_dafault_data(void)::default_data, 12, a2);
  *this = &unk_1F0E08EE8;
  *(this + 4) = xmmword_19A96E240;
  *(this + 20) = 1051372203;
  CMMHLGCurveTag::Initialize(v4);
}

void CMMSRGBCurve::~CMMSRGBCurve(CMMSRGBCurve *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMLinearGamma::~CMMLinearGamma(CMMLinearGamma *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

CMMTable *CMMITUBT709OETF::MakeInvertedTRC(uint64_t a1, uint64_t a2)
{
  result = CMMParaCurveTag::MakeInvertedTRC();
  if (a2)
  {
    *(a2 + 4) = 15;
  }

  return result;
}

void *CMMITUBT709OETF::MakeTRC(uint64_t a1, uint64_t a2, CMMMemMgr *a3, float a4)
{
  result = CMMParaCurveTag::MakeTRC(a1, a2, a3, 0, a4);
  if (a2)
  {
    *(a2 + 4) = 14;
  }

  return result;
}

void CMMITUBT709OETF::~CMMITUBT709OETF(CMMITUBT709OETF *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMMatrixInputProfile::~CMMMatrixInputProfile(CMMMatrixInputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMMatrixDisplayProfile::GetMatrixTags(CMMMatrixDisplayProfile *this, CMMXYZTag *(*a2)[3], CMMRGBCurves *a3, const __CFDictionary *a4)
{
  if (*(this + 25) || (result = CMMProfile::InnerGetMatrixTags(this, (this + 184), (this + 208)), result))
  {
    *(a3 + 1) = *(this + 26);
    *(a3 + 2) = *(this + 27);
    *(a3 + 3) = *(this + 28);
    (*a2)[0] = *(this + 23);
    (*a2)[1] = *(this + 24);
    (*a2)[2] = *(this + 25);
    return 1;
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_1E7522BA8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_1E7522BA0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::~TVector(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

_DWORD *CMMMatrixDisplayProfile::GetGamutTag(CMMMatrixDisplayProfile *this)
{
  result = CMMProfile::GetTag(this, 1734438260);
  if (!result)
  {
    Tag = CMMProfile::GetTag(this, 1918392666);
    v4 = CMMProfile::GetTag(this, 1733843290);
    v5 = CMMProfile::GetTag(this, 1649957210);
    result = CMMBase::NewInternal(0x50, *(this + 3), v6, v7);
    v8 = *(this + 20);
    while (v8)
    {
      v9 = v8;
      v8 = *(v8 + 16);
      if (!v8)
      {
        result[2] = 1734438260;
        *(result + 4) = 0;
        *(result + 5) = 0;
        *(result + 24) = 0;
        *(result + 2) = 0;
        *(result + 3) = v9;
        *(v9 + 16) = result;
        goto LABEL_7;
      }
    }

    result[2] = 1734438260;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 24) = 0;
LABEL_7:
    *result = &unk_1F0E096A8;
    *(result + 7) = Tag;
    *(result + 8) = v4;
    *(result + 9) = v5;
  }

  return result;
}

void CMMMatrixGamutTag::~CMMMatrixGamutTag(CMMMatrixGamutTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMMatrixHDRProfile::GetMatrixTags(CMMMatrixHDRProfile *this, CMMXYZTag *(*a2)[3], CMMRGBCurves *a3, const __CFDictionary *a4)
{
  if (*(this + 25))
  {
    goto LABEL_2;
  }

  v85 = 0;
  if (!ColorSyncProfileContainsSupportedCICP(*(this + 2), &v85))
  {
    Tag = CMMProfile::GetTag(this, 1633768035);
    if (Tag)
    {
      *(this + 23) = Tag;
    }

    else
    {
      v16 = CMMProfile::GetTag(this, 1918392666);
      *(this + 23) = v16;
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    v17 = CMMProfile::GetTag(this, 1633765219);
    if (v17)
    {
      *(this + 24) = v17;
    }

    else
    {
      v18 = CMMProfile::GetTag(this, 1733843290);
      *(this + 24) = v18;
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = CMMProfile::GetTag(this, 1633763939);
    if (v19)
    {
      *(this + 25) = v19;
    }

    else
    {
      v20 = CMMProfile::GetTag(this, 1649957210);
      *(this + 25) = v20;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    v21 = CMMProfile::GetTag(this, 1751405638);
    if (v21)
    {
      v24 = bswap32(*(*(v21 + 5) + 8));
      if (v24 == 1212958496)
      {
        v39 = CMMBase::NewInternal(0x58, *(this + 3), v22, v23);
        v40 = *(this + 20);
        do
        {
          v41 = v40;
          if (!v40)
          {
            break;
          }

          v40 = *(v40 + 16);
        }

        while (v40);
        goto LABEL_104;
      }

      if (v24 == 1347493920)
      {
        v25 = CMMBase::NewInternal(0x60, *(this + 3), v22, v23);
        v26 = *(this + 20);
        do
        {
          v27 = v26;
          if (!v26)
          {
            break;
          }

          v26 = *(v26 + 16);
        }

        while (v26);
        goto LABEL_100;
      }

      goto LABEL_29;
    }

    v38 = CMMProfile::GetTag(this, 1633776231);
    if (v38)
    {
      *(this + 26) = v38;
    }

    else
    {
      v71 = CMMProfile::GetTag(this, 1918128707);
      *(this + 26) = v71;
      if (!v71)
      {
        goto LABEL_118;
      }
    }

    v72 = CMMProfile::GetTag(this, 1633773415);
    if (v72)
    {
      *(this + 27) = v72;
LABEL_115:
      v74 = CMMProfile::GetTag(this, 1633772135);
      if (v74)
      {
        *(this + 28) = v74;
        goto LABEL_2;
      }

      v75 = CMMProfile::GetTag(this, 1649693251);
      *(this + 28) = v75;
      if (v75)
      {
        goto LABEL_2;
      }

      goto LABEL_118;
    }

    v73 = CMMProfile::GetTag(this, 1733579331);
    *(this + 27) = v73;
    if (v73)
    {
      goto LABEL_115;
    }

LABEL_118:
    *(this + 23) = 0;
    *(this + 24) = 0;
    *(this + 27) = 0;
    *(this + 28) = 0;
    *(this + 25) = 0;
    *(this + 26) = 0;
    return 0;
  }

  switch(v85)
  {
    case 0xCu:
      v33 = CMMBase::NewInternal(0x38, *(this + 3), v8, v9);
      if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
      {
        v79 = v33;
        dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
        v33 = v79;
      }

      v36 = *(this + 20);
      while (v36)
      {
        v37 = v36;
        v36 = *(v36 + 16);
        if (!v36)
        {
          *(v33 + 2) = 1918392666;
          v33[3] = v37;
          v33[4] = 20;
          v33[2] = 0;
          *(v37 + 16) = v33;
          goto LABEL_64;
        }
      }

      *(v33 + 2) = 1918392666;
      v33[3] = 0;
      v33[4] = 20;
      v33[2] = 0;
LABEL_64:
      v33[5] = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
      *(v33 + 24) = 0;
      *v33 = &unk_1F0E09148;
      *(this + 23) = v33;
      v53 = CMMBase::NewInternal(0x38, *(this + 3), v34, v35);
      if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
      {
        v80 = v53;
        dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
        v53 = v80;
      }

      v56 = *(this + 20);
      while (v56)
      {
        v57 = v56;
        v56 = *(v56 + 16);
        if (!v56)
        {
          *(v53 + 2) = 1733843290;
          v53[3] = v57;
          v53[4] = 20;
          v53[2] = 0;
          *(v57 + 16) = v53;
          goto LABEL_71;
        }
      }

      *(v53 + 2) = 1733843290;
      v53[3] = 0;
      v53[4] = 20;
      v53[2] = 0;
LABEL_71:
      v53[5] = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
      *(v53 + 24) = 0;
      *v53 = &unk_1F0E09148;
      *(this + 24) = v53;
      v47 = CMMBase::NewInternal(0x38, *(this + 3), v54, v55);
      if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
      {
        v81 = v47;
        dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
        v47 = v81;
      }

      v58 = *(this + 20);
      do
      {
        if (!v58)
        {
          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v52 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
          goto LABEL_94;
        }

        v51 = v58;
        v58 = *(v58 + 16);
      }

      while (v58);
      *(v47 + 2) = 1649957210;
      v47[3] = v51;
      v47[4] = 20;
      v47[2] = 0;
      v52 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
LABEL_92:
      *(v51 + 16) = v47;
      break;
    case 9u:
      v28 = CMMBase::NewInternal(0x38, *(this + 3), v8, v9);
      if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
      {
        v76 = v28;
        dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
        v28 = v76;
      }

      v31 = *(this + 20);
      while (v31)
      {
        v32 = v31;
        v31 = *(v31 + 16);
        if (!v31)
        {
          *(v28 + 2) = 1918392666;
          v28[3] = v32;
          v28[4] = 20;
          v28[2] = 0;
          *(v32 + 16) = v28;
          goto LABEL_49;
        }
      }

      *(v28 + 2) = 1918392666;
      v28[3] = 0;
      v28[4] = 20;
      v28[2] = 0;
LABEL_49:
      v28[5] = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
      *(v28 + 24) = 0;
      *v28 = &unk_1F0E09148;
      *(this + 23) = v28;
      v42 = CMMBase::NewInternal(0x38, *(this + 3), v29, v30);
      if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
      {
        v77 = v42;
        dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
        v42 = v77;
      }

      v45 = *(this + 20);
      while (v45)
      {
        v46 = v45;
        v45 = *(v45 + 16);
        if (!v45)
        {
          *(v42 + 2) = 1733843290;
          v42[3] = v46;
          v42[4] = 20;
          v42[2] = 0;
          *(v46 + 16) = v42;
          goto LABEL_56;
        }
      }

      *(v42 + 2) = 1733843290;
      v42[3] = 0;
      v42[4] = 20;
      v42[2] = 0;
LABEL_56:
      v42[5] = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
      *(v42 + 24) = 0;
      *v42 = &unk_1F0E09148;
      *(this + 24) = v42;
      v47 = CMMBase::NewInternal(0x38, *(this + 3), v43, v44);
      if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
      {
        v78 = v47;
        dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
        v47 = v78;
      }

      v50 = *(this + 20);
      while (v50)
      {
        v51 = v50;
        v50 = *(v50 + 16);
        if (!v50)
        {
          *(v47 + 2) = 1649957210;
          v47[3] = v51;
          v47[4] = 20;
          v47[2] = 0;
          v52 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
          goto LABEL_92;
        }
      }

      *(v47 + 2) = 1649957210;
      v47[3] = 0;
      v47[4] = 20;
      v47[2] = 0;
      v52 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
      break;
    case 1u:
      v10 = CMMBase::NewInternal(0x38, *(this + 3), v8, v9);
      if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
      {
        v82 = v10;
        dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
        v10 = v82;
      }

      v13 = *(this + 20);
      while (v13)
      {
        v14 = v13;
        v13 = *(v13 + 16);
        if (!v13)
        {
          *(v10 + 2) = 1918392666;
          v10[3] = v14;
          v10[4] = 20;
          v10[2] = 0;
          *(v14 + 16) = v10;
          goto LABEL_79;
        }
      }

      *(v10 + 2) = 1918392666;
      v10[3] = 0;
      v10[4] = 20;
      v10[2] = 0;
LABEL_79:
      v10[5] = &ColorSyncProfileGetBT709RedPrimary_rXYZ;
      *(v10 + 24) = 0;
      *v10 = &unk_1F0E09148;
      *(this + 23) = v10;
      v59 = CMMBase::NewInternal(0x38, *(this + 3), v11, v12);
      if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
      {
        v83 = v59;
        dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
        v59 = v83;
      }

      v62 = *(this + 20);
      while (v62)
      {
        v63 = v62;
        v62 = *(v62 + 16);
        if (!v62)
        {
          *(v59 + 2) = 1733843290;
          v59[3] = v63;
          v59[4] = 20;
          v59[2] = 0;
          *(v63 + 16) = v59;
          goto LABEL_86;
        }
      }

      *(v59 + 2) = 1733843290;
      v59[3] = 0;
      v59[4] = 20;
      v59[2] = 0;
LABEL_86:
      v59[5] = &ColorSyncProfileGetBT709GreenPrimary_gXYZ;
      *(v59 + 24) = 0;
      *v59 = &unk_1F0E09148;
      *(this + 24) = v59;
      v47 = CMMBase::NewInternal(0x38, *(this + 3), v60, v61);
      if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
      {
        v84 = v47;
        dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
        v47 = v84;
      }

      v64 = *(this + 20);
      while (v64)
      {
        v51 = v64;
        v64 = *(v64 + 16);
        if (!v64)
        {
          *(v47 + 2) = 1649957210;
          v47[3] = v51;
          v47[4] = 20;
          v47[2] = 0;
          v52 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
          goto LABEL_92;
        }
      }

      *(v47 + 2) = 1649957210;
      v47[3] = 0;
      v47[4] = 20;
      v47[2] = 0;
      v52 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
      break;
    default:
LABEL_29:
      *(this + 23) = 0;
      *(this + 24) = 0;
      *(this + 25) = 0;
      return 0;
  }

LABEL_94:
  v47[5] = v52;
  *(v47 + 24) = 0;
  *v47 = &unk_1F0E09148;
  *(this + 25) = v47;
  switch(BYTE1(v85))
  {
    case 8u:
      v68 = CMMBase::NewInternal(0x38, *(this + 3), v48, v49);
      v69 = *(this + 20);
      do
      {
        v70 = v69;
        if (!v69)
        {
          break;
        }

        v69 = *(v69 + 16);
      }

      while (v69);
      CMMCurveTag::CMMCurveTag(v68, 0, "curv", 16, v70);
      *v66 = &unk_1F0E09078;
      goto LABEL_109;
    case 0x12u:
      v39 = CMMBase::NewInternal(0x58, *(this + 3), v48, v49);
      v67 = *(this + 20);
      do
      {
        v41 = v67;
        if (!v67)
        {
          break;
        }

        v67 = *(v67 + 16);
      }

      while (v67);
LABEL_104:
      CMMHLGCurveTag::CMMHLGCurveTag(v39, v41);
      goto LABEL_109;
    case 0x10u:
      v25 = CMMBase::NewInternal(0x60, *(this + 3), v48, v49);
      v65 = *(this + 20);
      do
      {
        v27 = v65;
        if (!v65)
        {
          break;
        }

        v65 = *(v65 + 16);
      }

      while (v65);
LABEL_100:
      CMMPQCurveTag::CMMPQCurveTag(v25, 0, v27);
LABEL_109:
      *(this + 27) = v66;
      *(this + 28) = v66;
      *(this + 26) = v66;
LABEL_2:
      *(a3 + 1) = *(this + 26);
      *(a3 + 2) = *(this + 27);
      *(a3 + 3) = *(this + 28);
      (*a2)[0] = *(this + 23);
      (*a2)[1] = *(this + 24);
      (*a2)[2] = *(this + 25);
      return 1;
  }

  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  return 0;
}

void CMMMatrixHDRProfile::~CMMMatrixHDRProfile(CMMMatrixHDRProfile *this)
{
  CMMMatrixHDRProfile::~CMMMatrixHDRProfile(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E08848;
  v2 = *(this + 29);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  v5 = *(this + 30);
  if (v5)
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = v6 - 1;
      v5[1] = v7;
      if (!v7)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  v8 = *(this + 31);
  if (v8)
  {
    v9 = v8[1];
    if (v9)
    {
      v10 = v9 - 1;
      v8[1] = v10;
      if (!v10)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  v11 = *(this + 32);
  if (v11)
  {
    v12 = v11[1];
    if (v12)
    {
      v13 = v12 - 1;
      v11[1] = v13;
      if (!v13)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  CMMProfile::~CMMProfile(this);
}

uint64_t CMMDevLinkProfile::GetDstColorSpace(uint64_t a1, int a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2 != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v3 = *(a1 + 52);
  if (v3 == 1281450528)
  {
    v3 = 1347182946;
  }

  if (v3 == 1347182946)
  {
    return 1145856354;
  }

  else
  {
    return v3;
  }
}

uint64_t CMMDevLinkProfile::GetSrcColorSpace(uint64_t a1, int a2)
{
  if (a2 != 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v2 = *(a1 + 48);
  if (v2 == 1296255032)
  {
    v3 = 943934546;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == 1296255031)
  {
    v4 = 927157330;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1296255030)
  {
    v5 = 910380114;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1296255029)
  {
    v6 = 893602898;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  if (v2 == 1281450528)
  {
    v7 = 1145856354;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1296255029)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

void *CMMDevLinkProfile::GetLutTags(unsigned int *a1, int a2, unsigned int a3)
{
  if (a2 != 5)
  {
    return 0;
  }

  v4 = a1[12];
  if (v4 <= 1296255029)
  {
    if (v4 == 1281450528)
    {
      v4 = 1145856354;
    }

    else if (v4 == 1296255029)
    {
      v4 = 893602898;
    }
  }

  else
  {
    switch(v4)
    {
      case 0x4D434836:
        v4 = 910380114;
        break;
      case 0x4D434837:
        v4 = 927157330;
        break;
      case 0x4D434838:
        v4 = 943934546;
        break;
    }
  }

  v5 = a1[13];
  v6 = v5 == 1281450528 ? 1347182946 : v5;
  AToBTagSignature = CMMProfile::GetAToBTagSignature(a3);
  if (AToBTagSignature == -1)
  {
    return 0;
  }

  v8 = AToBTagSignature;
  if (!(*(*a1 + 88))(a1, AToBTagSignature))
  {
    return 0;
  }

  return CMMProfile::SingleTagContainer(a1, v8, v4, v6);
}

uint64_t CMMProfile::GetAToBTagSignature(unsigned int a1)
{
  if (a1 >= 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return *&a0b2a1b2a2b2a1b[4 * a1];
}

void CMMDevLinkProfile::~CMMDevLinkProfile(CMMDevLinkProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMColorSpaceProfile::GetDstColorSpace(uint64_t a1, int a2, BOOL *a3)
{
  v4 = (a2 & 0xFFFFFFFD) == 1;
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v5 = *(a1 + 52);
    if (v5 == 1281450528)
    {
      v6 = 0;
      v5 = 1347182946;
      v4 = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (a2 != 2)
  {
LABEL_15:
    v6 = 4294967246;
    v5 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v5 = *(a1 + 48);
  if (v5 <= 1296255029)
  {
    if (v5 != 1281450528)
    {
      if (v5 == 1296255029)
      {
        v4 = 0;
        v6 = 0;
        v5 = 893602898;
        goto LABEL_16;
      }

LABEL_13:
      if (v5 != -1)
      {
        v6 = 0;
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v4 = 0;
    v6 = 0;
    v5 = 1145856354;
  }

  else
  {
    switch(v5)
    {
      case 0x4D434836:
        v4 = 0;
        v6 = 0;
        v5 = 910380114;
        break;
      case 0x4D434837:
        v4 = 0;
        v6 = 0;
        v5 = 927157330;
        break;
      case 0x4D434838:
        v4 = 0;
        v6 = 0;
        v5 = 943934546;
        break;
      default:
        goto LABEL_13;
    }
  }

LABEL_16:
  CMMThrowExceptionOnError(v6);
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

uint64_t CMMColorSpaceProfile::GetSrcColorSpace(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 48);
    if (v2 == 1296255032)
    {
      v3 = 943934546;
    }

    else
    {
      v3 = *(a1 + 48);
    }

    if (v2 == 1296255031)
    {
      v4 = 927157330;
    }

    else
    {
      v4 = v3;
    }

    if (v2 == 1296255030)
    {
      v5 = 910380114;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 1296255029)
    {
      v6 = 893602898;
    }

    else
    {
      v6 = *(a1 + 48);
    }

    if (v2 == 1281450528)
    {
      v7 = 1145856354;
    }

    else
    {
      v7 = v6;
    }

    if (v2 <= 1296255029)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
    }

    v9 = *(a1 + 52);
    if (v9 == 1281450528)
    {
      return 1347182946;
    }

    else
    {
      return v9;
    }
  }
}

double CMMColorSpaceProfile::GetLutTags(uint64_t a1, int a2, unsigned int a3)
{
  if ((*(a1 + 180) & 1) == 0)
  {
    return CMMProfile::GetLutTagsGeneric(a1, a2, a3);
  }

  return result;
}

uint64_t CMMProfile::GetBToATagSignature(unsigned int a1)
{
  if (a1 >= 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return *&a0b2a1b2a2b2a1b[4 * a1 + 16];
}

void CMMColorSpaceProfile::~CMMColorSpaceProfile(CMMColorSpaceProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMAbstractProfile::GetDstColorSpace(uint64_t a1, int a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a2 != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v3 = *(a1 + 52);
  if (v3 == 1281450528)
  {
    return 1347182946;
  }

  else
  {
    return v3;
  }
}

uint64_t CMMAbstractProfile::GetSrcColorSpace(uint64_t a1, int a2)
{
  if (a2 != 3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  result = *(a1 + 48);
  if (result > 1296255029)
  {
    switch(result)
    {
      case 0x4D434838:
        return 943934546;
      case 0x4D434837:
        return 927157330;
      case 0x4D434836:
        return 910380114;
    }
  }

  else if (result == 1145856354 || result == 1281450528)
  {
    return 1347182946;
  }

  else if (result == 1296255029)
  {
    return 893602898;
  }

  return result;
}

void *CMMAbstractProfile::GetLutTags(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 != 3)
  {
    return 0;
  }

  v4 = *(a1 + 52);
  AToBTagSignature = CMMProfile::GetAToBTagSignature(a3);
  if (AToBTagSignature == -1)
  {
    return 0;
  }

  if (v4 == 1281450528)
  {
    v6 = 1347182946;
  }

  else
  {
    v6 = v4;
  }

  return CMMProfile::SingleTagContainer(a1, AToBTagSignature, v6, v6);
}

void CMMAbstractProfile::~CMMAbstractProfile(CMMAbstractProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMNamedColorProfile::GetConversionType(CMMNamedColorProfile *this, CFTypeRef cf1, int a3, int a4)
{
  if (CFEqual(cf1, kColorSyncTransformDeviceToPCS))
  {
    if (a3 && !a4)
    {
      return 6;
    }

    if (a3 && (a4 & 1) != 0)
    {
      return 7;
    }

LABEL_14:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  if (CFEqual(cf1, kColorSyncTransformPCSToDevice))
  {
    if (a4)
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (!CFEqual(cf1, kColorSyncTransformPCSToPCS))
    {
      goto LABEL_14;
    }

    return 3;
  }
}

uint64_t CMMNamedColorProfile::GetDstColorSpace(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 == 8)
      {
        LOBYTE(v7) = 0;
        result = 1;
        goto LABEL_29;
      }

      if (a2 != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_12;
    }

LABEL_8:
    v5 = *(a1 + 52);
    if (v5 == 1281450528)
    {
      result = 1347182946;
    }

    else
    {
      result = v5;
    }

    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
LABEL_33:
      exception = __cxa_allocate_exception(4uLL);
      v12 = -50;
LABEL_34:
      *exception = v12;
    }

    goto LABEL_8;
  }

LABEL_12:
  Tag = CMMProfile::GetTag(a1, 1852009522);
  {
    exception = __cxa_allocate_exception(4uLL);
    v12 = -171;
    goto LABEL_34;
  }

  v7 = v10[22];
  if (!v7)
  {
    result = 0;
    goto LABEL_29;
  }

  result = *(a1 + 48);
  if (result <= 1296255029)
  {
    if (result == 1281450528)
    {
      LOBYTE(v7) = 0;
      result = 1145856354;
      goto LABEL_29;
    }

    if (result == 1296255029)
    {
      LOBYTE(v7) = 0;
      result = 893602898;
      goto LABEL_29;
    }
  }

  else
  {
    switch(result)
    {
      case 0x4D434836:
        LOBYTE(v7) = 0;
        result = 910380114;
        goto LABEL_29;
      case 0x4D434837:
        LOBYTE(v7) = 0;
        result = 927157330;
        goto LABEL_29;
      case 0x4D434838:
        LOBYTE(v7) = 0;
        result = 943934546;
        goto LABEL_29;
    }
  }

  LOBYTE(v7) = 0;
LABEL_29:
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t CMMNamedColorProfile::GetSrcColorSpace(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    goto LABEL_7;
  }

  result = 1;
  if (((1 << a2) & 0x10C) == 0)
  {
    if (((1 << a2) & 0xC0) != 0)
    {
      return result;
    }

LABEL_7:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v4 = *(a1 + 52);
  if (v4 == 1281450528)
  {
    return 1347182946;
  }

  else
  {
    return v4;
  }
}

void CMMNamedColorProfile::~CMMNamedColorProfile(CMMNamedColorProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

float CMMGamma::MakeTRC(uint64_t a1, uint64_t a2, void **a3)
{
  CMMCurveTag::MakeTRC(a1, a2, a3, 0);
  *a2 = 1;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 8) = 1;
  result = *(a1 + 56);
  *(a2 + 24) = result;
  *(a2 + 28) = 1065353216;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  return result;
}

void CMMGamma::~CMMGamma(CMMGamma *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMThreadManager::~CMMThreadManager(CMMThreadManager *this)
{
  *this = &unk_1F0E09778;
  v2 = *(this + 1);
  if (v2)
  {
    free(v2);
    *(this + 1) = 0;
  }

  CMMBase::operator delete(this);
}

{
  *this = &unk_1F0E09778;
  v2 = *(this + 1);
  if (v2)
  {
    free(v2);
    *(this + 1) = 0;
  }
}

uint64_t CMMGetPrecisionFromData(int a1, char a2)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return 2;
    }

    else
    {
      v2 = (a2 & 0x1F) - 1;
      if (a1 == 2)
      {
        v3 = v2 >= 2;
        v4 = 1;
      }

      else
      {
        if (a1 != 3)
        {
          goto LABEL_19;
        }

        v3 = v2 >= 2;
        v4 = 3;
      }

      if (v3)
      {
        return v4;
      }

      else
      {
        return v4 + 1;
      }
    }
  }

  else
  {
    if (a1 > 6)
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        return 4;
      }
    }

    else if (a1 != 4)
    {
      if (a1 != 6)
      {
LABEL_19:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -181;
      }

      return 4;
    }

    return 5;
  }
}

void *CMMDataBaseClass::CMMDataBaseClass(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  result[1] = 0;
  result[2] = a3;
  v4 = a2[18];
  result[3] = a4;
  result[4] = a4 - v4 * a3;
  if (*a2 != 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  *result = a2;
  result[5] = a2[19];
  result[6] = v4;
  result[7] = 0;
  return result;
}

{
  result[1] = a2;
  result[2] = a3;
  v4 = a2[18];
  result[3] = a4;
  result[4] = a4 - v4 * a3;
  if (*a2 != 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  *result = 0;
  result[5] = a2[19];
  result[6] = v4;
  result[7] = 0;
  return result;
}

uint64_t CMM8Bit3ChanData::SetParams(uint64_t a1, uint64_t a2)
{
  if (CMMGetChannelCountFromCMMSpace(*(a2 + 184)) == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294967115;
  }

  CMMThrowExceptionOnError(v4);
  if (*(a1 + 16) == *(a2 + 168))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967115;
  }

  result = CMMThrowExceptionOnError(v5);
  v7 = *(a2 + 8);
  *(a1 + 72) = v7;
  if ((*(a2 + 180) & 0x1D) == 4)
  {
    *(a1 + 72) = v7 + 1;
  }

  return result;
}

uint64_t CMM16BitNChanData::SetParams(void *a1, uint64_t a2)
{
  if (*(a2 + 168) == 2 * a1[2])
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294967115;
  }

  CMMThrowExceptionOnError(v4);
  if (*(a2 + 160) == 2 * a1[3])
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967115;
  }

  CMMThrowExceptionOnError(v5);
  result = CMMGetChannelCountFromCMMSpace(*(a2 + 184));
  a1[8] = result;
  a1[9] = result ^ 0xF;
  a1[10] = 2 * result;
  v7 = *(a2 + 8);
  a1[16] = v7;
  if ((*(a2 + 180) & 0x1D) == 4)
  {
    a1[16] = v7 + 2;
  }

  return result;
}

void CMMDataEncoder::DoEncode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void CMM8Bit3ChanNoConvEncoder::DoEncode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

uint64_t CMM8Bit3ChanNoConvEncoder::DoEncode(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v5 = 0;
  v6 = *(result + 112);
  v7 = *(result + 56);
  v8 = &v6[v7 * *(result + 96)];
  *(result + 104) = v8;
  v9 = (((*v8 << 16) | (v8[1] << 8) | v8[2]) + 1) & 0xFFFFFF;
  *(result + 120) = v9;
  v10 = *(result + 80);
  v11 = *(result + 16);
  v12 = *(result + 24);
  do
  {
    if (!v10)
    {
      break;
    }

    v14 = *(result + 88);
    v13 = *(result + 96);
    v15 = v14 - v13;
    if (v14 - v13 >= *(result + 8) - *a4)
    {
      v15 = *(result + 8) - *a4;
    }

    if (!v15)
    {
LABEL_13:
      v16 = 0;
      goto LABEL_15;
    }

    v16 = v15 - 1;
    while (1)
    {
      if (v5 >= v12)
      {
        goto LABEL_23;
      }

      v17 = (v8[2] << 16) | (v8[1] << 8) | *v8;
      if (v17 == v9)
      {
        if (v5 < v11)
        {
          goto LABEL_23;
        }

        ++*(a2 + 4 * v5 - 4);
        v8 += v7;
        goto LABEL_12;
      }

      *(a2 + 4 * v5) = v17;
      v5 += v11;
      *(a2 + 4 * v5 - 4) = 1;
      v8 += v7;
      v9 = v17;
      if (v5 >= v12)
      {
        break;
      }

LABEL_12:
      if (--v16 == -1)
      {
        goto LABEL_13;
      }
    }

    v9 = v17;
LABEL_15:
    v18 = v15 - v16;
    v19 = v18 + v13;
    if (v19 != v14)
    {
      if (v19 < v14)
      {
        goto LABEL_18;
      }

LABEL_23:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

    v19 = 0;
    v8 = &v6[*(result + 64)];
    --v10;
    v6 = v8;
LABEL_18:
    *(result + 96) = v19;
    v20 = *a4 + v18;
    *a4 = v20;
    if (v5 <= *(result + 24))
    {
      v21 = *(result + 8);
      if (v20 <= v21)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  while (v5 != v12 && v20 != v21);
  *(result + 104) = v8;
  *(result + 112) = v6;
  *(result + 80) = v10;
  *a5 = v5 / v11;
  return result;
}

void CMMDataDecoder::DoDecode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void CMM8Bit3ChanNoConvDecoder::DoDecode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void *CMM8Bit3ChanNoConvDecoder::DoDecode(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result[1];
  v9 = v8 * a4;
  v10 = result[5];
  v11 = result[12];
  v12 = result[8];
  v13 = result[10];
  v14 = v11 + v13 * v10;
  result[11] = v14;
  do
  {
    if (!v12)
    {
      break;
    }

    v15 = result[9];
    v16 = v15 - v13;
    if (v15 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = ~v13 + v15;
      while (1)
      {
        v18 = v14;
        if (v7)
        {
          *v14 = v6;
          *(v14 + 2) = BYTE2(v6);
        }

        else
        {
          v6 = *(a2 + 4 * v4);
          *v14 = v6;
          *(v14 + 2) = BYTE2(v6);
          v5 = *(a2 + 4 * (v8 - 1 + v4));
        }

        if (v5 <= 0)
        {
          goto LABEL_22;
        }

        v7 = --v5 != 0;
        if (!v5)
        {
          v4 += v8;
          if (v4 == v9)
          {
            break;
          }
        }

        v14 += v10;
        if (--v17 == -1)
        {
          v17 = 0;
          v14 = v18 + v10;
          goto LABEL_15;
        }
      }

      v5 = 0;
      v7 = 0;
      v14 += v10;
      v4 = v9;
LABEL_15:
      v15 = result[9];
      v13 = result[10];
    }

    v13 += v16 - v17;
    if (v13 == v15)
    {
      v13 = 0;
      v11 += result[6];
      --v12;
      v14 = v11;
    }

    else if (v13 >= v15)
    {
      goto LABEL_22;
    }

    result[10] = v13;
    if (v4 > v9)
    {
LABEL_22:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }
  }

  while (v4 != v9);
  result[11] = v14;
  result[12] = v11;
  result[8] = v12;
  return result;
}

char *CMMEncoderTemplate<CMM16BitNChanData>::DoEncode(char *result, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v109[2] = *MEMORY[0x1E69E9840];
  v5 = *(result + 13);
  v6 = *(result + 21);
  v7 = &v6[*(result + 7) * *(result + 12)];
  *(result + 20) = v7;
  v9 = result;
  v101 = v6;
  v10 = (result + 128);
  v11 = v7;
  v12 = result + 128;
  switch(v5)
  {
    case 1:
      goto LABEL_16;
    case 2:
      goto LABEL_15;
    case 3:
      goto LABEL_14;
    case 4:
      goto LABEL_13;
    case 5:
      goto LABEL_12;
    case 6:
      goto LABEL_11;
    case 7:
      goto LABEL_10;
    case 8:
      goto LABEL_9;
    case 9:
      goto LABEL_8;
    case 10:
      goto LABEL_7;
    case 11:
      goto LABEL_6;
    case 12:
      goto LABEL_5;
    case 13:
      goto LABEL_4;
    case 14:
      goto LABEL_3;
    case 15:
      v11 = v7 + 1;
      v12 = result + 130;
      *(result + 64) = *v7 + 1;
LABEL_3:
      v13 = *v11++;
      *v12++ = v13 + 1;
LABEL_4:
      v14 = *v11++;
      *v12++ = v14 + 1;
LABEL_5:
      v15 = *v11++;
      *v12++ = v15 + 1;
LABEL_6:
      v16 = *v11++;
      *v12++ = v16 + 1;
LABEL_7:
      v17 = *v11++;
      *v12++ = v17 + 1;
LABEL_8:
      v18 = *v11++;
      *v12++ = v18 + 1;
LABEL_9:
      v19 = *v11++;
      *v12++ = v19 + 1;
LABEL_10:
      v20 = *v11++;
      *v12++ = v20 + 1;
LABEL_11:
      v21 = *v11++;
      *v12++ = v21 + 1;
LABEL_12:
      v22 = *v11++;
      *v12++ = v22 + 1;
LABEL_13:
      v23 = *v11++;
      *v12++ = v23 + 1;
LABEL_14:
      v24 = *v11++;
      *v12++ = v24 + 1;
LABEL_15:
      v25 = *v11++;
      *v12++ = v25 + 1;
LABEL_16:
      v26 = 0;
      *v12 = *v11 + 1;
      v105 = (result + 130);
      v100 = a4;
      break;
    default:
      goto LABEL_87;
  }

  do
  {
    v27 = *(v9 + 10);
    if (!v27)
    {
      break;
    }

    v28 = *(v9 + 11);
    v29 = *(v9 + 12);
    if (v28 - v29 >= *(v9 + 1) - *a4)
    {
      v30 = *(v9 + 1) - *a4;
    }

    else
    {
      v30 = v28 - v29;
    }

    v106 = v30;
    if (v30)
    {
      v102 = *(v9 + 12);
      v103 = *(v9 + 11);
      v104 = *(v9 + 10);
      v31 = *(v9 + 3);
      while (2)
      {
        if (v26 >= v31)
        {
          goto LABEL_87;
        }

        v32 = *(v9 + 13);
        v33 = v32 - 1;
        --v30;
        v34 = v7;
        v35 = v10;
        switch(v32)
        {
          case 1:
            goto LABEL_40;
          case 2:
            goto LABEL_39;
          case 3:
            goto LABEL_38;
          case 4:
            goto LABEL_37;
          case 5:
            goto LABEL_36;
          case 6:
            goto LABEL_35;
          case 7:
            goto LABEL_34;
          case 8:
            goto LABEL_33;
          case 9:
            goto LABEL_32;
          case 10:
            goto LABEL_31;
          case 11:
            goto LABEL_30;
          case 12:
            goto LABEL_29;
          case 13:
            goto LABEL_28;
          case 14:
            goto LABEL_27;
          case 15:
            v34 = (v7 + 1);
            v36 = *v7;
            if (*v10 != v36)
            {
LABEL_45:
              v76 = v7 + 1;
              *v10 = v36;
              v77 = v105;
LABEL_46:
              v78 = *v76++;
              *v77++ = v78;
LABEL_47:
              v79 = *v76++;
              *v77++ = v79;
LABEL_48:
              v80 = *v76++;
              *v77++ = v80;
LABEL_49:
              v81 = *v76++;
              *v77++ = v81;
LABEL_50:
              v82 = *v76++;
              *v77++ = v82;
LABEL_51:
              v83 = *v76++;
              *v77++ = v83;
LABEL_52:
              v84 = *v76++;
              *v77++ = v84;
LABEL_53:
              v85 = *v76++;
              *v77++ = v85;
LABEL_54:
              v86 = *v76++;
              *v77++ = v86;
LABEL_55:
              v87 = *v76++;
              *v77++ = v87;
LABEL_56:
              v88 = *v76++;
              *v77++ = v88;
LABEL_57:
              v89 = *v76++;
              *v77++ = v89;
LABEL_58:
              v90 = *v76++;
              *v77++ = v90;
LABEL_59:
              *v77 = *v76;
              v107 = 0;
              v108 = 0;
              *(v109 + 6) = 0;
              v109[0] = 0;
              v91 = &v107 + *(v9 + 14);
              result = memcpy(v91, v7, *(v9 + 15));
              if (v9[176] == 1)
              {
                do
                {
                  *v91 = bswap32(*v91) >> 16;
                  ++v91;
                  --v32;
                }

                while (v32);
              }

              v92 = (a2 + 4 * v26);
              switch(v33)
              {
                case 0:
                  goto LABEL_76;
                case 1:
                  goto LABEL_75;
                case 2:
                  goto LABEL_74;
                case 3:
                  goto LABEL_73;
                case 4:
                  goto LABEL_72;
                case 5:
                  goto LABEL_71;
                case 6:
                  goto LABEL_70;
                case 7:
                  goto LABEL_69;
                case 8:
                  goto LABEL_68;
                case 9:
                  goto LABEL_67;
                case 10:
                  goto LABEL_66;
                case 11:
                  goto LABEL_65;
                case 12:
                  goto LABEL_64;
                case 13:
                  goto LABEL_63;
                case 14:
                  *v92++ = (((v107 >> 7) | (v107 << 9)) + 1) >> 1;
LABEL_63:
                  *v92++ = (((WORD1(v107) >> 7) | (WORD1(v107) << 9)) + 1) >> 1;
LABEL_64:
                  *v92++ = (((WORD2(v107) >> 7) | (WORD2(v107) << 9)) + 1) >> 1;
LABEL_65:
                  *v92++ = (((HIWORD(v107) >> 7) | (HIWORD(v107) << 9)) + 1) >> 1;
LABEL_66:
                  *v92++ = (((v108 >> 7) | (v108 << 9)) + 1) >> 1;
LABEL_67:
                  *v92++ = (((WORD1(v108) >> 7) | (WORD1(v108) << 9)) + 1) >> 1;
LABEL_68:
                  *v92++ = (((WORD2(v108) >> 7) | (WORD2(v108) << 9)) + 1) >> 1;
LABEL_69:
                  *v92++ = (((HIWORD(v108) >> 7) | (HIWORD(v108) << 9)) + 1) >> 1;
LABEL_70:
                  *v92++ = (((LOWORD(v109[0]) >> 7) | (LOWORD(v109[0]) << 9)) + 1) >> 1;
LABEL_71:
                  *v92++ = (((WORD1(v109[0]) >> 7) | (WORD1(v109[0]) << 9)) + 1) >> 1;
LABEL_72:
                  *v92++ = (((WORD2(v109[0]) >> 7) | (WORD2(v109[0]) << 9)) + 1) >> 1;
LABEL_73:
                  *v92++ = (((HIWORD(v109[0]) >> 7) | (HIWORD(v109[0]) << 9)) + 1) >> 1;
LABEL_74:
                  *v92++ = (((LOWORD(v109[1]) >> 7) | (LOWORD(v109[1]) << 9)) + 1) >> 1;
LABEL_75:
                  *v92++ = (((WORD1(v109[1]) >> 7) | (WORD1(v109[1]) << 9)) + 1) >> 1;
LABEL_76:
                  *v92 = (((WORD2(v109[1]) >> 7) | (WORD2(v109[1]) << 9)) + 1) >> 1;
                  v26 += *(v9 + 2);
                  *(a2 + 4 * v26 - 4) = 1;
                  v7 += *(v9 + 7);
                  *(v9 + 20) = v7;
                  if (v26 < v31)
                  {
                    goto LABEL_77;
                  }

                  goto LABEL_78;
                default:
                  goto LABEL_87;
              }
            }

            v35 = v105;
LABEL_27:
            v38 = *v35++;
            v37 = v38;
            v39 = *v34++;
            if (v37 != v39)
            {
              goto LABEL_43;
            }

LABEL_28:
            v41 = *v35++;
            v40 = v41;
            v42 = *v34++;
            if (v40 != v42)
            {
              goto LABEL_43;
            }

LABEL_29:
            v44 = *v35++;
            v43 = v44;
            v45 = *v34++;
            if (v43 != v45)
            {
              goto LABEL_43;
            }

LABEL_30:
            v47 = *v35++;
            v46 = v47;
            v48 = *v34++;
            if (v46 != v48)
            {
              goto LABEL_43;
            }

LABEL_31:
            v50 = *v35++;
            v49 = v50;
            v51 = *v34++;
            if (v49 != v51)
            {
              goto LABEL_43;
            }

LABEL_32:
            v53 = *v35++;
            v52 = v53;
            v54 = *v34++;
            if (v52 != v54)
            {
              goto LABEL_43;
            }

LABEL_33:
            v56 = *v35++;
            v55 = v56;
            v57 = *v34++;
            if (v55 != v57)
            {
              goto LABEL_43;
            }

LABEL_34:
            v59 = *v35++;
            v58 = v59;
            v60 = *v34++;
            if (v58 != v60)
            {
              goto LABEL_43;
            }

LABEL_35:
            v62 = *v35++;
            v61 = v62;
            v63 = *v34++;
            if (v61 != v63)
            {
              goto LABEL_43;
            }

LABEL_36:
            v65 = *v35++;
            v64 = v65;
            v66 = *v34++;
            if (v64 != v66)
            {
              goto LABEL_43;
            }

LABEL_37:
            v68 = *v35++;
            v67 = v68;
            v69 = *v34++;
            if (v67 != v69)
            {
              goto LABEL_43;
            }

LABEL_38:
            v71 = *v35++;
            v70 = v71;
            v72 = *v34++;
            if (v70 != v72)
            {
              goto LABEL_43;
            }

LABEL_39:
            v74 = *v35++;
            v73 = v74;
            v75 = *v34++;
            if (v73 != v75)
            {
              goto LABEL_43;
            }

LABEL_40:
            if (*v35 != *v34)
            {
LABEL_43:
              v76 = v7;
              v77 = v10;
              switch(v32)
              {
                case 1:
                  goto LABEL_59;
                case 2:
                  goto LABEL_58;
                case 3:
                  goto LABEL_57;
                case 4:
                  goto LABEL_56;
                case 5:
                  goto LABEL_55;
                case 6:
                  goto LABEL_54;
                case 7:
                  goto LABEL_53;
                case 8:
                  goto LABEL_52;
                case 9:
                  goto LABEL_51;
                case 10:
                  goto LABEL_50;
                case 11:
                  goto LABEL_49;
                case 12:
                  goto LABEL_48;
                case 13:
                  goto LABEL_47;
                case 14:
                  goto LABEL_46;
                case 15:
                  LOWORD(v36) = *v7;
                  goto LABEL_45;
                default:
                  goto LABEL_87;
              }
            }

            if (v26 < *(v9 + 2))
            {
              goto LABEL_87;
            }

            ++*(a2 + 4 * v26 - 4);
            v7 += *(v9 + 7);
            *(v9 + 20) = v7;
LABEL_77:
            if (v30)
            {
              continue;
            }

LABEL_78:
            a4 = v100;
            v28 = v103;
            v27 = v104;
            v29 = v102;
            break;
          default:
            goto LABEL_87;
        }

        break;
      }
    }

    v93 = v29 + v106 - v30;
    if (v93 == v28)
    {
      v93 = 0;
      v7 = &v101[*(v9 + 8)];
      *(v9 + 20) = v7;
      *(v9 + 21) = v7;
      *(v9 + 10) = v27 - 1;
      v101 = v7;
    }

    else if (v93 >= v28)
    {
      goto LABEL_87;
    }

    *(v9 + 12) = v93;
    v94 = *a4 + v106 - v30;
    *a4 = v94;
    v95 = *(v9 + 3);
    if (v26 <= v95)
    {
      v96 = *(v9 + 1);
      if (v94 <= v96)
      {
        continue;
      }
    }

LABEL_87:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  while (v26 != v95 && v94 != v96);
  *a5 = v26 / *(v9 + 2);
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMMDecoderTemplate<CMM16BitNChanData>::DoDecode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 8);
  v9 = v8 * a4;
  v10 = *(result + 40);
  v11 = *(result + 152);
  v12 = *(result + 80);
  v13 = &v11[v12 * v10];
  *(result + 144) = v13;
  v14 = *(result + 64);
  while (v14)
  {
    v15 = *(result + 72);
    if (v15 == v12)
    {
      v16 = 0;
      goto LABEL_80;
    }

    v16 = v15 - v12;
    while (2)
    {
      if (v7)
      {
        if (v5)
        {
          v17 = v5;
          v18 = v13;
          switch(*(result + 88))
          {
            case 1:
              goto LABEL_22;
            case 2:
              goto LABEL_21;
            case 3:
              goto LABEL_20;
            case 4:
              goto LABEL_19;
            case 5:
              goto LABEL_18;
            case 6:
              goto LABEL_17;
            case 7:
              goto LABEL_16;
            case 8:
              goto LABEL_15;
            case 9:
              goto LABEL_14;
            case 0xALL:
              goto LABEL_13;
            case 0xBLL:
              goto LABEL_12;
            case 0xCLL:
              goto LABEL_11;
            case 0xDLL:
              goto LABEL_10;
            case 0xELL:
              goto LABEL_9;
            case 0xFLL:
              v17 = v5 + 1;
              *v13 = *v5;
              v18 = v13 + 1;
LABEL_9:
              v19 = *v17++;
              *v18++ = v19;
LABEL_10:
              v20 = *v17++;
              *v18++ = v20;
LABEL_11:
              v21 = *v17++;
              *v18++ = v21;
LABEL_12:
              v22 = *v17++;
              *v18++ = v22;
LABEL_13:
              v23 = *v17++;
              *v18++ = v23;
LABEL_14:
              v24 = *v17++;
              *v18++ = v24;
LABEL_15:
              v25 = *v17++;
              *v18++ = v25;
LABEL_16:
              v26 = *v17++;
              *v18++ = v26;
LABEL_17:
              v27 = *v17++;
              *v18++ = v27;
LABEL_18:
              v28 = *v17++;
              *v18++ = v28;
LABEL_19:
              v29 = *v17++;
              *v18++ = v29;
LABEL_20:
              v30 = *v17++;
              *v18++ = v30;
LABEL_21:
              v31 = *v17++;
              *v18++ = v31;
LABEL_22:
              *v18 = *v17;
              goto LABEL_73;
            default:
              break;
          }
        }

LABEL_86:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      v32 = *(result + 88);
      v33 = (a2 + 4 * v4);
      v34 = v13;
      switch(v32)
      {
        case 1:
          goto LABEL_66;
        case 2:
          goto LABEL_63;
        case 3:
          goto LABEL_60;
        case 4:
          goto LABEL_57;
        case 5:
          goto LABEL_54;
        case 6:
          goto LABEL_51;
        case 7:
          goto LABEL_48;
        case 8:
          goto LABEL_45;
        case 9:
          goto LABEL_42;
        case 10:
          goto LABEL_39;
        case 11:
          goto LABEL_36;
        case 12:
          goto LABEL_33;
        case 13:
          goto LABEL_30;
        case 14:
          goto LABEL_27;
        case 15:
          v35 = *v33++;
          v36 = (v35 + 128) >> 8;
          if (v36 >= 0xFFFF)
          {
            LOWORD(v36) = -1;
          }

          *v13 = v36;
          v34 = v13 + 1;
LABEL_27:
          v37 = *v33++;
          v38 = (v37 + 128) >> 8;
          if (v38 >= 0xFFFF)
          {
            LOWORD(v38) = -1;
          }

          *v34++ = v38;
LABEL_30:
          v39 = *v33++;
          v40 = (v39 + 128) >> 8;
          if (v40 >= 0xFFFF)
          {
            LOWORD(v40) = -1;
          }

          *v34++ = v40;
LABEL_33:
          v41 = *v33++;
          v42 = (v41 + 128) >> 8;
          if (v42 >= 0xFFFF)
          {
            LOWORD(v42) = -1;
          }

          *v34++ = v42;
LABEL_36:
          v43 = *v33++;
          v44 = (v43 + 128) >> 8;
          if (v44 >= 0xFFFF)
          {
            LOWORD(v44) = -1;
          }

          *v34++ = v44;
LABEL_39:
          v45 = *v33++;
          v46 = (v45 + 128) >> 8;
          if (v46 >= 0xFFFF)
          {
            LOWORD(v46) = -1;
          }

          *v34++ = v46;
LABEL_42:
          v47 = *v33++;
          v48 = (v47 + 128) >> 8;
          if (v48 >= 0xFFFF)
          {
            LOWORD(v48) = -1;
          }

          *v34++ = v48;
LABEL_45:
          v49 = *v33++;
          v50 = (v49 + 128) >> 8;
          if (v50 >= 0xFFFF)
          {
            LOWORD(v50) = -1;
          }

          *v34++ = v50;
LABEL_48:
          v51 = *v33++;
          v52 = (v51 + 128) >> 8;
          if (v52 >= 0xFFFF)
          {
            LOWORD(v52) = -1;
          }

          *v34++ = v52;
LABEL_51:
          v53 = *v33++;
          v54 = (v53 + 128) >> 8;
          if (v54 >= 0xFFFF)
          {
            LOWORD(v54) = -1;
          }

          *v34++ = v54;
LABEL_54:
          v55 = *v33++;
          v56 = (v55 + 128) >> 8;
          if (v56 >= 0xFFFF)
          {
            LOWORD(v56) = -1;
          }

          *v34++ = v56;
LABEL_57:
          v57 = *v33++;
          v58 = (v57 + 128) >> 8;
          if (v58 >= 0xFFFF)
          {
            LOWORD(v58) = -1;
          }

          *v34++ = v58;
LABEL_60:
          v59 = *v33++;
          v60 = (v59 + 128) >> 8;
          if (v60 >= 0xFFFF)
          {
            LOWORD(v60) = -1;
          }

          *v34++ = v60;
LABEL_63:
          v61 = *v33++;
          v62 = (v61 + 128) >> 8;
          if (v62 >= 0xFFFF)
          {
            LOWORD(v62) = -1;
          }

          *v34++ = v62;
LABEL_66:
          v63 = (*v33 + 128) >> 8;
          if (v63 >= 0xFFFF)
          {
            LOWORD(v63) = -1;
          }

          *v34 = v63;
          if (*(result + 160))
          {
            v64 = -v32;
            do
            {
              v34[v64 + 1] = bswap32(v34[v64 + 1]) >> 16;
            }

            while (!__CFADD__(v64++, 1));
          }

          v6 = *(a2 + 4 * (v8 - 1 + v4));
          v5 = v13;
LABEL_73:
          if (v6 <= 0)
          {
            goto LABEL_86;
          }

          --v16;
          v13 += v10;
          v7 = --v6 != 0;
          if (v6 || (v4 += v8, v4 != v9))
          {
            if (!v16)
            {
              goto LABEL_80;
            }

            continue;
          }

          v6 = 0;
          v7 = 0;
          v4 = v8 * a4;
LABEL_80:
          v12 = v15 - v16;
          if (v15 - v16 == v15)
          {
            v12 = 0;
            v11 += *(result + 48);
            *(result + 152) = v11;
            *(result + 64) = --v14;
            v13 = v11;
            goto LABEL_83;
          }

          if (v12 >= v15)
          {
            goto LABEL_86;
          }

LABEL_83:
          *(result + 80) = v12;
          if (v4 > v9)
          {
            goto LABEL_86;
          }

          if (v4 == v9)
          {
            goto LABEL_85;
          }

          break;
        default:
          goto LABEL_86;
      }

      break;
    }
  }

LABEL_85:
  *(result + 144) = v13;
  return result;
}

uint64_t CMMAlphaCopier::CMMAlphaCopier(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F0E06AF0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 120) = a4;
  if (a4)
  {
    v7 = 0;
    v8 = a2;
  }

  else
  {
    v9 = *(a3 + 8);
    v7 = v9 + CMMAlphaByteOffset(a3);
    v8 = *(a1 + 8);
  }

  *(a1 + 24) = v7;
  v10 = *(v8 + 8);
  *(a1 + 32) = v10 + CMMAlphaByteOffset(v8);
  v11 = *(a1 + 120);
  if (v11)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v15 = v13[20];
    v14 = v13[21];
    *(a1 + 40) = 0;
    *(a1 + 48) = v14;
    *(a1 + 56) = 0;
    *(a1 + 64) = v15;
    v16 = v13[18];
    *(a1 + 72) = 0;
    *(a1 + 80) = v16;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    v19 = v17[10];
    v20 = v18[10];
    *(a1 + 56) = vzip1q_s64(v19, v20);
    *(a1 + 40) = vzip2q_s64(v19, v20);
    v21 = v18[9].i64[0];
    *(a1 + 72) = v17[9].i64[0];
    *(a1 + 80) = v21;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if ((*(a3 + 180) & 0x1F) != 0 && (v22 = *(a3 + 176) - 2, v22 <= 5))
    {
      v12 = qword_19A9B1570[v22];
    }

    else
    {
      v12 = 0;
    }
  }

  *(a1 + 104) = v12;
  if ((*(a2 + 180) & 0x1F) != 0 && (v23 = *(a2 + 176) - 2, v23 <= 5))
  {
    v24 = qword_19A9B1570[v23];
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 112) = v24;
  if ((v11 & 1) == 0 && (v12 - 1) >= 2 || (v24 - 1) >= 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -181;
  }

  return a1;
}

uint64_t CMMAlphaByteOffset(_DWORD *a1)
{
  v1 = a1[45] & 0x1F;
  v2 = v1 > 5;
  v3 = (1 << v1) & 0x2A;
  if (v2 || v3 == 0)
  {
    return 0;
  }

  v5 = a1[44] - 2;
  if (v5 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_19A9B1570[v5];
  }

  return CMMGetChannelCountFromCMMSpace(a1[46]) * v6;
}

_DWORD *CMMConvPQEOTF::CMMConvPQEOTF(_DWORD *a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5, float a6)
{
  v8 = CMMConvTRC::CMMConvTRC(a1, a2, a3, 0, a4, a5, 3, 1, 1.0, 1, 1);
  *v8 = &unk_1F0E06C80;
  v8[41] = a6;
  CMMConvTRC::SetInputClamp(v8);
  if (a1[23] != 17)
  {
    (*(*a1 + 48))(a1);
  }

  return a1;
}

uint64_t CMMMatrix::CMMMatrix(uint64_t result, __int128 *a2)
{
  v2 = 0;
  v3 = 0;
  *result = &unk_1F0E071F8;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  v4 = *a2;
  v5 = a2[1];
  v11 = *(a2 + 8);
  *(result + 104) = 1065353216;
  do
  {
    v6 = v2;
    v7 = 3;
    do
    {
      v8 = *(&v10 + v6);
      v9 = result + v6;
      *(v9 + 8) = (v8 * 65536.0 + 0.5);
      *(v9 + 44) = v8;
      v6 += 4;
      --v7;
    }

    while (v7);
    ++v3;
    v2 += 12;
  }

  while (v3 != 3);
  return result;
}

void CMMConvHLGOOTF::CMMConvHLGOOTF(CMMConvHLGOOTF *this, float a2, float a3, float a4, float a5, float a6, float *a7, CMMConvNode *a8)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a8;
  if (a8)
  {
    *(a8 + 2) = this;
  }

  *(this + 5) = 0x3F80000000000000;
  *(this + 33) = 16777217;
  *this = &unk_1F0E07790;
  *(this + 13) = a3;
  *(this + 14) = a2;
  if (a5 == 0.0)
  {
    v12 = a2 / 1000.0;
    if (a2 < 400.0 || a2 > 2000.0)
    {
      v17 = log2f(v12);
      v13 = powf(1.111, v17) * 1.2;
    }

    else
    {
      v13 = log10f(v12) * 0.42 + 1.20000005;
    }
  }

  else
  {
    v14 = log2f(a2 / 1000.0);
    v15 = powf(1.111, v14) * 1.2;
    v16 = log2f(a5 / 5.0);
    v13 = v15 * powf(0.98, v16);
  }

  *(this + 12) = v13 + -1.0;
  *(this + 15) = *a7;
  *(this + 16) = a7[1];
  *(this + 17) = a7[2];
  *(this + 18) = a7[3];
  if (a4 != 1.0)
  {
    *(this + 15) = *a7 / a4;
    *(this + 16) = a7[1] / a4;
    *(this + 17) = a7[2] / a4;
    *(this + 18) = a7[3] / a4;
  }
}

void CMMConvPQEETFBase::CMMConvPQEETFBase(CMMConvPQEETFBase *this, float a2, float a3, float a4, float a5, float a6, float *a7, char a8)
{
  *this = &unk_1F0E079A0;
  *(this + 2) = a2;
  *(this + 3) = a4;
  *(this + 10) = a6;
  *(this + 60) = a8;
  v10 = a2 / 10000.0;
  v11 = powf(fabsf(a2 / 10000.0), 0.1593);
  v12 = powf(((v11 * 18.852) + 0.83594) / ((v11 * 18.688) + 1.0), 78.844);
  if (v10 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  *(this + 4) = v13;
  v14 = powf(fabsf(a3 / 10000.0), 0.1593);
  v15 = powf(((v14 * 18.852) + 0.83594) / ((v14 * 18.688) + 1.0), 78.844);
  if ((a3 / 10000.0) >= 0.0)
  {
    *v16.i32 = v15;
  }

  else
  {
    *v16.i32 = -v15;
  }

  v17 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *(this + 5) = v16.i32[0];
  v18 = vdiv_f32(__PAIR64__(LODWORD(a5), LODWORD(a4)), vdup_n_s32(0x461C4000u));
  *&v17 = v13 - *v16.i32;
  v40 = v17;
  v19 = vcltz_f32(v18);
  v20 = vabs_f32(v18);
  v32 = v20.f32[0];
  v35 = v16;
  v37 = powf(v20.f32[1], 0.1593);
  v21.f32[0] = powf(v32, 0.1593);
  v21.f32[1] = v37;
  __asm { FMOV            V3.2S, #1.0 }

  v27 = vdiv_f32(vmla_f32(vdup_n_s32(0x3F560000u), vdup_n_s32(0x4196D000u), v21), vmla_f32(_D3, vdup_n_s32(0x41958000u), v21));
  v33 = v27.f32[0];
  v38 = powf(v27.f32[1], 78.844);
  v28.f32[0] = powf(v33, 78.844);
  v28.f32[1] = v38;
  v29 = vdiv_f32(vsub_f32(vbsl_s8(v19, vneg_f32(v28), v28), vdup_lane_s32(v35, 0)), vdup_lane_s32(v40, 0));
  *(this + 3) = v29;
  v29.f32[0] = v29.f32[0] * 1.5 + -0.5;
  *(this + 8) = v29.i32[0];
  v30 = 1.0 - v29.f32[0];
  if (v30 == 0.0)
  {
    v31 = 1.1755e-38;
  }

  else
  {
    v31 = 1.0 / v30;
  }

  *(this + 9) = v31;
  *(this + 11) = *a7;
  *(this + 12) = a7[1];
  *(this + 13) = a7[2];
  *(this + 14) = a7[3];
}

void CMMConvRWToneMapping::CMMConvRWToneMapping(CMMConvRWToneMapping *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, unsigned int a9, float a10, uint64_t a11, CMMConvNode *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float a17, float a18, float a19, float a20, float a21)
{
  v21 = a11;
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a12;
  if (a12)
  {
    *(a12 + 2) = this;
  }

  *(this + 5) = 0x3F80000000000000;
  *(this + 33) = 16777217;
  *this = &unk_1F0E07D80;
  CMMThrowExceptionWithLog((a11 & 0xFFFFFFFD) == 0, "Reference White Tone Mapping failure: unsupported version", a11, a12, a13, a14, a15, a16);
  *(this + 12) = v21;
  CMMThrowExceptionWithLog(a4 != 0.0, "Reference White value cannot be 0.0", v30, v31, v32, v33, v34, v35);
  v129 = a2 / a4;
  *(this + 13) = a2 / a4;
  *(this + 14) = a3;
  v36 = fmaxf(a3 / a4, 1.0);
  v37 = fmaxf(a5, 1.0);
  *(this + 16) = v36;
  *(this + 17) = v37;
  v38 = 0.0;
  if (a8 >= 0.0)
  {
    v39 = a8;
  }

  else
  {
    v39 = 0.0;
  }

  if (v39 <= 1.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 1.0;
  }

  if (a10 >= 0.0)
  {
    v41 = a10;
  }

  else
  {
    v41 = 0.0;
  }

  if (v41 > 1.0)
  {
    v41 = 1.0;
  }

  if ((1.0 - v40) >= v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1.0 - v40;
  }

  v43 = a9 / a4;
  v44 = fmaxf(v43, 0.0);
  if (v36 <= 2.0)
  {
    v45 = v36;
  }

  else
  {
    v45 = 2.0;
  }

  v130 = a4;
  if (v44 >= v45)
  {
    v38 = 2.0;
    if (v36 <= 2.0)
    {
      v38 = v36;
    }
  }

  else if (v43 > 0.0)
  {
    v38 = a9 / a4;
  }

  v46 = 1.0;
  v47 = 1.0;
  v134 = v36;
  if (a9)
  {
    v48 = v37;
    v49 = powf(v38, 0.2);
    v36 = v134;
    v37 = v48;
    v50 = fmaxf(0.5987 / v49, 0.5212);
    v51 = (v134 + -1.0) / 1.6667;
    v52 = v51 <= 0.0;
    v53 = v51 < 1.0 || v51 <= 0.0;
    if (v51 >= 1.0)
    {
      v52 = 1;
    }

    v54 = 0.0;
    if (!v53)
    {
      v54 = 1.0;
    }

    if (v52)
    {
      v51 = v54;
    }

    v55 = v50 + ((1.0 - v50) * (1.0 - v51));
    if (v55 <= (2.0 / v134))
    {
      v55 = 2.0 / v134;
    }

    if (v55 < 1.0)
    {
      v47 = v55;
    }
  }

  v56 = fminf(v37, 2.0);
  v57 = (v40 + v42) / 1.4142;
  if (fabsf(v57) > 0.0000001)
  {
    v46 = (v57 + ((v42 - v40) / 1.4142)) / (v57 + v57);
  }

  v127 = v46;
  v128 = v40;
  v58 = v57 * 1.4142;
  v59 = v36 * v47;
  if ((v36 * v47) >= v56)
  {
    v60 = v56;
  }

  else
  {
    v60 = v36 * v47;
  }

  v133 = v37;
  if (v60 >= v37)
  {
    v60 = v37;
  }

  v61 = v60 + -1.0;
  v126 = logf(v36);
  v62 = (fminf(logf(v59) / 2.0794, 1.0) * -0.65) + 1.0;
  v63 = fminf(v62 + (v61 * 0.39), 1.0);
  v64 = 1.0;
  if (v63 >= 1.0)
  {
    v64 = ((((1.0 - v62) / 0.39) + 1.0) + -1.0) / v61;
  }

  v65 = (v61 * v58) + 1.0;
  v66 = v47 * v63;
  if (v58 <= v64)
  {
    v69 = (fminf(v126 / 2.0794, 1.0) * -0.65) + 1.0;
    v66 = v69 + ((v58 / v64) * (v66 - v69));
    v70 = (fminf(logf(v134 * v66) / 2.0794, 1.0) * -0.65) + 1.0;
    v71 = v65 + -1.0;
    if ((v70 + ((v65 + -1.0) * 0.39)) >= 1.0)
    {
      v67 = v133;
      v68 = v134;
    }

    else
    {
      v72 = v66;
      v66 = fminf(v66 / ((v71 * 0.39) + 0.35), 1.0);
      v67 = v133;
      v68 = v134;
      if ((v134 * v66) < 8.0)
      {
        v73 = (expf((((v126 * -0.31258) + 1.0) + (v71 * 0.39)) / -0.31258) * v72) / -0.31258;
        v74 = -0.34559;
        if (v73 <= -0.34559)
        {
          v75 = &CMMConvRWToneMapping::rwtm_constrain_headrooms(float,unsigned int,float,float)::y_lut_lambert_low;
          v76 = 39.0;
          v77 = -0.36788;
        }

        else
        {
          v75 = &CMMConvRWToneMapping::rwtm_constrain_headrooms(float,unsigned int,float,float)::y_lut_lambert_high;
          v76 = 99.0;
          v74 = -0.0000078;
          v77 = -0.34559;
        }

        v68 = v134;
        if (v73 <= v77)
        {
          v78 = v74;
          if (v77 < v74)
          {
            v78 = v77;
          }
        }

        else
        {
          v78 = v74;
          if (v73 < v74)
          {
            v78 = v73;
          }
        }

        v79 = fmaxf(v76 * ((v78 - v77) / (v74 - v77)), 0.0);
        v80 = v76 + -0.0000001;
        if (v79 < v80)
        {
          v80 = v79;
        }

        v81 = floorf(v80);
        v82 = vcvtms_u32_f32(v80);
        v66 = v72 / (((v75[v82 + 1] * (v80 - v81)) + ((1.0 - (v80 - v81)) * v75[v82])) * -0.31258);
        v67 = v133;
      }
    }
  }

  else
  {
    v67 = v133;
    v68 = v134;
  }

  if (do_debug_log(void)::predicate[0] != -1)
  {
    dispatch_once(do_debug_log(void)::predicate, &__block_literal_global_943);
    v67 = v133;
    v68 = v134;
  }

  if (v68 >= v67)
  {
    v83 = v67;
  }

  else
  {
    v83 = v68;
  }

  v84 = log2f(v83);
  v85 = exp2f(v58 * v84);
  v86 = v85 + ((v65 - v85) * v127);
  v87 = ((fminf(v66, 1.0) + -1.0) * v127) + 1.0;
  v124 = *(this + 17);
  v125 = *(this + 16);
  v123 = v128;
  ColorSyncLog(do_debug_log(void)::mode, "Solarium: CDR RWTMO Debug: edr_strength=%f, cdr_strength=%f, content_average_light_level=%f, target_headroom=%f, source_headroom=%f, constrained_scale=%f, constrained_target_headroom=%f, final_hr=%f, final_scaling=%f", v88, v89, v90, v91, v92, v93, SLOBYTE(v123));
  v94 = v87 * *(this + 16);
  if (v86 >= *(this + 17))
  {
    v95 = *(this + 17);
  }

  else
  {
    v95 = v86;
  }

  *(this + 13) = v87 * *(this + 13);
  if (v95 >= v94)
  {
    v95 = v94;
  }

  v135 = fmaxf(v95, 1.0);
  *(this + 16) = v94;
  *(this + 17) = v135;
  v96 = logf(v94);
  v97 = fminf((1.0 - ((1.0 - a17) * fminf(v96 / logf(a21), 1.0))) + (((1.0 - a17) / (a18 + -1.0)) * (v135 + -1.0)), 1.0);
  v98 = (v97 - a17) / (1.0 - a17);
  v99 = v98 >= 1.0;
  v100 = v98 > 0.0 || v98 >= 1.0;
  if (v98 <= 0.0)
  {
    v99 = 1;
  }

  v101 = 0.0;
  if (v100)
  {
    v101 = 1.0;
  }

  if (v99)
  {
    v98 = v101;
  }

  if (v98 <= 0.0)
  {
    v102 = a20;
    v103 = v130;
  }

  else
  {
    v102 = 1.0;
    v103 = v130;
    if (v98 < 1.0)
    {
      v102 = a20 + ((1.0 - a20) * v98);
    }
  }

  *(this + 20) = v102;
  v104 = v135 * powf(v97 / v135, 1.0 / v102);
  *(this + 15) = v104;
  v105 = v135 - (a19 * (v135 - v104));
  *(this + 22) = v104;
  *(this + 23) = v105;
  *(this + 21) = 1065353216;
  v106 = v105 / v104;
  v107 = (v94 + 1.0) + (v106 * -2.0);
  v108 = fabsf(v107);
  if (v108 >= (v135 * 0.00033333))
  {
    v109.f32[0] = (v94 + 1.0) + (v106 * -2.0);
  }

  else
  {
    v109.f32[0] = ((v94 + ((v135 * 0.00033333) - v107)) + 1.0) + (v106 * -2.0);
  }

  if (v108 >= (v135 * 0.00033333))
  {
    v110 = v94;
  }

  else
  {
    v110 = v94 + ((v135 * 0.00033333) - v107);
  }

  *(this + 24) = v135;
  *(this + 25) = v109.i32[0];
  *(this + 26) = -(v110 - (v106 * v106));
  *(this + 27) = 1.0 - v106;
  v109.f32[1] = v135;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 14) = vdiv_f32(_D1, v109);
  *(this + 30) = 981668463;
  *(this + 9) = LODWORD(v135);
  v116 = a3;
  if (a3 <= v103)
  {
    v116 = v103;
  }

  *(this + 31) = v129;
  *(this + 32) = v116;
  v117 = *(this + 14) / v103;
  if (v117 <= a5)
  {
    v117 = a5;
  }

  *(this + 33) = v117;
  *(this + 34) = v103;
  if (v94 <= a5)
  {
    v118 = v94;
  }

  else
  {
    v118 = a5;
  }

  v119 = fminf((1.0 - ((1.0 - a6) * fminf((v94 + -1.0) / 3.9261, 1.0))) + (((1.0 - a6) / (a7 + -1.0)) * (v118 + -1.0)), 1.0);
  *(this + 35) = v118;
  *(this + 36) = v119;
  v120 = v118 / v119;
  v121 = (v117 + 1.0) + (v120 * -2.0);
  v122 = ((v117 + ((a5 * 0.00033333) - v121)) + 1.0) + (v120 * -2.0);
  if (fabsf(v121) < (a5 * 0.00033333))
  {
    v117 = v117 + ((a5 * 0.00033333) - v121);
  }

  else
  {
    v122 = (v117 + 1.0) + (v120 * -2.0);
  }

  *(this + 37) = v122;
  *(this + 38) = -(v117 - (v120 * v120));
  *(this + 39) = 1.0 - v120;
  *(this + 40) = 1.0 / v122;
  *(this + 41) = 0;
}

uint64_t ___ZL12do_debug_logv_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncConstrainedHeadroomLogging", &v1);
  if (result)
  {
    do_debug_log(void)::mode = v1;
  }

  return result;
}

void Compute_FlexGTC(float a1, float *a2, const __CFArray *a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  Count = CFArrayGetCount(a3);
  v10 = malloc_type_calloc(1uLL, 12 * Count + 12, 0x10000403E1C8BA9uLL);
  if (a2 && v10)
  {
    v66 = v10;
    if (Count)
    {
      v11 = 0;
      v12 = v10;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v11);
        Value = CFDictionaryGetValue(ValueAtIndex, kColorSyncFlexGTCNodeX);
        v15 = CFDictionaryGetValue(ValueAtIndex, kColorSyncFlexGTCNodeY);
        v16 = CFDictionaryGetValue(ValueAtIndex, kColorSyncFlexGTCNodeSlope);
        CFNumberGetValue(Value, kCFNumberFloatType, v12);
        CFNumberGetValue(v15, kCFNumberFloatType, v12 + 1);
        CFNumberGetValue(v16, kCFNumberFloatType, v12 + 2);
        ++v11;
        v12 += 3;
      }

      while (Count != v11);
    }

    v17 = log2f(a1);
    if (a1 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    *valuePtr = 0;
    v70 = 1.0;
    v71 = 1.0;
    v19 = CFDictionaryGetValue(a4, kColorSyncGainMapAlternateHeadroom);
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberFloatType, &valuePtr[1]);
    }

    v20 = CFDictionaryGetValue(a4, kColorSyncGainMapBaselineHeadroom);
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberFloatType, valuePtr);
    }

    v21 = CFDictionaryGetValue(a4, kColorSyncGainMapMax);
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberFloatType, &v71);
    }

    v22 = CFDictionaryGetValue(a4, kColorSyncGainMapMin);
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberFloatType, &v70);
    }

    if (v18 <= valuePtr[0])
    {
      v23 = v18;
    }

    else
    {
      v23 = valuePtr[0];
    }

    if (v18 >= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    theDict = 1.0;
    if (v24 != 0.0 && (valuePtr[1] - valuePtr[0]) != 0.0)
    {
      v25 = (v24 - valuePtr[0]) / (valuePtr[1] - valuePtr[0]);
      v26 = 1.0;
      if (v25 <= 1.0)
      {
        v26 = (v24 - valuePtr[0]) / (valuePtr[1] - valuePtr[0]);
      }

      v27 = v25 < 0.0;
      v28 = 0.0;
      if (!v27)
      {
        v28 = v26;
      }

      theDict = v28;
    }

    v29 = *v66;
    v30 = v66[1];
    v31 = v66[3];
    v32 = v66[2];
    v33 = v66[5];
    v34 = v31 - v29;
    v35 = (v32 + v33 - (v66[4] - v30 + v66[4] - v30) / v34) / ((v29 - v31) * (v29 - v31));
    v36 = (v33 - v32) / (v34 + v34) + (v31 + v29) * -1.5 * v35;
    v37 = v32 + v29 * -3.0 * v29 * v35 + v29 * -2.0 * v36;
    v38 = v30 + -(v29 * v29) * v29 * v35 + -(v29 * v29) * v36;
    v45 = exp2f(theDict * v71);
    if (do_debug_log(void)::predicate[0] != -1)
    {
      dispatch_once(do_debug_log(void)::predicate, &__block_literal_global_943);
    }

    v46 = &v66[3 * Count - 3];
    v47 = v38 - v29 * v37;
    v65 = v24;
    ColorSyncLog(do_debug_log(void)::mode, "Solarium: FlexGTC parameters: target_headroom_log2=%f, alternate_headroom_log2=%f,base_headroom_log2=%f, gain_map_max=%f, gain_map_min=%f, weight=%f, max_gain=%f", v39, v40, v41, v42, v43, v44, SLOBYTE(v65));
    v48 = 0;
    v67 = v71 - v70;
    v68 = v70;
    v49 = -1.0;
    v50 = v66;
    do
    {
      v51 = v48 / 1023.0;
      v52 = v51 > v31;
      if (v51 > v31 && (v50 + 3) < v46)
      {
        v54 = v50 + 6;
        do
        {
          v50 = v54 - 3;
          v31 = *v54;
          v52 = v51 > *v54;
          v55 = v51 <= *v54 || v54 >= v46;
          v54 += 3;
        }

        while (!v55);
        v56 = *(v54 - 6);
        v57 = *(v54 - 5);
        v58 = *(v54 - 4);
        v59 = *(v54 - 1);
        v60 = v31 - v56;
        v35 = (v58 + v59 - (*(v54 - 2) - v57 + *(v54 - 2) - v57) / v60) / ((v56 - v31) * (v56 - v31));
        v36 = (v59 - v58) / (v60 + v60) + (v31 + v56) * -1.5 * v35;
        v37 = v58 + v56 * -3.0 * v56 * v35 + v56 * -2.0 * v36;
        v47 = v57 + -(v56 * v56) * v56 * v35 + -(v56 * v56) * v36 - v56 * v37;
      }

      if (v52)
      {
        v61 = v31;
      }

      else
      {
        v61 = v48 / 1023.0;
      }

      v62 = v47 + v36 * v61 * v61 + v35 * v61 * v61 * v61 + v37 * v61;
      v63 = exp2f(theDict * (v68 + (v62 * v67)));
      v64 = (v61 * v63) / v45;
      if (v64 < v49)
      {
        v63 = v45 * (v49 / v61);
        v64 = v49;
      }

      a2[v48++] = v63;
      v49 = v64 + 0.00035;
    }

    while (v48 != 1024);
    free(v66);
  }
}

void CMMConvCLUTBase::~CMMConvCLUTBase(CMMConvCLUTBase *this)
{
  *this = &unk_1F0E07F90;
  v2 = *(this + 10);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  v5 = *(this + 6);
  if (v5)
  {
    CFRelease(v5);
  }
}

float DecodeL(float a1)
{
  if (a1 >= 0.0)
  {
    v3 = a1;
    if (a1 <= 8.0)
    {
      return v3 * 0.00885645168 * 0.125;
    }

    else
    {
      return pow((v3 + 16.0) / 116.0, 3.0);
    }
  }

  else
  {
    DecodeL(-a1);
    return -v1;
  }
}

__CFDictionary *CMMConvBlackPointCompensation::FlattenConversion(CMMConvBlackPointCompensation *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v4)
    {
      v5 = v4;
      v6 = CFNumberCreate(0, kCFNumberFloat32Type, this + 48);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(v5, v6);
        CFRelease(v7);
      }

      v8 = CFNumberCreate(0, kCFNumberFloat32Type, this + 52);
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(v5, v8);
        CFRelease(v9);
      }

      if (CFArrayGetCount(v5) == 2)
      {
        CFDictionaryAddValue(Mutable, kColorSyncConversionBPC, v5);
        CFRelease(v5);
        v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = MEMORY[0x1E695E9C0];
          while (1)
          {
            v14 = CFArrayCreateMutable(0, 0, v13);
            if (!v14)
            {
              goto LABEL_26;
            }

            v15 = v14;
            v16 = 3;
            while (1)
            {
              valuePtr = 0.0;
              if (v12 + v16 != 3)
              {
                goto LABEL_19;
              }

              v17 = *(this + 14);
              if (v12 == 2)
              {
                v18 = v17 / 0.8249;
                goto LABEL_17;
              }

              if (v12 != 1)
              {
                v18 = v17 / 0.9642;
LABEL_17:
                v17 = v18;
              }

              valuePtr = v17;
LABEL_19:
              v19 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              if (!v19)
              {
                break;
              }

              v20 = v19;
              CFArrayAppendValue(v15, v19);
              CFRelease(v20);
              if (!--v16)
              {
                goto LABEL_23;
              }
            }

            CFRelease(v15);
            v15 = 0;
LABEL_23:
            v21 = CFNumberCreate(0, kCFNumberFloat32Type, this + 60);
            if (!v21)
            {
              CFRelease(v15);
LABEL_30:
              CFRelease(v11);
              v11 = 0;
              goto LABEL_31;
            }

            v22 = v21;
            CFArrayAppendValue(v15, v21);
            CFRelease(v22);
            if (!v15)
            {
              goto LABEL_30;
            }

            CFArrayAppendValue(v11, v15);
            CFRelease(v15);
LABEL_26:
            if (++v12 == 3)
            {
LABEL_31:
              CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v11);
              CFRelease(v11);
              CMMConvNode::AddFixedPointClippingRange(Mutable, v23, *(this + 10), *(this + 11));
              CMMConvNode::AddClampingInfo(this, Mutable);
              return Mutable;
            }
          }
        }
      }

      else
      {
        CFRelease(Mutable);
        CFRelease(v5);
        return 0;
      }
    }
  }

  return Mutable;
}

uint64_t CMMConvBlackPointCompensation::GetCLUTPoints(CMMConvBlackPointCompensation *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

float CMMConvBlackPointCompensation::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    result = -2.7254e10;
    do
    {
      v7 = (a2 + 4 * v5);
      v8 = *(a1 + 56);
      v9 = *(a1 + 60);
      v10 = v8;
      v11 = v9 + *v7 * 1.03712923 * v8;
      v12 = 3.40282347e38;
      if (v11 <= 3.40282347e38)
      {
        v12 = v9 + *v7 * 1.03712923 * v8;
        if (v11 < 0.0)
        {
          v12 = 0.0;
        }
      }

      v13 = v9 + (v7[1] * v8);
      v14 = v9 + v7[2] * 1.21226815 * v10;
      if (v13 < 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v13;
      }

      if (v13 <= 3.4028e38)
      {
        v16 = v15;
      }

      else
      {
        v16 = 3.4028e38;
      }

      v17 = 3.40282347e38;
      if (v14 <= 3.40282347e38)
      {
        v17 = v14;
        if (v14 < 0.0)
        {
          v17 = 0.0;
        }
      }

      v18 = v12;
      *v7 = v18;
      v7[1] = v16;
      v19 = v17;
      v7[2] = v19;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvBlackPointCompensation::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 56);
    v7 = *(result + 60) * 16777216.0 / 1.99996948;
    do
    {
      v8 = (a2 + 4 * v5);
      v9 = v7 + *v8 * 1.03712923 * v6;
      v10 = 16777216.0;
      if (v9 <= 16777216.0)
      {
        v10 = v7 + *v8 * 1.03712923 * v6;
        if (v9 < 0.0)
        {
          v10 = 0.0;
        }
      }

      v11 = v8[1];
      v12 = v7 + v11 * v6;
      v13 = v7 + v8[2] * 1.21226815 * v6;
      if (v12 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v7 + v11 * v6;
      }

      if (v12 <= 16777216.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 16777216.0;
      }

      v16 = 16777216.0;
      if (v13 <= 16777216.0)
      {
        v16 = v7 + v8[2] * 1.21226815 * v6;
        if (v13 < 0.0)
        {
          v16 = 0.0;
        }
      }

      *(a2 + 4 * v5) = (v10 * 0.9642);
      v8[1] = v15;
      v8[2] = (v16 * 0.8249);
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

void CMMConvBlackPointCompensation::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

void non-virtual thunk toCMMConv3DPQEETF::~CMMConv3DPQEETF(CMMConv3DPQEETF *this)
{
  CMMConvCLUTBase::~CMMConvCLUTBase((this - 128));

  CMMBase::operator delete(v1);
}

{
  CMMConvCLUTBase::~CMMConvCLUTBase((this - 128));
}

uint64_t CMMConv3DPQEETF::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a4 == 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294967125;
  }

  result = CMMThrowExceptionOnError(v9);
  if (a5)
  {
    v11 = 0;
    v12 = *(a1 + 64);
    v13 = 4 * a4;
    v14 = a2;
    do
    {
      if (v12)
      {
        v15 = 1;
        v16 = v14;
        do
        {
          v17 = roundf(*v16 * 16777000.0);
          if (v17 > 16777000.0)
          {
            v17 = 16777000.0;
          }

          if (v17 < 0.0)
          {
            v17 = 0.0;
          }

          *v16++ = v17;
          v18 = v12 > v15++;
        }

        while (v18);
      }

      ++v11;
      v14 = (v14 + v13);
    }

    while (v11 != a5);
    result = CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>::Interpolate<CMMMaxBits>(a1, a2, a4, a5);
    v19 = 0;
    v20 = *(a1 + 72);
    do
    {
      if (v20)
      {
        v21 = 1;
        v22 = a2;
        do
        {
          *v22 = *v22 * 0.000000059605;
          ++v22;
          v18 = v20 > v21++;
        }

        while (v18);
      }

      ++v19;
      a2 += v13;
    }

    while (v19 != a5);
  }

  return result;
}

{
  if (a4 == 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294967125;
  }

  CMMThrowExceptionOnError(v9);

  return CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>::Interpolate<CMMMaxBits>(a1, a2, a4, a5);
}

uint64_t CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>::Interpolate<CMMMaxBits>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(result + 88);
    v5 = *(result + 56);
    v6 = v5 - 1;
    v7 = *(result + 72);
    v8 = (a2 + 8);
    v9 = 4 * a3;
    while (1)
    {
      v10 = *(v8 - 2);
      if (v10 >= 0x1000001 || (v11 = *(v8 - 1), v11 >= 0x1000001) || *v8 >= 0x1000001)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      v12 = v10 * v6 + 256;
      v13 = HIBYTE(v12);
      v14 = (v12 >> 9) & 0x7FFF;
      v15 = v11 * v6 + 256;
      v16 = (v15 >> 9) & 0x7FFF;
      v17 = *v8 * v6 + 256;
      v18 = (v17 >> 9) & 0x7FFF;
      v19 = (v4 + 2 * ((v13 * v5 + HIBYTE(v15)) * v5 + HIBYTE(v17)) * v7);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      if (!v18)
      {
        break;
      }

      v23 = &v19[*(result + 96)];
      v20 += ((*v23 - v20) * v18 + 0x4000) >> 15;
      v21 += ((v23[1] - v21) * v18 + 0x4000) >> 15;
      v22 += ((v23[2] - v22) * v18 + 0x4000) >> 15;
      if (v16)
      {
        v24 = &v19[*(result + 100)];
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = &v19[*(result + 108)];
        v29 = v28[1];
        v30 = v28[2];
        v31 = v25 + (((*v28 - v25) * v18 + 0x4000) >> 15);
        v32 = v26 + (((v29 - v26) * v18 + 0x4000) >> 15);
        v33 = v27 + (((v30 - v27) * v18 + 0x4000) >> 15);
LABEL_11:
        v20 += ((v31 - v20) * v16 + 0x4000) >> 15;
        v21 += ((v32 - v21) * v16 + 0x4000) >> 15;
        v22 += ((v33 - v22) * v16 + 0x4000) >> 15;
        if (v14)
        {
          v35 = &v19[*(result + 104)];
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          if (v18)
          {
            v39 = 0;
            goto LABEL_16;
          }

          v50 = &v19[*(result + 116)];
          v47 = *v50;
          v48 = v50[1];
          v49 = v50[2];
LABEL_19:
          v36 += ((v47 - v36) * v16 + 0x4000) >> 15;
          v37 += ((v48 - v37) * v16 + 0x4000) >> 15;
          v38 += ((v49 - v38) * v16 + 0x4000) >> 15;
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      if (v14)
      {
        v40 = &v19[*(result + 104)];
        v36 = *v40;
        v37 = v40[1];
        v38 = v40[2];
        v39 = 1;
LABEL_16:
        v41 = &v19[*(result + 112)];
        v36 += ((*v41 - v36) * v18 + 0x4000) >> 15;
        v37 += ((v41[1] - v37) * v18 + 0x4000) >> 15;
        v38 += ((v41[2] - v38) * v18 + 0x4000) >> 15;
        if ((v39 & 1) == 0)
        {
          v42 = &v19[*(result + 116)];
          v43 = v42[2];
          v44 = &v19[*(result + 120)];
          v45 = v44[1];
          v46 = v44[2];
          v47 = *v42 + (((*v44 - *v42) * v18 + 0x4000) >> 15);
          v48 = v42[1] + (((v45 - v42[1]) * v18 + 0x4000) >> 15);
          v49 = v43 + (((v46 - v43) * v18 + 0x4000) >> 15);
          goto LABEL_19;
        }

LABEL_22:
        v20 += ((v36 - v20) * v14 + 0x4000) >> 15;
        v21 += ((v37 - v21) * v14 + 0x4000) >> 15;
        v22 += ((v38 - v22) * v14 + 0x4000) >> 15;
      }

LABEL_23:
      *(v8 - 2) = ((v20 >> 7) + (v20 << 9) + 1) >> 1;
      *(v8 - 1) = ((v21 >> 7) + (v21 << 9) + 1) >> 1;
      *v8 = ((v22 >> 7) + (v22 << 9) + 1) >> 1;
      v8 = (v8 + v9);
      if (!--a4)
      {
        return result;
      }
    }

    if (!v16)
    {
      if (v14)
      {
        v51 = &v19[*(result + 104)];
        v36 = *v51;
        v37 = v51[1];
        v38 = v51[2];
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v34 = &v19[*(result + 100)];
    v31 = *v34;
    v32 = v34[1];
    v33 = v34[2];
    goto LABEL_11;
  }

  return result;
}

void CMMConv3DPQEETF::~CMMConv3DPQEETF(CMMConv3DPQEETF *this)
{
  CMMConvCLUTBase::~CMMConvCLUTBase(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMCLUTConv<CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = a2;
    v7 = result;
    LODWORD(v8) = 0;
    v9 = *(result + 64);
    v10 = 4 * a4;
    v11 = a2;
    do
    {
      if (v9)
      {
        v12 = 1;
        v13 = v11;
        do
        {
          v14 = roundf(*v13 * 16777000.0);
          if (v14 > 16777000.0)
          {
            v14 = 16777000.0;
          }

          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          *v13++ = v14;
          v15 = v9 > v12++;
        }

        while (v15);
      }

      v8 = (v8 + 1);
      v11 = (v11 + v10);
    }

    while (v8 < a5);
    result = CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>::Interpolate<CMMMaxBits>(result, a2, a4, a5);
    v16 = 0;
    v17 = *(v7 + 72);
    do
    {
      if (v17)
      {
        v18 = 1;
        v19 = v6;
        do
        {
          *v19 = *v19 * 0.000000059605;
          ++v19;
          v15 = v17 > v18++;
        }

        while (v15);
      }

      ++v16;
      v6 = (v6 + v10);
    }

    while (v16 < v5);
  }

  return result;
}

void CMMCLUTConv<CMMTrilinear<CMMCLUT3Output<CMMCLUT3D>>>::~CMMCLUTConv(CMMConvCLUTBase *a1)
{
  CMMConvCLUTBase::~CMMConvCLUTBase(a1);

  CMMBase::operator delete(v1);
}

CFDictionaryRef create_pq_dict(const __CFString *a1)
{
  keys[6] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncProfile;
  keys[1] = kColorSyncRenderingIntent;
  keys[2] = kColorSyncTransformTag;
  keys[3] = kColorSyncBlackPointCompensation;
  keys[4] = kColorSyncExtendedRange;
  keys[5] = kColorSyncHDRDerivative;
  values[0] = ColorSyncProfileCreateWithName(kColorSyncITUR2100_PQProfile[0]);
  values[1] = kColorSyncRenderingIntentPerceptual;
  v2 = *MEMORY[0x1E695E4C0];
  values[2] = a1;
  values[3] = v2;
  v3 = *MEMORY[0x1E695E738];
  values[4] = *MEMORY[0x1E695E4D0];
  values[5] = v3;
  result = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef create_hlg_dict(const __CFString *a1)
{
  keys[6] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncProfile;
  keys[1] = kColorSyncRenderingIntent;
  keys[2] = kColorSyncTransformTag;
  keys[3] = kColorSyncBlackPointCompensation;
  keys[4] = kColorSyncExtendedRange;
  keys[5] = kColorSyncHDRDerivative;
  values[0] = ColorSyncProfileCreateWithName(kColorSyncITUR2100_HLGProfile[0]);
  values[1] = kColorSyncRenderingIntentPerceptual;
  v2 = *MEMORY[0x1E695E4C0];
  values[2] = a1;
  values[3] = v2;
  v3 = *MEMORY[0x1E695E738];
  values[4] = v2;
  values[5] = v3;
  result = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

ConversionManager *ConversionManager::MakeNDimLutConversion(uint64_t a1, ConversionManager *a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  if (CMMGetChannelCountFromCMMSpace(a4) > 4)
  {
    return a2;
  }

  if (a7 == 1)
  {
    if (a2)
    {
      v14 = 0;
      v15 = a2;
      do
      {
        v16 = (*(*v15 + 168))(v15, 1);
        if (v16 > v14)
        {
          v14 = v16;
        }

        if (v14 == 0xFFFFFFFF)
        {
          return a2;
        }

        v15 = *(v15 + 2);
      }

      while (v15);
    }

LABEL_16:
    LutTypeTagFromSequence = ConversionManager::MakeLutTypeTagFromSequence(a1, a2, a3, a4, a5, a6, 0x11uLL);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v21 = CMMGetChannelCountFromCMMSpace(a4);
    v22 = CMMGetChannelCountFromCMMSpace(a5);
    ConversionManager::AddCLUTConv(a1, LutTypeTagFromSequence, v21, v22);
    (*(*LutTypeTagFromSequence + 1))(LutTypeTagFromSequence);
    return *(a1 + 16);
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v17 = 0;
  v18 = a2;
  while (1)
  {
    v19 = (*(*v18 + 168))(v18, 0);
    if (v19 > v17)
    {
      v17 = v19;
    }

    if (v17 == 0xFFFFFFFF)
    {
      return a2;
    }

    v18 = *(v18 + 2);
    if (!v18)
    {
      goto LABEL_16;
    }
  }
}

char **ConversionManager::MakeLutTypeTagFromSequence(uint64_t a1, ConversionManager *a2, uint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v215 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    v12 = CMMGetChannelCountFromCMMSpace(a4);
    MaxCLUTNofPoints = ConversionManager::GetMaxCLUTNofPoints(a2, 0, v13);
    v15 = 17;
    if (v12 == 4)
    {
      v15 = 8;
    }

    if (MaxCLUTNofPoints)
    {
      v15 = MaxCLUTNofPoints;
    }

    v16 = 9;
    if (v15 < 9)
    {
      v16 = v15;
    }

    if (v12 <= 4)
    {
      v7 = v15;
    }

    else
    {
      v7 = v16;
    }
  }

  v152 = a4;
  v17 = CMMGetChannelCountFromCMMSpace(a4);
  v148 = a5;
  v18 = CMMGetChannelCountFromCMMSpace(a5);
  v21 = CMMBase::NewInternal(0x90, *(a1 + 8), v19, v20);
  *(v21 + 2) = 1093812784;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 24) = 0;
  *v21 = &unk_1F0E09278;
  *(v21 + 50) = v17;
  *(v21 + 51) = v18;
  *(v21 + 52) = v7;
  *(v21 + 53) = 0;
  *(v21 + 54) = 0x10000;
  *(v21 + 58) = 0;
  *(v21 + 66) = 0x1000000000000;
  *(v21 + 74) = 0;
  *(v21 + 82) = 0;
  *(v21 + 86) = 0x2000200010000;
  *(v21 + 110) = 0u;
  *(v21 + 94) = 0u;
  *(v21 + 126) = -1;
  *(v21 + 33) = 0;
  *(v21 + 34) = 0;
  lpsrc = v21;
  v157 = v17;
  if (!v17 || !v18)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -170;
  }

  v28 = 1;
  v29 = v17;
  do
  {
    v30 = v28 * v7;
    v32 = v30 >= v28 && v30 >= v7;
    CMMThrowExceptionWithLog(v32, "Overflow in Power", v22, v23, v24, v25, v26, v27);
    v28 = v30;
    --v29;
  }

  while (v29);
  v154 = v18;
  v153 = a2;
  lpsrc[4] = (2 * ((v30 + *(lpsrc + 46)) * *(lpsrc + 51) + *(lpsrc + 45) * *(lpsrc + 50)) + 52);
  v33 = **lpsrc;
  v41 = (*(*v34 + 72))(v34);
  v42 = 1;
  do
  {
    v43 = v42;
    v42 *= v7;
    v45 = v42 >= v43 && v42 >= v7;
    CMMThrowExceptionWithLog(v45, "Overflow in Power", v35, v36, v37, v38, v39, v40);
    --v17;
  }

  while (v17);
  v46 = calculate_clut_capacity(v7, v157, v157, 2, v37, v38, v39, v40);
  memset(v214, 0, sizeof(v214));
  v213 = 0u;
  v212 = 0u;
  memset(&v177[8], 0, 32);
  v150 = ~v41;
  if (v46 <= ~v41)
  {
    v47 = 0;
  }

  else
  {
    v47 = 4294967246;
  }

  memset(v177, 0, 32);
  CMMThrowExceptionOnError(v47);
  if (v7)
  {
    v54 = 0;
    *&v55 = (v7 - 1);
    v56 = vdupq_n_s64(v7 - 1);
    v57 = vdupq_lane_s64(v55, 0);
    v58 = xmmword_19A96E050;
    v59 = &v212 + 1;
    v60 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v61 = vdupq_n_s64(8uLL);
    __asm { FMOV            V17.2D, #0.5 }

    v66.i64[0] = 0xFFFF0000FFFFLL;
    v66.i64[1] = 0xFFFF0000FFFFLL;
    v67 = xmmword_19A96E040;
    v68 = xmmword_19A96E030;
    v69 = xmmword_19A96E020;
    do
    {
      v70 = vdupq_n_s64(v54);
      v71 = vorrq_s8(v70, xmmword_19A96E030);
      v72 = vorrq_s8(v70, xmmword_19A96E040);
      v73 = vorrq_s8(v70, xmmword_19A96E020);
      v74 = vmovn_s64(vcgeq_u64(v56, v58));
      v75 = vuzp1_s16(v74, v55);
      v76 = v54;
      v77 = v54 + 1;
      v78.f64[0] = v76 / *&v55;
      v78.f64[1] = v77 / *&v55;
      v79 = vmlaq_f64(_Q17, v60, v78);
      v80 = vmlaq_f64(_Q17, v60, vdivq_f64(vcvtq_f64_u64(v72), v57));
      v81 = vmlaq_f64(_Q17, v60, vdivq_f64(vcvtq_f64_u64(v71), v57));
      v82 = vmlaq_f64(_Q17, v60, vdivq_f64(vcvtq_f64_u64(v73), v57));
      v83 = v82.f64[1];
      if (v82.f64[1] >= 0xFFFF)
      {
        v83 = 0xFFFF;
      }

      if (v82.f64[0] >= 0xFFFF)
      {
        v84 = 0xFFFF;
      }

      else
      {
        v84 = v82.f64[0];
      }

      v85 = v81.f64[1];
      if (v81.f64[1] >= 0xFFFF)
      {
        v85 = 0xFFFF;
      }

      v86 = v81.f64[0];
      if (v81.f64[0] >= 0xFFFF)
      {
        v86 = 0xFFFF;
      }

      v87 = v79.f64[1];
      v88 = v79.f64[0];
      if (v79.f64[1] >= 0xFFFF)
      {
        v87 = 0xFFFF;
      }

      if (v88 >= 0xFFFF)
      {
        v88 = 0xFFFF;
      }

      v89.i64[0] = __PAIR64__(v87, v88);
      v90 = v80.f64[1];
      v91 = v80.f64[0];
      if (v80.f64[1] >= 0xFFFF)
      {
        v90 = 0xFFFF;
      }

      if (v91 >= 0xFFFF)
      {
        v91 = 0xFFFF;
      }

      v92 = vuzp1_s8(v75, v55).u8[0];
      v89.i64[1] = __PAIR64__(v90, v91);
      v93 = vandq_s8(v89, v66);
      if (v92)
      {
        *(v59 - 1) = v93.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v74, v55), v55).i8[1])
      {
        *v59 = v93.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(v55, vmovn_s64(vcgeq_u64(v56, *&v67))), v55).i8[2])
      {
        *(&v212 + v72.i64[0]) = v93.i16[4];
        *(&v212 + v72.i64[1]) = v93.i16[6];
      }

      v94.i64[0] = __PAIR64__(v85, v86);
      v94.i64[1] = __PAIR64__(v83, v84);
      v95 = vandq_s8(v94, v66);
      v96 = vmovn_s64(vcgeq_u64(v56, v68));
      if (vuzp1_s8(v55, vuzp1_s16(v96, v55)).i32[1])
      {
        *(&v212 + v71.i64[0]) = v95.i16[0];
      }

      if (vuzp1_s8(v55, vuzp1_s16(v96, v55)).i8[5])
      {
        *(&v212 + v71.i64[1]) = v95.i16[2];
      }

      if (vuzp1_s8(v55, vuzp1_s16(v55, vmovn_s64(vcgeq_u64(v56, *&v69)))).i8[6])
      {
        *(&v212 + v73.i64[0]) = v95.i16[4];
        *(&v212 + v73.i64[1]) = v95.i16[6];
      }

      v68 = vaddq_s64(v68, v61);
      v67 = vaddq_s64(v67, v61);
      v58 = vaddq_s64(v58, v61);
      v69 = vaddq_s64(v69, v61);
      v59 += 8;
      v54 = v77 + 7;
    }

    while (v54 != ((v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  }

  v97 = 0;
  v151 = v41;
  v98 = (v41 + v46);
  do
  {
    if (v97)
    {
      v99 = 1;
      v100 = v97;
      do
      {
        v101 = v99 * v7;
        v103 = v99 * v7 >= v99 && v101 >= v7;
        CMMThrowExceptionWithLog(v103, "Overflow in Power", v48, v49, v50, v51, v52, v53);
        v99 = v101;
        --v100;
      }

      while (v100);
    }

    else
    {
      v101 = 1;
    }

    v177[v97++] = v101;
  }

  while (v97 != v157);
  v104 = CMMBase::NewInternal(0x28, *(a1 + 8), v48, v49);
  v155 = a1;
  v105 = *(a1 + 8);
  *v104 = &unk_1F0E09180;
  v104[1] = 1;
  v104[3] = 0;
  v104[4] = v98;
  v108 = CMMBase::NewInternal(v98, v105, v106, v107);
  v104[2] = v108;
  v109 = CMMTable::UInt8Data(v108, v104[3]);
  if (v42)
  {
    v114 = v109;
    v115 = 0;
    v116 = 0;
    v117 = v46 >> 1;
    do
    {
      memset(v189, 0, 64);
      DecodeN(v115, v157, v189, v177, v7);
      v118 = v157;
      v119 = v118 + v118 * v116 - 1;
      v120 = v189;
      do
      {
        if (v119 >= v117)
        {
          v121 = 4294967246;
        }

        else
        {
          v121 = 0;
        }

        CMMThrowExceptionOnError(v121);
        v122 = *v120++;
        *(v114 + 2 * v119--) = *(&v212 + v122);
        --v118;
      }

      while (v118);
      v115 = ++v116;
    }

    while (v42 > v116);
  }

  v123 = v157;
  v124 = calculate_clut_capacity(v7, v157, v154, 2, v110, v111, v112, v113);
  v125 = (v151 + v124);
  if (v124 <= v150)
  {
    v126 = 0;
  }

  else
  {
    v126 = 4294967246;
  }

  CMMThrowExceptionOnError(v126);
  v129 = CMMBase::NewInternal(0x28, *(v155 + 8), v127, v128);
  v130 = *(v155 + 8);
  v131 = 1;
  *v129 = &unk_1F0E09180;
  v129[1] = 1;
  v129[3] = 0;
  v129[4] = v125;
  v129[2] = CMMBase::NewInternal(v125, v130, v132, v133);
  v173 = &unk_1F0E0A090;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  do
  {
    v140 = v131;
    v131 *= v7;
    v142 = v131 >= v140 && v131 >= v7;
    CMMThrowExceptionWithLog(v142, "Overflow in Power", v134, v135, v136, v137, v138, v139);
    --v123;
  }

  while (v123);
  memset(v214 + 4, 0, 476);
  v210 = 0u;
  memset(v211, 0, sizeof(v211));
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  memset(&v189[20], 0, 128);
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v178 = 0u;
  memset(&v177[4], 0, 48);
  *v177 = 1;
  *&v177[2] = CMMTable::UInt8Data(v104[2], v104[3]);
  v183 = v131;
  v184 = 1;
  v185 = v131 * 2 * v157;
  v186 = 2 * v157;
  v187 = 3;
  v188 = v152;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v158[0] = 1;
  v158[1] = CMMTable::UInt8Data(v129[2], v129[3]);
  v167 = v131;
  v168 = 1;
  v169 = v131 * 2 * v154;
  v170 = 2 * v154;
  v171 = 3;
  v172 = v148;
  *&v212 = &unk_1F0E06978;
  *(&v212 + 1) = v131;
  *&v213 = a6 + 1;
  *(&v213 + 1) = 0xC00uLL / (a6 + 1) * (a6 + 1);
  LODWORD(v214[0]) = 4;
  CMMDataBaseClass::CMMDataBaseClass(v214 + 1, v177, v157, (v131 * 2 * v157) >> 1);
  LOBYTE(v214[9]) = 0;
  CMM16BitNChanData::SetParams(v214 + 1, v177);
  *&v212 = off_1F0E0A4B0;
  v174 = &v212;
  *v189 = &unk_1F0E06A40;
  *&v189[8] = a6 + 1;
  *&v189[16] = 4;
  CMMDataBaseClass::CMMDataBaseClass(&v189[24], v158, v154, v169 >> 1);
  BYTE12(v190) = 0;
  CMM16BitNChanData::SetParams(&v189[24], v158);
  *v189 = off_1F0E0A540;
  v175 = v189;
  ConversionManager::ApplySequenceToBitmap();
  (*(*v104 + 8))(v104);
  v143 = v153;
  if (v153)
  {
    do
    {
      v144 = *(v143 + 2);
      (*(*v143 + 8))(v143);
      v143 = v144;
    }

    while (v144);
  }

  (*(*lpsrc + 16))(lpsrc, v129);
  (*(*lpsrc + 22))(lpsrc, *(v155 + 8));
  (*(*lpsrc + 23))(lpsrc, *(v155 + 8));
  v145 = *MEMORY[0x1E69E9840];
  return lpsrc;
}

unint64_t CMMCLUTConv<CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>>::Convert(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = a2;
    v7 = result;
    LODWORD(v8) = 0;
    v9 = *(result + 64);
    v10 = 4 * a4;
    v11 = a2;
    do
    {
      if (v9)
      {
        v12 = 1;
        v13 = v11;
        do
        {
          v14 = roundf(*v13 * 16777000.0);
          if (v14 > 16777000.0)
          {
            v14 = 16777000.0;
          }

          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          *v13++ = v14;
          v15 = v9 > v12++;
        }

        while (v15);
      }

      v8 = (v8 + 1);
      v11 = (v11 + v10);
    }

    while (v8 < a5);
    result = CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>::Interpolate<CMMMaxBits>(result, a2, a4, a5);
    v16 = 0;
    v17 = *(v7 + 72);
    do
    {
      if (v17)
      {
        v18 = 1;
        v19 = v6;
        do
        {
          *v19 = *v19 * 0.000000059605;
          ++v19;
          v15 = v17 > v18++;
        }

        while (v15);
      }

      ++v16;
      v6 = (v6 + v10);
    }

    while (v16 < v5);
  }

  return result;
}

unint64_t CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>::Interpolate<CMMMaxBits>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  memset(v39, 0, 64);
  memset(v37, 0, sizeof(v37));
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = *(result + 88);
    v9 = *(result + 56) - 1;
    memset(v38, 0, sizeof(v38));
    v31 = v8;
    v32 = 4 * a3;
    do
    {
      v10 = *(v5 + 64);
      v11 = v6;
      if (v10)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = *(a2 + 4 * v12);
          if (v14 >= 0x1000001)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = -171;
          }

          v15 = v14 * v9 + 256;
          v39[v12] = HIBYTE(v15);
          *(v38 + v12) = (v15 >> 9) & 0x7FFF;
          v12 = v13;
          v16 = v10 > v13++;
        }

        while (v16);
        v6 = v39[0];
        if (v10 == 1)
        {
          v11 = v39[0];
        }

        else
        {
          v17 = 2;
          v18 = 1;
          v11 = v39[0];
          do
          {
            v11 = v39[v18] + v11 * *(v5 + 56);
            v18 = v17;
            v16 = v10 > v17++;
          }

          while (v16);
        }
      }

      v35 = v6;
      v19 = *(v5 + 72);
      result = CMMTable::UInt8Data(*(v5 + 112), *(v5 + 120));
      v21 = *(v5 + 72);
      if (v21)
      {
        v22 = result;
        v34 = v7;
        v23 = 0;
        v24 = 0;
        v25 = (v31 + 2 * v19 * v11);
        result = *(v5 + 64);
        do
        {
          v26 = *v25;
          v36 = 0;
          if (result)
          {
            LODWORD(v27) = 0;
            do
            {
              v26 = InnerInterpolate<CMMMaxBits>(result, v27, v38, v26, v25, v22, &v36, v20);
              v27 = (v27 + 1);
              result = *(v5 + 64);
            }

            while (result > v27);
            v21 = *(v5 + 72);
          }

          *(v37 + v23) = v26;
          ++v25;
          v23 = ++v24;
        }

        while (v21 > v24);
        v7 = v34;
        if (v21)
        {
          v28 = 0;
          do
          {
            *(a2 + 4 * v28) = ((*(v37 + v28) >> 7) + (*(v37 + v28) << 9) + 1) >> 1;
            ++v28;
          }

          while (v21 > v28);
        }
      }

      a2 += v32;
      ++v7;
      v6 = v35;
    }

    while (v7 != a4);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t InnerInterpolate<CMMMaxBits>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v11 = a4;
  if (a2)
  {
    v14 = a2;
    v15 = ~a2 + a1;
    if (*(a3 + 4 * v15))
    {
      v16 = 0;
      v17 = *a7;
      *a7 = v17 + 1;
      v18 = *(a5 + 2 * *(a6 + 4 * v17));
      do
      {
        v19 = InnerInterpolate<CMMMaxBits>(a1, v16, a3, v18, a5, a6, a7);
        v18 = v19;
        v16 = (v16 + 1);
      }

      while (v14 != v16);
      v20 = *(a3 + 4 * v15);
      v21 = v19 - v11;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }

    v23 = 1;
    do
    {
      v24 = 2 * v23;
      v26 = v23 >= 0 && v24 != 0;
      CMMThrowExceptionWithLog(v26, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      v23 = v24;
      --v14;
    }

    while (v14);
    *a7 += v24;
  }

  else
  {
    v22 = *a7;
    *a7 = v22 + 1;
    v21 = *(a3 + 4 * (a1 - 1));
    if (v21)
    {
      v20 = *(a5 + 2 * *(a6 + 4 * v22)) - a4;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }
  }

  return v11;
}

void CMMCLUTConv<CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>>::~CMMCLUTConv(CMMConvCLUTBase *this)
{
  *this = &unk_1F0E0C1D0;
  *(this + 12) = &unk_1F0E09180;
  v2 = *(this + 14);
  if (v2)
  {
    CMMBase::operator delete(v2);
  }

  CMMConvCLUTBase::~CMMConvCLUTBase(this);

  CMMBase::operator delete(v3);
}

{
  *this = &unk_1F0E0C1D0;
  *(this + 12) = &unk_1F0E09180;
  v2 = *(this + 14);
  if (v2)
  {
    CMMBase::operator delete(v2);
  }

  CMMConvCLUTBase::~CMMConvCLUTBase(this);
}

void CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>::Offsets::~Offsets(pthread_mutex_t **a1)
{
  *a1 = &unk_1F0E09180;
  v2 = a1[2];
  if (v2)
  {
    CMMBase::operator delete(v2);
  }

  CMMBase::operator delete(a1);
}

void *CMMNDimLinear<CMMCLUTMOutput<CMMCLUTnD>>::Offsets::~Offsets(void *a1)
{
  *a1 = &unk_1F0E09180;
  v2 = a1[2];
  if (v2)
  {
    CMMBase::operator delete(v2);
  }

  return a1;
}

uint64_t CMMCLUTConv<CMMQuadlinear<CMMCLUTMOutput<CMMCLUT4D>>>::Convert(uint64_t result, float *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = a2;
    v7 = result;
    LODWORD(v8) = 0;
    v9 = *(result + 64);
    v10 = 4 * a4;
    v11 = a2;
    do
    {
      if (v9)
      {
        v12 = 1;
        v13 = v11;
        do
        {
          v14 = roundf(*v13 * 16777000.0);
          if (v14 > 16777000.0)
          {
            v14 = 16777000.0;
          }

          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          *v13++ = v14;
          v15 = v9 > v12++;
        }

        while (v15);
      }

      v8 = (v8 + 1);
      v11 = (v11 + v10);
    }

    while (v8 < a5);
    result = CMMQuadlinear<CMMCLUTMOutput<CMMCLUT4D>>::Interpolate<CMMMaxBits>(result, a2, a4, a5);
    v16 = 0;
    v17 = *(v7 + 72);
    do
    {
      if (v17)
      {
        v18 = 1;
        v19 = v6;
        do
        {
          *v19 = *v19 * 0.000000059605;
          ++v19;
          v15 = v17 > v18++;
        }

        while (v15);
      }

      ++v16;
      v6 = (v6 + v10);
    }

    while (v16 < v5);
  }

  return result;
}

uint64_t CMMQuadlinear<CMMCLUTMOutput<CMMCLUT4D>>::Interpolate<CMMMaxBits>(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  memset(v74, 0, sizeof(v74));
  if (a4)
  {
    v4 = *(result + 88);
    v5 = *(result + 56);
    v6 = v5 - 1;
    v7 = *(result + 72);
    memset(v78, 0, sizeof(v78));
    memset(v77, 0, sizeof(v77));
    memset(v76, 0, sizeof(v76));
    memset(v75, 0, sizeof(v75));
    while (1)
    {
      if (*a2 >= 0x1000001u || (v8 = a2[1], v8 >= 0x1000001) || (v9 = a2[2], v9 >= 0x1000001) || (v10 = a2[3], v10 >= 0x1000001))
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      if (!v7)
      {
        goto LABEL_89;
      }

      v11 = 0;
      v12 = *a2 * v6 + 256;
      v13 = HIBYTE(v12);
      v14 = (v12 >> 9) & 0x7FFF;
      v15 = v8 * v6 + 256;
      v16 = HIBYTE(v15);
      v17 = (v15 >> 9) & 0x7FFF;
      v18 = v9 * v6 + 256;
      v19 = (v18 >> 9) & 0x7FFF;
      v20 = v10 * v6 + 256;
      v21 = v16 + v13 * v5;
      v22 = (v20 >> 9) & 0x7FFF;
      v23 = v4 + 2 * ((v21 * v5 + HIBYTE(v18)) * v5 + HIBYTE(v20)) * v7;
      v24 = v7 * (HIBYTE(v20) + v5 * (HIBYTE(v18) + v5 * v21));
      do
      {
        *(v78 + v11) = *(v4 + 2 * v24 + 2 * v11);
        ++v11;
      }

      while (v7 > v11);
      if (v22)
      {
        v25 = 0;
        v26 = v23 + 2 * *(result + 96);
        do
        {
          *(v75 + v25) = *(v26 + 2 * v25);
          ++v25;
        }

        while (v7 > v25);
        v27 = 0;
        do
        {
          *(v78 + v27) += ((*(v75 + v27) - *(v78 + v27)) * v22 + 0x4000) >> 15;
          ++v27;
        }

        while (v7 > v27);
      }

      if (v19)
      {
        v28 = 0;
        v29 = v23 + 2 * *(result + 100);
        do
        {
          *(v76 + v28) = *(v29 + 2 * v28);
          ++v28;
        }

        while (v7 > v28);
        if (v22)
        {
          v30 = 0;
          v31 = v23 + 2 * *(result + 112);
          do
          {
            *(v75 + v30) = *(v31 + 2 * v30);
            ++v30;
          }

          while (v7 > v30);
          v32 = 0;
          do
          {
            *(v76 + v32) += ((*(v75 + v32) - *(v76 + v32)) * v22 + 0x4000) >> 15;
            ++v32;
          }

          while (v7 > v32);
        }

        v33 = 0;
        do
        {
          *(v78 + v33) += ((*(v76 + v33) - *(v78 + v33)) * v19 + 0x4000) >> 15;
          ++v33;
        }

        while (v7 > v33);
      }

      if (v17)
      {
        break;
      }

      v46 = 1;
      if (v14)
      {
        goto LABEL_46;
      }

LABEL_87:
      v71 = 0;
      do
      {
        a2[v71] = ((*(v78 + v71) >> 7) + (*(v78 + v71) << 9) + 1) >> 1;
        ++v71;
      }

      while (v7 > v71);
LABEL_89:
      a2 += a3;
      if (!--a4)
      {
        goto LABEL_90;
      }
    }

    v34 = 0;
    v35 = v23 + 2 * *(result + 104);
    do
    {
      *(v77 + v34) = *(v35 + 2 * v34);
      ++v34;
    }

    while (v7 > v34);
    if (v22)
    {
      v36 = 0;
      v37 = v23 + 2 * *(result + 116);
      do
      {
        *(v75 + v36) = *(v37 + 2 * v36);
        ++v36;
      }

      while (v7 > v36);
      v38 = 0;
      do
      {
        *(v77 + v38) += ((*(v75 + v38) - *(v77 + v38)) * v22 + 0x4000) >> 15;
        ++v38;
      }

      while (v7 > v38);
    }

    if (v19)
    {
      v39 = 0;
      v40 = v23 + 2 * *(result + 120);
      do
      {
        *(v76 + v39) = *(v40 + 2 * v39);
        ++v39;
      }

      while (v7 > v39);
      if (v22)
      {
        v41 = 0;
        v42 = v23 + 2 * *(result + 124);
        do
        {
          *(v75 + v41) = *(v42 + 2 * v41);
          ++v41;
        }

        while (v7 > v41);
        v43 = 0;
        do
        {
          *(v76 + v43) += ((*(v75 + v43) - *(v76 + v43)) * v22 + 0x4000) >> 15;
          ++v43;
        }

        while (v7 > v43);
      }

      v44 = 0;
      do
      {
        *(v77 + v44) += ((*(v76 + v44) - *(v77 + v44)) * v19 + 0x4000) >> 15;
        ++v44;
      }

      while (v7 > v44);
    }

    v45 = 0;
    do
    {
      *(v78 + v45) += ((*(v77 + v45) - *(v78 + v45)) * v17 + 0x4000) >> 15;
      ++v45;
    }

    while (v7 > v45);
    v46 = 0;
    if (!v14)
    {
      goto LABEL_87;
    }

LABEL_46:
    v47 = 0;
    v48 = v4 + 2 * *(result + 108) + 2 * v24;
    do
    {
      *(v77 + v47) = *(v48 + 2 * v47);
      ++v47;
    }

    while (v7 > v47);
    if (v22)
    {
      v49 = 0;
      v50 = v23 + 2 * *(result + 128);
      do
      {
        *(v74 + v49) = *(v50 + 2 * v49);
        ++v49;
      }

      while (v7 > v49);
      v51 = 0;
      do
      {
        *(v77 + v51) += ((*(v74 + v51) - *(v77 + v51)) * v22 + 0x4000) >> 15;
        ++v51;
      }

      while (v7 > v51);
    }

    if (v19)
    {
      v52 = 0;
      v53 = v23 + 2 * *(result + 132);
      do
      {
        *(v75 + v52) = *(v53 + 2 * v52);
        ++v52;
      }

      while (v7 > v52);
      if (v22)
      {
        v54 = 0;
        v55 = v23 + 2 * *(result + 136);
        do
        {
          *(v74 + v54) = *(v55 + 2 * v54);
          ++v54;
        }

        while (v7 > v54);
        v56 = 0;
        do
        {
          *(v75 + v56) += ((*(v74 + v56) - *(v75 + v56)) * v22 + 0x4000) >> 15;
          ++v56;
        }

        while (v7 > v56);
      }

      v57 = 0;
      do
      {
        *(v77 + v57) += ((*(v75 + v57) - *(v77 + v57)) * v19 + 0x4000) >> 15;
        ++v57;
      }

      while (v7 > v57);
    }

    if ((v46 & 1) == 0)
    {
      v58 = 0;
      v59 = v23 + 2 * *(result + 140);
      do
      {
        *(v76 + v58) = *(v59 + 2 * v58);
        ++v58;
      }

      while (v7 > v58);
      if (v22)
      {
        v60 = 0;
        v61 = v23 + 2 * *(result + 144);
        do
        {
          *(v74 + v60) = *(v61 + 2 * v60);
          ++v60;
        }

        while (v7 > v60);
        v62 = 0;
        do
        {
          *(v76 + v62) += ((*(v74 + v62) - *(v76 + v62)) * v22 + 0x4000) >> 15;
          ++v62;
        }

        while (v7 > v62);
      }

      if (v19)
      {
        v63 = 0;
        v64 = v23 + 2 * *(result + 148);
        do
        {
          *(v75 + v63) = *(v64 + 2 * v63);
          ++v63;
        }

        while (v7 > v63);
        if (v22)
        {
          v65 = 0;
          v66 = v23 + 2 * *(result + 152);
          do
          {
            *(v74 + v65) = *(v66 + 2 * v65);
            ++v65;
          }

          while (v7 > v65);
          v67 = 0;
          do
          {
            *(v75 + v67) += ((*(v74 + v67) - *(v75 + v67)) * v22 + 0x4000) >> 15;
            ++v67;
          }

          while (v7 > v67);
        }

        v68 = 0;
        do
        {
          *(v76 + v68) += ((*(v75 + v68) - *(v76 + v68)) * v19 + 0x4000) >> 15;
          ++v68;
        }

        while (v7 > v68);
      }

      v69 = 0;
      do
      {
        *(v77 + v69) += ((*(v76 + v69) - *(v77 + v69)) * v17 + 0x4000) >> 15;
        ++v69;
      }

      while (v7 > v69);
    }

    v70 = 0;
    do
    {
      *(v78 + v70) += ((*(v77 + v70) - *(v78 + v70)) * v14 + 0x4000) >> 15;
      ++v70;
    }

    while (v7 > v70);
    goto LABEL_87;
  }

LABEL_90:
  v72 = *MEMORY[0x1E69E9840];
  return result;
}

void CMMCLUTConv<CMMQuadlinear<CMMCLUTMOutput<CMMCLUT4D>>>::~CMMCLUTConv(CMMConvCLUTBase *a1)
{
  CMMConvCLUTBase::~CMMConvCLUTBase(a1);

  CMMBase::operator delete(v1);
}

uint64_t CMMCLUTConv<CMMTrilinear<CMMCLUTMOutput<CMMCLUT3D>>>::Convert(uint64_t result, float *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = a2;
    v7 = result;
    LODWORD(v8) = 0;
    v9 = *(result + 64);
    v10 = 4 * a4;
    v11 = a2;
    do
    {
      if (v9)
      {
        v12 = 1;
        v13 = v11;
        do
        {
          v14 = roundf(*v13 * 16777000.0);
          if (v14 > 16777000.0)
          {
            v14 = 16777000.0;
          }

          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          *v13++ = v14;
          v15 = v9 > v12++;
        }

        while (v15);
      }

      v8 = (v8 + 1);
      v11 = (v11 + v10);
    }

    while (v8 < a5);
    result = CMMTrilinear<CMMCLUTMOutput<CMMCLUT3D>>::Interpolate<CMMMaxBits>(result, a2, a4, a5);
    v16 = 0;
    v17 = *(v7 + 72);
    do
    {
      if (v17)
      {
        v18 = 1;
        v19 = v6;
        do
        {
          *v19 = *v19 * 0.000000059605;
          ++v19;
          v15 = v17 > v18++;
        }

        while (v15);
      }

      ++v16;
      v6 = (v6 + v10);
    }

    while (v16 < v5);
  }

  return result;
}

uint64_t CMMTrilinear<CMMCLUTMOutput<CMMCLUT3D>>::Interpolate<CMMMaxBits>(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v47, 0, sizeof(v47));
  if (a4)
  {
    v4 = *(result + 88);
    v5 = *(result + 56);
    v6 = v5 - 1;
    v7 = *(result + 72);
    memset(v50, 0, sizeof(v50));
    memset(v49, 0, sizeof(v49));
    memset(v48, 0, sizeof(v48));
    do
    {
      if (*a2 >= 0x1000001u || (v8 = a2[1], v8 >= 0x1000001) || (v9 = a2[2], v9 >= 0x1000001))
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      if (v7)
      {
        v10 = 0;
        v11 = *a2 * v6 + 256;
        v12 = HIBYTE(v11);
        v13 = (v11 >> 9) & 0x7FFF;
        v14 = v8 * v6 + 256;
        v15 = (v14 >> 9) & 0x7FFF;
        v16 = v9 * v6 + 256;
        v17 = HIBYTE(v16);
        v18 = v12 * v5 + HIBYTE(v14);
        v19 = v18 * v5 + HIBYTE(v16);
        v20 = (v16 >> 9) & 0x7FFF;
        v21 = v4 + 2 * (v19 * v7);
        v22 = v4 + 2 * v7 * (v17 + v5 * v18);
        do
        {
          *(v50 + v10) = *(v22 + 2 * v10);
          ++v10;
        }

        while (v7 > v10);
        if (v20)
        {
          v23 = 0;
          v24 = v21 + 2 * *(result + 96);
          do
          {
            *(v49 + v23) = *(v24 + 2 * v23);
            ++v23;
          }

          while (v7 > v23);
          v25 = 0;
          do
          {
            *(v50 + v25) += ((*(v49 + v25) - *(v50 + v25)) * v20 + 0x4000) >> 15;
            ++v25;
          }

          while (v7 > v25);
        }

        if (v15)
        {
          v26 = 0;
          v27 = v21 + 2 * *(result + 100);
          do
          {
            *(v49 + v26) = *(v27 + 2 * v26);
            ++v26;
          }

          while (v7 > v26);
          if (v20)
          {
            v28 = 0;
            v29 = v21 + 2 * *(result + 108);
            do
            {
              *(v48 + v28) = *(v29 + 2 * v28);
              ++v28;
            }

            while (v7 > v28);
            v30 = 0;
            do
            {
              *(v49 + v30) += ((*(v48 + v30) - *(v49 + v30)) * v20 + 0x4000) >> 15;
              ++v30;
            }

            while (v7 > v30);
          }

          v31 = 0;
          do
          {
            *(v50 + v31) += ((*(v49 + v31) - *(v50 + v31)) * v15 + 0x4000) >> 15;
            ++v31;
          }

          while (v7 > v31);
        }

        if (v13)
        {
          v32 = 0;
          v33 = v21 + 2 * *(result + 104);
          do
          {
            *(v49 + v32) = *(v33 + 2 * v32);
            ++v32;
          }

          while (v7 > v32);
          if (v20)
          {
            v34 = 0;
            v35 = v21 + 2 * *(result + 112);
            do
            {
              *(v48 + v34) = *(v35 + 2 * v34);
              ++v34;
            }

            while (v7 > v34);
            v36 = 0;
            do
            {
              *(v49 + v36) += ((*(v48 + v36) - *(v49 + v36)) * v20 + 0x4000) >> 15;
              ++v36;
            }

            while (v7 > v36);
          }

          if (v15)
          {
            v37 = 0;
            v38 = v21 + 2 * *(result + 116);
            do
            {
              *(v48 + v37) = *(v38 + 2 * v37);
              ++v37;
            }

            while (v7 > v37);
            if (v20)
            {
              v39 = 0;
              v40 = v21 + 2 * *(result + 120);
              do
              {
                *(v47 + v39) = *(v40 + 2 * v39);
                ++v39;
              }

              while (v7 > v39);
              v41 = 0;
              do
              {
                *(v48 + v41) += ((*(v47 + v41) - *(v48 + v41)) * v20 + 0x4000) >> 15;
                ++v41;
              }

              while (v7 > v41);
            }

            v42 = 0;
            do
            {
              *(v49 + v42) += ((*(v48 + v42) - *(v49 + v42)) * v15 + 0x4000) >> 15;
              ++v42;
            }

            while (v7 > v42);
          }

          v43 = 0;
          do
          {
            *(v50 + v43) += ((*(v49 + v43) - *(v50 + v43)) * v13 + 0x4000) >> 15;
            ++v43;
          }

          while (v7 > v43);
        }

        v44 = 0;
        do
        {
          a2[v44] = ((*(v50 + v44) >> 7) + (*(v50 + v44) << 9) + 1) >> 1;
          ++v44;
        }

        while (v7 > v44);
      }

      a2 += a3;
      --a4;
    }

    while (a4);
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void CMMCLUTConv<CMMTrilinear<CMMCLUTMOutput<CMMCLUT3D>>>::~CMMCLUTConv(CMMConvCLUTBase *a1)
{
  CMMConvCLUTBase::~CMMConvCLUTBase(a1);

  CMMBase::operator delete(v1);
}

unint64_t ConversionManager::GetMaxCLUTNofPoints(ConversionManager *this, CMMConvNode *a2, CMMConvNode *a3)
{
  if (this == a2)
  {
    if (this)
    {
      return 17;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v5 = 0;
    v6 = this;
    do
    {
      v7 = (*(*v6 + 168))(v6, 2, a3);
      if (v7 > v5)
      {
        v5 = v7;
      }

      if (v5 == 0xFFFFFFFF)
      {
        return 0;
      }

      v6 = *(v6 + 2);
    }

    while (v6 != a2);
    v8 = 17;
    if (!this)
    {
      v8 = 2;
    }

    if (!v5)
    {
      return v8;
    }
  }

  return v5;
}

uint64_t ConversionManager::ApplySequenceToBitmap()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v46 = v4;
  v8 = v0;
  v10 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = "ColorSync: Inavlid Codec\n";
    goto LABEL_7;
  }

  v14 = v3;
  v15 = v2;
  v16 = v1;
  if (v10[8] <= v9[4])
  {
    v17 = v9[4];
  }

  else
  {
    v17 = v10[8];
  }

  if (v8)
  {
    goto LABEL_15;
  }

  v18 = **v9;
  if (!v19)
  {
    goto LABEL_78;
  }

  if (v15[3] || ((*(*v10 + 40))(v10, v19) & 1) == 0)
  {
LABEL_15:
    if (v17 == 1)
    {
      bzero(v47, 0x9000uLL);
      v20 = v15[1];
      if (v20)
      {
        v21 = v15[2];
        if (v21)
        {
          v22 = v15[3];
          v48 = 0;
          v49[0] = 0;
          v23 = v20[2];
          v24 = 4 * v46 * v23 + 4;
          if (v24 >> 12 > 8)
          {
            v24 = 36864;
          }

          bzero(v47, v24);
          if (v14 && v46 <= 0x3FF)
          {
            *v14 = 0;
          }

          if (v46)
          {
            v25 = 0;
            do
            {
              (*(*v20 + 16))(v20, v47, v14, v49, &v48);
              if (v8 != v16)
              {
                v26 = v8;
                do
                {
                  if (((*(*v26 + 80))(v26) & 1) == 0)
                  {
                    (*(*v26 + 96))(v26, v47, v14, v23, v48);
                  }

                  v26 = v26[2];
                }

                while (v26 != v16);
              }

              if (v22)
              {
                v27 = v49[0];
                (*(*v22 + 16))(v22, v49[0] - v25);
                v25 = v27;
              }

              (*(*v21 + 16))(v21, v47, v14, v48);
            }

            while (v49[0] < v46);
          }

          return 0;
        }
      }

LABEL_78:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

    if ((v17 - 3) <= 1)
    {
      bzero(v47, 0x3000uLL);
      v28 = v15[1];
      if (v28)
      {
        v29 = v15[2];
        if (v29)
        {
          v30 = v15[3];
          v48 = 0;
          v49[0] = 0;
          v31 = v28[2];
          v32 = 4 * v46 * v31 + 4;
          if (v32 >> 12 > 2)
          {
            v32 = 12288;
          }

          bzero(v47, v32);
          if (v14 && v46 <= 0x3FF)
          {
            *v14 = 0;
          }

          if (v46)
          {
            v33 = 0;
            do
            {
              (*(*v28 + 24))(v28, v47, v14, v49, &v48);
              if (v8 != v16)
              {
                v34 = v8;
                do
                {
                  if (((*(*v34 + 80))(v34) & 1) == 0)
                  {
                    (*(*v34 + 104))(v34, v47, v14, v31, v48);
                  }

                  v34 = v34[2];
                }

                while (v34 != v16);
              }

              if (v30)
              {
                v35 = v49[0];
                (*(*v30 + 16))(v30, v49[0] - v33);
                v33 = v35;
              }

              (*(*v29 + 24))(v29, v47, v14, v48);
            }

            while (v49[0] < v46);
          }

          return 0;
        }
      }

      goto LABEL_78;
    }

    if (v17 == 5)
    {
      bzero(v47, 0x3000uLL);
      v36 = v15[1];
      if (v36)
      {
        v37 = v15[2];
        if (v37)
        {
          v38 = v15[3];
          v48 = 0;
          v49[0] = 0;
          v39 = v36[2];
          v40 = 4 * v46 * v39 + 4;
          if (v40 >> 12 > 2)
          {
            v40 = 12288;
          }

          bzero(v47, v40);
          if (v14 && v46 <= 0x3FF)
          {
            *v14 = 0;
          }

          if (v46)
          {
            v41 = 0;
            do
            {
              (*(*v36 + 32))(v36, v47, v14, v49, &v48);
              if (v8 != v16)
              {
                v42 = v8;
                do
                {
                  if (((*(*v42 + 224))(v42) & 1) == 0 && ((*(*v42 + 80))(v42) & 1) == 0)
                  {
                    if ((*(*v42 + 40))(v42))
                    {
                      (*(*v42 + 136))(v42, v47, v39, v48);
                    }

                    (*(*v42 + 112))(v42, v47, v14, v39, v48);
                    if ((*(*v42 + 64))(v42))
                    {
                      (*(*v42 + 160))(v42, v47, v39, v48);
                    }
                  }

                  v42 = v42[2];
                }

                while (v42 != v16);
              }

              if (v38)
              {
                v43 = v41;
                v41 = v49[0];
                (*(*v38 + 16))(v38, v49[0] - v43);
              }

              (*(*v37 + 32))(v37, v47, v14, v48);
            }

            while (v49[0] < v46);
          }

          return 0;
        }
      }

      goto LABEL_78;
    }

    v12 = "ColorSync: DoConvert failed (cmUnsupportedDataType)\n";
LABEL_7:
    ColorSyncLog(2, v12, v2, v3, v4, v5, v6, v7, v45);
    return 4294967115;
  }

  return 0;
}

void ConversionManager::AddLinearMatrixConv(CMMMemMgr **this, CMMXYZTag *(*a2)[3])
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = &unk_1F0E071F8;
  CMMMatrix::InitializeMatrix(&v5, v6, a2, 1.0);
  CMMMatrix::MakeMatrixConv(&v5, this[1], this[3], v3);
  this[3] = v4;
}

void ConversionManager::AddMatrixConvPCSToPCS(ConversionManager *this, CMMXYZTag *(*a2)[3], CMMRGBCurves *a3, const char *a4, const __CFDictionary *a5)
{
  ConversionManager::AddInvMatrixConv(this, a2, a3, a4, 2, 0, a5);

  ConversionManager::AddMatrixConv(this, a2, a3, a4, 1, 0, a5);
}

double ConversionManager::GetProfileSrcBlackPointLightness()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v4 = v1;
  v22 = 0;
  v5 = *(v1 + 8);
  v7 = *(v5 + 44);
  v6 = *(v5 + 48);
  v9 = v7 == 1886549106 && v6 == 1129142603;
  v10 = ConversionManager::CreateBlackPointEstimationTransform(v0, v9, v1, 0, *(v1 + 20), &v22);
  bzero(v21, 0x3000uLL);
  if (v9)
  {
    v13 = 0;
    *&v14 = vneg_f32(0x8080808080808080);
    *(v21 + 4) = v14;
  }

  else if (*(*(v4 + 8) + 48) == 1129142603)
  {
    *&v14 = 0x100000001000000;
    *(&v14 + 1) = 0x100000001000000;
    v21[0] = v14;
    v13 = 0x1000000;
  }

  else
  {
    v13 = 0;
    *&v14 = 0;
    memset(v21, 0, 64);
  }

  memset(v20, 0, 14);
  if (v10)
  {
    v15 = v22;
    v16 = v10;
    do
    {
      (*(*v16 + 104))(v16, v21, v20, v15, 1);
      v16 = v16[2];
    }

    while (v16);
    do
    {
      v17 = v10[2];
      (*(*v10 + 8))(v10);
      v10 = v17;
    }

    while (v17);
    v13 = v21[0];
  }

  if (v13 >= 0x800000)
  {
    v18 = 0x800000;
  }

  else
  {
    v18 = v13;
  }

  if (v3)
  {
    *v3 = v18;
    v11.i32[0] = 1129142603;
    v12.i32[0] = *(*(v4 + 8) + 48);
    *&v14 = vbsl_s8(vdup_lane_s32(vceq_s32(v12, v11), 0), 0x80000000800000, *(v21 + 4));
    *(v3 + 4) = v14;
  }

  return *&v14;
}

uint64_t CMMProfile::GetWhitePoint(CMMProfile *this)
{
  WhitePoint = ColorSyncProfileGetWhitePoint(this);
  if (WhitePoint >= 0.0)
  {
    v4 = WhitePoint * 65536.0 + 0.5;
  }

  else
  {
    v4 = WhitePoint * 65536.0 + -0.5;
  }

  v5 = v4;
  v6 = v2 * 65536.0 + 0.5;
  if (v2 < 0.0)
  {
    v6 = v2 * 65536.0 + -0.5;
  }

  v7 = v6;
  v8 = v3 * 65536.0 + 0.5;
  if (v3 < 0.0)
  {
    v8 = v3 * 65536.0 + -0.5;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -170;
  }

  if (v7)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 4294967126;
  }

  else
  {
    v11 = v9;
  }

  CMMThrowExceptionOnError(v11);
  return v5 | (v7 << 32);
}

void ConversionManager::AddXYZToXYZ(uint64_t a1, int a2, int a3, const char *a4, int32x2_t a5, int32x2_t a6)
{
  v7 = a2 - a3;
  if (a2 - a3 < 0)
  {
    v7 = a3 - a2;
  }

  if (v7 > 1 || (v8 = vcgt_u32(vabd_s32(a5, a6), 0x100000001), (v8.i8[0] & 1) != 0) || (v8.i8[4] & 1) != 0)
  {
    v9 = a5.i32[0];
    if (a2)
    {
      v10 = a5.i32[0] == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10 || a5.i32[1] == 0;
    v12 = a5.i32[1];
    v13 = v9;
    v14 = a2;
    v15 = v11;
    v16 = a6.i32[0];
    if (a3)
    {
      v17 = a6.i32[0] == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = a6.i32[1];
    v20 = v17 || a6.i32[1] == 0;
    v21 = a3;
    v22 = v16;
    v23 = v18;
    v34 = &unk_1F0E071F8;
    v42 = 0;
    v40 = 0;
    v41 = 0;
    v43 = 1065353216;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    if (v15)
    {
      v14 = 63190.0;
      v13 = 65536.0;
      v12 = 54061.0;
    }

    if (v20)
    {
      v21 = 63190.0;
    }

    v24 = v21 / v14;
    v25 = v24 * 65536.0 + 0.5;
    if (v20)
    {
      v22 = 65536.0;
      v23 = 54061.0;
    }

    if (v24 < 0.0)
    {
      v25 = v24 * 65536.0 + -0.5;
    }

    v26 = v22 / v13;
    v27 = v26 * 65536.0 + 0.5;
    if (v26 < 0.0)
    {
      v27 = v26 * 65536.0 + -0.5;
    }

    LODWORD(v35) = v25;
    LODWORD(v36) = v27;
    v28 = v23 / v12;
    v29 = v28 * 65536.0 + 0.5;
    if (v28 < 0.0)
    {
      v29 = v28 * 65536.0 + -0.5;
    }

    LODWORD(v37) = v29;
    v30 = v24;
    *(&v37 + 1) = v30;
    v31 = v26;
    *(&v38 + 1) = v31;
    v32 = v28;
    *(&v39 + 1) = v32;
    CMMMatrix::MakeMatrixConv(&v34, *(a1 + 8), *(a1 + 24), a4);
    *(a1 + 24) = v33;
  }
}

void ConversionManager::AddXYZToLab(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    pthread_mutex_lock(&ConversionManager::CreateXYZToLabLut(icXYZNumber const&,unsigned int)::cmmLock);
    if (!labEncodeTableChan0)
    {
      v31 = 0;
      CMMMemMgr::CMMMemMgr(&v31);
      labEncodeDataChan0Ptr = CMMBase::NewInternal(0x5408, &v31, v3, v4);
      labEncodeDataChan1Ptr = CMMBase::NewInternal(0x5408, &v31, v5, v6);
      labEncodeDataChan2Ptr = CMMBase::NewInternal(0x5408, &v31, v7, v8);
      ConversionManager::InitXYZToLabLut(labEncodeDataChan0Ptr, 0);
      ConversionManager::InitXYZToLabLut(labEncodeDataChan1Ptr, 1);
      ConversionManager::InitXYZToLabLut(labEncodeDataChan2Ptr, 2);
      v11 = CMMBase::NewInternal(0x28, &v31, v9, v10);
      v12 = labEncodeDataChan0Ptr;
      v11[2] = 0;
      v11[3] = v12;
      *v11 = &unk_1F0E09180;
      v11[1] = 0;
      v11[4] = 21512;
      labEncodeTableChan0 = v11;
      v15 = CMMBase::NewInternal(0x28, &v31, v13, v14);
      v16 = labEncodeDataChan1Ptr;
      v15[2] = 0;
      v15[3] = v16;
      *v15 = &unk_1F0E09180;
      v15[1] = 0;
      v15[4] = 21512;
      labEncodeTableChan1 = v15;
      v19 = CMMBase::NewInternal(0x28, &v31, v17, v18);
      v20 = labEncodeDataChan2Ptr;
      v19[2] = 0;
      v19[3] = v20;
      *v19 = &unk_1F0E09180;
      v19[1] = 0;
      v19[4] = 21512;
      labEncodeTableChan2 = v19;
      CMMMemMgr::ReleaseMemList(&v31);
    }

    pthread_mutex_unlock(&ConversionManager::CreateXYZToLabLut(icXYZNumber const&,unsigned int)::cmmLock);
    if (i == 1)
    {
      v23 = labEncodeTableChan1;
    }

    else if (i)
    {
      if (i == 2)
      {
        v23 = labEncodeTableChan2;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = labEncodeTableChan0;
    }

    *v32 = 0;
    *&v32[8] = 0;
    if (i == 1)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.824899971;
    }

    if (!i)
    {
      v24 = 0.96420002;
    }

    v31 = 1;
    *&v32[4] = 4;
    *&v32[16] = 1051372203;
    *&v25 = 1.0 / v24;
    *&v33 = v25;
    *&v26 = 7.787 / v24;
    *&v27 = v24 * 0.008856;
    *(&v33 + 1) = __PAIR64__(v27, v26);
    *&v34 = 0x3E0D3DCB00000000;
    DWORD2(v34) = 0;
    v28 = CMMBase::NewInternal(0xA8, *(a1 + 8), v21, v22);
    *(a1 + 24) = CMMConvTRC::CMMConvTRC(v28, i, v23, 21512, &v31, *(a1 + 24), 3, 1, 2.0, 0, 0);
  }

  v40 = 0;
  v31 = &unk_1F0E071F8;
  *v32 = 0;
  *&v32[4] = xmmword_19A96E3E0;
  v33 = xmmword_19A96E3F0;
  v37 = 0x80808000000000;
  v38 = 8421504;
  v34 = xmmword_19A96E400;
  v35 = xmmword_19A96E410;
  v36 = -1085749047;
  v39 = xmmword_19A96E420;
  CMMMatrix::MakeMatrixConv(&v31, *(a1 + 8), v28, v29);
  *(a1 + 24) = v30;
  *(a1 + 36) = 1347182946;
}

void sub_19A95F798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

int *ConversionManager::InitXYZToLabLut(int *a1, int a2)
{
  v2 = 8;
  if (a2 == 1)
  {
    v2 = 4;
  }

  if (!a2)
  {
    v2 = 0;
  }

  v3 = *(&qword_19A96E75C + v2);
  if (v3 - 1 >= 0x1FFFD)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = 0;
  v6 = 0.000244140625 / (vcvtd_n_f64_u32(v3, 0x10uLL) * 0.5);
  do
  {
    v7 = v6 * v5;
    if (v7 <= 0.00885645168)
    {
      v8 = v7 * 903.296296;
    }

    else
    {
      v8 = pow(v7, 0.333333333) * 116.0 + -16.0;
    }

    a1[v5++] = vcvtmd_s64_f64(v8 * 16777216.0 * 0.01 + 0.5);
  }

  while (v5 != 4097);

  return MakeLookups(a1);
}

int *ConversionManager::InitLabToXYZLut(int *a1, int a2)
{
  v2 = 8;
  if (a2 == 1)
  {
    v2 = 4;
  }

  if (!a2)
  {
    v2 = 0;
  }

  v3 = *(&qword_19A96E75C + v2);
  if (v3 - 1 > 0x1FFFC)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = 0;
  v6 = v3;
  v7 = a1;
  do
  {
    v8 = v5 * 2.00784314 * 0.000244140625;
    if (v8 <= 8.0)
    {
      v9 = v8 * 0.00110705646;
    }

    else
    {
      v9 = pow((v8 + 16.0) / 116.0, 3.0);
    }

    v10 = v9 * v6 * 128.0;
    if (v10 > 16777216.0)
    {
      v10 = 16777216.0;
    }

    *v7++ = vcvtmd_s64_f64(v10 + 0.5);
    v5 += 100;
  }

  while (v5 != 409700);

  return MakeLookups(a1);
}

uint64_t ConversionManager::CreateBlackPointEstimationTransform(uint64_t a1, int a2, uint64_t a3, int a4, int a5, unint64_t *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = ColorSyncProfileCreateWithName(kColorSyncGenericLabProfile);
  if (!v12)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v13 = v12;
  if (a2)
  {
    v39 = kColorSyncProfile;
    v40 = kColorSyncRenderingIntent;
    v41 = __PAIR128__(kColorSyncBlackPointCompensation, kColorSyncTransformTag);
    *&v42 = 0;
    values = v12;
    v14 = a4 - 1;
    if ((a4 - 1) > 2)
    {
      v15 = &kColorSyncRenderingIntentPerceptual;
    }

    else
    {
      v15 = off_1E7523960[v14];
    }

    v59 = *v15;
    v60 = kColorSyncTransformDeviceToPCS;
    v18 = *MEMORY[0x1E695E4C0];
    v61 = *MEMORY[0x1E695E4C0];
    v62 = 0;
    v19 = *(*(a3 + 8) + 16);
    v53 = v19;
    v20 = &kColorSyncRenderingIntentPerceptual;
    v21 = &kColorSyncRenderingIntentPerceptual;
    if (v14 <= 2)
    {
      v21 = off_1E7523960[v14];
    }

    v54 = *v21;
    v55 = kColorSyncTransformPCSToDevice;
    v56 = v18;
    v57 = 0;
    v48 = v19;
    if ((a5 - 1) < 3)
    {
      v20 = off_1E7523960[a5 - 1];
    }

    v49 = *v20;
    v50 = kColorSyncTransformDeviceToPCS;
    v51 = v18;
    v52 = 0;
    v47[0] = v12;
    v47[1] = *v20;
    v47[2] = kColorSyncTransformPCSToDevice;
    v47[3] = v18;
    v47[4] = 0;
    v22 = CFDictionaryCreate(0, &v39, &values, 4, 0, 0);
    v23 = CFDictionaryCreate(0, &v39, &v53, 4, 0, 0);
    v24 = CFDictionaryCreate(0, &v39, &v48, 4, 0, 0);
    v25 = CFDictionaryCreate(0, &v39, v47, 4, 0, 0);
    v46[0] = v22;
    v46[1] = v23;
    v46[2] = v24;
    v46[3] = v25;
    v46[4] = 0;
    v28 = CFArrayCreate(0, v46, 4, MEMORY[0x1E695E9C0]);
    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    v39 = kColorSyncProfile;
    v40 = kColorSyncRenderingIntent;
    v41 = __PAIR128__(kColorSyncBlackPointCompensation, kColorSyncTransformTag);
    *&v42 = 0;
    values = *(*(a3 + 8) + 16);
    v16 = a5 - 1;
    if ((a5 - 1) > 2)
    {
      v17 = &kColorSyncRenderingIntentPerceptual;
    }

    else
    {
      v17 = off_1E7523960[v16];
    }

    v59 = *v17;
    v60 = kColorSyncTransformDeviceToPCS;
    v29 = *MEMORY[0x1E695E4C0];
    v61 = *MEMORY[0x1E695E4C0];
    v62 = 0;
    v53 = v12;
    if (v16 > 2)
    {
      v30 = &kColorSyncRenderingIntentPerceptual;
    }

    else
    {
      v30 = off_1E7523960[v16];
    }

    v54 = *v30;
    v55 = kColorSyncTransformPCSToDevice;
    v56 = v29;
    v57 = 0;
    v31 = CFDictionaryCreate(0, &v39, &values, 4, 0, 0);
    v32 = CFDictionaryCreate(0, &v39, &v53, 4, 0, 0);
    v48 = v31;
    v49 = v32;
    v50 = 0;
    v28 = CFArrayCreate(0, &v48, 2, MEMORY[0x1E695E9C0]);
    if (v31)
    {
      CFRelease(v31);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }

  v33 = CMMBase::NewInternal(0x38, *(a1 + 8), v26, v27);
  CMMProfileInfoContainer::CMMProfileInfoContainer(v33, v28, 0, *(a1 + 8));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v34 = *(a1 + 8);
  v39 = &unk_1F0E09FB0;
  v40 = v34;
  ConversionSequence = ConversionManager::MakeConversionSequence(&v39, v33, 0, 0);
  *a6 = CMMProfileInfoContainer::GetMaxNofChannels(v33);
  (*(*v33 + 8))(v33);
  CFRelease(v13);
  if (v28)
  {
    CFRelease(v28);
  }

  ConversionManager::~ConversionManager(&v39);
  v36 = *MEMORY[0x1E69E9840];
  return ConversionSequence;
}

void sub_19A95FECC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ConversionManager::~ConversionManager(&a9);
  if (a2 == 1)
  {
    v13 = *__cxa_begin_catch(a1);
    CFRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v13;
  }

  _Unwind_Resume(a1);
}

void *ConversionManager::AddEXRToneMapping(ConversionManager *this, CFDictionaryRef theDict, int a3)
{
  result = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMaping");
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v7 != result)
  {
    return result;
  }

  result = CFDictionaryGetValue(v6, @"com.apple.cmm.ApplyEXRToneMappingGamma");
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v9 != result)
  {
    return result;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFDictionaryGetTypeID())
  {
    v8 = 0;
  }

  v11 = 0.0;
  float_for_key = get_float_for_key(v8, @"com.apple.cmm.ToneMappingGammaDefog", 0.0);
  v13 = 0.01;
  if (float_for_key <= 0.01)
  {
    v13 = float_for_key;
  }

  if (float_for_key >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v63 = v14;
  v15 = get_float_for_key(v8, @"com.apple.cmm.ToneMappingGammaExposure", 0.0);
  v16 = 10.0;
  if (v15 <= 10.0)
  {
    v16 = v15;
  }

  if (v15 >= -10.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = -10.0;
  }

  v62 = v17;
  v18 = get_float_for_key(v8, @"com.apple.cmm.ToneMappingGammaKneeLow", 0.0);
  v19 = 3.0;
  if (v18 <= 3.0)
  {
    v19 = v18;
  }

  if (v18 >= -2.85)
  {
    v20 = v19;
  }

  else
  {
    v20 = -2.85;
  }

  v21 = get_float_for_key(v8, @"com.apple.cmm.ToneMappingGammaKneeHigh", 5.0);
  v22 = 7.5;
  if (v21 <= 7.5)
  {
    v22 = v21;
  }

  if (v21 >= 3.5)
  {
    v23 = v22;
  }

  else
  {
    v23 = 3.5;
  }

  *(&v69 + 1) = 0;
  v68 = &unk_1F0E0A2A8;
  v24 = exp2f(v20);
  v25 = exp2f(v23) - v24;
  v26 = 11.314 - v24;
  v27 = 1.0;
  if (logf(v25 + 1.0) > (11.314 - v24))
  {
    do
    {
      v11 = v27;
      v27 = v27 + v27;
    }

    while ((logf((v25 * v27) + 1.0) / v27) > v26);
  }

  v28 = 30;
  do
  {
    if ((logf((v25 * ((v11 + v27) * 0.5)) + 1.0) / ((v11 + v27) * 0.5)) >= v26)
    {
      v11 = (v11 + v27) * 0.5;
    }

    else
    {
      v27 = (v11 + v27) * 0.5;
    }

    --v28;
  }

  while (v28);
  v29 = v62 + 2.47393;
  *&v69 = 0x1000000001;
  HIDWORD(v69) = 9;
  *&v70 = 0;
  *(&v70 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(exp2f(v29)), LODWORD(v63));
  *&v71 = v24;
  *(&v71 + 1) = (v27 + v11) * 0.5;
  *(&v71 + 1) = 0x3DB504F33F800000;
  v72 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  LODWORD(v64) = 1;
  v30 = *(this + 1);
  v33 = CMMBase::NewInternal(0x28, v30, v31, v32);
  *v33 = &unk_1F0E09180;
  v33[1] = 1;
  v33[3] = 0;
  v33[4] = 21512;
  v36 = CMMBase::NewInternal(0x5408, v30, v34, v35);
  v33[2] = v36;
  v37 = CMMTable::UInt8Data(v36, v33[3]);
  v38 = 0;
  v39 = *(&v70 + 2);
  v40 = *(&v70 + 3);
  v41 = *&v71;
  v42 = *(&v71 + 1);
  v43 = *(&v71 + 2);
  v44 = *(&v71 + 3);
  v45 = v37;
  do
  {
    v46 = vcvtd_n_f64_u32(v38, 0x18uLL) - v39;
    if (v46 < 0.0)
    {
      v46 = 0.0;
    }

    v47 = v46 * v40;
    if (v47 > v41)
    {
      v47 = log((v47 - v41) * v42 + 1.0) / v42 + v41;
    }

    v48 = pow(v47, v43) * v44;
    v49 = 0.0;
    if (fabs(v48) == INFINITY || v48 >= 0.0 && (v49 = v48, v48 > 1.0))
    {
      v49 = 1.0;
    }

    v50 = vcvtmd_s64_f64(v49 * 16777216.0 + 0.5);
    *v45 = v50;
    v51 = 0x1000000;
    if (v50 <= 0x1000000)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v51 = 0;
    }

    *v45 = v51;
LABEL_47:
    v38 += 4096;
    ++v45;
  }

  while (v38 != 16781312);
  v52 = v37[4096];
  v53 = v37[1] - *v37;
  if (v53 < 0)
  {
    v53 = *v37 - v37[1];
  }

  if (v53 < 0x1000)
  {
    v37[1] = *v37;
  }

  v54 = v52 - v37[4095];
  if (v54 < 0)
  {
    v54 = v37[4095] - v52;
  }

  if (v54 <= 0xFFF)
  {
    v37[4095] = v52;
  }

  v64 = v69;
  v65 = v70;
  v66 = v71;
  v67 = v72;
  v55 = CMMTable::UInt8Data(v33[2], v33[3]);
  MakeLookups(v55);
  v58 = 0;
  do
  {
    v59 = CMMBase::NewInternal(0xB0, *(this + 1), v56, v57);
    result = CMMConvTRC::CMMConvTRC(v59, v58, v33, 0, &v64, *(this + 3), a3, 1, 1.0, 1, 1);
    *result = &unk_1F0E06EB0;
    result[21] = 0;
    *(result + 35) = 256;
    *(this + 3) = result;
    if (!*(this + 2))
    {
      *(this + 2) = result;
    }

    ++v58;
  }

  while (a3 != v58);
  v60 = v33[1];
  if (v60)
  {
    v61 = v60 - 1;
    v33[1] = v61;
    if (!v61)
    {
      return (*(*v33 + 8))(v33);
    }
  }

  return result;
}

float get_float_for_key(const __CFDictionary *a1, const __CFString *a2, float a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr) != 1)
        {
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        return valuePtr;
      }
    }
  }

  return v3;
}

BOOL CMMLutTag::HasCLUT(CMMLutTag *this)
{
  if (!*(this + 13))
  {
    return 0;
  }

  if ((*(*this + 64))(this) > 2 || (*(*this + 64))(this) != 2 || *(this + 50) != 3 || *(this + 51) != 3)
  {
    return 1;
  }

  v2 = *(this + 13);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (*(this + 92) == 1)
  {
    v5 = CMMTable::UInt8Data(v3, v4);
    v6 = 16711935;
    v7 = bswap64(*v5);
    if (v7 == 16711935 && (v6 = 0xFFFFFF0000FFLL, v7 = bswap64(v5[1]), v7 == 0xFFFFFF0000FFLL) && (v7 = bswap64(v5[2]), v6 = 0xFFFFFF00FFFFFFLL, v7 == 0xFFFFFF00FFFFFFLL))
    {
      v8 = 0;
    }

    else if (v7 < v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v10 = CMMTable::UInt8Data(v3, v4);
    v8 = memcmp(v10, &k3x3LinearCLUT16bit, 0x30uLL);
  }

  return v8 != 0;
}

void *ConversionManager::AddScalingDownFloatXYZ(ConversionManager *this, char a2, CMMMemMgr *a3, const char *a4)
{
  result = CMMBase::NewInternal(0x38, *(this + 1), a3, a4);
  v7 = *(this + 3);
  *(result + 2) = 1;
  result[2] = 0;
  result[3] = v7;
  if (v7)
  {
    *(v7 + 16) = result;
  }

  result[5] = 0x3FFFFF0000000000;
  *(result + 34) = 0;
  *result = &unk_1F0E0A168;
  *(result + 12) = 1056964736;
  *(result + 35) = a2;
  *(result + 36) = 0;
  *(result + 16) = 256;
  *(this + 3) = result;
  if (!*(this + 2))
  {
    *(this + 2) = result;
  }

  return result;
}

void *ConversionManager::AddScalingUpFloatXYZ(ConversionManager *this, BOOL a2, CMMMemMgr *a3, const char *a4)
{
  result = CMMBase::NewInternal(0x38, *(this + 1), a3, a4);
  v6 = *(this + 3);
  *(result + 2) = 1;
  result[2] = 0;
  result[3] = v6;
  if (v6)
  {
    *(v6 + 16) = result;
  }

  result[5] = 0x3FFFFF0000000000;
  *result = &unk_1F0E0A168;
  *(result + 12) = 1073741568;
  *(result + 36) = 0;
  *(result + 8) = 256;
  *(this + 3) = result;
  if (!*(this + 2))
  {
    *(this + 2) = result;
  }

  return result;
}

CFMutableDictionaryRef CMMConvScaleFloatXYZ::FlattenConversion(CMMConvScaleFloatXYZ *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v4 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v5 = CFNumberCreate(0, kCFNumberFloat32Type, this + 48);
  valuePtr = 0;
  v6 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v6 != 0)
  {
    v10 = 0;
    v11 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v12 = CFArrayCreateMutable(0, 0, v11);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = 3;
      do
      {
        if (v10 + v14 == 3)
        {
          v15 = v5;
        }

        else
        {
          v15 = v7;
        }

        CFArrayAppendValue(v13, v15);
        --v14;
      }

      while (v14);
      CFArrayAppendValue(v13, v7);
      CFArrayAppendValue(v4, v13);
      CFRelease(v13);
      if (++v10 == 3)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v4);
LABEL_21:
    CFRelease(Mutable);
    Mutable = 0;
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (!v4)
  {
    goto LABEL_21;
  }

  CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v4);
  CFRelease(v4);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v16, *(this + 10), *(this + 11));
  CMMConvNode::AddClampingInfo(this, Mutable);
  if (v5)
  {
LABEL_22:
    CFRelease(v5);
  }

LABEL_23:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

void CMMConvScaleFloatXYZ::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvScaleFloatXYZ::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float32_t CMMConvScaleFloatXYZ::Convert(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v7 = *(a1 + 48);
      result = v6->f32[v5] * v7;
      *a2 = vmul_n_f32(*a2, v7);
      v6->f32[v5] = result;
      v5 += a4;
      a2 = (a2 + 4 * a4);
    }

    while (v5 < a5 * a4);
  }

  return result;
}