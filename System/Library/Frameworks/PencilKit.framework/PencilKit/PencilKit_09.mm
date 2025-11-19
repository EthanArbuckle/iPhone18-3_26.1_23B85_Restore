uint64_t PKProtobufUnknownFields::data(PKProtobufUnknownFields *this)
{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

BOOL PKProtobufUnknownFieldsCompare(void ***a1, void ***a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *v2;
    if (v6)
    {
      v7 = *v6 - v6[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = *v3;
    if (v8)
    {
      v9 = *v8 - v8[1];
    }

    else
    {
      v9 = 0;
    }

    if (v7 != v9)
    {
      return 0;
    }

    if (v6)
    {
      v10 = v6[1];
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if (v8)
      {
LABEL_14:
        v11 = v8[1];
        if (v6)
        {
LABEL_15:
          v12 = *v6 - v6[1];
          return memcmp(v10, v11, v12) == 0;
        }

LABEL_19:
        v12 = 0;
        return memcmp(v10, v11, v12) == 0;
      }
    }

    v11 = 0;
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  return result;
}

PB::Writer *std::unique_ptr<PB::Writer>::reset[abi:ne200100](PB::Writer **a1, PB::Writer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PB::Writer::~Writer(result);

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

double matrix4x4_rotation(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v8 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v8;
  v6 = vmuls_lane_f32(v5.f32[0], *v5.f32, 1);
  v5.f32[0] = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  v5.f32[1] = vmuls_lane_f32(v4.__sinval, v8, 2) + (v6 * (1.0 - v4.__cosval));
  return *v5.i64;
}

void sub_1C7F101E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F10598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C7F12C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a56, 8);
  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__24(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__24(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C7F14DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PKAutoRefineTaskManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F160D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7F161DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C7F163D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C7F165C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id _PKSignpostLog()
{
  if (_PKSignpostLog_onceToken != -1)
  {
    dispatch_once(&_PKSignpostLog_onceToken, &__block_literal_global_69);
  }

  v1 = _PKSignpostLog____PKSignpostLog;

  return v1;
}

void sub_1C7F1A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F1D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F1DCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKTextInputDescriptionForReserveSpaceState(unint64_t a1)
{
  if (a1 > 5)
  {
    return &stru_1F476BD20;
  }

  else
  {
    return off_1E82DB4E8[a1];
  }
}

void sub_1C7F21290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PK_UIApplicationIsSystemShell()
{
  if (PK_UIApplicationIsSystemShell_onceToken != -1)
  {
    dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
  }

  return PK_UIApplicationIsSystemShell___result;
}

void sub_1C7F242C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F25004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t versioned_document::Version::Version(uint64_t this)
{
  *this = &unk_1F476A888;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F476A888;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

void versioned_document::Version::~Version(void ***this)
{
  *this = &unk_1F476A888;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F476A888;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F476A888;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t versioned_document::Version::Version(uint64_t this, const versioned_document::Version *a2)
{
  *this = &unk_1F476A888;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    v3 = *(a2 + 5);
    *(this + 24) = 2;
    *(this + 20) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 24) = v2;
    *(this + 16) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t versioned_document::Version::operator=(uint64_t a1, const versioned_document::Version *a2)
{
  if (a1 != a2)
  {
    versioned_document::Version::Version(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v7 = &unk_1F476A888;
    v8 = v5;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v8, 0);
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t versioned_document::swap(uint64_t this, versioned_document::Version *a2, versioned_document::Version *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  return this;
}

uint64_t versioned_document::Version::Version(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476A888;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

{
  *a1 = &unk_1F476A888;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 8), v3);
  return a1;
}

uint64_t versioned_document::Version::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F476A888;
    v9 = 0;
    v11 = *(a2 + 24);
    *(a2 + 24) = 0;
    v10 = *(a2 + 16);
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v9, v3);
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v8 = &unk_1F476A888;
    v9 = v6;
    std::unique_ptr<PB::Data>::reset[abi:ne200100](&v9, 0);
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t versioned_document::Version::formatText(versioned_document::Version *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "minimumSupportedVersion");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "serializationVersion");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t versioned_document::Version::readFrom(versioned_document::Version *this, PB::Reader *a2)
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
        goto LABEL_65;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 24) |= 1u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v41 = 0;
          v42 = 0;
          v37 = 0;
          v43 = (v34 + v33);
          v18 = v32 >= v33;
          v44 = v32 - v33;
          if (!v18)
          {
            v44 = 0;
          }

          v45 = v33 + 1;
          while (1)
          {
            if (!v44)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v46 = *v43;
            *(a2 + 1) = v45;
            v37 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v43;
            --v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_47:
              LODWORD(v37) = 0;
              goto LABEL_60;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v37) = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(a2 + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 4) = v37;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v47 = 0;
          v48 = 0;
          v28 = 0;
          v49 = (v25 + v24);
          v18 = v23 >= v24;
          v50 = v23 - v24;
          if (!v18)
          {
            v50 = 0;
          }

          v51 = v24 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_63;
            }

            v52 = *v49;
            *(a2 + 1) = v51;
            v28 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_55:
              LODWORD(v28) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
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
              goto LABEL_55;
            }
          }
        }

LABEL_63:
        *(this + 5) = v28;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_65;
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

LABEL_65:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t versioned_document::Version::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL versioned_document::Version::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    if (PB::Data::operator==())
    {
      return 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }
  }

  return *(a2 + 8) == 0;
}

uint64_t versioned_document::Version::hash_value(versioned_document::Version *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 5);
    if (*(this + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 24))
    {
LABEL_3:
      v2 = *(this + 4);
      goto LABEL_6;
    }
  }

  v2 = 0;
LABEL_6:
  if (*(this + 1))
  {
    v3 = PBHashBytes();
  }

  else
  {
    v3 = 0;
  }

  return v2 ^ v1 ^ v3;
}

void sub_1C7F2A2C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7F2A624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  legacy_drawing::VectorTimestamp::~VectorTimestamp(&a9);

  _Unwind_Resume(a1);
}

void sub_1C7F2ABF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  PB::Writer::~Writer(va1);
  legacy_drawing::VectorTimestamp::~VectorTimestamp(va);
  _Unwind_Resume(a1);
}

id PKAccessibilitySystemDarkenedColor(void *a1)
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x1E69DC888] colorWithHue:v6 saturation:v5 brightness:v4 * 0.8 alpha:v3];

  return v1;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F2C110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<float>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 4 * v6);
    v11 = v4 + 4 * v6;
  }

  *(a1 + 8) = v11;
}

void sub_1C7F2DE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  _Unwind_Resume(a1);
}

void sub_1C7F314C4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<PKNamedShaderKey,PKMetalShader * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PKNamedShaderKey,PKMetalShader * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__149(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1C7F32C6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7F33AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<anonymous namespace::PKSixChannelShaderKey,PKMetalShader * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<anonymous namespace::PKSixChannelShaderKey,PKMetalShader * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<PKNamedShaderKey,PKMetalShader * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PKNamedShaderKey,PKMetalShader * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

double PK_convertRectFromCoordinateSpaceToCoordinateSpace(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v11 PK_convertRect:v12 toView:{a3, a4, a5, a6}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 PK_convertRect:v12 toCoordinateSpace:{a3, a4, a5, a6}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 PK_convertRect:v11 fromCoordinateSpace:{a3, a4, a5, a6}];
      }

      else
      {
        [v11 convertRect:v12 toCoordinateSpace:{a3, a4, a5, a6}];
      }
    }
  }

  v14 = v13;

  return v14;
}

double PK_transformToConvertFromCoordinateSpaceToCoordinateSpace@<D0>(void *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = a2;
  v8 = a1;
  [v8 convertPoint:v7 toCoordinateSpace:{v5, v6}];
  v10 = v9;
  v12 = v11;
  [v8 convertPoint:v7 toCoordinateSpace:{1.0, 0.0}];
  v14 = v13;
  v16 = v15;
  [v8 convertPoint:v7 toCoordinateSpace:{0.0, 1.0}];
  v18 = v17;
  v20 = v19;

  *a3 = v14 - v10;
  a3[1] = v16 - v12;
  result = v20 - v12;
  a3[2] = v18 - v10;
  a3[3] = v20 - v12;
  a3[4] = v10;
  a3[5] = v12;
  return result;
}

__CFString *PKTextInputDescriptionForResultCommandState(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_1F476BD20;
  }

  else
  {
    return off_1E82DB928[a1];
  }
}

__CFString *PKTextInputDescriptionForImmediateCommitType(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1F476BD20;
  }

  else
  {
    return off_1E82DB968[a1];
  }
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::VectorTimestampClockReplicaClock(uint64_t this)
{
  *this = &unk_1F476A998;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F476A998;
  *(this + 16) = 0;
  return this;
}

void legacy_drawing::VectorTimestampClockReplicaClock::~VectorTimestampClockReplicaClock(legacy_drawing::VectorTimestampClockReplicaClock *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::VectorTimestampClockReplicaClock(uint64_t this, const legacy_drawing::VectorTimestampClockReplicaClock *a2)
{
  *this = &unk_1F476A998;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 12) = v4;
  }

  return this;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::operator=(uint64_t a1, const legacy_drawing::VectorTimestampClockReplicaClock *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::VectorTimestampClockReplicaClock::VectorTimestampClockReplicaClock(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *legacy_drawing::swap(_DWORD *this, legacy_drawing::VectorTimestampClockReplicaClock *a2, legacy_drawing::VectorTimestampClockReplicaClock *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::VectorTimestampClockReplicaClock(uint64_t result, _DWORD *a2)
{
  *result = &unk_1F476A998;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = &unk_1F476A998;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F476A998;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::formatText(legacy_drawing::VectorTimestampClockReplicaClock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "clock");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "subclock");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::readFrom(legacy_drawing::VectorTimestampClockReplicaClock *this, PB::Reader *a2)
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 16) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_63:
          v3 = v50;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 3) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v26) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_59:
          v3 = v43;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 2) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
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
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL legacy_drawing::VectorTimestampClockReplicaClock::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t legacy_drawing::VectorTimestampClockReplicaClock::hash_value(legacy_drawing::VectorTimestampClockReplicaClock *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 2);
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 3);
  return v2 ^ v1;
}

uint64_t PKScreenshotsRedesign2025Enabled()
{
  if (qword_1ED6A5428 != -1)
  {
    dispatch_once(&qword_1ED6A5428, &__block_literal_global_75);
  }

  return _MergedGlobals_162;
}

uint64_t __PKScreenshotsRedesign2025Enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_162 = result;
  return result;
}

void sub_1C7F3D288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C7F3DEE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7F3DFC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7F3E744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    (*(*a20 + 40))(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F40BB0(_Unwind_Exception *a1, void *a2, void *a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PKFunctionIdentity::~PKFunctionIdentity(PKFunction *this)
{
  PKFunction::~PKFunction(this);

  JUMPOUT(0x1CCA6ECB0);
}

void sub_1C7F41B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F43200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKUUIDCompare(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = uuid_compare(a1, a2);
  if (v2 < 0)
  {
    return -1;
  }

  else
  {
    return v2 != 0;
  }
}

void sub_1C7F47C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  drawing::Drawing::~Drawing(&a9);

  _Unwind_Resume(a1);
}

id PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::Drawing>(uint64_t a1, char a2)
{
  v12 = -261852553;
  v11 = a2;
  v10 = 0;
  PB::Writer::Writer(&v8);
  (*(*a1 + 24))(a1, &v8);
  v3 = objc_alloc(MEMORY[0x1E695DF88]);
  v4 = [v3 initWithCapacity:v8 - v9 + 8];
  [v4 appendBytes:&v12 length:4];
  [v4 appendBytes:&v11 length:1];
  [v4 appendBytes:&v10 length:1];
  v7 = 8;
  [v4 appendBytes:&v7 length:2];
  [v4 appendBytes:v9 length:v8 - v9];
  v5 = [v4 copy];

  PB::Writer::~Writer(&v8);

  return v5;
}

void sub_1C7F480DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_1C7F4829C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  drawingV1::Drawing::~Drawing(&a9);

  _Unwind_Resume(a1);
}

void sub_1C7F48444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  legacy_drawing::Drawing::~Drawing(va);

  _Unwind_Resume(a1);
}

void *std::vector<PB::Data>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PB::Data>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C7F49C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PB::Data>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1C7F4A994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PB::Writer::~Writer((v2 - 40));
  drawingV1::Drawing::~Drawing(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<drawing::Stroke>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

id DKDStringFromAffineTransform(_OWORD *a1)
{
  v1 = a1[1];
  *&v4.a = *a1;
  *&v4.c = v1;
  *&v4.tx = a1[2];
  v2 = NSStringFromCGAffineTransform(&v4);

  return v2;
}

CGPath *DKDCreatePathFromTransformedRect(const CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGPathAddRect(Mutable, a1, v12);
  return Mutable;
}

float64x2_t DKDTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

CGAffineTransform *DKDAffineTransformShear@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  t1.a = 1.0;
  t1.b = a3;
  t1.c = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *&t1.d = _Q0;
  t1.ty = 1.0;
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  return CGAffineTransformConcat(a2, &t1, &v11);
}

long double DKDTransformAngle(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2) * 57.2957795;
}

double DKDTransformIsValid(uint64_t a1)
{
  v1 = fabs(*a1 * *(a1 + 24) - *(a1 + 8) * *(a1 + 16));
  result = 0.0;
  if (v1 >= 0.001 && *&v1 <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1.0;
  }

  return result;
}

CGAffineTransform *DKDTransformNormalizeScale@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL DKDIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL DKDIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL DKDIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *DKDAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x1E695EFD0];
  v14 = *MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *DKDTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *DKDTransformInTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *DKDTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *DKDTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v15 = a3 - a5;
  v16 = a4 - a6;
  v17 = sqrt(v16 * v16 + v15 * v15);
  if (v17 < 0.0001 || (v18 = a7 - a9, v19 = a8 - a10, v20 = sqrt(v19 * v19 + v18 * v18), v20 < 0.0001))
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    v22 = v20 / v17;
    v23 = atan2(v16, v15);
    v24 = atan2(v19, v18);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v23);
    v25 = *(a2 + 16);
    *&v35.a = *a2;
    *&v35.c = v25;
    *&v35.tx = *(a2 + 32);
    CGAffineTransformConcat(&v37, &v35, &t2);
    v26 = *&v37.c;
    *a2 = *&v37.a;
    *(a2 + 16) = v26;
    *(a2 + 32) = *&v37.tx;
    if (a1)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = v22;
    }

    CGAffineTransformMakeScale(&t2, v22, v27);
    v28 = *(a2 + 16);
    *&v35.a = *a2;
    *&v35.c = v28;
    *&v35.tx = *(a2 + 32);
    CGAffineTransformConcat(&v37, &v35, &t2);
    v29 = *&v37.c;
    *a2 = *&v37.a;
    *(a2 + 16) = v29;
    *(a2 + 32) = *&v37.tx;
    CGAffineTransformMakeRotation(&t2, v24);
    v30 = *(a2 + 16);
    *&v35.a = *a2;
    *&v35.c = v30;
    *&v35.tx = *(a2 + 32);
    CGAffineTransformConcat(&v37, &v35, &t2);
    v31 = *&v37.c;
    *a2 = *&v37.a;
    *(a2 + 16) = v31;
    *(a2 + 32) = *&v37.tx;
    CGAffineTransformMakeTranslation(&t2, a7, a8);
    v32 = *(a2 + 16);
    *&v35.a = *a2;
    *&v35.c = v32;
    *&v35.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v37, &v35, &t2);
    v34 = *&v37.c;
    *a2 = *&v37.a;
    *(a2 + 16) = v34;
    *(a2 + 32) = *&v37.tx;
  }

  return result;
}

CGFloat DKDTransformMakeAxisAligned@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sqrt((a3 - a5) * (a3 - a5) + (a2 - a4) * (a2 - a4));
  if (v15 < 0.0001 || (v18 = sqrt((a7 - a9) * (a7 - a9) + (a6 - a8) * (a6 - a8)), v18 < 0.0001))
  {
    v20 = a6 - a2;
    v21 = a7 - a3;

    CGAffineTransformMakeTranslation(a1, v20, v21);
  }

  else
  {
    v19 = v18 / v15;
    if (v18 / v15 >= *&a10)
    {
      if (v19 > *&a11)
      {
        v19 = *&a11 + (v19 - *&a11) * *&a12;
      }
    }

    else
    {
      v19 = (v19 - *&a10) * *&a12 * 0.5 + *&a10;
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    CGAffineTransformMakeTranslation(a1, (a2 + a4) * -0.5, (a3 + a5) * -0.5);
    CGAffineTransformMakeScale(&t2, v19, v19);
    v23 = *(a1 + 16);
    *&v27.a = *a1;
    *&v27.c = v23;
    *&v27.tx = *(a1 + 32);
    CGAffineTransformConcat(&v29, &v27, &t2);
    v24 = *&v29.c;
    *a1 = *&v29.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v29.tx;
    CGAffineTransformMakeTranslation(&t2, (a6 + a8) * 0.5, (a7 + a9) * 0.5);
    v25 = *(a1 + 16);
    *&v27.a = *a1;
    *&v27.c = v25;
    *&v27.tx = *(a1 + 32);
    CGAffineTransformConcat(&v29, &v27, &t2);
    v26 = *&v29.c;
    *a1 = *&v29.a;
    *(a1 + 16) = v26;
    result = v29.tx;
    *(a1 + 32) = *&v29.tx;
  }

  return result;
}

CGFloat DKDTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10)
{
  v11 = (a6 - a2) * a10;
  v12 = (a7 - a3) * a10;
  v13 = DKDMixSizes(1.0, 1.0, a8 / a4, a9 / a5, a10);
  v15 = v14;
  v16 = MEMORY[0x1E695EFD0];
  v17 = *MEMORY[0x1E695EFD0];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v18;
  v19 = *(v16 + 32);
  *(a1 + 32) = v19;
  *&v24.a = v17;
  *&v24.c = v18;
  *&v24.tx = v19;
  CGAffineTransformTranslate(a1, &v24, v11, v12);
  v20 = *(a1 + 16);
  *&v23.a = *a1;
  *&v23.c = v20;
  *&v23.tx = *(a1 + 32);
  CGAffineTransformScale(&v24, &v23, v13, v15);
  v21 = *&v24.c;
  *a1 = *&v24.a;
  *(a1 + 16) = v21;
  result = v24.tx;
  *(a1 + 32) = *&v24.tx;
  return result;
}

CGFloat DKD_CGAffineTransformCompose@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

double DKDTransformDecompose(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = a1[2];
  DKD_CGAffineTransformDecompose(v16, v17);
  v12 = v17[8];
  v13 = v17[1];
  v14 = v17[2];
  *a2 = v17[7];
  *a3 = v12;
  *a4 = v14;
  result = *v17;
  *a5 = v17[0];
  *a6 = v13;
  return result;
}

uint64_t DKDTransform3DDecompose(_OWORD *a1, CGFloat *a2, CGFloat *a3, CGFloat *a4, CGFloat *a5, CGFloat *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a1[5];
  *&v27.m31 = a1[4];
  *&v27.m33 = v12;
  v13 = a1[7];
  *&v27.m41 = a1[6];
  *&v27.m43 = v13;
  v14 = a1[1];
  *&v27.m11 = *a1;
  *&v27.m13 = v14;
  v15 = a1[3];
  *&v27.m21 = a1[2];
  *&v27.m23 = v15;
  v16 = MEMORY[0x1CCA6D6A0](&v27);
  if (v16)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = a1[5];
    *&v27.m31 = a1[4];
    *&v27.m33 = v17;
    v18 = a1[7];
    *&v27.m41 = a1[6];
    *&v27.m43 = v18;
    v19 = a1[1];
    *&v27.m11 = *a1;
    *&v27.m13 = v19;
    v20 = a1[3];
    *&v27.m21 = a1[2];
    *&v27.m23 = v20;
    CATransform3DGetAffineTransform(&v25, &v27);
    v26 = v25;
    DKD_CGAffineTransformDecompose(&v26, &v27);
    m31 = v27.m31;
    m12 = v27.m12;
    m13 = v27.m13;
    *a2 = v27.m24;
    *a3 = m31;
    *a4 = m13;
    *a5 = v27.m11;
    *a6 = m12;
  }

  return v16;
}

void DKDTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  DKD_CGAffineTransformDecompose(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  DKD_CGAffineTransformDecompose(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_1C801EB90[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  DKD_CGAffineTransformCompose(&v18, a3);
}

BOOL DKDTransform3DNearlyEqualToTransform(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return DKDTransform3DNearlyEqualToTransformWithTolerance(v12, v11, 0.01);
}

void sub_1C7F4E1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F4E53C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C7F4EBD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1C7F4F390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1C7F5081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void sub_1C7F5095C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void sub_1C7F50A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PKRulerExtremaFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v7 = [WeakRetained isSnappedToRuler];

  if (v7)
  {

    return PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(a1, a2, a3);
  }

  else
  {
    v9 = *(**(a1 + 8) + 24);

    return v9();
  }
}

void PKRulerExtremaFilter::run(PKRulerExtremaFilter *this)
{
  v1 = *(this + 5);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5) > v1)
  {
    if (v1 < 1 || *(this + 4) >= v1)
    {
      std::vector<_PKStrokePoint>::resize(this + 10, *(this + 9));
      v3 = *(this + 5);
    }

    else
    {
      std::vector<_PKStrokePoint>::resize(this + 10, 0);
      v3 = 0;
      *(this + 5) = 0;
      *(this + 9) = 0;
    }

    v4 = *(this + 6);
    if (v3 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v4) >> 5))
    {
      v5 = 96 * v3;
      while (1)
      {
        std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, (v4 + v5));
        if (PKRulerExtremaFilter::isReversal(this))
        {
          v6 = *(this + 11);
          *(this + 11) = v6 - 96;
          std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, (v6 - 192));
          std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, (*(this + 11) - 96));
          std::vector<_PKStrokePoint>::push_back[abi:ne200100](this + 80, (*(this + 6) + v5));
          v7 = *(this + 4);
          if (v3 < v7)
          {
            v8 = 3;
LABEL_13:
            *(this + 9) += v8;
          }
        }

        else
        {
          v7 = *(this + 4);
          if (v3 < v7)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        ++v3;
        v4 = *(this + 6);
        v5 += 96;
        if (v3 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v4) >> 5))
        {
          goto LABEL_17;
        }
      }
    }

    v7 = *(this + 4);
LABEL_17:
    *(this + 5) = v7;
  }
}

BOOL PKRulerExtremaFilter::isReversal(PKRulerExtremaFilter *this)
{
  v1 = *(this + 10);
  v2 = *(this + 11) - v1;
  if (0xAAAAAAAAAAAAAAABLL * (v2 >> 5) < 3)
  {
    return 0;
  }

  result = 0;
  v4 = v1 + v2;
  v5 = *(v4 - 184);
  v6 = *(v4 - 176);
  v7 = *(v4 - 280) - v5;
  v8 = *(v4 - 272) - v6;
  v9 = sqrt(v8 * v8 + v7 * v7);
  if (v9 >= 0.00001)
  {
    v10 = *(v4 - 88) - v5;
    v11 = *(v4 - 80) - v6;
    v12 = sqrt(v11 * v11 + v10 * v10);
    if (v12 >= 0.00001)
    {
      return v8 * (1.0 / v9) * (v11 * (1.0 / v12)) + v7 * (1.0 / v9) * (v10 * (1.0 / v12)) >= 0.9;
    }
  }

  return result;
}

void sub_1C7F524A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

uint64_t drawing::StrokeID::StrokeID(uint64_t this)
{
  *this = &unk_1F476AB50;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F476AB50;
  *(this + 32) = 0;
  return this;
}

void drawing::StrokeID::~StrokeID(drawing::StrokeID *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t drawing::StrokeID::StrokeID(uint64_t this, const drawing::StrokeID *a2)
{
  *this = &unk_1F476AB50;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 32) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t drawing::StrokeID::operator=(uint64_t a1, const drawing::StrokeID *a2)
{
  if (a1 != a2)
  {
    drawing::StrokeID::StrokeID(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t drawing::swap(uint64_t this, drawing::StrokeID *a2, drawing::StrokeID *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t drawing::StrokeID::StrokeID(uint64_t result, uint64_t a2)
{
  *result = &unk_1F476AB50;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_1F476AB50;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t drawing::StrokeID::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F476AB50;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v6;
    v10 = v5;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t drawing::StrokeID::formatText(drawing::StrokeID *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "clock");
    v5 = *(this + 32);
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

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "replicaIndex");
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "subclock");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::StrokeID::readFrom(drawing::StrokeID *this, PB::Reader *a2)
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
        *(this + 32) |= 4u;
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
              v43 = 0;
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
              v43 = 0;
              goto LABEL_83;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
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
              v43 = 0;
              break;
            }
          }
        }

LABEL_84:
        *(this + 3) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 32) |= 2u;
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
              v35 = 0;
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
              v35 = 0;
              goto LABEL_79;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
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
              v35 = 0;
              break;
            }
          }
        }

LABEL_80:
        *(this + 2) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 32) |= 1u;
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
              v27 = 0;
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
              v27 = 0;
              goto LABEL_87;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_88:
        *(this + 1) = v27;
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

uint64_t drawing::StrokeID::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return PB::Writer::writeVarInt(a2);
}

BOOL drawing::StrokeID::operator==(uint64_t a1, uint64_t a2)
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
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 4) == 0;
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*(a2 + 32) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t drawing::StrokeID::hash_value(drawing::StrokeID *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 1);
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 2);
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

void sub_1C7F54F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F5515C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7F55334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKAutoRefineQuery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<CGRect>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C7F56AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t drawing::StrokeData::StrokeData(uint64_t this)
{
  *this = &unk_1F476ABC0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 92) = 0;
  *(this + 84) = 0;
  *(this + 100) = 0;
  return this;
}

{
  *this = &unk_1F476ABC0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 64) = 0;
  *(this + 92) = 0;
  *(this + 84) = 0;
  *(this + 100) = 0;
  return this;
}

void drawing::StrokeData::~StrokeData(drawing::StrokeData *this)
{
  *this = &unk_1F476ABC0;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 8, 0);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 3, 0);

  PB::Base::~Base(this);
}

{
  drawing::StrokeData::~StrokeData(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawing::StrokeData *drawing::StrokeData::StrokeData(drawing::StrokeData *this, const drawing::StrokeData *a2)
{
  *this = &unk_1F476ABC0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v4 = *(a2 + 11);
  v5 = *(a2 + 12);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v6 = *(this + 12);
    *(this + 11) = v4;
    *(this + 12) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(this + 11) = v4;
    *(this + 12) = 0;
  }

  *(this + 21) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v7 = *(a2 + 84);
  if ((v7 & 0x20) != 0)
  {
    v12 = *(a2 + 9);
    *(this + 84) |= 0x20u;
    *(this + 9) = v12;
    v7 = *(a2 + 84);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a2 + 84) & 4) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 4);
  *(this + 84) |= 4u;
  *(this + 4) = v13;
  v7 = *(a2 + 84);
  if ((v7 & 8) == 0)
  {
LABEL_10:
    if ((v7 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v14 = *(a2 + 6);
  *(this + 84) |= 8u;
  *(this + 6) = v14;
  if ((*(a2 + 84) & 2) != 0)
  {
LABEL_11:
    v8 = *(a2 + 2);
    *(this + 84) |= 2u;
    *(this + 2) = v8;
  }

LABEL_12:
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  v9 = *(a2 + 84);
  if ((v9 & 0x40) == 0)
  {
    if ((*(a2 + 84) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v16 = *(a2 + 1);
    *(this + 84) |= 1u;
    *(this + 1) = v16;
    if ((*(a2 + 84) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

  v15 = *(a2 + 80);
  *(this + 84) |= 0x40u;
  *(this + 80) = v15;
  v9 = *(a2 + 84);
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v9 & 0x10) != 0)
  {
LABEL_19:
    v10 = *(a2 + 7);
    *(this + 84) |= 0x10u;
    *(this + 7) = v10;
  }

  return this;
}

drawing *drawing::StrokeData::operator=(drawing *a1, const drawing::StrokeData *a2)
{
  if (a1 != a2)
  {
    drawing::StrokeData::StrokeData(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::StrokeData::~StrokeData(v5);
  }

  return a1;
}

double drawing::swap(drawing *this, drawing::StrokeData *a2, drawing::StrokeData *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 2);
  v9 = *(this + 3);
  v10 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v10;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  *(a2 + 2) = v8;
  *(a2 + 3) = v9;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  LOBYTE(v12) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  return result;
}

uint64_t drawing::StrokeData::StrokeData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476ABC0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *(a1 + 64) = 0;
  v6 = (a1 + 64);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v7 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v8 = *(a1 + 96);
  *(a1 + 88) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = 0;
  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v6, v9);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v10 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 24) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v4, v10);
  v11 = *(a2 + 40);
  *(a2 + 40) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v5, v11);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

drawing *drawing::StrokeData::operator=(drawing *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawing::StrokeData::StrokeData(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::StrokeData::~StrokeData(v5);
  }

  return a1;
}

uint64_t drawing::StrokeData::formatText(drawing::StrokeData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 84);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "createdWithFinger");
    v5 = *(this + 84);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 84) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "immutablePointsCount");
  if ((*(this + 84) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "pointsConstantFlags");
  }

LABEL_5:
  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 84) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "pointsCount");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 84);
  if ((v6 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "pointsFlags");
    v6 = *(this + 84);
  }

  if ((v6 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "startIndex");
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 84) & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 9));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::StrokeData::readFrom(drawing::StrokeData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  for (i = *(a2 + 24); v2 < v3 && (*(a2 + 24) & 1) == 0; i = *(a2 + 24))
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
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
LABEL_17:
          v22 = 0;
          LODWORD(v23) = 0;
          goto LABEL_18;
        }
      }

      i = 1;
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

LABEL_22:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      i = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v23 <= 7)
      {
        if (v23 == 6)
        {
          operator new();
        }

        if (v23 == 7)
        {
          operator new();
        }
      }

      else
      {
        switch(v23)
        {
          case 8:
            *(this + 84) |= 0x40u;
            v53 = *(a2 + 1);
            if (v53 >= *(a2 + 2))
            {
              v56 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v54 = v53 + 1;
              v55 = *(*a2 + v53);
              *(a2 + 1) = v54;
              v56 = v55 != 0;
            }

            *(this + 80) = v56;
            goto LABEL_142;
          case 9:
            *(this + 84) |= 1u;
            v67 = *(a2 + 1);
            v66 = *(a2 + 2);
            v68 = *a2;
            if (v67 > 0xFFFFFFFFFFFFFFF5 || v67 + 10 > v66)
            {
              v99 = 0;
              v100 = 0;
              v71 = 0;
              v101 = (v68 + v67);
              v18 = v66 >= v67;
              v102 = v66 - v67;
              if (!v18)
              {
                v102 = 0;
              }

              v103 = v67 + 1;
              while (1)
              {
                if (!v102)
                {
                  v71 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_141;
                }

                v104 = *v101;
                *(a2 + 1) = v103;
                v71 |= (v104 & 0x7F) << v99;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                ++v101;
                --v102;
                ++v103;
                v14 = v100++ > 8;
                if (v14)
                {
LABEL_118:
                  v71 = 0;
                  goto LABEL_141;
                }
              }

              if (*(a2 + 24))
              {
                v71 = 0;
              }
            }

            else
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = (v68 + v67);
              v73 = v67 + 1;
              while (1)
              {
                *(a2 + 1) = v73;
                v74 = *v72++;
                v71 |= (v74 & 0x7F) << v69;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                ++v73;
                v14 = v70++ > 8;
                if (v14)
                {
                  goto LABEL_118;
                }
              }
            }

LABEL_141:
            *(this + 1) = v71;
            goto LABEL_142;
          case 0xA:
            *(this + 84) |= 0x10u;
            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            v36 = *a2;
            if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34)
            {
              v87 = 0;
              v88 = 0;
              v39 = 0;
              v89 = (v36 + v35);
              v18 = v34 >= v35;
              v90 = v34 - v35;
              if (!v18)
              {
                v90 = 0;
              }

              v91 = v35 + 1;
              while (1)
              {
                if (!v90)
                {
                  v39 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_135;
                }

                v92 = *v89;
                *(a2 + 1) = v91;
                v39 |= (v92 & 0x7F) << v87;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                ++v89;
                --v90;
                ++v91;
                v14 = v88++ > 8;
                if (v14)
                {
LABEL_102:
                  v39 = 0;
                  goto LABEL_135;
                }
              }

              if (*(a2 + 24))
              {
                v39 = 0;
              }
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = (v36 + v35);
              v41 = v35 + 1;
              while (1)
              {
                *(a2 + 1) = v41;
                v42 = *v40++;
                v39 |= (v42 & 0x7F) << v37;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                ++v41;
                v14 = v38++ > 8;
                if (v14)
                {
                  goto LABEL_102;
                }
              }
            }

LABEL_135:
            *(this + 7) = v39;
            goto LABEL_142;
        }
      }
    }

    else if (v23 <= 2)
    {
      if (v23 == 1)
      {
        operator new();
      }

      if (v23 == 2)
      {
        *(this + 84) |= 0x20u;
        v43 = *(a2 + 1);
        if (v43 <= 0xFFFFFFFFFFFFFFF7 && v43 + 8 <= *(a2 + 2))
        {
          *(this + 9) = *(*a2 + v43);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_142;
      }
    }

    else
    {
      switch(v23)
      {
        case 3:
          *(this + 84) |= 4u;
          v45 = *(a2 + 1);
          v44 = *(a2 + 2);
          v46 = *a2;
          if (v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v44)
          {
            v75 = 0;
            v76 = 0;
            v49 = 0;
            v77 = (v46 + v45);
            v18 = v44 >= v45;
            v78 = v44 - v45;
            if (!v18)
            {
              v78 = 0;
            }

            v79 = v45 + 1;
            while (1)
            {
              if (!v78)
              {
                v49 = 0;
                *(a2 + 24) = 1;
                goto LABEL_129;
              }

              v80 = *v77;
              *(a2 + 1) = v79;
              v49 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              ++v77;
              --v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_86:
                v49 = 0;
                goto LABEL_129;
              }
            }

            if (*(a2 + 24))
            {
              v49 = 0;
            }
          }

          else
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            while (1)
            {
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
              if (v14)
              {
                goto LABEL_86;
              }
            }
          }

LABEL_129:
          *(this + 4) = v49;
          goto LABEL_142;
        case 4:
          *(this + 84) |= 8u;
          v58 = *(a2 + 1);
          v57 = *(a2 + 2);
          v59 = *a2;
          if (v58 > 0xFFFFFFFFFFFFFFF5 || v58 + 10 > v57)
          {
            v93 = 0;
            v94 = 0;
            v62 = 0;
            v95 = (v59 + v58);
            v18 = v57 >= v58;
            v96 = v57 - v58;
            if (!v18)
            {
              v96 = 0;
            }

            v97 = v58 + 1;
            while (1)
            {
              if (!v96)
              {
                v62 = 0;
                *(a2 + 24) = 1;
                goto LABEL_138;
              }

              v98 = *v95;
              *(a2 + 1) = v97;
              v62 |= (v98 & 0x7F) << v93;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v93 += 7;
              ++v95;
              --v96;
              ++v97;
              v14 = v94++ > 8;
              if (v14)
              {
LABEL_110:
                v62 = 0;
                goto LABEL_138;
              }
            }

            if (*(a2 + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            while (1)
            {
              *(a2 + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
              if (v14)
              {
                goto LABEL_110;
              }
            }
          }

LABEL_138:
          *(this + 6) = v62;
          goto LABEL_142;
        case 5:
          *(this + 84) |= 2u;
          v26 = *(a2 + 1);
          v25 = *(a2 + 2);
          v27 = *a2;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
          {
            v81 = 0;
            v82 = 0;
            v30 = 0;
            v83 = (v27 + v26);
            v18 = v25 >= v26;
            v84 = v25 - v26;
            if (!v18)
            {
              v84 = 0;
            }

            v85 = v26 + 1;
            while (1)
            {
              if (!v84)
              {
                v30 = 0;
                *(a2 + 24) = 1;
                goto LABEL_132;
              }

              v86 = *v83;
              *(a2 + 1) = v85;
              v30 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              ++v83;
              --v84;
              ++v85;
              v14 = v82++ > 8;
              if (v14)
              {
LABEL_94:
                v30 = 0;
                goto LABEL_132;
              }
            }

            if (*(a2 + 24))
            {
              v30 = 0;
            }
          }

          else
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = (v27 + v26);
            v32 = v26 + 1;
            while (1)
            {
              *(a2 + 1) = v32;
              v33 = *v31++;
              v30 |= (v33 & 0x7F) << v28;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              ++v32;
              v14 = v29++ > 8;
              if (v14)
              {
                goto LABEL_94;
              }
            }
          }

LABEL_132:
          *(this + 2) = v30;
          goto LABEL_142;
      }
    }

LABEL_18:
    v24 = *(this + 11);
    if (!v24)
    {
      operator new();
    }

    if (!PKProtobufUnknownFields::add(v24, v23, v22, a2))
    {
      v106 = 0;
      return v106 & 1;
    }

LABEL_142:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
  }

  v106 = i ^ 1;
  return v106 & 1;
}

void sub_1C7F57C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PKProtobufUnknownFields>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void ***drawing::StrokeData::writeTo(drawing::StrokeData *this, PB::Writer *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    PB::Writer::write(a2, v4);
  }

  v5 = *(this + 84);
  if ((v5 & 0x20) != 0)
  {
    PB::Writer::write(a2, *(this + 9));
    v5 = *(this + 84);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_5;
  }

  PB::Writer::writeVarInt(a2);
  v5 = *(this + 84);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  PB::Writer::writeVarInt(a2);
  if ((*(this + 84) & 2) != 0)
  {
LABEL_7:
    PB::Writer::writeVarInt(a2);
  }

LABEL_8:
  v6 = *(this + 3);
  if (v6)
  {
    PB::Writer::write(a2, v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    PB::Writer::write(a2, v7);
  }

  v8 = *(this + 84);
  if ((v8 & 0x40) != 0)
  {
    PB::Writer::write(a2);
    v8 = *(this + 84);
    if ((v8 & 1) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 84) & 1) == 0)
  {
    goto LABEL_14;
  }

  PB::Writer::writeVarInt(a2);
  if ((*(this + 84) & 0x10) != 0)
  {
LABEL_15:
    PB::Writer::writeVarInt(a2);
  }

LABEL_16:
  result = *(this + 11);
  if (result)
  {

    return PKProtobufUnknownFields::writeTo(result, a2);
  }

  return result;
}

BOOL drawing::StrokeData::operator==(uint64_t a1, uint64_t a2)
{
  result = PKProtobufUnknownFieldsCompare((a1 + 88), (a2 + 88));
  if (result)
  {
    v5 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (!v5 || (PB::Data::operator==() & 1) == 0 && *(a1 + 64) | *(a2 + 64))
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    if ((*(a1 + 84) & 0x20) != 0)
    {
      if ((*(a2 + 84) & 0x20) == 0 || *(a1 + 72) != *(a2 + 72))
      {
        return 0;
      }
    }

    else if ((*(a2 + 84) & 0x20) != 0)
    {
      return 0;
    }

    if ((*(a1 + 84) & 4) != 0)
    {
      if ((*(a2 + 84) & 4) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if ((*(a2 + 84) & 4) != 0)
    {
      return 0;
    }

    if ((*(a1 + 84) & 8) != 0)
    {
      if ((*(a2 + 84) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if ((*(a2 + 84) & 8) != 0)
    {
      return 0;
    }

    if ((*(a1 + 84) & 2) != 0)
    {
      if ((*(a2 + 84) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }
    }

    else if ((*(a2 + 84) & 2) != 0)
    {
      return 0;
    }

    v6 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!v6 || (PB::Data::operator==() & 1) == 0 && *(a1 + 24) | *(a2 + 24))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v7 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!v7 || (PB::Data::operator==() & 1) == 0 && *(a1 + 40) | *(a2 + 40))
      {
        return 0;
      }

LABEL_40:
      if ((*(a1 + 84) & 0x40) != 0)
      {
        if ((*(a2 + 84) & 0x40) == 0 || *(a1 + 80) != *(a2 + 80))
        {
          return 0;
        }
      }

      else if ((*(a2 + 84) & 0x40) != 0)
      {
        return 0;
      }

      if (*(a1 + 84))
      {
        if ((*(a2 + 84) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
        {
          return 0;
        }
      }

      else if (*(a2 + 84))
      {
        return 0;
      }

      result = (*(a2 + 84) & 0x10) == 0;
      if ((*(a1 + 84) & 0x10) == 0)
      {
        return result;
      }

      return (*(a2 + 84) & 0x10) != 0 && *(a1 + 56) == *(a2 + 56);
    }

    if (!v7)
    {
      goto LABEL_40;
    }

    return 0;
  }

  return result;
}

uint64_t drawing::StrokeData::hash_value(drawing::StrokeData *this)
{
  if (*(this + 8))
  {
    v2 = PBHashBytes();
  }

  else
  {
    v2 = 0;
  }

  if ((*(this + 84) & 0x20) != 0)
  {
    if (*(this + 9) == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 9);
    }

    if ((*(this + 84) & 4) != 0)
    {
LABEL_6:
      v4 = *(this + 4);
      if ((*(this + 84) & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v5 = 0;
      if ((*(this + 84) & 2) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 84) & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  if ((*(this + 84) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v5 = *(this + 6);
  if ((*(this + 84) & 2) != 0)
  {
LABEL_8:
    v6 = *(this + 2);
    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
LABEL_16:
  if (*(this + 3))
  {
    v7 = PBHashBytes();
  }

  else
  {
    v7 = 0;
  }

  if (*(this + 5))
  {
    v8 = PBHashBytes();
  }

  else
  {
    v8 = 0;
  }

  if ((*(this + 84) & 0x40) == 0)
  {
    v9 = 0;
    if (*(this + 84))
    {
      goto LABEL_24;
    }

LABEL_27:
    v10 = 0;
    if ((*(this + 84) & 0x10) != 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    v11 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v9 = *(this + 80);
  if ((*(this + 84) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v10 = *(this + 1);
  if ((*(this + 84) & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v11 = *(this + 7);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

void sub_1C7F59F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__30(uint64_t a1)
{
}

{
}

void sub_1C7F5BB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F5BF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F5C2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F5C6E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7F5CB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKRecognitionSessionManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7F5CD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C7F5D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id drawingStrokesFromStrokes(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) _strokeUUID];
          v11 = [v4 _visibleStrokeForIdentifier:v10];

          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1C7F5FA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v23 = v22;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F5FC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v22 = v21;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F5FE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C7F634D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  objc_destroyWeak((v17 + 56));

  _Unwind_Resume(a1);
}

void sub_1C7F65398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C7F66130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1C7F67374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, id a17)
{
  v21 = v20;

  a9.super_class = PKRendererTile;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7F6804C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1C7F681F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1C7F6A310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PKFountainPenFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v9 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v9, a3, a4);
  *(a1 + 104) = a3;
  v7 = [v9 _isFountainPenInkV2];
  if (a3 == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 112) = v8;
}

void PKFountainPenFilter::run(PKFountainPenFilter *this)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5);
  std::vector<_PKStrokePoint>::resize(this + 10, v2);
  v3 = *(this + 9);
  if (*(this + 112))
  {
    if (v2 > v3)
    {
      v4 = *(this + 10);
      v5 = 96 * v3;
      do
      {
        v6 = (*(this + 6) + v5);
        v7 = (v4 + v5);
        v8 = v6[1];
        *v7 = *v6;
        v7[1] = v8;
        v9 = v6[2];
        v10 = v6[3];
        v11 = v6[5];
        v7[4] = v6[4];
        v7[5] = v11;
        v7[2] = v9;
        v7[3] = v10;
        v4 = *(this + 10);
        *(v4 + v5 + 80) = 0x3FF0000000000000;
        if (v3 >= 1 && v3 < v2 - 1)
        {
          DKDDiffAngleInRadians(*(*(this + 6) + v5 + 56), *(*(this + 6) + v5 + 152));
          *&v12 = v12;
          v13 = (fabsf(*&v12) + -0.75) / -0.699999999;
          v14 = 0.0;
          if (v13 >= 0.0)
          {
            v14 = v13;
            if (v13 > 1.0)
            {
              v14 = 1.0;
            }
          }

          v15 = v14;
          *(v4 + v5 + 80) = v15;
        }

        ++v3;
        v5 += 96;
      }

      while (v2 != v3);
    }

    if (*(this + 4) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(this + 4);
    }

    v17 = v16 - 1;
    if (*(this + 16))
    {
      v18 = *(this + 4);
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v19 = v2 - v3;
    if (v2 > v3)
    {
      v20 = 96 * v3;
      do
      {
        v21 = (*(this + 6) + v20);
        v22 = (*(this + 10) + v20);
        v23 = v21[5];
        v25 = v21[2];
        v24 = v21[3];
        v22[4] = v21[4];
        v22[5] = v23;
        v22[2] = v25;
        v22[3] = v24;
        v26 = v21[1];
        *v22 = *v21;
        v22[1] = v26;
        v20 += 96;
        --v19;
      }

      while (v19);
    }

    v18 = *(this + 4);
  }

  *(this + 9) = v18;
}

uint64_t PKFountainPenFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 112) == 1)
  {
    return PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(a1, a2, a3);
  }

  else
  {
    return (*(**(a1 + 8) + 24))();
  }
}

void sub_1C7F6D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPNPWelcomeControllerClass_block_invoke(uint64_t a1)
{
  PencilPairingUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PNPWelcomeController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_163 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    PencilPairingUILibrary();
  }
}

void PencilPairingUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PencilPairingUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PencilPairingUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E82DC050;
    v3 = 0;
    PencilPairingUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (PencilPairingUILibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __PencilPairingUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PencilPairingUILibraryCore_frameworkLibrary = result;
  return result;
}

PKPaletteContainerView *__getPNPWizardViewControllerClass_block_invoke(uint64_t a1)
{
  PencilPairingUILibrary();
  result = objc_getClass("PNPWizardViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED6A5438 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(PKPaletteContainerView *)v3 initWithFrame:v4, v5];
  }

  return result;
}

void sub_1C7F73B98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C7F73DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F74090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F744CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKLassoRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7F74B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, id a37, id a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  objc_destroyWeak((v52 + 56));
  objc_destroyWeak((v55 + 48));
  objc_destroyWeak((v55 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a38);
  _Block_object_dispose(&a39, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  if (__p)
  {
    a49 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F74E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7F75274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v17 = v14;

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__33(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__33(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C7F75428(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  objc_destroyWeak(v1 + 4);
  _Unwind_Resume(a1);
}

void sub_1C7F75EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F762AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKPaletteToolEqualTools(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 toolIdentifier];
  v6 = [v4 toolIdentifier];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = 0;
    if (!v7 || !v8)
    {
      v20 = v8;
      v21 = v7;
LABEL_25:

      v9 = v20;
      v7 = v21;
LABEL_26:

      goto LABEL_27;
    }

    v10 = [v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_26;
    }
  }

  v11 = [v3 configuration];
  v12 = [v4 configuration];
  v13 = v11;
  v14 = v12;
  if (v13 | v14)
  {
    v19 = v14;
    v10 = 0;
    if (!v13 || !v14)
    {
      v16 = v13;
LABEL_24:
      v21 = v7;
      v20 = v9;

      v9 = v19;
      v7 = v16;
      goto LABEL_25;
    }

    v22 = [v13 isEqual:v14];

    if ((v22 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ([v3 isInkingTool] && objc_msgSend(v4, "isInkingTool"))
  {
    v7 = [v3 inkingTool];
    v15 = [v7 ink];
    v16 = [v4 inkingTool];
    v17 = [v16 ink];
    v13 = v15;
    v18 = v17;
    if (v13 | v18)
    {
      v19 = v18;
      v10 = 0;
      if (v13 && v18)
      {
        v10 = [v13 isEqual:v18];
      }

      v9 = v13;
    }

    else
    {
      v19 = 0;
      v13 = 0;
      v9 = 0;
      v10 = 1;
    }

    goto LABEL_24;
  }

  v10 = 1;
LABEL_27:

  return v10;
}

void sub_1C7F77C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F798A8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F7A2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7AD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7B134(_Unwind_Exception *a1)
{
  v6 = *(v4 - 176);
  if (v6)
  {
    *(v4 - 168) = v6;
    operator delete(v6);
  }

  v7 = *(v4 - 152);
  if (v7)
  {
    *(v4 - 144) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7B3DC(_Unwind_Exception *a1)
{
  v6 = *(v4 - 144);
  if (v6)
  {
    *(v4 - 136) = v6;
    operator delete(v6);
  }

  v7 = *(v4 - 120);
  if (v7)
  {
    *(v4 - 112) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7B7A0(_Unwind_Exception *a1)
{
  v6 = *(v4 - 152);
  if (v6)
  {
    *(v4 - 144) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7BA2C(_Unwind_Exception *a1)
{
  v6 = *(v4 - 144);
  if (v6)
  {
    *(v4 - 136) = v6;
    operator delete(v6);
  }

  v7 = *(v4 - 120);
  if (v7)
  {
    *(v4 - 112) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7BCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7C048(_Unwind_Exception *a1)
{
  v6 = *(v4 - 136);
  if (v6)
  {
    *(v4 - 128) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7C7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7CC1C(_Unwind_Exception *a1)
{
  v6 = *(v4 - 184);
  if (v6)
  {
    *(v4 - 176) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7CFE0(_Unwind_Exception *a1)
{
  v6 = *(v4 - 168);
  if (v6)
  {
    *(v4 - 160) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1C7F7D2D0(_Unwind_Exception *a1)
{
  v6 = *(v4 - 152);
  if (v6)
  {
    *(v4 - 144) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void std::vector<TimestampedPoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TimestampedPoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<TimestampedAngles>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<TimestampedAngles>::__append(a1, a2 - v2);
  }
}

uint64_t PKDisableShapeRecognition(void)
{
  if (qword_1ED6A5480 != -1)
  {
    dispatch_once(&qword_1ED6A5480, &__block_literal_global_134);
  }

  return byte_1ED6A5441;
}

void ___Z25PKDisableShapeRecognitionv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1ED6A5441 = [v0 BOOLForKey:@"PKDisableShapeRecognition"];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TimestampedPoint>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TimestampedPoint>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = MEMORY[0x1E695EFF8];
      do
      {
        *v3 = *v10;
        *(v3 + 16) = 0;
        v3 += 24;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TimestampedPoint>>(v8);
    }

    v11 = 24 * v5;
    v12 = 24 * v5 + 24 * a2;
    v13 = MEMORY[0x1E695EFF8];
    v14 = v11;
    do
    {
      *v14 = *v13;
      *(v14 + 16) = 0;
      v14 += 24;
    }

    while (v14 != v12);
    v15 = *(a1 + 8) - *a1;
    v16 = v11 - v15;
    memcpy((v11 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::vector<TimestampedAngles>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PolarPoint>>(v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
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

double b(int a1, double a2)
{
  v2 = 0.0;
  if ((a1 & 0x80000000) == 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = a2 * a2 * a2;
        return v5 / 6.0;
      }

      return v2;
    }

    v3 = (a2 * -3.0 + 3.0) * a2 + 3.0;
LABEL_10:
    v4 = 1.0;
    goto LABEL_11;
  }

  if (a1 == -2)
  {
    v3 = (3.0 - a2) * a2 + -3.0;
    goto LABEL_10;
  }

  if (a1 == -1)
  {
    v3 = (a2 * 3.0 + -6.0) * a2;
    v4 = 4.0;
LABEL_11:
    v5 = v4 + v3 * a2;
    return v5 / 6.0;
  }

  return v2;
}

double b2(int a1, double a2)
{
  v2 = 0.0;
  if (a1 < 0)
  {
    if (a1 != -2)
    {
      if (a1 == -1)
      {
        return a2 * a2 * 0.5 + (a2 * 3.0 + -6.0) * a2 / 3.0;
      }

      return v2;
    }

    v3 = (a2 * -2.0 + 3.0) * a2 / 6.0 + (3.0 - a2) * a2 / 6.0;
    v4 = -0.5;
    return v3 + v4;
  }

  if (!a1)
  {
    __asm
    {
      FMOV            V2.2D, #3.0
      FMOV            V1.2D, #6.0
    }

    v3 = vaddvq_f64(vdivq_f64(vmulq_n_f64(vmlaq_n_f64(_Q2, xmmword_1C801EE40, a2), a2), _Q1));
    v4 = 0.5;
    return v3 + v4;
  }

  if (a1 == 1)
  {
    return a2 * a2 * 3.0 / 6.0;
  }

  return v2;
}

double b3(int a1, double result)
{
  if ((a1 & 0x80000000) == 0)
  {
    if (!a1)
    {
      v2 = 1.0;
      v3 = -3.0;
      return v2 + result * v3;
    }

    if (a1 == 1)
    {
      return result;
    }

    return 0.0;
  }

  if (a1 == -2)
  {
    return 1.0 - result;
  }

  if (a1 != -1)
  {
    return 0.0;
  }

  v2 = -2.0;
  v3 = 3.0;
  return v2 + result * v3;
}

double approximateSplineLength(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a1 + a3 * 2.0) * 0.333333333;
  v9 = (a2 + a4 * 2.0) * 0.333333333;
  v10 = (a8 + a6 * 2.0) * 0.333333333;
  v11 = (a5 + a3 * 2.0) * 0.333333333;
  v12 = (a6 + a4 * 2.0) * 0.333333333;
  v13 = (a3 + a5 * 2.0) * 0.333333333;
  v14 = (a4 + a6 * 2.0) * 0.333333333;
  v15 = (v8 + v11) * 0.5;
  v16 = (v9 + v12) * 0.5;
  v17 = (v13 + (a7 + a5 * 2.0) * 0.333333333) * 0.5;
  v18 = (v14 + v10) * 0.5;
  return (sqrt((v12 - v14) * (v12 - v14) + (v11 - v13) * (v11 - v13)) + sqrt((v16 - v12) * (v16 - v12) + (v15 - v11) * (v15 - v11)) + sqrt((v14 - v18) * (v14 - v18) + (v13 - v17) * (v13 - v17))) * 0.5 + sqrt((v16 - v18) * (v16 - v18) + (v15 - v17) * (v15 - v17)) * 0.5;
}

double splinePoint(void *a1, uint64_t a2, double (*a3)(void, double), double a4)
{
  v9 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = 96 * a2 - 88;
  v11 = -4;
  do
  {
    if (a2 + v11 + 2 > -2)
    {
      v14 = a2 + v11 + 3;
      v15 = a1[1];
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a1) >> 5);
      v17 = (v15 - 88);
      v18 = (v15 - 80);
      v19 = v14 >= v16;
      if (v14 >= v16)
      {
        v13 = v18;
      }

      else
      {
        v13 = (*a1 + v10 + 8);
      }

      if (v19)
      {
        v12 = v17;
      }

      else
      {
        v12 = (*a1 + v10);
      }
    }

    else
    {
      v12 = (*a1 + 8);
      v13 = (*a1 + 16);
    }

    v20 = *v12;
    v21 = *v13;
    v22 = a3((v11 + 2), a4);
    v9 = v9 + v22 * v20;
    v8 = v8 + v22 * v21;
    v10 += 96;
    v19 = __CFADD__(v11++, 1);
  }

  while (!v19);
  return v9;
}

double splinePoint(const PKStrokePathPointsPrivate *this, unint64_t a2, unint64_t a3, uint64_t a4, double a5, double (*a6)(int, double))
{
  if (a3 - a2 <= 1)
  {
    return PKStrokePathPointsPrivate::locationAtIndex(this, a2);
  }

  v8 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v34 = PKStrokePathPointsPrivate::locationAtIndex(this, a2);
  v15 = v14;
  v16 = PKStrokePathPointsPrivate::locationAtIndex(this, a2 + 1);
  v18 = v17;
  v19 = PKStrokePathPointsPrivate::locationAtIndex(this, a3 - 1);
  v21 = v20;
  v22 = -(v16 - v34 * 2.0);
  v23 = -(v18 - v15 * 2.0);
  v35 = -(PKStrokePathPointsPrivate::locationAtIndex(this, a3 - 2) - v19 * 2.0);
  v25 = -(v24 - v21 * 2.0);
  v26 = ~a4;
  v27 = a4 + a2 - 1;
  for (i = -2; i != 2; ++i)
  {
    v29 = v23;
    v30 = v22;
    if (i >= v26)
    {
      v29 = v25;
      v30 = v35;
      if (v27 < a3)
      {
        v30 = PKStrokePathPointsPrivate::locationAtIndex(this, v27);
        v29 = v31;
      }
    }

    v32 = a6(i, a5);
    v8 = v8 + v32 * v30;
    v13 = v13 + v32 * v29;
    ++v27;
  }

  return v8;
}

double splineSegmentLength(const PKStrokePathPointsPrivate *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3 - a2 < 2)
  {
    return 0.0;
  }

  if (a3 - a2 == 2)
  {
    v7 = PKStrokePathPointsPrivate::locationAtIndex(this, a2);
    v9 = v8;
    v10 = PKStrokePathPointsPrivate::locationAtIndex(this, a2 + 1);
    return sqrt((v9 - v11) * (v9 - v11) + (v7 - v10) * (v7 - v10));
  }

  else
  {
    if (a4)
    {
      if (a3 - 2 == a4)
      {
        v13 = PKStrokePathPointsPrivate::locationAtIndex(this, a3 - 1);
        v15 = v14;
        v16 = PKStrokePathPointsPrivate::locationAtIndex(this, a4);
        v18 = v17;
        v19 = -(v17 - v15 * 2.0);
        v20 = PKStrokePathPointsPrivate::locationAtIndex(this, a4 - 1);
        v22 = v16;
        v23 = v18;
        v24 = v13;
        v25 = v15;
        v26 = -(v16 - v13 * 2.0);
        v27 = v19;
      }

      else
      {
        v36 = PKStrokePathPointsPrivate::locationAtIndex(this, a4 - 1);
        v38 = v37;
        v39 = PKStrokePathPointsPrivate::locationAtIndex(this, a4);
        v41 = v40;
        v42 = PKStrokePathPointsPrivate::locationAtIndex(this, a4 + 1);
        v44 = v43;
        v26 = PKStrokePathPointsPrivate::locationAtIndex(this, a4 + 2);
        v27 = v45;
        v20 = v36;
        v21 = v38;
        v22 = v39;
        v23 = v41;
        v24 = v42;
        v25 = v44;
      }
    }

    else
    {
      v28 = PKStrokePathPointsPrivate::locationAtIndex(this, a2);
      v30 = v29;
      v31 = PKStrokePathPointsPrivate::locationAtIndex(this, a2 + 1);
      v33 = v32;
      v34 = -(v32 - v30 * 2.0);
      v26 = PKStrokePathPointsPrivate::locationAtIndex(this, 2uLL);
      v27 = v35;
      v20 = -(v31 - v28 * 2.0);
      v21 = v34;
      v22 = v28;
      v23 = v30;
      v24 = v31;
      v25 = v33;
    }

    return approximateSplineLength(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

float64x2_t PKSplinePointsToBezierPoints(float64x2_t *a1, CGPoint *a2)
{
  v2 = 0;
  v3 = &qword_1C801EE90;
  do
  {
    result = a1[2];
    a2[v2++] = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    ++v3;
  }

  while (v2 != 4);
  return result;
}

CGPath *PKCreateCGPathFromBSpline(PKStrokePathPointsPrivate *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  if (a2 < 2)
  {
    return Mutable;
  }

  v5 = 0;
  v6 = -1;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      v9 = v8 + 1;
      if (v8 == -1)
      {
        v10 = PKStrokePathPointsPrivate::locationAtIndex(a1, 0);
        v11 = v10 + v10;
        v13 = v12 + v12;
        v14 = a1;
        v15 = 1;
LABEL_8:
        v18 = v11 - PKStrokePathPointsPrivate::locationAtIndex(v14, v15);
        v20 = v13 - v19;
        goto LABEL_10;
      }

      if (a2 == v8)
      {
        v16 = PKStrokePathPointsPrivate::locationAtIndex(a1, a2 - 1);
        v11 = v16 + v16;
        v13 = v17 + v17;
        v14 = a1;
        v15 = a2 - 2;
        goto LABEL_8;
      }

      v18 = PKStrokePathPointsPrivate::locationAtIndex(a1, v8);
LABEL_10:
      v21 = &v30[v7];
      v21->x = v18;
      v21->y = v20;
      ++v7;
      v8 = v9;
    }

    while (v7 != 4);
    PKSplinePointsToBezierPoints(v30, &v23);
    if (!v5)
    {
      CGPathMoveToPoint(Mutable, 0, v23.x, v23.y);
    }

    CGPathAddCurveToPoint(Mutable, 0, v24, v25, v26, v27, v28, v29);
    ++v5;
    ++v6;
  }

  while (v5 != a2 - 1);
  return Mutable;
}

void sub_1C7F8B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F8B96C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id PencilKitBundle()
{
  if (qword_1ED6A54B8 != -1)
  {
    dispatch_once(&qword_1ED6A54B8, &__block_literal_global_86);
  }

  v1 = qword_1ED6A54B0;

  return v1;
}

void __PencilKitBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.PencilKit"];
  v1 = qword_1ED6A54B0;
  qword_1ED6A54B0 = v0;
}

id PKUIKitUserDefaults()
{
  if (qword_1ED6A54C8 != -1)
  {
    dispatch_once(&qword_1ED6A54C8, &__block_literal_global_9_0);
  }

  v1 = qword_1ED6A54C0;

  return v1;
}

void __PKUIKitUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
  v1 = qword_1ED6A54C0;
  qword_1ED6A54C0 = v0;
}

id PKUserDefaults()
{
  if (qword_1ED6A54D8 != -1)
  {
    dispatch_once(&qword_1ED6A54D8, &__block_literal_global_15_1);
  }

  v1 = qword_1ED6A54D0;

  return v1;
}

void __PKUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  v1 = qword_1ED6A54D0;
  qword_1ED6A54D0 = v0;
}

uint64_t PKIsQuickNoteWindowScene(void *a1)
{
  v1 = a1;
  if (v1 && PKIsPadDevice() && ([MEMORY[0x1E696AAE8] mainBundle], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"com.apple.mobilenotes"), v3, v2, v4))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = qword_1ED6A54F0;
    v13 = qword_1ED6A54F0;
    if (!qword_1ED6A54F0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getSBSUISystemNotesWindowSceneClass_block_invoke;
      v9[3] = &unk_1E82D6498;
      v9[4] = &v10;
      __getSBSUISystemNotesWindowSceneClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_1C7F8CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PKIsSmallestQuickNoteWindowScene(void *a1)
{
  v1 = a1;
  if (PKIsQuickNoteWindowScene(v1))
  {
    v2 = [v1 coordinateSpace];
    [v2 bounds];
    v4 = v3 <= 560.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void PKPerformOnMainThreadNextRunLoop(void *a1, int a2)
{
  v3 = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    PKPerformOnMainThread(v3);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKPerformOnMainThreadNextRunLoop_block_invoke;
    block[3] = &unk_1E82D6F70;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t PKIsiWork()
{
  if (qword_1ED6A54E0 != -1)
  {
    dispatch_once(&qword_1ED6A54E0, &__block_literal_global_22_0);
  }

  return _MergedGlobals_167;
}

void __PKIsiWork_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.Pages"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Keynote"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.Numbers"];
  }

  _MergedGlobals_167 = v1;
}

BOOL PKUseCompactSize(void *a1, void *a2)
{
  v3 = a1;
  v4 = (PKIsQuickNoteWindowScene(a2) & 1) != 0 || ![v3 userInterfaceIdiom] || objc_msgSend(v3, "horizontalSizeClass") == 1;

  return v4;
}

CGAffineTransform *PKCGAffineTransformRotateForEdge@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, CGAffineTransform *a3@<X8>)
{
  if (a2 > 3)
  {
    if (a2 == 8)
    {
      v5 = a1[1];
      *&v8.a = *a1;
      *&v8.c = v5;
      *&v8.tx = a1[2];
      v4 = -1.57079633;
      return CGAffineTransformRotate(a3, &v8, v4);
    }

LABEL_6:
    v6 = a1[1];
    *&v8.a = *a1;
    *&v8.c = v6;
    *&v8.tx = a1[2];
    v4 = 0.0;
    return CGAffineTransformRotate(a3, &v8, v4);
  }

  if (a2 != 2)
  {
    goto LABEL_6;
  }

  v3 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v3;
  *&v8.tx = a1[2];
  v4 = 1.57079633;
  return CGAffineTransformRotate(a3, &v8, v4);
}

uint64_t PKUIPopoverPermittedArrowDirectionsForEdge(uint64_t a1)
{
  if (PKIsVisionDevice())
  {
    if (a1 != 4)
    {
      v2 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_ERROR, "Unexpected edge to determine popover arrow directions on this platform.", v4, 2u);
      }
    }

    return 2;
  }

  else if ((a1 - 1) > 7)
  {
    return 15;
  }

  else
  {
    return qword_1C801EEE8[a1 - 1];
  }
}

uint64_t PKUIPopoverPermittedArrowDirectionsForCorner(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == -1)
    {
      a1 = 15;
    }

    else if (a1 != 1)
    {
      return 2;
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 4 || a1 == 8)
      {
        PKIsVisionDevice();
      }

      return 2;
    }

    a1 = 1;
  }

  return PKUIPopoverPermittedArrowDirectionsForEdge(a1);
}

uint64_t PKUIPopoverPermittedArrowDirections(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v5 = 2;
  if (a3)
  {
    v5 = 0;
  }

  if (a3 & 1) != 0 || (a4)
  {
    return v5;
  }

  if (a5)
  {
    return PKUIPopoverPermittedArrowDirectionsForCorner(a2);
  }

  return PKUIPopoverPermittedArrowDirectionsForEdge(a1);
}

uint64_t PKCurrentDeviceSupportsPencil()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 _supportsPencil];

  return v1;
}

BOOL PKCurrentDeviceSupportsAutoRefine()
{
  result = PKIsPadDevice();
  if (result)
  {
    return CHGetPersonalizedSynthesisSupportState() > 2;
  }

  return result;
}

uint64_t PKCurrentDeviceSupportsAutoRefineNotReady()
{
  v0 = CHGetPersonalizedSynthesisSupportState();
  LODWORD(result) = PKIsPadDevice();
  if ((v0 - 1) < 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL PKCurrentDeviceSupportsAutoRefineInitializing()
{
  result = PKIsPadDevice();
  if (result)
  {
    return CHGetPersonalizedSynthesisSupportState() == 2;
  }

  return result;
}

uint64_t PKCurrentAppSupportsRefinement()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobilenotes"];

  if (v2)
  {
    goto LABEL_12;
  }

  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"];

  if (v5)
  {
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  if ([v7 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
  {

LABEL_12:
    v29 = 1;
    return v29 & 1;
  }

  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.quicklook.UIExtension"];

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 isEqualToString:@"com.apple.Preferences"];

  if (v16)
  {
    goto LABEL_12;
  }

  v17 = [MEMORY[0x1E696AAE8] mainBundle];
  v18 = [v17 bundleIdentifier];
  v19 = [v18 hasPrefix:@"com.apple.Compose"];

  if (v19)
  {
    goto LABEL_12;
  }

  v20 = [MEMORY[0x1E696AAE8] mainBundle];
  v21 = [v20 bundleIdentifier];
  v22 = [v21 isEqualToString:@"com.apple.journal"];

  if (v22)
  {
    goto LABEL_12;
  }

  v23 = [MEMORY[0x1E696AAE8] mainBundle];
  v24 = [v23 bundleIdentifier];
  v25 = [v24 isEqualToString:@"com.apple.freeform"];

  if (v25)
  {
    goto LABEL_12;
  }

  v26 = [MEMORY[0x1E696AAE8] mainBundle];
  v27 = [v26 bundleIdentifier];
  v28 = [v27 isEqualToString:@"com.apple.Preview"];

  if (v28)
  {
    goto LABEL_12;
  }

  if (qword_1ED6A54E8 != -1)
  {
    dispatch_once(&qword_1ED6A54E8, &__block_literal_global_35);
  }

  v29 = byte_1ED6A54A9;
  return v29 & 1;
}

uint64_t PKCurrentAppShowsHandwritingEducation()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobilenotes"];

  if (v2 & 1) != 0 || ([MEMORY[0x1E696AAE8] mainBundle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"com.apple.freeform"), v4, v3, (v5))
  {
    v6 = 1;
  }

  else
  {
    if (qword_1ED6A54E8 != -1)
    {
      dispatch_once(&qword_1ED6A54E8, &__block_literal_global_35);
    }

    v6 = byte_1ED6A54A9;
  }

  return v6 & 1;
}

BOOL PKCurrentDeviceSupportsProofreading()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isAutoCorrectionAllowed] && objc_msgSend(v0, "isSpellCheckAllowed") && objc_msgSend(v0, "isPredictiveKeyboardAllowed") && PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() > 2;

  return v1;
}

uint64_t PKCurrentEnvironmentSupportsProofreading()
{
  result = PKCurrentDeviceSupportsProofreading();
  if (result)
  {

    return PKCurrentAppSupportsRefinement();
  }

  return result;
}

uint64_t PKIsToolPickerGlassEffectEnabled()
{
  result = _UISolariumEnabled();
  if (result)
  {
    return !PKIsVisionDevice();
  }

  return result;
}

Class __getSBSUISystemNotesWindowSceneClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A54F8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82DC3F8;
    v6 = 0;
    qword_1ED6A54F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A54F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SBSUISystemNotesWindowScene");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A54F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A54F8 = result;
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C7F8DBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKSpaceInsertionView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7F8E4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F8FB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7F91268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7F92FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7F94E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double drawing::StrokeDelta::StrokeDelta(drawing::StrokeDelta *this)
{
  *this = &unk_1F476AEE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F476AEE0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void drawing::StrokeDelta::~StrokeDelta(drawing::StrokeDelta *this)
{
  *this = &unk_1F476AEE0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = (this + 16);
  std::vector<PB::Data>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

{
  drawing::StrokeDelta::~StrokeDelta(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawing::StrokeDelta *drawing::StrokeDelta::StrokeDelta(PB::Data **this, PB::Data **a2)
{
  *this = &unk_1F476AEE0;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  if (this != a2)
  {
    std::vector<PB::Data>::__assign_with_size[abi:ne200100]<PB::Data*,PB::Data*>((this + 2), a2[2], a2[3], (a2[3] - a2[2]) >> 4);
  }

  if (a2[1])
  {
    operator new();
  }

  if (a2[5])
  {
    operator new();
  }

  if (a2[6])
  {
    operator new();
  }

  return this;
}

uint64_t drawing::StrokeDelta::operator=(uint64_t a1, PB::Data **a2)
{
  if (a1 != a2)
  {
    drawing::StrokeDelta::StrokeDelta(&v8, a2);
    v3 = v9;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v5;
    v10 = v4;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    drawing::StrokeDelta::~StrokeDelta(&v8);
  }

  return a1;
}

void *drawing::swap(void *this, drawing::StrokeDelta *a2, drawing::StrokeDelta *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  return this;
}

uint64_t drawing::StrokeDelta::StrokeDelta(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F476AEE0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<PB::Data>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  v9 = *(a1 + 48);
  *(a1 + 48) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

uint64_t drawing::StrokeDelta::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawing::StrokeDelta::StrokeDelta(v8, a2);
    v3 = v9;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v5;
    v10 = v4;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    drawing::StrokeDelta::~StrokeDelta(v8);
  }

  return a1;
}

uint64_t drawing::StrokeDelta::formatText(drawing::StrokeDelta *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "ink");
  }

  v6 = *(this + 2);
  for (i = *(this + 3); v6 != i; v6 += 16)
  {
    PB::TextFormatter::format();
  }

  v8 = *(this + 5);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "stroke");
  }

  v9 = *(this + 6);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "strokeData");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::StrokeDelta::readFrom(drawing::StrokeDelta *this, PB::Reader *a2)
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
      if (v22 == 4)
      {
        operator new();
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 2)
      {
        v23 = *(this + 3);
        if (v23 >= *(this + 4))
        {
          v24 = std::vector<PB::Data>::__emplace_back_slow_path<>(this + 16);
        }

        else
        {
          *v23 = 0;
          v23[1] = 0;
          v24 = (v23 + 2);
        }

        *(this + 3) = v24;
        PB::Reader::read(a2, (v24 - 16));
        goto LABEL_32;
      }

      if (v22 == 3)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v26 = 0;
      return v26 & 1;
    }

LABEL_32:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t drawing::StrokeDelta::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  while (v4 != v5)
  {
    this = PB::Writer::write(a2, v4);
    v4 = (v4 + 16);
  }

  v6 = v3[1];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[5];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[6];
  if (v8)
  {

    return PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t drawing::StrokeDelta::operator==(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  if (v3 - v2 != a2[3] - v4)
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = PB::Data::operator==();
    if (!result)
    {
      return result;
    }

    v2 += 16;
    v4 += 16;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (v8)
  {
    if (!v9 || !drawing::Ink::operator==(v8, v9) && a1[1] | a2[1])
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (!v11 || (drawing::Stroke::operator==(v10, v11) & 1) == 0 && a1[5] | a2[5])
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[6];
  if (!v12)
  {
    return a2[6] == 0;
  }

  v13 = a2[6];
  if (v13)
  {
    if (drawing::StrokeData::operator==(v12, v13))
    {
      return 1;
    }

    if (!a1[6])
    {
      return a2[6] == 0;
    }
  }

  return 0;
}

unint64_t drawing::StrokeDelta::hash_value(drawing::StrokeDelta *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v2 += 16;
      v4 ^= PBHashBytes();
    }

    while (v2 != v3);
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = drawing::Ink::hash_value(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = drawing::Stroke::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 6);
  if (v9)
  {
    v9 = drawing::StrokeData::hash_value(v9);
  }

  return v6 ^ v4 ^ v8 ^ v9;
}

uint64_t drawing::StrokeDelta::makeInk(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::StrokeDelta::makeStroke(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::StrokeDelta::makeStrokeData(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t PKRandom(unsigned int *a1, unsigned int a2)
{
  v2 = 1664525 * *a1 + 1013904223;
  *a1 = v2;
  return (v2 / 4294967300.0 * a2);
}

void sub_1C7F98878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7F9A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7F9BD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _releaseIOService(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 1u, 0);
  IOSurfaceDecrementUseCount(a1);

  CFRelease(a1);
}

__CFString *PKAnalyticsStringForSelectionGesture(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"none";
  }

  else
  {
    return off_1E82DC5B8[a1 - 1];
  }
}

__CFString *PKAnalyticsStringForContentType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E82DC638[a1 - 1];
  }
}

__CFString *PKAnalyticsStringForSelectionType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"lasso";
  }

  else
  {
    return off_1E82DC668[a1 - 1];
  }
}

double DKDNearestPointOnLineToPoint(CGPoint *a1, CGPoint a2)
{
  y = a1->y;
  v3 = ((a2.y - y) * (a1[1].y - y) + (a2.x - a1->x) * (a1[1].x - a1->x)) / ((a1[1].y - y) * (a1[1].y - y) + (a1[1].x - a1->x) * (a1[1].x - a1->x));
  result = 0.0;
  if (v3 >= 0.0)
  {
    result = v3;
    if (v3 > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  result = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  *(a1 + 80) = result;
  *(a1 + 96) = v4;
  return result;
}

void sub_1C7FA532C(_Unwind_Exception *a1)
{
  if (!v1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c54_ZTSNSt3__16vectorI12PKInputPointNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(v2, *(a2 + 40), *(a2 + 48), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

void __destroy_helper_block_ea8_40c54_ZTSNSt3__16vectorI12PKInputPointNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1C7FA6A28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1C7FA6FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v30 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7FA70DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C7FA7330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1C7FA7A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t PKInputProviderInitial::getUpdatedRangeFromIndex(id *this, unint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  v4 = [WeakRetained getInputUpdatedRangeFromIndex:a2];

  return v4;
}

uint64_t PKInputProviderInitial::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v6 = [WeakRetained copyInputUpdatedRangeFromIndex:a2 into:a3];

  return v6;
}

void PKInputProviderInitial::reset(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  [WeakRetained reset];
}

double PKPixelSmoothingFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, a2, a3, a4);
  result = a4 * 0.5;
  *(a1 + 32) = a4 * 0.5;
  *(a1 + 40) = a3;
  return result;
}

uint64_t PKPixelSmoothingFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isSnappedToRuler])
  {
  }

  else
  {
    v9 = *(a1 + 40);

    if (v9 != 1)
    {
      v10 = 0xF0F0F0F0F0F0F0F1 * ((v5 - v6) >> 3);
      v11 = *a3;
      v12 = 0xF0F0F0F0F0F0F0F1 * ((a3[1] - *a3) >> 3);
      if ((v10 + 1) < (v12 - 1))
      {
        v13 = *(v11 + 136 * (v10 + 1));
        v14 = (v11 + 8 * ((v5 - v6) >> 3) + 136);
        v15 = v12 - v10 - 2;
        v16 = vdupq_n_s64(0x3FD5555555555555uLL);
        do
        {
          v17 = *(v14 + 136);
          v18 = vmulq_f64(vaddq_f64(v17, vaddq_f64(v13, *(v14 - 136))), v16);
          v19 = vsubq_f64(v18, v13);
          v20 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v19, v19).f64[1]) + v19.f64[0] * v19.f64[0]);
          v21 = *(a1 + 32);
          if (v20 >= v21)
          {
            v18 = vaddq_f64(v13, vmulq_n_f64(v19, v21 / v20));
          }

          *v14 = v18;
          v14 = (v14 + 136);
          v13 = v17;
          --v15;
        }

        while (v15);
      }

      if (v7 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v7;
      }

      v23 = v22 - 1;
      if (!*(a1 + 16))
      {
        return v23;
      }
    }
  }

  return v7;
}

uint64_t PKInputBaseFilter<PKInputPoint,PKInputPoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  return result;
}

float64x2_t PKPointReductionFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, a2, a3, a4);
  *(a1 + 104) = a3;
  *(a1 + 112) = 0;
  v6 = vmulq_n_f64(xmmword_1C801EF90, *(a1 + 24));
  result = vmulq_f64(v6, v6);
  *(a1 + 128) = result;
  return result;
}

void *PKPointReductionFilter::reset(PKPointReductionFilter *this)
{
  result = PKInputFilter<PKInputPoint,PKInputPoint>::reset(this);
  *(this + 15) = 0;
  *(this + 192) = 0;
  return result;
}

uint64_t PKPointReductionFilter::fetchInput(PKPointReductionFilter *this)
{
  std::vector<PKInputPoint>::resize(this + 6, *(this + 4) - *(this + 15));
  *(this + 4) = (*(**(this + 1) + 24))(*(this + 1), *(this + 4), this + 48);
  v2 = *(*this + 56);

  return v2(this);
}

void PKPointReductionFilter::run(PKPointReductionFilter *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  if (v2 != v1 && (*(this + 192) & 1) == 0)
  {
    v5 = *(this + 14);
    v4 = *(this + 15);
    v6 = *(this + 4) - v4 - 20;
    v7 = v5 + 1;
    if (v5 + 1 < v6)
    {
      v8 = &v1[17 * v5];
      v9 = *v8;
      v10 = v8[1];
      v11 = *(this + 14);
      do
      {
        v12 = (v1[17 * v7 + 1] - v10) * (v1[17 * v7 + 1] - v10) + (v1[17 * v7] - v9) * (v1[17 * v7] - v9) <= *(this + 16) && v7 < v6 - 1;
        if (!v12)
        {
          v13 = v11 - v5;
          if (v11 <= v5)
          {
            v5 = v7;
          }

          else
          {
            v14 = &v1[17 * v5];
            v15 = v14[2];
            v16 = v14[8];
            v17 = *(v14 + 104);
            v18 = v14 + 19;
            v19 = v13;
            do
            {
              if (v15 < *v18)
              {
                v15 = *v18;
              }

              v14[2] = v15;
              if (v16 >= v18[6])
              {
                v16 = v18[6];
              }

              v14[8] = v16;
              if (v17)
              {
                if (v18[11])
                {
                  v17 = 1;
                }

                else
                {
                  v17 = 0;
                  v14[4] = v18[2];
                  *(v14 + 104) = 0;
                }
              }

              else
              {
                v17 = 0;
              }

              v18 += 17;
              --v19;
            }

            while (v19);
            v20 = 136 * v5 + 136;
            v21 = 17 * v7;
            if (v20 != 8 * v21)
            {
              v22 = v1 + v20;
              v23 = &v1[v21];
              v24 = v2 - v23;
              if (v2 != v23)
              {
                memmove(v1 + v20, v23, v2 - v23);
                v4 = *(this + 15);
                v1 = *(this + 6);
              }

              v2 = (v22 + v24);
              *(this + 7) = v22 + v24;
            }

            v4 += v13;
            *(this + 15) = v4;
            v6 -= v13;
            v7 = v5;
          }

          v25 = &v1[17 * v5];
          v9 = *v25;
          v10 = v25[1];
        }

        v11 = v7++;
      }

      while (v7 < v6);
    }

    std::vector<PKInputPoint>::resize(this + 10, *(this + 9));
    v26 = *(this + 18);
    if (*(this + 19) != v26)
    {
      *(this + 19) = v26;
    }

    v93 = 0xFFFFFFFFFFFFFFFFLL;
    std::vector<std::pair<long,double>>::push_back[abi:ne200100](this + 144, &v93);
    v27 = *(this + 14);
    v28 = v27 + 1;
    v29 = *(this + 6);
    if (v27 + 1 < 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - v29) >> 3))
    {
      v30 = 136 * v27 + 144;
      do
      {
        v31 = v27;
        v27 = v28;
        v32 = *(this + 14);
        if (v31 >= v32)
        {
          v35 = 0;
          v36 = v31 - 49;
          v37 = (v29 + 136 * v27);
          v38 = *v37;
          v39 = v37[1];
          v40 = (v29 + v30);
          v33 = 1.79769313e308;
          v34 = *(this + 14);
          do
          {
            v41 = *(*(this + 18) + 16 * (v31 - v32) + 8);
            if (v41 < 1.79769313e308)
            {
              v42 = (v29 + 136 * v31);
              v43 = *v42;
              v44 = v42[1];
              v45 = v38 - *v42;
              v46 = v39 - v44;
              v47 = v46 * v46 + v45 * v45;
              if (v47 >= *(this + 16))
              {
                v48 = 0.0;
                if (v31 + 1 < v27)
                {
                  v49 = v40;
                  v50 = v35;
                  do
                  {
                    v51 = *(v49 - 1);
                    v52 = (v46 * (*v49 - v44) + (v51 - v43) * v45) / v47;
                    v53 = 0.0;
                    if (v52 >= 0.0)
                    {
                      v53 = (v46 * (*v49 - v44) + (v51 - v43) * v45) / v47;
                      if (v52 > 1.0)
                      {
                        v53 = 1.0;
                      }
                    }

                    v48 = v48 + (v39 * v53 + v44 * (1.0 - v53) - *v49) * (v39 * v53 + v44 * (1.0 - v53) - *v49) + (v38 * v53 + v43 * (1.0 - v53) - v51) * (v38 * v53 + v43 * (1.0 - v53) - v51);
                    v49 += 17;
                    --v50;
                  }

                  while (v50);
                }

                v54 = v48 + v41;
                if (v54 < v33)
                {
                  v34 = v31;
                  v33 = v54;
                }

                if (v31 < v36 || v47 > *(this + 17))
                {
                  break;
                }
              }
            }

            ++v35;
            v40 -= 17;
            v12 = v31-- <= v32;
          }

          while (!v12);
        }

        else
        {
          v33 = 1.79769313e308;
          v34 = *(this + 14);
        }

        *&v93 = v34;
        *(&v93 + 1) = v33;
        std::vector<std::pair<long,double>>::push_back[abi:ne200100](this + 144, &v93);
        v28 = v27 + 1;
        v29 = *(this + 6);
        v30 += 136;
      }

      while (v27 + 1 < 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - v29) >> 3));
    }

    std::vector<double>::resize(this + 21, 0);
    v55 = *(this + 14);
    v56 = v55 + ((*(this + 19) - *(this + 18)) >> 4) - 1;
    if (v56 > v55)
    {
      v57 = *(this + 22);
      do
      {
        v58 = *(this + 23);
        if (v57 >= v58)
        {
          v59 = *(this + 21);
          v60 = v57 - v59;
          v61 = (v57 - v59) >> 3;
          v62 = v61 + 1;
          if ((v61 + 1) >> 61)
          {
            std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
          }

          v63 = v58 - v59;
          if (v63 >> 2 > v62)
          {
            v62 = v63 >> 2;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(this + 168, v64);
          }

          v65 = (v57 - v59) >> 3;
          v66 = (8 * v61);
          v67 = (8 * v61 - 8 * v65);
          *v66 = v56;
          v57 = v66 + 1;
          memcpy(v67, v59, v60);
          v68 = *(this + 21);
          *(this + 21) = v67;
          *(this + 22) = v57;
          *(this + 23) = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v57++ = v56;
        }

        *(this + 22) = v57;
        v55 = *(this + 14);
        v56 = *(*(this + 18) + 16 * (v56 - v55));
      }

      while (v56 > v55);
    }

    v70 = *(this + 10);
    v69 = *(this + 11);
    if (v69 == v70)
    {
      std::vector<PKInputPoint>::push_back[abi:ne200100](this + 80, *(this + 6));
      v55 = *(this + 14);
      v70 = *(this + 10);
      v69 = *(this + 11);
    }

    v71 = *(this + 21);
    v72 = *(this + 22);
    v73 = v69 - v70 == 136 && v72 - v71 == 8;
    if (v73 && (v74 = *(this + 7), v75 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE147AE147BuLL), vabdq_f64(*v70, *(v74 - 136)))), (v75.i32[0] & v75.i32[1] & 1) != 0))
    {
      v76 = *(this + 6);
      if (v74 - v76 >= 137)
      {
        v77 = (v74 - v76) / 0x88uLL;
        v78 = v69[-8].f64[1];
        v79 = v69[-5].f64[1];
        v80 = LOBYTE(v69[-2].f64[0]);
        if (v77 <= 2)
        {
          v77 = 2;
        }

        v81 = v77 - 1;
        v82 = v76 + 152;
        do
        {
          if (v78 < *v82)
          {
            v78 = *v82;
          }

          v69[-8].f64[1] = v78;
          if (v79 >= *(v82 + 48))
          {
            v79 = *(v82 + 48);
          }

          v69[-5].f64[1] = v79;
          if (v80)
          {
            if (*(v82 + 88))
            {
              v80 = 1;
            }

            else
            {
              v80 = 0;
              v69[-7].f64[1] = *(v82 + 16);
              LOBYTE(v69[-2].f64[0]) = 0;
            }
          }

          else
          {
            v80 = 0;
          }

          v82 += 136;
          --v81;
        }

        while (v81);
      }
    }

    else
    {
      if (v72 == v71)
      {
        v83 = 0;
        v84 = -1;
      }

      else
      {
        v83 = 0;
        v84 = -1;
        do
        {
          v86 = *(v72 - 8);
          v72 -= 8;
          v85 = v86;
          v87 = v69 - v70;
          if (v86 < *(this + 4) - *(this + 15) && (0xF0F0F0F0F0F0F0F1 * (v87 >> 3)) > *(this + 9) + 5)
          {
            v83 = v85;
            v84 = 0xF0F0F0F0F0F0F0F1 * (v87 >> 3);
          }

          std::vector<PKInputPoint>::push_back[abi:ne200100](this + 80, *(this + 6) + 136 * v85);
          v70 = *(this + 10);
          v69 = *(this + 11);
          v69[-3].f64[0] = sqrt((*(v70[-8].f64 + v87) - v69[-8].f64[0]) * (*(v70[-8].f64 + v87) - v69[-8].f64[0]) + (*(&v70[-8] + v87 - 8) - v69[-9].f64[1]) * (*(&v70[-8] + v87 - 8) - v69[-9].f64[1]));
          if (v55 + 1 < v85)
          {
            v88 = v69[-8].f64[1];
            v89 = v69[-5].f64[1];
            v90 = LOBYTE(v69[-2].f64[0]);
            v91 = ~v55 + v85;
            v92 = *(this + 6) + 136 * v55 + 152;
            do
            {
              if (v88 < *v92)
              {
                v88 = *v92;
              }

              v69[-8].f64[1] = v88;
              if (v89 >= *(v92 + 48))
              {
                v89 = *(v92 + 48);
              }

              v69[-5].f64[1] = v89;
              if (v90)
              {
                if (*(v92 + 88))
                {
                  v90 = 1;
                }

                else
                {
                  v90 = 0;
                  v69[-7].f64[1] = *(v92 + 16);
                  LOBYTE(v69[-2].f64[0]) = 0;
                }
              }

              else
              {
                v90 = 0;
              }

              v92 += 136;
              --v91;
            }

            while (v91);
          }

          v55 = v85;
        }

        while (v72 != *(this + 21));
      }

      if (*(this + 4) == 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - *(this + 6)) >> 3) && *(this + 16) == 1)
      {
        *(this + 9) = 0xF0F0F0F0F0F0F0F1 * ((v69 - v70) >> 3);
        *(this + 192) = 1;
      }

      else if (v84 >= 1)
      {
        *(this + 9) = v84 + 1;
        *(this + 14) = v83;
      }
    }
  }
}

uint64_t PKInputBufferedFilter<PKInputPoint,PKInputPoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void std::vector<std::pair<long,double>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void PKEstimatedAltitudeAndAzimuthFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v14 = a2;
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, v14, a3, a4);
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 32) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 56) = _Q0;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = a3;
  v12 = [v14 behavior];
  if (v12)
  {
    v13 = v12[8];
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 96) = v13 & 1;
}

uint64_t PKEstimatedAltitudeAndAzimuthFilter::copyUpdatedRangeFromIndex(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (*(a1 + 88) != 1 || *(a1 + 96) != 1)
  {
    return v6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 128));
  if (([WeakRetained isSnappedToRuler] & 1) != 0 || a3[1] == *a3)
  {

    return v6;
  }

  v8 = *(*a3 + 104);

  if ((v8 & 1) == 0)
  {
    return v6;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    goto LABEL_7;
  }

  v15 = *a3;
  v16 = 0xF0F0F0F0F0F0F0F1 * ((a3[1] - *a3) >> 3);
  v17 = v16 - 1;
  if (v16 - 1 > a2)
  {
    v18 = (v15 + 136 * a2 + 104);
    v9 = a2;
    while (v18->i8[0] == 1)
    {
      ++v9;
      v18 = (v18 + 136);
      if (v17 == v9)
      {
        goto LABEL_35;
      }
    }

    *(a1 + 32) = v9;
    *(a1 + 72) = vextq_s8(v18[-5], v18[-5], 8uLL);
    if (v9 != -1)
    {
LABEL_7:
      if (v9 > a2)
      {
        if (v9 < 1)
        {
          v11 = 0.0;
        }

        else
        {
          v10 = (*a3 + 136);
          v11 = 0.0;
          v12 = v9;
          do
          {
            v13 = sqrt((v10[1] - *(v10 - 16)) * (v10[1] - *(v10 - 16)) + (*v10 - *(v10 - 17)) * (*v10 - *(v10 - 17)));
            v10[11] = v13;
            v11 = v11 + v13;
            v10 += 17;
            --v12;
          }

          while (v12);
        }

        if (v11 >= *(a1 + 112))
        {
          v24 = *(a1 + 40);
          v25 = *a3;
          if (v24 == -1)
          {
            *(a1 + 40) = v24;
            *(a1 + 56) = vextq_s8(*(v25 + 136 * v24 + 24), *(v25 + 136 * v24 + 24), 8uLL);
          }

          if (v24 + 1 < v9)
          {
            v26 = ~v24 + v9;
            v27 = (v25 + 136 * v24 + 224);
            v28 = 0.0;
            do
            {
              v29 = *v27;
              v27 += 17;
              v28 = v28 + v29;
              --v26;
            }

            while (v26);
            v30 = *(a1 + 56);
            v31 = *(a1 + 72);
            v32 = ~v24 + v9;
            v33 = (v25 + 136 * v24 + 224);
            v34 = 0.0;
            do
            {
              v34 = v34 + *v33;
              v35 = vmlaq_n_f64(vmulq_n_f64(v31, v34 / v28), v30, 1.0 - v34 / v28);
              *(v33 - 4) = vextq_s8(v35, v35, 8uLL);
              v33 += 17;
              --v32;
            }

            while (v32);
          }

          v23 = a3[1] - v25;
        }

        else
        {
          v19 = *a3;
          v20 = v9 - a2;
          if (v9 > a2)
          {
            v21 = *(v19 + 136 * v9 + 24);
            v22 = (v19 + 136 * a2 + 24);
            do
            {
              *v22 = v21;
              v22 = (v22 + 136);
              --v20;
            }

            while (v20);
          }

          v23 = a3[1] - v19;
        }

        v36 = 0xF0F0F0F0F0F0F0F1 * (v23 >> 3);
        goto LABEL_41;
      }

      return v6;
    }
  }

LABEL_35:
  if (v16 <= *(a1 + 104))
  {
    return 0;
  }

  v37 = *(a1 + 48);
  if (v37 != -1)
  {
    if (v37 <= v38)
    {
      v36 = v38;
    }

    else
    {
      v36 = v37;
    }

    *(a1 + 48) = v36;
LABEL_41:
    if (v36 >= v6)
    {
      return v6;
    }

    else
    {
      return v36;
    }
  }

  v39 = 0.0;
  if (v16 >= 2)
  {
    v40 = (v15 + 144);
    v41 = v16 - 1;
    do
    {
      v39 = v39 + sqrt((*v40 - *(v40 - 17)) * (*v40 - *(v40 - 17)) + (*(v40 - 1) - *(v40 - 18)) * (*(v40 - 1) - *(v40 - 18)));
      v40 += 17;
      --v41;
    }

    while (v41);
  }

  if (v39 <= *(a1 + 112) * 1.25)
  {
    return 0;
  }

  *(a1 + 48) = result;
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

uint64_t anonymous namespace::backtrack(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = 136 * a2 + 8;
  v5 = 0.0;
  do
  {
    v6 = -1;
    if (a2 < 1)
    {
      break;
    }

    if (a2 < a3)
    {
      break;
    }

    v6 = a2 - 1;
    if (a2 == 1)
    {
      break;
    }

    v7 = (*a1 + v4);
    v4 -= 136;
    v5 = v5 + sqrt((*v7 - *(v7 - 17)) * (*v7 - *(v7 - 17)) + (*(v7 - 1) - *(v7 - 18)) * (*(v7 - 1) - *(v7 - 18)));
  }

  while (v5 <= a4 && a3 + 1 != a2--);
  return v6;
}

void PKStartHookFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, a2, a3, a4);
  *(a1 + 32) = 0;
  *(a1 + 40) = a3 == 0;
}

uint64_t PKStartHookFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32) + a2);
  if (*(a1 + 40) != 1)
  {
    return (v5 - *(a1 + 32)) & ~((v5 - *(a1 + 32)) >> 63);
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = 0xF0F0F0F0F0F0F0F1 * (v7 - *a3);
  if (v8 >= 3)
  {
    v9 = 0.0;
    v10 = -1;
    v11 = 1;
    v12 = 28;
    do
    {
      v9 = v9 + v6[v12];
      v13 = v9 / *(a1 + 24);
      v14 = v10 != -1 || v13 <= 6.0;
      if (!v14)
      {
        v10 = v11;
      }

      ++v11;
      v12 += 17;
    }

    while (v8 != v11);
    if (v13 >= 24.0 && v10 != -1 && v8 - 2 > v10)
    {
      v16 = v10;
      *(a1 + 40) = 0;
      if (v6[17 * v10 + 8] - v6[8] <= 0.1)
      {
        v17 = 17 * v10;
        v18 = v6 - v7 + v17 * 8 + 136;
        while (1)
        {
          v14 = v16-- < 1;
          if (v14)
          {
            break;
          }

          v19 = v6[v17];
          v20 = v6[v17 + 1];
          v21 = v6[v17 - 17] - v19;
          v22 = v6[v17 - 16] - v20;
          v23 = (v22 * (v6[v17 + 18] - v20) + v21 * (v6[v17 + 17] - v19)) / (sqrt(v22 * v22 + v21 * v21) * sqrt((v6[v17 + 18] - v20) * (v6[v17 + 18] - v20) + (v6[v17 + 17] - v19) * (v6[v17 + 17] - v19)));
          if (v23 < -1.0)
          {
            v23 = -1.0;
          }

          if (v23 > 1.0)
          {
            v23 = 1.0;
          }

          v17 -= 17;
          v18 -= 136;
          if (acos(v23) * 57.2957795 < 150.0)
          {
            *(a1 + 32) = v16 + 1;
            v24 = &v6[v17 + 17];
            if (v24 != v7)
            {
              memmove(v6, v24, -v18);
            }

            a3[1] = (v6 - v18);
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t PKStartHookFilter::reset(PKStartHookFilter *this)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 4) = 0;
  return result;
}

void PKEndHookFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, a2, a3, a4);
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = a3 == 0;
}

int64_t PKEndHookFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a2 + 0xF0F0F0F0F0F0F0FLL * ((a3[1] - *a3) >> 3);
  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v7 = v6;
  if (*(a1 + 40) != 1)
  {
    v19 = *(a1 + 32);
    if (v19 > v5 && v19 < (v5 - 0xF0F0F0F0F0F0F0FLL * ((a3[1] - *a3) >> 3)))
    {
      std::vector<PKInputPoint>::resize(a3, v19 - v5);
      v19 = *(a1 + 32);
    }

LABEL_17:
    if (v7 >= v19)
    {
      return v19;
    }

    else
    {
      return v7;
    }
  }

  if (*(a1 + 16))
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = v9 - *a3;
    v11 = 0xF0F0F0F0F0F0F0F1 * (v10 >> 3);
    if (v11 >= 3)
    {
      v12 = *(a1 + 24);
      v13 = v11 - 2;
      v14 = (v8 + 224);
      v15 = 0.0;
      v16 = v11 - 2;
      do
      {
        v17 = *v14;
        v14 += 17;
        v15 = v15 + v17;
      }

      while (v15 / v12 < 24.0 && v16-- != 0);
      if (v15 / v12 >= 24.0)
      {
        if (v13 >= 2)
        {
          v23 = 2;
        }

        else
        {
          v23 = v11 - 2;
        }

        v24 = v11 - 1;
        v25 = (v8 + 8 * (v10 >> 3) - 48);
        v26 = 0.0;
        while (--v24 >= 3)
        {
          if (*(v8 + v10 - 72) - *(v25 - 20) > 0.1)
          {
            goto LABEL_11;
          }

          v27 = *v25;
          v25 -= 17;
          v26 = v26 + v27;
          if (v26 / v12 > 6.0)
          {
            goto LABEL_32;
          }
        }

        v24 = v23;
        if (v10 < 408)
        {
          goto LABEL_11;
        }

LABEL_32:
        v28 = v11 - v24 + 1;
        if (v13 >= v24)
        {
          v29 = v13 - v24;
        }

        else
        {
          v29 = 0;
        }

        v30 = (v8 + 136 * v24);
        while (v29)
        {
          v31 = v30 + 17;
          v32 = v30[1];
          v33 = v30[17] - *v30;
          v34 = v30[18] - v32;
          v35 = (v34 * (*(v30 - 16) - v32) + v33 * (*(v30 - 17) - *v30)) / (sqrt(v34 * v34 + v33 * v33) * sqrt((*(v30 - 16) - v32) * (*(v30 - 16) - v32) + (*(v30 - 17) - *v30) * (*(v30 - 17) - *v30)));
          if (v35 < -1.0)
          {
            v35 = -1.0;
          }

          if (v35 > 1.0)
          {
            v35 = 1.0;
          }

          v36 = acos(v35);
          --v28;
          --v29;
          v30 = v31;
          if (v36 * 57.2957795 < 150.0)
          {
            if (-v28 < -2 || v28 == 2)
            {
              v37 = v28 - 2;
              if ((v28 - 2) >= 7)
              {
                v37 = 7;
              }

              v38 = v9 - 136 * v37 - 136;
              a3[1] = v38;
              v11 = 0xF0F0F0F0F0F0F0F1 * ((v38 - v8) >> 3);
            }

            break;
          }
        }
      }
    }

LABEL_11:
    v19 = v11 + v5;
    *(a1 + 32) = v11 + v5;
    goto LABEL_17;
  }

  v22 = 8;
  if (v6 > 8)
  {
    v22 = v6;
  }

  return v22 - 8;
}

uint64_t PKEndHookFilter::reset(PKEndHookFilter *this)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 4) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

void PKVelocityCalculationFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v13 = a2;
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, v13, a3, a4);
  v7 = [v13 behavior];
  v8 = [v7 smoothingDescriptor];
  [v8 velocitySmoothing];
  *(a1 + 32) = v9;

  v10 = [v13 behavior];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 isEraser];
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 40) = v12;
}

unint64_t PKVelocityCalculationFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  result = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 - *a3;
  if (v9 != *a3)
  {
    v12 = 0xF0F0F0F0F0F0F0F1 * ((v6 - v7) >> 3);
    v13 = 0xF0F0F0F0F0F0F0F1 * (v11 >> 3);
    if (v12 >= v13)
    {
      v18 = 0;
    }

    else
    {
      v14 = (v10 + 8 * ((v6 - v7) >> 3));
      v15 = 0xF0F0F0F0F0F0F0F1 * ((v6 - v7) >> 3);
      do
      {
        if (v15 >= 1)
        {
          v16 = sqrt((v14[1] - *(v14 - 16)) * (v14[1] - *(v14 - 16)) + (*v14 - *(v14 - 17)) * (*v14 - *(v14 - 17)));
          v17 = *(v14 - 5) + v16;
          v14[11] = v16;
          v14[12] = v17;
        }

        ++v15;
        v14 += 17;
      }

      while (v13 != v15);
      v18 = 0;
      v19 = v10 + 8 * ((v6 - v7) >> 3);
      v20 = *(a1 + 32);
      v21 = (v19 + 88);
      v22 = (v19 + 224);
      v23 = v13 - 1 - v12;
      v24 = 0xF0F0F0F0F0F0F0F1 * ((v6 - v7) >> 3);
      do
      {
        v25 = v10 + 136 * v24;
        v26 = *(v25 + 64);
        v27 = v26 - v20;
        v28 = 0.0;
        if ((v24 & 0x8000000000000000) == 0)
        {
          if (v24)
          {
            v29 = v21;
            v30 = v24;
            while (1)
            {
              v31 = *(v29 - 20);
              if (v31 <= v27)
              {
                break;
              }

              v32 = *v29;
              v29 -= 17;
              v28 = v28 + v32;
              if (!--v30)
              {
                goto LABEL_13;
              }
            }

            v28 = v28 + *v29 * (*(v29 - 3) - v27) / (*(v29 - 3) - v31);
          }

          else
          {
LABEL_13:
            v27 = *(v10 + 64);
          }
        }

        if (v24 == v13 - 1)
        {
LABEL_19:
          v33 = *(v10 + 136 * v13 - 72);
        }

        else
        {
          v33 = v20 + v26;
          v34 = v23;
          v35 = v22;
          while (1)
          {
            v36 = *(v35 - 3);
            v37 = *v35;
            if (v36 >= v33)
            {
              break;
            }

            v28 = v28 + v37;
            v35 += 17;
            if (!--v34)
            {
              goto LABEL_19;
            }
          }

          v28 = v28 + v37 * (v33 - *(v35 - 20)) / (v36 - *(v35 - 20));
          v18 = v24;
        }

        v38 = v33 - v27;
        v39 = 0.0;
        if (v38 > 0.0)
        {
          v39 = v28 / v38 / *(a1 + 24);
        }

        ++v24;
        *(v25 + 40) = v39;
        v21 += 17;
        v22 += 17;
        --v23;
      }

      while (v24 != v13);
    }

    if ((*(a1 + 16) & 1) == 0 && (*(a1 + 40) & 1) == 0)
    {
      v40 = v12 - a2 + v18;
      if (result >= v40)
      {
        return v40;
      }
    }
  }

  return result;
}

void PKDirectionAngleCalculationFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v10 = a2;
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, v10, a3, a4);
  v7 = [v10 behavior];
  v8 = [v7 smoothingDescriptor];
  [v8 angleSmoothing];
  *(a1 + 32) = v9;
}

unint64_t PKDirectionAngleCalculationFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v8 = a3[1];
  v9 = v8 - *a3;
  if (v8 != *a3 && *(a1 + 32) > 0.0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = [WeakRetained isPreviewing];
    v12 = 0xF0F0F0F0F0F0F0F1 * ((v5 - v6) >> 3);
    v13 = 0xF0F0F0F0F0F0F0F1 * (v9 >> 3);

    if (v11)
    {
      v14 = v13 - v12;
      if (v13 > v12)
      {
        v15 = 0;
        v16 = (v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v17 = vdupq_n_s64(v14 - 1);
        v18 = (*a3 + 136 * v12 + 184);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v15), xmmword_1C8018F80)));
          if (v19.i8[0])
          {
            *(v18 - 17) = 0x3FF921FB54442D18;
          }

          if (v19.i8[4])
          {
            *v18 = 0x3FF921FB54442D18;
          }

          v15 += 2;
          v18 += 34;
        }

        while (v16 != v15);
      }
    }

    else if (v13 > v12)
    {
      v20 = *(a1 + 32);
      v21 = *a3;
      v22 = a3[1];
      v23 = (v21 + 136 * v12 - 88);
      do
      {
        v24 = PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint,double PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint>(double,double,std::vector<PKInputPoint> const&)::{lambda(double,double,double)#1}>(v21, v22, v12, -v20);
        v25 = PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint,double PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint>(double,double,std::vector<PKInputPoint> const&)::{lambda(double,double,double)#1}>(v21, v22, v12, v20);
        *&v26 = *&PKPropertySmootherFilter::propertyAt<PKInputPoint,CGPoint PKPropertySmootherFilter::locationAt<PKInputPoint>(double,std::vector<PKInputPoint> const&)::{lambda(PKInputPoint)#1},CGPoint>(v21, v22, v24);
        v28 = v27;
        *&v29 = *&PKPropertySmootherFilter::propertyAt<PKInputPoint,CGPoint PKPropertySmootherFilter::locationAt<PKInputPoint>(double,std::vector<PKInputPoint> const&)::{lambda(PKInputPoint)#1},CGPoint>(v21, v22, v25);
        v31 = v30;
        if (v7 >= v12)
        {
          v32 = v12;
        }

        else
        {
          v32 = v7;
        }

        if (v25 >= (v13 - 1))
        {
          v7 = v32;
        }

        v33 = v26 - v29;
        v34 = v28 - v31;
        if (v34 * v34 + v33 * v33 <= 0.1)
        {
          v35 = -6.37045177;
          if (v12 >= 1)
          {
            v35 = *v23;
          }
        }

        else
        {
          v35 = 3.14159265 - atan2(-v34, v33);
        }

        v23[17] = v35;
        v23 += 17;
        ++v12;
      }

      while (v13 != v12);
    }
  }

  return v7;
}

double PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint,double PKPropertySmootherFilter::stepDistanceFrom<PKInputPoint>(double,double,std::vector<PKInputPoint> const&)::{lambda(double,double,double)#1}>(uint64_t a1, uint64_t a2, double result, double a4)
{
  v4 = -a4;
  if (a4 < 0.0)
  {
    v5 = result <= 0.0;
  }

  else
  {
    v4 = a4;
    v5 = 0;
  }

  if (!v5 && v4 > 0.0)
  {
    while (1)
    {
      v6 = result;
      v7 = result - result;
      if (a4 < 0.0 && v7 == 0.0)
      {
        v5 = v6-- < 1;
        if (v5)
        {
          return result;
        }

        v7 = 1.0;
      }

      if (v6 + 1 >= (0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3)))
      {
        break;
      }

      v8 = (a1 + 136 * (v6 + 1));
      v9 = sqrt((*(a1 + 136 * v6 + 8) - v8[1]) * (*(a1 + 136 * v6 + 8) - v8[1]) + (*(a1 + 136 * v6) - *v8) * (*(a1 + 136 * v6) - *v8));
      if (a4 >= 0.0)
      {
        v7 = 1.0 - v7;
      }

      v10 = v7 * v9;
      if (v10 > v4)
      {
        if (a4 >= 0.0)
        {
          v13 = v4;
        }

        else
        {
          v13 = -v4;
        }

        return result + v13 / v9;
      }

      v11 = v6 + (a4 >= 0.0);
      result = v11;
      if (v11 > 0 || a4 >= 0.0)
      {
        v4 = v4 - v10;
        if (v4 > 0.0)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

float64x2_t PKPropertySmootherFilter::propertyAt<PKInputPoint,CGPoint PKPropertySmootherFilter::locationAt<PKInputPoint>(double,std::vector<PKInputPoint> const&)::{lambda(PKInputPoint)#1},CGPoint>(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  v4 = a3 - a3;
  result = *(a1 + 136 * a3);
  if (v4 > 0.0)
  {
    v6 = v3 + 1;
    if (v6 < 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3))
    {
      return vaddq_f64(result, vmulq_n_f64(vsubq_f64(*(a1 + 136 * v6), result), v4));
    }
  }

  return result;
}

void PKAzimuthFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v9 = a2;
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, v9, a3, a4);
  *(a1 + 104) = a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_1C801EFA0;
  v7 = [v9 behavior];
  v8 = [v7 particleDescriptor];
  *(a1 + 120) = [v8 initialRandomRotation] ^ 1;
}

double PKAzimuthFilter::reset(PKAzimuthFilter *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(this + 16) = 0;
  *(this + 7) = *(this + 6);
  *(this + 9) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 88) = xmmword_1C801EFA0;
  return result;
}

void PKAzimuthFilter::run(PKAzimuthFilter *this)
{
  if (0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - *(this + 6)) >> 3) >= 2)
  {
    if (*(this + 120) != 1)
    {
      v5 = 0;
      goto LABEL_10;
    }

    v3 = *(this + 13);
    if (v3 == 1 && (v1 = objc_loadWeakRetained(this + 14), ([v1 activeInputProperties] & 1) != 0))
    {
      v5 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(this + 14);
      v5 = [WeakRetained isSnappedToRuler] ^ 1;

      if (v3 != 1)
      {
LABEL_10:
        v6 = *(this + 11);
        v7 = *(this + 81);
        if ((v7 & 1) == 0)
        {
          v9 = *(this + 6);
          v8 = *(this + 7);
          v10 = *(v8 - 136) - *v9;
          v11 = *(v8 - 128) - v9[1];
          v12 = sqrt(v11 * v11 + v10 * v10) / *(this + 3);
          if (*(this + 80) == 1)
          {
            if (*(this + 16))
            {
LABEL_47:
              v7 = 1;
              *(this + 81) = 1;
              if (!v5)
              {
LABEL_48:
                if (v7)
                {
                  *(this + 9) = *(this + 4);
                }

                return;
              }

LABEL_39:
              v24 = *(this + 9);
              v25 = *(this + 6);
              v26 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - v25) >> 3);
              v27 = v26 - v24;
              if (v26 > v24)
              {
                v28 = 0;
                v29 = vdupq_n_s64(v27 - 1);
                v30 = (v27 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v31 = (v25 + 136 * v24 + 160);
                do
                {
                  v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v28), xmmword_1C8018F80)));
                  if (v32.i8[0])
                  {
                    *(v31 - 17) = v6;
                  }

                  if (v32.i8[4])
                  {
                    *v31 = v6;
                  }

                  v28 += 2;
                  v31 += 34;
                }

                while (v30 != v28);
              }

              goto LABEL_48;
            }
          }

          else
          {
            v13 = atan2(-v10, v11);
            v14 = *(this + 12);
            DKDDiffAngleInRadians(v14, v13);
            if (v15 < 0.0)
            {
              v15 = -v15;
            }

            if (v15 > 1.57079633)
            {
              v16 = v13 + 3.14159265;
              v17 = fmod(v16, 6.28318531);
              if (v16 <= 6.28318531 && v16 >= 0.0)
              {
                v17 = v16;
              }

              if (v17 < 0.0)
              {
                v17 = v17 + 6.28318531;
              }

              if (v17 == 0.0)
              {
                v13 = 0.0;
              }

              else
              {
                v13 = v17;
              }
            }

            *(this + 11) = v13;
            v19 = 20.0;
            if (*(this + 13) == 1)
            {
              v19 = 7.0;
            }

            v20 = *(this + 16);
            if ((v20 & 1) != 0 || v12 > v19)
            {
              *(this + 80) = 1;
              if (v20)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v21 = (v12 + -3.0) / (v19 + -3.0);
              v22 = 0.0;
              if (v21 >= 0.0)
              {
                v22 = v21;
                if (v21 > 1.0)
                {
                  v22 = 1.0;
                }
              }

              DKDMixAnglesInRadians(v14, v13, v22);
              v6 = v23;
            }
          }

          if (v12 > 20.0)
          {
            goto LABEL_47;
          }

          v7 = 0;
        }

        if (!v5)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }
    }

    goto LABEL_10;
  }
}

void PKEndDelayFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = a2;
  PKInputBaseFilter<PKInputPoint,PKInputPoint>::drawingBeganWithInk(a1, v8, a3, a4);
  v7 = [v8 behavior];
  *(a1 + 32) = [(PKInkBehavior *)v7 mutableDurationToEndOfStroke];
}

uint64_t PKEndDelayFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  result = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = a3[1];
    if (v9 != *a3)
    {
      v10 = *(v9 - 72) - *(a1 + 32);
      v11 = result & (result >> 63);
      v12 = (-8 * ((v6 - v7) >> 3) + 136 * result + 136 * a2 + *a3 - 72);
      while (result-- >= 1)
      {
        v14 = *v12;
        v12 -= 17;
        if (v14 <= v10)
        {
          return ++result;
        }
      }

      return v11;
    }
  }

  return result;
}

uint64_t PKEndDelayFilter::reset(PKEndDelayFilter *this)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(this + 16) = 0;
  *(this + 4) = 0;
  return result;
}

void PKInputBaseFilter<PKInputPoint,_PKStrokePoint>::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
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

uint64_t PKInputBaseFilter<PKInputPoint,_PKStrokePoint>::drawingEnded(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t PKInputBufferedFilter<PKInputPoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 48))(a1);
  std::vector<_PKStrokePoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<_PKStrokePoint*>,std::__wrap_iter<_PKStrokePoint*>>(a3, *(a3 + 8), (*v6 + 96 * a2), *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - (*v6 + 96 * a2)) >> 5));
  return a1[9];
}

void *PKInputFilter<PKInputPoint,_PKStrokePoint>::reset(uint64_t a1)
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

uint64_t PKInputBufferedFilter<PKInputPoint,_PKStrokePoint>::fetchInput(uint64_t a1)
{
  std::vector<PKInputPoint>::resize((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 56);

  return v2(a1);
}

void PKInputToOutputFilter::run(PKInputToOutputFilter *this)
{
  std::vector<_PKStrokePoint>::resize(this + 10, 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - *(this + 6)) >> 3));
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 7) - *(this + 6)) >> 3);
  v3 = *(this + 9);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v5 = 96 * v3;
    v6 = 136 * v3;
    do
    {
      WeakRetained = objc_loadWeakRetained(this + 13);
      v8 = WeakRetained;
      v9 = *(this + 7);
      v10 = *(this + 6) + v6;
      v30[0] = *v10;
      v11 = *(v10 + 64);
      v13 = *(v10 + 16);
      v12 = *(v10 + 32);
      v30[3] = *(v10 + 48);
      v30[4] = v11;
      v30[1] = v13;
      v30[2] = v12;
      v15 = *(v10 + 96);
      v14 = *(v10 + 112);
      v16 = *(v10 + 80);
      v31 = *(v10 + 128);
      v30[6] = v15;
      v30[7] = v14;
      v30[5] = v16;
      v28[0] = *(v9 - 136);
      v17 = *(v9 - 104);
      v18 = *(v9 - 72);
      v19 = *(v9 - 120);
      v28[3] = *(v9 - 88);
      v28[4] = v18;
      v28[1] = v19;
      v28[2] = v17;
      v20 = *(v9 - 40);
      v21 = *(v9 - 24);
      v22 = *(v9 - 56);
      v29 = *(v9 - 8);
      v28[6] = v20;
      v28[7] = v21;
      v28[5] = v22;
      if (WeakRetained)
      {
        [WeakRetained outputCurrentStrokePoint:v30 lastPoint:v28];
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
      }

      v23 = (*(this + 10) + v5);
      v24 = v33;
      *v23 = v32;
      v23[1] = v24;
      v25 = v34;
      v26 = v35;
      v27 = v37;
      v23[4] = v36;
      v23[5] = v27;
      v23[2] = v25;
      v23[3] = v26;

      v5 += 96;
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  *(this + 9) = *(this + 4);
}

uint64_t PKInputBufferedFilter<PKInputPoint,_PKStrokePoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void PKStartCapsFilter::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v20 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v20, a3, a4);
  if (a3 == 1)
  {
    v15 = [v20 behavior];
    v16 = [v15 pencilFeatheringDescriptor];

    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = [v20 behavior];
    v18 = [v17 pencilFeatheringDescriptor];
    [v18 startCapTime];
    *(a1 + 32) = v19;

    v12 = [v20 behavior];
    v13 = [v12 pencilFeatheringDescriptor];
    [v13 startCapFade];
    goto LABEL_7;
  }

  if (!a3)
  {
    v7 = [v20 behavior];
    v8 = [v7 featheringDescriptor];

    if (v8)
    {
      v9 = [v20 behavior];
      v10 = [v9 featheringDescriptor];
      [v10 startCapTime];
      *(a1 + 32) = v11;

      v12 = [v20 behavior];
      v13 = [v12 featheringDescriptor];
      [v13 startCapFade];
LABEL_7:
      *(a1 + 40) = v14;
    }
  }

LABEL_8:
}

uint64_t PKStartCapsFilter::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  result = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (!a2 && *(a3 + 8) != *a3)
  {
    *(a1 + 48) = **a3;
  }

  v9 = *(a1 + 32);
  if (v9 > 0.0)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 5);
    if (*(a3 + 8) != *a3 && v11 > v10)
    {
      v13 = *(a1 + 48);
      v14 = v11 - v10;
      v15 = (*a3 + 32 * ((v6 - v7) >> 5) + 72);
      do
      {
        v16 = *(v15 - 9) - v13;
        if (v16 < v9)
        {
          *v15 = *v15 * (1.0 - *(a1 + 40) * (1.0 - v16 / v9));
        }

        v15 += 12;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(a1 + 16) = 0;
  return result;
}