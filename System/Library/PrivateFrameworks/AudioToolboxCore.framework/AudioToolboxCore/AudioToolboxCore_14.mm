void sub_18F6BA5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  _Unwind_Resume(a1);
}

void AudioFormatRegisterScopeOnce(void)
{
  if (atomic_load_explicit(AudioFormatRegisterScopeOnce(void)::onceflag, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(AudioFormatRegisterScopeOnce(void)::onceflag, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AudioFormatRegisterScopeOnce(void)::$_0 &&>>);
  }
}

uint64_t GetMaxSoundCheckValue(CACFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  v6 = 0;
  v5 = 0;
  result = CACFDictionary::GetString(a1, a2, &v5);
  if (result)
  {
    if (GetMaxSoundCheckValueFromString(v5, &v6))
    {
      return 0;
    }

    else
    {
      *a3 = v6;
      return 1;
    }
  }

  return result;
}

uint64_t AudioFormat_GetDRCTypeFromPacket(uint64_t a1, _DWORD *a2)
{
  inCodec = 0;
  v2 = *(a1 + 8);
  ioPropertyDataSize = 16;
  outPropertyData = a1;
  v9 = 0;
  if (v2 >> 8 == 6381923)
  {
    v3 = 1633772320;
  }

  else
  {
    v3 = v2;
  }

  if (v3 != 1634492771 && v3 != 1633772320)
  {
    return 1718449215;
  }

  result = OpenCodecComponent(v3, &inCodec, 0x61646563u);
  if (!result)
  {
    result = AudioCodecGetProperty(inCodec, 0x64726374u, &ioPropertyDataSize, &outPropertyData);
    if (!result)
    {
      *a2 = v9;
    }
  }

  return result;
}

uint64_t AudioFormatProperty_AlbumLoudness(CFArrayRef *a1, const __CFDictionary **a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (kAudioFormatSubsystem)
  {
    v4 = *kAudioFormatSubsystem;
    if (!*kAudioFormatSubsystem)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AudioFormatCommon.cpp";
    v46 = 1024;
    v47 = 566;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioFormatProperty_AlbumLoudness", buf, 0x12u);
  }

LABEL_7:
  AudioFormatRegisterScopeOnce();
  *a2 = 0;
  v44 = 0;
  v42 = *a1;
  v43 = 0;
  Count = CFArrayGetCount(v42);
  v34 = a2;
  if (Count < 1)
  {
    v35 = 0;
    v10 = -1.0e10;
    v14 = -1000000000;
    v13 = -1000000000;
    v12 = -1000000000;
    v11 = -1000000000;
    v9 = -1.0e10;
    v8 = -1.0e10;
    v7 = -1.0e10;
LABEL_53:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 256;
    if (v44)
    {
      CACFDictionary::AddString(&Mutable, @"media kind", v44);
    }

    if (v10 != -1.0e10)
    {
      CACFDictionary::AddFloat32(&Mutable, @"precalculated sc adjustment", v10);
    }

    if (v8 != -1.0e10)
    {
      CACFDictionary::AddFloat32(&Mutable, @"anchor loudness", v8);
    }

    if (v14 != -1000000000)
    {
      CACFDictionary::AddUInt32(&Mutable, @"bit depth pcm master");
    }

    if ((v35 & 1) != 0 && (v7 != -1.0e10 || v9 != -1.0e10))
    {
      *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&buf[8] = 257;
      if (v7 != -1.0e10)
      {
        CACFDictionary::AddFloat32(buf, @"aa itu loudness", v7);
      }

      if (v9 != -1.0e10)
      {
        CACFDictionary::AddFloat32(buf, @"aa itu true peak", v9);
      }

      CACFDictionary::AddDictionary(&Mutable, @"main loudness parameters", *buf);
      CACFDictionary::~CACFDictionary(buf);
    }

    if ((v35 & 0x100000000) != 0)
    {
      v36 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v37 = 257;
      if (v13 != -1000000000)
      {
        snprintf(buf, 0x20uLL, "%u", v13);
        CACFDictionary::AddCString(&v36, @"sc ave perceived power coeff", buf);
      }

      if (v12 != -1000000000)
      {
        snprintf(buf, 0x20uLL, "%u", v12);
        CACFDictionary::AddCString(&v36, @"sc max perceived power coeff", buf);
      }

      if (v11 != -1000000000)
      {
        snprintf(buf, 0x20uLL, "%u", v11);
        CACFDictionary::AddCString(&v36, @"sc peak amplitude", buf);
      }

      CACFDictionary::AddDictionary(&Mutable, @"sound check info", v36);
      CACFDictionary::~CACFDictionary(&v36);
    }

    if (kAudioFormatSubsystem)
    {
      v26 = *kAudioFormatSubsystem;
      if (!*kAudioFormatSubsystem)
      {
LABEL_83:
        *v34 = Mutable;
        CACFDictionary::~CACFDictionary(&Mutable);
        v27 = 0;
        goto LABEL_112;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AudioFormatCommon.cpp";
      v46 = 1024;
      v47 = 716;
      v48 = 2112;
      v49 = Mutable;
      _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Album Loudness Info :\n%@", buf, 0x1Cu);
    }

    goto LABEL_83;
  }

  v35 = 0;
  v6 = 0;
  v7 = -1.0e10;
  v8 = -1.0e10;
  v9 = -1.0e10;
  v10 = -1.0e10;
  v11 = -1000000000;
  v12 = -1000000000;
  v13 = -1000000000;
  v14 = -1000000000;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v6);
    v16 = CFGetTypeID(ValueAtIndex);
    if (v16 != CFDictionaryGetTypeID())
    {
      goto LABEL_50;
    }

    *v39 = 0;
    Mutable = ValueAtIndex;
    v41 = 0;
    if (!v44)
    {
      CACFDictionary::GetString(&Mutable, @"media kind", &v44);
    }

    if (CACFDictionary::GetFloat32(&Mutable, @"precalculated sc adjustment", &v39[1]))
    {
      break;
    }

LABEL_16:
    if (CACFDictionary::GetFloat32(&Mutable, @"anchor loudness", &v39[1]))
    {
      if ((v39[1] & 0x7FFFFFFF) >= 0x7F800000)
      {
        if (kAudioFormatSubsystem)
        {
          v28 = *kAudioFormatSubsystem;
          if (!*kAudioFormatSubsystem)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AudioFormatCommon.cpp";
          v46 = 1024;
          v47 = 615;
          v30 = "%25s:%-5d AnchorLoudness value is not finite.";
          goto LABEL_102;
        }

        goto LABEL_111;
      }

      if (v8 < *&v39[1])
      {
        v8 = *&v39[1];
      }
    }

    UInt32 = CACFDictionary::GetUInt32(&Mutable, @"bit depth pcm master", v39);
    v18 = v39[0];
    if (v14 > v39[0])
    {
      v18 = v14;
    }

    if (UInt32)
    {
      v14 = v18;
    }

    v38 = 0;
    if (CACFDictionary::GetDictionary(&Mutable, @"main loudness parameters", &v38))
    {
      v36 = v38;
      v37 = 0;
      if (CACFDictionary::GetFloat32(&v36, @"aa itu loudness", &v39[1]))
      {
        if ((v39[1] & 0x7FFFFFFF) >= 0x7F800000)
        {
          if (kAudioFormatSubsystem)
          {
            v29 = *kAudioFormatSubsystem;
            if (!*kAudioFormatSubsystem)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v29 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_110;
          }

          *buf = 136315394;
          *&buf[4] = "AudioFormatCommon.cpp";
          v46 = 1024;
          v47 = 632;
          v31 = "%25s:%-5d ItuLoudness value is not finite.";
          goto LABEL_109;
        }

        if (v7 < *&v39[1])
        {
          v7 = *&v39[1];
        }
      }

      if (CACFDictionary::GetFloat32(&v36, @"aa itu true peak", &v39[1]))
      {
        if ((v39[1] & 0x7FFFFFFF) >= 0x7F800000)
        {
          if (kAudioFormatSubsystem)
          {
            v29 = *kAudioFormatSubsystem;
            if (!*kAudioFormatSubsystem)
            {
LABEL_110:
              CACFDictionary::~CACFDictionary(&v36);
              goto LABEL_111;
            }
          }

          else
          {
            v29 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_110;
          }

          *buf = 136315394;
          *&buf[4] = "AudioFormatCommon.cpp";
          v46 = 1024;
          v47 = 640;
          v31 = "%25s:%-5d ItuTruePeak value is not finite.";
LABEL_109:
          _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0x12u);
          goto LABEL_110;
        }

        if (v9 < *&v39[1])
        {
          v9 = *&v39[1];
        }
      }

      CACFDictionary::~CACFDictionary(&v36);
      LOBYTE(v35) = 1;
    }

    v36 = 0;
    if (CACFDictionary::GetDictionary(&Mutable, @"sound check info", &v36))
    {
      *buf = v36;
      *&buf[8] = 0;
      v19 = GetMaxSoundCheckValue(buf, @"sc ave perceived power coeff", v39);
      v20 = v39[0];
      if (v13 > v39[0])
      {
        v20 = v13;
      }

      if (v19)
      {
        v13 = v20;
      }

      v21 = GetMaxSoundCheckValue(buf, @"sc max perceived power coeff", v39);
      v22 = v39[0];
      v23 = GetMaxSoundCheckValue(buf, @"sc peak amplitude", v39);
      if (v12 <= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v12;
      }

      if (v21)
      {
        v12 = v24;
      }

      v25 = v39[0];
      if (v11 > v39[0])
      {
        v25 = v11;
      }

      if (v23)
      {
        v11 = v25;
      }

      CACFDictionary::~CACFDictionary(buf);
      BYTE4(v35) = 1;
    }

    CACFDictionary::~CACFDictionary(&Mutable);
LABEL_50:
    if (Count == ++v6)
    {
      goto LABEL_53;
    }
  }

  if ((v39[1] & 0x7FFFFFFF) < 0x7F800000)
  {
    if (v10 < *&v39[1])
    {
      v10 = *&v39[1];
    }

    goto LABEL_16;
  }

  if (kAudioFormatSubsystem)
  {
    v28 = *kAudioFormatSubsystem;
    if (!*kAudioFormatSubsystem)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AudioFormatCommon.cpp";
    v46 = 1024;
    v47 = 607;
    v30 = "%25s:%-5d PrecalculatedSCAdjustment value is not finite.";
LABEL_102:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0x12u);
  }

LABEL_111:
  CACFDictionary::~CACFDictionary(&Mutable);
  v27 = 4294967246;
LABEL_112:
  CACFArray::~CACFArray(&v42);
  v32 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_18F6BB0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  CACFDictionary::~CACFDictionary(va);
  CACFArray::~CACFArray(va1);
  _Unwind_Resume(a1);
}

void sub_18F6BB324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _Unwind_Exception *exception_object, uint64_t a25)
{
  std::unique_ptr<_xmlParserCtxt,std::function<void ()(_xmlParserCtxt*)>>::reset[abi:ne200100]((v26 + 1040), 0);
  std::__function::__value_func<void ()(_xmlParserCtxt *)>::~__value_func[abi:ne200100](v31);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v30);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v26 + 960);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v29);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v26 + 880);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v26 + 800);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v27);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v26 + 720);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v26 + 640);
  v33 = *(v26 + 624);
  *(v26 + 624) = 0;
  if (v33)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v33);
  }

  std::unique_ptr<CA::ADMLoudnessMetadata>::reset[abi:ne200100]((v26 + 616), 0);
  a25 = v26 + 584;
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 560;
  std::vector<std::vector<std::optional<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 536;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 512;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 488;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 464;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 440;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 416;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 392;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 368;
  std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 344;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 320;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 296;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 272;
  std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 248;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 224;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 200;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 176;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 152;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 128;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 104;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 80;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v26 + 56;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::deque<CA::ADMBuilder::Impl::ADMElement>::~deque[abi:ne200100](v26 + 8);
  std::unique_ptr<CA::ADM>::reset[abi:ne200100](v26, 0);
  MEMORY[0x193ADF220](v26, v25);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(_xmlParserCtxt *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<_xmlParserCtxt,std::function<void ()(_xmlParserCtxt*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = v2;
    v3 = result[4];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v3 + 48))(v3, &v4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>,0>((v2 + 2));
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

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x193ADF220);
}

uint64_t *std::unique_ptr<CA::ADMLoudnessMetadata>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 88) == 1 && *(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 56) == 1 && *(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::optional<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 4;
        if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<CA::ADMBuilder::Impl::ADMElement>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char ***std::unique_ptr<CA::ADM>::reset[abi:ne200100](char ***result, char **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 33);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 30);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 27);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 24);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 21);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 18);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 15);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 12);
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 9);
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 6);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = (v2 + 3);
    std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          CA::ADMProgramme::~ADMProgramme((v4 - 368));
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void CA::ADMProgramme::~ADMProgramme(CA::ADMProgramme *this)
{
  v2 = (this + 344);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 336) == 1)
  {
    v2 = (this + 312);
    std::vector<CA::ADMRenderer>::__destroy_vector::operator()[abi:ne200100](&v2);
    v2 = (this + 288);
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  v2 = (this + 216);
  std::vector<CA::ADMLoudnessMetadata>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 192);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 168);
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<CA::ADMRenderer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      do
      {
        v8 = (v6 + 32);
        std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v8);
        if (*(v6 + 24) == 1 && *(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
        {
          operator delete(*(v6 - 32));
        }

        if (*(v6 - 40) == 1 && *(v6 - 41) < 0)
        {
          operator delete(*(v6 - 64));
        }

        v7 = (v6 - 64);
        v6 -= 120;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CA::ADMLoudnessMetadata>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<CA::ADMLoudnessMetadata>>::destroy[abi:ne200100]<CA::ADMLoudnessMetadata,void,0>(i))
    {
      i -= 144;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 7;
        if (*(v6 - 32) == 1 && *(v6 - 33) < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<CA::ADMLoudnessMetadata>>::destroy[abi:ne200100]<CA::ADMLoudnessMetadata,void,0>(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void CA::ADMBuilder::Impl::xml_error_stub(CA::ADMBuilder::Impl *this, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v16 = *MEMORY[0x1E69E9840];
  va_copy(v9, va);
  v5 = CA::ADMBuilder::Impl::log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v11 = "ADMBuilder.cpp";
    v12 = 1024;
    v13 = 1748;
    v14 = 2080;
    v15 = p_p;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d XML error: %s", buf, 0x1Cu);
  }

  if (!*(this + 158))
  {
    *(this + 158) = -66608;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void anonymous namespace::format(std::string *this, const char *__format, char **a3)
{
  v6 = vsnprintf(0, 0, __format, *a3) + 1;
  std::string::basic_string[abi:ne200100](this, v6);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  v8 = vsnprintf(v7, v6, __format, *a3);
  std::string::resize(this, v8, 0);
}

void sub_18F6BC2C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::log(CA::ADMBuilder::Impl *this)
{
  v1 = &unk_1EAD30000;
  {
    v1 = &unk_1EAD30000;
    if (v3)
    {
      CA::ADMBuilder::Impl::log(void)::log = os_log_create("com.apple.coreaudio", "ADMBuilder");
      v1 = &unk_1EAD30000;
    }
  }

  return v1[419];
}

void CA::ADMBuilder::Impl::xml_warning_stub(CA::ADMBuilder::Impl *this, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v15 = *MEMORY[0x1E69E9840];
  va_copy(v8, va);
  v4 = CA::ADMBuilder::Impl::log(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v10 = "ADMBuilder.cpp";
    v11 = 1024;
    v12 = 1758;
    v13 = 2080;
    v14 = p_p;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d XML warning: %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void CA::ADMBuilder::Impl::xml_end_element_stub(CA::ADMBuilder::Impl *this, void *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, const unsigned __int8 *a5)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(this + 158))
  {
    goto LABEL_120;
  }

  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = ((v6 - v7) << 7) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = *(this + 6) - 1;
  v10 = v9 + *(this + 5);
  v11 = *(*(v7 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v10 & 0x3FF));
  *(this + 6) = v9;
  if (v8 - v10 >= 0x800)
  {
    operator delete(*(v6 - 8));
    *(this + 3) -= 8;
  }

  switch(v11)
  {
    case 4:
      v12 = *(this + 78);
      v13 = *(*(*this + 8) - 192);
      goto LABEL_115;
    case 5:
      v26 = *(this + 41);
      goto LABEL_106;
    case 7:
      v33 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v34 = *(*this + 8);
      *(v34 - 124) = BYTE4(v33);
      *(v34 - 128) = v33;
      goto LABEL_118;
    case 10:
      v26 = *(this + 44);
      goto LABEL_106;
    case 12:
      v52 = *(this + 47);
      goto LABEL_105;
    case 13:
      v26 = *(*this + 8);
      goto LABEL_106;
    case 14:
      v37 = *(this + 6) + *(this + 5) - 1;
      v38 = *(*(*(this + 2) + ((v37 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v37 & 0x3FF));
      if (v38 == 21)
      {
        v40 = *(this + 77);
        v39 = (*(*(*this + 32) - 16) + 144);
      }

      else
      {
        if (v38 != 3)
        {
          goto LABEL_118;
        }

        v39 = (*(*this + 8) - 152);
        v40 = *(this + 77);
      }

      std::vector<CA::ADMLoudnessMetadata>::push_back[abi:ne200100](v39, v40);
      std::unique_ptr<CA::ADMLoudnessMetadata>::reset[abi:ne200100](this + 77, 0);
      goto LABEL_118;
    case 15:
      v41 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v42 = *(this + 77);
      *(v42 + 96) = v41;
      *(v42 + 100) = BYTE4(v41);
      goto LABEL_118;
    case 16:
      v57 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v58 = *(this + 77);
      *(v58 + 104) = v57;
      *(v58 + 108) = BYTE4(v57);
      goto LABEL_118;
    case 17:
      v53 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v54 = *(this + 77);
      *(v54 + 112) = v53;
      *(v54 + 116) = BYTE4(v53);
      goto LABEL_118;
    case 18:
      v29 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v30 = *(this + 77);
      *(v30 + 120) = v29;
      *(v30 + 124) = BYTE4(v29);
      goto LABEL_118;
    case 19:
      v35 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v36 = *(this + 77);
      *(v36 + 128) = v35;
      *(v36 + 132) = BYTE4(v35);
      goto LABEL_118;
    case 20:
      v31 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v32 = *(this + 77);
      *(v32 + 136) = v31;
      *(v32 + 140) = BYTE4(v31);
      goto LABEL_118;
    case 22:
      v12 = *(this + 78);
      v13 = *(*(*(*this + 32) - 16) + 104);
      goto LABEL_115;
    case 23:
      v26 = *(this + 8);
      goto LABEL_106;
    case 24:
      v45 = *(*this + 32);
      v46 = CA::ADMBuilder::Impl::parse_uint(this, *(this + 78));
      if (!HIDWORD(v46))
      {
        goto LABEL_118;
      }

      switch(v46)
      {
        case 2:
          v47 = *(v45 - 16);
          if (*(v47 + 169) != 1 || *(v47 + 168) == 2)
          {
            v82 = 258;
            goto LABEL_144;
          }

          v48 = CA::ADMBuilder::Impl::log(v46);
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v45 - 16), "");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v89 = "ADMBuilder.cpp";
          v90 = 1024;
          v91 = 1510;
          v92 = 2080;
          v93 = p_p;
          goto LABEL_155;
        case 1:
          v47 = *(v45 - 16);
          if (*(v47 + 169) != 1 || *(v47 + 168) == 1)
          {
            v82 = 257;
            goto LABEL_144;
          }

          v48 = CA::ADMBuilder::Impl::log(v46);
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }

          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v45 - 16), "");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &__p;
          }

          else
          {
            v85 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          v89 = "ADMBuilder.cpp";
          v90 = 1024;
          v91 = 1500;
          v92 = 2080;
          v93 = v85;
LABEL_155:
          _os_log_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting dialogue type in content '%s'", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_157;
        case 0:
          v47 = *(v45 - 16);
          if (*(v47 + 169) == 1 && *(v47 + 168))
          {
            v48 = CA::ADMBuilder::Impl::log(v46);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v45 - 16), "");
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v49 = &__p;
              }

              else
              {
                v49 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              v89 = "ADMBuilder.cpp";
              v90 = 1024;
              v91 = 1488;
              v92 = 2080;
              v93 = v49;
              goto LABEL_155;
            }

LABEL_157:
            v67 = -66602;
            goto LABEL_158;
          }

          v82 = 256;
LABEL_144:
          *(v47 + 168) = v82;
          goto LABEL_118;
      }

      v83 = CA::ADMBuilder::Impl::log(v46);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(v45 - 16), "");
        v84 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v89 = "ADMBuilder.cpp";
        v90 = 1024;
        v91 = 1518;
        v92 = 2080;
        v93 = v84;
        _os_log_impl(&dword_18F5DF000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown dialogue type in content '%s'", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v67 = -66598;
LABEL_158:
      *(this + 158) = v67;
LABEL_118:
      v80 = *(this + 78);
      if (v80)
      {
        *(this + 78) = 0;
        std::default_delete<std::string>::operator()[abi:ne200100](v80);
      }

LABEL_120:
      v81 = *MEMORY[0x1E69E9840];
      return;
    case 25:
      v61 = *(this + 78);
      v62 = *(*(*this + 32) - 16) + 176;
      goto LABEL_107;
    case 27:
      v26 = *(this + 11);
      goto LABEL_106;
    case 28:
      v26 = *(this + 14);
      goto LABEL_106;
    case 29:
      v12 = *(this + 78);
      v13 = *(*(*(*this + 56) - 16) + 200);
      goto LABEL_115;
    case 30:
      v12 = *(this + 78);
      v13 = *(*(*(*this + 56) - 16) + 224);
      goto LABEL_115;
    case 31:
      v26 = *(this + 17);
      goto LABEL_106;
    case 32:
      v26 = *(this + 20);
      goto LABEL_106;
    case 34:
      *(*(*(*this + 56) - 16) + 388) = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      goto LABEL_118;
    case 35:
      *(*(*(*this + 56) - 16) + 418) = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      goto LABEL_118;
    case 37:
      v12 = *(this + 78);
      v13 = *(*(*(*(*this + 56) - 16) + 432) - 152);
      goto LABEL_115;
    case 39:
      *(*(*(*(*this + 56) - 16) + 432) - 36) = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      goto LABEL_118;
    case 40:
      *(*(*(*(*this + 56) - 16) + 432) - 8) = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      goto LABEL_118;
    case 42:
      v26 = *(this + 23);
      goto LABEL_106;
    case 43:
      v26 = *(this + 26);
      goto LABEL_106;
    case 44:
      v26 = *(this + 29);
      goto LABEL_106;
    case 45:
      v26 = *(this + 32);
      goto LABEL_106;
    case 46:
      v14 = *(this + 78);
      v15 = *(this + 35);
      goto LABEL_102;
    case 47:
      v14 = *(this + 78);
      v15 = *(this + 38);
      goto LABEL_102;
    case 48:
      v59 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v60 = *(*(*this + 80) - 16);
      *(v60 + 188) = BYTE4(v59);
      *(v60 + 184) = v59;
      goto LABEL_118;
    case 49:
      v14 = *(this + 78);
      v21 = *(*(*this + 80) - 16) + 272;
      goto LABEL_103;
    case 50:
      v22 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v23 = *(*(*this + 80) - 16);
      *(v23 + 308) = BYTE4(v22);
      *(v23 + 304) = v22;
      goto LABEL_118;
    case 51:
      *(*(*(*this + 80) - 16) + 312) = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      goto LABEL_118;
    case 54:
      v14 = *(this + 78);
      v21 = *(*(*this + 272) - 16) + 48;
      goto LABEL_103;
    case 55:
      v14 = *(this + 78);
      v21 = *(*(*this + 272) - 16) + 80;
      goto LABEL_103;
    case 56:
      v14 = *(this + 78);
      v21 = *(*(*this + 272) - 16) + 112;
      goto LABEL_103;
    case 57:
      v14 = *(this + 78);
      v15 = *(this + 68);
      goto LABEL_102;
    case 58:
      v14 = *(this + 78);
      v15 = *(this + 62);
      goto LABEL_102;
    case 59:
      v14 = *(this + 78);
      v15 = *(this + 65);
      goto LABEL_102;
    case 61:
      v24 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v25 = *(*(*this + 128) - 16);
      *(v25 + 132) = BYTE4(v24);
      *(v25 + 128) = v24;
      goto LABEL_118;
    case 62:
      v43 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v44 = *(*(*this + 128) - 16);
      *(v44 + 140) = BYTE4(v43);
      *(v44 + 136) = v43;
      goto LABEL_118;
    case 64:
      v50 = CA::ADMBuilder::Impl::parse_uint(this, *(this + 78));
      v51 = (*(*(*(*this + 128) - 16) + 152) - 372);
      *(*(*(*(*this + 128) - 16) + 152) - 368) = BYTE4(v50);
      goto LABEL_113;
    case 65:
      v72 = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      v73 = (*(*(*(*this + 128) - 16) + 152) - 364);
      goto LABEL_98;
    case 66:
      v14 = *(this + 78);
      v21 = *(*(*(*this + 128) - 16) + 152) - 296;
      goto LABEL_103;
    case 67:
      v14 = *(this + 78);
      v15 = *(*(this + 71) - 16);
      goto LABEL_102;
    case 68:
      v16 = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      if (v16 >= 0x100u)
      {
        *(*(*(*(*this + 128) - 16) + 152) - 316) = v16;
      }

      goto LABEL_118;
    case 70:
      v52 = *(this + 74);
LABEL_105:
      v26 = *(v52 - 16);
      goto LABEL_106;
    case 71:
      v74 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v75 = *(*(*(*this + 128) - 16) + 152);
      *(v75 - 172) = BYTE4(v74);
      *(v75 - 176) = v74;
      goto LABEL_118;
    case 72:
      v19 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v20 = *(*(*(*this + 128) - 16) + 152);
      *(v20 - 164) = BYTE4(v19);
      *(v20 - 168) = v19;
      goto LABEL_118;
    case 73:
      v55 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v56 = *(*(*(*this + 128) - 16) + 152);
      *(v56 - 156) = BYTE4(v55);
      *(v56 - 160) = v55;
      goto LABEL_118;
    case 74:
      v63 = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      if (*(this + 158))
      {
        goto LABEL_118;
      }

      v64 = *(*(*(*this + 128) - 16) + 152);
      if (*(v64 - 151) != 1)
      {
        *(v64 - 152) = v63;
        goto LABEL_118;
      }

      if ((v63 & 0xFF00) >> 8 == 1 && *(v64 - 152) == v63)
      {
        goto LABEL_118;
      }

      v65 = CA::ADMBuilder::Impl::log(v63);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*(*this + 128) - 16) + 152) - 480, "");
        v66 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v89 = "ADMBuilder.cpp";
        v90 = 1024;
        v91 = 1649;
        v92 = 2080;
        v93 = v66;
        _os_log_impl(&dword_18F5DF000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems in block format '%s'", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v67 = -66603;
      goto LABEL_158;
    case 75:
      v17 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v18 = *(*(*(*this + 128) - 16) + 152);
      *(v18 - 144) = BYTE4(v17);
      *(v18 - 148) = v17;
      goto LABEL_118;
    case 76:
      v71 = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      if (v71 >= 0x100u)
      {
        *(*(*(*(*this + 128) - 16) + 152) - 140) = v71;
      }

      goto LABEL_118;
    case 77:
      v68 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      if (HIDWORD(v68))
      {
        *(*(*(*(*this + 128) - 16) + 152) - 124) = v68;
      }

      goto LABEL_118;
    case 79:
      v12 = *(this + 78);
      v13 = *(*(*(*(*this + 128) - 16) + 152) - 104);
LABEL_115:
      v78 = v13 - 24;
      if (*(v13 - 1) < 0)
      {
        operator delete(*v78);
      }

      v79 = *v12;
      *(v78 + 16) = *(v12 + 2);
      *v78 = v79;
      *(v12 + 23) = 0;
      *v12 = 0;
      goto LABEL_118;
    case 80:
      v14 = *(this + 78);
      v21 = *(*(*(*this + 128) - 16) + 152) - 88;
      goto LABEL_103;
    case 81:
      v76 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v77 = *(*(*(*this + 128) - 16) + 152);
      if (*(v77 - 52) == BYTE4(v76))
      {
        if (*(v77 - 52))
        {
          *(v77 - 56) = *&v76;
        }
      }

      else if (*(v77 - 52))
      {
        *(v77 - 52) = 0;
      }

      else
      {
        *(v77 - 56) = *&v76;
        *(v77 - 52) = 1;
      }

      goto LABEL_118;
    case 82:
      v69 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v70 = *(*(*(*this + 128) - 16) + 152);
      if (*(v70 - 44) == BYTE4(v69))
      {
        if (*(v70 - 44))
        {
          *(v70 - 48) = *&v69;
        }
      }

      else if (*(v70 - 44))
      {
        *(v70 - 44) = 0;
      }

      else
      {
        *(v70 - 48) = *&v69;
        *(v70 - 44) = 1;
      }

      goto LABEL_118;
    case 83:
      v14 = *(this + 78);
      v21 = *(*(*(*this + 128) - 16) + 152) - 40;
      goto LABEL_103;
    case 84:
      v27 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      v28 = *(*(*(*this + 128) - 16) + 152);
      *(v28 - 4) = BYTE4(v27);
      *(v28 - 8) = v27;
      goto LABEL_118;
    case 85:
      v72 = CA::ADMBuilder::Impl::parse_BOOL(this, *(this + 78));
      v73 = (*(*(*(*this + 128) - 16) + 152) - 300);
LABEL_98:
      *v73 = v72;
      goto LABEL_118;
    case 87:
      v14 = *(this + 78);
      v15 = *(this + 59);
      goto LABEL_102;
    case 89:
      v14 = *(this + 78);
      v15 = *(this + 50);
      goto LABEL_102;
    case 90:
      v14 = *(this + 78);
      v15 = *(this + 53);
LABEL_102:
      v21 = v15 - 32;
LABEL_103:
      std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(v21, v14);
      goto LABEL_118;
    case 91:
      v26 = *(this + 56);
LABEL_106:
      v62 = v26 - 24;
      v61 = *(this + 78);
LABEL_107:
      std::vector<std::string>::push_back[abi:ne200100](v62, v61);
      goto LABEL_118;
    case 92:
      v50 = CA::ADMBuilder::Impl::parse_float(this, *(this + 78));
      if (HIDWORD(v50))
      {
        v51 = *(this + 76);
LABEL_113:
        *v51 = v50;
      }

      goto LABEL_118;
    default:
      goto LABEL_118;
  }
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::vector<CA::ADMLoudnessMetadata>::push_back[abi:ne200100](void *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 4);
    if (v7 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xE38E38E38E38E3)
    {
      v10 = 0x1C71C71C71C71C7;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * ((v3 - *a1) >> 4);
    std::construct_at[abi:ne200100]<CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata*>(v11, a2);
    v6 = v11 + 144;
    v21 = (v11 + 144);
    v12 = *a1;
    v13 = a1[1];
    v14 = *a1 - v13;
    v15 = v11 + v14;
    if (v13 != *a1)
    {
      v16 = v11 + v14;
      v17 = *a1;
      do
      {
        std::construct_at[abi:ne200100]<CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata*>(v16, v17);
        v17 += 9;
        v16 = v18 + 144;
      }

      while (v17 != v13);
      do
      {
        std::allocator_traits<std::allocator<CA::ADMLoudnessMetadata>>::destroy[abi:ne200100]<CA::ADMLoudnessMetadata,void,0>(v12);
        v12 += 144;
      }

      while (v12 != v13);
    }

    v19 = *a1;
    *a1 = v15;
    *&v20 = v19;
    *(&v20 + 1) = a1[2];
    *(a1 + 1) = v21;
    while (v20 != v19)
    {
      *&v20 = v20 - 144;
      v22 = v20;
      std::allocator_traits<std::allocator<CA::ADMLoudnessMetadata>>::destroy[abi:ne200100]<CA::ADMLoudnessMetadata,void,0>(v20);
      v20 = v22;
    }

    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata*>(v3, a2);
    v6 = v5 + 144;
  }

  a1[1] = v6;
}

void sub_18F6BD488(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 632) = -66607;
  __cxa_end_catch();
  JUMPOUT(0x18F6BD474);
}

uint64_t CA::ADMBuilder::Impl::parse_uint(uint64_t a1, std::string *__str)
{
  v3 = std::stoi(__str, 0, 10);
  if (v3 < 0)
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
    *(a1 + 632) = -66606;
  }

  else
  {
    v4 = v3 & 0x7FFFFF00;
    v5 = v3;
    v6 = 0x100000000;
  }

  return v6 | v4 | v5;
}

void sub_18F6BD50C(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 632) = -66606;
  __cxa_end_catch();
  JUMPOUT(0x18F6BD4F8);
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(std::string *a1, uint64_t a2, char *__s)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      a1->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, __s);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_BOOL(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 1)
    {
      goto LABEL_11;
    }

    v3 = **a2;
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_11;
    }

    v3 = *a2;
  }

  if (v3 != 48)
  {
    if (v3 == 49)
    {
      v4 = 1;
      goto LABEL_10;
    }

LABEL_11:
    v4 = 0;
    v5 = 0;
    *(a1 + 632) = -66605;
    return v4 | (v5 << 8);
  }

  v4 = 0;
LABEL_10:
  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

__n128 std::construct_at[abi:ne200100]<CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata,CA::ADMLoudnessMetadata*>(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 32) = v3;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(a1 + 56) = 1;
  }

  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v4;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    *(a1 + 88) = 1;
  }

  result = a2[6];
  v6 = a2[7];
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = result;
  *(a1 + 112) = v6;
  return result;
}

void CA::ADMBuilder::Impl::xml_characters_stub(CA::ADMBuilder::Impl *this, void *__src, const unsigned __int8 *a3)
{
  if (!*(this + 158))
  {
    if ((a3 & 0x80000000) != 0)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = a3;
    if (a3 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a3;
    if (a3)
    {
      memcpy(&__dst, __src, a3);
    }

    __dst.__r_.__value_.__s.__data_[v4] = 0;
    v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v6 = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v9 = MEMORY[0x1E69E9830];
    if (size)
    {
      v10 = (p_dst + size);
      v11 = p_dst;
      while (1)
      {
        v12 = v11->__r_.__value_.__s.__data_[0];
        if (!((v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(v9 + 4 * v12 + 60) & 0x4000))
        {
          break;
        }

        v11 = (v11 + 1);
        if (!--size)
        {
          v11 = v10;
          break;
        }
      }

      v5 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v6 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = p_dst;
    }

    if (v5 >= 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = v6;
    }

    std::string::erase(&__dst, p_dst - v14, v11 - p_dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = (&__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v15 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__dst;
    }

    else
    {
      v16 = __dst.__r_.__value_.__r.__words[0];
    }

    while (v15 != v16)
    {
      v18 = SHIBYTE(v15[-1].__r_.__value_.__r.__words[2]);
      v15 = (v15 - 1);
      v17 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v19 = __maskrune(v17, 0x4000uLL);
      }

      else
      {
        v19 = *(v9 + 4 * v17 + 60) & 0x4000;
      }

      if (!v19)
      {
        v16 = (&v15->__r_.__value_.__l.__data_ + 1);
        break;
      }
    }

    v20 = &__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__dst;
    }

    else
    {
      v20 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
      v21 = __dst.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&__dst, v16 - v21, v20 - v16);
    v22 = *(this + 78);
    if (v22)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__dst;
      }

      else
      {
        v23 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(v22, v23, v24);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void sub_18F6BD91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CA::ADMBuilder::Impl::xml_start_element_stub(CA::ADMBuilder::Impl *this, void *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, const unsigned __int8 *a5, int a6, const unsigned __int8 **a7, int a8, uint64_t a9, const unsigned __int8 **a10)
{
  memset(v10, 0, 24);
  v10[4] = v10;
  v11 = 0;
  if (a7)
  {
    if ((a7 & 0x80000000) == 0)
    {
      std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](a7);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_18F6BE3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, __int128 a13, char a14, uint64_t a15, uint64_t a16, char *a17, char a18)
{
  operator delete(v18);
  if (a13)
  {
    operator delete(a13);
  }

  operator delete(__p);
  a17 = &a14;
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::__function::__func<CA::ADMBuilder::Impl::Impl(void)::$_0,std::allocator<CA::ADMBuilder::Impl::Impl(void)::$_0>,void ()(_xmlParserCtxt *)>::operator()(uint64_t a1, xmlParserCtxtPtr *a2)
{
  if (*a2)
  {
    xmlFreeParserCtxt(*a2);
  }
}

void CA::ADMBuilder::~ADMBuilder(CA::ADMBuilder *this)
{
  std::unique_ptr<CA::ADMBuilder::Impl>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<CA::ADMBuilder::Impl>::reset[abi:ne200100](this, 0);
}

uint64_t *std::unique_ptr<CA::ADMBuilder::Impl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<_xmlParserCtxt,std::function<void ()(_xmlParserCtxt*)>>::reset[abi:ne200100]((v2 + 1040), 0);
    std::__function::__value_func<void ()(_xmlParserCtxt *)>::~__value_func[abi:ne200100](v2 + 1048);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v2 + 1000);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v2 + 960);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v2 + 920);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMPackFormat>>>>::~__hash_table(v2 + 880);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 840);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 800);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 760);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 720);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 680);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 640);
    v3 = *(v2 + 624);
    *(v2 + 624) = 0;
    if (v3)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](v3);
    }

    std::unique_ptr<CA::ADMLoudnessMetadata>::reset[abi:ne200100]((v2 + 616), 0);
    v4 = (v2 + 584);
    std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 560);
    std::vector<std::vector<std::optional<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 536);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 512);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 488);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 464);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 440);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 416);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 392);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 368);
    std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 344);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 320);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 296);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 272);
    std::vector<std::optional<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 248);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 224);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 200);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 176);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 152);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 128);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 104);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 80);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 56);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
    std::deque<CA::ADMBuilder::Impl::ADMElement>::~deque[abi:ne200100](v2 + 8);
    std::unique_ptr<CA::ADM>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void *CA::ADMBuilder::ADMBuilder(void *result, uint64_t *a2)
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

uint64_t *CA::ADMBuilder::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<CA::ADMBuilder::Impl>::reset[abi:ne200100](a1, v3);
  return a1;
}

uint64_t CA::ADMBuilder::parse(CA::ADMBuilder *this, const char *a2, int a3, int a4)
{
  v5 = *this;
  result = *(*this + 632);
  if (!result)
  {
    xmlParseChunk(*(v5 + 1040), a2, a3, a4);
    return *(*this + 632);
  }

  return result;
}

void CA::ADMBuilder::build(std::string::size_type this@<X0>, int8x8_t *a2@<X8>)
{
  v190 = *MEMORY[0x1E69E9840];
  v186 = this;
  v3 = *this;
  v4 = **this;
  if (!v4)
  {
    goto LABEL_291;
  }

  v5 = *v4;
  if (v4[1] == *v4)
  {
LABEL_64:
    if (v4[4] == v4[3])
    {
      goto LABEL_77;
    }

    v48 = a2;
    v49 = 0;
    v50 = v3[7];
    do
    {
      if (*(*&v50 + 24 * v49 + 8) == *(*&v50 + 24 * v49))
      {
        goto LABEL_75;
      }

      v51 = 0;
      do
      {
        v52 = *v3;
        v53 = *(*v3 + 48);
        v54 = *(*v3 + 56);
        if (v53 == v54)
        {
LABEL_280:
          v166 = CA::ADMBuilder::Impl::log(this);
          if (!os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
          {
            a2 = v48;
            goto LABEL_291;
          }

          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 24) + 16 * v49), "");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v171 = *(*&v3[7] + 24 * v49) + 24 * v51;
          if (*(v171 + 23) < 0)
          {
            v171 = *v171;
          }

          a2 = v48;
          *buf = 136315906;
          *&buf[4] = "ADMBuilder.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 258;
          *&buf[18] = 2080;
          *&buf[20] = p_p;
          *&buf[28] = 2080;
          *&buf[30] = v171;
          v169 = "%25s:%-5d Content '%s' references unknown object '%s'";
          goto LABEL_287;
        }

        v55 = (*(*&v50 + 24 * v49) + 24 * v51);
        while (1)
        {
          this = std::operator==[abi:ne200100]<std::string,std::string>(v55, *v53);
          if (this)
          {
            break;
          }

          if (++v53 == v54)
          {
            goto LABEL_280;
          }
        }

        this = std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*&v52 + 24) + 16 * v49) + 120), v53);
        ++v51;
        v50 = v3[7];
      }

      while (v51 < 0xAAAAAAAAAAAAAAABLL * ((*(*&v50 + 24 * v49 + 8) - *(*&v50 + 24 * v49)) >> 3));
      v4 = *v3;
LABEL_75:
      ++v49;
    }

    while (v49 < (v4[4] - v4[3]) >> 4);
    v3 = *v186;
    v4 = **v186;
    a2 = v48;
LABEL_77:
    if (v4[7] == v4[6])
    {
LABEL_145:
      if (v4[10] == v4[9])
      {
LABEL_247:
        if (v4[28] != v4[27])
        {
          v184 = a2;
          v153 = 0;
          v154 = 0;
          v155 = 0;
          do
          {
            v156 = v3[58];
            v157 = (*&v156 + v153);
            if (*(*&v156 + v153 + 24) == 1)
            {
              CA::ADMBuilder::Impl::resolve_stream_format_reference(&v187, v3, *&v156 + v153);
              v159 = v187.__r_.__value_.__r.__words[0];
              if (v187.__r_.__value_.__r.__words[0])
              {
                v160 = *(*(*v3 + 216) + v154);
                size = v187.__r_.__value_.__l.__size_;
                if (v187.__r_.__value_.__l.__size_)
                {
                  atomic_fetch_add_explicit((v187.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
                }

                v162 = *(v160 + 136);
                *(v160 + 128) = v159;
                *(v160 + 136) = size;
                if (v162)
                {
                  std::__shared_weak_count::__release_weak(v162);
                }
              }

              else
              {
                v163 = CA::ADMBuilder::Impl::log(v158);
                if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                {
                  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 216) + v154), "");
                  v164 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v164 = __p.__r_.__value_.__r.__words[0];
                  }

                  if (*(*&v156 + v153 + 23) < 0)
                  {
                    v157 = *v157;
                  }

                  *buf = 136315906;
                  *&buf[4] = "ADMBuilder.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 428;
                  *&buf[18] = 2080;
                  *&buf[20] = v164;
                  *&buf[28] = 2080;
                  *&buf[30] = v157;
                  _os_log_impl(&dword_18F5DF000, v163, OS_LOG_TYPE_ERROR, "%25s:%-5d Track format '%s' references unknown stream format '%s'", buf, 0x26u);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }

              if (v187.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
              }

              if (!v159)
              {
                goto LABEL_279;
              }

              v4 = *v3;
            }

            ++v155;
            v154 += 16;
            v153 += 32;
          }

          while (v155 < (v4[28] - v4[27]) >> 4);
          v3 = *v186;
          a2 = v184;
        }

        if (CA::ADMBuilder::Impl::build_stream_formats(v3) && CA::ADMBuilder::Impl::build_track_uids(*v186) && CA::ADMBuilder::Impl::build_channel_formats(*v186))
        {
          v165 = *v186;
          *a2 = **v186;
          a2 = v165;
        }

        goto LABEL_291;
      }

      v184 = a2;
      v102 = 0;
      while (1)
      {
        v103 = (*&v3[25] + 24 * v102);
        v105 = *v103;
        v104 = v103[1];
        while (v105 != v104)
        {
          v106 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v105);
          v107 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*v3 + 72) + 16 * v102) + 160), &v187);
          }

          else
          {
            v108 = CA::ADMBuilder::Impl::log(v106);
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v109 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v109 = __p.__r_.__value_.__r.__words[0];
              }

              v110 = v105;
              if (*(v105 + 23) < 0)
              {
                v110 = *v105;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 355;
              *&buf[18] = 2080;
              *&buf[20] = v109;
              *&buf[28] = 2080;
              *&buf[30] = v110;
              _os_log_impl(&dword_18F5DF000, v108, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v107)
          {
            goto LABEL_279;
          }

          v105 += 24;
        }

        v111 = (*&v3[28] + 24 * v102);
        v113 = *v111;
        v112 = v111[1];
        while (v113 != v112)
        {
          v114 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v113);
          v115 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            v116 = *(*(*v3 + 72) + 16 * v102);
            *buf = *&v187.__r_.__value_.__l.__data_;
            if (v187.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v187.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            }

            std::vector<std::weak_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((v116 + 192), buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }
          }

          else
          {
            v117 = CA::ADMBuilder::Impl::log(v114);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v118 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v118 = __p.__r_.__value_.__r.__words[0];
              }

              v119 = v113;
              if (*(v113 + 23) < 0)
              {
                v119 = *v113;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 366;
              *&buf[18] = 2080;
              *&buf[20] = v118;
              *&buf[28] = 2080;
              *&buf[30] = v119;
              _os_log_impl(&dword_18F5DF000, v117, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown encode pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v115)
          {
            goto LABEL_279;
          }

          v113 += 24;
        }

        v120 = (*&v3[31] + 24 * v102);
        v122 = *v120;
        v121 = v120[1];
        while (v122 != v121)
        {
          v123 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v122);
          v124 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            v125 = *(*(*v3 + 72) + 16 * v102);
            *buf = *&v187.__r_.__value_.__l.__data_;
            if (v187.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v187.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            }

            std::vector<std::weak_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((v125 + 216), buf);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }
          }

          else
          {
            v126 = CA::ADMBuilder::Impl::log(v123);
            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v127 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v127 = __p.__r_.__value_.__r.__words[0];
              }

              v128 = v122;
              if (*(v122 + 23) < 0)
              {
                v128 = *v122;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 377;
              *&buf[18] = 2080;
              *&buf[20] = v127;
              *&buf[28] = 2080;
              *&buf[30] = v128;
              _os_log_impl(&dword_18F5DF000, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown decode pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v124)
          {
            goto LABEL_279;
          }

          v122 += 24;
        }

        v129 = *&v3[34] + 32 * v102;
        if (*(v129 + 24) == 1)
        {
          v130 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, *&v3[34] + 32 * v102);
          v131 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            v132 = *(*(*v3 + 72) + 16 * v102);
            v133 = v187.__r_.__value_.__l.__size_;
            if (v187.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v187.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            }

            v134 = *(v132 + 248);
            *(v132 + 240) = v131;
            *(v132 + 248) = v133;
            if (v134)
            {
              std::__shared_weak_count::__release_weak(v134);
            }
          }

          else
          {
            v135 = CA::ADMBuilder::Impl::log(v130);
            if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v136 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v136 = __p.__r_.__value_.__r.__words[0];
              }

              if (*(v129 + 23) < 0)
              {
                v129 = *v129;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 388;
              *&buf[18] = 2080;
              *&buf[20] = v136;
              *&buf[28] = 2080;
              *&buf[30] = v129;
              _os_log_impl(&dword_18F5DF000, v135, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown input pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v131)
          {
            goto LABEL_279;
          }
        }

        v137 = *&v3[37] + 32 * v102;
        if (*(v137 + 24) == 1)
        {
          v138 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, *&v3[37] + 32 * v102);
          v139 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            v140 = *(*(*v3 + 72) + 16 * v102);
            v141 = v187.__r_.__value_.__l.__size_;
            if (v187.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v187.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
            }

            v142 = *(v140 + 264);
            *(v140 + 256) = v139;
            *(v140 + 264) = v141;
            if (v142)
            {
              std::__shared_weak_count::__release_weak(v142);
            }
          }

          else
          {
            v143 = CA::ADMBuilder::Impl::log(v138);
            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v144 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v144 = __p.__r_.__value_.__r.__words[0];
              }

              if (*(v137 + 23) < 0)
              {
                v137 = *v137;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 400;
              *&buf[18] = 2080;
              *&buf[20] = v144;
              *&buf[28] = 2080;
              *&buf[30] = v137;
              _os_log_impl(&dword_18F5DF000, v143, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown output pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v139)
          {
            goto LABEL_279;
          }
        }

        v145 = (*&v3[22] + 24 * v102);
        v147 = *v145;
        v146 = v145[1];
        while (v147 != v146)
        {
          CA::ADMBuilder::Impl::resolve_channel_format_reference(&v187, v3, v147);
          v149 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*v3 + 72) + 16 * v102) + 136), &v187);
          }

          else
          {
            v150 = CA::ADMBuilder::Impl::log(v148);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 72) + 16 * v102), "");
              v151 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v151 = __p.__r_.__value_.__r.__words[0];
              }

              v152 = v147;
              if (*(v147 + 23) < 0)
              {
                v152 = *v147;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 410;
              *&buf[18] = 2080;
              *&buf[20] = v151;
              *&buf[28] = 2080;
              *&buf[30] = v152;
              _os_log_impl(&dword_18F5DF000, v150, OS_LOG_TYPE_ERROR, "%25s:%-5d Pack format '%s' references unknown channel format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v149)
          {
            goto LABEL_279;
          }

          v147 += 24;
        }

        if (++v102 >= ((*(*v3 + 80) - *(*v3 + 72)) >> 4))
        {
          v3 = *v186;
          v4 = **v186;
          a2 = v184;
          goto LABEL_247;
        }
      }
    }

    v56 = 0;
    while (1)
    {
      v57 = *(*&v3[10] + 24 * v56);
      if (*(*&v3[10] + 24 * v56 + 8) != v57)
      {
        v58 = 0;
        while (1)
        {
          v59 = *(*v3 + 48);
          v60 = *(*v3 + 56);
          if (v59 == v60)
          {
LABEL_292:
            v166 = CA::ADMBuilder::Impl::log(this);
            if (!os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_291;
            }

            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 48) + 16 * v56), "");
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v173 = &__p;
            }

            else
            {
              v173 = __p.__r_.__value_.__r.__words[0];
            }

            v174 = *(*&v3[10] + 24 * v56) + 24 * v58;
            if (*(v174 + 23) < 0)
            {
              v174 = *v174;
            }

            *buf = 136315906;
            *&buf[4] = "ADMBuilder.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 288;
            *&buf[18] = 2080;
            *&buf[20] = v173;
            *&buf[28] = 2080;
            *&buf[30] = v174;
            v169 = "%25s:%-5d Object '%s' references unknown object '%s'";
            goto LABEL_287;
          }

          v61 = (v57 + 24 * v58);
          v62 = *(*v3 + 48);
          while (1)
          {
            this = std::operator==[abi:ne200100]<std::string,std::string>(v61, *v62);
            if (this)
            {
              break;
            }

            if (++v62 == v60)
            {
              goto LABEL_292;
            }
          }

          if (v63)
          {
            break;
          }

          this = std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*&v59[v56] + 168), v62);
          ++v58;
          v57 = *(*&v3[10] + 24 * v56);
          if (v58 >= 0xAAAAAAAAAAAAAAABLL * ((*(*&v3[10] + 24 * v56 + 8) - v57) >> 3))
          {
            goto LABEL_88;
          }
        }

        v179 = CA::ADMBuilder::Impl::log(v63);
        if (!os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_291;
        }

        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 48) + 16 * v56), "");
        v180 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v181 = __p.__r_.__value_.__r.__words[0];
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v187, *v62, "");
        v182 = &__p;
        if (v180 < 0)
        {
          v182 = v181;
        }

        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v183 = &v187;
        }

        else
        {
          v183 = v187.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "ADMBuilder.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 277;
        *&buf[18] = 2080;
        *&buf[20] = v182;
        *&buf[28] = 2080;
        *&buf[30] = v183;
        _os_log_impl(&dword_18F5DF000, v179, OS_LOG_TYPE_ERROR, "%25s:%-5d Object '%s' referencing object '%s' leads to a reference cycle", buf, 0x26u);
        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

        goto LABEL_288;
      }

LABEL_88:
      v64 = *(*&v3[19] + 24 * v56);
      if (*(*&v3[19] + 24 * v56 + 8) != v64)
      {
        break;
      }

LABEL_106:
      v75 = *(*&v3[16] + 24 * v56);
      if (*(*&v3[16] + 24 * v56 + 8) != v75)
      {
        v76 = 0;
        while (1)
        {
          v77 = *(*v3 + 48);
          v78 = *(*v3 + 56);
          if (v77 == v78)
          {
            break;
          }

          v79 = (v75 + 24 * v76);
          v80 = *(*v3 + 48);
          while (1)
          {
            this = std::operator==[abi:ne200100]<std::string,std::string>(v79, *v80);
            if (this)
            {
              break;
            }

            if (++v80 == v78)
            {
              goto LABEL_306;
            }
          }

          v81 = *&v77[v56];
          v185 = *v80;
          if (*(v80 + 1))
          {
            atomic_fetch_add_explicit(((*(v80 + 8) >> 64) + 16), 1uLL, memory_order_relaxed);
          }

          v83 = v81[31];
          v82 = v81[32];
          if (v83 >= v82)
          {
            v85 = v81[30];
            v86 = v83 - v85;
            v87 = (v83 - v85) >> 4;
            v88 = v87 + 1;
            if ((v87 + 1) >> 60)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v89 = v82 - v85;
            if (v89 >> 3 > v88)
            {
              v88 = v89 >> 3;
            }

            if (v89 >= 0x7FFFFFFFFFFFFFF0)
            {
              v90 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v90 = v88;
            }

            if (v90)
            {
              std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v90);
            }

            v91 = v87;
            v92 = (16 * v87);
            v93 = &v92[-v91];
            *v92 = v185;
            v84 = v92 + 1;
            memcpy(v93, v85, v86);
            this = v81[30];
            v81[30] = v93;
            v81[31] = v84;
            v81[32] = 0;
            if (this)
            {
              operator delete(this);
            }
          }

          else
          {
            *v83 = v185;
            v84 = v83 + 16;
          }

          v81[31] = v84;
          ++v76;
          v75 = *(*&v3[16] + 24 * v56);
          if (v76 >= 0xAAAAAAAAAAAAAAABLL * ((*(*&v3[16] + 24 * v56 + 8) - v75) >> 3))
          {
            goto LABEL_128;
          }
        }

LABEL_306:
        v166 = CA::ADMBuilder::Impl::log(this);
        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 48) + 16 * v56), "");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v177 = &__p;
          }

          else
          {
            v177 = __p.__r_.__value_.__r.__words[0];
          }

          v178 = *(*&v3[16] + 24 * v56) + 24 * v76;
          if (*(v178 + 23) < 0)
          {
            v178 = *v178;
          }

          *buf = 136315906;
          *&buf[4] = "ADMBuilder.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          *&buf[18] = 2080;
          *&buf[20] = v177;
          *&buf[28] = 2080;
          *&buf[30] = v178;
          v169 = "%25s:%-5d Object '%s' references unknown complementary object '%s'";
          goto LABEL_287;
        }

        goto LABEL_291;
      }

LABEL_128:
      v94 = *(*&v3[13] + 24 * v56);
      if (*(*&v3[13] + 24 * v56 + 8) != v94)
      {
        v95 = 0;
        v96 = 0;
        do
        {
          v97 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v94 + v95);
          v98 = v187.__r_.__value_.__r.__words[0];
          if (v187.__r_.__value_.__r.__words[0])
          {
            std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*v3 + 48) + 16 * v56) + 144), &v187);
          }

          else
          {
            v99 = CA::ADMBuilder::Impl::log(v97);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 48) + 16 * v56), "");
              v100 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v100 = __p.__r_.__value_.__r.__words[0];
              }

              v101 = (*(*&v3[13] + 24 * v56) + v95);
              if (*(v101 + 23) < 0)
              {
                v101 = *v101;
              }

              *buf = 136315906;
              *&buf[4] = "ADMBuilder.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 338;
              *&buf[18] = 2080;
              *&buf[20] = v100;
              *&buf[28] = 2080;
              *&buf[30] = v101;
              _os_log_impl(&dword_18F5DF000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d Object '%s' references unknown pack format '%s'", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          this = v187.__r_.__value_.__l.__size_;
          if (v187.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
          }

          if (!v98)
          {
            goto LABEL_291;
          }

          ++v96;
          v94 = *(*&v3[13] + 24 * v56);
          v95 += 24;
        }

        while (v96 < 0xAAAAAAAAAAAAAAABLL * ((*(*&v3[13] + 24 * v56 + 8) - v94) >> 3));
      }

      if (++v56 >= ((*(*v3 + 56) - *(*v3 + 48)) >> 4))
      {
        v3 = *v186;
        v4 = **v186;
        goto LABEL_145;
      }
    }

    v65 = 0;
    while (2)
    {
      v66 = (v64 + 24 * v65);
      v67 = *(v66 + 23);
      if (v67 < 0)
      {
        if (v66[1] != 12)
        {
          goto LABEL_99;
        }

        v68 = *v66;
      }

      else
      {
        v68 = (v64 + 24 * v65);
        if (v67 != 12)
        {
          goto LABEL_99;
        }
      }

      v69 = *v68;
      v70 = *(v68 + 2);
      if (v69 == 0x303030305F555441 && v70 == 808464432)
      {
        operator new();
      }

LABEL_99:
      v72 = *v3;
      v74 = *(*v3 + 264);
      v73 = *(*v3 + 272);
      while (1)
      {
        if (v74 == v73)
        {
          v166 = CA::ADMBuilder::Impl::log(this);
          if (!os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_291;
          }

          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*v3 + 48) + 16 * v56), "");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v175 = &__p;
          }

          else
          {
            v175 = __p.__r_.__value_.__r.__words[0];
          }

          v176 = *(*&v3[19] + 24 * v56) + 24 * v65;
          if (*(v176 + 23) < 0)
          {
            v176 = *v176;
          }

          *buf = 136315906;
          *&buf[4] = "ADMBuilder.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 309;
          *&buf[18] = 2080;
          *&buf[20] = v175;
          *&buf[28] = 2080;
          *&buf[30] = v176;
          v169 = "%25s:%-5d Object '%s' references unknown track UID '%s'";
          goto LABEL_287;
        }

        this = std::operator==[abi:ne200100]<std::string,std::string>(v66, *v74);
        if (this)
        {
          break;
        }

        ++v74;
      }

      this = std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*&v72 + 48) + 16 * v56) + 264), v74);
      ++v65;
      v64 = *(*&v3[19] + 24 * v56);
      if (v65 < 0xAAAAAAAAAAAAAAABLL * ((*(*&v3[19] + 24 * v56 + 8) - v64) >> 3))
      {
        continue;
      }

      goto LABEL_106;
    }
  }

  v184 = a2;
  v6 = 0;
LABEL_4:
  v7 = *(*&v3[40] + 24 * v6);
  if (*(*&v3[40] + 24 * v6 + 8) == v7)
  {
    goto LABEL_28;
  }

  v8 = 0;
  while (1)
  {
    v9 = *v3;
    v11 = *(*v3 + 24);
    v10 = *(*v3 + 32);
    if (v11 == v10)
    {
      break;
    }

    v12 = (v7 + 24 * v8);
    while (1)
    {
      v13 = *v11;
      this = std::operator==[abi:ne200100]<std::string,std::string>(v12, *v11);
      if (this)
      {
        break;
      }

      v11 += 2;
      if (v11 == v10)
      {
        goto LABEL_272;
      }
    }

    v14 = *v9 + 368 * v6;
    v15 = v14 + 192;
    v16 = *(v14 + 200);
    v17 = *(v14 + 208);
    if (v16 >= v17)
    {
      v20 = (v16 - *v15) >> 4;
      v21 = v20 + 1;
      if ((v20 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v22 = v17 - *v15;
      if (v22 >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      *&buf[32] = v15;
      if (v23)
      {
        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v23);
      }

      v24 = 16 * v20;
      v25 = *v11;
      *(16 * v20) = *v11;
      if (*(&v25 + 1))
      {
        atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v19 = (v24 + 16);
      v26 = *(v15 + 8) - *v15;
      v27 = v24 - v26;
      memcpy((v24 - v26), *v15, v26);
      v28 = *v15;
      *v15 = v27;
      *&buf[8] = v28;
      *(v15 + 8) = v19;
      *&buf[16] = v28;
      v29 = *(v15 + 16);
      *(v15 + 16) = 0;
      *&buf[24] = v29;
      *buf = v28;
      this = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(buf);
    }

    else
    {
      *v16 = v13;
      v18 = v11[1];
      v16[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v16 + 2;
    }

    *(v15 + 8) = v19;
    ++v8;
    v30 = (*&v3[40] + 24 * v6);
    v7 = *v30;
    if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v30[1] - *v30) >> 3))
    {
      v4 = *v3;
      v5 = **v3;
LABEL_28:
      if (*(v5 + 368 * v6 + 336) == 1)
      {
        v31 = (*&v3[43] + 24 * v6);
        v33 = *v31;
        v32 = v31[1];
        if (*v31 != v32)
        {
          do
          {
            v34 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v33);
            v35 = v187.__r_.__value_.__r.__words[0];
            if (v187.__r_.__value_.__r.__words[0])
            {
              std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((**v3 + 368 * v6 + 288), &v187);
            }

            else
            {
              v36 = CA::ADMBuilder::Impl::log(v34);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, **v3 + 368 * v6, "");
                v37 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v37 = __p.__r_.__value_.__r.__words[0];
                }

                v38 = v33;
                if (*(v33 + 23) < 0)
                {
                  v38 = *v33;
                }

                *buf = 136315906;
                *&buf[4] = "ADMBuilder.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 217;
                *&buf[18] = 2080;
                *&buf[20] = v37;
                *&buf[28] = 2080;
                *&buf[30] = v38;
                _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Programme '%s' references unknown pack format '%s' for reference layout", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            this = v187.__r_.__value_.__l.__size_;
            if (v187.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
            }

            if (!v35)
            {
              goto LABEL_279;
            }

            v33 += 24;
          }

          while (v33 != v32);
          v4 = *v3;
          v5 = **v3;
        }

        if (*(v5 + 368 * v6 + 320) != *(v5 + 368 * v6 + 312))
        {
          v39 = 0;
          do
          {
            v40 = (*(*&v3[46] + 24 * v6) + 24 * v39);
            v42 = *v40;
            v41 = v40[1];
            if (*v40 != v41)
            {
              do
              {
                v43 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v187, v3, v42);
                v44 = v187.__r_.__value_.__r.__words[0];
                if (v187.__r_.__value_.__r.__words[0])
                {
                  std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(**v3 + 368 * v6 + 312) + 120 * v39 + 96), &v187);
                }

                else
                {
                  v45 = CA::ADMBuilder::Impl::log(v43);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, **v3 + 368 * v6, "");
                    v46 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v46 = __p.__r_.__value_.__r.__words[0];
                    }

                    v47 = v42;
                    if (*(v42 + 23) < 0)
                    {
                      v47 = *v42;
                    }

                    *buf = 136315906;
                    *&buf[4] = "ADMBuilder.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 233;
                    *&buf[18] = 2080;
                    *&buf[20] = v46;
                    *&buf[28] = 2080;
                    *&buf[30] = v47;
                    _os_log_impl(&dword_18F5DF000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Programme '%s' references unknown pack format '%s' for reference layout", buf, 0x26u);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }
                }

                this = v187.__r_.__value_.__l.__size_;
                if (v187.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v187.__r_.__value_.__l.__size_);
                }

                if (!v44)
                {
                  goto LABEL_279;
                }

                v42 += 24;
              }

              while (v42 != v41);
              v4 = *v3;
              v5 = **v3;
            }

            ++v39;
          }

          while (v39 < 0xEEEEEEEEEEEEEEEFLL * ((*(v5 + 368 * v6 + 320) - *(v5 + 368 * v6 + 312)) >> 3));
        }
      }

      if (++v6 >= 0xD37A6F4DE9BD37A7 * ((v4[1] - v5) >> 4))
      {
        v3 = *v186;
        v4 = **v186;
        a2 = v184;
        goto LABEL_64;
      }

      goto LABEL_4;
    }
  }

LABEL_272:
  v166 = CA::ADMBuilder::Impl::log(this);
  if (!os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
  {
LABEL_279:
    a2 = v184;
    goto LABEL_291;
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, **v3 + 368 * v6, "");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v167 = &__p;
  }

  else
  {
    v167 = __p.__r_.__value_.__r.__words[0];
  }

  v168 = *(*&v3[40] + 24 * v6) + 24 * v8;
  if (*(v168 + 23) < 0)
  {
    v168 = *v168;
  }

  a2 = v184;
  *buf = 136315906;
  *&buf[4] = "ADMBuilder.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 204;
  *&buf[18] = 2080;
  *&buf[20] = v167;
  *&buf[28] = 2080;
  *&buf[30] = v168;
  v169 = "%25s:%-5d Programme '%s' references unknown content '%s'";
LABEL_287:
  _os_log_impl(&dword_18F5DF000, v166, OS_LOG_TYPE_ERROR, v169, buf, 0x26u);
LABEL_288:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_291:
  *a2 = 0;
  v172 = *MEMORY[0x1E69E9840];
}

void sub_18F6C00D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::build_stream_formats(int8x8_t *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(*this + 176) == *(*this + 168))
  {
LABEL_51:
    result = 1;
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *&this[49] + 32 * v2;
      if (*(v3 + 24) == 1)
      {
        CA::ADMBuilder::Impl::resolve_channel_format_reference(&v30, this, *&this[49] + 32 * v2);
        v5 = v30;
        if (v30)
        {
          v6 = *(*(*this + 168) + 16 * v2);
          v7 = *(&v30 + 1);
          if (*(&v30 + 1))
          {
            atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v8 = *(v6 + 136);
          *(v6 + 128) = v5;
          *(v6 + 136) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          v9 = CA::ADMBuilder::Impl::log(v4);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 168) + 16 * v2), "");
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if (*(v3 + 23) < 0)
            {
              v3 = *v3;
            }

            *buf = 136315906;
            v32 = "ADMBuilder.cpp";
            v33 = 1024;
            v34 = 446;
            v35 = 2080;
            v36 = p_p;
            v37 = 2080;
            v38 = v3;
            _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream format '%s' references unknown channel format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
        }

        if (!v5)
        {
          break;
        }
      }

      v11 = *&this[52] + 32 * v2;
      if (*(v11 + 24) == 1)
      {
        v12 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v30, this, *&this[52] + 32 * v2);
        v13 = v30;
        if (v30)
        {
          v14 = *(*(*this + 168) + 16 * v2);
          v15 = *(&v30 + 1);
          if (*(&v30 + 1))
          {
            atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v16 = *(v14 + 152);
          *(v14 + 144) = v13;
          *(v14 + 152) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        else
        {
          v17 = CA::ADMBuilder::Impl::log(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 168) + 16 * v2), "");
            v18 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v18 = __p.__r_.__value_.__r.__words[0];
            }

            if (*(v11 + 23) < 0)
            {
              v11 = *v11;
            }

            *buf = 136315906;
            v32 = "ADMBuilder.cpp";
            v33 = 1024;
            v34 = 457;
            v35 = 2080;
            v36 = v18;
            v37 = 2080;
            v38 = v11;
            _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream format '%s' references unknown pack format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
        }

        if (!v13)
        {
          break;
        }
      }

      v19 = (*&this[55] + 24 * v2);
      v21 = *v19;
      v20 = v19[1];
      while (v21 != v20)
      {
        CA::ADMBuilder::Impl::resolve_track_format_reference(&v30, this, v21);
        v23 = v30;
        if (v30)
        {
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100]((*(*(*this + 168) + 16 * v2) + 160), &v30);
        }

        else
        {
          v24 = CA::ADMBuilder::Impl::log(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 168) + 16 * v2), "");
            v25 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            v26 = v21;
            if (*(v21 + 23) < 0)
            {
              v26 = *v21;
            }

            *buf = 136315906;
            v32 = "ADMBuilder.cpp";
            v33 = 1024;
            v34 = 467;
            v35 = 2080;
            v36 = v25;
            v37 = 2080;
            v38 = v26;
            _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream format '%s' references unknown track format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (*(&v30 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
        }

        if (!v23)
        {
          goto LABEL_52;
        }

        v21 += 24;
      }

      if (++v2 >= ((*(*this + 176) - *(*this + 168)) >> 4))
      {
        goto LABEL_51;
      }
    }

LABEL_52:
    result = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6C05B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::build_track_uids(int8x8_t *this)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(*this + 272) == *(*this + 264))
  {
LABEL_52:
    result = 1;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = this[67];
      v6 = (*&v5 + v2);
      if (*(*&v5 + v2 + 24) == 1)
      {
        CA::ADMBuilder::Impl::resolve_track_format_reference(&v35, this, *&v5 + v2);
        v8 = v35;
        if (v35)
        {
          v9 = *(*(*this + 264) + v3);
          v10 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = *(v9 + 160);
          *(v9 + 152) = v8;
          *(v9 + 160) = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        else
        {
          v12 = CA::ADMBuilder::Impl::log(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 264) + v3), "");
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if (*(*&v5 + v2 + 23) < 0)
            {
              v6 = *v6;
            }

            *buf = 136315906;
            v38 = "ADMBuilder.cpp";
            v39 = 1024;
            v40 = 485;
            v41 = 2080;
            v42 = p_p;
            v43 = 2080;
            v44 = v6;
            _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Track UID '%s' references unknown track format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (!v8)
        {
          break;
        }
      }

      v14 = this[61];
      v15 = (*&v14 + v2);
      if (*(*&v14 + v2 + 24) == 1)
      {
        CA::ADMBuilder::Impl::resolve_channel_format_reference(&v35, this, *&v14 + v2);
        v17 = v35;
        if (v35)
        {
          v18 = *(*(*this + 264) + v3);
          v19 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(v18 + 176);
          *(v18 + 168) = v17;
          *(v18 + 176) = v19;
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }

        else
        {
          v21 = CA::ADMBuilder::Impl::log(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 264) + v3), "");
            v22 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __p.__r_.__value_.__r.__words[0];
            }

            if (*(*&v14 + v2 + 23) < 0)
            {
              v15 = *v15;
            }

            *buf = 136315906;
            v38 = "ADMBuilder.cpp";
            v39 = 1024;
            v40 = 496;
            v41 = 2080;
            v42 = v22;
            v43 = 2080;
            v44 = v15;
            _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Track UID '%s' references unknown channel format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (!v17)
        {
          break;
        }
      }

      v23 = this[64];
      v24 = (*&v23 + v2);
      if (*(*&v23 + v2 + 24) == 1)
      {
        v25 = CA::ADMBuilder::Impl::resolve_pack_format_reference(&v35, this, *&v23 + v2);
        v26 = v35;
        if (v35)
        {
          v27 = *(*(*this + 264) + v3);
          v28 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(v27 + 192);
          *(v27 + 184) = v26;
          *(v27 + 192) = v28;
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }
        }

        else
        {
          v30 = CA::ADMBuilder::Impl::log(v25);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*this + 264) + v3), "");
            v31 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v31 = __p.__r_.__value_.__r.__words[0];
            }

            if (*(*&v23 + v2 + 23) < 0)
            {
              v24 = *v24;
            }

            *buf = 136315906;
            v38 = "ADMBuilder.cpp";
            v39 = 1024;
            v40 = 507;
            v41 = 2080;
            v42 = v31;
            v43 = 2080;
            v44 = v24;
            _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Track UID '%s' references unknown pack format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (!v26)
        {
          break;
        }
      }

      ++v4;
      v3 += 16;
      v2 += 32;
      if (v4 >= (*(*this + 272) - *(*this + 264)) >> 4)
      {
        goto LABEL_52;
      }
    }

    result = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6C0A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::build_channel_formats(CA::ADMBuilder::Impl *this)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = *(*this + 120);
  if (*(*this + 128) == v2)
  {
LABEL_43:
    result = 1;
  }

  else
  {
    v4 = 0;
    while (*(*(v2 + 16 * v4) + 152) == *(*(v2 + 16 * v4) + 144))
    {
LABEL_42:
      if (++v4 >= ((*(v1 + 128) - v2) >> 4))
      {
        goto LABEL_43;
      }
    }

    v5 = 0;
    v6 = 24 * v4;
    while (1)
    {
      v7 = *(*(this + 70) + v6) + 32 * v5;
      if (*(v7 + 24) == 1)
      {
        CA::ADMBuilder::Impl::resolve_channel_format_reference(&v35, this, *(*(this + 70) + v6) + 32 * v5);
        v9 = v35;
        if (v35)
        {
          v10 = *(*(*(*this + 120) + 16 * v4) + 144);
          v11 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = v10 + 480 * v5;
          v13 = *(v12 + 272);
          *(v12 + 264) = v9;
          *(v12 + 272) = v11;
          if (v13)
          {
            std::__shared_weak_count::__release_weak(v13);
          }
        }

        else
        {
          v14 = CA::ADMBuilder::Impl::log(v8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*(*this + 120) + 16 * v4) + 144) + 480 * v5, "");
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if (*(v7 + 23) < 0)
            {
              v7 = *v7;
            }

            *buf = 136315906;
            v38 = "ADMBuilder.cpp";
            v39 = 1024;
            v40 = 529;
            v41 = 2080;
            v42 = p_p;
            v43 = 2080;
            v44 = v7;
            _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Block format '%s' references unknown channel format '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (!v9)
        {
          goto LABEL_44;
        }

        v1 = *this;
      }

      v16 = *(*(v1 + 120) + 16 * v4);
      v17 = *(v16 + 144);
      if (*(v17 + 480 * v5 + 288) != *(v17 + 480 * v5 + 280))
      {
        break;
      }

LABEL_40:
      ++v5;
      v31 = 0xEEEEEEEEEEEEEEEFLL * ((*(v16 + 152) - v17) >> 5);
      v6 = 24 * v4;
      if (v5 >= v31)
      {
        v2 = *(v1 + 120);
        goto LABEL_42;
      }
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = *(*(*(this + 73) + 24 * v4) + 24 * v5);
      v22 = (v21 + v18);
      CA::ADMBuilder::Impl::resolve_channel_format_reference(&v35, this, v21 + v18);
      v24 = v35;
      if (v35)
      {
        v25 = *(*(*(*(*this + 120) + 16 * v4) + 144) + 480 * v5 + 280);
        v26 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v27 = v25 + v19;
        v28 = *(v27 + 136);
        *(v27 + 128) = v24;
        *(v27 + 136) = v26;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      else
      {
        v29 = CA::ADMBuilder::Impl::log(v23);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, *(*(*(*this + 120) + 16 * v4) + 144) + 480 * v5, "");
          v30 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = __p.__r_.__value_.__r.__words[0];
          }

          if (*(v21 + v18 + 23) < 0)
          {
            v22 = *v22;
          }

          *buf = 136315906;
          v38 = "ADMBuilder.cpp";
          v39 = 1024;
          v40 = 545;
          v41 = 2080;
          v42 = v30;
          v43 = 2080;
          v44 = v22;
          _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Block format '%s' references unknown channel format '%s'", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (!v24)
      {
        break;
      }

      ++v20;
      v1 = *this;
      v16 = *(*(*this + 120) + 16 * v4);
      v17 = *(v16 + 144);
      v19 += 144;
      v18 += 24;
      if (v20 >= 0x8E38E38E38E38E39 * ((*(v17 + 480 * v5 + 288) - *(v17 + 480 * v5 + 280)) >> 4))
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    result = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6C0E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void CA::ADMBuilder::Impl::resolve_channel_format_reference(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = *(a2 + 928);
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*(a2 + 920) + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a3))
            {
              v28 = v13[6];
              *a1 = v13[5];
              a1[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 < 0)
  {
    if (*(a3 + 8) != 11)
    {
      goto LABEL_57;
    }

    v16 = *a3;
  }

  else
  {
    v16 = a3;
    if (v15 != 11)
    {
      goto LABEL_57;
    }
  }

  if (*(v16 + 7) != 48)
  {
    goto LABEL_57;
  }

  if (std::string::starts_with[abi:ne200100](a3, "AC_0001"))
  {
    std::string::basic_string(&__p, a3, 8uLL, 3uLL, &v38);
    v19 = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v19 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (v18 && v18 < 0x29)
    {
      CA::ADMBuilder::Impl::build_common_channel_format(a1, a2, 1, v18 - 1);
      return;
    }

    goto LABEL_57;
  }

  if (!std::string::starts_with[abi:ne200100](a3, "AC_0004"))
  {
    if (!std::string::starts_with[abi:ne200100](a3, "AC_0005"))
    {
      goto LABEL_57;
    }

    std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v38);
    v29 = 0;
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v32 = CA::ADMCommonFormats::channel_formats_binaural;
    v33 = *&__p.__r_.__value_.__l.__data_;
    while (1)
    {
      if (v29 == 2)
      {
        goto LABEL_60;
      }

      v34 = strlen(*v32);
      v35 = v34;
      if (v31 < 0)
      {
        if (v34 != *(&v33 + 1))
        {
          goto LABEL_48;
        }

        p_p = v33;
        if (*(&v33 + 1) == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v34 != v30)
        {
          goto LABEL_48;
        }

        p_p = &__p;
      }

      if (!memcmp(p_p, *v32, v35))
      {
        CA::ADMBuilder::Impl::build_common_channel_format(a1, a2, 5, v29);
        LOBYTE(v31) = *(&__p.__r_.__value_.__s + 23);
LABEL_60:
        if ((v31 & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v29 != 2)
        {
          return;
        }

LABEL_57:
        *a1 = 0;
        a1[1] = 0;
        return;
      }

LABEL_48:
      ++v29;
      v32 += 2;
    }
  }

  std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v38);
  v20 = 0;
  v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v23 = CA::ADMCommonFormats::channel_formats_hoa;
  v24 = *&__p.__r_.__value_.__l.__data_;
  while (v20 != 258)
  {
    v25 = strlen(*v23);
    v26 = v25;
    if (v22 < 0)
    {
      if (v25 != *(&v24 + 1))
      {
        goto LABEL_36;
      }

      v27 = v24;
      if (*(&v24 + 1) == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      if (v25 != v21)
      {
        goto LABEL_36;
      }

      v27 = &__p;
    }

    if (!memcmp(v27, *v23, v26))
    {
      CA::ADMBuilder::Impl::build_common_channel_format(a1, a2, 4, v20);
      LOBYTE(v22) = *(&__p.__r_.__value_.__s + 23);
      break;
    }

LABEL_36:
    ++v20;
    v23 += 4;
  }

  if ((v22 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 == 258)
  {
    goto LABEL_57;
  }
}

void sub_18F6C122C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::string::starts_with[abi:ne200100](const void **a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  return v5 >= v4 && memcmp(a1, __s, v4) == 0;
}

uint64_t anonymous namespace::parse_hex_digits(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = 0;
  if ((v1 & 0x80u) != 0)
  {
    v1 = v2;
  }

  for (; v1; --v1)
  {
    v5 = *v3;
    result *= 16;
    if ((v5 - 48) > 9)
    {
      if (v5 != 97)
      {
        return 0;
      }
    }

    else
    {
      result |= v5 & 0xF;
    }

    ++v3;
  }

  return result;
}

void CA::ADMBuilder::Impl::build_common_channel_format(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  CA::ADMBuilder::Impl::common_channel_format_id(&v6, a3, a4);
  if (v7)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void sub_18F6C1D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (*(v15 - 128) == 1 && *(v15 - 129) < 0)
  {
    operator delete(*(v15 - 152));
  }

  _Unwind_Resume(a1);
}

void CA::ADMBuilder::Impl::common_channel_format_id(uint64_t a1, int a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "AC_0005");
    v10 = CA::ADMCommonFormats::channel_formats_binaural[2 * a3];
    v11 = strlen(v10);
    v9 = std::string::append(&v15, v10, v11);
LABEL_7:
    v5 = v9->__r_.__value_.__r.__words[0];
    v16[0] = v9->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "AC_0004");
    v7 = CA::ADMCommonFormats::channel_formats_hoa[4 * a3];
    v8 = strlen(v7);
    v9 = std::string::append(&v15, v7, v8);
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v13 = 0;
    *a1 = 0;
    goto LABEL_11;
  }

  v16[0] = v15.__r_.__value_.__l.__size_;
  v5 = v15.__r_.__value_.__r.__words[0];
  *(v16 + 7) = *(&v15.__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
LABEL_9:
  v12 = v16[0];
  *a1 = v5;
  *(a1 + 8) = v12;
  *(a1 + 15) = *(v16 + 7);
  *(a1 + 23) = v6;
  v13 = 1;
LABEL_11:
  *(a1 + 24) = v13;
  v14 = *MEMORY[0x1E69E9840];
}

void sub_18F6C1F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

uint64_t std::vector<CA::ADMBlockFormat>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CA::ADMBlockFormat>::__emplace_back_slow_path<CA::ADMBlockFormat>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(a1[1], a2);
    result = v3 + 480;
  }

  a1[1] = result;
  return result;
}

void std::vector<CA::ADMZone>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 9;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CA::ADMMatrixCoefficient>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (*(v4 - 24) == 1 && *(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
        {
          operator delete(*(v4 - 11));
        }

        if (*(v4 - 104) == 1 && *(v4 - 105) < 0)
        {
          operator delete(*(v4 - 16));
        }

        v4 -= 144;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void CA::ADMBlockFormat::~ADMBlockFormat(void **this)
{
  if (*(this + 464) == 1 && *(this + 463) < 0)
  {
    operator delete(this[55]);
  }

  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(this[49]);
  }

  v3 = this + 46;
  std::vector<CA::ADMZone>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 35;
  std::vector<CA::ADMMatrixCoefficient>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[34];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 208) == 1 && *(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_18F6C2798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 1;
  }

  v3 = a2[8];
  v4 = a2[9];
  v5 = a2[10];
  v6 = *(a2 + 174);
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[2];
  v12 = a2[3];
  *(result + 184) = 0;
  *(result + 48) = v12;
  *(result + 32) = v11;
  *(result + 112) = v10;
  *(result + 96) = v9;
  *(result + 80) = v8;
  *(result + 64) = v7;
  *(result + 174) = v6;
  *(result + 160) = v5;
  *(result + 144) = v4;
  *(result + 128) = v3;
  *(result + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    v13 = *(a2 + 184);
    *(result + 200) = *(a2 + 25);
    *(result + 184) = v13;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a2 + 23) = 0;
    *(result + 208) = 1;
  }

  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  *(result + 245) = *(a2 + 245);
  *(result + 232) = v15;
  *(result + 216) = v14;
  v16 = *(a2 + 34);
  *(result + 264) = *(a2 + 33);
  *(result + 272) = v16;
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  *(result + 280) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = *(a2 + 35);
  *(result + 288) = a2[18];
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  v17 = a2[19];
  v18 = a2[20];
  v19 = a2[21];
  *(result + 349) = *(a2 + 349);
  *(result + 320) = v18;
  *(result + 336) = v19;
  *(result + 304) = v17;
  *(result + 376) = 0;
  *(result + 384) = 0;
  *(result + 368) = 0;
  *(result + 368) = a2[23];
  *(result + 384) = *(a2 + 48);
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  *(result + 392) = 0;
  *(result + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    v20 = *(a2 + 392);
    *(result + 408) = *(a2 + 51);
    *(result + 392) = v20;
    *(a2 + 50) = 0;
    *(a2 + 51) = 0;
    *(a2 + 49) = 0;
    *(result + 416) = 1;
  }

  v21 = *(a2 + 53);
  *(result + 429) = *(a2 + 429);
  *(result + 424) = v21;
  *(result + 440) = 0;
  *(result + 464) = 0;
  if (*(a2 + 464) == 1)
  {
    v22 = *(a2 + 440);
    *(result + 456) = *(a2 + 57);
    *(result + 440) = v22;
    *(a2 + 56) = 0;
    *(a2 + 57) = 0;
    *(a2 + 55) = 0;
    *(result + 464) = 1;
  }

  *(result + 472) = *(a2 + 59);
  return result;
}

uint64_t std::vector<CA::ADMBlockFormat>::__emplace_back_slow_path<CA::ADMBlockFormat>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x88888888888888)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 5);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 5) >= 0x44444444444444)
  {
    v5 = 0x88888888888888;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    std::allocator<CA::ADMBlockFormat>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 480 * v2;
  std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(v6, a2);
  v17 = (v6 + 480);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(v11, v10);
      v10 += 30;
      v11 += 480;
    }

    while (v10 != v8);
    do
    {
      CA::ADMBlockFormat::~ADMBlockFormat(v7);
      v7 += 60;
    }

    while (v7 != v8);
  }

  v12 = *a1;
  *a1 = v9;
  v13 = a1[2];
  v15 = v17;
  *(a1 + 1) = v17;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v16[0] = v12;
  v16[1] = v12;
  std::__split_buffer<CA::ADMBlockFormat>::~__split_buffer(v16);
  return v15;
}

void std::allocator<CA::ADMBlockFormat>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x88888888888889)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<CA::ADMBlockFormat>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 480;
    CA::ADMBlockFormat::~ADMBlockFormat((i - 480));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<CA::ADMChannelFormat>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 168);
  std::vector<CA::ADMBlockFormat>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::vector<CA::ADMBlockFormat>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CA::ADMBlockFormat::~ADMBlockFormat(v4 - 60);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMChannelFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void anonymous namespace::format(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va) + 1;
  std::string::basic_string[abi:ne200100](a2, v5);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = vsnprintf(v6, v5, this, va);
  std::string::resize(a2, v7, 0);
}

void sub_18F6C2E0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::ADMBuilder::Impl::resolve_track_format_reference(void *a1, int8x8_t *a2, uint64_t a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[126];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a2[125] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a3))
            {
              v28 = v13[6];
              *a1 = v13[5];
              a1[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 < 0)
  {
    if (*(a3 + 8) != 14)
    {
      goto LABEL_46;
    }

    v16 = *a3;
  }

  else
  {
    v16 = a3;
    if (v15 != 14)
    {
      goto LABEL_46;
    }
  }

  if (*(v16 + 7) != 48)
  {
    goto LABEL_46;
  }

  if (!std::string::starts_with[abi:ne200100](a3, "AT_0001"))
  {
    if (!std::string::starts_with[abi:ne200100](a3, "AT_0005"))
    {
      goto LABEL_46;
    }

    std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v30);
    v20 = 0;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = CA::ADMCommonFormats::channel_formats_binaural;
    v24 = *&__p.__r_.__value_.__l.__data_;
    while (1)
    {
      if (v20 == 2)
      {
        if ((v22 & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }

      v25 = strlen(*v23);
      v26 = v25;
      if (v22 < 0)
      {
        if (v25 != *(&v24 + 1))
        {
          goto LABEL_36;
        }

        p_p = v24;
        if (*(&v24 + 1) == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v25 != v21)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (!memcmp(p_p, *v23, v26))
      {
        CA::ADMBuilder::Impl::build_common_track_format();
      }

LABEL_36:
      ++v20;
      v23 += 2;
    }
  }

  std::string::basic_string(&__p, a3, 8uLL, 3uLL, &v30);
  v19 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v18 && v18 < 0x29)
  {
    CA::ADMBuilder::Impl::build_common_track_format();
  }

LABEL_46:
  *a1 = 0;
  a1[1] = 0;
}

void sub_18F6C30CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CA::ADMBuilder::Impl::resolve_pack_format_reference(CA::ADMBuilder::Impl *a1, int8x8_t *a2, uint64_t a3)
{
  v3 = a3;
  result = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[111];
  if (v7)
  {
    v8 = result;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = result;
      if (result >= *&v7)
      {
        v11 = result % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & result;
    }

    v12 = *(*&a2[110] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            result = std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, v3);
            if (result)
            {
              v22 = v13[6];
              *a1 = v13[5];
              *(a1 + 1) = v22;
              if (v22)
              {
                atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
              }

              return result;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v18 = CA::ADMCommonFormats::pack_formats;
  while (v17 != 347)
  {
    result = strcmp(v3, *v18);
    if (result)
    {
      if (v16)
      {
        v19 = a1;
        v20 = a2;
        v21 = v15;
        goto LABEL_29;
      }
    }

    else if ((v16 & 1) == 0)
    {
      v15 = v17;
      v16 = 1;
    }

    ++v17;
    v18 += 6;
  }

  if (v16)
  {
    v19 = a1;
    v20 = a2;
    v21 = v15;
LABEL_29:

    CA::ADMBuilder::Impl::build_common_pack_format(v19, v20, v21);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

void sub_18F6C3864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<CA::ADMChannelFormat>>,void *>>>>::~unique_ptr[abi:ne200100](&a21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CA::ADMPackFormat>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v2 = *(a1 + 288);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v5 = (a1 + 240);
  std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 216);
  std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 184);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 160);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::vector<std::weak_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMPackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F6C4300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void CA::ADMBuilder::Impl::resolve_stream_format_reference(void *a1, int8x8_t *a2, uint64_t a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v7 = a2[121];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a2[120] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a3))
            {
              v28 = v13[6];
              *a1 = v13[5];
              a1[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v15 = *(a3 + 23);
  if (v15 < 0)
  {
    if (*(a3 + 8) != 11)
    {
      goto LABEL_46;
    }

    v16 = *a3;
  }

  else
  {
    v16 = a3;
    if (v15 != 11)
    {
      goto LABEL_46;
    }
  }

  if (*(v16 + 7) != 48)
  {
    goto LABEL_46;
  }

  if (!std::string::starts_with[abi:ne200100](a3, "AS_0001"))
  {
    if (!std::string::starts_with[abi:ne200100](a3, "AS_0005"))
    {
      goto LABEL_46;
    }

    std::string::basic_string(&__p, a3, 7uLL, 4uLL, &v30);
    v20 = 0;
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = CA::ADMCommonFormats::channel_formats_binaural;
    v24 = *&__p.__r_.__value_.__l.__data_;
    while (1)
    {
      if (v20 == 2)
      {
        if ((v22 & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_46;
      }

      v25 = strlen(*v23);
      v26 = v25;
      if (v22 < 0)
      {
        if (v25 != *(&v24 + 1))
        {
          goto LABEL_36;
        }

        p_p = v24;
        if (*(&v24 + 1) == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v25 != v21)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (!memcmp(p_p, *v23, v26))
      {
        CA::ADMBuilder::Impl::build_common_stream_format();
      }

LABEL_36:
      ++v20;
      v23 += 2;
    }
  }

  std::string::basic_string(&__p, a3, 8uLL, 3uLL, &v30);
  v19 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v18 && v18 < 0x29)
  {
    CA::ADMBuilder::Impl::build_common_stream_format();
  }

LABEL_46:
  *a1 = 0;
  a1[1] = 0;
}

void sub_18F6C46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F6C5038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<CA::ADMTrackFormat>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::__shared_ptr_emplace<CA::ADMStreamFormat>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 184);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<CA::ADMStreamFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<CA::ADMTrackFormat>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<CA::ADMTrackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::vector<std::weak_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(void *a1, _BYTE *a2)
{
  if (a2[24] != 1)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t anonymous namespace::object_reachable(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 168);
  v3 = *(*a2 + 176);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = *a1;
  {
    v2 += 2;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void std::__shared_ptr_emplace<CA::ADMTrackUID>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v5 = *(a1 + 24);

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<CA::ADMTrackUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0330E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
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

uint64_t CA::ADMBuilder::Impl::parse_bound(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    goto LABEL_14;
  }

  if (*a2 == 26989 && *(a2 + 2) == 110)
  {
    v6 = 0;
    v5 = 0x100000000;
    return v6 | v5;
  }

  if (*a2 == 24941 && *(a2 + 2) == 120)
  {
    v5 = 0x100000000;
    v6 = 1;
    return v6 | v5;
  }

LABEL_14:
  v5 = 0;
  v6 = 0;
  *(a1 + 632) = -66596;
  return v6 | v5;
}

uint64_t CA::ADMBuilder::Impl::parse_coordinate(uint64_t a1, uint64_t **a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 <= 7)
    {
      if (v2 != 1)
      {
        if (v2 != 7)
        {
          goto LABEL_48;
        }

        if (*a2 != 1835629153 || *(a2 + 3) != 1752462701)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      v10 = *a2;
      goto LABEL_39;
    }

    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_48;
      }

      if (*a2 != 0x6F69746176656C65 || *(a2 + 8) != 110)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v11 = *a2;
    goto LABEL_43;
  }

  v4 = a2[1];
  if (v4 > 7)
  {
    if (v4 != 8)
    {
      if (v4 != 9)
      {
        goto LABEL_48;
      }

      if (**a2 != 0x6F69746176656C65 || *(*a2 + 8) != 110)
      {
        goto LABEL_48;
      }

LABEL_35:
      v7 = 0x100000000;
      v6 = 1;
      return v6 | v7;
    }

    v11 = **a2;
LABEL_43:
    if (v11 == 0x65636E6174736964)
    {
      v7 = 0x100000000;
      v6 = 2;
      return v6 | v7;
    }

    goto LABEL_48;
  }

  if (v4 == 1)
  {
    v10 = **a2;
LABEL_39:
    switch(v10)
    {
      case 'X':
        v7 = 0x100000000;
        v6 = 3;
        return v6 | v7;
      case 'Y':
        v7 = 0x100000000;
        v6 = 4;
        return v6 | v7;
      case 'Z':
        v7 = 0x100000000;
        v6 = 5;
        return v6 | v7;
    }

LABEL_48:
    v7 = 0;
    v6 = 0;
    *(a1 + 632) = -66593;
    return v6 | v7;
  }

  if (v4 != 7)
  {
    goto LABEL_48;
  }

  if (**a2 != 1835629153 || *(*a2 + 3) != 1752462701)
  {
    goto LABEL_48;
  }

LABEL_19:
  v6 = 0;
  v7 = 0x100000000;
  return v6 | v7;
}

uint64_t CA::ADMBuilder::Impl::parse_gain_unit(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 2)
    {
      if (v2 != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v6 = *a2;
    goto LABEL_16;
  }

  v3 = *(a2 + 1);
  if (v3 == 2)
  {
    v6 = **a2;
LABEL_16:
    if (v6 == 16996)
    {
      v5 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v3 == 6)
  {
    a2 = *a2;
LABEL_8:
    if (*a2 != 1701734764 || a2[2] != 29281)
    {
      goto LABEL_17;
    }

    v5 = 0;
LABEL_19:
    v7 = 1;
    return v5 | (v7 << 8);
  }

LABEL_17:
  v5 = 0;
  v7 = 0;
  *(a1 + 632) = -66594;
  return v5 | (v7 << 8);
}

void CA::ADMBuilder::Impl::parse_interaction(CA::ADMBuilder::Impl *this, const unsigned __int8 **a2, const char **a3)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 40) = 0;
  *this = 0;
  *(this + 2) = 0;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v6 = 0;
      v11 = 0;
      v7 = 0;
      v8 = a3 + 2;
      while (1)
      {
        v9 = *(v8 - 1);
        if (!strcmp(v4, "onOffInteract"))
        {
          break;
        }

        if (!strcmp(v4, "gainInteract"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v6 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
LABEL_10:
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_12;
        }

        if (!strcmp(v4, "positionInteract"))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v11 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
          goto LABEL_10;
        }

LABEL_12:
        v10 = *v8;
        v8 += 2;
        v4 = v10;
        if (!v10)
        {
          *(this + 2) = v11;
          *(this + 1) = v6;
          goto LABEL_15;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v9);
      v7 = CA::ADMBuilder::Impl::parse_BOOL(a2, __p);
      goto LABEL_10;
    }

    v7 = 0;
LABEL_15:
    *this = v7;
  }
}

uint64_t CA::ADMBuilder::Impl::parse_interaction_subelement(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, const char **a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = strcmp(__s1, "gainInteractionRange");
  if (v10)
  {
    v11 = strcmp(__s1, "positionInteractionRange");
    if (v11)
    {
      goto LABEL_69;
    }

    v59 = a2;
    memset(&v63, 0, sizeof(v63));
    memset(&v62, 0, sizeof(v62));
    if (a5 && (v12 = *a5) != 0)
    {
      v13 = 0;
      v58 = 0;
      v14 = 0;
      LODWORD(v15) = 0;
      while (2)
      {
        a5 += 2;
        while (1)
        {
          v16 = *(a5 - 1);
          if (!strcmp(v12, "bound"))
          {
            break;
          }

          v11 = strcmp(v12, "coordinate");
          if (!v11)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v16);
            v17 = CA::ADMBuilder::Impl::parse_coordinate(a1, __p);
            v15 = v17;
            if (SBYTE3(v68) < 0)
            {
              operator delete(*__p);
            }

            if (!(v15 >> 32))
            {
              v40 = CA::ADMBuilder::Impl::log(v17);
              v11 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
              if (v11)
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
                v41 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
                *__p = 136315650;
                *&__p[4] = "ADMBuilder.cpp";
                v65 = 1024;
                v66 = 757;
                v67 = 2080;
                v68 = v41;
                _os_log_impl(&dword_18F5DF000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown coordinate for position interaction range of object '%s'", __p, 0x1Cu);
                if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v61.__r_.__value_.__l.__data_);
                }
              }

              if ((v13 & 1) == 0)
              {
                goto LABEL_120;
              }

              goto LABEL_77;
            }

            v11 = std::string::__assign_external(&v62, v16);
            v14 = 1;
          }

          v18 = *a5;
          a5 += 2;
          v12 = v18;
          if (!v18)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_120;
            }

            goto LABEL_41;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v16);
        v19 = CA::ADMBuilder::Impl::parse_bound(a1, __p);
        v20 = v19;
        if (SBYTE3(v68) < 0)
        {
          operator delete(*__p);
        }

        if (!(v20 >> 32))
        {
          v54 = CA::ADMBuilder::Impl::log(v19);
          v11 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v11)
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
            v55 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
            *__p = 136315650;
            *&__p[4] = "ADMBuilder.cpp";
            v65 = 1024;
            v66 = 747;
            v67 = 2080;
            v68 = v55;
            _os_log_impl(&dword_18F5DF000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bound for position interaction range of object '%s'", __p, 0x1Cu);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }
          }

          *(a1 + 632) = -66596;
          goto LABEL_120;
        }

        v58 = v20;
        v11 = std::string::__assign_external(&v63, v16);
        v12 = *a5;
        v13 = 1;
        if (*a5)
        {
          continue;
        }

        break;
      }

LABEL_41:
      if ((v14 & 1) == 0)
      {
LABEL_77:
        if (*(a1 + 632))
        {
          goto LABEL_129;
        }

        v42 = CA::ADMBuilder::Impl::log(v11);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
          v43 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
          *__p = 136315650;
          *&__p[4] = "ADMBuilder.cpp";
          v65 = 1024;
          v66 = 775;
          v67 = 2080;
          v68 = v43;
          _os_log_impl(&dword_18F5DF000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing coordinate for position interaction range of object '%s'", __p, 0x1Cu);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        v44 = -66592;
        goto LABEL_128;
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v63.__r_.__value_.__l.__data_, &v62.__r_.__value_.__l.__data_);
      v29 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>((a1 + 800), __p);
      v30 = v29;
      if (SBYTE3(v68) < 0)
      {
        operator delete(*__p);
      }

      if (v30)
      {
        v31 = v15 - 3;
        if (*(a3 + 81) == 1)
        {
          if (*(a3 + 80) != v31 < 3)
          {
            v32 = CA::ADMBuilder::Impl::log(v29);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
              v33 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
              *__p = 136315650;
              *&__p[4] = "ADMBuilder.cpp";
              v65 = 1024;
              v66 = 789;
              v67 = 2080;
              v68 = v33;
              _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems for position interaction range of object '%s'", __p, 0x1Cu);
              if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v61.__r_.__value_.__l.__data_);
              }
            }

            *(a1 + 632) = -66603;
          }
        }

        else
        {
          if (v31 >= 3)
          {
            v49 = 256;
          }

          else
          {
            v49 = 257;
          }

          *(a3 + 80) = v49;
        }

        if (v58 == 1)
        {
          if (v15 <= 5)
          {
            v52 = qword_18F9021D8[v15];
            v53 = (a3 + qword_18F9021A8[v15]);
            *v53 = 0;
            *(a3 + v52) = 1;
            *(a1 + 608) = v53;
          }

          operator new();
        }

        if (!v58)
        {
          if (v15 <= 5)
          {
            v50 = qword_18F902178[v15];
            v51 = (a3 + qword_18F902148[v15]);
            *v51 = 0;
            *(a3 + v50) = 1;
            *(a1 + 608) = v51;
          }

          operator new();
        }

        goto LABEL_129;
      }

      v47 = CA::ADMBuilder::Impl::log(v29);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
        v48 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v65 = 1024;
        v66 = 867;
        v67 = 2080;
        v68 = v48;
        _os_log_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple coordinates for position interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }

      v44 = -66589;
    }

    else
    {
LABEL_120:
      if (*(a1 + 632))
      {
LABEL_129:
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

      v56 = CA::ADMBuilder::Impl::log(v11);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v61, v59, "");
        v57 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v65 = 1024;
        v66 = 768;
        v67 = 2080;
        v68 = v57;
        _os_log_impl(&dword_18F5DF000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing bound for position interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }

      v44 = -66595;
    }

LABEL_128:
    *(a1 + 632) = v44;
    goto LABEL_129;
  }

  if (!a5 || (v21 = *a5) == 0)
  {
LABEL_61:
    if (!*(a1 + 632))
    {
      v36 = CA::ADMBuilder::Impl::log(v10);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v63, a2, "");
        v37 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "ADMBuilder.cpp";
        v65 = 1024;
        v66 = 731;
        v67 = 2080;
        v68 = v37;
        _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing bound for gain interaction range of object '%s'", __p, 0x1Cu);
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }
      }

      *(a1 + 632) = -66595;
    }

    goto LABEL_69;
  }

  v60 = a2;
  LOBYTE(v22) = 0;
  LODWORD(v23) = 0;
  v24 = 0;
  v25 = a5 + 2;
  while (1)
  {
    v26 = *(v25 - 1);
    if (!strcmp(v21, "bound"))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v26);
      v10 = CA::ADMBuilder::Impl::parse_bound(a1, __p);
      v23 = v10;
      if (SBYTE3(v68) < 0)
      {
        operator delete(*__p);
      }

      if ((v23 & 0x100000000) == 0)
      {
        v34 = CA::ADMBuilder::Impl::log(v10);
        v10 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v63, v60, "");
          v35 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
          *__p = 136315650;
          *&__p[4] = "ADMBuilder.cpp";
          v65 = 1024;
          v66 = 693;
          v67 = 2080;
          v68 = v35;
          _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown bound for gain interaction range of object '%s'", __p, 0x1Cu);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v63.__r_.__value_.__l.__data_);
          }
        }

        *(a1 + 632) = -66596;
        a2 = v60;
        goto LABEL_61;
      }

      v22 = HIDWORD(v23) & 1;
      goto LABEL_33;
    }

    v10 = strcmp(v21, "gainUnit");
    if (!v10)
    {
      break;
    }

LABEL_33:
    v28 = *v25;
    v25 += 2;
    v21 = v28;
    if (!v28)
    {
      goto LABEL_34;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v26);
  v10 = CA::ADMBuilder::Impl::parse_gain_unit(a1, __p);
  v27 = v10;
  if (SBYTE3(v68) < 0)
  {
    operator delete(*__p);
  }

  if (v27 > 0xFFu)
  {
    v24 = v27;
    goto LABEL_33;
  }

  v45 = CA::ADMBuilder::Impl::log(v10);
  v10 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v63, v60, "");
    v46 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
    *__p = 136315650;
    *&__p[4] = "ADMBuilder.cpp";
    v65 = 1024;
    v66 = 704;
    v67 = 2080;
    v68 = v46;
    _os_log_impl(&dword_18F5DF000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown unit for gain interaction range of object '%s'", __p, 0x1Cu);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

LABEL_34:
  a2 = v60;
  if ((v22 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (v23 == 1)
  {
    if ((*(a3 + 28) & 1) == 0)
    {
      *(a3 + 28) = 1;
    }

    *(a3 + 20) = 0;
    *(a3 + 24) = v24;
    *(a1 + 608) = a3 + 20;
    operator new();
  }

  if (!v23)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *(a3 + 8) = 0;
    *(a3 + 12) = v24;
    *(a1 + 608) = a3 + 8;
    operator new();
  }

LABEL_69:
  v38 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_18F6C67DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *CA::ADMBuilder::Impl::label_from_attributes(std::string *this, const unsigned __int8 **a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  if (a2)
  {
    v2 = this;
    this = *a2;
    if (*a2)
    {
      v3 = a2 + 2;
      do
      {
        if (!strcmp(this, "language"))
        {
          std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(v2, *(v3 - 1));
        }

        v4 = *v3;
        v3 += 2;
        this = v4;
      }

      while (v4);
    }
  }

  return this;
}

void CA::ADMLabel::~ADMLabel(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL Synchronously_ServicingMainRunLoop(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  if (Current == CFRunLoopGetMain())
  {
    context = *byte_1F0325DE0;
    {
      Synchronously_ServicingMainRunLoop::source = CFRunLoopSourceCreate(0, 0, &context);
    }

    CFRunLoopAddSource(Current, Synchronously_ServicingMainRunLoop::source, @"com.apple.coreaudio.synchronously");
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __Synchronously_ServicingMainRunLoop_block_invoke;
    v6[3] = &unk_1E72BA140;
    v6[4] = &v7;
    v6[5] = Current;
    (*(a1 + 16))(a1, v6);
    if ((v8[3] & 1) == 0)
    {
      v4 = *MEMORY[0x1E695E8E0];
      do
      {
        CFRunLoopRunInMode(v4, 20.0, 1u);
      }

      while (*(v8 + 24) != 1);
    }

    CFRunLoopRemoveSource(Current, Synchronously_ServicingMainRunLoop::source, @"com.apple.coreaudio.synchronously");
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    return v5;
  }

  else
  {

    return Synchronously(a1);
  }
}

uint64_t BufferedSoundCheckAnalyzer::Finish(BufferedSoundCheckAnalyzer *this, CACFDictionary *a2)
{
  v4 = *(this + 22);
  v5 = *(v4 + 48);
  if (v5)
  {
    bzero((*(v4 + 24) + v5), (*(v4 + 16) - v5));
    (*v4)(*(v4 + 8), *(v4 + 24), *(v4 + 16));
  }

  SoundCheckAnalyzer::Finish(this, a2);
  return 0;
}

void BufferedSoundCheckAnalyzer::~BufferedSoundCheckAnalyzer(BufferedSoundCheckAnalyzer *this)
{
  BufferedSoundCheckAnalyzer::~BufferedSoundCheckAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325E40;
  v2 = *(this + 14);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    std::default_delete<BlockBufferer>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1080C404ACF7207);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  SoundCheckAnalyzer::~SoundCheckAnalyzer(this);
}

void std::default_delete<BlockBufferer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x193ADF220);
}

uint64_t BufferedSoundCheckAnalyzer::Start(int32x2_t *this, AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, void *a4, int a5)
{
  LODWORD(v18.mSampleRate) = 0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(a2, &v18) && LODWORD(v18.mSampleRate) == 1 && (a2->mFormatFlags & 0x20) == 0)
  {
    v10 = this;
    v11 = a2;
    goto LABEL_15;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  v18.mSampleRate = a2->mSampleRate;
  *&v18.mFormatID = 0x96C70636DLL;
  v18.mBytesPerPacket = 4 * mChannelsPerFrame;
  v18.mFramesPerPacket = 1;
  v18.mBytesPerFrame = 4 * mChannelsPerFrame;
  v18.mChannelsPerFrame = mChannelsPerFrame;
  *&v18.mBitsPerChannel = 32;
  result = AudioConverterNewWithOptions(a2, &v18, 0, &this[14]);
  if (!result)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    v14 = this[14];
    v22 = a5;
    v23 = 1684891491;
    v21 = a4;
    v19[0] = &v23;
    v19[1] = &v22;
    v19[2] = &v21;
    v20[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    v20[1] = v19;
    result = with_resolved(v14.u32[0], v20);
    if (!result)
    {
LABEL_9:
      if ((a2->mFormatFlags & 0x20) != 0)
      {
        v15 = (16 * a2->mChannelsPerFrame) | 8;
      }

      else
      {
        v15 = 24;
      }

      this[20].i32[0] = v15;
      v16 = operator new(v15);
      v17 = this[19];
      this[19] = v16;
      if (v17)
      {
        MEMORY[0x193ADF220](*&v17, 0x1080C404ACF7207);
      }

      v11 = &v18;
      v10 = this;
LABEL_15:
      SoundCheckAnalyzer::Start(v10, v11, a3);
      operator new();
    }
  }

  return result;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, int *a2)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v2 = a1[6];
  if (v2 != a1[4])
  {
    return 0;
  }

  v3 = a1[8];
  if (v2 < v3 >> 3)
  {
    return 0;
  }

  v4 = a1[7];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[3];
  if ((v5 & 0x20) == 0)
  {
    v9 = v2 == v2 / v4 * v4;
    v2 /= v4;
    if (!v9)
    {
      return 0;
    }
  }

  v6 = 0;
  if ((v5 & 2) == 0 && 8 * v2 == v3)
  {
    if (v5)
    {
      if ((v5 & 0x1F84) != 0)
      {
        return 0;
      }

      if (v2 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4 * (v2 == 8);
      }
    }

    else if ((v5 & 4) != 0)
    {
      v8 = (v5 >> 7) & 0x3F;
      if (v8 == 24 && v2 == 4)
      {
        v6 = 3;
      }

      else if (v8 || v2 != 4)
      {
        v9 = v2 == 2 && v8 == 0;
        if (v9)
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t BufferedSoundCheckAnalyzer::ReceiveBufferedBlock(BufferedSoundCheckAnalyzer *this, char *a2, const unsigned __int8 *a3)
{
  v3 = *(this + 10);
  v4 = a3 / v3;
  if ((a3 / v3) & 0x7FFF) != 0 && (*(this + 2))
  {
    return 4294967246;
  }

  if (v3 <= a3)
  {
    v7 = 0;
    do
    {
      if (v4 >= 0x8000)
      {
        v8 = 0x8000;
      }

      else
      {
        v8 = v4;
      }

      v29 = v8;
      v9 = *(this + 2);
      if ((v9 & 2) != 0)
      {
        v10 = *(this + 7);
        if (v10)
        {
          loudnessMeasurementGenerateBlocks(v10, v29, &a2[4 * v7]);
          v9 = *(this + 2);
        }
      }

      v28 = v7;
      if ((v9 & 4) != 0 && a2)
      {
        v11 = &a2[4 * v7];
        v12 = *(this + 8);
        v13 = *(this + 9);
        v14 = v13 - v12;
        if (v13 - v12 == 128)
        {
          TruePeak::Process(*(this + 8), v29, &a2[4 * v7]);
        }

        else
        {
          v15 = v14 >> 7;
          if ((v14 >> 7) <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 >> 7;
          }

          v17 = v29;
          do
          {
            v18 = (*(this + 12) - *(this + 11)) >> 2;
            if (v17 >= v18)
            {
              v19 = v18;
            }

            else
            {
              v19 = v17;
            }

            if (v13 != v12)
            {
              v20 = 0;
              do
              {
                v21 = *(this + 11);
                v22 = v21;
                v23 = v19;
                v24 = v20;
                if (v19 >= 1)
                {
                  do
                  {
                    *v22++ = *&v11[4 * v24];
                    v24 += v15;
                    --v23;
                  }

                  while (v23);
                }

                TruePeak::Process((*(this + 8) + (v20++ << 7)), v19, v21);
              }

              while (v20 != v16);
            }

            v11 += 4 * v15 * v19;
            v25 = __OFSUB__(v17, v19);
            v17 -= v19;
          }

          while (!((v17 < 0) ^ v25 | (v17 == 0)));
        }
      }

      v7 = v28 + v29;
      v4 -= v29;
    }

    while (v4);
  }

  return 0;
}

uint64_t BufferedSoundCheckAnalyzer::ProcessBuffer(BufferedSoundCheckAnalyzer *this, int a2, const AudioBufferList *__src, AudioStreamPacketDescription *a4)
{
  if (*(this + 14))
  {
    v9 = *(this + 15);
    v10 = *(this + 16);
    v8 = (this + 120);
    if (v9 == v10)
    {
      v11 = (*(this + 10) << 15);
      if (v11)
      {
        std::vector<unsigned char>::__append(v8, v11);
      }
    }

    *(this + 36) = a2;
    memcpy(*(this + 19), __src, *(this + 40));
    *(this + 21) = a4;
    while (1)
    {
      ioOutputDataPacketSize = 0x8000;
      v12 = *(this + 10);
      v13 = *(this + 11);
      v20.mNumberBuffers = 1;
      v14 = *(this + 14);
      v20.mBuffers[0].mData = *(this + 15);
      v20.mBuffers[0].mNumberChannels = v13;
      v20.mBuffers[0].mDataByteSize = v12 << 15;
      v15 = AudioConverterFillComplexBuffer(v14, BufferedSoundCheckAnalyzer::ACInputProc, this, &ioOutputDataPacketSize, &v20, 0);
      if (ioOutputDataPacketSize)
      {
        if (BlockBufferer::AddInput(*(this + 22), *(this + 15), *(this + 10) * ioOutputDataPacketSize))
        {
          break;
        }
      }

      if (v15)
      {
        if (v15 == 5)
        {
          return 0;
        }

        return v15;
      }
    }

    return v15;
  }

  else
  {
    mData = __src->mBuffers[0].mData;
    v18 = *(this + 10);
    v19 = *(this + 22);

    return BlockBufferer::AddInput(v19, mData, v18 * a2);
  }
}

uint64_t BlockBufferer::AddInput(BlockBufferer *this, const unsigned __int8 *__src, unsigned int a3)
{
  v3 = a3;
  v4 = __src;
  v6 = *(this + 12);
  if (v6)
  {
    v7 = *(this + 4) - v6;
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    memcpy((*(this + 3) + v6), __src, v8);
    v9 = *(this + 12) + v8;
    *(this + 12) = v9;
    if (v9 < *(this + 4))
    {
      return 0;
    }

    result = (*this)(*(this + 1), *(this + 3));
    if (result)
    {
      return result;
    }

    v3 -= v8;
    v4 += v8;
  }

  v11 = *(this + 4);
  v12 = v3 % v11;
  if (v11 <= v3)
  {
    v13 = v3 - v12;
    result = (*this)(*(this + 1), v4, v13);
    if (result)
    {
      return result;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v12)
  {
    memcpy(*(this + 3), &v4[v13], v12);
  }

  result = 0;
  *(this + 12) = v12;
  return result;
}

uint64_t BufferedSoundCheckAnalyzer::ACInputProc(BufferedSoundCheckAnalyzer *this, OpaqueAudioConverter *a2, unsigned int *__dst, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = *(a5 + 36);
  if (!v6)
  {
    return 5;
  }

  *a2 = v6;
  memcpy(__dst, a5[19], *(a5 + 40));
  if (a4)
  {
    *&a4->mNumberBuffers = a5[21];
  }

  result = 0;
  *(a5 + 36) = 0;
  return result;
}

uint64_t ID3TagBase::Init(ID3TagBase *this)
{
  if (*(this + 9) != 73 || *(this + 10) != 68 || *(this + 11) != 51)
  {
    return 0;
  }

  v1 = ((*(this + 15) & 0x7F) << 21) | ((*(this + 16) & 0x7F) << 14) | ((*(this + 17) & 0x7F) << 7) | *(this + 18) & 0x7F;
  v2 = *(this + 14);
  if ((v2 & 0x10) != 0)
  {
    v3 = v1 + 20;
    *(this + 15) = 10;
  }

  else
  {
    v3 = v1 + 10;
  }

  v4 = *(this + 12);
  *(this + 16) = v4;
  if (v2 < 0)
  {
    *(this + 68) = (v4 & 0xFE) == 2;
    *(this + 69) = v4 == 4;
  }

  v5 = v4 >= 3 ? 10 : 6;
  *(this + 13) = v3;
  *(this + 14) = v5;
  if (v3 < v5 + 11)
  {
    return 0;
  }

  v6 = 1;
  *(this + 8) = 1;
  return v6;
}

void ID3TagBase::~ID3TagBase(ID3TagBase *this)
{
  *this = &unk_1F0337350;
  std::__list_imp<ID3FrameInfo>::clear(this + 3);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0337350;
  std::__list_imp<ID3FrameInfo>::clear(this + 3);
}

uint64_t ID3ParserHandle::ID3API_GetProperty(ID3ParserHandle *this, unsigned int a2, int *a3, int a4, unsigned int *a5, int *a6)
{
  v6 = 1936292415;
  if (!a5)
  {
    return v6;
  }

  v6 = 1886548031;
  if (a4 <= 1718185573)
  {
    if (a4 == 1717792372)
    {
      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 0;
      v40 = *(this + 2);
      if (v40)
      {
        if ((*(v40 + 48) & 1) == 0)
        {
          do
          {
            v41 = ID3ParserHandle::CallReadProcForMoreFrames(this);
            if (v41)
            {
              v6 = v41;
              if (a6)
              {
                *a6 = 0;
              }

              *a5 = 0;
              return v6;
            }

            v40 = *(this + 2);
          }

          while (*(v40 + 48) != 1);
          *a5 = 4;
        }

        if (a6)
        {
          v6 = 0;
          *a6 = *(v40 + 40);
          return v6;
        }
      }

      else
      {
        cf = 0;
        LODWORD(__src) = 0;
        if (a6)
        {
          v6 = (*(this + 3))(*(this + 4), 0, 125, 2, &cf, &__src);
          if (v6)
          {
            return v6;
          }

          if (*cf || !*(cf + 1))
          {
            v42 = 6;
          }

          else
          {
            v42 = 7;
          }

          *a6 = v42;
          (*(this + 3))(*(this + 4), 1, 125, 2, &cf, &__src);
        }
      }

      return 0;
    }

    if (a4 != 1717854580)
    {
      return v6;
    }

    v6 = 1936746047;
    if (a2 < 4)
    {
      return v6;
    }

    if (!a3)
    {
      return v6;
    }

    v6 = 1936292415;
    if (*a5 < 8)
    {
      return v6;
    }

    v55 = 0;
    __src = 0;
    v13 = *(this + 2);
    v14 = *a3;
    if (!v13)
    {
      if (v14 == 97)
      {
        cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        LOWORD(v53) = 257;
        CACFDictionary::AddString(&cf, @"language", @"eng");
        CACFDictionary::AddString(&cf, @"identifier", &stru_1F0340B48);
        v45 = ID3ParserHandle::CopyV1String(this, *a3);
        if (v45)
        {
          CACFDictionary::AddString(&cf, @"text", v45);
          CFRelease(v45);
          if (cf)
          {
            CFRetain(cf);
            v46 = cf;
          }

          else
          {
            v46 = 0;
          }

          v6 = 0;
          *a6 = v46;
        }

        else
        {
          v6 = 2003334207;
        }

        CACFDictionary::~CACFDictionary(&cf);
      }

      else
      {
        v48 = ID3ParserHandle::CopyV1String(this, *a3);
        if (v48)
        {
          v6 = 0;
          *a6 = v48;
        }

        else
        {
          return 2003334207;
        }
      }

      return v6;
    }

    v15 = v13 + 24;
    v16 = v15;
    while (1)
    {
      v16 = *(v16 + 8);
      if (v16 == v15)
      {
        break;
      }

      if (*(v16 + 24) == v14)
      {
        v17 = *(v16 + 20);
        v6 = (*(this + 3))(*(this + 4), 0);
        if (!v6)
        {
          cf = 0;
          ID3TagBase::CopyFrameData(*(this + 2), __src, v55, *a3, &cf);
          if (cf)
          {
            v6 = 0;
            *a6 = cf;
            *a5 = 8;
          }

          else
          {
            v6 = 2003334207;
          }

          (*(this + 3))(*(this + 4), 1, *a3, v17, &__src, &v55);
        }

        return v6;
      }
    }

    return 1852794431;
  }

  if (a4 != 1718185574)
  {
    if (a4 == 1953916274)
    {
      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 4;
      if (a6)
      {
        v39 = *(this + 2);
        if (v39)
        {
          v12 = *(v39 + 64);
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_233;
      }
    }

    else
    {
      if (a4 != 1953720698)
      {
        return v6;
      }

      v6 = 1936292415;
      if (*a5 < 4)
      {
        return v6;
      }

      *a5 = 4;
      if (a6)
      {
        v11 = *(this + 2);
        if (v11)
        {
          v12 = *(v11 + 52);
        }

        else
        {
          v12 = 128;
        }

LABEL_233:
        v6 = 0;
        *a6 = v12;
        return v6;
      }
    }

    return 0;
  }

  v6 = 1936746047;
  if (a2 < 8)
  {
    return v6;
  }

  if (!a3)
  {
    return v6;
  }

  v6 = 1936292415;
  if (*a5 < 0xC)
  {
    return v6;
  }

  v18 = *(this + 2);
  v19 = *a3;
  if (v18)
  {
    if (v19 && a3[1] && !ID3TagBase::MultipleFramesAllowed(*(v18 + 64), v19))
    {
      return 1768321599;
    }

    v6 = 1852794431;
    *a5 = 12;
    while (1)
    {
      v20 = *(this + 2);
      v21 = *a3;
      v22 = a3[1];
      v23 = v20 + 24;
      v24 = *(v20 + 40);
      if (v24)
      {
        v25 = v24 - 1 >= v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = !v25;
      if (v21)
      {
        if ((v26 & 1) == 0)
        {
          v27 = *(v20 + 64);
          if (v21 >> 24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27 >= 3;
          }

          if (v28)
          {
            LODWORD(v21) = ID3TagBase::TranslateV2IDToV3(v21);
            goto LABEL_62;
          }

          if (v21 >> 24)
          {
            v29 = v27 == 2;
          }

          else
          {
            v29 = 0;
          }

          if (!v29)
          {
            goto LABEL_62;
          }

          if (v21 > 1414091826)
          {
            if (v21 <= 1414550849)
            {
              if (v21 <= 1414483032)
              {
                if (v21 <= 1414284621)
                {
                  switch(v21)
                  {
                    case 0x54495433:
                      LODWORD(v21) = 5526579;
                      break;
                    case 0x544B4559:
                      LODWORD(v21) = 5524293;
                      break;
                    case 0x544C414E:
                      LODWORD(v21) = 5524545;
                      break;
                  }
                }

                else if (v21 > 1414480203)
                {
                  if (v21 == 1414480204)
                  {
                    LODWORD(v21) = 5525332;
                  }

                  else if (v21 == 1414481486)
                  {
                    LODWORD(v21) = 5525318;
                  }
                }

                else if (v21 == 1414284622)
                {
                  LODWORD(v21) = 5524549;
                }

                else if (v21 == 1414350148)
                {
                  LODWORD(v21) = 5524820;
                }
              }

              else if (v21 > 1414546737)
              {
                if (v21 > 1414546739)
                {
                  if (v21 == 1414546740)
                  {
                    LODWORD(v21) = 5525556;
                  }

                  else if (v21 == 1414549331)
                  {
                    LODWORD(v21) = 5525569;
                  }
                }

                else if (v21 == 1414546738)
                {
                  LODWORD(v21) = 5525554;
                }

                else
                {
                  LODWORD(v21) = 5525555;
                }
              }

              else if (v21 > 1414484568)
              {
                if (v21 == 1414484569)
                {
                  LODWORD(v21) = 5525330;
                }

                else if (v21 == 1414546737)
                {
                  LODWORD(v21) = 5525553;
                }
              }

              else if (v21 == 1414483033)
              {
                LODWORD(v21) = 5525324;
              }

              else if (v21 == 1414484037)
              {
                LODWORD(v21) = 5525313;
              }

              goto LABEL_62;
            }

            if (v21 > 1431522387)
            {
              if (v21 > 1464811857)
              {
                if (v21 <= 1464882497)
                {
                  if (v21 == 1464811858)
                  {
                    LODWORD(v21) = 5718354;
                  }

                  else if (v21 == 1464811859)
                  {
                    LODWORD(v21) = 5718355;
                  }

                  goto LABEL_62;
                }

                if (v21 == 1464882498)
                {
                  LODWORD(v21) = 5722178;
                  goto LABEL_62;
                }

                if (v21 != 1465407576)
                {
                  goto LABEL_62;
                }

                v37 = 22616;
              }

              else
              {
                if (v21 <= 1464029007)
                {
                  if (v21 == 1431522388)
                  {
                    LODWORD(v21) = 5590100;
                  }

                  else if (v21 == 1464029005)
                  {
                    LODWORD(v21) = 5718861;
                  }

                  goto LABEL_62;
                }

                if (v21 == 1464029008)
                {
                  LODWORD(v21) = 5718864;
                  goto LABEL_62;
                }

                if (v21 != 1464811846)
                {
                  goto LABEL_62;
                }

                v37 = 16710;
              }

              LODWORD(v21) = v37 | 0x570000;
              goto LABEL_62;
            }

            if (v21 <= 1414746690)
            {
              if (v21 > 1414677568)
              {
                if (v21 == 1414677569)
                {
                  LODWORD(v21) = 5526084;
                }

                else if (v21 == 1414744410)
                {
                  LODWORD(v21) = 5526345;
                }
              }

              else if (v21 == 1414550850)
              {
                LODWORD(v21) = 5525570;
              }

              else if (v21 == 1414677323)
              {
                LODWORD(v21) = 5526091;
              }

              goto LABEL_62;
            }

            if (v21 > 1415075927)
            {
              if (v21 == 1415075928)
              {
                LODWORD(v21) = 5527640;
              }

              else if (v21 == 1415136594)
              {
                LODWORD(v21) = 5527877;
              }

              goto LABEL_62;
            }

            if (v21 != 1414746691)
            {
              if (v21 != 1414746949)
              {
                goto LABEL_62;
              }

              v34 = 5526083;
              v35 = 272;
              goto LABEL_214;
            }

            v36 = 21059;
LABEL_191:
            LODWORD(v21) = v36 | 0x540000;
            goto LABEL_62;
          }

          if (v21 <= 1398361171)
          {
            if (v21 <= 1279872586)
            {
              if (v21 <= 1162958144)
              {
                switch(v21)
                {
                  case 0x41454E43:
                    LODWORD(v21) = 4411969;
                    break;
                  case 0x41504943:
                    LODWORD(v21) = 5261635;
                    break;
                  case 0x434F4D4D:
                    LODWORD(v21) = 4411213;
                    break;
                }
              }

              else if (v21 > 1195724609)
              {
                if (v21 == 1195724610)
                {
                  LODWORD(v21) = 4670799;
                }

                else if (v21 == 1229999187)
                {
                  LODWORD(v21) = 4804684;
                }
              }

              else if (v21 == 1162958145)
              {
                LODWORD(v21) = 4542805;
              }

              else if (v21 == 1163150159)
              {
                LODWORD(v21) = 4543555;
              }
            }

            else if (v21 > 1347375180)
            {
              if (v21 > 1381384515)
              {
                if (v21 == 1381384516)
                {
                  v38 = 22081;
                }

                else
                {
                  if (v21 != 1381388866)
                  {
                    goto LABEL_62;
                  }

                  v38 = 17750;
                }

                LODWORD(v21) = v38 | 0x520000;
              }

              else if (v21 == 1347375181)
              {
                LODWORD(v21) = 5263184;
              }

              else if (v21 == 1380078918)
              {
                LODWORD(v21) = 4347206;
              }
            }

            else if (v21 > 1296845907)
            {
              if (v21 == 1296845908)
              {
                LODWORD(v21) = 5065804;
              }

              else if (v21 == 1346588244)
              {
                LODWORD(v21) = 4410964;
              }
            }

            else if (v21 == 1279872587)
            {
              LODWORD(v21) = 5000779;
            }

            else if (v21 == 1296254025)
            {
              LODWORD(v21) = 5063497;
            }

LABEL_62:
            v30 = *(v20 + 32);
            if (v30 != v23)
            {
              v32 = 0;
              do
              {
                if (*(v30 + 16) == v21)
                {
                  if (v32 == v22)
                  {
                    goto LABEL_247;
                  }

                  ++v32;
                }

                v30 = *(v30 + 8);
              }

              while (v30 != v23);
            }

            goto LABEL_68;
          }

          if (v21 <= 1413759315)
          {
            if (v21 <= 1413632076)
            {
              if (v21 == 1398361172)
              {
                LODWORD(v21) = 5459028;
                goto LABEL_62;
              }

              if (v21 == 1398363203)
              {
                LODWORD(v21) = 5461059;
                goto LABEL_62;
              }

              if (v21 != 1413565506)
              {
                goto LABEL_62;
              }

              v36 = 16716;
              goto LABEL_191;
            }

            if (v21 > 1413697357)
            {
              if (v21 != 1413697358)
              {
                if (v21 == 1413697360)
                {
                  LODWORD(v21) = 5522258;
                }

                goto LABEL_62;
              }

              v34 = 5521740;
              v35 = 515;
            }

            else
            {
              if (v21 == 1413632077)
              {
                LODWORD(v21) = 5522000;
                goto LABEL_62;
              }

              if (v21 != 1413697357)
              {
                goto LABEL_62;
              }

              v34 = 5521740;
              v35 = 513;
            }
          }

          else if (v21 > 1413893203)
          {
            if (v21 > 1414091824)
            {
              if (v21 == 1414091825)
              {
                LODWORD(v21) = 5526577;
              }

              else
              {
                LODWORD(v21) = 5526578;
              }

              goto LABEL_62;
            }

            if (v21 == 1413893204)
            {
              LODWORD(v21) = 5523028;
              goto LABEL_62;
            }

            if (v21 != 1414090053)
            {
              goto LABEL_62;
            }

            v34 = 5521740;
            v35 = 2049;
          }

          else
          {
            if (v21 <= 1413828162)
            {
              if (v21 == 1413759316)
              {
                LODWORD(v21) = 5522497;
              }

              else if (v21 == 1413762137)
              {
                LODWORD(v21) = 5522521;
              }

              goto LABEL_62;
            }

            if (v21 != 1413828163)
            {
              if (v21 == 1413830740)
              {
                LODWORD(v21) = 5527636;
              }

              goto LABEL_62;
            }

            v34 = 5521740;
            v35 = 1026;
          }

LABEL_214:
          LODWORD(v21) = v34 | v35;
          goto LABEL_62;
        }
      }

      else if ((v26 & 1) == 0)
      {
        v30 = *(v20 + 32);
        if (v22)
        {
          v31 = v22 + 1;
          do
          {
            v30 = *(v30 + 8);
            --v31;
          }

          while (v31 > 1);
        }

        if (v30 != v23)
        {
LABEL_247:
          cf = *(v30 + 16);
          v53 = *(v30 + 24);
          v6 = 0;
          if (a6)
          {
            *a6 = cf;
            v47 = v53;
            goto LABEL_263;
          }

          return v6;
        }
      }

LABEL_68:
      if (*(v20 + 48))
      {
        return v6;
      }

      v33 = ID3ParserHandle::CallReadProcForMoreFrames(this);
      if (v33)
      {
        return v33;
      }
    }
  }

  if (!v19)
  {
    if (!a6)
    {
      return 0;
    }

    v49 = a3[1];
    if (v49 <= 6)
    {
      v6 = 0;
      v50 = dword_18F9026AC[v49];
      v51 = dword_18F9026C8[v49];
      v47 = dword_18F9026E4[v49];
      *a6 = v50;
      a6[1] = v51;
LABEL_263:
      a6[2] = v47;
      return v6;
    }

    return 1852794431;
  }

  if (a3[1])
  {
    return 1852794431;
  }

  if (!a6)
  {
    return 0;
  }

  v43 = *a3;

  return ID3ParserHandle::GetV1FrameInfoByID(v43, a6);
}

uint64_t ID3ParserHandle::CallReadProcForMoreFrames(ID3ParserHandle *this)
{
  v1 = 0;
  size = 0;
  v2 = *(this + 2);
  if (*(v2 + 48))
  {
    return v1;
  }

  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = *(v2 + 32);
    v6 = (v4 - 1);
    if (v6)
    {
      v7 = v6 + 1;
      do
      {
        v5 = *(v5 + 8);
        --v7;
      }

      while (v7 > 1);
    }

    if (v5 == v2 + 24)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 + 16;
    }

    v9 = (*(v8 + 4) + *(v8 + 8));
    if (v9 >= *(v2 + 52))
    {
      v1 = 0;
      *(v2 + 48) = 1;
      return v1;
    }
  }

  else
  {
    v9 = 10;
  }

  v1 = 0;
  if (v9 < 1)
  {
    return v1;
  }

  __src = 0;
  if (*(v2 + 68) == 1)
  {
    __dst = 0;
    v63 = 0;
    v64 = 0;
    v11 = v2 + 52;
    v10 = *(v2 + 52);
    size_4 = *(v11 + 4);
    v12 = v10 - v9;
    if (v12 >= 2 * size_4)
    {
      v13 = 2 * size_4;
    }

    else
    {
      v13 = v12;
    }

    v1 = (*(this + 3))(*(this + 4), 0, v9, v13, &__src, &size);
    if (!v1)
    {
      if (size >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = size;
      }

      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__dst, __src, __src + v14, v14);
    }

    (*(this + 3))(*(this + 4), 1, v9, v13, &__src, &size);
    v15 = __dst;
    if (!v1)
    {
      if (ResynchroniseBytes(__dst, v63 - __dst, *(*(this + 2) + 56), &size_4))
      {
        v61[1] = 0;
        ID3TagBase::GetFrameDataSize(*(this + 2), v15, *(*(this + 2) + 56), &v61[1], 0);
        v16 = v61[1];
        v61[0] = v61[1];
        v17 = size_4 + 2 * v61[1];
        v18 = *(*(this + 2) + 52) - v9;
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        v1 = (*(this + 3))(*(this + 4), 0, v9, v19, &__src, &size);
        if (!v1)
        {
          if (size >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = size;
          }

          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__dst, __src, __src + v20, v20);
        }

        (*(this + 3))(*(this + 4), 1, v9, v19, &__src, &size);
        v15 = __dst;
        if (!v1)
        {
          v21 = ResynchroniseBytes(__dst, v63 - __dst, *(*(this + 2) + 56) + v16, v61);
          v22 = *(this + 2);
          if (v21)
          {
            v23 = v61[0];
            ID3TagBase::SetFrameDataSize(v22, v15, *(v22 + 56), v61[0] - *(v22 + 56));
            v24 = *(this + 2);
            if ((*(v24 + 48) & 1) == 0 && *(v24 + 56) <= v23)
            {
              ID3TagBase::ProvideFrameData(v24, v15, v23, v9, v60, 0);
            }

            v1 = 0;
            if (!v15)
            {
              return v1;
            }
          }

          else
          {
            *(v22 + 48) = 1;
            if (!v15)
            {
              return v1;
            }
          }

LABEL_65:
          operator delete(v15);
          return v1;
        }
      }

      else
      {
        v1 = 0;
        *(*(this + 2) + 48) = 1;
      }
    }

    if (!v15)
    {
      return v1;
    }

    goto LABEL_65;
  }

  v25 = (*(this + 3))(*(this + 4), 0, v9, *(v2 + 56), &__src, &size);
  if (v25)
  {
    v1 = v25;
    (*(this + 3))(*(this + 4), 1, v9, *(*(this + 2) + 56), &__src, &size);
    return v1;
  }

  *v61 = 0;
  ID3TagBase::GetFrameDataSize(*(this + 2), __src, size, &v61[1], v61);
  v26 = *(this + 2);
  v27 = *(v26 + 64);
  v28 = v61[1];
  if (v27 == 4 && v61[1] >= 0x80)
  {
    v29 = v61[0];
    v30 = v61[0] - v61[1];
    if (v61[0] > v61[1])
    {
      v31 = *(v26 + 56);
      v32 = v61[0] + v9 + v31;
      if (v32 <= *(v26 + 52))
      {
        v33 = size;
        __dst = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, size, 1);
        v34 = __dst;
        if (!__dst)
        {
          return 2003334207;
        }

        memcpy(__dst, __src, v33);
        (*(this + 3))(*(this + 4), 1, v9, *(*(this + 2) + 56), &__src, &size);
        *v60 = 0;
        v59 = 0;
        v35 = v28 + v9;
        v1 = (*(this + 3))(*(this + 4), 0, (v35 + v31), *(*(this + 2) + 56), v60, &v59);
        if (v1)
        {
LABEL_83:
          free(v34);
          return v1;
        }

        v36 = *(this + 2);
        v37 = *v60;
        if (*v60 && v59 >= 4)
        {
          v38 = bswap32(**v60);
          if (*(v36 + 64) == 2)
          {
            v39 = v38 >> 8;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            v40 = 0;
            goto LABEL_77;
          }
        }

        else if (!v59)
        {
          v39 = 0;
          v40 = 1;
          goto LABEL_77;
        }

        v42 = v59 - 1;
        do
        {
          v39 = 0;
          v44 = *v37;
          v37 = (v37 + 1);
          v43 = v44;
          v40 = v44 == 0;
          v45 = v42-- != 0;
        }

        while (v45 && !v43);
LABEL_77:
        (*(this + 3))(*(this + 4), 1, v35, *(v36 + 56), v60, &v59);
        v46 = *(this + 2);
        if (ID3TagBase::IsValidFrameID(*(v46 + 64), v39))
        {
          if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
          {
            ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, 0);
          }

          v1 = 0;
          goto LABEL_82;
        }

        if ((*(v46 + 56) + v32) <= *(v46 + 52))
        {
          *v60 = 0;
          v59 = 0;
          v1 = (*(this + 3))(*(this + 4), 0, v32);
          v46 = *(this + 2);
          if (!v1)
          {
            v58 = 0;
            if (*v60 && v59 >= 4)
            {
              v51 = bswap32(**v60);
              if (*(v46 + 64) == 2)
              {
                v51 >>= 8;
              }

              v58 = v51;
            }

            (*(this + 3))(*(this + 4), 1, v32, *(v46 + 56), v60, &v59);
            v1 = 0;
            v46 = *(this + 2);
            v47 = v58;
LABEL_88:
            if (v47)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            if (!v48)
            {
              if (v47 && !ID3TagBase::IsValidFrameID(*(v46 + 64), v47))
              {
                v1 = 2003334207;
              }

              else
              {
                *(v46 + 70) = 1;
                if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
                {
                  ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, 1);
                }
              }

LABEL_82:
              if (!v34)
              {
                return v1;
              }

              goto LABEL_83;
            }

            if ((*(v46 + 70) & 1) == 0)
            {
              if (v30 >= 0x1000)
              {
                v49 = 4096;
              }

              else
              {
                v49 = v30;
              }

              *v60 = 0;
              v59 = 0;
              v50 = (v32 - v49);
              v1 = (*(this + 3))(*(this + 4), 0, v50, v49, v60, &v59);
              if (v1)
              {
                v46 = *(this + 2);
              }

              else
              {
                if (!v59)
                {
                  goto LABEL_117;
                }

                v52 = *v60;
                v53 = v59 - 1;
                do
                {
                  v55 = *v52;
                  v52 = (v52 + 1);
                  v54 = v55;
                  v45 = v53-- != 0;
                }

                while (v45 && !v54);
                if (v54)
                {
                  v56 = 1;
                }

                else
                {
LABEL_117:
                  v56 = 0;
                }

                (*(this + 3))(*(this + 4), 1, v50, v49, v60, &v59);
                v1 = 0;
                v57 = 0;
                v46 = *(this + 2);
                if (!v56)
                {
LABEL_120:
                  if ((*(v46 + 48) & 1) == 0 && *(v46 + 56) <= v33)
                  {
                    ID3TagBase::ProvideFrameData(v46, v34, v33, v9, &size_4, v57);
                    v34 = __dst;
                  }

                  goto LABEL_82;
                }
              }
            }

            v57 = 1;
            *(v46 + 70) = 1;
            goto LABEL_120;
          }
        }

        else
        {
          v1 = 0;
        }

        v47 = 0;
        goto LABEL_88;
      }
    }

    goto LABEL_56;
  }

  if (v27 == 4)
  {
    v29 = v61[0];
LABEL_56:
    if (v61[1] >= 0x80 && v61[1] == v29)
    {
      *(v26 + 70) = 1;
    }
  }

  if ((*(v26 + 48) & 1) == 0 && *(v26 + 56) <= size)
  {
    ID3TagBase::ProvideFrameData(v26, __src, size, v9, &__dst, 0);
    v26 = *(this + 2);
  }

  (*(this + 3))(*(this + 4), 1, v9, *(v26 + 56), &__src, &size);
  return 0;
}

void sub_18F6C90EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    free(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ID3TagBase::MultipleFramesAllowed(ID3TagBase *this, int a2)
{
  v2 = this;
  if (this == 2)
  {
    v3 = 5527640;
  }

  else
  {
    v3 = 1415075928;
  }

  v4 = 5724248;
  if (this != 2)
  {
    v4 = 1465407576;
  }

  result = 1;
  if (v3 != a2 && v4 != a2)
  {
    if (v2 == 2)
    {
      result = 0;
      if ((a2 & 0xFFFF0000) == 0x540000 || (a2 & 0xFFFF0000) == 0x570000)
      {
        return result;
      }

LABEL_14:
      result = 0;
      if (a2 <= 1163150158)
      {
        if (a2 <= 5063496)
        {
          if (a2 <= 4542804)
          {
            if (a2 == 4347206)
            {
              return result;
            }

            v6 = 4410964;
          }

          else
          {
            if (a2 == 4542805 || a2 == 4543555)
            {
              return result;
            }

            v6 = 4804684;
          }
        }

        else if (a2 > 5396032)
        {
          if (a2 == 5396033 || a2 == 5461059)
          {
            return result;
          }

          v6 = 1162958145;
        }

        else
        {
          if (a2 == 5063497 || a2 == 5065804)
          {
            return result;
          }

          v6 = 5391702;
        }
      }

      else if (a2 > 1347375954)
      {
        if (a2 > 1381388865)
        {
          if (a2 == 1381388866 || a2 == 1398363203)
          {
            return result;
          }

          v6 = 1431520594;
        }

        else
        {
          if (a2 == 1347375955 || a2 == 1380078918)
          {
            return result;
          }

          v6 = 1381384516;
        }
      }

      else if (a2 > 1296845907)
      {
        if (a2 == 1296845908 || a2 == 1331121733)
        {
          return result;
        }

        v6 = 1346588244;
      }

      else
      {
        if (a2 == 1163150159 || a2 == 1229999187)
        {
          return result;
        }

        v6 = 1296254025;
      }

      if (a2 != v6)
      {
        return 1;
      }

      return result;
    }

    result = 0;
    if ((a2 & 0xFF000000) != 0x54000000 && (a2 & 0xFF000000) != 0x57000000)
    {
      goto LABEL_14;
    }
  }

  return result;
}