uint64_t AUBeamNFSelector::GetParameterList(AUBeamNFSelector *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956430;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
      *(a3 + 2) = xmmword_1DE09C1E0;
      *(a3 + 3) = xmmword_1DE09C0E0;
      *(a3 + 4) = xmmword_1DE09C1F0;
      *(a3 + 5) = xmmword_1DE09C200;
      a3[26] = 26;
      *(a3 + 12) = 0x1900000018;
    }

    v4 = 27;
  }

  *a4 = v4;
  return result;
}

ausdk::AUInputElement *AUBeamNFSelector::Render(AUBeamNFSelector *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v28[1] = *MEMORY[0x1E69E9840];
  do
  {
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      v11 = *(this + 69);
      v12 = ausdk::AUScope::GetElement((this + 80), v8);
      if (!v12)
      {
LABEL_24:
        ausdk::Throw(0xFFFFD583);
      }

      if (v11 != *(v12 + 80))
      {
        __assert_rtn("Render", "AUBeamNFSelector.cpp", 1167, "mSampleRate == Input(i).GetStreamFormat().mSampleRate");
      }

      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 1;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 5);
  v15 = 0;
  v27 = 0;
  v28[0] = 0;
  v16 = &v27;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = *(this + 69);
    v20 = ausdk::AUScope::GetElement((this + 128), v15);
    if (!v20)
    {
      goto LABEL_24;
    }

    if (v19 != *(v20 + 80))
    {
      __assert_rtn("Render", "AUBeamNFSelector.cpp", 1192, "mSampleRate == Output(i).GetStreamFormat().mSampleRate");
    }

    v21 = ausdk::AUScope::GetElement((this + 128), v15);
    if (!v21)
    {
      goto LABEL_24;
    }

    v22 = ausdk::AUIOElement::PrepareBuffer(v21, a4);
    v17 = 0;
    *v16 = v22;
    v15 = 1;
    v16 = v28;
  }

  while ((v18 & 1) != 0);
  if (v9)
  {
    return 0;
  }

  v23 = 0;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  do
  {
    v24 = ausdk::AUScope::GetElement((this + 80), v23);
    if (!v24)
    {
      goto LABEL_24;
    }

    if (!*(v24 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    *(v25 + v23++) = *(v24 + 152) + 48;
  }

  while (v23 != 5);
  return (*(*this + 184))(this, a2, a4, 5, v25, 2, &v27);
}

uint64_t AUBeamNFSelector::ProcessMultipleBufferLists(AUBeamNFSelector *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v55 = *MEMORY[0x1E69E9840];
  result = 4294956428;
  if (a6 == 2 && a4 == 5 && *(this + 137) == a3)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 2u);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v13 = (this + 560);
    v14 = ausdk::AUBufferList::PrepareBufferOrError((this + 560), Element + 2, a3);
    if ((v15 & 1) == 0)
    {
      ausdk::Throw(v14);
    }

    v16 = 2 * a3;
    if (v16)
    {
      if (*v13)
      {
        v17 = *(a5 + 1);
        mData = a5[2]->mBuffers[0].mData;
        v19 = a5[3]->mBuffers[0].mData;
        v20 = *(this + 71);
        v21 = *(v20 + 64);
        do
        {
          v22 = *mData++;
          v23 = v22;
          v24 = *v19++;
          *v21++ = (v23 + v24) * 0.5;
          --v16;
        }

        while (v16);
        v52 = v17;
        v54 = *a5;
LABEL_13:
        v53 = v20 + 48;
        v27 = *(this + 132);
        if (*(this + 133) != v27)
        {
          AUBeamNFSelector::UpdateState(this);
          *(this + 133) = v27;
        }

        if (*(this + 536) == 1)
        {
          CopyBufferList(a5[2], *a7);
          CopyBufferList(a5[4], a7[1]);
          return 0;
        }

        v28 = *(this + 308);
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v29 = 1;
          }

          else
          {
            if (v28 != 3)
            {
              goto LABEL_28;
            }

            v29 = 2;
          }

          *(this + 309) = v29;
        }

        else if (v28)
        {
          if (v28 == 1)
          {
            *(this + 309) = 0;
          }
        }

        else if ((*(this + 1280) & 1) == 0)
        {
          AUBeamNFSelector::DetectPosition(this, a5[2]->mBuffers[0].mData, a5[3]->mBuffers, (*a5)->mBuffers, a5[1]->mBuffers, a5[4]->mBuffers);
        }

LABEL_28:
        v30 = *(this + 309);
        if (v30 != *(this + 136))
        {
          v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v32 & 1) == 0)
          {
            goto LABEL_64;
          }

          ausdk::AUElement::SetParameter(v31, 1u, *(this + 309));
          v30 = *(this + 309);
          *(this + 136) = v30;
        }

        v33 = *(this + 311);
        if (v33 != 2)
        {
          if (v33 != 1)
          {
            if (!v33)
            {
              if (v30 > 1)
              {
                goto LABEL_46;
              }

              goto LABEL_40;
            }

            if ((*(this + 310) - 3) > 1)
            {
              goto LABEL_48;
            }

LABEL_52:
            v37 = a5[4]->mBuffers[0].mData;
            v38 = *(this + 148);
            MEMORY[0x1E12BE7F0](v37, 1, *(this + 76), 1, v38, 1, *(this + 137));
            MEMORY[0x1E12BE7F0](&v37[4 * *(this + 137)], 1, *(this + 76), 1, &v38[*(this + 137)], 1);
            AUBeamNFSelector::ApplySystemNoiseFloor(this, v38, *(this + 73));
            goto LABEL_53;
          }

          v34 = *(this + 335);
          if (v34 == 1)
          {
LABEL_40:
            *(this + 310) = 0;
LABEL_48:
            memcpy(*(this + 148), a5[4]->mBuffers[0].mData, a5[4]->mBuffers[0].mDataByteSize);
LABEL_53:
            v39 = *(&v52 + *(this + 310));
            memcpy(*(this + 151), *(v39 + 16), *(v39 + 12));
            if (*(this + 310) == *(this + 135))
            {
LABEL_59:
              memcpy(a7[1]->mBuffers[0].mData, *(this + 148), a7[1]->mBuffers[0].mDataByteSize);
              memcpy((*a7)->mBuffers[0].mData, *(this + 151), (*a7)->mBuffers[0].mDataByteSize);
              return 0;
            }

            v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v41)
            {
              ausdk::AUElement::SetParameter(v40, 2u, *(this + 310));
              v42 = *(&v52 + *(this + 135));
              memcpy(*(this + 145), *(v42 + 16), *(v42 + 12));
              if ((*(this + 135) - 3) > 1)
              {
                memcpy(*(this + 142), a5[4]->mBuffers[0].mData, a5[4]->mBuffers[0].mDataByteSize);
              }

              else
              {
                v43 = a5[4]->mBuffers[0].mData;
                v44 = *(this + 142);
                MEMORY[0x1E12BE7F0](v43, 1, *(this + 76), 1, v44, 1, *(this + 137));
                MEMORY[0x1E12BE7F0](&v43[4 * *(this + 137)], 1, *(this + 76), 1, &v44[*(this + 137)], 1);
                AUBeamNFSelector::ApplySystemNoiseFloor(this, v44, *(this + 73));
              }

              v45 = *(this + 145);
              v46 = *(this + 151);
              v47 = (2 * *(this + 137));
              __C = 0.5;
              vDSP_vasm(v45, 1, v46, 1, &__C, v46, 1, v47);
              v48 = *(this + 142);
              v49 = *(this + 148);
              v50 = (2 * *(this + 137));
              __C = 0.5;
              vDSP_vasm(v48, 1, v49, 1, &__C, v49, 1, v50);
              *(this + 135) = *(this + 310);
              goto LABEL_59;
            }

LABEL_64:
            abort();
          }

          if (!v34)
          {
LABEL_46:
            v35 = 1;
            goto LABEL_47;
          }

          if (v30 != 1)
          {
            if (!v30)
            {
              goto LABEL_40;
            }

            goto LABEL_46;
          }

LABEL_43:
          v35 = 2;
LABEL_47:
          *(this + 310) = v35;
          goto LABEL_48;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            goto LABEL_43;
          }

          v36 = 4;
        }

        else
        {
          v36 = 3;
        }

        *(this + 310) = v36;
        goto LABEL_52;
      }
    }

    else
    {
      v25 = *v13;
      v26 = *a5;
      v52 = *(a5 + 1);
      v54 = v26;
      if (v25)
      {
        v20 = *(this + 71);
        goto LABEL_13;
      }
    }

    ausdk::Throw(0xFFFFFFFFLL);
  }

  return result;
}

void AUBeamNFSelector::UpdateState(AUBeamNFSelector *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 308) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 309) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 310) = ausdk::AUElement::GetParameter(v6, 2u), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (*(this + 311) = ausdk::AUElement::GetParameter(v8, 3u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (*(this + 312) = ausdk::AUElement::GetParameter(v10, 4u), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (*(this + 314) = ausdk::AUElement::GetParameter(v12, 6u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 315) = ausdk::AUElement::GetParameter(v14, 7u), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (*(this + 316) = ausdk::AUElement::GetParameter(v16, 8u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0) || (*(this + 317) = ausdk::AUElement::GetParameter(v18, 9u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0) || (*(this + 318) = ausdk::AUElement::GetParameter(v20, 0xAu), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0) || (*(this + 313) = ausdk::AUElement::GetParameter(v22, 5u), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (*(this + 319) = ausdk::AUElement::GetParameter(v24, 0xBu), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0) || (*(this + 321) = ausdk::AUElement::GetParameter(v26, 0xCu), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (*(this + 322) = ausdk::AUElement::GetParameter(v28, 0xDu), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0) || (*(this + 323) = ausdk::AUElement::GetParameter(v30, 0xEu), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0) || (*(this + 1304) = ausdk::AUElement::GetParameter(v32, 0x11u) != 0.0, v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0) || (*(this + 334) = ausdk::AUElement::GetParameter(v34, 0x17u), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v37 & 1) == 0))
  {
    abort();
  }

  *(this + 335) = ausdk::AUElement::GetParameter(v36, 0x1Au);
  *(this + 1280) = *(this + 319) > *(this + 321);
  AUBeamNFSelector::UpdateFrequencyBinIndices(this);

  AUBeamNFSelector::UpdateSmoothingCoefs(this);
}

void AUBeamNFSelector::DetectPosition(AUBeamNFSelector *this, const AudioBuffer *a2, const AudioBuffer *a3, const AudioBuffer *a4, const AudioBuffer *a5, const AudioBuffer *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  __B = 1.0;
  AUBeamNFSelector::GetSmoothedPSD(this, a2, this + 91);
  AUBeamNFSelector::GetSmoothedPSD(this, a3->mData, this + 97);
  AUBeamNFSelector::GetSmoothedPSD(this, a6->mData, this + 103);
  AUBeamNFSelector::GetSmoothedPSD(this, a4->mData, this + 94);
  AUBeamNFSelector::GetSmoothedPSD(this, a5->mData, this + 100);
  vDSP_vdbcon(*(this + 91), 1, &__B, *(this + 112), 1, *(this + 178), 0);
  vDSP_vdbcon(*(this + 103), 1, &__B, *(this + 118), 1, *(this + 178), 0);
  MEMORY[0x1E12BE9A0](*(this + 118), 1, *(this + 112), 1, *(this + 109), 1, *(this + 178));
  v11 = (this + 1308);
  vDSP_meanv(*(this + 109), 1, this + 327, *(this + 178));
  *(this + 327) = fmaxf(*(this + 327), 0.0);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::SetParameter(v12, 0x12u, *(this + 327));
  vDSP_vdbcon(*(this + 97), 1, &__B, *(this + 115), 1, *(this + 178), 0);
  MEMORY[0x1E12BE9A0](*(this + 118), 1, *(this + 115), 1, *(this + 109), 1, *(this + 178));
  vDSP_meanv(*(this + 109), 1, this + 328, *(this + 178));
  *(this + 328) = fmaxf(*(this + 328), 0.0);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::SetParameter(v14, 0x13u, *(this + 328));
  mData = a6->mData;
  v17 = *(this + 139);
  MEMORY[0x1E12BE7F0](mData, 1, *(this + 76), 1, v17, 1, *(this + 137));
  MEMORY[0x1E12BE7F0](&mData[4 * *(this + 137)], 1, *(this + 76), 1, &v17[*(this + 137)], 1);
  AUBeamNFSelector::ApplySystemNoiseFloor(this, v17, *(this + 73));
  AUBeamNFSelector::GetSmoothedPSD(this, *(this + 139), this + 106);
  vDSP_vdbcon(*(this + 106), 1, &__B, *(this + 121), 1, *(this + 178), 0);
  vDSP_vdbcon(*(this + 94), 1, &__B, *(this + 124), 1, *(this + 178), 0);
  MEMORY[0x1E12BE9A0](*(this + 121), 1, *(this + 124), 1, *(this + 109), 1, *(this + 178));
  vDSP_meanv(*(this + 109), 1, this + 329, *(this + 178));
  *(this + 329) = fmaxf(*(this + 329), 0.0);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::SetParameter(v18, 0x18u, *(this + 329));
  vDSP_vdbcon(*(this + 100), 1, &__B, *(this + 127), 1, *(this + 178), 0);
  MEMORY[0x1E12BE9A0](*(this + 121), 1, *(this + 127), 1, *(this + 109), 1, *(this + 178));
  vDSP_meanv(*(this + 109), 1, this + 330, *(this + 178));
  *(this + 330) = fmaxf(*(this + 330), 0.0);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::SetParameter(v20, 0x19u, *(this + 330));
  v22 = *v11;
  v23 = vrev64q_s32(*v11);
  v23.i64[0] = v11->i64[0];
  v41 = v23;
  v24 = 1;
  v25 = &v41;
  do
  {
    if (*v22.i32 < *&v41.i32[v24])
    {
      v22.i32[0] = v41.i32[v24];
      v25 = (&v41 + v24 * 4);
    }

    ++v24;
  }

  while (v24 != 4);
  *(this + 331) = v25->i32[0];
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

  ausdk::AUElement::SetParameter(v26, 0x14u, *(this + 331));
  if (*(this + 312))
  {
    goto LABEL_18;
  }

  v28 = *(this + 318);
  v29 = *(this + 316);
  if (v28 <= v29)
  {
    v31 = *(this + 314);
  }

  else
  {
    v30 = *(this + 317);
    v31 = v28 >= v30 ? *(this + 315) : *(this + 314) + (((*(this + 314) - *(this + 315)) / (v29 - v30)) * (v28 - v29));
  }

  *(this + 313) = v31;
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
LABEL_27:
    abort();
  }

  ausdk::AUElement::SetParameter(v32, 5u, *(this + 313));
LABEL_18:
  v34 = *(this + 179);
  *(this + 1304) = 0;
  if (*(this + 331) > *(this + 313))
  {
    *(this + 1304) = 1;
    v34 = *(this + 329) - *(this + 330);
  }

  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

  LOBYTE(v36) = *(this + 1304);
  ausdk::AUElement::SetParameter(v35, 0x11u, v36);
  *(this + 179) = v34;
  v38 = (v34 * (1.0 - *(this + 333))) + (*(this + 333) * *(this + 180));
  *(this + 180) = v38;
  if (v38 <= *(this + 323))
  {
    v39 = 2;
  }

  else
  {
    if (v38 < *(this + 322))
    {
      return;
    }

    v39 = 0;
  }

  *(this + 309) = v39;
}

uint64_t AUBeamNFSelector::ApplySystemNoiseFloor(AUBeamNFSelector *this, float *a2, const float *a3)
{
  v5 = *(this + 137);
  __A.realp = a2;
  __A.imagp = &a2[v5];
  vDSP_zvmags(&__A, 1, *(this + 133), 1, v5);
  vDSP_zvphas(&__A, 1, *(this + 136), 1, *(this + 137));
  vDSP_vmax(*(this + 133), 1, a3, 1, *(this + 133), 1, *(this + 137));
  v7 = *(this + 137);
  vvsqrtf(*(this + 133), *(this + 133), &v7);
  vvcosf(__A.realp, *(this + 136), &v7);
  MEMORY[0x1E12BE7F0](__A.realp, 1, *(this + 133), 1, __A.realp, 1, *(this + 137));
  vvsinf(__A.imagp, *(this + 136), &v7);
  return MEMORY[0x1E12BE7F0](__A.imagp, 1, *(this + 133), 1, __A.imagp, 1, *(this + 137));
}

uint64_t AUBeamNFSelector::GetSmoothedPSD(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a2 + 4 * *(a1 + 1296) + 4 * *(a1 + 548));
  __A.realp = (a2 + 4 * *(a1 + 1296));
  __A.imagp = v5;
  vDSP_zvmags(&__A, 1, *(a1 + 1040), 1, *(a1 + 712));
  MEMORY[0x1E12BE8A0](*(a1 + 1040), 1, &AUBeamNFSelector::eps, *(a1 + 1040), 1, *(a1 + 712));
  v8 = *(a1 + 1328);
  v7 = 1.0 - v8;
  return MEMORY[0x1E12BE930](*a3, 1, &v8, *(a1 + 1040), 1, &v7, *a3, 1, *(a1 + 712));
}

void AUBeamNFSelector::UpdateFrequencyBinIndices(AUBeamNFSelector *this)
{
  v2 = *(this + 137);
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v3, 0xFu), v6 = *(this + 69), v7 = *(this + 137), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  v10 = v6;
  v11 = vcvtas_u32_f32((Parameter / (v10 * 0.5)) * v2);
  *v13.i32 = ausdk::AUElement::GetParameter(v8, 0x10u);
  v12 = *(this + 69);
  *v13.i32 = (*v13.i32 / (v12 * 0.5)) * v7;
  v14 = vcvtas_u32_f32(*v13.i32);
  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if (v15 != *(this + 324) || *(this + 325) != v14)
  {
    *(this + 324) = v15;
    *(this + 325) = v14;
    v16 = v14 - v15 + 1;
    *(this + 178) = v16;
    v43 = 0;
    std::vector<float>::assign(this + 91, v16, &v43, v13);
    v17 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 97, v17, &v43, v18);
    v19 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 94, v19, &v43, v20);
    v21 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 100, v21, &v43, v22);
    v23 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 103, v23, &v43, v24);
    v25 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 106, v25, &v43, v26);
    v27 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 109, v27, &v43, v28);
    v29 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 112, v29, &v43, v30);
    v31 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 115, v31, &v43, v32);
    v33 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 118, v33, &v43, v34);
    v35 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 121, v35, &v43, v36);
    v37 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 124, v37, &v43, v38);
    v39 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 127, v39, &v43, v40);
    v41 = *(this + 178);
    v43 = 0;
    std::vector<float>::assign(this + 130, v41, &v43, v42);
  }
}

void AUBeamNFSelector::UpdateSmoothingCoefs(AUBeamNFSelector *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v2, 0x15u), LODWORD(v5) = *(this + 137), v6 = *(this + 69) / v5, *(this + 332) = expf(-1.0 / (Parameter * v6)), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0))
  {
    abort();
  }

  v9 = ausdk::AUElement::GetParameter(v7, 0x16u);
  LODWORD(v10) = *(this + 137);
  v11 = *(this + 69) / v10;
  *(this + 333) = expf(-1.0 / (v9 * v11));
}

uint64_t AUBeamNFSelector::SetParameter(AUBeamNFSelector *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
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

uint64_t AUBeamNFSelector::SetProperty(AUBeamNFSelector *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, int a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 4530)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 536) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a5)
  {
    v8 = *a5;
    CFRetain(*a5);
    value = 0;
    if (CFDictionaryGetValueIfPresent(v8, @"BeamSystemNoiseProfile", &value))
    {
      if (AUBeamNFSelectorLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
      }

      if (AUBeamNFSelectorLogScope(void)::scope)
      {
        v9 = *AUBeamNFSelectorLogScope(void)::scope;
        if (!*AUBeamNFSelectorLogScope(void)::scope)
        {
LABEL_27:
          SpectralProfile::SetProfile((this + 632), value);
          goto LABEL_28;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "AUBeamNFSelector.cpp";
        v18 = 1024;
        v19 = 527;
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d BeamSystemNoiseProfile found in plist.", buf, 0x12u);
      }

      goto LABEL_27;
    }

    if (AUBeamNFSelectorLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
    }

    if (AUBeamNFSelectorLogScope(void)::scope)
    {
      v11 = *AUBeamNFSelectorLogScope(void)::scope;
      if (!*AUBeamNFSelectorLogScope(void)::scope)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "AUBeamNFSelector.cpp";
      v18 = 1024;
      v19 = 545;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BeamSystemNoiseProfile dictionary not present in plist.", buf, 0x12u);
    }

LABEL_28:
    cf = 0;
    if (!CFDictionaryGetValueIfPresent(v8, @"BeamFarfieldEQ", &cf))
    {
      if (AUBeamNFSelectorLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
      }

      if (AUBeamNFSelectorLogScope(void)::scope)
      {
        v13 = *AUBeamNFSelectorLogScope(void)::scope;
        if (!*AUBeamNFSelectorLogScope(void)::scope)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "AUBeamNFSelector.cpp";
        v18 = 1024;
        v19 = 572;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BeamFarfieldEQ dictionary not present in plist.", buf, 0x12u);
      }

      goto LABEL_43;
    }

    if (AUBeamNFSelectorLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
    }

    if (AUBeamNFSelectorLogScope(void)::scope)
    {
      v12 = *AUBeamNFSelectorLogScope(void)::scope;
      if (!*AUBeamNFSelectorLogScope(void)::scope)
      {
LABEL_42:
        SpectralProfile::SetProfile((this + 672), cf);
LABEL_43:
        CFRelease(v8);
        return 0;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "AUBeamNFSelector.cpp";
      v18 = 1024;
      v19 = 554;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d BeamFarfieldEQ found in plist.", buf, 0x12u);
    }

    goto LABEL_42;
  }

  if (AUBeamNFSelectorLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
  }

  if (!AUBeamNFSelectorLogScope(void)::scope)
  {
    v10 = MEMORY[0x1E69E9C10];
LABEL_45:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "AUBeamNFSelector.cpp";
      v18 = 1024;
      v19 = 514;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.", buf, 0x12u);
    }

    return 4294956445;
  }

  v10 = *AUBeamNFSelectorLogScope(void)::scope;
  if (*AUBeamNFSelectorLogScope(void)::scope)
  {
    goto LABEL_45;
  }

  return 4294956445;
}

void sub_1DDF783D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  if (*(v13 + 3568) != -1)
  {
    dispatch_once(&AUBeamNFSelectorLogScope(void)::once, &__block_literal_global_23970);
  }

  v14 = *(v12 + 3576);
  if (v14)
  {
    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315394;
    *(&buf + 4) = "AUBeamNFSelector.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 565;
    _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set BeamFarfieldEQ data to SpectralProfile object. Invalid dictionary entry?", &buf, 0x12u);
  }

LABEL_10:
  CFRelease(v11);
  __cxa_end_catch();
  JUMPOUT(0x1DDF78280);
}

uint64_t AUBeamNFSelector::GetProperty(AUBeamNFSelector *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 536;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUBeamNFSelector::GetPropertyInfo(AUBeamNFSelector *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUBeamNFSelector::Initialize(AUBeamNFSelector *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *(this + 15);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), i);
    if (!Element)
    {
      goto LABEL_24;
    }

    if (*(Element + 80) != *(this + 69))
    {
      __assert_rtn("Initialize", "AUBeamNFSelector.cpp", 375, "Input(i).GetStreamFormat().mSampleRate == mSampleRate");
    }

    v6 = ausdk::AUScope::GetElement((this + 80), i);
    if (!v6)
    {
LABEL_24:
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v6 + 108) != 1)
    {
      return 4294956428;
    }
  }

  for (j = 0; ; ++j)
  {
    v8 = *(this + 21);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (j >= v9)
    {
      break;
    }

    v10 = ausdk::AUScope::GetElement((this + 128), j);
    if (!v10)
    {
      goto LABEL_24;
    }

    if (*(v10 + 80) != *(this + 69))
    {
      __assert_rtn("Initialize", "AUBeamNFSelector.cpp", 383, "Output(i).GetStreamFormat().mSampleRate == mSampleRate");
    }

    v11 = ausdk::AUScope::GetElement((this + 128), j);
    if (!v11)
    {
      goto LABEL_24;
    }

    if (*(v11 + 108) != 1)
    {
      return 4294956428;
    }
  }

  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v14 & 1) == 0 || (*(this + 135) = ausdk::AUElement::GetParameter(v13, 2u), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v16 & 1) == 0))
  {
    abort();
  }

  *(this + 136) = ausdk::AUElement::GetParameter(v15, 1u);
  AUBeamNFSelector::UpdateState(this);
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUBeamNFSelector::~AUBeamNFSelector(AUBeamNFSelector *this)
{
  AUBeamNFSelector::~AUBeamNFSelector(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5930158;
  v2 = *(this + 151);
  if (v2)
  {
    *(this + 152) = v2;
    operator delete(v2);
  }

  v3 = *(this + 148);
  if (v3)
  {
    *(this + 149) = v3;
    operator delete(v3);
  }

  v4 = *(this + 145);
  if (v4)
  {
    *(this + 146) = v4;
    operator delete(v4);
  }

  v5 = *(this + 142);
  if (v5)
  {
    *(this + 143) = v5;
    operator delete(v5);
  }

  v6 = *(this + 139);
  if (v6)
  {
    *(this + 140) = v6;
    operator delete(v6);
  }

  v7 = *(this + 136);
  if (v7)
  {
    *(this + 137) = v7;
    operator delete(v7);
  }

  v8 = *(this + 133);
  if (v8)
  {
    *(this + 134) = v8;
    operator delete(v8);
  }

  v9 = *(this + 130);
  if (v9)
  {
    *(this + 131) = v9;
    operator delete(v9);
  }

  v10 = *(this + 127);
  if (v10)
  {
    *(this + 128) = v10;
    operator delete(v10);
  }

  v11 = *(this + 124);
  if (v11)
  {
    *(this + 125) = v11;
    operator delete(v11);
  }

  v12 = *(this + 121);
  if (v12)
  {
    *(this + 122) = v12;
    operator delete(v12);
  }

  v13 = *(this + 118);
  if (v13)
  {
    *(this + 119) = v13;
    operator delete(v13);
  }

  v14 = *(this + 115);
  if (v14)
  {
    *(this + 116) = v14;
    operator delete(v14);
  }

  v15 = *(this + 112);
  if (v15)
  {
    *(this + 113) = v15;
    operator delete(v15);
  }

  v16 = *(this + 109);
  if (v16)
  {
    *(this + 110) = v16;
    operator delete(v16);
  }

  v17 = *(this + 106);
  if (v17)
  {
    *(this + 107) = v17;
    operator delete(v17);
  }

  v18 = *(this + 103);
  if (v18)
  {
    *(this + 104) = v18;
    operator delete(v18);
  }

  v19 = *(this + 100);
  if (v19)
  {
    *(this + 101) = v19;
    operator delete(v19);
  }

  v20 = *(this + 97);
  if (v20)
  {
    *(this + 98) = v20;
    operator delete(v20);
  }

  v21 = *(this + 94);
  if (v21)
  {
    *(this + 95) = v21;
    operator delete(v21);
  }

  v22 = *(this + 91);
  if (v22)
  {
    *(this + 92) = v22;
    operator delete(v22);
  }

  v23 = *(this + 84);
  if (v23)
  {
    *(this + 85) = v23;
    operator delete(v23);
  }

  v24 = *(this + 79);
  if (v24)
  {
    *(this + 80) = v24;
    operator delete(v24);
  }

  v25 = *(this + 76);
  if (v25)
  {
    *(this + 77) = v25;
    operator delete(v25);
  }

  v26 = *(this + 73);
  if (v26)
  {
    *(this + 74) = v26;
    operator delete(v26);
  }

  if (*(this + 71))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 71) = 0;
  }

  *(this + 72) = 0;
  *(this + 140) = 0;

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUBeamNFSelector::BlockSizeChangedCallback(AUBeamNFSelector *this, AudioUnit inUnit, OpaqueAudioComponentInstance *a3, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (a3 != 14)
  {
    __assert_rtn("BlockSizeChangedCallback", "AUBeamNFSelector.cpp", 311, "inID == kAudioUnitProperty_MaximumFramesPerSlice");
  }

  outData = 0;
  ioDataSize = 4;
  result = AudioUnitGetProperty(inUnit, 0xEu, inScope, inElement, &outData, &ioDataSize);
  if (ioDataSize >= 5)
  {
    __assert_rtn("BlockSizeChangedCallback", "AUBeamNFSelector.cpp", 324, "newBlockSizeSize <= sizeof(newBlockSize)");
  }

  if (!result)
  {
    v7 = outData;
    if (*(this + 137) != outData)
    {
      *(this + 137) = outData;
      SpectralProfile::GetProfile(&v25, *(this + 69), this + 632, v7, 0.0, 2 * v7);
      v8 = *(this + 73);
      if (v8)
      {
        *(this + 74) = v8;
        operator delete(v8);
      }

      *(this + 584) = v25;
      *(this + 75) = v26;
      SpectralProfile::GetProfile(&v25, *(this + 69), this + 672, *(this + 137), 1.0, 2 * *(this + 137));
      v9 = *(this + 76);
      if (v9)
      {
        *(this + 77) = v9;
        operator delete(v9);
      }

      *(this + 38) = v25;
      *(this + 78) = v26;
      AUBeamNFSelector::UpdateFrequencyBinIndices(this);
      AUBeamNFSelector::UpdateSmoothingCoefs(this);
      v10 = *(this + 137);
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 133, v10, &v25, v11);
      v12 = *(this + 137);
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 136, v12, &v25, v13);
      v14 = (2 * *(this + 137));
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 139, v14, &v25, v15);
      v16 = (2 * *(this + 137));
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 142, v16, &v25, v17);
      v18 = (2 * *(this + 137));
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 145, v18, &v25, v19);
      v20 = (2 * *(this + 137));
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 148, v20, &v25, v21);
      v22 = (2 * *(this + 137));
      LODWORD(v25) = 0;
      std::vector<float>::assign(this + 151, v22, &v25, v23);
      std::vector<unsigned int>::reserve((this + 728), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 776), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 752), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 800), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 824), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 848), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 872), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 896), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 920), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 944), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 968), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 992), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 1016), (2 * *(this + 137)));
      std::vector<unsigned int>::reserve((this + 1040), (2 * *(this + 137)));
      *(this + 716) = 0;
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      return ausdk::AUBufferList::Allocate((this + 560), Element + 2, *(this + 137));
    }
  }

  return result;
}

void AUBeamNFSelector::SampleRateChangedCallback(AUBeamNFSelector *this, AudioUnit inUnit, OpaqueAudioComponentInstance *a3, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (a3 != 2 && a3 != 8)
  {
    __assert_rtn("SampleRateChangedCallback", "AUBeamNFSelector.cpp", 209, "(inID == kAudioUnitProperty_SampleRate) || (inID == kAudioUnitProperty_StreamFormat)");
  }

  outData = 0.0;
  if (a3 == 8)
  {
    v12 = 40;
    Property = AudioUnitGetProperty(inUnit, 8u, inScope, inElement, ioDataSize, &v12);
    if (v12 >= 0x29)
    {
      __assert_rtn("SampleRateChangedCallback", "AUBeamNFSelector.cpp", 255, "tempASBDSize <= sizeof(tempASBD)");
    }

    v9 = (this + 552);
    if (!Property)
    {
      v9 = ioDataSize;
    }

    v7 = *v9;
    goto LABEL_11;
  }

  ioDataSize[0] = 8;
  v6 = AudioUnitGetProperty(inUnit, 2u, inScope, inElement, &outData, ioDataSize);
  if (ioDataSize[0] >= 9)
  {
    __assert_rtn("SampleRateChangedCallback", "AUBeamNFSelector.cpp", 229, "newSampleRateSize <= sizeof(newSampleRate)");
  }

  if (v6)
  {
    v7 = *(this + 69);
LABEL_11:
    outData = v7;
    goto LABEL_12;
  }

  v7 = outData;
LABEL_12:
  if (*(this + 69) != v7)
  {
    *(this + 69) = v7;
    SpectralProfile::GetProfile(ioDataSize, v7, this + 632, *(this + 137), 0.0, 2 * *(this + 137));
    v10 = *(this + 73);
    if (v10)
    {
      *(this + 74) = v10;
      operator delete(v10);
    }

    *(this + 584) = *ioDataSize;
    *(this + 75) = v14;
    SpectralProfile::GetProfile(ioDataSize, *(this + 69), this + 672, *(this + 137), 1.0, 2 * *(this + 137));
    v11 = *(this + 76);
    if (v11)
    {
      *(this + 77) = v11;
      operator delete(v11);
    }

    *(this + 38) = *ioDataSize;
    *(this + 78) = v14;
    AUBeamNFSelector::UpdateFrequencyBinIndices(this);
    AUBeamNFSelector::UpdateSmoothingCoefs(this);
    *(this + 716) = 0;
  }
}

float AUSM::DistanceGain::calculateDistanceGain(AUSM::DistanceGain *this, float a2)
{
  result = 1.0;
  if (*this == 1)
  {
    v4 = *(this + 3);
    v5 = *(this + 4);
    if (v5 < a2)
    {
      a2 = *(this + 4);
    }

    if (a2 >= v4)
    {
      v6 = a2;
    }

    else
    {
      v6 = *(this + 3);
    }

    v7 = *(this + 2);
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 == 1 && v4 > 0.001)
        {
          return powf(v6 / v4, *(this + 6));
        }
      }

      else
      {
        return powf(v6, -1.0 - *(this + 1));
      }
    }

    else if (v7 == 2)
    {
      if ((v5 - v4) > 0.001)
      {
        return *(this + 5) / (((v6 - v4) / (v5 - v4)) + ((1.0 - ((v6 - v4) / (v5 - v4))) * *(this + 5)));
      }
    }

    else if (v7 == 3)
    {
      if ((v5 - v4) > 0.001)
      {
        return ((-(v6 - v4) / (v5 - v4)) * (1.0 - *(this + 5))) + 1.0;
      }
    }

    else if (v7 == 4 && v4 > 0.001)
    {
      return v4 / v6;
    }
  }

  return result;
}

void AUVolumeKernel::Process(AUVolumeKernel *this, const float *a2, float *a3, unsigned int a4, BOOL *a5)
{
  v9 = *(this + 1);
  if (*(this + 25) != a4)
  {
    if ((a4 & 0x1F) != 0)
    {
      HIDWORD(v10) = -286331153 * a4;
      LODWORD(v10) = -286331153 * a4;
      if ((v10 >> 1) < 0x8888889)
      {
        v12 = 30;
      }

      else
      {
        HIDWORD(v11) = -1431655765 * a4;
        LODWORD(v11) = -1431655765 * a4;
        if ((v11 >> 3) > 0xAAAAAAA)
        {
          return;
        }

        v12 = 24;
      }
    }

    else
    {
      v12 = 32;
    }

    *(this + 24) = v12;
    *(this + 25) = a4;
  }

  if (*(v9 + 597) == 1 && *(this + 109) == 1)
  {
    *(this + 109) = 0;
    if (mach_absolute_time() * 0.0000000416666667 >= *(v9 + 600))
    {
      *(this + 20) = AUVolumeKernel::kDefaultVolumeAtUnityState;
      *(this + 52) = 0x100000000;
      *(this + 36) = unk_1DE1071F4;
      *(this + 7) = 0u;
      *(this + 8) = 0u;
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 11) = 0u;
      *(this + 12) = 0u;
      *(this + 13) = 0u;
      *(this + 14) = 0u;
      *(this + 15) = 0u;
      *(this + 16) = 0u;
      *(this + 17) = 0u;
      *(this + 18) = 0u;
      *(this + 19) = 0u;
      *(this + 20) = 0u;
      *(this + 21) = 0u;
      *(this + 22) = 0u;
    }
  }

  v13 = *(v9 + 592);
  if (v13 != *(this + 26))
  {
    v14 = *(this + 1);
    Parameter = ausdk::AUEffectBase::GetParameter(v14, 0x7063676Eu);
    v16 = ausdk::AUEffectBase::GetParameter(v14, 0x5F737776u);
    v17 = ausdk::AUEffectBase::GetParameter(v14, 0x6365696Cu);
    v18 = ausdk::AUEffectBase::GetParameter(v14, 0x766F6C74u);
    v19 = ausdk::AUEffectBase::GetParameter(v14, 0x636C6970u);
    v20 = ausdk::AUEffectBase::GetParameter(v14, 0x766F6C76u);
    *(this + 108) = ausdk::AUEffectBase::GetParameter(v14, 0x6D6F6465u) != 0.0;
    *(this + 15) = fminf(__exp10f(Parameter * 0.05), 100.0);
    *(this + 16) = fminf(__exp10f(v16 * 0.05), 100.0);
    *(this + 17) = fmaxf(v18, 0.0001);
    *(this + 18) = fmaxf(v20, 0.0001);
    *(this + 19) = fmaxf(__exp10f(v17 * 0.05), 0.001);
    v21 = __exp10f(v19 * 0.05);
    if (v21 < 0.25)
    {
      v21 = 0.25;
    }

    if (v21 >= 0.98)
    {
      v21 = 1.0;
    }

    *(this + 20) = v21;
    v22.f64[0] = v21;
    *(this + 23) = vcvtd_n_s64_f64(1.0 / ((v22.f64[0] + -1.0) * 4.0), 0x18uLL);
    v22.f64[1] = 2.0 - v22.f64[0];
    *(this + 84) = vmovn_s64(vcvtq_n_s64_f64(v22, 0x18uLL));
    *(this + 26) = v13;
  }

  if (((*(*v9 + 592))(v9) & 1) == 0)
  {
    if (*(this + 17) != *(this + 10))
    {
      Element = ausdk::AUScope::GetElement((*(this + 1) + 128), 0);
      if (!Element)
      {
        goto LABEL_88;
      }

      LODWORD(v24) = *(this + 24);
      v25 = *(this + 17);
      v26 = *(Element + 80) / v24 * v25;
      if (v26 < 2.22507386e-308)
      {
        v26 = 2.22507386e-308;
      }

      v27 = -6.90775528 / v26;
      v28 = exp(-6.90775528 / v26);
      if (v27 < -708.4)
      {
        v28 = 0.0;
      }

      v29 = v28;
      *(this + 10) = v25;
      *(this + 11) = 1.0 - v29;
    }

    if (*(this + 18) == *(this + 12))
    {
      v31 = *(this + 24);
      if (!a4)
      {
        return;
      }

      goto LABEL_36;
    }

    v30 = ausdk::AUScope::GetElement((*(this + 1) + 128), 0);
    if (v30)
    {
      v31 = *(this + 24);
      v32 = *(this + 18);
      v33 = *(v30 + 80) / v31 * v32;
      if (v33 < 2.22507386e-308)
      {
        v33 = 2.22507386e-308;
      }

      v34 = -6.90775528 / v33;
      v35 = exp(-6.90775528 / v33);
      if (v34 < -708.4)
      {
        v35 = 0.0;
      }

      v36 = v35;
      *(this + 12) = v32;
      *(this + 13) = 1.0 - v36;
      if (!a4)
      {
        return;
      }

LABEL_36:
      v37 = 0;
      while (1)
      {
        v38 = &a3[v37];
        __C = 0.0;
        v39 = &a2[v37];
        vDSP_maxmgv(v39->f32, 1, &__C, v31);
        v41 = __C;
        v42 = __C;
        v43.n128_f32[0] = __C;
        if (*(this + 108) == 1)
        {
          v42 = *(this + 6);
          if (__C >= v42)
          {
            v43.n128_f32[0] = __C;
          }

          else
          {
            v43.n128_u32[0] = *(this + 6);
          }

          if (v31)
          {
            v44 = (this + 112);
            v45 = &a3[v37];
            v46 = v31;
            do
            {
              v47 = v39->f32[0];
              v39 = (v39 + 4);
              *v45++ = *v44;
              *v44++ = v47;
              --v46;
            }

            while (v46);
          }

          v39 = &a3[v37];
        }

        if (v43.n128_f32[0] < 0.00000001)
        {
          v43.n128_f32[0] = 0.00000001;
        }

        v48 = *(this + 16) * *(this + 15);
        v49 = *(this + 9);
        if (v48 < v49 && ((v50 = *(this + 1), (*(v50 + 596) & 1) != 0) || (*(v50 + 597) & 1) != 0))
        {
          v51 = 52;
        }

        else
        {
          v51 = 44;
        }

        v52 = v49 + (*(this + v51) * (v48 - v49));
        *(this + 9) = v52;
        v53 = *(this + 19);
        if ((v43.n128_f32[0] * v52) > v53)
        {
          v52 = v53 / v43.n128_f32[0];
          *(this + 9) = v53 / v43.n128_f32[0];
        }

        *(this + 5) = v52;
        if (*(this + 56))
        {
          *(this + 8) = v52;
          *(this + 7) = vcvts_n_s32_f32(v52, 0x18uLL);
          *(this + 56) = 0;
          v40.f32[0] = v52;
        }

        else
        {
          v40.i32[0] = *(this + 8);
        }

        v54 = *(this + 24);
        v68 = v40.f32[0];
        v43.n128_f32[0] = (v52 - v40.f32[0]) / v54;
        if (v52 >= v40.f32[0])
        {
          v55 = v52;
        }

        else
        {
          v55 = v40.f32[0];
        }

        v56 = v55 * v42;
        v57 = *(this + 20);
        if (v56 < v57)
        {
          if (v52 == v40.f32[0])
          {
            MEMORY[0x1E12BE940](v39, 1, &v68, &a3[v37], 1, v43);
          }

          else
          {
            RampGainMono(v39, &a3[v37], v54, &v68, v43.n128_f32[0], v40);
          }

          goto LABEL_86;
        }

        if (v57 >= 1.0)
        {
          for (; v54; --v54)
          {
            v63 = v39->f32[0];
            v39 = (v39 + 4);
            v64 = v63 * v40.f32[0];
            if ((v63 * v40.f32[0]) >= -1.0)
            {
              v65 = v64;
            }

            else
            {
              v65 = -1.0;
            }

            if (v64 <= 1.0)
            {
              v66 = v65;
            }

            else
            {
              v66 = 1.0;
            }

            *v38++ = v66;
            v40.f32[0] = v43.n128_f32[0] + v40.f32[0];
          }

          goto LABEL_86;
        }

        if (v54)
        {
          break;
        }

LABEL_86:
        *(this + 8) = v52;
        *(this + 6) = v41;
        v37 += v31;
        if (v37 >= a4)
        {
          return;
        }
      }

      v58 = *(this + 23) * 0.000000059605;
      v59 = *(this + 22) * 0.000000059605;
      v60 = *(this + 21) * 0.000000059605;
      while (1)
      {
        v61 = v39->f32[0] * v40.f32[0];
        if (v61 >= 0.0)
        {
          if (v61 > v60)
          {
            v62 = 1.0;
            if (v61 < v59)
            {
              v62 = (((v61 - v59) * (v61 - v59)) * v58) + 1.0;
            }

            goto LABEL_74;
          }
        }

        else if (v61 < -v60)
        {
          v62 = -1.0;
          if (v61 >= -v59)
          {
            v62 = (-((-v61 - v59) * (-v61 - v59)) * v58) + -1.0;
          }

          goto LABEL_74;
        }

        v62 = v39->f32[0] * v40.f32[0];
LABEL_74:
        *v38++ = v62;
        v39 = (v39 + 4);
        v40.f32[0] = v43.n128_f32[0] + v40.f32[0];
        if (!--v54)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_88:
    ausdk::Throw(0xFFFFD583);
  }
}

double AUVolumeKernel::Reset(AUVolumeKernel *this)
{
  v1 = *(this + 1);
  if ((v1[596] & 1) == 0 && (v1[597] & 1) == 0)
  {
    *(this + 52) = 0x100000000;
    *(this + 20) = AUVolumeKernel::kDefaultVolumeState;
    *(this + 36) = *algn_1DE1071CC;
  }

  if (v1[597] == 1 && (v1[598] & 1) == 0)
  {
    *(this + 52) = 0x100000000;
    *(this + 20) = AUVolumeKernel::kDefaultVolumeAtUnityState;
    *(this + 36) = unk_1DE1071F4;
  }

  result = 0.0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return result;
}

uint64_t AUVolume::ValidFormat(AUVolume *this, const AudioStreamBasicDescription *a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v4 = *&a4->mBytesPerPacket;
  v8 = *&a4->mSampleRate;
  v9 = v4;
  v10 = *&a4->mBitsPerChannel;
  v5 = HIDWORD(v8);
  result = ausdk::ASBD::IsCommonFloat32(&v8, a2);
  if (result)
  {
    v7 = (v5 >> 5) & 1;
    if (HIDWORD(v9) < 3)
    {
      v7 = 1;
    }

    if (HIDWORD(v9))
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUVolume::SupportedNumChannels(AUVolume *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUVolume::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUVolume::GetLatency(uint64_t **this)
{
  Parameter = ausdk::AUEffectBase::GetParameter(this, 0x6D6F6465u);
  result = 0.0;
  if (Parameter != 0.0 && *(this + 17) == 1)
  {
    v4 = this[66];
    if (this[67] != v4)
    {
      v5 = *v4;
      Element = ausdk::AUScope::GetElement((this + 16), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      LODWORD(v7) = *(v5 + 96);
      return v7 / *(Element + 80);
    }
  }

  return result;
}

uint64_t AUVolume::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  ++*(this + 148);
  return result;
}

uint64_t AUVolume::GetParameterInfo(AUVolume *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  v6 = 0.0;
  result = 4294956418;
  if (a3 <= 1836016740)
  {
    switch(a3)
    {
      case 1601402742:
        v7 = 2097153.52;
        v8 = -1073741824;
        v9 = kAudioUnitParameterUnit_Decibels;
        v10 = @"user gain dB";
        break;
      case 1667590508:
        __asm { FMOV            V0.2S, #-12.0 }

        v7 = -_D0;
        v8 = -1073741824;
        v9 = kAudioUnitParameterUnit_Decibels;
        v10 = @"ceiling dB";
        break;
      case 1668049264:
        *&v7 = 3233808384;
        v8 = -1073741824;
        v9 = kAudioUnitParameterUnit_Decibels;
        v10 = @"softclip level dB";
        break;
      default:
        return result;
    }
  }

  else if (a3 > 1987013747)
  {
    if (a3 == 1987013748)
    {
      v7 = 1.09951186e12;
      v9 = kAudioUnitParameterUnit_Seconds;
      v10 = @"volume smooth time";
    }

    else
    {
      if (a3 != 1987013750)
      {
        return result;
      }

      v7 = 1.09951186e12;
      v9 = kAudioUnitParameterUnit_Seconds;
      v10 = @"volume decay smooth time";
    }

    v8 = -1069547520;
    v6 = 0.05;
  }

  else if (a3 == 1836016741)
  {
    v7 = 0.0078125;
    v8 = -1073741824;
    v6 = 1.0;
    v9 = kAudioUnitParameterUnit_Boolean;
    v10 = @"look ahead";
  }

  else
  {
    if (a3 != 1885562734)
    {
      return result;
    }

    v7 = 1.71798816e10;
    v8 = -1073741824;
    v9 = kAudioUnitParameterUnit_Decibels;
    v10 = @"preclip gain dB";
  }

  buffer->cfNameString = v10;
  buffer->flags = 0x8000000;
  CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v9;
  *&buffer->minValue = v7;
  buffer->defaultValue = v6;
  buffer->flags += v8;
  return result;
}

uint64_t AUVolume::SetParameter(AUVolume *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  ++*(this + 148);
  return result;
}

uint64_t AUVolume::SetProperty(AUVolume *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  if (a2 == 64001 && a3 == 0)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 596) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 64002 && !a3)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 597) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 64003 && !a3)
  {
    if (a6 >= 4)
    {
      result = 0;
      v9 = *(this + 598);
      v10 = *a5;
      *(this + 598) = *a5 != 0;
      if (v9 == 1 && !v10)
      {
        if (*(this + 597) != 1)
        {
          return 0;
        }

        *(this + 75) = mach_absolute_time() * 0.0000000416666667 + 0.25;
        v11 = *(this + 66);
        v12 = *(this + 67);
        if (v11 == v12)
        {
          return 0;
        }

        else
        {
          do
          {
            result = 0;
            v13 = *v11++;
            *(v13 + 109) = 1;
          }

          while (v11 != v12);
        }
      }

      return result;
    }

    return 4294956445;
  }

  return ausdk::AUEffectBase::SetProperty(this, a2, a3, a4, a5, a6);
}

uint64_t AUVolume::GetProperty(AUVolume *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 64001 && a3 == 0)
  {
    result = 0;
    v8 = *(this + 596);
    goto LABEL_9;
  }

  if (a2 == 64002 && !a3)
  {
    result = 0;
    v8 = *(this + 597);
LABEL_9:
    *a5 = v8;
    return result;
  }

  if (a2 == 64003 && !a3)
  {
    result = 0;
    v8 = *(this + 598);
    goto LABEL_9;
  }

  if (!a3)
  {
    if (a2 == 29)
    {
      result = 0;
      v8 = *(this + 554);
      goto LABEL_9;
    }

    if (a2 == 21)
    {
      result = 0;
      v8 = *(this + 552);
      goto LABEL_9;
    }
  }

  return 4294956417;
}

uint64_t AUVolume::GetPropertyInfo(AUVolume *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  v6 = (a2 - 64001) <= 2 && a3 == 0;
  if (!v6 && (a3 || (a2 | 8) != 0x1D))
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUVolume::Reset(AUVolume *this, int a2)
{
  v4 = *(this + 66);
  v5 = *(this + 67);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 16))(*v4);
    }

    ++v4;
  }

  if (!a2)
  {
    v7 = *(this + 66);
    if (*(this + 67) != v7)
    {
      if (*v7)
      {
        (*(**v7 + 16))(*v7);
      }
    }
  }

  return 0;
}

double AUVolume::Cleanup(AUVolume *this)
{
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

uint64_t AUVolume::Initialize(AUVolume *this)
{
  (*(*this + 392))(&v6);
  v3 = (v7 & 0x20) == 0 && v8 == 2;
  *(this + 584) = v3;
  v4 = ausdk::AUEffectBase::Initialize(this);
  if (!v4)
  {
    (*(*this + 72))(this, 0, 0);
  }

  return v4;
}

void AUVolume::~AUVolume(AUVolume *this)
{
  AUVolume::~AUVolume(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59303C8;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  *(this + 568) = 0u;
  *this = &unk_1F593A7A8;
  v3 = v2;
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUMNBandEQ::GetScopeExtended(AUMNBandEQ *this, int a2)
{
  if (a2 == 4)
  {
    return this + 584;
  }

  else
  {
    return 0;
  }
}

uint64_t AUMNBandEQ::ChangeStreamFormat(AUMNBandEQ *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  mSampleRate = a4->mSampleRate;
  if (a4->mSampleRate != a5->mSampleRate)
  {
    ++*(this + 132);
    (*(*this + 432))(this, 3, 0, 0, mSampleRate);
  }

  return 0;
}

unint64_t AUMNBandEQ::SupportedNumChannels(AUMNBandEQ *this, const AUChannelInfo **a2)
{
  {
    std::vector<AUChannelInfo>::vector[abi:ne200100]();
  }

  if (atomic_load_explicit(&AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sOnceFlag, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(&AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sOnceFlag, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::$_0 &&>>);
  }

  v3 = AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  if (a2)
  {
    *a2 = AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return (qword_1ECDA9E08 - v3) >> 2;
}

void std::vector<AUChannelInfo>::vector[abi:ne200100]()
{
  AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs = 0;
  qword_1ECDA9E08 = 0;
  qword_1ECDA9E10 = 0;
  operator new();
}

void sub_1DDF7A314(_Unwind_Exception *exception_object)
{
  if (AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs)
  {
    qword_1ECDA9E08 = AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
    operator delete(AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs);
  }

  _Unwind_Resume(exception_object);
}

double std::__call_once_proxy[abi:ne200100]<std::tuple<AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::$_0 &&>>()
{
  v0 = AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  *&result = 0x6000600050005;
  *AUMNBandEQ::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs = xmmword_1DE09E220;
  *(v0 + 16) = xmmword_1DE09E210;
  return result;
}

uint64_t std::vector<AUChannelInfo>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t AUMNBandEQ::GetParameterValueStrings(AUMNBandEQ *this, int a2, unsigned int a3, const __CFArray **a4)
{
  values[12] = *MEMORY[0x1E69E9840];
  result = 4294956418;
  if (a2 == 4 && a3 >= 0x3E8 && a3 % 0x3E8 <= 0xF && 1000 * (a3 / 0x3E8) == 2000)
  {
    if (a4)
    {
      values[0] = @"Parametric";
      values[1] = @"Butterworth Low Pass";
      values[2] = @"Butterworth High Pass";
      values[3] = @"Resonant Low Pass";
      values[4] = @"Resonant High Pass";
      values[5] = @"Band Pass";
      values[6] = @"Band Stop";
      values[7] = @"Low Shelf";
      values[8] = @"High Shelf";
      values[9] = @"Resonant Low Shelf";
      values[10] = @"Resonant High Shelf";
      values[11] = @"All Pass";
      v6 = CFArrayCreate(0, values, 12, 0);
      result = 0;
      *a4 = v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUMNBandEQ::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUMNBandEQ::SaveExtendedScopes(AUMNBandEQ *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUMNBandEQ::GetParameterInfo(AUMNBandEQ *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2 != 4)
  {
    return 4294956418;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (a3)
  {
    if (a3 >= 0x3E8)
    {
      v6 = a3 % 0x3E8;
      if (a3 % 0x3E8 > 0xF)
      {
        return 4294956418;
      }

      a3 = 1000 * (a3 / 0x3E8);
    }

    else
    {
      v6 = 0;
    }

    v9 = v6 + 1;
    result = 4294956418;
    if (a3 <= 2999)
    {
      if (a3 == 1000)
      {
        buffer->cfNameString = @"bypass";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"bypass", buffer->name, 52, 0x8000100u);
        buffer->clumpID = v9;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        v11 = 1.0;
LABEL_23:
        buffer->defaultValue = v11;
        goto LABEL_24;
      }

      if (a3 != 2000)
      {
        return result;
      }

      buffer->cfNameString = @"type";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"type", buffer->name, 52, 0x8000100u);
      buffer->clumpID = v9;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v12 = 0x4130000000000000;
LABEL_21:
      *&buffer->minValue = v12;
      buffer->defaultValue = 0.0;
LABEL_24:
      v8 = flags | 0xC0100000;
      goto LABEL_25;
    }

    if (a3 != 3000)
    {
      if (a3 != 4000)
      {
        if (a3 != 5000)
        {
          return result;
        }

        buffer->cfNameString = @"bandwidth";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"bandwidth", buffer->name, 52, 0x8000100u);
        buffer->clumpID = v9;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Octaves;
        *&buffer->minValue = 0x40A000003D4CCCCDLL;
        v11 = 0.5;
        goto LABEL_23;
      }

      buffer->cfNameString = @"gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = v9;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v12 = 0x41C00000C2C00000;
      goto LABEL_21;
    }

    buffer->cfNameString = @"frequency";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"frequency", buffer->name, 52, 0x8000100u);
    buffer->clumpID = v9;
    buffer->flags |= 0x100000u;
    *&buffer->unit = 0x4120000000000008;
    v13 = AUDspLib::GetSampleRate(this) * 0.49000001;
    buffer->maxValue = v13;
    buffer->defaultValue = 1000.0;
  }

  else
  {
    buffer->cfNameString = @"global gain";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"global gain", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    *&buffer->minValue = 0x41C00000C2C00000;
    buffer->defaultValue = 0.0;
  }

  v8 = buffer->flags | 0xC0000000;
LABEL_25:
  result = 0;
  buffer->flags = v8;
  return result;
}

uint64_t AUMNBandEQ::GetParameterList(AUMNBandEQ *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if (!a2)
  {
    result = 4294956418;
LABEL_11:
    *a4 = a2;
    return result;
  }

  if (a2 == 4)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v4 = 0;
    v5 = a3 + 5;
    do
    {
      if (a3)
      {
        *(v5 - 1) = vaddq_s32(vdupq_n_s32(v4), xmmword_1DE09E1C0);
        *v5 = v4 + 5000;
      }

      ++v4;
      v5 += 5;
    }

    while (v4 != 16);
    result = 0;
    a2 = 81;
    goto LABEL_11;
  }

  return 4294956430;
}

ausdk::AUInputElement *AUMNBandEQ::Render(AUMNBandEQ *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

void AUMNBandEQ::ProcessBufferLists(AUMNBandEQ *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, int a5)
{
  v9 = *(this + 132);
  if (*(this + 133) != v9)
  {
    AUMNBandEQ::UpdateFilterCoefficients(this);
    *(this + 133) = v9;
  }

  if (!SimpleMeters::ProcessInputBufferList((this + 640), a5, a3))
  {
    mNumberBuffers = a3->mNumberBuffers;
    if (mNumberBuffers > (*(this + 71) - *(this + 70)) >> 3)
    {
      v20 = CAVerboseAbort();
      AUMNBandEQ::UpdateFilterCoefficients(v20);
    }

    else
    {
      v21 = a5;
      if (mNumberBuffers)
      {
        v11 = 0;
        do
        {
          v22[0] = 1;
          v24[0] = 1;
          v12 = &a3->mBuffers[v11];
          mDataByteSize = v12->mDataByteSize;
          v22[2] = 1;
          v22[3] = mDataByteSize;
          v24[2] = 1;
          v24[3] = mDataByteSize;
          mData = v12->mData;
          v23 = a4->mBuffers[v11].mData;
          if (*(this + 158) || (v19 = *(*(this + 70) + 8 * v11), !v19[4]))
          {
            v14 = 0;
            p_mData = &mData;
            v16 = &v23;
            v17 = 1;
            do
            {
              v18 = *(p_mData - 1);
              if (v18 == *(v16 - 1) && *p_mData != *v16)
              {
                memcpy(*v16, *p_mData, v18);
                v17 = v24[0];
              }

              ++v14;
              v16 += 2;
              p_mData += 2;
            }

            while (v14 < v17);
          }

          else
          {
            (*(*v19 + 32))(v19, v21, v24, v22);
          }

          ++v11;
        }

        while (v11 < a3->mNumberBuffers);
      }

      SimpleMeters::ProcessOutputBufferList((this + 640), v21, a4);
    }
  }
}

void AUMNBandEQ::UpdateFilterCoefficients(AUMNBandEQ *this)
{
  AUMNBandEQ::SetCoefficients(this, this + 67);
  v2 = *(this + 70);
  if (*(this + 71) != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      (*(**(v2 + 8 * v4) + 16))(*(v2 + 8 * v4), 16, *(this + 67) + 40 * v3);
      v4 = v5;
      v2 = *(this + 70);
      ++v5;
      v3 += 16;
    }

    while (v4 < (*(this + 71) - v2) >> 3);
  }
}

void AUMNBandEQ::SetCoefficients(void *a1, uint64_t *a2)
{
  if (a1[71] == a1[70])
  {
    return;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    v48 = v4;
    v6 = 40 * v4;
    Element = ausdk::AUScope::GetElement((a1 + 73), v5);
    Parameter = ausdk::AUElement::GetParameter(Element, 0);
    SampleRate = AUDspLib::GetSampleRate(a1);
    v49 = __exp10(Parameter * 0.05);
    v10 = 0;
    v11 = 0;
    v12 = 3000;
    do
    {
      v13 = ausdk::AUScope::GetElement((a1 + 73), v5);
      v14 = ausdk::AUElement::GetParameter(v13, (v12 - 3000) | 0x7D0);
      v15 = ausdk::AUScope::GetElement((a1 + 73), v5);
      v16 = ausdk::AUElement::GetParameter(v15, v12);
      v17 = ausdk::AUScope::GetElement((a1 + 73), v5);
      v18 = ausdk::AUElement::GetParameter(v17, (v12 - 3000) | 0xFA0);
      v19 = ausdk::AUScope::GetElement((a1 + 73), v5);
      v20 = ausdk::AUElement::GetParameter(v19, v12 + 2000);
      v21 = ausdk::AUScope::GetElement((a1 + 73), v5);
      if (ausdk::AUElement::GetParameter(v21, v12 - 2000) != 0.0 || SampleRate * 0.49 < v16)
      {
        v22 = (*a2 + v6 + v10);
        *v22 = 0;
        v22[1] = 0;
        v22[3] = 0;
        v22[4] = 0;
        v22[2] = 0x3FF0000000000000;
        goto LABEL_7;
      }

      v23 = v14;
      v24 = v16 * 6.28318531 / SampleRate;
      v25 = *a2;
      v26 = *a2 + v6 + v10;
      if (v14 <= 5)
      {
        if (v23 <= 2)
        {
          if (v23)
          {
            if (v23 == 1)
            {
              if (v24 <= 0.0)
              {
                goto LABEL_40;
              }

              v42 = __sincos_stret(fmin(v24, 3.11017673));
              v43 = 0.5 - v42.__cosval * 0.5;
              v44 = 1.0 / (v42.__sinval * 0.707106781 + 1.0);
              *v26 = v42.__cosval * -2.0 * v44;
              v30 = (v25 + v6 + v10);
              v31 = v43 * v44;
              v30[1] = v44 - v42.__sinval * 0.707106781 * v44;
              v30[2] = v43 * v44;
              v32 = v43 * (v44 + v44);
            }

            else
            {
              if (v23 != 2 || v24 <= 0.0)
              {
                goto LABEL_40;
              }

              v27 = __sincos_stret(fmin(v24, 3.11017673));
              v28 = v27.__cosval * 0.5 + 0.5;
              v29 = 1.0 / (v27.__sinval * 0.707106781 + 1.0);
              *v26 = v27.__cosval * -2.0 * v29;
              v30 = (v25 + v6 + v10);
              v31 = v28 * v29;
              v30[1] = v29 - v27.__sinval * 0.707106781 * v29;
              v30[2] = v28 * v29;
              v32 = v28 * -2.0 * v29;
            }

            v30[3] = v32;
            v30[4] = v31;
            goto LABEL_44;
          }

          v37 = v24;
          v38 = v20;
          v39 = v18;
          v40 = (*a2 + v6 + v10);
          v41 = 11;
LABEL_43:
          BiquadCoefficients::SetBW(v40, v41, v37, v38, v39);
          goto LABEL_44;
        }

        switch(v23)
        {
          case 3:
            v37 = v24;
            v38 = v20;
            v39 = 0.0;
            v40 = (*a2 + v6 + v10);
            v41 = 1;
            goto LABEL_43;
          case 4:
            v37 = v24;
            v38 = v20;
            v39 = 0.0;
            v40 = (*a2 + v6 + v10);
            v41 = 2;
            goto LABEL_43;
          case 5:
            v37 = v24;
            v38 = v20;
            v39 = 0.0;
            v40 = (*a2 + v6 + v10);
            v41 = 3;
            goto LABEL_43;
        }

LABEL_40:
        v45 = (v25 + v6 + v10);
        *v26 = 0;
        *(v26 + 8) = 0;
        v45[3] = 0;
        v45[4] = 0;
        v45[2] = 0x3FF0000000000000;
        goto LABEL_44;
      }

      if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            v37 = v24;
            v38 = v20;
            v39 = v18;
            v40 = (*a2 + v6 + v10);
            v41 = 7;
            goto LABEL_43;
          case 10:
            v37 = v24;
            v38 = v20;
            v39 = v18;
            v40 = (*a2 + v6 + v10);
            v41 = 8;
            goto LABEL_43;
          case 11:
            v37 = v24;
            v38 = v20;
            v39 = 0.0;
            v40 = (*a2 + v6 + v10);
            v41 = 5;
            goto LABEL_43;
        }

        goto LABEL_40;
      }

      if (v23 == 6)
      {
        v37 = v24;
        v38 = v20;
        v39 = 0.0;
        v40 = (*a2 + v6 + v10);
        v41 = 4;
        goto LABEL_43;
      }

      if (v23 == 7)
      {
        if (v24 <= 0.0)
        {
          goto LABEL_40;
        }

        v33 = v18;
        v34 = fmin(v24, 3.11017673);
        v35 = (*a2 + v6 + v10);
        v36 = 7;
      }

      else
      {
        if (v23 != 8 || v24 <= 0.0)
        {
          goto LABEL_40;
        }

        v33 = v18;
        v34 = fmin(v24, 3.11017673);
        v35 = (*a2 + v6 + v10);
        v36 = 8;
      }

      BiquadCoefficients::SetPriv(v35, v36, v34, 0.707106781, v33);
LABEL_44:
      if ((v11 & 1) == 0)
      {
        v46 = (*a2 + v6 + v10);
        v46[1] = vmulq_n_f64(v46[1], v49);
        v46[2].f64[0] = v46[2].f64[0] * v49;
      }

      v11 = 1;
LABEL_7:
      v10 += 40;
      ++v12;
    }

    while (v10 != 640);
    if ((v11 & 1) == 0)
    {
      v47 = (*a2 + 40 * (16 * v5));
      v47[1] = vmulq_n_f64(v47[1], v49);
      v47[2].f64[0] = v47[2].f64[0] * v49;
    }

    v5 = (v5 + 1);
    v4 = v48 + 16;
  }

  while (v5 < (a1[71] - a1[70]) >> 3);
}

uint64_t AUMNBandEQ::SetParameter(AUMNBandEQ *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 != 4)
  {
    return 4294956418;
  }

  if (a2 >= 0x3E8 && a2 % 0x3E8 > 0xF)
  {
    return 4294956418;
  }

  Element = ausdk::AUScope::GetElement((this + 584), a4);
  ausdk::AUElement::SetParameter(Element, a2, a5);
  result = 0;
  ++*(this + 132);
  return result;
}

uint64_t AUMNBandEQ::GetParameter(AUMNBandEQ *this, unsigned int a2, int a3, unsigned int a4, float *a5)
{
  if (a3 != 4)
  {
    return 4294956418;
  }

  if (a2 >= 0x3E8 && a2 % 0x3E8 > 0xF)
  {
    return 4294956418;
  }

  Element = ausdk::AUScope::GetElement((this + 584), a4);
  Parameter = ausdk::AUElement::GetParameter(Element, a2);
  result = 0;
  *a5 = Parameter;
  return result;
}

uint64_t AUMNBandEQ::SetProperty(AUMNBandEQ *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v7 = a6;
  v13 = 0;
  if (SimpleMeters::HandleSetProperty((this + 640), a2, a3, a5, a6, &v13, a7))
  {
    return v13;
  }

  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (v7 == 4)
    {
      result = 0;
      *(this + 158) = *a5;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUMNBandEQ::GetProperty(AUMNBandEQ *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v21 = 0;
  if (SimpleMeters::HandleGetProperty((this + 640), a2, a3, a5, &v21, a6))
  {
    return v21;
  }

  if (a2 == 21 && !a3)
  {
    result = 0;
    v12 = *(this + 158);
LABEL_6:
    *a5 = v12;
    return result;
  }

  if (a3 != 4)
  {
    return 4294956417;
  }

  if (a2 != 2205)
  {
    if (a2 == 2201 || a2 == 2200)
    {
      result = 0;
      v12 = 16;
      goto LABEL_6;
    }

    return 4294956417;
  }

  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  v13 = *(this + 71) - *(this + 70);
  if (a4 >= (v13 >> 3))
  {
    return 4294956419;
  }

  std::vector<BiquadCoefficients>::vector[abi:ne200100](__p, 2 * v13);
  AUMNBandEQ::SetCoefficients(this, __p);
  std::vector<double>::vector[abi:ne200100](&bytes, 0x50uLL);
  v14 = bytes;
  v15 = __p[0] + 640 * a4 + 16;
  for (i = 32; i != 672; i += 40)
  {
    v17 = &v14[i];
    *(v17 - 4) = *(v15 - 2);
    *(v17 - 3) = *(v15 - 1);
    *(v17 - 2) = *v15;
    *(v17 - 1) = v15[1];
    *v17 = v15[2];
    v15 += 5;
  }

  *a5 = CFDataCreate(0, v14, v19 - v14);
  if (bytes)
  {
    v19 = bytes;
    operator delete(bytes);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1DDF7B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BiquadCoefficients>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::allocator<BiquadCoefficients>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DDF7B530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUMNBandEQ::GetPropertyInfo(AUMNBandEQ *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3007)
  {
    v8 = 1;
    v9 = 4;
LABEL_13:
    result = 0;
    *a5 = v9;
LABEL_14:
    *a6 = v8;
    return result;
  }

  if (a2 == 3099)
  {
    if (a3 > 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(this + 81) - *(this + 80)) >> 7;
    }

    if ((a3 & 0xFFFFFFFD) == 0)
    {
      v7 += (*(this + 84) - *(this + 83)) >> 7;
    }

    v8 = 0;
    v9 = 16 * v7;
    goto LABEL_13;
  }

  if (a2 == 21 && !a3)
  {
    result = 0;
    *a6 = 1;
    *a5 = 4;
    return result;
  }

  if (a3 != 4)
  {
    return 4294956417;
  }

  if (a2 != 2205)
  {
    if (a2 == 2201)
    {
      result = 0;
      *a5 = 4;
      v8 = *(this + 17) ^ 1;
      goto LABEL_14;
    }

    if (a2 == 2200)
    {
      result = 0;
      *a5 = 4;
      v8 = 1;
      goto LABEL_14;
    }

    return 4294956417;
  }

  result = 0;
  *a5 = 8;
  *a6 = 0;
  return result;
}

uint64_t AUMNBandEQ::Reset(AUMNBandEQ *this)
{
  v2 = *(this + 70);
  v3 = *(this + 71);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 24))(v4);
  }

  AUMNBandEQ::UpdateFilterCoefficients(this);
  *(this + 133) = *(this + 132);
  SimpleMeters::Reset(this + 640);
  return 0;
}

void *AUMNBandEQ::Cleanup(void *this)
{
  v1 = this;
  v2 = this[71];
  for (i = this[70]; v2 != i; i = v1[70])
  {
    v4 = *i;
    v5 = v2 - (i + 8);
    if (v2 != i + 8)
    {
      this = memmove(i, i + 8, v2 - (i + 8));
    }

    v2 = &i[v5];
    v1[71] = &i[v5];
    if (v4)
    {
      this = (*(*v4 + 8))(v4);
      v2 = v1[71];
    }
  }

  v1[81] = v1[80];
  v1[84] = v1[83];
  return this;
}

uint64_t AUMNBandEQ::Initialize(AUMNBandEQ *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = *(Element + 96), v29 = *(Element + 80), *v30 = v3, *&v30[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v28.mSampleRate = *(v4 + 80);
  *&v28.mBytesPerPacket = v6;
  *&v28.mBitsPerChannel = *(v4 + 112);
  v7 = *&v29;
  if (*&v29 != v28.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v29) != v28.mFormatID)
  {
    return 4294956428;
  }

  if (*v30 != *&v28.mBytesPerPacket)
  {
    return 4294956428;
  }

  v8 = *&v30[12];
  if (*&v30[12] != *&v28.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v9 = CA::Implementation::EquivalentFormatFlags(&v29, &v28, v5);
  result = 4294956428;
  if (v9 && v8 <= 8)
  {
    v11 = 8;
    while (1)
    {
      v27.mSampleRate = v7;
      *&v27.mFormatID = xmmword_1DE09BD50;
      *&v27.mBytesPerFrame = xmmword_1DE09BD60;
      v12 = NewIIRFilter(&v27, &v27);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = *(this + 71);
      v15 = *(this + 72);
      if (v14 >= v15)
      {
        v17 = *(this + 70);
        v18 = (v14 - v17) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v19 = v15 - v17;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v18);
        *v22 = v13;
        v16 = 8 * v18 + 8;
        v23 = *(this + 70);
        v24 = *(this + 71) - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = *(this + 70);
        *(this + 70) = v25;
        *(this + 71) = v16;
        *(this + 72) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v14 = v12;
        v16 = (v14 + 1);
      }

      *(this + 71) = v16;
      if (!--v11)
      {
        (*(*this + 72))(this, 0, 0);
        SimpleMeters::Initialize(this + 640, &v29, &v28);
        return 0;
      }
    }

    return 4294956428;
  }

  return result;
}

void AUMNBandEQ::CreateExtendedElements(AUMNBandEQ *this)
{
  ausdk::AUScope::Initialize((this + 584), this, 4, 8);
  v2 = 0;
  do
  {
    Element = ausdk::AUScope::GetElement((this + 584), v2++);
    std::to_string(&v9, v2);
    v4 = std::string::insert(&v9, 0, "EQ", 2uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v11 = v4->__r_.__value_.__r.__words[2];
    *__p = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (v6)
    {
      v7 = v11 >= 0 ? HIBYTE(v11) : __p[1];
      v6 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
      v12 = v6;
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  while (v2 != 8);
}

void sub_1DDF7BB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void AUMNBandEQ::~AUMNBandEQ(AUMNBandEQ *this)
{
  AUMNBandEQ::~AUMNBandEQ(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5930660;
  AUMNBandEQ::Cleanup(this);
  v2 = *(this + 83);
  if (v2)
  {
    *(this + 84) = v2;
    operator delete(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    *(this + 81) = v3;
    operator delete(v3);
  }

  v6 = (this + 600);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 70);
  if (v4)
  {
    *(this + 71) = v4;
    operator delete(v4);
  }

  v5 = *(this + 67);
  if (v5)
  {
    *(this + 68) = v5;
    operator delete(v5);
  }

  ausdk::AUBase::~AUBase(this);
}

void AUSM::loadAUPreset(void *a1, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  applesauce::CF::make_DataRef(&data, a2);
  v4 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  v5 = v4;
  *buf = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *a1 = v5;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      *&buf[4] = "loadAUPreset";
      v12 = 2080;
      v13 = v2;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "%s: loaded preset %s", buf, 0x16u);
    }
  }

  else
  {
    *a1 = 0;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      *&buf[4] = "loadAUPreset";
      v12 = 2080;
      v13 = v2;
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "%s: could not load preset %s", buf, 0x16u);
    }
  }

  if (data)
  {
    CFRelease(data);
  }
}

void sub_1DDF7BE84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, __int128 buf)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&buf);
  applesauce::CF::DataRef::~DataRef(&a10);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v16 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      if (*(v11 + 23) < 0)
      {
        v11 = *v11;
      }

      LODWORD(buf) = 136315394;
      *(&buf + 4) = "loadAUPreset";
      WORD6(buf) = 2080;
      *(&buf + 14) = v11;
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "%s: could not load preset %s", &buf, 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDF7BD8CLL);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(v12);
  _Unwind_Resume(a1);
}

void AUSM::FactoryPreset::load(AUSM::FactoryPreset *this, int *a2, unsigned int a3, int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(&v29, 0, sizeof(v29));
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v22 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      __p.st_dev = 136315394;
      *&__p.st_mode = "load";
      WORD2(__p.st_ino) = 1024;
      *(&__p.st_ino + 6) = a3;
      v19 = "%s: factory preset #%d not defined";
      v20 = v22;
      v21 = 18;
      goto LABEL_51;
    }

    AUSM::getBuiltInSpeakerPresetPath(&__p);
    v7 = 0;
    v29.__r_.__value_.__r.__words[2] = *&__p.st_uid;
    *&v29.__r_.__value_.__l.__data_ = *&__p.st_dev;
    v15 = HIBYTE(*&__p.st_uid);
    v14 = *&__p.st_dev;
  }

  else
  {
    if (a4)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (a4)
    {
      v8 = "personalized-multichannel.aupreset";
    }

    else
    {
      v8 = "multichannel.aupreset";
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v8);
    std::operator+<char>();
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    std::string::basic_string[abi:ne200100]<0>(&v26, "/System/Library/Audio/Tunings/Generic/AU");
    v9 = std::string::append(&v26, "/", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v9->__r_.__value_.__l + 2);
    *&__p.st_dev = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((v28 & 0x80u) == 0)
    {
      v11 = v27;
    }

    else
    {
      v11 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v12 = v28;
    }

    else
    {
      v12 = v27[1];
    }

    v13 = std::string::append(&__p, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[0];
    v30[0] = v13->__r_.__value_.__l.__size_;
    *(v30 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    LOBYTE(v15) = *(&v13->__r_.__value_.__s + 23);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    *(&v29.__r_.__value_.__r.__words[1] + 7) = *(v30 + 7);
    v29.__r_.__value_.__r.__words[0] = v14;
    v29.__r_.__value_.__l.__size_ = v30[0];
    *(&v29.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  if ((v15 & 0x80u) == 0)
  {
    v16 = &v29;
  }

  else
  {
    v16 = v14;
  }

  if (stat(v16, &__p))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v18 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v29.__r_.__value_.__r.__words[0];
    }

    __p.st_dev = 136315650;
    *&__p.st_mode = "load";
    WORD2(__p.st_ino) = 2080;
    *(&__p.st_ino + 6) = v18;
    HIWORD(__p.st_gid) = 1024;
    __p.st_rdev = a3;
    v19 = "%s: %s for factory preset #%d not found";
    v20 = v17;
    v21 = 28;
LABEL_51:
    _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, v19, &__p, v21);
LABEL_39:
    *this = 0;
    *(this + 1) = 0;
LABEL_40:
    *(this + 2) = 0;
    goto LABEL_41;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v29;
  }

  AUSM::loadAUPreset(&__p, &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  *a2 = v7;
  *this = AUSM::kFactoryPresets[a3];
  v23 = *&__p.st_dev;
  if (!*&__p.st_dev)
  {
    goto LABEL_40;
  }

  CFRetain(*&__p.st_dev);
  v24 = *&__p.st_dev;
  *(this + 2) = v23;
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_41:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF7C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::getBuiltInSpeakerPresetPath(AUSM *this)
{
  v68 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(GetAcousticID(void)::sOnceFlag, memory_order_acquire) != -1)
  {
    v67.__r_.__value_.__r.__words[0] = &v62;
    *&v65 = &v67;
    std::__call_once(GetAcousticID(void)::sOnceFlag, &v65, std::__call_once_proxy[abi:ne200100]<std::tuple<GetAcousticID(void)::$_0 &&>>);
  }

  v2 = GetAcousticID(void)::optionalValue;
  if ((GetAcousticID(void)::optionalValue & 0x100000000) != 0)
  {
    std::to_string(&v67, GetAcousticID(void)::optionalValue);
    v3 = std::string::insert(&v67, 0, "AID", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v66 = v3->__r_.__value_.__r.__words[2];
    v65 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v65, "");
  }

  memset(&v67, 0, sizeof(v67));
  caulk::product::short_hardware_model_name(&v67, v3);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v67;
  }

  else
  {
    v5 = v67.__r_.__value_.__r.__words[0];
  }

  TypeID = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  v7 = TypeID;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v64 = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    TypeID = CFStringGetTypeID();
    if (v8 != TypeID)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  ProductType = PlatformUtilities_iOS::GetProductType(TypeID);
  memset(&v67, 0, sizeof(v67));
  switch(ProductType)
  {
    case 1:
      v58 = 0;
      v10 = 184;
      goto LABEL_231;
    case 2:
      v58 = 0;
      goto LABEL_230;
    case 3:
      v58 = 97;
LABEL_230:
      v10 = 238;
      goto LABEL_231;
    case 4:
      v58 = 0;
      v10 = 520;
      goto LABEL_231;
    case 5:
      v58 = 0;
      v10 = 620;
LABEL_231:
      v33 = 98;
      goto LABEL_255;
    case 6:
      v58 = 0;
      v10 = 10;
      goto LABEL_254;
    case 7:
      v58 = 0;
      v10 = 11;
      goto LABEL_254;
    case 8:
      v58 = 0;
      v10 = 12;
      goto LABEL_254;
    case 9:
      v58 = 0;
      v10 = 16;
      goto LABEL_254;
    case 10:
      v58 = 0;
      v10 = 17;
      goto LABEL_254;
    case 11:
      v58 = 0;
      v10 = 101;
      goto LABEL_254;
    case 12:
      v58 = 0;
      v10 = 111;
      goto LABEL_254;
    case 13:
      v58 = 0;
      v10 = 121;
      goto LABEL_254;
    case 14:
      v58 = 0;
      v10 = 20;
      goto LABEL_254;
    case 15:
      v58 = 0;
      v10 = 21;
      goto LABEL_254;
    case 16:
      v58 = 0;
      v10 = 22;
      goto LABEL_254;
    case 17:
      v58 = 0;
      goto LABEL_241;
    case 18:
      v58 = 0;
      v10 = 28;
      goto LABEL_254;
    case 19:
      v58 = 0;
      v10 = 37;
      goto LABEL_254;
    case 20:
      v58 = 0;
      v10 = 38;
      goto LABEL_254;
    case 21:
      v58 = 0;
      v10 = 201;
      goto LABEL_254;
    case 22:
      v58 = 0;
      v10 = 211;
      goto LABEL_254;
    case 23:
      v58 = 0;
      v10 = 221;
      goto LABEL_254;
    case 24:
      v58 = 0;
      v10 = 32;
      goto LABEL_254;
    case 25:
      v58 = 0;
      v10 = 33;
      goto LABEL_254;
    case 26:
      v58 = 0;
      v10 = 79;
      goto LABEL_254;
    case 27:
      v58 = 0;
      v10 = 42;
      goto LABEL_254;
    case 28:
      v58 = 0;
      v10 = 43;
      goto LABEL_254;
    case 29:
      v58 = 0;
      v10 = 47;
      goto LABEL_254;
    case 30:
      v58 = 0;
      v10 = 48;
      goto LABEL_254;
    case 31:
      v58 = 0;
      v10 = 49;
      goto LABEL_254;
    case 32:
      v58 = 103;
      v10 = 52;
      goto LABEL_254;
    case 33:
      v11 = 103;
      goto LABEL_253;
    case 34:
      v11 = 112;
LABEL_253:
      v58 = v11;
      v10 = 53;
      goto LABEL_254;
    case 35:
      v58 = 112;
      v10 = 54;
      goto LABEL_254;
    case 36:
      v58 = 0;
      v10 = 63;
      goto LABEL_254;
    case 37:
      v58 = 0;
      v10 = 64;
      goto LABEL_254;
    case 38:
      v58 = 0;
      v10 = 73;
      goto LABEL_254;
    case 39:
      v58 = 0;
      v10 = 74;
      goto LABEL_254;
    case 40:
      v58 = 0;
      v10 = 83;
      goto LABEL_254;
    case 41:
      v58 = 0;
      v10 = 84;
      goto LABEL_254;
    case 42:
      v58 = 0;
      v10 = 93;
      goto LABEL_254;
    case 43:
      v58 = 0;
      v10 = 94;
      goto LABEL_254;
    case 44:
      v58 = 117;
LABEL_241:
      v10 = 27;
LABEL_254:
      v33 = 100;
      goto LABEL_255;
    case 45:
      v58 = 0;
      v10 = 59;
      goto LABEL_219;
    case 46:
      v58 = 0;
      v10 = 104;
      goto LABEL_226;
    case 47:
      v58 = 0;
      goto LABEL_66;
    case 48:
      v58 = 100;
LABEL_66:
      v10 = 42;
      goto LABEL_248;
    case 49:
      v58 = 0;
      goto LABEL_125;
    case 50:
      v12 = 98;
      goto LABEL_87;
    case 51:
      v12 = 115;
LABEL_87:
      v58 = v12;
LABEL_125:
      v10 = 71;
      goto LABEL_248;
    case 52:
      v58 = 0;
      v10 = 72;
      goto LABEL_248;
    case 53:
      v58 = 0;
      v10 = 73;
      goto LABEL_248;
    case 54:
      v58 = 0;
      v10 = 81;
      goto LABEL_248;
    case 55:
      v58 = 0;
      v10 = 82;
      goto LABEL_248;
    case 56:
      v58 = 0;
      goto LABEL_207;
    case 57:
      v58 = 109;
LABEL_207:
      v10 = 85;
      goto LABEL_248;
    case 58:
      v58 = 0;
      goto LABEL_247;
    case 59:
      v58 = 109;
LABEL_247:
      v10 = 86;
      goto LABEL_248;
    case 60:
      v58 = 0;
      goto LABEL_85;
    case 61:
      v58 = 109;
LABEL_85:
      v10 = 87;
      goto LABEL_248;
    case 62:
      v58 = 0;
      v10 = 96;
      goto LABEL_248;
    case 63:
      v58 = 0;
      v10 = 97;
      goto LABEL_248;
    case 64:
      v58 = 0;
      goto LABEL_223;
    case 65:
      v58 = 97;
LABEL_223:
      v10 = 98;
      goto LABEL_248;
    case 66:
      v58 = 0;
      goto LABEL_237;
    case 67:
      v58 = 97;
LABEL_237:
      v10 = 99;
      goto LABEL_248;
    case 68:
      v58 = 97;
      v10 = 105;
      goto LABEL_248;
    case 69:
      v58 = 0;
      v10 = 120;
      goto LABEL_248;
    case 70:
      v58 = 0;
      v10 = 127;
      goto LABEL_248;
    case 71:
      v58 = 0;
      v10 = 128;
      goto LABEL_248;
    case 72:
      v58 = 0;
      goto LABEL_165;
    case 73:
      v58 = 97;
LABEL_165:
      v10 = 171;
      goto LABEL_248;
    case 74:
      v58 = 0;
      v10 = 181;
      goto LABEL_248;
    case 75:
      v58 = 0;
      v10 = 182;
      goto LABEL_248;
    case 76:
      v58 = 0;
      v10 = 207;
      goto LABEL_248;
    case 77:
      v58 = 0;
      v10 = 210;
      goto LABEL_248;
    case 78:
      v58 = 0;
      v10 = 217;
      goto LABEL_248;
    case 79:
      v58 = 0;
      v10 = 255;
      goto LABEL_248;
    case 80:
      v58 = 0;
      v10 = 271;
      goto LABEL_248;
    case 81:
      v58 = 0;
      v10 = 272;
      goto LABEL_248;
    case 82:
      v58 = 0;
      v10 = 305;
      goto LABEL_248;
    case 83:
      v58 = 0;
      v10 = 307;
      goto LABEL_248;
    case 84:
      v58 = 0;
      v10 = 308;
      goto LABEL_248;
    case 85:
      v58 = 0;
      v10 = 310;
      goto LABEL_248;
    case 86:
      v58 = 0;
      v10 = 311;
      goto LABEL_248;
    case 87:
      v58 = 0;
      v10 = 317;
      goto LABEL_248;
    case 88:
      v58 = 0;
      v10 = 320;
      goto LABEL_248;
    case 89:
      v58 = 0;
      v10 = 348;
      goto LABEL_248;
    case 90:
      v58 = 0;
      v10 = 381;
      goto LABEL_248;
    case 91:
      v58 = 0;
      v10 = 382;
      goto LABEL_248;
    case 92:
      v58 = 0;
      v10 = 407;
      goto LABEL_248;
    case 93:
      v58 = 0;
      v10 = 408;
      goto LABEL_248;
    case 94:
      v58 = 0;
      v10 = 410;
      goto LABEL_248;
    case 95:
      v58 = 0;
      v10 = 411;
      goto LABEL_248;
    case 96:
      v58 = 0;
      v10 = 417;
      goto LABEL_248;
    case 97:
      v58 = 0;
      v10 = 420;
      goto LABEL_248;
    case 98:
      v58 = 0;
      v10 = 507;
      goto LABEL_248;
    case 99:
      v58 = 0;
      v10 = 508;
      goto LABEL_248;
    case 100:
      v58 = 0;
      v10 = 517;
      goto LABEL_248;
    case 101:
      v58 = 0;
      v10 = 522;
      goto LABEL_248;
    case 102:
      v58 = 0;
      v10 = 537;
      goto LABEL_248;
    case 103:
      v58 = 0;
      v10 = 538;
      goto LABEL_248;
    case 104:
      v58 = 0;
      v10 = 617;
      goto LABEL_248;
    case 105:
      v58 = 0;
      v10 = 620;
      goto LABEL_248;
    case 106:
      v58 = 0;
      v10 = 717;
      goto LABEL_248;
    case 107:
      v58 = 0;
      v10 = 720;
LABEL_248:
      v33 = 106;
      goto LABEL_255;
    case 108:
      v58 = 97;
      v10 = 27;
      goto LABEL_226;
    case 109:
      v58 = 97;
      v10 = 28;
      goto LABEL_226;
    case 110:
      v58 = 0;
      v10 = 41;
      goto LABEL_226;
    case 111:
      v58 = 0;
      v10 = 42;
      goto LABEL_226;
    case 112:
      v58 = 0;
      v10 = 48;
      goto LABEL_226;
    case 113:
      v58 = 0;
      v10 = 49;
      goto LABEL_226;
    case 114:
      v58 = 0;
      v10 = 51;
      goto LABEL_226;
    case 115:
      v58 = 0;
      v10 = 53;
      goto LABEL_226;
    case 116:
      v58 = 0;
      v10 = 56;
      goto LABEL_226;
    case 117:
      v58 = 0;
      v10 = 61;
      goto LABEL_226;
    case 118:
      v58 = 0;
      v10 = 64;
      goto LABEL_226;
    case 119:
      v58 = 0;
      v10 = 65;
      goto LABEL_226;
    case 120:
      v58 = 0;
      v10 = 66;
      goto LABEL_226;
    case 121:
      v58 = 0;
      v10 = 69;
      goto LABEL_226;
    case 122:
      v58 = 0;
      v10 = 71;
      goto LABEL_226;
    case 123:
      v58 = 0;
      v10 = 74;
      goto LABEL_226;
    case 124:
      v58 = 0;
      v10 = 75;
      goto LABEL_226;
    case 125:
      v58 = 0;
      v10 = 841;
      goto LABEL_226;
    case 126:
      v58 = 0;
      v10 = 102;
      goto LABEL_226;
    case 127:
      v58 = 0;
      v10 = 112;
      goto LABEL_226;
    case -128:
      v13 = 115;
      goto LABEL_74;
    case -127:
      v13 = 98;
LABEL_74:
      v58 = v13;
      v10 = 111;
      goto LABEL_226;
    case -126:
      v22 = 115;
      goto LABEL_217;
    case -125:
      v22 = 98;
LABEL_217:
      v58 = v22;
      v10 = 121;
      goto LABEL_226;
    case -124:
      v16 = 115;
      goto LABEL_95;
    case -123:
      v16 = 98;
LABEL_95:
      v58 = v16;
      v10 = 131;
      goto LABEL_226;
    case -122:
      v29 = 115;
      goto LABEL_146;
    case -121:
      v29 = 98;
LABEL_146:
      v58 = v29;
      v10 = 140;
      goto LABEL_226;
    case -120:
      v31 = 115;
      goto LABEL_148;
    case -119:
      v31 = 98;
LABEL_148:
      v58 = v31;
      v10 = 141;
      goto LABEL_226;
    case -118:
      v28 = 115;
      goto LABEL_143;
    case -117:
      v28 = 98;
LABEL_143:
      v58 = v28;
      v10 = 142;
      goto LABEL_226;
    case -116:
      v26 = 98;
      goto LABEL_181;
    case -115:
      v26 = 115;
LABEL_181:
      v58 = v26;
      v10 = 143;
      goto LABEL_226;
    case -114:
      v20 = 115;
      goto LABEL_177;
    case -113:
      v20 = 98;
LABEL_177:
      v58 = v20;
      v10 = 144;
      goto LABEL_226;
    case -112:
      v34 = 115;
      goto LABEL_198;
    case -111:
      v34 = 98;
LABEL_198:
      v58 = v34;
      v10 = 146;
      goto LABEL_226;
    case -110:
      v18 = 98;
      goto LABEL_202;
    case -109:
      v18 = 115;
LABEL_202:
      v58 = v18;
      v10 = 149;
      goto LABEL_226;
    case -108:
      v14 = 115;
      goto LABEL_212;
    case -107:
      v14 = 98;
LABEL_212:
      v58 = v14;
      v10 = 157;
      goto LABEL_226;
    case -106:
      v25 = 115;
      goto LABEL_110;
    case -105:
      v25 = 98;
LABEL_110:
      v58 = v25;
      v10 = 158;
      goto LABEL_226;
    case -104:
      v19 = 115;
      goto LABEL_204;
    case -103:
      v19 = 98;
LABEL_204:
      v58 = v19;
      v10 = 187;
      goto LABEL_226;
    case -102:
      v24 = 115;
      goto LABEL_161;
    case -101:
      v24 = 98;
LABEL_161:
      v58 = v24;
      v10 = 188;
      goto LABEL_226;
    case -100:
      v15 = 115;
      goto LABEL_179;
    case -99:
      v15 = 98;
LABEL_179:
      v58 = v15;
      v10 = 197;
      goto LABEL_226;
    case -98:
      v27 = 115;
      goto LABEL_139;
    case -97:
      v27 = 98;
LABEL_139:
      v58 = v27;
      v10 = 198;
      goto LABEL_226;
    case -96:
      v58 = 0;
      v10 = 199;
      goto LABEL_226;
    case -95:
      v17 = 115;
      goto LABEL_188;
    case -94:
      v17 = 98;
LABEL_188:
      v58 = v17;
      v10 = 207;
      goto LABEL_226;
    case -93:
      v21 = 115;
      goto LABEL_83;
    case -92:
      v21 = 98;
LABEL_83:
      v58 = v21;
      v10 = 208;
      goto LABEL_226;
    case -91:
      v23 = 115;
      goto LABEL_99;
    case -90:
      v23 = 98;
LABEL_99:
      v58 = v23;
      v10 = 217;
      goto LABEL_226;
    case -89:
      v32 = 115;
      goto LABEL_158;
    case -88:
      v32 = 98;
LABEL_158:
      v58 = v32;
      v10 = 218;
      goto LABEL_226;
    case -87:
      v58 = 0;
      v10 = 210;
      goto LABEL_226;
    case -86:
      v58 = 0;
      v10 = 101;
      goto LABEL_185;
    case -85:
      v58 = 0;
      v10 = 102;
      goto LABEL_185;
    case -84:
      v58 = 0;
      v10 = 103;
LABEL_185:
      v33 = 112;
      goto LABEL_255;
    case -83:
      v30 = 110;
      goto LABEL_190;
    case -82:
      v30 = 112;
LABEL_190:
      v58 = v30;
      v10 = 398;
      goto LABEL_191;
    case -81:
      v58 = 0;
      v10 = 456;
      goto LABEL_191;
    case -80:
      v58 = 112;
      v10 = 698;
      goto LABEL_191;
    case -79:
      v58 = 0;
      v10 = 720;
      goto LABEL_191;
    case -78:
      v58 = 0;
      v10 = 721;
      goto LABEL_191;
    case -77:
      v58 = 0;
      v10 = 734;
      goto LABEL_191;
    case -76:
      v58 = 0;
      v10 = 742;
      goto LABEL_191;
    case -75:
      v58 = 0;
      v10 = 1125;
      goto LABEL_191;
    case -74:
      v58 = 0;
      v10 = 1153;
      goto LABEL_191;
    case -73:
      v58 = 0;
      v10 = 1232;
      goto LABEL_191;
    case -72:
      v58 = 0;
      v10 = 1250;
      goto LABEL_191;
    case -71:
      v58 = 0;
      v10 = 1251;
      goto LABEL_191;
    case -70:
      v58 = 0;
      v10 = 1252;
      goto LABEL_191;
    case -69:
      v58 = 0;
      v10 = 1253;
      goto LABEL_191;
    case -68:
      snprintf(&v67, 0x18uLL, "%c%d%c", 116, 698, 116);
      goto LABEL_256;
    case -67:
      v58 = 0;
      v10 = 6502;
      goto LABEL_191;
    case -66:
      v58 = 0;
      v10 = 6809;
LABEL_191:
      v33 = 116;
      goto LABEL_255;
    case -65:
      snprintf(&v67, 0x18uLL, "%c%d%c", 113, 100, 0);
      goto LABEL_256;
    case -64:
      v58 = 0;
      v10 = 301;
LABEL_226:
      v33 = 110;
      goto LABEL_255;
    case -63:
      v58 = 0;
      v10 = 314;
      goto LABEL_152;
    case -62:
      v58 = 0;
      v10 = 317;
LABEL_152:
      v33 = 122;
      goto LABEL_255;
    case -61:
      v58 = 0;
      v10 = 101;
      goto LABEL_219;
    case -60:
      v58 = 0;
      v10 = 201;
      goto LABEL_219;
    case -59:
      v58 = 0;
      v10 = 301;
      goto LABEL_219;
    case -58:
      v58 = 0;
      v10 = 401;
      goto LABEL_219;
    case -57:
      v58 = 0;
      v10 = 501;
LABEL_219:
      v33 = 118;
LABEL_255:
      snprintf(&v67, 0x18uLL, "%c%d%c", v33, v10, v58);
LABEL_256:
      if (!v67.__r_.__value_.__s.__data_[0])
      {
        goto LABEL_278;
      }

      v35 = CFStringCreateWithCString(0, &v67, 0x600u);
      cf = v35;
      if (!v35)
      {
        goto LABEL_279;
      }

      v36 = CFGetTypeID(v35);
      if (v36 != CFStringGetTypeID())
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
      }

      if (!v64 || !cf)
      {
        goto LABEL_279;
      }

      if ((v2 & 0x100000000) != 0)
      {
        std::operator+<char>();
        v44 = std::string::append(&v62, "/AU", 3uLL);
        v67 = *v44;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&v62, "");
        std::string::basic_string[abi:ne200100]<0>(&v61, "");
      }

      else
      {
        applesauce::CF::convert_to<std::string,0>(&v61, v64);
        v37 = std::string::insert(&v61, 0, "/System/Library/Audio/Tunings/", 0x1EuLL);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v62, "/AU", 3uLL);
        v67 = *v39;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (!cf)
        {
          v57 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v57, "Could not construct");
        }

        applesauce::CF::convert_to<std::string,0>(&v62, cf);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v62.__r_.__value_.__l.__size_;
        }

        v41 = &v61;
        std::string::basic_string[abi:ne200100](&v61, size + 1);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v61.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v62;
          }

          else
          {
            v42 = v62.__r_.__value_.__r.__words[0];
          }

          memmove(v41, v42, size);
        }

        *(&v41->__r_.__value_.__l.__data_ + size) = 45;
      }

      v45 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v67.__r_.__value_.__l.__size_;
      }

      v47 = &v59;
      std::string::basic_string[abi:ne200100](&v59, v46 + 1);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v59.__r_.__value_.__r.__words[0];
      }

      if (v46)
      {
        if (v45 >= 0)
        {
          v48 = &v67;
        }

        else
        {
          v48 = v67.__r_.__value_.__r.__words[0];
        }

        memmove(v47, v48, v46);
      }

      *(&v47->__r_.__value_.__l.__data_ + v46) = 47;
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v61;
      }

      else
      {
        v49 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v61.__r_.__value_.__l.__size_;
      }

      v51 = std::string::append(&v59, v49, v50);
      v52 = *&v51->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      v53 = std::string::append(&v60, "aumx-3dem-appl.aupreset", 0x17uLL);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_284;
        }
      }

      else if ((v45 & 0x80000000) == 0)
      {
        goto LABEL_284;
      }

      operator delete(v67.__r_.__value_.__l.__data_);
LABEL_284:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v64)
      {
        CFRelease(v64);
      }

      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65);
      }

      return;
    default:
LABEL_278:
      cf = 0;
LABEL_279:
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v43 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v67.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_ERROR, "Could not load built-in speaker preset file: invalid model/product name!", &v67, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(this, "");
      goto LABEL_284;
  }
}

void sub_1DDF7D3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, const void *a37)
{
  __cxa_free_exception(v37);
  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  applesauce::CF::StringRef::~StringRef(&a37);
  applesauce::CF::StringRef::~StringRef((v38 - 120));
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t IR::DynamicIRProcessor::DynamicIRProcessor(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  v7 = *a3;
  v8 = *(a3 + 4);
  *(a1 + 104) = 0;
  *(a1 + 80) = 1161527296;
  *(a1 + 84) = v7;
  *(a1 + 85) = v8;
  *(a1 + 88) = 1;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 132) = _D0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0x8000000000;
  *(a1 + 152) = *(a3 + 1);
  *(a1 + 156) = 0;
  *(a1 + 158) = 0;
  *(a1 + 160) = xmmword_1DE09E230;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 176));
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 180));
  return a1;
}

void sub_1DDF7D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = v14;
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v10 + 104));
  a10 = v15;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v12, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v13, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v11, 0);
  v17 = *(v10 + 24);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v10 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_1DDF7D734(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::DynamicIRProcessor::initialize(uint64_t a1, unsigned int a2, int *a3, float a4)
{
  if (!a3[1])
  {
    __assert_rtn("initialize", "DynamicIRProcessor.cpp", 36, "inInitParams.processorChangeXFadeLength > 0u");
  }

  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((a1 + 176), (a1 + 180));
  *(a1 + 157) = 0;
  atomic_store(0, (a1 + 160));
  atomic_store(0, (a1 + 164));
  atomic_store(0, (a1 + 168));
  v8 = a3[2];
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  *(a1 + 88) = v9;
  std::vector<std::vector<float>>::resize((a1 + 56), v9);
  v10 = *(a1 + 56);
  for (i = *(a1 + 64); v10 != i; v10 += 3)
  {
    std::vector<float>::resize(v10, a2);
  }

  if (*(a1 + 16))
  {
    operator new();
  }

  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((a1 + 32), 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((a1 + 40), 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((a1 + 48), 0);
  atomic_store(0, (a1 + 156));
  *(a1 + 124) = a4;
  v12 = *a3;
  v13 = a3[1];
  *(a1 + 144) = a2;
  *(a1 + 148) = v12;
  *(a1 + 128) = v13;
  *(a1 + 132) = 1.0 / v13;
  atomic_store(0, (a1 + 158));
  *(a1 + 157) = 1;
  caulk::pooled_semaphore_mutex::_unlock((a1 + 176));

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 180));
}

void sub_1DDF7DA78(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12BD160](v2, 0x10A1C40AF302FDBLL);
  caulk::pooled_semaphore_mutex::_unlock((v1 + 176));
  caulk::pooled_semaphore_mutex::_unlock((v1 + 180));
  _Unwind_Resume(a1);
}

uint64_t IR::DynamicIRProcessor::uninitialize(IR::DynamicIRProcessor *this)
{
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 176), (this + 180));
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 6, 0);
  *(this + 157) = 0;
  atomic_store(0, this + 156);
  atomic_store(0, this + 40);
  atomic_store(0, this + 41);
  atomic_store(0, this + 42);
  atomic_store(0xFFFFFFFF, this + 43);
  caulk::pooled_semaphore_mutex::_unlock((this + 176));

  return caulk::pooled_semaphore_mutex::_unlock((this + 180));
}

uint64_t IR::DynamicIRProcessor::processInternal(uint64_t this, const float *const *a2, float **a3, unsigned int a4, unsigned int a5, vDSP_Length a6, float a7, float *const *a8, int a9, IR::ComplexDataCircBuffer *a10)
{
  v121 = a2;
  v124 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v10 = this;
    if (*(this + 157))
    {
      v11 = a9;
      v12 = a8;
      v14 = a6;
      v17 = a3;
      if (a9)
      {
        v18 = a8;
      }

      else
      {
        v18 = a3;
      }

      v19 = atomic_load((this + 156));
      if ((v19 & 1) != 0 && (v20 = atomic_load((this + 172)), v20 == -1) && caulk::pooled_semaphore_mutex::try_lock((this + 180)))
      {
        v21 = *(v10 + 40);
        *(v10 + 48) = *(v10 + 32);
        *(v10 + 32) = v21;
        atomic_store(0, (v10 + 172));
        v22 = atomic_load((v10 + 158));
        if (v22)
        {
          *(v10 + 136) = 0x3F80000000000000;
        }

        v23 = *(v10 + 32);
        if (v23)
        {
          v24 = (*(**(v23 + 24) + 80))(*(v23 + 24));
          if (*(v23 + 172))
          {
            v25 = v24 + 5;
          }

          else
          {
            v25 = v24;
          }

          atomic_store(v25, (v10 + 160));
          atomic_store((*(**(*(v10 + 32) + 24) + 72))(*(*(v10 + 32) + 24)), (v10 + 164));
          TailLength = IR::IRProcessor::getTailLength(*(v10 + 32));
        }

        else
        {
          TailLength = 0;
          atomic_store(0, (v10 + 160));
          atomic_store(0, (v10 + 164));
        }

        atomic_store(TailLength, (v10 + 168));
        atomic_store(0, (v10 + 156));
        v109 = *v10;
        if (*v10)
        {
          v110 = *(v10 + 40);
          *(v10 + 40) = 0;
          if (!*MEMORY[0x1E69E3C08])
          {
            goto LABEL_127;
          }

          v111 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          *(v111 + 16) = 0;
          *(v111 + 24) = v110;
          *v111 = &unk_1F5930970;
          *(v111 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v109, v111);
        }

        caulk::pooled_semaphore_mutex::_unlock((v10 + 180));
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      this = caulk::pooled_semaphore_mutex::try_lock((v10 + 176));
      if (!this)
      {
        return this;
      }

      v119 = a10;
      v28 = *(v10 + 32);
      if (v28)
      {
        v118 = v11;
        v120 = v14;
        v116 = v112;
        v117 = v28;
        MEMORY[0x1EEE9AC00](this);
        v30 = &v112[-((v29 + 15) & 0xFFFFFFFF0)];
        if (v29 >= 0x200)
        {
          v31 = 512;
        }

        else
        {
          v31 = v29;
        }

        bzero(&v112[-((v29 + 15) & 0xFFFFFFFF0)], v31);
        v32 = *(v10 + 136);
        v33 = v121;
        if (v32 < 1.0)
        {
          v34 = v120;
          if (v32 < 0.0)
          {
            *(v10 + 136) = 0;
            v32 = 0.0;
          }

          v113 = v27;
          v114 = v18;
          v115 = a5;
          v35 = *(v10 + 88);
          if (v35 >= a4)
          {
            v35 = a4;
          }

          if (v35)
          {
            v36 = 0;
            v37 = 0;
            v38 = ((1.0 - v32) / *(v10 + 132));
            if (v38 >= v34)
            {
              v39 = v34;
            }

            else
            {
              v39 = v38;
            }

            v40 = 4 * (v34 - v39);
            v41 = *(v10 + 56);
            do
            {
              v42 = v121[v37];
              v43 = *(v10 + 136);
              v44 = v41 + v36;
              v45 = *v44;
              v46 = (*(v44 + 8) - *v44) >> 2;
              __Step = *(v10 + 132);
              __Start = v43;
              if (v46 >= v39)
              {
                v47 = v39;
              }

              else
              {
                v47 = v46;
              }

              vDSP_vrampmul(v42, 1, &__Start, &__Step, v45, 1, v47);
              v32 = __Start;
              if (v38 < v120)
              {
                memcpy((*(*(v10 + 56) + v36) + 4 * v39), &v121[v37][v39], v40);
              }

              v41 = *(v10 + 56);
              v30[v37++] = *(v41 + v36);
              LODWORD(v48) = *(v10 + 88);
              if (v48 >= a4)
              {
                v48 = a4;
              }

              else
              {
                v48 = v48;
              }

              v36 += 24;
            }

            while (v37 < v48);
          }

          *(v10 + 136) = v32;
          v33 = v30;
          a5 = v115;
          v18 = v114;
          LOBYTE(v27) = v113;
        }

        if (v27 & 1) != 0 || (v49 = atomic_load((v10 + 120)), (v49))
        {
          atomic_store(0, (v10 + 120));
          v50 = *(v10 + 96);
          if (v50 != (v10 + 104))
          {
            do
            {
              v51 = *(v10 + 32);
              v52 = v50[7];
              v53 = COERCE_FLOAT(atomic_load(v50 + 8));
              (*(**(v51 + 24) + 48))(*(v51 + 24), v52, v53);
              v54 = *(v50 + 1);
              if (v54)
              {
                do
                {
                  v55 = v54;
                  v54 = *v54;
                }

                while (v54);
              }

              else
              {
                do
                {
                  v55 = *(v50 + 2);
                  v56 = *v55 == v50;
                  v50 = v55;
                }

                while (!v56);
              }

              v50 = v55;
            }

            while (v55 != (v10 + 104));
          }
        }

        v57 = *(v10 + 32);
        *(v57 + 40) = *(v10 + 80);
        v58 = v33;
        v14 = v120;
        this = IR::IRProcessor::processMultipleInputs(v57, v58, v18, a4, a5, v120, a7, v119);
        if (a5 && v118)
        {
          v59 = v12;
          v60 = v17;
          v61 = a5;
          do
          {
            this = MEMORY[0x1E12BE5D0](*v59, 1, *v60, 1, *v60, 1, v14);
            ++v60;
            ++v59;
            --v61;
          }

          while (v61);
        }

        v28 = v117;
        LOBYTE(v11) = v118;
      }

      if (!*(v10 + 48) || (v62 = atomic_load((v10 + 172)), (v62 & 0x80000000) != 0))
      {
        atomic_store(0xFFFFFFFF, (v10 + 172));
        if (a5 && (v11 & 1) == 0 && !v28)
        {
          v77 = a5;
          do
          {
            vDSP_vclr(*v17++, 1, v14);
            --v77;
          }

          while (v77);
        }

        goto LABEL_120;
      }

      v63 = *(v10 + 140);
      if (v63 <= 0.0)
      {
        if (*(v10 + 88) >= a4)
        {
          v78 = a4;
        }

        else
        {
          v78 = *(v10 + 88);
        }

        if (v78)
        {
          v79 = 0;
          v80 = 0;
          do
          {
            bzero(*(*(v10 + 56) + v79), 4 * v14);
            ++v80;
            v81 = *(v10 + 88);
            if (v81 >= a4)
            {
              v82 = a4;
            }

            else
            {
              v82 = v81;
            }

            v79 += 24;
          }

          while (v80 < v82);
        }
      }

      else
      {
        if (v63 > 1.0)
        {
          *(v10 + 140) = 1065353216;
          v63 = 1.0;
        }

        if (*(v10 + 88) >= a4)
        {
          v64 = a4;
        }

        else
        {
          v64 = *(v10 + 88);
        }

        if (v64)
        {
          v115 = a5;
          v65 = 0;
          v66 = 0;
          v67 = (v63 / *(v10 + 132));
          if (v67 >= v14)
          {
            v68 = v14;
          }

          else
          {
            v68 = v67;
          }

          do
          {
            v69 = *(v10 + 140);
            v70 = v121[v66];
            v71 = *(v10 + 56) + v65;
            v72 = *v71;
            v73 = (*(v71 + 8) - *v71) >> 2;
            __Step = -*(v10 + 132);
            __Start = v69;
            if (v73 >= v68)
            {
              v74 = v68;
            }

            else
            {
              v74 = v73;
            }

            vDSP_vrampmul(v70, 1, &__Start, &__Step, v72, 1, v74);
            v63 = __Start;
            if (v67 < v14)
            {
              bzero((*(*(v10 + 56) + v65) + 4 * v68), 4 * (v14 - v68));
            }

            ++v66;
            v75 = *(v10 + 88);
            if (v75 >= a4)
            {
              v76 = a4;
            }

            else
            {
              v76 = v75;
            }

            v65 += 24;
          }

          while (v66 < v76);
          a5 = v115;
        }

        *(v10 + 140) = v63;
      }

      MEMORY[0x1EEE9AC00](this);
      v85 = &v112[-v84];
      if (v83 >= 0x200)
      {
        v86 = 512;
      }

      else
      {
        v86 = v83;
      }

      bzero(&v112[-v84], v86);
      LODWORD(v87) = *(v10 + 88);
      if (v87 >= a4)
      {
        v87 = a4;
      }

      else
      {
        v87 = v87;
      }

      if (v87)
      {
        v88 = *(v10 + 56);
        v89 = v85;
        do
        {
          v90 = *v88;
          v88 += 3;
          *v89++ = v90;
          --v87;
        }

        while (v87);
      }

      v91 = atomic_load((v10 + 120));
      if (v91)
      {
        atomic_store(0, (v10 + 120));
        v92 = *(v10 + 96);
        if (v92 != (v10 + 104))
        {
          do
          {
            v93 = *(v10 + 48);
            v94 = v92[7];
            v95 = COERCE_FLOAT(atomic_load(v92 + 8));
            (*(**(v93 + 24) + 48))(*(v93 + 24), v94, v95);
            v96 = *(v92 + 1);
            if (v96)
            {
              do
              {
                v97 = v96;
                v96 = *v96;
              }

              while (v96);
            }

            else
            {
              do
              {
                v97 = *(v92 + 2);
                v56 = *v97 == v92;
                v92 = v97;
              }

              while (!v56);
            }

            v92 = v97;
          }

          while (v97 != (v10 + 104));
        }
      }

      v98 = *(v10 + 48);
      *(v98 + 40) = *(v10 + 80);
      IR::IRProcessor::processMultipleInputs(v98, v85, v12, a4, a5, v14, a7, v119);
      if (a5)
      {
        v99 = a5;
        do
        {
          MEMORY[0x1E12BE5D0](*v12, 1, *v17, 1, *v17, 1, v14);
          ++v17;
          ++v12;
          --v99;
        }

        while (v99);
      }

      v100 = (v10 + 172);
      v101 = atomic_load((v10 + 172));
      v102 = __OFADD__(v101, v14);
      v103 = v101 + v14;
      v104 = ((v101 | v14) >> 31) ^ 0x7FFFFFFF;
      if (!v102)
      {
        v104 = v103;
      }

      atomic_store(v104, v100);
      v105 = atomic_load(v100);
      if (v105 < *(v10 + 128) + IR::IRProcessor::getTailLength(*(v10 + 48)) || (atomic_store(0xFFFFFFFF, (v10 + 172)), (v106 = *v10) == 0))
      {
LABEL_120:
        atomic_store(1u, (v10 + 158));
        return caulk::pooled_semaphore_mutex::_unlock((v10 + 176));
      }

      v107 = *(v10 + 48);
      *(v10 + 48) = 0;
      if (*MEMORY[0x1E69E3C08])
      {
        v108 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v108 + 16) = 0;
        *(v108 + 24) = v107;
        *v108 = &unk_1F59309C0;
        *(v108 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v106, v108);
        goto LABEL_120;
      }

LABEL_127:
      __break(1u);
    }
  }

  return this;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_1>::perform(IR::IRProcessor **a1)
{
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  *a1 = &unk_1F59309E8;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_1>::~message_call(IR::IRProcessor **a1)
{
  *a1 = &unk_1F59309E8;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59309E8;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::rt_message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_1>::~rt_message_call(IR::IRProcessor **a1)
{
  *a1 = &unk_1F59309E8;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59309E8;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_0>::perform(IR::IRProcessor **a1)
{
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  *a1 = &unk_1F5930998;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_0>::~message_call(IR::IRProcessor **a1)
{
  *a1 = &unk_1F5930998;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5930998;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::rt_message_call<IR::DynamicIRProcessor::processInternal(float const* const*,float * const*,unsigned int,unsigned int,unsigned int,float,float * const*,BOOL,IR::ComplexDataCircBuffer *)::$_0>::~rt_message_call(IR::IRProcessor **a1)
{
  *a1 = &unk_1F5930998;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5930998;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

uint64_t IR::DynamicIRProcessor::reset(IR::DynamicIRProcessor *this)
{
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 176), (this + 180));
  v2 = *(this + 4);
  if (v2)
  {
    IR::IRProcessor::reset(v2);
  }

  atomic_store(0, this + 158);
  caulk::pooled_semaphore_mutex::_unlock((this + 176));

  return caulk::pooled_semaphore_mutex::_unlock((this + 180));
}

void sub_1DDF7E8C4(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 176));
  caulk::pooled_semaphore_mutex::_unlock((v1 + 180));
  _Unwind_Resume(a1);
}

uint64_t IR::DynamicIRProcessor::getIRDataAttributes(IR::DynamicIRProcessor *this, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((a2 + 180));
  v4 = *(a2 + 16);
  if (v4)
  {
    IR::IRDataAttributes::IRDataAttributes(this, (v4 + 8));
  }

  else
  {
    IR::IRDataAttributes::IRDataAttributes(this, 0, 0, 1, 2, 0, 0.0);
  }

  return caulk::pooled_semaphore_mutex::_unlock((a2 + 180));
}

void sub_1DDF7E964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::URLRef::~URLRef(va);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 180));
  _Unwind_Resume(a1);
}

void sub_1DDF7EA00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::DynamicIRProcessor::setIRSource(uint64_t a1, void *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 180));
  if (!*a2 || ((*(**a2 + 16))(*a2) == 2 || (*(**a2 + 16))() == 3) && !*(*a2 + 8))
  {
    if (*(a1 + 157) == 1)
    {
      std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100]((a1 + 40), 0);
      atomic_store(1u, (a1 + 156));
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "DynamicIRProcessor: Reconfiguring IRProcessors", &v8, 2u);
    }

    if (*(a1 + 157) == 1)
    {
      operator new();
    }
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 180));
}

uint64_t IR::DynamicIRProcessor::getFFTFilterConfigParams(IR::DynamicIRProcessor *this, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((a2 + 180));
  v4 = atomic_load((a2 + 156));
  if ((v4 & 1) != 0 && (v5 = *(a2 + 40)) != 0 || (v5 = *(a2 + 32)) != 0)
  {
    (*(**(v5 + 48) + 16))(*(v5 + 48));
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 6) = 0;
    *(this + 2) = 0;
  }

  return caulk::pooled_semaphore_mutex::_unlock((a2 + 180));
}

BOOL matchiString(CFStringRef *a1, const UInt8 *a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (!*a2)
    {
      theString2 = 0;
      goto LABEL_5;
    }

    v3 = *(a2 + 1);
    a2 = *a2;
  }

  theString2 = CFStringCreateWithBytes(0, a2, v3, 0x8000100u, 0);
  if (!theString2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

LABEL_5:
  v8.length = CFStringGetLength(*a1);
  v8.location = 0;
  v4 = CFStringCompareWithOptions(*a1, theString2, v8, 1uLL);
  if (theString2)
  {
    CFRelease(theString2);
  }

  return v4 == kCFCompareEqualTo;
}

void sub_1DDF7EDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL matchiEither(CFTypeRef *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v14 = v6;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  v7 = matchiString(&v14, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  v8 = *a1;
  if (v8)
  {
    CFRetain(v8);
  }

  v12 = v8;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9 = matchiString(&v12, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v8)
    {
      return v7 || v9;
    }

    goto LABEL_20;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v8)
  {
LABEL_20:
    CFRelease(v8);
  }

  return v7 || v9;
}

uint64_t AUAudioMix::GetChannelLayoutTags@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
LABEL_2:
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return this;
    }

    v7 = 12451844;
    v4 = &v7;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v5 = &v7;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a4, v5, (v4 + 1), 1uLL);
  }

  if ((*(this + 640) & 1) == 0)
  {
    v6 = 0;
    v4 = &v6;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v5 = &v6;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a4, v5, (v4 + 1), 1uLL);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;

  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a4, &kSpatializationLayoutTags, &kDefaultChannelInfo, 8uLL);
}

BOOL AUAudioMix::ValidFormat(AUAudioMix *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if (a3)
  {
    return 0;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    return a4->mChannelsPerFrame == 4;
  }

  mChannelsPerFrame = a4->mChannelsPerFrame;
  if (*(this + 640) != 1)
  {
    return mChannelsPerFrame == 5;
  }

  v7 = 0;
  do
  {
    v8 = kSpatializationChannels[v7];
    result = mChannelsPerFrame == v8;
  }

  while (mChannelsPerFrame != v8 && v7++ != 7);
  return result;
}

uint64_t AUAudioMix::SupportedNumChannels(AUAudioMix *this, const AUChannelInfo **a2)
{
  v2 = *(this + 640);
  if (a2)
  {
    v3 = &kDefaultChannelInfo;
    if (*(this + 640))
    {
      v3 = &kSpatializationInfos;
    }

    *a2 = v3;
  }

  if (v2)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

double AUAudioMix::GetLatency(AudioUnit *this)
{
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(this[66], 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    goto LABEL_6;
  }

  v5 = 0.0;
  v3 = 0.0;
  if (*(this + 640) == 1)
  {
    Property = AudioUnitGetProperty(this[67], 0xCu, 0, 0, &v5, &ioDataSize);
    if (!Property)
    {
      v3 = v5;
      return outData + v3;
    }

LABEL_6:
    ausdk::Throw(Property);
  }

  return outData + v3;
}

double AUAudioMix::GetParameterInfo(AUAudioMix *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  if (a3 | a2)
  {
    if (!a2 && a3 == 1)
    {
      buffer->cfNameString = @"Remix Amount";
      buffer->flags = -939524096;
      CFStringGetCString(@"Remix Amount", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      result = 0.0078125;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.5;
    }
  }

  else
  {
    buffer->cfNameString = @"Style";
    buffer->flags = -939524096;
    CFStringGetCString(@"Style", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Indexed;
    result = 262144.0;
    *&buffer->minValue = 0x4110000000000000;
    v6 = buffer->flags | 0x1000000;
    buffer->defaultValue = 0.0;
    buffer->flags = v6;
  }

  return result;
}

ausdk::AUInputElement *AUAudioMix::Render(AUAudioMix *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13 = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, &v12, 1, &v13);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUAudioMix::ProcessMultipleBufferLists(AUAudioMix *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v35 = a5;
  v30[1] = v30;
  v41 = *MEMORY[0x1E69E9840];
  v40.mNumberBuffers = 4;
  v36 = a7;
  MEMORY[0x1EEE9AC00](this);
  v11 = (v30 - v10);
  *(v30 - v10) = v12;
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  p_mData = &v11->mBuffers[0].mData;
  v34 = &v40.mBuffers[0].mData;
  v32 = xmmword_1DE09BD50;
  v31 = xmmword_1DE09CB20;
  while (1)
  {
    if (a3 - v14 >= 0x400)
    {
      v15 = 1024;
    }

    else
    {
      v15 = a3 - v14;
    }

    mNumberBuffers = v40.mNumberBuffers;
    v17 = 4 * v15;
    if (v40.mNumberBuffers)
    {
      v18 = v34;
      v19 = &(*v35)->mBuffers[0].mData;
      do
      {
        v20 = *v19;
        v19 += 2;
        *v18 = &v20[4 * v14];
        *(v18 - 2) = 1;
        *(v18 - 1) = v17;
        v18 += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v21 = v11->mNumberBuffers;
    if (v21)
    {
      v22 = &(*v36)->mBuffers[0].mData;
      v23 = p_mData;
      do
      {
        v24 = *v22;
        v22 += 2;
        *v23 = &v24[4 * v14];
        *(v23 - 2) = 1;
        *(v23 - 1) = v17;
        v23 += 2;
        --v21;
      }

      while (v21);
    }

    ioOutputBufferLists = v11;
    if (*(this + 640))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v38.mSampleRate = *(Element + 80);
      *&v38.mFormatID = v32;
      *&v38.mBytesPerFrame = v31;
      v26 = ausdk::AUBufferList::PrepareBufferOrError((this + 648), &v38, v15);
      if ((v27 & 1) == 0)
      {
        ausdk::Throw(v26);
      }

      if (!*(this + 162))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v28 = (*(this + 82) + 48);
      result = AUAudioMix::runGraph(this, a2, v15, &v40, v28);
      if (!result)
      {
        inInputBufferLists = v28;
        result = AudioUnitProcessMultiple(*(this + 67), a2, this + 9, v15, 1u, &inInputBufferLists, 1u, &ioOutputBufferLists);
      }
    }

    else
    {
      result = AUAudioMix::runGraph(this, a2, v15, &v40, v11);
    }

    if (result)
    {
      break;
    }

    *(this + 72) = *(this + 72) + v15;
    v14 += v15;
    if (v14 >= a3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUAudioMix::runGraph(AUAudioMix *this, unsigned int *a2, UInt32 inNumberFrames, AudioBufferList *a4, AudioBufferList *a5)
{
  v11 = a5;
  inInputBufferLists = a4;
  if (*(this + 672) != 1)
  {
    return AudioUnitProcessMultiple(*(this + 66), a2, this + 9, inNumberFrames, 1u, &inInputBufferLists, 1u, &v11);
  }

  v7 = 0;
  mBuffers = a5->mBuffers;
  v9 = a4->mBuffers;
  do
  {
    while (!inNumberFrames)
    {
      if (++v7 == 4)
      {
        return 0;
      }
    }

    memmove(mBuffers[v7].mData, v9[v7].mData, 4 * inNumberFrames);
    ++v7;
  }

  while (v7 != 4);
  bzero(*&a5[3].mBuffers[0].mNumberChannels, 4 * inNumberFrames);
  return 0;
}

uint64_t AUAudioMix::SetParameter(AUAudioMix *this, unsigned int a2, unsigned int a3, AudioUnitElement a4, AudioUnitParameterValue a5, UInt32 a6)
{
  if (!(a3 | a2))
  {
    v6 = *(this + 66);
    v7 = 1937013100;
    return AudioUnitSetParameter(v6, v7, 0, a4, a5, a6);
  }

  if (a2 == 1 && !a3)
  {
    v6 = *(this + 66);
    v7 = 1919776865;
    return AudioUnitSetParameter(v6, v7, 0, a4, a5, a6);
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

uint64_t AUAudioMix::GetParameter(AUAudioMix *this, unsigned int a2, unsigned int a3, AudioUnitElement a4, float *a5)
{
  if (!(a3 | a2))
  {
    v5 = *(this + 66);
    v6 = 1937013100;
    return AudioUnitGetParameter(v5, v6, 0, a4, a5);
  }

  if (a2 == 1 && !a3)
  {
    v5 = *(this + 66);
    v6 = 1919776865;
    return AudioUnitGetParameter(v5, v6, 0, a4, a5);
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AUAudioMix::SetProperty(AUAudioMix *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, int a6)
{
  if (a2 != 21 || a3)
  {
    if (a2 != 5000 || a3)
    {
      if (a2 != 5001 || a3)
      {
        result = 4294956417;
        if (a2 == 3100 && !a3)
        {
          result = 4294956445;
          if (a5)
          {
            if (a6 == 4)
            {
              result = 0;
              *(this + 161) = *a5;
            }
          }
        }
      }

      else
      {
        result = 4294956445;
        if (a5 && a6 == 4)
        {
          result = 0;
          *(this + 640) = *a5 != 0;
        }
      }
    }

    else
    {
      result = 4294956445;
      if (a5 && a6 == 8)
      {
        v9 = *a5;
        if (*a5)
        {
          CFRetain(*a5);
          v15 = v9;
          v10 = CFGetTypeID(v9);
          if (v10 != CFDataGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        v11 = *(this + 68);
        *(this + 68) = v9;
        if (v11)
        {
          CFRelease(v11);
        }

        v12 = getAUAudioMixLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "Set metadata blob with CFDataRef", v14, 2u);
        }

        if (*(this + 17) == 1)
        {
          return AUAudioMix::ParseCinematicAudioMetadata(this);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 4294956445;
    if (a5 && a6 == 4)
    {
      v8 = *a5 != 0;
      if (!*a5 && *(this + 672) == 1)
      {
        AudioUnitReset(*(this + 66), 0, 0);
      }

      result = 0;
      *(this + 672) = v8;
    }
  }

  return result;
}

void sub_1DDF7F974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

id getAUAudioMixLog(void)
{
  if (getAUAudioMixLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAudioMixLog(void)::onceToken, &__block_literal_global_24355);
  }

  v1 = getAUAudioMixLog(void)::gLog;

  return v1;
}

uint64_t AUAudioMix::ParseCinematicAudioMetadata(AUAudioMix *this)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = *(this + 68);
  if (!v2)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(*(this + 68));
  v104 = 0uLL;
  v105 = 0;
  if (Length < 0x2A)
  {
    goto LABEL_15;
  }

  *&buf = &unk_1F593B100;
  *(&buf + 1) = 0;
  v108 = BytePtr;
  v109 = Length;
  v110 = 0;
  v111 = 0;
  LODWORD(__dst) = 0;
  MemoryStream::Read(&buf, &__dst, 4uLL);
  v5 = bswap32(__dst);
  if (v109 != v5 || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), v6 = bswap32(__dst), v6 != 1667853921) && v6 != 1885958241 || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst != 335544320) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst != 1684565603) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), v7 = bswap32(__dst), v7 < 0xE) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst != 1836084835) || (LODWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 4), __dst) || (LOWORD(__dst) = 0, (*(buf + 16))(&buf, &__dst, 2), v11 = bswap32(__dst) >> 16, 8 * v11 + 14 != v7) || 8 * v11 + 42 != v5 || v110 != 42)
  {
    MemoryStream::~MemoryStream(&buf);
LABEL_15:
    v8 = getAUAudioMixLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *&buf = -4227858176;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "ParseBlob() failed with exit code %d", &buf, 8u);
    }

    return 0xFFFFFFFFLL;
  }

  std::vector<CinematicAudioMetadata::KeyValuePair>::resize(&v104, v11);
  v13 = *(&v104 + 1);
  for (i = v104; i != v13; i += 2)
  {
    LODWORD(__dst) = 0;
    (*(buf + 16))(&buf, &__dst, 4);
    v14 = __dst;
    LODWORD(__dst) = 0;
    (*(buf + 16))(&buf, &__dst, 4);
    v15 = bswap32(__dst);
    *i = bswap32(v14);
    i[1] = v15;
  }

  MemoryStream::~MemoryStream(&buf);
  v16 = *(&v104 + 1);
  v17 = v104;
  v18 = *(&v104 + 1) - v104;
  if (*(&v104 + 1) == v104)
  {
    goto LABEL_85;
  }

  v19 = v104;
  v20 = v104 + 8;
  do
  {
    v21 = *(v20 - 8);
    v22 = v21 == 1831874662;
    v23 = v21 == 1831874662 || v20 == *(&v104 + 1);
    v20 += 8;
  }

  while (!v23);
  v24 = v104;
  while (*v24 != 1635140945)
  {
    v24 += 2;
    if (v24 == *(&v104 + 1))
    {
      goto LABEL_42;
    }
  }

  if (v21 != 1831874662)
  {
    v22 = 0;
LABEL_42:
    v26 = 0.0;
    goto LABEL_44;
  }

  v25 = v104;
  while (*v25 != 1635140945)
  {
    v25 += 8;
    if (v25 == *(&v104 + 1))
    {
      goto LABEL_146;
    }
  }

  v26 = *(v25 + 4);
  v22 = 1;
  do
  {
LABEL_44:
    v27 = *v19;
    v28 = 56;
    v29 = "AxmRaxmrlvLD\t";
    do
    {
      if (*v29 == LODWORD(v27))
      {
        v36 = v19[1];
        if (v22 && (v27 == 817.85 || v27 == 12.779))
        {
          v36 = v36 - v26;
        }

        v37 = *(v29 + 1);
        if (AudioUnitSetParameter(*(this + 66), v37, 0, 0, v36, 0))
        {
          v32 = getAUAudioMixLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v37;
            v34 = v32;
            v35 = "Failed to set parameter %d";
LABEL_62:
            _os_log_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEFAULT, v35, &buf, 8u);
          }

LABEL_63:
        }

        goto LABEL_64;
      }

      v29 += 8;
      v28 -= 8;
    }

    while (v28);
    v30 = 0;
    while (MetadataMapping::kUnmappedMetadata[v30] != LODWORD(v27))
    {
      if (++v30 == 37)
      {
        v31 = 0;
        while (*&MetadataMapping::kMusicEQFourCCs[v31] != LODWORD(v27))
        {
          v31 += 4;
          if (v31 == 288)
          {
            v32 = getAUAudioMixLog();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_63;
            }

            v33 = *v19;
            LODWORD(buf) = 67109120;
            *(&buf + 1) = v33;
            v34 = v32;
            v35 = "Failed to map 4cc %d to parameter";
            goto LABEL_62;
          }
        }

        break;
      }
    }

LABEL_64:
    v19 += 2;
  }

  while (v19 != v16);
  if (!v22)
  {
LABEL_85:
    if (v18 >= 0x161)
    {
      v45 = getAUAudioMixLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v18 >> 3;
        _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEFAULT, "Unexpected number of metadata parameters %zu", &buf, 0xCu);
      }
    }

    DspLib::ToneMeister::Algorithm::Algorithm(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 0)) = 1077936128;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 1)) = 1082130432;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 4)) = 1060437492;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 5)) = 0x40000000;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(0, 0)) = 1077936128;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(0, 2)) = 1044381696;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(0, 3)) = 1056964608;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 3)) = 1101004800;
    (*(buf + 160))(&buf);
    v46 = DspLib::ToneMeister::Parameters::automationParameterForSlot(0, 5);
    if (v16 == v17)
    {
      goto LABEL_146;
    }

    v47 = v18;
    v48 = v17;
    while (*v48 != 1634234470)
    {
      v48 += 2;
      v47 -= 8;
      if (!v47)
      {
        goto LABEL_146;
      }
    }

    *(v109 + 4 * v46) = v48[1];
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(0, 1)) = 0x40000000;
    (*(buf + 160))(&buf);
    for (j = 4; j != 8; ++j)
    {
      v50 = DspLib::ToneMeister::Parameters::toneMeisterParameter(j, 0);
      *(v109 + 4 * v50) = 1077936128;
      (*(buf + 160))(&buf);
      v51 = DspLib::ToneMeister::Parameters::toneMeisterParameter(j, 1);
      *(v109 + 4 * v51) = 1065353216;
      (*(buf + 160))(&buf);
      v52 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 0);
      *(v109 + 4 * v52) = j;
      (*(buf + 160))(&buf);
      v53 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 2);
      *(v109 + 4 * v53) = 1044381696;
      (*(buf + 160))(&buf);
      v54 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 3);
      *(v109 + 4 * v54) = 1056964608;
      (*(buf + 160))(&buf);
      v55 = DspLib::ToneMeister::Parameters::toneMeisterParameter(j, 3);
      v56 = j - 4;
      v57 = *&aF1baf2baf3baf4[4 * j - 16];
      v58 = v18;
      v59 = v17;
      while (*v59 != v57)
      {
        v59 += 2;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v55) = v59[1];
      (*(buf + 160))(&buf);
      v60 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 5);
      v61 = v18;
      v62 = v17;
      while (*v62 != v57)
      {
        v62 += 2;
        v61 -= 8;
        if (!v61)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v60) = v62[1];
      (*(buf + 160))(&buf);
      v63 = DspLib::ToneMeister::Parameters::toneMeisterParameter(j, 2);
      *(v109 + 4 * v63) = 0;
      (*(buf + 160))(&buf);
      v64 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 4);
      v65 = v18;
      v66 = v17;
      while (*v66 != *&aF1baf2baf3baf4[4 * v56 + 16])
      {
        v66 += 2;
        v65 -= 8;
        if (!v65)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v64) = v66[1];
      (*(buf + 160))(&buf);
      v67 = DspLib::ToneMeister::Parameters::toneMeisterParameter(j, 4);
      v68 = v18;
      v69 = v17;
      while (*v69 != *&aF1baf2baf3baf4[4 * v56 + 32])
      {
        v69 += 2;
        v68 -= 8;
        if (!v68)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v67) = v69[1];
      (*(buf + 160))(&buf);
      v70 = DspLib::ToneMeister::Parameters::automationParameterForSlot((j - 3), 1);
      *(v109 + 4 * v70) = 0x40000000;
      (*(buf + 160))(&buf);
    }

    DspLib::ToneMeister::Algorithm::initialize(&buf, 4, 48000.0);
    __dst = &buf;
    v103 = AUToneMeisterParameterExporter::parameterDictionary(&__dst);
    DspLib::ToneMeister::Algorithm::~Algorithm(&buf);
    applesauce::CF::DictionaryRef::from_ns(&buf, v103);
    v71 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x61646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v71)
    {
      v72 = getAUAudioMixLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_DEFAULT, "Failed to set ambience TM dictionary property", &buf, 2u);
      }
    }

    DspLib::ToneMeister::Algorithm::Algorithm(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 0)) = 1077936128;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 1)) = 1082130432;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 4)) = 1060437492;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 5)) = 0x40000000;
    (*(buf + 160))(&buf);
    v73 = DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 3);
    if (v16 == v17)
    {
LABEL_146:
      abort();
    }

    v74 = v17;
    while (*v74 != 1684566118)
    {
      v74 += 2;
      if (v74 == v16)
      {
        goto LABEL_146;
      }
    }

    *(v109 + 4 * v73) = v74[1];
    (*(buf + 160))(&buf);
    for (k = 4; k != 7; ++k)
    {
      v76 = DspLib::ToneMeister::Parameters::toneMeisterParameter(k, 0);
      *(v109 + 4 * v76) = 1077936128;
      (*(buf + 160))(&buf);
      v77 = DspLib::ToneMeister::Parameters::toneMeisterParameter(k, 1);
      *(v109 + 4 * v77) = 1065353216;
      (*(buf + 160))(&buf);
      v78 = DspLib::ToneMeister::Parameters::toneMeisterParameter(k, 3);
      v79 = k - 4;
      v80 = v17;
      while (*v80 != dword_1DE107284[k - 4])
      {
        v80 += 2;
        if (v80 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v78) = v80[1];
      (*(buf + 160))(&buf);
      v81 = DspLib::ToneMeister::Parameters::toneMeisterParameter(k, 2);
      v82 = v17;
      while (*v82 != dword_1DE107290[v79])
      {
        v82 += 2;
        if (v82 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v81) = v82[1];
      (*(buf + 160))(&buf);
      v83 = DspLib::ToneMeister::Parameters::toneMeisterParameter(k, 4);
      v84 = v17;
      while (*v84 != dword_1DE10729C[v79])
      {
        v84 += 2;
        if (v84 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v83) = v84[1];
      (*(buf + 160))(&buf);
    }

    DspLib::ToneMeister::Algorithm::initialize(&buf, 1, 48000.0);
    __dst = &buf;
    v102 = AUToneMeisterParameterExporter::parameterDictionary(&__dst);
    DspLib::ToneMeister::Algorithm::~Algorithm(&buf);
    applesauce::CF::DictionaryRef::from_ns(&buf, v102);
    v85 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x64646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v85)
    {
      v86 = getAUAudioMixLog();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v86, OS_LOG_TYPE_DEFAULT, "Failed to set dialogue TM dictionary property", &buf, 2u);
      }
    }

    DspLib::ToneMeister::Algorithm::Algorithm(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 0)) = 1077936128;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 1)) = 1082130432;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 4)) = 1060437492;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 5)) = 0x40000000;
    (*(buf + 160))(&buf);
    v87 = DspLib::ToneMeister::Parameters::toneMeisterParameter(3, 3);
    v88 = v17;
    while (*v88 != 1651011686)
    {
      v88 += 2;
      if (v88 == v16)
      {
        goto LABEL_146;
      }
    }

    *(v109 + 4 * v87) = v88[1];
    (*(buf + 160))(&buf);
    for (m = 4; m != 8; ++m)
    {
      v90 = DspLib::ToneMeister::Parameters::toneMeisterParameter(m, 0);
      *(v109 + 4 * v90) = 1077936128;
      (*(buf + 160))(&buf);
      v91 = DspLib::ToneMeister::Parameters::toneMeisterParameter(m, 1);
      *(v109 + 4 * v91) = 1065353216;
      (*(buf + 160))(&buf);
      v92 = DspLib::ToneMeister::Parameters::toneMeisterParameter(m, 3);
      v93 = m - 4;
      v94 = v17;
      while (*v94 != *&aF1baf2baf3baf4[4 * m + 32])
      {
        v94 += 2;
        if (v94 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v92) = v94[1];
      (*(buf + 160))(&buf);
      v95 = DspLib::ToneMeister::Parameters::toneMeisterParameter(m, 2);
      v96 = v17;
      while (*v96 != *&aF1baf2baf3baf4[4 * v93 + 64])
      {
        v96 += 2;
        if (v96 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v95) = v96[1];
      (*(buf + 160))(&buf);
      v97 = DspLib::ToneMeister::Parameters::toneMeisterParameter(m, 4);
      v98 = v17;
      while (*v98 != *&aF1baf2baf3baf4[4 * v93 + 80])
      {
        v98 += 2;
        if (v98 == v16)
        {
          goto LABEL_146;
        }
      }

      *(v109 + 4 * v97) = v98[1];
      (*(buf + 160))(&buf);
    }

    DspLib::ToneMeister::Algorithm::initialize(&buf, 4, 48000.0);
    __dst = &buf;
    v99 = AUToneMeisterParameterExporter::parameterDictionary(&__dst);
    DspLib::ToneMeister::Algorithm::~Algorithm(&buf);
    applesauce::CF::DictionaryRef::from_ns(&buf, v99);
    v100 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x62646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v100)
    {
      v101 = getAUAudioMixLog();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_DEFAULT, "Failed to set bypass TM dictionary property", &buf, 2u);
      }
    }

    v9 = 0;
    v17 = v104;
  }

  else
  {
    DspLib::ToneMeister::Algorithm::Algorithm(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 0)) = 1077936128;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 1)) = 1082130432;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 4)) = 1060437492;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 5)) = 0x40000000;
    (*(buf + 160))(&buf);
    *(v109 + 4 * DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 3)) = 1101004800;
    (*(buf + 160))(&buf);
    DspLib::ToneMeister::Algorithm::initialize(&buf, 4, 48000.0);
    __dst = &buf;
    v103 = AUToneMeisterParameterExporter::parameterDictionary(&__dst);
    DspLib::ToneMeister::Algorithm::~Algorithm(&buf);
    applesauce::CF::DictionaryRef::from_ns(&buf, v103);
    v38 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x62646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v38)
    {
      v39 = getAUAudioMixLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "Failed to set Music EQ Bypass dictionary", &buf, 2u);
      }
    }

    v40 = MetadataMapping::musicEQDictionary(v17, v18 >> 3, 4);
    applesauce::CF::DictionaryRef::from_ns(&buf, v40);
    v41 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x61646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v41)
    {
      v42 = getAUAudioMixLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEFAULT, "Failed to set Music EQ Ambience dictionary", &buf, 2u);
      }
    }

    v43 = MetadataMapping::musicEQDictionary(v17, v18 >> 3, 1);
    applesauce::CF::DictionaryRef::from_ns(&buf, v43);
    v9 = AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(this, 0x64646374u, buf);
    if (buf)
    {
      CFRelease(buf);
    }

    if (v9)
    {
      v44 = getAUAudioMixLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "Failed to set Music EQ Dialogue dictionary", &buf, 2u);
      }
    }
  }

  if (v17)
  {
    operator delete(v17);
  }

  return v9;
}

void sub_1DDF81714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::DictionaryRef::from_ns(applesauce::CF::DictionaryRef *this, NSDictionary *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFDictionaryGetTypeID();
    v3 = cf;
    if (!v5)
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

void sub_1DDF81974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

uint64_t AUAudioMix::SetGraphProperty<applesauce::CF::DictionaryRef>(uint64_t a1, AudioUnitPropertyID a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9 = v5;
  if (_os_feature_enabled_impl())
  {
    if (v5)
    {
      v10 = @"Value";
      v11[0] = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:{1, v9}];
    }

    v6 = a2;
    a2 = 1733321574;
  }

  else
  {
    v6 = 0;
  }

  v7 = AudioUnitSetProperty(*(a1 + 528), a2, 0, v6, &v9, 8u);

  return v7;
}

id MetadataMapping::musicEQDictionary(_DWORD *a1, uint64_t a2, int a3)
{
  DspLib::ToneMeister::Algorithm::Algorithm(v42);
  v6 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 0);
  v7 = v42[0];
  *(v43 + 4 * v6) = 1077936128;
  (*(v7 + 160))(v42);
  v8 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 1);
  v9 = v42[0];
  *(v43 + 4 * v8) = 1082130432;
  (*(v9 + 160))(v42);
  v10 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 4);
  v11 = v42[0];
  *(v43 + 4 * v10) = 1060437492;
  (*(v11 + 160))(v42);
  v12 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 5);
  v13 = v42[0];
  *(v43 + 4 * v12) = 0x40000000;
  (*(v13 + 160))(v42);
  v14 = DspLib::ToneMeister::Parameters::toneMeisterParameter(0, 3);
  v15 = v42[0];
  *(v43 + 4 * v14) = 1101004800;
  (*(v15 + 160))(v42);
  if (!a2)
  {
LABEL_19:
    abort();
  }

  v16 = 8 * a2;
  for (i = 1; i != 25; ++i)
  {
    v18 = &MetadataMapping::kMusicEQFourCCs[12 * i];
    v19 = v16;
    v20 = a1;
    while (*v20 != *(v18 - 3))
    {
      v20 += 2;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    v21 = v20[1];
    v22 = v16;
    v23 = a1;
    while (*v23 != *(v18 - 2))
    {
      v23 += 2;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    v24 = v23[1];
    v25 = *(v18 - 1);
    v26 = v16;
    v27 = a1;
    while (*v27 != v25)
    {
      v27 += 2;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    v28 = v27[1];
    v29 = DspLib::ToneMeister::Parameters::toneMeisterParameter(i, 0);
    v30 = v42[0];
    *(v43 + 4 * v29) = 1077936128;
    (*(v30 + 160))(v42);
    v31 = DspLib::ToneMeister::Parameters::toneMeisterParameter(i, 1);
    v32 = v42[0];
    *(v43 + 4 * v31) = 1065353216;
    (*(v32 + 160))(v42);
    v33 = DspLib::ToneMeister::Parameters::toneMeisterParameter(i, 3);
    v34 = v42[0];
    *(v43 + 4 * v33) = v21;
    (*(v34 + 160))(v42);
    v35 = DspLib::ToneMeister::Parameters::toneMeisterParameter(i, 2);
    v36 = v42[0];
    *(v43 + 4 * v35) = v24;
    (*(v36 + 160))(v42);
    v37 = DspLib::ToneMeister::Parameters::toneMeisterParameter(i, 4);
    v38 = v42[0];
    *(v43 + 4 * v37) = v28;
    (*(v38 + 160))(v42);
  }

  DspLib::ToneMeister::Algorithm::initialize(v42, a3, 48000.0);
  v41 = v42;
  v39 = AUToneMeisterParameterExporter::parameterDictionary(&v41);
  DspLib::ToneMeister::Algorithm::~Algorithm(v42);

  return v39;
}

void sub_1DDF81F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DspLib::ToneMeister::Algorithm::~Algorithm(va);
  _Unwind_Resume(a1);
}

uint64_t ___Z16getAUAudioMixLogv_block_invoke()
{
  getAUAudioMixLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUAudioMix");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AUAudioMix::GetProperty(AUAudioMix *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 21 && !a3)
  {
    v6 = 0;
    v7 = *(this + 672);
LABEL_4:
    *a5 = v7;
    return v6;
  }

  if (a2 != 5000 || a3)
  {
    if (a2 == 5001 && !a3)
    {
      v6 = 0;
      v7 = *(this + 640);
      goto LABEL_4;
    }

    v6 = 4294956417;
    if (a2 == 3100 && !a3)
    {
      v6 = 0;
      v7 = *(this + 161);
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *(this + 68);
    if (v8)
    {
      CFRetain(*(this + 68));
    }

    v6 = 0;
    *a5 = v8;
  }

  return v6;
}

uint64_t AUAudioMix::GetPropertyInfo(AUAudioMix *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 21 && !a3)
  {
    goto LABEL_3;
  }

  if (a2 == 5000 && !a3)
  {
    v6 = 8;
    goto LABEL_7;
  }

  v8 = a2 == 3100 || a2 == 5001;
  result = 4294956417;
  if (v8 && !a3)
  {
LABEL_3:
    v6 = 4;
LABEL_7:
    result = 0;
    *a6 = 1;
    *a5 = v6;
  }

  return result;
}

uint64_t AUAudioMix::Reset(AUAudioMix *this, AudioUnitScope inScope, AudioUnitElement inElement)
{
  *(this + 72) = 0;
  if (*(this + 640) != 1 || (result = AudioUnitReset(*(this + 67), inScope, inElement), !result))
  {
    v7 = *(this + 66);

    return AudioUnitReset(v7, inScope, inElement);
  }

  return result;
}

double AUAudioMix::Cleanup(AudioUnit *this)
{
  AudioUnitUninitialize(this[66]);
  AudioUnitUninitialize(this[67]);
  if (this[82])
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    this[82] = 0;
  }

  result = 0.0;
  this[83] = 0;
  *(this + 162) = 0;
  return result;
}

uint64_t AUAudioMix::Initialize(AudioUnit *this)
{
  v64 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 12451844;
  Element = ausdk::AUScope::GetElement((this + 10), 0);
  if (!Element)
  {
    goto LABEL_70;
  }

  (*(*Element + 88))(Element, &v56);
  v3 = ausdk::AUScope::GetElement((this + 10), 0);
  if (!v3)
  {
    goto LABEL_70;
  }

  v4 = v3;
  AUAudioMix::GraphOutputDescription(&inData, this);
  v5 = AudioUnitSetProperty(this[66], 8u, 1u, 0, (v4 + 80), 0x28u);
  if (v5)
  {
    v47 = v5;
    v48 = getAUAudioMixLog();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *buf = 0;
    v49 = "Init: Failed to set AUDSPGraph input stream format";
    goto LABEL_77;
  }

  v6 = AudioUnitSetProperty(this[66], 8u, 2u, 0, &inData, 0x28u);
  if (v6)
  {
    v47 = v6;
    v48 = getAUAudioMixLog();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *buf = 0;
    v49 = "Init: Failed to set AUDSPGraph output stream format";
    goto LABEL_77;
  }

  v7 = AudioUnitInitialize(this[66]);
  if (v7)
  {
    v8 = v7;
    v9 = getAUAudioMixLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "AUDSPGraph Initialize() failed with exit code %d", buf, 8u);
    }

    v10 = getAUAudioMixLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(inData.mSampleRate) = 0;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialized AUDSPGraph", &inData, 2u);
    }

    goto LABEL_68;
  }

  v11 = ausdk::AUScope::GetElement((this + 16), 0);
  if (!v11)
  {
    goto LABEL_70;
  }

  v12 = *(v11 + 108);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&inData - ((v13 + 27) & 0x3FFFFFFFF0));
  bzero(v14, 20 * v12 + 12);
  if ((this[80] & 1) == 0)
  {
    if (this[82])
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      this[82] = 0;
    }

    this[83] = 0;
    *(this + 162) = 0;
    *v14 = xmmword_1DE09E240;
    v14[8] = 202;
    v14[13] = 203;
    v14[18] = 201;
    v14[23] = 0x40000;
LABEL_32:
    v30 = ausdk::AUScope::GetElement((this + 16), 0);
    if (v30)
    {
      (*(*v30 + 88))(v30, v14);
      return AUAudioMix::ParseCinematicAudioMetadata(this);
    }

LABEL_70:
    ausdk::Throw(0xFFFFD583);
  }

  AUAudioMix::GraphOutputDescription(&inData, this);
  ausdk::AUBufferList::Allocate((this + 81), &inData, 4096);
  v14[1] = 0;
  v15 = v12 - 1;
  if (v12 - 1) <= 0xB && ((0xAEBu >> v15))
  {
    *v14 = dword_1DE109984[v15];
  }

  v14[2] = 0;
  AUAudioMix::GraphOutputDescription(&inData, this);
  v16 = ausdk::AUScope::GetElement((this + 16), 0);
  if (!v16)
  {
    goto LABEL_70;
  }

  v17 = v16;
  v18 = AudioUnitSetProperty(this[67], 8u, 1u, 0, &inData, 0x28u);
  if (v18)
  {
    v50 = v18;
    v51 = getAUAudioMixLog();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 0;
    v52 = "Failed to set AUSpatialMixer input stream format";
    goto LABEL_83;
  }

  v19 = AudioUnitSetProperty(this[67], 8u, 2u, 0, (v17 + 80), 0x28u);
  if (v19)
  {
    v50 = v19;
    v51 = getAUAudioMixLog();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 0;
    v52 = "Failed to set AUSpatialMixer output stream format";
LABEL_83:
    _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
LABEL_84:

    ausdk::Throw(v50);
  }

  v20 = AudioUnitSetProperty(this[67], 0x13u, 2u, 0, v14, 20 * v12 + 12);
  if (v20)
  {
    v47 = v20;
    v48 = getAUAudioMixLog();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
LABEL_78:

      ausdk::Throw(v47);
    }

    *buf = 0;
    v49 = "Failed to set AUSpatialMixer output channel layout";
LABEL_77:
    _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 2u);
    goto LABEL_78;
  }

  v21 = *(this + 161);
  if (v21 == 3)
  {
    v34 = AudioUnitSetProperty(this[67], 0xC1Cu, 0, 0, this + 644, 4u);
    if (v34)
    {
      v8 = v34;
      v27 = getAUAudioMixLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v28 = "Failed to set AUSpatialMixer output type";
        p_ioDataSize = buf;
        goto LABEL_40;
      }

LABEL_65:

      goto LABEL_66;
    }

    goto LABEL_61;
  }

  if (v21 != 2)
  {
    if (v21 == 1)
    {
      v22 = *MEMORY[0x1E695E480];
      v23 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Audio/Tunings/Generic/AU/aumx-3dem-appl-headphone-offline-rendering.aupreset", kCFURLPOSIXPathStyle, 0);
      if (!v23 || (v24 = v23, v25 = CFReadStreamCreateWithFile(v22, v23), CFRelease(v24), !v25) || (CFReadStreamOpen(v25), v26 = CFPropertyListCreateWithStream(v22, v25, 0, 0, 0, 0), CFReadStreamClose(v25), CFRelease(v25), !v26))
      {
        v37 = getAUAudioMixLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "Failed to open headphone preset", buf, 2u);
        }

        v8 = 4294967246;
        goto LABEL_66;
      }

      *buf = v26;
      v8 = AudioUnitSetProperty(this[67], 0, 0, 0, buf, 8u);
      CFRelease(v26);
      if (v8)
      {
        v27 = getAUAudioMixLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(ioDataSize) = 0;
          v28 = "Failed to set AUSpatialMixer headphone preset";
          p_ioDataSize = &ioDataSize;
LABEL_40:
          v35 = v27;
          v36 = 2;
LABEL_64:
          _os_log_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEFAULT, v28, p_ioDataSize, v36);
          goto LABEL_65;
        }

        goto LABEL_65;
      }
    }

    goto LABEL_61;
  }

  *buf = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(this[67], 0x18u, 0, 0, buf, &ioDataSize);
  if (Property)
  {
    v8 = Property;
    v32 = getAUAudioMixLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v54 = 0;
      v33 = "Failed to get AUSpatialMixer factory presets";
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  Count = CFArrayGetCount(*buf);
  v39 = Count;
  if (!Count)
  {
    goto LABEL_53;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*buf, v40);
      if (CFStringCompare(ValueAtIndex[1], @"Built-In Speaker Media Playback", 0))
      {
        break;
      }

      if (v39 == ++v40)
      {
        if (v41)
        {
LABEL_59:
          if (*buf)
          {
            CFRelease(*buf);
          }

LABEL_61:
          v45 = AudioUnitInitialize(this[67]);
          if (v45)
          {
            v8 = v45;
            v27 = getAUAudioMixLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v8;
              v28 = "AUSpatialMixer Initialize() failed with exit code %d";
              p_ioDataSize = buf;
              v35 = v27;
              v36 = 8;
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          goto LABEL_32;
        }

LABEL_53:
        v44 = AudioUnitSetProperty(this[67], 0xC1Cu, 0, 0, this + 644, 4u);
        if (v44)
        {
          v8 = v44;
          v32 = getAUAudioMixLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 0;
            v33 = "Failed to set AUSpatialMixer output type after not finding factory preset";
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        goto LABEL_59;
      }
    }

    v43 = AudioUnitSetProperty(this[67], 0x24u, 0, 0, ValueAtIndex, 0x10u);
    if (v43)
    {
      break;
    }

    ++v40;
    v41 = 1;
    if (v40 == v39)
    {
      goto LABEL_59;
    }
  }

  v8 = v43;
  v32 = getAUAudioMixLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *v54 = 0;
    v33 = "Failed to set AUSpatialMixer factory preset";
LABEL_56:
    _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEFAULT, v33, v54, 2u);
  }

LABEL_57:

  if (*buf)
  {
    CFRelease(*buf);
  }

LABEL_66:
  v10 = getAUAudioMixLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(inData.mSampleRate) = 0;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialize AUSpatialMixer", &inData, 2u);
  }

LABEL_68:

  return v8;
}

double AUAudioMix::GraphOutputDescription(AUAudioMix *this, uint64_t a2)
{
  Element = ausdk::AUScope::GetElement((a2 + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  *this = *(Element + 80);
  *(this + 8) = xmmword_1DE09BD50;
  *&result = 0x500000004;
  *(this + 24) = xmmword_1DE09CB20;
  return result;
}

void AUAudioMix::~AUAudioMix(AUAudioMix *this)
{
  *this = &unk_1F5930A50;
  if (*(this + 82))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 82) = 0;
  }

  *(this + 83) = 0;
  *(this + 162) = 0;
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    CFRelease(v3);
  }

  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 67, 0);
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 66, 0);
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5930A50;
  if (*(this + 82))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 82) = 0;
  }

  *(this + 83) = 0;
  *(this + 162) = 0;
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    CFRelease(v3);
  }

  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 67, 0);
  std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](this + 66, 0);

  ausdk::AUBase::~AUBase(this);
}

void ___Z19registerInternalAUsv_block_invoke()
{
  v0 = getAUAudioMixLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v0, OS_LOG_TYPE_DEFAULT, "Registering internal AUs", &buf, 2u);
  }

  *&inDesc.componentType = *"xfuagpsdlppa";
  inDesc.componentFlagsMask = 0;
  if (!AudioComponentFindNext(0, &inDesc))
  {
    v1 = getAUAudioMixLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.componentType) = 0;
      _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "Register AUDSPGraph", &buf, 2u);
    }

    v2 = ausdk::AUBaseProcessMultipleFactory<AUDSPGraph>::Register(&stru_1F593E800, 1);
    v3 = getAUAudioMixLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        LOWORD(buf.componentType) = 0;
        v5 = "AUDSPGraph registered successfully";
LABEL_11:
        _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, v5, &buf, 2u);
      }
    }

    else if (v4)
    {
      LOWORD(buf.componentType) = 0;
      v5 = "AUDSPGraph registration failed";
      goto LABEL_11;
    }
  }

  v35.componentFlagsMask = 0;
  *&v35.componentType = *"xfuatennlppa";
  if (AudioComponentFindNext(0, &v35))
  {
    goto LABEL_23;
  }

  v6 = getAUAudioMixLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "Register AUNeuralNet", &buf, 2u);
  }

  *&buf.componentType = xmmword_1DE09C130;
  buf.componentFlagsMask = 0;
  v7 = AudioComponentRegister(&buf, &stru_1F593E800, 0x10600u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUNeuralNet>::Factory);
  v8 = getAUAudioMixLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(buf.componentType) = 0;
      v10 = "AUNeuralNet registered successfully";
LABEL_21:
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v10, &buf, 2u);
    }
  }

  else if (v9)
  {
    LOWORD(buf.componentType) = 0;
    v10 = "AUNeuralNet registration failed";
    goto LABEL_21;
  }

LABEL_23:
  v34.componentFlagsMask = 0;
  *&v34.componentType = *"xfuatsmtlppa";
  if (AudioComponentFindNext(0, &v34))
  {
    goto LABEL_33;
  }

  v11 = getAUAudioMixLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "Register ToneMeister", &buf, 2u);
  }

  *&buf.componentType = xmmword_1DE09E250;
  buf.componentFlagsMask = 0;
  v12 = AudioComponentRegister(&buf, &stru_1F593E800, 0x1030000u, ausdk::APFactory<ausdk::AUBaseProcessLookup,AUToneMeister>::Factory);
  v13 = getAUAudioMixLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(buf.componentType) = 0;
      v15 = "ToneMeister registered successfully";
LABEL_31:
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, v15, &buf, 2u);
    }
  }

  else if (v14)
  {
    LOWORD(buf.componentType) = 0;
    v15 = "ToneMeister registration failed";
    goto LABEL_31;
  }

LABEL_33:
  v33.componentFlagsMask = 0;
  *&v33.componentType = *"xfuaktsmlppa";
  if (AudioComponentFindNext(0, &v33))
  {
    goto LABEL_43;
  }

  v16 = getAUAudioMixLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "Register MeisterStueck", &buf, 2u);
  }

  *&buf.componentType = xmmword_1DE09E260;
  buf.componentFlagsMask = 0;
  v17 = AudioComponentRegister(&buf, &stru_1F593E800, 0x1000000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMeisterStueck>::Factory);
  v18 = getAUAudioMixLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      LOWORD(buf.componentType) = 0;
      v20 = "MeisterStueck registered successfully";
LABEL_41:
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, v20, &buf, 2u);
    }
  }

  else if (v19)
  {
    LOWORD(buf.componentType) = 0;
    v20 = "MeisterStueck registration failed";
    goto LABEL_41;
  }

LABEL_43:
  v32.componentFlagsMask = 0;
  *&v32.componentType = *"xfuakrfclppa";
  if (AudioComponentFindNext(0, &v32))
  {
    goto LABEL_53;
  }

  v21 = getAUAudioMixLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, "Register ControlFreak", &buf, 2u);
  }

  *&buf.componentType = xmmword_1DE09E270;
  buf.componentFlagsMask = 0;
  v22 = AudioComponentRegister(&buf, &stru_1F593E800, 0x1020000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUControlFreak>::Factory);
  v23 = getAUAudioMixLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      LOWORD(buf.componentType) = 0;
      v25 = "ControlFreak registered successfully";
LABEL_51:
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEFAULT, v25, &buf, 2u);
    }
  }

  else if (v24)
  {
    LOWORD(buf.componentType) = 0;
    v25 = "ControlFreak registration failed";
    goto LABEL_51;
  }

LABEL_53:
  v31.componentFlagsMask = 0;
  *&v31.componentType = *"xfuatlovlppa";
  if (AudioComponentFindNext(0, &v31))
  {
    return;
  }

  v26 = getAUAudioMixLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.componentType) = 0;
    _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEFAULT, "Register VolumeTaper", &buf, 2u);
  }

  *&buf.componentType = xmmword_1DE09E280;
  buf.componentFlagsMask = 0;
  v27 = AudioComponentRegister(&buf, &stru_1F593E800, 0x101000Au, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUVolumeTaper>::Factory);
  v28 = getAUAudioMixLog();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      LOWORD(buf.componentType) = 0;
      v30 = "VolumeTaper registered successfully";
LABEL_61:
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEFAULT, v30, &buf, 2u);
    }
  }

  else if (v29)
  {
    LOWORD(buf.componentType) = 0;
    v30 = "VolumeTaper registration failed";
    goto LABEL_61;
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUVolumeTaper>::Factory()
{
  result = malloc_type_malloc(0x8D0uLL, 0x10F304096E14C1FuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUVolumeTaper>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUVolumeTaper>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUControlFreak>::Factory()
{
  result = malloc_type_malloc(0x8A0uLL, 0x10F30404E271021uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUControlFreak>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUControlFreak>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUControlFreak>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  result = AUDspLib::AUDspLib(a1, a2, &kParameterList, &kPresetList, @"AUControlFreak_ViewFactory", 1);
  *result = &unk_1F592E4B0;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMeisterStueck>::Factory()
{
  result = malloc_type_malloc(0x1240uLL, 0x10F30404926373AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMeisterStueck>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUMeisterStueck>::Destruct;
  return result;
}

uint64_t AUMatrixPatcher::SupportedNumChannels(AUMatrixPatcher *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMatrixPatcher::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUMatrixPatcher::NewFactoryPresetSet(AUMatrixPatcher *this, const AUPreset *a2)
{
  v3 = 0;
  presetNumber = a2->presetNumber;
  for (i = 1; ; i = 0)
  {
    v6 = &kMatrixPatcherPresets[4 * v3];
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

  if (presetNumber)
  {
    if (presetNumber == 1)
    {
      v9 = *(this + 168);
      v10 = *(this + 169);
      if (v10 * v9)
      {
        v11 = 0;
        do
        {
          (*(*this + 152))(this, v11, 0, 0, 0, 0.0);
          v11 = (v11 + 1);
          v9 = *(this + 168);
          v10 = *(this + 169);
        }

        while (v11 < v10 * v9);
      }

      if (v9 < v10)
      {
        v10 = v9;
      }

      if (v10)
      {
        v12 = 0;
        do
        {
          (*(*this + 152))(this, v12 + v12 * v9, 0, 0, 0, 1.0);
          ++v12;
          v9 = *(this + 168);
          v13 = *(this + 169);
          if (v9 < v13)
          {
            v13 = *(this + 168);
          }
        }

        while (v12 < v13);
      }
    }
  }

  else if (*(this + 169) * *(this + 168))
  {
    v14 = 0;
    do
    {
      (*(*this + 152))(this, v14, 0, 0, 0, 0.0);
      v14 = (v14 + 1);
    }

    while (v14 < *(this + 169) * *(this + 168));
  }

  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, v6);
  return 0;
}

uint64_t AUMatrixPatcher::GetPresets(AUMatrixPatcher *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, 2, 0);
    CFArrayAppendValue(Mutable, kMatrixPatcherPresets);
    CFArrayAppendValue(Mutable, &dword_1ECDA7720);
    *a2 = Mutable;
  }

  return 0;
}

double AUMatrixPatcher::GetParameterInfo(AUMatrixPatcher *this, unsigned int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *(this + 168);
  v8 = *(this + 78);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_19;
  }

  if (Count == *(Element + 108))
  {
    v12 = *(this + 80);
    if (v12)
    {
      v13 = CFArrayGetCount(v12);
    }

    else
    {
      v13 = 0;
    }

    v15 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v15)
    {
      v14 = v13 == *(v15 + 108);
      goto LABEL_12;
    }

LABEL_19:
    ausdk::Throw(0xFFFFD583);
  }

  v14 = 0;
LABEL_12:
  v16 = a3 / v7;
  v17 = a3 % v7;
  if (a3 % v7 < *(this + 168) && v16 < *(this + 169))
  {
    a4->flags = -1073741824;
    if (v14)
    {
      v29 = 0;
      v30 = 1;
      v27 = 0;
      v28 = 1;
      CACFArray::GetCACFString(this + 78, v17, &v29);
      CACFString = CACFArray::GetCACFString(this + 80, a3 / v7, &v27);
      *v26 = 64;
      MEMORY[0x1EEE9AC00](CACFString);
      CString = CACFString::GetCString(v29, &v24, v26, v19);
      *v25 = 64;
      MEMORY[0x1EEE9AC00](CString);
      CACFString::GetCString(v27, v23, v25, v21);
      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s -> %s", &v24, v23);
      CACFString::~CACFString(&v27);
      CACFString::~CACFString(&v29);
    }

    else
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"In %d -> Out %d", v17 + 1, v16 + 1);
    }

    a4->cfNameString = v22;
    a4->flags |= 0x8000010u;
    CFStringGetCString(v22, a4->name, 52, 0x8000100u);
    a4->unit = kAudioUnitParameterUnit_Boolean;
    result = 0.0078125;
    *&a4->minValue = 0x3F80000000000000;
    a4->defaultValue = 0.0;
  }

  return result;
}

void sub_1DDF83A28(_Unwind_Exception *a1)
{
  CACFString::~CACFString((v1 - 88));
  CACFString::~CACFString((v1 - 72));
  _Unwind_Resume(a1);
}

uint64_t AUMatrixPatcher::Render(AUMatrixPatcher *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    ausdk::AUInputElement::PullInput(v8, a2, a3, 0, a4);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_8;
  }

  if (!*(Element + 144))
  {
    goto LABEL_9;
  }

  v14[0] = *(Element + 152) + 48;
  v11 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v11)
  {
LABEL_8:
    ausdk::Throw(0xFFFFD583);
  }

  if (!*(v11 + 144))
  {
LABEL_9:
    ausdk::Throw(0xFFFFFFFFLL);
  }

  v13 = *(v11 + 152) + 48;
  return (*(*this + 184))(this, a2, a4, 1, v14, 1, &v13);
}

uint64_t AUMatrixPatcher::ProcessMultipleBufferLists(AUMatrixPatcher *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (*(this + 616) != 1)
  {
    return 4294956429;
  }

  v174 = v16;
  v175 = v15;
  v176 = v14;
  v177 = v13;
  v178 = v12;
  v179 = v11;
  v180 = v10;
  v181 = v9;
  v182 = v7;
  v183 = v8;
  v165 = *a5;
  v21 = *a7;
  v22 = *(this + 169);
  if (v22)
  {
    v23 = 0;
    v24 = *(this + 168);
    do
    {
      if (v24)
      {
        for (i = 0; i < v24; ++i)
        {
          v172 = 0;
          (*(*this + 144))(this, i + v23 * v24, 0, 0, &v172);
          if (*(this + 134) > i && *(this + 135) > v23)
          {
            *(*(*(this + 68) + 160 * i + 144) + 16 * v23) = v172;
          }

          v24 = *(this + 168);
        }

        v22 = *(this + 169);
      }

      ++v23;
    }

    while (v23 < v22);
  }

  v26 = *v21;
  v27 = *(this + 72);
  *(v27 + 4) = 0;
  *(v27 + 6) = v26;
  v28 = *(this + 135);
  if (v26)
  {
    v29 = 0;
    v30 = v21 + 4;
    do
    {
      if (v28 > v29)
      {
        v31 = *(this + 69) + 160 * v29;
        *(v31 + 12) = 0;
        *(v31 + 14) = v29;
        *v31 = *v30;
      }

      ++v29;
      v30 += 2;
    }

    while (v26 != v29);
  }

  if (v28)
  {
    v32 = *(this + 69);
    if (v28 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = v28 & 0xFFFFFFFE;
      v35 = (v32 + 304);
      v36 = v33;
      do
      {
        *(v35 - 160) = 0;
        *v35 = 0;
        v35 += 320;
        v36 -= 2;
      }

      while (v36);
      if (v33 == v28)
      {
        goto LABEL_26;
      }
    }

    v37 = v28 - v33;
    v38 = (v32 + 160 * v33 + 144);
    do
    {
      *v38 = 0;
      v38 += 160;
      --v37;
    }

    while (v37);
  }

LABEL_26:
  v39 = *a2;
  v40 = *v165;
  v41 = *(this + 71);
  *(v41 + 4) = 0;
  *(v41 + 6) = v40;
  v42 = *(v27 + 6);
  if (*(v27 + 6))
  {
    v43 = 0;
    v44 = 160 * *(v27 + 4);
    do
    {
      v45 = *(this + 69) + v44;
      if (!*(v45 + 144))
      {
        bzero(*v45, 4 * a3);
        v42 = *(v27 + 6);
      }

      ++v43;
      v44 += 160;
    }

    while (v43 < v42);
    v40 = *v165;
  }

  if (v40)
  {
    v46 = 0;
    v47 = a3 & 3;
    v163 = 16 * ((a3 >> 2) - 1) + 16;
    v162 = (((a3 >> 2) - 1) + 1) & 0x1FFFFFFFCLL;
    v161 = v162;
    v48 = 1.0;
    while (1)
    {
      v49 = *(this + 68);
      if (*(this + 134) > v46)
      {
        v50 = v49 + 160 * v46;
        *v50 = *&v165[4 * v46 + 4];
        *(v50 + 12) = 0;
        *(v50 + 14) = v46;
      }

      v51 = *(this + 135);
      if (!v51)
      {
        goto LABEL_129;
      }

      v52 = v49 + 160 * v46;
      v53 = (*(this + 146) * *(v52 + 8)) * *(*(this + 71) + 8 * *(v52 + 12));
      v54 = *(v52 + 144);
      if (v53 == 0.0)
      {
        break;
      }

      v56 = 0;
      v57 = *(this + 72);
      v58 = (*(this + 69) + 12);
      v59 = *(this + 135);
      do
      {
        if (*(v54 + 4) != 0.0 || (v60 = 0, *v54 != 0.0) && *(v58 - 1) != 0.0 && *(v57 + 8 * *v58) != 0.0)
        {
          ++v56;
          v60 = 1;
        }

        *(v54 + 12) = v60;
        v58 += 40;
        v54 += 16;
        --v59;
      }

      while (v59);
LABEL_64:
      if (v56)
      {
        v114 = 0;
        while (2)
        {
          v115 = *(v52 + 144) + 16 * v114;
          if (!*(v115 + 12))
          {
            goto LABEL_105;
          }

          v116 = *(this + 69);
          v117 = v116 + 160 * v114;
          v118 = *(v115 + 4);
          *v17.i32 = *(*(this + 72) + 8 * *(v117 + 12)) * ((v53 * *(v117 + 8)) * *v115);
          v119 = v118;
          if (*(v117 + 144))
          {
            if ((*(this + 608) & 1) == 0)
            {
              *(v115 + 4) = v17.i32[0];
              v119 = *v17.i32;
            }

            if (vabds_f32(v119, *v17.i32) < 0.0000001)
            {
              *(v115 + 4) = v17.i32[0];
              if ((v39 & 0x10) != 0)
              {
                goto LABEL_104;
              }

              if (*v17.i32 == v48)
              {
                MEMORY[0x1E12BE5D0](*(v116 + 160 * *(v115 + 10)), 1, *(*(this + 68) + 160 * *(v115 + 8)), 1, *(v116 + 160 * *(v115 + 10)), 1, a3);
                goto LABEL_104;
              }

              if (*v17.i32 != 0.0)
              {
                v147 = *(*(this + 68) + 160 * *(v115 + 8));
                v148 = *(v116 + 160 * *(v115 + 10));
                if (a3 >= 4)
                {
                  if (((a3 >> 2) - 1) >= 3 && (v148 < (v147->f32 + v163) ? (v151 = v147 >= (v148 + v163)) : (v151 = 1), v151))
                  {
                    v152 = (((a3 >> 2) - 1) + 1) & 0x1FFFFFFFCLL;
                    f32 = v147[v161].f32;
                    v153 = vdupq_lane_s32(*v17.i8, 0);
                    v154 = v148;
                    do
                    {
                      v155 = vmlaq_f32(v154[3], v153, v147[3]);
                      v156 = vmlaq_f32(v154[2], v153, v147[2]);
                      v157 = vmlaq_f32(v154[1], v153, v147[1]);
                      *v154 = vmlaq_f32(*v154, v153, *v147);
                      v154[1] = v157;
                      v154[2] = v156;
                      v154[3] = v155;
                      v154 += 4;
                      v147 += 4;
                      v152 -= 4;
                    }

                    while (v152);
                    v148 = (v148 + v161 * 16);
                    v158 = (a3 >> 2) - ((a3 >> 2) & 0xFFFFFFFC);
                    if (((a3 >> 2) - 1) + 1 == v162)
                    {
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v158 = a3 >> 2;
                    f32 = *(*(this + 68) + 160 * *(v115 + 8));
                  }

                  do
                  {
                    v159 = v148[1];
                    *v148 = *v148 + (*f32 * *v17.i32);
                    v148[1] = v159 + (f32[1] * *v17.i32);
                    v160 = v148[3];
                    v148[2] = v148[2] + (f32[2] * *v17.i32);
                    v148[3] = v160 + (f32[3] * *v17.i32);
                    v148 += 4;
                    f32 += 4;
                    --v158;
                  }

                  while (v158);
                }

                else
                {
                  f32 = *(*(this + 68) + 160 * *(v115 + 8));
                }

LABEL_125:
                if ((a3 & 3) != 0)
                {
                  *v148 = *v148 + (*f32 * *v17.i32);
                  if (v47 != 1)
                  {
                    v148[1] = v148[1] + (f32[1] * *v17.i32);
                    if (v47 != 2)
                    {
                      v148[2] = v148[2] + (f32[2] * *v17.i32);
                    }
                  }
                }
              }

LABEL_104:
              --v56;
              v51 = *(this + 135);
LABEL_105:
              if (++v114 >= v51 || !v56)
              {
                goto LABEL_129;
              }

              continue;
            }

            v122 = v119 - *v17.i32;
            if ((v39 & 0x10) == 0)
            {
              v123 = *(*(this + 68) + 160 * *(v115 + 8));
              v124 = *(v116 + 160 * *(v115 + 10));
              v125 = *(this + 147);
              if (a3 >= 4)
              {
                v126 = *(this + 148);
                v127 = v125 * v122;
                v128 = v127 * v125;
                v129 = (v127 * v125) * v125;
                v130 = a3 >> 2;
                do
                {
                  v131 = v124[1];
                  *v124 = *v124 + (*v123 * v119);
                  v119 = *v17.i32 + ((v119 - *v17.i32) * v126);
                  v124[1] = v131 + (v123[1] * (v127 + *v17.i32));
                  v127 = v127 * v126;
                  v132 = v124[3];
                  v124[2] = v124[2] + (v123[2] * (v128 + *v17.i32));
                  v128 = v128 * v126;
                  v124[3] = v132 + (v123[3] * (v129 + *v17.i32));
                  v129 = v129 * v126;
                  v124 += 4;
                  v123 += 4;
                  --v130;
                }

                while (v130);
              }

              if ((a3 & 3) != 0)
              {
                *v124 = *v124 + (*v123 * v119);
                v133 = (v119 - *v17.i32) * v125;
                v119 = v133 + *v17.i32;
                if (v47 != 1)
                {
                  v124[1] = v124[1] + (v123[1] * v119);
                  v134 = v133 * v125;
                  v119 = v134 + *v17.i32;
                  if (v47 != 2)
                  {
                    v124[2] = v124[2] + (v123[2] * v119);
                    goto LABEL_97;
                  }
                }
              }

              goto LABEL_98;
            }

LABEL_101:
            v144 = *v17.i32;
            v145 = v122;
            v171 = *v17.i32;
            __powidf2();
            v119 = v144 + v146 * v145;
            if (v118 == v119)
            {
              v119 = v171;
            }
          }

          else
          {
            if ((*(this + 608) & 1) == 0)
            {
              *(v115 + 4) = v17.i32[0];
              v119 = *v17.i32;
            }

            if (vabds_f32(v119, *v17.i32) < 0.0000001)
            {
              *(v115 + 4) = v17.i32[0];
              if ((v39 & 0x10) == 0)
              {
                if (*v17.i32 == v48)
                {
                  v120 = v116 + 160 * *(v115 + 10);
                  *(v120 + 144) = 1;
                  v121 = *(*(this + 68) + 160 * *(v115 + 8));
                  if (v121 != *v120)
                  {
                    memcpy(*v120, v121, 4 * a3);
                  }
                }

                else if (*v17.i32 != 0.0)
                {
                  v173[0] = v17.i32[0];
                  v150 = v116 + 160 * *(v115 + 10);
                  *(v150 + 144) = 1;
                  MEMORY[0x1E12BE940](*(*(this + 68) + 160 * *(v115 + 8)), 1, v173, *v150, 1, a3);
                }
              }

              goto LABEL_104;
            }

            v122 = v119 - *v17.i32;
            if ((v39 & 0x10) != 0)
            {
              goto LABEL_101;
            }

            v135 = v116 + 160 * *(v115 + 10);
            *(v135 + 144) = 1;
            v136 = *(*(this + 68) + 160 * *(v115 + 8));
            v137 = *v135;
            v125 = *(this + 147);
            if (a3 >= 4)
            {
              v138 = *(this + 148);
              v139 = v125 * v122;
              v140 = v139 * v125;
              v141 = (v139 * v125) * v125;
              v142 = a3 >> 2;
              do
              {
                *v137 = *v136 * v119;
                v119 = *v17.i32 + ((v119 - *v17.i32) * v138);
                v137[1] = v136[1] * (v139 + *v17.i32);
                v139 = v139 * v138;
                v137[2] = v136[2] * (v140 + *v17.i32);
                v140 = v140 * v138;
                v137[3] = v136[3] * (v141 + *v17.i32);
                v141 = v141 * v138;
                v137 += 4;
                v136 += 4;
                --v142;
              }

              while (v142);
            }

            if ((a3 & 3) != 0)
            {
              *v137 = *v136 * v119;
              v143 = (v119 - *v17.i32) * v125;
              v119 = v143 + *v17.i32;
              if (v47 != 1)
              {
                v137[1] = v136[1] * v119;
                v134 = v143 * v125;
                v119 = v134 + *v17.i32;
                if (v47 != 2)
                {
                  v137[2] = v136[2] * v119;
LABEL_97:
                  v119 = *v17.i32 + (v134 * v125);
                }
              }
            }

LABEL_98:
            if (v119 == v118)
            {
              v119 = *v17.i32;
            }
          }

          break;
        }

        *(v115 + 4) = v119;
        goto LABEL_104;
      }

LABEL_129:
      if (++v46 >= *v165)
      {
        goto LABEL_130;
      }
    }

    if (v51 >= 5)
    {
      if (v51 >= 0x21)
      {
        v164 = (*(this + 146) * *(v52 + 8)) * *(*(this + 71) + 8 * *(v52 + 12));
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 32;
        if ((v51 & 0x1F) != 0)
        {
          v63 = v51 & 0x1F;
        }

        v55 = v51 - v63;
        v64 = *(v52 + 144);
        v65 = v51 - v63;
        v66 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        do
        {
          v166 = v71;
          v167 = v69;
          v168 = v67;
          v169 = v62;
          v170 = v61;
          v72 = v64 + 1;
          v73 = vld4q_f32(v72);
          v74 = v64 + 17;
          v75 = vld4q_f32(v74);
          v76 = v64 + 33;
          v77 = vld4q_f32(v76);
          v78 = v64 + 49;
          v79 = vld4q_f32(v78);
          v80 = v64 + 65;
          v81 = vld4q_f32(v80);
          v80 += 16;
          v82 = vld4q_f32(v80);
          v83 = v64 + 97;
          v84 = vld4q_f32(v83);
          v85 = v64 + 113;
          v17.i16[0] = 257;
          v17.i8[2] = 1;
          v17.i8[3] = 1;
          v17.i8[4] = 1;
          v17.i8[5] = 1;
          v17.i8[6] = 1;
          v17.i8[7] = 1;
          v17.i8[8] = 1;
          v17.i8[9] = 1;
          v17.i8[10] = 1;
          v17.i8[11] = 1;
          v17.i8[12] = 1;
          v17.i8[13] = 1;
          v17.i8[14] = 1;
          v17.i8[15] = 1;
          v86 = v68;
          v87 = v70;
          v88 = vld4q_f32(v85);
          v89 = vmvnq_s8(vceqzq_f32(v79));
          v90 = vmvnq_s8(vceqzq_f32(v77));
          v91 = vmvnq_s8(vceqzq_f32(v75));
          v92 = vmvnq_s8(vceqzq_f32(v73));
          v93 = vuzp1q_s8(vuzp1q_s16(v92, v91), vuzp1q_s16(v90, v89));
          v94 = vmvnq_s8(vceqzq_f32(v88));
          v95 = vmvnq_s8(vceqzq_f32(v84));
          v96 = vmvnq_s8(vceqzq_f32(v81));
          v97 = vmvnq_s8(vceqzq_f32(v82));
          v98 = vuzp1q_s8(vuzp1q_s16(v96, v97), vuzp1q_s16(v95, v94));
          v67 = vsubq_s32(v168, v89);
          v66 = vsubq_s32(v66, v90);
          v62 = vsubq_s32(v169, v91);
          v61 = vsubq_s32(v170, v92);
          v68 = vsubq_s32(v86, v96);
          v71 = vsubq_s32(v166, v94);
          v70 = vsubq_s32(v87, v95);
          v99 = vandq_s8(v93, v17);
          *(v64 + 12) = v99.i8[0];
          *(v64 + 28) = v99.i8[1];
          *(v64 + 44) = v99.i8[2];
          *(v64 + 60) = v99.i8[3];
          *(v64 + 76) = v99.i8[4];
          *(v64 + 92) = v99.i8[5];
          *(v64 + 108) = v99.i8[6];
          *(v64 + 124) = v99.i8[7];
          *(v64 + 140) = v99.i8[8];
          *(v64 + 156) = v99.i8[9];
          *(v64 + 172) = v99.i8[10];
          *(v64 + 188) = v99.i8[11];
          *(v64 + 204) = v99.i8[12];
          *(v64 + 220) = v99.i8[13];
          *(v64 + 236) = v99.i8[14];
          *(v64 + 252) = v99.i8[15];
          v100 = vandq_s8(v98, v17);
          *(v64 + 268) = v100.i8[0];
          *(v64 + 284) = v100.i8[1];
          *(v64 + 300) = v100.i8[2];
          *(v64 + 316) = v100.i8[3];
          *(v64 + 332) = v100.i8[4];
          *(v64 + 348) = v100.i8[5];
          *(v64 + 364) = v100.i8[6];
          *(v64 + 380) = v100.i8[7];
          *(v64 + 396) = v100.i8[8];
          *(v64 + 412) = v100.i8[9];
          *(v64 + 428) = v100.i8[10];
          *(v64 + 444) = v100.i8[11];
          *(v64 + 460) = v100.i8[12];
          *(v64 + 476) = v100.i8[13];
          *(v64 + 492) = v100.i8[14];
          v69 = vsubq_s32(v167, v97);
          *(v64 + 508) = v100.i8[15];
          v64 += 128;
          v65 -= 32;
        }

        while (v65);
        v56 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v68, v61), vaddq_s32(v70, v66)), vaddq_s32(vaddq_s32(v69, v62), vaddq_s32(v71, v67))));
        v48 = 1.0;
        v53 = v164;
        if (v63 < 5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }

      v101 = v51 & 3;
      if ((v51 & 3) == 0)
      {
        v101 = 4;
      }

      v102 = v101 + v55;
      v103 = v54 + 16 * v55;
      v55 = v51 - v101;
      v104 = v56;
      v105 = v102 - v51;
      v106 = (v103 + 44);
      do
      {
        v107 = (v106 - 40);
        v108 = vld4q_f32(v107);
        v109 = vmvnq_s8(vceqzq_f32(v108));
        v110 = vand_s8(vmovn_s32(v109), 0x1000100010001);
        v104 = vsubq_s32(v104, v109);
        *(v106 - 32) = v110.i8[0];
        *(v106 - 16) = v110.i8[2];
        *v106 = v110.i8[4];
        v106[16] = v110.i8[6];
        v106 += 64;
        v105 += 4;
      }

      while (v105);
      v56 = vaddvq_s32(v104);
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

LABEL_60:
    v111 = v51 - v55;
    v112 = (v54 + 16 * v55 + 12);
    do
    {
      v113 = *(v112 - 2);
      if (v113 != 0.0)
      {
        ++v56;
      }

      *v112 = v113 != 0.0;
      v112 += 16;
      --v111;
    }

    while (v111);
    goto LABEL_64;
  }

LABEL_130:
  result = 0;
  *(this + 608) = 1;
  return result;
}

uint64_t AUMatrixPatcher::SetParameter(AUMatrixPatcher *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 / *(this + 168) >= *(this + 169))
  {
    return 4294956418;
  }

  else
  {
    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUMatrixPatcher::SetProperty(AUMatrixPatcher *this, int a2, int a3, unsigned int a4, const void **a5, int a6)
{
  if (a2 != 1667788397 || a3 != 0)
  {
    return 4294956417;
  }

  result = 4294956445;
  if (a5 && a6 == 8)
  {
    if (*(this + 17))
    {
      return 4294956447;
    }

    else
    {
      CACFDictionary::operator=(this + 656, *a5);
      CACFDictionary::GetCACFArray(this + 82, @"Inputs", this + 78);
      CACFDictionary::GetCACFArray(this + 82, @"Outputs", this + 80);
      return 0;
    }
  }

  return result;
}

uint64_t AUMatrixPatcher::GetProperty(CFTypeRef *this, int a2, int a3, int a4, void *a5)
{
  if (a2 != 1667788397 || (a4 | a3) != 0)
  {
    return 4294956417;
  }

  v8 = CFRetain(this[82]);
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AUMatrixPatcher::GetPropertyInfo(AUMatrixPatcher *this, int a2, int a3, int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 1667788397 || (a4 | a3) != 0)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 8;
  return result;
}

uint64_t AUMatrixPatcher::Reset(AUMatrixPatcher *this)
{
  if (*(this + 616) == 1)
  {
    v1 = *(this + 132);
    if (v1)
    {
      for (i = 0; i < v1; ++i)
      {
        v3 = *(this + 71) + 8 * i;
        if (*(v3 + 6))
        {
          v4 = *(v3 + 4);
          v5 = v4 + *(v3 + 6);
          v6 = 160 * v4 + 64;
          do
          {
            v7 = *(this + 68) + v6;
            *(v7 + 16) = 0;
            *(v7 + 8) = 0;
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            *(v7 + 56) = 0;
            *(v7 + 64) = 0;
            *(v7 + 72) = 0;
            *v7 = 0xFFFFFFFFLL;
            ++v4;
            v6 += 160;
          }

          while (v4 < v5);
          v1 = *(this + 132);
        }
      }
    }

    v8 = *(this + 133);
    if (v8)
    {
      for (j = 0; j < v8; ++j)
      {
        v10 = *(this + 72) + 8 * j;
        if (*(v10 + 6))
        {
          v11 = *(v10 + 4);
          v12 = v11 + *(v10 + 6);
          v13 = 160 * v11 + 64;
          do
          {
            v14 = *(this + 69) + v13;
            *(v14 + 16) = 0;
            *(v14 + 8) = 0;
            *(v14 + 32) = 0;
            *(v14 + 40) = 0;
            *(v14 + 48) = 0;
            *(v14 + 56) = 0;
            *(v14 + 64) = 0;
            *(v14 + 72) = 0;
            *v14 = 0xFFFFFFFFLL;
            ++v11;
            v13 += 160;
          }

          while (v11 < v12);
          v8 = *(this + 133);
        }
      }
    }

    *(this + 608) = 0;
  }

  return 0;
}

void AUMatrixPatcher::Initialize(AUMatrixPatcher *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (Element)
  {
    *(this + 168) = *(Element + 108);
    v3 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v3)
    {
      v4 = *(v3 + 108);
      *(this + 169) = v4;
      if (*(this + 616) == 1)
      {
        MatrixMixerCore::~MatrixMixerCore((this + 528));
        *(this + 616) = 0;
        v4 = *(this + 169);
      }

      v5 = *(this + 168);
      *(this + 66) = 0x100000001;
      *(this + 134) = v5;
      *(this + 135) = v4;
      *(this + 146) = 0;
      *(this + 75) = 0x40E5888000000000;
      *(this + 608) = 0;
      *(this + 153) = 1018444120;
      operator new[]();
    }
  }

  ausdk::Throw(0xFFFFD583);
}

void AUMatrixPatcher::~AUMatrixPatcher(AUMatrixPatcher *this)
{
  *this = &unk_1F5930CA0;
  CACFDictionary::~CACFDictionary((this + 656));
  CACFArray::~CACFArray((this + 640));
  CACFArray::~CACFArray((this + 624));
  if (*(this + 616) == 1)
  {
    MatrixMixerCore::~MatrixMixerCore((this + 528));
  }

  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5930CA0;
  CACFDictionary::~CACFDictionary((this + 656));
  CACFArray::~CACFArray((this + 640));
  CACFArray::~CACFArray((this + 624));
  if (*(this + 616) == 1)
  {
    MatrixMixerCore::~MatrixMixerCore((this + 528));
  }

  ausdk::AUBase::~AUBase(this);
}

float *CNoiseSuppressorV4::curve_fn(float *result, int a2, int a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = (a2 - 1);
    v7 = a3 / (result[2 * v6] - *result);
    v8 = *result * v7;
    do
    {
      v9 = &result[2 * v4++];
      v10 = &result[2 * v4];
      v11 = v9[1];
      v13 = *v10;
      v12 = v10[1];
      v14 = v7 * ((*v9 + *v10) * 0.5);
      v15 = (v11 + v12) * 0.5;
      if (v8 < v14)
      {
        v16 = v7 * *v9;
        v5 = v5;
        do
        {
          *(a4 + 4 * v5++) = v11 + ((((v8 - v16) / (v14 - v16)) * ((v8 - v16) / (v14 - v16))) * (v15 - v11));
          v8 = v8 + 1.0;
        }

        while (v8 < v14);
      }

      v17 = v7 * v13;
      if (v8 < v17 && v5 < a3)
      {
        v19 = v14 - v17;
        v20 = v12 - v15;
        v5 = v5;
        do
        {
          *(a4 + 4 * v5++) = v15 + ((1.0 - (((v8 - v17) / v19) * ((v8 - v17) / v19))) * v20);
          v8 = v8 + 1.0;
        }

        while (v8 < v17 && v5 < a3);
      }
    }

    while (v4 != v6);
  }

  return result;
}

float CNoiseSuppressorV4::preprocess_analysis_freq(uint64_t a1, uint64_t a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4);
  v6 = *(a1 + 152);
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v13 - ((v7 + 15) & 0x7FFFFFFF0));
  v9 = &v8[v5];
  __A.realp = v8;
  __A.imagp = v9;
  memcpy(v8, v10, 4 * v5);
  memcpy(v9, a3, 4 * v5);
  __Z.realp = v9 + 1;
  __Z.imagp = v8 + 2;
  vDSP_ztoc(&__Z, 1, (*(a1 + 136) + 8), 2, v5 - 2);
  v11 = *(a1 + 136);
  *v11 = *v8;
  v11[1] = *(v8 + 1);
  v11[2 * v5 - 2] = LODWORD(v8[2 * v5 - 1]);
  v11[2 * v5 - 1] = *v9;
  vDSP_zvmags(&__A, 1, v6, 1, v5);
  *v6 = *__A.realp * *__A.realp;
  return CFilterBank::filterbank_compute_bank32(*(a1 + 16), v6, &v6[v5]);
}

float CNoiseSuppressorV4::preprocess_analysis_sec_freq(uint64_t a1, uint64_t a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4);
  v6 = *(a1 + 160);
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v13 - ((v7 + 15) & 0x7FFFFFFF0));
  v9 = &v8[v5];
  __A.realp = v8;
  __A.imagp = v9;
  memcpy(v8, v10, 4 * v5);
  memcpy(v9, a3, 4 * v5);
  __Z.realp = v9 + 1;
  __Z.imagp = v8 + 2;
  vDSP_ztoc(&__Z, 1, (*(a1 + 144) + 8), 2, v5 - 2);
  v11 = *(a1 + 144);
  *v11 = *v8;
  v11[1] = *(v8 + 1);
  v11[2 * v5 - 2] = LODWORD(v8[2 * v5 - 1]);
  v11[2 * v5 - 1] = *v9;
  vDSP_zvmags(&__A, 1, v6, 1, v5);
  result = *__A.realp * *__A.realp;
  *v6 = result;
  return result;
}

float CNoiseSuppressorV4::speex_synthesis(int *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&__Z - v5);
  v7 = (&__Z + 4 * v4 - v5);
  __Z.realp = v7 + 1;
  __Z.imagp = (&__Z.imagp - v5);
  vDSP_ctoz((*(v8 + 136) + 8), 2, &__Z, 1, v4 - 2);
  v9 = *(a1 + 17);
  *v6 = *v9;
  v10 = 8 * v4 - 4;
  *(v6 + v10) = *&v9[v4 - 1];
  v11 = 2 * v4;
  *v7 = *(v9 + v10);
  __Z.realp = v6;
  __Z.imagp = v7;
  *buf = 939524096;
  MEMORY[0x1E12BE940](v6, 1, buf, v6, 1, (2 * v4));
  v13 = *(a1 + 72);
  if (v13)
  {
    MultiRadixRealFFT::RealInPlaceTransform(v13, &__Z, -1, v12);
    goto LABEL_3;
  }

  if (SuppressorClassLogScope(void)::once != -1)
  {
    dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
  }

  if (SuppressorClassLogScope(void)::scope)
  {
    v25 = *SuppressorClassLogScope(void)::scope;
    if (!*SuppressorClassLogScope(void)::scope)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "suppressor_classV4.cpp";
    v29 = 1024;
    v30 = 537;
    _os_log_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d MultiRadixRealFFT_RealInPlaceTransform() returned an error.", buf, 0x12u);
  }

LABEL_3:
  vDSP_ztoc(&__Z, 1, *(a1 + 15), 2, v4);
  MEMORY[0x1E12BE7F0](*(a1 + 15), 1, *(a1 + 23), 1, *(a1 + 15), 1, v11);
  v14 = *a1;
  v15 = (v11 - v14);
  v16 = (v14 - v15);
  MEMORY[0x1E12BE5D0](*(a1 + 69), 1, *(a1 + 15), 1, a2, 1, v15);
  if (v16 >= 1)
  {
    v18 = 4 * v11 - 4 * v14;
    v19 = (a2 + v18);
    v20 = (*(a1 + 15) + v18);
    do
    {
      v21 = *v20++;
      result = v21;
      *v19++ = v21;
      --v16;
    }

    while (v16);
  }

  if (v15 >= 1)
  {
    v22 = *(a1 + 69);
    v23 = (*(a1 + 15) + 4 * *a1);
    do
    {
      v24 = *v23++;
      result = v24;
      *v22++ = v24;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t CNoiseSuppressorV4::update_noise_prob(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4);
  MEMORY[0x1EEE9AC00](a1);
  v4 = (&v12 - ((v3 + 15) & 0x7FFFFFFF0));
  v6 = 1.0 - *(v5 + 392);
  v12 = v6 * 0.667;
  v13 = v6 * 0.333;
  *v4 = 0;
  MEMORY[0x1E12BE940](*(v5 + 152), 1, &v13, v4 + 1, 1, v2 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 152) + 4, 1, &v13, v4, 1, v4, 1, v2 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 152), 1, &v12, v4, 1, v4, 1, v2);
  MEMORY[0x1E12BE8F0](*(a1 + 272), 1, a1 + 392, v4, 1, *(a1 + 272), 1, v2);
  MEMORY[0x1E12BE7F0](*(a1 + 160), 1, *(a1 + 96), 1, *(a1 + 160), 1, v2);
  if (*(a1 + 428) == 2)
  {
    *v4 = 0;
    MEMORY[0x1E12BE940](*(a1 + 160), 1, &v13, v4 + 1, 1, v2 - 1);
    MEMORY[0x1E12BE8F0](*(a1 + 160) + 4, 1, &v13, v4, 1, v4, 1, v2 - 1);
    MEMORY[0x1E12BE8F0](*(a1 + 160), 1, &v12, v4, 1, v4, 1, v2);
    MEMORY[0x1E12BE8F0](*(a1 + 280), 1, a1 + 392, v4, 1, *(a1 + 280), 1, v2);
  }

  v7 = *(a1 + 560);
  if (v7 == 1)
  {
    vDSP_vclr(*(a1 + 288), 1, v2);
    vDSP_vclr(*(a1 + 296), 1, v2);
    v7 = *(a1 + 560);
  }

  v8 = *(a1 + 8);
  v9 = (v8 * 0.2) / v2;
  if (v9 <= v7 && ((v8 * 0.5) / v2) <= v7)
  {
    v9 = (v8 + v8) / v2;
  }

  if (*(a1 + 568) <= v9)
  {
    vDSP_vmin(*(a1 + 288), 1, *(a1 + 272), 1, *(a1 + 288), 1, v2);
    vDSP_vmin(*(a1 + 296), 1, *(a1 + 272), 1, *(a1 + 296), 1, v2);
  }

  else
  {
    *(a1 + 568) = 0;
    vDSP_vmin(*(a1 + 296), 1, *(a1 + 272), 1, *(a1 + 288), 1, v2);
    memcpy(*(a1 + 296), *(a1 + 272), 4 * v2);
  }

  MEMORY[0x1E12BE7F0](*(a1 + 288), 1, *(a1 + 80), 1, v4, 1, v2);
  result = MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 272), 1, *(a1 + 304), 1, v2);
  if (*(a1 + 428) == 2)
  {
    MEMORY[0x1E12BE7F0](*(a1 + 280), 1, *(a1 + 88), 1, v4, 1, v2);
    MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 272), 1, *(a1 + 312), 1, v2);
    MEMORY[0x1E12BE7F0](*(a1 + 272), 1, *(a1 + 88), 1, v4, 1, v2);
    return MEMORY[0x1E12BE9A0](v4, 1, *(a1 + 280), 1, *(a1 + 320), 1, v2);
  }

  return result;
}

void *CNoiseSuppressorV4::speex_preprocess_run_freq(uint64_t a1, uint64_t *a2, uint64_t *a3, const float *a4)
{
  v403 = a4;
  v434 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 4);
  v410 = *(a1 + 152);
  v425 = 1028443341;
  v424 = 1065772646;
  v422 = 897988541;
  v423 = 0x40000000;
  v421 = 1.0;
  v420 = 0.0;
  v419 = 0.0;
  v418 = 0.0;
  v8 = *a2;
  v9 = *(a1 + 656);
  *__C = 1191182336;
  v408 = v7;
  MEMORY[0x1E12BE940](v8, 1, __C, v9, 1);
  v10 = a2[1];
  v11 = *(a1 + 664);
  *__C = 1191182336;
  v12 = MEMORY[0x1E12BE940](v10, 1, __C, v11, 1, v408);
  if (a3 && *(a1 + 428) == 2)
  {
    v14 = *a3;
    v15 = *(a1 + 672);
    *__C = 1191182336;
    MEMORY[0x1E12BE940](v14, 1, __C, v15, 1, v408);
    v16 = a3[1];
    v17 = *(a1 + 680);
    *__C = 1191182336;
    v12 = MEMORY[0x1E12BE940](v16, 1, __C, v17, 1, v408);
  }

  v402 = &v388;
  v18 = v408;
  v19 = *(a1 + 560);
  v20 = *(a1 + 8) * 30.0;
  *&v13 = v408;
  v398 = v13;
  if (v19 + 1 < (v20 / v408))
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = (v20 / v408);
  }

  *(a1 + 560) = v21;
  ++*(a1 + 568);
  v22 = *(a1 + 12);
  v412 = v18;
  v407 = v22;
  v405 = (v22 + v18);
  MEMORY[0x1EEE9AC00](v12);
  v409 = (&v388 - ((v23 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v411 = (&v388 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v400 = (&v388 - ((v27 + 15) & 0x7FFFFFFF0));
  v399 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v397 = (&v388 - v29);
  CNoiseSuppressorV4::preprocess_analysis_freq(a1, *(a1 + 656), *(a1 + 664));
  if (*(a1 + 428) == 2)
  {
    CNoiseSuppressorV4::preprocess_analysis_sec_freq(a1, *(a1 + 672), *(a1 + 680));
  }

  CNoiseSuppressorV4::update_noise_prob(a1);
  (*(**(a1 + 696) + 24))(*(a1 + 696), *(a1 + 152), *(a1 + 200), v408);
  v30 = v412;
  if (!v403 || !*(a1 + 688))
  {
    goto LABEL_60;
  }

  v394 = (*(**(a1 + 696) + 32))(*(a1 + 696));
  v30 = v412;
  if (**(a1 + 688) != 1)
  {
    goto LABEL_52;
  }

  v31 = *(a1 + 152);
  if (v31)
  {
    v32 = *(a1 + 200);
    if (v32)
    {
      v396 = *(a1 + 688);
      if (v394[1] < v408)
      {
        if (SuppressorClassLogScope(void)::once != -1)
        {
          dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
        }

        if (SuppressorClassLogScope(void)::scope)
        {
          v33 = *SuppressorClassLogScope(void)::scope;
          if (!*SuppressorClassLogScope(void)::scope)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *__C = 136315394;
          *&__C[4] = "LPCore.cpp";
          *&__C[12] = 1024;
          *&__C[14] = 1310;
          v77 = "%25s:%-5d Update index size is too small.";
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      v34 = *(v396 + 212);
      if (!v34)
      {
        goto LABEL_60;
      }

      v35 = *(v396 + 216) + 1;
      *(v396 + 216) = v35;
      if (*(v396 + 16) * 0.5 < v35)
      {
        *(v396 + 5) = 1;
      }

      if (v34 > 4)
      {
        goto LABEL_52;
      }

      v390 = v31;
      v36 = 8 * v34;
      *(v396 + 1) = 0x1000001uLL >> v36;
      v37 = v396;
      *(v396 + 3) = 0x101000100uLL >> v36;
      *(v37 + 2) = 0x100010100uLL >> v36;
      if ((0x101000100uLL >> v36))
      {
        v38 = v32;
        NoiseSuppression::Noise::LPCore::PostProcessEstimate(v37, v390, v32, v394, v408);
        v37 = v396;
        v32 = v38;
      }

      v39 = (v37 + 148);
      v40 = *(v37 + 148);
      v41 = *(v37 + 440);
      *__C = 0;
      v389 = v32;
      vDSP_sve(v32, 1, __C, v408);
      v42 = 1.0 / ((v412 + v412) * v412);
      v43 = log10f((v42 * *__C) + 2.2204e-16);
      v44 = v396;
      *(v396 + 124) = v40 + (v43 * 10.0);
      MEMORY[0x1E12BE9A0](v389, 1, v390, 1, v41, 1, v408);
      vDSP_vmax(&NoiseSuppression::EPS, 0, v41, 1, v41, 1, v408);
      v45 = *v39;
      *__C = 0;
      vDSP_sve(v41, 1, __C, v408);
      v46 = log10f((v42 * *__C) + 2.2204e-16);
      v48 = v396 + 240;
      v47 = *(v396 + 240);
      *(v396 + 128) = v45 + (v46 * 10.0);
      v49 = *(v44 + 124) + -45.0;
      if (v49 < 0.0)
      {
        v49 = 0.0;
      }

      v50 = (v49 / -3.0) + 18.0;
      v51 = v49 * -0.125 + 5.0;
      *(v48 - 44) = v50;
      *(v48 - 40) = v51;
      *(v48 - 72) = v50;
      (*(*v47 + 24))(v47, v390, 0, v412);
      v52 = v408;
      if (v412)
      {
        v53 = 0;
        v54 = *(v396 + 272);
        v55 = *(*v48 + 184);
        v56 = *(*v48 + 304);
        do
        {
          if ((*(v56 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v53))
          {
            *(v54 + 4 * v53) = *(v55 + 4 * v53);
          }

          ++v53;
        }

        while (v52 != v53);
      }

      (*(**(v396 + 224) + 24))(*(v396 + 224), v403, *(v396 + 440), v52);
      NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum(*(v396 + 440), *(v396 + 464), v412, *(v396 + 248), *(v396 + 560), *(v396 + 584), v57);
      v58 = *(v396 + 464);
      v59 = *(v396 + 392);
      v60 = *(v396 + 440);
      *__C = *(v396 + 104);
      *&v426 = (1.0 - *__C) * 0.333;
      *&__Z.realp = (1.0 - *__C) * 0.667;
      *v60 = 0;
      v61 = (v412 - 1);
      MEMORY[0x1E12BE940](v58, 1, &v426, v60 + 1, 1, v61);
      MEMORY[0x1E12BE8F0](v58 + 4, 1, &v426, v60, 1, v60, 1, v61);
      MEMORY[0x1E12BE8F0](v58, 1, &__Z, v60, 1, v60, 1, v408);
      MEMORY[0x1E12BE8F0](v59, 1, __C, v60, 1, v59, 1, v408);
      v62 = *(v396 + 232);
      v63 = *(v396 + 440);
      *__C = 1;
      *&__C[8] = 1;
      *&__C[12] = 4 * v412;
      *&__C[16] = v403;
      LODWORD(v426) = 1;
      v427 = 1;
      v428 = 4 * v412;
      v391 = v63;
      v429 = v63;
      (*(**(v62 + 64) + 32))(*(v62 + 64));
      memcpy(*(v62 + 96), (*(v62 + 96) + 4 * *(v62 + 8)), 4 * *(v62 + 8));
      memcpy((*(v62 + 96) + 4 * *(v62 + 8)), v391, 4 * *(v62 + 8));
      bzero(*(v62 + 120), *(v62 + 128) - *(v62 + 120));
      v64 = (*(v62 + 120) + ((2 * *(v62 + 12)) & 0x1FFFFFFFCLL));
      __Z.realp = *(v62 + 120);
      __Z.imagp = v64;
      v65 = *(v62 + 96);
      v66 = (*(v62 + 104) - v65) >> 2;
      vDSP_ctoz(v65, 2, &__Z, 1, v66 >> 1);
      MultiRadixRealFFT::RealInPlaceTransform((v62 + 48), &__Z, 1, v67);
      v68 = *__Z.realp;
      v69 = *__Z.imagp;
      vDSP_zvcmul(&__Z, 1, &__Z, 1, &__Z, 1, *(v62 + 12) >> 1);
      *__Z.realp = v68 * v68;
      *__Z.imagp = v69 * v69;
      MultiRadixRealFFT::RealInPlaceTransform((v62 + 48), &__Z, -1, v69 * v69);
      vDSP_ztoc(&__Z, 1, *(v62 + 144), 2, v66 >> 1);
      v432 = 1.0 / *(v62 + 12);
      MEMORY[0x1E12BE940](*(v62 + 144), 1, &v432, *(v62 + 144), 1, v66);
      v70 = *(v62 + 144);
      __B = *v70;
      vDSP_vsdiv(v70, 1, &__B, v70, 1, *(v62 + 12));
      v71 = *(v62 + 4);
      v72 = vcvtms_u32_f32(v71 / 56.0);
      v73 = vcvtms_u32_f32(v71 / 500.0) - 1;
      if (v73 >= v72)
      {
        v74 = 0.0;
        v76 = 0.0;
      }

      else
      {
        v74 = 0.0;
        v75 = (*(v62 + 144) + 4 * v73);
        v76 = 0.0;
        do
        {
          if (*v75 >= *(v75 - 1) && *v75 >= v75[1] && v76 < *v75)
          {
            v74 = *&v73;
            v76 = *v75;
          }

          ++v73;
          ++v75;
        }

        while (v73 < v72);
      }

      *(v62 + 16) = v76;
      *(v62 + 20) = v74;
      *(v62 + 40) = 0;
      v194 = *(v62 + 24);
      if (!v194)
      {
        v221 = NAN;
        goto LABEL_189;
      }

      v195 = 0;
      v196 = vcvtad_u64_f64(*(v62 + 4) * 0.0001875);
      while (1)
      {
        v197 = *(v62 + 28);
        LODWORD(v198) = *(v62 + 32) - 1;
        v199 = v197 - 1;
        *&v404 = v74;
        if (v74 != 0.0)
        {
          v200 = *(v62 + 36);
          if ((LODWORD(v74) - v200) > LODWORD(v198))
          {
            LODWORD(v198) = LODWORD(v74) - v200;
          }

          v201 = v200 + LODWORD(v74);
          if (v199 >= v201)
          {
            v199 = v201;
          }
        }

        v395 = v195;
        v202 = &v391[4 * (v195 * v408 / v194)];
        v203 = (v412 / v194);
        v204 = *(v62 + 72);
        v205 = 4 * v203;
        *&v406 = v203;
        memmove(v204, &v204[v205], 4 * v197);
        memcpy((*(v62 + 72) + 4 * *(v62 + 28)), v202, v205);
        LODWORD(__Z.realp) = 0;
        v393 = v202;
        v392 = v203;
        vDSP_svesq(v202, 1, &__Z, v203);
        v206 = v406;
        v207 = *(v62 + 28);
        __B = 0.0;
        v208 = (*(v62 + 72) + 4 * (v207 + ~LODWORD(v198)));
        vDSP_dotpr(v208, 1, v208, 1, &__B, v406);
        if (SLODWORD(v198) <= v199)
        {
          v210 = 0;
          v211 = v199 + 1;
          v212 = ~LODWORD(v198);
          v209 = 0.0;
          v213 = 9000000000.0;
          v401 = v404;
          do
          {
            v214 = *(v62 + 28);
            v432 = 0.0;
            vDSP_dotpr((*(v62 + 72) + 4 * v207), 1, (*(v62 + 72) + 4 * (v212 + v214)), 1, &v432, v206);
            if (v210)
            {
              v215 = *(v62 + 72);
              __B = __B - (*(v215 + 4 * (v406 + v212 + v214)) * *(v215 + 4 * (v406 + v212 + v214)));
              v216 = __B + (*(v215 + 4 * (v212 + v214)) * *(v215 + 4 * (v212 + v214)));
              __B = v216;
            }

            else
            {
              v216 = __B;
            }

            if (v216 != 0.0)
            {
              v217 = v432 / v216;
              if ((*&__Z.realp - (v217 * v432)) < v213 && v217 >= 0.0)
              {
                v209 = v217;
                v401 = v212 + v214;
                v213 = *&__Z.realp - (v217 * v432);
                *&v404 = v198;
              }
            }

            ++LODWORD(v198);
            ++v210;
            --v212;
          }

          while (v211 != LODWORD(v198));
          v74 = *&v404;
          if (v404 <= 0)
          {
            goto LABEL_184;
          }

          if (v209 > 1.0)
          {
            v209 = 0.985;
          }

          v74 = *&v401;
        }

        else
        {
          v74 = *&v404;
          v209 = 0.0;
          if (v404 < 1)
          {
            goto LABEL_184;
          }
        }

        v432 = -v209;
        MEMORY[0x1E12BE8F0](*(v62 + 72) + 4 * SLODWORD(v74), 1, &v432, *(v62 + 72) + 4 * v207, 1, v393, 1, v392);
        v209 = v432;
        v74 = *&v404;
LABEL_184:
        v218 = v395;
        v219 = *(v62 + 40) - v209;
        v220 = *(v62 + 20);
        v194 = *(v62 + 24);
        *(v62 + 40) = v219;
        if (vabdd_f64(SLODWORD(v74), v220) > v196)
        {
          v74 = *&v220;
        }

        v195 = v218 + 1;
        if (v195 >= v194)
        {
          v221 = v219 / v194;
LABEL_189:
          *(v62 + 40) = v221;
          v222 = (*(**(v396 + 224) + 32))(*(v396 + 224));
          v224 = *v222;
          v223 = *(v222 + 8);
          {
            NoiseSuppression::Noise::LPCore::ComputeImpulseFeature(float const*,unsigned int)::LEN1 = llround(*(v396 + 8) * 0.003);
          }

          v225 = v223 - v224;
          {
            NoiseSuppression::Noise::LPCore::ComputeImpulseFeature(float const*,unsigned int)::LEN2 = llround(*(v396 + 8) * 0.003);
          }

          LODWORD(v426) = 0;
          *__C = 0;
          vDSP_maxmgvi(v224, 1, &v426, __C, (v225 >> 2));
          v226 = v225 >> 2;
          if ((v225 >> 2))
          {
            v227 = 0;
            v228 = 0.0;
            v229 = 0;
            v230 = 0.0;
            v231 = v412;
            do
            {
              v233 = v227 < *__C - NoiseSuppression::Noise::LPCore::ComputeImpulseFeature(float const*,unsigned int)::LEN1 || v227 > NoiseSuppression::Noise::LPCore::ComputeImpulseFeature(float const*,unsigned int)::LEN2 + *__C;
              v234 = v224[v227];
              if (!v233)
              {
                v230 = v230 + (v234 * v234);
                v228 = v228 + 1.0;
              }

              *v229.i32 = *v229.i32 + (v234 * v234);
              ++v227;
            }

            while ((v225 >> 2) != v227);
            _ZF = v228 == 0.0;
            v235 = (v230 / v228) + 2.2204e-16;
            if (_ZF)
            {
              v235 = 2.2204e-16;
            }
          }

          else
          {
            v229 = 0;
            v235 = 2.2204e-16;
            v231 = v412;
          }

          v236 = v231 == 0;
          v237 = v396;
          v239 = *(v396 + 232);
          v238 = v396 + 232;
          *(*(v238 + 376) + 16) = ((*v229.i32 / v226) + 2.2204e-16) / v235;
          v229.i32[0] = *(v239 + 16);
          v240 = (*v229.i32 * (1.0 - *(v238 - 96))) + (*(v238 - 96) * *(v238 - 88));
          *(v238 - 92) = v229.i32[0];
          *(v238 - 88) = v240;
          v241 = (*(v238 + 240) - *(v238 + 232)) >> 2;
          *__C = 0;
          std::vector<float>::assign((v237 + 464), v241, __C, v229);
          NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum(*(v396 + 440), *(v238 + 232), v412, *(v396 + 256), *(v396 + 560), *(v396 + 584), v242);
          NoiseSuppression::Noise::LPCore::TimeBuffer2PowerSpectrum((*(*v238 + 96) + 4 * v408), *(v396 + 488), v412, *(v396 + 264), *(v396 + 560), *(v396 + 584), v243);
          if (v236)
          {
            v253 = v396;
            v247 = *(v396 + 240);
          }

          else
          {
            v244 = 0;
            v245 = *(v396 + 296);
            v246 = *(v396 + 392);
            v247 = *(v396 + 240);
            v248 = *(v247 + 304);
            v249 = v408;
            do
            {
              if ((*(v248 + ((v244 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v244))
              {
                *(v245 + 4 * v244) = *(v246 + 4 * v244);
              }

              ++v244;
            }

            while (v249 != v244);
            v250 = 0;
            v251 = *(v396 + 320);
            v252 = *(v396 + 464);
            do
            {
              if ((*(v248 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v250))
              {
                *(v251 + 4 * v250) = *(v252 + 4 * v250);
              }

              ++v250;
            }

            while (v249 != v250);
            v253 = v396;
          }

          if (v253 + 512 != v247 + 208)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v253 + 512), *(v247 + 208), *(v247 + 216), (*(v247 + 216) - *(v247 + 208)) >> 2);
          }

          MEMORY[0x1E12BE940](*(v396 + 512), 1, v396 + 88, *(v396 + 512), 1, (*(v396 + 520) - *(v396 + 512)) >> 2);
          *__C = 0;
          {
            v378 = (2 * *(v396 + 12));
            LODWORD(v379) = vcvtas_u32_f32(1100.0 / (*(v396 + 8) / v378));
            v380 = (v378 >> 1) - 1;
            if (v380 >= v379)
            {
              v379 = v379;
            }

            else
            {
              v379 = v380;
            }

            NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind1 = v379;
          }

          {
            v381 = (2 * *(v396 + 12));
            LODWORD(v382) = vcvtas_u32_f32(1250.0 / (*(v396 + 8) / v381));
            v383 = (v381 >> 1) - 1;
            if (v383 >= v382)
            {
              v382 = v382;
            }

            else
            {
              v382 = v383;
            }

            NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind2 = v382;
          }

          vDSP_meanv((*(v396 + 512) + 4 * NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind1), 1, __C, NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind2 - NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind1 + 1);
          LODWORD(v426) = 0;
          vDSP_maxv(*(v396 + 512), 1, &v426, (*(v396 + 520) - *(v396 + 512)) >> 2);
          v254 = (v396 + 560);
          v255.i32[0] = *__C;
          v256 = vdupq_n_s64(NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind2);
          v257 = (*(v396 + 512) + 8);
          v258 = xmmword_1DE095150;
          v259 = xmmword_1DE095160;
          v260 = (NoiseSuppression::Noise::LPCore::ComputeRegularization(void)::ind2 & 0xFFFFFFFFFFFFFFFCLL) + 4;
          v261 = vdupq_n_s64(4uLL);
          v262 = v408;
          do
          {
            v263 = vmovn_s64(vcgeq_u64(v256, v259));
            if (vuzp1_s16(v263, v255).u8[0])
            {
              *(v257 - 2) = v255.i32[0];
            }

            if (vuzp1_s16(v263, v255).i8[2])
            {
              *(v257 - 1) = v255.i32[0];
            }

            if (vuzp1_s16(v255, vmovn_s64(vcgeq_u64(v256, *&v258))).i32[1])
            {
              *v257 = v255.i32[0];
              v257[1] = v255.i32[0];
            }

            v258 = vaddq_s64(v258, v261);
            v259 = vaddq_s64(v259, v261);
            v257 += 4;
            v260 -= 4;
          }

          while (v260);
          LODWORD(__Z.realp) = 0;
          v432 = 0.0;
          v264 = *(v396 + 240);
          if (v254 != (v264 + 184))
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v254, *(v264 + 184), *(v264 + 192), (*(v264 + 192) - *(v264 + 184)) >> 2);
            v262 = v408;
          }

          MEMORY[0x1E12BE9A0](*(v396 + 272), 1, *(v396 + 560), 1, *(v396 + 560), 1, v262);
          v265 = (v396 + 560);
          vDSP_vthr(*(v396 + 560), 1, &NoiseSuppression::EPS, *(v396 + 560), 1, v408);
          MEMORY[0x1E12BE5D0](*v265, 1, *(v396 + 512), 1, *v265, 1, v408);
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v396 + 584), *(v396 + 392), *(v396 + 400), (*(v396 + 400) - *(v396 + 392)) >> 2);
          MEMORY[0x1E12BE9A0](*(v396 + 296), 1, *(v396 + 392), 1, *(v396 + 584), 1, v408);
          v266 = (v396 + 584);
          vDSP_vthr(*(v396 + 584), 1, &NoiseSuppression::EPS, *(v396 + 584), 1, v408);
          v267 = (v396 + 512);
          MEMORY[0x1E12BE5D0](*v266, 1, *(v396 + 512), 1, *v266, 1, v408);
          vDSP_vdiv(*v266, 1, *v265, 1, *(v396 + 536), 1, v408);
          v269 = (v396 + 64);
          v268 = *(v396 + 64);
          v270 = (v396 + 68);
          v271 = *(v396 + 68) - v268 + 1;
          vDSP_meanv(&(*v265)[v268], 1, &__Z, v271);
          vDSP_meanv(&(*v266)[v268], 1, &v432, v271);
          v272 = log10f((*&__Z.realp / v432) + 2.2204e-16) * 20.0;
          if (v272 >= 0.0)
          {
            v273 = v272;
          }

          else
          {
            v273 = 0.0;
          }

          v274 = (v396 + 72);
          v275 = *v270;
          v276 = *(v396 + 72) - v275 + 1;
          vDSP_meanv(&(*v265)[v275], 1, &__Z, v276);
          vDSP_meanv(&(*v266)[v275], 1, &v432, v276);
          v277 = log10f((*&__Z.realp / v432) + 2.2204e-16) * 20.0;
          if (v277 >= 0.0)
          {
            v278 = v277;
          }

          else
          {
            v278 = 0.0;
          }

          MEMORY[0x1E12BE9A0]();
          *__C = 0;
          LODWORD(v426) = 0;
          vDSP_sve(&(*v265)[*v269], 1, __C, *v270 - *v269 + 1);
          vDSP_sve(&(*v265)[*v270], 1, &v426, *v274 - *v270 + 1);
          v404 = v426;
          v401 = *__C;
          MEMORY[0x1E12BE9A0](*(v396 + 272), 1, *(v396 + 488), 1, *v265, 1, v408);
          vDSP_vthr(*v265, 1, &NoiseSuppression::EPS, *v265, 1, v408);
          MEMORY[0x1E12BE5D0](*v265, 1, *v267, 1, *v265, 1, v408);
          MEMORY[0x1E12BE9A0](*(v396 + 320), 1, *(v396 + 464), 1, *v266, 1, v408);
          vDSP_vthr(*v266, 1, &NoiseSuppression::EPS, *v266, 1, v408);
          MEMORY[0x1E12BE5D0](*v266, 1, *v267, 1, *v266, 1, v408);
          vDSP_vdiv(*v266, 1, *v265, 1, *(v396 + 416), 1, v408);
          v279 = (2 * *(v396 + 12));
          *v280.i32 = *(v396 + 8) / v279;
          *&v281 = vmin_u32(vdup_n_s32((v279 >> 1) - 1), vcvt_u32_f32(vrnda_f32(vdiv_f32(0x42C80000443B8000, vdup_lane_s32(v280, 0)))));
          v406 = v281;
          v282 = v281 - DWORD1(v281) + 1;
          vDSP_meanv(&(*v265)[SDWORD1(v281)], 1, &__Z, v282);
          vDSP_meanv(&(*v266)[SDWORD1(v406)], 1, &v432, v282);
          v283 = log10f((*&__Z.realp / v432) + 2.2204e-16) * 20.0;
          if (v283 >= 0.0)
          {
            v285 = v283;
          }

          else
          {
            v285 = 0.0;
          }

          v286 = v396;
          v287 = v396 + 204;
          v288 = *(v396 + 204);
          if (*(v396 + 128) < v288 || *(v396 + 124) < v288)
          {
            {
              v286 = v396;
              if (v384)
              {
                v385 = (2 * *(v396 + 12));
                v386 = vcvtas_u32_f32(160.0 / (*(v396 + 8) / v385));
                if ((v385 >> 1) - 1 < v386)
                {
                  v386 = (v385 >> 1) - 1;
                }

                NoiseSuppression::Noise::LPCore::ApplyRules(unsigned int &,unsigned int &,unsigned int &)::v160HzBin = v386;
                v286 = v396;
              }
            }

            v289 = v286;
            v290 = *(v286 + 416);
            v291 = *(v286 + 424) - v290;
            v292 = v291 >> 2;
            LODWORD(v426) = 0;
            v293 = *(v286 + 232);
            if (*(v289 + 144) + 0.08 <= 0.3)
            {
              v294 = *(v289 + 144) + 0.08;
            }

            else
            {
              v294 = 0.3;
            }

            v295 = 0.0;
            if (v292)
            {
              v296 = 0;
              v297 = v292 - 1;
              v298 = (v291 >> 2);
              while (*(v290 + 4 * v296) <= 2.0)
              {
                if (v298 == ++v296)
                {
                  goto LABEL_253;
                }
              }

              v297 = v296;
LABEL_253:
              if (v297 < v292)
              {
                v299 = 0;
                v300 = (v290 + 4 * v297);
                v301 = v297;
                do
                {
                  v302 = *v300++;
                  if (v302 > 2.0)
                  {
                    v299 = v301;
                  }

                  ++v301;
                }

                while (v301 < v292);
                v295 = v299;
              }
            }

            else
            {
              v297 = -1;
            }

            v303 = *(v293 + 40);
            v304 = *(v396 + 20);
            v305 = *(v396 + 8);
            *__C = 0;
            vDSP_sve((v290 + 4 * NoiseSuppression::Noise::LPCore::ApplyRules(unsigned int &,unsigned int &,unsigned int &)::v160HzBin), 1, __C, (v292 - NoiseSuppression::Noise::LPCore::ApplyRules(unsigned int &,unsigned int &,unsigned int &)::v160HzBin));
            v306 = *__C;
            v307 = *(v396 + 416);
            *__C = 0;
            vDSP_maxvi((v307 + 4 * NoiseSuppression::Noise::LPCore::ApplyRules(unsigned int &,unsigned int &,unsigned int &)::v160HzBin), 1, &v426, __C, (v292 - NoiseSuppression::Noise::LPCore::ApplyRules(unsigned int &,unsigned int &,unsigned int &)::v160HzBin));
            v309 = v305 / (2 * v304);
            v310 = v309 * v297;
            v311 = v309 * v295;
            v312 = (*&v426 + 0.001) / (v306 + 0.001);
            v284 = v303;
            v313 = v303 < 0.8;
            if (v303 >= 0.8)
            {
              v314 = 1;
            }

            else
            {
              v314 = 2;
            }

            v308 = v294;
            if (*(v396 + 140) < v308)
            {
              v313 = v314;
            }

            if (*(v396 + 128) < *(v396 + 124))
            {
              ++v313;
            }

            if (v310 > 800.0)
            {
              ++v313;
            }

            if (v311 < 300.0)
            {
              ++v313;
            }

            v286 = v396;
            if (v313 | (v312 > 0.8))
            {
              v315 = (*(v396 + 424) - *(v396 + 416)) >> 2;
              *__C = 953267991;
              std::vector<float>::assign((v396 + 416), v315, __C, COERCE_INT16X4_T(v312));
              v285 = 0.0;
              v286 = v396;
            }
          }

          v316 = *(v286 + 112);
          if (v273 <= v316)
          {
            v273 = (v273 * (1.0 - *(v286 + 120))) + (v316 * *(v286 + 120));
          }

          v317 = v412;
          v318 = v408;
          *(v286 + 112) = v273;
          *(v286 + 116) = v278;
          v319 = 0.0;
          if (v273 >= 0.5)
          {
            v319 = v285;
          }

          v320 = *(v286 + 108);
          if (v319 <= v320)
          {
            v319 = (v319 * (1.0 - *(v286 + 120))) + (v320 * *(v286 + 120));
          }

          *(v286 + 108) = v319;
          if (*(v286 + 4) == 1)
          {
            **(v286 + 608) = v278;
            {
              *&v387 = exp(-1.0 / (*(v396 + 16) * 0.0738));
              NoiseSuppression::Noise::LPCore::ZeroCrossingRate(float const*,unsigned int)::alpha = v387;
            }

            *__C = 0;
            v426 = 0;
            vDSP_nzcros(v403, 1, v318, &v426, __C, v318);
            v321 = v412;
            v322 = v396;
            v323 = ((*__C / v412) * (1.0 - *&NoiseSuppression::Noise::LPCore::ZeroCrossingRate(float const*,unsigned int)::alpha)) + (*(v396 + 160) * *&NoiseSuppression::Noise::LPCore::ZeroCrossingRate(float const*,unsigned int)::alpha);
            *(v396 + 160) = v323;
            *(*(v322 + 608) + 4) = v323;
            *__C = 0;
            LODWORD(v426) = 0;
            vDSP_meanv(v403, 1, __C, v408);
            vDSP_measqv(v403, 1, &v426, v408);
            v324 = *&v404 / (*&v401 + 0.000001);
            v325 = 0.0;
            if (v317)
            {
              v318 = v408;
              v326 = v408;
              v286 = v396;
              v327 = v403;
              do
              {
                v328 = *v327++;
                v325 = v325 + (((v328 - *__C) * ((v328 - *__C) * (v328 - *__C))) * (v328 - *__C));
                --v326;
              }

              while (v326);
            }

            else
            {
              v318 = v408;
              v286 = v396;
            }

            v329 = *(v286 + 608);
            *(v329 + 8) = fabsf(((v325 / v321) / (((*&v426 - (*__C * *__C)) * (*&v426 - (*__C * *__C))) + 2.2204e-16)) + -3.0);
            *(v329 + 12) = v324;
            v319 = *(v286 + 108);
            v273 = *(v286 + 112);
          }

          __asm { FMOV            V2.2S, #1.0 }

          v331 = vadd_f32(*(v286 + 180), _D2);
          *(v286 + 180) = v331;
          v332 = *(v286 + 196);
          v333 = *(v286 + 168);
          if (v273 > v332 || v319 > v333)
          {
            v336 = v273 - v332;
            if ((v273 - v332) < 0.0)
            {
              v336 = 0.0;
            }

            v337 = *(v286 + 32);
            v338 = v336 / v337;
            v339 = v319 - v333;
            if (v339 < 0.0)
            {
              v339 = 0.0;
            }

            v334 = *(v286 + 116);
            v340 = v334 + (v338 + (v339 / v337));
            if (v340 > 1.0)
            {
              v340 = 1.0;
            }

            *(v286 + 180) = 0;
            if (v340 < *(v286 + 188))
            {
              v340 = *(v286 + 188);
            }

            *(v286 + 188) = v340;
            v335 = 0.0;
          }

          else
          {
            v334 = *(v286 + 116);
            v335 = v331.f32[0];
          }

          v341 = *(v286 + 608);
          v342 = v341[4];
          v343 = *(v286 + 52);
          v344 = *(v286 + 128);
          v345 = *(v286 + 100);
          if (v334 <= *(v286 + 200) || v342 <= v343 || v344 <= v345)
          {
            if (*(v286 + 4) == 1)
            {
              if (*v341 <= 1.0 || v341[1] <= 0.125 || v341[2] >= 1.5 || v344 <= v345 || (v284 = v342, v284 <= 0.7) || v341[3] <= 0.75)
              {
                v286 = v396;
                v334 = *(v396 + 192) * 0.5;
                goto LABEL_316;
              }

              v286 = v396;
              v346 = v334 + 0.1;
              if (v346 > 1.0)
              {
                v346 = 1.0;
              }

              v334 = (v346 * 0.5) + (*(v396 + 192) * 0.5);
              *(v396 + 192) = v334;
            }

            else
            {
              v334 = *(v286 + 192) * 0.5;
              *(v286 + 192) = v334;
            }
          }

          else
          {
            if (v334 > 1.0)
            {
              v334 = 1.0;
            }

            *(v286 + 184) = 0;
LABEL_316:
            *(v286 + 192) = v334;
          }

          LODWORD(v284) = *(v286 + 12);
          if (*&v284 / *(v286 + 8) * v335 <= *(v286 + 36))
          {
            v347 = *(v286 + 172);
            v348 = *(v286 + 188);
            _NF = v347 < v348;
          }

          else
          {
            v347 = *(v286 + 188);
            v348 = *(v286 + 172);
            _NF = v347 < v348;
            if (v347 <= v348)
            {
              *(v286 + 172) = (v347 * (1.0 - *(v286 + 132))) + (*(v286 + 132) * v348);
              *(v286 + 188) = 0;
              goto LABEL_324;
            }
          }

          if (_NF)
          {
            v347 = v348;
          }

          *(v286 + 172) = v347;
LABEL_324:
          if (v334 > 1.0)
          {
            v334 = 1.0;
          }

          *(v286 + 176) = v334;
          if (v341[4] < v343 && v319 < 1.0)
          {
            *(v286 + 172) = 0;
          }

          v350 = 0;
          v351 = *(v286 + 124);
          v352 = (v286 + 172);
          v353 = 1;
          do
          {
            v354 = v353;
            if (v351 >= *(v287 + 4 * v350))
            {
              *(v352 + v350) = 1065353216;
            }

            v353 = 0;
            v350 = 1;
          }

          while ((v354 & 1) != 0);
          v355 = *(v396 + 172);
          if (v355 >= *(v396 + 44))
          {
            v357 = v396 + 152;
            *__C = 1.0 - *(v396 + 152);
            MEMORY[0x1E12BE940](v389, 1, v396 + 152, *(v396 + 440), 1, v318);
            MEMORY[0x1E12BE940](*(v396 + 344), 1, __C, *(v396 + 464), 1, v408);
            MEMORY[0x1E12BE5D0](*(v396 + 464), 1, *(v357 + 288), 1);
          }

          else
          {
            *__C = 1.0 - v355;
            MEMORY[0x1E12BE940]();
            MEMORY[0x1E12BE940](v390, 1, __C, *(v396 + 464), 1, v408);
            MEMORY[0x1E12BE5D0](*(v396 + 464), 1, *(v396 + 440), 1);
          }

          v358 = v396;
          v356.i32[0] = *(v396 + 44);
          if (*(v396 + 172) < *v356.i32 && *(v396 + 176) >= *v356.i32)
          {
            memcpy(*(v396 + 344), v390, 4 * (*(v396 + 68) + 1));
            v358 = v396;
          }

          if (*(v358 + 2) == 1 && *(v358 + 5) == 1)
          {
            v359 = *(v358 + 172);
            v360 = *(v358 + 44);
            v30 = v412;
            if (v359 > v360)
            {
              goto LABEL_350;
            }

            v361 = *(v396 + 176);
            if (v361 > v360)
            {
              if (v361 >= v360)
              {
                v362 = *(v396 + 68);
                if ((v362 & 0x80000000) == 0)
                {
                  v363 = *(v396 + 344);
                  v364 = v362 + 1;
                  v365 = v389;
                  do
                  {
                    v366 = *v363++;
                    *v365++ = v366;
                    --v364;
                  }

                  while (v364);
                }
              }

LABEL_350:
              if (*(v396 + 212) == 1)
              {
                NoiseSuppression::Noise::LPCore::WarpNoise(v396, v389, v408, *v394);
              }

              goto LABEL_60;
            }

            *__C = 1.0 - v359;
            MEMORY[0x1E12BE940]();
            MEMORY[0x1E12BE940](v389, 1, v352, *(v396 + 464), 1, v408);
            v370 = *(v396 + 352) - *(v396 + 344);
            if (v370)
            {
              v371 = v370 >> 2;
              if (v371 <= 1)
              {
                v371 = 1;
              }

              v372 = *(v396 + 464);
              v373 = *(v396 + 440);
              v374 = v389;
              do
              {
                v375 = *v372++;
                v376 = v375;
                v377 = *v373++;
                *v374++ = v376 + v377;
                --v371;
              }

              while (v371);
            }
          }

          else
          {
            *(v358 + 112) = 0;
            *(v358 + 108) = 0;
            v352[1] = 0;
            v352[2] = 0;
            *v352 = 0;
            v367 = (*(v358 + 424) - *(v358 + 416)) >> 2;
            *__C = 0;
            std::vector<float>::assign((v358 + 416), v367, __C, v356);
            v368 = (*(v396 + 544) - *(v396 + 536)) >> 2;
            *__C = 0;
            std::vector<float>::assign((v396 + 536), v368, __C, v369);
          }

          v30 = v412;
          goto LABEL_350;
        }
      }
    }
  }

  if (SuppressorClassLogScope(void)::once != -1)
  {
    dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
  }

  if (SuppressorClassLogScope(void)::scope)
  {
    v33 = *SuppressorClassLogScope(void)::scope;
    if (!*SuppressorClassLogScope(void)::scope)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *__C = 136315394;
    *&__C[4] = "LPCore.cpp";
    *&__C[12] = 1024;
    *&__C[14] = 1305;
    v77 = "%25s:%-5d LPCore::UpdateLPC: Arguments cannot be null";
LABEL_51:
    _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, v77, __C, 0x12u);
  }

LABEL_52:
  if (SuppressorClassLogScope(void)::once != -1)
  {
    dispatch_once(&SuppressorClassLogScope(void)::once, &__block_literal_global_8663);
  }

  if (SuppressorClassLogScope(void)::scope)
  {
    v78 = *SuppressorClassLogScope(void)::scope;
    if (!*SuppressorClassLogScope(void)::scope)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v78 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    *__C = 136315394;
    *&__C[4] = "suppressor_classV4.cpp";
    *&__C[12] = 1024;
    *&__C[14] = 827;
    _os_log_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d Error processing lp noise estimate post-processor, possibly bypassed.", __C, 0x12u);
  }

LABEL_60:
  if (*(a1 + 428) != 2)
  {
    memcpy(*(a1 + 192), *(a1 + 200), 4 * v30);
    goto LABEL_117;
  }

  LODWORD(__Z.realp) = 0;
  if (v30 < 1)
  {
    v81 = 0;
    v82 = 0.0;
    v88 = v398;
  }

  else
  {
    v79 = *(a1 + 304);
    v80 = *(a1 + 312);
    v81 = 0;
    v82 = 0.0;
    __asm { FMOV            V2.2S, #1.0 }

    v86 = v408;
    v87 = *(a1 + 320);
    v88 = v398;
    do
    {
      v89 = *v79++;
      v90.i32[0] = v89;
      v90.i32[1] = *v80++;
      v81 = vbsl_s8(vcgtz_f32(v90), vadd_f32(v81, _D2), v81);
      v91 = *v87++;
      if (v91 > 0.0)
      {
        v82 = v82 + 1.0;
      }

      --v86;
    }

    while (v86);
  }

  v92 = v30 > 0;
  v93 = vdiv_f32(v81, vdup_lane_s32(v88, 0));
  *(a1 + 504) = v93;
  v94 = v82 / *v88.i32;
  *(a1 + 512) = v94;
  *(a1 + 516) = v93.f32[1] - v94;
  __B = 0.0;
  v432 = (*(a1 + 336) - *(a1 + 632)) / (*(a1 + 636) - *(a1 + 632));
  MEMORY[0x1E12BE940](*(a1 + 160), 1, &v424, v409, 1, v30);
  MEMORY[0x1E12BE940](*(a1 + 152), 1, &v425, v411, 1, v412);
  MEMORY[0x1E12BE9A0](v411, 1, v409, 1, v411, 1, v412);
  MEMORY[0x1E12BE940](*(a1 + 288), 1, &v423, v409, 1, v412);
  vDSP_vmax(v411, 1, v409, 1, v411, 1, v412);
  v95 = v412;
  v96 = v399;
  if (v92)
  {
    v97 = 0;
    v98 = *(a1 + 312);
    v99 = *(a1 + 208);
    do
    {
      v100 = v411;
      if (*(v98 + v97) <= 0.0)
      {
        v100 = *(a1 + 152);
      }

      *(v99 + v97) = v100[v97 / 4];
      v97 += 4;
    }

    while (v96 != v97);
  }

  if (*(a1 + 516) < -0.2)
  {
    if (v432 <= 0.0)
    {
      memcpy(*(a1 + 208), *(a1 + 152), 4 * v95);
    }

    else if (v432 < 1.0)
    {
      __B = 1.0 - v432;
      MEMORY[0x1E12BE940](*(a1 + 152), 1, &v432, v409, 1, v95);
      MEMORY[0x1E12BE940](*(a1 + 208), 1, &__B, v411, 1, v412);
      MEMORY[0x1E12BE5D0](v409, 1, v411, 1, *(a1 + 208), 1, v412);
      v95 = v412;
    }
  }

  v417 = 0.0;
  vDSP_meanv(*(a1 + 600), 1, &v417, v95);
  if (v417 > 0.99 && *(a1 + 628) < 0.4)
  {
    MEMORY[0x1E12BE8A0](*(a1 + 152), 1, &v422, v400, 1, v412);
    MEMORY[0x1E12BE8A0](*(a1 + 160), 1, &v422, v397, 1, v412);
    vDSP_vdbcon(v400, 1, &v421, v400, 1, v412, 0);
    vDSP_vdbcon(v397, 1, &v421, v397, 1, v412, 0);
    MEMORY[0x1E12BE9A0](v397, 1, v400, 1, v400, 1, v412);
    vDSP_meanv(v400, 1, &v420, v412);
    vDSP_meanv(v400, 1, &v419, *(a1 + 620));
    vDSP_meanv(&v400[*(a1 + 620)], 1, &v418, v412 - *(a1 + 620));
    v101 = *(a1 + 392);
    v102 = 1.0 - v101;
    v103 = (v101 * *(a1 + 608)) + v102 * v420;
    *(a1 + 608) = v103;
    v104 = (v101 * *(a1 + 612)) + v102 * v419;
    *(a1 + 612) = v104;
    v105 = (v101 * *(a1 + 616)) + v102 * v418;
    *(a1 + 616) = v105;
  }

  v106 = *(a1 + 524);
  if ((*(a1 + 616) - *(a1 + 612)) <= 10.0)
  {
    *(a1 + 484) = 0;
    v107 = v106 - *(a1 + 532);
    if (v107 < 0.0)
    {
      LODWORD(__Z.realp) = 0;
      v107 = 0.0;
    }
  }

  else
  {
    *(a1 + 484) = 1;
    v107 = v106 + *(a1 + 528);
    if (v107 > 1.0)
    {
      v107 = 1.0;
    }

    *&__Z.realp = v107;
  }

  *(a1 + 524) = v107;
  *__C = 0;
  LODWORD(v426) = 0;
  v108 = *(a1 + 160);
  v109 = *(a1 + 464);
  v110 = *(a1 + 468) - v109 + 1;
  vDSP_sve((*(a1 + 152) + 4 * v109), 1, __C, v110);
  vDSP_sve((v108 + 4 * *(a1 + 464)), 1, &v426, v110);
  v111 = *__C / (*&v426 + 0.00000011921) + 0.00000011921;
  v112 = (*(a1 + 488) * 0.95) + (log10f(v111) * 10.0) * 0.0500000119;
  *(a1 + 488) = v112;
  v113 = 1.0 / ((expf(v112 * -0.25) * 150.0) + 1.0);
  *(a1 + 476) = v113;
  v114 = *(a1 + 480);
  _ZF = v113 < 0.3 && v114 == 1;
  if (_ZF)
  {
    *(a1 + 480) = 0;
    v117 = v412;
    goto LABEL_99;
  }

  v116 = v113 > 0.4 && v114 == 0;
  v117 = v412;
  if (v116)
  {
    *(a1 + 480) = 1;
    goto LABEL_102;
  }

  if (v114 != 1)
  {
LABEL_99:
    *(a1 + 432) = 1;
    v118 = *(a1 + 520) - *(a1 + 448);
    if (v118 < 0.0)
    {
      v118 = 0.0;
    }

    goto LABEL_104;
  }

LABEL_102:
  *(a1 + 432) = 0;
  v118 = *(a1 + 520) + *(a1 + 448);
  if (v118 > 1.0)
  {
    v118 = 1.0;
  }

LABEL_104:
  *(a1 + 520) = v118;
  *(a1 + 436) = v118;
  if (v118 <= *(a1 + 524))
  {
    v118 = *(a1 + 524);
  }

  *&__Z.realp = v118;
  v119 = *(a1 + 648);
  v120 = fmaxf((v119 * (*(a1 + 336) - *(a1 + 644))) / (*(a1 + 640) - *(a1 + 644)), 0.0);
  if (v120 < v119)
  {
    v119 = v120;
  }

  *(a1 + 652) = v119;
  *__C = 1.0 - v118;
  MEMORY[0x1E12BE940](*(a1 + 200), 1, &__Z, v409, 1, v117);
  MEMORY[0x1E12BE940](*(a1 + 208), 1, __C, v411, 1, v412);
  MEMORY[0x1E12BE5D0](v409, 1, v411, 1, *(a1 + 192), 1, v412);
  v30 = v412;
  if (*(a1 + 480) != 1 && *(a1 + 484) != 1)
  {
    v121 = v412 > 0;
    LODWORD(v426) = 1115422720;
    v122 = 1.0e10;
    if (*(a1 + 508) >= 0.8)
    {
      v122 = 0.0;
    }

    v416 = v122;
    MEMORY[0x1E12BE940](*(a1 + 200), 1, &v426, v409, 1, v412);
    vDSP_vthr(v409, 1, &v416, v409, 1, v412);
    MEMORY[0x1E12BE9A0](*(a1 + 208), 1, v409, 1, v411, 1, v412);
    v30 = v412;
    v123 = v399;
    if (v121)
    {
      v124 = 0;
      do
      {
        if (v411[v124 / 4] <= 0.0)
        {
          *(*(a1 + 192) + v124) = *(*(a1 + 200) + v124);
        }

        v124 += 4;
      }

      while (v123 != v124);
    }
  }

LABEL_117:
  v125 = (a1 + 192);
  vDSP_vmax(*(a1 + 192), 1, *(a1 + 224), 1, *(a1 + 192), 1, v30);
  vDSP_vmin(*v125, 1, *(a1 + 216), 1, *v125, 1, v412);
  CFilterBank::filterbank_compute_bank32(*(a1 + 16), *v125, &(*v125)[v412]);
  if (*(a1 + 332) < 0.5)
  {
    v126 = *(a1 + 360);
    v127 = *(a1 + 336);
    *(a1 + 336) = (v126 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v126) * v127);
  }

  v128 = *(a1 + 360);
  v129 = *(a1 + 340);
  *(a1 + 340) = (v128 * CNoiseSuppressorV4::AweightSPL(a1)) + ((1.0 - v128) * v129);
  if (*(a1 + 560) == 1)
  {
    memcpy(*(a1 + 240), v410, 4 * v405);
  }

  LODWORD(__Z.realp) = -525502228;
  __B = 0.2;
  v432 = 0.0;
  v417 = 0.8;
  v416 = 1.0;
  v415 = 1077936128;
  (*(**(a1 + 704) + 24))(*(a1 + 704), v410, &v410[4 * v412], *(a1 + 240), *(a1 + 240) + 4 * v412, *(a1 + 192), *(a1 + 192) + 4 * v412);
  v130 = &v409[v412];
  MEMORY[0x1E12BE9A0](*(a1 + 256) + 4 * v412, 1, *(a1 + 368) + 4 * v412, 1, v130, 1, v407);
  v131 = &v411[v412];
  vDSP_vthres(v130, 1, &v432, v131, 1, v407);
  MEMORY[0x1E12BE9A0](v131, 1, v130, 1, v130, 1, v407);
  MEMORY[0x1E12BE8F0](v130, 1, a1 + 396, *(a1 + 256) + 4 * v412, 1, v130, 1, v407);
  MEMORY[0x1E12BE8F0](v131, 1, a1 + 400, v130, 1, *(a1 + 368) + 4 * v412, 1, 5);
  MEMORY[0x1E12BE8F0](v131 + 5, 1, a1 + 404, v130 + 5, 1, *(a1 + 368) + 4 * v412 + 20, 1, v407 - 5);
  if (v407 < 1)
  {
    v132 = 0.0;
    v133 = v412;
  }

  else
  {
    v132 = 0.0;
    v133 = v412;
    v134 = v412;
    do
    {
      v135 = *(*(a1 + 368) + 4 * v134);
      if (v135 > 3.0)
      {
        v132 = v132 + v135;
      }

      ++v134;
    }

    while (v134 < v405);
  }

  v136 = v407;
  v137 = v407 > 0;
  v138 = v132 / *(a1 + 12);
  *(a1 + 328) = v138;
  *(a1 + 332) = ((1.0 / ((0.5 / v138) + 1.0)) * 0.899) + 0.1;
  v139 = (*(a1 + 176) + 4 * v133);
  *__C = sqrtf(expf(*(a1 + 52) * 0.23026));
  vDSP_vfill(__C, v139, 1, v136);
  v140 = &xmmword_1DE09E000;
  if (v137)
  {
    v141 = *(a1 + 256);
    v142 = *(a1 + 264);
    v144 = *(a1 + 240);
    v143 = *(a1 + 248);
    v145 = *(a1 + 368);
    v146 = *(a1 + 168);
    v147 = v405;
    LODWORD(v407) = 1040496093;
    v148 = v412;
    do
    {
      v149 = *(v141 + 4 * v148) / (*(v141 + 4 * v148) + 1.0);
      v150 = v149 * (*(v142 + 4 * v148) + 1.0);
      v151 = vcvtms_s32_f32(v150 + v150);
      v152 = 1.0;
      if ((v151 & 0x80000000) == 0)
      {
        if (v151 < 0x14)
        {
          v153 = -(floorf(v150 + v150) - (v150 * 2.0));
          v152 = ((v153 * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v151 + 1)) + ((1.0 - v153) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v151))) / sqrtf(v150 + 0.0001);
        }

        else
        {
          v152 = (*&v407 / v150) + 1.0;
        }
      }

      v154 = v149 * v152;
      if (v154 > 1.0)
      {
        v154 = 1.0;
      }

      *(v143 + 4 * v148) = v154;
      *(v144 + 4 * v148) = ((v154 * (v154 * 0.8)) * *&v410[4 * v148]) + (*(v144 + 4 * v148) * 0.2);
      v155 = 1.0 - (*(a1 + 332) * (((1.0 / ((0.5 / *(v145 + 4 * v148)) + 1.0)) * 0.899) + 0.1));
      v156 = (*(v141 + 4 * v148) + 1.0) * (v155 / (1.0 - v155));
      v146[v148++] = 1.0 / ((v156 * expf(-v150)) + 1.0);
    }

    while (v148 < v147);
    v140 = &xmmword_1DE09E000;
  }

  else
  {
    v146 = *(a1 + 168);
  }

  v157 = v412;
  CFilterBank::filterbank_compute_psd16(*(a1 + 16), &v146[v412], v146);
  CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 248) + 4 * v157, *(a1 + 248));
  v158 = CFilterBank::filterbank_compute_psd16(*(a1 + 16), *(a1 + 176) + 4 * v157, *(a1 + 176));
  MEMORY[0x1E12BE8A0](*(a1 + 256), 1, &v416, v411, 1, v157, v158);
  vDSP_vdiv(v411, 1, *(a1 + 256), 1, v411, 1, v412);
  MEMORY[0x1E12BE8A0](*(a1 + 264), 1, &v416, v409, 1, v412);
  MEMORY[0x1E12BE7F0](v411, 1, v409, 1, v409, 1, v412);
  v159 = v412;
  v160 = v408;
  if (v412 >= 1)
  {
    v161 = *(v140 + 736);
    v162 = v409;
    do
    {
      v163 = *v162;
      v164 = vcvtms_s32_f32(v163 + v163);
      v165 = 1.0;
      if ((v164 & 0x80000000) == 0)
      {
        if (v164 < 0x14)
        {
          v166 = -(floorf(v163 + v163) - (v163 * 2.0));
          v165 = ((v166 * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v164 + 1)) + ((1.0 - v166) * *(&NoiseSuppression::Gain::Gain<float,(LogTypes)0>::ComputeHypergeometricGain(std::vector<float> &,AutoValue<std::vector<float>,(LogTypes)0> &)::table + v164))) / sqrtf(v163 + 0.0001);
        }

        else
        {
          v165 = (v161 / v163) + 1.0;
        }
      }

      *v162++ = v165;
      --v160;
    }

    while (v160);
  }

  v167 = v159 > 0;
  MEMORY[0x1E12BE7F0](v411, 1, v409, 1, v409, 1);
  vDSP_vclip(v409, 1, &__Z, &v416, v409, 1, v412);
  MEMORY[0x1E12BE940](*(a1 + 248), 1, &v415, v411, 1, v412);
  vDSP_vmin(v409, 1, v411, 1, *(a1 + 248), 1, v412);
  MEMORY[0x1E12BE990](*(a1 + 248), 1, v411, 1, v412);
  MEMORY[0x1E12BE7F0](v411, 1, v410, 1, v411, 1, v412);
  MEMORY[0x1E12BE940](v411, 1, &v417, v411, 1, v412);
  MEMORY[0x1E12BE8F0](*(a1 + 240), 1, &__B, v411, 1, *(a1 + 240), 1, v412);
  vDSP_vmax(*(a1 + 248), 1, *(a1 + 176), 1, *(a1 + 248), 1, v412);
  v168 = *(a1 + 168);
  v169 = v408;
  if (v167)
  {
    v170 = *(a1 + 248);
    v171 = *(a1 + 176);
    v172 = *(a1 + 168);
    v173 = v411;
    do
    {
      v174 = *v172++;
      v175 = v174;
      v176 = *v170++;
      v177 = sqrtf(v176);
      v178 = *v171++;
      *v173++ = ((1.0 - v175) * sqrtf(v178)) + (v175 * v177);
      --v169;
    }

    while (v169);
  }

  MEMORY[0x1E12BE990](v411, 1, v168, 1, v412);
  v414 = 1048576000;
  v413 = 1056964608;
  v179 = v409;
  *v409 = 0.0;
  v180 = (a1 + 168);
  v181 = v412 - 1;
  MEMORY[0x1E12BE940](*(a1 + 168), 1, &v414, v179 + 1, 1, v412 - 1);
  MEMORY[0x1E12BE8F0](*(a1 + 168) + 4, 1, &v414, v409, 1, v409, 1, v181);
  MEMORY[0x1E12BE8F0](*v180, 1, &v413, v409, 1, *v180, 1, v412);
  v182 = *(a1 + 168);
  if (!*(a1 + 24) && v405 >= 1)
  {
    memset_pattern16(*v180, &unk_1DE095DF0, 4 * (v405 - 1) + 4);
  }

  v183 = (a1 + 136);
  MEMORY[0x1E12BE7F0](v182 + 4, 1, *(a1 + 136) + 4, 2, *(a1 + 136) + 4, 2, v181);
  MEMORY[0x1E12BE7F0](*(a1 + 168), 1, *v183, 2, *v183, 2, v412);
  v184 = 2 * v412;
  v185 = v184 - 1;
  *(*v183 + 4 * v185) = *(*(a1 + 168) + 4 * v181) * *(*v183 + 4 * v185);
  v186 = MEMORY[0x1E12BE7F0]();
  MEMORY[0x1EEE9AC00](v186);
  v188 = (&v388 - v187);
  v189 = (&v388 + 4 * v412 - v187);
  *__C = v189 + 1;
  *&__C[8] = &v388 - v187 + 8;
  vDSP_ctoz((*(a1 + 136) + 8), 2, __C, 1, v412 - 2);
  v190 = *(a1 + 136);
  *v188 = *v190;
  *(v188 + v185) = v190[v184 / 2 - 1];
  *v189 = *(v190 + v185);
  *__C = v188;
  *&__C[8] = v189;
  LODWORD(v426) = 939524096;
  MEMORY[0x1E12BE940](v188, 1, &v426, v188, 1, v184);
  v191 = 4 * v412;
  memcpy(*(a1 + 584), *__C, 4 * v412);
  result = memcpy(*(a1 + 592), *&__C[8], v191);
  if (*(a1 + 28))
  {
    v193 = *(a1 + 332);
    *(a1 + 564) = v193 > *(a1 + 44) || *(a1 + 564) && v193 > *(a1 + 48);
  }

  return result;
}