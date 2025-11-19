uint64_t AUDenoise::Initialize(float32x2_t *this)
{
  *&v32[5] = *MEMORY[0x1E69E9840];
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (!AUDenoiseLogScope(void)::scope)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "AUDenoise.cpp";
      v29 = 1024;
      v30 = 163;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: Initialize.\n", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v2 = *AUDenoiseLogScope(void)::scope;
  if (*AUDenoiseLogScope(void)::scope)
  {
    goto LABEL_7;
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement(&this[10], 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = 0;
  this[79].i32[0] = *(Element + 108);
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = ausdk::AUScope::GetElement(&this[10], v4);
    if (!v7)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v8 = *(v7 + 108);
    if (v8 != this[79].i32[0])
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = ausdk::AUScope::GetElement(&this[16], v9);
        if (!v12)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v13 = *(v12 + 108);
        if (v13 != this[79].i32[0])
        {
          break;
        }

        v10 = 0;
        v9 = 1;
        if ((v11 & 1) == 0)
        {
          v14 = (*(*this + 408))(this, 4);
          if (!v14)
          {
            ausdk::ThrowQuiet(0);
          }

          ausdk::AUScope::SetNumberOfElements(v14, 0x10u);
          v26 = 0;
          AppFloatValue = CACFPreferencesGetAppFloatValue(@"pmwf_log_period_in_seconds", @"com.apple.coreaudio", &v26);
          if (v26)
          {
            v16 = AppFloatValue;
            if (v16 > 0.0)
            {
              this[92].f32[1] = v16;
              v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
              if ((v18 & 1) == 0)
              {
                abort();
              }

              ausdk::AUElement::SetParameter(v17, 0x1Du, v16);
              if (AUDenoiseLogScope(void)::once != -1)
              {
                dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
              }

              if (AUDenoiseLogScope(void)::scope)
              {
                v19 = *AUDenoiseLogScope(void)::scope;
                if (!*AUDenoiseLogScope(void)::scope)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v19 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v28 = "AUDenoise.cpp";
                v29 = 1024;
                v30 = 198;
                v31 = 2048;
                *v32 = v16;
                _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: Using logPeriod of (%g)s as specified in defaults write pmwf_log_period_in_seconds.\n", buf, 0x1Cu);
              }
            }
          }

LABEL_48:
          AUDenoise::UpdateState(this);
          this[67] = this[66];
          AUDenoise::InitializePMWFClasses(this);
          (*(*this + 72))(this, 0, 0);
          if (AUDenoiseLogScope(void)::once != -1)
          {
            dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
          }

          if (AUDenoiseLogScope(void)::scope)
          {
            v25 = *AUDenoiseLogScope(void)::scope;
            if (!*AUDenoiseLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v28 = "AUDenoise.cpp";
            v29 = 1024;
            v30 = 213;
            _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDenoise: Successfully initialized.\n", buf, 0x12u);
          }

          return 0;
        }
      }

      if (AUDenoiseLogScope(void)::once != -1)
      {
        dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
      }

      if (AUDenoiseLogScope(void)::scope)
      {
        v20 = *AUDenoiseLogScope(void)::scope;
        if (!*AUDenoiseLogScope(void)::scope)
        {
          return 4294956421;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = this[79].i32[0];
        *buf = 136315906;
        v28 = "AUDenoise.cpp";
        v29 = 1024;
        v30 = 180;
        v31 = 1024;
        v32[0] = v13;
        LOWORD(v32[1]) = 1024;
        *(&v32[1] + 2) = v23;
        v22 = "%25s:%-5d Number of channel in the output stream (%u) not equal to the expected number of channels (%u).\n";
        goto LABEL_43;
      }

      return 4294956421;
    }
  }

  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_15831);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v20 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return 4294956421;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = this[79].i32[0];
    *buf = 136315906;
    v28 = "AUDenoise.cpp";
    v29 = 1024;
    v30 = 173;
    v31 = 1024;
    v32[0] = v8;
    LOWORD(v32[1]) = 1024;
    *(&v32[1] + 2) = v21;
    v22 = "%25s:%-5d Number of channel in the input stream (%u) not equal to the expected number of channels (%u).\n";
LABEL_43:
    _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x1Eu);
  }

  return 4294956421;
}

void AUDenoise::CreateExtendedElements(AUDenoise *this)
{
  ausdk::AUScope::Initialize((this + 568), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v8, i);
    v3 = std::string::insert(&v8, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 568), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDE9F23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUDenoise::~AUDenoise(AUDenoise *this)
{
  AUDenoise::~AUDenoise(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592A438;
  std::unique_ptr<PMWF_FAST_GS_vDSP>::reset[abi:ne200100](this + 143, 0);
  std::unique_ptr<iPMWF_HRLS_vDSP>::reset[abi:ne200100](this + 144, 0);
  std::unique_ptr<GuidedMWF>::reset[abi:ne200100](this + 145, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 156, 0);
  v2 = *(this + 153);
  if (v2)
  {
    *(this + 154) = v2;
    operator delete(v2);
  }

  v3 = *(this + 150);
  if (v3)
  {
    *(this + 151) = v3;
    operator delete(v3);
  }

  v4 = *(this + 147);
  if (v4)
  {
    *(this + 148) = v4;
    operator delete(v4);
  }

  std::unique_ptr<PMWFStvPlistHolder>::reset[abi:ne200100](this + 146, 0);
  std::unique_ptr<GuidedMWF>::reset[abi:ne200100](this + 145, 0);
  std::unique_ptr<iPMWF_HRLS_vDSP>::reset[abi:ne200100](this + 144, 0);
  std::unique_ptr<PMWF_FAST_GS_vDSP>::reset[abi:ne200100](this + 143, 0);
  v5 = (this + 584);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v5);

  ausdk::AUBase::~AUBase(this);
}

uint64_t *std::unique_ptr<PMWFStvPlistHolder>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v3)
    {
      MEMORY[0x1E12BD160](v3, 0x60C4044C4A2DFLL);
    }

    v4 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = v2;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x1E12BD160](v2, 0x1020C40A98CFEF5);
  }

  return result;
}

void AUCircArray::StreamFormatChanged(AUCircArray *this)
{
  if ((*(this + 633) & 1) == 0)
  {
    AUCircArray::CreateDefaultConfigPlist(&cf, this);
    AUCircArray::SetConfigPlist(this, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1DDE9F484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void AUCircArray::CreateDefaultConfigPlist(AUCircArray *this, AUJBase *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:@"Default (Passthrough)" forKey:@"Version"];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{AUJBase::NumOutChannels(a2, 0)}];
  v7 = [v5 arrayWithObject:v6];
  [v4 setObject:v7 forKey:@"SpeakersInRows"];

  v8 = MEMORY[0x1E695DEC8];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v10 = [v8 arrayWithObject:v9];
  [v4 setObject:v10 forKey:@"FirstDriverAngles"];

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 7; ++i)
  {
    if (i == 1)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      [v11 addObject:v18];

      LODWORD(v19) = 1.0;
      v17 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v12 addObject:v17];
    }

    else
    {
      if (i)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
        [v11 addObject:v20];

        [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      }

      else
      {
        LODWORD(v13) = 1.0;
        v15 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
        [v11 addObject:v15];

        LODWORD(v16) = 1.0;
        [MEMORY[0x1E696AD98] numberWithFloat:v16];
      }
      v17 = ;
      [v12 addObject:v17];
    }
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, v12, 0}];
  [v4 setObject:v21 forKey:@"BeamCompositions"];

  [v4 setObject:&unk_1F595D3B8 forKey:@"BeamDescriptions"];
  [v4 setObject:&unk_1F595D3D0 forKey:@"EQBiQuad"];
  v22 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F595D400];
  v23 = 127;
  do
  {
    [v22 addObject:&unk_1F595D410];
    --v23;
  }

  while (v23);
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, v22, 0}];
  [v4 setObject:v24 forKey:@"BeamFIRs"];

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = 4;
  do
  {
    [v25 addObject:v22];
    --v26;
  }

  while (v26);
  v27 = [MEMORY[0x1E695DEC8] arrayWithObject:v25];
  [v4 setObject:v27 forKey:@"ModalFIRs"];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [v4 setObject:v28 forKey:@"LatencySamples"];

  v29 = v4;
  cf = v29;
  if (v29)
  {
    CFRetain(v29);
    *this = cf;
    v30 = CFGetTypeID(cf);
    if (v30 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_1DDE9F8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  __cxa_free_exception(v18);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v15);

  _Unwind_Resume(a1);
}

void AUCircArray::SetConfigPlist(AUCircArray *this, CFDictionaryRef theDict)
{
  v125 = *MEMORY[0x1E69E9840];
  theDicta = theDict;
  v104 = 0;
  v4 = *(this + 357);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    v6 = theDicta;
  }

  else
  {
    Count = 0;
    v6 = theDict;
  }

  if (!CFDictionaryContainsKey(v6, @"SpeakersInRows"))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 787;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Plist doesn't contain speakers in rows array";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Plist doesn't contain speakers in rows array", -1);
  }

  if (!CFDictionaryContainsKey(theDicta, @"FirstDriverAngles"))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 788;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Plist doesn't contain speakers offsets array";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v78 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v78, "Plist doesn't contain speakers offsets array", -1);
  }

  if (!CFDictionaryContainsKey(theDicta, @"BeamCompositions"))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 789;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Plist doesn't contain beam compositions array";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v79 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v79, "Plist doesn't contain beam compositions array", -1);
  }

  if (!CFDictionaryContainsKey(theDicta, @"BeamFIRs"))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 790;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Plist doesn't contain beam FIR array";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v80 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v80, "Plist doesn't contain beam FIR array", -1);
  }

  if (!CFDictionaryContainsKey(theDicta, @"ModalFIRs"))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 791;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Plist doesn't contain modal FIR array";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v81 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v81, "Plist doesn't contain modal FIR array", -1);
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v102 = 257;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v100 = 257;
  if (theDicta)
  {
    v7 = CFDictionaryGetValue(theDicta, @"SpeakersInRows");
  }

  else
  {
    v7 = 0;
  }

  v8 = CFGetTypeID(v7);
  if (v8 == CFArrayGetTypeID())
  {
    CACFDictionary::GetCACFArray(&theDicta, @"SpeakersInRows", &theArray);
    goto LABEL_24;
  }

  v9 = CFGetTypeID(v7);
  if (v9 == CFNumberGetTypeID())
  {
    LODWORD(__p) = 0;
    CACFDictionary::GetSInt32(theDicta, @"SpeakersInRows", &__p);
    if (HIBYTE(v102) == 1)
    {
      if (!theArray)
      {
        goto LABEL_24;
      }

      CFArrayRemoveAllValues(theArray);
    }

    if (theArray && HIBYTE(v102) == 1)
    {
      *&buf[8] = 0;
      LODWORD(valuePtr) = __p;
      v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      *buf = v10;
      buf[8] = 1;
      if (v10 && HIBYTE(v102) == 1)
      {
        CFArrayAppendValue(theArray, v10);
      }

      CACFNumber::~CACFNumber(buf);
    }
  }

LABEL_24:
  if (theDicta)
  {
    v11 = CFDictionaryGetValue(theDicta, @"FirstDriverAngles");
  }

  else
  {
    v11 = 0;
  }

  v12 = CFGetTypeID(v11);
  if (v12 == CFArrayGetTypeID())
  {
    CACFDictionary::GetCACFArray(&theDicta, @"FirstDriverAngles", &Mutable);
  }

  else
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      *buf = 0;
      CACFDictionary::GetFloat32(theDicta, @"FirstDriverAngles", buf);
      if (HIBYTE(v100) == 1 && Mutable)
      {
        CFArrayRemoveAllValues(Mutable);
      }

      CACFArray::AppendFloat32(&Mutable, *buf);
    }
  }

  CFHelper::extractVector<unsigned int>(&v98, &theArray);
  begin = v98.__begin_;
  if (v98.__begin_ == v98.__end_)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *begin++;
      v15 += v16;
    }

    while (begin != v98.__end_);
  }

  if (*(this + 17) == 1 && v15 != AUJBase::NumOutChannels(this, 0))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 802;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Speakers in row array does not have same number of speakers as AU output channels";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v86 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v86, "Speakers in row array does not have same number of speakers as AU output channels", -1);
  }

  if (theArray)
  {
    v17 = CFArrayGetCount(theArray);
  }

  else
  {
    v17 = 0;
  }

  v18 = Mutable;
  if (Mutable)
  {
    v18 = CFArrayGetCount(Mutable);
  }

  if (v17 != v18)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 806;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Speakers in rows array size doesn't match speaker offsets array size";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v82 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v82, "Speakers in rows array size doesn't match speaker offsets array size", -1);
  }

  v96 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v97 = 257;
  v94 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v95 = 257;
  if (CFDictionaryContainsKey(theDicta, @"BeamCompositions") && CFDictionaryContainsKey(theDicta, @"BeamFIRs"))
  {
    v111 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v112 = 257;
    CACFDictionary::GetCACFArray(&theDicta, @"BeamCompositions", &v111);
    v19 = v111;
    cf = 0;
    CACFArray::GetCFType(&v111, 0, &cf);
    v20 = cf;
    v21 = CFGetTypeID(cf);
    if (v21 == CFArrayGetTypeID())
    {
      CACFDictionary::operator=(&v96, v19);
    }

    else
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFNumberGetTypeID())
      {
        v23 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        *buf = v23;
        *&buf[8] = 257;
        if (v23)
        {
          CFArrayAppendValue(v23, v19);
          v24 = *buf;
        }

        else
        {
          v24 = 0;
        }

        CACFDictionary::operator=(&v96, v24);
        CACFArray::~CACFArray(buf);
      }
    }

    v123 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v124 = 257;
    CACFArray::GetCACFArray(&v96, 0, &v123);
    v121 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v122 = 257;
    CACFDictionary::GetCACFArray(&theDicta, @"ModalFIRs", &v121);
    v109 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v110 = 257;
    CACFArray::GetCACFArray(&v121, 0, &v109);
    if (v109)
    {
      v25 = CFArrayGetCount(v109);
      v26 = v25 - 1;
      v27 = v123;
      if (!v123)
      {
        if (v25)
        {
          goto LABEL_200;
        }

        goto LABEL_68;
      }
    }

    else
    {
      v25 = 0;
      v27 = v123;
      v26 = -1;
      if (!v123)
      {
LABEL_68:
        CFHelper::extractVectorOfVectors<float>(buf, &v96);
        v31 = *buf;
        v30 = *&buf[8];
        LODWORD(value) = 0;
        std::vector<float>::vector[abi:ne200100](&__p, (2 * v26) | 1u);
        std::vector<std::vector<float>>::vector[abi:ne200100](&valuePtr, 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 3));
        if (__p)
        {
          v108 = __p;
          operator delete(__p);
        }

        v32 = *buf;
        if (*&buf[8] != *buf)
        {
          v33 = 0;
          v34 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          if (v34 <= 1)
          {
            v34 = 1;
          }

          do
          {
            v35 = 0;
            v36 = *(v32 + 24 * v33);
            v37 = (*(v32 + 24 * v33 + 8) - v36) >> 2;
            v38 = 0xAAAAAAAAAAAAAAABLL * (v120 - valuePtr);
            v39 = &valuePtr[3 * v33];
            v40 = v25;
            do
            {
              if (!v37)
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              if (v38 <= v33)
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              if (v35 <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = v35;
              }

              v42 = (v41 - 1);
              if (v42 >= (v39[1] - *v39) >> 2)
              {
                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              v43 = *v36++;
              *(*v39 + v42) = v43;
              v35 += 2;
              --v37;
              --v40;
            }

            while (v40);
            ++v33;
          }

          while (v33 != v34);
        }

        __p = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        LOWORD(v108) = 257;
        v44 = valuePtr;
        v45 = v120;
        if (valuePtr != v120)
        {
          v46 = MEMORY[0x1E695E9C0];
          do
          {
            v47 = CFArrayCreateMutable(0, 0, v46);
            value = v47;
            v106 = 257;
            v49 = *v44;
            v48 = v44[1];
            if (*v44 != v48)
            {
              do
              {
                CACFArray::AppendFloat32(&value, *v49++);
              }

              while (v49 != v48);
              v47 = value;
            }

            if (__p && BYTE1(v108) == 1)
            {
              CFArrayAppendValue(__p, v47);
            }

            CACFArray::~CACFArray(&value);
            v44 += 3;
          }

          while (v44 != v45);
        }

        CACFArray::operator=(&v96, &__p);
        CACFArray::~CACFArray(&__p);
        __p = &valuePtr;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
        valuePtr = buf;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&valuePtr);
LABEL_92:
        *buf = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        *&buf[8] = 257;
        CACFDictionary::GetCACFArray(&theDicta, @"BeamFIRs", buf);
        v50 = *buf;
        __p = 0;
        CACFArray::GetCFType(buf, 0, &__p);
        v51 = __p;
        v52 = CFGetTypeID(__p);
        if (v52 == CFArrayGetTypeID())
        {
          CACFDictionary::operator=(&v94, v50);
        }

        else
        {
          v53 = CFGetTypeID(v51);
          if (v53 == CFNumberGetTypeID())
          {
            v54 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            valuePtr = v54;
            LOWORD(v120) = 257;
            if (v54)
            {
              CFArrayAppendValue(v54, v50);
              v55 = valuePtr;
            }

            else
            {
              v55 = 0;
            }

            CACFDictionary::operator=(&v94, v55);
            CACFArray::~CACFArray(&valuePtr);
          }
        }

        CACFArray::~CACFArray(buf);
        CACFArray::~CACFArray(&v109);
        CACFArray::~CACFArray(&v121);
        CACFArray::~CACFArray(&v123);
        CACFArray::~CACFArray(&v111);
        goto LABEL_100;
      }
    }

    v28 = CFArrayGetCount(v27);
    v29 = v123;
    if (v25 != v28)
    {
      if (!v123 || ((2 * v26) | 1) != CFArrayGetCount(v123))
      {
LABEL_200:
        __assert_rtn("GetBeamArrays", "AUCircArray.mm", 737, "firstBeamComp.GetNumberItems() == algoOrder + 1 || firstBeamComp.GetNumberItems() == algoOrder * 2 + 1");
      }

      v29 = v123;
    }

    if (v29)
    {
      LODWORD(v29) = CFArrayGetCount(v29);
    }

    if (v29 != v25)
    {
      goto LABEL_92;
    }

    goto LABEL_68;
  }

LABEL_100:
  if (v96)
  {
    v56 = CFArrayGetCount(v96);
  }

  else
  {
    v56 = 0;
  }

  v57 = v94;
  if (v94)
  {
    v57 = CFArrayGetCount(v94);
  }

  if (v56 != v57)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&valuePtr, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 812;
      v115 = 2080;
      p_valuePtr = &valuePtr;
      v117 = 2080;
      v118 = "Number of beam compositions and beam FIRs does not match";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v83 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v83, "Number of beam compositions and beam FIRs does not match", -1);
  }

  valuePtr = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LOWORD(v120) = 257;
  CACFDictionary::GetCACFArray(&theDicta, @"ModalFIRs", &valuePtr);
  __p = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LOWORD(v108) = 257;
  CACFArray::GetCACFArray(&valuePtr, 0, &__p);
  v111 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v112 = 257;
  CACFArray::GetCACFArray(&v96, 0, &v111);
  if (__p)
  {
    v58 = CFArrayGetCount(__p);
    v59 = __p;
    v60 = (this + 3000);
    *(this + 750) = v58 - 1;
    if (v59)
    {
      v61 = 2 * CFArrayGetCount(v59) - 1;
    }

    else
    {
      v61 = -1;
    }
  }

  else
  {
    v60 = (this + 3000);
    v61 = -1;
    *(this + 750) = -1;
  }

  if (!v111 || v61 != CFArrayGetCount(v111))
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v123, 0xFFFFFFFF);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 823;
      v115 = 2080;
      p_valuePtr = &v123;
      v117 = 2080;
      v118 = "Number of modal filters doesn't match what's expected from beam compositions";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v76 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v76, "Number of modal filters doesn't match what's expected from beam compositions", -1);
  }

  v123 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v124 = 257;
  CACFArray::GetCACFArray(&v96, 0, &v123);
  v62 = v123;
  if (v123)
  {
    v62 = CFArrayGetCount(v123);
  }

  if (v62 != *v60 + 1)
  {
    if (!v123)
    {
      goto LABEL_192;
    }

    if (((2 * *v60) | 1) == CFArrayGetCount(v123))
    {
      goto LABEL_118;
    }

    if (v123)
    {
      v87 = CFArrayGetCount(v123);
    }

    else
    {
LABEL_192:
      v87 = 0;
    }

    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(&v121, v87);
      *buf = 136315906;
      *&buf[4] = "AUCircArray.mm";
      *&buf[12] = 1024;
      *&buf[14] = 827;
      v115 = 2080;
      p_valuePtr = &v121;
      v117 = 2080;
      v118 = "Beam compositions size doesn't match expected from algo order";
      _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    v88 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v88, "Beam compositions size doesn't match expected from algo order", v87);
  }

LABEL_118:
  v121 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v122 = 257;
  v109 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v110 = 257;
  value = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v106 = 257;
  cf = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v93 = 257;
  v90 = 0;
  v91 = 1;
  if (CFDictionaryContainsKey(theDicta, @"EQBiQuad"))
  {
    CACFDictionary::GetCACFArray(&theDicta, @"EQBiQuad", &v121);
    if (v121)
    {
      if (-858993459 * CFArrayGetCount(v121) >= 0x33333334)
      {
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v113, 0xFFFFFFFF);
          *buf = 136315906;
          *&buf[4] = "AUCircArray.mm";
          *&buf[12] = 1024;
          *&buf[14] = 834;
          v115 = 2080;
          p_valuePtr = v113;
          v117 = 2080;
          v118 = "EQBQ array length not a multiple of 5, invalid";
          _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        v89 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v89, "EQBQ array length not a multiple of 5, invalid", -1);
      }
    }
  }

  if (CFDictionaryContainsKey(theDicta, @"DriverBQs"))
  {
    CACFDictionary::GetCACFArray(&theDicta, @"DriverBQs", &v109);
    v63 = v109;
    if (v109)
    {
      v63 = CFArrayGetCount(v109);
    }

    if (v63 != v15)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v113, 0xFFFFFFFF);
        *buf = 136315906;
        *&buf[4] = "AUCircArray.mm";
        *&buf[12] = 1024;
        *&buf[14] = 838;
        v115 = 2080;
        p_valuePtr = v113;
        v117 = 2080;
        v118 = "Driver BQ array does not have the same number of drivers as spksInRing";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v84 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v84, "Driver BQ array does not have the same number of drivers as spksInRing", -1);
    }
  }

  if (CFDictionaryContainsKey(theDicta, @"DriverMasks"))
  {
    CACFDictionary::GetCACFArray(&theDicta, @"DriverMasks", &value);
    v64 = value;
    if (value)
    {
      v64 = CFArrayGetCount(value);
    }

    if (v64 != v15)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v113, 0xFFFFFFFF);
        *buf = 136315906;
        *&buf[4] = "AUCircArray.mm";
        *&buf[12] = 1024;
        *&buf[14] = 842;
        v115 = 2080;
        p_valuePtr = v113;
        v117 = 2080;
        v118 = "Driver masks array does not have the same number of drivers as spksInRing";
        _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v85 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v85, "Driver masks array does not have the same number of drivers as spksInRing", -1);
    }
  }

  if (CFDictionaryContainsKey(theDicta, @"BeamDescriptions"))
  {
    CACFDictionary::GetCACFArray(&theDicta, @"BeamDescriptions", &cf);
  }

  if (CFDictionaryContainsKey(theDicta, @"Version"))
  {
    CACFString::operator=(&v90, 0);
    if (theDicta)
    {
      v65 = CFDictionaryGetValue(theDicta, @"Version");
      v66 = v65;
      if (v65)
      {
        v67 = CFGetTypeID(v65);
        if (v67 == CFStringGetTypeID())
        {
          CACFString::operator=(&v90, v66);
        }
      }
    }
  }

  v68 = CFDictionaryContainsKey(theDicta, @"LatencySamples");
  v69 = (this + 2984);
  if (v68)
  {
    CACFDictionary::GetSInt32(theDicta, @"LatencySamples", v69);
  }

  else
  {
    *v69 = 0;
  }

  CACFArray::operator=(this + 2824, &theArray);
  CACFArray::operator=(this + 2840, &Mutable);
  v70 = (this + 2856);
  CACFArray::operator=(this + 2856, &v96);
  CACFArray::operator=(this + 2872, &v94);
  CACFArray::operator=(this + 2888, &valuePtr);
  CACFArray::operator=(this + 2968, &cf);
  v71 = v90;
  v72 = *(this + 369);
  if (v90 != v72)
  {
    if (v72 && (*(this + 2960) & 1) != 0)
    {
      CFRelease(*(this + 369));
      v71 = v90;
    }

    *(this + 369) = v71;
    v73 = v91;
    *(this + 2960) = v91;
    if (v73 == 1 && v71)
    {
      CFRetain(v71);
    }
  }

  CACFArray::operator=(this + 2904, &v121);
  CACFArray::operator=(this + 2920, &v109);
  CACFArray::operator=(this + 2936, &value);
  CACFDictionary::operator=(this + 2808, theDict);
  v74 = *v70;
  if (*v70)
  {
    LODWORD(v74) = CFArrayGetCount(v74);
  }

  if (v74 != Count)
  {
    v75 = 8;
    do
    {
      (*(*this + 432))(this, 4, 0, v75);
      v75 = (v75 + 1);
    }

    while (v75 != 16);
    (*(*this + 432))(this, 4, 0, 0);
  }

  CACFString::~CACFString(&v90);
  CACFArray::~CACFArray(&cf);
  CACFArray::~CACFArray(&value);
  CACFArray::~CACFArray(&v109);
  CACFArray::~CACFArray(&v121);
  CACFArray::~CACFArray(&v123);
  CACFArray::~CACFArray(&v111);
  CACFArray::~CACFArray(&__p);
  CACFArray::~CACFArray(&valuePtr);
  CACFArray::~CACFArray(&v94);
  CACFArray::~CACFArray(&v96);
  if (v98.__begin_)
  {
    v98.__end_ = v98.__begin_;
    operator delete(v98.__begin_);
  }

  CACFArray::~CACFArray(&Mutable);
  CACFArray::~CACFArray(&theArray);
  CACFDictionary::~CACFDictionary(&theDicta);
}

void sub_1DDEA1204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  CACFNumber::~CACFNumber((v33 - 208));
  CACFArray::~CACFArray(&a20);
  CACFArray::~CACFArray(&a22);
  CACFDictionary::~CACFDictionary(&a24);
  _Unwind_Resume(a1);
}

void CACFString::~CACFString(CACFString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void std::vector<AUChannelInfo>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DDEA160C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUCircArray::NewFactoryPresetSet(AUCircArray *this, const AUPreset *a2)
{
  v3 = 0;
  presetNumber = a2->presetNumber;
  for (i = 1; ; i = 0)
  {
    v6 = &kPresets[4 * v3];
    if (presetNumber == v6->presetNumber)
    {
      break;
    }

    v7 = i;
    v3 = 1;
    if ((v7 & 1) == 0)
    {
      return 4294956445;
    }
  }

  if (presetNumber == 1)
  {
    (*(*this + 152))(this, 32, 0, 0, 0, 20.0);
    v10 = 0;
    do
    {
      (*(*this + 152))(this, v10, 0, 0, 0, 0.0);
      (*(*this + 152))(this, (v10 + 8), 0, 0, 0, 0.0);
      (*(*this + 152))(this, (v10 + 16), 0, 0, 0, 1.0);
      (*(*this + 152))(this, (v10 + 24), 0, 0, 0, 0.0);
      v10 = (v10 + 1);
    }

    while (v10 != 8);
  }

  else if (!presetNumber)
  {
    (*(*this + 152))(this, 32, 0, 0, 0, 20.0);
    (*(*this + 152))(this, 0, 0, 0, 0, 30.0);
    (*(*this + 152))(this, 1, 0, 0, 0, 30.0);
    (*(*this + 152))(this, 2, 0, 0, 0, 0.0);
    (*(*this + 152))(this, 3, 0, 0, 0, 0.0);
    (*(*this + 152))(this, 4, 0, 0, 0, -90.0);
    (*(*this + 152))(this, 5, 0, 0, 0, 90.0);
    (*(*this + 152))(this, 8, 0, 0, 0, 2.0);
    (*(*this + 152))(this, 9, 0, 0, 0, 2.0);
    (*(*this + 152))(this, 10, 0, 0, 0, 2.0);
    (*(*this + 152))(this, 11, 0, 0, 0, 2.0);
    (*(*this + 152))(this, 12, 0, 0, 0, 2.0);
    (*(*this + 152))(this, 13, 0, 0, 0, 2.0);
    v9 = 16;
    do
    {
      (*(*this + 152))(this, v9, 0, 0, 0, 1.0);
      (*(*this + 152))(this, (v9 + 8), 0, 0, 0, 0.0);
      v9 = (v9 + 1);
    }

    while (v9 != 24);
    (*(*this + 152))(this, 18, 0, 0, 0, 0.707);
    (*(*this + 152))(this, 19, 0, 0, 0, 0.707);
    (*(*this + 152))(this, 22, 0, 0, 0, 0.0);
    (*(*this + 152))(this, 23, 0, 0, 0, 0.0);
  }

  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, v6);
  return 0;
}

uint64_t AUCircArray::GetPresets(AUCircArray *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, 0);
    CFArrayAppendValue(Mutable, kPresets);
    CFArrayAppendValue(Mutable, &dword_1E866C690);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AUCircArray::GetParameterInfo(AUCircArray *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  v4 = -939524096;
  buffer->flags = -939524096;
  if (a2)
  {
    return 4294956418;
  }

  if (a3 <= 7)
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Beam Angle %u", a3 + 1);
    buffer->cfNameString = v7;
    v4 = buffer->flags | 0x8000010;
LABEL_5:
    buffer->flags = v4;
    CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 0xC3B400000000000FLL;
    _D0 = 1135869952;
    goto LABEL_18;
  }

  if (a3 <= 0xF)
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Beam Type %u", a3 - 7);
    buffer->cfNameString = v10;
    buffer->flags |= 0x8000010u;
    CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 1;
    v11 = *(this + 357);
    if (!v11 || (Count = CFArrayGetCount(v11), Count <= 1))
    {
      Count = 2;
    }

    HIDWORD(_D0) = 0;
    *&_D0 = (Count - 1);
    goto LABEL_18;
  }

  if (a3 <= 0x17)
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Gain %u", a3 - 15);
    buffer->cfNameString = v13;
    buffer->flags |= 0x8000010u;
    CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 14;
    __asm { FMOV            V0.2S, #1.0 }

    goto LABEL_18;
  }

  if (a3 <= 0x1F)
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Delay %u", a3 - 23);
    buffer->cfNameString = v18;
    buffer->flags |= 0x8000010u;
    CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 24;
    _D0 = 1148846080;
    goto LABEL_18;
  }

  if (a3 == 33)
  {
    v7 = @"Angle Offset";
    buffer->cfNameString = @"Angle Offset";
    goto LABEL_5;
  }

  if (a3 != 32)
  {
    return 4294956418;
  }

  buffer->cfNameString = @"Blend Time";
  buffer->flags = -939524096;
  CFStringGetCString(@"Blend Time", buffer->name, 52, 0x8000100u);
  *&buffer->unit = 0x3F80000000000018;
  _D0 = 0x42200000461C4000;
LABEL_18:
  result = 0;
  *&buffer->maxValue = _D0;
  return result;
}

uint64_t AUCircArray::ProcessMultipleBufferLists(atomic_uchar *this, unsigned int *a2, AudioDSP::Utility *a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  *&v195[38] = *MEMORY[0x1E69E9840];
  if (a4 != 1 || a6 != 1)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUCircArray.mm", 443, "inNumberInputBufferLists == 1 && inNumberOutputBufferLists == 1");
  }

  v11 = (this + 2752);
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::pop((this + 704), v11);
    v12 = 0;
  }

  while (v14);
  v15 = *v11;
  if (*(*v11 + 116))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = atomic_exchange(this + 632, 0);
    v15 = *(this + 344);
    if (v13 & v16)
    {
      LOBYTE(v16) = 1;
      *(v15 + 128) = 1;
    }
  }

  AUCircArray::ForwardParamsToKernel(this, v15, (v16 & 1) == 0);
  mNumberBuffers = (*a5)->mNumberBuffers;
  v18 = (*a7)->mNumberBuffers;
  if (mNumberBuffers)
  {
    v19 = 0;
    v20 = 8 * mNumberBuffers;
    v21 = 16;
    do
    {
      *(*(this + 345) + v19) = *(&(*a5)->mNumberBuffers + v21);
      v19 += 8;
      v21 += 16;
    }

    while (v20 != v19);
  }

  if (v18)
  {
    v22 = 0;
    v23 = 8 * v18;
    v24 = 16;
    do
    {
      *(*(this + 348) + v22) = *(&(*a7)->mNumberBuffers + v24);
      v22 += 8;
      v24 += 16;
    }

    while (v23 != v22);
  }

  *v195 = 0;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v26 = Element, (v27 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v183 = v27;
  v185 = a7;
  v186 = this;
  v181 = v11;
  __N = a3;
  AudioDSP::Utility::DetectNonFinites(a3, *a5, (v26 + 80), &v195[1], v28);
  if ((v195[1] & 1) != 0 && this[3004] == 1)
  {
    if (AUCircArrayLogScope(void)::once != -1)
    {
      dispatch_once(&AUCircArrayLogScope(void)::once, &__block_literal_global_16032);
    }

    v29 = a7;
    if (AUCircArrayLogScope(void)::scope)
    {
      v30 = *AUCircArrayLogScope(void)::scope;
      if (!v30)
      {
LABEL_52:
        v51 = *v29;
        if (v51->mNumberBuffers)
        {
          v52 = 0;
          p_mData = &v51->mBuffers[0].mData;
          do
          {
            bzero(*p_mData, *(p_mData - 1));
            ++v52;
            p_mData += 2;
          }

          while (v52 < v51->mNumberBuffers);
        }

        return 0;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v50 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *&v195[6] = 136315394;
      *&v195[10] = "AUCircArray.mm";
      *&v195[18] = 1024;
      *&v195[20] = 481;
      _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d AUCircArray: (InputSignals) is NOT finite", &v195[6], 0x12u);
    }

    v29 = v185;
    goto LABEL_52;
  }

  v31 = *(this + 344);
  v189 = *(this + 345);
  v182 = *(this + 348);
  v190 = *(v31 + 2380);
  if (v190 != a3)
  {
    v32 = *(v31 + 2464);
    v33 = *(v31 + 2472) - v32;
    if (v33 >= 1)
    {
      bzero(v32, v33);
    }
  }

  v34 = 0;
  do
  {
    v35 = v34;
    v36 = ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::pop(v31 + 320, (v31 + 208));
    v34 = 1;
  }

  while (v36);
  v37 = *(v31 + 129);
  if (*(v31 + 128) == 1 || ((v35 | v37) & 1) != 0)
  {
    *(v31 + 128) = 0;
    if (v37)
    {
      v38 = 0;
      *(v31 + 129) = 0;
      v39 = 1;
      do
      {
        v40 = v39;
        v41 = *(v31 + 2856);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2864) - v41) >> 3) <= v38)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        if (*(v31 + 2368))
        {
          v42 = 0;
          v43 = (v41 + 24 * v38);
          do
          {
            *&v195[2] = v42 + 16;
            *&v195[6] = &v195[2];
            v44 = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v31 + 8, v42 + 16);
            if (v42 >= (v43[1] - *v43) >> 2)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            *(*v43 + 4 * v42++) = *(v44 + 8);
          }

          while (v42 < *(v31 + 2368));
        }

        CircArrayKernel::Process(float const* const*,float * const*,unsigned int)::$_0::operator()(v31, v38);
        v39 = 0;
        v38 = 1;
      }

      while ((v40 & 1) != 0);
      goto LABEL_65;
    }

    v45 = *(v31 + 40);
    v46 = *(v31 + 2384);
    *&v195[2] = 32;
    *&v195[6] = &v195[2];
    v47 = rintf((v46 * *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v31 + 8, 0x20u) + 8)) / 1000.0);
    v48 = v47 & ~(v47 >> 63);
    *(v31 + 120) = v48;
    *(v31 + 124) = v48;
    if (v48 <= 1)
    {
      v48 = 1;
    }

    if (*(v31 + 40) <= 0.95)
    {
      if (*(v31 + 116))
      {
        *(v31 + 96) = 2;
        *(v31 + 104) = v48;
        v49 = 0x3F80000000000000;
        goto LABEL_47;
      }

      *(v31 + 64) = 2;
      *(v31 + 72) = v48;
      *(v31 + 76) = 0x3F80000000000000;
      *(v31 + 116) = 257;
      *(v31 + 48) = 0;
      v54 = v48;
      v55 = 1.0;
    }

    else
    {
      if (*(v31 + 116))
      {
        *(v31 + 96) = 2;
        *(v31 + 104) = v48;
        v49 = 1065353216;
LABEL_47:
        *(v31 + 108) = v49;
        *(v31 + 118) = 1;
LABEL_59:
        v56 = *(v31 + 2856);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2864) - v56) >> 3) <= (v45 <= 0.95))
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        if (*(v31 + 2368))
        {
          v57 = 0;
          v58 = (v56 + 24 * (v45 <= 0.95));
          do
          {
            *&v195[2] = v57 + 16;
            *&v195[6] = &v195[2];
            v59 = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v31 + 8, v57 + 16);
            if (v57 >= (v58[1] - *v58) >> 2)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            *(*v58 + 4 * v57++) = *(v59 + 8);
          }

          while (v57 < *(v31 + 2368));
        }

        CircArrayKernel::Process(float const* const*,float * const*,unsigned int)::$_0::operator()(v31, v45 <= 0.95);
        goto LABEL_65;
      }

      *(v31 + 64) = 2;
      *(v31 + 72) = v48;
      *(v31 + 76) = 1065353216;
      *(v31 + 116) = 257;
      *(v31 + 48) = 0;
      v54 = v48;
      v55 = -1.0;
    }

    *(v31 + 44) = v55 / v54;
    goto LABEL_59;
  }

LABEL_65:
  v191 = *(v31 + 116);
  if (v191)
  {
    v188 = 0;
    v184 = 1;
  }

  else
  {
    v184 = *(v31 + 40) > 0.95;
    v188 = v184;
  }

  if (*(v31 + 2368))
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 40;
    do
    {
      v64 = *(v31 + 2384);
      *&v195[2] = v62 + 24;
      *&v195[6] = &v195[2];
      v65 = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v31 + 8, v62 + 24);
      v66 = *(v31 + 2392);
      v67 = 0x8E38E38E38E38E39 * ((*(v31 + 2400) - v66) >> 3);
      if (v67 <= v62)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v68 = rintf((v64 * *(v65 + 8)) / 1000.0);
      v69 = v68 & ~(v68 >> 63);
      if (*(v66 + v63 + 24) < v69)
      {
        __assert_rtn("SetDelaySamples", "CircularDelay.cpp", 41, "numSamples <= mMaxDelaySamps");
      }

      v70 = *(v66 + v63 - 40);
      if (v70 >= v69)
      {
        *(v66 + v63 - 32) = v69;
        v71 = *(v66 + v63);
        v72 = v70 - v69 + v71;
        if (v71 < v69)
        {
          v73 = v72;
        }

        else
        {
          v73 = v71 - v69;
        }

        *(v66 + v63 + 8) = v73;
      }

      if (v190 == __N)
      {
        v74 = *(v31 + 2832);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2840) - v74) >> 3) <= v62)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v75 = (v189 + v61);
      }

      else
      {
        if (__N)
        {
          memmove(*(v31 + 2464), *(v189 + 8 * v62), 4 * __N);
          v66 = *(v31 + 2392);
          v67 = 0x8E38E38E38E38E39 * ((*(v31 + 2400) - v66) >> 3);
        }

        if (v67 <= v62)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v74 = *(v31 + 2832);
        v75 = (v31 + 2464);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2840) - v74) >> 3) <= v62)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }
      }

      v76 = (v66 + v63);
      v77 = *(v31 + 2380);
      if (*(v66 + v63 + 16) < v77)
      {
        __assert_rtn("Process", "CircularDelay.cpp", 57, "numFrames <= mMaxFrames");
      }

      v194 = v61;
      v78 = *(v76 - 5);
      v79 = *v76;
      v80 = v78 - *v76;
      if (v80 >= v77)
      {
        v81 = *(v31 + 2380);
      }

      else
      {
        v81 = v78 - *v76;
      }

      v82 = *(v76 - 3);
      if (v79 >= (*(v76 - 2) - v82) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v83 = *v75;
      v193 = v60;
      v84 = *(v74 + v60);
      memcpy((v82 + 4 * v79), *v75, 4 * v81);
      v85 = *(v66 + v63) + v81;
      v86 = *(v76 - 5);
      if (v85 >= v86)
      {
        v87 = *(v76 - 5);
      }

      else
      {
        v87 = 0;
      }

      v88 = v85 - v87;
      *(v66 + v63) = v88;
      if (v80 < v77)
      {
        v89 = *(v76 - 3);
        if (v88 >= (*(v76 - 2) - v89) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        memcpy((v89 + 4 * v88), &v83[4 * v81], 4 * (v77 - v81));
        *(v66 + v63) += v77 - v81;
        v86 = *(v76 - 5);
      }

      v90 = v66 + v63;
      v91 = *(v90 + 8);
      v92 = v86 - v91;
      if (v86 - v91 >= v77)
      {
        v93 = v77;
      }

      else
      {
        v93 = v86 - v91;
      }

      v94 = *(v76 - 3);
      if (v91 >= (*(v76 - 2) - v94) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      memcpy(v84, (v94 + 4 * v91), 4 * v93);
      v95 = *(v90 + 8) + v93;
      v96 = *(v76 - 5);
      if (v95 < v96)
      {
        v96 = 0;
      }

      v97 = v95 - v96;
      *(v90 + 8) = v97;
      if (v92 < v77)
      {
        v98 = *(v76 - 3);
        if (v97 >= (*(v76 - 2) - v98) >> 2)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v99 = v77 - v93;
        memcpy(&v84[4 * v93], (v98 + 4 * v97), 4 * v99);
        *(v90 + 8) += v99;
      }

      ++v62;
      v63 += 72;
      v61 = v194 + 8;
      v60 = v193 + 24;
    }

    while (v62 < *(v31 + 2368));
    v100 = __N;
  }

  else
  {
    v100 = __N;
  }

  v187 = v100;
  vDSP_biquadm(*(v31 + 2488), *(v31 + 2504), 1, *(v31 + 2528), 1, v100);
  if (v191)
  {
    v103 = *(v31 + 3048);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3056) - v103) >> 3) <= 1)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v104 = *(v31 + 2380);
    v105 = v103[3];
    if (v104 > (v103[4] - v105) >> 2)
    {
      __assert_rtn("Process", "ParamRamper.cpp", 53, "outParamValues.size() >= inNumFrames");
    }

    if (*(v31 + 117) == 1)
    {
      if (v104)
      {
        v106 = 0;
        v107 = *(v31 + 116);
        v108 = 1;
        do
        {
          if (v106 >= *(v31 + 68) && (v108 & 1) != 0)
          {
            if ((v107 & 1) == 0)
            {
              *(v31 + 116) = 1;
              *(v31 + 48) = 0;
              *(v31 + 44) = (*(v31 + 80) - *(v31 + 76)) / *(v31 + 72);
            }
          }

          else if ((v107 & 1) == 0)
          {
            v111 = v103[3];
            if (v106 >= (v103[4] - v111) >> 2)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v107 = 0;
            *(v111 + 4 * v106) = *(v31 + 40);
            goto LABEL_125;
          }

          v109 = v103[3];
          if (v106 >= (v103[4] - v109) >> 2)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v110 = *(v31 + 48);
          *(v109 + 4 * v106) = *(v31 + 76) + (v110 * *(v31 + 44));
          *(v31 + 48) = v110 + 1;
          if (v110 + 1 >= *(v31 + 72))
          {
            v108 = 0;
            v107 = 0;
            *(v31 + 116) = 0;
            *(v31 + 40) = *(v31 + 80);
            if (*(v31 + 118) == 1)
            {
              v107 = 0;
              *(v31 + 52) = *(v31 + 84);
              *(v31 + 68) = *(v31 + 100);
              v108 = 1;
              *(v31 + 117) = 1;
            }
          }

          else
          {
            v107 = 1;
          }

LABEL_125:
          ++v106;
        }

        while (v104 != v106);
      }
    }

    else if (v104)
    {
      v102.i32[0] = *(v31 + 40);
      v112 = (v104 + 3) & 0x1FFFFFFFCLL;
      v113 = vdupq_n_s64(v104 - 1);
      v114 = (v105 + 8);
      v115 = 3;
      do
      {
        v116 = vdupq_n_s64(v115 - 3);
        v117 = vmovn_s64(vcgeq_u64(v113, vorrq_s8(v116, xmmword_1DE095160)));
        if (vuzp1_s16(v117, v102).u8[0])
        {
          *(v114 - 2) = v102.i32[0];
        }

        if (vuzp1_s16(v117, v102).i8[2])
        {
          *(v114 - 1) = v102.i32[0];
        }

        if (vuzp1_s16(v102, vmovn_s64(vcgeq_u64(v113, vorrq_s8(v116, xmmword_1DE095150)))).i32[1])
        {
          *v114 = v102.i32[0];
          v114[1] = v102.i32[0];
        }

        v115 += 4;
        v114 += 4;
        v112 -= 4;
      }

      while (v112);
    }

    *&v195[2] = 0x3F800000BF800000;
    MEMORY[0x1E12BE910](v103[3], 1, &v195[2], &v195[6], *v103, 1);
  }

  if (*(v31 + 2368))
  {
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    do
    {
      if (v191)
      {
        v123 = *(v31 + 3048);
        if (*(v31 + 3056) == v123)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v124 = *(v31 + 2856);
        if (*(v31 + 2864) == v124)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MEMORY[0x1E12BE940](*v123, 1, *v124 + v120, *(v31 + 2928), 1, *(v31 + 2380));
        v125 = *(v31 + 3048);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3056) - v125) >> 3) <= 1)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v126 = *(v31 + 2856);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2864) - v126) >> 3) <= 1)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MEMORY[0x1E12BE8F0](*(v125 + 24), 1, *(v126 + 24) + v120, *(v31 + 2928), 1, *(v31 + 2928), 1, *(v31 + 2380));
        v127 = *(v31 + 2952);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2960) - v127) >> 3) <= v122)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MEMORY[0x1E12BE7F0](*(v31 + 2928), 1, *(v127 + v121), 1, *(v31 + 2928), 1, *(v31 + 2380));
      }

      else
      {
        v129 = *(v31 + 2952);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2960) - v129) >> 3) <= v122)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v130 = *(v31 + 2856);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2864) - v130) >> 3) <= v188)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        MEMORY[0x1E12BE940](*(v129 + v121), 1, *(v130 + 24 * v188) + v120, *(v31 + 2928), 1, *(v31 + 2380));
      }

      v131 = *(v31 + 2616);
      if (0xCF3CF3CF3CF3CF3DLL * ((*(v31 + 2624) - v131) >> 3) <= v122)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v132 = *(v31 + 2416);
      if (v122 >= (*(v31 + 2424) - v132) >> 5)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      FreqDomainConvolver::Process((v131 + v118), *(v31 + 2928), 0, *(v31 + 2380), (v132 + v119), v128);
      ++v122;
      v121 += 24;
      v120 += 4;
      v119 += 32;
      v118 += 168;
    }

    while (v122 < *(v31 + 2368));
  }

  if (v188 <= v184)
  {
    v133 = 0;
    v134 = v188;
    v135 = (8 * v188) | (16 * v188);
    do
    {
      if (v135 + v133 == 48)
      {
        std::__throw_out_of_range[abi:ne200100]("array::at");
      }

      SmartFIR::ProcessFreq(*(v31 + 8 * v134 + 2664), *(v31 + v135 + v133 + 2680), *(v31 + v135 + v133 + 2728));
      v136 = *(v31 + 3000);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3008) - v136) >> 3) <= v134)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v137 = *(v31 + 2976);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 2984) - v137) >> 3) <= v134)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v138 = *(v31 + 3024);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3032) - v138) >> 3) <= v134)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      vDSP_mmul(*(v136 + v135 + v133), 1, *(v137 + v135 + v133), 1, *(v138 + v135 + v133), 1, *(v31 + 2376), *(v31 + 2380), *(v31 + 2368));
      ++v134;
      v133 += 24;
    }

    while (24 * (v184 - v188) + 24 != v133);
  }

  v139 = *(v31 + 2376);
  if (v191)
  {
    if (!v139)
    {
      goto LABEL_174;
    }

    v140 = 0;
    v141 = (8 * v188) | (16 * v188);
    do
    {
      v142 = *(v31 + 3024);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3032) - v142) >> 3) <= v188)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v143 = *(v31 + 3048);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3056) - v143) >> 3) <= v188)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v144 = *(v142 + v141) + 4 * *(v31 + 2380) * v140;
      MEMORY[0x1E12BE7F0](v144, 1, *(v143 + v141), 1, v144, 1);
      v145 = *(v31 + 3024);
      v146 = 0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3032) - v145) >> 3);
      if (v146 <= v184)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v147 = *(v31 + 3048);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3056) - v147) >> 3) <= v184)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v146 <= v188)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v148 = *(v31 + 2380) * v140;
      v149 = *(v145 + 24 * v188) + 4 * v148;
      MEMORY[0x1E12BE780](*(v145 + 24 * v184) + 4 * v148, 1, *(v147 + 24 * v184), 1, v149, 1, v149, 1, *(v31 + 2380));
      ++v140;
      v139 = *(v31 + 2376);
    }

    while (v140 < v139);
  }

  if (v139)
  {
    v150 = 0;
    v151 = 0;
    v152 = 0;
    do
    {
      v153 = *(v31 + 2640);
      if (0xCF3CF3CF3CF3CF3DLL * ((*(v31 + 2648) - v153) >> 3) <= v152)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v154 = *(v31 + 3024);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 3032) - v154) >> 3) <= v188)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v155 = *(v31 + 2440);
      if (v152 >= (*(v31 + 2448) - v155) >> 5)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      FreqDomainConvolver::Process((v153 + v150), (*(v154 + 24 * v188) + 4 * (*(v31 + 2380) * v152++)), 0, *(v31 + 2380), (v155 + v151), v101);
      v151 += 32;
      v150 += 168;
    }

    while (v152 < *(v31 + 2376));
  }

LABEL_174:
  SmartFIR::ProcessFreq(*(v31 + 2776), *(v31 + 2784), *(v31 + 2808));
  v156 = *(v31 + 136);
  if (*(v31 + 144) != v156)
  {
    v157 = 0;
    v158 = 0;
    v159 = 1;
    do
    {
      v160 = *(v31 + 2376);
      v161 = (v160 * v158);
      v162 = *(v31 + 3096);
      if (v161 >= (*(v31 + 3104) - v162) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v163 = *(v31 + 2380);
      v164 = v160 * (v159 - 1) * v163;
      v165 = *(v31 + 3072);
      if (v164 >= (*(v31 + 3080) - v165) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v166 = (v163 * v158);
      v167 = *(v31 + 3120);
      if (v166 >= (*(v31 + 3128) - v167) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      vDSP_mmul((v162 + 4 * v161), 1, (v165 + 4 * v164), 1, (v167 + 4 * v166), 1, *(v156 + 4 * v157), v163, *(v31 + 2376));
      v156 = *(v31 + 136);
      v168 = (*(v31 + 144) - v156) >> 2;
      if (v168 <= v157)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v158 += *(v156 + 4 * v157);
      v157 = v159;
    }

    while (v168 > v159++);
  }

  v170 = *(v31 + 2372);
  if (v170)
  {
    for (i = 0; i != v170; ++i)
    {
      v172 = *(v31 + 2592);
      if (i >= (*(v31 + 2600) - v172) >> 3)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      *(v172 + 8 * i) = *(v182 + 8 * i);
    }
  }

  vDSP_biquadm(*(v31 + 2552), *(v31 + 2568), 1, *(v31 + 2592), 1, v187);
  AudioDSP::Utility::DetectNonFinites(__N, *v185, (v183 + 80), v195, v173);
  if (v195[0] == 1 && v186[3004] == 1)
  {
    if (AUCircArrayLogScope(void)::once != -1)
    {
      dispatch_once(&AUCircArrayLogScope(void)::once, &__block_literal_global_16032);
    }

    v174 = v181;
    if (AUCircArrayLogScope(void)::scope)
    {
      v175 = *AUCircArrayLogScope(void)::scope;
      if (!v175)
      {
LABEL_196:
        CircArrayKernel::Reset(*v174);
        v177 = *v185;
        if ((*v185)->mNumberBuffers)
        {
          v178 = 0;
          v179 = &v177->mBuffers[0].mData;
          do
          {
            bzero(*v179, *(v179 - 1));
            ++v178;
            v179 += 2;
          }

          while (v178 < v177->mNumberBuffers);
        }

        return 0;
      }
    }

    else
    {
      v175 = MEMORY[0x1E69E9C10];
      v176 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
    {
      *&v195[6] = 136315394;
      *&v195[10] = "AUCircArray.mm";
      *&v195[18] = 1024;
      *&v195[20] = 489;
      _os_log_impl(&dword_1DDB85000, v175, OS_LOG_TYPE_ERROR, "%25s:%-5d AUCircArray: (OutputSignals) is NOT finite", &v195[6], 0x12u);
    }

    v174 = v181;
    goto LABEL_196;
  }

  return 0;
}

BOOL ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::pop(uint64_t a1, CircArrayKernel **a2)
{
  v10 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v10);
  if (v4)
  {
    v5 = v10;
    if (!v10)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v9 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v9))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }
    }

    std::unique_ptr<CircArrayKernel>::reset[abi:ne200100](a2, v5);
  }

  return v4;
}

uint64_t *AUCircArray::ForwardParamsToKernel(AUJBase *this, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    LODWORD(v15) = 0;
    (*(*this + 144))(this, 33, a3, 0, &v15);
    v9 = 0;
    v10 = *&v15;
    while (v9 < AUJBase::NumInChannels(this, 0))
    {
      LODWORD(v15) = 0;
      (*(*this + 144))(this, v9, 0, 0, &v15);
      v11 = *&v15 - v10;
      v14 = v9;
      v15 = &v14;
      *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 8, v9) + 8) = v11;
      LODWORD(v15) = 0;
      (*(*this + 144))(this, (v9 + 8), 0, 0, &v15);
      v12 = v15;
      v14 = v9 + 8;
      v15 = &v14;
      *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 8, v9 + 8) + 8) = v12;
      LODWORD(v15) = 0;
      (*(*this + 144))(this, (v9 + 16), 0, 0, &v15);
      v13 = v15;
      v14 = v9 + 16;
      v15 = &v14;
      *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 8, v9 + 16) + 8) = v13;
      v9 = (v9 + 1);
    }
  }

  for (i = 0; i < AUJBase::NumInChannels(this, 0); ++i)
  {
    LODWORD(v15) = 0;
    (*(*this + 144))(this, i + 24, 0, 0, &v15);
    v6 = v15;
    v14 = i + 24;
    v15 = &v14;
    *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 8, i + 24) + 8) = v6;
  }

  LODWORD(v15) = 0;
  (*(*this + 144))(this, 32, 0, 0, &v15);
  v7 = v15;
  v14 = 32;
  v15 = &v14;
  result = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a2 + 8, 0x20u);
  *(result + 8) = v7;
  return result;
}

CircArrayKernel *std::unique_ptr<CircArrayKernel>::reset[abi:ne200100](CircArrayKernel **a1, CircArrayKernel *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CircArrayKernel::~CircArrayKernel(result);

    JUMPOUT(0x1E12BD150);
  }

  return result;
}

void CircArrayKernel::~CircArrayKernel(CircArrayKernel *this)
{
  v2 = *(this + 390);
  if (v2)
  {
    *(this + 391) = v2;
    operator delete(v2);
  }

  v3 = *(this + 387);
  if (v3)
  {
    *(this + 388) = v3;
    operator delete(v3);
  }

  v4 = *(this + 384);
  if (v4)
  {
    *(this + 385) = v4;
    operator delete(v4);
  }

  v23 = (this + 3048);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 3024);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 3000);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2976);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2952);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v5 = *(this + 366);
  if (v5)
  {
    *(this + 367) = v5;
    operator delete(v5);
  }

  v23 = (this + 2904);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2880);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2856);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2832);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v6 = *(this + 351);
  if (v6)
  {
    *(this + 352) = v6;
    operator delete(v6);
  }

  v7 = *(this + 348);
  if (v7)
  {
    *(this + 349) = v7;
    operator delete(v7);
  }

  std::unique_ptr<SmartFIR>::~unique_ptr[abi:ne200100](this + 347);
  for (i = 0; i != -48; i -= 24)
  {
    v9 = *(this + i + 2752);
    if (v9)
    {
      *(this + i + 2760) = v9;
      operator delete(v9);
    }
  }

  for (j = 0; j != -48; j -= 24)
  {
    v11 = *(this + j + 2704);
    if (v11)
    {
      *(this + j + 2712) = v11;
      operator delete(v11);
    }
  }

  for (k = 2672; k != 2656; k -= 8)
  {
    std::unique_ptr<SmartFIR>::~unique_ptr[abi:ne200100]((this + k));
  }

  v23 = (this + 2640);
  std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2616);
  std::vector<FreqDomainConvolver>::__destroy_vector::operator()[abi:ne200100](&v23);
  v13 = *(this + 324);
  if (v13)
  {
    *(this + 325) = v13;
    operator delete(v13);
  }

  v14 = *(this + 321);
  if (v14)
  {
    *(this + 322) = v14;
    operator delete(v14);
  }

  v15 = *(this + 319);
  *(this + 319) = 0;
  if (v15)
  {
    (*(this + 320))();
  }

  v16 = *(this + 316);
  if (v16)
  {
    *(this + 317) = v16;
    operator delete(v16);
  }

  v17 = *(this + 313);
  if (v17)
  {
    *(this + 314) = v17;
    operator delete(v17);
  }

  v18 = *(this + 311);
  *(this + 311) = 0;
  if (v18)
  {
    (*(this + 312))();
  }

  v19 = *(this + 308);
  if (v19)
  {
    *(this + 309) = v19;
    operator delete(v19);
  }

  v23 = (this + 2440);
  std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2416);
  std::vector<CDSPSplitComplex>::__destroy_vector::operator()[abi:ne200100](&v23);
  v23 = (this + 2392);
  std::vector<CircularDelay>::__destroy_vector::operator()[abi:ne200100](&v23);
  *(this + 32) = &unk_1F592AA20;
  ca::concurrent::deferred_deletion_queue<std::vector<std::vector<float>>,10ul,std::default_delete<std::vector<std::vector<float>>>>::~deferred_deletion_queue(this + 320);
  v20 = *(this + 26);
  *(this + 26) = 0;
  if (v20)
  {
    v23 = v20;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
    MEMORY[0x1E12BD160](v20, 0x20C40960023A9);
  }

  v23 = (this + 184);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v23);
  v21 = *(this + 20);
  if (v21)
  {
    *(this + 21) = v21;
    operator delete(v21);
  }

  v22 = *(this + 17);
  if (v22)
  {
    *(this + 18) = v22;
    operator delete(v22);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 2));
}

SmartFIR **std::unique_ptr<SmartFIR>::~unique_ptr[abi:ne200100](SmartFIR **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SmartFIR::~SmartFIR(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

uint64_t AUCircArray::SetParameter(AUCircArray *this, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  result = AUJBase::SetParameter(this, a2, a3, a4, a5);
  if (!(v5 | v6) && (v7 < 0x18 || v7 == 33))
  {
    atomic_store(1u, this + 632);
  }

  return result;
}

uint64_t AUCircArray::SetProperty(AUCircArray *this, int a2, int a3, int a4, CFTypeRef *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = 4294956417;
  if (a4 | a3 || !a5)
  {
    return v5;
  }

  switch(a2)
  {
    case 1718186611:
      goto LABEL_6;
    case 1668179559:
      v12 = *a5;
      v13 = CFGetTypeID(*a5);
      if (v13 != CFDictionaryGetTypeID())
      {
        return 4294956445;
      }

      *(this + 633) = 1;
      AUCircArray::SetConfigPlist(this, v12);
      (*(*this + 432))(this, 1668179559, 0, 0);
      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      if (AUJBase::AUJBaseLogScope(void)::scope)
      {
        v14 = *AUJBase::AUJBaseLogScope(void)::scope;
        if (!v14)
        {
LABEL_23:
          if (*(this + 17) == 1)
          {
            AUCircArray::CreateKernel(v20, this);
          }

          return 0;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "AUCircArray.mm";
        v22 = 1024;
        v23 = 415;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Changed config plist successfully\n", buf, 0x12u);
      }

      goto LABEL_23;
    case 8803:
LABEL_6:
      v7 = *a5;
      v8 = CFGetTypeID(*a5);
      if (v8 == CFArrayGetTypeID())
      {
        CACFDictionary::operator=(this + 2872, v7);
        v9 = *(this + 344);
        if (v9)
        {
          CFHelper::extractVectorOfVectors<float>(&v18, this + 359);
          v10 = **(v9 + 208);
          v11 = *(*(v9 + 208) + 8);
          if (v19 - v18 == v11 - v10)
          {
            if (v19 == v18 || v11 == v10)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            if (*(v18 + 1) - *v18 == *(v10 + 1) - *v10)
            {
              operator new();
            }

            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v20, 0xFFFFFFFF);
              buf[0] = 136315906;
              *&buf[1] = "CircArrayKernel.mm";
              v22 = 1024;
              v23 = 536;
              v24 = 2080;
              v25 = v20;
              v26 = 2080;
              v27 = "New beam filters differ in size from previous ones";
              _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            exception = __cxa_allocate_exception(0x110uLL);
            CAXException::CAXException(exception, "New beam filters differ in size from previous ones", -1);
          }

          else
          {
            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v20, 0xFFFFFFFF);
              buf[0] = 136315906;
              *&buf[1] = "CircArrayKernel.mm";
              v22 = 1024;
              v23 = 535;
              v24 = 2080;
              v25 = v20;
              v26 = 2080;
              v27 = "Number of beam FIRs doesn't match current number";
              _os_log_impl(&dword_1DDB85000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            exception = __cxa_allocate_exception(0x110uLL);
            CAXException::CAXException(exception, "Number of beam FIRs doesn't match current number", -1);
          }
        }

        return 0;
      }

      return 4294956445;
  }

  return v5;
}

void AUCircArray::CreateKernel(AUCircArray *this, CFArrayRef *a2)
{
  CFHelper::extractVector<float>(&v66, a2 + 355);
  CFHelper::extractVectorOfVectors<float>(v65, a2 + 357);
  CFHelper::extractVectorOfVectors<float>(v64, a2 + 359);
  v52 = a2;
  CFHelper::extractVector<unsigned int>(&v63, a2 + 353);
  begin = v63.__begin_;
  v4 = 0;
  if (v63.__begin_ == v63.__end_)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    do
    {
      v5 = *begin++;
      v4 += v5;
    }

    while (begin != v63.__end_);
    v60 = 0;
    v61 = 0;
    v6 = 1;
    v62 = 0;
    v7 = MEMORY[0x1E695E9C0];
    do
    {
      __p = CFArrayCreateMutable(0, 0, v7);
      LOWORD(v58) = 257;
      CACFArray::GetCACFArray(a2 + 361, v6 - 1, &__p);
      CFHelper::extractVectorOfVectors<float>(&v67, &__p);
      v8 = v61;
      if (v61 >= v62)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v62 - v60) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((v62 - v60) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v74 = &v60;
        if (v12)
        {
          std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v12);
        }

        v13 = (8 * ((v61 - v60) >> 3));
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = v67;
        v13[2] = v68;
        v67 = 0uLL;
        v68 = 0;
        v9 = 24 * v10 + 24;
        v14 = (24 * v10 - (v61 - v60));
        memcpy(v13 - (v61 - v60), v60, v61 - v60);
        v15 = v60;
        v16 = v62;
        v60 = v14;
        v61 = v9;
        v62 = 0;
        v72 = v15;
        v73 = v16;
        *&v71 = v15;
        *(&v71 + 1) = v15;
        std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&v71);
      }

      else
      {
        *v61 = 0;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = v67;
        *(v8 + 2) = v68;
        v67 = 0uLL;
        v68 = 0;
        v9 = (v8 + 24);
      }

      v61 = v9;
      *&v71 = &v67;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v71);
      CACFArray::~CACFArray(&__p);
      v17 = v6++;
    }

    while (v17 < v63.__end_ - v63.__begin_);
  }

  v18 = a2[363];
  if (!v18 || !CFArrayGetCount(v18))
  {
    __p = 0;
    v58 = 0;
    v59 = 0;
    operator new();
  }

  CFHelper::extractVector<double>(&__p, a2 + 363);
  v55 = 0uLL;
  v56 = 0;
  v19 = a2[365];
  if (!v19 || !CFArrayGetCount(v19))
  {
    operator new();
  }

  v20 = a2 + 365;
  cf[0] = 0;
  cf[1] = 0;
  v54 = 0;
  v21 = a2[365];
  if (v21)
  {
    Count = CFArrayGetCount(v21);
    if (0xAAAAAAAAAAAAAAABLL * ((v54 - cf[0]) >> 3) < Count)
    {
      v74 = cf;
      std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](Count);
    }
  }

  v23 = 0;
  v24 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v25 = *v20;
    if (*v20)
    {
      LODWORD(v25) = CFArrayGetCount(v25);
    }

    if (v23 >= v25)
    {
      break;
    }

    valuePtr = CFArrayCreateMutable(0, 0, v24);
    v70 = 257;
    CACFArray::GetCACFArray(v20, v23, &valuePtr);
    CFHelper::extractVector<double>(&v67, &valuePtr);
    v26 = cf[1];
    if (cf[1] >= v54)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * ((cf[1] - cf[0]) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v54 - cf[0]) >> 3) > v28)
      {
        v28 = 0x5555555555555556 * ((v54 - cf[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v54 - cf[0]) >> 3) >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v28;
      }

      v74 = cf;
      if (v29)
      {
        std::allocator<std::vector<float *>>::allocate_at_least[abi:ne200100](v29);
      }

      v30 = (8 * ((cf[1] - cf[0]) >> 3));
      *v30 = 0;
      v30[1] = 0;
      v30[2] = 0;
      *v30 = v67;
      v30[2] = v68;
      v67 = 0uLL;
      v68 = 0;
      v31 = (24 * v27 - (cf[1] - cf[0]));
      memcpy(v31, cf[0], cf[1] - cf[0]);
      v32 = cf[0];
      v33 = v54;
      cf[0] = v31;
      cf[1] = (24 * v27 + 24);
      v54 = 0;
      v72 = v32;
      v73 = v33;
      *&v71 = v32;
      *(&v71 + 1) = v32;
      std::__split_buffer<std::vector<float *>>::~__split_buffer(&v71);
      cf[1] = (24 * v27 + 24);
      if (v67)
      {
        *(&v67 + 1) = v67;
        operator delete(v67);
      }
    }

    else
    {
      *cf[1] = 0;
      v26[1] = 0;
      v26[2] = 0;
      *v26 = v67;
      v26[2] = v68;
      v67 = 0uLL;
      v68 = 0;
      cf[1] = v26 + 3;
    }

    CACFArray::~CACFArray(&valuePtr);
    ++v23;
  }

  std::vector<std::vector<float>>::__vdeallocate(&v55);
  v55 = *cf;
  v56 = v54;
  cf[1] = 0;
  v54 = 0;
  cf[0] = 0;
  *&v71 = cf;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v71);
  v71 = 0uLL;
  v72 = 0;
  v34 = *(v52 + 367);
  if (!v34 || !CFArrayGetCount(v34))
  {
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v71 = 0u;
    v72 = 0;
LABEL_82:
    if (ausdk::AUScope::GetElement((v52 + 128), 0))
    {
      v49 = AUJBase::NumInChannels(v52, 0);
      v50 = *(v52 + 84);
      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      v51 = operator new(0xC80uLL, 0x40uLL);
      CircArrayKernel::CircArrayKernel(v51, v50, v49, *(v52 + 750), &v63, &v66, v65);
    }

    ausdk::Throw(0xFFFFD583);
  }

  v35 = (v52 + 2936);
  v67 = 0uLL;
  v68 = 0;
  if (*(v52 + 367))
  {
    v36 = CFArrayGetCount(*(v52 + 367));
  }

  else
  {
    v36 = 0;
  }

  std::vector<unsigned char>::reserve(&v67, v36);
  v37 = 0;
  v38 = 0;
  v40 = *(&v67 + 1);
  v39 = v68;
  v41 = v67;
  while (1)
  {
    v42 = *v35;
    if (*v35)
    {
      LODWORD(v42) = CFArrayGetCount(v42);
    }

    if (v38 >= v42)
    {
      *&v67 = v41;
      *(&v67 + 1) = v40;
      v71 = v67;
      v72 = v39;
      goto LABEL_82;
    }

    cf[0] = 0;
    if (CACFArray::GetCFType(v35, v38, cf))
    {
      v43 = cf[0];
      if (cf[0])
      {
        v44 = CFGetTypeID(cf[0]);
        if (v44 == CFBooleanGetTypeID())
        {
          v45 = CFBooleanGetValue(v43) == 0;
        }

        else
        {
          v46 = CFGetTypeID(v43);
          if (v46 != CFNumberGetTypeID())
          {
            goto LABEL_67;
          }

          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v43, kCFNumberSInt32Type, &valuePtr);
          v45 = valuePtr == 0;
        }

        v37 = !v45;
      }
    }

LABEL_67:
    if (v40 >= v39)
    {
      v47 = (v40 - v41);
      v48 = v40 - v41 + 1;
      if (v48 < 0)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v39 - v41) > v48)
      {
        v48 = 2 * (v39 - v41);
      }

      if (v39 - v41 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v48;
      }

      if (v39)
      {
        operator new();
      }

      *v47 = v37;
      v40 = v47 + 1;
      memcpy(0, v41, v47);
      if (v41)
      {
        operator delete(v41);
      }

      v41 = 0;
    }

    else
    {
      *v40++ = v37;
    }

    ++v38;
  }
}

void sub_1DDEA4EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  *(v37 - 192) = &a17;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v37 - 192));
  *(v37 - 192) = &a21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v37 - 192));
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  *(v37 - 192) = &a28;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 192));
  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  *(v37 - 192) = &a34;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v37 - 192));
  *(v37 - 192) = &a37;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v37 - 192));
  v39 = *(v37 - 216);
  if (v39)
  {
    *(v37 - 208) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

BOOL ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::drain_trash(uint64_t a1)
{
  v3 = 0;
  while (1)
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &v3);
    if (!result)
    {
      break;
    }

    if (!v3)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }

    CircArrayKernel::~CircArrayKernel(v3);
    MEMORY[0x1E12BD150]();
  }

  return result;
}

uint64_t AUCircArray::GetProperty(AUCircArray *this, int a2, int a3, unsigned int a4, CFNumberRef *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  v22 = v5;
  v23 = v6;
  result = 4294956417;
  if (a2 > 8804)
  {
    if (a2 <= 8807)
    {
      if (a2 == 8805)
      {
        v17 = *(this + 363);
        if (v17)
        {
          CFRetain(v17);
          v11 = *(this + 363);
          goto LABEL_42;
        }
      }

      else if (a2 == 8806)
      {
        v18 = *(this + 365);
        if (v18)
        {
          CFRetain(v18);
          v11 = *(this + 365);
          goto LABEL_42;
        }
      }

      else
      {
        v13 = *(this + 369);
        if (v13)
        {
          CFRetain(v13);
          v11 = *(this + 369);
          goto LABEL_42;
        }
      }

      goto LABEL_41;
    }

    if (a2 <= 1668179558)
    {
      if (a2 == 8808)
      {
        valuePtr = *(this + 750);
        v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        goto LABEL_42;
      }

      if (a2 != 8809)
      {
        return result;
      }

      v10 = *(this + 371);
      if (v10)
      {
        CFRetain(v10);
        v11 = *(this + 371);
LABEL_42:
        result = 0;
        *a5 = v11;
        return result;
      }

      goto LABEL_41;
    }

    if (a2 == 1668179559)
    {
      v16 = *(this + 351);
      if (v16)
      {
        CFRetain(v16);
        v11 = *(this + 351);
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (a2 != 1718186611)
    {
      return result;
    }

LABEL_26:
    v15 = *(this + 359);
    if (v15)
    {
      CFRetain(v15);
      v11 = *(this + 359);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a2 > 8801)
  {
    if (a2 == 8802)
    {
      v19 = *(this + 355);
      if (v19)
      {
        CFRetain(v19);
        v11 = *(this + 355);
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (a2 != 8803)
    {
      v14 = *(this + 361);
      if (v14)
      {
        CFRetain(v14);
        v11 = *(this + 361);
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (a2 != 21)
  {
    if (a2 == 8800)
    {
      v20 = *(this + 357);
      if (v20)
      {
        CFRetain(v20);
        v11 = *(this + 357);
        goto LABEL_42;
      }
    }

    else
    {
      if (a2 != 8801)
      {
        return result;
      }

      v12 = *(this + 353);
      if (v12)
      {
        CFRetain(v12);
        v11 = *(this + 353);
        goto LABEL_42;
      }
    }

LABEL_41:
    v11 = 0;
    goto LABEL_42;
  }

  if (!(*(*this + 600))(this))
  {
    return 4294956417;
  }

  result = 0;
  *a5 = *(this + 552);
  return result;
}

uint64_t AUCircArray::GetPropertyInfo(AUCircArray *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1668179558)
  {
    if (a2 == 1668179559 || a2 == 1718186611)
    {
LABEL_9:
      v11 = 8;
LABEL_10:
      v10 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if ((a2 - 8800) <= 9)
    {
      if (a2 != 8803)
      {
        v10 = 0;
        v11 = 8;
LABEL_11:
        result = 0;
        *a6 = v10;
        *a5 = v11;
        return result;
      }

      goto LABEL_9;
    }

    if (a2 == 21)
    {
      if (((*(*this + 600))(this) & 1) == 0)
      {
        return 4294956417;
      }

      v11 = 4;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t AUCircArray::Reset(AUCircArray *this)
{
  v1 = *(this + 344);
  if (v1)
  {
    CircArrayKernel::Reset(v1);
  }

  return 0;
}

uint64_t AUCircArray::Initialize(AUCircArray *this)
{
  cf[5] = *MEMORY[0x1E69E9840];
  v2 = AUJBase::Initialize(this);
  if (!v2)
  {
    if ((*(this + 633) & 1) == 0)
    {
      AUCircArray::CreateDefaultConfigPlist(cf, this);
      AUCircArray::SetConfigPlist(this, cf[0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    AUCircArray::CreateKernel(cf, this);
  }

  return v2;
}

void sub_1DDEA55F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DDEA5608(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10)
{
  if (!a2)
  {
    JUMPOUT(0x1DDEA55F8);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    v13 = CALog::LogObjIfEnabled(AUJBase::AUJBaseLogScope(void)::scope);
    v14 = v13;
    if (v13)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v12[66];
        LODWORD(a9) = 136315906;
        *(&a9 + 4) = "AUCircArray.mm";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 90;
        WORD1(a10) = 2080;
        *(&a10 + 4) = v12 + 2;
        WORD6(a10) = 1024;
        *(&a10 + 14) = v15;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d CircArray Exception: %s (error = %d)\n", &a9, 0x22u);
      }
    }
  }

  else
  {
    v16 = __cxa_begin_catch(a1);
    if (a2 != 2)
    {
      if (AUJBase::AUJBaseLogScope(void)::once != -1)
      {
        dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
      }

      v20 = CALog::LogObjIfEnabled(AUJBase::AUJBaseLogScope(void)::scope);
      v21 = v20;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 136315394;
        *(&a9 + 4) = "AUCircArray.mm";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 108;
        _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown error thrown\n", &a9, 0x12u);
      }

      __cxa_end_catch();
LABEL_23:
      JUMPOUT(0x1DDEA5590);
    }

    v17 = v16;
    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    v18 = CALog::LogObjIfEnabled(AUJBase::AUJBaseLogScope(void)::scope);
    v14 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *v17;
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = "AUCircArray.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 104;
      WORD1(a10) = 1024;
      DWORD1(a10) = v19;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown status thrown: %d\n", &a9, 0x18u);
    }
  }

  __cxa_end_catch();
  goto LABEL_23;
}

void *std::vector<float const*>::assign(void **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v7 = v5 >> 2;
    if (v5 >> 2 <= a2)
    {
      v7 = a2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<float const*>::__vallocate[abi:ne200100](a1, v8);
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_1DE095160)));
      if (v15.i8[0])
      {
        *(result + v12) = v13;
      }

      if (v15.i8[4])
      {
        *(result + v12 + 1) = v13;
      }

      v12 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  v16 = a2 >= v10;
  v17 = a2 - v10;
  if (v17 != 0 && v16)
  {
    v18 = 0;
    v19 = a1[1];
    v20 = *a3;
    v21 = (8 * a2 - (v9 - result) - 8) >> 3;
    v22 = vdupq_n_s64(v21);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v18), xmmword_1DE095160)));
      if (v23.i8[0])
      {
        v19[v18] = v20;
      }

      if (v23.i8[4])
      {
        v19[v18 + 1] = v20;
      }

      v18 += 2;
    }

    while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    v24 = &v19[v17];
  }

  else
  {
    v24 = *a1 + 8 * a2;
  }

  a1[1] = v24;
  return result;
}

void AUCircArray::~AUCircArray(AUCircArray *this)
{
  AUCircArray::~AUCircArray(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F592A740;
  CACFArray::~CACFArray((this + 2968));
  CACFString::~CACFString((this + 2952));
  CACFArray::~CACFArray((this + 2936));
  CACFArray::~CACFArray((this + 2920));
  CACFArray::~CACFArray((this + 2904));
  CACFArray::~CACFArray((this + 2888));
  CACFArray::~CACFArray((this + 2872));
  CACFArray::~CACFArray((this + 2856));
  CACFArray::~CACFArray((this + 2840));
  CACFArray::~CACFArray((this + 2824));
  CACFDictionary::~CACFDictionary((this + 2808));
  v2 = *(this + 348);
  if (v2)
  {
    *(this + 349) = v2;
    operator delete(v2);
  }

  v3 = *(this + 345);
  if (v3)
  {
    *(this + 346) = v3;
    operator delete(v3);
  }

  std::unique_ptr<CircArrayKernel>::reset[abi:ne200100](this + 344, 0);
  *(this + 80) = &unk_1F592A9E0;
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue(this + 704);
  *this = &unk_1F5934D48;
  v4 = *(this + 76);
  if (v4)
  {
    *(this + 77) = v4;
    operator delete(v4);
  }

  v5 = *(this + 73);
  if (v5)
  {
    *(this + 74) = v5;
    operator delete(v5);
  }

  v6 = *(this + 70);
  if (v6)
  {
    *(this + 71) = v6;
    operator delete(v6);
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F592AA00;
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::drain_trash(a1);
  v3 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v3))
  {
    if (v3)
    {
      CircArrayKernel::~CircArrayKernel(v3);
      MEMORY[0x1E12BD150]();
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void ca::concurrent::deferred_deletion_stash<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592A9E0;
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592A9E0;
  ca::concurrent::deferred_deletion_queue<CircArrayKernel,10ul,std::default_delete<CircArrayKernel>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

void SincKernelFactorySingleton::SincKernelFactorySingleton(SincKernelFactorySingleton *this)
{
  SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton = 0;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex(&unk_1ECDA9A40);
  operator new();
}

void sub_1DDEA5E48(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x1E12BD160](v1, 0x80C40D6874129);
  v4 = SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton;
  SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton = 0;
  if (v4)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void SincKernelFactorySingleton::instance(SincKernelFactorySingleton *this)
{
  {
    if (v1)
    {
      SincKernelFactorySingleton::SincKernelFactorySingleton(v1);
    }
  }
}

uint64_t SincKernelFactorySingleton::ReferenceSincKernel(SincKernelFactorySingleton *this, double a2, double a3)
{
  caulk::pooled_semaphore_mutex::_lock(&unk_1ECDA9A40);
  v3 = *(SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton + 8) - *SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton;
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = 0;
  v5 = v3 >> 3;
  v6 = 1;
  while (1)
  {
    v7 = *(*SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton + 8 * v4);
    if (*(v7 + 32) == 0.9 && *(v7 + 24) == 80.0 && *(v7 + 12) == 11 && *(v7 + 16) == 128)
    {
      break;
    }

    v4 = v6;
    if (v5 <= v6++)
    {
      goto LABEL_8;
    }
  }

  ++*(v7 + 8);
  caulk::pooled_semaphore_mutex::_unlock(&unk_1ECDA9A40);
  return v7;
}

void sub_1DDEA67D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__split_buffer<KaiserWindow>::~__split_buffer(&a29);
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  MEMORY[0x1E12BD160](v29, 0x1080C4003DAF236);
  caulk::pooled_semaphore_mutex::_unlock(&unk_1ECDA9A40);
  _Unwind_Resume(a1);
}

uint64_t SincKernelFactorySingleton::ReleaseSincKernel(uint64_t a1)
{
  caulk::pooled_semaphore_mutex::_lock(&unk_1ECDA9A40);
  if (a1)
  {
    v2 = SincKernelFactorySingleton::instance(void)::gSincKernelFactorySingleton;
    v3 = *(a1 + 8) - 1;
    *(a1 + 8) = v3;
    if (!v3)
    {
      v6 = *v2;
      v5 = v2[1];
      if (v5 != *v2)
      {
        v7 = 0;
        v8 = 1;
        while (*(v6 + 8 * v7) != a1)
        {
          v7 = v8;
          if ((v5 - *v2) >> 3 <= v8++)
          {
            goto LABEL_3;
          }
        }

        v10 = v6 + 8 * v7;
        v11 = v5 - (v10 + 8);
        if (v5 != v10 + 8)
        {
          memmove((v6 + 8 * v7), (v10 + 8), v5 - (v10 + 8));
        }

        v2[1] = v10 + v11;
        free(*a1);
        MEMORY[0x1E12BD160](a1, 0x1080C4003DAF236);
      }
    }
  }

LABEL_3:

  return caulk::pooled_semaphore_mutex::_unlock(&unk_1ECDA9A40);
}

uint64_t IR::DelayLine<float>::DelayLine(uint64_t a1, int a2, int a3, std::vector<unsigned int>::size_type __n, unsigned int a5, int a6)
{
  v6 = a1;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = __n;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  v7 = (a1 + 16);
  *(a1 + 48) = 0u;
  v8 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065347625;
  *(a1 + 136) = 0u;
  v9 = (a1 + 136);
  *(a1 + 184) = 0u;
  v10 = (a1 + 184);
  *(a1 + 232) = 0u;
  v11 = (a1 + 232);
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  if (!__n)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 250, "inNumTaps > 0");
  }

  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_13;
      case 3:
LABEL_9:
        *&__u = 2.0;
        std::vector<float>::assign((a1 + 48), __n, &__u, 0);
        v14 = *(v6 + 8);
        *&__u = 2.0;
        std::vector<float>::assign((v6 + 72), v14, &__u, v15);
        v17 = 0;
        v18 = a2 + 4;
        goto LABEL_20;
    }

LABEL_12:
    *&__u = 0.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v19 = *(v6 + 8);
    *&__u = 0.0;
    std::vector<float>::assign((v6 + 72), v19, &__u, v20);
    v17 = 0;
    v18 = a2 + 1;
    goto LABEL_20;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      goto LABEL_15;
    }

LABEL_13:
    *&__u = 3.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v21 = *(v6 + 8);
    *&__u = 3.0;
    std::vector<float>::assign((v6 + 72), v21, &__u, v22);
    v17 = 0;
    v18 = a2 + 6;
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    *&__u = 0.0;
    std::vector<unsigned int>::assign((a1 + 304), __n, &__u);
    std::vector<float>::resize(v10, a5);
    std::vector<float>::resize((v6 + 208), a5);
    std::vector<float>::resize(v11, a5);
    std::vector<float>::resize((v6 + 256), a5);
    v24 = *(v6 + 208);
    v25 = (*(v6 + 216) - v24) >> 2;
    *&__u = 0.0;
    __B = 1.0 / a5;
    vDSP_vramp(&__u, &__B, v24, 1, v25);
    v26 = *(v6 + 208);
    v27 = *v10;
    __B = 1.0;
    *&__u = -1.0;
    a1 = MEMORY[0x1E12BE910](v26, 1, &__u, &__B, v27, 1, a5);
  }

  else if (a3 != 7)
  {
    goto LABEL_12;
  }

LABEL_15:
  SincKernelFactorySingleton::instance(a1);
  v31 = SincKernelFactorySingleton::ReferenceSincKernel(v28, v29, v30);
  *(v6 + 112) = v31;
  v33 = *(v31 + 16);
  *(v6 + 120) = v33;
  v34 = v33 - 1;
  if ((v33 ^ (v33 - 1)) <= v33 - 1)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 293, "isPowerOfTwo(mFractionalPhases)");
  }

  v35 = __clz(v33) ^ 0x1F;
  if (v33 >= 2)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  *(v6 + 124) = v34;
  *(v6 + 128) = v36;
  v37 = *(v31 + 12);
  *(v6 + 132) = v37;
  *(v6 + 104) = *v31;
  v38 = *(v6 + 8);
  *v32.i32 = v37;
  *&__u = v37;
  std::vector<float>::assign(v8, v38, &__u, v32);
  v39 = *(v6 + 8);
  *v40.i32 = *(v6 + 132);
  __u = v40.u32[0];
  std::vector<float>::assign((v6 + 280), v39, &__u, v40);
  v41 = *(v6 + 8);
  __u = ((*(v6 + 132) * 1024.0) + 0.5);
  std::vector<int>::assign(v9, v41, &__u);
  v42 = *(v6 + 132);
  *&__u = 0.0;
  std::vector<float>::assign((v6 + 160), v42, &__u, v43);
  v44 = *(v6 + 8);
  *v45.i32 = *(v6 + 132);
  __u = v45.u32[0];
  std::vector<float>::assign((v6 + 72), v44, &__u, v45);
  v18 = a6 + a2 + v37;
  v17 = v37 - 1;
LABEL_20:
  v46 = 1 << -__clz(v18 - 1);
  *&__u = 0.0;
  std::vector<float>::resize(v7, v46 + v17, &__u, v16);
  *(v6 + 40) = v46 - 1;
  IR::DelayLine<float>::reset(v6);
  return v6;
}

void sub_1DDEA6D1C(_Unwind_Exception *exception_object)
{
  v8 = v1[38];
  if (v8)
  {
    v1[39] = v8;
    operator delete(v8);
  }

  v9 = v1[35];
  if (v9)
  {
    v1[36] = v9;
    operator delete(v9);
  }

  v10 = v1[32];
  if (v10)
  {
    v1[33] = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    v1[30] = v11;
    operator delete(v11);
  }

  v12 = v1[26];
  if (v12)
  {
    v1[27] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v1[24] = v13;
    operator delete(v13);
  }

  v14 = v1[20];
  if (v14)
  {
    v1[21] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[18] = v15;
    operator delete(v15);
  }

  v16 = v1[9];
  if (v16)
  {
    v1[10] = v16;
    operator delete(v16);
  }

  v17 = *v3;
  if (*v3)
  {
    v1[7] = v17;
    operator delete(v17);
  }

  v18 = *v2;
  if (*v2)
  {
    v1[3] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v7 = value >> 1;
    if (value >> 1 <= __n)
    {
      v7 = __n;
    }

    if (value >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<int>::__vallocate[abi:ne200100](this, v8);
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = *__u;
    v13 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = begin + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095160)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v15 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v15 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095150)))).i32[1])
      {
        *v15 = v12;
        v15[1] = v12;
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = *__u;
    v22 = (4 * __n - (end - begin) - 4) >> 2;
    v23 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v24 = vdupq_n_s64(v22);
    v25 = end + 2;
    v26 = 1;
    do
    {
      v27 = vdupq_n_s64(v26 - 1);
      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095160)));
      if (vuzp1_s16(v28, *v24.i8).u8[0])
      {
        *(v25 - 2) = v21;
      }

      if (vuzp1_s16(v28, *&v24).i8[2])
      {
        *(v25 - 1) = v21;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095150)))).i32[1])
      {
        *v25 = v21;
        v25[1] = v21;
      }

      v26 += 4;
      v25 += 4;
      v23 -= 4;
    }

    while (v23);
    v29 = &end[v20];
  }

  else
  {
    v29 = &begin[__n];
  }

  this->__end_ = v29;
}

void IR::DelayLine<float>::reset(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 == 5 || v2 == 7)
  {
LABEL_12:
    v10 = *(a1 + 16);
    v11 = *(a1 + 24) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    *(a1 + 44) = *(a1 + 132) - 1;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
    v4 = *(a1 + 256);
    v5 = *(a1 + 264) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
    }

    v6 = *(a1 + 232);
    v7 = *(a1 + 240) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v8 = *(a1 + 304);
    v9 = *(a1 + 312) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }

LABEL_15:
  *(a1 + 12) = 1;
}

uint64_t IR::DelayLine<float>::DelayLine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = 0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  *(a1 + 112) = 0;
  *(a1 + 120) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 136, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v7 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 160, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 2);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  if ((*(a1 + 4) - 5) <= 2)
  {
    SincKernelFactorySingleton::instance(v7);
    *(a1 + 112) = SincKernelFactorySingleton::ReferenceSincKernel(v8, v9, v10);
  }

  return a1;
}

void sub_1DDEA737C(_Unwind_Exception *exception_object)
{
  v11 = *(v9 + 72);
  if (v11)
  {
    v1[39] = v11;
    operator delete(v11);
  }

  v12 = *(v9 + 48);
  if (v12)
  {
    v1[36] = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 24);
  if (v13)
  {
    v1[33] = v13;
    operator delete(v13);
  }

  v14 = *v9;
  if (*v9)
  {
    v1[30] = v14;
    operator delete(v14);
  }

  v15 = *v8;
  if (*v8)
  {
    v1[27] = v15;
    operator delete(v15);
  }

  v16 = *v7;
  if (*v7)
  {
    v1[24] = v16;
    operator delete(v16);
  }

  v17 = *v3;
  if (*v3)
  {
    v1[21] = v17;
    operator delete(v17);
  }

  v18 = *v2;
  if (*v2)
  {
    v1[18] = v18;
    operator delete(v18);
  }

  v19 = *v6;
  if (*v6)
  {
    v1[10] = v19;
    operator delete(v19);
  }

  v20 = *v5;
  if (*v5)
  {
    v1[7] = v20;
    operator delete(v20);
  }

  v21 = *v4;
  if (*v4)
  {
    v1[3] = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::DelayLine<float>::~DelayLine(uint64_t a1)
{
  if ((*(a1 + 4) - 5) <= 2)
  {
    SincKernelFactorySingleton::instance(a1);
    SincKernelFactorySingleton::ReleaseSincKernel(*(a1 + 112));
  }

  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    *(a1 + 288) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 256);
  if (v4)
  {
    *(a1 + 264) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    *(a1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    *(a1 + 216) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    *(a1 + 192) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 168) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    *(a1 + 144) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *(a1 + 24) = v12;
    operator delete(v12);
  }

  return a1;
}

uint64_t IR::DelayLine<float>::setDelay(uint64_t result, float a2)
{
  if (!*(result + 8))
  {
    __assert_rtn("setDelay", "DelayLine.cpp", 413, "inTapIdx < mNumTaps");
  }

  if (*result < a2)
  {
    a2 = *result;
  }

  v2 = *(result + 4);
  if (v2 <= 7)
  {
    v3 = 1 << v2;
    if ((v3 & 0xE0) != 0)
    {
      a2 = a2 + *(result + 132);
    }

    else
    {
      v4 = a2 + 2.0;
      if ((v3 & 0x14) != 0)
      {
        a2 = a2 + 3.0;
      }

      if ((v3 & 0xA) != 0)
      {
        a2 = v4;
      }
    }
  }

  **(result + 48) = a2;
  return result;
}

void IR::DelayLine<float>::process(uint64_t a1, _DWORD *__src, float **a3, vDSP_Length a4)
{
  v5 = *(a1 + 96);
  if (a4)
  {
    if (!__src)
    {
      __assert_rtn("process", "DelayLine.cpp", 523, "inInputData");
    }

    v7 = a4;
    v9 = *(a1 + 8);
    v10 = (*(a1 + 24) - *(a1 + 16)) >> 2;
    if (*(a1 + 12) == 1)
    {
      IR::DelayLine<float>::swapDelays(a1);
      *(a1 + 12) = 0;
    }

    v11 = *(a1 + 4);
    if (v11 <= 3)
    {
      switch(v11)
      {
        case 1:
          v33 = 0;
          v34 = *(a1 + 16);
          v35 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v34 + 4 * v15) = __src[v33];
            if (v9)
            {
              v36 = 0;
              v37 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v38 = *(v37 + 4 * v36) + ((*(*(a1 + 48) + 4 * v36) - *(v37 + 4 * v36)) / (v7 - v33));
                }

                else
                {
                  v39 = *(*(a1 + 48) + 4 * v36);
                  v38 = v39 + (*(a1 + 96) * (*(v37 + 4 * v36) - v39));
                }

                *(v37 + 4 * v36) = v38;
                v40 = v15 - v38;
                if (v40 < 0.0)
                {
                  v40 = v40 + v10;
                }

                v41 = *(v34 + 4 * (v35 & v40));
                v42 = *(v34 + 4 * ((v40 + 1) & v35));
                v43 = *(v34 + 4 * ((v40 + 2) & v35));
                v44 = *(v34 + 4 * ((v40 - 1) & v35));
                v45 = v44 + v41 * -2.5 + (v42 + v42) + v43 * -0.5;
                v46 = (v41 - v42) * 1.5 + (v43 - v44) * 0.5;
                a3[v36++][v33] = v41 + ((((v42 - v44) * 0.5) + ((v45 + (v46 * (v40 - v40))) * (v40 - v40))) * (v40 - v40));
              }

              while ((v9 != 0) != v36);
            }

            v15 = v35 & (v15 + 1);
            ++v33;
          }

          while (v33 != v7);
          goto LABEL_81;
        case 2:
          v78 = 0;
          v79 = *(a1 + 16);
          v80 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v79 + 4 * v15) = __src[v78];
            if (v9)
            {
              v81 = 0;
              v82 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v83 = *(v82 + 4 * v81) + ((*(*(a1 + 48) + 4 * v81) - *(v82 + 4 * v81)) / (v7 - v78));
                }

                else
                {
                  v84 = *(*(a1 + 48) + 4 * v81);
                  v83 = v84 + (*(a1 + 96) * (*(v82 + 4 * v81) - v84));
                }

                *(v82 + 4 * v81) = v83;
                v85 = v15 - v83;
                if (v85 < 0.0)
                {
                  v85 = v85 + v10;
                }

                v86 = *(v79 + 4 * (v80 & v85));
                v87 = *(v79 + 4 * ((v85 + 1) & v80));
                v88 = *(v79 + 4 * ((v85 + 2) & v80));
                v89 = *(v79 + 4 * ((v85 + 3) & v80));
                v90 = *(v79 + 4 * ((v85 - 1) & v80));
                v91 = *(v79 + 4 * ((v85 - 2) & v80));
                v92 = (v86 * -2.3333) + v90 * 1.25 + (v87 * 1.6667) + v88 * -0.5 + (v89 * 0.083333) + (v91 * -0.16667);
                a3[v81++][v78] = v86 + (((((v87 - v90) * 0.66667) + ((v91 - v88) * 0.083333)) + ((v92 + (((((v88 - v90) * 0.58333) + ((v91 - v89) * 0.083333)) + ((v86 - v87) * 1.3333)) * (v85 - v85))) * (v85 - v85))) * (v85 - v85));
              }

              while ((v9 != 0) != v81);
            }

            v15 = v80 & (v15 + 1);
            ++v78;
          }

          while (v78 != v7);
          goto LABEL_81;
        case 3:
          v12 = 0;
          v13 = *(a1 + 16);
          v14 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v13 + 4 * v15) = __src[v12];
            if (v9)
            {
              v16 = 0;
              v17 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v18 = *(v17 + 4 * v16) + ((*(*(a1 + 48) + 4 * v16) - *(v17 + 4 * v16)) / (v7 - v12));
                }

                else
                {
                  v19 = *(*(a1 + 48) + 4 * v16);
                  v18 = v19 + (*(a1 + 96) * (*(v17 + 4 * v16) - v19));
                }

                *(v17 + 4 * v16) = v18;
                v20 = v15 - v18;
                if (v20 < 0.0)
                {
                  v20 = v20 + v10;
                }

                v21 = *(v13 + 4 * (v14 & v20));
                v22 = *(v13 + 4 * ((v20 + 1) & v14));
                v23 = *(v13 + 4 * ((v20 - 1) & v14));
                v24 = (v22 + (v23 * -0.33333)) + v21 * -0.5 - (v22 * 0.16667);
                v25 = -(v21 - (v22 + v23) * 0.5);
                v26 = ((v22 - v23) * 0.16667) + (v21 - v22) * 0.5;
                a3[v16++][v12] = v21 + ((v24 + ((v25 + (v26 * (v20 - v20))) * (v20 - v20))) * (v20 - v20));
              }

              while ((v9 != 0) != v16);
            }

            v15 = v14 & (v15 + 1);
            ++v12;
          }

          while (v12 != v7);
          goto LABEL_81;
      }

LABEL_47:
      v47 = 0;
      v48 = *(a1 + 16);
      v49 = *(a1 + 40);
      v50 = *(a1 + 44);
      do
      {
        *(v48 + 4 * v50) = __src[v47];
        if (v9)
        {
          v51 = 0;
          v52 = *(a1 + 72);
          do
          {
            if (v5 == 2.7183)
            {
              v53 = *(v52 + 4 * v51) + ((*(*(a1 + 48) + 4 * v51) - *(v52 + 4 * v51)) / (v7 - v47));
            }

            else
            {
              v54 = *(*(a1 + 48) + 4 * v51);
              v53 = v54 + (*(a1 + 96) * (*(v52 + 4 * v51) - v54));
            }

            *(v52 + 4 * v51) = v53;
            v55 = v50 - v53;
            if (v55 < 0.0)
            {
              v55 = v55 + v10;
            }

            v56 = *(v48 + 4 * (v49 & v55));
            a3[v51++][v47] = v56 + ((v55 - v55) * (*(v48 + 4 * ((v55 + 1) & v49)) - v56));
          }

          while ((v9 != 0) != v51);
        }

        v50 = v49 & (v50 + 1);
        ++v47;
      }

      while (v47 != v7);
      *(a1 + 44) = v50;
      return;
    }

    if (v11 <= 5)
    {
      if (v11 != 4)
      {
        goto LABEL_29;
      }

      v57 = 0;
      v58 = *(a1 + 16);
      v59 = *(a1 + 40);
      v15 = *(a1 + 44);
      do
      {
        *(v58 + 4 * v15) = __src[v57];
        if (v9)
        {
          v60 = 0;
          v61 = *(a1 + 72);
          do
          {
            if (v5 == 2.7183)
            {
              v62 = *(v61 + 4 * v60) + ((*(*(a1 + 48) + 4 * v60) - *(v61 + 4 * v60)) / (v7 - v57));
            }

            else
            {
              v63 = *(*(a1 + 48) + 4 * v60);
              v62 = v63 + (*(a1 + 96) * (*(v61 + 4 * v60) - v63));
            }

            *(v61 + 4 * v60) = v62;
            v64 = v15 - v62;
            if (v64 < 0.0)
            {
              v64 = v64 + v10;
            }

            v65 = *(v58 + 4 * (v59 & v64));
            v66 = *(v58 + 4 * ((v64 + 1) & v59));
            v67 = *(v58 + 4 * ((v64 + 2) & v59));
            v68 = *(v58 + 4 * ((v64 + 3) & v59));
            v69 = *(v58 + 4 * ((v64 - 1) & v59));
            v70 = *(v58 + 4 * ((v64 - 2) & v59));
            v71 = v64 - v64;
            v72 = v69 * -0.5 + v70 * 0.05 + (v65 * -0.33333) + v66 + v67 * -0.25 + (v68 * 0.033333);
            v73 = ((v67 + v70) * 0.041667);
            v74 = ((v66 + v69) * 0.66667) + v65 * -1.25 - v73;
            v75 = ((v66 + v69) * -0.16667) + v65 * 0.25 + v73;
            a3[v60++][v57] = v65 + ((v72 + ((v74 + ((((((v66 * -0.58333) + (v65 * 0.41667)) + (v67 * 0.29167)) + ((v68 + (v69 + v70)) * -0.041667)) + ((v75 + (((((v69 - v67) * 0.041667) + ((v68 - v70) * 0.0083333)) + ((v66 - v65) * 0.083333)) * v71)) * v71)) * v71)) * v71)) * v71);
          }

          while ((v9 != 0) != v60);
        }

        v15 = v59 & (v15 + 1);
        ++v57;
      }

      while (v57 != v7);
LABEL_81:
      *(a1 + 44) = v15;
      return;
    }

    if (v11 != 6)
    {
      if (v11 == 7)
      {
LABEL_29:
        v27 = v10;
        __srca = __src;
        v28 = *(a1 + 132);
        v29 = v28 - 1;
        if (v28)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        if (v9)
        {
          v31 = **(a1 + 48) * 1024.0;
          v32 = -1.0;
          if (v31 >= 0.0)
          {
            v32 = 1.0;
          }

          v29 = (v31 + (v32 * 0.5));
        }

        v170 = v29;
        v93 = v27;
        v165 = v27 - v30;
        v94 = v7 - v27;
        __E[3] = __E;
        if (v7 <= v27)
        {
          v117 = *(a1 + 44);
          if (v117 + v7 >= v27)
          {
            v135 = v7;
            v136 = *(a1 + 16);
            v137 = v93 - v117;
            v138 = 4 * (v93 - v117);
            if (v93 != v117)
            {
              memmove((v136 + 4 * v117), __srca, 4 * (v93 - v117));
              v136 = *(a1 + 16);
            }

            v139 = 4 * v135;
            if (v139 != v138)
            {
              memmove((v136 + 4 * v30), __srca + 4 * v137, v139 - v138);
            }

            *(a1 + 44) += v94 + v30;
            v7 = v135;
            if (v165 < v135)
            {
              __assert_rtn("process", "DelayLine.cpp", 646, "inNumFramesToProcess <= delayLineLen - padOffset");
            }
          }

          else
          {
            memmove((*(a1 + 16) + 4 * v117), __srca, 4 * v7);
            *(a1 + 44) += v7;
          }

          if (v28 >= 2)
          {
            memmove(*(a1 + 16), (*(a1 + 24) - 4 * v30), 4 * v30);
          }

          if (v9)
          {
            v140 = **(a1 + 48);
            v141 = *a3;
            v142 = **(a1 + 72);
            if ((v142 * 1024.0) < 0.0)
            {
              v143 = -1.0;
            }

            else
            {
              v143 = 1.0;
            }

            if ((((v142 * 1024.0) + (v143 * 0.5)) - v170) >= 0)
            {
              v144 = ((v142 * 1024.0) + (v143 * 0.5)) - v170;
            }

            else
            {
              v144 = v170 - ((v142 * 1024.0) + (v143 * 0.5));
            }

            v145 = *(a1 + 4);
            if (v145 == 7)
            {
              v146 = 8;
            }

            else
            {
              v146 = 1;
            }

            v147 = powf(*(a1 + 96), v146);
            v148 = v144 > 0x20;
            if (v144 >= 0x21 && v146 <= v7)
            {
              v150 = v147;
              v151 = **(a1 + 136);
              if (v145 == 7)
              {
                v152 = 3;
              }

              else
              {
                v152 = 0;
              }

              do
              {
                if (v5 == 2.7183)
                {
                  if (!(v7 >> v152))
                  {
                    __assert_rtn("process", "DelayLine.cpp", 689, "numSubBlocksRemaining > 0");
                  }

                  v153 = *(a1 + 136);
                  v154 = v170;
                  LODWORD(v155) = (v170 - *v153) / (v7 >> v152) + *v153;
                  *v153 = v155;
                }

                else
                {
                  v142 = v140 + (v150 * (v142 - v140));
                  if ((v142 * 1024.0) < 0.0)
                  {
                    v156 = -1.0;
                  }

                  else
                  {
                    v156 = 1.0;
                  }

                  v155 = ((v142 * 1024.0) + (v156 * 0.5));
                  v151 = v155;
                  v154 = v170;
                }

                IR::DelayLine<float>::processPolyphaseQ22_10(a1, v117, v155, v141, v146);
                if (v151 - v154 >= 0)
                {
                  v157 = v151 - v154;
                }

                else
                {
                  v157 = v154 - v151;
                }

                v117 = *(a1 + 40) & (v117 + v146);
                v158 = (v7 - v146);
                v148 = v157 > 0x20;
                v141 += v146;
                v159 = v157 < 0x21 || v7 - v146 < v146;
                LODWORD(v7) = v7 - v146;
              }

              while (!v159);
              v7 = v158;
            }

            if (v7 >= 1)
            {
              if (v5 == 2.7183)
              {
                LODWORD(v160) = **(a1 + 136);
              }

              else
              {
                if (!v148)
                {
                  v142 = v140;
                }

                v163 = -1.0;
                if ((v142 * 1024.0) >= 0.0)
                {
                  v163 = 1.0;
                }

                v160 = ((v142 * 1024.0) + (v163 * 0.5));
              }

              IR::DelayLine<float>::processPolyphaseQ22_10(a1, v117, v160, v141, v7);
            }

            **(a1 + 72) = v142;
          }
        }

        else
        {
          v95 = 0;
          v96 = v9 != 0;
          v97 = *(a1 + 44);
          v167 = v7;
          v168 = v7;
          v166 = v9;
          do
          {
            v98 = *(__srca + v95);
            v99 = *(a1 + 16);
            *(v99 + 4 * v97) = v98;
            if (v97 < v30)
            {
              *(v99 + 4 * (v97 + v165)) = v98;
            }

            if (v9)
            {
              v100 = 0;
              v101 = v7 - v95;
              do
              {
                if (v5 == 2.7183)
                {
                  v102 = *(a1 + 136);
                  LODWORD(v103) = (v170 - *(v102 + 4 * v100)) / v101 + *(v102 + 4 * v100);
                }

                else
                {
                  v104 = *(*(a1 + 48) + 4 * v100);
                  v105 = *(a1 + 72);
                  v106 = v104 + (*(a1 + 96) * (*(v105 + 4 * v100) - v104));
                  *(v105 + 4 * v100) = v106;
                  v107 = v106 * 1024.0;
                  if (v107 < 0.0)
                  {
                    v108 = -1.0;
                  }

                  else
                  {
                    v108 = 1.0;
                  }

                  v103 = (v107 + (v108 * 0.5));
                  v102 = *(a1 + 136);
                }

                *(v102 + 4 * v100) = v103;
                v109 = *(a1 + 128);
                v110 = 10 - v109;
                v111 = v103 + (1 << (9 - v109)) - 512;
                v112 = (v111 & 0x3FF) >> v110;
                if (*(a1 + 120) <= v112)
                {
                  __assert_rtn("process", "DelayLine.cpp", 616, "phaseIndex < mFractionalPhases");
                }

                v113 = *(a1 + 132);
                v114 = (*(a1 + 104) + 4 * v113 * v112);
                v115 = a3[v100];
                v116 = (*(a1 + 16) + 4 * ((v27 - (v30 + (v111 >> 10)) + *(a1 + 44)) & *(a1 + 40)) + 4 * v30);
                __C = 0.0;
                vDSP_dotpr(v116, -1, v114, 1, &__C, v113);
                v115[v95] = __C;
                ++v100;
              }

              while (v96 != v100);
              v97 = *(a1 + 44);
              LODWORD(v7) = v167;
              v9 = v166;
            }

            v97 = *(a1 + 40) & (v97 + 1);
            *(a1 + 44) = v97;
            ++v95;
          }

          while (v95 != v168);
        }

        return;
      }

      goto LABEL_47;
    }

    v76 = *(a1 + 44);
    v77 = *(a1 + 132) - 1;
    if (v76 + v7 >= v10)
    {
      v118 = *(a1 + 16);
      v119 = 4 * (v10 - v76);
      if (v10 != v76)
      {
        memmove((v118 + 4 * v76), __src, 4 * (v10 - v76));
        v118 = *(a1 + 16);
      }

      v120 = 4 * v7;
      if (v120 != v119)
      {
        memmove((v118 + 4 * v77), &__src[(v10 - v76)], v120 - v119);
      }

      *(a1 + 44) += v7 - v10 + v77;
      if (v10 - v77 <= v7)
      {
        __assert_rtn("process", "DelayLine.cpp", 737, "inNumFramesToProcess < delayLineLen - padOffset");
      }
    }

    else
    {
      memmove((*(a1 + 16) + 4 * v76), __src, 4 * v7);
      *(a1 + 44) += v7;
    }

    if (v77)
    {
      memmove(*(a1 + 16), (*(a1 + 24) - 4 * v77), 4 * v77);
    }

    if (v9)
    {
      v121 = *a3;
      v122 = *(a1 + 304);
      LODWORD(v123) = *v122;
      do
      {
        if (v123)
        {
          if (v7 >= v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = v7;
          }

          v125 = **(a1 + 72) * 1024.0;
          if (v125 < 0.0)
          {
            v126 = -1.0;
          }

          else
          {
            v126 = 1.0;
          }

          IR::DelayLine<float>::processPolyphaseQ22_10(a1, v76, (v125 + (v126 * 0.5)), *(a1 + 256), v124);
          v127 = **(a1 + 280) * 1024.0;
          if (v127 < 0.0)
          {
            v128 = -1.0;
          }

          else
          {
            v128 = 1.0;
          }

          IR::DelayLine<float>::processPolyphaseQ22_10(a1, v76, (v127 + (v128 * 0.5)), *(a1 + 232), v124);
          v129 = *(a1 + 184);
          v130 = ((*(a1 + 192) - v129) >> 2) - **(a1 + 304);
          vDSP_vmma((v129 + 4 * v130), 1, *(a1 + 232), 1, (*(a1 + 208) + 4 * v130), 1, *(a1 + 256), 1, v121, 1, v124);
          v122 = *(a1 + 304);
          LODWORD(v123) = *v122 - v124;
          *v122 = v123;
          v7 = (v7 - v124);
          if (v124 + v76 >= v10)
          {
            v131 = v77 - v10;
          }

          else
          {
            v131 = 0;
          }

          LODWORD(v76) = v124 + v76 + v131;
          v121 += v124;
        }

        else
        {
          v132 = *(a1 + 48);
          v133 = *(a1 + 72);
          v134 = *v133;
          if (*v132 == *v133)
          {
            v161 = v134 * 1024.0;
            v162 = -1.0;
            if (v161 >= 0.0)
            {
              v162 = 1.0;
            }

            IR::DelayLine<float>::processPolyphaseQ22_10(a1, v76, (v161 + (v162 * 0.5)), v121, v7);
            return;
          }

          v123 = (*(a1 + 192) - *(a1 + 184)) >> 2;
          *v122 = v123;
          **(a1 + 280) = v134;
          *v133 = *v132;
        }
      }

      while (v7);
    }
  }

  else if (v5 == 2.7183)
  {

    IR::DelayLine<float>::swapDelays(a1);
  }
}

void *IR::DelayLine<float>::swapDelays(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (*(a1 + 56) - v2) >> 2;
  v5 = a1 + 72;
  result = *(a1 + 72);
  v6 = (*(v5 + 8) - result) >> 2;
  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    result = memmove(result, v2, 4 * v7);
  }

  if ((*(a1 + 4) | 2) == 7)
  {
    v8 = *(a1 + 136);
    v9 = *(a1 + 144) - v8;
    v10 = *(a1 + 48);
    v11 = (*(a1 + 56) - v10) >> 2 >= (v9 >> 2) ? v9 >> 2 : (*(a1 + 56) - v10) >> 2;
    v11 = v11;
    if (v11)
    {
      do
      {
        v12 = *v10++;
        v13 = v12 * 1024.0;
        if ((v12 * 1024.0) < 0.0)
        {
          v14 = -1.0;
        }

        else
        {
          v14 = 1.0;
        }

        *v8++ = (v13 + (v14 * 0.5));
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void IR::DelayLine<float>::processPolyphaseQ22_10(uint64_t a1, int a2, int a3, float *__C, vDSP_Length __N)
{
  v5 = *(a1 + 128);
  v6 = a3 + (1 << (9 - v5)) - 512;
  v7 = (v6 & 0x3FF) >> (10 - v5);
  if (v7 >= *(a1 + 120))
  {
    __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 207, "phaseIndex < mFractionalPhases");
  }

  v8 = __N;
  v11 = *(a1 + 132);
  v12 = (v11 - 1);
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24) - v13) >> 2;
  v15 = (a2 - (v11 + (v6 >> 10)) + v14 + 1) & *(a1 + 40);
  v16 = (*(a1 + 104) + 4 * v7 * v11);
  if (__N == 1)
  {
    __Ca = 0.0;
    vDSP_dotpr((v13 + 4 * v15 + 4 * v12), -1, v16, 1, &__Ca, v11);
    *__C = __Ca;
  }

  else
  {
    if (v14 >= v12 + __N + v15)
    {
      v20 = (v13 + 4 * v15);
      v22 = &v16[v12];
      v19 = __N;
      v21 = __C;
    }

    else
    {
      if (v14 < (v12 + __N))
      {
        __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 228, "inNumFramesToProcess + padOffset <= mDelayLine.size()");
      }

      v17 = v14 - (v12 + v15);
      v18 = &v16[v12];
      vDSP_conv((v13 + 4 * v15), 1, v18, -1, __C, 1, v17, v11);
      v19 = v8 - v17;
      v20 = *(a1 + 16);
      v21 = &__C[v17];
      v11 = *(a1 + 132);
      v22 = v18;
    }

    vDSP_conv(v20, 1, v22, -1, v21, 1, v19, v11);
  }
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 2 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = v7 - v3;
        if (v8 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 2 * v6);
    v11 = v4 + 2 * v6;
  }

  a1[1] = v11;
}

_WORD *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6assignEmRKDF16_(void *a1, unint64_t a2, __int16 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 1)
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

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v6 <= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v6;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(a1, v9);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 1;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 1;
  }

  if (v12)
  {
    v13 = 0;
    a4.i16[0] = *a3;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v18, a4), a4).u8[0])
      {
        *(v16 - 4) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v18, a4), *&a4).i8[1])
      {
        *(v16 - 3) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095150)))), *&a4).i8[2])
      {
        *(v16 - 2) = a4.i16[0];
        *(v16 - 1) = a4.i16[0];
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE095220)));
      if (vuzp1_s8(*&a4, vuzp1_s16(v19, a4)).i32[1])
      {
        *v16 = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(v19, a4)).i8[5])
      {
        v16[1] = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE0952D0))))).i8[6])
      {
        v16[2] = a4.i16[0];
        v16[3] = a4.i16[0];
      }

      v13 += 8;
      v16 += 8;
    }

    while (v15 != v13);
  }

  v20 = a2 >= v11;
  v21 = a2 - v11;
  if (v21 != 0 && v20)
  {
    v22 = 0;
    a4.i16[0] = *a3;
    v23 = (2 * a2 - (v10 - result) - 2) >> 1;
    v24 = vdupq_n_s64(v23);
    v25 = (v23 & 0x7FFFFFFFFFFFFFF8) + 8;
    v26 = (v10 + 8);
    do
    {
      v27 = vdupq_n_s64(v22);
      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v28, a4), a4).u8[0])
      {
        *(v26 - 4) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, a4), *&a4).i8[1])
      {
        *(v26 - 3) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095150)))), *&a4).i8[2])
      {
        *(v26 - 2) = a4.i16[0];
        *(v26 - 1) = a4.i16[0];
      }

      v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE095220)));
      if (vuzp1_s8(*&a4, vuzp1_s16(v29, a4)).i32[1])
      {
        *v26 = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(v29, a4)).i8[5])
      {
        v26[1] = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_1DE0952D0))))).i8[6])
      {
        v26[2] = a4.i16[0];
        v26[3] = a4.i16[0];
      }

      v22 += 8;
      v26 += 8;
    }

    while (v25 != v22);
    v30 = (v10 + 2 * v21);
  }

  else
  {
    v30 = &result[a2];
  }

  a1[1] = v30;
  return result;
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZN2IR9DelayLineIDF16_EC1EjNS_18DelayLineAlgorithmEjjj(uint64_t a1, int a2, int a3, std::vector<unsigned int>::size_type __n, unsigned int a5, int a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = __n;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  v7 = (a1 + 16);
  *(a1 + 48) = 0u;
  v8 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065347625;
  *(a1 + 136) = 0u;
  v9 = (a1 + 136);
  *(a1 + 184) = 0u;
  v10 = (a1 + 184);
  *(a1 + 232) = 0u;
  v11 = (a1 + 232);
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  if (!__n)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 250, "inNumTaps > 0");
  }

  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_13;
      case 3:
LABEL_9:
        *&__u = 2.0;
        std::vector<float>::assign((a1 + 48), __n, &__u, 0);
        v14 = *(a1 + 8);
        *&__u = 2.0;
        std::vector<float>::assign((a1 + 72), v14, &__u, v15);
        v16 = 0;
        v17 = a2 + 4;
        goto LABEL_39;
    }

LABEL_12:
    *&__u = 0.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v18 = *(a1 + 8);
    *&__u = 0.0;
    std::vector<float>::assign((a1 + 72), v18, &__u, v19);
    v16 = 0;
    v17 = a2 + 1;
    goto LABEL_39;
  }

  if (a3 <= 5)
  {
    if (a3 != 4)
    {
      goto LABEL_34;
    }

LABEL_13:
    *&__u = 3.0;
    std::vector<float>::assign((a1 + 48), __n, &__u, 0);
    v20 = *(a1 + 8);
    *&__u = 3.0;
    std::vector<float>::assign((a1 + 72), v20, &__u, v21);
    v16 = 0;
    v17 = a2 + 6;
    goto LABEL_39;
  }

  if (a3 == 6)
  {
    *&__u = 0.0;
    std::vector<unsigned int>::assign((a1 + 304), __n, &__u);
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(v10, a5);
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm((a1 + 208), a5);
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm(v11, a5);
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEm((a1 + 256), a5);
    v23 = *(a1 + 208);
    v24 = *(a1 + 216);
    v25 = v24 - v23;
    if (v24 == v23)
    {
      goto LABEL_29;
    }

    v26 = v25 >> 1;
    v27 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / a5;
    if ((v25 >> 1) < 4)
    {
      v28 = 0;
      v29.i16[0] = 0;
      goto LABEL_27;
    }

    if (v26 >= 0x10)
    {
      v28 = v26 & 0xFFFFFFFFFFFFFFF0;
      v29 = 0x420040003C000000;
      v30 = vmulq_n_f16(xmmword_1DE09DE70, v27);
      *v29.i16 = v27 * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(8.0));
      v31 = vdupq_lane_s16(v29, 0);
      v32 = (v23 + 16);
      v33 = v26 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v34 = vaddq_f16(v30, v31);
        v32[-1] = v30;
        *v32 = v34;
        v30 = vaddq_f16(v34, v31);
        v32 += 2;
        v33 -= 16;
      }

      while (v33);
      if (v28 == v26)
      {
        goto LABEL_29;
      }

      *v29.i16 = v27 * (v26 & 0xFFFFFFFFFFFFFFF0);
      if ((v25 & 0x18) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v35 = v28;
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = 0x420040003C000000;
    v37 = vmla_n_f16(vdup_lane_s16(v29, 0), 0x420040003C000000, v27);
    *v36.i16 = v27 * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(4.0));
    v38 = vdup_lane_s16(v36, 0);
    v39 = v35 - (v26 & 0xFFFFFFFFFFFFFFFCLL);
    v40 = (v23 + 2 * v35);
    do
    {
      *v40++ = v37;
      v37 = vadd_f16(v37, v38);
      v39 += 4;
    }

    while (v39);
    if (v28 != v26)
    {
      *v29.i16 = v27 * (v26 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_27:
      v41 = v26 - v28;
      v42 = (v23 + 2 * v28);
      do
      {
        *v42++ = v29.i16[0];
        *v29.i16 = *v29.i16 + v27;
        --v41;
      }

      while (v41);
    }

LABEL_29:
    v43 = *v10;
    LOWORD(__u) = COERCE_UNSIGNED_INT(-1.0);
    LOWORD(v83) = COERCE_UNSIGNED_INT(1.0);
    if (a5)
    {
      if (a5 >= 0x20)
      {
        v44 = 0;
        v68 = v43 + 2 * a5;
        v70 = &__u + 2 > v43 && v68 > &__u;
        v72 = &v84 > v43 && v68 > &v83;
        if ((v68 <= v23 || v23 + 2 * a5 <= v43) && !v70 && !v72)
        {
          v44 = a5 & 0xFFFFFFE0;
          v74 = v43 + 2;
          v75 = (v23 + 32);
          v76.i64[0] = 0x3C003C003C003C00;
          v76.i64[1] = 0x3C003C003C003C00;
          v77 = v44;
          do
          {
            v79 = v75[-2];
            v78 = v75[-1];
            v81 = *v75;
            v80 = v75[1];
            v75 += 4;
            v74[-2] = vsubq_f16(v76, v79);
            v74[-1] = vsubq_f16(v76, v78);
            *v74 = vsubq_f16(v76, v81);
            v74[1] = vsubq_f16(v76, v80);
            v74 += 4;
            v77 -= 32;
          }

          while (v77);
          if (v44 == a5)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = a5 - v44;
      v46 = &v43->i16[v44];
      v47 = (v23 + 2 * v44);
      do
      {
        v48 = *v47++;
        *v46++ = v83 + (*&__u * v48);
        --v45;
      }

      while (v45);
    }

    goto LABEL_34;
  }

  if (a3 != 7)
  {
    goto LABEL_12;
  }

LABEL_34:
  SincKernelFactorySingleton::instance(a1);
  v52 = SincKernelFactorySingleton::ReferenceSincKernel(v49, v50, v51);
  *(a1 + 112) = v52;
  v54 = *(v52 + 16);
  *(a1 + 120) = v54;
  v55 = v54 - 1;
  if ((v54 ^ (v54 - 1)) <= v54 - 1)
  {
    __assert_rtn("DelayLine", "DelayLine.cpp", 293, "isPowerOfTwo(mFractionalPhases)");
  }

  v56 = __clz(v54) ^ 0x1F;
  if (v54 >= 2)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  *(a1 + 124) = v55;
  *(a1 + 128) = v57;
  v58 = *(v52 + 12);
  *(a1 + 132) = v58;
  *(a1 + 104) = *v52;
  v59 = *(a1 + 8);
  *v53.i32 = v58;
  *&__u = v58;
  std::vector<float>::assign(v8, v59, &__u, v53);
  v60 = *(a1 + 8);
  *v61.i32 = *(a1 + 132);
  __u = v61.u32[0];
  std::vector<float>::assign((a1 + 280), v60, &__u, v61);
  v62 = *(a1 + 8);
  __u = ((*(a1 + 132) * 1024.0) + 0.5);
  std::vector<int>::assign(v9, v62, &__u);
  v63 = *(a1 + 132);
  LOWORD(__u) = 0;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6assignEmRKDF16_((a1 + 160), v63, &__u, 0);
  v64 = *(a1 + 8);
  *v65.i32 = *(a1 + 132);
  __u = v65.u32[0];
  std::vector<float>::assign((a1 + 72), v64, &__u, v65);
  v17 = a6 + a2 + v58;
  v16 = v58 - 1;
LABEL_39:
  v66 = 1 << -__clz(v17 - 1);
  LOWORD(__u) = 0;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(v7, v66 + v16, &__u, 0);
  *(a1 + 40) = v66 - 1;
  IR::DelayLine<float>::reset(a1);
  return a1;
}

void sub_1DDEA93C8(_Unwind_Exception *exception_object)
{
  v8 = v1[38];
  if (v8)
  {
    v1[39] = v8;
    operator delete(v8);
  }

  v9 = v1[35];
  if (v9)
  {
    v1[36] = v9;
    operator delete(v9);
  }

  v10 = v1[32];
  if (v10)
  {
    v1[33] = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    v1[30] = v11;
    operator delete(v11);
  }

  v12 = v1[26];
  if (v12)
  {
    v1[27] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v1[24] = v13;
    operator delete(v13);
  }

  v14 = v1[20];
  if (v14)
  {
    v1[21] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[18] = v15;
    operator delete(v15);
  }

  v16 = v1[9];
  if (v16)
  {
    v1[10] = v16;
    operator delete(v16);
  }

  v17 = *v3;
  if (*v3)
  {
    v1[7] = v17;
    operator delete(v17);
  }

  v18 = *v2;
  if (*v2)
  {
    v1[3] = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE16__init_with_sizeB8ne200100IPDF16_S5_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_1DDEA9520(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN2IR9DelayLineIDF16_ED1Ev(uint64_t a1)
{
  if ((*(a1 + 4) - 5) <= 2)
  {
    SincKernelFactorySingleton::instance(a1);
    SincKernelFactorySingleton::ReleaseSincKernel(*(a1 + 112));
  }

  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    *(a1 + 288) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 256);
  if (v4)
  {
    *(a1 + 264) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    *(a1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    *(a1 + 216) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    *(a1 + 192) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    *(a1 + 168) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    *(a1 + 144) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *(a1 + 24) = v12;
    operator delete(v12);
  }

  return a1;
}

void _ZN2IR9DelayLineIDF16_E7processEPKDF16_PPDF16_jj(uint64_t a1, _WORD *__src, short float **a3, uint64_t a4)
{
  v5 = *(a1 + 96);
  if (a4)
  {
    v6 = __src;
    if (!__src)
    {
      __assert_rtn("process", "DelayLine.cpp", 523, "inInputData");
    }

    v7 = a4;
    v9 = *(a1 + 8);
    v10 = (*(a1 + 24) - *(a1 + 16)) >> 1;
    if (*(a1 + 12) == 1)
    {
      IR::DelayLine<float>::swapDelays(a1);
      *(a1 + 12) = 0;
    }

    v11 = *(a1 + 4);
    if (v11 <= 3)
    {
      switch(v11)
      {
        case 1:
          v40 = 0;
          v41 = *(a1 + 16);
          v42 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v41 + 2 * v15) = v6[v40];
            if (v9)
            {
              v43 = 0;
              v44 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v45 = *(v44 + 4 * v43) + ((*(*(a1 + 48) + 4 * v43) - *(v44 + 4 * v43)) / (v7 - v40));
                }

                else
                {
                  v46 = *(*(a1 + 48) + 4 * v43);
                  v45 = v46 + (*(a1 + 96) * (*(v44 + 4 * v43) - v46));
                }

                *(v44 + 4 * v43) = v45;
                v47 = v15 - v45;
                if (v47 < 0.0)
                {
                  v47 = v47 + v10;
                }

                _H18 = *(v41 + 2 * (v42 & v47));
                __asm { FCVT            S19, H18 }

                _H20 = *(v41 + 2 * ((v47 + 1) & v42));
                __asm { FCVT            S20, H20 }

                _H21 = *(v41 + 2 * ((v47 + 2) & v42));
                _H22 = *(v41 + 2 * ((v47 - 1) & v42));
                __asm
                {
                  FCVT            S23, H21
                  FCVT            S24, H22
                }

                v56 = (_S20 - _S24) * 0.5;
                __asm
                {
                  FCVT            D22, H22
                  FCVT            D18, H18
                  FCVT            D21, H21
                }

                *&_D18 = _D22 + _D18 * -2.5 + (_S20 + _S20) + _D21 * -0.5;
                v60 = (_S19 - _S20) * 1.5 + (_S23 - _S24) * 0.5;
                _S17 = _S19 + ((v56 + ((*&_D18 + (v60 * (v47 - v47))) * (v47 - v47))) * (v47 - v47));
                __asm { FCVT            H17, S17 }

                a3[v43++][v40] = *&_S17;
              }

              while ((v9 != 0) != v43);
            }

            v15 = v42 & (v15 + 1);
            ++v40;
          }

          while (v40 != v7);
          goto LABEL_81;
        case 2:
          v110 = 0;
          v111 = *(a1 + 16);
          v112 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v111 + 2 * v15) = v6[v110];
            if (v9)
            {
              v113 = 0;
              v114 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v115 = *(v114 + 4 * v113) + ((*(*(a1 + 48) + 4 * v113) - *(v114 + 4 * v113)) / (v7 - v110));
                }

                else
                {
                  v116 = *(*(a1 + 48) + 4 * v113);
                  v115 = v116 + (*(a1 + 96) * (*(v114 + 4 * v113) - v116));
                }

                *(v114 + 4 * v113) = v115;
                v117 = v15 - v115;
                if (v117 < 0.0)
                {
                  v117 = v117 + v10;
                }

                _H22 = *(v111 + 2 * (v112 & v117));
                __asm { FCVT            S22, H22 }

                _H23 = *(v111 + 2 * ((v117 + 1) & v112));
                __asm { FCVT            S23, H23 }

                _H24 = *(v111 + 2 * ((v117 + 2) & v112));
                _H25 = *(v111 + 2 * ((v117 + 3) & v112));
                __asm
                {
                  FCVT            S26, H24
                  FCVT            S25, H25
                }

                _H27 = *(v111 + 2 * ((v117 - 1) & v112));
                __asm { FCVT            S28, H27 }

                _H29 = *(v111 + 2 * ((v117 - 2) & v112));
                __asm
                {
                  FCVT            S29, H29
                  FCVT            D27, H27
                  FCVT            D24, H24
                }

                *&_D24 = (_S22 * -2.3333) + _D27 * 1.25 + (_S23 * 1.6667) + _D24 * -0.5 + (_S25 * 0.083333) + (_S29 * -0.16667);
                _S21 = _S22 + (((((_S23 - _S28) * 0.66667) + ((_S29 - _S26) * 0.083333)) + ((*&_D24 + (((((_S26 - _S28) * 0.58333) + ((_S29 - _S25) * 0.083333)) + ((_S22 - _S23) * 1.3333)) * (v117 - v117))) * (v117 - v117))) * (v117 - v117));
                __asm { FCVT            H21, S21 }

                a3[v113++][v110] = *&_S21;
              }

              while ((v9 != 0) != v113);
            }

            v15 = v112 & (v15 + 1);
            ++v110;
          }

          while (v110 != v7);
          goto LABEL_81;
        case 3:
          v12 = 0;
          v13 = *(a1 + 16);
          v14 = *(a1 + 40);
          v15 = *(a1 + 44);
          do
          {
            *(v13 + 2 * v15) = v6[v12];
            if (v9)
            {
              v16 = 0;
              v17 = *(a1 + 72);
              do
              {
                if (v5 == 2.7183)
                {
                  v18 = *(v17 + 4 * v16) + ((*(*(a1 + 48) + 4 * v16) - *(v17 + 4 * v16)) / (v7 - v12));
                }

                else
                {
                  v19 = *(*(a1 + 48) + 4 * v16);
                  v18 = v19 + (*(a1 + 96) * (*(v17 + 4 * v16) - v19));
                }

                *(v17 + 4 * v16) = v18;
                v20 = v15 - v18;
                if (v20 < 0.0)
                {
                  v20 = v20 + v10;
                }

                _H17 = *(v13 + 2 * (v14 & v20));
                _H18 = *(v13 + 2 * ((v20 + 1) & v14));
                __asm
                {
                  FCVT            S19, H17
                  FCVT            S18, H18
                }

                _H20 = *(v13 + 2 * ((v20 - 1) & v14));
                __asm
                {
                  FCVT            S20, H20
                  FCVT            D17, H17
                }

                v32 = (_S18 + (_S20 * -0.33333)) + _D17 * -0.5 - (_S18 * 0.16667);
                *&_D17 = -(_D17 - (_S18 + _S20) * 0.5);
                v33 = ((_S18 - _S20) * 0.16667) + (_S19 - _S18) * 0.5;
                _S16 = _S19 + ((v32 + ((*&_D17 + (v33 * (v20 - v20))) * (v20 - v20))) * (v20 - v20));
                __asm { FCVT            H16, S16 }

                a3[v16++][v12] = *&_S16;
              }

              while ((v9 != 0) != v16);
            }

            v15 = v14 & (v15 + 1);
            ++v12;
          }

          while (v12 != v7);
          goto LABEL_81;
      }

LABEL_47:
      v62 = 0;
      v63 = *(a1 + 16);
      v64 = *(a1 + 40);
      v65 = *(a1 + 44);
      do
      {
        *(v63 + 2 * v65) = v6[v62];
        if (v9)
        {
          v66 = 0;
          _H3 = v65;
          __asm { FCVT            S3, H3 }

          v69 = *(a1 + 72);
          do
          {
            if (v5 == 2.7183)
            {
              v70 = *(v69 + 4 * v66) + ((*(*(a1 + 48) + 4 * v66) - *(v69 + 4 * v66)) / (v7 - v62));
            }

            else
            {
              v71 = *(*(a1 + 48) + 4 * v66);
              v70 = v71 + (*(a1 + 96) * (*(v69 + 4 * v66) - v71));
            }

            *(v69 + 4 * v66) = v70;
            _S4 = _S3 - v70;
            __asm { FCVT            H4, S4 }

            v73 = v10 + *&_S4;
            __asm { FCMP            H4, #0 }

            if (_NF)
            {
              _H4 = v73;
            }

            v75 = *(v63 + 2 * (v64 & _H4));
            a3[v66++][v62] = v75 + ((_H4 - _H4) * (*(v63 + 2 * ((_H4 + 1) & v64)) - v75));
          }

          while ((v9 != 0) != v66);
        }

        v65 = v64 & (v65 + 1);
        ++v62;
      }

      while (v62 != v7);
      *(a1 + 44) = v65;
      return;
    }

    if (v11 <= 5)
    {
      if (v11 != 4)
      {
        goto LABEL_29;
      }

      v76 = 0;
      v77 = *(a1 + 16);
      v78 = *(a1 + 40);
      v15 = *(a1 + 44);
      do
      {
        *(v77 + 2 * v15) = v6[v76];
        if (v9)
        {
          v79 = 0;
          v80 = *(a1 + 72);
          v81 = *(a1 + 40);
          do
          {
            if (v5 == 2.7183)
            {
              v82 = *(a1 + 72);
              v83 = *(v82 + 4 * v79) + ((*(*(a1 + 48) + 4 * v79) - *(v82 + 4 * v79)) / (v7 - v76));
            }

            else
            {
              v84 = *(*(a1 + 48) + 4 * v79);
              v82 = *(a1 + 72);
              v83 = v84 + (*(a1 + 96) * (*(v82 + 4 * v79) - v84));
            }

            *(v82 + 4 * v79) = v83;
            v85 = v15 - *(v80 + 4 * v79);
            if (v85 < 0.0)
            {
              v85 = v85 + v10;
            }

            v86 = v85;
            v87 = v85 - v85;
            _H30 = *(v77 + 2 * (v81 & v86));
            __asm { FCVT            S29, H30 }

            _H31 = *(v77 + 2 * ((v86 + 1) & v81));
            __asm { FCVT            S8, H31 }

            _H10 = *(v77 + 2 * ((v86 + 2) & v81));
            _H11 = *(v77 + 2 * ((v86 + 3) & v81));
            __asm
            {
              FCVT            S12, H10
              FCVT            S11, H11
            }

            _H13 = *(v77 + 2 * ((v86 - 1) & v81));
            __asm { FCVT            S14, H13 }

            _H15 = *(v77 + 2 * ((v86 - 2) & v81));
            __asm
            {
              FCVT            S3, H15
              FCVT            D15, H15
              FCVT            D13, H13
              FCVT            D31, H31
              FCVT            D10, H10
            }

            *&_D31 = _D13 * -0.5 + _D15 * 0.05 + (_S29 * -0.33333) + _D31 + _D10 * -0.25 + (_S11 * 0.033333);
            __asm { FCVT            D30, H30 }

            v105 = ((_S12 + _S3) * 0.041667);
            *&_D10 = ((_S8 + _S14) * 0.66667) + _D30 * -1.25 - v105;
            v106 = ((_S8 + _S14) * -0.16667) + _D30 * 0.25 + v105;
            _S3 = _S29 + ((*&_D31 + ((*&_D10 + ((((((_S8 * -0.58333) + (_S29 * 0.41667)) + (_S12 * 0.29167)) + (((_S14 + _S3) + _S11) * -0.041667)) + ((v106 + (((((_S14 - _S12) * 0.041667) + ((_S11 - _S3) * 0.0083333)) + ((_S8 - _S29) * 0.083333)) * v87)) * v87)) * v87)) * v87)) * v87);
            __asm { FCVT            H3, S3 }

            a3[v79++][v76] = *&_S3;
          }

          while ((v9 != 0) != v79);
        }

        v15 = v78 & (v15 + 1);
        ++v76;
      }

      while (v76 != v7);
LABEL_81:
      *(a1 + 44) = v15;
      return;
    }

    if (v11 != 6)
    {
      if (v11 == 7)
      {
LABEL_29:
        v237 = v10;
        v231[1] = v231;
        v35 = *(a1 + 132);
        v36 = v35 - 1;
        if (v35)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (v9)
        {
          v38 = **(a1 + 48) * 1024.0;
          v39 = -1.0;
          if (v38 >= 0.0)
          {
            v39 = 1.0;
          }

          v36 = (v38 + (v39 * 0.5));
        }

        v238 = v36;
        v232 = v237 - v37;
        v133 = v7 - v237;
        __srca = v6;
        if (v7 <= v237)
        {
          v160 = *(a1 + 44);
          if (v160 + v7 >= v237)
          {
            v203 = *(a1 + 16);
            v204 = v237 - v160;
            v205 = 2 * (v237 - v160);
            if (v237 != v160)
            {
              memmove((v203 + 2 * v160), __srca, 2 * (v237 - v160));
              v203 = *(a1 + 16);
            }

            v206 = 2 * v7;
            if (v206 != v205)
            {
              memmove((v203 + 2 * v37), __srca + 2 * v204, v206 - v205);
            }

            *(a1 + 44) += v133 + v37;
            if (v232 < v7)
            {
              __assert_rtn("process", "DelayLine.cpp", 646, "inNumFramesToProcess <= delayLineLen - padOffset");
            }
          }

          else
          {
            memmove((*(a1 + 16) + 2 * v160), v6, 2 * v7);
            *(a1 + 44) += v7;
          }

          if (v35 >= 2)
          {
            memmove(*(a1 + 16), (*(a1 + 24) - 2 * v37), 2 * v37);
          }

          if (v9)
          {
            v207 = **(a1 + 48);
            v208 = *a3;
            v209 = **(a1 + 72);
            if ((v209 * 1024.0) < 0.0)
            {
              v210 = -1.0;
            }

            else
            {
              v210 = 1.0;
            }

            if ((((v209 * 1024.0) + (v210 * 0.5)) - v238) >= 0)
            {
              v211 = ((v209 * 1024.0) + (v210 * 0.5)) - v238;
            }

            else
            {
              v211 = v238 - ((v209 * 1024.0) + (v210 * 0.5));
            }

            v212 = *(a1 + 4);
            if (v212 == 7)
            {
              v213 = 8;
            }

            else
            {
              v213 = 1;
            }

            v214 = powf(*(a1 + 96), v213);
            v215 = v211 > 0x20;
            if (v211 >= 0x21 && v213 <= v7)
            {
              v217 = v214;
              v218 = **(a1 + 136);
              if (v212 == 7)
              {
                v219 = 3;
              }

              else
              {
                v219 = 0;
              }

              do
              {
                if (v5 == 2.7183)
                {
                  if (!(v7 >> v219))
                  {
                    __assert_rtn("process", "DelayLine.cpp", 689, "numSubBlocksRemaining > 0");
                  }

                  v220 = *(a1 + 136);
                  v221 = v238;
                  LODWORD(v222) = (v238 - *v220) / (v7 >> v219) + *v220;
                  *v220 = v222;
                }

                else
                {
                  v209 = v207 + (v217 * (v209 - v207));
                  if ((v209 * 1024.0) < 0.0)
                  {
                    v223 = -1.0;
                  }

                  else
                  {
                    v223 = 1.0;
                  }

                  v222 = ((v209 * 1024.0) + (v223 * 0.5));
                  v218 = v222;
                  v221 = v238;
                }

                _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(a1, v160, v222, v208, v213);
                if (v218 - v221 >= 0)
                {
                  v224 = v218 - v221;
                }

                else
                {
                  v224 = v221 - v218;
                }

                v160 = *(a1 + 40) & (v160 + v213);
                v225 = v7 - v213;
                v215 = v224 > 0x20;
                v208 += v213;
                v226 = v224 < 0x21 || (v7 - v213) < v213;
                LODWORD(v7) = v7 - v213;
              }

              while (!v226);
              LODWORD(v7) = v225;
            }

            if (v7 >= 1)
            {
              if (v5 == 2.7183)
              {
                LODWORD(v227) = **(a1 + 136);
              }

              else
              {
                if (!v215)
                {
                  v209 = v207;
                }

                v230 = -1.0;
                if ((v209 * 1024.0) >= 0.0)
                {
                  v230 = 1.0;
                }

                v227 = ((v209 * 1024.0) + (v230 * 0.5));
              }

              _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(a1, v160, v227, v208, v7);
            }

            **(a1 + 72) = v209;
          }
        }

        else
        {
          v134 = 0;
          v135 = v9 != 0;
          v136 = *(a1 + 44);
          v137 = *(a1 + 16);
          v236 = v7;
          v234 = v7;
          v233 = v9;
          do
          {
            v138 = v6[v134];
            *(v137 + 2 * v136) = v138;
            if (v136 < v37)
            {
              *(v137 + 2 * (v136 + v232)) = v138;
            }

            if (v9)
            {
              v139 = 0;
              v140 = v7 - v134;
              do
              {
                if (v5 == 2.7183)
                {
                  v141 = *(a1 + 136);
                  LODWORD(v142) = (v238 - *(v141 + 4 * v139)) / v140 + *(v141 + 4 * v139);
                }

                else
                {
                  v143 = *(*(a1 + 48) + 4 * v139);
                  v144 = *(a1 + 72);
                  v145 = v143 + (*(a1 + 96) * (*(v144 + 4 * v139) - v143));
                  *(v144 + 4 * v139) = v145;
                  v146 = v145 * 1024.0;
                  if (v146 < 0.0)
                  {
                    v147 = -1.0;
                  }

                  else
                  {
                    v147 = 1.0;
                  }

                  v142 = (v146 + (v147 * 0.5));
                  v141 = *(a1 + 136);
                }

                *(v141 + 4 * v139) = v142;
                v148 = *(a1 + 128);
                v149 = v142 + (1 << (9 - v148)) - 512;
                v150 = (v149 & 0x3FF) >> (10 - v148);
                if (*(a1 + 120) <= v150)
                {
                  __assert_rtn("process", "DelayLine.cpp", 616, "phaseIndex < mFractionalPhases");
                }

                v151 = *(a1 + 40);
                v152 = *(a1 + 44);
                vDSP_vsphp((*(a1 + 104) + 4 * *(a1 + 132) * v150), *(a1 + 160), *(a1 + 132));
                v137 = *(a1 + 16);
                v153 = *(a1 + 132);
                if (v153)
                {
                  v154 = *(a1 + 160);
                  v155 = (v137 + 2 * ((v237 - (v37 + (v149 >> 10)) + v152) & v151) + 2 * v37);
                  LOWORD(v156) = 0;
                  do
                  {
                    v157 = *v155--;
                    v158 = v157;
                    v159 = *v154++;
                    v156 = v156 + (v159 * v158);
                    --v153;
                  }

                  while (v153);
                }

                else
                {
                  LOWORD(v156) = 0;
                }

                a3[v139++][v134] = v156;
              }

              while (v139 != v135);
              v136 = *(a1 + 44);
              LODWORD(v7) = v234;
              v6 = __srca;
              v9 = v233;
            }

            v136 = *(a1 + 40) & (v136 + 1);
            *(a1 + 44) = v136;
            ++v134;
          }

          while (v134 != v236);
        }

        return;
      }

      goto LABEL_47;
    }

    v108 = *(a1 + 44);
    v109 = *(a1 + 132) - 1;
    if (v108 + v7 >= v10)
    {
      v161 = *(a1 + 16);
      v162 = 2 * (v10 - v108);
      if (v10 != v108)
      {
        memmove((v161 + 2 * v108), v6, 2 * (v10 - v108));
        v161 = *(a1 + 16);
      }

      v163 = 2 * v7;
      if (v163 != v162)
      {
        memmove((v161 + 2 * v109), &v6[(v10 - v108)], v163 - v162);
      }

      *(a1 + 44) += v7 - v10 + v109;
      if (v10 - v109 <= v7)
      {
        __assert_rtn("process", "DelayLine.cpp", 737, "inNumFramesToProcess < delayLineLen - padOffset");
      }
    }

    else
    {
      memmove((*(a1 + 16) + 2 * v108), v6, 2 * v7);
      *(a1 + 44) += v7;
    }

    if (v109)
    {
      memmove(*(a1 + 16), (*(a1 + 24) - 2 * v109), 2 * v109);
    }

    if (v9)
    {
      v164 = *a3;
      v165 = *(a1 + 304);
      LODWORD(v166) = *v165;
      while (!v166)
      {
        v184 = *(a1 + 48);
        v185 = *(a1 + 72);
        v186 = *v185;
        if (*v184 == *v185)
        {
          v228 = v186 * 1024.0;
          v229 = -1.0;
          if (v228 >= 0.0)
          {
            v229 = 1.0;
          }

          _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(a1, v108, (v228 + (v229 * 0.5)), v164, v7);
          return;
        }

        v166 = (*(a1 + 192) - *(a1 + 184)) >> 1;
        *v165 = v166;
        **(a1 + 280) = v186;
        *v185 = *v184;
LABEL_135:
        if (!v7)
        {
          return;
        }
      }

      if (v7 >= v166)
      {
        v167 = v166;
      }

      else
      {
        v167 = v7;
      }

      v168 = **(a1 + 72) * 1024.0;
      if (v168 < 0.0)
      {
        v169 = -1.0;
      }

      else
      {
        v169 = 1.0;
      }

      _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(a1, v108, (v168 + (v169 * 0.5)), *(a1 + 256), v167);
      v170 = **(a1 + 280) * 1024.0;
      if (v170 < 0.0)
      {
        v171 = -1.0;
      }

      else
      {
        v171 = 1.0;
      }

      _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(a1, v108, (v170 + (v171 * 0.5)), *(a1 + 232), v167);
      v172 = *(a1 + 184);
      v173 = (*(a1 + 192) - v172) >> 1;
      v165 = *(a1 + 304);
      v166 = *v165;
      v174 = *(a1 + 232);
      v175 = *(a1 + 208);
      v176 = *(a1 + 256);
      if (v167 >= 0x10)
      {
        v177 = 0;
        v187 = (v172 + 2 * (v173 - v166));
        if ((v164 - v187) >= 0x20 && v164 - v174 >= 0x20)
        {
          v188 = (v175 + 2 * (v173 - v166));
          if ((v164 - v188) >= 0x20 && v164 - v176 >= 0x20)
          {
            v177 = v167 & 0xFFFFFFF0;
            v189 = *(a1 + 232);
            v190 = *(a1 + 256);
            v191 = v164;
            v192 = v177;
            do
            {
              v193 = *v187;
              v194 = v187[1];
              v187 += 2;
              v195 = *v189;
              v196 = v189[1];
              v189 += 2;
              v197 = vmulq_f16(v196, v194);
              v198 = vmulq_f16(v195, v193);
              v200 = *v188;
              v199 = v188[1];
              v188 += 2;
              v202 = *v190;
              v201 = v190[1];
              v190 += 2;
              *v191 = vmlaq_f16(v198, v200, v202);
              v191[1] = vmlaq_f16(v197, v199, v201);
              v191 += 2;
              v192 -= 16;
            }

            while (v192);
            if (v177 == v167)
            {
LABEL_129:
              LODWORD(v166) = v166 - v167;
              *v165 = v166;
              LODWORD(v7) = v7 - v167;
              if (v167 + v108 >= v10)
              {
                v183 = v109 - v10;
              }

              else
              {
                v183 = 0;
              }

              LODWORD(v108) = v167 + v108 + v183;
              v164 += v167;
              goto LABEL_135;
            }
          }
        }
      }

      else
      {
        v177 = 0;
      }

      v178 = 0;
      v179 = v176 + 2 * v177;
      v180 = 2 * v177 + 2 * v173 - 2 * v166;
      v181 = v174 + 2 * v177;
      v182 = v172 + v180;
      do
      {
        v164[v177 + v178] = (*(v181 + 2 * v178) * *(v182 + 2 * v178)) + (*(v179 + 2 * v178) * *(v175 + v180 + 2 * v178));
        ++v178;
      }

      while (v167 - v177 != v178);
      goto LABEL_129;
    }
  }

  else if (v5 == 2.7183)
  {

    IR::DelayLine<float>::swapDelays(a1);
  }
}

void _ZN2IR9DelayLineIDF16_E22processPolyphaseQ22_10EjiPDF16_j(uint64_t a1, int a2, int a3, short float *a4, unsigned int a5)
{
  v5 = *(a1 + 128);
  v6 = a3 + (1 << (9 - v5)) - 512;
  v7 = (v6 & 0x3FF) >> (10 - v5);
  if (v7 >= *(a1 + 120))
  {
    __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 207, "phaseIndex < mFractionalPhases");
  }

  v11 = *(a1 + 132);
  v12 = (v11 - 1);
  v13 = (a2 - (v11 + (v6 >> 10)) + ((*(a1 + 24) - *(a1 + 16)) >> 1) + 1) & *(a1 + 40);
  vDSP_vsphp((*(a1 + 104) + 4 * v7 * v11), *(a1 + 160), v11);
  v14 = *(a1 + 160);
  if (a5 == 1)
  {
    v15 = *(a1 + 132);
    if (v15)
    {
      v16 = (*(a1 + 16) + 2 * v13 + 2 * v12);
      LOWORD(v17) = 0;
      do
      {
        v18 = *v16--;
        v19 = v18;
        v20 = *v14++;
        v17 = v17 + (v20 * v19);
        --v15;
      }

      while (v15);
    }

    else
    {
      LOWORD(v17) = 0;
    }

    *a4 = v17;
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = (*(a1 + 24) - v21) >> 1;
    if (v22 >= v12 + a5 + v13)
    {
      v26 = (v21 + 2 * v13);
      v29 = &v14[v12];
      v25 = a5;
      v28 = *(a1 + 132);
      v27 = a4;
    }

    else
    {
      if (v22 < v12 + a5)
      {
        __assert_rtn("processPolyphaseQ22_10", "DelayLine.cpp", 228, "inNumFramesToProcess + padOffset <= mDelayLine.size()");
      }

      v23 = v22 - (v12 + v13);
      v24 = &v14[v12];
      vDSP_conv_fp16((v21 + 2 * v13), v24, a4, v23, *(a1 + 132));
      v25 = a5 - v23;
      v26 = *(a1 + 16);
      v27 = &a4[v23];
      v28 = *(a1 + 132);
      v29 = v24;
    }

    vDSP_conv_fp16(v26, v29, v27, v25, v28);
  }
}

uint64_t AUFixedGain::SupportedNumChannels(AUFixedGain *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUFixedGain::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUFixedGain::GetParameterInfo(AUFixedGain *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (a3 > 0xF)
  {
    return 4294956418;
  }

  buffer->cfNameString = @"Gain (dB)";
  buffer->flags = 0x8000000;
  CFStringGetCString(@"Gain (dB)", buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = kAudioUnitParameterUnit_Decibels;
  *&buffer->minValue = 0x41F00000C3480000;
  v6 = buffer->flags | 0x40008000;
  buffer->defaultValue = 0.0;
  buffer->flags = v6;
  return result;
}

uint64_t AUFixedGain::GetParameterList(AUFixedGain *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    LODWORD(i) = 0;
    result = 4294956430;
  }

  else
  {
    for (i = 0; i != 16; ++i)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(Element + 108) <= i)
      {
        break;
      }

      if (a3)
      {
        a3[i] = i;
      }
    }

    result = 0;
  }

  *a4 = i;
  return result;
}

uint64_t AUFixedGain::Render(AUFixedGain *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v10)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v11 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v11)
    {
      if (!*(v11 + 144))
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 152);
      v13 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v13)
      {
        if (*(v13 + 144))
        {
          v14 = *(*this + 176);
          v15 = *(v13 + 152) + 48;

          return v14(this, a2, v12 + 48, v15, a4);
        }

LABEL_16:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUFixedGain::ProcessBufferLists(AUFixedGain *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v9 = *(this + 132);
  if (*(this + 133) != v9)
  {
    v10 = *(this + 68);
    if (v10)
    {
      v11 = *(this + 69);
      if (v11)
      {
        memcpy(v11, v10, 4 * *(this + 135));
      }
    }

    *(this + 133) = v9;
  }

  if (a3->mNumberBuffers)
  {
    v12 = 0;
    v13 = 16;
    do
    {
      if (*(this + 134) || v12 >= *(this + 135))
      {
        memcpy(*(&a4->mNumberBuffers + v13), *(&a3->mNumberBuffers + v13), 4 * a5);
      }

      else
      {
        v15 = *(*(this + 69) + 4 * v12);
        MEMORY[0x1E12BE940](*(&a3->mNumberBuffers + v13), 1, &v15, *(&a4->mNumberBuffers + v13), 1, a5);
      }

      ++v12;
      v13 += 16;
    }

    while (v12 < a3->mNumberBuffers);
  }

  return 0;
}

uint64_t AUFixedGain::SetParameter(AUFixedGain *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956430;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 132);
  return result;
}

uint64_t AUFixedGain::SetProperty(AUFixedGain *this, int a2, int a3, unsigned int a4, _DWORD *a5, size_t size)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = size;
  if ((a2 - 64002) >= 2)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (size == 4)
    {
      result = 0;
      *(this + 134) = *a5;
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {
    if (!size)
    {
      return 0;
    }

    v11 = (this + 544);
    CADeprecated::CAAutoFree<float>::allocBytes(this + 68, size);
    result = *(this + 68);
    if (result)
    {
      memcpy(result, a5, v7);
      v12 = v7 >> 2;
      if (v7 >> 2 >= 0x10)
      {
        v12 = 16;
      }

      *(this + 135) = v12;
      if (a2 == 64002)
      {
        if (v7 >= 4)
        {
          v13 = 0;
          do
          {
            v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v15 & 1) == 0)
            {
              goto LABEL_25;
            }

            ausdk::AUElement::SetParameter(v14, v13, *(*(this + 68) + 4 * v13));
            v16 = *(this + 68);
            *(v16 + 4 * v13) = __exp10f(*(v16 + 4 * v13) / 20.0);
          }

          while (++v13 < *(this + 135));
        }
      }

      else if (v7 >= 4)
      {
        v17 = 0;
        while (1)
        {
          v18 = *(*v11 + 4 * v17);
          v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v20 & 1) == 0)
          {
            break;
          }

          v21 = v19;
          v22 = v18 + 1.0e-20;
          v23 = log10f(v22);
          ausdk::AUElement::SetParameter(v21, v17++, v23 * 20.0);
          if (v17 >= *(this + 135))
          {
            goto LABEL_24;
          }
        }

LABEL_25:
        abort();
      }

LABEL_24:
      result = 0;
      ++*(this + 132);
    }
  }

  return result;
}

uint64_t AUFixedGain::GetProperty(const void **this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 64003:
      v18 = *(this + 135);
      if (!v18)
      {
        return 4294956417;
      }

      memcpy(__dst, this[68], 4 * v18);
      return 0;
    case 64002:
      if (!*(this + 135))
      {
        return 4294956417;
      }

      MEMORY[0x1EEE9AC00](this);
      v10 = v19 - ((v9 + 15) & 0x7FFFFFFF0);
      v11 = *(v8 + 540);
      if (v11)
      {
        v12 = *(v8 + 544);
        v13 = (v19 - ((v9 + 15) & 0x7FFFFFFF0));
        v14 = *(v8 + 540);
        do
        {
          v15 = *v12++;
          v16 = v15 + 1.0e-20;
          *v13++ = log10f(v16) * 20.0;
          --v14;
        }

        while (v14);
        v17 = 4 * v11;
      }

      else
      {
        v17 = 0;
      }

      memcpy(__dst, v10, v17);
      return 0;
    case 21:
      v5 = 0;
      *__dst = *(this + 134);
      return v5;
  }

  return 4294956417;
}

uint64_t AUFixedGain::GetPropertyInfo(AUFixedGain *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if ((a2 - 64002) >= 2)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    *a6 = 1;
    v7 = 4;
  }

  else
  {
    *a6 = 1;
    v7 = 4 * *(this + 135);
  }

  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUFixedGain::Reset(AUFixedGain *this)
{
  v1 = *(this + 68);
  if (v1 && *(this + 69))
  {
    memcpy(*(this + 69), v1, 4 * *(this + 135));
  }

  return 0;
}

uint64_t AUFixedGain::Initialize(AUFixedGain *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v3[10] != v4[2].mSampleRate || *(v3 + 22) != v4[2].mFormatID || *(v3 + 24) != v4[2].mBytesPerPacket || *(v3 + 25) != v4[2].mFramesPerPacket || *(v3 + 27) != v4[2].mChannelsPerFrame || *(v3 + 28) != v4[2].mBitsPerChannel || !CA::Implementation::EquivalentFormatFlags((v3 + 10), v4 + 2, v5))
  {
    return 4294956428;
  }

  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUFixedGain::~AUFixedGain(AUFixedGain *this)
{
  AUFixedGain::~AUFixedGain(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592AA60;
  v2 = *(this + 69);
  if (v2)
  {
    free(v2);
    *(this + 69) = 0;
  }

  v3 = *(this + 68);
  if (v3)
  {
    free(v3);
    *(this + 68) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

void std::vector<std::unique_ptr<HlcSuppressor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<HlcSuppressor>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<MicSenseUtils::DynamicFIR<float>>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<FrequencyDomainCompressor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<FrequencyDomainCompressor>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<MicSenseUtils::GainsToFIR>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[31];
    v2[31] = 0;
    if (v3)
    {
      std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](v3);
    }

    v4 = v2[28];
    if (v4)
    {
      v2[29] = v4;
      operator delete(v4);
    }

    v5 = v2[25];
    if (v5)
    {
      v2[26] = v5;
      operator delete(v5);
    }

    v6 = v2[22];
    if (v6)
    {
      v2[23] = v6;
      operator delete(v6);
    }

    v7 = v2[19];
    if (v7)
    {
      v2[20] = v7;
      operator delete(v7);
    }

    v8 = v2[16];
    if (v8)
    {
      v2[17] = v8;
      operator delete(v8);
    }

    v9 = v2[13];
    if (v9)
    {
      v2[14] = v9;
      operator delete(v9);
    }

    v10 = v2[10];
    if (v10)
    {
      v2[11] = v10;
      operator delete(v10);
    }

    v11 = v2[7];
    if (v11)
    {
      v2[8] = v11;
      operator delete(v11);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<PrescriptiveAmplification>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      v2[22] = v3;
      operator delete(v3);
    }

    v4 = v2[18];
    if (v4)
    {
      v2[19] = v4;
      operator delete(v4);
    }

    v5 = v2[15];
    if (v5)
    {
      v2[16] = v5;
      operator delete(v5);
    }

    v6 = v2[12];
    if (v6)
    {
      v2[13] = v6;
      operator delete(v6);
    }

    v7 = v2[9];
    if (v7)
    {
      v2[10] = v7;
      operator delete(v7);
    }

    v8 = v2[6];
    if (v8)
    {
      v2[7] = v8;
      operator delete(v8);
    }

    v9 = v2[3];
    if (v9)
    {
      v2[4] = v9;
      operator delete(v9);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12BD160);
}

uint64_t *std::unique_ptr<FrequencyDomainCompressor>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      *(v2 + 144) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      *(v2 + 120) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 88);
    if (v5)
    {
      *(v2 + 96) = v5;
      operator delete(v5);
    }

    v8 = (v2 + 24);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x1E12BD160](v2, 0x10A0C4086EEE49FLL);
  }

  return a1;
}

void *std::unique_ptr<MicSenseUtils::DynamicFIR<float>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      v2[22] = v3;
      operator delete(v3);
    }

    v4 = v2[16];
    if (v4)
    {
      v2[17] = v4;
      operator delete(v4);
    }

    v5 = v2[13];
    if (v5)
    {
      v2[14] = v5;
      operator delete(v5);
    }

    v6 = v2[10];
    if (v6)
    {
      v2[11] = v6;
      operator delete(v6);
    }

    v7 = v2[7];
    if (v7)
    {
      v2[8] = v7;
      operator delete(v7);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C408331C59ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 264);
    if (v3)
    {
      *(v2 + 272) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 240);
    if (v4)
    {
      *(v2 + 248) = v4;
      operator delete(v4);
    }

    if (*(v2 + 232) == 1)
    {
      NoiseSuppression::Noise::HendriksSPP::~HendriksSPP((v2 + 8));
    }

    MEMORY[0x1E12BD160](v2, 0x1092C40F1FAF12ALL);
  }

  return a1;
}

uint64_t *std::unique_ptr<HlcSuppressor>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 280);
    if (v3)
    {
      *(v2 + 288) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 256);
    if (v4)
    {
      *(v2 + 264) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 232);
    if (v5)
    {
      *(v2 + 240) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 208);
    if (v6)
    {
      *(v2 + 216) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 184);
    if (v7)
    {
      *(v2 + 192) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 160);
    if (v8)
    {
      *(v2 + 168) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 136);
    if (v9)
    {
      *(v2 + 144) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 112);
    if (v10)
    {
      *(v2 + 120) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 88);
    if (v11)
    {
      *(v2 + 96) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 64);
    if (v12)
    {
      *(v2 + 72) = v12;
      operator delete(v12);
    }

    v13 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v13;
      operator delete(v13);
    }

    MEMORY[0x1E12BD160](v2, 0x1080C40FE1E2400);
  }

  return a1;
}

uint64_t std::vector<std::unique_ptr<VPTimeFreqConverter>>::push_back[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<VPTimeFreqConverter>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t MicSenseUtils::DynamicFIR<float>::DynamicFIR(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1000593162;
  *(a1 + 56) = 0u;
  v3 = (a1 + 56);
  *(a1 + 104) = 0u;
  v4 = (a1 + 104);
  *(a1 + 168) = 0u;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 41) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  std::vector<float>::resize((a1 + 168), a2);
  v5 = *(a1 + 8);
  *(a1 + 40) = v5;
  *v6.i32 = 1.0 / v5;
  *(a1 + 28) = v6.i32[0];
  v12 = 0;
  std::vector<float>::assign(v4, v5, &v12, v6);
  v12 = 0;
  std::vector<float>::assign((a1 + 128), v5, &v12, v7);
  v12 = 0;
  std::vector<float>::assign(v3, v5, &v12, v8);
  v9 = 2 * *(a1 + 8) - 1;
  v12 = 0;
  std::vector<float>::assign((a1 + 80), v9, &v12, v10);
  return a1;
}

void sub_1DDEABBE8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[22] = v6;
    operator delete(v6);
  }

  v7 = v1[16];
  if (v7)
  {
    v1[17] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[14] = v8;
    operator delete(v8);
  }

  v9 = v1[10];
  if (v9)
  {
    v1[11] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[8] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::unique_ptr<MicSenseUtils::DynamicFIR<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<MicSenseUtils::DynamicFIR<float>>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>::SmoothedNoiseEstimator(uint64_t a1, unint64_t a2, char a3, float a4, float a5)
{
  *a1 = a5;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v11 = (a1 + 240);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v15.i32[0] = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 264), a2);
  *(a1 + 288) = 0;
  if ((a3 & 1) == 0)
  {
    *&v16 = __PAIR64__(a2, LODWORD(a4));
    *(&v16 + 1) = LODWORD(a5);
    v17 = 0;
    v19 = 0u;
    memset(v20, 0, sizeof(v20));
    v15 = &unk_1F5934A48;
    *&v21[24] = 1065185444;
    memset(v28, 0, sizeof(v28));
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    *v21 = xmmword_1DE09BF90;
    *&v27 = 0x3F78271942027DB9;
    v18 = 872415232;
    NoiseSuppression::Noise::HendriksSPP::Init(&v15);
    if (*(a1 + 232) == 1)
    {
      NoiseSuppression::Noise::HendriksSPP::~HendriksSPP(v10);
      *(a1 + 232) = 0;
    }

    v12 = v16;
    *(a1 + 40) = 0;
    *(a1 + 16) = v12;
    *(a1 + 32) = v17;
    *(a1 + 8) = &unk_1F5934A90;
    *(a1 + 36) = v18;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 40, v19, *(&v19 + 1), (*(&v19 + 1) - v19) >> 2);
    std::vector<BOOL>::vector((a1 + 64), v20 + 8);
    *(a1 + 120) = 0;
    *(a1 + 8) = &unk_1F5934A48;
    *(a1 + 88) = *v21;
    *(a1 + 100) = *&v21[12];
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 120, v22, *(&v22 + 1), (*(&v22 + 1) - v22) >> 2);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 144, *(&v23 + 1), v24, (v24 - *(&v23 + 1)) >> 2);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 168, v25, *(&v25 + 1), (*(&v25 + 1) - v25) >> 2);
    *(a1 + 192) = v27;
    std::vector<BOOL>::vector((a1 + 208), v28);
    *(a1 + 232) = 1;
    NoiseSuppression::Noise::HendriksSPP::~HendriksSPP(&v15);
    v15.i32[0] = 0;
    std::vector<float>::assign(v11, a2, &v15, v13);
  }

  return a1;
}

void sub_1DDEABEF4(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 264);
  if (v5)
  {
    *(v1 + 272) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 248) = v6;
    operator delete(v6);
  }

  if (*(v1 + 232) == 1)
  {
    NoiseSuppression::Noise::HendriksSPP::~HendriksSPP(v2);
  }

  _Unwind_Resume(exception_object);
}

void HearingLossCompensator_Core::SetParameter(HearingLossCompensator_Core *this, uint64_t a2, float a3)
{
  if (HearingLossCompensator_Core::kMaxValue[a2] < a3)
  {
    a3 = HearingLossCompensator_Core::kMaxValue[a2];
  }

  v4 = HearingLossCompensator_Core::kMinValue[a2];
  if (a3 < v4)
  {
    a3 = HearingLossCompensator_Core::kMinValue[a2];
  }

  v5 = *this;
  *(*this + 4 * a2) = a3;
  if (a2 <= 7)
  {
    *(this + 81) = 257;
    return;
  }

  if (a2 > 14)
  {
    if (a2 == 15)
    {
      v9 = *(v5 + 15);
      **(this + 81) = v9;
      **(this + 82) = v9;
      goto LABEL_21;
    }

    if (a2 == 16)
    {
      if (*(this + 6))
      {
        v7 = 0;
        do
        {
          FrequencyDomainCompressor::SetParameter(*(*(this + 90) + 8 * v7++), 5, *(*this + 64));
        }

        while (v7 < *(this + 6));
      }

      return;
    }
  }

  else
  {
    if (a2 == 13)
    {
      v8 = *(v5 + 13);
      *(*(this + 81) + 4) = v8;
      *(*(this + 82) + 4) = v8;
      goto LABEL_21;
    }

    if (a2 == 14)
    {
      PrescriptiveAmplification::SetFineTuningSimple(*(this + 81), v5[14], v4);
      PrescriptiveAmplification::SetFineTuningSimple(*(this + 82), *(*this + 56), v6);
LABEL_21:
      *(this + 82) = 1;
      return;
    }
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 0x1A)
  {
    *(this + 80) = 1;
    goto LABEL_21;
  }

  switch(a2)
  {
    case 8:
      v10 = *(this + 6);
      if (v10)
      {
        v11 = *(this + 90);
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v5[8];
          if (v14 > 60.0)
          {
            v14 = 60.0;
          }

          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          *(*v12 + 12) = v14;
          --v10;
        }

        while (v10);
      }

      break;
    case 9:
      v28 = *(this + 6);
      if (v28)
      {
        v29 = *(this + 90);
        do
        {
          v31 = *v29++;
          v30 = v31;
          v32 = v5[9];
          if (v32 > 0.0)
          {
            v32 = 0.0;
          }

          if (v32 < -60.0)
          {
            v32 = -60.0;
          }

          *(*v30 + 16) = v32;
          --v28;
        }

        while (v28);
      }

      break;
    case 10:
      v17 = *(this + 6);
      if (v17)
      {
        v18 = *(this + 90);
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = v5[10];
          if (v21 > 1000.0)
          {
            v21 = 1000.0;
          }

          if (v21 < 0.0)
          {
            v21 = 0.0;
          }

          *(*v19 + 4) = v21;
          v22 = expf(-1.0 / ((v21 * 0.001) * v19[12]));
          v19[15] = 1.0 - v22;
          v19[16] = v22;
          --v17;
        }

        while (v17);
      }

      break;
    case 11:
      v37 = *(this + 6);
      if (v37)
      {
        v38 = *(this + 90);
        do
        {
          v40 = *v38++;
          v39 = v40;
          v41 = v5[11];
          if (v41 > 5000.0)
          {
            v41 = 5000.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          *(*v39 + 8) = v41;
          v42 = expf(-1.0 / ((v41 * 0.001) * v39[12]));
          v39[17] = 1.0 - v42;
          v39[18] = v42;
          --v37;
        }

        while (v37);
      }

      break;
    case 12:
      v43 = expf(-1.0 / ((v5[12] * 0.001) * *(this + 18)));
      *(this + 16) = v43;
      *(this + 17) = 1.0 - v43;
      break;
    case 17:
      *(this + 77) = v5[17] > 0.5;
      break;
    case 18:
      v33 = *(this + 6);
      if (v33)
      {
        v34 = *(this + 96);
        do
        {
          v35 = *v34++;
          v35[72] = expf(-1.0 / (v5[18] * *v35));
          --v33;
        }

        while (v33);
      }

      break;
    case 19:
      *(this + 15) = __exp10f(v5[19] / 10.0);
      break;
    case 20:
      v49 = *(this + 6);
      if (v49)
      {
        v50 = *(this + 99);
        do
        {
          v52 = *v50++;
          v51 = v52;
          v53 = v5[20];
          if (v53 > 100.0)
          {
            v53 = 100.0;
          }

          if (v53 < 0.0)
          {
            v53 = 0.0;
          }

          *(*v51 + 8) = v53;
          v54 = expf(-1.0 / ((v53 * 0.001) * v51[6]));
          v51[13] = v54;
          v51[14] = 1.0 - v54;
          --v49;
        }

        while (v49);
      }

      break;
    case 21:
      v44 = *(this + 6);
      if (v44)
      {
        v45 = *(this + 99);
        do
        {
          v47 = *v45++;
          v46 = v47;
          v48 = v5[21];
          if (v48 > 0.0)
          {
            v48 = 0.0;
          }

          if (v48 < -60.0)
          {
            v48 = -60.0;
          }

          *(*v46 + 16) = v48;
          --v44;
        }

        while (v44);
      }

      break;
    case 24:
      if (*(this + 6))
      {
        v16 = 0;
        do
        {
          FrequencyDomainCompressor::SetParameter(*(*(this + 90) + 8 * v16++), 0, *(*this + 96) + 16.0);
        }

        while (v16 < *(this + 6));
      }

      break;
    case 25:
      v23 = *(this + 6);
      if (v23)
      {
        v24 = *(this + 90);
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = v5[25];
          if (v27 > 30.0)
          {
            v27 = 30.0;
          }

          if (v27 < -80.0)
          {
            v27 = -80.0;
          }

          *(*v25 + 24) = v27;
          v25[21] = v27;
          --v23;
        }

        while (v23);
      }

      break;
    case 28:
      *(*(this + 81) + 8) = 1.0 - v5[28];
      *(*(this + 82) + 8) = 1.0 - v5[28];
      goto LABEL_21;
    case 29:
      v15 = *(v5 + 29);
      *(*(this + 81) + 12) = v15;
      *(*(this + 82) + 12) = v15;
      goto LABEL_21;
    case 30:
      v36 = v5[30] > 0.5 && *(this + 6) > 1u;
      *(this + 79) = v36;
      break;
    case 31:
      *(this + 83) = v5[31] > 0.1;
      break;
    default:
      return;
  }
}

void HearingLossCompensator_Core::SetSensitivityOffset(HearingLossCompensator_Core *this, const float *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v5 = 0;
    while (!*(*(this + 90) + 8 * v5))
    {
LABEL_12:
      if (++v5 >= v2)
      {
        return;
      }
    }

    std::vector<float>::vector[abi:ne200100](&__C, *(this + 10));
    vDSP_vlint(a2, *(this + 35), 1, __C, 1, *(this + 10), 8uLL);
    v6 = *(*(this + 90) + 8 * v5);
    v7 = __C;
    v8 = *(v6 + 52);
    if (v8 > v13 - __C)
    {
      __assert_rtn("SetSensitivityOffset", "FrequencyDomainCompressor.cpp", 148, "offsets_dB.size() >= mNumSubbands");
    }

    if (v8)
    {
      v9 = *(v6 + 112);
      v10 = __C;
      do
      {
        v11 = *v10++;
        *v9++ = *(v6 + 76) + v11;
        --v8;
      }

      while (v8);
    }

    else if (!__C)
    {
LABEL_11:
      v2 = *(this + 6);
      goto LABEL_12;
    }

    v13 = v7;
    operator delete(v7);
    goto LABEL_11;
  }
}

void sub_1DDEAC608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HearingLossCompensator_Core::Process(int **this, void *a2, void *a3, vDSP_Length a4)
{
  v4 = a2[1] - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) != *(this + 6))
  {
    __assert_rtn("Process", "HearingLossCompensator_Core.cpp", 551, "input.size() == mNumChannels");
  }

  v5 = a3;
  if (a3[1] - *a3 != v4)
  {
    __assert_rtn("Process", "HearingLossCompensator_Core.cpp", 552, "output.size() == mNumChannels");
  }

  v6 = a4;
  v7 = this;
  if (*(this + 8) != a4)
  {
    __assert_rtn("Process", "HearingLossCompensator_Core.cpp", 553, "numFrames == mBlockSize");
  }

  v8 = a2;
  v9 = (*(*a2 + 8) - **a2) >> 2;
  if (*(this + 76) == 1)
  {
    if (v9 >= 2 * a4)
    {
      goto LABEL_6;
    }

LABEL_10:
    __assert_rtn("Process", "HearingLossCompensator_Core.cpp", 554, "mIsFrequencyDomain ? (input[0].size() >= 2 * numFrames) : (input[0].size() >= numFrames)");
  }

  if (v9 < a4)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(this + 81) == 1)
  {
    v10 = *this;
    v11 = **this;
    if (*(this + 83))
    {
      v12 = this[26];
      *v12 = v11;
      v12[1] = v10[1];
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[6] = v10[6];
      v12[7] = v10[7];
      v13 = *(v7 + 29);
      *v13 = v10[32];
      v13[1] = v10[33];
      v13[2] = v10[34];
      v13[3] = v10[35];
      v13[4] = v10[36];
      v13[5] = v10[37];
      v13[6] = v10[38];
      v13[7] = v10[39];
      vDSP_vlint(v12, *(v7 + 35), 1, *(v7 + 32), 1, *(v7 + 10), 8uLL);
      PrescriptiveAmplification::SetAudiogram(*(v7 + 81), *(v7 + 32), *(v7 + 33));
      vDSP_vlint(*(v7 + 29), *(v7 + 35), 1, *(v7 + 32), 1, *(v7 + 10), 8uLL);
    }

    else
    {
      v14 = this[23];
      *v14 = v11;
      v14[1] = v10[1];
      v14[2] = v10[2];
      v14[3] = v10[3];
      v14[4] = v10[4];
      v14[5] = v10[5];
      v14[6] = v10[6];
      v14[7] = v10[7];
      vDSP_vlint(v14, *(v7 + 35), 1, *(v7 + 32), 1, *(v7 + 10), 8uLL);
      PrescriptiveAmplification::SetAudiogram(*(v7 + 81), *(v7 + 32), *(v7 + 33));
    }

    PrescriptiveAmplification::SetAudiogram(*(v7 + 82), *(v7 + 32), *(v7 + 33));
    *(v7 + 81) = 0;
  }

  if (*(v7 + 80) == 1)
  {
    v15 = *(*v7 + 104);
    v16 = *(*v7 + 108);
    HearingLossCompensator_Core::SetSensitivityOffset(v7, kHLC_Generic_SensitivityOffsets_dB);
    v17 = *(v7 + 81);
    *(v17 + 20) = 0;
    PrescriptiveAmplification::ComputeFdVectors(v17);
    v18 = *(v7 + 82);
    *(v18 + 20) = 0;
    PrescriptiveAmplification::ComputeFdVectors(v18);
    if (v15 == 2)
    {
      v20 = *(v7 + 81);
      *(v20 + 20) = 1;
      PrescriptiveAmplification::ComputeFdVectors(v20);
      v21 = *(v7 + 82);
      *(v21 + 20) = 1;
      PrescriptiveAmplification::ComputeFdVectors(v21);
      if (v16 <= 8205)
      {
        if (v16 > 8203)
        {
          if (v16 == 8204)
          {
            v19 = &kHLC_B419_Call_SensitivityOffsets_dB;
            goto LABEL_53;
          }

          v24 = 8205;
        }

        else
        {
          if (v16 == 8202)
          {
            v19 = &kHLC_B515_Call_SensitivityOffsets_dB;
            goto LABEL_53;
          }

          v24 = 8203;
        }

        if (v16 == v24)
        {
          v19 = &kHLC_B444_Call_SensitivityOffsets_dB;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (v16 <= 8209)
      {
        if (v16 == 8206)
        {
          v19 = &kHLC_B298_Call_SensitivityOffsets_dB;
          goto LABEL_53;
        }

        if (v16 == 8207)
        {
          v19 = &kHLC_B288_Call_SensitivityOffsets_dB;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (v15 != 1)
      {
        goto LABEL_54;
      }

      if (v16 <= 8205)
      {
        if (v16 > 8203)
        {
          if (v16 == 8204)
          {
            v19 = &kHLC_B419_Media_SensitivityOffsets_dB;
            goto LABEL_53;
          }

          v23 = 8205;
        }

        else
        {
          if (v16 == 8202)
          {
            v19 = &kHLC_B515_Media_SensitivityOffsets_dB;
            goto LABEL_53;
          }

          v23 = 8203;
        }

        if (v16 == v23)
        {
          v19 = &kHLC_B444_Media_SensitivityOffsets_dB;
          goto LABEL_53;
        }

LABEL_54:
        *(v7 + 80) = 0;
        goto LABEL_55;
      }

      if (v16 <= 8209)
      {
        if (v16 == 8206)
        {
          v19 = &kHLC_B298_Media_SensitivityOffsets_dB;
          goto LABEL_53;
        }

        if (v16 == 8207)
        {
          v19 = &kHLC_B288_Media_SensitivityOffsets_dB;
LABEL_53:
          HearingLossCompensator_Core::SetSensitivityOffset(v7, v19);
          goto LABEL_54;
        }

        goto LABEL_54;
      }
    }

    if (v16 != 8210 && v16 != 8212 && v16 != 8228)
    {
      goto LABEL_54;
    }

    v19 = &kHLC_B225_SensitivityOffsets_dB;
    goto LABEL_53;
  }

LABEL_55:
  if (*(v7 + 82) == 1)
  {
    v25 = *(v7 + 6);
    if (v25)
    {
      for (i = 0; i < v25; ++i)
      {
        v27 = *(v7 + i + 81);
        if (v27)
        {
          v28 = *(*(v7 + 90) + 8 * i);
          if (v28)
          {
            PrescriptiveAmplification::GetGainTargets(v27, *(v28 + 24), *(v28 + 32));
            v25 = *(v7 + 6);
          }
        }
      }
    }

    *(v7 + 82) = 0;
  }

  v29 = *v8;
  if (v8[1] != *v8)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      __A.realp = 0;
      __A.imagp = 0;
      v32 = *(*(v7 + 47) + v30);
      __A.realp = v32;
      __A.imagp = *(*(v7 + 50) + v30);
      v33 = *(v7 + 8);
      if (*(v7 + 76) == 1)
      {
        if (v33)
        {
          memmove(v32, *(v29 + v30), 4 * v33);
          v34 = *(v7 + 8);
        }

        else
        {
          v34 = 0;
        }

        v35 = 8 * v34;
        if (v35 != 4 * v34)
        {
          memmove(*(*(v7 + 50) + v30), (*(*v8 + v30) + 4 * v34), v35 - 4 * v34);
        }
      }

      else
      {
        if (v33)
        {
          memmove(*(v7 + 11), *(v29 + v30), 4 * v33);
        }

        VPTimeFreqConverter::Analyze(*(*(v7 + 84) + 8 * v31), *(v7 + 11), &__A);
      }

      ++v31;
      v29 = *v8;
      v30 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3) > v31);
  }

  LODWORD(v36) = *(v7 + 6);
  if (v36)
  {
    v37 = 0;
    v38 = 0;
    do
    {
      __A.realp = 0;
      __A.imagp = 0;
      __A.realp = *(*(v7 + 47) + v37);
      __A.imagp = *(*(v7 + 50) + v37);
      vDSP_zvmags(&__A, 1, *(*(v7 + 53) + v37), 1, (*(v7 + 8) + 1));
      v39 = (*(v7 + 53) + v37);
      **v39 = *__A.realp * *__A.realp;
      *(v39[1] - 4) = *__A.imagp * *__A.imagp;
      if (*(v7 + 78) == 1)
      {
        v40 = SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>::process<std::vector<float>>(*(*(v7 + 96) + 8 * v38), v39);
        memcpy(*(*(v7 + 59) + v37), *v40, 4 * *(v7 + 9));
      }

      ++v38;
      v36 = *(v7 + 6);
      v37 += 24;
    }

    while (v38 < v36);
  }

  v115 = v8;
  if (*(v7 + 79))
  {
    vDSP_vfill(&MicSenseUtils::kZerof, *(v7 + 17), 1, *(v7 + 9));
    vDSP_vfill(&MicSenseUtils::kZerof, *(v7 + 11), 1, *(v7 + 9));
    if (*(v7 + 6))
    {
      v41 = 0;
      v42 = 0;
      do
      {
        MEMORY[0x1E12BE5D0](*(*(v7 + 53) + v41), 1, *(v7 + 17), 1, *(v7 + 17), 1, *(v7 + 9));
        MEMORY[0x1E12BE5D0](*(*(v7 + 59) + v41), 1, *(v7 + 11), 1, *(v7 + 11), 1, *(v7 + 9));
        ++v42;
        v43 = *(v7 + 6);
        v41 += 24;
      }

      while (v42 < v43);
      v44 = v43;
    }

    else
    {
      v44 = 0.0;
    }

    *&__A.realp = v44;
    vDSP_vsdiv(*(v7 + 17), 1, &__A, *(v7 + 17), 1, *(v7 + 9));
    vDSP_vsdiv(*(v7 + 11), 1, &__A, *(v7 + 11), 1, *(v7 + 9));
    LODWORD(v36) = *(v7 + 6);
    if (v36)
    {
      v45 = 0;
      v46 = 0;
      do
      {
        memcpy(*(*(v7 + 53) + v45), *(v7 + 17), 4 * *(v7 + 9));
        memcpy(*(*(v7 + 59) + v45), *(v7 + 11), 4 * *(v7 + 9));
        ++v46;
        v36 = *(v7 + 6);
        v45 += 24;
      }

      while (v46 < v36);
    }
  }

  if (v36)
  {
    v47 = 0;
    __len = 4 * v6;
    v112 = (v7 + 160);
    v113 = v5;
    v114 = v6;
    v116 = v7;
    do
    {
      MEMORY[0x1E12BE930](*(*(v7 + 56) + 24 * v47), 1, v7 + 64, *(*(v7 + 53) + 24 * v47), 1, v7 + 68, *(*(v7 + 56) + 24 * v47), 1, *(v7 + 9));
      v48 = CFilterBank::filterbank_compute_bank32(*(v7 + 80), *(*(v7 + 56) + 24 * v47), *(*(v7 + 68) + 24 * v47));
      v49 = *(*(v7 + 68) + 24 * v47);
      MEMORY[0x1E12BE7F0](v49, 1, *(v7 + 41), 1, v49, 1, *(v7 + 10), v48);
      v50 = *(*(v7 + 90) + 8 * v47);
      v117 = 3 * v47;
      v51 = (*(v7 + 68) + 24 * v47);
      v52 = *v51;
      v53 = *(v50 + 52);
      if (v53 > (v51[1] - *v51) >> 2)
      {
        __assert_rtn("Process", "FrequencyDomainCompressor.cpp", 203, "subbandPower.size() >= mNumSubbands");
      }

      v54 = *(v7 + 74) + 24 * v47;
      v55 = *v54;
      if (v53 > (*(v54 + 8) - *v54) >> 2)
      {
        __assert_rtn("Process", "FrequencyDomainCompressor.cpp", 204, "subbandGain_dB.size() >= mNumSubbands");
      }

      v118 = v47;
      if (v53)
      {
        v56 = 0;
        v119 = *(v50 + 112);
        v57 = *(v50 + 88);
        v58 = *(v50 + 96);
        v59 = *(v50 + 136);
        while (1)
        {
          v60 = *(v50 + 84) + (*(v119 + 4 * v56) + (log10f(fmaxf(*(v52 + 4 * v56), 2.2204e-16)) * 10.0));
          if (*(v58 - 1) < v60)
          {
            v60 = *(v58 - 1);
          }

          if (v60 < *v57)
          {
            v60 = *v57;
          }

          v61 = v58 - v57;
          if (v58 != v57)
          {
            v62 = v57;
            v63 = v58 - v57;
            do
            {
              v64 = v63 >> 1;
              v65 = &v62[v63 >> 1];
              v67 = *v65;
              v66 = v65 + 1;
              v63 += ~(v63 >> 1);
              if (v67 < v60)
              {
                v62 = v66;
              }

              else
              {
                v63 = v64;
              }
            }

            while (v63);
            v61 = v62 - v57;
          }

          v68 = v61 - 1;
          if (v61 < 1)
          {
            break;
          }

          v69 = v61 & 0x7FFFFFFF;
          v70 = *(v50 + 24);
          if (v69 >= v58 - v57)
          {
            goto LABEL_110;
          }

          v71 = v68 & ~(v68 >> 31);
          v72 = (v60 - v57[v71]) / (v57[v69] - v57[v71]);
          v73 = (v72 * *(*(v70 + 24 * v56) + 4 * v69)) + (1.0 - v72) * *(*(v70 + 24 * v56) + 4 * v71);
LABEL_112:
          v74 = *(v59 + 4 * v56);
          v75 = 60;
          if (v73 > v74)
          {
            v75 = 68;
          }

          v76 = 64;
          if (v73 > v74)
          {
            v76 = 72;
          }

          v77 = (v74 * *(v50 + v76)) + (*(v50 + v75) * v73);
          *(v59 + 4 * v56) = v77;
          v55[v56++] = v77;
          if (v56 == v53)
          {
            v5 = v113;
            v6 = v114;
            v8 = v115;
            v47 = v118;
            goto LABEL_119;
          }
        }

        v70 = *(v50 + 24);
        if (!v61)
        {
          v73 = **(v70 + 24 * v56);
          goto LABEL_112;
        }

LABEL_110:
        v73 = *(*(v70 + 24 * v56) + 4 * v68);
        goto LABEL_112;
      }

      v53 = 0;
LABEL_119:
      vDSP_vclip(v55, 1, (*v50 + 16), (*v50 + 12), v55, 1, v53);
      v7 = v116;
      if (*(v116 + 77))
      {
        v78 = *(*(v116 + 59) + 8 * v117);
        MEMORY[0x1E12BE940](v78, 1, v116 + 60, v78, 1, *(v116 + 9));
        v79 = CFilterBank::filterbank_compute_bank32(*(v116 + 80), *(*(v116 + 59) + 8 * v117), *(*(v116 + 71) + 8 * v117));
        v80 = *(*(v116 + 71) + 8 * v117);
        MEMORY[0x1E12BE7F0](v80, 1, *(v116 + 41), 1, v80, 1, *(v116 + 10), v79);
        v81 = *(*(v116 + 99) + 8 * v47);
        v82 = *(v116 + 71);
        v83 = (*(v116 + 77) + 8 * v117);
        MEMORY[0x1E12BE930](v81[23], 1, v81 + 44, *(*(v116 + 68) + 8 * v117), 1, v81 + 6, v81[23], 1, *(v81 + 7));
        vDSP_vthr(*(v82 + 8 * v117), 1, &MicSenseUtils::kepsf, v81[8], 1, *(v81 + 7));
        vDSP_vdiv(v81[8], 1, v81[17], 1, v81[14], 1, *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[23], 1, v81[14], 1, v81[8], 1, *(v81 + 7));
        vDSP_vclip(v81[8], 1, &MicSenseUtils::kOnef, &kParamValue_Mode1ReverbBlend_Max, v81[26], 1, *(v81 + 7));
        MEMORY[0x1E12BE8A0](v81[26], 1, &kHlcSuppressor_SnrShift, v81[8], 1, *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[20], 1, v81[14], 1, v81[11], 1, *(v81 + 7));
        MEMORY[0x1E12BE930](v81[11], 1, v81 + 36, v81[8], 1, v81 + 5, v81[11], 1, *(v81 + 7));
        MEMORY[0x1E12BE8A0](v81[11], 1, &MicSenseUtils::kOnef, v81[8], 1, *(v81 + 7));
        vDSP_vdiv(v81[8], 1, v81[11], 1, v81[8], 1, *(v81 + 7));
        MEMORY[0x1E12BE990](v81[8], 1, v81[8], 1, *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[8], 1, v81[23], 1, v81[8], 1, *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[8], 1, v81[14], 1, v81[29], 1, *(v81 + 7));
        MEMORY[0x1E12BE8A0](v81[29], 1, &MicSenseUtils::kOnef, v81[8], 1, *(v81 + 7));
        vDSP_vdiv(v81[8], 1, v81[29], 1, v81[8], 1, *(v81 + 7));
        MEMORY[0x1E12BE8A0](v81[26], 1, &MicSenseUtils::kOnef, v81[11], 1, *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[8], 1, v81[11], 1, v81[11], 1, *(v81 + 7));
        v84 = v81[11];
        v85 = *v83;
        if (v81[12] - v84 < (v83[1] - *v83))
        {
          __assert_rtn("ComputeHypergeometricGain", "HlcSuppressor.cpp", 237, "x.size() >= result.size()");
        }

        v86 = *v83;
        v87 = *(v81 + 7);
        if (v87)
        {
          do
          {
            v88 = *v84;
            v89 = floorf(v88 + v88);
            v90 = 1.0;
            if (v89 >= 0.0)
            {
              if (v89 <= 19.0)
              {
                v90 = ((-(v89 - (v88 * 2.0)) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v89 + 1)) + ((1.0 - -(v89 - (v88 * 2.0))) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v89))) / sqrtf(v88 + 0.0001);
              }

              else
              {
                v90 = (0.1296 / v88) + 1.0;
              }
            }

            *v86++ = v90;
            ++v84;
            --v87;
          }

          while (v87);
        }

        MEMORY[0x1E12BE7F0](v85, 1, v81[8], 1, v85, 1);
        vDSP_vclip(*v83, 1, &MicSenseUtils::kepsf, &MicSenseUtils::kOnef, *v83, 1, *(v81 + 7));
        MEMORY[0x1E12BE930](v81[35], 1, v81 + 52, *v83, 1, v81 + 7, v81[35], 1, *(v81 + 7));
        memcpy(*v83, v81[35], 4 * *(v81 + 7));
        MEMORY[0x1E12BE7F0](v81[23], 1, *v83, 1, v81[20], 1, *(v81 + 7));
        vDSP_vdbcon(*v83, 1, &MicSenseUtils::kOnef, *v83, 1, *(v81 + 7), 1u);
        v91 = *v81;
        if (*(*v81 + 12) != 0.0)
        {
          MEMORY[0x1E12BE8A0](*v83, 1, *v81 + 12, *v83, 1, *(v81 + 7));
          v91 = *v81;
        }

        vDSP_vclip(*v83, 1, (v91 + 16), &MicSenseUtils::kZerof, *v83, 1, *(v81 + 7));
        v7 = v116;
        MEMORY[0x1E12BE5D0](*(*(v116 + 77) + 8 * v117), 1, *(*(v116 + 74) + 8 * v117), 1, *(v116 + 20), 1, *(v116 + 10));
        vDSP_vclip(*(v7 + 20), 1, (*v7 + 88), (*v7 + 32), *(v7 + 20), 1, *(v7 + 10));
        v92 = v112;
      }

      else
      {
        v92 = (*(v116 + 74) + 24 * v47);
      }

      CFilterBank::filterbank_compute_psd16(*(v7 + 80), *v92, *(v7 + 17));
      v93 = *(v7 + 9);
      v94 = *(v7 + 17);
      v94[(v93 - 1)] = v94[(v93 - 2)];
      v95 = v94;
      v96 = v93;
      if (v93)
      {
        do
        {
          v97 = __exp10((*v95 * 0.05));
          *v95++ = v97;
          --v96;
        }

        while (v96);
        v98 = 4 * v93;
      }

      else
      {
        v98 = 0;
      }

      memcpy(*(*(v7 + 62) + 24 * v118), v94, v98);
      if (*(v7 + 12) || (*(v7 + 76) & 1) == 0 && *(*v7 + 92) >= 1)
      {
        vDSP_vthr(*(v7 + 17), 1, &kHearingLossCompensator_ClipThreshold, *(v7 + 17), 1, *(v7 + 9));
        v99 = *(v7 + 83);
        v100 = (*(v7 + 65) + 24 * v118);
        v101 = *(v7 + 8);
        v102 = (v7 + 136);
        if (*(*v7 + 92) > 1)
        {
          MicSenseUtils::GainsToFIR::gainsToLinearPhaseFilter(v99, v102, v100, v101, 0);
        }

        else
        {
          MicSenseUtils::GainsToFIR::gainsToMinimumPhaseFilter(v99, v102, v100, v101);
        }
      }

      if ((*(v7 + 76) & 1) != 0 || !*(*v7 + 92))
      {
        __A.realp = 0;
        __A.imagp = 0;
        __A.realp = *(*(v7 + 47) + 8 * v117);
        __A.imagp = *(*(v7 + 50) + 8 * v117);
        memcpy(*(v7 + 11), *(v7 + 17), 4 * *(v7 + 9));
        v104 = *(v7 + 7);
        v103 = *(v7 + 8);
        v105 = v103 + 1;
        v106 = *(v7 + 11);
        if (v103 + 1 < v104)
        {
          v107 = ~v103 + v104;
          do
          {
            v106[v105++] = v106[v107--];
          }

          while (v107);
        }

        vDSP_zrvmul(&__A, 1, v106, 1, &__A, 1, v6);
        if (*(v7 + 76))
        {
          if (v6)
          {
            memmove(*(*v5 + 8 * v117), __A.realp, __len);
            imagp = __A.imagp;
            v109 = (*(*v5 + 8 * v117) + 4 * v6);
            v110 = __len;
LABEL_153:
            memmove(v109, imagp, v110);
          }
        }

        else
        {
          VPTimeFreqConverter::Synthesize(*(*(v7 + 87) + 8 * v118), &__A, *(v7 + 14));
          if (v6)
          {
            imagp = *(v7 + 14);
            v109 = *(*v5 + 24 * v118);
            v110 = __len;
            goto LABEL_153;
          }
        }
      }

      else
      {
        MicSenseUtils::DynamicFIR<float>::setCoefficients(*(*(v7 + 93) + 8 * v118), (*(v7 + 65) + 8 * v117), *(v7 + 8));
        MicSenseUtils::DynamicFIR<float>::process(*(*(v7 + 93) + 8 * v118), *(*v8 + 8 * v117), *(*v5 + 8 * v117), v6);
      }

      v47 = v118 + 1;
    }

    while (v118 + 1 < *(v7 + 6));
  }
}

void *SmoothedNoiseEstimator<float,NoiseSuppression::Noise::HendriksSPP>::process<std::vector<float>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 232) == 1)
  {
    (*(*(a1 + 8) + 24))();
    a2 = (a1 + 240);
  }

  v3 = *(a1 + 288);
  v4 = *(a1 + 272);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 264);

  return AddMultiplyRVectorRScalarMultiplyRVectorRScalar<std::vector<float>,std::vector<float>,std::vector<float>>((a1 + 264), v7, v4, v5, v6, v3);
}

void *MicSenseUtils::DynamicFIR<float>::setCoefficients(uint64_t a1, const void **a2, vDSP_Length __N)
{
  if (*(a1 + 8) < __N)
  {
    __assert_rtn("setCoefficients", "MicSenseDynamicFIR.hpp", 93, "newFilterLength <= mMaxNumFrames");
  }

  v3 = __N;
  if (*(a1 + 16) != __N)
  {
    *(a1 + 16) = __N;
    __A = 0.0;
    vDSP_vfill(&__A, *(a1 + 104), 1, __N);
    vDSP_vfill(&__A, *(a1 + 128), 1, *(a1 + 16));
    vDSP_vfill(&__A, *(a1 + 80), 1, *(a1 + 16) + *(a1 + 8) - 1);
    v6 = *(a1 + 128);
    *(a1 + 152) = *(a1 + 104);
    *(a1 + 160) = v6;
    *(a1 + 32) = 0;
    v3 = *(a1 + 16);
  }

  *(a1 + 48) = 1;
  return memcpy(*(a1 + 56), *a2, 4 * v3);
}

void *MicSenseUtils::DynamicFIR<float>::process(uint64_t a1, void *__src, float *a3, vDSP_Length a4)
{
  if (*(a1 + 48) == 1 && !*(a1 + 32))
  {
    v8 = *(a1 + 152);
    v9 = *(a1 + 104);
    if (v8 == v9)
    {
      v10 = *(a1 + 128);
    }

    else
    {
      v10 = *(a1 + 104);
    }

    if (v8 == v9)
    {
      v11 = *(a1 + 104);
    }

    else
    {
      v11 = *(a1 + 128);
    }

    *(a1 + 152) = v10;
    *(a1 + 160) = v11;
    memcpy(v10, *(a1 + 56), 4 * *(a1 + 16));
    *(a1 + 48) = 0;
    *(a1 + 32) = *(a1 + 40) - 1;
  }

  memcpy((*(a1 + 80) + 4 * *(a1 + 16) - 4), __src, 4 * a4);
  vDSP_conv(*(a1 + 80), 1, (*(a1 + 152) + 4 * *(a1 + 16) - 4), -1, a3, 1, a4, *(a1 + 16));
  v12 = *(a1 + 32);
  if (v12)
  {
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = *(a1 + 32);
    }

    vDSP_conv(*(a1 + 80), 1, (*(a1 + 160) + 4 * *(a1 + 16) - 4), -1, *(a1 + 168), 1, v13, *(a1 + 16));
    v14 = *(a1 + 28);
    __Start = *(a1 + 32) / *(a1 + 40);
    v19 = -v14;
    v16 = 1.0 - __Start;
    __Step = v14;
    vDSP_vrampmul(a3, 1, &v16, &__Step, a3, 1, v13);
    vDSP_vrampmuladd(*(a1 + 168), 1, &__Start, &v19, a3, 1, v13);
    *(a1 + 32) -= v13;
  }

  return memmove(*(a1 + 80), (*(a1 + 80) + 4 * a4), 4 * *(a1 + 16) - 4);
}

void *AddMultiplyRVectorRScalarMultiplyRVectorRScalar<std::vector<float>,std::vector<float>,std::vector<float>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v9 = a6;
  v6 = a1[1] - *a1;
  if (v6 != a3 - a2)
  {
    __assert_rtn("AddMultiplyRVectorRScalarMultiplyRVectorRScalar", "SmoothedNoiseEstimator.h", 64, "result.size() == A.size()");
  }

  if (v6 != a5 - a4)
  {
    __assert_rtn("AddMultiplyRVectorRScalarMultiplyRVectorRScalar", "SmoothedNoiseEstimator.h", 65, "result.size() == C.size()");
  }

  MEMORY[0x1E12BE930](a2, 1, &v9);
  return a1;
}

void AUsubMAEC::myAecCore::~myAecCore(AUsubMAEC::myAecCore *this)
{
  v2 = *(this + 371);
  if (v2)
  {
    free(v2);
    *(this + 371) = 0;
  }

  v3 = *(this + 372);
  if (v3)
  {
    free(v3);
    *(this + 372) = 0;
  }

  v4 = *(this + 383);
  if (v4)
  {
    free(v4);
    *(this + 383) = 0;
  }

  v5 = *(this + 384);
  if (v5)
  {
    free(v5);
    *(this + 384) = 0;
  }

  v6 = *(this + 385);
  if (v6)
  {
    free(v6);
    *(this + 385) = 0;
  }

  v7 = *(this + 386);
  if (v7)
  {
    free(v7);
    *(this + 386) = 0;
  }

  v8 = *(this + 387);
  if (v8)
  {
    free(v8);
    *(this + 387) = 0;
  }

  v9 = *(this + 390);
  if (v9)
  {
    free(v9);
    *(this + 390) = 0;
  }

  AUsubMAEC::Kalman::removeKalman((this + 1936), 0);
  AUsubMAEC::Kalman::removeKalman((this + 2216), 1);
  if (*(this + 2) == 1)
  {
    v10 = *(this + 388);
    if (v10)
    {
      free(v10);
      *(this + 388) = 0;
    }

    v11 = *(this + 389);
    if (v11)
    {
      free(v11);
      *(this + 389) = 0;
    }
  }

  v12 = *(this + 379);
  if (v12)
  {
    free(v12);
    *(this + 379) = 0;
  }

  v13 = *(this + 377);
  if (v13)
  {
    free(v13);
    *(this + 377) = 0;
  }

  v14 = *(this + 378);
  if (v14)
  {
    free(v14);
    *(this + 378) = 0;
  }

  AUsubMAEC::dualEC::~dualEC((this + 2712));
  AUsubMAEC::dualEC::~dualEC((this + 2496));
  AUsubMAEC::learnRate::~learnRate((this + 1720));
  AUsubMAEC::learnRate::~learnRate((this + 1504));
  AUsubMAEC::learnRate::~learnRate((this + 1288));
  AUsubMAEC::learnRate::~learnRate((this + 1072));
  AUsubMAEC::learnRate::~learnRate((this + 856));
  AUsubMAEC::myAecBuffers::~myAecBuffers((this + 768));
  AUsubMAEC::myAecBuffers::~myAecBuffers((this + 680));
  AUsubMAEC::myAecBuffers::~myAecBuffers((this + 592));
  AUsubMAEC::myAecBuffers::~myAecBuffers((this + 504));
  AUsubMAEC::myAecBuffers::~myAecBuffers((this + 416));
  AUsubMAEC::myFilter::~myFilter(this + 43);
  AUsubMAEC::myFilter::~myFilter(this + 34);
  AUsubMAEC::myFilter::~myFilter(this + 25);
  freeMatrix(*(this + 41), this + 14);
  freeMatrix(*(this + 41), this + 15);
  freeMatrix(*(this + 41), this + 17);
  v15 = *(this + 16);
  if (v15)
  {
    free(v15);
    *(this + 16) = 0;
  }

  v16 = *(this + 24);
  if (v16)
  {
    free(v16);
    *(this + 24) = 0;
  }

  v17 = *(this + 18);
  if (v17)
  {
    free(v17);
    *(this + 18) = 0;
  }

  v18 = *(this + 19);
  if (v18)
  {
    free(v18);
    *(this + 19) = 0;
  }

  MultiRadixFFT_Dispose(*(this + 1));
  v19 = *(this + 10);
  if (v19)
  {
    free(v19);
    *(this + 10) = 0;
  }

  v20 = *(this + 11);
  if (v20)
  {
    free(v20);
    *(this + 11) = 0;
  }

  v21 = *(this + 12);
  if (v21)
  {
    free(v21);
    *(this + 12) = 0;
  }
}