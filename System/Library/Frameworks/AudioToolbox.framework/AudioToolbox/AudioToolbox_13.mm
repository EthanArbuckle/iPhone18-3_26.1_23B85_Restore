void sub_1DDC611C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetPlistValuesToInternalVariables(_DWORD *a1, void **a2, void **a3, _DWORD *a4, _DWORD *a5, uint64_t a6, unsigned int a7, unsigned int a8, float a9, unsigned int a10)
{
  *a1 = *(a6 + 4);
  if (*(a6 + 8) != a9)
  {
    return 4294956417;
  }

  v11 = a6;
  v12 = 4294900555;
  v13 = *(a6 + 532);
  if (v13 >= a7)
  {
    v13 = a7;
  }

  v46 = v13;
  if (*(a6 + 528) >= a8)
  {
    if (a8 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a8;
    }

    v19 = (a6 + 144);
    v20 = 520;
    do
    {
      if (*(v11 + v20) == 1)
      {
        v21 = v11;
        CopyToPulse32(*a2, v46, *(v19 - 1), (*v19 - *(v19 - 1)) >> 2);
        v22 = *(v19 - 1);
        v23 = *v19 - (v22 + 4);
        if (*v19 != v22 + 4)
        {
          memmove(*(v19 - 1), (v22 + 4), *v19 - (v22 + 4));
        }

        *v19 = v22 + v23;
        v11 = v21;
        *(v21 + v20) = 0;
      }

      ++a2;
      v19 += 3;
      ++v20;
      --v18;
    }

    while (v18);
    v24 = a10;
    v12 = 4294900555;
    if (*(v11 + 536) >= a10)
    {
      if (a10)
      {
        v25 = (v11 + 523);
        v26 = (v11 + 216);
        do
        {
          if (*v25 == 1)
          {
            CopyToPulse32(*a3, v46, *(v26 - 1), (*v26 - *(v26 - 1)) >> 2);
            v27 = *(v26 - 1);
            v28 = *v26 - (v27 + 4);
            if (*v26 != v27 + 4)
            {
              memmove(*(v26 - 1), (v27 + 4), *v26 - (v27 + 4));
            }

            *v26 = v27 + v28;
            *v25 = 0;
          }

          ++a3;
          v26 += 3;
          ++v25;
          --v24;
        }

        while (v24);
      }

      v29.n128_f32[0] = SetPlistValuesToPasscode(a1, v11, a9);
      v33 = (v11 + 580);
      v34 = 10;
      do
      {
        *a4++ = *(v33 - 10);
        v35 = *v33++;
        *a5++ = v35;
        --v34;
      }

      while (v34);
      InitializePasscodeShape(a1, v29, v30, v31, v32);
      v36 = a1[76];
      if (v36)
      {
        v37 = 0;
        v38 = a1[77];
        v39 = a1 + 25;
        do
        {
          if (!v38)
          {
            goto LABEL_30;
          }

          v40 = *(v11 + 280 + 24 * v37);
          v41 = v39;
          v42 = v38;
          do
          {
            v43 = *v40++;
            *v41++ = v43;
            --v42;
          }

          while (v42);
          if (v38 <= 2)
          {
LABEL_30:
            bzero(&a1[3 * v37 + 25 + v38], 4 * (2 - v38) + 4);
          }

          ++v37;
          v39 += 3;
        }

        while (v37 != v36);
      }

      return 0;
    }
  }

  return v12;
}

float SetPlistValuesToPasscode(uint64_t a1, uint64_t a2, float a3)
{
  v3 = 0;
  v4 = *(a2 + 12);
  v5 = *(a2 + 16);
  *(a1 + 16) = v4;
  v6 = vcvtas_u32_f32((v4 * 0.001) * a3);
  *(a1 + 24) = v5;
  v7 = *(a2 + 24);
  v8 = *(a2 + 28);
  v9 = 0.99;
  if (v7 < 0.99)
  {
    v9 = *(a2 + 24);
  }

  *(a1 + 20) = v6;
  *(a1 + 28) = *(a2 + 20);
  if (v7 >= 0.01)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.01;
  }

  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  *(a1 + 52) = vmaxnm_f32(*(a2 + 32), 0);
  v11.i32[0] = 10;
  v11.i32[1] = *(a1 + 308);
  *(a1 + 304) = vmin_u32(*(a2 + 620), v11);
  do
  {
    *(a1 + 36 + v3) = *(a2 + 40 + v3);
    v3 += 4;
  }

  while (v3 != 12);
  for (i = 0; i != 40; i += 4)
  {
    v13 = *(a2 + 52 + i);
    if (v13 >= 2)
    {
      v13 = 2;
    }

    *(a1 + 220 + i) = v13;
  }

  v14 = (a1 + 260);
  v15 = 10;
  do
  {
    v16 = *(v14 - 10) - 1;
    if (v16 > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = dword_1DE0A068C[v16];
    }

    *v14++ = v17;
    --v15;
  }

  while (v15);
  for (j = 0; j != 40; j += 4)
  {
    result = *(a2 + 92 + j);
    *(a1 + 60 + j) = result;
  }

  return result;
}

uint64_t SetPlistValuesToInternalKernelVariables(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v12 = a9.n128_f32[0];
  *a2 = *(a5 + 4);
  a9.n128_u32[0] = *(a5 + 8);
  if (a9.n128_f32[0] != v12)
  {
    return 4294956417;
  }

  result = 4294900555;
  if (*(a5 + 532) >= a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = *(a5 + 532);
  }

  if (*(a5 + 528) >= a7)
  {
    __dst = *(a1 + 216);
    v17 = (a5 + 520);
    if (a7)
    {
      v18 = (a5 + 144);
      v19 = 464;
      v20 = 48;
      v21 = a7;
      do
      {
        if (*v17 == 1)
        {
          v22 = *(v18 - 1);
          if (v16 >= ((*v18 - v22) >> 2))
          {
            v23 = (*v18 - v22) >> 2;
          }

          else
          {
            v23 = v16;
          }

          if (*(a1 + 1632) == 1)
          {
            v24 = *(a1 + 1640) + v20;
          }

          else
          {
            v24 = 0;
          }

          CopyInputToPulseTimeOrFFT(a1, v22, v23, __dst, *(a1 + v19), v24, a1 + 1520);
          v25 = *(v18 - 1);
          v26 = *v18 - (v25 + 4);
          if (*v18 != v25 + 4)
          {
            memmove(*(v18 - 1), (v25 + 4), *v18 - (v25 + 4));
          }

          *v18 = v25 + v26;
          *v17 = 0;
        }

        v19 += 8;
        v20 += 16;
        v18 += 3;
        ++v17;
        --v21;
      }

      while (v21);
    }

    else
    {
      *(a5 + 522) = 0;
      *v17 = 0;
    }

    if (*(a5 + 1) != 1)
    {
      goto LABEL_38;
    }

    result = 4294900555;
    if (*(a5 + 536) < a8)
    {
      return result;
    }

    if (a8)
    {
      v27 = 0;
      v28 = (a5 + 523);
      v29 = (a5 + 216);
      v30 = 584;
      do
      {
        if (*v28 == 1)
        {
          v31 = *(v29 - 1);
          if (v16 >= ((*v29 - v31) >> 2))
          {
            v32 = (*v29 - v31) >> 2;
          }

          else
          {
            v32 = v16;
          }

          if (*(a1 + 1632) == 1)
          {
            v33 = *(a1 + 1640) + v27;
          }

          else
          {
            v33 = 0;
          }

          CopyInputToPulseTimeOrFFT(a1, v31, v32, __dst, *(a1 + v30), v33, a1 + 1556);
          v34 = *(v29 - 1);
          v35 = *v29 - (v34 + 4);
          if (*v29 != v34 + 4)
          {
            memmove(*(v29 - 1), (v34 + 4), *v29 - (v34 + 4));
          }

          *v29 = v34 + v35;
          *v28 = 0;
        }

        v27 += 16;
        v30 += 8;
        v29 += 3;
        ++v28;
      }

      while (16 * a8 != v27);
    }

    else
    {
LABEL_38:
      *(a5 + 525) = 0;
      *(a5 + 523) = 0;
    }

    if (*a5 == 1)
    {
      a9.n128_f32[0] = SetPlistValuesToPasscode(a2, a5, v12);
    }

    for (i = 0; i != 40; i += 4)
    {
      *(a3 + i) = *(a5 + i + 540);
      *(a4 + i) = *(a5 + i + 580);
    }

    if (*a5)
    {
      InitializePasscodeShape(a2, a9, a10, a11, a12);
      v37 = a2[76];
      if (v37)
      {
        v38 = 0;
        v39 = a2[77];
        v40 = a5 + 280;
        v41 = a2 + 25;
        do
        {
          if (!v39)
          {
            goto LABEL_50;
          }

          v42 = *(v40 + 24 * v38);
          v43 = v41;
          v44 = v39;
          do
          {
            v45 = *v42++;
            *v43++ = v45;
            --v44;
          }

          while (v44);
          if (v39 <= 2)
          {
LABEL_50:
            bzero(&a2[3 * v38 + 25 + v39], 4 * (2 - v39) + 4);
          }

          ++v38;
          v41 += 3;
        }

        while (v38 != v37);
      }
    }

    return 0;
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::ValidFormat(AUAcousticPasscodeDec *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  v6 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v6 == 2 || v6 == 1 && !a3)
  {
    if (a4->mChannelsPerFrame == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::SupportedNumChannels(AUAcousticPasscodeDec *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUAcousticPasscodeDec::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUAcousticPasscodeDec::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::GetParameterInfo(AUAcousticPasscodeDec *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x3A && ((0x7FC01FFC00FFC7FuLL >> a3) & 1) != 0)
  {
    v6 = *(&off_1E86699B8 + a3);
    v7 = dword_1DE0A069C[a3];
    v8 = flt_1DE0A0788[a3];
    v9 = flt_1DE0A0874[a3];
    v10 = flt_1DE0A0960[a3];
    v11 = dword_1DE0A0A4C[a3];
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

uint64_t AUAcousticPasscodeDec::GetParameterList(AUAcousticPasscodeDec *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BEF0;
    *(a3 + 2) = xmmword_1DE09BF00;
    *(a3 + 3) = xmmword_1DE09BF10;
    *(a3 + 4) = xmmword_1DE09BF20;
    *(a3 + 5) = xmmword_1DE09BF30;
    *(a3 + 6) = xmmword_1DE09BF40;
    *(a3 + 7) = xmmword_1DE09BF50;
    *(a3 + 8) = xmmword_1DE09BF60;
    a3[36] = 58;
  }

  result = 0;
  *a4 = 37;
  return result;
}

uint64_t AUAcousticPasscodeDec::Render(AUAcousticPasscodeDec *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_15;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10 || !*(v10 + 172))
  {
    return 4294956420;
  }

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
      if (!*(v13 + 144) || (v15[0] = *(v13 + 152) + 48, !*(v9 + 144)))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v14 = *(v9 + 152) + 48;
      return (*(*this + 184))(this, a2, a4, 1, v15, 1, &v14);
    }

LABEL_15:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::ProcessMultipleBufferLists(AUAcousticPasscodeDec *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, __n128 a8)
{
  v11 = *(this + 133);
  if (*(this + 134) != v11)
  {
    v12 = 30;
    do
    {
      v148 = 0.0;
      (*(*this + 144))(this, v12, 0, 0, &v148);
      AcousticPasscodeDec_setParameter(*(this + 294), v12, v148);
      v12 = (v12 + 1);
    }

    while (v12 != 38);
    *(this + 134) = v11;
  }

  mData = (*a5)->mBuffers[0].mData;
  v14 = (*a7)->mBuffers[0].mData;
  v15 = *(this + 294);
  v16 = *(this + 138);
  v17 = *(v15 + 408);
  if (*(v15 + 412) != v17)
  {
    AcousticPasscodeDec_SetRealTimeTunableThresholds(*(this + 294), v15 + 8);
    *(v15 + 412) = v17;
  }

  if (*(v15 + 765) == 1)
  {
    *(v15 + 768) = 0;
    v18 = *(v15 + 1152);
    if (v18)
    {
      v19 = 0;
      while (*(v15 + 648 + 4 * v19) != 2)
      {
        if (v18 == ++v19)
        {
          goto LABEL_14;
        }
      }

      *(v15 + 768) = v19;
    }

LABEL_14:
    *(v15 + 765) = 0;
  }

  if ((*(v15 + 188) & 1) == 0)
  {
    v20 = *(v15 + 1152);
    if (v20 >= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = *(v15 + 1152);
    }

    if (*(v15 + 1632))
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = *(v15 + 1216);
    v24 = 0;
    if (v22)
    {
      v25 = (v15 + 1068);
      do
      {
        v26 = *v25++;
        v24 += v26;
        --v22;
      }

      while (v22);
    }

    v54 = v24 >= v23;
    v27 = v24 < v23;
    v28 = v54;
    *(v15 + 188) = v28;
    *(v15 + 189) = v27;
  }

  if ((*(v15 + 1432) & 1) == 0 && (*(v15 + 189) & 1) == 0)
  {
    ConvertBitstreamToSymbolStream(v15 + 1252, v15 + 1232, v15 + 1068, v15 + 1108, *(v15 + 1152), *(v15 + 1216));
    *(v15 + 1432) = 1;
  }

  if ((*(v15 + 416) & 1) != 0 || *(v15 + 189) == 1)
  {
    if (v14)
    {
      vDSP_vclr(v14, 1, v16);
    }

    goto LABEL_123;
  }

  if (*(v15 + 1652) == 1)
  {
    v29 = 0;
    v30 = 0;
    a8.n128_f32[0] = v16 / *(v15 + 420);
    do
    {
      v31 = *(v15 + 1656 + v29);
      if (*v31 == 1)
      {
        if (*(v31 + 20) == 1)
        {
          v32 = *(v31 + 24);
          if (v32 > 0.0)
          {
            v32 = v32 - a8.n128_f32[0];
            *(v31 + 24) = v32;
          }

          if (v32 <= 0.0)
          {
            *(v31 + 24) = 0;
            *v31 = 0;
          }
        }

        else if (*(v31 + 12) == 1)
        {
          v33 = *(v31 + 16);
          if (v33 > 0.0)
          {
            v33 = v33 - a8.n128_f32[0];
            *(v31 + 16) = v33;
          }

          if (v33 <= 0.0)
          {
            *(v31 + 1) = 1;
            *(v31 + 16) = 0;
            *(v31 + 20) = 1;
          }
        }

        v30 |= *(v31 + 1);
      }

      v29 += 8;
    }

    while (v29 != 80);
    *(v15 + 764) = v30 & 1;
  }

  if (*(v15 + 392) <= v16)
  {
    v34 = *(v15 + 328);
    v35 = *(v15 + 336);
    v36 = *(v15 + 320);
    v37 = v16 + v35;
    v38 = &v34[4 * v35];
    v39 = v16 + v35 - v36;
    if (v16 + v35 <= v36)
    {
      memcpy(v38, mData, 4 * v16);
    }

    else
    {
      memcpy(v38, mData, 4 * (v36 - v35));
      memcpy(v34, &mData[4 * (v16 - v39)], 4 * v39);
      v37 = v39;
    }

    *(v15 + 336) = v37;
    __C = 0.0;
    vDSP_svesq(mData, 1, &__C, v16);
    *(v15 + 796) = 0;
    if (__C >= *(v15 + 792) || (*(v15 + 436) & 1) != 0)
    {
      v40 = 0;
      *(v15 + 800) = 0;
      v41 = *(v15 + 320);
    }

    else
    {
      *(v15 + 796) = 1;
      v40 = *(v15 + 800);
      v41 = *(v15 + 320);
      if (v40 < v41)
      {
        v40 += v16;
        *(v15 + 800) = v40;
      }
    }

    if (v40 < v41 || *(v15 + 436) == 1)
    {
      v42 = *(v15 + 352) + v16;
      *(v15 + 352) = v42;
      *(v15 + 748) += v16;
      *(v15 + 372) += v16;
    }

    else
    {
      v42 = 0;
      *(v15 + 352) = 0;
      *(v15 + 748) = 0;
      *(v15 + 372) = 0;
    }

    *(v15 + 360) += v16;
    v43 = *(v15 + 776);
    if (v42 >= v43)
    {
      *(v15 + 368) = 1;
    }

    if (*(v15 + 1208))
    {
      v126 = 0;
    }

    else
    {
      v126 = *(v15 + 436);
    }

    if (v40 >= v41)
    {
      goto LABEL_85;
    }

    v44 = *(v15 + 436);
    if ((*(v15 + 368) & 1) == 0 || *(v15 + 436))
    {
      goto LABEL_71;
    }

    v47 = *(v15 + 392);
    if (v47 >= *(v15 + 424))
    {
      v47 = *(v15 + 424);
    }

    v123 = v47;
    if (v42 < v43)
    {
      goto LABEL_85;
    }

    v44 = 0;
    v63 = 0;
    v124 = v14;
    v64 = (v15 + 256);
    v137 = (v15 + 1768);
    v138 = (v15 + 240);
    v132 = (v15 + 1520);
    v125 = v16;
    while (1)
    {
      if (v44)
      {
        goto LABEL_223;
      }

      v129 = v63;
      v65 = *(v15 + 540) + v63;
      v66 = *(v15 + 336) - (v41 - v65);
      v131 = v41 - v65;
      *(v15 + 744) = v41 - v65;
      v67 = v41 >= v65 ? (v41 & (v66 >> 31)) + v66 : 0;
      v68 = *(v15 + 153);
      v148 = 0.0;
      v146 = 0;
      v144 = 0;
      v127 = v67;
      if (*(v15 + 440))
      {
        break;
      }

      v130 = 0.0;
      v71 = 0;
      v75 = 0.0;
LABEL_208:
      v117 = v71;
      v14 = v124;
      v16 = v125;
      if (v68)
      {
        if (*(v15 + 572))
        {
          v117 = LODWORD(v130);
        }

        if (v117 + v127 >= v41)
        {
          v118 = v41;
        }

        else
        {
          v118 = 0;
        }

        v119 = v117 + v127 - v118;
        if (v41 < v117)
        {
          v119 = 0;
        }

        *(v15 + 744) = v131 - v117;
        v63 = v129;
        if (*(v15 + 152) == 1)
        {
          v120 = *(v15 + 540);
          v119 = (v41 & ((v119 - v120) >> 31)) + v119 - v120;
          if (v41 < v120)
          {
            v119 = 0;
          }
        }

        *(v15 + 496) = v119;
        *(v15 + 500) = v75;
        v44 = 1;
        *(v15 + 436) = 1;
        v121 = *(v15 + 352);
      }

      else
      {
        v44 = 0;
        *(v15 + 744) = 0;
        *(v15 + 436) = 0;
        v121 = *(v15 + 352) - v123;
        *(v15 + 352) = v121;
        v63 = v129 + v123;
      }

      if (v121 < *(v15 + 776))
      {
        if (v68)
        {
LABEL_223:
          if (*(v15 + 152) == 1 && *(v15 + 1216))
          {
            *(v15 + 372) = *(v15 + 780);
            v122 = *(v15 + 496);
            *(v15 + 384) = v122;
            *(v15 + 388) = v122;
            *(v15 + 748) = 0;
            a8.n128_u64[1] = 0;
            *(v15 + 1208) = 0;
            *(v15 + 356) = 0;
            if (v44)
            {
              v45 = 0;
              v126 = 1;
              goto LABEL_73;
            }

            goto LABEL_85;
          }

          v126 = 1;
        }

LABEL_71:
        if ((v44 & 1) == 0)
        {
          goto LABEL_85;
        }

        v45 = *(v15 + 1208);
        if (v45 <= 9)
        {
LABEL_73:
          if (*(v15 + 4 * v45 + 648) == 2 && *(v15 + 372) >= *(v15 + 424) && (*(v15 + 1433) & 1) == 0)
          {
            v46 = AcousticPasscodeDec_CheckConfirmation(v15, v45, *(v15 + 388));
            *(v15 + 436) = v46;
            if (!v46)
            {
              *(v15 + 372) = 0;
              *(v15 + 748) = 0;
              a8.n128_u64[1] = 0;
              *(v15 + 384) = 0;
              *(v15 + 1228) = 0;
              *(v15 + 1433) = 0;
              *(v15 + 1516) = 0;
              memset((v15 + 1232), 48, 20);
              *(v15 + 1208) = 0;
              *(v15 + 1252) = 0u;
              *(v15 + 1268) = 0u;
              *(v15 + 1284) = 0;
              *(v15 + 1436) = 0u;
              *(v15 + 1452) = 0u;
              *(v15 + 1468) = 0;
              goto LABEL_85;
            }
          }
        }

        if (*(v15 + 152) == 1 && *(v15 + 1216))
        {
          AcousticPasscodeDec_RunBitDetectAndConfirmation(v15, v126 & 1);
        }

LABEL_85:
        if (v14)
        {
          if (!*(v15 + 436) || (*(v15 + 796) & 1) != 0 || *(v15 + 1433) == 1)
          {
            if (*(v15 + 1433) == 1 && *(v15 + 444) == 1)
            {
              *(v15 + 372) = 0;
              vDSP_vclr(v14, 1, v16);
              v48 = *(v15 + 1216);
              if (v48 < v16 && v48)
              {
                v49 = (v15 + 1232);
                do
                {
                  v50 = *v49++;
                  if (v50 == 48)
                  {
                    v51 = 0.0;
                  }

                  else
                  {
                    v51 = 1.0;
                  }

                  *v14++ = v51;
                  --v48;
                }

                while (v48);
              }
            }

            else
            {
              *(v15 + 372) = 0;
              vDSP_vclr(v14, 1, v16);
            }
          }

          else
          {
            CopyInputCircBufferToBuffer(v14, *(v15 + 328), *(v15 + 384), v16, *(v15 + 320));
            v59 = *(v15 + 320);
            v60 = v16 + *(v15 + 384);
            if (v60 >= v59)
            {
              v61 = *(v15 + 320);
            }

            else
            {
              v61 = 0;
            }

            v62 = v60 - v61;
            if (v59 < v16)
            {
              v62 = 0;
            }

            *(v15 + 384) = v62;
          }
        }

        v52 = *(v15 + 1208);
        v53 = *(v15 + 1152);
        if ((v52 == v53 || *(v15 + 1212) >= *(v15 + 1216)) && (*(v15 + 1433) & 1) == 0 && *(v15 + 152) == 1)
        {
          v54 = v53 - 1 <= v52 || v52 >= v53;
          if (!v54)
          {
            bzero((v15 + 4 * v52 + 1252), 4 * (v53 - 1 - v52) + 4);
          }

          *(v15 + 1433) = 1;
          v55 = (v15 + 1232);
          ConvertSymbolStreamToBitStream(v15 + 1232, v15 + 1252, v15 + 1068, v53, *(v15 + 1216));
          if (*(v15 + 190) == 1)
          {
            *(v15 + 191) = 1;
            v56 = *(v15 + 1216);
            if (v56)
            {
              do
              {
                if (v55[100] != *v55)
                {
                  *(v15 + 191) = 0;
                }

                ++v55;
                --v56;
              }

              while (v56);
            }
          }

          LODWORD(v52) = *(v15 + 1208);
LABEL_118:
          *(v15 + 772) = v52;
          *(v15 + 376) = vadd_s32(*(v15 + 376), 0x100000001);
          if (*(v15 + 148) == 1)
          {
            AcousticPasscodeDec_ResetState(v15, 1);
          }

          if (*(v15 + 1652) == 1)
          {
            SetTimer(v15, v16);
          }
        }

        else if (*(v15 + 152))
        {
          *(v15 + 772) = 0;
        }

        else
        {
          v57 = *(v15 + 436);
          *(v15 + 772) = 0;
          if (v57 == 1)
          {
            goto LABEL_118;
          }
        }

        *(v15 + 120) = *(v15 + 436);
        *(v15 + 128) = *(v15 + 1433);
        *(v15 + 124) = *(v15 + 500);
        *(v15 + 129) = *(v15 + 189);
        a8.n128_u64[0] = *(v15 + 376);
        *(v15 + 132) = a8.n128_u64[0];
        *(v15 + 140) = *(v15 + 190);
        *(v15 + 142) = *(v15 + 764);
        goto LABEL_123;
      }
    }

    v69 = 0;
    v70 = 0;
    v139 = 0.0;
    v71 = 0;
    v130 = 0.0;
    v72 = 0.0;
    v128 = 1;
    v73 = (v15 + 648);
    v74 = 1;
    v75 = 0.0;
    v133 = 0;
    v134 = 1;
    v76 = 0.0;
    v77 = (v15 + 648);
    while (1)
    {
      v78 = *v77++;
      if (v78 == 1 && *(v15 + 572) == 1)
      {
        if (v74)
        {
          v141 = v68;
          CopyInputCircBufferToBuffer(*(v15 + 216), *(v15 + 328), v67, *(v15 + 528), v41);
          v79 = *(v15 + 536);
          if (v79)
          {
            vDSP_vclr((*(v15 + 216) + 4 * *(v15 + 520)), 1, v79);
          }

          v80 = *(v15 + 1632);
          if (v80 == 1)
          {
            v81 = v73[10];
            if (v81 >= *(v15 + 632))
            {
              v81 = *(v15 + 632);
            }

            v135 = v71;
            v82 = *(v15 + 1640) + 16 * v81;
            v83 = *(v15 + 1572);
            v84 = *(v15 + 1568);
            v85 = 4 * (v84 + ~v83);
            BandPassFFT(*(v15 + 256), *(v15 + 264), v149, v84, v83, *(v15 + 532));
            memcpy((*(v15 + 256) + 4 * v83), *v82, v85);
            v86 = *(v82 + 8);
            v71 = v135;
            v87 = v85;
            v64 = (v15 + 256);
            memcpy((*(v15 + 264) + 4 * v83), v86, v87);
          }

          else
          {
            AcousticPasscodeDec_GetAuxCode(v15, *(v15 + 224), v70);
          }

          v88 = *(v15 + 424);
          v89 = LODWORD(v139) + (v88 >> 1);
          v54 = v89 >= v88;
          v90 = v89 - v88;
          if (!v54)
          {
            v90 = 0;
          }

          ShiftedMatchedFilterSearch_FreqLim(&v144 + 1, &v148, &v144, &v147, v80, *(v15 + 216), *(v15 + 224), *(v15 + 216), v138, v64, v137, (v15 + 1556), v90);
          if (v70 && v70 - 1 == v133)
          {
            v91 = *(v15 + 424);
            v92 = v148;
            v93 = LODWORD(v139) - v91;
            if (LODWORD(v139) <= v91)
            {
              goto LABEL_163;
            }

            v94 = LODWORD(v148) - v93;
            v95 = v93 >= LODWORD(v148);
            v96 = v93 - LODWORD(v148);
            if (v95)
            {
              v97 = *(v15 + 424);
            }

            else
            {
              v97 = 0;
            }

            if (!v95)
            {
              v96 = v94;
            }

            v54 = v91 >= v96;
            v98 = v91 - v96;
            if (!v54)
            {
              v98 = v97;
            }

            if (v91 >= 2 * v98)
            {
LABEL_163:
              v99 = 1;
            }

            else
            {
              v99 = v76 > *(v15 + 736);
            }
          }

          else
          {
            v99 = 1;
            v92 = v148;
          }

          v68 = v141;
          v100 = *(&v144 + 1);
          v76 = *&v144;
          if (v134)
          {
            v101 = (v131 - LODWORD(v92));
            *(v15 + 744) = v101;
            v75 = (*(v15 + 360) - v101) / *(v15 + 420);
            v130 = v92;
          }

          v134 = 0;
          v74 = v99 && v100 > *(v15 + 736);
          v133 = v70;
          v139 = v92;
        }

        else
        {
          v74 = 0;
        }
      }

      v102 = *(v15 + 456);
      if (!v102 && !*(v15 + 572))
      {
        v71 = 0;
        v68 = 1;
        v72 = 1.0;
        goto LABEL_185;
      }

      if (!v74 && (*(v15 + 572) & 1) != 0)
      {
        goto LABEL_174;
      }

      if (!v102)
      {
        if (!*(v15 + 572))
        {
          v71 = 0;
          v72 = 1.0;
        }

LABEL_183:
        v68 = 1;
        goto LABEL_185;
      }

      if (v70 < v102)
      {
        break;
      }

LABEL_185:
      v41 = *(v15 + 320);
      v111 = *(v15 + 424);
      if (v111 + v67 >= v41)
      {
        v112 = *(v15 + 320);
      }

      else
      {
        v112 = 0;
      }

      if (v41 >= v111)
      {
        v67 = v111 + v67 - v112;
      }

      else
      {
        v67 = 0;
      }

      ++v70;
      v69 += 16;
      v73 = v77;
      if (v70 >= *(v15 + 440))
      {
        goto LABEL_208;
      }
    }

    v140 = v74;
    v142 = v68;
    CopyInputCircBufferToBuffer(*(v15 + 216), *(v15 + 328), v67, *(v15 + 528), *(v15 + 320));
    v103 = *(v15 + 536);
    if (v103)
    {
      vDSP_vclr((*(v15 + 216) + 4 * *(v15 + 520)), 1, v103);
    }

    v104 = *(v15 + 1632);
    if (v104 == 1)
    {
      v136 = v71;
      v105 = *(v15 + 1640) + v69;
      v106 = *(v15 + 1536);
      v107 = *(v15 + 1532);
      v108 = 4 * (v107 + ~v106);
      BandPassFFT(*(v15 + 256), *(v15 + 264), v149, v107, v106, *(v15 + 532));
      memcpy((*(v15 + 256) + 4 * v106), *(v105 + 48), v108);
      v109 = *(v105 + 56);
      v71 = v136;
      v110 = v108;
      v64 = (v15 + 256);
      memcpy((*(v15 + 264) + 4 * v106), v109, v110);
    }

    else
    {
      v113 = *(v15 + 224);
      memcpy(v113, *(v15 + 464 + 8 * v70), 4 * *(v15 + 424));
      vDSP_vclr(v113 + *(v15 + 424), 1, (*(v15 + 528) - *(v15 + 424)));
    }

    v114 = *(v15 + 216);
    v115 = *(v15 + 224);
    if (*(v15 + 155) == 1)
    {
      ShiftedMatchedFilterSearch_FreqLim(&v144 + 1, &v146, &v144, &v145, v104, v114, v115, v114, v138, v64, v137, v132, 0);
    }

    else
    {
      ShiftedMatchedFilterSearch_TimeLim(&v144 + 1, &v146, v104, v114, v115, v138, v64, v137, v132);
    }

    v116 = *(v15 + 504);
    v74 = v140;
    if (*(v15 + 153))
    {
      if (*(&v144 + 1) >= v116 && (v142 & 1) != 0)
      {
LABEL_202:
        if ((*(v15 + 572) & 1) == 0)
        {
          if ((v128 & 1) != 0 || *(&v144 + 1) > v72)
          {
            v128 = 0;
            v68 = 1;
            v71 = v146;
            v72 = *(&v144 + 1);
            goto LABEL_185;
          }

          v128 = 0;
        }

        goto LABEL_183;
      }
    }

    else if ((*(&v144 + 1) >= v116) | v142 & 1)
    {
      goto LABEL_202;
    }

LABEL_174:
    v68 = 0;
    goto LABEL_185;
  }

LABEL_123:
  AUAcousticPasscodeDec::SetOutputParamsFromKernel(this, a8);
  *(this + 136) = *(*(this + 295) + 764) ^ 1;
  return 0;
}

void *AUAcousticPasscodeDec::SetOutputParamsFromKernel(void *this, __n128 a2)
{
  if (*(this[295] + 156) == 1)
  {
    v2 = this;
    v3 = 50;
    while (2)
    {
      v4 = v2[294];
      a2.n128_u64[0] = 0;
      switch(v3)
      {
        case 0:
          a2.n128_u32[0] = *(v4 + 8);
          goto LABEL_43;
        case 1:
          a2.n128_u32[0] = *(v4 + 20);
          goto LABEL_43;
        case 2:
          a2.n128_u32[0] = *(v4 + 24);
          goto LABEL_43;
        case 3:
          a2.n128_u8[0] = *(v4 + 12);
          goto LABEL_43;
        case 4:
          a2.n128_u8[0] = *(v4 + 13);
          goto LABEL_43;
        case 5:
          a2.n128_u8[0] = *(v4 + 14);
          goto LABEL_43;
        case 6:
          a2.n128_u8[0] = *(v4 + 15);
          goto LABEL_43;
        case 7:
        case 8:
        case 9:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
          goto LABEL_44;
        case 10:
          a2.n128_u32[0] = *(v4 + 28);
          goto LABEL_43;
        case 11:
          a2.n128_u8[0] = *(v4 + 32);
          goto LABEL_43;
        case 12:
          a2.n128_u32[0] = *(v4 + 36);
          goto LABEL_43;
        case 13:
          a2.n128_u32[0] = *(v4 + 44);
          goto LABEL_44;
        case 14:
          a2.n128_u32[0] = *(v4 + 48);
          goto LABEL_44;
        case 15:
          a2.n128_u32[0] = *(v4 + 56);
          goto LABEL_43;
        case 16:
          a2.n128_u32[0] = *(v4 + 52);
          goto LABEL_44;
        case 17:
          a2.n128_u32[0] = *(v4 + 40);
          goto LABEL_43;
        case 18:
          a2.n128_u32[0] = *(v4 + 60);
          goto LABEL_44;
        case 19:
          a2.n128_u32[0] = *(v4 + 64);
          goto LABEL_44;
        case 30:
          a2.n128_u8[0] = *(v4 + 84);
          goto LABEL_43;
        case 31:
          a2.n128_u32[0] = *(v4 + 88);
          goto LABEL_44;
        case 32:
          a2.n128_u32[0] = *(v4 + 92);
          goto LABEL_44;
        case 33:
          a2.n128_u32[0] = *(v4 + 96);
          goto LABEL_44;
        case 34:
          a2.n128_u32[0] = *(v4 + 68);
          goto LABEL_44;
        case 35:
          a2.n128_u32[0] = *(v4 + 72);
          goto LABEL_44;
        case 36:
          a2.n128_u32[0] = *(v4 + 76);
          goto LABEL_44;
        case 37:
          a2.n128_u32[0] = *(v4 + 80);
          goto LABEL_44;
        case 38:
          a2.n128_u32[0] = *(v4 + 100);
          goto LABEL_44;
        case 39:
          a2.n128_u32[0] = *(v4 + 108);
          goto LABEL_44;
        case 40:
          a2.n128_u32[0] = *(v4 + 104);
          goto LABEL_44;
        case 50:
          a2.n128_u8[0] = *(v4 + 120);
          goto LABEL_43;
        case 51:
          a2.n128_u32[0] = *(v4 + 124);
          goto LABEL_44;
        case 52:
          a2.n128_u8[0] = *(v4 + 128);
          goto LABEL_43;
        case 53:
          a2.n128_u8[0] = *(v4 + 129);
          goto LABEL_43;
        case 54:
          a2.n128_u32[0] = *(v4 + 132);
          goto LABEL_43;
        case 55:
          a2.n128_u8[0] = *(v4 + 140);
          goto LABEL_43;
        case 56:
          a2.n128_u8[0] = *(v4 + 141);
          goto LABEL_43;
        case 57:
          a2.n128_u32[0] = *(v4 + 136);
          goto LABEL_43;
        case 58:
          a2.n128_u8[0] = *(v4 + 142);
          goto LABEL_43;
        default:
          if (v3 != 250)
          {
            goto LABEL_44;
          }

          a2.n128_u8[0] = *(v4 + 4);
LABEL_43:
          a2.n128_f32[0] = a2.n128_u32[0];
LABEL_44:
          this = (*(*v2 + 152))(v2, v3, 0, 0, 0, a2);
          v3 = (v3 + 1);
          if (v3 == 59)
          {
            return this;
          }

          continue;
      }
    }
  }

  return this;
}

os_log_t ___ZL27getAUAcousticPasscodeDecLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUAcousticPasscodeDec");
  getAUAcousticPasscodeDecLog(void)::gLog = result;
  return result;
}

uint64_t AUAcousticPasscodeDec::SetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (!a3 && *(this + 17) == 1 && a2 <= 0x28 && ((1 << a2) & 0x1C3C0000000) != 0)
  {
    ++*(this + 133);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AUAcousticPasscodeDec::GetParameter(AUAcousticPasscodeDec *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a3)
  {

    return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v10 & 1) == 0)
    {
      abort();
    }

    *a5 = ausdk::AUElement::GetParameter(v9, a2);
    if (a2 == 57)
    {
      v11 = *(this + 295);
      *(v11 + 136) = 0;
      *(v11 + 380) = 0;
    }

    return 0;
  }
}

uint64_t AUAcousticPasscodeDec::SetProperty(AUAcousticPasscodeDec *this, int a2, unsigned int a3, unsigned int a4, CFDictionaryRef *a5, unsigned int a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 != 5555)
  {
    if (a2 == 21)
    {
      if (a6 >= 4)
      {
        v7 = 0;
        *(this + 540) = *a5 != 0;
        return v7;
      }

      return 4294956445;
    }

    v15 = *(this + 294);
    if (!v15)
    {
      return 4294956417;
    }

    if ((a2 & 0x3FFF) == 0x13A2)
    {
      if (a5)
      {
        if (!SetBits((v15 + 1740), *a5))
        {
          *(v15 + 158) = 1;
          AcousticPasscodeDec_SetPlistOracleBitValuesOnAU(v15);
          v7 = 0;
          *(v15 + 190) = 1;
          return v7;
        }

        v7 = 26;
LABEL_31:
        if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
        }

        v13 = getAUAcousticPasscodeDecLog(void)::gLog;
        if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 134218240;
          v24 = this;
          v25 = 1024;
          v26 = v7;
          v14 = "[%p] AcousticPasscodeDec_setProperty called with result %d";
          goto LABEL_35;
        }

        return v7;
      }
    }

    else
    {
      if ((a2 & 0x3FFF) != 0x13A1)
      {
        v7 = *v15 | 0x1Au;
        goto LABEL_31;
      }

      if (a6 <= 0x14)
      {
        if (!a6)
        {
          goto LABEL_19;
        }

        v16 = (v15 + 1332);
        v17 = a6;
        do
        {
          v18 = *a5;
          a5 = (a5 + 1);
          *v16++ = v18;
          --v17;
        }

        while (v17);
        if (a6 != 20)
        {
LABEL_19:
          memset((v15 + a6 + 1332), 48, 20 - a6);
        }

        ConvertBitstreamToSymbolStream(v15 + 1352, v15 + 1332, v15 + 1068, v15 + 1108, *(v15 + 1152), *(v15 + 1216));
        v7 = 0;
        *(v15 + 190) = 1;
        return v7;
      }
    }

    v7 = 4294956445;
    goto LABEL_31;
  }

  if (!a5)
  {
    return 4294956445;
  }

  v8 = StoreMusicCodeTuningInPlist(this + 2616, *a5);
  if (!v8)
  {
    v19 = *(this + 295);
    *(v19 + 157) = 1;
    *(v19 + 159) = 0;
    if (*(v19 + 156) == 1 && (*(v19 + 1632) & 1) == 0)
    {
      v9.n128_u32[0] = *(v19 + 420);
      v7 = SetPlistValuesToInternalKernelVariables(v19, (v19 + 848), v19 + 648, v19 + 688, this + 2616, *(v19 + 424), *(v19 + 456), *(v19 + 732), v9, v10, v11, v12);
      if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v21 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218240;
        v24 = this;
        v25 = 1024;
        v26 = v7;
        _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "[%p] SetPlistValuesToInternalKernelVariables returned error %u", &v23, 0x12u);
      }

      AUAcousticPasscodeDec::LogPlistValues(this);
      if (v7)
      {
        return v7;
      }

      v22 = *(this + 295);
      *(v22 + 765) = 1;
      ConvertBitstreamToSymbolStream(v22 + 1352, v22 + 1332, v22 + 1068, v22 + 1108, *(v22 + 1152), *(v22 + 1216));
      v19 = *(this + 295);
      *(v19 + 159) = 1;
    }

    v7 = 0;
    *(v19 + 188) = 0;
    return v7;
  }

  v7 = v8;
  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

  v13 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218240;
    v24 = this;
    v25 = 1024;
    v26 = v7;
    v14 = "[%p] StoreMusicCodeTuningInPlist returned error %d";
LABEL_35:
    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, v14, &v23, 0x12u);
  }

  return v7;
}

void AUAcousticPasscodeDec::LogPlistValues(AUAcousticPasscodeDec *this)
{
  v65 = *MEMORY[0x1E69E9840];
  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

  v2 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(this + 295) + 852);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v3;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: Sample rate %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v4 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(this + 295) + 856);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v5;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: FullLen %u", buf, 0x12u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v6 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(this + 295) + 860);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v7;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: Len %u", buf, 0x12u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v8 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(this + 295) + 864);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v9;
    _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: DelayStartBitsMsec %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v10 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(this + 295) + 872);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v11;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: ChirpHzPerSec %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v12 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(this + 295) + 876);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v13;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: EnableChirpPolarity %u", buf, 0x12u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v14 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(this + 295) + 880);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v15;
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: rampUp %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v16 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(this + 295) + 896);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v17;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: gamma %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v18 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(this + 295) + 900);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v19;
    _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: Fshift %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v20 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(this + 295) + 904);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v21;
    _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: Fmax %5.3f", buf, 0x16u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v22 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(this + 295) + 1152);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v23;
    _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist: NumIntevals %u", buf, 0x12u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v24 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = this;
    _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist al  : ", buf, 0xCu);
    v25 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v25 = -1;
  }

  for (i = 0; i != 3; ++i)
  {
    while (1)
    {
      if (v25 != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v27 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      ++i;
      v25 = -1;
      if (i == 3)
      {
        goto LABEL_49;
      }
    }

    v28 = *(*(this + 295) + 4 * i + 884);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v28;
    _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEFAULT, "[%p]  %5.3f", buf, 0x16u);
    v25 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

LABEL_49:
  v29 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = this;
    _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist BaseShiftsPerInt : ", buf, 0xCu);
    v30 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v30 = -1;
  }

  for (j = 0; j != 10; ++j)
  {
    while (1)
    {
      if (v30 != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v32 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      ++j;
      v30 = -1;
      if (j == 10)
      {
        goto LABEL_62;
      }
    }

    v33 = *(*(this + 295) + 4 * j + 908);
    *buf = 134218240;
    v62 = this;
    v63 = 2048;
    v64 = v33;
    _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEFAULT, "[%p]  %5.3f", buf, 0x16u);
    v30 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

LABEL_62:
  v34 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = this;
    _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist Bits Per Interval  : ", buf, 0xCu);
    v35 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v35 = -1;
  }

  for (k = 0; k != 10; ++k)
  {
    while (1)
    {
      if (v35 != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v37 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      ++k;
      v35 = -1;
      if (k == 10)
      {
        goto LABEL_75;
      }
    }

    v38 = *(*(this + 295) + 4 * k + 1068);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v38;
    _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "[%p]  %u", buf, 0x12u);
    v35 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

LABEL_75:
  v39 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = this;
    _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "[%p] \n Kernel Plist Levels Per Interval : ", buf, 0xCu);
    v40 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v40 = -1;
  }

  for (m = 0; m != 10; ++m)
  {
    while (1)
    {
      if (v40 != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v42 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      ++m;
      v40 = -1;
      if (m == 10)
      {
        goto LABEL_88;
      }
    }

    v43 = *(*(this + 295) + 4 * m + 1108);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v43;
    _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEFAULT, "[%p]  %u", buf, 0x12u);
    v40 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

LABEL_88:
  v44 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(*(this + 295) + 1156);
    *buf = 134218240;
    v62 = this;
    v63 = 1024;
    LODWORD(v64) = v45;
    _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "[%p] \nKernel Plist NumFreqs %u", buf, 0x12u);
    v46 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v46 = -1;
  }

  if (*(*(this + 295) + 1152))
  {
    v47 = 0;
    v48 = 948;
    do
    {
      if (v46 != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v49 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v62 = this;
        v63 = 1024;
        LODWORD(v64) = v47;
        _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEFAULT, "[%p] \n Freq Interval %u  Freqs are: ", buf, 0x12u);
        v46 = getAUAcousticPasscodeDecLog(void)::onceToken;
      }

      else
      {
        v46 = -1;
      }

      v50 = *(this + 295);
      if (*(v50 + 1156))
      {
        v51 = 0;
        do
        {
          if (v46 != -1)
          {
            dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
          }

          v52 = getAUAcousticPasscodeDecLog(void)::gLog;
          if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *(*(this + 295) + v48 + 4 * v51);
            *buf = 134218240;
            v62 = this;
            v63 = 2048;
            v64 = v53;
            _os_log_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_DEFAULT, "[%p]  %5.3f", buf, 0x16u);
            v46 = getAUAcousticPasscodeDecLog(void)::onceToken;
          }

          else
          {
            v46 = -1;
          }

          ++v51;
          v50 = *(this + 295);
        }

        while (v51 < *(v50 + 1156));
      }

      ++v47;
      v48 += 12;
    }

    while (v47 < *(v50 + 1152));
  }

  if (v46 != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

  v54 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = this;
    _os_log_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_DEFAULT, "[%p] \nKernel Plist AUX code types and assignments", buf, 0xCu);
    v55 = getAUAcousticPasscodeDecLog(void)::onceToken;
  }

  else
  {
    v55 = -1;
  }

  for (n = 648; n != 688; n += 4)
  {
    if (v55 != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }

    v57 = getAUAcousticPasscodeDecLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v58 = *(*(this + 295) + n);
      *buf = 134218240;
      v62 = this;
      v63 = 1024;
      LODWORD(v64) = v58;
      _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEFAULT, "[%p]  AuxCodeUseInInt %u ", buf, 0x12u);
      if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }
    }

    v59 = getAUAcousticPasscodeDecLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(*(this + 295) + n + 40);
      *buf = 134218240;
      v62 = this;
      v63 = 1024;
      LODWORD(v64) = v60;
      _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_DEFAULT, "[%p]  AuxSymbolVals %u ", buf, 0x12u);
      v55 = getAUAcousticPasscodeDecLog(void)::onceToken;
    }

    else
    {
      v55 = -1;
    }
  }
}

uint64_t AUAcousticPasscodeDec::GetProperty(AUAcousticPasscodeDec *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 5034)
  {
    if (a2 > 5002)
    {
      if (a2 > 5029)
      {
        if (a2 == 5030)
        {
          v37 = 0;
          v38 = *(this + 295) + 1252;
          do
          {
            result = 0;
            a5[v37] = *(v38 + v37 * 4);
            ++v37;
          }

          while (v37 != 10);
        }

        else if (a2 == 5032)
        {
          v23 = 0;
          v24 = *(this + 295) + 1252;
          do
          {
            result = 0;
            *&a5[v23] = *(v24 + v23 * 4);
            ++v23;
          }

          while (v23 != 10);
        }
      }

      else if (a2 == 5003)
      {
        v30 = 0;
        v31 = *(this + 295) + 1232;
        do
        {
          result = 0;
          a5[v30] = *(v31 + v30) != 48;
          ++v30;
        }

        while (v30 != 20);
      }

      else if (a2 == 5025)
      {
        for (i = 0; i != 20; ++i)
        {
          result = 0;
          *(a5 + i) = *(*(this + 295) + i + 1332);
        }
      }
    }

    else if (a2 > 5000)
    {
      if (a2 == 5001)
      {
        for (j = 0; j != 20; ++j)
        {
          result = 0;
          *(a5 + j) = *(*(this + 295) + j + 1232);
        }
      }

      else
      {
        v16 = 0;
        v17 = *(this + 295) + 1232;
        do
        {
          result = 0;
          if (*(v17 + v16) == 48)
          {
            v18 = 0.0;
          }

          else
          {
            v18 = 1.0;
          }

          *&a5[v16++] = v18;
        }

        while (v16 != 20);
      }
    }

    else
    {
      if (a2 == 21)
      {
        result = 0;
        v8 = *(*(this + 295) + 416);
        goto LABEL_67;
      }

      if (a2 == 3700)
      {
        result = 0;
        v8 = *(this + 376);
LABEL_67:
        *a5 = v8;
        return result;
      }
    }

    return result;
  }

  if (a2 > 105024)
  {
    if (a2 > 105034)
    {
      if (a2 == 105035)
      {
        memset(&v43, 0, sizeof(v43));
        std::vector<unsigned int>::resize(&v43, 0xAuLL);
        begin = v43.__begin_;
        v40 = *(this + 295);
        v41 = *(v40 + 1352);
        v42 = *(v40 + 1368);
        *(v43.__begin_ + 4) = *(v40 + 1384);
        *begin = v41;
        *(begin + 1) = v42;
        CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(&v43);
      }

      else
      {
        if (a2 != 105045)
        {
          return result;
        }

        memset(&v43, 0, sizeof(v43));
        std::vector<float>::resize(&v43, 0xAuLL);
        v25 = v43.__begin_;
        v26 = *(*(this + 295) + 1436);
        v27 = *(*(this + 295) + 1452);
        *(v43.__begin_ + 4) = *(*(this + 295) + 1468);
        *v25 = v26;
        *(v25 + 1) = v27;
        CFArray = applesauce::CF::details::make_CFArrayRef<float>(&v43);
      }

      goto LABEL_72;
    }

    if (a2 != 105025)
    {
      if (a2 != 105030)
      {
        return result;
      }

      memset(&v43, 0, sizeof(v43));
      std::vector<unsigned int>::resize(&v43, 0xAuLL);
      v12 = v43.__begin_;
      v13 = *(*(this + 295) + 1252);
      v14 = *(*(this + 295) + 1268);
      *(v43.__begin_ + 4) = *(*(this + 295) + 1284);
      *v12 = v13;
      *(v12 + 1) = v14;
      CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(&v43);
      goto LABEL_72;
    }

    memset(&v43, 0, sizeof(v43));
    std::vector<float>::resize(&v43, 0x14uLL);
    v32 = 0;
    v33 = v43.__begin_;
    v34 = *(this + 295) + 1332;
    do
    {
      if (*(v34 + v32) == 48)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 1.0;
      }

      *&v33[v32++] = v35;
    }

    while (v32 != 20);
LABEL_41:
    CFArray = applesauce::CF::details::make_CFArrayRef<float>(&v43);
LABEL_72:
    *a5 = CFArray;
    if (v43.__begin_)
    {
      v43.__end_ = v43.__begin_;
      operator delete(v43.__begin_);
    }

    return 0;
  }

  if (a2 <= 5059)
  {
    if (a2 == 5035)
    {
      v28 = 0;
      v29 = *(this + 295) + 1352;
      do
      {
        result = 0;
        a5[v28] = *(v29 + v28 * 4);
        ++v28;
      }

      while (v28 != 10);
    }

    else if (a2 == 5045)
    {
      v9 = 0;
      v10 = *(this + 295) + 1436;
      do
      {
        result = 0;
        a5[v9] = *(v10 + v9 * 4);
        ++v9;
      }

      while (v9 != 10);
    }

    return result;
  }

  if (a2 == 5060)
  {
    result = 0;
    v8 = *(this + 136);
    goto LABEL_67;
  }

  if (a2 == 105001)
  {
    memset(&v43, 0, sizeof(v43));
    std::vector<float>::resize(&v43, 0x14uLL);
    v19 = 0;
    v20 = v43.__begin_;
    v21 = *(this + 295) + 1232;
    do
    {
      if (*(v21 + v19) == 48)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = 1.0;
      }

      *&v20[v19++] = v22;
    }

    while (v19 != 20);
    goto LABEL_41;
  }

  return result;
}

void sub_1DDC64388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned int>(int **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>((8 * v7), v6);
        v16 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = v13;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v15);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_1DDC64520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::GetPropertyInfo(AUAcousticPasscodeDec *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 > 5034)
    {
      if (a2 > 105024)
      {
        if (a2 > 105034)
        {
          if (a2 == 105035)
          {
            goto LABEL_32;
          }

          v9 = -26027;
        }

        else
        {
          if (a2 == 105025)
          {
            v8 = 80;
            goto LABEL_36;
          }

          v9 = -26042;
        }

        v7 = v9 | 0x10000;
LABEL_31:
        if (a2 != v7)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (a2 > 5059)
      {
        if (a2 == 5060)
        {
LABEL_33:
          v11 = 0;
          v8 = 4;
          goto LABEL_38;
        }

        v10 = 105001;
LABEL_24:
        if (a2 != v10)
        {
          return result;
        }

LABEL_25:
        v11 = 0;
        v8 = 80;
LABEL_38:
        result = 0;
        *a6 = v11;
        *a5 = v8;
        return result;
      }

      if (a2 != 5035)
      {
        v7 = 5045;
        goto LABEL_31;
      }
    }

    else
    {
      if (a2 <= 5002)
      {
        if (a2 <= 5000)
        {
          if (a2 != 21)
          {
            if (a2 != 3700)
            {
              return result;
            }

            goto LABEL_33;
          }

          v8 = 4;
LABEL_36:
          v11 = 1;
          goto LABEL_38;
        }

        if (a2 == 5001)
        {
          v11 = 0;
          v8 = 20;
          goto LABEL_38;
        }

        v10 = 5002;
        goto LABEL_24;
      }

      if (a2 <= 5029)
      {
        if (a2 != 5003)
        {
          if (a2 != 5025)
          {
            return result;
          }

          v8 = 20;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (a2 != 5030)
      {
        v7 = 5032;
        goto LABEL_31;
      }
    }

LABEL_32:
    v11 = 0;
    v8 = 40;
    goto LABEL_38;
  }

  return result;
}

uint64_t AUAcousticPasscodeDec::Reset(AUAcousticPasscodeDec *this)
{
  v2 = *(this + 295);
  if (*(v2 + 156) == 1)
  {
    v3.n128_f64[0] = AcousticPasscodeDec_ResetState(v2, 0);
    AUAcousticPasscodeDec::SetOutputParamsFromKernel(this, v3);
    *(this + 136) = 1;
  }

  return 0;
}

uint64_t AUAcousticPasscodeDec::Initialize(AUAcousticPasscodeDec *this)
{
  v206 = *MEMORY[0x1E69E9840];
  *(this + 376) = 1;
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v3 >= 2)
  {
    v6 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v6 - 1);
      if (!Element)
      {
        break;
      }

      v8 = Element;
      v9 = ausdk::AUScope::GetElement((this + 80), v6);
      if (!v9)
      {
        break;
      }

      if (*(v8 + 80) != *(v9 + 80))
      {
        return 4294956428;
      }

      if (v3 == ++v6)
      {
        goto LABEL_13;
      }
    }

LABEL_214:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_13:
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10)
  {
    goto LABEL_214;
  }

  v11 = *(v10 + 92);
  v12 = *(v10 + 108);
  *(this + 139) = 1;
  if ((v11 & 0x20) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(this + 140) = v13;
  if (v5 >= 2)
  {
    v14 = 1;
    do
    {
      v15 = ausdk::AUScope::GetElement((this + 128), v14 - 1);
      if (!v15)
      {
        goto LABEL_214;
      }

      v16 = *(v15 + 80);
      v17 = ausdk::AUScope::GetElement((this + 128), v14);
      if (!v17)
      {
        goto LABEL_214;
      }

      if (v16 != *(v17 + 80))
      {
        return 4294956428;
      }
    }

    while (v5 != ++v14);
  }

  v18 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v18)
  {
    goto LABEL_214;
  }

  v19 = *(v18 + 80);
  v20 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v20)
  {
    goto LABEL_214;
  }

  if (v19 != *(v20 + 80))
  {
    return 4294956428;
  }

  *(this + 138) = *(this + 84);
  *(this + 134) = *(this + 133);
  v23 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v23)
  {
    goto LABEL_214;
  }

  v24 = *(v23 + 80);
  *(this + 137) = v24;
  *(this + 2376) = xmmword_1DE096230;
  *(this + 2392) = xmmword_1DE09BEF0;
  *(this + 2408) = xmmword_1DE09BF00;
  *(this + 2424) = xmmword_1DE09BF10;
  *(this + 2440) = xmmword_1DE09BF20;
  *(this + 2456) = xmmword_1DE09BF30;
  *(this + 2472) = xmmword_1DE09BF40;
  *(this + 2488) = xmmword_1DE09BF50;
  *(this + 2504) = xmmword_1DE09BF60;
  *(this + 630) = 58;
  v25 = 2376;
  v201 = 0.0;
  do
  {
    v26 = *(this + v25);
    AUAcousticPasscodeDec::GetParameter(this, v26, 0, 0, &v201);
    AcousticPasscodeDec_setParameter(*(this + 294), v26, v201);
    v25 += 4;
  }

  while (v25 != 2524);
  v27 = *(this + 295);
  if ((*(v27 + 157) & 1) != 0 && (*(v27 + 159) & 1) == 0)
  {
    v28 = 0;
    v29 = (v27 + 1108);
    do
    {
      v30 = *(this + v28 + 2668);
      if (v30 >= 2)
      {
        v30 = 2;
      }

      *(v27 + 1068 + v28) = v30;
      v28 += 4;
    }

    while (v28 != 40);
    v31 = 10;
    do
    {
      v32 = *(v29 - 10) - 1;
      if (v32 > 2)
      {
        v33 = 0;
      }

      else
      {
        v33 = dword_1DE0A068C[v32];
      }

      *v29++ = v33;
      --v31;
    }

    while (v31);
    for (i = 0; i != 40; i += 4)
    {
      *(v27 + 648 + i) = *(this + i + 3156);
    }
  }

  v35 = *(v27 + 8);
  *(v27 + 420) = *(this + 137);
  *(v27 + 392) = *(this + 138);
  *(v27 + 412) = *(v27 + 408);
  v36 = *(v27 + 12);
  *(v27 + 148) = v35 != 0;
  *(v27 + 152) = v36;
  if (v35)
  {
    *(v27 + 1632) = 1;
    *(v27 + 1652) = 1;
  }

  v37 = *(v27 + 28);
  if (v37 >= 3)
  {
    v37 = 3;
  }

  *(v27 + 456) = v37;
  v38 = *(v27 + 32);
  *(v27 + 572) = v38;
  v39 = *(v27 + 36);
  v40 = vmin_u32(v39, 0x300000003);
  *(v27 + 728) = v40;
  *(v27 + 632) = v40.i32[1] - 1;
  if (v39.i32[0] && v39.i32[1])
  {
    v41 = v40.i32[0];
    if (v37 > v40.i32[0])
    {
      v41 = v37;
    }

    if (v38)
    {
      v37 = v41;
    }
  }

  else
  {
    *(v27 + 572) = 0;
  }

  if (v37 <= 1)
  {
    v37 = 1;
  }

  v42 = (v27 + 396);
  v43 = *(v27 + 44);
  v44 = *(v27 + 48);
  *(v27 + 396) = v43;
  if (v43 > 500.0)
  {
    v42 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v43 < 10.0)
  {
    v42 = &kParamValue_Mode1Distance_Max;
  }

  *(v27 + 396) = *v42;
  *(v27 + 440) = v37;
  v45 = (v27 + 400);
  *(v27 + 400) = v44;
  if (v44 > 500.0)
  {
    v45 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v44 < 10.0)
  {
    v45 = &kParamValue_Mode1Distance_Max;
  }

  *(v27 + 400) = *v45;
  v46 = *(v27 + 56);
  v47 = (v27 + 840);
  *(v27 + 840) = v46;
  if (v46 > 3)
  {
    v47 = &kAUAcousticPasscodeMax_NumFreqsPerCodeToUse;
  }

  if (v46)
  {
    v48 = v47;
  }

  else
  {
    v48 = &kAUAcousticPasscodeMin_NumBits;
  }

  *(v27 + 840) = *v48;
  v49 = *(v27 + 52);
  v50 = (v27 + 404);
  *(v27 + 404) = v49;
  if (v49 > 125.0)
  {
    v50 = &kAUAcousticPasscodeMax_DelaySlop4bitsMsec;
  }

  if (v49 < 20.0)
  {
    v50 = &kParamValue_UppGain_Max;
  }

  *(v27 + 404) = *v50;
  v51 = *(v27 + 24);
  v52 = (v27 + 1224);
  *(v27 + 1224) = v51;
  if (v51 > 0x14)
  {
    v52 = &kAUAcousticPasscodeMax_NumBits;
  }

  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = &kAUAcousticPasscodeMin_NumBits;
  }

  *(v27 + 1224) = *v53;
  v54 = *(v27 + 60);
  v55 = &kAUAcousticPasscodeDecMax_Cut;
  if (v54 <= 12000.0)
  {
    v56 = (v27 + 60);
  }

  else
  {
    v56 = &kAUAcousticPasscodeDecMax_Cut;
  }

  if (v54 < 0.0)
  {
    v56 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v57 = *v56;
  *(v27 + 816) = *v56;
  v58 = *(v27 + 64);
  if (v58 <= 12000.0)
  {
    v59 = (v27 + 64);
  }

  else
  {
    v59 = &kAUAcousticPasscodeDecMax_Cut;
  }

  if (v58 < 0.0)
  {
    v59 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v60 = *v59;
  *(v27 + 820) = *v59;
  if (v57 == 0.0 && v60 == 0.0)
  {
    *(v27 + 816) = 0x45ABE00046147000;
  }

  else if (v57 < v60)
  {
    *(v27 + 816) = v60;
  }

  v61 = *(v27 + 68);
  if (v61 <= 12000.0)
  {
    v62 = (v27 + 68);
  }

  else
  {
    v62 = &kAUAcousticPasscodeDecMax_Cut;
  }

  if (v61 < 0.0)
  {
    v62 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v63 = *v62;
  *(v27 + 824) = *v62;
  v64 = (v27 + 72);
  v65 = *(v27 + 72);
  if (v65 > 12000.0)
  {
    v64 = &kAUAcousticPasscodeDecMax_Cut;
  }

  if (v65 < 0.0)
  {
    v64 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v66 = *v64;
  *(v27 + 828) = *v64;
  if (v63 < v66)
  {
    *(v27 + 824) = v66;
  }

  v67 = *(v27 + 76);
  if (v67 <= 12000.0)
  {
    v68 = (v27 + 76);
  }

  else
  {
    v68 = &kAUAcousticPasscodeDecMax_Cut;
  }

  if (v67 < 0.0)
  {
    v68 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v69 = *v68;
  *(v27 + 832) = *v68;
  v70 = *(v27 + 80);
  if (v70 <= 12000.0)
  {
    v55 = (v27 + 80);
  }

  if (v70 < 0.0)
  {
    v55 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v71 = *v55;
  *(v27 + 836) = *v55;
  if (v69 < v71)
  {
    *(v27 + 832) = v71;
  }

  AcousticPasscodeDec_SetRealTimeTunableThresholds(v27, v27 + 8);
  if (*(v27 + 158) == 1)
  {
    AcousticPasscodeDec_SetPlistOracleBitValuesOnAU(v27);
  }

  *(v27 + 376) = 0;
  v72 = *(v27 + 420) * 0.001;
  v73 = vcvtas_u32_f32(v72 * *(v27 + 396));
  *(v27 + 424) = v73;
  v74 = vcvtas_u32_f32(v72 * *(v27 + 400));
  if (2 * v73 < v74)
  {
    v74 = 2 * v73;
  }

  *(v27 + 428) = v74;
  v75 = vcvtas_u32_f32(v72 * *(v27 + 404));
  *(v27 + 432) = v75;
  *(v27 + 524) = v73;
  v76 = *(v27 + 392) + 2 * v75;
  *(v27 + 516) = v76;
  *(v27 + 508) = v76 >> 1;
  *(v27 + 512) = v76 - (v76 >> 1);
  *(v27 + 556) = v73;
  *(v27 + 548) = 2 * v75;
  *(v27 + 540) = v75 & 0x7FFFFFFF;
  *(v27 + 544) = 2 * v75 - (v75 & 0x7FFFFFFF);
  v77 = v76 + v73;
  *(v27 + 520) = v76 + v73;
  v78 = v73 + 2 * v75;
  *(v27 + 552) = v78;
  if (v77 <= v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v77;
  }

  v80 = &kPasscode_Supported_FFT_Size_Table;
  v81 = 17;
  do
  {
    v82 = v81 >> 1;
    v83 = &v80[v81 >> 1];
    v85 = *v83;
    v84 = v83 + 1;
    v81 += ~(v81 >> 1);
    if (v85 < v79)
    {
      v80 = v84;
    }

    else
    {
      v81 = v82;
    }
  }

  while (v81);
  if (v80 == dword_1DE0A068C)
  {
    v80 = &unk_1DE0A0688;
  }

  v86 = *v80;
  *(v27 + 528) = *v80;
  *(v27 + 560) = v86;
  v88 = v86 >= v77;
  v87 = v86 - v77;
  v88 = v88 && v86 >= v78;
  if (!v88)
  {
    return 10;
  }

  *(v27 + 536) = v87;
  *(v27 + 568) = v86 - v78;
  *(v27 + 532) = v86 >> 1;
  *(v27 + 564) = v86 >> 1;
  v21 = MultiRadixRealFFT::Initialize((v27 + 1768), v86);
  if (v21)
  {
    return v21;
  }

  *(v27 + 804) = 1.0 / *(v27 + 528);
  *(v27 + 1156) = *(v27 + 840);
  InitializePasscode(v27 + 848, *(v27 + 428), *(v27 + 424), *(v27 + 157), *(v27 + 420), 1.0);
  v89 = *(v27 + 528);
  *(v27 + 204) = v89;
  *(v27 + 208) = v89;
  v90 = *(v27 + 424);
  v91 = *(v27 + 456);
  v92 = v91 * v90;
  *(v27 + 492) = v91 * v90;
  *(v27 + 488) = v91 * v90;
  if (*(v27 + 572) == 1)
  {
    v93 = vmul_s32(*(v27 + 728), vdup_n_s32(v90));
  }

  else
  {
    v93 = 0;
  }

  v94 = 0;
  *(v27 + 576) = v93;
  v95 = *(v27 + 516);
  v96 = *(v27 + 548);
  if (v95 <= v96)
  {
    v97 = *(v27 + 548);
  }

  else
  {
    v97 = *(v27 + 516);
  }

  *(v27 + 784) = v97;
  v98 = v93.i32[0];
  if (v93.i32[0] <= v92)
  {
    v98 = v91 * v90;
  }

  *(v27 + 780) = v98;
  if (v98 <= v90)
  {
    v99 = v90;
  }

  else
  {
    v99 = v98;
  }

  v100 = v99 + v97 + *(v27 + 540);
  *(v27 + 776) = v100;
  v101 = *(v27 + 420);
  *(v27 + 752) = (v100 - v98) / v101;
  *(v27 + 1520) = 3;
  v103 = (1.0 / v101) * v89;
  v104 = (v103 * *(v27 + 832));
  v105 = v89 - 1;
  if (v89 - 1 < v104)
  {
    v104 = v89 - 1;
  }

  v102 = *(v27 + 836);
  if (v104 <= 1)
  {
    v106 = 1;
  }

  else
  {
    v106 = v104;
  }

  if (v105 >= (v103 * v102))
  {
    v107 = (v103 * v102);
  }

  else
  {
    v107 = v89 - 1;
  }

  v108 = v106 - 1;
  if (v107 < v106)
  {
    v108 = v107;
  }

  v109 = *(v27 + 532);
  *(v27 + 1532) = v109;
  v110 = v109 - 1;
  if (v108 - 1 < v109 - 1)
  {
    *(v27 + 1536) = v108;
    v94 = v108;
  }

  v111 = v106 >= v109 || v94 > v106;
  v112 = v109;
  if (!v111)
  {
    *(v27 + 1532) = v106;
    v112 = v106;
  }

  v113 = 0;
  v114 = v90 / *(v27 + 520);
  *(v27 + 1524) = v114;
  *(v27 + 1528) = sqrtf(v114);
  *(v27 + 1540) = v95;
  *(v27 + 1548) = v89;
  *(v27 + 1552) = v90;
  *(v27 + 1544) = v90;
  v115 = *(v27 + 1536);
  *(v27 + 1556) = *(v27 + 1520);
  *(v27 + 1572) = v115;
  *(v27 + 1588) = *(v27 + 1552);
  *(v27 + 1556) = 3;
  v116 = (v103 * *(v27 + 824));
  if (v105 < v116)
  {
    v116 = v89 - 1;
  }

  if (v116 <= 1)
  {
    v116 = 1;
  }

  v117 = (v103 * *(v27 + 828));
  if (v105 < v117)
  {
    v117 = v89 - 1;
  }

  if (v117 >= v116)
  {
    v117 = v116 - 1;
  }

  *(v27 + 1572) = 0;
  *(v27 + 1568) = v109;
  if (v117 - 1 < v110)
  {
    *(v27 + 1572) = v117;
    v113 = v117;
  }

  v118 = v109;
  if (v116 < v109)
  {
    v118 = v109;
    if (v113 <= v116)
    {
      *(v27 + 1568) = v116;
      v118 = v116;
    }
  }

  v119 = 0;
  v121 = (v103 * *(v27 + 816));
  if (v105 < v121)
  {
    v121 = v89 - 1;
  }

  if (v121 <= 1)
  {
    v121 = 1;
  }

  v120 = *(v27 + 820);
  if (v105 >= (v103 * v120))
  {
    v105 = (v103 * v120);
  }

  if (v105 >= v121)
  {
    v105 = v121 - 1;
  }

  *(v27 + 812) = 0;
  *(v27 + 808) = v109;
  if (v105 - 1 < v110)
  {
    *(v27 + 812) = v105;
    v119 = v105;
  }

  if (v121 < v109 && v119 <= v121)
  {
    *(v27 + 808) = v121;
    v109 = v121;
  }

  if (v100 <= v97 + v90)
  {
    v100 = v97 + v90;
  }

  if (v97 <= *(v27 + 392))
  {
    v97 = *(v27 + 392);
  }

  v122 = v100 + v97;
  *(v27 + 320) = v122;
  v123 = *(v27 + 1632);
  if (!*(v27 + 1632))
  {
    v122 += v93.i32[1] + v92;
    *(v27 + 192) = v122;
  }

  v124 = *(v27 + 1148) + v90 + v122;
  *(v27 + 196) = v124;
  if (*(v27 + 1652) == 1)
  {
    v125 = v124 + 70;
    *(v27 + 196) = v124 + 70;
    v126 = 7;
  }

  else
  {
    v126 = 0;
    v125 = v124;
  }

  *(v27 + 1648) = v126;
  if (v123)
  {
    *(v27 + 1628) = 72;
    v127 = v125 + 72;
    v128 = 2 * (*(v27 + 732) * (v118 + ~v113) + v91 * (v112 + ~v94));
    if (*(v27 + 152) == 1 && *(v27 + 148) == 1)
    {
      v129 = 2 * (v109 + ~v119);
      LODWORD(v130) = *(v27 + 1152);
      if (v130)
      {
        v131 = 0;
        v132 = 0;
        if (v130 >= 3)
        {
          v130 = 3;
        }

        else
        {
          v130 = v130;
        }

        v133 = (v27 + 1108);
        v134 = (v27 + 1616);
        do
        {
          v135 = *(v133 - 10);
          if (v135 && v131 < *(v27 + 1216))
          {
            v131 += v135;
            v132 += *v133;
            *v134 = 1;
          }

          ++v134;
          ++v133;
          --v130;
        }

        while (v130);
      }

      else
      {
        v132 = 0;
      }

      v128 += v129 * v132;
    }

    *(v27 + 1592) = v128;
    *(v27 + 196) = v128 + v127;
  }

  else
  {
    *(v27 + 1628) = 0;
    *(v27 + 1592) = 0;
  }

  v136 = v96 + 4 * v89;
  *(v27 + 200) = v136;
  *(v27 + 192) = v124 + v136;
  std::vector<float>::resize((*(this + 295) + 272), *(*(this + 295) + 196));
  vDSP_vclr(*(*(this + 295) + 272), 1, *(*(this + 295) + 196));
  std::vector<float>::resize((*(this + 295) + 296), *(*(this + 295) + 200));
  vDSP_vclr(*(*(this + 295) + 296), 1, *(*(this + 295) + 200));
  v141 = *(this + 295);
  v142 = *(v141 + 424);
  v143 = *(v141 + 856);
  v144 = *(v141 + 204);
  v145 = *(v141 + 272);
  *(v141 + 328) = v145;
  v146 = *(v141 + 320);
  v147 = v145 + 4 * v146;
  *(v141 + 324) = v146 - 1;
  *(v141 + 336) = 0;
  v148 = *(v141 + 1632);
  if (!v148)
  {
    v149 = *(v141 + 456);
    if (!v149)
    {
      goto LABEL_223;
    }

    v150 = (v141 + 464);
    v151 = *(v141 + 456);
    do
    {
      *v150++ = v147;
      v147 += 4 * v142;
      --v151;
    }

    while (v151);
    if (v149 <= 2)
    {
LABEL_223:
      bzero((v141 + 8 * v149 + 464), 24 - 8 * v149);
    }

    v152 = *(v141 + 732);
    if (!v152)
    {
      goto LABEL_228;
    }

    v153 = (v141 + 584);
    v154 = *(v141 + 732);
    do
    {
      *v153++ = v147;
      v147 += 4 * v142;
      --v154;
    }

    while (v154);
    if (v152 <= 2)
    {
LABEL_228:
      bzero((v141 + 8 * v152 + 584), 24 - 8 * v152);
    }
  }

  *(v141 + 608) = v147;
  *(v141 + 616) = v142;
  *(v141 + 620) = v142;
  v155 = v147 + 4 * v142;
  *(v141 + 1160) = v155;
  v156 = v155 + 4 * v143;
  *(v141 + 1168) = v156;
  v157 = v156 + 4 * v143;
  v158 = *(v141 + 1156);
  if (v158)
  {
    v159 = (v141 + 1176);
    do
    {
      *v159++ = v157;
      v157 += 4 * v143;
      --v158;
    }

    while (v158);
  }

  if (*(v141 + 1652) == 1)
  {
    v160 = 0;
    v161 = 4 * *(v141 + 1648);
    do
    {
      *(v141 + 1656 + v160) = v157;
      *(v157 + 12) = 0;
      *(v157 + 16) = 0;
      *(v157 + 20) = 0;
      v160 += 8;
      *(v157 + 24) = 0;
      *v157 = 0;
      v157 += v161;
    }

    while (v160 != 80);
  }

  if (v148)
  {
    *(v141 + 1640) = v157;
    v162 = v157 + 4 * *(v141 + 1628);
    *(v141 + 1608) = 0;
    *(v141 + 1600) = v162;
    v163 = *(v141 + 732);
    if (!v163)
    {
      goto LABEL_240;
    }

    v164 = (v157 + 8);
    v165 = 8 * (*(v141 + 1568) + ~*(v141 + 1572));
    v166 = 4 * (*(v141 + 1568) + ~*(v141 + 1572));
    v167 = *(v141 + 732);
    do
    {
      *(v164 - 1) = v162;
      *v164 = v162 + v166;
      v164 += 2;
      v162 += v165;
      --v167;
    }

    while (v167);
    if (v163 <= 2)
    {
LABEL_240:
      bzero((v157 + 16 * v163), 32 - 16 * v163 + 16);
      v157 = *(v141 + 1640);
    }

    v168 = *(v141 + 456);
    if (!v168)
    {
      goto LABEL_245;
    }

    v169 = (v157 + 56);
    v170 = 8 * (*(v141 + 1532) + ~*(v141 + 1536));
    v171 = 4 * (*(v141 + 1532) + ~*(v141 + 1536));
    v172 = *(v141 + 456);
    do
    {
      *(v169 - 1) = v162;
      *v169 = v162 + v171;
      v169 += 2;
      v162 += v170;
      --v172;
    }

    while (v172);
    if (v168 <= 2)
    {
LABEL_245:
      bzero((v157 + 16 * v168 + 48), 32 - 16 * v168 + 16);
    }

    if (*(v141 + 152) == 1)
    {
      *(v141 + 1608) = v162;
    }
  }

  else
  {
    v137 = 0uLL;
    *(v141 + 1600) = 0u;
  }

  v173 = *(v141 + 296);
  v174 = v173 + 4 * v144;
  *(v141 + 216) = v173;
  *(v141 + 224) = v174;
  v175 = v174 + 4 * v144;
  v176 = v175 + 4 * *(v141 + 548);
  *(v141 + 232) = v175;
  *(v141 + 240) = v176;
  v177 = *(v141 + 532);
  v178 = v176 + 4 * *(v141 + 208);
  *(v141 + 248) = v176 + 4 * v177;
  *(v141 + 256) = v178;
  *(v141 + 264) = v178 + 4 * v177;
  InitializePasscodeShape(v141 + 848, v137, v138, v139, v140);
  if ((*(v141 + 1632) & 1) == 0)
  {
    if (*(v141 + 732))
    {
      v179 = 0;
      do
      {
        vDSP_vclr(*(v141 + 584 + 8 * v179++), 1, v142);
      }

      while (v179 < *(v141 + 732));
    }

    if (*(v141 + 456))
    {
      v180 = 0;
      v181 = v141 + 464;
      do
      {
        vDSP_vclr(*(v181 + 8 * v180), 1, v142);
        __C = 0.0;
        v182 = *(v181 + 8 * v180);
        if (v180 <= 2)
        {
          v183 = dword_1DE0E8F5C[v180];
          v184 = dword_1DE0E8F68[v180];
          v185 = dword_1DE0E8F74[v180];
          v186 = dword_1DE0E8F80[v180];
          *v182 = dword_1DE0E8F50[v180];
          *(v182 + 4) = v183;
          *(v182 + 8) = v184;
          *(v182 + 12) = v185;
          *(v182 + 16) = v186;
        }

        vDSP_svesq(v182, 1, &__C, v142);
        __C = 1.0 / sqrtf(__C + *(v141 + 1736));
        MEMORY[0x1E12BE940](*(v181 + 8 * v180), 1, &__C, *(v181 + 8 * v180), 1, v142);
        ++v180;
      }

      while (v180 < *(v141 + 456));
    }
  }

  memset_pattern16((v141 + 908), &unk_1DE09E960, 0x28uLL);
  for (j = 0; j != 40; j += 4)
  {
    v188 = v141 + j;
    *(v188 + 1068) = 2;
    *(v188 + 1108) = 4;
  }

  if (*(v141 + 1632) == 1)
  {
    AcousticPasscodeDec_PrecalculateAndStoreContents(v141);
  }

  *(v141 + 120) = *(v141 + 436);
  *(v141 + 128) = *(v141 + 1433);
  *(v141 + 124) = *(v141 + 500);
  *(v141 + 129) = *(v141 + 189);
  *(v141 + 132) = *(v141 + 376);
  *(v141 + 140) = *(v141 + 190);
  *(v141 + 142) = *(v141 + 764);
  *(v141 + 372) = 0;
  *(v141 + 748) = 0;
  *(v141 + 384) = 0;
  *(v141 + 1228) = 0;
  *(v141 + 1433) = 0;
  *(v141 + 1516) = 0;
  memset((v141 + 1232), 48, 20);
  *(v141 + 1208) = 0;
  *(v141 + 1252) = 0u;
  *(v141 + 1268) = 0u;
  *(v141 + 1284) = 0;
  *(v141 + 1436) = 0u;
  *(v141 + 1452) = 0u;
  *(v141 + 1468) = 0;
  AcousticPasscodeDec_ResetState(v141, 0);
  *(v141 + 156) = 1;
  v189.n128_f64[0] = AcousticPasscodeDec_ResetState(*(this + 295), 0);
  *(*(this + 295) + 156) = 1;
  AUAcousticPasscodeDec::SetOutputParamsFromKernel(this, v189);
  v194 = *(this + 295);
  if (*(v194 + 157) == 1 && (*(v194 + 159) & 1) == 0 && *(v194 + 156) == 1)
  {
    v190.n128_u32[0] = *(v194 + 420);
    v195 = SetPlistValuesToInternalKernelVariables(v194, (v194 + 848), v194 + 648, v194 + 688, this + 2616, *(v194 + 424), *(v194 + 456), *(v194 + 732), v190, v191, v192, v193);
    if (v195)
    {
      v21 = v195;
      if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
      }

      v196 = getAUAcousticPasscodeDecLog(void)::gLog;
      if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        __C = 3.8521e-34;
        v203 = this;
        v204 = 1024;
        v205 = v21;
        _os_log_impl(&dword_1DDB85000, v196, OS_LOG_TYPE_DEFAULT, "[%p] SetPlistValuesToInternalKernelVariables returned error %u", &__C, 0x12u);
      }

      AUAcousticPasscodeDec::LogPlistValues(this);
      return v21;
    }

    v197 = *(this + 295);
    v197[765] = 1;
    if (v197[1632] == 1)
    {
      AcousticPasscodeDec_PrecalculateAndStoreContents(v197);
      v197 = *(this + 295);
    }

    v197[159] = 1;
  }

  *(this + 528) = 1;
  if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
  }

  v198 = getAUAcousticPasscodeDecLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    __C = 3.8521e-34;
    v203 = this;
    v204 = 1024;
    v205 = 0;
    _os_log_impl(&dword_1DDB85000, v198, OS_LOG_TYPE_DEFAULT, "[%p] Initialize finished with error code %u \n", &__C, 0x12u);
    if (getAUAcousticPasscodeDecLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeDecLog(void)::onceToken, &__block_literal_global_1247);
    }
  }

  v199 = getAUAcousticPasscodeDecLog(void)::gLog;
  v21 = 0;
  if (os_log_type_enabled(getAUAcousticPasscodeDecLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v200 = *(*(this + 295) + 1216);
    __C = 3.8521e-34;
    v203 = this;
    v204 = 1024;
    v205 = v200;
    _os_log_impl(&dword_1DDB85000, v199, OS_LOG_TYPE_DEFAULT, "[%p] Initialize finished with assumed bits %u \n", &__C, 0x12u);
    return 0;
  }

  return v21;
}

void AUAcousticPasscodeDec::~AUAcousticPasscodeDec(AUAcousticPasscodeDec *this)
{
  AUAcousticPasscodeDec::~AUAcousticPasscodeDec(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = 0;
  *this = &unk_1F591D870;
  do
  {
    v3 = *(this + v2 + 3112);
    if (v3)
    {
      *(this + v2 + 3120) = v3;
      operator delete(v3);
    }

    v2 -= 24;
  }

  while (v2 != -240);
  for (i = 0; i != -72; i -= 24)
  {
    v5 = *(this + i + 2872);
    if (v5)
    {
      *(this + i + 2880) = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    v7 = *(this + j + 2800);
    if (v7)
    {
      *(this + j + 2808) = v7;
      operator delete(v7);
    }
  }

  v8 = *(this + 293);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 108);
  if (v9)
  {
    *(this + 109) = v9;
    operator delete(v9);
  }

  v10 = *(this + 105);
  if (v10)
  {
    *(this + 106) = v10;
    operator delete(v10);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUSubBandMultEchoCanceler::ValidFormat(AUSubBandMultEchoCanceler *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    if ((a4->mFormatFlags & 0x20) != 0)
    {
      result = 1;
      if (a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = a4->mChannelsPerFrame == 1;
  }

  if (a3)
  {
    return result;
  }

LABEL_5:
  if (a4->mChannelsPerFrame == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSubBandMultEchoCanceler::SupportedNumChannels(AUSubBandMultEchoCanceler *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSubBandMultEchoCanceler::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUSubBandMultEchoCanceler::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUSubBandMultEchoCanceler::GetParameterInfo(AUSubBandMultEchoCanceler *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0xC)
  {
    v6 = *(&off_1E8669B90 + a3);
    v7 = dword_1DE0A0B3C[a3];
    v8 = flt_1DE0A0B70[a3];
    v9 = flt_1DE0A0BA4[a3];
    v10 = flt_1DE0A0BD8[a3];
    v11 = dword_1DE0A0C0C[a3];
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

uint64_t AUSubBandMultEchoCanceler::Render(AUSubBandMultEchoCanceler *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUSubBandMultEchoCanceler::ProcessMultipleBufferLists(AUSubBandMultEchoCanceler *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  if (*(this + 134) != *(this + 133))
  {
    AUSubBandMultEchoCanceler::InitializeEC(this);
  }

  mData = (*a5)->mBuffers[0].mData;
  if (mData)
  {
    v10 = a5[1]->mBuffers[0].mData == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = (*a7)->mBuffers[0].mData;
  v13 = a7[1]->mBuffers[0].mData;
  v14 = a7[2]->mBuffers[0].mData;
  if (*(this + 928))
  {
    v15 = 0;
    v16 = 4 * *(this + 137);
    v17 = 16;
    do
    {
      memcpy(*(*(this + 463) + 8 * v15++), *(&a5[1]->mNumberBuffers + v17), v16);
      v17 += 16;
    }

    while (v15 < *(this + 928));
  }

  v18 = *(this + 463);
  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v20 & 1) == 0)
  {
LABEL_135:
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v19, 0xAu);
  v22 = *(this + 905);
  if (v22 < *(this + 906))
  {
    *(this + 905) = v22 + (*(this + 880) / 1000.0);
  }

  AUsubMAEC::dftBuffer::GetIndexSequence(this + 170, 1);
  v23 = *(this + 874);
  v24 = *(this + 878);
  if (v23 >= 1)
  {
    v25 = 0;
    v26 = ((*(this + 879) - 1) * v24);
    v27 = (*(this + 879) - 1) * v24;
    do
    {
      if (v27 >= 1)
      {
        v28 = *(*(this + 88) + 8 * v25);
        v29 = v26;
        do
        {
          *v28 = v28[v24];
          ++v28;
          --v29;
        }

        while (v29);
      }

      if (v24 >= 1)
      {
        v30 = *(v18 + 8 * v25);
        v31 = (*(*(this + 88) + 8 * v25) + 4 * v26);
        v32 = v24;
        do
        {
          v33 = *v30++;
          *v31++ = v33;
          --v32;
        }

        while (v32);
      }

      ++v25;
    }

    while (v25 != v23);
  }

  vDSP_svesq(**(this + 88), 1, this + 930, v24 * v23);
  v147 = 0.0;
  if (*(this + 183) < 1)
  {
    v38 = 0.0;
  }

  else
  {
    v34 = 0;
    v35 = *(this + 182);
    v36 = *(this + 188);
    LODWORD(v149.realp) = 0;
    v37 = v36 * v35;
    v38 = 0.0;
    do
    {
      AUsubMAEC::dft::dftAnalysis((this + 576), *(*(this + 88) + 8 * v34), (*(*(this + 85) + 8 * v34) + 4 * v37), (*(*(this + 86) + 8 * v34) + 4 * v37), &v149);
      v38 = v38 + *&v149.realp;
      ++v34;
    }

    while (v34 < *(this + 183));
  }

  v145 = v12;
  if (*(this + 925) > 1)
  {
    AUsubMAEC::dftBuffer::GetIndexSequence(this + 170, 0);
  }

  __A = 0.0;
  vDSP_vfill(&__A, *(this + 87), 1, *(this + 188));
  if (*(this + 183) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = *(*(this + 86) + 8 * v39);
      v149.realp = *(*(this + 85) + 8 * v39);
      v149.imagp = v40;
      vDSP_zvmags(&v149, 1, *(this + 95), 1, *(this + 184) * *(this + 188));
      if (*(this + 184) >= 1)
      {
        v41 = 0;
        v42 = *(this + 87);
        do
        {
          v43 = (*(this + 95) + 4 * *(this + 188) * *(*(this + 89) + 4 * v41));
          MEMORY[0x1E12BE5D0](v42 + 1, 1, v43 + 1, 1, v42 + 1, 1, *(this + 187));
          v42 = *(this + 87);
          *v42 = *v43 + *v42;
          v42[*(this + 186)] = v43[*(this + 186)] + v42[*(this + 186)];
          ++v41;
        }

        while (v41 < *(this + 184));
      }

      if (*(this + 185) >= 1)
      {
        v44 = 0;
        v45 = *(this + 87);
        do
        {
          v46 = *(this + 95) + 4 * *(this + 188) * *(*(this + 90) + 4 * v44);
          MEMORY[0x1E12BE5D0](v45 + 1, 1, v46, 1, v45 + 1, 1, *(this + 187));
          v45 = *(this + 87);
          *v45 = *(v46 + 4) + *v45;
          v45[*(this + 186)] = *(v46 + 4 * *(this + 186) - 4) + v45[*(this + 186)];
          ++v44;
          v47 = *(this + 185);
        }

        while (v44 < v47);
        if (v47 >= 1)
        {
          v48 = 0;
          do
          {
            v49 = *(this + 95) + 4 * *(this + 188) * *(*(this + 90) + 4 * v48);
            MEMORY[0x1E12BE5D0](v45 + 1, 1, v49 + 8, 1, v45 + 1, 1, *(this + 187));
            v45 = *(this + 87);
            *v45 = *(v49 + 8) + *v45;
            v45[*(this + 186)] = *(v49 + 4 * *(this + 186) - 8) + v45[*(this + 186)];
            ++v48;
          }

          while (v48 < *(this + 185));
        }
      }

      ++v39;
    }

    while (v39 < *(this + 183));
  }

  __A = 1.0e-12;
  MEMORY[0x1E12BE8A0](*(this + 87), 1, &__A, *(this + 87), 1, *(this + 877));
  v50 = *(this + 878);
  v51 = (*(this + 879) - 1) * v50;
  v52 = *(this + 442);
  if (v51 >= 1)
  {
    v53 = *(this + 442);
    v54 = ((*(this + 879) - 1) * v50);
    do
    {
      *v53 = v53[v50];
      ++v53;
      --v54;
    }

    while (v54);
  }

  if (v50 >= 1)
  {
    v55 = &v52[v51];
    do
    {
      v56 = *mData++;
      *v55++ = v56;
      --v50;
    }

    while (v50);
  }

  AUsubMAEC::dft::dftAnalysis((this + 576), v52, *(this + 443), *(this + 444), &v147);
  AUsubMAEC::myFilter::runFilter((this + 768), (this + 1000), (this + 1016), *(this + 85), *(this + 86), *(this + 89), *(this + 90), *(this + 570));
  AUsubMAEC::myFilter::runFilter((this + 840), this + 68, this + 69, *(this + 85), *(this + 86), *(this + 89), *(this + 90), *(this + 570));
  AUsubMAEC::myFilter::runFilter((this + 912), (this + 1176), (this + 1192), *(this + 85), *(this + 86), *(this + 89), *(this + 90), 0);
  AUsubMAEC::Kalman::runKFFilter((this + 2504), (this + 680), *(this + 79), *(this + 80), 1, *(this + 570));
  *(this + 174) = *(this + 2504);
  AUsubMAEC::Kalman::runKFFilter((this + 2784), (this + 680), *(this + 1352), *(this + 1368), 0, *(this + 570));
  vDSP_zvsub((this + 3544), 1, (this + 1000), 1, (this + 1032), 1, *(this + 264));
  v57 = *(this + 130);
  *v57 = 0;
  v57[*(this + 265)] = 0;
  vDSP_zvsub((this + 3544), 1, this + 68, 1, this + 70, 1, *(this + 286));
  v58 = *(this + 141);
  *v58 = 0;
  v58[*(this + 287)] = 0;
  vDSP_zvsub((this + 3544), 1, (this + 1176), 1, (this + 1208), 1, *(this + 308));
  v59 = *(this + 152);
  *v59 = 0;
  v59[*(this + 309)] = 0;
  vDSP_zvsub((this + 3544), 1, this + 79, 1, this + 81, 1, *(this + 330));
  v60 = *(this + 163);
  *v60 = 0;
  v60[*(this + 331)] = 0;
  vDSP_zvsub((this + 3544), 1, (this + 1352), 1, (this + 1384), 1, *(this + 352));
  v61 = *(this + 174);
  *v61 = 0;
  v61[*(this + 353)] = 0;
  v149 = *(this + 81);
  vDSP_zvmags(&v149, 1, *(this + 324), 1, *(this + 641));
  v62 = v147;
  *(this + 375) = v38;
  *(this + 376) = v62;
  AUsubMAEC::learnRate::updateTimeStatistics2((this + 1424), *(this + 129), *(this + 130), *(this + 125), *(this + 126));
  *(this + 429) = v38;
  *(this + 430) = v62;
  AUsubMAEC::learnRate::updateTimeStatistics2((this + 1640), *(this + 140), *(this + 141), *(this + 136), *(this + 137));
  *(this + 483) = v38;
  *(this + 484) = v62;
  AUsubMAEC::learnRate::updateTimeStatistics2((this + 1856), *(this + 151), *(this + 152), *(this + 147), *(this + 148));
  *(this + 537) = v38;
  *(this + 538) = v62;
  AUsubMAEC::learnRate::updateTimeStatistics2((this + 2072), *(this + 162), *(this + 163), *(this + 158), *(this + 159));
  *(this + 591) = v38;
  *(this + 592) = v62;
  AUsubMAEC::learnRate::updateTimeStatistics2((this + 2288), *(this + 173), *(this + 174), *(this + 169), *(this + 170));
  v63 = *(this + 364);
  if (v63 >= *(this + 472))
  {
    v63 = *(this + 472);
  }

  if (v63 >= *(this + 526))
  {
    v63 = *(this + 526);
  }

  *(this + 904) = v63;
  AUsubMAEC::learnRate::micEchoXcorrForDTD((this + 1424), *(this + 3544), *(this + 1000));
  AUsubMAEC::learnRate::micEchoXcorrForDTD((this + 1856), *(this + 3544), *(this + 1176));
  AUsubMAEC::learnRate::micEchoXcorrForDTD((this + 2072), *(this + 3544), *(this + 79));
  *(this + 362) = *(this + 524);
  *(this + 524) = *(this + 470);
  AUsubMAEC::learnRate::getLeakage((this + 1424), *(this + 129), *(this + 130), *(this + 125), *(this + 126));
  AUsubMAEC::learnRate::getLeakage((this + 2072), *(this + 162), *(this + 163), *(this + 158), *(this + 159));
  *(this + 931) = *(this + 524);
  *(this + 929) = *(this + 2220);
  vDSP_vdiv(*(this + 87), 1, *(this + 178), 1, *(this + 178), 1, *(this + 877));
  if (*(this + 1884))
  {
    v64 = 0.35;
  }

  else
  {
    if (*(this + 905) >= *(this + 906))
    {
      v65 = -15.0;
    }

    else
    {
      v65 = -5.0;
    }

    if (*(this + 904) >= v65)
    {
      v64 = 0.01;
    }

    else
    {
      v64 = 0.25;
    }
  }

  v146 = v64;
  vDSP_svdiv(&v146, *(this + 87), 1, *(this + 232), 1, *(this + 877));
  AUsubMAEC::learnRate::adaptFilter((this + 1424), *(this + 1032), (this + 680), (this + 768));
  AUsubMAEC::learnRate::adaptFilter((this + 1856), *(this + 1208), (this + 680), (this + 912));
  v66 = *(this + 379);
  v67 = *(this + 88);
  v68 = v147;
  v69 = *(this + 692);
  *(this + 693) = v69;
  LODWORD(v149.realp) = 0;
  LODWORD(v70) = *(this + 638);
  if (v70 < 1)
  {
    v72 = 0.0;
  }

  else
  {
    v71 = 0;
    v72 = 0.0;
    do
    {
      vDSP_measqv(*(v67 + 8 * v71), 1, &v149, *(this + 639));
      v72 = v72 + *&v149.realp;
      ++v71;
      v70 = *(this + 638);
    }

    while (v71 < v70);
    v69 = *(this + 693);
  }

  v73 = (v72 * (1.0 / v70)) + 1.0e-20;
  v74 = log10f(v73) * 10.0;
  *(this + 692) = v74;
  v75 = *(this + 685);
  if (v69 >= v75 || v74 >= v75)
  {
    v76 = *(this + 684);
    v77 = (v76 * *(this + 650));
    v78 = ((1.0 - v76) * (1.0 - *(this + 653)));
    if (v66 >= v68)
    {
      v79 = v68;
    }

    else
    {
      v79 = v66;
    }

    v80 = v77 + v78 * ((v79 + 1.0e-20) / (v38 + 1.0e-20));
    *(this + 650) = v80;
  }

  v81 = *(this + 641);
  v82 = *(this + 660);
  if (v81 < 1)
  {
    v84 = 0.0;
  }

  else
  {
    v83 = 0;
    v84 = 0.0;
    do
    {
      if (v82 >= 1)
      {
        v85 = *(this + 331);
        v86 = *(this + 660);
        do
        {
          v87 = *v85++;
          v84 = v84 + *(*(*(this + 317) + 8 * v83) + 4 * v87);
          --v86;
        }

        while (v86);
      }

      ++v83;
    }

    while (v83 != v81);
  }

  v88 = ((1.0 - *(this + 684)) * (v84 / (v81 * v82))) + (*(this + 684) * *(this + 689));
  *(this + 689) = v88;
  v89 = (v88 + 1.0e-20) / (*(this + 650) + 1.0e-20);
  v90 = log10f(v89) * 10.0;
  v91 = *(this + 690);
  v92 = *(this + 691);
  if (v91 < v92)
  {
    v91 = v91 + *(this + 646);
    *(this + 690) = v91;
  }

  v93 = Parameter;
  if (v90 <= *(this + 686) || v91 <= v92)
  {
    if (v90 < *(this + 687) && v91 > v92 && v81 >= 1)
    {
      v97 = 0;
      do
      {
        vDSP_vclr(*(*(this + 317) + 8 * v97), 1, *(this + 694) * v82);
        vDSP_vclr(*(*(this + 318) + 8 * v97), 1, *(this + 694) * *(this + 660));
        v82 = *(this + 660);
        if (v82 >= 1)
        {
          v98 = *(*(this + 317) + 8 * v97);
          v99 = *(this + 331);
          v100 = *(this + 660);
          do
          {
            v101 = *v99++;
            *(v98 + 4 * v101) = *(this + 688) * *(this + 650);
            --v100;
          }

          while (v100);
        }

        ++v97;
      }

      while (v97 < *(this + 641));
    }
  }

  else if (v81 >= 1)
  {
    v102 = 0;
    do
    {
      vDSP_vclr(*(*(this + 317) + 8 * v102), 1, *(this + 694) * *(this + 660));
      vDSP_vclr(*(*(this + 318) + 8 * v102), 1, *(this + 694) * *(this + 660));
      v103 = *(this + 660);
      if (v103 >= 1)
      {
        v104 = *(*(this + 317) + 8 * v102);
        v105 = *(this + 331);
        v106 = *(this + 660);
        do
        {
          v107 = *v105++;
          *(v104 + 4 * v107) = *(this + 688) * *(this + 650);
          --v106;
        }

        while (v106);
      }

      vDSP_vclr(*(*(this + 315) + 8 * v102), 1, v103);
      vDSP_vclr(*(*(this + 316) + 8 * v102++), 1, *(this + 660));
    }

    while (v102 < *(this + 641));
  }

  if (*(this + 924) == v93)
  {
    *(this + 924) = 0;
    v108 = v145;
    if (!v93)
    {
      AUsubMAEC::Kalman::adaptKalmanFilter(this + 2504, *(this + 81), *(this + 259));
    }
  }

  else
  {
    AUsubMAEC::Kalman::adaptKalmanFilter(this + 2504, *(this + 81), *(this + 259));
    ++*(this + 924);
    v108 = v145;
  }

  *(this + 383) = this + 984;
  AUsubMAEC::dualEC::dualECProcess((this + 3064), (this + 768), (this + 840), 0, 0, (this + 1424), (this + 1640), this + 123, this + 134, 0);
  *(this + 410) = this + 1248;
  AUsubMAEC::dualEC::dualECProcess((this + 3280), 0, 0, (this + 2504), (this + 2784), (this + 2072), (this + 2288), this + 156, this + 167, 1);
  v109 = *(this + 383);
  v110 = *(this + 410);
  v111 = *(this + 486);
  v112 = *(this + 540);
  v113 = log10(*(this + 378) + 1.0e-15) * 10.0;
  v114 = log10(v111 + 1.0e-15) * 10.0;
  v115 = log10(v112 + 1.0e-15) * 10.0;
  v116 = 4 * *(this + 892) - 4;
  memmove((*(this + 449) + 4), *(this + 449), v116);
  memmove((*(this + 448) + 4), *(this + 448), v116);
  memmove((*(this + 450) + 4), *(this + 450), v116);
  v117 = *(this + 448);
  *v117 = (v115 + -1.0) > v114;
  v118 = *(this + 449);
  *v118 = (v113 + -1.0) > v114;
  v119 = *(this + 450);
  *v119 = (v115 + -1.5) > v113;
  v120 = *(this + 892);
  if (v120 < 1)
  {
    v126 = 0;
    v121 = 0;
    v130 = 0;
    v123 = v14;
    v124 = v13;
    v128 = (this + 3720);
  }

  else
  {
    v121 = 0;
    v122 = *(this + 892);
    v123 = v14;
    v124 = v13;
    do
    {
      v125 = *v117++;
      v121 += v125;
      --v122;
    }

    while (v122);
    v126 = 0;
    v127 = *(this + 892);
    v128 = (this + 3720);
    do
    {
      v129 = *v118++;
      v126 += v129;
      --v127;
    }

    while (v127);
    v130 = 0;
    do
    {
      v131 = *v119++;
      v130 += v131;
      --v120;
    }

    while (v120);
  }

  v132 = *(this + 893);
  *(this + 2100) = v121 > v132;
  *(this + 1452) = v126 > v132;
  *(this + 1884) = v121 > v132;
  if (v130 <= v132)
  {
    *(this + 894) = 0;
    v109 = v110;
    if (v121 <= v132)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  *(this + 894) = 1;
  if (v126 > v132)
  {
LABEL_125:
    v109 = (this + 1160);
    *(this + 894) = 2;
  }

LABEL_126:
  *(this + 445) = v109;
  AUsubMAEC::myAecCore::sigOLA(this + 71, v109[2], v109[3], *(this + 454), *(this + 458), v124);
  AUsubMAEC::myAecCore::sigOLA(this + 71, *(this + 443), *(this + 444), *(this + 454), *(this + 461), v123);
  AUsubMAEC::myAecCore::sigOLA(this + 71, *(*(this + 445) + 48), *(*(this + 445) + 56), *(this + 454), *(this + 455), v108);
  v133 = *(this + 182);
  v134 = v133 + 1;
  v135 = *(this + 184);
  v136 = ~v133 + (v134 >> 31) + (v134 & ~(v134 >> 31));
  if (v135 <= 1)
  {
    v137 = 1;
  }

  else
  {
    v137 = *(this + 184);
  }

  v138 = v134 + v135 + v135 * (v136 / v137 + (v134 >> 31));
  do
  {
    v138 -= v135;
  }

  while (v138 >= v135);
  *(this + 182) = v138;
  v139 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v140 & 1) == 0)
  {
    goto LABEL_135;
  }

  ausdk::AUElement::SetParameter(v139, 8u, *(this + 929));
  v141 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v142 & 1) == 0)
  {
    goto LABEL_135;
  }

  ausdk::AUElement::SetParameter(v141, 9u, *v128);
  v143 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v144 & 1) == 0)
  {
    goto LABEL_135;
  }

  ausdk::AUElement::SetParameter(v143, 7u, *(this + 931));
  return 0;
}

void AUSubBandMultEchoCanceler::InitializeEC(float32x2_t *this)
{
  Element = ausdk::AUScope::GetElement(&this[10], 0);
  if (Element)
  {
    this[68].i32[0] = *(Element + 80);
    v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if (v4)
    {
      this[69].i32[0] = ausdk::AUElement::GetParameter(v3, 2u);
      v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
      if (v6)
      {
        this[67].i32[1] = ausdk::AUElement::GetParameter(v5, 0);
        v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
        if (v8)
        {
          this[70].i32[0] = ausdk::AUElement::GetParameter(v7, 1u);
          v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
          if (v10)
          {
            this[68].i32[1] = ausdk::AUElement::GetParameter(v9, 3u);
            v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
            if (v12)
            {
              this[69].i8[4] = ausdk::AUElement::GetParameter(v11, 4u) != 0.0;
              v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
              if (v14)
              {
                this[69].i8[5] = ausdk::AUElement::GetParameter(v13, 5u) != 0.0;
                v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
                if (v16)
                {
                  this[69].i8[6] = ausdk::AUElement::GetParameter(v15, 6u) != 0.0;
                  v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
                  if (v18)
                  {
                    this[464].i32[0] = ausdk::AUElement::GetParameter(v17, 0xBu);
                    v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
                    if (v20)
                    {
                      Parameter = ausdk::AUElement::GetParameter(v19, 0xCu);
                      this[70].i32[1] = Parameter;
                      if ((Parameter | 2) != 3)
                      {
                        this[70].i32[1] = 1;
                      }

                      v22 = this[464].u32[0];
                      if (v22 >= 3)
                      {
                        this[70].i32[0] = 1;
                      }

                      v23 = this[68].i32[1];
                      if (this[69].i32[0] < (2 * v23))
                      {
                        this[69].i32[0] = 2 * v23;
                      }

                      this[463] = allocMatrix(v22, v23);
                      v24 = this[69].i32[0];
                      v25 = this[68].i32[1];
                      v26 = this[68].i32[0];
                      v27 = this[464].i32[0];
                      v28 = this[70].i32[0];
                      v29 = this[69].i16[2];
                      v30 = this[69].i8[6];
                      v31 = this[70].i32[1];
                      fwrite("Initializing EC", 0xFuLL, 1uLL, *MEMORY[0x1E69E9848]);
                      this[71].i16[0] = v29;
                      this[71].i8[2] = v30;
                      this[78].i32[0] = v27;
                      this[76].i32[1] = v28;
                      this[74].i32[1] = v25;
                      this[73].i32[0] = v24;
                      this[73].i32[1] = v24 >> 1;
                      this[74].i32[0] = (v24 >> 1) - 1;
                      this[75].i32[0] = (v24 >> 1) + 1;
                      this[80].i32[1] = (v24 / v25);
                      this[80].i32[0] = v31;
                      *v32.i32 = v24;
                      __asm { FMOV            V3.2S, #1.0 }

                      _D3.f32[0] = v25 + v25;
                      this[77] = vdiv_f32(_D3, vdup_lane_s32(v32, 0));
                      this[76].i32[0] = v26;
                      v38 = (v25 / v26) * 1000.0;
                      if (v26 < 1)
                      {
                        v38 = 0.0;
                      }

                      this[75].f32[1] = v38;
                      MultiRadixRealFFT_Create();
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

  ausdk::Throw(0xFFFFD583);
}

uint64_t AUSubBandMultEchoCanceler::SetParameter(AUSubBandMultEchoCanceler *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v10 = (a2 == 2 || (a2 & 0xFFFFFFFD) == 1 || a2 - 11 < 2) && a3 == 0;
  if (!(a3 | a2) || v10)
  {
    if (*(this + 17) == 1)
    {
      ++*(this + 133);
    }

    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v13 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v12, a2, a5);
    return 0;
  }

  else
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUSubBandMultEchoCanceler::SetProperty(AUSubBandMultEchoCanceler *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
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

uint64_t AUSubBandMultEchoCanceler::GetProperty(AUSubBandMultEchoCanceler *this, int a2, int a3, unsigned int a4, _DWORD *a5)
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

uint64_t AUSubBandMultEchoCanceler::GetPropertyInfo(AUSubBandMultEchoCanceler *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUSubBandMultEchoCanceler::Initialize(float32x2_t *this)
{
  v2 = this[15];
  if (v2)
  {
    LODWORD(v3) = (*(**&v2 + 24))(v2);
  }

  else
  {
    v3 = (*&this[13] - *&this[12]) >> 3;
  }

  v4 = this[21];
  if (v4)
  {
    LODWORD(v5) = (*(**&v4 + 24))(v4);
  }

  else
  {
    v5 = (*&this[19] - *&this[18]) >> 3;
  }

  if (v3 >= 2)
  {
    v6 = 1;
    while (1)
    {
      Element = ausdk::AUScope::GetElement(&this[10], v6 - 1);
      if (!Element)
      {
        break;
      }

      v8 = *(Element + 80);
      v9 = ausdk::AUScope::GetElement(&this[10], v6);
      if (!v9)
      {
        break;
      }

      if (v8 != *(v9 + 80))
      {
        return 4294956428;
      }

      if (v3 == ++v6)
      {
        goto LABEL_13;
      }
    }

LABEL_24:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_13:
  if (v5 >= 2)
  {
    v10 = 1;
    do
    {
      v11 = ausdk::AUScope::GetElement(&this[16], v10 - 1);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *(v11 + 80);
      v13 = ausdk::AUScope::GetElement(&this[16], v10);
      if (!v13)
      {
        goto LABEL_24;
      }

      if (v12 != *(v13 + 80))
      {
        return 4294956428;
      }
    }

    while (v5 != ++v10);
  }

  v14 = ausdk::AUScope::GetElement(&this[10], 0);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v14 + 80);
  v16 = ausdk::AUScope::GetElement(&this[16], 0);
  if (!v16)
  {
    goto LABEL_24;
  }

  if (v15 == *(v16 + 80))
  {
    this[67].i32[0] = this[66].i32[1];
    AUSubBandMultEchoCanceler::InitializeEC(this);
  }

  return 4294956428;
}

void AUSubBandMultEchoCanceler::~AUSubBandMultEchoCanceler(AUSubBandMultEchoCanceler *this)
{
  AUSubBandMultEchoCanceler::~AUSubBandMultEchoCanceler(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591DAE0;
  freeMatrix(*(this + 928), this + 463);
  AUsubMAEC::myAecCore::~myAecCore((this + 568));

  ausdk::AUBase::~AUBase(this);
}

BOOL ChannelLayoutTagIsSupportedHOA(int a1)
{
  if (a1 == 7012356)
  {
    return 1;
  }

  if ((a1 & 0xFFFE0000 | 0x10000) != 0xBF0000 || a1 - 65026 < 0xFFFF01FF)
  {
    return 0;
  }

  v2 = sqrt(a1);
  return vabdd_f64(v2, round(v2)) <= 0.000000999999997;
}

uint64_t GetHOAOrderForNumberOfChannels(unsigned int a1)
{
  v1 = 0x40000000;
  do
  {
    v2 = v1;
    v1 >>= 2;
  }

  while (v2 > a1);
  v3 = 0;
  if (v2)
  {
    do
    {
      v4 = v3 + v2;
      v5 = 2 * v2;
      if (a1 < v3 + v2)
      {
        v4 = 0;
        v5 = 0;
      }

      a1 -= v4;
      v3 = (v5 + v3) >> 1;
      v6 = v2 > 3;
      v2 >>= 2;
    }

    while (v6);
  }

  if (v3)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

void *std::map<std::string,unsigned int>::map[abi:ne200100](void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[4 * a3];
    do
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 == v4)
      {
        goto LABEL_10;
      }

      v9 = a1[1];
      v10 = v4;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, v5) & 0x80) != 0)
      {
LABEL_10:
        if (!v7)
        {
          v14 = v4;
LABEL_15:
          operator new();
        }

        v14 = v8;
        v12 = v8 + 1;
      }

      else
      {
        v12 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v14, v5);
      }

      if (!*v12)
      {
        goto LABEL_15;
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_1DDC67FF0(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](0, v1);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x1E69E5568] + 64;
  *(a1 + 120) = MEMORY[0x1E69E5568] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x1E69E54E0] + 16);
  v7 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x1E69E5568] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12BCF50](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x1E12BD050](a1 + 120);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E0];
  v3 = *MEMORY[0x1E69E54E0];
  *a1 = *MEMORY[0x1E69E54E0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void GetStringFromAudioChannelLayoutTag(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = a2 & 0xFFFF0000;
  if ((a2 & 0xFFFF0000) == 0x930000)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "DiscreteInOrder");
    v14 = std::string::append(&v21, " ", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else if (v4 == 12517376)
  {
    v11 = llroundf(sqrtf(a2));
    if (v11)
    {
      v12 = v11 * v11 == a2;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_N3D");
    v16 = std::string::append(&v21, " ", 1uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v11 - 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (v4 != 12451840)
    {
      if (a2 <= 10027011)
      {
        if (a2 > 8126469)
        {
          if (a2 <= 9043972)
          {
            if (a2 > 8585218)
            {
              if (a2 <= 8781827)
              {
                switch(a2)
                {
                  case 8585219:
                    v13 = "ITU_2_1";
                    goto LABEL_20;
                  case 8650756:
                    v13 = "ITU_2_2";
                    goto LABEL_20;
                  case 8716291:
                    v13 = "DVD_4";
                    goto LABEL_20;
                }
              }

              else if (a2 > 8912899)
              {
                if (a2 == 8912900)
                {
                  v13 = "DVD_10";
                  goto LABEL_20;
                }

                if (a2 == 8978437)
                {
                  v13 = "DVD_11";
                  goto LABEL_20;
                }
              }

              else
              {
                if (a2 == 8781828)
                {
                  v13 = "DVD_5";
                  goto LABEL_20;
                }

                if (a2 == 8847365)
                {
                  v13 = "DVD_6";
                  goto LABEL_20;
                }
              }
            }

            else if (a2 <= 8323079)
            {
              switch(a2)
              {
                case 8126470:
                  v13 = "MPEG_5_1_D";
                  goto LABEL_20;
                case 8192007:
                  v13 = "MPEG_6_1_A";
                  goto LABEL_20;
                case 8257544:
                  v13 = "MPEG_7_1_A";
                  goto LABEL_20;
              }
            }

            else if (a2 > 8454151)
            {
              if (a2 == 8454152)
              {
                v13 = "Emagic_Default_7_1";
                goto LABEL_20;
              }

              if (a2 == 8519688)
              {
                v13 = "SMPTE_DTV";
                goto LABEL_20;
              }
            }

            else
            {
              if (a2 == 8323080)
              {
                v13 = "MPEG_7_1_B";
                goto LABEL_20;
              }

              if (a2 == 8388616)
              {
                v13 = "MPEG_7_1_C";
                goto LABEL_20;
              }
            }
          }

          else if (a2 <= 9502735)
          {
            if (a2 <= 9240581)
            {
              switch(a2)
              {
                case 9043973:
                  v13 = "DVD_18";
                  goto LABEL_20;
                case 9109510:
                  v13 = "AudioUnit_6_0";
                  goto LABEL_20;
                case 9175047:
                  v13 = "AudioUnit_7_0";
                  goto LABEL_20;
              }
            }

            else if (a2 > 9371654)
            {
              if (a2 == 9371655)
              {
                v13 = "AAC_7_0";
                goto LABEL_20;
              }

              if (a2 == 9437192)
              {
                v13 = "AAC_Octagonal";
                goto LABEL_20;
              }
            }

            else
            {
              if (a2 == 9240582)
              {
                v13 = "AAC_6_0";
                goto LABEL_20;
              }

              if (a2 == 9306119)
              {
                v13 = "AAC_6_1";
                goto LABEL_20;
              }
            }
          }

          else if (a2 > 9764865)
          {
            if (a2 > 9895939)
            {
              if (a2 == 9895940)
              {
                v13 = "AC3_3_1";
                goto LABEL_20;
              }

              if (a2 == 9961476)
              {
                v13 = "AC3_3_0_1";
                goto LABEL_20;
              }
            }

            else
            {
              if (a2 == 9764866)
              {
                v13 = "AC3_1_0_1";
                goto LABEL_20;
              }

              if (a2 == 9830403)
              {
                v13 = "AC3_3_0";
                goto LABEL_20;
              }
            }
          }

          else if (a2 >= 9633792)
          {
            if (a2 == 9633792)
            {
              v13 = "DiscreteInOrder";
              goto LABEL_20;
            }

            if (a2 == 9699335)
            {
              v13 = "AudioUnit_7_0_Front";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 9502736)
            {
              v13 = "TMH_10_2_std";
              goto LABEL_20;
            }

            if (a2 == 9568277)
            {
              v13 = "TMH_10_2_full";
              goto LABEL_20;
            }
          }
        }

        else if (a2 <= 7143428)
        {
          if (a2 > 6684673)
          {
            if (a2 <= 6881281)
            {
              switch(a2)
              {
                case 6684674:
                  v13 = "StereoHeadphones";
                  goto LABEL_20;
                case 6750210:
                  v13 = "MatrixStereo";
                  goto LABEL_20;
                case 6815746:
                  v13 = "MidSide";
                  goto LABEL_20;
              }
            }

            else if (a2 > 7012355)
            {
              if (a2 == 7012356)
              {
                v13 = "Ambisonic_B_Format";
                goto LABEL_20;
              }

              if (a2 == 7077892)
              {
                v13 = "Quadraphonic";
                goto LABEL_20;
              }
            }

            else
            {
              if (a2 == 6881282)
              {
                v13 = "XY";
                goto LABEL_20;
              }

              if (a2 == 6946818)
              {
                v13 = "Binaural";
                goto LABEL_20;
              }
            }
          }

          else if (a2 < 0)
          {
            if (a2 == -268435456)
            {
              v13 = "BeginReserved";
              goto LABEL_20;
            }

            if (a2 == -65537)
            {
              v13 = "EndReserved";
              goto LABEL_20;
            }
          }

          else if (a2 > 6553600)
          {
            if (a2 == 6553601)
            {
              v13 = "Mono";
              goto LABEL_20;
            }

            if (a2 == 6619138)
            {
              v13 = "Stereo";
              goto LABEL_20;
            }
          }

          else
          {
            if (!a2)
            {
              v13 = "UseChannelDescriptions";
              goto LABEL_20;
            }

            if (a2 == 0x10000)
            {
              v13 = "UseChannelBitmap";
              goto LABEL_20;
            }
          }
        }

        else if (a2 <= 7602179)
        {
          if (a2 <= 7340039)
          {
            switch(a2)
            {
              case 7143429:
                v13 = "Pentagonal";
                goto LABEL_20;
              case 7208966:
                v13 = "Hexagonal";
                goto LABEL_20;
              case 7274504:
                v13 = "Octagonal";
                goto LABEL_20;
            }
          }

          else if (a2 > 7471106)
          {
            if (a2 == 7471107)
            {
              v13 = "MPEG_3_0_B";
              goto LABEL_20;
            }

            if (a2 == 7536644)
            {
              v13 = "MPEG_4_0_A";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 7340040)
            {
              v13 = "Cube";
              goto LABEL_20;
            }

            if (a2 == 7405571)
            {
              v13 = "MPEG_3_0_A";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 7864324)
        {
          if (a2 > 7995397)
          {
            if (a2 == 7995398)
            {
              v13 = "MPEG_5_1_B";
              goto LABEL_20;
            }

            if (a2 == 8060934)
            {
              v13 = "MPEG_5_1_C";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 7864325)
            {
              v13 = "MPEG_5_0_D";
              goto LABEL_20;
            }

            if (a2 == 7929862)
            {
              v13 = "MPEG_5_1_A";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 7733252)
        {
          if (a2 == 7733253)
          {
            v13 = "MPEG_5_0_B";
            goto LABEL_20;
          }

          if (a2 == 7798789)
          {
            v13 = "MPEG_5_0_C";
            goto LABEL_20;
          }
        }

        else
        {
          if (a2 == 7602180)
          {
            v13 = "MPEG_4_0_B";
            goto LABEL_20;
          }

          if (a2 == 7667717)
          {
            v13 = "MPEG_5_0_A";
            goto LABEL_20;
          }
        }
      }

      else if (a2 <= 11927558)
      {
        if (a2 <= 10944519)
        {
          if (a2 > 10485767)
          {
            if (a2 <= 10682375)
            {
              switch(a2)
              {
                case 10485768:
                  v13 = "EAC3_7_1_A";
                  goto LABEL_20;
                case 10551304:
                  v13 = "EAC3_7_1_B";
                  goto LABEL_20;
                case 10616840:
                  v13 = "EAC3_7_1_C";
                  goto LABEL_20;
              }
            }

            else if (a2 > 10813447)
            {
              if (a2 == 10813448)
              {
                v13 = "EAC3_7_1_F";
                goto LABEL_20;
              }

              if (a2 == 10878984)
              {
                v13 = "EAC3_7_1_G";
                goto LABEL_20;
              }
            }

            else
            {
              if (a2 == 10682376)
              {
                v13 = "EAC3_7_1_D";
                goto LABEL_20;
              }

              if (a2 == 10747912)
              {
                v13 = "EAC3_7_1_E";
                goto LABEL_20;
              }
            }
          }

          else if (a2 <= 10223622)
          {
            switch(a2)
            {
              case 10027012:
                v13 = "AC3_2_1_1";
                goto LABEL_20;
              case 10092549:
                v13 = "AC3_3_1_1";
                goto LABEL_20;
              case 10158086:
                v13 = "EAC_6_0_A";
                goto LABEL_20;
            }
          }

          else if (a2 > 10354694)
          {
            if (a2 == 10354695)
            {
              v13 = "EAC3_6_1_B";
              goto LABEL_20;
            }

            if (a2 == 10420231)
            {
              v13 = "EAC3_6_1_C";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 10223623)
            {
              v13 = "EAC_7_0_A";
              goto LABEL_20;
            }

            if (a2 == 10289159)
            {
              v13 = "EAC3_6_1_A";
              goto LABEL_20;
            }
          }
        }

        else if (a2 <= 11403270)
        {
          if (a2 <= 11141125)
          {
            switch(a2)
            {
              case 10944520:
                v13 = "EAC3_7_1_H";
                goto LABEL_20;
              case 11010052:
                v13 = "DTS_3_1";
                goto LABEL_20;
              case 11075589:
                v13 = "DTS_4_1";
                goto LABEL_20;
            }
          }

          else if (a2 > 11272197)
          {
            if (a2 == 11272198)
            {
              v13 = "DTS_6_0_C";
              goto LABEL_20;
            }

            if (a2 == 11337735)
            {
              v13 = "DTS_6_1_A";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 11141126)
            {
              v13 = "DTS_6_0_A";
              goto LABEL_20;
            }

            if (a2 == 11206662)
            {
              v13 = "DTS_6_0_B";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 11665415)
        {
          if (a2 > 11796488)
          {
            if (a2 == 11796489)
            {
              v13 = "DTS_8_1_A";
              goto LABEL_20;
            }

            if (a2 == 11862025)
            {
              v13 = "DTS_8_1_B";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 11665416)
            {
              v13 = "DTS_8_0_A";
              goto LABEL_20;
            }

            if (a2 == 11730952)
            {
              v13 = "DTS_8_0_B";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 11534342)
        {
          if (a2 == 11534343)
          {
            v13 = "DTS_7_0";
            goto LABEL_20;
          }

          if (a2 == 11599880)
          {
            v13 = "DTS_7_1";
            goto LABEL_20;
          }
        }

        else
        {
          if (a2 == 11403271)
          {
            v13 = "DTS_6_1_B";
            goto LABEL_20;
          }

          if (a2 == 11468807)
          {
            v13 = "DTS_6_1_C";
            goto LABEL_20;
          }
        }
      }

      else if (a2 > 12910595)
      {
        if (a2 <= 13369367)
        {
          if (a2 <= 13107206)
          {
            switch(a2)
            {
              case 12910596:
                v13 = "Logic_4_0_C";
                goto LABEL_20;
              case 12976134:
                v13 = "Logic_6_0_B";
                goto LABEL_20;
              case 13041671:
                v13 = "Logic_6_1_B";
                goto LABEL_20;
            }
          }

          else if (a2 > 13238283)
          {
            if (a2 == 13238284)
            {
              v13 = "Logic_Atmos_7_1_4_B";
              goto LABEL_20;
            }

            if (a2 == 13303822)
            {
              v13 = "Logic_Atmos_7_1_6";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 13107207)
            {
              v13 = "Logic_6_1_D";
              goto LABEL_20;
            }

            if (a2 == 13172744)
            {
              v13 = "Logic_7_1_B";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 13631499)
        {
          if (a2 > 13762571)
          {
            if (a2 == 13762572)
            {
              v13 = "CICP_19";
              goto LABEL_20;
            }

            if (a2 == 13828110)
            {
              v13 = "CICP_20";
              goto LABEL_20;
            }
          }

          else
          {
            if (a2 == 13631500)
            {
              v13 = "CICP_17";
              goto LABEL_20;
            }

            if (a2 == 13697038)
            {
              v13 = "CICP_18";
              goto LABEL_20;
            }
          }
        }

        else if (a2 > 13500427)
        {
          if (a2 == 13500428)
          {
            v13 = "CICP_15";
            goto LABEL_20;
          }

          if (a2 == 13565962)
          {
            v13 = "CICP_16";
            goto LABEL_20;
          }
        }

        else
        {
          if (a2 == 13369368)
          {
            v13 = "CICP_13";
            goto LABEL_20;
          }

          if (a2 == 13434888)
          {
            v13 = "CICP_14";
            goto LABEL_20;
          }
        }
      }

      else if (a2 <= 12386311)
      {
        if (a2 <= 12124163)
        {
          switch(a2)
          {
            case 11927559:
              v13 = "DTS_6_1_D";
              goto LABEL_20;
            case 11993096:
              v13 = "AAC_7_1_B";
              goto LABEL_20;
            case 12058632:
              v13 = "AAC_7_1_C";
              goto LABEL_20;
          }
        }

        else if (a2 > 12255237)
        {
          if (a2 == 12255238)
          {
            v13 = "WAVE_5_1_B";
            goto LABEL_20;
          }

          if (a2 == 12320775)
          {
            v13 = "WAVE_6_1";
            goto LABEL_20;
          }
        }

        else
        {
          if (a2 == 12124164)
          {
            v13 = "WAVE_4_0_B";
            goto LABEL_20;
          }

          if (a2 == 12189701)
          {
            v13 = "WAVE_5_0_B";
            goto LABEL_20;
          }
        }
      }

      else if (a2 > 12648463)
      {
        if (a2 > 12779529)
        {
          if (a2 == 12779530)
          {
            v13 = "Atmos_5_1_4";
            goto LABEL_20;
          }

          if (a2 == 12845066)
          {
            v13 = "Atmos_7_1_2";
            goto LABEL_20;
          }
        }

        else
        {
          if (a2 == 12648464)
          {
            v13 = "Atmos_9_1_6";
            goto LABEL_20;
          }

          if (a2 == 12713992)
          {
            v13 = "Atmos_5_1_2";
            goto LABEL_20;
          }
        }
      }

      else if (a2 >= 12517376)
      {
        if (a2 == 12517376)
        {
          v13 = "HOA_ACN_N3D";
          goto LABEL_20;
        }

        if (a2 == 12582924)
        {
          v13 = "Atmos_7_1_4";
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 == 12386312)
        {
          v13 = "WAVE_7_1";
          goto LABEL_20;
        }

        if (a2 == 12451840)
        {
          v13 = "HOA_ACN_SN3D";
          goto LABEL_20;
        }
      }

LABEL_19:
      v13 = "Unknown";
LABEL_20:

      std::string::basic_string[abi:ne200100]<0>(a1, v13);
      return;
    }

    v5 = llroundf(sqrtf(a2));
    if (v5)
    {
      v6 = v5 * v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_SN3D");
    v7 = std::string::append(&v21, " ", 1uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v5 - 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  v18 = std::string::append(&v22, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v18->__r_.__value_.__l + 2);
  *a1 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1DDC696EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PrintAudioChannelLayout(AudioChannelLayout *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v38);
  GetStringFromAudioChannelLayoutTag(v49, *a2);
  if (v50 >= 0)
  {
    locale = v49;
  }

  else
  {
    locale = v49[0].__locale_;
  }

  if (v50 >= 0)
  {
    v5 = HIBYTE(v50);
  }

  else
  {
    v5 = v49[1].__locale_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, locale, v5);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0].__locale_);
  }

  __dst = a1;
  if (*a2 == 0x10000)
  {
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "bitmap=", 7);
    v25 = *v24;
    *(v24 + *(*v24 - 24) + 8) |= 0x4000u;
    *(v24 + *(v25 - 24) + 8) = *(v24 + *(v25 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(v24 + *(v25 - 24) + 24) = 8;
    v26 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, 48);
    MEMORY[0x1E12BCC20](v26, *(a2 + 4));
  }

  else if (!*a2)
  {
    v6 = v39;
    *(&v39 + *(v39 - 24) + 8) = *(&v39 + *(v39 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v41[0].__locale_ + *(v6 - 24)) = 1;
    if (*(a2 + 8))
    {
      v7 = 0;
      v8 = a2 + 28;
      do
      {
        std::ios_base::getloc((&v39 + *(v39 - 24)));
        v9 = std::locale::use_facet(v49, MEMORY[0x1E69E5318]);
        (v9->__vftable[2].~facet_0)(v9, 10);
        std::locale::~locale(v49);
        std::ostream::put();
        std::ostream::flush();
        v10 = MEMORY[0x1E12BCC20](&v39, v7);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
        v12 = *(v8 - 16);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        if (v12 == 100)
        {
          if (SHIBYTE(v37) < 0)
          {
            __p[1] = 14;
            v13 = __p[0];
          }

          else
          {
            HIBYTE(v37) = 14;
            v13 = __p;
          }

          strcpy(v13, "UseCoordinates");
        }

        else
        {
          inSpecifier[0] = v12;
          outPropertyData = 0;
          ioPropertyDataSize = 8;
          if (!AudioFormatGetProperty(0x63736E6Du, 0x14u, inSpecifier, &ioPropertyDataSize, &outPropertyData) && ioPropertyDataSize)
          {
            v14 = outPropertyData;
            if (!outPropertyData)
            {
              v48 = 0;
LABEL_56:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            CFRetain(outPropertyData);
            v48 = v14;
            v15 = CFGetTypeID(v14);
            if (v15 != CFStringGetTypeID())
            {
              v34 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v34, "Could not construct");
            }

            if (!v48)
            {
              goto LABEL_56;
            }

            applesauce::CF::convert_to<std::string,0>(v49, v48);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *&v49[0].__locale_;
            v37 = v50;
            HIBYTE(v50) = 0;
            LOBYTE(v49[0].__locale_) = 0;
            if (v48)
            {
              CFRelease(v48);
            }

            CFRelease(outPropertyData);
          }
        }

        if (v37 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if (v37 >= 0)
        {
          v17 = HIBYTE(v37);
        }

        else
        {
          v17 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ", flags=", 8);
        v19 = *v18;
        *(v18 + *(*v18 - 24) + 8) |= 0x4000u;
        *(v18 + *(v19 - 24) + 8) = *(v18 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 8;
        *(v18 + *(v19 - 24) + 24) = 8;
        v20 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, 48);
        MEMORY[0x1E12BCC20](v20, *(v8 - 12));
        *(&v41[-1].__locale_ + *(v39 - 24)) = *(&v41[-1].__locale_ + *(v39 - 24)) & 0xFFFFFFB5 | 2;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, ", coords=[", 10);
        v21 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
        v22 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
        v23 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "]", 1);
        ++v7;
        v8 += 20;
      }

      while (v7 < *(a2 + 8));
    }
  }

  if ((v46 & 0x10) != 0)
  {
    v29 = v45;
    if (v45 < v42)
    {
      v45 = v42;
      v29 = v42;
    }

    v30 = v41[4].__locale_;
  }

  else
  {
    if ((v46 & 8) == 0)
    {
      v27 = 0;
      v28 = __dst;
      HIBYTE(__dst->mChannelDescriptions[0].mCoordinates[0]) = 0;
      goto LABEL_52;
    }

    v30 = v41[1].__locale_;
    v29 = v41[3].__locale_;
  }

  v28 = __dst;
  v27 = v29 - v30;
  if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst->mChannelDescriptions[0].mCoordinates[0]) = v27;
  if (v27)
  {
    memmove(__dst, v30, v27);
  }

LABEL_52:
  *(&v28->mChannelLayoutTag + v27) = 0;
  v38[0] = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v39 = v31;
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12BD050](&v47);
}

void sub_1DDC69E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10);
  MEMORY[0x1E12BD050](va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void GetChannelLayoutSphericalCoordinates(const AudioChannelLayout *a1, _DWORD *a2, int16x4_t a3)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  if (*a2)
  {
    LOBYTE(inSpecifier) = 0;
    std::vector<char>::vector[abi:ne200100](&outPropertyData, 32);
  }

  v5 = a2[2];
  LODWORD(outPropertyData) = 0;
  std::vector<float>::resize(&v37, v5, &outPropertyData, a3);
  v6 = a2[2];
  LODWORD(outPropertyData) = 0;
  std::vector<float>::resize(&v34, v6, &outPropertyData, v7);
  v8 = a2[2];
  LODWORD(outPropertyData) = 0;
  std::vector<float>::resize(&__p, v8, &outPropertyData, v9);
  v10 = a2[2];
  if (v10)
  {
    v11 = 0;
    v12 = (a2 + 7);
    do
    {
      if ((*(v12 - 3) & 3) != 1)
      {
        if ((*(v12 - 3) & 3) != 2)
        {
          v22 = *(v12 - 4);
          ioPropertyDataSize = 20;
          inSpecifier = v22;
          if (!AudioFormatGetProperty(0x6473636Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData))
          {
            *(v37 + v11) = v26;
            *(v34 + v11) = v27;
            *(__p + v11) = v28;
          }

          v10 = a2[2];
          goto LABEL_21;
        }

        *(v37 + v11) = *(v12 - 2);
        *(v34 + v11) = *(v12 - 1);
        v13 = *v12;
        v14 = __p;
        goto LABEL_20;
      }

      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      v18 = fabsf(v15);
      v19 = fabsf(v16);
      v20 = fmaxf(v18, fmaxf(v19, fabsf(*v12)));
      if (v20 <= 1.8447e19)
      {
        v23 = 1.0;
        if (v20 >= 5.421e-20)
        {
          goto LABEL_15;
        }

        v21 = 1769996288;
      }

      else
      {
        v21 = 360710144;
      }

      v23 = *&v21;
LABEL_15:
      v24 = __p;
      *(__p + v11) = sqrtf((((v16 * v23) * (v16 * v23)) + ((v15 * v23) * (v15 * v23))) + ((v17 * v23) * (v17 * v23))) / v23;
      if (v18 < 0.000001 && v19 < 0.000001)
      {
        *(v37 + v11) = 0;
        if (v17 <= 0.0)
        {
          if (v17 < 0.0)
          {
            *(v34 + v11) = -1028390912;
          }

          else
          {
            *(v34 + v11) = 0;
          }
        }

        else
        {
          *(v34 + v11) = 1119092736;
        }

        goto LABEL_21;
      }

      *(v37 + v11) = atan2f(v15, v16) * 57.296;
      v13 = asinf(v17 / v24[v11]) * 57.296;
      v14 = v34;
LABEL_20:
      v14[v11] = v13;
LABEL_21:
      v12 += 5;
      ++v11;
    }

    while (v11 < v10);
  }

  *&a1->mChannelLayoutTag = 0;
  *&a1->mNumberChannelDescriptions = 0;
  *&a1->mChannelDescriptions[0].mChannelFlags = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, v37, v38, (v38 - v37) >> 2);
  *&a1->mChannelDescriptions[0].mCoordinates[1] = 0;
  *&a1[1].mChannelLayoutTag = 0;
  *&a1[1].mNumberChannelDescriptions = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&a1->mChannelDescriptions[0].mCoordinates[1], v34, v35, (v35 - v34) >> 2);
  *&a1[1].mChannelDescriptions[0].mChannelFlags = 0;
  *&a1[1].mChannelDescriptions[0].mCoordinates[1] = 0;
  *&a1[2].mChannelLayoutTag = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&a1[1].mChannelDescriptions[0].mChannelFlags, __p, v32, (v32 - __p) >> 2);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_1DDC6A6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<std::vector<float> &,std::vector<float> &,std::vector<float> &>,std::tuple<std::vector<float>,std::vector<float>,std::vector<float>>,std::vector<float>,std::vector<float>,std::vector<float>,0ul,1ul,2ul>(void ***a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v4[1] = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
    v6[1] = v7;
    operator delete(v7);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *v6 = *(a2 + 24);
  v6[2] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = a1[2];
  v9 = *v8;
  if (*v8)
  {
    v8[1] = v9;
    operator delete(v9);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  result = *(a2 + 48);
  *v8 = result;
  v8[2] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

void sub_1DDC6A878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDC6A8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *GetChannelLayoutChannelLabels(AudioChannelLayout *a1, _DWORD *a2)
{
  if (*a2 == 0x10000)
  {
    v5 = vcnt_s8(a2[1]);
    v5.i16[0] = vaddlv_u8(v5);
    v4 = v5.i32[0];
  }

  else if (*a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = a2[2];
  }

  v6 = v4;
  LODWORD(v12.__begin_) = -1;
  result = std::vector<unsigned int>::vector[abi:ne200100](a1, v4);
  if (*a2)
  {
    __x[0] = 0;
    std::vector<char>::vector[abi:ne200100](&v12, 32);
  }

  if (v4)
  {
    v8 = a2 + 3;
    v9 = *&a1->mChannelLayoutTag;
    do
    {
      v10 = *v8;
      v8 += 5;
      *v9++ = v10;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1DDC6AA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDC6ABC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = (value - begin) >> 1;
        if (v9 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<float>::allocate_at_least[abi:ne200100](this, v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = *__x;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = end + 2;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE095160)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1DE095150)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

id AUToneMeisterParameterExporter::parameterDictionary(DspLib::ToneMeister::Algorithm **this)
{
  v155 = *MEMORY[0x1E69E9840];
  v128[0] = &unk_1F595D140;
  v127[0] = @"QVersion";
  v127[1] = @"ExportDate";
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 stringFromDate:v3];

  v116 = v4;
  v128[1] = v4;
  v127[2] = @"Global";
  v125[0] = @"InputGain";
  v5 = 0x1E696A000uLL;
  v6 = MEMORY[0x1E696AD98];
  (*(**this + 104))(*this, 4);
  v117 = [v6 numberWithFloat:?];
  v125[1] = @"Channels";
  v126[0] = v117;
  v123 = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i < (*(**this + 64))(); ++i)
  {
    v137 = @"Mute";
    v8 = [*(v5 + 3480) numberWithBool:{DspLib::ToneMeister::Algorithm::channelIsMute(*this, i)}];
    v146 = v8;
    v138 = @"PhaseFlip";
    v9 = [*(v5 + 3480) numberWithBool:{DspLib::ToneMeister::Algorithm::channelPhaseIsFlipped(*this, i)}];
    v147 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v137 count:2];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ch%u", i + 1];
    [v123 setObject:v10 forKey:v11];

    v5 = 0x1E696A000;
  }

  v126[1] = v123;
  v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
  v128[2] = v115;
  v127[3] = @"Filters";
  v118 = [MEMORY[0x1E695DF70] array];
  v12 = 0;
  do
  {
    if (!DspLib::ToneMeister::Algorithm::filterIsEnabled(*this, v12))
    {
      goto LABEL_40;
    }

    DspLib::ToneMeister::Algorithm::filterIsActive(*this, v12);
    v13 = MEMORY[0x1E695DF90];
    v129[0] = @"Active";
    v119 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterIsActive(*this, v12)}];
    v130[0] = v119;
    v129[1] = @"Type";
    v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{_ZGRN6DspLib11ToneMeister10ParametersL16kFilterTypeNamesE__4483[DspLib::ToneMeister::Algorithm::filterType(*this, v12)]}];
    v130[1] = v121;
    v129[2] = @"Channels";
    v14 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    v15 = DspLib::ToneMeister::Parameters::categoryOfFilterType(v14);
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0;
    while (v17 < (*(**this + 64))())
    {
      if (v15 > 2)
      {
        switch(v15)
        {
          case 3:
            v135[0] = @"ChannelA";
            v26 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterIsAssignedToChannel(*this, v12, v17)}];
            v135[1] = @"ChannelB";
            v136[0] = v26;
            v27 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterPhaseIsAssignedToChannel(*this, v12, v17)}];
            v136[1] = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:2];
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ch%u", ++v17];
            [v16 setObject:v28 forKey:v29];

            break;
          case 4:
            v133[0] = @"Filter";
            v30 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterIsAssignedToChannel(*this, v12, v17)}];
            v133[1] = @"SideChain";
            v134[0] = v30;
            v31 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterPhaseIsAssignedToChannel(*this, v12, v17)}];
            v134[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:2];
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ch%u", ++v17];
            [v16 setObject:v32 forKey:v33];

            break;
          case 5:
            v131[0] = @"LowPass";
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterIsAssignedToChannel(*this, v12, v17)}];
            v131[1] = @"HighPass";
            v132[0] = v22;
            v23 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterPhaseIsAssignedToChannel(*this, v12, v17)}];
            v132[1] = v23;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ch%u", ++v17];
            [v16 setObject:v24 forKey:v25];

            break;
          default:
LABEL_16:
            ++v17;
            break;
        }
      }

      else
      {
        if (v15 >= 3)
        {
          goto LABEL_16;
        }

        v137 = @"Filter";
        v18 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterIsAssignedToChannel(*this, v12, v17)}];
        v146 = v18;
        v138 = @"PhaseCompensate";
        v19 = [MEMORY[0x1E696AD98] numberWithBool:{DspLib::ToneMeister::Algorithm::filterPhaseIsAssignedToChannel(*this, v12, v17)}];
        v147 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v137 count:2];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ch%u", ++v17];
        [v16 setObject:v20 forKey:v21];
      }
    }

    v130[2] = v16;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:3];
    v124 = [v13 dictionaryWithDictionary:v34];

    v35 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    if (DspLib::ToneMeister::Parameters::filterTypeHasFrequency(v35))
    {
      if (DspLib::ToneMeister::Algorithm::filterType(*this, v12))
      {
        if (DspLib::ToneMeister::Algorithm::filterType(*this, v12) == 2)
        {
          v36 = MEMORY[0x1E696AD98];
          *&v37 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 3);
          v38 = [v36 numberWithFloat:v37];
          v146 = v38;
          v39 = MEMORY[0x1E696AD98];
          *&v40 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 4);
          v41 = [v39 numberWithFloat:v40];
          v147 = v41;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:2];
          goto LABEL_23;
        }

        v110 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
        if (DspLib::ToneMeister::Parameters::filterTypeHasFrequency(v110))
        {
          v111 = MEMORY[0x1E696AD98];
          *&v112 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 3);
          v42 = [v111 numberWithFloat:v112];
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v43 = MEMORY[0x1E696AD98];
        *&v44 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 3);
        v38 = [v43 numberWithFloat:v44];
        v146 = v38;
        v45 = MEMORY[0x1E696AD98];
        *&v46 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 4);
        v41 = [v45 numberWithFloat:v46];
        v147 = v41;
        v47 = MEMORY[0x1E696AD98];
        *&v48 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 5);
        v49 = [v47 numberWithFloat:v48];
        v148 = v49;
        v50 = MEMORY[0x1E696AD98];
        *&v51 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 6);
        v52 = [v50 numberWithFloat:v51];
        v149 = v52;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:4];

LABEL_23:
      }

      [v124 setObject:v42 forKey:@"Frequency"];
    }

    v53 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    if (DspLib::ToneMeister::Parameters::filterTypeHasGain(v53))
    {
      IsDynamic = DspLib::ToneMeister::Algorithm::filterIsDynamic(*this, v12);
      v55 = @"Gain";
      if (IsDynamic)
      {
        v55 = @"GainRange";
      }

      v56 = v55;
      v57 = MEMORY[0x1E696AD98];
      *&v58 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 2);
      v59 = [v57 numberWithFloat:v58];
      [v124 setObject:v59 forKey:v56];
    }

    v60 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    if (DspLib::ToneMeister::Parameters::filterTypeHasQuality(v60))
    {
      v61 = MEMORY[0x1E696AD98];
      *&v62 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 4);
      v63 = [v61 numberWithFloat:v62];
      [v124 setObject:v63 forKey:@"Quality"];
    }

    v64 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    if (DspLib::ToneMeister::Parameters::filterTypeHasOrder(v64))
    {
      v65 = MEMORY[0x1E696AD98];
      *&v66 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 5);
      v67 = [v65 numberWithFloat:v66];
      [v124 setObject:v67 forKey:@"Order"];
    }

    v68 = DspLib::ToneMeister::Algorithm::filterType(*this, v12);
    if (DspLib::ToneMeister::Parameters::filterTypeHasPhase(v68))
    {
      v69 = MEMORY[0x1E696AD98];
      *&v70 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 6);
      v71 = [v69 numberWithFloat:v70];
      [v124 setObject:v71 forKey:@"Phase"];
    }

    if (DspLib::ToneMeister::Algorithm::filterIsAutomated(*this, v12))
    {
      v72 = DspLib::ToneMeister::Algorithm::automationForFilter(*this, v12);
      v73 = _ZGRN6DspLib11ToneMeister10ParametersL26kAutomatedFilterStateNamesE__4479[vcvtas_u32_f32(fmaxf(*(v72 + 4), 0.0))];
      v137 = @"state";
      v122 = [MEMORY[0x1E696AEC0] stringWithCString:v73 encoding:4];
      v146 = v122;
      v138 = @"setPointBGain";
      LODWORD(v74) = *(v72 + 16);
      v120 = [MEMORY[0x1E696AD98] numberWithFloat:v74];
      v147 = v120;
      v139 = @"setPointBFrequency";
      LODWORD(v75) = *(v72 + 20);
      v76 = [MEMORY[0x1E696AD98] numberWithFloat:v75];
      v148 = v76;
      v140 = @"systemVolumeSetPointA";
      LODWORD(v77) = *(v72 + 8);
      v78 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
      v149 = v78;
      v141 = @"systemVolumeSetPointB";
      LODWORD(v79) = *(v72 + 12);
      v80 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
      v150 = v80;
      v142 = @"systemVolumeSetPointM";
      LODWORD(v81) = *(v72 + 28);
      v82 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
      v151 = v82;
      v143 = @"systemVolumeSetPointM_enable";
      v83 = [MEMORY[0x1E696AD98] numberWithBool:*(v72 + 24) > 0.0];
      v152 = v83;
      v144 = @"systemVolumeSetPointM_gain";
      LODWORD(v84) = *(v72 + 32);
      v85 = [MEMORY[0x1E696AD98] numberWithFloat:v84];
      v153 = v85;
      v145 = @"systemVolumeSetPointM_frequency";
      LODWORD(v86) = *(v72 + 36);
      v87 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
      v154 = v87;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v137 count:9];

      [v124 setObject:v88 forKey:@"automation"];
    }

    if (DspLib::ToneMeister::Algorithm::filterIsDynamic(*this, v12))
    {
      v89 = MEMORY[0x1E696AD98];
      v90 = *this;
      v91 = DspLib::ToneMeister::Algorithm::dynamicFilterIndex(*this, v12);
      v92 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v91, 2);
      v93 = [v89 numberWithBool:{(*(*v90 + 104))(v90, v92) > 0.0}];
      [v124 setObject:v93 forKey:@"enableAttackRelease"];

      v94 = MEMORY[0x1E696AD98];
      v95 = *this;
      v96 = DspLib::ToneMeister::Algorithm::dynamicFilterIndex(*this, v12);
      v97 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v96, 0);
      (*(*v95 + 104))(v95, v97);
      v98 = [v94 numberWithFloat:?];
      [v124 setObject:v98 forKey:@"attackTime"];

      v99 = MEMORY[0x1E696AD98];
      v100 = *this;
      v101 = DspLib::ToneMeister::Algorithm::dynamicFilterIndex(*this, v12);
      v102 = DspLib::ToneMeister::Parameters::dynamicFilterParameter(v101, 1);
      (*(*v100 + 104))(v100, v102);
      v103 = [v99 numberWithFloat:?];
      [v124 setObject:v103 forKey:@"releaseTime"];

      v104 = MEMORY[0x1E696AD98];
      *&v105 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 5);
      v106 = [v104 numberWithFloat:v105];
      [v124 setObject:v106 forKey:@"Ratio"];

      v107 = MEMORY[0x1E696AD98];
      *&v108 = DspLib::ToneMeister::Algorithm::valueForFilterParameter(*this, v12, 6);
      v109 = [v107 numberWithFloat:v108];
      [v124 setObject:v109 forKey:@"Threshold"];
    }

    [v118 addObject:v124];

LABEL_40:
    v12 = (v12 + 1);
  }

  while (v12 != 50);
  v128[3] = v118;
  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:4];

  return v113;
}

void SpectralProfile::SetProfile(SpectralProfile *this, CFTypeRef cf)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "The CFDictionary object is invalid.", -1);
  }

  CFRetain(cf);
  valuePtr = 0;
  value = 0;
  if (!CFDictionaryGetValueIfPresent(cf, @"SampleRate", &value))
  {
    CFRelease(cf);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SpectralProfile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 75;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Sample rate is not present in the dictionary.\n", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v16, "Sample rate is not present in the dictionary.", -1);
  }

  if (CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315650;
    *&buf[4] = "SpectralProfile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 66;
    v22 = 1024;
    v23 = valuePtr;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d Successfully retrieved sample rate (%iHz).\n";
    v7 = OS_LOG_TYPE_INFO;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315650;
    *&buf[4] = "SpectralProfile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 68;
    v22 = 1024;
    v23 = valuePtr;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d Sample rate retrieved ambiguously (%iHz).\n";
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_1DDB85000, v5, v7, v6, buf, 0x18u);
LABEL_9:
  theData = 0;
  if (!CFDictionaryGetValueIfPresent(cf, @"NoiseProfile", &theData))
  {
    CFRelease(cf);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SpectralProfile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 97;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Profile vector is not present in the dictionary.\n", buf, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v17, "Profile vector is not present in the dictionary.", -1);
  }

  v8 = theData;
  Length = CFDataGetLength(theData);
  v10 = Length >> 2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "SpectralProfile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 105;
    v22 = 1024;
    v23 = Length >> 2;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved profile vector (length %i).\n", buf, 0x18u);
  }

  std::vector<float>::vector[abi:ne200100](buf, v10);
  BytePtr = CFDataGetBytePtr(v8);
  if (Length >= 4)
  {
    v12 = *buf;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    do
    {
      v14 = *BytePtr;
      BytePtr += 4;
      *v12++ = bswap32(v14);
      --v13;
    }

    while (v13);
  }

  CFRelease(cf);
  LODWORD(v2) = valuePtr;
  if (buf != this)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
  }

  *(this + 3) = v2;
  *(this + 8) = 2 * v10;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *this = &unk_1F593AFC8;
  *(this + 66) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this + 8, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(this + 56) = *(__s + 3);
      *(this + 40) = v7;
      *(this + 24) = v6;
      *(this + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(this + 120) = *(__s + 7);
      *(this + 104) = v10;
      *(this + 88) = v9;
      *(this + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(this + 184) = *(__s + 11);
      *(this + 168) = v13;
      *(this + 152) = v12;
      *(this + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 247) = *(__s + 239);
      *(this + 232) = v16;
      *(this + 216) = v15;
      *(this + 200) = v14;
      *(this + 263) = 0;
    }
  }

  else
  {
    *(this + 8) = 0;
  }
}

void SpectralProfile::GetProfile(SpectralProfile *this, double a2, uint64_t a3, unsigned int a4, float a5, unsigned int a6)
{
  v30 = a5;
  v11 = a4;
  std::vector<float>::vector[abi:ne200100](__p, a4);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v13 == *a3)
  {
LABEL_12:
    *this = *__p;
    *(this + 2) = v29;
    return;
  }

  v14 = (v13 - *a3) >> 2;
  v15 = *(a3 + 24);
  if (v14 != v11 || v15 != a2)
  {
    if (a4)
    {
      v17 = 0;
      v18 = a2;
      v19 = v18 / a6;
      v20 = v15;
      v21 = __p[0];
      v22 = *(a3 + 32) / v20;
      do
      {
        v23 = v19 * v17;
        v24 = vcvtms_u32_f32(v22 * v23);
        v25 = v24 + 1;
        if (v14 <= v25)
        {
          v27 = *(v13 - 4);
        }

        else
        {
          v26 = -(floorf(v22 * v23) - (v23 * v22));
          v27 = ((1.0 - v26) * *(v12 + 4 * v24)) + (*(v12 + 4 * v25) * v26);
        }

        v21[v17++] = v27;
      }

      while (v11 != v17);
    }

    goto LABEL_12;
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this, v12, v13, v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDC6C7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t non-virtual thunk toAUSpatialMixerV2OutputElement::PropertyChanged(AUSpatialMixerV2OutputElement *this, int a2)
{
  if (a2 == 3220)
  {
    v2 = atomic_load(this + 36);
    if ((*(this + 17) & 1) == 0 && v2 <= 0xFFFEFFFF)
    {
      AUSpatialMixerV2OutputElement::SetFullLayoutFromTag((this - 176));
    }
  }

  return 0;
}

void sub_1DDC6C898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2OutputElement::SetFullLayout(AUSpatialMixerV2OutputElement *this, const AudioChannelLayout *a2, int a3)
{
  v43[2] = *MEMORY[0x1E69E9840];
  mChannelLayoutTag = a2->mChannelLayoutTag;
  v7 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)8>((*(this + 23) + 9824));
  if ((mChannelLayoutTag & 0xFFFEFFFF) != 0 && **(this + 15) == mChannelLayoutTag)
  {
LABEL_53:
    v16 = 0;
    goto LABEL_54;
  }

  if (a2->mChannelLayoutTag == 0x10000)
  {
    v10 = vcnt_s8(a2->mChannelBitmap);
    v10.i16[0] = vaddlv_u8(v10);
    mNumberChannelDescriptions = v10.i32[0];
  }

  else if (a2->mChannelLayoutTag)
  {
    mNumberChannelDescriptions = a2->mChannelLayoutTag;
  }

  else
  {
    mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
  }

  if (*(this + 192) != 1)
  {
    if (HIDWORD(v7))
    {
      v14 = v7 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 && *(this + 27) != mNumberChannelDescriptions && (a3 & 1) == 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v15 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v16 = 4294956445;
        goto LABEL_56;
      }

      v35 = (this + 200);
      if (*(this + 223) < 0)
      {
        v35 = *v35;
      }

      GetStringFromAudioChannelLayoutTag(__p, mChannelLayoutTag);
      if (v38 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v35;
      v40 = 2080;
      v41 = "SetFullLayout";
      v42 = 1024;
      LODWORD(v43[0]) = mNumberChannelDescriptions;
      WORD2(v43[0]) = 2080;
      *(v43 + 6) = v36;
      v34 = v15;
      goto LABEL_79;
    }

LABEL_34:
    ausdk::AUIOElement::ForceSetAudioChannelLayout(this, a2);
    v17 = *(this + 23);
    v18 = atomic_load((v17 + 9897));
    if (v18)
    {
      *buf = v17 + 3504;
      buf[8] = 1;
      std::__shared_mutex_base::lock_shared((v17 + 3504));
      for (i = 0; ; ++i)
      {
        v20 = *(v17 + 120);
        if (v20)
        {
          LODWORD(v21) = (*(*v20 + 24))(v20);
        }

        else
        {
          v21 = (*(v17 + 104) - *(v17 + 96)) >> 3;
        }

        if (i >= v21)
        {
          break;
        }

        Element = ausdk::AUScope::GetElement((v17 + 80), i);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v23 = atomic_load(Element + 760);
        if ((v23 & 1) == 0)
        {
          v24 = atomic_load(Element + 761);
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        AUSpatialMixerV2InputElement::InitializeChannelProcessors(Element);
      }

      std::__shared_mutex_base::unlock_shared((v17 + 3504));
      v25 = ausdk::AUScope::GetElement((v17 + 128), 0);
      if (!v25)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v27 = (v25 + 120);
      v26 = *(v25 + 120);
      if (*v26 == 6553601 || !*v26 && v26[2] == 1 && v26[3] == 42)
      {
        v27 = (v25 + 224);
      }

      std::mutex::lock((v17 + 8648));
      ausdk::AUChannelLayout::CopyStorage((v17 + 7128), v27);
      std::mutex::unlock((v17 + 8648));
      AUSpatialMixerV2::UpdateReverbIfNecessary(v17, -1, 0, 0);
    }

    *(this + 193) |= a3 ^ 1;
    AUSpatialMixerV2::UpdateDiffuseProcessors(*(this + 23));
    goto LABEL_53;
  }

  if (*(this + 27) == mNumberChannelDescriptions)
  {
    goto LABEL_34;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v11 = getAUSMV2Log(void)::gLog;
  if (a3)
  {
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (this + 200);
      if (*(this + 223) < 0)
      {
        v12 = *v12;
      }

      GetStringFromAudioChannelLayoutTag(__p, mChannelLayoutTag);
      if (v38 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v12;
      v40 = 2080;
      v41 = "SetFullLayout";
      v42 = 1024;
      LODWORD(v43[0]) = mNumberChannelDescriptions;
      WORD2(v43[0]) = 2080;
      *(v43 + 6) = v13;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "[%s|%s] Number of channels %u in requested audio channel layout is different than in the stream format. Default audio channel layout tag %s from preset is ignored.", buf, 0x26u);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_53;
  }

  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v32 = (this + 200);
    if (*(this + 223) < 0)
    {
      v32 = *v32;
    }

    GetStringFromAudioChannelLayoutTag(__p, mChannelLayoutTag);
    if (v38 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = v32;
    v40 = 2080;
    v41 = "SetFullLayout";
    v42 = 1024;
    LODWORD(v43[0]) = mNumberChannelDescriptions;
    WORD2(v43[0]) = 2080;
    *(v43 + 6) = v33;
    v34 = v11;
LABEL_79:
    _os_log_error_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "[%s|%s] Number of channels %u in requested audio channel layout %s is different than in the stream format.", buf, 0x26u);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = 4294956445;
LABEL_54:
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

LABEL_56:
  v28 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (this + 200);
    if (*(this + 223) < 0)
    {
      v29 = *v29;
    }

    PrintAudioChannelLayout(__p, *(this + 15));
    if (v38 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v40 = 2080;
    v41 = "SetFullLayout";
    v42 = 2080;
    v43[0] = v30;
    _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEFAULT, "[%s|%s] Current output audio channel layout is %s", buf, 0x20u);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v16;
}

unint64_t AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)8>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1;
    if (*(a1 + 23) < 0)
    {
      v12 = *a1;
    }

    *buf = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "getValue";
    v17 = 2080;
    v18 = "ausm_accept_any_channel_layout_before_initialization";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Looking for user defaults %s", buf, 0x20u);
  }

  v3 = CFPreferencesCopyAppValue(@"ausm_accept_any_channel_layout_before_initialization", @"com.apple.coreaudio");
  v5 = v3;
  if (v3)
  {
    v6 = AUSM::UserDefaults::CFTypeToUInt32(v3, v4);
    v7 = v6;
    v8 = HIDWORD(v6);
    if ((v6 & 0x100000000) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        *buf = 136315906;
        v14 = a1;
        v15 = 2080;
        v16 = "getValue";
        v17 = 2080;
        v18 = "ausm_accept_any_channel_layout_before_initialization";
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Found user defaults %s = %u", buf, 0x26u);
      }
    }

    CFRelease(v5);
    v10 = v7 & 0xFFFFFF00;
  }

  else
  {
    v10 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
  }

  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v8 << 32);
}

void sub_1DDC6D0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double ausdk::AUIOElement::ForceSetAudioChannelLayout(ausdk::AUIOElement *this, const AudioChannelLayout *a2)
{
  v4 = 20 * a2->mNumberChannelDescriptions + 12;
  v5 = (v4 & 0x1C) == 0;
  v6 = v4 >> 5;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  std::vector<AudioChannelLayout>::vector[abi:ne200100](__dst, v7);
  memcpy(__dst[0], a2, 20 * a2->mNumberChannelDescriptions + 12);
  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  result = *__dst;
  *(this + 120) = *__dst;
  *(this + 17) = v11;
  return result;
}

void *std::vector<AudioChannelLayout>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDC6D1F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::UserDefaults::CFTypeToUInt32(const __CFString *this, const void *a2)
{
  v3 = CFGetTypeID(this);
  if (v3 != CFNumberGetTypeID())
  {
    if (v3 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(this);
      goto LABEL_6;
    }

    if (v3 == CFBooleanGetTypeID())
    {
      IntValue = CFBooleanGetValue(this);
      v5 = 0;
      LOBYTE(IntValue) = IntValue != 0;
      goto LABEL_7;
    }

    v6 = 0;
    LOBYTE(IntValue) = 0;
LABEL_12:
    v5 = 0;
    return v6 | v5 | IntValue;
  }

  valuePtr = 0;
  IntValue = CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
  if (!IntValue)
  {
    v6 = 0;
    goto LABEL_12;
  }

  IntValue = valuePtr;
LABEL_6:
  v5 = IntValue & 0xFFFFFF00;
LABEL_7:
  v6 = 0x100000000;
  return v6 | v5 | IntValue;
}

uint64_t AUSpatialMixerV2OutputElement::PropertyChanged(AUSpatialMixerV2OutputElement *this, int a2)
{
  if (a2 == 3220)
  {
    v2 = atomic_load(this + 80);
    if ((*(this + 193) & 1) == 0 && v2 <= 0xFFFEFFFF)
    {
      AUSpatialMixerV2OutputElement::SetFullLayoutFromTag(this);
    }
  }

  return 0;
}

uint64_t AUSpatialMixerV2OutputElement::Initialize(AUSpatialMixerV2OutputElement *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (*v2 == 0x10000)
  {
    v4 = vcnt_s8(v2[1]);
    v4.i16[0] = vaddlv_u8(v4);
    v3 = v4.i32[0];
  }

  else if (*v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = v2[2];
  }

  if (*(this + 27) != v3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v6 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 200);
      if (*(this + 223) < 0)
      {
        v7 = *v7;
      }

      v8 = *(this + 15);
      if (*v8 == 0x10000)
      {
        v10 = vcnt_s8(v8[1]);
        v10.i16[0] = vaddlv_u8(v10);
        v9 = v10.i32[0];
      }

      else if (*v8)
      {
        v9 = *v8;
      }

      else
      {
        v9 = v8[2];
      }

      v11 = *(this + 27);
      v12 = 136315906;
      v13 = v7;
      v14 = 2080;
      v15 = "Initialize";
      v16 = 1024;
      v17 = v9;
      v18 = 1024;
      v19 = v11;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "[%s|%s] Number of channels in AudioChannelLayout = %u does not match number of channels in stream format = %u. Reverting to default layout.", &v12, 0x22u);
    }

    AUSpatialMixerV2OutputElement::ResetOutputChannelLayout(this);
  }

  result = 0;
  *(this + 192) = 1;
  return result;
}

uint64_t ausdk::AUChannelLayout::NumberChannels(ausdk::AUChannelLayout *this, const AudioChannelLayout *a2)
{
  if (*this == 0x10000)
  {
    v3 = vcnt_s8(*(this + 1));
    v3.i16[0] = vaddlv_u8(v3);
    return v3.u32[0];
  }

  else if (*this)
  {
    return *this;
  }

  else
  {
    return *(this + 2);
  }
}

uint64_t AUSpatialMixerV2OutputElement::SetStreamFormat(AUSpatialMixerV2OutputElement *this, const AudioStreamBasicDescription *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *&a2->mBytesPerPacket;
  *buf = *&a2->mSampleRate;
  *&buf[16] = v4;
  v18 = *&a2->mBitsPerChannel;
  CA::StreamDescription::AsString(__p, buf, *buf, *&v4);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v5 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 200);
    if (*(this + 223) < 0)
    {
      v6 = *v6;
    }

    v7 = __p;
    if (v16 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = "SetStreamFormat";
    *&buf[22] = 2080;
    *&buf[24] = v7;
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting output stream format: %s", buf, 0x20u);
  }

  if (a2->mSampleRate <= 0.0)
  {
    v10 = 4294967246;
  }

  else
  {
    ausdk::AUIOElement::SetStreamFormat(this, a2);
    (*(*this + 64))(this, 0);
    v8 = *(this + 15);
    if (*v8 == 0x10000)
    {
      v11 = vcnt_s8(v8[1]);
      v11.i16[0] = vaddlv_u8(v11);
      v9 = v11.i32[0];
    }

    else if (*v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = v8[2];
    }

    if (*(this + 27) != v9)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v12 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (this + 200);
        if (*(this + 223) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315394;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "SetStreamFormat";
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "[%s|%s] Number of channels in stream format changed", buf, 0x16u);
      }

      AUSpatialMixerV2OutputElement::ResetOutputChannelLayout(this);
    }

    v10 = 0;
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1DDC6D90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUElement::GetNumberOfParameters(ausdk::AUElement *this)
{
  v1 = 16;
  if (*(this + 40))
  {
    v1 = 48;
  }

  v2 = 24;
  if (*(this + 40))
  {
    v2 = 56;
  }

  v3 = 2;
  v4 = *(this + v2);
  if (!*(this + 40))
  {
    v3 = 3;
  }

  return (v4 - *(this + v1)) >> v3;
}

void AUSpatialMixerV2OutputElement::~AUSpatialMixerV2OutputElement(AUSpatialMixerV2OutputElement *this)
{
  AUSpatialMixerV2OutputElement::~AUSpatialMixerV2OutputElement(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591DD40;
  *(this + 22) = &unk_1F591DDE8;
  *(this + 31) = &unk_1F59311D0;
  std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*(this + 37));
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  ausdk::AUElement::~AUElement(this);
}

void std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void ausdk::AUElement::~AUElement(const void **this)
{
  *this = &unk_1F593ADA0;
  ausdk::Owned<__CFString const*>::releaseRef(this[9]);
  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v3 = this[2];
  if (v3)
  {
    this[3] = v3;
    operator delete(v3);
  }
}

{
  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1E12BD160);
}

void AUSM::OutputProperties::~OutputProperties(AUSM::OutputProperties *this)
{
  *this = &unk_1F59311D0;
  std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void ausdk::AUIOElement::~AUIOElement(ausdk::AUIOElement *this)
{
  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

ausdk::AUChannelLayout *ausdk::AUChannelLayout::AUChannelLayout(ausdk::AUChannelLayout *this, const ausdk::AUChannelLayout *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  ausdk::AUChannelLayout::CopyStorage(this, a2);
  return this;
}

void sub_1DDC6DCEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *ausdk::AUChannelLayout::CopyStorage(ausdk::AUChannelLayout *this, const ausdk::AUChannelLayout *a2)
{
  std::vector<AudioChannelLayout>::vector[abi:ne200100](&v7, (*(a2 + 1) - *a2) >> 5);
  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }

  v5 = v7;
  *this = v7;
  *(this + 2) = v8;
  return memcpy(v5, *a2, *(a2 + 1) - *a2);
}

void WindDetectorAndSuppressor::UpdateWindSuppressorCoreState(WindDetectorAndSuppressor *this)
{
  v1 = *(this + 62);
  v2 = *(this + 63) - v1;
  if (!v2 || (v4 = *(this + 34), v1->f32[0] = v4, v2 <= 4) || (v1->i32[1] = *(this + 62), v2 <= 8) || (v1[1].i32[0] = *(this + 41), v2 <= 0xC) || (v1[1].i32[1] = *(this + 39), v2 <= 0x10) || (v1[2].i32[0] = *(this + 38), v2 <= 0x14) || (v1[2].i32[1] = *(this + 43), v2 <= 0x18) || (v1[3].i32[0] = *(this + 63), v2 <= 0x1C) || (v1[3].i32[1] = *(this + 65), v2 <= 0x20) || (v1[4].i32[0] = *(this + 64), v2 <= 0x24) || (v1[4].i32[1] = *(this + 66), v2 <= 0x28) || (v1[5].i32[0] = *(this + 33), v2 <= 0x2C) || (v1[5].i32[1] = *(this + 67), v2 <= 0x30) || (v1[6].i32[0] = *(this + 68), v2 <= 0x34))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v1[6].i32[1] = *(this + 69);
  if (*(this + 8) == 1)
  {
    if ((*(this + 832) & 1) == 0)
    {
      __assert_rtn("propagateParameterChanges", "WindSuppressorCore.cpp", 129, "mInitialized");
    }

    v5 = *(this + 80);
    v6 = *(this + 131);
    if (v6 > (*(this + 81) - v5) >> 2)
    {
      __assert_rtn("propagateParameterChanges", "WindSuppressorCore.cpp", 130, "mRampedGainFloor.size() >= mCplxVectorSize");
    }

    v7 = *(this + 101);
    v8 = 0x8E38E38E38E38E39 * ((*(this + 102) - v7) >> 3);
    v9 = *(this + 133);
    if (v8 != v9)
    {
      __assert_rtn("propagateParameterChanges", "WindSuppressorCore.cpp", 131, "mWindTracker.size() == mNumInputChannels");
    }

    *(this + 140) = __exp10f(v4 / 20.0);
    v10 = *(this + 69);
    v23 = v10 / *(this + 132);
    *(this + 143) = expf(-1.0 / (v1[3].f32[0] * v23));
    *(this + 144) = expf(-1.0 / (v23 * v1[3].f32[1]));
    *(this + 145) = expf(-1.0 / (v23 * v1[4].f32[1]));
    *(this + 146) = expf(-1.0 / (v23 * v1[6].f32[1]));
    if (v9)
    {
      v11 = v1[5].f32[0];
      v12 = (v23 * v1[4].f32[0]);
      v13 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v1[3], v23)));
      __asm { FMOV            V4.2S, #1.0 }

      v19 = vdiv_f32(COERCE_FLOAT32X2_T(-_D4), vadd_f32(vcvt_f32_f64(vcvtq_f64_u64(v13)), vdup_n_s32(0x25800000u)));
      v20 = v7 + 3;
      do
      {
        v20[-3].f32[0] = v11;
        v20[-3].f32[1] = v11 * 0.5;
        v20[1] = *v13.i8;
        v20[2] = v12;
        v20[3] = v13.u64[1];
        v20[-2] = 0x3F80000000000000;
        *v20 = v19;
        v20 += 9;
        --v8;
      }

      while (v8);
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v22 = (2.0 / (expf(-(v1->f32[1] * i)) + 1.0)) + -1.0;
        *(v5 + 4 * i) = v22;
        if (*(this + 140) >= v22)
        {
          v22 = *(this + 140);
        }

        *(v5 + 4 * i) = v22;
      }
    }
  }
}

void WindDetectorAndSuppressor::~WindDetectorAndSuppressor(WindDetectorAndSuppressor *this)
{
  WindSuppressorCore::~WindSuppressorCore((this + 496));
  v2 = *(this + 59);
  if (v2)
  {
    *(this + 60) = v2;
    operator delete(v2);
  }

  v3 = *(this + 56);
  if (v3)
  {
    *(this + 57) = v3;
    operator delete(v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    *(this + 54) = v4;
    operator delete(v4);
  }

  v5 = *(this + 50);
  if (v5)
  {
    *(this + 51) = v5;
    operator delete(v5);
  }

  v6 = *(this + 47);
  if (v6)
  {
    *(this + 48) = v6;
    operator delete(v6);
  }

  v7 = *(this + 44);
  if (v7)
  {
    *(this + 45) = v7;
    operator delete(v7);
  }

  v8 = *(this + 41);
  if (v8)
  {
    *(this + 42) = v8;
    operator delete(v8);
  }

  v9 = *(this + 38);
  if (v9)
  {
    *(this + 39) = v9;
    operator delete(v9);
  }

  v10 = *(this + 35);
  if (v10)
  {
    *(this + 36) = v10;
    operator delete(v10);
  }
}

float WindDetectorAndSuppressor::UpdateNonTrivialParameters(WindDetectorAndSuppressor *this, double a2, double a3, double a4)
{
  v5 = *(this + 2);
  v6 = *(this + 6);
  v7 = v5 / (v6 + v6);
  *&a4 = (v6 - 1);
  v8.i64[0] = *(this + 140);
  v8.i64[1] = *(this + 20);
  *&v7 = v7;
  v9 = vdupq_lane_s32(*&v7, 0);
  v10 = vdupq_lane_s32(*&a4, 0);
  *(this + 28) = vcvtq_u32_f32(vminnmq_f32(vmaxnmq_f32(vrndaq_f32(vdivq_f32(v8, v9)), 0), v10));
  v8.f32[0] = fminf(fmaxf(roundf(*(this + 42) / *&v7), 0.0), *&a4);
  *(this + 11) = v8.f32[0];
  *(this + 12) = v8.f32[0] + 1;
  *(this + 52) = vcvt_u32_f32(vminnm_f32(vmaxnm_f32(vrnda_f32(vdiv_f32(*(this + 204), *v9.f32)), 0), *v10.f32));
  *(this + 15) = fminf(fmaxf(roundf(*(this + 53) / *&v7), 0.0), *&a4);
  v11 = v5 / v6;
  v12 = exp(-1.0 / (*(this + 37) * v11));
  *(this + 16) = v12;
  v13 = exp(-1.0 / (*(this + 54) * v11));
  v14 = floorf(*(this + 44) * v11);
  *(this + 17) = v13;
  *(this + 18) = v14;
  *(this + 20) = floorf(*(this + 58) * v11);
  result = __exp10(*(this + 34) / 20.0);
  *(this + 22) = result;
  return result;
}

void WindDetectorAndSuppressor::Reset(WindDetectorAndSuppressor *this, int16x4_t a2)
{
  v3 = *(this + 6);
  v24 = 0;
  std::vector<float>::assign(this + 35, v3, &v24, a2);
  v4 = *(this + 6);
  v23 = 0;
  std::vector<float>::assign(this + 38, v4, &v23, v5);
  v6 = (2 * *(this + 6));
  v22 = 0;
  std::vector<float>::assign(this + 41, v6, &v22, v7);
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 108) = 0;
  *(this + 19) = *(this + 18);
  v8.i32[0] = *(this + 20);
  *(this + 21) = *v8.i32;
  *(this + 116) = 0;
  v9 = WindDetectorAndSuppressor::ResetOutputPropertiesAndParams(this, v8);
  if (*(this + 8) == 1)
  {
    if ((*(this + 832) & 1) == 0)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 88, "mInitialized");
    }

    v10 = *(this + 98);
    v11 = *(this + 133);
    if (v11 + 1 != (*(this + 99) - v10) >> 2)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 89, "mAggregateOmniMicWeight.size() == mNumInputChannels + 1");
    }

    v12 = 0x8E38E38E38E38E39 * ((*(this + 102) - *(this + 101)) >> 3);
    if (v12 != v11)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 90, "mWindTracker.size() == mNumInputChannels");
    }

    if (v12 != (*(this + 93) - *(this + 92)) >> 2)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 91, "mGainApplicationCutoffIndex.size() == mNumInputChannels");
    }

    v13 = *(this + 95);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 96) - v13) >> 3) != v12)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 92, "mSmoothSuppressionGains.size() == mNumInputChannels");
    }

    if (*(this + 131) != (v13[1] - *v13) >> 2)
    {
      __assert_rtn("reset", "WindSuppressorCore.cpp", 93, "mSmoothSuppressionGains[0].size() == mCplxVectorSize");
    }

    if (!v11)
    {
      v21 = 4;
      goto LABEL_14;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      *(*(this + 92) + 4 * v16) = 0;
      v17 = *(this + 101) + v14;
      *(v17 + 16) = 0;
      *(v17 + 56) = 1;
      *(v17 + 64) = 0;
      std::vector<float>::assign((*(this + 95) + v15), *(this + 131), &WindSuppressorCore::kDefaultGains, *&v9);
      ++v16;
      v18 = *(this + 133);
      v15 += 24;
      v14 += 72;
    }

    while (v16 < v18);
    v19 = __CFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      v10 = *(this + 98);
      v21 = 4 * v20;
LABEL_14:
      memset_pattern16(v10, "", v21);
    }
  }
}

double WindDetectorAndSuppressor::ResetOutputPropertiesAndParams(WindDetectorAndSuppressor *this, int16x4_t a2)
{
  v3 = *(this + 6);
  v6 = 1065353216;
  std::vector<float>::assign(this + 44, v3, &v6, a2);
  std::vector<float>::assign(this + 47, *(this + 6), this, v4);
  *(this + 120) = 0;
  *(this + 124) = 0x4320000000000000;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  result = 0.0000305175853;
  *(this + 236) = 0x3F0000003F000000;
  return result;
}

uint64_t WindDetectorAndSuppressor::GetPSD(uint64_t a1, float *a2, void *a3)
{
  v5 = &a2[*(a1 + 24)];
  __A.realp = a2;
  __A.imagp = v5;
  vDSP_zvmags(&__A, 1, *(a1 + 424), 1, *(a1 + 48));
  **(a1 + 424) = *__A.realp * *__A.realp;
  return MEMORY[0x1E12BE930](*a3, 1);
}

void ecutils::fcn_vector_init<float>(uint64_t *a1, unsigned int a2, unsigned int a3, float a4)
{
  v7 = a4;
  v5 = a2;
  std::vector<float>::vector[abi:ne200100](__p, a3);
  std::vector<std::vector<float>>::assign(a1, v5, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDC6E6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ecutils::fcn_vector_init<float>(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v23 = a5;
  v7 = a3;
  std::vector<float>::vector[abi:ne200100](__p, a4);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v21, v7);
  v8 = a2;
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::vector<std::vector<float>>>::__vdeallocate(a1);
    v10 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v10 <= a2)
    {
      v10 = a2;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](a1, v11);
  }

  v12 = (*(a1 + 8) - v9) >> 3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * v12;
  }

  for (; v14; --v14)
  {
    if (v9 != &v21)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v9, v21, v22, 0xAAAAAAAAAAAAAAABLL * (v22 - v21));
    }

    v9 += 3;
  }

  if (v8 <= v13)
  {
    v18 = *(a1 + 8);
    v19 = *a1 + 24 * v8;
    while (v18 != v19)
    {
      v18 -= 3;
      v24 = v18;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    }

    *(a1 + 8) = v19;
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = &v15[3 * (v8 - v13)];
    v17 = 24 * v8 - 24 * v13;
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v15, v21, v22, 0xAAAAAAAAAAAAAAABLL * (v22 - v21));
      v15 += 3;
      v17 -= 24;
    }

    while (v17);
    *(a1 + 8) = v16;
  }

  v24 = &v21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDC6E918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  a16 = &a12;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ecutils::fcn_vector_init<float>(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, float a6)
{
  v25 = a6;
  v9 = a4;
  std::vector<float>::vector[abi:ne200100](__p, a5);
  std::vector<std::vector<float>>::vector[abi:ne200100](v22, v9);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](&v23, a3);
  v10 = a2;
  v11 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < v10)
  {
    std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(a1);
    v12 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v12 <= v10)
    {
      v12 = v10;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](a1, v13);
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - v11) >> 3);
  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - v11) >> 3);
  }

  for (; v15; --v15)
  {
    if (v11 != &v23)
    {
      std::vector<std::vector<std::vector<float>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v11, v23, v24, 0xAAAAAAAAAAAAAAABLL * (v24 - v23));
    }

    v11 += 3;
  }

  if (v10 <= v14)
  {
    v19 = *(a1 + 8);
    v20 = *a1 + 24 * v10;
    while (v19 != v20)
    {
      v19 -= 3;
      v26 = v19;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v26);
    }

    *(a1 + 8) = v20;
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = &v16[3 * (v10 - v14)];
    v18 = 24 * v10 - 24 * v14;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v16, v23, v24, 0xAAAAAAAAAAAAAAABLL * (v24 - v23));
      v16 += 3;
      v18 -= 24;
    }

    while (v18);
    *(a1 + 8) = v17;
  }

  v26 = &v23;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v26 = v22;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDC6EBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v16 - 72) = &a16;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100]((v16 - 72));
  *(v16 - 72) = &a13;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v16 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<std::vector<std::vector<float>>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC6EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<std::vector<float>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, char ***a2, char ***a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::vector<float>>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<DSPSplitComplex>>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(a2, a3, v7);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v15 = v14;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v15);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(a2, (a2 + v10), v7);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(a1, v11, a3, *(a1 + 8));
  }
}

char ***std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(char ***a1, char ***a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a3, *v4, v4[1], 0xAAAAAAAAAAAAAAABLL * (v4[1] - *v4));
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, (a2 + v10), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, v11, a3, a1[1]);
  }
}