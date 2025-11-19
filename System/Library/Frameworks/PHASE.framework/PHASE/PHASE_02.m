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

void sub_23A323A50(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](v1);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::SpatialModeler::AudibleEarlyReflection *a1, uint64_t a2)
{
  v3 = a1;
  {
    if (a1)
    {
      *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance = 1.0 / Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(a1);
    }
  }

  v4 = Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(a1);
  v5 = v4 * *v3;
  v6 = roundf(v5) * *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance;
  v13 = vrnda_f32(vmul_n_f32(*(v3 + 4), v4));
  v7 = vmul_n_f32(v13, *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance);
  v8 = vmul_f32(v7, v7);
  *v9.i32 = sqrtf(((v6 * v6) + v8.f32[0]) + v8.f32[1]);
  v10 = vmul_f32(*(a2 + 4), vdiv_f32(v7, vdup_lane_s32(v9, 0)));
  v11 = v13.f32[0];
  v12 = 269431639 * llroundf(v5);
  v13.f32[0] = (v10.f32[1] + ((*a2 * (v6 / *v9.i32)) + v10.f32[0])) * 1.9117;
  v14 = 0.5;
  if (v13.f32[0] < 0.0)
  {
    v14 = -0.5;
  }

  return v12 + 93309929 * v11 + 775157 * v13.f32[1] + 74831 * (v13.f32[0] + v14);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE86340](a1 + 8);
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

void sub_23A323C48(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE860D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE860E0](v13);
  return a1;
}

void sub_23A323DB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE860E0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23A323D90);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_23A323FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Phase::DspLayer23::AudioConnections *Phase::DspLayer23::AudioConnections::AudioConnections(Phase::DspLayer23::AudioConnections *this)
{
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (atomic_load_explicit(&Phase::DspLayer23::zeroFlag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&Phase::DspLayer23::zeroFlag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::DspLayer23::AudioConnections::AudioConnections(void)::$_0 &&>>);
  }

  return this;
}

uint64_t Phase::DspLayer23::AudioConnections::Add(Phase::DspLayer23::AudioConnections *this, float *a2)
{
  v4 = *(this + 15);
  if (v4 > 0xD)
  {
    if (v4 > 0x3FF)
    {
      return 0;
    }

    v6 = *(this + 14);
    if (v4 == 14)
    {
      if (v6)
      {
        v4 = 14;
      }

      else
      {
        v6 = malloc_type_malloc(0x1F90uLL, 0x80040B8603338uLL);
        *(this + 14) = v6;
        v4 = *(this + 15);
      }
    }

    v5 = &v6[8 * v4 - 112];
  }

  else
  {
    v5 = this + 8 * v4;
  }

  *v5 = a2;
  *(this + 15) = v4 + 1;
  return 1;
}

uint64_t Phase::DspLayer23::AudioConnections::Remove(Phase::DspLayer23::AudioConnections *this, float *a2)
{
  v2 = *(this + 15);
  if (v2 > 0xE)
  {
    v4 = 0;
    v5 = v2 - 15;
    do
    {
      if (*(this + v4) == a2)
      {
        *(this + v4) = *(*(this + 14) + 8 * v5);
        goto LABEL_15;
      }

      v4 += 8;
    }

    while (v4 != 112);
    v6 = 0;
    v7 = *(this + 14);
    while (*(v7 + 8 * v6) != a2)
    {
      if (v2 - 14 == ++v6)
      {
        return 0;
      }
    }

    if (v5 > v6)
    {
      *(v7 + 8 * v6) = *(v7 + 8 * v5);
    }

LABEL_15:
    v9 = v2 - 1;
  }

  else
  {
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    while (*(this + v3) != a2)
    {
      if (v2 == ++v3)
      {
        return 0;
      }
    }

    v9 = v2 - 1;
    if (v9 > v3)
    {
      *(this + v3) = *(this + v9);
    }
  }

  *(this + 15) = v9;
  return 1;
}

uint64_t Phase::DspLayer23::AudioConnections::GetConnection(uint64_t this, float *a2)
{
  v2 = this;
  v3 = *(this + 120);
  if (v3 >= 0xF)
  {
    v4 = 14;
    while (*this != a2)
    {
      this += 8;
      if (!--v4)
      {
        this = *(v2 + 112);
        v5 = v3 - 14;
        while (*this != a2)
        {
          this += 8;
          if (!--v5)
          {
            return 0;
          }
        }

        return this;
      }
    }
  }

  else if (v3)
  {
    while (*v2 != a2)
    {
      v2 += 8;
      if (!--v3)
      {
        return 0;
      }
    }

    return v2;
  }

  else
  {
    return 0;
  }

  return this;
}

float *Phase::DspLayer23::AudioConnections::Sum(float **this, unint64_t a2, float *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = this[15];
  if (v5 == 1)
  {
    return *this;
  }

  if (!v5)
  {
    return Phase::DspLayer23::ZERO_BUFFER;
  }

  v6 = a3;
  if (v5 > 0xE)
  {
    if (v5 == 15)
    {
      Phase::DspLayer23::AudioConnections::InternalSum(this, 0xEuLL, a2, this, a3);
      v7 = *this[14];
    }

    else
    {
      MEMORY[0x28223BE20](this);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, v8);
      Phase::DspLayer23::AudioConnections::InternalSum(v10, 0xEuLL, a2, this, v6);
      Phase::DspLayer23::AudioConnections::InternalSum(v11, this[15] - 14, a2, this[14], v9);
      v7 = v9;
    }

    MEMORY[0x23EE871C0](v7, 1, v6, 1, v6, 1, a2);
  }

  else
  {
    Phase::DspLayer23::AudioConnections::InternalSum(this, v5, a2, this, a3);
  }

  return v6;
}

void Phase::DspLayer23::AudioConnections::InternalSum(Phase::DspLayer23::AudioConnections *this, unint64_t a2, unint64_t a3, float **a4, float *a5)
{
  v5 = *a4;
  if (a3 < 0x20)
  {
    i = 0;
    if (!a3)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = 0;
  do
  {
    v7 = (v5 + 4 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    v7 += 4;
    v12 = *v7;
    v13 = v7[1];
    v14 = v7[2];
    v15 = v7[3];
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = a4 + 1;
    v20 = a2 - 1;
    if (a2 >= 2)
    {
      do
      {
        v21 = *v19++;
        v22 = (v21 + 4 * v6);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v22 += 4;
        v8 = vaddq_f32(v8, v23);
        v16 = vaddq_f32(v16, v24);
        v17 = vaddq_f32(v17, v25);
        v18 = vaddq_f32(v18, v26);
        v12 = vaddq_f32(v12, *v22);
        v13 = vaddq_f32(v13, v22[1]);
        v14 = vaddq_f32(v14, v22[2]);
        v15 = vaddq_f32(v15, v22[3]);
        --v20;
      }

      while (v20);
    }

    v27 = &a5[v6];
    *v27 = v8;
    *(v27 + 1) = v16;
    *(v27 + 2) = v17;
    *(v27 + 3) = v18;
    v27 += 16;
    *v27 = v12;
    *(v27 + 1) = v13;
    *(v27 + 2) = v14;
    *(v27 + 3) = v15;
    v6 += 32;
    a3 -= 32;
  }

  while (a3 > 0x1F);
  for (i = v6 & 0xFFFFFFE0; a3; a3 -= 4)
  {
LABEL_9:
    v29 = *(v5 + 4 * i);
    v30 = a4 + 1;
    v31 = a2 - 1;
    if (a2 >= 2)
    {
      do
      {
        v32 = *v30++;
        v29 = vaddq_f32(v29, *(v32 + 4 * i));
        --v31;
      }

      while (v31);
    }

    *&a5[i] = v29;
    i += 4;
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::DspLayer23::AudioConnections::AudioConnections(void)::$_0 &&>>()
{
  v0 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
  Phase::DspLayer23::ZERO_BUFFER = v0;

  bzero(v0, 0x4000uLL);
}

BOOL Phase::Controller::SystemAudioIO::IsValidFormat(Phase::Controller::SystemAudioIO *this, AVAudioFormat *a2)
{
  v2 = this;
  v3 = v2;
  v5 = v2 && ([(Phase::Controller::SystemAudioIO *)v2 sampleRate], v4 > 0.0) && [(Phase::Controller::SystemAudioIO *)v3 channelCount]!= 0;

  return v5;
}

id Phase::Controller::SystemAudioIO::GetOutputChannelLayout(Phase::Controller::SystemAudioIO *this, AVAudioFormat *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = v2;
  if (!v2)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioIOBase.mm";
      *&buf[12] = 1024;
      *&buf[14] = 29;
      v13 = "%25s:%-5d Undefined audio output format (AVAudioFormat* is nil).";
LABEL_27:
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    }

LABEL_28:
    v5 = 0;
    goto LABEL_29;
  }

  v4 = [(Phase::Controller::SystemAudioIO *)v2 channelLayout];
  v5 = v4;
  if (!v4)
  {
LABEL_19:

    v14 = [(Phase::Controller::SystemAudioIO *)v3 channelCount];
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = 6553601;
      }

      else
      {
        if (v14 != 2)
        {
          v17 = **(Phase::Logger::GetInstance(v14) + 544);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AudioIOBase.mm";
            *&buf[12] = 1024;
            *&buf[14] = 62;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Undefined output channel layout for channel count > 2. Using stereo as a fallback.", buf, 0x12u);
          }

          v18 = [(Phase::Controller::SystemAudioIO *)v3 channelCount];
          memset(buf, 0, sizeof(buf));
          std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(buf, v18);
        }

        v15 = 6619138;
      }

      v5 = [MEMORY[0x277CB8368] layoutWithLayoutTag:v15];
      goto LABEL_29;
    }

    v12 = **(Phase::Logger::GetInstance(v14) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioIOBase.mm";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      v13 = "%25s:%-5d 0 output channels.";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v6 = [v4 layout];
  v7 = v6[2];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * v7 + 12);
  memcpy(__dst[0], v6, 20 * v6[2] + 12);
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(__dst, buf);
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  v8 = *buf;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2);
  if (v9 > 0x40)
  {
    std::terminate();
  }

  if (*&buf[8] == *buf)
  {
    if (!*&buf[8])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2);
  }

  if (**buf == -1)
  {
    v19 = 0;
    v20 = v10 - 1;
    v21 = 20;
    while (v20 != v19)
    {
      v22 = *(*buf + v21);
      v21 += 20;
      ++v19;
      if (v22 != -1)
      {
        v23 = v5;
        *&buf[8] = v8;
        operator delete(v8);
        if (v9 > v19)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    *&buf[8] = *buf;
    operator delete(*buf);
    goto LABEL_19;
  }

  v11 = v5;
  *&buf[8] = v8;
  operator delete(v8);
LABEL_14:

LABEL_29:

  return v5;
}

void sub_23A324984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::GetRenderedChannels(Phase::Controller::SystemAudioIO *this, AVAudioChannelLayout *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = v2;
  if (!v2)
  {
    goto LABEL_25;
  }

  v2 = [(Phase::Controller::SystemAudioIO *)v2 layout];
  if (!v2)
  {
    goto LABEL_25;
  }

  v4 = [(Phase::Controller::SystemAudioIO *)v3 layout];
  v5 = v4[2];
  if (v5 <= 1)
  {
    v5 = 1;
  }

  std::vector<char>::vector[abi:ne200100](&__dst, 20 * v5 + 12);
  memcpy(__dst, v4, 20 * v4[2] + 12);
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(&__dst, __p);
  if (__dst)
  {
    v19 = __dst;
    operator delete(__dst);
  }

  v6 = *__p;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*&__p[8] - *__p) >> 2);
  if (v7 > 0x40)
  {
    std::terminate();
  }

  if (*&__p[8] == *__p)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = *v6;
      v6 += 5;
      if ((v10 + 1) >= 2)
      {
        v9 |= 1 << v8;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v11 = [(Phase::Controller::SystemAudioIO *)v3 layout];
  v12 = v11[2];
  if (v12 <= 1)
  {
    v12 = 1;
  }

  std::vector<char>::vector[abi:ne200100](&__dst, 20 * v12 + 12);
  memcpy(__dst, v11, 20 * v11[2] + 12);
  NumActiveChannels = Phase::ChannelLayout::GetNumActiveChannels(&__dst, v9);
  v2 = *__p;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((*&__p[8] - *__p) >> 2);
  if (__dst)
  {
    v19 = __dst;
    operator delete(__dst);
    v2 = *__p;
  }

  if (v14 == NumActiveChannels)
  {
    v9 = -1;
  }

  if (v2)
  {
    *&__p[8] = v2;
    operator delete(v2);
  }

  if (!v9)
  {
LABEL_25:
    v15 = **(Phase::Logger::GetInstance(v2) + 544);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      Phase::ChannelLayout::GetStringDescription([(Phase::Controller::SystemAudioIO *)v3 layout], &__dst);
      if (v20 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      *__p = 136315650;
      *&__p[4] = "AudioIOBase.mm";
      *&__p[12] = 1024;
      *&__p[14] = 105;
      v22 = 2080;
      v23 = p_dst;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d System output layout does not contain any valid channel description.\n%s", __p, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__dst);
      }
    }

    v9 = 0;
  }

  return v9;
}

void sub_23A324CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::SystemAudioIO::AudioIOBase *Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(Phase::Controller::SystemAudioIO::AudioIOBase *this, Phase::Controller::VoiceManager *a2)
{
  v3 = 0;
  *this = &unk_284D2F870;
  *(this + 1) = a2;
  *(this + 1) = xmmword_23A554AC0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 36) = 0;
  do
  {
    v4 = this + v3;
    v4[152] = 0;
    *(v4 + 156) = 0u;
    *(v4 + 172) = 0u;
    *(v4 + 188) = 0u;
    *(v4 + 204) = 0u;
    *(v4 + 55) = 0;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + v3 + 224));
    *(v4 + 29) = 0;
    v3 += 88;
  }

  while (v3 != 176);
  *(this + 82) = 0;
  return this;
}

void sub_23A324DB8(_Unwind_Exception *a1)
{
  std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100]((v2 + 216), 0);

  if (v1)
  {
    v4 = (v2 + 64);
    v5 = -v1;
    do
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::~IOConfiguration(v4);
      v4 = (v6 - 88);
      v5 += 88;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::SpeechDetector::SpeechDetectorImpl ***std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100](Phase::Controller::SpeechDetector::SpeechDetectorImpl ***result, Phase::Controller::SpeechDetector::SpeechDetectorImpl **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v2, 0);
    std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(Phase::Controller::SystemAudioIO::AudioIOBase *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 88))(this);
  __dst[0] = 0;
  v5 = std::vector<char>::vector[abi:ne200100](v26, 32);
  v6 = v26[0];
  *v26[0] = 6619138;
  v6[2] = 0;
  if (!v4 || (v5 = [v4 layout]) == 0)
  {
    v15 = **(Phase::Logger::GetInstance(v5) + 544);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__dst = 136315394;
      *&__dst[4] = "AudioIOBase.mm";
      *&__dst[12] = 1024;
      *&__dst[14] = 164;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Undefined hardware output channel layout, falling back to stereo.", __dst, 0x12u);
    }

    goto LABEL_20;
  }

  v7 = [v4 layout];
  v9 = Phase::ChannelLayout::IsLayoutSupported(v7, v8);
  if ((v9 & 1) == 0)
  {
    v16 = **(Phase::Logger::GetInstance(v9) + 544);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      Phase::ChannelLayout::GetStringDescription([v4 layout], __p);
      v17 = v25 >= 0 ? __p : __p[0];
      *__dst = 136315650;
      *&__dst[4] = "AudioIOBase.mm";
      *&__dst[12] = 1024;
      *&__dst[14] = 169;
      v28 = 2080;
      v29 = v17;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported hardware output channel layout, falling back to stereo.\n%s", __dst, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_20;
  }

  v10 = [v4 layout];
  v11 = v10[2];
  if (v11 <= 1)
  {
    v11 = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * v11 + 12);
  memcpy(*__dst, v10, 20 * v10[2] + 12);
  RenderedChannels = Phase::Controller::SystemAudioIO::GetRenderedChannels(v4, v12);
  Phase::ChannelLayout::ReduceLayout(__dst, RenderedChannels, a2);
  if (*__dst)
  {
    *&__dst[8] = *__dst;
    operator delete(*__dst);
  }

  if (!Phase::ChannelLayout::IsLayoutSupported(a2))
  {
    v14 = *a2;
    if (*a2)
    {
      a2[1] = v14;
      operator delete(v14);
    }

LABEL_20:
    v18 = (*(*this + 80))(this);
    if (v18 == 1)
    {
      v21 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 202;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported.\n                                    Falling back to mono.\n                                    Make sure that a valid speaker layout is set for the device in Audio and MIDI settings.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32);
      v20 = 6553601;
    }

    else if (v18)
    {
      v22 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 213;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported.\n                                    Falling back to stereo over the first 2 output channels.\n                                    Make sure that a valid speaker layout is set for the device in Audio and MIDI settings.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32);
      v20 = 6619138;
    }

    else
    {
      v19 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 191;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported, with 0 output channels.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32);
      v20 = -65536;
    }

    v23 = *a2;
    v23[1] = 0;
    v23[2] = 0;
    *v23 = v20;
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_23A325310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::BeginRouteChange(Phase::Controller::SystemAudioIO::AudioIOBase *this)
{
  v19 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v3 = os_signpost_id_generate(**(Instance + 544));
  v4 = Phase::Logger::GetInstance(v3);
  if (*(v4 + 552) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(v4) + 544);
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Phase_BeginRouteChange", "Begin route change", &v15, 2u);
    }
  }

  v7 = (*(*this + 64))(this);
  v8 = *(this + 82);
  if (v7)
  {
    if (v8)
    {
      v13 = **(Phase::Logger::GetInstance(v7) + 544);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "AudioIOBase.mm";
        v17 = 1024;
        v18 = 233;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mRouteChangeResumeSemaphore == 0U is false.", &v15, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: mRouteChangeResumeSemaphore == 0U is false.");
    }

    *(this + 82) = 1;
    *(this + 16) = *(this + 14);
    *(this + 136) = *(this + 120);
    (*(*this + 56))(this);
  }

  else if (v8)
  {
    *(this + 82) = v8 + 1;
  }

  (*(*this + 32))(this);
  v9 = (*(*this + 24))(this);
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 552) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 544);
    v12 = v11;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_END, v3, "Phase_BeginRouteChange", "Begin route change done", &v15, 2u);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOBase::EndRouteChange(atomic_uint *this)
{
  v38 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v3 = os_signpost_id_generate(**(Instance + 544));
  v4 = Phase::Logger::GetInstance(v3);
  if (*(v4 + 552) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(v4) + 544);
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Phase_EndRouteChange", "End route change", &v32, 2u);
    }
  }

  v7 = this[82];
  if (v7 == 1)
  {
    if (this[34])
    {
      v8 = mach_absolute_time();
      v9 = *(this + 16);
      v10 = (*(*this + 104))(this);
      v11 = (*(*this + 120))(this);
      v12 = ((v8 - v9) * 0.0000000416666667 * v10);
      v13 = vcvtpd_u64_f64(256.0 / v11);
      v14 = vcvtad_u64_f64(v12 / v11);
      if (v12 <= 0x100)
      {
        v12 = 256;
      }

      if (v13 <= v14)
      {
        v13 = v14;
      }

      v15 = v13 * v11;
      if (v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      v17 = Phase::Logger::GetInstance(v11);
      v18 = os_signpost_id_generate(**(v17 + 544));
      v19 = Phase::Logger::GetInstance(v18);
      if (*(v19 + 552) == 1)
      {
        v20 = **(Phase::Logger::GetInstance(v19) + 544);
        v21 = v20;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v32 = 67109120;
          LODWORD(v33) = v16;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Phase_FlushFrames", "End route change: start flush %i frames", &v32, 8u);
        }
      }

      if (v16)
      {
        v22 = v16 + 128;
        do
        {
          Phase::Controller::DVM_RT::Update(*(**(**(this + 1) + 696) + 168));
          v22 -= 128;
        }

        while (v22 > 0x80);
      }

      v23 = Phase::Logger::GetInstance(v19);
      if (*(v23 + 552) == 1)
      {
        v24 = **(Phase::Logger::GetInstance(v23) + 544);
        v25 = v24;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          LOWORD(v32) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v25, OS_SIGNPOST_INTERVAL_END, v18, "Phase_EndRouteChange", "End route change: end flush frames", &v32, 2u);
        }
      }

      v26 = **(Phase::Logger::GetInstance(v23) + 544);
      v27 = v26;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "AudioIOBase.mm";
        v34 = 1024;
        v35 = 339;
        v36 = 1024;
        v37 = v16;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Flushed %i audio frames.", &v32, 0x18u);
      }

      *(this + 16) = v8;
      *(this + 136) = 1;
    }

    v4 = (*(*this + 40))(this);
    v7 = this[82];
  }

  if (v7)
  {
    this[82] = v7 - 1;
  }

  if (atomic_load(this + 36))
  {
    atomic_fetch_add(this + 36, 0xFFFFFFFF);
  }

  v29 = Phase::Logger::GetInstance(v4);
  if (*(v29 + 552) == 1)
  {
    v30 = **(Phase::Logger::GetInstance(v29) + 544);
    v31 = v30;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v31, OS_SIGNPOST_INTERVAL_END, v3, "Phase_EndRouteChange", "End route change done", &v32, 2u);
    }
  }
}

void sub_23A325ACC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(Phase::Controller::SystemAudioIO::AudioIOBase *this, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v5 = 0;
  v6 = *(Instance + 1612);
  v7 = this + 152;
  v8 = 1;
  v9 = "audioio-out";
  do
  {
    v10 = v8;
    v11 = &v7[88 * v5];
    if (((v6 >> v5) & 1) == 0 || !a2 || *v11 != 1)
    {
      goto LABEL_17;
    }

    v12 = **(Phase::Logger::GetInstance(Instance) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(v11 + 2) description];
      v14 = v13;
      v15 = [v13 cStringUsingEncoding:4];
      *buf = 136316162;
      *&buf[4] = "AudioIOBase.mm";
      v31 = 1024;
      v32 = 354;
      v33 = 2048;
      *v34 = this;
      *&v34[8] = 1024;
      *&v34[10] = v5;
      v35 = 2080;
      v36 = v15;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: element[%d] format = %s", buf, 0x2Cu);
    }

    if (!*(v11 + 13) || *(v11 + 3) <= 0.0)
    {
      v24 = **(Phase::Logger::GetInstance(v16) + 544);
      v25 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v11 + 1);
        *buf = 136315650;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 372;
        v33 = 1024;
        *v34 = v26;
        _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: ERROR: invalid capture format!", buf, 0x18u);
      }

LABEL_17:
      Instance = Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::StopCaptures(&v7[88 * v5]);
      goto LABEL_18;
    }

    Phase::Logger::CreateAudioCapturer(v9, v11 + 24, buf);
    v17 = *buf;
    *buf = 0;
    v18 = *(v11 + 10);
    *(v11 + 10) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v17 = *(v11 + 10);
    }

    if (v17)
    {
      v20 = (*(*v17 + 64))(v17, 10000);
      v21 = **(Phase::Logger::GetInstance(v20) + 544);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v11 + 1);
        v23 = (*(**(v11 + 10) + 56))(*(v11 + 10));
        *buf = 136315906;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 380;
        v33 = 1024;
        *v34 = v22;
        *&v34[4] = 2080;
        *&v34[6] = v23;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: writing capture to %s", buf, 0x22u);
      }
    }

    else
    {
      v27 = **(Phase::Logger::GetInstance(0) + 544);
      v28 = v27;
      Instance = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (Instance)
      {
        v29 = *(v11 + 1);
        *buf = 136315650;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 384;
        v33 = 1024;
        *v34 = v29;
        _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: Error: could not create capture file!", buf, 0x18u);
      }
    }

LABEL_18:
    v8 = 0;
    v9 = "audioio-in";
    v5 = 1;
  }

  while ((v10 & 1) != 0);
}

void *Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::StopCaptures(void *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (this[10])
  {
    v1 = this;
    v2 = **(Phase::Logger::GetInstance(this) + 544);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 1);
      v4 = 136315650;
      v5 = "AudioIOBase.mm";
      v6 = 1024;
      v7 = 392;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: stopping capture", &v4, 0x18u);
    }

    this = v1[10];
    v1[10] = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(uint64_t this, const AudioTimeStamp *a2, uint64_t a3, const AudioBufferList *a4)
{
  v4 = *(this + 80);
  if (v4)
  {
    (*(*v4 + 24))(*(this + 80), a3, a4, 0);
    mHostTime = a2->mHostTime;
    mSampleTime = a2->mSampleTime;
    v9 = *(*v4 + 72);

    return v9(v4, mHostTime, mSampleTime, a3);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::~IOConfiguration(Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100](this + 8, 0);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::AudioIOPlatformAdapter(uint64_t a1, Phase::Controller::VoiceManager *a2, void *a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(a1, a2);
  *a1 = &unk_284D2F918;
  *(a1 + 336) = a4;
  v8 = v7;
  *(a1 + 344) = v8;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  v9 = 0;
  *(a1 + 448) = malloc_type_malloc(0x1E0uLL, 0x108004068AA72D0uLL);
  do
  {
    v10 = *(a1 + 448);
    v11 = malloc_type_malloc(0x200uLL, 0x100004052888210uLL);
    v12 = v10 + v9;
    *v12 = v11;
    *(v12 + 8) = 128;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v11[30] = 0u;
    v11[31] = 0u;
    v11[28] = 0u;
    v11[29] = 0u;
    v11[26] = 0u;
    v11[27] = 0u;
    v11[24] = 0u;
    v11[25] = 0u;
    v11[22] = 0u;
    v11[23] = 0u;
    v11[20] = 0u;
    v11[21] = 0u;
    v11[18] = 0u;
    v11[19] = 0u;
    v11[16] = 0u;
    v11[17] = 0u;
    v11[14] = 0u;
    v11[15] = 0u;
    v11[12] = 0u;
    v11[13] = 0u;
    v11[10] = 0u;
    v11[11] = 0u;
    v11[8] = 0u;
    v11[9] = 0u;
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    v9 += 40;
    *v11 = 0u;
    v11[1] = 0u;
  }

  while (v9 != 480);
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global);
  }

  if (off_27DF97878)
  {
    v13 = off_27DF97878();
    v14 = _MergedGlobals_12;
    *(a1 + 440) = v13;
    if (v14 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }
  }

  else
  {
    v13 = 0;
    *(a1 + 440) = 0;
  }

  if (off_27DF978A0)
  {
    off_27DF978A0(v13, 0);
  }

  v19 = *(a1 + 440);
  memset(__p, 0, 24);
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v19, &v20, 1uLL);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v15 = AudioIssueDetectorLibraryLoader(void)::libSym(8, __p);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 424) = v15;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    v15 = *(a1 + 424);
  }

  if (!v15)
  {
    v16 = **(Phase::Logger::GetInstance(0) + 544);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "AudioIOPlatformAdapter.mm";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 52;
      WORD1(__p[2]) = 2048;
      *(&__p[2] + 4) = a1;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to create AID", __p, 0x1Cu);
    }
  }

  return a1;
}

void sub_23A3264E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  std::optional<CA::AudioBuffersDeprecated>::~optional(v10 + 400);
  v13 = *(v10 + 376);
  if (v13)
  {
    *(v10 + 384) = v13;
    operator delete(v13);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(v10);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(Phase::Controller::SystemAudioIO::AudioIOBase *this)
{
  v2 = 0;
  *this = &unk_284D2F870;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 320);
    *(this + v2 + 320) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 38);
    *(v3 + 38) = 0;
    if (v5)
    {
      std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v5, 0);
      std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v5, 0);
      MEMORY[0x23EE864A0](v5, 0x20C4093837F09);
    }

    v2 -= 88;
  }

  while (v2 != -176);
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::~AudioIOPlatformAdapter(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v2 = 0;
  *this = &unk_284D2F918;
  do
  {
    free(*(*(this + 56) + v2));
    v2 += 40;
  }

  while (v2 != 480);
  free(*(this + 56));
  (*(*this + 32))(this);
  v3 = *(this + 53);
  if (v3)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
    }

    if (off_27DF94D18)
    {
      off_27DF94D18(v3);
    }

    *(this + 53) = 0;
  }

  v4 = *(this + 55);
  if (v4)
  {
    if (_MergedGlobals_12 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }

    if (off_27DF978D0)
    {
      off_27DF978D0(v4);
    }

    *(this + 55) = 0;
  }

  if (*(this + 408) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  v5 = *(this + 47);
  if (v5)
  {
    *(this + 48) = v5;
    operator delete(v5);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(this);
}

{
  Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::~AudioIOPlatformAdapter(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::EnableBus(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this, unsigned int a2, char a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v23 = a3;
  if (*(this + 352))
  {
    return 4294956447;
  }

  v6 = this + 88 * a2;
  v9 = v6[152];
  v7 = v6 + 152;
  v8 = v9;
  *v7 = a3;
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v22 = a2 == 1;
    v11 = [objc_opt_class() instanceMethodSignatureForSelector:sel_enableIO_direction_];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setTarget:*(this + 43)];
    [v12 setSelector:sel_enableIO_direction_];
    [v12 setArgument:&v23 atIndex:2];
    [v12 setArgument:&v22 atIndex:3];
    [v12 invoke];
    v21 = 0;
    v13 = [v12 getReturnValue:&v21];
    if ((v21 & 1) == 0)
    {
      *v7 = v8;
      v14 = **(Phase::Logger::GetInstance(v13) + 544);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *v7;
        if (v23)
        {
          v16 = "enable";
        }

        else
        {
          v16 = "disable";
        }

        *buf = 136316418;
        v25 = "AudioIOPlatformAdapter.mm";
        v26 = 1024;
        v27 = 119;
        v28 = 2048;
        v29 = this;
        v30 = 2080;
        v31 = v16;
        v32 = 1024;
        v33 = a2;
        v34 = 1024;
        v35 = v15;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not %s bus %d, final state %d", buf, 0x32u);
      }
    }
  }

  v17 = **(Phase::Logger::GetInstance(v10) + 544);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v18)
  {
    v19 = *v7;
    v20 = "disabled";
    v25 = "AudioIOPlatformAdapter.mm";
    *buf = 136316162;
    v26 = 1024;
    if (v19)
    {
      v20 = "enabled";
    }

    v27 = 124;
    v28 = 2048;
    v29 = this;
    v30 = 2080;
    v31 = v20;
    v32 = 1024;
    v33 = a2;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: %s bus %d for Audio IO", buf, 0x2Cu);
    return 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Initialize(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v93 = *MEMORY[0x277D85DE8];
  if (*(this + 352))
  {
    return 0;
  }

  if (*(this + 240) == 1)
  {
    v4 = (*(*this + 144))(this, 1);
    if (v4)
    {
      v2 = v4;
      v5 = **(Phase::Logger::GetInstance(v4) + 544);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v6 = *(this + 43);
      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 147;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = "input";
      *&v92[8] = 2048;
      *&v92[10] = v6;
LABEL_31:
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not get %s HW format from platform@%p, initialize failed!", buf, 0x30u);
      return v2;
    }

    v7 = *(this + 32);
    if (!Phase::Controller::SystemAudioIO::IsValidFormat(v7, v8))
    {
      std::terminate();
    }

    [*(this + 43) bufferFrameSize];
    [(Phase::Controller::SystemAudioIO *)v7 channelCount];
    std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](this + 400);
    v9 = ExtendedAudioBufferList_Create();
    v10 = CA::AudioBuffersBase::AudioBuffersBase(this + 50, v9);
    *(this + 408) = 1;
    v11 = **(Phase::Logger::GetInstance(v10) + 544);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v12 = [(Phase::Controller::SystemAudioIO *)v7 streamDescription];
        v13 = *v12;
        v14 = *(v12 + 16);
        v85 = *(v12 + 32);
        v83 = v13;
        v84 = v14;
        CA::StreamDescription::AsString(&v83, v86, *&v14);
        if (v87 >= 0)
        {
          v15 = v86;
        }

        else
        {
          v15 = v86[0];
        }
      }

      else
      {
        v15 = "invalid";
      }

      v16 = [(Phase::Controller::SystemAudioIO *)v7 channelLayout];
      v17 = [v16 layout];
      if (v17)
      {
        v1 = [(Phase::Controller::SystemAudioIO *)v7 channelLayout];
        Phase::ChannelLayout::GetStringDescription([v1 layout], __p);
        if (v82 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }
      }

      else
      {
        v18 = "None";
      }

      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = v15;
      *&v92[8] = 2080;
      *&v92[10] = v18;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: input asbd <%s>, channel layout: \n%s", buf, 0x30u);
      if (v17)
      {
        if (v82 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v7 && v87 < 0)
      {
        operator delete(v86[0]);
      }
    }
  }

  if (*(this + 152) == 1)
  {
    v19 = (*(*this + 144))(this, 0);
    v2 = v19;
    if (v19)
    {
      v5 = **(Phase::Logger::GetInstance(v19) + 544);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v20 = *(this + 43);
      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 176;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = "output";
      *&v92[8] = 2048;
      *&v92[10] = v20;
      goto LABEL_31;
    }

    v21 = (*(*this + 88))(this);
    *(this + 45) = Phase::Controller::SystemAudioIO::GetRenderedChannels(v21, v22);
    if (v21)
    {
      v23 = [(Phase::Controller::SystemAudioIO *)v21 layout];
      v24 = v23[2];
      if (v24 <= 1)
      {
        v24 = 1;
      }

      std::vector<char>::vector[abi:ne200100](buf, 20 * v24 + 12);
      memcpy(*buf, v23, 20 * v23[2] + 12);
      *(this + 92) = Phase::ChannelLayout::GetNumActiveChannels(buf, *(this + 45));
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else
    {
      *(this + 92) = 0;
    }

    v25 = 0;
    *(this + 48) = *(this + 47);
    while (1)
    {
      v26 = (*(*this + 80))(this);
      if (v25 >= v26)
      {
        break;
      }

      if ((*(this + 45) >> v25))
      {
        v28 = *(this + 48);
        v27 = *(this + 49);
        if (v28 >= v27)
        {
          v30 = *(this + 47);
          v31 = v28 - v30;
          v32 = (v28 - v30) >> 2;
          v33 = v32 + 1;
          if ((v32 + 1) >> 62)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v34 = v27 - v30;
          if (v34 >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 376, v35);
          }

          v36 = (v28 - v30) >> 2;
          v37 = (4 * v32);
          v38 = (4 * v32 - 4 * v36);
          *v37 = v25;
          v29 = v37 + 1;
          memcpy(v38, v30, v31);
          v39 = *(this + 47);
          *(this + 47) = v38;
          *(this + 48) = v29;
          *(this + 49) = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *v28 = v25;
          v29 = v28 + 4;
        }

        *(this + 48) = v29;
      }

      ++v25;
    }

    if (*(this + 92) == (*(this + 48) - *(this + 47)) >> 2)
    {
      v40 = *(this + 21);
      IsValidFormat = Phase::Controller::SystemAudioIO::IsValidFormat(v40, v41);
      if (IsValidFormat)
      {
        v43 = *(this + 55);
        if (v43)
        {
          AudioStatisticsStartReporter(v43);
        }

        v44 = *(this + 53);
        if (!v44)
        {
          goto LABEL_78;
        }

        AudioIssueDetectorClientReset(v44);
        v45 = *(this + 53);
        BYTE3(v90) = 16;
        strcpy(buf, "phase-spatialout");
        v46 = [(Phase::Controller::SystemAudioIO *)v40 streamDescription];
        v47 = (*(*this + 112))(this);
        v48 = AudioIssueDetectorClientSetNodeFormatWithDirection(v45, buf, v46, v47);
        v49 = v48;
        if (SBYTE3(v90) < 0)
        {
          operator delete(*buf);
        }

        if (v49)
        {
          v50 = **(Phase::Logger::GetInstance(v48) + 544);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = [(Phase::Controller::SystemAudioIO *)v40 description];
            v52 = v51;
            v53 = [v51 UTF8String];
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 234;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v53;
            *&v92[8] = 1024;
            *&v92[10] = v49;
            _os_log_impl(&dword_23A302000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to set format for AID node with format %s, err = %d", buf, 0x2Cu);
          }
        }

        else
        {
          v44 = AudioIssueDetectorClientInitialize(*(this + 53));
          v58 = v44;
          if (!v44)
          {
            *(this + 432) = 1;
            goto LABEL_78;
          }

          v50 = **(Phase::Logger::GetInstance(v44) + 544);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v59 = [(Phase::Controller::SystemAudioIO *)v40 description];
            v60 = v59;
            v61 = [v59 UTF8String];
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 243;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v61;
            *&v92[8] = 1024;
            *&v92[10] = v58;
            _os_log_impl(&dword_23A302000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to initialize AID node with format %s, err = %d", buf, 0x2Cu);
          }
        }

LABEL_78:
        v62 = **(Phase::Logger::GetInstance(v44) + 544);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          if (v40)
          {
            v63 = [(Phase::Controller::SystemAudioIO *)v40 streamDescription];
            v64 = *v63;
            v65 = *(v63 + 16);
            v85 = *(v63 + 32);
            v83 = v64;
            v84 = v65;
            v66 = v79;
            CA::StreamDescription::AsString(&v83, v79, *&v65);
            if (v80 < 0)
            {
              v66 = v79[0];
            }
          }

          else
          {
            v66 = "invalid";
          }

          if (v21)
          {
            Phase::ChannelLayout::GetStringDescription([(Phase::Controller::SystemAudioIO *)v21 layout], v77);
            if (v78 >= 0)
            {
              v67 = v77;
            }

            else
            {
              v67 = v77[0];
            }

            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v66;
            *&v92[8] = 2080;
            *&v92[10] = v67;
            _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: output asbd <%s>, channel layout: \n%s", buf, 0x30u);
            if (v78 < 0)
            {
              operator delete(v77[0]);
            }
          }

          else
          {
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v66;
            *&v92[8] = 2080;
            *&v92[10] = "None";
            _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: output asbd <%s>, channel layout: \n%s", buf, 0x30u);
          }

          if (v40 && v80 < 0)
          {
            operator delete(v79[0]);
          }
        }

        goto LABEL_95;
      }

      v57 = **(Phase::Logger::GetInstance(IsValidFormat) + 544);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioIOPlatformAdapter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 207;
        v89 = 2048;
        v90 = this;
        _os_log_impl(&dword_23A302000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: output channel format not valid, initialize failed!", buf, 0x1Cu);
      }
    }

    else
    {
      v54 = **(Phase::Logger::GetInstance(v26) + 544);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = *(this + 92);
        v56 = (*(this + 48) - *(this + 47)) >> 2;
        *buf = 136316162;
        *&buf[4] = "AudioIOPlatformAdapter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 199;
        v89 = 2048;
        v90 = this;
        v91 = 1024;
        *v92 = v55;
        *&v92[4] = 2048;
        *&v92[6] = v56;
        _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: output channel count %d does not match the active channel count %zu, initialize failed!", buf, 0x2Cu);
      }
    }

    return 4294956428;
  }

LABEL_95:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e333_v48__0r__PHASEIOCycleInfo__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_Q_8Q16__PHASEIOStream__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_IB__AudioBufferList__24Q32__PHASEIOStream__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_IB__AudioBufferList__40l;
  aBlock[4] = this;
  v68 = _Block_copy(aBlock);
  v69 = [*(this + 43) registerIOBlock:v68];
  v70 = v69;
  if ((v69 & 1) == 0)
  {
    v71 = **(Phase::Logger::GetInstance(v69) + 544);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = *(this + 43);
      *buf = 136315906;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 274;
      v89 = 2048;
      v90 = this;
      v91 = 2048;
      *v92 = v72;
      _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not set IO block on platform@%p, initialize failed!", buf, 0x26u);
    }
  }

  *(this + 352) = v70;
  v73 = *(this + 43);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke_11;
  v75[3] = &__block_descriptor_40_e32_v16__0___PHASERouteChangeInfo__8l;
  v75[4] = this;
  [v73 registerRouteChangeNotification:v75];
  if (v70)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4294956433;
  }

  return v2;
}

void CA::StreamDescription::AsString(CA::StreamDescription *this@<X0>, uint64_t a2@<X8>, int8x8_t a3@<D1>)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  if (v5 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", a2, *(this + 7), *this);
    return;
  }

  if (v5 == 1819304813 && *(this + 5) == 1)
  {
    v6 = *(this + 6);
    if (v6 == *(this + 4))
    {
      v7 = *(this + 8);
      if (v6 >= v7 >> 3)
      {
        v8 = *(this + 7);
        if (v8)
        {
          v9 = *(this + 3);
          if ((v9 & 0x20) == 0)
          {
            if (v6 % v8)
            {
              goto LABEL_19;
            }

            v6 /= v8;
          }

          if ((v9 & 2) == 0 && 8 * v6 == v7)
          {
            if (v9)
            {
              if ((v9 & 0x1F84) == 0)
              {
                if (v6 == 4)
                {
                  v11 = 1;
                  goto LABEL_162;
                }

                if (v6 == 8)
                {
                  v11 = 4;
                  goto LABEL_162;
                }
              }
            }

            else if ((v9 & 4) != 0)
            {
              v10 = (v9 >> 7) & 0x3F;
              if (v10 == 24 && v6 == 4)
              {
                v11 = 3;
LABEL_162:
                if ((v9 & 0x20) != 0)
                {
                  v52 = ", deinterleaved";
                }

                else
                {
                  v52 = ", interleaved";
                }

                if (v8 == 1)
                {
                  v52 = "";
                }

                caulk::make_string("%2u ch, %6.0f Hz, %s%s", a2, v8, *this, *(&off_278B4EC88 + v11), v52);
                return;
              }

              if (!v10 && v6 == 4)
              {
                v11 = 5;
                goto LABEL_162;
              }

              if (!v10 && v6 == 2)
              {
                v11 = 2;
                goto LABEL_162;
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  v12 = *(this + 7);
  v13 = *this;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5 == 0;
  }

  if (v14 && v13 == 0.0)
  {
    caulk::make_string("%2u ch, %6.0f Hz", a2, 0, *this);
    return;
  }

  a3.i32[0] = bswap32(v5);
  v15 = vzip1_s8(a3, *&v13);
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x5F0000005FLL;
  v17.i64[1] = 0x5F0000005FLL;
  *(&v56.__r_.__value_.__s + 23) = 4;
  LODWORD(v56.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v17, vsraq_n_s32(v16, vshlq_n_s32(vmovl_u16(v15), 0x18uLL), 0x18uLL))), v15, 0x2E002E002E002ELL), *&v13).u32[0];
  v56.__r_.__value_.__s.__data_[4] = 0;
  caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v54, v12, *&v13, &v56, *(this + 3));
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v18 = *(this + 2);
  if (v18 <= 1819304812)
  {
    if (v18 != 1634492771 && v18 != 1634497332 && v18 != 1718378851)
    {
LABEL_70:
      caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v56, *(this + 8), *(this + 4), *(this + 5), *(this + 6));
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v54;
      }

      else
      {
        v30 = v54.__r_.__value_.__r.__words[0];
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v54.__r_.__value_.__l.__size_;
      }

LABEL_62:
      v32 = std::string::insert(&v56, 0, v30, size);
      v33 = *&v32->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v32->__r_.__value_.__l + 2);
      *a2 = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v34 = v56.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_45:
    v27 = *(this + 3);
    if ((v27 - 1) < 4 || !v27 && (v18 == 1634497332 || v18 == 1936487278 || v18 == 1936487267))
    {
      caulk::make_string("from %u-bit source, ", &v56, CA::StreamDescription::AsString(void)const::kSourceBits[v27]);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v56.__r_.__value_.__l.__size_;
      }

      std::string::append(&v54, v28, v29);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v54, "from UNKNOWN source bit depth, ", 0x1FuLL);
    }

    caulk::make_string("%u frames/packet", &v56, *(this + 5));
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v54;
    }

    else
    {
      v30 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v18 == 1936487278 || v18 == 1936487267)
  {
    goto LABEL_45;
  }

  if (v18 != 1819304813)
  {
    goto LABEL_70;
  }

  v19 = *(this + 3);
  v20 = *(this + 6);
  v21 = v19 & 0x20;
  v22 = "";
  if (!v20)
  {
    goto LABEL_37;
  }

  if ((v19 & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(this + 7);
    if (!v23)
    {
      v21 = 0;
LABEL_37:
      v24 = " signed";
      if ((v19 & 4) == 0)
      {
        v24 = " unsigned";
      }

      if (v19)
      {
        v25 = "float";
      }

      else
      {
        v25 = "integer";
      }

      if (v19)
      {
        v26 = "";
      }

      else
      {
        v26 = v24;
      }

LABEL_102:
      v56.__r_.__value_.__s.__data_[0] = 0;
      if (v21)
      {
        v39 = ", deinterleaved";
      }

      else
      {
        v39 = "";
      }

      v36 = "";
      v40 = "";
      goto LABEL_106;
    }
  }

  v35 = v20 / v23;
  if (v20 / v23 < 2)
  {
    v38 = " signed";
    if ((v19 & 4) == 0)
    {
      v38 = " unsigned";
    }

    if (v19)
    {
      v25 = "float";
    }

    else
    {
      v25 = "integer";
    }

    if (v19)
    {
      v26 = "";
    }

    else
    {
      v26 = v38;
    }

    if (v23 > v20)
    {
      goto LABEL_102;
    }

    v35 = 1;
    v36 = "";
  }

  else
  {
    if ((v19 & 2) != 0)
    {
      v36 = " big-endian";
    }

    else
    {
      v36 = " little-endian";
    }

    v37 = " unsigned";
    if ((v19 & 4) != 0)
    {
      v37 = " signed";
    }

    if (v19)
    {
      v25 = "float";
    }

    else
    {
      v25 = "integer";
    }

    if (v19)
    {
      v26 = "";
    }

    else
    {
      v26 = v37;
    }
  }

  v41 = *(this + 7);
  if ((v19 & 0x20) != 0)
  {
    v42 = 1;
  }

  else
  {
    v42 = *(this + 7);
  }

  if (v42)
  {
    v42 = 8 * (v20 / v42);
  }

  if (v42 == *(this + 8))
  {
    v56.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if ((v19 & 8) != 0)
    {
      v43 = "";
    }

    else
    {
      v43 = "un";
    }

    snprintf(&v56, 0x20uLL, "%spacked in %u bytes", v43, v35);
    v20 = *(this + 6);
    v19 = *(this + 3);
    if (!v20)
    {
      v44 = 0;
      v21 = *(this + 3) & 0x20;
      goto LABEL_128;
    }

    v41 = *(this + 7);
    v21 = *(this + 3) & 0x20;
  }

  if (v21)
  {
    v44 = 1;
  }

  else
  {
    v44 = v41;
  }

  if (v44)
  {
    v44 = 8 * (v20 / v44);
  }

LABEL_128:
  v45 = *(this + 8);
  v46 = " high-aligned";
  if ((v19 & 0x10) == 0)
  {
    v46 = " low-aligned";
  }

  if ((v45 & 7) == 0 && v44 == v45)
  {
    v40 = "";
  }

  else
  {
    v40 = v46;
  }

  if (v21)
  {
    v39 = ", deinterleaved";
  }

  else
  {
    v39 = "";
  }

  if (v56.__r_.__value_.__s.__data_[0])
  {
    v22 = ", ";
    goto LABEL_141;
  }

LABEL_106:
  if (*v40)
  {
    v22 = ", ";
  }

LABEL_141:
  if (((v19 >> 7) & 0x3F) != 0)
  {
    snprintf(__str, 0x14uLL, "%u.%u");
  }

  else
  {
    snprintf(__str, 0x14uLL, "%u");
  }

  caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v53, __str, v36, v26, v25, v22, &v56, v40, v39);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v54;
  }

  else
  {
    v48 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v54.__r_.__value_.__l.__size_;
  }

  v50 = std::string::insert(&v53, 0, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v50->__r_.__value_.__l + 2);
  *a2 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    v34 = v53.__r_.__value_.__r.__words[0];
LABEL_64:
    operator delete(v34);
  }

LABEL_65:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_23A327F0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AudioStatisticsStartReporter(uint64_t a1)
{
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global);
  }

  if (off_27DF97890)
  {
    v2 = off_27DF97890;

    v2(a1);
  }
}

void AudioIssueDetectorClientReset(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (off_27DF94D30)
  {
    v2 = off_27DF94D30;

    v2(a1);
  }
}

uint64_t AudioIssueDetectorClientSetNodeFormatWithDirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D28)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = off_27DF94D28;

  return v8(a1, a2, 2, 1, a3, a4);
}

uint64_t AudioIssueDetectorClientInitialize(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D10)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = off_27DF94D10;

  return v2(a1);
}

void ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v178 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  if (atomic_load((v11 + 144)))
  {
    v13 = 0;
    if (a3 && a4)
    {
      v13 = *(a4 + 64);
    }

    kdebug_trace();
    v14 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v14);
    if (caulk::deferred_logger::create_message(*(Instance + 1248), v14 + 88, 0))
    {
      v16 = _os_log_pack_fill();
      v17 = *(a2 + 72);
      *v16 = 134218240;
      *(v16 + 4) = v17;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v13;
      Phase::Logger::GetInstance(v16);
      caulk::concurrent::messenger::enqueue();
    }
  }

  else if (*(v11 + 240) == 1 && a4 && a3 && (*(v11 + 408) & 1) != 0)
  {
    if ((*(a2 + 120) & 3) != 0)
    {
      v18 = (a2 + 64);
      kdebug_trace();
      v19 = *(a4 + 72);
      v20 = *v19;
      if (v20 == 1)
      {
        __s[0] = 0.0;
        if (*(v11 + 304) && caulk::pooled_semaphore_mutex::try_lock((v11 + 312)))
        {
          v21 = *(v11 + 304);
          if (v21 && *v21)
          {
            Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v21, *(a4 + 72), __s);
          }

          caulk::pooled_semaphore_mutex::_unlock((v11 + 312));
        }

        Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(v11 + 8));
      }

      else
      {
        v22 = a6;
        v23 = *(v11 + 400);
        if (v20)
        {
          v24 = 0;
          v25 = v19 + 2;
          v26 = *(v23 + 64);
          v27 = *(a4 + 64);
          do
          {
            if (v27)
            {
              v28 = *&v25[4 * v24 + 2];
              v29 = v26;
              v30 = v27;
              do
              {
                v31 = *v28++;
                *v29 = v31;
                v29 += v20;
                --v30;
              }

              while (v30);
            }

            ++v24;
            ++v26;
          }

          while (v24 != v20);
        }

        __s[0] = 0.0;
        if (*(v11 + 304) && caulk::pooled_semaphore_mutex::try_lock((v11 + 312)))
        {
          v32 = *(v11 + 304);
          if (v32 && *v32)
          {
            Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v32, (v23 + 48), __s);
          }

          caulk::pooled_semaphore_mutex::_unlock((v11 + 312));
        }

        Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(v11 + 8));
        a6 = v22;
      }

      v33 = Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(v11 + 240, v18, *(a4 + 64), *(a4 + 72));
      if (*(Phase::Logger::GetInstance(v33) + 1632) == 1)
      {
        v34 = *(v11 + 336);
        Phase::Trace::PostSignalStatsTraceIfSignificant(0x161F, *(*(a4 + 72) + 16), *(a4 + 64), v34);
      }

      kdebug_trace();
    }

    else
    {
      *__s = *(a1 + 32);
      Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(v11, "audioio@%p: error: invalid input timestamp, flags 0x%x", __s, (a2 + 120));
    }
  }

  if (!a6)
  {
    return;
  }

  if (!a5)
  {
    return;
  }

  v35 = *(a1 + 32);
  if ((*(v35 + 152) & 1) == 0)
  {
    return;
  }

  v36 = *(a6 + 72);
  if (!v36)
  {
    v37 = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  v37 = *v36;
  if (!v37 || !*(v36 + 2))
  {
LABEL_52:
    strcpy(__s, "(%d): ");
    strcat(__s, "audioio@%p: invalid output ABL: %p / %d / %p");
    ShouldFire = Phase::Throttle::ShouldFire((v35 + 16), 0);
    if (ShouldFire)
    {
      v44 = snprintf(__str, 0x100uLL, __s, ShouldFire, v35, v36, v37, 0);
      v45 = **(Phase::Logger::GetInstance(v44) + 544);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v171 = "AudioIOBase.hpp";
        v172 = 1024;
        v173 = 133;
        v174 = 2080;
        v175 = __str;
        _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }
    }

    return;
  }

  if ((*(a2 + 184) & 3) == 0)
  {
    *__s = v35;
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(v35, "audioio@%p: error: invalid output timestamp, flags 0x%x", __s, (a2 + 184));
    return;
  }

  if ((*(v35 + 104) & 1) == 0)
  {
    v38 = *(a2 + 128);
    v39 = *(a2 + 144);
    v40 = *(a2 + 160);
    *(v35 + 88) = *(a2 + 176);
    *(v35 + 72) = v40;
    *(v35 + 56) = v39;
    *(v35 + 40) = v38;
    *(v35 + 104) = 1;
    LODWORD(v37) = *v36;
  }

  *__str = v36[2 * (v37 == 1)];
  if (atomic_load((v35 + 144)))
  {
    v42 = *(a6 + 64);
    *(a6 + 68) = 1;
    if (v37 == 1)
    {
      bzero(*(v36 + 2), v36[3]);
    }

    else
    {
      v47 = *__str;
      if (*__str)
      {
        v48 = (v36 + 4);
        do
        {
          bzero(*v48, *(v48 - 1));
          v48 += 2;
          --v47;
        }

        while (v47);
      }
    }

    kdebug_trace();
    v49 = _os_log_pack_size();
    v50 = Phase::Logger::GetInstance(v49);
    if (caulk::deferred_logger::create_message(*(v50 + 1248), v49 + 88, 0))
    {
      v51 = _os_log_pack_fill();
      v52 = *(a2 + 136);
      *v51 = 134218240;
      *(v51 + 4) = v52;
      *(v51 + 12) = 1024;
      *(v51 + 14) = v42;
      Phase::Logger::GetInstance(v51);
      caulk::concurrent::messenger::enqueue();
    }

    return;
  }

  v46 = *__str;
  if (*__str < *(v35 + 368))
  {
    *__s = v35;
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&,int &>(v35, __s, __str, (v35 + 368));
    return;
  }

  v165 = *__str;
  v166 = (a2 + 128);
  *(v35 + 416) = *(a6 + 64);
  if (*(v35 + 136) == 1)
  {
    v53 = mach_absolute_time();
    v54 = *(v35 + 128);
    v55 = (*(*v35 + 104))(v35);
    v56 = _os_log_pack_size();
    v57 = Phase::Logger::GetInstance(v56);
    if (caulk::deferred_logger::create_message(*(v57 + 1248), v56 + 88, 0))
    {
      v58 = _os_log_pack_fill();
      *v58 = 67109120;
      *(v58 + 1) = ((v53 - v54) * 0.0000000416666667 * v55);
      Phase::Logger::GetInstance(v58);
      caulk::concurrent::messenger::enqueue();
    }

    v46 = v165;
    if (*(v35 + 136) == 1)
    {
      *(v35 + 136) = 0;
    }
  }

  kdebug_trace();
  Phase::Controller::VoiceManager::Implementation::IOSetCurrentTimeStampAndFramesToRender(**(v35 + 8), v166, *(a6 + 64));
  Phase::Controller::VoiceManager::IOExecuteRealtimeActions(*(v35 + 8), v166);
  if (v37 != 1)
  {
    v62 = *(**(**(v35 + 8) + 696) + 184);
    v63 = *(v62 + 24);
    v64 = v46;
    if (v46 > v63)
    {
      v65 = &v36[4 * v63 + 4];
      v66 = *(v62 + 24);
      do
      {
        bzero(*v65, *(v65 - 1));
        ++v66;
        v65 += 2;
      }

      while (v46 > v66);
      v62 = *(**(**(v35 + 8) + 696) + 184);
      v64 = v63;
    }

    v167 = *(v62 + 72);
    v67 = *(a6 + 64);
    v169 = v64;
    v164 = a6;
    if (v64 != 2)
    {
      if (v64 == 1)
      {
        v68 = 0;
        v69 = *(v36 + 2);
        while (1)
        {
          v70 = *(v35 + 448);
          v71 = *(v70 + 16);
          v72 = *(v70 + 24);
          v73 = v72 - v71;
          if (v72 >= v71)
          {
            if (v72 > v71)
            {
              if (!v67)
              {
                goto LABEL_97;
              }

              goto LABEL_90;
            }

            if ((*(v70 + 32) & 1) == 0)
            {
              goto LABEL_97;
            }

            v72 = *(v70 + 8);
            v74 = v72 == 0;
          }

          else
          {
            v72 = *(v70 + 8);
            v74 = v73 + v72 == 0;
          }

          if (v74 || v67 == 0)
          {
LABEL_97:
            while (v67 >= v167)
            {
              v80 = *(**(v35 + 8) + 696);
              v81 = *v80;
              Phase::Controller::DVM_RT::Update(*(*v80 + 168));
              memcpy((v69 + 4 * v68), **(*(v81 + 184) + 40), 4 * v167);
              v67 -= v167;
              v68 += v167;
            }

            if (v67)
            {
              v82 = *(**(v35 + 8) + 696);
              v83 = *v82;
              Phase::Controller::DVM_RT::Update(*(*v82 + 168));
              v84 = *(*(v83 + 184) + 40);
              memcpy((v69 + 4 * v68), *v84, 4 * v67);
              v85 = v167 - v67;
              v86 = *(v35 + 448);
              v87 = *v84 + 4 * v67;
              goto LABEL_130;
            }

            goto LABEL_170;
          }

LABEL_90:
          v76 = v72 - v71;
          if (v76 >= v67)
          {
            v77 = v67;
          }

          else
          {
            v77 = v76;
          }

          memcpy((v69 + 4 * v68), (*v70 + 4 * v71), 4 * v77);
          v67 -= v77;
          v68 += v77;
          if (v77)
          {
            v78 = *(v35 + 448);
            v79 = *(v78 + 16) + v77;
            if (v79 == *(v78 + 8))
            {
              v79 = 0;
            }

            *(v78 + 16) = v79;
            *(v78 + 32) = 0;
          }
        }
      }

      v111 = 0;
      v112 = v64;
      v168 = v64;
      while (1)
      {
        v113 = *(v35 + 448);
        v114 = *(v113 + 16);
        v115 = *(v113 + 24);
        v116 = v115 >= v114;
        v117 = v115 - v114;
        if (v116)
        {
          if (v117 == 0 || !v116)
          {
            if (*(v113 + 32) != 1)
            {
              goto LABEL_161;
            }

            v117 = *(v113 + 8);
          }
        }

        else
        {
          v117 += *(v113 + 8);
        }

        if (v117)
        {
          v118 = v67 == 0;
        }

        else
        {
          v118 = 1;
        }

        if (v118)
        {
LABEL_161:
          while (v67 >= v167)
          {
            v131 = v111;
            v132 = *(**(v35 + 8) + 696);
            v133 = *v132;
            Phase::Controller::DVM_RT::Update(*(*v132 + 168));
            if (v169 >= 1)
            {
              v134 = *(*(v133 + 184) + 40);
              v136 = v168;
              v135 = (v36 + 4);
              do
              {
                v137 = *v135;
                v135 += 2;
                v138 = (v137 + 4 * v131);
                v139 = *v134++;
                memcpy(v138, v139, 4 * v167);
                --v136;
              }

              while (v136);
            }

            v67 -= v167;
            v111 = v131 + v167;
          }

          if (!v67)
          {
            goto LABEL_170;
          }

          v140 = *(**(v35 + 8) + 696);
          v141 = *v140;
          Phase::Controller::DVM_RT::Update(*(*v140 + 168));
          if (v169 >= 1)
          {
            v142 = 0;
            v143 = *(*(v141 + 184) + 40);
            v144 = v111;
            v145 = v67;
            v146 = 4 * v67;
            v147 = v167 - v67;
            v148 = (v36 + 4);
            v149 = v168;
            do
            {
              v150 = *v148;
              v148 += 2;
              memcpy((v150 + 4 * v144), *v143, v146);
              v151 = *v143++;
              Phase::DspLayer23::BasicReblocker<float>::Write(*(v35 + 448) + v142, &v151[4 * v145], v147);
              v142 += 40;
              --v149;
            }

            while (v149);
            goto LABEL_170;
          }

          goto LABEL_177;
        }

        if (v64 >= 1)
        {
          break;
        }

        LODWORD(v128) = 0;
LABEL_160:
        v67 -= v128;
        v111 += v128;
      }

      v119 = 0;
      v120 = v36 + 4;
      while (1)
      {
        v121 = *(v35 + 448);
        v122 = (v121 + v119);
        v123 = *(v121 + v119 + 16);
        v124 = *(v121 + v119 + 24);
        v125 = v124 - v123;
        if (v124 >= v123)
        {
          if (v124 > v123)
          {
            goto LABEL_150;
          }

          v127 = v121 + v119;
          if (*(v127 + 32) != 1)
          {
            v125 = 0;
            goto LABEL_150;
          }

          v126 = *(v127 + 8);
        }

        else
        {
          v126 = v122[1];
        }

        v125 = v126 - v123;
LABEL_150:
        if (v125 >= v67)
        {
          v128 = v67;
        }

        else
        {
          v128 = v125;
        }

        memcpy((*v120 + 4 * v111), (*v122 + 4 * v123), 4 * v128);
        if (v125)
        {
          v129 = *(v35 + 448) + v119;
          v130 = *(v129 + 16) + v128;
          if (v130 == *(v129 + 8))
          {
            v130 = 0;
          }

          *(v129 + 16) = v130;
          *(v129 + 32) = 0;
        }

        v119 += 40;
        v120 += 2;
        if (!--v112)
        {
          v64 = v169;
          v112 = v168;
          goto LABEL_160;
        }
      }
    }

    v88 = 0;
    while (1)
    {
      v89 = *(v35 + 448);
      v90 = *(v89 + 16);
      v91 = *(v89 + 24);
      v92 = v91 >= v90;
      v93 = v91 - v90;
      if (v92)
      {
        if (v93 == 0 || !v92)
        {
          if (*(v89 + 32) != 1)
          {
            goto LABEL_126;
          }

          v93 = *(v89 + 8);
        }

        v94 = v93 == 0;
      }

      else
      {
        v94 = v93 + *(v89 + 8) == 0;
      }

      if (v94 || v67 == 0)
      {
LABEL_126:
        while (v67 >= v167)
        {
          v105 = *(**(v35 + 8) + 696);
          v106 = *v105;
          Phase::Controller::DVM_RT::Update(*(*v105 + 168));
          v107 = *(*(v106 + 184) + 40);
          memcpy((*(v36 + 2) + 4 * v88), *v107, 4 * v167);
          memcpy((*(v36 + 4) + 4 * v88), v107[1], 4 * v167);
          v67 -= v167;
          v88 += v167;
        }

        if (v67)
        {
          v108 = *(**(v35 + 8) + 696);
          v109 = *v108;
          Phase::Controller::DVM_RT::Update(*(*v108 + 168));
          v110 = *(*(v109 + 184) + 40);
          memcpy((*(v36 + 2) + 4 * v88), *v110, 4 * v67);
          memcpy((*(v36 + 4) + 4 * v88), v110[1], 4 * v67);
          Phase::DspLayer23::BasicReblocker<float>::Write(*(v35 + 448), *v110 + 4 * v67, v167 - v67);
          v87 = v110[1] + 4 * v67;
          v86 = *(v35 + 448) + 40;
          v85 = v167 - v67;
LABEL_130:
          Phase::DspLayer23::BasicReblocker<float>::Write(v86, v87, v85);
        }

LABEL_170:
        if (v169 >= 1)
        {
          v152 = (v36 + 4);
          v153 = 1;
          a6 = v164;
          v154 = v165;
          do
          {
            __s[0] = 0.0;
            vDSP_rmsqv(*v152, 1, __s, *(v164 + 64));
            v155 = __s[0];
            if (v153 >= v169)
            {
              break;
            }

            ++v153;
            v152 += 2;
          }

          while (__s[0] < 0.000015849);
          *(v164 + 68) = __s[0] < 0.000015849;
          if (!v165 || v155 >= 0.000015849)
          {
            goto LABEL_180;
          }

LABEL_178:
          v156 = (v36 + 4);
          do
          {
            bzero(*v156, *(v156 - 1));
            v156 += 2;
            --v154;
          }

          while (v154);
          goto LABEL_180;
        }

LABEL_177:
        a6 = v164;
        *(v164 + 68) = 1;
        v154 = v165;
        if (!v165)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      v96 = *(v89 + 56);
      v97 = *(v89 + 64);
      v98 = v97 >= v96;
      v99 = v97 - v96;
      if (v98)
      {
        if (v99 != 0 && v98)
        {
          goto LABEL_117;
        }

        if (*(v89 + 72) != 1)
        {
          v99 = 0;
          goto LABEL_117;
        }
      }

      v99 = *(v89 + 48) - v96;
LABEL_117:
      v100 = (*(v89 + 40) + 4 * v96);
      if (v99 >= v67)
      {
        v101 = v67;
      }

      else
      {
        v101 = v99;
      }

      memcpy((*(v36 + 2) + 4 * v88), (*v89 + 4 * v90), 4 * v101);
      memcpy((*(v36 + 4) + 4 * v88), v100, 4 * v101);
      v67 -= v101;
      v88 += v101;
      if (v101)
      {
        v102 = *(v35 + 448);
        v103 = *(v102 + 16) + v101;
        if (v103 == *(v102 + 8))
        {
          v103 = 0;
        }

        *(v102 + 16) = v103;
        *(v102 + 32) = 0;
        v104 = *(v102 + 56) + v101;
        if (v104 == *(v102 + 48))
        {
          v104 = 0;
        }

        *(v102 + 56) = v104;
        *(v102 + 72) = 0;
      }
    }
  }

  bzero(*(v36 + 2), v36[3]);
  v59 = _os_log_pack_size();
  v60 = Phase::Logger::GetInstance(v59);
  if (caulk::deferred_logger::create_message(*(v60 + 1248), v59 + 88, 0))
  {
    v61 = _os_log_pack_fill();
    *v61 = 0;
    Phase::Logger::GetInstance(v61);
    caulk::concurrent::messenger::enqueue();
  }

  *(a6 + 68) = 1;
LABEL_180:
  *(v35 + 112) = mach_absolute_time();
  *(v35 + 120) = 1;
  Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(v35 + 152, v166, *(a6 + 64), v36);
  v159 = *(v35 + 424);
  if (v159)
  {
    if (*(v35 + 432) == 1)
    {
      v159 = AudioIssueDetectorClientAnalyzeBuffer(v159, v36, *(a6 + 64), v166, v157, v158);
      *buf = v159;
      if (v159)
      {
        *__s = v35;
        Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,int &>(v35, __s, buf);
      }
    }
  }

  if (*(Phase::Logger::GetInstance(v159) + 1632) == 1)
  {
    v160 = *(a6 + 64);
    v161 = *(v36 + 2);
    if (v160)
    {
      for (i = 0; i != v160; ++i)
      {
        if (fabsf(v161[i]) > 0.01)
        {
          break;
        }
      }
    }

    else
    {
      v160 = 0;
    }

    v163 = *(v35 + 336);
    Phase::Trace::PostSignalStatsTraceIfSignificant(0x1620, v161, v160, v163);
  }

  mach_absolute_time();
  __udivti3();
  kdebug_trace();
}

void ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke_11(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = **(Phase::Logger::GetInstance(v3) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(Phase::Logger *)v3 description];
    v6 = [v5 description];
    v28 = 136315906;
    v29 = "AudioIOPlatformAdapter.mm";
    v30 = 1024;
    v31 = 952;
    v32 = 2048;
    v33 = v2;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d audioio@%p: route change notification received with description \n%@", &v28, 0x26u);
  }

  v7 = [(Phase::Logger *)v3 description];
  v8 = [v7 objectForKeyedSubscript:@"beginning"];

  v9 = [(Phase::Logger *)v3 description];
  v10 = [v9 objectForKeyedSubscript:@"end"];

  v11 = [(Phase::Logger *)v3 description];
  if ([v11 count] != 2 || !v8 || !v10)
  {

LABEL_11:
    v20 = **(Phase::Logger::GetInstance(v14) + 544);
    v21 = v20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 960;
      v19 = "%25s:%-5d Invalid route change information received from PHASEPlatform";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 18;
LABEL_18:
      _os_log_impl(&dword_23A302000, v22, v23, v19, &v28, v24);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v12 = [v8 BOOLValue];
  v13 = [v10 BOOLValue];

  if (((v12 ^ v13) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = [v8 BOOLValue];
  if (v15)
  {
    v16 = **(Phase::Logger::GetInstance(v15) + 544);
    v17 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v2 + 40);
      v28 = 136315650;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 967;
      v32 = 2048;
      v33 = v18;
      v19 = "%25s:%-5d [AudioIOPlatformAdapter] Route change begin at timestamp %f";
LABEL_17:
      v22 = v16;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 28;
      goto LABEL_18;
    }
  }

  else
  {
    v25 = Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(**(v2 + 8));
    if (v25)
    {
      atomic_fetch_add((v2 + 144), 1u);
    }

    v16 = **(Phase::Logger::GetInstance(v25) + 544);
    v26 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v2 + 40);
      v28 = 136315650;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 979;
      v32 = 2048;
      v33 = v27;
      v19 = "%25s:%-5d [AudioIOPlatformAdapter] Route change end at timestamp %f";
      goto LABEL_17;
    }
  }

LABEL_19:
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Uninitialize(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 352) != 1)
  {
    return;
  }

  [*(this + 43) registerRouteChangeNotification:0];
  (*(*this + 56))(this);
  [*(this + 43) registerIOBlock:0];
  v2 = std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](this + 400);
  *(this + 352) = 0;
  v3 = *(this + 53);
  if (v3)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
    }

    if (off_27DF94D30)
    {
      v2 = off_27DF94D30(v3);
      v4 = v2;
      if (!v2)
      {
LABEL_11:
        *(this + 432) = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v4 = -1;
    }

    v5 = **(Phase::Logger::GetInstance(v2) + 544);
    v2 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v8 = 136315906;
      v9 = "AudioIOPlatformAdapter.mm";
      v10 = 1024;
      v11 = 307;
      v12 = 2048;
      v13 = this;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to reset AID, err = %d", &v8, 0x22u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v6 = *(this + 55);
  if (v6)
  {
    if (_MergedGlobals_12 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }

    if (off_27DF97898)
    {
      v2 = off_27DF97898(v6);
    }
  }

  v7 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AudioIOPlatformAdapter.mm";
    v10 = 1024;
    v11 = 319;
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: uninitialized", &v8, 0x1Cu);
  }
}

uint64_t std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    result = ExtendedAudioBufferList_Destroy();
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Start(id *this)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(this + 353) | 2) != 2)
  {
    return 0;
  }

  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 552) == 1)
  {
    v3 = **(Phase::Logger::GetInstance(Instance) + 544);
    v4 = Phase::Logger::GetInstance(v3);
    v5 = os_signpost_id_generate(**(v4 + 544));
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v3))
      {
        if (*(this + 240))
        {
          v7 = "in";
        }

        else
        {
          v7 = "-";
        }

        if (*(this + 152))
        {
          v8 = "out";
        }

        else
        {
          v8 = "-";
        }

        [this[31] sampleRate];
        v10 = v9;
        v11 = [this[31] channelCount];
        [this[20] sampleRate];
        v13 = v12;
        v14 = [this[20] channelCount];
        [this[32] sampleRate];
        v16 = v15;
        v17 = [this[32] channelCount];
        [this[21] sampleRate];
        v19 = v18;
        v20 = [this[21] channelCount];
        v27 = 136317442;
        v28 = v7;
        v29 = 2080;
        *v30 = v8;
        *&v30[8] = 2048;
        *&v30[10] = v10;
        *&v30[18] = 1024;
        *v31 = v11;
        *&v31[4] = 2048;
        v32 = v13;
        v33 = 1024;
        v34 = v14;
        v35 = 2048;
        v36 = v16;
        v37 = 1024;
        v38 = v17;
        v39 = 2048;
        v40 = v19;
        v41 = 1024;
        v42 = v20;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Start", "enable [%s, %s], hardware format [%.f/%d, %.f/%d], client format [%.f/%d, %.f/%d]", &v27, 0x56u);
      }
    }
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 1);
  v21 = [this[43] start];
  if (v21)
  {
    v22 = 0;
    *(this + 353) = 1;
  }

  else
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v22 = 4294956433;
  }

  v23 = **(Phase::Logger::GetInstance(v21) + 544);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(this + 240);
    v25 = *(this + 152);
    v27 = 136316418;
    v28 = "AudioIOPlatformAdapter.mm";
    v29 = 1024;
    *v30 = 351;
    *&v30[4] = 2048;
    *&v30[6] = this;
    *&v30[14] = 1024;
    *&v30[16] = v24;
    *v31 = 1024;
    *&v31[2] = v25;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = v22;
    _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: start IO (input %d, output %d), err %d", &v27, 0x2Eu);
  }

  return v22;
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Pause(id *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 353) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Pause", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[43] stop];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    *(this + 353) = 2;
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "AudioIOPlatformAdapter.mm";
      v11 = 1024;
      v12 = 367;
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: paused IO", &v9, 0x1Cu);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Stop(id *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 353) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Stop", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[43] stop];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }

    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "AudioIOPlatformAdapter.mm";
      v11 = 1024;
      v12 = 382;
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: stopped IO", &v9, 0x1Cu);
    }
  }

  *(this + 353) = 0;
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetHWFormat(id *this, int a2)
{
  v2 = [this[43] streamInfoForIndex:0 direction:a2 == 1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 format];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::UpdateFormats(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = this + 88 * a2;
  *(v4 + 39) = a2;
  v5 = (*(*this + 136))(this);
  v6 = *(v4 + 20);
  *(v4 + 20) = v5;

  objc_storeStrong(v4 + 21, *(v4 + 20));
  IsValidFormat = *(v4 + 20);
  if (IsValidFormat && (IsValidFormat = Phase::Controller::SystemAudioIO::IsValidFormat(IsValidFormat, v7), (IsValidFormat & 1) != 0))
  {
    v9 = *(v4 + 21);
    if (!v9)
    {
      std::terminate();
    }

    v10 = [v9 streamDescription];
    result = 0;
    v12 = *(v10 + 32);
    v13 = *(v10 + 16);
    *(v4 + 11) = *v10;
    *(v4 + 12) = v13;
    *(v4 + 26) = v12;
  }

  else
  {
    v14 = **(Phase::Logger::GetInstance(IsValidFormat) + 544);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "output";
      v17 = "AudioIOPlatformAdapter.mm";
      v18 = 1024;
      v19 = 406;
      v16 = 136315906;
      if (a2 == 1)
      {
        v15 = "input";
      }

      v20 = 2048;
      v21 = this;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: invalid %s HW format!", &v16, 0x26u);
    }

    return 4294956433;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::IsRunning(id *this)
{
  if (*(this + 353) == 1)
  {
    return [this[43] running];
  }

  else
  {
    return 0;
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetInputChannelCount(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:1];
  v2 = [v1 format];
  v3 = [v2 channelCount];

  return v3;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetOutputChannelCount(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:0];
  v2 = [v1 format];
  v3 = [v2 channelCount];

  return v3;
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetOutputChannelLayout(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:0];
  v2 = [v1 format];
  v4 = Phase::Controller::SystemAudioIO::GetOutputChannelLayout(v2, v3);

  return v4;
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetCurrentOutputRoute(id *this@<X0>, uint64_t a2@<X8>)
{
  v4 = [this[43] streamInfoForIndex:0 direction:0];
  Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(this, __p);
  Phase::Controller::AudioRouteDescription::AudioRouteDescription(a2, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23A32A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetLastFrameCount(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  if (*(this + 52) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(this + 52);
  }
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::CopyWorkGroup(id *this)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [this[43] workgroup];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(uint64_t a1, const char *a2, void *a3, unsigned int *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__s1, "(%d): ");
  strcat(__s1, a2);
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v8 = snprintf(__str, 0x100uLL, __s1, ShouldFire, *a3, *a4);
    v9 = **(Phase::Logger::GetInstance(v8) + 544);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AudioIOBase.hpp";
      v12 = 1024;
      v13 = 133;
      v14 = 2080;
      v15 = __str;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&,int &>(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "audioio@%p: error: mismatch in channel count, actual %u, expected %u");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v8 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3, *a4);
    v9 = **(Phase::Logger::GetInstance(v8) + 544);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AudioIOBase.hpp";
      v12 = 1024;
      v13 = 133;
      v14 = 2080;
      v15 = __str;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

BOOL Phase::DspLayer23::BasicReblocker<float>::Write(uint64_t a1, const void *a2, unint64_t a3)
{
  v5 = *(a1 + 16);
  for (i = *(a1 + 24); ; i = 0)
  {
    if (i > v5)
    {
LABEL_3:
      v7 = *(a1 + 8) - i;
      goto LABEL_8;
    }

    if (i >= v5)
    {
      if ((*(a1 + 32) & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = 0;
    }

    else
    {
      v7 = v5 - i;
    }

LABEL_8:
    if (v7 >= a3)
    {
      break;
    }

    v8 = i >= v5;
    v9 = i - v5;
    if (v8)
    {
      if (v9 == 0 || !v8)
      {
        if (*(a1 + 32) != 1)
        {
          goto LABEL_15;
        }

        v9 = *(a1 + 8);
      }
    }

    else
    {
      v9 += *(a1 + 8);
    }

    if (v9)
    {
      return v7 >= a3;
    }

LABEL_15:
    v5 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  memcpy((*a1 + 4 * i), a2, 4 * a3);
  if (a3)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24) + a3;
    if (v11 == *(a1 + 8))
    {
      v11 = 0;
    }

    *(a1 + 24) = v11;
    *(a1 + 32) = v11 == v10;
  }

  return v7 >= a3;
}

uint64_t AudioIssueDetectorClientAnalyzeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, const AudioBufferList *a4, unsigned int a5, const AudioTimeStamp *a6)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D38)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = off_27DF94D38;

  return v10(a1, 2, 0, a2, a3, a4);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,int &>(uint64_t a1, void *a2, unsigned int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "audioio@%p: failed to analyze buffer %d");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v6 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3);
    v7 = **(Phase::Logger::GetInstance(v6) + 544);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOBase.hpp";
      v10 = 1024;
      v11 = 133;
      v12 = 2080;
      v13 = __str;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    qword_27DF97870 = dlsym(result, "CreateSharedCAReportingClient");
    off_27DF97878 = dlsym(v1, "CAReportingClientCreateReporterID");
    qword_27DF97880 = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    qword_27DF97888 = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    off_27DF97890 = dlsym(v1, "CAReportingClientStartReporter");
    off_27DF97898 = dlsym(v1, "CAReportingClientStopReporter");
    off_27DF978A0 = dlsym(v1, "CAReportingClientSetAudioServiceType");
    qword_27DF978A8 = dlsym(v1, "CAReportingClientGetAudioServiceType");
    qword_27DF978B0 = dlsym(v1, "CAReportingClientSetConfiguration");
    qword_27DF978B8 = dlsym(v1, "CAReportingClientCopyConfiguration");
    qword_27DF978C0 = dlsym(v1, "CAReportingClientSendMessage");
    qword_27DF978C8 = dlsym(v1, "CAReportingClientSendSingleMessage");
    off_27DF978D0 = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    qword_27DF978D8 = result;
  }

  return result;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    off_27DF94D10 = dlsym(v1, "AudioIssueDetectorInitialize");
    off_27DF94D18 = dlsym(v1, "AudioIssueDetectorDispose");
    qword_27DF94D20 = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    off_27DF94D28 = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    off_27DF94D30 = dlsym(v1, "AudioIssueDetectorReset");
    off_27DF94D38 = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    qword_27DF94D40 = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    qword_27DF94D48 = dlsym(v1, "AudioIssueDetectorRemoveNode");
    qword_27DF94D50 = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    qword_27DF94D58 = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    qword_27DF94D60 = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    qword_27DF94D68 = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_27DF94D70 = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A32AB8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

void *CA::AudioBuffersBase::AudioBuffersBase(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare();
  return a1;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t Phase::Controller::AudioRouteDescription::AudioRouteDescription(uint64_t a1, void *a2, uint64_t *a3)
{
  *a1 = a2;
  *(a1 + 8) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1 + 16, *a3, a3[1], a3[1] - *a3);
  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_284D2F9F0[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t Phase::Throttle::ShouldFire(Phase::Throttle *this, double *a2)
{
  v4 = mach_absolute_time();
  v5 = *(this + 1);
  if (!v5)
  {
    *(this + 1) = v4;
    v5 = v4;
  }

  v6 = v4 - v5;
  if (a2)
  {
    *a2 = v6 * 0.0000000416666667;
  }

  if (v6 >= *this)
  {
    *(this + 1) = v4;
    result = (*(this + 4) + 1);
    *(this + 4) = 0;
  }

  else
  {
    result = 0;
    ++*(this + 4);
  }

  return result;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::AudioIOUnit(Phase::Controller::SystemAudioIO::AudioIOUnit *this, Phase::Controller::VoiceManager *a2, double a3)
{
  v4 = Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(this, a2);
  *v4 = &unk_284D2FA30;
  *(v4 + 42) = a3;
  *(v4 + 43) = 0;
  *(v4 + 44) = 0;
  *(v4 + 360) = 0;
  operator new();
}

void sub_23A32B098(_Unwind_Exception *a1)
{
  v3 = *(v1 + 376);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(v1);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<Phase::Controller::SystemAudioIO::Implementation>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::SystemAudioIO::Implementation::~Implementation(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::~AudioIOUnit(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = 0;
  *this = &unk_284D2FA30;
  do
  {
    free(*(*(this + 49) + v2));
    v2 += 40;
  }

  while (v2 != 480);
  free(*(this + 49));
  Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(this);
  v3 = *(this + 47);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(this);
}

{
  Phase::Controller::SystemAudioIO::AudioIOUnit::~AudioIOUnit(this);

  JUMPOUT(0x23EE864A0);
}

OpaqueAudioComponentInstance *Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    [v2 stopHardware];
    [*(this + 44) deallocateRenderResources];
    [*(this + 44) invalidateAudioUnit];
    v3 = *(this + 44);
    *(this + 44) = 0;
  }

  result = *(this + 43);
  if (result)
  {
    result = AudioComponentInstanceDispose(result);
    *(this + 43) = 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::EnableBus(Phase::Controller::SystemAudioIO::AudioIOUnit *this, unsigned int a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
  {
    std::terminate();
  }

  v6 = *(this + 44);
  if (v6)
  {
    v6 = [v6 renderResourcesAllocated];
    if (v6)
    {
      return 4294956447;
    }
  }

  *(this + 88 * a2 + 152) = a3;
  v8 = **(Phase::Logger::GetInstance(v6) + 544);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v10 = "Disabled";
    v12 = "AudioIOUnit.mm";
    v14 = 346;
    v15 = 2080;
    v11 = 136315906;
    v13 = 1024;
    if (a3)
    {
      v10 = "Enabled";
    }

    v16 = v10;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s bus %d for Audio IO.", &v11, 0x22u);
    return 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::Initialize(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    if (*(this + 43))
    {
      v4 = *(this + 44);
      if (v4)
      {
LABEL_6:
        [v4 setOutputEnabled:*(this + 152)];
        [*(this + 44) setInputEnabled:*(this + 240)];
        v5 = *(this + 44);
        v44 = 0;
        [v5 allocateRenderResourcesAndReturnError:&v44];
        v6 = v44;
        v7 = v6;
        if (v6)
        {
          v3 = [v6 code];
LABEL_8:

          return v3;
        }

        if (*(this + 152) == 1)
        {
          v12 = [*(this + 44) isOutputEnabled];
          if ((v12 & 1) == 0)
          {
            v21 = **(Phase::Logger::GetInstance(v12) + 544);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "AudioIOUnit.mm";
              *&buf[12] = 1024;
              *&buf[14] = 388;
              *&buf[18] = 2048;
              *&buf[20] = this;
              v22 = "%25s:%-5d audioio@%p: output is not enabled on the IOUnit!";
LABEL_32:
              _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x1Cu);
            }

LABEL_33:
            v3 = 4294956420;
            goto LABEL_8;
          }

          v3 = (*(*this + 144))(this, 0);
          if (v3)
          {
            goto LABEL_8;
          }

          Phase::Controller::SystemAudioIO::AudioIOUnit::SetOutputProvider(this);
        }

        if ((*(this + 240) & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = [*(this + 44) isInputEnabled];
        if (v13)
        {
          v3 = (*(*this + 144))(this, 1);
          if (v3)
          {
            goto LABEL_8;
          }

          Phase::Controller::SystemAudioIO::AudioIOUnit::SetInputHandler(this);
LABEL_23:
          v14 = (*(*this + 136))(this, 0);
          v15 = (*(*this + 88))(this);
          v16 = **(Phase::Logger::GetInstance(v15) + 544);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v14)
            {
              v17 = [v14 streamDescription];
              v18 = *v17;
              v19 = *(v17 + 16);
              v48 = *(v17 + 32);
              *buf = v18;
              *&buf[16] = v19;
              v20 = v42;
              CA::StreamDescription::AsString(buf, v42, *&v19);
              if (v43 < 0)
              {
                v20 = v42[0];
              }
            }

            else
            {
              v20 = "invalid";
            }

            if (v15)
            {
              Phase::ChannelLayout::GetStringDescription([(Phase::Logger *)v15 layout], __p);
              if (v41 >= 0)
              {
                v23 = __p;
              }

              else
              {
                v23 = __p[0];
              }

              *v45 = 136315906;
              *&v45[4] = "AudioIOUnit.mm";
              *&v45[12] = 1024;
              *&v45[14] = 421;
              *&v45[18] = 2080;
              *&v45[20] = v20;
              *&v45[28] = 2080;
              *&v45[30] = v23;
              _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initialized: output asbd <%s>, channel layout: \n%s", v45, 0x26u);
              if (v41 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              *v45 = 136315906;
              *&v45[4] = "AudioIOUnit.mm";
              *&v45[12] = 1024;
              *&v45[14] = 421;
              *&v45[18] = 2080;
              *&v45[20] = v20;
              *&v45[28] = 2080;
              *&v45[30] = "None";
              _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initialized: output asbd <%s>, channel layout: \n%s", v45, 0x26u);
            }

            if (v14 && v43 < 0)
            {
              operator delete(v42[0]);
            }
          }

          v24 = *(this + 46);
          v25 = v24[1];
          if (!v25 || (v26 = *v24, (v27 = std::__shared_weak_count::lock(v25)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v28 = v27;
          p_shared_weak_owners = &v27->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          v30 = [MEMORY[0x277CCAB98] defaultCenter];
          v31 = *MEMORY[0x277CB8210];
          v32 = v24[3];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3321888768;
          *&buf[16] = ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke;
          *&buf[24] = &__block_descriptor_48_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE_e24_v16__0__NSNotification_8l;
          v48 = v26;
          v49 = v28;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v33 = [v30 addObserverForName:v31 object:v32 queue:0 usingBlock:buf];
          v34 = v24[4];
          v24[4] = v33;

          v35 = [MEMORY[0x277CCAB98] defaultCenter];
          v36 = *MEMORY[0x277CB8068];
          v37 = v24[3];
          *v45 = MEMORY[0x277D85DD0];
          *&v45[8] = 3321888768;
          *&v45[16] = ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke_70;
          *&v45[24] = &__block_descriptor_48_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE_e24_v16__0__NSNotification_8l;
          *&v45[32] = v26;
          v46 = v28;
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v38 = [v35 addObserverForName:v36 object:v37 queue:0 usingBlock:v45];
          v39 = v24[5];
          v24[5] = v38;

          if (v46)
          {
            std::__shared_weak_count::__release_weak(v46);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_weak(v49);
          }

          std::__shared_weak_count::__release_weak(v28);

          v3 = 0;
          goto LABEL_8;
        }

        v21 = **(Phase::Logger::GetInstance(v13) + 544);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AudioIOUnit.mm";
          *&buf[12] = 1024;
          *&buf[14] = 406;
          *&buf[18] = 2048;
          *&buf[20] = this;
          v22 = "%25s:%-5d audioio@%p: input is not enabled on the IOUnit!";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    Next = AudioComponentFindNext(0, "uouacoirlppa");
    if (Next)
    {
      v3 = AudioComponentInstanceNew(Next, this + 43);
      if (v3)
      {
LABEL_13:
        Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(this);
        return v3;
      }

      v9 = [MEMORY[0x277CEFD18] auAudioUnitForAudioUnit:*(this + 43)];
      v10 = *(this + 44);
      *(this + 44) = v9;

      v4 = *(this + 44);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v3 = 4294956421;
    goto LABEL_13;
  }

  return 0;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::SetOutputProvider(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 isOutputEnabled] & 1) == 0)
  {
    goto LABEL_30;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = this + 40;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v3 = *this;
  v26[3] = *(this + 1);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = this + 152;
  v4 = (*(v3 + 88))(this);
  RenderedChannels = Phase::Controller::SystemAudioIO::GetRenderedChannels(v4, v5);
  if (v4)
  {
    v7 = [(Phase::Controller::SystemAudioIO *)v4 layout];
    v8 = v7[2];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    std::vector<char>::vector[abi:ne200100](&__dst, 20 * v8 + 12);
    memcpy(__dst, v7, 20 * v7[2] + 12);
    NumActiveChannels = Phase::ChannelLayout::GetNumActiveChannels(&__dst, RenderedChannels);
    if (__dst)
    {
      v23 = __dst;
      operator delete(__dst);
    }
  }

  else
  {
    NumActiveChannels = 0;
  }

  v10 = 0;
  __dst = 0;
  v23 = 0;
  v24 = 0;
  while (v10 < (*(*this + 80))(this))
  {
    if ((RenderedChannels >> v10))
    {
      v11 = v23;
      if (v23 >= v24)
      {
        v13 = __dst;
        v14 = v23 - __dst;
        v15 = (v23 - __dst) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v17 = v24 - __dst;
        if ((v24 - __dst) >> 1 > v16)
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__dst, v18);
        }

        *(4 * v15) = v10;
        v12 = 4 * v15 + 4;
        memcpy(0, v13, v14);
        v19 = __dst;
        __dst = 0;
        v23 = v12;
        v24 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v23 = v10;
        v12 = (v11 + 4);
      }

      v23 = v12;
    }

    ++v10;
  }

  if (NumActiveChannels != (v23 - __dst) >> 2)
  {
LABEL_30:
    std::terminate();
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit17SetOutputProviderEv_block_invoke;
  v20[3] = &unk_278B4ECE0;
  v21 = NumActiveChannels;
  v20[4] = v27;
  v20[5] = v26;
  v20[7] = this;
  v20[8] = RenderedChannels;
  v20[6] = v25;
  [*(this + 44) setOutputProvider:v20];
  if (__dst)
  {
    v23 = __dst;
    operator delete(__dst);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
}

void sub_23A32BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 120), 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::SetInputHandler(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 isInputEnabled] & 1) == 0 || (v9[0] = 0, v9[1] = v9, v9[2] = 0x2020000000, v9[3] = this + 240, v8[0] = 0, v8[1] = v8, v8[2] = 0x2020000000, v8[3] = *(this + 1), (v3 = *(this + 73)) == 0) || (v4 = *(this + 72)) == 0)
  {
    std::terminate();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit15SetInputHandlerEv_block_invoke;
  v5[3] = &unk_278B4ED08;
  v6 = v3;
  v7 = v4;
  v5[4] = v9;
  v5[5] = v8;
  v5[6] = this;
  [*(this + 44) setInputHandler:v5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

void sub_23A32BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Uninitialize(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      v3 = *(this + 46);
      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 removeObserver:*(v3 + 32)];

      v5 = *(v3 + 32);
      *(v3 + 32) = 0;

      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      [v6 removeObserver:*(v3 + 40)];

      v7 = *(v3 + 40);
      *(v3 + 40) = 0;

      [*(this + 44) stopHardware];
      v2 = [*(this + 44) deallocateRenderResources];
    }
  }

  v8 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AudioIOUnit.mm";
    v11 = 1024;
    v12 = 438;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Uninitialized audio IO", &v9, 0x12u);
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::Start(id *this)
{
  v99[19] = *MEMORY[0x277D85DE8];
  if ((*(this + 360) | 2) != 2)
  {
    return 0;
  }

  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 552) == 1)
  {
    v3 = **(Phase::Logger::GetInstance(Instance) + 544);
    v4 = Phase::Logger::GetInstance(v3);
    v5 = os_signpost_id_generate(**(v4 + 544));
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v3))
      {
        if (*(this + 240))
        {
          v7 = "in";
        }

        else
        {
          v7 = "-";
        }

        if (*(this + 152))
        {
          v8 = "out";
        }

        else
        {
          v8 = "-";
        }

        [this[31] sampleRate];
        v10 = v9;
        v11 = [this[31] channelCount];
        [this[20] sampleRate];
        v13 = v12;
        v14 = [this[20] channelCount];
        [this[32] sampleRate];
        v16 = v15;
        v17 = [this[32] channelCount];
        [this[21] sampleRate];
        v19 = v18;
        v20 = [this[21] channelCount];
        *buf = 136317442;
        *&buf[4] = v7;
        v83 = 2080;
        *v84 = v8;
        *&v84[8] = 2048;
        *&v84[10] = v10;
        LOWORD(v85.__locale_) = 1024;
        *(&v85.__locale_ + 2) = v11;
        HIWORD(v85.__locale_) = 2048;
        v86 = v13;
        v87 = 1024;
        v88 = v14;
        v89 = 2048;
        v90 = v16;
        LOWORD(__src) = 1024;
        *(&__src + 2) = v17;
        HIWORD(__src) = 2048;
        v92 = v19;
        v93 = 1024;
        v94 = v20;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Start", "enable [%s, %s], hardware format [%.f/%d, %.f/%d], client format [%.f/%d, %.f/%d]", buf, 0x56u);
      }
    }
  }

  v21 = this[44];
  if (v21 && ([v21 renderResourcesAllocated] & 1) != 0 || (v22 = (*(*this + 3))(this), !v22))
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 1);
    v23 = this[44];
    v71 = 0;
    [v23 startHardwareAndReturnError:&v71];
    v24 = v71;
    v25 = [v24 code];
    v22 = v25;
    if (v25)
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
      v27 = **(Phase::Logger::GetInstance(v26) + 544);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [(Phase::Logger *)v26 description];
        v29 = v28;
        v30 = [v28 UTF8String];
        *buf = 136315650;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 474;
        *&v84[4] = 2080;
        *&v84[6] = v30;
        _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Error starting Audio IO. Err = %s", buf, 0x1Cu);
      }

LABEL_62:
      return v22;
    }

    if (*(*(**(*this[1] + 696) + 184) + 24) >= 1)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = this[49] + v31;
        *(v33 + 2) = 0;
        *(v33 + 3) = 0;
        v33[32] = 0;
        bzero(*v33, 4 * *(v33 + 1));
        ++v32;
        v31 += 40;
      }

      while (v32 < *(*(**(*this[1] + 696) + 184) + 24));
    }

    *(this + 360) = 1;
    v26 = **(Phase::Logger::GetInstance(v25) + 544);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v34 = this[46];
    v35 = [MEMORY[0x277CB83F8] sharedInstance];
    v36 = [v35 currentRoute];
    v37 = [v36 outputs];

    v38 = [v37 count];
    v39 = v38;
    if (!v38)
    {
      v63 = **(Phase::Logger::GetInstance(v38) + 544);
      v64 = v63;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 167;
        _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d New Audio session route has no outputs.", buf, 0x12u);
      }

      strcpy(v70, "Invalid AVAudioSession");
      HIBYTE(v70[2]) = 22;
      v65 = v70;
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v40 = **(Phase::Logger::GetInstance(v38) + 544);
      v41 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 176;
        *&v84[4] = 1024;
        *&v84[6] = v39;
        _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d AVAudioSession route has more than 1 output; using the first of %i outputs.", buf, 0x18u);
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], "AVAudioSession ", 15);
    v43 = [v37 objectAtIndexedSubscript:0];
    v44 = [v43 portName];
    v45 = v44;
    v46 = [v44 UTF8String];
    v47 = strlen(v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v46, v47);

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], " of type ", 9);
    v49 = [v37 objectAtIndexedSubscript:0];
    v50 = [v49 portType];
    v51 = v50;
    v52 = [v50 UTF8String];
    v53 = strlen(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v52, v53);

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], ", with ", 7);
    v55 = [v37 objectAtIndexedSubscript:0];
    v56 = [v55 channels];
    v57 = MEMORY[0x23EE86130](v54, [v56 count]);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " channels", 9);
    std::ios_base::getloc((v58 + *(*v58 - 24)));
    v59 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
    (v59->__vftable[2].~facet_0)(v59, 10);
    std::locale::~locale(&v73);
    std::ostream::put();
    std::ostream::flush();

    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(v34[2], __p);
    Phase::ChannelLayout::GetStringDescription(__p, &v73);
    if ((v75 & 0x80u) == 0)
    {
      locale = &v73;
    }

    else
    {
      locale = v73.__locale_;
    }

    if ((v75 & 0x80u) == 0)
    {
      v61 = v75;
    }

    else
    {
      v61 = v74;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], locale, v61);
    if (v75 < 0)
    {
      operator delete(v73.__locale_);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v98 & 0x10) != 0)
    {
      v66 = v97;
      if (v97 < v92)
      {
        v97 = v92;
        v66 = v92;
      }

      v67 = __src;
    }

    else
    {
      if ((v98 & 8) == 0)
      {
        v62 = 0;
        HIBYTE(v70[2]) = 0;
LABEL_55:
        *(v70 + v62) = 0;
        *buf = *MEMORY[0x277D82818];
        v68 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v84[2] = v68;
        *&v84[10] = MEMORY[0x277D82878] + 16;
        if (v96 < 0)
        {
          operator delete(v95);
        }

        *&v84[10] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v85);
        std::iostream::~basic_iostream();
        MEMORY[0x23EE863B0](v99);
        if (SHIBYTE(v70[2]) >= 0)
        {
          v65 = v70;
        }

        else
        {
          v65 = v70[0];
        }

LABEL_60:

        *v76 = 136315650;
        v77 = "AudioIOUnit.mm";
        v78 = 1024;
        v79 = 486;
        v80 = 2080;
        v81 = v65;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started Audio IO on output: %s", v76, 0x1Cu);
        if (SHIBYTE(v70[2]) < 0)
        {
          operator delete(v70[0]);
        }

        goto LABEL_62;
      }

      v67 = v86;
      v66 = v90;
    }

    v62 = v66 - v67;
    if (v66 - v67 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v62 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v70[2]) = v66 - v67;
    if (v62)
    {
      memmove(v70, v67, v62);
    }

    goto LABEL_55;
  }

  return v22;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Pause(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 360) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Pause", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[44] stopHardware];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    *(this + 360) = 2;
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AudioIOUnit.mm";
      v11 = 1024;
      v12 = 509;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Paused Audio IO.", &v9, 0x12u);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Stop(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 360) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Stop", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[44] stopHardware];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }
  }

  *(this + 360) = 0;
  Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
  v8 = **(Phase::Logger::GetInstance(v7) + 544);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AudioIOUnit.mm";
    v11 = 1024;
    v12 = 528;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped Audio IO.", &v9, 0x12u);
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetInputChannelCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 1);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 channelCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetOutputChannelCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 channelCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::GetOutputChannelLayout(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 0);
  v5 = Phase::Controller::SystemAudioIO::GetOutputChannelLayout(v3, v4);

  return v5;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::GetCurrentOutputRoute(Phase::Controller::SystemAudioIO::AudioIOUnit *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 46);
  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = [v4 currentRoute];
  v6 = [v5 outputs];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(*(v3 + 16), &__p);
    Phase::Controller::AudioRouteDescription::AudioRouteDescription(a2, v7, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(*(v3 + 16), &__p);
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2 + 16, __p, v9, v9 - __p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }
}

void sub_23A32D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Phase::Controller::SystemAudioIO::AudioIOUnit::GetSampleRate(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2 && (v2 = [(Phase::Logger *)v2 renderResourcesAllocated], (v2 & 1) != 0))
  {
    v3 = [*(this + 44) outputBusses];
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 format];
    [v5 sampleRate];
    v7 = v6;
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(v2) + 544);
    v7 = 48000.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "AudioIOUnit.mm";
      v12 = 1024;
      v13 = 567;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting sample rate from uninitialized AudioIOUnit - returning default value of 48000", &v10, 0x12u);
    }
  }

  return v7;
}

void sub_23A32D358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetMaximumFramesToRender(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      return [*(this + 44) maximumFramesToRender];
    }
  }

  v4 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AudioIOUnit.mm";
    v7 = 1024;
    v8 = 578;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting maximum frames to rernder from uninitialized AudioIOUnit - returning default value of 4096", &v5, 0x12u);
  }

  return 4096;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetLastFrameCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      return *(this + 48);
    }
  }

  v4 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AudioIOUnit.mm";
    v7 = 1024;
    v8 = 589;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting maximum frames to rernder from uninitialized AudioIOUnit - returning default value of 4096", &v5, 0x12u);
  }

  return 4096;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::GetHWFormat(Phase::Controller::SystemAudioIO::AudioIOUnit *this, unsigned int a2)
{
  v3 = *(this + 44);
  if (a2 == 1)
  {
    [v3 inputBusses];
  }

  else
  {
    [v3 outputBusses];
  }
  v4 = ;
  if ([v4 count] <= a2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:?];
    v6 = [v5 format];
  }

  return v6;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::UpdateFormats(Phase::Controller::SystemAudioIO::AudioIOUnit *this, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(this + 44);
  if (a2)
  {
    [v4 setInputEnabled:1];
  }

  else
  {
    [v4 setOutputEnabled:1];
  }

  v5 = this + 88 * a2;
  *(v5 + 39) = a2;
  v6 = (*(*this + 136))(this, a2);
  v7 = *(v5 + 20);
  *(v5 + 20) = v6;

  if (!*(v5 + 20))
  {
    goto LABEL_26;
  }

  v8 = *(v5 + 21);
  *(v5 + 21) = 0;

  v9 = [*(v5 + 20) channelLayout];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CB83A8]);
    v11 = *(this + 42);
    v12 = [*(v5 + 20) channelLayout];
    v13 = [v10 initWithCommonFormat:1 sampleRate:1 interleaved:v12 channelLayout:v11];
    v14 = *(v5 + 21);
    *(v5 + 21) = v13;
  }

  else
  {
    if ([*(v5 + 20) channelCount] >= 3)
    {
      goto LABEL_26;
    }

    v15 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:objc_msgSend(*(v5 + 20) channels:"channelCount") interleaved:1, *(this + 42)];
    v12 = *(v5 + 21);
    *(v5 + 21) = v15;
  }

  if (!*(v5 + 21))
  {
LABEL_26:
    std::terminate();
  }

  v17 = **(Phase::Logger::GetInstance(v16) + 544);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(v5 + 21) channelCount];
    v19 = [*(v5 + 21) channelLayout];
    Phase::ChannelLayout::GetStringFromLayoutTag([v19 layoutTag], __p);
    if (v32 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "AudioIOUnit.mm";
    v34 = 1024;
    v35 = 744;
    v36 = 1024;
    v37 = v18;
    v38 = 2080;
    v39 = v20;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hardware output: %i channels with layout %s", buf, 0x22u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v21 = *(v5 + 21);
  v22 = *(this + 44);
  if (a2 == 1)
  {
    [v22 outputBusses];
  }

  else
  {
    [v22 inputBusses];
  }
  v23 = ;
  if ([v23 count] <= a2)
  {

    return 4294956417;
  }

  else
  {
    v24 = [v23 objectAtIndexedSubscript:?];
    *buf = 0;
    [v24 setFormat:v21 error:buf];
    v25 = *buf;

    v26 = [v25 code];
    if (!v26)
    {
      v27 = [*(v5 + 21) streamDescription];
      v26 = 0;
      v28 = *v27;
      v29 = *(v27 + 16);
      *(v5 + 26) = *(v27 + 32);
      *(v5 + 11) = v28;
      *(v5 + 12) = v29;
    }
  }

  return v26;
}

uint64_t ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit17SetOutputProviderEv_block_invoke(uint64_t a1, _DWORD *a2, __int128 *a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v159 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 56);
  if (!a6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v8 = *a6;
  if (!v8 || !*(a6 + 2))
  {
LABEL_12:
    strcpy(&v158, "(%d): ");
    strcat(&v158, "invalid IO buffer: %p / %d / %p");
    ShouldFire = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!ShouldFire)
    {
      return 4294956433;
    }

    v26 = snprintf(v157, 0x100uLL, &v158, ShouldFire, a6, v8, 0);
    v27 = **(Phase::Logger::GetInstance(v26) + 544);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 4294956433;
    }

LABEL_14:
    v151 = 136315650;
    v152 = "AudioIOBase.hpp";
    v153 = 1024;
    v154 = 133;
    v155 = 2080;
    v156 = v157;
    _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v151, 0x1Cu);
    return 4294956433;
  }

  if (v8 != 1)
  {
    strcpy(&v158, "(%d): ");
    strcat(&v158, "expected interleaved IO buffer, got deinterleaved %d buffers");
    v28 = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!v28)
    {
      return 4294956433;
    }

    v29 = snprintf(v157, 0x100uLL, &v158, v28, v8);
    goto LABEL_21;
  }

  if ((*(a3 + 56) & 3) == 0)
  {
    strcpy(&v158, "(%d): ");
    strcat(&v158, "did not receive a valid IO sample/host time");
    v30 = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!v30)
    {
      return 4294956433;
    }

    v29 = snprintf(v157, 0x100uLL, &v158, v30);
LABEL_21:
    v27 = **(Phase::Logger::GetInstance(v29) + 544);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 4294956433;
    }

    goto LABEL_14;
  }

  v11 = a1;
  v12 = *(*(*(a1 + 32) + 8) + 24);
  if ((*(v12 + 64) & 1) == 0)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[3];
    *(v12 + 32) = a3[2];
    *(v12 + 48) = v15;
    *v12 = v13;
    *(v12 + 16) = v14;
    *(v12 + 64) = 1;
  }

  v16 = a4;
  *(v7 + 384) = a4;
  v17 = *a3;
  v157[0] = a6[2];
  if (atomic_load((v7 + 144)))
  {
    *a2 |= 0x10u;
    bzero(*(a6 + 2), a6[3]);
    kdebug_trace();
    v19 = a3;
    v20 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v20);
    result = caulk::deferred_logger::create_message(*(Instance + 1248), v20 + 88, 0);
    if (result)
    {
      v23 = _os_log_pack_fill();
      v24 = *(v19 + 1);
      *v23 = 134218240;
      *(v23 + 4) = v24;
      *(v23 + 12) = 1024;
      *(v23 + 14) = a4;
      Phase::Logger::GetInstance(v23);
      caulk::concurrent::messenger::enqueue();
      return 0;
    }

    return result;
  }

  v31 = v157[0];
  if (v157[0] < *(a1 + 72))
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<int const&,unsigned int const&>(v7, (a1 + 72), v157);
    return 4294956433;
  }

  v32 = *(v7 + 136);
  v149 = v7;
  v142 = a2;
  v143 = a4;
  if (v32 == 1)
  {
    v33 = mach_absolute_time();
    v34 = *(v7 + 128);
    v35 = (*(*v7 + 104))(v7);
    v36 = _os_log_pack_size();
    v37 = Phase::Logger::GetInstance(v36);
    if (caulk::deferred_logger::create_message(*(v37 + 1248), v36 + 88, 0))
    {
      v38 = _os_log_pack_fill();
      *v38 = 67109120;
      *(v38 + 1) = ((v33 - v34) * 0.0000000416666667 * v35);
      Phase::Logger::GetInstance(v38);
      caulk::concurrent::messenger::enqueue();
    }

    v7 = v149;
    v16 = v143;
    if (*(v149 + 136) == 1)
    {
      *(v149 + 136) = 0;
    }
  }

  kdebug_trace();
  Phase::Controller::VoiceManager::Implementation::IOSetCurrentTimeStampAndFramesToRender(**(*(v11[5] + 8) + 24), a3, v16);
  v39 = *(*(v11[5] + 8) + 24);
  v145 = a4;
  v40 = Phase::Controller::VoiceManager::IOExecuteRealtimeActions(v39, a3);
  v41 = *(a6 + 2);
  v150 = *(*(**(**(v7 + 8) + 696) + 184) + 72);
  v144 = a3;
  if (v31 == 2)
  {
    v59 = 0;
    v60 = v145;
    while (1)
    {
      v61 = *(v7 + 392);
      v62 = *(v61 + 16);
      v63 = *(v61 + 24);
      v64 = v63 >= v62;
      v65 = v63 - v62;
      if (v64)
      {
        v67 = v150;
        if (v65 == 0 || !v64)
        {
          if (*(v61 + 32) != 1)
          {
            goto LABEL_127;
          }

          v65 = *(v61 + 8);
        }

        if (v65)
        {
          v68 = v60 == 0;
        }

        else
        {
          v68 = 1;
        }

        if (v68)
        {
LABEL_127:
          if (v60 >= v67)
          {
            v107 = 2 * v59;
            v108 = 2 * v67;
            do
            {
              v109 = *(**(*(v11[5] + 8) + 24) + 696);
              v110 = *v109;
              Phase::Controller::DVM_RT::Update(*(*v109 + 168));
              vDSP_ztoc(*(*(v110 + 184) + 40), 1, (v41 + 4 * v107), 2, v150);
              v60 -= v150;
              v59 += v150;
              v107 += v108;
            }

            while (v60 >= v150);
          }

          if (v60)
          {
            v111 = *(**(*(v11[5] + 8) + 24) + 696);
            v112 = *v111;
            Phase::Controller::DVM_RT::Update(*(*v111 + 168));
            v113 = *(*(v112 + 184) + 40);
            vDSP_ztoc(v113, 1, (v41 + 4 * (2 * v59)), 2, v60);
            Phase::DspLayer23::BasicReblocker<float>::Write(*(v149 + 392), &v113->realp[v60], v150 - v60);
            Phase::DspLayer23::BasicReblocker<float>::Write(*(v149 + 392) + 40, &v113->imagp[v60], v150 - v60);
          }

          goto LABEL_163;
        }
      }

      else
      {
        if (v65 + *(v61 + 8))
        {
          v66 = v60 == 0;
        }

        else
        {
          v66 = 1;
        }

        v67 = v150;
        if (v66)
        {
          goto LABEL_127;
        }
      }

      v158.realp = 0;
      v158.imagp = 0;
      v158.realp = (*v61 + 4 * v62);
      v69 = *(v61 + 56);
      v70 = *(v61 + 64);
      v71 = v70 >= v69;
      v72 = v70 - v69;
      if (!v71)
      {
        break;
      }

      if (v72 == 0 || !v71)
      {
        if (*(v61 + 72) == 1)
        {
          break;
        }

        v72 = 0;
      }

LABEL_75:
      v158.imagp = (*(v61 + 40) + 4 * v69);
      if (v72 >= v60)
      {
        v73 = v60;
      }

      else
      {
        v73 = v72;
      }

      vDSP_ztoc(&v158, 1, (v41 + 4 * (2 * v59)), 2, v73);
      v7 = v149;
      if (v73)
      {
        v74 = *(v149 + 392);
        v75 = *(v74 + 16) + v73;
        if (v75 == *(v74 + 8))
        {
          v75 = 0;
        }

        *(v74 + 16) = v75;
        *(v74 + 32) = 0;
        v76 = *(v74 + 56) + v73;
        if (v76 == *(v74 + 48))
        {
          v76 = 0;
        }

        *(v74 + 56) = v76;
        *(v74 + 72) = 0;
      }

      v60 -= v73;
      v59 += v73;
    }

    v72 = *(v61 + 48) - v69;
    goto LABEL_75;
  }

  if (v31 == 1)
  {
    v42 = 0;
    v43 = v145;
    while (1)
    {
      v44 = *(v7 + 392);
      v45 = *(v44 + 16);
      v46 = *(v44 + 24);
      v47 = v46 - v45;
      if (v46 >= v45)
      {
        if (v46 > v45)
        {
          if (!v43)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if ((*(v44 + 32) & 1) == 0)
        {
          goto LABEL_51;
        }

        v46 = *(v44 + 8);
        v48 = v46 == 0;
      }

      else
      {
        v46 = *(v44 + 8);
        v48 = v47 + v46 == 0;
      }

      if (v48 || v43 == 0)
      {
LABEL_51:
        while (v43 >= v150)
        {
          v54 = *(**(*(v11[5] + 8) + 24) + 696);
          v55 = *v54;
          Phase::Controller::DVM_RT::Update(*(*v54 + 168));
          memcpy((v41 + 4 * v42), **(*(v55 + 184) + 40), 4 * v150);
          v43 -= v150;
          v42 += v150;
        }

        if (v43)
        {
          v56 = *(**(*(v11[5] + 8) + 24) + 696);
          v57 = *v56;
          Phase::Controller::DVM_RT::Update(*(*v56 + 168));
          v58 = *(*(v57 + 184) + 40);
          memcpy((v41 + 4 * v42), *v58, 4 * v43);
          Phase::DspLayer23::BasicReblocker<float>::Write(*(v149 + 392), *v58 + 4 * v43, v150 - v43);
        }

        goto LABEL_163;
      }

LABEL_44:
      v50 = v46 - v45;
      if (v50 >= v43)
      {
        v51 = v43;
      }

      else
      {
        v51 = v50;
      }

      memcpy((v41 + 4 * v42), (*v44 + 4 * v45), 4 * v51);
      v43 -= v51;
      v42 += v51;
      if (v51)
      {
        v52 = *(v7 + 392);
        v53 = *(v52 + 16) + v51;
        if (v53 == *(v52 + 8))
        {
          v53 = 0;
        }

        *(v52 + 16) = v53;
        *(v52 + 32) = 0;
      }
    }
  }

  v77 = 0;
  v78 = *(*(**(**(*(v11[5] + 8) + 24) + 696) + 184) + 24);
  v79 = *(v7 + 392);
  v80 = *(v79 + 24);
  v147 = v11;
  v148 = v80;
  v146 = 8 * v31;
  v81 = v145;
LABEL_86:
  while (2)
  {
    v82 = *(v79 + 16);
    v83 = v148 >= v82;
    v84 = v148 - v82;
    if (v83)
    {
      if (v84 == 0 || !v83)
      {
        if (*(v79 + 32) != 1)
        {
          break;
        }

        v84 = *(v79 + 8);
      }
    }

    else
    {
      v84 += *(v79 + 8);
    }

    if (v84)
    {
      v85 = v81 == 0;
    }

    else
    {
      v85 = 1;
    }

    if (!v85)
    {
      v86 = v81;
      MEMORY[0x28223BE20](v40);
      v88 = &v141 - ((v87 + 15) & 0xFFFFFFFF0);
      bzero(v88, v87);
      v81 = v86;
      v11 = v147;
      if (!v31)
      {
        continue;
      }

      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = v147[8];
      while (((v92 >> v89) & 1) == 0)
      {
LABEL_104:
        if (v31 == ++v89)
        {
          v97 = v81;
          if (v91 < v81)
          {
            v97 = v91;
          }

          if (v91)
          {
            v98 = 0;
            if (v97 <= 1)
            {
              v99 = 1;
            }

            else
            {
              v99 = v97;
            }

            do
            {
              v100 = 0;
              v101 = v77;
              do
              {
                if ((v92 >> v100))
                {
                  v102 = *(*&v88[8 * v100] + 4 * v98);
                }

                else
                {
                  v102 = 0;
                }

                *(v41 + 4 * (v77 + v100++)) = v102;
              }

              while (v31 != v100);
              ++v98;
              v77 += v100;
            }

            while (v98 != v99);
            v77 = v101 + v100;
          }

          v103 = 0;
          v104 = 0;
          v81 = (v81 - v97);
          do
          {
            if ((v92 >> v103))
            {
              if (v91)
              {
                v105 = v79 + 40 * v104;
                v106 = *(v105 + 16) + v97;
                if (v106 == *(v105 + 8))
                {
                  v106 = 0;
                }

                *(v105 + 16) = v106;
                *(v105 + 32) = 0;
              }

              if (++v104 >= v78)
              {
                __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1038, "v < numVEOutputChannels");
              }
            }

            ++v103;
          }

          while (v31 != v103);
          goto LABEL_86;
        }
      }

      v93 = v79 + 40 * v90;
      v95 = *(v93 + 16);
      v94 = *(v93 + 24);
      v96 = v94 >= v95;
      v91 = v94 - v95;
      if (!v96)
      {
        goto LABEL_99;
      }

      if (v91 == 0 || !v96)
      {
        if (*(v93 + 32) == 1)
        {
LABEL_99:
          v91 = *(v93 + 8) - v95;
          goto LABEL_103;
        }

        v91 = 0;
      }

LABEL_103:
      ++v90;
      *&v88[8 * v89] = *v93 + 4 * v95;
      if (v90 >= v78)
      {
        __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1016, "v < numVEOutputChannels");
      }

      goto LABEL_104;
    }

    break;
  }

  for (i = v150; v81 >= i; LODWORD(v81) = v120 - i)
  {
    v115 = v81;
    v116 = *(**(*(v11[5] + 8) + 24) + 696);
    v117 = *v116;
    Phase::Controller::DVM_RT::Update(*(*v116 + 168));
    if (i < 1)
    {
      v120 = v115;
    }

    else
    {
      v118 = 0;
      v119 = *(*(v117 + 184) + 40);
      v120 = v115;
      do
      {
        if (v31)
        {
          v121 = 0;
          v122 = v11[8];
          do
          {
            if ((v122 >> v121))
            {
              v123 = *(*(v119 + 8 * v121) + 4 * v118);
            }

            else
            {
              v123 = 0;
            }

            *(v41 + 4 * (v77 + v121++)) = v123;
          }

          while (v31 != v121);
          v77 += v121;
        }

        ++v118;
      }

      while (v118 != i);
    }
  }

  if (v81)
  {
    v124 = *(**(*(v11[5] + 8) + 24) + 696);
    v125 = *v124;
    v126 = v81;
    Phase::Controller::DVM_RT::Update(*(*v124 + 168));
    v127 = v126;
    v11 = v147;
    v128 = 0;
    v129 = *(*(v125 + 184) + 40);
    v130 = v127;
    v131 = v127;
    do
    {
      v132 = v131;
      while (!v31)
      {
        if (!--v132)
        {
          goto LABEL_163;
        }
      }

      v133 = 0;
      v134 = v11[8];
      do
      {
        if ((v134 >> v133))
        {
          v135 = *(*(v129 + 8 * v133) + 4 * v128);
        }

        else
        {
          v135 = 0;
        }

        *(v41 + 4 * (v77 + v133++)) = v135;
      }

      while (v31 != v133);
      ++v128;
      --v131;
      v77 += v133;
    }

    while (v128 != v127);
    v136 = 0;
    v137 = 0;
    v138 = v150 - v127;
    do
    {
      if ((v11[8] >> v136))
      {
        v139 = v137 + 1;
        Phase::DspLayer23::BasicReblocker<float>::Write(*(v149 + 392) + 40 * v137, (*(v129 + 8 * v136) + 4 * v130), v138);
        v137 = v139;
        if (v139 >= v78)
        {
          __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1084, "v < numVEOutputChannels");
        }
      }

      ++v136;
    }

    while (v31 != v136);
  }

LABEL_163:
  LODWORD(v158.realp) = 0;
  vDSP_rmsqv(*(a6 + 2), 1, &v158, v31 * v145);
  if (*&v158.realp < 0.000001)
  {
    *v142 |= 0x10u;
    bzero(*(a6 + 2), a6[3]);
  }

  **(*(v11[4] + 8) + 24) = (v17 + v143);
  v140 = v149;
  *(*(*(v11[4] + 8) + 24) + 8) = (v144->mHostTime + v144->mRateScalar * (v145 / *(v149 + 336) * 24000000.0));
  *(v140 + 112) = mach_absolute_time();
  *(v140 + 120) = 1;
  if ((*(*(*(v11[4] + 8) + 24) + 64) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  mach_absolute_time();
  __udivti3();
  kdebug_trace();
  Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(*(*(v11[6] + 8) + 24), v144, v145, a6);
  return 0;
}

void sub_23A32E7C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<int const&,unsigned int const&>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "expected at least %i channels, got %i channels");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v6 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3);
    v7 = **(Phase::Logger::GetInstance(v6) + 544);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOBase.hpp";
      v10 = 1024;
      v11 = 133;
      v12 = 2080;
      v13 = __str;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit15SetInputHandlerEv_block_invoke(uint64_t a1, AudioUnitRenderActionFlags *a2, AudioTimeStamp *inTimeStamp, uint64_t inNumberFrames, uint64_t inOutputBusNumber)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  if (atomic_load((v7 + 144)))
  {
    kdebug_trace();
    v9 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v9);
    if (caulk::deferred_logger::create_message(*(Instance + 1248), v9 + 88, 0))
    {
      v11 = _os_log_pack_fill();
      mHostTime = inTimeStamp->mHostTime;
      *v11 = 134218240;
      *(v11 + 4) = mHostTime;
      *(v11 + 12) = 1024;
      *(v11 + 14) = inNumberFrames;
      Phase::Logger::GetInstance(v11);

      caulk::concurrent::messenger::enqueue();
    }
  }

  else
  {
    ioData.mBuffers[0].mData = 0;
    v15 = *(a1 + 56);
    v16 = *(a1 + 60);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = v15;
    *&ioData.mBuffers[0].mDataByteSize = (v16 * inNumberFrames);
    v17 = AudioUnitRender(*(v7 + 344), a2, inTimeStamp, inOutputBusNumber, inNumberFrames, &ioData);
    if (v17)
    {
      strcpy(__s, "(%d): ");
      strcat(__s, "error %d on input bus %ld timestamp %0.2f frameCount %u");
      ShouldFire = Phase::Throttle::ShouldFire((v7 + 16), 0);
      if (ShouldFire)
      {
        v19 = snprintf(__str, 0x100uLL, __s, ShouldFire, v17, inOutputBusNumber, *&inTimeStamp->mSampleTime, inNumberFrames);
        v20 = **(Phase::Logger::GetInstance(v19) + 544);
        v21 = v20;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v25 = "AudioIOBase.hpp";
          v26 = 1024;
          v27 = 133;
          v28 = 2080;
          v29 = __str;
          _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }

    else
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(*(*(*(a1 + 32) + 8) + 24), inTimeStamp, inNumberFrames, &ioData);
      *__s = 0;
      if (*(v7 + 304) && caulk::pooled_semaphore_mutex::try_lock((v7 + 312)))
      {
        v22 = *(v7 + 304);
        if (v22 && *v22)
        {
          Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v22, &ioData, __s);
        }

        caulk::pooled_semaphore_mutex::_unlock((v7 + 312));
      }

      Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(*(*(a1 + 40) + 8) + 24));
    }
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 544);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AudioIOUnit.mm";
    v6 = 1024;
    v7 = 1212;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Audio route change notification sent to voice manager.", &v4, 0x12u);
  }

  result = Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(**(this + 1));
  if (result)
  {
    atomic_fetch_add(this + 36, 1u);
  }

  return result;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::CopyWorkGroup(AudioUnit *this)
{
  v14 = *MEMORY[0x277D85DE8];
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(this[43], 0x7DFu, 0, 0, &outData, &ioDataSize);
  v2 = Property;
  if (Property)
  {
    v3 = **(Phase::Logger::GetInstance(Property) + 544);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOUnit.mm";
      v10 = 1024;
      v11 = 1230;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get workgroup from output audio unit: %d", buf, 0x18u);
    }

    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

void ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = **(Phase::Logger::GetInstance(v5) + 544);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v3 userInfo];
          v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CB8220]];
          v11 = [v10 unsignedIntValue];
          v12 = [v3 userInfo];
          v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CB8218]];
          v14 = 136315906;
          v15 = "AudioIOUnit.mm";
          v16 = 1024;
          v17 = 87;
          v18 = 1024;
          v19 = v11;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received AVAudioSession route change notification with reason %u and previous route:\n%@", &v14, 0x22u);
        }

        if (*(v7 + 48))
        {
          *(v7 + 49) = 1;
        }

        else
        {
          Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(*(v7 + 16));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_23A32F064(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke_70(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (!v7)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_19;
      }

      v8 = [v3 userInfo];
      v9 = [v8 valueForKey:*MEMORY[0x277CB8080]];
      v10 = [v9 intValue];

      if (v10)
      {
        if (v10 != 1 || (*(v7 + 48) = 1, v12 = **(Phase::Logger::GetInstance(v11) + 544), v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO), !v11))
        {
LABEL_15:
          if (*(v7 + 49) == 1)
          {
            v14 = **(Phase::Logger::GetInstance(v11) + 544);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = 136315650;
              v16 = "AudioIOUnit.mm";
              v17 = 1024;
              v18 = 138;
              v19 = 1024;
              v20 = v10;
              _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Dangling route change flag at interruption (%u) reception.", &v15, 0x18u);
            }
          }

          goto LABEL_18;
        }

        v15 = 136315394;
        v16 = "AudioIOUnit.mm";
        v17 = 1024;
        v18 = 116;
        v13 = "%25s:%-5d Received AVAudioSessionInterruptionTypeBegan interruption";
      }

      else
      {
        if (*(v7 + 48) == 1)
        {
          if (*(v7 + 49) == 1)
          {
            v11 = Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(*(v7 + 16));
            *(v7 + 49) = 0;
          }

          *(v7 + 48) = 0;
        }

        v12 = **(Phase::Logger::GetInstance(v11) + 544);
        v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (!v11)
        {
          goto LABEL_15;
        }

        v15 = 136315394;
        v16 = "AudioIOUnit.mm";
        v17 = 1024;
        v18 = 132;
        v13 = "%25s:%-5d Received AVAudioSessionInterruptionTypeEnded interruption";
      }

      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_INFO, v13, &v15, 0x12u);
      goto LABEL_15;
    }
  }

LABEL_19:
}

void sub_23A32F33C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
}

Phase::Controller::SystemAudioIO::Implementation *Phase::Controller::SystemAudioIO::Implementation::Implementation(Phase::Controller::SystemAudioIO::Implementation *this, Phase::Controller::SystemAudioIO::AudioIOUnit *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  *(this + 24) = 0;
  return this;
}

void sub_23A32F418(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SystemAudioIO::Implementation::~Implementation(id *this)
{
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *std::shared_ptr<Phase::Controller::SystemAudioIO::Implementation>::shared_ptr[abi:ne200100]<Phase::Controller::SystemAudioIO::Implementation,std::default_delete<Phase::Controller::SystemAudioIO::Implementation>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::shared_ptr<Phase::Controller::SystemAudioIO::Implementation>::__enable_weak_this[abi:ne200100]<Phase::Controller::SystemAudioIO::Implementation,Phase::Controller::SystemAudioIO::Implementation,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<Phase::Controller::SystemAudioIO::Implementation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

id *std::__shared_ptr_pointer<Phase::Controller::SystemAudioIO::Implementation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    Phase::Controller::SystemAudioIO::Implementation::~Implementation(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::SpatialModeler::BaseModelerErrorCategory::message(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v5, __val);
  v4 = std::string::insert(&v5, 0, "Base Modeler Error code: ", 0x19uLL);
  *a2 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23A32F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::BaseModelerErrorCategory::~BaseModelerErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::BinauralSpatializer::BinauralSpatializer(uint64_t a1, __int128 *a2, uint64_t a3, char a4, uint64_t a5)
{
  LOBYTE(__p[0]) = 0;
  std::vector<char>::vector[abi:ne200100](v14, 32);
  v10 = v14[0];
  *v14[0] = 6684674;
  v10[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Binaural");
  Phase::Controller::Spatializer::Spatializer(a1, a2, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  *a1 = &unk_284D2FBA0;
  IR::IRDataAttributes::IRDataAttributes(a1 + 96, a3);
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  return a1;
}

void sub_23A32F7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::BinauralSpatializer::~BinauralSpatializer(void **this)
{
  *this = &unk_284D2FBA0;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));

  Phase::Controller::Spatializer::~Spatializer(this);
}

{
  *this = &unk_284D2FBA0;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));
  Phase::Controller::Spatializer::~Spatializer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A32FDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  __cxa_free_exception(v20);
  if (*(v18 + 391) < 0)
  {
    operator delete(*(v18 + 368));
  }

  v22 = *(v18 + 352);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100]((v18 + 320));
  IR::IRDataAttributes::~IRDataAttributes((v18 + 160));
  v23 = *(v18 + 152);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::array<Phase::Controller::SpatializerFilterHandle,2ul>::~array(v19);
  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  v8 = *(a2 + 64);
  if (v8)
  {
    CFRetain(*(a2 + 64));
  }

  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 88);
  if (v9)
  {
    CFRetain(*(a2 + 88));
  }

  *(a1 + 88) = v9;
  v10 = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 96) = v10;
  v11 = *(a2 + 128);
  if (v11)
  {
    CFRetain(*(a2 + 128));
  }

  *(a1 + 128) = v11;
  v12 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v12;
  return a1;
}

void IR::IRDataAttributes::~IRDataAttributes(IR::IRDataAttributes *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::__shared_ptr_emplace<Phase::Controller::BinauralEncoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D2FBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t **std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<Phase::Controller::HrirAsset::Implementation>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x23EE864A0](v3, 0x20C4093837F09);
  }

  return a1;
}

void Phase::Controller::BinauralEncoder::~BinauralEncoder(Phase::Controller::BinauralEncoder *this)
{
  Phase::Controller::BinauralEncoder::~BinauralEncoder(this);

  JUMPOUT(0x23EE864A0);
}

{
  *this = &unk_284D2FC10;
  if (*(this + 304) == 1)
  {
    IR::IRDataLoader::instance(this);
    if (*(this + 367) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 43), *(this + 44));
    }

    else
    {
      __p = *(this + 344);
    }

    IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100](this + 37);
  IR::IRDataAttributes::~IRDataAttributes((this + 136));
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  for (i = 0; i != -96; i -= 48)
  {
    v5 = *(this + i + 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(this + i + 96);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(this + i + 80);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void Phase::Controller::BinauralEncoder::Initialize(Phase::Controller::BinauralEncoder *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 46) = 0;
  if (*(this + 304) == 1)
  {
    IR::IRDataLoader::instance(this);
    if (*(this + 367) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 43), *(this + 44));
    }

    else
    {
      __p = *(this + 344);
    }

    v3 = 0;
    operator new();
  }

  if ((Phase::Controller::BinauralEncoder::BuildFilterDatabase(this, 0) & 1) == 0)
  {
    std::terminate();
  }

  Phase::Controller::BinauralEncoder::SetFilterTypeInUse(this, 0);
}

void sub_23A330258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::BinauralEncoder::GetFiltersAndDelays(IR::IRData **a1, float *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a1[15];
  if (!v6)
  {
    v20 = **(Phase::Logger::GetInstance(0) + 592);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "BinauralSpatializer.mm";
      v31 = 1024;
      v32 = 161;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != mIRData.get() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != mIRData.get() is false.");
  }

  FilterLength = IR::IRData::getFilterLength(v6);
  if (FilterLength > a3)
  {
    v22 = **(Phase::Logger::GetInstance(FilterLength) + 592);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "BinauralSpatializer.mm";
      v31 = 1024;
      v32 = 163;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inFilterLengthInsamples >= mIRData->getFilterLength() is false.", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "PRECONDITION: inFilterLengthInsamples >= mIRData->getFilterLength() is false.");
  }

  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a2);
  IR::IRCoordinates::IRCoordinates(buf);
  NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(a1[15]);
  if (NumFiltersPerSpatialPoint != 2)
  {
    v24 = **(Phase::Logger::GetInstance(NumFiltersPerSpatialPoint) + 592);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "BinauralSpatializer.mm";
      *&v28[12] = 1024;
      *&v28[14] = 170;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: numOutputChannels == 2 is false.", v28, 0x12u);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v25, "PRECONDITION: numOutputChannels == 2 is false.");
  }

  IR::IRCoordinates::set();
  IR::IRCoordinates::set();
  v13 = IR::IRData::getFilterLength(a1[15]);
  std::vector<float>::vector[abi:ne200100](&__p, v13);
  std::vector<std::vector<float>>::vector[abi:ne200100](v28, 2uLL);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](&__p, 2uLL);
  IR::IRData::getInterpolatedTimeDomainCoeffs();
  v14 = 0;
  for (i = 0; i < (*(*a1 + 6))(a1); ++i)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*&v28[8] - *v28) >> 3) <= i)
    {
      std::vector<std::vector<float>>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = *(*v28 + v14);
    v17 = *(a4 + 8 * i);
    v18 = IR::IRData::getFilterLength(a1[15]);
    memcpy(v17, v16, 4 * v18);
    *(a5 + 4 * i) = *(__p + i);
    v14 += 24;
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  __p = v28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 1;
}

void Phase::Controller::BinauralEncoder::AcquireFilters(Phase::Controller::BinauralEncoder *this@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 36);
  if (v3 >= 2)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v5 = Phase::Controller::SpatializerFilterHandle::SpatializerFilterHandle(a2, (this + 48 * v3 + 24));
  if (!*a2)
  {
    v6 = **(Phase::Logger::GetInstance(v5) + 592);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::BinauralEncoder::GetDescription(__p, this, a2);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315906;
      v11 = "BinauralSpatializer.mm";
      v12 = 1024;
      v13 = 116;
      v14 = 2080;
      v15 = v7;
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [BinauralSpatializer] %s Acquiring invalid filter handle for filter type %lu", buf, 0x26u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void Phase::Controller::BinauralEncoder::GetDescription(Phase::Controller::BinauralEncoder *this@<X0>, Phase::Controller::BinauralEncoder *a2@<X8>)
{
  (*(*this + 32))(&v4);
  Phase::Controller::BinauralEncoder::GetDescription(a2, this, &v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t Phase::Controller::BinauralEncoder::GetWorkBufferSizeInBytes(uint64_t a1, uint64_t a2, float *a3)
{
  if (**(a1 + 312) <= *a3)
  {
    return 0;
  }

  else
  {
    return 8 * *(*a2 + 8);
  }
}

uint64_t Phase::Controller::BinauralEncoder::GetNearestFilter(Phase::Logger *a1, Phase::Controller::SpatializerFilterDatabase **a2, float *a3, uint64_t a4)
{
  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a3);
  v8 = *(a1 + 39);
  NearestFilterData = Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(*a2, a3[1], a3[2]);
  MiddleFilter = Phase::Controller::SpatializerFilterDatabase::GetMiddleFilter(*a2, 3);
  v12 = *(*a2 + 2);

  return Phase::Controller::BinauralUtility::ApplyInHeadFilter(v8, NearestFilterData, MiddleFilter, v12, a3, a4, v11);
}

void Phase::Controller::BinauralEncoder::Update(Phase::Controller::BinauralEncoder *this, double a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 304))
  {
    if ((*(this + 337) & 1) == 0)
    {
      *(this + 337) = 1;
      Phase::Controller::BinauralEncoder::SwapSpatializationFilters();
    }

    v4 = *(this + 40);
    v3 = *(this + 41);
    *(this + 40) = 0;
    *(this + 41) = 0;
    if (!v4)
    {
      goto LABEL_28;
    }

    if (*v4 != 1)
    {
LABEL_17:
      v9 = *v4;
      v10 = atomic_load(this + 36);
      if (v9 != v10)
      {
        (*(*this + 40))(v19, this);
        Phase::Controller::BinauralEncoder::SetFilterTypeInUse(this, *v4);
        v12 = **(Phase::Logger::GetInstance(v11) + 592);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v20;
          v14 = v19[0];
          (*(*this + 40))(__p, this);
          v15 = v19;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          v22 = "BinauralSpatializer.mm";
          v23 = 1024;
          v24 = 380;
          v25 = 2080;
          v26 = v15;
          v27 = 2080;
          v28 = v16;
          _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Swapped spatialization filters from %s to %s", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        atomic_store(1u, this + 336);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

LABEL_28:
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      return;
    }

    *v4 = 0;
    if (*(v4 + 8) == 1)
    {
      if (!Phase::Controller::BinauralEncoder::BuildFilterDatabase(this, 1))
      {
        goto LABEL_17;
      }

LABEL_11:
      *v4 = 1;
      goto LABEL_17;
    }

    if (*(this + 9))
    {
      v5 = IR::IRDataLoader::instance(this);
      v6 = IR::IRDataLoader::checkIfPersonalizedHRTFIsAllowed(v5);
      if (v6)
      {
        goto LABEL_11;
      }

      v7 = **(Phase::Logger::GetInstance(v6) + 592);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v22 = "BinauralSpatializer.mm";
      v23 = 1024;
      v24 = 360;
      v8 = "%25s:%-5d Use Personalized HRIR data not allowed - using Default.";
    }

    else
    {
      v7 = **(Phase::Logger::GetInstance(this) + 592);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v22 = "BinauralSpatializer.mm";
      v23 = 1024;
      v24 = 356;
      v8 = "%25s:%-5d No valid Personalized HRIR data database found - using Default.";
    }

    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
    goto LABEL_17;
  }
}

void sub_23A330D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::BinauralEncoder::HaveFiltersChanged(Phase::Controller::BinauralEncoder *this)
{
  v1 = atomic_load(this + 336);
  if (v1)
  {
    atomic_store(0, this + 336);
  }

  return v1 & 1;
}

void Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(Phase::Controller::SpatializerFilterHandle *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::array<Phase::Controller::SpatializerFilterHandle,2ul>::~array(uint64_t a1)
{
  for (i = 0; i != -96; i -= 48)
  {
    v3 = *(a1 + i + 88);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a1 + i + 72);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(a1 + i + 56);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

std::__shared_weak_count *Phase::Controller::BinauralEncoder::BuildFilterDatabase(uint64_t a1, uint64_t a2)
{
  __p[7] = *MEMORY[0x277D85DE8];
  *(a1 + 184) = 2 * (a2 == 1);
  IR::IRDataLoader::instance(a1);
  memset(__p, 0, 24);
  IR::IRDataLoader::load();
  v4 = *(a1 + 128);
  *(a1 + 120) = v19;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(a1 + 120);
  if (!v5)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 592);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = "BinauralSpatializer.mm";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 261;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d IRDataLoader failed to load HRIR. Skipping database initialization.", __p, 0x12u);
    return 0;
  }

  if (a2 != 1)
  {
    goto LABEL_9;
  }

  IRDataAttributes = IR::IRData::getIRDataAttributes(v5);
  if (*(IRDataAttributes + 12))
  {
    v5 = *(a1 + 120);
LABEL_9:
    FilterLength = IR::IRData::getFilterLength(v5);
    IR::IRData::getMaxDelay(*(a1 + 120));
    v9 = FilterLength + v8;
    v10 = v9 - 1;
    if ((v9 ^ (v9 - 1)) <= v9 - 1)
    {
      v11 = 1;
      do
      {
        v10 |= v10 >> v11;
        v12 = v11 >= 0x10;
        v11 *= 2;
      }

      while (!v12);
    }

    __p[0] = *(a1 + 16);
    std::allocate_shared[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase,std::allocator<Phase::Controller::SpatializerFilterDatabase>,Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,0>();
  }

  v15 = **(Phase::Logger::GetInstance(IRDataAttributes) + 592);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = "BinauralSpatializer.mm";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 272;
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d IRDataLoader failed to load personalized HRIR. Skipping database initialization.", __p, 0x12u);
  }

  v16 = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  result = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (result)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    return 0;
  }

  return result;
}

void Phase::Controller::BinauralEncoder::SetFilterTypeInUse(unint64_t *a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1 + 36;
  atomic_store(a2, a1 + 36);
  v4 = **(Phase::Logger::GetInstance(a1) + 592);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = atomic_load(v3);
    (*(*a1 + 40))(__p, a1);
    v6 = "Personalized";
    if (!v5)
    {
      v6 = "Default";
    }

    v11 = "BinauralSpatializer.mm";
    *buf = 136315906;
    v12 = 1024;
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v13 = 392;
    v14 = 2080;
    v15 = v6;
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using %s HRIR filter database - %s.", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

__n128 std::__function::__func<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D2FC90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<Phase::Controller::BinauralEncoder::FilterSwapInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D2FCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A331864(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A331A40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

_BYTE *Phase::Controller::BinauralEncoder::GetDescription(Phase::Controller::BinauralEncoder *this, const Phase::Controller::SpatializerFilterHandle *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  atomic_load(a2 + 36);
  v5 = *a2;
  if (*a3)
  {
    (*(v5 + 56))(a2, a3);
    (*(*a2 + 48))(a2);
    snprintf(__str, 0x100uLL, "<Encoder Type: Binaural, Filter Type: %s, Filter Length: %d, Output Channel Count: %d>");
  }

  else
  {
    (*(v5 + 48))(a2);
    snprintf(__str, 0x100uLL, "<Encoder Type: Binaural, Filter Type: %s, Filter Length: Unavailable, Output Channel Count: %d>");
  }

  return std::string::basic_string[abi:ne200100]<0>(this, __str);
}

uint64_t *std::unique_ptr<Phase::Controller::HrirAsset>::reset[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::unique_ptr<Phase::Controller::HrirAsset::Implementation>::~unique_ptr[abi:ne200100](result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::BinauralUtility::BinauralUtility(Phase::Controller::BinauralUtility *this, float a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  std::vector<float>::vector[abi:ne200100](this + 2, 2uLL);
  v4 = 0x42B4000043870000;
  memset(v3, 0, sizeof(v3));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v3, &v4, __p, 2uLL);
  v4 = 0;
  memset(v2, 0, sizeof(v2));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v2, &v4, __p, 2uLL);
  LODWORD(v4) = 1;
  *__p = 0u;
  v6 = 0u;
  v7 = 0u;
  operator new();
}

void sub_23A331E24(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  v22 = v20;
  MEMORY[0x23EE864A0](v22, 0x20C4093837F09);
  AudioDSP::Core::VBAP::InitParameters::~InitParameters(&buf);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = **(Phase::Logger::GetInstance(v24) + 592);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "BinauralUtility.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 37;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d [BinauralUtility] VBAP encoder init: invalid output channel layout!", &buf, 0x12u);
    }

    std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](v18, 0);
    __cxa_end_catch();
    JUMPOUT(0x23A331DECLL);
  }

  v26 = *v19;
  if (*v19)
  {
    *(v17 + 24) = v26;
    operator delete(v26);
  }

  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](v18, 0);
  _Unwind_Resume(a1);
}

AudioDSP::Core::VBAP *std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](AudioDSP::Core::VBAP **a1, AudioDSP::Core::VBAP *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AudioDSP::Core::VBAP::~VBAP(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Controller::BinauralUtility::ApplyInHeadFilter(Phase::Logger *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v32 = *MEMORY[0x277D85DE8];
  LODWORD(a7) = *a5;
  v8 = *a1;
  if (*a5 >= *a1)
  {
    return *a2;
  }

  v9 = a6;
  if (!a6)
  {
    v24 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BinauralUtility.cpp";
      v30 = 1024;
      v31 = 70;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInWorkBuffer is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr != pInWorkBuffer is false.");
  }

  v14 = *&a7 / v8;
  v28 = *&a7 / v8;
  *buf = 1065353216;
  v15 = std::vector<float>::assign(a1 + 2, 2uLL, buf, *&a7);
  if (!*(a1 + 1))
  {
    v26 = **(Phase::Logger::GetInstance(v15) + 592);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BinauralUtility.cpp";
      v30 = 1024;
      v31 = 90;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != mpVBAPPanner is false.", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v27, "PRECONDITION: nullptr != mpVBAPPanner is false.");
  }

  v16 = (*(a5 + 8) * 0.017453);
  v17 = __sincos_stret(((*(a5 + 4) + -90.0) * 0.017453));
  v19 = __sincos_stret(v16);
  v18.f64[0] = v19.__cosval;
  sinval = v17.__sinval;
  v18.f64[1] = v19.__sinval;
  *buf = vcvt_f32_f64(vmulq_n_f64(v18, v17.__cosval));
  *&buf[8] = sinval;
  AudioDSP::Core::VBAP::calculateVBAPGains();
  v21 = *a3;
  v22 = *a2;
  **(a1 + 2) = vmul_n_f32(**(a1 + 2), sqrtf(1.0 - (v14 * v14)));
  MEMORY[0x23EE87290](v21, 2);
  MEMORY[0x23EE87290](v21 + 4, 2, *(a1 + 2) + 4, v9 + 4, 2, a4);
  MEMORY[0x23EE87280](v22, 1, &v28, v9, 1, v9, 1, 2 * a4);
  return v9;
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23A554B70)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23A554B60)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23A554B70)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23A554B60)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void sub_23A33267C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSP::Core::VBAP::InitParameters::~InitParameters(AudioDSP::Core::VBAP::InitParameters *this)
{
  v3 = (this + 32);
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
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
        std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::logic_error *_ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_284D2FD28;
  return result;
}

double Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(uint64_t a1)
{
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Reset(a1);
  if (*(a1 + 32))
  {
    operator delete(*(a1 + 16));
  }

  *a1 = 0xFFFF00000000;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Initialize(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0xFFFF00000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (a2 + 63) & 0xFFFFFFC0;
  if (v5 > 0x8000)
  {
    __assert_rtn("Initialize", "BitBlockAllocator.cpp", 28, "maximumBlockCount <= kBlockMax");
  }

  v10 = (a2 + 63) >> 6;
  v11 = 8 * ((v10 + 63) >> 6);
  v12 = 16 * v10;
  v13 = (v11 + v12);
  if (v11 + v12)
  {
    v13 = operator new(v13);
  }

  *a1 = v5;
  *(a1 + 6) = a3;
  *(a1 + 16) = v13;
  *(a1 + 24) = v13 + v11;
  v14 = 1;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  do
  {
    v15 = v14;
    v16 = v14 & a3;
    v14 *= 2;
  }

  while (!v16);
  *(a1 + 8) = v15;
  Phase::Memset8(v13, 0, v11);
  v17 = *(a1 + 24);

  Phase::Memset8(v17, 0, v12);
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Reset(unsigned __int16 *a1)
{
  *(a1 + 1) = -65536;
  a1[5] = 0;
  v2 = *a1;
  v3 = v2 >> 6;
  Phase::Memset8(*(a1 + 2), 0, (((v2 >> 6) + 63) >> 3) & 0xF8);
  if (v2 >= 0x40)
  {
    v4 = *(a1 + 3);
    do
    {
      v5 = v4[1];
      if (v5)
      {
        operator delete(v5);
      }

      else if (*v4)
      {
        __assert_rtn("Reset", "BitBlockAllocator.cpp", 86, "pBottomEntry->mBits == 0");
      }

      *v4 = 0;
      v4[1] = 0;
      v4 += 2;
      LODWORD(v3) = v3 - 1;
    }

    while (v3);
  }
}

char *Phase::BitBlockAllocator<Phase::SystemAllocator>::Allocate(Phase::Logger *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (!*a1)
  {
LABEL_5:
    v6 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "BitBlockAllocator.cpp";
      v27 = 1024;
      v28 = 144;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::OutOfMemory): BitBlockAllocator::Allocate(): failed!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(exception, "BitBlockAllocator::Allocate(): failed!");
  }

  v3 = 0;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  while (*v4 == -1)
  {
    ++v4;
    v5 += 1024;
    v3 -= 4096;
    if (!(((v1 + 4095) >> 12 << 12) + v3))
    {
      goto LABEL_5;
    }
  }

  v8 = __clz(~*v4);
  v9 = *(v5 + 16 * v8);
  v10 = __clz(~v9);
  v11 = v10 + (v8 << 6) - v3;
  if (v11 >= v1)
  {
    v22 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "BitBlockAllocator.cpp";
      v27 = 1024;
      v28 = 140;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::OutOfMemory): BitBlockAllocator::Allocate(): failed!", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v23, "BitBlockAllocator::Allocate(): failed!");
  }

  v12 = v5 + 16 * v8;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = *(v5 + 16 * v8);
    goto LABEL_20;
  }

  v15 = *(a1 + 3);
  if (!*(a1 + 3))
  {
    goto LABEL_18;
  }

  v16 = v15 << 6;
  v17 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    v13 = operator new(v15 << 6);
    goto LABEL_19;
  }

  if ((v17 & (v17 - 1)) != 0)
  {
    log = **(Phase::Logger::GetInstance(0) + 192);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "SystemAllocator.hpp";
      v27 = 1024;
      v28 = 47;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_23A302000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", buf, 0x1Cu);
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = operator new(v16, v17);
LABEL_19:
  *(v12 + 8) = v13;
  v14 = *(v5 + 16 * v8);
LABEL_20:
  v18 = 0x8000000000000000 >> v10;
  if (v9 == -1)
  {
    v18 = 0;
  }

  v19 = v14 | v18;
  *(v5 + 16 * v8) = v19;
  if (v19 == -1)
  {
    *v4 |= 0x8000000000000000 >> v8;
  }

  ++*(a1 + 1);
  ++*(a1 + 5);
  v20 = *(a1 + 2);
  if (v20 <= v11)
  {
    LOWORD(v20) = v11;
  }

  *(a1 + 2) = v20;
  return &v13[v10 * *(a1 + 3)];
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Free(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || (v4 = *(a1 + 4), v4 < a2))
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "BitBlockAllocator.cpp";
      v17 = 1024;
      v18 = 151;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range) [(inIndex < 0) || (inIndex > mHighestInUse) is true]: BitBlockAllocator::Free(): Invalid index %d!", &v15, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "BitBlockAllocator::Free(): Invalid index %d!");
  }

  v5 = *(a1 + 24) + 16 * (a2 >> 6);
  if ((*v5 & (0x8000000000000000 >> a2)) == 0)
  {
    v13 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "BitBlockAllocator.cpp";
      v17 = 1024;
      v18 = 158;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [(pBottomEntry->mBits & maskBottom) == 0 is true]: BitBlockAllocator::Free(): Internal failure!", &v15, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "BitBlockAllocator::Free(): Internal failure!");
  }

  *(*(a1 + 16) + 8 * (a2 >> 12)) &= ~(0x8000000000000000 >> (a2 >> 6));
  v6 = *v5 & ~(0x8000000000000000 >> a2);
  *v5 = v6;
  if (v6)
  {
    v4 = v4;
  }

  else
  {
    operator delete(*(v5 + 8));
    *(v5 + 8) = 0;
    v4 = *(a1 + 4);
  }

  --*(a1 + 2);
  if (a2 == v4)
  {
    v7 = v4 - 1;
    v8 = (v4 - 1);
    if (v8 >= -1)
    {
      LOWORD(v8) = -1;
    }

    while ((v7 & 0x8000) == 0)
    {
      v9 = v7;
      v10 = *(*(a1 + 24) + 16 * ((v7-- >> 6) & 0x1FF));
      if (v10 << v9 < 0)
      {
        LOWORD(v8) = v9;
        break;
      }
    }

    *(a1 + 4) = v8;
  }
}

void Phase::OutOfMemory::~OutOfMemory(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

double Phase::Controller::sClamp<double>(Phase::Logger *a1, double a2, double a3, double a4)
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  if (a2 < a3 || a2 > a4)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 720);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "CvmParameter.hpp";
      v12 = 1024;
      v13 = 33;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Value is out of bounds. Clamping %f to range [%f, %f]", &v10, 0x30u);
    }

    return fmin(fmax(v4, a3), a4);
  }

  return v4;
}

uint64_t Phase::ChannelLayout::GetLayoutTagFromString(uint64_t a1)
{
  __str = MEMORY[0x28223BE20](a1);
  v349 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v64, "Mono");
  LODWORD(v66.__locale_) = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v67, "Stereo");
  v68 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v69, "StereoHeadphones");
  v71 = 6684674;
  std::string::basic_string[abi:ne200100]<0>(v72, "MatrixStereo");
  v74 = 6750210;
  std::string::basic_string[abi:ne200100]<0>(v75, "MidSide");
  v76 = 6815746;
  std::string::basic_string[abi:ne200100]<0>(v77, "XY");
  v78 = 6881282;
  std::string::basic_string[abi:ne200100]<0>(v79, "Binaural");
  v80 = 6946818;
  std::string::basic_string[abi:ne200100]<0>(v81, "Ambisonic_B_Format");
  v82 = 7012356;
  std::string::basic_string[abi:ne200100]<0>(v83, "Quadraphonic");
  v84 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v85, "Pentagonal");
  v86 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v87, "Hexagonal");
  v88 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v89, "Octagonal");
  v90 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v91, "Cube");
  v92 = 7340040;
  std::string::basic_string[abi:ne200100]<0>(v93, "MPEG_1_0");
  v94 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v95, "MPEG_2_0");
  v96 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v97, "MPEG_3_0_A");
  v98 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v99, "MPEG_3_0_B");
  v100 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v101, "MPEG_4_0_A");
  v102 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v103, "MPEG_4_0_B");
  v104 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v105, "MPEG_5_0_A");
  v106 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v107, "MPEG_5_0_B");
  v108 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v109, "MPEG_5_0_C");
  v110 = 7798789;
  std::string::basic_string[abi:ne200100]<0>(v111, "MPEG_5_0_D");
  v112 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v113, "MPEG_5_1_A");
  v114 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v115, "MPEG_5_1_B");
  v116 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v117, "MPEG_5_1_C");
  v118 = 8060934;
  std::string::basic_string[abi:ne200100]<0>(v119, "MPEG_5_1_D");
  v120 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v121, "MPEG_6_1_A");
  v122 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v123, "MPEG_7_1_A");
  v124 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v125, "MPEG_7_1_B");
  v126 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v127, "MPEG_7_1_C");
  v128 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v129, "Emagic_Default_7_1");
  v130 = 8454152;
  std::string::basic_string[abi:ne200100]<0>(v131, "SMPTE_DTV");
  v132 = 8519688;
  std::string::basic_string[abi:ne200100]<0>(v133, "ITU_1_0");
  v134 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v135, "ITU_2_0");
  v136 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v137, "ITU_2_1");
  v138 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v139, "ITU_2_2");
  v140 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v141, "ITU_3_0");
  v142 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v143, "ITU_3_1");
  v144 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v145, "ITU_3_2");
  v146 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v147, "ITU_3_2_1");
  v148 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v149, "ITU_3_4_1");
  v150 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v151, "DVD_0");
  v152 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v153, "DVD_1");
  v154 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v155, "DVD_2");
  v156 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v157, "DVD_3");
  v158 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v159, "DVD_4");
  v160 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v161, "DVD_5");
  v162 = 8781828;
  std::string::basic_string[abi:ne200100]<0>(v163, "DVD_6");
  v164 = 8847365;
  std::string::basic_string[abi:ne200100]<0>(v165, "DVD_7");
  v166 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v167, "DVD_8");
  v168 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v169, "DVD_9");
  v170 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v171, "DVD_10");
  v172 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v173, "DVD_11");
  v174 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v175, "DVD_12");
  v176 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v177, "DVD_13");
  v178 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v179, "DVD_14");
  v180 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v181, "DVD_15");
  v182 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v183, "DVD_16");
  v184 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v185, "DVD_17");
  v186 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v187, "DVD_18");
  v188 = 9043973;
  std::string::basic_string[abi:ne200100]<0>(v189, "DVD_19");
  v190 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v191, "DVD_20");
  v1 = __str;
  v192 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v193, "AudioUnit_4");
  v194 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v195, "AudioUnit_5");
  v196 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v197, "AudioUnit_6");
  v198 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v199, "AudioUnit_8");
  v200 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v201, "AudioUnit_5_0");
  v202 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v203, "AudioUnit_6_0");
  v204 = 9109510;
  std::string::basic_string[abi:ne200100]<0>(v205, "AudioUnit_7_0");
  v206 = 9175047;
  std::string::basic_string[abi:ne200100]<0>(v207, "AudioUnit_7_0_Front");
  v208 = 9699335;
  std::string::basic_string[abi:ne200100]<0>(v209, "AudioUnit_5_1");
  v210 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v211, "AudioUnit_6_1");
  v212 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v213, "AudioUnit_7_1");
  v214 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v215, "AudioUnit_7_1_Front");
  v216 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v217, "AAC_3_0");
  v218 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v219, "AAC_Quadraphonic");
  v220 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v221, "AAC_4_0");
  v222 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v223, "AAC_5_0");
  v224 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v225, "AAC_5_1");
  v226 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v227, "AAC_6_0");
  v228 = 9240582;
  std::string::basic_string[abi:ne200100]<0>(v229, "AAC_6_1");
  v230 = 9306119;
  std::string::basic_string[abi:ne200100]<0>(v231, "AAC_7_0");
  v232 = 9371655;
  std::string::basic_string[abi:ne200100]<0>(v233, "AAC_7_1");
  v234 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v235, "AAC_7_1_B");
  v236 = 11993096;
  std::string::basic_string[abi:ne200100]<0>(v237, "AAC_7_1_C");
  v238 = 12058632;
  std::string::basic_string[abi:ne200100]<0>(v239, "AAC_Octagonal");
  v240 = 9437192;
  std::string::basic_string[abi:ne200100]<0>(v241, "TMH_10_2_std");
  v242 = 9502736;
  std::string::basic_string[abi:ne200100]<0>(v243, "TMH_10_2_full");
  v244 = 9568277;
  std::string::basic_string[abi:ne200100]<0>(v245, "AC3_1_0_1");
  v246 = 9764866;
  std::string::basic_string[abi:ne200100]<0>(v247, "AC3_3_0");
  v248 = 9830403;
  std::string::basic_string[abi:ne200100]<0>(v249, "AC3_3_1");
  v250 = 9895940;
  std::string::basic_string[abi:ne200100]<0>(v251, "AC3_3_0_1");
  v252 = 9961476;
  std::string::basic_string[abi:ne200100]<0>(v253, "AC3_2_1_1");
  v254 = 10027012;
  std::string::basic_string[abi:ne200100]<0>(v255, "AC3_3_1_1");
  v256 = 10092549;
  std::string::basic_string[abi:ne200100]<0>(v257, "EAC_6_0_A");
  v258 = 10158086;
  std::string::basic_string[abi:ne200100]<0>(v259, "EAC_7_0_A");
  v260 = 10223623;
  std::string::basic_string[abi:ne200100]<0>(v261, "EAC3_6_1_A");
  v262 = 10289159;
  std::string::basic_string[abi:ne200100]<0>(v263, "EAC3_6_1_B");
  v264 = 10354695;
  std::string::basic_string[abi:ne200100]<0>(v265, "EAC3_6_1_C");
  v266 = 10420231;
  std::string::basic_string[abi:ne200100]<0>(v267, "EAC3_7_1_A");
  v268 = 10485768;
  std::string::basic_string[abi:ne200100]<0>(v269, "EAC3_7_1_B");
  v270 = 10551304;
  std::string::basic_string[abi:ne200100]<0>(v271, "EAC3_7_1_C");
  v272 = 10616840;
  std::string::basic_string[abi:ne200100]<0>(v273, "EAC3_7_1_D");
  v274 = 10682376;
  std::string::basic_string[abi:ne200100]<0>(v275, "EAC3_7_1_E");
  v276 = 10747912;
  std::string::basic_string[abi:ne200100]<0>(v277, "EAC3_7_1_F");
  v278 = 10813448;
  std::string::basic_string[abi:ne200100]<0>(v279, "EAC3_7_1_G");
  v280 = 10878984;
  std::string::basic_string[abi:ne200100]<0>(v281, "EAC3_7_1_H");
  v282 = 10944520;
  std::string::basic_string[abi:ne200100]<0>(v283, "DTS_3_1");
  v284 = 11010052;
  std::string::basic_string[abi:ne200100]<0>(v285, "DTS_4_1");
  v286 = 11075589;
  std::string::basic_string[abi:ne200100]<0>(v287, "DTS_6_0_A");
  v288 = 11141126;
  std::string::basic_string[abi:ne200100]<0>(v289, "DTS_6_0_B");
  v290 = 11206662;
  std::string::basic_string[abi:ne200100]<0>(v291, "DTS_6_0_C");
  v292 = 11272198;
  std::string::basic_string[abi:ne200100]<0>(v293, "DTS_6_1_A");
  v294 = 11337735;
  std::string::basic_string[abi:ne200100]<0>(v295, "DTS_6_1_B");
  v296 = 11403271;
  std::string::basic_string[abi:ne200100]<0>(v297, "DTS_6_1_C");
  v298 = 11468807;
  std::string::basic_string[abi:ne200100]<0>(v299, "DTS_7_0");
  v300 = 11534343;
  std::string::basic_string[abi:ne200100]<0>(v301, "DTS_7_1");
  v302 = 11599880;
  std::string::basic_string[abi:ne200100]<0>(v303, "DTS_8_0_A");
  v304 = 11665416;
  std::string::basic_string[abi:ne200100]<0>(v305, "DTS_8_0_B");
  v306 = 11730952;
  std::string::basic_string[abi:ne200100]<0>(v307, "DTS_8_1_A");
  v308 = 11796489;
  std::string::basic_string[abi:ne200100]<0>(v309, "DTS_8_1_B");
  v310 = 11862025;
  std::string::basic_string[abi:ne200100]<0>(v311, "DTS_6_1_D");
  v312 = 11927559;
  std::string::basic_string[abi:ne200100]<0>(v313, "WAVE_2_1");
  v314 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v315, "WAVE_3_0");
  v316 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v317, "WAVE_4_0_A");
  v318 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v319, "WAVE_4_0_B");
  v320 = 12124164;
  std::string::basic_string[abi:ne200100]<0>(v321, "WAVE_5_0_A");
  v322 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v323, "WAVE_5_0_B");
  v324 = 12189701;
  std::string::basic_string[abi:ne200100]<0>(v325, "WAVE_5_1_A");
  v326 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v327, "WAVE_5_1_B");
  v328 = 12255238;
  std::string::basic_string[abi:ne200100]<0>(v329, "WAVE_6_1");
  v330 = 12320775;
  std::string::basic_string[abi:ne200100]<0>(v331, "WAVE_7_1");
  v332 = 12386312;
  std::string::basic_string[abi:ne200100]<0>(v333, "Atmos_5_1_2");
  v334 = 12713992;
  std::string::basic_string[abi:ne200100]<0>(v335, "Atmos_5_1_4");
  v336 = 12779530;
  std::string::basic_string[abi:ne200100]<0>(v337, "Atmos_7_1_2");
  v338 = 12845066;
  std::string::basic_string[abi:ne200100]<0>(v339, "Atmos_7_1_4");
  v340 = 12582924;
  std::string::basic_string[abi:ne200100]<0>(v341, "Atmos_9_1_6");
  v342 = 12648464;
  std::string::basic_string[abi:ne200100]<0>(v343, "BeginReserved");
  v344 = -268435456;
  std::string::basic_string[abi:ne200100]<0>(v345, "EndReserved");
  v346 = -65537;
  std::string::basic_string[abi:ne200100]<0>(v347, "Unknown");
  *&v348[1] = -65536;
  std::map<std::string,unsigned int>::map[abi:ne200100](&v62, v64, 141);
  v2 = v348;
  v3 = -4512;
  v4 = v348;
  do
  {
    v5 = *v4;
    v4 -= 32;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 32;
  }

  while (v3);
  v61 = -65536;
  v6 = v63[0];
  if (!v63[0])
  {
    goto LABEL_18;
  }

  v7 = v63;
  do
  {
    v8 = v7;
    v9 = v6 + 32;
    v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, __str);
    if ((v10 & 0x80u) == 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = v8;
    }

    v6 = *&v6[(v10 >> 4) & 8];
  }

  while (v6);
  if (v7 == v63 || ((v10 & 0x80u) == 0 ? (v11 = v9) : (v11 = (v8 + 4)), (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, v11) & 0x80) != 0))
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v64, "HOA_ACN_SN3D");
    LODWORD(v66.__locale_) = 12451840;
    std::string::basic_string[abi:ne200100]<0>(v67, "HOA_ACN_N3D");
    v68 = 12517376;
    std::map<std::string,unsigned int>::map[abi:ne200100](&v59, v64, 2);
    for (i = 0; i != -64; i -= 32)
    {
      if (v67[i + 23] < 0)
      {
        operator delete(*&v67[i]);
      }
    }

    v15 = v59;
    if (v59 == v60)
    {
      v54 = -65536;
    }

    else
    {
      v52 = *MEMORY[0x277D82820];
      v51 = *(MEMORY[0x277D82820] + 24);
      v54 = -65536;
      do
      {
        if (*(v15 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v57, v15[4], v15[5]);
        }

        else
        {
          v57 = *(v15 + 4);
        }

        v16 = *(v15 + 14);
        v58 = v16;
        v17 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
        if (v17 >= 0)
        {
          v18 = v1;
        }

        else
        {
          v18 = v1->__r_.__value_.__r.__words[0];
        }

        if (v17 >= 0)
        {
          size = HIBYTE(v1->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v1->__r_.__value_.__l.__size_;
        }

        v20 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v57;
        }

        else
        {
          v21 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v57.__r_.__value_.__l.__size_;
        }

        if (!v22)
        {
          goto LABEL_49;
        }

        if (size >= v22)
        {
          v23 = (v18 + size);
          v24 = v21->__r_.__value_.__s.__data_[0];
          v25 = size;
          v26 = v18;
          while (1)
          {
            v27 = v25 - v22;
            if (v27 == -1 || (v28 = memchr(v26, v24, v27 + 1)) == 0)
            {
LABEL_46:
              v1 = __str;
              goto LABEL_56;
            }

            v29 = v28;
            if (!memcmp(v28, v21, v22))
            {
              break;
            }

            v26 = (&v29->__r_.__value_.__l.__data_ + 1);
            v25 = v23 - (&v29->__r_.__value_.__l.__data_ + 1);
            if (v25 < v22)
            {
              goto LABEL_46;
            }
          }

          v1 = __str;
          if (v29 != v23 && v29 == v18)
          {
LABEL_49:
            v61 = v16;
            std::string::basic_string(&v56, v1, v22, size, v64);
            v55 = 0;
            std::istringstream::basic_istringstream[abi:ne200100](v64, &v56);
            MEMORY[0x23EE860A0](v64, &v55);
            v30 = *&v67[*(v64[0] - 24)];
            v64[0] = v52;
            *(v64 + *(v52 - 24)) = v51;
            v65 = MEMORY[0x277D82878] + 16;
            if (v73 < 0)
            {
              operator delete(v70);
            }

            v65 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v66);
            std::istream::~istream();
            MEMORY[0x23EE863B0](&v74);
            v31 = ((v55 + 1) * (v55 + 1)) | v16;
            if ((v30 & 5) != 0)
            {
              v31 = -65536;
            }

            v54 = v31;
            v61 = v31;
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            v20 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }
        }

LABEL_56:
        if (v20 < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        v32 = v15[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v15[2];
            v34 = *v33 == v15;
            v15 = v33;
          }

          while (!v34);
        }

        v15 = v33;
      }

      while (v33 != v60);
    }

    std::string::basic_string[abi:ne200100]<0>(&v57, "DiscreteInOrder");
    v58 = 9633792;
    v35 = v1->__r_.__value_.__l.__size_;
    if ((v1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v1 = v1->__r_.__value_.__r.__words[0];
      v36 = v35;
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v57;
    }

    else
    {
      v37 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v57.__r_.__value_.__l.__size_;
    }

    if (v38)
    {
      if (v36 >= v38)
      {
        v39 = (v1 + v36);
        v40 = v37->__r_.__value_.__s.__data_[0];
        v41 = v36;
        v42 = v1;
        do
        {
          v43 = v41 - v38;
          if (v43 == -1)
          {
            break;
          }

          v44 = memchr(v42, v40, v43 + 1);
          if (!v44)
          {
            break;
          }

          v45 = v44;
          if (!memcmp(v44, v37, v38))
          {
            if (v45 == v39 || v45 != v1)
            {
              break;
            }

            goto LABEL_85;
          }

          v42 = (&v45->__r_.__value_.__l.__data_ + 1);
          v41 = v39 - (&v45->__r_.__value_.__l.__data_ + 1);
        }

        while (v41 >= v38);
      }
    }

    else
    {
LABEL_85:
      v61 = 9633792;
      std::string::basic_string(&v56, __str, v38, v36, v64);
      v55 = 0;
      std::istringstream::basic_istringstream[abi:ne200100](v64, &v56);
      v46 = MEMORY[0x277D82820];
      MEMORY[0x23EE860A0](v64, &v55);
      v64[0] = *v46;
      *(v64 + *(v64[0] - 24)) = v46[3];
      v65 = MEMORY[0x277D82878] + 16;
      if (v73 < 0)
      {
        operator delete(v70);
      }

      v65 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v66);
      std::istream::~istream();
      MEMORY[0x23EE863B0](&v74);
      v54 = v55 | 0x930000;
      v61 = v55 | 0x930000;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    if (v54 == -65536)
    {
      std::istringstream::basic_istringstream[abi:ne200100](v64, __str);
      v47 = MEMORY[0x277D82820];
      MEMORY[0x23EE860A0](v64, &v61);
      v48 = *&v67[*(v64[0] - 24)] & 5;
      v64[0] = *v47;
      *(v64 + *(v64[0] - 24)) = v47[3];
      v65 = MEMORY[0x277D82878] + 16;
      if (v73 < 0)
      {
        operator delete(v70);
      }

      v65 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v66);
      std::istream::~istream();
      MEMORY[0x23EE863B0](&v74);
      if (v48)
      {
        v61 = -65536;
      }
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v60[0]);
    v13 = &v61;
  }

  else
  {
    v12 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(&v62, v64, __str);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v13 = (v12 + 56);
  }

  v49 = *v13;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v63[0]);
  return v49;
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x277D82820] + 16);
  v7 = *(MEMORY[0x277D82820] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x277D82898] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE86340](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}