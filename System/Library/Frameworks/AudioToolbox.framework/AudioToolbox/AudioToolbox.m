unsigned int *FadeBufferLists(unsigned int *result, AudioBufferList *a2, unsigned int a3)
{
  v3 = *result;
  if (v3 == a2->mNumberBuffers && v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *&result[4 * i + 4];
      mData = a2->mBuffers[i].mData;
      if (v5 != mData && a3 != 0)
      {
        v8 = 0.0;
        v9 = a3;
        do
        {
          v10 = *v5++;
          *mData = ((1.0 - v8) * *mData) + (v8 * v10);
          ++mData;
          v8 = (1.0 / a3) + v8;
          --v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t AUSilenceNonFiniteAnalyzer::ProcessBufferLists(AUSilenceNonFiniteAnalyzer *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers == a4->mNumberBuffers)
  {
    if (!a3->mNumberBuffers)
    {
      if (*(this + 528))
      {
        return 0;
      }

      goto LABEL_37;
    }

    v10 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v12 = &a3->mBuffers[0].mData;
    do
    {
      v13 = *(v12 - 1);
      if (v13 == *(p_mData - 1) && *v12 != *p_mData)
      {
        memcpy(*p_mData, *v12, v13);
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v10;
      p_mData += 2;
      v12 += 2;
    }

    while (v10 < mNumberBuffers);
  }

  if (*(this + 528))
  {
    return 0;
  }

  if (!mNumberBuffers)
  {
LABEL_37:
    v19 = 0;
    v20 = this + 529;
    v21 = a5 == 0;
    v22 = 1;
    goto LABEL_38;
  }

  v14 = 0;
  v15 = 0;
  v16 = &a3->mBuffers[0].mData;
  do
  {
    if ((*(this + 576) & 1) == 0)
    {
      break;
    }

    if (*(this + 150) != 32)
    {
      break;
    }

    v17 = *v16;
    if (!*v16)
    {
      break;
    }

    v18 = *(v16 - 1) >> 2;
    __C = 0.0;
    vDSP_sve(v17, 1, &__C, v18);
    v14 |= fabsf(__C) == INFINITY;
    ++v15;
    mNumberBuffers = a3->mNumberBuffers;
    v16 += 2;
  }

  while (v15 < mNumberBuffers);
  v19 = 0;
  v20 = this + 529;
  v21 = a5 == 0;
  v22 = 1;
  if (mNumberBuffers && (*(this + 529) & 1) == 0 && a5)
  {
    v23 = 0;
    v19 = 0;
    do
    {
      v24 = &a3->mBuffers[v23];
      mNumberChannels = v24->mNumberChannels;
      if (mNumberChannels)
      {
        v26 = 0;
        mData = v24->mData;
        v28 = &mData[mNumberChannels];
        do
        {
          if (mData[v26] == 0.0)
          {
            v31 = 1;
            v32 = v28;
            while (a5 != v31)
            {
              v33 = *v32;
              v32 += mNumberChannels;
              ++v31;
              if (v33 != 0.0)
              {
                v30 = 0;
                v34 = v31 - 1;
                goto LABEL_30;
              }
            }

            v30 = 1;
            v34 = a5;
LABEL_30:
            v29 = v34 >= a5;
          }

          else
          {
            v29 = 0;
            v30 = 0;
          }

          v19 = v30 | v19 & 1;
          v22 &= v29;
          ++v26;
          ++v28;
        }

        while (v26 != mNumberChannels);
      }

      ++v23;
    }

    while (v23 != mNumberBuffers);
  }

  if (v14)
  {
    ++*(this + 141);
    v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_130;
    }

    ausdk::AUElement::SetParameter(v35, 5u, *(this + 141));
  }

LABEL_38:
  if (*v20)
  {
    return 0;
  }

  if (*(this + 530) == 1)
  {
    if ((v22 & 1) != 0 || (v37 = a3->mNumberBuffers, !v37))
    {
      v43 = 1;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      while (1)
      {
        v40 = &a3->mBuffers[v38];
        v41 = v40->mNumberChannels;
        if (v41)
        {
          break;
        }

LABEL_47:
        ++v38;
        v43 = 1;
        v39 = v38 >= v37;
        if (v38 == v37)
        {
          goto LABEL_51;
        }
      }

      v42 = v40->mData;
      while (*v42 == 0.0)
      {
        ++v42;
        if (!--v41)
        {
          goto LABEL_47;
        }
      }

      v43 = v39;
    }

LABEL_51:
    *(this + 531) = v43 & 1;
    *(this + 533) = *(this + 532);
    *(this + 530) = 0;
  }

  if (v22)
  {
    *(this + 134) += a5;
    if (*(this + 531) != 1)
    {
      if ((*(this + 533) & 1) == 0)
      {
        v48 = *(this + 138) + a5;
        *(this + 138) = v48;
        if (v48 > *(this + 137))
        {
          v49 = *(this + 34);
          *(this + 137) = v48;
          *(this + 139) = v49;
        }
      }

      goto LABEL_121;
    }

    *(this + 136) += a5;
    v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v45)
    {
      ausdk::AUElement::SetParameter(v44, 2u, *(this + 136));
      goto LABEL_121;
    }

LABEL_130:
    abort();
  }

  v46 = *(this + 534);
  *(this + 134) = 0;
  if (v46 != 1)
  {
    *(this + 138) = 0;
    *(this + 531) = 0;
    if (!a5 || (*(this + 533) & 1) == 0)
    {
      goto LABEL_121;
    }

    v50 = 0;
    v51 = a3->mNumberBuffers;
    while (1)
    {
      if (v51)
      {
        if (fabsf(*(a3->mBuffers[0].mData + v50)) >= 0.0001)
        {
          break;
        }

        v52 = 0;
        mBuffers = a3[1].mBuffers;
        do
        {
          if (v51 - 1 == v52)
          {
            goto LABEL_72;
          }

          v54 = *&mBuffers->mNumberChannels;
          ++mBuffers;
          ++v52;
        }

        while (fabsf(*(v54 + 4 * v50)) < 0.0001);
        if (v52 < v51)
        {
          break;
        }
      }

LABEL_72:
      if (++v50 == a5)
      {
        goto LABEL_121;
      }
    }

    *(this + 533) = 0;
    goto LABEL_121;
  }

  if (!v21)
  {
    LODWORD(v47) = 0;
    v55 = a3->mNumberBuffers;
    while (1)
    {
      if (v55)
      {
        v56 = 0;
        v57 = 0;
        while (1)
        {
          v58 = &a3->mBuffers[v56];
          v59 = v58->mNumberChannels;
          if (v59)
          {
            break;
          }

LABEL_81:
          v57 = ++v56 >= v55;
          if (v56 == v55)
          {
            goto LABEL_84;
          }
        }

        v60 = (v58->mData + 4 * (v47 * v59));
        while (*v60 == 0.0)
        {
          ++v60;
          if (!--v59)
          {
            goto LABEL_81;
          }
        }

        if (!v57)
        {
          break;
        }
      }

LABEL_84:
      LODWORD(v47) = v47 + 1;
      if (v47 == a5)
      {
        LODWORD(v47) = a5;
        break;
      }
    }

    if ((*(this + 531) & 1) == 0)
    {
      if (v47)
      {
        if ((*(this + 533) & 1) == 0)
        {
          v67 = *(this + 138) + v47;
          if (v67 > *(this + 137))
          {
            v68 = *(this + 34);
            *(this + 137) = v67;
            *(this + 139) = v68;
          }
        }
      }

      goto LABEL_89;
    }

LABEL_87:
    *(this + 136) += v47;
    v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v62 & 1) == 0)
    {
      goto LABEL_130;
    }

    ausdk::AUElement::SetParameter(v61, 2u, *(this + 136));
    *(this + 531) = 0;
    goto LABEL_89;
  }

  LODWORD(v47) = 0;
  if (*(this + 531) == 1)
  {
    goto LABEL_87;
  }

LABEL_89:
  *(this + 138) = 0;
  if (v47 >= a5 || (*(this + 533) & 1) == 0)
  {
    goto LABEL_106;
  }

  v63 = a3->mNumberBuffers;
  v47 = v47;
  while (!v63)
  {
LABEL_98:
    if (++v47 == a5)
    {
      goto LABEL_121;
    }
  }

  if (fabsf(*(a3->mBuffers[0].mData + v47)) < 0.0001)
  {
    v64 = 0;
    v65 = a3[1].mBuffers;
    while (v63 - 1 != v64)
    {
      v66 = *&v65->mNumberChannels;
      ++v65;
      ++v64;
      if (fabsf(*(v66 + 4 * v47)) >= 0.0001)
      {
        if (v64 < v63)
        {
          goto LABEL_105;
        }

        goto LABEL_98;
      }
    }

    goto LABEL_98;
  }

LABEL_105:
  *(this + 533) = 0;
LABEL_106:
  if (v47 < a5)
  {
    v69 = 0;
    v72 = a3->mNumberBuffers;
    v71 = a3->mBuffers;
    v70 = v72;
    do
    {
      if (!v70)
      {
        goto LABEL_117;
      }

      v73 = 0;
      v74 = 0;
      while (1)
      {
        v75 = &v71[v73];
        v76 = v75->mNumberChannels;
        if (v76)
        {
          break;
        }

LABEL_114:
        v74 = ++v73 >= v70;
        if (v73 == v70)
        {
          goto LABEL_117;
        }
      }

      v77 = (v75->mData + 4 * (v47 * v76));
      while (*v77 == 0.0)
      {
        ++v77;
        if (!--v76)
        {
          goto LABEL_114;
        }
      }

      if (!v74)
      {
        v69 = 0;
        *(this + 138) = 0;
      }

      else
      {
LABEL_117:
        *(this + 138) = ++v69;
        if (v69 > *(this + 137))
        {
          v78 = (*(this + 34) + v47);
          *(this + 137) = v69;
          *(this + 139) = v78;
        }
      }

      LODWORD(v47) = v47 + 1;
    }

    while (v47 != a5);
  }

LABEL_121:
  if (v19)
  {
    v79 = *(this + 135) + a5;
  }

  else
  {
    v79 = 0;
  }

  *(this + 135) = v79;
  v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_130;
  }

  ausdk::AUElement::SetParameter(v80, 0, *(this + 134));
  v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_130;
  }

  ausdk::AUElement::SetParameter(v82, 1u, *(this + 135));
  v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_130;
  }

  ausdk::AUElement::SetParameter(v84, 3u, *(this + 137));
  v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_130;
  }

  ausdk::AUElement::SetParameter(v86, 6u, *(this + 139));
  return 0;
}

float32x4_t *aDSP_zvmama(float32x4_t *result, uint64_t a2, float32x4_t **a3, uint64_t a4, float32x4_t **a5, uint64_t a6, float32x4_t **a7, uint64_t a8, float32x4_t **a9, uint64_t a10, uint64_t a11)
{
  v11 = a11;
  if (a11)
  {
    v12 = result->i64[0];
    v13 = result->i64[1];
    v14 = *a3;
    v15 = a3[1];
    v16 = *a5;
    v17 = a5[1];
    result = *a7;
    v18 = a7[1];
    v19 = *a9;
    v20 = a9[1];
    if (a11 < 4 || a2 ^ 1 | a4 ^ 1 | a6 ^ 1 | a8 ^ 1 | a10 ^ 1)
    {
      if (a11 >= 1)
      {
        _S0 = v13->f32[0];
        v209 = &v13->f32[a2];
        _S12 = v15->f32[0];
        v211 = &v15->f32[a4];
        v212 = v14->f32[0];
        v213 = &v14->f32[a4];
        v214 = v17->f32[0];
        v215 = v12->f32[0];
        v216 = &v12->f32[a2];
        v217 = a11 - 2;
        if (a11 - 1 >= 1)
        {
          do
          {
            __asm { FMLS            S16, S0, V12.S[0] }

            v219 = vmlas_n_f32(v214, _S0, v212);
            _S0 = v18->f32[0];
            v18 = (v18 + 4 * a8);
            v221 = vmlas_n_f32(_S16, v215, v212);
            --v217;
            _S20 = vmlas_n_f32(v219, v215, _S12);
            v223 = result->f32[0];
            result = (result + 4 * a8);
            v16->f32[0] = v221;
            v16 = (v16 + 4 * a6);
            __asm { FMLS            S24, S20, V0.S[0] }

            v17->f32[0] = _S20;
            v17 = (v17 + 4 * a6);
            v225 = vmlas_n_f32(_S12, v221, _S0);
            _S0 = *v209;
            v209 += a2;
            _S12 = *v211;
            v211 += a4;
            v212 = *v213;
            v213 += a4;
            v226 = vmlas_n_f32(_S24, v221, v223);
            v227 = vmlas_n_f32(v225, _S20, v223);
            v214 = v17->f32[0];
            v215 = *v216;
            v216 += a2;
            v19->f32[0] = v226;
            v19 = (v19 + 4 * a10);
            v20->f32[0] = v227;
            v20 = (v20 + 4 * a10);
          }

          while (_NF == _VF);
        }

        __asm { FMLS            S16, S0, V12.S[0] }

        v229 = vmlas_n_f32(v214, _S0, v212);
        _S0 = v18->f32[0];
        v231 = vmlas_n_f32(_S16, v215, v212);
        _S20 = vmlas_n_f32(v229, v215, _S12);
        v233 = result->f32[0];
        result = (result + 4);
        v17->f32[0] = _S20;
        __asm { FMLS            S8, S20, V0.S[0] }

        v16->f32[0] = v231;
        v19->f32[0] = vmlas_n_f32(_S8, v231, v233);
        v20->f32[0] = vmlas_n_f32(vmlas_n_f32(_S12, v231, _S0), _S20, v233);
      }
    }

    else if ((v19 & 0xF) == 0 || (v20 & 0xF) == 0 || (v19 & 3) != 0 && (v20 & 3) != 0)
    {
LABEL_11:
      v43 = v11 - 16;
      if (v43 >= 0)
      {
        v45 = *v13;
        v46 = v13[1];
        v44 = v13 + 2;
        v48 = *v15;
        v49 = v15[1];
        v47 = v15 + 2;
        v51 = *v14;
        v52 = v14[1];
        v50 = v14 + 2;
        v54 = *v12;
        v55 = v12[1];
        v53 = v12 + 2;
        v56 = *v44;
        v57 = v44[1];
        v13 = v44 + 2;
        v58 = vmlsq_f32(*v16, v45, v48);
        v59 = vmlsq_f32(v16[1], v46, v49);
        v60 = *v47;
        v61 = v47[1];
        v15 = v47 + 2;
        v62 = vmlaq_f32(*v17, v45, v51);
        v63 = vmlaq_f32(v17[1], v46, v52);
        v65 = *v18;
        v66 = v18[1];
        f32 = v18[2].f32;
        v67 = *v50;
        v68 = v50[1];
        v14 = v50 + 2;
        v69 = v16[2];
        v70 = v16[3];
        v71 = vmlaq_f32(v58, v54, v51);
        v72 = vmlaq_f32(v59, v55, v52);
        v73 = v17[2];
        v74 = v17[3];
        v75 = vmlaq_f32(v62, v54, v48);
        v76 = vmlaq_f32(v63, v55, v49);
        v78 = *result;
        v79 = result[1];
        v77 = result[2].f32;
        v80 = v48;
        v81 = v49;
        v82 = *v53;
        v83 = v53[1];
        v12 = v53 + 2;
        v84 = v51;
        v85 = v52;
        for (v43 -= 16; v43 >= 0; v43 -= 16)
        {
          v87 = *v15;
          v88 = v15[1];
          v86 = v15 + 2;
          v89 = vmlsq_f32(v84, v75, v65);
          v90 = vmlsq_f32(v85, v76, v66);
          v92 = *v14;
          v93 = v14[1];
          v91 = v14 + 2;
          v94 = vmlaq_f32(v80, v71, v65);
          v95 = vmlaq_f32(v81, v72, v66);
          v97 = *v13;
          v98 = v13[1];
          v96 = v13 + 2;
          v99 = vmlsq_f32(v69, v56, v60);
          v100 = vmlsq_f32(v70, v57, v61);
          *v16 = v71;
          v16[1] = v72;
          v101 = v16 + 2;
          v102 = vmlaq_f32(v73, v56, v67);
          v103 = vmlaq_f32(v74, v57, v68);
          *v17 = v75;
          v17[1] = v76;
          v104 = v17 + 2;
          v106 = *f32;
          v107 = *(f32 + 1);
          v105 = f32 + 2;
          v108 = vmlaq_f32(v89, v71, v78);
          v109 = vmlaq_f32(v90, v72, v79);
          v110 = v101[2];
          v111 = v101[3];
          v112 = vmlaq_f32(v94, v75, v78);
          v113 = vmlaq_f32(v95, v76, v79);
          v114 = v104[2];
          v115 = v104[3];
          v116 = vmlaq_f32(v99, v82, v67);
          v117 = vmlaq_f32(v100, v83, v68);
          v119 = *v12;
          v120 = v12[1];
          v118 = v12 + 2;
          v121 = vmlaq_f32(v102, v82, v60);
          v122 = vmlaq_f32(v103, v83, v61);
          v124 = *v77;
          v125 = *(v77 + 1);
          v123 = v77 + 2;
          v126 = v60;
          v127 = v61;
          *v19 = v108;
          v19[1] = v109;
          v128 = v19 + 2;
          *v20 = v112;
          v20[1] = v113;
          v129 = v20 + 2;
          v60 = *v86;
          v61 = v86[1];
          v15 = v86 + 2;
          v130 = vmlsq_f32(v67, v121, v106);
          v131 = vmlsq_f32(v68, v122, v107);
          v67 = *v91;
          v68 = v91[1];
          v14 = v91 + 2;
          v132 = vmlaq_f32(v126, v116, v106);
          v133 = vmlaq_f32(v127, v117, v107);
          v56 = *v96;
          v57 = v96[1];
          v13 = v96 + 2;
          v134 = vmlsq_f32(v110, v97, v87);
          v135 = vmlsq_f32(v111, v98, v88);
          *v101 = v116;
          v101[1] = v117;
          v16 = v101 + 2;
          v136 = vmlaq_f32(v114, v97, v92);
          v137 = vmlaq_f32(v115, v98, v93);
          *v104 = v121;
          v104[1] = v122;
          v17 = v104 + 2;
          v65 = *v105;
          v66 = *(v105 + 1);
          f32 = v105 + 2;
          v138 = vmlaq_f32(v130, v116, v124);
          v139 = vmlaq_f32(v131, v117, v125);
          v69 = v16[2];
          v70 = v16[3];
          v140 = vmlaq_f32(v132, v121, v124);
          v141 = vmlaq_f32(v133, v122, v125);
          v73 = v17[2];
          v74 = v17[3];
          v71 = vmlaq_f32(v134, v119, v92);
          v72 = vmlaq_f32(v135, v120, v93);
          v82 = *v118;
          v83 = v118[1];
          v12 = v118 + 2;
          v75 = vmlaq_f32(v136, v119, v87);
          v76 = vmlaq_f32(v137, v120, v88);
          v78 = *v123;
          v79 = *(v123 + 1);
          v77 = v123 + 2;
          v80 = v87;
          v81 = v88;
          *v128 = v138;
          v128[1] = v139;
          v19 = v128 + 2;
          v84 = v92;
          v85 = v93;
          *v129 = v140;
          v129[1] = v141;
          v20 = v129 + 2;
        }

        v142 = vmlsq_f32(v69, v56, v60);
        v143 = vmlsq_f32(v70, v57, v61);
        *v16 = v71;
        v16[1] = v72;
        v144 = v16 + 2;
        v145 = vmlaq_f32(v73, v56, v67);
        v146 = vmlaq_f32(v74, v57, v68);
        *v17 = v75;
        v17[1] = v76;
        v147 = v17 + 2;
        v148 = *f32;
        v149 = *(f32 + 1);
        v18 = (f32 + 2);
        v150 = vmlaq_f32(v142, v82, v67);
        v151 = vmlaq_f32(v143, v83, v68);
        v152 = vmlaq_f32(v145, v82, v60);
        v153 = vmlaq_f32(v146, v83, v61);
        v154 = *v77;
        v155 = *(v77 + 1);
        result = (v77 + 2);
        *v19 = vmlaq_f32(vmlsq_f32(v84, v75, v65), v71, v78);
        v19[1] = vmlaq_f32(vmlsq_f32(v85, v76, v66), v72, v79);
        v156 = v19 + 2;
        *v20 = vmlaq_f32(vmlaq_f32(v80, v71, v65), v75, v78);
        v20[1] = vmlaq_f32(vmlaq_f32(v81, v72, v66), v76, v79);
        v157 = v20 + 2;
        *v144 = v150;
        v144[1] = v151;
        v16 = v144 + 2;
        *v147 = v152;
        v147[1] = v153;
        v17 = v147 + 2;
        *v156 = vmlaq_f32(vmlsq_f32(v67, v152, v148), v150, v154);
        v156[1] = vmlaq_f32(vmlsq_f32(v68, v153, v149), v151, v155);
        v19 = v156 + 2;
        *v157 = vmlaq_f32(vmlaq_f32(v60, v150, v148), v152, v154);
        v157[1] = vmlaq_f32(vmlaq_f32(v61, v151, v149), v153, v155);
        v20 = v157 + 2;
      }

      v158 = v43 + 16;
      if (v158)
      {
        v21 = v158 < 4;
        for (i = v158 - 4; !v21; i -= 4)
        {
          v160 = *v13++;
          v161 = *v15++;
          v162 = *v14++;
          v163 = *v12++;
          v164 = vmlsq_f32(*v16, v160, v161);
          v165 = vmlaq_f32(*v17, v160, v162);
          v166 = *v18++;
          v167 = vmlaq_f32(v164, v163, v162);
          v168 = vmlaq_f32(v165, v163, v161);
          v169 = *result++;
          *v16++ = v167;
          *v17++ = v168;
          *v19++ = vmlaq_f32(vmlsq_f32(v162, v168, v166), v167, v169);
          *v20++ = vmlaq_f32(vmlaq_f32(v161, v167, v166), v168, v169);
          v21 = i < 4;
        }

        v170 = i + 4;
        if (v170)
        {
          v172 = v13->f32[0];
          v171 = &v13->f32[1];
          _S0 = v172;
          v175 = v15->f32[0];
          v174 = &v15->f32[1];
          _S12 = v175;
          v178 = v14->f32[0];
          v177 = &v14->f32[1];
          v179 = v178;
          v180 = v17->f32[0];
          v182 = v12->f32[0];
          v181 = &v12->f32[1];
          v183 = v182;
          v21 = v170 < 2;
          v184 = v170 - 2;
          if (!v21)
          {
            do
            {
              __asm { FMLS            S16, S0, V12.S[0] }

              v186 = vmlas_n_f32(v180, _S0, v179);
              v187 = v18->f32[0];
              v18 = (v18 + 4);
              _S0 = v187;
              v189 = vmlas_n_f32(_S16, v183, v179);
              --v184;
              _S20 = vmlas_n_f32(v186, v183, _S12);
              v191 = result->f32[0];
              result = (result + 4);
              v192 = v191;
              v16->f32[0] = v189;
              v16 = (v16 + 4);
              v193 = vmlas_n_f32(_S12, v189, _S0);
              v17->f32[0] = _S20;
              v17 = (v17 + 4);
              __asm { FMLS            S24, S20, V0.S[0] }

              v195 = *v171++;
              _S0 = v195;
              v196 = *v174++;
              _S12 = v196;
              v197 = *v177++;
              v179 = v197;
              v198 = vmlas_n_f32(_S24, v189, v192);
              v199 = vmlas_n_f32(v193, _S20, v192);
              v180 = v17->f32[0];
              v200 = *v181++;
              v183 = v200;
              v19->f32[0] = v198;
              v19 = (v19 + 4);
              v20->f32[0] = v199;
              v20 = (v20 + 4);
            }

            while (_NF == _VF);
          }

          __asm { FMLS            S16, S0, V12.S[0] }

          v202 = vmlas_n_f32(v180, _S0, v179);
          _S0 = v18->f32[0];
          v204 = vmlas_n_f32(_S16, v183, v179);
          _S20 = vmlas_n_f32(v202, v183, _S12);
          v206 = result->f32[0];
          result = (result + 4);
          v17->f32[0] = _S20;
          __asm { FMLS            S8, S20, V0.S[0] }

          v16->f32[0] = v204;
          v19->f32[0] = vmlas_n_f32(_S8, v204, v206);
          v20->f32[0] = vmlas_n_f32(vmlas_n_f32(_S12, v204, _S0), _S20, v206);
        }
      }
    }

    else
    {
      while (1)
      {
        v21 = v11-- < 1;
        if (v21)
        {
          break;
        }

        v22 = v13->f32[0];
        v13 = (v13 + 4);
        _S0 = v22;
        v24 = v15->f32[0];
        v15 = (v15 + 4);
        _S12 = v24;
        v26 = v14->f32[0];
        v14 = (v14 + 4);
        v27 = v26;
        v28 = v12->f32[0];
        v12 = (v12 + 4);
        v29 = v28;
        __asm { FMLS            S16, S0, V12.S[0] }

        v35 = vmlas_n_f32(v17->f32[0], _S0, v27);
        v36 = v18->f32[0];
        v18 = (v18 + 4);
        _S0 = v36;
        v38 = vmlas_n_f32(_S16, v29, v27);
        _S20 = vmlas_n_f32(v35, v29, _S12);
        v40 = result->f32[0];
        result = (result + 4);
        v17->f32[0] = _S20;
        v17 = (v17 + 4);
        __asm { FMLS            S8, S20, V0.S[0] }

        v16->f32[0] = v38;
        v16 = (v16 + 4);
        v42 = v20 + 4;
        _ZF = ((v19->u64 + 4) & 0xF) == 0;
        v19->f32[0] = vmlas_n_f32(_S8, v38, v40);
        v19 = (v19 + 4);
        v20->f32[0] = vmlas_n_f32(vmlas_n_f32(_S12, v38, _S0), _S20, v40);
        v20 = (v20 + 4);
        if (_ZF || (v42 & 0xF) == 0)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

DspLib::ChannelBuffer *DspLib::ChannelBuffer::operator=(DspLib::ChannelBuffer *this, DspLib::ChannelBuffer *a2)
{
  if (a2 != this)
  {
    v4 = *(a2 + 1) - *a2;
    v5 = v4 ? (*(*a2 + 8) - **a2) >> 2 : 0;
    DspLib::ChannelBuffer::resize(this, 0xAAAAAAAAAAAAAAABLL * (v4 >> 3), v5);
    v7 = *this;
    v6 = *(this + 1);
    if (v6 != *this)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = 3 * v8;
        v11 = *a2 + 8 * v10;
        v12 = *v11;
        v13 = *(v11 + 8);
        if (v13 != v12)
        {
          memmove(*(v7 + 8 * v10), v12, v13 - v12);
          v7 = *this;
          v6 = *(this + 1);
        }

        v8 = v9;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) > v9++);
    }
  }

  return this;
}

void DspLib::XTC::HRIRDatabase::getHRTFwithAngleAndRotation(uint64_t a1, unint64_t *a2, float a3, float a4)
{
  if (*(a1 + 4))
  {
    v5 = a3 * 0.5;
    v6 = a4 - (a3 * 0.5);
    v7 = v5 + a4;

    DspLib::XTC::HRIRDatabase::getHRTF(a1, 0, a2, v6, v7);
  }

  else
  {
    *a2 = 0;
    for (i = 2; i != 42; i += 10)
    {
      DspLib::ComplexVector::setLength(&a2[i], *a2);
    }

    v9 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC_HRIRdatabase.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v9, 106);
    ++DspLibDebug::mAssertCounter;
  }
}

void DspLib::XTC::HRIRDatabase::getHRTF(uint64_t a1, int a2, uint64_t a3, float a4, float a5)
{
  *a3 = (1 << (*(a1 + 4) - 1));
  v10 = (a3 + 16);
  for (i = 16; i != 336; i += 80)
  {
    DspLib::ComplexVector::setLength((a3 + i), *a3);
  }

  *(a3 + 8) = *a1;
  if ((*(a1 + 97) & *(a1 + 96)) != 0)
  {
    DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 0, a2, v10, a4);
    v12 = (a3 + 96);
    v13 = a1;
    v14 = 0;
    v15 = a2;
    v16 = a5;
  }

  else
  {
    if (*(a1 + 96))
    {
      DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 0, a2, v10, a4);
      DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 0, a2, (a3 + 96), a5);
      DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 0, a2, (a3 + 176), -a4);
      v21 = -a5;
      v17 = (a3 + 256);
      v18 = a1;
      v19 = 0;
      v20 = a2;
      goto LABEL_8;
    }

    if (!*(a1 + 97))
    {
      return;
    }

    DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 1, a2, v10, -a4);
    v16 = -a5;
    v12 = (a3 + 96);
    v13 = a1;
    v14 = 1;
    v15 = a2;
  }

  DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(v13, v14, v15, v12, v16);
  DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(a1, 1, a2, (a3 + 176), a4);
  v17 = (a3 + 256);
  v18 = a1;
  v19 = 1;
  v20 = a2;
  v21 = a5;
LABEL_8:

  DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(v18, v19, v20, v17, v21);
}

float DspLib::XTC::HRIRDatabase::getHRTFForEarSpeakerAndAzimuth(DspLib::XTC::HRIRDatabase *a1, int a2, int a3, void *a4, float a5)
{
  v20 = 0;
  v19 = 0;
  v9 = DspLib::XTC::HRIRDatabase::indexesAndInterpolationFactorForAzimuth(a1, a5, &v20, &v19);
  std::vector<float>::vector[abi:ne200100](&__p, 1uLL);
  std::vector<float>::vector[abi:ne200100](&v15, 1uLL);
  std::function<float ()(unsigned int,DspLib::XTC::HRTFSet::Ear,DspLib::XTC::HRTFSet::Speaker,std::vector<float> &)>::operator()(a1 + 64, v20, a2, a3);
  v11 = v10;
  std::function<float ()(unsigned int,DspLib::XTC::HRTFSet::Ear,DspLib::XTC::HRTFSet::Speaker,std::vector<float> &)>::operator()(a1 + 64, v19, a2, a3);
  if (a4 && v18 != __p)
  {
    v12 = v15;
    if (v16 == v15)
    {
      goto LABEL_6;
    }

    v13 = v9;
    DspLib::XTC::HRIRDatabase::performFFTandInterpolation(a1, __p, (v18 - __p) >> 2, v15, v13, (v16 - v15) >> 2, a4);
  }

  v12 = v15;
LABEL_6:
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_1DDB8A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

double DspLib::XTC::HRIRDatabase::indexesAndInterpolationFactorForAzimuth(DspLib::XTC::HRIRDatabase *this, float a2, unsigned int *a3, unsigned int *a4)
{
  *a3 = 0;
  *a4 = 0;
  v4 = *(this + 2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(this + 3) == v4 || v6 == v5;
  v8 = !v7;
  if (v7)
  {
    v11 = 180.0;
    v17 = 180.0;
  }

  else
  {
    v9 = 0;
    v10 = (v6 - v5) >> 2;
    v11 = 180.0;
    do
    {
      v12 = *(v5 + 4 * v9) - a2;
      v13 = v12;
      if (v12 <= 180.0)
      {
        if (v12 < -180.0)
        {
          v13 = v13 + 360.0;
        }
      }

      else
      {
        v13 = v13 + -360.0;
      }

      v14 = fabs(v13);
      if (v13 <= 0.0 && v14 < v11)
      {
        *a3 = v9;
        v11 = v14;
      }

      ++v9;
    }

    while (v10 > v9);
    if (v8)
    {
      v16 = 0;
      v17 = 180.0;
      do
      {
        v18 = *(v5 + 4 * v16) - a2;
        v19 = v18;
        if (v18 <= 180.0)
        {
          if (v18 < -180.0)
          {
            v19 = v19 + 360.0;
          }
        }

        else
        {
          v19 = v19 + -360.0;
        }

        if (v16 != *a3)
        {
          v20 = fabs(v19);
          if (v19 > 0.0 && v20 < v17)
          {
            *a4 = v16;
            v17 = v20;
          }
        }

        ++v16;
      }

      while (v10 > v16);
    }

    else
    {
      v17 = 180.0;
    }
  }

  return v11 / (v11 + v17);
}

uint64_t std::function<float ()(unsigned int,DspLib::XTC::HRTFSet::Ear,DspLib::XTC::HRTFSet::Speaker,std::vector<float> &)>::operator()(uint64_t a1, int a2, int a3, int a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void DspLib::XTC::HRIRDatabase::performFFTandInterpolation(uint64_t a1, void *a2, int w2_0, void *a4, float a5, uint64_t a6, void *a7)
{
  v7 = *(a1 + 4);
  v8 = 1 << v7;
  v9 = a7[2];
  if (v9 == (1 << v7) >> 1)
  {
    LODWORD(v13) = w2_0;
    std::vector<float>::vector[abi:ne200100](&v26, v8);
    std::vector<float>::vector[abi:ne200100](&v24, v8);
    DspLib::clear(v26, (v27 - v26) >> 2);
    DspLib::clear(v24, (v25 - v24) >> 2);
    if (v8 >= v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v8;
    }

    DspLib::copy(a2, v13, v26);
    DspLib::copy(a4, v13, v24);
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform(v23, v8);
    DspLib::ComplexVector::ComplexVector(&__Z, v9, 0);
    DspLib::ComplexVector::ComplexVector(&v21, v9, 0);
    DspLib::multiply(v26, (v27 - v26) >> 2, 0.5);
    DspLib::multiply(v24, (v25 - v24) >> 2, 0.5);
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(v23, v26, (v27 - v26) >> 2, &__Z);
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(v23, v24, (v25 - v24) >> 2, &v21);
    v15 = v8 >> 1;
    *__Z.imagp = 0.0;
    *v21.imagp = 0.0;
    if (v7)
    {
      v16 = 0;
      if (v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v15;
      }

      do
      {
        DspLib::FFT::interpolate(1, __Z.realp[v16], __Z.imagp[v16], v21.realp[v16], v21.imagp[v16], a5);
        DspLib::ComplexSpan::setElement(a7, v16++, v28);
      }

      while (v17 != v16);
    }

    v18 = *(*a7 + 4 * (v15 - 1));
    v19 = *(a7[1] + 4 * (v15 - 1));
    *a7[1] = DspLib::sign(1, v19) * sqrtf((v19 * v19) + (v18 * v18));
    DspLib::ComplexVector::~ComplexVector(&v21);
    DspLib::ComplexVector::~ComplexVector(&__Z);
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v23);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }

  else
  {
    v20 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/XTC/dsp/DspLibXTC_HRIRdatabase.cpp");
    printf("DSP Sound assertion in %s at line %d\n", v20, 240);
    ++DspLibDebug::mAssertCounter;
  }
}

void sub_1DDB8A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DspLib::ComplexVector::~ComplexVector(va);
  DspLib::ComplexVector::~ComplexVector(va1);
  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(v3 - 160);
  v5 = *(v3 - 144);
  if (v5)
  {
    *(v3 - 136) = v5;
    operator delete(v5);
  }

  v6 = *(v3 - 120);
  if (v6)
  {
    *(v3 - 112) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::process<(DspLib::FFT::Direction)1>(void *a1, DSPComplex *__C, int a3, DSPSplitComplex *__Z)
{
  vDSP_ctoz(__C, 2, __Z, 1, *a1 >> 1);
  v6 = a1[1];
  if (v6)
  {
    realp = __Z->realp;
    imagp = __Z->imagp;
    v9 = __Z->realp;

    vDSP_DFT_Execute(v6, realp, imagp, v9, imagp);
  }
}

DspLib::ChannelBuffer *DspLib::ChannelBuffer::ChannelBuffer(DspLib::ChannelBuffer *this, unint64_t a2, unint64_t a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  DspLib::ChannelBuffer::resize(this, a2, a3);
  return this;
}

void sub_1DDB8AAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 24);
  if (v12)
  {
    *(v10 + 32) = v12;
    operator delete(v12);
  }

  a10 = v10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void DspLib::ChannelBuffer::resize(DspLib::ChannelBuffer *this, unint64_t a2, unint64_t a3)
{
  std::vector<std::vector<float>>::resize(this, a2);
  std::vector<float *>::resize(this + 3, 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  v5 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      std::vector<float>::resize((v5 + 24 * v6), a3);
      *(*(this + 3) + 8 * v6) = *(*this + 24 * v6);
      v6 = v7;
      v5 = *this;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) > v7++);
  }
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<float *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<float *>::__append(a1, a2 - v2);
  }
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<float *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<float *>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::allocator<float *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::allocator<float>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void DspLib::ChannelBuffer::~ChannelBuffer(DspLib::ChannelBuffer *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDB8B32C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    vDSP_DFT_DestroySetup(v2);
  }

  return a1;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

vDSP_Length *DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform(vDSP_Length *a1, vDSP_Length a2)
{
  *a1 = a2;
  Setup = vDSP_DFT_zrop_CreateSetup(0, a2, vDSP_DFT_FORWARD);
  a1[1] = Setup;
  if (!Setup)
  {
    DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform();
  }

  return a1;
}

uint64_t DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::Transform()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/FFT/dsp/DspLibFFT.h");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 78);
  ++DspLibDebug::mAssertCounter;
  return result;
}

DspLib::PowerGuard::Algorithm *DspLib::PowerGuard::Algorithm::Algorithm(DspLib::PowerGuard::Algorithm *this)
{
  v2 = (this + 444);
  v3 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::PowerGuard::Parameters::kDefinition);
  *v3 = &unk_1F5918E08;
  *(v3 + 312) = 1;
  v3[40] = 0;
  *(v3 + 82) = 0;
  *(v3 + 21) = 0u;
  v4 = vdupq_n_s64(1uLL);
  *(v3 + 23) = v4;
  *(v3 + 24) = 0u;
  *(v3 + 25) = 0u;
  *(v3 + 26) = 0u;
  *(v3 + 428) = 0u;
  v3[44] = &unk_1F591B3E0;
  v3[45] = 0x4097700000000000;
  *v2 = xmmword_1DE092F10;
  *(v3 + 460) = 0x3F40000000000000;
  v3[59] = 0;
  *(v3 + 480) = 0;
  *(v3 + 61) = 0u;
  *(v3 + 63) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 67) = 0u;
  v3[69] = 1;
  *(v3 + 140) = 1065353216;
  *(v3 + 71) = 0u;
  *(v3 + 73) = 0u;
  v3[75] = 1;
  *(v3 + 152) = 1065353216;
  *(v3 + 77) = 0u;
  *(v3 + 79) = 0u;
  v3[81] = 0x40E7700000000000;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 176) = 1065353216;
  v3[91] = 0;
  *(v3 + 89) = 0u;
  v3[93] = 0x4097700000000000;
  *(v3 + 812) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  *(v3 + 47) = v4;
  *(v3 + 48) = 0u;
  v3[92] = &unk_1F591B3E0;
  v2[24] = xmmword_1DE092F10;
  *(v3 + 844) = 0x3F40000000000000;
  v3[107] = 0;
  *(v3 + 864) = 0;
  *(v3 + 113) = 0u;
  *(v3 + 115) = 0u;
  *(v3 + 109) = 0u;
  *(v3 + 111) = 0u;
  v3[117] = 1;
  *(v3 + 236) = 1065353216;
  *(v3 + 119) = 0u;
  *(v3 + 121) = 0u;
  v3[123] = 1;
  *(v3 + 248) = 1065353216;
  *(v3 + 125) = 0u;
  *(v3 + 127) = 0u;
  v3[130] = 0x4097700000000000;
  v3[131] = 1;
  v3[132] = 1;
  *(v3 + 1108) = 0u;
  *(v3 + 135) = 0u;
  *(v3 + 137) = 0u;
  *(v3 + 133) = 0u;
  v3[129] = &unk_1F591B410;
  v3[141] = 1;
  *(v3 + 284) = 1065353216;
  *(v3 + 143) = 0u;
  *(v3 + 145) = 0u;
  v3[147] = 0x40E7700000000000;
  *(v3 + 76) = 0u;
  *(v3 + 75) = 0u;
  *(v3 + 74) = 0u;
  *(v3 + 308) = 1065353216;
  v3[157] = 0;
  *(v3 + 155) = 0u;
  v3[159] = 0x4097700000000000;
  *(v3 + 80) = v4;
  *(v3 + 1340) = 0u;
  *(v3 + 83) = 0u;
  *(v3 + 82) = 0u;
  *(v3 + 81) = 0u;
  v3[158] = &unk_1F591B410;
  v3[170] = 1;
  *(v3 + 342) = 1065353216;
  *(v3 + 88) = 0u;
  *(v3 + 87) = 0u;
  *(v3 + 86) = 0u;
  DspLib::PowerGuard::TargetCalculator::TargetCalculator((v3 + 178));
  *(this + 454) = 0;
  *(this + 226) = 0;
  *(this + 112) = 0u;
  *(this + 109) = 0u;
  *(this + 110) = 0u;
  *(this + 1772) = 0u;
  *(this + 1824) = 0;
  *(this + 457) = 0;
  (*(*this + 168))(this);
  return this;
}

void sub_1DDB8B79C(_Unwind_Exception *a1)
{
  DspLib::PowerGuard::PowerController::~PowerController((v1 + 1424));
  DspLib::PowerGuard::TweeterPowerAnalyzer::~TweeterPowerAnalyzer(v5);
  DspLib::PowerGuard::GainApplier::~GainApplier((v1 + 1176));
  DspLib::PowerGuard::TweeterPowerAnalyzer::~TweeterPowerAnalyzer(v4);
  DspLib::PowerGuard::WooferPowerAnalyzer::~WooferPowerAnalyzer(v3);
  DspLib::PowerGuard::GainApplier::~GainApplier((v1 + 648));
  DspLib::PowerGuard::WooferPowerAnalyzer::~WooferPowerAnalyzer(v2);
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v1);
  _Unwind_Resume(a1);
}

void DspLib::PowerGuard::TweeterPowerAnalyzer::~TweeterPowerAnalyzer(DspLib::PowerGuard::TweeterPowerAnalyzer *this)
{
  *this = &unk_1F591B410;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5918F28;
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

void DspLib::PowerGuard::GainApplier::~GainApplier(DspLib::PowerGuard::GainApplier *this)
{
  v4 = (this + 64);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(DspLib::AlgorithmBaseNewParameters *this)
{
  *this = &unk_1F591AE18;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

uint64_t DspLib::PowerGuard::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    v5 = ((*this)[6])(this);
    DspLib::PowerGuard::WooferPowerAnalyzer::initialize((this + 44), v5);
    v6 = ((*this)[6])(this);
    DspLib::PowerGuard::WooferPowerAnalyzer::initialize((this + 92), v6);
    v7 = ((*this)[6])(this);
    DspLib::PowerGuard::TweeterPowerAnalyzer::initialize((this + 129), v7);
    v8 = ((*this)[6])(this);
    DspLib::PowerGuard::TweeterPowerAnalyzer::initialize((this + 158), v8);
    this[6] = (4 * this[47]);
    v9 = ((*this)[6])(this);
    v10 = ((*this)[29])(this);
    DspLib::PowerGuard::GainApplier::initialize((this + 81), v9, 1uLL, v10);
    if (((*this)[8])(this))
    {
      v11 = ((*this)[8])(this) - 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = ((*this)[6])(this);
    v13 = ((*this)[29])(this);
    DspLib::PowerGuard::GainApplier::initialize((this + 147), v12, v11, v13);
    *(this + 8) = 1;
    ((*this)[20])(this);
  }

  ((*this)[21])(this);
  return v4;
}

BOOL DspLib::PowerGuard::Algorithm::uninitialize(DspLib::PowerGuard::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  DspLib::PowerGuard::WooferPowerAnalyzer::uninitialize((this + 352));
  DspLib::PowerGuard::WooferPowerAnalyzer::uninitialize((this + 736));
  DspLib::MultiMovingAverage::setLengths(this + 133, 1, 0);
  DspLib::MultiMovingAverage::setLengths(this + 162, 1, 0);
  DspLib::PowerGuard::GainApplier::uninitialize((this + 648));
  DspLib::PowerGuard::GainApplier::uninitialize((this + 1176));

  return DspLib::PowerGuard::PowerController::uninitialize((this + 1424));
}

uint64_t DspLib::PowerGuard::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  result = DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    v7 = *(a1 + 288);
    for (i = 420; i != 424; ++i)
    {
      v9 = &v7[i - 409];
      v10 = &v7[i - 413];
      if (*v9 > *v10)
      {
        *v9 = *(a1 + i * 4);
        *v10 = *(a1 + i * 4 + 16);
      }
    }

    LODWORD(v4) = vcvtad_u64_f64(*(a1 + 360) * v7[1] / 1000.0);
    *(a1 + 312) = *v7 >= 0.5;
    v11 = *(a1 + 376) * v4;
    *(a1 + 320) = v11;
    v12 = (v11 * 1000.0) / *(a1 + 16);
    *(a1 + 328) = v12;
    v13 = (*(*a1 + 152))(a1, 0);
    v14 = (*(*a1 + 152))(a1, 0);
    v15 = DspLib::dB2Amp(v14, -*(*(a1 + 288) + 8));
    DspLib::PowerGuard::PowerController::setParameters((a1 + 1424), v4, (v13 + 44), v14 + 7, 4uLL, v15);
    if (*(a1 + 1824) == 1)
    {
      v16 = *(a1 + 1828);
    }

    else
    {
      v16 = (*(*a1 + 104))(a1, 15);
      *(a1 + 1828) = v16;
    }

    v17 = *(*(a1 + 288) + 68);
    v18 = (*(*a1 + 152))(a1, 0);
    DspLib::PowerGuard::WooferPowerAnalyzer::setParameters((a1 + 352), v16, v17, (v18 + 12), 4uLL, *(*(a1 + 288) + 80), *(*(a1 + 288) + 76));
    v19 = *(a1 + 1828);
    v20 = *(*(a1 + 288) + 68);
    v21 = (*(*a1 + 152))(a1, 0);
    DspLib::PowerGuard::WooferPowerAnalyzer::setParameters((a1 + 736), v19, v20, (v21 + 12), 4uLL, *(*(a1 + 288) + 80), *(*(a1 + 288) + 76));
    DspLib::PowerGuard::GainApplier::setParameters((a1 + 648), *(a1 + 320), *(*(a1 + 288) + 4), *(*(a1 + 288) + 88));
    v22 = *(a1 + 288);
    v23 = 1.0 / v22[21];
    v24 = v22[16];
    v25 = v22[18];
    v26 = (*(*a1 + 152))(a1, 0);
    v27 = DspLib::PowerGuard::TweeterPowerAnalyzer::setParameters((a1 + 1032), v24, v23, v25, (v26 + 12), 4uLL);
    v28 = *(a1 + 288);
    v29 = *(v28 + 64);
    v30 = *(v28 + 72);
    v31 = (*(*a1 + 152))(a1, 0, v27);
    DspLib::PowerGuard::TweeterPowerAnalyzer::setParameters((a1 + 1264), v29, v23, v30, (v31 + 12), 4uLL);
    v32 = *(a1 + 320);
    v33 = *(a1 + 328);
    v34 = *(*(a1 + 288) + 92);

    return DspLib::PowerGuard::GainApplier::setParameters((a1 + 1176), v32, v33, v34);
  }

  return result;
}

void DspLib::PowerGuard::Algorithm::setSpVACalibration(uint64_t a1, _DWORD *a2)
{
  *(a1 + 1824) = 1;
  *(a1 + 1828) = *a2;
  v3 = (*(*a1 + 152))(a1, 0);
  DspLib::PowerGuard::WooferPowerAnalyzer::setParameters((a1 + 352), *(a1 + 1828), *(*(a1 + 288) + 68), (v3 + 12), 4uLL, *(*(a1 + 288) + 80), *(*(a1 + 288) + 76));
  v4 = *(a1 + 1828);
  v5 = *(a1 + 288);
  v6 = v5[17];
  v8 = v5[19];
  v7 = v5[20];

  DspLib::PowerGuard::WooferPowerAnalyzer::setParameters((a1 + 736), v4, v6, (v3 + 12), 4uLL, v7, v8);
}

void DspLib::PowerGuard::Algorithm::reset(float **this)
{
  DspLib::PowerGuard::WooferPowerAnalyzer::reset((this + 44));
  DspLib::PowerGuard::WooferPowerAnalyzer::reset((this + 92));
  DspLib::PowerGuard::TweeterPowerAnalyzer::reset((this + 129));
  DspLib::PowerGuard::TweeterPowerAnalyzer::reset((this + 158));
  DspLib::PowerGuard::PowerController::reset(this + 178);
  this[42] = 0;
  this[43] = 0;
  *(this + 88) = 0u;
  DspLib::PowerGuard::GainApplier::reset((this + 81));

  DspLib::PowerGuard::GainApplier::reset((this + 147));
}

float DspLib::PowerGuard::Algorithm::setAdmittanceModel(uint64_t a1, uint64_t a2)
{
  DspLib::PowerGuard::WooferPowerAnalyzer::setAdmittanceCoeffs(a1 + 352, *a2, *(a2 + 8));
  *(a1 + 448) = *(a2 + 16);
  DspLib::PowerGuard::WooferPowerAnalyzer::setAdmittanceCoeffs(a1 + 736, *a2, *(a2 + 8));
  result = *(a2 + 16);
  *(a1 + 832) = result;
  return result;
}

uint64_t DspLib::PowerGuard::Algorithm::processBlock(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    memset(v9, 0, sizeof(v9));
    v5 = (a2 + 8);
    DspLib::PowerGuard::PowerAnalyzerBase::process((result + 352), *a2, 1, v2, v9, 0);
    v6 = *v5 - 1;
    if (v6)
    {
      v7 = (*a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    memset(v8, 0, sizeof(v8));
    DspLib::PowerGuard::PowerAnalyzerBase::process((v4 + 1032), v7, v6, v2, v8, 0);
    DspLib::PowerGuard::PowerController::process(v4 + 1424, v9, v4 + 768, v8);
  }

  return result;
}

float DspLib::PowerGuard::Algorithm::status(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 472);
  *(a2 + 52) = v4;
  v5 = *(a1 + 536);
  *(a2 + 56) = v5;
  if (!v5)
  {
    LODWORD(v7) = 0;
LABEL_7:
    v8 = a2 + 20 * v7 + 60;
    v9 = v7 + 1;
    do
    {
      v18 = 0;
      v17 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(&v17, v8);
      v8 += 20;
    }

    while (v9++ != 4);
    goto LABEL_10;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  do
  {
    DspLib::Biquad::Filter::section((a1 + 480), v6, 0, &v17);
    DspLib::Biquad::write(&v17, a2 + 60 + 20 * v6);
    v7 = (v7 + 1);
    v6 = v7;
  }

  while (*(a1 + 536) > v7);
  if (v7 <= 3)
  {
    goto LABEL_7;
  }

LABEL_10:
  v11 = DspLib::PowerGuard::TargetCalculator::status((a1 + 1424), a2);
  *(a2 + 48) = DspLib::amp2dBSafe(v11, *(a1 + 704), 0.000001);
  DspLib::copy((a1 + 336), 4, (a2 + 16));
  v12 = DspLib::copy((a1 + 1408), 4, (a2 + 156));
  *(a2 + 188) = DspLib::amp2dBSafe(v12, *(a1 + 1232), 0.000001);
  v13 = *(a1 + 844);
  v14 = 1.0;
  if (v13 > 0.0)
  {
    v14 = *(a1 + 840) / v13;
  }

  if (*(a1 + 848) >= v14)
  {
    v14 = *(a1 + 848);
  }

  *(a2 + 224) = *(a1 + 832) * v14;
  *(a2 + 228) = *(a1 + 832) * *(a1 + 848);
  *(a2 + 232) = *(a1 + 832);
  v15 = *(a1 + 328);
  *(a2 + 240) = v15;
  LOBYTE(v15) = *(a1 + 1824);
  *(a2 + 236) = v15;
  result = *(a1 + 1828);
  *(a2 + 244) = result;
  return result;
}

void DspLib::PowerGuard::Algorithm::~Algorithm(DspLib::PowerGuard::Algorithm *this)
{
  DspLib::PowerGuard::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5918E08;
  v2 = *(this + 224);
  if (v2)
  {
    *(this + 225) = v2;
    operator delete(v2);
  }

  v3 = *(this + 220);
  if (v3)
  {
    *(this + 221) = v3;
    operator delete(v3);
  }

  for (i = 0; i != -96; i -= 24)
  {
    v5 = *(this + i + 1592);
    if (v5)
    {
      *(this + i + 1600) = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -96; j -= 24)
  {
    v7 = *(this + j + 1496);
    if (v7)
    {
      *(this + j + 1504) = v7;
      operator delete(v7);
    }
  }

  *(this + 158) = &unk_1F591B410;
  v8 = *(this + 172);
  if (v8)
  {
    *(this + 173) = v8;
    operator delete(v8);
  }

  *(this + 158) = &unk_1F5918F28;
  v9 = *(this + 165);
  if (v9)
  {
    *(this + 166) = v9;
    operator delete(v9);
  }

  v10 = *(this + 162);
  if (v10)
  {
    *(this + 163) = v10;
    operator delete(v10);
  }

  v19 = (this + 1240);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v11 = *(this + 151);
  if (v11)
  {
    *(this + 152) = v11;
    operator delete(v11);
  }

  v12 = *(this + 148);
  if (v12)
  {
    *(this + 149) = v12;
    operator delete(v12);
  }

  *(this + 129) = &unk_1F591B410;
  v13 = *(this + 143);
  if (v13)
  {
    *(this + 144) = v13;
    operator delete(v13);
  }

  *(this + 129) = &unk_1F5918F28;
  v14 = *(this + 136);
  if (v14)
  {
    *(this + 137) = v14;
    operator delete(v14);
  }

  v15 = *(this + 133);
  if (v15)
  {
    *(this + 134) = v15;
    operator delete(v15);
  }

  DspLib::PowerGuard::WooferPowerAnalyzer::~WooferPowerAnalyzer((this + 736));
  v19 = (this + 712);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v16 = *(this + 85);
  if (v16)
  {
    *(this + 86) = v16;
    operator delete(v16);
  }

  v17 = *(this + 82);
  if (v17)
  {
    *(this + 83) = v17;
    operator delete(v17);
  }

  DspLib::PowerGuard::WooferPowerAnalyzer::~WooferPowerAnalyzer((this + 352));
  *this = &unk_1F591AE18;
  v18 = *(this + 36);
  if (v18)
  {
    *(this + 37) = v18;
    operator delete(v18);
  }

  v19 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v19);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

uint64_t DspLib::AlgorithmBaseNewParameters::parameter(DspLib::AlgorithmBaseNewParameters *this, uint64_t a2)
{
  v4 = DspLib::parameterAddress(this + 240, a2);
  v5 = *(*this + 128);

  return v5(this, __PAIR64__(v3, HIDWORD(v4)), v4);
}

uint64_t DspLib::AlgorithmBaseNewParameters::setParameter(DspLib::AlgorithmBaseNewParameters *this, uint64_t a2, float a3)
{
  v6 = DspLib::parameterAddress(this + 240, a2);
  v7 = *(*this + 136);
  v8.n128_f32[0] = a3;

  return v7(this, __PAIR64__(v5, HIDWORD(v6)), v6, v8);
}

uint64_t DspLib::AlgorithmBaseNewParameters::parameterGroup(DspLib::AlgorithmBaseNewParameters *this, unsigned int a2, int a3)
{
  if (!a3)
  {
    v8 = *(this + 30);
    v9 = *(this + 36);
    v10 = *(this + 37) - v9;
    if (DspLib::groupOffset(v8, *(*(v8 + 8) + 8)) != v10 >> 2)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if (*(*(v8 + 8) + 8) <= a2)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v11 = DspLib::groupOffset(v8, a2);
    if (*(*(v8 + 8) + 8) > a2)
    {
      return v9 + 4 * v11;
    }

LABEL_12:
    abort();
  }

  v4 = (a3 - 1);
  v5 = *(this + 33);
  if (v4 >= (*(this + 34) - v5) >> 3)
  {
    goto LABEL_12;
  }

  v6 = *(**(v5 + 8 * v4) + 144);

  return v6();
}

uint64_t DspLib::AlgorithmBase::process(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v5[0] = &v6;
  v5[1] = 1;
  v5[2] = a3;
  v4[0] = 0;
  v4[24] = 0;
  return (*(*a1 + 176))(a1, v5, v4);
}

uint64_t DspLib::AlgorithmBaseNewParameters::setMeteringIsEnabled(uint64_t this, char a2)
{
  *(this + 96) = a2;
  v2 = *(this + 264);
  v3 = *(this + 272);
  if (v2 != v3)
  {
    v4 = this;
    do
    {
      v5 = *v2;
      if (*v2)
      {
        v6 = (*(*v4 + 208))(v4);
        this = (*(*v5 + 216))(v5, v6);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return this;
}

DspLib::PowerGuard::TargetCalculator *DspLib::PowerGuard::TargetCalculator::TargetCalculator(DspLib::PowerGuard::TargetCalculator *this)
{
  *(this + 6) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 11);
  *(this + 64) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v2) + 12);
  v3 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 12);
  *(this + 65) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v3) + 12);
  v4 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 13);
  *(this + 66) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v4) + 12);
  v5 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 14);
  *(this + 67) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v5) + 12);
  v6 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 7);
  *(this + 68) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v6) + 12);
  v7 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 8);
  *(this + 69) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v7) + 12);
  v8 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 9);
  *(this + 70) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v8) + 12);
  v9 = DspLib::parameterAddress(&DspLib::PowerGuard::Parameters::kDefinition, 10);
  *(this + 71) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::PowerGuard::Parameters::kDefinition, v9) + 12);
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 18) = _Q0;
  *(this + 19) = _Q0;
  return this;
}

uint64_t DspLib::AlgorithmParametersDefinition::operator[](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 8) <= a2 || (v3 = *(*v2 + 16 * a2 + 8), *(v3 + 8) <= HIDWORD(a2)))
  {
    abort();
  }

  return *v3 + 24 * HIDWORD(a2);
}

uint64_t DspLib::parameterAddress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  if (!v3)
  {
LABEL_6:
    abort();
  }

  v4 = 0;
  v5 = *v2 + 8;
  while (1)
  {
    v6 = *(*v5 + 8);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    if (!v7)
    {
      return (a2 << 32) - v4;
    }

    --v4;
    v5 += 16;
    a2 = v8;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }
}

{
  if (*(a1 + 16) == -1)
  {
LABEL_7:
    abort();
  }

  v4 = 0;
  while (1)
  {
    v5 = (*(a1 + 8) + 8 * (v4 - 1));
    if (!v4)
    {
      v5 = a1;
    }

    v6 = *v5;
    if (a2 < DspLib::groupOffset(*v5, *(*(*v5 + 8) + 8)))
    {
      break;
    }

    a2 = a2 - DspLib::groupOffset(v6, *(*(v6 + 8) + 8));
    if (++v4 >= (*(a1 + 16) + 1))
    {
      goto LABEL_7;
    }
  }

  LODWORD(v8) = v4;
  HIDWORD(v8) = DspLib::parameterAddress(v6, a2);
  return v8;
}

void DspLib::PowerGuard::PowerController::~PowerController(DspLib::PowerGuard::PowerController *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  for (i = 0; i != -96; i -= 24)
  {
    v5 = *(this + i + 168);
    if (v5)
    {
      *(this + i + 176) = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -96; j -= 24)
  {
    v7 = *(this + j + 72);
    if (v7)
    {
      *(this + j + 80) = v7;
      operator delete(v7);
    }
  }
}

void DspLib::PowerGuard::WooferPowerAnalyzer::~WooferPowerAnalyzer(DspLib::PowerGuard::WooferPowerAnalyzer *this)
{
  *this = &unk_1F591B3E0;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 176));
  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5918F28;
  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }
}

void DspLib::AlgorithmBase::~AlgorithmBase(DspLib::AlgorithmBase *this)
{
  *this = &unk_1F591AD10;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t DspLib::algorithmOffset(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = -1;
  v6 = a2;
  do
  {
    if ((*(a1 + 16) + 1) <= v3)
    {
      abort();
    }

    v7 = (*(a1 + 8) + 8 * v5);
    if (!v3)
    {
      v7 = a1;
    }

    v4 = DspLib::groupOffset(*v7, *(*(*v7 + 8) + 8)) + v4;
    ++v3;
    ++v5;
  }

  while (v6 != v3);
  return v4;
}

uint64_t DspLib::groupOffset(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 2) < a2)
  {
    abort();
  }

  result = 0;
  if (a2)
  {
    v4 = *v2;
    v5 = a2;
    v6 = (v4 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      result = (result + *(v7 + 8));
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t DspLib::SystemParametersDefinition::operator[](uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 16) + 1 <= a2)
  {
    abort();
  }

  if (a2)
  {
    a1 = *(a1 + 8) + 8 * (a2 - 1);
  }

  v3 = *a1;

  return DspLib::AlgorithmParametersDefinition::operator[](v3, __SPAIR64__(a3, HIDWORD(a2)));
}

void DspLib::AlgorithmBaseNewParameters::parameterGroup()
{
  __assert_rtn("group", "DspLibParameters.h", 328, "parameters.size() == numParameters( algDef)");
}

{
  __assert_rtn("group", "DspLibParameters.h", 329, "groupNumber < numGroups( algDef)");
}

void DspLib::PowerGuard::TargetCalculator::TargetCalculator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a3 + 192;
  do
  {
    v7 = *(a1 + v5 + 168);
    if (v7)
    {
      *(v6 + v5) = v7;
      operator delete(v7);
    }

    v5 -= 24;
  }

  while (v5 != -96);
  v8 = a2;
  do
  {
    v10 = *(v8 - 24);
    v8 -= 24;
    v9 = v10;
    if (v10)
    {
      *(a2 - 16) = v9;
      operator delete(v9);
    }

    a2 = v8;
  }

  while (v8 != a1);
}

double DspLib::LoudspeakerManagerV1::Algorithm::Algorithm(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  v1 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudspeakerManagerV1::Parameters::kSystemDefinition);
  *v1 = &unk_1F5918F50;
  *(v1 + 384) = 0;
  *(v1 + 392) = 0;
  *(v1 + 376) = 0;
  result = 0.0;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 356) = 0u;
  *(v1 + 400) = 257;
  *(v1 + 402) = 0;
  *(v1 + 404) = 0x3F8000003FC3D70ALL;
  *(v1 + 416) = 1;
  *(v1 + 500) = 0;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  *(v1 + 481) = 0u;
  *(v1 + 572) = 0u;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV1::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    DspLib::LoudspeakerManagerV1::ModelManager::initialize((this + 39));
    v5 = DspLib::parameterAddress(&DspLib::LoudspeakerManagerV1::Parameters::kDefinition, 2);
    DspLib::AlgorithmParametersDefinition::operator[](&DspLib::LoudspeakerManagerV1::Parameters::kDefinition, v5);
    std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](&__p, 2uLL);
    v6 = this[33];
    if (this[34] == v6 || (DspLib::LoudspeakerManagerV1::ModelManager::coldStartBiquad(&__p, *(*v6 + 472), 2.8), v7 = this[33], this[34] == v7))
    {
      abort();
    }

    v8 = *v7;
    v11[0] = __p;
    v11[1] = 0xCCCCCCCCCCCCCCCDLL * ((v14 - __p) >> 2);
    v12 = 1052171118;
    v9 = DspLib::PowerGuard::Algorithm::setAdmittanceModel(v8, v11);
    *(this + 8) = 1;
    ((*this)[20])(this, v9);
    ((*this)[21])(this);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  return v4;
}

void sub_1DDB8D5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::LoudspeakerManagerV1::Algorithm::uninitialize(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  result = DspLib::LoudspeakerManagerV1::ModelManager::uninitialize(this + 312);
  *(this + 8) = 0;
  return result;
}

void DspLib::LoudspeakerManagerV1::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  v5 = *(a1 + 288);
  v6.n128_u32[0] = 0.5;
  v7 = *(v5 + 8);
  *(a1 + 402) |= *(v5 + 4) >= 0.5;
  *(a1 + 404) = v7;
  v8.n128_u32[0] = *v5;
  *(a1 + 400) = *v5 < 0.5;
  v9 = (*(*a1 + 144))(a1, 3, 2, v6, v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = (*(*a1 + 152))(a1, 1);
  v13 = (*(*a1 + 232))(a1);
  v14 = *(a1 + 16);

  DspLib::LoudspeakerManagerV1::PowerMeter::setParameters((a1 + 416), v10, v11, v13, v14, (v12 + 12), 4uLL);
}

int32x2_t DspLib::LoudspeakerManagerV1::Algorithm::setCalibrationData(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  *(a1 + 584) = a2[2];
  *(a1 + 576) = v2;
  v3 = *(a1 + 264);
  if (*(a1 + 272) == v3 || (DspLib::PowerGuard::Algorithm::setSpVACalibration(*v3, a2), v6 = *(a1 + 264), (*(a1 + 272) - v6) <= 8))
  {
    abort();
  }

  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setSpVACalibration(*(v6 + 8) + 336, a2);

  return DspLib::LoudspeakerManagerV1::PowerMeter::setSpVACalibration(a1 + 416, a2);
}

void DspLib::LoudspeakerManagerV1::Algorithm::reset(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 168))(v4);
  }

  *(this + 402) = 1;
  DspLib::LoudspeakerManagerV1::ModelManager::pageInRootsPath((this + 312));

  DspLib::LoudspeakerManagerV1::PowerMeter::reset(this + 52);
}

void DspLib::LoudspeakerManagerV1::Algorithm::processBlock(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 13));
    if (v6)
    {
      DspLib::LoudspeakerManagerV1::PowerMeter::process((a1 + 52));
    }

    DspLib::CPUMeasure::resume((a1 + 13));
  }

  v7 = a1[33];
  if ((a1[34] - v7) <= 8 || (DspLib::LoudspeakerSystemIDV1::Algorithm::singleResonatorPlusLR2Inductance(*(v7 + 8), &v22), v8 = a1[33], v9 = a1[34], (v9 - v8) <= 8) || (v10 = *(v8 + 1), v11 = *(v10 + 9474), *(v10 + 9474) = 0, v9 == v8) || (DspLib::LoudspeakerManagerV1::ModelManager::getAdmittanceModel((a1 + 39), &v22, v11, &v24, *(*v8 + 472)), v12 = a1[33], a1[34] == v12) || (v13 = *v12, v22 = v24, *&v23 = v25, DspLib::PowerGuard::Algorithm::setAdmittanceModel(v13, &v22), v14 = a1[33], a1[34] == v14) || (v15 = *v14, *v21 = *a2, *&v21[16] = *(a2 + 16), LOBYTE(v22) = 0, BYTE8(v23) = 0, (*(*v15 + 176))(v15, v21, &v22), v16 = a1[33], (a1[34] - v16) <= 8))
  {
    abort();
  }

  v17 = *(v16 + 8);
  *v21 = *a2;
  *&v21[8] = *(a2 + 8);
  v19 = *a2;
  v20 = *(a2 + 16);
  v18 = *(a3 + 16);
  v22 = *a3;
  v23 = v18;
  DspLib::LoudspeakerSystemIDV1::Algorithm::processDirect(v17, v21, &v19, &v22);
}

uint64_t DspLib::LoudspeakerManagerV1::Algorithm::status(uint64_t a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  DspLib::LoudspeakerManagerV1::PowerMeter::getPeakPowers(a1 + 416, a2);
  v6 = DspLib::LoudspeakerManagerV1::PowerMeter::status(a1 + 416, a2, v5);
  v7 = *(a1 + 264);
  if (*(a1 + 272) == v7 || ((*(**v7 + 200))(*v7, a2 + 8, 62, v6), v8 = *(a1 + 264), (*(a1 + 272) - v8) <= 8))
  {
    abort();
  }

  v9 = *(**(v8 + 8) + 200);

  return v9();
}

void DspLib::LoudspeakerManagerV1::Algorithm::~Algorithm(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  DspLib::LoudspeakerManagerV1::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5918F50;
  v2 = *(this + 69);
  if (v2)
  {
    *(this + 70) = v2;
    operator delete(v2);
  }

  v6 = (this + 512);
  std::vector<DspLib::MovingAverage>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 464);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 53);
  if (v3)
  {
    *(this + 54) = v3;
    operator delete(v3);
  }

  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  *this = &unk_1F591AE18;
  v5 = *(this + 36);
  if (v5)
  {
    *(this + 37) = v5;
    operator delete(v5);
  }

  v6 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

double DspLib::LoudspeakerManagerV1::Algorithm::latencySamples(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  v1 = *(this + 33);
  if (*(this + 34) == v1 || ((*(**v1 + 72))(), v4 = *(this + 33), (*(this + 34) - v4) <= 8))
  {
    abort();
  }

  return v3 + (*(**(v4 + 8) + 72))(*(v4 + 8));
}

double DspLib::LoudspeakerManagerV1::Algorithm::tailTimeSamples(DspLib::LoudspeakerManagerV1::Algorithm *this)
{
  v1 = *(this + 33);
  if (*(this + 34) == v1 || ((*(**v1 + 80))(), v4 = *(this + 33), (*(this + 34) - v4) <= 8))
  {
    abort();
  }

  return v3 + (*(**(v4 + 8) + 80))(*(v4 + 8));
}

void *std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDB8DD40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<DspLib::MovingAverage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::MovingAverage>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<DspLib::MovingAverage>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 40);
      v4 -= 40;
      v5 = v6;
      if (v6)
      {
        *(v2 - 32) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

DspLib::AmbienceLeveler::Algorithm *DspLib::AmbienceLeveler::Algorithm::Algorithm(DspLib::AmbienceLeveler::Algorithm *this)
{
  v2 = this + 58664;
  v3 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::AmbienceLeveler::Parameters::kDefinition);
  v4 = 0;
  *v3 = &unk_1F5919070;
  *(v3 + 312) = 0;
  *(v3 + 20) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 23) = 0u;
  v5 = vdup_n_s32(0xC3100000);
  do
  {
    *(this + v4 + 384) = 0;
    *(this + v4 + 388) = v5;
    v4 += 12;
  }

  while (v4 != 360);
  *(this + 744) = 0u;
  *(this + 190) = 1065353216;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 110) = 0;
  *(this + 111) = 0x3ECBD4B4C1000000;
  v6 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 1);
  *(this + 224) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v6) + 12);
  v7 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 2);
  *(this + 225) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v7) + 12);
  v8 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 3);
  *(this + 226) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v8) + 12);
  v9 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 0);
  *(this + 227) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v9) + 12);
  v10 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 4);
  *(this + 228) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v10) + 12);
  v11 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 5);
  *(this + 229) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v11) + 12);
  v12 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 6);
  *(this + 230) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v12) + 12);
  v13 = DspLib::parameterAddress(&DspLib::AmbienceLeveler::Parameters::kDefinition, 7);
  *(this + 231) = *(DspLib::AlgorithmParametersDefinition::operator[](&DspLib::AmbienceLeveler::Parameters::kDefinition, v13) + 12);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(this + 17312, this + 928, 4096, 4096, 0);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(this + 17416, this + 928, 4096, 4096, 0);
  DspLib::ComplexVector::ComplexVector((this + 17520), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 17600), 0, 0);
  *(this + 10567) = 0;
  *v2 = 0;
  *(v2 + 2) = 0;
  v2[16] = 0;
  *(this + 3668) = 0u;
  *(this + 3669) = 0u;
  *(this + 3670) = 0u;
  *(this + 3671) = 0u;
  *(this + 3672) = 0u;
  *(this + 3673) = 0u;
  *(this + 7348) = 0;
  *(v2 + 32) = 1000000;
  *(this + 7351) = 0;
  *(this + 7352) = 0;
  *(this + 7350) = 0;
  *(v2 + 40) = -1024458752;
  *(v2 + 82) = 257;
  *(v2 + 21) = 0;
  return this;
}

void sub_1DDB8E258(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + v4));
  DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT((v1 + v3));
  DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT((v1 + v2));
  DspLib::Biquad::Filter::~Filter((v1 + 312));
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v1);
  _Unwind_Resume(a1);
}

void DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT(DspLib::FFT::BufferedForwardSTFT *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this);
}

uint64_t DspLib::AmbienceLeveler::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    *(this + 186) = (((*this)[6])(this) * 3.0);
    *(this + 187) = (((*this)[6])(this) * 0.100000001);
    v5 = ((*this)[6])(this);
    DspLib::Biquad::Design::kWeighting(v5, v12);
    v6 = ((*this)[8])(this);
    DspLib::Biquad::Filter::initialize((this + 39), v6, 2uLL);
    DspLib::Biquad::Filter::setCoefficients((this + 39), v12, 2, 0, 0x41uLL);
    v7 = ((*this)[6])(this);
    DspLib::Biquad::ParametricFilter::initialize((this + 7335), 1uLL, v7, 1uLL);
    DspLib::ComplexVector::setLength((this + 2190), 0x801uLL);
    DspLib::ComplexVector::setLength((this + 2200), 0x801uLL);
    v8 = ((*this)[6])(this) * 0.5;
    if (v8 <= 7000.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 7000.0;
    }

    *(this + 14666) = (100.0 / (((*this)[6])(this) * 0.000244140625));
    v10 = v9 / (((*this)[6])(this) * 0.000244140625);
    *(this + 14667) = v10;
    *(this + 14668) = v10 - *(this + 14666);
    DspLib::makeSymmetricHannWindow((this + 116), 0x1000uLL);
    DspLib::multiply((this + 116), 4096, 0.00048828);
    ((*this)[20])(this);
    ((*this)[21])(this);
  }

  return v4;
}

void DspLib::AmbienceLeveler::Algorithm::uninitialize(DspLib::AmbienceLeveler::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  DspLib::Biquad::Filter::uninitialize((this + 312));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 58680));
  DspLib::ComplexVector::setLength((this + 17520), 0);
  DspLib::ComplexVector::setLength((this + 17600), 0);
  *(this + 8) = 0;
}

void DspLib::AmbienceLeveler::Algorithm::reset(DspLib::AmbienceLeveler::Algorithm *this)
{
  v2 = this + 58800;
  v3 = (this + 388);
  DspLib::Biquad::SetupWrapper::reset((this + 360));
  *(this + 190) = 1065353216;
  *(this + 94) = 0;
  *(this + 111) = 0x3ECBD4B4C1000000;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 110) = 0;
  v4 = *(this + 186);
  v5 = *(this + 187);
  v6 = 360;
  v7 = vdup_n_s32(0xC3100000);
  do
  {
    *v3 = v7;
    v3[-1].i32[1] = v4;
    v4 += v5;
    v3 = (v3 + 12);
    v6 -= 12;
  }

  while (v6);
  DspLib::FFT::BufferedForwardSTFT::reset((this + 17416));
  DspLib::FFT::BufferedForwardSTFT::reset((this + 17312));
  DspLib::clear(this + 10568, 0x801uLL);
  DspLib::clear(this + 12617, 0x801uLL);
  DspLib::clear(this + 8518, 0x801uLL);
  *(this + 10567) = 0;
  *(v2 + 4) = 0;
  *v2 = 0;
  *(v2 + 2) = 0;
  *(v2 + 6) = -1024458752;
  *(v2 + 14) = 256;
}

double DspLib::AmbienceLeveler::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    v6 = *(a1 + 288);
    v7 = *(v6 + 4);
    *(a1 + 896) = v7;
    if (v7 < *(v6 + 8))
    {
      v7 = *(v6 + 8);
    }

    *(a1 + 900) = v7;
    *(a1 + 904) = *(v6 + 12);
    *(a1 + 912) = *(v6 + 16);
    *(a1 + 916) = *(v6 + 20);
    *(a1 + 920) = *(v6 + 24);
    *(a1 + 924) = *(v6 + 28);
    LODWORD(result) = *v6;
    if (*v6 != *(a1 + 908))
    {
      *(a1 + 908) = LODWORD(result);
      *(a1 + 888) = 0;
      *(a1 + 760) = 1065353216;
      result = 0.0;
      *(a1 + 752) = 0;
    }
  }

  return result;
}

uint64_t DspLib::AmbienceLeveler::Algorithm::processBlock(uint64_t result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (*(a2 + 8) == 2 && v2 != 0)
  {
    v5 = result;
    v6 = MEMORY[0x1EEE9AC00](result);
    v21 = (&v16 - v7);
    v22 = &v21[v7];
    v9 = *v8;
    v18 = v2;
    v19 = v9;
    v20 = *(v8 + 1);
    *&v17 = &v21;
    *(&v17 + 1) = 2;
    DspLib::Biquad::Filter::process((v6 + 312), &v19, &v17);
    v10 = DspLib::rms(v21, v2);
    v12 = DspLib::amp2dBSafe(v11, v10, 1.0e-20);
    v13 = DspLib::rms(v22, v2);
    v15 = DspLib::amp2dBSafe(v14, v13, 1.0e-20);
    DspLib::AmbienceLeveler::RunningStats::process((v5 + 212), v15);
    DspLib::AmbienceLeveler::Algorithm::computeAmbienceGain(v5, v12, v15, v2);
    DspLib::AmbienceLeveler::Algorithm::updateSpectra(v5, **a2, *(a2 + 16), *(*a2 + 8), *(a2 + 16));
    return DspLib::multiply(*(*a2 + 8), *(a2 + 16), v5[223]);
  }

  return result;
}

double DspLib::AmbienceLeveler::RunningStats::process(DspLib::AmbienceLeveler::RunningStats *this, float a2)
{
  v2 = *this + 1;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = a2 - v3;
  v6 = v5 / v2;
  v7 = v3 + v6;
  v8 = v5 * v6 * *this;
  v9 = v4 * (v6 * v6 * 6.0) + v6 * v6 * v8 * (v2 * -3.0 + v2 * v2 + 3.0);
  v10 = v6 * -3.0;
  v11 = *(this + 24);
  __asm { FMOV            V16.2D, #-4.0 }

  _Q16.f64[0] = v8;
  v17 = vmulq_n_f64(_Q16, v6);
  v18 = vdupq_lane_s64(*&v11.f64[0], 0);
  v18.f64[0] = v2 + -2.0;
  *this = v2;
  v19.f64[0] = v4 * v10;
  v19.f64[1] = v9;
  *(this + 24) = vaddq_f64(v11, vmlaq_f64(v19, v18, v17));
  result = v4 + v8;
  *(this + 1) = v7;
  *(this + 2) = result;
  return result;
}

double DspLib::AmbienceLeveler::Algorithm::computeAmbienceGain(DspLib::AmbienceLeveler::Algorithm *this, float a2, float a3, unint64_t a4)
{
  v8 = 0;
  v9 = *(this + 226);
  v10 = vdup_n_s32(0xC3100000);
  do
  {
    v11 = this + v8;
    v12 = *(this + v8 + 388);
    if (v12 < a2)
    {
      v12 = a2;
    }

    *(v11 + 97) = v12;
    v13 = *(v11 + 98);
    if (v13 < a3)
    {
      v13 = a3;
    }

    *(v11 + 98) = v13;
    if (v9 < v12)
    {
      v9 = v12;
    }

    v14 = *(v11 + 96);
    if (v14 <= a4)
    {
      DspLib::AmbienceLeveler::Algorithm::updateMeanStats(this, v12, v13);
      v15 = *(this + 186);
      *(v11 + 388) = v10;
    }

    else
    {
      v15 = v14 - a4;
    }

    *(v11 + 96) = v15;
    v8 += 12;
  }

  while (v8 != 360);
  *&result = v9 + -30.0;
  if ((v9 + -30.0) < a2 && *&result > *(this + 226))
  {

    return DspLib::AmbienceLeveler::RunningStats::process((this + 808), a2 - a3);
  }

  return result;
}

void DspLib::AmbienceLeveler::Algorithm::updateSpectra(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = 0;
    v8 = (a1 + 58664);
    v9 = (a1 + 17680);
    __C = (a1 + 25876);
    v19 = a1 + 42272;
    v18 = a1 + 50468;
    v17 = a1 + 34072;
    v21 = a2 + 4 * a3;
    v10 = a4 + 4 * a5;
    do
    {
      DspLib::FFT::BufferedForwardSTFT::addInput(a1 + 17312, (v21 - 4 * (a3 - v7)), a3 - v7);
      v11 = DspLib::FFT::BufferedForwardSTFT::addInput(a1 + 17416, (v10 - 4 * (a5 - v7)), a5 - v7);
      if (*(a1 + 17400))
      {
        DspLib::FFT::amplitude(a1 + 17520, v9, 0x801uLL);
        DspLib::FFT::amplitude(a1 + 17600, __C, 0x801uLL);
        v12 = *v8;
        v13 = &v9[v12];
        v14 = DspLib::meanSquare(v13, v8[2]);
        if (*&v14 > 0.0000001)
        {
          v15 = &__C[v12];
          DspLib::vmax((v19 + 4 * *v8), v8[2], v13);
          DspLib::vmax((v18 + 4 * *v8), v8[2], v15);
          v16 = *(a1 + 42268) + 1;
          *(a1 + 42268) = v16;
          DspLib::convexCombination(v17 + 4 * *v8, v8[2], v15, 1.0 / v16);
        }
      }

      v7 += v11;
    }

    while (v7 < a3);
  }
}

void DspLib::AmbienceLeveler::Algorithm::updateMeanStats(DspLib::AmbienceLeveler::Algorithm *this, float a2, float a3)
{
  if (*(this + 226) < a2)
  {
    DspLib::AmbienceLeveler::RunningStats::process((this + 768), (a2 - a3) - *(this + 227));
    v7 = *(this + 190);
    v8 = 1.0 / v7;
    *(this + 190) = v7 + 1.0;
    v9 = *(this + 188) + ((1.0 / v7) * (a2 - *(this + 188)));
    *(this + 188) = v9;
    v10 = *(this + 189) + (v8 * (a3 - *(this + 189)));
    *(this + 189) = v10;
    v11 = (v9 - v10) - *(this + 227);
    *(this + 222) = v11;
    v12 = 888;
    if (*(this + 225) < v11)
    {
      v12 = 900;
    }

    if (v11 < *(this + 224))
    {
      v12 = 896;
    }

    v13 = *(this + v12);
    *(this + 222) = v13;
    *(this + 223) = DspLib::dB2Amp(v6, v13);
  }
}

uint64_t DspLib::AmbienceLeveler::Algorithm::computeEQFilters(float *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const float *a9, vDSP_Length a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    v19 = *(a13 + 8);
    *v19 = 1101004800;
    v19[1] = 1065353216;
    v20 = *(a13 + 24);
    *v20 = 1101004800;
    v20[1] = 1065353216;
    v21 = *(a13 + 40);
    *v21 = 1101004800;
    v21[1] = 1065353216;
    v23 = fmaxf(DspLib::maxv((a4 + 4 * *(a1 + 14666)), *(a1 + 14668)), -100.0) + -30.0;
    v24 = *(a1 + 14666);
    v25 = *(a1 + 14667);
    if (v24 >= v25)
    {
      v27 = *(a1 + 14666);
    }

    else
    {
      v26 = (a4 + 4 * v24);
      v27 = *(a1 + 14666);
      do
      {
        if (*v26 >= v23)
        {
          goto LABEL_8;
        }

        ++v27;
        ++v26;
      }

      while (v25 != v27);
      v27 = *(a1 + 14667);
    }

LABEL_8:
    while (v25 >= v24 && *(a4 + 4 * v25) < v23)
    {
      --v25;
    }

    v44 = a2;
    v28 = a3;
    v29 = v25 - v27;
    if (v25 > v27)
    {
      v30 = (a6 + 4 * v27);
      v31 = (a4 + 4 * v27);
      v32 = &a1[v27 + 4420];
      do
      {
        v33 = *v30++;
        v34 = DspLib::amp2dBSafe(v22, v33, 1.0e-20);
        v35 = *v31++;
        v37 = (DspLib::amp2dBSafe(v36, v35, 1.0e-20) - v34) + a1[228];
        if (v37 <= 0.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0.0;
        }

        if (v37 >= a1[229])
        {
          v39 = v38;
        }

        else
        {
          v39 = a1[229];
        }

        *v32++ = v39;
        --v29;
      }

      while (v29);
    }

    DspLib::clear(a1 + 6469, 0x801uLL);
    DspLib::AmbienceLeveler::nthOctaveSmoothing((a1 + 4420), 2049, a11, 3.0, a12, *(a1 + 14667));
    if ((*(a13 + 16) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      DspLib::AmbienceLeveler::Algorithm::matchBellFilterToTargetResponse();
    }

    v40 = *(a1 + 14668);
    v41 = 0.0;
    if (v40 >= 2)
    {
      v42 = 0;
      v43 = 1;
      do
      {
        v41 = v41 + a1[*(a1 + 14666) + v43 + 6469];
        v43 = 1 << ++v42;
      }

      while (1 << v42 < v40);
      if (v42)
      {
        v41 = v41 / v42;
      }
    }

    *a13 = v41;
    DspLib::AmbienceLeveler::Algorithm::steadyStateNotch(a1, v44, v28, a9, a10);
  }

  return result;
}

void DspLib::AmbienceLeveler::nthOctaveSmoothing(uint64_t a1, int a2, uint64_t a3, float a4, uint64_t a5, int a6)
{
  v10 = a4 + a4;
  v11 = exp2f(-1.0 / (a4 + a4));
  v12 = exp2f(1.0 / v10);
  if (a6)
  {
    v13 = 0;
    do
    {
      v14 = vcvtas_u32_f32(v11 * v13);
      v15 = vcvtas_u32_f32(v12 * v13);
      if (v14 + 1 > v15)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (a2 - 1 < v16)
      {
        v16 = a2 - 1;
      }

      v17 = 0.0;
      v18 = v16 - v14;
      if (v18)
      {
        v19 = 4 * v18;
        v20 = (a1 + 4 * v14);
        do
        {
          v21 = *v20++;
          v17 = v17 + v21;
          v19 -= 4;
        }

        while (v19);
      }

      *(a3 + 4 * v13++) = v17 / v18;
    }

    while (v13 != a6);
  }
}

void DspLib::AmbienceLeveler::Algorithm::steadyStateNotch(float *a1, int a2, int a3, const float *a4, vDSP_Length __N)
{
  DspLib::amp2dBSafe(a4, __N, a1 + 4420, 0x801uLL, 1.0e-20);
  v6 = (*(*a1 + 48))(a1);
  DspLib::AmbienceLeveler::nthOctaveSmoothing((a1 + 4420), 2049, (a1 + 6469), 3.0, 2049, (3000.0 / (v6 * 0.000244140625)));
  DspLib::subtract();
}

unint64_t sub_1DDB8F50C()
{
  v4 = (150.0 / ((*(*v0 + 48))(v0) * v3));
  v5 = (*(*v0 + 48))(v0);
  v7 = COERCE_FLOAT(DspLib::maxIndex((v2 + 4 * v4), (1000.0 / (v5 * v3)) - v4));
  *&v9 = -v7;
  if (v7 < 0.0)
  {
    LODWORD(v9) = 0;
  }

  v8 = v0[230];
  if (v8 <= -v7)
  {
    v9 = v9;
  }

  else
  {
    v9 = LODWORD(v8);
  }

  return *(v1 + 4 * v6 + 4 * v4) | (v9 << 32);
}

void DspLib::AmbienceLeveler::Algorithm::computeMusicEQ(uint64_t a1, uint64_t a2, uint64_t a3, const float *a4, vDSP_Length a5, float *a6, uint64_t a7, uint64_t a8)
{
  if ((*(*a1 + 40))(a1))
  {
    v15 = 0;
    v14.n128_u32[0] = 20.0;
    do
    {
      if (*(a2 + 4 * v15) > 20.0)
      {
        break;
      }

      ++v15;
    }

    while (v15 != 2049);
    v16 = 0;
    v17 = (*(*a1 + 48))(a1, v14);
    v18 = fminf(v17 * 0.475, 12000.0);
    do
    {
      if (*(a2 + 4 * v16) > v18)
      {
        break;
      }

      ++v16;
    }

    while (v16 != 2049);
    v19 = a1;
    DspLib::amp2dBSafe(a4, a5, (a1 + 17680), 0x801uLL, 1.0e-20);
    v20 = a1 + 25876;
    DspLib::copy((v19 + 17680), 2049, (v19 + 25876));
    DspLib::AmbienceLeveler::nthOctaveSmoothing(v19 + 17680, 2049, v19 + 25876, 4.0, 2049, 2049);
    v21 = DspLib::maxv((a1 + 25876), 0x801uLL);
    DspLib::add(a1 + 25876, 2049, -v21);
    DspLib::clear(a6, (v15 - 1));
    DspLib::clear(&a6[a7 - (2049 - v16)], (2049 - v16));
    if (v15 < v16)
    {
      v22 = v15;
      do
      {
        v23 = DspLib::AmbienceLeveler::kMusicTargetSpectrum[v22] - *(v20 + 4 * v22);
        if (v23 <= 3.0)
        {
          v24 = DspLib::AmbienceLeveler::kMusicTargetSpectrum[v22] - *(v20 + 4 * v22);
        }

        else
        {
          v24 = 3.0;
        }

        if (v23 >= -6.0)
        {
          v25 = v24;
        }

        else
        {
          v25 = -6.0;
        }

        a6[v22] = ((v22 * -0.00024402) + 1.0) * v25;
        ++v22;
      }

      while (v16 != v22);
    }

    DspLib::clear((a1 + 25876), 0x801uLL);
    if (*(a8 + 8))
    {
      DspLib::AmbienceLeveler::Algorithm::matchBellFilterToTargetResponse();
    }

    v26 = *(a1 + 58672);
    v27 = 0.0;
    if (v26 >= 2)
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v27 = v27 + *(v20 + 4 * (*(a1 + 58664) + v29));
        v29 = 1 << ++v28;
      }

      while (1 << v28 < v26);
      if (v28)
      {
        v27 = v27 / v28;
      }
    }

    *(a8 + 16) = v27;
  }
}

void *DspLib::AmbienceLeveler::Algorithm::status(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 888);
  *(a2 + 4) = *(a1 + 752);
  v4 = *(a1 + 776);
  *(a2 + 8) = *(a1 + 756);
  *(a2 + 12) = v4;
  v5 = *(a1 + 768);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 >= 2)
  {
    v7 = *(a1 + 784) / (v5 - 1);
  }

  v8 = *(a1 + 816);
  *(a2 + 16) = v7;
  *(a2 + 20) = v8;
  v9 = *(a1 + 808);
  if (v9 >= 2)
  {
    v6 = *(a1 + 824) / (v9 - 1);
  }

  v10 = *(a1 + 856);
  *(a2 + 24) = v6;
  *(a2 + 28) = v10;
  v11 = *(a1 + 848);
  v12 = 0.0;
  if (v11 >= 2)
  {
    v12 = *(a1 + 864) / (v11 - 1);
  }

  *(a2 + 32) = v12;
  DspLib::copy((a1 + 42272), 2049, (a2 + 36));
  DspLib::copy((a1 + 50468), 2049, (a2 + 8232));

  return DspLib::copy((a1 + 34072), 2049, (a2 + 16428));
}

void DspLib::AmbienceLeveler::Algorithm::~Algorithm(DspLib::AmbienceLeveler::Algorithm *this)
{
  DspLib::AmbienceLeveler::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919070;
  v7 = (this + 58760);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 58728));
  v2 = *(this + 7338);
  if (v2)
  {
    *(this + 7339) = v2;
    operator delete(v2);
  }

  DspLib::ComplexVector::~ComplexVector((this + 17600));
  DspLib::ComplexVector::~ComplexVector((this + 17520));
  v3 = *(this + 2182);
  if (v3)
  {
    *(this + 2183) = v3;
    operator delete(v3);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 17416);
  v4 = *(this + 2169);
  if (v4)
  {
    *(this + 2170) = v4;
    operator delete(v4);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 17312);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 360));
  v5 = *(this + 42);
  if (v5)
  {
    *(this + 43) = v5;
    operator delete(v5);
  }

  *this = &unk_1F591AE18;
  v6 = *(this + 36);
  if (v6)
  {
    *(this + 37) = v6;
    operator delete(v6);
  }

  v7 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v7);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void DspLib::Biquad::Filter::~Filter(DspLib::Biquad::Filter *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void DspLib::FastMedianFilter::initialize(DspLib::FastMedianFilter *this, uint64_t a2)
{
  v3 = a2 | 1;
  v4 = (a2 | 1) + 1;
  if (v4 != (*(this + 1) - *this) >> 2)
  {
    *(this + 1) = *this;
    std::vector<float>::resize(this, v4);
  }

  DspLib::CircularDelay::setLength((this + 24), v3);
}

void DspLib::FastMedianFilter::reset(DspLib::FastMedianFilter *this)
{
  DspLib::CircularDelay::reset((this + 24));
  DspLib::fill(*(this + 3), (*(this + 4) - *(this + 3)) >> 2, *(this + 14));
  v2 = *this;
  v3 = (*(this + 1) - *this) >> 2;
  v4 = *(this + 14);

  DspLib::fill(v2, v3, v4);
}

uint64_t DspLib::FastMedianFilter::findValueInBuffer(DspLib::FastMedianFilter *this, float a2)
{
  v2 = ((*(this + 1) - *this) >> 2) - 1;
  v3 = v2 >> 1;
  v4 = *(*this + 4 * (v2 >> 1));
  v5 = 0;
  if (v4 != a2)
  {
    v6 = v2 - v3;
    do
    {
      if (v4 >= a2)
      {
        v6 = v3;
        v3 = 0;
      }

      v5 += v3;
      v3 = v6 >> 1;
      v6 -= v6 >> 1;
      v4 = *(*this + 4 * v5 + 4 * v3);
    }

    while (v4 != a2);
  }

  return v5 + v3;
}

unint64_t DspLib::FastMedianFilter::findPlaceForNewValue(DspLib::FastMedianFilter *this, float a2)
{
  v2 = *this;
  v3 = ((*(this + 1) - *this) >> 2);
  if (v3 >= 2)
  {
    result = 0;
    v5 = v3 >> 1;
    v6 = v3 - (v3 >> 1);
    do
    {
      v7 = *(v2 + 4 * (v5 + result));
      v8 = v6 >> 1;
      v6 -= v6 >> 1;
      v9 = v5 - (v5 >> 1);
      if (v7 >= a2)
      {
        v5 >>= 1;
      }

      else
      {
        result += v5;
        v5 = v8;
      }

      if (v7 >= a2)
      {
        v6 = v9;
      }
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  if (result < v3 - 1 && *(v2 + 4 * result) < a2)
  {
    ++result;
  }

  return result;
}

float DspLib::FastMedianFilter::updateMedianFilter(DspLib::FastMedianFilter *this, float a2)
{
  v16 = a2;
  v2 = *this;
  v3 = (*(this + 1) - *this) >> 2;
  __dst = 0.0;
  DspLib::CircularDelay::process(this + 3, &v16, 1uLL, &__dst, 1uLL);
  ValueInBuffer = DspLib::FastMedianFilter::findValueInBuffer(this, __dst);
  v6 = v16;
  PlaceForNewValue = DspLib::FastMedianFilter::findPlaceForNewValue(this, v16);
  v8 = PlaceForNewValue;
  v9 = ValueInBuffer - PlaceForNewValue;
  if (ValueInBuffer >= PlaceForNewValue)
  {
    if (ValueInBuffer > PlaceForNewValue)
    {
      if (v9 == -1)
      {
        v11 = v3 - PlaceForNewValue;
      }

      else
      {
        v11 = ValueInBuffer - PlaceForNewValue;
      }

      if (v9 == -1)
      {
        v12 = v3 - (PlaceForNewValue + 1);
      }

      else
      {
        v12 = ValueInBuffer - PlaceForNewValue;
      }

      v13 = (v2 + 4 * PlaceForNewValue);
      DspLib::copy_backward(v13, v11, v2 + 4 * (PlaceForNewValue + 1), v12);
      *v13 = v16;
    }

    else
    {
      *(v2 + 4 * PlaceForNewValue) = v6;
    }
  }

  else
  {
    if (PlaceForNewValue + ~ValueInBuffer == -1)
    {
      v10 = v3 - (ValueInBuffer + 1);
    }

    else
    {
      v10 = PlaceForNewValue + ~ValueInBuffer;
    }

    DspLib::copy((v2 + 4 * (ValueInBuffer + 1)), v10, (v2 + 4 * ValueInBuffer));
    *(v2 + 4 * v8 - 4) = v16;
  }

  return *(v2 + ((2 * v3 - 2) & 0xFFFFFFFFFFFFFFFCLL));
}

void DspLib::FastMedianFilter::process(DspLib::FastMedianFilter *this, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      *(a4 + 4 * v8) = DspLib::FastMedianFilter::updateMedianFilter(this, *(a2 + 4 * v8));
      v8 = v9;
    }

    while (a3 > v9++);
  }
}

void DspLib::LoudspeakerManager::ThermalModel::initialize(DspLib::LoudspeakerManager::ThermalModel *this, double a2)
{
  DspLib::Biquad::Filter::initialize(this, 1uLL, 1uLL);
  DspLib::Biquad::Filter::initialize((this + 72), 1uLL, 1uLL);
  *(this + 43) = 0;
  *(this + 18) = 0;
}

uint64_t DspLib::LoudspeakerManager::ThermalModel::reset(uint64_t this)
{
  *(this + 172) = 0;
  *(this + 144) = 0;
  return this;
}

float DspLib::LoudspeakerManager::ThermalModel::setCoilCoeffs(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  DspLib::Biquad::Filter::setCoefficients(a1 + 72, &v6, 1, 0, 0x41uLL);
  v4 = *(a2 + 3) + 1.0;
  *(a1 + 152) = v4;
  result = (*a2 + *a2) / v4;
  *(a1 + 160) = result;
  return result;
}

float DspLib::LoudspeakerManager::ThermalModel::setMagnetCoeffs(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  DspLib::Biquad::Filter::setCoefficients(a1, &v6, 1, 0, 0x41uLL);
  v4 = *(a2 + 3) + 1.0;
  *(a1 + 156) = v4;
  result = (*a2 + *a2) / v4;
  *(a1 + 164) = result;
  return result;
}

float32x2_t *DspLib::LoudspeakerManager::ThermalModel::process(float32x2_t *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[21].f32[0] + result[21].f32[1];
  if (a3)
  {
    v6 = 0;
    v7 = result[19];
    v8 = result[20];
    do
    {
      v9 = vmla_f32(result[18], vmla_n_f32(vneg_f32(result[18]), v8, *(a2 + 4 * v6)), v7);
      result[18] = v9;
      *(a4 + 4 * v6++) = vaddv_f32(v9);
    }

    while (a3 > v6);
  }

  if (v5 != 0.0)
  {
    return DspLib::add(a4, a5, v5);
  }

  return result;
}

uint64_t DspLib::LoudspeakerManager::ThermalModel::processNoUpdate(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 168) + *(result + 172);
  if (a3)
  {
    v6 = 0;
    v8 = *(result + 152);
    v7 = *(result + 160);
    v9 = *(result + 144);
    do
    {
      v9 = vmla_f32(v9, vmla_n_f32(vneg_f32(v9), v7, *(a2 + 4 * v6)), v8);
      *(a4 + 4 * v6++) = vaddv_f32(v9);
    }

    while (a3 > v6);
  }

  if (v5 != 0.0)
  {
    return DspLib::add(a4, a5, v5);
  }

  return result;
}

float32x2_t *DspLib::LoudspeakerManager::ThermalModel::zeroStateResponse(float32x2_t *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = result[19];
    v6 = result[20];
    v7 = 0;
    do
    {
      v7 = vmla_f32(v7, vmla_n_f32(vneg_f32(v7), v6, *(a2 + 4 * v4)), v5);
      *(a4 + 4 * v4++) = vaddv_f32(v7);
    }

    while (a3 > v4);
  }

  return result;
}

float32_t DspLib::LoudspeakerManager::ThermalModel::decay(float32x2_t *this, unint64_t a2, simd_float4 a3)
{
  __asm { FMOV            V1.2S, #1.0 }

  *a3.f32 = vsub_f32(_D1, this[19]);
  _D1.f32[0] = a2;
  v10 = a2;
  this[18] = vmul_f32(this[18], *&_simd_pow_f4(a3, vdupq_lane_s32(_D1, 0).u64[0]));
  result = this[21].f32[1] * powf(1.0 - this[19].f32[1], v10);
  this[21].f32[1] = result;
  return result;
}

float DspLib::LoudspeakerManager::ThermalModel::decayClosedLoopOffset(DspLib::LoudspeakerManager::ThermalModel *this, unint64_t a2)
{
  result = *(this + 43) * powf(1.0 - *(this + 39), a2);
  *(this + 43) = result;
  return result;
}

float *DspLib::LoudspeakerManager::zDomainVoiceCoilThermalModel@<X0>(float *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 1065353216;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  v4 = result[4];
  if (v4 > 0.0)
  {
    v5 = result[3] / v4;
    *a2 = 0;
    *(a2 + 4) = v5;
    *(a2 + 12) = 1.0 / v4;
    result = DspLib::Biquad::Design::bilinearTransformStoZUnwarped(a2, a3);
    v6 = *(a2 + 12);
    if (v6 == -1.0)
    {
      v6 = v6 * 0.999;
    }

    *(a2 + 12) = v6;
  }

  return result;
}

float *DspLib::LoudspeakerManager::zDomainMagnetThermalModel@<X0>(float *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 1065353216;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  v4 = result[6];
  if (v4 > 0.0)
  {
    v5 = result[5] / v4;
    *a2 = 0;
    *(a2 + 4) = v5;
    *(a2 + 12) = 1.0 / v4;
    result = DspLib::Biquad::Design::bilinearTransformStoZUnwarped(a2, a3);
    v6 = *(a2 + 12);
    if (v6 == -1.0)
    {
      v6 = v6 * 0.999;
    }

    *(a2 + 12) = v6;
  }

  return result;
}

void DspLib::ToneGenerator::initialize(DspLib::ToneGenerator *this, double a2)
{
  *this = 1;
  *(this + 8) = a2;
  *(this + 15) = a2;
  *(this + 2) = a2;
  *(this + 21) = a2;
  DspLib::ToneGenerator::configure(this, *(this + 1), *(this + 2));

  DspLib::ToneGenerator::reset(this);
}

float DspLib::ToneGenerator::configure(uint64_t a1, int a2, float a3)
{
  *(a1 + 4) = a2;
  v3 = 40.0;
  if (a3 <= 40.0)
  {
    v3 = a3;
  }

  if (a3 >= -100.0)
  {
    *&v4 = v3;
  }

  else
  {
    *&v4 = -100.0;
  }

  *(a1 + 8) = LODWORD(v4);
  if (*a1 == 1)
  {
    *&v4 = DspLib::dB2Amp(a1, *&v4);
    *(a1 + 72) = LODWORD(v4);
    v6 = *(a1 + 4);
    if (v6 <= 3)
    {
      if (v6 == 2)
      {
        *&v4 = 6283.18531 / *(a1 + 168);
        *(a1 + 180) = LODWORD(v4);
      }

      else if (v6 == 3)
      {
        Chunk = DspLib::ToneGenerator::FrequencySequencer::getChunk((a1 + 120));

        v4 = DspLib::ToneGenerator::LogSweepGenerator::configure(a1 + 16, Chunk, v8, v9);
      }
    }

    else
    {
      switch(v6)
      {
        case 4:
          goto LABEL_11;
        case 5:
          *(a1 + 184) = 0;
          return *&v4;
        case 6:
LABEL_11:

          DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::initialize((a1 + 192));
          break;
      }
    }
  }

  return *&v4;
}

void DspLib::ToneGenerator::reset(DspLib::ToneGenerator *this)
{
  *(this + 3) = 0;
  *(this + 5) = *(this + 6);
  *(this + 10) = 0;
  v1 = *(this + 12) != 0;
  *(this + 13) = 0;
  *(this + 112) = v1;
  v2 = *(this + 18) != 0;
  *(this + 19) = 0;
  *(this + 160) = v2;
  *(this + 16) = 0;
  *(this + 23) = 0;
  *(this + 44) = 0;
  v3 = *(this + 25);
  if (v3)
  {
    v4 = 5489;
    *v3 = 5489;
    for (i = 1; i != 624; ++i)
    {
      v4 = i + 1812433253 * (v4 ^ (v4 >> 30));
      *(v3 + 4 * i) = v4;
    }

    *(v3 + 2496) = 0;
  }

  srand(0x98962Fu);
}

uint64_t DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::uninitialize(DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x1E12BD160](v2, 0x1000C4000313F17);
  }

  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

double DspLib::ToneGenerator::LogSweepGenerator::configure(uint64_t a1, double a2, double a3, double a4)
{
  v6 = a3 * 6.28318548;
  v7 = log(a4 * 6.28318548 / (a3 * 6.28318548));
  v8 = v7;
  v9 = a2 * v6 / v8;
  v10 = *a1;
  v11 = exp(1.0 / (a2 / v8 * *a1));
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 24) = v9;
  result = a2 * v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = vcvtad_u64_f64(a2 * v10);
  return result;
}

double DspLib::ToneGenerator::FrequencySequencer::getChunk(DspLib::ToneGenerator::FrequencySequencer *this)
{
  result = 4.0;
  if (*(this + 3))
  {
    if (*(this + 40) == 1)
    {
      return *(*(this + 2) + 24 * *(this + 4) + 4);
    }
  }

  return result;
}

void *DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::initialize(void *this)
{
  if (!*this)
  {
    operator new();
  }

  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t DspLib::ToneGenerator::generate(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v6 = *a2;
        v7 = *(a2 + 16);
        DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::generateUniform((a1 + 192), &v6);
        goto LABEL_15;
      case 5:
        v6 = *a2;
        v7 = *(a2 + 16);
        DspLib::ToneGenerator::DiracPulseGenerator::generate((a1 + 184), &v6);
        goto LABEL_15;
      case 6:
        v6 = *a2;
        v7 = *(a2 + 16);
        DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::generateGaussian((a1 + 192), &v6);
        goto LABEL_15;
    }

LABEL_12:
    v6 = *a2;
    v7 = *(a2 + 16);
    DspLib::clear(&v6);
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    DspLib::ToneGenerator::UnsafeRandomNumberGenerator::generate(a1, &v6);
    goto LABEL_15;
  }

  if (v4 == 2)
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    DspLib::ToneGenerator::SineGenerator::generate(a1 + 168, &v6, a1 + 120);
    goto LABEL_15;
  }

  if (v4 != 3)
  {
    goto LABEL_12;
  }

  v6 = *a2;
  v7 = *(a2 + 16);
  DspLib::ToneGenerator::LogSweepGenerator::generate(a1 + 16, &v6);
LABEL_15:
  v6 = *a2;
  v7 = *(a2 + 16);
  return DspLib::ToneGenerator::EnvelopeSequencer::computeEnvelope(a1 + 64, &v6);
}

void DspLib::ToneGenerator::UnsafeRandomNumberGenerator::generate(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2[2];
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          *(*(*a2 + 8 * v4) + 4 * v7) = vcvts_n_f32_s32(rand(), 0x1FuLL) + -0.5;
          v7 = v8;
          v6 = a2[2];
        }

        while (v6 > v8++);
        v2 = a2[1];
      }

      v4 = ++v5;
    }

    while (v2 > v5);
  }
}

void DspLib::ToneGenerator::SineGenerator::generate(uint64_t a1, void ***a2, uint64_t a3)
{
  DspLib::clear(**a2, a2[2]);
  v6 = a2[2];
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; v7 = i)
    {
      v9 = DspLib::ToneGenerator::FrequencySequencer::advance(a3, v6 - v7);
      *(a1 + 12) = v10;
      if (v9)
      {
        v11 = **a2;
        v12 = *(a1 + 8);
        v13 = 1;
        v14 = i;
        do
        {
          v11[v14] = sinf(v12);
          v12 = *(a1 + 12) + *(a1 + 8);
          if (v12 > 6.28318531)
          {
            v15 = v12 + -6.28318531;
            v12 = v15;
          }

          *(a1 + 8) = v12;
          ++v14;
          v16 = v9 > v13++;
        }

        while (v16);
      }

      v6 = a2[2];
      i += v9;
    }
  }

  if (a2[1] >= 2)
  {
    v17 = 2;
    v18 = 1;
    do
    {
      DspLib::copy(**a2, a2[2], (*a2)[v18]);
      v18 = v17;
      v16 = a2[1] > v17++;
    }

    while (v16);
  }
}

void DspLib::ToneGenerator::LogSweepGenerator::generate(uint64_t a1, float ***a2)
{
  v2 = a2[2];
  if (v2)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v5 - v6 >= v2)
    {
      v7 = a2[2];
    }

    else
    {
      v7 = v5 - v6;
    }

    v8 = **a2;
    if (v5 != v6)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 1;
      v12 = **a2;
      v13 = *(a1 + 24);
      do
      {
        v14 = sin(v13 - v10);
        *v12++ = v14;
        v13 = v13 * v9;
        v15 = v7 > v11++;
      }

      while (v15);
      *(a1 + 24) = v13;
    }

    DspLib::clear(&v8[v2 - (v2 - v7)], v2 - v7);
    *(a1 + 8) += v7;
    if (a2[1] >= 2)
    {
      v16 = 2;
      v17 = 1;
      do
      {
        DspLib::copy(**a2, a2[2], (*a2)[v17]);
        v17 = v16;
        v15 = a2[1] > v16++;
      }

      while (v15);
    }
  }
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> **DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::generateUniform(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> **result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = a2[1];
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = *v4;
          v11 = *&(*v4)->__x_[1] - *(*v4)->__x_;
          result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v4[1]);
          v7 = a2[1];
          *(*(*a2 + 8 * v8) + 4 * v5) = *v10 + (v11 * vcvts_n_f32_u32(result, 0x20uLL));
          v8 = v9;
        }

        while (v7 > v9++);
        v2 = a2[2];
      }

      v5 = ++v6;
    }

    while (v2 > v6);
  }

  return result;
}

void DspLib::ToneGenerator::ThreadSafeRandomNumberGenerator::generateGaussian(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> **a1, __int128 *a2)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  DspLib::clear(&v16);
  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 1);
    do
    {
      if (v7)
      {
        v8 = 0;
        for (i = 0; i < v7; v8 = ++i)
        {
          v10 = 12;
          do
          {
            v11 = *a1;
            v12 = *&(*a1)->__x_[1] - *(*a1)->__x_;
            v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(a1[1]);
            v14 = *(*a2 + 8 * v8);
            v15 = (*v11 + (v12 * vcvts_n_f32_u32(v13, 0x20uLL))) + *(v14 + 4 * v5);
            *(v14 + 4 * v5) = v15;
            --v10;
          }

          while (v10);
          *(v14 + 4 * v5) = v15 / 12.0;
          v7 = *(a2 + 1);
        }

        v4 = *(a2 + 2);
      }

      v5 = ++v6;
    }

    while (v4 > v6);
  }
}

void DspLib::ToneGenerator::DiracPulseGenerator::generate(uint64_t *a1, __int128 *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  DspLib::clear(&v7);
  v4 = *(a2 + 1);
  v5 = *a1;
  if (v4)
  {
    v6 = 0;
    do
    {
      if (!v5)
      {
        **(*a2 + 8 * v6) = 1065353216;
      }

      ++v6;
    }

    while (v4 > v6);
  }

  if (!v5)
  {
    *a1 = *(a2 + 2);
  }
}

uint64_t DspLib::ToneGenerator::EnvelopeSequencer::computeEnvelope(uint64_t result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; i += v6)
    {
      v6 = v2 - i;
      if (*(v4 + 32) && *(v4 + 48) == 1)
      {
        v7 = *(v4 + 16);
        v8 = *(v4 + 24) + 24 * *(v4 + 40);
        v9 = *(v8 + 4);
        *(v4 + 12) = *v8;
        v10 = vcvtad_u64_f64(*v4 * v9) - v7;
        if (v6 <= v10)
        {
          v11 = v7 + v6;
        }

        else
        {
          v11 = 0;
          v12 = *(v8 + 8);
          *(v4 + 48) = *(v8 + 16);
          *(v4 + 40) = v12;
          v6 = v10;
        }

        *(v4 + 16) = v11;
      }

      if (a2[1])
      {
        v13 = 0;
        v14 = *(v4 + 8) * *(v4 + 12);
        v15 = 1;
        do
        {
          v16 = *(*a2 + 8 * v13);
          if (v6 == -1)
          {
            v17 = a2[2] - i;
          }

          else
          {
            v17 = v6;
          }

          result = DspLib::multiply(v16 + 4 * i, v17, v14);
          v13 = v15;
        }

        while (a2[1] > v15++);
      }
    }
  }

  return result;
}

unint64_t DspLib::ToneGenerator::FrequencySequencer::advance(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (*(a1 + 24) && *(a1 + 40) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16) + 24 * *(a1 + 32);
    v5 = vcvtad_u64_f64(*a1 * *(v4 + 4)) - v3;
    if (a2 <= v5)
    {
      v6 = v3 + a2;
    }

    else
    {
      v6 = 0;
      v7 = *(v4 + 8);
      *(a1 + 40) = *(v4 + 16);
      *(a1 + 32) = v7;
      v2 = v5;
    }

    *(a1 + 8) = v6;
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

DspLib::LexiPlate::Algorithm *DspLib::LexiPlate::Algorithm::Algorithm(DspLib::LexiPlate::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LexiPlate::Parameters::kDefinition);
  *v2 = &unk_1F5919190;
  *(v2 + 39) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 43) = 0u;
  DspLib::FFT::Filterbank::Filterbank((v2 + 45), 0);
  *(this + 98) = 0;
  *(this + 48) = 0u;
  *(this + 102) = 0;
  *(this + 824) = 0u;
  *(this + 113) = 0;
  *(this + 57) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  return this;
}

void sub_1DDB9108C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 42);
  if (v4)
  {
    *(v1 + 43) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v1);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LexiPlate::Algorithm::initialize(DspLib::LexiPlate::Algorithm *this, uint64_t a2, double a3)
{
  v4 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    v12 = 0;
    std::vector<float>::resize(this + 113, 0x8000uLL, &v12, v5);
    v12 = 0;
    std::vector<float>::resize(this + 122, 0x4000uLL, &v12, v6);
    v12 = 0;
    std::vector<float>::resize(this + 102, 0x200uLL, &v12, v7);
    v12 = 0;
    std::vector<float>::resize(this + 119, 0x200uLL, &v12, v8);
    (*(*this + 160))(this);
    *(this + 210) = *(this + 202);
    *(this + 106) = 0x3F0000003F333333;
    *(this + 215) = 1058139013;
    *(this + 108) = 0x3CA3D70A3F200000;
    v9 = 1024.0 / *(this + 2);
    *(this + 199) = v9;
    std::vector<float>::resize(this + 125, 0x400uLL);
    DspLib::makeSineWave(*(this + 125), (*(this + 126) - *(this + 125)) >> 2);
    v10 = (*(*this + 208))(this);
    (*(*this + 216))(this, v10);
    (*(*this + 168))(this);
  }

  return v4;
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

void DspLib::LexiPlate::Algorithm::setMeteringIsEnabled(DspLib::LexiPlate::Algorithm *this, char a2)
{
  DspLib::AlgorithmBaseNewParameters::setMeteringIsEnabled(this, a2);
  if ((*(*this + 208))(this))
  {
    v3 = (*(*this + 232))(this);
    std::vector<float>::resize(this + 128, v3);
    std::vector<float>::resize(this + 39, 0x65uLL);
    DspLib::ramp(*(this + 39), (*(this + 40) - *(this + 39)) >> 2, 1, 20.0, 20000.0);
    std::vector<float>::resize(this + 42, 0x2001uLL);
    DspLib::FFT::Filterbank::initialize((this + 360), 1, *(this + 2));
    std::vector<float>::resize(this + 96, 0x2001uLL);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = xmmword_1DE095130;
    DspLib::FFT::Filterbank::setParameters(this + 360, &v4, 10, xmmword_1DE095130);
  }

  else
  {
    *(this + 40) = *(this + 39);
    *(this + 43) = *(this + 42);
    DspLib::FFT::Filterbank::uninitialize((this + 360));
    *(this + 97) = *(this + 96);
    *(this + 129) = *(this + 128);
  }
}

void DspLib::LexiPlate::Algorithm::reset(float **this)
{
  DspLib::LexiPlate::Algorithm::clearReverbBuffers(this);
  *(this + 221) = 0;
  this[111] = 0x4463000044280000;
  this[100] = 0x4380000000000000;
  *(this + 58) = xmmword_1DE095140;

  DspLib::LexiPlate::Algorithm::clearSpectrogram(this);
}

double DspLib::LexiPlate::Algorithm::clearReverbBuffers(float **this)
{
  DspLib::clear(this[113], this[114] - this[113]);
  DspLib::clear(this[122], this[123] - this[122]);
  DspLib::clear(this[102], this[103] - this[102]);
  DspLib::clear(this[119], this[120] - this[119]);
  result = 0.0;
  this[112] = 0;
  return result;
}

void DspLib::LexiPlate::Algorithm::clearSpectrogram(float **this)
{
  DspLib::clear(this[42], this[43] - this[42]);
  DspLib::clear(this[96], this[97] - this[96]);

  DspLib::FFT::Filterbank::reset((this + 45));
}

void DspLib::LexiPlate::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    *(a1 + 792) = (*(*a1 + 128))(a1, 0, 0) != 0.0;
    *(a1 + 880) = (*(*a1 + 128))(a1, 0x700000000, 0);
    *(a1 + 876) = (*(*a1 + 128))(a1, 0x100000000, 0);
    v5 = (*(*a1 + 128))(a1, 0x200000000, 0);
    *(a1 + 808) = powf(v5 * 0.1, 0.25);
    *(a1 + 872) = (*(*a1 + 128))(a1, 0x300000000, 0);
    *(a1 + 944) = (*(*a1 + 128))(a1, 0x400000000, 0);
    *(a1 + 844) = (*(*a1 + 128))(a1, 0x500000000, 0);
    *(a1 + 856) = (*(*a1 + 128))(a1, 0x600000000, 0);
    if ((*(a1 + 792) & 1) == 0)
    {
      DspLib::LexiPlate::Algorithm::clearReverbBuffers(a1);

      DspLib::LexiPlate::Algorithm::clearSpectrogram(a1);
    }
  }
}

float DspLib::LexiPlate::Algorithm::calcLFOTankModulation(DspLib::LexiPlate::Algorithm *this, float *a2, float *a3)
{
  v3 = *(this + 199) + *(this + 200);
  if (v3 > 1023.0)
  {
    v3 = v3 + -1023.0;
  }

  v4 = v3;
  *(this + 200) = v3;
  v5 = *(this + 125);
  v6 = *(v5 + 4 * v3);
  v7 = v3 - v3;
  v8 = (v6 + (v7 * (*(v5 + 4 * ((v4 + 1) & 0x3FF)) - v6))) + 1.0;
  *a2 = v8;
  *a2 = v8 * ((*(this + 220) * 36.0) * 0.01);
  v9 = *(v5 + 4 * ((v4 + 256) & 0x3FF));
  v10 = (v9 + (v7 * (*(v5 + 4 * ((v4 + 257) & 0x3FF)) - v9))) + 1.0;
  *a3 = v10;
  result = v10 * ((*(this + 220) * 36.0) * 0.01);
  *a3 = result;
  return result;
}

void DspLib::LexiPlate::Algorithm::processBlock(float32x2_t *this, uint64_t **a2)
{
  v2 = a2[2];
  if (v2)
  {
    if (this[99].i8[0] == 1)
    {
      v5 = 0;
      v7 = *a2;
      v6 = a2[1];
      v21 = vdup_n_s32(0x3D4CCCCDu);
      v8 = **a2;
      do
      {
        v9 = ((this[118].f32[0] + *(*&this[119] + 4 * v5)) * 16256.0) + 128.0;
        if (v9 > 16384.0)
        {
          v9 = 16384.0;
        }

        this[117].f32[0] = v9;
        v10 = (this[101].f32[0] + *(*&this[102] + 4 * v5)) * 0.98;
        if (v10 > 0.98)
        {
          v10 = 0.98;
        }

        this[105].f32[0] = v10;
        this[108].f32[1] = (this[109].f32[0] * 0.8) + 0.005;
        this[106] = vmla_n_f32(v21, 0x3EE666663F266666, this[105].f32[1] * 0.01);
        v11 = this[107].f32[0] * 0.01;
        this[107].f32[1] = (v11 * 0.6) + 0.2;
        this[108].f32[0] = (v11 * 0.4) + 0.3;
        v12 = a2[1];
        v13 = *(v8 + 4 * v5);
        if (v12 >= 2)
        {
          v14 = v12 - 1;
          v15 = v7 + 1;
          do
          {
            v16 = *v15++;
            v13 = v13 + *(v16 + 4 * v5);
            --v14;
          }

          while (v14);
        }

        v17 = DspLib::LexiPlate::Algorithm::processPreDelay(this, v13 / v12, v5);
        v18 = DspLib::LexiPlate::Algorithm::processDiffusion(this, v17, v5);
        v22 = 0.0;
        LODWORD(v23) = 0;
        DspLib::LexiPlate::Algorithm::processReverbTank(this, v18, &v23, &v22, v5);
        v7 = *a2;
        v8 = **a2;
        *(v8 + 4 * v5) = ((this[109].f32[1] * *&v23) * 0.707) + ((1.0 - this[109].f32[1]) * *(v8 + 4 * v5));
        if (v6 >= 2)
        {
          *(v7[1] + 4 * v5) = ((this[109].f32[1] * v22) * 0.707) + ((1.0 - this[109].f32[1]) * *(v7[1] + 4 * v5));
        }

        v5 = (v5 + 1);
      }

      while (v5 != v2);
      this[110].i32[1] = (this[110].i32[1] + v2) & 0x7FFF;
      v20 = a2[1];
      v19 = a2[2];
      if ((*(*this + 208))(this))
      {
        DspLib::CPUMeasure::pause(&this[13]);
        v23 = v7;
        *&v24 = v20;
        *(&v24 + 1) = v19;
        DspLib::LexiPlate::Algorithm::processRTA(this, &v23, this[42], (*&this[43] - *&this[42]) >> 2);

        DspLib::CPUMeasure::resume(&this[13]);
      }
    }

    else if ((*(*this + 208))(this))
    {
      v23 = *a2;
      v24 = *(a2 + 1);
      DspLib::LexiPlate::Algorithm::processRTA(this, &v23, this[42], (*&this[43] - *&this[42]) >> 2);
    }
  }
}

void DspLib::LexiPlate::Algorithm::processRTA(uint64_t a1, __int128 *a2, float *a3, vDSP_Length a4)
{
  v7 = *(a2 + 2);
  v8 = *(a1 + 1024);
  v9 = *(a2 + 2);
  v15 = *a2;
  v16 = *(a2 + 2);
  DspLib::sum(&v15, v8, v7);
  DspLib::multiply(v8, v7, 2.0 / v9);
  if (v7)
  {
    for (i = 0; i < v7; i = (v11 + i))
    {
      *&v15 = &v17;
      *(&v15 + 1) = 1;
      v16 = v7 - i;
      v17 = &v8[4 * i];
      v11 = DspLib::FFT::Filterbank::audioInput(a1 + 360, &v15);
      v12 = *(*(a1 + 720) + 88);
      if (v12)
      {
        v13 = *(a1 + 16) / v12 * 400.0 / 1000.0;
        v14 = expf(-1.0 / v13);
        DspLib::multiply(a3, a4, v14);
        DspLib::FFT::amplitude(*(a1 + 696), *(a1 + 768), (*(a1 + 776) - *(a1 + 768)) >> 2);
        DspLib::vmax(a3, a4, *(a1 + 768));
      }
    }
  }
}

float DspLib::LexiPlate::Algorithm::processPreDelay(DspLib::LexiPlate::Algorithm *this, float a2, __int16 a3)
{
  v3 = *(this + 221);
  v4 = *(this + 122);
  *(v4 + 4 * *(this + 232)) = a2;
  v5 = *(this + 232) + 1.0;
  if (v5 > 16383.0)
  {
    v5 = v5 + -16384.0;
  }

  *(this + 232) = v5;
  v6 = *(this + 233);
  v7 = *(v4 + 4 * v6) + ((v6 - v6) * (*(v4 + 4 * ((v6 + 1) & 0x3FFF)) - *(v4 + 4 * v6)));
  v8 = *(this + 113);
  *(v8 + 4 * ((v3 + a3 + 128) & 0x7FFF)) = v7 * 0.707;
  return *(v8 + 4 * ((v3 + a3) & 0x7FFF));
}

float DspLib::LexiPlate::Algorithm::processDiffusion(DspLib::LexiPlate::Algorithm *this, float a2, int a3)
{
  v3 = *(this + 221) + a3;
  v4 = *(this + 235) + ((*(this + 234) - *(this + 235)) * 0.0001);
  *(this + 235) = v4;
  v5 = *(this + 232) - v4;
  if (v5 < 0.0)
  {
    v5 = v5 + 16383.0;
  }

  *(this + 233) = v5;
  v6 = *(this + 215);
  v7 = *(this + 113);
  v8 = *(v7 + 4 * ((v3 + 129) & 0x7FFF));
  v9 = a2 - (v6 * v8);
  *(v7 + 4 * ((v3 + 270) & 0x7FFF)) = v9;
  v10 = v8 + (v6 * v9);
  v11 = *(this + 215);
  v12 = *(v7 + 4 * ((v3 + 271) & 0x7FFF));
  v13 = v10 - (v11 * v12);
  *(v7 + 4 * ((v3 + 377) & 0x7FFF)) = v13;
  v14 = v12 + (v11 * v13);
  v15 = *(this + 216);
  v16 = *(v7 + 4 * ((v3 + 378) & 0x7FFF));
  v17 = v14 - (v15 * v16);
  *(v7 + 4 * ((v3 + 756) & 0x7FFF)) = v17;
  v18 = v16 + (v15 * v17);
  v19 = *(this + 216);
  v20 = *(v7 + 4 * ((v3 + 757) & 0x7FFF));
  v21 = v18 - (v19 * v20);
  *(v7 + 4 * ((v3 + 1033) & 0x7FFF)) = v21;
  return v20 + (v19 * v21);
}

float DspLib::LexiPlate::Algorithm::processReverbTank(DspLib::LexiPlate::Algorithm *this, float a2, float *a3, float *a4, int a5)
{
  v9 = *(this + 221) + a5;
  v42 = 0;
  DspLib::LexiPlate::Algorithm::calcLFOTankModulation(this, &v42 + 1, &v42);
  v10 = *(this + 113);
  v11 = *(this + 210);
  v12 = *(v10 + 4 * ((v9 + 7975) & 0x7FFF)) * v11;
  v13 = *(&v42 + 1) + ((v9 & 0x7FFFu) + 1034);
  v14 = *(v10 + 4 * (v13 & 0x7FFF));
  v15 = v14 + ((v13 - v13) * (*(v10 + 4 * ((v13 + 1) & 0x7FFF)) - v14));
  v16 = *(this + 212);
  v17 = ((v11 * *(v10 + 4 * ((v9 + 19492) & 0x7FFF))) + a2) + (v16 * v15);
  *(v10 + 4 * ((v9 + 1721) & 0x7FFF)) = v17;
  *(v10 + 4 * ((v9 + 6174) & 0x7FFF)) = v15 - (v16 * v17);
  v18 = (*(v10 + 4 * ((v9 + 1722) & 0x7FFF)) * (1.0 - *(this + 217))) + (*(this + 217) * *(this + 224));
  *(this + 224) = v18;
  v19 = *(v10 + 4 * ((v9 + 6175) & 0x7FFF));
  v20 = (v18 * *(this + 210)) - (*(this + 213) * v19);
  *(v10 + 4 * ((v9 + 7974) & 0x7FFF)) = v20;
  *(v10 + 4 * ((v9 + 11694) & 0x7FFF)) = v19 + (*(this + 213) * v20);
  v21 = *(this + 212);
  v22 = *&v42 + ((v9 & 0x7FFFu) + 11695);
  v23 = *(v10 + 4 * (v22 & 0x7FFF));
  v24 = v23 + ((v22 - v22) * (*(v10 + 4 * ((v22 + 1) & 0x7FFF)) - v23));
  v25 = (v12 + a2) + (v21 * v24);
  *(v10 + 4 * ((v9 + 12618) & 0x7FFF)) = v25;
  *(v10 + 4 * ((v9 + 16835) & 0x7FFF)) = v24 - (v21 * v25);
  v26 = (*(v10 + 4 * ((v9 + 12619) & 0x7FFF)) * (1.0 - *(this + 217))) + (*(this + 217) * *(this + 225));
  *(this + 225) = v26;
  v27 = *(v10 + 4 * ((v9 + 16836) & 0x7FFF));
  v28 = (v26 * *(this + 210)) - (*(this + 213) * v27);
  *(v10 + 4 * ((v9 + 19491) & 0x7FFF)) = v28;
  *(v10 + 4 * ((v9 + 22654) & 0x7FFF)) = v27 + (*(this + 213) * v28);
  v29 = *(v10 + 4 * ((v9 + 12884) & 0x7FFF));
  *a3 = v29;
  v30 = v29 + *(v10 + 4 * ((v9 + 15592) & 0x7FFF));
  *a3 = v30;
  v31 = v30 - *(v10 + 4 * ((v9 + 18748) & 0x7FFF));
  *a3 = v31;
  v32 = v31 + *(v10 + 4 * ((v9 + 21487) & 0x7FFF));
  *a3 = v32;
  v33 = v32 - *(v10 + 4 * ((v9 + 3711) & 0x7FFF));
  *a3 = v33;
  v34 = v33 - *(v10 + 4 * ((v9 + 6361) & 0x7FFF));
  *a3 = v34;
  *a3 = v34 - *(v10 + 4 * ((v9 + 9040) & 0x7FFF));
  v35 = *(v10 + 4 * ((v9 + 2074) & 0x7FFF));
  *a4 = v35;
  v36 = v35 + *(v10 + 4 * ((v9 + 5348) & 0x7FFF));
  *a4 = v36;
  v37 = v36 - *(v10 + 4 * ((v9 + 7402) & 0x7FFF));
  *a4 = v37;
  v38 = v37 + *(v10 + 4 * ((v9 + 10647) & 0x7FFF));
  *a4 = v38;
  v39 = v38 - *(v10 + 4 * ((v9 + 14729) & 0x7FFF));
  *a4 = v39;
  v40 = v39 - *(v10 + 4 * ((v9 + 17170) & 0x7FFF));
  *a4 = v40;
  result = v40 - *(v10 + 4 * ((v9 + 19612) & 0x7FFF));
  *a4 = result;
  return result;
}

void DspLib::LexiPlate::Algorithm::status(uint64_t a1, float *a2)
{
  if ((*(*a1 + 208))(a1))
  {

    DspLib::LexiPlate::Algorithm::spectrumAnalyzerStatus(a1, a2, 0x65uLL);
  }

  else
  {

    DspLib::fill(a2, 0x65uLL, -100.0);
  }
}

void DspLib::LexiPlate::Algorithm::spectrumAnalyzerStatus(uint64_t a1, float *a2, vDSP_Length a3)
{
  v6 = *(a1 + 16);
  v7 = v6 * 0.000061035;
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 312);
    v13 = *(a1 + 336);
    v14 = (((*(a1 + 344) - v13) >> 2) - 2);
    while (1)
    {
      v15 = *(v12 + 4 * v8) / v7;
      if (v15 > v14)
      {
        v15 = v14;
      }

      v16 = v15;
      a2[v8] = ((*(v13 + 4 * (v15 + 1)) * (v15 - v15)) + ((1.0 - (v15 - v15)) * *(v13 + 4 * v15))) + 0.00001;
      v17 = *(v12 + 4 * v11);
      v11 = v9;
      if ((*(v12 + 4 * v8) - v17) > v7)
      {
        break;
      }

      v8 = ++v9;
      v10 = v16;
      if (a3 <= v9)
      {
        goto LABEL_10;
      }
    }

    v16 = v10;
    LODWORD(v8) = v9;
  }

  else
  {
    v16 = 0;
    LODWORD(v8) = 0;
  }

LABEL_10:
  if (a3 > v8)
  {
    v18 = v8;
    v19 = v8 + 1;
    do
    {
      v20 = (*(*(a1 + 312) + 4 * v18) / v7) + 0.5;
      v21 = *(a1 + 336);
      v22 = ((*(a1 + 344) - v21) >> 2) - 1;
      if (v20 > v22)
      {
        v20 = v22;
      }

      v23 = v20;
      a2[v18] = DspLib::maxv((v21 + 4 * v16), v20 - v16 + 1) + 0.00001;
      v18 = v19;
      v24 = a3 > v19++;
      v16 = v23;
    }

    while (v24);
  }

  DspLib::amp2dBSafe(a2, a3, 1.0e-20);
}

void DspLib::LexiPlate::Algorithm::~Algorithm(DspLib::LexiPlate::Algorithm *this)
{
  DspLib::LexiPlate::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919190;
  v2 = *(this + 128);
  if (v2)
  {
    *(this + 129) = v2;
    operator delete(v2);
  }

  v3 = *(this + 125);
  if (v3)
  {
    *(this + 126) = v3;
    operator delete(v3);
  }

  v4 = *(this + 122);
  if (v4)
  {
    *(this + 123) = v4;
    operator delete(v4);
  }

  v5 = *(this + 119);
  if (v5)
  {
    *(this + 120) = v5;
    operator delete(v5);
  }

  v6 = *(this + 113);
  if (v6)
  {
    *(this + 114) = v6;
    operator delete(v6);
  }

  v7 = *(this + 102);
  if (v7)
  {
    *(this + 103) = v7;
    operator delete(v7);
  }

  v8 = *(this + 96);
  if (v8)
  {
    *(this + 97) = v8;
    operator delete(v8);
  }

  DspLib::FFT::Filterbank::~Filterbank((this + 360));
  v9 = *(this + 42);
  if (v9)
  {
    *(this + 43) = v9;
    operator delete(v9);
  }

  v10 = *(this + 39);
  if (v10)
  {
    *(this + 40) = v10;
    operator delete(v10);
  }

  *this = &unk_1F591AE18;
  v11 = *(this + 36);
  if (v11)
  {
    *(this + 37) = v11;
    operator delete(v11);
  }

  v12 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v12);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1DE095160)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_1DE095150)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1DE095160)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_1DE095150)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

float DspLib::LoudnessNormalizer::Parameters::systemVolumeAutomationValueForParameter(int a1, uint64_t a2)
{
  if (a1 == 38 || a1 == 4)
  {
    v3 = 26;
  }

  else
  {
    v3 = 20;
  }

  v4 = *(a2 + 4 * v3);
  v5 = v3 + 3;
  v6 = *(a2 + 4 * (v3 + 3));
  if (a1 == 1)
  {
    v11 = 0;
    v10 = v4;
  }

  else
  {
    if (a1 == 38 || a1 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 13)
    {
      v8 = 1;
    }

    if (a1 == 4)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a2 + 4 * (v9 + v3));
    if (a1 == 4 || a1 == 13)
    {
      v11 = 1;
    }

    else if (a1 == 38 || a1 == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v6 >= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (v4 < v6)
  {
    v4 = v6;
  }

  v14 = *(a2 + 4);
  if (v4 >= v14)
  {
    v15 = *(a2 + 4);
  }

  else
  {
    v15 = v4;
  }

  if (v14 >= v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v10 + ((*(a2 + 4 * (v11 + v5)) - v10) * ((v16 - v13) / ((v4 - v13) + 1.0)));
}

float DspLib::LoudnessNormalizer::Parameters::targetLoudness(float *a1)
{
  if (vcvtas_u32_f32(a1[19]) != 2)
  {
    return a1[5];
  }

  v2 = a1[50];
  v1 = a1 + 50;
  v3 = v2;
  v4 = ((v1[13] - *(v1 - 4)) - *(v1 - 3)) + *(v1 - 2);
  v5 = v1 + 1;
  v6 = v1[1];
  v11 = v4;
  v7 = v6 < v2;
  if (v6 >= v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (v7)
  {
    v9 = v1;
  }

  else
  {
    v9 = v1 + 1;
  }

  if (v7)
  {
    v3 = v6;
  }

  else
  {
    v5 = v1;
  }

  if (v8 >= v4)
  {
    v9 = &v11;
  }

  if (v4 >= v3)
  {
    v5 = v9;
  }

  return *v5;
}

float DspLib::LoudnessNormalizer::Parameters::downwardCompressionRange(uint64_t a1)
{
  if (vcvtas_u32_f32(*(a1 + 76)) == 1)
  {
    return DspLib::LoudnessNormalizer::Parameters::systemVolumeAutomationValueForParameter(4, a1);
  }

  else
  {
    return *(a1 + 16);
  }
}

float DspLib::LoudnessNormalizer::Parameters::maxGainCapFactor(float *a1)
{
  result = 1.0;
  if (a1[58] > 0.0)
  {
    v2 = a1[59];
    v3 = a1[60];
    if (v2 >= v3)
    {
      v4 = a1[59];
    }

    else
    {
      v4 = a1[60];
    }

    if (v3 < v2)
    {
      v2 = a1[60];
    }

    v5 = a1[63];
    if (v4 >= v5)
    {
      v6 = a1[63];
    }

    else
    {
      v6 = v4;
    }

    if (v5 >= v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    return (v7 - v2) / ((v4 - v2) + 0.000000001);
  }

  return result;
}

float DspLib::LoudnessNormalizer::Parameters::personalizedParameterValue(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 264);
  v3 = 24;
  do
  {
    v4 = *(v2 - 1);
    if (v4 != -1.0)
    {
      v5 = *v2;
      v6 = &v16[2 * v1];
      *v6 = v4;
      v6[1] = v5;
      ++v1;
    }

    v2 += 2;
    v3 -= 8;
  }

  while (v3);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    return v16[1];
  }

  v7 = *(a1 + 248);
  v8 = v16[0];
  if (v16[0] >= v7)
  {
    return v16[1];
  }

  v9 = v1;
  v10 = &v16[2 * v1];
  if (*(v10 - 2) <= v7)
  {
    return *(v10 - 1);
  }

  v11 = &v17;
  v12 = v9 - 1;
  while (1)
  {
    v13 = *(v11 - 1);
    if (v8 <= v7 && v13 >= v7)
    {
      break;
    }

    v11 += 2;
    v8 = v13;
    if (!--v12)
    {
      abort();
    }
  }

  return *(v11 - 2) + ((v7 - v8) * ((*v11 - *(v11 - 2)) / (v13 - v8)));
}

void DspLib::LoudnessNormalizer::Parameters::maxGain(float *a1)
{
  v2 = vcvtas_u32_f32(a1[19]);
  if (v2 == 1)
  {

    DspLib::LoudnessNormalizer::Parameters::systemVolumeAutomationValueForParameter(3, a1);
  }

  else if (v2 == 2)
  {
    if (a1[61] > 0.0 && a1[64] == 1)
    {
      DspLib::LoudnessNormalizer::Parameters::personalizedParameterValue(a1);
    }

    DspLib::LoudnessNormalizer::Parameters::maxGainCapFactor(a1);
  }
}

float DspLib::LoudnessNormalizer::Parameters::upwardCompressionRange(float *a1)
{
  v1 = vcvtas_u32_f32(a1[19]);
  if (v1 == 1)
  {
    return DspLib::LoudnessNormalizer::Parameters::systemVolumeAutomationValueForParameter(13, a1);
  }

  if (v1 == 2 && a1[61] > 0.0 && !a1[64])
  {
    return DspLib::LoudnessNormalizer::Parameters::personalizedParameterValue(a1);
  }

  return a1[13];
}

float DspLib::LoudnessNormalizer::Parameters::downwardCompressionRatio(uint64_t a1)
{
  if (vcvtas_u32_f32(*(a1 + 76)) == 1)
  {
    return DspLib::LoudnessNormalizer::Parameters::systemVolumeAutomationValueForParameter(38, a1);
  }

  else
  {
    return *(a1 + 152);
  }
}

void DspLib::LoudnessNormalizer::Parameters::expectedLoudnessAfterReset(float *a1)
{
  if ((vcvtas_u32_f32(a1[16]) & 8) == 0)
  {
    if (vcvtas_u32_f32(a1[17]) == 1)
    {
      if (vcvtas_u32_f32(a1[19]) == 1)
      {
        DspLib::LoudnessNormalizer::Parameters::targetLoudness(a1);
        DspLib::LoudnessNormalizer::Parameters::maxGain(a1);
      }

      else
      {
        DspLib::LoudnessNormalizer::Parameters::maxGainKneePoint(a1);
      }
    }

    else
    {
      DspLib::LoudnessNormalizer::Parameters::targetLoudness(a1);
      DspLib::LoudnessNormalizer::Parameters::upwardCompressionRange(a1);
      DspLib::LoudnessNormalizer::Parameters::maxGain(a1);
    }
  }
}

float DspLib::LoudnessNormalizer::Parameters::maxGainKneePoint(float *a1)
{
  v2 = DspLib::LoudnessNormalizer::Parameters::targetLoudness(a1);
  v3 = v2 - DspLib::LoudnessNormalizer::Parameters::upwardCompressionRange(a1);
  DspLib::LoudnessNormalizer::Parameters::maxGain(a1);
  return v3 - v4;
}

unsigned int DspLib::LoudnessNormalizer::Parameters::gainCurve(uint64_t a1)
{
  if (vcvtas_u32_f32(*(a1 + 76)) == 2)
  {
    return 0;
  }

  else
  {
    return vcvtas_u32_f32(*(a1 + 128));
  }
}

void DspLib::AudioMeter::Algorithm::initialize(DspLib::AudioMeter::Algorithm *this, unsigned int a2, double a3)
{
  v5 = (this + 40);
  if (*this == a3)
  {
    v6 = *(this + 5);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 6) - v6) >> 6) == a2)
    {
      return;
    }
  }

  else
  {
    v6 = *v5;
  }

  v7 = a2;
  *this = a3;
  std::vector<DspLib::RMS>::__base_destruct_at_end[abi:ne200100](this + 40, v6);
  std::vector<DspLib::RMS>::resize(v5, v7);
  v8 = *(this + 5);
  v9 = *(this + 6);
  if (v8 == v9)
  {
    v10 = *(this + 5);
  }

  else
  {
    do
    {
      DspLib::RMS::initialize(v8, 1u, *this);
      v8 = (v8 + 192);
    }

    while (v8 != v9);
    v8 = *(this + 5);
    v10 = *(this + 6);
  }

  std::vector<float>::resize(this + 8, 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 6));
  std::vector<float *>::resize(this + 14, 0xAAAAAAAAAAAAAAABLL * ((*(this + 6) - *(this + 5)) >> 6));
  std::vector<float>::resize(this + 11, 0x200uLL);

  DspLib::AudioMeter::Algorithm::setParameters(this, this + 8);
}

void std::vector<DspLib::RMS>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::RMS>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<DspLib::RMS>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 192 * a2);
  }
}

void DspLib::AudioMeter::Algorithm::setParameters(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 8);
  do
  {
    v5 = (a2 + v3);
    v6 = *(a2 + v3);
    if (*(&DspLib::AudioMeter::Parameters::kMaximum + v3) < v6)
    {
      v5 = (&DspLib::AudioMeter::Parameters::kMaximum + v3);
    }

    if (v6 < 0.0)
    {
      v5 = (&DspLib::AudioMeter::Parameters::kMinimum + v3);
    }

    v4[v3 / 4] = *v5;
    v3 += 4;
  }

  while (v3 != 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  if (v7 != v8)
  {
    do
    {
      DspLib::RMS::setParameters(v8, 1, *v4);
      v8 += 192;
    }

    while (v8 != v7);
    v9 = *a1 * (*(a1 + 12) / 1000.0);
    *(a1 + 184) = v9;
    v10 = (v9 >> 6) + 1;
    v11 = (a1 + 136);
    v12 = *(a1 + 136);
    if (*(a1 + 144) == v12)
    {
      DspLib::ChannelBuffer::resize(v11, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6), (v9 >> 6) + 1);
    }

    else
    {
      v13 = v12[1] - *v12;
      DspLib::ChannelBuffer::resize(v11, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6), (v9 >> 6) + 1);
      if (v10 == v13 >> 2)
      {
        return;
      }
    }

    v14 = (*(a1 + 168) - *(a1 + 160)) >> 3;
    v17[0] = *(a1 + 160);
    v17[1] = v14;
    v15 = *(a1 + 136);
    if (*(a1 + 144) == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v15[1] - *v15) >> 2;
    }

    v17[2] = v16;
    DspLib::clear(v17);
  }
}

void DspLib::AudioMeter::Algorithm::uninitialize(DspLib::AudioMeter::Algorithm *this)
{
  v1 = (this + 40);
  std::vector<DspLib::RMS>::__base_destruct_at_end[abi:ne200100](this + 40, *(this + 5));
  v1[4] = v1[3];
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v1 + 12);
  v1[16] = v1[15];
  v1[7] = v1[6];
  v1[10] = v1[9];
}

void DspLib::AudioMeter::Algorithm::reset(DspLib::AudioMeter::Algorithm *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  while (v2 != v3)
  {
    DspLib::RMS::reset(v2);
    v2 = (v2 + 192);
  }

  v4 = (*(this + 21) - *(this + 20)) >> 3;
  v7[0] = *(this + 20);
  v7[1] = v4;
  v5 = *(this + 17);
  if (*(this + 18) == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5[1] - *v5) >> 2;
  }

  v7[2] = v6;
  DspLib::clear(v7);
  DspLib::clear(*(this + 8), (*(this + 9) - *(this + 8)) >> 2);
  DspLib::clear(*(this + 11), (*(this + 12) - *(this + 11)) >> 2);
}

void DspLib::AudioMeter::Algorithm::status(void *a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v6 = a1[5];
  v7 = a1[6];
  if (v6 != v7)
  {
    v8 = 16;
    do
    {
      *(v6 + 188) = 1;
      a2[v8 - 16] = DspLib::amp2dBSafe(v5, sqrtf(fabsf(*(v6 + 184))), 0.000001);
      a2[v8] = DspLib::amp2dBSafe(v9, *(a1[8] + 4 * (v8 - 16)), 0.000001);
      v6 += 192;
      ++v8;
    }

    while (v6 != v7);
  }
}

void DspLib::AudioMeter::Algorithm::analyze(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v2 = a2[2];
  if (v2)
  {
    if (v2 >= 0x201)
    {
      for (i = 0; i < v2; i += v6)
      {
        if (v2 - i >= 0x200)
        {
          v6 = 512;
        }

        else
        {
          v6 = v2 - i;
        }

        v7 = a2[1];
        v8 = *(a1 + 112);
        v9 = *(a1 + 120);
        if (v7)
        {
          v10 = 0;
          v11 = *a2;
          do
          {
            *(v8 + 8 * v10) = *(v11 + 8 * v10) + 4 * i;
            ++v10;
          }

          while (v7 > v10);
        }

        *&v12 = v8;
        *(&v12 + 1) = (v9 - v8) >> 3;
        v13 = v6;
        DspLib::AudioMeter::Algorithm::analyze(DspLib::MultiSpan<float const>)::$_0::operator()(&v14, &v12);
      }
    }

    else
    {
      v12 = *a2;
      v13 = a2[2];
      DspLib::AudioMeter::Algorithm::analyze(DspLib::MultiSpan<float const>)::$_0::operator()(&v14, &v12);
    }
  }
}

void DspLib::AudioMeter::Algorithm::analyze(DspLib::MultiSpan<float const>)::$_0::operator()(double **a1, void *a2)
{
  v3 = *a1;
  v4 = a2[2];
  v5 = **a1;
  v6 = expf(-1.0 / ((*(*a1 + 4) * (v5 / v4)) / 1000.0));
  v7 = 64;
  if (v4 > 0x40)
  {
    v7 = v4;
  }

  if (a2[1])
  {
    v8 = v6;
    v9 = 0;
    v10 = 1;
    v11 = *(v3 + 46) / v7;
    do
    {
      v12 = DspLib::maxMagnitude(*(*a2 + 8 * v9), a2[2]);
      v13 = *(v3 + 5) + 192 * v9;
      v14 = *(*a2 + 8 * v9);
      v15 = *(v3 + 11);
      v24 = a2[2];
      v25 = v14;
      *&v23 = &v25;
      *(&v23 + 1) = 1;
      DspLib::RMS::process(v13, &v23, v15, v4);
      v16 = *(v3 + 17) + 24 * v9;
      v17 = *v16;
      v18 = *(v16 + 8) - 4;
      if (v18 != *v16)
      {
        memmove(v17 + 1, v17, v18 - *v16);
        v17 = *(*(v3 + 17) + 24 * v9);
      }

      *v17 = v12;
      v19 = DspLib::maxv(v17, v11);
      v20 = *(v3 + 8);
      v21 = *(v20 + 4 * v9);
      if (v19 < v21)
      {
        v19 = v8 * v21;
      }

      *(v20 + 4 * v9) = v19;
      v9 = v10;
    }

    while (a2[1] > v10++);
  }
}

void DspLib::AudioMeter::Algorithm::analyze(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v3[0] = &v4;
  v3[1] = 1;
  v3[2] = a3;
  DspLib::AudioMeter::Algorithm::analyze(a1, v3);
}

void std::vector<DspLib::RMS>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<DspLib::RMS>>::destroy[abi:ne200100]<DspLib::RMS,void,0>(a1, i))
  {
    i -= 192;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<DspLib::RMS>>::destroy[abi:ne200100]<DspLib::RMS,void,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 160);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 112);
  if (v3)
  {
    *(a2 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    *(a2 + 56) = v5;
    operator delete(v5);
  }
}

uint64_t *std::vector<DspLib::RMS>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 6) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 192 * a2;
      do
      {
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 96) = 0uLL;
        *(v4 + 112) = 0uLL;
        *(v4 + 128) = 0uLL;
        *(v4 + 144) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 80) = 0uLL;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 44) = 1137180672;
        *(v4 + 160) = 0;
        *(v4 + 168) = 0;
        *(v4 + 176) = 0;
        *(v4 + 80) = 0;
        *(v4 + 136) = 0;
        *(v4 + 120) = 0uLL;
        *(v4 + 104) = 0uLL;
        *(v4 + 88) = 0uLL;
        *(v4 + 184) = 730643660;
        v4 += 192;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 6);
    v7 = v6 + a2;
    if (v6 + a2 > 0x155555555555555)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 6);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAALL)
    {
      v9 = 0x155555555555555;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::allocator<DspLib::RMS>::allocate_at_least[abi:ne200100](result, v9);
    }

    v11 = 192 * v6;
    v17 = 0;
    v18 = 192 * v6;
    *(&v19 + 1) = 0;
    v12 = 192 * v6;
    do
    {
      *(v12 + 160) = 0uLL;
      *(v12 + 176) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 112) = 0uLL;
      *(v12 + 128) = 0uLL;
      *(v12 + 144) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 44) = 1137180672;
      *(v12 + 160) = 0;
      *(v12 + 168) = 0;
      *(v12 + 176) = 0;
      *(v12 + 80) = 0;
      *(v12 + 136) = 0;
      *(v12 + 120) = 0uLL;
      *(v12 + 104) = 0uLL;
      *(v12 + 88) = 0uLL;
      *(v12 + 184) = 730643660;
      v12 += 192;
    }

    while (v12 != 192 * v6 + 192 * a2);
    *&v19 = v11 + 192 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::RMS>,DspLib::RMS*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<DspLib::RMS>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1DDB93714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::RMS>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::RMS>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::RMS>,DspLib::RMS*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 32);
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = v9;
      *a4 = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v10 = *(v7 + 72);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 72) = v10;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 104) = *(v7 + 104);
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 128) = *(v7 + 128);
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      v11 = *(v7 + 136);
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 136) = v11;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 160) = 0;
      *(a4 + 160) = *(v7 + 160);
      *(a4 + 176) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      LODWORD(v10) = *(v7 + 184);
      *(a4 + 188) = *(v7 + 188);
      *(a4 + 184) = v10;
      v7 += 192;
      a4 += 192;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<DspLib::RMS>>::destroy[abi:ne200100]<DspLib::RMS,void,0>(a1, v5);
      v5 += 192;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::RMS>,DspLib::RMS*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::RMS>,DspLib::RMS*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::RMS>,DspLib::RMS*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::RMS>,DspLib::RMS*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 192;
      std::allocator_traits<std::allocator<DspLib::RMS>>::destroy[abi:ne200100]<DspLib::RMS,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<DspLib::RMS>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::RMS>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::RMS>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 192;
    std::allocator_traits<std::allocator<DspLib::RMS>>::destroy[abi:ne200100]<DspLib::RMS,void,0>(v5, v4 - 192);
  }
}

float DspLib::elapsedTimeInMilliseconds(DspLib *this, unint64_t *a2)
{
  v3 = mach_absolute_time();
  v4 = *this;
  *this = v3;
  v5 = dword_1ECDA7E04;
  if (!dword_1ECDA7E04)
  {
    mach_timebase_info(&DspLib::elapsedTimeInMilliseconds(unsigned long long &)::timeBaseInfo);
    v5 = dword_1ECDA7E04;
  }

  return (((v3 - v4) * DspLib::elapsedTimeInMilliseconds(unsigned long long &)::timeBaseInfo) / v5) * 0.000001;
}

void DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::cleanUp(DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet *this)
{
  *(this + 32) = 0;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      v5 = (v2 - 24);
      std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v5);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 2) = v3;
}

uint64_t DspLib::PeakPowerGuard::readPresets(const __CFDictionary *a1, void *a2)
{
  Value = CFDictionaryGetValue(a1, @"presets");
  if (!Value)
  {
    return 1;
  }

  v4 = Value;
  Count = CFArrayGetCount(Value);
  std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::resize(a2, Count);
  if (a2[1] == *a2 || 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > 8)
  {
    return 1;
  }

  v8 = 0;
  v32 = 0;
LABEL_9:
  ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
  if (!ValueAtIndex)
  {
    return 1;
  }

  v10 = ValueAtIndex;
  v11 = *a2 + 40 * v8;
  v12 = CFDictionaryGetValue(ValueAtIndex, @"name");
  *v11 = v12;
  if (!v12)
  {
    return 1;
  }

  v13 = CFDictionaryGetValue(v10, @"samplerateInHz");
  if (!v13)
  {
    return 1;
  }

  valuePtr = 0.0;
  CFNumberGetValue(v13, kCFNumberFloat32Type, &valuePtr);
  if (valuePtr < 1.0)
  {
    return 1;
  }

  *(v11 + 8) = valuePtr;
  v14 = CFDictionaryGetValue(v10, @"FIRarray");
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  v16 = CFArrayGetCount(v14);
  std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::resize((v11 + 16), v16);
  result = 1;
  v17 = *(v11 + 24) - *(v11 + 16);
  if (v17 && v17 <= 0x800)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = CFArrayGetValueAtIndex(v15, v18);
      if (!v20)
      {
        return 1;
      }

      v21 = v20;
      v22 = *(v11 + 16);
      v23 = CFDictionaryGetValue(v20, @"temperatureInDegreeCelcius");
      if (!v23)
      {
        return 1;
      }

      valuePtr = 0.0;
      CFNumberGetValue(v23, kCFNumberFloat32Type, &valuePtr);
      if (valuePtr > 200.0 || valuePtr < -20.0)
      {
        return 1;
      }

      v25 = v22 + 32 * v18;
      *(v25 + 24) = valuePtr;
      v26 = CFDictionaryGetValue(v21, @"numberOfCoefficients");
      if (!v26)
      {
        return 1;
      }

      valuePtr = 0.0;
      CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
      v27 = LODWORD(valuePtr);
      if (LODWORD(valuePtr) > 0x1000)
      {
        return 1;
      }

      std::vector<float>::resize(v25, LODWORD(valuePtr));
      v28 = CFDictionaryGetValue(v21, @"FIRcoefficients");
      if (!v28)
      {
        return 1;
      }

      if (v27)
      {
        v29 = v28;
        for (i = 0; i != v27; *(*v25 + 4 * i++) = valuePtr)
        {
          v31 = CFArrayGetValueAtIndex(v29, i);
          if (!v31)
          {
            return 1;
          }

          valuePtr = 0.0;
          CFNumberGetValue(v31, kCFNumberFloat32Type, &valuePtr);
        }
      }

      v18 = ++v19;
      if (v19 >= ((*(v11 + 24) - *(v11 + 16)) >> 5))
      {
        result = 0;
        v8 = ++v32;
        if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v32)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

void std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 40;
        v9 = (v3 - 24);
        std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v9);
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::setCoeffSet(const __CFDictionary **this, const __CFDictionary *a2)
{
  DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::cleanUp(this);
  *(this + 32) = 1;
  if (!a2)
  {
    v11 = 147;
LABEL_15:
    DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::setCoeffSet(v11, this);
    return *(this + 32);
  }

  CFRetain(a2);
  v4 = CFGetTypeID(a2);
  if (v4 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = this[5];
  this[5] = a2;
  if (v5)
  {
    CFRelease(v5);
    a2 = this[5];
  }

  Value = CFDictionaryGetValue(a2, @"name");
  v7 = Value;
  if (Value)
  {
    CFRetain(Value);
    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
    }
  }

  v9 = *this;
  *this = v7;
  if (v9)
  {
    CFRelease(v9);
    v7 = *this;
  }

  if (!v7)
  {
    v11 = 150;
    goto LABEL_15;
  }

  if (DspLib::PeakPowerGuard::readPresets(this[5], this + 1))
  {
    v11 = 151;
    goto LABEL_15;
  }

  return *(this + 32);
}

void sub_1DDB93FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::filterCoefficientsForTemperature(DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet *this, float a2)
{
  v2 = *(*(this + 1) + 40 * *(this + 12) + 16);
  v3 = *(*(this + 1) + 40 * *(this + 12) + 24);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = v4 >> 5;
    v7 = (v2 + 24);
    v8 = 1;
    v9 = *"(knN";
    do
    {
      v10 = *v7;
      v7 += 8;
      v11 = vabds_f32(v10, a2);
      if (v11 >= v9)
      {
        v5 = v5;
      }

      else
      {
        v5 = v8 - 1;
      }

      if (v11 < v9)
      {
        v9 = v11;
      }
    }

    while (v6 > v8++);
  }

  return v2 + 32 * v5;
}

void std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v16 = 0;
    v17 = 40 * v6;
    v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero((40 * v6), v11);
    v18 = 40 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 40 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::~__split_buffer(&v16);
  }
}

void sub_1DDB94204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v13 = (v5 + 2);
      std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v13);
      v5 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 24);
      std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::~__split_buffer(void **a1)
{
  std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::Preset>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = (i - 24);
    std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

void std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::__append(a1, v5);
  }
}

void std::vector<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = 32 * v8 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::~__split_buffer(&v15);
  }
}

void sub_1DDB94608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>,DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::FIRfilter>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::setCoeffSet(int a1, DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet *a2)
{
  v4 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/PeakPowerGuard/dsp/DspLibPeakPowerGuardAdmittanceFilterCoeffSet.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v4, a1);
  ++DspLibDebug::mAssertCounter;

  DspLib::PeakPowerGuard::AdmittanceFilterCoeffSet::cleanUp(a2);
}

DspLib::LoudspeakerSystemIDV1::Algorithm *DspLib::LoudspeakerSystemIDV1::Algorithm::Algorithm(DspLib::LoudspeakerSystemIDV1::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition);
  *v2 = &unk_1F59192B0;
  v2[39] = 1;
  v2[40] = 0;
  *(v2 + 327) = 0;
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::ImpedanceMeasurement((v2 + 42));
  *(this + 4652) = 0;
  *(this + 9306) = 0;
  *(this + 2327) = 1;
  DspLib::ComplexVector::ComplexVector((this + 9312), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 9392), 0, 0);
  *(this + 4736) = 0;
  *(this + 9474) = 0;
  *(this + 1185) = 0;
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::SingleResonanceModel((this + 9488));
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::LR2InductanceModel((this + 10472));
  *(this + 2856) = 0;
  *(this + 1429) = 1;
  *(this + 720) = 0u;
  *(this + 721) = 0u;
  *(this + 11548) = 0u;
  *(this + 1446) = 0;
  *(this + 1448) = 0;
  *(this + 1447) = 0;
  *(this + 11589) = 0;
  *(this + 715) = 0u;
  *(this + 716) = 0u;
  *(this + 717) = 0u;
  *(this + 718) = 0u;
  *(this + 11498) = 0u;
  *(this + 11597) = 1;
  *(this + 1450) = 0;
  DspLib::LoudspeakerSystemIDV1::TestToneGenerator::TestToneGenerator(this + 11608);
  *(this + 1458) = 0;
  *(this + 728) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 11672), 0, 0);
  if (++DspLib::LoudspeakerSystemIDV1::gInstanceCounter >= 2)
  {
    v4 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1.cpp");
    DspLib::LoudspeakerSystemIDV1::Algorithm::Algorithm(v4);
  }

  return this;
}

void sub_1DDB94AAC(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + v4));
  v6 = v1[1456];
  if (v6)
  {
    v1[1457] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[1447] = v7;
    operator delete(v7);
  }

  DspLib::FIRDecimator::~FIRDecimator((v1 + 1429));
  DspLib::LoudspeakerSystemIDV1::ModelFit::~ModelFit((v2 + 1112));
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::~ImpedanceMeasurement((v1 + 42));
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v1);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::~Algorithm(DspLib::LoudspeakerSystemIDV1::Algorithm *this)
{
  *this = &unk_1F59192B0;
  --DspLib::LoudspeakerSystemIDV1::gInstanceCounter;
  DspLib::ComplexVector::~ComplexVector((this + 11672));
  v2 = *(this + 1456);
  if (v2)
  {
    *(this + 1457) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1446);
  if (v3)
  {
    *(this + 1447) = v3;
    operator delete(v3);
  }

  v6 = (this + 11480);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 1430);
  if (v4)
  {
    *(this + 1431) = v4;
    operator delete(v4);
  }

  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::~LR2InductanceModel((this + 10472));
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::~SingleResonanceModel((this + 9488));
  DspLib::ComplexVector::~ComplexVector((this + 9392));
  DspLib::ComplexVector::~ComplexVector((this + 9312));
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::~ImpedanceMeasurement((this + 336));
  *this = &unk_1F591AE18;
  v5 = *(this + 36);
  if (v5)
  {
    *(this + 37) = v5;
    operator delete(v5);
  }

  v6 = (this + 264);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v6);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

{
  DspLib::LoudspeakerSystemIDV1::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t DspLib::LoudspeakerSystemIDV1::Algorithm::initialize(uint64_t **this, uint64_t a2, double a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  result = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (result)
  {
    v6 = a3 / *"";
    v7 = fmaxf(roundf(v6), 1.0);
    std::vector<float>::vector[abi:ne200100](&__p, (16 * v7) | 1);
    v12[0] = &unk_1F59193D0;
    v12[1] = DspLib::makeChebychevWindow;
    v12[3] = v12;
    DspLib::makeSincWindow(__p, (v11 - __p) >> 2, v7, 0x10u, v12, 0.5);
    std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v12);
    std::vector<std::vector<float>>::resize(this + 1435, 2uLL);
    v8 = ((*this)[29])(this);
    DspLib::FIRDecimator::setSrcParameters((this + 1429), v7, v8);
    DspLib::FIRDecimator::setCoefficients(this + 1429, __p, (v11 - __p) >> 2);
    v9 = v7;
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::initialize((this + 42), *(this + 2) / v9);
    std::vector<float>::resize(this + 1456, 0x201uLL);
    DspLib::ComplexVector::setLength((this + 1459), 0x200uLL);
    DspLib::LoudspeakerSystemIDV1::ModelFit::initialize((this + 1163), *(this + 2) / v9);
  }

  return result;
}

void sub_1DDB94F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerSystemIDV1::Algorithm::uninitialize(DspLib::LoudspeakerSystemIDV1::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  *(this + 8) = 0;
  std::vector<std::vector<float>>::resize(this + 1435, 0);
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::uninitialize((this + 336));
  *(this + 1457) = *(this + 1456);
  DspLib::ComplexVector::setLength((this + 11672), 0);
  DspLib::LoudspeakerSystemIDV1::ModelFit::uninitialize((this + 9304));
  DspLib::LoudspeakerSystemIDV1::TestToneGenerator::uninitialize((this + 11512));

  return DspLib::LoudspeakerSystemIDV1::TestToneGenerator::uninitialize((this + 11608));
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::reset(DspLib::LoudspeakerSystemIDV1::Algorithm *this)
{
  *(this + 40) = 0;
  DspLib::FIRDecimator::reset((this + 11432));
  DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::reset((this + 336));
  DspLib::LoudspeakerSystemIDV1::ModelFit::reset((this + 9304));
}

void sub_1DDB95038()
{
  DspLib::LoudspeakerSystemIDV1::PilotTone::reset((v0 + 11512));
  DspLib::LoudspeakerSystemIDV1::TestToneGenerator::reset(v0 + 11608);
  *(v0 + 11424) = 0;
  DspLib::ComplexVector::operator=(v0 + 11672, 0.0);
  v1 = *(v0 + 11648);
  v2 = (*(v0 + 11656) - v1) >> 2;

  DspLib::clear(v1, v2);
}

void DspLib::FIRDecimator::reset(DspLib::FIRDecimator *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v2 += 24;
    DspLib::clear(v4, (v5 - v4) >> 2);
  }

  *(this + 9) = *this - 1;
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::setParameters(_BYTE *a1, float *a2, uint64_t a3, int a4)
{
  DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if ((*(*a1 + 40))(a1))
  {
    v5 = (*(*a1 + 152))(a1, 0);
    DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::setParameters(&DspLib::LoudspeakerSystemIDV1::gNonVolatileRecord, v5, v6);
    a1[329] = (*(*a1 + 128))(a1, 0, 0) >= 0.5;
    v7 = (*(*a1 + 128))(a1, 0x300000003, 0);
    LODWORD(v8) = vcvtad_u64_f64((*(*a1 + 48))(a1) * v7);
    *(a1 + 39) = v8;
    v9 = (*(*a1 + 152))(a1, 0);
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::setParameters((a1 + 336), v9, v10);
    v11 = (*(*a1 + 152))(a1, 0);
    DspLib::LoudspeakerSystemIDV1::ModelFit::setParameters((a1 + 9304), v11, v12);
    v13 = (*(*a1 + 152))(a1, 0);
    DspLib::LoudspeakerSystemIDV1::PilotTone::setParameters((a1 + 11512), v13, v14);
    v15 = (*(*a1 + 152))(a1, 0);
    DspLib::LoudspeakerSystemIDV1::TestToneGenerator::setParameters((a1 + 11608), v15, v16);
    a1[328] = (*(*a1 + 128))(a1, 2, 0) >= 0.5;
    a1[330] = (*(*a1 + 128))(a1, 0x100000004, 0) >= 0.5;
  }
}

void DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v6 = (a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 1u));
  *(a1 + 92) = *v6 * 1000.0;
  *(a1 + 96) = v6[1] * 1000.0;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  *(a1 + 4) = *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 4u) + 12);
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v7 = (a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 6u));
  *(a1 + 88) = v7[11];
  if ((*(a1 + 12) & 1) == 0)
  {
    v8 = *(a1 + 4);
    *a1 = v8;
    *(a1 + 8) = v8;
  }

  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v9 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 7u);
  *(a1 + 44) = DspLib::LoudspeakerSystemIDV1::tsParametersToCoeffs(*(a2 + 4 * v9 + 8), *(a2 + 4 * v9 + 12) * 0.001);
  *(a1 + 48) = v10;
  *(a1 + 52) = v11;
  if ((*(a1 + 56) & 1) == 0)
  {
    *(a1 + 32) = *(a1 + 44);
    *(a1 + 40) = *(a1 + 52);
  }

  v12 = *v7;
  v13 = v7[1];
  v14 = v7[2];
  *(a1 + 72) = *v7;
  *(a1 + 76) = v13;
  *(a1 + 80) = v14;
  v15 = DspLib::LoudspeakerSystemIDV1::tsParametersToCoeffs(v12, v13, v14);
  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 60) = v15;
    *(a1 + 64) = v16;
    *(a1 + 68) = v17;
  }
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::processDirect(void *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v30[2] = *MEMORY[0x1E69E9840];
  if (*a2 != *a3)
  {
    v28 = *a2;
    v29 = *(a2 + 2);
    v26 = *a3;
    v27 = *(a3 + 2);
    a1 = DspLib::copy(&v28, &v26);
  }

  if ((*(v7 + 329) & 1) == 0)
  {
    v8 = *(a2 + 2);
    if (v8)
    {
      if (*(v7 + 330) == 1)
      {
        DspLib::LoudspeakerSystemIDV1::PilotTone::process((v7 + 1439), **a3, *(a3 + 2));
      }

      if (*(v7 + 328) == 1)
      {
        a1 = DspLib::LoudspeakerSystemIDV1::TestToneGenerator::process((v7 + 1451), **a3, v8);
      }

      if (*(a4 + 24) == 1)
      {
        MEMORY[0x1EEE9AC00](a1);
        v30[0] = &v26 - 8 * v9;
        v30[1] = v30[0] + 4 * v9;
        v11 = v10 / v7[1429] + 1;
        *&v28 = v30;
        *(&v28 + 1) = 2;
        v29 = v11;
        v26 = *a4;
        v27 = *(a4 + 2);
        DspLib::FIRDecimator::process((v7 + v12), &v26, &v28);
        if ((*(v7 + 11596) & 1) != 0 || (*(*v7 + 128))(v7, 0x100000004, 0) < 0.5)
        {
          v13 = 0;
        }

        else
        {
          v14 = *(v7[1456] + 4 * *(v7 + 2884));
          v13 = v14 > (*(*v7 + 128))(v7, 0x200000004, 0);
        }

        *(v7 + 368) = v13;
        DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::process((v7 + 42), *(v28 + 8), *v28);
        v15 = v7[39];
        v16 = v7[40] + v8;
        v17 = v16 >= v15;
        if (v16 >= v15)
        {
          v16 = 0;
        }

        v7[40] = v16;
        if (v17)
        {
          DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::impedance((v7 + 42), (v7 + 1459));
          DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::coherence((v7 + 42), v7[1456], (v7[1457] - v7[1456]) >> 2);
          *(v7 + 2327) = 1;
        }

        else
        {
          v18 = v7[1456];
          v19 = (v7[1457] - v18) >> 2;
          v20 = *(v7 + 94);
          v21 = DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::voltagePowerSpectrum((v7 + 42));
          if (*(v7 + 368) == 1)
          {
            v22 = *(v7 + 95);
            v23 = v22 >= (*(*v7 + 128))(v7, 0x900000004, 0);
          }

          else
          {
            v23 = 1;
          }

          DspLib::LoudspeakerSystemIDV1::ModelFit::process((v7 + 1163), v7 + 1459, v18, v19, v21, v23, v20);
        }

        v25 = *(v7 + 2856) + 1;
        *(v7 + 2856) = v25;
        if (v25 >= 0x1F5)
        {
          DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::pageInMatrixFunctions((v7 + 1186));
        }

        DspLib::elapsedTimeInMilliseconds(&unk_1ECDA4BF8, v24);
      }
    }
  }
}

uint64_t DspLib::LoudspeakerSystemIDV1::Algorithm::status(uint64_t a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  result = (*(*a1 + 208))(a1);
  if (result)
  {
    DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::status(a1 + 336, a2);
    DspLib::FFT::amplitude(a1 + 11672, a2 + 100, 0x201uLL);
    v6 = *(a1 + 11672);
    v7 = *(a1 + 11688);
    DspLib::FFT::phase(&v6, a2 + 613, 0x201uLL);
    DspLib::copy(*(a1 + 11648), (*(a1 + 11656) - *(a1 + 11648)) >> 2, a2 + 1126);
    DspLib::LoudspeakerSystemIDV1::ModelFit::status(a1 + 9304);
    DspLib::LoudspeakerSystemIDV1::PilotTone::status(a1 + 11512, a2);
    return DspLib::LoudspeakerSystemIDV1::TestToneGenerator::status(a1 + 11608, a2);
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::singleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::Algorithm *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 76) = 0;
  *(a2 + 68) = 0;
  *(a2 + 81) = 0;
  *(a2 + 100) = 0;
  *(a2 + 92) = 0;
  *(a2 + 105) = 0;
  *(a2 + 120) = 0;
  v4 = *(this + 97);
  *(a2 + 4) = *(this + 94);
  *(a2 + 8) = v4;
  v5 = *(this + 95);
  *(a2 + 12) = v5;
  v6 = (*(this + 368) & 1) != 0 && v5 < (*(*this + 128))(this, 0x900000004, 0);
  *(a2 + 16) = v6;
  *(a2 + 20) = *(this + 1420);
  *(a2 + 28) = *(this + 2842);
  v7 = DspLib::minv(*(this + 1394), (*(this + 1395) - *(this + 1394)) >> 2);
  v8 = *(this + 2722);
  *(a2 + 32) = v7;
  *(a2 + 36) = v8;
  *(a2 + 40) = v8 < (*(*this + 128))(this, 0x1400000006, 0);
  *(a2 + 44) = *(this + 1298);
  *(a2 + 52) = *(this + 2598);
  v9 = DspLib::minv(*(this + 1272), (*(this + 1273) - *(this + 1272)) >> 2);
  v10 = *(this + 2477);
  *(a2 + 56) = v9;
  *(a2 + 60) = v10;
  *(a2 + 64) = v10 < (*(*this + 128))(this, 0x1800000007, 0);
  *a2 = byte_1ECDA4C4C;
}

uint64_t DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::writeRdc(uint64_t this, float a2, float a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 12) = 1;
  return this;
}

void DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readRdc(DspLib::LoudspeakerSystemIDV1::NonVolatileMemory *this, float *a2, float *a3, BOOL *a4)
{
  v13 = *(this + 3);
  if (DspLib::elapsedTimeInMilliseconds(&v13, a2) >= *(this + 23))
  {
    *(this + 100) = 1;
    v13 = *(this + 2);
    v11 = -DspLib::elapsedTimeInMilliseconds(&v13, v8);
    *a2 = *(this + 1) + (expf(v11 / *(this + 24)) * (*this - *(this + 1)));
    v12 = expf(v11 / *(this + 24));
    v10 = 0;
    v9 = *(this + 1) + (v12 * (*(this + 2) - *(this + 1)));
  }

  else
  {
    *(this + 100) = 0;
    *a2 = *this;
    v9 = *(this + 2);
    v10 = 1;
  }

  *a3 = v9;
  *a4 = v10;
}

uint64_t DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::writeSingleResonanceModel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 40) = *(a2 + 2);
  *(result + 32) = v2;
  *(result + 56) = 1;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readSingleResonanceModel(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  v4 = a2;
  v13 = *(a1 + 24);
  if (DspLib::elapsedTimeInMilliseconds(&v13, a2) >= *(a1 + 92))
  {
    v8 = (a1 + 32);
    v13 = *(a1 + 16);
    v9 = DspLib::elapsedTimeInMilliseconds(&v13, v6);
    v10 = expf(-v9 / *(a1 + 96));
    v7 = 3;
    do
    {
      v11 = v8[3];
      v12 = *v8++;
      *v4 = v11 + (v10 * (v12 - v11));
      v4 = (v4 + 4);
      --v7;
    }

    while (v7);
  }

  else
  {
    v7 = *(a1 + 32);
    *(v4 + 2) = *(a1 + 40);
    *v4 = v7;
    LOBYTE(v7) = 1;
  }

  *a3 = v7;
}

uint64_t DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::writeInductanceModel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 68) = *(a2 + 2);
  *(result + 60) = v2;
  *(result + 84) = 1;
  return result;
}

void DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::readInductanceModel(uint64_t a1, uint64_t a2, char *a3)
{
  v10 = *(a1 + 24);
  if (DspLib::elapsedTimeInMilliseconds(&v10, a2) >= *(a1 + 92))
  {
    v10 = *(a1 + 16);
    v9 = DspLib::elapsedTimeInMilliseconds(&v10, v6);
    DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::decayInductanceModel(a1, (a1 + 72), a1 + 60, a2, v9);
    v8 = 0;
  }

  else
  {
    v7 = *(a1 + 60);
    *(a2 + 8) = *(a1 + 68);
    *a2 = v7;
    v8 = 1;
  }

  *a3 = v8;
}

void DspLib::LoudspeakerSystemIDV1::NonVolatileMemory::decayInductanceModel(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, float a5)
{
  v8 = expf(-a5 / *(a1 + 96));
  LODWORD(v9) = *a3;
  v10 = DspLib::LoudspeakerSystemIDV1::coeffsToTsParameters(v9, *(a3 + 4));
  *a4 = DspLib::LoudspeakerSystemIDV1::tsParametersToCoeffs(*a2 + (v8 * (v10 - *a2)), a2[1] + (v8 * (v11 - a2[1])), a2[2] + (v8 * (v12 - a2[2])));
  *(a4 + 4) = v13;
  *(a4 + 8) = v14;
}

void DspLib::LoudspeakerSystemIDV1::Algorithm::processBlock(void *a1, uint64_t *a2, __int128 *a3)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  v3 = *a2;
  v7 = a2[2];
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  v6 = v3;
  DspLib::LoudspeakerSystemIDV1::Algorithm::processDirect(a1, &v8, &v6, v5);
}

DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::ImpedanceMeasurement(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this)
{
  *this = 0;
  *(this + 36) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 31) = 0;
  *(this + 11) = 1120403456;
  *(this + 48) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 17) = 1065353216;
  *(this + 9) = 0;
  *(this + 80) = 0;
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(this + 8280, this + 84, 1024, 512, 0);
  DspLib::FFT::BufferedForwardSTFT::BufferedForwardSTFT(this + 8384, this + 4180, 1024, 512, 0);
  DspLib::ComplexVector::ComplexVector((this + 8488), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 8568), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 8648), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 8728), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 8808), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 8888), 0, 0);
  return this;
}

void sub_1DDB96054(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 8808));
  DspLib::ComplexVector::~ComplexVector((v1 + v7));
  DspLib::ComplexVector::~ComplexVector((v1 + v6));
  DspLib::ComplexVector::~ComplexVector((v1 + v5));
  DspLib::ComplexVector::~ComplexVector((v1 + v4));
  DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT((v1 + v3));
  DspLib::FFT::BufferedForwardSTFT::~BufferedForwardSTFT((v1 + v2));
  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::SingleResonanceModel(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  *(this + 26) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  DspLib::ComplexMatrix::ComplexMatrix((this + 48), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 144), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 224), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 320), 0, 0);
  *(this + 100) = 0;
  *(this + 202) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 106) = 0;
  DspLib::ComplexVector::ComplexVector((this + 432), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 512), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 608), 0, 0);
  *(this + 88) = 0;
  *(this + 43) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 712), 0, 0);
  *(this + 404) = 0;
  *(this + 792) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 816), 0, 0);
  *(this + 244) = 0;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 56) = 0u;
  return this;
}

void sub_1DDB961C8(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 89));
  v3 = v1[86];
  if (v3)
  {
    v1[87] = v3;
    operator delete(v3);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 76));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 64));
  DspLib::ComplexVector::~ComplexVector((v1 + 54));
  DspLib::ComplexVector::~ComplexVector((v1 + 40));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 28));
  DspLib::ComplexVector::~ComplexVector((v1 + 18));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 6));
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::LR2InductanceModel(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this)
{
  *(this + 30) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  DspLib::ComplexMatrix::ComplexMatrix((this + 48), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 144), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 224), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 320), 0, 0);
  *(this + 100) = 0;
  *(this + 202) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  DspLib::ComplexVector::ComplexVector((this + 424), 0, 0);
  DspLib::ComplexMatrix::ComplexMatrix((this + 504), 0, 0);
  DspLib::ComplexVector::ComplexVector((this + 600), 0, 0);
  *(this + 87) = 0;
  *(this + 680) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 704), 0, 0);
  *(this + 200) = 0;
  *(this + 49) = 0u;
  DspLib::ComplexVector::ComplexVector((this + 808), 0, 0);
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  return this;
}

void sub_1DDB96374(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 88));
  v4 = *v2;
  if (*v2)
  {
    v1[86] = v4;
    operator delete(v4);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 75));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 63));
  DspLib::ComplexVector::~ComplexVector((v1 + 53));
  DspLib::ComplexVector::~ComplexVector((v1 + 40));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 28));
  DspLib::ComplexVector::~ComplexVector((v1 + 18));
  DspLib::ComplexMatrix::~ComplexMatrix((v1 + 6));
  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::~SingleResonanceModel(DspLib::LoudspeakerSystemIDV1::SingleResonanceModel *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 816));
  DspLib::ComplexVector::~ComplexVector((this + 712));
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  DspLib::ComplexVector::~ComplexVector((this + 608));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 512));
  DspLib::ComplexVector::~ComplexVector((this + 432));
  DspLib::ComplexVector::~ComplexVector((this + 320));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 224));
  DspLib::ComplexVector::~ComplexVector((this + 144));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 48));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void DspLib::FIRDecimator::~FIRDecimator(DspLib::FIRDecimator *this)
{
  v3 = (this + 48);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void DspLib::LoudspeakerSystemIDV1::ModelFit::~ModelFit(DspLib::LoudspeakerSystemIDV1::ModelFit *this)
{
  DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::~LR2InductanceModel((this + 1168));
  DspLib::LoudspeakerSystemIDV1::SingleResonanceModel::~SingleResonanceModel((this + 184));
  DspLib::ComplexVector::~ComplexVector((this + 88));
  DspLib::ComplexVector::~ComplexVector((this + 8));
}

void DspLib::LoudspeakerSystemIDV1::LR2InductanceModel::~LR2InductanceModel(DspLib::LoudspeakerSystemIDV1::LR2InductanceModel *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 808));
  DspLib::ComplexVector::~ComplexVector((this + 704));
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  DspLib::ComplexVector::~ComplexVector((this + 600));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 504));
  DspLib::ComplexVector::~ComplexVector((this + 424));
  DspLib::ComplexVector::~ComplexVector((this + 320));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 224));
  DspLib::ComplexVector::~ComplexVector((this + 144));
  DspLib::ComplexMatrix::~ComplexMatrix((this + 48));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement::~ImpedanceMeasurement(DspLib::LoudspeakerSystemIDV1::ImpedanceMeasurement *this)
{
  DspLib::ComplexVector::~ComplexVector((this + 8888));
  DspLib::ComplexVector::~ComplexVector((this + 8808));
  DspLib::ComplexVector::~ComplexVector((this + 8728));
  DspLib::ComplexVector::~ComplexVector((this + 8648));
  DspLib::ComplexVector::~ComplexVector((this + 8568));
  DspLib::ComplexVector::~ComplexVector((this + 8488));
  v2 = *(this + 1053);
  if (v2)
  {
    *(this + 1054) = v2;
    operator delete(v2);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 8384);
  v3 = *(this + 1040);
  if (v3)
  {
    *(this + 1041) = v3;
    operator delete(v3);
  }

  DspLib::FFT::Transform<(DspLib::FFT::Direction)1>::~Transform(this + 8280);
}

uint64_t std::__function::__func<void (*)(std::span<float,18446744073709551615ul>),std::allocator<void (*)(std::span<float,18446744073709551615ul>)>,void ()(std::span<float,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59193D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(std::span<float,18446744073709551615ul>),std::allocator<void (*)(std::span<float,18446744073709551615ul>)>,void ()(std::span<float,18446744073709551615ul>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DspLib::LoudspeakerSystemIDV1::Algorithm::Algorithm(const char *a1)
{
  result = printf("DSP Sound assertion in %s at line %d\n", a1, 23);
  ++DspLibDebug::mAssertCounter;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::modelPolynomial@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>, int64x2_t a6@<Q2>)
{
  v8 = *a4;
  _D0.i32[0] = *(result + 64);
  if (_D0.f32[0] == 0.0)
  {
    v8 = 0;
  }

  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v89 = *(a3 + 8);
        v91 = *a3;
        v90 = *(a3 + 4);
        if (*(result + 136) == 1)
        {
          if (!v8)
          {
            v210 = *(result + 4);
            if (v89)
            {
              v211 = *(result + 56);
              v212.i32[0] = *(result + 60);
              v214 = *(result + 100);
              v213 = *(result + 104);
              v215 = *(result + 112);
              v216.i32[0] = *(result + 68);
              v217 = *(result + 72);
              *(a5 + 32) = 0u;
              *(a5 + 48) = 0u;
              *(a5 + 64) = 0u;
              *(a5 + 80) = 0u;
              *(a5 + 96) = 0u;
              *(a5 + 112) = 0u;
              v218.f32[0] = v216.f32[0] + v215;
              v218.f32[1] = (((v215 * v91) + (v91 * v216.f32[0])) + (v211 * v215)) + (v216.f32[0] * v214);
              v219.f32[0] = ((((v216.f32[0] * v91) * v214) + ((v211 * v91) * v215)) + (v212.f32[0] * v215)) + (v216.f32[0] * v213);
              *(a5 + 104) = ((v212.f32[0] * v90) * v213);
              v220 = v90 * v210;
              v221 = v220 * v211;
              v222 = v213;
              v223 = v210 * v212.f32[0];
              v224 = v221 * v213 + v220 * v212.f32[0] * v214 + v223 * v213;
              v225 = v210 * v211;
              v226.f64[0] = v221 * v214 + v220 * v212.f32[0] + v220 * v213 + v223 * v214 + v225 * v213 + ((v211 * v90) * v215) + ((v216.f32[0] * v90) * v214);
              v216.f32[1] = v216.f32[0] * v90;
              v227 = vmul_n_f32(v216, v213);
              v228 = 1.0 / (v210 * v217);
              v219.f32[1] = (v227.f32[0] + (v212.f32[0] * v215)) * v91;
              *a5 = vmulq_n_f64(vcvtq_f64_f32(v218), v228);
              *(a5 + 16) = vmulq_n_f64(vcvtq_f64_f32(v219), v228);
              v212.f32[1] = v212.f32[0] * v90;
              v226.f64[1] = v224;
              *(a5 + 88) = vmulq_n_f64(vaddq_f64(vaddq_f64(v226, vcvtq_f64_f32(vmul_n_f32(v212, v215))), vcvtq_f64_f32(v227)), 1.0 / v210);
              *(a5 + 72) = 1.0 / v210 * (v225 + v210 * v90 + v210 * v214 + v216.f32[0] + v215);
              *(a5 + 80) = 1.0 / v210 * (v220 * v214 + v220 * v211 + v223 + v225 * v214 + v210 * v222 + (v216.f32[0] * v90) + (v215 * v90) + (v211 * v215) + (v216.f32[0] * v214));
              *(a5 + 64) = 0x3FF0000000000000;
              v27 = xmmword_1DE095270;
            }

            else
            {
              v281 = *(result + 56);
              v282 = *(result + 60);
              v283 = *(result + 100);
              v284 = *(result + 104);
              v285 = *(result + 112);
              v286 = *(result + 68);
              v287 = *(result + 72);
              *(a5 + 88) = 0u;
              *(a5 + 24) = 0u;
              *(a5 + 40) = 0u;
              *(a5 + 56) = 0u;
              *(a5 + 72) = 0u;
              *(a5 + 104) = 0u;
              v288 = 1.0 / (v210 * v287);
              *(a5 + 16) = v288 * ((v286 * v284) + (v282 * v285));
              v289 = v286 * v283;
              v290.f32[0] = v286 + v285;
              v290.f32[1] = (v286 * v283) + (v281 * v285);
              *a5 = vmulq_n_f64(vcvtq_f64_f32(v290), v288);
              v291 = v283;
              *(a5 + 120) = 0;
              *(a5 + 88) = 1.0 / v210 * (v210 * v281 * v284 + v210 * v282 * v291 + (v282 * v285) + (v286 * v284));
              *(a5 + 96) = (v282 * v284);
              *(a5 + 72) = 1.0 / v210 * (v210 * v291 + v210 * v281 + v286 + v285);
              *(a5 + 80) = 1.0 / v210 * (v210 * v281 * v291 + v210 * v282 + v210 * v284 + (v281 * v285) + v289);
              *(a5 + 64) = 0x3FF0000000000000;
              v27 = xmmword_1DE095260;
            }

            goto LABEL_50;
          }

          *a6.i64 = *(result + 4);
          v92 = *(result + 60);
          _S3 = *(result + 112);
          v94.i32[0] = *(result + 68);
          v95 = *(result + 72);
          v13 = 0uLL;
          *(a5 + 64) = 0u;
          *(a5 + 80) = 0u;
          v96 = *a6.i64 * v95;
          _D18 = *(result + 52);
          _D6 = *(result + 100);
          *&v95 = vmuls_lane_f32(v94.f32[0], _D6, 1);
          v99 = _D6.f32[0];
          _D22 = _D6.f32[1];
          v101 = vcvtq_f64_f32(_D18);
          _Q23 = vmulq_n_f64(v101, *a6.i64);
          *&v103.f64[0] = vdupq_laneq_s64(v101, 1).u64[0];
          v103.f64[1] = v92;
          v104 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(_D18, _S3)), v103, *a6.i64), _Q23, _D6.f32[0]), vzip1q_s64(a6, _Q23), _D6.f32[1]);
          *v103.f64 = v94.f32[0] + (_D18.f32[0] * _S3);
          v94.f32[1] = v94.f32[0] * _D6.f32[0];
          v105 = 1.0 / v96;
          v106 = vmulq_n_f64(vaddq_f64(vaddq_f64(v104, vcvtq_f64_f32(v94)), vcvtq_f64_f32(vmul_n_f32(_D6, _D0.f32[0]))), 1.0 / *a6.i64);
          *(a5 + 96) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          __asm { FMLA            S21, S3, V18.S[1] }

          _D18.f32[0] = _D0.f32[0] + _S3;
          _D18.f32[1] = *v103.f64 + (_D0.f32[0] * _D6.f32[0]);
          __asm { FMLA            S21, S0, V6.S[1] }

          *(a5 + 16) = v105 * _S21;
          *(a5 + 24) = v105 * (*&v95 + (v92 * _S3));
          *a5 = vmulq_n_f64(vcvtq_f64_f32(_D18), v105);
          v109 = vmuls_lane_f32(v92, _D6, 1);
          __asm { FMLA            D6, D22, V23.D[1] }

          *(a5 + 96) = 1.0 / *a6.i64 * (_D6 + *&v95);
          *(a5 + 104) = v109;
          *(a5 + 80) = v106;
          *(a5 + 72) = 1.0 / *a6.i64 * (_S3 + *a6.i64 * v101.f64[0] + *a6.i64 * v99 + _D0.f32[0]);
          *(a5 + 64) = 0x3FF0000000000000;
          v27 = xmmword_1DE095270;
          goto LABEL_23;
        }

        if (*(result + 92) == 1)
        {
          if (v8)
          {
            v168 = *(result + 4);
            v169 = *(result + 60);
            v170 = *(result + 72);
            *(a5 + 16) = 0u;
            *(a5 + 32) = 0u;
            *(a5 + 48) = 0u;
            *(a5 + 64) = 0u;
            *(a5 + 80) = 0u;
            *(a5 + 96) = 0u;
            v171 = 1.0 / (v168 * v170);
            *(a5 + 88) = v169;
            v172 = *(result + 52);
            _D0.i32[1] = *(result + 68);
            v173 = vcvtq_f64_f32(_D0);
            *a5 = v171 * v173.f64[0];
            *(a5 + 8) = vmuld_lane_f64(v171, v173, 1);
            *(a5 + 72) = vmulq_n_f64(vmlaq_n_f64(v173, vcvtq_f64_f32(v172), v168), 1.0 / v168);
            *(a5 + 64) = 0x3FF0000000000000;
            v27 = xmmword_1DE095250;
            *(a5 + 112) = 0u;
          }

          else
          {
            v271 = *(result + 4);
            if (v89)
            {
              v272 = *(result + 56);
              v273 = *(result + 60);
              v274.i32[0] = *(result + 68);
              v275 = *(result + 72);
              *(a5 + 64) = 0u;
              *(a5 + 80) = 0u;
              *(a5 + 32) = 0u;
              *(a5 + 48) = 0u;
              *(a5 + 96) = 0u;
              *(a5 + 112) = 0u;
              v276 = v274.f32[0] * v90;
              v274.f32[1] = v274.f32[0] * v91;
              v277 = vcvtq_f64_f32(v274);
              *a5 = vmulq_n_f64(v277, 1.0 / (v271 * v275));
              *(a5 + 16) = 0u;
              v278 = (v273 * v90);
              v279 = v90;
              v280 = v272;
              *(a5 + 80) = 1.0 / v271 * (v271 * v273 + v279 * v271 * v280 + v276);
              *(a5 + 88) = v278;
              *(a5 + 72) = 1.0 / v271 * (v271 * v280 + v271 * v279 + v277.f64[0]);
              *(a5 + 64) = 0x3FF0000000000000;
              v27 = xmmword_1DE095250;
            }

            else
            {
              v309 = *(result + 56);
              v310 = *(result + 60);
              v311 = *(result + 68);
              v312 = *(result + 72);
              *(a5 + 72) = 0u;
              *(a5 + 56) = 0u;
              *(a5 + 8) = 0u;
              *(a5 + 24) = 0u;
              *(a5 + 40) = 0u;
              *(a5 + 88) = 0u;
              *(a5 + 104) = 0u;
              *(a5 + 120) = 0;
              v313 = v311;
              *a5 = 1.0 / (v271 * v312) * v313;
              *(a5 + 72) = 1.0 / v271 * (v313 + v271 * v309);
              *(a5 + 80) = v310;
              *(a5 + 64) = 0x3FF0000000000000;
              v27 = xmmword_1DE095240;
            }
          }

          goto LABEL_50;
        }

        break;
      case 3:
        if (*(result + 136) == 1)
        {
          if (!v8)
          {
            v229 = *(result + 4);
            v230 = *(result + 56);
            v231 = *(result + 60);
            v232 = *(result + 100);
            v233 = *(result + 104);
            v234 = *(result + 112);
            v235 = *(result + 68);
            v236 = 1.0 / (v229 * *(result + 72));
            *(a5 + 88) = 0u;
            *(a5 + 24) = 0u;
            *(a5 + 40) = 0u;
            *(a5 + 56) = 0u;
            *(a5 + 72) = 0u;
            *(a5 + 104) = 0u;
            *(a5 + 16) = v236 * ((v235 * v233) + (v231 * v234));
            v237 = v235 * v232;
            v238.f32[0] = v235 + v234;
            v238.f32[1] = (v235 * v232) + (v230 * v234);
            *a5 = vmulq_n_f64(vcvtq_f64_f32(v238), v236);
            v239 = v232;
            *(a5 + 120) = 0;
            *(a5 + 88) = 1.0 / v229 * (v229 * v230 * v233 + v229 * v231 * v239 + (v231 * v234) + (v235 * v233));
            *(a5 + 96) = (v231 * v233);
            *(a5 + 72) = 1.0 / v229 * (v229 * v239 + v229 * v230 + v235 + v234);
            *(a5 + 80) = 1.0 / v229 * (v229 * v230 * v239 + v229 * v231 + v229 * v233 + (v230 * v234) + v237);
            *(a5 + 64) = 0x3FF0000000000000;
            v27 = xmmword_1DE095220;
            goto LABEL_50;
          }

          *a6.i64 = *(result + 4);
          v6.i32[0] = *(result + 52);
          _S3 = *(result + 112);
          v112.i32[0] = *(result + 68);
          v113 = 1.0 / (*a6.i64 * *(result + 72));
          v13 = 0uLL;
          *(a5 + 64) = 0u;
          *(a5 + 80) = 0u;
          v114 = v112.f32[0] + (*v6.i32 * _S3);
          v115 = *v6.i32;
          _D7 = *(result + 56);
          _D17 = *(result + 100);
          v118 = vcvtq_f64_f32(_D7);
          v119 = vdupq_lane_s64(*&v118.f64[0], 0);
          v119.f64[0] = *v6.i32;
          v120 = vmulq_n_f64(v119, *a6.i64);
          v121 = vmuls_lane_f32(v112.f32[0], _D17, 1);
          v112.f32[1] = v112.f32[0] * _D17.f32[0];
          v122 = vmulq_n_f64(vaddq_f64(vaddq_f64(vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v120, _D17.f32[0]), v118, *a6.i64), vzip1q_s64(a6, v120), _D17.f32[1]), vcvtq_f64_f32(vmul_n_f32(vzip1_s32(v6, _D7), _S3))), vcvtq_f64_f32(v112)), vcvtq_f64_f32(vmul_n_f32(_D17, _D0.f32[0]))), 1.0 / *a6.i64);
          *(a5 + 96) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          v123 = v121;
          __asm
          {
            FMLA            S25, S3, V7.S[1]
            FMLA            S24, S0, V17.S[1]
          }

          *(a5 + 16) = v113 * _S24;
          *(a5 + 24) = v113 * _S25;
          v126.f32[0] = _D0.f32[0] + _S3;
          v126.f32[1] = v114 + (_D0.f32[0] * _D17.f32[0]);
          *a5 = vmulq_n_f64(vcvtq_f64_f32(v126), v113);
          *(a5 + 96) = 1.0 / *a6.i64 * (vmuld_lane_f64(_D17.f32[1], v120, 1) + vmuld_lane_f64(*a6.i64, v118, 1) * _D17.f32[0] + vmuls_lane_f32(_S3, _D7, 1) + v123);
          *(a5 + 104) = vmuls_lane_f32(_D7.f32[1], _D17, 1);
          *(a5 + 80) = v122;
          *(a5 + 72) = 1.0 / *a6.i64 * (*a6.i64 * _D17.f32[0] + *a6.i64 * v115 + _D0.f32[0] + _S3);
          *(a5 + 64) = 0x3FF0000000000000;
          v27 = xmmword_1DE095230;
          goto LABEL_23;
        }

        if (*(result + 92) == 1)
        {
          v174 = *(result + 4);
          v175 = *(result + 56);
          v176 = *(result + 60);
          v177 = *(result + 68);
          v178 = 1.0 / (v174 * *(result + 72)) * v177;
          *(a5 + 72) = 0u;
          *(a5 + 56) = 0u;
          *(a5 + 8) = 0u;
          *(a5 + 24) = 0u;
          *(a5 + 40) = 0u;
          *(a5 + 88) = 0u;
          *(a5 + 104) = 0u;
          *(a5 + 120) = 0;
          *a5 = v178;
          *(a5 + 72) = 1.0 / v174 * (v177 + v174 * v175);
          *(a5 + 80) = v176;
          *(a5 + 64) = 0x3FF0000000000000;
          v27 = xmmword_1DE095150;
          goto LABEL_50;
        }

        break;
      case 4:
        if (*(result + 136) == 1)
        {
          if (v8)
          {
            *a6.i64 = *(result + 4);
            v6.i32[0] = *(result + 52);
            _S3 = *(result + 112);
            v11.i32[0] = *(result + 68);
            v12 = *(result + 72);
            v13 = 0uLL;
            *(a5 + 64) = 0u;
            *(a5 + 80) = 0u;
            _D5 = *(result + 56);
            _D7 = *(result + 100);
            v16 = vcvtq_f64_f32(_D5);
            v17 = vdupq_lane_s64(*&v16.f64[0], 0);
            v17.f64[0] = *v6.i32;
            v18 = vmulq_n_f64(v17, *a6.i64);
            v11.f32[1] = v11.f32[0] * _D7.f32[0];
            *(a5 + 96) = 0u;
            v19 = 1.0 / (*a6.i64 * v12);
            *(a5 + 32) = vdupq_n_s64(0x3DA5FD7FE0000000uLL);
            *(a5 + 48) = 0u;
            __asm
            {
              FMLA            S25, S3, V5.S[1]
              FMLA            S24, S0, V7.S[1]
            }

            *(a5 + 16) = v19 * _S24;
            *(a5 + 24) = v19 * _S25;
            v26.f32[0] = _D0.f32[0] + _S3;
            v26.f32[1] = (v11.f32[0] + (*v6.i32 * _S3)) + (_D0.f32[0] * _D7.f32[0]);
            *a5 = vmulq_n_f64(vcvtq_f64_f32(v26), v19);
            *(a5 + 96) = 1.0 / *a6.i64 * (vmuld_lane_f64(_D7.f32[1], v18, 1) + vmuld_lane_f64(*a6.i64, v16, 1) * _D7.f32[0] + vmuls_lane_f32(_S3, _D5, 1) + vmuls_lane_f32(v11.f32[0], _D7, 1));
            *(a5 + 104) = vmuls_lane_f32(_D5.f32[1], _D7, 1);
            *(a5 + 80) = vmulq_n_f64(vaddq_f64(vaddq_f64(vaddq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v18, _D7.f32[0]), v16, *a6.i64), vzip1q_s64(a6, v18), _D7.f32[1]), vcvtq_f64_f32(vmul_n_f32(vzip1_s32(v6, _D5), _S3))), vcvtq_f64_f32(v11)), vcvtq_f64_f32(vmul_n_f32(_D7, _D0.f32[0]))), 1.0 / *a6.i64);
            *(a5 + 72) = 1.0 / *a6.i64 * (*a6.i64 * _D7.f32[0] + *a6.i64 * *v6.i32 + _D0.f32[0] + _S3);
            *(a5 + 64) = 0x3FF0000000000000;
            v27 = vdupq_n_s64(6uLL);
LABEL_23:
            *(a5 + 112) = v13;
LABEL_50:
            *(a5 + 128) = v27;
            return result;
          }

          v245 = *(result + 4);
          v246 = *(result + 56);
          v247 = *(result + 60);
          v248 = *(result + 100);
          v249 = *(result + 104);
          v250 = *(result + 112);
          v251 = *(result + 68);
          v252 = *(result + 72);
          *(a5 + 88) = 0u;
          *(a5 + 40) = 0u;
          *(a5 + 56) = 0u;
          *(a5 + 72) = 0u;
          *(a5 + 104) = 0u;
          v253 = 1.0 / (v245 * v252);
          *(a5 + 24) = vdupq_n_s64(0x3DA5FD7FE0000000uLL);
          v254 = v251 * v248;
          v255.f32[0] = v251 + v250;
          v255.f32[1] = (v251 * v248) + (v246 * v250);
          *(a5 + 16) = v253 * ((v251 * v249) + (v247 * v250));
          *a5 = vmulq_n_f64(vcvtq_f64_f32(v255), v253);
          v256 = v248;
          *(a5 + 120) = 0;
          *(a5 + 88) = 1.0 / v245 * (v245 * v246 * v249 + v245 * v247 * v256 + (v247 * v250) + (v251 * v249));
          *(a5 + 96) = (v247 * v249);
          *(a5 + 72) = 1.0 / v245 * (v245 * v256 + v245 * v246 + v251 + v250);
          *(a5 + 80) = 1.0 / v245 * (v245 * v246 * v256 + v245 * v247 + v245 * v249 + (v246 * v250) + v254);
          *(a5 + 64) = 0x3FF0000000000000;
          v195 = 5;
LABEL_49:
          v27 = vdupq_n_s64(v195);
          goto LABEL_50;
        }

        if (*(result + 92) == 1)
        {
          v189 = *(result + 4);
          v190 = *(result + 56);
          v191 = *(result + 60);
          v192 = *(result + 68);
          v193 = *(result + 72);
          *(a5 + 72) = 0u;
          *(a5 + 56) = 0u;
          *(a5 + 24) = 0u;
          *(a5 + 40) = 0u;
          *(a5 + 88) = 0u;
          *(a5 + 104) = 0u;
          *(a5 + 120) = 0;
          *(a5 + 8) = vdupq_n_s64(0x3DA5FD7FE0000000uLL);
          v194 = v192;
          *a5 = v194 / (v189 * v193);
          *(a5 + 72) = (v194 + v189 * v190) / v189;
          *(a5 + 80) = v191;
          *(a5 + 64) = 0x3FF0000000000000;
          v195 = 3;
          goto LABEL_49;
        }

        break;
    }

LABEL_39:
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  if (!a2)
  {
    if (*(result + 48) == 1)
    {
      if (!*(result + 92))
      {
        v240 = *(result + 4);
        v241 = *(result + 20);
        v242 = *(result + 24);
        v243 = *(result + 28);
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 24) = 0u;
        *(a5 + 40) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0u;
        *a5 = v242;
        *(a5 + 8) = v240 + v243;
        v244 = v241;
        *(a5 + 16) = v240 * v244;
        *(a5 + 120) = 0;
        *(a5 + 128) = 3;
        *(a5 + 64) = 0x3FF0000000000000;
        *(a5 + 72) = v244;
        v88 = 2;
        goto LABEL_62;
      }

      if (*(result + 136) != 1)
      {
        v292.f64[0] = *(result + 4);
        v293 = *(result + 20);
        v294 = *(result + 56);
        v295 = *(result + 60);
        v296 = *(result + 68);
        *(a5 + 88) = 0u;
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 104) = 0u;
        v297 = v292.f64[0] * v293;
        v298 = *(result + 24);
        *(a5 + 24) = v292.f64[0] * v295 + v297 * v294 + (v293 * v296) + vmuls_lane_f32(v295, v298, 1);
        *(a5 + 32) = v297 * v295;
        v292.f64[1] = v292.f64[0] * v294 + v297 + (v295 * v298.f32[0]);
        v299.i32[0] = vdup_lane_s32(v298, 1).u32[0];
        v299.f32[1] = v296;
        *(a5 + 8) = vaddq_f64(vaddq_f64(v292, vcvtq_f64_f32(vmul_n_f32(v298, v294))), vcvtq_f64_f32(v299));
        *a5 = v298.f32[0];
        *(a5 + 120) = 0;
        *(a5 + 128) = 5;
        *(a5 + 80) = (v295 + (v293 * v294));
        *(a5 + 88) = (v293 * v295);
        *(a5 + 72) = (v293 + v294);
        *(a5 + 64) = 0x3FF0000000000000;
        v88 = 4;
        goto LABEL_62;
      }

      if (!v8)
      {
        v314 = *(result + 4);
        v315 = *(result + 20);
        v316 = *(result + 56);
        v317 = *(result + 60);
        v318.i32[0] = *(result + 68);
        v319.i32[0] = *(result + 100);
        v320.i32[0] = *(result + 104);
        v321.i32[0] = *(result + 112);
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0u;
        v322 = v314 * v315;
        v323 = v322 * v317;
        *(a5 + 48) = v323 * v320.f32[0];
        v324 = v322 * v320.f32[0];
        v325 = v314 * v317;
        v326 = v324 * v316 + v323 * v319.f32[0] + v325 * v320.f32[0];
        *&v323 = v315 * v320.f32[0];
        v327 = v317 * v320.f32[0];
        v328 = v324 + v322 * v317 + v322 * v316 * v319.f32[0] + v325 * v319.f32[0] + v314 * v320.f32[0] * v316 + ((v315 * v316) * v321.f32[0]) + (v318.f32[0] * (v315 * v319.f32[0]));
        v329 = v314 * v316;
        v330 = v322 * v319.f32[0] + v322 * v316 + v325 + v314 * v320.f32[0] + v329 * v319.f32[0] + (v315 * v318.f32[0]) + (v315 * v321.f32[0]);
        *&v322 = v318.f32[0] * v319.f32[0];
        v331.f64[0] = v329 + v314 * v315 + v314 * v319.f32[0];
        v332 = *(result + 24);
        v333 = v332.f32[1];
        v334.f64[0] = v328 + ((v317 * v320.f32[0]) * v332.f32[0]) + vmuls_lane_f32(v317 * v319.f32[0], v332, 1);
        v335 = __PAIR64__(v317 * v319.f32[0], LODWORD(v317));
        v336 = __PAIR64__(LODWORD(v317), v320.u32[0]);
        v337 = ((v316 * (v315 * v320.f32[0])) + ((v315 * v317) * v319.f32[0])) + (v317 * v320.f32[0]);
        *&v325 = v317 + ((v315 * v319.f32[0]) + (v315 * v316));
        v338.f32[0] = v317;
        v338.f32[1] = v315 * v317;
        v339 = (v315 * v317) * v320.f32[0];
        v340 = ((((v315 * v320.f32[0]) + (v315 * v317)) + ((v315 * v316) * v319.f32[0])) + (v317 * v319.f32[0])) + (v320.f32[0] * v316);
        v320.f32[1] = v327;
        v341.i32[0] = vdup_lane_s32(v332, 1).u32[0];
        v342 = vmul_n_f32(__PAIR64__(v320.u32[0], LODWORD(v316)), v316);
        v343 = vmul_n_f32(v335, v332.f32[0]);
        v344 = vmul_f32(v332, v336);
        v345 = vmul_n_f32(v342, v332.f32[0]);
        v346 = vmul_lane_f32(__PAIR64__(v320.u32[0], LODWORD(v316)), v332, 1);
        v347 = v319.f32[0] * v332.f32[0];
        *&v325 = (v320.f32[0] + *&v325) + (v316 * v319.f32[0]);
        v348 = (v315 + v316) + v319.f32[0];
        v319.f32[1] = v316 * v319.f32[0];
        v349 = vmul_lane_f32(v319, v332, 1);
        v350 = v316 * v332.f32[0];
        v351 = v332.f32[0];
        v332.i32[0] = v318.i32[0];
        v352 = vmul_f32(v332, v320);
        v334.f64[1] = v326;
        v341.i32[1] = v318.i32[0];
        v332.i32[0] = vdup_lane_s32(v342, 1).u32[0];
        v332.i32[1] = LODWORD(v323);
        v331.f64[1] = v330;
        v318.f32[1] = v316 * v321.f32[0];
        v321.i32[1] = LODWORD(v322);
        *(a5 + 16) = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v331, vcvtq_f64_f32(v343)), vcvtq_f64_f32(v344)), vcvtq_f64_f32(v345)), vcvtq_f64_f32(v346)), vcvtq_f64_f32(v349)), vcvtq_f64_f32(v318)), vcvtq_f64_f32(v321));
        *(a5 + 32) = vaddq_f64(vaddq_f64(vaddq_f64(v334, vcvtq_f64_f32(vmul_n_f32(v338, v321.f32[0]))), vcvtq_f64_f32(vmul_f32(v341, v332))), vcvtq_f64_f32(v352));
        *a5 = v351;
        *(a5 + 8) = v314 + v350 + v347 + v333;
        *(a5 + 120) = 0;
        *(a5 + 128) = 7;
        *(a5 + 96) = v337;
        *(a5 + 104) = v339;
        *(a5 + 80) = *&v325;
        *(a5 + 88) = v340;
        *(a5 + 72) = v348;
        *(a5 + 64) = 0x3FF0000000000000;
        v88 = 6;
        goto LABEL_62;
      }

      v127 = *(result + 4);
      _S1 = *(result + 20);
      _S2 = *(result + 52);
      _S19 = *(result + 56);
      _D22.i32[0] = *(result + 60);
      v131.i32[0] = *(result + 68);
      v132.i32[0] = *(result + 112);
      v133 = v127 * _S1;
      v134 = v133 * *_D22.i32;
      *&v135 = _S19;
      v136 = v133 * _S19;
      v137 = v127 * *_D22.i32;
      v138 = _S1 * *_D22.i32;
      v139 = v133 * _S2;
      _D9 = v127 * _S19;
      v141 = v127 * _S2;
      _S25 = _S1 * _S2;
      _D6 = *(result + 100);
      v144 = _D6.f32[1];
      v145 = v136 * v144 + v134 * _D6.f32[0] + v137 * v144 + ((_S1 * *_D22.i32) * v132.f32[0]);
      v146 = *(result + 24);
      v147 = v136 * _D6.f32[0] + v134 + v139 * v144 + v137 * _D6.f32[0] + _D9 * v144;
      v148 = v139 * _D6.f32[0] + v133 * _S19 + v133 * v144 + v137 + _D9 * _D6.f32[0] + v141 * v144 + ((_S1 * _S2) * v132.f32[0]);
      LODWORD(_D9) = vdup_lane_s32(v146, 1).u32[0];
      v149 = vmul_f32(__PAIR64__(LODWORD(_S1), LODWORD(_D9)), __PAIR64__(v131.u32[0], LODWORD(_S19)));
      *(&_D9 + 1) = _S1 * _S19;
      v150 = v133 * _D6.f32[0] + v139;
      v151 = *(result + 64);
      v131.i32[1] = _D22.i32[0];
      v152 = vmul_f32(*&_D9, __PAIR64__(v132.u32[0], _D22.u32[0]));
      __asm
      {
        FMLA            S9, S22, V6.S[1]
        FMLA            S27, S25, V6.S[1]
        FMLA            S25, S1, V6.S[1]
      }

      v155 = v134 * _D6.f32[1];
      v156 = vmul_f32(v146, vzip1_s32(_D22, _D6));
      *(a5 + 48) = v145 + vmuls_lane_f32(v149.f32[1], _D6, 1) + vmuls_lane_f32(v152.f32[0], _D6, 1);
      *(a5 + 56) = v155;
      _D22 = vdup_lane_s32(v156, 0);
      _D22.f32[0] = _S19;
      __asm { FMLA            S27, S19, V6.S[1] }

      v159.f64[0] = v148 + v149.f32[1] + ((_D0.f32[0] * _S1) * _D6.f32[0]);
      v159.f64[1] = v147;
      v160 = vmul_lane_f32(__PAIR64__(_D6.u32[1], LODWORD(_S2)), v146, 1);
      LODWORD(v155) = v160.i32[0];
      *(&v155 + 1) = _D0.f32[0] * _S1;
      v161 = _S19 + ((_S1 * _D6.f32[0]) + (_S1 * _S2));
      v162.f32[0] = _S19 * v146.f32[0];
      v163 = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v159, vcvtq_f64_f32(v152)), vcvtq_f64_f32(vmul_n_f32(v149, _D6.f32[0]))), vcvtq_f64_f32(vmul_lane_f32(*&v155, _D6, 1))), vcvtq_f64_f32(vmul_n_f32(vzip1_s32(v156, v152), _D6.f32[0])));
      v164 = vdup_lane_s32(v149, 0);
      v164.i32[0] = v162.i32[0];
      v165.f64[0] = v141 + v127 * _S1 + v127 * _D6.f32[0];
      v165.f64[1] = v150 + v127 * *&v135 + v141 * _D6.f32[0] + v127 * _D6.f32[1] + (_D0.f32[0] * _S1) + (_S1 * v132.f32[0]) + v149.f32[0] + vmul_f32(v160, _D6).f32[0];
      v135.i32[0] = vdup_lane_s32(_D6, 1).u32[0];
      v166 = vcvtq_f64_f32(v156);
      v162.f32[1] = v162.f32[0] * _D6.f32[0];
      v135.i32[1] = v132.i32[0];
      v132.f32[1] = _D0.f32[0] * _D6.f32[0];
      *(a5 + 16) = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v165, vcvtq_f64_f32(v160)), vextq_s8(v166, v166, 8uLL)), vcvtq_f64_f32(v162)), vcvtq_f64_f32(vmul_n_f32(_D6, _S2 * v146.f32[0]))), vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(_S2), v146.u32[0]), v135))), vcvtq_f64_f32(v151)), vcvtq_f64_f32(v132));
      *(a5 + 32) = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v163, vcvtq_f64_f32(vmul_lane_f32(v164, _D6, 1))), vcvtq_f64_f32(vmul_f32(_D22, __PAIR64__(_D6.u32[1], v132.u32[0])))), vcvtq_f64_f32(vmul_f32(v131, __PAIR64__(v132.u32[0], _D6.u32[0])))), vcvtq_f64_f32(vmul_lane_f32(v151, _D6, 1)));
      __asm { FMLA            S22, S2, V6.S[1] }

      v167.f32[0] = _S1 + _S2;
      v167.f32[1] = v161 + (_S2 * _D6.f32[0]);
      *a5 = v146.f32[0];
      *(a5 + 8) = v127 + v146.f32[1] + (_S2 * v146.f32[0]) + vmul_f32(v146, _D6).f32[0];
      *(a5 + 120) = xmmword_1DE095280;
      *(a5 + 104) = *&_D9;
      *(a5 + 112) = vmuls_lane_f32(v138, _D6, 1);
      *(a5 + 88) = _D22.f32[0];
      *(a5 + 96) = _S27;
      *(a5 + 72) = vcvtq_f64_f32(vadd_f32(v167, _D6));
LABEL_68:
      *(a5 + 64) = 0x3FF0000000000000;
      v88 = 7;
      goto LABEL_62;
    }

    if (*(result + 92))
    {
      if (*(result + 136) == 1)
      {
        v179 = *(result + 4);
        v181 = *(result + 56);
        v180 = *(result + 60);
        v182 = *(result + 68);
        v184 = *(result + 100);
        v183 = *(result + 104);
        v185 = *(result + 112);
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0u;
        *a5 = v179;
        *(a5 + 8) = v179 * v184 + v179 * v181 + v182 + v185;
        v186 = v179 * v181;
        v187 = v186 * v184 + v179 * v180 + v179 * v183 + (v181 * v185) + (v182 * v184);
        v188 = v179 * v180;
        *(a5 + 16) = v187;
        *(a5 + 24) = v186 * v183 + v188 * v184 + (v180 * v185) + (v182 * v183);
        *(a5 + 32) = v188 * v183;
        v88 = 5;
        *(a5 + 120) = 0;
        *(a5 + 128) = 5;
        *(a5 + 64) = 0x3FF0000000000000;
        *(a5 + 72) = (v181 + v184);
        *(a5 + 80) = ((v180 + (v181 * v184)) + v183);
        *(a5 + 88) = ((v181 * v183) + (v180 * v184));
        *(a5 + 96) = (v180 * v183);
        goto LABEL_62;
      }

      v300 = *(result + 4);
      v301 = *(result + 68);
      *(a5 + 56) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 88) = 0u;
      *(a5 + 104) = 0u;
      v88 = 3;
      *(a5 + 120) = 0;
      *(a5 + 128) = 3;
      v302 = vcvtq_f64_f32(*(result + 56));
      *a5 = v300;
      *(a5 + 8) = v301 + v300 * v302.f64[0];
      *(a5 + 16) = vmuld_lane_f64(v300, v302, 1);
      *(a5 + 72) = v302;
    }

    else
    {
      *(a5 + 56) = 0u;
      *(a5 + 104) = 0u;
      *(a5 + 88) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 8) = 0u;
      *a5 = *(result + 4);
      v88 = 1;
      *(a5 + 120) = 0;
      *(a5 + 128) = 1;
    }

LABEL_61:
    *(a5 + 64) = 0x3FF0000000000000;
    goto LABEL_62;
  }

  if (a2 != 1)
  {
    goto LABEL_39;
  }

  if (*(result + 48) != 1)
  {
    if (*(result + 136))
    {
      if (*(result + 92))
      {
        v196 = *(result + 4);
        v197 = *(result + 56);
        v198 = *(result + 60);
        v199 = *(result + 68);
        v200 = *(result + 100);
        v201 = *(result + 104);
        v202 = *(result + 112);
        *(a5 + 40) = 0u;
        *(a5 + 56) = 0u;
        *(a5 + 72) = 0u;
        *(a5 + 88) = 0u;
        *(a5 + 104) = 0u;
        v203 = 1.0 / v196;
        v204 = (v198 * v201);
        v205 = ((v197 * v201) + (v198 * v200));
        v206 = ((v198 + (v197 * v200)) + v201);
        *(a5 + 24) = v203 * v205;
        *(a5 + 32) = v203 * v204;
        v207 = (v197 + v200);
        *(a5 + 8) = v203 * v207;
        *(a5 + 16) = v203 * v206;
        *a5 = v203;
        v88 = 5;
        *(a5 + 120) = 0;
        *(a5 + 128) = 5;
        *(a5 + 88) = v205 + ((v199 * v201) + (v198 * v202)) * v203;
        *(a5 + 96) = v204;
        v208 = v206 + ((v199 * v200) + (v197 * v202)) * v203;
        v209 = v207 + (v199 + v202) * v203;
        *(a5 + 80) = v208;
LABEL_55:
        *(a5 + 72) = v209;
        goto LABEL_61;
      }
    }

    else if (!*(result + 92))
    {
      *(a5 + 56) = 0u;
      *(a5 + 104) = 0u;
      *(a5 + 88) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 8) = 0u;
      *a5 = 0x3FF0000000000000;
      v88 = 1;
      *(a5 + 120) = 0;
      *(a5 + 128) = 1;
      *(a5 + 64) = *(result + 4);
      goto LABEL_62;
    }

    v267 = *(result + 4);
    v268 = *(result + 68);
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    v269 = 1.0 / v267;
    v270 = vcvtq_f64_f32(*(result + 56));
    *(a5 + 8) = vmulq_n_f64(v270, v269);
    *a5 = v269;
    v88 = 3;
    *(a5 + 120) = 0;
    *(a5 + 128) = 3;
    *(a5 + 80) = v270.f64[1];
    v209 = v270.f64[0] + v268 * v269;
    goto LABEL_55;
  }

  if (!*(result + 136))
  {
    if (!*(result + 92))
    {
      v303 = *(result + 4);
      v304 = *(result + 20);
      v305 = *(result + 24);
      v306 = *(result + 28);
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *(a5 + 64) = 0u;
      *(a5 + 80) = 0u;
      *(a5 + 96) = 0u;
      *(a5 + 112) = 0u;
      v307 = 1.0 / v305;
      v308 = v304;
      *a5 = v307;
      *(a5 + 8) = v307 * v308;
      *(a5 + 128) = 2;
      *(a5 + 72) = v307 * (v303 + v306);
      *(a5 + 80) = v303 * v308 * v307;
      *(a5 + 64) = 0x3FF0000000000000;
      v88 = 3;
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (!*(result + 92))
  {
LABEL_52:
    v257 = *(result + 4);
    v259 = *(result + 20);
    v258 = *(result + 24);
    v260 = *(result + 28);
    v261 = *(result + 56);
    v262 = *(result + 60);
    v263 = *(result + 68);
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    v264 = 1.0 / v258;
    *(a5 + 24) = v264 * (v259 * v262);
    v265.f32[0] = v259 + v261;
    v265.f32[1] = v262 + (v259 * v261);
    *(a5 + 8) = vmulq_n_f64(vcvtq_f64_f32(v265), v264);
    *a5 = v264;
    *(a5 + 128) = 4;
    v266 = v257 * v259;
    *(a5 + 88) = v264 * (v257 * v262 + v266 * v261 + (v259 * v263) + (v260 * v262));
    *(a5 + 96) = v264 * (v266 * v262);
    *(a5 + 72) = v264 * (v257 + v260 + (v258 * v261));
    *(a5 + 80) = v264 * (v257 * v261 + v266 + (v260 * v261) + (v258 * v262) + v263);
    *(a5 + 64) = 0x3FF0000000000000;
    v88 = 5;
    goto LABEL_62;
  }

  if (!v8)
  {
    v353 = *(result + 4);
    _S7 = *(result + 20);
    v355.i32[0] = *(result + 68);
    v356.i32[0] = *(result + 112);
    _D1 = *(result + 100);
    _S19 = _D1.i32[1];
    v359 = v353 * _S7;
    v360 = _D1.f32[1];
    *&v361 = _S7 * v355.f32[0];
    v362 = *(result + 24);
    _D5 = *(result + 56);
    v364 = 1.0 / v362.f32[0];
    v365 = vmuls_lane_f32(_S7, _D5, 1);
    __asm { FMLA            S25, S19, V5.S[1] }

    _D25.i32[1] = vmuls_lane_f32(v365, _D1, 1);
    v367 = vmul_lane_f32(_D5, v362, 1);
    v368 = v353 * _D5.f32[0];
    v369 = vmul_lane_f32(_D1, v367, 1).f32[0];
    v370 = vmuls_lane_f32(v367.f32[0], _D1, 1);
    v371 = __PAIR64__(v367.u32[1], v355.u32[0]);
    v372 = vmul_f32(v362, __PAIR64__(_D1.u32[1], _D5.u32[1]));
    v373.f64[0] = v368 + v359 + v353 * _D1.f32[0];
    v373.f64[1] = v359 * _D1.f32[0] + v359 * _D5.f32[0] + v353 * _D5.f32[1] + v368 * _D1.f32[0] + v353 * _D1.f32[1] + (_S7 * v355.f32[0]) + (_S7 * v356.f32[0]);
    v374 = vmul_f32(v362, _D5).f32[0];
    v375 = vdup_lane_s32(v372, 0);
    v375.f32[0] = v374;
    v376 = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v373, vcvtq_f64_f32(v367)), vcvtq_f64_f32(vmul_n_f32(vzip1_s32(vdup_lane_s32(v362, 1), v367), _D1.f32[0]))), vcvtq_f64_f32(v372)), vcvtq_f64_f32(vmul_n_f32(v375, _D1.f32[0])));
    LODWORD(v373.f64[0]) = vdup_lane_s32(_D1, 1).u32[0];
    HIDWORD(v373.f64[0]) = v356.i32[0];
    v377 = vaddq_f64(v376, vcvtq_f64_f32(vmul_lane_f32(vzip1_s32(v362, v375), _D1, 1)));
    v355.f32[1] = v356.f32[0] * _D5.f32[0];
    *v376.f64 = (_S7 * _D5.f32[0]) * v356.f32[0];
    v356.f32[1] = v355.f32[0] * _D1.f32[0];
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 32) = vmulq_n_f64(vcvtq_f64_f32(_D25), v364);
    *(a5 + 48) = 0u;
    *(a5 + 128) = 6;
    __asm
    {
      FMLA            S23, S7, V5.S[1]
      FMLA            S23, S7, V1.S[1]
    }

    *(a5 + 24) = v364 * ((_S23 + (_D5.f32[1] * _D1.f32[0])) + (_D5.f32[0] * _D1.f32[1]));
    v380.f32[0] = _S7 + _D5.f32[0];
    v380.f32[1] = (_D5.f32[1] + ((_S7 * _D1.f32[0]) + (_S7 * _D5.f32[0]))) + (_D5.f32[0] * _D1.f32[0]);
    *(a5 + 8) = vmulq_n_f64(vcvtq_f64_f32(vadd_f32(v380, _D1)), v364);
    *a5 = v364;
    v381 = v359 * _D5.f32[1];
    v382 = v364 * (v381 * _D1.f32[1]);
    v383 = v359 * _D5.f32[0];
    v384 = v383 * v360 + v381 * _D1.f32[0] + v353 * _D5.f32[1] * v360;
    v385.f64[0] = v383 * _D1.f32[0] + v359 * _D5.f32[1] + v359 * v360 + v353 * _D5.f32[1] * _D1.f32[0] + v368 * v360 + *v376.f64 + (*&v361 * _D1.f32[0]) + v369 + v370;
    v372.f32[1] = v365;
    v385.f64[1] = v384;
    *(a5 + 96) = vmulq_n_f64(vaddq_f64(vaddq_f64(vaddq_f64(v385, vcvtq_f64_f32(vmul_f32(v372, *&v373.f64[0]))), vcvtq_f64_f32(vmul_f32(vzip2_s32(_D5, _D1), __PAIR64__(v361, v356.u32[0])))), vcvtq_f64_f32(vmul_lane_f32(v371, _D1, 1))), v364);
    *(a5 + 112) = 0u;
    *(a5 + 112) = v382;
    *(a5 + 80) = vmulq_n_f64(vaddq_f64(vaddq_f64(v377, vcvtq_f64_f32(v355)), vcvtq_f64_f32(v356)), v364);
    *(a5 + 72) = v364 * (v353 + v362.f32[1] + v374 + vmul_f32(v362, _D1).f32[0]);
    goto LABEL_68;
  }

  v28 = *(result + 4);
  _S26 = *(result + 20);
  _S3 = *(result + 52);
  _D24.i32[0] = *(result + 56);
  _D21.i32[0] = *(result + 60);
  v33 = *(result + 68);
  v34.i32[0] = *(result + 112);
  v35 = _S26 * _D24.f32[0];
  _S5 = _S26 * _S3;
  v37.f32[0] = _S26 + _S3;
  _D4 = *(result + 100);
  __asm { FMLA            S18, S21, V4.S[1] }

  _D18.i32[1] = vmuls_lane_f32(_S26 * _D21.f32[0], _D4, 1);
  v40 = vcvtq_f64_f32(_D18);
  __asm
  {
    FMLA            S17, S5, V4.S[1]
    FMLA            S17, S24, V4.S[1]
  }

  v43 = _S17;
  __asm
  {
    FMLA            S17, S26, V4.S[1]
    FMLA            S17, S3, V4.S[1]
  }

  v46 = _S17;
  v37.f32[1] = (_D24.f32[0] + ((_S26 * _D4.f32[0]) + (_S26 * _S3))) + (_S3 * _D4.f32[0]);
  v47 = vcvtq_f64_f32(vadd_f32(v37, _D4));
  v48 = v28 * _S26;
  v49 = v48 * _D21.f32[0];
  v50 = v49 * _D4.f32[1];
  v51 = v48 * _D24.f32[0];
  v52 = v28 * _D21.f32[0];
  v53 = v51 * _D4.f32[1] + v49 * _D4.f32[0] + v52 * _D4.f32[1] + ((_S26 * _D21.f32[0]) * v34.f32[0]);
  v54 = v48 * _S3;
  v55 = v51 * _D4.f32[0] + v49 + v54 * _D4.f32[1] + v52 * _D4.f32[0];
  v56 = v28 * _D24.f32[0];
  v57 = v55 + v56 * _D4.f32[1];
  *&v51 = _D0.f32[0] * _S26;
  v58 = v54 * _D4.f32[0] + v48 * _D24.f32[0] + v48 * _D4.f32[1] + v28 * _D21.f32[0] + v56 * _D4.f32[0];
  v59 = v28 * _S3;
  v60 = v58 + v59 * _D4.f32[1] + ((_S26 * _S3) * v34.f32[0]);
  v61 = ((_D0.f32[0] * _S26) * _D4.f32[0]);
  v62 = v48 * _D4.f32[0] + v48 * _S3 + v28 * _D24.f32[0] + v59 * _D4.f32[0] + v28 * _D4.f32[1] + (_D0.f32[0] * _S26) + (_S26 * v34.f32[0]);
  *&v58 = _D0.f32[0] * _D4.f32[0];
  v63.f64[0] = v59 + v28 * _S26 + v28 * _D4.f32[0];
  v64 = *(result + 24);
  v65 = 1.0 / v64.f32[0];
  *(a5 + 40) = vmulq_n_f64(v40, v65);
  *(a5 + 24) = v65 * v46;
  *(a5 + 32) = v65 * v43;
  *(a5 + 8) = vmulq_n_f64(v47, v65);
  *&v40.f64[0] = vdup_lane_s32(_D4, 0);
  LODWORD(v40.f64[0]) = _D21.i32[0];
  LODWORD(v47.f64[0]) = vdup_lane_s32(v64, 1).u32[0];
  *&v40.f64[0] = vmul_f32(v64, *&v40.f64[0]);
  v66 = vmul_lane_f32(__PAIR64__(_D4.u32[1], LODWORD(_S3)), v64, 1);
  v67 = __PAIR64__(LODWORD(_S26), LODWORD(v47.f64[0]));
  v68 = vdup_lane_s32(*&v40.f64[0], 0);
  v68.i32[0] = _D24.i32[0];
  v69.f32[0] = _D24.f32[0] * v64.f32[0];
  _D24.i32[1] = v33;
  v70 = vmul_f32(v67, _D24);
  v71 = v53 + vmuls_lane_f32(v70.f32[1], _D4, 1);
  _D0.i32[1] = v33;
  v72 = __PAIR64__(_D21.u32[0], v33);
  v73.i32[0] = vdup_lane_s32(_D4, 1).u32[0];
  v74.f64[0] = v60 + v70.f32[1] + v61;
  v75 = vmul_lane_f32(_D0, _D4, 1);
  *(v47.f64 + 1) = v35;
  _D21.i32[1] = v34.i32[0];
  v76 = vmul_f32(*&v47.f64[0], _D21);
  v77 = vmul_n_f32(v70, _D4.f32[0]);
  *v47.f64 = vmul_f32(v66, _D4).f32[0];
  v78 = vcvtq_f64_f32(v66);
  v66.i32[1] = LODWORD(v51);
  v79 = vmul_lane_f32(v66, _D4, 1);
  v80 = vmul_n_f32(vzip1_s32(*&v40.f64[0], v76), _D4.f32[0]);
  v81 = vdup_lane_s32(v70, 0);
  v81.i32[0] = v69.i32[0];
  v82 = vmul_lane_f32(v81, _D4, 1);
  v66.f32[0] = v69.f32[0] * _D4.f32[0];
  v83 = __PAIR64__(v34.u32[0], _D4.u32[0]);
  v84 = v71 + vmuls_lane_f32(v76.f32[0], _D4, 1);
  v85 = vmul_n_f32(_D4, _S3 * v64.f32[0]);
  _D4.f32[0] = vmul_f32(v64, _D4).f32[0];
  *(a5 + 112) = v65 * v84;
  *(a5 + 120) = v65 * v50;
  v74.f64[1] = v57;
  *(a5 + 128) = 7;
  *a5 = v65;
  v86 = vaddq_f64(v74, vcvtq_f64_f32(v76));
  v76.i32[0] = v64.i32[1];
  v63.f64[1] = v62 + v70.f32[0] + *v47.f64;
  v87 = vcvtq_f64_f32(*&v40.f64[0]);
  v69.i32[1] = v66.i32[0];
  v64.f32[1] = _S3;
  v73.i32[1] = v34.i32[0];
  v34.i32[1] = LODWORD(v58);
  *(a5 + 80) = vmulq_n_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v63, v78), vextq_s8(v87, v87, 8uLL)), vcvtq_f64_f32(v69)), vcvtq_f64_f32(v85)), vcvtq_f64_f32(vmul_f32(v64, v73))), vcvtq_f64_f32(_D0)), vcvtq_f64_f32(v34)), v65);
  *(a5 + 96) = vmulq_n_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v86, vcvtq_f64_f32(v77)), vcvtq_f64_f32(v79)), vcvtq_f64_f32(v80)), vcvtq_f64_f32(v82)), vcvtq_f64_f32(vmul_f32(v68, __PAIR64__(_D4.u32[1], v34.u32[0])))), vcvtq_f64_f32(vmul_f32(v72, v83))), vcvtq_f64_f32(v75)), v65);
  *(a5 + 72) = v65 * (v28 + v76.f32[0] + (_S3 * v64.f32[0]) + _D4.f32[0]);
  *(a5 + 56) = 0;
  *(a5 + 64) = 0x3FF0000000000000;
  v88 = 8;
LABEL_62:
  *(a5 + 136) = v88;
  return result;
}

void *DspLib::LoudspeakerManagerV2::ModelManager::initialize(DspLib::LoudspeakerManagerV2::ModelManager *this, unint64_t a2)
{
  std::vector<DspLib::Biquad::Section>::reserve(this + 7, 4uLL);
  std::vector<DspLib::Biquad::SDomainSection>::reserve(this + 10, 4uLL);
  std::vector<DspLib::LoudspeakerManagerV2::ModelCollection>::resize(this + 4, a2);
  DspLib::LoudspeakerManagerV2::ModelManager::pageInRootsPath(this);
  *(this + 8) = *(this + 7);
  std::vector<DspLib::Biquad::Section>::resize(this + 13, 1uLL);
  std::vector<DspLib::Biquad::Section>::resize(this + 16, a2);
  result = std::vector<DspLib::Biquad::Section>::reserve(this + 19, 3uLL);
  *(this + 20) = *(this + 19);
  return result;
}

void *std::vector<DspLib::Biquad::Section>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<DspLib::Biquad::SDomainSection>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<DspLib::Biquad::SDomainSection>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<DspLib::LoudspeakerManagerV2::ModelCollection>::resize(void *a1, unint64_t a2)
{
  v2 = 0xE719AD850EC8C0F9 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::LoudspeakerManagerV2::ModelCollection>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 2632 * a2;
  }
}

__n128 DspLib::LoudspeakerManagerV2::ModelManager::pageInRootsPath(DspLib::LoudspeakerManagerV2::ModelManager *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v29[0] = xmmword_1DE095360;
  v29[1] = unk_1DE095370;
  v29[2] = xmmword_1DE095380;
  v29[3] = unk_1DE095390;
  v28[0] = xmmword_1DE0953A0;
  v28[1] = unk_1DE0953B0;
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4 = (this + 56);
  v28[2] = xmmword_1DE0953C0;
  v28[3] = unk_1DE0953D0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 2);
  MEMORY[0x1EEE9AC00](this);
  v7 = v28 - v6;
  v9 = v28 + 4 * v8 - v6;
  v10 = v28 - v6;
  do
  {
    *v10 = 1065353216;
    *(v10 + 12) = 0;
    *(v10 + 4) = 0;
    v10 += 20;
  }

  while (v10 != v9);
  v11 = *(this + 7);
  v12 = *(this + 8) - v11;
  if (v12)
  {
    v13 = 0;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 2);
    v15 = 1;
    do
    {
      v16 = 5 * v13;
      v17 = (v11 + 4 * v16);
      v18 = &v7[4 * v16];
      v19 = *v17;
      *(v18 + 4) = *(v17 + 4);
      *v18 = v19;
      v13 = v15;
      v20 = v14 > v15++;
    }

    while (v20);
  }

  std::vector<DspLib::Biquad::Section>::resize(v4, 3uLL);
  DspLib::sPolynomialToBiquadCoefficients(v29, 6000.0, 8, v28, 8, v4, *(this + 3));
  std::vector<DspLib::Biquad::Section>::resize(v4, v5);
  v22 = *(this + 7);
  if (*(this + 8) != v22)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = 5 * v23;
      v26 = &v7[4 * v25];
      v27 = (v22 + 4 * v25);
      result = *v26;
      v27[1].n128_u32[0] = v26[1].n128_u32[0];
      *v27 = result;
      v23 = v24;
      v22 = *(this + 7);
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 8) - v22) >> 2) > v24++;
    }

    while (v20);
  }

  return result;
}

void std::vector<DspLib::Biquad::Section>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::Biquad::Section>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

void *DspLib::LoudspeakerManagerV2::ModelManager::uninitialize(void *this)
{
  this[8] = this[7];
  this[5] = this[4];
  this[14] = this[13];
  this[17] = this[16];
  this[20] = this[19];
  return this;
}

uint64_t DspLib::LoudspeakerManagerV2::ModelManager::setParameters(uint64_t a1, float *a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 0x18u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  result = DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 2u);
  v6 = &a2[result];
  *a1 = v6[3] != 0.0;
  *(a1 + 1) = *a2 != 0.0;
  v7 = v6[12] * 0.01;
  *(a1 + 20) = v7;
  v8 = v6[13] * 0.01;
  *(a1 + 24) = v8;
  v9 = *(a1 + 32);
  if (*(a1 + 40) != v9)
  {
    v10 = 0;
    v11 = 4;
    do
    {
      v12 = v6[v11];
      v13 = v9 + 2632 * v10;
      v35 = &v37;
      v36 = v12;
      DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(&v35, v13);
      if ((*(a1 + 28) & 1) == 0)
      {
        v14 = *(v13 + 176);
        *(v13 + 2560) = *(v13 + 160);
        *(v13 + 2576) = v14;
        *(v13 + 2592) = *(v13 + 192);
        v15 = *(v13 + 112);
        *(v13 + 2496) = *(v13 + 96);
        *(v13 + 2512) = v15;
        v16 = *(v13 + 144);
        *(v13 + 2528) = *(v13 + 128);
        *(v13 + 2544) = v16;
        v17 = *(v13 + 48);
        *(v13 + 2432) = *(v13 + 32);
        *(v13 + 2448) = v17;
        v18 = *(v13 + 80);
        *(v13 + 2464) = *(v13 + 64);
        *(v13 + 2480) = v18;
        v19 = *(v13 + 16);
        *(v13 + 2400) = *v13;
        *(v13 + 2608) = *(v13 + 208);
        *(v13 + 2416) = v19;
        *(v13 + 2416) = 1;
      }

      DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(&v35, (v13 + 456));
      DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(&v35, (v13 + 912));
      DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(&v35, (v13 + 1368));
      DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(&v35, (v13 + 1824));
      v21 = v37;
      v20 = v38;
      if (v20 != DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 0x18u))
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      if ((v12 + 18) >= 0x18)
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      v22 = DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, v12 + 18);
      DspLib::Loudspeaker::Calibration::ThermalCoefficients::setParameters(v13 + 2280, &v21[v22], *((&_ZGRN6DspLib20LoudspeakerManagerV210Parameters11kDefinitionE0_)[2 * (v12 + 18) + 1] + 2), *(a1 + 16));
      v23 = v37;
      v24 = v38;
      if (v24 != DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 0x18u))
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      if ((v12 + 15) >= 0x18)
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      v25 = DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, v12 + 15);
      v26 = &v23[v25];
      v27 = v26[25];
      *(v13 + 2348) = v26[24] != 0.0;
      *(v13 + 2352) = v27 * 6.28318531;
      v28 = v26[27];
      *(v13 + 2360) = v26[26];
      *(v13 + 2368) = DspLib::dB2Amp(v25, v28);
      *(v13 + 2376) = DspLib::dB2Amp(v29, -v26[28]);
      v30 = v37;
      v31 = v38;
      if (v31 != DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 0x18u))
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      if ((v12 + 9) >= 0x18)
      {
        DspLib::AlgorithmBaseNewParameters::parameterGroup();
      }

      result = DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, v12 + 9);
      v32 = &v30[result];
      v33 = v32[30];
      *(v13 + 2616) = v32[29] != 0.0;
      *(v13 + 2617) = v33 != 0.0;
      v34 = (v32[34] * 0.000001) / 140002.31;
      *(v13 + 2624) = (((v32[32] * 0.0001) * (v32[33] * 0.0001)) / (((v32[35] * 0.001) + (((v32[33] * 0.0001) * v32[36]) * (v32[33] * 0.0001))) * v34));
      v10 = v11 - 3;
      v9 = *(a1 + 32);
      ++v11;
    }

    while (0xE719AD850EC8C0F9 * ((*(a1 + 40) - v9) >> 3) > v10);
  }

  return result;
}