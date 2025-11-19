void sub_18F73A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(v68 - 208);
  a68 = &a59;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a68);
  a59 = &a62;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a59);
  if (__p)
  {
    operator delete(__p);
  }

  __p = a15;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v70 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v71;
    operator delete(v71);
  }

  std::__list_imp<ID3FrameInfo>::clear(a18);
  std::__list_imp<ID3FrameInfo>::clear(a19);
  __p = a21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v72 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v76;
    operator delete(v76);
  }

  v77 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v77;
    operator delete(v77);
  }

  __p = &a47;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a56)
  {
    operator delete(a56);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        std::__list_imp<ID3FrameInfo>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<float>::resize(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_18F9016C0)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_18F9016B0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F73AEE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

void audioipc::SharedAudioBuffers::Element::Element(_OWORD *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;
  *a1 = v2;
  v4 = a1 + 3;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v5 = *(a2 + 7);
  }

  else
  {
    v5 = 1;
  }

  std::vector<char>::vector[abi:ne200100](v4, (16 * v5) | 8);
}

void sub_18F73B024(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<audioipc::SharedAudioBuffers::Element>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<audioipc::SharedAudioBuffers::Element>,audioipc::SharedAudioBuffers::Element*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 2);
      *(a3 + 16) = *(v5 + 1);
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 48) = 0;
      *(a3 + 48) = *(v5 + 3);
      *(a3 + 64) = v5[8];
      v5[6] = 0;
      v5[7] = 0;
      v5[8] = 0;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 72) = *(v5 + 9);
      *(a3 + 88) = v5[11];
      v5[9] = 0;
      v5[10] = 0;
      v5[11] = 0;
      v8 = *(v5 + 7);
      *(a3 + 96) = *(v5 + 6);
      *(a3 + 112) = v8;
      v5 += 16;
      a3 += 128;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>(v4);
      v4 += 16;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<audioipc::SharedAudioBuffers::Element>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t audioipc::eventlink_primitive::timed_wait_or_error(audioipc::eventlink_primitive *this, double a2)
{
  os_retain(this);
  v3 = os_eventlink_wait_until();
  if (v3)
  {
    if (v3 == 60)
    {
      v4 = 0x100000000;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 60)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    if (v3 == 60)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 & 0xFFFFFF00;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0x100000000;
  }

  os_release(this);
  return v4 | v6 | v5;
}

uint64_t AMRAudioFile::ScanForPackets(AMRAudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v4 = a3;
  v32 = *MEMORY[0x1E69E9840];
  *&v27.mVariableFramesInPacket = 0;
  v28 = 0;
  v26 = 0;
  if (!a3)
  {
    v4 = *(this + 13);
  }

  if ((*(this + 140) & 1) != 0 || !*(this + 36))
  {
    goto LABEL_12;
  }

  v6 = *(this + 15);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 24);
  if (a2 == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 140))
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v11 = (*(*v4 + 24))(v4, &v28);
  if (!v11)
  {
    if (v7)
    {
      v12 = *(this + 9);
      v13 = v7 - 1;
      CompressedPacketTable::operator[](buf, v6, v7 - 1);
      v14 = *buf;
      CompressedPacketTable::operator[](v24, v6, v13);
      v15 = v14 + v12 + v25;
    }

    else
    {
      (*(*this + 656))(this, 0);
      v15 = *(this + 9);
    }

    v11 = 0;
    v16 = a4;
    while (1)
    {
      v27.mStartOffset = v15 - *(this + 9);
      v27.mDataByteSize = 0;
      if (*(this + 36))
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          buf[0] = 0;
          v11 = (*(*v4 + 48))(v4, 0, v15, 1, buf, &v26);
          if (v11)
          {
            v19 = 0;
          }

          else
          {
            v19 = v26 == 1;
          }

          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = (*(this + 152) ? &_AMR_WB_FRAMESIZE : &_AMR_NB_FRAMESIZE);
          v21 = v20[(buf[0] >> 3) & 0xF];
          if (!v21)
          {
            break;
          }

          v15 += v21;
          if (v15 > v28)
          {
            break;
          }

          v17 = v17 + v21;
          ++v18;
          if (v15 == v28)
          {
            v11 = 0;
            v27.mDataByteSize = v17;
            *(this + 37) = 160 * v18;
            goto LABEL_43;
          }

          if (v18 >= *(this + 36))
          {
            v11 = 0;
            v22 = 0;
            v27.mDataByteSize = v17;
            v16 = a4;
            if ((a4 & 1) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          }
        }

        v11 = 0;
LABEL_41:
        v27.mDataByteSize = v17;
LABEL_43:
        v16 = a4;
        *(this + 140) = a4;
        v22 = 1;
        if ((a4 & 1) == 0)
        {
LABEL_36:
          if (v18 == *(this + 36))
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }

LABEL_44:
        if (!v18)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0;
        v22 = 0;
        if (v16)
        {
          v22 = 0;
          goto LABEL_51;
        }
      }

LABEL_45:
      if (v17 > (*(*this + 640))(this))
      {
        (*(*this + 656))(this, v17);
      }

      AudioFileObject::AppendPacket(this, &v27);
      if (v8 == -1)
      {
        v8 = -1;
      }

      else
      {
        --v8;
      }

      v16 = a4;
      if (!v8)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v22)
      {
        goto LABEL_52;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AMRAudioFile.cpp";
    v30 = 1024;
    v31 = 575;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
  }

LABEL_52:
  if ((v11 & 0xFFFFFFFE) == 0xFFFFFFD8)
  {
    result = 0;
  }

  else
  {
    result = v11;
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AMRAudioFile::FindMaximumPacketSize(AMRAudioFile *this)
{
  if ((*(this + 140) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    return *(this + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t AMRAudioFile::GetEstimatedDuration(AMRAudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 140) == 1)
  {
    v6 = 0;
    v7 = (*(this + 37) + ((*(*this + 248))(this) - 1) * v5);
LABEL_3:
    *a2 = v7 / v4;
    return v6;
  }

  *a2 = 0.0;
  if ((*(*this + 696))(this, 1, 0, 1))
  {
    return 0;
  }

  v8 = *(this + 15);
  if (!v8)
  {
    operator new();
  }

  v16 = 0;
  v6 = (*(**(this + 13) + 24))(*(this + 13), &v16);
  if (!v6)
  {
    v16 -= *(this + 9);
    v10 = *(this + 15);
    if (v10)
    {
      v11 = *(v10 + 24);
    }

    else
    {
      v11 = 0;
    }

    CompressedPacketTable::operator[](v15, v8, v11 - 1);
    v12 = v15[0];
    CompressedPacketTable::operator[](v13, v8, v11 - 1);
    v7 = v16 / (v12 + v14) * (v11 * v5);
    goto LABEL_3;
  }

  return v6;
}

uint64_t AMRAudioFile::GetInfoDictionary(AMRAudioFile *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

uint64_t AMRAudioFile::SetMagicCookieData(AMRAudioFile *this, UInt32 a2, const void *a3)
{
  v4 = 1718449215;
  v5 = *(this + 40);
  outPropertyData = *(this + 24);
  v13 = v5;
  v14 = *(this + 7);
  ioPropertyDataSize = 40;
  AudioFormatGetProperty(0x666D7469u, a2, a3, &ioPropertyDataSize, &outPropertyData);
  v6 = *(this + 36);
  v7 = DWORD1(v13);
  if (*(this + 152))
  {
    v8 = 320;
  }

  else
  {
    v8 = 160;
  }

  v9 = DWORD1(v13) / v8;
  if (!v6 || v6 == v9)
  {
    *(this + 36) = v9;
    if (v8 <= v7)
    {
      return 0;
    }

    else
    {
      return 1718449215;
    }
  }

  return v4;
}

double AMRAudioFile::GetMagicCookieData(AMRAudioFile *this, unsigned int *a2, char *a3)
{
  if (*a2 >= 0x2F)
  {
    v3 = *(this + 152) == 0;
    *a3 = 0x616D72660C000000;
    if (v3)
    {
      v4 = 1919770995;
    }

    else
    {
      v4 = 1651990899;
    }

    *(a3 + 2) = v4;
    if (v3)
    {
      v5 = -127;
    }

    else
    {
      v5 = -125;
    }

    *(a3 + 12) = 0x61646E650A000000;
    *(a3 + 10) = 0;
    *(a3 + 22) = 0x726D616411000000;
    *(a3 + 30) = 1819308129;
    a3[34] = 1;
    *(a3 + 35) = v5;
    *(a3 + 37) = 3840;
    *&result = 0x8000000;
    *(a3 + 39) = 0x8000000;
    *a2 = 47;
  }

  return result;
}

uint64_t AMRAudioFile::GetMagicCookieDataSize(AMRAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a2)
  {
    *a2 = 47;
  }

  return 0;
}

uint64_t AMRAudioFile::GetNumPackets(AMRAudioFile *this)
{
  if ((*(this + 100) & 2) != 0 && *(this + 10))
  {
    v2 = this + 16;
    return *v2;
  }

  if ((*(this + 140) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    v3 = *(this + 15);
    if (v3)
    {
      v2 = (v3 + 24);
      return *v2;
    }
  }

  return 0;
}

uint64_t AMRAudioFile::GetNumBytes(AMRAudioFile *this)
{
  if ((*(this + 100) & 2) != 0 && *(this + 10))
  {
    return *(this + 1);
  }

  v3 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v3);
  return v3 - *(this + 9);
}

uint64_t AMRAudioFile::WritePackets(AMRAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*(this + 10))
  {
    if (!*(this + 36))
    {
      v15 = 2003334207;
      v16 = *(this + 11);
      if (!v16)
      {
        mDataByteSize = a4->mDataByteSize;
        if (mDataByteSize)
        {
          v18 = 0;
          v27 = &a7[mDataByteSize];
          if (*(this + 152))
          {
            v28 = &_AMR_WB_FRAMESIZE;
          }

          else
          {
            v28 = &_AMR_NB_FRAMESIZE;
          }

          v29 = a7;
          while (v28[(*v29 >> 3) & 0xF])
          {
            ++v18;
            v29 += v28[(*v29 >> 3) & 0xF];
            if (v29 >= v27)
            {
              goto LABEL_11;
            }
          }
        }

        *(this + 36) = 0;
        goto LABEL_46;
      }

      v17 = *(this + 152) ? 320 : 160;
      v18 = v16 / v17;
LABEL_11:
      *(this + 36) = v18;
      if (!v18)
      {
        goto LABEL_46;
      }
    }

    if (a6)
    {
      if (*a6)
      {
        v40 = 0;
        v39.mStartOffset = 0;
        *&v39.mVariableFramesInPacket = 0;
        (*(*this + 696))(this, -1, 0, 1);
        v19 = *(this + 15);
        if (v19)
        {
          if (*(v19 + 24) == a5)
          {
            if (!a4)
            {
              v15 = 1885563711;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AMRAudioFile.cpp";
                LOWORD(v42[0]) = 1024;
                *(v42 + 2) = 915;
                v30 = MEMORY[0x1E69E9C10];
                v31 = "%25s:%-5d  Packet Descriptions were not provided";
LABEL_45:
                _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
              }

LABEL_46:
              v33 = *MEMORY[0x1E69E9840];
              return v15;
            }

            v20 = *(this + 9);
            v21 = *(v19 + 24);
            if (v21)
            {
              CompressedPacketTable::operator[](buf, v19, v21 - 1);
              v22 = *(this + 15);
              if (v22)
              {
                v23 = *(v22 + 24) - 1;
              }

              else
              {
                v23 = -1;
              }

              v32 = *buf;
              CompressedPacketTable::operator[](v38, v19, v23);
              v21 = v32 + v38[3];
            }

            v15 = (*(**(this + 13) + 56))(*(this + 13), 0, v21 + v20, a3, a7, &v40);
            if (v15)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AMRAudioFile.cpp";
                LOWORD(v42[0]) = 1024;
                *(v42 + 2) = 921;
                v30 = MEMORY[0x1E69E9C10];
                v31 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
                goto LABEL_45;
              }

              goto LABEL_46;
            }

            if (*a6)
            {
              v34 = 0;
              p_mDataByteSize = &a4->mDataByteSize;
              do
              {
                v36 = *(this + 15);
                if (v36)
                {
                  v36 = *(v36 + 24);
                  if (v36)
                  {
                    CompressedPacketTable::operator[](buf, v19, v36 - 1);
                    v36 = *buf + v42[0];
                  }
                }

                v39.mStartOffset = v36;
                v37 = *p_mDataByteSize;
                v39.mVariableFramesInPacket = 0;
                v39.mDataByteSize = v37;
                AudioFileObject::AppendPacket(this, &v39);
                ++v34;
                p_mDataByteSize += 4;
              }

              while (v34 < *a6);
            }

LABEL_25:
            v15 = 0;
            goto LABEL_46;
          }
        }

        else if (!a5)
        {
          operator new();
        }

        v15 = 1885563711;
        goto LABEL_46;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315394;
      *&buf[4] = "AMRAudioFile.cpp";
      LOWORD(v42[0]) = 1024;
      *(v42 + 2) = 900;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  WritePackets Failed - *ioNumPackets == 0";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315394;
      *&buf[4] = "AMRAudioFile.cpp";
      LOWORD(v42[0]) = 1024;
      *(v42 + 2) = 899;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  WritePackets Failed - ioNumPackets == NULL";
    }

    _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
    goto LABEL_25;
  }

  v12 = *MEMORY[0x1E69E9840];

  return AudioFileObject::WritePackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AMRAudioFile::ReadPackets(AMRAudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a6)
  {
    v10 = *a6;
    if (v10)
    {
      if (a5 < 0)
      {
        v18 = 2003334207;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136315394;
        *&buf[4] = "AMRAudioFile.cpp";
        LOWORD(v42[0]) = 1024;
        *(v42 + 2) = 769;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  invalid starting packet parameter";
        goto LABEL_15;
      }

      v17 = (*(*this + 696))(this, v10 + a5, 0, 1);
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AMRAudioFile.cpp";
          LOWORD(v42[0]) = 1024;
          *(v42 + 2) = 773;
          v19 = MEMORY[0x1E69E9C10];
          v20 = "%25s:%-5d  ScanForPackets (AMR) failed";
LABEL_15:
          _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      v23 = *(this + 15);
      if (!v23)
      {
        v18 = 1685348671;
        goto LABEL_16;
      }

      v40 = 0;
      v24 = *(v23 + 24);
      if (a3)
      {
        *a3 = 0;
      }

      v25 = *a6;
      if (v25 + a5 > v24)
      {
        LODWORD(v25) = v24 - a5;
        *a6 = v24 - a5;
      }

      if (!v25)
      {
        if (a3)
        {
          *a3 = 0;
        }

        v18 = 4294967257;
        goto LABEL_16;
      }

      v38 = a3;
      CompressedPacketTable::operator[](buf, v23, a5);
      v39 = *buf;
      v26 = *a6;
      if (v8)
      {
        if (v26)
        {
          v27 = 0;
          p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
          do
          {
            CompressedPacketTable::operator[](buf, v23, a5 + v27);
            v29 = v42[0];
            *(p_mVariableFramesInPacket - 1) = *buf - v39;
            *p_mVariableFramesInPacket = 0;
            p_mVariableFramesInPacket[1] = v29;
            p_mVariableFramesInPacket += 4;
            ++v27;
          }

          while (v27 < *a6);
        }

        v18 = 0;
        v40 = 0;
      }

      else
      {
        if (v26)
        {
          v30 = 0;
          v31 = 0;
          v32 = &a4->mVariableFramesInPacket;
          do
          {
            CompressedPacketTable::operator[](buf, v23, a5 + v31);
            v33 = v42[0];
            v30 += v42[0];
            v40 = v30;
            if (a4)
            {
              *(v32 - 1) = *buf - v39;
              *v32 = 0;
              v32[1] = v33;
            }

            ++v31;
            v32 += 4;
          }

          while (v31 < *a6);
        }

        CompressedPacketTable::operator[](buf, v23, a5);
        v34 = (*(*this + 72))(this, a2, *buf, &v40, a7);
        v18 = v34;
        if (v34 != -39 && v34 != 0)
        {
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v36 = v38;
          if (v37)
          {
            *buf = 136315394;
            *&buf[4] = "AMRAudioFile.cpp";
            LOWORD(v42[0]) = 1024;
            *(v42 + 2) = 852;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", buf, 0x12u);
          }

          if (v18 != -39)
          {
            goto LABEL_16;
          }

LABEL_45:
          if (v36)
          {
            *v36 = v40;
          }

          goto LABEL_16;
        }
      }

      v36 = v38;
      goto LABEL_45;
    }
  }

  v18 = 2003334207;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AMRAudioFile.cpp";
    LOWORD(v42[0]) = 1024;
    *(v42 + 2) = 768;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%25s:%-5d  invalid num packets parameter";
    goto LABEL_15;
  }

LABEL_16:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t AMRAudioFile::InitializeDataSource(AMRAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v4 = 1718449215;
  mFormatID = a2->mFormatID;
  if (mFormatID != 1935764850)
  {
    if (mFormatID != 1935767394)
    {
      return v4;
    }

    *(this + 152) = 1;
  }

  AMRAudioFile::WriteHeader(this);
  mFramesPerPacket = a2->mFramesPerPacket;
  if (!mFramesPerPacket)
  {
    return 0;
  }

  v7 = *(this + 152) ? 320 : 160;
  *(this + 36) = mFramesPerPacket / v7;
  if (v7 <= mFramesPerPacket)
  {
    return 0;
  }

  return v4;
}

void AMRAudioFile::WriteHeader(AMRAudioFile *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (*(this + 152) == 1)
  {
    v10 = 10;
    v9 = *"#!AMR-WB\n";
    if ((*(**(this + 13) + 56))(*(this + 13), 0, 0, 9, &v9, &v4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v6 = "AMRAudioFile.cpp";
        v7 = 1024;
        v8 = 368;
        v2 = MEMORY[0x1E69E9C10];
LABEL_8:
        _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes Failed", buf, 0x12u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(this + 9) = v4;
    goto LABEL_10;
  }

  qmemcpy(&v9, "#!AMR\n", 6);
  if (!(*(**(this + 13) + 56))(*(this + 13), 0, 0, 6, &v9, &v4))
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v6 = "AMRAudioFile.cpp";
    v7 = 1024;
    v8 = 374;
    v2 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

LABEL_10:
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t AMRAudioFile::OpenFromDataSource(AMRAudioFile *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) != 0)
  {
    v2 = 1886547263;
    goto LABEL_42;
  }

  v2 = 1718449215;
  LODWORD(outPropertyData) = 9;
  (*(**(this + 13) + 48))(*(this + 13), 0, 0, 9, inSpecifier, &outPropertyData);
  v3 = *inSpecifier == 1296113955 && *&inSpecifier[4] == 2642;
  if (v3)
  {
    v7 = *(this + 152);
    v22 = 0u;
    v23 = 0u;
    if ((v7 & 1) == 0)
    {
      v8 = 6;
      goto LABEL_17;
    }
  }

  else
  {
    if (*inSpecifier != 0x42572D524D412123 || inSpecifier[8] != 10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *inSpecifier = 136315394;
        *&inSpecifier[4] = "AMRAudioFile.cpp";
        LOWORD(v25) = 1024;
        *(&v25 + 2) = 293;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  AMRAudioFile::OpenFromDataSource - ReadHeader Failed";
LABEL_40:
        _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, inSpecifier, 0x12u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v7 = 1;
    *(this + 152) = 1;
    v22 = 0u;
    v23 = 0u;
  }

  v8 = 9;
LABEL_17:
  *(this + 9) = v8;
  v9 = 8000.0;
  v10 = (v7 & 1) == 0;
  if (v7)
  {
    v11 = 1935767394;
  }

  else
  {
    v11 = 1935764850;
  }

  if (!v10)
  {
    v9 = 16000.0;
  }

  outPropertyData = v9;
  LODWORD(v22) = v11;
  DWORD1(v23) = 1;
  ioPropertyDataSize = 40;
  *inSpecifier = 0x616D72660C000000;
  if (v10)
  {
    v12 = 1919770995;
  }

  else
  {
    v12 = 1651990899;
  }

  *&inSpecifier[8] = v12;
  v25 = 0x61646E650A000000;
  v26 = 0;
  v27 = 0x726D616411000000;
  v28 = 1819308129;
  v29 = 1;
  if (v10)
  {
    v13 = -127;
  }

  else
  {
    v13 = -125;
  }

  v30 = v13;
  v31 = 3840;
  v32 = 0x8000000;
  AudioFormatGetProperty(0x666D7469u, 0x2Fu, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  v3 = *(this + 152) == 0;
  if (HIDWORD(v22))
  {
    if (*(this + 152))
    {
      v14 = 320;
    }

    else
    {
      v14 = 160;
    }

    v15 = HIDWORD(v22) / v14;
  }

  else
  {
    if (*(this + 152))
    {
      v16 = 4800;
    }

    else
    {
      v16 = 2400;
    }

    HIDWORD(v22) = v16;
    v15 = 15;
  }

  *(this + 36) = v15;
  v2 = (*(*this + 184))(this, &outPropertyData);
  if (!v2)
  {
    v19 = 0;
    (*(**(this + 13) + 24))(*(this + 13), &v19);
    (*(*this + 240))(this, v19 - *(this + 9));
    (*(*this + 696))(this, 1, 0, 1);
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *inSpecifier = 136315394;
    *&inSpecifier[4] = "AMRAudioFile.cpp";
    LOWORD(v25) = 1024;
    *(&v25 + 2) = 296;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  AMRAudioFile::OpenFromDataSource - ParseHeader Failed";
    goto LABEL_40;
  }

LABEL_42:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t AMRAudioFile::Create(AMRAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  result = 1718449215;
  mFormatID = a3->mFormatID;
  if (mFormatID == 1935767394 || mFormatID == 1935764850)
  {
    result = AudioFileObject::Create(this, a2, a3);
    if (!result)
    {
      if (a3->mFormatID == 1935767394)
      {
        *(this + 152) = 1;
      }

      mFramesPerPacket = a3->mFramesPerPacket;
      if (!mFramesPerPacket || (!*(this + 152) ? (v9 = 160) : (v9 = 320), *(this + 36) = mFramesPerPacket / v9, result = 1718449215, v9 <= mFramesPerPacket))
      {
        (*(*this + 656))(this, a3->mBytesPerFrame);
        AMRAudioFile::WriteHeader(this);
        return 0;
      }
    }
  }

  return result;
}

void AMRAudioFile::~AMRAudioFile(AMRAudioFile *this)
{
  AudioFileObject::~AudioFileObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AMRAudioFormat::GetHFSCodes(AMRAudioFormat *this, unsigned int *a2, void *__dst)
{
  v6 = xmmword_18F901810;
  v3 = *a2 >> 2;
  if (v3 >= 4)
  {
    v3 = 4;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &v6, v4);
  }

  return 0;
}

uint64_t AMRAudioFormat::GetAvailableStreamDescriptions(AMRAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 1935764850 || a2 == 1935767394)
  {
    v11 = v4;
    v12 = v5;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    DWORD2(v9[0]) = a2;
    if (*a3 >= 0x28)
    {
      v7 = 40;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (__dst)
    {
      memcpy(__dst, v9, v7);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t AMRAudioFormat::GetAvailableFormatIDs(AMRAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 0x7361776273616D72;
  v3 = *a2 >> 2;
  if (v3 >= 2)
  {
    v3 = 2;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

void AMRAudioFormat::GetFileTypeName(AMRAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"AMR");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AMR", @"AMR", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AMRAudioFormat::GetMIMETypes(AMRAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/AMR";
  values[1] = @"audio/AMR-WB";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AMRAudioFormat::GetUTIs(AMRAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"org.3gpp.adaptive-multi-rate-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *AMRAudioFormat::GetExtensions(AMRAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"amr";
  values[1] = @"awb";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AMRAudioFormat::FileDataIsThisFormat(AMRAudioFormat *this, unsigned int a2, char *__s1)
{
  if (a2 < 9)
  {
    return 0;
  }

  if (!strncmp(__s1, "#!AMR\n", 6uLL))
  {
    return 1;
  }

  return strncmp(__s1, "#!AMR-WB\n", 9uLL) == 0;
}

BOOL AMRAudioFormat::ExtensionIsThisFormat(AMRAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"amr", 1uLL))
  {
    return CFStringCompare(theString1, @"awb", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

BOOL KeyIsValid(const __CFString *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"main loudness parameters");
    CFArrayAppendValue(v3, @"sound check info");
    CFArrayAppendValue(v3, @"additional loudness parameters");
    CFArrayAppendValue(v3, @"dialogue anchor parameters");
  }

  v4 = 0;
  do
  {
    v5 = v4;
    Count = CFArrayGetCount(v3);
    if (v5 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
    v8 = CFEqual(a1, ValueAtIndex);
    v4 = v5 + 1;
  }

  while (!v8);
  if (v3)
  {
    CFRelease(v3);
  }

  return v5 < Count;
}

uint64_t RemoveKeyFromList(CFArrayRef theArray, const __CFString *a2)
{
  while (1)
  {
    v5.length = CFArrayGetCount(theArray);
    v5.location = 0;
    result = CFArrayGetFirstIndexOfValue(theArray, v5, a2);
    if (result == -1)
    {
      break;
    }

    CFArrayRemoveValueAtIndex(theArray, result);
  }

  return result;
}

uint64_t ___ZN11APComponent11newInstanceEjbU13block_pointerFvP28OpaqueAudioComponentInstanceiE_block_invoke(void *a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a1[5];
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v10 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      to_string(v5 + 3, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v17 = "APComponent.mm";
      v18 = 1024;
      v19 = 354;
      v20 = 1024;
      v21 = a3;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d error %d returned from OpenAsync for %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v13 = a1[6];
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    result = (*(a1[4] + 16))();
    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = a1[4];
    v7 = *(a1[4] + 16);
    v8 = *MEMORY[0x1E69E9840];

    return v7();
  }

  return result;
}

RenderContextChangeGenerator *std::optional<RenderContextChangeGenerator>::emplace[abi:ne200100]<void({block_pointer} {__strong}&)(AudioUnitRenderContext const*),void>(RenderContextChangeGenerator *this, void **a2)
{
  if (LOBYTE(this[1].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this);
    LOBYTE(this[1].mLastWorkgroup) = 0;
  }

  v4 = *a2;
  this->mLastWorkgroup = 0;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  this->mObserver = v4;
  LOBYTE(this[1].mLastWorkgroup) = 1;
  return this;
}

uint64_t APComponent_FromBundle_Loadable::ResolveFactoryFunction(APComponent_FromBundle_Loadable *this)
{
  v39 = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = *(this + 24);
  if (!v2)
  {
    v7 = *(this + 20);
    if (!v7)
    {
      goto LABEL_38;
    }

    v8 = CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, 1u);
    *buf = v8;
    v9 = CFBundleCreate(0, v8);
    v10 = *(this + 24);
    *(this + 24) = v9;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v2 = *(this + 24);
    if (!v2)
    {
      goto LABEL_38;
    }
  }

  if (!CFBundleLoadExecutableAndReturnError(v2, &error))
  {
    v11 = error;
    if (error)
    {
      v12 = CFErrorCopyDescription(error);
      v11 = error;
    }

    else
    {
      v12 = 0;
    }

    v20 = CFErrorCopyUserInfo(v11);
    v21 = v20;
    if (v20)
    {
      Value = CFDictionaryGetValue(v20, @"NSDebugDescription");
    }

    else
    {
      Value = 0;
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v23 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v25 = *(this + 24);
      *buf = 136316162;
      *&buf[4] = "APComponent.mm";
      *&buf[12] = 1024;
      *&buf[14] = 890;
      v35 = 2112;
      *v36 = v25;
      *&v36[8] = 2112;
      *&v36[10] = v12;
      v37 = 2112;
      v38 = Value;
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: cannot load bundle: %@ (%@)", buf, 0x30u);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (error)
    {
      CFRelease(error);
    }

LABEL_38:
    result = 0xFFFFFFFFLL;
    goto LABEL_50;
  }

  v3 = *(this + 22);
  if (v3)
  {
    FunctionPointerForName = CFBundleGetFunctionPointerForName(*(this + 24), v3);
    v5 = FunctionPointerForName;
    *&v36[4] = 0;
    if (FunctionPointerForName)
    {
      *buf = &unk_1F032B9E0;
      *&buf[8] = FunctionPointerForName;
      *&v36[4] = buf;
    }

    std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](buf, this + 10);
    std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](buf);
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(this + 24);
      v19 = *(this + 22);
      *buf = 136316162;
      *&buf[4] = "APComponent.mm";
      *&buf[12] = 1024;
      *&buf[14] = 915;
      v35 = 2112;
      *v36 = v18;
      *&v36[8] = 2112;
      *&v36[10] = v19;
      v37 = 2048;
      v38 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ %@ -> %p", buf, 0x30u);
    }
  }

  else
  {
    v13 = *(this + 23);
    if (v13)
    {
      v14 = v13;
      v15 = NSClassFromString(v14);

      if (v15)
      {
        *(this + 25) = v15;
        v16 = v15;
        *buf = &unk_1F032BA28;
        *&buf[8] = v16;
        *&v36[4] = buf;
        std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](buf, this + 10);
        std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](buf);
      }

      else
      {
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v27 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = *(this + 24);
          CAFormatter::CAFormatter(&v32, (this + 36));
          v30 = *(this + 23);
          *buf = 136316162;
          *&buf[4] = "APComponent.mm";
          *&buf[12] = 1024;
          *&buf[14] = 920;
          v35 = 2112;
          *v36 = v29;
          *&v36[8] = 2080;
          *&v36[10] = v32;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: %s: AUAudioUnit subclass %@ not found", buf, 0x30u);
          if (v32)
          {
            free(v32);
          }
        }
      }
    }
  }

  if (*(this + 13))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_50:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F73DDC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F032BA28;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

id APComponent_FromBundle_Loadable::getV3Class(APComponent_FromBundle_Loadable *this)
{
  if (!*(this + 13))
  {
    (*(*this + 96))(this);
  }

  v2 = *(this + 25);

  return v2;
}

void APComponent_FromBundle_Loadable::~APComponent_FromBundle_Loadable(APComponent *this)
{
  *this = &unk_1F033C940;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent_FromBundle_Base::~APComponent_FromBundle_Base(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C940;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent_FromBundle_Base::~APComponent_FromBundle_Base(this);
}

uint64_t getConfigurationInfo(const AudioComponentDescription *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1->componentType)
  {
    v7 = a1->componentSubType == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a1->componentManufacturer != 0 && HIWORD(a1->componentType) == 24949;
  v10 = v9;
  if (v9)
  {
    v11 = createConfgurationInfoCacheKey(a1, a2);
    v12 = copyConfigurationInfoFromCache(v11);
    if (v12)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
      addValidationStatusIfExists(a1, a2, MutableCopy);
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v15 = *gAudioComponentLogCategory;
      v16 = v15;
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "AudioComponentConfigurationInfo.mm";
        *&buf[12] = 1024;
        *&buf[14] = 249;
        _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d returning cached info", buf, 0x12u);
      }

      (v6)[2](v6, MutableCopy);
    }

    else
    {
      v27 = *&a1->componentType;
      componentFlagsMask = a1->componentFlagsMask;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = ___Z20getConfigurationInfoRK25AudioComponentDescriptionjU13block_pointerFvPK14__CFDictionaryE_block_invoke;
      v22 = &unk_1E72BABC8;
      v24 = v6;
      v23 = v11;
      v25 = a1;
      v26 = a2;
      v14 = &v19;
      v29 = v27;
      v30 = componentFlagsMask;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL38instantiateAndCatalogConfigurationInfo25AudioComponentDescriptionU13block_pointerFvP14__CFDictionaryE_block_invoke;
      v32 = &unk_1E72BABF0;
      v33 = v14;
      v34 = v27;
      v35 = componentFlagsMask;
      [AUAudioUnit instantiateWithComponentDescription:&v29 options:1 completionHandler:buf, v19, v20, v21, v22];
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void addValidationStatusIfExists(const AudioComponentDescription *a1, uint64_t a2, __CFDictionary *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = objc_opt_new();
  v19[0] = 0xC01000007;
  getValidationCapsuleVersion();
  v6 = v5;
  for (i = 0; i != 8; i += 4)
  {
    v8 = *(v19 + i);
    v9 = getValidationResultFromCache(a1, v8, a2, v6, 0);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"Result"];
      v12 = [v11 intValue];

      if (v12)
      {
        v13 = [v10 objectForKeyedSubscript:@"Result"];
        v14 = @"arm64";
        if (v8 == 16777223)
        {
          v14 = @"x86_64";
        }

        v15 = v14;
        [v18 setObject:v13 forKeyedSubscript:v15];
      }
    }
  }

  if ([v18 count])
  {
    [(__CFDictionary *)v17 setObject:v18 forKeyedSubscript:@"ValidationResult"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t ___Z20getConfigurationInfoRK25AudioComponentDescriptionjU13block_pointerFvPK14__CFDictionaryE_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = [v3 objectForKeyedSubscript:@"ChannelConfigurations"];
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [v3 objectForKeyedSubscript:@"ChannelConfigurations"];
    v6 = [v5 count];

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [v3 objectForKeyedSubscript:@"InitialInputs"];
    if (v7 && ([v3 objectForKeyedSubscript:@"InitialOutputs"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {

      writeConfigurationInfoToCache(*(a1 + 32), v3);
    }

    else
    {
LABEL_7:
    }

    addValidationStatusIfExists(*(a1 + 48), *(a1 + 56), v3);
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v13 = *gAudioComponentLogCategory;
    v14 = v13;
    if (v13)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        v17 = 136315906;
        v18 = "AudioComponentConfigurationInfo.mm";
        v19 = 1024;
        v20 = 265;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ -> %@", &v17, 0x26u);
      }
    }

    result = (*(*(a1 + 40) + 16))();
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 40) + 16);
    v11 = *MEMORY[0x1E69E9840];

    return v10();
  }

  return result;
}

void ___ZL38instantiateAndCatalogConfigurationInfo25AudioComponentDescriptionU13block_pointerFvP14__CFDictionaryE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v47 = a3;
  v48 = v5;
  if (v5)
  {
    v46 = a1;
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "providesUserInterface")}];
    [v6 setObject:v7 forKeyedSubscript:@"HasCustomView"];

    v8 = v5;
    v9 = [v8 channelCapabilities];
    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v9 count];
      if ((v11 & 0xFFFFFFFE) >= 1)
      {
        v12 = 0;
        v13 = v11 & 0xFFFFFFFE;
        do
        {
          v14 = [v9 objectAtIndexedSubscript:v12];
          v50[0] = v14;
          v15 = v12 + 1;
          v16 = [v9 objectAtIndexedSubscript:v12 + 1];
          v50[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
          [v10 addObject:v17];

          v12 = v15 + 1;
        }

        while (v15 + 1 < v13);
      }
    }

    else
    {
      v45 = *(v46 + 40);
      v10 = &unk_1F034DE90;
      if (v45 != 1635083896 && v45 != 1635085670 && v45 != 1635086188)
      {
        v10 = MEMORY[0x1E695E0F0];
      }
    }

    [v6 setObject:v10 forKeyedSubscript:@"ChannelConfigurations"];
    v18 = [v8 inputBusses];
    v19 = busArrayChannelCounts(v18);

    if (v19)
    {
      [v6 setObject:v19 forKeyedSubscript:@"InitialInputs"];
    }

    v20 = [v8 outputBusses];
    v21 = busArrayChannelCounts(v20);

    if (v21)
    {
      [v6 setObject:v21 forKeyedSubscript:@"InitialOutputs"];
    }

    v49[0] = MEMORY[0x1E695E110];
    v22 = MEMORY[0x1E696AD98];
    v23 = [v8 inputBusses];
    v24 = [v22 numberWithBool:{objc_msgSend(v23, "isCountChangeable")}];
    v49[1] = v24;
    v25 = MEMORY[0x1E696AD98];
    v26 = [v8 outputBusses];
    v27 = [v25 numberWithBool:{objc_msgSend(v26, "isCountChangeable")}];
    v49[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
    [v6 setObject:v28 forKeyedSubscript:@"BusCountWritable"];

    v29 = objc_opt_new();
    v30 = [v8 inputBusses];
    v31 = [v30 count] == 0;

    if (!v31)
    {
      v32 = [v8 inputBusses];
      v33 = [v32 objectAtIndexedSubscript:0];
      v34 = [v33 supportedChannelLayoutTags];
      [v29 setObject:v34 forKeyedSubscript:@"Input"];
    }

    v35 = [v8 outputBusses];
    v36 = [v35 count] == 0;

    if (!v36)
    {
      v37 = [v8 outputBusses];
      v38 = [v37 objectAtIndexedSubscript:0];
      v39 = [v38 supportedChannelLayoutTags];
      [v29 setObject:v39 forKeyedSubscript:@"Output"];
    }

    [v6 setObject:v29 forKeyedSubscript:@"SupportedChannelLayoutTags"];
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "AudioUnitMIDIProtocol")}];
    [v6 setObject:v40 forKeyedSubscript:@"MIDIProtocol"];

    v41 = [v8 migrateFromPlugin];
    [v6 setObject:v41 forKeyedSubscript:@"MigrateFromPlugin"];

    v42 = *(v46 + 32);
    v43 = v6;
    (*(v42 + 16))(v42, v43);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v44 = *MEMORY[0x1E69E9840];
}

id busArrayChannelCounts(AUAudioUnitBusArray *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [(AUAudioUnitBusArray *)v1 count])
  {
    v3 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v2;
    v5 = [(AUAudioUnitBusArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v12 + 1) + 8 * i) format];
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "channelCount")}];
          [v3 addObject:v9];
        }

        v5 = [(AUAudioUnitBusArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t MP4USACSpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v141 = *MEMORY[0x1E69E9840];
  *(a1 + 216) = 0;
  v4 = *(a2 + 16);
  v5 = v4 >> 27;
  v6 = *(a2 + 20) - 5;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 32 * v4;
  }

  *(a2 + 16) = v7;
  if (v5 > 0x1F)
  {
    goto LABEL_16;
  }

  if (((1 << v5) & 0x70006000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v137 = 136315394;
      v138 = "MP4USACSpecificConfig.cpp";
      v139 = 1024;
      v140 = 176;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: reserved sample rate index";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v5 == 31)
  {
    v14 = v7 >> 8;
    v6 -= 24;
    *(a2 + 20) = v6;
    if (v6 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v16 = *(a2 + 16);
      v15 = *(a2 + 20);
      v14 |= v16 >> v15;
      v6 = v15 + 32;
      if (v15 == -32)
      {
        v7 = 0;
      }

      else
      {
        v7 = v16 << -v15;
      }
    }

    else
    {
      v7 <<= 24;
    }

    *(a2 + 16) = v7;
  }

  else
  {
LABEL_16:
    v14 = kUSACSampleRateTable[v5];
  }

  *(a1 + 8) = v14;
  v17 = v7 >> 29;
  v18 = v6 - 3;
  *(a2 + 20) = v18;
  if (v18 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v21 = *(a2 + 16);
    v20 = *(a2 + 20);
    v17 |= v21 >> v20;
    v18 = v20 + 32;
    *(a2 + 20) = v20 + 32;
    if (v20 == -32)
    {
      v19 = 0;
    }

    else
    {
      v19 = v21 << -v20;
    }
  }

  else
  {
    v19 = 8 * v7;
  }

  *(a2 + 16) = v19;
  *(a1 + 12) = v17;
  if (v17 >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v137 = 136315394;
      v138 = "MP4USACSpecificConfig.cpp";
      v139 = 1024;
      v140 = 186;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: reserved coreSbrFrameLengthIndex";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v22 = v19 >> 27;
  v23 = v18 - 5;
  *(a2 + 20) = v23;
  if (v23 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v26 = *(a2 + 16);
    v25 = *(a2 + 20);
    v22 |= v26 >> v25;
    *(a2 + 20) = v25 + 32;
    if (v25 == -32)
    {
      v24 = 0;
    }

    else
    {
      v24 = v26 << -v25;
    }
  }

  else
  {
    v24 = 32 * v19;
  }

  *(a2 + 16) = v24;
  *(a1 + 16) = v22;
  if (!v22)
  {
    v27 = escapedValue(a2, 5, 8, 16);
    v28 = *(a1 + 24);
    v29 = v27;
    v30 = *(a1 + 32) - v28;
    if (v27 <= v30)
    {
      if (v27 < v30)
      {
        *(a1 + 32) = v28 + v27;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 24), v27 - v30);
    }

    if (v29)
    {
      for (i = 0; i != v29; ++i)
      {
        v32 = *(a2 + 16);
        v33 = v32 >> 27;
        v34 = *(a2 + 20) - 5;
        *(a2 + 20) = v34;
        if (v34 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v37 = *(a2 + 16);
          v36 = *(a2 + 20);
          v33 |= v37 >> v36;
          *(a2 + 20) = v36 + 32;
          if (v36 == -32)
          {
            v35 = 0;
          }

          else
          {
            v35 = v37 << -v36;
          }
        }

        else
        {
          v35 = 32 * v32;
        }

        *(a2 + 16) = v35;
        *(*(a1 + 24) + i) = v33;
      }
    }
  }

  v38 = escapedValue(a2, 4, 8, 16);
  v39 = (v38 + 1);
  v40 = *(a1 + 48);
  v41 = *(a1 + 56);
  v42 = (v41 - v40) >> 2;
  if (v39 > v42)
  {
    v43 = v39 - v42;
    v44 = *(a1 + 64);
    if (v43 > (v44 - v41) >> 2)
    {
      v45 = v44 - v40;
      v46 = v45 >> 1;
      if (v45 >> 1 <= v39)
      {
        v46 = (v38 + 1);
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v47 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v46;
      }

      if (!(v47 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a1 + 56), 4 * v43);
    v48 = v41 + 4 * v43;
    goto LABEL_59;
  }

  if (v39 < v42)
  {
    v48 = v40 + 4 * v39;
LABEL_59:
    *(a1 + 56) = v48;
  }

  if (!v39)
  {
LABEL_158:
    Bit = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 185) = Bit != 0;
    if (Bit)
    {
      v112 = escapedValue(a2, 2, 4, 8);
      if (v112 != -1)
      {
        v113 = v112;
        v114 = 0;
        do
        {
          v115 = escapedValue(a2, 4, 8, 16);
          v116 = escapedValue(a2, 4, 8, 16);
          v117 = v116;
          if (v115 == 2)
          {
            v125 = v116;
            v126 = *(a1 + 192);
            v127 = *(a1 + 200) - v126;
            if (v116 <= v127)
            {
              if (v116 < v127)
              {
                *(a1 + 200) = v126 + v116;
              }
            }

            else
            {
              std::vector<unsigned char>::__append((a1 + 192), v116 - v127);
            }

            if (v117)
            {
              v128 = 0;
              do
              {
                v129 = *(a2 + 16);
                v130 = HIBYTE(v129);
                v131 = *(a2 + 20) - 8;
                *(a2 + 20) = v131;
                if (v131 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v134 = *(a2 + 16);
                  v133 = *(a2 + 20);
                  v130 |= v134 >> v133;
                  *(a2 + 20) = v133 + 32;
                  if (v133 == -32)
                  {
                    v132 = 0;
                  }

                  else
                  {
                    v132 = v134 << -v133;
                  }
                }

                else
                {
                  v132 = v129 << 8;
                }

                *(a2 + 16) = v132;
                *(*(a1 + 192) + v128++) = v130;
              }

              while (v125 != v128);
            }
          }

          else if (v115)
          {
            TBitstreamReader<unsigned int>::SkipBits(a2, 8 * v116);
          }

          else
          {
            v118 = v116 + 1;
            while (--v118)
            {
              v119 = *(a2 + 16);
              v120 = HIBYTE(v119);
              v121 = *(a2 + 20) - 8;
              *(a2 + 20) = v121;
              if (v121 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                *a2 += 4;
                v124 = *(a2 + 16);
                v123 = *(a2 + 20);
                v120 |= v124 >> v123;
                *(a2 + 20) = v123 + 32;
                if (v123 == -32)
                {
                  v122 = 0;
                }

                else
                {
                  v122 = v124 << -v123;
                }
              }

              else
              {
                v122 = v119 << 8;
              }

              *(a2 + 16) = v122;
              if (v120 != 165)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v137 = 136315394;
                  v138 = "MP4USACSpecificConfig.cpp";
                  v139 = 1024;
                  v140 = 309;
                  v10 = MEMORY[0x1E69E9C10];
                  v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: invalid fill pattern for ID_CONFIG_EXT_FILL";
                  goto LABEL_10;
                }

                goto LABEL_11;
              }
            }
          }
        }

        while (v114++ != v113);
      }
    }

    result = 0;
    *(a1 + 216) = 1;
    goto LABEL_12;
  }

  v49 = 0;
  while (1)
  {
    v50 = *(a2 + 16);
    v51 = v50 >> 30;
    v52 = *(a2 + 20) - 2;
    *(a2 + 20) = v52;
    if (v52 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v55 = *(a2 + 16);
      v54 = *(a2 + 20);
      v51 |= v55 >> v54;
      *(a2 + 20) = v54 + 32;
      if (v54 == -32)
      {
        v53 = 0;
      }

      else
      {
        v53 = v55 << -v54;
      }
    }

    else
    {
      v53 = 4 * v50;
    }

    *(a2 + 16) = v53;
    *(*(a1 + 48) + 4 * v49) = v51;
    if (v51 <= 1)
    {
      v56 = kUSACSbrFrameLengthInfoTable[4 * *(a1 + 12) + 1];
      if (v51)
      {
        if (v51 == 1)
        {
          *(a1 + 72) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 73) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          if (v56)
          {
            *(a1 + 74) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            *(a1 + 75) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            *(a1 + 76) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            USACSBRHeader::Deserialize(a1 + 77, a2);
            v57 = *(a2 + 16);
            v58 = v57 >> 30;
            v59 = *(a2 + 20) - 2;
            *(a2 + 20) = v59;
            if (v59 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v72 = *(a2 + 16);
              v71 = *(a2 + 20);
              v58 |= v72 >> v71;
              v59 = v71 + 32;
              *(a2 + 20) = v71 + 32;
              v60 = v71 == -32 ? 0 : v72 << -v71;
            }

            else
            {
              v60 = 4 * v57;
            }

            *(a2 + 16) = v60;
            if (v58)
            {
              v76 = v60 >> 19;
              v77 = v59 - 13;
              *(a2 + 20) = v77;
              if (v77 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                *a2 += 4;
                v80 = *(a2 + 16);
                v79 = *(a2 + 20);
                v76 |= v80 >> v79;
                v77 = v79 + 32;
                *(a2 + 20) = v79 + 32;
                if (v79 == -32)
                {
                  v78 = 0;
                }

                else
                {
                  v78 = v80 << -v79;
                }
              }

              else
              {
                v78 = v60 << 13;
              }

              *(a2 + 16) = v78;
              *(a1 + 88) = (v76 >> 10) & 7;
              *(a1 + 89) = (v76 >> 7) & 7;
              v102 = vand_s8(vshl_u16((*&vdup_n_s16(v76) & 0xFF00FF00FF00FFLL), 0xFFFFFFFEFFFDFFFBLL), 0x1000100030003);
              *(a1 + 90) = vuzp1_s8(v102, v102).u32[0];
              *(a1 + 94) = v76 & 1;
              if (v76)
              {
                v103 = v78 >> 27;
                v77 -= 5;
                *(a2 + 20) = v77;
                if (v77 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v105 = *(a2 + 16);
                  v104 = *(a2 + 20);
                  v103 |= v105 >> v104;
                  v77 = v104 + 32;
                  *(a2 + 20) = v104 + 32;
                  if (v104 == -32)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = v105 << -v104;
                  }
                }

                else
                {
                  v78 *= 32;
                }

                *(a2 + 16) = v78;
                *(a1 + 95) = v103;
              }

              if ((v58 & 0xFFFFFFFE) == 2)
              {
                v106 = v78 >> 27;
                v107 = v77 - 5;
                *(a2 + 20) = v107;
                if (v107 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v110 = *(a2 + 16);
                  v109 = *(a2 + 20);
                  v106 |= v110 >> v109;
                  *(a2 + 20) = v109 + 32;
                  if (v109 == -32)
                  {
                    v108 = 0;
                  }

                  else
                  {
                    v108 = v110 << -v109;
                  }
                }

                else
                {
                  v108 = 32 * v78;
                }

                *(a2 + 16) = v108;
                *(a1 + 96) = v106;
                if (*(a1 + 95) < v106)
                {
                  *(a1 + 95) = v106;
                }

                *(a1 + 97) = TBitstreamReader<unsigned int>::GetBit(a2);
              }

              if (*(a1 + 90) == 2)
              {
                *(a1 + 98) = TBitstreamReader<unsigned int>::GetBit(a2);
              }

              *(a1 + 99) = 1;
            }
          }
        }
      }

      else
      {
        *(a1 + 72) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
        *(a1 + 73) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
        if (v56)
        {
          *(a1 + 74) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 75) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 76) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          USACSBRHeader::Deserialize(a1 + 77, a2);
        }
      }

      goto LABEL_157;
    }

    if (v51 == 2)
    {
      *(a1 + 72) = 0;
      goto LABEL_157;
    }

    if (v51 == 3)
    {
      break;
    }

LABEL_157:
    if (++v49 == v39)
    {
      goto LABEL_158;
    }
  }

  v61 = escapedValue(a2, 4, 8, 16);
  v62 = escapedValue(a2, 4, 8, 16);
  v63 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 100) = v63 != 0;
  if (v63)
  {
    v64 = escapedValue(a2, 8, 16, 0) + 1;
  }

  else
  {
    v64 = 0;
  }

  *(a1 + 104) = v64;
  *(a1 + 108) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
  if (v61 <= 1)
  {
    if (v61)
    {
      if (v61 == 1)
      {
        v68 = v62;
        v69 = *(a1 + 112);
        v70 = *(a1 + 120) - v69;
        if (v62 <= v70)
        {
          if (v62 < v70)
          {
            *(a1 + 120) = v69 + v62;
          }
        }

        else
        {
          std::vector<unsigned char>::__append((a1 + 112), v62 - v70);
        }

        if (v62)
        {
          v95 = 0;
          do
          {
            v96 = *(a2 + 16);
            v97 = HIBYTE(v96);
            v98 = *(a2 + 20) - 8;
            *(a2 + 20) = v98;
            if (v98 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v101 = *(a2 + 16);
              v100 = *(a2 + 20);
              v97 |= v101 >> v100;
              *(a2 + 20) = v100 + 32;
              if (v100 == -32)
              {
                v99 = 0;
              }

              else
              {
                v99 = v101 << -v100;
              }
            }

            else
            {
              v99 = v96 << 8;
            }

            *(a2 + 16) = v99;
            *(*(a1 + 112) + v95++) = v97;
          }

          while (v68 != v95);
        }

        goto LABEL_157;
      }

      goto LABEL_96;
    }

    goto LABEL_157;
  }

  switch(v61)
  {
    case 2:
      v73 = v62;
      v74 = *(a1 + 136);
      v75 = *(a1 + 144) - v74;
      if (v62 <= v75)
      {
        if (v62 < v75)
        {
          *(a1 + 144) = v74 + v62;
        }
      }

      else
      {
        std::vector<unsigned char>::__append((a1 + 136), v62 - v75);
      }

      if (v62)
      {
        v81 = 0;
        do
        {
          v82 = *(a2 + 16);
          v83 = HIBYTE(v82);
          v84 = *(a2 + 20) - 8;
          *(a2 + 20) = v84;
          if (v84 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v87 = *(a2 + 16);
            v86 = *(a2 + 20);
            v83 |= v87 >> v86;
            *(a2 + 20) = v86 + 32;
            if (v86 == -32)
            {
              v85 = 0;
            }

            else
            {
              v85 = v87 << -v86;
            }
          }

          else
          {
            v85 = v82 << 8;
          }

          *(a2 + 16) = v85;
          *(*(a1 + 136) + v81++) = v83;
        }

        while (v73 != v81);
      }

      goto LABEL_157;
    case 3:
      *(a1 + 184) = v49 == 0;
      goto LABEL_157;
    case 4:
      v65 = v62;
      v66 = *(a1 + 160);
      v67 = *(a1 + 168) - v66;
      if (v62 <= v67)
      {
        if (v62 < v67)
        {
          *(a1 + 168) = v66 + v62;
        }
      }

      else
      {
        std::vector<unsigned char>::__append((a1 + 160), v62 - v67);
      }

      if (v62)
      {
        v88 = 0;
        do
        {
          v89 = *(a2 + 16);
          v90 = HIBYTE(v89);
          v91 = *(a2 + 20) - 8;
          *(a2 + 20) = v91;
          if (v91 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v94 = *(a2 + 16);
            v93 = *(a2 + 20);
            v90 |= v94 >> v93;
            *(a2 + 20) = v93 + 32;
            if (v93 == -32)
            {
              v92 = 0;
            }

            else
            {
              v92 = v94 << -v93;
            }
          }

          else
          {
            v92 = v89 << 8;
          }

          *(a2 + 16) = v92;
          *(*(a1 + 160) + v88++) = v90;
        }

        while (v65 != v88);
      }

      goto LABEL_157;
  }

LABEL_96:
  if (8 * v62 <= *(a2 + 20) + 8 * (*(a2 + 8) - *a2))
  {
    TBitstreamReader<unsigned int>::SkipBits(a2, 8 * v62);
    goto LABEL_157;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v137 = 136315394;
    v138 = "MP4USACSpecificConfig.cpp";
    v139 = 1024;
    v140 = 290;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: insufficient bits";
LABEL_10:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, &v137, 0x12u);
  }

LABEL_11:
  result = 4294967090;
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t escapedValue(uint64_t a1, int a2, int a3, int a4)
{
  v6 = a2;
  v8 = *(a1 + 16);
  v9 = v8 >> -a2;
  v10 = *(a1 + 20) - a2;
  *(a1 + 20) = v10;
  if (v10 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v13 = *(a1 + 16);
    v12 = *(a1 + 20);
    v9 = (v13 >> v12) | v9;
    v10 = v12 + 32;
    *(a1 + 20) = v12 + 32;
    if (v12 == -32)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 << -v12;
    }
  }

  else
  {
    v11 = v8 << a2;
  }

  *(a1 + 16) = v11;
  if ((v9 ^ (-1 << v6)) == 0xFFFFFFFF)
  {
    v14 = v11 >> -a3;
    v15 = v10 - a3;
    *(a1 + 20) = v15;
    if (v15 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v18 = *(a1 + 16);
      v17 = *(a1 + 20);
      v14 |= v18 >> v17;
      v15 = v17 + 32;
      *(a1 + 20) = v17 + 32;
      v16 = v17 == -32 ? 0 : v18 << -v17;
    }

    else
    {
      v16 = v11 << a3;
    }

    *(a1 + 16) = v16;
    v9 = v14 + v9;
    if ((v14 ^ (-1 << a3)) == 0xFFFFFFFF)
    {
      if (a4)
      {
        v19 = v16 >> -a4;
        v20 = v15 - a4;
        *(a1 + 20) = v20;
        if (v20 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
          *a1 += 4;
          v23 = *(a1 + 16);
          v22 = *(a1 + 20);
          v19 |= v23 >> v22;
          *(a1 + 20) = v22 + 32;
          if (v22 == -32)
          {
            v21 = 0;
          }

          else
          {
            v21 = v23 << -v22;
          }
        }

        else
        {
          v21 = v16 << a4;
        }

        *(a1 + 16) = v21;
      }

      else
      {
        v19 = 0;
      }

      return v19 + v9;
    }
  }

  return v9;
}

uint64_t USACSBRHeader::Deserialize(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = v4 >> 22;
  v6 = *(a2 + 20) - 10;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = v4 << 10;
  }

  *(a2 + 16) = v7;
  *v3 = (v5 >> 6) & 0xF;
  *(v3 + 1) = (v5 >> 2) & 0xF;
  *(v3 + 2) = (v5 & 2) != 0;
  *(v3 + 6) = v5 & 1;
  if ((v5 >> 1))
  {
    v13 = v7 >> 27;
    v6 -= 5;
    *(a2 + 20) = v6;
    if (v6 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v17 = *(a2 + 16);
      v16 = *(a2 + 20);
      v13 |= v17 >> v16;
      v6 = v16 + 32;
      *(a2 + 20) = v16 + 32;
      if (v16 == -32)
      {
        v7 = 0;
      }

      else
      {
        v7 = v17 << -v16;
      }
    }

    else
    {
      v7 *= 32;
    }

    *(a2 + 16) = v7;
    *(v3 + 3) = (v13 >> 3) & 3;
    *(v3 + 4) = (v13 & 4) != 0;
    *(v3 + 5) = v13 & 3;
    if (*(v3 + 6))
    {
      goto LABEL_8;
    }

LABEL_20:
    *(v3 + 7) = 514;
    v18 = 1;
    *(v3 + 9) = 1;
    goto LABEL_21;
  }

  *(v3 + 3) = 258;
  *(v3 + 5) = 2;
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v10 = v7 >> 26;
  v11 = v6 - 6;
  *(a2 + 20) = v11;
  if (v11 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v10 |= v15 >> v14;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v7 << 6;
  }

  *(a2 + 16) = v12;
  *(v3 + 7) = (v10 >> 4) & 3;
  *(v3 + 8) = (v10 >> 2) & 3;
  *(v3 + 9) = (v10 & 2) != 0;
  v18 = v10 & 1;
LABEL_21:
  *(v3 + 10) = v18;
  return result;
}

void MP4USACSpecificConfig::~MP4USACSpecificConfig(MP4USACSpecificConfig *this)
{
  *this = &unk_1F032BA70;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BA70;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }
}

uint64_t ID3FileStream::ParseHeader(uint64_t a1)
{
  v153 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 236);
  if (v2 > 129)
  {
    if (v2 > 170)
    {
      switch(v2)
      {
        case 171:
          v39 = *(a1 + 256);
          v40 = *(a1 + 264);
          goto LABEL_163;
        case 200:
          v43 = *(a1 + 256);
          v44 = *(a1 + 8);
          v45 = *(a1 + 264);
          goto LABEL_140;
        case 235:
          v3 = *(a1 + 256);
          v4 = *(a1 + 264);
          goto LABEL_113;
      }

      goto LABEL_61;
    }

    if (v2 != 130)
    {
      if (v2 == 157)
      {
        v28 = *(a1 + 256);
        v29 = *(a1 + 264);
        goto LABEL_154;
      }

      goto LABEL_61;
    }

    LODWORD(v41) = *(a1 + 256);
    v42 = *(a1 + 264);
LABEL_96:
    *__little = v41;
    StreamBuffer::Copy((*(a1 + 8) + 72), __little, v42);
    v58 = *__little;
    v59 = *(a1 + 256);
    *(a1 + 264) += *__little;
    v60 = v59 - v58;
    *(a1 + 256) = v60;
    if (v60)
    {
      result = 0;
      v38 = 130;
      goto LABEL_73;
    }

    v55 = *(a1 + 336);
    while (1)
    {
      v61 = (a1 + 420);
      *(a1 + 420) = 0;
      ID3TagBase::GetFrameDataSize(v55, (a1 + 402), 0xAu, (a1 + 416), (a1 + 420));
      v62 = *(a1 + 336);
      if (v62[16] == 4 && (v63 = *v61, v64 = *(a1 + 416), *v61 > v64) && (*(a1 + 344) + v63) < v62[13])
      {
        if (ID3FileStream::IsCurFrameRequired(a1))
        {
          v65 = malloc_type_malloc((v62[14] + v63), 0x8BB61EBAuLL);
          v66 = *(a1 + 336);
          if (v65)
          {
            v67 = *(v66 + 56);
          }

          else
          {
            v67 = *(v66 + 56);
            if (*v61 + v67)
            {
              exception = __cxa_allocate_exception(8uLL);
              v150 = std::bad_alloc::bad_alloc(exception);
            }
          }

          *(a1 + 440) = v65;
          memcpy(v65, (a1 + 402), v67);
          v110 = *(*(a1 + 336) + 56);
          v28 = v110 + *(a1 + 416);
          *(a1 + 256) = v28;
          v29 = (*(a1 + 440) + v110);
          *(a1 + 264) = v29;
LABEL_154:
          *__little = v28;
          StreamBuffer::Copy((*(a1 + 8) + 72), __little, v29);
          v111 = *__little;
          v112 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v113 = v112 - v111;
          *(a1 + 256) = v113;
          if (v113)
          {
            result = 0;
            v38 = 157;
            goto LABEL_73;
          }

          v114 = *(a1 + 336);
          v115 = *(a1 + 440);
          if (v115)
          {
            v116 = bswap32(*(v115 + *(a1 + 416) + v114[14]));
            v117 = v114[16];
            if (v117 == 2)
            {
              v118 = v116 >> 8;
            }

            else
            {
              v118 = v116;
            }
          }

          else
          {
            v118 = 0;
            v117 = v114[16];
          }

          if (ID3TagBase::IsValidFrameID(v117, v118))
          {
            v119 = *(a1 + 416);
            *(a1 + 420) = v119;
            memcpy((a1 + 424), (v115 + v119 + v114[14]), v114[14]);
            v120 = v119;
          }

          else
          {
            v121 = *(a1 + 416);
            v122 = v114[14];
            v39 = *(a1 + 420) - v121 - v122;
            *(a1 + 256) = v39;
            v40 = (v115 + v121 + v122 + v122);
            *(a1 + 264) = v40;
LABEL_163:
            *__little = v39;
            StreamBuffer::Copy((*(a1 + 8) + 72), __little, v40);
            v123 = *__little;
            v124 = *(a1 + 256);
            *(a1 + 264) += *__little;
            v125 = v124 - v123;
            *(a1 + 256) = v125;
            if (v125)
            {
              result = 0;
              v38 = 171;
              goto LABEL_73;
            }

            v120 = *(a1 + 420);
            LODWORD(v119) = *(a1 + 416);
            v114 = *(a1 + 336);
          }

          if (ID3TagBase::ProvideFrameData(v114, (a1 + 402), v114[14], *(a1 + 344), (a1 + 412), v120 != v119))
          {
            goto LABEL_196;
          }

          v126 = *(a1 + 336);
          v127 = v126 + 24;
          do
          {
            v127 = *(v127 + 8);
            if (v127 == v126 + 24)
            {
              goto LABEL_196;
            }
          }

          while (*(v127 + 24) != *(a1 + 344));
          v128 = *(v127 + 16);
          *(a1 + 472) = *(v127 + 24);
          *(a1 + 464) = v128;
          v129 = bswap32(*(a1 + 402));
          v130 = *(v126 + 64);
          if (v130 == 2)
          {
            v80 = (v129 >> 8);
          }

          else
          {
            v80 = v129;
          }

          if (v130 == 2)
          {
            v131 = 4411213;
            if ((v80 & 0xFFFF0000) == 0x540000)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v131 = 1129270605;
            if (v80 >> 24 == 84)
            {
LABEL_133:
              ID3FileStream::ProcessTextFrame(a1, v80);
              goto LABEL_221;
            }
          }

          if (v131 == v80)
          {
LABEL_131:
            ID3FileStream::ProcessCommentFrame(a1);
            goto LABEL_221;
          }

          if (v130 == 2)
          {
            v132 = 5590100;
          }

          else
          {
            v132 = 1431522388;
          }

          if (v132 == v80)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v44 = *(a1 + 8);
          *(v44 + 96) += v64;
          v43 = v62[14];
          *(a1 + 256) = v43;
          v45 = (a1 + 424);
          *(a1 + 264) = a1 + 424;
LABEL_140:
          *__little = v43;
          StreamBuffer::Copy((v44 + 72), __little, v45);
          v90 = *__little;
          v91 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v92 = v91 - v90;
          *(a1 + 256) = v92;
          if (v92)
          {
            result = 0;
            v38 = 200;
            goto LABEL_73;
          }

          v93 = *(a1 + 336);
          v94 = bswap32(*(a1 + 424));
          v95 = v93[16];
          if (v95 == 2)
          {
            v96 = v94 >> 8;
          }

          else
          {
            v96 = v94;
          }

          IsValidFrameID = ID3TagBase::IsValidFrameID(v95, v96);
          v98 = IsValidFrameID;
          ID3TagBase::ProvideFrameData(v93, (a1 + 402), v93[14], *(a1 + 344), (a1 + 412), !IsValidFrameID);
          v99 = *(a1 + 336);
          if (*(v99 + 48))
          {
            goto LABEL_196;
          }

          if (!v98)
          {
            *(*(a1 + 8) + 96) += (*(a1 + 420) - *(a1 + 416) - *(v99 + 56));
            *(a1 + 432) = 0;
            *(a1 + 424) = 0;
          }
        }
      }

      else
      {
        v68 = (a1 + 412);
        if (ID3TagBase::ProvideFrameData(*(a1 + 336), (a1 + 402), v62[14], *(a1 + 344), (a1 + 412), 0))
        {
          goto LABEL_196;
        }

        v69 = *(a1 + 336);
        v70 = v69 + 24;
        do
        {
          v70 = *(v70 + 8);
          if (v70 == v69 + 24)
          {
            goto LABEL_196;
          }
        }

        while (*(v70 + 24) != *(a1 + 344));
        v71 = *(v70 + 16);
        *(a1 + 472) = *(v70 + 24);
        *(a1 + 464) = v71;
        v72 = *(v69 + 56);
        if (*(a1 + 468) > v72 && ID3FileStream::IsCurFrameRequired(a1))
        {
          v73 = malloc_type_malloc(*v68, 0x5C037C6AuLL);
          if (!v73 && *v68)
          {
            v147 = __cxa_allocate_exception(8uLL);
            v148 = std::bad_alloc::bad_alloc(v147);
          }

          *(a1 + 440) = v73;
          memcpy(v73, (a1 + 402), *(*(a1 + 336) + 56));
          v74 = *(*(a1 + 336) + 56);
          v3 = *(a1 + 412) - v74;
          *(a1 + 256) = v3;
          v4 = (*(a1 + 440) + v74);
          *(a1 + 264) = v4;
LABEL_113:
          *__little = v3;
          StreamBuffer::Copy((*(a1 + 8) + 72), __little, v4);
          v76 = *__little;
          v77 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v78 = v77 - v76;
          *(a1 + 256) = v78;
          if (v78)
          {
            result = 0;
            v38 = 235;
            goto LABEL_73;
          }

          v79 = *(a1 + 336);
          v80 = *(a1 + 464);
          v81 = v79[16];
          if (v81 == 2)
          {
            v82 = 5527640;
          }

          else
          {
            v82 = 1415075928;
          }

          if (v82 == v80)
          {
            v83 = *(a1 + 440);
            if (v83)
            {
              if (!ID3TagBase::CopyFrameData(v79, v83, *(a1 + 412), *(a1 + 472), (a1 + 352)))
              {
                v84 = *(a1 + 352);
                if (v84)
                {
                  *(a1 + 480) = CFDictionaryGetValue(v84, @"identifier");
                  Value = CFDictionaryGetValue(*(a1 + 352), @"text");
                  *(a1 + 488) = Value;
                  v86 = *(a1 + 480);
                  if (v86)
                  {
                    if (Value)
                    {
                      v87 = *(a1 + 384);
                      if (!v87)
                      {
                        if (!CFStringFind(v86, @"REPLAYGAIN", 1uLL).location)
                        {
                          operator new();
                        }

                        v87 = *(a1 + 384);
                      }

                      AddTextToReplayGainDict(*(a1 + 480), *(a1 + 488), v87);
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v81 == 2)
            {
              v88 = 4411213;
              if ((v80 & 0xFFFF0000) == 0x540000)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v88 = 1129270605;
              if (v80 >> 24 == 84)
              {
                goto LABEL_133;
              }
            }

            if (v88 == v80)
            {
              goto LABEL_131;
            }

            if (v81 == 2)
            {
              v89 = 5590100;
            }

            else
            {
              v89 = 1431522388;
            }

            if (v89 == v80)
            {
LABEL_138:
              ID3FileStream::ProcessLyricFrame(a1);
              goto LABEL_221;
            }

            if (v80 == 1347570006)
            {
              v100 = *(a1 + 440);
              if (v100)
              {
                strcpy(__little, "com.apple.streaming.audioDescription");
                v101 = v79[14];
                v102 = (*(a1 + 412) - v101);
                v103 = v100 + v101;
                v104 = strnstr((v100 + v101), __little, v102);
                if (v104)
                {
                  v105 = (v104 - v103 + 37);
                  if (v105 + 8 <= v102)
                  {
                    v106 = *(a1 + 8);
                    v107 = *(a1 + 440);
                    v108 = (v102 - v105);
                    v109 = malloc_type_calloc(1uLL, v108, 0x100004005A209FEuLL);
                    *(v106 + 136) = v109;
                    memcpy(v109, (v107 + v101 + v105), v108);
                    *(v106 + 144) = v108;
                    *(a1 + 505) = 1;
                  }
                }
              }
            }

            else
            {
              if (v81 == 2)
              {
                v133 = 5065804;
              }

              else
              {
                v133 = 1296845908;
              }

              if (v133 == v80)
              {
                ID3FileStream::ProcessMLLTFrame(a1, v75);
              }
            }
          }
        }

        else
        {
          if (*(v69 + 48))
          {
            goto LABEL_196;
          }

          *(*(a1 + 8) + 96) += *(a1 + 412) - v72;
        }
      }

LABEL_221:
      ID3FileStream::EndOfFrame(a1);
      v55 = *(a1 + 336);
      if (*(v55 + 48) & 1) != 0 || *(a1 + 504) == 1 && *(a1 + 505) == 1 && *(a1 + 506) == 1 && *(a1 + 507) == 1 && *(a1 + 508) == 1 && *(a1 + 509) == 1 && (*(a1 + 510))
      {
        goto LABEL_196;
      }

      v56 = *(a1 + 344);
      v57 = *(v55 + 52);
      v41 = *(v55 + 56);
      if (v56 >= v57 - v41)
      {
        v134 = v57 >= v56;
        v135 = v57 - v56;
        if (v135 != 0 && v134)
        {
          *(*(a1 + 8) + 96) += v135;
        }

LABEL_196:
        v136 = *(a1 + 368);
        if (v136)
        {
          *(a1 + 508) = 1;
          if (CACFDictionary::Size(v136))
          {
            v137 = *(a1 + 8);
            *__little = 0;
            v138 = *(v137 + 24);
            if (v138)
            {
              v138(*(v137 + 40), *(v137 + 8), 1768842863, __little);
            }
          }
        }

        if (*(a1 + 376))
        {
LABEL_201:
          v139 = *(a1 + 384);
          if (!v139)
          {
            goto LABEL_205;
          }

          v140 = CACFDictionary::Size(v139);
          v141 = *(a1 + 376);
          if (v140)
          {
            CACFDictionary::AddDictionary(v141, @"REPLAYGAIN", **(a1 + 384));
            v141 = *(a1 + 376);
          }

          if (v141)
          {
LABEL_205:
            *(a1 + 509) = 1;
            v142 = *(a1 + 8);
            *__little = 0;
            if ((*(v142 + 110) & 1) == 0)
            {
              *(v142 + 110) = 1;
              v143 = *(v142 + 24);
              if (v143)
              {
                v143(*(v142 + 40), *(v142 + 8), 1819243876, __little);
              }
            }
          }
        }

        else
        {
          v144 = *(a1 + 384);
          if (v144 && CACFDictionary::Size(v144))
          {
            if (!*(a1 + 376))
            {
              operator new();
            }

            goto LABEL_201;
          }
        }

        v145 = *(a1 + 336);
        if (v145)
        {
          (*(*v145 + 8))(v145);
          *(a1 + 336) = 0;
        }

        ID3FileStream::EndOfFrame(a1);
        v48 = *(a1 + 332);
        v5 = *(a1 + 8);
LABEL_215:
        *(v5 + 96) = *(a1 + 456) + v48;
        if (*(a1 + 536) == 1)
        {
          operator new();
        }

        operator new();
      }

      *(a1 + 412) = 0;
      if (!*(a1 + 424))
      {
        *(a1 + 256) = v41;
        v42 = (a1 + 402);
        *(a1 + 264) = a1 + 402;
        goto LABEL_96;
      }

      memcpy((a1 + 402), (a1 + 424), v41);
      *(a1 + 424) = 0;
      *(a1 + 432) = 0;
    }
  }

  if (v2 <= 92)
  {
    if (v2 == -1)
    {
      result = 0;
      goto LABEL_218;
    }

    if (!v2)
    {
      v5 = *(a1 + 8);
      v6 = *(v5 + 80);
      v8 = *(v5 + 88);
      v7 = *(v5 + 96);
      v9 = v8 + v6;
      if (v7 < v8 + v6 && v7 >= v8)
      {
        LODWORD(v6) = v7 - v8;
      }

      *(a1 + 448) = v6;
      *(a1 + 456) = v7;
      v11 = *(v5 + 48);
      v12 = *(v5 + 56);
      v13 = v12 - v11;
      if (v12 != v11)
      {
        v14 = 0;
        v15 = v13 >> 2;
        v16 = 1;
        do
        {
          v17 = *(v11 + 4 * v14);
          v14 = v16++;
        }

        while (v17 != 1768174437 && v15 > v14);
        if (v17 == 1768174437)
        {
          *__little = 0;
          v19 = *(v5 + 24);
          if (v19)
          {
            v19(*(v5 + 40), *(v5 + 8), 1768174437, __little);
            v5 = *(a1 + 8);
            v8 = *(v5 + 88);
            v7 = *(v5 + 96);
            v9 = v8 + *(v5 + 80);
          }
        }
      }

      *(a1 + 256) = 10;
      v21 = v7 < v8 || v9 <= v7;
      v22 = v9 - v7;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      if (v23 > 9)
      {
LABEL_63:
        v47 = 0;
        v151 = 0;
        if (v7 >= v8 && v7 < v9 && v22)
        {
          v47 = (*(v5 + 72) + (v7 - v8));
        }

        v48 = ID3Size(0xAu, v47, &v151);
        *(a1 + 332) = v48;
        if (!v48)
        {
          result = 1685348671;
          goto LABEL_218;
        }

        if (v151 != 2)
        {
          goto LABEL_215;
        }

        *(a1 + 344) = 0;
        v26 = 10;
        *(a1 + 256) = 10;
        v27 = (a1 + 392);
        *(a1 + 264) = a1 + 392;
        goto LABEL_70;
      }

      *(a1 + 272) = v7;
      v24 = *(v5 + 128);
      v25 = *(v5 + 72);
      if (v25 == v24)
      {
        if (v22)
        {
          v52 = v21;
        }

        else
        {
          v52 = 1;
        }

        v53 = &v25[(v7 - v8)];
        if (v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = v53;
        }

        memmove(v24, v54, v23);
        v5 = *(a1 + 8);
        if (*(v5 + 124) <= 9u)
        {
          *(v5 + 124) = 10;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), 0xAuLL);
          v5 = *(a1 + 8);
        }

        *(v5 + 120) = v23;
        *(v5 + 96) = *(v5 + 88) + *(v5 + 80);
      }

      else
      {
        if (*(v5 + 124) <= 9u)
        {
          *(v5 + 124) = 10;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), 0xAuLL);
          v5 = *(a1 + 8);
        }

        LODWORD(v23) = 0;
        *(v5 + 120) = 0;
      }

LABEL_46:
      v31 = *(a1 + 256) - v23;
      v32 = *(v5 + 88);
      v33 = *(v5 + 96);
      v34 = v32 + *(v5 + 80);
      if (v34 <= v33 || v33 < v32)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34 - v33;
      }

      if (v31 <= v36)
      {
        v31 = v36;
      }

      *__little = v31;
      v37 = v31 + v23;
      if (*(v5 + 124) < v37)
      {
        *(v5 + 124) = v37;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v5 + 128), v37);
        v5 = *(a1 + 8);
      }

      StreamBuffer::Copy((v5 + 72), __little, (*(v5 + 128) + *(v5 + 120)));
      v5 = *(a1 + 8);
      v22 = *(v5 + 120) + *__little;
      *(v5 + 120) = v22;
      if (v22 < *(a1 + 256))
      {
        result = 0;
        v38 = 93;
        goto LABEL_73;
      }

      v7 = *(a1 + 272);
      v46 = *(v5 + 128);
      *(v5 + 88) = v7;
      *(v5 + 96) = v7;
      *(v5 + 72) = v46;
      *(v5 + 80) = v22;
      v9 = v7 + v22;
      v8 = v7;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (v2 == 93)
  {
    v5 = *(a1 + 8);
    LODWORD(v23) = *(v5 + 120);
    goto LABEL_46;
  }

  if (v2 != 103)
  {
LABEL_61:
    result = 0;
    v38 = -1;
    goto LABEL_73;
  }

  v26 = *(a1 + 256);
  v27 = *(a1 + 264);
  v5 = *(a1 + 8);
LABEL_70:
  *__little = v26;
  StreamBuffer::Copy((v5 + 72), __little, v27);
  v49 = *__little;
  v50 = *(a1 + 256);
  *(a1 + 264) += *__little;
  v51 = v50 - v49;
  *(a1 + 256) = v51;
  if (!v51)
  {
    *(a1 + 344) = 10;
    operator new();
  }

  result = 0;
  v38 = 103;
LABEL_73:
  *(a1 + 236) = v38;
LABEL_218:
  v146 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ID3FileStream::IsCurFrameRequired(ID3FileStream *this)
{
  v1 = bswap32(*(this + 402));
  v2 = *(*(this + 42) + 64);
  v3 = v1 >> 8;
  if (v2 == 2)
  {
    v4 = 5527640;
  }

  else
  {
    v3 = v1;
    v4 = 1415075928;
  }

  if (v4 == v3 && *(this + 509) != 1)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if ((v3 & 0xFFFF0000) != 0x540000)
    {
LABEL_11:
      if (v2 == 2)
      {
        v5 = 4411213;
      }

      else
      {
        v5 = 1129270605;
      }

      if (v5 == v3 && (*(this + 507) != 1 || *(this + 506) != 1 || *(this + 509) != 1 || *(this + 508) != 1))
      {
        return 1;
      }

      v6 = v2 == 2 ? 5590100 : 1431522388;
      if (v6 == v3 && *(this + 504) != 1)
      {
        return 1;
      }

      if (v3 == 1347570006)
      {
        if ((*(this + 505) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v2 == 2)
        {
          v7 = 5065804;
        }

        else
        {
          v7 = 1296845908;
        }

        if (v7 == v3 && *(this + 510) != 1)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (HIBYTE(v3) != 84)
  {
    goto LABEL_11;
  }

  if (*(this + 508) == 1)
  {
    goto LABEL_11;
  }

  return 1;
}

void ID3FileStream::ProcessTextFrame(ID3FileStream *this, ID3TagBase *a2)
{
  v3 = *(this + 55);
  if (v3)
  {
    if (!*(this + 46))
    {
      operator new();
    }

    theString = 0;
    v5 = ID3TagBase::CopyFrameData(*(this + 42), v3, *(this + 103), *(this + 118), &theString);
    v6 = theString;
    if (!v5 && theString != 0)
    {
      v8 = ID3TagBase::TranslateV2IDToV3(a2);
      if (v8 > 1414091825)
      {
        if (v8 <= 1414546736)
        {
          switch(v8)
          {
            case 1414091826:
              v9 = InfoDictionaryKeys::sAFDictionary_Title;
              goto LABEL_41;
            case 1414091827:
              v9 = InfoDictionaryKeys::sAFDictionary_SubTitle;
              goto LABEL_41;
            case 1414219097:
              v9 = InfoDictionaryKeys::sAFDictionary_KeySignature;
              goto LABEL_41;
          }
        }

        else if (v8 > 1414746690)
        {
          if (v8 == 1414746691)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_ISRC;
            goto LABEL_41;
          }

          if (v8 == 1415136594)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_Year;
            goto LABEL_41;
          }
        }

        else
        {
          if (v8 == 1414546737)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_Artist;
            goto LABEL_41;
          }

          if (v8 == 1414677323)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_TrackNumber;
            goto LABEL_41;
          }
        }
      }

      else if (v8 <= 1413697357)
      {
        switch(v8)
        {
          case 1413565506:
            v9 = InfoDictionaryKeys::sAFDictionary_Album;
            goto LABEL_41;
          case 1413632077:
            v9 = InfoDictionaryKeys::sAFDictionary_Tempo;
            goto LABEL_41;
          case 1413697357:
            v9 = InfoDictionaryKeys::sAFDictionary_Composer;
            goto LABEL_41;
        }
      }

      else if (v8 > 1413828162)
      {
        if (v8 == 1413828163)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_EncodingApplication;
          goto LABEL_41;
        }

        if (v8 == 1413830740)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Lyricist;
          goto LABEL_41;
        }
      }

      else
      {
        if (v8 == 1413697358)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Genre;
          goto LABEL_41;
        }

        if (v8 == 1413697360)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Copyright;
LABEL_41:
          v10 = *v9;
          if (*v9)
          {
            HasKey = CACFDictionary::HasKey(*(this + 46), *v9);
            v6 = theString;
            if ((HasKey & 1) == 0)
            {
              Length = CFStringGetLength(theString);
              v6 = theString;
              if (Length)
              {
                CACFDictionary::AddString(*(this + 46), v10, theString);
                v6 = theString;
              }
            }
          }
        }
      }

      CFRelease(v6);
    }
  }
}

uint64_t ID3FileStream::ProcessCommentFrame(uint64_t this)
{
  v1 = *(this + 440);
  if (v1)
  {
    v2 = this;
    this = ID3TagBase::CopyFrameData(*(this + 336), v1, *(v2 + 412), *(v2 + 472), (v2 + 352));
    if (!this)
    {
      this = *(v2 + 352);
      if (this)
      {
        *(v2 + 480) = CFDictionaryGetValue(this, @"identifier");
        Value = CFDictionaryGetValue(*(v2 + 352), @"text");
        *(v2 + 488) = Value;
        this = *(v2 + 480);
        if (this)
        {
          if (Value)
          {
            if ((*(v2 + 508) & 1) != 0 || CFStringHasPrefix(this, @"iTun"))
            {
              v4 = malloc_type_malloc(0x80uLL, 0x55E785BBuLL);
              if (!v4)
              {
                exception = __cxa_allocate_exception(8uLL);
                v11 = std::bad_alloc::bad_alloc(exception);
              }

              *(v2 + 496) = v4;
              v4[6] = 0u;
              v4[7] = 0u;
              v4[4] = 0u;
              v4[5] = 0u;
              v4[2] = 0u;
              v4[3] = 0u;
              *v4 = 0u;
              v4[1] = 0u;
              this = CFStringGetCString(*(v2 + 488), *(v2 + 496), 128, 0x201u);
              if (this)
              {
                if ((*(v2 + 507) & 1) != 0 || (this = CFStringCompare(*(v2 + 480), @"iTunSMPB", 0)) != 0)
                {
                  if (*(v2 + 506) != 1 || (*(v2 + 509) & 1) == 0)
                  {
                    this = CFStringCompare(*(v2 + 480), @"iTunNORM", 0);
                    if (!this)
                    {
                      operator new();
                    }

                    if ((*(v2 + 509) & 1) == 0)
                    {
                      this = CFStringCompare(*(v2 + 480), @"iTunLOUD", 0);
                      if (!this)
                      {
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  this = ParseiTunesSMPBData((*(v2 + 496) + 9), 119, (v2 + 160));
                  if (!this)
                  {
                    *(v2 + 507) = 1;
                    v8 = *(v2 + 8);
                    v12 = 0;
                    if ((*(v8 + 106) & 1) == 0)
                    {
                      *(v8 + 106) = 1;
                      v9 = *(v8 + 24);
                      if (v9)
                      {
                        return v9(*(v8 + 40), *(v8 + 8), 1886283375, &v12);
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v5 = *(v2 + 368);
              if (!v5)
              {
                operator new();
              }

              this = CACFDictionary::HasKey(v5, @"comments");
              if ((this & 1) == 0)
              {
                v6 = *(v2 + 368);
                v7 = *(v2 + 488);

                return CACFDictionary::AddString(v6, @"comments", v7);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t ID3FileStream::ProcessLyricFrame(uint64_t this)
{
  v1 = *(this + 440);
  if (v1)
  {
    v2 = this;
    this = ID3TagBase::CopyFrameData(*(this + 336), v1, *(v2 + 412), *(v2 + 344), (v2 + 352));
    if (!this)
    {
      if (*(v2 + 352))
      {
        *(v2 + 504) = 1;
        v3 = *(v2 + 8);
        v5 = 0;
        v4 = *(v3 + 24);
        if (v4)
        {
          return v4(*(v3 + 40), *(v3 + 8), 1280922179, &v5);
        }
      }
    }
  }

  return this;
}

void ID3FileStream::ProcessMLLTFrame(ID3FileStream *this, __n128 a2)
{
  v2 = *(this + 55);
  if (!v2)
  {
    return;
  }

  v4 = *(*(this + 42) + 56);
  v5 = (v2 + v4);
  v6 = v2 + v4 + (*(this + 103) - v4);
  if (((v2 + v4) & 3) != 0)
  {
    v7 = 0;
    v8 = v5 + 1;
    v9 = -8;
    v10 = v5;
    do
    {
      v11 = v9;
      if (v10 >= v6)
      {
        v12 = 255;
      }

      else
      {
        v12 = *v10;
      }

      v7 = v12 | (v7 << 8);
      v10 = (v10 + 1);
      v9 = v11 + 8;
      v50 = (v8++ & 3) == 0;
    }

    while (!v50);
    a2.n128_u32[0] = v7 << (16 - v11);
    a2.n128_u32[1] = v11 + 16;
  }

  else
  {
    a2 = 0uLL;
    v10 = (v2 + v4);
  }

  v13 = *(this + 1);
  *(v13 + 176) = *(v13 + 168);
  v14 = a2.n128_u32[0];
  v15 = HIWORD(a2.n128_u32[0]);
  v16 = a2.n128_u32[1] - 16;
  if ((a2.n128_u32[1] - 16) < 0)
  {
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) == 0 || v5 > v10)
    {
      v19 = 4;
      v20 = v10;
      do
      {
        v21 = 255;
        if (v20 < v6 && v20 >= v5)
        {
          v21 = *v20;
        }

        v14 = v21 | (v14 << 8);
        v20 = (v20 + 1);
        --v19;
      }

      while (v19);
    }

    else
    {
      v14 = bswap32(*v10);
    }

    ++v10;
    v16 = a2.n128_u32[1] + 16;
    v15 |= v14 >> (a2.n128_u8[4] + 16);
    if (a2.n128_u32[1] == -16)
    {
      v22 = 0;
      v17 = 0;
      *(v13 + 152) = v15;
      goto LABEL_28;
    }

    v17 = v14 << (16 - a2.n128_u8[4]);
  }

  else
  {
    v17 = a2.n128_u32[0] << 16;
  }

  *(v13 + 152) = v15;
  v22 = v17 >> 8;
  v23 = v16 - 24;
  if ((v16 - 24) >= 0)
  {
    v24 = v17 << 24;
    goto LABEL_38;
  }

LABEL_28:
  if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
  {
    v17 = bswap32(*v10);
  }

  else
  {
    v25 = 4;
    v26 = v10;
    do
    {
      v27 = 255;
      if (v26 < v6 && v26 >= v5)
      {
        v27 = *v26;
      }

      v17 = v27 | (v17 << 8);
      v26 = (v26 + 1);
      --v25;
    }

    while (v25);
  }

  v23 = v16 + 8;
  v50 = v16 == -8;
  ++v10;
  v22 |= v17 >> (v16 + 8);
  v24 = v17 << (24 - v16);
  if (v50)
  {
    v24 = 0;
  }

LABEL_38:
  *(v13 + 156) = v22;
  v28 = 24;
  if (v23 <= 23)
  {
    v28 = 24 - v23;
    if ((24 - v23) >= 0x20)
    {
      v24 = 0;
      v10 = (v10 + ((v28 >> 3) & 0x1FFFFFFC));
      v23 = 0;
      v28 &= 0x1Fu;
      if (!v28)
      {
        v30 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  v29 = v23 - v28;
  if ((v23 - v28) < 0)
  {
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
    {
      v31 = *v10++;
      v24 = bswap32(v31);
      v30 = v29 + 32;
    }

    else
    {
      v32 = 4;
      v33 = v10;
      do
      {
        v34 = 255;
        if (v33 < v6 && v33 >= v5)
        {
          v34 = *v33;
        }

        v24 = v34 | (v24 << 8);
        v33 = (v33 + 1);
        --v32;
      }

      while (v32);
      ++v10;
      v30 = v29 + 32;
      if (v29 == -32)
      {
        v24 = 0;
        v23 = 0;
        goto LABEL_58;
      }
    }

    v23 = v24 << -v29;
  }

  else
  {
    v23 = v24 << v28;
    v30 = v29;
  }

  v24 = HIBYTE(v23);
  v35 = v30 - 8;
  if (v30 >= 8)
  {
    v36 = v23 << 8;
    goto LABEL_68;
  }

LABEL_58:
  if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
  {
    v23 = bswap32(*v10);
  }

  else
  {
    v37 = 4;
    v38 = v10;
    do
    {
      v39 = 255;
      if (v38 < v6 && v38 >= v5)
      {
        v39 = *v38;
      }

      v23 = v39 | (v23 << 8);
      v38 = (v38 + 1);
      --v37;
    }

    while (v37);
  }

  ++v10;
  v35 = v30 + 24;
  v24 |= v23 >> (v30 + 24);
  if (v30 == -24)
  {
    v40 = 0;
    v36 = 0;
    *(v13 + 160) = v24;
LABEL_71:
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
    {
      v36 = bswap32(*v10);
      a2.n128_u32[0] = v36;
    }

    else
    {
      v43 = 4;
      v44 = v10;
      do
      {
        v45 = 255;
        if (v44 < v6 && v44 >= v5)
        {
          v45 = *v44;
        }

        v36 = v45 | (v36 << 8);
        a2.n128_u32[0] = v36;
        v44 = (v44 + 1);
        --v43;
      }

      while (v43);
    }

    v46 = 8 - v35;
    v47 = v35 + 24;
    a2.n128_u32[1] = v47;
    v48 = v36 << v46;
    ++v10;
    v40 |= v36 >> v47;
    if (v47)
    {
      v42 = v48;
    }

    else
    {
      v42 = 0;
    }

    if (v47)
    {
      v41 = v47;
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_85;
  }

  v36 = v23 << (8 - v30);
LABEL_68:
  *(v13 + 160) = v24;
  v40 = HIBYTE(v36);
  a2.n128_u32[0] = v36;
  v41 = v35 - 8;
  a2.n128_u32[1] = v35 - 8;
  if (v35 - 8 < 0)
  {
    goto LABEL_71;
  }

  v42 = v36 << 8;
LABEL_85:
  *(v13 + 161) = v40;
  v49 = v40 + v24;
  if (v49)
  {
    v50 = (v49 & 4) == 0;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v51 = v41 + 8 * (v6 - v10);
    v74 = a2;
    std::vector<int>::resize((v13 + 168), v51 / v49);
    v52 = v74;
    if (v49 <= v51)
    {
      v53 = 0;
      v52.n128_u32[0] = v42;
      v54 = *(v13 + 161);
      v55 = ~(-1 << *(v13 + 160));
      v56 = *(v13 + 168);
      do
      {
        if (v49 - 33 >= 0xFFFFFFE0)
        {
          v58 = v52.n128_u32[0];
          v57 = v52.n128_u32[0] >> (32 - v49);
          v59 = v52.n128_u32[1] - v49;
          v52.n128_u32[1] -= v49;
          if (v52.n128_i32[1] < 0)
          {
            if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
            {
              v58 = bswap32(*v10);
            }

            else
            {
              v61 = 4;
              v62 = v10;
              do
              {
                v63 = 255;
                if (v62 < v6 && v62 >= v5)
                {
                  v63 = *v62;
                }

                v58 = v63 | (v58 << 8);
                v62 = (v62 + 1);
                --v61;
              }

              while (v61);
            }

            v52.n128_u32[1] = v59 + 32;
            ++v10;
            v57 |= v58 >> v59;
            if (v59 == -32)
            {
              v60 = 0;
            }

            else
            {
              v60 = v58 << -v59;
            }
          }

          else
          {
            v60 = v52.n128_u32[0] << v49;
          }

          v52.n128_u32[0] = v60;
        }

        else
        {
          v57 = 0;
        }

        *(v56 + 4 * v53++) = (v57 >> v54) & v55;
      }

      while (v53 < v51 / v49);
    }

    *(this + 510) = 1;
    v64 = *(this + 1);
    v65 = *(v64 + 48);
    v66 = *(v64 + 56);
    v67 = v66 - v65;
    if (v66 != v65)
    {
      v68 = 0;
      v69 = v67 >> 2;
      v70 = 1;
      do
      {
        v71 = *(v65 + 4 * v68);
        v68 = v70++;
      }

      while (v71 != 1296845908 && v69 > v68);
      if (v71 == 1296845908)
      {
        v75 = 0;
        v73 = *(v64 + 24);
        if (v73)
        {
          v73(*(v64 + 40), *(v64 + 8), 1296845908, &v75, v52);
        }
      }
    }
  }
}

void ID3FileStream::EndOfFrame(ID3FileStream *this)
{
  *(this + 86) += *(this + 103);
  v2 = *(this + 44);
  if (v2)
  {
    CFRelease(v2);
    *(this + 44) = 0;
  }

  if (*(this + 508) == 1)
  {
    v3 = *(this + 46);
    if (v3)
    {
      CACFDictionary::~CACFDictionary(v3);
      MEMORY[0x193ADF220]();
      *(this + 46) = 0;
    }
  }

  v4 = *(this + 55);
  if (v4)
  {
    free(v4);
    *(this + 55) = 0;
  }

  *(this + 60) = 0;
  *(this + 61) = 0;
  v5 = *(this + 62);
  if (v5)
  {
    free(v5);
    *(this + 62) = 0;
  }
}

uint64_t ID3FileStream::GetProperty(ID3FileStream *this, int a2, unsigned int *a3, _DWORD *__dst)
{
  if (a2 <= 1768842862)
  {
    if (a2 != 1280922179)
    {
      if (a2 != 1768174433)
      {
        if (a2 == 1768174437)
        {
          if (*a3 == 4)
          {
            result = 0;
            *__dst = *(this + 112);
            return result;
          }

          return 561211770;
        }

        goto LABEL_22;
      }

      if (*a3 == 8)
      {
        result = 0;
        v9 = *(this + 57);
LABEL_34:
        *__dst = v9;
        return result;
      }

      return 561211770;
    }

    if (*a3 != 8)
    {
      return 561211770;
    }

    v8 = *(this + 44);
    if (v8)
    {
      result = CFDictionaryGetValue(v8, @"text");
      *__dst = result;
      if (!result)
      {
        return result;
      }

      CFRetain(result);
      return 0;
    }

    return 1836020325;
  }

  switch(a2)
  {
    case 1768842863:
      if (*a3 != 8)
      {
        return 561211770;
      }

      result = 1836020325;
      if (*(this + 508) != 1)
      {
        return result;
      }

      v7 = *(this + 46);
      if (!v7)
      {
        return result;
      }

      goto LABEL_20;
    case 1819243876:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v10 = *(this + 47);
      if (!v10)
      {
        if (*(this + 45))
        {
          cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v13 = 257;
          AudioFileGetLoudnessInfoFromSoundCheckDictionary(*(this + 45), &cf);
          if (cf)
          {
            CFRetain(cf);
            v11 = cf;
          }

          else
          {
            v11 = 0;
          }

          *__dst = v11;
          CACFDictionary::~CACFDictionary(&cf);
          return 0;
        }

        return 1836020325;
      }

      if (*v10)
      {
        CFRetain(*v10);
        v9 = *v10;
        goto LABEL_33;
      }

LABEL_32:
      v9 = 0;
      goto LABEL_33;
    case 1935893603:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v7 = *(this + 45);
      if (!v7)
      {
        return 1836020325;
      }

LABEL_20:
      if (*v7)
      {
        CFRetain(*v7);
        v9 = *v7;
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

      goto LABEL_32;
  }

LABEL_22:

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}

uint64_t ID3FileStream::GetPropertyInfo(ID3FileStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 > 1768842862)
  {
    if (a2 != 1768842863 && a2 != 1819243876 && a2 != 1935893603)
    {
      return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
    }
  }

  else if (a2 != 1280922179 && a2 != 1768174433)
  {
    if (a2 == 1768174437)
    {
      if (a3)
      {
        v4 = 4;
LABEL_12:
        *a3 = v4;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    v4 = 8;
    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void ID3FileStream::~ID3FileStream(ID3FileStream *this)
{
  ID3FileStream::~ID3FileStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BAA8;
  v2 = *(this + 42);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 45);
  if (v4)
  {
    CACFDictionary::~CACFDictionary(v4);
    MEMORY[0x193ADF220]();
  }

  v5 = *(this + 46);
  if (v5)
  {
    CACFDictionary::~CACFDictionary(v5);
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 47);
  if (v6)
  {
    CACFDictionary::~CACFDictionary(v6);
    MEMORY[0x193ADF220]();
  }

  v7 = *(this + 48);
  if (v7)
  {
    CACFDictionary::~CACFDictionary(v7);
    MEMORY[0x193ADF220]();
  }

  v8 = *(this + 55);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 60);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 61);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 62);
  if (v11)
  {
    free(v11);
  }

  if (*(this + 616) == 1)
  {
    AudioFileAllowListFilter::~AudioFileAllowListFilter((this + 544));
  }

  if (*(this + 536) == 1)
  {
    v12 = *(this + 64);
    if (v12)
    {
      *(this + 65) = v12;
      operator delete(v12);
    }
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t ID3FileFormat::FileDataIsThisFormat(ID3FileFormat *this, unsigned int a2, _BYTE *a3)
{
  if (a2 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 == 17481 && a3[2] == 51)
  {
    return 1;
  }

  return *a3 == 16724 && a3[2] == 71;
}

uint64_t std::optional<AudioFileAllowListFilter>::operator=[abi:ne200100]<AudioFileAllowListFilter const&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    AudioFileAllowListFilter::operator=(a1, a2);
  }

  else
  {
    *(a1 + 64) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 25) = 0u;
    AudioFileAllowListFilter::operator=(a1, a2);
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_18F742C5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      *(v1 + 48) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileObject::ScanForPackets(AudioFileObject *this, uint64_t a2, DataSource *a3)
{
  if ((*(*this + 248))(this, a2, a3) >= a2)
  {
    return 0;
  }

  else
  {
    return 4294967257;
  }
}

uint64_t MakeSNDSoundStruct(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1634492791)
  {
    v8 = 27;
    goto LABEL_24;
  }

  if (v2 == 1970037111)
  {
    v8 = 1;
    goto LABEL_24;
  }

  v3 = 1718449215;
  if (v2 != 1819304813)
  {
    return v3;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 32);
  if (v4)
  {
    if (v5 == 32)
    {
      v8 = 6;
      if ((v4 & 2) == 0)
      {
        return v3;
      }

      goto LABEL_24;
    }

    if (v5 == 64)
    {
      v8 = 7;
      if ((v4 & 2) != 0)
      {
LABEL_24:
        v3 = 0;
        v9 = *a1;
        v10 = *(a1 + 28);
        *a2 = 0x1C2E736E64;
        *(a2 + 8) = 0;
        *(a2 + 12) = v8;
        *(a2 + 16) = v9;
        *(a2 + 20) = v10;
      }
    }
  }

  else
  {
    HIDWORD(v7) = v5 - 8;
    LODWORD(v7) = v5 - 8;
    v6 = v7 >> 3;
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return v3;
        }

        v8 = 3;
        if ((v4 & 2) == 0)
        {
          return v3;
        }
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_24;
    }

    if (v6 == 3)
    {
      v8 = 5;
      if ((v4 & 2) == 0)
      {
        return v3;
      }

      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v8 = 4;
      if ((v4 & 2) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

uint64_t NextAudioFile::UpdateSize(NextAudioFile *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 232))(this);
  *(this + 37) = v2;
  v9 = 0;
  v10 = bswap32(v2);
  v3 = (*(**(this + 13) + 56))(*(this + 13), 0, 8, 4, &v10, &v9);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "NextAudioFile.cpp";
      v13 = 1024;
      v14 = 336;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  WriteBytes Failed";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    }
  }

  else
  {
    v4 = (*(**(this + 13) + 32))(*(this + 13), (*(this + 37) + *(this + 36)));
    if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "NextAudioFile.cpp";
      v13 = 1024;
      v14 = 339;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  SetSize Failed";
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t NextAudioFile::UpdateDataFormat(NextAudioFile *this, const AudioStreamBasicDescription *a2)
{
  result = MakeSNDSoundStruct(a2, &v9);
  if (!result)
  {
    result = (*(*this + 184))(this, a2);
    if (!result)
    {
      v5 = vrev32q_s8(v9);
      v6 = v5;
      v5.i64[0] = v10;
      *(this + 19) = vextq_s8(v9, v5, 0xCuLL).u64[0];
      *(this + 40) = v5.i32[1];
      v7 = vrev32_s8(*v5.i8);
      v8 = v11;
      return (*(**(this + 13) + 56))(*(this + 13), 0, 12, 12, &v6 | 0xC, 0);
    }
  }

  return result;
}

uint64_t NextAudioFile::InitializeDataSource(NextAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v3 = 0;
  v14 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  do
  {
    v5 = sNextFormatIDs[v3];
  }

  while (v5 != mFormatID && v3++ != 2);
  if (v5 == mFormatID)
  {
    SNDSoundStruct = MakeSNDSoundStruct(a2, this + 140);
    if (SNDSoundStruct)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "NextAudioFile.cpp";
        v12 = 1024;
        v13 = 318;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MakeSNDSoundStruct Failed", &v10, 0x12u);
      }
    }

    else
    {
      NextAudioFile::WriteHeader(this);
    }
  }

  else
  {
    SNDSoundStruct = 1718449215;
  }

  v8 = *MEMORY[0x1E69E9840];
  return SNDSoundStruct;
}

void NextAudioFile::WriteHeader(NextAudioFile *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 9) = 28;
  v3 = vrev32q_s8(*(this + 140));
  v4 = vrev32_s8(*(this + 156));
  v5 = *(this + 41);
  v2 = 0;
  if ((*(**(this + 13) + 56))(*(this + 13), 0, 0, 28, &v3, &v2) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v7 = "NextAudioFile.cpp";
    v8 = 1024;
    v9 = 388;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes Failed", buf, 0x12u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t NextAudioFile::OpenFromDataSource(NextAudioFile *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 28, this + 140, &v12);
  v3 = vrev32q_s8(*(this + 140));
  *(this + 140) = v3;
  v4 = vrev32_s8(*(this + 156));
  *(this + 156) = v4;
  if (v2)
  {
    v5 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "NextAudioFile.cpp";
      v15 = 1024;
      v16[0] = 367;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes Failed", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "NextAudioFile.cpp";
      v15 = 1024;
      v16[0] = 300;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  NextAudioFile::OpenFromDataSource - ReadHeader Failed";
LABEL_12:
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    }
  }

  else
  {
    if (v4.i32[0] >= 0xFFFF0000)
    {
      *(this + 39) = v4.u16[0];
    }

    *(this + 9) = v3.u32[1];
    v8 = ASBDfromSNDSoundStruct(this + 35, buf);
    if (v8 || (v8 = (*(*this + 184))(this, buf), v8))
    {
      v5 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "NextAudioFile.cpp";
        v15 = 1024;
        v16[0] = 303;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "%25s:%-5d  NextAudioFile::OpenFromDataSource - ParseHeader Failed";
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(this + 37);
      if (v11 == -1)
      {
        (*(**(this + 13) + 16))(*(this + 13), this + 148);
        v11 = *(this + 37);
      }

      (*(*this + 240))(this, v11);
      (*(*this + 256))(this, (*(this + 37) / *(v16 + 2)));
      (*(*this + 656))(this, *(v16 + 2));
      v5 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t ASBDfromSNDSoundStruct(_DWORD *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 12) = 10;
  *a2 = a1[4];
  v2 = a1[5];
  *(a2 + 28) = v2;
  *(a2 + 20) = 1;
  v3 = a1[3];
  result = 1718449215;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v5 = 0xE6C70636DLL;
      }

      else
      {
        v5 = 0xB6C70636DLL;
      }

      *(a2 + 8) = v5;
      v6 = 4;
      v7 = 32;
      goto LABEL_21;
    }

    if (v3 == 7)
    {
      *(a2 + 8) = 0xB6C70636DLL;
      v6 = 8;
      v7 = 64;
      goto LABEL_21;
    }

    if (v3 != 27)
    {
      return result;
    }

    v8 = 1634492791;
  }

  else
  {
    if (v3 > 2)
    {
      *(a2 + 8) = 0xE6C70636DLL;
      if (v3 == 3)
      {
        v6 = 2;
        v7 = 16;
      }

      else
      {
        v6 = 3;
        v7 = 24;
      }

      goto LABEL_21;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      *(a2 + 8) = 0xE6C70636DLL;
      goto LABEL_16;
    }

    v8 = 1970037111;
  }

  *(a2 + 8) = v8;
LABEL_16:
  v6 = 1;
  v7 = 8;
LABEL_21:
  result = 0;
  *(a2 + 32) = v7;
  v9 = v6 * v2;
  *(a2 + 24) = v9;
  *(a2 + 16) = v9;
  return result;
}

uint64_t NextAudioFile::Create(NextAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v6 = 0;
  mFormatID = a3->mFormatID;
  do
  {
    v8 = sNextFormatIDs[v6];
  }

  while (v8 != mFormatID && v6++ != 2);
  if (v8 != mFormatID)
  {
    return 1718449215;
  }

  result = MakeSNDSoundStruct(a3, this + 140);
  if (!result)
  {
    result = AudioFileObject::Create(this, a2, a3);
    if (!result)
    {
      (*(*this + 656))(this, a3->mBytesPerFrame);
      NextAudioFile::WriteHeader(this);
      return 0;
    }
  }

  return result;
}

void NextAudioFile::~NextAudioFile(NextAudioFile *this)
{
  AudioFileObject::~AudioFileObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t NextAudioFormat::GetHFSCodes(NextAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src[2] = *MEMORY[0x1E69E9840];
  qmemcpy(__src, "sTxNTXeNSTxN", 12);
  v3 = *a2 >> 2;
  if (v3 >= 3)
  {
    v3 = 3;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, __src, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t NextAudioFormat::GetAvailableStreamDescriptions(NextAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = 1634492791;
  if (a2 == 1634492791 || (v6 = 1970037111, a2 == 1970037111))
  {
    *&v16 = 0;
    outPropertyData = 0u;
    v15 = 0u;
    DWORD2(outPropertyData) = v6;
    ioPropertyDataSize = 40;
    AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData);
    v9 = 1;
  }

  else
  {
    if (a2 != 1819304813)
    {
      *a3 = 0;
      result = 1718449215;
      goto LABEL_14;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = &v15 + 1;
    outPropertyData = 0u;
    v15 = 0u;
    v8 = -32;
    do
    {
      *(v7 - 3) = 0xE6C70636DLL;
      v7[3] = v8 + 40;
      *v7 = 1;
      v7 += 10;
      v8 += 8;
    }

    while (v8);
    *(&v24 + 1) = 0xB6C70636DLL;
    LODWORD(v26) = 32;
    DWORD1(v25) = 1;
    *&v27 = 0xB6C70636DLL;
    DWORD2(v28) = 64;
    HIDWORD(v27) = 1;
    v9 = 6;
  }

  if (*a3 / 0x28 < v9)
  {
    v9 = *a3 / 0x28;
  }

  v10 = 40 * v9;
  *a3 = v10;
  if (__dst)
  {
    memcpy(__dst, &outPropertyData, v10);
  }

  result = 0;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NextAudioFormat::GetAvailableFormatIDs(NextAudioFormat *this, unsigned int *a2, void *__dst)
{
  v3 = *a2 >> 2;
  if (v3 >= 3)
  {
    v3 = 3;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, sNextFormatIDs, v4);
  }

  return 0;
}

void NextAudioFormat::GetFileTypeName(NextAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"NeXT/Sun");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"NeXT/Sun", @"NeXT/Sun", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *NextAudioFormat::GetMIMETypes(NextAudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/basic";
  v5[1] = @"audio/au";
  v5[2] = @"audio/snd";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *NextAudioFormat::GetUTIs(NextAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"public.au-audio";
  values[1] = @"public.ulaw-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *NextAudioFormat::GetExtensions(NextAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"snd";
  values[1] = @"au";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NextAudioFormat::ExtensionIsThisFormat(NextAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"snd", 1uLL))
  {
    return CFStringCompare(theString1, @"au", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

void CA::AudioMetadataDeserializer::AudioMetadataDeserializer(CA::AudioMetadataDeserializer *this, AudioMetadataMemoryPool *a2)
{
  operator new();
}

{
  operator new();
}

double CA::AudioMetadataDeserializer::Impl::Impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *a1 = a2;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 1065353216;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1065353216;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 1065353216;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1065353216;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 1065353216;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 1065353216;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 1065353216;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 1065353216;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 1065353216;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 1065353216;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 1065353216;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 1065353216;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 1065353216;
  return result;
}

void CA::AudioMetadataDeserializer::~AudioMetadataDeserializer(CA::AudioMetadataDeserializer *this)
{
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](this, 0);
}

uint64_t *std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 944);
    *(v2 + 944) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *(v2 + 920);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v2 + 904);
    *(v2 + 904) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(v2 + 760);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *(v2 + 744);
    *(v2 + 744) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = *(v2 + 704);
    *(v2 + 704) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = *(v2 + 424);
    *(v2 + 424) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = *(v2 + 400);
    if (v12)
    {
      do
      {
        v13 = *v12;
        operator delete(v12);
        v12 = v13;
      }

      while (v13);
    }

    v14 = *(v2 + 384);
    *(v2 + 384) = 0;
    if (v14)
    {
      operator delete(v14);
    }

    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 208));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 184));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 160));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 136));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 112));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 88));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 64));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 40));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 16));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::__unordered_map_hasher<anonymous namespace::BlockFormatID,std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::hash<anonymous namespace::BlockFormatID>,std::equal_to<anonymous namespace::BlockFormatID>,true>,std::__unordered_map_equal<anonymous namespace::BlockFormatID,std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::equal_to<anonymous namespace::BlockFormatID>,std::hash<anonymous namespace::BlockFormatID>,true>,std::allocator<std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::__unordered_map_hasher<anonymous namespace::FormatID,std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::hash<anonymous namespace::FormatID>,std::equal_to<anonymous namespace::FormatID>,true>,std::__unordered_map_equal<anonymous namespace::FormatID,std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::equal_to<anonymous namespace::FormatID>,std::hash<anonymous namespace::FormatID>,true>,std::allocator<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>>>::~__hash_table(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *CA::AudioMetadataDeserializer::AudioMetadataDeserializer(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *CA::AudioMetadataDeserializer::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](a1, v3);
  return a1;
}

uint64_t CA::AudioMetadataDeserializer::Impl::deserialize(uint64_t *a1, _anonymous_namespace_ *this, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v79 = 0;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 503;
      v12 = "%25s:%-5d ...at packet version/type";
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v15 = v79;
  if (v79 >= 4u)
  {
    v10 = 4294900723;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 508;
    v83 = 1024;
    v84 = v15 >> 2;
    v12 = "%25s:%-5d Unsupported packet version (%d)";
    goto LABEL_12;
  }

  if (v79 != 2)
  {
    if (v79 == 3)
    {
      v10 = 4294900722;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 517;
      v83 = 1024;
      v84 = 3;
      v12 = "%25s:%-5d Unknown packet type (%d)";
LABEL_12:
      v13 = v16;
      v14 = 24;
      goto LABEL_13;
    }

    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[2]);
    a1[1] = (a1 + 2);
    a1[3] = 0;
    a1[2] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[5]);
    a1[4] = (a1 + 5);
    a1[6] = 0;
    a1[5] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[8]);
    a1[7] = (a1 + 8);
    a1[9] = 0;
    a1[8] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[11]);
    a1[10] = (a1 + 11);
    a1[12] = 0;
    a1[11] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[14]);
    a1[13] = (a1 + 14);
    a1[15] = 0;
    a1[14] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[17]);
    a1[16] = (a1 + 17);
    a1[18] = 0;
    a1[17] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[20]);
    v19 = a1[23];
    a1[19] = (a1 + 20);
    a1[20] = 0;
    a1[21] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(v19);
    a1[23] = 0;
    a1[24] = 0;
    a1[22] = (a1 + 23);
    if (a1[51])
    {
      v20 = a1[50];
      if (v20)
      {
        do
        {
          v21 = *v20;
          operator delete(v20);
          v20 = v21;
        }

        while (v21);
      }

      a1[50] = 0;
      v22 = a1[49];
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          *(a1[48] + 8 * i) = 0;
        }
      }

      a1[51] = 0;
    }

    if (a1[56])
    {
      a1[55] = 0;
      v24 = a1[54];
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          *(a1[53] + 8 * j) = 0;
        }
      }

      a1[56] = 0;
    }

    if (a1[91])
    {
      a1[90] = 0;
      v26 = a1[89];
      if (v26)
      {
        for (k = 0; k != v26; ++k)
        {
          *(a1[88] + 8 * k) = 0;
        }
      }

      a1[91] = 0;
    }

    if (a1[96])
    {
      v28 = a1[95];
      if (v28)
      {
        do
        {
          v29 = *v28;
          operator delete(v28);
          v28 = v29;
        }

        while (v29);
      }

      a1[95] = 0;
      v30 = a1[94];
      if (v30)
      {
        for (m = 0; m != v30; ++m)
        {
          *(a1[93] + 8 * m) = 0;
        }
      }

      a1[96] = 0;
    }

    if (a1[116])
    {
      v32 = a1[115];
      if (v32)
      {
        do
        {
          v33 = *v32;
          operator delete(v32);
          v32 = v33;
        }

        while (v33);
      }

      a1[115] = 0;
      v34 = a1[114];
      if (v34)
      {
        for (n = 0; n != v34; ++n)
        {
          *(a1[113] + 8 * n) = 0;
        }
      }

      a1[116] = 0;
    }

    if (a1[121])
    {
      a1[120] = 0;
      v36 = a1[119];
      if (v36)
      {
        for (ii = 0; ii != v36; ++ii)
        {
          *(a1[118] + 8 * ii) = 0;
        }
      }

      a1[121] = 0;
    }
  }

  v78 = 0;
  if (v38)
  {
    v10 = v38;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 552;
      v12 = "%25s:%-5d ...at packet element count";
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v73 = v78;
  if (!v78)
  {
LABEL_151:
    v66 = *a1;
    AudioMetadataMemoryPool::create<AudioMetadataFormatExtended>();
  }

  v40 = 0;
  v71 = a1 + 2;
  v72 = a1 + 8;
  while (1)
  {
    if (v15 == 2)
    {
      LOBYTE(__p) = 0;
      if (v41)
      {
        v10 = v41;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136315394;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 561;
        v12 = "%25s:%-5d ...at packet status";
        goto LABEL_4;
      }

      v42 = __p >> 6;
    }

    else
    {
      v42 = 0;
    }

    LOBYTE(v76) = 0;
    if (v43)
    {
      goto LABEL_152;
    }

    LOBYTE(__p) = v76 >> 4;
    LOWORD(v81.__r_.__value_.__l.__data_) = 0;
    if (v76 >= 0x30u)
    {
      if (v43)
      {
        goto LABEL_152;
      }
    }

    LOWORD(v77) = 0;
    if (v43)
    {
      goto LABEL_152;
    }

    if (__p <= 3u)
    {
      if (__p < 3u)
      {
        WORD2(__p) = v77;
        goto LABEL_74;
      }

      if (__p != 3)
      {
LABEL_171:
        v10 = 4294900722;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AudioMetadataDeserializer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 296;
          v83 = 1024;
          v84 = __p;
          _os_log_impl(&dword_18F5DF000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown element type (%d)", buf, 0x18u);
        }

        goto LABEL_153;
      }

LABEL_73:
      WORD2(__p) = v81.__r_.__value_.__l.__data_;
      HIWORD(__p) = v77;
      goto LABEL_74;
    }

    if (__p - 5 < 3)
    {
      goto LABEL_73;
    }

    if (__p != 4)
    {
      if (__p != 8)
      {
        goto LABEL_171;
      }

      *buf = 0;
      if (!v43)
      {
        WORD2(__p) = v81.__r_.__value_.__l.__data_;
        HIWORD(__p) = v77;
        LODWORD(v75) = *buf;
        goto LABEL_74;
      }

LABEL_152:
      v10 = v43;
LABEL_153:
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 569;
      v12 = "%25s:%-5d ...at packet element ID";
      goto LABEL_4;
    }

    buf[0] = 0;
    if (v43)
    {
      goto LABEL_152;
    }

    WORD2(__p) = v81.__r_.__value_.__l.__data_;
    HIWORD(__p) = v77;
    LOBYTE(v75) = buf[0];
LABEL_74:
    v77 = 0;
    if (v46)
    {
      v10 = v46;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 575;
      v12 = "%25s:%-5d ...at packet element size";
      goto LABEL_4;
    }

    if (v42 <= 1)
    {
      break;
    }

    if (v42 != 2)
    {
      v10 = 4294900722;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 675;
        v83 = 1024;
        v84 = 3;
        v68 = "%25s:%-5d Unknown element status (%d)";
        goto LABEL_168;
      }

      goto LABEL_169;
    }

    if (__p <= 3u)
    {
      if (__p > 1u)
      {
        if (__p == 2)
        {
          std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 7, WORD2(__p));
        }

        else
        {
          if (__p != 3)
          {
            goto LABEL_173;
          }

          CA::AudioMetadataDeserializer::Impl::expire_stream_format(a1, WORD2(__p), HIWORD(__p));
        }
      }

      else if (__p)
      {
        std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 4, WORD2(__p));
      }

      else
      {
        std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 1, WORD2(__p));
      }
    }

    else if (__p <= 5u)
    {
      if (__p == 4)
      {
        CA::AudioMetadataDeserializer::Impl::expire_track_format(a1, &__p + 2);
      }

      else
      {
        if (__p != 5)
        {
LABEL_173:
          v10 = 4294900722;
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_169;
          }

          *buf = 136315650;
          *&buf[4] = "AudioMetadataDeserializer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 668;
          v83 = 1024;
          v84 = __p;
          v68 = "%25s:%-5d Unknown element type expired (%d)";
          goto LABEL_168;
        }

        CA::AudioMetadataDeserializer::Impl::expire_track_uid(a1, WORD2(__p), HIWORD(__p));
      }
    }

    else
    {
      switch(__p)
      {
        case 6u:
          CA::AudioMetadataDeserializer::Impl::expire_pack_format(a1, WORD2(__p), HIWORD(__p));
          break;
        case 7u:
          CA::AudioMetadataDeserializer::Impl::expire_channel_format(a1, WORD2(__p), HIWORD(__p));
          break;
        case 8u:
          CA::AudioMetadataDeserializer::Impl::expire_block_format(a1, &__p + 2);
          break;
        default:
          goto LABEL_173;
      }
    }

LABEL_145:
    if (++v40 == v73)
    {
      goto LABEL_151;
    }
  }

  v48 = v80;
  v49 = v77;
  if (v42)
  {
    if (__p == 2)
    {
      v59 = *v72;
      if (*v72)
      {
        v60 = a1 + 8;
        do
        {
          v61 = *(v59 + 16);
          v54 = v61 >= WORD2(__p);
          v62 = v61 < WORD2(__p);
          if (v54)
          {
            v60 = v59;
          }

          v59 = v59[v62];
        }

        while (v59);
        if (v60 != v72 && WORD2(__p) >= *(v60 + 16))
        {
          v81.__r_.__value_.__r.__words[0] = 0;
          if (v10)
          {
            if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_144;
            }

            *buf = 136315394;
            *&buf[4] = "AudioMetadataDeserializer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2169;
            v57 = v63;
            v58 = "%25s:%-5d ...at object extension duration";
            goto LABEL_115;
          }

          v64 = v60[5];
          *(v64 + 28) = 1;
          *(v64 + 32) = v81.__r_.__value_.__r.__words[0];
LABEL_144:
          if (v10)
          {
            goto LABEL_169;
          }

          goto LABEL_145;
        }
      }

      v10 = 4294900724;
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_169;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2163;
      v83 = 1024;
      v84 = WORD2(__p);
      v68 = "%25s:%-5d Object extension refers to missing object AO_%04hx";
LABEL_168:
      _os_log_impl(&dword_18F5DF000, v67, OS_LOG_TYPE_ERROR, v68, buf, 0x18u);
      goto LABEL_169;
    }

    if (!__p)
    {
      v51 = *v71;
      if (*v71)
      {
        v52 = a1 + 2;
        do
        {
          v53 = *(v51 + 16);
          v54 = v53 >= WORD2(__p);
          v55 = v53 < WORD2(__p);
          if (v54)
          {
            v52 = v51;
          }

          v51 = v51[v55];
        }

        while (v51);
        if (v52 != v71 && WORD2(__p) >= *(v52 + 16))
        {
          v81.__r_.__value_.__r.__words[0] = 0;
          if (v10)
          {
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_144;
            }

            *buf = 136315394;
            *&buf[4] = "AudioMetadataDeserializer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2425;
            v57 = v56;
            v58 = "%25s:%-5d ...at programme extension end";
LABEL_115:
            _os_log_impl(&dword_18F5DF000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x12u);
            goto LABEL_144;
          }

          v65 = v52[5];
          *(v65 + 36) = 1;
          *(v65 + 40) = v81.__r_.__value_.__r.__words[0];
          goto LABEL_144;
        }
      }

      v10 = 4294900724;
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_169;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2419;
      v83 = 1024;
      v84 = WORD2(__p);
      v68 = "%25s:%-5d Programme extension refers to missing programme AP_%04hx";
      goto LABEL_168;
    }

    v10 = 4294900722;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 632;
      v83 = 1024;
      v84 = __p;
      v68 = "%25s:%-5d Expected element type for extension (%d)";
      goto LABEL_168;
    }

LABEL_169:
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315906;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 680;
    v83 = 1024;
    v84 = v40 + 1;
    v85 = 1024;
    v86 = v73;
    v12 = "%25s:%-5d ...at element #%d of %d";
    v13 = v69;
    v14 = 30;
    goto LABEL_13;
  }

  if (__p <= 3u)
  {
    if (__p <= 1u)
    {
      if (__p)
      {
        CA::AudioMetadataDeserializer::Impl::decode_content(a1, this, v77 + v80, &v80, &__p + 2);
      }

      CA::AudioMetadataDeserializer::Impl::decode_programme(a1, this, v77 + v80, &v80, &__p + 2);
    }

    if (__p == 2)
    {
      CA::AudioMetadataDeserializer::Impl::decode_object(a1, this, v77 + v80, &v80, &__p + 2);
    }

    if (__p == 3)
    {
      CA::AudioMetadataDeserializer::Impl::decode_stream_format(a1);
    }

    goto LABEL_175;
  }

  if (__p <= 5u)
  {
    if (__p == 4)
    {
      CA::AudioMetadataDeserializer::Impl::decode_track_format(a1);
    }

    if (__p == 5)
    {
      CA::AudioMetadataDeserializer::Impl::decode_track_uid(a1);
    }

LABEL_175:
    v10 = 4294900722;
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_169;
    }

    *buf = 136315650;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 617;
    v83 = 1024;
    v84 = __p;
    v68 = "%25s:%-5d Unknown element type (%d)";
    goto LABEL_168;
  }

  if (__p == 6)
  {
    CA::AudioMetadataDeserializer::Impl::decode_pack_format(a1);
  }

  if (__p == 7)
  {
    CA::AudioMetadataDeserializer::Impl::decode_channel_format(a1);
  }

  if (__p != 8)
  {
    goto LABEL_175;
  }

  v81.__r_.__value_.__s.__data_[0] = 0;
  if (!v50)
  {
    v10 = CA::AudioMetadataDeserializer::Impl::decode_block_format(a1, this, v49 + v48, &v80, &__p + 2);
    goto LABEL_144;
  }

  v10 = v50;
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  *buf = 136315394;
  *&buf[4] = "AudioMetadataDeserializer.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 610;
  v12 = "%25s:%-5d ...at block format type";
LABEL_4:
  v13 = v11;
  v14 = 18;
LABEL_13:
  _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_18F7475FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v72 = *(v70 - 128);
  if (v72)
  {
    operator delete(v72);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a58)
  {
    operator delete(a58);
  }

  v73 = *(v70 - 200);
  if (v73)
  {
    operator delete(v73);
  }

  if (a70)
  {
    operator delete(a70);
  }

  v74 = *(v70 - 256);
  if (v74)
  {
    operator delete(v74);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::decode_byte(_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unsigned __int8 *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3 >= a2)
  {
    v5 = 4294900721;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioMetadataDeserializer.cpp";
      v11 = 1024;
      v12 = 155;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v9, 0x12u);
    }
  }

  else
  {
    v5 = 0;
    *a4 = *(this + (*a3)++);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t anonymous namespace::log()
{
  v0 = &unk_1EAD30000;
  {
    v0 = &unk_1EAD30000;
    if (v2)
    {
      v0 = &unk_1EAD30000;
    }
  }

  return v0[456];
}

void std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::clear[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::clear[abi:ne200100](void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t anonymous namespace::decode_var_uint(_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unsigned __int8 *a5)
{
  *a4 = 0;
  while (1)
  {
    LOBYTE(v11) = 0;
    if (result)
    {
      break;
    }

    v10 = v11;
    *a4 = v11 & 0x7F | (*a4 << 7);
    if ((v10 & 0x80) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::decode_uint16(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, unsigned __int16 *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 2;
  if (v5 <= a2)
  {
    v6 = 0;
    *a4 = bswap32(*(this + *a3)) >> 16;
    *a3 = v5;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AudioMetadataDeserializer.cpp";
      v12 = 1024;
      v13 = 390;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v10, 0x12u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t anonymous namespace::decode_uint32(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, unsigned int *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 4;
  if (v5 <= a2)
  {
    v6 = 0;
    *a4 = bswap32(*(this + *a3));
    *a3 = v5;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AudioMetadataDeserializer.cpp";
      v12 = 1024;
      v13 = 404;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v10, 0x12u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void CA::AudioMetadataDeserializer::Impl::decode_programme(CA::AudioMetadataDeserializer::Impl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, const unsigned __int16 *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *this;
  AudioMetadataMemoryPool::create<AudioMetadataProgramme>();
}

void sub_18F748FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (*(v48 - 217) < 0)
  {
    operator delete(*(v48 - 240));
  }

  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_content(CA::AudioMetadataDeserializer::Impl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, const unsigned __int16 *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *this;
  AudioMetadataMemoryPool::create<AudioMetadataContent>();
}

void sub_18F749C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v34 < 0)
  {
    operator delete(*(v35 + 104));
  }

  if (v36 < 0)
  {
    operator delete(*(v35 + 136));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v35 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v35 + 8));
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_object(CA::AudioMetadataDeserializer::Impl *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4, const unsigned __int16 *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *this;
  AudioMetadataMemoryPool::create<AudioMetadataObject>();
}

void sub_18F74AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (v35)
  {
    operator delete(v35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_stream_format(uint64_t *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  AudioMetadataMemoryPool::create<AudioMetadataStreamFormat>();
}

void sub_18F74B4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_track_format(uint64_t *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  AudioMetadataMemoryPool::create<AudioMetadataTrackFormat>();
}

void sub_18F74BB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v23 < 0)
  {
    operator delete(*(v25 - 160));
  }

  if (a14 < 0)
  {
    operator delete(*(v25 - 128));
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_track_uid(uint64_t *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  AudioMetadataMemoryPool::create<AudioMetadataTrackUID>();
}

void sub_18F74C2A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_pack_format(uint64_t *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  AudioMetadataMemoryPool::create<AudioMetadataPackFormat>();
}

void sub_18F74CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::decode_channel_format(uint64_t *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  AudioMetadataMemoryPool::create<AudioMetadataChannelFormat>();
}

void sub_18F74D9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v38 < 0)
  {
    operator delete(a21);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::AudioMetadataDeserializer::Impl::decode_block_format(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  {
    v7 = *a1;
    AudioMetadataMemoryPool::create<AudioMetadataBlockFormat>();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = *(a5 + 1);
    buf[0] = 136316674;
    *&buf[1] = "AudioMetadataDeserializer.cpp";
    v15 = 1024;
    v16 = 1258;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing channel format AC_%04hx%04hx for block format AB_%04hx%04hx_%08x", buf, 0x30u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 4294900724;
}

void sub_18F75029C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, std::__shared_weak_count *a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v50 = *(v48 - 208);
  if (v50)
  {
    operator delete(v50);
  }

  if (*(v48 - 232))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v48 - 232));
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 16);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 16) <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v14 = v5[6];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      operator delete(v5);
    }
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_stream_format(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a1 + 23 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[22] == v4)
    {
      a1[22] = v7;
    }

    v10 = a1[23];
    --a1[24];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_track_format(void *a1, unsigned __int16 *a2)
{
  if (a1 + 20 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (a1[19] == v3)
    {
      a1[19] = v6;
    }

    v9 = a1[20];
    --a1[21];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    v10 = v4[6];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    operator delete(v4);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_track_uid(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a1 + 17 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[16] == v4)
    {
      a1[16] = v7;
    }

    v10 = a1[17];
    --a1[18];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_pack_format(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a1 + 11 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[10] == v4)
    {
      a1[10] = v7;
    }

    v10 = a1[11];
    --a1[12];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_channel_format(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a1 + 14 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[13] == v4)
    {
      a1[13] = v7;
    }

    v10 = a1[14];
    --a1[15];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_block_format(void *a1, unsigned __int16 *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1 + 26 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v20 = *v7 == v8;
        v8 = v7;
      }

      while (!v20);
    }

    if (a1[25] == v4)
    {
      a1[25] = v7;
    }

    v9 = a1[26];
    --a1[27];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v5);
    v10 = v5[6];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    operator delete(v5);
  }

  v11 = a1[89];
  if (!*&v11)
  {
    goto LABEL_34;
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = v13 + v12;
  v15 = vcnt_s8(v11);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = v14 >= *&v11 ? v14 % v11.i32[0] : v13 + v12;
  }

  else
  {
    v16 = (v11.i32[0] - 1) & v14;
  }

  v17 = *(a1[88] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_34:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v23 = a2[1];
      v24 = *(a2 + 1);
      v29 = 136316674;
      v30 = "AudioMetadataDeserializer.cpp";
      v31 = 1024;
      v32 = 2633;
      v33 = 1024;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v22;
      v41 = 1024;
      v42 = v23;
      _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Expired block format AB_%04hx%04hx_%08x for unknown channel format AC_%04hx%04hx", &v29, 0x30u);
    }

    goto LABEL_36;
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v14)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v11)
      {
        v19 %= *&v11;
      }
    }

    else
    {
      v19 &= *&v11 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  v20 = *(v18 + 8) == v12 && *(v18 + 9) == v13;
  if (!v20)
  {
    goto LABEL_33;
  }

  v27 = v18[3];
  v26 = v18[4];
  if (v27 != v26)
  {
    while (__PAIR64__(v27[1], *v27) != __PAIR64__(v13, v12) || *(v27 + 1) != *(a2 + 1))
    {
      v27 += 4;
      if (v27 == v26)
      {
        goto LABEL_36;
      }
    }

    v28 = v26 - (v27 + 4);
    if (v26 != v27 + 4)
    {
      memmove(v27, v27 + 4, v26 - (v27 + 4));
    }

    v18[4] = (v27 + v28);
  }

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_18F751034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F751224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75131C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CA::AudioMetadataDeserializer::Impl::check_common_pack_format_ref(uint64_t *result, unsigned __int16 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v4 = result;
    v5 = *a2;
    if (v4 + 11 == result)
    {
      snprintf(__str, 0xCuLL, "AP_%04hx%04hx", v5, v2);
      v7 = CA::ADMCommonFormats::pack_formats;
      v8 = 347;
      do
      {
        result = strcmp(__str, *v7);
        if (!result)
        {
          v9 = *v4;
          AudioMetadataMemoryPool::create<AudioMetadataPackFormat>();
        }

        --v8;
        v7 += 6;
      }

      while (v8);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7516F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 8);
    v6 = *(i + 9);
    v7 = v6 + v5;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_22;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6 + v5;
      if (v7 >= *&v8)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_22;
      }

LABEL_21:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (*(v12 + 8) != v5 || *(v12 + 9) != v6)
    {
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t *CA::AudioMetadataDeserializer::Impl::check_common_channel_format_ref(uint64_t *result, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v4 = result;
    v5 = *a2;
    if (v4 + 14 == result)
    {
      snprintf(__str, 0xCuLL, "AC_%04hx%04hx", v5, v2);
      v6 = *v4;
      AudioMetadataMemoryPool::create<AudioMetadataChannelFormat>();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F751FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v42 = *(v40 - 216);
  if (v42)
  {
    operator delete(v42);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>,std::__map_value_compare<anonymous namespace::TrackFormatID,std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>,std::less<anonymous namespace::TrackFormatID>,true>,std::allocator<std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>>>::find<anonymous namespace::TrackFormatID>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  v8 = *(a2 + 4);
  do
  {
    v9 = *(v3 + 16);
    if (v9 < v5)
    {
LABEL_4:
      ++v3;
      goto LABEL_7;
    }

    if (v9 > v5)
    {
      goto LABEL_6;
    }

    v10 = *(v3 + 17);
    if (v10 < v6)
    {
      goto LABEL_4;
    }

    if (v10 > v6)
    {
LABEL_6:
      v7 = v3;
    }

    else
    {
      v11 = *(v3 + 36);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v7 = v3;
      }

      v3 += v13;
    }

LABEL_7:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v14 = *(v7 + 16);
  if (v5 < v14)
  {
    return v2;
  }

  if (v5 <= v14)
  {
    v16 = *(v7 + 17);
    if (v6 < v16 || v6 <= v16 && v8 < *(v7 + 36))
    {
      return v2;
    }
  }

  return v7;
}

void sub_18F752344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CA::AudioMetadataDeserializer::Impl::check_common_stream_format_ref(uint64_t *result, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v4 = result;
    v5 = *a2;
    if (v4 + 23 == result)
    {
      snprintf(__str, 0xCuLL, "AS_%04hx%04hx", v5, v2);
      v6 = *v4;
      AudioMetadataMemoryPool::create<AudioMetadataStreamFormat>();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F752750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>::operator[](uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_14:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 16);
      if (v3 >= v7)
      {
        break;
      }

LABEL_4:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_14;
      }
    }

    if (v3 <= v7)
    {
      v8 = *(v6 + 17);
      if (v4 < v8)
      {
        goto LABEL_4;
      }

      if (v4 <= v8)
      {
        v9 = *(v6 + 36);
        if (v5 < v9)
        {
          goto LABEL_4;
        }

        if (v9 >= v5)
        {
          return (v6 + 5);
        }
      }
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_14;
    }
  }
}

void sub_18F7529E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<unsigned short,std::vector<anonymous namespace::FormatID>>::operator[](void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return (v7 + 3);
}

void sub_18F752E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_18F752F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return (v9 + 3);
}

void sub_18F753280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
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

void sub_18F753444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::find[abi:ne200100](void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = a3 + a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4 >= *&v3 ? v4 % v3.i32[0] : a3 + a2;
  }

  else
  {
    v6 = (v3.i32[0] - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 8) == a2 && *(result + 9) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_18F753700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::BlockFormatID>>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return (v9 + 3);
}

void sub_18F753B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>,std::__map_value_compare<anonymous namespace::BlockFormatID,std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>,std::less<anonymous namespace::BlockFormatID>,true>,std::allocator<std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>>>::find<anonymous namespace::BlockFormatID>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  v8 = *(a2 + 1);
  do
  {
    v9 = *(v3 + 16);
    if (v9 < v5)
    {
LABEL_4:
      ++v3;
      goto LABEL_7;
    }

    if (v9 > v5)
    {
      goto LABEL_6;
    }

    v10 = *(v3 + 17);
    if (v10 < v6)
    {
      goto LABEL_4;
    }

    if (v10 > v6)
    {
LABEL_6:
      v7 = v3;
    }

    else
    {
      v11 = *(v3 + 9);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v7 = v3;
      }

      v3 += v13;
    }

LABEL_7:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v14 = *(v7 + 16);
  if (v5 < v14)
  {
    return v2;
  }

  if (v5 <= v14)
  {
    v16 = *(v7 + 17);
    if (v6 < v16 || v6 <= v16 && v8 < *(v7 + 9))
    {
      return v2;
    }
  }

  return v7;
}

void sub_18F753CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>,std::__map_value_compare<anonymous namespace::FormatID,std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>,std::less<anonymous namespace::FormatID>,true>,std::allocator<std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>>>::find<anonymous namespace::FormatID>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 16);
    if (v7 >= a2)
    {
      if (v7 > a2)
      {
        v6 = v4;
      }

      else
      {
        v8 = *(v4 + 17);
        v9 = v8 >= a3;
        v10 = v8 < a3;
        if (v9)
        {
          v6 = v4;
        }

        v4 += v10;
      }
    }

    else
    {
      ++v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 16);
  if (v11 > a2 || v11 >= a2 && *(v6 + 17) > a3)
  {
    return v3;
  }

  return v6;
}

void sub_18F754060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F754158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,anonymous namespace::FormatID>::find[abi:ne200100](void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 1);
  v6 = v4 + v3 + v5;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 + v3 + v5;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = (*&v2 - 1) & v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (__PAIR64__(*(result + 9), *(result + 8)) == __PAIR64__(v4, v3) && *(result + 5) == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 1);
  v5 = v3 + v2 + v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 + v2 + v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v10 + 9), *(v10 + 8)) != __PAIR64__(v3, v2) || *(v10 + 5) != v4)
  {
    goto LABEL_18;
  }

  return v10 + 3;
}