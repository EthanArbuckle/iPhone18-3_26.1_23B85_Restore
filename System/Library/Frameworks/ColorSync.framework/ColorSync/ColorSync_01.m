void CMMProfileInfoContainer::CMMProfileInfoContainer(CMMProfileInfoContainer *this, CFArrayRef theArray, const __CFDictionary *a3, CMMMemMgr *a4)
{
  Count = CFArrayGetCount(theArray);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = &unk_1F0E0C438;
  *(this + 5) = a4;
  v68 = a4;
  *this = &unk_1F0E0C418;
  *(this + 6) = 0;
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, Count, v9, v10);
  *this = &unk_1F0E08560;
  theArraya = theArray;
  v11 = CFArrayGetCount(theArray);
  v77 = 0;
  v78 = -1;
  memset(v79, 0, 15);
  if (v11)
  {
    v72 = 0;
    v14 = 0;
    v66 = v11 - 1;
    cf2 = *MEMORY[0x1E695E4D0];
    v67 = a3;
    v65 = v11;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v14);
      v76 = 0u;
      Value = CFDictionaryGetValue(ValueAtIndex, kColorSyncProfile);
      v17 = CFDictionaryGetValue(ValueAtIndex, kColorSyncRenderingIntent);
      v71 = CFDictionaryGetValue(ValueAtIndex, kColorSyncTransformTag);
      v18 = CFDictionaryContainsKey(ValueAtIndex, kColorSyncBlackPointCompensation);
      if (v18)
      {
        v19 = CFDictionaryGetValue(ValueAtIndex, kColorSyncBlackPointCompensation);
        LOBYTE(v20) = CFEqual(v19, cf2) != 0;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncExtendedRange))
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, kColorSyncExtendedRange);
        v22 = CFEqual(v21, cf2) != 0;
      }

      else
      {
        v22 = 1;
      }

      v70 = v22;
      BYTE3(v76) = 0;
      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncHDRDerivative) == 1)
      {
        v23 = CFDictionaryGetValue(ValueAtIndex, kColorSyncHDRDerivative);
        BYTE3(v76) = CFEqual(v23, kColorSyncHLGDerivative) != 0;
      }

      BYTE4(v76) = 0;
      if (CFDictionaryContainsKey(ValueAtIndex, kColorSyncHDRDerivative) == 1)
      {
        v24 = CFDictionaryGetValue(ValueAtIndex, kColorSyncHDRDerivative);
        BYTE4(v76) = CFEqual(v24, kColorSyncPQDerivative) != 0;
      }

      Profile = CMMProfileMaker::MakeProfile(Value, v68, ((BYTE3(v76) | BYTE4(v76)) & 1));
      v74 = Profile;
      if (CMMProfileMaker::IsMatrixBased(*(Profile + 2), *(Profile + 12), *(Profile + 13)))
      {
        IsMatrixHDRProfile = 1;
      }

      else
      {
        IsMatrixHDRProfile = CMMProfileMaker::IsMatrixHDRProfile(*(Profile + 2), *(Profile + 12), *(Profile + 13), 0);
      }

      LOBYTE(v76) = IsMatrixHDRProfile;
      v27 = *(Profile + 2);
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(0x6B545243u);
      LODWORD(v27) = ColorSyncProfileContainsTag(v27, SignatureFromFourCharCode);
      CFRelease(SignatureFromFourCharCode);
      v29 = v27 && *(v74 + 48) == 1196573017;
      BYTE1(v76) = v29;
      BYTE2(v76) = CMMProfileMaker::IsMatrixHDRProfile(*(v74 + 16), *(v74 + 48), *(v74 + 52), (BYTE3(v76) | BYTE4(v76)) & 1);
      BYTE10(v76) = v70;
      if (!v18)
      {
        v20 = (*(v74 + 76) >> 2) & 1;
      }

      BYTE9(v76) = v20;
      if (v67 && (v20 & 1) == 0 && CFDictionaryContainsKey(v67, kColorSyncBlackPointCompensation))
      {
        v30 = CFDictionaryGetValue(v67, kColorSyncBlackPointCompensation);
        BYTE9(v76) = CFEqual(v30, cf2) != 0;
      }

      if (CFEqual(v17, kColorSyncRenderingIntentUseProfileHeader))
      {
        v31 = *(v74 + 96);
        if (v31 >= 4)
        {
          v31 = 0;
        }
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentPerceptual))
      {
        v31 = 0;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentRelative))
      {
        v31 = 1;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentSaturation))
      {
        v31 = 2;
      }

      else if (CFEqual(v17, kColorSyncRenderingIntentAbsolute))
      {
        v31 = 3;
      }

      else
      {
        v31 = 0;
      }

      HIDWORD(v75) = v31;
      LODWORD(v75) = (*(*v74 + 64))(v74, v71, v14 == 0, v14 == v66);
      *(&v76 + 5) = 0;
      *(&v76 + 11) = 0;
      CICPInfo = ColorSyncProfileGetCICPInfo(Value);
      if (CICPInfo)
      {
        v33 = CICPInfo[1];
        BYTE7(v76) = (v33 < 0x10) & (0xC042u >> v33);
        BYTE5(v76) = v33 == 16;
        BYTE6(v76) = v33 == 18;
      }

      else
      {
        Tag = CMMProfile::GetTag(v74, 1751405638);
        if (Tag)
        {
          v36 = bswap32(*(*(Tag + 5) + 8));
          if (v36 == 1212958496)
          {
            BYTE6(v76) = 1;
          }

          else if (v36 == 1347493920)
          {
            BYTE5(v76) = 1;
          }
        }

        else
        {
          BYTE7(v76) = ColorSyncProfileUsesITU_R709OETF(*(v74 + 16));
          v54 = ColorSyncProfileUsesCoreVideoGamma(*(v74 + 16));
          BYTE8(v76) = v54;
          if (v54)
          {
            if (get_useITUBT1886ForDegamma(__CFDictionary const*)::predicate != -1)
            {
              dispatch_once(&get_useITUBT1886ForDegamma(__CFDictionary const*)::predicate, &__block_literal_global_993);
            }

            v55 = get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs;
            get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled = get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs;
            if (v67)
            {
              if (CFDictionaryContainsKey(v67, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
              {
                v55 = CFDictionaryGetValue(v67, kColorSyncUseBT1886ForCoreVideoGamma) == cf2;
                get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled = v55;
              }

              else
              {
                v55 = get_useITUBT1886ForDegamma(__CFDictionary const*)::enabled;
              }
            }

            BYTE11(v76) = v55 & 1;
            if (get_useITUBT1886ForEngamma(__CFDictionary const*)::predicate != -1)
            {
              dispatch_once(&get_useITUBT1886ForEngamma(__CFDictionary const*)::predicate, &__block_literal_global_997);
            }

            v64 = get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs;
            get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled = get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs;
            if (v67)
            {
              if (CFDictionaryContainsKey(v67, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
              {
                v64 = CFDictionaryGetValue(v67, kColorSyncUseBT1886ForCoreVideoGamma) == cf2;
                get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled = v64;
              }

              else
              {
                v64 = get_useITUBT1886ForEngamma(__CFDictionary const*)::enabled;
              }
            }

            BYTE12(v76) = v64 & 1;
          }
        }
      }

      if (BYTE7(v76) == 1 && !ColorSyncOptionsLegacyHDREcosystemRequested(v67))
      {
        v34 = current_or_newer_sdk();
        if (!v67 || !CFDictionaryContainsKey(v67, kColorSyncTransformUseITU709OETF))
        {
          if (!v34)
          {
            goto LABEL_52;
          }

LABEL_51:
          *(&v76 + 11) = 257;
          goto LABEL_52;
        }

        if (CFDictionaryGetValue(v67, kColorSyncTransformUseITU709OETF) != cf2)
        {
          goto LABEL_51;
        }
      }

LABEL_52:
      if (v14)
      {
        v37 = BYTE5(v79[0]) | (BYTE6(v79[0]) != 0);
        if (v67)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v37 = 0;
        if (v67)
        {
LABEL_54:
          v38 = CFDictionaryGetValue(v67, @"com.apple.cmm.SkipToneMappingForBT2100");
          v39 = CFDictionaryGetValue(v67, @"com.apple.cmm.ApplyToneMappingForBT2100");
          v40 = v38 == cf2;
          v41 = v39 == cf2;
          goto LABEL_57;
        }
      }

      v40 = 0;
      v41 = 0;
LABEL_57:
      if (BYTE2(v79[1]))
      {
        v42 = v72 == 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = v42;
      if (v14)
      {
        if (!((v40 || (BYTE2(v76) & (v43 | (!v70 || v41)) & 1) == 0) | v37 & 1))
        {
          v48 = ColorSyncProfileUsesITU_R709OETF(v72);
          if (v43)
          {
            v49 = BYTE6(v76);
            if (!v67)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v49 = 0;
            if (!v67)
            {
              goto LABEL_78;
            }
          }

          if (CFDictionaryContainsKey(v67, @"com.apple.cmm.HLGSurroundLuminance") == 1 && (BYTE6(v76) & 1) != 0)
          {
LABEL_79:
            v50 = ColorSyncOptionsLegacyHDREcosystemRequested(v67);
            if ((v49 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          else
          {
LABEL_78:
            if (ColorSyncOptionsGetHDRMediaReferenceWhite(v67) == 203.0)
            {
              goto LABEL_79;
            }

            v50 = 1;
            if ((v49 & 1) == 0)
            {
LABEL_90:
              v53 = 0;
              v51 = 0;
              v52 = 1;
LABEL_91:
              BYTE13(v76) = v53;
              BYTE14(v76) = v51;
              if (v43)
              {
                if (v48)
                {
                  BYTE3(v79[1]) = v52;
                }

                v56 = *(this + 6) - 1;
                v57 = *(this + 1);
                if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v57) >> 3) <= v56)
                {
                  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
                }

                v58 = v57 + 40 * v56;
                *(v58 + 8) = v77;
                *(v58 + 16) = v78;
                *(v58 + 24) = v79[0];
                *(v58 + 32) = v79[1];
                *(v58 + 36) = BYTE4(v79[1]);
                *(v58 + 37) = v53;
                *(v58 + 38) = v51;
              }

              goto LABEL_96;
            }
          }

          if (display_referred_mapping_on_SDR_to_HLG(void)::predicate != -1)
          {
            dispatch_once(&display_referred_mapping_on_SDR_to_HLG(void)::predicate, &__block_literal_global_1000);
          }

          v51 = display_referred_mapping_on_SDR_to_HLG(void)::enabled;
          v52 = display_referred_mapping_on_SDR_to_HLG(void)::enabled ^ 1;
          v53 = (display_referred_mapping_on_SDR_to_HLG(void)::enabled ^ 1) & v50;
          goto LABEL_91;
        }

        if (!v40 && (((BYTE2(v76) | v70) == 0) & BYTE2(v79[0])) != 0)
        {
          v44 = *(v74 + 16);
          v45 = ColorSyncProfileUsesITU_R709OETF(v44);
          v46 = ColorSyncProfileUsesCoreVideoGamma(v44);
          if (BYTE6(v79[0]) == 1)
          {
            v47 = v46;
            if (disable_ITUBT1886Inv_on_HLG_to_SDR(void)::predicate != -1)
            {
              dispatch_once(&disable_ITUBT1886Inv_on_HLG_to_SDR(void)::predicate, &__block_literal_global_1004);
            }

            if (disable_ITUBT1886Inv_on_HLG_to_SDR(void)::disabled == 1 && ((v45 | v47) & 1) != 0)
            {
              BYTE12(v76) = 0;
            }
          }
        }
      }

LABEL_96:
      v59 = *(this + 6);
      v60 = *(this + 1);
      v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v60) >> 3);
      if (v59 >= v61)
      {
        v62 = v65;
        do
        {
          std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, v61 + 10, v12, v13);
          v59 = *(this + 6);
          v60 = *(this + 1);
          v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v60) >> 3);
        }

        while (v59 >= v61);
      }

      else
      {
        v62 = v65;
      }

      *(this + 6) = v59 + 1;
      v63 = v60 + 40 * v59;
      *(v63 + 8) = v74;
      *(v63 + 16) = v75;
      *(v63 + 24) = v76;
      *(v63 + 32) = DWORD2(v76);
      *(v63 + 36) = WORD6(v76);
      *(v63 + 38) = BYTE14(v76);
      if (BYTE2(v76))
      {
        v72 = 0;
      }

      else
      {
        v72 = *(v74 + 16);
      }

      v77 = v74;
      v78 = v75;
      LOWORD(v79[0]) = v76;
      BYTE2(v79[0]) = BYTE2(v76);
      *(v79 + 3) = *(&v76 + 3);
      *(&v79[1] + 3) = *(&v76 + 11);
      ++v14;
    }

    while (v14 != v62);
  }

  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(this + 8, *(this + 6), v12, v13);
}

void sub_19A91ED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef ColorSyncCMMCreateAppleCMM()
{
  pthread_mutex_lock(&ColorSyncCMMCreateAppleCMM_mtx);
  if (!ColorSyncCMMCreateAppleCMM_appleCMM)
  {
    if (ColorSyncCMMGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncCMMGetTypeID_predicate, &__block_literal_global_1495);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 24) = 0;
      *(Instance + 32) = @"Apple CMM";
      *(Instance + 17) = 0;
      *(Instance + 16) = 1;
      *(Instance + 72) = AppleCMMInitializeLinkProfile;
      *(Instance + 40) = @"com.apple.cmm";
      *(Instance + 48) = AppleCMMInitializeTransform;
      *(Instance + 56) = AppleCMMApplyTransform;
      *(Instance + 64) = AppleCMMCreateTransformProperty;
    }

    ColorSyncCMMCreateAppleCMM_appleCMM = Instance;
  }

  pthread_mutex_unlock(&ColorSyncCMMCreateAppleCMM_mtx);
  v1 = ColorSyncCMMCreateAppleCMM_appleCMM;

  return CFRetain(v1);
}

void ColorSyncTransformInternalSetCMMStorage(uint64_t a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v4 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    CFDictionarySetValue(*(a1 + 112), @"com.apple.cmm.cmmstorage", a2);
    *(a1 + 104) = a2;
  }
}

const __CFDictionary *ColorSyncOptionsDisplayReferredToneMappingRequested(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"com.apple.cmm.ApplyToneMaping");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 != CFDictionaryGetTypeID())
      {
        return 0;
      }

      result = CFDictionaryGetValue(v1, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
      if (!result)
      {
        return result;
      }

      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v3, @"com.apple.cmm.ApplyReferenceWhiteToneMapping"))
        {
          return 1;
        }

        else
        {
          return (CFDictionaryContainsKey(v3, @"com.apple.cmm.ApplyPQEETFToneMapping") != 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *ColorSyncOptionsSceneReferredToneMappingRequested(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"com.apple.cmm.ApplyToneMaping");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFDictionaryGetTypeID())
      {
        return (CFDictionaryGetValue(v1, @"com.apple.cmm.ApplySceneReferredToneMapping") == *MEMORY[0x1E695E4D0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::resize(uint64_t a1, unint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = v6 - *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v11 != 0 && v10)
  {
    v12 = *(a1 + 16);
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v6) >> 3) >= v11)
    {
      v38 = &v6[5 * v11];
      v39 = *(a1 + 8);
      do
      {
        *v39 = &unk_1F0E0A300;
        v39[1] = 0;
        v39[2] = -1;
        v39[3] = 0;
        *(v39 + 31) = 0;
        v39 += 5;
        v6 += 5;
      }

      while (v39 != v38);
      *(a1 + 8) = v38;
    }

    else
    {
      v13 = 0x666666666666666;
      if (a2 > 0x666666666666666)
      {
        std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_length_error[abi:ne200100]();
      }

      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v7) >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a2)
      {
        v15 = a2;
      }

      if (v14 < 0x333333333333333)
      {
        v13 = v15;
      }

      v16 = 5 * v13;
      v17 = CMMBase::NewInternal((40 * v13), *(a1 + 32), a3, a4);
      v18 = &v17[5 * a2];
      v19 = (v6 + v17 - v7);
      v20 = (v17 + v8);
      do
      {
        *v20 = &unk_1F0E0A300;
        v20[1] = 0;
        v20[2] = -1;
        v20[3] = 0;
        *(v20 + 31) = 0;
        v20 += 5;
        v19 += 40;
      }

      while (v20 != v18);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = (v17 + v8 - (v22 - *a1));
      *&v24 = v18;
      *(&v24 + 1) = &v17[v16];
      v40 = v24;
      if (v22 != *a1)
      {
        v25 = 0;
        do
        {
          v26 = &v23[v25 * 8];
          v27 = v21[v25 + 1];
          *v26 = &unk_1F0E0A300;
          *(v26 + 1) = v27;
          *(v26 + 2) = v21[v25 + 2];
          *(v26 + 3) = v21[v25 + 3];
          *(v26 + 8) = v21[v25 + 4];
          *(v26 + 18) = WORD2(v21[v25 + 4]);
          v26[38] = BYTE6(v21[v25 + 4]);
          v25 += 5;
        }

        while (&v21[v25] != v22);
        v28 = v21;
        v29 = v21;
        do
        {
          v30 = *v29;
          v29 += 5;
          (*v30)();
          v28 += 5;
        }

        while (v29 != v22);
      }

      v31 = *a1;
      *a1 = v23;
      *(a1 + 8) = v40;
      if (v31)
      {

        CMMBase::operator delete(v31);
      }
    }
  }

  else if (!v10)
  {
    v32 = &v7[5 * a2];
    if (v6 != v32)
    {
      v33 = v6 - 5;
      v34 = v33;
      v35 = v33;
      do
      {
        v36 = *v35;
        v35 -= 5;
        (v36->__sig)(v34);
        v33 -= 5;
        v37 = v34 == v32;
        v34 = v35;
      }

      while (!v37);
    }

    *(a1 + 8) = v32;
  }
}

uint64_t CMMProfile::GenericGetConversionType(CMMProfile *this, const __CFString *a2)
{
  if (CFEqual(this, kColorSyncTransformDeviceToPCS))
  {
    return 1;
  }

  if (CFEqual(this, kColorSyncTransformPCSToDevice))
  {
    return 2;
  }

  if (CFEqual(this, kColorSyncTransformPCSToPCS))
  {
    return 3;
  }

  if (CFEqual(this, kColorSyncTransformSceneLinearToPCS))
  {
    return 9;
  }

  if (CFEqual(this, kColorSyncTransformPCSToSceneLinear))
  {
    return 10;
  }

  if (CFEqual(this, kColorSyncTransformDisplayLinearToPCS) || CFEqual(this, kColorSyncTransformPCSToDisplayLinear))
  {
    return 11;
  }

  if (CFEqual(this, kColorSyncTransformDeviceToSceneLinearPCS))
  {
    return 13;
  }

  if (CFEqual(this, kColorSyncTransformSceneLinearPCSToDevice))
  {
    return 14;
  }

  if (CFEqual(this, kColorSyncTransformGamutCheck))
  {
    return 4;
  }

  CMMThrowExceptionOnError(4294967246);
  return 0xFFFFFFFFLL;
}

const UInt8 *ColorSyncProfileGetCICPInfo(const UInt8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return 0;
    }

    result = *(v1 + 248);
    if (result)
    {
      return result;
    }

    if (ColorSyncProfileContainsSupportedCICP(v1, 0))
    {
      Tag = ColorSyncProfileGetTag(v1, @"cicp");
      BytePtr = CFDataGetBytePtr(Tag);
      if (BytePtr)
      {
        return BytePtr + 8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __ColorSyncTransformGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID = result;
  return result;
}

uint64_t __ColorSyncCMMGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncCMMGetTypeID_kColorSyncCMMRuntimeID = result;
  return result;
}

CFAllocatorRef ___ZL19CMMBytesDeallocatorv_block_invoke()
{
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  CMMBytesDeallocator(void)::cmmAllocator = result;
  return result;
}

const __CFData *ColorSyncProfileUsesITU_R709OETF(uint64_t a1)
{
  result = ColorSyncProfileGetTag(a1, @"rTRC");
  if (result || (result = ColorSyncProfileGetTag(a1, @"aarg")) != 0)
  {
    v3 = result;
    if (CFDataGetLength(result) >= 32)
    {
      BytePtr = CFDataGetBytePtr(v3);
      if (*BytePtr == 1634886000 && *(BytePtr + 4) == 768 && *(BytePtr + 3) == -466091520)
      {
        v5 = *(BytePtr + 4);
        if (v5 == -521666560)
        {
          if (*(BytePtr + 5) == 538378240 && *(BytePtr + 6) == -466092032)
          {
            return (*(BytePtr + 7) == -1139539968);
          }
        }

        else if (v5 == -253231104 && *(BytePtr + 5) == 269942784 && *(BytePtr + 6) == -466092032 && *(BytePtr + 7) == -1139539968)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

const __CFData *ColorSyncProfileUsesCoreVideoGamma(uint64_t a1)
{
  result = ColorSyncProfileGetTag(a1, @"rTRC");
  if (result || (result = ColorSyncProfileGetTag(a1, @"aarg")) != 0)
  {
    v3 = result;
    if (CFDataGetLength(result) >= 14 && (BytePtr = CFDataGetBytePtr(v3), *BytePtr == 1987212643) && *(BytePtr + 2) == 0x1000000)
    {
      return (*(BytePtr + 6) == -2559);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef create_GenericRGBProfile()
{
  if (create_GenericRGBProfile_predicate != -1)
  {
    dispatch_once(&create_GenericRGBProfile_predicate, &__block_literal_global_229);
  }

  v1 = create_GenericRGBProfile_profile;

  return CFRetain(v1);
}

uint64_t ColorSyncTransformInternalCopyProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  v7 = 0;
  if (a2 && v6 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    pthread_mutex_lock((a1 + 16));
    if (CFDictionaryContainsKey(*(a1 + 112), a2))
    {
      Value = CFDictionaryGetValue(*(a1 + 112), a2);
      v7 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      v9 = *(*(a1 + 80) + 64);
      if (v9)
      {
        v7 = v9(a1, a2, a3);
      }

      else
      {
        v7 = 0;
      }
    }

    pthread_mutex_unlock((a1 + 16));
  }

  return v7;
}

CFTypeID ColorSyncTransformGetTypeID(void)
{
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  return ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID;
}

const __CFArray *ColorSyncCodeFragmentGetMD5(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFArrayGetTypeID())
    {
      return 0;
    }

    result = CFArrayGetValueAtIndex(v1, 0);
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(v3, kColorSyncTransformCodeFragmentMD5);
      if (result)
      {
        BytePtr = CFDataGetBytePtr(result);
        result = *BytePtr;
        v6 = *(BytePtr + 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef ColorSyncProfileCopyLocalizedDescriptionString(CFTypeRef result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v6 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return 0;
    }

    result = *(v5 + 12);
    if (result)
    {
      if ((v7 = CFDictionaryGetValue(result, @"dscm")) == 0 || (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFStringGetTypeID()) && (v8 = CFDictionaryGetValue(*(v5 + 12), v8)) == 0 || (v10 = CFGetTypeID(v8), v10 != CFDataGetTypeID()) || CFDataGetLength(v8) < 9 || !CFDataGetBytePtr(v8) || *CFDataGetBytePtr(v8) != 1668639853 || (result = copy_description_from_DSCMTag(v8, a2, a3)) == 0)
      {
        Value = CFDictionaryGetValue(*(v5 + 12), @"desc");
        if (!Value || (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFStringGetTypeID()) && (v12 = CFDictionaryGetValue(*(v5 + 12), v12)) == 0)
        {
          v17 = kColorSyncMissingDescription;
LABEL_29:
          v18 = *v17;

          return copyLoacalizedStringFromResources(v18, 1);
        }

        v14 = CFGetTypeID(v12);
        if (v14 == CFDataGetTypeID() && CFDataGetLength(v12) >= 9)
        {
          BytePtr = CFDataGetBytePtr(v12);
          if (BytePtr)
          {
            v16 = bswap32(*BytePtr);
            if (v16 == 1684370275)
            {
              result = copy_descriptionFromDESCTag(v12, a2, a3);
LABEL_27:
              if (result)
              {
                return result;
              }

              goto LABEL_28;
            }

            if (v16 == 1835824483)
            {
              result = copy_description_from_DSCMTag(v12, a2, a3);
              goto LABEL_27;
            }
          }
        }

LABEL_28:
        v17 = kColorSyncBadDescription;
        goto LABEL_29;
      }
    }
  }

  return result;
}

const __CFString *copy_descriptionFromDESCTag(const __CFData *a1, unsigned int a2, unsigned int a3)
{
  v71 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 0xD)
  {
    goto LABEL_77;
  }

  v8 = Length;
  v53 = *(BytePtr + 2);
  v9 = bswap32(v53);
  v10 = v9 + 12;
  v11 = BytePtr + 12;
  if (Length < v9 + 12)
  {
    v11 = 0;
  }

  v52 = v11;
  if (Length < v9 + 12)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (Length >= v12 + 16)
  {
    v13 = v12 + 16;
  }

  else
  {
    v13 = v12 + 12;
  }

  if (Length >= v13 + 4)
  {
    v14 = bswap32(*&BytePtr[v13]);
    v13 += 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 + 2 * v14;
  v16 = &BytePtr[v13];
  if (Length >= v15)
  {
    v17 = &BytePtr[v13];
  }

  else
  {
    v17 = 0;
  }

  if (Length >= v15)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  v19 = v13 + 2 * v18;
  if (Length >= v19 + 2)
  {
    v54 = bswap32(*&BytePtr[v19]) >> 16;
    v19 += 2;
  }

  else
  {
    v54 = 0;
  }

  v55 = __PAIR64__(a3, a2);
  if (Length <= v19)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v20 = BytePtr[v19++];
    v27 = v20 != 0;
    v21 = v20 - 1;
    if (!v27)
    {
      v21 = 0;
    }

    if (v21 >= 0x43)
    {
      LOBYTE(v21) = 67;
    }
  }

  v22 = 0;
  v23 = v19 + v21;
  v24 = &BytePtr[v19];
  if (Length >= v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (Length >= v23)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v17)
  {
    v27 = v18 >= 2;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v51 = v26;
    bzero(chars, 0x802uLL);
    v28 = 1024;
    if (v18 < 0x400)
    {
      v28 = v18;
    }

    v29 = *v17;
    if (v29 == 65279)
    {
      v30 = v28 - 2;
      __memcpy_chk();
    }

    else if (v29 == 65534)
    {
      v30 = v28 - 2;
      if (v28 != 2)
      {
        v31 = &BytePtr[v13 + 2];
        v32 = chars;
        v33 = v30;
        do
        {
          v34 = *v31;
          v31 += 2;
          *v32++ = bswap32(v34) >> 16;
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v28 - 1;
      v35 = chars;
      v36 = v30;
      do
      {
        v37 = *v16;
        v16 += 2;
        *v35++ = bswap32(v37) >> 16;
        --v36;
      }

      while (v36);
    }

    v22 = CFStringCreateWithCharacters(0, chars, v30);
    v26 = v51;
    v10 = v9 + 12;
  }

  if (v25 && !v22 && v26)
  {
    if (v54 != 1536 && v54)
    {
      v22 = 0;
    }

    else
    {
      memset(v70, 0, sizeof(v70));
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      *&chars[1] = 0u;
      chars[0] = v25;
      v38 = v10;
      __memcpy_chk();
      v39 = CFStringCreateWithPascalString(0, chars, v54);
      v10 = v38;
      v22 = v39;
    }
  }

  if (v8 < v10 || !v12 || v22)
  {
    goto LABEL_73;
  }

  v40 = malloc_type_malloc(2 * v12, 0x1000040BDFB0063uLL);
  if (!v40)
  {
LABEL_77:
    v22 = 0;
    goto LABEL_78;
  }

  v41 = v40;
  if (v53)
  {
    v42 = v52 - 1;
    LOBYTE(v43) = 1;
    v44 = v9;
    do
    {
      v45 = v42[v44];
      v43 = (v42[v44] == 0) & v43;
      v9 -= v43;
      if ((v45 - 127) < 0xFFFFFFA1 && v45 != 0)
      {
        LOWORD(v45) = 63;
      }

      v40[--v44] = v45;
    }

    while (v44);
  }

  if (!v9)
  {
    *v40 = 63;
    v9 = 1;
  }

  v22 = CFStringCreateWithCharacters(0, v40, v9);
  free(v41);
LABEL_73:
  if (v22)
  {
    if (v55)
    {
      v47 = copyLoacalizedStringFromResources(v22, 1);
      if (v47)
      {
        v48 = v47;
        CFRelease(v22);
        v22 = v48;
      }
    }
  }

LABEL_78:
  v49 = *MEMORY[0x1E69E9840];
  return v22;
}

void CMMTag::~CMMTag(CMMTag *this)
{
  *this = &unk_1F0E08C48;
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1)
  {
    *(v1 + 24) = v2;
  }

  if (v2)
  {
    *(v2 + 16) = v1;
  }

  if (*(this + 48) == 1)
  {
    CMMBase::operator delete(*(this + 5));
  }
}

{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMProfile::~CMMProfile(CMMProfile *this)
{
  *this = &unk_1F0E084C8;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    do
    {
      v5 = v4[2];
      (*(*v4 + 8))(v4);
      v4 = v5;
    }

    while (v5);
  }
}

void CMMXYZTag::~CMMXYZTag(CMMXYZTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMMatrixDisplayProfile::~CMMMatrixDisplayProfile(CMMMatrixDisplayProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMCurveTag::~CMMCurveTag(CMMCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

const __CFDictionary *tagDataAdder(void *key, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    Value = CFDictionaryGetValue(result, key);
    v6 = CFGetTypeID(Value);
    result = CFDataGetTypeID();
    if (v6 == result)
    {
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(Value);
      CFDataIncreaseLength(*a2, (Length + 3) & 0xFFFFFFFFFFFFFFFCLL);
      MutableBytePtr = CFDataGetMutableBytePtr(*a2);
      memcpy(&MutableBytePtr[*(a2 + 16)], BytePtr, Length);
      result = ColorSyncGetFourCharCodeFromSignature(key);
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = &MutableBytePtr[12 * v10];
      *(v12 + 33) = bswap32(result);
      *(v12 + 34) = bswap32(v11);
      *(v12 + 35) = bswap32(Length);
      *(a2 + 16) = v11 + ((Length + 3) & 0xFFFFFFFC);
      *(a2 + 24) = v10 + 1;
    }
  }

  return result;
}

double tagReferenceAdder(void *key, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, key);
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      MutableBytePtr = CFDataGetMutableBytePtr(*a2);
      FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(Value);
      v10 = *(a2 + 24);
      if (v10)
      {
        v11 = MutableBytePtr + 132;
        v12 = bswap32(FourCharCodeFromSignature);
        for (i = MutableBytePtr + 132; v12 != *i; i += 12)
        {
          if (!--v10)
          {
            return result;
          }
        }

        v14 = ColorSyncGetFourCharCodeFromSignature(key);
        v15 = *(a2 + 24);
        v16 = &v11[12 * v15];
        *v16 = bswap32(v14);
        result = *(i + 4);
        *(v16 + 4) = result;
        *(a2 + 24) = v15 + 1;
      }
    }
  }

  return result;
}

uint64_t CMMCICPTag::Validate(CMMCICPTag *this)
{
  v1 = *(this + 50);
  if (v1 == 12 || (v1 & 0xFB) == 1 || (v1 & 0xFD) == 9)
  {
    v4 = BYTE1(v1);
    if ((0x5E142u >> SBYTE1(v1)))
    {
      v5 = 0;
    }

    else
    {
      v5 = -170;
    }

    if (v4 <= 0x12)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4294967126;
    }
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return 0;
}

void CMMCICPTag::~CMMCICPTag(CMMCICPTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

ColorSyncProfileRef ColorSyncProfileCreate(CFDataRef data, CFErrorRef *error)
{
  v3 = create(0, data, 0, 0);
  v4 = v3;
  if (error)
  {
    *error = 0;
  }

  v5 = system_profile_for_profile_from_data(v3);
  if (v5)
  {
    v6 = v5;
    CFRelease(v4);
    return v6;
  }

  else
  {
    evaluate_cicp(v4);
  }

  return v4;
}

void *CMMParaCurveTag::Initialize(CMMParaCurveTag *this)
{
  v2 = **(this + 5);
  v3 = bswap32(v2);
  if (v2 == 1634886000)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294967126;
  }

  CMMThrowExceptionOnError(v4);
  *(this + 13) = v3;
  v5 = *(this + 5);
  if (*(this + 4) <= 0xCuLL)
  {
    v6 = 4294967126;
  }

  else
  {
    v6 = 0;
  }

  CMMThrowExceptionOnError(v6);
  v7 = bswap32(*(v5 + 8)) >> 16;
  *(this + 28) = v7;
  if (v7 >= 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -170;
  }

  *(this + 15) = dword_19A9B15D8[v7];
  v8 = (*(*this + 32))(this, 1, 1);
  CMMThrowExceptionOnError(v8);
  v9 = *(this + 15);
  v10 = (this + 64);
  for (result = memcpy(v10, (v5 + 12), 4 * v9); v9; --v9)
  {
    *v10 = bswap32(*v10);
    ++v10;
  }

  return result;
}

void CMMCurveTag::CMMCurveTag(CMMCurveTag *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = &unk_1F0E08C48;
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a4;
  *(this + 2) = 0;
  if (a5)
  {
    *(a5 + 16) = this;
  }

  *(this + 5) = a3;
  *(this + 24) = 0;
  *this = &unk_1F0E08D10;
  CMMCurveTag::Initialize(this);
}

CMMCurveTag *CMMParaCurveTag::CMMParaCurveTag(CMMCurveTag *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMMCurveTag::CMMCurveTag(a1, a2, a3, a4, a5);
  *v6 = &unk_1F0E08D78;
  CMMParaCurveTag::Initialize(v6);
  return a1;
}

{
  CMMCurveTag::CMMCurveTag(a1, a2, a3, a4, a5);
  *v6 = &unk_1F0E08D78;
  CMMParaCurveTag::Initialize(v6);
  return a1;
}

uint64_t CMMParaCurveTag::Validate(CMMParaCurveTag *this)
{
  if (*(this + 49))
  {
    return 0;
  }

  v3 = *(this + 4) - 12;
  if (v3 < 1 || v3 < 4 * *(this + 15))
  {
    return 4294967126;
  }

  result = 0;
  *(this + 49) = 1;
  return result;
}

void colorSyncProfileFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 256);
    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a1 + 156) == 1)
    {

      pthread_mutex_destroy((a1 + 24));
    }
  }
}

void CMMParaCurveTag::~CMMParaCurveTag(CMMParaCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void ConversionManager::AddMatrixConv(uint64_t a1, const __CFDictionary *a2, CMMMemMgr *a3, const char *a4, int a5, float32x2_t *a6, CFDictionaryRef theDict)
{
  v7 = a1;
  v8 = 0;
  v9 = 0;
  v342 = *MEMORY[0x1E69E9840];
  memset(v313, 0, 56);
  v296 = a3 + 8;
  LODWORD(v313[0]) = 1;
  v287 = a4;
  v285 = a4 ^ 1;
  v311 = 0;
  v312 = 0;
  v310 = 0;
  memset(v309, 0, sizeof(v309));
  LODWORD(v309[0]) = 1;
  v308 = 0;
  memset(v307, 0, sizeof(v307));
  LODWORD(v307[0]) = 1;
  v335 = 0;
  v333 = 0u;
  v334 = 0u;
  v332 = 0u;
  v10 = 1.0;
  v286 = *MEMORY[0x1E695E4D0];
  v11 = 1;
  theDicta = theDict;
  *v293 = a6;
  v290 = a5;
  do
  {
    v12 = *(*&v296[8 * v8] + 52);
    if (v12 != 1212958496)
    {
      if (v12 == 1347493920)
      {
        if (a5 != 9)
        {
          v283 = v11;
          v284 = v9;
          if (a5 != 1)
          {
            __assert_rtn("AddMatrixConv", "CMMConversionManager.cpp", 2033, "0");
          }

          if (theDict)
          {
            v13 = (CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipPQEETF") == v286 || CFDictionaryGetValue(theDicta, @"com.apple.cmm.SkipToneMappingForBT2100") == v286) && *(a1 + 51) == 0;
            Value = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMappingForBT2100");
            v36 = Value == v286 || *(a1 + 51) == 0;
            if (v13)
            {
              v37 = 100.0;
            }

            else
            {
              v37 = 10000.0;
            }

            if (Value == v286 || (*(a1 + 51) & 1) == 0)
            {
              v38 = v37;
            }

            else
            {
              v38 = 100.0;
            }

            if (CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQEETF3DLut") == v286 && !v13)
            {
              v38 = 1.0;
            }

            a6 = *v293;
            if (*v293)
            {
LABEL_69:
              v40 = a6[2];
              v41 = theDicta;
              if (v40)
              {
                v42 = vcvts_n_f32_s32(bswap32(*(*(*&v40 + 40) + 12)), 0x10uLL);
                if (v42 != v38 && v42 != 0.0)
                {
                  v38 = v42;
                }
              }

              if (!theDicta)
              {
LABEL_94:
                v49 = ColorSyncOptionsDisplayReferredToneMappingRequested(v41);
                v50 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(v41);
                v7 = a1;
                if (*(a1 + 89) == 16)
                {
                  v51 = ColorSyncOptionsGetFlexTRCOptions(0, v41) != 0;
                  if (*(a1 + 89) == 16)
                  {
                    v52 = ColorSyncOptionsGetFlexLumaScalingOptions(0, v41) != 0;
                    goto LABEL_99;
                  }
                }

                else
                {
                  v51 = 0;
                }

                v52 = 0;
LABEL_99:
                if ((v50 | (v51 || v52)))
                {
                  v53 = 1.0;
                }

                else
                {
                  v53 = v38;
                }

                v54 = *(a1 + 48);
                if ((v49 & 1) == 0)
                {
                  memset(valuePtr, 0, 56);
                  LODWORD(valuePtr[0]) = 1;
                  TRC = CMMRGBCurves::MakeTRC(a3, v53, valuePtr, *(a1 + 8), v8);
                  v58 = CMMBase::NewInternal(0xA8, *(a1 + 8), v56, v57);
                  *(a1 + 24) = CMMConvPQEOTF::CMMConvPQEOTF(v58, v8, TRC, valuePtr, *(a1 + 24), v53);
                  v7 = a1;
                }

                v59 = v54 | v50 | v51 | v52 | (v13 || !v36);
                if (v8 == 2 && ((v59 ^ 1 | v49 | v50 | v52 | v51) & 1) != 0)
                {
                  if (v49)
                  {
                    v60 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping");
                    v61 = v60;
                    v7 = a1;
                    if (v60)
                    {
                      v62 = CFGetTypeID(v60);
                      v7 = a1;
                      if (v62 == CFDictionaryGetTypeID())
                      {
                        v63 = CFDictionaryGetValue(v61, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
                        v64 = v63;
                        v7 = a1;
                        if (v63)
                        {
                          v65 = CFGetTypeID(v63);
                          v7 = a1;
                          if (v65 == CFDictionaryGetTypeID())
                          {
                            v66 = CFDictionaryGetValue(v64, @"com.apple.cmm.ApplyPQEETFToneMapping");
                            v67 = v66;
                            if (v66 && (v68 = CFGetTypeID(v66), v68 == CFDictionaryGetTypeID()))
                            {
                              v69 = CFDictionaryGetValue(v67, @"com.apple.cmm.PQEOTFOpticalScale");
                              if (v69)
                              {
                                LODWORD(valuePtr[0]) = 0;
                                v70 = CFNumberGetValue(v69, kCFNumberFloatType, valuePtr);
                                v71 = *valuePtr;
                                if (!v70)
                                {
                                  v71 = 0.0;
                                }

                                if (v71 != 0.0)
                                {
                                  v53 = v71;
                                }
                              }

                              v72 = CFDictionaryGetValue(v67, @"com.apple.cmm.TargetDisplayWhite");
                              if (v72)
                              {
                                LODWORD(valuePtr[0]) = 0;
                                if (CFNumberGetValue(v72, kCFNumberFloatType, valuePtr))
                                {
                                  if (*valuePtr != 0.0)
                                  {
                                    *(*v293 + 8) = valuePtr[0];
                                  }
                                }
                              }

                              ConversionManager::AddPQEETFToneMapping(a1, *v293, 0, v73, v53);
                            }

                            else
                            {
                              v94 = CFDictionaryGetValue(v64, @"com.apple.cmm.ApplyReferenceWhiteToneMapping");
                              v95 = v94;
                              if (!v94 || (v96 = CFGetTypeID(v94), v96 != CFDictionaryGetTypeID()))
                              {
                                exception = __cxa_allocate_exception(4uLL);
                                *exception = -178;
                              }

                              ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(a1, v95);
                            }

                            v10 = 1.0;
LABEL_192:
                            v7 = a1;
                            goto LABEL_180;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v10 = 1.0;
                    if (v50)
                    {
                      goto LABEL_180;
                    }

                    if (v52)
                    {
                      v81 = CFDictionaryGetValue(*(v7 + 80), kColorSyncPreGainMapCICP);
                      v82 = v81;
                      if (v81 && (v83 = CFGetTypeID(v81), v83 == CFNumberGetTypeID()))
                      {
                        LODWORD(valuePtr[0]) = 0;
                        v84 = CFNumberGetValue(v82, kCFNumberSInt32Type, valuePtr);
                        v85 = LOBYTE(valuePtr[0]);
                        if (v84 != 1)
                        {
                          v85 = 0;
                        }
                      }

                      else
                      {
                        v85 = 0;
                      }

                      v7 = a1;
                      if (*(a1 + 88) != v85)
                      {
                        goto LABEL_180;
                      }

                      ConversionManager::AddFlexLuminanceToneMapping(a1, theDicta);
                      goto LABEL_192;
                    }

                    if (v51)
                    {
LABEL_180:
                      a5 = v290;
                      v9 = v284;
                      v11 = v283;
                      goto LABEL_181;
                    }

                    ConversionManager::AddPQEETFToneMapping(v7, *v293, theDicta, a4, v53);
                    v7 = a1;
                  }
                }

                if (*(v7 + 48) == 1)
                {
                  if (*(v7 + 61))
                  {
                    v10 = 1.0;
                  }

                  else
                  {
                    v10 = 2.03;
                  }
                }

                else if ((v13 | *(v7 + 51)) & v59)
                {
                  v10 = v53 / *(v7 + 64);
                }

                else if (v59 & 1 | (v53 == 10000.0))
                {
                  v10 = 1.0;
                }

                else
                {
                  v10 = 10000.0 / v53;
                }

                goto LABEL_180;
              }

LABEL_87:
              if (CFDictionaryContainsKey(v41, @"com.apple.cmm.PQEOTFOpticalScale") == 1)
              {
                v46 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQEOTFOpticalScale");
                if (v46)
                {
                  LODWORD(valuePtr[0]) = 0;
                  v47 = CFNumberGetValue(v46, kCFNumberFloatType, valuePtr);
                  v48 = *valuePtr;
                  if (!v47)
                  {
                    v48 = 0.0;
                  }

                  if (v48 != 0.0)
                  {
                    v38 = v48;
                  }
                }
              }

              v41 = theDicta;
              goto LABEL_94;
            }
          }

          else
          {
            v13 = 0;
            v36 = *(v7 + 51) == 0;
            if (*(v7 + 51))
            {
              v38 = 100.0;
            }

            else
            {
              v38 = 10000.0;
            }

            if (a6)
            {
              goto LABEL_69;
            }
          }

          v41 = theDicta;
          if (!theDicta)
          {
            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (a6)
        {
          if (!v8)
          {
            v32 = a6[2];
            if (v32)
            {
              v33 = v11;
              v34 = vcvts_n_f32_s32(bswap32(*(*(*&v32 + 40) + 12)), 0x10uLL);
LABEL_128:
              if (v34 == 0.0)
              {
                v75 = v34;
              }

              else
              {
                v75 = v34 / 100.0;
              }

              if (theDict)
              {
                if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQOOTFOpticalScale") == 1)
                {
                  v76 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.PQOOTFOpticalScale");
                  if (v76)
                  {
                    LODWORD(valuePtr[0]) = 0;
                    v77 = CFNumberGetValue(v76, kCFNumberFloatType, valuePtr);
                    v78 = *valuePtr;
                    if (!v77)
                    {
                      v78 = 0.0;
                    }

                    if (v78 != 0.0)
                    {
                      v75 = v78;
                    }
                  }
                }
              }

              v326 = 0u;
              v327 = 0u;
              v325 = 0u;
              memset(valuePtr, 0, sizeof(valuePtr));
              CMMParaCurveTag::CMMParaCurveTag(valuePtr, 1885434465, "para", 32, 0);
              *&valuePtr[0] = off_1F0E08FA8;
              v7 = a1;
              v79 = CMMParaCurveTag::MakeTRC(valuePtr, v307, *(a1 + 8), 0, v75);
              DWORD1(v307[0]) = 14;
              v311 = v79;
              v318 = 0u;
              v317 = 0u;
              v316 = 0u;
              *&v315 = LODWORD(v75) | 0x3F99999A00000000;
              v314 = &unk_1F0E0A130;
              v319 = LODWORD(v75);
              *(&v315 + 1) = 0xC00000001;
              LOBYTE(v316) = 1;
              DWORD1(v316) = 1;
              LODWORD(v317) = 1075419546;
              DWORD1(v317) = powf(v75, 0.41667);
              v318 = 0uLL;
              *(&v317 + 1) = 0;
              v312 = CMMITUBT1886EOTF::MakeTRC(&v314, v309, *(a1 + 8), v80);
              CMMTag::~CMMTag(valuePtr);
LABEL_139:
              ConversionManager::AddTRCSequence(v7, v8, (v7 + 16), (v7 + 24), v307, &v311, v309, &v312);
              v7 = a1;
              a5 = v290;
              v11 = v33;
              goto LABEL_181;
            }

LABEL_127:
            v33 = v11;
            v34 = 100.0;
            goto LABEL_128;
          }
        }

        else if (!v8)
        {
          goto LABEL_127;
        }

        v44 = v312[1];
        if (v44)
        {
          v312[1] = v44 + 1;
        }

        v33 = v11;
        v45 = v311[1];
        if (v45)
        {
          v311[1] = v45 + 1;
        }

        goto LABEL_139;
      }

      if ((*(v7 + 43) & 1) != 0 || *(v7 + 44) == 1)
      {
        if (*(v7 + 57) == 1 && (*(v7 + 49) & 1) == 0)
        {
          v18 = v312;
          if (v312)
          {
            v17 = v9;
            v74 = v312[1];
            v19 = 0;
            if (v74)
            {
              v312[1] = v74 + 1;
            }

            goto LABEL_163;
          }

          SDRToPQScale = 1.0;
          if (*(v7 + 47) == 1)
          {
            SDRToPQScale = ColorSyncOptionsGetSDRToPQScale(theDict);
          }

          v87 = *(v7 + 59);
          if (*(v7 + 59))
          {
            v17 = v9;
          }

          else
          {
            v17 = v9;
            if (*(v7 + 48))
            {
              SDRToPQScale = 2.03;
            }
          }

          memset(&valuePtr[2] + 8, 0, 32);
          *(&valuePtr[1] + 8) = 0u;
          *(&valuePtr[0] + 1) = LODWORD(SDRToPQScale) | 0x3F99999A00000000;
          *&valuePtr[0] = &unk_1F0E0A130;
          *(&valuePtr[4] + 1) = LODWORD(SDRToPQScale);
          *&valuePtr[1] = 0xC00000001;
          BYTE8(valuePtr[1]) = 1;
          HIDWORD(valuePtr[1]) = 1;
          DWORD2(valuePtr[2]) = 1075419546;
          HIDWORD(valuePtr[2]) = powf(SDRToPQScale, 0.41667);
          memset(&valuePtr[3], 0, 24);
          if (v87)
          {
            DWORD1(valuePtr[1]) = 0;
            DWORD2(valuePtr[2]) = 0x40000000;
            v90 = fabsf(sqrtf(SDRToPQScale));
            if (SDRToPQScale == -INFINITY)
            {
              v90 = INFINITY;
            }

            *(&valuePtr[2] + 3) = v90;
          }

          v18 = CMMITUBT1886EOTF::MakeTRC(valuePtr, v313, *(v7 + 8), v89);
          v19 = 0;
          v312 = v18;
LABEL_162:
          v7 = a1;
LABEL_163:
          v91 = CMMBase::NewInternal(0xA8, *(v7 + 8), a3, a4);
          *(a1 + 24) = CMMConvTRC::CMMConvTRC(v91, v8, v18, v19, v313, *(a1 + 24), 3, 1, 1.0, 1, v285);
          if (v18)
          {
            v92 = v18[1];
            v7 = a1;
            if (v92)
            {
              v93 = v92 - 1;
              v18[1] = v93;
              if (!v93)
              {
                (*(*v18 + 8))(v18);
              }
            }
          }

          else
          {
            v7 = a1;
          }

          a5 = v290;
          v9 = v17;
          goto LABEL_181;
        }

        if (*(v7 + 43) && *(v7 + 60) == 1 && (*(v7 + 49) & 1) == 0 && (v287 & 1) == 0)
        {
          if (v9)
          {
            v15 = *(v9 + 8);
            if (v15)
            {
              *(v9 + 8) = v15 + 1;
            }

            v16 = v11;
          }

          else
          {
            if (CMMInitializeSRGBGammaTable(void)::predicate != -1)
            {
              dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
            }

            v9 = CMMsRGBGammaTable;
            v16 = *CMMsRGBGammaFloatLutInfo;
            v88 = *(CMMsRGBGammaFloatLutInfo + 20);
            v332 = *(CMMsRGBGammaFloatLutInfo + 4);
            v333 = v88;
            v334 = *(CMMsRGBGammaFloatLutInfo + 36);
            v335 = *(CMMsRGBGammaFloatLutInfo + 52);
          }

          v19 = 0;
          v11 = v16;
          LODWORD(v313[0]) = v16;
          *(v313 + 4) = v332;
          *(&v313[1] + 4) = v333;
          *(&v313[2] + 4) = v334;
          DWORD1(v313[3]) = v335;
          v17 = v9;
          v18 = v9;
          goto LABEL_163;
        }
      }

      v17 = v9;
      v18 = CMMRGBCurves::MakeTRC(a3, 1.0, v313, *(v7 + 8), v8);
      v19 = (*(**&v296[8 * v8] + 40))(*&v296[8 * v8]);
      v7 = a1;
      if (*(a1 + 43) == 1)
      {
        DWORD1(v313[0]) = 14;
      }

      v20 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
      if (*(a1 + 47) != 1 || (v20 & 1) != 0)
      {
        if ((v287 & v20) != 0)
        {
          v10 = 0.203;
        }

        goto LABEL_163;
      }

      v21 = default_PQInvEOTFOpticalScale(theDicta, (*(a1 + 56) | v287) & 1);
      v22 = custom_PQInvEOTFOpticalScale(theDicta, v21);
      v23 = theDicta;
      if (!ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta))
      {
        goto LABEL_45;
      }

      v24 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping");
      v25 = v24;
      v23 = theDicta;
      if (!v24)
      {
        goto LABEL_45;
      }

      v26 = CFGetTypeID(v24);
      v23 = theDicta;
      if (v26 != CFDictionaryGetTypeID())
      {
        goto LABEL_45;
      }

      v27 = CFDictionaryGetValue(v25, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
      v28 = v27;
      v23 = theDicta;
      if (!v27)
      {
        goto LABEL_45;
      }

      v29 = CFGetTypeID(v27);
      v23 = theDicta;
      if (v29 == CFDictionaryGetTypeID() && (v30 = CFDictionaryGetValue(v28, @"com.apple.cmm.ApplyReferenceWhiteToneMapping"), v23 = theDicta, v30) && (v31 = CFGetTypeID(v30), v23 = theDicta, v31 == CFDictionaryGetTypeID()))
      {
        v10 = 0.203;
      }

      else
      {
LABEL_45:
        if (v22 == 0.0)
        {
          v7 = a1;
          if (v287)
          {
            if (*(a1 + 64) != 100.0)
            {
              v10 = v21 * ColorSyncOptionsGetSDRToPQScale(v23);
            }
          }

          else
          {
            v10 = ColorSyncOptionsGetSDRToPQScale(v23);
          }

          goto LABEL_163;
        }
      }

      goto LABEL_162;
    }

    switch(a5)
    {
      case 13:
        ConversionManager::AddHLGDevToPCS(v7, v8, a3, a6, theDict);
        break;
      case 9:
        if (v8 != 2)
        {
          goto LABEL_181;
        }

        ConversionManager::AddHLGOOTF(v7, a6, theDict);
        break;
      case 1:
        ConversionManager::AddHLGDevToPCS(v7, v8, a3, a6, theDict);
        v10 = v14;
        break;
      default:
        __assert_rtn("AddMatrixConv", "CMMConversionManager.cpp", 2065, "0");
    }

    v7 = a1;
    a5 = v290;
LABEL_181:
    if (!*(v7 + 16))
    {
      *(v7 + 16) = *(v7 + 24);
    }

    ++v8;
    theDict = theDicta;
    a6 = *v293;
  }

  while (v8 != 3);
  if (v287)
  {
    if (ConversionManager::exrToneMappingGammaIsRequested(theDicta, a2))
    {
      ConversionManager::AddEXRToneMapping(a1, theDicta, 3);
      goto LABEL_196;
    }

    v7 = a1;
    if (*(a1 + 46) == 1)
    {
      if (ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta))
      {
        ConversionManager::AddPQEETFToneMapping(a1, *v293, theDicta, v129, 100.0);
        goto LABEL_196;
      }
    }

    else if (*(a1 + 47) == 1 && ColorSyncOptionsDisplayReferredToneMappingRequested(theDicta))
    {
      v153 = CFDictionaryGetValue(theDicta, @"com.apple.cmm.ApplyToneMaping");
      v154 = v153;
      if (v153)
      {
        v155 = CFGetTypeID(v153);
        if (v155 == CFDictionaryGetTypeID())
        {
          v156 = CFDictionaryGetValue(v154, @"com.apple.cmm.ApplyDisplayReferredToneMapping");
          v157 = v156;
          if (v156)
          {
            v158 = CFGetTypeID(v156);
            if (v158 == CFDictionaryGetTypeID())
            {
              v159 = CFDictionaryGetValue(v157, @"com.apple.cmm.ApplyPQEETFToneMapping");
              v160 = v159;
              if (v159)
              {
                v161 = CFGetTypeID(v159);
                if (v161 == CFDictionaryGetTypeID())
                {
                  v162 = CFDictionaryGetValue(v160, @"com.apple.cmm.XRReflectanceScale");
                  if (v162)
                  {
                    LODWORD(valuePtr[0]) = 0;
                    v163 = CFNumberGetValue(v162, kCFNumberFloatType, valuePtr);
                    v164 = *valuePtr;
                    if (!v163)
                    {
                      v164 = 0.0;
                    }

                    if (v164 != 0.0)
                    {
                      v10 = v164;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_196:
      v7 = a1;
    }
  }

  v306 = 0;
  memset(v305, 0, sizeof(v305));
  v304 = &unk_1F0E071F8;
  CMMMatrix::InitializeMatrix(&v304, v305, a2, v10);
  v98 = *(v7 + 24);
  v97 = (v7 + 24);
  CMMMatrix::MakeMatrixConv(&v304, *(v97 - 2), v98, v99);
  *v97 = v100;
  v101 = a1;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = v100;
  }

  if (*(a1 + 89) != 16)
  {
    v113 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
    goto LABEL_212;
  }

  FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(0, theDicta);
  if (*(a1 + 89) != 16)
  {
    v113 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
    if (FlexLumaScalingOptions)
    {
LABEL_221:
      v130 = CFDictionaryGetValue(*(a1 + 80), kColorSyncPreGainMapCICP);
      v131 = v130;
      if (v130 && (v132 = CFGetTypeID(v130), v132 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr[0]) = 0;
        if (CFNumberGetValue(v131, kCFNumberSInt32Type, valuePtr) == 1)
        {
          v133 = valuePtr[0];
        }

        else
        {
          v133 = 0;
        }
      }

      else
      {
        v133 = 0;
      }

      v134 = CFDictionaryGetValue(*(a1 + 80), kColorSyncPostGainMapCICP);
      v136 = v134;
      if (v134)
      {
        v137 = CFGetTypeID(v134);
        if (v137 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr[0]) = 0;
          if (CFNumberGetValue(v136, kCFNumberSInt32Type, valuePtr) == 1)
          {
            LOBYTE(v136) = valuePtr[0];
          }

          else
          {
            LOBYTE(v136) = 0;
          }
        }

        else
        {
          LOBYTE(v136) = 0;
        }
      }

      v165 = a1;
      if (*(a1 + 88) != v133)
      {
        memset(v337, 0, sizeof(v337));
        ConversionManager::ColorantsForPrimaries(a1, v337, v133, v135);
        v331 = 0;
        v329 = 0u;
        v330 = 0u;
        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        memset(valuePtr, 0, sizeof(valuePtr));
        CMMInvMatrix::CMMInvMatrix(valuePtr, v337, dword_19A9B0638);
        v165 = a1;
        v168 = CMMBase::NewInternal(0x160, *(a1 + 8), v166, v167);
        CMMConvInvMatrix::CMMConvInvMatrix(v168, valuePtr, *(a1 + 24));
        *v169 = &unk_1F0E0BA98;
        *(a1 + 24) = v169;
        ConversionManager::AddFlexLuminanceToneMapping(a1, theDicta);
        v319 = 0;
        v323 = 0;
        v318 = 0u;
        v317 = 0u;
        v316 = 0u;
        v315 = 0u;
        v314 = &unk_1F0E071F8;
        v320 = 0;
        v322 = 0;
        v321 = 0;
        CMMMatrix::InitializeMatrix(&v314, &v315, v337, 1.0);
        CMMMatrix::MakeMatrixConv(&v314, *(v165 + 8), *(v165 + 24), v170);
        *(a1 + 24) = v171;
      }

      if (v136)
      {
        memset(v337, 0, sizeof(v337));
        ConversionManager::ColorantsForPrimaries(v165, v337, v136, v135);
        v331 = 0;
        v329 = 0u;
        v330 = 0u;
        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        memset(valuePtr, 0, sizeof(valuePtr));
        CMMInvMatrix::CMMInvMatrix(valuePtr, v337, dword_19A9B0638);
        v174 = CMMBase::NewInternal(0x160, *(a1 + 8), v172, v173);
        CMMConvInvMatrix::CMMConvInvMatrix(v174, valuePtr, *(a1 + 24));
        *v175 = &unk_1F0E0BA98;
        *(a1 + 24) = v175;
        v319 = 0;
        v323 = 0;
        v318 = 0u;
        v317 = 0u;
        v316 = 0u;
        v315 = 0u;
        v314 = &unk_1F0E071F8;
        v320 = 0;
        v322 = 0;
        v321 = 0;
        CMMMatrix::InitializeMatrix(&v314, &v315, v337, 1.0);
        CMMMatrix::MakeMatrixConv(&v314, *(a1 + 8), v174, v176);
        *(a1 + 24) = v177;
      }

      goto LABEL_276;
    }

LABEL_212:
    if ((v113 & 1) == 0)
    {
      goto LABEL_276;
    }

LABEL_213:
    if (*(a1 + 42) == 1)
    {
      ReferenceWhiteToneMappingOptions = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(theDicta);
      v116 = 8.0;
      v297 = 0.0;
      theDictb = 0.5;
      v117 = 1.0;
      v118 = 0.9;
      v119 = 0.35;
      v120 = 2.6667;
      if (ReferenceWhiteToneMappingOptions)
      {
        v121 = ReferenceWhiteToneMappingOptions;
        v122 = CFGetTypeID(ReferenceWhiteToneMappingOptions);
        if (v122 == CFDictionaryGetTypeID())
        {
          v294 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
          v291 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
          v117 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
          theDictb = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
          v120 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
          v123 = float_from_dictionary_with_default(v121, @"com.apple.cmm.ContentEDRStrength", 1.0);
          v124 = int32_from_dictionary_with_default(v121, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
          v297 = float_from_dictionary_with_default(v121, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
          v119 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
          v125 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
          v126 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
          v118 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
          v116 = float_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMStopAnchor", 8.0);
          v127 = int32_from_dictionary_with_default(v121, @"com.apple.cmm.RWTMVersion", 2);
          v128 = primaries_from_dictionary(v121);
        }

        else
        {
          v124 = 0;
          v127 = 2;
          v128 = 9;
          v291 = 203.0;
          v294 = 1000.0;
          v123 = 1.0;
          v125 = 2.6667;
          v126 = 0.35;
        }

        v101 = a1;
      }

      else
      {
        v124 = 0;
        v127 = 2;
        v128 = 9;
        v291 = 203.0;
        v294 = 1000.0;
        v123 = 1.0;
        v125 = 2.6667;
        v126 = 0.35;
      }

      v178 = *(v101 + 51);
      memset(v337, 0, sizeof(v337));
      ConversionManager::ColorantsForPrimaries(v101, v337, v128, v115);
      v331 = 0;
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      memset(valuePtr, 0, sizeof(valuePtr));
      CMMInvMatrix::CMMInvMatrix(valuePtr, v337, dword_19A9B0638);
      v181 = CMMBase::NewInternal(0x160, *(a1 + 8), v179, v180);
      v182 = a1;
      CMMConvInvMatrix::CMMConvInvMatrix(v181, valuePtr, *(a1 + 24));
      *v183 = &unk_1F0E0BA98;
      *(a1 + 24) = v183;
      if (!*(a1 + 16))
      {
        *(a1 + 16) = v183;
      }

      if (!v178)
      {
        v117 = 1.0;
      }

      v186 = CMMBase::NewInternal(0xA8, *(a1 + 8), v184, v185);
      v187 = *(a1 + 24);
      v300 = (a1 + 24);
      CMMConvRWToneMapping::CMMConvRWToneMapping(v186, 1000.0, v294, v291, v117, theDictb, v120, v123, v124, v297, v127, v187, v188, v189, v190, v191, v119, v125, v126, v118, v116);
      *v300 = v186;
      v319 = 0;
      v323 = 0;
      v318 = 0u;
      v317 = 0u;
      v316 = 0u;
      v315 = 0u;
      v314 = &unk_1F0E071F8;
      v320 = 0;
      v322 = 0;
      v321 = 0;
      CMMMatrix::InitializeMatrix(&v314, &v315, v337, 1.0);
      CMMMatrix::MakeMatrixConv(&v314, *(v182 + 8), v186, v192);
    }

    else
    {
      if (*(a1 + 41) != 1)
      {
        if (v287)
        {
          ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(a1, theDicta);
        }

        goto LABEL_276;
      }

      v138 = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(theDicta);
      v140 = 8.0;
      v298 = 0.0;
      theDictc = 0.5;
      v141 = 1.0;
      v142 = 0.9;
      v143 = 0.35;
      v144 = 2.6667;
      if (v138)
      {
        v145 = v138;
        v146 = CFGetTypeID(v138);
        if (v146 == CFDictionaryGetTypeID())
        {
          v295 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
          v292 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
          v147 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
          theDictc = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
          v144 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
          v289 = float_from_dictionary_with_default(v145, @"com.apple.cmm.ContentEDRStrength", 1.0);
          v148 = int32_from_dictionary_with_default(v145, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
          v298 = float_from_dictionary_with_default(v145, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
          v143 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
          v149 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
          v141 = v147;
          v150 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
          v142 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
          v140 = float_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMStopAnchor", 8.0);
          v151 = int32_from_dictionary_with_default(v145, @"com.apple.cmm.RWTMVersion", 2);
          v152 = primaries_from_dictionary(v145);
        }

        else
        {
          v148 = 0;
          v151 = 2;
          v152 = 9;
          v292 = 203.0;
          v295 = 1000.0;
          v289 = 1.0;
          v149 = 2.6667;
          v150 = 0.35;
        }

        v101 = a1;
      }

      else
      {
        v148 = 0;
        v151 = 2;
        v152 = 9;
        v292 = 203.0;
        v295 = 1000.0;
        v289 = 1.0;
        v149 = 2.6667;
        v150 = 0.35;
      }

      v194 = *(v101 + 51);
      memset(v337, 0, sizeof(v337));
      ConversionManager::ColorantsForPrimaries(v101, v337, v152, v139);
      v331 = 0;
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      memset(valuePtr, 0, sizeof(valuePtr));
      CMMInvMatrix::CMMInvMatrix(valuePtr, v337, dword_19A9B0638);
      v197 = CMMBase::NewInternal(0x160, *(a1 + 8), v195, v196);
      v198 = a1;
      CMMConvInvMatrix::CMMConvInvMatrix(v197, valuePtr, *(a1 + 24));
      *v199 = &unk_1F0E0BA98;
      *(a1 + 24) = v199;
      if (!*(a1 + 16))
      {
        *(a1 + 16) = v199;
      }

      if (!v194)
      {
        v141 = 1.0;
      }

      v202 = CMMBase::NewInternal(0xA8, *(a1 + 8), v200, v201);
      v203 = *(a1 + 24);
      v300 = (a1 + 24);
      CMMConvRWToneMapping::CMMConvRWToneMapping(v202, 10000.0, v295, v292, v141, theDictc, v144, v289, v148, v298, v151, v203, v204, v205, v206, v207, v143, v149, v150, v142, v140);
      *v300 = v202;
      v319 = 0;
      v323 = 0;
      v318 = 0u;
      v317 = 0u;
      v316 = 0u;
      v315 = 0u;
      v314 = &unk_1F0E071F8;
      v320 = 0;
      v322 = 0;
      v321 = 0;
      CMMMatrix::InitializeMatrix(&v314, &v315, v337, 1.0);
      CMMMatrix::MakeMatrixConv(&v314, *(v198 + 8), v202, v208);
    }

    *v300 = v193;
    goto LABEL_276;
  }

  FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(0, theDicta);
  v104 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDicta);
  if (FlexLumaScalingOptions)
  {
    goto LABEL_221;
  }

  if (!FlexTRCOptions)
  {
    if (!v104)
    {
      goto LABEL_276;
    }

    goto LABEL_213;
  }

  v105 = *(a1 + 72);
  if (v105)
  {
    if (*(a1 + 89) == 16)
    {
      v106 = ColorSyncOptionsGetFlexTRCOptions(0, theDicta);
      if (v106)
      {
        v107 = v106;
        v108 = CFDictionaryGetValue(*(a1 + 72), kColorSyncPreGainMapCICP);
        v110 = v108;
        if (v108 && (v111 = CFGetTypeID(v108), v111 == CFNumberGetTypeID()))
        {
          LODWORD(valuePtr[0]) = 0;
          if (CFNumberGetValue(v110, kCFNumberSInt32Type, valuePtr) == 1)
          {
            v112 = valuePtr[0];
          }

          else
          {
            v112 = 0;
          }
        }

        else
        {
          v112 = 0;
        }

        memset(v341, 0, sizeof(v341));
        if (*(a1 + 88) != v112)
        {
          ConversionManager::ColorantsForPrimaries(a1, v341, v112, v109);
          v331 = 0;
          v329 = 0u;
          v330 = 0u;
          v327 = 0u;
          v328 = 0u;
          v325 = 0u;
          v326 = 0u;
          memset(valuePtr, 0, sizeof(valuePtr));
          CMMInvMatrix::CMMInvMatrix(valuePtr, v341, dword_19A9B0638);
          v212 = CMMBase::NewInternal(0x160, *(a1 + 8), v210, v211);
          CMMConvInvMatrix::CMMConvInvMatrix(v212, valuePtr, *(a1 + 24));
          *v213 = &unk_1F0E0BA98;
          *(a1 + 24) = v213;
        }

        if (CFDictionaryContainsKey(v105, kColorSyncMonoFlexGTCNodeTable) == 1 && CFDictionaryContainsKey(v105, kColorSyncMonoGainMapParams) == 1)
        {
          v214 = CFDictionaryGetValue(v105, kColorSyncMonoFlexGTCNodeTable);
          v215 = CFDictionaryGetValue(v105, kColorSyncMonoGainMapParams);
          FlexTRCLookup = CMMTable::CreateFlexTRCLookup(v214, v215, v107, *(a1 + 8), v216, v217, v218);
          if (FlexTRCLookup)
          {
            v220 = 0;
          }

          else
          {
            v220 = 4294967246;
          }

          CMMThrowExceptionOnError(v220);
          if (FlexTRCLookup)
          {
            v223 = CMMBase::NewInternal(0x60, *(a1 + 8), v221, v222);
            CMMPQCurveTag::CMMPQCurveTag(v223, FlexTRCLookup, 0);
            v224 = FlexTRCLookup[1];
            if (v224)
            {
              v225 = v223;
              v226 = v223;
              v227 = v224 - 1;
              FlexTRCLookup[1] = v227;
              v228 = a1;
              if (!v227)
              {
                goto LABEL_310;
              }
            }

            else
            {
              v225 = v223;
              v226 = v223;
              v228 = a1;
            }

            goto LABEL_313;
          }

          v235 = 0;
          v242 = 0;
          FlexTRCLookup = 0;
        }

        else
        {
          v229 = CFDictionaryGetValue(v105, kColorSyncRedFlexGTCNodeTable);
          v230 = CFDictionaryGetValue(v105, kColorSyncRedGainMapParams);
          v231 = (a1 + 8);
          v235 = CMMTable::CreateFlexTRCLookup(v229, v230, v107, *(a1 + 8), v232, v233, v234);
          if (v235)
          {
            v236 = 0;
          }

          else
          {
            v236 = 4294967246;
          }

          CMMThrowExceptionOnError(v236);
          v237 = CFDictionaryGetValue(v105, kColorSyncGrnFlexGTCNodeTable);
          v238 = CFDictionaryGetValue(v105, kColorSyncGrnGainMapParams);
          v242 = CMMTable::CreateFlexTRCLookup(v237, v238, v107, *v231, v239, v240, v241);
          if (v242)
          {
            v243 = 0;
          }

          else
          {
            v243 = 4294967246;
          }

          CMMThrowExceptionOnError(v243);
          v244 = CFDictionaryGetValue(v105, kColorSyncBluFlexGTCNodeTable);
          v245 = CFDictionaryGetValue(v105, kColorSyncBluGainMapParams);
          FlexTRCLookup = CMMTable::CreateFlexTRCLookup(v244, v245, v107, *v231, v246, v247, v248);
          if (FlexTRCLookup)
          {
            v249 = 0;
          }

          else
          {
            v249 = 4294967246;
          }

          CMMThrowExceptionOnError(v249);
        }

        v223 = CMMBase::NewInternal(0x60, *(a1 + 8), v221, v222);
        CMMPQCurveTag::CMMPQCurveTag(v223, v235, 0);
        v225 = CMMBase::NewInternal(0x60, *(a1 + 8), v250, v251);
        CMMPQCurveTag::CMMPQCurveTag(v225, v242, 0);
        v226 = CMMBase::NewInternal(0x60, *(a1 + 8), v252, v253);
        CMMPQCurveTag::CMMPQCurveTag(v226, FlexTRCLookup, 0);
        if (v235)
        {
          v254 = v235[1];
          if (v254)
          {
            v255 = v254 - 1;
            v235[1] = v255;
            if (!v255)
            {
              (*(*v235 + 8))(v235);
            }
          }
        }

        v228 = a1;
        if (v242)
        {
          v256 = v242[1];
          if (v256)
          {
            v257 = v256 - 1;
            v242[1] = v257;
            if (!v257)
            {
              (*(*v242 + 8))(v242);
            }
          }
        }

        if (FlexTRCLookup)
        {
          v258 = FlexTRCLookup[1];
          if (v258)
          {
            v259 = v258 - 1;
            FlexTRCLookup[1] = v259;
            if (!v259)
            {
LABEL_310:
              (*(*FlexTRCLookup + 8))(FlexTRCLookup);
            }
          }
        }

LABEL_313:
        v260 = 0;
        v339 = 0;
        v340 = 0;
        v337[0] = &unk_1F0E09700;
        v337[1] = v223;
        v337[2] = v225;
        v338 = v226;
        do
        {
          memset(valuePtr, 0, 56);
          LODWORD(valuePtr[0]) = 1;
          v261 = CMMRGBCurves::MakeTRC(v337, 1.0, valuePtr, *(v228 + 8), v260);
          v264 = CMMBase::NewInternal(0xA8, *(v228 + 8), v262, v263);
          *(a1 + 24) = CMMConvPQEOTF::CMMConvPQEOTF(v264, v260, v261, valuePtr, *(a1 + 24), 1.0);
          if (v261)
          {
            v265 = v261[1];
            if (v265)
            {
              v266 = v265 - 1;
              v261[1] = v266;
              if (!v266)
              {
                (*(*v261 + 8))(v261);
              }
            }
          }

          ++v260;
          v228 = a1;
        }

        while (v260 != 3);
        if (*(a1 + 88) != v112)
        {
          memset(valuePtr + 8, 0, 72);
          *&valuePtr[0] = &unk_1F0E071F8;
          v325 = 0uLL;
          v326 = 0uLL;
          CMMMatrix::InitializeMatrix(valuePtr, valuePtr + 8, v341, 1.0);
          CMMMatrix::MakeMatrixConv(valuePtr, *(a1 + 8), *(a1 + 24), v267);
          *(a1 + 24) = v268;
        }

        v269 = CFDictionaryGetValue(v105, kColorSyncPostGainMapCICP);
        v270 = v269;
        if (v269)
        {
          v271 = CFGetTypeID(v269);
          if (v271 == CFNumberGetTypeID())
          {
            LODWORD(valuePtr[0]) = 0;
            v272 = CFNumberGetValue(v270, kCFNumberSInt32Type, valuePtr);
            v274 = valuePtr[0];
            if (v272 != 1)
            {
              v274 = 0;
            }

            if (v274)
            {
              memset(v336, 0, sizeof(v336));
              ConversionManager::ColorantsForPrimaries(a1, v336, v274, v273);
              v331 = 0;
              v329 = 0u;
              v330 = 0u;
              v327 = 0u;
              v328 = 0u;
              v325 = 0u;
              v326 = 0u;
              memset(valuePtr, 0, sizeof(valuePtr));
              CMMInvMatrix::CMMInvMatrix(valuePtr, v336, dword_19A9B0638);
              v277 = CMMBase::NewInternal(0x160, *(a1 + 8), v275, v276);
              CMMConvInvMatrix::CMMConvInvMatrix(v277, valuePtr, *(a1 + 24));
              *v278 = &unk_1F0E0BA98;
              *(a1 + 24) = v278;
              v319 = 0;
              v323 = 0;
              v318 = 0u;
              v317 = 0u;
              v316 = 0u;
              v315 = 0u;
              v314 = &unk_1F0E071F8;
              v320 = 0;
              v322 = 0;
              v321 = 0;
              CMMMatrix::InitializeMatrix(&v314, &v315, v336, 1.0);
              CMMMatrix::MakeMatrixConv(&v314, *(a1 + 8), v277, v279);
              *(a1 + 24) = v280;
            }
          }
        }
      }
    }
  }

LABEL_276:
  v209 = *MEMORY[0x1E69E9840];
}

uint64_t CMMRGBCurves::MakeTRC(uint64_t a1, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = a1 + 8;
  v7 = *(a1 + 8);
  if (!a5)
  {
    result = (*(*v7 + 64))(a2);
LABEL_7:
    *(a1 + 32) = result;
    return result;
  }

  if (!(*(*v7 + 56))(v7, *(v8 + 8 * a5), *(v8 + 8 * (a5 - 1))))
  {
    result = (*(**(v8 + 8 * a5) + 64))(a2);
    goto LABEL_7;
  }

  result = *(a1 + 32);
  v11 = *(result + 8);
  if (v11)
  {
    *(result + 8) = v11 + 1;
  }

  return result;
}

uint64_t CMMConvTRC::GetTransformType(CMMConvTRC *this, const __CFDictionary *a2)
{
  v2 = *(this + 22);
  if (v2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

CMMMemMgr *ConversionManager::AddInvGrayConv(CMMMemMgr **this, CMMProfile *a2, char a3)
{
  Tag = CMMProfile::GetTag(a2, 1800688195);
  if (Tag)
  {
    v7 = **Tag;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 13) == 1281450528)
  {
    v9 = 1347182946;
  }

  else
  {
    v9 = *(a2 + 13);
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294967125;
  }

  CMMThrowExceptionOnError(v10);
  v23 = &unk_1F0E071F8;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 1065353216;
  v27 = 0;
  v24 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  if (v9 == 1482250784)
  {
    v12 = v26 + 8;
    DWORD1(v24) = 0x20000;
  }

  else
  {
    if (v9 != 1347182946)
    {
      goto LABEL_16;
    }

    v12 = v26 + 4;
    LODWORD(v24) = 0x10000;
  }

  *v12 = 1065353216;
  CMMMatrix::MakeMatrixConv(&v23, this[1], this[3], v11);
  this[3] = v13;
  if (!this[2])
  {
    this[2] = v13;
  }

LABEL_16:
  v21 = 0;
  v22 = 0;
  memset(v20, 0, sizeof(v20));
  LODWORD(v20[0]) = 1;
  v14 = (*(*v8 + 72))(v8, v20, this[1], &v22, 1.0);
  v15 = (*(*v8 + 40))(v8);
  v18 = CMMBase::NewInternal(0xB0, this[1], v16, v17);
  result = CMMConvInvertedTRC::CMMConvInvertedTRC(v18, 0, v14, v15, v22, v20, this[3], 1, a3 ^ 1u);
  this[3] = result;
  if (!this[2])
  {
    this[2] = result;
  }

  return result;
}

float *CMMMatrix::InitializeGrayMatrix(float *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  result[26] = *(a2 + 104) * *(a3 + 104);
  v4 = result + 2;
  v5 = result + 11;
  do
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if (v3)
      {
        v4[3 * v3 + v6] = 0.0;
        v5[3 * v3 + v6] = 0.0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0.0;
        result = (a3 + 44);
        do
        {
          v9 += *(v7 + v8 + 8) * *(result - 9);
          v11 = *result++;
          v10 = v10 + (v11 * *(v7 + v8 + 44));
          v8 += 12;
        }

        while (v8 != 36);
        LODWORD(v4[v6]) = (v9 + 0x8000) >> 16;
        v5[v6] = v10;
      }

      ++v6;
      v7 += 4;
    }

    while (v6 != 3);
    ++v3;
  }

  while (v3 != 3);
  return result;
}

unint64_t ConversionManager::GetMaxNofChannels(void *a1)
{
  v2 = 0;
  do
  {
    v3 = (*(*a1 + 176))(a1);
    if (v2 <= v3)
    {
      v2 = v3;
    }

    a1 = a1[2];
  }

  while (a1);
  if (v2 >= 0xF)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return v2;
}

const __CFDictionary *ConversionManager::exrToneMappingGammaIsRequested(const __CFDictionary *this, const __CFDictionary *a2)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, @"com.apple.cmm.ApplyToneMaping");
    if (this)
    {
      v2 = this;
      v3 = CFGetTypeID(this);
      if (v3 == CFDictionaryGetTypeID())
      {
        this = CFDictionaryGetValue(v2, @"com.apple.cmm.ApplyEXRToneMappingGamma");
        if (this)
        {
          v4 = CFGetTypeID(this);
          return (v4 == CFDictionaryGetTypeID());
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void CMMProfileInfoContainer::~CMMProfileInfoContainer(CMMProfileInfoContainer *this)
{
  CMMProfileInfoContainer::~CMMProfileInfoContainer(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E08560;
  v2 = (this + 8);
  v3 = *(this + 1);
  v4 = *(this + 2);
  while (v3 != v4)
  {
    v5 = *(v3 + 8);
    v6 = v5[2] - 1;
    v5[2] = v6;
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      (*(*v5 + 8))(v5);
      v4 = *(this + 2);
    }

    v3 += 40;
  }

  v8 = v2;
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void ConversionManager::~ConversionManager(ConversionManager *this)
{
  *this = &unk_1F0E09FB0;
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  ConversionManager::~ConversionManager(this);

  CMMBase::operator delete(v1);
}

void CMMConvInvertedTRC::~CMMConvInvertedTRC(CMMConvInvertedTRC *this)
{
  *this = &unk_1F0E06EB0;
  v2 = *(this + 21);
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

  CMMConvTRC::~CMMConvTRC(this);
}

{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMConvTRC::SetNOP(uint64_t this)
{
  *(this + 160) = 1;
  *(this + 32) = 1;
  return this;
}

void CMMConvTRC::~CMMConvTRC(CMMConvTRC *this)
{
  *this = &unk_1F0E06B40;
  v2 = *(this + 8);
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

  if (!*(this + 22))
  {
    v5 = *(this + 13);
    if (!v5)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

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
}

{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void ConversionManager::AddGrayConv(ConversionManager *this, CMMProfile *a2, int a3, const __CFDictionary *a4)
{
  Tag = CMMProfile::GetTag(a2, 1800688195);
  if (Tag)
  {
    v9 = **Tag;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 13) == 1281450528)
  {
    v11 = 1347182946;
  }

  else
  {
    v11 = *(a2 + 13);
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4294967125;
  }

  CMMThrowExceptionOnError(v12);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  LODWORD(v41[0]) = 1;
  v13 = (*(*v10 + 64))(v10, v41, *(this + 1), v11 != 1482250784, 1.0);
  v14 = (*(*v10 + 40))(v10);
  v17 = CMMBase::NewInternal(0xA8, *(this + 1), v15, v16);
  v18 = CMMConvTRC::CMMConvTRC(v17, 0, v13, v14, v41, *(this + 3), 1, 1, 1.0, 1, a3 ^ 1u);
  *(this + 3) = v18;
  if (*(this + 2))
  {
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 2) = v18;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (ConversionManager::exrToneMappingGammaIsRequested(a4, v19))
  {
    ConversionManager::AddEXRToneMapping(this, a4, 1);
  }

LABEL_16:
  v32 = &unk_1F0E071F8;
  v40[0] = 0;
  v38 = 0;
  v39 = 0;
  v40[1] = 1065353216;
  v37 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (v11 == 1347182946)
  {
    v21 = v40 + 1;
    v22 = v40;
    v23 = &v39;
    v24 = &v38 + 4;
    v25 = 0.5;
    v26 = 1.0;
    v27 = 8421504;
    v28 = 0x10000;
    v29 = 0.5;
    v30 = 8421504;
  }

  else
  {
    if (v11 != 1482250784)
    {
      return;
    }

    v21 = &v36 + 3;
    v22 = &v36;
    v23 = &v34 + 2;
    v24 = &v33 + 12;
    v25 = 1.0;
    v30 = 27030;
    v27 = 0x8000;
    v29 = 0.8249;
    v26 = 0.9642;
    v28 = 31595;
  }

  LODWORD(v33) = v28;
  *v24 = v27;
  *v23 = v30;
  *(&v35 + 1) = v26;
  *v22 = v25;
  *v21 = v29;
  CMMMatrix::MakeMatrixConv(&v32, *(this + 1), *(this + 3), v20);
  *(this + 3) = v31;
}

CMMConvNode *ConversionManager::MakeConversionSequence()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v446 = v3;
  v492 = *MEMORY[0x1E69E9840];
  memset(v476, 0, sizeof(v476));
  v472[0] = &unk_1F0E09700;
  memset(&v472[1], 0, 40);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16) - v4;
  if (!v5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = v2;
  v7 = v0;
  v8 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v450 = v1;
  if (*(v4 + 34))
  {
    v10 = 0;
    v11 = (v4 + 74);
    while (v9 - 1 != v10)
    {
      v12 = *v11;
      v11 += 40;
      ++v10;
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v9;
LABEL_12:
    v13 = v10 < v8;
  }

  else
  {
    v13 = 1;
  }

  v447 = v13;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  HDRMediaReferenceWhite = ColorSyncOptionsGetHDRMediaReferenceWhite(v2);
  v15 = ColorSyncOptionsLegacyHDREcosystemRequested(v6);
  v16 = 100.0;
  v17 = HDRMediaReferenceWhite == 100.0 || v15;
  *(v7 + 61) = v17;
  if (!v15)
  {
    v16 = HDRMediaReferenceWhite;
  }

  v467 = (v7 + 16);
  *(v7 + 64) = v16;
  theDict = v6;
  v470 = v7;
  if (v6)
  {
    v18 = CFGetTypeID(v6);
    v38 = v18 == CFDictionaryGetTypeID();
    v6 = theDict;
    if (v38)
    {
      v6 = theDict;
      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite"))
      {
        if (ColorSyncOptionsGetHDRMediaReferenceWhite(theDict) == 203.0)
        {
          *(v7 + 64) = 1128988672;
          *(v7 + 61) = 0;
        }
      }
    }
  }

  if (ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(v6))
  {
    *(v7 + 64) = 1128988672;
    *(v7 + 61) = 0;
  }

  v19 = v450;
  if (ColorSyncOptionsDisplayReferredToneMappingRequested(v6))
  {
    *(v7 + 64) = 1128988672;
    *(v7 + 61) = 0;
  }

  v21 = *(v450 + 8);
  v20 = *(v450 + 16);
  if (v21 == v20)
  {
    goto LABEL_543;
  }

  v461 = 0;
  v22 = 0;
  v445 = *MEMORY[0x1E695E4D0];
  v462 = -1;
  v23 = 1.0;
  v444 = vneg_f32(0x8080808080808080);
  do
  {
    v24 = v462;
    v25 = v461;
    v461 = *(v21 + 8);
    v462 = *(v21 + 16);
    v451 = *(v21 + 20);
    v457 = v21;
    v458 = *(v19 + 8);
    v471 = 0;
    v448 = *(v21 + 33);
    if (*v467)
    {
      goto LABEL_61;
    }

    v26 = v461[2];
    FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(v26, theDict);
    if (FlexTRCOptions)
    {
      FlexTRCOptions = ColorSyncProfileCopyFlexGTCInfo(v26);
      if (FlexTRCOptions)
      {
        v28 = FlexTRCOptions;
        CICPInfo = ColorSyncProfileGetCICPInfo(v26);
        if (CICPInfo)
        {
          v30 = *CICPInfo;
          Value = CFDictionaryGetValue(v28, kColorSyncPreGainMapCICP);
          if (Value && (v32 = Value, v33 = CFGetTypeID(Value), v33 == CFNumberGetTypeID()))
          {
            LODWORD(valuePtr[0]) = 0;
            if (CFNumberGetValue(v32, kCFNumberSInt32Type, valuePtr) == 1)
            {
              v34 = LOBYTE(valuePtr[0]);
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = CFDictionaryGetValue(v28, kColorSyncPostGainMapCICP);
          v36 = v35;
          if (v35)
          {
            v37 = CFGetTypeID(v35);
            if (v37 == CFNumberGetTypeID())
            {
              LODWORD(valuePtr[0]) = 0;
              if (CFNumberGetValue(v36, kCFNumberSInt32Type, valuePtr) == 1)
              {
                LOBYTE(v36) = valuePtr[0];
              }

              else
              {
                LOBYTE(v36) = 0;
              }
            }

            else
            {
              LOBYTE(v36) = 0;
            }
          }

          CFRelease(v28);
          v38 = v30 != v34 || v30 == v36;
          if ((v38 || v36 == 0) && v30 == v34)
          {
            FlexTRCOptions = 0;
          }

          else
          {
            FlexTRCOptions = ColorSyncProfileCopyFlexGTCInfo(v26);
          }

          v7 = v470;
          v21 = v457;
        }

        else
        {
          CFRelease(v28);
          FlexTRCOptions = 0;
        }
      }
    }

    v41 = *(v7 + 16);
    *(v7 + 72) = FlexTRCOptions;
    if (v41)
    {
LABEL_61:
      v42 = *(v7 + 80);
    }

    else
    {
      v242 = v461[2];
      if (ColorSyncOptionsGetFlexLumaScalingOptions(v242, theDict) || (v42 = ColorSyncOptionsGetFlexTRCOptions(v242, theDict)) != 0)
      {
        v42 = ColorSyncProfileCopyFlexGTCInfo(v242);
      }
    }

    *(v7 + 80) = v42;
    if (!*(v7 + 16) && *(v7 + 72) | v42)
    {
      *(v7 + 64) = 1128988672;
      *(v7 + 61) = 0;
    }

    v43 = ColorSyncProfileGetCICPInfo(v461[2]);
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    v455 = v20 - 40;
    *(v7 + 88) = v44;
    *(v7 + 40) = *(v21 + 34);
    *(v470 + 8) = (*(*v461 + 6))(v461, v462);
    v45 = (*(*v461 + 7))(v461, v462, &v471);
    v46 = v470;
    *(v470 + 9) = v45;
    v47 = v457;
    *(v470 + 45) = *(v457 + 27);
    *(v470 + 41) = *(v457 + 29);
    *(v470 + 57) = *(v457 + 35);
    if (v21 == v20 - 40)
    {
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v48 = *(v457 + 69);
      v49 = *(v457 + 70);
    }

    v50 = v20 - 40;
    *(v470 + 47) = v48;
    *(v470 + 48) = v49 & 1;
    if (v457 == v458)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = *(v457 - 11);
      v52 = *(v457 - 10);
    }

    *(v470 + 52) = v51;
    *(v470 + 53) = v52 & 1;
    if (v457 == v455)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(v457 + 68);
    }

    *(v470 + 50) = v53 & 1;
    if (v457 == v458)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v457 - 12);
    }

    *(v470 + 55) = v54 & 1;
    if (v457 == v455)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(v457 + 67);
    }

    *(v470 + 49) = v55 & 1;
    if (v457 == v458)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(v457 - 13);
    }

    *(v470 + 54) = v56 & 1;
    if (v457 == v455)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(v457 + 74);
    }

    *(v470 + 51) = v57 & 1;
    if (v457 == v458)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(v457 - 6);
    }

    *(v470 + 56) = v58 & 1;
    if (v462 == 4)
    {
      v454 = 0;
    }

    else
    {
      v454 = (*(*v461 + 9))(v461, v25, v24);
      v46 = v470;
      v47 = v457;
      v50 = v20 - 40;
    }

    if (v47 != v458)
    {
      v59 = *(v46 + 8);
      if (v22 == 1347182946)
      {
        v60 = 1145856354;
      }

      else
      {
        v60 = v22;
      }

      if (v59 == 1347182946)
      {
        v59 = 1145856354;
      }

      if (v60 != v59)
      {
        v436 = __cxa_allocate_exception(4uLL);
        *v436 = -178;
      }
    }

    if (v47 == v50)
    {
      v449 = 0;
    }

    else
    {
      v449 = (*(**(v47 + 48) + 48))(*(v47 + 48), *(v47 + 56));
    }

    if ((*(*v461 + 13))(v461) && (*(*v461 + 5))(v461, v476, v472, theDict))
    {
      LuminanceCoefficients = ColorSyncProfileGetLuminanceCoefficients(v461[2]);
      if (LuminanceCoefficients)
      {
        v62 = 0;
      }

      else
      {
        v62 = 4294967126;
      }

      CMMThrowExceptionOnError(v62);
      v64 = *LuminanceCoefficients;
      v63 = *(LuminanceCoefficients + 1);
      v66 = *(LuminanceCoefficients + 2);
      v65 = *(LuminanceCoefficients + 3);
      if (v462 > 8)
      {
        v7 = v470;
        if (v462 <= 12)
        {
          if (v462 != 9)
          {
            if (v462 == 10)
            {
              valuePtr[0] = xmmword_19A96E310;
              *&valuePtr[1] = 0;
              *(&valuePtr[1] + 1) = __PAIR64__(v63, v64);
              *&valuePtr[2] = __PAIR64__(v65, v66);
              memset(&valuePtr[2] + 8, 0, 72);
              ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 10, valuePtr, theDict);
              v7 = v470;
              if (v457 != v455)
              {
                goto LABEL_365;
              }
            }

            goto LABEL_290;
          }

          valuePtr[0] = xmmword_19A96E310;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 1) = __PAIR64__(v63, v64);
          *&valuePtr[2] = __PAIR64__(v65, v66);
          memset(&valuePtr[2] + 8, 0, 72);
          ConversionManager::AddMatrixConv(v470, v476, v472, *(v470 + 40), 9, valuePtr, theDict);
          goto LABEL_289;
        }

        if (v462 == 13)
        {
          ConversionManager::AddMatrixConv(v470, v476, v472, *(v470 + 40), 13, 0, theDict);
          goto LABEL_289;
        }

        if (v462 == 14)
        {
          ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 14, 0, theDict);
          v7 = v470;
          if (v457 != v455)
          {
LABEL_365:
            ConversionManager::AddLinearMatrixConv(v470, v476);
            v7 = v470;
            *(v470 + 9) = 1482250784;
            goto LABEL_290;
          }
        }

        goto LABEL_290;
      }

      v7 = v470;
      if (v462 != 1)
      {
        if (v462 != 2)
        {
          if (v462 == 3)
          {
            goto LABEL_325;
          }

          goto LABEL_290;
        }

        valuePtr[0] = xmmword_19A96E310;
        *&valuePtr[1] = 0;
        *(&valuePtr[1] + 1) = __PAIR64__(v63, v64);
        *&valuePtr[2] = __PAIR64__(v65, v66);
        memset(&valuePtr[2] + 8, 0, 72);
        ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 2, valuePtr, theDict);
        goto LABEL_289;
      }

      v295 = theDict;
      v296 = v457 != v455 && *(v470 + 51) == 0;
      v297 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(theDict);
      FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(v461[2], theDict);
      v299 = ColorSyncOptionsGetFlexTRCOptions(v461[2], theDict);
      if (v299 && !*(v470 + 10))
      {
        v442 = __cxa_allocate_exception(4uLL);
        *v442 = -171;
      }

      if (FlexLumaScalingOptions && !*(v470 + 10))
      {
        v443 = __cxa_allocate_exception(4uLL);
        *v443 = -171;
      }

      if (theDict)
      {
        v300 = FlexLumaScalingOptions != 0;
        v301 = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMappingForBT2100");
        v302 = CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipToneMappingForBT2100") != v445;
        v297 |= v301 == v445 || v300;
        v295 = theDict;
        v303 = ColorSyncOptionsDisplayReferredToneMappingRequested(theDict);
        v304 = v302 | v303;
        v7 = v470;
      }

      else
      {
        v303 = 0;
        if (FlexLumaScalingOptions)
        {
          v297 = 1;
        }

        v304 = 1;
      }

      if (((*(v7 + 41) & 1) != 0 || *(v7 + 46) == 1) && (v296 | (v299 != 0) | v297 & 1 || *(v7 + 48) == 1))
      {
        if (v304)
        {
LABEL_410:
          valuePtr[0] = xmmword_19A96E350;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 1) = __PAIR64__(v63, v64);
          *&valuePtr[2] = __PAIR64__(v65, v66);
          memset(&valuePtr[2] + 8, 0, 72);
          if (*(v7 + 48) == 1)
          {
            DWORD2(valuePtr[0]) = 1148846080;
          }

          ConversionManager::AddMatrixConv(v7, v476, v472, *(v7 + 40), 1, valuePtr, v295);
          goto LABEL_289;
        }
      }

      else if (v303)
      {
        goto LABEL_410;
      }

      if (*(v7 + 42) == 1)
      {
        valuePtr[0] = xmmword_19A96E340;
        *&valuePtr[1] = 0;
        *(&valuePtr[1] + 1) = __PAIR64__(v63, v64);
        *&valuePtr[2] = __PAIR64__(v65, v66);
        memset(&valuePtr[2] + 8, 0, 72);
        ConversionManager::AddMatrixConv(v7, v476, v472, *(v7 + 40), 1, valuePtr, v295);
      }

      else
      {
        ConversionManager::AddMatrixConv(v7, v476, v472, *(v7 + 40), 1, 0, v295);
      }

      goto LABEL_289;
    }

    if (((v462 == 2) & v454) == 0)
    {
      v67 = (*(*v461 + 4))(v461, v462, v451);
      v459 = v67;
      if (v67)
      {
        v68 = *(v67 + 8);
        v7 = v470;
        if (v68 == *(v67 + 16))
        {
          goto LABEL_290;
        }

        while (1)
        {
          v460 = v68;
          v69 = (*(*v461 + 11))(v461, v68[2]);
          if (v69)
          {
            v70 = **v69;
          }

          else
          {
            v71 = 0;
          }

          v72 = (*(*v461 + 11))(v461, v460[2]);
          if (v72)
          {
            v73 = **v72;
            v75 = v470;
            v76 = v460;
            if (!v71)
            {
              v77 = v74;
              if (!v74)
              {
                goto LABEL_592;
              }

              v78 = v460[3];
              v463 = v460[4];
              v79 = *(v470 + 40);
              HasCLUT = CMMLutTag::HasCLUT(v74);
              v80 = CMMLutTag::HasCLUT(v77);
              v81 = (*(*v77 + 48))(v77);
              v82 = v81;
              v453 = v81;
              if (v81 >= 0x10uLL || v81 == 0)
              {
                v84 = 4294967126;
              }

              else
              {
                v84 = 0;
              }

              CMMThrowExceptionOnError(v84);
              v85 = (*(*v77 + 56))(v77);
              v86 = v85;
              v452 = v85;
              if (v85 >= 0x10uLL || v85 == 0)
              {
                v88 = 4294967126;
              }

              else
              {
                v88 = 0;
              }

              CMMThrowExceptionOnError(v88);
              memset(v482, 0, sizeof(v482));
              v483 = 0;
              LODWORD(v482[0]) = 1;
              if (v78 == 1482250784)
              {
                if (v462 == 1)
                {
                  v91 = v79 ^ 1;
                }

                else
                {
                  v91 = 0;
                }

                if (v462 == 1)
                {
                  v79 = 1;
                }

                ConversionManager::AddScalingDownFloatXYZ(v470, v91, v89, v90);
              }

              v465 = !v80;
              if (v462 == 1)
              {
                v92 = v79 ^ 1;
              }

              else
              {
                v92 = 0;
              }

              v93 = v470;
              if (v82)
              {
                v94 = 0;
                do
                {
                  v95 = (*(*v77 + 96))(v77, v94, v482, *(v93 + 1), v78);
                  if (v95)
                  {
                    v96 = (*(*v77 + 80))(v77, v94);
                    v99 = CMMBase::NewInternal(0xA8, *(v470 + 1), v97, v98);
                    v100 = CMMConvTRC::CMMConvTRC(v99, v94, v95, v96, v482, *(v470 + 3), v82, !HasCLUT, 1.0, v465, v92);
                    *(v470 + 3) = v100;
                    v79 |= v92;
                    v93 = v470;
                    if (!*(v470 + 2))
                    {
                      *v467 = v100;
                    }
                  }

                  else
                  {
                    v93 = v470;
                  }

                  v94 = (v94 + 1);
                }

                while (v82 != v94);
              }

              v101 = (*(*v77 + 104))(v77);
              if (v101)
              {
                memset(valuePtr, 0, 112);
                CMMMatrix::CMMMatrix(valuePtr, v101, 1.0);
                CMMMatrix::MakeMatrixConv(valuePtr, *(v470 + 1), *(v470 + 3), v102);
                *(v470 + 3) = v103;
                if (!((v462 != 1) | v79 & 1))
                {
                  (*(*v103 + 24))(v103);
                  v79 = 1;
                }

                v104 = v470;
                if (!*v467)
                {
                  *(v470 + 2) = *(v470 + 3);
                }
              }

              else
              {
                v104 = v470;
              }

              if (v82)
              {
                v153 = 0;
                v154 = (v462 == 1) & (v79 ^ 1);
                do
                {
                  v155 = (*(*v77 + 112))(v77, v153, v482, *(v104 + 1), v78);
                  if (v155)
                  {
                    v156 = (*(*v77 + 144))(v77, v153);
                    v159 = CMMBase::NewInternal(0xA8, *(v470 + 1), v157, v158);
                    v160 = CMMConvTRC::CMMConvTRC(v159, v153, v155, v156, v482, *(v470 + 3), v82, !HasCLUT, 1.0, v465, v154);
                    *(v470 + 3) = v160;
                    v79 |= v154;
                    v104 = v470;
                    if (!*(v470 + 2))
                    {
                      *v467 = v160;
                    }
                  }

                  else
                  {
                    v104 = v470;
                  }

                  v153 = (v153 + 1);
                }

                while (v82 != v153);
              }

              if (CMMLutTag::HasCLUT(v77))
              {
                ConversionManager::AddCLUTConv(v470, v77, v453, v452);
                v161 = v470;
                v162 = *(v470 + 3);
                v163 = v462 != 1;
                if (!v162)
                {
                  v163 = 1;
                }

                if (((v163 | v79) & 1) == 0)
                {
                  (*(*v162 + 24))(v162);
                  LOBYTE(v79) = 1;
                  goto LABEL_233;
                }
              }

              else
              {
LABEL_233:
                v161 = v470;
              }

              if (v86)
              {
                v164 = 0;
                v165 = (v462 == 1) & (v79 ^ 1);
                do
                {
                  v166 = (*(*v77 + 120))(v77, v164, v482, *(v161 + 1), v463);
                  if (v166)
                  {
                    v167 = (*(*v77 + 152))(v77, v164);
                    v170 = CMMBase::NewInternal(0xA8, *(v470 + 1), v168, v169);
                    v171 = CMMConvTRC::CMMConvTRC(v170, v164, v166, v167, v482, *(v470 + 3), v86, !HasCLUT, 1.0, v465, v165);
                    *(v470 + 3) = v171;
                    LOBYTE(v79) = v165 | v79;
                    v161 = v470;
                    if (!*(v470 + 2))
                    {
                      *v467 = v171;
                    }
                  }

                  else
                  {
                    v161 = v470;
                  }

                  v164 = (v164 + 1);
                }

                while (v86 != v164);
              }

              v172 = (*(*v77 + 128))(v77);
              if (v172)
              {
                memset(valuePtr, 0, 112);
                CMMMatrix::CMMMatrix(valuePtr, v172, 1.0);
                CMMMatrix::MakeMatrixConv(valuePtr, *(v470 + 1), *(v470 + 3), v175);
                *(v470 + 3) = v176;
                if (!((v462 != 1) | v79 & 1))
                {
                  (*(*v176 + 24))(v176);
                  LOBYTE(v79) = 1;
                }

                v7 = v470;
                if (!*v467)
                {
                  *(v470 + 2) = *(v470 + 3);
                }
              }

              else
              {
                v7 = v470;
              }

              if (v86)
              {
                v177 = 0;
                v178 = (v462 == 1) & (v79 ^ 1);
                do
                {
                  v179 = (*(*v77 + 136))(v77, v177, v482, *(v7 + 8), v463);
                  if (v179)
                  {
                    v180 = (*(*v77 + 88))(v77, v177);
                    v183 = CMMBase::NewInternal(0xA8, *(v470 + 1), v181, v182);
                    v184 = CMMConvTRC::CMMConvTRC(v183, v177, v179, v180, v482, *(v470 + 3), v86, !HasCLUT, 1.0, v465, v178);
                    *(v470 + 3) = v184;
                    LOBYTE(v79) = v178 | v79;
                    v7 = v470;
                    if (!*(v470 + 2))
                    {
                      *v467 = v184;
                    }
                  }

                  else
                  {
                    v7 = v470;
                  }

                  v177 = (v177 + 1);
                }

                while (v86 != v177);
              }

              if (v463 == 1482250784)
              {
                ConversionManager::AddScalingUpFloatXYZ(v7, v172, v173, v174);
                v7 = v470;
              }

              if ((v462 != 2) | v79 & 1)
              {
                goto LABEL_258;
              }

              goto LABEL_257;
            }
          }

          else
          {
            v75 = v470;
            v76 = v460;
            if (!v71)
            {
LABEL_592:
              v435 = __cxa_allocate_exception(4uLL);
              *v435 = -171;
            }
          }

          v105 = v76[3];
          v469 = v76[4];
          v106 = *(v75 + 40);
          v107 = (*(*v71 + 48))(v71);
          v108 = v107;
          v466 = v107;
          if (v107 >= 0x10uLL || v107 == 0)
          {
            v110 = 4294967126;
          }

          else
          {
            v110 = 0;
          }

          CMMThrowExceptionOnError(v110);
          v111 = (*(*v71 + 56))(v71);
          v112 = v111;
          v464 = v111;
          if (v111 >= 0x10uLL || v111 == 0)
          {
            v114 = 4294967126;
          }

          else
          {
            v114 = 0;
          }

          CMMThrowExceptionOnError(v114);
          v117 = v470;
          if (v105 == 1482250784)
          {
            if (v462 == 1)
            {
              v118 = v106 ^ 1;
            }

            else
            {
              v118 = 0;
            }

            if (v462 == 1)
            {
              v106 = 1;
            }

            ConversionManager::AddScalingDownFloatXYZ(v470, v118, v115, v116);
            if ((*(*v71 + 160))(v71))
            {
              v117 = v470;
            }

            else
            {
              v119 = 0;
              *(&valuePtr[6] + 1) = 1065353216;
              *&valuePtr[0] = &unk_1F0E071F8;
              v120 = &valuePtr[2] + 3;
              memset(valuePtr + 8, 0, 96);
              do
              {
                v121 = -3;
                v122 = v120;
                do
                {
                  v123 = (*(*v71 + 168))(v71, v119, (v121 + 3));
                  *(v122 - 9) = v123;
                  v125 = vcvtd_n_f64_s32(v123, 0x10uLL);
                  *v122++ = v125;
                  v126 = __CFADD__(v121++, 1);
                }

                while (!v126);
                ++v119;
                v120 += 3;
              }

              while (v119 != 3);
              CMMMatrix::MakeMatrixConv(valuePtr, *(v470 + 1), *(v470 + 3), v124);
              *(v470 + 3) = v127;
              v117 = v470;
              if (!*(v470 + 2))
              {
                *v467 = v127;
              }
            }
          }

          if (v462 == 1)
          {
            v128 = v106 ^ 1;
          }

          else
          {
            v128 = 0;
          }

          if (v108)
          {
            v129 = 0;
            do
            {
              memset(valuePtr, 0, 56);
              LODWORD(valuePtr[0]) = 1;
              v130 = (*(*v71 + 112))(v71, v129, valuePtr, *(v117 + 1), v105);
              v131 = (*(*v71 + 80))(v71, v129);
              v134 = CMMBase::NewInternal(0xA8, *(v117 + 1), v132, v133);
              v135 = CMMConvTRC::CMMConvTRC(v134, v129, v130, v131, valuePtr, *(v470 + 3), v108, 1, 1.0, 1, v128);
              *(v470 + 3) = v135;
              v117 = v470;
              if (!*(v470 + 2))
              {
                *v467 = v135;
              }

              v106 |= v128;
              v129 = (v129 + 1);
            }

            while (v108 != v129);
            v138 = v462 == 1 && v108 == 3;
            if (v138 & v106)
            {
              if (ConversionManager::exrToneMappingGammaIsRequested(theDict, v136))
              {
                ConversionManager::AddEXRToneMapping(v470, theDict, 3);
              }

              v106 = 1;
            }
          }

          if (!(*(*v71 + 192))(v71))
          {
            goto LABEL_210;
          }

          ConversionManager::AddCLUTConv(v470, v71, v466, v464);
          v7 = v470;
          v142 = *(v470 + 3);
          v143 = v462 != 1;
          if (!v142)
          {
            v143 = 1;
          }

          if (((v143 | v106) & 1) == 0)
          {
            break;
          }

LABEL_211:
          if (v112)
          {
            v144 = 0;
            v145 = (v462 == 1) & (v106 ^ 1);
            do
            {
              memset(valuePtr, 0, 56);
              LODWORD(valuePtr[0]) = 1;
              v146 = (*(*v71 + 120))(v71, v144, valuePtr, *(v7 + 8), v469);
              v147 = (*(*v71 + 88))(v71, v144);
              v150 = CMMBase::NewInternal(0xA8, *(v7 + 8), v148, v149);
              v151 = CMMConvTRC::CMMConvTRC(v150, v144, v146, v147, valuePtr, *(v470 + 3), v112, 1, 1.0, 1, v145);
              *(v470 + 3) = v151;
              v7 = v470;
              if (!*(v470 + 2))
              {
                *v467 = v151;
              }

              LOBYTE(v106) = v145 | v106;
              v144 = (v144 + 1);
            }

            while (v112 != v144);
          }

          if (v469 == 1482250784)
          {
            ConversionManager::AddScalingUpFloatXYZ(v7, v139, v140, v141);
            v7 = v470;
          }

          v152 = v459;
          if ((v462 != 2) | v106 & 1)
          {
            goto LABEL_259;
          }

LABEL_257:
          (*(**(v7 + 24) + 48))(*(v7 + 24));
          v7 = v470;
LABEL_258:
          v152 = v459;
LABEL_259:
          v68 = v460 + 6;
          if (v460 + 6 == *(v152 + 16))
          {
            goto LABEL_290;
          }
        }

        (*(*v142 + 24))(v142);
        LOBYTE(v106) = 1;
LABEL_210:
        v7 = v470;
        goto LABEL_211;
      }
    }

    if (!(*(*v461 + 12))(v461))
    {
      v223 = (*(*v461 + 5))(v461, v476, v472, 0);
      if (v462 == 1)
      {
        v224 = v223;
      }

      else
      {
        v224 = 0;
      }

      if (v224 == 1)
      {
        ConversionManager::AddMatrixConv(v470, v476, v472, *(v470 + 40), 1, 0, theDict);
      }

      else
      {
        v243 = theDict;
        v244 = v470;
        if ((v462 != 2 || (v223 & 1) == 0) | v454 & 1)
        {
          if (v462 == 3)
          {
            v245 = v223;
          }

          else
          {
            v245 = 0;
          }

          if (v245 == 1)
          {
LABEL_325:
            ConversionManager::AddMatrixConvPCSToPCS(v470, v476, v472, *(v470 + 40), theDict);
          }

          else
          {
            v294 = *(v461 + 12);
            if ((v294 - 1296255029) < 4 || v294 == 1281450528)
            {
LABEL_594:
              v437 = __cxa_allocate_exception(4uLL);
              *v437 = -171;
            }

            if (v294 == 1196573017 && v462 == 1)
            {
              ConversionManager::AddGrayConv(v470, v461, *(v470 + 40), theDict);
            }

            else if (v462 == 2 && v294 == 1196573017)
            {
              ConversionManager::AddInvGrayConv(v470, v461, *(v470 + 40));
            }

            else
            {
              if (v294 != 1196573017 || v462 != 3)
              {
                goto LABEL_594;
              }

              v353 = *(v461 + 13);
              if (v353 == 1347182946 || v353 == 1281450528)
              {
                v354 = *(v470 + 40);
                ConversionManager::AddInvGrayConv(v470, v461, *(v470 + 40));
                ConversionManager::AddGrayConv(v470, v461, v354, 0);
              }

              else
              {
                *(&valuePtr[6] + 1) = 1065353216;
                *&valuePtr[0] = &unk_1F0E071F8;
                memset(valuePtr + 8, 0, 96);
                ConversionManager::AddXYZToLab(v470);
                DWORD2(valuePtr[0]) = 0x10000;
                HIDWORD(valuePtr[2]) = 1065353216;
                CMMMatrix::MakeMatrixConv(valuePtr, *(v470 + 1), *(v470 + 3), v355);
                *(v470 + 3) = v356;
                DWORD2(valuePtr[0]) = 0x10000;
                *(&valuePtr[5] + 4) = v444;
                HIDWORD(valuePtr[2]) = 1065353216;
                *&valuePtr[6] = 0x3F0000003F000000;
                CMMMatrix::MakeMatrixConv(valuePtr, *(v470 + 1), v356, v357);
                *(v470 + 3) = v358;
                ConversionManager::AddLabToXYZ(v470);
              }
            }
          }
        }

        else
        {
          if (v25 && (v288 = (*(*v25 + 13))(v25), v243 = theDict, v244 = v470, v288))
          {
            v289 = ColorSyncProfileGetLuminanceCoefficients(v461[2]);
            if (v289)
            {
              v290 = 0;
            }

            else
            {
              v290 = 4294967126;
            }
          }

          else
          {
            if (!v243)
            {
              ConversionManager::AddInvMatrixConv(v244, v476, v472, *(v244 + 40), 2, 0, 0);
              goto LABEL_289;
            }

            if (CFDictionaryGetValue(v243, @"com.apple.cmm.ApplyYCCGammaScaling") == v445)
            {
              RGBtoYCCMatrix = ColorSyncProfileGetRGBtoYCCMatrix(v461[2]);
              YCCtoRGBMatrix = ColorSyncProfileGetYCCtoRGBMatrix(v461[2]);
              if (YCCtoRGBMatrix)
              {
                v307 = RGBtoYCCMatrix == 0;
              }

              else
              {
                v307 = 1;
              }

              if (v307)
              {
                v308 = 4294967126;
              }

              else
              {
                v308 = 0;
              }

              CMMThrowExceptionOnError(v308);
              *(&valuePtr[6] + 1) = 0;
              *(&valuePtr[5] + 8) = 0u;
              *(&valuePtr[4] + 8) = 0u;
              *(&valuePtr[3] + 8) = 0u;
              *(&valuePtr[2] + 8) = 0u;
              *&valuePtr[0] = 1120403456;
              DWORD2(valuePtr[0]) = 1120403456;
              memset(valuePtr + 12, 0, 28);
              v309 = *RGBtoYCCMatrix;
              v310 = *(RGBtoYCCMatrix + 1);
              *(&valuePtr[4] + 2) = RGBtoYCCMatrix[8];
              *(&valuePtr[3] + 8) = v310;
              *(&valuePtr[2] + 8) = v309;
              v311 = *YCCtoRGBMatrix;
              v312 = *(YCCtoRGBMatrix + 1);
              *(&valuePtr[6] + 3) = YCCtoRGBMatrix[8];
              *(&valuePtr[5] + 12) = v312;
              *(&valuePtr[4] + 12) = v311;
              ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 2, valuePtr, theDict);
              goto LABEL_289;
            }

            if (CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyLuminanceScaling") != v445)
            {
              ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 2, 0, theDict);
              goto LABEL_289;
            }

            v289 = ColorSyncProfileGetLuminanceCoefficients(v461[2]);
            if (v289)
            {
              v290 = 0;
            }

            else
            {
              v290 = 4294967126;
            }
          }

          CMMThrowExceptionOnError(v290);
          v291 = *v289;
          valuePtr[0] = xmmword_19A96E310;
          *&valuePtr[1] = 0;
          *(&valuePtr[1] + 8) = v291;
          memset(&valuePtr[2] + 8, 0, 72);
          ConversionManager::AddInvMatrixConv(v470, v476, v472, *(v470 + 40), 2, valuePtr, theDict);
        }
      }

LABEL_289:
      v7 = v470;
      goto LABEL_290;
    }

    if (v462 == 2)
    {
      pthread_mutex_lock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
      if (!legacyPCSToLabChanLTable)
      {
        *&valuePtr[0] = 0;
        CMMMemMgr::CMMMemMgr(valuePtr);
        v248 = CMMBase::NewInternal(0x5408, valuePtr, v246, v247);
        legacyPCSToLabChanLDataPtr = v248;
        v249 = v248 + 2;
        v250 = xmmword_19A96E040;
        v251 = 33425918;
        v252 = 50137853;
        v253 = 16713983;
        v254 = 4100;
        v255 = xmmword_19A96E050;
        v256 = 2048;
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v255)), *v250.i8).u8[0])
          {
            *(v249 - 2) = v256 >> 12;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v255)), *&v250).i8[2])
          {
            *(v249 - 1) = v253 >> 12;
          }

          if (vuzp1_s16(*&v250, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v250))).i32[1])
          {
            *v249 = v251 >> 12;
            v249[1] = v252 >> 12;
          }

          v257 = vdupq_n_s64(4uLL);
          v250 = vaddq_s64(v250, v257);
          v256 += 66847740;
          v253 += 66847740;
          v255 = vaddq_s64(v255, v257);
          v252 += 66847740;
          v251 += 66847740;
          v249 += 4;
          v254 -= 4;
        }

        while (v254);
        MakeLookups(v248);
        v260 = CMMBase::NewInternal(0x28, valuePtr, v258, v259);
        v261 = legacyPCSToLabChanLDataPtr;
        v260[2] = 0;
        v260[3] = v261;
        *v260 = &unk_1F0E09180;
        v260[1] = 0;
        v260[4] = 21512;
        legacyPCSToLabChanLTable = v260;
        v264 = CMMBase::NewInternal(0x5408, valuePtr, v262, v263);
        legacyPCSToLabChanAnBDataPtr = v264;
        v265 = v264 + 2;
        v266 = xmmword_19A96E040;
        v267 = 33425918;
        v268 = 50137853;
        v269 = 16713983;
        v270 = 4100;
        v271 = xmmword_19A96E050;
        v272 = 2048;
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v271)), *v266.i8).u8[0])
          {
            *(v265 - 2) = v272 >> 12;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v271)), *&v266).i8[2])
          {
            *(v265 - 1) = v269 >> 12;
          }

          if (vuzp1_s16(*&v266, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v266))).i32[1])
          {
            *v265 = v267 >> 12;
            v265[1] = v268 >> 12;
          }

          v273 = vdupq_n_s64(4uLL);
          v266 = vaddq_s64(v266, v273);
          v272 += 66847740;
          v269 += 66847740;
          v271 = vaddq_s64(v271, v273);
          v268 += 66847740;
          v267 += 66847740;
          v265 += 4;
          v270 -= 4;
        }

        while (v270);
        MakeLookups(v264);
        v276 = CMMBase::NewInternal(0x28, valuePtr, v274, v275);
        v277 = legacyPCSToLabChanAnBDataPtr;
        v276[2] = 0;
        v276[3] = v277;
        *v276 = &unk_1F0E09180;
        v276[1] = 0;
        v276[4] = 21512;
        legacyPCSToLabChanAnBTable = v276;
        CMMMemMgr::ReleaseMemList(valuePtr);
      }

      pthread_mutex_unlock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
      v221 = legacyPCSToLabChanLTable;
      v222 = legacyPCSToLabChanAnBTable;
      v7 = v470;
      if (legacyPCSToLabChanLTable)
      {
LABEL_352:
        if (v222)
        {
          *(&valuePtr[0] + 1) = 0;
          *&valuePtr[1] = 0;
          v278 = *(v221 + 8);
          if (v278)
          {
            *(v221 + 8) = v278 + 1;
          }

          *&valuePtr[0] = 1;
          HIDWORD(valuePtr[0]) = 3;
          *(&valuePtr[1] + 8) = xmmword_19A96E320;
          *(&valuePtr[2] + 8) = xmmword_19A96E330;
          v279 = CMMBase::NewInternal(0xA8, *(v7 + 8), v219, v220);
          v280 = CMMConvTRC::CMMConvTRC(v279, 0, v221, 21512, valuePtr, *(v470 + 3), 3, 1, 1.0, 0, 0);
          *(v470 + 3) = v280;
          v7 = v470;
          if (!*(v470 + 2))
          {
            *v467 = v280;
          }

          v283 = 0;
          v284 = 1;
          do
          {
            v285 = v283;
            v286 = *(v222 + 8);
            if (v286)
            {
              *(v222 + 8) = v286 + 1;
            }

            v287 = CMMBase::NewInternal(0xA8, *(v7 + 8), v281, v282);
            *(v470 + 3) = CMMConvTRC::CMMConvTRC(v287, v284, v222, 21512, valuePtr, *(v470 + 3), 3, 1, 1.0, 0, 0);
            v284 = 2;
            v283 = 1;
            v7 = v470;
          }

          while ((v285 & 1) == 0);
        }
      }
    }

    else
    {
      v7 = v470;
      if (v462 == 1)
      {
        pthread_mutex_lock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
        if (!legacyLabChanLToPCSTable)
        {
          *&valuePtr[0] = 0;
          CMMMemMgr::CMMMemMgr(valuePtr);
          v187 = CMMBase::NewInternal(0x5408, valuePtr, v185, v186);
          v188 = 0;
          legacyLabChanLToPCSDataPtr = v187;
          v189 = xmmword_19A96E040;
          v190 = v187 + 2;
          v191 = xmmword_19A96E050;
          do
          {
            v192.i64[0] = v188;
            v192.i64[1] = v188 + 4112;
            v193 = vdupq_n_s64(0x1000000uLL);
            v194 = vbslq_s8(vcgtq_u64(v193, v192), v192, v193);
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v191)), *v189.i8).u8[0])
            {
              *(v190 - 2) = v194.i32[0];
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v191)), *&v189).i8[2])
            {
              *(v190 - 1) = v194.i32[2];
            }

            v195.i64[0] = v188 + 8224;
            v195.i64[1] = v188 + 12336;
            v196 = vbslq_s8(vcgtq_u64(v193, v195), v195, v193);
            if (vuzp1_s16(*&v189, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v189))).i32[1])
            {
              *v190 = v196.i32[0];
              v190[1] = v196.i32[2];
            }

            v197 = vdupq_n_s64(4uLL);
            v189 = vaddq_s64(v189, v197);
            v191 = vaddq_s64(v191, v197);
            v188 += 16448;
            v190 += 4;
          }

          while (v188 != 16859200);
          MakeLookups(v187);
          v200 = CMMBase::NewInternal(0x28, valuePtr, v198, v199);
          v201 = legacyLabChanLToPCSDataPtr;
          v200[2] = 0;
          v200[3] = v201;
          *v200 = &unk_1F0E09180;
          v200[1] = 0;
          v200[4] = 21512;
          legacyLabChanLToPCSTable = v200;
          v204 = CMMBase::NewInternal(0x5408, valuePtr, v202, v203);
          v205 = 0;
          legacyLabChanAnBToPCSDataPtr = v204;
          v206 = xmmword_19A96E040;
          v207 = v204 + 2;
          v208 = xmmword_19A96E050;
          do
          {
            v209.i64[0] = v205;
            v209.i64[1] = v205 + 4112;
            v210 = vdupq_n_s64(0x1000000uLL);
            v211 = vbslq_s8(vcgtq_u64(v210, v209), v209, v210);
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), v208)), *v206.i8).u8[0])
            {
              *(v207 - 2) = v211.i32[0];
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v208)), *&v206).i8[2])
            {
              *(v207 - 1) = v211.i32[2];
            }

            v212.i64[0] = v205 + 8224;
            v212.i64[1] = v205 + 12336;
            v213 = vbslq_s8(vcgtq_u64(v210, v212), v212, v210);
            if (vuzp1_s16(*&v206, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1001uLL), *&v206))).i32[1])
            {
              *v207 = v213.i32[0];
              v207[1] = v213.i32[2];
            }

            v214 = vdupq_n_s64(4uLL);
            v206 = vaddq_s64(v206, v214);
            v208 = vaddq_s64(v208, v214);
            v205 += 16448;
            v207 += 4;
          }

          while (v205 != 16859200);
          MakeLookups(v204);
          v217 = CMMBase::NewInternal(0x28, valuePtr, v215, v216);
          v218 = legacyLabChanAnBToPCSDataPtr;
          v217[2] = 0;
          v217[3] = v218;
          *v217 = &unk_1F0E09180;
          v217[1] = 0;
          v217[4] = 21512;
          legacyLabChanAnBToPCSTable = v217;
          CMMMemMgr::ReleaseMemList(valuePtr);
        }

        pthread_mutex_unlock(&ConversionManager::AddLegacyGenericLab(CMMConversionType)::cmmLock);
        v221 = legacyLabChanLToPCSTable;
        v222 = legacyLabChanAnBToPCSTable;
        v7 = v470;
        *(v470 + 9) = 1347182946;
        if (v221)
        {
          goto LABEL_352;
        }
      }
    }

LABEL_290:
    v19 = v450;
    v225 = v457;
    if (v471 != 1)
    {
      goto LABEL_464;
    }

    if ((v454 & 1) == 0 && (v451 == 3 || v462 == 3 && *(v461 + 24) == 3))
    {
      if (v457 == v455)
      {
        if (*(v7 + 36) == 1482250784)
        {
          *&valuePtr[0] = CMMProfile::GetWhitePoint(v461[2]);
          DWORD2(valuePtr[0]) = v292;
          ConversionManager::AddXYZToXYZ(v470, 63190, valuePtr[0], v293, 0xD32D00010000, *(valuePtr + 4));
          goto LABEL_463;
        }

        goto LABEL_464;
      }

      if (!v449)
      {
        v439 = __cxa_allocate_exception(4uLL);
        *v439 = -171;
      }

      WhitePoint = CMMProfile::GetWhitePoint(v461[2]);
      v234 = v233;
      *&valuePtr[0] = WhitePoint;
      DWORD2(valuePtr[0]) = v233;
      v235 = *(v457 + 48);
      if (!v235)
      {
        v438 = __cxa_allocate_exception(4uLL);
        *v438 = -171;
      }

      v236 = CMMProfile::GetWhitePoint(*(v235 + 16));
      v239 = v236;
      *&v482[0] = v236;
      DWORD2(v482[0]) = v237;
      if (v236 - 7 < WhitePoint && v236 + 7 > WhitePoint && HIDWORD(v236) - 7 < SHIDWORD(WhitePoint) && HIDWORD(v236) + 7 > SHIDWORD(WhitePoint) && v237 - 7 < v234 && v237 + 7 > v234)
      {
        goto LABEL_463;
      }

      v240 = v470;
      if (*(v470 + 9) != 1482250784)
      {
        ConversionManager::AddLabToXYZ(v470);
        v240 = v470;
      }

      ConversionManager::AddXYZToXYZ(v240, 63190, WhitePoint, v238, 0xD32D00010000, *(valuePtr + 4));
      ConversionManager::AddXYZToXYZ(v470, v239, 63190, v241, *(v482 + 4), 0xD32D00010000);
      if (v449 == 1482250784)
      {
LABEL_463:
        v7 = v470;
        v19 = v450;
        v225 = v457;
        goto LABEL_464;
      }

LABEL_316:
      ConversionManager::AddXYZToLab(v470);
      goto LABEL_463;
    }

    v226 = v448;
    if (v457 != v458)
    {
      v226 = 0;
    }

    if (v226 != 1)
    {
      goto LABEL_456;
    }

    v227 = *(v461 + 11);
    if (v227 == 1818848875 || v227 == 1852662636)
    {
      goto LABEL_456;
    }

    ConversionManager::GetProfileSrcBlackPointLightness();
    if (*(v450 + 16) == v457 + 40)
    {
      v440 = __cxa_allocate_exception(4uLL);
      *v440 = -171;
    }

    v229 = v228;
    v230 = *(*(v457 + 48) + 48);
    if (v230 <= 1296255029)
    {
      v231 = 1145856354;
      if (v230 == 1281450528)
      {
        goto LABEL_426;
      }

      if (v230 == 1296255029)
      {
        v231 = 893602898;
        goto LABEL_426;
      }

LABEL_425:
      v231 = *(*(v457 + 48) + 48);
      goto LABEL_426;
    }

    if (v230 == 1296255030)
    {
      v231 = 910380114;
      goto LABEL_426;
    }

    if (v230 == 1296255031)
    {
      v231 = 927157330;
      goto LABEL_426;
    }

    if (v230 != 1296255032)
    {
      goto LABEL_425;
    }

    v231 = 943934546;
LABEL_426:
    if ((*(v457 + 65) & 1) != 0 || (*(v457 + 64) & 1) != 0 || v231 != 1129142603 && v231 != 1380401696)
    {
      ConversionManager::GetProfileSrcBlackPointLightness();
      v343 = v344;
LABEL_454:
      v7 = v470;
      v19 = v450;
      v225 = v457;
      goto LABEL_455;
    }

    v475 = 0;
    v313 = ConversionManager::CreateBlackPointEstimationTransform(v470, 1, v457 + 40, *(v457 + 60), 1, &v475);
    v314 = v475;
    if (v475 - 5 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v315 = 0;
    }

    else
    {
      v315 = 4294967125;
    }

    CMMThrowExceptionOnError(v315);
    bzero(valuePtr, 0x3000uLL);
    v480 = 0;
    v479 = 0;
    ConversionManager::GetProfileSrcBlackPointLightness();
    bzero(v478, 0x400uLL);
    bzero(v477, 0x400uLL);
    v318 = 0;
    v319 = 0;
    v320 = (HIDWORD(v479) << 24) / (0x1000000 - v479);
    v321 = 4 * v314;
    v322 = valuePtr + 2;
    v323 = (v480 << 24) / (0x1000000 - v479);
    do
    {
      v324 = 0x1000000 - v318 / 0xFF;
      *(v322 - 2) = v318 / 0xFF;
      *(v322 - 1) = ((v324 * v320) >> 24) + 0x800000;
      *v322 = ((v324 * v323) >> 24) + 0x800000;
      *&v477[v319] = (v318 / 0xFF);
      v319 += 4;
      v322 = (v322 + v321);
      v318 += 0x1000000;
    }

    while (v319 != 1024);
    *(v473 + 6) = 0;
    v473[0] = 0;
    if (v313)
    {
      v325 = v313;
      do
      {
        (*(*v325 + 104))(v325, valuePtr, v473, v314, 256);
        v325 = v325[2];
      }

      while (v325);
      do
      {
        v326 = v313[2];
        (*(*v313 + 8))(v313);
        v313 = v326;
      }

      while (v326);
    }

    v327 = 1020 * v314;
    v328 = *(valuePtr + 255 * v314);
    if (v328 <= SLODWORD(valuePtr[0]))
    {
      v343 = 0;
      goto LABEL_454;
    }

    v329 = -4 * v314;
    v330 = -255;
    v331 = valuePtr;
    v332 = 1016 * v314;
    v7 = v470;
    v19 = v450;
    v225 = v457;
    do
    {
      v333 = *(v331 + v327);
      if (*(v331 + v332) > v333)
      {
        *(v331 + v332) = v333;
      }

      v331 = (v331 + v329);
      v126 = __CFADD__(v330++, 1);
    }

    while (!v126);
    v334 = 0;
    v335 = valuePtr;
    v336 = valuePtr[0];
    do
    {
      *&v478[v334++] = *v335;
      v335 = (v335 + v321);
    }

    while (v334 != 256);
    v337 = v328 - v336;
    v338 = 0.25;
    v339 = 0.03;
    if (*(v457 + 60) == 1)
    {
      v340 = 0;
      v341 = floor((v336 + (v337 * 0.2)) + 0.5);
      while (1)
      {
        v342 = *&v477[v340 * 4];
        if (v342 > v341 && vabds_f32(*&v478[v340], v342) > 671090.0)
        {
          break;
        }

        if (++v340 == 256)
        {
          v343 = v479;
          goto LABEL_455;
        }
      }

      v338 = 0.5;
      v339 = 0.1;
    }

    v359 = 1.0 / v337;
    bzero(v482, 0x400uLL);
    bzero(v481, 0x400uLL);
    v360 = -1;
    v361 = *v478;
    v362 = 1;
    v363 = -1;
    do
    {
      v364 = (*&v478[v362] - v361) * v359;
      if (v360 == -1)
      {
        if (v364 >= v339)
        {
          v360 = v362;
        }

        else
        {
          v360 = -1;
        }
      }

      if (v363 == -1)
      {
        if (v364 < v338)
        {
          if (v360 != -1)
          {
            v365 = v362 * 0.00392156863;
            *(v482 + v362 - v360) = v365;
            *&v481[4 * v362 + -4 * v360] = v364;
          }

          v363 = -1;
          goto LABEL_498;
        }

        v363 = v362;
      }

      if (v360 != -1)
      {
        break;
      }

LABEL_498:
      ++v362;
    }

    while (v362 != 255);
    v366 = (v363 - v360);
    if (v366 < 3)
    {
      goto LABEL_539;
    }

    v367 = 0;
    memset(v491, 0, sizeof(v491));
    v490 = 0;
    v489 = 0;
    v488 = 0;
    v487 = 0;
    do
    {
      v368 = 0.0;
      v369 = v482;
      v370 = v481;
      v371 = v366;
      do
      {
        v372 = *v370++;
        v373 = v372;
        v374 = *v369++;
        v368 = v368 + v373 * pow(v374, v367);
        --v371;
      }

      while (v371);
      v375 = 0;
      *(&v487 + v367) = v368;
      do
      {
        v376 = 0.0;
        v377 = v482;
        v378 = v366;
        do
        {
          v379 = v376;
          v380 = *v377++;
          v381 = pow(v380, v375);
          v376 = v379 + v381 * pow(v380, v367);
          --v378;
        }

        while (v378);
        *&v491[3 * v367 + v375++] = v376;
      }

      while (v375 != 3);
      ++v367;
    }

    while (v367 != 3);
    v382 = 0;
    v383 = 0;
    v384 = 1;
    v19 = v450;
    v225 = v457;
    v23 = 1.0;
    while (2)
    {
      v385 = v382;
LABEL_510:
      v386 = *&v491[3 * v382 + v385];
      if (v382)
      {
        v387 = v384;
        do
        {
          v386 = v386 - (*&v491[3 * v382 + (v387 - 2)] * *&v491[3 * v385 + (v387 - 2)]);
          --v387;
        }

        while (v387 > 1);
      }

      if (v382 != v385)
      {
        v388 = v386 / *(&v489 + v382);
        v389 = &v491[3 * v385];
LABEL_517:
        v389[v382] = v388;
        if (++v385 == 3)
        {
          v383 = v382 > 1;
          ++v384;
          if (++v382 != 3)
          {
            continue;
          }

          goto LABEL_521;
        }

        goto LABEL_510;
      }

      break;
    }

    if (v386 > 0.0)
    {
      v388 = sqrt(v386);
      v389 = &v489;
      goto LABEL_517;
    }

    if (!v383)
    {
      goto LABEL_539;
    }

LABEL_521:
    v390 = 0;
    v485 = 0.0;
    v484 = 0;
    v391 = 1;
    do
    {
      v392 = *(&v487 + v390);
      if (v390)
      {
        v393 = v391;
        do
        {
          v392 = v392 - (*&v491[3 * v390 + (v393 - 2)] * *(&v484 + (v393 - 2)));
          --v393;
        }

        while (v393 > 1);
      }

      v394 = v392 / *(&v489 + v390);
      *(&v484 + v390++) = v394;
      ++v391;
    }

    while (v390 != 3);
    v395 = 0;
    v396 = &v492 + 1;
    v397 = 2;
    do
    {
      v398 = v397;
      v399 = *(&v484 + v397);
      if (v397-- <= 1)
      {
        v401 = v396;
        v402 = v395;
        do
        {
          v403 = *v401;
          v401 += 3;
          v399 = v399 - (v403 * *&v486[4 * v402]);
          v126 = __CFADD__(v402++, 1);
        }

        while (!v126);
      }

      v404 = v399 / *(&v489 + v398);
      *(&v484 + v398) = v404;
      --v395;
      v396 -= 4;
    }

    while (v398);
    if (v485 <= 0.000001)
    {
      if (*(&v484 + 1) <= 0.000001)
      {
        goto LABEL_539;
      }

      v407 = 0.5 - *&v484 / *(&v484 + 1);
LABEL_538:
      v408 = vcvtmd_s64_f64(v407);
    }

    else
    {
      v405 = (v485 * (*&v484 * -4.0)) + (*(&v484 + 1) * *(&v484 + 1));
      if (v405 >= 0.0)
      {
        v406 = (sqrtf(v405) - *(&v484 + 1)) / (v485 + v485);
        if (v406 > 0.0)
        {
          v407 = v406 + 0.5;
          goto LABEL_538;
        }
      }

LABEL_539:
      v408 = -1;
    }

    v409 = v408 & ~(v408 >> 31);
    if (v409 >= 0x800000)
    {
      v343 = 0x800000;
    }

    else
    {
      v343 = v409;
    }

LABEL_455:
    if (v229 != v343)
    {
      if (*(v7 + 36) == 1347182946)
      {
        ConversionManager::AddLabToXYZ(v7);
        v7 = v470;
      }

      v346 = CMMBase::NewInternal(0x40, *(v7 + 8), v316, v317);
      v347 = v346;
      v7 = v470;
      v348 = *(v470 + 3);
      *(v346 + 2) = 1;
      *(v346 + 2) = 0;
      *(v346 + 3) = v348;
      if (v348)
      {
        *(v348 + 16) = v346;
      }

      v349 = vcvts_n_f32_s32(v343, 0x18uLL);
      v350 = vcvts_n_f32_u32(v229, 0x18uLL);
      *(v346 + 5) = 0x3FFFFF0000000000;
      *(v346 + 17) = 0;
      *(v346 + 36) = 0;
      *v346 = &unk_1F0E081A0;
      *(v346 + 33) = 1;
      v346[12] = v350;
      v346[13] = v349;
      v351 = DecodeL(v349 * 100.0);
      v352 = (v23 - v351) / (v23 - DecodeL(v350 * 100.0));
      v347[14] = v352;
      v347[15] = 1.0 - v352;
      *(v470 + 3) = v347;
      if (!*(v470 + 2))
      {
        *v467 = v347;
      }

      v19 = v450;
      v225 = v457;
      if (v449 != 1347182946)
      {
        goto LABEL_464;
      }

      goto LABEL_316;
    }

LABEL_456:
    if (v225 != v455)
    {
      v345 = *(v7 + 36);
      if (v345 == 1482250784 && v449 == 1347182946)
      {
        ConversionManager::AddXYZToLab(v7);
        goto LABEL_463;
      }

      if (v345 == 1347182946 && v449 == 1482250784)
      {
        ConversionManager::AddLabToXYZ(v7);
        goto LABEL_463;
      }
    }

LABEL_464:
    v22 = *(v7 + 36);
    v21 = v225 + 40;
    v20 = *(v19 + 16);
  }

  while (v21 != v20);
LABEL_543:
  v410 = *v467;
  if (*v467)
  {
    v411 = 0;
    do
    {
      if (++v411 <= 0x64)
      {
        v412 = 0;
      }

      else
      {
        v412 = 4294967125;
      }

      CMMThrowExceptionOnError(v412);
      v410 = *(v410 + 2);
    }

    while (v410);
  }

  else
  {
    v411 = 0;
  }

  v413 = 0;
  if (v411 <= 1)
  {
    v414 = 1;
  }

  else
  {
    v414 = v411;
  }

  *&valuePtr[0] = 0;
  v415 = (2 * v414) | 1;
  while (1)
  {
    if (v413)
    {
      *v467 = v413;
      *&v482[0] = v415;
      goto LABEL_558;
    }

    v413 = *v467;
    *&v482[0] = v415;
    if (!v413)
    {
      break;
    }

LABEL_558:
    v416 = CMMConvNode::RemoveNOPs(v413, v482, v447);
    *v467 = v416;
    if (!v416)
    {
      goto LABEL_567;
    }

    v417 = 0;
    v418 = *(v470 + 1);
    do
    {
      if (((*(*v416 + 80))(v416) & 1) == 0)
      {
        v417 |= (*(*v416 + 16))(v416, v418, valuePtr);
      }

      v416 = *(v416 + 2);
    }

    while (v416);
    if ((v417 & 1) == 0)
    {
      v416 = *v467;
      goto LABEL_567;
    }

    v413 = *&valuePtr[0];
  }

  v416 = 0;
LABEL_567:
  if (v446)
  {
    if (v416)
    {
      if (*(v416 + 2))
      {
        v419 = 0;
      }

      else
      {
        v421 = **v416;
      }

      v422 = theDict;
      v420 = 0;
      *v446 = v419;
      do
      {
        v423 = (*(*v416 + 200))(v416, v422) | v420;
        v424 = *v416;
        v425 = **v416;
        v427 = *v424;
        {
          v420 = v423 | 8;
        }

        else
        {
          v420 = v423;
        }

        v416 = *(v416 + 2);
        v422 = theDict;
      }

      while (v416);
      if ((v420 & 8) != 0)
      {
        v428 = 8;
      }

      else
      {
        if ((v420 & 4) == 0)
        {
          goto LABEL_580;
        }

        v428 = 4;
      }
    }

    else
    {
      v420 = 0;
      *v446 = 1;
LABEL_580:
      if ((v420 & 2) != 0)
      {
        v428 = 2;
      }

      else
      {
        v428 = v420;
      }
    }

    *(v446 + 4) = v428;
    v416 = *v467;
    if (*v467)
    {
      v429 = *v467;
      while (1)
      {
        v430 = **v429;
        v432 = v431 != 0;
        if (v431)
        {
          break;
        }

        v429 = *(v429 + 2);
        if (!v429)
        {
          goto LABEL_589;
        }
      }
    }

    else
    {
LABEL_589:
      v432 = 0;
    }

    *(v446 + 8) = v432;
  }

  v433 = *MEMORY[0x1E69E9840];
  return v416;
}

void sub_19A926BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CMMDisplayProfile::GetDstColorSpace(unsigned int *a1, unsigned int a2, char *a3)
{
  v4 = 0;
  if (a2 > 0xE)
  {
    goto LABEL_19;
  }

  if (((1 << a2) & 0x2A0A) != 0)
  {
    v6 = a1[13];
    v4 = 1;
    if (v6 == 1281450528)
    {
      v7 = 0;
      v6 = 1347182946;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (((1 << a2) & 0x5404) == 0)
  {
    if (a2 == 4)
    {
      if ((*(*a1 + 24))(a1))
      {
        goto LABEL_4;
      }

      v4 = 0;
    }

LABEL_19:
    v7 = 4294967246;
    v6 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

LABEL_4:
  v6 = a1[12];
  if (v6 <= 1296255029)
  {
    if (v6 == 1281450528)
    {
      v4 = 0;
      v7 = 0;
      v6 = 1145856354;
      goto LABEL_23;
    }

    v4 = 0;
    if (v6 == 1296255029)
    {
      v4 = 0;
      v7 = 0;
      v6 = 893602898;
      goto LABEL_23;
    }

LABEL_14:
    if (v6 != -1)
    {
      v7 = 0;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v6 == 1296255030)
  {
    v4 = 0;
    v7 = 0;
    v6 = 910380114;
  }

  else
  {
    if (v6 != 1296255031)
    {
      v4 = 0;
      if (v6 == 1296255032)
      {
        v4 = 0;
        v7 = 0;
        v6 = 943934546;
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v4 = 0;
    v7 = 0;
    v6 = 927157330;
  }

LABEL_23:
  CMMThrowExceptionOnError(v7);
  if (a3)
  {
    *a3 = v4;
  }

  return v6;
}

uint64_t CMMDisplayProfile::GetSrcColorSpace(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    goto LABEL_27;
  }

  if (((1 << a2) & 0x540C) != 0)
  {
LABEL_24:
    v10 = a1[13];
    if (v10 == 1281450528)
    {
      return 1347182946;
    }

    else
    {
      return v10;
    }
  }

  if (((1 << a2) & 0x2A02) == 0)
  {
    if (a2 == 4 && (*(*a1 + 24))(a1))
    {
      goto LABEL_24;
    }

LABEL_27:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v3 = a1[12];
  if (v3 == 1296255032)
  {
    v4 = 943934546;
  }

  else
  {
    v4 = a1[12];
  }

  if (v3 == 1296255031)
  {
    v5 = 927157330;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 1296255030)
  {
    v6 = 910380114;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 1296255029)
  {
    v7 = 893602898;
  }

  else
  {
    v7 = a1[12];
  }

  if (v3 == 1281450528)
  {
    v8 = 1145856354;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1296255029)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

CMMConvNode *ConversionManager::MakeColorMatchSequence(int a1, void *a2, uint64_t a3, CFDictionaryRef theDict)
{
  v4 = a2[1];
  v5 = a2[2];
  if (v5 == v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (theDict)
  {
    v45 = CFDictionaryContainsKey(theDict, @"com.apple.cmm.ApplyToneMaping") != 1;
    v4 = a2[1];
    v5 = a2[2];
  }

  else
  {
    v45 = 1;
  }

  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  if (v8 >= 2)
  {
    v44 = a3;
    while (1)
    {
      if (v4 == v5 - 5)
      {
        v32 = v4;
        goto LABEL_76;
      }

      v9 = 0;
      v10 = v4 + 40;
      do
      {
        v11 = *(v4 + 8);
        if (v11)
        {
          v12 = *(v4 + 24) == 1 && (*(v10 + 24) & 1) != 0 || *(v4 + 25) == 1 && (*(v10 + 25) & 1) != 0 || *(v4 + 24) && (*(v10 + 25) & 1) != 0 || *(v4 + 25) && (*(v10 + 24) & 1) != 0;
          v13 = *(v10 + 8);
          v14 = *(v4 + 16);
          v15 = *(v10 + 16);
          v16 = (*(*v11 + 6))(*(v4 + 8), v14);
          v17 = (*(*v13 + 7))(v13, v15, 0);
          if (v12)
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v20 = *(v4 + 20);
            v21 = *(v10 + 20);
          }

          v22 = *(v4 + 34);
          v23 = *(v10 + 34);
          v24 = v16 == v17 && v14 == 1;
          if (v24 && v15 == 2 && v22 == v23)
          {
            if (v45)
            {
              if (CMMProfileInfoContainer::ProfilesIdentical(v11, v13, v18, v19) || (PoppyIndex = ColorSyncProfileGetPoppyIndex(v11[2]), v29 = ColorSyncProfileGetPoppyIndex(v13[2]), PoppyIndex != -1) && PoppyIndex == v29)
              {
                *(v10 + 8) = 0;
                *(v4 + 8) = 0;
                v30 = *(v11 + 2) - 1;
                *(v11 + 2) = v30;
                if (!v30)
                {
                  (*(*v11 + 1))(v11);
                }

LABEL_52:
                v31 = *(v13 + 2) - 1;
                *(v13 + 2) = v31;
                if (!v31)
                {
LABEL_53:
                  (*(*v13 + 1))(v13);
                }

LABEL_54:
                v9 = 1;
              }
            }
          }

          else if (v14 == 3 && v15 == 2 && v20 == v21 && v22 == v23)
          {
            if (CMMProfileInfoContainer::ProfilesIdentical(v11, v13, v18, v19))
            {
              *(v4 + 8) = 0;
              v27 = *(v11 + 2) - 1;
              *(v11 + 2) = v27;
              if (!v27)
              {
                v13 = v11;
                goto LABEL_53;
              }

              goto LABEL_54;
            }
          }

          else if (v14 == 1 && v15 == 3 && v20 == v21 && v22 == v23 && CMMProfileInfoContainer::ProfilesIdentical(v11, v13, v18, v19))
          {
            *(v10 + 8) = 0;
            goto LABEL_52;
          }
        }

        v32 = a2[1];
        v5 = a2[2];
        v33 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v32) >> 3);
        if (v33 <= 1)
        {
          break;
        }

        v4 += 40;
        v10 += 40;
      }

      while (v4 != v5 - 5);
      if (v9)
      {
        if (v32 != v5)
        {
          do
          {
            if (*(v32 + 8))
            {
              v32 += 40;
            }

            else
            {
              if ((v32 + 40) == v5)
              {
                v37 = v5;
                v5 = v32;
              }

              else
              {
                v34 = v32;
                do
                {
                  *(v34 + 8) = *(v34 + 48);
                  v35 = *(v34 + 64);
                  *(v34 + 16) = *(v34 + 56);
                  *(v34 + 24) = v35;
                  *(v34 + 32) = *(v34 + 72);
                  *(v34 + 36) = *(v34 + 76);
                  *(v34 + 37) = *(v34 + 77);
                  v36 = (v34 + 80);
                  v34 += 40;
                }

                while (v36 != v5);
                v37 = a2[2];
                v5 = v34;
              }

              if (v37 != v5)
              {
                v38 = v37 - 5;
                v39 = v37 - 5;
                v40 = v37 - 5;
                do
                {
                  v41 = *v40;
                  v40 -= 5;
                  (*v41)(v39);
                  v38 -= 5;
                  v24 = v39 == v5;
                  v39 = v40;
                }

                while (!v24);
              }

              a2[2] = v5;
            }
          }

          while (v32 != v5);
          v32 = a2[1];
          v33 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v32) >> 3);
        }

        v4 = v32;
        if (v33 > 1)
        {
          continue;
        }
      }

LABEL_76:
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v32) >> 3);
      v4 = v32;
      a3 = v44;
      break;
    }
  }

  a2[6] = v8;
  if (v5 == v4)
  {
    if (a3)
    {
      *a3 = 1;
      *(a3 + 8) = 0;
    }

    return 0;
  }

  else
  {

    return ConversionManager::MakeConversionSequence();
  }
}

float ColorSyncOptionsGetHDRMediaReferenceWhite(const void *a1)
{
  if (!a1)
  {
    return 203.0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 203.0;
  }

  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite");
  if (!Value)
  {
    if (CFDictionaryContainsKey(a1, @"com.apple.cmm.ApplyToneMaping") == 1)
    {
      v12 = CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMaping");
      if (v12)
      {
        CFGetTypeID(v12);
        CFDictionaryGetTypeID();
      }
    }

    return 203.0;
  }

  valuePtr = 0.0;
  if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
  {
    v10 = valuePtr;
  }

  else
  {
    valuePtr = 0.0;
    v10 = 0.0;
  }

  if (v10 == 0.0)
  {
    result = 203.0;
  }

  else
  {
    result = v10;
  }

  if (result != 203.0 && result != 100.0)
  {
    v14 = v10;
    ColorSyncLog(2, "kColorSyncHDRMediaReferenceWhite %f is neither kColorSync_default_reference_white nor kColorSync_legacy_reference_white - ignored", v4, v5, v6, v7, v8, v9, SLOBYTE(v14));
    return 203.0;
  }

  return result;
}

BOOL ColorSyncOptionsLegacyHDREcosystemRequested(const __CFDictionary *a1)
{
  v2 = current_or_newer_sdk() ^ 1;
  if (a1 && CFDictionaryContainsKey(a1, @"com.apple.cmm.UseLegacyHDREcosystem"))
  {
    return CFDictionaryGetValue(a1, @"com.apple.cmm.UseLegacyHDREcosystem") == *MEMORY[0x1E695E4D0];
  }

  return v2;
}

uint64_t current_or_newer_sdk()
{
  if (current_or_newer_sdk_predicate != -1)
  {
    dispatch_once(&current_or_newer_sdk_predicate, &__block_literal_global_1594);
  }

  if (current_or_newer_sdk_linked_on_glow_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_crystal_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_sapphire_or_later & 1) != 0 || (current_or_newer_sdk_linked_on_moonstone_or_later)
  {
    v0 = 1;
  }

  else
  {
    v0 = current_or_newer_sdk_linked_on_constellation_or_later;
  }

  return v0 & 1;
}

const void *ColorSyncOptionsGetFlexLumaScalingOptions(const ColorSyncProfile *a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID() || a1 && !ColorSyncProfileIsPQBased(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"com.apple.cmm.ApplyToneMaping");
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryGetValue(v6, @"com.apple.cmm.ApplyFlexLumaScaling");
}

uint64_t CMMProfile::InnerGetMatrixTags(CMMProfile *this, CMMXYZTag *(*a2)[3], CMMCurveTag *(*a3)[3])
{
  v92 = 0;
  if (ColorSyncProfileContainsSupportedCICP(*(this + 2), &v92))
  {
    if (v92 <= 8u)
    {
      if (v92 == 1)
      {
        v37 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
        if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
        {
          dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
        }

        v38 = *(this + 20);
        while (v38)
        {
          v39 = v38;
          v38 = *(v38 + 16);
          if (!v38)
          {
            *(v37 + 2) = 1918392666;
            v37[3] = v39;
            v37[4] = 20;
            v37[2] = 0;
            *(v39 + 16) = v37;
            goto LABEL_88;
          }
        }

        *(v37 + 2) = 1918392666;
        v37[3] = 0;
        v37[4] = 20;
        v37[2] = 0;
LABEL_88:
        v37[5] = &ColorSyncProfileGetBT709RedPrimary_rXYZ;
        *(v37 + 24) = 0;
        *v37 = &unk_1F0E09148;
        (*a2)[0] = v37;
        v59 = CMMBase::NewInternal(0x38, *(this + 3), v35, v36);
        if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
        }

        v60 = *(this + 20);
        while (v60)
        {
          v61 = v60;
          v60 = *(v60 + 16);
          if (!v60)
          {
            *(v59 + 2) = 1733843290;
            v59[3] = v61;
            v59[4] = 20;
            v59[2] = 0;
            *(v61 + 16) = v59;
            goto LABEL_95;
          }
        }

        *(v59 + 2) = 1733843290;
        v59[3] = 0;
        v59[4] = 20;
        v59[2] = 0;
LABEL_95:
        v59[5] = &ColorSyncProfileGetBT709GreenPrimary_gXYZ;
        *(v59 + 24) = 0;
        *v59 = &unk_1F0E09148;
        (*a2)[1] = v59;
        v47 = CMMBase::NewInternal(0x38, *(this + 3), v57, v58);
        if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
        }

        v62 = *(this + 20);
        do
        {
          if (!v62)
          {
            *(v47 + 2) = 1649957210;
            v47[3] = 0;
            v47[4] = 20;
            v47[2] = 0;
            v50 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
            goto LABEL_132;
          }

          v49 = v62;
          v62 = *(v62 + 16);
        }

        while (v62);
        *(v47 + 2) = 1649957210;
        v47[3] = v49;
        v47[4] = 20;
        v47[2] = 0;
        v50 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
LABEL_131:
        *(v49 + 16) = v47;
      }

      else
      {
        if (v92 != 5)
        {
          goto LABEL_158;
        }

        v16 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
        if (ColorSyncProfileGetBT601RedPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601RedPrimary_predicate, &__block_literal_global_304);
        }

        v17 = *(this + 20);
        while (v17)
        {
          v18 = v17;
          v17 = *(v17 + 16);
          if (!v17)
          {
            *(v16 + 2) = 1918392666;
            v16[3] = v18;
            v16[4] = 20;
            v16[2] = 0;
            *(v18 + 16) = v16;
            goto LABEL_118;
          }
        }

        *(v16 + 2) = 1918392666;
        v16[3] = 0;
        v16[4] = 20;
        v16[2] = 0;
LABEL_118:
        v16[5] = &ColorSyncProfileGetBT601RedPrimary_rXYZ;
        *(v16 + 24) = 0;
        *v16 = &unk_1F0E09148;
        (*a2)[0] = v16;
        v71 = CMMBase::NewInternal(0x38, *(this + 3), v14, v15);
        if (ColorSyncProfileGetBT601GreenPrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601GreenPrimary_predicate, &__block_literal_global_307);
        }

        v72 = *(this + 20);
        while (v72)
        {
          v73 = v72;
          v72 = *(v72 + 16);
          if (!v72)
          {
            *(v71 + 2) = 1733843290;
            v71[3] = v73;
            v71[4] = 20;
            v71[2] = 0;
            *(v73 + 16) = v71;
            goto LABEL_125;
          }
        }

        *(v71 + 2) = 1733843290;
        v71[3] = 0;
        v71[4] = 20;
        v71[2] = 0;
LABEL_125:
        v71[5] = &ColorSyncProfileGetBT601GreenPrimary_gXYZ;
        *(v71 + 24) = 0;
        *v71 = &unk_1F0E09148;
        (*a2)[1] = v71;
        v47 = CMMBase::NewInternal(0x38, *(this + 3), v69, v70);
        if (ColorSyncProfileGetBT601BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT601BluePrimary_predicate, &__block_literal_global_310);
        }

        v74 = *(this + 20);
        while (v74)
        {
          v49 = v74;
          v74 = *(v74 + 16);
          if (!v74)
          {
            *(v47 + 2) = 1649957210;
            v47[3] = v49;
            v47[4] = 20;
            v47[2] = 0;
            v50 = &ColorSyncProfileGetBT601BluePrimary_bXYZ;
            goto LABEL_131;
          }
        }

        *(v47 + 2) = 1649957210;
        v47[3] = 0;
        v47[4] = 20;
        v47[2] = 0;
        v50 = &ColorSyncProfileGetBT601BluePrimary_bXYZ;
      }
    }

    else
    {
      switch(v92)
      {
        case 9u:
          v27 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          }

          v28 = *(this + 20);
          while (v28)
          {
            v29 = v28;
            v28 = *(v28 + 16);
            if (!v28)
            {
              *(v27 + 2) = 1918392666;
              v27[3] = v29;
              v27[4] = 20;
              v27[2] = 0;
              *(v29 + 16) = v27;
              goto LABEL_58;
            }
          }

          *(v27 + 2) = 1918392666;
          v27[3] = 0;
          v27[4] = 20;
          v27[2] = 0;
LABEL_58:
          v27[5] = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
          *(v27 + 24) = 0;
          *v27 = &unk_1F0E09148;
          (*a2)[0] = v27;
          v42 = CMMBase::NewInternal(0x38, *(this + 3), v25, v26);
          if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          }

          v43 = *(this + 20);
          while (v43)
          {
            v44 = v43;
            v43 = *(v43 + 16);
            if (!v43)
            {
              *(v42 + 2) = 1733843290;
              v42[3] = v44;
              v42[4] = 20;
              v42[2] = 0;
              *(v44 + 16) = v42;
              goto LABEL_65;
            }
          }

          *(v42 + 2) = 1733843290;
          v42[3] = 0;
          v42[4] = 20;
          v42[2] = 0;
LABEL_65:
          v42[5] = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
          *(v42 + 24) = 0;
          *v42 = &unk_1F0E09148;
          (*a2)[1] = v42;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v40, v41);
          if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
          }

          v48 = *(this + 20);
          while (v48)
          {
            v49 = v48;
            v48 = *(v48 + 16);
            if (!v48)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
          break;
        case 0xBu:
          v32 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetDCIP3RedPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDCIP3RedPrimary_predicate, &__block_literal_global_340);
          }

          v33 = *(this + 20);
          while (v33)
          {
            v34 = v33;
            v33 = *(v33 + 16);
            if (!v33)
            {
              *(v32 + 2) = 1918392666;
              v32[3] = v34;
              v32[4] = 20;
              v32[2] = 0;
              *(v34 + 16) = v32;
              goto LABEL_73;
            }
          }

          *(v32 + 2) = 1918392666;
          v32[3] = 0;
          v32[4] = 20;
          v32[2] = 0;
LABEL_73:
          v32[5] = &ColorSyncProfileGetDCIP3RedPrimary_rXYZ;
          *(v32 + 24) = 0;
          *v32 = &unk_1F0E09148;
          (*a2)[0] = v32;
          v53 = CMMBase::NewInternal(0x38, *(this + 3), v30, v31);
          if (ColorSyncProfileGetDCIP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDCIP3GreenPrimary_predicate, &__block_literal_global_343);
          }

          v54 = *(this + 20);
          while (v54)
          {
            v55 = v54;
            v54 = *(v54 + 16);
            if (!v54)
            {
              *(v53 + 2) = 1733843290;
              v53[3] = v55;
              v53[4] = 20;
              v53[2] = 0;
              *(v55 + 16) = v53;
              goto LABEL_80;
            }
          }

          *(v53 + 2) = 1733843290;
          v53[3] = 0;
          v53[4] = 20;
          v53[2] = 0;
LABEL_80:
          v53[5] = &ColorSyncProfileGetDCIP3GreenPrimary_gXYZ;
          *(v53 + 24) = 0;
          *v53 = &unk_1F0E09148;
          (*a2)[1] = v53;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v51, v52);
          if (ColorSyncProfileGetDCIP3BluePrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDCIP3BluePrimary_predicate, &__block_literal_global_346);
          }

          v56 = *(this + 20);
          while (v56)
          {
            v49 = v56;
            v56 = *(v56 + 16);
            if (!v56)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
          break;
        case 0xCu:
          v10 = CMMBase::NewInternal(0x38, *(this + 3), v6, v7);
          if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
          }

          v11 = *(this + 20);
          while (v11)
          {
            v12 = v11;
            v11 = *(v11 + 16);
            if (!v11)
            {
              *(v10 + 2) = 1918392666;
              v10[3] = v12;
              v10[4] = 20;
              v10[2] = 0;
              *(v12 + 16) = v10;
              goto LABEL_103;
            }
          }

          *(v10 + 2) = 1918392666;
          v10[3] = 0;
          v10[4] = 20;
          v10[2] = 0;
LABEL_103:
          v10[5] = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
          *(v10 + 24) = 0;
          *v10 = &unk_1F0E09148;
          (*a2)[0] = v10;
          v65 = CMMBase::NewInternal(0x38, *(this + 3), v8, v9);
          if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
          }

          v66 = *(this + 20);
          while (v66)
          {
            v67 = v66;
            v66 = *(v66 + 16);
            if (!v66)
            {
              *(v65 + 2) = 1733843290;
              v65[3] = v67;
              v65[4] = 20;
              v65[2] = 0;
              *(v67 + 16) = v65;
              goto LABEL_110;
            }
          }

          *(v65 + 2) = 1733843290;
          v65[3] = 0;
          v65[4] = 20;
          v65[2] = 0;
LABEL_110:
          v65[5] = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
          *(v65 + 24) = 0;
          *v65 = &unk_1F0E09148;
          (*a2)[1] = v65;
          v47 = CMMBase::NewInternal(0x38, *(this + 3), v63, v64);
          if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
          }

          v68 = *(this + 20);
          while (v68)
          {
            v49 = v68;
            v68 = *(v68 + 16);
            if (!v68)
            {
              *(v47 + 2) = 1649957210;
              v47[3] = v49;
              v47[4] = 20;
              v47[2] = 0;
              v50 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
              goto LABEL_131;
            }
          }

          *(v47 + 2) = 1649957210;
          v47[3] = 0;
          v47[4] = 20;
          v47[2] = 0;
          v50 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
          break;
        default:
          goto LABEL_158;
      }
    }

LABEL_132:
    v47[5] = v50;
    *(v47 + 24) = 0;
    *v47 = &unk_1F0E09148;
    (*a2)[2] = v47;
    if (BYTE1(v92) > 0xDu)
    {
      if (BYTE1(v92) - 14 < 2)
      {
LABEL_144:
        v79 = CMMBase::NewInternal(0x80, *(this + 3), v45, v46);
        v80 = *(this + 20);
        do
        {
          v81 = v80;
          if (!v80)
          {
            break;
          }

          v80 = *(v80 + 16);
        }

        while (v80);
        v78 = CMMParaCurveTag::CMMParaCurveTag(v79, 1885434465, "para", 32, v81);
        v82 = off_1F0E08FA8;
LABEL_148:
        *v78 = v82;
LABEL_149:
        (*a3)[1] = v78;
        (*a3)[2] = v78;
        (*a3)[0] = v78;
        return 1;
      }

      if (BYTE1(v92) == 16)
      {
        v89 = CMMBase::NewInternal(0x60, *(this + 3), v45, v46);
        v90 = *(this + 20);
        do
        {
          v91 = v90;
          if (!v90)
          {
            break;
          }

          v90 = *(v90 + 16);
        }

        while (v90);
        CMMPQCurveTag::CMMPQCurveTag(v89, 0, v91);
        goto LABEL_149;
      }

      if (BYTE1(v92) == 18)
      {
        v75 = CMMBase::NewInternal(0x58, *(this + 3), v45, v46);
        v76 = *(this + 20);
        do
        {
          v77 = v76;
          if (!v76)
          {
            break;
          }

          v76 = *(v76 + 16);
        }

        while (v76);
        CMMHLGCurveTag::CMMHLGCurveTag(v75, v77);
        goto LABEL_149;
      }
    }

    else
    {
      if (BYTE1(v92) <= 7u)
      {
        if (BYTE1(v92) != 1 && BYTE1(v92) != 6)
        {
          goto LABEL_158;
        }

        goto LABEL_144;
      }

      if (BYTE1(v92) == 8)
      {
        v86 = CMMBase::NewInternal(0x38, *(this + 3), v45, v46);
        v87 = *(this + 20);
        do
        {
          v88 = v87;
          if (!v87)
          {
            break;
          }

          v87 = *(v87 + 16);
        }

        while (v87);
        CMMCurveTag::CMMCurveTag(v86, 0, "curv", 16, v88);
        v82 = &unk_1F0E09078;
        goto LABEL_148;
      }

      if (BYTE1(v92) == 13)
      {
        v83 = CMMBase::NewInternal(0x80, *(this + 3), v45, v46);
        v84 = *(this + 20);
        do
        {
          v85 = v84;
          if (!v84)
          {
            break;
          }

          v84 = *(v84 + 16);
        }

        while (v84);
        v78 = CMMParaCurveTag::CMMParaCurveTag(v83, 1885434465, "para", 32, v85);
        v82 = &unk_1F0E09010;
        goto LABEL_148;
      }
    }

LABEL_158:
    result = 0;
    (*a2)[0] = 0;
    (*a2)[1] = 0;
    (*a2)[2] = 0;
    (*a3)[0] = 0;
    (*a3)[1] = 0;
    (*a3)[2] = 0;
    return result;
  }

  Tag = CMMProfile::GetTag(this, 1633776231);
  if (Tag)
  {
    (*a3)[0] = Tag;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1918128707);
    (*a3)[0] = result;
    if (!result)
    {
      return result;
    }
  }

  v20 = CMMProfile::GetTag(this, 1633773415);
  if (v20)
  {
    (*a3)[1] = v20;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1733579331);
    (*a3)[1] = result;
    if (!result)
    {
      return result;
    }
  }

  v21 = CMMProfile::GetTag(this, 1633772135);
  if (v21)
  {
    (*a3)[2] = v21;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1649693251);
    (*a3)[2] = result;
    if (!result)
    {
      return result;
    }
  }

  v22 = CMMProfile::GetTag(this, 1633768035);
  if (v22)
  {
    (*a2)[0] = v22;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1918392666);
    (*a2)[0] = result;
    if (!result)
    {
      return result;
    }
  }

  v23 = CMMProfile::GetTag(this, 1633765219);
  if (v23)
  {
    (*a2)[1] = v23;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1733843290);
    (*a2)[1] = result;
    if (!result)
    {
      return result;
    }
  }

  v24 = CMMProfile::GetTag(this, 1633763939);
  if (v24)
  {
    (*a2)[2] = v24;
  }

  else
  {
    result = CMMProfile::GetTag(this, 1649957210);
    (*a2)[2] = result;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

void *CMMMatrixDisplayProfile::GetLutTags(unsigned int *a1, int a2)
{
  if (a2 != 4 || !(*(*a1 + 24))(a1))
  {
    return 0;
  }

  v3 = a1[12];
  v4 = a1[13];
  if (v4 == 1281450528)
  {
    v5 = 1347182946;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= 1296255029)
  {
    if (v3 == 1281450528)
    {
      v3 = 1145856354;
    }

    else if (v3 == 1296255029)
    {
      v3 = 893602898;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x4D434836:
        v3 = 910380114;
        break;
      case 0x4D434837:
        v3 = 927157330;
        break;
      case 0x4D434838:
        v3 = 943934546;
        break;
    }
  }

  return CMMProfile::SingleTagContainer(a1, 1734438260, v5, v3);
}

BOOL CMMCurveTag::SameCurve(CMMCurveTag *this, CMMCurveTag *a2, CMMCurveTag *a3)
{
  v5 = (*(*a2 + 40))(a2);
  if (v5 != (*(*a3 + 40))(a3))
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = (*(*a2 + 48))(a2);
  v7 = (*(*a3 + 48))(a3);
  if (v6 == v7)
  {
    return 1;
  }

  return memcmp(v6, v7, 2 * v5) == 0;
}

uint64_t CMMMatrix::InitializeMatrix(uint64_t result, uint64_t a2, void *a3, float a4)
{
  v4 = 0;
  *(result + 104) = a4;
  v5 = a3[1];
  v6 = *(*a3 + 40);
  *a2 = bswap32(v6[2]);
  *(a2 + 12) = bswap32(v6[3]);
  *(a2 + 24) = bswap32(v6[4]);
  v7 = *(v5 + 40);
  *(a2 + 4) = bswap32(v7[2]);
  *(a2 + 16) = bswap32(v7[3]);
  *(a2 + 28) = bswap32(v7[4]);
  v8 = *(a3[2] + 40);
  *(a2 + 8) = bswap32(v8[2]);
  *(a2 + 20) = bswap32(v8[3]);
  *(a2 + 32) = bswap32(v8[4]);
  v9.i32[0] = v6[2];
  v9.i32[1] = v7[2];
  v9.i32[2] = v8[2];
  v9.i32[3] = v6[3];
  v10 = vrev32q_s8(v9);
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v12 = vcvtq_f64_s64(v11);
  v11.i64[0] = v10.i32[2];
  v11.i64[1] = v10.i32[3];
  v13 = vdupq_n_s64(0x3EF0000000000000uLL);
  v10.i32[0] = v7[3];
  v10.i32[1] = v8[3];
  v10.i32[2] = v6[4];
  v10.i32[3] = v7[4];
  *(a2 + 36) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v12, v13)), vmulq_f64(vcvtq_f64_s64(v11), v13));
  v14 = vrev32q_s8(v10);
  v11.i64[0] = v14.i32[0];
  v11.i64[1] = v14.i32[1];
  v15 = vcvtq_f64_s64(v11);
  v11.i64[0] = v14.i32[2];
  v11.i64[1] = v14.i32[3];
  *(a2 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v15, v13)), vmulq_f64(vcvtq_f64_s64(v11), v13));
  *v14.i32 = vcvtd_n_f64_s32(bswap32(v8[4]), 0x10uLL);
  *(a2 + 68) = v14.i32[0];
  v16 = a2;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      v18 = vcvtd_n_f64_s32(*(v16 + i), 0x10uLL);
      if (v18 >= 0.0)
      {
        v19 = v18 * 32768.0 + 0.5;
      }

      else
      {
        v19 = v18 * 32768.0 + -0.5;
      }

      *(v16 + i) = v19;
    }

    ++v4;
    v16 += 12;
  }

  while (v4 != 3);
  for (j = 0; j != 3; ++j)
  {
    v21 = 0.0;
    v22 = 0.0;
    v23 = a2;
    v24 = 3;
    do
    {
      v21 = v21 + *v23;
      v22 = v22 + *(v23 + 36);
      v23 += 4;
      --v24;
    }

    while (v24);
    if (v21 != 0.0 && v22 != 0.0)
    {
      v25 = 0;
      v26 = dword_19A9B0154[j] / v21;
      v27 = dword_19A9B0160[j] / v22;
      do
      {
        v28 = a2 + v25;
        *v28 = vcvtmd_s64_f64(v26 * *(a2 + v25) + 0.5);
        *(v28 + 36) = v27 * *(a2 + v25 + 36);
        v25 += 4;
      }

      while (v25 != 12);
    }

    a2 += 12;
  }

  return result;
}

uint64_t CMMRGBCurves::MakeInvertedTRC(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, float a6)
{
  v12 = a1 + 1;
  v11 = a1[1];
  if (!a4)
  {
    goto LABEL_8;
  }

  if (!(*(*v11 + 56))(v11, v12[a4], v12[a4 - 1]))
  {
    v11 = v12[a4];
LABEL_8:
    a1[5] = (*(*v11 + 72))(v11, a2, a3, a1 + 4, a6);
    goto LABEL_9;
  }

  v14 = a1[4];
  v15 = *(v14 + 8);
  if (v15)
  {
    *(v14 + 8) = v15 + 1;
  }

  v16 = a1[5];
  v17 = *(v16 + 8);
  if (v17)
  {
    *(v16 + 8) = v17 + 1;
  }

LABEL_9:
  *a5 = a1[4];
  return a1[5];
}

void CMMInvMatrix::CMMInvMatrix(CMMInvMatrix *this, CMMXYZTag *(*a2)[3], int (*a3)[3])
{
  v40 = *MEMORY[0x1E69E9840];
  *(this + 12) = 0;
  *(this + 8) = 0u;
  v5 = this + 8;
  *(this + 26) = 1065353216;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *this = &unk_1F0E07218;
  *(this + 5) = 0u;
  CMMMatrix::InitializeMatrix(this, this + 108, a2, 1.0);
  v6 = 0;
  v7 = 0;
  memset(v39, 0, sizeof(v39));
  do
  {
    v8 = v6;
    v9 = 3;
    do
    {
      v39[0][v8] = vcvtd_n_f64_s32(*(this + v8 + 27), 0x10uLL);
      ++v8;
      --v9;
    }

    while (v9);
    ++v7;
    v6 += 3;
  }

  while (v7 != 3);
  InvertMatrix3x3(v39);
  v10 = 0;
  for (i = 0; i != 3; ++i)
  {
    v12 = v10;
    v13 = 3;
    do
    {
      v14 = v39[0][v12];
      if (v14 >= 0.0)
      {
        v15 = v14 * 65536.0 + 0.5;
      }

      else
      {
        v15 = v14 * 65536.0 + -0.5;
      }

      *(this + v12++ + 2) = v15;
      --v13;
    }

    while (v13);
    v10 += 3;
  }

  v16 = 0;
  for (j = 0; j != 3; ++j)
  {
    v18 = v16;
    v19 = 3;
    do
    {
      v39[0][v18] = *(this + v18 + 36);
      ++v18;
      --v19;
    }

    while (v19);
    v16 += 3;
  }

  InvertMatrix3x3(v39);
  v20 = 0;
  v21 = 0;
  v22 = (this + 44);
  do
  {
    v23 = v20;
    v24 = 3;
    do
    {
      v25 = v39[0][v23];
      *(this + v23++ + 11) = v25;
      --v24;
    }

    while (v24);
    ++v21;
    v20 += 3;
  }

  while (v21 != 3);
  for (k = 0; k != 3; ++k)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0.0;
    v30 = v22;
    v31 = dword_19A9B0160;
    do
    {
      v28 += qword_19A9B02A8[v27] * *(v30 - 9);
      v32 = *v30++;
      v33 = v32;
      v34 = *v31++;
      v29 = v29 + (v33 * v34);
      ++v27;
    }

    while (v27 != 3);
    if (v28 != v28 && v29 != 0.0)
    {
      v35 = 0;
      v36 = (*a3)[k] / ((v28 + 0x8000) >> 16);
      v37 = 1.0 / v29;
      do
      {
        if (v36 > 1.0)
        {
          *&v5[v35 * 4] = vcvtmd_s64_f64(v36 * *&v5[v35 * 4] + 0.5);
        }

        v22[v35] = v37 * v22[v35];
        ++v35;
      }

      while (v35 != 3);
    }

    v22 += 3;
    v5 += 12;
  }

  v38 = *MEMORY[0x1E69E9840];
}

double InvertMatrix3x3(double (*a1)[3][3])
{
  v2 = (*a1)[0][1];
  v3 = (*a1)[0][2];
  v4 = (*a1)[1][0];
  v5 = (*a1)[1][2];
  v12 = (*a1)[1][1];
  v13 = (*a1)[0][0];
  v6 = (*a1)[2][0];
  v7 = (*a1)[2][1];
  v8 = (*a1)[2][2];
  v14 = -((*a1)[0][0] * v5);
  v9 = v3 * -(v6 * v12) + (*a1)[0][0] * v12 * v8 + v3 * v4 * v7 + -(v4 * v2) * v8 + v2 * v5 * v6 + v14 * v7;
  if (fabs(v9) <= 1.17549435e-38)
  {
    v10 = 4294967126;
  }

  else
  {
    v10 = 0;
  }

  CMMThrowExceptionOnError(v10);
  (*a1)[0][0] = (v12 * v8 - v7 * v5) / v9;
  (*a1)[0][1] = (v7 * v3 - v2 * v8) / v9;
  (*a1)[0][2] = (v2 * v5 - v12 * v3) / v9;
  (*a1)[1][0] = (v6 * v5 - v4 * v8) / v9;
  (*a1)[1][1] = (v13 * v8 - v6 * v3) / v9;
  (*a1)[1][2] = (v14 + v4 * v3) / v9;
  (*a1)[2][0] = (v4 * v7 - v6 * v12) / v9;
  (*a1)[2][1] = (v6 * v2 - v13 * v7) / v9;
  result = (v13 * v12 - v4 * v2) / v9;
  (*a1)[2][2] = result;
  return result;
}

__n128 CMMConvInvMatrix::CMMConvInvMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  if (a3)
  {
    *(a3 + 16) = a1;
  }

  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 33) = 0;
  *a1 = &unk_1F0E072B8;
  *(a1 + 56) = &unk_1F0E071F8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 160) = *(a2 + 104);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = v5;
  *(a1 + 48) = 0;
  *(a1 + 32) = 256;
  *(a1 + 35) = 0;
  *a1 = &unk_1F0E07530;
  *(a1 + 168) = &unk_1F0E071F8;
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 208) = v9;
  *(a1 + 176) = v8;
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  *(a1 + 272) = *(a2 + 104);
  *(a1 + 240) = v11;
  *(a1 + 256) = v12;
  *(a1 + 224) = v10;
  *(a1 + 168) = &unk_1F0E07218;
  *(a1 + 276) = *(a2 + 108);
  result = *(a2 + 124);
  v14 = *(a2 + 140);
  v15 = *(a2 + 156);
  *(a1 + 340) = *(a2 + 172);
  *(a1 + 308) = v14;
  *(a1 + 324) = v15;
  *(a1 + 292) = result;
  return result;
}

unint64_t CMMMatrix::InitializeRGBMatrix(CMMMatrix *this, const CMMMatrix *a2, const CMMMatrix *a3, float a4)
{
  v4 = 0;
  v40[3] = *MEMORY[0x1E69E9840];
  v5 = a3 + 8;
  *(this + 26) = *(a2 + 26) * *(a3 + 26);
  v6 = a2 + 8;
  v7 = (a3 + 44);
  v8 = this + 8;
  v9 = this + 44;
  do
  {
    v10 = 0;
    v11 = a2;
    do
    {
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      v15 = v7;
      do
      {
        v13 += *(v11 + v12 + 8) * *(v15 - 9);
        v16 = *v15++;
        v14 = v14 + (v16 * *(v11 + v12 + 44));
        v12 += 12;
      }

      while (v12 != 36);
      result = (v13 + 0x8000) >> 16;
      *&v8[12 * v4 + 4 * v10] = result;
      *&v9[12 * v4 + 4 * v10++] = v14;
      v11 = (v11 + 4);
    }

    while (v10 != 3);
    ++v4;
    v7 += 3;
  }

  while (v4 != 3);
  v18 = 0;
  memset(v40, 0, 24);
  memset(v39, 0, sizeof(v39));
  do
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v20 += *&v6[v19] << 24;
      v19 += 4;
    }

    while (v19 != 12);
    v40[v18++] = v20 >> 16;
    v6 += 12;
  }

  while (v18 != 3);
  for (i = 0; i != 3; ++i)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v23 += v40[v22] * *&v5[4 * v22];
      ++v22;
    }

    while (v22 != 3);
    v39[i] = (v23 + 0x8000) >> 16;
    v5 += 12;
  }

  v24 = 0;
  memset(v38, 0, sizeof(v38));
  v25 = v8;
  do
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v27 += *&v25[v26] << 24;
      v26 += 4;
    }

    while (v26 != 12);
    v38[v24++] = (v27 >> 16);
    v25 += 12;
  }

  while (v24 != 3);
  for (j = 0; j != 3; ++j)
  {
    v29 = 0;
    v30 = v39[j] / v38[j];
    do
    {
      *&v8[v29] = vcvtmd_s64_f64(v30 * *&v8[v29] + 0.5);
      v29 += 4;
    }

    while (v29 != 12);
    v8 += 12;
  }

  for (k = 0; k != 3; ++k)
  {
    v32 = 0;
    v33 = 0.0;
    do
    {
      v33 = v33 + *&v9[v32];
      v32 += 4;
    }

    while (v32 != 12);
    if (v33 != 0.0 && v33 != 1.0)
    {
      v35 = 0;
      v36 = 1.0 / v33;
      do
      {
        *&v9[v35] = v36 * *&v9[v35];
        v35 += 4;
      }

      while (v35 != 12);
    }

    v9 += 12;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void ConversionManager::AddInvMatrixConv(uint64_t a1, CMMXYZTag *(*a2)[3], CMMMemMgr *a3, const char *a4, int a5, uint64_t a6, const __CFDictionary *a7)
{
  v9 = 0;
  v10 = 0;
  v92 = 0;
  v146 = *MEMORY[0x1E69E9840];
  v143 = 0;
  v144 = 0;
  memset(v145, 0, sizeof(v145));
  v142 = 0;
  memset(v141, 0, sizeof(v141));
  LODWORD(v141[0]) = 1;
  v11 = (a3 + 8);
  v139 = 0;
  v140 = 0;
  v90 = a4;
  v94 = a4 ^ 1;
  v138 = 0;
  memset(v137, 0, sizeof(v137));
  LODWORD(v137[0]) = 1;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  LODWORD(v135[0]) = 1;
  v93 = *MEMORY[0x1E695E4D0];
  do
  {
    v12 = *(v11[v10] + 52);
    if (v12 == 1212958496)
    {
      if (a5 == 14)
      {
        ConversionManager::AddHLGPCSToDev(a1, v10, &v144, &v143, a3, 14, a6, a7);
      }

      else if (a5 != 10)
      {
        if (a5 != 2)
        {
          __assert_rtn("AddInvMatrixConv", "CMMConversionManager.cpp", 2575, "0");
        }

        ConversionManager::AddHLGPCSToDev(a1, v10, &v144, &v143, a3, 2, a6, a7);
      }

LABEL_66:
      v24 = v143;
      if (v144)
      {
        v21 = v144;
      }

      else
      {
        v21 = v143;
      }

      v144 = v21;
      if (!v143)
      {
        v9 = 0;
        v51 = 1;
        goto LABEL_82;
      }

      goto LABEL_70;
    }

    if (v12 != 1347493920)
    {
      *&v116 = 0;
      if ((*(a1 + 43) & 1) == 0 && *(a1 + 44) != 1)
      {
LABEL_26:
        InvertedTRC = CMMRGBCurves::MakeInvertedTRC(a3, v141, *(a1 + 8), v10, &v116, 1.0);
        v23 = (*(*v11[v10] + 40))(v11[v10]);
        if (*(a1 + 43) == 1)
        {
          DWORD1(v141[0]) = 15;
        }

        goto LABEL_28;
      }

      if (*(a1 + 58) == 1 && (*(a1 + 49) & 1) == 0)
      {
        InvertedTRC = v140;
        if (!v140)
        {
          v54 = 1.0;
          if (*(a1 + 52) == 1)
          {
            v92 |= *(a1 + 40) == 0;
            if (*(a1 + 40))
            {
              v54 = 1.0;
            }

            else
            {
              v54 = 0.0049261;
            }
          }

          if (*(a1 + 53) == 1)
          {
            if (CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::predicate[0] != -1)
            {
              dispatch_once(CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::predicate, &__block_literal_global_976);
            }

            if (a7 && CFDictionaryContainsKey(a7, kColorSyncUseBT1886ForCoreVideoGamma) == 1)
            {
              CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled = CFDictionaryGetValue(a7, kColorSyncUseBT1886ForCoreVideoGamma) == v93;
            }

            v55 = CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled;
          }

          else
          {
            v55 = 1;
          }

          *&v127 = 0;
          v125 = 0u;
          v126 = 0u;
          valuePtr = 0u;
          v124 = 0u;
          CMMITUBT1886InvEOTF::CMMITUBT1886InvEOTF(&valuePtr, v55 & 1, v54);
          TRC = CMMITUBT1886EOTF::MakeTRC(&valuePtr, v141, *(a1 + 8), v58);
          goto LABEL_108;
        }
      }

      else
      {
        if (!*(a1 + 43) || *(a1 + 61) != 1 || (*(a1 + 49) & 1) != 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 52))
        {
          InvertedTRC = v140;
          if (!v140)
          {
            v92 |= *(a1 + 40) == 0;
            if (*(a1 + 40))
            {
              v52 = 1.0;
            }

            else
            {
              v52 = 0.0049261;
            }

            v53 = *(a1 + 53) ^ 1;
            goto LABEL_105;
          }
        }

        else
        {
          if ((*(a1 + 53) & 1) == 0)
          {
            goto LABEL_26;
          }

          InvertedTRC = v140;
          if (!v140)
          {
            v53 = 0;
            v52 = 1.0;
LABEL_105:
            *&v127 = 0;
            v125 = 0u;
            v126 = 0u;
            valuePtr = 0u;
            v124 = 0u;
            CMMITUBT1886InvEOTF::CMMITUBT1886InvEOTF(&valuePtr, v53 & 1, v52);
            TRC = CMMITUBT1886EOTF::MakeTRC(&valuePtr, v141, *(a1 + 8), v56);
LABEL_108:
            InvertedTRC = TRC;
            v23 = 0;
            v140 = TRC;
            goto LABEL_28;
          }
        }
      }

      v35 = InvertedTRC[1];
      v23 = 0;
      if (v35)
      {
        InvertedTRC[1] = v35 + 1;
      }

LABEL_28:
      v24 = CMMBase::NewInternal(0xB0, *(a1 + 8), a3, a4);
      v25 = v23;
      v26 = v116;
      CMMConvInvertedTRC::CMMConvInvertedTRC(v24, v10, InvertedTRC, v25, v116, v141, v9, 3, v94);
      if (InvertedTRC && (v27 = InvertedTRC[1]) != 0 && (v28 = v27 - 1, (InvertedTRC[1] = v28) == 0))
      {
        (*(*InvertedTRC + 8))(InvertedTRC);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else if (v26)
      {
LABEL_32:
        v29 = v26[1];
        if (v29)
        {
          v30 = v29 - 1;
          v26[1] = v30;
          if (!v30)
          {
            (*(*v26 + 8))(v26);
          }
        }
      }

      if (v144)
      {
        v21 = v144;
      }

      else
      {
        v21 = v24;
      }

      v143 = v24;
      v144 = v21;
LABEL_70:
      v9 = v24;
      goto LABEL_71;
    }

    if (a5 == 10)
    {
      if (a6)
      {
        if (!v10)
        {
          v31 = *(a6 + 16);
          if (v31)
          {
            v32 = vcvts_n_f32_s32(bswap32(*(*(v31 + 40) + 12)), 0x10uLL);
LABEL_54:
            if (v32 == 0.0)
            {
              v36 = v32;
            }

            else
            {
              v36 = v32 / 100.0;
            }

            if (a7)
            {
              if (CFDictionaryContainsKey(a7, @"com.apple.cmm.PQInvOOTFOpticalScale") == 1)
              {
                Value = CFDictionaryGetValue(a7, @"com.apple.cmm.PQInvOOTFOpticalScale");
                if (Value)
                {
                  LODWORD(valuePtr) = 0;
                  v38 = CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
                  v39 = *&valuePtr;
                  if (!v38)
                  {
                    v39 = 0.0;
                  }

                  if (v39 != 0.0)
                  {
                    v36 = v39;
                  }
                }
              }
            }

            *(&v117 + 1) = 0x100000001;
            *(&v116 + 1) = LODWORD(v36);
            *&v116 = &unk_1F0E09720;
            *&v117 = 0xD00000001;
            *&v118 = 0;
            DWORD2(v118) = 1054168405;
            *(&v118 + 3) = v36;
            *&v120 = 0;
            v119 = 0uLL;
            v140 = CMMITUBT1886EOTF::MakeTRC(&v116, v137, *(a1 + 8), a4);
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            valuePtr = 0u;
            v124 = 0u;
            CMMParaCurveTag::CMMParaCurveTag(&valuePtr, 1885434465, "para", 32, 0);
            *&valuePtr = off_1F0E08FA8;
            v40 = *(a1 + 8);
            v41 = CMMParaCurveTag::MakeInvertedTRC();
            DWORD1(v135[0]) = 15;
            v139 = v41;
            CMMTag::~CMMTag(&valuePtr);
LABEL_65:
            ConversionManager::AddTRCSequence(a1, v10, &v144, &v143, v137, &v140, v135, &v139);
            goto LABEL_66;
          }

LABEL_53:
          v32 = 100.0;
          goto LABEL_54;
        }
      }

      else if (!v10)
      {
        goto LABEL_53;
      }

      v33 = v140[1];
      if (v33)
      {
        v140[1] = v33 + 1;
      }

      v34 = *(v139 + 1);
      if (v34)
      {
        *(v139 + 1) = v34 + 1;
      }

      goto LABEL_65;
    }

    if (a5 != 2)
    {
      __assert_rtn("AddInvMatrixConv", "CMMConversionManager.cpp", 2562, "0");
    }

    if (ColorSyncOptionsDisplayReferredToneMappingRequested(a7))
    {
      goto LABEL_66;
    }

    v13 = a7;
    v14 = 0.0203;
    if ((ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a7) & 1) == 0)
    {
      v14 = default_PQInvEOTFOpticalScale(a7, *(a1 + 56));
      v13 = a7;
    }

    v15 = custom_PQInvEOTFOpticalScale(v13, v14);
    if (v15 != 0.0)
    {
      v14 = v15;
    }

    *&v126 = 0;
    v124 = 0u;
    v125 = 0u;
    valuePtr = 0u;
    LODWORD(valuePtr) = 1;
    *&v116 = 0;
    v16 = CMMRGBCurves::MakeInvertedTRC(a3, &valuePtr, *(a1 + 8), v10, &v116, v14);
    v19 = CMMBase::NewInternal(0xB8, *(a1 + 8), v17, v18);
    v20 = CMMConvInvertedTRC::CMMConvInvertedTRC(v19, v10, v16, 0, v116, &valuePtr, v9, 3, 1);
    *v20 = &unk_1F0E06FC8;
    v20[44] = v14;
    if (v144)
    {
      v21 = v144;
    }

    else
    {
      v21 = v20;
    }

    v143 = v20;
    v144 = v21;
    v9 = v20;
LABEL_71:
    v42 = *v9;
    v43 = **v9;
    {
      v44 = *v42;
      v46 = CMMTable::UInt8Data(*(v45[8] + 16), *(v45[8] + 24));
      v47 = 4098;
      do
      {
        v48 = v47 - 1;
        if (v47 == 1)
        {
          v50 = 0x1000000;
          goto LABEL_80;
        }

        v49 = *(v46 + 4 * (v47-- - 2));
      }

      while (v49 > 0xFFFFFF);
      if (v48 >= 0x1000)
      {
        v48 = 4096;
      }

      v50 = v48 << 12;
LABEL_80:
      v51 = 0;
      v145[v10] = v50;
    }

    else
    {
      v51 = 0;
    }

LABEL_82:
    ++v10;
  }

  while (v10 != 3);
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  valuePtr = 0u;
  CMMInvMatrix::CMMInvMatrix(&valuePtr, a2, v145);
  v61 = CMMBase::NewInternal(0x160, *(a1 + 8), v59, v60);
  CMMConvInvMatrix::CMMConvInvMatrix(v61, &valuePtr, *(a1 + 24));
  *v62 = &unk_1F0E0BA98;
  *(a1 + 24) = v62;
  if (a7 && (CFDictionaryGetValue(a7, @"com.apple.cmm.SkipPQEETF") == v93 ? (v63 = 1) : (v63 = CFDictionaryGetValue(a7, @"com.apple.cmm.SkipToneMappingForBT2100") == v93), *(a1 + 52) == 1))
  {
    v64 = CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyToneMappingForBT2100") != v93;
  }

  else
  {
    v63 = 0;
    v64 = 1;
  }

  v65 = ColorSyncOptionsDisplayReferredToneMappingRequested(a7);
  v66 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a7);
  FlexTRCOptions = ColorSyncOptionsGetFlexTRCOptions(0, a7);
  FlexLumaScalingOptions = ColorSyncOptionsGetFlexLumaScalingOptions(0, a7);
  v71 = 1;
  if ((v66 & 1) == 0 && (v65 & 1) == 0)
  {
    v71 = (FlexTRCOptions | FlexLumaScalingOptions) != 0;
  }

  if ((*(a1 + 42) & 1) != 0 || ((*(a1 + 41) | v71) & 1) != 0 || (*(a1 + 43) & 1) != 0 || v90 & 1 | ((*(a1 + 52) & 1) == 0) | v63)
  {
    if (((v64 | v92) & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else if ((v92 & 1) == 0)
  {
LABEL_124:
    v72 = CMMBase::NewInternal(0x38, *(a1 + 8), v69, v70);
    v73 = *(a1 + 24);
    *(v72 + 2) = 1;
    v72[2] = 0;
    v72[3] = v73;
    if (v73)
    {
      *(v73 + 16) = v72;
    }

    v72[5] = 0x3FFFFF0000000000;
    *v72 = &unk_1F0E0A168;
    *(v72 + 12) = 1000434481;
    *(v72 + 36) = 0;
    *(v72 + 8) = 256;
    *(a1 + 24) = v72;
  }

  if (a7)
  {
    if (CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyYCCGammaScaling") == v93)
    {
      v78 = *(a6 + 56);
      v100 = *(a6 + 40);
      v101 = v78;
      LODWORD(v102) = *(a6 + 72);
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      CMMMatrix::CMMMatrix(&v116, &v100);
      CMMMatrix::MakeMatrixConv(&v116, *(a1 + 8), *(a1 + 24), v79);
      *(a1 + 24) = v80;
      v113 = 1987212643;
      v114 = 0x1000000;
      v115 = 14337;
      v112 = 0u;
      memset(v111, 0, sizeof(v111));
      CMMCurveTag::CMMCurveTag(v111, 0, &v113, 14, 0);
      *&v111[0] = &unk_1F0E090E0;
      DWORD2(v112) = 1067198710;
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      LODWORD(v107) = 1;
      v81 = CMMCurveTag::MakeTRC(v111, &v107, *(a1 + 8), 0);
      *&v107 = 1;
      HIDWORD(v107) = 1;
      *&v108 = 0;
      BYTE8(v107) = 1;
      *(&v108 + 1) = DWORD2(v112) | 0x3F80000000000000;
      v110 = 0;
      v109 = 0uLL;
      v84 = CMMBase::NewInternal(0xA8, *(a1 + 8), v82, v83);
      CMMConvTRC::CMMConvTRC(v84, 0, v81, 0, &v107, *(a1 + 24), 1, 1, 1.0, 1, 0);
      *(a1 + 24) = v84;
      v85 = *(a6 + 92);
      v98[0] = *(a6 + 76);
      v98[1] = v85;
      v99 = *(a6 + 108);
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      CMMMatrix::CMMMatrix(&v100, v98);
      CMMMatrix::MakeMatrixConv(&v100, *(a1 + 8), v84, v86);
      *(a1 + 24) = v87;
      CMMTag::~CMMTag(v111);
    }

    else if (CFDictionaryGetValue(a7, @"com.apple.cmm.ApplyLuminanceScaling") == v93)
    {
      v76 = CMMBase::NewInternal(0x48, *(a1 + 8), v74, v75);
      v77 = *(a1 + 24);
      *(v76 + 2) = 1;
      v76[2] = 0;
      v76[3] = v77;
      if (v77)
      {
        *(v77 + 16) = v76;
      }

      v76[5] = 0x3F80000000000000;
      *(v76 + 33) = 16777217;
      *v76 = &unk_1F0E07C78;
      *(v76 + 12) = 1062284383;
      *(v76 + 13) = *(a6 + 24);
      *(v76 + 14) = *(a6 + 28);
      *(v76 + 15) = *(a6 + 32);
      *(v76 + 16) = *(a6 + 36);
      *(a1 + 24) = v76;
    }
  }

  v88 = *(a1 + 24);
  if (!*(a1 + 16))
  {
    *(a1 + 16) = v88;
  }

  *(v88 + 16) = v21;
  if (v21)
  {
    *(v21 + 3) = v88;
  }

  if ((v51 & 1) == 0)
  {
    *(a1 + 24) = v9;
  }

  v89 = *MEMORY[0x1E69E9840];
}

__n128 CMMConvGrayToRGBMatrix::CMMConvGrayToRGBMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a3 + 16) = a1;
  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 33) = 0;
  *a1 = &unk_1F0E072B8;
  *(a1 + 56) = &unk_1F0E071F8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 80) = *(a2 + 24);
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  result = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 160) = *(a2 + 104);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = result;
  *(a1 + 48) = 1;
  *(a1 + 32) = 256;
  *(a1 + 35) = 0;
  *a1 = &unk_1F0E0A918;
  return result;
}

BOOL CMMMatrix::IsFloatingPointNOP(CMMMatrix *this)
{
  if (*(this + 26) != 1.0)
  {
    return 0;
  }

  v2 = 0;
  v3 = this + 44;
  v4 = this + 92;
  v5 = this + 44;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      if (v2 == i)
      {
        result = 0;
        v7 = *&v3[12 * v2 + 4 * v2];
        if (v7 < 0.99999 || v7 > 1.00001)
        {
          return result;
        }
      }

      else if (fabsf(*&v5[4 * i]) > 0.00001)
      {
        return 0;
      }
    }

    v8 = fabsf(*&v4[4 * v2]);
    result = v8 <= 0.00001;
    ++v2;
    v5 += 12;
  }

  while (v8 <= 0.00001 && v2 != 3);
  return result;
}

uint64_t CMMConvTRC::Collapse@<X0>(CMMConvTRC *this@<X0>, CMMMemMgr *a2@<X1>, int a3@<W8>)
{
  v6 = this;
  do
  {
    v6 = *(v6 + 2);
    if (!v6)
    {
      return (v6 != 0) & a3;
    }

    v7 = *v6;
    v8 = **v6;
    if (!v9)
    {
      v15 = *v7;
      if (!v16)
      {
        goto LABEL_99;
      }

      v68 = 0;
      v17 = v16[8];
      v67 = v16[9];
      LODWORD(v68) = *(v16 + 40);
      v18 = v16[6];
      v65 = v16[7];
      v66 = v17;
      v19 = v16[5];
      *&v64[8] = v16[4];
      *&v64[24] = v19;
      *v64 = &unk_1F0E071F8;
      *&v64[40] = v18;
      v20 = *(this + 18);
      if (v20 <= 2)
      {
        if (*&v64[4 * v20 + 8])
        {
          goto LABEL_99;
        }

        v21 = &v64[4 * v20];
        if (*(v21 + 5) || *(v21 + 8))
        {
          goto LABEL_99;
        }
      }

      goto LABEL_11;
    }

    v10 = v9;
    a3 = v9[18];
  }

  while (a3 != *(this + 18));
  v11 = *v7;
  v13 = v12;
  v14 = *(this + 23);
  if (v14 > 11)
  {
    if (v14 == 12)
    {
      if (*(v10 + 92) == 13)
      {
        if (*(this + 29) == *(v10 + 116))
        {
          goto LABEL_48;
        }

        goto LABEL_94;
      }
    }

    else if (v14 == 14 && *(v10 + 92) == 15)
    {
LABEL_48:
      (*(*this + 72))(this);
      (*(*v10 + 72))(v10);
      if ((*(this + 35) & 1) != 0 || (*(this + 36) & 1) != 0 || (*(v10 + 35) & 1) != 0 || *(v10 + 36) == 1)
      {
        if (CMMInitializeLinearGammaTable(void)::predicate != -1)
        {
          dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
        }

        *v64 = *CMMLinearGammaFloatLutInfo;
        *&v64[16] = *(CMMLinearGammaFloatLutInfo + 16);
        *&v64[32] = *(CMMLinearGammaFloatLutInfo + 32);
        *&v64[48] = *(CMMLinearGammaFloatLutInfo + 48);
        v41 = CMMLinearGammaTable;
        v42 = *(CMMLinearGammaTable + 8);
        if (v42)
        {
          *(CMMLinearGammaTable + 8) = v42 + 1;
        }

        v43 = *(v10 + 16);
        v44 = CMMBase::NewInternal(0xA8, a2, v39, v40);
        v45 = CMMConvTRC::CMMConvTRC(v44, *(this + 18), v41, 0, v64, v10, *(this + 19), 1, 1.0, 1, 1);
        *(v45 + 16) = v43;
        if (v43)
        {
          *(v43 + 24) = v45;
        }

        (*(*this + 32))(this);
        (*(*this + 56))(this);
        (*(*v10 + 32))(v10);
        (*(*v10 + 56))(v10);
      }

      goto LABEL_59;
    }

LABEL_25:
    if (v12 && (v12[160] & 1) == 0 && (v22 = *(v12 + 21)) != 0 && CMMTable::UInt8Data(*(v22 + 16), *(v22 + 24)))
    {
      if ((v13[160] & 1) != 0 || (v23 = *(v13 + 21)) == 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = CMMTable::UInt8Data(*(v23 + 16), *(v23 + 24));
      }

      v46 = CMMTable::UInt8Data(*(*(this + 8) + 16), *(*(this + 8) + 24));
      if (v24)
      {
        v47 = v46 == 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = v47;
      v49 = v48 ^ 1;
      if (v46 == v24)
      {
        v49 = 1;
        goto LABEL_93;
      }

      if ((v48 & 1) == 0)
      {
        v50 = 4097;
        while (1)
        {
          v52 = *v46++;
          v51 = v52;
          v53 = *v24++;
          v54 = v51 - v53;
          if (v54 < 0)
          {
            v54 = -v54;
          }

          if (v54 >= 2)
          {
            break;
          }

          if (!--v50)
          {
            goto LABEL_48;
          }
        }

LABEL_94:
        if (*(v10 + 92) == 7 && *(this + 36) == *(v10 + 36))
        {
          (*(*v10 + 72))(v10);
          goto LABEL_59;
        }

        if (*(this + 23) != 7 || *(this + 36) != *(v10 + 36))
        {
          goto LABEL_99;
        }

LABEL_11:
        (*(*this + 72))(this);
LABEL_59:
        LOBYTE(a3) = 1;
        return (v6 != 0) & a3;
      }
    }

    else
    {
      v25 = **this;
      if (!v26 || (v29 = v26, (v26[160] & 1) != 0) || (v30 = *(v26 + 21)) == 0 || !CMMTable::UInt8Data(*(v30 + 16), *(v30 + 24)))
      {
        v33 = CMMBase::NewInternal(0x8008, a2, v27, v28);
        v34 = CMMTable::UInt8Data(*(*(v10 + 64) + 16), *(*(v10 + 64) + 24));
        memcpy(v33, v34, 0x4004uLL);
        InvertLUT(v33, v33 + 4097);
        v35 = CMMTable::UInt8Data(*(*(this + 8) + 16), *(*(this + 8) + 24));
        v36 = v35;
        if (v35 == v33 || !v35)
        {
          CMMBase::operator delete(v33);
          if (v36)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v37 = 0;
          while (1)
          {
            v38 = *(v35 + v37 * 4) - v33[v37];
            if (v38 < 0)
            {
              v38 = v33[v37] - *(v35 + v37 * 4);
            }

            if (v38 >= 2)
            {
              break;
            }

            if (++v37 == 4097)
            {
              CMMBase::operator delete(v33);
              goto LABEL_48;
            }
          }

          CMMBase::operator delete(v33);
        }

        goto LABEL_94;
      }

      if ((v29[160] & 1) != 0 || (v31 = *(v29 + 21)) == 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = CMMTable::UInt8Data(*(v31 + 16), *(v31 + 24));
      }

      v55 = CMMTable::UInt8Data(*(*(v10 + 64) + 16), *(*(v10 + 64) + 24));
      if (v32)
      {
        v56 = v55 == 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = v56;
      v49 = v57 ^ 1;
      if (v32 == v55)
      {
        v49 = 1;
      }

      else if ((v57 & 1) == 0)
      {
        v58 = 4097;
        while (1)
        {
          v60 = *v32++;
          v59 = v60;
          v61 = *v55++;
          v62 = v59 - v61;
          if (v62 < 0)
          {
            v62 = -v62;
          }

          if (v62 >= 2)
          {
            goto LABEL_94;
          }

          if (!--v58)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_93:
    if (v49)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

  if (v14 == 9)
  {
    if (*(v10 + 92) != 8)
    {
      goto LABEL_99;
    }

    goto LABEL_48;
  }

  if (v14 != 11)
  {
    goto LABEL_25;
  }

LABEL_99:
  LOBYTE(a3) = 0;
  return (v6 != 0) & a3;
}

CMMTable *CMMCurveTag::MakeTRC(uint64_t a1, uint64_t a2, void **a3, int a4)
{
  v8 = (*(*a1 + 40))(a1);
  v11 = (*(*a1 + 48))(a1);
  if (a2)
  {
    *(a2 + 4) = 0;
  }

  if (!(v8 | a4))
  {
    if (CMMInitializeLinearGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_13:
        v16 = CMMLinearGammaTable;
        goto LABEL_14;
      }

LABEL_12:
      v14 = *(CMMLinearGammaFloatLutInfo + 16);
      v13 = *(CMMLinearGammaFloatLutInfo + 32);
      v15 = *CMMLinearGammaFloatLutInfo;
      *(a2 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
      *(a2 + 16) = v14;
      *(a2 + 32) = v13;
      *a2 = v15;
      goto LABEL_13;
    }

LABEL_42:
    dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a4 || v8 != 1)
  {
    if (a4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *(*(*a1 + 48))(a1);
    if (v12 == 1)
    {
      if (CMMInitializeLinearGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_42;
    }

    if ((v12 & 0xFFFFFEFF) == 0xCC01)
    {
      if (CMMInitializeOnePointEightGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
LABEL_25:
          v16 = CMMOnePointEightGammaTable;
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&CMMInitializeOnePointEightGammaTable(void)::predicate, &__block_literal_global_1018);
        if (!a2)
        {
          goto LABEL_25;
        }
      }

      v27 = *(CMMOnePointEightGammaFloatLutInfo + 16);
      v26 = *(CMMOnePointEightGammaFloatLutInfo + 32);
      v28 = *CMMOnePointEightGammaFloatLutInfo;
      *(a2 + 48) = *(CMMOnePointEightGammaFloatLutInfo + 48);
      *(a2 + 16) = v27;
      *(a2 + 32) = v26;
      *a2 = v28;
      goto LABEL_25;
    }

    if (v12 == 13058)
    {
      if (CMMInitializeTwoPointTwoGammaTable(void)::predicate == -1)
      {
        if (!a2)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  if (IsSRGBGammaCurve(v8, v11))
  {
    if (CMMInitializeSRGBGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_34:
        v16 = CMMsRGBGammaTable;
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    v30 = *(CMMsRGBGammaFloatLutInfo + 16);
    v29 = *(CMMsRGBGammaFloatLutInfo + 32);
    v31 = *CMMsRGBGammaFloatLutInfo;
    *(a2 + 48) = *(CMMsRGBGammaFloatLutInfo + 48);
    *(a2 + 16) = v30;
    *(a2 + 32) = v29;
    *a2 = v31;
    goto LABEL_34;
  }

  v35 = 2.2;
  if (IsPureGammaCurve(v8, v11, &v35) && v35 > 2.19 && v35 < 2.21)
  {
    if (CMMInitializeTwoPointTwoGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_41:
        v16 = CMMTwoPointTwoGammaTable;
LABEL_14:
        v17 = *(v16 + 1);
        if (v17)
        {
          *(v16 + 1) = v17 + 1;
        }

        return v16;
      }

LABEL_40:
      v33 = *(CMMTwoPointTwoGammaFloatLutInfo + 16);
      v32 = *(CMMTwoPointTwoGammaFloatLutInfo + 32);
      v34 = *CMMTwoPointTwoGammaFloatLutInfo;
      *(a2 + 48) = *(CMMTwoPointTwoGammaFloatLutInfo + 48);
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a2 = v34;
      goto LABEL_41;
    }

LABEL_48:
    dispatch_once(&CMMInitializeTwoPointTwoGammaTable(void)::predicate, &__block_literal_global_1008);
    if (!a2)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_18:
  v16 = CMMBase::NewInternal(0x28, a3, v9, v10);
  *v16 = &unk_1F0E09180;
  *(v16 + 1) = 1;
  *(v16 + 3) = 0;
  *(v16 + 4) = 21512;
  v21 = CMMBase::NewInternal(0x5408, a3, v19, v20);
  *(v16 + 2) = v21;
  v22 = CMMTable::UInt8Data(v21, *(v16 + 3));
  CMMCurveTag::MakeLut(a1, a2, v22, a4);
  v23 = CMMTable::UInt8Data(*(v16 + 2), *(v16 + 3));
  MakeLookups(v23);
  if (a2 && !*a2)
  {
    *(a2 + 16) = CMMTable::MakeFloatCopy(v16, a3, v24, v25);
  }

  return v16;
}

uint64_t CMMConvMatrix::Collapse(char **this, CMMMemMgr *a2, CMMConvNode **a3)
{
  v148 = *MEMORY[0x1E69E9840];
  v3 = this[2];
  if (!v3 || ((*(*this + 8))(this, a2, a3) & 1) != 0 || ((*(*v3 + 5))(v3) & 1) != 0)
  {
    goto LABEL_4;
  }

  v8 = *v3;
  v9 = **v3;
  v12 = v10;
  if (v10 && !*(this + 17) && !*(this + 18) && !*(this + 19) && !*(this + 21) && !*(this + 22) && !*(this + 23) && !*(this + 34) && !*(this + 35) && !*(this + 36) && *(this + 26) == 0.0 && *(this + 27) == 0.0 && *(this + 28) == 0.0 && *(this + 30) == 0.0 && *(this + 31) == 0.0 && *(this + 32) == 0.0 && *(this + 37) == 0.0 && *(this + 38) == 0.0 && *(this + 39) == 0.0)
  {
    *(this + 32) = 1;
    *(v10 + 32) = 1;
    *(&v137[6] + 1) = 0;
    *&v137[0] = &unk_1F0E071F8;
    v121 = *(v10 + 6);
    *(&v137[3] + 8) = *(v10 + 7);
    v122 = *(v10 + 9);
    *(&v137[4] + 8) = *(v10 + 8);
    *(&v137[5] + 8) = v122;
    DWORD2(v137[6]) = *(v10 + 40);
    v123 = *(v10 + 5);
    *(v137 + 8) = *(v10 + 4);
    *(&v137[1] + 8) = v123;
    v124 = *(this + 16);
    v125 = SDWORD1(v137[1]) * v124;
    v126 = *(this + 20);
    v127 = v123 * v126;
    DWORD2(v137[0]) = (v124 * SDWORD2(v137[0]) + 0x8000) >> 16;
    HIDWORD(v137[0]) = (v126 * SHIDWORD(v137[0]) + 0x8000) >> 16;
    *(&v137[2] + 8) = v121;
    LODWORD(v137[2]) = (SDWORD2(v123) * v124 + 0x8000) >> 16;
    DWORD1(v137[2]) = (SHIDWORD(v123) * v126 + 0x8000) >> 16;
    v128 = *(this + 24);
    v129 = v128 * SLODWORD(v137[1]);
    v130 = SDWORD1(v123) * v128;
    v131 = v121 * v128;
    LODWORD(v121) = *(this + 25);
    v132 = *(this + 29);
    LODWORD(v123) = *(this + 33);
    v133.i64[0] = __PAIR64__(v132, v121);
    v133.i64[1] = __PAIR64__(v121, v123);
    *(&v137[2] + 12) = vmulq_f32(v133, *(&v137[2] + 12));
    v133.i64[0] = __PAIR64__(v123, v132);
    v133.i64[1] = __PAIR64__(v132, v121);
    *(&v137[3] + 12) = vmulq_f32(v133, *(&v137[3] + 12));
    *(&v137[4] + 3) = *&v123 * *(&v137[4] + 3);
    LODWORD(v137[1]) = (v129 + 0x8000) >> 16;
    DWORD1(v137[1]) = (v125 + 0x8000) >> 16;
    DWORD2(v137[1]) = (v127 + 0x8000) >> 16;
    HIDWORD(v137[1]) = (v130 + 0x8000) >> 16;
    DWORD2(v137[2]) = (v131 + 0x8000) >> 16;
    v134 = *(v10 + 2);
    CMMMatrix::MakeMatrixConv(v137, a2, v10, v11);
    v136 = v135;
    *(v135 + 16) = v134;
    if (v134)
    {
      *(v134 + 24) = v135;
    }

    if ((*(*this + 5))(this))
    {
      (*(*v136 + 24))(v136);
    }

    if ((*(*v12 + 64))(v12))
    {
      (*(*v136 + 48))(v136);
    }

    goto LABEL_63;
  }

  v13 = *v8;
  if (v14)
  {
    v15 = v14;
    v16 = *this;
    v17 = **this;
    {
      v18 = 0;
      v19 = (this + 8);
      v20 = v15 + 276;
      while (2)
      {
        for (i = 0; i != 12; i += 4)
        {
          if (*&v19[i] != *(v20 + i))
          {
            v24 = (v15 + 16);
            v23 = *(v15 + 16);
            *(this + 32) = 1;
            *(v15 + 32) = 1;
            memset(&v137[5], 0, 32);
            DWORD2(v137[6]) = 1065353216;
            memset(v137 + 8, 0, 72);
            *&v137[0] = &unk_1F0E07258;
            CMMMatrix::InitializeRGBMatrix(v137, (this + 7), (v15 + 56), 0.0);
            v30 = CMMBase::NewInternal(0xA8, a2, v31, v32);
            *(v30 + 2) = 1;
            v30[2] = 0;
            v30[3] = v15;
            *(v15 + 16) = v30;
            v30[5] = 0x3F80000000000000;
            *(v30 + 33) = 0;
            *v30 = &unk_1F0E072B8;
            v30[7] = &unk_1F0E071F8;
            *(v30 + 4) = *(v137 + 8);
            v33 = *(&v137[4] + 8);
            *(v30 + 7) = *(&v137[3] + 8);
            *(v30 + 8) = v33;
            *(v30 + 9) = *(&v137[5] + 8);
            *(v30 + 40) = DWORD2(v137[6]);
            v34 = *(&v137[2] + 8);
            *(v30 + 5) = *(&v137[1] + 8);
            *(v30 + 6) = v34;
            *(v30 + 24) = 0;
            *(v30 + 33) = 1;
            *(v30 + 32) = 0;
            *(v30 + 35) = 0;
            goto LABEL_26;
          }
        }

        ++v18;
        v20 += 12;
        v19 += 12;
        if (v18 != 3)
        {
          continue;
        }

        break;
      }

      v22 = *(this + 40) * *(v15 + 160);
      result = 1;
      *(this + 32) = 1;
      *(v15 + 32) = 1;
      if (v22 != 1.0)
      {
        v24 = (v15 + 16);
        v23 = *(v15 + 16);
        memset(v137, 0, sizeof(v137));
        CMMMatrix::CMMMatrix(v137, &CMMConvMatrix::CollapseToRGB(CMMConvInvMatrix *,CMMMemMgr &)::identityCMM3x4, v22);
        v27 = CMMBase::NewInternal(0xA8, a2, v25, v26);
        CMMConvRGBToRGBMatrix::CMMConvRGBToRGBMatrix(v27, v137, v15, v28, v29);
LABEL_26:
        v35 = &unk_1F0E0A5B0;
        goto LABEL_61;
      }

      goto LABEL_5;
    }

    v46 = *v16;
    if (!result)
    {
LABEL_5:
      v7 = *MEMORY[0x1E69E9840];
      return result;
    }

    v147 = 0;
    v146 = 0;
    if (*(this + 16) == 31595 && *(this + 19) == 0x8000 && *(this + 22) == 27030)
    {
      v49 = 0;
      *(&v137[6] + 1) = 0;
      v50 = *(v15 + 128);
      *(&v137[5] + 8) = *(v15 + 144);
      DWORD2(v137[6]) = *(v15 + 160);
      v51 = *(v15 + 96);
      *(&v137[3] + 8) = *(v15 + 112);
      *(&v137[4] + 8) = v50;
      v52 = *(v15 + 80);
      *(v137 + 8) = *(v15 + 64);
      *(&v137[1] + 8) = v52;
      *&v137[0] = &unk_1F0E071F8;
      v53 = v137 + 8;
      *(&v137[2] + 8) = v51;
      do
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v55 += qword_19A9B02A8[v54] * *&v53[4 * v54];
          ++v54;
        }

        while (v54 != 3);
        v56 = 0x1000000 - ((v55 + 0x8000) >> 16);
        if (v56 < 0)
        {
          v56 = -v56;
        }

        *(&v146 + v49++) = v56 >> 8;
        v53 += 12;
      }

      while (v49 != 3);
      if (v146 <= 1 && SHIDWORD(v146) <= 1 && v147 < 2)
      {
        v57 = this[3];
        if (v57)
        {
          v58 = *v57;
          v59 = **v57;
          if (v60)
          {
            v61 = v60;
            v62 = *v58;
            {
              v95 = *(v15 + 16);
              if (v95)
              {
                v96 = **v95;
                v138 = v97;
                if (v97)
                {
                  v98 = v97;
                  v99 = v97[2];
                  if (v99)
                  {
                    v100 = **v99;
                    *&v139 = v101;
                    if (v101)
                    {
                      v102 = v101;
                      v103 = v101[2];
                      if (v103)
                      {
                        v104 = **v103;
                        *(&v139 + 1) = v105;
                        if (v105)
                        {
                          if (!*(v98 + 18) && *(v102 + 18) == 1 && v105[18] == 2)
                          {
                            v106 = 0;
                            while (1)
                            {
                              v107 = (&v138)[v106];
                              if ((v107[20] & 1) != 0 || (v108 = v107[21]) == 0)
                              {
                                v109 = 0;
                              }

                              else
                              {
                                v109 = CMMTable::UInt8Data(v108[2], v108[3]);
                              }

                              v110 = CMMTable::UInt8Data(*(v61[8] + 16), *(v61[8] + 24));
                              v111 = !v109 || v110 == 0;
                              v112 = v111;
                              if (v110 != v109 && !v112)
                              {
                                break;
                              }

                              v118 = !v112;
                              if (v110 != v109 && v118 == 0)
                              {
                                goto LABEL_47;
                              }

LABEL_120:
                              if (++v106 == 3)
                              {
                                (*(*v61 + 72))(v61);
                                for (j = 0; j != 3; ++j)
                                {
                                  ((*(&v138)[j])[9])((&v138)[j]);
                                }

                                goto LABEL_47;
                              }
                            }

                            v113 = 4097;
                            while (1)
                            {
                              v115 = *v110++;
                              v114 = v115;
                              v116 = *v109++;
                              v117 = v114 - v116;
                              if (v117 < 0)
                              {
                                v117 = -v117;
                              }

                              if (v117 >= 2)
                              {
                                break;
                              }

                              if (!--v113)
                              {
                                goto LABEL_120;
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

LABEL_47:
        *(this + 32) = 1;
        v63 = *(v15 + 16);
        *(v15 + 32) = 1;
        v64 = CMMBase::NewInternal(0x30, a2, v47, v48);
        *(v64 + 2) = 1;
        v64[3] = v15;
        v64[5] = 0x3F80000000000000;
        *v64 = &unk_1F0E08098;
        *(v64 + 33) = 1;
        *(v15 + 16) = v64;
        v64[2] = v63;
        if (v63)
        {
          *(v63 + 24) = v64;
        }

        goto LABEL_63;
      }

      v24 = (v15 + 16);
      v23 = *(v15 + 16);
      *(this + 32) = 1;
      *(v15 + 32) = 1;
      v144 = 0u;
      v145 = 0u;
      DWORD2(v145) = 1065353216;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0;
      v138 = &unk_1F0E07238;
      CMMMatrix::InitializeRGBMatrix(&v138, (this + 7), (v15 + 56), 0.0);
      v80 = CMMBase::NewInternal(0xA8, a2, v78, v79);
      CMMConvGrayToRGBMatrix::CMMConvGrayToRGBMatrix(v80, &v138, v15);
      v35 = &unk_1F0E0A7C0;
      goto LABEL_61;
    }

    goto LABEL_4;
  }

  v36 = *v8;
  if (v37)
  {
    v38 = v37;
    v39 = *this;
    v40 = **this;
    {
      *(this + 32) = 1;
      v24 = v38 + 2;
      v23 = v38[2];
      *(v38 + 32) = 1;
      memset(&v137[5], 0, 32);
      DWORD2(v137[6]) = 1065353216;
      memset(v137 + 8, 0, 72);
      *&v137[0] = &unk_1F0E07278;
      CMMMatrix::InitializeGrayMatrix(v137, (this + 7), (v38 + 7));
      v30 = CMMBase::NewInternal(0xA8, a2, v41, v42);
      *(v30 + 2) = 1;
      v30[2] = 0;
      v30[3] = v38;
      v30[5] = 0x3F80000000000000;
      *(v30 + 33) = 0;
      *v30 = &unk_1F0E072B8;
      v30[7] = &unk_1F0E071F8;
      v43 = *(&v137[1] + 8);
      *(v30 + 4) = *(v137 + 8);
      *(v30 + 5) = v43;
      v44 = *(&v137[3] + 8);
      *(v30 + 6) = *(&v137[2] + 8);
      *(v30 + 7) = v44;
      v45 = *(&v137[5] + 8);
      *(v30 + 8) = *(&v137[4] + 8);
      *(v30 + 9) = v45;
      *(v30 + 40) = DWORD2(v137[6]);
      *(v30 + 24) = 256;
      *(v30 + 16) = 256;
      *(v30 + 35) = 0;
      v35 = &unk_1F0E0AA20;
    }

    else
    {
      v66 = *v39;
      if (!result)
      {
        goto LABEL_5;
      }

      v67 = this[3];
      if (v67)
      {
        v68 = *v67;
        v69 = **v67;
        if (v70)
        {
          v71 = v70;
          v72 = *v68;
          {
            v81 = v38[2];
            if (v81)
            {
              v82 = **v81;
              if (v83)
              {
                v84 = v83;
                if ((v83[160] & 1) != 0 || (v85 = *(v83 + 21)) == 0)
                {
                  v86 = 0;
                }

                else
                {
                  v86 = CMMTable::UInt8Data(*(v85 + 16), *(v85 + 24));
                }

                v87 = CMMTable::UInt8Data(*(v71[8] + 16), *(v71[8] + 24));
                if (v86)
                {
                  v88 = v87 == 0;
                }

                else
                {
                  v88 = 1;
                }

                v89 = v88;
                if (v87 == v86 || (v89 & 1) != 0)
                {
                  if (v87 == v86 || v89 != 1)
                  {
LABEL_87:
                    (*(*v71 + 72))(v71);
                    (*(*v84 + 72))(v84);
                  }
                }

                else
                {
                  v90 = 4097;
                  while (1)
                  {
                    v92 = *v87++;
                    v91 = v92;
                    v93 = *v86++;
                    v94 = v91 - v93;
                    if (v94 < 0)
                    {
                      v94 = -v94;
                    }

                    if (v94 >= 2)
                    {
                      break;
                    }

                    if (!--v90)
                    {
                      goto LABEL_87;
                    }
                  }
                }
              }
            }
          }
        }
      }

      *(this + 32) = 1;
      v24 = v38 + 2;
      v23 = v38[2];
      *(v38 + 32) = 1;
      memset(&v137[5], 0, 32);
      DWORD2(v137[6]) = 1065353216;
      memset(v137 + 8, 0, 72);
      *&v137[0] = &unk_1F0E07298;
      CMMMatrix::InitializeGrayMatrix(v137, (this + 7), (v38 + 7));
      v30 = CMMBase::NewInternal(0xA8, a2, v73, v74);
      *(v30 + 2) = 1;
      v30[2] = 0;
      v30[3] = v38;
      v30[5] = 0x3F80000000000000;
      *(v30 + 33) = 0;
      *v30 = &unk_1F0E072B8;
      v30[7] = &unk_1F0E071F8;
      v75 = *(&v137[1] + 8);
      *(v30 + 4) = *(v137 + 8);
      *(v30 + 5) = v75;
      v76 = *(&v137[3] + 8);
      *(v30 + 6) = *(&v137[2] + 8);
      *(v30 + 7) = v76;
      v77 = *(&v137[5] + 8);
      *(v30 + 8) = *(&v137[4] + 8);
      *(v30 + 9) = v77;
      *(v30 + 40) = DWORD2(v137[6]);
      *(v30 + 24) = 257;
      *(v30 + 16) = 256;
      *(v30 + 35) = 0;
      v35 = &unk_1F0E0AB78;
    }

LABEL_61:
    *v30 = v35;
    *v24 = v30;
    v30[2] = v23;
    if (v23)
    {
      *(v23 + 24) = v30;
    }

LABEL_63:
    result = 1;
    goto LABEL_5;
  }

  if (!v12)
  {
LABEL_4:
    result = 0;
    goto LABEL_5;
  }

  result = CMMMatrix::Is3x3((this + 7));
  if (!result)
  {
    goto LABEL_5;
  }

  result = CMMMatrix::Is3x3((v12 + 56));
  if (!result)
  {
    goto LABEL_5;
  }

  v65 = *MEMORY[0x1E69E9840];

  return CMMConvMatrix::Collapse3x3(this, v12, a2);
}