__CFDictionary *CMMConvHLGInvOETF::FlattenConversion(CMMConvHLGInvOETF *this, const __CFDictionary *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_33;
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

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGInvOETFTable") == *v9)
  {
    v39 = 0.0;
    v21 = (*(*this + 248))(this, a2, &v39);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v21);
      CFRelease(v22);
    }

    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v23);
      CFRelease(v24);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_28;
    }

    v25 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v26 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    values = v25;
    v42 = v26;
    v27 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v25);
    CFRelease(v26);
    if (v27)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v27);
      CFRelease(v27);
    }

    v28 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    valuePtr[0] = v28;
    valuePtr[1] = v12;
    v29 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    if (v29)
    {
      v30 = v29;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v29);
      CFRelease(v30);
    }

    CFRelease(v28);
    goto LABEL_27;
  }

  v10 = kColorSyncConversionParamHLGInvOETF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 4;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        v17 = *(this + 34);
        v18 = *(this + 32) * v17;
        v39 = v17 * *(this + 33);
        *valuePtr = v18;
        v38 = 0;
        values = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
        v42 = CFNumberCreate(0, kCFNumberFloat32Type, &v39);
        v19 = 0;
        v43 = CFNumberCreate(0, kCFNumberFloat32Type, &v38);
        do
        {
          v20 = *(&values + v19);
          if (v20)
          {
            CFArrayAppendValue(v12, *(&values + v19));
            CFRelease(v20);
          }

          v19 += 8;
        }

        while (v19 != 24);
        CFDictionaryAddValue(Mutable, v10, v12);
        break;
      }
    }

LABEL_27:
    CFRelease(v12);
  }

LABEL_28:
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v31);
  CFRelease(v31);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v32, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  LODWORD(valuePtr[0]) = 0;
  v39 = *(this + 41);
  if (v39 != 1.0)
  {
    v33 = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
    v34 = CFNumberCreate(0, kCFNumberFloat32Type, &v39);
    values = v33;
    v42 = v34;
    v35 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v33);
    CFRelease(v34);
    if (v35)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v35);
      CFRelease(v35);
    }
  }

LABEL_33:
  v36 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMMConvHLGInvOETF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 164);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvHLGInvOETF::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    if (v5 <= 1.0)
    {
      v6 = *(a2 + 4 * i);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

void CMMConvHLGInvOETF::~CMMConvHLGInvOETF(CMMConvHLGInvOETF *this)
{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvPQInvEOTF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    v8 = *(a1 + 176);
    do
    {
      v9 = v8 * *(a2 + 4 * v5);
      v10 = powf(fabsf(v9), 0.1593);
      v11 = powf(((v10 * 18.852) + 0.83594) / ((v10 * 18.688) + 1.0), 78.844);
      if (v9 < 0.0)
      {
        v11 = -v11;
      }

      *(a2 + 4 * v5) = v11;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvPQInvEOTF::create_flattened_TRC_data(CMMConvPQInvEOTF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQInvEOTFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v12 = *a3;
    if (v12)
    {
      v13 = (this + 176);
      *v11.i32 = (v12 - 1);
      v36 = vdupq_n_s64(v12 - 1);
      v35 = vdup_lane_s32(v11, 0);
      v14 = vld1_dup_f32(v13);
      v15 = (v12 + 1) & 0x1FFFFFFFELL;
      v16 = 0x100000000;
      v17 = xmmword_19A96E050;
      v18 = (MutableBytePtr + 4);
      v19 = vdup_n_s32(0x4196D000u);
      v20 = vdup_n_s32(0x3F560000u);
      v21 = vdup_n_s32(0x41958000u);
      __asm { FMOV            V10.2S, #1.0 }

      v34 = vdupq_n_s64(2uLL);
      do
      {
        v43 = v17;
        v41 = vmovn_s64(vcgeq_u64(v36, v17));
        v42 = vmul_f32(v14, vdiv_f32(vcvt_f32_u32(v16), v35));
        v27 = vabs_f32(v42);
        v37 = v27.f32[0];
        v39 = powf(v27.f32[1], 0.1593);
        v28.f32[0] = powf(v37, 0.1593);
        v28.f32[1] = v39;
        v29 = vdiv_f32(vmla_f32(v20, v19, v28), vmla_f32(_D10, v21, v28));
        v38 = v29.f32[0];
        v40 = powf(v29.f32[1], 78.844);
        v30 = powf(v38, 78.844);
        if (v41.i8[0])
        {
          v31 = -v30;
          if (v42.f32[0] >= 0.0)
          {
            v31 = v30;
          }

          *(v18 - 1) = v31;
        }

        if (v41.i8[4])
        {
          v32 = v40;
          if (v42.f32[1] < 0.0)
          {
            v32 = -v40;
          }

          *v18 = v32;
        }

        v17 = vaddq_s64(v43, v34);
        v16 = vadd_s32(v16, 0x200000002);
        v18 += 2;
        v15 -= 2;
      }

      while (v15);
    }
  }

  return v9;
}

__CFDictionary *CMMConvPQInvEOTF::FlattenConversion(CMMConvPQInvEOTF *this, const __CFDictionary *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_21;
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

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.PQInvEOTFTable") == *v9)
  {
    valuePtr = 0;
    v23 = (*(*this + 248))(this, a2, &valuePtr);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v23);
      CFRelease(v24);
    }

    v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v25)
    {
      v26 = v25;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v25);
      CFRelease(v26);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_18;
    }

    v27 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v28 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    values[0] = v27;
    values[1] = v28;
    v29 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v27);
    CFRelease(v28);
    if (v29)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v29);
      CFRelease(v29);
    }

    v30 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    v34[0] = v30;
    v34[1] = v12;
    v31 = CFArrayCreate(0, v34, 2, MEMORY[0x1E695E9C0]);
    if (v31)
    {
      v32 = v31;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v31);
      CFRelease(v32);
    }

    CFRelease(v30);
    goto LABEL_17;
  }

  v10 = kColorSyncConversionParamPQInvEOTF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 6;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }

    CFRelease(v12);
    v12 = 0;
LABEL_14:
    v17 = CFNumberCreate(0, kCFNumberFloat32Type, this + 176);
    if (v17)
    {
      v18 = v17;
      CFArrayAppendValue(v12, v17);
      CFRelease(v18);
    }

    CFDictionaryAddValue(Mutable, v10, v12);
LABEL_17:
    CFRelease(v12);
  }

LABEL_18:
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v19);
  CFRelease(v19);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CMMConvPQInvEOTF::~CMMConvPQInvEOTF(CMMConvPQInvEOTF *this)
{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvHLGOETF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    do
    {
      v9 = *(a2 + 4 * v5);
      v10 = fabsf(v9) * *(a1 + 132);
      if (v10 <= 0.0833333333)
      {
        v12 = sqrtf(v10 * 3.0);
      }

      else
      {
        v11 = v10 * 12.0 + -0.284668922;
        v12 = (logf(v11) * 0.17883) + 0.55991;
      }

      if (v9 < 0.0)
      {
        v12 = -v12;
      }

      *(a2 + 4 * v5) = v12;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvHLGOETF::create_flattened_TRC_data(CMMConvHLGOETF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGOETFCTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = *a3;
    if (v11)
    {
      v12 = MutableBytePtr;
      for (i = 0; i != v11; ++i)
      {
        v14 = fabsf(i / (v11 - 1)) * *(this + 33);
        if (v14 <= 0.0833333333)
        {
          v16 = sqrtf(v14 * 3.0);
        }

        else
        {
          v15 = v14 * 12.0 + -0.284668922;
          v16 = (logf(v15) * 0.17883) + 0.55991;
        }

        *&v12[4 * i] = v16;
      }
    }
  }

  return v9;
}

__CFDictionary *CMMConvHLGOETF::FlattenConversion(CMMConvHLGOETF *this, const __CFDictionary *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_29;
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

  v9 = MEMORY[0x1E695E4D0];
  if (a2 && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOETFTable") == *v9)
  {
    v33 = 0;
    v19 = (*(*this + 248))(this, a2, &v33);
    if (v19)
    {
      v20 = v19;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v19);
      CFRelease(v20);
    }

    v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v33);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v21);
      CFRelease(v22);
    }

    if (*(this + 33) != 1)
    {
      goto LABEL_26;
    }

    v23 = CFNumberCreate(0, kCFNumberFloat32Type, this + 144);
    v24 = CFNumberCreate(0, kCFNumberFloat32Type, this + 148);
    valuePtr[0] = v23;
    valuePtr[1] = v24;
    v25 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v23);
    CFRelease(v24);
    if (v25)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v25);
      CFRelease(v25);
    }

    v26 = CFNumberCreate(0, kCFNumberFloat32Type, this + 152);
    v12 = CFNumberCreate(0, kCFNumberFloat32Type, this + 156);
    values[0] = v26;
    values[1] = v12;
    v27 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    if (v27)
    {
      v28 = v27;
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v27);
      CFRelease(v28);
    }

    CFRelease(v26);
    goto LABEL_25;
  }

  v10 = kColorSyncConversionParamHLGOETF;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = v11;
    v13 = this + 112;
    v14 = 5;
    while (1)
    {
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      CFArrayAppendValue(v12, v15);
      CFRelease(v16);
      v13 += 4;
      if (!--v14)
      {
        LODWORD(valuePtr[0]) = *(this + 33);
        v17 = CFNumberCreate(0, kCFNumberFloat32Type, valuePtr);
        if (v17)
        {
          v18 = v17;
          CFArrayAppendValue(v12, v17);
          CFRelease(v18);
        }

        CFDictionaryAddValue(Mutable, v10, v12);
        break;
      }
    }

LABEL_25:
    CFRelease(v12);
  }

LABEL_26:
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v29);
  CFRelease(v29);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v30, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
LABEL_29:
  v31 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CMMConvHLGOETF::~CMMConvHLGOETF(CMMConvHLGOETF *this)
{
  CMMConvInvertedTRC::~CMMConvInvertedTRC(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMConvMatrix::Collapse3x3(CMMConvMatrix *this, CMMConvMatrix *a2, CMMMemMgr *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 224))(this);
  if ((v6 & 1) == 0)
  {
    *(this + 32) = 1;
    *(a2 + 32) = 1;
    v44 = 0;
    v38 = &unk_1F0E071F8;
    v7 = *(a2 + 6);
    *v42 = *(a2 + 7);
    v8 = *(a2 + 9);
    *&v42[16] = *(a2 + 8);
    v43 = v8;
    LODWORD(v44) = *(a2 + 40);
    v9 = *(a2 + 5);
    v39 = *(a2 + 4);
    v40 = v9;
    v41 = v7;
    v10 = this + 64;
    v63 = vcvtq_f64_f32(*(this + 100));
    LODWORD(v9) = *(this + 38);
    *&v7 = *(this + 37);
    v64 = *(this + 27);
    v65 = v7;
    v66 = vcvtq_f64_f32(*(this + 112));
    v67 = *(this + 30);
    v68 = *&v9;
    v69 = vcvtq_f64_f32(*(this + 124));
    *&v7 = *(this + 39);
    v70 = *(this + 33);
    v71 = v7;
    v72 = xmmword_19A9B02E8;
    v73 = unk_19A9B02F8;
    v52 = vcvtq_f64_f32(*(&v41 + 4));
    v53 = *(&v41 + 3);
    v54 = *(&v43 + 1);
    v55 = vcvtq_f64_f32(*v42);
    v56 = *&v42[8];
    v57 = *(&v43 + 2);
    v58 = vcvtq_f64_f32(*&v42[12]);
    v59 = *&v42[20];
    v60 = *(&v43 + 3);
    v61 = xmmword_19A9B02E8;
    v62 = unk_19A9B02F8;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    memset(v47, 0, sizeof(v47));
    v45 = 0u;
    v46 = 0u;
    MatrixMatrix4x4<double>(v45.f64, v52.f64, v63.f64);
    v12 = 0;
    v37 = 0;
    v33 = 0;
    v29[0] = 0;
    memset(v28, 0, sizeof(v28));
    *&v13.f64[0] = v46;
    v13.f64[1] = v47[0].f64[0];
    *&v29[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v13);
    v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v47 + 8)), v48);
    v14 = *&v49;
    v31 = v14;
    v15 = *(&v46 + 1);
    v16 = v47[1].f64[1];
    v34 = v15;
    v35 = v16;
    v17 = *(this + 40) * *(a2 + 40);
    v27 = &unk_1F0E071F8;
    v32 = 0;
    *v13.f64 = *(&v49 + 1);
    v36 = LODWORD(v13.f64[0]);
    *&v37 = v17;
    do
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = 0;
        v21 = 0;
        v22 = v19;
        do
        {
          v21 += *(&v38 + v22) * *&v10[v20];
          v20 += 4;
          v22 += 12;
        }

        while (v20 != 12);
        *(v28 + 3 * v12 + v18++) = (v21 + 0x8000) >> 16;
        v19 += 4;
      }

      while (v18 != 3);
      ++v12;
      v10 += 12;
    }

    while (v12 != 3);
    v23 = *(a2 + 2);
    CMMMatrix::MakeMatrixConv(&v27, a3, a2, v11);
    *(a2 + 2) = v24;
    *(v24 + 16) = v23;
    if (v23)
    {
      *(v23 + 24) = v24;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v10 = *(result + 148);
    v11 = *(result + 156);
    a9.i32[0] = *(result + 160);
    a10.i32[0] = 1.0;
    v12 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a9, a10)), 0);
    v13 = vbslq_s8(v12, vmulq_n_f32(*(result + 104), a9.f32[0]), *(result + 104));
    v14 = vbslq_s8(v12, vmulq_n_f32(*(result + 120), a9.f32[0]), *(result + 120));
    if (a9.f32[0] == 1.0)
    {
      v15 = *(result + 100);
    }

    else
    {
      v15 = *(result + 100) * a9.f32[0];
    }

    v16 = *&v14.i32[1];
    *v14.i8 = vext_s8(*v13.i8, *v14.i8, 4uLL);
    v17 = vdup_laneq_s32(v13, 2);
    v17.f32[0] = v15;
    v13.i32[1] = vextq_s8(*&v13, *&v13, 8uLL).i32[1];
    v18 = (a2 + 8);
    v19 = 1;
    do
    {
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = v11 + (((*&v14.i32[2] * v21) + (v20 * v16)) + (*v18 * *&v14.i32[3]));
      *(v18 - 1) = vadd_f32(v10, vmla_n_f32(vmla_n_f32(vmul_n_f32(*v13.i8, v21), v17, v20), *v14.i8, *v18));
      *v18 = v22;
      v19 += a4;
      v18 += a4;
    }

    while (v19 - 1 < (a5 * a4));
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxGeneric,CMMConvMatrix>::Convert(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v6 = 0;
    v7 = result[34];
    v8 = result[35];
    v9 = result[36];
    v11 = result[23];
    v10 = result[24];
    v13 = result[21];
    v12 = result[22];
    v14 = result[19];
    v15 = result[20];
    v17 = result[17];
    v16 = result[18];
    result = result[16];
    do
    {
      v18 = (a2 + 4 * v6);
      v19 = v18[1];
      v20 = v18[2];
      v21 = v7 + ((v17 * v19 + result * *v18 + v16 * v20 + 0x8000) >> 16);
      v22 = v8 + ((v15 * v19 + v14 * *v18 + v13 * v20 + 0x8000) >> 16);
      v23 = v9 + ((v11 * v19 + v12 * *v18 + v10 * v20 + 0x8000) >> 16);
      if (v21 >= 0x1000000)
      {
        v24 = 0x1000000;
      }

      else
      {
        v24 = v7 + ((v17 * v19 + result * *v18 + v16 * v20 + 0x8000) >> 16);
      }

      if (v21 < 0)
      {
        v24 = 0;
      }

      if (v22 >= 0x1000000)
      {
        v25 = 0x1000000;
      }

      else
      {
        v25 = v22;
      }

      if (v22 < 0)
      {
        v25 = 0;
      }

      *v18 = v24;
      v18[1] = v25;
      if (v23 >= 0x1000000)
      {
        v26 = 0x1000000;
      }

      else
      {
        v26 = v23;
      }

      if (v23 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v18[2] = v27;
      v6 += a4;
    }

    while (v6 < v5);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 100);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    do
    {
      *a2 = v5 * *a2;
      *(a2 + 4) = 0;
      *(a2 + 8) = 0;
      v7 += a4;
      a2 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::Convert(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 64);
    do
    {
      v7 = (*a2 * v6 + 0x8000) >> 16;
      if (v7 >= 0x1000000)
      {
        v8 = 0x1000000;
      }

      else
      {
        v8 = (*a2 * v6 + 0x8000) >> 16;
      }

      if ((v7 & 0x80000000) == 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v9;
      v5 += a4;
      a2 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 100);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8 = *(result + 152);
    do
    {
      *a2 = v5 * *a2;
      *(a2 + 4) = v8;
      v7 += a4;
      a2 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::Convert(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 64);
    v7 = vand_s8(vcgez_s32(*(result + 140)), vmin_u32(*(result + 140), 0x100000001000000));
    do
    {
      v8 = (v6 * *a2 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = (v6 * *a2 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      *a2 = v10;
      *(a2 + 1) = v7;
      v5 += a4;
      a2 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

float *CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = result[26];
  v7 = result[28];
  v6 = result[29];
  v9 = result[32];
  v8 = result[33];
  v10 = result[40];
  v11 = v10 == 1.0;
  v12 = v5 * v10;
  v13 = v7 * v10;
  v14 = v6 * v10;
  v15 = v9 * v10;
  v16 = v8 * v10;
  if (!v11)
  {
    v8 = v16;
    v9 = v15;
    v6 = v14;
    v7 = v13;
    v5 = v12;
  }

  if (a5 * a4)
  {
    v17 = 0;
    v18 = result[37];
    v19 = result[38];
    v20 = result[39];
    do
    {
      v21 = (a2 + 4 * v17);
      v22 = v21[1];
      v23 = v18 + (v22 * v5);
      v24 = v19 + ((v6 * v22) + (*v21 * v7));
      v25 = v20 + ((v8 * v21[2]) + (v22 * v9));
      *v21 = v23;
      v21[1] = v24;
      v21[2] = v25;
      v17 += a4;
    }

    while (v17 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::Convert(uint64_t result, int8x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v7 = *(result + 92);
    v6 = *(result + 96);
    v9 = *(result + 76);
    v8 = *(result + 80);
    v10 = *(result + 68);
    v11 = *(result + 140) + 24;
    v12 = *(result + 144) + 24;
    v13 = a2 + 1;
    result = 1;
    do
    {
      v14 = v13[-1].i32[1];
      v15 = (v10 * v14 + 0x8000) >> 16;
      v16 = (v8 * v14 + v9 * v13[-1].i32[0] + 0x8000) >> 16;
      v17 = v16 - 24;
      if (v16 <= 24)
      {
        v17 = 0;
      }

      if (v16 >= -24)
      {
        LODWORD(v16) = -24;
      }

      v18 = v11 + v16 + v17;
      v19 = (v6 * v13->i32[0] + v7 * v14 + 0x8000) >> 16;
      v20 = v19 - 24;
      if (v19 <= 24)
      {
        v20 = 0;
      }

      if (v19 >= -24)
      {
        LODWORD(v19) = -24;
      }

      v21 = v12 + v19 + v20;
      v13[-1] = vand_s8(vcgez_s32(__PAIR64__(v18, v15)), vmin_u32(__PAIR64__(v18, v15), 0x100000001000000));
      if (v21 >= 0x1000000)
      {
        v22 = 0x1000000;
      }

      else
      {
        v22 = v21;
      }

      if (v21 < 0)
      {
        v22 = 0;
      }

      v13->i32[0] = v22;
      result += a4;
      v13 = (v13 + 4 * a4);
    }

    while (result - 1 < v5);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

float *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = result[25];
  v5 = result[26];
  v7 = result[28];
  v8 = result[31];
  v9 = result[33];
  v10 = result[40];
  v11 = v10 == 1.0;
  v12 = v6 * v10;
  v13 = v5 * v10;
  v14 = v7 * v10;
  v15 = v8 * v10;
  v16 = v9 * v10;
  if (!v11)
  {
    v9 = v16;
    v8 = v15;
    v7 = v14;
    v5 = v13;
    v6 = v12;
  }

  if (a5 * a4)
  {
    v17 = 0;
    v18 = result[37];
    v19 = result[38];
    v20 = result[39];
    do
    {
      v21 = (a2 + 4 * v17);
      v22 = v19 + (*v21 * v7);
      v23 = v20 + ((v9 * v21[2]) + (*v21 * v8));
      *v21 = v18 + ((v5 * v21[1]) + (*v21 * v6));
      v21[1] = v22;
      v21[2] = v23;
      v17 += a4;
    }

    while (v17 < a5 * a4);
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::Convert(int *result, int8x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v6 = result[34];
    v7 = result[36];
    v8 = result[24];
    v9 = result[22];
    v10 = result[19];
    v11 = a2 + 1;
    v12 = 1;
    v14 = result + 16;
    result = result[16];
    v13 = v14[1];
    do
    {
      v15 = v11[-1].i32[0];
      v16 = v6 + ((v13 * v11[-1].i32[1] + result * v15 + 0x8000) >> 16);
      v17 = (v10 * v15 + 0x8000) >> 16;
      v18 = v7 + ((v8 * v11->i32[0] + v9 * v15 + 0x8000) >> 16);
      v11[-1] = vand_s8(vcgez_s32(__PAIR64__(v17, v16)), vmin_u32(__PAIR64__(v17, v16), 0x100000001000000));
      if (v18 >= 0x1000000)
      {
        v19 = 0x1000000;
      }

      else
      {
        v19 = v18;
      }

      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v11->i32[0] = v20;
      v12 += a4;
      v11 = (v11 + 4 * a4);
    }

    while (v12 - 1 < v5);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

float *CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = result[25];
  v5 = result[26];
  v7 = result[27];
  v8 = result[40];
  if (v8 != 1.0)
  {
    v7 = v7 * v8;
    v5 = v5 * v8;
    v6 = v6 * v8;
  }

  if (a5 * a4)
  {
    v9 = 0;
    v10 = (a2 + 4);
    do
    {
      *(v10 - 1) = ((v5 * *v10) + (*(v10 - 1) * v6)) + (*(a2 + 8 + 4 * v9) * v7);
      *v10 = 0;
      v9 += a4;
      v10 += a4;
    }

    while (v9 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v7 = *(result + 68);
    v6 = *(result + 72);
    v8 = (a2 + 4);
    v9 = *(result + 64);
    do
    {
      v10 = (v7 * *v8 + v9 * *(v8 - 1) + v6 * *(a2 + 8 + 4 * v5) + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v10;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v11 = result;
      }

      else
      {
        v11 = 0;
      }

      *v8 = 0;
      *(v8 - 1) = v11;
      v5 += a4;
      v8 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 104);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8 = 4;
    do
    {
      *(a2 + 4 * v7) = v5 * *(a2 + v8);
      *(a2 + v8) = 0;
      v7 += a4;
      v8 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 68);
    v7 = 4;
    do
    {
      v8 = (*(a2 + v7) * v6 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = (*(a2 + v7) * v6 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      *(a2 + 4 * v5) = v10;
      *(a2 + v7) = 0;
      v5 += a4;
      v7 += 4 * a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

float CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::Convert(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  result = *(a1 + 132);
  v6 = *(a1 + 160);
  if (v6 != 1.0)
  {
    result = result * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8.i32[0] = *(a1 + 100);
    v9 = *(a1 + 148);
    v10 = *(a1 + 156);
    v8.i32[1] = *(a1 + 116);
    v11 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v6 != 1.0), 0x1FuLL)), vmul_n_f32(v8, v6), v8);
    v12 = a2 + 1;
    do
    {
      v13 = v10 + (v12->f32[v7] * result);
      *a2 = vmla_f32(v9, v11, *a2);
      v12->f32[v7] = v13;
      v7 += a4;
      a2 = (a2 + 4 * a4);
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 96);
    v7 = *(result + 80);
    v8 = *(result + 64);
    do
    {
      v9 = (a2 + 4 * v5);
      v10 = (v8 * *v9 + 0x8000) >> 16;
      v11 = (v7 * v9[1] + 0x8000) >> 16;
      v12 = (v6 * v9[2] + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = (v8 * *v9 + 0x8000) >> 16;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v11 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v11;
      }

      if ((v11 & 0x80000000) == 0)
      {
        v15 = result;
      }

      else
      {
        v15 = 0;
      }

      *v9 = v14;
      v9[1] = v15;
      if (v12 >= 0x1000000)
      {
        v16 = 0x1000000;
      }

      else
      {
        v16 = v12;
      }

      if ((v12 & 0x80000000) != 0)
      {
        v16 = 0;
      }

      v9[2] = v16;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::FlattenConversion(uint64_t a1)
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

void CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

float *CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = result[25];
  v6 = result[28];
  v7 = result[31];
  v8 = result[40];
  if (v8 != 1.0)
  {
    v7 = v7 * v8;
    v6 = v6 * v8;
    v5 = v5 * v8;
  }

  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      v11 = v6 * *v10;
      v12 = v7 * *v10;
      *v10 = v5 * *v10;
      v10[1] = v11;
      v10[2] = v12;
      v9 += a4;
    }

    while (v9 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 88);
    v7 = *(result + 76);
    v8 = *(result + 64);
    do
    {
      v9 = (a2 + 4 * v5);
      v10 = (v8 * *v9 + 0x8000) >> 16;
      v11 = (v7 * *v9 + 0x8000) >> 16;
      v12 = (v6 * *v9 + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = (v8 * *v9 + 0x8000) >> 16;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v11 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v11;
      }

      if ((v11 & 0x80000000) == 0)
      {
        v15 = result;
      }

      else
      {
        v15 = 0;
      }

      *v9 = v14;
      v9[1] = v15;
      if (v12 >= 0x1000000)
      {
        v16 = 0x1000000;
      }

      else
      {
        v16 = v12;
      }

      if ((v12 & 0x80000000) == 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v9[2] = v17;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
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

uint64_t CMMMtxOnly::ConvertFloat(uint64_t result, uint64_t a2, uint64_t a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  if (a3 * a2)
  {
    a8.i32[0] = 1.0;
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a7, a8)), 0);
    v9 = vbslq_s8(v8, vmulq_n_f32(a5, a7.f32[0]), a5);
    v10 = vbslq_s8(v8, vmulq_n_f32(a6, a7.f32[0]), a6);
    if (a7.f32[0] == 1.0)
    {
      v11 = a4;
    }

    else
    {
      v11 = a4 * a7.f32[0];
    }

    v12 = *&v10.i32[1];
    v13 = vext_s8(*v9.i8, *v10.i8, 4uLL);
    *v10.i8 = vdup_laneq_s32(v9, 2);
    *v10.i32 = v11;
    v9.i32[1] = vextq_s8(*&v9, *&v9, 8uLL).i32[1];
    v14 = (result + 8);
    v15 = 1;
    do
    {
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = ((*&v10.i32[2] * v17) + (v16 * v12)) + (*v14 * *&v10.i32[3]);
      *(v14 - 1) = vmla_n_f32(vmla_n_f32(vmul_n_f32(*v9.i8, v17), *v10.i8, v16), v13, *v14);
      *v14 = v18;
      v15 += a2;
      v14 += a2;
    }

    while (v15 - 1 < (a3 * a2));
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

int *CMMMtxOnly::ConvertMax(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = v5[2];
      v8 = (result[1] * v6 + *result * *v5 + result[2] * v7 + 0x8000) >> 16;
      v9 = (result[4] * v6 + result[3] * *v5 + result[5] * v7 + 0x8000) >> 16;
      v10 = (result[7] * v6 + result[6] * *v5 + result[8] * v7 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v11 = 0x1000000;
      }

      else
      {
        v11 = (result[1] * v6 + *result * *v5 + result[2] * v7 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) != 0)
      {
        v11 = 0;
      }

      if (v9 >= 0x1000000)
      {
        v12 = 0x1000000;
      }

      else
      {
        v12 = v9;
      }

      if ((v9 & 0x80000000) != 0)
      {
        v12 = 0;
      }

      *v5 = v11;
      v5[1] = v12;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = v10;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v5[2] = v14;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
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

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
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

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t CMMMatrix::CMMMatrix(uint64_t result, _DWORD *a2, float a3)
{
  v3 = 0;
  *result = &unk_1F0E071F8;
  *(result + 80) = a2[3] << 8;
  *(result + 84) = a2[7] << 8;
  *(result + 88) = a2[11] << 8;
  *(result + 92) = a2[15];
  *(result + 96) = a2[19];
  *(result + 100) = a2[23];
  *(result + 104) = a3;
  v4 = result;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = v4 + i * 4;
      *(v6 + 8) = a2[i];
      *(v6 + 44) = a2[i + 12];
    }

    ++v3;
    v4 += 12;
    a2 += 4;
  }

  while (v3 != 3);
  return result;
}

void CMMConvRGBToRGBMatrix::CMMConvRGBToRGBMatrix(CMMConvRGBToRGBMatrix *this, const CMMMatrix *a2, CMMConvNode *a3, float a4, float a5)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a3;
  if (a3)
  {
    *(a3 + 2) = this;
  }

  *(this + 5) = 0x3F80000000000000;
  *(this + 33) = 0;
  *this = &unk_1F0E072B8;
  *(this + 7) = &unk_1F0E071F8;
  v5 = *(a2 + 8);
  v6 = *(a2 + 40);
  *(this + 5) = *(a2 + 24);
  *(this + 6) = v6;
  *(this + 4) = v5;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(this + 40) = *(a2 + 26);
  *(this + 8) = v8;
  *(this + 9) = v9;
  *(this + 7) = v7;
  *(this + 24) = 0;
  *(this + 16) = 256;
  *(this + 35) = 0;
  *this = &unk_1F0E0A6B8;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
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

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t CMMConvGrayToRGB::GetCLUTPoints(CMMConvGrayToRGB *this, int a2)
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

void CMMConvGrayToRGB::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvGrayToRGB::ClampInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 4 * v4);
      if (v5 <= 1.0)
      {
        v6 = *(a2 + 4 * v4);
      }

      else
      {
        v6 = 1.0;
      }

      if (v5 >= 0.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      *(a2 + 4 * v4) = v7;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }
}

float CMMConvGrayToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    do
    {
      v6 = a2 + 4 * v5;
      result = *v6;
      *(v6 + 4) = *v6;
      *(v6 + 8) = result;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

void CMMConvGrayToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    do
    {
      v6 = (a2 + 4 * v5);
      v7 = *v6;
      v6[1] = *v6;
      v6[2] = v7;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
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

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

__CFArray *CMMConvRGBToRGB::FlattenConversion(CMMConvRGBToRGB *this, const __CFDictionary *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    for (i = *(this + 6); i; i = i[2])
    {
      if (((*(*i + 224))(i) & 1) == 0)
      {
        v6 = (*(*i + 208))(i, a2);
        if (!v6)
        {
          CFArrayRemoveAllValues(Mutable);
          return Mutable;
        }

        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

uint64_t CMMConvRGBToRGB::GetTransformType(CMMConvRGBToRGB *this, const __CFDictionary *a2)
{
  LODWORD(v3) = 0;
  v4 = (this + 48);
  v5 = -7;
  do
  {
    v6 = *v4;
    v7 = **v4;
    v4 = (*v4 + 2);
    v3 = (*(v7 + 200))(v6, a2) | v3;
  }

  while (!__CFADD__(v5++, 1));
  return v3;
}

uint64_t CMMConvRGBToRGB::GetCLUTPoints(CMMConvRGBToRGB *this, int a2)
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

void CMMConvRGBToRGB::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvRGBToRGB::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvRGBToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + 48);
  v10 = -7;
  do
  {
    v11 = *v9;
    if ((*(**v9 + 40))(*v9))
    {
      (*(*v11 + 136))(v11, a2, a4, a5);
    }

    (*(*v11 + 112))(v11, a2, a3, a4, a5);
    result = (*(*v11 + 64))(v11);
    if (result)
    {
      result = (*(*v11 + 160))(v11, a2, a4, a5);
    }

    v9 = v11 + 2;
  }

  while (!__CFADD__(v10++, 1));
  return result;
}

{
  v9 = (a1 + 48);
  v10 = -7;
  do
  {
    v11 = *v9;
    v12 = **v9;
    v9 = (*v9 + 2);
    result = (*(v12 + 104))(v11, a2, a3, a4, a5);
  }

  while (!__CFADD__(v10++, 1));
  return result;
}

void CMMConvRGBToRGB::Convert(float32x4_t *a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v5) = a5;
  v6 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (*a3 == 1 && a1[115].i8[1] == 1)
  {
    if (a4 == 2)
    {
      if (a5 >= 1)
      {
        v7 = a1 + 42;
        v8 = a1[107];
        v9 = a2 + 2;
        v10 = a2 + 1;
        v11 = a1[8].i64[0];
        v64 = v8;
        v65 = a1[106];
        v62 = a1[109];
        v63 = a1[108];
        v60 = a1[111];
        v61 = a1[110];
        v58 = a1[113];
        v59 = a1[112];
        v57 = a1[114];
        do
        {
          v12 = v66;
          bzero(v66, 0x600uLL);
          v13 = 0;
          if (v5 >= 0x40)
          {
            v14 = 64;
          }

          else
          {
            v14 = v5;
          }

          v15 = v9;
          v16 = v10;
          v17 = v6;
          do
          {
            v18.i32[0] = v7->i32[*v17];
            v19.i32[0] = v7->i32[*v16];
            v18.i32[1] = v7->i32[v17[8]];
            v19.i32[1] = v7->i32[v16[8]];
            v18.i32[2] = v7->i32[v17[16]];
            v19.i32[2] = v7->i32[v16[16]];
            v18.i32[3] = v7->i32[v17[24]];
            v19.i32[3] = v7->i32[v16[24]];
            v20.i32[0] = v7->i32[*v15];
            v20.i32[1] = v7->i32[v15[8]];
            v20.i32[2] = v7->i32[v15[16]];
            v20.i32[3] = v7->i32[v15[24]];
            *v12 = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v65, v18), v64, v19), v63, v20)), 0), 0x1000100010001000);
            v12[1] = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v62, v18), v61, v19), v60, v20)), 0), 0x1000100010001000);
            v12[2] = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v59, v18), v58, v19), v57, v20)), 0), 0x1000100010001000);
            v12 += 3;
            v17 += 32;
            v16 += 32;
            v15 += 32;
            v13 += 4;
          }

          while (v13 < v14);
          v21 = 0;
          v22 = v66;
          do
          {
            *v6 = *(v11 + *v22);
            *v10 = *(v11 + v22[4]);
            *v9 = *(v11 + v22[8]);
            v6[8] = *(v11 + v22[1]);
            v10[8] = *(v11 + v22[5]);
            v9[8] = *(v11 + v22[9]);
            v6[16] = *(v11 + v22[2]);
            v10[16] = *(v11 + v22[6]);
            v9[16] = *(v11 + v22[10]);
            v6[24] = *(v11 + v22[3]);
            v10[24] = *(v11 + v22[7]);
            v9[24] = *(v11 + v22[11]);
            v6 += 32;
            v10 += 32;
            v9 += 32;
            v22 += 12;
            v21 += 4;
          }

          while (v21 < v14);
          v23 = __OFSUB__(v5 & 0x7FFFFFFF, v14);
          v5 = (v5 & 0x7FFFFFFF) - v14;
        }

        while (!((v5 < 0) ^ v23 | (v5 == 0)));
      }

      goto LABEL_36;
    }

LABEL_37:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a4 != 2)
  {
    goto LABEL_37;
  }

  v24 = 2 * a5;
  if (2 * a5)
  {
    v25 = 0;
    v26 = a1[4].i64[1];
    v27 = v26[16];
    v28 = v26[17];
    v29 = v26[18];
    v30 = v26[19];
    v31 = v26[20];
    v32 = v26[21];
    v33 = v26[22];
    v34 = v26[23];
    v35 = v26[24];
    v36 = a1[6].i64[1];
    v37 = a1[7].i64[0];
    v38 = a1[7].i64[1];
    v39 = a1[8].i64[0];
    v41 = a1[8].i64[1];
    v40 = a1[9].i64[0];
    do
    {
      v42 = *&v6[4 * v25];
      v43 = *(v36 + 4 * v42);
      v44 = *(v37 + 4 * BYTE1(v42));
      v45 = *(v38 + 4 * BYTE2(v42));
      v46 = (v28 * v44 + v27 * v43 + v29 * v45 + 0x8000) >> 16;
      v47 = (v31 * v44 + v30 * v43 + v32 * v45 + 0x8000) >> 16;
      v48 = (v34 * v44 + v33 * v43 + v35 * v45 + 0x8000) >> 16;
      if (v46 >= 0x1000)
      {
        v49 = 4096;
      }

      else
      {
        v49 = v46;
      }

      if (v46 < 0)
      {
        v49 = 0;
      }

      v50 = *(v39 + v49);
      if (v47 >= 0x1000)
      {
        v51 = 4096;
      }

      else
      {
        v51 = v47;
      }

      if (v47 < 0)
      {
        v51 = 0;
      }

      v52 = *(v41 + v51);
      if (v48 >= 0x1000)
      {
        v53 = 4096;
      }

      else
      {
        v53 = v48;
      }

      if (v48 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      *&v6[4 * v25] = v50 | (v52 << 8) | (*(v40 + v54) << 16);
      v25 += 2;
    }

    while (v25 < v24);
  }

LABEL_36:
  v55 = *MEMORY[0x1E69E9840];
}

uint64_t CMMConvRGBToRGB::RuntimeAdjust(uint64_t result, uint64_t a2)
{
  if (*(a2 + 408) == 1)
  {
    v2 = *(result + 1841);
    *(a2 + 408) = v2;
    if (v2 == 1 && (*(result + 1840) & 1) == 0)
    {
      v3 = 0;
      v4 = *(result + 104);
      do
      {
        *(result + 672 + v3) = vcvtq_f32_s32(*(v4 + v3));
        v3 += 16;
      }

      while (v3 != 1024);
      *(result + 1840) = 1;
    }
  }

  else
  {
    *(a2 + 408) = 0;
  }

  return result;
}

void CMMConvRGBToRGB::~CMMConvRGBToRGB(CMMConvRGBToRGB *this)
{
  CMMConvRGBToRGB::~CMMConvRGBToRGB(this);

  CMMBase::operator delete(v1);
}

{
  v2 = 0;
  *this = &unk_1F0E07638;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 48);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(v3 + 6) = 0;
    }

    v5 = *(v3 + 10);
    if (v5)
    {
      (*(*v5 + 8))(v5);
      *(v3 + 10) = 0;
    }

    v2 += 8;
  }

  while (v2 != 24);
}

__CFDictionary *CMMConvHLGOOTF::FlattenConversion(CMMConvHLGOOTF *this, const __CFDictionary *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_51;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      HIDWORD(v62) = 0;
      v12 = CFGetTypeID(a2);
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        HIDWORD(v62) = NxMTransformFormatFromValue(Value);
      }

      v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v62 + 4);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v14);
        CFRelease(v15);
      }

      v16 = HIDWORD(v62);
      LODWORD(v62) = 0;
      v17 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLutGridPoints");
      *bytes = 0;
      if (v17 && CFNumberGetValue(v17, kCFNumberSInt32Type, bytes) == 1)
      {
        v22 = *bytes;
        LODWORD(v62) = *bytes;
      }

      else
      {
        v22 = v62;
      }

      if (!v22)
      {
        v23 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v23)
        {
          CFNumberGetValue(v23, kCFNumberSInt32Type, &v62);
        }
      }

      v24 = v62;
      if (!v62)
      {
        v24 = 32;
        LODWORD(v62) = 32;
      }

      v25 = calculate_clut_capacity(v24, 3, 3, 4, v18, v19, v20, v21);
      v26 = CFDataCreateMutable(0, v25);
      if (v26)
      {
        v27 = v26;
        v56 = v16;
        v57 = Mutable;
        CFDataSetLength(v26, v25);
        cf = v27;
        MutableBytePtr = CFDataGetMutableBytePtr(v27);
        if (v25 >> 62)
        {
          v28 = -1;
        }

        else
        {
          v28 = 4 * v25;
        }

        v58 = operator new[](v28, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v58, v62, (v62 * v62 * v62)))
        {
          v31 = v62;
          if (v62)
          {
            v32 = 0;
            v33 = MutableBytePtr + 4;
            v34 = 12 * v62;
            v59 = v34 * v62;
            v35 = v58 + 2;
            do
            {
              v60 = v33;
              v61 = v32;
              v36 = 0;
              v37 = v35;
              do
              {
                v38 = v37;
                v39 = v33;
                v40 = v31;
                do
                {
                  v41 = *(v38 - 2);
                  v42 = *(v38 - 1);
                  v43 = *v38;
                  v38 += 3;
                  *(v39 - 2) = CMMConvHLGOOTF::Reference_HLG_OOTF(this, v41, v42, v43);
                  *(v39 - 1) = v44;
                  *v39 = v45;
                  v39 += 3;
                  --v40;
                }

                while (v40);
                ++v36;
                v33 = (v33 + v34);
                v37 = (v37 + v34);
              }

              while (v36 != v31);
              v32 = v61 + 1;
              v33 = (v60 + v59);
              v35 = (v35 + v59);
            }

            while (v61 + 1 != v31);
          }
        }

        if (v56 == 2)
        {
          Mutable = v57;
          v11 = cf;
        }

        else
        {
          v11 = NxMLUTCreateData(v56, MutableBytePtr, 1, v62, 3, 3, v29, v30);
          CFRelease(cf);
          Mutable = v57;
        }

        if (v58)
        {
          MEMORY[0x19EAE45F0](v58, 0x1000C8052888210);
        }

        v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v62);
        if (v11)
        {
          v47 = v46;
          if (v46)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v46);
            CFRelease(v47);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, &v62);
      }

LABEL_45:
      v11 = Mutable;
      Mutable = 0;
      goto LABEL_46;
    }
  }

  HIDWORD(v62) = 7;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v62 + 4);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v10 = *(this + 6);
  *(&v10 + 1) = *(this + 60);
  *bytes = v10;
  v65 = *(this + 68);
  v66 = 0;
  v11 = CFDataCreate(0, bytes, 28);
  if (!v11)
  {
    goto LABEL_45;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v11);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v11);
LABEL_46:
  CFRelease(v11);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  v48 = *(this + 14);
  v62 = LODWORD(v48);
  if (v48 != 1.0)
  {
    v49 = CFNumberCreate(0, kCFNumberFloat32Type, &v62 + 4);
    v50 = CFNumberCreate(0, kCFNumberFloat32Type, &v62);
    *bytes = v49;
    *&bytes[8] = v50;
    v51 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v49);
    CFRelease(v50);
    if (v51)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v51);
      CFRelease(v51);
    }
  }

LABEL_51:
  v52 = *MEMORY[0x1E69E9840];
  return Mutable;
}

unint64_t calculate_clut_capacity(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = a2;
    v12 = 1;
    do
    {
      v13 = v12;
      v12 *= a1;
      v15 = v12 >= v13 && v12 >= a1;
      CMMThrowExceptionWithLog(v15, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      --v10;
    }

    while (v10);
    if (!v12)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 1;
  }

  v18 = (v12 * (a4 * a3)) >> 64;
  v17 = a4 * a3 * v12;
  if (v18)
  {
    v16 = 4294967246;
  }

  else
  {
    v16 = 0;
  }

LABEL_16:
  CMMThrowExceptionOnError(v16);
  return v17;
}

uint64_t NxMLUTFillWithFloatUniformGridData(float *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 <= 0x100)
  {
    v6 = 3 * a3;
    v7 = 12 * a3;
    v8 = operator new[](12 * a3, MEMORY[0x1E69E5398]);
    v3 = NxMLUTFillWith16BitUniformGridData(v8, a2, 3uLL, v6);
    if (v3)
    {
      v13[0] = v8;
      v13[1] = 1;
      v13[2] = v6;
      v13[3] = 2 * v6;
      v12[0] = a1;
      v12[1] = 1;
      v12[2] = v6;
      v12[3] = v7;
      ColorSync_vImageConvert_16UToF(v13, v12, v9, v10);
    }

    if (v8)
    {
      MEMORY[0x19EAE45F0](v8, 0x1000C80BDFB0063);
    }
  }

  return v3;
}

float CMMConvHLGOOTF::Reference_HLG_OOTF(CMMConvHLGOOTF *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 16) * a3) + (a2 * *(this + 15))) + (a4 * *(this + 17));
  if (a3 <= a4)
  {
    a3 = a4;
  }

  if (a3 < a2)
  {
    a3 = a2;
  }

  v6 = v5 + (a3 * *(this + 18));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  if (v6 >= 0.0)
  {
    v8 = *(this + 13);
  }

  else
  {
    v8 = -*(this + 13);
  }

  return (v8 * powf(v7, *(this + 12))) * a2;
}

unsigned __int16 *repackage_RGB16_to_RGBX16(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result && a3)
  {
    v3 = 0;
    v4 = (result + 2);
    v5 = a2 + 2;
    do
    {
      v6 = 0;
      v7 = v5;
      result = v4;
      do
      {
        v8 = v7;
        v9 = result;
        v10 = a3;
        do
        {
          *(v9 - 2) = *(v8 - 2);
          *(v9 - 1) = *(v8 - 1);
          *v9 = *v8;
          v9[1] = -1;
          v9 += 4;
          v8 += 3 * a3 * a3;
          --v10;
        }

        while (v10);
        ++v6;
        result += 4 * a3;
        v7 += 3 * a3;
      }

      while (v6 != a3);
      ++v3;
      v4 += 8 * a3 * a3;
      v5 += 3;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t repackage_CMYK16_to_RGBX16(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  if (result && a3)
  {
    v3 = 0;
    v4 = a3 * a3 * a3;
    v5 = 8 * v4;
    v6 = (result + 4);
    v7 = a2 + 2;
    v8 = 6 * v4;
    do
    {
      result = 0;
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = 0;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v12;
          v15 = v13;
          v16 = a3;
          do
          {
            *(v15 - 2) = *(v14 - 2);
            *(v15 - 1) = *(v14 - 1);
            *v15 = *v14;
            v15[1] = -1;
            v15 += 4;
            v14 = (v14 + v8);
            --v16;
          }

          while (v16);
          ++v11;
          v13 += 4 * a3;
          v12 += 3 * a3 * a3;
        }

        while (v11 != a3);
        ++result;
        v10 += 4 * a3 * a3;
        v9 += 3 * a3;
      }

      while (result != a3);
      ++v3;
      v6 = (v6 + v5);
      v7 += 3;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t NxMLUTFillWith16BitUniformGridData(unsigned __int16 *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *&v81[2046] = *MEMORY[0x1E69E9840];
  v8 = (a2 > 0x100 || a3 <= 1) && (a2 > 0x400 || a3 != 1);
  result = 0;
  if (!a1 || v8)
  {
    goto LABEL_85;
  }

  bzero(v80, 0x800uLL);
  memset(v78, 0, sizeof(v78));
  if (a3)
  {
    v17 = 1;
    v18 = a3;
    do
    {
      v19 = v17 * a2;
      v21 = v17 * a2 >= v17 && v19 >= a2;
      CMMThrowExceptionWithLog(v21, "Overflow in Power", v11, v12, v13, v14, v15, v16);
      v17 = v19;
      --v18;
    }

    while (v18);
    if (!a2)
    {
      goto LABEL_55;
    }

LABEL_24:
    v22 = 0;
    *&v23 = (a2 - 1);
    v24 = vdupq_n_s64(a2 - 1);
    v25 = vdupq_lane_s64(v23, 0);
    v26 = xmmword_19A96E050;
    v27 = v81;
    v28 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v29 = vdupq_n_s64(8uLL);
    __asm { FMOV            V17.2D, #0.5 }

    v33.i64[0] = 0xFFFF0000FFFFLL;
    v33.i64[1] = 0xFFFF0000FFFFLL;
    v34 = xmmword_19A96E040;
    v35 = xmmword_19A96E030;
    v36 = xmmword_19A96E020;
    do
    {
      v37 = vdupq_n_s64(v22);
      v38 = vorrq_s8(v37, xmmword_19A96E030);
      v39 = vorrq_s8(v37, xmmword_19A96E040);
      v40 = vorrq_s8(v37, xmmword_19A96E020);
      v41 = vmovn_s64(vcgeq_u64(v24, v26));
      v42 = vuzp1_s16(v41, v23);
      v43 = v22;
      v44 = v22 + 1;
      v45.f64[0] = v43 / *&v23;
      v45.f64[1] = v44 / *&v23;
      v46 = vmlaq_f64(_Q17, v28, v45);
      v47 = vmlaq_f64(_Q17, v28, vdivq_f64(vcvtq_f64_u64(v39), v25));
      v48 = vmlaq_f64(_Q17, v28, vdivq_f64(vcvtq_f64_u64(v38), v25));
      v49 = vmlaq_f64(_Q17, v28, vdivq_f64(vcvtq_f64_u64(v40), v25));
      v50 = v49.f64[1];
      if (v49.f64[1] >= 0xFFFF)
      {
        v50 = 0xFFFF;
      }

      if (v49.f64[0] >= 0xFFFF)
      {
        v51 = 0xFFFF;
      }

      else
      {
        v51 = v49.f64[0];
      }

      v52 = v48.f64[1];
      if (v48.f64[1] >= 0xFFFF)
      {
        v52 = 0xFFFF;
      }

      v53 = v48.f64[0];
      if (v48.f64[0] >= 0xFFFF)
      {
        v53 = 0xFFFF;
      }

      v54 = v46.f64[1];
      v55 = v46.f64[0];
      if (v46.f64[1] >= 0xFFFF)
      {
        v54 = 0xFFFF;
      }

      if (v55 >= 0xFFFF)
      {
        v55 = 0xFFFF;
      }

      v56.i64[0] = __PAIR64__(v54, v55);
      v57 = v47.f64[1];
      v58 = v47.f64[0];
      if (v47.f64[1] >= 0xFFFF)
      {
        v57 = 0xFFFF;
      }

      if (v58 >= 0xFFFF)
      {
        v58 = 0xFFFF;
      }

      v59 = vuzp1_s8(v42, v23).u8[0];
      v56.i64[1] = __PAIR64__(v57, v58);
      v60 = vandq_s8(v56, v33);
      if (v59)
      {
        *(v27 - 1) = v60.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v41, v23), v23).i8[1])
      {
        *v27 = v60.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(v23, vmovn_s64(vcgeq_u64(v24, *&v34))), v23).i8[2])
      {
        v80[v39.i64[0]] = v60.i16[4];
        v80[v39.i64[1]] = v60.i16[6];
      }

      v61.i64[0] = __PAIR64__(v52, v53);
      v61.i64[1] = __PAIR64__(v50, v51);
      v62 = vandq_s8(v61, v33);
      v63 = vmovn_s64(vcgeq_u64(v24, v35));
      if (vuzp1_s8(v23, vuzp1_s16(v63, v23)).i32[1])
      {
        v80[v38.i64[0]] = v62.i16[0];
      }

      if (vuzp1_s8(v23, vuzp1_s16(v63, v23)).i8[5])
      {
        v80[v38.i64[1]] = v62.i16[2];
      }

      if (vuzp1_s8(v23, vuzp1_s16(v23, vmovn_s64(vcgeq_u64(v24, *&v36)))).i8[6])
      {
        v80[v40.i64[0]] = v62.i16[4];
        v80[v40.i64[1]] = v62.i16[6];
      }

      v35 = vaddq_s64(v35, v29);
      v34 = vaddq_s64(v34, v29);
      v26 = vaddq_s64(v26, v29);
      v36 = vaddq_s64(v36, v29);
      v27 += 8;
      v22 = v44 + 7;
    }

    while (v22 != ((a2 + 7) & 0xFFFFFFFFFFFFFFF8));
    goto LABEL_55;
  }

  v19 = 1;
  if (a2)
  {
    goto LABEL_24;
  }

LABEL_55:
  if (a3)
  {
    v64 = 0;
    do
    {
      if (v64)
      {
        v65 = 1;
        v66 = v64;
        do
        {
          v67 = v65 * a2;
          v69 = v65 * a2 >= v65 && v67 >= a2;
          CMMThrowExceptionWithLog(v69, "Overflow in Power", v11, v12, v13, v14, v15, v16);
          v65 = v67;
          --v66;
        }

        while (v66);
      }

      else
      {
        v67 = 1;
      }

      *(v78 + v64++) = v67;
    }

    while (v64 != a3);
  }

  if (!v19)
  {
LABEL_83:
    result = 1;
    goto LABEL_85;
  }

  v70 = 0;
  v71 = 0;
  while (1)
  {
    memset(v79, 0, sizeof(v79));
    if (a3 == 1)
    {
      break;
    }

    v72 = a3 - 1;
    do
    {
      v73 = *(v78 + v72);
      *(v79 + v72) = v70 / v73;
      v70 %= v73;
      --v72;
    }

    while (v72);
    if (v70 < a2)
    {
      goto LABEL_78;
    }

    if (a3)
    {
      goto LABEL_79;
    }

LABEL_82:
    v70 = ++v71;
    if (v19 <= v71)
    {
      goto LABEL_83;
    }
  }

  if (v70 >= a2)
  {
    goto LABEL_84;
  }

LABEL_78:
  LODWORD(v79[0]) = v70;
  if (!a3)
  {
    goto LABEL_82;
  }

LABEL_79:
  v74 = 0;
  v75 = a3 + a3 * v71 - 1;
  v76 = 1;
  while (v75 < a4)
  {
    a1[v75] = v80[*(v79 + v74)];
    v74 = v76;
    --v75;
    ++v76;
    if (v74 >= a3)
    {
      goto LABEL_82;
    }
  }

LABEL_84:
  result = 0;
LABEL_85:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMMConvHLGOOTF::GetTransformType(CMMConvHLGOOTF *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t CMMConvHLGOOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 56);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 56);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 56);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvHLGOOTF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvHLGOOTF::Convert(CMMConvHLGOOTF *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvHLGOOTF::Reference_HLG_OOTF(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvHLGOOTF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvInvHLGOOTF::FlattenConversion(CMMConvInvHLGOOTF *this, const __CFDictionary *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_51;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.InvHLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      HIDWORD(v62) = 2;
      v12 = CFGetTypeID(a2);
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        HIDWORD(v62) = NxMTransformFormatFromValue(Value);
      }

      v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v62 + 4);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v14);
        CFRelease(v15);
      }

      v16 = HIDWORD(v62);
      LODWORD(v62) = 0;
      v17 = CFDictionaryGetValue(a2, @"com.apple.cmm.InvHLGOOTF3DLutGridPoints");
      *bytes = 0;
      if (v17 && CFNumberGetValue(v17, kCFNumberSInt32Type, bytes) == 1)
      {
        v22 = *bytes;
        LODWORD(v62) = *bytes;
      }

      else
      {
        v22 = v62;
      }

      if (!v22)
      {
        v23 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v23)
        {
          CFNumberGetValue(v23, kCFNumberSInt32Type, &v62);
        }
      }

      v24 = v62;
      if (!v62)
      {
        v24 = 32;
        LODWORD(v62) = 32;
      }

      v25 = calculate_clut_capacity(v24, 3, 3, 4, v18, v19, v20, v21);
      v26 = CFDataCreateMutable(0, v25);
      if (v26)
      {
        v27 = v26;
        v56 = v16;
        v57 = Mutable;
        CFDataSetLength(v26, v25);
        cf = v27;
        MutableBytePtr = CFDataGetMutableBytePtr(v27);
        if (v25 >> 62)
        {
          v28 = -1;
        }

        else
        {
          v28 = 4 * v25;
        }

        v58 = operator new[](v28, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v58, v62, (v62 * v62 * v62)))
        {
          v31 = v62;
          if (v62)
          {
            v32 = 0;
            v33 = MutableBytePtr + 4;
            v34 = 12 * v62;
            v59 = v34 * v62;
            v35 = v58 + 2;
            do
            {
              v60 = v33;
              v61 = v32;
              v36 = 0;
              v37 = v35;
              do
              {
                v38 = v37;
                v39 = v33;
                v40 = v31;
                do
                {
                  v41 = *(v38 - 2);
                  v42 = *(v38 - 1);
                  v43 = *v38;
                  v38 += 3;
                  *(v39 - 2) = CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(this, v41, v42, v43);
                  *(v39 - 1) = v44;
                  *v39 = v45;
                  v39 += 3;
                  --v40;
                }

                while (v40);
                ++v36;
                v33 = (v33 + v34);
                v37 = (v37 + v34);
              }

              while (v36 != v31);
              v32 = v61 + 1;
              v33 = (v60 + v59);
              v35 = (v35 + v59);
            }

            while (v61 + 1 != v31);
          }
        }

        if (v56 == 2)
        {
          Mutable = v57;
          v11 = cf;
        }

        else
        {
          v11 = NxMLUTCreateData(v56, MutableBytePtr, 1, v62, 3, 3, v29, v30);
          CFRelease(cf);
          Mutable = v57;
        }

        if (v58)
        {
          MEMORY[0x19EAE45F0](v58, 0x1000C8052888210);
        }

        v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v62);
        if (v11)
        {
          v47 = v46;
          if (v46)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v46);
            CFRelease(v47);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, &v62);
      }

LABEL_45:
      v11 = Mutable;
      Mutable = 0;
      goto LABEL_46;
    }
  }

  HIDWORD(v62) = 7;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v62 + 4);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v10 = *(this + 76);
  *(&v10 + 1) = *(this + 60);
  *bytes = v10;
  v65 = *(this + 68);
  v66 = 1;
  v11 = CFDataCreate(0, bytes, 28);
  if (!v11)
  {
    goto LABEL_45;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v11);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v11);
LABEL_46:
  CFRelease(v11);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  *&v48 = 1.0 / *(this + 21);
  v62 = v48;
  if (*&v48 != 1.0)
  {
    v49 = CFNumberCreate(0, kCFNumberFloat32Type, &v62 + 4);
    v50 = CFNumberCreate(0, kCFNumberFloat32Type, &v62);
    *bytes = v49;
    *&bytes[8] = v50;
    v51 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v49);
    CFRelease(v50);
    if (v51)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v51);
      CFRelease(v51);
    }
  }

LABEL_51:
  v52 = *MEMORY[0x1E69E9840];
  return Mutable;
}

float CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(CMMConvInvHLGOOTF *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 16) * a3) + (a2 * *(this + 15))) + (a4 * *(this + 17));
  if (a3 <= a4)
  {
    a3 = a4;
  }

  if (a3 < a2)
  {
    a3 = a2;
  }

  v6 = v5 + (a3 * *(this + 18));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  if (v6 >= 0.0)
  {
    v8 = *(this + 20);
  }

  else
  {
    v8 = -*(this + 20);
  }

  return (v8 * powf(v7, *(this + 19))) * a2;
}

uint64_t CMMConvInvHLGOOTF::GetTransformType(CMMConvInvHLGOOTF *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.InvHLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t CMMConvInvHLGOOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = 1.0 / *(result + 84);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      v8 = v5[2];
      if (*v5 < 0.0)
      {
        v7 = 0.0;
      }

      *v5 = v7;
      v9 = 1.0 / *(result + 84);
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      v5[1] = v10;
      v11 = 1.0 / *(result + 84);
      if (v8 <= v11)
      {
        v11 = v8;
      }

      if (v8 >= 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0.0;
      }

      v5[2] = v12;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvInvHLGOOTF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = vdup_n_s32(0x447A0000u);
    do
    {
      v7 = v5->f32[v4];
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, v6), v6, *a2), vcltz_f32(*a2));
      if (v7 <= 1000.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 1000.0;
      }

      if (v7 >= 0.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0.0;
      }

      v5->f32[v4] = v9;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvInvHLGOOTF::Convert(CMMConvInvHLGOOTF *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

__CFDictionary *CMMConvPQEETF::FlattenConversion(CMMConvPQEETF *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (*(this + 60) != 1)
  {
    v28 = 9;
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v18);
      CFRelease(v19);
    }

    *v21 = xmmword_19A96E230;
    v22 = 1100316672;
    v23 = *(this + 1);
    v24 = *(this + 4);
    v25 = *(this + 10);
    v26 = 0;
    v27 = *(this + 44);
    v15 = CFDataCreate(0, v21, 72);
    if (v15)
    {
      goto LABEL_16;
    }

LABEL_17:
    v15 = Mutable;
    Mutable = 0;
    goto LABEL_18;
  }

  v21[0] = 2;
  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
      v21[0] = NxMTransformFormatFromValue(Value);
    }
  }

  v9 = CFNumberCreate(0, kCFNumberSInt32Type, v21);
  if (v9)
  {
    v14 = v9;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v9);
    CFRelease(v14);
  }

  v28 = 0;
  v15 = CMMConvPQEETFBase::create_3DLUT(this, v21[0], a2, &v28, v10, v11, v12, v13);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  if (!v15)
  {
    goto LABEL_17;
  }

  v17 = v16;
  if (v16)
  {
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v16);
    CFRelease(v17);
  }

LABEL_16:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v15);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v15);
LABEL_18:
  CFRelease(v15);
  if (*(this + 98) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo((this + 64), Mutable);
  return Mutable;
}

__CFData *CMMConvPQEETFBase::create_3DLUT(float *a1, int a2, CFDictionaryRef theDict, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEETF3DLutGridPoints");
    valuePtr = 0;
    if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
    {
      v13 = valuePtr;
      *a4 = valuePtr;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = *a4;
      if (*a4)
      {
        goto LABEL_12;
      }
    }

    v14 = CFDictionaryGetValue(theDict, kColorSyncConversionGridPoints);
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt32Type, a4);
    }
  }

  else
  {
    valuePtr = 0;
  }

  v13 = *a4;
  if (!*a4)
  {
    v13 = 32;
    *a4 = 32;
  }

LABEL_12:
  v15 = calculate_clut_capacity(v13, 3, 3, 4, a5, a6, a7, a8);
  Mutable = CFDataCreateMutable(0, v15);
  v17 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v15);
    MutableBytePtr = CFDataGetMutableBytePtr(v17);
    if (v15 >> 62)
    {
      v19 = -1;
    }

    else
    {
      v19 = 4 * v15;
    }

    v20 = operator new[](v19, MEMORY[0x1E69E5398]);
    if (NxMLUTFillWithFloatUniformGridData(v20, *a4, *a4 * *a4 * *a4))
    {
      v50 = MutableBytePtr;
      v51 = v20;
      cf = v17;
      v49 = a2;
      v23 = *a4;
      if (v23)
      {
        v24 = 0;
        v25 = (MutableBytePtr + 8);
        v26 = 12 * v23;
        v52 = 12 * v23 * v23;
        v27 = v20 + 2;
        do
        {
          v53 = v25;
          v54 = v24;
          v28 = 0;
          v29 = v27;
          do
          {
            v30 = v29;
            v31 = v25;
            v32 = v23;
            do
            {
              v33 = *(v30 - 2) * 10000.0;
              v34 = *(v30 - 1) * 10000.0;
              v35 = *v30;
              v30 += 3;
              v36 = CMMConvPQEETFBase::ToneMap(a1, v33, v34, v35 * 10000.0);
              v39 = a1[3];
              if (v36 <= v39)
              {
                v40 = v36;
              }

              else
              {
                v40 = a1[3];
              }

              if (v36 >= 0.0)
              {
                v41 = v40;
              }

              else
              {
                v41 = 0.0;
              }

              *(v31 - 2) = v41 / v39;
              v42 = a1[3];
              if (v37 <= v42)
              {
                v43 = v37;
              }

              else
              {
                v43 = a1[3];
              }

              if (v37 >= 0.0)
              {
                v44 = v43;
              }

              else
              {
                v44 = 0.0;
              }

              *(v31 - 1) = v44 / v42;
              v45 = a1[3];
              if (v38 <= v45)
              {
                v46 = v38;
              }

              else
              {
                v46 = a1[3];
              }

              if (v38 < 0.0)
              {
                v46 = 0.0;
              }

              *v31 = v46 / v45;
              v31 += 3;
              --v32;
            }

            while (v32);
            ++v28;
            v25 = (v25 + v26);
            v29 = (v29 + v26);
          }

          while (v28 != v23);
          v24 = v54 + 1;
          v25 = (v53 + v52);
          v27 = (v27 + v52);
        }

        while (v54 + 1 != v23);
      }

      if (v49 == 2)
      {
        v17 = cf;
      }

      else
      {
        v17 = NxMLUTCreateData(v49, v50, 1, v23, 3, 3, v21, v22);
        CFRelease(cf);
      }

      v20 = v51;
    }

    if (v20)
    {
      MEMORY[0x19EAE45F0](v20, 0x1000C8052888210);
    }
  }

  return v17;
}

float CMMConvPQEETFBase::ToneMap(CMMConvPQEETFBase *this, float a2, float a3, float a4)
{
  v4 = a2;
  v5 = ((*(this + 12) * a3) + (*(this + 11) * a2)) + (*(this + 13) * a4);
  if (v5 != 0.0)
  {
    v7 = *(this + 10);
    v8 = powf(fabsf(v5 / v7), 0.1593);
    v9 = powf(((v8 * 18.852) + 0.83594) / ((v8 * 18.688) + 1.0), 78.844);
    v10 = -v9;
    if ((v5 / v7) >= 0.0)
    {
      v10 = v9;
    }

    v11 = *(this + 5);
    v12 = v10 - v11;
    v13 = *(this + 4) - v11;
    v14 = v12 / v13;
    v15 = *(this + 8);
    if (v14 >= v15)
    {
      v16 = (v14 - v15) * *(this + 9);
      v14 = (1.0 - v15) * (v16 - ((v16 * (v16 + v16)) - ((v16 * v16) * v16))) + (-((v16 * (v16 * 3.0)) - ((v16 * (v16 + v16)) * v16)) + 1.0) * v15 + (*(this + 6) * ((v16 * (v16 * 3.0)) + ((v16 * (v16 * -2.0)) * v16)));
    }

    v17 = *(this + 7);
    if (v14 >= 0.0)
    {
      if (v14 >= 1.0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v14 + (((1.0 - v14) * ((1.0 - v14) * (v17 * (1.0 - v14)))) * (1.0 - v14));
      }
    }

    v18 = v11 + (v17 * v13);
    v19 = powf(fabsf(v18), 0.012683);
    v20 = powf(fmaxf(v19 + -0.83594, 0.0) / ((v19 * -18.688) + 18.852), 6.2774);
    if (v18 < 0.0)
    {
      v20 = -v20;
    }

    return ((v7 * v20) / v5) * v4;
  }

  return v4;
}

void non-virtual thunk toCMMConvPQEETF::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void non-virtual thunk toCMMConvPQEETF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvPQEETF::Convert(CMMConvPQEETFBase *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvPQEETFBase::ToneMap(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void non-virtual thunk toCMMConvPQEETF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

void CMMConvPQEETF::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvPQEETF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvPQEETF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvHLGSceneReferredMapping::FlattenConversion(CMMConvHLGSceneReferredMapping *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if ((*(this + 48) & 1) == 0)
  {
    v56 = 8;
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v56);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v17);
      CFRelease(v18);
    }

    *&v54[1] = *(this + 52);
    v55 = *(this + 68);
    v19 = CFDataCreate(0, &v54[1], 24);
    if (v19)
    {
      goto LABEL_46;
    }

LABEL_47:
    v19 = Mutable;
    Mutable = 0;
    goto LABEL_48;
  }

  v56 = 0;
  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
      v56 = NxMTransformFormatFromValue(Value);
    }
  }

  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v56);
  if (v9)
  {
    v10 = v9;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v9);
    CFRelease(v10);
  }

  v11 = v56;
  v54[0] = 0;
  if (a2)
  {
    v12 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGSRLS3DLutGridPoints");
    v54[1] = 0;
    if (v12)
    {
      if (CFNumberGetValue(v12, kCFNumberSInt32Type, &v54[1]) == 1)
      {
        v54[0] = v54[1];
        if (v54[1])
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v54[1] = 0;
  }

  v20 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberSInt32Type, v54);
  }

LABEL_23:
  v21 = v54[0];
  if (!v54[0])
  {
    v21 = 32;
    v54[0] = 32;
  }

  v22 = calculate_clut_capacity(v21, 3, 3, 4, v13, v14, v15, v16);
  v23 = CFDataCreateMutable(0, v22);
  if (!v23)
  {
    CFNumberCreate(0, kCFNumberSInt32Type, v54);
    goto LABEL_47;
  }

  v24 = v23;
  v48 = v11;
  v49 = Mutable;
  CFDataSetLength(v23, v22);
  cf = v24;
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  if (v22 >> 62)
  {
    v25 = -1;
  }

  else
  {
    v25 = 4 * v22;
  }

  v50 = operator new[](v25, MEMORY[0x1E69E5398]);
  if (NxMLUTFillWithFloatUniformGridData(v50, v54[0], (v54[0] * v54[0] * v54[0])))
  {
    v28 = v54[0];
    if (v54[0])
    {
      v29 = 0;
      v30 = MutableBytePtr + 4;
      v31 = 12 * v54[0];
      v51 = v31 * v54[0];
      v32 = v50 + 2;
      do
      {
        v52 = v30;
        v53 = v29;
        v33 = 0;
        v34 = v32;
        do
        {
          v35 = v34;
          v36 = v30;
          v37 = v28;
          do
          {
            v38 = *(v35 - 2);
            v39 = *(v35 - 1);
            v40 = *v35;
            v35 += 3;
            *(v36 - 2) = CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(this, v38, v39, v40);
            *(v36 - 1) = v41;
            *v36 = v42;
            v36 += 3;
            --v37;
          }

          while (v37);
          ++v33;
          v30 = (v30 + v31);
          v34 = (v34 + v31);
        }

        while (v33 != v28);
        v29 = v53 + 1;
        v30 = (v52 + v51);
        v32 = (v32 + v51);
      }

      while (v53 + 1 != v28);
    }
  }

  if (v48 == 2)
  {
    Mutable = v49;
    v19 = cf;
  }

  else
  {
    v19 = NxMLUTCreateData(v48, MutableBytePtr, 1, v54[0], 3, 3, v26, v27);
    CFRelease(cf);
    Mutable = v49;
  }

  if (v50)
  {
    MEMORY[0x19EAE45F0](v50, 0x1000C8052888210);
  }

  v43 = CFNumberCreate(0, kCFNumberSInt32Type, v54);
  if (!v19)
  {
    goto LABEL_47;
  }

  v44 = v43;
  if (v43)
  {
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v43);
    CFRelease(v44);
  }

LABEL_46:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v19);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v19);
LABEL_48:
  CFRelease(v19);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

float CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(CMMConvHLGSceneReferredMapping *this, float a2, float a3, float a4)
{
  v18 = *(this + 16);
  v19 = *(this + 15);
  if (a3 <= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (v4 < a2)
  {
    v4 = a2;
  }

  v17 = v4;
  v6 = *(this + 13);
  v5 = *(this + 14);
  v7 = v5 * a2;
  v8 = v5 * a3;
  v9 = v5 * a4;
  v11 = *(this + 17);
  v10 = *(this + 18);
  v12 = powf(v5 * a2, v6);
  v13 = powf(v8, v6);
  v14 = (((v18 * v13) + (v19 * v12)) + (v11 * powf(v9, v6))) + (v17 * v10);
  if (v14 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = ((((v18 * v8) + (v7 * v19)) + (v9 * v11)) + (v17 * v10)) / v14;
  }

  return v12 * v15;
}

uint64_t CMMConvHLGSceneReferredMapping::GetTransformType(CMMConvHLGSceneReferredMapping *this, const __CFDictionary *a2)
{
  if (*(this + 48))
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

void CMMConvHLGSceneReferredMapping::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvHLGSceneReferredMapping::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvHLGSceneReferredMapping::Convert(CMMConvHLGSceneReferredMapping *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvHLGSceneReferredMapping::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvLuminanceScaling::FlattenConversion(CMMConvLuminanceScaling *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      v57 = 0;
      v11 = CFGetTypeID(a2);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        v57 = NxMTransformFormatFromValue(Value);
      }

      v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      if (v13)
      {
        v14 = v13;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v13);
        CFRelease(v14);
      }

      v15 = v57;
      *v55 = 0;
      v16 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLutGridPoints");
      if (!v16 || CFNumberGetValue(v16, kCFNumberSInt32Type, &v55[4]) != 1 || (v21 = *&v55[4], (*v55 = *&v55[4]) == 0))
      {
        v22 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v22)
        {
          CFNumberGetValue(v22, kCFNumberSInt32Type, v55);
        }

        v21 = *v55;
        if (!*v55)
        {
          v21 = 32;
          *v55 = 32;
        }
      }

      v23 = calculate_clut_capacity(v21, 3, 3, 4, v17, v18, v19, v20);
      v24 = CFDataCreateMutable(0, v23);
      if (v24)
      {
        v25 = v24;
        v48 = v15;
        v50 = Mutable;
        CFDataSetLength(v24, v23);
        cf = v25;
        MutableBytePtr = CFDataGetMutableBytePtr(v25);
        if (v23 >> 62)
        {
          v26 = -1;
        }

        else
        {
          v26 = 4 * v23;
        }

        v51 = operator new[](v26, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v51, *v55, (*v55 * *v55 * *v55)))
        {
          v29 = *v55;
          if (*v55)
          {
            v30 = 0;
            v31 = MutableBytePtr + 4;
            v32 = 12 * *v55;
            v52 = v32 * *v55;
            v33 = v51 + 2;
            do
            {
              v53 = v31;
              v54 = v30;
              v34 = 0;
              v35 = v33;
              do
              {
                v36 = v35;
                v37 = v31;
                v38 = v29;
                do
                {
                  v39 = *(v36 - 2);
                  v40 = *(v36 - 1);
                  v41 = *v36;
                  v36 += 3;
                  *(v37 - 2) = CMMConvLuminanceScaling::scale_RGB(this, v39, v40, v41);
                  *(v37 - 1) = v42;
                  *v37 = v43;
                  v37 += 3;
                  --v38;
                }

                while (v38);
                ++v34;
                v31 = (v31 + v32);
                v35 = (v35 + v32);
              }

              while (v34 != v29);
              v30 = v54 + 1;
              v31 = (v53 + v52);
              v33 = (v33 + v52);
            }

            while (v54 + 1 != v29);
          }
        }

        if (v48 == 2)
        {
          v10 = cf;
          Mutable = v50;
        }

        else
        {
          v10 = NxMLUTCreateData(v48, MutableBytePtr, 1, *v55, 3, 3, v27, v28);
          CFRelease(cf);
          Mutable = v50;
        }

        if (v51)
        {
          MEMORY[0x19EAE45F0](v51, 0x1000C8052888210);
        }

        v44 = CFNumberCreate(0, kCFNumberSInt32Type, v55);
        if (v10)
        {
          v45 = v44;
          if (v44)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v44);
            CFRelease(v45);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, v55);
      }

LABEL_43:
      v10 = Mutable;
      Mutable = 0;
      goto LABEL_44;
    }
  }

  v57 = 12;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v55[4] = *(this + 3);
  v56 = *(this + 16);
  v10 = CFDataCreate(0, &v55[4], 20);
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v10);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v10);
LABEL_44:
  CFRelease(v10);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

float CMMConvLuminanceScaling::scale_RGB(CMMConvLuminanceScaling *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 14) * a3) + (a2 * *(this + 13))) + (a4 * *(this + 15));
  if (a3 > a4)
  {
    a4 = a3;
  }

  if (a4 < a2)
  {
    a4 = a2;
  }

  v6 = v5 + (a4 * *(this + 16));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  v8 = powf(v7, *(this + 12));
  if (v6 < 0.0)
  {
    v8 = -v8;
  }

  return (v8 / v7) * a2;
}

uint64_t CMMConvLuminanceScaling::GetTransformType(CMMConvLuminanceScaling *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

void CMMConvLuminanceScaling::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

void CMMConvLuminanceScaling::Convert(CMMConvLuminanceScaling *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvLuminanceScaling::scale_RGB(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvLuminanceScaling::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvRWToneMapping::FlattenConversion(CMMConvRWToneMapping *this, const __CFDictionary *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 3;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v4);
      CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v5);
      CFRelease(v5);
    }

    v23 = 10;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v6);
      CFRelease(v7);
    }

    v8 = *(this + 12);
    if (v8 == 1)
    {
      goto LABEL_12;
    }

    if (v8)
    {
      *bytes = 2;
      LODWORD(v11) = *(this + 13);
      DWORD1(v11) = *(this + 15);
      *(&v11 + 1) = *(this + 8);
      *&bytes[4] = v11;
      v26 = *(this + 72);
      v27 = *(this + 88);
      v28 = *(this + 104);
      v29 = *(this + 30);
      v10 = 72;
    }

    else
    {
      LODWORD(v9) = *(this + 31);
      DWORD1(v9) = *(this + 33);
      *(&v9 + 1) = *(this + 140);
      *bytes = v9;
      *&bytes[16] = 0;
      v26 = *(this + 148);
      LODWORD(v27) = *(this + 41);
      v10 = 40;
    }

    v12 = CFDataCreate(0, bytes, v10);
    if (!v12)
    {
LABEL_12:
      v12 = Mutable;
      Mutable = 0;
    }

    else
    {
      CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v12);
      CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v12);
    }

    CFRelease(v12);
    if (*(this + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
    }

    CMMConvNode::AddClampingInfo(this, Mutable);
    v13 = *(this + 17);
    if (v13 > 1.0)
    {
      v22 = 0;
      v21 = v13;
      v14 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, &v21);
      *bytes = v14;
      *&bytes[8] = v15;
      v16 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v14);
      CFRelease(v15);
      if (v16)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v16);
        CFRelease(v16);
      }
    }

    if (*(this + 12) >= 2u)
    {
      valuePtr = 2;
      v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormatVersion, v17);
        CFRelease(v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMMConvRWToneMapping::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 68);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 68);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 68);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

uint64_t CMMConvRWToneMapping::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 56);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 56);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 56);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvRWToneMapping::Convert(float *a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a12 * a11;
  if (a12 * a11)
  {
    v14 = a2;
    v16 = 0;
    v17 = a2 + 1;
    v18 = 4 * a11;
    do
    {
      v19 = a1[13];
      a9.n128_u64[0] = vmul_n_f32(*v14, v19);
      v20 = v19 * v17->f32[v16];
      v21 = a9.n128_f32[1];
      if (a9.n128_f32[0] > a9.n128_f32[1])
      {
        v21 = a9.n128_f32[0];
      }

      if (v21 <= v20)
      {
        v21 = v19 * v17->f32[v16];
      }

      if (v21 <= a1[30])
      {
        v22 = a1[30];
      }

      else
      {
        v22 = v21;
      }

      if (a1[21] >= v22)
      {
        v24 = v22 * a1[15];
      }

      else if (a1[16] <= v22)
      {
        v24 = a1[18] + (a1[19] * v22);
      }

      else
      {
        v23 = a1[28] * (a1[27] + sqrtf(a1[26] + (a1[25] * v22)));
        v24 = ((a1[23] * (v23 * ((1.0 - v23) + (1.0 - v23)))) + (((1.0 - v23) * (1.0 - v23)) * a1[22])) + ((v23 * v23) * a1[24]);
      }

      v25 = a1[20];
      if (v25 != 1.0)
      {
        v28 = a9;
        v26 = powf(v24 * a1[29], v25);
        a9 = v28;
        v24 = a1[17] * v26;
      }

      v27 = v24 / v22;
      *v14 = vmul_n_f32(a9.n128_u64[0], v27);
      v17->f32[v16] = v20 * v27;
      v16 += a11;
      v14 = (v14 + v18);
    }

    while (v16 < v12);
  }
}

void CMMConvRWToneMapping::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvFlexGTCLumaScaling::FlattenConversion(CMMConvFlexGTCLumaScaling *this, const __CFDictionary *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 3;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v4);
      CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v5);
      CFRelease(v5);
    }

    v20 = 11;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v20);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v6);
      CFRelease(v7);
    }

    v8 = *(*(this + 10) + 32);
    v9 = malloc_type_calloc(1uLL, v8 + 40, 0x10000400A747E1EuLL);
    *v9 = *(this + 6);
    *(v9 + 2) = *(this + 15);
    *(v9 + 3) = *(this + 16);
    *(v9 + 4) = *(this + 17);
    *(v9 + 5) = *(this + 18);
    *(v9 + 6) = *(this + 19);
    v10 = *(this + 10);
    *(v9 + 28) = v10[4] >> 2;
    v11 = CMMTable::UInt8Data(v10[2], v10[3]);
    memcpy(v9 + 36, v11, *(*(this + 10) + 32));
    v12 = CFDataCreate(0, v9, v8 + 40);
    free(v9);
    if (v12)
    {
      CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v12);
      CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v12);
    }

    else
    {
      v12 = Mutable;
      Mutable = 0;
    }

    CFRelease(v12);
    if (*(this + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
    }

    CMMConvNode::AddClampingInfo(this, Mutable);
    v19 = 0;
    v18 = *(this + 13);
    if (v18 != 1.0)
    {
      v13 = CFNumberCreate(0, kCFNumberFloat32Type, &v19);
      v14 = CFNumberCreate(0, kCFNumberFloat32Type, &v18);
      values[0] = v13;
      values[1] = v14;
      v15 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v13);
      CFRelease(v14);
      if (v15)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v15);
        CFRelease(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMMConvFlexGTCLumaScaling::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 52);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 52);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 52);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvFlexGTCLumaScaling::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t CMMConvFlexGTCLumaScaling::Convert(uint64_t result, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v7 = a2;
    v8 = result;
    v9 = 0;
    v10 = *(result + 80);
    v11 = a2 + 1;
    v12 = 4 * a4;
    do
    {
      v13 = v11->f32[v9];
      v25 = *v7;
      v14 = (vmuls_lane_f32(*(v8 + 64), *v7, 1) + (COERCE_FLOAT(*v7) * *(v8 + 60))) + (v13 * *(v8 + 68));
      if (COERCE_FLOAT(HIDWORD(*v7)) <= v13)
      {
        v15 = v11->f32[v9];
      }

      else
      {
        LODWORD(v15) = HIDWORD(*v7);
      }

      if (v15 < COERCE_FLOAT(*v7))
      {
        LODWORD(v15) = *v7->f32;
      }

      v16 = v14 + (v15 * *(v8 + 72));
      v17 = fmaxf(fabsf(v16), 1.1755e-38);
      result = CMMTable::UInt8Data(v10[2], v10[3]);
      v10 = *(v8 + 80);
      v18 = (v10[4] >> 2) - 1;
      v19 = v18;
      if ((v17 * v18) <= v18)
      {
        v19 = v17 * v18;
      }

      v20 = v19;
      v21 = v19 - v19;
      if (v18 >= v20 + 1)
      {
        v18 = v20 + 1;
      }

      v22 = *(result + 4 * v20) + ((*(result + 4 * v18) - *(result + 4 * v20)) * v21);
      v23 = -v22;
      if (v16 >= 0.0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 76) * v23;
      *v7 = vmul_n_f32(v25, v24);
      v11->f32[v9] = v24 * v13;
      v9 += a4;
      v7 = (v7 + v12);
    }

    while (v9 < v5);
  }

  return result;
}

void CMMConvFlexGTCLumaScaling::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

uint64_t CMMTextDescTag::CMMTextDescTag(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 16) = 0;
  if (a5)
  {
    *(a5 + 16) = a1;
  }

  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E08CA0;
  if (a4 >= 0xD)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return a1;
}

void *CMMTag::GetWholeCloth(void *this, unsigned __int8 *__dst, unint64_t *a3)
{
  v3 = this[5];
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    v6 = -171;
LABEL_11:
    *exception = v6;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (!__dst)
  {
    *a3 = this[4];
    return this;
  }

  v4 = *a3;
  if (v4 != this[4])
  {
LABEL_9:
    exception = __cxa_allocate_exception(4uLL);
    v6 = -50;
    goto LABEL_11;
  }

  return memcpy(__dst, v3, v4);
}

uint64_t CMMTag::GetTagType(CMMTag *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  return bswap32(*v1);
}

void CMMSignatureTag::~CMMSignatureTag(CMMSignatureTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMHLGOOTFTag::~CMMHLGOOTFTag(CMMHLGOOTFTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMHLGCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 541543496)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(*(v3 + 40) + 8) == 1728774144)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

uint64_t CMMHLGCurveTag::MakeInvertedTRC(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 60) = a3;
  {
    CMMMemMgr::CMMMemMgr(&CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 60);
  if (CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *(a1 + 64);
    dispatch_once(&CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_273);
    v8 = v15;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  *a2 = xmmword_19A96E250;
  *(a2 + 24) = 0;
  *(a2 + 28) = v8;
  *(a2 + 44) = v9;
  *(a2 + 48) = 0;
  v10 = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  v11 = *(v10 + 8);
  if (v11)
  {
    *(v10 + 8) = v11 + 1;
  }

LABEL_6:
  v12 = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table;
  v13 = *(CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v13)
  {
    *(CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v13 + 1;
  }

  *a5 = CMMHLGCurveTag::copy_hlg_curve_table(a1, 0);
  return v12;
}

uint64_t CMMHLGCurveTag::copy_hlg_curve_table(uint64_t a1, uint64_t a2)
{
  {
    CMMMemMgr::CMMMemMgr(&CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v6 = *(a1 + 56);
  if (CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(a1 + 64);
    dispatch_once(&CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_270);
    v4 = v11;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  *a2 = xmmword_19A96E260;
  *(a2 + 24) = 0;
  *(a2 + 28) = v4;
  *(a2 + 44) = v5;
  *(a2 + 48) = v6;
  *(a2 + 52) = 0;
  v7 = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  v8 = *(v7 + 8);
  if (v8)
  {
    *(v7 + 8) = v8 + 1;
  }

LABEL_6:
  result = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table;
  v10 = *(CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v10)
  {
    *(CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v10 + 1;
  }

  return result;
}

void *___ZN14CMMHLGCurveTag20copy_hlg_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kHLGInvOETFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kHLGInvOETFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

void *___ZN14CMMHLGCurveTag24copy_inv_hlg_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kHLGOETFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kHLGOETFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

uint64_t CMMHLGCurveTag::SameCurve(CMMHLGCurveTag *this, char **lpsrc, char **a3)
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
    v6 = 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
LABEL_6:
  if (!v6 || !v8)
  {
    return 0;
  }

  v9 = *(*lpsrc + 7);

  return v9(lpsrc, lpsrc, a3);
}

uint64_t CMMHLGCurveTag::Validate(CMMHLGCurveTag *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 3 && a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967126;
  }

  CMMThrowExceptionOnError(v5);
  if (*(*(this + 5) + 8) == 1728774144)
  {
    return 0;
  }

  else
  {
    return 4294967126;
  }
}

void CMMHLGCurveTag::~CMMHLGCurveTag(CMMHLGCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMCurveTag::EvaluateGamma(CMMCurveTag *this, BOOL *a2, double a3)
{
  v23 = 0.0;
  v6 = (*(*this + 40))(this);
  if (*(this + 4) >= 2 * v6 + 12)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294967126;
  }

  CMMThrowExceptionOnError(v7);
  switch(v6)
  {
    case 0u:
      v23 = 1.0;
      goto LABEL_33;
    case 2u:
      v23 = 1.0;
      if (!*(*(*this + 48))(this))
      {
        v8 = (*(*this + 48))(this);
        if (!a2 || *(v8 + 2) == 0xFFFF)
        {
          return;
        }

LABEL_37:
        v22 = 0;
LABEL_38:
        *a2 = v22;
        return;
      }

LABEL_36:
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 1u:
      if ((*(*(*this + 48))(this) & 0xFEFF) == 0xCC01)
      {
        if (a2)
        {
          *a2 = 1;
        }

        return;
      }

      v23 = vcvtd_n_f64_u32(bswap32(*(*(*this + 48))(this)) >> 16, 8uLL);
      goto LABEL_33;
  }

  v9 = (*(*this + 48))(this);
  if (IsPureGammaCurve(v6, v9, &v23))
  {
LABEL_33:
    if (!a2)
    {
      return;
    }

    v22 = 1;
    goto LABEL_38;
  }

  v10 = (*(*this + 48))(this);
  v11 = 0;
  v12 = 0;
  v13 = (v6 - 1);
  v14 = 0.0;
  v15 = 0.0;
  do
  {
    if (v11)
    {
      v16 = (bswap32(*(v10 + 2 * v11)) >> 16) / 65535.0;
      if (v16 != 0.0 && v11 - v6 != -1 && v16 != 1.0)
      {
        v19 = log(v14 / v13);
        v15 = log(v16) / v19 + v15;
        ++v12;
      }
    }

    ++v11;
    v14 = v14 + 1.0;
  }

  while (v11 != v6);
  if (!v12)
  {
    v23 = 1.0;
    goto LABEL_36;
  }

  v23 = v15 / v12;
  v20 = (*(*this + 48))(this);
  v21 = 0;
  while (vabdd_f64((bswap32(*(v20 + 2 * v21)) >> 16) / 65535.0, pow(v21 / v13, v15 / v12)) <= a3)
  {
    if (v6 == ++v21)
    {
      goto LABEL_36;
    }
  }

  v23 = 0.0;
  if (a2)
  {
    goto LABEL_37;
  }
}

BOOL IsPureGammaCurve(_BOOL8 result, unsigned __int16 *a2, double *a3)
{
  v5 = result - 1;
  if (result)
  {
    v6 = vcvtd_n_f64_u32(bswap32(*a2) >> 16, 8uLL);
    if (v6 < 2.4023 && v6 > 2.398)
    {
      v6 = 2.4;
    }

    *a3 = v6;
  }

  else
  {
    v8 = result;
    if (result >= 0x80)
    {
      result = 0;
      v9 = (bswap32(a2[v8 >> 1]) >> 16) / 65535.0;
      if (v9 >= 0.01 && v9 <= 0.99)
      {
        v10 = v5;
        v11 = (v8 >> 1) / v5;
        v12 = log(v9);
        v13 = 0;
        v14 = v12 / log(v11);
        *a3 = v14;
        do
        {
          v15 = vabdd_f64((bswap32(a2[v13]) >> 16) / 65535.0, pow(v13 / v10, v14));
          result = v15 <= 0.0001;
        }

        while (v15 <= 0.0001 && v8 - 1 != v13++);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CMMCurveTag::MakeLut(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v7 = (*(*a1 + 40))(a1);
  v8 = (*(*a1 + 48))(a1);
  v9 = v8;
  v10 = v7 - 1;
  if (v7 == 1)
  {
    v11 = *v8;
    v12 = __rev16(v11);
    if ((v12 & 0xFFFE) == 0x1CC)
    {
      v13 = 1.8;
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    else if (v11 == 13058)
    {
      v13 = 2.2;
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = vcvtd_n_f64_u32(v12, 8uLL);
      v21 = v20 >= 2.4023 || v20 <= 2.398;
      if (v21)
      {
        v13 = v20;
      }

      else
      {
        v13 = 2.4;
      }

      if (!a2)
      {
        goto LABEL_48;
      }
    }

    v22 = 1.0;
    if (v13 < 1.0)
    {
      v22 = 16.0;
    }

    v23 = v22;
    v24 = 0.0625;
    if (v13 <= 1.0)
    {
      v24 = v23;
    }

    *a2 = 1;
    *(a2 + 12) = 3;
    *(a2 + 8) = 1;
    *(a2 + 16) = 0;
    v25 = v13;
    *(a2 + 24) = v25;
    *(a2 + 28) = 1065353216;
    *(a2 + 36) = v24;
    v26 = 0.0;
    if (v25 != 1.0 && v25 != 0.0)
    {
      v27 = v25;
      if (v25 <= 1.0)
      {
        v28 = v25;
      }

      else
      {
        v28 = 1.0 / v25;
      }

      v29 = exp2(1.0 / (v28 + -1.0) * 4.0);
      if (v28 != v27)
      {
        v29 = v29 * 16.0;
      }

      v26 = v29;
    }

    *(a2 + 40) = v26;
    goto LABEL_47;
  }

  v13 = 0.0;
  if (IsSRGBGammaCurve(v7, v8))
  {
    if (a2)
    {
      *a2 = 1;
      *(a2 + 12) = 3;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = xmmword_19A96E270;
      *(a2 + 40) = xmmword_19A96E280;
    }
  }

  else if (a2)
  {
    v14 = (*(*a1 + 80))(a1, 0, 0.001);
    if (v14 != 0.0)
    {
      v15 = 16.0;
      if (v14 >= 1.0)
      {
        v15 = 1.0;
      }

      if (v14 > 1.0)
      {
        v15 = 0.0625;
      }

      *a2 = 1;
      *(a2 + 8) = 1;
      *(a2 + 12) = 3;
      *(a2 + 16) = 0;
      *(a2 + 24) = v14;
      *(a2 + 28) = 1065353216;
      *(a2 + 36) = v15;
      if (v14 == 1.0)
      {
        v19 = 0.0;
      }

      else
      {
        v16 = v14;
        if (v14 <= 1.0)
        {
          v17 = v14;
        }

        else
        {
          v17 = 1.0 / v14;
        }

        v18 = exp2(1.0 / (v17 + -1.0) * 4.0);
        if (v17 != v16)
        {
          v18 = v18 * 16.0;
        }

        v19 = v18;
      }

      *(a2 + 40) = v19;
LABEL_47:
      *(a2 + 48) = 0;
      *(a2 + 44) = 0;
      goto LABEL_48;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 12) = -1;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

LABEL_48:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v49 = a3;
  do
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v34 = vcvtmd_s64_f64(pow(vcvtd_n_f64_u32(v33, 0x18uLL), v13) * 16777216.0 + 0.5);
        if (v31 > v34)
        {
          v34 = v31;
        }

        if (v34 >= v32)
        {
          v34 = v32;
        }
      }

      else
      {
        v35 = v30 >> 24;
        if (v7 <= (v30 >> 24))
        {
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v36 = (v35 << 24) / v10;
        v37 = bswap32(v9[v35]);
        v34 = (((v37 >> 7) & 0x1FFFE00 | (v37 >> 23)) + 1) >> 1;
        if (v33 != v36)
        {
          v38 = bswap32(*(v9 + (((v35 << 32) + 0x100000000) >> 31)));
          v39 = (v33 - v36) * (((((v38 >> 7) & 0x1FFFE00 | (v38 >> 23)) + 1) >> 1) - v34);
          if (v39)
          {
            v40 = v39 * v10;
            v41 = v40 + 0x800000;
            v21 = v40 < -8388608;
            v42 = v40 + 25165823;
            if (!v21)
            {
              v42 = v41;
            }

            v34 += v42 >> 24;
          }
        }
      }
    }

    else
    {
      v34 = v33;
    }

    *a3++ = v34;
    v33 += 4096;
    v32 += 0x10000;
    v31 += 256;
    v30 += (v7 - 1) << 12;
  }

  while (v33 != 16781312);
  if (a4 == 1 && v7 > 2)
  {
    v43 = v49[2056];
    memmove(v49 + 2058, v49 + 2057, 0x1FD8uLL);
    v49[2057] = v43;
    v49[2055] = v43;
  }

  else if (!a4 && v7 >= 3)
  {
    v44 = v49[4096];
    v45 = v49[1] - *v49;
    if (v45 < 0)
    {
      v45 = *v49 - v49[1];
    }

    if (v45 <= 0x7FF)
    {
      v49[1] = *v49;
    }

    v46 = v44 - v49[4095];
    if (v46 < 0)
    {
      v46 = v49[4095] - v44;
    }

    if (v46 <= 0x7FF)
    {
      v49[4095] = v44;
    }
  }
}

int *MakeLookups(int *result)
{
  v1 = 0;
  v2 = 0x8000;
  do
  {
    v3 = WORD1(v2) & 0xFFF;
    v4 = &result[v2 >> 28];
    v5 = *v4;
    if (v3)
    {
      v5 += ((v4[1] - v5) * v3 + 2048) >> 12;
    }

    result[v1 + 4097] = v5 >> 12;
    ++v1;
    v2 += 0x101010100;
  }

  while (v1 != 256);
  v6 = result + 4353;
  v7 = 4097;
  do
  {
    v8 = *result++;
    *v6++ = (255 * v8 + 0x800000) >> 24;
    --v7;
  }

  while (v7);
  return result;
}

void *CMMTable::MakeFloatCopy(CMMTable *this, void **a2, CMMMemMgr *a3, const char *a4)
{
  if (*(this + 4) <= 0x1000uLL)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = CMMBase::NewInternal(0x28, a2, a3, a4);
  *v6 = &unk_1F0E09180;
  v6[1] = 1;
  v6[3] = 0;
  v6[4] = 16388;
  v6[2] = CMMBase::NewInternal(0x4004, a2, v7, v8);
  v9 = CMMTable::UInt8Data(*(this + 2), *(this + 3));
  v10 = CMMTable::UInt8Data(v6[2], v6[3]);
  v11 = 4097;
  do
  {
    v12 = *v9++;
    *v10++ = v12 * 0.000000059605;
    --v11;
  }

  while (v11);
  return v6;
}

float32x2_t CMMCurveTag::InvertFloatParametricLUT(float32x2_t *a1, float32x2_t result)
{
  if (a1->i32[0] == 1)
  {
    v3 = a1[3];
    v4.i32[0] = a1[4].i32[0];
    v5 = a1[4].f32[1];
    v6 = a1[5].f32[0];
    v7 = a1[1].i32[1];
    if (v7 <= 1)
    {
      if (!v7)
      {
        v3.f32[0] = 1.0 / v3.f32[0];
        goto LABEL_19;
      }

      if (v7 != 1)
      {
        goto LABEL_19;
      }

      a1[1].i32[1] = 4;
      v20 = v3.f32[1];
      v36 = v4.f32[0];
      v40 = v3.i32[0];
      v21 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v3.f32[1], v3.f32[0])), v40);
      __asm { FMOV            V0.2S, #1.0 }

      v3 = vdiv_f32(_D0, v21);
      a1[5].f32[1] = -v36 / v20;
      a1[6] = 0;
      v6 = 0.0;
      v5 = 0.0;
    }

    else
    {
      if (v7 == 2)
      {
        a1[1].i32[1] = 4;
        v23 = v3.f32[1];
        v37 = v4.f32[0];
        v41 = v3.i32[0];
        v33 = v5;
        v24 = powf(v3.f32[1], v3.f32[0]);
        __asm { FMOV            V1.2S, #1.0 }

        v3 = vdiv_f32(_D1, __PAIR64__(LODWORD(v24), v41));
        v6 = v33;
        v19 = v33 / v24;
        a1[4].f32[0] = v19;
        a1[5].f32[1] = -v37 / v23;
        a1[6] = 0;
        v5 = 0.0;
LABEL_13:
        v4.f32[0] = v19;
        goto LABEL_19;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v9 = a1[5].f32[1];
          v8 = a1[6].f32[0];
          a1[1].i32[1] = 4;
          v10 = v3.f32[1];
          v35 = v4.f32[0];
          v39 = v3.i32[0];
          v30 = v6;
          v32 = v5;
          v11 = powf(v3.f32[1], v3.f32[0]);
          __asm { FMOV            V1.2S, #1.0 }

          v3 = vdiv_f32(_D1, __PAIR64__(LODWORD(v11), v39));
          v17 = 1.0 / v32;
          v6 = v8 + (v32 * v30);
          v18 = v8 / v32;
          if (v32 == 0.0)
          {
            v17 = 0.0;
            v18 = 0.0;
          }

          a1[5].f32[1] = -v35 / v10;
          a1[6].f32[0] = v18;
          a1[6].i32[1] = 0;
          v5 = v17;
          v19 = v9 / v11;
          goto LABEL_13;
        }

LABEL_19:
        a1[3] = vand_s8(v3, vceq_f32(v3, v3));
        v4.f32[1] = v5;
        v4.f32[2] = v6;
        v4.i32[3] = a1[5].i32[1];
        *a1[4].f32 = vandq_s8(v4, vceqq_f32(v4, v4));
        result = vand_s8(a1[6], vceq_f32(a1[6], a1[6]));
        a1[6] = result;
        return result;
      }

      a1[1].i32[1] = 4;
      v26 = v3.f32[1];
      v38 = v4.f32[0];
      v42 = v3.i32[0];
      v31 = v6;
      v34 = v5;
      v27 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v3.f32[1], v3.f32[0])), v42);
      __asm { FMOV            V0.2S, #1.0 }

      v3 = vdiv_f32(_D0, v27);
      a1[4].i32[0] = 0;
      v29 = 1.0 / v34;
      v6 = v34 * v31;
      if (v34 == 0.0)
      {
        v29 = 0.0;
      }

      a1[4].f32[1] = v29;
      a1[5].f32[1] = -v38 / v26;
      a1[6] = 0;
      v5 = v29;
    }

    v4.i32[0] = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t CMMPQCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 538988880)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(*(v3 + 40) + 8) == -2078277632)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

uint64_t CMMPQCurveTag::MakeInvertedTRC(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 60) = a3;
  {
    CMMMemMgr::CMMMemMgr(&CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v8 = &kColorSyncTransformInfo;
  {
    v8 = &kColorSyncTransformInfo;
    if (v24)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::a = *(a1 + 72);
      v8 = &kColorSyncTransformInfo;
    }
  }

  v9 = &kColorSyncTransformInfo;
  {
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v25)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::b = *(a1 + 76);
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v10 = &kColorSyncTransformInfo;
  {
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v26)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::c = *(a1 + 80);
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v11 = &kColorSyncTransformInfo;
  {
    v11 = &kColorSyncTransformInfo;
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v27)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::d = *(a1 + 84);
      v11 = &kColorSyncTransformInfo;
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v12 = &kColorSyncTransformInfo;
  {
    v12 = &kColorSyncTransformInfo;
    v11 = &kColorSyncTransformInfo;
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v28)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::e = *(a1 + 88);
      v12 = &kColorSyncTransformInfo;
      v11 = &kColorSyncTransformInfo;
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v13 = *(v8 + 852);
  v14 = *(v9 + 848);
  v15 = *(v10 + 844);
  v16 = *(v11 + 840);
  v17 = *(v12 + 836);
  v18 = *(a1 + 60);
  if (CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_267);
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  *a2 = xmmword_19A96E2D0;
  *(a2 + 24) = 0;
  *(a2 + 28) = v13;
  *(a2 + 32) = v14;
  *(a2 + 36) = v15;
  *(a2 + 40) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = 0;
  *(a2 + 52) = v18;
  v19 = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table;
  v20 = *(v19 + 8);
  if (v20)
  {
    *(v19 + 8) = v20 + 1;
  }

LABEL_11:
  v21 = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table;
  v22 = *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v22)
  {
    *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v22 + 1;
  }

  *a5 = CMMPQCurveTag::copy_pq_curve_table(a1, 0);
  return v21;
}

uint64_t CMMPQCurveTag::copy_pq_curve_table(uint64_t a1, uint64_t a2)
{
  {
    CMMMemMgr::CMMMemMgr(&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v4 = &kColorSyncTransformInfo;
  {
    v4 = &kColorSyncTransformInfo;
    if (v23)
    {
      *&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::a = 1.0 / *(a1 + 76);
      v4 = &kColorSyncTransformInfo;
    }
  }

  v5 = &kColorSyncTransformInfo;
  {
    v5 = &kColorSyncTransformInfo;
    v4 = &kColorSyncTransformInfo;
    if (v24)
    {
      *&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::b = 1.0 / *(a1 + 72);
      v5 = &kColorSyncTransformInfo;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v6 = &kColorSyncTransformInfo;
  {
    v25 = v5;
    v6 = &kColorSyncTransformInfo;
    v5 = v25;
    v4 = &kColorSyncTransformInfo;
    if (v26)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::c = *(a1 + 80);
      v6 = &kColorSyncTransformInfo;
      v5 = v25;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v7 = &kColorSyncTransformInfo;
  {
    v27 = v5;
    v7 = &kColorSyncTransformInfo;
    v6 = &kColorSyncTransformInfo;
    v5 = v27;
    v4 = &kColorSyncTransformInfo;
    if (v28)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::d = *(a1 + 84);
      v7 = &kColorSyncTransformInfo;
      v6 = &kColorSyncTransformInfo;
      v5 = v27;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v8 = &kColorSyncTransformInfo;
  {
    v29 = v5;
    v8 = &kColorSyncTransformInfo;
    v7 = &kColorSyncTransformInfo;
    v6 = &kColorSyncTransformInfo;
    v5 = v29;
    v4 = &kColorSyncTransformInfo;
    if (v30)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::e = *(a1 + 88);
      v8 = &kColorSyncTransformInfo;
      v7 = &kColorSyncTransformInfo;
      v6 = &kColorSyncTransformInfo;
      v5 = v29;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v9 = *(a1 + 64);
  v10 = *(v4 + 998);
  v11 = *(v5 + 994);
  v12 = *(v6 + 990);
  v13 = *(v7 + 986);
  v14 = *(v8 + 982);
  v15 = *(a1 + 56);
  if (CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_590);
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  if (v9)
  {
    v16 = 17;
  }

  else
  {
    v16 = 8;
  }

  *a2 = v9 == 0;
  *(a2 + 4) = v16;
  *(a2 + 8) = 0x500000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = v10;
  *(a2 + 32) = v11;
  *(a2 + 36) = v12;
  *(a2 + 40) = v13;
  *(a2 + 44) = v14;
  *(a2 + 48) = 893662952;
  *(a2 + 52) = v15;
  v17 = *(a1 + 64);
  if (!v17)
  {
    v17 = CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::float_table;
  }

  *(a2 + 16) = v17;
  v20 = *(v17 + 8);
  v18 = (v17 + 8);
  v19 = v20;
  if (v20)
  {
    *v18 = v19 + 1;
  }

LABEL_16:
  result = CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table;
  v22 = *(CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v22)
  {
    *(CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v22 + 1;
  }

  return result;
}

void *___ZN13CMMPQCurveTag19copy_pq_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kPQEOTFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kPQEOTFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

int *___ZN13CMMPQCurveTag23copy_inv_pq_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  *v4 = &unk_1F0E09180;
  v4[1] = 1;
  v4[3] = 0;
  v4[4] = 21512;
  v4[2] = CMMBase::NewInternal(0x5408, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  v9 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v7, v8);
  *v9 = &unk_1F0E09180;
  v9[1] = 1;
  v9[3] = 0;
  v9[4] = 16388;
  v12 = CMMBase::NewInternal(0x4004, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v10, v11);
  v9[2] = v12;
  CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table = v9;
  v13 = *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 16);
  if (!v13)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v14 = v12;
  CMMTable::MutableFloatData(v12);
  v15 = 0;
  for (i = 0; i != 16781312; i += 4096)
  {
    v17 = powf(vcvts_n_f32_u64(i, 0x18uLL), 0.1593);
    v18 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
    v19 = 0.0;
    if (fabsf(v18) == INFINITY || v18 >= 0.0 && (v19 = v18, v18 > 1.0))
    {
      v19 = 1.0;
    }

    *(v14 + v15 * 4) = v19;
    v20 = vcvtmd_s64_f64((v19 * 16777000.0) + 0.5);
    v21 = v20 & ~(v20 >> 31);
    if (v21 >= 0x1000000)
    {
      v21 = 0x1000000;
    }

    v13[v15++] = v21;
  }

  return MakeLookups(v13);
}

uint64_t CMMTable::MutableFloatData(uint64_t this)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return this;
}

uint64_t CMMPQCurveTag::MakeTRC(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 64))
  {
    a3 = 1.0;
  }

  *(a1 + 56) = a3;
  return CMMPQCurveTag::copy_pq_curve_table(a1, a2);
}

uint64_t CMMPQCurveTag::SameCurve(CMMPQCurveTag *this, char **lpsrc, char **a3)
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
    v6 = 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
LABEL_6:
  if (!v6 || !v8)
  {
    return 0;
  }

  v9 = *(*lpsrc + 7);

  return v9(lpsrc, lpsrc, a3);
}

uint64_t CMMPQCurveTag::Validate(CMMPQCurveTag *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 3 && a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967126;
  }

  CMMThrowExceptionOnError(v5);
  if (*(*(this + 5) + 8) == -2078277632)
  {
    return 0;
  }

  else
  {
    return 4294967126;
  }
}

void CMMPQCurveTag::~CMMPQCurveTag(CMMPQCurveTag *this)
{
  CMMPQCurveTag::~CMMPQCurveTag(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E08E28;
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

  CMMTag::~CMMTag(this);
}

uint64_t CMMLutBtoATag::GetPostCLUTLutSize(CMMLutBtoATag *this, unsigned int a2)
{
  result = *(this + a2 + 61);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutBtoATag::GetPreCLUTLutSize(CMMLutBtoATag *this, unsigned int a2)
{
  result = *(this + a2 + 44);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutBtoATag::MakePostCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 480) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 488);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutBtoATag::MakePreCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 344) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 352);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutBtoATag::GetInputMatrix(CMMLutBtoATag *this)
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

uint64_t CMMLutBtoATag::MakeInputTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 208) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 216);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

unint64_t CMMLutTag::InterpolationProtectionZone(CMMLutTag *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MaxCLUTPoints = *(this + 25);
  if (!MaxCLUTPoints)
  {
    if (*(this + 76))
    {
      v10 = 0;
    }

    else
    {
      v10 = 4294967246;
    }

    CMMThrowExceptionOnError(v10);
    MaxCLUTPoints = CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  }

  return CMMLutTagBase::CalculateProtectionZone(MaxCLUTPoints, *(this + 50), *(this + 51), a4, a5, a6, a7, a8) * *(this + 92);
}

unint64_t CMMLutTag::GetMaxCLUTPoints(unsigned int a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 <= 1)
  {
    v5 = 4294967126;
  }

  else
  {
    v5 = 0;
  }

  CMMThrowExceptionOnError(v5);
  if (a1 >= 2)
  {
    v6 = a1 - 1;
    v7 = a2 + 1;
    do
    {
      if (*v7 <= 1u)
      {
        v8 = 4294967126;
      }

      else
      {
        v8 = 0;
      }

      CMMThrowExceptionOnError(v8);
      v10 = *v7++;
      v9 = v10;
      if (v4 <= v10)
      {
        v4 = v9;
      }

      --v6;
    }

    while (v6);
  }

  return v4;
}

unint64_t CMMLutTag::GetCLutPoints(CMMLutTag *this)
{
  if (*(this + 25))
  {
    return *(this + 25);
  }

  else
  {
    return CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  }
}

void *CMMLutTag::CopyClut(CMMLutTag *this, CMMMemMgr *a2)
{
  v282 = *MEMORY[0x1E69E9840];
  v2 = *(this + 13);
  if (!v2)
  {
    v11 = 0;
    goto LABEL_231;
  }

  if (*(this + 25))
  {
    if (*(this + 92) == 2)
    {
      v5 = *(v2 + 32);
      v6 = (*(*this + 72))(this);
      v7 = (v6 + v5);
      if (__CFADD__(v6, v5))
      {
        v8 = 4294967246;
      }

      else
      {
        v8 = 0;
      }

      CMMThrowExceptionOnError(v8);
      v11 = CMMBase::NewInternal(0x28, a2, v9, v10);
      v12 = 1;
      *v11 = &unk_1F0E09180;
      v11[1] = 1;
      v11[3] = 0;
      v11[4] = v7;
      v11[2] = CMMBase::NewInternal(v7, a2, v13, v14);
      v15 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
      v22 = CMMTable::UInt8Data(v11[2], v11[3]);
      v23 = *(this + 50);
      if (!*(this + 50))
      {
        goto LABEL_17;
      }

      v24 = *(this + 25);
      LODWORD(v12) = 1;
      do
      {
        v25 = v12;
        v12 = v12 * v24;
        _CF = v12 >= v25 && v12 >= v24;
        v27 = _CF;
        CMMThrowExceptionWithLog(v27, "Overflow in Power", v16, v17, v18, v19, v20, v21);
        --v23;
      }

      while (v23);
      if (v12)
      {
LABEL_17:
        v28 = 0;
        v29 = *(this + 51);
        do
        {
          v30 = v29;
          if (v29)
          {
            do
            {
              v31 = *v15++;
              *v22++ = bswap32(v31) >> 16;
              --v30;
            }

            while (v30);
          }

          ++v28;
        }

        while (v28 != v12);
      }
    }

    else
    {
      v65 = (*(*this + 72))(this);
      v66 = 2 * v65;
      if (v65 < 0)
      {
        v67 = 4294967246;
      }

      else
      {
        v67 = 0;
      }

      CMMThrowExceptionOnError(v67);
      v68 = *(*(this + 13) + 32);
      v69 = (v66 + 2 * v68);
      if (__CFADD__(v66, 2 * v68))
      {
        v70 = 4294967246;
      }

      else
      {
        v70 = 0;
      }

      CMMThrowExceptionOnError(v70);
      v11 = CMMBase::NewInternal(0x28, a2, v71, v72);
      v73 = 1;
      *v11 = &unk_1F0E09180;
      v11[1] = 1;
      v11[3] = 0;
      v11[4] = v69;
      v11[2] = CMMBase::NewInternal(v69, a2, v74, v75);
      v76 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
      v83 = CMMTable::UInt8Data(v11[2], v11[3]);
      v84 = *(this + 50);
      if (!*(this + 50))
      {
        goto LABEL_56;
      }

      v85 = *(this + 25);
      LODWORD(v73) = 1;
      do
      {
        v86 = v73;
        v73 = v73 * v85;
        v88 = v73 >= v86 && v73 >= v85;
        CMMThrowExceptionWithLog(v88, "Overflow in Power", v77, v78, v79, v80, v81, v82);
        --v84;
      }

      while (v84);
      if (v73)
      {
LABEL_56:
        v89 = 0;
        v90 = *(this + 51);
        do
        {
          v91 = v90;
          if (v90)
          {
            do
            {
              v92 = *v76++;
              *v83++ = v92 | (v92 << 8);
              --v91;
            }

            while (v91);
          }

          ++v89;
        }

        while (v89 != v73);
      }
    }

    goto LABEL_231;
  }

  v264 = this + 76;
  MaxCLUTPoints = CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  v33 = *(this + 13);
  v34 = *(this + 92);
  v35 = v33[4];
  v36 = (*(*this + 72))(this);
  _CF = __CFADD__(v36, v35);
  v37 = v36 + v35;
  if (_CF)
  {
    v38 = 4294967246;
  }

  else
  {
    v38 = 0;
  }

  CMMThrowExceptionOnError(v38);
  if (v37 < 0)
  {
    v39 = 4294967246;
  }

  else
  {
    v39 = 0;
  }

  CMMThrowExceptionOnError(v39);
  v42 = CMMBase::NewInternal(0x28, a2, v40, v41);
  *v42 = &unk_1F0E09180;
  v42[1] = 1;
  v42[3] = 0;
  v42[4] = 2 * v37;
  v45 = CMMBase::NewInternal((2 * v37), a2, v43, v44);
  v42[2] = v45;
  v46 = *(this + 76);
  v47 = *(this + 50);
  if (v47 >= 2)
  {
    v48 = v47 - 1;
    v49 = this + 77;
    do
    {
      v50 = *v49++;
      v46 *= v50;
      --v48;
    }

    while (v48);
  }

  v51 = CMMTable::UInt8Data(v45, v42[3]);
  v52 = v33[2];
  v53 = v33[3];
  if (v34 == 1)
  {
    v54 = CMMTable::UInt8Data(v52, v53);
    if (v46)
    {
      v61 = 0;
      v62 = *(this + 51);
      do
      {
        if (v62)
        {
          v63 = 0;
          do
          {
            v64 = *v54++;
            *v51++ = __rev16(v64 | (v64 << 8));
            ++v63;
          }

          while (v62 > v63);
        }

        ++v61;
      }

      while (v61 != v46);
    }
  }

  else
  {
    v93 = CMMTable::UInt8Data(v52, v53);
    memcpy(v51, v93, (2 * v46));
  }

  v94 = *(this + 50);
  v269 = *(this + 51);
  v270 = v94;
  v262 = 2 * v269;
  v95 = 1;
  if (!*(this + 50))
  {
    goto LABEL_71;
  }

  do
  {
    v96 = v95;
    v95 *= MaxCLUTPoints;
    v98 = v95 >= v96 && v95 >= MaxCLUTPoints;
    CMMThrowExceptionWithLog(v98, "Overflow in Power", v55, v56, v57, v58, v59, v60);
    --v94;
  }

  while (v94);
  if (!v95)
  {
    v100 = 0;
    v99 = 0;
  }

  else
  {
LABEL_71:
    v99 = v262 * v95;
    if (is_mul_ok(v95, v262))
    {
      v100 = 0;
    }

    else
    {
      v100 = 4294967246;
    }
  }

  CMMThrowExceptionOnError(v100);
  v101 = (*(*this + 72))(this);
  v260 = v99;
  v102 = (v101 + v99);
  if (__CFADD__(v101, v99))
  {
    v103 = 4294967246;
  }

  else
  {
    v103 = 0;
  }

  CMMThrowExceptionOnError(v103);
  v259 = CMMBase::NewInternal(0x28, a2, v104, v105);
  *v259 = &unk_1F0E09180;
  v259[1] = 1;
  v259[3] = 0;
  v259[4] = v102;
  v259[2] = CMMBase::NewInternal(v102, a2, v106, v107);
  v116 = CMMBase::NewInternal(0x28, a2, v108, v109);
  v258 = v42;
  v117 = v270;
  v263 = v95;
  if (v270)
  {
    v118 = 1;
    do
    {
      v119 = v118;
      v118 *= 2;
      v121 = v119 >= 0 && v118 != 0;
      CMMThrowExceptionWithLog(v121, "Overflow in Power", v110, v111, v112, v113, v114, v115);
      --v117;
    }

    while (v117);
    v122 = 8 * v119;
  }

  else
  {
    v122 = 4;
  }

  *v116 = &unk_1F0E09180;
  v116[1] = 1;
  v116[3] = 0;
  v116[4] = v122;
  v123 = CMMBase::NewInternal(v122, a2, v110, v111);
  v116[2] = v123;
  v257 = v116;
  v272 = this;
  v273 = CMMTable::UInt8Data(v123, v116[3]);
  v130 = *(this + 50);
  *v273 = *(this + 51);
  v131 = v273 - 1;
  v271 = MaxCLUTPoints;
  if (v130 >= 2)
  {
    v132 = 0;
    for (i = 1; i != v130; ++i)
    {
      if (i == 1)
      {
        v136 = 1;
      }

      else
      {
        v134 = 1;
        v135 = v132;
        do
        {
          v136 = (2 * v134);
          v138 = v134 >= 0 && v136 != 0;
          CMMThrowExceptionWithLog(v138, "Overflow in Power", v124, v125, v126, v127, v128, v129);
          v134 = v136;
          --v135;
        }

        while (v135);
      }

      v139 = v131[v136];
      v140 = v264[i];
      v141 = 1;
      v142 = i;
      do
      {
        _NF = v141 < 0;
        v141 *= 2;
        v145 = !_NF && v141 != 0;
        CMMThrowExceptionWithLog(v145, "Overflow in Power", v124, v125, v126, v127, v128, v129);
        --v142;
      }

      while (v142);
      v131[v141] = v139 * v140;
      ++v132;
    }

    v146 = 1;
    v147 = 2;
    while (1)
    {
      v267 = v146;
      v148 = 1;
      do
      {
        _NF = v148 < 0;
        v148 *= 2;
        v150 = !_NF && v148 != 0;
        CMMThrowExceptionWithLog(v150, "Overflow in Power", v124, v125, v126, v127, v128, v129);
        --v146;
      }

      while (v146);
      v265 = v147;
      v151 = v147;
      v152 = 1;
      do
      {
        v153 = 2 * v152;
        v155 = v152 >= 0 && v153 != 0;
        CMMThrowExceptionWithLog(v155, "Overflow in Power", v124, v125, v126, v127, v128, v129);
        v152 = v153;
        --v151;
      }

      while (v151);
      v156 = v148 | 1;
      if ((v148 | 1uLL) < v153)
      {
        break;
      }

LABEL_154:
      v146 = v267 + 1;
      v147 = v265 + 1;
      MaxCLUTPoints = v271;
      if (v267 + 1 == v130)
      {
        goto LABEL_155;
      }
    }

LABEL_129:
    v157 = 0;
    v158 = 0;
    v159 = v156;
    while (!v157)
    {
      if ((v148 & 1) == 0)
      {
        v167 = 1;
LABEL_151:
        v158 += v131[v167];
      }

LABEL_152:
      if (++v157 == v130)
      {
        v273[v148] = v158;
        v156 = v159 + 1;
        v148 = v159;
        if (v159 + 1 == v153)
        {
          goto LABEL_154;
        }

        goto LABEL_129;
      }
    }

    v160 = v157;
    v161 = 1;
    do
    {
      v162 = 2 * v161;
      v164 = v161 >= 0 && v162 != 0;
      CMMThrowExceptionWithLog(v164, "Overflow in Power", v124, v125, v126, v127, v128, v129);
      v161 = v162;
      --v160;
    }

    while (v160);
    if ((v162 & v159) == 0)
    {
      goto LABEL_152;
    }

    v165 = v157;
    v166 = 1;
    do
    {
      v167 = 2 * v166;
      v169 = v166 >= 0 && v167 != 0;
      CMMThrowExceptionWithLog(v169, "Overflow in Power", v124, v125, v126, v127, v128, v129);
      v166 = v167;
      --v165;
    }

    while (v165);
    goto LABEL_151;
  }

LABEL_155:
  v170 = CMMTable::UInt8Data(v259[2], v259[3]);
  v266 = CMMTable::UInt8Data(v42[2], v42[3]);
  v177 = CMMTable::UInt8Data(v257[2], v257[3]);
  memset(v279, 0, sizeof(v279));
  memset(v277, 0, sizeof(v277));
  memset(v276, 0, sizeof(v276));
  if (MaxCLUTPoints)
  {
    v178 = 0;
    *&v179 = (MaxCLUTPoints - 1);
    v180 = vdupq_n_s64(MaxCLUTPoints - 1);
    v181 = vdupq_lane_s64(v179, 0);
    v182 = xmmword_19A96E020;
    v183 = xmmword_19A96E030;
    v184 = xmmword_19A96E040;
    v185 = xmmword_19A96E050;
    v186 = &v279[4];
    v187 = vdupq_n_s64(0x40EFFFE000000000uLL);
    __asm { FMOV            V18.2D, #0.5 }

    v190 = vdupq_n_s64(8uLL);
    v191.i64[0] = 0xFFFF0000FFFFLL;
    v191.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v192 = vmovn_s64(vcgeq_u64(v180, v185));
      v193 = vuzp1_s16(v192, v179);
      v194.f64[0] = v178 / *&v179;
      v195 = vdupq_n_s32(v178);
      v196 = vorrq_s8(v195, xmmword_19A96E2E0);
      v197.i64[0] = v196.u32[0];
      v197.i64[1] = v196.u32[1];
      v198 = vcvtq_f64_u64(v197);
      v197.i64[0] = v196.u32[2];
      v197.i64[1] = v196.u32[3];
      v199 = vdivq_f64(vcvtq_f64_u64(v197), v181);
      *v195.i8 = vorr_s8(*v195.i8, 0x700000006);
      v197.i64[0] = v195.u32[0];
      v197.i64[1] = v195.u32[1];
      v194.f64[1] = (v178 + 1) / *&v179;
      v200 = vmlaq_f64(_Q18, v187, v194);
      v201 = vmlaq_f64(_Q18, v187, vdivq_f64(v198, v181));
      v202 = vmlaq_f64(_Q18, v187, vdivq_f64(vcvtq_f64_u64(v197), v181));
      v203 = vmlaq_f64(_Q18, v187, v199);
      v204 = v203.f64[1];
      if (v203.f64[1] >= 0xFFFF)
      {
        v204 = 0xFFFF;
      }

      if (v203.f64[0] >= 0xFFFF)
      {
        v205 = 0xFFFF;
      }

      else
      {
        v205 = v203.f64[0];
      }

      v206 = v202.f64[1];
      if (v202.f64[1] >= 0xFFFF)
      {
        v206 = 0xFFFF;
      }

      v207 = v202.f64[0];
      if (v202.f64[0] >= 0xFFFF)
      {
        v207 = 0xFFFF;
      }

      v208 = v200.f64[1];
      v209 = v200.f64[0];
      if (v200.f64[1] >= 0xFFFF)
      {
        v208 = 0xFFFF;
      }

      if (v209 >= 0xFFFF)
      {
        v209 = 0xFFFF;
      }

      v210.i64[0] = __PAIR64__(v208, v209);
      v211 = v201.f64[1];
      v212 = v201.f64[0];
      if (v201.f64[1] >= 0xFFFF)
      {
        v211 = 0xFFFF;
      }

      if (v212 >= 0xFFFF)
      {
        v212 = 0xFFFF;
      }

      v213 = vuzp1_s8(v193, v179).u8[0];
      v210.i64[1] = __PAIR64__(v211, v212);
      v214 = vandq_s8(v210, v191);
      if (v213)
      {
        *(v186 - 4) = v214.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v192, v179), v179).i8[1])
      {
        *(v186 - 3) = v214.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(v179, vmovn_s64(vcgeq_u64(v180, *&v184))), v179).i8[2])
      {
        *(v186 - 2) = v214.i16[4];
        *(v186 - 1) = v214.i16[6];
      }

      v215.i64[0] = __PAIR64__(v204, v205);
      v215.i64[1] = __PAIR64__(v206, v207);
      v216 = vandq_s8(v215, v191);
      v217 = vmovn_s64(vcgeq_u64(v180, v183));
      if (vuzp1_s8(v179, vuzp1_s16(v217, v179)).i32[1])
      {
        *v186 = v216.i16[0];
      }

      if (vuzp1_s8(v179, vuzp1_s16(v217, v179)).i8[5])
      {
        v186[1] = v216.i16[2];
      }

      if (vuzp1_s8(v179, vuzp1_s16(v179, vmovn_s64(vcgeq_u64(v180, *&v182)))).i8[6])
      {
        v186[2] = v216.i16[4];
        v186[3] = v216.i16[6];
      }

      v178 += 8;
      v183 = vaddq_s64(v183, v190);
      v184 = vaddq_s64(v184, v190);
      v185 = vaddq_s64(v185, v190);
      v182 = vaddq_s64(v182, v190);
      v186 += 8;
    }

    while (((MaxCLUTPoints + 7) & 0x1F8) != v178);
  }

  v268 = v170;
  v218 = v270;
  if (v270)
  {
    v219 = 0;
    do
    {
      if (v219)
      {
        v220 = v219;
        v221 = 1;
        do
        {
          v222 = v221;
          v221 *= MaxCLUTPoints;
          v224 = v221 >= v222 && v221 >= MaxCLUTPoints;
          CMMThrowExceptionWithLog(v224, "Overflow in Power", v171, v172, v173, v174, v175, v176);
          --v220;
        }

        while (v220);
        v218 = v270;
      }

      else
      {
        LODWORD(v221) = 1;
      }

      v276[v219++] = v221;
    }

    while (v219 != v218);
  }

  if (v263)
  {
    v225 = 0;
    v226 = 0;
    v227 = v260 >> 1;
    v261 = 2 * v218;
    do
    {
      v274 = v226;
      v228 = v218 == 0;
      memset(v278, 0, sizeof(v278));
      DecodeN(v225, v218, v278, v276, v271);
      if (!v228)
      {
        v230 = v278;
        v231 = v261;
        do
        {
          v232 = *v230++;
          *(&v276[15] + v231 + 2) = v279[v232];
          v231 -= 2;
        }

        while (v231);
      }

      memset(v280, 0, sizeof(v280));
      v233 = *(v272 + 50);
      if (*(v272 + 50))
      {
        v234 = 0;
        memset(v281, 0, 64);
        do
        {
          v235 = (*(v234 + v264) - 1) * *(v277 + v234) + 1;
          v281[v234] = HIWORD(v235);
          v280[v234] = v235 >> 1;
          v234 = (v234 + 1);
        }

        while (v233 != v234);
        v236 = v281[0];
        if (v233 != 1)
        {
          v237 = v233 - 1;
          v238 = v272 + 77;
          v239 = &v281[1];
          do
          {
            v241 = *v238++;
            v240 = v241;
            v242 = *v239++;
            v236 = v242 + v236 * v240;
            --v237;
          }

          while (v237);
        }
      }

      else
      {
        v236 = 0;
      }

      v243 = *(v272 + 51);
      if (*(v272 + 51))
      {
        v244 = 0;
        v245 = (v266 + 2 * (v236 * v243));
        do
        {
          v246 = (bswap32(*v245) >> 16);
          v275 = 0;
          if (v233)
          {
            v247 = 0;
            do
            {
              v246 = CMMLutTag::Interpolate(v233, v247++, v280, v246, v245, v177, &v275, v229);
            }

            while (v233 != v247);
          }

          *(v277 + v244) = v246;
          ++v245;
          ++v244;
        }

        while (v244 != v243);
      }

      if (v269)
      {
        v248 = v269 + v269 * v274 - 1;
        v249 = 2 * v269;
        do
        {
          if (v248 >= v227)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = -171;
          }

          *(v268 + 2 * v248--) = *(&v276[15] + v249 + 2);
          v249 -= 2;
        }

        while (v249);
      }

      v225 = v274 + 1;
      v226 = v274 + 1;
      v218 = v270;
    }

    while (v263 > v225);
  }

  v250 = v258[1];
  if (v250)
  {
    v251 = v250 - 1;
    v258[1] = v251;
    if (!v251)
    {
      (*(*v258 + 8))(v258);
    }
  }

  v252 = v257[1];
  v11 = v259;
  if (v252)
  {
    v253 = v252 - 1;
    v257[1] = v253;
    if (!v253)
    {
      (*(*v257 + 8))(v257);
    }
  }

LABEL_231:
  v254 = *MEMORY[0x1E69E9840];
  return v11;
}