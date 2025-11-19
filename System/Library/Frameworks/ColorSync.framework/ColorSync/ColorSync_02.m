uint64_t __current_or_newer_sdk_block_invoke()
{
  current_or_newer_sdk_linked_on_glow_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_crystal_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_sapphire_or_later = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_moonstone_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  current_or_newer_sdk_linked_on_constellation_or_later = result;
  return result;
}

const UInt8 *___ZL14sRGBTRCDataPtrv_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  sRGBTRCDataPtr(void)::sRGBTRCDataRef = ColorSyncProfileCopyTag(v0, @"rTRC");
  result = CFDataGetBytePtr(sRGBTRCDataPtr(void)::sRGBTRCDataRef);
  sRGBTRCDataPtr(void)::ptr = (result + 12);
  return result;
}

void ___ZL27CMMInitializeSRGBGammaTablev_block_invoke()
{
  v24 = 0;
  CMMMemMgr::CMMMemMgr(&v24);
  v2 = CMMBase::NewInternal(0x28, &v24, v0, v1);
  v2[2] = 0;
  v2[3] = &ksRGBGammaData;
  *v2 = &unk_1F0E09180;
  v2[1] = 0;
  v2[4] = 21512;
  CMMsRGBGammaTable = v2;
  v5 = CMMBase::NewInternal(0x28, &v24, v3, v4);
  v5[2] = 0;
  v5[3] = &kInvsRGBGammaData;
  *v5 = &unk_1F0E09180;
  v5[1] = 0;
  v5[4] = 21512;
  CMMInvsRGBGammaTable = v5;
  v8 = CMMBase::NewInternal(0x38, &v24, v6, v7);
  CMMsRGBGammaFloatLutInfo = v8;
  *v8 = 0x100000001;
  *(v8 + 3) = 3;
  v8[2] = 0;
  *(v8 + 8) = 0;
  *(v8 + 3) = xmmword_19A96E270;
  *(v8 + 5) = xmmword_19A96E280;
  v11 = CMMBase::NewInternal(0x38, &v24, v9, v10);
  CMMInvsRGBGammaFloatLutInfo = v11;
  v12 = *(CMMsRGBGammaFloatLutInfo + 28);
  v23 = *(CMMsRGBGammaFloatLutInfo + 24);
  v13 = *(CMMsRGBGammaFloatLutInfo + 32);
  v14 = *(CMMsRGBGammaFloatLutInfo + 36);
  v15 = *(CMMsRGBGammaFloatLutInfo + 40);
  *v11 = 0x400000001;
  v11[1].i32[1] = 4;
  v11[2] = 0;
  v11[1].i8[0] = 0;
  v16 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v12, v23)), LODWORD(v23));
  __asm { FMOV            V0.2S, #1.0 }

  v11[3] = vdiv_f32(_D0, v16);
  v11[4].i32[0] = 0;
  v22 = 1.0 / v14;
  if (v14 == 0.0)
  {
    v22 = 0.0;
  }

  v11[4].f32[1] = v22;
  v11[5].f32[0] = v14 * v15;
  v11[5].f32[1] = -v13 / v12;
  v11[6] = 0;
  CMMMemMgr::ReleaseMemList(&v24);
}

void sub_19A92BE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

BOOL IsSRGBGammaCurve(unsigned int a1, unsigned __int16 *__s1)
{
  if (a1 == 26)
  {
    v3 = 0;
    do
    {
      v4 = __s1[v3];
      v5 = IsSRGBGammaCurve(unsigned int,unsigned short *)::instagramGamma[v3];
      result = v4 == v5;
      if (v4 != v5)
      {
        break;
      }
    }

    while (v3++ != 25);
  }

  else
  {
    if (a1 < 0x80)
    {
      return 0;
    }

    if (a1 == 1024)
    {
      if (sRGBTRCDataPtr(void)::predicate != -1)
      {
        dispatch_once(&sRGBTRCDataPtr(void)::predicate, &__block_literal_global_984);
      }

      if (sRGBTRCDataPtr(void)::ptr && !memcmp(__s1, sRGBTRCDataPtr(void)::ptr, 0x800uLL))
      {
        return 1;
      }
    }

    if ((bswap32(*__s1) >> 16) / 65535.0 <= 0.0001 && (v9 = a1 - 1, fabs((bswap32(__s1[v9]) >> 16) / 65535.0 + -1.0) <= 0.0001) && (v10 = v9, vabdd_f64((bswap32(__s1[a1 >> 1]) >> 16) / 65535.0, pow(((a1 >> 1) / v9 + 0.055) / 1.055, 2.4)) <= 0.0001))
    {
      v11 = v9 - 2;
      v12 = 1;
      do
      {
        v13 = v12 / v10;
        v14 = __s1[v12];
        if (v13 <= 0.04045)
        {
          v15 = v13 / 12.92;
        }

        else
        {
          v15 = pow((v13 + 0.055) / 1.055, 2.4);
        }

        v16 = vabdd_f64((bswap32(v14) >> 16) / 65535.0, v15);
        v18 = v11-- != 0;
        result = v16 <= 0.0001;
        if (v16 > 0.0001)
        {
          break;
        }

        ++v12;
      }

      while (v18);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMConvInvertedTRC::CMMConvInvertedTRC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, int a8, char a9)
{
  result = CMMConvTRC::CMMConvTRC(a1, a2, a3, a4, a6, a7, a8, 1, 1.0, 1, a9);
  *result = &unk_1F0E06EB0;
  *(result + 168) = a5;
  *(result + 35) = 0;
  *(result + 36) = a9;
  if (a5)
  {
    v11 = *(a5 + 8);
    if (v11)
    {
      *(a5 + 8) = v11 + 1;
    }
  }

  return result;
}

CMMConvNode *CMMConvNode::RemoveNOPs(CMMConvNode *this, unint64_t *a2, _BOOL4 a3)
{
  if ((*a2)--)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294967125;
  }

  CMMThrowExceptionOnError(v7);
  if (((*(*this + 80))(this) & 1) != 0 || a3 && (*(*this + 224))(this))
  {
    if (*(this + 35) == 1)
    {
      v8 = *(this + 3);
      if (v8)
      {
        (*(*v8 + 48))(v8);
      }

      else
      {
        v11 = *(this + 2);
        if (v11)
        {
          (*(*v11 + 24))(v11);
        }
      }
    }

    if (*(this + 36) == 1)
    {
      v12 = *(this + 2);
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      else
      {
        v13 = *(this + 3);
        if (v13)
        {
          (*(*v13 + 48))(v13);
        }
      }
    }

    v14 = *(this + 2);
    *(this + 2) = 0;
    if (v14)
    {
      *(v14 + 3) = *(this + 3);
      v15 = CMMConvNode::RemoveNOPs(v14, a2, a3);
    }

    else
    {
      v15 = 0;
    }

    (*(*this + 8))(this);
    return v15;
  }

  else
  {
    v9 = *(this + 2);
    if (v9)
    {
      v10 = CMMConvNode::RemoveNOPs(v9, a2, a3);
      *(this + 2) = v10;
      if (v10)
      {
        *(v10 + 24) = this;
      }
    }
  }

  return this;
}

BOOL CMMConvTRC::IsNOP(CMMConvTRC *this)
{
  if (*(this + 32))
  {
    return 1;
  }

  if (*(this + 35) & 1) != 0 || (*(this + 36))
  {
    return 0;
  }

  if (*(this + 23) == 7)
  {
    return 1;
  }

  v2 = CMMTable::UInt8Data(*(*(this + 8) + 16), *(*(this + 8) + 24));
  if (!v2)
  {
    return 1;
  }

  v3 = (v2 + 8);
  v4 = 0x2000;
  do
  {
    v5 = *v3++;
    result = v4 == v5;
    if (v4 != v5)
    {
      break;
    }

    v6 = v4 == 16769024;
    v4 += 4096;
  }

  while (!v6);
  return result;
}

uint64_t CMMConvMatrix::IsNOP(CMMConvMatrix *this)
{
  if (*(this + 32))
  {
    return 1;
  }

  if (*(this + 40) == 1.0)
  {
    v2 = 0;
    v3 = this + 100;
    v4 = this + 136;
    v5 = this + 148;
    v6 = (this + 100);
LABEL_7:
    v7 = v6;
    v8 = 3;
    while (*(v7 - 9) == (v2 + v8 == 3) << 16)
    {
      if (v2 + v8 == 3)
      {
        result = 0;
        v9 = *&v3[12 * v2 + 4 * v2];
        if (v9 < 0.99999 || v9 > 1.00001)
        {
          return result;
        }
      }

      else if (fabsf(*v7) > 0.00001)
      {
        return 0;
      }

      ++v7;
      if (!--v8)
      {
        if (*&v4[4 * v2] || fabsf(*&v5[4 * v2]) > 0.00001)
        {
          return 0;
        }

        ++v2;
        v6 += 3;
        result = 1;
        if (v2 != 3)
        {
          goto LABEL_7;
        }

        return result;
      }
    }
  }

  return 0;
}

uint64_t CMMCurveTag::Validate(CMMCurveTag *this)
{
  result = (*(*this + 40))(this);
  if (result)
  {
    if (2 * result > *(this + 4) - 12 || *(this + 4) - 12 <= 0)
    {
      return 4294967126;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *ColorSyncOptionsReferenceWhiteReferredToneMappingRequested(const __CFDictionary *result)
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
        result = CFDictionaryGetValue(v1, @"com.apple.cmm.ApplyReferenceWhiteToneMapping");
        if (result)
        {
          v3 = CFGetTypeID(result);
          return (v3 == CFDictionaryGetTypeID());
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

const void *ColorSyncOptionsGetFlexTRCOptions(const ColorSyncProfile *a1, CFTypeRef cf)
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

  return CFDictionaryGetValue(v6, @"com.apple.cmm.ApplyFlexTRC");
}

BOOL CMMProfile::UseNamedColor(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 44) == 1852662636 && (a3 == 6 || a3 == 3))
  {
    result = ColorSyncProfileContainsTag(*(a1 + 16), @"ncl2");
    if (!result)
    {
      return result;
    }

    Tag = CMMProfile::GetTag(a1, 1852009522);
    if (Tag)
    {
      v7 = **Tag;
    }

    else
    {
      v8 = 0;
    }

    v9 = CMMProfile::GetTag(a2, 1852009522);
    if (v9)
    {
      v10 = **v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 4294967126;
    }

    else
    {
      v13 = 0;
    }

    CMMThrowExceptionOnError(v13);
    v15 = *(a1 + 48);
    if (v15 <= 1296255029)
    {
      if (v15 == 1281450528)
      {
        v15 = 1145856354;
      }

      else if (v15 == 1296255029)
      {
        v15 = 893602898;
      }
    }

    else
    {
      switch(v15)
      {
        case 1296255030:
          v15 = 910380114;
          break;
        case 1296255031:
          v15 = 927157330;
          break;
        case 1296255032:
          v15 = 943934546;
          break;
      }
    }

    v14 = v8[22];
    if (CMMGetChannelCountFromCMMSpace(v15) == v14 && *(v8 + 92) && *(v8 + 124) && !strcmp(v8 + 92, v11 + 92) && !strcmp(v8 + 124, v11 + 124))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CMMConvTRC::CMMConvTRC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, int a7, int a8, float a9, char a10, char a11)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  if (a6)
  {
    *(a6 + 16) = a1;
  }

  *(a1 + 40) = 0;
  *(a1 + 44) = a9;
  *(a1 + 33) = a8;
  *(a1 + 34) = a10;
  *(a1 + 35) = a11;
  *(a1 + 36) = 0;
  *a1 = &unk_1F0E06B40;
  *(a1 + 64) = a3;
  *(a1 + 72) = a2;
  *(a1 + 76) = a7;
  *(a1 + 80) = a4;
  v13 = *a5;
  v14 = a5[1];
  v15 = a5[2];
  *(a1 + 136) = *(a5 + 6);
  *(a1 + 120) = v15;
  *(a1 + 104) = v14;
  *(a1 + 88) = v13;
  v16 = a3;
  if (!*(a1 + 88))
  {
    v17 = *(a1 + 104);
    if (!v17)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

    v18 = v17[1];
    if (v18)
    {
      v17[1] = v18 + 1;
    }

    v16 = a3;
    if (a8)
    {
      v19 = CMMTable::UInt8Data(v17[2], v17[3]);
      v20 = (*(*(a1 + 104) + 32) >> 2) - 1;
      v21 = *(v19 + ((2 * v20) & 0xFFFFFFFFFFFFFFFCLL));
      v22 = *v19;
      v23 = (v21 - *v19) + (v21 - *v19);
      v24 = v19[v20];
      v25 = (v24 - v21) + (v24 - v21);
      *(a1 + 144) = v23;
      *(a1 + 148) = v22;
      *(a1 + 152) = v25;
      *(a1 + 156) = v24 - v25;
      v16 = *(a1 + 64);
    }
  }

  v26 = *(v16 + 8);
  if (v26)
  {
    *(v16 + 8) = v26 + 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 160) = 0;
  *(a1 + 48) = CMMTable::UInt8Data(*(a3 + 16), *(a3 + 24)) + 16388;
  *(a1 + 56) = CMMTable::UInt8Data(*(a3 + 16), *(a3 + 24)) + 17412;
  v27 = CMMTable::UInt8Data(*(*(a1 + 64) + 16), *(*(a1 + 64) + 24)) == &kOnePointEightGammaData || CMMTable::UInt8Data(*(*(a1 + 64) + 16), *(*(a1 + 64) + 24)) == &kInvOnePointEightGammaData;
  *(a1 + 161) = v27;
  return a1;
}

void CMMMatrix::MakeMatrixConv(CMMMatrix *this, CMMMemMgr *a2, CMMConvNode *a3, const char *a4)
{
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6)
  {
    if (v7)
    {
      if (*(this + 5) && *(this + 7) && *(this + 8) && *(this + 9) && !*(this + 20) && !*(this + 21) && !*(this + 22))
      {
        v8 = CMMBase::NewInternal(0xA8, a2, a3, a4);
        CMMConvMatrix::CMMConvMatrix(v8, this, a3, 2.0, v9, 0, 0);
LABEL_78:
        v19 = &unk_1F0E0ACD0;
        goto LABEL_74;
      }

      goto LABEL_12;
    }

LABEL_27:
    if (*(this + 2))
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    else
    {
      if (!*(this + 5) && !*(this + 6) && !*(this + 7) && !*(this + 8) && !*(this + 9) && !*(this + 10) && !*(this + 20) && !*(this + 21) && !*(this + 22))
      {
        v39 = CMMBase::NewInternal(0xA8, a2, a3, a4);
        CMMConvMatrix::CMMConvMatrix(v39, this, a3, 1.0, v40, 1, 0);
        v19 = &unk_1F0E0B030;
        goto LABEL_74;
      }

      v13 = 0;
      v11 = 1;
      v12 = 1;
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    if (!*(this + 6) && !*(this + 7) && !*(this + 9) && !*(this + 10) && !*(this + 20) && !*(this + 21) && !*(this + 22))
    {
      v31 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v31, this, a3, 2.0, v32, 0, 1);
      v19 = &unk_1F0E0ADD8;
      goto LABEL_74;
    }

    if (!*(this + 5) && !*(this + 7) && !*(this + 8) && !*(this + 9) && !*(this + 20) && !*(this + 21) && !*(this + 22))
    {
      v33 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v33, this, a3, 1.0, v34, 0, 0);
      v19 = &unk_1F0E0AEE0;
      goto LABEL_74;
    }

    goto LABEL_27;
  }

LABEL_12:
  v11 = 0;
  v12 = *(this + 2) == 0;
  v13 = 1;
LABEL_39:
  if (!*(this + 20) && !*(this + 7) && !*(this + 8) && !*(this + 9) && !*(this + 10) && !*(this + 20) && !*(this + 21) && !*(this + 22))
  {
    v35 = CMMBase::NewInternal(0xA8, a2, a3, a4);
    CMMConvMatrix::CMMConvMatrix(v35, this, a3, 1.0, v36, 0, 0);
    v19 = &unk_1F0E0B138;
    goto LABEL_74;
  }

  if (v11)
  {
    if (!*(this + 6) && !*(this + 7) && !*(this + 9) && !*(this + 21))
    {
      v27 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v27, this, a3, 2.0, v28, 0, 0);
      v19 = &unk_1F0E0B288;
      goto LABEL_74;
    }

    if (v12 && !*(this + 7) && !*(this + 8) && !*(this + 20))
    {
      v25 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v25, this, a3, 1.0, v26, 0, 0);
      v19 = &unk_1F0E0B390;
      goto LABEL_74;
    }
  }

  if (!(v6 | v13 | *(this + 5)) && !*(this + 6) && !*(this + 7) && !*(this + 8) && !*(this + 9))
  {
    if (!*(this + 10) && !*(this + 20))
    {
      v29 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v29, this, a3, 1.0, v30, 0, 1);
      v19 = &unk_1F0E0B498;
      goto LABEL_74;
    }

    if (!*(this + 9) && !*(this + 10) && !*(this + 20) && !*(this + 21) && !*(this + 22))
    {
      v37 = CMMBase::NewInternal(0xA8, a2, a3, a4);
      CMMConvMatrix::CMMConvMatrix(v37, this, a3, 1.0, v38, 1, 0);
      v19 = &unk_1F0E0B5E8;
      goto LABEL_74;
    }
  }

  if (!*(this + 20) && !*(this + 21) && !*(this + 22))
  {
    v10 = CMMBase::NewInternal(0xA8, a2, a3, a4);
    *(v10 + 2) = 1;
    v10[2] = 0;
    v10[3] = a3;
    if (a3)
    {
      *(a3 + 2) = v10;
    }

    v10[5] = 0x3FFFFF0000000000;
    *(v10 + 33) = 0;
    *v10 = &unk_1F0E072B8;
    v10[7] = &unk_1F0E071F8;
    v20 = *(this + 8);
    v21 = *(this + 40);
    *(v10 + 5) = *(this + 24);
    *(v10 + 6) = v21;
    *(v10 + 4) = v20;
    v22 = *(this + 56);
    v23 = *(this + 72);
    v24 = *(this + 88);
    *(v10 + 40) = *(this + 26);
    *(v10 + 8) = v23;
    *(v10 + 9) = v24;
    *(v10 + 7) = v22;
    *(v10 + 24) = 0;
    *(v10 + 16) = 256;
    *(v10 + 35) = 0;
    goto LABEL_78;
  }

  v10 = CMMBase::NewInternal(0xA8, a2, a3, a4);
  *(v10 + 2) = 1;
  v10[2] = 0;
  v10[3] = a3;
  if (a3)
  {
    *(a3 + 2) = v10;
  }

  v10[5] = 0x3F80000000000000;
  *(v10 + 33) = 0;
  *v10 = &unk_1F0E072B8;
  v10[7] = &unk_1F0E071F8;
  v14 = *(this + 8);
  v15 = *(this + 40);
  *(v10 + 5) = *(this + 24);
  *(v10 + 6) = v15;
  *(v10 + 4) = v14;
  v16 = *(this + 56);
  v17 = *(this + 72);
  v18 = *(this + 88);
  *(v10 + 40) = *(this + 26);
  *(v10 + 8) = v17;
  *(v10 + 9) = v18;
  *(v10 + 7) = v16;
  *(v10 + 24) = 0;
  *(v10 + 16) = 256;
  *(v10 + 35) = 0;
  v19 = &unk_1F0E0B738;
LABEL_74:
  *v10 = v19;
}

uint64_t CMMTable::UInt8Data(uint64_t this, uint64_t a2)
{
  if (this)
  {
    if (!a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a2)
  {
    return a2;
  }

  return this;
}

void CMMConvMatrix::CMMConvMatrix(CMMConvMatrix *this, const CMMMatrix *a2, CMMConvNode *a3, float a4, float a5, char a6, char a7)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a3;
  if (a3)
  {
    *(a3 + 2) = this;
  }

  *(this + 10) = 0;
  *(this + 11) = a4;
  *(this + 33) = 0;
  *this = &unk_1F0E072B8;
  *(this + 7) = &unk_1F0E071F8;
  v7 = *(a2 + 8);
  v8 = *(a2 + 40);
  *(this + 5) = *(a2 + 24);
  *(this + 6) = v8;
  *(this + 4) = v7;
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  *(this + 40) = *(a2 + 26);
  *(this + 8) = v10;
  *(this + 9) = v11;
  *(this + 7) = v9;
  *(this + 48) = a7;
  *(this + 49) = a6;
  *(this + 16) = 256;
  *(this + 35) = 0;
}

CMMTable *CMMCurveTag::MakeInvertedTRC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v8 = (*(*v0 + 48))(v0);
  v9 = (*(*v7 + 40))(v7);
  if ((*(*v7 + 40))(v7) == 1)
  {
    v10 = *(*(*v7 + 48))(v7);
    if (v10 == 1)
    {
      if (CMMInitializeLinearGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
      }

      v11 = CMMLinearGammaTable;
      v12 = *(CMMLinearGammaTable + 8);
      if (v12)
      {
        *(CMMLinearGammaTable + 8) = ++v12;
      }

      *v2 = v11;
      if (!v6)
      {
        goto LABEL_28;
      }

      v14 = *(CMMLinearGammaFloatLutInfo + 16);
      v13 = *(CMMLinearGammaFloatLutInfo + 32);
      v15 = *CMMLinearGammaFloatLutInfo;
      *(v6 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
      *(v6 + 16) = v14;
      *(v6 + 32) = v13;
      *v6 = v15;
LABEL_27:
      v12 = *(v11 + 1);
LABEL_28:
      if (v12)
      {
        *(v11 + 1) = v12 + 1;
      }

      goto LABEL_30;
    }

    if ((v10 & 0xFFFFFEFF) == 0xCC01)
    {
      if (CMMInitializeOnePointEightGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeOnePointEightGammaTable(void)::predicate, &__block_literal_global_1018);
      }

      *v2 = CMMOnePointEightGammaTable;
      if (v6)
      {
        v17 = *(CMMInvOnePointEightGammaFloatLutInfo + 16);
        v16 = *(CMMInvOnePointEightGammaFloatLutInfo + 32);
        v18 = *CMMInvOnePointEightGammaFloatLutInfo;
        *(v6 + 48) = *(CMMInvOnePointEightGammaFloatLutInfo + 48);
        *(v6 + 16) = v17;
        *(v6 + 32) = v16;
        *v6 = v18;
      }

      v11 = CMMInvOnePointEightGammaTable;
      goto LABEL_27;
    }

    if (v10 == 13058)
    {
      if (CMMInitializeTwoPointTwoGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeTwoPointTwoGammaTable(void)::predicate, &__block_literal_global_1008);
      }

      *v2 = CMMTwoPointTwoGammaTable;
      if (v6)
      {
        v20 = *(CMMInvTwoPointTwoGammaFloatLutInfo + 16);
        v19 = *(CMMInvTwoPointTwoGammaFloatLutInfo + 32);
        v21 = *CMMInvTwoPointTwoGammaFloatLutInfo;
        *(v6 + 48) = *(CMMInvTwoPointTwoGammaFloatLutInfo + 48);
        *(v6 + 16) = v20;
        *(v6 + 32) = v19;
        *v6 = v21;
      }

      v11 = CMMInvTwoPointTwoGammaTable;
      goto LABEL_27;
    }
  }

  if (IsSRGBGammaCurve(v9, v8))
  {
    if (CMMInitializeSRGBGammaTable(void)::predicate != -1)
    {
      dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
    }

    *v2 = CMMsRGBGammaTable;
    if (v6)
    {
      v25 = *(CMMInvsRGBGammaFloatLutInfo + 16);
      v24 = *(CMMInvsRGBGammaFloatLutInfo + 32);
      v26 = *CMMInvsRGBGammaFloatLutInfo;
      *(v6 + 48) = *(CMMInvsRGBGammaFloatLutInfo + 48);
      *(v6 + 16) = v25;
      *(v6 + 32) = v24;
      *v6 = v26;
    }

    v11 = CMMInvsRGBGammaTable;
    goto LABEL_27;
  }

  v29 = CMMBase::NewInternal(0x28, v4, v22, v23);
  *v29 = &unk_1F0E09180;
  *(v29 + 1) = 1;
  *(v29 + 3) = 0;
  *(v29 + 4) = 21512;
  *(v29 + 2) = CMMBase::NewInternal(0x5408, v4, v30, v31);
  *v2 = v29;
  v32 = CMMTable::UInt8Data(*(v29 + 2), *(v29 + 3));
  CMMCurveTag::MakeLut(v7, v6, v32, 0);
  v11 = CMMBase::NewInternal(0x28, v4, v33, v34);
  *v11 = &unk_1F0E09180;
  *(v11 + 1) = 1;
  *(v11 + 3) = 0;
  *(v11 + 4) = 21512;
  v37 = CMMBase::NewInternal(0x5408, v4, v35, v36);
  *(v11 + 2) = v37;
  v38 = CMMTable::UInt8Data(v37, *(v11 + 3));
  memcpy(v38, v32, 0x5408uLL);
  bzero(v42, 0x4004uLL);
  InvertLUT(v38, v42);
  MakeLookups(v38);
  if (v6)
  {
    if (*v6)
    {
      CMMCurveTag::InvertFloatParametricLUT(v6, v41);
    }

    else
    {
      *(v6 + 16) = CMMTable::MakeFloatCopy(v11, v4, v39, v40);
    }
  }

LABEL_30:
  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

CFMutableArrayRef AppleCMMCreateTransformProperty(const __CFData **a1, __CFArray *a2, const __CFDictionary *a3)
{
  Mutable = a2;
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_8;
  }

  CMMStorage = GetCMMStorage(a1);
  if (!CMMStorage)
  {
LABEL_7:
    Mutable = 0;
    goto LABEL_8;
  }

  v7 = CMMStorage;
  if (CFEqual(Mutable, kColorSyncTransformParametricConversionData))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_8;
    }

    if (DoFlattenParametricConversion(v7, Mutable, a3))
    {
LABEL_6:
      CFRelease(Mutable);
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  if (CFEqual(Mutable, kColorSyncTransformIteratorFullType))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_8;
    }

    if (!collect_flattened_conversion(*(v7 + 72), 1, a3, Mutable))
    {
      goto LABEL_6;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
    v11 = CFGetTypeID(ValueAtIndex);
    if (v11 == CFDictionaryGetTypeID())
    {
      CFDictionarySetValue(ValueAtIndex, kColorSyncTransformCodeFragmentType, kColorSyncTransformFullConversionData);
    }

    goto LABEL_30;
  }

  if (CFEqual(Mutable, kColorSyncTransformIteratorCompactType))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_8;
    }

    valuePtr.A = 0;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, kColorSyncConversionGridPoints);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      }

      v13 = CFDictionaryGetValue(a3, kColorSyncNxMFormat);
      A = valuePtr.A;
      v15 = v7;
      v16 = Mutable;
      v17 = a3;
    }

    else
    {
      v15 = v7;
      v16 = Mutable;
      v17 = 0;
      v13 = 0;
      A = 0;
    }

    if (!DoFlattenCompactConversion(v15, v16, v17, v13, A))
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!CFEqual(Mutable, kColorSyncTransformIteratorSimplifiedType))
    {
      goto LABEL_7;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_8;
    }

    valuePtr.A = 0;
    if (a3)
    {
      v18 = CFDictionaryGetValue(a3, kColorSyncConversionGridPoints);
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
      }

      v19 = CFDictionaryGetValue(a3, kColorSyncNxMFormat);
      v20 = valuePtr.A;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    if (!DoFlattenSimplifiedConversion(v7, Mutable, v19, v20))
    {
      goto LABEL_29;
    }
  }

  CFRelease(Mutable);
  Mutable = 0;
LABEL_29:
  if (!Mutable)
  {
    goto LABEL_8;
  }

LABEL_30:
  v21 = CFGetTypeID(Mutable);
  if (v21 == CFArrayGetTypeID())
  {
    v22 = CFArrayGetValueAtIndex(Mutable, 0);
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFDictionaryGetTypeID())
      {
        v25 = 0;
        Count = 0;
        while (v25 < CFArrayGetCount(Mutable))
        {
          v27 = CFArrayGetValueAtIndex(Mutable, 0);
          if (v27)
          {
            v28 = v27;
            if (Count <= CFDictionaryGetCount(v27))
            {
              Count = CFDictionaryGetCount(v28);
            }
          }

          ++v25;
        }

        if (Count)
        {
          v29 = 16 * Count;
          v30 = malloc_type_malloc(16 * Count, 0x80040B8603338uLL);
          if (v30)
          {
            v31 = v30;
            *md = 0;
            v44 = 0;
            memset(&valuePtr, 0, sizeof(valuePtr));
            CC_MD5_Init(&valuePtr);
            v32 = 0;
            v33 = &v31[8 * Count];
            while (v32 < CFArrayGetCount(Mutable))
            {
              v34 = CFArrayGetValueAtIndex(Mutable, 0);
              bzero(v31, v29);
              CFDictionaryGetKeysAndValues(v34, v31, v33);
              CC_MD5_Update(&valuePtr, v31, v29);
              ++v32;
            }

            CC_MD5_Final(md, &valuePtr);
            free(v31);
            v35 = CFDataCreate(0, md, 16);
            if (v35)
            {
              v36 = v35;
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v23);
              newValues = MutableCopy;
              if (MutableCopy)
              {
                v38 = MutableCopy;
                CFDictionarySetValue(MutableCopy, kColorSyncTransformCodeFragmentMD5, v36);
                CFRelease(v36);
                v39 = kColorSyncTransformProfileSequnce;
                ProfileSequence = ColorSyncTransformGetProfileSequence(a1);
                CFDictionarySetValue(v38, v39, ProfileSequence);
                v46.location = 0;
                v46.length = 1;
                CFArrayReplaceValues(Mutable, v46, &newValues, 1);
                CFRelease(newValues);
              }
            }
          }
        }
      }
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return Mutable;
}

double get_float_value(const void *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID())
  {
    __assert_rtn("get_float_value", "ColorSyncTransformIteration.c", 263, "CFGetTypeID(num) == CFNumberGetTypeID()");
  }

  if (CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr) != 1)
  {
    __assert_rtn("get_float_value", "ColorSyncTransformIteration.c", 264, "CFNumberGetValue(num, kCFNumberFloat32Type, &val) == true");
  }

  LODWORD(result) = valuePtr;
  return result;
}

uint64_t get_properties(const __CFDictionary *a1, int a2)
{
  Value = CFDictionaryGetValue(a1, @"com.apple.cmm.FunctionDoesSignedReflection");
  v5 = *MEMORY[0x1E695E4D0];
  v6 = CFDictionaryGetValue(a1, @"com.apple.cmm.FunctionDoesOutputClamp");
  v7 = CFDictionaryGetValue(a1, @"com.apple.cmm.FunctionDoesInputClamp");
  if (a2)
  {
    a2 = 16 * (CFDictionaryGetValue(a1, @"com.apple.cmm.OneChannelActiveMatrix") == v5);
    v8 = 8 * (CFDictionaryGetValue(a1, @"com.apple.cmm.OneChannelInputMatrix") == v5);
  }

  else
  {
    v8 = 0;
  }

  return (Value == v5) | (2 * (v6 == v5)) | (4 * (v7 == v5)) | a2 | v8;
}

int8x16_t ColorSyncMatrixCreate(float64x2_t *a1, unsigned int a2)
{
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    v6 = *a1;
    v7 = a1[2];
    *(Instance + 32) = a1[1];
    *(Instance + 48) = v7;
    *(Instance + 16) = v6;
    *&v6.f64[0] = vceqz_s32(vand_s8(vdup_n_s32(a2), 0x200000004));
    v8.i64[0] = SLODWORD(v6.f64[0]);
    v8.i64[1] = SHIDWORD(v6.f64[0]);
    v7.f64[0] = 2.84809454e-306;
    v7.f64[1] = 2.84809454e-306;
    result = vbslq_s8(v8, vnegq_f64(v7), vdupq_n_s64(0x3F80000000000000uLL));
    *(Instance + 68) = result;
    *(Instance + 64) = a2;
  }

  return result;
}

__CFDictionary *CMMConvTRC::FlattenConversion(CMMConvTRC *this, const __CFDictionary *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_60;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = *(this + 22);
  if (!v9)
  {
    valuePtr = 4097;
    v12 = (*(*this + 248))(this, a2, &valuePtr);
    if (v12)
    {
      v13 = v12;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v12);
      CFRelease(v13);
    }

    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v14);
      CFRelease(v15);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_45;
    }

    v47 = 0;
    if (*(this + 34))
    {
      v16 = &v47;
    }

    else
    {
      v16 = this + 144;
    }

    v17 = CFNumberCreate(0, kCFNumberFloat32Type, v16);
    if (*(this + 34))
    {
      v18 = &v47;
    }

    else
    {
      v18 = this + 148;
    }

    v19 = CFNumberCreate(0, kCFNumberFloat32Type, v18);
    values = v17;
    v51 = v19;
    v20 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v17);
    CFRelease(v19);
    if (v20)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v20);
      CFRelease(v20);
    }

    v21 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v22 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    v49[0] = v21;
    v49[1] = v22;
    v23 = CFArrayCreate(0, v49, 2, MEMORY[0x1E695E9C0]);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v23);
      CFRelease(v24);
    }

    CFRelease(v21);
    goto LABEL_44;
  }

  if (v9 == 1)
  {
    v10 = *(this + 25);
    if (v10 <= 2)
    {
      switch(v10)
      {
        case 0:
          v11 = &kColorSyncConversionParamCurve0;
          goto LABEL_38;
        case 1:
          v11 = &kColorSyncConversionParamCurve1;
          goto LABEL_38;
        case 2:
          v11 = &kColorSyncConversionParamCurve2;
          goto LABEL_38;
      }
    }

    else if (v10 > 8)
    {
      if (v10 == 9)
      {
        v11 = kColorSyncConversionEXRToneMappingGamma;
        goto LABEL_38;
      }

      if (v10 == 10)
      {
        __assert_rtn("FlattenConversion", "CMMConversionClasses.cpp", 1138, "0");
      }
    }

    else
    {
      if (v10 == 3)
      {
        v11 = &kColorSyncConversionParamCurve3;
        goto LABEL_38;
      }

      if (v10 == 4)
      {
        v11 = &kColorSyncConversionParamCurve4;
LABEL_38:
        v25 = *v11;
        if (*v11)
        {
          v26 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          if (v26)
          {
            v22 = v26;
            v27 = this + 112;
            v28 = 7;
            while (1)
            {
              v29 = CFNumberCreate(0, kCFNumberFloat32Type, v27);
              if (!v29)
              {
                break;
              }

              v30 = v29;
              CFArrayAppendValue(v22, v29);
              CFRelease(v30);
              v27 += 4;
              if (!--v28)
              {
                CFDictionaryAddValue(Mutable, v25, v22);
                break;
              }
            }

LABEL_44:
            CFRelease(v22);
            goto LABEL_45;
          }
        }

        goto LABEL_45;
      }
    }

    __assert_rtn("FlattenConversion", "CMMConversionClasses.cpp", 1141, "0");
  }

LABEL_45:
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v31);
  CFRelease(v31);
  v32 = *MEMORY[0x1E695E4D0];
  if (*(this + 96))
  {
    v33 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v33 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, v33);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v34, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", v32);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  if (*(this + 35) == 1)
  {
    v36 = *(this + 10);
    v35 = *(this + 11);
    valuePtr = LODWORD(v35);
    *v49 = v36;
    if (v36 != 0.0 || v35 != 1.0)
    {
      v37 = CFNumberCreate(0, kCFNumberFloat32Type, v49);
      v38 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
      values = v37;
      v51 = v38;
      v39 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v37);
      CFRelease(v38);
      if (v39)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionInputRange", v39);
        CFRelease(v39);
      }
    }
  }

  if (*(this + 36) == 1)
  {
    v41 = *(this + 10);
    v40 = *(this + 11);
    valuePtr = LODWORD(v40);
    *v49 = v41;
    if (v41 != 0.0 || v40 != 1.0)
    {
      v42 = CFNumberCreate(0, kCFNumberFloat32Type, v49);
      v43 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
      values = v42;
      v51 = v43;
      v44 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v42);
      CFRelease(v43);
      if (v44)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v44);
        CFRelease(v44);
      }
    }
  }

LABEL_60:
  v45 = *MEMORY[0x1E69E9840];
  return Mutable;
}

const __CFNumber *get_int32_value(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFNumberGetTypeID())
    {
      __assert_rtn("get_int32_value", "ColorSyncTransformIteration.c", 252, "CFGetTypeID(num) == CFNumberGetTypeID()");
    }

    if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr) != 1)
    {
      __assert_rtn("get_int32_value", "ColorSyncTransformIteration.c", 253, "CFNumberGetValue(num, kCFNumberSInt32Type, &val) == true");
    }

    return valuePtr;
  }

  return result;
}

const __CFArray *get_validated_param_array(const __CFDictionary *a1, const __CFArray *a2, CFIndex a3, void *key)
{
  v4 = a2;
  if (!a2)
  {
    Value = CFDictionaryGetValue(a1, key);
    if (!Value)
    {
      __assert_rtn("get_validated_param_array", "ColorSyncTransformIteration.c", 373, "array != NULL");
    }

    v4 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 != CFArrayGetTypeID())
    {
      __assert_rtn("get_validated_param_array", "ColorSyncTransformIteration.c", 374, "CFGetTypeID(array) == CFArrayGetTypeID()");
    }

    if (CFArrayGetCount(v4) < a3)
    {
      __assert_rtn("get_validated_param_array", "ColorSyncTransformIteration.c", 375, "CFArrayGetCount(array) >= count");
    }
  }

  return v4;
}

double create_trc_data()
{
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  return result;
}

uint64_t add_trc(CFTypeRef cf2, uint64_t a2, uint64_t *a3)
{
  if (!cf2)
  {
    return -1;
  }

  if (*a3 < 1)
  {
    v6 = 0;
LABEL_9:
    CFRetain(cf2);
    *(a2 + 8 * v6) = cf2;
    ++*a3;
  }

  else
  {
    v6 = 0;
    while (CFEqual(*(a2 + 8 * v6), cf2) != 1)
    {
      if (++v6 >= *a3)
      {
        goto LABEL_9;
      }
    }
  }

  return v6;
}

__n128 ColorSyncTRCGetFunction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v4 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetFunction", "ColorSyncTransformFunctions.c", 395, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  result = *(a1 + 16);
  v6 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = *(a1 + 48);
  return result;
}

float ColorSyncTRCGetInputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetInputRange", "ColorSyncTransformFunctions.c", 416, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  result = *(a1 + 68);
  v4 = *(a1 + 72);
  return result;
}

BOOL trc_equal_trc(unsigned int *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (ColorSyncTRCGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
    }

    if (v5 == ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
    {
      v6 = CFGetTypeID(a2);
      if (ColorSyncTRCGetTypeID_predicate != -1)
      {
        dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
      }

      if (v6 == ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
      {
        v7 = cf[4];
        if (v7 == *(a2 + 16))
        {
          v8 = cf[6];
          v9 = *(cf + 7);
          v10 = *(a2 + 24);
          v11 = *(a2 + 28);
          v12.i32[0] = HIDWORD(v9);
          if (v7 <= 5)
          {
            v17 = cf[5];
            v18 = *(a2 + 20);
            if (v7 < 5)
            {
              if (*&v17 != *&v18)
              {
                return 0;
              }

              v13 = 0;
              if (*&v8 != *&v10 || *&v9 != *&v11)
              {
                return v13;
              }

              v12.i32[1] = cf[9];
              v12.i64[1] = *(cf + 5);
              v19.i32[0] = HIDWORD(*(a2 + 28));
              v19.i32[1] = *(a2 + 36);
              v19.i64[1] = *(a2 + 40);
              v16 = vceqq_f32(v12, v19);
              goto LABEL_26;
            }

            if (v7 == 5)
            {
              v29 = v17 | (v8 << 32);
              if (v29 == (v18 | (v10 << 32)) && (v9 == v11 || !memcmp(v9, v11, 4 * v29)))
              {
LABEL_27:
                v20 = ColorSyncTRCGetProperties(cf);
                if (v20 == ColorSyncTRCGetProperties(a2))
                {
                  v21 = ColorSyncTRCGetInputRange(cf);
                  v22 = ColorSyncTRCGetInputRange(a2);
                  v13 = 0;
                  if (v21 == v22)
                  {
                    v23 = ColorSyncTRCGetOutputRange(cf);
                    v25 = v24;
                    v26 = ColorSyncTRCGetOutputRange(a2);
                    return v25 == v27 && v23 == v26;
                  }

                  return v13;
                }
              }

              return 0;
            }
          }

          else
          {
            if ((v7 - 6) < 3)
            {
              goto LABEL_15;
            }

            if (v7 == 9)
            {
              v13 = 0;
              if (*&v8 != *&v10)
              {
                return v13;
              }

              if (*&v9 != *&v11)
              {
                return v13;
              }

              v13 = 0;
              if (*(&v9 + 1) != COERCE_FLOAT(HIDWORD(*(a2 + 28))) || *(cf + 9) != *(a2 + 36) || (vceq_f32(*(cf + 10), *(a2 + 40)).u32[0] & 1) == 0)
              {
                return v13;
              }

              goto LABEL_27;
            }

            if (v7 == 10)
            {
LABEL_15:
              v13 = 0;
              if (*&v8 != *&v10 || *&v9 != *&v11)
              {
                return v13;
              }

              v14.i64[1] = *(cf + 5);
              v14.i32[0] = HIDWORD(*(cf + 7));
              v14.i32[1] = cf[9];
              v15.i64[1] = *(a2 + 40);
              v15.i32[0] = HIDWORD(*(a2 + 28));
              v15.i32[1] = *(a2 + 36);
              v16 = vceqq_f32(v14, v15);
LABEL_26:
              if (vminv_u16(vmovn_s32(v16)))
              {
                goto LABEL_27;
              }

              return 0;
            }
          }

          __assert_rtn("trc_equal_trc", "ColorSyncTransformFunctions.c", 139, "0");
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ColorSyncTRCGetProperties(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetProperties", "ColorSyncTransformFunctions.c", 402, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  return a1[16];
}

float ColorSyncTRCGetOutputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetOutputRange", "ColorSyncTransformFunctions.c", 423, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  result = *(a1 + 76);
  v4 = *(a1 + 80);
  return result;
}

uint64_t ColorSyncTRCGetTypeID()
{
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  return ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID;
}

uint64_t __ColorSyncTransformIteratorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncTransformIteratorGetTypeID_kColorSyncTransformIteratorRuntimeID = result;
  return result;
}

uint64_t __ColorSyncTRCGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID = result;
  return result;
}

uint64_t __ColorSyncMatrixGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID = result;
  return result;
}

uint64_t ColorSyncTransformIterate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v12 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = kColorSyncTransformIteratorFullType;
  }

  v14 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v14 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 16));
  v15 = CFDictionaryGetValue(*(a1 + 136), v13);
  if (v15)
  {
    v16 = v15;
    CFRetain(v15);
    goto LABEL_167;
  }

  v17 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v17 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    goto LABEL_161;
  }

  v18 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v18 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    __assert_rtn("ColorSyncTransformIsNOP", "ColorSyncTransform.c", 1300, "transform != NULL && CFGetTypeID(transform) == ColorSyncTransformGetTypeID()");
  }

  v19 = ColorSyncTransformInternalCopyProperty(a1, @"com.apple.cmm.TransformType", 0);
  if (v19)
  {
    v20 = v19;
    v21 = CFEqual(v19, @"NULLTransform");
    CFRelease(v20);
    if (v21)
    {
LABEL_161:
      v16 = 0;
      goto LABEL_162;
    }
  }

  if (ColorSyncTransformIteratorGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformIteratorGetTypeID_predicate, &__block_literal_global_1298);
  }

  Instance = _CFRuntimeCreateInstance();
  v16 = Instance;
  if (!Instance)
  {
    goto LABEL_162;
  }

  Instance[1] = 0u;
  Instance[8] = 0u;
  Instance[9] = 0u;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v250 = (v16 + 1);
  *(v16 + 4) = Mutable;
  if (!Mutable)
  {
    goto LABEL_160;
  }

  v24 = kColorSyncTransformIteratorFullType;
  if (!v13)
  {
    goto LABEL_31;
  }

  v25 = CFGetTypeID(v13);
  if (v25 == CFStringGetTypeID())
  {
    v24 = v13;
  }

  v26 = CFGetTypeID(v13);
  if (v26 == CFDictionaryGetTypeID())
  {
    v27 = CFDictionaryContainsKey(v13, kColorSyncTransformIterationType);
    v28 = v13;
    if (v27)
    {
      v24 = CFDictionaryGetValue(v13, kColorSyncTransformIterationType);
      v28 = v13;
    }
  }

  else
  {
LABEL_31:
    v28 = 0;
  }

  value = v24;
  v29 = ColorSyncTransformInternalCopyProperty(a1, v24, v28);
  *v250 = v29;
  if (!v29 || (Count = CFArrayGetCount(v29)) == 0 || (v31 = Count, v32 = malloc_type_calloc(1uLL, 56 * Count, 0x100004089CA3EB1uLL), (*(v16 + 18) = v32) == 0) || (v33 = malloc_type_calloc(1uLL, 152 * v31, 0x100004075DCBCB7uLL), (*(v16 + 19) = v33) == 0))
  {
LABEL_160:
    CFRelease(v16);
    goto LABEL_161;
  }

  *(v16 + 3) = v31;
  v34 = *(v16 + 18) + 32 * v31;
  v35 = v34 + 8 * v31;
  *(v16 + 15) = v34;
  *(v16 + 16) = v35;
  *(v16 + 17) = v35 + 8 * v31;
  *(v16 + 52) = ColorSyncTransformGetSrcComponentCount(a1);
  *(v16 + 60) = *(a1 + 96);
  if (*(v16 + 3) < 1)
  {
    v212 = 0;
    v204 = value;
    goto LABEL_222;
  }

  v238 = v13;
  v239 = a3;
  v240 = a6;
  v36 = 0;
  v246 = *MEMORY[0x1E695E4D0];
  v37 = &kColorSyncTransformInfo;
  v38.f64[0] = 2.84809454e-306;
  v38.f64[1] = 2.84809454e-306;
  v241 = vnegq_f64(v38);
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v250, v36);
    if (!ValueAtIndex)
    {
      __assert_rtn("get_step_type", "ColorSyncTransformIteration.c", 172, "stepInfo != NULL");
    }

    v40 = ValueAtIndex;
    v41 = CFGetTypeID(ValueAtIndex);
    if (v41 != CFDictionaryGetTypeID())
    {
      __assert_rtn("get_step_type", "ColorSyncTransformIteration.c", 173, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
    }

    v251 = v36;
    if (CFDictionaryContainsKey(v40, v37[180]) == 1)
    {
      v42 = 5;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamCurve0) == 1)
    {
      v42 = 0;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamCurve1) == 1)
    {
      v42 = 1;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamCurve2) == 1)
    {
      v42 = 2;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamCurve3) == 1)
    {
      v42 = 3;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamCurve4) == 1)
    {
      v42 = 4;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamPQEOTF) == 1)
    {
      v42 = 6;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamPQInvEOTF) == 1)
    {
      v42 = 7;
      goto LABEL_65;
    }

    if (CFDictionaryContainsKey(v40, kColorSyncConversionParamHLGInvOETF) != 1)
    {
      if (CFDictionaryContainsKey(v40, kColorSyncConversionParamHLGOETF) == 1)
      {
        v42 = 9;
        goto LABEL_64;
      }

      if (CFDictionaryContainsKey(v40, kColorSyncConversionEXRToneMappingGamma[0]) == 1)
      {
        v42 = 10;
        goto LABEL_64;
      }

      if (CFDictionaryContainsKey(v40, kColorSyncConversionFlexGlobalToneMappingCurve) == 1)
      {
        v42 = 11;
        goto LABEL_64;
      }

      if (CFDictionaryContainsKey(v40, kColorSyncConversionMatrix) == 1)
      {
        v149 = *(v16 + 18) + 32 * v36;
        *v149 = 2;
        *(v149 + 8) = -1;
        v150 = CFGetTypeID(v40);
        if (v150 != CFDictionaryGetTypeID())
        {
          __assert_rtn("create_matrix", "ColorSyncTransformIteration.c", 517, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
        }

        memset(v258, 0, sizeof(v258));
        v151 = CFDictionaryGetValue(v40, kColorSyncConversionMatrix);
        if (!v151)
        {
          __assert_rtn("create_matrix", "ColorSyncTransformIteration.c", 523, "array != NULL");
        }

        v152 = v151;
        v153 = CFGetTypeID(v151);
        if (v153 != CFArrayGetTypeID())
        {
          __assert_rtn("create_matrix", "ColorSyncTransformIteration.c", 524, "CFGetTypeID(array) == CFArrayGetTypeID()");
        }

        if (CFArrayGetCount(v152) != 3)
        {
          __assert_rtn("create_matrix", "ColorSyncTransformIteration.c", 525, "CFArrayGetCount(array) == 3");
        }

        v154 = 0;
        v155 = v258 + 2;
        do
        {
          v156 = CFArrayGetValueAtIndex(v152, v154);
          if (!v156)
          {
            __assert_rtn("get_matrix_row", "ColorSyncTransformIteration.c", 504, "row != NULL");
          }

          v157 = v156;
          v158 = CFGetTypeID(v156);
          if (v158 != CFArrayGetTypeID())
          {
            __assert_rtn("get_matrix_row", "ColorSyncTransformIteration.c", 505, "CFGetTypeID(row) == CFArrayGetTypeID()");
          }

          if (CFArrayGetCount(v157) != 4)
          {
            __assert_rtn("get_matrix_row", "ColorSyncTransformIteration.c", 506, "CFArrayGetCount(row) == 4");
          }

          v159 = CFArrayGetValueAtIndex(v157, 0);
          float_value = get_float_value(v159);
          *(v155 - 2) = LODWORD(float_value);
          v161 = CFArrayGetValueAtIndex(v157, 1);
          v162 = get_float_value(v161);
          *(v155 - 1) = LODWORD(v162);
          v163 = CFArrayGetValueAtIndex(v157, 2);
          v164 = get_float_value(v163);
          *v155 = LODWORD(v164);
          v165 = CFArrayGetValueAtIndex(v157, 3);
          v166 = get_float_value(v165);
          v155[1] = LODWORD(v166);
          ++v154;
          v155 += 4;
        }

        while (v154 != 3);
        properties = get_properties(v40, 1);
        v260[0] = v258[0];
        v260[1] = v258[1];
        v260[2] = v258[2];
        ColorSyncMatrixCreate(v260, properties);
        if (v168)
        {
          v169 = v168;
          v170 = *(v16 + 76);
          v171 = *(v16 + 16);
          if (v170 < 1)
          {
            v172 = 0;
LABEL_156:
            CFRetain(v169);
            *(v171 + 8 * v172) = v169;
            ++v170;
          }

          else
          {
            v172 = 0;
            while (CFEqual(*(v171 + 8 * v172), v169) != 1)
            {
              if (v170 == ++v172)
              {
                v172 = v170;
                goto LABEL_156;
              }
            }
          }

          v108 = v251;
          *(*(v16 + 18) + 32 * v251 + 24) = v172;
          *(v16 + 76) = v170;
LABEL_158:
          CFRelease(v169);
          goto LABEL_159;
        }
      }

      else
      {
        if (CFDictionaryContainsKey(v40, kColorSyncConversionNDLut) != 1)
        {
          __assert_rtn("get_step_type", "ColorSyncTransformIteration.c", 242, "0");
        }

        v173 = *(v16 + 18) + 32 * v36;
        *v173 = 3;
        *(v173 + 8) = -1;
        v174 = CFGetTypeID(v40);
        if (v174 != CFDictionaryGetTypeID())
        {
          __assert_rtn("create_nxm", "ColorSyncTransformIteration.c", 540, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
        }

        v175 = CFDictionaryGetValue(v40, kColorSyncConversionNDLut);
        if (!v175)
        {
          __assert_rtn("create_nxm", "ColorSyncTransformIteration.c", 544, "data != NULL");
        }

        v176 = v175;
        v177 = CFGetTypeID(v175);
        if (v177 != CFDataGetTypeID())
        {
          __assert_rtn("create_nxm", "ColorSyncTransformIteration.c", 545, "CFGetTypeID(data) == CFDataGetTypeID()");
        }

        v255 = CFDictionaryGetValue(v40, kColorSyncConversionGridPoints);
        v178 = CFDictionaryGetValue(v40, kColorSyncConversionInpChan);
        v243 = CFDictionaryGetValue(v40, kColorSyncConversionOutChan);
        v179 = CFDictionaryGetValue(v40, kColorSyncNxMFormat);
        v180 = CFDictionaryGetValue(v40, kColorSyncNxMFormatVersion);
        BytePtr = CFDataGetBytePtr(v176);
        int32_value = get_int32_value(v255);
        v249 = get_int32_value(v178);
        v244 = get_int32_value(v243);
        LODWORD(v178) = get_int32_value(v179);
        v237 = get_int32_value(v180);
        LODWORD(v180) = get_properties(v40, 0);
        v182 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionInputRange");
        v183 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionOutputRange");
        LODWORD(v258[0]) = v178;
        *(v258 + 4) = v249;
        *(v258 + 12) = v244;
        *(&v258[1] + 4) = int32_value;
        *(&v258[1] + 12) = BytePtr;
        v184 = ColorSyncNxMCreate(v176, v237, v258, v180, v182, v183);
        if (v184)
        {
          v169 = v184;
          v185 = *(v16 + 84);
          v186 = *(v16 + 17);
          if (v185 < 1)
          {
            v187 = 0;
LABEL_153:
            CFRetain(v169);
            *(v186 + 8 * v187) = v169;
            ++v185;
          }

          else
          {
            v187 = 0;
            while (CFEqual(*(v186 + 8 * v187), v169) != 1)
            {
              if (v185 == ++v187)
              {
                v187 = v185;
                goto LABEL_153;
              }
            }
          }

          v108 = v251;
          *(*(v16 + 18) + 32 * v251 + 24) = v187;
          *(v16 + 84) = v185;
          goto LABEL_158;
        }
      }

      v108 = v251;
      *(*(v16 + 18) + 32 * v251 + 24) = -1;
LABEL_159:
      v37 = &kColorSyncTransformInfo;
      goto LABEL_123;
    }

    v42 = 8;
LABEL_64:
    v37 = &kColorSyncTransformInfo;
LABEL_65:
    *(*(v16 + 18) + 32 * v36) = 1;
    v43 = CFGetTypeID(v40);
    if (v43 != CFDictionaryGetTypeID())
    {
      __assert_rtn("get_component_for_trc", "ColorSyncTransformIteration.c", 273, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
    }

    v44 = CFDictionaryGetValue(v40, kColorSyncConversionChannelID);
    *(*(v16 + 18) + 32 * v36 + 8) = get_int32_value(v44);
    v45 = CFGetTypeID(v40);
    if (v45 != CFDictionaryGetTypeID())
    {
      __assert_rtn("get_channels_in_stage_count", "ColorSyncTransformIteration.c", 287, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
    }

    v46 = CFDictionaryGetValue(v40, @"com.apple.cmm.ChannelsInStageCount");
    *(*(v16 + 18) + 32 * v36 + 16) = get_int32_value(v46);
    v47 = CFGetTypeID(v40);
    if (v47 != CFDictionaryGetTypeID())
    {
      __assert_rtn("create_trc", "ColorSyncTransformIteration.c", 474, "CFGetTypeID(stepInfo) == CFDictionaryGetTypeID()");
    }

    v252 = v42;
    if (v42 <= 4)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      if (v42 <= 1)
      {
        v58 = 0;
        v68 = 0;
        if (!v42)
        {
          v71 = 0;
          v85 = 0;
LABEL_107:
          validated_param_array = get_validated_param_array(v40, v49, 1, kColorSyncConversionParamCurve0);
          v132 = CFArrayGetValueAtIndex(validated_param_array, 0);
          v133 = get_float_value(v132);
          v124 = LODWORD(v133);
LABEL_108:
          v134 = get_properties(v40, 0);
          v135 = CFDictionaryGetValue(v40, kColorSyncTransformGammaID);
          v136 = CFDictionaryGetValue(v40, kColorSyncTransformPureGammaOriginalTRC);
          v137 = get_int32_value(v135);
          v248 = v136 == v246;
          v138 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionInputRange");
          v139 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionOutputRange");
          if (v252 > 0xA || v252 == 5)
          {
            __assert_rtn("ColorSyncTRCCreateWithParams", "ColorSyncTransformFunctions.c", 365, "(trcType >= kColorSyncTRCParametricType0 && trcType <= kColorSyncTRCParametricType4) || (trcType == kColorSyncTRCParametricPQ_EOTF_Type || trcType == kColorSyncTRCParametricPQ_InvOETF_Type) || (trcType == kColorSyncTRCParametricHLG_InvOETF_Type || trcType == kColorSyncTRCParametricHLG_OETF_Type) || (trcType == kColorSyncTRCParametricEXRToneMappingGamma)");
          }

          v140 = v139;
          create_trc_data();
          v102 = v141;
          if (v141)
          {
            v142 = 0x7F7FFFFFFF7FFFFFLL;
            if ((v134 & 4) != 0)
            {
              v142 = 0x3F80000000000000;
            }

            *(v141 + 68) = v142;
            *(v141 + 16) = v252;
            *(v141 + 20) = v124;
            *(v141 + 24) = v85;
            *(v141 + 28) = v71;
            *(v141 + 32) = v68;
            *(v141 + 36) = v58;
            *(v141 + 40) = v50;
            *(v141 + 44) = v51;
            *(v141 + 48) = 0;
            *(v141 + 84) = v137;
            if (v138)
            {
              v143 = CFArrayGetValueAtIndex(v138, 0);
              CFNumberGetValue(v143, kCFNumberFloat32Type, (v102 + 68));
              v144 = CFArrayGetValueAtIndex(v138, 1);
              CFNumberGetValue(v144, kCFNumberFloat32Type, (v102 + 72));
            }

            v145 = 0x7F7FFFFFFF7FFFFFLL;
            if ((v134 & 2) != 0)
            {
              v145 = 0x3F80000000000000;
            }

            *(v102 + 76) = v145;
            if (v140)
            {
              v146 = CFArrayGetValueAtIndex(v140, 0);
              CFNumberGetValue(v146, kCFNumberFloat32Type, (v102 + 76));
              v147 = CFArrayGetValueAtIndex(v140, 1);
              CFNumberGetValue(v147, kCFNumberFloat32Type, (v102 + 80));
            }

            *(v102 + 64) = v134;
            *(v102 + 88) = v248;
          }

          goto LABEL_120;
        }
      }

      else
      {
        if (v42 == 2)
        {
          v58 = 0;
        }

        else
        {
          if (v42 != 3)
          {
            v49 = get_validated_param_array(v40, 0, 7, kColorSyncConversionParamCurve4);
            v52 = CFArrayGetValueAtIndex(v49, 6);
            v53 = get_float_value(v52);
            v51 = LODWORD(v53);
            v54 = CFArrayGetValueAtIndex(v49, 5);
            v55 = get_float_value(v54);
            v50 = LODWORD(v55);
          }

          v49 = get_validated_param_array(v40, v49, 5, kColorSyncConversionParamCurve3);
          v56 = CFArrayGetValueAtIndex(v49, 4);
          v57 = get_float_value(v56);
          v58 = LODWORD(v57);
        }

        v49 = get_validated_param_array(v40, v49, 4, kColorSyncConversionParamCurve2);
        v125 = CFArrayGetValueAtIndex(v49, 3);
        v126 = get_float_value(v125);
        v68 = LODWORD(v126);
      }

      v49 = get_validated_param_array(v40, v49, 3, kColorSyncConversionParamCurve1);
      v127 = CFArrayGetValueAtIndex(v49, 2);
      v128 = get_float_value(v127);
      v71 = LODWORD(v128);
      v129 = CFArrayGetValueAtIndex(v49, 1);
      v130 = get_float_value(v129);
      v85 = LODWORD(v130);
      goto LABEL_107;
    }

    if (v42 > 7)
    {
      if (v42 != 8)
      {
        if (v42 == 9)
        {
          v74 = get_validated_param_array(v40, 0, 6, kColorSyncConversionParamHLGOETF);
          v75 = CFArrayGetValueAtIndex(v74, 5);
          v76 = get_float_value(v75);
          v50 = LODWORD(v76);
          v77 = CFArrayGetValueAtIndex(v74, 4);
          v78 = get_float_value(v77);
          v58 = LODWORD(v78);
          v79 = CFArrayGetValueAtIndex(v74, 3);
          v80 = get_float_value(v79);
          v68 = LODWORD(v80);
          v81 = CFArrayGetValueAtIndex(v74, 2);
          v82 = get_float_value(v81);
          v71 = LODWORD(v82);
          v83 = CFArrayGetValueAtIndex(v74, 1);
          v84 = get_float_value(v83);
          v85 = LODWORD(v84);
          v51 = 0;
LABEL_103:
          v124 = 0;
          goto LABEL_108;
        }

        if (v42 != 10)
        {
          __assert_rtn("create_trc", "ColorSyncTransformIteration.c", 496, "0");
        }

        v59 = get_validated_param_array(v40, 0, 6, kColorSyncConversionEXRToneMappingGamma[0]);
        v60 = CFArrayGetValueAtIndex(v59, 5);
        v61 = get_float_value(v60);
        v51 = LODWORD(v61);
        v62 = CFArrayGetValueAtIndex(v59, 4);
        v63 = get_float_value(v62);
        v50 = LODWORD(v63);
        v64 = CFArrayGetValueAtIndex(v59, 3);
        v65 = get_float_value(v64);
        v58 = LODWORD(v65);
        v66 = CFArrayGetValueAtIndex(v59, 2);
        v67 = get_float_value(v66);
        v68 = LODWORD(v67);
        v69 = CFArrayGetValueAtIndex(v59, 1);
        v70 = get_float_value(v69);
        v71 = LODWORD(v70);
        v72 = v59;
        v73 = 0;
LABEL_102:
        v122 = CFArrayGetValueAtIndex(v72, v73);
        v123 = get_float_value(v122);
        v85 = LODWORD(v123);
        goto LABEL_103;
      }

      v48 = kColorSyncConversionParamHLGInvOETF;
LABEL_101:
      v111 = get_validated_param_array(v40, 0, 7, v48);
      v112 = CFArrayGetValueAtIndex(v111, 6);
      v113 = get_float_value(v112);
      v51 = LODWORD(v113);
      v114 = CFArrayGetValueAtIndex(v111, 5);
      v115 = get_float_value(v114);
      v50 = LODWORD(v115);
      v116 = CFArrayGetValueAtIndex(v111, 4);
      v117 = get_float_value(v116);
      v58 = LODWORD(v117);
      v118 = CFArrayGetValueAtIndex(v111, 3);
      v119 = get_float_value(v118);
      v68 = LODWORD(v119);
      v120 = CFArrayGetValueAtIndex(v111, 2);
      v121 = get_float_value(v120);
      v71 = LODWORD(v121);
      v72 = v111;
      v73 = 1;
      goto LABEL_102;
    }

    if (v42 != 5)
    {
      if (v42 == 6)
      {
        v48 = kColorSyncConversionParamPQEOTF;
      }

      else
      {
        v48 = kColorSyncConversionParamPQInvEOTF;
      }

      goto LABEL_101;
    }

    if (!CFDictionaryContainsKey(v40, v37[180]))
    {
      __assert_rtn("create_trc_table", "ColorSyncTransformIteration.c", 334, "CFDictionaryContainsKey(stepInfo, kColorSyncConversion1DLut)");
    }

    v86 = CFDictionaryGetValue(v40, v37[180]);
    v87 = CFDictionaryGetValue(v40, kColorSyncConversionGridPoints);
    v88 = CFDictionaryGetValue(v40, kColorSyncTransformGammaID);
    v253 = CFDictionaryGetValue(v40, kColorSyncTransformPureGammaOriginalTRC);
    if (!v86)
    {
      __assert_rtn("create_trc_table", "ColorSyncTransformIteration.c", 341, "data != NULL");
    }

    v89 = CFGetTypeID(v86);
    if (v89 != CFDataGetTypeID())
    {
      __assert_rtn("create_trc_table", "ColorSyncTransformIteration.c", 342, "CFGetTypeID(data) == CFDataGetTypeID()");
    }

    v90 = get_properties(v40, 0);
    v91 = 1.0;
    v92 = 0;
    boundary_extension = 0.0;
    if ((v90 & 2) == 0)
    {
      boundary_extension = get_boundary_extension(v40, @"com.apple.cmm.FunctionPosBoundary");
      v91 = v94;
    }

    v95 = 0.0;
    v247 = v90;
    if ((v90 & 4) == 0)
    {
      v95 = get_boundary_extension(v40, @"com.apple.cmm.FunctionNegBoundary");
      v92 = v96;
    }

    v97 = get_int32_value(v87);
    v242 = get_int32_value(v88);
    v254 = v253 == v246;
    v98 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionInputRange");
    v99 = CFDictionaryGetValue(v40, @"com.apple.cmm.FunctionOutputRange");
    v100 = CFGetTypeID(v86);
    if (v100 != CFDataGetTypeID())
    {
      __assert_rtn("ColorSyncTRCCreateWithTableData", "ColorSyncTransformFunctions.c", 319, "tableData != NULL && CFGetTypeID(tableData) == CFDataGetTypeID()");
    }

    create_trc_data();
    v102 = v101;
    if (v101)
    {
      *(v101 + 56) = CFRetain(v86);
      *(v102 + 16) = 5;
      v103 = CFDataGetBytePtr(v86);
      v104 = vceqz_s32(vand_s8(vdup_n_s32(v247), 0x200000004));
      v105.i64[0] = v104.i32[0];
      v105.i64[1] = v104.i32[1];
      *(v102 + 68) = vbslq_s8(v105, v241, vdupq_n_s64(0x3F80000000000000uLL));
      *(v102 + 20) = v97;
      *(v102 + 28) = v103;
      *(v102 + 84) = v242;
      *(v102 + 64) = v247;
      *(v102 + 36) = boundary_extension;
      *(v102 + 40) = v91;
      *(v102 + 44) = v95;
      *(v102 + 48) = v92;
      *(v102 + 88) = v254;
      if (v98)
      {
        v106 = CFArrayGetValueAtIndex(v98, 0);
        CFNumberGetValue(v106, kCFNumberFloat32Type, (v102 + 68));
        v107 = CFArrayGetValueAtIndex(v98, 1);
        CFNumberGetValue(v107, kCFNumberFloat32Type, (v102 + 72));
      }

      v108 = v251;
      v37 = &kColorSyncTransformInfo;
      if (v99)
      {
        v109 = CFArrayGetValueAtIndex(v99, 0);
        CFNumberGetValue(v109, kCFNumberFloat32Type, (v102 + 76));
        v110 = CFArrayGetValueAtIndex(v99, 1);
        CFNumberGetValue(v110, kCFNumberFloat32Type, (v102 + 80));
      }

      goto LABEL_121;
    }

LABEL_120:
    v108 = v251;
    v37 = &kColorSyncTransformInfo;
LABEL_121:
    *&v258[0] = *(v16 + 68);
    *(*(v16 + 18) + 32 * v108 + 24) = add_trc(v102, *(v16 + 15), v258);
    *(v16 + 68) = *&v258[0];
    if (v102)
    {
      CFRelease(v102);
    }

LABEL_123:
    v36 = v108 + 1;
    v148 = *(v16 + 3);
  }

  while (v36 < v148);
  v204 = value;
  if (v148 < 1)
  {
    v212 = 0;
    goto LABEL_220;
  }

  v205 = 0;
  v206 = *(v16 + 19);
  v207 = 24;
  *&v208 = -1;
  *(&v208 + 1) = -1;
  do
  {
    v209 = (v206 + v207);
    v209[6] = v208;
    v209[7] = v208;
    v209[4] = v208;
    v209[5] = v208;
    v209[2] = v208;
    v209[3] = v208;
    *v209 = v208;
    v209[1] = v208;
    ++v205;
    v210 = *(v16 + 3);
    v207 += 152;
  }

  while (v205 < v210);
  a3 = v239;
  a6 = v240;
  v13 = v238;
  if (v210 < 1)
  {
    v212 = 0;
  }

  else
  {
    v211 = 0;
    v212 = 0;
    v213 = (*(v16 + 18) + 24);
    v214 = -1;
    do
    {
      v215 = *(v213 - 6);
      if ((v215 - 2) >= 2)
      {
        if (v215 != 1)
        {
          __assert_rtn("initialize_stages", "ColorSyncTransformIteration.c", 752, "0");
        }

        if (v214 != 1 || v211 && *(v213 - 2) <= *(v213 - 6))
        {
          v218 = 152 * v212++;
          *(v206 + v218) = 1;
        }

        v219 = v206 + 152 * v212;
        v220 = v219 + 8 * *(v213 - 2);
        ++*(v219 - 144);
        *(v220 - 128) = *v213;
        *(v219 - 136) = *(v213 - 1);
      }

      else
      {
        v216 = v206 + 152 * v212++;
        *v216 = v215;
        v217 = *(v216 + 8);
        *(v216 + 8) = v217 + 1;
        *(v216 + 8 * v217 + 24) = *v213;
      }

      ++v211;
      v213 += 4;
      v214 = v215;
    }

    while (v211 < *(v16 + 3));
    if (v212 >= 1)
    {
      v221 = 0;
      v222 = 24;
      do
      {
        v223 = v206 + 152 * v221;
        v257 = v212;
        if (*v223 == 1)
        {
          v224 = *(v223 + 16);
          if (v224 < 1)
          {
LABEL_205:
            v228 = 0;
          }

          else
          {
            v225 = (v206 + v222);
            while (1)
            {
              v227 = *v225++;
              v226 = v227;
              if (v227 != -1)
              {
                break;
              }

              if (!--v224)
              {
                goto LABEL_205;
              }
            }

            v228 = (ColorSyncTRCGetProperties(*(*(v16 + 15) + 8 * v226)) & 6) != 0;
            v206 = *(v16 + 19);
          }

          if (*(v206 + 152 * v221 + 16) >= 1)
          {
            v229 = 0;
            do
            {
              if (*(v206 + v222 + 8 * v229) == -1)
              {
                if (linear_trc_predicate[0] != -1)
                {
                  dispatch_once(linear_trc_predicate, &__block_literal_global_68);
                }

                v230 = &linear_trc_linear_clamp;
                if (!v228)
                {
                  v230 = &linear_trc_linear_no_clamp;
                }

                v231 = *v230;
                CFRetain(*v230);
                v232 = add_trc(v231, *(v16 + 15), (v16 + 68));
                v206 = *(v16 + 19);
                *(v206 + v222 + 8 * v229) = v232;
              }

              ++v229;
            }

            while (v229 < *(v206 + 152 * v221 + 16));
          }
        }

        ++v221;
        v222 += 152;
        v212 = v257;
        v204 = value;
      }

      while (v221 != v257);
LABEL_220:
      a3 = v239;
      a6 = v240;
      v13 = v238;
    }
  }

LABEL_222:
  *(v16 + 44) = v212;
  if (*(v16 + 68) >= 1)
  {
    *(v16 + 92) = *(v16 + 15);
  }

  if (*(v16 + 76) >= 1)
  {
    *(v16 + 100) = *(v16 + 16);
  }

  if (*(v16 + 84) >= 1)
  {
    *(v16 + 108) = *(v16 + 17);
  }

  CFDictionarySetValue(*(v16 + 4), kColorSyncTransformIterationType, v204);
  v233 = ColorSyncTransformInternalCopyProperty(a1, kColorSyncTransformDstSpace, 0);
  CFDictionarySetValue(*(v16 + 4), kColorSyncTransformDstSpace, v233);
  CFRelease(v233);
  v234 = ColorSyncTransformInternalCopyProperty(a1, kColorSyncTransformSrcSpace, 0);
  CFDictionarySetValue(*(v16 + 4), kColorSyncTransformSrcSpace, v234);
  CFRelease(v234);
  ProfileSequence = ColorSyncTransformGetProfileSequence(a1);
  if (ProfileSequence)
  {
    CFDictionarySetValue(*(v16 + 4), @"com.apple.cmm.ProfileSequence", ProfileSequence);
  }

LABEL_162:
  v188 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
    if (v16)
    {
      goto LABEL_164;
    }

    goto LABEL_231;
  }

  if (!v16)
  {
    goto LABEL_231;
  }

LABEL_164:
  if (!v13 || v188 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
LABEL_231:
    pthread_mutex_unlock((a1 + 16));
    if (v16)
    {
      goto LABEL_168;
    }

    return 0;
  }

  CFDictionarySetValue(*(a1 + 136), v13, v16);
LABEL_167:
  pthread_mutex_unlock((a1 + 16));
LABEL_168:
  v189 = *(v16 + 4);
  v190 = *(a3 + 16);
  v191 = *(v16 + 56);
  v192 = *(v16 + 88);
  v258[2] = *(v16 + 72);
  v259[0] = v192;
  *(v259 + 12) = *(v16 + 100);
  v258[0] = *(v16 + 40);
  v258[1] = v191;
  if (!v190(a3, v258, v189))
  {
    goto LABEL_182;
  }

  if (*(v16 + 44) < 1)
  {
LABEL_180:
    v203 = 1;
    goto LABEL_183;
  }

  v199 = 0;
  v200 = 0;
  while (2)
  {
    v201 = *(v16 + 19);
    v202 = *(v201 + v199);
    switch(v202)
    {
      case 1:
        if (!(*(a4 + 16))(a4, v200, *(v201 + v199 + 16), v201 + v199 + 24))
        {
          goto LABEL_182;
        }

LABEL_179:
        ++v200;
        v199 += 152;
        if (v200 >= *(v16 + 44))
        {
          goto LABEL_180;
        }

        continue;
      case 3:
        if (((*(a6 + 16))(a6, v200, *(v201 + v199 + 24)) & 1) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_179;
      case 2:
        if (((*(a5 + 16))(a5, v200, *(v201 + v199 + 24)) & 1) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_179;
    }
  }

  ColorSyncLog(2, "ColorSyncTransform or ColorSyncTransformIterator is invalid (stage type = %d)", v193, v194, v195, v196, v197, v198, *(v201 + v199));
LABEL_182:
  v203 = 0;
LABEL_183:
  CFRelease(v16);
  return v203;
}

const UInt8 *GetCMMStorage(const __CFData **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v2 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  v3 = a1[13];
  if (!v3)
  {
    return 0;
  }

  return CFDataGetBytePtr(v3);
}

CFIndex collect_flattened_conversion(CMMConvNode *a1, char a2, const __CFDictionary *a3, CFArrayRef theArray)
{
  if (a1)
  {
    v7 = a1;
    do
    {
      if ((a2 & 1) == 0 || ((*(*v7 + 224))(v7) & 1) == 0)
      {
        v8 = (*(*v7 + 208))(v7, a3);
        if (!v8)
        {
          CFArrayRemoveAllValues(theArray);
          break;
        }

        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFArrayGetTypeID())
        {
          v13.length = CFArrayGetCount(v9);
          v13.location = 0;
          CFArrayAppendArray(theArray, v9, v13);
        }

        else
        {
          CFArrayAppendValue(theArray, v9);
        }

        CFRelease(v9);
      }

      v7 = *(v7 + 2);
    }

    while (v7);
  }

  return CFArrayGetCount(theArray);
}

void CMMConvNode::AddFixedPointClippingRange(CMMConvNode *this, __CFDictionary *a2, float a3, float a4)
{
  values[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  valuePtr = a3;
  if (a3 != 0.0 || a4 != 1.0)
  {
    v6 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
    v7 = CFNumberCreate(0, kCFNumberFloat32Type, &v10);
    values[0] = v6;
    values[1] = v7;
    v8 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFDictionaryAddValue(this, kColorSyncFixedPointRange, v8);
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void CMMConvNode::AddClampingInfo(CMMConvNode *this, CFMutableDictionaryRef theDict)
{
  v4 = MEMORY[0x1E695E4D0];
  if (*(this + 35) == 1)
  {
    CFDictionaryAddValue(theDict, @"com.apple.cmm.FunctionDoesInputClamp", *MEMORY[0x1E695E4D0]);
  }

  if (*(this + 36) == 1)
  {
    v5 = *v4;

    CFDictionaryAddValue(theDict, @"com.apple.cmm.FunctionDoesOutputClamp", v5);
  }
}

CFArrayRef ColorSyncTransformGetProfileSequence(CFArrayRef transform)
{
  if (transform)
  {
    v1 = transform;
    v2 = CFGetTypeID(transform);
    if (ColorSyncTransformGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
    }

    if (v2 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
    {
      return *(v1 + 15);
    }

    else
    {
      return 0;
    }
  }

  return transform;
}

void *ColorSyncTransformGetSrcComponentCount(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (ColorSyncTransformGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
    }

    if (v2 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
    {
      return v1[11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 ColorSyncMatrixGetFunction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  if (v4 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
  {
    __assert_rtn("ColorSyncMatrixGetFunction", "ColorSyncTransformFunctions.c", 577, "CFGetTypeID(ref) == ColorSyncMatrixGetTypeID()");
  }

  v5 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

uint64_t ColorSyncMatrixGetTypeID()
{
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  return ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID;
}

uint64_t ColorSyncMatrixGetProperties(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  if (v2 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
  {
    __assert_rtn("ColorSyncMatrixGetProperties", "ColorSyncTransformFunctions.c", 584, "CFGetTypeID(ref) == ColorSyncMatrixGetTypeID()");
  }

  return a1[16];
}

float ColorSyncMatrixGetInputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  if (v2 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
  {
    __assert_rtn("ColorSyncMatrixGetInputRange", "ColorSyncTransformFunctions.c", 596, "CFGetTypeID(ref) == ColorSyncMatrixGetTypeID()");
  }

  result = *(a1 + 68);
  v4 = *(a1 + 72);
  return result;
}

float ColorSyncMatrixGetOutputRange(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncMatrixGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
  }

  if (v2 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
  {
    __assert_rtn("ColorSyncMatrixGetOutputRange", "ColorSyncTransformFunctions.c", 603, "CFGetTypeID(ref) == ColorSyncMatrixGetTypeID()");
  }

  result = *(a1 + 76);
  v4 = *(a1 + 80);
  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::FlattenConversion(uint64_t a1)
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

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::FlattenConversion(uint64_t a1)
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

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::FlattenConversion(uint64_t a1)
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

uint64_t ColorSyncTRCGetGammaID(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncTRCGetGammaID", "ColorSyncTransformFunctions.c", 430, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  return a1[21];
}

uint64_t CMMMemMgr::RetainMemList(CMMMemMgr *this)
{
  if (!*this)
  {
    return 0;
  }

  pthread_mutex_lock((*this + 8));
  v2 = *this;
  *(v2 + 72) = *(*this + 72) + 1;
  pthread_mutex_unlock((v2 + 8));
  return *this;
}

void ColorSyncTransformInternalSetProperty(void *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (ColorSyncTransformGetTypeID_predicate == -1)
    {
      if (!a3)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
      if (!a3)
      {
        return;
      }
    }

    if (a2 && v6 == ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
    {
      v7 = a1[14];

      CFDictionarySetValue(v7, a2, a3);
    }
  }
}

void std::vector<CMMProfileInfo,TAllocator<CMMProfileInfo>>::__destroy_vector::operator()[abi:ne200100](pthread_mutex_t ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 5;
      v7 = v4 - 5;
      v8 = v4 - 5;
      do
      {
        v9 = *v8;
        v8 -= 5;
        (v9->__sig)(v7);
        v6 -= 5;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    CMMBase::operator delete(v5);
  }
}

void CMMMonoDisplayProfile::~CMMMonoDisplayProfile(CMMMonoDisplayProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void colorSyncTRCFinalize(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 5)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }
  }
}

BOOL ColorSyncProfileVerify(ColorSyncProfileRef prof, CFErrorRef *errors, CFErrorRef *warnings)
{
  if (!prof)
  {
    goto LABEL_8;
  }

  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_8:
    v6 = 0;
    return v6 & 1;
  }

  v5 = *(prof + 39);
  if (v5 == 2)
  {
    v6 = 1;
    return v6 & 1;
  }

  if (!v5)
  {
    v6 = *(prof + 152);
    return v6 & 1;
  }

  pthread_mutex_lock((prof + 24));
  v8 = AppleCMMValidateProfile(prof);
  pthread_mutex_unlock((prof + 24));
  return v8;
}

void ___ZL29CMMInitializeLinearGammaTablev_block_invoke()
{
  v6 = 0;
  CMMMemMgr::CMMMemMgr(&v6);
  v2 = CMMBase::NewInternal(0x28, &v6, v0, v1);
  v2[2] = 0;
  v2[3] = &kLinearGammaData;
  *v2 = &unk_1F0E09180;
  v2[1] = 0;
  v2[4] = 21512;
  CMMLinearGammaTable = v2;
  v5 = CMMBase::NewInternal(0x38, &v6, v3, v4);
  CMMLinearGammaFloatLutInfo = v5;
  *v5 = 0x700000001;
  *(v5 + 8) = 1;
  *(v5 + 3) = 0;
  v5[2] = 0;
  *(v5 + 6) = 1065353216;
  CMMMemMgr::ReleaseMemList(&v6);
}

void sub_19A93159C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t ColorSyncPureGammaOriginalTRC(unsigned __int8 *a1)
{
  v2 = CFGetTypeID(a1);
  if (ColorSyncTRCGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTRCGetTypeID_predicate, &__block_literal_global_1393);
  }

  if (v2 != ColorSyncTRCGetTypeID_kColorSyncTRCRuntimeID)
  {
    __assert_rtn("ColorSyncPureGammaOriginalTRC", "ColorSyncTransformFunctions.c", 437, "CFGetTypeID(ref) == ColorSyncTRCGetTypeID()");
  }

  return a1[88];
}

void ___ZL36CMMInitializeOnePointEightGammaTablev_block_invoke()
{
  v12 = 0;
  CMMMemMgr::CMMMemMgr(&v12);
  v2 = CMMBase::NewInternal(0x28, &v12, v0, v1);
  v2[2] = 0;
  v2[3] = &kOnePointEightGammaData;
  *v2 = &unk_1F0E09180;
  v2[1] = 0;
  v2[4] = 21512;
  CMMOnePointEightGammaTable = v2;
  v5 = CMMBase::NewInternal(0x28, &v12, v3, v4);
  v5[2] = 0;
  v5[3] = &kInvOnePointEightGammaData;
  *v5 = &unk_1F0E09180;
  v5[1] = 0;
  v5[4] = 21512;
  CMMInvOnePointEightGammaTable = v5;
  v8 = CMMBase::NewInternal(0x38, &v12, v6, v7);
  CMMOnePointEightGammaFloatLutInfo = v8;
  *v8 = 0x300000001;
  *(v8 + 8) = 1;
  *(v8 + 3) = 3;
  v8[2] = 0;
  *(v8 + 3) = xmmword_19A96E2B0;
  *(v8 + 10) = 1023410176;
  v11 = CMMBase::NewInternal(0x38, &v12, v9, v10);
  CMMInvOnePointEightGammaFloatLutInfo = v11;
  *v11 = 0x600000001;
  *(v11 + 8) = 1;
  *(v11 + 3) = 3;
  v11[2] = 0;
  *(v11 + 3) = xmmword_19A96E2C0;
  *(v11 + 10) = 989855744;
  CMMMemMgr::ReleaseMemList(&v12);
}

void sub_19A931794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::FlattenConversion(uint64_t a1)
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

CFDataRef __getSRGBData_block_invoke()
{
  if (getSRGBProfile_predicate != -1)
  {
    dispatch_once(&getSRGBProfile_predicate, &__block_literal_global_627);
  }

  result = ColorSyncProfileCopyData(getSRGBProfile_sRGBProfile, 0);
  getSRGBData_sRGBData = result;
  return result;
}

ColorSyncProfileRef __getSRGBProfile_block_invoke()
{
  result = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  getSRGBProfile_sRGBProfile = result;
  return result;
}

void vm_allocator_deallocate(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x1E69E9A60];
    v3 = -*MEMORY[0x1E69E9AC8] & a1;
    JUMPOUT(0x19EAE4B60);
  }

  free(a1);
}

BOOL colorSyncProfileEqual(const ColorSyncProfile *a1, const ColorSyncProfile *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  MD5 = ColorSyncProfileGetMD5(a1);
  v4 = ColorSyncProfileGetMD5(a2);
  result = *MD5.digest == *v4.digest && *&MD5.digest[8] == *&v4.digest[8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__CFData *ColorSyncProfileGetData(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  if (*(a1 + 156) != 1)
  {
    return *(a1 + 112);
  }

  pthread_mutex_lock((a1 + 24));
  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
  }

  ProfileData = createProfileData(a1);
  *(a1 + 112) = ProfileData;
  if (*(a1 + 156) == 1)
  {
    pthread_mutex_unlock((a1 + 24));
  }

  return ProfileData;
}

ColorSyncProfileRef CMMProfile::GetRelevantTags(ColorSyncProfileRef *this, unint64_t *a2)
{
  *a2 = 0;
  v4 = ColorSyncProfileCopyTagSignatures(this[2]);
  if (!v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  v9 = this[21];
  if (!v9)
  {
    v13 = CMMBase::NewInternal(0x38, this[3], v6, v7);
    this[21] = TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::TVector(v13, Count, this[3], v14);
    if (!Count)
    {
      goto LABEL_39;
    }

    goto LABEL_8;
  }

  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v10 = v9 + 8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) != Count)
  {
    std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize(v10, Count, v6, v7);
  }

  if (Count)
  {
LABEL_8:
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      FourCharCodeFromSignature = ColorSyncGetFourCharCodeFromSignature(ValueAtIndex);
      v18 = FourCharCodeFromSignature;
      if (FourCharCodeFromSignature <= 1667851119)
      {
        if (FourCharCodeFromSignature <= 1110589743)
        {
          v19 = -1093812784;
LABEL_20:
          if ((FourCharCodeFromSignature + v19) < 3)
          {
            goto LABEL_31;
          }

          continue;
        }

        if (FourCharCodeFromSignature <= 1649693250)
        {
          v19 = -1110589744;
          goto LABEL_20;
        }

        if (FourCharCodeFromSignature == 1649693251 || FourCharCodeFromSignature == 1649957210)
        {
LABEL_31:
          Tag = ColorSyncProfileGetTag(this[2], ValueAtIndex);
          if (Tag)
          {
            Length = CFDataGetLength(Tag);
            v23 = *a2;
            if (*a2 <= Length)
            {
              v23 = Length;
            }

            *a2 = v23;
            v24 = this[21];
            v25 = v24[1];
            v26 = v24[6];
            for (j = v24[2]; ; j = v24[2])
            {
              v28 = 0xAAAAAAAAAAAAAAABLL * ((j - v25) >> 3);
              if (v26 < v28)
              {
                break;
              }

              std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize((v24 + 1), v28 + 10, v6, v7);
              v26 = v24[6];
              v25 = v24[1];
            }

            v24[6] = v26 + 1;
            v29 = v25 + 24 * v26;
            *(v29 + 8) = v18;
            *(v29 + 16) = 0;
          }

          continue;
        }

        v20 = 1651208308;
      }

      else if (FourCharCodeFromSignature <= 1886545199)
      {
        if (FourCharCodeFromSignature > 1733843289)
        {
          if (FourCharCodeFromSignature == 1733843290)
          {
            goto LABEL_31;
          }

          v20 = 1800688195;
        }

        else
        {
          if (FourCharCodeFromSignature == 1667851120)
          {
            goto LABEL_31;
          }

          v20 = 1733579331;
        }
      }

      else
      {
        if (FourCharCodeFromSignature <= 1918128706)
        {
          v19 = -1886545200;
          goto LABEL_20;
        }

        if (FourCharCodeFromSignature == 1918128707 || FourCharCodeFromSignature == 2004119668)
        {
          goto LABEL_31;
        }

        v20 = 1918392666;
      }

      if (FourCharCodeFromSignature == v20)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_39:
  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize(this[21] + 8, *(this[21] + 6), v6, v7);
  v30 = (*a2 + 3) & 0xFFFFFFFC;
  if (v30 >= *a2)
  {
    v31 = 0;
  }

  else
  {
    v31 = 4294967246;
  }

  CMMThrowExceptionOnError(v31);
  *a2 = v30;
  CFRelease(v5);
  return this[21];
}

void std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize(uint64_t a1, unint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = v6 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v10 = a2 >= v9;
  v11 = a2 - v9;
  if (v11 != 0 && v10)
  {
    v12 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v6) >> 3) >= v11)
    {
      v39 = &v6[3 * v11];
      v40 = *(a1 + 8);
      do
      {
        *v40 = &unk_1F0E096E0;
        *(v40 + 8) = 0xFFFFFFFFLL;
        *(v40 + 16) = 0;
        v40 += 24;
        v6 += 3;
      }

      while (v40 != v39);
      *(a1 + 8) = v39;
    }

    else
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
      if (a2 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_length_error[abi:ne200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a2)
      {
        v15 = a2;
      }

      if (v14 < 0x555555555555555)
      {
        v13 = v15;
      }

      v16 = 3 * v13;
      v17 = CMMBase::NewInternal((24 * v13), *(a1 + 32), a3, a4);
      v19 = &v17[3 * a2];
      v20 = (v6 + v17 - v7);
      v21 = v17 + v8;
      do
      {
        *v21 = &unk_1F0E096E0;
        *(v21 + 1) = 0xFFFFFFFFLL;
        *(v21 + 4) = 0;
        v21 += 24;
        v20 += 24;
      }

      while (v21 != v19);
      v22 = *a1;
      v23 = *(a1 + 8);
      v18 = v17 + v8;
      v24 = (v17 + v8 - (v23 - *a1));
      *&v25 = v19;
      *(&v25 + 1) = &v17[v16];
      v41 = v25;
      if (v23 != *a1)
      {
        v26 = (v6 + v17 + -8 * (v23 - v22) - v7);
        v27 = *a1;
        v28 = v18 - (v23 - *a1);
        do
        {
          *v28 = &unk_1F0E096E0;
          *(v28 + 8) = v27[1];
          *(v28 + 16) = *(v27 + 4);
          v27 += 3;
          v28 += 24;
          v26 += 24;
        }

        while (v27 != v23);
        v29 = v22;
        v30 = v22;
        do
        {
          v31 = *v30;
          v30 += 3;
          (*v31)();
          v29 += 3;
        }

        while (v30 != v23);
      }

      v32 = *a1;
      *a1 = v24;
      *(a1 + 8) = v41;
      if (v32)
      {

        CMMBase::operator delete(v32);
      }
    }
  }

  else if (!v10)
  {
    v33 = &v7[3 * a2];
    if (v6 != v33)
    {
      v34 = v6 - 3;
      v35 = v34;
      v36 = v34;
      do
      {
        v37 = *v36;
        v36 -= 3;
        (v37->__sig)(v35);
        v34 -= 3;
        v38 = v35 == v33;
        v35 = v36;
      }

      while (!v38);
    }

    *(a1 + 8) = v33;
  }
}

BOOL CMMProfileInfoContainer::ProfilesIdentical(CMMProfileInfoContainer *this, CMMProfile *a2, CMMProfile *a3, CMMMemMgr *a4)
{
  v4 = *(this + 11);
  if (v4 == 1852662636)
  {
    return 0;
  }

  if (v4 != *(a2 + 11))
  {
    return 0;
  }

  if (*(this + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(this + 13) != *(a2 + 13))
  {
    return 0;
  }

  v21 = 0;
  v22 = 0;
  RelevantTags = CMMProfile::GetRelevantTags(this, &v22);
  v8 = CMMProfile::GetRelevantTags(a2, &v21);
  v9 = *(RelevantTags + 1);
  v10 = *(RelevantTags + 2);
  if (v10 - v9 != *(v8 + 2) - *(v8 + 1) || v22 != v21)
  {
    return 0;
  }

  if (v10 != v9)
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(*(v9 + 24 * v11 + 8));
      if (!ColorSyncProfileContainsTag(*(a2 + 2), SignatureFromFourCharCode))
      {
        break;
      }

      Tag = ColorSyncProfileGetTag(*(this + 2), SignatureFromFourCharCode);
      v15 = ColorSyncProfileGetTag(*(a2 + 2), SignatureFromFourCharCode);
      if (!Tag || v15 == 0)
      {
        break;
      }

      v17 = CFEqual(Tag, v15);
      v18 = v17 != 0;
      CFRelease(SignatureFromFourCharCode);
      if (!v17)
      {
        return v18;
      }

      v11 = v12;
      v9 = *(RelevantTags + 1);
      if (0xAAAAAAAAAAAAAAABLL * ((*(RelevantTags + 2) - v9) >> 3) <= v12++)
      {
        return 1;
      }
    }

    CFRelease(SignatureFromFourCharCode);
    return 0;
  }

  return 1;
}

void *TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::TVector(void *a1, unint64_t a2, CMMMemMgr *a3, const char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = &unk_1F0E0C388;
  a1[5] = a3;
  *a1 = &unk_1F0E0C320;
  a1[6] = 0;
  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize((a1 + 1), a2, a3, a4);
  return a1;
}

void sub_19A9323DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ColorSyncProfileGetPoppyIndex(const void *a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_8:
    __assert_rtn("ColorSyncProfileGetPoppyIndex", "ColorSyncPoppyProfile.c", 619, "profile != NULL && CFGetTypeID(profile) == ColorSyncProfileGetTypeID()");
  }

  return get_poppy_index_from_profile(a1);
}

uint64_t get_poppy_index_from_profile(const ColorSyncProfile *a1)
{
  if (!ColorSyncProfileContainsTag(a1, @"aapy"))
  {
    return -1;
  }

  Tag = ColorSyncProfileGetTag(a1, @"aapy");
  if (!Tag)
  {
    return -1;
  }

  v3 = Tag;
  if (CFDataGetLength(Tag) < 14)
  {
    return -1;
  }

  BytePtr = CFDataGetBytePtr(v3);
  if (*BytePtr != 1635017060)
  {
    return -1;
  }

  if (BytePtr[12] - 1 >= 0xA)
  {
    return -1;
  }

  return BytePtr[12];
}

CFTypeRef create_AdobeRGB1998Profile()
{
  if (create_AdobeRGB1998Profile_predicate != -1)
  {
    dispatch_once(&create_AdobeRGB1998Profile_predicate, &__block_literal_global_205);
  }

  v1 = create_AdobeRGB1998Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_CoreVideo709Profile()
{
  if (create_CoreVideo709Profile_predicate != -1)
  {
    dispatch_once(&create_CoreVideo709Profile_predicate, &__block_literal_global_208);
  }

  v1 = create_CoreVideo709Profile_profile;

  return CFRetain(v1);
}

void *CMMParaCurveTag::MakeTRC(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4, float a5)
{
  v6 = a4;
  if (*(a1 + 56) == 3)
  {
    if (*(a1 + 64) != 157286 || *(a1 + 68) != 62119 || *(a1 + 72) != 3417 || *(a1 + 76) != 5072 || *(a1 + 84) || *(a1 + 88))
    {
      goto LABEL_30;
    }

    if (CMMInitializeSRGBGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_17:
        v14 = CMMsRGBGammaTable;
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    v16 = *(CMMsRGBGammaFloatLutInfo + 16);
    v15 = *(CMMsRGBGammaFloatLutInfo + 32);
    v17 = *CMMsRGBGammaFloatLutInfo;
    *(a2 + 48) = *(CMMsRGBGammaFloatLutInfo + 48);
    *(a2 + 16) = v16;
    *(a2 + 32) = v15;
    *a2 = v17;
    goto LABEL_17;
  }

  if (*(a1 + 56))
  {
    goto LABEL_30;
  }

  v10 = *(a1 + 64);
  if (v10 == 0x10000)
  {
    if (CMMInitializeLinearGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_7:
        v14 = CMMLinearGammaTable;
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v12 = *(CMMLinearGammaFloatLutInfo + 16);
    v11 = *(CMMLinearGammaFloatLutInfo + 32);
    v13 = *CMMLinearGammaFloatLutInfo;
    *(a2 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *a2 = v13;
    goto LABEL_7;
  }

  if (v10 >> 1 == 58982)
  {
    if (CMMInitializeOnePointEightGammaTable(void)::predicate == -1)
    {
      if (!a2)
      {
LABEL_22:
        v14 = CMMOnePointEightGammaTable;
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&CMMInitializeOnePointEightGammaTable(void)::predicate, &__block_literal_global_1018);
      if (!a2)
      {
        goto LABEL_22;
      }
    }

    v19 = *(CMMOnePointEightGammaFloatLutInfo + 16);
    v18 = *(CMMOnePointEightGammaFloatLutInfo + 32);
    v20 = *CMMOnePointEightGammaFloatLutInfo;
    *(a2 + 48) = *(CMMOnePointEightGammaFloatLutInfo + 48);
    *(a2 + 16) = v19;
    *(a2 + 32) = v18;
    *a2 = v20;
    goto LABEL_22;
  }

  if (v10 != 144179)
  {
LABEL_30:
    v14 = CMMBase::NewInternal(0x28, a3, a3, a4);
    *v14 = &unk_1F0E09180;
    v14[1] = 1;
    v14[3] = 0;
    v14[4] = 21512;
    v27 = CMMBase::NewInternal(0x5408, a3, v25, v26);
    v14[2] = v27;
    v28 = CMMTable::UInt8Data(v27, v14[3]);
    CMMParaCurveTag::MakeLut(a1, a2, v28, v6, a5);
    v29 = CMMTable::UInt8Data(v14[2], v14[3]);
    MakeLookups(v29);
    return v14;
  }

  if (CMMInitializeTwoPointTwoGammaTable(void)::predicate != -1)
  {
    dispatch_once(&CMMInitializeTwoPointTwoGammaTable(void)::predicate, &__block_literal_global_1008);
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a2)
  {
LABEL_26:
    v22 = *(CMMTwoPointTwoGammaFloatLutInfo + 16);
    v21 = *(CMMTwoPointTwoGammaFloatLutInfo + 32);
    v23 = *CMMTwoPointTwoGammaFloatLutInfo;
    *(a2 + 48) = *(CMMTwoPointTwoGammaFloatLutInfo + 48);
    *(a2 + 16) = v22;
    *(a2 + 32) = v21;
    *a2 = v23;
  }

LABEL_27:
  v14 = CMMTwoPointTwoGammaTable;
LABEL_28:
  v24 = v14[1];
  if (v24)
  {
    v14[1] = v24 + 1;
  }

  return v14;
}

uint64_t CMMParaCurveTag::SameCurve(CMMParaCurveTag *this, char **lpsrc, char **a3)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
    if (a3)
    {
LABEL_3:
      v7 = **a3;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  if (v6 | v8)
  {
    result = 0;
    if (v6 && v8)
    {
      return *(v6 + 56) == *(v8 + 56) && memcmp((v6 + 64), (v8 + 64), 4 * *(v8 + 60)) == 0;
    }
  }

  else
  {
    v9 = *(*lpsrc + 7);

    return v9(lpsrc, lpsrc, a3);
  }

  return result;
}

CFTypeRef ColorSyncProfileCopyASCIIDescriptionString(CFTypeRef result)
{
  if (!result)
  {
    return result;
  }

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

  result = *(v1 + 12);
  if (!result)
  {
    return result;
  }

  Value = CFDictionaryGetValue(result, @"desc");
  if (Value && ((v4 = Value, v5 = CFGetTypeID(Value), v5 != CFStringGetTypeID()) || (v4 = CFDictionaryGetValue(*(v1 + 12), v4)) != 0) && (v6 = CFGetTypeID(v4), v6 == CFDataGetTypeID()) && CFDataGetLength(v4) >= 9 && (v7 = CFDataGetBytePtr(v4)) != 0)
  {
    if (*v7 == 1668506980)
    {
      v8 = 1684370275;
      BytePtr = CFDataGetBytePtr(v4);
      Length = CFDataGetLength(v4);
      if (Length >= 0xD)
      {
        v11 = *(BytePtr + 2);
        if (v11)
        {
          v12 = bswap32(v11);
          if (Length >= v12 + 12)
          {
            result = CFStringCreateWithBytes(0, BytePtr + 12, v12, 0x600u, 0);
            if (result)
            {
              return result;
            }
          }
        }
      }
    }

    else
    {
      v8 = bswap32(*v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = CFDictionaryGetValue(*(v1 + 12), @"dscm");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 != CFStringGetTypeID() || (v14 = CFDictionaryGetValue(*(v1 + 12), v14)) != 0)
    {
      v16 = CFGetTypeID(v14);
      if (v16 == CFDataGetTypeID() && CFDataGetLength(v14) >= 9)
      {
        if (CFDataGetBytePtr(v14))
        {
          v8 = bswap32(*CFDataGetBytePtr(v14));
        }

        if (v8 == 1835824483)
        {
          result = copy_description_from_DSCMTag(v14, 0, 0);
          if (result)
          {
            return result;
          }

          v8 = 1835824483;
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  v17 = CFDictionaryGetValue(*(v1 + 12), @"desc");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFStringGetTypeID() || (v18 = CFDictionaryGetValue(*(v1 + 12), v18)) != 0)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFDataGetTypeID() && CFDataGetLength(v18) >= 9)
      {
        v21 = CFDataGetBytePtr(v18);
        if (v21)
        {
          v8 = bswap32(*v21);
        }
      }

      if (v8 == 1684370275)
      {
        result = copy_descriptionFromDESCTag(v18, 0, 0);
      }

      else
      {
        if (v8 != 1835824483)
        {
LABEL_45:
          v22 = kColorSyncBadDescription;
          goto LABEL_46;
        }

        result = copy_description_from_DSCMTag(v18, 0, 0);
      }

      if (result)
      {
        return result;
      }

      goto LABEL_45;
    }
  }

  v22 = kColorSyncMissingDescription;
LABEL_46:
  v23 = *v22;

  return CFRetain(v23);
}

CFTypeRef create_GenericLabProfile()
{
  if (create_GenericLabProfile_predicate != -1)
  {
    dispatch_once(&create_GenericLabProfile_predicate, &__block_literal_global_271);
  }

  v1 = create_GenericLabProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_CoreVideoLegacy709Profile()
{
  if (create_CoreVideoLegacy709Profile_predicate != -1)
  {
    dispatch_once(&create_CoreVideoLegacy709Profile_predicate, &__block_literal_global_190);
  }

  v1 = create_CoreVideoLegacy709Profile_profile;

  return CFRetain(v1);
}

CFTypeRef create_DisplayP3_709OETFProfile()
{
  if (create_DisplayP3_709OETFProfile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_709OETFProfile_predicate, &__block_literal_global_220);
  }

  v1 = create_DisplayP3_709OETFProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR2020_HLGProfile()
{
  if (create_ITUR2020_HLGProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR2020_HLGProfile_predicate, &__block_literal_global_181);
  }

  v1 = create_ITUR2020_HLGProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR2100_HLGProfile()
{
  if (create_ITUR2100_HLGProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR2100_HLGProfile_predicate, &__block_literal_global_244);
  }

  v1 = create_ITUR2100_HLGProfile_profile;

  return CFRetain(v1);
}

uint64_t CMMLutTag::CMMLutTag(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CMMMemMgr *a5, const char *a6, const char *a7)
{
  *(a1 + 32) = 0;
  v12 = (a1 + 32);
  *(a1 + 8) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  if (a4)
  {
    *(a4 + 16) = a1;
  }

  *a1 = &unk_1F0E09350;
  v13 = *(a3 + 40);
  *(a1 + 32) = v13;
  if (v13 <= 0x20)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (*(a3 + 32))
  {
    if (v13 >= 34)
    {
      v14 = 26;
    }

    else
    {
      v14 = v13 - 8;
    }

    if (v14 <= 0)
    {
      v15 = 4294967126;
    }

    else
    {
      v15 = 0;
    }

    CMMThrowExceptionOnError(v15);
    memcpy((a1 + 50), (*(a3 + 32) + 8), v14);
  }

  *(a1 + 54) = vrev32q_s8(*(a1 + 54));
  *(a1 + 70) = bswap32(*(a1 + 70));
  CMMThrowExceptionOnCondition(*(a1 + 50) - 16 < 0xFFFFFFF1);
  CMMThrowExceptionOnCondition(*(a1 + 51) - 16 < 0xFFFFFFF1);
  v16 = *(a1 + 54);
  LODWORD(v17) = *(a1 + 70);
  v18 = vmaxvq_u32(v16);
  if (v18 <= v17)
  {
    v17 = v17;
  }

  else
  {
    v17 = v18;
  }

  if (*(a1 + 32) <= v17)
  {
    v83 = __cxa_allocate_exception(4uLL);
    *v83 = -171;
  }

  *(a1 + 100) = 0;
  v19 = v16.u32[3];
  if (v16.i32[3])
  {
    if (*(a3 + 32))
    {
      v20 = *(a3 + 40);
      if (v16.u32[3] + 21 <= v20)
      {
        v21 = 21;
      }

      else
      {
        v21 = v20 - v16.u32[3];
      }

      if (v21 <= 0)
      {
        v22 = 4294967126;
      }

      else
      {
        v22 = 0;
      }

      CMMThrowExceptionOnError(v22);
      memcpy((a1 + 76), (*(a3 + 32) + v19), v21);
    }

    v23 = *(a1 + 50);
    v24 = *(a1 + 51);
    if (*(a1 + 92) - 1 >= 2)
    {
      v25 = 4294967126;
    }

    else
    {
      v25 = 0;
    }

    CMMThrowExceptionOnError(v25);
    v87 = a6;
    v26 = a7;
    v27 = *(a1 + 76);
    if (v23 >= 2)
    {
      v28 = v23 - 1;
      v29 = (a1 + 77);
      do
      {
        if (v27)
        {
          v30 = (v27 * *v29) >> 64;
          v27 *= *v29;
          if (v30)
          {
            v31 = 4294967126;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        CMMThrowExceptionOnError(v31);
        ++v29;
        --v28;
      }

      while (v28);
    }

    if (v27)
    {
      v32 = *(a1 + 92) * v24;
      v33 = (v27 * v32) >> 64;
      v27 *= v32;
      if (v33)
      {
        v34 = 4294967126;
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

    a7 = v26;
    CMMThrowExceptionOnError(v34);
    a6 = v87;
    if (v27)
    {
      v36 = 0;
    }

    else
    {
      v36 = 4294967126;
    }

    CMMThrowExceptionOnError(v36);
    v39 = (*(a1 + 66) + 20);
    if (*(a1 + 32) < (v27 + v39))
    {
      v86 = __cxa_allocate_exception(4uLL);
      *v86 = -171;
    }

    v40 = CMMBase::NewInternal(0x28, a5, v37, v38);
    v41 = *(a3 + 32);
    if (v41)
    {
      v42 = *(a3 + 40);
      if (v27 + v39 <= v42)
      {
        v43 = v27;
      }

      else
      {
        v43 = v42 - v39;
      }

      if (v43 <= 0)
      {
        v44 = 4294967126;
      }

      else
      {
        v44 = 0;
      }

      CMMThrowExceptionOnError(v44);
      v41 = *(a3 + 32) + v39;
    }

    *v40 = &unk_1F0E09180;
    v40[1] = 1;
    v40[3] = v41;
    v40[4] = v27;
    v40[2] = 0;
    *(a1 + 104) = v40;
    v35 = v27 + 20;
    v45 = *(a1 + 76);
    *(a1 + 100) = v45;
    v46 = *(a1 + 50);
    if (v46 >= 2)
    {
      v47 = (a1 + 77);
      v48 = v46 - 1;
      while (1)
      {
        v49 = *v47++;
        if (v45 != v49)
        {
          break;
        }

        if (!--v48)
        {
          goto LABEL_60;
        }
      }

      *(a1 + 100) = 0;
    }
  }

  else
  {
    v35 = 0;
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    *(a1 + 89) = 0;
    *(a1 + 104) = 0;
  }

LABEL_60:
  v89 = 0;
  v88 = 0;
  CMMLutTag::InitializeCurveTable(a1, (a1 + 480), a5, a6, *(a1 + 70), a3, &v89 + 1);
  CMMLutTag::InitializeCurveTable(a1, (a1 + 208), a5, a7, *(a1 + 54), a3, &v89);
  CMMLutTag::InitializeCurveTable(a1, (a1 + 344), a5, 3, *(a1 + 62), a3, &v88);
  v50 = *(a1 + 70);
  v51 = *(a1 + 54);
  v52 = *(a1 + 62);
  if (v50 == v51)
  {
    v54 = v89;
    v53 = HIDWORD(v89);
    if (v50 == v52)
    {
      v55 = 0;
      v56 = 0;
      if (v89 <= v88)
      {
        v54 = v88;
      }

      if (HIDWORD(v89) <= v54)
      {
        v53 = v54;
      }
    }

    else
    {
      v56 = 0;
      if (HIDWORD(v89) <= v89)
      {
        v53 = v89;
      }

      v55 = v88;
    }
  }

  else
  {
    if (v89 <= v88)
    {
      v57 = v88;
    }

    else
    {
      v57 = v89;
    }

    v58 = v51 == v52;
    if (v51 == v52)
    {
      v55 = 0;
    }

    else
    {
      v55 = v88;
    }

    if (v58)
    {
      v56 = v57;
    }

    else
    {
      v56 = v89;
    }

    v53 = HIDWORD(v89);
  }

  v59 = v56 + v53 + v55;
  v60 = *v12;
  v61 = v35 + v59 + 32;
  if (*v12 < v61)
  {
    v84 = __cxa_allocate_exception(4uLL);
    *v84 = -171;
  }

  v62 = *(a1 + 58);
  if (v62)
  {
    if (*(a3 + 40) >= (v62 + 48))
    {
      v63 = 0;
    }

    else
    {
      v63 = 4294967294;
    }

    CMMThrowExceptionOnError(v63);
    v64 = *(a3 + 32);
    if (v64)
    {
      v65 = *(a3 + 40);
      if (v65 - v62 > 0 || v62 + 48 <= v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = 4294967126;
      }

      CMMThrowExceptionOnError(v67);
      v64 = *(a3 + 32) + v62;
    }

    v68 = 0;
    v69 = 0;
    v70 = (a1 + 160);
    do
    {
      v71 = v70;
      v72 = 3;
      do
      {
        v73 = *(v64 + 4 * v69++);
        v74 = bswap32(v73);
        *(v71 - 12) = v74;
        v75 = vcvtd_n_f64_s32(v74, 0x10uLL);
        *v71++ = v75;
        --v72;
      }

      while (v72);
      v76 = bswap32(*(v64 + 36 + 4 * v68));
      *(a1 + 112 + 16 * v68 + 12) = v76;
      v77 = vcvtd_n_f64_s32(v76, 0x10uLL);
      *(a1 + 160 + 16 * v68++ + 12) = v77;
      v70 += 4;
    }

    while (v68 != 3);
    v60 = *v12;
    v78 = 48;
  }

  else
  {
    v79 = (a1 + 160);
    v80 = 3;
    do
    {
      *(v79 - 6) = 0;
      *(v79 - 5) = 0;
      *v79 = 0;
      v79[1] = 0;
      v79 += 2;
      --v80;
    }

    while (v80);
    v78 = 0;
    *(a1 + 152) = 0x10000;
    *(a1 + 132) = 0x10000;
    *(a1 + 112) = 0x10000;
    *(a1 + 200) = 1065353216;
    *(a1 + 180) = 1065353216;
    *(a1 + 160) = 1065353216;
  }

  if (v60 < v61 + v78)
  {
    v85 = __cxa_allocate_exception(4uLL);
    *v85 = -171;
  }

  return a1;
}

uint64_t CMMThrowExceptionOnCondition(uint64_t result)
{
  if (result)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -170;
  }

  return result;
}

ColorSyncProfile *makeCalRGB(uint64_t a1, const __CFDictionary *a2)
{
  v4 = create(0, 0, 1, 0);
  if (v4)
  {
    qmemcpy((a1 + 12), "rtnm BGR ZYX", 12);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(v40, 0, sizeof(v40));
    v41 = doubleFromDictionary(a2, @"whitePointx");
    v5 = doubleFromDictionary(a2, @"whitePointy");
    v42 = v5;
    if (v41 == 0.0 || v5 == 0.0 || !primariesFromDictionary(a2, v40) || !checkPrimaries(v40))
    {
      v6 = icXYZFromDictionary(a2, @"wtpt");
      addXYZTag(v4, @"wtpt", v6, v7);
      if (CFDictionaryContainsKey(a2, @"bkpt") == 1)
      {
        v8 = icXYZFromDictionary(a2, @"bkpt");
        addXYZTag(v4, @"bkpt", v8, v9);
      }

      v10 = icXYZD50FromDictionary(a2, @"rXYZ");
      addXYZTag(v4, @"rXYZ", v10, v11);
      v12 = icXYZD50FromDictionary(a2, @"gXYZ");
      addXYZTag(v4, @"gXYZ", v12, v13);
      v14 = icXYZD50FromDictionary(a2, @"bXYZ");
      addXYZTag(v4, @"bXYZ", v14, v15);
    }

    else
    {
      ColorSyncProfileSetPrimaries(v4, v40);
    }

    if (!CFDictionaryContainsKey(a2, @"paraR") || !CFDictionaryContainsKey(a2, @"paraG") || !CFDictionaryContainsKey(a2, @"paraB"))
    {
      v25 = @"rGamma";
      if (CFDictionaryContainsKey(a2, @"rGamma") || (v25 = @"gammaR", CFDictionaryContainsKey(a2, @"gammaR")))
      {
        v26 = floatFromDictionary(a2, v25);
        addGammaTag(v4, @"rTRC", v26);
      }

      v27 = @"gGamma";
      if (CFDictionaryContainsKey(a2, @"gGamma") || (v27 = @"gammaG", CFDictionaryContainsKey(a2, @"gammaG")))
      {
        v28 = floatFromDictionary(a2, v27);
        addGammaTag(v4, @"gTRC", v28);
      }

      if (CFDictionaryContainsKey(a2, @"bGamma"))
      {
        v29 = @"bGamma";
      }

      else
      {
        if (!CFDictionaryContainsKey(a2, @"gammaB"))
        {
          return v4;
        }

        v29 = @"gammaB";
      }

      v30 = floatFromDictionary(a2, v29);
      addGammaTag(v4, @"bTRC", v30);
      return v4;
    }

    gammaCurveFromDictionary(&v32, a2, @"paraR");
    v16.f64[0] = v33;
    v17.f64[0] = v35;
    v18.f64[0] = v37;
    ColorSyncProfileSetParametricTRCTag(v4, @"rTRC", v32, v16, v34, v17, v36, v18, v38, v39);
    gammaCurveFromDictionary(&v32, a2, @"paraG");
    v19.f64[0] = v33;
    v20.f64[0] = v35;
    v21.f64[0] = v37;
    ColorSyncProfileSetParametricTRCTag(v4, @"gTRC", v32, v19, v34, v20, v36, v21, v38, v39);
    gammaCurveFromDictionary(&v32, a2, @"paraB");
    v22.f64[0] = v33;
    v23.f64[0] = v35;
    v24.f64[0] = v37;
    ColorSyncProfileSetParametricTRCTag(v4, @"bTRC", v32, v22, v34, v23, v36, v24, v38, v39);
  }

  return v4;
}

unint64_t icXYZFromDictionary(const __CFDictionary *a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFArrayGetTypeID()) && (v13 = 0, valuePtr = 0, ValueAtIndex = CFArrayGetValueAtIndex(v3, 0), CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr)) && (v6 = CFArrayGetValueAtIndex(v3, 1), CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr + 4)) && (v7 = CFArrayGetValueAtIndex(v3, 2), CFNumberGetValue(v7, kCFNumberFloatType, &v13)))
  {
    v8 = ((*&valuePtr * 65536.0) + 0.5);
    v9 = ((*(&valuePtr + 1) * 65536.0) + 0.5) << 32;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 | v9;
}

void addXYZTag(ColorSyncProfile *a1, const __CFString *a2, uint64_t a3, unsigned int a4)
{
  *bytes = 542792024;
  v8 = bswap32(a3);
  v9 = bswap32(HIDWORD(a3));
  v10 = bswap32(a4);
  v6 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *MEMORY[0x1E695E498]);
  ColorSyncProfileSetTag(a1, a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }
}

unint64_t icXYZD50FromDictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    goto LABEL_12;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFArrayGetTypeID())
  {
    goto LABEL_12;
  }

  valuePtr = 0uLL;
  v23 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
  if (!CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr))
  {
    goto LABEL_12;
  }

  v7 = CFArrayGetValueAtIndex(v4, 1);
  if (!CFNumberGetValue(v7, kCFNumberDoubleType, &valuePtr + 8))
  {
    goto LABEL_12;
  }

  v8 = CFArrayGetValueAtIndex(v4, 2);
  if (!CFNumberGetValue(v8, kCFNumberDoubleType, &v23))
  {
    goto LABEL_12;
  }

  v9 = CFDictionaryGetValue(a1, @"wtpt");
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 == CFArrayGetTypeID() && (v20 = 0uLL, v21 = 0, v12 = CFArrayGetValueAtIndex(v10, 0), CFNumberGetValue(v12, kCFNumberDoubleType, &v20)) && (v13 = CFArrayGetValueAtIndex(v10, 1), CFNumberGetValue(v13, kCFNumberDoubleType, &v20.f64[1])) && (v14 = CFArrayGetValueAtIndex(v10, 2), CFNumberGetValue(v14, kCFNumberDoubleType, &v21)))
  {
    v18 = 0uLL;
    v19 = 0;
    ColorSyncConvertDoubleXYZToD50(&valuePtr, &v20, &v18, 3, 0);
    v15 = (*&v18 * 65536.0 + 0.5);
    v16 = (*(&v18 + 1) * 65536.0 + 0.5) << 32;
  }

  else
  {
LABEL_12:
    v16 = 0;
    v15 = 0;
  }

  return v15 | v16;
}

uint64_t CMMLutTag::InitializeCurveTable(uint64_t result, _DWORD *a2, CMMMemMgr *a3, const char *a4, int a5, uint64_t a6, _DWORD *a7)
{
  *a2 = 0;
  if (a5)
  {
    if (a4 >= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = a4;
    }

    if (a4)
    {
      LODWORD(v10) = a5;
      v12 = result;
      v13 = 0;
      while (1)
      {
        v14 = *(v12 + 32) - v10;
        if (v14 <= 0xB)
        {
          break;
        }

        if (*(a6 + 32))
        {
          if (v14 >= 0x400)
          {
            v14 = 1024;
          }

          v15 = *(a6 + 40);
          if (v14 + v10 > v15)
          {
            v14 = v15 - v10;
          }

          if (v14 <= 0)
          {
            v16 = 4294967126;
          }

          else
          {
            v16 = 0;
          }

          CMMThrowExceptionOnError(v16);
          v17 = (*(a6 + 32) + v10);
        }

        else
        {
          v17 = 0;
        }

        v18 = bswap32(*v17);
        v19 = v17[2];
        if (v18 == 1885434465)
        {
          v26 = bswap32(v19) >> 16;
          if (v26 >= 5)
          {
LABEL_34:
            exception = __cxa_allocate_exception(4uLL);
            v29 = -170;
LABEL_35:
            *exception = v29;
          }

          v21 = dword_19A9B15EC[v26];
          v10 = (v21 + v10);
          if (*(v12 + 32) < v10)
          {
            break;
          }

          v25 = CMMBase::NewInternal(0x80, a3, a3, a4);
          CMMParaCurveTag::CMMParaCurveTag(v25, v13, v17, v21, 0);
        }

        else
        {
          if (v18 != 1668641398)
          {
            goto LABEL_34;
          }

          v20 = 2 * bswap32(v19);
          v21 = (v20 + 15) & 0xFFFFFFFC;
          if (v21 >= v20 + 12)
          {
            v22 = 0;
          }

          else
          {
            v22 = 4294967246;
          }

          CMMThrowExceptionOnError(v22);
          if ((v21 + v10) >> 32 || *(v12 + 32) < v21 + v10)
          {
            break;
          }

          v25 = CMMBase::NewInternal(0x38, a3, v23, v24);
          CMMCurveTag::CMMCurveTag(v25, v13, v17, v21, 0);
          LODWORD(v10) = v21 + v10;
        }

        v27 = (*(*v25 + 32))(v25, 1, 1);
        result = CMMThrowExceptionOnError(v27);
        *&a2[2 * v13 + 2] = v25;
        ++*a2;
        *a7 += v21;
        if (v8 == ++v13)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(4uLL);
      v29 = -171;
      goto LABEL_35;
    }
  }

  else
  {
    *a7 = 0;
  }

  return result;
}

uint64_t CMMLutTagBase::Validate(CMMLutTagBase *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 2);
  if (v4 > 1734438259)
  {
    if ((v4 - 1886545200) >= 3)
    {
      if (v4 != 1734438260)
      {
        goto LABEL_17;
      }

      v5 = 1;
      v6 = 3;
    }

    else
    {
      v6 = 3;
      v5 = 3;
    }
  }

  else
  {
    v5 = a2;
    if ((v4 - 1093812784) < 3)
    {
      v6 = a2;
      v5 = a3;
    }

    else
    {
      v6 = a3;
      if ((v4 - 1110589744) >= 3)
      {
LABEL_17:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -170;
      }
    }
  }

  if ((*(*this + 48))(this) == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294967126;
  }

  CMMThrowExceptionOnError(v7);
  if ((*(*this + 56))(this) == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4294967126;
  }

  CMMThrowExceptionOnError(v8);
  return 0;
}

void CMMLutAtoBTag::~CMMLutAtoBTag(CMMLutAtoBTag *this)
{
  CMMLutTag::~CMMLutTag(this);

  CMMBase::operator delete(v1);
}

void CMMLutTag::~CMMLutTag(CMMLutTag *this)
{
  *this = &unk_1F0E09350;
  v2 = *(this + 13);
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

  CMMTag::~CMMTag(this);
}

void CMMTable::~CMMTable(CMMTable *this)
{
  *this = &unk_1F0E09180;
  v2 = *(this + 2);
  if (v2)
  {
    CMMBase::operator delete(v2);
  }

  CMMBase::operator delete(this);
}

{
  *this = &unk_1F0E09180;
  v1 = *(this + 2);
  if (v1)
  {
    CMMBase::operator delete(v1);
  }
}

void CMMLutBtoATag::~CMMLutBtoATag(CMMLutBtoATag *this)
{
  CMMLutTag::~CMMLutTag(this);

  CMMBase::operator delete(v1);
}

CFTypeRef create_DisplayP3_HLGProfile()
{
  if (create_DisplayP3_HLGProfile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_HLGProfile_predicate, &__block_literal_global_217);
  }

  v1 = create_DisplayP3_HLGProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_DisplayP3_PQProfile()
{
  if (create_DisplayP3_PQProfile_predicate != -1)
  {
    dispatch_once(&create_DisplayP3_PQProfile_predicate, &__block_literal_global_226);
  }

  v1 = create_DisplayP3_PQProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR2020_PQProfile()
{
  if (create_ITUR2020_PQProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR2020_PQProfile_predicate, &__block_literal_global_184);
  }

  v1 = create_ITUR2020_PQProfile_profile;

  return CFRetain(v1);
}

void TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::~TVector(uint64_t a1)
{
  v2 = (a1 + 8);
  std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);

  CMMBase::operator delete(a1);
}

void std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__destroy_vector::operator()[abi:ne200100](pthread_mutex_t ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (v9->__sig)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    CMMBase::operator delete(v5);
  }
}

CFTypeRef create_ITUR2100_PQProfile()
{
  if (create_ITUR2100_PQProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR2100_PQProfile_predicate, &__block_literal_global_247);
  }

  v1 = create_ITUR2100_PQProfile_profile;

  return CFRetain(v1);
}

CFTypeRef create_ITUR709_PQProfile()
{
  if (create_ITUR709_PQProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR709_PQProfile_predicate, &__block_literal_global_256);
  }

  v1 = create_ITUR709_PQProfile_profile;

  return CFRetain(v1);
}

CMMTable *CMMParaCurveTag::MakeInvertedTRC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = v0;
  v45 = *MEMORY[0x1E69E9840];
  if (*(v0 + 56) == 3)
  {
    if (*(v0 + 64) == 157286 && *(v0 + 68) == 62119 && *(v0 + 72) == 3417 && *(v0 + 76) == 5072 && !*(v0 + 84) && !*(v0 + 88))
    {
      if (CMMInitializeSRGBGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeSRGBGammaTable(void)::predicate, &__block_literal_global_1012);
      }

      v14 = CMMsRGBGammaTable;
      v15 = *(CMMsRGBGammaTable + 8);
      if (v15)
      {
        *(CMMsRGBGammaTable + 8) = v15 + 1;
      }

      *v3 = v14;
      if (v6)
      {
        v17 = *(CMMInvsRGBGammaFloatLutInfo + 16);
        v16 = *(CMMInvsRGBGammaFloatLutInfo + 32);
        v18 = *CMMInvsRGBGammaFloatLutInfo;
        *(v6 + 48) = *(CMMInvsRGBGammaFloatLutInfo + 48);
        *(v6 + 16) = v17;
        *(v6 + 32) = v16;
        *v6 = v18;
      }

      v9 = CMMInvsRGBGammaTable;
      goto LABEL_39;
    }
  }

  else if (!*(v0 + 56))
  {
    v8 = *(v0 + 64);
    if (v8 == 0x10000)
    {
      if (CMMInitializeLinearGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeLinearGammaTable(void)::predicate, &__block_literal_global_1015);
      }

      v9 = CMMLinearGammaTable;
      v10 = *(CMMLinearGammaTable + 8);
      if (v10)
      {
        *(CMMLinearGammaTable + 8) = ++v10;
      }

      *v3 = v9;
      if (!v6)
      {
        goto LABEL_40;
      }

      v12 = *(CMMLinearGammaFloatLutInfo + 16);
      v11 = *(CMMLinearGammaFloatLutInfo + 32);
      v13 = *CMMLinearGammaFloatLutInfo;
      *(v6 + 48) = *(CMMLinearGammaFloatLutInfo + 48);
      *(v6 + 16) = v12;
      *(v6 + 32) = v11;
      *v6 = v13;
LABEL_39:
      v10 = *(v9 + 1);
LABEL_40:
      if (v10)
      {
        *(v9 + 1) = v10 + 1;
      }

      goto LABEL_46;
    }

    if (v8 >> 1 == 58982)
    {
      if (CMMInitializeOnePointEightGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeOnePointEightGammaTable(void)::predicate, &__block_literal_global_1018);
      }

      v19 = CMMOnePointEightGammaTable;
      v20 = *(CMMOnePointEightGammaTable + 8);
      if (v20)
      {
        *(CMMOnePointEightGammaTable + 8) = v20 + 1;
      }

      *v3 = v19;
      if (v6)
      {
        v22 = *(CMMInvOnePointEightGammaFloatLutInfo + 16);
        v21 = *(CMMInvOnePointEightGammaFloatLutInfo + 32);
        v23 = *CMMInvOnePointEightGammaFloatLutInfo;
        *(v6 + 48) = *(CMMInvOnePointEightGammaFloatLutInfo + 48);
        *(v6 + 16) = v22;
        *(v6 + 32) = v21;
        *v6 = v23;
      }

      v9 = CMMInvOnePointEightGammaTable;
      goto LABEL_39;
    }

    if (v8 == 144179)
    {
      if (CMMInitializeTwoPointTwoGammaTable(void)::predicate != -1)
      {
        dispatch_once(&CMMInitializeTwoPointTwoGammaTable(void)::predicate, &__block_literal_global_1008);
      }

      v24 = CMMTwoPointTwoGammaTable;
      v25 = *(CMMTwoPointTwoGammaTable + 8);
      if (v25)
      {
        *(CMMTwoPointTwoGammaTable + 8) = v25 + 1;
      }

      *v3 = v24;
      if (v6)
      {
        v27 = *(CMMInvTwoPointTwoGammaFloatLutInfo + 16);
        v26 = *(CMMInvTwoPointTwoGammaFloatLutInfo + 32);
        v28 = *CMMInvTwoPointTwoGammaFloatLutInfo;
        *(v6 + 48) = *(CMMInvTwoPointTwoGammaFloatLutInfo + 48);
        *(v6 + 16) = v27;
        *(v6 + 32) = v26;
        *v6 = v28;
      }

      v9 = CMMInvTwoPointTwoGammaTable;
      goto LABEL_39;
    }
  }

  v29 = CMMBase::NewInternal(0x28, v1, v1, v2);
  *v29 = &unk_1F0E09180;
  v29[1] = 1;
  v29[3] = 0;
  v29[4] = 21512;
  v29[2] = CMMBase::NewInternal(0x5408, v4, v30, v31);
  *v3 = v29;
  v32 = CMMTable::UInt8Data(v29[2], v29[3]);
  CMMParaCurveTag::MakeLut(v7, v6, v32, 0, 1.0);
  v9 = CMMBase::NewInternal(0x28, v4, v33, v34);
  *v9 = &unk_1F0E09180;
  *(v9 + 1) = 1;
  *(v9 + 3) = 0;
  *(v9 + 4) = 21512;
  v37 = CMMBase::NewInternal(0x5408, v4, v35, v36);
  *(v9 + 2) = v37;
  v38 = CMMTable::UInt8Data(v37, *(v9 + 3));
  memcpy(v38, v32, 0x5408uLL);
  bzero(v44, 0x4004uLL);
  InvertLUT(v38, v44);
  MakeLookups(v38);
  if (v6)
  {
    if (*v6)
    {
      CMMCurveTag::InvertFloatParametricLUT(v6, v41);
    }

    else
    {
      *(v6 + 16) = CMMTable::MakeFloatCopy(v9, v4, v39, v40);
    }
  }

LABEL_46:
  v42 = *MEMORY[0x1E69E9840];
  return v9;
}

double __ColorSyncProfileGetBT709RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT709RedPrimary_rXYZ = xmmword_19A96E1E0;
  dword_1ED4E25B0 = -1878851584;
  return result;
}

__CFDictionary *CMMConvGrayToRGB::FlattenConversion(CMMConvGrayToRGB *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (!Mutable)
  {
    return v4;
  }

  v5 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", *MEMORY[0x1E695E4D0]);
  v6 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v19 = 1065353216;
  valuePtr = 0;
  v7 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberFloat32Type, &v19);
  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v7 != 0)
  {
    v12 = 0;
    v13 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v14 = CFArrayCreateMutable(0, 0, v13);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = 3;
      do
      {
        if (v16 == 3)
        {
          v17 = v9;
        }

        else
        {
          v17 = v7;
        }

        CFArrayAppendValue(v15, v17);
        --v16;
      }

      while (v16);
      CFArrayAppendValue(v15, v7);
      CFArrayAppendValue(v6, v15);
      CFRelease(v15);
      if (++v12 == 3)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v6);
    goto LABEL_20;
  }

LABEL_17:
  if (!v6)
  {
LABEL_20:
    v6 = v4;
    v4 = 0;
    goto LABEL_21;
  }

  CFDictionaryAddValue(v4, kColorSyncConversionMatrix, v6);
LABEL_21:
  CFRelease(v6);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(v4, @"com.apple.cmm.FunctionDoesSignedReflection", v5);
  }

  CMMConvNode::AddClampingInfo(this, v4);
  return v4;
}

double __ColorSyncProfileGetBT709GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT709GreenPrimary_gXYZ = xmmword_19A96E1D0;
  dword_1ED4E25E0 = -635961344;
  return result;
}

CFTypeRef create_ITUR709_HLGProfile()
{
  if (create_ITUR709_HLGProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR709_HLGProfile_predicate, &__block_literal_global_253);
  }

  v1 = create_ITUR709_HLGProfile_profile;

  return CFRetain(v1);
}

double __ColorSyncProfileGetBT709BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT709BluePrimary_bXYZ = xmmword_19A96E1C0;
  dword_1ED4E2600 = -810156032;
  return result;
}

void ___ZL34CMMInitializeTwoPointTwoGammaTablev_block_invoke()
{
  v12 = 0;
  CMMMemMgr::CMMMemMgr(&v12);
  v2 = CMMBase::NewInternal(0x28, &v12, v0, v1);
  v2[2] = 0;
  v2[3] = &kTwoPointTwoGammaData;
  *v2 = &unk_1F0E09180;
  v2[1] = 0;
  v2[4] = 21512;
  CMMTwoPointTwoGammaTable = v2;
  v5 = CMMBase::NewInternal(0x28, &v12, v3, v4);
  v5[2] = 0;
  v5[3] = &kInvTwoPointTwoGammaData;
  *v5 = &unk_1F0E09180;
  v5[1] = 0;
  v5[4] = 21512;
  CMMInvTwoPointTwoGammaTable = v5;
  v8 = CMMBase::NewInternal(0x38, &v12, v6, v7);
  CMMTwoPointTwoGammaFloatLutInfo = v8;
  *v8 = 0x200000001;
  *(v8 + 8) = 1;
  *(v8 + 3) = 3;
  v8[2] = 0;
  *(v8 + 3) = xmmword_19A96E290;
  *(v8 + 10) = 1036726266;
  v11 = CMMBase::NewInternal(0x38, &v12, v9, v10);
  CMMInvTwoPointTwoGammaFloatLutInfo = v11;
  *v11 = 0x500000001;
  *(v11 + 8) = 1;
  *(v11 + 3) = 3;
  v11[2] = 0;
  *(v11 + 3) = xmmword_19A96E2A0;
  *(v11 + 10) = 1003171834;
  CMMMemMgr::ReleaseMemList(&v12);
}

void sub_19A935380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t colorSyncTransformFinalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(v1 + 112);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v1 + 120);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v1 + 128);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v1 + 136);
    if (v6)
    {
      CFRelease(v6);
    }

    return pthread_mutex_destroy((v1 + 16));
  }

  return result;
}

CFTypeRef create_ITUR2020sRGBGammaProfile()
{
  if (create_ITUR2020sRGBGammaProfile_predicate != -1)
  {
    dispatch_once(&create_ITUR2020sRGBGammaProfile_predicate, &__block_literal_global_241);
  }

  v1 = create_ITUR2020sRGBGammaProfile_profile;

  return CFRetain(v1);
}

pthread_mutex_t *DoCMMDisposeStorage(pthread_mutex_t *result)
{
  if (result)
  {
    v1 = result;
    sig = result[1].__sig;
    if (sig)
    {
      v5 = result[1].__sig;
      CMMMemMgr::RetainMemList(&v5);
      v3 = *sig;
      if (*sig)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }

      CMMMemMgr::ReleaseMemList(&v5);
      CMMMemMgr::ReleaseMemList(&v5);
    }

    pthread_mutex_destroy(v1);

    JUMPOUT(0x19EAE4600);
  }

  return result;
}

void sub_19A93550C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

const void *ColorSyncCreateOutputPoppyProfile(const ColorSyncProfile *a1)
{
  poppy_index_from_profile = get_poppy_index_from_profile(a1);

  return acquire_output_profile(poppy_index_from_profile);
}

const void *acquire_output_profile(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  block[7] = v1;
  block[8] = v2;
  if (use_poppy_profiles_from_file_predicate != -1)
  {
    dispatch_once(&use_poppy_profiles_from_file_predicate, &__block_literal_global_9);
  }

  if (use_poppy_profiles_from_file_enabled == 1)
  {
    if (acquire_output_profile_predicate != -1)
    {
      dispatch_once(&acquire_output_profile_predicate, &__block_literal_global_1333);
    }

    if (acquire_output_profile_fd < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    acquire_output_profile_fd = 0;
    acquire_output_profile_data = "ypaa";
    acquire_output_profile_header = "ypaa";
  }

  v5 = (&acquire_output_profile_predicates + 8 * a1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __acquire_output_profile_block_invoke_2;
  block[3] = &__block_descriptor_tmp_6_1334;
  block[4] = a1;
  if (*v5 != -1)
  {
    dispatch_once(v5, block);
  }

LABEL_13:
  result = acquire_output_profile_profiles[a1];
  if (result)
  {
    CFRetain(result);
    return acquire_output_profile_profiles[a1];
  }

  return result;
}

double __ColorSyncProfileGetDisplayP3RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDisplayP3RedPrimary_rXYZ = xmmword_19A96E120;
  dword_1ED4E2740 = -1140850689;
  return result;
}

double __ColorSyncProfileGetDisplayP3GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ = xmmword_19A96E110;
  dword_1ED4E2770 = -1190526976;
  return result;
}

double __ColorSyncProfileGetDisplayP3BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDisplayP3BluePrimary_bXYZ = xmmword_19A96E100;
  dword_1ED4E2790 = -1178075136;
  return result;
}

float floatFromDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  valuePtr = 0.0;
  v3 = 0.0;
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v4))
      {
        if (CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v3;
}

void addGammaTag(ColorSyncProfile *a1, const __CFString *a2, float a3)
{
  v6 = 1987212643;
  v7 = (a3 != 0.0) << 24;
  v8 = __rev16((a3 * 256.0 + 0.5));
  v5 = CFDataCreateWithBytesNoCopy(0, &v6, 14, *MEMORY[0x1E695E498]);
  ColorSyncProfileSetTag(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t DoFlattenCompactConversion(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4, unint64_t a5)
{
  if ((*(a1 + 120) & 2) != 0)
  {
    v10 = channels_per_space(*(a1 + 88));
    if (*(a1 + 104) <= (v10 + channels_per_space(*(a1 + 84)) + 1))
    {
      return DoFlattenParametricConversion(a1, a2, a3);
    }
  }

  v11 = *(a1 + 72);
  if (*(a1 + 80) == 2)
  {
    {
      __assert_rtn("flatten_device_to_compact_conversion", "CMMTransform.cpp", 1147, "dynamic_cast <CMMConvGrayToRGB *> (devConv) != NULL");
    }

    v14 = (*(v12 + 26))(v11, a3);
    if (v14)
    {
      CFArrayAppendValue(a2, v14);
      CFRelease(v14);
      return 0;
    }

    else
    {
      CFArrayRemoveAllValues(a2);
      return 4294967126;
    }
  }

  v52 = *(a1 + 64);
  CMMMemMgr::RetainMemList(&v52);
  v48 = a5;
  v49 = a4;
  if (v11)
  {
    v15 = -1;
    while (1)
    {
      while (1)
      {
        v16 = (*(*v11 + 27))(v11);
        v17 = *v11;
        v18 = *v11;
        if (v16 == 1)
        {
          break;
        }

        if ((*(v17 + 27))(v11) != 4)
        {
          goto LABEL_22;
        }

        v11 = (*(*v11 + 29))(v11);
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      v19 = *v17;
      if (v15 != -1 && v20 < v15)
      {
LABEL_22:
        lpsrc = v11;
        goto LABEL_23;
      }

      v21 = (*(v18 + 26))(v11, a3);
      if (!v21)
      {
        break;
      }

      CFArrayAppendValue(a2, v21);
      CFRelease(v21);
      lpsrc = 0;
      v11 = v11[2];
      v15 = v20;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    CFArrayRemoveAllValues(a2);
    lpsrc = v11;
  }

  else
  {
LABEL_19:
    lpsrc = 0;
  }

LABEL_23:
  Count = CFArrayGetCount(a2);
  v23 = lpsrc;
  if (lpsrc)
  {
    v24 = Count;
    v25 = 0;
    v26 = -1;
    while (1)
    {
      v50 = v25;
      v27 = *(v23 + 16);
      v28 = v23;
      do
      {
        v29 = v28;
        v28 = v28[2];
      }

      while (v28);
      while (1)
      {
        v33 = (*(*v29 + 216))(v29);
        v34 = *v29;
        v35 = *v29;
        if (v33 != 1)
        {
          break;
        }

        v30 = *v34;
        if (v26 != -1 && v31 > v26)
        {
          goto LABEL_45;
        }

        v32 = (*(v35 + 26))(v29, a3);
        if (!v32)
        {
          CFArrayRemoveAllValues(a2);
LABEL_45:
          if ((v50 & 1) == 0)
          {
            goto LABEL_47;
          }

LABEL_46:
          v27 = v47;
          goto LABEL_47;
        }

        CFArrayInsertValueAtIndex(a2, v24, v32);
        CFRelease(v32);
        if (v29 == v23)
        {
          v27 = v29;
          goto LABEL_45;
        }

        v29 = v29[3];
        v26 = v31;
        if (!v29)
        {
          goto LABEL_45;
        }
      }

      if ((*(v34 + 27))(v29) != 4)
      {
        break;
      }

      v36 = (*(*v29 + 232))(v29);
      v23 = v36;
      v37 = v47;
      if ((v50 & 1) == 0)
      {
        v37 = v27;
      }

      v47 = v37;
      v25 = 1;
      if (!v36)
      {
        goto LABEL_46;
      }
    }

    if (v50)
    {
      goto LABEL_46;
    }

    v27 = v29[2];
LABEL_47:
    v39 = lpsrc;
    if (v27 == lpsrc)
    {
      goto LABEL_57;
    }

    v40 = -1;
    do
    {
      v39 = *(v39 + 2);
      ++v40;
    }

    while (v39 != v27);
    v39 = lpsrc;
    {
      v41 = v42[26](lpsrc, a3);
    }

    else
    {
      v41 = compact_and_flatten_sequence(a1, lpsrc, v27, &v52, *(a1 + 84), *(a1 + 88), kColorSyncTransformIteratorCompactType, v49, v48);
    }

    v45 = v41;
    if (v41)
    {
      CFArrayInsertValueAtIndex(a2, v24, v41);
      CFRelease(v45);
LABEL_57:
      v38 = 0;
      goto LABEL_59;
    }

    CFArrayRemoveAllValues(a2);
    v38 = 4294967126;
  }

  else
  {
    v38 = 4294967126;
    if (CFArrayGetCount(a2) <= 0)
    {
      a2 = 4294967126;
    }

    else
    {
      a2 = 0;
    }

    v39 = 0;
  }

LABEL_59:
  CMMMemMgr::ReleaseMemList(&v52);
  if (v39)
  {
    return v38;
  }

  return a2;
}

void sub_19A935FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CMMMemMgr::ReleaseMemList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19A935F58);
}

void setDESCTag(ColorSyncProfile *a1, const void *a2, size_t a3, const void *a4, uint64_t a5)
{
  v10 = a3 + 2 * a5;
  Mutable = CFDataCreateMutable(0, v10 + 90);
  if (Mutable)
  {
    v12 = Mutable;
    CFDataSetLength(Mutable, v10 + 90);
    MutableBytePtr = CFDataGetMutableBytePtr(v12);
    if (MutableBytePtr)
    {
      v14 = MutableBytePtr;
      bzero(MutableBytePtr, v10 + 90);
      *v14 = 1668506980;
      *(v14 + 2) = bswap32(a3);
      if (a3)
      {
        memcpy(v14 + 12, a2, a3);
        v15 = a3 + 12;
      }

      else
      {
        v15 = 12;
      }

      v16 = &v14[v15];
      *v16 = 0;
      *(v16 + 1) = bswap32(a5);
      if (a5)
      {
        swab(a4, v16 + 8, 2 * a5);
      }

      ColorSyncProfileSetTag(a1, @"desc", v12);
    }

    CFRelease(v12);
  }
}

CFTypeRef create_ITUR2020Profile()
{
  if (create_ITUR2020Profile_predicate != -1)
  {
    dispatch_once(&create_ITUR2020Profile_predicate, &__block_literal_global_235);
  }

  v1 = create_ITUR2020Profile_profile;

  return CFRetain(v1);
}

uint64_t channels_per_space(int a1)
{
  result = 0;
  if (a1 > 1145261137)
  {
    if (a1 > 1282766367)
    {
      if (a1 <= 1482250783)
      {
        if (a1 == 1282766368 || a1 == 1347182946)
        {
          return 3;
        }

        v10 = 1380401696;
        goto LABEL_44;
      }

      if (a1 <= 1501067551)
      {
        if (a1 == 1482250784)
        {
          return 3;
        }

        v10 = 1497588338;
        goto LABEL_44;
      }

      if (a1 == 1501067552)
      {
        return 3;
      }

      v5 = 1734438260;
    }

    else
    {
      if (a1 <= 1178815569)
      {
        if (a1 == 1145261138)
        {
          return 13;
        }

        if (a1 != 1145856354)
        {
          v3 = a1 == 1162038354;
          v4 = 14;
LABEL_25:
          if (v3)
          {
            return v4;
          }

          else
          {
            return 0;
          }
        }

        return 3;
      }

      if (a1 > 1212961567)
      {
        if (a1 == 1212961568)
        {
          return 3;
        }

        v10 = 1213421088;
        goto LABEL_44;
      }

      if (a1 == 1178815570)
      {
        return 15;
      }

      v5 = 1196573017;
    }

    if (a1 != v5)
    {
      return result;
    }

    return 1;
  }

  if (a1 <= 943934545)
  {
    if (a1 > 876825681)
    {
      if (a1 <= 910380113)
      {
        if (a1 != 876825682)
        {
          v3 = a1 == 893602898;
          v4 = 5;
          goto LABEL_25;
        }

        return 4;
      }

      v6 = 910380114;
      v7 = 6;
      v8 = a1 == 927157330;
      v9 = 7;
      goto LABEL_37;
    }

    if (a1 != 1)
    {
      if (a1 == 843271250)
      {
        return 2;
      }

      v10 = 860048466;
LABEL_44:
      if (a1 != v10)
      {
        return result;
      }

      return 3;
    }

    return 1;
  }

  if (a1 <= 1111706705)
  {
    v6 = 943934546;
    v7 = 8;
    v11 = 10;
    if (a1 != 1094929490)
    {
      v11 = 0;
    }

    if (a1 == 960711762)
    {
      v9 = 9;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_39;
  }

  if (a1 > 1129142559)
  {
    if (a1 != 1129142560)
    {
      if (a1 != 1129142603)
      {
        return result;
      }

      return 4;
    }

    return 3;
  }

  v6 = 1111706706;
  v7 = 11;
  v8 = a1 == 1128483922;
  v9 = 12;
LABEL_37:
  if (!v8)
  {
    v9 = 0;
  }

LABEL_39:
  if (a1 == v6)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

uint64_t DoFlattenParametricConversion(uint64_t a1, CFArrayRef theArray, const __CFDictionary *a3)
{
  if ((*(a1 + 120) & 2) == 0)
  {
    return 4294967115;
  }

  if (!collect_flattened_conversion(*(a1 + 72), 0, a3, theArray))
  {
    return 4294967115;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 == CFDictionaryGetTypeID())
  {
    CFDictionarySetValue(ValueAtIndex, kColorSyncTransformCodeFragmentType, kColorSyncTransformParametricConversionData);
  }

  return 0;
}

double __ColorSyncProfileGetBT2020RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT2020RedPrimary_rXYZ = xmmword_19A96E180;
  dword_1ED4E27B0 = -2113929217;
  return result;
}

double __ColorSyncProfileGetBT2020GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT2020GreenPrimary_gXYZ = xmmword_19A96E170;
  dword_1ED4E27E0 = -1392050176;
  return result;
}

double __ColorSyncProfileGetBT2020BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT2020BluePrimary_bXYZ = xmmword_19A96E160;
  dword_1ED4E2800 = -20250624;
  return result;
}

CFTypeRef create_ROMMRGBProfile()
{
  if (create_ROMMRGBProfile_predicate != -1)
  {
    dispatch_once(&create_ROMMRGBProfile_predicate, &__block_literal_global_259);
  }

  v1 = create_ROMMRGBProfile_profile;

  return CFRetain(v1);
}

CFTypeRef ColorSyncProfileCreateSanitizedCopy(ColorSyncProfileRef prof, CFErrorRef *a2, CFErrorRef *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (!ColorSyncProfileVerify(prof, a2, a3))
  {
LABEL_61:
    Profile = 0;
LABEL_62:
    v36 = *MEMORY[0x1E69E9840];
    return Profile;
  }

  if (getSRGBData_predicate != -1)
  {
    dispatch_once(&getSRGBData_predicate, &__block_literal_global_624);
  }

  v5 = getSRGBData_sRGBData;
  v6 = ColorSyncProfileCopyData(prof, 0);
  v7 = v6;
  if (v5 && v6)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    v10 = CFDataGetBytePtr(v7);
    v11 = CFDataGetLength(v7) >= Length && memcmp(BytePtr, v10, Length) == 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!v7)
    {
      if (!prof)
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }
  }

  CFRelease(v7);
  v12 = v11;
  if (!prof)
  {
    goto LABEL_45;
  }

LABEL_15:
  if (!v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = off_1E75238F0[v13];
      Tag = getTag(prof, v14);
      if (!Tag)
      {
        goto LABEL_49;
      }

      v16 = Tag;
      if (getSRGBProfile_predicate != -1)
      {
        dispatch_once(&getSRGBProfile_predicate, &__block_literal_global_627);
      }

      v17 = getTag(getSRGBProfile_sRGBProfile, v14);
      if (!v17)
      {
        goto LABEL_49;
      }

      v18 = v17;
      v19 = CFDataGetBytePtr(v16);
      v20 = CFDataGetLength(v16);
      v21 = CFDataGetBytePtr(v18);
      v22 = CFDataGetLength(v18);
      if (v20 < v22 || v19 == 0 || v21 == 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = memcmp(v21, v19, v22) == 0;
        if (v12)
        {
LABEL_36:
          if ((v13 - 3) <= 2 && !v12 && v20 >= 0xF)
          {
            v12 = AppleCMMVerifySRGBGamma(v16);
          }

          goto LABEL_43;
        }
      }

      if (v20 < 0x14)
      {
        goto LABEL_36;
      }

      if (v13 == 2)
      {
        v25 = "XYZ ";
      }

      else if (v13 == 1)
      {
        v25 = "XYZ ";
      }

      else
      {
        if (v13)
        {
          goto LABEL_36;
        }

        v25 = "XYZ ";
      }

      v12 = memcmp(v25, v19, v22) == 0;
LABEL_43:
      if (v13 <= 4)
      {
        ++v13;
        if (v12)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_45:
  if (v12)
  {
    *a2 = 1;
    if (getSRGBProfile_predicate != -1)
    {
      dispatch_once(&getSRGBProfile_predicate, &__block_literal_global_627);
    }

    v26 = getSRGBProfile_sRGBProfile;
    v27 = *MEMORY[0x1E69E9840];
    goto LABEL_58;
  }

LABEL_49:
  MutableCopy = ColorSyncProfileCreateMutableCopy(prof);
  if (!MutableCopy)
  {
    goto LABEL_61;
  }

  v29 = MutableCopy;
  v30 = copyHeaderData(MutableCopy);
  if (v30)
  {
    v31 = v30;
    MutableBytePtr = CFDataGetMutableBytePtr(v30);
    if (MutableBytePtr)
    {
      if (!(*(MutableBytePtr + 2) >> 26))
      {
        *(MutableBytePtr + 7) = 0u;
        *(MutableBytePtr + 100) = 0u;
        *(MutableBytePtr + 84) = 0u;
      }

      *(MutableBytePtr + 19) = 54061;
      *(MutableBytePtr + 68) = 0x100000000F6D6;
      ColorSyncProfileSetHeader(v29, v31);
    }

    CFRelease(v31);
  }

  if (!colorSyncProfileEqual(prof, v29))
  {
    *keys = xmmword_1E7523500;
    v40 = 0;
    values[0] = @"appleCopy";
    values[1] = v29;
    values[2] = 0;
    v37 = CFDictionaryCreate(0, keys, values, 2, 0, 0);
    Profile = ColorSyncMakeProfile(v37);
    if (v37)
    {
      CFRelease(v37);
    }

    CFRelease(v29);
    if (!Profile)
    {
      Profile = CFRetain(prof);
    }

    goto LABEL_62;
  }

  CFRelease(v29);
  v33 = *MEMORY[0x1E69E9840];
  v26 = prof;
LABEL_58:

  return CFRetain(v26);
}

_DWORD *CMMConvTRC::SetInputClamp(CMMConvTRC *this)
{
  *(this + 35) = 1;
  result = *(this + 2);
  if (result)
  {
    v3 = **result;
    if (result)
    {
      if (result[18] > *(this + 18))
      {
        v4 = *(*result + 24);

        return v4();
      }
    }
  }

  return result;
}

CFTypeRef copy_description_from_DSCMTag(const __CFData *a1, int a2, int a3)
{
  if (CFDataGetLength(a1) >= 0x11)
  {
    v6 = a3 | a2;
    if (!(a3 | a2) || (v7 = CFBundleCopyLocalizationForLocalizationInfo()) == 0)
    {
      v7 = CFRetain(@"en_US");
    }

    v8 = copy_description_dict_from_DSCMTag(a1);
    if (!v8)
    {
      v11 = 0;
LABEL_36:
      CFRelease(v7);
      return v11;
    }

    v9 = v8;
    Value = CFDictionaryGetValue(v8, v7);
    if (Value)
    {
      v11 = Value;
      CFRetain(Value);
LABEL_35:
      CFRelease(v9);
      goto LABEL_36;
    }

    v12 = CFDictionaryGetValue(v9, @"en_US");
    v13 = v12;
    if (v6)
    {
      if (v12)
      {
        v14 = copyLoacalizedStringFromResources(v12, 0);
        if (v14)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = CFBundleCopyLocalizationForLocalizationInfo();
    if (!v15)
    {
      v15 = CFRetain(@"en_US");
    }

    v27 = v15;
    v28 = 0;
    CFDictionaryApplyFunction(v9, findDescByLanguage, &v27);
    v16 = v28;
    CFRelease(v15);
    if (v16)
    {
      v14 = CFRetain(v16);
      if (v14)
      {
LABEL_34:
        v11 = v14;
        goto LABEL_35;
      }
    }

    v17 = CFGetTypeID(v9);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_30;
    }

    Count = CFDictionaryGetCount(v9);
    v11 = Count;
    if (!Count)
    {
      goto LABEL_31;
    }

    v19 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = v19;
    CFDictionaryGetKeysAndValues(v9, v19, 0);
    v21 = CFArrayCreate(0, v20, v11, MEMORY[0x1E695E9C0]);
    v11 = v21;
    if (!v21)
    {
      free(v20);
      goto LABEL_31;
    }

    v22 = CFBundleCopyPreferredLocalizationsFromArray(v21);
    if (v22)
    {
      v23 = v22;
      if (CFArrayGetCount(v22) < 1)
      {
        v25 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
        v25 = CFDictionaryGetValue(v9, ValueAtIndex);
      }

      CFRelease(v23);
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v11);
    free(v20);
    if (v25)
    {
      v11 = CFRetain(v25);
    }

    else
    {
LABEL_30:
      v11 = 0;
    }

LABEL_31:
    if (!v13 || v11)
    {
      goto LABEL_35;
    }

    v14 = CFRetain(v13);
    goto LABEL_34;
  }

  return 0;
}

__CFDictionary *copy_description_dict_from_DSCMTag(const __CFData *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 0x1C)
  {
    goto LABEL_51;
  }

  v4 = *(BytePtr + 2);
  if (!v4)
  {
    goto LABEL_51;
  }

  v5 = Length;
  v6 = bswap32(v4);
  v7 = 4 * (v6 + 2 * v6);
  if (v7 > Length - 8)
  {
    goto LABEL_51;
  }

  if (v7 > Length - 12 || *(BytePtr + 3) != 201326592)
  {
    goto LABEL_51;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = 0;
    v11 = v5;
    if (v6 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6;
    }

    do
    {
      v13 = (12 * v10);
      v14 = v13 + 16;
      if (v11 < v13 + 28 || v14 > 0xFFFFFFF2)
      {
        goto LABEL_48;
      }

      v16 = &BytePtr[v14];
      v17 = *(v16 + 1);
      v18 = bswap32(v17);
      v19 = bswap32(*(v16 + 2));
      v20 = v17 && v5 >= v19 + v18;
      if (!v20 || v19 >= ~v18)
      {
        goto LABEL_48;
      }

      v22 = *(v16 + 1);
      v23 = *v16;
      v41 = 0;
      chars = v23;
      if (v22)
      {
        LOBYTE(v41) = 95;
        *(&v41 + 1) = v22;
      }

      v24 = CFStringCreateWithFormat(0, 0, @"%s", &chars);
      v25 = v24;
      if (v18 > 1)
      {
        v26 = &BytePtr[v19];
        v27 = *v26;
        LODWORD(v28) = v18 >> 1;
        bzero(&chars, 0x802uLL);
        if (v28 >= 0x400)
        {
          v28 = 1024;
        }

        else
        {
          v28 = v28;
        }

        if (v27 == 65279)
        {
          --v28;
          __memcpy_chk();
          v11 = v5;
        }

        else if (v27 == 65534)
        {
          --v28;
          v11 = v5;
          if (v28)
          {
            v29 = &BytePtr[v19 + 2];
            p_chars = &chars;
            v31 = v28;
            do
            {
              v32 = *v29;
              v29 += 2;
              *p_chars++ = bswap32(v32) >> 16;
              --v31;
            }

            while (v31);
          }
        }

        else
        {
          v33 = &chars;
          v34 = v28;
          v11 = v5;
          do
          {
            v35 = *v26;
            v26 += 2;
            *v33++ = bswap32(v35) >> 16;
            --v34;
          }

          while (v34);
        }

        v36 = CFStringCreateWithCharacters(0, &chars, v28);
        v37 = v36;
        if (v25 && v36)
        {
          CFDictionarySetValue(Mutable, v25, v36);
          CFRelease(v25);
          v25 = v37;
        }

        else
        {
          if (v25)
          {
            CFRelease(v25);
          }

          v25 = v37;
          if (!v37)
          {
            goto LABEL_48;
          }
        }
      }

      else if (!v24)
      {
        goto LABEL_48;
      }

      CFRelease(v25);
LABEL_48:
      ++v10;
    }

    while (v10 != v12);
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
LABEL_51:
    Mutable = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return Mutable;
}

ColorSyncMutableProfileRef ColorSyncProfileCreateMutableCopy(ColorSyncProfileRef prof)
{
  result = ColorSyncProfileCopyData(prof, 0);
  if (result)
  {
    v3 = result;
    v4 = create(0, *(prof + 14), 1, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFTypeRef create_GenericGrayProfile()
{
  if (create_GenericGrayProfile_predicate != -1)
  {
    dispatch_once(&create_GenericGrayProfile_predicate, &__block_literal_global_193);
  }

  v1 = create_GenericGrayProfile_profile;

  return CFRetain(v1);
}

void colorSyncTransformIteratorFinalize(void *a1)
{
  if (a1)
  {
    if (*(a1 + 68) >= 1)
    {
      v2 = 0;
      do
      {
        CFRelease(*(*(a1 + 92) + 8 * v2++));
      }

      while (v2 < *(a1 + 68));
    }

    if (*(a1 + 76) >= 1)
    {
      v3 = 0;
      do
      {
        CFRelease(*(*(a1 + 100) + 8 * v3++));
      }

      while (v3 < *(a1 + 76));
    }

    if (*(a1 + 84) >= 1)
    {
      v4 = 0;
      do
      {
        CFRelease(*(*(a1 + 108) + 8 * v4++));
      }

      while (v4 < *(a1 + 84));
    }

    v5 = a1[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[18];
    if (v7)
    {
      free(v7);
    }

    v8 = a1[19];
    if (v8)
    {

      free(v8);
    }
  }
}

uint64_t CMMOutputProfile::GetSrcColorSpace(uint64_t a1, int a2)
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
    if ((a2 & 0xFFFFFFFE) != 2 && a2 != 4)
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

uint64_t CMMOutputProfile::GetDstColorSpace(uint64_t a1, int a2, BOOL *a3)
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
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a2 != 4 && a2 != 2)
  {
LABEL_16:
    v6 = 4294967246;
    v5 = 0xFFFFFFFFLL;
    goto LABEL_17;
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
        goto LABEL_17;
      }

LABEL_14:
      if (v5 != -1)
      {
        v6 = 0;
        goto LABEL_17;
      }

      goto LABEL_16;
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
        goto LABEL_14;
    }
  }

LABEL_17:
  CMMThrowExceptionOnError(v6);
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

double CMMProfile::GetLutTagsGeneric(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a1;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      AToBTagSignature = CMMProfile::GetAToBTagSignature(a3);
      if (AToBTagSignature == -1)
      {
        return result;
      }

      v7 = AToBTagSignature;
      v10 = *(v4 + 48);
      if (v10 <= 1296255029)
      {
        if (v10 == 1281450528)
        {
          v10 = 1145856354;
        }

        else if (v10 == 1296255029)
        {
          v10 = 893602898;
        }
      }

      else
      {
        switch(v10)
        {
          case 0x4D434836:
            v10 = 910380114;
            break;
          case 0x4D434837:
            v10 = 927157330;
            break;
          case 0x4D434838:
            v10 = 943934546;
            break;
        }
      }

      v28 = *(v4 + 52);
      if (v28 == 1281450528)
      {
        v8 = 1347182946;
      }

      else
      {
        v8 = v28;
      }

      goto LABEL_71;
    }

    if (a2 == 2)
    {
      BToATagSignature = CMMProfile::GetBToATagSignature(a3);
      if (BToATagSignature == -1)
      {
        return result;
      }

      v7 = BToATagSignature;
      v8 = *(v4 + 48);
      v9 = *(v4 + 52);
      if (v9 == 1281450528)
      {
        v10 = 1347182946;
      }

      else
      {
        v10 = v9;
      }

      if (v8 <= 1296255029)
      {
        if (v8 == 1281450528)
        {
          v8 = 1145856354;
        }

        else if (v8 == 1296255029)
        {
          v8 = 893602898;
        }
      }

      else
      {
        switch(v8)
        {
          case 0x4D434836:
            v8 = 910380114;
            break;
          case 0x4D434837:
            v8 = 927157330;
            break;
          case 0x4D434838:
            v8 = 943934546;
            break;
        }
      }

LABEL_71:
      a1 = v4;
LABEL_72:

      CMMProfile::SingleTagContainer(a1, v7, v10, v8);
      return result;
    }

LABEL_98:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v8 = *(a1 + 48);
      v11 = *(a1 + 52);
      if (v11 == 1281450528)
      {
        v10 = 1347182946;
      }

      else
      {
        v10 = v11;
      }

      if (v8 <= 1296255029)
      {
        if (v8 == 1281450528)
        {
          v8 = 1145856354;
        }

        else if (v8 == 1296255029)
        {
          v8 = 893602898;
        }
      }

      else
      {
        switch(v8)
        {
          case 0x4D434836:
            v8 = 910380114;
            break;
          case 0x4D434837:
            v8 = 927157330;
            break;
          case 0x4D434838:
            v8 = 943934546;
            break;
        }
      }

      v7 = 1734438260;
      goto LABEL_72;
    }

    goto LABEL_98;
  }

  if (a3 >= 4)
  {
    goto LABEL_98;
  }

  v13 = *&a0b2a1b2a2b2a1b[4 * a3 + 32];
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(v13);
  if (ColorSyncProfileContainsTag(*(v4 + 16), SignatureFromFourCharCode))
  {
    v17 = *(v4 + 52);
    if (v17 == 1281450528)
    {
      v10 = 1347182946;
    }

    else
    {
      v10 = v17;
    }

    a1 = v4;
    v7 = v13;
    v8 = v10;
    goto LABEL_72;
  }

  v18 = *(v4 + 168);
  if (v18)
  {
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v19 = v18 + 8;
    if (v21 - v20 != 48)
    {
      std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize(v19, 2uLL, v15, v16);
    }
  }

  else
  {
    v22 = CMMBase::NewInternal(0x38, *(v4 + 24), v15, v16);
    *(v4 + 168) = TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::TVector(v22, 2uLL, *(v4 + 24), v23);
  }

  v24 = 1145856354;
  v25 = *(v4 + 48);
  v26 = *(v4 + 52);
  if (v26 == 1281450528)
  {
    v26 = 1347182946;
  }

  HIDWORD(v38) = v26;
  if (v25 <= 1296255029)
  {
    v27 = 1145856354;
    if (v25 == 1281450528)
    {
      goto LABEL_79;
    }

    if (v25 == 1296255029)
    {
      v27 = 893602898;
      goto LABEL_79;
    }
  }

  else
  {
    switch(v25)
    {
      case 1296255030:
        v27 = 910380114;
        goto LABEL_79;
      case 1296255031:
        v27 = 927157330;
        goto LABEL_79;
      case 1296255032:
        v27 = 943934546;
        goto LABEL_79;
    }
  }

  v27 = *(v4 + 48);
LABEL_79:
  v39 = v27;
  LODWORD(v38) = CMMProfile::GetBToATagSignature(a3);
  v29 = *(v4 + 48);
  if (v29 <= 1296255029)
  {
    if (v29 == 1281450528)
    {
      goto LABEL_90;
    }

    if (v29 == 1296255029)
    {
      v24 = 893602898;
      goto LABEL_90;
    }

LABEL_89:
    v24 = *(v4 + 48);
    goto LABEL_90;
  }

  if (v29 == 1296255030)
  {
    v24 = 910380114;
    goto LABEL_90;
  }

  if (v29 == 1296255031)
  {
    v24 = 927157330;
    goto LABEL_90;
  }

  if (v29 != 1296255032)
  {
    goto LABEL_89;
  }

  v24 = 943934546;
LABEL_90:
  v30 = *(v4 + 52);
  if (v30 == 1281450528)
  {
    v30 = 1347182946;
  }

  HIDWORD(v36) = v24;
  v37 = v30;
  if (*(v4 + 96) >= 4u)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v4 + 96);
  }

  LODWORD(v36) = CMMProfile::GetAToBTagSignature(v31);
  v32 = *(v4 + 168);
  v33 = *(v32 + 8);
  v34 = *(v32 + 16) - v33;
  if (!v34 || (*(v33 + 8) = v38, *(v33 + 16) = v39, 0xAAAAAAAAAAAAAAABLL * (v34 >> 3) <= 1))
  {
    std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  result = v36;
  *(v33 + 32) = v36;
  *(v33 + 40) = v37;
  return result;
}

void *CMMProfile::SingleTagContainer(uint64_t a1, int a2, CMMMemMgr *a3, const char *a4)
{
  v4 = a4;
  v5 = a3;
  result = *(a1 + 168);
  if (result)
  {
    if (result[2] - result[1] != 24)
    {
      std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::resize((result + 1), 1uLL, a3, a4);
      result = *(a1 + 168);
    }
  }

  else
  {
    v9 = CMMBase::NewInternal(0x38, *(a1 + 24), a3, a4);
    result = TVector<CMMTagInfo,TAllocator<CMMTagInfo>>::TVector(v9, 1uLL, *(a1 + 24), v10);
    *(a1 + 168) = result;
  }

  v11 = result[1];
  if (result[2] == v11)
  {
    std::vector<CMMTagInfo,TAllocator<CMMTagInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  v11[2] = a2;
  v11[3] = v5;
  v11[4] = v4;
  return result;
}

unsigned __int8 *CMMProfile::GetTagByArbitration(uint64_t a1, int a2)
{
  result = CMMProfile::GetTag(a1, a2);
  if (!result)
  {
    if ((a2 - 1093812785) < 2)
    {
      v5 = 1093812784;
    }

    else if ((a2 - 1886545201) < 2)
    {
      v5 = 1886545200;
    }

    else
    {
      if ((a2 - 1110589745) > 1)
      {
        return 0;
      }

      v5 = 1110589744;
    }

    return CMMProfile::GetTag(a1, v5);
  }

  return result;
}

uint64_t CMMThrowExceptionWithLog(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result & 1) == 0)
  {
    ColorSyncLog(2, "ColorSync: %s\n", a3, a4, a5, a6, a7, a8, a2);
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return result;
}

uint64_t CMMLut8Tag::EncodeLut(uint64_t result, _DWORD *a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 4097;
  do
  {
    v6 = v4 >> 24;
    v7 = *(result + (v4 >> 24));
    if (a3)
    {
      LODWORD(v7) = v7 << 16;
    }

    else
    {
      v7 = ((65792 * v7 + 0x8000) + 0x101000000 * v7) >> 16;
    }

    if (v3 != (v4 & 0xFF000000) / 0xFF)
    {
      if (v5 == 1)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      v8 = *(result + (v6 + 1));
      if (a3)
      {
        LODWORD(v8) = v8 << 16;
      }

      else
      {
        v8 = ((65792 * v8 + 0x8000) + 0x101000000 * v8) >> 16;
      }

      v9 = (v8 - v7) * (v3 - (v6 << 24) / 0xFF);
      if (v9)
      {
        v10 = 255 * v9;
        v12 = v10 + 0x800000;
        v11 = v10 < -8388608;
        v13 = v10 + 25165823;
        if (!v11)
        {
          v13 = v12;
        }

        LODWORD(v7) = v7 + (v13 >> 24);
      }
    }

    if (v7 >= 0x1000000)
    {
      LODWORD(v7) = 0x1000000;
    }

    *a2++ = v7;
    v4 += 1044480;
    v3 += 4096;
    --v5;
  }

  while (v5);
  return result;
}

BOOL CMMLut8Tag::HasCLUT(CMMLut8Tag *this)
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
  return *v3 != 0xFF00FF0000000000 || v3[1] != 0xFF0000FFFFFF0000 || v3[2] != 0xFFFFFF00FFFFFF00;
}

uint64_t ConversionManager::AddCLUTConv(uint64_t a1, CMMLutTagBase *a2, CMMMemMgr *a3, const char *a4)
{
  v5 = a1;
  if (a3 == 1)
  {
    if (a4 == 3 && (*(*a2 + 64))(a2) == 2)
    {
      v28 = (*(*a2 + 40))(a2, *(v5 + 8));
      if (v28)
      {
        v29 = v28;
        v30 = v5;
        v31 = 0;
        v32 = 1;
        v33 = 1;
        do
        {
          v34 = v32;
          v35 = CMMTable::UInt8Data(*(v29 + 16), *(v29 + 24));
          v36 = 0;
          v37 = (v35 + 2 * v31);
          do
          {
            v38 = *v37--;
            v33 &= 0xFFFF * (v31 >> v36++) == v38;
          }

          while (v36 != 3);
          v32 = 0;
          v31 = 1;
        }

        while ((v34 & 1) != 0);
        v5 = v30;
        if (v33)
        {
          result = CMMBase::NewInternal(0x30, *(v30 + 8), a3, a4);
          v6 = result;
          v39 = *(v30 + 24);
          *(result + 8) = 1;
          *(result + 16) = 0;
          *(result + 24) = v39;
          if (v39)
          {
            *(v39 + 16) = result;
          }

          *(result + 40) = 0x3F80000000000000;
          *result = &unk_1F0E08098;
          *(result + 33) = 1;
          goto LABEL_111;
        }
      }
    }
  }

  else
  {
    if (a3 == 4)
    {
      v6 = CMMBase::NewInternal(0xA0, *(a1 + 8), 4, a4);
      CMMConvCLUTBase::CMMConvCLUTBase(v6, a2, *(v5 + 8), *(v5 + 24));
      *v17 = &unk_1F0E0BF60;
      if (v17[8] == 4)
      {
        v18 = 0;
      }

      else
      {
        v18 = 4294967125;
      }

      result = CMMThrowExceptionOnError(v18);
      v19 = *(v6 + 18);
      v20 = *(v6 + 14);
      v21 = v20 * v19;
      *(v6 + 24) = v19;
      *(v6 + 25) = v20 * v19;
      v22 = v20 * v19 * v20;
      v23 = v22 * v20;
      *(v6 + 26) = v22;
      *(v6 + 27) = v23;
      *(v6 + 28) = v21 + v19;
      *(v6 + 29) = v22 + v19;
      *(v6 + 30) = v22 + v21;
      *(v6 + 31) = v22 + v21 + v19;
      v24 = v23 + v21;
      *(v6 + 32) = v23 + v19;
      *(v6 + 33) = v23 + v21;
      v25 = v23 + v22;
      *(v6 + 34) = v24 + v19;
      *(v6 + 35) = v25;
      v26 = v25 + v19;
      v27 = v25 + v21;
      *(v6 + 36) = v26;
      *(v6 + 37) = v27;
      *(v6 + 38) = v27 + v19;
      v16 = &unk_1F0E0BDF8;
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      v6 = CMMBase::NewInternal(0x80, *(a1 + 8), 3, a4);
      CMMConvCLUTBase::CMMConvCLUTBase(v6, a2, *(v5 + 8), *(v5 + 24));
      *v7 = &unk_1F0E0BCF0;
      if (v7[8] == 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294967125;
      }

      result = CMMThrowExceptionOnError(v8);
      v10 = *(v6 + 18);
      v11 = *(v6 + 14);
      v12 = v11 * v10;
      *(v6 + 24) = v10;
      *(v6 + 25) = v11 * v10;
      v13 = v11 * v10 * v11;
      *(v6 + 26) = v13;
      *(v6 + 27) = v12 + v10;
      v14 = v13 + v10;
      v15 = v13 + v12;
      *(v6 + 28) = v14;
      *(v6 + 29) = v15;
      *(v6 + 30) = v15 + v10;
      v16 = &unk_1F0E0BBA0;
LABEL_12:
      *v6 = v16;
      goto LABEL_111;
    }
  }

  v6 = CMMBase::NewInternal(0x88, *(v5 + 8), a3, a4);
  v40 = *(v5 + 8);
  v106 = v5;
  CMMConvCLUTBase::CMMConvCLUTBase(v6, a2, v40, *(v5 + 24));
  *v41 = &unk_1F0E0C1D0;
  v48 = (*(*a2 + 48))(a2);
  if (v48)
  {
    v49 = 1;
    do
    {
      v50 = v49;
      v49 *= 2;
      v52 = v50 >= 0 && v49 != 0;
      CMMThrowExceptionWithLog(v52, "Overflow in Power", v42, v43, v44, v45, v46, v47);
      --v48;
    }

    while (v48);
    v53 = 8 * v50;
  }

  else
  {
    v53 = 4;
  }

  *(v6 + 12) = &unk_1F0E09180;
  *(v6 + 13) = 1;
  *(v6 + 15) = 0;
  *(v6 + 16) = v53;
  *(v6 + 14) = CMMBase::NewInternal(v53, v40, v42, v43);
  *(v6 + 12) = &unk_1F0E0C2D8;
  if (*(v6 + 8) <= 0xFuLL)
  {
    v54 = 0;
  }

  else
  {
    v54 = 4294967125;
  }

  CMMThrowExceptionOnError(v54);
  result = CMMTable::UInt8Data(*(v6 + 14), *(v6 + 15));
  v61 = result;
  v62 = *(v6 + 8);
  *result = *(v6 + 9);
  v63 = result - 4;
  if (v62 < 2)
  {
    goto LABEL_110;
  }

  v64 = 0;
  LODWORD(v65) = 1;
  v109 = result;
  do
  {
    if (v65 == 1)
    {
      v71 = *v61 * *(v6 + 14);
    }

    else
    {
      v66 = 1;
      v67 = v64;
      do
      {
        v68 = v66 < 0;
        v66 *= 2;
        v70 = !v68 && v66 != 0;
        result = CMMThrowExceptionWithLog(v70, "Overflow in Power", v55, v56, v57, v58, v59, v60);
        --v67;
      }

      while (v67);
      v71 = *(v63 + 4 * v66) * *(v6 + 14);
      if (!v65)
      {
        v72 = 1;
        goto LABEL_60;
      }
    }

    v73 = 1;
    v74 = v65;
    do
    {
      v72 = (2 * v73);
      v76 = v73 >= 0 && v72 != 0;
      result = CMMThrowExceptionWithLog(v76, "Overflow in Power", v55, v56, v57, v58, v59, v60);
      v73 = v72;
      --v74;
    }

    while (v74);
LABEL_60:
    *(v63 + 4 * v72) = v71;
    v65 = (v65 + 1);
    v77 = *(v6 + 8);
    ++v64;
    v61 = v109;
  }

  while (v77 > v65);
  if (v77 >= 2)
  {
    v78 = 1;
    v79 = 2;
    while (1)
    {
      v80 = v78;
      v81 = 1;
      do
      {
        v68 = v81 < 0;
        v81 *= 2;
        v83 = !v68 && v81 != 0;
        CMMThrowExceptionWithLog(v83, "Overflow in Power", v55, v56, v57, v58, v59, v60);
        --v80;
      }

      while (v80);
      v84 = v78 + 1;
      v108 = v79;
      v85 = v79;
      v86 = 1;
      do
      {
        v87 = 2 * v86;
        v89 = v86 >= 0 && v87 != 0;
        result = CMMThrowExceptionWithLog(v89, "Overflow in Power", v55, v56, v57, v58, v59, v60);
        v86 = v87;
        --v85;
      }

      while (v85);
      v107 = v84;
      v90 = v81 | 1;
      v91 = *(v6 + 8);
      if ((v81 | 1uLL) < v87)
      {
        break;
      }

LABEL_109:
      v78 = v107;
      v79 = v108 + 1;
      if (v107 >= v91)
      {
        goto LABEL_110;
      }
    }

    v92 = *(v6 + 8);
    while (1)
    {
      v93 = v90;
      if (v92)
      {
        break;
      }

      v95 = 0;
LABEL_108:
      v61[v81] = v95;
      v90 = v93 + 1;
      v81 = v93;
      if (v93 + 1 == v87)
      {
        goto LABEL_109;
      }
    }

    LODWORD(v94) = 0;
    v95 = 0;
    while (2)
    {
      if (v94)
      {
        v96 = 1;
        v97 = v94;
        do
        {
          v98 = (2 * v96);
          v100 = v96 >= 0 && v98 != 0;
          result = CMMThrowExceptionWithLog(v100, "Overflow in Power", v55, v56, v57, v58, v59, v60);
          v96 = v98;
          --v97;
        }

        while (v97);
        if ((v93 & v98) != 0)
        {
          v101 = 1;
          v102 = v94;
          do
          {
            v103 = (2 * v101);
            v105 = v101 >= 0 && v103 != 0;
            result = CMMThrowExceptionWithLog(v105, "Overflow in Power", v55, v56, v57, v58, v59, v60);
            v101 = v103;
            --v102;
          }

          while (v102);
LABEL_104:
          v95 += *(v63 + 4 * v103);
        }
      }

      else if ((v81 & 1) == 0)
      {
        v103 = 1;
        goto LABEL_104;
      }

      v94 = (v94 + 1);
      v91 = *(v6 + 8);
      if (v91 <= v94)
      {
        v92 = *(v6 + 8);
        v61 = v109;
        goto LABEL_108;
      }

      continue;
    }
  }

LABEL_110:
  *v6 = &unk_1F0E0C068;
  v5 = v106;
LABEL_111:
  *(v5 + 24) = v6;
  if (!*(v5 + 16))
  {
    *(v5 + 16) = v6;
  }

  return result;
}

unint64_t CMMLut8Tag::InterpolationProtectionZone(CMMLut8Tag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 50);
  if ((v8 - 3) > 1)
  {
    return 0;
  }

  else
  {
    return CMMLutTagBase::CalculateProtectionZone(*(this + 52), v8, *(this + 51), a4, a5, a6, a7, a8);
  }
}

unint64_t CMMLutTagBase::CalculateProtectionZone(unint64_t this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v11 = 0;
  for (i = 0; i != a2; ++i)
  {
    if (i)
    {
      v13 = i;
      v14 = 1;
      do
      {
        v15 = v14 * this;
        v16 = v14 * this >= v14 && v15 >= this;
        v17 = v16;
        CMMThrowExceptionWithLog(v17, "Overflow in Power", a3, a4, a5, a6, a7, a8);
        v14 = v15;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    if (is_mul_ok(a3, v15))
    {
      v18 = 0;
    }

    else
    {
      v18 = -170;
    }

    if (a3)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (a3)
    {
      v20 = v15 * a3;
    }

    else
    {
      v20 = 0;
    }

    CMMThrowExceptionOnError(v19);
    v16 = __CFADD__(v20, v11);
    v11 += v20;
    if (v16)
    {
      v21 = 4294967126;
    }

    else
    {
      v21 = 0;
    }

    CMMThrowExceptionOnError(v21);
  }

  if (v11 > 0x20000000)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return v11;
}

CMMTable *CMMLut8Tag::MakeOutputLutTable(CMMLut8Tag **a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = CMMBase::NewInternal(0x28, a4, a3, a4);
  *v10 = &unk_1F0E09180;
  *(v10 + 1) = 1;
  *(v10 + 3) = 0;
  *(v10 + 4) = 21512;
  v13 = CMMBase::NewInternal(0x5408, a4, v11, v12);
  *(v10 + 2) = v13;
  v14 = CMMTable::UInt8Data(v13, *(v10 + 3));
  (*(*a1 + 13))(a1, a2, v14, a5 == 1347182946);
  if (a3)
  {
    v24 = 0;
    InputTable = CMMLut8Tag::GetInputTable(a1[14], a2);
    CMMLut8Tag::EvaluateGamma(InputTable, &v24, v16, v17, v18);
    if (v24 == 1 && v21 == 1.0)
    {
      FloatCopy = 0;
      *a3 = 1;
      *(a3 + 8) = 1;
      *(a3 + 12) = 0;
      *(a3 + 24) = 1065353216;
    }

    else
    {
      *a3 = 0;
      FloatCopy = CMMTable::MakeFloatCopy(v10, a4, v19, v20);
    }

    *(a3 + 16) = FloatCopy;
  }

  return v10;
}

uint64_t CMMLut8Tag::MakeOutputLut(CMMLut8Tag *this, uint64_t a2, int *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v21 = *MEMORY[0x1E69E9840];
  InputTable = CMMLut8Tag::GetInputTable(*(v3 + 112), v8);
  v11 = InputTable;
  if ((v9 - 1) <= 1 && v5)
  {
    bzero(&v18, 0x4004uLL);
    memset(v7, 255, 0x4004uLL);
    CMMLut8Tag::EncodeLut(v11, &v18, 0);
    v12 = (65792 * *v11 + 0x8000 + 0x101000000 * *v11) >> 16;
    v13 = (65792 * v11[128] + 0x8000 + 0x101000000 * v11[128]) >> 16;
    v14 = (65792 * v11[255] + 0x8000 + 0x101000000 * v11[255]) >> 16;
    *v7 = v12;
    memcpy(v7 + 1, v19, 0x2018uLL);
    v7[2057] = v13;
    v7[2056] = v13;
    v7[2055] = v13;
    result = memcpy(v7 + 2058, v20, 0x1FD8uLL);
    v7[4096] = v14;
  }

  else
  {
    result = CMMLut8Tag::EncodeLut(InputTable, v7, 0);
    v16 = v7[4096];
    v7[1] = *v7;
    v7[4095] = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CMMTable *CMMLut8Tag::MakeInputLutTable(CMMLut8Tag **a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = CMMBase::NewInternal(0x28, a4, a3, a4);
  *v10 = &unk_1F0E09180;
  *(v10 + 1) = 1;
  *(v10 + 3) = 0;
  *(v10 + 4) = 21512;
  v13 = CMMBase::NewInternal(0x5408, a4, v11, v12);
  *(v10 + 2) = v13;
  v14 = CMMTable::UInt8Data(v13, *(v10 + 3));
  (*(*a1 + 12))(a1, a2, v14, a5 == 1347182946);
  if (a3)
  {
    v23 = 0;
    InputTable = CMMLut8Tag::GetInputTable(a1[13], a2);
    CMMLut8Tag::EvaluateGamma(InputTable, &v23, v16, v17, v18);
    *a3 = 1;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 52) = 0;
    if (v23 == 1 && v21 == 1.0)
    {
      *(a3 + 24) = 1065353216;
      *(a3 + 8) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 16) = CMMTable::MakeFloatCopy(v10, a4, v19, v20);
    }
  }

  return v10;
}

uint64_t CMMLut8Tag::MakeInputLut(CMMLut8Tag *this, uint64_t a2, int *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v21 = *MEMORY[0x1E69E9840];
  InputTable = CMMLut8Tag::GetInputTable(*(v3 + 104), v8);
  v11 = InputTable;
  if ((v9 - 1) <= 1 && v5)
  {
    bzero(&v18, 0x4004uLL);
    memset(v7, 255, 0x4004uLL);
    CMMLut8Tag::EncodeLut(v11, &v18, 1);
    v12 = (65792 * *v11 + 0x8000 + 0x101000000 * *v11) >> 16;
    v13 = v11[128] << 16;
    v14 = (65792 * v11[255] + 0x8000 + 0x101000000 * v11[255]) >> 16;
    *v7 = v12;
    memcpy(v7 + 1, v19, 0x2018uLL);
    v7[2057] = v13;
    v7[2056] = v13;
    v7[2055] = v13;
    result = memcpy(v7 + 2058, v20, 0x1FD8uLL);
    v7[4096] = v14;
  }

  else
  {
    result = CMMLut8Tag::EncodeLut(InputTable, v7, 0);
    v16 = v7[4096];
    v7[1] = *v7;
    v7[4095] = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMMLut8Tag::GetInputTable(CMMLut8Tag *this, int a2)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return CMMTable::UInt8Data(*(this + 2), *(this + 3)) + (a2 << 8);
}

void CMMLut8Tag::EvaluateGamma(CMMLut8Tag *this, unsigned __int8 *a2, BOOL *a3, long double a4, double a5)
{
  v6 = 0;
  while (v6 == *(this + v6))
  {
    if (++v6 == 256)
    {
      *a2 = 1;
      return;
    }
  }

  v7 = 0;
  v8 = 0;
  *a2 = 0;
  v9 = 0.0;
  do
  {
    if (v7 != 255 && v7)
    {
      LOBYTE(a4) = *(this + v7);
      a4 = *&a4;
      v10 = a4 / 255.0;
      if (a4 / 255.0 != 0.0 && v10 != 1.0)
      {
        v12 = log(v7 / 255.0);
        a4 = log(v10) / v12;
        v9 = v9 + a4;
        ++v8;
      }
    }

    ++v7;
  }

  while (v7 != 256);
  if (v8)
  {
    v13 = 0;
    v14 = v9 / v8;
    do
    {
      LOBYTE(a5) = *(this + v13);
      if (vabdd_f64(*&a5 / 255.0, pow(v13 / 255.0, v14)) > 0.001)
      {
        break;
      }

      ++v13;
    }

    while (v13 != 256);
  }
}

void *CMMLut8Tag::CopyClut(CMMLut8Tag *this, CMMMemMgr *a2)
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
  v5 = *(*(this + 12) + 32);
  v6 = (*(*this + 72))(this);
  v7 = v6 + v5;
  if (__CFADD__(v6, v5))
  {
    v8 = 4294967246;
  }

  else
  {
    v8 = 0;
  }

  CMMThrowExceptionOnError(v8);
  if (v7 < 0)
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
  v12[4] = 2 * v7;
  v16 = CMMBase::NewInternal((2 * v7), a2, v14, v15);
  v12[2] = v16;
  v17 = CMMTable::UInt8Data(v16, v12[3]);
  v24 = CMMTable::UInt8Data(*(*(this + 12) + 16), *(*(this + 12) + 24));
  v25 = *(this + 50);
  if (!*(this + 50))
  {
    goto LABEL_20;
  }

  v26 = *(this + 52);
  v13 = 1;
  do
  {
    v27 = v13;
    v13 *= v26;
    v29 = v13 >= v27 && v13 >= v26;
    CMMThrowExceptionWithLog(v29, "Overflow in Power", v18, v19, v20, v21, v22, v23);
    --v25;
  }

  while (v25);
  if (v13)
  {
LABEL_20:
    v30 = 0;
    v31 = *(this + 51);
    do
    {
      v32 = v31;
      if (v31)
      {
        do
        {
          v33 = *v24++;
          *v17++ = v33 | (v33 << 8);
          --v32;
        }

        while (v32);
      }

      ++v30;
    }

    while (v30 != v13);
  }

  return v12;
}

void CMMConvCLUTBase::CMMConvCLUTBase(CMMConvCLUTBase *this, CMMLutTagBase *a2, CMMMemMgr *a3, CMMConvNode *a4)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a4;
  if (a4)
  {
    *(a4 + 2) = this;
  }

  *(this + 5) = 0x3F80000000000000;
  *(this + 33) = 0;
  *this = &unk_1F0E07F90;
  *(this + 7) = (*(*a2 + 64))(a2);
  *(this + 8) = (*(*a2 + 48))(a2);
  *(this + 9) = (*(*a2 + 56))(a2);
  v7 = (*(*a2 + 40))(a2, a3);
  *(this + 10) = v7;
  *(this + 11) = CMMTable::UInt8Data(*(v7 + 16), *(v7 + 24));
  *(this + 35) = 1;
}

void ConversionManager::AddLabToXYZ(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v51 = 1065353216;
  v41 = &unk_1F0E071F8;
  v42 = xmmword_19A96E360;
  v43 = xmmword_19A96E370;
  v44 = -48464;
  v48 = 4292476157;
  LODWORD(v49) = 6227719;
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  memset(&v65[8], 0, 32);
  v60 = 0u;
  v61 = 0u;
  v59 = 0x3FF0000000000000;
  *&v62 = 0x3FF0000000000000;
  *&v63 = 0xBFE0000000000000;
  *v65 = xmmword_19A96E380;
  v66 = 0x3FF0000000000000;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  MatrixMatrix4x4<double>(v52.f64, dbl_19A9B05B8, &v59);
  *&v2.f64[0] = v53;
  *&v2.f64[1] = v54[0];
  v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v2);
  v46 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v54[1]), v55);
  *v2.f64 = *&v56;
  v3 = *(&v53 + 1);
  v47 = LODWORD(v2.f64[0]);
  *v2.f64 = *&v54[3];
  *&v4 = *(&v56 + 1);
  *(&v49 + 1) = v3;
  v50 = __PAIR64__(v4, LODWORD(v2.f64[0]));
  CMMMatrix::MakeMatrixConv(&v41, *(a1 + 8), *(a1 + 24), v5);
  v6 = 0;
  *(a1 + 24) = v7;
  do
  {
    pthread_mutex_lock(&ConversionManager::CreateLabToXYZLut(icXYZNumber const&,unsigned int)::cmmLock);
    if (!labDecodeTableChan0)
    {
      *&v37 = 0;
      CMMMemMgr::CMMMemMgr(&v37);
      labDecodeDataChan0Ptr = CMMBase::NewInternal(0x5408, &v37, v8, v9);
      labDecodeDataChan1Ptr = CMMBase::NewInternal(0x5408, &v37, v10, v11);
      labDecodeDataChan2Ptr = CMMBase::NewInternal(0x5408, &v37, v12, v13);
      ConversionManager::InitLabToXYZLut(labDecodeDataChan0Ptr, 0);
      ConversionManager::InitLabToXYZLut(labDecodeDataChan1Ptr, 1);
      ConversionManager::InitLabToXYZLut(labDecodeDataChan2Ptr, 2);
      v14 = labDecodeDataChan1Ptr;
      v15 = *(labDecodeDataChan1Ptr + 8160);
      *(labDecodeDataChan1Ptr + 8164) = v15;
      *(v14 + 8156) = v15;
      v16 = labDecodeDataChan2Ptr;
      v17 = *(labDecodeDataChan2Ptr + 8160);
      *(labDecodeDataChan2Ptr + 8164) = v17;
      *(v16 + 8156) = v17;
      v20 = CMMBase::NewInternal(0x28, &v37, v18, v19);
      v21 = labDecodeDataChan0Ptr;
      v20[2] = 0;
      v20[3] = v21;
      *v20 = &unk_1F0E09180;
      v20[1] = 0;
      v20[4] = 21512;
      labDecodeTableChan0 = v20;
      v24 = CMMBase::NewInternal(0x28, &v37, v22, v23);
      v25 = labDecodeDataChan1Ptr;
      v24[2] = 0;
      v24[3] = v25;
      *v24 = &unk_1F0E09180;
      v24[1] = 0;
      v24[4] = 21512;
      labDecodeTableChan1 = v24;
      v28 = CMMBase::NewInternal(0x28, &v37, v26, v27);
      v29 = labDecodeDataChan2Ptr;
      v28[2] = 0;
      v28[3] = v29;
      *v28 = &unk_1F0E09180;
      v28[1] = 0;
      v28[4] = 21512;
      labDecodeTableChan2 = v28;
      CMMMemMgr::ReleaseMemList(&v37);
    }

    pthread_mutex_unlock(&ConversionManager::CreateLabToXYZLut(icXYZNumber const&,unsigned int)::cmmLock);
    if (v6 == 1)
    {
      v32 = labDecodeTableChan1;
    }

    else if (v6)
    {
      if (v6 == 2)
      {
        v32 = labDecodeTableChan2;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = labDecodeTableChan0;
    }

    *(&v37 + 1) = 0x400000000;
    v38 = 0;
    *&v37 = 1;
    v39 = xmmword_19A96E390;
    v40 = xmmword_19A96E3A0;
    v33 = CMMBase::NewInternal(0xA8, *(a1 + 8), v30, v31);
    CMMConvTRC::CMMConvTRC(v33, v6, v32, 21512, &v37, *(a1 + 24), 3, 1, 2.0, 0, 0);
    *(a1 + 24) = v33;
    ++v6;
  }

  while (v6 != 3);
  v42 = xmmword_19A96E3B0;
  v43 = xmmword_19A96E3B0;
  v44 = 0x10000;
  v48 = 0;
  v49 = 0;
  v45 = xmmword_19A96E3C0;
  v46 = xmmword_19A96E3D0;
  v47 = 1062415525;
  v50 = 0;
  CMMMatrix::MakeMatrixConv(&v41, *(a1 + 8), v33, v34);
  *(a1 + 24) = v35;
  *(a1 + 36) = 1482250784;
  v36 = *MEMORY[0x1E69E9840];
}

void sub_19A93974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double MatrixMatrix4x4<double>(double *a1, double *a2, double *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v6 = a3[2];
  v5 = a3[3];
  v8 = a3[4];
  v7 = a3[5];
  v10 = a3[6];
  v9 = a3[7];
  v12 = a3[8];
  v11 = a3[9];
  v14 = a3[10];
  v13 = a3[11];
  v16 = a3[12];
  v15 = a3[13];
  v18 = a3[14];
  v17 = a3[15];
  *a1 = v8 * a2[1] + *a2 * *a3 + a2[2] * v12 + a2[3] * v16;
  a1[1] = v7 * a2[1] + *a2 * v3 + a2[2] * v11 + a2[3] * v15;
  a1[2] = v10 * a2[1] + *a2 * v6 + a2[2] * v14 + a2[3] * v18;
  a1[3] = v9 * a2[1] + *a2 * v5 + a2[2] * v13 + a2[3] * v17;
  a1[4] = v8 * a2[5] + a2[4] * v4 + a2[6] * v12 + a2[7] * v16;
  a1[5] = v7 * a2[5] + a2[4] * v3 + a2[6] * v11 + a2[7] * v15;
  a1[6] = v10 * a2[5] + a2[4] * v6 + a2[6] * v14 + a2[7] * v18;
  a1[7] = v9 * a2[5] + a2[4] * v5 + a2[6] * v13 + a2[7] * v17;
  a1[8] = v8 * a2[9] + a2[8] * v4 + a2[10] * v12 + a2[11] * v16;
  a1[9] = v7 * a2[9] + a2[8] * v3 + a2[10] * v11 + a2[11] * v15;
  a1[10] = v10 * a2[9] + a2[8] * v6 + a2[10] * v14 + a2[11] * v18;
  a1[11] = v9 * a2[9] + a2[8] * v5 + a2[10] * v13 + a2[11] * v17;
  a1[12] = v8 * a2[13] + a2[12] * v4 + a2[14] * v12 + a2[15] * v16;
  a1[13] = v7 * a2[13] + a2[12] * v3 + a2[14] * v11 + a2[15] * v15;
  a1[14] = v10 * a2[13] + a2[12] * v6 + a2[14] * v14 + a2[15] * v18;
  result = v9 * a2[13] + a2[12] * v5 + a2[14] * v13 + a2[15] * v17;
  a1[15] = result;
  return result;
}

uint64_t CMMConvCLUTBase::IsNOP(CMMConvCLUTBase *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 7);
  if (v8)
  {
    if (v8 != 2)
    {
      return 0;
    }

    v10 = *(this + 8);
    if (v10 != *(this + 9))
    {
      return 0;
    }

    v11 = 1;
    if (!v10)
    {
      goto LABEL_15;
    }

    v12 = *(this + 8);
    do
    {
      v13 = v11 < 0;
      v11 *= 2;
      v15 = !v13 && v11 != 0;
      CMMThrowExceptionWithLog(v15, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      --v12;
    }

    while (v12);
    if (v10 >= 0x10)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }

    if (v11)
    {
LABEL_15:
      for (i = 0; ; ++i)
      {
        v17 = CMMTable::UInt8Data(*(*(this + 10) + 16), *(*(this + 10) + 24));
        v18 = i + 1;
        if (v10)
        {
          break;
        }

LABEL_23:
        result = 1;
        if (v11 <= v18)
        {
          return result;
        }
      }

      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *(v17 + 2 * v10 * v18 - 2 - 2 * v19);
        v22 = ((i >> v20) & 1) != 0 ? 0xFFFF : 0;
        if (v22 != v21)
        {
          return 0;
        }

        v19 = ++v20;
        if (v10 <= v20)
        {
          goto LABEL_23;
        }
      }
    }
  }

  return 1;
}

uint64_t CMMConvCLUTBase::GetMaxNofChannels(CMMConvCLUTBase *this)
{
  if (*(this + 8) <= *(this + 9))
  {
    return *(this + 9);
  }

  else
  {
    return *(this + 8);
  }
}

void CMMLutOutputProfile::~CMMLutOutputProfile(CMMLutOutputProfile *this)
{
  CMMProfile::~CMMProfile(this);

  CMMBase::operator delete(v1);
}

void CMMLut8Tag::~CMMLut8Tag(CMMLut8Tag *this)
{
  CMMLut8Tag::~CMMLut8Tag(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E091A0;
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

__CFDictionary *CMMConvCLUTBase::FlattenConversion(CMMConvCLUTBase *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = *(this + 7);
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v5);
      CFRelease(v6);
    }

    valuePtr = *(this + 8);
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v7);
      CFRelease(v8);
    }

    valuePtr = *(this + 9);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v9);
      CFRelease(v10);
    }

    v20 = 0;
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        v20 = NxMTransformFormatFromValue(Value);
      }
    }

    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v20);
    if (v13)
    {
      v16 = v13;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v13);
      CFRelease(v16);
    }

    v17 = NxMLUTCreateData(v20, *(this + 11), 0, *(this + 7), *(this + 8), *(this + 9), v14, v15);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v17);
      CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v18);
      CFRelease(v18);
    }

    if (CFDictionaryGetCount(Mutable) > 5)
    {
      if (*(this + 34) == 1)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
      }

      CMMConvNode::AddClampingInfo(this, Mutable);
    }

    else
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t NxMTransformFormatFromValue(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  if (CFEqual(a1, kColorSyncTextureFormatNxMtoRGBX8))
  {
    return 3;
  }

  if (CFEqual(a1, kColorSyncTextureFormatNxMtoRGBX16))
  {
    return 4;
  }

  if (CFEqual(a1, kColorSyncTextureFormatNxMtoRGBXFloat16))
  {
    return 5;
  }

  if (CFEqual(a1, kColorSyncTextureFormatNxMtoRGBXFloat32))
  {
    return 6;
  }

  if (CFEqual(a1, kColorSyncNxMLUTFormatFixed16))
  {
    return 0;
  }

  if (CFEqual(a1, kColorSyncNxMLUTFormatFloat16))
  {
    return 1;
  }

  if (!CFEqual(a1, kColorSyncNxMLUTFormatFloat32))
  {
    return 0;
  }

  return 2;
}