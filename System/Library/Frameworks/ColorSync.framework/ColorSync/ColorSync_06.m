BOOL CMMConvScaleFloatXYZ::IsNOP(CMMConvScaleFloatXYZ *this)
{
  if (*(this + 32))
  {
    return 1;
  }

  v2 = *(this + 12);
  return v2 >= 1.0 && v2 <= 1.0;
}

CMMConvNode *ConversionManager::AddHLGPCSToDev(uint64_t a1, unsigned int a2, CMMConvHLGOOTF **a3, CMMConvNode **a4, void *a5, int a6, float32x2_t *a7, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    if (*(a1 + 56))
    {
      v17 = *(a1 + 61);
      goto LABEL_19;
    }

LABEL_18:
    v17 = 0;
LABEL_19:
    if (*(a1 + 52))
    {
      v18 = 0.083333;
    }

    else
    {
      v18 = 1.0;
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMappingForBT2100");
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (Value == *MEMORY[0x1E695E4D0])
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 61);
  }

  if (*(a1 + 52))
  {
    v18 = 0.083333;
  }

  else
  {
    v18 = 1.0;
  }

  if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.HLGOETFOpticalScale") == 1)
  {
    v19 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGOETFOpticalScale");
    if (v19)
    {
      LODWORD(valuePtr[0]) = 0;
      v20 = CFNumberGetValue(v19, kCFNumberFloatType, valuePtr);
      v21 = *valuePtr;
      if (!v20)
      {
        v21 = 0.0;
      }

      if (v21 != 0.0)
      {
        v18 = v21;
      }
    }
  }

LABEL_22:
  if (ColorSyncOptionsSceneReferredToneMappingRequested(theDict))
  {
    goto LABEL_68;
  }

  v24 = !a2 && a6 == 2;
  v25 = !v24;
  if ((v25 | v17))
  {
    goto LABEL_68;
  }

  if (*(a1 + 59))
  {
    if (theDict)
    {
      v26 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGSceneMapping3DLut") == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = 0;
    }

    v39 = CMMBase::NewInternal(0x50, *(a1 + 8), v22, v23);
    v40 = *a4;
    *(v39 + 2) = 1;
    v39[2] = 0;
    v39[3] = v40;
    if (v40)
    {
      *(v40 + 2) = v39;
    }

    v39[5] = 0x3F80000000000000;
    *(v39 + 33) = 65537;
    *v39 = &unk_1F0E07B70;
    *(v39 + 48) = v26;
    *(v39 + 52) = 0x3E87AE143F8CCCCDLL;
    *(v39 + 60) = xmmword_19A96E430;
    *a4 = v39;
    if (!*a3)
    {
      *a3 = v39;
    }

    goto LABEL_68;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  if (*(a1 + 60))
  {
    v27 = 100.0;
  }

  else
  {
    v27 = 1000.0;
  }

  if (!theDict)
  {
    v41 = 5.0;
    if (*(a1 + 61))
    {
      v41 = 0.0;
    }

    *valuePtr = v41;
    v30 = 203.0;
LABEL_62:
    a7[3] = vmul_f32(a7[3], 0x3F0000003F000000);
    a7[4].f32[0] = a7[4].f32[0] * 0.5;
    a7[4].i32[1] = 1056964608;
    goto LABEL_63;
  }

  v28 = CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipBoostToHDR");
  v29 = *MEMORY[0x1E695E4D0];
  if (v28 == *MEMORY[0x1E695E4D0])
  {
    v30 = 100.0;
  }

  else
  {
    v30 = 203.0;
  }

  v31 = 5.0;
  if (*(a1 + 61))
  {
    v31 = 0.0;
  }

  *valuePtr = v31;
  if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.HLGSurroundLuminance") == 1)
  {
    v32 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGSurroundLuminance");
    CFNumberGetValue(v32, kCFNumberFloatType, valuePtr);
  }

  if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.HLGLuminanceCoefficients") == 1)
  {
    v33 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGLuminanceCoefficients");
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFArrayGetTypeID() && CFArrayGetCount(v34) >= 4)
      {
        v36 = 0;
        v37 = a7 + 3;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
          CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, v37);
          ++v36;
          v37 = (v37 + 4);
        }

        while (v36 != 4);
      }
    }

    goto LABEL_63;
  }

  if (CFDictionaryGetValue(theDict, @"com.apple.cmm.kColorSyncUseHLGReferenceLuminance") != v29)
  {
    goto LABEL_62;
  }

LABEL_63:
  v42 = CMMBase::NewInternal(0x58, *(a1 + 8), v22, v23);
  v43 = *(a1 + 61);
  CMMConvHLGOOTF::CMMConvHLGOOTF(v42, 1000.0, v27, 1.0 / v18, *valuePtr, v44, &a7[3], *a4);
  *v45 = &unk_1F0E07898;
  *(v45 + 84) = v18;
  *(v45 + 60) = a7[3].i32[0];
  *(v45 + 64) = a7[3].i32[1];
  *(v45 + 68) = a7[4].i32[0];
  *(v45 + 72) = a7[4].i32[1];
  v46 = (1.0 - (*(v45 + 48) + 1.0)) / (*(v45 + 48) + 1.0);
  if (v43 == 1)
  {
    v47 = (1.0 / v27) * powf(1.0 / v27, v46);
    *(v42 + 18) = 0;
  }

  else
  {
    v47 = (v30 / v27) * powf(v30 / v27, v46);
  }

  *(v42 + 19) = v46;
  *(v42 + 20) = v47 * v18;
  *a4 = v42;
  if (!*a3)
  {
    *a3 = v42;
  }

LABEL_68:
  v59 = 0;
  memset(valuePtr, 0, sizeof(valuePtr));
  LODWORD(valuePtr[0]) = 1;
  v57 = 0;
  InvertedTRC = CMMRGBCurves::MakeInvertedTRC(a5, valuePtr, *(a1 + 8), a2, &v57, v18);
  v49 = a5[a2 + 1];
  v52 = (*(*v49 + 40))(v49);
  if (theDict)
  {
    if (CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGOETFTable") == *MEMORY[0x1E695E4D0])
    {
      v52 = 65552;
      LODWORD(valuePtr[0]) = 0;
      if (!a2 && v18 != 1.0)
      {
        v55 = CMMBase::NewInternal(0x38, *(a1 + 8), v50, v51);
        v56 = *a4;
        *(v55 + 2) = 1;
        v55[2] = 0;
        v55[3] = v56;
        if (v56)
        {
          *(v56 + 2) = v55;
        }

        v55[5] = 0x3FFFFF0000000000;
        *v55 = &unk_1F0E0A168;
        *(v55 + 12) = 1.0 / v18;
        *(v55 + 36) = 0;
        *(v55 + 8) = 256;
        *a4 = v55;
        if (!*a3)
        {
          *a3 = v55;
        }
      }
    }
  }

  v53 = CMMBase::NewInternal(0xB0, *(a1 + 8), v50, v51);
  result = CMMConvInvertedTRC::CMMConvInvertedTRC(v53, a2, InvertedTRC, v52, v57, valuePtr, *a4, 3, 1);
  *result = &unk_1F0E070E0;
  *a4 = result;
  return result;
}

void CMMITUBT1886InvEOTF::CMMITUBT1886InvEOTF(CMMITUBT1886InvEOTF *this, int a2, float a3)
{
  *(this + 2) = a3;
  *this = &unk_1F0E09720;
  if (a2)
  {
    *(this + 2) = 0xD00000001;
    *(this + 7) = 1;
    *(this + 4) = 0;
    *(this + 24) = 1;
    *(this + 10) = 1054168405;
    *(this + 11) = a3;
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 6) = 0;
  }

  else
  {
    if (CMMInitializeSRGBGammaTable(void)::predicate != -1)
    {
      dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
    }

    v5 = *(CMMInvsRGBGammaFloatLutInfo + 16);
    v4 = *(CMMInvsRGBGammaFloatLutInfo + 32);
    v6 = *CMMInvsRGBGammaFloatLutInfo;
    *(this + 8) = *(CMMInvsRGBGammaFloatLutInfo + 48);
    *(this + 2) = v5;
    *(this + 3) = v4;
    *(this + 1) = v6;
  }
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvInvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

void CMMITUBT1886Base::MakeLut(int *a1, float a2, float a3)
{
  v4 = 0;
  v5 = a2;
  v6 = a3;
  v7 = ceil(a2);
  v8 = floor(a2);
  v9 = a1;
  do
  {
    v10 = vcvtd_n_f64_u32(v4, 0x18uLL) * v6;
    v11 = 0.0;
    if (v10 > 0.0 || v7 == v8)
    {
      v13 = pow(v10, v5);
      if (fabs(v13) == INFINITY || v13 >= 0.0 && (v11 = v13, v13 > 1.0))
      {
        v11 = 1.0;
      }
    }

    v14 = vcvtmd_s64_f64(v11 * 16777216.0 + 0.5);
    *v9 = v14;
    v15 = 0x1000000;
    if (v14 <= 0x1000000)
    {
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v15 = 0;
    }

    *v9 = v15;
LABEL_15:
    v4 += 4096;
    ++v9;
  }

  while (v4 != 16781312);
  v16 = a1[4096];
  v17 = a1[1] - *a1;
  if (v17 < 0)
  {
    v17 = *a1 - a1[1];
  }

  if (v17 < 0x1000)
  {
    a1[1] = *a1;
  }

  v18 = v16 - a1[4095];
  if (v18 < 0)
  {
    v18 = a1[4095] - v16;
  }

  if (v18 <= 0xFFF)
  {
    a1[4095] = v16;
  }
}

uint64_t ___ZL42CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLGPK14__CFDictionary_block_invoke()
{
  v1 = 1;
  result = ColorSyncDefaultsGetBoolean("CMMITUBT1886INVEOTF_USE_SPEC_GAMMA_FOR_HLG", &v1);
  if (result)
  {
    CMMITUBT1886InvEOTF_Use_Spec_Gamma_For_HLG(__CFDictionary const*)::enabled = v1;
  }

  return result;
}

uint64_t ConversionManager::AddTRCSequence(uint64_t a1, int a2, CMMMemMgr *a3, char *a4, __int128 *a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v16 = *a4;
  v17 = 0;
  if (a2)
  {
    v18 = a2 == 1;
    do
    {
      v19 = v18;
      if (v16)
      {
        v16 = *(v16 + 24);
        if (v16)
        {
          v17 = *(v16 + 16);
        }
      }

      v18 = 1;
    }

    while (!v19);
  }

  v20 = CMMBase::NewInternal(0xA8, *(a1 + 8), a3, a4);
  v21 = CMMConvTRC::CMMConvTRC(v20, a2, *a6, 0, a5, v16, 3, 1, 1.0, 1, 0);
  *(v21 + 16) = v17;
  if (v17)
  {
    *(v17 + 24) = v21;
  }

  v24 = *a3;
  if (!*a3)
  {
    *a3 = v21;
    v24 = v21;
  }

  do
  {
    *a4 = v24;
    v24 = *(v24 + 16);
  }

  while (v24);
  v25 = CMMBase::NewInternal(0xA8, *(a1 + 8), v22, v23);
  result = CMMConvTRC::CMMConvTRC(v25, a2, *a8, 0, a7, *a4, 3, 1, 1.0, 1, 0);
  *a4 = result;
  return result;
}

float default_PQInvEOTFOpticalScale(const __CFDictionary *a1, int a2)
{
  v6 = !a1 || (Value = CFDictionaryGetValue(a1, @"com.apple.cmm.SkipPQEETF"), v5 = *MEMORY[0x1E695E4D0], Value == *MEMORY[0x1E695E4D0]) || CFDictionaryGetValue(a1, @"com.apple.cmm.SkipToneMappingForBT2100") == v5 || CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMappingForBT2100") != v5;
  result = 0.0001;
  if ((a2 & v6) != 0)
  {
    return 0.01;
  }

  return result;
}

float custom_PQInvEOTFOpticalScale(const __CFDictionary *a1, float a2)
{
  v2 = 0.0;
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, @"com.apple.cmm.PQInvEOTFOpticalScale") == 1)
    {
      Value = CFDictionaryGetValue(a1, @"com.apple.cmm.PQInvEOTFOpticalScale");
      if (Value)
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
        {
          if (valuePtr != 0.0 && valuePtr != a2)
          {
            return valuePtr;
          }
        }
      }
    }
  }

  return v2;
}

void ConversionManager::AddHLGDevToPCS(uint64_t a1, unsigned int a2, uint64_t a3, float32x2_t *a4, const __CFDictionary *a5)
{
  v10 = ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a5);
  v11 = MEMORY[0x1E695E4D0];
  if (a5 && CFDictionaryGetValue(a5, @"com.apple.cmm.ApplyToneMappingForBT2100") == *v11)
  {
    v12 = *(a1 + 61);
  }

  else
  {
    v12 = 0;
  }

  HLGInvOETFOpticalScale = 1.0;
  if ((v10 & 1) == 0)
  {
    HLGInvOETFOpticalScale = ConversionManager::GetHLGInvOETFOpticalScale(a1, a5);
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  LODWORD(v20[0]) = 1;
  TRC = CMMRGBCurves::MakeTRC(a3, HLGInvOETFOpticalScale, v20, *(a1 + 8), a2);
  v17 = CMMBase::NewInternal(0xA8, *(a1 + 8), v15, v16);
  v18 = CMMConvTRC::CMMConvTRC(v17, a2, TRC, 0, v20, *(a1 + 24), 3, 1, 1.0, 1, 1);
  *v18 = &unk_1F0E06D98;
  v18[41] = HLGInvOETFOpticalScale;
  CMMConvTRC::SetInputClamp(v18);
  (*(*v17 + 48))(v17);
  *(a1 + 24) = v17;
  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a1 + 61);
    if (v19)
    {
      v19 = *(a1 + 51);
    }
  }

  if (a2 == 2 && (v19 & 1) == 0)
  {
    ConversionManager::AddHLGOOTF(a1, a4, a5);
  }

  if (a5 && CFDictionaryGetValue(a5, @"com.apple.cmm.UseHLGOOTFForCoreVideo") != *v11)
  {
    CFDictionaryGetValue(a5, @"com.apple.cmm.Use100nitsHLGOOTF");
  }

  if (*(a1 + 51) == 1)
  {
    *(a1 + 61);
  }
}

void ConversionManager::AddHLGOOTF(uint64_t a1, float32x2_t *a2, const __CFDictionary *a3)
{
  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v42 = 0.0;
  if (ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(a3))
  {
    v8 = 1.0;
    v9 = 1000.0;
    HLGInvOETFOpticalScale = 1.0;
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E695E4D0];
  if (a3)
  {
    if (CFDictionaryGetValue(a3, @"com.apple.cmm.UseHLGOOTFForCoreVideo") == *v14)
    {
      v16 = 1;
    }

    else
    {
      v15 = *v14;
      v16 = CFDictionaryGetValue(a3, @"com.apple.cmm.Use100nitsHLGOOTF") == v15;
    }

    if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGSurroundLuminance") == 1)
    {
LABEL_13:
      v17 = !v16;
      if (a3)
      {
        goto LABEL_14;
      }

LABEL_17:
      v21 = 0;
      v20 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 64) == 203.0)
  {
    goto LABEL_13;
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  Value = CFDictionaryGetValue(a3, @"com.apple.cmm.ApplyToneMappingForBT2100");
  v19 = *v14;
  v20 = Value != *v14;
  v21 = CFDictionaryGetValue(a3, @"com.apple.cmm.SkipHLGOOTF") == v19 || CFDictionaryGetValue(a3, @"com.apple.cmm.SkipToneMappingForBT2100") == v19;
LABEL_19:
  v22 = *(a1 + 47);
  if (v22)
  {
    v23 = 1000.0;
    v9 = 1000.0;
    if (a3)
    {
LABEL_21:
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.TargetDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v24 = CFDictionaryGetValue(a3, @"com.apple.cmm.TargetDisplayWhite");
        if (v24)
        {
          v25 = CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
          v26 = valuePtr;
          if (!v25)
          {
            v26 = 0.0;
          }
        }

        else
        {
          v26 = 0.0;
        }

        if (v26 != 0.0)
        {
          v9 = v26;
        }
      }

      HLGInvOETFOpticalScale = ConversionManager::GetHLGInvOETFOpticalScale(a1, a3);
      v29 = 1.0;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGOOTFGainScale") == 1)
      {
        v40 = 0.0;
        v30 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGOOTFGainScale");
        if (v30)
        {
          if (CFNumberGetValue(v30, kCFNumberFloatType, &v40) == 1)
          {
            v29 = v40;
          }

          else
          {
            v29 = 1.0;
          }
        }
      }

      v31 = 0.0;
      if ((v17 | v16))
      {
        v31 = 5.0;
      }

      v42 = v31;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGSurroundLuminance") == 1)
      {
        v32 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGSurroundLuminance");
        CFNumberGetValue(v32, kCFNumberFloatType, &v42);
      }

      if (*(a1 + 47))
      {
        v33 = v9;
      }

      else
      {
        v33 = v29;
      }

      v8 = v33 / HLGInvOETFOpticalScale;
      if (CFDictionaryContainsKey(a3, @"com.apple.cmm.HLGLuminanceCoefficients") == 1)
      {
        v34 = CFDictionaryGetValue(a3, @"com.apple.cmm.HLGLuminanceCoefficients");
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFArrayGetTypeID() && CFArrayGetCount(v35) >= 4)
          {
            v37 = 0;
            v38 = a2 + 3;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v35, v37);
              CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, v38);
              ++v37;
              v38 = (v38 + 4);
            }

            while (v37 != 4);
          }
        }

        goto LABEL_5;
      }

      if (*(a1 + 47) || CFDictionaryGetValue(a3, @"com.apple.cmm.kColorSyncUseHLGReferenceLuminance") == *v14)
      {
        goto LABEL_5;
      }

LABEL_65:
      a2[3] = vmul_f32(a2[3], 0x3F0000003F000000);
      a2[4].f32[0] = a2[4].f32[0] * 0.5;
      a2[4].i32[1] = 1056964608;
      goto LABEL_5;
    }
  }

  else
  {
    v23 = 1.0;
    v27 = 100.0;
    if (v17)
    {
      v27 = 203.0;
    }

    if (v21)
    {
      v27 = 1000.0;
    }

    if (*(a1 + 51) & v20)
    {
      v9 = 1000.0;
    }

    else
    {
      v9 = v27;
    }

    if (a3)
    {
      goto LABEL_21;
    }
  }

  if ((*(a1 + 51) | v22))
  {
    HLGInvOETFOpticalScale = 12.0;
  }

  else
  {
    HLGInvOETFOpticalScale = 1.0;
  }

  v28 = 0.0;
  if ((v17 | v16))
  {
    v28 = 5.0;
  }

  v42 = v28;
  v8 = v23 / HLGInvOETFOpticalScale;
  if (!v22)
  {
    goto LABEL_65;
  }

LABEL_5:
  v11 = CMMBase::NewInternal(0x50, *(a1 + 8), v6, v7);
  CMMConvHLGOOTF::CMMConvHLGOOTF(v11, v9, v8, HLGInvOETFOpticalScale, v42, v12, &a2[3], *(a1 + 24));
  *(a1 + 24) = v13;
}

void *CMMITUBT1886EOTF::MakeTRC(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v7 = CMMBase::NewInternal(0x28, a3, a3, a4);
  *v7 = &unk_1F0E09180;
  v7[1] = 1;
  v7[3] = 0;
  v7[4] = 21512;
  v10 = CMMBase::NewInternal(0x5408, a3, v8, v9);
  v7[2] = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  v13 = CMMTable::UInt8Data(v10, v7[3]);
  CMMITUBT1886Base::MakeLut(v13, v11, v12);
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  *(a2 + 48) = *(a1 + 64);
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *a2 = v14;
  v17 = CMMTable::UInt8Data(v7[2], v7[3]);
  MakeLookups(v17);
  return v7;
}

void ConversionManager::AddPQEETFToneMapping(void *a1, float *a2, CFDictionaryRef theDict, const char *a4, float a5)
{
  if (a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEETF3DLut");
      v10 = Value == *MEMORY[0x1E695E4D0];
      if (Value == *MEMORY[0x1E695E4D0])
      {
        a5 = 1.0;
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQMasteringDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v11 = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQMasteringDisplayWhite");
        if (v11)
        {
          if (CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            *a2 = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.PQMasteringDisplayBlack") == 1)
      {
        valuePtr = 0.0;
        v12 = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQMasteringDisplayBlack");
        if (v12)
        {
          if (CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[1] = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.TargetDisplayWhite") == 1)
      {
        valuePtr = 0.0;
        v13 = CFDictionaryGetValue(theDict, @"com.apple.cmm.TargetDisplayWhite");
        if (v13)
        {
          if (CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[2] = valuePtr;
          }
        }
      }

      if (CFDictionaryContainsKey(theDict, @"com.apple.cmm.TargetDisplayBlack") == 1)
      {
        valuePtr = 0.0;
        v14 = CFDictionaryGetValue(theDict, @"com.apple.cmm.TargetDisplayBlack");
        if (v14)
        {
          if (CFNumberGetValue(v14, kCFNumberFloatType, &valuePtr) && valuePtr != 0.0)
          {
            a2[1] = valuePtr;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (*a2 > a2[2] || a2[1] < a2[3])
    {
      v15 = a1[1];
      if (v10)
      {
        v16 = CMMBase::NewInternal(0xC0, v15, theDict, a4);
        v17 = v16;
        v18 = *a2;
        v19 = a2[1];
        v20 = a2[2];
        v21 = a2[3];
        v22 = a1[1];
        v23 = a1[3];
        *(v16 + 2) = 1;
        v16[2] = 0;
        v16[3] = v23;
        if (v23)
        {
          *(v23 + 16) = v16;
        }

        v16[5] = 0x3F80000000000000;
        *(v16 + 33) = 0x10000;
        *(v16 + 7) = xmmword_19A96E440;
        v16[9] = 3;
        *v16 = &unk_1F0E0B990;
        CMMThrowExceptionOnError(0);
        v24 = *(v17 + 18);
        v25 = *(v17 + 14);
        v26 = v25 * v24;
        *(v17 + 24) = v24;
        *(v17 + 25) = v25 * v24;
        v27 = v25 * v24 * v25;
        *(v17 + 26) = v27;
        *(v17 + 27) = v26 + v24;
        v28 = v27 + v24;
        v29 = v27 + v26;
        *(v17 + 28) = v28;
        *(v17 + 29) = v29;
        *(v17 + 30) = v29 + v24;
        *v17 = &unk_1F0E0B888;
        CMMConvPQEETFBase::CMMConvPQEETFBase((v17 + 16), v18, v19, v20, v21, a5, a2 + 6, 1);
        *v17 = &unk_1F0E082A8;
        v17[16] = &unk_1F0E083B0;
        LODWORD(valuePtr) = 32;
        _3DLUT = CMMConvPQEETFBase::create_3DLUT(v30, 0, 0, &valuePtr, v31, v32, v33, v34);
        if (_3DLUT)
        {
          v38 = CMMBase::NewInternal(0x28, v22, v35, v36);
          BytePtr = CFDataGetBytePtr(_3DLUT);
          Length = CFDataGetLength(_3DLUT);
          v38[2] = 0;
          v38[3] = BytePtr;
          *v38 = &unk_1F0E09180;
          v38[1] = 0;
          v38[4] = Length;
          v17[6] = CFRetain(_3DLUT);
          v17[10] = v38;
          v17[11] = CMMTable::UInt8Data(v38[2], v38[3]);
          CFRelease(_3DLUT);
        }
      }

      else
      {
        v41 = CMMBase::NewInternal(0x70, v15, theDict, a4);
        v42 = a1[3];
        CMMConvPQEETFBase::CMMConvPQEETFBase(v41, *a2, a2[1], a2[2], a2[3], a5, a2 + 6, 0);
        *(v43 + 72) = 1;
        v17 = (v43 + 64);
        *(v43 + 80) = 0;
        *(v43 + 88) = v42;
        if (v42)
        {
          *(v42 + 16) = v17;
        }

        *(v43 + 104) = 0x3F80000000000000;
        *(v43 + 97) = 0;
        *v43 = &unk_1F0E079C8;
        *(v43 + 64) = &unk_1F0E07A68;
      }

      a1[3] = v17;
      if (!a1[2])
      {
        a1[2] = v17;
      }
    }
  }
}

void ConversionManager::AddExtendedRangeReferenceWhiteToneMapping(ConversionManager *this, const __CFDictionary *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  ReferenceWhiteToneMappingOptions = ColorSyncOptionsGetReferenceWhiteToneMappingOptions(a2);
  v5 = 8.0;
  v6 = 0.0;
  v7 = 1.0;
  v8 = 0.9;
  v9 = 0.35;
  v10 = 2.6667;
  if (ReferenceWhiteToneMappingOptions && (v11 = ReferenceWhiteToneMappingOptions, v12 = CFGetTypeID(ReferenceWhiteToneMappingOptions), v12 == CFDictionaryGetTypeID()))
  {
    v38 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
    v37 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
    v7 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
    v39 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
    v10 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
    v36 = float_from_dictionary_with_default(v11, @"com.apple.cmm.ContentEDRStrength", 1.0);
    v13 = int32_from_dictionary_with_default(v11, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
    v6 = float_from_dictionary_with_default(v11, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
    v9 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
    v14 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
    v15 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
    v8 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
    v5 = float_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMStopAnchor", 8.0);
    v16 = int32_from_dictionary_with_default(v11, @"com.apple.cmm.RWTMVersion", 2);
    v17 = primaries_from_dictionary(v11);
  }

  else
  {
    v39 = 0.5;
    v13 = 0;
    v16 = 2;
    v17 = 9;
    v37 = 203.0;
    v38 = 1000.0;
    v36 = 1.0;
    v14 = 2.6667;
    v15 = 0.35;
  }

  v18 = *(this + 51);
  memset(v45, 0, sizeof(v45));
  ConversionManager::ColorantsForPrimaries(this, v45, v17, v4);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  CMMInvMatrix::CMMInvMatrix(v43, v45, dword_19A9B0638);
  v21 = CMMBase::NewInternal(0x160, *(this + 1), v19, v20);
  CMMConvInvMatrix::CMMConvInvMatrix(v21, v43, *(this + 3));
  *v22 = &unk_1F0E0BA98;
  *(this + 3) = v22;
  if (!*(this + 2))
  {
    *(this + 2) = v22;
  }

  if (!v18)
  {
    v7 = 1.0;
  }

  v25 = (this + 8);
  v26 = CMMBase::NewInternal(0xA8, *(this + 1), v23, v24);
  v28 = *(this + 3);
  v27 = (this + 24);
  CMMConvRWToneMapping::CMMConvRWToneMapping(v26, 1000.0, v38, v37, v7, v39, v10, v36, v13, v6, v16, v28, v29, v30, v31, v32, v9, v14, v15, v8, v5);
  *v27 = v26;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = &unk_1F0E071F8;
  CMMMatrix::InitializeMatrix(&v40, v41, v45, 1.0);
  CMMMatrix::MakeMatrixConv(&v40, *v25, v26, v33);
  *v27 = v34;
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t primaries_from_dictionary(const __CFDictionary *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(a1, @"com.apple.cmm.RWTMPrimaries")) != 0 && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v4, kCFNumberSInt8Type, &valuePtr) == 1))
  {
    v6 = valuePtr;
    if (valuePtr > 0xCu || ((1 << valuePtr) & 0x1202) == 0)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }
  }

  else
  {
    return 9;
  }

  return v6;
}

void ConversionManager::ColorantsForPrimaries(uint64_t a1, void *a2, CMMMemMgr *a3, const char *a4)
{
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      v26 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
      if (ColorSyncProfileGetDCIP3RedPrimary_predicate != -1)
      {
        v39 = v26;
        dispatch_once(&ColorSyncProfileGetDCIP3RedPrimary_predicate, &__block_literal_global_340);
        v26 = v39;
      }

      *(v26 + 2) = 1918392666;
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = 20;
      v26[5] = &ColorSyncProfileGetDCIP3RedPrimary_rXYZ;
      *(v26 + 24) = 0;
      *v26 = &unk_1F0E09148;
      *a2 = v26;
      v29 = CMMBase::NewInternal(0x38, *(a1 + 8), v27, v28);
      if (ColorSyncProfileGetDCIP3GreenPrimary_predicate != -1)
      {
        v40 = v29;
        dispatch_once(&ColorSyncProfileGetDCIP3GreenPrimary_predicate, &__block_literal_global_343);
        v29 = v40;
      }

      *(v29 + 2) = 1733843290;
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = 20;
      v29[5] = &ColorSyncProfileGetDCIP3GreenPrimary_gXYZ;
      *(v29 + 24) = 0;
      *v29 = &unk_1F0E09148;
      a2[1] = v29;
      v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v30, v31);
      if (ColorSyncProfileGetDCIP3BluePrimary_predicate[0] != -1)
      {
        dispatch_once(ColorSyncProfileGetDCIP3BluePrimary_predicate, &__block_literal_global_346);
      }

      v13 = &ColorSyncProfileGetDCIP3BluePrimary_bXYZ;
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_35;
      }

      v14 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
      if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
      {
        v35 = v14;
        dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
        v14 = v35;
      }

      *(v14 + 2) = 1918392666;
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = 20;
      v14[5] = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
      *(v14 + 24) = 0;
      *v14 = &unk_1F0E09148;
      *a2 = v14;
      v17 = CMMBase::NewInternal(0x38, *(a1 + 8), v15, v16);
      if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
      {
        v36 = v17;
        dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
        v17 = v36;
      }

      *(v17 + 2) = 1733843290;
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = 20;
      v17[5] = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
      *(v17 + 24) = 0;
      *v17 = &unk_1F0E09148;
      a2[1] = v17;
      v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v18, v19);
      if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
      }

      v13 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 9)
      {
        v6 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
        if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
        {
          v33 = v6;
          dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          v6 = v33;
        }

        *(v6 + 2) = 1918392666;
        v6[2] = 0;
        v6[3] = 0;
        v6[4] = 20;
        v6[5] = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
        *(v6 + 24) = 0;
        *v6 = &unk_1F0E09148;
        *a2 = v6;
        v9 = CMMBase::NewInternal(0x38, *(a1 + 8), v7, v8);
        if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
        {
          v34 = v9;
          dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          v9 = v34;
        }

        *(v9 + 2) = 1733843290;
        v9[2] = 0;
        v9[3] = 0;
        v9[4] = 20;
        v9[5] = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
        *(v9 + 24) = 0;
        *v9 = &unk_1F0E09148;
        a2[1] = v9;
        v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v10, v11);
        if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
        {
          dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
        }

        v13 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
        goto LABEL_34;
      }

LABEL_35:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }

    v20 = CMMBase::NewInternal(0x38, *(a1 + 8), a3, a4);
    if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
    {
      v37 = v20;
      dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
      v20 = v37;
    }

    *(v20 + 2) = 1918392666;
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 20;
    v20[5] = &ColorSyncProfileGetBT709RedPrimary_rXYZ;
    *(v20 + 24) = 0;
    *v20 = &unk_1F0E09148;
    *a2 = v20;
    v23 = CMMBase::NewInternal(0x38, *(a1 + 8), v21, v22);
    if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
    {
      v38 = v23;
      dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
      v23 = v38;
    }

    *(v23 + 2) = 1733843290;
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 20;
    v23[5] = &ColorSyncProfileGetBT709GreenPrimary_gXYZ;
    *(v23 + 24) = 0;
    *v23 = &unk_1F0E09148;
    a2[1] = v23;
    v12 = CMMBase::NewInternal(0x38, *(a1 + 8), v24, v25);
    if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
    {
      dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
    }

    v13 = &ColorSyncProfileGetBT709BluePrimary_bXYZ;
  }

LABEL_34:
  *(v12 + 2) = 1649957210;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = 20;
  v12[5] = v13;
  *(v12 + 24) = 0;
  *v12 = &unk_1F0E09148;
  a2[2] = v12;
}

void *CMMTable::CreateFlexTRCLookup(CMMTable *this, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, CMMTable *a5, unint64_t a6, CMMMemMgr *a7)
{
  if (CFArrayGetCount(this) < 2)
  {
    return 0;
  }

  v13 = CMMBase::NewInternal(0x28, a4, v11, v12);
  *v13 = &unk_1F0E09180;
  v13[1] = 1;
  v13[3] = 0;
  v13[4] = 4096;
  v16 = CMMBase::NewInternal(0x1000, a4, v14, v15);
  v13[2] = v16;
  CMMTable::MutableFloatData(v16);
  v17 = malloc_type_calloc(1uLL, 0x1000uLL, 0x100004052888210uLL);
  v18 = malloc_type_calloc(1uLL, 0x1000uLL, 0x100004052888210uLL);
  v42 = 1.0;
  valuePtr = 1.0;
  v19 = 1.0;
  Compute_FlexGTC(1.0, v17, this, a2, v20);
  Value = CFDictionaryGetValue(a3, @"com.apple.cmm.FlexGTCTargetHeadroom");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
  }

  v22 = CFDictionaryGetValue(a2, kColorSyncGainMapBaselineHeadroom);
  if (v22)
  {
    CFNumberGetValue(v22, kCFNumberFloatType, &v42);
    v19 = exp2f(v42);
  }

  v23 = 0;
  if (valuePtr <= v19)
  {
    v24 = valuePtr;
  }

  else
  {
    v24 = v19;
  }

  if (valuePtr >= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  do
  {
    v26 = (v23 / 1023.0) * 49.261;
    if (((v26 * 1023.0) / v19) <= 1023.0)
    {
      v27 = (v26 * 1023.0) / v19;
    }

    else
    {
      v27 = *"";
    }

    v28 = v27;
    if (v27 + 1 < 0x3FF)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 1023;
    }

    v30 = 0.0;
    if (v23)
    {
      v30 = *(v16 - 1) + 0.000015259;
    }

    v31 = (v17[v28] + ((v17[v29] - v17[v28]) * (v27 - v27))) * v26;
    if (v31 <= v25)
    {
      v32 = v31;
    }

    else
    {
      v32 = v25;
    }

    if (v31 >= v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v30;
    }

    *v16++ = v33;
    if ((v33 * 1023.0) <= 1023.0)
    {
      v34 = v33 * 1023.0;
    }

    else
    {
      v34 = *"";
    }

    if ((v33 * 1023.0) >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = v35;
    v37 = v33 / v19;
    v38 = v35 - v35;
    v39 = v17[v36];
    if (v36 + 1 < 0x3FF)
    {
      v40 = v36 + 1;
    }

    else
    {
      v40 = 1023;
    }

    v18[v23++] = v37 / (v39 + ((v17[v40] - v39) * v38));
  }

  while (v23 != 1024);
  free(v17);
  return v13;
}

uint64_t ConversionManager::AddFlexLuminanceToneMapping(uint64_t result, const void *a2)
{
  v2 = *(result + 80);
  if (v2)
  {
    v3 = result;
    if (*(result + 89) == 16)
    {
      result = ColorSyncOptionsGetFlexLumaScalingOptions(0, a2);
      if (result)
      {
        v6 = result;
        v7 = CMMBase::NewInternal(0x58, *(v3 + 8), v4, v5);
        v8 = v7;
        v9 = *(v3 + 8);
        v10 = *(v3 + 24);
        *(v7 + 2) = 1;
        v7[2] = 0;
        v7[3] = v10;
        if (v10)
        {
          *(v10 + 16) = v7;
        }

        v7[5] = 0x3F80000000000000;
        *(v7 + 33) = 16777217;
        *v7 = &unk_1F0E07E88;
        *(v7 + 13) = fmaxf(float_from_dictionary_with_default(v6, @"com.apple.cmm.FlexGTCTargetHeadroom", 1.0), 1.0);
        Value = CFDictionaryGetValue(v2, kColorSyncMonoGainMapParams);
        v12 = CFDictionaryGetValue(Value, kColorSyncGainMapBaselineHeadroom);
        v13 = (v8 + 6);
        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberFloatType, v8 + 6);
          v14 = exp2f(*v13);
        }

        else
        {
          v14 = *v13;
        }

        *(v8 + 12) = fmaxf(v14, 1.0);
        v15 = float_from_dictionary_with_default(v6, @"com.apple.cmm.ContentEDRStrength", 1.0);
        v16 = int32_from_dictionary_with_default(v6, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
        v17 = 0.0;
        v18 = float_from_dictionary_with_default(v6, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
        if (v15 >= 0.0)
        {
          v19 = v15;
        }

        else
        {
          v19 = 0.0;
        }

        if (v19 <= 1.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1.0;
        }

        if (v18 < 0.0)
        {
          v18 = 0.0;
        }

        if (v18 > 1.0)
        {
          v18 = 1.0;
        }

        if (v18 >= (1.0 - v20))
        {
          v21 = 1.0 - v20;
        }

        else
        {
          v21 = v18;
        }

        v23 = *(v8 + 12);
        v22 = *(v8 + 13);
        if (v22 <= 2.0)
        {
          v24 = *(v8 + 13);
        }

        else
        {
          v24 = 2.0;
        }

        v25 = v16 / 203.0;
        v26 = fmaxf(v25, 0.0);
        if (v23 <= 1.6)
        {
          v27 = *(v8 + 12);
        }

        else
        {
          v27 = 1.6;
        }

        if (v26 >= v27)
        {
          v17 = 1.6;
          if (v23 <= 1.6)
          {
            v17 = *(v8 + 12);
          }
        }

        else if (v25 > 0.0)
        {
          v17 = v16 / 203.0;
        }

        v28 = 1.0;
        v29 = 1.0;
        if (v16)
        {
          v30 = 0.6398 / powf(v17, 0.175);
          v31 = (v23 + -1.0) / 1.6667;
          v32 = v31 <= 0.0;
          v33 = v31 < 1.0 || v31 <= 0.0;
          if (v31 >= 1.0)
          {
            v32 = 1;
          }

          v34 = 0.0;
          if (!v33)
          {
            v34 = 1.0;
          }

          if (v32)
          {
            v31 = v34;
          }

          v35 = v30 + ((1.0 - v30) * (1.0 - v31));
          if (v35 <= (2.0 / v23))
          {
            v35 = 2.0 / v23;
          }

          v29 = fminf(v35, 1.0);
        }

        v36 = (v20 + v21) / 1.4142;
        if (fabsf(v36) > 0.0000001)
        {
          v28 = (v36 + ((v21 - v20) / 1.4142)) / (v36 + v36);
        }

        v37 = v36 * 1.4142;
        if (v23 >= v22)
        {
          v38 = v22;
        }

        else
        {
          v38 = v23;
        }

        v39 = log2f(v38);
        v40 = exp2f(v37 * v39);
        v41 = v23 * v29;
        if ((v23 * v29) >= v24)
        {
          v41 = v24;
        }

        if (v41 >= v22)
        {
          v41 = v22;
        }

        v42 = log2f(v41);
        v49 = v40 + ((exp2f(v37 * v42) - v40) * v28);
        if (v49 >= v22)
        {
          v50 = v22;
        }

        else
        {
          v50 = v49;
        }

        v51 = (v29 + -1.0) * v37 + 1.0;
        v52 = ((v51 + -1.0) * v28) + 1.0;
        *(v8 + 13) = v50 / v52;
        *(v8 + 14) = fminf(v52, 1.0);
        if (do_debug_log(void)::predicate[0] != -1)
        {
          dispatch_once(do_debug_log(void)::predicate, &__block_literal_global_943);
        }

        v73 = *(v8 + 12);
        v72 = *(v8 + 13);
        v71 = v20;
        ColorSyncLog(do_debug_log(void)::mode, "Solarium: CDR AGC Debug: edr_strength=%f, cdr_strength=%f, content_average_light_level=%f, target_headroom=%f, source_headroom=%f, desired_scale=%f, desired_target_headroom=%f, final_hr=%f, final_scaling=%f, combined headroom=%f", v43, v44, v45, v46, v47, v48, SLOBYTE(v71));
        v53 = *(v8 + 13);
        if (v53 >= *(v8 + 12))
        {
          v53 = *(v8 + 12);
        }

        v54 = fmaxf(v53, 1.0);
        *(v8 + 13) = v54;
        if (CFDictionaryContainsKey(v2, kColorSyncMonoFlexGTCNodeTable) == 1 && CFDictionaryContainsKey(v2, kColorSyncMonoGainMapParams) == 1 && (v55 = CFDictionaryGetValue(v2, kColorSyncMonoFlexGTCNodeTable), v56 = CFDictionaryGetValue(v2, kColorSyncMonoGainMapParams), CFArrayGetCount(v55) >= 2))
        {
          v59 = CMMBase::NewInternal(0x28, v9, v57, v58);
          *v59 = &unk_1F0E09180;
          v59[1] = 1;
          v59[3] = 0;
          v59[4] = 4096;
          v62 = CMMBase::NewInternal(0x1000, v9, v60, v61);
          v59[2] = v62;
          v63 = CMMTable::MutableFloatData(v62);
          Compute_FlexGTC(v54, v63, v55, v56, v64);
        }

        else
        {
          v59 = 0;
        }

        v8[10] = v59;
        if (v59)
        {
          v65 = 0;
        }

        else
        {
          v65 = 4294967246;
        }

        result = CMMThrowExceptionOnError(v65);
        v66 = *(v8 + 14);
        *(v8 + 13) = v66 * *(v8 + 13);
        v67 = (v8 + 6);
        v68 = vld1_dup_f32(v67);
        *v69.i8 = vdiv_f32(0x41C50B5A41035CE7, v68);
        v70 = vzip1q_s32(v69, v69);
        v70.i32[2] = v69.i32[0];
        *(v8 + 60) = v70;
        *(v8 + 19) = v66 * 49.261;
        *(v3 + 24) = v8;
      }
    }
  }

  return result;
}

float ConversionManager::GetHLGInvOETFOpticalScale(ConversionManager *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipHLGOOTF");
    v5 = *MEMORY[0x1E695E4D0];
    v6 = Value == *MEMORY[0x1E695E4D0] || CFDictionaryGetValue(theDict, @"com.apple.cmm.SkipToneMappingForBT2100") == v5;
    v8 = CFDictionaryGetValue(theDict, @"com.apple.cmm.ApplyToneMappingForBT2100");
    v9 = *(this + 51) != 1 || v8 == v5;
    if (!v9 || v6)
    {
      valuePtr = 0.0;
      v10 = CFDictionaryContainsKey(theDict, @"com.apple.cmm.HLGInvOETFOpticalScale");
      result = 0.0;
      if (v10 == 1)
      {
        v11 = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGInvOETFOpticalScale");
        v12 = CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr);
        result = valuePtr;
        if (!v12)
        {
          result = 0.0;
        }
      }

      goto LABEL_16;
    }
  }

  else if (*(this + 51))
  {
    result = 0.0;
LABEL_16:
    if (result == 0.0)
    {
      return 12.0;
    }

    return result;
  }

  result = 1.0;
  if (*(this + 47))
  {
    return 12.0;
  }

  return result;
}

uint64_t ___ZL34disable_ITUBT1886Inv_on_HLG_to_SDRv_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncDisableInvBT1886inHLG2SDR", &v1);
  if (result)
  {
    disable_ITUBT1886Inv_on_HLG_to_SDR(void)::disabled = v1;
  }

  return result;
}

uint64_t ___ZL38display_referred_mapping_on_SDR_to_HLGv_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncDisplayReferredMappingInSDR2HLG", &v1);
  if (result)
  {
    display_referred_mapping_on_SDR_to_HLG(void)::enabled = v1;
  }

  return result;
}

uint64_t ___ZL26get_useITUBT1886ForEngammaPK14__CFDictionary_block_invoke()
{
  result = ColorSyncDefaultsGetBoolean("USEBT1886FORCOREVIDEOGAMMA", &get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs);
  if ((result & 1) == 0)
  {
    get_useITUBT1886ForEngamma(__CFDictionary const*)::enable_from_prefs = 0;
  }

  return result;
}

uint64_t ___ZL26get_useITUBT1886ForDegammaPK14__CFDictionary_block_invoke()
{
  result = ColorSyncDefaultsGetBoolean("USEBT1886FORCOREVIDEOGAMMA", &get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs);
  if ((result & 1) == 0)
  {
    get_useITUBT1886ForDegamma(__CFDictionary const*)::enable_from_prefs = 0;
  }

  return result;
}

void CMMMonoOutputProfile::~CMMMonoOutputProfile(CMMMonoOutputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMLutDisplayProfile::~CMMLutDisplayProfile(CMMLutDisplayProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMLutInputProfile::~CMMLutInputProfile(CMMLutInputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMMonoInputProfile::~CMMMonoInputProfile(CMMMonoInputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void TVector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::~TVector(uint64_t a1)
{
  v2 = (a1 + 8);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);

  CMMBase::operator delete(a1);
}

uint64_t TVector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::~TVector(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

BOOL DoApplyTransform(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, int a12, int a13, uint64_t a14, uint64_t a15, const __CFDictionary *a16)
{
  v21 = a1 + 64;
  v44[0] = *(a1 + 64);
  CMMMemMgr::RetainMemList(v44);
  v22 = *(v21 + 8);
  v23 = *(v21 + 60);
  v33 = a8;
  if (a16)
  {
    v31 = *(v21 + 60);
    Value = CFDictionaryGetValue(a16, kColorSyncConvertThreadCount);
    v25 = 1;
    if (Value)
    {
      LODWORD(valuePtr[0]) = 1;
      if (CFNumberGetValue(Value, kCFNumberIntType, valuePtr))
      {
        v25 = valuePtr[0];
      }

      else
      {
        v25 = 1;
      }
    }

    v26 = CFDictionaryGetValue(a16, kColorSyncConvertUseVectorUnit);
    v23 = v31;
    if (v26)
    {
      v23 = CFBooleanGetValue(v26) != 0;
    }
  }

  else
  {
    v25 = 1;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v38[0] = &unk_1F0E09FB0;
  v38[1] = v44;
  memset(&valuePtr[5], 0, 368);
  valuePtr[0] = v22;
  valuePtr[1] = 0;
  valuePtr[2] = v38;
  valuePtr[3] = v21;
  LOBYTE(valuePtr[51]) = v23;
  BYTE1(valuePtr[51]) = 1;
  *(&valuePtr[51] + 2) = v25;
  *(&valuePtr[51] + 6) = 0;
  valuePtr[4] = a4;
  if (a4)
  {
    v27 = 17;
    if (a4 < 0x11)
    {
      v27 = a4;
    }

    memcpy(&valuePtr[5], a5, 8 * v27);
  }

  valuePtr[22] = a2;
  valuePtr[23] = a3;
  valuePtr[24] = v33;
  valuePtr[25] = a9;
  valuePtr[26] = __PAIR64__(a7, a6);
  LODWORD(valuePtr[27]) = *(a1 + 88);
  *(&valuePtr[27] + 4) = a10;
  if (a10)
  {
    v28 = 17;
    if (a10 < 0x11)
    {
      v28 = a10;
    }

    memcpy(&valuePtr[28] + 4, a11, 8 * v28);
  }

  *(&valuePtr[45] + 4) = a2;
  *(&valuePtr[46] + 4) = a3;
  *(&valuePtr[47] + 4) = a14;
  *(&valuePtr[48] + 4) = a15;
  HIDWORD(valuePtr[49]) = a12;
  LODWORD(valuePtr[50]) = a13;
  HIDWORD(valuePtr[50]) = *(a1 + 84);
  pthread_mutex_lock(a1);
  for (; v22; v22 = v22[2])
  {
    (*(*v22 + 88))(v22, valuePtr);
  }

  pthread_mutex_unlock(a1);
  memcpy(__dst, valuePtr, sizeof(__dst));
  v29 = apply_cmm_transform(a1, __dst);
  ConversionManager::~ConversionManager(v38);
  CMMMemMgr::ReleaseMemList(v44);
  return v29;
}

BOOL apply_cmm_transform(pthread_mutex_t *a1, void *a2)
{
  v4 = a2 + 364;
  pthread_mutex_lock(a1);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    (*(*v5 + 88))(v5, a2);
    v5 = v5[2];
  }

  pthread_mutex_unlock(a1);
  if (*(v4 + 46) != 1 && *v4 * *(v4 + 1) >= 0x2801uLL)
  {
    v23 = 0;
    CMMMemMgr::CMMMemMgr(&v23);
    v11 = CMMBase::NewInternal(0x10, &v23, v9, v10);
    *v11 = &unk_1F0E09778;
    v11[1] = 0;
    if (CMMThreadManager::GetNofCPUs(void)::predicate != -1)
    {
      dispatch_once(&CMMThreadManager::GetNofCPUs(void)::predicate, &__block_literal_global_277_748);
    }

    if (CMMThreadManager::GetNofCPUs(void)::nofCPUs >= 2 && ((v12 = *(v4 + 46)) == 0 ? (CMMThreadManager::GetNofCPUs(void)::nofCPUs <= 1 ? (v13 = 1) : (v13 = CMMThreadManager::GetNofCPUs(void)::nofCPUs)) : v12 >= 0x100 ? (v13 = 256) : (v13 = v12), v14 = malloc_type_calloc(1uLL, (448 * v13) | 0x10, 0x10A0040FA971D4CuLL), v15 = v14, (v11[1] = v14) != 0))
    {
      v16 = 0;
      v14[1] = v13 - 1;
      v17 = v14 + 56;
      do
      {
        *(v17 - 1) = v14;
        *v17 = v16++;
        v17 += 56;
      }

      while (v13 != v16);
      *(v4 + 50) = v14;
      v18 = *(v4 + 1);
      if (v18 < 2 || v18 >= v13)
      {
        if (v18 == 1)
        {
          if (*v4 >= v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = *v4;
          }
        }

        else
        {
          v18 = v13;
        }
      }

      v20 = dispatch_group_create();
      CMMThreadManager::ActivateTask(v20, v15, v18, a2);
      dispatch_release(v20);
      if (v18)
      {
        v21 = (v15 + 460);
        while (1)
        {
          v8 = *v21;
          if (*v21)
          {
            break;
          }

          v21 += 112;
          if (!--v18)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        v8 = 0;
      }
    }

    else
    {
      *(v4 + 50) = 0;
      v8 = CMMProcessBitmap(a2);
    }

    (*(*v11 + 8))(v11);
    CMMMemMgr::ReleaseMemList(&v23);
  }

  else
  {
    v8 = CMMProcessBitmap(a2);
  }

  return v8 == 0;
}

void sub_19A9645BC(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = *v4;
    v6 = *(v2 + 8);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v2 + 8);
    if (!v6)
    {
LABEL_6:
      __cxa_end_catch();
      JUMPOUT(0x19A964554);
    }
  }

  free(v6);
  *(v2 + 8) = 0;
  goto LABEL_6;
}

void sub_19A9645FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t CMMProcessBitmap(uint64_t a1)
{
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  memset(v105, 0, sizeof(v105));
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  memset(v101, 0, sizeof(v101));
  v100 = 0u;
  v99 = 0u;
  v98 = &unk_1F0E09FE8;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  memset(v75, 0, sizeof(v75));
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  memset(v71, 0, sizeof(v71));
  v70 = 0u;
  v69 = &unk_1F0E0A020;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  memset(v59, 0, sizeof(v59));
  v2 = CMMGetPrecisionFromData(*(a1 + 396), *(a1 + 400));
  v3 = CMMGetPrecisionFromData(*(a1 + 208), *(a1 + 212));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(v6 + 52);
  if (*a1 == v5)
  {
    v8 = 0;
  }

  else
  {
    v58 = *(v6 + 52);
    v8 = 0;
    do
    {
      v9 = (*(*v4 + 192))(v4);
      if (v9 > v8)
      {
        v8 = v9;
      }

      v4 = v4[2];
    }

    while (v4 != v5);
    v6 = *(a1 + 24);
    v7 = v58;
  }

  if ((v7 & ((v8 - 1) < 3)) != 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  if (v2 > v10)
  {
    v10 = v2;
  }

  if (v10 > v3)
  {
    v3 = v10;
  }

  v11 = *(v6 + 32);
  if (v3 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = (a1 + 364);
  if (v3 == 5)
  {
    v14 = v11 + 1;
    if ((v11 + 1) > 0xF)
    {
      goto LABEL_78;
    }

    v15 = (a1 + 32);
    v16 = *(a1 + 404);
    if (v16 == 1281450528)
    {
      v16 = 1145856354;
    }

    if (v16 == *(v6 + 20))
    {
      v17 = *(a1 + 372) * *(a1 + 364);
      *&v99 = &unk_1F0E06978;
      *(&v99 + 1) = v17;
      *&v100 = v11 + 1;
      *(&v100 + 1) = 0xC00 / v14 * v14;
      LODWORD(v101[0]) = 5;
      CMMDataBaseClass::CMMDataBaseClass(&v101[1], (a1 + 220), *(a1 + 388) >> 2, *(a1 + 380) >> 2);
      *&v99 = &unk_1F0E069F8;
      *(&v102 + 1) = a1 + 220;
      v18 = CMMGetChannelCountFromCMMSpace(*(a1 + 404));
      v19 = *v13;
      v20 = vshrq_n_u64(*(a1 + 380), 2uLL);
      v104 = vextq_s8(v20, v20, 8uLL);
      *&v105[1] = v19;
      v103 = v18;
      *&v106 = 0;
      v105[3] = 0;
      v6 = *(a1 + 24);
    }

    v28 = *(v6 + 24);
    v29 = *(a1 + 216);
    if (v29 == 1281450528)
    {
      v29 = 1145856354;
    }

    if (v29 == v28)
    {
      *&v70 = &unk_1F0E06A40;
      *(&v70 + 1) = v14;
      LODWORD(v71[0]) = 5;
      CMMDataBaseClass::CMMDataBaseClass(&v71[1], v15, *(a1 + 200) >> 2, *(a1 + 192) >> 2);
      *&v70 = &unk_1F0E06AB0;
      *(&v72 + 1) = a1 + 32;
      v30 = CMMGetChannelCountFromCMMSpace(*(a1 + 216));
      v31 = *(a1 + 176);
      v32 = vshrq_n_u64(*(a1 + 192), 2uLL);
      v74 = vextq_s8(v32, v32, 8uLL);
      *&v75[1] = v31;
      v73 = v30;
      v75[3] = 0;
      *&v76 = 0;
    }

    if ((*(a1 + 212) & 0x1Fu) - 1 <= 3)
    {
      v33 = (*(a1 + 400) & 0x1F) - 5;
      *&v59[0] = &unk_1F0E06B18;
      *&v61 = a1 + 32;
      *(&v61 + 1) = a1 + 220;
      BYTE8(v60) = v33 < 0xFFFFFFFC;
      if (v33 >= 0xFFFFFFFC)
      {
        if (*(a1 + 220) != 1)
        {
          goto LABEL_78;
        }

        v44 = *(a1 + 228);
        v34 = v44 + (CMMAlphaByteOffset((a1 + 220)) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v34 = 0;
      }

      *&v62 = v34;
      if (*v15 == 1)
      {
        if (BYTE8(v60))
        {
          v45 = 32831.0;
          if ((*(a1 + 212) & 0x7000) != 0x4000)
          {
            v45 = 1.0;
          }

          *&v67 = v45;
          goto LABEL_73;
        }

        if (((*(a1 + 212) ^ *(a1 + 400)) & 0x7000) == 0)
        {
          LODWORD(v67) = 1065353216;
LABEL_73:
          v46 = *(a1 + 40);
          *(&v62 + 1) = v46 + (CMMAlphaByteOffset(v61) & 0xFFFFFFFFFFFFFFFCLL);
          if (BYTE8(v60))
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
          }

          else
          {
            v47 = *(a1 + 388) >> 2;
            v48 = *(a1 + 380) >> 2;
            v49 = *v13;
          }

          v50 = *(a1 + 192) >> 2;
          v51 = *(a1 + 200) >> 2;
          *&v63 = v47;
          *(&v63 + 1) = v51;
          *&v64 = v48;
          *(&v64 + 1) = v50;
          v52 = *(a1 + 176);
          *&v65 = v49;
          *(&v65 + 1) = v52;
          v66 = 0uLL;
          goto LABEL_77;
        }
      }

LABEL_78:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }
  }

  else
  {
    if (v12 > 0xF)
    {
      goto LABEL_78;
    }

    v21 = (a1 + 32);
    v22 = CMMGetChannelCountFromCMMSpace(*(a1 + 404));
    v23 = *(a1 + 396);
    v24 = *(a1 + 400);
    v25 = v22 == 3 && v23 == 2;
    v26 = !v25;
    if (v25)
    {
      v27 = *(a1 + 408);
    }

    else
    {
      v27 = 0;
    }

    *(a1 + 408) = v27 & 1;
    v35 = *(a1 + 372) * *(a1 + 364);
    if (v3 == 1 && (v24 & 0x1Fu) - 1 >= 2)
    {
      v37 = v26;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      if (v23 != 3)
      {
        goto LABEL_78;
      }

      *&v99 = &unk_1F0E06978;
      *(&v99 + 1) = v35;
      *&v100 = v12;
      *(&v100 + 1) = (0xC00u / v12 * v12);
      LODWORD(v101[0]) = v3;
      CMMDataBaseClass::CMMDataBaseClass(&v101[1], (a1 + 220), *(a1 + 388) >> 1, *(a1 + 380) >> 1);
      LOBYTE(v106) = (v24 & 0x7000u) - 12288 < 0x2000;
      CMM16BitNChanData::SetParams(&v101[1], a1 + 220);
      v38 = off_1F0E0A4B0;
    }

    else
    {
      *&v99 = &unk_1F0E06978;
      *(&v99 + 1) = v35;
      *&v100 = v12;
      *(&v100 + 1) = 0xC00 / v12 * v12;
      LODWORD(v101[0]) = 1;
      CMMDataBaseClass::CMMDataBaseClass(&v101[1], (a1 + 220), *(a1 + 388), *(a1 + 380));
      CMM8Bit3ChanData::SetParams(&v101[1], a1 + 220);
      v38 = &unk_1F0E069B8;
    }

    *&v99 = v38;
    v39 = CMMGetChannelCountFromCMMSpace(*(a1 + 216));
    v40 = *(a1 + 208);
    v41 = *(a1 + 212);
    if (v39 == 3 && v40 == 2)
    {
      if (v3 != 1 || (*(a1 + 212) & 0x1Fu) - 1 < 2)
      {
        goto LABEL_78;
      }

      *&v70 = &unk_1F0E06A40;
      *(&v70 + 1) = v12;
      LODWORD(v71[0]) = 1;
      CMMDataBaseClass::CMMDataBaseClass(&v71[1], v21, *(a1 + 200), *(a1 + 192));
      CMM8Bit3ChanData::SetParams(&v71[1], v21);
      v43 = &unk_1F0E06A78;
    }

    else
    {
      *(a1 + 408) = 0;
      if (v40 != 3)
      {
        goto LABEL_78;
      }

      *&v70 = &unk_1F0E06A40;
      *(&v70 + 1) = v12;
      LODWORD(v71[0]) = v3;
      CMMDataBaseClass::CMMDataBaseClass(&v71[1], v21, *(a1 + 200) >> 1, *(a1 + 192) >> 1);
      LOBYTE(v76) = (v41 & 0x7000u) - 12288 < 0x2000;
      CMM16BitNChanData::SetParams(&v71[1], v21);
      v43 = off_1F0E0A540;
    }

    *&v70 = v43;
    if ((*(a1 + 212) & 0x1Fu) - 1 <= 3)
    {
      CMMAlphaCopier::CMMAlphaCopier(v59, v21, a1 + 220, (*(a1 + 400) & 0x1Fu) - 5 < 0xFFFFFFFC);
    }
  }

LABEL_77:
  v53 = *(a1 + 184) * *(a1 + 176);
  v54 = *a1;
  v55 = *(a1 + 8);
  return ConversionManager::ApplySequenceToBitmap();
}

void sub_19A964EC8(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x19A964E74);
}

intptr_t CMMThreadManager::ActivateTask(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v108 = *MEMORY[0x1E69E9840];
  memset(__src, 0, 422);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v89 = 0;
  v90 = 0;
  memset(v88, 0, 36);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  if (!a4)
  {
    goto LABEL_12;
  }

  memcpy(__src, a4, 0x1A6uLL);
  if (a3)
  {
    v66 = a2;
    group = a1;
    v8 = a4 + 364;
    v9 = a2 + 448 * a3 - 432;
    memcpy(v9, a4, 0x1A6uLL);
    v11 = *(a4 + 220);
    v10 = a4 + 220;
    v65 = v11;
    v12 = *(v10 + 8);
    v13 = *(v10 + 96);
    v104 = *(v10 + 80);
    v105 = v13;
    v14 = *(v10 + 128);
    v106 = *(v10 + 112);
    v107 = v14;
    v15 = *(v10 + 32);
    v100 = *(v10 + 16);
    v101 = v15;
    v16 = *(v10 + 64);
    v102 = *(v10 + 48);
    v103 = v16;
    v17 = *v8;
    v89 = *(v8 + 8);
    v90 = v17;
    *(&v88[2] + 4) = *(v8 + 28);
    *&v88[1] = *(v8 + 16);
    v84 = v89;
    v85 = v17;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    v83 = *(v10 + 184);
    v82 = *(v10 + 176);
    v64 = *(v10 - 188);
    v20 = *(v10 - 180);
    v21 = *(v10 - 172);
    v22 = *(v10 - 156);
    v23 = *(v10 - 124);
    v94 = *(v10 - 140);
    v95 = v23;
    v92 = v21;
    v93 = v22;
    v24 = *(v10 - 108);
    v25 = *(v10 - 92);
    v26 = *(v10 - 60);
    v98 = *(v10 - 76);
    v99 = v26;
    v96 = v24;
    v97 = v25;
    v27 = *(v10 - 44);
    v87 = *(v10 - 36);
    v28 = v87;
    v88[0] = v27;
    v29 = *(v10 - 28);
    *(v86 + 12) = *(v10 - 16);
    v86[0] = v29;
    v30 = *(v10 - 188);
    v31 = *(v10 - 172);
    v32 = *(v10 - 140);
    v33 = *(v10 - 124);
    v75 = *(v10 - 156);
    v76 = v32;
    v73 = v30;
    v74 = v31;
    v34 = *(v10 - 108);
    v35 = *(v10 - 92);
    v36 = *(v10 - 60);
    v80 = *(v10 - 76);
    v81 = v36;
    v78 = v34;
    v79 = v35;
    v77 = v33;
    v71 = v87;
    v72 = v27;
    v37 = *(v10 - 28);
    v38 = *(v10 - 20);
    v69 = *(v10 - 12);
    v70 = *(v10 - 4);
    if (v89 < 2)
    {
      if (a3 <= v17)
      {
        v39 = &v90;
        v40 = v88;
        v41 = &v85;
        v42 = &v72;
        v43 = v38;
        v44 = v18;
        v28 = v27;
        goto LABEL_11;
      }
    }

    else if (v89 >= a3)
    {
      v39 = &v89;
      v40 = &v87;
      v41 = &v84;
      v42 = &v71;
      v43 = v37;
      v44 = v19;
      v17 = v89;
LABEL_11:
      v63 = a3 - 1;
      v47 = v17 / a3;
      *v41 = v47;
      *v42 = v28 / a3;
      *v39 = v28 - v47;
      v48 = v12 + v44 * v47;
      *v40 = v28 - v28 / a3;
      v49 = v20 + v43 * (v28 / a3);
      memmove((v9 + 220), v10, 0x90uLL);
      v50 = v84;
      *(v9 + 364) = v85;
      *(v9 + 372) = v50;
      *(v9 + 380) = v19;
      *(v9 + 388) = v18;
      *(v9 + 396) = v82;
      *(v9 + 404) = v83;
      v51 = v80;
      *(v9 + 128) = v79;
      *(v9 + 144) = v51;
      *(v9 + 160) = v81;
      v52 = v76;
      *(v9 + 64) = v75;
      *(v9 + 80) = v52;
      v53 = v78;
      *(v9 + 96) = v77;
      *(v9 + 112) = v53;
      v54 = v74;
      *(v9 + 32) = v73;
      *(v9 + 48) = v54;
      v55 = v71;
      *(v9 + 176) = v72;
      *(v9 + 184) = v55;
      *(v9 + 192) = v37;
      *(v9 + 200) = v38;
      *(v9 + 208) = v69;
      *(v9 + 216) = v70;
      *(&__src[13] + 12) = v65;
      *(&__src[14] + 4) = v48;
      *(&__src[18] + 12) = v104;
      *(&__src[19] + 12) = v105;
      *(&__src[20] + 12) = v106;
      *(&__src[21] + 12) = v107;
      *(&__src[16] + 12) = v102;
      *(&__src[17] + 12) = v103;
      *(&__src[14] + 12) = v100;
      *(&__src[15] + 12) = v101;
      *(&__src[22] + 12) = v90;
      *(&__src[23] + 4) = v89;
      *(&__src[24] + 8) = *(&v88[2] + 4);
      *(&__src[23] + 12) = *&v88[1];
      *&__src[2] = v64;
      *(&__src[2] + 1) = v49;
      __src[5] = v94;
      __src[6] = v95;
      __src[3] = v92;
      __src[4] = v93;
      __src[9] = v98;
      __src[10] = v99;
      __src[7] = v96;
      __src[8] = v97;
      *&__src[11] = v88[0];
      *(&__src[11] + 1) = v87;
      *(&__src[12] + 12) = *(v86 + 12);
      __src[12] = v86[0];
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_group_async_f(group, global_queue, v9, CMMConvTask);
      v57 = *(v9 + 24);
      v58 = v57[3];
      v60 = *v57;
      v59 = v57[1];
      v68[2] = v57[2];
      v68[3] = v58;
      v68[0] = v60;
      v68[1] = v59;
      *(&__src[1] + 1) = v68;
      result = CMMThreadManager::ActivateTask(group, v66, v63, __src);
      v61 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v45 = *MEMORY[0x1E69E9840];

  return dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t CMMConvTask(void *a1)
{
  result = CMMProcessBitmap(a1[53] + 448 * a1[54] + 16);
  *(a1 + 111) = result;
  return result;
}

uint64_t ___ZN16CMMThreadManager10GetNofCPUsEv_block_invoke()
{
  v4 = 0u;
  v5 = 0u;
  *host_info_out = 0u;
  host_info_outCnt = 12;
  v0 = MEMORY[0x19EAE4930]();
  if (host_info(v0, 1, host_info_out, &host_info_outCnt))
  {
    CMMThreadManager::GetNofCPUs(void)::nofCPUs = 0;
  }

  result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v0);
  CMMThreadManager::GetNofCPUs(void)::nofCPUs = host_info_out[1];
  return result;
}

uint64_t DoFlattenSimplifiedConversion(uint64_t a1, __CFArray *a2, void *a3, unint64_t a4)
{
  v8 = *(a1 + 72);
  v12 = *(a1 + 64);
  CMMMemMgr::RetainMemList(&v12);
  v9 = compact_and_flatten_sequence(a1, v8, 0, &v12, *(a1 + 84), *(a1 + 88), kColorSyncTransformSimplifiedConversionData, a3, a4);
  if (v9)
  {
    CFArrayAppendValue(a2, v9);
    v10 = 0;
    CFRelease(v9);
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
  }

  CMMMemMgr::ReleaseMemList(&v12);
  return v10;
}

void sub_19A965554(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v1)
  {
    JUMPOUT(0x19A96552CLL);
  }

  JUMPOUT(0x19A96551CLL);
}

void sub_19A965580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef compact_and_flatten_sequence(pthread_mutex_t *a1, ConversionManager *this, CMMConvNode *a3, uint64_t a4, int a5, int a6, void *a7, void *a8, unint64_t a9)
{
  v16 = a9;
  v122 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v67[0] = &unk_1F0E09FB0;
  v67[1] = a4;
  if (!a9)
  {
    MaxCLUTNofPoints = ConversionManager::GetMaxCLUTNofPoints(this, a3, a3);
    if (MaxCLUTNofPoints)
    {
      v16 = MaxCLUTNofPoints;
    }

    else
    {
      v16 = 17;
    }
  }

  v18 = CMMGetChannelCountFromCMMSpace(a5);
  v19 = CMMGetChannelCountFromCMMSpace(a6);
  v26 = v19;
  v60 = this;
  v61 = a3;
  v62 = a1;
  if (v18)
  {
    v27 = 1;
    v28 = v18;
    do
    {
      v29 = v27;
      v27 *= v16;
      v31 = v27 >= v29 && v27 >= v16;
      CMMThrowExceptionWithLog(v31, "Overflow in Power", v20, v21, v22, v23, v24, v25);
      v28 = (v28 - 1);
    }

    while (v28);
    if (!is_mul_ok(v18, v27))
    {
      goto LABEL_46;
    }

    v58 = a8;
    v32 = v27 * v18;
    if ((v27 * v18) >> 62)
    {
      goto LABEL_46;
    }

    if (v26)
    {
      goto LABEL_17;
    }

LABEL_21:
    v33 = 0;
    goto LABEL_22;
  }

  v58 = a8;
  v32 = 0;
  v27 = 1;
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_17:
  v28 = 0;
  if (!is_mul_ok(v26, v27))
  {
    goto LABEL_46;
  }

  v33 = v27 * v26;
  if ((v27 * v26) >> 62)
  {
    goto LABEL_46;
  }

LABEL_22:
  v57 = a7;
  if ((v32 & 0x4000000000000000) != 0)
  {
    v34 = -1;
  }

  else
  {
    v34 = 4 * v32;
  }

  v59 = operator new[](v34, MEMORY[0x1E69E5398]);
  if (!NxMLUTFillWith16BitUniformGridData(v59, v16, v18, v32))
  {
    v48 = 0;
    v44 = 0;
LABEL_39:
    v28 = 0;
    v43 = v59;
    goto LABEL_40;
  }

  v56 = a6;
  if ((v32 & 0x3000000000000000) != 0)
  {
    v35 = -1;
  }

  else
  {
    v35 = 16 * v32;
  }

  v36 = MEMORY[0x1E69E5398];
  v37 = operator new[](v35, MEMORY[0x1E69E5398]);
  if ((v33 & 0x3000000000000000) != 0)
  {
    v38 = -1;
  }

  else
  {
    v38 = 16 * v33;
  }

  v39 = operator new[](v38, v36);
  if (v37)
  {
    v42 = v39 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    keys = v59;
    v83 = 1;
    v84 = v32;
    v85 = (2 * v32);
    values = v37;
    cf = 1;
    v75 = v32;
    v76 = (4 * v32);
    v47 = v37;
    v48 = v39;
    ColorSync_vImageConvert_16UToF(&keys, &values, v40, v41);
    v49 = v62[1].__opaque[52];
    keys = v60;
    v83 = v61;
    v84 = v67;
    v85 = &v62[1];
    v86 = 1;
    v87 = v48;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = v27;
    v97 = 1;
    v98 = v27 * 4 * v26;
    v99 = 4 * v26;
    v100 = 7;
    v102 = 1;
    v103 = v47;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v104 = 0u;
    v112 = v27;
    v113 = 1;
    v114 = v27 * 4 * v18;
    v115 = 4 * v18;
    v116 = 7;
    v101 = v56;
    v117 = a5;
    v118 = v49;
    v119 = 1;
    v120 = 1;
    v121 = 0;
    v50 = apply_cmm_transform(v62, &keys);
    v44 = v47;
    if (v50)
    {
      v43 = v59;
      v66 = NxMTransformFormatFromValue(v58);
      v53 = NxMLUTCreateData(v66, v48, 1, v16, v18, v26, v51, v52);
      if (v53)
      {
        keys = kColorSyncTransformCodeFragmentType;
        v83 = kColorSyncConversion3DLut;
        v84 = kColorSyncConversionNDLut;
        v85 = kColorSyncConversionInpChan;
        v86 = kColorSyncConversionOutChan;
        v87 = kColorSyncConversionGridPoints;
        *&v88 = kColorSyncNxMFormat;
        *(&v88 + 1) = @"com.apple.cmm.FunctionDoesInputClamp";
        *&v89 = 0;
        v64 = v26;
        valuePtr = v18;
        v63 = v16;
        values = v57;
        cf = v53;
        v75 = v53;
        v76 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v77 = CFNumberCreate(0, kCFNumberSInt32Type, &v64);
        v78 = CFNumberCreate(0, kCFNumberSInt32Type, &v63);
        v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
        v55 = *MEMORY[0x1E695E4D0];
        v79 = v54;
        v80 = v55;
        v81 = 0;
        v28 = CFDictionaryCreate(0, &keys, &values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        if (v77)
        {
          CFRelease(v77);
        }

        if (v78)
        {
          CFRelease(v78);
        }

        if (v79)
        {
          CFRelease(v79);
        }
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v28 = 0;
  v43 = v59;
  v44 = v37;
  v48 = v39;
LABEL_40:
  if (v43)
  {
    MEMORY[0x19EAE45F0](v43, 0x1000C80BDFB0063);
  }

  if (v44)
  {
    MEMORY[0x19EAE45F0](v44, 0x1000C8052888210);
  }

  if (v48)
  {
    MEMORY[0x19EAE45F0](v48, 0x1000C8052888210);
  }

LABEL_46:
  ConversionManager::~ConversionManager(v67);
  v45 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_19A965A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ConversionManager::~ConversionManager(va);
  _Unwind_Resume(a1);
}

uint64_t AppleCMMInitializeLinkProfile(ColorSyncProfile *a1, const __CFArray *a2, const __CFDictionary *a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v119 = 0;
  CMMMemMgr::CMMMemMgr(&v119);
  v8 = CMMBase::NewInternal(0x38, &v119, v6, v7);
  CMMProfileInfoContainer::CMMProfileInfoContainer(v8, a2, a3, &v119);
  if (v8[2] == v8[1])
  {
    goto LABEL_88;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v124 = 0u;
  *bytes = &unk_1F0E09FB0;
  *&bytes[8] = &v119;
  MaxNofChannels = CMMProfileInfoContainer::GetMaxNofChannels(v8);
  v10 = (*(**(v8[1] + 8) + 48))(*(v8[1] + 8), *(v8[1] + 16));
  v11 = (*(**(v8[2] - 32) + 56))(*(v8[2] - 32), *(v8[2] - 24), 0);
  ColorMatchSequence = ConversionManager::MakeColorMatchSequence(bytes, v8, 0, 0);
  *(v120 + 6) = 0;
  v120[0] = 1;
  LutTypeTagFromSequence = ConversionManager::MakeLutTypeTagFromSequence(bytes, ColorMatchSequence, v120, v10, v11, MaxNofChannels, 0);
  v17 = CMMBase::NewInternal(0x38, &v119, v13, v14);
  *(v17 + 2) = 1886610801;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 24) = 0;
  *v17 = &unk_1F0E09640;
  v18 = v8[1];
  if (v18 == v8[2])
  {
    v29 = 16;
  }

  else
  {
    v19 = 0;
    do
    {
      v20 = *(v18 + 8);
      Tag = CMMProfile::GetTag(v20, 1684893284);
      if (Tag)
      {
        v22 = **Tag;
        if (!v23)
        {
          goto LABEL_85;
        }

        v24 = v19 + 21 + ((v23[4] - 5) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v24 = v19 + 25;
      }

      v25 = CMMProfile::GetTag(v20, 1684890724);
      if (v25)
      {
        v26 = **v25;
        if (!v27)
        {
LABEL_85:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v28 = (v27[4] - 5) & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v28 = 4;
      }

      v19 = v24 + v28 + 4;
      v18 += 40;
    }

    while (v18 != v8[2]);
    v29 = v19 + 16;
  }

  v116 = v11;
  v117 = v10;
  v17[4] = v29;
  v30 = CMMBase::NewInternal(v29, &v119, v15, v16);
  v17[5] = v30;
  *(v17 + 48) = 1;
  *v30 = 1902474096;
  v31 = *(v8 + 1);
  v32 = v8[1];
  v33 = v8[2] - v32;
  v30[2] = bswap32(-858993459 * (v33 >> 3));
  if (v33)
  {
    v34 = (v30 + 3);
    do
    {
      v35 = *(v32 + 8);
      *v34 = vrev32q_s8(v35[5]);
      v36 = CMMProfile::GetTag(v35, 1952801640);
      if (v36)
      {
        v37 = **v36;
        if (!v38)
        {
          v114 = __cxa_allocate_exception(4uLL);
          *v114 = -171;
        }

        v34[1].i32[0] = *(v38[5] + 8);
      }

      v39 = CMMProfile::GetTag(v35, 1684893284);
      if (v39)
      {
        v40 = **v39;
        if (!v41)
        {
          goto LABEL_86;
        }

        v42 = &v34[1].i8[4];
        v43 = v41[4];
        memcpy(v42, (v41[5] + 8), v43 - 8);
        v44 = &v42[(v43 - 5) & 0xFFFFFFFFFFFFFFFCLL];
      }

      else
      {
        v44 = &v34[1].u64[1];
      }

      v45 = CMMProfile::GetTag(v35, 1684890724);
      if (v45)
      {
        v46 = **v45;
        if (!v47)
        {
LABEL_86:
          v113 = __cxa_allocate_exception(4uLL);
          *v113 = -171;
        }

        v48 = v47[4];
        memcpy(v44, (v47[5] + 8), v48 - 8);
        v49 = (v48 - 5) & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v49 = 4;
      }

      v34 = (v44 + v49);
      v32 += 40;
    }

    while (v32 != v8[2]);
  }

  (*(*v8 + 8))(v8);
  v52 = CMMBase::NewInternal(0xB8, &v119, v50, v51);
  *v52 = &unk_1F0E084C8;
  *(v52 + 2) = 1;
  *(v52 + 44) = 808464432;
  v52[2] = 0;
  v52[3] = &v119;
  *(v52 + 2) = 0u;
  v53 = (v52 + 4);
  *(v52 + 5) = 0u;
  *(v52 + 6) = 0u;
  *(v52 + 3) = 0u;
  *(v52 + 4) = 0u;
  *(v52 + 7) = 0u;
  *(v52 + 8) = 0u;
  *(v52 + 9) = 0u;
  *(v52 + 10) = 0u;
  *(v52 + 20) = 1852796517;
  *(v52 + 100) = 0x100000000F6D6;
  *(v52 + 27) = 63190;
  *(v52 + 36) = 0x21000006170706CLL;
  length[0] = 0;
  time(length);
  v54 = localtime(length);
  if (v54)
  {
    v55 = v54[1].i16[2] + 1900;
    v56 = v54[1].i16[0] + 1;
    v57 = vmovn_s32(*v54);
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  *(v52 + 28) = v55;
  *(v52 + 29) = v56;
  *(v52 + 60) = vrev64_s16(v57);
  *(v52 + 68) = 0x4150504C61637370;
  *(v52 + 24) = 0;
  *(v52 + 28) = 1634758764;
  v121 = 0;
  time(&v121);
  v58 = localtime(&v121);
  v59 = v58 ? v58->tm_year + 1900 : 1999;
  memset(&length[3] + 7, 0, 7);
  strcpy(length, "Copyright Apple Computer Inc. ");
  *(length + strlen(length)) = v59 / 1000 + 48;
  v60 = v59 % 1000;
  v61 = ((5243 * v60) >> 19) + ((5243 * v60) >> 31);
  *(length + strlen(length)) = v61 + 48;
  LOBYTE(v60) = v60 - 100 * v61;
  v62 = (((103 * v60) >> 15) & 1) + ((103 * v60) >> 10);
  *(length + strlen(length)) = v62 + 48;
  *(length + strlen(length)) = v60 - 10 * v62 + 48;
  v65 = CMMBase::NewInternal(0x38, v52[3], v63, v64);
  v66 = v52[3];
  *(v65 + 2) = 1668313716;
  *(v65 + 1) = 0u;
  *(v65 + 2) = 0u;
  *(v65 + 24) = 0;
  *v65 = &unk_1F0E08CD8;
  v67 = (strlen(length) + 9);
  v65[4] = v67;
  v70 = CMMBase::NewInternal(v67, v66, v68, v69);
  v65[5] = v70;
  *(v65 + 48) = 1;
  bzero(v70, v65[4]);
  v71 = v65[5];
  *v71 = 1954047348;
  strcpy((v71 + 8), length);
  v52[20] = v65;
  v74 = CMMBase::NewInternal(0x38, v52[3], v72, v73);
  v76 = v52[3];
  v77 = v52[20];
  while (1)
  {
    v78 = v77;
    if (!v77)
    {
      break;
    }

    v77 = *(v77 + 2);
    if (!v77)
    {
      CMMTextDescTag::CMMTextDescTag(v74, v76, v78, v75);
      goto LABEL_40;
    }
  }

  CMMTextDescTag::CMMTextDescTag(v74, v76, 0, v75);
LABEL_40:
  *v52 = &unk_1F0E08A48;
  if (v117 == 1347182946)
  {
    v79 = 1281450528;
  }

  else
  {
    v79 = v117;
  }

  if (v117 == 1145856354)
  {
    v79 = 1281450528;
  }

  *(v52 + 11) = 1818848875;
  *(v52 + 12) = v79;
  v80 = v116 == 1347182946 ? 1281450528 : v116;
  v81 = v116 == 1145856354 ? 1281450528 : v80;
  *(v52 + 13) = v81;
  v82 = v52[20];
  do
  {
    if (!v82)
    {
      v111 = __cxa_allocate_exception(4uLL);
      *v111 = -171;
    }

    v83 = v82;
    v82 = *(v82 + 16);
  }

  while (v82);
  *(v83 + 16) = LutTypeTagFromSequence;
  LutTypeTagFromSequence[2] = v17;
  LutTypeTagFromSequence[3] = v83;
  v17[3] = LutTypeTagFromSequence;
  ConversionManager::~ConversionManager(bytes);
  v84 = v52[20];
  if (v84)
  {
    v85 = 0;
    do
    {
      ++v85;
      v84 = *(v84 + 16);
    }

    while (v84);
    LODWORD(v84) = 12 * v85;
  }

  v86 = (v84 + 135) & 0xFFFFFFFC;
  if (v86 >= v84 + 132)
  {
    v87 = 0;
  }

  else
  {
    v87 = 4294967246;
  }

  CMMThrowExceptionOnError(v87);
  for (i = v52[20]; i; i = i[2])
  {
    *bytes = 0;
    (*(*i + 24))(i, 0, bytes);
    v89 = (*bytes + 3) & 0xFFFFFFFC;
    if (v89 >= *bytes)
    {
      v90 = 0;
    }

    else
    {
      v90 = 4294967246;
    }

    CMMThrowExceptionOnError(v90);
    v86 += v89;
  }

  *v53 = v86;
  v91 = *(v52 + 7);
  v127 = *(v52 + 6);
  v128 = v91;
  v92 = *(v52 + 9);
  v129 = *(v52 + 8);
  v130 = v92;
  v93 = *(v52 + 3);
  *bytes = *v53;
  v124 = v93;
  v94 = *(v52 + 5);
  v125 = *(v52 + 4);
  v126 = v94;
  v95 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x1E695E498]);
  if (!v95)
  {
LABEL_88:
    v115 = __cxa_allocate_exception(4uLL);
    *v115 = -171;
  }

  ColorSyncProfileSetHeader(a1, v95);
  CFRelease(v95);
  v96 = v52[20];
  length[0] = 0;
  for (j = 0; v96; v96 = v96[2])
  {
    (*(*v96 + 24))(v96, 0, length);
    if (j <= LODWORD(length[0]))
    {
      j = length[0];
    }
  }

  if (((j + 3) & 0xFFFFFFFC) >= j)
  {
    v98 = 0;
  }

  else
  {
    v98 = 4294967246;
  }

  CMMThrowExceptionOnError(v98);
  v101 = CMMBase::NewInternal(((j + 3) & 0xFFFFFFFC), v52[3], v99, v100);
  for (k = v52[20]; k; k = *(k + 16))
  {
    v103 = *(k + 8);
    (*(*k + 24))(k, 0, length);
    (*(*k + 24))(k, v101, length);
    v104 = CFDataCreate(0, v101, length[0]);
    if (v104)
    {
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(v103);
      ColorSyncProfileSetTag(a1, SignatureFromFourCharCode, v104);
      CFRelease(SignatureFromFourCharCode);
      CFRelease(v104);
    }
  }

  CMMBase::operator delete(v101);
  v106 = *(v52 + 2) - 1;
  *(v52 + 2) = v106;
  if (!v106)
  {
    (*(*v52 + 8))(v52);
  }

  if (v119)
  {
    v107 = *v119;
    if (*v119)
    {
      do
      {
        v108 = *v107;
        free(v107);
        v107 = v108;
      }

      while (v108);
    }
  }

  CMMMemMgr::ReleaseMemList(&v119);
  v109 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_19A96668C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    CMMTag::~CMMTag(v21);
    ConversionManager::~ConversionManager(&a21);
    v24 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v25 = *v24;
      if (a11)
      {
        v26 = *a11;
        if (*a11)
        {
          do
          {
            v27 = *v26;
            free(v26);
            v26 = v27;
          }

          while (v27);
        }
      }

      __cxa_end_catch();
      JUMPOUT(0x19A966554);
    }

    if (a11)
    {
      v28 = *a11;
      if (*a11)
      {
        do
        {
          v29 = *v28;
          free(v28);
          v28 = v29;
        }

        while (v29);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x19A966550);
  }

  _Unwind_Resume(exception_object);
}

void sub_19A9667C8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  JUMPOUT(0x19A9666D8);
}

uint64_t CMMTextDescTag::CMMTextDescTag(uint64_t a1, void **a2, CMMMemMgr *a3, const char *a4)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = 1684370275;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  if (a3)
  {
    *(a3 + 2) = a1;
  }

  *a1 = &unk_1F0E08CA0;
  *(a1 + 32) = 116;
  v5 = CMMBase::NewInternal(0x74, a2, a3, a4);
  *(a1 + 40) = v5;
  *(a1 + 48) = 1;
  *v5 = 1668506980;
  *(v5 + 2) = 419430400;
  strcpy(v5 + 12, "Apple CMM DevLinkProfile");
  return a1;
}

BOOL AppleCMMApplyTransform(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, unsigned int a6, unsigned int a7, uint64_t a8, unint64_t a9, void *a10, int a11, int a12, uint64_t a13, const __CFDictionary *a14)
{
  CMMStorage = GetCMMStorage(a1);
  if (a11 == 8)
  {
    v22 = 4;
  }

  else
  {
    SrcComponentCount = ColorSyncTransformGetSrcComponentCount(a1);
    if ((a12 & 0x1F) != 0)
    {
      v24 = SrcComponentCount + 1;
    }

    else
    {
      v24 = SrcComponentCount;
    }

    if ((a11 - 1) > 6)
    {
      v25 = 0;
    }

    else
    {
      v25 = qword_19A9B15A0[a11 - 1];
    }

    v22 = v24 * v25;
  }

  if (a6 == 8)
  {
    return DoApplyTransform(CMMStorage, a2, a3, a4, a5, 8u, a7, a8, 4, a9, a10, a11, a12, a13, v22, a14);
  }

  if (a1)
  {
    v27 = *(a1 + 96);
  }

  else
  {
    v27 = 0;
  }

  if ((a7 & 0x1F) != 0)
  {
    ++v27;
  }

  if (a6 - 1 > 6)
  {
    v28 = 0;
  }

  else
  {
    v28 = qword_19A9B15A0[a6 - 1];
  }

  return DoApplyTransform(CMMStorage, a2, a3, a4, a5, a6, a7, a8, v27 * v28, a9, a10, a11, a12, a13, v22, a14);
}

BOOL AppleCMMVerifySRGBGamma(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = 0;
  if (BytePtr)
  {
    v5 = Length;
    if (Length)
    {
      v21 = 0;
      CMMMemMgr::CMMMemMgr(&v21);
      v8 = bswap32(*BytePtr);
      if (v8 == 1668641398)
      {
        v9 = CMMBase::NewInternal(0x38, &v21, v6, v7);
        CMMCurveTag::CMMCurveTag(v9, 0, BytePtr, v5, 0);
      }

      else
      {
        if (v8 != 1885434465)
        {
          v4 = 0;
LABEL_20:
          CMMMemMgr::ReleaseMemList(&v21);
          return v4;
        }

        v9 = CMMBase::NewInternal(0x80, &v21, v6, v7);
        CMMParaCurveTag::CMMParaCurveTag(v9, 0, BytePtr, v5, 0);
      }

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      LODWORD(v17) = 1;
      v10 = (*(*v9 + 64))(v9, &v17, &v21, 0, 1.0);
      if (v10)
      {
        v4 = DWORD1(v17) == 1;
        v11 = v10[1];
        if (v11)
        {
          v12 = v11 - 1;
          v10[1] = v12;
          if (!v12)
          {
            (*(*v10 + 8))(v10);
          }
        }
      }

      else
      {
        v4 = 0;
      }

      v13 = v18;
      if (v18)
      {
        v14 = *(v18 + 8);
        if (v14)
        {
          v15 = v14 - 1;
          *(v18 + 8) = v15;
          if (!v15)
          {
            (*(*v13 + 8))(v13);
          }
        }
      }

      (*(*v9 + 8))(v9);
      goto LABEL_20;
    }
  }

  return v4;
}

CFTypeRef create_WebSafeColorsProfile()
{
  if (create_WebSafeColorsProfile_predicate != -1)
  {
    dispatch_once(&create_WebSafeColorsProfile_predicate, &__block_literal_global_277_1007);
  }

  v1 = create_WebSafeColorsProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericXYZProfile()
{
  if (create_GenericXYZProfile_predicate != -1)
  {
    dispatch_once(&create_GenericXYZProfile_predicate, &__block_literal_global_274);
  }

  v1 = create_GenericXYZProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_sRGB_Linear()
{
  if (create_sRGB_Linear_predicate != -1)
  {
    dispatch_once(&create_sRGB_Linear_predicate, &__block_literal_global_265);
  }

  v1 = create_sRGB_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR2020_Linear()
{
  if (create_ITUR2020_Linear_predicate != -1)
  {
    dispatch_once(&create_ITUR2020_Linear_predicate, &__block_literal_global_238);
  }

  v1 = create_ITUR2020_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericRGBLinear()
{
  if (create_GenericRGBLinear_predicate != -1)
  {
    dispatch_once(&create_GenericRGBLinear_predicate, &__block_literal_global_232);
  }

  v1 = create_GenericRGBLinear_profile;

  return CFRetain(v1);
}

CFTypeRef create_DisplayP3_Linear()
{
  if (create_DisplayP3_Linear_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_Linear_predicate, &__block_literal_global_223);
  }

  v1 = create_DisplayP3_Linear_profile;

  return CFRetain(v1);
}

CFTypeRef create_DCIP3Profile()
{
  if (create_DCIP3Profile_predicate != -1)
  {
    dispatch_once(&create_DCIP3Profile_predicate, &__block_literal_global_211);
  }

  v1 = create_DCIP3Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ACESCGLinearProfile()
{
  if (create_ACESCGLinearProfile_predicate != -1)
  {
    dispatch_once(&create_ACESCGLinearProfile_predicate, &__block_literal_global_202);
  }

  v1 = create_ACESCGLinearProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_GenericGrayLinear()
{
  if (create_GenericGrayLinear_predicate != -1)
  {
    dispatch_once(&create_GenericGrayLinear_predicate, &__block_literal_global_199);
  }

  v1 = create_GenericGrayLinear_profile;

  return CFRetain(v1);
}

CFTypeRef ColorSyncProfileCreateLegacyDisplayP3()
{
  if (create_DisplayP3_legacy_Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_legacy_Profile_predicate, &__block_literal_global_175);
  }

  v1 = create_DisplayP3_legacy_Profile_profile;

  return CFRetain(v1);
}

CFTypeRef ColorSyncProfileCreateLegacy2DisplayP3()
{
  if (create_DisplayP3_legacy_2_Profile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_legacy_2_Profile_predicate, &__block_literal_global_178);
  }

  v1 = create_DisplayP3_legacy_2_Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_PerceptualStandardRGBProfile()
{
  if (create_PerceptualStandardRGBProfile_predicate != -1)
  {
    dispatch_once(&create_PerceptualStandardRGBProfile_predicate, &__block_literal_global_187);
  }

  v1 = create_PerceptualStandardRGBProfile_profile;

  return CFRetain(v1);
}

uint64_t ColorSyncProfileCreateWithID(uint64_t a1)
{
  if ((a1 - 1) > 0x1C)
  {
    return 0;
  }

  else
  {
    return creators_for_id[a1]();
  }
}

CFAllocatorRef __colorSyncBytesDeallocator_block_invoke()
{
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  colorSyncBytesDeallocator_colorSyncAllocator = result;
  return result;
}

unint64_t XXH64(uint64_t a1)
{
  v1 = 0;
  v2 = 0x27D4EB2F165667D5;
  do
  {
    v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *(a1 + v1), 33)) ^ v2, 37);
    v1 += 8;
  }

  while (v1 != 16);
  v3 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v3 ^ HIDWORD(v3);
}

ColorSyncProfileRef __get_dciP3_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncDCIP3Profile);
  get_dciP3_profile_dciP3 = result;
  return result;
}

ColorSyncProfileRef __get_dispP3_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncDisplayP3Profile);
  get_dispP3_profile_dispP3 = result;
  return result;
}

ColorSyncProfileRef __get_itu2020_profile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncITUR2020Profile);
  get_itu2020_profile_itu2020 = result;
  return result;
}

void fillCurvTable(ColorSyncProfile *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, double *a6, int a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v12 = 2 * a4;
  v13 = malloc_type_calloc(1uLL, 2 * a4 + 12, 0x100004018756113uLL);
  if (!v13)
  {
    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = v13;
  v69 = a7;
  v15 = 0;
  *v13 = 1987212643;
  *(v13 + 2) = bswap32(a4);
  v16 = *MEMORY[0x1E695E498];
  v17 = (v13 + 10);
  do
  {
    v18 = a6[v15];
    if (v18 < 2.25)
    {
      v19 = 2.2;
      if (v18 > 2.15)
      {
        goto LABEL_5;
      }
    }

    v21 = 0.0;
    if (v18 >= 1.85 || v18 <= 1.75)
    {
      if (v18 >= 1.05 || v18 <= 0.95)
      {
        if (v18 <= 1.8)
        {
          v20 = 0;
          if (!a4)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }

        v19 = a6[v15];
LABEL_5:
        if ((v19 + -1.8) * 0.04045 / 0.4 <= 0.0)
        {
          v21 = 0.0;
          v20 = 1;
          v18 = v19;
          if (!a4)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v20 = 1;
          v18 = v19;
          v21 = (v19 + -1.8) * 0.0773993808 / 0.4;
          if (!a4)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_20;
      }

      v20 = 0;
      v18 = 1.0;
      if (!a4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
      v18 = 1.8;
      if (!a4)
      {
        goto LABEL_33;
      }
    }

LABEL_20:
    v23 = 0;
    v24 = a3 - 1;
    if (v15 < a3)
    {
      v24 = v15;
    }

    v25 = a4 + a4 * v24 - 1;
    v26 = a4;
    do
    {
      v27 = v26 - 1;
      v28 = vcvtmd_u64_f64(v21 * (v26 - 1) / a4 * 65535.0 + 0.5);
      if (v28 >= 0xFFFF)
      {
        v28 = 0xFFFF;
      }

      if (a5 == 1)
      {
        LOWORD(v29) = *(a2 + v25) | (*(a2 + v25) << 8);
      }

      else
      {
        LOWORD(v29) = *(a2 + 2 * v25);
      }

      v30 = v28 & ~(v28 >> 31);
      v29 = v29;
      v31 = v29 <= v30;
      if (v29 <= v30)
      {
        v29 = v30;
      }

      if ((v23 & 1) == 0)
      {
        v30 = v29;
      }

      v23 |= v31;
      *&v17[2 * v26] = bswap32(v30) >> 16;
      --v25;
      --v26;
    }

    while (v27);
LABEL_33:
    v32 = 0.0;
    if (v20)
    {
      v32 = (v18 + -1.8) * 0.04045 / 0.4;
    }

    *(&v74 + v15) = v32;
    v33 = v14;
    v34 = CFDataCreateWithBytesNoCopy(0, v14, v12 + 12, v16);
    ColorSyncProfileSetTag(a1, off_1E7524130[v15], v34);
    if (v34)
    {
      CFRelease(v34);
    }

    ++v15;
    v14 = v33;
  }

  while (v15 != 3);
  if (v69)
  {
    v38 = *a6;
    v39 = 2.2;
    if (*a6 >= 2.25 || (v40 = 2.2, v38 <= 2.15))
    {
      if (v38 >= 1.85 || v38 <= 1.75)
      {
        if (v38 > 0.95 && v38 < 1.05)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = *a6;
        }
      }

      else
      {
        v40 = 1.8;
      }
    }

    v43 = a6[1];
    if (v43 >= 2.25 || (v44 = 2.2, v43 <= 2.15))
    {
      if (v43 >= 1.85 || v43 <= 1.75)
      {
        if (v43 > 0.95 && v43 < 1.05)
        {
          v44 = 1.0;
        }

        else
        {
          v44 = a6[1];
        }
      }

      else
      {
        v44 = 1.8;
      }
    }

    v46 = a6[2];
    if (v46 >= 2.25 || v46 <= 2.15)
    {
      if (v46 >= 1.85 || v46 <= 1.75)
      {
        v47 = v46 > 0.95 && v46 < 1.05;
        v39 = 1.0;
        if (!v47)
        {
          v39 = a6[2];
        }
      }

      else
      {
        v39 = 1.8;
      }
    }

    v35.f64[0] = 1.8;
    if (v40 > 1.8)
    {
      v35.f64[0] = (v40 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v48 = 1.8;
    if (v44 > 1.8)
    {
      v48 = (v44 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v73 = v48;
    v49 = 1.8;
    if (v39 > 1.8)
    {
      v49 = (v39 + -1.8) * 0.6 / 0.4 + 1.8;
    }

    v70 = v49;
    v50 = 0.0;
    v51 = 0.0;
    if (v40 > 1.8)
    {
      v51 = (v40 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v44 > 1.8)
    {
      v50 = (v44 + -1.8) * 0.0521327014 / 0.4;
    }

    v36.f64[0] = 0.0;
    v52 = 0.0;
    if (v39 > 1.8)
    {
      v52 = (v39 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v40 > 1.8)
    {
      v36.f64[0] = (v40 + -1.8) * 0.0521327014 / 0.4;
    }

    v53 = 0.0;
    v54 = 0.0;
    if (v44 > 1.8)
    {
      v54 = (v44 + -1.8) * 0.0521327014 / 0.4;
    }

    if (v39 > 1.8)
    {
      v53 = (v39 + -1.8) * 0.0521327014 / 0.4;
    }

    v37.f64[0] = v74;
    v55 = 0.0;
    v56 = 0.0;
    if (v40 > 1.8 && v74 > 0.0)
    {
      v56 = (v40 + -1.8) * 0.0773993808 / 0.4;
    }

    v57 = v75;
    if (v44 > 1.8 && v75 > 0.0)
    {
      v55 = (v44 + -1.8) * 0.0773993808 / 0.4;
    }

    v58 = v76;
    v59 = 0.0;
    if (v39 > 1.8 && v76 > 0.0)
    {
      v59 = (v39 + -1.8) * 0.0773993808 / 0.4;
    }

    v60 = 1.0 - v52;
    v61 = 1.0 - v50;
    ColorSyncProfileSetParametricTRCTag(a1, @"aarg", 3u, v35, 1.0 - v51, v36, v56, v37, 0.0, 0.0);
    v62.f64[0] = v73;
    v63.f64[0] = v54;
    v64.f64[0] = v57;
    ColorSyncProfileSetParametricTRCTag(a1, @"aagg", 3u, v62, v61, v63, v55, v64, 0.0, 0.0);
    v65.f64[0] = v70;
    v66.f64[0] = v53;
    v67.f64[0] = v58;
    ColorSyncProfileSetParametricTRCTag(a1, @"aabg", 3u, v65, v60, v66, v59, v67, 0.0, 0.0);
  }

  v68 = *MEMORY[0x1E69E9840];

  free(v33);
}

void inverseNativeGammaLookup(uint64_t a1, long double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v12 = *(a1 + 328);
  if (*(a1 + 328) && *(a1 + 360) == 1)
  {
    v13 = 0;
    v14 = *(a1 + 330);
    v15 = *(a1 + 332);
    v16 = *(a1 + 336);
    v17 = 16.0;
    if (v15 == 2)
    {
      v17 = 4112.0;
    }

    v18 = (v14 - 1);
    v19 = v17 * v18;
    do
    {
      if (v14 != 1)
      {
        v20 = a2[v13];
        if (v13 >= v12)
        {
          v21 = v12 - 1;
        }

        else
        {
          v21 = v13;
        }

        v22 = v21 * v14;
        v23 = v16 - 1 + v22;
        v24 = (v16 + 2 * ((v14 - 1) + v22));
        v25 = v14 - (v14 - 1);
        v26 = (v14 - 1);
        while (1)
        {
          if (v15 == 1)
          {
            LOBYTE(a10) = *(v23 + v26);
            *&v27 = *&a10;
            v28 = *&v27 / 255.0;
            LOBYTE(v27) = *(v23 + v26 + 1);
            v29 = v27 / 255.0;
          }

          else
          {
            LOWORD(a10) = *(v24 - 1);
            *&v30 = *&a10;
            v28 = *&v30 / 65535.0;
            LOWORD(v30) = *v24;
            v29 = v30 / 65535.0;
          }

          v31 = v26 - 1;
          a10 = (v26 - 1);
          if (v28 < a10 / v19)
          {
            v28 = a10 / v19;
          }

          v32 = v26;
          if (v28 > 1.0 - v25 / v19)
          {
            v28 = 1.0 - v25 / v19;
          }

          if (v29 < v32 / v19)
          {
            v29 = v32 / v19;
          }

          if (v29 > 1.0 - (v25 - 1) / v19)
          {
            v29 = 1.0 - (v25 - 1) / v19;
          }

          if (v20 == v28)
          {
            break;
          }

          if (v20 == v29)
          {
            goto LABEL_30;
          }

          if (v28 < v20 && v29 > v20)
          {
            v32 = (v20 - v28) / (v29 - v28) + a10;
            if (v32 != -1.0)
            {
              goto LABEL_30;
            }
          }

          ++v25;
          --v24;
          --v26;
          if (!v31)
          {
            goto LABEL_32;
          }
        }

        v32 = (v26 - 1);
LABEL_30:
        if (v32 / v18 != -1.0)
        {
          a2[v13] = v32 / v18;
        }
      }

LABEL_32:
      ++v13;
    }

    while (v13 != 3);
  }

  else
  {
    *a2 = pow(*a2, 1.0 / *(a1 + 64));
    v33 = 1.0 / *(a1 + 80);
    a2[1] = pow(a2[1], v33);
    a2[2] = pow(a2[2], v33);
  }
}

double applyParametricGamma(unsigned __int16 *a1, long double a2)
{
  v3 = *a1;
  v4 = 0.0;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (v3 != 1)
      {
        return v4;
      }

      v7 = *(a1 + 2);
      v6 = *(a1 + 3);
      if (-v6 / v7 > a2)
      {
        return v4;
      }

      a2 = v6 + v7 * a2;
    }

    v8 = *(a1 + 1);
  }

  else
  {
    if (v3 == 2)
    {
      v10 = *(a1 + 2);
      v9 = *(a1 + 3);
      if (-v9 / v10 <= a2)
      {
        v11 = pow(v9 + v10 * a2, *(a1 + 1));
        v12 = *(a1 + 4);
        return v11 + v12;
      }

      return *(a1 + 4);
    }

    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if (*(a1 + 5) > a2)
        {
          return *(a1 + 7) + *(a1 + 4) * a2;
        }

        v11 = pow(*(a1 + 3) + *(a1 + 2) * a2, *(a1 + 1));
        v12 = *(a1 + 6);
        return v11 + v12;
      }

      return v4;
    }

    if (*(a1 + 5) > a2)
    {
      return *(a1 + 4) * a2;
    }

    v8 = *(a1 + 1);
    a2 = *(a1 + 3) + *(a1 + 2) * a2;
  }

  return pow(a2, v8);
}

void ColorSyncTransformShowSteps(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v9 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v9 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID && (colorsync_transform_steps_info = create_colorsync_transform_steps_info(cf)) != 0)
  {
    v11 = colorsync_transform_steps_info;
    ColorSyncLog(3, "%@", a3, a4, a5, a6, a7, a8, colorsync_transform_steps_info);

    CFRelease(v11);
  }

  else
  {
LABEL_9:
    ColorSyncLog(3, "Nothing to show for <%p> ColorSyncTransform", a3, a4, a5, a6, a7, a8, cf);
  }
}

uint64_t create_colorsync_transform_steps_info(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x6800000000;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __create_colorsync_transform_steps_info_block_invoke;
  v10[3] = &unk_1E7524150;
  v10[4] = v11;
  v10[5] = &v16;
  v10[6] = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __create_colorsync_transform_steps_info_block_invoke_2;
  v9[3] = &unk_1E7524178;
  v9[4] = &v16;
  v9[5] = v11;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __create_colorsync_transform_steps_info_block_invoke_3;
  v8[3] = &unk_1E75241A0;
  v8[4] = &v16;
  v8[5] = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __create_colorsync_transform_steps_info_block_invoke_4;
  v7[3] = &unk_1E75241C8;
  v7[4] = &v16;
  v7[5] = v11;
  if (ColorSyncTransformIterate(a1, 0, v10, v9, v8, v7))
  {
    v1 = v17;
    v2 = v17[3];
    if (v2)
    {
      Length = CFStringGetLength(v2);
      v1 = v17;
      if (Length >= 1)
      {
        CFStringAppend(v17[3], @"---------------------------------------------------------------------------------\n");
        v1 = v17;
      }
    }
  }

  else
  {
    fwrite("create_colorsync_transform_steps_info: no steps\n", 0x30uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v1 = v17;
    v4 = v17[3];
    if (v4)
    {
      CFRelease(v4);
      v1 = v17;
    }

    v1[3] = 0;
  }

  v5 = v1[3];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v16, 8);
  return v5;
}

__CFString *__create_colorsync_transform_steps_info_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = *(*(a1 + 32) + 8);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  v9 = *(a2 + 60);
  *(v6 + 40) = *(a2 + 16);
  *(v6 + 84) = v9;
  *(v6 + 72) = v7;
  *(v6 + 56) = v8;
  *(v6 + 24) = *a2;
  v10 = CFGetAllocator(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = CFStringCreateMutable(v10, 0);
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {
    CFStringAppend(result, @"\n*************************************************************************\n");
    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"\nColorSyncTransform show steps\n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"\n*************************************************************************\n");
    v12 = CFCopyDescription(*(a1 + 48));
    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"ColorSyncTransform info:\n %@\n", v12);
    CFRelease(v12);
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v14 = *(a2 + 4);
    v15 = *(a2 + 12);
    v16 = *(a2 + 20);
    v17 = *(a2 + 28);
    v18 = *(a2 + 36);
    v19 = *(a2 + 44);
    CFStringAppendFormat(v13, 0, @"    %d stages\n", v14);
    CFStringAppendFormat(v13, 0, @"    %d input components\n", v15);
    CFStringAppendFormat(v13, 0, @"    %d output components\n", v16);
    CFStringAppendFormat(v13, 0, @"    %d TRCs\n", v17);
    CFStringAppendFormat(v13, 0, @"    %d Matrices\n", v18);
    CFStringAppendFormat(v13, 0, @"    %d NxM Transforms\n", v19);
    if (CFDictionaryContainsKey(a3, @"com.apple.cmm.ProfileSequence") == 1)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
      CFDictionarySetValue(MutableCopy, @"com.apple.cmm.ProfileSequence", @" included ");
      v21 = CFCopyDescription(MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      v21 = CFCopyDescription(a3);
    }

    CFStringAppendFormat(*(*(*(a1 + 40) + 8) + 24), 0, @"ColorSyncTransformIterate hints:\n%@\n", v21);
    CFRelease(v21);
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"----------------------------------------\n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"               STAGES \n");
    CFStringAppend(*(*(*(a1 + 40) + 8) + 24), @"----------------------------------------\n");
    return (*(*(*(a1 + 40) + 8) + 24) != 0);
  }

  return result;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(*(*(a1 + 40) + 8) + 76);
  CFStringAppendFormat(v6, 0, @"Stage = %ld, %ld TRCs\n", a2, a3);
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      v30 = 0.0;
      v28 = 0u;
      v29 = 0u;
      ColorSyncTRCGetFunction(*(v7 + 8 * *(a4 + 8 * v8)), &v28);
      v9 = ColorSyncTRCGetGammaID(*(v7 + 8 * *(a4 + 8 * v8)));
      if (v9 >= 0x12)
      {
        __assert_rtn("gamma_id_by_name", "ColorSyncTransformShowSteps.c", 235, "0");
      }

      v10 = v28;
      v11 = (v28 - 6) >= 4 && v28 >= 5;
      v12 = "NO";
      if (!v11)
      {
        v12 = "YES";
      }

      CFStringAppendFormat(v6, 0, @"    TRC channel %d --> TRCs[%ld], parametric = %s gammaID = %s\n", v8, *(a4 + 8 * v8), v12, off_1E75241E8[v9]);
      v13 = ColorSyncTRCGetProperties(*(v7 + 8 * *(a4 + 8 * v8)));
      if (v10 <= 4)
      {
        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 == 1)
            {
              CFStringAppendFormat(v6, 0, @"\t\tType1: Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), (-*(&v28 + 3) / *(&v28 + 2)), (-*(&v28 + 3) / *(&v28 + 2)), v25, v26, v27);
            }
          }

          else
          {
            CFStringAppendFormat(v6, 0, @"\t\tType0: Y = X^% 3.10f \n", *(&v28 + 1), v21, v22, v23, v24, v25, v26, v27);
          }
        }

        else if (v10 == 2)
        {
          CFStringAppendFormat(v6, 0, @"\t\tType2: Y = (%g*X+%g)^%g + % 3.10f [X >= %g],  Y = %g [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *&v29, (-*(&v28 + 3) / *(&v28 + 2)), *&v29, (-*(&v28 + 3) / *(&v28 + 2)), v27);
        }

        else if (v10 == 3)
        {
          CFStringAppendFormat(v6, 0, @"\t\tType3: Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *(&v29 + 1), *&v29, *(&v29 + 1), v26, v27);
        }

        else
        {
          CFStringAppendFormat(v6, 0, @"\t\tType4: Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]\n", *(&v28 + 2), *(&v28 + 3), *(&v28 + 1), *(&v29 + 2), *(&v29 + 1), *&v29, *(&v29 + 3), *(&v29 + 1));
        }
      }

      else if (v10 > 7)
      {
        switch(v10)
        {
          case 8:
            CFStringAppendFormat(v6, 0, @"\t\tHLG_InvOETF_Type: Y = Reference_HLG_InvOETF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
            break;
          case 9:
            CFStringAppendFormat(v6, 0, @"\t\tHLG_OETF_Type: Y = Reference_HLG_OETF(X)  [a = %g, b = %g, c = %g, d = %g e = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), v25, v26, v27);
            break;
          case 10:
            CFStringAppendFormat(v6, 0, @"\t\tEXRToneMap_Type: Y = EXR Tone Mapping Gamma(X)  [defog = %g, exposure_scale = %g, kneeLow = %g, kneeHigh = %g, intermediate_gamma = %g, intensity_scale = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
            break;
        }
      }

      else if (v10 == 5)
      {
        CFStringAppendFormat(v6, 0, @"\t\tTable: entries = %zu\n", *(&v28 + 4));
        CFStringAppendFormat(v6, 0, @"\t\t\tColorSyncBoundaryExtension neg: slope = %g intercept = %g\n", *(&v29 + 3), v30);
        CFStringAppendFormat(v6, 0, @"\t\t\tColorSyncBoundaryExtension pos: slope = %g intercept = %g\n", *(&v29 + 1), *(&v29 + 2), v22, v23, v24, v25, v26, v27);
      }

      else if (v10 == 6)
      {
        CFStringAppendFormat(v6, 0, @"\t\tPQ_EOTF_Type: Y = Reference_PQ_EOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v26, v27);
      }

      else
      {
        CFStringAppendFormat(v6, 0, @"\t\tPQ_InvEOTF_Type: Y = Reference_PQ_InvEOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g, g = %g]\n", *(&v28 + 2), *(&v28 + 3), *&v29, *(&v29 + 1), *(&v29 + 2), *(&v29 + 3), v30, v27);
      }

      append_properties_info(v6, v13);
      v14 = *(v7 + 8 * *(a4 + 8 * v8));
      v15 = ColorSyncTRCGetInputRange(v14);
      v17 = v16;
      v18 = ColorSyncTRCGetOutputRange(v14);
      append_range_info(v6, v15, v17, v18, v19);
      ++v8;
    }

    while (a3 != v8);
  }

  return 1;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 84);
  memset(v18, 0, sizeof(v18));
  v7 = v18;
  ColorSyncMatrixGetFunction(*(v6 + 8 * a3), v18);
  Properties = ColorSyncMatrixGetProperties(*(v6 + 8 * a3));
  CFStringAppendFormat(v5, 0, @"Stage = %ld, matrix index = %ld\n", a2, a3);
  for (i = 0; i != 3; ++i)
  {
    CFStringAppend(v5, @"\t");
    for (j = 0; j != 16; j += 4)
    {
      CFStringAppendFormat(v5, 0, @"% 3.10f ", *(v7 + j));
    }

    CFStringAppend(v5, @"\n");
    ++v7;
  }

  append_properties_info(v5, Properties);
  v11 = *(v6 + 8 * a3);
  InputRange = ColorSyncMatrixGetInputRange(v11);
  v14 = v13;
  OutputRange = ColorSyncMatrixGetOutputRange(v11);
  append_range_info(v5, InputRange, v14, OutputRange, v16);
  return 1;
}

uint64_t __create_colorsync_transform_steps_info_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 92);
  memset(v42, 0, 36);
  ColorSyncNxMGetFunction(*(v6 + 8 * a3), v42);
  v7 = ColorSyncNxMGetProperties(*(v6 + 8 * a3));
  v8 = v42[0];
  v9 = "?";
  if (LODWORD(v42[0]) <= 0xC)
  {
    v9 = off_1E7524278[LODWORD(v42[0])];
  }

  CFStringAppendFormat(v5, 0, @"Stage = %ld, %zu inputs x %zu outputs %s index = %ld\n", a2, *(v42 + 4), v9, a3);
  if (v8 > 9)
  {
    if (v8 != 10)
    {
      if (v8 == 11)
      {
        v10 = **(&v42[1] + 12);
        v11 = *(*(&v42[1] + 12) + 4);
        v12 = *(*(&v42[1] + 12) + 8);
        v13 = *(*(&v42[1] + 12) + 12);
        v33 = *(*(&v42[1] + 12) + 28);
        *&v34 = *(&v42[1] + 12) + 36;
        v31 = *(*(&v42[1] + 12) + 20);
        v32 = *(*(&v42[1] + 12) + 24);
        v30 = *(*(&v42[1] + 12) + 16);
        v14 = @"\tFlex Luminance Scaling params:\n\t\tsource headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\tcoefficients[0] = % 3.10f\n\t\tcoefficients[1] = % 3.10f\n\t\tcoefficients[2] = % 3.10f\n\t\tcoefficients[3] = % 3.10f\n\t\tcoefficients[4] = % 3.10f\n\t\tFlexGTCTableCount = %zu\n\t\tFlexGTCTable = %p\n";
        goto LABEL_25;
      }

      if (v8 == 12)
      {
        CFStringAppendFormat(v5, 0, @"\tLuminance scaling params: \n\t\tgamma = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16));
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (ColorSyncNxMGetVersion(*(v6 + 8 * a3)) != 2)
    {
      v10 = **(&v42[1] + 12);
      v11 = *(*(&v42[1] + 12) + 4);
      v12 = *(*(&v42[1] + 12) + 8);
      v13 = *(*(&v42[1] + 12) + 12);
      v33 = *(*(&v42[1] + 12) + 32);
      v34 = *(*(&v42[1] + 12) + 36);
      v31 = *(*(&v42[1] + 12) + 24);
      v32 = *(*(&v42[1] + 12) + 28);
      v30 = *(*(&v42[1] + 12) + 20);
      v14 = @"\tReference White Tone Mapping (version 0) params:\n\t\tluminance scale = % 3.10f\n\t\tadjusted source headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\ttarget reference white = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n";
      goto LABEL_25;
    }

    CFStringAppendFormat(v5, 0, @"\tReference White Tone Mapping params:\n\t\tversion = % d\n\t\tluminance scale = % 3.10f\n\t\tslope = % 3.10f\n\t\tsource headroom = % 3.10f\n\t\ttarget hearoom = % 3.10f\n\t\textension offset = % 3.10f\n\t\textension weight = % 3.10f\n\t\toutput gamma = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20), *(*(&v42[1] + 12) + 24), *(*(&v42[1] + 12) + 28), *(*(&v42[1] + 12) + 48), *(*(&v42[1] + 12) + 52), *(*(&v42[1] + 12) + 56), *(*(&v42[1] + 12) + 60), *(*(&v42[1] + 12) + 64));
  }

  else
  {
    if (v8 != 7)
    {
      if (v8 == 8)
      {
        CFStringAppendFormat(v5, 0, @"\tHLG Scene Referred Mapping params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20));
        goto LABEL_26;
      }

      if (v8 == 9)
      {
        v10 = **(&v42[1] + 12);
        v11 = *(*(&v42[1] + 12) + 4);
        v12 = *(*(&v42[1] + 12) + 8);
        v13 = *(*(&v42[1] + 12) + 12);
        v40 = *(*(&v42[1] + 12) + 64);
        v41 = *(*(&v42[1] + 12) + 68);
        v38 = *(*(&v42[1] + 12) + 56);
        v39 = *(*(&v42[1] + 12) + 60);
        v36 = *(*(&v42[1] + 12) + 40);
        v37 = *(*(&v42[1] + 12) + 44);
        v34 = *(*(&v42[1] + 12) + 32);
        v35 = *(*(&v42[1] + 12) + 36);
        v32 = *(*(&v42[1] + 12) + 24);
        v33 = *(*(&v42[1] + 12) + 28);
        v30 = *(*(&v42[1] + 12) + 16);
        v31 = *(*(&v42[1] + 12) + 20);
        v14 = @"\tPQ tone mapping params:\n\t\tparams->pq_eotf.m1 = % 3.10f\n\t\tparams->pq_eotf.m2 = % 3.10f\n\n\t\tparams->pq_eotf.c1 = % 3.10f\n\t\tparams->pq_eotf.c2 = % 3.10f\n\t\tparams->pq_eotf.c3 = % 3.10f\n\n\t\tparams->pq_eetf.masterPeakInv = % 3.10f\n\t\tparams->pq_eetf.masterBlackInv = % 3.10f\n\t\tparams->pq_eetf.maxLum = % 3.10f\n\t\tparams->pq_eetf.minLum = % 3.10f\n\t\tparams->pq_eetf.KneeStart = % 3.10f\n\t\tparams->pq_eetf.KneeStartScale = % 3.10f\n\t\tparams->pq_eetf.optical_scale = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n";
LABEL_25:
        CFStringAppendFormat(v5, 0, v14, *&v10, *&v11, *&v12, *&v13, *&v30, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41);
        goto LABEL_26;
      }

LABEL_20:
      if (v8 > 6)
      {
        CFStringAppendFormat(v5, 0, @"\t\tUnknown format\n\n", v25, v26, v27, v28, v29);
      }

      else
      {
        CFStringAppendFormat(v5, 0, @"\t\tGrid point count = %zu\n\n", *(&v42[1] + 4), v26, v27, v28, v29);
      }

      goto LABEL_26;
    }

    v15 = *(*(&v42[1] + 12) + 24);
    v16 = "HLG Inverted OOTF";
    if (v15 != 1)
    {
      v16 = "?";
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = "HLG OOTF";
    }

    CFStringAppendFormat(v5, 0, @"\tHLG Luminance scaling (%s) params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", v17, **(&v42[1] + 12), *(*(&v42[1] + 12) + 4), *(*(&v42[1] + 12) + 8), *(*(&v42[1] + 12) + 12), *(*(&v42[1] + 12) + 16), *(*(&v42[1] + 12) + 20));
  }

LABEL_26:
  append_properties_info(v5, v7);
  v18 = *(v6 + 8 * a3);
  v19 = ColorSyncNxMGetInputRange(v18);
  v21 = v20;
  v22 = ColorSyncNxMGetOutputRange(v18);
  append_range_info(v5, v19, v21, v22, v23);
  return 1;
}

void append_properties_info(__CFString *a1, char a2)
{
  v2 = "Yes";
  if (a2)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  if ((a2 & 2) != 0)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if ((a2 & 4) != 0)
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  if ((a2 & 8) != 0)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if ((a2 & 0x10) == 0)
  {
    v2 = "No";
  }

  CFStringAppendFormat(a1, 0, @"\t\tProperties:\n\t\t\t\tkColorSyncFunctionSignedReflection  = %s\n\t\t\t\tkColorSyncFunctionOutputClamp       = %s\n\t\t\t\tkColorSyncFunctionInputClamp        = %s\n\t\t\t\tkColorSyncMatrixOnlyFirstInputChannelActive  = %s\n\t\t\t\tkColorSyncMatrixOnlyFirstOutputChannelActive = %s\n\n", v3, v4, v5, v6, v2);
}

void append_range_info(__CFString *a1, float a2, float a3, float a4, float a5)
{
  CFStringAppendFormat(a1, 0, @"\t\tInput range: [");
  if (a2 == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", a2);
  }

  if (a3 == 3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @" +FLT_MAX]", v10);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]", a3);
  }

  CFStringAppendFormat(a1, 0, @" Output range: [");
  if (a4 == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,", v11);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", a4);
  }

  if (a5 == 3.4028e38)
  {

    CFStringAppendFormat(a1, 0, @" +FLT_MAX]\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]\n", a5);
  }
}

void ColorSyncTransformDumpStepsToFile(CFTypeRef cf, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_15;
  }

  v10 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v10 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID && (colorsync_transform_steps_info = create_colorsync_transform_steps_info(cf)) != 0)
  {
    v12 = colorsync_transform_steps_info;
    if (a2 && strlen(a2) >= 3)
    {
      bzero(__str, 0x401uLL);
      if (*a2 == 42 && a2[1] == 47)
      {
        if (ColorSyncGetTempDirPath_predicate != -1)
        {
          dispatch_once(&ColorSyncGetTempDirPath_predicate, &__block_literal_global_540);
        }

        v28 = a2 + 2;
        a2 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &ColorSyncGetTempDirPath_tempDirPath, v28);
      }

      CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
      if (CStringPtr)
      {
        v14 = CStringPtr;
        v15 = 0;
      }

      else
      {
        Length = CFStringGetLength(v12);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v15 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0x9125FFEAuLL);
        if (v15 && CFStringGetCString(v12, v15, MaximumSizeForEncoding, 0x8000100u))
        {
          v14 = v15;
        }

        else
        {
          v14 = &unk_19AA95E0B;
        }
      }

      v25 = fopen(a2, "w");
      if (v25)
      {
        v26 = v25;
        v27 = strlen(v14);
        fwrite(v14, 1uLL, v27, v26);
        fclose(v26);
      }

      if (v15)
      {
        free(v15);
      }
    }

    ColorSyncLog(1, "%s %s %s", a3, a4, a5, a6, a7, a8, "ColorSyncTransformDumpStepsToFile");
    CFRelease(v12);
  }

  else
  {
LABEL_15:
    ColorSyncLog(1, "Nothing to show for <%p> ColorSyncTransform", a3, a4, a5, a6, a7, a8, cf);
    ColorSyncLog(1, "%s %s %s", v16, v17, v18, v19, v20, v21, "ColorSyncTransformDumpStepsToFile");
  }

  v22 = *MEMORY[0x1E69E9840];
}

float get_boundary_extension(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0.0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFArrayGetTypeID())
  {
    __assert_rtn("get_boundary_extension", "ColorSyncTransformIteration.c", 302, "CFGetTypeID(array) == CFArrayGetTypeID()");
  }

  v5 = 0.0;
  if (CFArrayGetCount(v3) >= 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    float_value = get_float_value(ValueAtIndex);
    v5 = *&float_value;
    v8 = CFArrayGetValueAtIndex(v3, 1);
    get_float_value(v8);
  }

  return v5;
}

void __linear_trc_block_invoke()
{
  create_trc_data();
  if (v0)
  {
    *(v0 + 16) = 0;
    *(v0 + 20) = xmmword_19A9E9A18;
    *(v0 + 36) = unk_19A9E9A28;
    *(v0 + 84) = 7;
    v1.f64[0] = 2.84809454e-306;
    v1.f64[1] = 2.84809454e-306;
    *(v0 + 68) = vnegq_f64(v1);
    *(v0 + 64) = 0;
    *(v0 + 88) = 1;
  }

  linear_trc_linear_no_clamp = v0;
  create_trc_data();
  if (v2)
  {
    *(v2 + 16) = 0;
    *(v2 + 20) = xmmword_19A9E9A18;
    *(v2 + 36) = unk_19A9E9A28;
    *(v2 + 84) = 7;
    *(v2 + 68) = xmmword_19A96E4A0;
    *(v2 + 64) = 2;
    *(v2 + 88) = 1;
  }

  linear_trc_linear_clamp = v2;
}

CFStringRef colorSyncTransformIteratorCopyDebugDescription(void *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    v3 = a1[2];
    v4 = *(a1 + 84);
    return CFStringCreateWithFormat(v2, 0, @"<ColorSyncTransformIterator %p;stepArray:%@;\nproperties:%@TRCs[%ld]:%pmatrices[%ld]:%pnxmLuts[%ld]:%p>", a1, v3, a1[4], *(a1 + 68), a1[15], *(a1 + 76), a1[16], v4, a1[17]);
  }

  else
  {
    v6 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v6, 0, @"<NULL ColorSyncTransformIterator>");
  }
}

const void *ColorSyncCreateOutputPoppyProfileForRGBData(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = ((a6 - 1) < 6) & (a6 - 1);
  if ((a6 - 1) >= 6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = -1;
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v84 = a4;
      v12 = 0;
      v17 = 0;
      v14 = 0;
      v19 = 2;
      if (!v9)
      {
        v19 = 0;
      }

      v16 = (a1 + v19);
      v13 = (a1 + v19);
    }

    else
    {
      if (a5 != 7)
      {
        goto LABEL_92;
      }

      v84 = a4;
      v13 = 0;
      v17 = 0;
      v14 = 0;
      v18 = 4;
      if (!v9)
      {
        v18 = 0;
      }

      v16 = (a1 + v18);
      v12 = (a1 + v18);
    }
  }

  else if (a5 == 2)
  {
    v84 = a4;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v16 = (a1 + v9);
    v14 = v16;
  }

  else
  {
    if (a5 != 3)
    {
      goto LABEL_92;
    }

    v84 = a4;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 2;
    if (!v9)
    {
      v15 = 0;
    }

    v16 = (a1 + v15);
    v17 = (a1 + v15);
  }

  v20 = 12 * a2;
  v21 = malloc_type_calloc(12 * a2 * a3, 1uLL, 0xEA5F40D9uLL);
  if (v21)
  {
    if (a3)
    {
      if ((a5 - 2) >= 3 && a5 != 7)
      {
        __assert_rtn("get_poppy_index_for_data", "ColorSyncPoppyProfile.c", 134, "0");
      }

      v24 = 0;
      if (a2 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = a2;
      }

      v26 = v21 + 1;
      do
      {
        if (a5 == 3)
        {
          v27 = v12;
        }

        else
        {
          v27 = &v16[v24 * v84];
        }

        if (a5 == 3)
        {
          v28 = &v16[v24 * v84];
        }

        else
        {
          v28 = v17;
        }

        if (a5 == 4)
        {
          v27 = v12;
          v29 = &v16[v24 * v84];
        }

        else
        {
          v29 = v13;
        }

        if (a5 == 4)
        {
          v28 = v17;
        }

        if (a5 == 2)
        {
          v14 = &v16[v24 * v84];
        }

        else
        {
          v12 = v27;
          v13 = v29;
          v17 = v28;
        }

        if (a2)
        {
          v30 = v25;
          v31 = v26;
          if ((a5 - 2) >= 3 && a5 != 7)
          {
            __assert_rtn("get_poppy_index_for_data", "ColorSyncPoppyProfile.c", 165, "0");
          }

          do
          {
            switch(a5)
            {
              case 4:
                LODWORD(_D2) = *v13;
                *&_D2 = vcvtq_f32_f16(*&_D2).u64[0];
                *(v31 - 1) = _D2;
                LOWORD(_D2) = *(v13 + 2);
                __asm { FCVT            S2, H2 }

                *v31 = LODWORD(_D2);
                v13 += 2 * v10;
                break;
              case 3:
                LOWORD(_D2) = *v17;
                v34 = *&_D2 / 65535.0;
                *&v34 = v34;
                LOWORD(v23) = v17[1];
                v23 = *&v23 / 65535.0;
                *&v23 = v23;
                *(v31 - 2) = LODWORD(v34);
                *(v31 - 1) = LODWORD(v23);
                LOWORD(v34) = v17[2];
                _D2 = *&v34 / 65535.0;
                *&_D2 = _D2;
                *v31 = LODWORD(_D2);
                v17 += v10;
                break;
              case 2:
                LOBYTE(_D2) = *v14;
                v32 = *&_D2 / 255.0;
                *&v32 = v32;
                *(v31 - 2) = LODWORD(v32);
                LOBYTE(v32) = v14[1];
                v33 = *&v32 / 255.0;
                *&v33 = v33;
                *(v31 - 1) = LODWORD(v33);
                LOBYTE(v33) = v14[2];
                _D2 = *&v33 / 255.0;
                *&_D2 = _D2;
                *v31 = LODWORD(_D2);
                v14 += v10;
                break;
              default:
                *(v31 - 2) = *v12;
                *(v31 - 1) = v12[1];
                LODWORD(_D2) = v12[2];
                *v31 = LODWORD(_D2);
                v12 += v10;
                break;
            }

            v31 = (v31 + 12);
            --v30;
          }

          while (v30);
        }

        ++v24;
        v26 = (v26 + v20);
      }

      while (v24 != a3);
      v39 = 0;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      while (1)
      {
        if (!a2)
        {
          goto LABEL_78;
        }

        v40 = 0;
        v41 = (v21 + v39 * v20);
        do
        {
          v42 = 0;
          v43 = *v41;
          v44 = v41[1];
          v45 = v41[2];
          v46 = ((v44 * -0.22499) + (*v41 * 1.225)) + (v45 * -0.000005);
          v47 = ((v44 * 1.0421) + (*v41 * -0.042061)) + (v45 * -0.000001);
          v88[0] = v46;
          v88[1] = v47;
          v48 = ((v44 * -0.078641) + (v43 * -0.019641)) + (v45 * 1.0983);
          v88[2] = v48;
          v85 = 0;
          v86 = 0;
          do
          {
            v49 = v88[v42];
            if (v49 <= 1.0)
            {
              if (v49 >= 0.0)
              {
                goto LABEL_62;
              }

              v50 = -1;
            }

            else
            {
              v50 = 1;
            }

            *(&v85 + v42 * 4) = v50;
LABEL_62:
            ++v42;
          }

          while (v42 != 3);
          if (v85 || __PAIR64__(HIDWORD(v85), 0) != v86)
          {
            v51 = ((v47 * 0.17757) + (v46 * 0.82243)) + (v48 * 0.000004);
            v52 = ((v47 * 0.9668) + (v46 * 0.033196)) + (v48 * 0.000001);
            v53 = ((v47 * 0.072402) + (v46 * 0.017085)) + (v48 * 0.91051);
            v54 = vabds_f32(v46, v51);
            v55 = vabds_f32(v47, v52);
            *v87 = v54;
            *&v87[1] = v55;
            v56 = vabds_f32(v48, v53);
            *&v87[2] = v56;
            v57 = 0.0;
            if (v85 == 1)
            {
              v57 = (v46 + -1.0) / v54;
            }

            if (HIDWORD(v85) == 1)
            {
              v57 = fmaxf(v57, (v47 + -1.0) / v55);
            }

            if (v86 == 1)
            {
              v57 = fmaxf(v57, (v48 + -1.0) / v56);
            }

            v58 = 0;
            v59 = fmax(fmin(v46, 1.0), 0.0);
            v60 = fmax(fmin(v47, 1.0), 0.0);
            v61 = fmax(fmin(v48, 1.0), 0.0);
            v62 = ((v60 * 0.17757) + (v59 * 0.82243)) + (v61 * 0.000004);
            v63 = ((v60 * 0.9668) + (v59 * 0.033196)) + (v61 * 0.000001);
            v64 = ((v60 * 0.072402) + (v59 * 0.017085)) + (v61 * 0.91051);
            v65 = fmax(fmin(v62, 1.0), 0.0);
            v66 = fmax(fmin(v63, 1.0), 0.0);
            v67 = fmax(fmin(v64, 1.0), 0.0);
            v68 = (vabds_f32(v51, v65) * 27.217) + vabds_f32(v52, v66) * 6.72130013;
            v69 = v68 + vabds_f32(v53, v67) * 50.4818993;
            v70 = v69 * v69;
            do
            {
              if (*(&v85 + v58 * 4) == -1)
              {
                v57 = fmaxf(v57, -v88[v58] / *&v87[v58]);
              }

              ++v58;
            }

            while (v58 != 3);
            v71 = fmin(v57, 1.0);
            if (v71 > 0.0)
            {
              v72 = llroundf(v71 * 15.0);
              *(&v89 + v72) = (v70 / (v71 + 1.0)) + *(&v89 + v72);
            }
          }

          v41 += 3;
          ++v40;
        }

        while (v40 != a2);
LABEL_78:
        if (++v39 == a3)
        {
          goto LABEL_82;
        }
      }
    }

    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
LABEL_82:
    free(v21);
    v73 = 0;
    v74 = 0.0;
    do
    {
      v74 = (((v74 + COERCE_FLOAT(*(&v89 + v73))) + COERCE_FLOAT(HIDWORD(*(&v89 + v73)))) + COERCE_FLOAT(*(&v89 + v73 + 8))) + COERCE_FLOAT(HIDWORD(*(&v89 + v73)));
      v73 += 16;
    }

    while (v73 != 64);
    v75 = 0.0;
    if (v74 > 1.0)
    {
      v76 = &v92 + 3;
      v77 = 0.0;
      v78 = 17;
      while (1)
      {
        v79 = v77;
        if (!--v78)
        {
          break;
        }

        v80 = *v76--;
        v77 = v77 + v80;
        if ((v79 + v80) > 1.0)
        {
          v81 = v78;
          goto LABEL_90;
        }
      }

      v81 = 16.0;
LABEL_90:
      v75 = (vcvts_n_f32_s64((v81 - ((1.0 - v79) / (v77 - v79))), 4uLL) * 10.0);
    }

    v11 = llround(v75);
  }

  else
  {
    v11 = -1;
  }

LABEL_92:
  v82 = *MEMORY[0x1E69E9840];

  return acquire_output_profile(v11);
}

void __acquire_output_profile_block_invoke_2(uint64_t a1)
{
  if (acquire_output_profile_data)
  {
    v2 = CFDataCreate(0, (acquire_output_profile_data + *(acquire_output_profile_header + 8 * *(a1 + 32) + 16)), *(acquire_output_profile_header + 8 * *(a1 + 32) + 12));
    v3 = ColorSyncProfileCreate(v2, 0);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  acquire_output_profile_profiles[*(a1 + 32)] = v3;
}

uint64_t __acquire_output_profile_block_invoke()
{
  v0 = getpagesize();
  v1 = v0;
  if ((v0 & 0xFFFLL) != 0)
  {
    __assert_rtn("acquire_output_profile_block_invoke", "ColorSyncPoppyProfile.c", 362, "PAGESIZE % 4096 == 0");
  }

  v2 = open("/System/Library/ColorSync/Resources/ColorTables.data", 0, 0);
  acquire_output_profile_fd = v2;
  if (v2 < 0)
  {
    goto LABEL_5;
  }

  memset(&v4, 0, sizeof(v4));
  if (fstat(v2, &v4) || (v4.st_mode & 0xF000) != 0x8000 || v4.st_size < 1 || (result = mmap(0, (v1 + v4.st_size - 1) & 0xFFFFFFFFFFFFF000, 1, 1, acquire_output_profile_fd, 0), acquire_output_profile_data = result, result == -1) || (acquire_output_profile_header = result, *result != 1633775737) && *(result + 4) != 0x10000 && *(result + 8) != 11)
  {
    v2 = acquire_output_profile_fd;
LABEL_5:
    result = close(v2);
    acquire_output_profile_fd = -1;
  }

  return result;
}

uint64_t __use_poppy_profiles_from_file_block_invoke()
{
  v1 = 0;
  result = ColorSyncDefaultsGetBoolean("ColorSyncUsePoppyProfilesFromFile", &v1);
  if (result)
  {
    use_poppy_profiles_from_file_enabled = v1;
  }

  return result;
}

const void *ColorSyncCreateInputPoppyProfile(const ColorSyncProfile *a1)
{
  poppy_index_from_profile = get_poppy_index_from_profile(a1);
  if ((poppy_index_from_profile - 1) > 9)
  {
    return 0;
  }

  v3 = poppy_index_from_profile;
  v4 = (&acquire_input_profile_predicates + 8 * poppy_index_from_profile);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __acquire_input_profile_block_invoke;
  v6[3] = &__block_descriptor_tmp_13;
  v6[4] = v3;
  v6[5] = a1;
  if (*v4 != -1)
  {
    dispatch_once(v4, v6);
  }

  result = acquire_input_profile_profiles[v3];
  if (result)
  {
    CFRetain(result);
    return acquire_input_profile_profiles[v3];
  }

  return result;
}

ColorSyncProfile *__acquire_input_profile_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  keys[0] = xmmword_1E75243A0;
  keys[1] = *&off_1E75243B0;
  keys[2] = xmmword_1E75243C0;
  v31 = 0;
  Tag = ColorSyncProfileGetTag(v2, @"A2B0");
  values = Tag;
  v4 = ColorSyncProfileGetTag(v2, @"A2B1");
  v24 = v4;
  v5 = ColorSyncProfileGetTag(v2, @"A2B2");
  v25 = v5;
  v26 = ColorSyncProfileGetTag(v2, @"chad");
  v27 = ColorSyncProfileGetTag(v2, @"wtpt");
  v6 = ColorSyncProfileGetTag(v2, @"aapy");
  result = 0;
  v28 = v6;
  v29 = 0;
  if (!Tag || !v6)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v24 = Tag;
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v25 = Tag;
LABEL_5:
  v8 = CFDictionaryCreate(0, keys, &values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22[0] = CFNumberCreate(0, kCFNumberSInt16Type, &create_input_poppy_profile_iccDate);
  v22[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3A);
  v22[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3C);
  v22[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA3E);
  v22[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA40);
  v22[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19AA8FA42);
  v9 = CFArrayCreate(*MEMORY[0x1E695E480], v22, 6, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 6; ++i)
  {
    v11 = v22[i];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v19 = *&off_1E7524408;
  v20 = xmmword_1E7524418;
  v21 = 0;
  *v16 = xmmword_1E75243D8;
  v17 = *&off_1E75243E8;
  v18 = xmmword_1E75243F8;
  v15[0] = @"copyTags";
  v15[1] = @"4.0";
  v15[2] = kColorSyncSigInputClass;
  v15[3] = kColorSyncSigRgbData;
  v12 = *MEMORY[0x1E695E4D0];
  v15[4] = kColorSyncSigXYZData;
  v15[5] = v12;
  v15[6] = v9;
  v15[7] = @"Apple Wide Color Sharing Profile";
  v15[8] = v8;
  v15[9] = v12;
  v15[10] = 0;
  v13 = CFDictionaryCreate(0, v16, v15, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v8);
  CFRelease(v9);
  result = ColorSyncMakeProfile(v13);
LABEL_10:
  acquire_input_profile_profiles[*(a1 + 32)] = result;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef colorSyncTRCCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = CFGetAllocator(a1);
    if (v2 == 5)
    {
      return CFStringCreateWithFormat(v3, 0, @"<TRC %p;table[%ld]:%p properties(0x%x) input range [%+g, %+g] output range [%+g, %+g] pos [%f, %f] neg [%f, %f]>", a1, *(a1 + 20), *(a1 + 28), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48));
    }

    else
    {
      v6 = *(a1 + 16);
      if (v6 > 0xA)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E7524490[v6];
      }

      v8 = "NO";
      if (*(a1 + 88))
      {
        v8 = "YES";
      }

      return CFStringCreateWithFormat(v3, 0, @"<TRC %p;type:%s;\ngamma:%f a = %f b = %f c = %f d = %f e = %f f = %f g = %f\nproperties(0x%x) input range [%+g, %+g] output range [%+g, %+g]\npure gamma original ? %s >", a1, v7, *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), v8);
    }
  }

  else
  {
    v5 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v5, 0, @"<NULL TRC>");
  }
}

uint64_t ColorSyncTRCGetOptions(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetOptions", "ColorSyncTransformFunctions.c", 409, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  return ColorSyncTRCGetProperties(a1);
}

CFStringRef colorSyncMatrixCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 20);
    v4 = *(a1 + 24);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v15 = *(a1 + 52);
    v16 = *(a1 + 48);
    v13 = *(a1 + 60);
    v14 = *(a1 + 56);
    v10 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v10, 0, @"<Matrix %p\n[%f,\t %f,\t %f,\t %f]\n[%f,\t %f,\t %f,\t %f]\n[%f,\t %f,\t %f,\t %f]\nproperties(0x%x) input range [%+g, %+g] output range [%+g, %+g]>", a1, v2, v3, v4, v5, v6, v7, v8, v9, v16, v15, v14, v13, *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80));
  }

  else
  {
    v12 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v12, 0, @"<NULL Matrix>");
  }
}

uint64_t ColorSyncNxMGetTypeID()
{
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  return ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID;
}

uint64_t __ColorSyncNxMGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID = result;
  return result;
}

CFStringRef colorSyncNxMLUTCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<NxMLUT %p;table[%ld gridpoints]:%p Inputs = %ld Outputs = %ld format = %d properties(0x%x) input range [%+g, %+g] output range [%+g, %+g]>", a1, *(a1 + 40), *(a1 + 48), *(a1 + 24), *(a1 + 32), *(a1 + 20), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80));
  }

  else
  {
    v4 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v4, 0, @"<NULL NxMLUT>");
  }
}

uint64_t nxmLUT_equal_nxmLUT(int *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (ColorSyncNxMGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
    }

    if (v5 == ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
    {
      v6 = CFGetTypeID(a2);
      if (ColorSyncNxMGetTypeID_predicate != -1)
      {
        dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
      }

      if (v6 == ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID && cf[4] == *(a2 + 16))
      {
        v7 = cf[5];
        if (v7 != *(a2 + 20))
        {
LABEL_84:
          LOBYTE(v8) = 0;
          return v8 & 1;
        }

        LOBYTE(v8) = 0;
        if (*(cf + 3) != *(a2 + 24) || *(cf + 4) != *(a2 + 32))
        {
          return v8 & 1;
        }

        v9 = *(cf + 6);
        v10 = *(a2 + 48);
        if (v7 <= 6)
        {
          if (v7 < 7)
          {
            LOBYTE(v8) = 0;
            if (*(cf + 5) != *(a2 + 40) || v9 != v10)
            {
              return v8 & 1;
            }
          }

          goto LABEL_18;
        }

        if (v7 <= 8)
        {
          if (*v9 != *v10)
          {
            goto LABEL_84;
          }

          v23 = *(v9 + 4);
          if (*(v9 + 8) != v10[2] || *(v9 + 12) != v10[3] || *(v9 + 16) != v10[4])
          {
            goto LABEL_84;
          }

          v21 = *(v9 + 20);
          v22 = v10[5];
        }

        else
        {
          switch(v7)
          {
            case 9:
              if (*v9 != *v10 || *(v9 + 4) != v10[1] || *(v9 + 8) != v10[2] || *(v9 + 12) != v10[3] || *(v9 + 16) != v10[4] || *(v9 + 20) != v10[5] || *(v9 + 24) != v10[6] || *(v9 + 28) != v10[7] || *(v9 + 32) != v10[8] || *(v9 + 36) != v10[9] || *(v9 + 40) != v10[10] || *(v9 + 56) != v10[14] || *(v9 + 60) != v10[15] || *(v9 + 64) != v10[16])
              {
                goto LABEL_84;
              }

              v21 = *(v9 + 68);
              v22 = v10[17];
              break;
            case 10:
              if (*v9 != *v10 || *(v9 + 4) != v10[1] || *(v9 + 8) != v10[2] || *(v9 + 12) != v10[3] || *(v9 + 16) != v10[4] || *(v9 + 20) != v10[5] || *(v9 + 24) != v10[6] || *(v9 + 28) != v10[7] || *(v9 + 32) != v10[8] || *(v9 + 36) != v10[9] || *(v9 + 40) != v10[10] || *(v9 + 44) != v10[11] || *(v9 + 48) != v10[12] || *(v9 + 52) != v10[13] || *(v9 + 56) != v10[14] || *(v9 + 60) != v10[15])
              {
                goto LABEL_84;
              }

              v21 = *(v9 + 64);
              v22 = v10[16];
              break;
            case 11:
              if (*v9 != *v10 || *(v9 + 4) != v10[1] || *(v9 + 8) != v10[2] || *(v9 + 12) != v10[3] || *(v9 + 16) != v10[4] || *(v9 + 20) != v10[5] || *(v9 + 24) != v10[6])
              {
                goto LABEL_84;
              }

              v8 = *(v10 + 7);
              *(v9 + 28) = v8;
              if (!v8)
              {
                return v8 & 1;
              }

              v20 = 9;
              do
              {
                v21 = *(v9 + 4 * v20);
                v22 = v10[v20];
                if (v20 - 8 >= v8)
                {
                  break;
                }

                ++v20;
              }

              while (v21 == v22);
              break;
            default:
              goto LABEL_18;
          }
        }

        if (v21 != v22)
        {
          goto LABEL_84;
        }

LABEL_18:
        v11 = ColorSyncNxMGetProperties(cf);
        if (v11 == ColorSyncNxMGetProperties(a2))
        {
          v12 = ColorSyncNxMGetInputRange(cf);
          v13 = ColorSyncNxMGetInputRange(a2);
          LOBYTE(v8) = 0;
          if (v12 == v13)
          {
            v14 = ColorSyncNxMGetOutputRange(cf);
            v16 = v15;
            v17 = ColorSyncNxMGetOutputRange(a2);
            LOBYTE(v8) = v16 == v18 && v14 == v17;
          }

          return v8 & 1;
        }

        goto LABEL_84;
      }
    }

    return 0;
  }

  return result;
}

uint64_t ColorSyncNxMGetProperties(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetProperties", "ColorSyncTransformFunctions.c", 894, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[16];
}

float ColorSyncNxMGetInputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetInputRange", "ColorSyncTransformFunctions.c", 906, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  result = *(a1 + 68);
  v4 = *(a1 + 72);
  return result;
}

float ColorSyncNxMGetOutputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetOutputRange", "ColorSyncTransformFunctions.c", 913, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  result = *(a1 + 76);
  v4 = *(a1 + 80);
  return result;
}

void colorSyncNxMLUTFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }
  }
}

uint64_t ColorSyncNxMGetVersion(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v2 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetVersion", "ColorSyncTransformFunctions.c", 920, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  return a1[4];
}

CFStringRef colorSyncCMMCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    v3 = *(a1 + 24);
    if (v3)
    {
      ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(*(a1 + 24), *MEMORY[0x1E695E4F8]);
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = CFBundleGetValueForInfoDictionaryKey(v5, *MEMORY[0x1E695E4F0]);
        return CFStringCreateWithFormat(v2, 0, @"<ColorSyncCMM %p;bundle:%@;\nname:%@;\nidentifier:%@>", a1, v3, ValueForInfoDictionaryKey, v6);
      }
    }

    else
    {
      ValueForInfoDictionaryKey = *(a1 + 32);
    }

    v6 = *(a1 + 40);
    return CFStringCreateWithFormat(v2, 0, @"<ColorSyncCMM %p;bundle:%@;\nname:%@;\nidentifier:%@>", a1, v3, ValueForInfoDictionaryKey, v6);
  }

  v7 = CFGetAllocator(0);

  return CFStringCreateWithFormat(v7, 0, @"<NULL ColorSyncCMM>");
}

void colorSyncCMMFinalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      __assert_rtn("colorSyncCMMFinalize", "ColorSyncCMM.c", 53, "c->builtIn == false");
    }

    v2 = *(a1 + 24);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t ColorSyncProfileFindMatchingSystemProfile(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_74;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    goto LABEL_74;
  }

  MD5 = ColorSyncProfileGetMD5(a1);
  v4 = a1[15];
  if (!v4)
  {
    goto LABEL_74;
  }

  v5 = *(CFDataGetBytePtr(v4) + 4);
  if (v5 == 1129142603)
  {
    v47 = xmmword_19A96E4B0;
    v37 = (MD5 ^ 0xE40A7A2FC4B9F464 | *(&MD5 + 1) ^ 0xC62A50E24F29050FLL) == 0;
    v38 = 26;
    goto LABEL_59;
  }

  if (v5 != 1380401696)
  {
    if (v5 == 1196573017)
    {
      v6 = &find_matching_profile_id_gray_gray_pairs;
      v7 = 3;
      while (1)
      {
        v47 = *v6;
        if (v47 == MD5 && *(&v47 + 1) == *(&MD5 + 1))
        {
          break;
        }

        v6 = (v6 + 24);
        if (!--v7)
        {
          goto LABEL_74;
        }
      }

      v38 = *(v6 + 2);
      goto LABEL_70;
    }

    v39 = a1[15];
    if (!v39 || *(CFDataGetBytePtr(v39) + 3) != 1936744803)
    {
      goto LABEL_74;
    }

    v47 = xmmword_19A96E4D0;
    if (MD5 == 0xC592F61D4A3BC000 && *(&MD5 + 1) == 0x263ECD799E43830ELL)
    {
      v38 = 27;
      goto LABEL_71;
    }

    v47 = xmmword_19A96E4E0;
    v37 = (MD5 ^ 0x28FBD70ABCB659F1 | *(&MD5 + 1) ^ 0x507F9D11AEA86D0DLL) == 0;
    v38 = 28;
LABEL_59:
    if (!v37)
    {
      v38 = 0;
    }

    goto LABEL_70;
  }

  v9 = a1[15];
  if (!v9)
  {
LABEL_74:
    v44 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v10 = *(CFDataGetBytePtr(v9) + 3);
  if (v10 == 1852662636)
  {
    v47 = xmmword_19A96E4C0;
    v37 = (MD5 ^ 0x3FEBD58E84B1D53 | *(&MD5 + 1) ^ 0x28AF40706F461B64) == 0;
    v38 = 29;
    goto LABEL_59;
  }

  if (v10 != 1835955314)
  {
    goto LABEL_74;
  }

  if (find_matching_profile_id_rgb_display_predicate != -1)
  {
    dispatch_once(&find_matching_profile_id_rgb_display_predicate, &__block_literal_global_1529);
  }

  v11 = find_matching_profile_id_rgb_display_md5_id_pair_array;
  v12 = find_matching_profile_id_rgb_display_md5_id_pair_count ? 34 : 0;
  while (2)
  {
    if (!v12)
    {
      goto LABEL_74;
    }

    v13 = *v11;
    v14 = v11[1];
    if (MD5 == *v11 && *(&MD5 + 1) == v14)
    {
      v38 = v11[2];
    }

    else
    {
      v16 = v12;
      v17 = &v11[3 * v12];
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      if (MD5 == v18 && *(&MD5 + 1) == v19)
      {
        v38 = *(v17 - 1);
      }

      else
      {
        v12 = v16 >> 1;
        v21 = &v11[3 * (v16 >> 1)];
        v23 = *v21;
        v22 = v21[1];
        if (MD5 != *v21 || *(&MD5 + 1) != v22)
        {
          v25 = 0;
          v47 = MD5;
          v45 = v13;
          v46 = v14;
          while (1)
          {
            v26 = *(&v47 + v25);
            v27 = *(&v45 + v25);
            if (v26 != v27)
            {
              break;
            }

            if (++v25 == 16)
            {
              goto LABEL_45;
            }
          }

          if (v26 > v27)
          {
            v28 = 0;
            v47 = MD5;
            v45 = v23;
            v46 = v22;
            while (1)
            {
              v29 = *(&v47 + v28);
              v30 = *(&v45 + v28);
              if (v29 != v30)
              {
                break;
              }

              if (++v28 == 16)
              {
                goto LABEL_45;
              }
            }

            if (v29 < v30)
            {
              continue;
            }
          }

LABEL_45:
          v31 = 0;
          v47 = MD5;
          v45 = v23;
          v46 = v22;
          while (1)
          {
            v32 = *(&v47 + v31);
            v33 = *(&v45 + v31);
            if (v32 != v33)
            {
              break;
            }

            if (++v31 == 16)
            {
              goto LABEL_74;
            }
          }

          if (v32 > v33)
          {
            v34 = 0;
            v47 = MD5;
            v45 = v18;
            v46 = v19;
            while (1)
            {
              v35 = *(&v47 + v34);
              v36 = *(&v45 + v34);
              if (v35 != v36)
              {
                break;
              }

              if (++v34 == 16)
              {
                goto LABEL_74;
              }
            }

            v12 = v16 - v12;
            v11 = v21;
            if (v35 < v36)
            {
              continue;
            }
          }

          goto LABEL_74;
        }

        v38 = v21[2];
      }
    }

    break;
  }

LABEL_70:
  if ((v38 - 1) > 0x1C)
  {
    goto LABEL_74;
  }

LABEL_71:
  v41 = creators_for_id[v38];
  v42 = *MEMORY[0x1E69E9840];

  return v41();
}

void __find_matching_profile_id_rgb_display_block_invoke()
{
  v0 = malloc_type_malloc(0x330uLL, 0x1000040C9D4F132uLL);
  find_matching_profile_id_rgb_display_md5_id_pair_array = v0;
  find_matching_profile_id_rgb_display_md5_id_pair_count = 1;
  memcpy(v0, &rgb_pairs, 0x330uLL);

  qsort(v0, 0x22uLL, 0x18uLL, compare_pairs);
}

uint64_t compare_pairs(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v8 = *a2;
  v9 = v3;
  while (1)
  {
    v4 = *(&v9 + v2);
    v5 = *(&v8 + v2);
    if (v4 != v5)
    {
      break;
    }

    if (++v2 == 16)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_8;
    }
  }

  if (v4 > v5)
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFData *ColorSyncProfileHasBT709_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    LOBYTE(v6) = 0;
    return (v6 & 1);
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    v4 = CICPInfo[1];
    v5 = v4 >= 0x10;
    v6 = 0xC042u >> v4;
    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    return (v6 & 1);
  }

  return ColorSyncProfileUsesITU_R709OETF(a1);
}

BOOL ColorSyncProfileHasLinear_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    return CICPInfo[1] == 8;
  }

  else
  {
    return ColorSyncProfileEstimateGamma(a1, v4) == 1.0;
  }
}

BOOL ColorSyncProfileHasSRGB_Transfer(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  CICPInfo = ColorSyncProfileGetCICPInfo(a1);
  if (CICPInfo)
  {
    return CICPInfo[1] == 13;
  }

  return ColorSyncProfileUsesSRGBGamma(a1);
}

uint64_t ColorSync_vImageConvert_16Uto16F(uint64_t a1, uint64_t a2)
{
  v4 = ColorSync_vImageConvert_16Uto16F_ptr__;
  if (!ColorSync_vImageConvert_16Uto16F_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v5 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v5 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_16Uto16F");
    }

    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = vImage_smart_null;
    }

    ColorSync_vImageConvert_16Uto16F_ptr__ = v4;
  }

  return (v4)(a1, a2, 0);
}

void __ColorSyncLoadvImageDYLD_block_invoke()
{
  ColorSyncLoadvImageDYLD_handle = dlopen("/System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage", 5);
  if (!ColorSyncLoadvImageDYLD_handle)
  {
    ColorSyncLog(2, "Failed to load %s", v0, v1, v2, v3, v4, v5, "/System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage");
  }
}

uint64_t ColorSync_vImageConvert_16UToF(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v6 = ColorSync_vImageConvert_16UToF_ptr__;
  if (!ColorSync_vImageConvert_16UToF_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v7 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v7 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_16UToF");
    }

    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = vImage_smart_null;
    }

    ColorSync_vImageConvert_16UToF_ptr__ = v6;
  }

  a4.n128_u32[0] = 931135616;
  a3.n128_u64[0] = 0;

  return (v6)(a1, a2, 0, a3, a4);
}

uint64_t ColorSync_vImageConvert_Fto16F(uint64_t a1, uint64_t a2)
{
  v4 = ColorSync_vImageConvert_Fto16F_ptr__;
  if (!ColorSync_vImageConvert_Fto16F_ptr__)
  {
    if (ColorSyncLoadvImageDYLD_once != -1)
    {
      dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
    }

    v5 = ColorSyncLoadvImageDYLD_handle;
    if (ColorSyncLoadvImageDYLD_handle)
    {
      v5 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_PlanarFtoPlanar16F");
    }

    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = vImage_smart_null;
    }

    ColorSync_vImageConvert_Fto16F_ptr__ = v4;
  }

  return (v4)(a1, a2, 0);
}

const void *ColorSyncOptionsGetReferenceWhiteToneMappingOptions(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.ApplyToneMaping");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryGetValue(v2, @"com.apple.cmm.ApplyReferenceWhiteToneMapping");
}

float ColorSyncOptionsGetSDRToPQScale(const void *a1)
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

  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.SkipBoostToHDR");
  result = 203.0;
  if (Value == *MEMORY[0x1E695E4D0])
  {
    return 100.0;
  }

  return result;
}

uint64_t int32_from_dictionary_with_default(const void *a1, const void *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr) == 1)
        {
          return valuePtr;
        }

        else
        {
          return a3;
        }
      }
    }
  }

  return a3;
}

float float_from_dictionary_with_default(const void *a1, const void *a2, float a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr) == 1)
        {
          return valuePtr;
        }
      }
    }
  }

  return a3;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a2 + 60);
  *(v2 + 40) = a2[1];
  *(v2 + 84) = v5;
  *(v2 + 72) = v3;
  *(v2 + 56) = v4;
  *(v2 + 24) = *a2;
  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = a1[6];
    v7 = *(*(a1[4] + 8) + 76);
    v8 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = bswap32(v6);
    v19 = *(*(a1[5] + 8) + 24);
    v9 = (v19 + 12);
    do
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      ColorSyncTRCGetFunction(*(v7 + 8 * *(a4 + 8 * v5)), v21);
      v10 = v21[0];
      if (LODWORD(v21[0]) >= 0xA)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 199, "0");
      }

      ColorSyncTRCGetProperties(*(v7 + 8 * *(a4 + 8 * v5)));
      if (v10 != 5)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 213, "trc.type == kColorSyncTRCTable");
      }

      if (*(v21 + 4) != v6)
      {
        __assert_rtn("handle_trc_stage", "ColorSyncProfileMakeCopyWithLUTBasedLumaScaling.c", 216, "table_count == trc.u.table.size");
      }

      v11 = (v19 + v5 * v8);
      *v11 = 1987212643;
      v11[2] = v18;
      if (v6)
      {
        v12 = *(v21 + 12);
        v13 = v9;
        v14 = v6;
        do
        {
          v15 = *v12++;
          v16 = ((powf(v15, 0.2) * 65535.0) + 0.5);
          if (v16 >= 0xFFFF)
          {
            v16 = 0xFFFF;
          }

          *v13++ = bswap32(v16 & ~(v16 >> 31)) >> 16;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v9 = (v9 + v8);
    }

    while (v5 != a3);
  }

  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[4] + 8) + 84);
  memset(v15, 0, sizeof(v15));
  ColorSyncMatrixGetFunction(*(v6 + 8 * a3), v15);
  ColorSyncMatrixGetProperties(*(v6 + 8 * a3));
  if (v4)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      v9 = v8;
      v10 = 3;
      do
      {
        v11 = v5 * 0.5 * *v9;
        v12 = v11 * 65536.0;
        if (v12 <= 0.0)
        {
          if (v12 < 0.0)
          {
            v12 = v12 + -0.5;
          }
        }

        else
        {
          v12 = v12 + 0.5;
        }

        if (v12 >= 2147500000.0)
        {
          v13 = 0x7FFFFFFF;
        }

        else if (v12 <= -2147500000.0)
        {
          v13 = 0x80000000;
        }

        else
        {
          v13 = v12;
        }

        *v4++ = bswap32(v13);
        ++v9;
        --v10;
      }

      while (v10);
      ++v7;
      v8 += 4;
    }

    while (v7 != 3);
  }

  return 1;
}

uint64_t __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = a1[8];
  v7 = *(a1[7] + 8);
  v8 = *(*(a1[4] + 8) + 92);
  memset(v50, 0, 36);
  ColorSyncNxMGetFunction(*(v8 + 8 * a3), v50);
  ColorSyncNxMGetProperties(*(v8 + 8 * a3));
  if (LODWORD(v50[0]) == 11)
  {
    v9 = *(&v50[1] + 12);
    *(v7 + 24) = *(*(&v50[1] + 12) + 24);
    if (v6)
    {
      v10 = 0;
      v11 = (v6 - 1);
      v12 = v9 + 36;
      v13 = *(v9 + 28) - 1;
      v14 = v13;
      _S12 = 1199570688;
      do
      {
        v46 = v10;
        v49 = powf(v10 / v11, 5.0);
        for (i = 0; i != v6; ++i)
        {
          v17 = powf(i / v11, 5.0);
          v18 = 0;
          v47 = __PAIR64__(LODWORD(v17), LODWORD(v49));
          v48 = v17;
          do
          {
            v19 = v4;
            v20 = powf(v18 / v11, 5.0);
            if (v48 <= v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = v48;
            }

            v21.i32[0] = *(v9 + 4);
            if (v49 > v22)
            {
              v22 = v49;
            }

            v23 = (((v48 * *(v9 + 12)) + (v49 * *(v9 + 8))) + (v20 * *(v9 + 16))) + (v22 * *(v9 + 20));
            v24 = fmaxf(fabsf(v23), 1.1755e-38) * v14;
            if (v24 > v14)
            {
              v24 = v13;
            }

            v25 = v24;
            v26 = v24 - v24;
            v27 = *(v12 + 4 * v25);
            if (v13 >= v25 + 1)
            {
              v28 = v25 + 1;
            }

            else
            {
              v28 = v13;
            }

            if (v23 >= 0.0)
            {
              v29 = v27 + ((*(v12 + 4 * v28) - v27) * v26);
            }

            else
            {
              v29 = -(v27 + ((*(v12 + 4 * v28) - v27) * v26));
            }

            v30 = v20 * v29;
            if (v30 <= *v21.i32)
            {
              v31 = v30;
            }

            else
            {
              v31 = *(v9 + 4);
            }

            if (v30 >= 0.0)
            {
              v32 = v31;
            }

            else
            {
              v32 = 0.0;
            }

            v33 = ((v32 * 65535.0) + 0.5);
            if (v33 >= 0xFFFF)
            {
              v33 = 0xFFFF;
            }

            v34 = vmul_n_f32(v47, v29);
            v35 = vdup_lane_s32(v21, 0);
            _D1 = vbic_s8(vbsl_s8(vcgt_f32(v34, v35), v35, v34), vcltz_f32(v34));
            v37 = ((*_D1.i32 * 65535.0) + 0.5);
            v38 = bswap32(v33 & ~(v33 >> 31)) >> 16;
            if (v37 >= 0xFFFF)
            {
              v37 = 0xFFFF;
            }

            v4[2] = v38;
            __asm { FMLA            S2, S12, V1.S[1] }

            *v4 = bswap32(v37 & ~(v37 >> 31)) >> 16;
            v4 += 3;
            if (_S2 >= 0xFFFF)
            {
              v44 = 0xFFFF;
            }

            else
            {
              v44 = _S2;
            }

            v19[1] = bswap32(v44 & ~(v44 >> 31)) >> 16;
            *v5 = _D1;
            *(v5 + 8) = v32;
            v5 += 12;
            ++v18;
          }

          while (v6 != v18);
        }

        v10 = v46 + 1;
      }

      while (v46 + 1 != v6);
    }
  }

  return 1;
}

ColorSyncProfile *ColorSyncProfileCreateWithAdaptiveSoftClipCurve(__int16 a1, float a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a2 <= 1.0)
  {
    goto LABEL_51;
  }

  CopyWithFlexGTC = 0;
  if (((a1 & 0xFD) == 9 || (a1 & 0xFB) == 1 || a1 == 12) && HIBYTE(a1) <= 0x12u)
  {
    CopyWithFlexGTC = 0;
    if (a1 & 0xFF00) == 0x1000 && ((0x5E142u >> SHIBYTE(a1)))
    {
      v6 = 0;
      if (a1 > 8u)
      {
        if (a1 == 9)
        {
          v6 = kColorSyncITUR2100_PQProfile[0];
        }

        else if (a1 == 12)
        {
          v6 = kColorSyncDisplayP3_PQProfile[0];
        }
      }

      else if (a1 == 1 || a1 == 5)
      {
        v6 = kColorSyncITUR709_PQProfile[0];
      }

      v7 = ColorSyncProfileCreateWithName(v6);
      if (v7)
      {
        v8 = v7;
        v9 = &v77;
        __x = a2;
        v52 = 0.0001 / a2;
        v10 = log(a2);
        v11 = 0;
        v12 = fmin(v10 / 2.07944154, 1.0) * -0.2 + 1.0;
        if (v12 <= 1.0 / a2)
        {
          v13 = 1.0 / __x;
        }

        else
        {
          v13 = v12;
        }

        v14 = vdupq_lane_s64(COERCE__INT64(__x + -1.0), 0);
        v15 = vdupq_lane_s64(COERCE__INT64(1.0 - v13), 0);
        v74 = 0u;
        v75 = 0u;
        v50 = v13;
        v16 = vdupq_lane_s64(*&v13, 0);
        v72 = 0u;
        v73 = 0u;
        __asm { FMOV            V3.2D, #1.0 }

        do
        {
          *(&v74 + v11 * 16) = vmlaq_f64(_Q3, v14, xmmword_19AA8FDF8[v11]);
          *(&v72 + v11 * 16) = vmlaq_f64(v16, v15, xmmword_19AA8FE18[v11]);
          ++v11;
        }

        while (v11 != 2);
        v21 = log2(__x);
        v66 = v52;
        v67[0] = 0.5 / __x;
        v67[1] = 1.0 / __x;
        v22 = vdupq_lane_s64(*&__x, 0);
        v68 = vdivq_f64(v74, v22);
        v69 = vdivq_f64(v75, v22);
        v70 = __x * 0.98 / __x;
        v71 = 0x3FF0000000000000;
        v60 = vdivq_f64(vmulq_n_f64(xmmword_19A96E4F0, v50), v22);
        v61 = v50 / __x;
        v62 = vdivq_f64(v72, v22);
        v63 = vdivq_f64(v73, v22);
        v64 = 1.0 / __x;
        v65 = 1.0 / __x;
        v59 = 0;
        memset(v58, 0, sizeof(v58));
        v57 = 0;
        memset(v56, 0, sizeof(v56));
        if (__x >= 1.005)
        {
          for (i = 0; i != 9; ++i)
          {
            *(v58 + i * 8) = log2(v67[i - 1] / v60.f64[i]) / v21;
          }

          v24 = 0;
          v25 = vdupq_lane_s64(*&v52, 0);
          v26 = v58;
          v27 = vld1q_dup_f64(v26);
          do
          {
            v28 = *(&v58[v24 / 0x10] + 8);
            v29 = *&v67[v24 / 8];
            *(&v56[v24 / 0x10] + 8) = vdivq_f64(vsubq_f64(v28, vextq_s8(v27, v28, 8uLL)), vsubq_f64(v29, vextq_s8(v25, v29, 8uLL)));
            v24 += 16;
            v25 = v29;
            v27 = v28;
          }

          while (v24 != 64);
        }

        v30 = v21;
        keys = kColorSyncGUID;
        v85 = kColorSyncGainMapMin;
        v86 = kColorSyncGainMapMax;
        v87 = kColorSyncGainMapGamma;
        v88 = kColorSyncGainMapBaselineConst;
        v89 = kColorSyncGainMapAlternateConst;
        v90 = kColorSyncGainMapBaselineHeadroom;
        v91 = kColorSyncGainMapAlternateHeadroom;
        *&v93.byte0 = 0;
        *&v93.byte8 = 0;
        values = CFUUIDCreateFromUUIDBytes(0, v93);
        valuePtr = 0.0;
        v77 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = -v30;
        v78 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 1.0;
        v79 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v80 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v81 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = v30;
        v82 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        valuePtr = 0.0;
        v83 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        v31 = CFDictionaryCreate(0, &keys, &values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        for (j = 0; j != 64; j += 8)
        {
          CFRelease(*(&values + j));
        }

        if (v31)
        {
          Mutable = CFArrayCreateMutable(0, 9, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v34 = Mutable;
            v51 = v31;
            __xa = v8;
            v35 = 0;
            v36 = MEMORY[0x1E695E9D8];
            v37 = MEMORY[0x1E695E9E8];
            do
            {
              keys = kColorSyncFlexGTCNodeX;
              v85 = kColorSyncFlexGTCNodeY;
              v86 = kColorSyncFlexGTCNodeSlope;
              values = 0;
              v77 = 0;
              v78 = 0;
              v38 = v67[v35 - 1];
              valuePtr = v38;
              values = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v39 = *(v58 + v35);
              valuePtr = v39;
              v77 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v40 = *(v56 + v35);
              valuePtr = v40;
              v78 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
              v41 = CFDictionaryCreate(0, &keys, &values, 3, v36, v37);
              for (k = 0; k != 24; k += 8)
              {
                v43 = *(&values + k);
                if (v43)
                {
                  CFRelease(v43);
                }
              }

              if (v41)
              {
                CFArrayAppendValue(v34, v41);
                CFRelease(v41);
              }

              ++v35;
            }

            while (v35 != 9);
            keys = kColorSyncMonoGainMapParams;
            v85 = kColorSyncPreGainMapCICP;
            v86 = kColorSyncMonoFlexGTCNodeTable;
            v87 = kColorSyncFlexGTCName;
            values = v51;
            valuePtr = 2.3516e-38;
            v77 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            v78 = v34;
            v79 = @"Adaptive Soft Clip Curve";
            v44 = CFDictionaryCreate(0, &keys, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v45 = 0;
            do
            {
              v46 = v45;
              if (*v9)
              {
                CFRelease(*v9);
              }

              v45 = 1;
              v9 = &v78;
            }

            while ((v46 & 1) == 0);
            CFRelease(v51);
            if (v44)
            {
              CopyWithFlexGTC = ColorSyncProfileCreateCopyWithFlexGTC(__xa, v44, v47);
              CFRelease(v44);
              goto LABEL_52;
            }
          }

          else
          {
            CFRelease(v31);
          }
        }
      }

LABEL_51:
      CopyWithFlexGTC = 0;
    }
  }

LABEL_52:
  v48 = *MEMORY[0x1E69E9840];
  return CopyWithFlexGTC;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
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
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}