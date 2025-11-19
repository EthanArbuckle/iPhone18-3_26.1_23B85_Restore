BOOL AUEcConvergenceOversight::ValidFormat(AUEcConvergenceOversight *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 1 && result)
  {
    return a4->mChannelsPerFrame - 1 < 6;
  }

  return result;
}

uint64_t AUEcConvergenceOversight::SupportedNumChannels(AUEcConvergenceOversight *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEcConvergenceOversight::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 6;
}

uint64_t AUEcConvergenceOversight::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUEcConvergenceOversight::GetParameterInfo(AUEcConvergenceOversight *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x2A)
  {
    v6 = off_1E866FD68[a3];
    v7 = dword_1DE111E78[a3];
    v8 = flt_1DE111F24[a3];
    v9 = flt_1DE111FD0[a3];
    v10 = flt_1DE11207C[a3];
    v11 = dword_1DE112128[a3];
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

uint64_t AUEcConvergenceOversight::GetParameterList(AUEcConvergenceOversight *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 7) = xmmword_1DE09CD40;
    *(a3 + 8) = xmmword_1DE09CD50;
    *(a3 + 9) = xmmword_1DE09CD60;
    *(a3 + 20) = 0x2900000028;
    a3[42] = 42;
  }

  result = 0;
  *a4 = 43;
  return result;
}

uint64_t AUEcConvergenceOversight::Render(AUEcConvergenceOversight *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_29;
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
    if (!v13)
    {
      goto LABEL_29;
    }

    if (!*(v13 + 144))
    {
      goto LABEL_34;
    }

    v14 = *(v13 + 152);
    v15 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v15 && *(v15 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v16)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
        if (result)
        {
          return result;
        }
      }

      else if (result)
      {
        return result;
      }

      v17 = ausdk::AUBase::Input(this, 1u);
    }

    else
    {
      v17 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    if (!*(v17 + 144))
    {
      goto LABEL_34;
    }

    v18 = *(v17 + 152);
    v19 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (v19 && *(v19 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
      if (v20)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 2, a4);
        if (!result)
        {
LABEL_24:
          v21 = ausdk::AUBase::Input(this, 2u);
LABEL_26:
          if (*(v21 + 144))
          {
            v23[0] = v14 + 48;
            v23[1] = v18 + 48;
            v23[2] = v18 + 48;
            if (*(v9 + 144))
            {
              v22 = *(v9 + 152) + 48;
              return (*(*this + 184))(this, a2, a4, 3, v23, 1, &v22);
            }
          }

LABEL_34:
          ausdk::Throw(0xFFFFFFFFLL);
        }
      }

      else if (!result)
      {
        goto LABEL_24;
      }

      return result;
    }

    v21 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v21)
    {
      goto LABEL_26;
    }

LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUEcConvergenceOversight::ProcessMultipleBufferLists(AUEcConvergenceOversight *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v195 = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  if (*(this + 134) != *(this + 133))
  {
    AUEcConvergenceOversight::InitializeInternals(this);
  }

  if (*(this + 540))
  {
    return 0;
  }

  memset(v191, 0, sizeof(v191));
  memset(v190, 0, sizeof(v190));
  mNumberBuffers = (*a5)->mNumberBuffers;
  if (mNumberBuffers >= a5[1]->mNumberBuffers)
  {
    mNumberBuffers = a5[1]->mNumberBuffers;
  }

  if (mNumberBuffers >= 6)
  {
    mNumberBuffers = 6;
  }

  if (mNumberBuffers < *(this + 137))
  {
    return 4294956428;
  }

  AUEcConvergenceOversight::SetRealTimeTunableThresholds(this);
  if (a6 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = a7[v13];
      if (v14->mNumberBuffers)
      {
        v15 = 0;
        p_mData = &v14->mBuffers[0].mData;
        do
        {
          bzero(*p_mData, *(p_mData - 1));
          ++v15;
          p_mData += 2;
        }

        while (v15 < v14->mNumberBuffers);
      }

      ++v13;
    }

    while (v13 != a6);
  }

  v17 = *(this + 137);
  if (v17 >= 1)
  {
    v18 = &a5[1]->mBuffers[0].mData;
    v19 = &(*a5)->mBuffers[0].mData;
    v20 = v190;
    v21 = v191;
    do
    {
      v22 = *v19;
      v19 += 2;
      *v21++ = v22;
      v23 = *v18;
      v18 += 2;
      *v20++ = v23;
      --v17;
    }

    while (v17);
  }

  mData = a5[2]->mBuffers[0].mData;
  v25 = *(this + 475);
  if (v25 >= *(this + 474))
  {
    v25 = 0;
    *(this + 475) = 0;
  }

  memcpy((*(this + 240) + 4 * *(this + 132) * v25), mData, 4 * *(this + 132));
  ++*(this + 475);
  v26 = *(this + 462);
  v27 = *(this + 465);
  __len = *(this + 461);
  if (!__len)
  {
    AUEcConvergenceOversight::ResetEnergyValsAndFlags(this);
  }

  v181 = v27;
  v182 = v26;
  v188.realp = 0;
  v188.imagp = 0;
  v28.realp = *(this + 91);
  v28.imagp = &v28.realp[*(this + 132)];
  v189 = v28;
  v29 = *(this + 77);
  if (v29)
  {
    VPTimeFreqConverter::Analyze(v29, mData, &v189);
    v28 = v189;
  }

  AUEcConvergenceOversight::Get_Band_Energies(this, this + 352, this + 322, v28, this + 187, this + 194, *(this + 186), *(this + 139));
  v30 = *(this + 132);
  v31 = (*(this + 91) + 4 * v30);
  v189.realp = *(this + 91);
  v189.imagp = v31;
  v32 = *(this + 92);
  __C = 0;
  v188.realp = v32;
  v188.imagp = &v32[v30];
  v33 = *(this + 137);
  if (v33 > 0)
  {
    v34 = 0;
    v35 = 0;
    v36 = 365;
    do
    {
      v37 = *(this + v34 + 624);
      if (v37)
      {
        VPTimeFreqConverter::Analyze(v37, *(v191 + v34), &v189);
      }

      v38 = *(this + v34 + 672);
      if (v38)
      {
        VPTimeFreqConverter::Analyze(v38, *(v190 + v34), &v188);
      }

      AUEcConvergenceOversight::Get_Band_Energies(this, (this + v35 + 1412), *(this + v34 + 1312), v189, this + 187, this + 194, *(this + 186), *(this + 139));
      Band_Energies = AUEcConvergenceOversight::Get_Band_Energies(this, (this + v35 + 1436), *(this + v34 + 1360), v188, this + 187, this + 194, *(this + 186), *(this + 139));
      MEMORY[0x1E12BE9A0](*(this + 92), 1, *(this + 91), 1, *(this + 91), 1, *(this + 180), Band_Energies);
      vDSP_svesq(&v189.realp[*(this + 187)], 1, &__C + 1, *(this + 202));
      vDSP_svesq(&v189.imagp[*(this + 187)], 1, &__C, *(this + 202));
      *(this + v36) = log10f(*(this + 466) + ((*(&__C + 1) + *&__C) * *(this + 186))) * 10.0;
      v40 = v36 - 364;
      ++v36;
      v33 = *(this + 137);
      v35 += 4;
      v34 += 8;
    }

    while (v40 < v33);
  }

  v41 = *(this + 352) < *(this + 227);
  vDSP_minv(this + 353, 1, &__C + 1, v33);
  *(&__C + 1) = *(&__C + 1) - *(this + 352);
  v42 = *(&__C + 1) < *(this + 229);
  vDSP_maxv(this + 353, 1, &__C + 1, *(this + 137));
  *(&__C + 1) = *(&__C + 1) - *(this + 352);
  v43 = this + 1484;
  *(this + __len + 1484) = *(&__C + 1) > *(this + 230) || v42 || v41;
  *(this + 1838) = 0;
  v44 = *(this + 148);
  if (v44 >= 1)
  {
    while (1)
    {
      v45 = *v43++;
      if (v45 == 1)
      {
        break;
      }

      if (!--v44)
      {
        goto LABEL_39;
      }
    }

    *(this + 1838) = 1;
  }

LABEL_39:
  vDSP_maxv(this + 365, 1, &__C + 1, *(this + 137));
  vDSP_sve(this + 365, 1, &__C, *(this + 137));
  v46 = *(this + 137);
  v47 = *&__C / v46;
  *&__C = v47;
  if (*(&__C + 1) > (v47 + 6.0))
  {
    v47 = v47 + 3.0;
    *&__C = v47;
  }

  *(this + __len + 389) = v47 - *(this + 352);
  v48 = *(this + 148);
  if (*(this + 461) % v48 != v48 - 1)
  {
    v58 = *(this + 151);
    goto LABEL_138;
  }

  v49 = *(this + 139);
  if (v49 < 1)
  {
    v56 = 1;
    v57 = 1;
  }

  else
  {
    v50 = 0;
    v51 = 1.0 / v48;
    do
    {
      *(this + v50 + 322) = log10f(*(this + 466) + (v51 * *(this + v50 + 322))) * 10.0;
      if (v46 >= 1)
      {
        v52 = (this + 1360);
        v53 = v46;
        do
        {
          v54 = *(v52 - 6);
          *(v54 + 4 * v50) = log10f(*(this + 466) + (v51 * *(v54 + 4 * v50))) * 10.0;
          v55 = *v52++;
          *(v55 + 4 * v50) = log10f(*(this + 466) + (v51 * *(v55 + 4 * v50))) * 10.0;
          --v53;
        }

        while (v53);
      }

      ++v50;
    }

    while (v50 != v49);
    if (*(this + 322) >= *(this + 203))
    {
      v60 = 0;
      v59 = v181;
      while (v49 - 1 != v60)
      {
        v61 = (this + 4 * v60++);
        if (v61[323] < v61[204])
        {
          v57 = 0;
          goto LABEL_58;
        }
      }

      v57 = 1;
      v60 = v49;
LABEL_58:
      v56 = v60 >= v49;
      goto LABEL_59;
    }

    v56 = 0;
    v57 = 0;
  }

  v59 = v181;
LABEL_59:
  v62 = (this + 940);
  *(this + v182 + 235) = v57;
  if (*(this + 139) < 1)
  {
    goto LABEL_90;
  }

  v63 = 0;
  v64 = 0;
  v65 = this + 1144;
  do
  {
    v66 = *(this + 137);
    if (v66 <= 0)
    {
      *(*&v65[8 * v63] + 4 * v182) = 1;
LABEL_69:
      v64 = 1;
      goto LABEL_70;
    }

    v67 = 1;
    v68 = (this + 1312);
    do
    {
      v69 = *v68++;
      if (*(v69 + 4 * v63) < *(this + v63 + 209))
      {
        v67 = 0;
      }

      --v66;
    }

    while (v66);
    *(*&v65[8 * v63] + 4 * v182) = v67;
    if (v67 == 1)
    {
      goto LABEL_69;
    }

LABEL_70:
    ++v63;
    v70 = *(this + 139);
  }

  while (v63 < v70);
  if (v70 < 1)
  {
    goto LABEL_90;
  }

  v71 = 0;
  v72 = 0;
  v73 = this + 1192;
  v74 = this + 1240;
  while (2)
  {
    v75 = *(this + 137);
    if (v75 <= 0)
    {
      *(*&v73[8 * v71] + 4 * v182) = 1;
      *(*&v74[8 * v71] + 4 * v59) = 1;
LABEL_83:
      v72 = 1;
      goto LABEL_84;
    }

    v76 = *(this + v71 + 215);
    v77 = *(this + v71 + 221);
    v78 = 1;
    v79 = (this + 1312);
    v80 = 1;
    do
    {
      v81 = *(v79[6] + 4 * v71);
      v82 = *v79++;
      v83 = v81 - *(v82 + 4 * v71);
      *(&__C + 1) = v83;
      if (v83 >= v76)
      {
        v80 = 0;
      }

      if (v83 >= v77)
      {
        v78 = 0;
      }

      --v75;
    }

    while (v75);
    *(*&v73[8 * v71] + 4 * v182) = v80;
    *(*&v74[8 * v71] + 4 * v59) = v78;
    if (v80 == 1)
    {
      goto LABEL_83;
    }

LABEL_84:
    if (++v71 < *(this + 139))
    {
      continue;
    }

    break;
  }

  v84 = !v56;
  if (v72 != 1)
  {
    v84 = 1;
  }

  if ((v84 & 1) == 0 && v64 == 1)
  {
    vDSP_minv(this + 389, 1, &__C + 1, *(this + 148));
    v85 = *(this + 464);
    *(this + v85 + 409) = HIDWORD(__C);
    goto LABEL_91;
  }

LABEL_90:
  LODWORD(v85) = *(this + 464);
LABEL_91:
  v86 = *(this + 152);
  *(this + 464) = (v85 + 1) % v86;
  vDSP_sve(this + 409, 1, &__C + 1, v86);
  *(this + 460) = *(&__C + 1) / *(this + 152);
  v87 = *(this + 149);
  v88 = 100.0 / v87;
  v89 = *(this + 150);
  *&__C = 100.0 / v89;
  *(&__C + 1) = v88;
  if (v87 < 1)
  {
    v93 = 0.0;
  }

  else
  {
    v90 = 0;
    v91 = v87;
    do
    {
      v92 = *v62++;
      v90 += v92;
      --v91;
    }

    while (v91);
    v93 = v90;
  }

  v94 = v88 * v93;
  v95 = *(this + 139);
  if (v95 < 1)
  {
    v111 = this + 1836;
    *(this + 1836) = 1;
    if (v94 >= *(this + 231))
    {
      v112 = this + 1837;
      *(this + 1837) = 1;
LABEL_119:
      v186 = 257;
      v185 = 16843009;
      goto LABEL_120;
    }

LABEL_118:
    *(this + 918) = 0;
    v112 = this + 1837;
    goto LABEL_119;
  }

  for (i = 0; i != v95; ++i)
  {
    v97 = 0.0;
    v98 = 0.0;
    v99 = 0.0;
    if (v87 >= 1)
    {
      v100 = 0;
      v101 = 0;
      v102 = *(this + i + 143);
      v103 = *(this + i + 149);
      v104 = v87;
      do
      {
        v105 = *v102++;
        v101 += v105;
        v106 = *v103++;
        v100 += v106;
        --v104;
      }

      while (v104);
      v98 = v101;
      v99 = v100;
    }

    if (v89 >= 1)
    {
      v107 = 0;
      v108 = *(this + i + 155);
      v109 = v89;
      do
      {
        v110 = *v108++;
        v107 += v110;
        --v109;
      }

      while (v109);
      v97 = v107;
    }

    v194[i] = v88 * v98;
    v193[i] = v88 * v99;
    v192[i] = (100.0 / v89) * v97;
  }

  v111 = this + 1836;
  *(this + 1836) = 1;
  if (v94 < *(this + 231))
  {
    goto LABEL_118;
  }

  v112 = this + 1837;
  *(this + 1837) = 1;
  v186 = 257;
  v185 = 16843009;
  v113 = *(this + 232);
  v114 = &v185;
  v115 = v192;
  v116 = v193;
  v117 = v194;
  while (*v117 >= v113)
  {
    v118 = *(this + 233);
    if (*v116 < v118)
    {
      *v111 = 0;
    }

    if (*v115 < v118)
    {
      *v114 = 0;
    }

    v114 = (v114 + 1);
    ++v115;
    ++v116;
    ++v117;
    if (!--v95)
    {
      goto LABEL_120;
    }
  }

  *v111 = 0;
  *v112 = 0;
LABEL_120:
  v119 = *(this + 141);
  v120 = *(this + 142);
  if (v119 <= v120)
  {
    v121 = v119 - 1;
    v122 = v120 - v119 + 1;
    v123 = &v185 + v121;
    do
    {
      v124 = *v123++;
      if ((v124 & 1) == 0)
      {
        *v112 = 0;
      }

      --v122;
    }

    while (v122);
  }

  v58 = *(this + 151);
  if (v58 >= 1)
  {
    v125 = this + 1504;
    *(this + *(this + 463) + 1504) = *(this + 1838);
    v58 = *(this + 151);
    if (*(this + 560) == 1 && v58 >= 1)
    {
      v127 = *(this + 151);
      while (1)
      {
        v128 = *v125++;
        if (v128 == 1)
        {
          break;
        }

        if (!--v127)
        {
          goto LABEL_136;
        }
      }

      *v111 = 0;
      *v112 = 0;
    }

LABEL_136:
    *(this + 463) = (*(this + 463) + 1) % v58;
    LODWORD(v89) = *(this + 150);
    LODWORD(v87) = *(this + 149);
  }

  *(this + 465) = (*(this + 465) + 1) % v89;
  *(this + 462) = (*(this + 462) + 1) % v87;
LABEL_138:
  if (v58 >= 1 && *(this + 560) == 1 && *(this + 1838))
  {
    *(this + 918) = 0;
  }

  if (*(this + 1868) == 1)
  {
    if (*(this + 475) == *(this + 474))
    {
      v194[0] = 0.0;
      *(this + 1869) = 0;
      MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 1872), *(this + 240), this + 119, 1.0);
      MEMORY[0x1E12BE990](*(this + 238) + 4 * *(this + 488), 1, *(this + 241), 1, *(this + 493));
      MEMORY[0x1E12BE990](*(this + 239) + 4 * *(this + 488), 1, *(this + 242), 1, *(this + 493));
      v129 = (this + 1928);
      MEMORY[0x1E12BE5D0](*(this + 241), 1, *(this + 242), 1, *(this + 241), 1, *(this + 493));
      vDSP_sve(*(this + 241), 1, &__C + 1, *(this + 493));
      *(&__C + 1) = ((*(&__C + 1) * 0.01) / *(this + 493)) + 1.0e-15;
      MEMORY[0x1E12BE8A0](*v129, 1, &__C + 4, *v129, 1);
      HIDWORD(__C) = *(this + 494);
      MEMORY[0x1E12BE940](*(this + 243), 1, &__C + 4, *(this + 243), 1, *(this + 493));
      *(&__C + 1) = 1.0 - *(this + 494);
      MEMORY[0x1E12BE940](*v129, 1, &__C + 4, *v129, 1, *(this + 493));
      MEMORY[0x1E12BE5D0](*(this + 241), 1, *(this + 243), 1, *(this + 243), 1, *(this + 493));
      vDSP_sve(*(this + 243), 1, &__C + 1, *(this + 491));
      vDSP_sve((*(this + 243) + 4 * *(this + 491)), 1, v194, *(this + 492));
      v130 = v194[0];
      v131 = v194[0] + *(&__C + 1);
      v132 = *(this + 491);
      v133 = log10f(*(&__C + 1) / v132);
      v134 = log10f(v130 / *(this + 492));
      v135 = *(this + 493);
      v136 = log10f(v131 / v135);
      v137 = *(this + 241);
      if (v135 >= 1)
      {
        v138 = *(this + 243);
        v139 = *(this + 241);
        do
        {
          v140 = *v138++;
          *v139++ = log10f(v140) * 10.0;
          --v135;
        }

        while (v135);
      }

      vDSP_sve(v137, 1, &__C + 1, v132);
      vDSP_sve((*(this + 241) + 4 * *(this + 491)), 1, v194, *(this + 492));
      v141 = (v133 * 10.0) - (*(&__C + 1) / *(this + 491));
      if (v141 < 0.0)
      {
        v141 = 0.0;
      }

      if (((v134 * 10.0) - (v194[0] / *(this + 492))) >= 0.0)
      {
        v142 = (v134 * 10.0) - (v194[0] / *(this + 492));
      }

      else
      {
        v142 = 0.0;
      }

      if (((v136 * 10.0) - ((v194[0] + *(&__C + 1)) / *(this + 493))) >= 0.0)
      {
        v143 = (v136 * 10.0) - ((v194[0] + *(&__C + 1)) / *(this + 493));
      }

      else
      {
        v143 = 0.0;
      }

      if (v141 <= v143)
      {
        v141 = v143;
      }

      if (v142 > v141)
      {
        v141 = v142;
      }

      *(this + 498) = v141;
      *(this + 499) = v143;
      if (v141 > *(this + 495) && v143 > *(this + 497) || v141 > *(this + 496))
      {
        *(this + 1869) = 1;
      }
    }

    if (*(this + 1869) == 1)
    {
      *(this + 918) = 0;
    }
  }

  *(this + 501) = 0;
  if (*(this + 2000) == 1)
  {
    v144 = *(this + 269);
    v145 = *(this + 270);
    v194[0] = 1.0 - *(this + 554);
    v146 = *(this + 504);
    v193[0] = 2.2204e-16;
    LODWORD(v147) = *(this + 137);
    if (v147 < 1)
    {
      v157 = 0.0;
    }

    else
    {
      v148 = 0;
      v149 = 0;
      __lena = 4 * v146;
      v150 = (this + 2024);
      v151 = this + 2220;
      do
      {
        v152 = *(this + 504);
        if (v152 >= 1)
        {
          memmove(*v150, *v150 + 4 * *(this + 132), __lena);
          memmove(v150[6], v150[6] + 4 * *(this + 132), __lena);
          v152 = *(this + 504);
        }

        v153 = *v150 + 4 * v152;
        v154 = *(v191 + v149);
        memcpy(v150[6], v154, *(this + 132));
        MEMORY[0x1E12BE9A0](*(v190 + v149), 1, v154, 1, v153, 1, *(this + 132));
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 2248), v150[6], (this + 2136), 1.0);
        MultiRadixRealFFT::RealOutOfPlaceForwardTransform((this + 2248), *v150, (this + 2120), 1.0);
        vDSP_zvmags((this + 2136), 1, *(this + 273), 1, *(this + 544));
        MEMORY[0x1E12BE940](*(this + 273), 1, v194, v144, 1, *(this + 544));
        MEMORY[0x1E12BE940](*(this + 274), 1, this + 2216, v145, 1, *(this + 544));
        MEMORY[0x1E12BE5D0](v144, 1, v145, 1, *(this + 274), 1, *(this + 544));
        vDSP_zvcmul((this + 2136), 1, (this + 2120), 1, (this + 2152), 1, *(this + 544));
        vDSP_zvabs((this + 2152), 1, *(this + 275), 1, *(this + 544));
        MEMORY[0x1E12BE940](*(this + 275), 1, v194, v144, 1, *(this + 544));
        MEMORY[0x1E12BE940](*(this + 276), 1, this + 2216, v145, 1, *(this + 544));
        MEMORY[0x1E12BE5D0](v144, 1, v145, 1, *(this + 276), 1, *(this + 544));
        MEMORY[0x1E12BE8A0](*(this + 274), 1, v193, v144, 1, *(this + 544));
        vDSP_vdiv(v144, 1, *(this + 276), 1, v145, 1, *(this + 544));
        vDSP_meanv(&v145[*(this + 542)], 1, &v151[v148], *(this + 543) - *(this + 542) + 1);
        v155 = &v151[4 * v149];
        v156 = fmaxf(fminf(*v155, 1.0), 0.0);
        *v155 = v156;
        v157 = *(this + 501) + v156;
        *(this + 501) = v157;
        ++v149;
        v147 = *(this + 137);
        ++v150;
        v148 += 4;
      }

      while (v149 < v147);
    }

    *(this + 501) = v157 / v147;
  }

  *(this + 461) = (*(this + 461) + 1) % *(this + 148);
  v158 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v160 & 1) == 0)
  {
    goto LABEL_191;
  }

  LOBYTE(v159) = *(this + 1836);
  ausdk::AUElement::SetParameter(v158, 0, v159);
  v161 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v163 & 1) == 0)
  {
    goto LABEL_191;
  }

  LOBYTE(v162) = *(this + 1837);
  ausdk::AUElement::SetParameter(v161, 1u, v162);
  v164 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v166 & 1) == 0)
  {
    goto LABEL_191;
  }

  LOBYTE(v165) = *(this + 1838);
  ausdk::AUElement::SetParameter(v164, 2u, v165);
  v167 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v168 & 1) == 0)
  {
    goto LABEL_191;
  }

  ausdk::AUElement::SetParameter(v167, 3u, *(this + 460));
  v169 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v170 & 1) == 0)
  {
    goto LABEL_191;
  }

  ausdk::AUElement::SetParameter(v169, 0x25u, *(this + 498));
  v171 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v172 & 1) == 0)
  {
    goto LABEL_191;
  }

  ausdk::AUElement::SetParameter(v171, 0x26u, *(this + 499));
  if (*(this + 1836) == 1 && (*(this + 612) & 1) == 0)
  {
    v173 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v175)
    {
      LOBYTE(v174) = *(this + 1836);
      ausdk::AUElement::SetParameter(v173, 0x27u, v174);
      *(this + 612) = 1;
      goto LABEL_184;
    }

    goto LABEL_191;
  }

LABEL_184:
  if (*(this + 1837) == 1 && (*(this + 613) & 1) == 0)
  {
    v176 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v178 & 1) == 0)
    {
      goto LABEL_191;
    }

    LOBYTE(v177) = *(this + 1837);
    ausdk::AUElement::SetParameter(v176, 0x28u, v177);
    *(this + 613) = 1;
  }

  v179 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v180 & 1) == 0)
  {
LABEL_191:
    abort();
  }

  ausdk::AUElement::SetParameter(v179, 0x2Au, *(this + 501));
  return 0;
}

void AUEcConvergenceOversight::InitializeInternals(AUEcConvergenceOversight *this)
{
  AUEcConvergenceOversight::ClearAllocations(this);
  v2 = *(this + 84);
  *(this + 132) = v2;
  *(this + 180) = 2 * v2;
  *(this + 134) = *(this + 133);
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 80);
  *(this + 136) = v4;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_63;
  }

  *(this + 560) = ausdk::AUElement::GetParameter(v5, 4u);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_63;
  }

  v9 = 6;
  Parameter = ausdk::AUElement::GetParameter(v7, 6u);
  *(this + 139) = Parameter;
  if (Parameter <= 6)
  {
    if (Parameter)
    {
LABEL_8:
      v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_63;
      }

      v13 = ausdk::AUElement::GetParameter(v11, 7u);
      *(this + 200) = v13;
      v14 = 0.0;
      if (v13 < 0.0 || (v14 = 20.0, v13 > ((*(this + 136) + -100.0) * 0.5)))
      {
        *(this + 200) = v14;
      }

      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v16 & 1) == 0)
      {
        goto LABEL_63;
      }

      v17 = ausdk::AUElement::GetParameter(v15, 8u);
      *(this + 201) = v17;
      v18 = *(this + 136);
      v19 = v18 * 0.5 + -50.0;
      if (v17 >= 0.0)
      {
        v20 = *(this + 200);
        if (v20 <= v19)
        {
          v19 = v17;
        }

        else
        {
          *(this + 201) = v19;
        }
      }

      else
      {
        *(this + 201) = v19;
        v20 = *(this + 200);
      }

      v21 = v19 + -100.0;
      if (v20 > (v19 + -100.0) || (v21 = v20, v20 < 0.0))
      {
        v20 = 0.0;
        if (v21 >= 0.0)
        {
          v20 = v21;
        }

        *(this + 200) = v20;
      }

      v22 = v18 / *(this + 180);
      v23 = vcvtps_s32_f32(v20 / v22);
      v24 = vcvtms_s32_f32(v19 / v22);
      v25 = *(this + 132);
      if (v25 <= v24)
      {
        v26 = v25 - 1;
      }

      else
      {
        v26 = v24;
      }

      v27 = *(this + 139);
      if (v26 - 2 * v27 < v23)
      {
        v23 = v26 - 2 * v27;
      }

      v28 = v23 & ~(v23 >> 31);
      *(this + 187) = v28;
      if (v27 >= 1)
      {
        v29 = (this + 752);
        v30 = 1;
        v31 = v28;
        do
        {
          v32 = v28 + llroundf(((v26 - v28) / v27) * v30);
          if (v32 <= v31)
          {
            ++v31;
          }

          else
          {
            v31 = v32;
          }

          if (v31 >= v25)
          {
            v31 = v25 - 1;
          }

          *v29++ = v31;
          ++v30;
        }

        while (v27 + 1 != v30);
        v33 = (this + 776);
        v34 = v27;
        v35 = v28;
        do
        {
          v36 = *(v33 - 6);
          v37 = v36 - v35;
          if (v37 <= 1)
          {
            v37 = 1;
          }

          *v33++ = v37;
          v35 = v36;
          --v34;
        }

        while (v34);
      }

      *(this + 202) = *(this + v27 + 187) - v28 + 1;
      v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v39 & 1) == 0)
      {
        goto LABEL_63;
      }

      v40 = ausdk::AUElement::GetParameter(v38, 0x1Au);
      *(this + 141) = v40;
      if (v40 < 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = *(this + 139);
        if (v41 >= v40)
        {
LABEL_46:
          v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v43 & 1) == 0)
          {
            goto LABEL_63;
          }

          v44 = ausdk::AUElement::GetParameter(v42, 0x1Bu);
          *(this + 142) = v44;
          if (v44 < 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = *(this + 139);
            if (v45 >= v44)
            {
LABEL_52:
              v46 = *(this + 141);
              if (v46 > v44)
              {
                *(this + 142) = v46;
              }

              v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v48)
              {
                v49 = ausdk::AUElement::GetParameter(v47, 5u);
                if (*(this + 138) < v49)
                {
                  v49 = *(this + 138);
                }

                *(this + 137) = v49;
                if (v49 <= 6)
                {
                  if (v49)
                  {
                    goto LABEL_62;
                  }

                  v50 = 1;
                }

                else
                {
                  v50 = 6;
                }

                *(this + 137) = v50;
LABEL_62:
                VPTimeFreqConverter_Create();
              }

LABEL_63:
              abort();
            }
          }

          *(this + 142) = v45;
          v44 = v45;
          goto LABEL_52;
        }
      }

      *(this + 141) = v41;
      goto LABEL_46;
    }

    v9 = 1;
  }

  *(this + 139) = v9;
  goto LABEL_8;
}

void AUEcConvergenceOversight::SetRealTimeTunableThresholds(AUEcConvergenceOversight *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0xBu);
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = ausdk::AUElement::GetParameter(v5, 0xCu);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = ausdk::AUElement::GetParameter(v8, 9u);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

  v13 = ausdk::AUElement::GetParameter(v11, 0xAu);
  v14 = (this + 812);
  v15 = 6;
  do
  {
    *v14 = Parameter;
    v14[6] = v7;
    v14[12] = v10;
    v14[18] = v13;
    ++v14;
    --v15;
  }

  while (v15);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 231) = ausdk::AUElement::GetParameter(v16, 0x12u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 232) = ausdk::AUElement::GetParameter(v18, 0x13u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 233) = ausdk::AUElement::GetParameter(v20, 0x14u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 227) = ausdk::AUElement::GetParameter(v22, 0x15u);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 228) = ausdk::AUElement::GetParameter(v24, 0x16u);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 229) = ausdk::AUElement::GetParameter(v26, 0x17u);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 230) = ausdk::AUElement::GetParameter(v28, 0x18u);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 234) = ausdk::AUElement::GetParameter(v30, 0x19u);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 1868) = ausdk::AUElement::GetParameter(v32, 0x1Cu) != 0.0;
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

  v36 = ausdk::AUElement::GetParameter(v34, 0x21u);
  if (v36 == 0.0)
  {
    v36 = 0.01;
  }

  if (v36 >= 1.0)
  {
    v36 = 1.0;
  }

  *(this + 494) = v36;
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v38 & 1) == 0 || (*(this + 496) = ausdk::AUElement::GetParameter(v37, 0x22u), v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v40 & 1) == 0) || (*(this + 495) = ausdk::AUElement::GetParameter(v39, 0x23u), v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v42 & 1) == 0) || (*(this + 497) = ausdk::AUElement::GetParameter(v41, 0x24u), v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v44 & 1) == 0))
  {
LABEL_26:
    abort();
  }

  *(this + 2000) = ausdk::AUElement::GetParameter(v43, 0x29u) != 0.0;
}

double AUEcConvergenceOversight::ResetEnergyValsAndFlags(AUEcConvergenceOversight *this)
{
  __A = 0.0;
  v2 = 6;
  vDSP_vfill(&__A, this + 322, 1, 6uLL);
  v3 = (this + 1360);
  do
  {
    vDSP_vfill(&__A, *(v3 - 6), 1, 6uLL);
    v4 = *v3++;
    vDSP_vfill(&__A, v4, 1, 6uLL);
    --v2;
  }

  while (v2);
  *(this + 352) = 0;
  vDSP_vfill(&__A, this + 353, 1, 6uLL);
  vDSP_vfill(&__A, this + 359, 1, 6uLL);
  vDSP_vfill(&__A, this + 365, 1, 6uLL);
  *(this + 375) = 0;
  result = 0.0;
  *(this + 1484) = 0u;
  *(this + 1556) = 0u;
  *(this + 1572) = 0u;
  *(this + 1588) = 0u;
  *(this + 1604) = 0u;
  *(this + 1620) = 0u;
  return result;
}

float AUEcConvergenceOversight::Get_Band_Energies(AUEcConvergenceOversight *this, float *a2, float *a3, DSPSplitComplex a4, int *a5, int *a6, float a7, int a8)
{
  if (a8 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    imagp = a4.imagp;
    realp = a4.realp;
    __C = 0;
    v16 = a8;
    v17 = 0.0;
    do
    {
      vDSP_svesq(&realp[*a5], 1, &__C + 1, *a6);
      v18 = *a5++;
      v19 = &imagp[v18];
      v20 = *a6++;
      vDSP_svesq(v19, 1, &__C, v20);
      v21 = (*&__C + *(&__C + 1)) * a7;
      *(&__C + 1) = v21;
      *a3 = *a3 + v21;
      ++a3;
      v17 = v17 + v21;
      --v16;
    }

    while (v16);
  }

  result = log10f(v17 + *(this + 466)) * 10.0;
  *a2 = result;
  return result;
}

void AUEcConvergenceOversight::ClearAllocations(AUEcConvergenceOversight *this)
{
  v2 = *(this + 77);
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x1E12BD160]();
    *(this + 77) = 0;
  }

  for (i = 0; i != 48; i += 8)
  {
    v4 = this + i;
    v5 = *(this + i + 624);
    if (v5)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v5);
      MEMORY[0x1E12BD160]();
      *(v4 + 78) = 0;
    }

    v6 = *(v4 + 84);
    if (v6)
    {
      VPTimeFreqConverter::~VPTimeFreqConverter(v6);
      MEMORY[0x1E12BD160]();
      *(v4 + 84) = 0;
    }
  }

  v7 = *(this + 91);
  if (v7)
  {
    free(v7);
    *(this + 91) = 0;
  }

  v8 = *(this + 92);
  if (v8)
  {
    free(v8);
    *(this + 92) = 0;
  }

  (*(*this + 584))(this, this + 1312, 6);
  (*(*this + 584))(this, this + 1360, 6);
  (*(*this + 600))(this, this + 1144, 6);
  (*(*this + 600))(this, this + 1192, 6);
  (*(*this + 600))(this, this + 1240, 6);
  v9 = *(this + 240);
  if (v9)
  {
    free(v9);
    *(this + 240) = 0;
  }

  v10 = *(this + 241);
  if (v10)
  {
    free(v10);
    *(this + 241) = 0;
  }

  v11 = *(this + 242);
  if (v11)
  {
    free(v11);
    *(this + 242) = 0;
  }

  v12 = *(this + 243);
  if (v12)
  {
    free(v12);
    *(this + 243) = 0;
  }

  v13 = *(this + 238);
  if (v13)
  {
    free(v13);
    *(this + 238) = 0;
  }

  (*(*this + 584))(this, this + 2024, 6);
  (*(*this + 584))(this, this + 2072, 6);
  v14 = *(this + 265);
  if (v14)
  {
    free(v14);
    *(this + 265) = 0;
  }

  v15 = *(this + 267);
  if (v15)
  {
    free(v15);
    *(this + 267) = 0;
  }

  v16 = *(this + 269);
  if (v16)
  {
    free(v16);
    *(this + 269) = 0;
  }

  v17 = *(this + 273);
  if (v17)
  {
    free(v17);
    *(this + 273) = 0;
  }

  v18 = *(this + 274);
  if (v18)
  {
    free(v18);
    *(this + 274) = 0;
  }

  v19 = *(this + 275);
  if (v19)
  {
    free(v19);
    *(this + 275) = 0;
  }

  v20 = *(this + 276);
  if (v20)
  {
    free(v20);
    *(this + 276) = 0;
  }
}

uint64_t AUEcConvergenceOversight::Reset(AUEcConvergenceOversight *this)
{
  if (*(this + 17) == 1)
  {
    v2 = 0;
    *(this + 1132) = 0;
    *(this + 1100) = 0u;
    *(this + 1116) = 0u;
    *(this + 1068) = 0u;
    *(this + 1084) = 0u;
    *(this + 1036) = 0u;
    *(this + 1052) = 0u;
    *(this + 1004) = 0u;
    *(this + 1020) = 0u;
    *(this + 972) = 0u;
    *(this + 988) = 0u;
    *(this + 940) = 0u;
    *(this + 956) = 0u;
    do
    {
      v3 = 0;
      v4 = *(this + v2 + 143);
      v5 = *(this + v2 + 149);
      v6 = *(this + v2 + 155);
      do
      {
        *(v4 + v3) = 0;
        *(v5 + v3) = 0;
        *(v6 + v3) = 0;
        v3 += 4;
      }

      while (v3 != 200);
      ++v2;
    }

    while (v2 != 6);
    AUEcConvergenceOversight::ResetEnergyValsAndFlags(this);
    __A = 0.0;
    vDSP_vfill(&__A, *(this + 243), 1, *(this + 493));
  }

  *(this + 1869) = 0;
  *(this + 249) = 0;
  *(this + 1484) = 0u;
  *(this + 1500) = 0u;
  *(this + 1516) = 0u;
  *(this + 1532) = 0u;
  *(this + 1546) = 0;
  *(this + 1556) = 0u;
  *(this + 1572) = 0u;
  *(this + 1588) = 0u;
  *(this + 1604) = 0u;
  *(this + 1620) = 0u;
  *(this + 1636) = 0u;
  *(this + 1652) = 0u;
  *(this + 1668) = 0u;
  *(this + 1684) = 0u;
  *(this + 1700) = 0u;
  *(this + 1716) = 0u;
  *(this + 1732) = 0u;
  *(this + 1748) = 0u;
  *(this + 1764) = 0u;
  *(this + 1780) = 0u;
  *(this + 1796) = 0u;
  *(this + 1812) = 0u;
  *(this + 1828) = 0;
  *(this + 465) = 0;
  *(this + 1844) = 0u;
  return 0;
}

uint64_t AUEcConvergenceOversight::SetParameter(AUEcConvergenceOversight *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    if (*(this + 17) == 1 && a2 <= 0x20 && ((1 << a2) & 0x1EC03E1F0) != 0)
    {
      ++*(this + 133);
    }

    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    return 0;
  }
}

uint64_t AUEcConvergenceOversight::SetProperty(AUEcConvergenceOversight *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 540) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUEcConvergenceOversight::GetProperty(AUEcConvergenceOversight *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 540;
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

uint64_t AUEcConvergenceOversight::GetPropertyInfo(AUEcConvergenceOversight *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUEcConvergenceOversight::Initialize(AUEcConvergenceOversight *this)
{
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

  if (v3 < 2)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      goto LABEL_35;
    }

    v11 = *(Element + 108);
    goto LABEL_22;
  }

  v6 = 1;
  do
  {
    v7 = ausdk::AUScope::GetElement((this + 80), v6 - 1);
    if (!v7)
    {
      goto LABEL_35;
    }

    v8 = v7;
    v9 = ausdk::AUScope::GetElement((this + 80), v6);
    if (!v9)
    {
      goto LABEL_35;
    }

    if (*(v8 + 80) != *(v9 + 80))
    {
      return 4294956428;
    }

    ++v6;
  }

  while (v3 != v6);
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10 || (v11 = *(v10 + 108), (v12 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0))
  {
LABEL_35:
    ausdk::Throw(0xFFFFD583);
  }

  if (v11 == *(v12 + 108))
  {
    if (v3 != 2)
    {
      v13 = ausdk::AUScope::GetElement((this + 80), 2u);
      if (!v13)
      {
        goto LABEL_35;
      }

      if (!*(v13 + 108))
      {
        return 4294956428;
      }
    }

LABEL_22:
    *(this + 138) = v11;
    if (v5 >= 2)
    {
      v15 = 1;
      do
      {
        v16 = ausdk::AUScope::GetElement((this + 128), v15 - 1);
        if (!v16)
        {
          goto LABEL_35;
        }

        v17 = *(v16 + 80);
        v18 = ausdk::AUScope::GetElement((this + 128), v15);
        if (!v18)
        {
          goto LABEL_35;
        }

        if (v17 != *(v18 + 80))
        {
          return 4294956428;
        }
      }

      while (v5 != ++v15);
    }

    v19 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = *(v19 + 80);
    v21 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v21)
    {
      goto LABEL_35;
    }

    if (v20 == *(v21 + 80))
    {

      AUEcConvergenceOversight::InitializeInternals(this);
    }
  }

  return 4294956428;
}

void AUEcConvergenceOversight::~AUEcConvergenceOversight(std::__shared_weak_count **this)
{
  AUEcConvergenceOversight::~AUEcConvergenceOversight(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5932220;
  AUEcConvergenceOversight::ClearAllocations(this);
  ((*this)[2].__shared_weak_owners_)(this);
  v2 = this[282];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[235];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t SoundFieldSpatializer::processAccumulating(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5, double a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 16) != 1)
  {
    return 4294956429;
  }

  if (*(a1 + 312) != a4)
  {
    return 4294956428;
  }

  v11 = *(a1 + 48);
  if (*(v11 + 82))
  {
    a7.n128_f32[0] = a5;
  }

  else
  {
    a7.n128_f32[0] = 0.0;
  }

  (*(**(a1 + 304) + 16))(*(a1 + 304), a2, a3, a10, 1, *v11, *(v11 + 4), a7);
  result = 0;
  *(a1 + 146) = *(*(a1 + 48) + 82);
  return result;
}

uint64_t SoundFieldSpatializer::reset(SoundFieldSpatializer *this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 6) + 82);
  return (*(**(this + 38) + 24))();
}

void SoundFieldSpatializer::~SoundFieldSpatializer(SoundFieldSpatializer *this)
{
  *this = &unk_1F5932490;
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5932490;
  v2 = *(this + 38);
  *(this + 38) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Spatializer::~Spatializer(this);
}

uint64_t AU::DSPGraph::at_to_fourcc(const __CFDictionary **a1)
{
  v2 = *a1;
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = applesauce::CF::details::at_key<char const*&>(v2, "ParameterID");
  if (v3)
  {
    v4 = applesauce::CF::convert_as<unsigned int,0>(v3);
    if ((v4 & 0x100000000) != 0)
    {
      return v4;
    }
  }

  if (!*a1)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_18;
  }

  v5 = applesauce::CF::details::at_key<char const*&>(*a1, "ParameterID");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
LABEL_18:
  }

  applesauce::CF::convert_to<std::string,0>(__p, v5);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 == 4)
    {
      v6 = __p;
      goto LABEL_12;
    }

LABEL_19:
    v10 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v11 = std::string::append(&v15, " to four character code", 0x18uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v10, &v16);
  }

  if (__p[1] != 4)
  {
    goto LABEL_19;
  }

  v6 = __p[0];
LABEL_12:
  v7 = bswap32(*v6);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1DDFB04A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_8:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v26);
  goto LABEL_8;
}

void std::vector<AU::DSPGraph::MetaParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t AU::DSPGraph::MetaParameterManager::loadMetaParametersFromPlist(AU::DSPGraph::MetaParameterManager *this, const __CFDictionary *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  {
    AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  v4 = AU::DSPGraph::GetLog(void)::sLog;
  if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "loading MetaParameterPlist:", buf, 2u);
  }

  if (a2 && CFDictionaryGetCount(a2))
  {
    memset(v102, 0, 24);
    applesauce::CF::DictionaryRef::from_get(&v101, a2);
    if (!v101)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,char const(&)[7]>(&v100, v101, "Inputs");
    v5 = v100;
    if (!v100)
    {
LABEL_151:
      v60 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v60, "Could not construct");
    }

    v82 = 0;
    v86 = this;
    while (v82 < CFArrayGetCount(v5))
    {
      v98 = 0u;
      *__p = 0u;
      v99 = 1065353216;
      if (!v100)
      {
        v77 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v77, "Could not construct");
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v100, v82);
      v6 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v95 = v6;
      __val = AU::DSPGraph::at_to_fourcc(&v95);
      if (v6)
      {
        CFRelease(v6);
      }

      if (!cf)
      {
        v78 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v78, "Could not construct");
      }

      v7 = applesauce::CF::details::at_key<char const(&)[8]>(cf, "Outputs");
      if (!v7)
      {
        v79 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v79, "Could not find item");
      }

      applesauce::CF::ArrayRef::from_get(&theArray, v7);
      v8 = theArray;
      if (!theArray)
      {
LABEL_171:
        v73 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v73, "Could not construct");
      }

      v9 = 0;
      v10 = bswap32(__val);
      v85 = v10;
      v14 = (v10 - 127) < 0xFFFFFFA1 || ((v10 >> 8) - 127) < 0xFFFFFFA1 || ((v10 << 8 >> 24) - 127) < 0xFFFFFFA1 || ((v10 >> 24) - 127) < 0xFFFFFFA1;
      v84 = v14;
LABEL_31:
      if (v9 < CFArrayGetCount(v8))
      {
        if (!theArray)
        {
          v74 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v74, "Could not construct");
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v93, theArray, v9);
        v15 = v93;
        if (v93)
        {
          CFRetain(v93);
        }

        v92 = v15;
        v16 = AU::DSPGraph::at_to_fourcc(&v92);
        if (v92)
        {
          CFRelease(v92);
        }

        if (!v93)
        {
          v75 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v75, "Could not construct");
        }

        applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,char const(&)[7]>(&v91, v93, "Points");
        v17 = v91;
        if (v91)
        {
          v18 = 0;
          v87 = 0u;
          do
          {
            if (v18 >= CFArrayGetCount(v17))
            {
              memset(&v90, 0, sizeof(v90));
              for (i = v87; i != *(&v87 + 1); i += 2)
              {
                caulk::make_string("{%.2f,%.2f} ", buf, *i, i[1]);
                if (buf[23] >= 0)
                {
                  v31 = buf;
                }

                else
                {
                  v31 = *buf;
                }

                if (buf[23] >= 0)
                {
                  v32 = buf[23];
                }

                else
                {
                  v32 = *&buf[8];
                }

                std::string::append(&v90, v31, v32);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              {
                AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
              }

              v33 = AU::DSPGraph::GetLog(void)::sLog;
              if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
              {
                *&buf[1] = v85;
                if (v84)
                {
                  std::to_string(&v89, __val);
                }

                else
                {
                  strcpy(&buf[5], "'");
                  buf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v89, buf);
                }

                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v34 = &v89;
                }

                else
                {
                  v34 = v89.__r_.__value_.__r.__words[0];
                }

                v35 = bswap32(v16);
                *&buf[1] = v35;
                if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v88, v16);
                }

                else
                {
                  strcpy(&buf[5], "'");
                  buf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v88, buf);
                }

                v36 = &v88;
                if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v36 = v88.__r_.__value_.__r.__words[0];
                }

                v37 = &v90;
                if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v37 = v90.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = v34;
                *&buf[12] = 2080;
                *&buf[14] = v36;
                *&buf[22] = 2080;
                *&v104 = v37;
                _os_log_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEFAULT, "%s -> %s: [ %s]", buf, 0x20u);
                if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v88.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                }
              }

              if (!__p[1])
              {
                goto LABEL_109;
              }

              v38 = vcnt_s8(__p[1]);
              v38.i16[0] = vaddlv_u8(v38);
              if (v38.u32[0] > 1uLL)
              {
                v39 = v16;
                if (__p[1] <= v16)
                {
                  v39 = v16 % LODWORD(__p[1]);
                }
              }

              else
              {
                v39 = (LODWORD(__p[1]) - 1) & v16;
              }

              v40 = *(__p[0] + v39);
              if (!v40 || (v41 = *v40) == 0)
              {
LABEL_109:
                operator new();
              }

              while (1)
              {
                v42 = v41[1];
                if (v42 == v16)
                {
                  if (*(v41 + 4) == v16)
                  {
                    this = v86;
                    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v90.__r_.__value_.__l.__data_);
                    }

                    if (v87)
                    {
                      operator delete(v87);
                    }

                    if (v91)
                    {
                      CFRelease(v91);
                    }

                    if (v93)
                    {
                      CFRelease(v93);
                    }

                    ++v9;
                    v8 = theArray;
                    if (!theArray)
                    {
                      goto LABEL_171;
                    }

                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v38.u32[0] > 1uLL)
                  {
                    if (v42 >= __p[1])
                    {
                      v42 %= __p[1];
                    }
                  }

                  else
                  {
                    v42 &= __p[1] - 1;
                  }

                  if (v42 != v39)
                  {
                    goto LABEL_109;
                  }
                }

                v41 = *v41;
                if (!v41)
                {
                  goto LABEL_109;
                }
              }
            }

            if (!v91)
            {
              v69 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v69, "Could not construct");
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(buf, v91, v18);
            if (!*buf)
            {
              v70 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v70, "Could not construct");
            }

            v19 = applesauce::CF::details::at_key<char const(&)[6]>(*buf, "Input");
            if (!v19)
            {
              v72 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v72, "Could not find item");
            }

            v20 = applesauce::CF::convert_to<float,0>(v19);
            if (!*buf)
            {
              v68 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v68, "Could not construct");
            }

            v21 = v20;
            v22 = applesauce::CF::details::at_key<char const(&)[7]>(*buf, "Output");
            if (!v22)
            {
              v71 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v71, "Could not find item");
            }

            v23 = applesauce::CF::convert_to<float,0>(v22);
            v24 = (*(&v87 + 1) - v87) >> 3;
            v25 = v24 + 1;
            if ((v24 + 1) >> 61)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (-v87 >> 2 > v25)
            {
              v25 = -v87 >> 2;
            }

            if (-v87 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v26);
            }

            v27 = (8 * v24);
            *v27 = v21;
            v27[1] = v23;
            v28 = 8 * v24 + 8;
            memcpy(0, v87, *(&v87 + 1) - v87);
            if (v87)
            {
              operator delete(v87);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }

            *&v29 = 0;
            *(&v29 + 1) = v28;
            v87 = v29;
            ++v18;
            v17 = v91;
          }

          while (v91);
        }

        v76 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v76, "Could not construct");
      }

      *buf = __val;
      *&buf[4] = 0;
      v43 = __p[0];
      v44 = __p[1];
      __p[0] = 0;
      __p[1] = 0;
      *&buf[8] = v43;
      *&buf[16] = v44;
      v104 = v98;
      v105 = v99;
      if (*(&v98 + 1))
      {
        v45 = *(v98 + 8);
        if ((v44 & (v44 - 1)) != 0)
        {
          if (v45 >= v44)
          {
            v45 %= v44;
          }
        }

        else
        {
          v45 &= v44 - 1;
        }

        v43[v45] = &v104;
        v98 = 0uLL;
      }

      v46 = *(&v102[0] + 1);
      if (*(&v102[0] + 1) >= *&v102[1])
      {
        v48 = 0xAAAAAAAAAAAAAAABLL * ((*(&v102[0] + 1) - *&v102[0]) >> 4);
        v49 = v48 + 1;
        if (v48 + 1 > 0x555555555555555)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((*&v102[1] - *&v102[0]) >> 4) > v49)
        {
          v49 = 0x5555555555555556 * ((*&v102[1] - *&v102[0]) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*&v102[1] - *&v102[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v50 = 0x555555555555555;
        }

        else
        {
          v50 = v49;
        }

        if (v50)
        {
          if (v50 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v51 = (16 * ((*(&v102[0] + 1) - *&v102[0]) >> 4));
        *v51 = *buf;
        v47 = 48 * v48 + 48;
        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table(48 * v48 + 8, &buf[8]);
        v52 = *(&v102[0] + 1);
        v53 = *&v102[0];
        v54 = *(&v102[0] + 1) - *&v102[0];
        if (*(&v102[0] + 1) != *&v102[0])
        {
          v55 = 48 * v48 - 16 * ((*(&v102[0] + 1) - *&v102[0]) >> 4) + 8;
          v56 = *&v102[0];
          v57 = *&v102[0];
          do
          {
            v58 = *v57;
            v57 += 6;
            *(v55 - 8) = v58;
            v55 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table(v55, v56 + 1) + 48;
            v56 = v57;
          }

          while (v57 != v52);
          do
          {
            std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table((v53 + 1));
            v53 += 6;
          }

          while (v53 != v52);
        }

        v59 = *&v102[0];
        *&v102[0] = v51 - v54;
        *(v102 + 8) = v47;
        if (v59)
        {
          operator delete(v59);
        }

        this = v86;
      }

      else
      {
        **(&v102[0] + 1) = *buf;
        v47 = v46 + 48;
        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__hash_table(v46 + 8, &buf[8]);
      }

      *(&v102[0] + 1) = v47;
      std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table(&buf[8]);
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table(__p);
      ++v82;
      v5 = v100;
      if (!v100)
      {
        goto LABEL_151;
      }
    }

    if (v100)
    {
      CFRelease(v100);
    }

    if (v101)
    {
      CFRelease(v101);
    }

    v64 = *this;
    if (*this)
    {
      v65 = *(this + 1);
      v66 = *this;
      if (v65 != v64)
      {
        do
        {
          v67 = v65 - 48;
          std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table(v65 - 40);
          v65 = v67;
        }

        while (v67 != v64);
        v66 = *this;
      }

      *(this + 1) = v64;
      operator delete(v66);
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
    }

    *this = v102[0];
    *(this + 2) = *&v102[1];
    memset(v102, 0, 24);
    *buf = v102;
    std::vector<AU::DSPGraph::MetaParameter>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v62 = *this;
    v61 = *(this + 1);
    if (v61 != *this)
    {
      do
      {
        v63 = v61 - 48;
        std::__hash_table<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>>>::~__hash_table(v61 - 40);
        v61 = v63;
      }

      while (v63 != v62);
    }

    *(this + 1) = v62;
  }

  return 0;
}

void sub_1DDFB1C4C()
{
  *(v0 - 192) = v0 - 224;
  std::vector<AU::DSPGraph::MetaParameter>::__destroy_vector::operator()[abi:ne200100]((v0 - 192));
  JUMPOUT(0x1DDFB1C88);
}

void sub_1DDFB1C80(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,char const(&)[7]>(void *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = applesauce::CF::details::at_key<char const(&)[7]>(a2, __s);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,AU::DSPGraph::Transformer>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t non-virtual thunk toAUEndpointVAD3::HandleEvent(uint64_t this, const VAD3EventData *a2)
{
  v2 = *(this + 32);
  if (v2 != *(this + 40))
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = (*(*v5 + 16))(v5, a2);
    }

    while (v2 != *(v4 + 40));
  }

  return this;
}

void non-virtual thunk toAUEndpointVAD3::~AUEndpointVAD3(AUEndpointVAD3 *this)
{
  AUEndpointVAD3::~AUEndpointVAD3((this - 528));

  JUMPOUT(0x1E12BD160);
}

{
  AUEndpointVAD3::~AUEndpointVAD3((this - 528));
}

void AUEndpointVAD3::~AUEndpointVAD3(AUEndpointVAD3 *this)
{
  *this = &unk_1F59326F0;
  *(this + 66) = &unk_1F5932960;
  v2 = *(this + 68);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 68) = 0;
  }

  v3 = *(this + 70);
  if (v3)
  {
    *(this + 71) = v3;
    operator delete(v3);
  }

  ausdk::AUBase::~AUBase(this);
}

{
  AUEndpointVAD3::~AUEndpointVAD3(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUEndpointVAD3::SetInputOutputAudioFormat(AUEndpointVAD3 *this, double *a2)
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

uint64_t AUEndpointVAD3::HandleEvent(uint64_t this, const VAD3EventData *a2)
{
  v2 = *(this + 560);
  if (v2 != *(this + 568))
  {
    v4 = this;
    do
    {
      v5 = *v2++;
      this = (*(*v5 + 16))(v5, a2);
    }

    while (v2 != *(v4 + 568));
  }

  return this;
}

BOOL AUEndpointVAD3::ValidFormat(AUEndpointVAD3 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
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

uint64_t AUEndpointVAD3::SupportedNumChannels(AUEndpointVAD3 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEndpointVAD3::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUEndpointVAD3::GetLatency(AUEndpointVAD3 *this)
{
  v1 = *(this + 68);
  v2 = v1[36];
  if (v2 <= v1[37])
  {
    v2 = v1[37];
  }

  if (v1[35] > v2)
  {
    v2 = v1[35];
  }

  return (v1[34] + v2);
}

uint64_t AUEndpointVAD3::GetParameterInfo(AUEndpointVAD3 *this, unsigned int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  a4->flags = 0x40000000;
  a4->unitName = 0;
  return 4294956418;
}

uint64_t AUEndpointVAD3::Render(AUEndpointVAD3 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUEndpointVAD3::ProcessMultipleBufferLists(AUEndpointVAD3 *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v80 = *MEMORY[0x1E69E9840];
  v11 = *(this + 146);
  *(this + 146) = v11 + 1;
  v12 = *(this + 75);
  if (!v11)
  {
    v13 = *(this + 35);
    mach_timebase_info(info);
    LODWORD(v15) = *info;
    LODWORD(v14) = *&info[4];
    *(this + 74) = v13 / (v14 / v15 * 1000000000.0);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v17 = *(Element + 80);
  if (*(this + 376) == 1 && *(this + 84) != a3)
  {
    if (EndpointVAD3LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
    }

    if (EndpointVAD3LogScope(void)::scope)
    {
      v50 = *EndpointVAD3LogScope(void)::scope;
      if (!*EndpointVAD3LogScope(void)::scope)
      {
        return 4294956422;
      }
    }

    else
    {
      v50 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v61 = *(this + 84);
      *info = 136315906;
      *&info[4] = "AUEndpointVAD3.cpp";
      *&info[12] = 1024;
      *&info[14] = 910;
      *&info[18] = 1024;
      *&info[20] = a3;
      LOWORD(v79) = 1024;
      *(&v79 + 2) = v61;
      _os_log_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d Incorrect number of input samples! Received %d, but expected %d.", info, 0x1Eu);
    }

    return 4294956422;
  }

  if (((*(*this + 576))(this) & 1) == 0)
  {
    v19 = *(this + 68);
    v20 = *a5;
    std::string::basic_string[abi:ne200100]<0>(&v76, "");
    ++*(v19 + 528);
    v21 = *(*(v19 + 64) + 88);
    v22 = v12 / v17;
    FeaturesDSPWrapper::ProcessAudio(*(v19 + 32), v20, v22, a3);
    FeaturesDSPWrapper::ProcessAudio(*(v19 + 48), v20, v22, a3);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    __p = 0;
    v65 = 0;
    v66 = 0;
    FeaturesDSPWrapper::GetCurrentProcessedFeatures(*(v19 + 32), &v73);
    FeaturesDSPWrapper::GetCurrentProcessedSuperFeatures(*(v19 + 32), &v70);
    FeaturesDSPWrapper::GetCurrentProcessedFeatures(*(v19 + 48), &v67);
    FeaturesDSPWrapper::GetCurrentProcessedSuperFeatures(*(v19 + 48), &__p);
    v23 = *(*(v19 + 64) + 88) - v21;
    *(v19 + 80) = v23;
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        ++*(v19 + 528);
        v25 = *(v19 + 64);
        *info = i - v23;
        VectorTimeSeriesSynchronizer<float>::GetSynchronizedVector(v25, info, *(v19 + 336));
        v26 = *(v19 + 336);
        v27 = *(v19 + 344);
        v28 = *v27;
        v29 = v27[1];
        if (v28 == v29)
        {
          goto LABEL_18;
        }

        v30 = *(v26 + 24);
        v31 = (*(v26 + 32) - v30) >> 2;
        v32 = v28;
        do
        {
          if (!v31)
          {
            __assert_rtn("ElementAt", "FeatureTimeSeries.h", 84, "index < mArray.size()");
          }

          v33 = *v30++;
          *v32++ = (v33 + 0.5);
          --v31;
        }

        while (v32 != v29);
        if (v28 == v29)
        {
LABEL_18:
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = *(v19 + 896);
          v36 = v29 - v28;
          if (v36 <= 1)
          {
            v36 = 1;
          }

          do
          {
            v38 = *v28++;
            v37 = v38;
            v39 = *v35++;
            v34 += v39 * v37;
            --v36;
          }

          while (v36);
        }

        v40 = *(v19 + 104);
        if (*(v19 + 360) == 1)
        {
          v18 = MixViterbiProd::Update(v40, *(v19 + 364), v34, (v26 + 48));
        }

        else
        {
          v18 = MixViterbiProd::Initialize(v40, v34, (v26 + 48));
          *(v19 + 360) = 1;
        }

        *(v19 + 364) = v34;
        v41 = *(v19 + 104);
        v42 = *(v41 + 72);
        v43 = *(v19 + 264);
        if ((*(v19 + 272) - v43) >> 2 < v42)
        {
          v42 = (*(v19 + 272) - v43) >> 2;
        }

        if (v42)
        {
          v44 = *(v41 + 296);
          do
          {
            v45 = *v44++;
            *v43++ = v45;
            --v42;
          }

          while (v42);
        }

        if (((*(v19 + 576) - *(v19 + 568)) & 0x3FFFFFFFCLL) == 4)
        {
          v18 = *(*(v19 + 336) + 56);
          *info = &unk_1F592FFC8;
          *&info[8] = 4;
          *&info[16] = v18;
          v79 = v19 + 264;
          for (j = *(v19 + 504); j != *(v19 + 512); ++j)
          {
            (*(**j + 16))(*j, info);
          }
        }

        v23 = *(v19 + 80);
      }
    }

    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    if (v77 < 0)
    {
      operator delete(v76);
    }

    if (!*(v19 + 24))
    {
      v51 = *(v19 + 136);
      v52 = *(v19 + 104);
      v53 = *(v52 + 232);
      v54 = 0.0;
      if ((v53 & 1) == 0)
      {
        MRRingBuffer<DataTimeStamp>::GetSample(*(v52 + 192), *(v52 + 224) - 1);
        v54 = v55;
      }

      v56 = v51;
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((v19 + 432));
      std::vector<std::vector<unsigned int>>::clear[abi:ne200100]((v19 + 456));
      v57 = *(v19 + 480);
      v58 = *(v19 + 488);
      while (v58 != v57)
      {
        v58 -= 24;
        *info = v58;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](info);
      }

      v59 = v22 - v56;
      *(v19 + 488) = v57;
      *(v19 + 416) = *(v19 + 408);
      v60 = *(v19 + 104);
      if ((v53 & 1) != 0 || v59 > v54)
      {
        *info = 0;
        if (MixViterbiProd::getForceDecodeTimeFramesRelativeToPresent(v60, v59, info) && *info > *(v60 + 216))
        {
          MixViterbiProd::updateDecode_Post(v60, (v19 + 432), (v19 + 408), (v19 + 456), *info);
        }
      }

      else
      {
        if (*(v60 + 232) == 1)
        {
          __assert_rtn("DecodeFromConvergence_Post", "MixViterbiProd.cpp", 204, "!mNeverConverged");
        }

        MixViterbiProd::updateDecode_Post(*(v19 + 104), (v19 + 432), (v19 + 408), (v19 + 456), *(v60 + 224));
      }

      if (*(v19 + 440) != *(v19 + 432) && *(v19 + 416) != *(v19 + 408))
      {
        EndpointVAD3::TranslateFullPosteriorsToMarginalized(v19, (v19 + 456), v19 + 480, *(v19 + 376), (v19 + 384));
        v62 = *(v19 + 112);
        if (*(v19 + 120) != v62)
        {
          v63 = 0;
          do
          {
            EndpointVAD3::UpdateAndDispatchDecisions(v19, (v19 + 432), *(v19 + 480), (v19 + 408), *(v62 + 8 * v63), v63);
            ++v63;
            v62 = *(v19 + 112);
          }

          while (v63 < (*(v19 + 120) - v62) >> 3);
        }
      }
    }
  }

  mData = (*a5)->mBuffers[0].mData;
  v48 = (*a7)->mBuffers[0].mData;
  if (mData != v48)
  {
    memcpy(v48, mData, (*a5)->mBuffers[0].mDataByteSize);
  }

  result = 0;
  LODWORD(v18) = *(this + 84);
  *(this + 75) = *(this + 75) + *&v18;
  return result;
}

void sub_1DDFB2924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUEndpointVAD3::SetProperty(AUEndpointVAD3 *this, int a2, int a3, unsigned int a4, CFDictionaryRef theDict, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956431;
  switch(a2)
  {
    case 65010:
      if (*(this + 17))
      {
        return 4294956447;
      }

      Value = CFDictionaryGetValue(theDict, @"CommonParameters");
      v11 = CFDictionaryGetValue(theDict, @"ConfigurationParameters");
      v12 = CFDictionaryGetValue(theDict, @"ULDATParameters");
      v13 = CFDictionaryGetValue(theDict, @"ASAParameters");
      v14 = CFDictionaryGetValue(theDict, @"ViterbiParameters");
      EndpointVAD2::SetProperties(Value, (*(this + 68) + 168), v15);
      EndpointVAD2::SetProperties(v11, (*(this + 68) + 176), v16);
      EndpointVAD2::SetProperties(v12, (*(this + 68) + 184), v17);
      EndpointVAD2::SetProperties(v13, (*(this + 68) + 192), v18);
      EndpointVAD2::SetProperties(v14, (*(this + 68) + 200), v19);
      result = 0;
      *(this + 552) = 1;
      return result;
    case 65011:
    case 65012:
    case 65013:
    case 65014:
    case 65015:
    case 65016:
    case 65017:
    case 65018:
    case 65019:
    case 65020:
    case 65021:
    case 65033:
    case 65034:
    case 65035:
    case 65036:
    case 65037:
    case 65038:
    case 65039:
    case 65040:
    case 65041:
    case 65042:
    case 65043:
    case 65044:
      return result;
    case 65022:
      result = 0;
      *(*(this + 68) + 24) = *theDict ^ 1;
      return result;
    case 65023:
      AUEndpointVAD3::AddObserver(this, theDict);
      goto LABEL_20;
    case 65024:
      if (*theDict == 1)
      {
        ausdk::AUBase::Input(this, 0);
        EndpointVAD3::DoneProcessingAudio(*(this + 68), v9);
      }

      goto LABEL_20;
    case 65025:
      result = 0;
      *(*(this + 68) + 136) = *theDict;
      return result;
    case 65026:
      result = 0;
      *(*(this + 68) + 140) = *theDict;
      return result;
    case 65027:
      result = 0;
      *(*(this + 68) + 144) = *theDict;
      return result;
    case 65028:
      result = 0;
      *(*(this + 68) + 148) = *theDict;
      return result;
    case 65029:
      result = 0;
      *(*(this + 68) + 152) = *theDict;
      return result;
    case 65030:
      result = 0;
      *(*(this + 68) + 156) = *theDict;
      return result;
    case 65031:
      result = 0;
      *(*(this + 68) + 160) = *theDict;
      return result;
    case 65032:
      result = 0;
      *(*(this + 68) + 164) = *theDict;
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
        v20 = *theDict;
        v21 = *theDict != 0;
        if (v21 != (*(*this + 576))(this))
        {
          (*(*this + 584))(this, v20 != 0);
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

void AUEndpointVAD3::AddObserver(void *a1, uint64_t a2)
{
  v3 = a1[71];
  v4 = a1[72];
  if (v3 >= v4)
  {
    v6 = a1[70];
    v7 = (v3 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v5 = 8 * v7 + 8;
    v12 = a1[70];
    v13 = a1[71] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = a1[70];
    a1[70] = v14;
    a1[71] = v5;
    a1[72] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = a2;
    v5 = (v3 + 1);
  }

  a1[71] = v5;
}

uint64_t AUEndpointVAD3::GetProperty(AUEndpointVAD3 *this, int a2, int a3, unsigned int a4, void **a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  switch(a2)
  {
    case 65010:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 457;
      v25 = "%25s:%-5d The top-level parameter data structure is not saved internally! Instead, you should query specific AU properties individually.";
      goto LABEL_96;
    case 65011:
      v17 = *(*(this + 68) + 32);
      goto LABEL_34;
    case 65012:
      v21 = *(*(this + 68) + 32);
      goto LABEL_40;
    case 65013:
      v15 = *(*(this + 68) + 32);
      v13 = *(v15 + 160);
      v14 = *(v15 + 24);
      v16 = a5;
      v12 = 10;
      goto LABEL_43;
    case 65014:
      result = 0;
      v9 = 10;
      goto LABEL_74;
    case 65015:
      result = 0;
      v9 = *(*(this + 68) + 84);
      goto LABEL_74;
    case 65016:
      v17 = *(*(this + 68) + 48);
LABEL_34:
      v18 = *(*(v17 + 112) + 48);
      memcpy(a5[2], *(v18 + 16), *(v18 + 12));
      result = 0;
      v19 = *(v18 + 12);
      *(a5 + 2) = v19;
      *(a5 + 3) = v19;
      return result;
    case 65017:
      v21 = *(*(this + 68) + 48);
LABEL_40:
      (*(**(v21 + 8) + 40))(*(v21 + 8), a5);
      return 0;
    case 65018:
      v22 = *(this + 68);
      v23 = *(v22 + 88);
      v24 = *(v22 + 48);
      v13 = *(v24 + 160);
      v14 = *(v24 + 24);
      v12 = v23 + 19;
      goto LABEL_42;
    case 65019:
      result = 0;
      v9 = *(*(this + 68) + 88) + 19;
      goto LABEL_74;
    case 65020:
      result = 0;
      v9 = *(*(this + 68) + 88);
      goto LABEL_74;
    case 65021:
      v11 = *(this + 68);
      v12 = *(v11 + 92);
      v13 = *(v11 + 80);
      v14 = *(v11 + 64);
LABEL_42:
      v16 = a5;
LABEL_43:
      EndpointVAD2::GetInterleavedFeaturesFromQueue(v16, v12, v13, v14);
      return 0;
    case 65022:
      result = 0;
      *a5 = *(*(this + 68) + 24) == 0;
      return result;
    case 65023:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 544;
      v25 = "%25s:%-5d kAUEndpointVAD3Property_EventHandler is write-only.";
      goto LABEL_96;
    case 65024:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 549;
      v25 = "%25s:%-5d kAUEndpointVAD3Property_DoneProcessingAudioForNonRealTimeDecode is write-only.";
      goto LABEL_96;
    case 65025:
      result = 0;
      v10 = *(*(this + 68) + 136);
      goto LABEL_70;
    case 65026:
      result = 0;
      v10 = *(*(this + 68) + 140);
      goto LABEL_70;
    case 65027:
      result = 0;
      v10 = *(*(this + 68) + 144);
      goto LABEL_70;
    case 65028:
      result = 0;
      v10 = *(*(this + 68) + 148);
      goto LABEL_70;
    case 65029:
      result = 0;
      v10 = *(*(this + 68) + 152);
      goto LABEL_70;
    case 65030:
      result = 0;
      v10 = *(*(this + 68) + 156);
      goto LABEL_70;
    case 65031:
      result = 0;
      v10 = *(*(this + 68) + 160);
      goto LABEL_70;
    case 65032:
      result = 0;
      v10 = *(*(this + 68) + 164);
LABEL_70:
      *a5 = v10;
      return result;
    case 65033:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 594;
      v25 = "%25s:%-5d kAUEndpointVAD3Property_RecurrentVADSpeechDetectionEvent cannot be directly accessed.";
      goto LABEL_96;
    case 65034:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 599;
      v25 = "%25s:%-5d kAUEndpointVAD3Property_RecurrentVADNonspeechDetectionEvent cannot be directly accessed.";
      goto LABEL_96;
    case 65035:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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

      v26 = 136315394;
      v27 = "AUEndpointVAD3.cpp";
      v28 = 1024;
      v29 = 604;
      v25 = "%25s:%-5d kAUEndpointVAD3Property_EndpointerSpeechDetectionEvent cannot be directly accessed.";
      goto LABEL_96;
    case 65036:
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v8 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
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
        v26 = 136315394;
        v27 = "AUEndpointVAD3.cpp";
        v28 = 1024;
        v29 = 609;
        v25 = "%25s:%-5d kAUEndpointVAD3Property_EndpointerNonspeechDetectionEvent cannot be directly accessed.";
LABEL_96:
        _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v25, &v26, 0x12u);
      }

      return 4294956449;
    case 65037:
    case 65038:
    case 65039:
    case 65040:
    case 65041:
    case 65042:
      return result;
    case 65043:
      result = 0;
      v20 = *(*(this + 68) + 32);
      goto LABEL_72;
    case 65044:
      result = 0;
      v20 = *(*(this + 68) + 48);
LABEL_72:
      *a5 = *(v20 + 164);
      return result;
    case 65045:
      result = 0;
      *a5 = (*(this + 68) + 536);
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
          return result;
        }

        v9 = (*(*this + 576))(this);
        result = 0;
      }

LABEL_74:
      *a5 = v9;
      break;
  }

  return result;
}

uint64_t AUEndpointVAD3::GetPropertyInfo(AUEndpointVAD3 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 65010:
      v7 = *(this + 17) ^ 1;
      goto LABEL_6;
    case 65011:
    case 65013:
    case 65016:
    case 65018:
    case 65021:
      v7 = 0;
      v8 = 0;
      goto LABEL_21;
    case 65012:
    case 65017:
      v7 = 0;
      v8 = 40;
      goto LABEL_21;
    case 65014:
    case 65015:
    case 65019:
    case 65020:
    case 65037:
    case 65040:
      goto LABEL_11;
    case 65022:
      v7 = 1;
      goto LABEL_17;
    case 65023:
      v8 = 8;
      goto LABEL_20;
    case 65024:
      v8 = 0;
      v7 = *(this + 146) != 0;
      goto LABEL_21;
    case 65025:
    case 65026:
    case 65027:
    case 65028:
    case 65029:
    case 65030:
    case 65031:
    case 65032:
      v7 = *(this + 17) ^ 1;
      goto LABEL_12;
    case 65033:
    case 65034:
    case 65035:
    case 65036:
      v7 = 0;
LABEL_17:
      v8 = 1;
      goto LABEL_21;
    case 65038:
    case 65039:
    case 65041:
    case 65042:
    case 65043:
    case 65044:
      v7 = 0;
LABEL_6:
      v8 = 8;
      goto LABEL_21;
    case 65045:
      v7 = 0;
      v8 = 392;
      goto LABEL_21;
    default:
      if (a2 == 21)
      {
        v8 = 4;
LABEL_20:
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

LABEL_21:
      result = 0;
      *a6 = v7 & 1;
      *a5 = v8;
      break;
  }

  return result;
}

uint64_t AUEndpointVAD3::Reset(AUEndpointVAD3 *this)
{
  if (*(this + 17) == 1 && *(this + 146))
  {
    (*(*this + 56))(this);
  }

  return 0;
}

uint64_t AUEndpointVAD3::Initialize(AUEndpointVAD3 *this)
{
  v108 = *MEMORY[0x1E69E9840];
  (*(*this + 64))(this);
  *(this + 146) = 0;
  *(this + 37) = 0u;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_142;
  }

  v3 = *(Element + 80);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_142;
  }

  if (v3 != *(v4 + 80))
  {
    return 4294956421;
  }

  v6 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v6)
  {
    goto LABEL_142;
  }

  if (*(v6 + 80) < 8000.0)
  {
    if (EndpointVAD3LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
    }

    if (EndpointVAD3LogScope(void)::scope)
    {
      v7 = *EndpointVAD3LogScope(void)::scope;
      if (!*EndpointVAD3LogScope(void)::scope)
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
      *&buf[4] = "AUEndpointVAD3.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 94;
      _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Audio sampling rate must be 8000 Hz or higher.", buf, 0x12u);
    }

    return 4294956421;
  }

  if (*(this + 552) == 1)
  {
    v8 = *(this + 68);
    if (ausdk::AUScope::GetElement((this + 80), 0))
    {
      std::string::basic_string[abi:ne200100]<0>(&v88, "");
      if (*(v8 + 168))
      {
        v9 = *(v8 + 176);
        if (v9)
        {
          if (*(v8 + 184) && *(v8 + 192) && *(v8 + 200))
          {
            if (*(v8 + 8) == 1)
            {
              EndpointVAD3::Uninitialize(v8);
              v9 = *(v8 + 176);
            }

            *v103 = 0;
            v104 = 0;
            v105 = 0;
            v99 = 0;
            v100 = 0;
            v101 = 0;
            memset(&v98, 0, sizeof(v98));
            memset(&v97, 0, sizeof(v97));
            v94 = 0;
            v95 = 0;
            v96 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            memset(&v90, 0, sizeof(v90));
            memset(&v89, 0, sizeof(v89));
            __p[0] = 0;
            __p[1] = 0;
            *&v85 = 0;
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"CategoryNames");
            *buf = __p[0];
            StringArrayDecoder::BlobToStringArray_Priv(buf, v103);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"CategoryDataMaxes");
            EndpointVAD2::FloatVectorToUIntVector(__p, &v98);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"TimingModelOrders");
            EndpointVAD2::FloatVectorToUIntVector(__p, &v97);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"CategoryValueNames");
            v10 = __p[0];
            v12 = v99;
            v11 = v100;
            if (v100 != v99)
            {
              do
              {
                *buf = --v11;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
              }

              while (v11 != v12);
              v11 = v99;
            }

            v100 = v12;
            v14 = *v10;
            v13 = v10 + 1;
            v102 = v13;
            v15 = v14 + 0.5;
            v16 = v15;
            if (0xAAAAAAAAAAAAAAABLL * ((v101 - v11) >> 3) < v15)
            {
              if (v16 <= 0xAAAAAAAAAAAAAAALL)
              {
                v107 = &v99;
                std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v15);
              }

              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            if (v16)
            {
              for (i = 0; i != v16; ++i)
              {
                v86 = 0uLL;
                *&v87 = 0;
                StringArrayDecoder::BlobToStringArray_Priv(&v102, &v86);
                v19 = v86;
                for (j = 0; v19 != *(&v86 + 1); v19 += 24)
                {
                  v21 = *(v19 + 23);
                  if (v21 < 0)
                  {
                    v21 = *(v19 + 8);
                  }

                  j += v21;
                }

                v13 += j - 0x5555555555555555 * ((*(&v86 + 1) - v86) >> 3) + 1;
                v102 = v13;
                v22 = v100;
                if (v100 >= v101)
                {
                  v24 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v99) >> 3);
                  v25 = v24 + 1;
                  if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v101 - v99) >> 3) > v25)
                  {
                    v25 = 0x5555555555555556 * ((v101 - v99) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v101 - v99) >> 3) >= 0x555555555555555)
                  {
                    v26 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v26 = v25;
                  }

                  v107 = &v99;
                  if (v26)
                  {
                    std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v26);
                  }

                  v27 = (8 * ((v100 - v99) >> 3));
                  *buf = 0;
                  *&buf[8] = v27;
                  *&buf[16] = v27;
                  *v27 = 0;
                  v27[1] = 0;
                  v27[2] = 0;
                  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(24 * v24, v86, *(&v86 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v86 + 1) - v86) >> 3));
                  v23 = (*&buf[16] + 24);
                  v28 = (*&buf[8] - (v100 - v99));
                  memcpy(v28, v99, v100 - v99);
                  v29 = v99;
                  v30 = v101;
                  v99 = v28;
                  v100 = v23;
                  v101 = *&buf[24];
                  *&buf[16] = v29;
                  *&buf[24] = v30;
                  *buf = v29;
                  *&buf[8] = v29;
                  std::__split_buffer<std::vector<std::string>>::~__split_buffer(buf);
                }

                else
                {
                  v100->__begin_ = 0;
                  v22->__end_ = 0;
                  v22->__end_cap_.__value_ = 0;
                  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v22, v86, *(&v86 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v86 + 1) - v86) >> 3));
                  v23 = v22 + 1;
                }

                v100 = v23;
                *buf = &v86;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
              }
            }

            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"ULDATFeatureNames");
            *buf = __p[0];
            StringArrayDecoder::BlobToStringArray_Priv(buf, &v94);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"ULDATFeatureDataMaxes");
            EndpointVAD2::FloatVectorToUIntVector(__p, &v90);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"ASASuperFeatureNames");
            *buf = __p[0];
            StringArrayDecoder::BlobToStringArray_Priv(buf, &v91);
            PListReader::GetSerializedFloat32DataFromDict(__p, v9, @"ASASuperFeatureDataMaxes");
            EndpointVAD2::FloatVectorToUIntVector(__p, &v89);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*(v8 + 536))
            {
              if (EndpointVAD3LogScope(void)::once != -1)
              {
                dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
              }

              if (EndpointVAD3LogScope(void)::scope)
              {
                v31 = *EndpointVAD3LogScope(void)::scope;
                if (!*EndpointVAD3LogScope(void)::scope)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v31 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "VAD3Configuration.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 51;
                _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d In VAD3Configuration::Initialize, Forcing reinitialization of VAD3Configuration.", buf, 0x12u);
              }
            }

LABEL_68:
            if ((v8 + 544) != v103)
            {
              std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v8 + 544), *v103, v104, 0xAAAAAAAAAAAAAAABLL * ((v104 - *v103) >> 3));
            }

            if ((v8 + 568) != &v98)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v8 + 568), v98.__begin_, v98.__end_, v98.__end_ - v98.__begin_);
            }

            if ((v8 + 616) != &v97)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v8 + 616), v97.__begin_, v97.__end_, v97.__end_ - v97.__begin_);
            }

            v32 = (v8 + 664);
            if ((v8 + 664) != &v99)
            {
              v33 = v100;
              v34 = v100 - v99;
              v35 = *(v8 + 680);
              v36 = *(v8 + 664);
              if (v35 - v36 < (v100 - v99))
              {
                v37 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3);
                if (v36)
                {
                  v38 = *(v8 + 672);
                  v39 = *(v8 + 664);
                  if (v38 != v36)
                  {
                    do
                    {
                      v38 -= 24;
                      *buf = v38;
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
                    }

                    while (v38 != v36);
                    v39 = *v32;
                  }

                  *(v8 + 672) = v36;
                  operator delete(v39);
                  v35 = 0;
                  *v32 = 0;
                  *(v8 + 672) = 0;
                  *(v8 + 680) = 0;
                }

                if (v37 <= 0xAAAAAAAAAAAAAAALL)
                {
                  v40 = 0xAAAAAAAAAAAAAAABLL * (v35 >> 3);
                  v41 = 2 * v40;
                  if (2 * v40 <= v37)
                  {
                    v41 = v37;
                  }

                  if (v40 >= 0x555555555555555)
                  {
                    v42 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v42 = v41;
                  }

                  if (v42 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v42);
                  }
                }

                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v43 = *(v8 + 672) - v36;
              if (v43 >= v34)
              {
                std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(v99, v100, *(v8 + 664));
                v46 = v45;
                v47 = *(v8 + 672);
                while (v47 != v46)
                {
                  v47 -= 24;
                  *buf = v47;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
                }

                *(v8 + 672) = v46;
              }

              else
              {
                v44 = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(v99, (v99 + v43), *(v8 + 664));
                *(v8 + 672) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(v8 + 664, v44, v33, *(v8 + 672));
              }
            }

            if ((v8 + 752) != &v94)
            {
              std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v8 + 752), v94, v95, 0xAAAAAAAAAAAAAAABLL * ((v95 - v94) >> 3));
            }

            if ((v8 + 776) != &v90)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v8 + 776), v90.__begin_, v90.__end_, v90.__end_ - v90.__begin_);
            }

            if ((v8 + 800) != &v91)
            {
              std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v8 + 800), v91, v92, 0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 3));
            }

            if ((v8 + 824) != &v89)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v8 + 824), v89.__begin_, v89.__end_, v89.__end_ - v89.__begin_);
            }

            v48 = *(v8 + 576);
            v49 = *(v8 + 568);
            if (v48 == v49)
            {
              k = 1;
            }

            else
            {
              v52 = *v49;
              v51 = v49 + 1;
              for (k = v52; v51 != v48; k *= v53)
              {
                v53 = *v51++;
              }
            }

            *(v8 + 736) = k;
            v54 = *(v8 + 624);
            v55 = *(v8 + 616);
            if (v54 == v55)
            {
              m = 1;
            }

            else
            {
              v58 = *v55;
              v57 = v55 + 1;
              for (m = v58; v57 != v54; m *= v59)
              {
                v59 = *v57++;
              }
            }

            *(v8 + 740) = m;
            *(v8 + 744) = m * k;
            VADGenUtils::VectorReverseCumulativeProduct<unsigned int>((v8 + 568), (v8 + 592));
            VADGenUtils::VectorReverseCumulativeProduct<unsigned int>((v8 + 616), (v8 + 640));
            std::vector<unsigned int>::resize((v8 + 688), (*(v8 + 576) - *(v8 + 568)) >> 1);
            v60 = *(v8 + 568);
            v61 = *(v8 + 576);
            if (v60 != v61)
            {
              v62 = *(v8 + 616);
              v63 = *(v8 + 688);
              do
              {
                v64 = *v60++;
                *v63 = v64;
                v65 = *v62++;
                v63[1] = v65;
                v63 += 2;
              }

              while (v60 != v61);
            }

            VADGenUtils::VectorReverseCumulativeProduct<unsigned int>((v8 + 688), (v8 + 712));
            std::vector<std::string>::resize((v8 + 848), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 760) - *(v8 + 752)) >> 3) - 0x5555555555555555 * ((*(v8 + 808) - *(v8 + 800)) >> 3));
            v66 = *(v8 + 752);
            v67 = *(v8 + 848);
            while (v66 != *(v8 + 760))
            {
              std::string::operator=(v67++, v66++);
            }

            for (n = *(v8 + 800); n != *(v8 + 808); ++n)
            {
              std::string::operator=(v67++, n);
            }

            std::vector<unsigned int>::resize((v8 + 872), ((*(v8 + 832) - *(v8 + 824)) >> 2) + ((*(v8 + 784) - *(v8 + 776)) >> 2));
            v69 = *(v8 + 776);
            v70 = *(v8 + 872);
            v71 = *(v8 + 784);
            while (v69 != v71)
            {
              v72 = *v69++;
              *v70++ = v72;
            }

            v73 = *(v8 + 824);
            v74 = *(v8 + 832);
            while (v73 != v74)
            {
              v75 = *v73++;
              *v70++ = v75;
            }

            VADGenUtils::VectorReverseCumulativeProduct<unsigned int>((v8 + 872), (v8 + 896));
            v76 = *(v8 + 880);
            v77 = *(v8 + 872);
            if (v76 == v77)
            {
              ii = 1;
            }

            else
            {
              v80 = *v77;
              v78 = v77 + 1;
              for (ii = v80; v78 != v76; ii *= v81)
              {
                v81 = *v78++;
              }
            }

            *(v8 + 920) = ii;
            *(v8 + 536) = 1;
            if (v89.__begin_)
            {
              v89.__end_ = v89.__begin_;
              operator delete(v89.__begin_);
            }

            if (v90.__begin_)
            {
              v90.__end_ = v90.__begin_;
              operator delete(v90.__begin_);
            }

            *buf = &v91;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
            *buf = &v94;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
            if (v97.__begin_)
            {
              v97.__end_ = v97.__begin_;
              operator delete(v97.__begin_);
            }

            if (v98.__begin_)
            {
              v98.__end_ = v98.__begin_;
              operator delete(v98.__begin_);
            }

            *buf = &v99;
            std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](buf);
            *buf = v103;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
            v107 = 0;
            memset(buf, 0, sizeof(buf));
            operator new();
          }
        }
      }

      std::string::__assign_external(&v88, "At least one settings dictionary is null. You must load all settings before initializing.", 0x59uLL);
      if (EndpointVAD3LogScope(void)::once != -1)
      {
        dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
      }

      if (EndpointVAD3LogScope(void)::scope)
      {
        v82 = *EndpointVAD3LogScope(void)::scope;
        if (!*EndpointVAD3LogScope(void)::scope)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v82 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = &v88;
        if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v83 = v88.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "EndpointVAD3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 331;
        *&buf[18] = 2080;
        *&buf[20] = v83;
        _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d Error initializing EndpointVAD3: %s", buf, 0x1Cu);
      }

LABEL_153:
      abort();
    }

LABEL_142:
    ausdk::Throw(0xFFFFD583);
  }

  if (EndpointVAD3LogScope(void)::once != -1)
  {
    dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
  }

  if (!EndpointVAD3LogScope(void)::scope)
  {
    v17 = MEMORY[0x1E69E9C10];
LABEL_62:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AUEndpointVAD3.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUEndpointVAD3: The top-level plist property is unset. Setting the AU to bypass mode (no VAD outputs).", buf, 0x12u);
    }

    goto LABEL_64;
  }

  v17 = *EndpointVAD3LogScope(void)::scope;
  if (*EndpointVAD3LogScope(void)::scope)
  {
    goto LABEL_62;
  }

LABEL_64:
  (*(*this + 584))(this, 1);
  return 0;
}

void sub_1DDFB54D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  *(v56 + 672) = v57;
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  a25 = &a43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = &a46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  a25 = &a55;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = (v58 - 224);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<FreqDomainConvolver>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[17];
    if (v3)
    {
      v2[18] = v3;
      operator delete(v3);
    }

    v4 = v2[14];
    if (v4)
    {
      v2[15] = v4;
      operator delete(v4);
    }

    CDSPSplitComplex::~CDSPSplitComplex((v2 + 10));
    CDSPSplitComplex::~CDSPSplitComplex((v2 + 6));
    CDSPSplitComplex::~CDSPSplitComplex((v2 + 2));
    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void CrossCorrelator::~CrossCorrelator(CrossCorrelator *this)
{
  std::unique_ptr<FreqDomainConvolver>::reset[abi:ne200100](this + 8, 0);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void CrossCorrelator::initialize(uint64_t a1, void *a2)
{
  v3 = a2[1] - *a2;
  v4 = log2((v3 >> 2));
  v5 = ceil(v4);
  if (v5 != floor(v4))
  {
    v6 = exp2(v5);
    v7[0] = 0;
    std::vector<float>::resize(a2, v6, v7, *&v6);
    v3 = a2[1] - *a2;
  }

  FreqDomainConvolver::FreqDomainConvolver(v7, v3 >> 1);
  operator new();
}

void sub_1DDFB5C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CDSPSplitComplex::~CDSPSplitComplex((v9 + 6));
  CDSPSplitComplex::~CDSPSplitComplex((v9 + 2));
  v11 = v9[1];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x1E12BD160](v9, 0x10A0C40929A3AB6);
  FreqDomainConvolver::~FreqDomainConvolver(&a9);
  _Unwind_Resume(a1);
}

void AUSM::GainParameters::print(AUSM::GainParameters *this, float *a2)
{
  v4 = a2[3];
  v5 = (log10f(*a2 * v4) * 20.0);
  v6 = (log10f(v4) * 20.0);
  v7 = (log10f((((a2[4] * a2[6]) * a2[8]) * a2[10]) + 0.0) * 20.0);
  v8 = (log10f(v4 * a2[1]) * 20.0);
  v9 = (log10f(a2[5] * a2[7]) * 20.0);
  v10 = (log10f(v4 * a2[2]) * 20.0);
  v11 = log10f(a2[9] * a2[11]);
  caulk::make_string("Gains dB: direct=%.1f, tuning=%.1f, dry=%.1f, reverb=%.1f, wet=%.1f, ppReverb=%.1f, ppWet=%.1f", this, *&v5, *&v6, *&v7, *&v8, *&v9, *&v10, (v11 * 20.0));
}

uint64_t AUSM::ChannelGeometry::update(AUSM::ChannelGeometry *this, int a2, double a3, double a4, double a5, double a6, __n128 a7, float32x4_t a8)
{
  v10 = *this;
  v11 = *(*this + 276);
  if ((*(this + 760) & 1) != 0 || (v11 == *(this + 191) ? (_ZF = a2 == 0) : (_ZF = 0), !_ZF))
  {
    *(this + 191) = v11;
    *(this + 760) = 0;
    v13 = atomic_load((v10[1] + 80));
    if (v13 == 1 || !v13 && *(*v10 + 108) > 1u || (v14 = atomic_load((v10[1] + 72)), v14 == 5))
    {
      *(this + 47) = 0;
      v15 = *this;
    }

    else
    {
      v15 = *this;
      *(this + 47) = *(*this + 84);
    }

    v422 = v15[6];
    v22 = atomic_load((v15->i64[1] + 80));
    if (v22 == 1 || !v22 && *(v15->i64[0] + 108) > 1u || (v23 = atomic_load((v15->i64[1] + 72)), v23 == 5))
    {
      *(this + 4) = 0u;
      v24 = xmmword_1DE095680;
    }

    else
    {
      v76 = atomic_load((*(*this + 8) + 80));
      if (v76 != 3)
      {
        Parameter = ausdk::AUElement::GetParameter(**this, 2u);
        v104 = ausdk::AUElement::GetParameter(**this, 0x22u);
        v105 = vmulq_f32(v422, xmmword_1DE09BFF0);
        v106 = vnegq_f32(v105);
        v107 = vtrn2q_s32(v105, vtrn1q_s32(v105, v106));
        v108 = vmlaq_n_f32(vmulq_f32(vextq_s8(v105, v106, 8uLL), 0), vextq_s8(v107, v107, 8uLL), Parameter * v104);
        v109 = vrev64q_s32(v105);
        v109.i32[0] = v106.i32[1];
        v109.i32[3] = v106.i32[2];
        v110 = vmlaq_f32(v108, 0, v109);
        v111 = vnegq_f32(v110);
        v112 = vtrn2q_s32(v110, vtrn1q_s32(v110, v111));
        v113 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v110, v111, 8uLL), *v422.f32, 1), vextq_s8(v112, v112, 8uLL), v422.f32[0]);
        v114 = vrev64q_s32(v110);
        v114.i32[0] = v111.i32[1];
        v114.i32[3] = v111.i32[2];
        *(this + 4) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v110, v422, 3), v114, v422, 2), v113);
        if (*(*(this + 1) + 465) == 1)
        {
          v115 = *this;
          v116 = *(*this + 112);
          *(this + 144) = v116;
          if (v116 == 1)
          {
            v117 = atomic_load((*(v115 + 8) + 224));
            v118 = *this;
            if (v117 == 1)
            {
              v119 = v118[8];
            }

            else
            {
              v384 = v118[8];
              v385 = vnegq_f32(v384);
              v386 = vtrn2q_s32(v384, vtrn1q_s32(v384, v385));
              v387 = vmlaq_f32(vmulq_f32(vextq_s8(v384, v385, 8uLL), 0), 0, vextq_s8(v386, v386, 8uLL));
              v388 = vrev64q_s32(v384);
              v388.i32[0] = v385.i32[1];
              v388.i32[3] = v385.i32[2];
              v389 = vaddq_f32(vaddq_f32(v388, vmulq_f32(v384, 0)), v387);
              v390 = vnegq_f32(v389);
              v391 = vtrn2q_s32(v389, vtrn1q_s32(v389, v390));
              v392 = vrev64q_s32(v389);
              v392.i32[0] = v390.i32[1];
              v392.i32[3] = v390.i32[2];
              v119 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v389, v422, 3), v392, vdupq_laneq_s32(v422, 2)), vmlaq_f32(vmulq_lane_f32(vextq_s8(v389, v390, 8uLL), *v422.f32, 1), vextq_s8(v391, v391, 8uLL), vdupq_lane_s32(*v422.f32, 0)));
            }

            *(this + 10) = v119;
          }

LABEL_24:
          *(this + 80) = 0;
          v25 = ausdk::AUElement::GetParameter(**this, 0x1Cu);
          v26 = v25;
          if (*(*(this + 1) + 464) == 1 && v25 > 0.0)
          {
            v27 = *this;
            v28 = atomic_load((*(*this + 8) + 80));
            if (v28 != 1 && (v28 || *(*v27 + 108) <= 1u))
            {
              v29 = atomic_load((v27[1] + 72));
              if (v29 != 5)
              {
                v30 = ausdk::AUElement::GetParameter(**this, 0x1Du);
                v31 = *this;
                if (v30 <= 0.0)
                {
                  v120 = ausdk::AUElement::GetParameter(*v31, 0x1Eu);
                  if (v120 <= 0.0)
                  {
                    goto LABEL_52;
                  }

                  LODWORD(v121) = 0;
                  *(&v121 + 1) = -v120;
                  v122 = *(this + 4);
                  v123 = vaddq_f32(v121, v122);
                  v75 = vsubq_f32(v122, v121);
                  *(this + 6) = v123;
                }

                else
                {
                  v32 = atomic_load((*(v31 + 8) + 80));
                  if (v32 == 3)
                  {
                    v33 = *(this + 5);
                    v34 = __sincosf_stret((*(this + 4) * 0.017453) * 0.5);
                    v35 = __sincosf_stret((v33 * 0.017453) * 0.5);
                    v36.f32[0] = -((v34.__sinval * v35.__sinval) - ((v34.__cosval * v35.__cosval) * 0.0));
                    v36.f32[1] = (v34.__sinval * (v35.__cosval * 0.0)) + (v35.__sinval * v34.__cosval);
                    v36.f32[2] = (v34.__cosval * (v35.__sinval * -0.0)) + (v35.__cosval * v34.__sinval);
                    v36.f32[3] = (v34.__cosval * v35.__cosval) + ((v34.__sinval * v35.__sinval) * 0.0);
                    v37 = vnegq_f32(v36);
                    v38 = vtrn2q_s32(v36, vtrn1q_s32(v36, v37));
                    v39 = vrev64q_s32(v36);
                    v39.i32[0] = v37.i32[1];
                    v39.i32[3] = v37.i32[2];
                    v422 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v422, 3), v39, v422, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v37, 8uLL), *v422.f32, 1), vextq_s8(v38, v38, 8uLL), v422.f32[0]));
                  }

                  v40 = __sincosf_stret((v30 * -0.017453) * 0.5);
                  v41 = vmulq_f32(v422, v422);
                  *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
                  v41.i32[0] = vadd_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)).u32[0];
                  v42 = vrecpe_f32(v41.u32[0]);
                  v43 = vmul_f32(v42, vrecps_f32(v41.u32[0], v42));
                  v44 = vmulq_n_f32(vmulq_f32(v422, xmmword_1DE09BFF0), vmul_f32(v43, vrecps_f32(v41.u32[0], v43)).f32[0]);
                  v45 = vnegq_f32(v44);
                  v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
                  v47 = vrev64q_s32(v44);
                  v47.i32[0] = v45.i32[1];
                  v47.i32[3] = v45.i32[2];
                  v48 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v44, v40.__cosval + ((v40.__sinval * 0.0) * 0.0)), v47, v40.__sinval - (v40.__cosval * 0.0)), vmlaq_n_f32(vmulq_n_f32(vextq_s8(v44, v45, 8uLL), (v40.__sinval * 0.0) + (v40.__cosval * 0.0)), vextq_s8(v46, v46, 8uLL), -((v40.__sinval * 0.0) - (v40.__cosval * 0.0))));
                  v49 = vnegq_f32(v48);
                  v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
                  v51 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v422.f32, 1), vextq_s8(v50, v50, 8uLL), v422.f32[0]);
                  v52 = vrev64q_s32(v48);
                  v52.i32[0] = v49.i32[1];
                  v52.i32[3] = v49.i32[2];
                  v53 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v48, v422, 3), v52, v422, 2), v51);
                  v54 = *(this + 4);
                  v55 = vmulq_f32(v53, xmmword_1DE09BFF0);
                  v56 = vnegq_f32(v55);
                  v57 = vtrn2q_s32(v55, vtrn1q_s32(v55, v56));
                  v58 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v55, v56, 8uLL), *v54.f32, 1), vextq_s8(v57, v57, 8uLL), v54.f32[0]);
                  v59 = vrev64q_s32(v55);
                  v59.i32[0] = v56.i32[1];
                  v59.i32[3] = v56.i32[2];
                  v60 = vmlaq_laneq_f32(v58, v59, v54, 2);
                  v61 = vnegq_f32(v60);
                  v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
                  v63 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), *v53.f32, 1), vextq_s8(v62, v62, 8uLL), v53.f32[0]);
                  v64 = vrev64q_s32(v60);
                  v64.i32[0] = v61.i32[1];
                  v64.i32[3] = v61.i32[2];
                  a7 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v60, v53, 3), v64, v53, 2), v63);
                  v65 = vmulq_f32(v53, v53);
                  *v65.i8 = vadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
                  v65.i32[0] = vadd_f32(*v65.i8, vdup_lane_s32(*v65.i8, 1)).u32[0];
                  *v64.f32 = vrecpe_f32(v65.u32[0]);
                  *v64.f32 = vmul_f32(*v64.f32, vrecps_f32(v65.u32[0], *v64.f32));
                  v66 = vmulq_n_f32(v55, vmul_f32(*v64.f32, vrecps_f32(v65.u32[0], *v64.f32)).f32[0]);
                  v67 = vmulq_f32(v66, xmmword_1DE09BFF0);
                  v68 = vnegq_f32(v67);
                  v69 = vtrn2q_s32(v67, vtrn1q_s32(v67, v68));
                  v70 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v67, v68, 8uLL), *v54.f32, 1), vextq_s8(v69, v69, 8uLL), v54.f32[0]);
                  v71 = vrev64q_s32(v67);
                  v71.i32[0] = v68.i32[1];
                  v71.i32[3] = v68.i32[2];
                  v72 = vmlaq_laneq_f32(v70, v71, v54, 2);
                  v73 = vnegq_f32(v72);
                  v74 = vtrn2q_s32(v72, vtrn1q_s32(v72, v73));
                  a8 = vrev64q_s32(v72);
                  a8.i32[0] = v73.i32[1];
                  a8.i32[3] = v73.i32[2];
                  v75 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v72, v66, 3), a8, v66, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v72, v73, 8uLL), *v66.f32, 1), vextq_s8(v74, v74, 8uLL), v66.f32[0]));
                  *(this + 6) = a7;
                }

                *(this + 7) = v75;
                *(this + 80) = 1;
              }
            }
          }

LABEL_52:
          *(this + 21) = v26;
          v124 = *this;
          v125 = *(this + 1);
          v126 = *(*this + 48);
          *(this + 45) = 1065353216;
          *(this + 8) = v126;
          *(this + 44) = *(v124 + 72);
          *(this + 46) = *(v125 + 552);
          v127 = *(this + 9);
          v433 = *(this + 8);
          v434 = v127;
          v128 = *(this + 11);
          v435 = *(this + 10);
          v436 = v128;
          v129 = *(this + 5);
          v429 = *(this + 4);
          v430 = v129;
          v130 = *(this + 7);
          v431 = *(this + 6);
          v432 = v130;
          v131 = atomic_load((*(v124 + 8) + 80));
          if (v131 == 1 || !v131 && *(*v124 + 108) > 1u)
          {
            goto LABEL_56;
          }

          v132 = atomic_load((*(v124 + 8) + 72));
          if (v132 == 5)
          {
            goto LABEL_56;
          }

          v275 = *(this + 4);
          v276 = *(&v436 + 3);
          v277 = *(this + 11);
          if ((*(*(*(*this + 8) + 232) + 3112) & 1) == 0 && ((v334 = *(this + 1), (v335 = atomic_load((v334 + 400))) != 0) || *(v334 + 404)))
          {
            v427 = *(this + 4);
            v278 = AUSM::SoundStage::warp(*(this + 1), &v429, &v436 + 1, &v436 + 2, v277, *(&v436 + 3));
            v275 = v427;
          }

          else
          {
            v278 = 1;
          }

          if (*(*(this + 1) + 1088) == 1)
          {
            v336 = atomic_load((*(*(*this + 8) + 232) + 163));
            if (v336)
            {
              v428 = v275;
              v278 &= AUSM::SoundStage::warp(*(this + 1) + 592, &v429, &v436 + 1, &v436 + 2, v277, v276);
              v275 = v428;
            }
          }

          if (*(this + 144) == 1)
          {
            v337 = vmulq_f32(v275, v275);
            v338 = v337.f32[2] + vaddv_f32(*v337.f32);
            if (sqrtf(v338) > 0.001)
            {
              v339 = vmulq_f32(v429, v429);
              v340 = v339.f32[2] + vaddv_f32(*v339.f32);
              if (sqrtf(v340) > 0.001)
              {
                v341 = sqrtf(v338 * v340);
                v130.i32[0] = 953267991;
                if (v341 <= 0.0001)
                {
                  v347.i64[0] = 0;
                  v347.i32[2] = 0;
                  v348 = 1.0;
                }

                else
                {
                  v342 = vmulq_f32(v275, v429);
                  v343 = v342.f32[2] + vaddv_f32(*v342.f32);
                  if (((v343 / v341) + 1.0) >= 0.0001)
                  {
                    a8 = vnegq_f32(v275);
                    v393 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v429, v429), v429, 0xCuLL), a8), v429, vextq_s8(vuzp1q_s32(v275, v275), v275, 0xCuLL));
                    v347 = vextq_s8(vuzp1q_s32(v393, v393), v393, 0xCuLL);
                    v348 = v343 + v341;
                  }

                  else
                  {
                    v344.i32[1] = 0;
                    v345.i32[0] = 0;
                    v345.i32[3] = 0;
                    v345.i32[1] = v275.i32[2];
                    v345.f32[2] = -v275.f32[1];
                    v346 = vmulq_f32(v345, v345);
                    v346.f32[0] = v346.f32[2] + vaddv_f32(*v346.f32);
                    *v344.i32 = -v275.f32[2];
                    v344.i64[1] = v275.u32[0];
                    v347 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v130, v346), 0), v344, v345);
                    v348 = 0.0;
                  }
                }

                v347.f32[3] = v348;
                v394 = vmulq_f32(v347, v347);
                v395 = vadd_f32(*v394.i8, *&vextq_s8(v394, v394, 8uLL));
                if (vaddv_f32(v395) == 0.0)
                {
                  v396 = xmmword_1DE097CE0;
                }

                else
                {
                  v397 = vadd_f32(v395, vdup_lane_s32(v395, 1)).u32[0];
                  v398 = vrsqrte_f32(v397);
                  v399 = vmul_f32(v398, vrsqrts_f32(v397, vmul_f32(v398, v398)));
                  v396 = vmulq_n_f32(v347, vmul_f32(v399, vrsqrts_f32(v397, vmul_f32(v399, v399))).f32[0]);
                }

                v400 = vnegq_f32(v435);
                v401 = vtrn2q_s32(v435, vtrn1q_s32(v435, v400));
                a7 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v435, v400, 8uLL), *v396.f32, 1), vextq_s8(v401, v401, 8uLL), v396.f32[0]);
                v402 = vrev64q_s32(v435);
                v402.i32[0] = v400.i32[1];
                v402.i32[3] = v400.i32[2];
                v435 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v435, v396, 3), v402, v396, 2), a7);
              }
            }
          }

          if (v430 == 1)
          {
            v437 = 1065353216;
            v438 = 1065353216;
            v403 = *(&v436 + 3);
            v404 = *(this + 11);
            if ((*(*(*(*this + 8) + 232) + 3112) & 1) == 0 && ((v406 = *(this + 1), (v407 = atomic_load((v406 + 400))) != 0) || *(v406 + 404)))
            {
              v405 = AUSM::SoundStage::warp(*(this + 1), &v431, &v438, &v437, *(this + 11), *(&v436 + 3));
            }

            else
            {
              v405 = 1;
            }

            if (*(*(this + 1) + 1088) == 1)
            {
              v408 = atomic_load((*(*(*this + 8) + 232) + 163));
              if (v408)
              {
                v405 &= AUSM::SoundStage::warp(*(this + 1) + 592, &v431, &v438, &v437, v404, v403);
              }
            }

            v409 = *(&v436 + 3);
            v410 = *(this + 11);
            if ((*(*(*(*this + 8) + 232) + 3112) & 1) == 0 && ((v412 = *(this + 1), (v413 = atomic_load((v412 + 400))) != 0) || *(v412 + 404)))
            {
              v411 = AUSM::SoundStage::warp(*(this + 1), &v432, &v438, &v437, *(this + 11), *(&v436 + 3));
            }

            else
            {
              v411 = 1;
            }

            if (*(*(this + 1) + 1088) == 1)
            {
              v414 = atomic_load((*(*(*this + 8) + 232) + 163));
              if (v414)
              {
                v411 &= AUSM::SoundStage::warp(*(this + 1) + 592, &v432, &v438, &v437, v410, v409);
              }
            }

            if (v411 & v405 & v278)
            {
              goto LABEL_56;
            }
          }

          else if (v278)
          {
LABEL_56:
            v133 = v434;
            *(this + 16) = v433;
            *(this + 17) = v133;
            v134 = v436;
            *(this + 18) = v435;
            *(this + 19) = v134;
            v135 = v430;
            *(this + 12) = v429;
            *(this + 13) = v135;
            v136 = v432;
            *(this + 14) = v431;
            *(this + 15) = v136;
LABEL_57:
            v10 = *this;
            v16 = *(this + 1);
            v17 = *(v16 + 1068);
            goto LABEL_58;
          }

          if (a2)
          {
            v415 = v434;
            *(this + 16) = v433;
            *(this + 17) = v415;
            v416 = v436;
            *(this + 18) = v435;
            *(this + 19) = v416;
            v417 = v430;
            *(this + 12) = v429;
            *(this + 13) = v417;
            v418 = v432;
            *(this + 14) = v431;
            *(this + 15) = v418;
          }

          *(this + 760) = 1;
          goto LABEL_57;
        }

LABEL_23:
        *(this + 144) = 0;
        goto LABEL_24;
      }

      SnappedCoordinates = *(this + 4);
      v77 = *(this + 5);
      v79 = *(this + 6);
      v80 = atomic_load((*this + 272));
      v81 = *this;
      if ((v80 & 1) == 0)
      {
        if (*(v81 + 177) == 1)
        {
          SnappedCoordinates = AUSM::SnapCoordinates::getSnappedCoordinates(v81 + 216, 0, 0, *(this + 4), *(this + 5));
          v77 = v82;
          v81 = *this;
        }

        if (*(v81 + 178) == 1)
        {
          SnappedCoordinates = AUSM::SnapCoordinates::getExcludedCoordinates(v81 + 216, *(v81 + 32), v81, SnappedCoordinates, v77);
          v77 = v83;
          v81 = *this;
        }
      }

      v84 = *(v81 + 128);
      v85 = vnegq_f32(v84);
      v86 = vtrn2q_s32(v84, vtrn1q_s32(v84, v85));
      v87 = vrev64q_s32(v84);
      v87.i32[0] = v85.i32[1];
      v87.i32[3] = v85.i32[2];
      v88 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v84, v422, 3), v87, v422, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v84, v85, 8uLL), *v422.f32, 1), vextq_s8(v86, v86, 8uLL), v422.f32[0]));
      if (*(v81 + 144) == 1)
      {
        v89 = vmulq_f32(v88, xmmword_1DE097CE0);
        v90 = &_PromotedConst;
        if (vaddv_f32(vadd_f32(*v89.i8, *&vextq_s8(v89, v89, 8uLL))) >= 0.0)
        {
          v90 = &_PromotedConst_36212;
        }

        _simd_slerp_internal(v88, *v90, *(*(this + 1) + 444));
      }

      v422 = v88;
      v91 = __sincosf_stret(SnappedCoordinates * 0.017453);
      v92 = __sincosf_stret(v77 * 0.017453);
      v93 = vmulq_f32(v422, xmmword_1DE09BFF0);
      v94 = vnegq_f32(v93);
      v95 = vtrn2q_s32(v93, vtrn1q_s32(v93, v94));
      v96 = vmulq_n_f32(vextq_s8(v93, v94, 8uLL), (v91.__sinval * v79) * v92.__cosval);
      v97 = vrev64q_s32(v93);
      v97.i32[0] = v94.i32[1];
      v97.i32[3] = v94.i32[2];
      v98 = vmlaq_n_f32(vmlaq_n_f32(v96, vextq_s8(v95, v95, 8uLL), (v91.__cosval * v79) * v92.__cosval), v97, -(v79 * v92.__sinval));
      v99 = vnegq_f32(v98);
      v100 = vtrn2q_s32(v98, vtrn1q_s32(v98, v99));
      v101 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v98, v99, 8uLL), *v422.f32, 1), vextq_s8(v100, v100, 8uLL), v422.f32[0]);
      v102 = vrev64q_s32(v98);
      v102.i32[0] = v99.i32[1];
      v102.i32[3] = v99.i32[2];
      *(this + 4) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v98, v422, 3), v102, v422, 2), v101);
      v24 = xmmword_1DE097CE0;
    }

    *(this + 10) = v24;
    goto LABEL_23;
  }

  v16 = *(this + 1);
  v17 = *(v16 + 1068);
  if (*(this + 192) != v17)
  {
LABEL_58:
    *(this + 192) = v17;
    v137 = *(this + 17);
    *(this + 24) = *(this + 16);
    *(this + 25) = v137;
    v138 = *(this + 19);
    *(this + 26) = *(this + 18);
    *(this + 27) = v138;
    v139 = *(this + 13);
    *(this + 20) = *(this + 12);
    *(this + 21) = v139;
    v140 = *(this + 15);
    *(this + 22) = *(this + 14);
    *(this + 23) = v140;
    v141 = *(v16 + 428);
    v142 = *(v16 + 444);
    v143 = atomic_load((v10[1] + 80));
    if (v143 != 1 && (v143 || *(*v10 + 108) <= 1u))
    {
      v144 = atomic_load((v10[1] + 72));
      if (v144 != 5)
      {
        v145 = *this;
        v146 = *(*this + 76);
        if (v146 < 0.999)
        {
          v147 = *(this + 1);
          v148 = v147[30];
          v149 = v147[31].f32[1];
          if (v146 > 0.001)
          {
            v150 = vmulq_f32(v148, xmmword_1DE097CE0);
            v151 = &_PromotedConst;
            if (vaddv_f32(vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL))) >= 0.0)
            {
              v151 = &_PromotedConst_36212;
            }

            v423 = v149;
            _simd_slerp_internal(v148, *v151, v141);
            v149 = v141 + ((1.0 - v141) * v423);
          }

          if (*(v145 + 144) == 1)
          {
            v152 = vmulq_f32(v148, xmmword_1DE097CE0);
            v153 = &_PromotedConst;
            if (vaddv_f32(vadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL))) >= 0.0)
            {
              v153 = &_PromotedConst_36212;
            }

            v424 = v149;
            _simd_slerp_internal(v148, *v153, v142);
            v149 = v424;
          }

          v154 = vmulq_f32(v148, xmmword_1DE09BFF0);
          v155 = vnegq_f32(v154);
          v156 = vtrn2q_s32(v154, vtrn1q_s32(v154, v155));
          v157 = vextq_s8(v156, v156, 8uLL);
          v158 = vextq_s8(v154, v155, 8uLL);
          a7 = vrev64q_s32(v154);
          a7.n128_u32[0] = v155.u32[1];
          a7.n128_u32[3] = v155.u32[2];
          v159 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v158, *(this + 192), 1), v157, COERCE_FLOAT(*(this + 12))), a7, *(this + 12), 2);
          v160 = vdupq_lane_s32(*v148.f32, 0);
          v161 = vnegq_f32(v159);
          v162 = vtrn2q_s32(v159, vtrn1q_s32(v159, v161));
          v163 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v159, v161, 8uLL), *v148.f32, 1), vextq_s8(v162, v162, 8uLL), v148.f32[0]);
          a8 = vdupq_laneq_s32(v148, 2);
          v164 = vrev64q_s32(v159);
          v164.i32[0] = v161.i32[1];
          v164.i32[3] = v161.i32[2];
          *(this + 20) = vmulq_n_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v159, v148, 3), v164, v148, 2), v163), v149);
          if (*(this + 272) == 1)
          {
            v165 = *(this + 18);
            v166 = vnegq_f32(v165);
            v167 = vtrn2q_s32(v165, vtrn1q_s32(v165, v166));
            v168 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v165, v166, 8uLL), *v148.f32, 1), vextq_s8(v167, v167, 8uLL), v160);
            v169 = vrev64q_s32(v165);
            v169.i32[0] = v166.i32[1];
            v169.i32[3] = v166.i32[2];
            *(this + 26) = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v165, v148, 3), v169, a8), v168);
          }

          if (*(this + 208) == 1)
          {
            v170 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v158, *(this + 224), 1), v157, COERCE_FLOAT(*(this + 14))), a7, *(this + 14), 2);
            v171 = vnegq_f32(v170);
            v172 = vtrn2q_s32(v170, vtrn1q_s32(v170, v171));
            v173 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v170, v171, 8uLL), *v148.f32, 1), vextq_s8(v172, v172, 8uLL), v160);
            v174 = vrev64q_s32(v170);
            v174.i32[0] = v171.i32[1];
            v174.i32[3] = v171.i32[2];
            v175 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v158, *(this + 240), 1), v157, COERCE_FLOAT(*(this + 15))), a7, *(this + 15), 2);
            v176 = vnegq_f32(v175);
            v177 = vtrn2q_s32(v175, vtrn1q_s32(v175, v176));
            a7 = vextq_s8(v177, v177, 8uLL);
            v178 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v175, v176, 8uLL), *v148.f32, 1), a7, v160);
            v179 = vrev64q_s32(v175);
            v179.i32[0] = v176.i32[1];
            v179.i32[3] = v176.i32[2];
            *(this + 22) = vmulq_n_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v170, v148, 3), v174, a8), v173), v149);
            *(this + 23) = vmulq_n_f32(vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v175, v148, 3), v179, a8), v178), v149);
          }
        }
      }
    }

    v10 = *this;
    v16 = *(this + 1);
    v18 = *(v16 + 1072);
    goto LABEL_76;
  }

  v18 = *(v16 + 1072);
  if (*(this + 193) != v18)
  {
LABEL_76:
    *(this + 193) = v18;
    v180 = *(this + 25);
    *(this + 32) = *(this + 24);
    *(this + 33) = v180;
    v181 = *(this + 27);
    *(this + 34) = *(this + 26);
    *(this + 35) = v181;
    v182 = *(this + 21);
    *(this + 28) = *(this + 20);
    *(this + 29) = v182;
    v183 = *(this + 23);
    *(this + 30) = *(this + 22);
    *(this + 31) = v183;
    v184 = *(v16 + 428);
    v185 = *(v16 + 436);
    v186 = atomic_load((v10[1] + 80));
    if (v186 != 1 && (v186 || *(*v10 + 108) <= 1u))
    {
      v187 = atomic_load((v10[1] + 72));
      if (v187 != 5)
      {
        v189 = vmulq_f32(*(*(this + 1) + 512), *(*(this + 1) + 512));
        v188 = sqrtf(v189.f32[2] + vaddv_f32(*v189.f32));
        v189.i32[0] = 981668463;
        if (v188 > 0.001 && *(*this + 76) < 0.999)
        {
          v190 = atomic_load((*(*this + 8) + 80));
          if (v190 != 3 || v185 > 0.001)
          {
            v191 = *this;
            if ((*(*this + 144) & 1) == 0)
            {
              v192 = *(*(this + 1) + 512);
              a7.n128_u32[0] = *(v191 + 76);
              v193 = vcgtq_f32(a7, v189).u64[0];
              v194 = atomic_load((*(v191 + 8) + 80));
              a7.n128_u32[0] = 3;
              a8.i32[0] = v194;
              v195 = vbslq_s8(vdupq_lane_s32(v193, 0), vmulq_n_f32(v192, 1.0 - v184), v192);
              v196 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a8, a7), 0), vmulq_n_f32(v195, v185), v195);
              v197 = *(this + 20);
              if (*(this + 336) == 1)
              {
                v198 = vsubq_f32(*(this + 31), v196);
                *(this + 30) = vsubq_f32(*(this + 30), v196);
                *(this + 31) = v198;
              }

              v425 = vsubq_f32(v197, v196);
              v199 = *this;
              v200 = vmulq_f32(v197, v197);
              v201 = AUSM::DistanceGain::calculateDistanceGain((*this + 188), sqrtf(v200.f32[2] + vaddv_f32(*v200.f32)));
              v202 = v425;
              v203 = v201;
              if (v201 > 0.000001)
              {
                v204 = vmulq_f32(v425, v425);
                v205 = AUSM::DistanceGain::calculateDistanceGain((v199 + 188), sqrtf(v204.f32[2] + vaddv_f32(*v204.f32)));
                AUSM::InputGeometry::clampDistanceGain(v199, (v205 / v203) * *(this + 108), *(v199 + 68));
                *(this + 140) = v206;
                v202 = v425;
              }

              *(this + 28) = v202;
            }
          }
        }
      }
    }

    v10 = *this;
    v16 = *(this + 1);
    v19 = *(v16 + 1076);
    goto LABEL_91;
  }

  v19 = *(v16 + 1076);
  if (*(this + 194) == v19)
  {
    v20 = *(v16 + 1084);
    if (v20 == *(this + 195))
    {
      return 0;
    }

    goto LABEL_111;
  }

LABEL_91:
  *(this + 194) = v19;
  v207 = *(this + 33);
  *(this + 40) = *(this + 32);
  *(this + 41) = v207;
  v208 = *(this + 35);
  *(this + 42) = *(this + 34);
  *(this + 43) = v208;
  v209 = *(this + 29);
  *(this + 36) = *(this + 28);
  *(this + 37) = v209;
  v210 = *(this + 31);
  *(this + 38) = *(this + 30);
  *(this + 39) = v210;
  v211 = *(v16 + 428);
  v212 = *(v16 + 444);
  v213 = atomic_load((v10[1] + 80));
  if (v213 != 1 && (v213 || *(*v10 + 108) <= 1u))
  {
    v214 = atomic_load((v10[1] + 72));
    if (v214 != 5)
    {
      v215 = *this;
      v216 = *(*this + 76);
      if (v216 < 0.999)
      {
        v217 = *(*(this + 1) + 528);
        if (v216 > 0.001)
        {
          v218 = vmulq_f32(v217, xmmword_1DE097CE0);
          if (vaddv_f32(vadd_f32(*v218.i8, *&vextq_s8(v218, v218, 8uLL))) >= 0.0)
          {
            v219 = &_PromotedConst_36212;
          }

          else
          {
            v219 = &_PromotedConst;
          }

          _simd_slerp_internal(v217, *v219, v211);
        }

        if (*(v215 + 144) == 1)
        {
          v220 = vmulq_f32(v217, xmmword_1DE097CE0);
          if (vaddv_f32(vadd_f32(*v220.i8, *&vextq_s8(v220, v220, 8uLL))) >= 0.0)
          {
            v221 = &_PromotedConst_36212;
          }

          else
          {
            v221 = &_PromotedConst;
          }

          _simd_slerp_internal(v217, *v221, v212);
        }

        v222 = vmulq_f32(v217, xmmword_1DE09BFF0);
        v223 = vnegq_f32(v222);
        v224 = vtrn2q_s32(v222, vtrn1q_s32(v222, v223));
        v225 = vextq_s8(v224, v224, 8uLL);
        v226 = vextq_s8(v222, v223, 8uLL);
        v227 = vrev64q_s32(v222);
        v227.i32[0] = v223.i32[1];
        v227.i32[3] = v223.i32[2];
        v228 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v226, *(this + 448), 1), v225, COERCE_FLOAT(*(this + 28))), v227, *(this + 28), 2);
        v229 = vdupq_lane_s32(*v217.f32, 0);
        v230 = vnegq_f32(v228);
        v231 = vtrn2q_s32(v228, vtrn1q_s32(v228, v230));
        v232 = vextq_s8(v231, v231, 8uLL);
        v233 = vdupq_laneq_s32(v217, 2);
        v234 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v228, v230, 8uLL), *v217.f32, 1), v232, v217.f32[0]);
        v235 = vrev64q_s32(v228);
        v235.i32[0] = v230.i32[1];
        v235.i32[3] = v230.i32[2];
        *(this + 36) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v228, v217, 3), v235, v217, 2), v234);
        if (*(this + 528) == 1)
        {
          v236 = *(this + 34);
          v237 = vnegq_f32(v236);
          v238 = vtrn2q_s32(v236, vtrn1q_s32(v236, v237));
          v239 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v236, v237, 8uLL), *v217.f32, 1), vextq_s8(v238, v238, 8uLL), v229);
          v240 = vrev64q_s32(v236);
          v240.i32[0] = v237.i32[1];
          v240.i32[3] = v237.i32[2];
          *(this + 42) = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v236, v217, 3), v240, v233), v239);
        }

        if (*(this + 464) == 1)
        {
          v241 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v226, *(this + 480), 1), v225, COERCE_FLOAT(*(this + 30))), v227, *(this + 30), 2);
          v242 = vnegq_f32(v241);
          v243 = vtrn2q_s32(v241, vtrn1q_s32(v241, v242));
          v244 = vrev64q_s32(v241);
          v244.i32[0] = v242.i32[1];
          v244.i32[3] = v242.i32[2];
          v245 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v241, v217, 3), v244, v233), vmlaq_f32(vmulq_lane_f32(vextq_s8(v241, v242, 8uLL), *v217.f32, 1), vextq_s8(v243, v243, 8uLL), v229));
          v246 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v226, *(this + 496), 1), v225, COERCE_FLOAT(*(this + 31))), v227, *(this + 31), 2);
          v247 = vnegq_f32(v246);
          v248 = vtrn2q_s32(v246, vtrn1q_s32(v246, v247));
          v249 = vrev64q_s32(v246);
          v249.i32[0] = v247.i32[1];
          v249.i32[3] = v247.i32[2];
          *(this + 38) = v245;
          *(this + 39) = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v246, v217, 3), v249, v233), vmlaq_f32(vmulq_lane_f32(vextq_s8(v246, v247, 8uLL), *v217.f32, 1), vextq_s8(v248, v248, 8uLL), v229));
        }
      }
    }
  }

  v16 = *(this + 1);
  v20 = *(v16 + 1084);
  if (v20 != *(this + 195))
  {
LABEL_111:
    *(this + 195) = v20;
  }

  if (*(this + 48))
  {
    v250 = 3.1623;
  }

  else
  {
    v250 = 1.0;
    if (*(this + 49) == 1)
    {
      v251 = COERCE_FLOAT(atomic_load((*(v16 + 456) + 2496)));
      v250 = __exp10f(v251 * 0.05);
      v16 = *(this + 1);
    }
  }

  v252 = v250 * *(*this + 68);
  v253 = COERCE_FLOAT(atomic_load((v16 + 544)));
  v254 = v252 * v253;
  *(this + 178) = v254;
  v255 = *(this + 1);
  v256 = v254 * *(v255 + 504);
  *(this + 177) = v256;
  *(this + 176) = v256 * *(this + 172);
  LOBYTE(v255) = atomic_load((*(v255 + 456) + 92));
  if (v255)
  {
    v257 = atomic_load((*(*this + 8) + 80));
    if (v257 != 1 && (v257 || *(**this + 108) <= 1u))
    {
      v258 = COERCE_FLOAT(atomic_load((*(this + 1) + 544)));
      *(this + 177) = (v250 * v258) * *(*(this + 1) + 504);
    }
  }

  *(this + 179) = *(this + 173);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 94) = _D0;
  v263 = atomic_load((*(*this + 8) + 80));
  if (v263 != 1 && (v263 || *(**this + 108) < 2u))
  {
    v264 = *this;
    v265 = *(*this + 64);
    if (v265)
    {
      if (v265 == 4)
      {
        v266 = atomic_load((*(*(this + 1) + 456) + 85));
        if (v266)
        {
          v267 = ausdk::AUElement::GetParameter(**this, 8u);
          v268 = *(this + 1);
          v269 = *(v268 + 548);
          v270 = 1.0;
          v271 = (v267 * 0.01) * (1.0 - *(this + 47));
          v272 = 1.0 - v271;
          v273 = 1.0;
          if (v269 != 1.0)
          {
            v274 = v269 * v269;
            if ((v269 * v269) < 0.0001)
            {
              v274 = 0.0001;
            }

            v270 = sqrtf(1.0 / (v271 + (v272 * v274)));
            v273 = v269 * v270;
          }

          *(this + 181) = sqrtf(v271);
          *(this + 180) = sqrtf(v272);
          *(this + 183) = v270;
          *(this + 182) = v273;
        }

        else
        {
          *(this + 45) = xmmword_1DE09D990;
          v268 = *(this + 1);
        }

        v349 = atomic_load((*(v268 + 456) + 86));
        if (v349)
        {
          v350 = *this;
          v351 = *(this + 142);
          v352 = 1.0;
          v353 = *(*this + 184) * (1.0 - *(this + 175));
          v354 = 1.0 - v353;
          v355 = 1.0;
          if (v351 != 1.0)
          {
            v356 = v351 * v351;
            if ((v351 * v351) < 0.0001)
            {
              v356 = 0.0001;
            }

            v352 = sqrtf(1.0 / (v353 + (v354 * v356)));
            v355 = v351 * v352;
          }

          *(this + 185) = sqrtf(v353);
          *(this + 184) = sqrtf(v354);
          *(this + 187) = v352;
          *(this + 186) = v355;
        }

        else
        {
          *(this + 46) = xmmword_1DE09D990;
          v350 = *this;
        }

        v357 = atomic_load((*(v350 + 8) + 72));
        if (v357 == 7)
        {
          v358 = *this;
          v359 = COERCE_FLOAT(atomic_load((*(*(this + 1) + 456) + 3060)));
          *&v360 = COERCE_FLOAT(atomic_load((*(*(this + 1) + 456) + 3068)));
          if (*(v358 + 196) == 4)
          {
            v361 = AUSM::DistanceGain::calculateDistanceGain((v358 + 188), v359);
          }

          else
          {
            v361 = *&v360;
          }

          *(this + 188) = v361 * *(this + 188);
          v362 = *(this + 1);
          v363 = COERCE_FLOAT(atomic_load((*(v362 + 456) + 3064)));
          *&v364 = COERCE_FLOAT(atomic_load((*(v362 + 456) + 3072)));
          if (*(v362 + 572) == 4)
          {
            v365 = AUSM::DistanceGain::calculateDistanceGain((v362 + 564), v363);
          }

          else
          {
            v365 = *&v364;
          }

          *(this + 189) = v365 * *(this + 189);
        }

        return 1;
      }

      v279 = *(v264 + 8);
    }

    else
    {
      v279 = *(v264 + 8);
      if ((*(*(v279 + 232) + 3112) & 1) != 0 || (v280 = *(this + 1), v281 = *(v280 + 168), v282 = *(v280 + 176), v283 = v282 - v281, v282 == v281))
      {
LABEL_140:
        v265 = 0;
      }

      else
      {
        v284 = 0;
        v285 = 0;
        v286 = *(v280 + 404);
        v287 = 0xD37A6F4DE9BD37A7 * (v283 >> 3);
        while (*(v281 + 184 * v284 + 24) != v286)
        {
          v284 = ++v285;
          if (v287 <= v285)
          {
            goto LABEL_140;
          }
        }

        v265 = *(v281 + 184 * v285 + 166) ^ 1;
      }
    }

    *(this + 45) = xmmword_1DE09D990;
    *(this + 93) = _D0;
    v288 = atomic_load((v279 + 72));
    v289 = atomic_load((*(*(this + 1) + 456) + 88));
    v290 = v288 | (v289 << 32);
    atomic_load((*(*(this + 1) + 456) + 2556));
    v291 = *(*(this + 1) + 456);
    if ((*(v291 + 3053) & 1) == 0)
    {
      atomic_load((v291 + 3054));
    }

    CurrentSoundStagePostProcReverbOverride = AUSM::InputGeometry::getCurrentSoundStagePostProcReverbOverride(*this);
    v293 = *this;
    v294 = atomic_load((*(*(this + 1) + 456) + 86));
    v295 = atomic_load((*(v293 + 8) + 212));
    if (v290 != 0x100000007)
    {
      goto LABEL_149;
    }

    if (v295 - 1 < 3)
    {
      goto LABEL_150;
    }

    if (v295)
    {
LABEL_149:
      if ((v294 & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    else if ((CurrentSoundStagePostProcReverbOverride & 1) == 0)
    {
LABEL_148:
      *(this + 92) = 1065353216;
      return 1;
    }

LABEL_150:
    if (!v265)
    {
      v332 = 0.0;
      v333 = 1.0;
LABEL_226:
      *(this + 185) = v332;
      *(this + 184) = v333;
      return 1;
    }

    if (v265 == 4)
    {
      __assert_rtn("calculateWetDryGainsWithBinauralCompatibilityMode", "AUSMBinauralCompatibilityMode.cpp", 265, "inBCM != AUSM::kBinauralCompatibilityMode_notIndicated");
    }

    v296 = vabsq_f32(*(this + 32));
    v297 = fmaxf(fmaxf(v296.f32[0], v296.f32[2]), v296.f32[1]);
    v298 = *(this + 28);
    LODWORD(v299) = HIDWORD(*(this + 56));
    v300 = COERCE_FLOAT(*(this + 57));
    v301 = vmulq_f32(v298, v298);
    v421 = sqrtf(v301.f32[2] + vaddv_f32(*v301.f32));
    v426 = v297;
    v302 = -v300;
    if (v300 >= 0.0)
    {
      LODWORD(v302) = *(this + 57);
    }

    v303 = fabsf(v298.f32[0]);
    v304 = fabsf(v299);
    v305 = fabsf(v300);
    if (v303 < v304)
    {
      v303 = v304;
    }

    if (v303 >= v305)
    {
      v305 = v303;
    }

    v306 = v305 <= 1.0;
    v307 = 1.0 / v305;
    v308 = v298.f32[0] * v307;
    v309 = v299 * v307;
    v310 = v302 * v307;
    if (v306)
    {
      LODWORD(v311) = *(this + 28);
    }

    else
    {
      v311 = v308;
    }

    if (v306)
    {
      LODWORD(v312) = HIDWORD(*(this + 56));
    }

    else
    {
      v312 = v309;
    }

    if (v306)
    {
      v313 = v302;
    }

    else
    {
      v313 = v310;
    }

    v314 = cosf(v311 * 2.75);
    v420 = cosf(v311 * 5.5);
    v419 = cosf(v311 * 8.25);
    v315 = __sincosf_stret(v312 * 2.75);
    v316 = __sincosf_stret(v312 * 5.5);
    v317 = __sincosf_stret(v312 * 8.25);
    v318 = __sincosf_stret(v313 * 2.75);
    v319 = __sincosf_stret(v313 * 5.5);
    v320 = __sincosf_stret(v313 * 8.25);
    if (v265 == 3)
    {
      v372 = (((((((((((((((((((((((v319.__cosval * 0.33435) + (((((((((((v420 * 0.17333) + 183.54) + (v316.__cosval * 0.090728)) + (v319.__cosval * -1.3577)) + 9.0542) + (v419 * 0.084913)) + (v317.__cosval * 0.07311)) + (v320.__cosval * -0.91029)) + -213.21) + (v420 * -0.0097578)) + (v316.__cosval * -0.20005))) + (v314 * -0.61198)) + (v314 * 0.29473)) + ((v316.__cosval * -0.19206) * v314)) + ((v319.__cosval * 0.16142) * v314)) + (v314 * 0.1164)) + (v315.__cosval * 0.33558)) + (v315.__cosval * -0.31178)) + ((v420 * 0.14679) * v315.__cosval)) + ((v319.__cosval * 0.16039) * v315.__cosval)) + (v315.__cosval * -0.13632)) + ((v314 * 0.069122) * v315.__cosval)) + ((v314 * 0.32307) * v315.__cosval)) + (v318.__cosval * 22.247)) + (v318.__cosval * -0.050057)) + ((v420 * 0.020197) * v318.__cosval)) + ((v316.__cosval * 0.045616) * v318.__cosval)) + (v318.__cosval * -0.058457)) + ((v314 * 0.21741) * v318.__cosval)) + ((v314 * 0.081264) * v318.__cosval)) + ((v315.__cosval * 0.088107) * v318.__cosval)) + ((v315.__cosval * -0.087962) * v318.__cosval)) + (((v314 * -0.013901) * v315.__cosval) * v318.__cosval);
      v373 = ((((((((((((((((((((((((((((((((((((((((((((v372 + 0.0) + ((v314 * 0.13318) * 0.0)) + ((v315.__cosval * 0.38735) * 0.0)) + ((v318.__cosval * 0.097508) * 0.0)) + (v316.__sinval * -0.083309)) + (v316.__sinval * -0.066559)) + ((v314 * 0.11499) * v316.__sinval)) + ((v318.__cosval * 0.061549) * v316.__sinval)) + (v316.__sinval * -0.0)) + (v319.__sinval * -5.2996)) + (v319.__sinval * -0.047782)) + ((v314 * -0.11211) * v319.__sinval)) + ((v315.__cosval * -0.025408) * v319.__sinval)) + (v319.__sinval * -0.0)) + ((v316.__sinval * 0.037466) * v319.__sinval)) + (v317.__sinval * 0.062533)) + (v320.__sinval * 0.1631)) + 0.0) + ((v420 * -0.1941) * 0.0)) + ((v316.__cosval * 0.15752) * 0.0)) + ((v319.__cosval * 0.18577) * 0.0)) + ((v314 * 1.0048) * 0.0)) + ((v315.__cosval * -0.5595) * 0.0)) + (((v314 * 0.08632) * v315.__cosval) * 0.0)) + ((v318.__cosval * 0.15699) * 0.0)) + (((v314 * 0.30522) * v318.__cosval) * 0.0)) + (((v315.__cosval * 0.12222) * v318.__cosval) * 0.0)) + ((v316.__sinval * -0.020659) * 0.0)) + (((v314 * -0.16366) * v316.__sinval) * 0.0)) + ((v316.__sinval * (v318.__cosval * -0.16716)) * 0.0)) + ((v319.__sinval * -0.25181) * 0.0)) + (((v314 * -0.1876) * v319.__sinval) * 0.0)) + (((v315.__cosval * -0.054207) * v319.__sinval) * 0.0)) + ((v317.__sinval * -0.19236) * 0.0)) + ((v320.__sinval * 0.20045) * 0.0)) + (v315.__sinval * 3.5834)) + (v315.__sinval * -2.7613)) + ((v420 * -0.023355) * v315.__sinval)) + ((v319.__cosval * -0.15607) * v315.__sinval)) + (v315.__sinval * 0.045487)) + ((v314 * -0.094484) * v315.__sinval)) + ((v314 * 0.27048) * v315.__sinval)) + ((v318.__cosval * -0.014202) * v315.__sinval)) + ((v318.__cosval * 0.2217) * v315.__sinval)) + (((v314 * 0.14338) * v318.__cosval) * v315.__sinval);
      v374 = ((((((((((((((((((((((((((((((((((((((v373 + (v315.__sinval * 0.0)) + (((v314 * -0.082677) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.22325) * 0.0) * v315.__sinval)) + ((v319.__sinval * -0.10838) * v315.__sinval)) + ((v319.__sinval * 0.050254) * v315.__sinval)) + (((v314 * -0.11465) * v319.__sinval) * v315.__sinval)) + (v315.__sinval * 0.0)) + ((v320.__sinval * 0.016123) * v315.__sinval)) + (v315.__sinval * -0.0)) + (((v420 * -0.013051) * 0.0) * v315.__sinval)) + (((v319.__cosval * 0.010975) * 0.0) * v315.__sinval)) + (((v314 * -0.26384) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.22252) * 0.0) * v315.__sinval)) + ((((v314 * -0.19312) * v318.__cosval) * 0.0) * v315.__sinval)) + (((v319.__sinval * 0.14685) * 0.0) * v315.__sinval)) + (v318.__sinval * -8.3485)) + (v318.__sinval * 4.7303)) + ((v420 * -0.23753) * v318.__sinval)) + ((v316.__cosval * -0.0048048) * v318.__sinval)) + (v318.__sinval * 1.2158)) + ((v314 * 0.38722) * v318.__sinval)) + ((v314 * 0.076032) * v318.__sinval)) + ((v315.__cosval * 0.39607) * v318.__sinval)) + ((v315.__cosval * -0.085921) * v318.__sinval)) + (((v314 * -0.40917) * v315.__cosval) * v318.__sinval)) + (v318.__sinval * -0.0)) + (((v314 * 0.12526) * 0.0) * v318.__sinval)) + (((v315.__cosval * 0.03857) * 0.0) * v318.__sinval)) + ((v316.__sinval * 0.21349) * v318.__sinval)) + ((v316.__sinval * -0.094448) * v318.__sinval)) + (((v314 * -0.13581) * v316.__sinval) * v318.__sinval)) + (v318.__sinval * -0.0)) + ((v317.__sinval * 0.098125) * v318.__sinval)) + (v318.__sinval * 0.0)) + (((v420 * 0.066185) * 0.0) * v318.__sinval)) + (((v316.__cosval * -0.48068) * 0.0) * v318.__sinval)) + (((v314 * 0.086225) * 0.0) * v318.__sinval)) + (((v315.__cosval * 0.11973) * 0.0) * v318.__sinval)) + ((((v314 * 0.36598) * v315.__cosval) * 0.0) * v318.__sinval);
      v323 = __exp10f(((((((((((((v374 + (((v316.__sinval * -0.099095) * 0.0) * v318.__sinval)) + ((v315.__sinval * -0.65276) * v318.__sinval)) + ((v315.__sinval * 0.23039) * v318.__sinval)) + (((v420 * 0.057517) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * 0.17273) * v318.__sinval)) + (((v314 * 0.046621) * v315.__sinval) * v318.__sinval)) + (((v314 * -0.1666) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * -0.0) * v318.__sinval)) + ((v315.__sinval * 0.0) * v318.__sinval)) + ((v315.__sinval * ((v314 * 0.26421) * 0.0)) * v318.__sinval)) + (v312 * 0.15403)) + (v313 * 38.738)) / 20.0);
      v375 = ((v421 + -0.07) / 0.93) + ((1.0 - ((v421 + -0.07) / 0.93)) * 0.0);
      if (v375 <= 1.0)
      {
        v376 = ((v421 + -0.07) / 0.93) + ((1.0 - ((v421 + -0.07) / 0.93)) * 0.0);
      }

      else
      {
        v376 = 1.0;
      }

      if (v375 >= 0.0)
      {
        v377 = v376;
      }

      else
      {
        v377 = 0.0;
      }

      v330 = sqrtf(v377);
      v331 = 0.13335;
    }

    else if (v265 == 2)
    {
      v366 = (((((((((((((((((((((((v319.__cosval * 0.41417) + (((((((((((v420 * 0.17461) + 232.91) + (v316.__cosval * 0.066905)) + (v319.__cosval * -0.31184)) + 10.677) + (v419 * 0.082731)) + (v317.__cosval * 0.054227)) + (v320.__cosval * -0.087131)) + -247.37) + (v420 * -0.093004)) + (v316.__cosval * -0.20598))) + (v314 * -0.60848)) + (v314 * 0.61058)) + ((v316.__cosval * -0.21637) * v314)) + ((v319.__cosval * 0.011665) * v314)) + (v314 * 0.10581)) + (v315.__cosval * 0.55623)) + (v315.__cosval * -0.36199)) + ((v420 * 0.13962) * v315.__cosval)) + ((v319.__cosval * 0.018772) * v315.__cosval)) + (v315.__cosval * -0.2837)) + ((v314 * 0.003044) * v315.__cosval)) + ((v314 * 0.25944) * v315.__cosval)) + (v318.__cosval * 3.1795)) + (v318.__cosval * -0.11151)) + ((v420 * -0.032848) * v318.__cosval)) + ((v316.__cosval * 0.050326) * v318.__cosval)) + (v318.__cosval * 0.030527)) + ((v314 * 0.055045) * v318.__cosval)) + ((v314 * 0.024401) * v318.__cosval)) + ((v315.__cosval * 0.088024) * v318.__cosval)) + ((v315.__cosval * -0.10845) * v318.__cosval)) + (((v314 * 0.0074555) * v315.__cosval) * v318.__cosval);
      v367 = ((((((((((((((((((((((((((((((((((((((((((((v366 + 0.0) + ((v314 * 0.32741) * 0.0)) + ((v315.__cosval * 0.45893) * 0.0)) + ((v318.__cosval * 0.079655) * 0.0)) + (v316.__sinval * -0.10624)) + (v316.__sinval * 0.062297)) + ((v314 * 0.021919) * v316.__sinval)) + ((v318.__cosval * 0.061559) * v316.__sinval)) + (v316.__sinval * -0.0)) + (v319.__sinval * -0.47055)) + (v319.__sinval * -0.18341)) + ((v314 * -0.038674) * v319.__sinval)) + ((v315.__cosval * -0.024865) * v319.__sinval)) + (v319.__sinval * -0.0)) + ((v316.__sinval * -0.0075084) * v319.__sinval)) + (v317.__sinval * -0.03551)) + (v320.__sinval * -0.062019)) + 0.0) + ((v420 * -0.24293) * 0.0)) + ((v316.__cosval * 0.17526) * 0.0)) + ((v319.__cosval * 0.096434) * 0.0)) + ((v314 * 1.8613) * 0.0)) + ((v315.__cosval * -0.58284) * 0.0)) + (((v314 * 0.2048) * v315.__cosval) * 0.0)) + ((v318.__cosval * -0.011461) * 0.0)) + (((v314 * 0.34232) * v318.__cosval) * 0.0)) + (((v315.__cosval * 0.048586) * v318.__cosval) * 0.0)) + ((v316.__sinval * -0.052365) * 0.0)) + (((v314 * -0.14485) * v316.__sinval) * 0.0)) + ((v316.__sinval * (v318.__cosval * -0.12912)) * 0.0)) + ((v319.__sinval * -0.23337) * 0.0)) + (((v314 * -0.13392) * v319.__sinval) * 0.0)) + (((v315.__cosval * 0.038507) * v319.__sinval) * 0.0)) + ((v317.__sinval * -0.10254) * 0.0)) + ((v320.__sinval * 0.17642) * 0.0)) + (v315.__sinval * 2.9382)) + (v315.__sinval * -2.3544)) + ((v420 * -0.056721) * v315.__sinval)) + ((v319.__cosval * 0.0070278) * v315.__sinval)) + (v315.__sinval * -0.19419)) + ((v314 * 0.047898) * v315.__sinval)) + ((v314 * 0.25534) * v315.__sinval)) + ((v318.__cosval * -0.11265) * v315.__sinval)) + ((v318.__cosval * 0.23681) * v315.__sinval)) + (((v314 * -0.018378) * v318.__cosval) * v315.__sinval);
      v368 = ((((((((((((((((((((((((((((((((((((((v367 + (v315.__sinval * 0.0)) + (((v314 * -0.14465) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.21084) * 0.0) * v315.__sinval)) + ((v319.__sinval * -0.030319) * v315.__sinval)) + ((v319.__sinval * 0.035953) * v315.__sinval)) + (((v314 * -0.024762) * v319.__sinval) * v315.__sinval)) + (v315.__sinval * 0.0)) + ((v320.__sinval * -0.072415) * v315.__sinval)) + (v315.__sinval * -0.0)) + (((v420 * -0.033363) * 0.0) * v315.__sinval)) + (((v319.__cosval * 0.077159) * 0.0) * v315.__sinval)) + (((v314 * -0.40257) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.080058) * 0.0) * v315.__sinval)) + ((((v314 * -0.10734) * v318.__cosval) * 0.0) * v315.__sinval)) + (((v319.__sinval * 0.054466) * 0.0) * v315.__sinval)) + (v318.__sinval * -7.3455)) + (v318.__sinval * 5.6269)) + ((v420 * -0.19481) * v318.__sinval)) + ((v316.__cosval * 0.016546) * v318.__sinval)) + (v318.__sinval * 1.6462)) + ((v314 * -0.082088) * v318.__sinval)) + ((v314 * 0.25778) * v318.__sinval)) + ((v315.__cosval * 0.076909) * v318.__sinval)) + ((v315.__cosval * 0.024849) * v318.__sinval)) + (((v314 * -0.22466) * v315.__cosval) * v318.__sinval)) + (v318.__sinval * -0.0)) + (((v314 * -0.029441) * 0.0) * v318.__sinval)) + (((v315.__cosval * -0.049834) * 0.0) * v318.__sinval)) + ((v316.__sinval * 0.18317) * v318.__sinval)) + ((v316.__sinval * -0.038101) * v318.__sinval)) + (((v314 * 0.017179) * v316.__sinval) * v318.__sinval)) + (v318.__sinval * -0.0)) + ((v317.__sinval * 0.13989) * v318.__sinval)) + (v318.__sinval * 0.0)) + (((v420 * 0.068949) * 0.0) * v318.__sinval)) + (((v316.__cosval * -0.48326) * 0.0) * v318.__sinval)) + (((v314 * 0.063864) * 0.0) * v318.__sinval)) + (((v315.__cosval * -0.027074) * 0.0) * v318.__sinval)) + ((((v314 * 0.19908) * v315.__cosval) * 0.0) * v318.__sinval);
      v323 = __exp10f(((((((((((((v368 + (((v316.__sinval * 0.02047) * 0.0) * v318.__sinval)) + ((v315.__sinval * -0.19467) * v318.__sinval)) + ((v315.__sinval * 0.007184) * v318.__sinval)) + (((v420 * 0.14602) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * 0.16463) * v318.__sinval)) + (((v314 * -0.098489) * v315.__sinval) * v318.__sinval)) + (((v314 * -0.10192) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * -0.0) * v318.__sinval)) + ((v315.__sinval * -0.0) * v318.__sinval)) + ((v315.__sinval * ((v314 * 0.40054) * 0.0)) * v318.__sinval)) + (v312 * -0.18001)) + (v313 * 6.0781)) / 20.0);
      v369 = 1.0;
      v370 = ((v421 + -0.03) / 0.97) + ((1.0 - ((v421 + -0.03) / 0.97)) * 0.0);
      if (v370 <= 1.0)
      {
        v369 = ((v421 + -0.03) / 0.97) + ((1.0 - ((v421 + -0.03) / 0.97)) * 0.0);
      }

      if (v370 >= 0.0)
      {
        v371 = v369;
      }

      else
      {
        v371 = 0.0;
      }

      v330 = sqrtf(v371);
      v331 = 0.35481;
    }

    else
    {
      v321 = v313;
      v322 = 0.0;
      v323 = 0.0;
      if (v265 != 1)
      {
LABEL_219:
        v378 = (1.0 - (v426 / 0.4)) * 0.0;
        v379 = v378 + ((v426 / 0.4) * 2.0);
        if (v379 <= 2.0)
        {
          v380 = v378 + ((v426 / 0.4) * 2.0);
        }

        else
        {
          v380 = 2.0;
        }

        v381 = v380 / 20.0;
        if (v379 >= 0.0)
        {
          v382 = v381;
        }

        else
        {
          v382 = 0.0;
        }

        v383 = __exp10f(v382);
        v332 = v383 * v322;
        v333 = v383 * v323;
        goto LABEL_226;
      }

      v324 = (((((((((((((((((((((((v319.__cosval * 0.29667) + (((v420 * 0.059607) + (((((((((v420 * 0.24398) + 173.55) + (v316.__cosval * 0.0096719)) + (v319.__cosval * -0.57195)) + 7.8244) + (v419 * 0.11108)) + (v317.__cosval * -0.021431)) + (v320.__cosval * 0.12549)) + -180.68)) + (v316.__cosval * -0.2028))) + (v314 * -1.1918)) + (v314 * 0.17543)) + ((v316.__cosval * -0.20524) * v314)) + ((v319.__cosval * 0.51292) * v314)) + (v314 * 0.1792)) + (v315.__cosval * 0.36118)) + (v315.__cosval * -0.28577)) + ((v420 * 0.38705) * v315.__cosval)) + ((v319.__cosval * 0.28113) * v315.__cosval)) + (v315.__cosval * -0.14872)) + ((v314 * 0.097022) * v315.__cosval)) + ((v314 * 0.31446) * v315.__cosval)) + (v318.__cosval * -0.24433)) + (v318.__cosval * -0.33416)) + ((v420 * 0.15078) * v318.__cosval)) + ((v316.__cosval * 0.073363) * v318.__cosval)) + (v318.__cosval * -0.14233)) + ((v314 * 0.75144) * v318.__cosval)) + ((v314 * 0.035417) * v318.__cosval)) + ((v315.__cosval * 0.1548) * v318.__cosval)) + ((v315.__cosval * -0.12763) * v318.__cosval)) + (((v314 * 0.26234) * v315.__cosval) * v318.__cosval);
      v325 = ((((((((((((((((((((((((((((((((((((((((((((v324 + 0.0) + ((v314 * 0.02378) * 0.0)) + ((v315.__cosval * 0.49363) * 0.0)) + ((v318.__cosval * 0.077734) * 0.0)) + (v316.__sinval * 0.0095673)) + (v316.__sinval * -0.015961)) + ((v314 * 0.27181) * v316.__sinval)) + ((v318.__cosval * 0.072475) * v316.__sinval)) + (v316.__sinval * -0.0)) + (v319.__sinval * 0.43098)) + (v319.__sinval * -0.065936)) + ((v314 * -0.32313) * v319.__sinval)) + ((v315.__cosval * 0.092138) * v319.__sinval)) + (v319.__sinval * -0.0)) + ((v316.__sinval * 0.066843) * v319.__sinval)) + (v317.__sinval * 0.21213)) + (v320.__sinval * 0.14892)) + 0.0) + ((v420 * -0.15624) * 0.0)) + ((v316.__cosval * 0.11956) * 0.0)) + ((v319.__cosval * 0.2128) * 0.0)) + ((v314 * 1.213) * 0.0)) + ((v315.__cosval * -0.54276) * 0.0)) + (((v314 * 0.074559) * v315.__cosval) * 0.0)) + ((v318.__cosval * -0.99465) * 0.0)) + (((v314 * -0.2155) * v318.__cosval) * 0.0)) + (((v315.__cosval * 0.033991) * v318.__cosval) * 0.0)) + ((v316.__sinval * -0.062352) * 0.0)) + (((v314 * -0.18973) * v316.__sinval) * 0.0)) + ((v316.__sinval * (v318.__cosval * -0.13734)) * 0.0)) + ((v319.__sinval * 0.047439) * 0.0)) + (((v314 * 0.16957) * v319.__sinval) * 0.0)) + (((v315.__cosval * -0.044035) * v319.__sinval) * 0.0)) + ((v317.__sinval * -0.2711) * 0.0)) + ((v320.__sinval * 0.043464) * 0.0)) + (v315.__sinval * 3.1729)) + (v315.__sinval * -2.6901)) + ((v420 * 0.05456) * v315.__sinval)) + ((v319.__cosval * 0.050871) * v315.__sinval)) + (v315.__sinval * 0.24192)) + ((v314 * 0.24811) * v315.__sinval)) + ((v314 * 0.22546) * v315.__sinval)) + ((v318.__cosval * 0.0079627) * v315.__sinval)) + ((v318.__cosval * 0.23104) * v315.__sinval)) + (((v314 * 0.059493) * v318.__cosval) * v315.__sinval);
      v326 = ((((((((((((((((((((((((((((((((((((((v325 + (v315.__sinval * 0.0)) + (((v314 * 0.01555) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.15208) * 0.0) * v315.__sinval)) + ((v319.__sinval * -0.059359) * v315.__sinval)) + ((v319.__sinval * 0.035894) * v315.__sinval)) + (((v314 * 0.023372) * v319.__sinval) * v315.__sinval)) + (v315.__sinval * 0.0)) + ((v320.__sinval * -0.030964) * v315.__sinval)) + (v315.__sinval * -0.0)) + (((v420 * -0.026829) * 0.0) * v315.__sinval)) + (((v319.__cosval * 0.14178) * 0.0) * v315.__sinval)) + (((v314 * -0.40797) * 0.0) * v315.__sinval)) + (((v318.__cosval * -0.047317) * 0.0) * v315.__sinval)) + ((((v314 * -0.12945) * v318.__cosval) * 0.0) * v315.__sinval)) + (((v319.__sinval * 0.020718) * 0.0) * v315.__sinval)) + (v318.__sinval * -3.3461)) + (v318.__sinval * 2.2467)) + ((v420 * -0.30843) * v318.__sinval)) + ((v316.__cosval * 0.10016) * v318.__sinval)) + (v318.__sinval * 1.0645)) + ((v314 * 1.5564) * v318.__sinval)) + ((v314 * -0.027271) * v318.__sinval)) + ((v315.__cosval * 0.54335) * v318.__sinval)) + ((v315.__cosval * -0.0078935) * v318.__sinval)) + (((v314 * -0.19994) * v315.__cosval) * v318.__sinval)) + (v318.__sinval * -0.0)) + (((v314 * 0.2109) * 0.0) * v318.__sinval)) + (((v315.__cosval * -0.08669) * 0.0) * v318.__sinval)) + ((v316.__sinval * 0.0784) * v318.__sinval)) + ((v316.__sinval * -0.14739) * v318.__sinval)) + (((v314 * -0.25634) * v316.__sinval) * v318.__sinval)) + (v318.__sinval * -0.0)) + ((v317.__sinval * 0.049279) * v318.__sinval)) + (v318.__sinval * 0.0)) + (((v420 * 0.18973) * 0.0) * v318.__sinval)) + (((v316.__cosval * -0.45187) * 0.0) * v318.__sinval)) + (((v314 * -0.51005) * 0.0) * v318.__sinval)) + (((v315.__cosval * 0.14587) * 0.0) * v318.__sinval)) + ((((v314 * 0.36258) * v315.__cosval) * 0.0) * v318.__sinval);
      v323 = __exp10f(((((((((((((v326 + (((v316.__sinval * -0.04268) * 0.0) * v318.__sinval)) + ((v315.__sinval * 0.12321) * v318.__sinval)) + ((v315.__sinval * -0.030402) * v318.__sinval)) + (((v420 * -0.019986) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * 0.010446) * v318.__sinval)) + (((v314 * -0.27917) * v315.__sinval) * v318.__sinval)) + (((v314 * -0.19801) * v315.__sinval) * v318.__sinval)) + ((v315.__sinval * 0.0) * v318.__sinval)) + ((v315.__sinval * -0.0) * v318.__sinval)) + ((v315.__sinval * ((v314 * 0.44556) * 0.0)) * v318.__sinval)) + (v312 * 0.23312)) + (v321 * -0.97659)) / 20.0);
      v327 = 1.0;
      v328 = ((v421 + -0.4) / 0.6) + ((1.0 - ((v421 + -0.4) / 0.6)) * 0.0);
      if (v328 <= 1.0)
      {
        v327 = ((v421 + -0.4) / 0.6) + ((1.0 - ((v421 + -0.4) / 0.6)) * 0.0);
      }

      if (v328 >= 0.0)
      {
        v329 = v327;
      }

      else
      {
        v329 = 0.0;
      }

      v330 = sqrtf(v329);
      v331 = 0.063096;
    }

    v322 = v330 * v331;
    goto LABEL_219;
  }

  *(this + 45) = xmmword_1DE09D990;
  *(this + 46) = xmmword_1DE09D990;
  return 1;
}

uint64_t AUDistance::GetScopeExtended(AUDistance *this, int a2)
{
  if (a2 == 4)
  {
    return this + 552;
  }

  else
  {
    return 0;
  }
}

uint64_t AUDistance::ChangeStreamFormat(AUDistance *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  v17 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  v9 = 0;
  if (v7 == 1 && !v6)
  {
    if (ausdk::AUScope::GetElement((this + 80), 1u))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = (*(*Element + 56))(Element, a5);
      if (getDistanceLogScope(void)::once != -1)
      {
        dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
      }

      if (getDistanceLogScope(void)::scope)
      {
        v11 = *getDistanceLogScope(void)::scope;
        if (!*getDistanceLogScope(void)::scope)
        {
          return v9;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "AUDistance.cpp";
        v15 = 1024;
        v16 = 680;
        _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the stream format for the second input bus to match the format of the first bus.", &v13, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AUDistance::ValidFormat(AUDistance *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel == 64 && a4->mFormatID == 1718773105)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2 || a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
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

uint64_t AUDistance::SupportedNumChannels(AUDistance *this, const AUChannelInfo **a2)
{
  v2 = 0;
  v3 = xmmword_1DE0952D0;
  v4 = xmmword_1DE095220;
  v5 = xmmword_1DE095150;
  v6 = xmmword_1DE095160;
  v7.i64[0] = 0x1000100010001;
  v7.i64[1] = 0x1000100010001;
  v8 = vdupq_n_s64(8uLL);
  do
  {
    v9 = (&AUDistance::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs + v2);
    v11.val[0] = vaddq_s16(vuzp1q_s16(vuzp1q_s32(v6, v5), vuzp1q_s32(v4, v3)), v7);
    v11.val[1] = v11.val[0];
    vst2q_s16(v9, v11);
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 = vaddq_s64(v6, v8);
    v3 = vaddq_s64(v3, v8);
    v2 += 32;
  }

  while (v2 != 64);
  if (a2)
  {
    *a2 = &AUDistance::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUDistance::GetParameterValueStrings(AUDistance *this, int a2, unsigned int a3, const __CFArray **a4)
{
  if (a4)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294956430;
  }
}

uint64_t AUDistance::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
  }

  return result;
}

uint64_t AUDistance::SaveExtendedScopes(AUDistance *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUDistance::GetParameterInfo(AUDistance *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    return 4294956418;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 4294956418;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v8 = @"Distance estimated at the current frame";
      }

      else
      {
        v8 = @"Mean of the distance estimate";
      }
    }

    else
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          buffer->cfNameString = @"Kalman filter process standard deviation";
          buffer->flags = 0x8000000;
          CFStringGetCString(@"Kalman filter process standard deviation", buffer->name, 52, 0x8000100u);
          result = 0;
          buffer->unit = kAudioUnitParameterUnit_Meters;
          *&buffer->minValue = 0x3F0000003C23D70ALL;
          v6 = 0.1;
        }

        else
        {
          if (a3 != 8)
          {
            return result;
          }

          buffer->cfNameString = @"Kalman filter observation standard deviation";
          buffer->flags = 0x8000000;
          CFStringGetCString(@"Kalman filter observation standard deviation", buffer->name, 52, 0x8000100u);
          result = 0;
          buffer->unit = kAudioUnitParameterUnit_Meters;
          *&buffer->minValue = 0x400000003C23D70ALL;
          v6 = 0.5;
        }

        goto LABEL_27;
      }

      v8 = @"Standard deviation of the distance estimate";
    }

    buffer->cfNameString = v8;
    buffer->flags = 0x8000000;
    CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Meters;
    *&buffer->minValue = 0x4120000000000000;
    v10 = buffer->flags | 0x40008000;
    buffer->defaultValue = 0.0;
    buffer->flags = v10;
    return result;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      buffer->cfNameString = @"Wait time between restarting the estimate smoothing (in frames)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wait time between restarting the estimate smoothing (in frames)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x4348000000000000;
      v6 = 50.0;
LABEL_27:
      v9 = buffer->flags | 0xC0000000;
      goto LABEL_28;
    }

    buffer->cfNameString = @"VAD for the input signal at the current frame";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"VAD for the input signal at the current frame", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    v7 = 0x3F80000000000000;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      buffer->cfNameString = @"Forgetting factor for input PSD estimation (time constant in seconds)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Forgetting factor for input PSD estimation (time constant in seconds)", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x4040000000000000;
      v6 = 0.5;
      goto LABEL_21;
    }

    buffer->cfNameString = @"Number of context frames for NeuralNet";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Number of context frames for NeuralNet", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    v7 = 0x4100000000000000;
  }

  *&buffer->minValue = v7;
  v6 = 1.0;
LABEL_21:
  v9 = buffer->flags | 0x40008000;
LABEL_28:
  buffer->defaultValue = v6;
  buffer->flags = v9;
  return result;
}

uint64_t AUDistance::GetParameterList(AUDistance *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    a3[8] = 8;
  }

  result = 0;
  *a4 = 9;
  return result;
}

uint64_t AUDistance::Render(AUDistance *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v10 = 1;
  while (1)
  {
    v11 = v10;
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element)
    {
      if (*(Element + 172))
      {
        break;
      }
    }

    v9 = 1;
LABEL_9:
    v10 = 0;
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      v16 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v16)
      {
LABEL_27:
        ausdk::Throw(0xFFFFD583);
      }

      v24 = ausdk::AUIOElement::PrepareBuffer(v16, a4);
      if (v9)
      {
        return 0;
      }

      v17 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v18 = buf;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = ausdk::AUScope::GetElement((this + 80), v17);
        if (!v21)
        {
          goto LABEL_27;
        }

        if (!*(v21 + 144))
        {
          ausdk::Throw(0xFFFFFFFFLL);
        }

        v19 = 0;
        *v18 = *(v21 + 152) + 48;
        v17 = 1;
        v18 = &buf[8];
      }

      while ((v20 & 1) != 0);
      return (*(*this + 184))(this, a2, a4, 2, buf, 1, &v24);
    }
  }

  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
  v14 = v13;
  if (v15)
  {
    v14 = ausdk::AUInputElement::PullInput(v13, a2, a3, v8, a4);
  }

  if (!v14)
  {
    goto LABEL_9;
  }

  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v22 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      return v14;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AUDistance.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 735;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Pull failed on input (%u)", buf, 0x18u);
  }

  return v14;
}

uint64_t AUDistance::ProcessMultipleBufferLists(AUDistance *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v9 = a3;
  v60 = *MEMORY[0x1E69E9840];
  v11 = *(this + 66);
  if (*(this + 67) != v11)
  {
    v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v13 & 1) == 0 || (*(this + 157) = ausdk::AUElement::GetParameter(v12, 3u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 161) = ausdk::AUElement::GetParameter(v14, 7u), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (*(this + 162) = ausdk::AUElement::GetParameter(v16, 8u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0))
    {
LABEL_97:
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v18, 2u);
    *(this + 156) = Parameter;
    v21 = *(this + 82);
    if (v21)
    {
      v21[5].i32[1] = *(this + 157);
      v21[20] = vmul_f32(*(this + 644), *(this + 644));
      v21[26].i32[0] = Parameter;
    }

    *(this + 67) = v11;
  }

  if (*(this + 84) != v9)
  {
    return 4294956422;
  }

  v22 = *a5;
  if (!*a5)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v29 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v56.mNumberBuffers = 136315394;
      *(&v56.mNumberBuffers + 1) = "AUDistance.cpp";
      LOWORD(v56.mBuffers[0].mDataByteSize) = 1024;
      *(&v56.mBuffers[0].mDataByteSize + 2) = 802;
      v31 = "%25s:%-5d MCLPOutSignals cannot be NULL. It is a required input.";
LABEL_57:
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, v31, &v56, 0x12u);
    }

    return 4294956420;
  }

  v23 = *v22;
  if (*v22 != *(this + 154))
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v30 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v32 = *(this + 154);
    v56.mNumberBuffers = 136315650;
    *(&v56.mNumberBuffers + 1) = "AUDistance.cpp";
    LOWORD(v56.mBuffers[0].mDataByteSize) = 1024;
    *(&v56.mBuffers[0].mDataByteSize + 2) = 808;
    WORD1(v56.mBuffers[0].mData) = 1024;
    HIDWORD(v56.mBuffers[0].mData) = v32;
    v33 = "%25s:%-5d Input MCLPOutSignals buffer expected with (%u) channels.";
LABEL_80:
    _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v33, &v56, 0x18u);
    return 4294956428;
  }

  v24 = a5[1];
  if (!v24)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v29 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v56.mNumberBuffers = 136315394;
      *(&v56.mNumberBuffers + 1) = "AUDistance.cpp";
      LOWORD(v56.mBuffers[0].mDataByteSize) = 1024;
      *(&v56.mBuffers[0].mDataByteSize + 2) = 816;
      v31 = "%25s:%-5d ECOutSignals cannot be NULL. It is a required input.";
      goto LABEL_57;
    }

    return 4294956420;
  }

  if (v24->mNumberBuffers != v23)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v30 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v34 = *(this + 154);
    v56.mNumberBuffers = 136315650;
    *(&v56.mNumberBuffers + 1) = "AUDistance.cpp";
    LOWORD(v56.mBuffers[0].mDataByteSize) = 1024;
    *(&v56.mBuffers[0].mDataByteSize + 2) = 822;
    WORD1(v56.mBuffers[0].mData) = 1024;
    HIDWORD(v56.mBuffers[0].mData) = v34;
    v33 = "%25s:%-5d Input ECOutSignals buffer expected with (%u) channels.";
    goto LABEL_80;
  }

  if (*a7 && (*a7)->mNumberBuffers != v23)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v30 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v38 = *(this + 154);
      v56.mNumberBuffers = 136315650;
      *(&v56.mNumberBuffers + 1) = "AUDistance.cpp";
      LOWORD(v56.mBuffers[0].mDataByteSize) = 1024;
      *(&v56.mBuffers[0].mDataByteSize + 2) = 832;
      WORD1(v56.mBuffers[0].mData) = 1024;
      HIDWORD(v56.mBuffers[0].mData) = v38;
      v33 = "%25s:%-5d Output OutputSignals buffer expected with (%u) channels.";
      goto LABEL_80;
    }

    return 4294956428;
  }

  v47 = 0;
  v46 = 0;
  v25 = (2 * *(this + 151));
  *&v56.mNumberBuffers = *(this + 76);
  v56.mBuffers[0] = xmmword_1DE09BD50;
  v57 = 4;
  v58 = v23;
  v59 = 32;
  AudioDSP::Utility::DetectNonFinites(v25, v22, &v56, (&v47 + 1), a5);
  AudioDSP::Utility::DetectNonFinites(v25, a5[1], &v56, &v47, v26);
  if ((*(this + 544) & 1) == 0 && ((v47 & 0x100) == 0 && v47 != 1 || *(this + 620) != 1))
  {
    DistanceEstimator::processBufferList(*(this + 82), *a5, a5[1], *a7);
    v35 = *(this + 82);
    *(this + 79) = *(v35 + 196);
    *(this + 160) = sqrtf(*(v35 + 204));
    AudioDSP::Utility::DetectNonFinites(v25, *a7, &v56, &v46, v36);
    if (v46 != 1 || *(this + 620) != 1)
    {
      goto LABEL_93;
    }

    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v37 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315650;
      v49 = "AUDistance.cpp";
      v50 = 1024;
      v51 = 884;
      v52 = 1024;
      v53 = v46;
      _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDistance: (OutputSignals) is NOT finite: (%d)", &v48, 0x18u);
      if (getDistanceLogScope(void)::once != -1)
      {
        dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
      }
    }

LABEL_86:
    if (getDistanceLogScope(void)::scope)
    {
      v39 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
LABEL_92:
        (*(*this + 64))(this);
        CopyBufferList(*a5, *a7);
        goto LABEL_93;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315394;
      v49 = "AUDistance.cpp";
      v50 = 1024;
      v51 = 887;
      _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reseting the distance estimator.\n", &v48, 0x12u);
    }

    goto LABEL_92;
  }

  *(this + 79) = 0;
  *(this + 160) = 0;
  CopyBufferList(*a5, *a7);
  if ((v47 & 0x100) != 0 || v47 == 1)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v27 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 136315906;
      v49 = "AUDistance.cpp";
      v50 = 1024;
      v51 = 861;
      v52 = 1024;
      v53 = HIBYTE(v47);
      v54 = 1024;
      v55 = v47;
      _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDistance: (MCLPOutSignals, ECOutSignals) is NOT finite: (%d, %d)", &v48, 0x1Eu);
    }
  }

LABEL_93:
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_97;
  }

  ausdk::AUElement::SetParameter(v40, 4u, *(this + 158));
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_97;
  }

  ausdk::AUElement::SetParameter(v42, 5u, *(this + 159));
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_97;
  }

  ausdk::AUElement::SetParameter(v44, 6u, *(this + 160));
  return 0;
}

uint64_t AUDistance::SetParameter(AUDistance *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 552), a4);
    ausdk::AUElement::SetParameter(Element, a2, a5);
    return 0;
  }

  else if (a3)
  {
    return 4294956418;
  }

  else
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    result = 0;
    ++*(this + 66);
  }

  return result;
}

uint64_t AUDistance::SetProperty(AUDistance *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 3700)
  {
    if (a2 != 3696)
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (a6 == 4)
      {
        v6 = 0;
        *(this + 544) = *a5 != 0;
        return v6;
      }

      return 4294956445;
    }

    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v10 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "AUDistance.cpp";
      v17 = 1024;
      v18 = 351;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the property PropertyIDs::DistanceEstimatorNeuralNet", buf, 0x12u);
    }

LABEL_21:
    if (a5)
    {
      v11 = *a5;
      if (v11)
      {
        CFRetain(v11);
        v12 = CFGetTypeID(v11);
        if (v12 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      if (*(this + 82))
      {
        std::unique_ptr<DistanceEstimator>::reset[abi:ne200100](this + 82, 0);
      }

      if (getDistanceLogScope(void)::once != -1)
      {
        dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
      }

      operator new();
    }

    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v14 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AUDistance.cpp";
      v17 = 1024;
      v18 = 354;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.\n", buf, 0x12u);
    }

    return 4294956445;
  }

  v6 = 4294956445;
  if (a6 >= 4)
  {
    if (*a5)
    {
      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return v6;
}

void sub_1DDFBBC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a11);
  _Unwind_Resume(a1);
}

void sub_1DDFBBC74(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9, int a10, const void *a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15, int a16)
{
  std::unique_ptr<NeuralNet>::reset[abi:ne200100](v20, 0);
  v24 = *v19;
  if (*v19)
  {
    v16[29] = v24;
    operator delete(v24);
  }

  v25 = *(v17 + 72);
  if (v25)
  {
    v16[18] = v25;
    operator delete(v25);
  }

  v26 = *v18;
  if (*v18)
  {
    v16[15] = v26;
    operator delete(v26);
  }

  v27 = *(v17 + 24);
  if (v27)
  {
    v16[12] = v27;
    operator delete(v27);
  }

  v28 = *v17;
  if (*v17)
  {
    v16[9] = v28;
    operator delete(v28);
  }

  MEMORY[0x1E12BD160](v16, 0x10E0C407F801DA4);
  if (a2 != 2)
  {
    applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
    JUMPOUT(0x1DDFBBC6CLL);
  }

  exception_ptr = __cxa_get_exception_ptr(a1);
  a9.__vftable = &unk_1F593B0D8;
  a10 = exception_ptr[2];
  __cxa_begin_catch(a1);
  if (*(v21 + 3784) != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v30 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315650;
    *(&buf + 4) = "AUDistance.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 365;
    a15 = 1024;
    a16 = a10;
    _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not load DistanceEstimator plist, exception (%d).\n", &buf, 0x18u);
  }

LABEL_20:
  std::exception::~exception(&a9);
  __cxa_end_catch();
  JUMPOUT(0x1DDFBB530);
}

uint64_t *std::unique_ptr<DistanceEstimator>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      sparse_matrix_destroy(v3);
      *(v2 + 56) = 0;
    }

    std::unique_ptr<NeuralNet>::reset[abi:ne200100]((v2 + 256), 0);
    std::unique_ptr<NeuralNet>::reset[abi:ne200100]((v2 + 256), 0);
    v4 = *(v2 + 224);
    if (v4)
    {
      *(v2 + 232) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 136);
    if (v5)
    {
      *(v2 + 144) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 112);
    if (v6)
    {
      *(v2 + 120) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 88);
    if (v7)
    {
      *(v2 + 96) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 64);
    if (v8)
    {
      *(v2 + 72) = v8;
      operator delete(v8);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUDistance::GetProperty(AUDistance *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 544;
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

uint64_t AUDistance::GetPropertyInfo(AUDistance *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

uint64_t AUDistance::Reset(AUDistance *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v1 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "AUDistance.cpp";
    v5 = 1024;
    v6 = 194;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_INFO, "%25s:%-5d Resetting the AU.", &v3, 0x12u);
  }

  return 0;
}

double AUDistance::Cleanup(AUDistance *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v2 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "AUDistance.cpp";
    v7 = 1024;
    v8 = 180;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Cleanup.", &v5, 0x12u);
  }

LABEL_9:
  if (*(this + 600) == 1)
  {
    v3 = *(this + 82);
    (*(***(v3 + 256) + 48))(**(v3 + 256));
    vDSP_vclr(*(v3 + 64), 1, (*(v3 + 72) - *(v3 + 64)) >> 2);
    vDSP_vclr(*(v3 + 88), 1, (*(v3 + 96) - *(v3 + 88)) >> 2);
    vDSP_vclr(*(v3 + 112), 1, (*(v3 + 120) - *(v3 + 112)) >> 2);
    vDSP_vclr(*(v3 + 136), 1, (*(v3 + 144) - *(v3 + 136)) >> 2);
    vDSP_vclr(*(v3 + 224), 1, (*(v3 + 232) - *(v3 + 224)) >> 2);
    *(v3 + 44) = 1065353216;
    *(v3 + 196) = 0;
    *(v3 + 200) = 0;
    *(v3 + 204) = *(v3 + 40);
    *(v3 + 212) = 0;
    *(v3 + 216) = 256;
    *(v3 + 168) = *(v3 + 164) + *(v3 + 160);
  }

  result = 0.0;
  *(this + 79) = 0;
  *(this + 160) = 0;
  return result;
}

uint64_t AUDistance::Initialize(AUDistance *this)
{
  v45 = *MEMORY[0x1E69E9840];
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (!getDistanceLogScope(void)::scope)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v39 = 136315394;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 83;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Initializing.", &v39, 0x12u);
    }

    goto LABEL_9;
  }

  v2 = *getDistanceLogScope(void)::scope;
  if (*getDistanceLogScope(void)::scope)
  {
    goto LABEL_7;
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = 0;
  v5 = *(Element + 80);
  *(this + 154) = *(Element + 108);
  *(this + 76) = v5;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = ausdk::AUScope::GetElement((this + 80), v4);
    if (!v8)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v8 + 108) != *(this + 154))
    {
      if (getDistanceLogScope(void)::once != -1)
      {
        dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
      }

      if (getDistanceLogScope(void)::scope)
      {
        v13 = *getDistanceLogScope(void)::scope;
        if (!*getDistanceLogScope(void)::scope)
        {
          return 4294956421;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(this + 154);
        v39 = 136315650;
        v40 = "AUDistance.cpp";
        v41 = 1024;
        v42 = 96;
        v43 = 1024;
        v44 = v14;
LABEL_41:
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d The number of input channels not equal to the number of expected channels (%u).", &v39, 0x18u);
      }

      return 4294956421;
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v9 + 108) != *(this + 154))
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v13 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 154);
      v39 = 136315650;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 105;
      v43 = 1024;
      v44 = v15;
      goto LABEL_41;
    }

    return 4294956421;
  }

  v10 = (*(*this + 408))(this, 4);
  if (!v10)
  {
    ausdk::ThrowQuiet(0);
  }

  ausdk::AUScope::SetNumberOfElements(v10, 0x10u);
  *(this + 151) = *(this + 84);
  if ((*(this + 600) & 1) == 0)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v17 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
LABEL_52:
        result = 0;
        *(this + 544) = 1;
        *(this + 79) = 0;
        *(this + 160) = 0;
        return result;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315394;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 119;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting the layers plist! Setting AU in Bypass mode.", &v39, 0x12u);
    }

    goto LABEL_52;
  }

  (*(*this + 64))(this);
  v11 = *(this + 82);
  if (!v11)
  {
    return 0;
  }

  if (*(this + 76) != *v11)
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v12 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315394;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 139;
      _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate is not supported! Setting AU in Bypass mode.", &v39, 0x12u);
    }

LABEL_56:
    *(this + 544) = 1;
    v11 = *(this + 82);
  }

  if (*(this + 151) != *(v11 + 8))
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v18 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315394;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 145;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Block size is not supported! Setting AU in Bypass mode.", &v39, 0x12u);
    }

LABEL_66:
    *(this + 544) = 1;
    v11 = *(this + 82);
  }

  if (*(this + 154) != *(v11 + 12))
  {
    if (getDistanceLogScope(void)::once != -1)
    {
      dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
    }

    if (getDistanceLogScope(void)::scope)
    {
      v19 = *getDistanceLogScope(void)::scope;
      if (!*getDistanceLogScope(void)::scope)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136315394;
      v40 = "AUDistance.cpp";
      v41 = 1024;
      v42 = 151;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Number of microphones is not supported! Setting AU in Bypass mode.", &v39, 0x12u);
    }

LABEL_76:
    *(this + 544) = 1;
  }

  (*(*this + 72))(this, 0, 0);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0 || (ausdk::AUElement::SetParameter(v20, 0, *(*(this + 82) + 16)), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0) || (ausdk::AUElement::SetParameter(v22, 1u, *(*(this + 82) + 20)), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (ausdk::AUElement::SetParameter(v24, 3u, *(*(this + 82) + 44)), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0) || (ausdk::AUElement::SetParameter(v26, 4u, *(this + 158)), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (ausdk::AUElement::SetParameter(v28, 5u, *(this + 159)), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0) || (ausdk::AUElement::SetParameter(v30, 6u, *(this + 160)), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0) || (ausdk::AUElement::SetParameter(v32, 7u, sqrtf(*(*(this + 82) + 160))), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0) || (ausdk::AUElement::SetParameter(v34, 8u, sqrtf(*(*(this + 82) + 164))), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v37 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v36, 2u, *(*(this + 82) + 208));
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v38 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
  if (result)
  {
    v39 = 136315394;
    v40 = "AUDistance.cpp";
    v41 = 1024;
    v42 = 171;
    _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully Initialized.", &v39, 0x12u);
    return 0;
  }

  return result;
}

void AUDistance::CreateExtendedElements(AUDistance *this)
{
  ausdk::AUScope::Initialize((this + 552), this, 4, 16);
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
    Element = ausdk::AUScope::GetElement((this + 552), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDFBCBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUDistance::~AUDistance(AUDistance *this)
{
  AUDistance::~AUDistance(this);

  JUMPOUT(0x1E12BD160);
}

{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59329A8;
  if (getDistanceLogScope(void)::once != -1)
  {
    dispatch_once(&getDistanceLogScope(void)::once, &__block_literal_global_26635);
  }

  if (getDistanceLogScope(void)::scope)
  {
    v2 = *getDistanceLogScope(void)::scope;
    if (!*getDistanceLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 136315394;
    *&v3[4] = "AUDistance.cpp";
    v4 = 1024;
    v5 = 75;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Destructed.", v3, 0x12u);
  }

LABEL_9:
  std::unique_ptr<DistanceEstimator>::reset[abi:ne200100](this + 82, 0);
  std::unique_ptr<DistanceEstimator>::reset[abi:ne200100](this + 82, 0);
  *v3 = this + 568;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v3);
  ausdk::AUBase::~AUBase(this);
}

void EndpointVAD3::~EndpointVAD3(EndpointVAD3 *this)
{
  EndpointVAD3::~EndpointVAD3(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5932BF8;
  EndpointVAD3::Uninitialize(this);
  v2 = *(this + 21);
  if (v2)
  {
    CFRelease(v2);
    *(this + 21) = 0;
  }

  v3 = *(this + 22);
  if (v3)
  {
    CFRelease(v3);
    *(this + 22) = 0;
  }

  v4 = *(this + 23);
  if (v4)
  {
    CFRelease(v4);
    *(this + 23) = 0;
  }

  v5 = *(this + 24);
  if (v5)
  {
    CFRelease(v5);
    *(this + 24) = 0;
  }

  v6 = *(this + 25);
  if (v6)
  {
    CFRelease(v6);
    *(this + 25) = 0;
  }

  v7 = *(this + 26);
  if (v7)
  {
    CFRelease(v7);
    *(this + 26) = 0;
  }

  VAD3Configuration::~VAD3Configuration((this + 536));
  v8 = *(this + 63);
  if (v8)
  {
    *(this + 64) = v8;
    operator delete(v8);
  }

  v26 = (this + 480);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v26 = (this + 456);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v26 = (this + 432);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v9 = *(this + 51);
  if (v9)
  {
    *(this + 52) = v9;
    operator delete(v9);
  }

  v10 = *(this + 48);
  if (v10)
  {
    *(this + 49) = v10;
    operator delete(v10);
  }

  v11 = *(this + 47);
  *(this + 47) = 0;
  if (v11)
  {
    std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](v11);
  }

  v12 = *(this + 46);
  *(this + 46) = 0;
  if (v12)
  {
    std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](v12);
  }

  v13 = *(this + 44);
  *(this + 44) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 43);
  *(this + 43) = 0;
  if (v14)
  {
    std::default_delete<std::vector<unsigned int>>::operator()[abi:ne200100](v14);
  }

  v15 = *(this + 42);
  *(this + 42) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 40);
  *(this + 40) = 0;
  if (v16)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v16);
  }

  v17 = *(this + 39);
  *(this + 39) = 0;
  if (v17)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v17);
  }

  v18 = *(this + 38);
  *(this + 38) = 0;
  if (v18)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v18);
  }

  v19 = *(this + 37);
  *(this + 37) = 0;
  if (v19)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v19);
  }

  v20 = *(this + 33);
  if (v20)
  {
    *(this + 34) = v20;
    operator delete(v20);
  }

  v21 = *(this + 30);
  if (v21)
  {
    *(this + 31) = v21;
    operator delete(v21);
  }

  v22 = *(this + 27);
  if (v22)
  {
    *(this + 28) = v22;
    operator delete(v22);
  }

  v26 = (this + 112);
  std::vector<std::unique_ptr<EndpointDecisionLayerVAD3>>::__destroy_vector::operator()[abi:ne200100](&v26);
  std::unique_ptr<MixViterbiProd>::reset[abi:ne200100](this + 13, 0);
  v23 = *(this + 9);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(this + 7);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(this + 5);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void *EndpointVAD3::Uninitialize(EndpointVAD3 *this)
{
  *(this + 8) = 0;
  result = *(this + 15);
  v3 = *(this + 14);
  while (result != v3)
  {
    result = std::unique_ptr<EndpointDecisionLayerVAD3>::~unique_ptr[abi:ne200100](result - 1);
  }

  *(this + 15) = v3;
  *(this + 64) = *(this + 63);
  return result;
}

void std::vector<std::unique_ptr<EndpointDecisionLayerVAD3>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<EndpointDecisionLayerVAD3>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<EndpointDecisionLayerVAD3>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[25];
    v2[25] = 0;
    if (v3)
    {
      std::default_delete<MRRingBuffer<DataTimeStamp>>::operator()[abi:ne200100](v3);
    }

    v4 = v2[24];
    v2[24] = 0;
    if (v4)
    {
      std::default_delete<MRRingBuffer<AUEndpointVAD3_Decision>>::operator()[abi:ne200100](v4);
    }

    v5 = v2[12];
    if (v5)
    {
      v2[13] = v5;
      operator delete(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      v2[3] = v6;
      operator delete(v6);
    }

    MEMORY[0x1E12BD160](v2, 0x1020C407EE49162);
  }

  return a1;
}

void *std::vector<std::vector<std::vector<float>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::vector<float>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
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

void EndpointVAD3::TranslateFullPosteriorsToMarginalized(uint64_t a1, float ***a2, uint64_t a3, unsigned int **a4, int **a5)
{
  std::vector<std::vector<std::vector<float>>>::resize(a3, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  v10 = *a3;
  if (*a3 != *(a3 + 8))
  {
    do
    {
      std::vector<std::vector<float>>::resize(v10, a4[1] - *a4);
      v11 = *v10;
      if (*v10 != v10[1])
      {
        v12 = *a4;
        do
        {
          v13 = *v12++;
          std::vector<float>::resize(v11, v13);
          v11 += 3;
        }

        while (v11 != v10[1]);
      }

      v10 += 3;
    }

    while (v10 != *(a3 + 8));
    v10 = *a3;
  }

  v15 = *a2;
  v14 = a2[1];
  if (v15 != v14)
  {
    v17 = *a5;
    v16 = a5[1];
    if ((v16 - v17) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 - v17;
    }

    do
    {
      v19 = *v10;
      v20 = v10[1];
      for (i = *v10; i != v20; i += 3)
      {
        v22 = i[1];
        if (*i != v22)
        {
          bzero(*i, v22 - *i);
        }
      }

      v23 = *v15;
      v24 = v15[1];
      if (*v15 != v24)
      {
        v25 = 0;
        v26 = *(a1 + 592);
        do
        {
          if (v16 != v17)
          {
            v27 = v18;
            v28 = v25;
            v29 = v26;
            v30 = v17;
            do
            {
              v31 = *v29++;
              v32 = v28 / v31;
              v28 %= v31;
              *v30++ = v32;
              --v27;
            }

            while (v27);
            v33 = v17;
            v34 = v19;
            do
            {
              v36 = *v34;
              v34 += 3;
              v35 = v36;
              LODWORD(v36) = *v33++;
              v35[v36] = *v23 + v35[v36];
            }

            while (v33 != v16);
          }

          ++v25;
          ++v23;
        }

        while (v23 != v24);
      }

      v10 += 3;
      v15 += 3;
    }

    while (v15 != v14);
  }
}

void EndpointVAD3::UpdateAndDispatchDecisions(uint64_t a1, uint64_t **a2, void *a3, double **a4, uint64_t a5, unsigned int a6)
{
  v169 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 != a2[1])
  {
    v7 = a6;
    v11 = *a4;
    v153 = (a5 + 184);
    v12 = a6;
    v162 = a6;
    do
    {
      v13 = *v6;
      v14 = (v6[1] - *v6) >> 2;
      if (v14 <= v12)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if ((*(a5 + 224) & 1) == 0)
      {
        v15 = a4[1];
        if (*a4 == v15)
        {
          v17 = 0.0;
        }

        else
        {
          v16 = 0;
          v17 = 0.0;
          v18 = *a4;
          do
          {
            if (v16)
            {
              if (v18[1] < v17)
              {
                v17 = v18[1];
              }
            }

            else
            {
              v17 = (*a4)[1];
            }

            v18 += 2;
            v16 -= 16;
          }

          while (v18 != v15);
        }

        v19 = *(a5 + 128) * v17;
        *(a5 + 144) = 0;
        *(a5 + 152) = v19;
        *(a5 + 160) = v17;
        *(a5 + 184) = *(a5 + 160);
        *(a5 + 168) = *(a5 + 144);
        *(a5 + 224) = 1;
        v13 = *v6;
        v14 = (v6[1] - *v6) >> 2;
      }

      v165 = 0;
      if (v14 <= v12)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v12)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v160 = v6;
      v161 = a3;
      ++*(a5 + 220);
      *buf = *(v13 + 4 * v12);
      v159 = v11;
      *&buf[8] = *v11;
      *(a5 + 104) = *(a5 + 96);
      v21 = *(a5 + 16);
      v20 = *(a5 + 24);
      v22 = v20 - v21;
      if (v20 == v21)
      {
        v24 = *(a5 + 24);
      }

      else
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
        v24 = *(a5 + 16);
        do
        {
          v25 = v23 >> 1;
          v26 = &v24[24 * (v23 >> 1)];
          v27 = *(v26 + 2);
          v28 = v26 + 24;
          v23 += ~(v23 >> 1);
          if (*&buf[16] > v27)
          {
            v23 = v25;
          }

          else
          {
            v24 = v28;
          }
        }

        while (v23);
      }

      v29 = *(a5 + 32);
      if (v20 >= v29)
      {
        v32 = 1 - 0x5555555555555555 * (v22 >> 3);
        if (v32 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v29 - v21) >> 3) > v32)
        {
          v32 = 0x5555555555555556 * ((v29 - v21) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v29 - v21) >> 3) >= 0x555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v33);
        }

        v35 = 8 * ((v24 - v21) >> 3);
        v36 = v35;
        if (!(0xAAAAAAAAAAAAAAABLL * ((v24 - v21) >> 3)))
        {
          if (v24 - v21 < 1)
          {
            if (v24 == v21)
            {
              v41 = 1;
            }

            else
            {
              v41 = 0x5555555555555556 * ((v24 - v21) >> 3);
            }

            std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v41);
          }

          v35 = 8 * ((v24 - v21) >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * ((v24 - v21) >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * ((v24 - v21) >> 3)) >> 3)) >> 63)) >> 1);
          v36 = v35;
        }

        v42 = *buf;
        *(v35 + 16) = *&buf[16];
        *v35 = v42;
        v43 = v36 + 24;
        memcpy((v36 + 24), v24, *(a5 + 24) - v24);
        v44 = *(a5 + 16);
        v163 = v43 + *(a5 + 24) - v24;
        *(a5 + 24) = v24;
        v45 = v24 - v44;
        v46 = (v35 - (v24 - v44));
        memcpy(v46, v44, v45);
        v47 = *(a5 + 16);
        *(a5 + 16) = v46;
        *(a5 + 24) = v163;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else if (v24 == v20)
      {
        v34 = *buf;
        *(v20 + 16) = *&buf[16];
        *v20 = v34;
        *(a5 + 24) = v20 + 24;
      }

      else
      {
        if (v20 < 0x18)
        {
          v30 = *(a5 + 24);
        }

        else
        {
          v30 = v20 + 24;
          v31 = *(v20 - 24);
          *(v20 + 16) = *(v20 - 8);
          *v20 = v31;
        }

        *(a5 + 24) = v30;
        if (v20 != v24 + 24)
        {
          memmove(v24 + 24, v24, v20 - (v24 + 24));
          v30 = *(a5 + 24);
        }

        v37 = v30 <= buf || v24 > buf;
        if (v37)
        {
          v38 = 0;
        }

        else
        {
          v38 = 24;
        }

        v39 = &buf[v38];
        v40 = *v39;
        *(v24 + 2) = *(v39 + 2);
        *v24 = v40;
      }

      v48 = *&buf[16];
      v49 = *(a5 + 40);
      if (*&buf[16] > v49)
      {
        *(a5 + 40) = *&buf[16];
        v49 = v48;
      }

      v50 = *(a5 + 16);
      v51 = *(a5 + 24);
      v52 = -1431655765 * ((v51 - v50) >> 3);
      v53 = *a5;
      v54 = v49 - *a5;
      v55 = *(a5 + 8);
      v56 = *(v51 - 1);
      v57 = v55 < v52 || v56 < v54;
      v58 = *(a5 + 24);
      if (v57)
      {
        v59 = v52 - 1;
        v58 = *(a5 + 24);
        while (1)
        {
          v60 = v58;
          v58 -= 3;
          if (v58 == v50)
          {
            break;
          }

          v61 = v59 - 1;
          v37 = v59-- > v55;
          if (!v37)
          {
            v59 = v61;
            if (*(v60 - 4) >= v54)
            {
              goto LABEL_70;
            }
          }
        }

        v58 = *(a5 + 16);
      }

LABEL_70:
      v62 = *(a5 + 96);
      if (v51 != v58)
      {
        *(a5 + 104) = v62;
        v63 = v58;
        do
        {
          v64 = *(a5 + 112);
          if (v62 >= v64)
          {
            v66 = *(a5 + 96);
            v67 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v66) >> 3);
            v68 = v67 + 1;
            if (v67 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v69 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v66) >> 3);
            if (2 * v69 > v68)
            {
              v68 = 2 * v69;
            }

            if (v69 >= 0x555555555555555)
            {
              v70 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v70 = v68;
            }

            if (v70)
            {
              std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](v70);
            }

            v71 = 24 * v67;
            v72 = *v63;
            *(v71 + 16) = v63[2];
            *v71 = v72;
            v62 = 24 * v67 + 24;
            v73 = *(a5 + 96);
            v74 = *(a5 + 104) - v73;
            v75 = v71 - v74;
            memcpy((v71 - v74), v73, v74);
            v76 = *(a5 + 96);
            *(a5 + 96) = v75;
            *(a5 + 104) = v62;
            *(a5 + 112) = 0;
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            v65 = *v63;
            *(v62 + 16) = v63[2];
            *v62 = v65;
            v62 += 24;
          }

          *(a5 + 104) = v62;
          v63 += 3;
        }

        while (v63 != v51);
        v77 = *(a5 + 24);
        v78 = v77 - v51;
        if (v77 != v51)
        {
          memmove(v58, v51, v77 - v51);
        }

        v51 = (v58 + v78);
        *(a5 + 24) = v58 + v78;
        v56 = *(v58 + v78 - 8);
        v49 = *(a5 + 40);
        v53 = *a5;
        v62 = *(a5 + 96);
      }

      *(a5 + 48) = v56;
      v79 = *(a5 + 104);
      v80 = v160;
      if (v62 != v79)
      {
        v81 = 0;
        v82 = 1;
        v83 = 0.0;
        do
        {
          v84 = v82 | (*(v62 + 16) > v83);
          v82 = 0;
          if (v84)
          {
            v81 = v62;
            v83 = *(v62 + 16);
          }

          v62 += 24;
        }

        while (v62 != v79);
        if (v81)
        {
          *(a5 + 136) = 0;
          v85 = *v81;
          *(a5 + 184) = *(v81 + 16);
          *(a5 + 168) = v85;
        }
      }

      if (v49 - *(a5 + 160) <= v53)
      {
        v86 = *(a5 + 136);
      }

      else
      {
        v86 = 0;
        *(a5 + 136) = 0;
      }

      v87 = v159;
      v88 = *(a5 + 120);
      v89 = v88 == 0;
      v90 = 88;
      if (!v88)
      {
        v90 = 92;
      }

      v91 = *(a5 + v90);
      v92 = *(a5 + 168);
      v93 = *(a5 + 16);
      if (v51 == v93)
      {
        v102 = 0.0;
        v97 = 0.0;
      }

      else
      {
        v94 = v49 - v53;
        if (v86)
        {
          v94 = *(a5 + 184);
        }

        v95 = *(v51 - 1) - v94;
        v96 = v95 + 0.0;
        if (v92 == v89)
        {
          v97 = v95 + 0.0;
        }

        else
        {
          v97 = 0.0;
        }

        v98 = v51;
        for (i = v51; ; v98 = i)
        {
          v101 = *(i - 6);
          i -= 3;
          v100 = v101;
          if (v93 == i)
          {
            break;
          }

          v95 = *(v98 - 4) - *(v98 - 1);
          v96 = v95 + v96;
          if (v100 == v89)
          {
            v97 = v95 + v97;
          }
        }

        v102 = v95 + v96;
        v103 = v95 + v97;
        if (v100 == v89)
        {
          v97 = v103;
        }
      }

      v104 = v53 * v91;
      v105 = (v97 / v102) >= v91 && v97 > v104;
      if (v105)
      {
        v106 = 2;
      }

      else
      {
        v106 = 0;
      }

      if (v88)
      {
        v107 = v106;
      }

      else
      {
        v107 = (v97 / v102) >= v91 && v97 > v104;
      }

      v166 = 0uLL;
      if (v107 == 2)
      {
        v109 = *(a5 + 128);
        if (v92)
        {
          while (v51 != v93)
          {
            v114 = v51;
            v115 = *(v51 - 6);
            v51 -= 3;
            if (!v115)
            {
              v110 = 0;
              v111 = v114 - 1;
              goto LABEL_134;
            }
          }

          v110 = 0;
          v111 = &v166 + 1;
        }

        else
        {
          v110 = 0;
          v111 = v153;
        }

LABEL_134:
        v116 = 80;
      }

      else
      {
        v108 = 0;
        if (v107 != 1)
        {
          goto LABEL_141;
        }

        v109 = *(a5 + 128);
        if (v92 == 1)
        {
          v110 = 1;
          v111 = v153;
        }

        else
        {
          while (v51 != v93)
          {
            v112 = v51;
            v113 = *(v51 - 6);
            v51 -= 3;
            if (v113 == 1)
            {
              v111 = v112 - 1;
              v110 = 1;
              goto LABEL_136;
            }
          }

          v110 = 1;
          v111 = &v166 + 1;
        }

LABEL_136:
        v116 = 72;
      }

      v117 = *(a5 + v116);
      v118 = *v111 + v117;
      *&v166 = v109 * *v111 + v109 * v117;
      *(&v166 + 1) = v118;
      v120 = *(a5 + 192);
      v119 = *(a5 + 200);
      v121 = *(v120 + 8);
      if (v121 != *(v119 + 8))
      {
        if (EndpointVAD3LogScope(void)::once != -1)
        {
          dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
        }

        if (EndpointVAD3LogScope(void)::scope)
        {
          v152 = *EndpointVAD3LogScope(void)::scope;
          if (*EndpointVAD3LogScope(void)::scope)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v152 = MEMORY[0x1E69E9C10];
LABEL_191:
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "EndpointDecisionLayerVAD3.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 281;
            _os_log_impl(&dword_1DDB85000, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d Internal decision history buffers must have the same size", buf, 0x12u);
          }
        }

        abort();
      }

      v122 = *(v120 + 12);
      *(*v120 + 4 * v122) = v107;
      *(v120 + 12) = (v122 + 1) % v121;
      v123 = *(v119 + 12);
      v124 = *(&v166 + 1);
      *(*v119 + 16 * v123) = v166;
      *(v119 + 12) = (v123 + 1) % v121;
      v125 = *(a5 + 208);
      if (v125 + 1 < v121)
      {
        v121 = v125 + 1;
      }

      *(a5 + 208) = v121;
      *(a5 + 120) = v110;
      v108 = v124;
LABEL_141:
      LODWORD(v165) = 0;
      HIDWORD(v165) = v107;
      v126 = *(a5 + 212);
      v127 = 0;
      if (v126 == 1)
      {
        v156 = v107;
        v130 = *(a5 + 192);
        v131 = *(a5 + 200);
        v132 = *v130;
        v133 = *(v130 + 2);
        v134 = v133 - *(v130 + 3);
        v135 = *(v132 + 4 * (v133 + ~(v134 % v133)));
        v136 = *(a5 + 208);
        v164 = *(*v131 + 16 * (*(v131 + 8) + ~((*(v131 + 8) - *(v131 + 12)) % *(v131 + 8))));
        v157 = v136;
        if (v136 >= 2)
        {
          v137 = v134 + 1;
          v138 = v136 - 1;
          v139 = -2;
          do
          {
            MRRingBuffer<DataTimeStamp>::GetSample(v131, v139);
            if (v140 > *(&v164 + 1))
            {
              v135 = *(v132 + 4 * (v133 + ~(v137 % v133)));
              *(&v164 + 1) = v140;
            }

            ++v137;
            --v139;
            --v138;
          }

          while (v138);
        }

        v129 = 0;
        if (!v157)
        {
          v7 = a6;
          v80 = v160;
          a3 = v161;
          v87 = v159;
          v128 = v162;
          v107 = v156;
          goto LABEL_159;
        }

        v141 = v135 == 2;
        v7 = a6;
        v80 = v160;
        a3 = v161;
        v87 = v159;
        v128 = v162;
        v107 = v156;
        if (!v141)
        {
          goto LABEL_159;
        }

        v142 = v159[1];
        if (v142 - *(a5 + 160) >= *(a5 + 56) && v142 - *(&v164 + 1) >= *(a5 + 64))
        {
          *(a5 + 212) = 2;
          v129 = 4;
          LODWORD(v165) = 4;
          v127 = *(&v164 + 1);
          goto LABEL_159;
        }

LABEL_155:
        v129 = 0;
        goto LABEL_159;
      }

      if (v126)
      {
        v129 = 0;
        v128 = v162;
        goto LABEL_159;
      }

      v128 = v162;
      if (v88 != 0 || !v105)
      {
        goto LABEL_155;
      }

      *(a5 + 212) = 1;
      v129 = 3;
      LODWORD(v165) = 3;
      v127 = v108;
LABEL_159:
      if ((v107 - 1) <= 1)
      {
        *buf = &unk_1F592FFC8;
        *&buf[8] = 0;
        *&buf[12] = v7;
        *&buf[16] = v108;
        v168 = &v165 + 4;
        v143 = *(a1 + 504);
        if (v143 != *(a1 + 512))
        {
          do
          {
            (*(**v143 + 16))(*v143, buf);
            ++v143;
          }

          while (v143 != *(a1 + 512));
          v129 = v165;
        }

        v128 = v162;
      }

      if ((v129 - 3) <= 1)
      {
        *buf = &unk_1F592FFC8;
        *&buf[8] = 1;
        *&buf[12] = v7;
        *&buf[16] = v127;
        v168 = &v165;
        for (j = *(a1 + 504); j != *(a1 + 512); ++j)
        {
          (*(**j + 16))(*j, buf);
        }

        v128 = v162;
      }

      v145 = *v80;
      if (v128 >= (v80[1] - *v80) >> 2)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v146 = *(v87 + 1);
      *buf = &unk_1F592FFC8;
      *&buf[8] = 2;
      *&buf[12] = v7;
      *&buf[16] = v146;
      v168 = (v145 + 4 * v128);
      for (k = *(a1 + 504); ; ++k)
      {
        v148 = *(a1 + 512);
        if (k == v148)
        {
          break;
        }

        (*(**k + 16))(*k, buf);
      }

      v149 = *a3;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v162)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v150 = *(v87 + 1);
      *buf = &unk_1F592FFC8;
      *&buf[8] = 3;
      *&buf[12] = v7;
      *&buf[16] = v150;
      v168 = (v149 + 24 * v162);
      for (m = *(a1 + 504); m != v148; ++m)
      {
        (*(**m + 16))(*m, buf);
        v148 = *(a1 + 512);
      }

      v11 = v87 + 2;
      a3 += 3;
      v6 = v80 + 3;
      v12 = v162;
    }

    while (v6 != a2[1]);
  }
}

void sub_1DDFBE274(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float FeaturesDSPWrapper::GetCurrentProcessedFeatures(uint64_t a1, float **a2)
{
  std::vector<float>::resize(a2, *(*(a1 + 16) + 8));
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (v6)
  {
    v8 = v5 + 24;
    v7 = *(v5 + 24);
    v9 = (*(v8 + 8) - v7) >> 2;
    v10 = *a2;
    v11 = a2[1] - *a2;
    do
    {
      if (!v9)
      {
        __assert_rtn("ElementAt", "FeatureTimeSeries.h", 77, "index < mArray.size()");
      }

      if (!v11)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *v7++;
      result = v12;
      *v10++ = v12;
      --v11;
      --v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

float FeaturesDSPWrapper::GetCurrentProcessedSuperFeatures(void *a1, float **a2)
{
  std::vector<float>::resize(a2, ((a1[8] - a1[7]) >> 2));
  v5 = a1[7];
  v6 = a1[8] - v5;
  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v7 = v6 >> 2;
    v8 = *a2;
    v9 = a2[1] - *a2;
    v10 = (v6 >> 2);
    do
    {
      if (!v7)
      {
        __assert_rtn("ElementAt", "FeatureTimeSeries.h", 84, "index < mArray.size()");
      }

      v11 = *v5;
      v12 = *(a1[2] + 24);
      if (v11 >= (*(a1[2] + 32) - v12) >> 2)
      {
        __assert_rtn("ElementAt", "FeatureTimeSeries.h", 77, "index < mArray.size()");
      }

      if (!v9)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      result = *(v12 + 4 * v11);
      *v8++ = result;
      ++v5;
      --v9;
      --v7;
      --v10;
    }

    while (v10);
  }

  return result;
}

void EndpointVAD3::DoneProcessingAudio(EndpointVAD3 *this, double a2)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v16, "");
  if (*(this + 6) != 1)
  {
    std::string::__assign_external(&v16, "DoneProcessingAudio() should not be called with real time operation mode or on the real time thread.", 0x64uLL);
    if (EndpointVAD3LogScope(void)::once != -1)
    {
      dispatch_once(&EndpointVAD3LogScope(void)::once, &__block_literal_global_10);
    }

    if (EndpointVAD3LogScope(void)::scope)
    {
      v14 = *EndpointVAD3LogScope(void)::scope;
      if (!*EndpointVAD3LogScope(void)::scope)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "EndpointVAD3.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 2080;
      *&buf[20] = v15;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

LABEL_26:
    abort();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  __p = 0;
  v18 = 0;
  v19 = 0;
  v3 = *(*(this + 13) + 236);
  std::vector<std::vector<unsigned int>>::resize(&v22, v3);
  std::vector<std::vector<float>>::resize(v21, v3);
  std::vector<std::vector<std::vector<float>>>::resize(v20, v3);
  std::vector<DataTimeStamp>::resize(&__p, v3);
  v4 = *(this + 13);
  memset(buf, 0, 24);
  MixViterbiProd::decodeRaw_Post(v4, v3, buf, v21);
  v5 = *buf;
  v6 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v7 = *(v4 + 184);
    v8 = *v7;
    v9 = *(v7 + 3);
    do
    {
      v10 = *v5++;
      *(v8 + 4 * v9) = v10;
      v9 = (*(v7 + 3) + 1) % *(v7 + 2);
      *(v7 + 3) = v9;
    }

    while (v5 != v6);
  }

  MixViterbiProd::convertRawStateSequenceToProd(v4, buf, &v22);
  MixViterbiProd::retrieveTimeStamps(v4, 1 - v3, 0, &__p);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  EndpointVAD3::TranslateFullPosteriorsToMarginalized(this, v21, v20, *(this + 47), this + 48);
  v11 = __p;
  if (v23 != v22 && v18 != __p)
  {
    v12 = *(this + 14);
    if (*(this + 15) != v12)
    {
      v13 = 0;
      do
      {
        EndpointVAD3::UpdateAndDispatchDecisions(this, &v22, v20[0], &__p, *(v12 + 8 * v13), v13);
        ++v13;
        v12 = *(this + 14);
      }

      while (v13 < (*(this + 15) - v12) >> 3);
    }
  }

  if (v11)
  {
    operator delete(v11);
  }

  *buf = v20;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = v21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v22;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1DDFBE720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUFIREngine::GetParameterInfo(AUFIREngine *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  if (a2)
  {
    return 4294956418;
  }

  v7 = a3 - 1000000;
  if (a3 - 1000000 < 0xF4240)
  {
    v8 = v7 / AULeanSpatial::GetNumberOfInputChannels(this) + 1;
    v9 = v7 % AULeanSpatial::GetNumberOfInputChannels(this) + 1;
    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Mute: In %u Out %u", v9, v8);
LABEL_7:
    buffer->cfNameString = v10;
    buffer->flags |= 0x8000010u;
    CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 2;
    v14 = 1065353216;
    goto LABEL_8;
  }

  v11 = a3 - 2000000;
  if (a3 - 2000000 < 0xF4240)
  {
    v12 = v11 / AULeanSpatial::GetNumberOfInputChannels(this) + 1;
    v13 = v11 % AULeanSpatial::GetNumberOfInputChannels(this) + 1;
    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Bypass: In %u Out %u", v13, v12);
    goto LABEL_7;
  }

  if (a3 >= 0x2DC6C0)
  {
    v15 = a3 - 3000000;
    v16 = (a3 - 3000000) / AULeanSpatial::GetNumberOfInputChannels(this) + 1;
    NumberOfInputChannels = AULeanSpatial::GetNumberOfInputChannels(this);
    v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Gain: In %u Out %u", v15 % NumberOfInputChannels + 1, v16);
    buffer->cfNameString = v18;
    v19 = buffer->flags | 0x8000010;
LABEL_12:
    buffer->flags = v19;
    CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
    *&buffer->unit = 0xC2C000000000000DLL;
    v14 = 1103101952;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v18 = @"Global Gain";
    buffer->cfNameString = @"Global Gain";
    v19 = -939524096;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    buffer->cfNameString = @"Blend Time";
    buffer->flags = -939524096;
    CFStringGetCString(@"Blend Time", buffer->name, 52, 0x8000100u);
    *&buffer->unit = 0x3F80000000000018;
    v14 = 0x41A00000461C4000;
  }

  else
  {
    if (a3)
    {
      return 4294956418;
    }

    buffer->cfNameString = @"FIR Matrix";
    buffer->flags = -939524096;
    CFStringGetCString(@"FIR Matrix", buffer->name, 52, 0x8000100u);
    v21 = *(this + 81) - *(this + 80);
    v20 = *(this + 81) == *(this + 80);
    *&buffer->unit = 1;
    v22 = 1000.0;
    if (!v20)
    {
      v22 = (0xAAAAAAAAAAAAAAABLL * (v21 >> 3) - 1);
    }

    v14 = LODWORD(v22);
  }

LABEL_8:
  result = 0;
  *&buffer->maxValue = v14;
  return result;
}

uint64_t AUFIREngine::ProcessMultipleBufferLists(AUFIREngine *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 != 1 || a6 != 1)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUFIREngine.mm", 479, "inNumberInputBufferLists == 1 && inNumberOutputBufferLists == 1");
  }

  v11 = 0;
  v12 = (this + 664);
  do
  {
    v13 = v11;
    v14 = ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::pop(this + 768, v12);
    v11 = 1;
  }

  while (v14);
  if (v13)
  {
    (*(*this + 152))(this, 0, 0, 0, 0, 0.0);
    (*(*this + 432))(this, 1668179559, 0, 0);
  }

  if (*(this + 632) == 1)
  {
    v15 = *v12;
    if (!*(*v12 + 597))
    {
      *(this + 632) = 0;
      AUFIREngine::ForwardParamsToKernel(this, v15, (v13 & 1) == 0);
    }
  }

  v16 = 0;
  v17 = 16;
  while (v16 < AULeanSpatial::GetNumberOfInputChannels(this))
  {
    *(*(this + 352) + 8 * v16++) = *(&(*a5)->mNumberBuffers + v17);
    v17 += 16;
  }

  v18 = 0;
  v19 = 16;
  while (v18 < AUFIREngine::GetNumberOfOutputChannels(this))
  {
    *(*(this + 355) + 8 * v18++) = *(&(*a7)->mNumberBuffers + v19);
    v19 += 16;
  }

  v20 = *v12;
  if (*(*v12 + 2) != a3)
  {
    v23 = *(this + 355);
    goto LABEL_44;
  }

  v21 = (*(this + 353) - *(this + 352)) >> 3;
  v22 = *v20;
  v23 = *(this + 355);
  if (v21 != v22 || (v24 = (*(this + 356) - v23) >> 3, v25 = *(v20 + 1), v24 != v25))
  {
LABEL_44:
    v53 = *(this + 356);
    while (v23 != v53)
    {
      v54 = *v23++;
      vDSP_vclr(v54, 1, a3);
    }

    return 0;
  }

  if (v22)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = (*(v20 + 4) + v26);
      *v28 = *(*(this + 352) + 8 * v27);
      v28[1] = a3;
      ++v27;
      v26 += 16;
    }

    while (v21 != v27);
  }

  if (v25)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = (*(v20 + 7) + v29);
      *v31 = *(*(this + 355) + 8 * v30);
      v31[1] = a3;
      ++v30;
      v29 += 16;
    }

    while (v24 != v30);
  }

  v32 = *(v20 + 597);
  if (v32)
  {
    v33 = *(v20 + 676);
    v34 = v33 ^ 1;
    v35 = *(v20 + 19 * (v33 ^ 1) + 306);
    v36 = *(v20 + 19 * v33 + 306);
    v79 = 0x3F800000BF800000;
    if (a3)
    {
      v37 = (v20 + 2396);
      v38 = *(v20 + 598);
      v39 = a3;
      v40 = a3 - 1;
      if (v32 <= v38 + 1)
      {
        v41 = v38 + 1;
      }

      else
      {
        v41 = v32;
      }

      v42 = v41 + ~v38;
      if (v40 >= v42)
      {
        v40 = v42;
      }

      if (v40 >= 0xC && (v20 + 2400 > v35 ? (v43 = v37 >= v35 + 4 * v40 + 4) : (v43 = 1), v43))
      {
        v44 = (v40 + 1) & 7;
        if (!v44)
        {
          v44 = 8;
        }

        v45 = v40 + 1 - v44;
        v46 = vaddq_s32(vdupq_n_s32(v38), xmmword_1DE096230);
        v47 = vld1q_dup_f32(v37);
        v48 = ~v40 + v44;
        v49 = (v35 + 16);
        v50.i64[0] = 0x100000001;
        v50.i64[1] = 0x100000001;
        v51.i64[0] = 0x500000005;
        v51.i64[1] = 0x500000005;
        v52.i64[0] = 0x800000008;
        v52.i64[1] = 0x800000008;
        do
        {
          v49[-1] = vmulq_f32(v47, vcvtq_f32_u32(vaddq_s32(v46, v50)));
          *v49 = vmulq_f32(v47, vcvtq_f32_u32(vaddq_s32(v46, v51)));
          v46 = vaddq_s32(v46, v52);
          v49 += 2;
          v48 += 8;
        }

        while (v48);
        v38 += v45;
      }

      else
      {
        v45 = 0;
      }

      while (1)
      {
        *(v35 + 4 * v45) = *v37 * ++v38;
        if (v38 >= v32)
        {
          break;
        }

        if (a3 == ++v45)
        {
          *(v20 + 598) = v38;
          goto LABEL_52;
        }
      }

      *(v20 + 598) = v38;
      *(v20 + 597) = 0;
      vDSP_vfill(&v79 + 1, (v35 + 4 * v45), 1, a3 - v45);
    }

    else
    {
      v39 = 0;
    }

LABEL_52:
    MEMORY[0x1E12BE910](v35, 1, &v79, &v79 + 4, v36, 1, v39);
    if (!*(v20 + 597))
    {
      *(v20 + 597) = 0;
      *(v20 + 676) = v34;
    }
  }

  if (*v20)
  {
    v56 = 0;
    v57 = v20 + 2400;
    do
    {
      v58 = *(v20 + 19) + 56 * v56;
      v59 = *(v20 + 4);
      v60 = *(v20 + 2);
      v61 = *v58;
      v62 = 4 * v60;
      if (v60)
      {
        memmove(*v58, v61 + v62, 4 * v60);
        v61 = *v58;
      }

      v63 = v59 + 16 * v56;
      v64 = *(v63 + 8);
      if (v64)
      {
        memmove(v61 + v62, *v63, 4 * v64);
        v61 = *v58;
      }

      v65 = v61 + 4 * *(v20 + 2) + v62;
      v66 = *(v58 + 8) - v65;
      if (v66 >= 1)
      {
        bzero(v65, v66);
      }

      v67 = *(v58 + 24);
      if (v67 == *(v58 + 32))
      {
        goto LABEL_70;
      }

      if (*(v20 + 597))
      {
        v68 = (v58 + 48);
        v69 = (v67 + 32 * *(v58 + 48));
      }

      else
      {
        v68 = (v58 + 48);
        v69 = (v67 + 32 * *(v58 + 48));
        if (v57[152 * *(v20 + 676) + 144] == 1)
        {
          vDSP_vclr(v69->realp, 1, *(v20 + 5));
          vDSP_vclr(v69->imagp, 1, *(v20 + 5));
          goto LABEL_68;
        }
      }

      MultiRadixRealFFT::RealOutOfPlaceForwardTransform((v20 + 136), v61, v69, 1.0);
LABEL_68:
      v70 = (*(v58 + 48) + 1);
      *(v58 + 48) = v70;
      if (v70 >= (*(v58 + 32) - *(v58 + 24)) >> 5)
      {
        *v68 = 0;
      }

LABEL_70:
      if (v32)
      {
        AUFIREngineKernel::ProcessXfadeChannel(v20, v20 + 2400, v56, *(v20 + 303), (*(v20 + 304) - *(v20 + 303)) >> 4, 0);
        AUFIREngineKernel::ProcessXfadeChannel(v20, v20 + 2552, v56, *(v20 + 322), (*(v20 + 323) - *(v20 + 322)) >> 4, 0);
        if (*(v20 + 1))
        {
          v71 = 0;
          do
          {
            v72 = 0;
            v73 = 1;
            do
            {
              v74 = v73;
              v75 = &v57[152 * v72];
              v76 = *(*v75 + 24 * v71);
              v77 = *(v75 + 6);
              v78 = *(*(v20 + 7) + 16 * v71);
              if (v72 | v56)
              {
                MEMORY[0x1E12BE780](v76, 1, v77, 1, v78, 1, v78, 1, *(v20 + 2), v79);
              }

              else
              {
                MEMORY[0x1E12BE7F0](v76, 1, v77, 1, v78, 1, *(v20 + 2));
              }

              v73 = 0;
              v72 = 1;
            }

            while ((v74 & 1) != 0);
            ++v71;
          }

          while (v71 < *(v20 + 1));
        }
      }

      else
      {
        AUFIREngineKernel::ProcessXfadeChannel(v20, &v57[152 * *(v20 + 676)], v56, *(v20 + 7), (*(v20 + 8) - *(v20 + 7)) >> 4, v56 != 0);
      }

      ++v56;
    }

    while (v56 < *v20);
  }

  return 0;
}

BOOL ca::concurrent::deferred_deletion_queue<AUFIREngineKernel,10ul,std::default_delete<AUFIREngineKernel>>::pop(uint64_t a1, AUFIREngineKernel **a2)
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

    std::unique_ptr<AUFIREngineKernel>::reset[abi:ne200100](a2, v5);
  }

  return v4;
}

void AUFIREngine::ForwardParamsToKernel(AUFIREngine *this, AUFIREngineKernel *a2, int a3)
{
  NumberOfInputChannels = AULeanSpatial::GetNumberOfInputChannels(this);
  NumberOfOutputChannels = AUFIREngine::GetNumberOfOutputChannels(this);
  if (NumberOfInputChannels)
  {
    v7 = 0;
    v28 = 3000000;
    v27 = 2000000;
    v8 = 1000000;
    v26 = NumberOfOutputChannels;
    v25 = NumberOfOutputChannels;
    do
    {
      if (NumberOfOutputChannels)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v29 = 0.0;
          (*(*this + 144))(this, (v8 + v9), 0, 0, &v29);
          v11.n128_f32[0] = v29;
          v12 = *(*(a2 + 295) + 24 * v7);
          v13 = v10 >> 6;
          v14 = 1 << v10;
          if (v29 == 0.0)
          {
            v15 = *(v12 + 8 * v13) & ~v14;
          }

          else
          {
            v15 = *(v12 + 8 * v13) | v14;
          }

          *(v12 + 8 * v13) = v15;
          v29 = 0.0;
          (*(*this + 144))(this, (v27 + v9), 0, 0, &v29, v11);
          v16.n128_f32[0] = v29;
          v17 = *(*(a2 + 292) + 24 * v7);
          if (v29 == 0.0)
          {
            v18 = *(v17 + 8 * v13) & ~v14;
          }

          else
          {
            v18 = *(v17 + 8 * v13) | v14;
          }

          *(v17 + 8 * v13) = v18;
          v29 = 0.0;
          (*(*this + 144))(this, (v28 + v9), 0, 0, &v29, v16);
          *(*(*(a2 + 289) + 24 * v7) + 4 * v10++) = __exp10f(v29 * 0.05);
          v9 += NumberOfInputChannels;
        }

        while (v26 != v10);
      }

      ++v7;
      ++v27;
      ++v28;
      ++v8;
      NumberOfOutputChannels = v25;
    }

    while (v7 != NumberOfInputChannels);
  }

  v29 = 0.0;
  (*(*this + 144))(this, 2, 0, 0, &v29);
  *(a2 + 577) = __exp10f(v29 * 0.05);
  v29 = 0.0;
  (*(*this + 144))(this, 0, 0, 0, &v29);
  if (*(a2 + 3) > v29)
  {
    *(a2 + 576) = v29;
  }

  v29 = 0.0;
  (*(*this + 144))(this, 1, 0, 0, &v29);
  v19 = v29;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v21 = (*(Element + 80) * (v19 / 1000.0));
  *(a2 + 596) = v21;
  if (a3)
  {
    if (*(a2 + 597))
    {
      __assert_rtn("CommitChanges", "AUFIREngineKernel.cpp", 542, "!IsFading()");
    }

    v22 = *(a2 + 676);
    v23 = v22 ^ 1;
    *(a2 + 597) = v21;
    *(a2 + 598) = 0;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    *(a2 + 599) = 1.0 / v21;
    AUFIREngineKernel::PrepareXfadeChannel(a2, v22 ^ 1);
    if (!*(a2 + 597))
    {
      *(a2 + 676) = v23;
    }
  }

  else
  {
    *(a2 + 597) = 0;
    *(a2 + 676) = 0;
    AUFIREngineKernel::PrepareXfadeChannel(a2, 0);
  }
}