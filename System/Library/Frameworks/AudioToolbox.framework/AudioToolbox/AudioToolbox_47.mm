uint64_t AUSM::RoomCongruence::ProcessingResult::operator=(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<IR::IRDataAttributes,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<IR::IRDataAttributes,false> const&>(a1, a2);
  v4 = *(a1 + 160);
  v5 = *(a2 + 160);
  *(a1 + 160) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a1 + 168);
  v7 = *(a2 + 168);
  *(a1 + 168) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 176) = *(a2 + 176);
  return a1;
}

_BYTE *std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult>(_BYTE *this, CFTypeRef *a2)
{
  v3 = this;
  *this = 0;
  this[152] = 0;
  if (*(a2 + 152) == 1)
  {
    this = IR::IRDataAttributes::IRDataAttributes(this, a2);
    v3[152] = 1;
  }

  v4 = a2[20];
  if (v4)
  {
    this = CFRetain(a2[20]);
  }

  *(v3 + 20) = v4;
  v5 = a2[21];
  if (v5)
  {
    this = CFRetain(a2[21]);
  }

  *(v3 + 21) = v5;
  v3[176] = *(a2 + 176);
  v3[184] = 1;
  return this;
}

void std::__optional_storage_base<IR::IRDataAttributes,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<IR::IRDataAttributes,false> const&>(IR::IRDataAttributes *a1, unsigned __int8 *a2)
{
  if (*(a1 + 152) == a2[152])
  {
    if (*(a1 + 152))
    {

      IR::IRDataAttributes::operator=(a1, a2);
    }
  }

  else if (*(a1 + 152))
  {
    IR::IRDataAttributes::~IRDataAttributes(a1);
    *(v2 + 152) = 0;
  }

  else
  {
    *(IR::IRDataAttributes::IRDataAttributes(a1, a2) + 152) = 1;
  }
}

void AUSM::RoomCongruence::Processor::process(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = a2;
  v242[3] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 158) & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v22 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "process";
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "[%s|%s] Room Congruence is turned off. Returning a valid result with an indicator of the feature being turned off.", buf, 0x16u);
    }

    buf[0] = 0;
    v223 = 0;
    v225 = 0;
    v224 = 0;
    v226 = 0;
    *a1 = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 1;
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(buf);
    return;
  }

  v6 = AUSM::RoomCongruence::TuningParameters::operator==(a2 + 272, a2 + 128);
  *a1 = 0;
  *(a1 + 184) = 0;
  if (v6 && *(v3 + 496) == 1)
  {
    std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult const&>(a1, (v3 + 312));
  }

  v7 = *a3;
  if (!*a3)
  {
    cf = 0;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - underlying CF object is nil.";
    goto LABEL_58;
  }

  CFRetain(*a3);
  cf = v7;
  if (!applesauce::CF::details::has_key<__CFString const* const&>(v7, @"CenterFreqs"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing center frequencies.";
    goto LABEL_58;
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(v7, @"RT60"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing RT60 targets.";
    goto LABEL_58;
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(v7, @"RoomSurface"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing room surface area.";
    goto LABEL_58;
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(v7, @"RoomVolume"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing room volume.";
    goto LABEL_58;
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(v7, @"EarlyRoomEnergy"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing early reflections energy.";
    goto LABEL_58;
  }

  v8 = applesauce::CF::DictionaryRef::operator->(&cf);
  if (!applesauce::CF::details::has_key<__CFString const* const&>(*v8, @"LateRoomEnergy"))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v24 = "[Room Congruence] %s: Room configuration invalid - missing late reverb energy.";
LABEL_58:
    _os_log_error_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
LABEL_59:
    v25 = 0;
    goto LABEL_60;
  }

  v9 = applesauce::CF::DictionaryRef::operator->(&cf);
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(buf, *v9, @"CenterFreqs");
  if ((buf[8] & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v74 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_203;
    }

    *v230 = 136315138;
    *&v230[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v75 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the center frequencies value in the dictionary.";
    goto LABEL_202;
  }

  v10 = applesauce::CF::ArrayRef::operator->(buf);
  size = applesauce::CF::ArrayRef_proxy::get_size(*v10);
  if (!size)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v74 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_203;
    }

    *v230 = 136315138;
    *&v230[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v75 = "[Room Congruence] %s: Room configuration invalid - the center frequency array is empty.";
    goto LABEL_202;
  }

  v12 = size;
  applesauce::CF::ArrayRef::ArrayRef(&v213, *buf);
  isArray = AUSM::RoomCongruence::isArrayOf<float>(v213);
  applesauce::CF::ArrayRef::~ArrayRef(&v213);
  if (isArray)
  {
    v14 = applesauce::CF::DictionaryRef::operator->(&cf);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v230, *v14, @"RT60");
    if ((v230[8] & 1) == 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      LODWORD(v228[0]) = 136315138;
      *(v228 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v21 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the RT60 value in the dictionary.";
      goto LABEL_227;
    }

    v15 = applesauce::CF::ArrayRef::operator->(v230);
    v16 = applesauce::CF::ArrayRef_proxy::get_size(*v15);
    if (!v16)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      LODWORD(v228[0]) = 136315138;
      *(v228 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v21 = "[Room Congruence] %s: Room configuration invalid - the RT60 array is empty.";
      goto LABEL_227;
    }

    v17 = v16;
    applesauce::CF::ArrayRef::ArrayRef(&v212, *v230);
    v18 = AUSM::RoomCongruence::isArrayOf<float>(v212);
    applesauce::CF::ArrayRef::~ArrayRef(&v212);
    if ((v18 & 1) == 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      LODWORD(v228[0]) = 136315138;
      *(v228 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v21 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the RT60 values in the array - must be float.";
      goto LABEL_227;
    }

    v19 = applesauce::CF::DictionaryRef::operator->(&cf);
    if (!(applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v19, @"RoomVolume") >> 32))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      LODWORD(v228[0]) = 136315138;
      *(v228 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v21 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the room volume value in the dictionary.";
LABEL_227:
      _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, v21, v228, 0xCu);
LABEL_232:
      v25 = 0;
LABEL_233:
      std::optional<applesauce::CF::ArrayRef>::~optional(v230);
      goto LABEL_204;
    }

    v86 = applesauce::CF::DictionaryRef::operator->(&cf);
    if (!(applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v86, @"RoomSurface") >> 32))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_232;
      }

      LODWORD(v228[0]) = 136315138;
      *(v228 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v21 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the room surface area value in the dictionary.";
      goto LABEL_227;
    }

    v87 = applesauce::CF::DictionaryRef::operator->(&cf);
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v228, *v87, @"EarlyRoomEnergy");
    if (BYTE8(v228[0]))
    {
      v88 = applesauce::CF::ArrayRef::operator->(v228);
      v89 = applesauce::CF::ArrayRef_proxy::get_size(*v88);
      if (v89)
      {
        v90 = v89;
        applesauce::CF::ArrayRef::ArrayRef(&v211, *&v228[0]);
        v91 = AUSM::RoomCongruence::isArrayOf<float>(v211);
        applesauce::CF::ArrayRef::~ArrayRef(&v211);
        if (v91)
        {
          v92 = applesauce::CF::DictionaryRef::operator->(&cf);
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v236, *v92, @"LateRoomEnergy");
          if (BYTE8(v236))
          {
            v93 = applesauce::CF::ArrayRef::operator->(&v236);
            v188 = applesauce::CF::ArrayRef_proxy::get_size(*v93);
            if (v188)
            {
              applesauce::CF::ArrayRef::ArrayRef(&v210, v236);
              v94 = AUSM::RoomCongruence::isArrayOf<float>(v210);
              applesauce::CF::ArrayRef::~ArrayRef(&v210);
              if (v94)
              {
                if (v12 == v17 && v17 == v90 && v90 == v188)
                {
                  v25 = 1;
LABEL_464:
                  std::optional<applesauce::CF::ArrayRef>::~optional(&v236);
                  goto LABEL_423;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v171 = getAUSMV2Log(void)::gLog;
                if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                {
LABEL_463:
                  v25 = 0;
                  goto LABEL_464;
                }

                LODWORD(v242[0]) = 136315138;
                *(v242 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
                v172 = "[Room Congruence] %s: Room configuration invalid - center frequencies, rt60, early reflections energy and late reverb energy arrays should have the same number of elements.";
              }

              else
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v171 = getAUSMV2Log(void)::gLog;
                if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_463;
                }

                LODWORD(v242[0]) = 136315138;
                *(v242 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
                v172 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the late reverb energy values in the array - must be float.";
              }
            }

            else
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v171 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_463;
              }

              LODWORD(v242[0]) = 136315138;
              *(v242 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
              v172 = "[Room Congruence] %s: Room configuration invalid - the late reverb energy array is empty.";
            }
          }

          else
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v171 = getAUSMV2Log(void)::gLog;
            if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_463;
            }

            LODWORD(v242[0]) = 136315138;
            *(v242 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
            v172 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the late reverb energy value in the dictionary.";
          }

          _os_log_error_impl(&dword_1DDB85000, v171, OS_LOG_TYPE_ERROR, v172, v242, 0xCu);
          goto LABEL_463;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v136 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
LABEL_422:
          v25 = 0;
LABEL_423:
          std::optional<applesauce::CF::ArrayRef>::~optional(v228);
          goto LABEL_233;
        }

        LODWORD(v236) = 136315138;
        *(&v236 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
        v137 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the early reflections energy values in the array - must be float.";
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v136 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_422;
        }

        LODWORD(v236) = 136315138;
        *(&v236 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
        v137 = "[Room Congruence] %s: Room configuration invalid - the early reflection energy array is empty.";
      }
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v136 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_422;
      }

      LODWORD(v236) = 136315138;
      *(&v236 + 4) = "isRoomConfigurationDictionaryStructurallyValid";
      v137 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the early reflections energy value in the dictionary.";
    }

    _os_log_error_impl(&dword_1DDB85000, v136, OS_LOG_TYPE_ERROR, v137, &v236, 0xCu);
    goto LABEL_422;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v74 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *v230 = 136315138;
    *&v230[4] = "isRoomConfigurationDictionaryStructurallyValid";
    v75 = "[Room Congruence] %s: Room configuration invalid - mismatch between queried and actual type of the center frequency values in the array - must be float.";
LABEL_202:
    _os_log_error_impl(&dword_1DDB85000, v74, OS_LOG_TYPE_ERROR, v75, v230, 0xCu);
  }

LABEL_203:
  v25 = 0;
LABEL_204:
  std::optional<applesauce::CF::ArrayRef>::~optional(buf);
LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v25 & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v35 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *&v36 = COERCE_DOUBLE("empty optional");
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "process";
      if (v6)
      {
        *&v36 = COERCE_DOUBLE("cached data from last valid room");
      }

      v215 = 2080;
      __src = v36;
      _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] Room configuration dictionary structurally invalid. Returning %s.", buf, 0x20u);
    }

    return;
  }

  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v208, *a3, @"CenterFreqs");
  if (!*a3)
  {
    v178 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v178, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v207, *a3, @"RT60");
  if (!*a3)
  {
    v179 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v179, "Could not construct");
  }

  v26 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(*a3, @"RoomVolume");
  if (!*a3)
  {
    v180 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v180, "Could not construct");
  }

  v27 = v26;
  v28 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(*a3, @"RoomSurface");
  if (!*a3)
  {
    v181 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v181, "Could not construct");
  }

  v29 = v28;
  applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v206, *a3, @"EarlyRoomEnergy");
  if (!*a3)
  {
    v182 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v182, "Could not construct");
  }

  applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v205, *a3, @"LateRoomEnergy");
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  memset(&v241, 0, sizeof(v241));
  v30 = v208;
  if (v208)
  {
    CFRetain(v208);
  }

  *buf = v30;
  if (AUSM::RoomCongruence::isArrayOf<float>(v30))
  {
    v31 = v207;
    if (v207)
    {
      CFRetain(v207);
    }

    *v230 = v31;
    if (AUSM::RoomCongruence::isArrayOf<float>(v31))
    {
      v32 = v206;
      if (v206)
      {
        CFRetain(v206);
      }

      *&v228[0] = v32;
      if (AUSM::RoomCongruence::isArrayOf<float>(v32))
      {
        v33 = v205;
        if (v205)
        {
          CFRetain(v205);
        }

        v242[0] = v33;
        v34 = AUSM::RoomCongruence::isArrayOf<float>(v33) ^ 1;
        if (v33)
        {
          CFRelease(v33);
        }
      }

      else
      {
        v34 = 1;
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    else
    {
      v34 = 1;
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  else
  {
    v34 = 1;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if ((v34 & 1) == 0)
  {
    if (!v208)
    {
      v183 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v183, "Could not construct");
    }

    Count = CFArrayGetCount(v208);
    if (!v207)
    {
      v184 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v184, "Could not construct");
    }

    v38 = CFArrayGetCount(v207);
    if (!v206)
    {
      v185 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v185, "Could not construct");
    }

    v39 = CFArrayGetCount(v206);
    if (!v205)
    {
      v186 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v186, "Could not construct");
    }

    v40 = CFArrayGetCount(v205);
    if (Count == v38 && v38 == v39 && v39 == v40)
    {
      std::vector<unsigned int>::reserve(&v236, Count);
      std::vector<unsigned int>::reserve((&v237 + 8), Count);
      std::vector<unsigned int>::reserve((&v239 + 8), Count);
      std::vector<unsigned int>::reserve(&v241, Count);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          if (!v208)
          {
            v173 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v173, "Could not construct");
          }

          LODWORD(v213) = applesauce::CF::details::at_to<float>(v208, i);
          std::vector<float>::push_back[abi:ne200100](&v236, &v213);
          if (!v207)
          {
            v174 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v174, "Could not construct");
          }

          LODWORD(v213) = applesauce::CF::details::at_to<float>(v207, i);
          std::vector<float>::push_back[abi:ne200100](&v237 + 1, &v213);
          if (!v206)
          {
            v175 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v175, "Could not construct");
          }

          LODWORD(v213) = applesauce::CF::details::at_to<float>(v206, i);
          std::vector<float>::push_back[abi:ne200100](&v239 + 1, &v213);
          if (!v205)
          {
            v176 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v176, "Could not construct");
          }

          LODWORD(v213) = applesauce::CF::details::at_to<float>(v205, i);
          std::vector<float>::push_back[abi:ne200100](&v241.__begin_, &v213);
        }
      }

      *&v239 = __PAIR64__(LODWORD(v29), LODWORD(v27));
    }
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (v206)
  {
    CFRelease(v206);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v208)
  {
    CFRelease(v208);
  }

  v42 = *(&v236 + 1) - v236;
  if (*(&v236 + 1) == v236 || *&v239 <= 0.0 || *(&v239 + 1) <= 0.0 || v42 != v238 - *(&v237 + 1) || v42 != v240 - *(&v239 + 1) || v42 != v241.__end_ - v241.__begin_)
  {
LABEL_176:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v72 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *&v73 = COERCE_DOUBLE("empty optional");
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "process";
      if (v6)
      {
        *&v73 = COERCE_DOUBLE("cached data from last valid room");
      }

      v215 = 2080;
      __src = v73;
      _os_log_error_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "[%s|%s] Room configuration logically invalid. Returning %s.", buf, 0x20u);
    }

    goto LABEL_179;
  }

  v43 = 0;
  v44 = v42 >> 2;
  if (v44 <= 1)
  {
    v44 = 1;
  }

  do
  {
    v45 = *(v236 + 4 * v43);
    v47 = (v45 < 0.0 || ((LODWORD(v45) & 0x7FFFFFFFu) - 0x800000) >> 24 > 0x7E) && (LODWORD(v45) - 1) > 0x7FFFFE;
    if (v47 || v45 >= 24000.0)
    {
      goto LABEL_176;
    }

    v48 = *(*(&v237 + 1) + 4 * v43);
    v49 = v48 & 0x7FFFFFFF;
    v50 = (v48 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v51 = v48 < 0;
    v52 = v48 < 0 && ((v48 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (!v51)
    {
      v50 = 0;
    }

    v53 = v49 <= 2139095040;
    v54 = v49 == 2139095040 || v50;
    if (!v53)
    {
      v54 = 1;
    }

    if ((v54 | v52))
    {
      goto LABEL_176;
    }

    v55 = *(*(&v239 + 1) + 4 * v43);
    v56 = v55 & 0x7FFFFFFF;
    v57 = (v55 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v58 = v55 < 0;
    v59 = v55 < 0 && ((v55 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (!v58)
    {
      v57 = 0;
    }

    v60 = v56 <= 2139095040;
    v61 = v56 == 2139095040 || v57;
    if (!v60)
    {
      v61 = 1;
    }

    if ((v61 | v59))
    {
      goto LABEL_176;
    }

    v62 = v241.__begin_[v43];
    v63 = v62 & 0x7FFFFFFF;
    v64 = (v62 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v65 = v62 < 0;
    v66 = v62 < 0 && ((v62 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (!v65)
    {
      v64 = 0;
    }

    v67 = v63 <= 2139095040;
    v68 = v63 == 2139095040 || v64;
    if (!v67)
    {
      v68 = 1;
    }

    if ((v68 | v66))
    {
      goto LABEL_176;
    }

    ++v43;
  }

  while (v44 != v43);
  v69 = (v236 + 4);
  while (v69 != *(&v236 + 1))
  {
    v71 = *(v69 - 1);
    v70 = *v69++;
    if (v70 < v71)
    {
      goto LABEL_176;
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v3 + 24);
  AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(v196, &v236);
  v76 = *(v3 + 144);
  v194[0] = *(v3 + 128);
  v194[1] = v76;
  v195 = *(v3 + 160);
  v78 = *(v3 + 168);
  v77 = *(v3 + 176);
  v79 = v196[0];
  if (v77 - v78 != v196[1] - v196[0])
  {
    goto LABEL_255;
  }

  while (v78 != v77)
  {
    if (*v78 != *v79)
    {
      goto LABEL_255;
    }

    ++v78;
    ++v79;
  }

  v81 = *(v3 + 192);
  v80 = *(v3 + 200);
  v82 = v197;
  if (v80 - v81 != v198 - v197)
  {
    goto LABEL_255;
  }

  while (v81 != v80)
  {
    if (*v81 != *v82)
    {
      goto LABEL_255;
    }

    ++v81;
    ++v82;
  }

  if (*(v3 + 216) != v199)
  {
    goto LABEL_255;
  }

  if (*(v3 + 220) != v200)
  {
    goto LABEL_255;
  }

  v84 = *(v3 + 224);
  v83 = *(v3 + 232);
  v85 = v201;
  if (v83 - v84 != v202 - v201)
  {
    goto LABEL_255;
  }

  while (v84 != v83)
  {
    if (*v84 != *v85)
    {
      goto LABEL_255;
    }

    ++v84;
    ++v85;
  }

  v96 = *(v3 + 248);
  v95 = *(v3 + 256);
  v97 = v203;
  if (v95 - v96 != v204 - v203)
  {
    goto LABEL_255;
  }

  if (v96 == v95)
  {
    goto LABEL_253;
  }

  v98 = v96 + 4;
  do
  {
    v99 = *(v98 - 4);
    v100 = *v97++;
    v101 = v100;
    v102 = v99 != v100 || v98 == v95;
    v98 += 4;
  }

  while (!v102);
  if (v99 == v101)
  {
LABEL_253:
    v103 = AUSM::RoomCongruence::TuningParameters::operator==(v3 + 272, v194);
    AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(v196);
    if (v103)
    {
      goto LABEL_381;
    }
  }

  else
  {
LABEL_255:
    AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(v196);
  }

  v230[0] = 0;
  v235 = 0;
  v104 = AUSM::RoomCongruence::Processor::computeAverageRT60(v3, &v237 + 1, v236, *(&v236 + 1));
  v105 = *&v104;
  if (!HIDWORD(v104))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v106 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v107 = v3;
      if (*(v3 + 23) < 0)
      {
        v107 = *v3;
      }

      *buf = 136315394;
      *&buf[4] = v107;
      *&buf[12] = 2080;
      *&buf[14] = "tuneTarget";
      _os_log_error_impl(&dword_1DDB85000, v106, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to compute the average RT60 for the target data. Returning empty optional.", buf, 0x16u);
    }

    goto LABEL_326;
  }

  *buf = 0;
  std::vector<float>::vector[abi:ne200100](v228, (v240 - *(&v239 + 1)) >> 2);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v108 = v105;
  v109 = getAUSMV2Log(void)::gLog;
  v110 = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT);
  if (v110)
  {
    v111 = v3;
    if (*(v3 + 23) < 0)
    {
      v111 = *v3;
    }

    *buf = 136315906;
    *&buf[4] = v111;
    *&buf[12] = 2080;
    *&buf[14] = "tuneTarget";
    v215 = 2048;
    *&__src = v108;
    LOWORD(v217[0]) = 2048;
    *(v217 + 2) = *&v239;
    _os_log_impl(&dword_1DDB85000, v109, OS_LOG_TYPE_DEFAULT, "[%s|%s] From PHASE input: mid-band RT60 = %.3f s, room volume = %.1f m3", buf, 0x2Au);
  }

  v112 = *(v3 + 157);
  v113 = *(v3 + 160);
  if ((*(v3 + 156) & 1) == 0)
  {
    v117 = 0;
    v119 = v239;
    v126 = 0.0;
    v127 = v108;
    v121 = *&v239;
    goto LABEL_284;
  }

  v114 = *(v3 + 128);
  v115 = *(v3 + 132);
  v116 = *(v3 + 144);
  v189 = *(v3 + 148);
  v117 = *(v3 + 152);
  v118 = *(v3 + 140);
  v119 = v239;
  if (v118 >= *&v239)
  {
    v120 = *&v239;
  }

  else
  {
    v120 = *(v3 + 140);
  }

  if (*&v239 >= *(v3 + 136))
  {
    v121 = v120;
  }

  else
  {
    v121 = *(v3 + 136);
  }

  v122 = AUSM::RoomCongruence::computeIdealRt60(v110, v121, v114, v115);
  if (!HIDWORD(v122))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v123 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_324;
    }

    v124 = v3;
    if (*(v3 + 23) < 0)
    {
      v124 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v124;
    *&buf[12] = 2080;
    *&buf[14] = "tuneTarget";
    v125 = "[%s|%s] Failed to compute the ideal RT60 for the given data. Returning empty optional.";
    goto LABEL_406;
  }

  v128 = *&v122;
  v187 = v116;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v129 = v128;
  v130 = getAUSMV2Log(void)::gLog;
  v131 = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT);
  if (v131)
  {
    v132 = v3;
    if (*(v3 + 23) < 0)
    {
      v132 = *v3;
    }

    *buf = 136315650;
    *&buf[4] = v132;
    *&buf[12] = 2080;
    *&buf[14] = "tuneTarget";
    v215 = 2048;
    *&__src = v129;
    _os_log_impl(&dword_1DDB85000, v130, OS_LOG_TYPE_DEFAULT, "[%s|%s] The computed ideal RT60: %f", buf, 0x20u);
  }

  if (v108 <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v134 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_323;
    }

    *buf = 136315138;
    *&buf[4] = "warpRT60";
    v135 = "[Room Congruence] %s: The input RT60 to be warped must be greater than 0. Returning empty optional.";
    goto LABEL_321;
  }

  v133 = v189 * v129;
  if ((v189 * v129) <= v129)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v134 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_323;
    }

    *buf = 136315138;
    *&buf[4] = "warpRT60";
    v135 = "[Room Congruence] %s: The low cut input RT60 for warping must be lower than the high cut RT60. Returning empty optional.";
    goto LABEL_321;
  }

  if (v129 <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v134 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_323;
    }

    *buf = 136315138;
    *&buf[4] = "warpRT60";
    v135 = "[Room Congruence] %s: Both low and high cut input RT60 for warping must be greater than 0. Returning empty optional.";
    goto LABEL_321;
  }

  if ((v187 * v129) <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v134 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_323;
    }

    *buf = 136315138;
    *&buf[4] = "warpRT60";
    v135 = "[Room Congruence] %s: Both low and high cut output RT60 for warping must be greater than 0. Returning empty optional.";
LABEL_321:
    _os_log_error_impl(&dword_1DDB85000, v134, OS_LOG_TYPE_ERROR, v135, buf, 0xCu);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

LABEL_323:
    v123 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_324;
    }

    v164 = v3;
    if (*(v3 + 23) < 0)
    {
      v164 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v164;
    *&buf[12] = 2080;
    *&buf[14] = "tuneTarget";
    v125 = "[%s|%s] Failed to compute the warping result for the given tuning and input RT60 data. Returning empty optional.";
    goto LABEL_406;
  }

  if (v129 <= v108)
  {
    if (v133 >= v108)
    {
      v129 = v129 + ((((v187 * v129) - v129) / (v133 - v129)) * (v108 - v129));
    }

    else
    {
      v129 = v187 * v129;
    }
  }

  v167 = AUSM::RoomCongruence::computeIdealRt60(v131, v118, v114, v115);
  if (!HIDWORD(v167))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v123 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_324;
    }

    v168 = v3;
    if (*(v3 + 23) < 0)
    {
      v168 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v168;
    *&buf[12] = 2080;
    *&buf[14] = "tuneTarget";
    v125 = "[%s|%s] Failed to compute upper RT60 limit.";
LABEL_406:
    _os_log_error_impl(&dword_1DDB85000, v123, OS_LOG_TYPE_ERROR, v125, buf, 0x16u);
    goto LABEL_324;
  }

  v127 = *&v167;
  if (v129 <= *&v167)
  {
    v126 = v108;
    v127 = v129;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v169 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v170 = v3;
      if (*(v3 + 23) < 0)
      {
        v170 = *v3;
      }

      *buf = 136315650;
      *&buf[4] = v170;
      *&buf[12] = 2080;
      *&buf[14] = "tuneTarget";
      v215 = 2048;
      *&__src = v127;
      _os_log_impl(&dword_1DDB85000, v169, OS_LOG_TYPE_DEFAULT, "[%s|%s] Clipping RT60 to max value: %f", buf, 0x20u);
    }

    v126 = v108;
  }

LABEL_284:
  AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(buf, &v236);
  *v222 = v126;
  *&v222[4] = v127;
  *&v222[8] = v119;
  *&v222[12] = v121;
  *&v222[16] = v117;
  v222[20] = v112;
  v222[21] = 1;
  *&v222[24] = v113;
  if (v235 == 1)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v230, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v231, __src, v217[0], (v217[0] - __src) >> 2);
    v231[3] = v217[2];
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v232, v218, v219, (v219 - v218) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v233, v220, v221, (v221 - v220) >> 2);
    v234[0] = *v222;
    *(v234 + 12) = *&v222[12];
  }

  else
  {
    AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(v230, buf);
    v234[0] = *v222;
    *(v234 + 12) = *&v222[12];
    v235 = 1;
  }

  AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(buf);
LABEL_324:
  if (*&v228[0])
  {
    *(&v228[0] + 1) = *&v228[0];
    operator delete(*&v228[0]);
  }

LABEL_326:
  if ((v235 & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v141 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v142 = v3;
      if (*(v3 + 23) < 0)
      {
        v142 = *v3;
      }

      *&v143 = COERCE_DOUBLE("empty optional");
      *buf = 136315650;
      *&buf[4] = v142;
      *&buf[12] = 2080;
      *&buf[14] = "process";
      if (v6)
      {
        *&v143 = COERCE_DOUBLE("cached data from last valid room");
      }

      v215 = 2080;
      __src = v143;
      _os_log_error_impl(&dword_1DDB85000, v141, OS_LOG_TYPE_ERROR, "[%s|%s] TuneTarget failed. Returning %s.", buf, 0x20u);
    }

    goto LABEL_379;
  }

  AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(v228, v230);
  *v229 = v234[0];
  *&v229[12] = *(v234 + 12);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v138 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v139 = v3;
    if (*(v3 + 23) < 0)
    {
      v139 = *v3;
    }

    *buf = 136315906;
    *&buf[4] = v139;
    *&buf[12] = 2080;
    *&buf[14] = "process";
    v215 = 2048;
    *&__src = *&v229[4];
    LOWORD(v217[0]) = 2048;
    *(v217 + 2) = *&v229[12];
    _os_log_impl(&dword_1DDB85000, v138, OS_LOG_TYPE_DEFAULT, "[%s|%s] The new target mid-band RT60: %f. The new target room volume: %f", buf, 0x2Au);
  }

  if ((*&v229[24] - 1) >= 3)
  {
    PresetWithClosestRoomVolume = AUSM::RoomCongruence::Processor::findPresetWithClosestRoomVolume(v3, *&v229[12]);
    if (!HIDWORD(PresetWithClosestRoomVolume))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v145 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_378;
      }

      v146 = v3;
      if (*(v3 + 23) < 0)
      {
        v146 = *v3;
      }

      *&v147 = COERCE_DOUBLE("empty optional");
      *buf = 136315650;
      *&buf[4] = v146;
      *&buf[12] = 2080;
      *&buf[14] = "process";
      if (v6)
      {
        *&v147 = COERCE_DOUBLE("cached data from last valid room");
      }

      v215 = 2080;
      __src = v147;
      v148 = "[%s|%s] Couldn't find a matching preset. Returning %s.";
LABEL_393:
      v160 = v145;
      v161 = 32;
LABEL_394:
      _os_log_error_impl(&dword_1DDB85000, v160, OS_LOG_TYPE_ERROR, v148, buf, v161);
      goto LABEL_378;
    }

    v140 = PresetWithClosestRoomVolume;
  }

  else
  {
    v140 = *&v229[24] + 51;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v149 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v150 = v3;
    if (*(v3 + 23) < 0)
    {
      v150 = *v3;
    }

    *buf = 136315650;
    *&buf[4] = v150;
    *&buf[12] = 2080;
    *&buf[14] = "process";
    v215 = 1024;
    LODWORD(__src) = v140;
    _os_log_impl(&dword_1DDB85000, v149, OS_LOG_TYPE_DEFAULT, "[%s|%s] Using library room IR %d", buf, 0x1Cu);
  }

  v151 = *(v3 + 72);
  if (!v151)
  {
    goto LABEL_375;
  }

  v152 = vcnt_s8(v151);
  v152.i16[0] = vaddlv_u8(v152);
  if (v152.u32[0] > 1uLL)
  {
    v153 = v140;
    if (v151 <= v140)
    {
      v153 = v140 % v151;
    }
  }

  else
  {
    v153 = (v151 - 1) & v140;
  }

  v154 = *(*(v3 + 64) + 8 * v153);
  if (!v154 || (v155 = *v154) == 0)
  {
LABEL_375:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v145 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_378;
    }

    v158 = v3;
    if (*(v3 + 23) < 0)
    {
      v158 = *v3;
    }

    *&v159 = COERCE_DOUBLE("empty optional");
    *buf = 136315650;
    *&buf[4] = v158;
    *&buf[12] = 2080;
    *&buf[14] = "process";
    if (v6)
    {
      *&v159 = COERCE_DOUBLE("cached data from last valid room");
    }

    v215 = 2080;
    __src = v159;
    v148 = "[%s|%s] Couldn't find user data for the selected IR preset. Returning %s.";
    goto LABEL_393;
  }

  while (1)
  {
    v156 = v155[1];
    if (v156 == v140)
    {
      break;
    }

    if (v152.u32[0] > 1uLL)
    {
      if (v156 >= v151)
      {
        v156 %= v151;
      }
    }

    else
    {
      v156 &= v151 - 1;
    }

    if (v156 != v153)
    {
      goto LABEL_375;
    }

LABEL_374:
    v155 = *v155;
    if (!v155)
    {
      goto LABEL_375;
    }
  }

  if (*(v155 + 4) != v140)
  {
    goto LABEL_374;
  }

  if (!AUSM::RoomCongruence::UserData::isValid((v155 + 3)))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v145 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_378;
    }

    v162 = v3;
    if (*(v3 + 23) < 0)
    {
      v162 = *v3;
    }

    *&v163 = COERCE_DOUBLE("empty optional");
    *buf = 136315650;
    *&buf[4] = v162;
    *&buf[12] = 2080;
    *&buf[14] = "process";
    if (v6)
    {
      *&v163 = COERCE_DOUBLE("cached data from last valid room");
    }

    v215 = 2080;
    __src = v163;
    v148 = "[%s|%s] Logically invalid user data retrieved. Returning %s.";
    goto LABEL_393;
  }

  AUSM::RoomCongruence::Processor::computeTargetMatchingParams(buf, v3, v228, v140, (v155 + 3));
  std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AUSM::RoomCongruence::ProcessingResult,false>>(a1, buf);
  if (v227 == 1)
  {
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(buf);
  }

  if (*(a1 + 184))
  {
    AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(v193, &v236);
    v157 = *(v3 + 144);
    v191[0] = *(v3 + 128);
    v191[1] = v157;
    v192 = *(v3 + 160);
    if ((*(a1 + 184) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    AUSM::RoomCongruence::ProcessingResult::ProcessingResult(v190, a1);
    AUSM::RoomCongruence::Cache::Cache(buf, v193, v191, v190);
    AUSM::RoomCongruence::Cache::operator=(v3 + 168, buf);
    AUSM::RoomCongruence::Cache::~Cache(buf);
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(v190);
    AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(v193);
    goto LABEL_378;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v165 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v166 = v3;
    if (*(v3 + 23) < 0)
    {
      v166 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v166;
    *&buf[12] = 2080;
    *&buf[14] = "process";
    v148 = "[%s|%s] Failed to match the parameters. Returning empty optional.";
    v160 = v165;
    v161 = 22;
    goto LABEL_394;
  }

LABEL_378:
  AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(v228);
LABEL_379:
  if (v235 == 1)
  {
    AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(v230);
  }

LABEL_381:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v3 + 24);
LABEL_179:
  AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(&v236);
}

void sub_1DDEC0634(_Unwind_Exception *a1)
{
  applesauce::CF::ArrayRef::~ArrayRef(&STACK[0x220]);
  std::optional<applesauce::CF::ArrayRef>::~optional(&STACK[0x4B0]);
  std::optional<applesauce::CF::ArrayRef>::~optional(&STACK[0x390]);
  std::optional<applesauce::CF::ArrayRef>::~optional(&STACK[0x420]);
  std::optional<applesauce::CF::ArrayRef>::~optional(&STACK[0x240]);
  applesauce::CF::DictionaryRef::~DictionaryRef(&STACK[0x218]);
  if (*(v1 + 184) == 1)
  {
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(v1);
  }

  _Unwind_Resume(a1);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

uint64_t AUSM::RoomCongruence::Processor::findPresetWithClosestRoomVolume(AUSM::RoomCongruence::Processor *this, float a2)
{
  if (a2 >= 0.0)
  {
    v5 = *(this + 14);
    v6 = *(this + 13);
    if (v6 == v5)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v7 = v6 + 8;
      if (v6 + 8 != v5)
      {
        v8 = logf(a2);
        do
        {
          v9 = vabds_f32(logf(*(v7 + 4)), v8);
          if (v9 < vabds_f32(logf(*(v6 + 4)), v8))
          {
            v6 = v7;
          }

          v7 += 8;
        }

        while (v7 != v5);
      }

      v4 = *v6 & 0xFFFFFF00;
      v3 = *v6;
      v2 = 0x100000000;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  return v2 | v4 | v3;
}

void std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AUSM::RoomCongruence::ProcessingResult,false>>(AUSM::RoomCongruence::ProcessingResult *a1, uint64_t a2)
{
  if (*(a1 + 184) == *(a2 + 184))
  {
    if (*(a1 + 184))
    {

      AUSM::RoomCongruence::ProcessingResult::operator=(a1, a2);
    }
  }

  else if (*(a1 + 184))
  {
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(a1);
    *(v3 + 184) = 0;
  }

  else
  {

    std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult>(a1, a2);
  }
}

AUSM::RoomCongruence::ProcessingResult *AUSM::RoomCongruence::ProcessingResult::ProcessingResult(AUSM::RoomCongruence::ProcessingResult *this, CFTypeRef *a2)
{
  *this = 0;
  *(this + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    IR::IRDataAttributes::IRDataAttributes(this, a2);
    *(this + 152) = 1;
  }

  v4 = a2[20];
  if (v4)
  {
    CFRetain(a2[20]);
  }

  *(this + 20) = v4;
  v5 = a2[21];
  if (v5)
  {
    CFRetain(a2[21]);
  }

  *(this + 21) = v5;
  *(this + 176) = *(a2 + 176);
  return this;
}

uint64_t AUSM::RoomCongruence::Cache::Cache(uint64_t a1, const AUSM::RoomCongruence::RoomConfiguration *a2, __int128 *a3, uint64_t a4)
{
  v7 = AUSM::RoomCongruence::RoomConfiguration::RoomConfiguration(a1, a2);
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 8);
  *(v7 + 144) = 0;
  v11 = v7 + 144;
  *(v11 - 2) = v10;
  *(v11 - 24) = v9;
  *(v11 - 40) = v8;
  v11[152] = 0;
  if (*(a4 + 152) == 1)
  {
    IR::IRDataAttributes::IRDataAttributes(v11, a4);
    *(a1 + 296) = 1;
  }

  v12 = *(a4 + 160);
  if (v12)
  {
    CFRetain(*(a4 + 160));
  }

  *(a1 + 304) = v12;
  v13 = *(a4 + 168);
  if (v13)
  {
    CFRetain(*(a4 + 168));
  }

  *(a1 + 312) = v13;
  *(a1 + 320) = *(a4 + 176);
  *(a1 + 328) = 1;
  return a1;
}

uint64_t AUSM::RoomCongruence::Cache::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
    *(a1 + 48) = *(a2 + 48);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  }

  v4 = *(a2 + 104);
  v5 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v5;
  *(a1 + 104) = v4;
  if (*(a1 + 328) == *(a2 + 328))
  {
    if (*(a1 + 328))
    {
      AUSM::RoomCongruence::ProcessingResult::operator=(a1 + 144, a2 + 144);
    }
  }

  else
  {
    v6 = (a1 + 144);
    if (*(a1 + 328))
    {
      AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(v6);
      *(a1 + 328) = 0;
    }

    else
    {
      std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult const&>(v6, (a2 + 144));
    }
  }

  return a1;
}

void AUSM::RoomCongruence::Cache::~Cache(AUSM::RoomCongruence::Cache *this)
{
  if (*(this + 328) == 1)
  {
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult((this + 144));
  }

  AUSM::RoomCongruence::RoomConfiguration::~RoomConfiguration(this);
}

_BYTE *std::__optional_storage_base<AUSM::RoomCongruence::ProcessingResult,false>::__construct[abi:ne200100]<AUSM::RoomCongruence::ProcessingResult const&>(_BYTE *this, CFTypeRef *a2)
{
  v3 = this;
  *this = 0;
  this[152] = 0;
  if (*(a2 + 152) == 1)
  {
    this = IR::IRDataAttributes::IRDataAttributes(this, a2);
    v3[152] = 1;
  }

  v4 = a2[20];
  if (v4)
  {
    this = CFRetain(a2[20]);
  }

  *(v3 + 20) = v4;
  v5 = a2[21];
  if (v5)
  {
    this = CFRetain(a2[21]);
  }

  *(v3 + 21) = v5;
  v3[176] = *(a2 + 176);
  v3[184] = 1;
  return this;
}

void AUSM::RoomCongruence::Processor::setTuningParameters(float *a1, CFTypeRef *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  cf = v4;
  isTuningParametersDictionaryStructurallyValid = AUSM::RoomCongruence::isTuningParametersDictionaryStructurallyValid(&cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (isTuningParametersDictionaryStructurallyValid)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock((a1 + 6));
    v6 = *a2;
    if (v6)
    {
      CFRetain(v6);
      CFRetain(v6);
    }

    *buf = v6;
    v8 = AUSM::RoomCongruence::isTuningParametersDictionaryStructurallyValid(buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v8)
    {
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v9 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"k");
      v10 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"exp");
      v11 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"lowerVolumeLimit");
      v12 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"upperVolumeLimit");
      v13 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"alpha");
      v14 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"beta");
      v15 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v6, @"lowerReverbLevelLimit");
      v16 = applesauce::CF::details::find_at_key<BOOL,__CFString const* const&>(v6, @"isWarpingEnabled");
      v17 = applesauce::CF::details::find_at_key<BOOL,__CFString const* const&>(v6, @"useSpectralMatching");
      v18 = applesauce::CF::details::find_at_key<BOOL,__CFString const* const&>(v6, @"isRoomCongruenceEnabled");
      v19 = applesauce::CF::details::find_at_key<unsigned int,__CFString const* const&>(v6, @"libraryRoomIr");
    }

    else
    {
      v16 = 0;
      v19 = 0;
      v18 = 0;
      v10 = 0.0;
      v17 = 1;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v9 = 0.0;
    }

    a1[32] = v9;
    a1[33] = v10;
    a1[34] = v11;
    a1[35] = v12;
    a1[36] = v13;
    a1[37] = v14;
    a1[38] = v15;
    *(a1 + 156) = v16;
    *(a1 + 157) = v17;
    *(a1 + 158) = v18;
    *(a1 + 40) = v19;
    if (v6)
    {
      CFRelease(v6);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((a1 + 6));
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) < 0)
      {
        a1 = *a1;
      }

      *buf = 136315394;
      *&buf[4] = a1;
      v23 = 2080;
      v24 = "setTuningParameters";
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "[%s|%s] Tuning Parameters dictionary structurally invalid. Failed to set, returning.", buf, 0x16u);
    }
  }
}

void sub_1DDEC113C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v15);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v14 + 24);
  _Unwind_Resume(a1);
}

uint64_t AUSM::RoomCongruence::Processor::Processor(uint64_t a1, const void **a2)
{
  v150 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 36));
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  v125 = (a1 + 104);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 149) = 0;
  *(a1 + 157) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 293) = 0;
  *(a1 + 301) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 496) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  std::string::basic_string[abi:ne200100](__src, v4 + 26);
  if (__src[23] >= 0)
  {
    v5 = __src;
  }

  else
  {
    v5 = *__src;
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(&v5[v4], "|RoomCongruence::Processor");
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *__src;
  *(a1 + 16) = *&__src[16];
  *__src = 0x3500000034;
  *&__src[8] = 54;
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  if ((v7 - v8) < 9)
  {
    if (v8)
    {
      *(a1 + 48) = v8;
      operator delete(v8);
      v7 = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }

    v9 = v7 >> 1;
    if ((v7 >> 1) <= 3)
    {
      v9 = 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 62))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 48);
  v12 = v11 - v8;
  if ((v11 - v8) > 8)
  {
    *v8 = *__src;
    *(v8 + 2) = *&__src[8];
    v14 = (v8 + 12);
  }

  else
  {
    if (v11 != v8)
    {
      memcpy(v8, __src, v11 - v8);
      v11 = *(a1 + 48);
    }

    v13 = v11;
    do
    {
      *v13 = *&__src[v12];
      v13 = (v13 + 4);
      v12 += 4;
    }

    while (v12 != 12);
    v14 = v13;
  }

  *(a1 + 48) = v14;
  cf = 0;
  v15 = *(a1 + 40);
  if (v14 != v15)
  {
    v16 = 0;
    while (1)
    {
      IR::IRDataLoader::instance(v14);
      IR::IRDataLoader::getUserData();
      v17 = cf;
      v18 = *__src;
      cf = *__src;
      *__src = v17;
      if (v17)
      {
        CFRelease(v17);
      }

      if (!v18)
      {
        v131 = 0;
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v27 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v27;
          v30 = "[Room Congruence] %s: IRData User Data invalid - underlying CF object is nil.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      CFRetain(v18);
      v131 = v18;
      if (!applesauce::CF::details::has_key<__CFString const* const&>(v18, @"CenterFreqs"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v31 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v31;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing center frequencies.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v131)
      {
        goto LABEL_311;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(v131, @"RT60"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v32 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v32;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing RT60 targets.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v131)
      {
        goto LABEL_311;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(v131, @"RoomVolume"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v33 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v33;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing room volume.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v131)
      {
        goto LABEL_311;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(v131, @"EarlyRoomEnergy"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v34 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v34;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing early room energy.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v131)
      {
        goto LABEL_311;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(v131, @"LateRoomEnergy"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v35 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v35;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing late room energy.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v131)
      {
        goto LABEL_311;
      }

      if (!applesauce::CF::details::has_key<__CFString const* const&>(v131, @"TotalRoomEnergy"))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v36 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *__src = 136315138;
          *&__src[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = __src;
          v29 = v36;
          v30 = "[Room Congruence] %s: IRData User Data invalid - missing total room energy.";
          goto LABEL_93;
        }

LABEL_94:
        v38 = 0;
        goto LABEL_95;
      }

      if (!v131)
      {
LABEL_311:
        exception = __cxa_allocate_exception(0x10uLL);
        v122 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(__src, v131, @"CenterFreqs");
      if ((__src[8] & 1) == 0)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v37 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v28 = buf;
          v29 = v37;
          v30 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the center frequencies value in the dictionary.";
LABEL_93:
          _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, v30, v28, 0xCu);
        }

        goto LABEL_94;
      }

      v19 = *__src;
      if (!*__src)
      {
        v123 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v123, "Could not construct");
      }

      if (!CFArrayGetCount(*__src))
      {
        break;
      }

      CFRetain(v19);
      v137 = v19;
      isArray = AUSM::RoomCongruence::isArrayOf<float>(v19);
      CFRelease(v19);
      if (isArray)
      {
        if (!v131)
        {
          v124 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v124, "Could not construct");
        }

        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(buf, v131, @"RT60");
        if (buf[8])
        {
          v21 = applesauce::CF::ArrayRef::operator->(buf);
          if (applesauce::CF::ArrayRef_proxy::get_size(*v21))
          {
            applesauce::CF::ArrayRef::ArrayRef(&v136, *buf);
            v22 = AUSM::RoomCongruence::isArrayOf<float>(v136);
            applesauce::CF::ArrayRef::~ArrayRef(&v136);
            if (v22)
            {
              v23 = applesauce::CF::DictionaryRef::operator->(&v131);
              if (!(applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v23, @"RoomVolume") >> 32))
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v24 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *v148 = 136315138;
                  *&v148[4] = "isIrDataUserDataDictionaryStructurallyValid";
                  v25 = v24;
                  v26 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the room volume value in the dictionary.";
                  goto LABEL_217;
                }

LABEL_218:
                v38 = 0;
LABEL_219:
                if (buf[8] == 1 && *buf)
                {
                  CFRelease(*buf);
                }

                goto LABEL_203;
              }

              v79 = applesauce::CF::DictionaryRef::operator->(&v131);
              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v148, *v79, @"EarlyRoomEnergy");
              if (buf[8])
              {
                v80 = applesauce::CF::ArrayRef::operator->(buf);
                if (applesauce::CF::ArrayRef_proxy::get_size(*v80))
                {
                  applesauce::CF::ArrayRef::ArrayRef(&v135, *v148);
                  v81 = AUSM::RoomCongruence::isArrayOf<float>(v135);
                  applesauce::CF::ArrayRef::~ArrayRef(&v135);
                  if (v81)
                  {
                    v82 = applesauce::CF::DictionaryRef::operator->(&v131);
                    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v147, *v82, @"LateRoomEnergy");
                    if ((v147[8] & 1) == 0)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v93 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                      {
                        *v146 = 136315138;
                        *&v146[4] = "isIrDataUserDataDictionaryStructurallyValid";
                        _os_log_error_impl(&dword_1DDB85000, v93, OS_LOG_TYPE_ERROR, "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the late reverb energy value in the dictionary.", v146, 0xCu);
                      }

                      v38 = 0;
                      goto LABEL_277;
                    }

                    v83 = applesauce::CF::ArrayRef::operator->(v147);
                    if (applesauce::CF::ArrayRef_proxy::get_size(*v83))
                    {
                      applesauce::CF::ArrayRef::ArrayRef(&v134, *v147);
                      v84 = AUSM::RoomCongruence::isArrayOf<float>(v134);
                      applesauce::CF::ArrayRef::~ArrayRef(&v134);
                      if (v84)
                      {
                        v85 = applesauce::CF::DictionaryRef::operator->(&v131);
                        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v146, *v85, @"TotalRoomEnergy");
                        if (v146[8])
                        {
                          v86 = applesauce::CF::ArrayRef::operator->(v146);
                          if (applesauce::CF::ArrayRef_proxy::get_size(*v86))
                          {
                            applesauce::CF::ArrayRef::ArrayRef(&v133, *v146);
                            v87 = AUSM::RoomCongruence::isArrayOf<float>(v133);
                            applesauce::CF::ArrayRef::~ArrayRef(&v133);
                            if (v87)
                            {
                              v38 = 1;
                              goto LABEL_276;
                            }

                            if (getAUSMV2Log(void)::onceToken != -1)
                            {
                              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                            }

                            v102 = getAUSMV2Log(void)::gLog;
                            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                            {
                              *v145 = 136315138;
                              *&v145[4] = "isIrDataUserDataDictionaryStructurallyValid";
                              v99 = v102;
                              v100 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the total reverb energy values in the array - must be float.";
LABEL_274:
                              _os_log_error_impl(&dword_1DDB85000, v99, OS_LOG_TYPE_ERROR, v100, v145, 0xCu);
                            }
                          }

                          else
                          {
                            if (getAUSMV2Log(void)::onceToken != -1)
                            {
                              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                            }

                            v101 = getAUSMV2Log(void)::gLog;
                            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                            {
                              *v145 = 136315138;
                              *&v145[4] = "isIrDataUserDataDictionaryStructurallyValid";
                              v99 = v101;
                              v100 = "[Room Congruence] %s: IRData User Data invalid - the total reverb energy array is empty.";
                              goto LABEL_274;
                            }
                          }
                        }

                        else
                        {
                          if (getAUSMV2Log(void)::onceToken != -1)
                          {
                            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                          }

                          v98 = getAUSMV2Log(void)::gLog;
                          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                          {
                            *v145 = 136315138;
                            *&v145[4] = "isIrDataUserDataDictionaryStructurallyValid";
                            v99 = v98;
                            v100 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the total reverb energy value in the dictionary.";
                            goto LABEL_274;
                          }
                        }

                        v38 = 0;
LABEL_276:
                        std::optional<applesauce::CF::ArrayRef>::~optional(v146);
LABEL_277:
                        std::optional<applesauce::CF::ArrayRef>::~optional(v147);
LABEL_248:
                        std::optional<applesauce::CF::ArrayRef>::~optional(v148);
                        goto LABEL_219;
                      }

                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v97 = getAUSMV2Log(void)::gLog;
                      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                      {
LABEL_261:
                        v38 = 0;
                        goto LABEL_277;
                      }

                      *v146 = 136315138;
                      *&v146[4] = "isIrDataUserDataDictionaryStructurallyValid";
                      v95 = v97;
                      v96 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the late reverb energy values in the array - must be float.";
                    }

                    else
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v94 = getAUSMV2Log(void)::gLog;
                      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_261;
                      }

                      *v146 = 136315138;
                      *&v146[4] = "isIrDataUserDataDictionaryStructurallyValid";
                      v95 = v94;
                      v96 = "[Room Congruence] %s: IRData User Data invalid - the late reverb energy array is empty.";
                    }

                    _os_log_error_impl(&dword_1DDB85000, v95, OS_LOG_TYPE_ERROR, v96, v146, 0xCu);
                    goto LABEL_261;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v92 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                  {
                    *v147 = 136315138;
                    *&v147[4] = "isIrDataUserDataDictionaryStructurallyValid";
                    v89 = v92;
                    v90 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the early reflections energy values in the array - must be float.";
LABEL_246:
                    _os_log_error_impl(&dword_1DDB85000, v89, OS_LOG_TYPE_ERROR, v90, v147, 0xCu);
                  }
                }

                else
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v91 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                  {
                    *v147 = 136315138;
                    *&v147[4] = "isIrDataUserDataDictionaryStructurallyValid";
                    v89 = v91;
                    v90 = "[Room Congruence] %s: IRData User Data invalid - the early reflections energy array is empty.";
                    goto LABEL_246;
                  }
                }
              }

              else
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v88 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *v147 = 136315138;
                  *&v147[4] = "isIrDataUserDataDictionaryStructurallyValid";
                  v89 = v88;
                  v90 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the early reflections energy value in the dictionary.";
                  goto LABEL_246;
                }
              }

              v38 = 0;
              goto LABEL_248;
            }

            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v78 = getAUSMV2Log(void)::gLog;
            if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_218;
            }

            *v148 = 136315138;
            *&v148[4] = "isIrDataUserDataDictionaryStructurallyValid";
            v25 = v78;
            v26 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the RT60 values in the array - must be float.";
          }

          else
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v77 = getAUSMV2Log(void)::gLog;
            if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_218;
            }

            *v148 = 136315138;
            *&v148[4] = "isIrDataUserDataDictionaryStructurallyValid";
            v25 = v77;
            v26 = "[Room Congruence] %s: IRData User Data invalid - the RT60 array is empty.";
          }
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v76 = getAUSMV2Log(void)::gLog;
          if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_218;
          }

          *v148 = 136315138;
          *&v148[4] = "isIrDataUserDataDictionaryStructurallyValid";
          v25 = v76;
          v26 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the RT60 value in the dictionary.";
        }

LABEL_217:
        _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, v26, v148, 0xCu);
        goto LABEL_218;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v75 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "isIrDataUserDataDictionaryStructurallyValid";
        v73 = v75;
        v74 = "[Room Congruence] %s: IRData User Data invalid - mismatch between queried and actual type of the center frequency values in the array - must be float.";
LABEL_233:
        _os_log_error_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_ERROR, v74, buf, 0xCu);
      }

LABEL_202:
      v38 = 0;
LABEL_203:
      if (*__src)
      {
        CFRelease(*__src);
      }

LABEL_95:
      v14 = v131;
      if (v131)
      {
        CFRelease(v131);
      }

      if (v38)
      {
        if (!v18)
        {
          v115 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v115, "Could not construct");
        }

        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v130, v18, @"CenterFreqs");
        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v129, v18, @"RT60");
        v39 = applesauce::CF::details::find_at_key<float,__CFString const* const&>(v18, @"RoomVolume");
        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v128, v18, @"EarlyRoomEnergy");
        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v127, v18, @"LateRoomEnergy");
        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v18, @"TotalRoomEnergy");
        memset(__src, 0, sizeof(__src));
        v139 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        memset(&v144, 0, sizeof(v144));
        v40 = v130;
        if (v130)
        {
          CFRetain(v130);
        }

        *buf = v40;
        if (AUSM::RoomCongruence::isArrayOf<float>(v40))
        {
          v41 = v129;
          if (v129)
          {
            CFRetain(v129);
          }

          *v148 = v41;
          if (!AUSM::RoomCongruence::isArrayOf<float>(v41))
          {
            v45 = 1;
            goto LABEL_124;
          }

          v42 = v128;
          if (v128)
          {
            CFRetain(v128);
          }

          *v147 = v42;
          if (!AUSM::RoomCongruence::isArrayOf<float>(v42))
          {
            v45 = 1;
            goto LABEL_122;
          }

          v43 = v127;
          if (v127)
          {
            CFRetain(v127);
          }

          *v146 = v43;
          if (AUSM::RoomCongruence::isArrayOf<float>(v43))
          {
            v44 = v127;
            if (v127)
            {
              CFRetain(v127);
            }

            *v145 = v44;
            v45 = AUSM::RoomCongruence::isArrayOf<float>(v44) ^ 1;
            if (v44)
            {
              CFRelease(v44);
            }

            if (!v43)
            {
LABEL_122:
              if (v42)
              {
                CFRelease(v42);
              }

LABEL_124:
              if (v41)
              {
                CFRelease(v41);
              }

LABEL_126:
              if (v40)
              {
                CFRelease(v40);
              }

              if ((v45 & 1) == 0)
              {
                if (!v130)
                {
                  v119 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v119, "Could not construct");
                }

                Count = CFArrayGetCount(v130);
                if (!v129)
                {
                  v118 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v118, "Could not construct");
                }

                v47 = CFArrayGetCount(v129);
                if (!v128)
                {
                  v117 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v117, "Could not construct");
                }

                v48 = CFArrayGetCount(v128);
                if (!v127)
                {
                  v116 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v116, "Could not construct");
                }

                v49 = CFArrayGetCount(v127);
                if (!theArray)
                {
                  v120 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v120, "Could not construct");
                }

                v50 = CFArrayGetCount(theArray);
                if (Count == v47 && v47 == v48 && v48 == v49 && v49 == v50)
                {
                  std::vector<unsigned int>::reserve(__src, Count);
                  std::vector<unsigned int>::reserve(&__src[24], Count);
                  std::vector<unsigned int>::reserve(&v141, Count);
                  std::vector<unsigned int>::reserve((&v142 + 8), Count);
                  std::vector<unsigned int>::reserve(&v144, Count);
                  if (Count)
                  {
                    for (i = 0; i != Count; ++i)
                    {
                      if (!v130)
                      {
                        v112 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v112, "Could not construct");
                      }

                      LODWORD(v137) = applesauce::CF::details::at_to<float>(v130, i);
                      std::vector<float>::push_back[abi:ne200100](__src, &v137);
                      if (!v129)
                      {
                        v110 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v110, "Could not construct");
                      }

                      LODWORD(v137) = applesauce::CF::details::at_to<float>(v129, i);
                      std::vector<float>::push_back[abi:ne200100](&__src[24], &v137);
                      if (!v128)
                      {
                        v113 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v113, "Could not construct");
                      }

                      LODWORD(v137) = applesauce::CF::details::at_to<float>(v128, i);
                      std::vector<float>::push_back[abi:ne200100](&v141, &v137);
                      if (!v127)
                      {
                        v111 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v111, "Could not construct");
                      }

                      LODWORD(v137) = applesauce::CF::details::at_to<float>(v127, i);
                      std::vector<float>::push_back[abi:ne200100](&v142 + 1, &v137);
                      if (!theArray)
                      {
                        v114 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v114, "Could not construct");
                      }

                      LODWORD(v137) = applesauce::CF::details::at_to<float>(theArray, i);
                      std::vector<float>::push_back[abi:ne200100](&v144.__begin_, &v137);
                    }
                  }

                  v140 = v39;
                }
              }

              if (theArray)
              {
                CFRelease(theArray);
              }

              if (v127)
              {
                CFRelease(v127);
              }

              if (v128)
              {
                CFRelease(v128);
              }

              if (v129)
              {
                CFRelease(v129);
              }

              if (v130)
              {
                CFRelease(v130);
              }

              if (AUSM::RoomCongruence::UserData::isValid(__src))
              {
                v52 = *(v15 + v16);
                v53 = *(a1 + 72);
                if (!*&v53)
                {
                  goto LABEL_174;
                }

                v54 = vcnt_s8(v53);
                v54.i16[0] = vaddlv_u8(v54);
                if (v54.u32[0] > 1uLL)
                {
                  v55 = *(v15 + v16);
                  if (*&v53 <= v52)
                  {
                    v55 = v52 % *&v53;
                  }
                }

                else
                {
                  v55 = (*&v53 - 1) & v52;
                }

                v56 = *(*(a1 + 64) + 8 * v55);
                if (!v56 || (v57 = *v56) == 0)
                {
LABEL_174:
                  operator new();
                }

                while (1)
                {
                  v58 = *(v57 + 1);
                  if (v58 == v52)
                  {
                    if (*(v57 + 4) == v52)
                    {
                      if (v57 + 6 == __src)
                      {
                        v59 = v140;
                        v57[18] = v140;
                      }

                      else
                      {
                        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57 + 3, *__src, *&__src[8], (*&__src[8] - *__src) >> 2);
                        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57 + 6, *&__src[24], v139, (v139 - *&__src[24]) >> 2);
                        v57[18] = v140;
                        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57 + 10, v141, *(&v141 + 1), (*(&v141 + 1) - v141) >> 2);
                        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57 + 13, *(&v142 + 1), v143, (v143 - *(&v142 + 1)) >> 2);
                        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57 + 16, v144.__begin_, v144.__end_, v144.__end_ - v144.__begin_);
                        v59 = v140;
                      }

                      v60 = *(v15 + v16);
                      v62 = *(a1 + 112);
                      v61 = *(a1 + 120);
                      if (v62 >= v61)
                      {
                        v64 = *v125;
                        v65 = v62 - *v125;
                        v66 = v65 >> 3;
                        v67 = (v65 >> 3) + 1;
                        if (v67 >> 61)
                        {
                          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                        }

                        v68 = v61 - v64;
                        if (v68 >> 2 > v67)
                        {
                          v67 = v68 >> 2;
                        }

                        if (v68 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v69 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v69 = v67;
                        }

                        if (v69)
                        {
                          if (!(v69 >> 61))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v70 = (8 * v66);
                        *v70 = v60;
                        v70[1] = v59;
                        v63 = 8 * v66 + 8;
                        memcpy(0, v64, v65);
                        *(a1 + 104) = 0;
                        *(a1 + 112) = v63;
                        *(a1 + 120) = 0;
                        if (v64)
                        {
                          operator delete(v64);
                        }
                      }

                      else
                      {
                        *v62 = v60;
                        *(v62 + 1) = v59;
                        v63 = (v62 + 8);
                      }

                      *(a1 + 112) = v63;
                      break;
                    }
                  }

                  else
                  {
                    if (v54.u32[0] > 1uLL)
                    {
                      if (v58 >= *&v53)
                      {
                        v58 %= *&v53;
                      }
                    }

                    else
                    {
                      v58 &= *&v53 - 1;
                    }

                    if (v58 != v55)
                    {
                      goto LABEL_174;
                    }
                  }

                  v57 = *v57;
                  if (!v57)
                  {
                    goto LABEL_174;
                  }
                }
              }

              AUSM::RoomCongruence::UserData::~UserData(__src);
              goto LABEL_193;
            }
          }

          else
          {
            v45 = 1;
            if (!v43)
            {
              goto LABEL_122;
            }
          }

          CFRelease(v43);
          goto LABEL_122;
        }

        v45 = 1;
        goto LABEL_126;
      }

LABEL_193:
      ++v16;
      v15 = *(a1 + 40);
      v71 = (*(a1 + 48) - v15) >> 2;
      if (v71 <= v16)
      {
        goto LABEL_281;
      }
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v72 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_202;
    }

    *buf = 136315138;
    *&buf[4] = "isIrDataUserDataDictionaryStructurallyValid";
    v73 = v72;
    v74 = "[Room Congruence] %s: IRData User Data invalid - the center frequency array is empty.";
    goto LABEL_233;
  }

  v71 = (v14 - v15) >> 2;
LABEL_281:
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 149) = 0;
  *(a1 + 144) = 0;
  *(a1 + 157) = 1;
  *(a1 + 160) = 0;
  if (v71 != *(a1 + 88))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v103 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v109 = a1;
      if (*(a1 + 23) < 0)
      {
        v109 = *a1;
      }

      *__src = 136315394;
      *&__src[4] = v109;
      *&__src[12] = 2080;
      *&__src[14] = "Processor";
      _os_log_error_impl(&dword_1DDB85000, v103, OS_LOG_TYPE_ERROR, "[%s|%s] One or more of the chosen IR Presets does not contain room congruence data or the data is corrupted.", __src, 0x16u);
    }
  }

  v104 = *(a1 + 104);
  v105 = *(a1 + 112);
  v106 = 126 - 2 * __clz((v105 - v104) >> 3);
  if (v105 == v104)
  {
    v107 = 0;
  }

  else
  {
    v107 = v106;
  }

  std::__introsort<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,false>(v104, v105, v107, 1);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_1DDEC30B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, AUSM::RoomCongruence::Cache *a10, uint64_t a11, uint64_t a12, void **a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a24);
  std::optional<applesauce::CF::ArrayRef>::~optional(v30 - 192);
  std::optional<applesauce::CF::ArrayRef>::~optional(v30 - 176);
  std::optional<applesauce::CF::ArrayRef>::~optional(v30 - 160);
  std::optional<applesauce::CF::ArrayRef>::~optional(v30 - 144);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a29);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a22);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a23);
  AUSM::RoomCongruence::Cache::~Cache(a10);
  v32 = *a14;
  if (*a14)
  {
    *(v29 + 112) = v32;
    operator delete(v32);
  }

  std::__hash_table<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::__unordered_map_hasher<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::hash<IR::IRPreset>,std::equal_to<IR::IRPreset>,true>,std::__unordered_map_equal<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::equal_to<IR::IRPreset>,std::hash<IR::IRPreset>,true>,std::allocator<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>>>::~__hash_table(a16);
  v33 = *a13;
  if (*a13)
  {
    *(v29 + 48) = v33;
    operator delete(v33);
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  _Unwind_Resume(a1);
}

void AUSM::RoomCongruence::UserData::~UserData(AUSM::RoomCongruence::UserData *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

float *std::__introsort<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = v8[1];
        if (v82 < v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v84;
          v8[1] = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 >= v92)
      {
        if (v93 < v90)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 < v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            goto LABEL_188;
          }

LABEL_189:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 < v90)
        {
          *v8 = v8[4];
          *(v8 + 4) = v94;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 < v92)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v94;
          v91 = v8 + 3;
LABEL_187:
          v89 = v8 + 5;
          v90 = v92;
LABEL_188:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_189;
        }
      }

      v150 = *(a2 - 1);
      if (v150 >= v93)
      {
        return result;
      }

      v151 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v151;
      v8[5] = v150;
      *(a2 - 1) = v93;
      v137 = v8[5];
      v152 = v8[3];
      if (v137 >= v152)
      {
        return result;
      }

      v153 = *(v8 + 2);
      v154 = *(v8 + 4);
      *(v8 + 2) = v154;
      *(v8 + 4) = v153;
      v8[3] = v137;
      v8[5] = v152;
      v138 = v8[1];
      if (v137 >= v138)
      {
        return result;
      }

      v155 = *v8;
      *v8 = v154;
      *(v8 + 2) = v155;
LABEL_194:
      v8[1] = v137;
      v8[3] = v138;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = v99[3];
            v101 = v99[1];
            v99 = v95;
            if (v100 < v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = (v8 + v103);
                v104[2] = *(v8 + v103);
                v104[3] = *(v8 + v103 + 4);
                if (!v103)
                {
                  break;
                }

                v103 -= 8;
                if (v100 >= *(v104 - 1))
                {
                  v105 = v8 + v103 + 8;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 4) = v100;
            }

            v95 = v99 + 2;
            v98 += 8;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v143 = v8 + 1;
        do
        {
          v144 = v7[3];
          v145 = v7[1];
          v7 = v95;
          if (v144 < v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v147[1] = *(v147 - 1);
              v147[2] = *v147;
              v148 = *(v147 - 2);
              v147 -= 2;
            }

            while (v144 < v148);
            v147[1] = v146;
            v147[2] = v144;
          }

          v95 = v7 + 2;
          v143 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        v108 = v107;
        if (v106 >= v107)
        {
          v109 = (2 * v107) | 1;
          v110 = &v8[2 * v109];
          if (2 * v108 + 2 < v9 && v110[1] < v110[3])
          {
            v110 += 2;
            v109 = 2 * v108 + 2;
          }

          v111 = &v8[2 * v108];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 >= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * v109) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] < v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 >= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v107 = v108 - 1;
      }

      while (v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v122 = &v121[2 * v118];
          v123 = v122 + 2;
          v124 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 >= v9)
          {
            v118 = v124;
          }

          else
          {
            v125 = v122[3];
            v126 = v122[5];
            v127 = v122 + 4;
            if (v125 >= v126)
            {
              v118 = v124;
            }

            else
            {
              v123 = v127;
            }
          }

          *v121 = *v123;
          v121[1] = v123[1];
          v121 = v123;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v123 != a2 - 2)
        {
          *v123 = *(a2 - 2);
          v123[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v123 - v8 + 8) >> 3;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = &v8[2 * v131];
            v133 = v132[1];
            v120 = v123[1];
            if (v133 < v120)
            {
              v134 = *v123;
              do
              {
                v135 = v123;
                v123 = v132;
                *v135 = *v132;
                v135[1] = v133;
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = &v8[2 * v131];
                v133 = v132[1];
              }

              while (v133 < v120);
              *v123 = v134;
LABEL_164:
              v123[1] = v120;
            }
          }

          a2 -= 2;
          v129 = v9-- <= 2;
          if (v129)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v123 = v119;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 < v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 < v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 < v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 < v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10 + 2;
      v39 = v10[3];
      v40 = v8[5];
      v41 = *(a2 - 5);
      if (v39 >= v40)
      {
        if (v41 < v39)
        {
          v43 = *v38;
          *v38 = *(a2 - 6);
          *(a2 - 6) = v43;
          v10[3] = v41;
          *(a2 - 5) = v39;
          v44 = v10[3];
          v45 = v8[5];
          if (v44 < v45)
          {
            v46 = *(v8 + 4);
            v8[4] = *v38;
            *v38 = v46;
            v8[5] = v44;
            v10[3] = v45;
          }
        }
      }

      else
      {
        v42 = *(v8 + 4);
        if (v41 < v39)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v42;
          v8[5] = v41;
          goto LABEL_48;
        }

        v8[4] = *v38;
        *v38 = v42;
        v8[5] = v39;
        v10[3] = v40;
        v47 = *(a2 - 5);
        if (v47 < v40)
        {
          *v38 = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v47;
LABEL_48:
          *(a2 - 5) = v40;
        }
      }

      v48 = v10[1];
      v49 = *(v10 - 1);
      v50 = v10[3];
      if (v48 >= v49)
      {
        v51 = *v10;
        if (v50 >= v48)
        {
LABEL_55:
          v49 = v48;
        }

        else
        {
          v52 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[1] = v50;
          v10[3] = v48;
          if (v50 >= v49)
          {
            v49 = v50;
            v51 = v52;
          }

          else
          {
            v51 = *v27;
            *v27 = v52;
            *v10 = v51;
            *(v10 - 1) = v50;
            v10[1] = v49;
          }
        }
      }

      else
      {
        v51 = *v27;
        if (v50 < v48)
        {
          *v27 = *v38;
          *v38 = v51;
          *(v10 - 1) = v50;
          v10[3] = v49;
          v51 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v51;
        *(v10 - 1) = v48;
        v10[1] = v49;
        if (v50 < v49)
        {
          v70 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[1] = v50;
          v10[3] = v49;
          v49 = v50;
          v51 = v70;
        }
      }

      v53 = *v8;
      *v8 = v51;
      *v10 = v53;
      v54 = *(v8 + 1);
      v8[1] = v49;
      *(v10 + 1) = v54;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 < v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 < v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v55 = *v8;
      v56 = v8[1];
LABEL_60:
      v57 = v8;
      do
      {
        v58 = v57;
        v57 += 2;
      }

      while (v58[3] < v56);
      v59 = a2;
      if (v58 == v8)
      {
        v62 = a2;
        while (v57 < v62)
        {
          v60 = v62 - 2;
          v63 = *(v62 - 1);
          v62 -= 2;
          if (v63 < v56)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 2;
          v61 = *(v59 - 1);
          v59 -= 2;
        }

        while (v61 >= v56);
      }

LABEL_70:
      v8 = v57;
      if (v57 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 1);
          v8[1] = v64[1];
          *(v64 + 1) = v66;
          do
          {
            v67 = v8[3];
            v8 += 2;
          }

          while (v67 < v56);
          do
          {
            v68 = *(v64 - 1);
            v64 -= 2;
          }

          while (v68 >= v56);
        }

        while (v8 < v64);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v55;
      *(v8 - 1) = v56;
      if (v57 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v69)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = v8[1];
      v55 = *v8;
      if (*(v8 - 1) < v56)
      {
        goto LABEL_60;
      }

      if (v56 >= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v56 >= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v56 >= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v56 < v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v56 >= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v56 < v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v55;
      *(v8 - 1) = v56;
    }
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 >= v86)
  {
    if (v87 >= v85)
    {
      return result;
    }

    v136 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v136;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v137 = v8[3];
    v138 = v8[1];
    if (v137 >= v138)
    {
      return result;
    }

    v139 = *v8;
    *v8 = v8[2];
    v8[2] = v139;
    goto LABEL_194;
  }

  v88 = *v8;
  if (v87 >= v85)
  {
    *v8 = v8[2];
    v8[2] = v88;
    v8[1] = v85;
    v8[3] = v86;
    v149 = *(a2 - 1);
    if (v149 >= v86)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[3] = v149;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::__unordered_map_hasher<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::hash<IR::IRPreset>,std::equal_to<IR::IRPreset>,true>,std::__unordered_map_equal<IR::IRPreset,std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,std::equal_to<IR::IRPreset>,std::hash<IR::IRPreset>,true>,std::allocator<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      AUSM::RoomCongruence::UserData::~UserData((v2 + 3));
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

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 < v7)
      {
        v9 = *a1;
        if (v8 >= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 >= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 >= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AUSM::RoomCongruence::Processor::Processor(std::string const&)::$_0 &,std::pair<IR::IRPreset,float> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 >= v19)
    {
      if (v20 >= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 >= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 >= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 >= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 >= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 >= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 >= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 < v12)
  {
    v15 = *a1;
    if (v14 >= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 >= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 < v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 < v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 < v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 16);
        v40[7] = *(a1 + v39 + 20);
        if (v39 == -16)
        {
          break;
        }

        v39 -= 8;
        if (v37 >= v40[3])
        {
          v41 = a1 + v39 + 24;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 4) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 8;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<IR::IRPreset,AUSM::RoomCongruence::UserData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      AUSM::RoomCongruence::UserData::~UserData((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

void ASAFeaturesDSPChain::GetSuperFeatureDimensions(uint64_t a1, std::vector<unsigned int> *this)
{
  v3 = *(a1 + 248);
  std::vector<unsigned int>::resize(this, *v3);
  v4 = *(v3 + 10);
  v5 = *(v3 + 11);
  if (v4 != v5)
  {
    begin = this->__begin_;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      v4 += 3;
      *begin++ = ((v7 - v8) >> 2) + 1;
    }

    while (v4 != v5);
  }
}

uint64_t ASAFeaturesDSPChain::GetInputAudioFormat(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *v2;
  v4 = v2[1];
  *(a2 + 32) = *(v2 + 4);
  *a2 = v3;
  *(a2 + 16) = v4;
  return 0;
}

uint64_t ASAFeaturesDSPChain::ComputeAllFeaturesFromAudio(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v118 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != a3)
  {
    __assert_rtn("ComputeAllFeaturesFromAudio", "ASAFeaturesDSPChain.cpp", 717, "numAudioSamples == mAudioBufferSize");
  }

  v9 = *(a5 + 16);
  v10 = *(a1 + 64);
  v12 = *(v10 + 28);
  v11 = *(v10 + 32);
  if (a3)
  {
    v13 = *(a2 + 16);
    v14 = 4 * a3;
    v15 = *(a5 + 16);
    v16 = *v10;
    v17 = *(v10 + 4);
    do
    {
      v18 = *v13++;
      v19 = v18;
      v11 = v16 * ((v18 + (v17 * v11)) - v12);
      *v15++ = v11;
      v12 = v18;
      v14 -= 4;
    }

    while (v14);
  }

  else
  {
    v19 = *(v10 + 28);
  }

  *(v10 + 28) = v19;
  *(v10 + 32) = v11;
  if (*(v10 + 36) == 1)
  {
    v20 = *(v10 + 24);
    if (a3)
    {
      v21 = *(v10 + 16);
      v22 = *(v10 + 8);
      v23 = 4 * a3;
      v24 = v9;
      do
      {
        *v24 = *(v21 + 4 * v20) + *v24;
        ++v24;
        v25 = v20 + 1;
        if (v25 >= v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        v20 = v25 - v26;
        v23 -= 4;
      }

      while (v23);
    }

    *(v10 + 24) = v20;
  }

  v27 = *(a1 + 72);
  v28 = **(a1 + 216);
  if (*(v27 + 4))
  {
    v29 = 0;
    do
    {
      v30 = *(v27 + 12);
      v31 = v30 * v29++;
      memcpy((v28 + v31), (v28 + v30 * v29), v30);
    }

    while (v29 < *(v27 + 4));
  }

  else
  {
    v29 = 0;
  }

  memcpy((v28 + *(v27 + 12) * v29), v9, *(v27 + 12));
  v32 = *(a1 + 80);
  v33 = *(*(a1 + 216) + 8);
  if (*(v32 + 4))
  {
    v34 = 0;
    do
    {
      v35 = *(v32 + 12);
      v36 = v35 * v34++;
      memcpy((v33 + v36), (v33 + v35 * v34), v35);
    }

    while (v34 < *(v32 + 4));
  }

  else
  {
    v34 = 0;
  }

  memcpy((v33 + *(v32 + 12) * v34), v9, *(v32 + 12));
  v37 = *(a1 + 232);
  v38 = *(a1 + 216);
  v39 = *(v38 + 8);
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  v42 = *(v38 + 32);
  v43 = *(v38 + 40);
  __dst = *(v38 + 48);
  v104 = *(v38 + 56);
  v105 = *(v38 + 72);
  __C = *(v38 + 64);
  v44 = *(v38 + 80);
  v102 = *(v38 + 88);
  ASAFrontEnd::genericComputeMagnitudeSpectrum(*v38, *(v37 + 72), *(v37 + 136), *(v37 + 4), *(v37 + 40), (v37 + 48), v40, v45);
  if (v39)
  {
    ASAFrontEnd::genericComputeMagnitudeSpectrum(v39, *(v37 + 80), *(v37 + 144), *(v37 + 8), *(v37 + 44), (v37 + 56), v41, v46);
  }

  vDSP_mmul(*(v37 + 96), 1, v40, 1, v42, 1, *(v37 + 12), 1uLL, *(v37 + 40));
  v47 = *(v37 + 136);
  *buf = *(v37 + 4);
  MEMORY[0x1E12BE8A0](v47, 1, &VADGenUtils::MagOffset_MagFloorMinus100DB, *(v37 + 160), 1);
  vvlogf(*(v37 + 160), *(v37 + 160), buf);
  bzero((*(v37 + 160) + 4 * *(v37 + 4)), 4 * *(v37 + 4));
  *v107 = *(v37 + 160);
  *&v107[2] = *v107 + 4 * *(v37 + 4);
  MultiRadixFFT_CplxInPlaceTransform(*(v37 + 64), v107, -1);
  v113 = 1.0 / *(v37 + 4);
  MEMORY[0x1E12BE940](*(v37 + 160), 1, &v113, v44, 1, *(v37 + 40));
  MEMORY[0x1E12BE7F0](*(v37 + 120), 1, v44, 1, v102, 1, *(v37 + 40));
  memcpy(__dst, v43, 4 * *(v37 + 40));
  vDSP_mmul(*(v37 + 104), 1, v42, 1, v43, 1, *(v37 + 40), 1uLL, *(v37 + 12));
  vDSP_vthr(v43, 1, (v37 + 36), v43, 1, *(v37 + 40));
  MEMORY[0x1E12BE9A0](v43, 1, v40, 1, v104, 1, *(v37 + 40));
  v107[0] = *(v37 + 12);
  vvlogf(*(v37 + 152), v42, v107);
  vDSP_mmul(*(v37 + 128), 1, *(v37 + 152), 1, __C, 1, *(v37 + 16), 1uLL, *(v37 + 12));
  MEMORY[0x1E12BE7F0](*(v37 + 112), 1, __C, 1, v105, 1, *(v37 + 16));
  v48 = *(a1 + 216);
  v50 = v48[1];
  *v107 = *v48;
  v49 = *v107;
  v108 = v50;
  v51 = v48[3];
  v109 = v48[2];
  v110 = v51;
  v52 = v48[5];
  v111 = v48[4];
  v112 = v52;
  v53 = *(a1 + 240);
  v54 = *(*(a1 + 248) + 104);
  v55 = *(a1 + 264);
  ++*(v53 + 252);
  v56 = ASAFeatures::computeCenteredRMS(v49, *(*v53 + 64), *(*v53 + 16));
  v53[245] = v56;
  v57 = log10(v56);
  v53[246] = v57 * 20.0;
  *(v53 + 976) = 0;
  v59 = *(v53 + 16);
  v58 = *(v53 + 17);
  if (v59 != v58)
  {
    v60 = *v55;
    v61 = 1;
    do
    {
      if ((v61 & v54) != 0)
      {
        v62 = *v59;
        v63 = *(v59 + 8);
        v64 = (v53 + (v63 >> 1));
        if (v63)
        {
          v62 = *(*v64 + v62);
        }

        v62(v64, v107);
        v58 = *(v53 + 17);
      }

      else
      {
        v65 = 0;
      }

      *v60++ = v65;
      v61 *= 2;
      v59 += 16;
    }

    while (v59 != v58);
  }

  *(v53 + 976) = 1;
  v66 = *(a1 + 264);
  v67 = *v66;
  if (*(v66 + 8) == *v66)
  {
    goto LABEL_66;
  }

  v68 = *(a1 + 280);
  v69 = *v68;
  if (*(v68 + 8) == *v68)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v70 = *(a1 + 272);
  v71 = *v70;
  if (*(v70 + 8) == *v70 || (v72 = *(a1 + 248), v73 = *(v72 + 112), *(v72 + 120) == v73) || (v74 = *(v72 + 8), *(v72 + 16) == v74) || (v75 = *(v72 + 32), *(v72 + 40) == v75) || (vDSP_vam(v67, 1, v74, 1, v75, 1, v73, 1, *(v72 + 4)), v76 = *(v72 + 112), *(v72 + 120) == v76) || (v77 = *(v72 + 56), *(v72 + 64) == v77))
  {
LABEL_66:
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  cblas_sgemv(CblasRowMajor, CblasNoTrans, *v72, *(v72 + 4), 1.0, v77, *(v72 + 4), v76, 1, 0.0, v71, 1);
  if (*(v72 + 136) != 1)
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v101 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v101 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v115 = "FeatureSelection.cpp";
      v116 = 1024;
      v117 = 119;
      _os_log_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_ERROR, "%25s:%-5d Non-binary threshold is unsupported.", buf, 0x12u);
    }

LABEL_75:
    abort();
  }

  v78 = *(v72 + 80);
  v79 = *(v72 + 88);
  while (v78 != v79)
  {
    if (v78[1] == *v78)
    {
      goto LABEL_66;
    }

    v80 = *v71++;
    *v69++ = v80 >= **v78;
    v78 += 3;
  }

  v81 = 0;
  v82 = 0;
  v83 = **(a1 + 264);
  v84 = (*(*(a1 + 264) + 8) - v83) >> 2;
  do
  {
    if (v84 == v82)
    {
      goto LABEL_66;
    }

    v85 = a6[3];
    v86 = (a6[4] - v85) >> 2;
    if (v86 <= v82)
    {
      goto LABEL_64;
    }

    *(v85 + 4 * v82) = *(v83 + 4 * v82);
    v87 = a6[7];
    v88 = (a6[8] - v87) >> 4;
    if (v88 <= v82)
    {
      goto LABEL_64;
    }

    v89 = (v87 + v81);
    v90 = *(a4 + 8);
    v89[1] = v90;
    *v89 = v90 * *(a1 + 40);
    ++v82;
    v81 += 16;
  }

  while (v81 != 304);
  v91 = **(a1 + 280);
  v92 = *(*(a1 + 280) + 8) - v91;
  if (v92)
  {
    v93 = v92 >> 2;
    v94 = v86 - 19;
    if (v93 <= 1)
    {
      v93 = 1;
    }

    v95 = 19;
    if (v88 > 0x13)
    {
      v95 = v88;
    }

    v96 = v95 - 19;
    v97 = (v85 + 76);
    v98 = (v87 + 312);
    while (v94)
    {
      *v97 = *v91;
      if (!v96)
      {
        break;
      }

      v99 = *(a4 + 8);
      *v98 = v99;
      --v96;
      ++v91;
      *(v98 - 1) = v99 * *(a1 + 40);
      --v94;
      ++v97;
      v98 += 2;
      if (!--v93)
      {
        goto LABEL_63;
      }
    }

LABEL_64:
    __assert_rtn("operator[]", "FeatureTimeSeries.h", 91, "index < mArray.size()");
  }

LABEL_63:
  ++*(a1 + 12);
  return 0;
}

uint64_t ASAFeaturesDSPChain::Uninitialize(ASAFeaturesDSPChain *this)
{
  *(this + 8) = 0;
  v2 = *(this + 27);
  if (v2)
  {
    if (*v2)
    {
      free(*v2);
      v2 = *(this + 27);
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      free(v3);
      v2 = *(this + 27);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      free(v4);
      v2 = *(this + 27);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      free(v5);
      v2 = *(this + 27);
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      free(v6);
      v2 = *(this + 27);
    }

    v7 = *(v2 + 40);
    if (v7)
    {
      free(v7);
      v2 = *(this + 27);
    }

    v8 = *(v2 + 48);
    if (v8)
    {
      free(v8);
      v2 = *(this + 27);
    }

    v9 = *(v2 + 56);
    if (v9)
    {
      free(v9);
      v2 = *(this + 27);
    }

    v10 = *(v2 + 64);
    if (v10)
    {
      free(v10);
      v2 = *(this + 27);
    }

    v11 = *(v2 + 72);
    if (v11)
    {
      free(v11);
      v2 = *(this + 27);
    }

    v12 = *(v2 + 80);
    if (v12)
    {
      free(v12);
      v2 = *(this + 27);
    }

    v13 = *(v2 + 88);
    if (v13)
    {
      free(v13);
    }
  }

  *(this + 3) = 0;
  return 0;
}

void ASAFeaturesDSPChain::Initialize(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v9, "");
  (*(*a1 + 24))(a1);
  FeaturesDSPChain::InitializeInputOutputBufferSizes(a1, a2, a3, 19);
  if (!v6)
  {
    operator new();
  }

  std::string::__assign_external(&v9, "Failed to initialize input and output buffer sizes.", 0x33uLL);
  if (EndpointVAD2LogScope(void)::once != -1)
  {
    dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
  }

  if (EndpointVAD2LogScope(void)::scope)
  {
    v7 = *EndpointVAD2LogScope(void)::scope;
    if (!*EndpointVAD2LogScope(void)::scope)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = &v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v9.__r_.__value_.__r.__words[0];
    }

    buf = 136315650;
    buf_4 = "ASAFeaturesDSPChain.cpp";
    v12 = 1024;
    v13 = 660;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error initializing ASA features DSP chain: %s", &buf, 0x1Cu);
  }

LABEL_12:
  abort();
}

void sub_1DDEC8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  MEMORY[0x1E12BD160](v72, 0x10C402FEFCB83);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v73);
  if (a58)
  {
    operator delete(a58);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  a65 = &a68;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a65);
  if (a71)
  {
    a72 = a71;
    operator delete(a71);
  }

  v76 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v76;
    operator delete(v76);
  }

  v77 = *(v74 - 192);
  if (v77)
  {
    *(v74 - 184) = v77;
    operator delete(v77);
  }

  if (*(v74 - 201) < 0)
  {
    operator delete(*(v74 - 224));
  }

  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<ASAFrontEnd>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      free(v3);
    }

    v4 = v2[20];
    if (v4)
    {
      free(v4);
    }

    v5 = v2[19];
    if (v5)
    {
      free(v5);
    }

    v6 = v2[18];
    if (v6)
    {
      free(v6);
    }

    v7 = v2[17];
    if (v7)
    {
      free(v7);
    }

    v8 = v2[16];
    if (v8)
    {
      free(v8);
    }

    v9 = v2[15];
    if (v9)
    {
      free(v9);
    }

    v10 = v2[14];
    if (v10)
    {
      free(v10);
    }

    v11 = v2[13];
    if (v11)
    {
      free(v11);
    }

    v12 = v2[12];
    if (v12)
    {
      free(v12);
    }

    v13 = v2[11];
    if (v13)
    {
      free(v13);
    }

    v14 = v2[10];
    if (v14)
    {
      free(v14);
    }

    v15 = v2[9];
    if (v15)
    {
      free(v15);
    }

    MultiRadixFFT_Dispose(v2[8]);
    MultiRadixFFT_Dispose(v2[7]);
    MultiRadixFFT_Dispose(v2[6]);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<FeatureSelection>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      *(v2 + 120) = v3;
      operator delete(v3);
    }

    v7 = (v2 + 80);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
    v4 = *(v2 + 56);
    if (v4)
    {
      *(v2 + 64) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      *(v2 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 8);
    if (v6)
    {
      *(v2 + 16) = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<ASAFeatures>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 732);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(v2 + 200);
        v6 = *(v2 + 208) - v5;
        if (!v6)
        {
          break;
        }

        if (i >= v6 >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v7 = *(v5 + 8 * i);
        if (v7)
        {
          (*(*v7 + 8))(v7);
          v3 = *(v2 + 732);
        }
      }
    }

    v8 = 0;
    while (1)
    {
      v9 = *(v2 + 176);
      if (v8 >= (*(v2 + 184) - v9) >> 3)
      {
        break;
      }

      v10 = *(v9 + 8 * v8);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      if (++v8 == 18)
      {
        v11 = 0;
        while (1)
        {
          v12 = *(v2 + 152);
          if (v11 >= (*(v2 + 160) - v12) >> 3)
          {
            break;
          }

          v13 = *(v12 + 8 * v11);
          if (v13)
          {
            v14 = *(v13 + 16);
            if (v14)
            {
              *(v13 + 24) = v14;
              operator delete(v14);
            }

            MEMORY[0x1E12BD160](v13, 0x1080C400DE93FC6);
          }

          if (++v11 == 18)
          {
            v15 = *(v2 + 592);
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            v16 = *(v2 + 584);
            if (v16)
            {
              free(v16);
            }

            v17 = *(v2 + 576);
            if (v17)
            {
              free(v17);
            }

            v18 = *(v2 + 568);
            if (v18)
            {
              free(v18);
            }

            v19 = *(v2 + 560);
            if (v19)
            {
              free(v19);
            }

            v20 = *(v2 + 712);
            if (v20)
            {
              free(v20);
            }

            v21 = *(v2 + 704);
            if (v21)
            {
              free(v21);
            }

            v22 = *(v2 + 552);
            if (v22)
            {
              free(v22);
            }

            v23 = *(v2 + 696);
            if (v23)
            {
              free(v23);
            }

            v24 = *(v2 + 688);
            if (v24)
            {
              free(v24);
            }

            v25 = *(v2 + 680);
            if (v25)
            {
              free(v25);
            }

            v26 = *(v2 + 672);
            if (v26)
            {
              free(v26);
            }

            v27 = *(v2 + 664);
            if (v27)
            {
              free(v27);
            }

            v28 = *(v2 + 544);
            if (v28)
            {
              free(v28);
            }

            v29 = *(v2 + 536);
            if (v29)
            {
              free(v29);
            }

            v30 = *(v2 + 528);
            if (v30)
            {
              free(v30);
            }

            v31 = *(v2 + 520);
            if (v31)
            {
              free(v31);
            }

            v32 = *(v2 + 512);
            if (v32)
            {
              free(v32);
            }

            v33 = *(v2 + 504);
            if (v33)
            {
              free(v33);
            }

            v34 = *(v2 + 496);
            if (v34)
            {
              free(v34);
            }

            v35 = *(v2 + 488);
            if (v35)
            {
              free(v35);
            }

            v36 = *(v2 + 480);
            if (v36)
            {
              free(v36);
            }

            v37 = *(v2 + 472);
            if (v37)
            {
              free(v37);
            }

            v38 = *(v2 + 464);
            if (v38)
            {
              free(v38);
            }

            v39 = *(v2 + 456);
            if (v39)
            {
              free(v39);
            }

            v40 = *(v2 + 448);
            if (v40)
            {
              free(v40);
            }

            v41 = *(v2 + 440);
            if (v41)
            {
              free(v41);
            }

            v42 = *(v2 + 432);
            if (v42)
            {
              free(v42);
            }

            v43 = *(v2 + 424);
            if (v43)
            {
              free(v43);
            }

            v44 = *(v2 + 416);
            if (v44)
            {
              free(v44);
            }

            v45 = *(v2 + 408);
            if (v45)
            {
              free(v45);
            }

            v46 = *(v2 + 400);
            if (v46)
            {
              if (*v46)
              {
                MEMORY[0x1E12BD130](*v46, 0x1000C8052888210);
              }

              MEMORY[0x1E12BD160](v46, 0x1080C40FC6463CFLL);
            }

            v47 = *(v2 + 384);
            if (v47)
            {
              free(v47);
            }

            v48 = *(v2 + 376);
            if (v48)
            {
              free(v48);
            }

            v49 = *(v2 + 368);
            if (v49)
            {
              free(v49);
            }

            v50 = *(v2 + 360);
            if (v50)
            {
              free(v50);
            }

            v51 = *(v2 + 352);
            if (v51)
            {
              free(v51);
            }

            v52 = *(v2 + 344);
            if (v52)
            {
              free(v52);
            }

            v53 = *(v2 + 656);
            if (v53)
            {
              free(v53);
            }

            v54 = *(v2 + 648);
            if (v54)
            {
              v55 = *v54;
              if (*(v54 + 8) != *v54)
              {
                v56 = 0;
                do
                {
                  if (v55[v56])
                  {
                    free(v55[v56]);
                    v54 = *(v2 + 648);
                    v55 = *v54;
                  }

                  ++v56;
                }

                while (v56 < (*(v54 + 8) - v55) >> 3);
              }

              if (v55)
              {
                *(v54 + 8) = v55;
                operator delete(v55);
              }

              MEMORY[0x1E12BD160](v54, 0x80C40D6874129);
            }

            v57 = *(v2 + 640);
            if (v57)
            {
              free(v57);
            }

            v58 = *(v2 + 632);
            if (v58)
            {
              free(v58);
            }

            v59 = *(v2 + 392);
            if (v59)
            {
              if (*v59)
              {
                MEMORY[0x1E12BD130](*v59, 0x1000C8052888210);
              }

              MEMORY[0x1E12BD160](v59, 0x1080C40FC6463CFLL);
            }

            v60 = *(v2 + 336);
            if (v60)
            {
              free(v60);
            }

            v61 = *(v2 + 328);
            if (v61)
            {
              free(v61);
            }

            v62 = *(v2 + 320);
            if (v62)
            {
              free(v62);
            }

            v63 = *(v2 + 312);
            if (v63)
            {
              free(v63);
            }

            v64 = *(v2 + 304);
            if (v64)
            {
              free(v64);
            }

            v65 = *(v2 + 296);
            if (v65)
            {
              free(v65);
            }

            v66 = *(v2 + 288);
            if (v66)
            {
              free(v66);
            }

            v67 = *(v2 + 280);
            if (v67)
            {
              free(v67);
            }

            v68 = *(v2 + 272);
            if (v68)
            {
              free(v68);
            }

            v69 = *(v2 + 264);
            if (v69)
            {
              free(v69);
            }

            v70 = *(v2 + 256);
            if (v70)
            {
              free(v70);
            }

            v71 = *(v2 + 248);
            if (v71)
            {
              free(v71);
            }

            v72 = *(v2 + 624);
            if (v72)
            {
              v85 = *(v2 + 624);
              std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v85);
              MEMORY[0x1E12BD160](v72, 0x20C40960023A9);
            }

            v73 = *(v2 + 616);
            if (v73)
            {
              free(v73);
            }

            v74 = *(v2 + 608);
            if (v74)
            {
              free(v74);
            }

            v75 = *(v2 + 600);
            if (v75)
            {
              free(v75);
            }

            v76 = *(v2 + 240);
            if (v76)
            {
              free(v76);
            }

            v77 = *(v2 + 232);
            if (v77)
            {
              free(v77);
            }

            v78 = *(v2 + 224);
            if (v78)
            {
              free(v78);
            }

            v79 = *(v2 + 768);
            if (v79)
            {
              *(v2 + 776) = v79;
              operator delete(v79);
            }

            v80 = *(v2 + 744);
            if (v80)
            {
              *(v2 + 752) = v80;
              operator delete(v80);
            }

            v81 = *(v2 + 200);
            if (v81)
            {
              *(v2 + 208) = v81;
              operator delete(v81);
            }

            v82 = *(v2 + 176);
            if (v82)
            {
              *(v2 + 184) = v82;
              operator delete(v82);
            }

            v83 = *(v2 + 152);
            if (v83)
            {
              *(v2 + 160) = v83;
              operator delete(v83);
            }

            v84 = *(v2 + 128);
            if (v84)
            {
              *(v2 + 136) = v84;
              operator delete(v84);
            }

            JUMPOUT(0x1E12BD160);
          }
        }

        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }
    }

    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return result;
}

uint64_t *std::unique_ptr<ASAPreprocessor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      free(v3);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ASAFeaturesDSPChain::~ASAFeaturesDSPChain(ASAFeaturesDSPChain *this)
{
  ASAFeaturesDSPChain::~ASAFeaturesDSPChain(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592B7F8;
  ASAFeaturesDSPChain::Uninitialize(this);
  v2 = *(this + 35);
  *(this + 35) = 0;
  if (v2)
  {
    std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 33);
  *(this + 33) = 0;
  if (v4)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v4);
  }

  std::unique_ptr<FeatureSelection>::reset[abi:ne200100](this + 31, 0);
  std::unique_ptr<ASAFeatures>::reset[abi:ne200100](this + 30, 0);
  std::unique_ptr<ASAFrontEnd>::reset[abi:ne200100](this + 29, 0);
  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    MEMORY[0x1E12BD160](v5, 0x1000C4027586B93);
  }

  v6 = *(this + 27);
  *(this + 27) = 0;
  if (v6)
  {
    MEMORY[0x1E12BD160](v6, 0x80C408F261F10);
  }

  v7 = *(this + 26);
  *(this + 26) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 25);
  *(this + 25) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 24);
  *(this + 24) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 23);
  *(this + 23) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 22);
  *(this + 22) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 21);
  *(this + 21) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 20);
  *(this + 20) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 19);
  *(this + 19) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 18);
  *(this + 18) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 17);
  *(this + 17) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 16);
  *(this + 16) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 15);
  *(this + 15) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 14);
  *(this + 14) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 13);
  *(this + 13) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 12);
  *(this + 12) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 11);
  *(this + 11) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 10);
  *(this + 10) = 0;
  if (v23)
  {
    MEMORY[0x1E12BD160](v23, 0x1000C40451B5BE8);
  }

  v24 = *(this + 9);
  *(this + 9) = 0;
  if (v24)
  {
    MEMORY[0x1E12BD160](v24, 0x1000C40451B5BE8);
  }

  std::unique_ptr<ASAPreprocessor>::reset[abi:ne200100](this + 8, 0);
  v25 = *(this + 7);
  *(this + 7) = 0;
  if (v25)
  {
    MEMORY[0x1E12BD160](v25, 0x1000C400A747E1ELL);
  }
}

uint64_t AUEndpointVAD2::HandleEvent(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  v10 = *(result + 600);
  if (v10 != *(result + 608))
  {
    do
    {
      v13 = *v10++;
      result = (*(*v13 + 16))(v13, a2, a3, a4, a5, a6);
    }

    while (v10 != *(v9 + 608));
  }

  v14 = *a2;
  v15 = *a2 - 1;
  if (v15 < 4)
  {
    v16 = qword_1DE0E9500[v15];
    v17 = qword_1DE0E9520[v15];
    *(v9 + v16) = *(a3 + 8);
    *(v9 + v17) = *(a4 + 8);
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        *(v9 + 576) = 1;
        v18 = 64035;
      }

      else
      {
        *(v9 + 576) = 0;
        v18 = 64036;
      }
    }

    else if (v14 == 1)
    {
      *(v9 + 556) = 1;
      v18 = 64033;
    }

    else
    {
      *(v9 + 556) = 0;
      v18 = 64034;
    }

    v19 = *(*v9 + 432);

    return v19(v9, v18, 0, 0);
  }

  return result;
}

void non-virtual thunk toAUEndpointVAD2::~AUEndpointVAD2(AUEndpointVAD2 *this)
{
  AUEndpointVAD2::~AUEndpointVAD2((this - 528));

  JUMPOUT(0x1E12BD160);
}

{
  AUEndpointVAD2::~AUEndpointVAD2((this - 528));
}

void AUEndpointVAD2::~AUEndpointVAD2(AUEndpointVAD2 *this)
{
  *this = &unk_1F592B848;
  *(this + 66) = &unk_1F592BAB8;
  v2 = *(this + 68);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 68) = 0;
  }

  v3 = *(this + 75);
  if (v3)
  {
    *(this + 76) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(this);
}

{
  AUEndpointVAD2::~AUEndpointVAD2(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUEndpointVAD2::SetInputOutputAudioFormat(AUEndpointVAD2 *this, double *a2)
{
  *v6 = *a2;
  v6[1] = 0x296C70636DLL;
  v7 = xmmword_1DE09CA10;
  v8 = 32;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_6;
  }

  result = (*(*Element + 56))(Element, v6);
  if (result)
  {
    return result;
  }

  v5 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v5)
  {
LABEL_6:
    ausdk::Throw(0xFFFFD583);
  }

  return (*(*v5 + 56))(v5, v6);
}

BOOL AUEndpointVAD2::ValidFormat(AUEndpointVAD2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v5 = 0;
  }

  return a4->mChannelsPerFrame == 1 && v5;
}

uint64_t AUEndpointVAD2::SupportedNumChannels(AUEndpointVAD2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEndpointVAD2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUEndpointVAD2::GetLatency(AUEndpointVAD2 *this)
{
  v1 = *(this + 68);
  v2 = v1[30];
  if (v2 <= v1[31])
  {
    v2 = v1[31];
  }

  if (v1[29] > v2)
  {
    v2 = v1[29];
  }

  return (v1[28] + v2);
}

uint64_t AUEndpointVAD2::GetParameterInfo(AUEndpointVAD2 *this, unsigned int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  a4->flags = 0x40000000;
  a4->unitName = 0;
  return 4294956418;
}

uint64_t AUEndpointVAD2::Render(AUEndpointVAD2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v13)
    {
      if (!*(v13 + 144) || (v15[0] = *(v13 + 152) + 48, !*(v11 + 144)))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v14 = *(v11 + 152) + 48;
      return (*(*this + 184))(this, a2, a4, 1, v15, 1, &v14);
    }

LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUEndpointVAD2::ProcessMultipleBufferLists(AUEndpointVAD2 *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = *(this + 156);
  *(this + 156) = v10 + 1;
  v11 = *(this + 80);
  if (!v10)
  {
    v35 = *(this + 35);
    mach_timebase_info(__p);
    LODWORD(v36) = *&__p[4];
    LODWORD(v37) = *__p;
    *(this + 79) = v35 / (v36 / v37 * 1000000000.0);
    for (i = *(this + 75); i != *(this + 76); ++i)
    {
      v39 = *i;
      v40 = (*i + 80);
      v42 = (*i + 104);
      v41 = *v42;
      v39[11] = *v40;
      v39[14] = v41;
      v39[17] = v39[16];
      v43 = v39[4];
      v39[2] = v39[1];
      v39[5] = v43;
      v39[8] = v39[7];
      std::vector<EndpointDecisionLayerVAD2::Decision>::reserve(v40);
      std::vector<double>::reserve(v42, 8uLL);
      std::vector<double>::reserve(v39 + 16, 8uLL);
      std::vector<EndpointDecisionLayerVAD2::Decision>::reserve(v39 + 1);
      std::vector<double>::reserve(v39 + 4, 8uLL);
      std::vector<double>::reserve(v39 + 7, 8uLL);
      v39[19] = 0;
    }
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v13 = *(Element + 80);
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v44 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        return 4294956422;
      }
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v52 = *(this + 84);
      *__p = 136315906;
      *&__p[4] = "AUEndpointVAD2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 901;
      v56 = 1024;
      v57 = a3;
      v58 = 1024;
      v59 = v52;
      _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Incorrect number of input samples! Received %d, but expected %d.", __p, 0x1Eu);
    }

    return 4294956422;
  }

  if (((*(*this + 576))(this) & 1) == 0)
  {
    v15 = *(this + 68);
    v16 = *a5;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    ++*(v15 + 384);
    v17 = *(*(v15 + 64) + 88);
    v18 = v11 / v13;
    FeaturesDSPWrapper::ProcessAudio(*(v15 + 32), v16, v18, a3);
    FeaturesDSPWrapper::ProcessAudio(*(v15 + 48), v16, v18, a3);
    v19 = *(*(v15 + 64) + 88) - v17;
    *(v15 + 80) = v19;
    if (v19)
    {
      for (j = 0; j < v19; ++j)
      {
        ++*(v15 + 384);
        v21 = *(v15 + 64);
        v54 = j - v19;
        VectorTimeSeriesSynchronizer<float>::GetSynchronizedVector(v21, &v54, *(v15 + 272));
        v22 = *(v15 + 272);
        v23 = *(v22 + 24);
        v24 = *(v22 + 32) - v23;
        if ((v24 & 0x3FFFFFFFCLL) != 0)
        {
          if ((v24 >> 2) - 1 >= (v24 >> 2))
          {
            __assert_rtn("ElementAt", "FeatureTimeSeries.h", 84, "index < mArray.size()");
          }

          v25 = 0;
          v26 = **(v15 + 296);
          v27 = (v24 >> 2);
          do
          {
            v28 = *v23++;
            v29 = (v28 + 0.5);
            v30 = *v26++;
            v25 += v30 * v29;
            --v27;
          }

          while (v27);
        }

        else
        {
          v25 = 0;
        }

        v31 = *(v15 + 96);
        if (*(v15 + 288) == 1)
        {
          v14 = MixViterbiProd::Update(v31, *(v15 + 292), v25, (v22 + 48));
        }

        else
        {
          v14 = MixViterbiProd::Initialize(v31, v25, (v22 + 48));
          *(v15 + 288) = 1;
        }

        *(v15 + 292) = v25;
        v19 = *(v15 + 80);
      }
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(*__p);
    }

    if (!*(v15 + 28))
    {
      *__p = *(v15 + 16) * v18;
      *&__p[8] = v18;
      v45 = *(v15 + 112);
      v46 = *(v15 + 96);
      v47 = *(v46 + 232);
      v48 = 0.0;
      if ((v47 & 1) == 0)
      {
        MRRingBuffer<DataTimeStamp>::GetSample(*(v46 + 192), *(v46 + 224) - 1);
        v48 = v49;
      }

      v50 = v18 - v45;
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((v15 + 336));
      *(v15 + 320) = *(v15 + 312);
      v51 = *(v15 + 96);
      if ((v47 & 1) != 0 || v50 > v48)
      {
        v54 = 0;
        if (MixViterbiProd::getForceDecodeTimeFramesRelativeToPresent(v51, v50, &v54) && v54 > *(v51 + 216))
        {
          MixViterbiProd::updateDecode(v51, (v15 + 336), (v15 + 312), v54);
        }
      }

      else
      {
        if (*(v51 + 232) == 1)
        {
          __assert_rtn("DecodeFromConvergence", "MixViterbiProd.cpp", 166, "!mNeverConverged");
        }

        MixViterbiProd::updateDecode(*(v15 + 96), (v15 + 336), (v15 + 312), *(v51 + 224));
      }

      if (*(v15 + 344) != *(v15 + 336) && *(v15 + 320) != *(v15 + 312))
      {
        EndpointVAD2::UpdateAndDispatchDecisions(v15, (v15 + 336), (v15 + 312), __p, *(v15 + 104), *(v15 + 24), (v15 + 304));
      }
    }
  }

  mData = (*a5)->mBuffers[0].mData;
  v33 = (*a7)->mBuffers[0].mData;
  if (mData != v33)
  {
    memcpy(v33, mData, (*a5)->mBuffers[0].mDataByteSize);
  }

  result = 0;
  LODWORD(v14) = *(this + 84);
  *(this + 80) = *(this + 80) + *&v14;
  return result;
}

void sub_1DDECA1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUEndpointVAD2::SetProperty(AUEndpointVAD2 *this, int a2, int a3, unsigned int a4, CFDictionaryRef theDict, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956431;
  switch(a2)
  {
    case 64010:
      if (*(this + 17))
      {
        return 4294956447;
      }

      Value = CFDictionaryGetValue(theDict, @"CommonParameters");
      v12 = CFDictionaryGetValue(theDict, @"ULDATParameters");
      v13 = CFDictionaryGetValue(theDict, @"ASAParameters");
      v14 = CFDictionaryGetValue(theDict, @"ViterbiParameters");
      EndpointVAD2::SetProperties(Value, (*(this + 68) + 144), v15);
      EndpointVAD2::SetProperties(v12, (*(this + 68) + 152), v16);
      EndpointVAD2::SetProperties(v13, (*(this + 68) + 160), v17);
      EndpointVAD2::SetProperties(v14, (*(this + 68) + 168), v18);
      result = 0;
      *(this + 552) = 1;
      return result;
    case 64011:
    case 64012:
    case 64013:
    case 64014:
    case 64015:
    case 64016:
    case 64017:
    case 64018:
    case 64019:
    case 64020:
    case 64021:
    case 64033:
    case 64034:
    case 64035:
    case 64036:
    case 64037:
    case 64038:
    case 64039:
    case 64040:
    case 64041:
    case 64042:
    case 64043:
    case 64044:
      return result;
    case 64022:
      result = 0;
      *(*(this + 68) + 28) = *theDict ^ 1;
      return result;
    case 64023:
      AUEndpointVAD2::AddHandler(this, theDict);
      goto LABEL_20;
    case 64024:
      if (*theDict == 1)
      {
        v9 = *(this + 80);
        v10 = ausdk::AUBase::Input(this, 0);
        EndpointVAD2::DoneProcessingAudio(*(this + 68), v9 / *(v10 + 80));
      }

      goto LABEL_20;
    case 64025:
      result = 0;
      *(*(this + 68) + 112) = *theDict;
      return result;
    case 64026:
      result = 0;
      *(*(this + 68) + 116) = *theDict;
      return result;
    case 64027:
      result = 0;
      *(*(this + 68) + 120) = *theDict;
      return result;
    case 64028:
      result = 0;
      *(*(this + 68) + 124) = *theDict;
      return result;
    case 64029:
      result = 0;
      *(*(this + 68) + 128) = *theDict;
      return result;
    case 64030:
      result = 0;
      *(*(this + 68) + 132) = *theDict;
      return result;
    case 64031:
      result = 0;
      *(*(this + 68) + 136) = *theDict;
      return result;
    case 64032:
      result = 0;
      *(*(this + 68) + 140) = *theDict;
      return result;
    default:
      if (a2 == 3700)
      {
        return result;
      }

      if (a2 != 21)
      {
        return 4294956417;
      }

      if (a6 >= 4)
      {
        v19 = *theDict;
        v20 = *theDict != 0;
        if (v20 != (*(*this + 576))(this))
        {
          (*(*this + 584))(this, v19 != 0);
        }

LABEL_20:
        result = 0;
      }

      else
      {
        result = 4294956445;
      }

      break;
  }

  return result;
}

void AUEndpointVAD2::AddHandler(void *a1, uint64_t a2)
{
  v3 = a1[76];
  v4 = a1[77];
  if (v3 >= v4)
  {
    v6 = a1[75];
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v6;
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

    v12 = (v3 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[75] = v14;
    a1[76] = v5;
    a1[77] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v3 = a2;
    v5 = v3 + 8;
  }

  a1[76] = v5;
}

uint64_t AUEndpointVAD2::GetProperty(AUEndpointVAD2 *this, int a2, int a3, unsigned int a4, void **a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 64010:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 447;
      v26 = "%25s:%-5d The top-level parameter data structure is not saved internally! Instead, you should query specific AU properties individually.";
      goto LABEL_102;
    case 64011:
      v20 = *(*(this + 68) + 32);
      goto LABEL_55;
    case 64012:
      v17 = *(*(this + 68) + 32);
      goto LABEL_41;
    case 64013:
      v18 = *(*(this + 68) + 32);
      v15 = *(v18 + 160);
      v16 = *(v18 + 24);
      v19 = a5;
      v14 = 10;
      goto LABEL_60;
    case 64014:
      result = 0;
      v9 = 10;
      goto LABEL_63;
    case 64015:
      result = 0;
      v9 = *(*(this + 68) + 84);
      goto LABEL_63;
    case 64016:
      v20 = *(*(this + 68) + 48);
LABEL_55:
      v21 = *(*(v20 + 112) + 48);
      memcpy(a5[2], *(v21 + 16), *(v21 + 12));
      result = 0;
      v22 = *(v21 + 12);
      *(a5 + 2) = v22;
      *(a5 + 3) = v22;
      return result;
    case 64017:
      v17 = *(*(this + 68) + 48);
LABEL_41:
      (*(**(v17 + 8) + 40))(*(v17 + 8), a5);
      return 0;
    case 64018:
      v23 = *(this + 68);
      v24 = *(v23 + 88);
      v25 = *(v23 + 48);
      v15 = *(v25 + 160);
      v16 = *(v25 + 24);
      v14 = v24 + 19;
      goto LABEL_59;
    case 64019:
      result = 0;
      v9 = *(*(this + 68) + 88) + 19;
      goto LABEL_63;
    case 64020:
      result = 0;
      v9 = *(*(this + 68) + 88);
      goto LABEL_63;
    case 64021:
      v13 = *(this + 68);
      v14 = *(v13 + 92);
      v15 = *(v13 + 80);
      v16 = *(v13 + 64);
LABEL_59:
      v19 = a5;
LABEL_60:
      EndpointVAD2::GetInterleavedFeaturesFromQueue(v19, v14, v15, v16);
      return 0;
    case 64022:
      result = 0;
      *a5 = *(*(this + 68) + 28) == 0;
      return result;
    case 64023:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 534;
      v26 = "%25s:%-5d kAUEndpointVAD2Property_EventHandler is write-only.";
      goto LABEL_102;
    case 64024:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 539;
      v26 = "%25s:%-5d kAUEndpointVAD2Property_DoneProcessingAudioForNonRealTimeDecode is write-only.";
      goto LABEL_102;
    case 64025:
      result = 0;
      v11 = *(*(this + 68) + 112);
      goto LABEL_67;
    case 64026:
      result = 0;
      v11 = *(*(this + 68) + 116);
      goto LABEL_67;
    case 64027:
      result = 0;
      v11 = *(*(this + 68) + 120);
      goto LABEL_67;
    case 64028:
      result = 0;
      v11 = *(*(this + 68) + 124);
      goto LABEL_67;
    case 64029:
      result = 0;
      v11 = *(*(this + 68) + 128);
      goto LABEL_67;
    case 64030:
      result = 0;
      v11 = *(*(this + 68) + 132);
      goto LABEL_67;
    case 64031:
      result = 0;
      v11 = *(*(this + 68) + 136);
      goto LABEL_67;
    case 64032:
      result = 0;
      v11 = *(*(this + 68) + 140);
LABEL_67:
      *a5 = v11;
      return result;
    case 64033:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 584;
      v26 = "%25s:%-5d kAUEndpointVAD2Property_RecurrentVADSpeechDetectionEvent cannot be directly accessed.";
      goto LABEL_102;
    case 64034:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 589;
      v26 = "%25s:%-5d kAUEndpointVAD2Property_RecurrentVADNonspeechDetectionEvent cannot be directly accessed.";
      goto LABEL_102;
    case 64035:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return 4294956449;
      }

      v27 = 136315394;
      v28 = "AUEndpointVAD2.cpp";
      v29 = 1024;
      v30 = 594;
      v26 = "%25s:%-5d kAUEndpointVAD2Property_EndpointerSpeechDetectionEvent cannot be directly accessed.";
      goto LABEL_102;
    case 64036:
      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v8 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          return 4294956449;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315394;
        v28 = "AUEndpointVAD2.cpp";
        v29 = 1024;
        v30 = 599;
        v26 = "%25s:%-5d kAUEndpointVAD2Property_EndpointerNonspeechDetectionEvent cannot be directly accessed.";
LABEL_102:
        _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v26, &v27, 0x12u);
      }

      return 4294956449;
    case 64037:
      result = 0;
      v9 = *(this + 139);
      goto LABEL_63;
    case 64038:
      result = 0;
      v12 = *(this + 70);
      goto LABEL_75;
    case 64039:
      result = 0;
      v12 = *(this + 71);
      goto LABEL_75;
    case 64040:
      result = 0;
      v9 = *(this + 144);
      goto LABEL_63;
    case 64041:
      result = 0;
      v12 = *(this + 73);
      goto LABEL_75;
    case 64042:
      result = 0;
      v12 = *(this + 74);
      goto LABEL_75;
    case 64043:
      result = 0;
      v10 = *(*(this + 68) + 32);
      goto LABEL_22;
    case 64044:
      result = 0;
      v10 = *(*(this + 68) + 48);
LABEL_22:
      v12 = *(v10 + 164);
LABEL_75:
      *a5 = v12;
      return result;
    default:
      if (a2 == 3700)
      {
        result = 0;
        v9 = *(this + 376);
      }

      else
      {
        if (a2 != 21)
        {
          return 4294956417;
        }

        v9 = (*(*this + 576))(this);
        result = 0;
      }

LABEL_63:
      *a5 = v9;
      break;
  }

  return result;
}

uint64_t AUEndpointVAD2::GetPropertyInfo(AUEndpointVAD2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 64010:
      v7 = *(this + 17) ^ 1;
      goto LABEL_6;
    case 64011:
    case 64013:
    case 64016:
    case 64018:
    case 64021:
      v7 = 0;
      v8 = 0;
      goto LABEL_20;
    case 64012:
    case 64017:
      v7 = 0;
      v8 = 40;
      goto LABEL_20;
    case 64014:
    case 64015:
    case 64019:
    case 64020:
    case 64037:
    case 64040:
      goto LABEL_11;
    case 64022:
      v7 = 1;
      goto LABEL_16;
    case 64023:
      v8 = 8;
      goto LABEL_19;
    case 64024:
      v8 = 0;
      v7 = *(this + 156) != 0;
      goto LABEL_20;
    case 64025:
    case 64026:
    case 64027:
    case 64028:
    case 64029:
    case 64030:
    case 64031:
    case 64032:
      v7 = *(this + 17) ^ 1;
      goto LABEL_12;
    case 64033:
    case 64034:
    case 64035:
    case 64036:
      v7 = 0;
LABEL_16:
      v8 = 1;
      goto LABEL_20;
    case 64038:
    case 64039:
    case 64041:
    case 64042:
    case 64043:
    case 64044:
      v7 = 0;
LABEL_6:
      v8 = 8;
      goto LABEL_20;
    default:
      if (a2 == 21)
      {
        v8 = 4;
LABEL_19:
        v7 = 1;
      }

      else
      {
        if (a2 != 3700)
        {
          return 4294956417;
        }

LABEL_11:
        v7 = 0;
LABEL_12:
        v8 = 4;
      }

LABEL_20:
      result = 0;
      *a6 = v7 & 1;
      *a5 = v8;
      break;
  }

  return result;
}

uint64_t AUEndpointVAD2::Reset(AUEndpointVAD2 *this)
{
  if (*(this + 17) == 1 && *(this + 156))
  {
    (*(*this + 56))(this);
  }

  return 0;
}

uint64_t AUEndpointVAD2::Initialize(AUEndpointVAD2 *this)
{
  v17 = *MEMORY[0x1E69E9840];
  (*(*this + 64))(this);
  *(this + 156) = 0;
  *(this + 632) = 0u;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_32;
  }

  v3 = *(Element + 80);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_32;
  }

  if (v3 != *(v4 + 80))
  {
    return 4294956421;
  }

  v6 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v6)
  {
    goto LABEL_32;
  }

  if (*(v6 + 80) < 8000.0)
  {
    if (EndpointVAD2LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
    }

    if (EndpointVAD2LogScope(void)::scope)
    {
      v7 = *EndpointVAD2LogScope(void)::scope;
      if (!*EndpointVAD2LogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AUEndpointVAD2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 92;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Audio sampling rate must be 8000 Hz or higher.", buf, 0x12u);
    }

    return 4294956421;
  }

  if (*(this + 552) == 1)
  {
    v8 = *(this + 68);
    if (ausdk::AUScope::GetElement((this + 80), 0))
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "");
      if (*(v8 + 152) && *(v8 + 160))
      {
        if (*(v8 + 8) == 1)
        {
          *(v8 + 8) = 0;
          *(v8 + 304) = 0;
          *(v8 + 368) = *(v8 + 360);
        }

        valuePtr = 0;
        Value = CFDictionaryGetValue(*(v8 + 144), @"VADMode");
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
        {
          *(v8 + 24) = valuePtr;
          v16 = 0;
          memset(buf, 0, sizeof(buf));
          operator new();
        }

        std::string::__assign_external(&v14, "Failed to read VAD mode from plist.", 0x23uLL);
      }

      else
      {
        std::string::__assign_external(&v14, "At least one settings dictionary is null. You must load all settings before initializing.", 0x59uLL);
      }

      if (EndpointVAD2LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
      }

      if (EndpointVAD2LogScope(void)::scope)
      {
        v11 = *EndpointVAD2LogScope(void)::scope;
        if (!*EndpointVAD2LogScope(void)::scope)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = &v14;
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v14.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "EndpointVAD2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 283;
        *&buf[18] = 2080;
        *&buf[20] = v12;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error initializing EndpointVAD2: %s", buf, 0x1Cu);
      }

LABEL_44:
      abort();
    }

LABEL_32:
    ausdk::Throw(0xFFFFD583);
  }

  if (EndpointVAD2LogScope(void)::once != -1)
  {
    dispatch_once(&EndpointVAD2LogScope(void)::once, &__block_literal_global_6);
  }

  if (!EndpointVAD2LogScope(void)::scope)
  {
    v10 = MEMORY[0x1E69E9C10];
LABEL_29:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AUEndpointVAD2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 107;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUEndpointVAD2: The top-level plist property is unset. Setting the AU to bypass mode (no VAD outputs).", buf, 0x12u);
    }

    goto LABEL_31;
  }

  v10 = *EndpointVAD2LogScope(void)::scope;
  if (*EndpointVAD2LogScope(void)::scope)
  {
    goto LABEL_29;
  }

LABEL_31:
  (*(*this + 584))(this, 1);
  return 0;
}

void sub_1DDECC2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

DspLib::LoudnessNormalizer::Algorithm *AULoudnessNormalizer::newDspLibAlgorithm(AULoudnessNormalizer *this)
{
  v1 = operator new(0x27C0uLL, 0x40uLL);
  DspLib::LoudnessNormalizer::Algorithm::Algorithm(v1);
  return v1;
}

uint64_t AULoudnessNormalizer::SupportedNumChannels(AULoudnessNormalizer *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULoudnessNormalizer::SupportedNumChannels(AUChannelInfo const**)::kSupportedNumChannels;
  }

  return 1;
}

uint64_t AULoudnessNormalizer::GetParameterValueStrings(AULoudnessNormalizer *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = *(*(this + 211) + 4 * a3);
  if ((v5 - 11) <= 1)
  {
    v6 = DspLib::LoudnessMeter::Parameters::kStateNames;
LABEL_4:
    v7 = v6 + 4;
    goto LABEL_17;
  }

  result = 4294956418;
  if (v5 <= 18)
  {
    if (v5 == 2)
    {
      v6 = DspLib::LoudnessNormalizer::Parameters::kRenderQualityNames;
      goto LABEL_4;
    }

    if (v5 != 16)
    {
      return result;
    }

    v6 = DspLib::LoudnessNormalizer::Parameters::kResetModeNames;
    v7 = DspLib::LoudnessNormalizer::Parameters::kGainCurveNames;
  }

  else
  {
    switch(v5)
    {
      case 19:
        v6 = DspLib::LoudnessNormalizer::Parameters::kAutomationModeNames;
        break;
      case 32:
        v6 = DspLib::LoudnessNormalizer::Parameters::kGainCurveNames;
        break;
      case 36:
        v6 = DspLib::LoudnessNormalizer::Parameters::kWeightingFilterNames;
        v7 = DspLib::LoudnessNormalizer::Parameters::kAutomationModeNames;
        goto LABEL_17;
      default:
        return result;
    }

    v7 = v6 + 3;
  }

LABEL_17:
  CFArray = applesauce::CF::details::make_CFArrayRef<char const*,char const* const*>(v6, v7);
  result = 0;
  *a4 = CFArray;
  return result;
}

uint64_t AULoudnessNormalizer::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = AUDspLib::RestoreState(this, a2);
  if (!result)
  {
    result = AUDspLib::loadDefaultAudioChannelLayout(this, a2);
    if (!result)
    {
      ausdk::AUBase::SetParameter(this, 1u, 0, 0, *&AULoudnessNormalizer::mSystemVolume_dB);
      return 0;
    }
  }

  return result;
}

uint64_t AULoudnessNormalizer::GetParameterInfo(AULoudnessNormalizer *this, int a2, signed int a3, AudioUnitParameterInfo *buffer)
{
  if (a3 <= 1000)
  {
    switch(a3)
    {
      case 100:
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x42480000C2480000;
        *&buffer->defaultValue = 0x4800800000000000;
        v5 = @"total momentary gain";
        goto LABEL_20;
      case 101:
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x42480000C2480000;
        *&buffer->defaultValue = 0x4800800000000000;
        v5 = @"momentary max gain parameter value";
        goto LABEL_20;
      case 1000:
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&buffer->minValue = 0x4316000000000000;
        *&buffer->defaultValue = 0xC800200000000000;
        v5 = @"environmental noise dB SPL - raw";
        goto LABEL_20;
    }
  }

  else if (a3 > 1003)
  {
    if (a3 == 1004)
    {
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v5 = @"environmental noise dB SPL - smooth";
      *&buffer->minValue = 0x4316000000000000;
      buffer->cfNameString = @"environmental noise dB SPL - smooth";
      buffer->defaultValue = 0.0;
      buffer->flags = 1208000512;
LABEL_21:
      CFStringGetCString(v5, buffer->name, 52, 0x8000100u);
      return 0;
    }

    if (a3 == 1937141612)
    {
      AUDspLib::GetParameterInfo(this, a2, 1u, buffer);
      buffer->flags += 0x10000000;
      return 0;
    }
  }

  else
  {
    if (a3 == 1001)
    {
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x3F80000000000000;
      *&buffer->defaultValue = 0xC800200000000000;
      v5 = @"environmental wind activity";
      goto LABEL_20;
    }

    if (a3 == 1002)
    {
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      *&buffer->defaultValue = 0xC800200000000000;
      v5 = @"environmental self voice activity";
LABEL_20:
      buffer->cfNameString = v5;
      goto LABEL_21;
    }
  }

  return AUDspLib::GetParameterInfo(this, a2, a3, buffer);
}

uint64_t AULoudnessNormalizer::SetParameter(AULoudnessNormalizer *this, unsigned int a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a4;
  v7 = a3;
  if (a2 > 1001)
  {
    if (a2 == 1002)
    {
      result = (*(*this + 632))(this, 0);
      if (!result)
      {
        return result;
      }

      *(*(this + 66) + 780) = roundf(a5) != 0.0;
      v11 = this;
      v12 = 1002;
      goto LABEL_52;
    }

    if (a2 == 1937141612)
    {
      (*(*this + 152))(this, 1, a3, a4, a5);
      v11 = this;
      v12 = 1937141612;
LABEL_52:

      return ausdk::AUBase::SetParameter(v11, v12, v7, v6, a5);
    }

LABEL_9:
    if (*(this + 212) <= a2)
    {
      return 4294956418;
    }

    v13 = *(*(this + 211) + 4 * a2);
    if (v13 <= 39)
    {
      if (v13 == 1)
      {
        AULoudnessNormalizer::mSystemVolume_dB = LODWORD(a5);
        if ((*(*this + 632))(this, 0))
        {
          (*(**(this + 66) + 120))(*(this + 66), 1, a5);
        }

        v33 = *(this + 68);
        if (*(this + 69) != v33)
        {
          *(v33 + 4) = a5;
        }

        goto LABEL_51;
      }

      if (v13 != 34)
      {
LABEL_59:

        return AUDspLib::SetParameter(this, a2, a3, a4, a5);
      }
    }

    else
    {
      if (v13 == 40)
      {
        if ((*(*this + 632))(this, 0))
        {
          v32 = *(this + 68);
          if (*(this + 69) != v32)
          {
            *(v32 + 160) = a5;
          }

          goto LABEL_50;
        }

LABEL_51:
        v11 = this;
        v12 = a2;
        goto LABEL_52;
      }

      if (v13 != 47)
      {
        if (v13 == 62)
        {
          v14 = *(this + 68);
          if (*(this + 69) != v14)
          {
            *(v14 + 248) = a5;
          }

          if (!(*(*this + 632))(this, 0))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        goto LABEL_59;
      }
    }

    if ((*(*this + 632))(this, 0))
    {
      v31 = *(this + 68);
      if (*(this + 69) != v31)
      {
        *(v31 + 4 * v13) = a5;
      }

LABEL_50:
      (*(**(this + 66) + 120))(a5);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  if (a2 != 1000)
  {
    if (a2 == 1001)
    {
      result = (*(*this + 632))(this, 0);
      if (!result)
      {
        return result;
      }

      *(*(this + 66) + 784) = a5;
      v11 = this;
      v12 = 1001;
      goto LABEL_52;
    }

    goto LABEL_9;
  }

  result = (*(*this + 632))(this, 0);
  if (result)
  {
    v15 = *(this + 66);
    v16 = *(v15 + 808);
    v17 = *(v15 + 824);
    *(v15 + 832) = a5;
    *(v15 + 824) = v16;
    v18 = v16 - v17;
    if (v18)
    {
      *(v15 + 836) = *(v15 + 836) + (((*(v15 + 776) / v18) - *(v15 + 836)) * 0.05);
    }

    if ((*(v15 + 780) & 1) == 0 && (*(v15 + 781) & 1) == 0)
    {
      v19 = *(v15 + 788);
      if (v19 >= a5)
      {
        v19 = a5;
      }

      if (a5 < 0.0)
      {
        v19 = 0.0;
      }

      v20 = *(v15 + 792);
      v21 = 1.0;
      v22 = 1.0;
      if (v19 <= v20)
      {
        v22 = *(v15 + 752);
      }

      v23 = v20 + (v22 * (v19 - v20));
      *(v15 + 792) = v23;
      v24 = *(v15 + 796);
      if (v19 > v24)
      {
        v21 = *(v15 + 756);
      }

      v25 = v24 + (v21 * (v19 - v24));
      *(v15 + 796) = v25;
      v26 = (v23 - v25) * 0.08;
      if (v26 <= 1.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1.0;
      }

      v28 = 1.0 - v27;
      if (v26 < 0.0)
      {
        v28 = 1.0;
      }

      v29 = *(v15 + 800);
      if (v19 <= v29)
      {
        if (*(v15 + 816) < 1)
        {
          v30 = *(v15 + 768);
        }

        else
        {
          v30 = *(v15 + 772);
        }
      }

      else
      {
        v30 = (*(v15 + 764) * (1.0 - (v28 * v28))) + ((v28 * v28) * *(v15 + 760));
      }

      *(v15 + 800) = v29 + (v30 * (v19 - v29));
    }

    (*(*v15 + 120))(v15, 63, *(v15 + 800));
    v34 = *(this + 68);
    if (*(this + 69) != v34)
    {
      *(v34 + 252) = *(*(this + 66) + 800);
    }

    v35 = ausdk::AUBase::SetParameter(this, 0x3E8u, v7, v6, a5);
    return ausdk::AUBase::SetParameter(this, 0x3ECu, 0, 0, *(*(this + 66) + 800)) | v35;
  }

  return result;
}

uint64_t AULoudnessNormalizer::GetParameter(DspLib::LoudnessNormalizer::Algorithm **this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2 == 101)
  {
    v12 = 0.0;
    ausdk::AUBase::GetParameter(this, 0, 0, 0, &v12);
    v9 = (*(*this + 79))(this, 0);
    LODWORD(v8) = 0;
    if (v9 && (*(this + 2113) & 1) == 0 && v12 != 0.0)
    {
      v10 = (*(*this[66] + 152))(this[66], 0, 0.0, v12);
      DspLib::LoudnessNormalizer::Parameters::maxGain(v10);
    }

    goto LABEL_11;
  }

  if (a2 == 100)
  {
    v13 = 0.0;
    ausdk::AUBase::GetParameter(this, 0, 0, 0, &v13);
    v7 = (*(*this + 79))(this, 0);
    LODWORD(v8) = 0;
    if (v7 && (*(this + 2113) & 1) == 0 && v13 != 0.0)
    {
      v8 = DspLib::LoudnessNormalizer::Algorithm::totalMomentaryGainIndB(this[66]);
    }

LABEL_11:
    *a5 = *&v8;
    return 0;
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AULoudnessNormalizer::SetProperty(AULoudnessNormalizer *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  if (a2 == 1920165236)
  {
    if (!(*(*this + 632))(this, 0))
    {
      return 0;
    }

    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    v9 = *a5;
    if (*a5 == 2)
    {
      v14 = atomic_load(this + 1821);
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v9 != 1)
    {
      if (!v9)
      {
        v10 = *(this + 66);
        v11 = (*(*v10 + 152))(v10, 0);
        DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(v11);
LABEL_13:
        DspLib::LoudnessNormalizer::Algorithm::resetLoudnessHistory(v10, v12);
      }

LABEL_14:
      caulk::pooled_semaphore_mutex::_unlock((this + 1824));
      return 0;
    }

    v10 = *(this + 66);
    v15 = (*(*v10 + 152))(v10, 0);
    v12 = DspLib::LoudnessNormalizer::Parameters::maxGainKneePoint(v15);
    goto LABEL_13;
  }

  return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AULoudnessNormalizer::GetPropertyInfo(AULoudnessNormalizer *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 1920165236)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  *a6 = 1;
  *a5 = 4;
  return 0;
}

uint64_t AULoudnessNormalizer::Initialize(AULoudnessNormalizer *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 108);
  if (v3 >= 3 && v3 != *(this + 900))
  {
    return 4294956428;
  }

  return AUDspLib::Initialize(this);
}

void AULoudnessNormalizer::~AULoudnessNormalizer(AULoudnessNormalizer *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

void AULoudnessNormalizer::AULoudnessNormalizer(AULoudnessNormalizer *this, OpaqueAudioComponentInstance *a2)
{
  v4 = 0uLL;
  v5 = 0;
  v3 = AUDspLib::AUDspLib(this, a2, &DspLib::LoudnessNormalizer::Parameters::kParameterList, &v4, @"AULoudnessNormalizer_ViewFactory", 0);
  *v3 = &unk_1F592BAE0;
  ausdk::AUBase::SetParameter(v3, 0x73766F6Cu, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x3E8u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x3ECu, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x3E9u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x3EAu, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x64u, 0, 0, 0.0);
  ausdk::AUBase::SetParameter(this, 0x65u, 0, 0, 0.0);
}

void clsp::ParameterUpdater::GetArraysData(CFDictionaryRef *this, const CACFDictionary *a2, const __CFString *a3, uint64_t a4, double *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0.0;
  if (!CFDictionaryContainsKey(*this, a2))
  {
    theArray = a2;
    LOBYTE(v20) = 1;
    *v17 = 512;
    CACFString::GetCString(a2, &v22, v17, v9);
    snprintf(__str, 0x200uLL, "Key not found in inConfig: %s", &v22);
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, __str);
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v20 = 257;
  CACFDictionary::GetCACFArray(this, a2, &theArray);
  Count = CFArrayGetCount(theArray);
  if (Count != (&a3->isa + 1))
  {
    *v17 = a2;
    v18 = 1;
    *v16 = 512;
    CACFString::GetCString(a2, &v22, v16, v11);
    snprintf(__str, 0x200uLL, "Key does not have proper length in inConfig: %s", &v22);
    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, __str);
    v15->__vftable = (MEMORY[0x1E69E55C8] + 16);
  }

  v12 = 0;
  v13 = Count;
  do
  {
    CACFArray::GetFloat64(&theArray, v12, &v21);
    *(a4 + 8 * v12++) = v21;
  }

  while (v13 != v12);
  CACFArray::~CACFArray(&theArray);
}

void sub_1DDECD648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  CACFString::~CACFString(&a11);
  CACFArray::~CACFArray(&a13);
  _Unwind_Resume(a1);
}

void clsp::SpeakerParameters::~SpeakerParameters(clsp::SpeakerParameters *this)
{
  v2 = *(this + 126);
  if (v2)
  {
    *(this + 127) = v2;
    operator delete(v2);
  }

  v3 = *(this + 123);
  if (v3)
  {
    *(this + 124) = v3;
    operator delete(v3);
  }

  v4 = *(this + 120);
  if (v4)
  {
    *(this + 121) = v4;
    operator delete(v4);
  }
}

clsp::FirFilter *clsp::FirFilter::FirFilter(clsp::FirFilter *this, CFArrayRef *a2, double a3)
{
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
  }

  else
  {
    Count = 0;
  }

  std::vector<float>::vector[abi:ne200100](this, Count);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (*a2)
  {
    v7 = CFArrayGetCount(*a2);
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        CACFArray::GetFloat32(a2, v10++, (*this + v9));
        v9 += 4;
      }

      while (v8 != v10);
    }
  }

  v11 = a3;
  v12 = DspLib::FFT::resampleFIRfilterSize(((*(this + 1) - *this) >> 2), 48000.0, v11);
  std::vector<float>::resize(this + 3, v12);
  std::vector<float>::resize(this + 6, v12);
  DspLib::FFT::resampleFIRfilter(*this, (*(this + 1) - *this) >> 2, *(this + 3), 48000.0, v11, (*(this + 4) - *(this + 3)) >> 2, 1);
  return this;
}

void sub_1DDECD824(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void clsp::FirFilter::firlsfilter(clsp::FirFilter *this, float *a2, float *__C, unsigned int a4)
{
  if (a4)
  {
    v7 = (*(this + 4) - *(this + 3)) >> 2;
    v8 = a4;
    do
    {
      v9 = *(this + 6);
      v10 = *(this + 7) - 4;
      if (v10 != v9)
      {
        memmove(v9 + 1, v9, v10 - v9);
        v9 = *(this + 6);
      }

      v11 = *a2++;
      *v9 = v11;
      vDSP_dotpr(*(this + 6), 1, *(this + 3), 1, __C++, v7);
      --v8;
    }

    while (v8);
  }
}

uint64_t AUResidualEchoSuppressorV3::ChangeStreamFormat(AUResidualEchoSuppressorV3 *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (v7 != 2 || v6)
  {
    if (v7 == 1 && v6 <= 2)
    {
      v9 = this + 540;
      v9[v6] = a5->mFormatID == 1718773105;
    }
  }

  else
  {
    *(this + 544) = a5->mFormatID == 1718773105;
  }

  return 0;
}

uint64_t AUResidualEchoSuppressorV3::ValidFormat(AUResidualEchoSuppressorV3 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (a4->mChannelsPerFrame != 1)
  {
    return 0;
  }

  v14 = v4;
  v15 = v5;
  v8 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (v8 == 1)
  {
    if (a3 > 2 || result == 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v8 != 2)
  {
    return result;
  }

  if (result)
  {
    return 1;
  }

  result = 0;
  if (!a3)
  {
LABEL_11:
    if (a4->mFormatID == 1718773105)
    {
      v10 = *&a4->mBytesPerPacket;
      v11[0] = *&a4->mSampleRate;
      v11[1] = v10;
      v12 = *&a4->mBitsPerChannel;
      DWORD2(v11[0]) = 1819304813;
      v13 = 0;
      LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v11, &v13, 0);
      if (v13 == 4)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV3::SupportedNumChannels(AUResidualEchoSuppressorV3 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUResidualEchoSuppressorV3::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUResidualEchoSuppressorV3::GetParameterInfo(AUResidualEchoSuppressorV3 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->unitName = 0;
  buffer->flags = 0x40000000;
  result = 4294956418;
  if (!a2 && a3 <= 0x23)
  {
    v6 = off_1E866CB38[a3];
    v7 = dword_1DE0E9E1C[a3];
    v8 = flt_1DE0E9EAC[a3];
    v9 = flt_1DE0E9F3C[a3];
    v10 = flt_1DE0E9FCC[a3];
    v11 = dword_1DE0EA05C[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV3::Render(AUResidualEchoSuppressorV3 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v32[4] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    goto LABEL_45;
  }

  v10 = v9;
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v12 = v11;
  if (v13)
  {
    v12 = ausdk::AUInputElement::PullInput(v11, a2, a3, 0, a4);
  }

  if (!v12)
  {
    v14 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v14 && *(v14 + 172))
    {
      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v16)
      {
        v12 = ausdk::AUInputElement::PullInput(v15, a2, a3, 1, a4);
      }

      else
      {
        v12 = v15;
      }

      v17 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!v17)
      {
        goto LABEL_45;
      }

      if (!*(v17 + 144))
      {
        goto LABEL_49;
      }

      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v17 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v17)
      {
        goto LABEL_45;
      }

      if (!*(v17 + 144))
      {
        goto LABEL_49;
      }
    }

    v19 = *(v17 + 152);
    v20 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (v20 && *(v20 + 172))
    {
      v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
      if (v22)
      {
        v12 = ausdk::AUInputElement::PullInput(v21, a2, a3, 2, a4);
      }

      else
      {
        v12 = v21;
      }

      v23 = ausdk::AUScope::GetElement((this + 80), 2u);
      if (!v23)
      {
        goto LABEL_45;
      }

      if (!*(v23 + 144))
      {
        goto LABEL_49;
      }

      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v23 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v23)
      {
        goto LABEL_45;
      }

      if (!*(v23 + 144))
      {
        goto LABEL_49;
      }
    }

    v24 = *(v23 + 152);
    v25 = ausdk::AUScope::GetElement((this + 80), 3u);
    if (!v25 || !*(v25 + 172))
    {
      v28 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v28)
      {
        goto LABEL_45;
      }

      if (!*(v28 + 144))
      {
        goto LABEL_49;
      }

LABEL_41:
      v29 = *(v28 + 152);
      v30 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v30)
      {
        if (*(v30 + 144))
        {
          v32[0] = *(v30 + 152) + 48;
          v32[1] = v19 + 48;
          v32[2] = v24 + 48;
          v32[3] = v29 + 48;
          if (*(v10 + 144))
          {
            v31 = *(v10 + 152) + 48;
            return (*(*this + 184))(this, a2, a4, 4, v32, 1, &v31);
          }
        }

LABEL_49:
        ausdk::Throw(0xFFFFFFFFLL);
      }

LABEL_45:
      ausdk::Throw(0xFFFFD583);
    }

    v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 3u);
    if (v27)
    {
      v12 = ausdk::AUInputElement::PullInput(v26, a2, a3, 3, a4);
    }

    else
    {
      v12 = v26;
    }

    v28 = ausdk::AUScope::GetElement((this + 80), 3u);
    if (!v28)
    {
      goto LABEL_45;
    }

    if (!*(v28 + 144))
    {
      goto LABEL_49;
    }

    if (!v12)
    {
      goto LABEL_41;
    }
  }

  return v12;
}

uint64_t AUResidualEchoSuppressorV3::ProcessMultipleBufferLists(AUResidualEchoSuppressorV3 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v182[2] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  if (!(*(*this + 576))(this, a2))
  {
    v13 = *(this + 133);
    if (v13 != *(this + 134))
    {
      v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_92;
      }

      Parameter = ausdk::AUElement::GetParameter(v14, 1u);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_92;
      }

      v19 = ausdk::AUElement::GetParameter(v17, 2u);
      v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_92;
      }

      v22 = ausdk::AUElement::GetParameter(v20, 8u);
      v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_92;
      }

      v25 = ausdk::AUElement::GetParameter(v23, 9u);
      v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_92;
      }

      v28 = ausdk::AUElement::GetParameter(v26, 0xAu);
      v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_92;
      }

      v31 = ausdk::AUElement::GetParameter(v29, 0xBu);
      v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_92;
      }

      v34 = ausdk::AUElement::GetParameter(v32, 0xCu);
      v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_92;
      }

      v179 = v31;
      v178 = ausdk::AUElement::GetParameter(v35, 0xDu);
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_92;
      }

      v39 = ausdk::AUElement::GetParameter(v37, 0xEu);
      v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_92;
      }

      v42 = ausdk::AUElement::GetParameter(v40, 0xFu);
      v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_92;
      }

      v177 = ausdk::AUElement::GetParameter(v43, 0x10u);
      v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_92;
      }

      v176 = ausdk::AUElement::GetParameter(v45, 0x11u);
      v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_92;
      }

      v175 = ausdk::AUElement::GetParameter(v47, 0x12u);
      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_92;
      }

      v174 = ausdk::AUElement::GetParameter(v49, 0x13u);
      v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_92;
      }

      v173 = v42;
      v172 = ausdk::AUElement::GetParameter(v51, 0x14u);
      v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_92;
      }

      v55 = ausdk::AUElement::GetParameter(v53, 0x15u);
      v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v57 & 1) == 0)
      {
        goto LABEL_92;
      }

      v171 = ausdk::AUElement::GetParameter(v56, 0x16u);
      v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v59 & 1) == 0)
      {
        goto LABEL_92;
      }

      v170 = v28;
      v169 = ausdk::AUElement::GetParameter(v58, 0x17u);
      v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_92;
      }

      v62 = v34;
      v168 = v39;
      v63 = ausdk::AUElement::GetParameter(v60, 0x18u);
      v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v65 & 1) == 0)
      {
        goto LABEL_92;
      }

      v66 = ausdk::AUElement::GetParameter(v64, 0x19u);
      v67 = *(this + 70);
      *(v67 + 36) = vneg_s32(vabs_s32(__PAIR64__(v19, Parameter)));
      *(v67 + 44) = v22;
      v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v69 & 1) == 0)
      {
        goto LABEL_92;
      }

      v70 = ausdk::AUElement::GetParameter(v68, 0x1Au);
      v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v72 & 1) == 0)
      {
        goto LABEL_92;
      }

      v73 = ausdk::AUElement::GetParameter(v71, 0x1Bu);
      v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v75 & 1) == 0)
      {
        goto LABEL_92;
      }

      v167 = v73;
      v166 = ausdk::AUElement::GetParameter(v74, 0x1Cu);
      v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v77 & 1) == 0)
      {
        goto LABEL_92;
      }

      v165 = v70;
      v78 = ausdk::AUElement::GetParameter(v76, 0x1Eu);
      v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_92;
      }

      v164 = v13;
      v81 = ausdk::AUElement::GetParameter(v79, 0x1Du);
      v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v83 & 1) == 0)
      {
        goto LABEL_92;
      }

      v84 = v25;
      v85 = v63;
      v86 = v66;
      v87 = v78;
      v88 = v81;
      v163 = ausdk::AUElement::GetParameter(v82, 0x1Fu);
      v89 = __exp10f(v170 / 10.0);
      v90 = __exp10f(v179 / 10.0);
      v91 = __exp10f(v62 / 10.0);
      v92 = __exp10f(v177 / 10.0);
      v93 = __exp10f(v176 / 10.0);
      v94 = __exp10f(v175 / 10.0);
      v95 = __exp10f(v174 / 10.0);
      v96 = __exp10f(v172 / 10.0);
      v97 = *(this + 70);
      *(v97 + 496) = v84;
      *(v97 + 500) = v89;
      *(v97 + 504) = v90;
      *(v97 + 508) = v91;
      *(v97 + 556) = v178;
      *(v97 + 512) = v168;
      *(v97 + 516) = v173;
      *(v97 + 520) = v92;
      *(v97 + 524) = v93;
      *(v97 + 528) = v94;
      *(v97 + 532) = v95;
      *(v97 + 536) = v96;
      *(v97 + 540) = v55;
      *(v97 + 548) = v171;
      *(v97 + 552) = v169;
      *(v97 + 572) = v85;
      *(v97 + 576) = v86;
      v98 = *(v97 + 8);
      v99 = *(v97 + 12) * 0.5;
      v100 = v99 / v98;
      v101 = fmaxf(v165, 300.0);
      if (v101 < v99)
      {
        v99 = v101;
      }

      v102 = vcvtms_u32_f32(v99 / v100);
      if (v102 < v98)
      {
        v98 = v102;
      }

      *(v97 + 664) = v98;
      *(v97 + 668) = v167;
      *(v97 + 672) = v166;
      *v97 = v88;
      v103 = v87 < 0 ? v87 : -v87;
      *(v97 + 32) = v103;
      v104 = __exp10f(v103 * 0.1);
      *(v97 + 56) = v104;
      *(v97 + 60) = sqrtf(v104);
      v105 = v163;
      *(v97 + 48) = v163;
      *(v97 + 52) = __exp10f(v105 * 0.1);
      v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v107 & 1) == 0)
      {
        goto LABEL_92;
      }

      *(*(this + 70) + 688) = ausdk::AUElement::GetParameter(v106, 0x21u);
      v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      v109 = v164;
      if ((v110 & 1) == 0)
      {
        goto LABEL_92;
      }

      v111 = ausdk::AUElement::GetParameter(v108, 0x22u);
      v112 = *(this + 70);
      *(v112 + 680) = 1.0 - expf(-1.0 / (v111 * (*(v112 + 12) / *(v112 + 8))));
      if (!*v112)
      {
        *(v112 + 676) = 0;
      }

      *(this + 134) = v109;
    }

    v113 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v114 & 1) == 0)
    {
      goto LABEL_92;
    }

    v115 = ausdk::AUElement::GetParameter(v113, 6u);
    v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v117 & 1) == 0)
    {
      goto LABEL_92;
    }

    v118 = ausdk::AUElement::GetParameter(v116, 7u);
    v119 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v120 & 1) == 0)
    {
      goto LABEL_92;
    }

    v121 = ausdk::AUElement::GetParameter(v119, 0xDu);
    v122 = *(this + 70);
    *(v122 + 488) = v115;
    *(v122 + 492) = v118;
    *(v122 + 556) = v121;
    v123 = *v122;
    v124 = *(this + 84);
    if (*v122 >= 2)
    {
      mData = 0;
      v126 = 0;
      v127 = 0;
      v128 = 0;
    }

    else
    {
      mData = a5[1]->mBuffers[0].mData;
      v126 = &mData[v124];
      v127 = a5[2]->mBuffers[0].mData;
      v128 = &v127[v124];
    }

    v129 = a5[3];
    if (v129)
    {
      v130 = v129->mBuffers[0].mData;
    }

    else
    {
      v130 = 0;
    }

    v131 = (*a5)->mBuffers[0].mData;
    v182[0] = mData;
    v182[1] = v126;
    v181[0] = v127;
    v181[1] = v128;
    if (mData)
    {
      v132 = v127 == 0;
    }

    else
    {
      v132 = 1;
    }

    v134 = !v132 && v123 < 2;
    if (v123 <= 1 && !v134 || *(this + 541) != 1)
    {
      v12 = 0xFFFFFFFFLL;
      goto LABEL_76;
    }

    v135 = *(this + 540);
    if (v135 == 1 && v131 && *(this + 542))
    {
      v180[0] = v131;
      v180[1] = &v131[v124];
      CResidualSuppressorV3::speex_preprocess_run_freq(v122, v180, v182, v181, v130);
      if (*(this + 544) == 1)
      {
        v136 = *(this + 70);
        v137 = *(v136 + 344);
        v138 = *(v136 + 352);
        v139 = (*a7)->mBuffers[0].mData;
        v140 = *(this + 84);
        v141 = &v139[4 * v140];
        memcpy(v139, v137, 4 * v140);
        memcpy(v141, v138, 4 * *(this + 84));
        memcpy(a7[1]->mBuffers[0].mData, *(*(this + 70) + 112), 4 * *(*(this + 70) + 8));
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
      if ((v135 & 1) != 0 || !v131 || !*(this + 542))
      {
        goto LABEL_76;
      }

      MEMORY[0x1EEE9AC00](v122);
      v148 = &v162 - ((v147 + 15) & 0x7FFFFFFF0);
      memcpy(v148, v149, 4 * *(this + 84));
      CResidualSuppressorV3::speex_preprocess_run(*(this + 70), v148, v182, v181, v130);
      if (*(this + 544) == 1)
      {
        v150 = *(this + 70);
        v151 = *(v150 + 344);
        v152 = *(v150 + 352);
        v153 = (*a7)->mBuffers[0].mData;
        v154 = *(this + 84);
        v155 = &v153[4 * v154];
        memcpy(v153, v151, 4 * v154);
        memcpy(v155, v152, 4 * *(this + 84));
        v156 = a7[1]->mBuffers[0].mData;
        v157 = *(this + 70);
        v158 = *(v157 + 112);
        v159 = 4 * *(v157 + 8);
      }

      else
      {
        v156 = (*a7)->mBuffers[0].mData;
        v159 = 4 * *(this + 84);
        v158 = v148;
      }

      memcpy(v156, v158, v159);
    }

    if (*(this + 138) == 2)
    {
      v160 = a7[1];
      mDataByteSize = v160->mBuffers[0].mDataByteSize;
      if (mDataByteSize >= 4)
      {
        memset_pattern16(v160->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((mDataByteSize >> 2) - 1) + 4);
      }
    }

    v12 = 0;
LABEL_76:
    v142 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v143)
    {
      ausdk::AUElement::SetParameter(v142, 0x20u, *(*(this + 70) + 220));
      if (**(this + 70) < 1)
      {
        return v12;
      }

      v144 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v145)
      {
        ausdk::AUElement::SetParameter(v144, 0x23u, *(*(this + 70) + 676));
        return v12;
      }
    }

LABEL_92:
    abort();
  }

  v10 = a7[1];
  v11 = v10->mBuffers[0].mDataByteSize;
  if (v11 >= 4)
  {
    memset_pattern16(v10->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((v11 >> 2) - 1) + 4);
  }

  if (*(this + 540) == *(this + 544))
  {
    memcpy((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
  }

  else
  {
    bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
  }

  return 0;
}

uint64_t AUResidualEchoSuppressorV3::SetParameter(AUResidualEchoSuppressorV3 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 <= 0x22 && ((1 << a2) & 0x6FFFFDF27) != 0)
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    ++*(this + 133);
    return 0;
  }

  else
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUResidualEchoSuppressorV3::SetProperty(AUResidualEchoSuppressorV3 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      v9 = *a5 != 0;
      if (v9 != (*(*this + 576))(this))
      {
        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV3::GetProperty(AUResidualEchoSuppressorV3 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v7 = *(this + 376);
    goto LABEL_7;
  }

  if (a2 == 21)
  {
    v7 = (*(*this + 576))(this);
LABEL_7:
    result = 0;
    *a5 = v7;
    return result;
  }

  return 4294956417;
}

uint64_t AUResidualEchoSuppressorV3::GetPropertyInfo(AUResidualEchoSuppressorV3 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

void AUResidualEchoSuppressorV3::Cleanup(AUResidualEchoSuppressorV3 *this)
{
  v2 = *(this + 70);
  if (v2)
  {
    CResidualSuppressorV3::speex_preprocess_state_res_destroy(v2);
    *(this + 70) = 0;
  }
}

uint64_t AUResidualEchoSuppressorV3::Initialize(AUResidualEchoSuppressorV3 *this)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v2;
    Element = ausdk::AUScope::GetElement((this + 80), v3 - 1);
    if (!Element)
    {
      goto LABEL_29;
    }

    v6 = Element;
    v7 = ausdk::AUScope::GetElement((this + 80), v3);
    if (!v7)
    {
      goto LABEL_29;
    }

    if (*(v6 + 80) != *(v7 + 80))
    {
      return 4294956428;
    }

    v3 = 2;
    v2 = 1;
  }

  while ((v4 & 1) == 0);
  v8 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = *(v8 + 80);
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_29;
  }

  if (v9 != *(v10 + 80))
  {
    return 4294956428;
  }

  *(this + 137) = *(this + 84);
  v11 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v11 || (*(this + 540) = *(v11 + 88) == 1718773105, (v12 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (*(this + 541) = *(v12 + 88) == 1718773105, (v13 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0) || (*(this + 542) = *(v13 + 88) == 1718773105, (v14 = ausdk::AUScope::GetElement((this + 80), 3u)) == 0) || (*(this + 543) = *(v14 + 88) == 1718773105, (v15 = ausdk::AUScope::GetElement((this + 128), 0)) == 0) || (*(this + 544) = *(v15 + 88) == 1718773105, (v16 = ausdk::AUScope::GetElement((this + 128), 1u)) == 0) || (*(this + 545) = *(v16 + 88) == 1718773105, (v17 = ausdk::AUScope::GetElement((this + 80), 0)) == 0) || (v18 = *(v17 + 80), v20 = *(v17 + 88), v19 = *(v17 + 92), v21 = *(v17 + 104), v22 = *(v17 + 108), (v23 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (v24 = *(v23 + 80), v26 = *(v23 + 88), v25 = *(v23 + 92), v27 = *(v23 + 104), v28 = *(v23 + 108), (v29 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0))
  {
LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  if (v18 == v24)
  {
    v34 = v29[22];
    v33 = v29[23];
    if ((v20 == 1819304813 || v20 == 1718773105) && (v19 & 2) == 0 && v22 == 1 && ((v19 & 1) != 0 || v21 == 2))
    {
      if ((v26 == 1819304813 || v26 == 1718773105) && (v25 & 2) == 0 && v28 == 1 && ((v25 & 1) != 0 || v27 == 2) && (v34 == 1819304813 || v34 == 1718773105) && (v33 & 2) == 0 && v29[27] == 1 && ((v33 & 1) != 0 || v29[26] == 2))
      {
        v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v37)
        {
          ausdk::AUElement::GetParameter(v36, 1u);
          v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v39)
          {
            ausdk::AUElement::GetParameter(v38, 2u);
            v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v41)
            {
              *(this + 138) = ausdk::AUElement::GetParameter(v40, 8u);
              v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v43)
              {
                ausdk::AUElement::GetParameter(v42, 9u);
                v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v45)
                {
                  ausdk::AUElement::GetParameter(v44, 0xAu);
                  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v47)
                  {
                    ausdk::AUElement::GetParameter(v46, 0xBu);
                    v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v49)
                    {
                      ausdk::AUElement::GetParameter(v48, 0xCu);
                      v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v51)
                      {
                        ausdk::AUElement::GetParameter(v50, 0xDu);
                        v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v53)
                        {
                          ausdk::AUElement::GetParameter(v52, 0xEu);
                          v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v55)
                          {
                            ausdk::AUElement::GetParameter(v54, 0xFu);
                            v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v57)
                            {
                              ausdk::AUElement::GetParameter(v56, 0x10u);
                              v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v59)
                              {
                                ausdk::AUElement::GetParameter(v58, 0x11u);
                                v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v61)
                                {
                                  ausdk::AUElement::GetParameter(v60, 0x12u);
                                  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v63)
                                  {
                                    ausdk::AUElement::GetParameter(v62, 0x13u);
                                    v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v65)
                                    {
                                      ausdk::AUElement::GetParameter(v64, 0x14u);
                                      v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v67)
                                      {
                                        ausdk::AUElement::GetParameter(v66, 0x15u);
                                        v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v69)
                                        {
                                          ausdk::AUElement::GetParameter(v68, 0x16u);
                                          v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v71)
                                          {
                                            ausdk::AUElement::GetParameter(v70, 0x17u);
                                            v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v73)
                                            {
                                              ausdk::AUElement::GetParameter(v72, 0x18u);
                                              v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v75)
                                              {
                                                ausdk::AUElement::GetParameter(v74, 0x19u);
                                                v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v77)
                                                {
                                                  ausdk::AUElement::GetParameter(v76, 0x1Au);
                                                  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v79)
                                                  {
                                                    ausdk::AUElement::GetParameter(v78, 0x1Bu);
                                                    v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v81)
                                                    {
                                                      ausdk::AUElement::GetParameter(v80, 0x1Cu);
                                                      v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v83)
                                                      {
                                                        ausdk::AUElement::GetParameter(v82, 0x1Eu);
                                                        v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                        if (v85)
                                                        {
                                                          ausdk::AUElement::GetParameter(v84, 0x1Du);
                                                          v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                          if (v87)
                                                          {
                                                            ausdk::AUElement::GetParameter(v86, 0x1Fu);
                                                            (*(*this + 64))(this);
                                                            CResidualSuppressorV3::speex_preprocess_state_res_init(*(this + 84), v18);
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        abort();
      }

      v30 = MEMORY[0x1E69E9848];
      v31 = *MEMORY[0x1E69E9848];
      v32 = "_vpio_res: check 3 failed!\n";
    }

    else
    {
      v30 = MEMORY[0x1E69E9848];
      v31 = *MEMORY[0x1E69E9848];
      v32 = "_vpio_res: check 2 failed!\n";
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E9848];
    v31 = *MEMORY[0x1E69E9848];
    v32 = "_vpio_res: check 1 failed!\n";
  }

  fwrite(v32, 0x1BuLL, 1uLL, v31);
  fflush(*v30);
  return 4294956428;
}

void AUResidualEchoSuppressorV3::~AUResidualEchoSuppressorV3(AUResidualEchoSuppressorV3 *this)
{
  AUResidualEchoSuppressorV3::~AUResidualEchoSuppressorV3(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592BD70;
  v2 = *(this + 70);
  if (v2)
  {
    CResidualSuppressorV3::speex_preprocess_state_res_destroy(v2);
    *(this + 70) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t SoftClipKernel::ProcessStereoNonInterleaved(SoftClipKernel *this, const AudioBufferList *a2, AudioBufferList *a3, unsigned int a4, BOOL *a5, __n128 a6)
{
  v10 = *(this + 1);
  v11 = v10[148];
  if (v11 != *(this + 12))
  {
    a6.n128_f32[0] = SoftClipKernel::CalculateCoeffs(this);
    *(this + 12) = v11;
  }

  result = (*(*v10 + 592))(v10, a6);
  if ((result & 1) == 0)
  {
    mData = a2->mBuffers[0].mData;
    v14 = *&a2[1].mBuffers[0].mNumberChannels;
    v15 = a3->mBuffers[0].mData;
    v16 = *&a3[1].mBuffers[0].mNumberChannels;
    if (*(this + 6) >= 1.0)
    {
      if (a4)
      {
        v29 = *(this + 10);
        v30 = -v29;
        v31 = a4;
        do
        {
          v32 = *mData++;
          v33 = v32;
          if (v32 >= v30)
          {
            v34 = v33;
          }

          else
          {
            v34 = -v29;
          }

          if (v33 <= v29)
          {
            v35 = v34;
          }

          else
          {
            v35 = v29;
          }

          *v15++ = v35;
          v36 = *v14++;
          v37 = v36;
          if (v36 >= v30)
          {
            v38 = v37;
          }

          else
          {
            v38 = -v29;
          }

          if (v37 <= v29)
          {
            v39 = v38;
          }

          else
          {
            v39 = v29;
          }

          *v16++ = v39;
          --v31;
        }

        while (v31);
      }
    }

    else if (a4)
    {
      v18 = *(this + 7);
      v17 = *(this + 8);
      v19 = *(this + 9);
      v20 = *(this + 10);
      v21 = *(this + 11);
      v22 = -v18;
      v23 = -v17;
      v24 = a4;
      do
      {
        v25 = *mData;
        v26 = v21 * *mData;
        if (*mData >= 0.0)
        {
          if (v26 > v18)
          {
            v25 = v20;
            if (v26 < v17)
            {
              v25 = v20 + (((v26 - v17) * (v26 - v17)) * v19);
            }
          }
        }

        else if (v26 < v22)
        {
          v25 = -v20;
          if (v26 >= v23)
          {
            v25 = (-((-v26 - v17) * (-v26 - v17)) * v19) - v20;
          }
        }

        *v15 = v25;
        v27 = *v14;
        v28 = v21 * *v14;
        if (*v14 >= 0.0)
        {
          if (v28 > v18)
          {
            v27 = v20;
            if (v28 < v17)
            {
              v27 = v20 + (((v28 - v17) * (v28 - v17)) * v19);
            }
          }
        }

        else if (v28 < v22)
        {
          v27 = -v20;
          if (v28 >= v23)
          {
            v27 = (-((-v28 - v17) * (-v28 - v17)) * v19) - v20;
          }
        }

        *v16++ = v27;
        ++v14;
        ++v15;
        ++mData;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

float SoftClipKernel::CalculateCoeffs(SoftClipKernel *this)
{
  v2 = *(this + 1);
  Parameter = ausdk::AUEffectBase::GetParameter(v2, 0x68617264u);
  v4 = __exp10f(Parameter * 0.05);
  v5 = ausdk::AUEffectBase::GetParameter(v2, 0x736F6674u);
  v6 = __exp10f(v5 * 0.05);
  if (v6 >= (v4 * 0.98))
  {
    v6 = v4;
  }

  *(this + 5) = v4;
  *(this + 6) = v6;
  v7 = v6 / v4;
  v8 = v4 / ((v7 + -1.0) * 4.0);
  *(this + 7) = v7;
  *(this + 8) = 2.0 - v7;
  *(this + 9) = v8;
  *(this + 10) = v4;
  result = 1.0 / v4;
  *(this + 11) = 1.0 / v4;
  return result;
}

uint64_t SoftClipKernel::Process(SoftClipKernel *this, float *a2, float *a3, int a4, BOOL *a5, __n128 a6)
{
  v10 = *(this + 1);
  v11 = v10[148];
  if (v11 != *(this + 12))
  {
    a6.n128_f32[0] = SoftClipKernel::CalculateCoeffs(this);
    *(this + 12) = v11;
  }

  result = (*(*v10 + 592))(v10, a6);
  if ((result & 1) == 0)
  {
    if (*(this + 6) >= 1.0)
    {
      if (a4)
      {
        v20 = *(this + 10);
        do
        {
          v21 = *a2++;
          v22 = v21;
          if (v21 >= -v20)
          {
            v23 = v22;
          }

          else
          {
            v23 = -v20;
          }

          if (v22 <= v20)
          {
            v24 = v23;
          }

          else
          {
            v24 = v20;
          }

          *a3++ = v24;
          --a4;
        }

        while (a4);
      }
    }

    else if (a4)
    {
      v14 = *(this + 7);
      v13 = *(this + 8);
      v15 = *(this + 9);
      v16 = *(this + 10);
      v17 = *(this + 11);
      do
      {
        v18 = *a2;
        v19 = v17 * *a2;
        if (*a2 >= 0.0)
        {
          if (v19 > v14)
          {
            v18 = v16;
            if (v19 < v13)
            {
              v18 = v16 + (((v19 - v13) * (v19 - v13)) * v15);
            }
          }
        }

        else if (v19 < -v14)
        {
          v18 = -v16;
          if (v19 >= -v13)
          {
            v18 = (-((-v19 - v13) * (-v19 - v13)) * v15) - v16;
          }
        }

        *a3++ = v18;
        ++a2;
        --a4;
      }

      while (a4);
    }
  }

  return result;
}