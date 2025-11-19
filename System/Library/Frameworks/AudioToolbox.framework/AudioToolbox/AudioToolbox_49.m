uint64_t AUEchoCancelerV5::Render(AUEchoCancelerV5 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUEchoCancelerV5::ProcessMultipleBufferLists(AUEchoCancelerV5 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v8 = *(this + 84);
  if (v8 != a3)
  {
    printf("AUEchoCancelerV5::ProcessMultipleBufferLists error - wrong (%d) block size expected (%d)", a3, v8);
    return 4294956422;
  }

  v155 = 0.0;
  if (*(this + 134) != *(this + 133))
  {
    AUEchoCancelerV5::InitializeEC(this);
  }

  if (a6 < 2)
  {
    v13 = 0;
    v14 = 0;
    mData = 0;
    goto LABEL_9;
  }

  mData = a7[1]->mBuffers[0].mData;
  if (a6 == 2)
  {
    v13 = 0;
    v14 = 0;
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (a6 < 4)
  {
    v13 = 0;
    v16 = 0;
LABEL_24:
    v152 = 0;
    v14 = a7[2]->mBuffers[0].mData;
    goto LABEL_25;
  }

  v17 = a7[3];
  if (v17)
  {
    v16 = v17->mBuffers[0].mData;
  }

  else
  {
    v16 = 0;
  }

  if (a6 == 4)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v18 = a7[4];
  if (v18)
  {
    v13 = v18->mBuffers[0].mData;
  }

  else
  {
    v13 = 0;
  }

  if (a6 < 6)
  {
    goto LABEL_24;
  }

  v19 = a7[5];
  v14 = a7[2]->mBuffers[0].mData;
  if (v19)
  {
    v152 = v19->mBuffers[0].mData;
    goto LABEL_25;
  }

LABEL_10:
  v152 = 0;
LABEL_25:
  v20 = (*a5)->mBuffers[0].mData;
  v153 = (*a7)->mBuffers[0].mData;
  v21 = a5[1]->mBuffers[0].mData;
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_163;
  }

  Parameter = ausdk::AUElement::GetParameter(v22, 2u);
  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_163;
  }

  v27 = ausdk::AUElement::GetParameter(v25, 0xBu);
  if (((*(*this + 576))(this) & 1) != 0 || !*(this + 72))
  {
    if (v20 != v153)
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      memcpy(v153, v20, (*(Element + 104) * a3));
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_163;
      }

      ausdk::AUElement::SetParameter(v37, 3u, 0.0);
      v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_163;
      }

      ausdk::AUElement::SetParameter(v39, 0x24u, 0.0);
    }

    return 0;
  }

  v15 = 0xFFFFFFFFLL;
  if (!v20 || !v21)
  {
    goto LABEL_142;
  }

  __dst = v14;
  v28 = *(this + 84);
  v29 = 4 * v28;
  memcpy(*(this + 82), v21, v29);
  v30 = *(this + 85);
  v31 = v30[31];
  v150 = v13;
  v151 = v16;
  if ((v31 | 2) != 3)
  {
    if (v31 == 2 && v30[33] >= 2)
    {
      v41 = 1;
      v42 = 32;
      v43 = 4 * v28;
      do
      {
        memcpy((*(this + 82) + v43), *(&a5[1]->mNumberBuffers + v42), v29);
        ++v41;
        v30 = *(this + 85);
        v43 += 4 * v28;
        v42 += 16;
      }

      while (v41 < v30[33]);
    }

    goto LABEL_54;
  }

  v32 = v30[32];
  if (v32 == 2)
  {
    MEMORY[0x1E12BE990](v21, 1, *(this + 82) + 4 * v28, 1, v28);
    if (*(this + 672) == 1)
    {
      v33 = *(this + 82) + 4 * v28;
      v34 = v21;
      v35 = v33;
LABEL_49:
      MEMORY[0x1E12BE7F0](v34, 1, v33, 1, v35, 1, v28);
    }
  }

  else if (v32 >= 3)
  {
    MEMORY[0x1E12BE990](v21, 1, *(this + 82) + 4 * v28, 1, v28);
    MEMORY[0x1E12BE7F0](v21, 1, *(this + 82) + 4 * v28, 1, *(this + 82) + 8 * v28, 1, v28);
    if (*(this + 672) == 1)
    {
      MEMORY[0x1E12BE990](v21, 1, *(this + 82) + 4 * v28, 1, v28);
      MEMORY[0x1E12BE7F0](v21, 1, *(this + 82) + 4 * v28, 1, *(this + 82) + 8 * v28, 1, v28);
      v44 = *(this + 82);
      v34 = v44 + 4 * v28;
      v33 = v44 + 8 * v28;
      v35 = v34;
      goto LABEL_49;
    }
  }

  v30 = *(this + 85);
  if (v30[31] == 3 && v30[33] >= 2)
  {
    v45 = 1;
    v46 = 32;
    do
    {
      memcpy((*(this + 82) + 4 * (v45++ + v30[32] - 1) * v28), *(&a5[1]->mNumberBuffers + v46), v29);
      v30 = *(this + 85);
      v46 += 16;
    }

    while (v45 < v30[33]);
  }

LABEL_54:
  if (v30[31] == 2)
  {
    v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v48 & 1) == 0)
    {
      goto LABEL_163;
    }

    **(*(*(this + 72) + 8) + 120) = ausdk::AUElement::GetParameter(v47, 0x2Fu) != 0.0;
    if (*(*(this + 85) + 120) >= 2)
    {
      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_163;
      }

      *(*(*(*(this + 72) + 8) + 120) + 1) = ausdk::AUElement::GetParameter(v49, 0x30u) != 0.0;
      if (*(*(this + 85) + 120) >= 3)
      {
        v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v52 & 1) == 0)
        {
          goto LABEL_163;
        }

        *(*(*(*(this + 72) + 8) + 120) + 2) = ausdk::AUElement::GetParameter(v51, 0x31u) != 0.0;
        if (*(*(this + 85) + 120) >= 4)
        {
          v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v54 & 1) == 0)
          {
            goto LABEL_163;
          }

          *(*(*(*(this + 72) + 8) + 120) + 3) = ausdk::AUElement::GetParameter(v53, 0x32u) != 0.0;
          if (*(*(this + 85) + 120) >= 5)
          {
            v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v56 & 1) == 0)
            {
              goto LABEL_163;
            }

            *(*(*(*(this + 72) + 8) + 120) + 4) = ausdk::AUElement::GetParameter(v55, 0x33u) != 0.0;
            if (*(*(this + 85) + 120) >= 6)
            {
              v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v58 & 1) == 0)
              {
                goto LABEL_163;
              }

              *(*(*(*(this + 72) + 8) + 120) + 5) = ausdk::AUElement::GetParameter(v57, 0x34u) != 0.0;
              if (*(*(this + 85) + 120) >= 7)
              {
                v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if ((v60 & 1) == 0)
                {
                  goto LABEL_163;
                }

                *(*(*(*(this + 72) + 8) + 120) + 6) = ausdk::AUElement::GetParameter(v59, 0x35u) != 0.0;
                if (*(*(this + 85) + 120) >= 8)
                {
                  v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_163;
                  }

                  *(*(*(*(this + 72) + 8) + 120) + 7) = ausdk::AUElement::GetParameter(v61, 0x36u) != 0.0;
                  if (*(*(this + 85) + 120) >= 9)
                  {
                    v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if ((v64 & 1) == 0)
                    {
                      goto LABEL_163;
                    }

                    v65 = ausdk::AUElement::GetParameter(v63, 0x37u) != 0.0;
                    v66 = *(*(*(this + 72) + 8) + 120);
                    *(v66 + 8) = v65;
                    v67 = *(*(this + 85) + 120);
                    if (v67 >= 10)
                    {
                      v68 = (v67 + 6) & 0xFFFFFFF0;
                      v69 = vdupq_n_s64(v67 - 10);
                      v70 = (v66 + 12);
                      v71 = 24;
                      do
                      {
                        v72 = vdupq_n_s64(v71 - 24);
                        v73 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE095160)));
                        if (vuzp1_s8(vuzp1_s16(v73, *v69.i8), *v69.i8).u8[0])
                        {
                          *(v70 - 3) = v65;
                        }

                        if (vuzp1_s8(vuzp1_s16(v73, *&v69), *&v69).i8[1])
                        {
                          *(v70 - 2) = v65;
                        }

                        if (vuzp1_s8(vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE095150)))), *&v69).i8[2])
                        {
                          *(v70 - 1) = v65;
                          *v70 = v65;
                        }

                        v74 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE095220)));
                        if (vuzp1_s8(*&v69, vuzp1_s16(v74, *&v69)).i32[1])
                        {
                          v70[1] = v65;
                        }

                        if (vuzp1_s8(*&v69, vuzp1_s16(v74, *&v69)).i8[5])
                        {
                          v70[2] = v65;
                        }

                        if (vuzp1_s8(*&v69, vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE0952D0))))).i8[6])
                        {
                          v70[3] = v65;
                          v70[4] = v65;
                        }

                        v75 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE0952C0)));
                        if (vuzp1_s8(vuzp1_s16(v75, *v69.i8), *v69.i8).u8[0])
                        {
                          v70[5] = v65;
                        }

                        if (vuzp1_s8(vuzp1_s16(v75, *&v69), *&v69).i8[1])
                        {
                          v70[6] = v65;
                        }

                        if (vuzp1_s8(vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE0952B0)))), *&v69).i8[2])
                        {
                          v70[7] = v65;
                          v70[8] = v65;
                        }

                        v76 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE0952A0)));
                        if (vuzp1_s8(*&v69, vuzp1_s16(v76, *&v69)).i32[1])
                        {
                          v70[9] = v65;
                        }

                        if (vuzp1_s8(*&v69, vuzp1_s16(v76, *&v69)).i8[5])
                        {
                          v70[10] = v65;
                        }

                        if (vuzp1_s8(*&v69, vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, vorrq_s8(v72, xmmword_1DE095290))))).i8[6])
                        {
                          v70[11] = v65;
                          v70[12] = v65;
                        }

                        v71 += 16;
                        v70 += 16;
                        v68 -= 16;
                      }

                      while (v68);
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

  v77 = *(this + 82);
  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_163;
  }

  v80 = ausdk::AUElement::GetParameter(v78, 4u);
  __C = 0.0;
  vDSP_svesq(v20, 1, &__C, v28);
  v81 = __C != 0.0 && v80 <= 0;
  v82 = !v81;
  aec_v5::run_aec(*(this + 72), this + 136, this + 137, this + 138, this + 139, v77, v20, v153, &v155, v82, this + 162, this + 167);
  v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v83, 8u, *(this + 137));
  v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v86 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v85, 0x21u, *(this + 138));
  v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v87, 0x22u, *(this + 139));
  v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v89, 0x25u, *(this + 162));
  v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v91, 0x2Du, v155);
  v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v93, 0x2Eu, *(this + 167));
  if (__dst)
  {
    memcpy(__dst, *(*(*(this + 72) + 56) + 168), 4 * *(this + 84));
  }

  if (mData)
  {
    memcpy(mData, *(*(*(this + 72) + 56) + 96), 4 * *(this + 84));
  }

  if (v151)
  {
    memcpy(v151, *(*(*(this + 72) + 56) + 104), 4 * *(this + 84));
  }

  if (v150)
  {
    memcpy(v150, *(*(*(this + 72) + 56) + 112), 4 * *(this + 84));
  }

  if (v152)
  {
    memcpy(v152, *(*(*(this + 72) + 56) + 120), 4 * *(this + 84));
  }

  if (Parameter == 0.0)
  {
    v157 = 0;
    v156 = 0.0;
    v95 = *(this + 74);
    v96 = *(this + 73);
    v97 = *(this + 72);
    v98 = 16;
    if (*(*(v97 + 48) + 592) > 0)
    {
      v98 = 40;
    }

    memcpy(*(this + 73), *(*(v97 + v98) + 48), 4 * *(*(v97 + v98) + 88));
    *&v99 = 0.0;
    if (*(*(*(this + 72) + 48) + 232) || (v100 = ((v95 - v96) >> 2), MEMORY[0x1E12BE9A0](*(this + 73), 1, *(this + 75), 1, *(this + 77), 1, v100, 0.0), MEMORY[0x1E12BE990](*(this + 77), 1, *(this + 77), 1, v100), vDSP_sve(*(this + 77), 1, &v157 + 1, v100), MEMORY[0x1E12BE990](*(this + 75), 1, *(this + 79), 1, v100), vDSP_sve(*(this + 79), 1, &v157, v100), MEMORY[0x1E12BE990](*(this + 73), 1, *(this + 79), 1, v100), vDSP_sve(*(this + 79), 1, &v156, v100), v101 = *&v157 + 0.00000001, *&v157 = (v156 * 0.2) + (v101 * 0.8), v102 = *(&v157 + 1) * 100.0 / *&v157, *&v99 = 800.0, v102 > 800.0))
    {
      v102 = *&v99;
    }

    std::valarray<float>::__assign_range(this + 600, *(this + 73), *(this + 74));
  }

  else
  {
    v102 = 0.0;
  }

  v103 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v103, 3u, v102);
  if (v27 != 1.0)
  {
    v105 = *(*(this + 72) + 16);
    v106 = *(v105 + 36);
    vDSP_vabs(*(v105 + 48), 1, *(this + 77), 1, v106);
    if (v106)
    {
      v107 = 0;
      v108 = 0;
      v110 = -1.0;
      do
      {
        v109 = *(this + 77);
        if (*(v109 + 4 * v107) > v110)
        {
          v108 = v107;
          v110 = *(v109 + 4 * v107);
        }

        ++v107;
      }

      while (v106 != v107);
      v111 = v108 * 1000.0;
    }

    else
    {
      v111 = 0.0;
    }

    v112 = *(this + 135);
    v113 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v114 & 1) == 0)
    {
      goto LABEL_163;
    }

    ausdk::AUElement::SetParameter(v113, 0x1Eu, v111 / v112);
  }

  v15 = 0;
LABEL_142:
  v115 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v116 & 1) == 0)
  {
    goto LABEL_163;
  }

  v117 = ausdk::AUElement::GetParameter(v115, 0x23u);
  v118 = v155;
  v119 = *(this + 140);
  if (v155 >= v119)
  {
    v120 = v155;
  }

  else
  {
    v120 = *(this + 140);
  }

  if (v120 >= *(this + 141))
  {
    v121 = v120;
  }

  else
  {
    v121 = *(this + 141);
  }

  *(this + 141) = v119;
  *(this + 140) = v118;
  v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if (v121 <= v117)
  {
    v124 = 0.0;
    if ((v123 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  else
  {
    v124 = 1.0;
    if ((v123 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  ausdk::AUElement::SetParameter(v122, 0x24u, v124);
  v125 = *(*(*(this + 72) + 56) + 96);
  v126 = (*a7)->mBuffers[0].mData;
  v157 = 0;
  vDSP_svesq(v125, 1, &v157, *(this + 84));
  vDSP_svesq(v126, 1, &v157 + 1, *(this + 84));
  v127 = *&v157 / (*(&v157 + 1) + 1.0e-20) + 1.0e-20;
  v128 = log10f(v127);
  v129 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v130 & 1) == 0)
  {
    goto LABEL_163;
  }

  v131 = ausdk::AUElement::GetParameter(v129, 0x42u);
  v132 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v133 & 1) == 0)
  {
    goto LABEL_163;
  }

  ausdk::AUElement::SetParameter(v132, 0x44u, *(this + 142));
  v134 = *(this + 142);
  v135 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if (v134 <= v131)
  {
    v137 = 0.0;
    if ((v136 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  else
  {
    v137 = 1.0;
    if ((v136 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  ausdk::AUElement::SetParameter(v135, 0x43u, v137);
  *(this + 142) = v128 * 10.0;
  v138 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v139 & 1) == 0 || (v140 = ausdk::AUElement::GetParameter(v138, 0x46u), v141 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v142 & 1) == 0))
  {
LABEL_163:
    abort();
  }

  ausdk::AUElement::SetParameter(v141, 0x45u, *(this + 143));
  v143 = *(this + 143);
  v144 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if (v143 <= v140)
  {
    v146 = 0.0;
    if ((v145 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  else
  {
    v146 = 1.0;
    if ((v145 & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  ausdk::AUElement::SetParameter(v144, 0x47u, v146);
  v147 = (*&v157 / *(this + 84)) + 1.0e-20;
  *(this + 143) = log10f(v147) * 10.0;
  return v15;
}

void AUEchoCancelerV5::InitializeEC(AUEchoCancelerV5 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = Element;
  (*(*this + 64))(this);
  *(this + 135) = *(v3 + 80);
  v4 = malloc_type_malloc(0xB0uLL, 0x448308B5uLL);
  if (!v4)
  {
LABEL_79:
    exception = __cxa_allocate_exception(8uLL);
    v114 = std::bad_alloc::bad_alloc(exception);
  }

  v4[9] = 0u;
  v4[10] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  *(this + 85) = v4;
  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_77;
  }

  Parameter = ausdk::AUElement::GetParameter(v5, 0);
  v8 = *(this + 85);
  if (!Parameter)
  {
LABEL_71:
    v109 = 4 * *(this + 84) * *(v8 + 120);
    v110 = malloc_type_malloc(v109, 0x8A614B48uLL);
    if (v110)
    {
      v111 = 1;
    }

    else
    {
      v111 = v109 == 0;
    }

    if (v111)
    {
      v112 = v110;
      bzero(v110, v109);
      *(this + 82) = v112;
      aec_v5::aec_init(this + 72, *(this + 135), *(this + 85));
    }

    goto LABEL_79;
  }

  v9 = *(this + 84);
  v10 = v9;
  v11 = *(this + 135) / (v9 * 1000.0);
  *v8 = (ceilf(v11 * Parameter) * v9);
  *(v8 + 4) = v9;
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 8) = ausdk::AUElement::GetParameter(v12, 9u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_77;
  }

  v16 = ausdk::AUElement::GetParameter(v14, 0xAu);
  v17 = *(this + 85);
  *(v17 + 12) = v16;
  *(v17 + 16) = 1;
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 20) = ausdk::AUElement::GetParameter(v18, 0xCu);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 24) = ausdk::AUElement::GetParameter(v20, 0xDu);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 28) = ausdk::AUElement::GetParameter(v22, 0xEu);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 32) = ausdk::AUElement::GetParameter(v24, 0xFu);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 36) = ausdk::AUElement::GetParameter(v26, 0x10u);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 40) = ausdk::AUElement::GetParameter(v28, 0x11u);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 44) = ausdk::AUElement::GetParameter(v30, 0x12u);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 48) = ausdk::AUElement::GetParameter(v32, 0x13u);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 52) = ausdk::AUElement::GetParameter(v34, 0x14u);
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 56) = ausdk::AUElement::GetParameter(v36, 0x15u);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 60) = ausdk::AUElement::GetParameter(v38, 0x16u);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 64) = ausdk::AUElement::GetParameter(v40, 0x19u);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 68) = ausdk::AUElement::GetParameter(v42, 0x1Au);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 72) = ausdk::AUElement::GetParameter(v44, 0x17u);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 76) = ausdk::AUElement::GetParameter(v46, 0x18u);
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 80) = ausdk::AUElement::GetParameter(v48, 0x1Bu);
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 84) = ausdk::AUElement::GetParameter(v50, 0x1Cu) != 0.0;
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_77;
  }

  v54 = ausdk::AUElement::GetParameter(v52, 0x1Du);
  v55 = *(this + 85);
  *(v55 + 88) = v54;
  *(v55 + 92) = 1;
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 96) = ausdk::AUElement::GetParameter(v56, 0x1Fu);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 100) = ausdk::AUElement::GetParameter(v58, 0x20u);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 104) = ausdk::AUElement::GetParameter(v60, 0x27u);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 108) = ausdk::AUElement::GetParameter(v62, 0x26u);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_77;
  }

  v66 = ausdk::AUElement::GetParameter(v64, 0x28u);
  v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_77;
  }

  v69 = ausdk::AUElement::GetParameter(v67, 0x29u);
  if (v66 <= 5)
  {
    v70 = 5;
  }

  else
  {
    v70 = v66;
  }

  v71 = (ceilf(v11 * v70) * v10);
  v72 = *(this + 85);
  v73 = (ceilf(v11 * v69) * v10);
  if (v71 >= v73)
  {
    v73 = v9 + v71;
  }

  v72[28] = v71;
  v72[29] = v73;
  v74 = *v72;
  if (v73 >= *v72)
  {
    v72[28] = 0;
    v72[29] = v74;
    v72[26] = 0;
  }

  v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_77;
  }

  *(*(this + 85) + 124) = ausdk::AUElement::GetParameter(v75, 0x2Au);
  v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_77;
  }

  v79 = ausdk::AUElement::GetParameter(v77, 0x2Bu);
  if (v79 >= 3)
  {
    v79 = 3;
  }

  *(*(this + 85) + 128) = v79;
  v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v81 & 1) == 0)
  {
LABEL_77:
    abort();
  }

  v82 = ausdk::AUElement::GetParameter(v80, 0x2Cu);
  v83 = *(this + 85);
  if (*(this + 166) < v82)
  {
    v82 = *(this + 166);
  }

  *(v83 + 132) = v82;
  v84 = *(v83 + 124);
  if (v84 != 3)
  {
    if (v84 == 2)
    {
      *(v83 + 120) = v82;
      *(v83 + 128) = 1;
    }

    else
    {
      if (v84 == 1)
      {
        *(v83 + 120) = *(v83 + 128);
        *(v83 + 132) = 1;
LABEL_53:
        v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v86)
        {
          *(*(this + 85) + 136) = ausdk::AUElement::GetParameter(v85, 0x38u);
          v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v88)
          {
            *(*(this + 85) + 140) = ausdk::AUElement::GetParameter(v87, 0x39u) != 0.0;
            v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v90)
            {
              *(*(this + 85) + 141) = ausdk::AUElement::GetParameter(v89, 0x3Au) != 0.0;
              v91 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v92)
              {
                *(*(this + 85) + 142) = ausdk::AUElement::GetParameter(v91, 0x3Bu) != 0.0;
                v93 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v94)
                {
                  *(*(this + 85) + 144) = ausdk::AUElement::GetParameter(v93, 0x3Cu);
                  v95 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v96)
                  {
                    *(*(this + 85) + 148) = ausdk::AUElement::GetParameter(v95, 0x3Du);
                    v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v98)
                    {
                      *(*(this + 85) + 152) = ausdk::AUElement::GetParameter(v97, 0x3Eu);
                      v99 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v100)
                      {
                        *(*(this + 85) + 156) = ausdk::AUElement::GetParameter(v99, 0x3Fu);
                        v101 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v102)
                        {
                          v103 = ausdk::AUElement::GetParameter(v101, 0x40u) != 0.0;
                          v104 = *(this + 85);
                          *(v104 + 168) = v103;
                          v105 = *(v104 + 120);
                          v106 = malloc_type_malloc(4 * v105, 0x55661BDuLL);
                          v107 = v106;
                          if (v105 && !v106)
                          {
                            goto LABEL_79;
                          }

                          bzero(v106, 4 * v105);
                          v8 = *(this + 85);
                          *(v8 + 160) = v107;
                          if ((*(v8 + 124) | 2) == 3)
                          {
                            if (*(v8 + 128) >= 2)
                            {
                              v108 = 1;
                              do
                              {
                                v107[v108++] = 1;
                              }

                              while (v108 < *(v8 + 128));
                            }
                          }

                          else if (*(v8 + 168) == 1)
                          {
                            *(v8 + 168) = 0;
                          }

                          goto LABEL_71;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_77;
      }

      *(v83 + 120) = 1;
      *(v83 + 128) = 0x100000001;
    }

    *(v83 + 168) = 0;
    *(v83 + 142) = 0;
    goto LABEL_53;
  }

  *(v83 + 120) = v82 + *(v83 + 128) - 1;
  goto LABEL_53;
}

uint64_t AUEchoCancelerV5::SetParameter(AUEchoCancelerV5 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {
LABEL_2:

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  if (a2 > 0x29 || ((1 << a2) & 0x30000000001) == 0)
  {
    a3 = 0;
    goto LABEL_2;
  }

  if (*(this + 17) == 1)
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

uint64_t AUEchoCancelerV5::SetProperty(AUEchoCancelerV5 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3801)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 688) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (a2 != 21)
  {
    return 4294956417;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  v8 = *a5;
  v9 = *a5 != 0;
  if (v9 != (*(*this + 576))(this))
  {
    (*(*this + 584))(this, v8 != 0);
  }

  return 0;
}

uint64_t AUEchoCancelerV5::GetProperty(AUEchoCancelerV5 *this, int a2, int a3, unsigned int a4, CFArrayRef *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3799)
  {
    if (a2 != 3800)
    {
      if (a2 == 3900)
      {
        v12 = *(this + 72);
        v13 = 16;
        if (*(*(v12 + 48) + 592) > 0)
        {
          v13 = 40;
        }

        memcpy(*(this + 73), *(*(v12 + v13) + 48), 4 * *(*(v12 + v13) + 88));
        v14 = *(this + 73);
        v15 = *(this + 84);
        goto LABEL_21;
      }

      if (a2 != 103800)
      {
        return result;
      }
    }

    v9 = *(this + 72);
    if (*(this + 688))
    {
      v10 = 16;
    }

    else
    {
      v10 = 16;
      if (*(*(v9 + 48) + 592) > 0)
      {
        v10 = 40;
      }
    }

    memcpy(*(this + 73), *(*(v9 + v10) + 48), 4 * *(*(v9 + v10) + 88));
    if (a2 == 103800)
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(*(this + 73), (*(this + 73) + 4 * (*(*(this + 85) + 120) * **(this + 85))), &__p);
      *a5 = applesauce::CF::details::make_CFArrayRef<float>(&__p);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      return 0;
    }

    v14 = *(this + 73);
    v15 = **(this + 85) * *(*(this + 85) + 120);
LABEL_21:
    memcpy(a5, v14, 4 * v15);
    return 0;
  }

  if (a2 == 21)
  {
    v11 = (*(*this + 576))(this);
    result = 0;
  }

  else
  {
    if (a2 != 3700)
    {
      return result;
    }

    result = 0;
    v11 = *(this + 376);
  }

  *a5 = v11;
  return result;
}

void sub_1DDEECC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUEchoCancelerV5::GetPropertyInfo(AUEchoCancelerV5 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3800)
  {
    if (a2 != 21)
    {
      if (a2 != 3700)
      {
        if (a2 != 3800)
        {
          return result;
        }

        *a6 = 0;
        v8 = **(this + 85) * *(*(this + 85) + 120);
        goto LABEL_16;
      }

      *a6 = 0;
      goto LABEL_14;
    }

LABEL_12:
    *a6 = 1;
LABEL_14:
    v9 = 4;
    goto LABEL_17;
  }

  if (a2 == 3801)
  {
    goto LABEL_12;
  }

  if (a2 == 3900)
  {
    *a6 = 0;
    v8 = *(this + 84);
LABEL_16:
    v9 = 4 * v8;
    goto LABEL_17;
  }

  if (a2 != 103800)
  {
    return result;
  }

  *a6 = 0;
  v9 = 8;
LABEL_17:
  result = 0;
  *a5 = v9;
  return result;
}

uint64_t AUEchoCancelerV5::Reset(AUEchoCancelerV5 *this)
{
  v107 = *MEMORY[0x1E69E9840];
  if (*(this + 17) == 1)
  {
    if (getECV5Log::onceToken != -1)
    {
      dispatch_once(&getECV5Log::onceToken, &__block_literal_global_19647);
    }

    v2 = getECV5Log::gLog;
    if (os_log_type_enabled(getECV5Log::gLog, OS_LOG_TYPE_INFO))
    {
      v3 = *(this + 58);
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%@ was reset after initialize", buf, 0xCu);
    }

    vDSP_vclr(*(this + 82), 1, (*(*(this + 85) + 120) * *(this + 84)));
    v4 = *(this + 73);
    v5 = *(this + 74) - v4;
    if (v5 >= 1)
    {
      bzero(v4, v5);
    }

    v6 = *(this + 75);
    v7 = *(this + 76) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v8 = *(this + 77);
    v9 = *(this + 78) - v8;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }

    v10 = *(this + 79);
    v11 = *(this + 80) - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    *(this + 134) = *(this + 133);
    *(this + 34) = 0u;
    *(this + 70) = vdup_n_s32(0xC2C80000);
    *(this + 142) = -1027080192;
    v12 = *(this + 72);
    if (v12)
    {
      v13 = *(this + 135);
      v14 = *(this + 85);
      v15 = *v12;
      v16 = v12[1];
      v17 = v12[7];
      v105 = v12[6];
      *buf = v15;
      lmsfilt_v5::resetLmsFilter(buf, v12[11]);
      lmsfilt_v5::resetLmsFilter(buf, v12[12]);
      v24 = *v12;
      if ((*v12)[26] >= 1)
      {
        lmsfilt_v5::resetLmsFilter(buf, v12[13]);
        lmsfilt_v5::resetLmsFilter(buf, v12[14]);
        v24 = *v12;
      }

      learnrate_v5::initStatistics_new(v24, &v105, v13, *(v14 + 20), *(v14 + 24), *(v14 + 28), *(v14 + 32), *(v14 + 36), *(v14 + 40), *(v14 + 44), v18, v19, v20, v21, v22, v23, *(v14 + 48), HIDWORD(*(v14 + 48)), COERCE_FLOAT(*(v14 + 56)), COERCE_FLOAT(HIDWORD(*(v14 + 48))), *(v14 + 72), HIDWORD(*(v14 + 72)), *(v14 + 64), HIDWORD(*(v14 + 64)), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 100));
      v25 = v15[32];
      v26 = v15[9] * v25;
      v27 = v15[34];
      v28 = v15[11];
      v29 = v15[37];
      __N = v15[38];
      if (*v16)
      {
        vDSP_vclr(*v16, 1, v26);
      }

      v30 = *(v16 + 1);
      if (v30)
      {
        vDSP_vclr(v30, 1, v26);
      }

      v31 = *(v16 + 4);
      if (v31)
      {
        vDSP_vclr(v31, 1, 2 * v27);
      }

      if (!v15[25])
      {
        v32 = v15[33];
        v33 = **(v16 + 7);
        if (v33)
        {
          vDSP_vclr(v33, 1, v15[33]);
        }

        v34 = **(v16 + 8);
        if (v34)
        {
          vDSP_vclr(v34, 1, v32);
        }
      }

      *(v16 + 9) = 0;
      v16[20] = 0;
      bzero(*(v16 + 11), 4 * v28);
      v35 = *(v16 + 2);
      if (v35)
      {
        vDSP_vclr(v35, 1, v29);
      }

      v36 = *(v16 + 3);
      if (v36)
      {
        vDSP_vclr(v36, 1, v29);
      }

      __A = 9.0e-10;
      v37 = *(v16 + 12);
      if (v37)
      {
        vDSP_vfill(&__A, v37, 1, __N);
      }

      v38 = *(v16 + 13);
      if (v38)
      {
        vDSP_vclr(v38, 1, v28 * v25);
      }

      memset(*(v16 + 15), 1, v25);
      memset(*(v16 + 16), 1, v25);
      bzero(*(v16 + 17), v25);
      bzero(*(v16 + 18), 4 * v25);
      v39 = v15[4];
      if (*v17)
      {
        vDSP_vclr(*v17, 1, v15[4]);
      }

      v40 = *(v17 + 1);
      if (v40)
      {
        vDSP_vclr(v40, 1, v39);
      }

      v41 = *(v17 + 2);
      if (v41)
      {
        vDSP_vclr(v41, 1, 2 * v15[34]);
      }

      v42 = *(v17 + 4);
      v43 = 2 * v39;
      if (v42)
      {
        vDSP_vclr(v42, 1, 2 * v39);
      }

      v44 = *(v17 + 6);
      if (v44)
      {
        vDSP_vclr(v44, 1, v43);
      }

      v45 = *(v17 + 8);
      if (v45)
      {
        vDSP_vclr(v45, 1, v39);
        v46 = *(v17 + 8);
        if (v46)
        {
          vDSP_vclr(v46, 1, v39);
          v47 = *(v17 + 8);
          if (v47)
          {
            vDSP_vclr(v47, 1, v39);
          }
        }
      }

      v48 = *(v17 + 9);
      if (v48)
      {
        vDSP_vclr(v48, 1, v39);
      }

      v49 = *(v17 + 10);
      if (v49)
      {
        vDSP_vclr(v49, 1, v39);
      }

      v50 = *(v17 + 11);
      if (v50)
      {
        vDSP_vclr(v50, 1, v39);
      }

      v51 = *(v17 + 12);
      if (v51)
      {
        vDSP_vclr(v51, 1, v39);
      }

      v52 = *(v17 + 13);
      if (v52)
      {
        vDSP_vclr(v52, 1, v39);
      }

      v53 = *(v17 + 14);
      if (v53)
      {
        vDSP_vclr(v53, 1, v39);
      }

      v54 = *(v17 + 15);
      if (v54)
      {
        vDSP_vclr(v54, 1, v39);
      }

      v55 = *(v17 + 16);
      if (v55)
      {
        vDSP_vclr(v55, 1, v39);
      }

      v56 = *(v17 + 17);
      if (v56)
      {
        vDSP_vclr(v56, 1, v39);
      }

      v57 = *(v17 + 21);
      if (v57)
      {
        vDSP_vclr(v57, 1, v39);
      }

      v58 = *(v17 + 18);
      if (v58)
      {
        vDSP_vclr(v58, 1, v43);
      }

      v59 = v12[7];
      v60 = *(v59 + 18);
      *(v59 + 19) = v60;
      *(v59 + 20) = v60 + 4 * v39;
      v61 = v12[8];
      if (*v61)
      {
        vDSP_vclr(*v61, 1, *(v14 + 120));
        v61 = v12[8];
      }

      vDSP_vclr(v61 + 2, 1, 1uLL);
      vDSP_vclr(v12[8] + 3, 1, 1uLL);
      vDSP_vclr(v12[8] + 4, 1, 1uLL);
      vDSP_vclr(v12[8] + 5, 1, 1uLL);
      vDSP_vclr(v12[8] + 6, 1, 1uLL);
      vDSP_vclr(v12[8] + 7, 1, 1uLL);
      v62 = (*v12)[34];
      v63 = *(v17 + 37);
      if (v63)
      {
        vDSP_vclr(v63, 1, v39);
      }

      v64 = *(v17 + 38);
      if (v64)
      {
        vDSP_vclr(v64, 1, v39);
      }

      v65 = *(v17 + 39);
      if (v65)
      {
        vDSP_vclr(v65, 1, v39);
      }

      v66 = *(v17 + 40);
      if (v66)
      {
        vDSP_vclr(v66, 1, v39);
      }

      v67 = *(v17 + 41);
      if (v67)
      {
        vDSP_vclr(v67, 1, 2 * v62);
      }

      v68 = *(v17 + 43);
      if (v68)
      {
        vDSP_vclr(v68, 1, v43);
      }

      v69 = *(v17 + 45);
      if (v69)
      {
        vDSP_vclr(v69, 1, v43);
      }

      v70 = *v12;
      if (!(*v12)[25])
      {
        v71 = v70[20];
        v72 = v70[33];
        v73 = *(v17 + 22);
        if (v73)
        {
          vDSP_vclr(v73, 1, v70[20]);
        }

        v74 = *(v17 + 23);
        if (v74)
        {
          vDSP_vclr(v74, 1, v71);
        }

        v75 = *(v17 + 24);
        if (v75)
        {
          vDSP_vclr(v75, 1, v71);
        }

        v76 = *(v17 + 29);
        if (v76)
        {
          vDSP_vclr(v76, 1, v71);
        }

        v77 = *(v17 + 30);
        if (v77)
        {
          vDSP_vclr(v77, 1, v71);
        }

        v78 = *(v17 + 31);
        if (v78)
        {
          vDSP_vclr(v78, 1, v71);
        }

        v79 = *(v17 + 32);
        if (v79)
        {
          vDSP_vclr(v79, 1, v71);
        }

        v80 = *(v17 + 34);
        if (v80)
        {
          vDSP_vclr(v80, 1, v71);
        }

        v81 = v72 * v71;
        v82 = **(v17 + 33);
        if (v82)
        {
          vDSP_vclr(v82, 1, v81);
        }

        v83 = 2 * v71;
        v84 = **(v17 + 35);
        if (v84)
        {
          vDSP_vclr(v84, 1, 2 * v81);
        }

        v85 = *(v17 + 25);
        if (v85)
        {
          vDSP_vclr(v85, 1, v83);
        }

        v86 = *(v17 + 27);
        if (v86)
        {
          vDSP_vclr(v86, 1, v83);
        }
      }

      v87 = v12[6];
      v88 = v87[107];
      v89 = v87[106];
      v90 = *(v17 + 51);
      if (v90)
      {
        vDSP_vclr(v90, 1, v87[107]);
      }

      v91 = *(v17 + 53);
      if (v91)
      {
        vDSP_vclr(v91, 1, v88);
      }

      v92 = *(v17 + 55);
      if (v92)
      {
        vDSP_vclr(v92, 1, v88);
      }

      v93 = *(v17 + 57);
      if (v93)
      {
        vDSP_vclr(v93, 1, v89);
      }

      v94 = *(v17 + 58);
      if (v94)
      {
        vDSP_vclr(v94, 1, v89);
      }

      v95 = *(v17 + 59);
      if (v95)
      {
        vDSP_vclr(v95, 1, v89);
      }

      if ((*v12)[26] >= 1)
      {
        v96 = *(v17 + 47);
        if (v96)
        {
          vDSP_vclr(v96, 1, v39);
        }

        v97 = *(v17 + 48);
        if (v97)
        {
          vDSP_vclr(v97, 1, v39);
        }

        v98 = *(v17 + 49);
        if (v98)
        {
          vDSP_vclr(v98, 1, v39);
        }

        v99 = *(v17 + 50);
        if (v99)
        {
          vDSP_vclr(v99, 1, v39);
        }
      }
    }
  }

  else
  {
    if (getECV5Log::onceToken != -1)
    {
      dispatch_once(&getECV5Log::onceToken, &__block_literal_global_19647);
    }

    v100 = getECV5Log::gLog;
    if (os_log_type_enabled(getECV5Log::gLog, OS_LOG_TYPE_INFO))
    {
      v101 = *(this + 58);
      *buf = 138412290;
      *&buf[4] = v101;
      _os_log_impl(&dword_1DDB85000, v100, OS_LOG_TYPE_INFO, "%@ was reset without initialize", buf, 0xCu);
    }
  }

  return 0;
}

os_log_t __getECV5Log_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "ecv5");
  getECV5Log::gLog = result;
  return result;
}

void AUEchoCancelerV5::Cleanup(AUEchoCancelerV5 *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      if (!*v3 || (free(*v3), *v3 = 0, v2 = *(this + 72), (v3 = *(v2 + 64)) != 0))
      {
        free(v3);
        *(v2 + 64) = 0;
        v2 = *(this + 72);
      }
    }

    v4 = *(v2 + 56);
    if (v4 && *v4)
    {
      free(*v4);
      *v4 = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v5 = *(v4 + 8);
    if (v5)
    {
      free(v5);
      *(v4 + 8) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v6 = *(v4 + 16);
    if (v6)
    {
      free(v6);
      *(v4 + 16) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v7 = *(v4 + 32);
    if (v7)
    {
      free(v7);
      *(v4 + 32) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v8 = *(v4 + 48);
    if (v8)
    {
      free(v8);
      *(v4 + 48) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v9 = *(v4 + 64);
    if (v9)
    {
      free(v9);
      *(v4 + 64) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v10 = *(v4 + 72);
    if (v10)
    {
      free(v10);
      *(v4 + 72) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v11 = *(v4 + 80);
    if (v11)
    {
      free(v11);
      *(v4 + 80) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v12 = *(v4 + 88);
    if (v12)
    {
      free(v12);
      *(v4 + 88) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v13 = *(v4 + 96);
    if (v13)
    {
      free(v13);
      *(v4 + 96) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v14 = *(v4 + 104);
    if (v14)
    {
      free(v14);
      *(v4 + 104) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v15 = *(v4 + 112);
    if (v15)
    {
      free(v15);
      *(v4 + 112) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v16 = *(v4 + 120);
    if (v16)
    {
      free(v16);
      *(v4 + 120) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v17 = *(v4 + 128);
    if (v17)
    {
      free(v17);
      *(v4 + 128) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v18 = *(v4 + 136);
    if (v18)
    {
      free(v18);
      *(v4 + 136) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v19 = *(v4 + 168);
    if (v19)
    {
      free(v19);
      *(v4 + 168) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v20 = *(v4 + 144);
    if (v20)
    {
      free(v20);
      *(v4 + 144) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v21 = *(v4 + 296);
    if (v21)
    {
      free(v21);
      *(v4 + 296) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v22 = *(v4 + 304);
    if (v22)
    {
      free(v22);
      *(v4 + 304) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v23 = *(v4 + 312);
    if (v23)
    {
      free(v23);
      *(v4 + 312) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v24 = *(v4 + 320);
    if (v24)
    {
      free(v24);
      *(v4 + 320) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v25 = *(v4 + 328);
    if (v25)
    {
      free(v25);
      *(v4 + 328) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v26 = *(v4 + 344);
    if (v26)
    {
      free(v26);
      *(v4 + 344) = 0;
      v2 = *(this + 72);
      v4 = *(v2 + 56);
    }

    v27 = *(v4 + 360);
    if (v27)
    {
      free(v27);
      *(v4 + 360) = 0;
      v2 = *(this + 72);
    }

    if (!*(*v2 + 100))
    {
      v28 = *(v2 + 56);
      v29 = v28[22];
      if (v29)
      {
        free(v29);
        v28[22] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v30 = v28[23];
      if (v30)
      {
        free(v30);
        v28[23] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v31 = v28[24];
      if (v31)
      {
        free(v31);
        v28[24] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v32 = v28[25];
      if (v32)
      {
        free(v32);
        v28[25] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v33 = v28[27];
      if (v33)
      {
        free(v33);
        v28[27] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v34 = v28[29];
      if (v34)
      {
        free(v34);
        v28[29] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v35 = v28[30];
      if (v35)
      {
        free(v35);
        v28[30] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v36 = v28[31];
      if (v36)
      {
        free(v36);
        v28[31] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v37 = v28[33];
      if (v37)
      {
        if (!*v37 || (free(*v37), *v37 = 0, v2 = *(this + 72), v28 = *(v2 + 56), (v37 = v28[33]) != 0))
        {
          free(v37);
          v28[33] = 0;
          v2 = *(this + 72);
          v28 = *(v2 + 56);
        }
      }

      v38 = v28[34];
      if (v38)
      {
        free(v38);
        v28[34] = 0;
        v2 = *(this + 72);
        v28 = *(v2 + 56);
      }

      v39 = v28[35];
      if (v39)
      {
        if (!*v39 || (free(*v39), *v39 = 0, v2 = *(this + 72), v28 = *(v2 + 56), (v39 = v28[35]) != 0))
        {
          free(v39);
          v28[35] = 0;
          v2 = *(this + 72);
          v28 = *(v2 + 56);
        }
      }

      v40 = v28[36];
      if (v40)
      {
        free(v40);
        v28[36] = 0;
        v2 = *(this + 72);
      }

      dft_v3::dftRemove((v2 + 72));
      v2 = *(this + 72);
    }

    v41 = *(v2 + 56);
    v42 = v41[51];
    if (v42)
    {
      free(v42);
      v41[51] = 0;
      v2 = *(this + 72);
      v41 = *(v2 + 56);
    }

    v43 = v41[53];
    if (v43)
    {
      free(v43);
      v41[53] = 0;
      v2 = *(this + 72);
      v41 = *(v2 + 56);
    }

    v44 = v41[55];
    if (v44)
    {
      free(v44);
      v41[55] = 0;
      v2 = *(this + 72);
      v41 = *(v2 + 56);
    }

    v45 = v41[57];
    if (v45)
    {
      free(v45);
      v41[57] = 0;
      v2 = *(this + 72);
      v41 = *(v2 + 56);
    }

    v46 = v41[58];
    if (v46)
    {
      free(v46);
      v41[58] = 0;
      v2 = *(this + 72);
      v41 = *(v2 + 56);
    }

    v47 = v41[59];
    if (v47)
    {
      free(v47);
      v41[59] = 0;
      v2 = *(this + 72);
    }

    dft_v3::dftRemove((v2 + 80));
    lmsfilt_v5::removeLmsFilter((*(this + 72) + 88));
    lmsfilt_v5::removeLmsFilter((*(this + 72) + 96));
    v48 = *(this + 72);
    if (*(*v48 + 104) >= 1)
    {
      lmsfilt_v5::removeLmsFilter(v48 + 13);
      lmsfilt_v5::removeLmsFilter((*(this + 72) + 112));
      v48 = *(this + 72);
      v49 = v48[7];
      v50 = v49[47];
      if (v50)
      {
        free(v50);
        v49[47] = 0;
        v48 = *(this + 72);
        v49 = v48[7];
      }

      v51 = v49[49];
      if (v51)
      {
        free(v51);
        v49[49] = 0;
        v48 = *(this + 72);
        v49 = v48[7];
      }

      v52 = v49[48];
      if (v52)
      {
        free(v52);
        v49[48] = 0;
        v48 = *(this + 72);
        v49 = v48[7];
      }

      v53 = v49[50];
      if (v53)
      {
        free(v53);
        v49[50] = 0;
        v48 = *(this + 72);
      }
    }

    v54 = v48[6];
    if (v54)
    {
      v55 = v54[39];
      if (v55)
      {
        free(v55);
        v54[39] = 0;
        v54 = v48[6];
      }

      v56 = v54[41];
      if (v56)
      {
        free(v56);
        v54[41] = 0;
        v54 = v48[6];
      }

      v57 = v54[1];
      if (v57)
      {
        free(v57);
        v54[1] = 0;
        v54 = v48[6];
      }

      v58 = v54[6];
      if (v58)
      {
        free(v58);
        v54[6] = 0;
        v54 = v48[6];
      }

      v59 = v54[7];
      if (v59)
      {
        free(v59);
        v54[7] = 0;
        v54 = v48[6];
      }

      v60 = v54[8];
      if (v60)
      {
        free(v60);
        v54[8] = 0;
        v54 = v48[6];
      }

      v61 = v54[9];
      if (v61)
      {
        free(v61);
        v54[9] = 0;
        v54 = v48[6];
      }

      v62 = v54[10];
      if (v62)
      {
        free(v62);
        v54[10] = 0;
        v54 = v48[6];
      }

      v63 = v54[15];
      if (v63)
      {
        free(v63);
        v54[15] = 0;
        v54 = v48[6];
      }

      v64 = v54[13];
      if (v64)
      {
        free(v64);
        v54[13] = 0;
        v54 = v48[6];
      }

      v65 = v54[79];
      if (v65)
      {
        free(v65);
        v54[79] = 0;
        v54 = v48[6];
      }

      v66 = v54[14];
      if (v66)
      {
        free(v66);
        v54[14] = 0;
        v54 = v48[6];
      }

      v67 = v54[12];
      if (v67)
      {
        free(v67);
        v54[12] = 0;
        v54 = v48[6];
      }

      v68 = v54[20];
      if (v68)
      {
        free(v68);
        v54[20] = 0;
        v54 = v48[6];
      }

      v69 = v54[21];
      if (v69)
      {
        free(v69);
        v54[21] = 0;
        v54 = v48[6];
      }

      v70 = v54[22];
      if (v70)
      {
        free(v70);
        v54[22] = 0;
        v54 = v48[6];
      }

      v71 = v54[23];
      if (v71)
      {
        free(v71);
        v54[23] = 0;
        v54 = v48[6];
      }

      v72 = v54[24];
      if (v72)
      {
        free(v72);
        v54[24] = 0;
        v54 = v48[6];
      }

      v73 = v54[25];
      if (v73)
      {
        free(v73);
        v54[25] = 0;
        v54 = v48[6];
      }

      v74 = v54[26];
      if (v74)
      {
        free(v74);
        v54[26] = 0;
        v54 = v48[6];
      }

      v75 = v54[37];
      if (v75)
      {
        free(v75);
        v54[37] = 0;
        v54 = v48[6];
      }

      v76 = v54[38];
      if (v76)
      {
        free(v76);
        v54[38] = 0;
        v54 = v48[6];
      }

      v77 = v54[56];
      if (v77)
      {
        free(v77);
        v54[56] = 0;
        v54 = v48[6];
      }

      v78 = v54[57];
      if (v78)
      {
        free(v78);
        v54[57] = 0;
        v54 = v48[6];
      }

      v79 = v54[58];
      if (v79)
      {
        free(v79);
        v54[58] = 0;
        v54 = v48[6];
      }

      v80 = v54[59];
      if (v80)
      {
        free(v80);
        v54[59] = 0;
        v54 = v48[6];
      }

      v81 = v54[62];
      if (v81)
      {
        free(v81);
        v54[62] = 0;
        v54 = v48[6];
      }

      v82 = v54[63];
      if (v82)
      {
        free(v82);
        v54[63] = 0;
        v54 = v48[6];
      }

      v83 = v54[60];
      if (v83)
      {
        free(v83);
        v54[60] = 0;
        v54 = v48[6];
      }

      v84 = v54[61];
      if (!v84 || (free(v84), v54[61] = 0, (v54 = v48[6]) != 0))
      {
        free(v54);
        v48[6] = 0;
      }
    }

    v85 = *(this + 72);
    v86 = v85[1];
    if (v86)
    {
      v87 = *v85;
      if (*v86)
      {
        free(*v86);
        *v86 = 0;
        v86 = v85[1];
      }

      v88 = *(v86 + 8);
      if (v88)
      {
        free(v88);
        *(v86 + 8) = 0;
        v86 = v85[1];
      }

      v89 = *(v86 + 32);
      if (v89)
      {
        free(v89);
        *(v86 + 32) = 0;
        v86 = v85[1];
      }

      if (!*(v87 + 100))
      {
        v90 = *(v86 + 56);
        if (v90 && *v90)
        {
          free(*v90);
          *v90 = 0;
          v86 = v85[1];
        }

        v91 = *(v86 + 64);
        if (v91 && *v91)
        {
          free(*v91);
          *v91 = 0;
          v86 = v85[1];
        }

        v92 = *(v86 + 56);
        if (v92)
        {
          free(v92);
          *(v86 + 56) = 0;
          v86 = v85[1];
        }

        v93 = *(v86 + 64);
        if (v93)
        {
          free(v93);
          *(v86 + 64) = 0;
          v86 = v85[1];
        }
      }

      v94 = *(v86 + 88);
      if (v94)
      {
        free(v94);
        *(v86 + 88) = 0;
        v86 = v85[1];
      }

      v95 = *(v86 + 16);
      if (v95)
      {
        free(v95);
        *(v86 + 16) = 0;
        v86 = v85[1];
      }

      v96 = *(v86 + 24);
      if (v96)
      {
        free(v96);
        *(v86 + 24) = 0;
        v86 = v85[1];
      }

      v97 = *(v86 + 96);
      if (v97)
      {
        free(v97);
        *(v86 + 96) = 0;
        v86 = v85[1];
      }

      v98 = *(v86 + 104);
      if (v98)
      {
        free(v98);
        *(v86 + 104) = 0;
        v86 = v85[1];
      }

      v99 = *(v86 + 120);
      if (v99)
      {
        free(v99);
        *(v86 + 120) = 0;
        v86 = v85[1];
      }

      v100 = *(v86 + 128);
      if (v100)
      {
        free(v100);
        *(v86 + 128) = 0;
        v86 = v85[1];
      }

      v101 = *(v86 + 136);
      if (v101)
      {
        free(v101);
        *(v86 + 136) = 0;
        v86 = v85[1];
      }

      v102 = *(v86 + 144);
      if (v102)
      {
        free(v102);
        *(v86 + 144) = 0;
        v86 = v85[1];
      }

      v103 = *(v86 + 160);
      if (!v103 || (free(v103), *(v86 + 160) = 0, (v86 = v85[1]) != 0))
      {
        free(v86);
        v85[1] = 0;
      }
    }

    dft_v3::dftRemove(*(this + 72));
    v104 = *(this + 72);
    v105 = v104[7];
    if (!v105 || (free(v105), v104[7] = 0, (v104 = *(this + 72)) != 0))
    {
      free(v104);
    }

    *(this + 72) = 0;
  }

  v106 = *(this + 82);
  if (v106)
  {
    free(v106);
    *(this + 82) = 0;
  }

  v107 = *(this + 85);
  if (v107)
  {
    v108 = v107[20];
    if (!v108 || (free(v108), v107[20] = 0, (v107 = *(this + 85)) != 0))
    {
      free(v107);
      *(this + 85) = 0;
    }
  }
}

uint64_t AUEchoCancelerV5::Initialize(int32x2_t *this)
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

      v8 = Element;
      v9 = ausdk::AUScope::GetElement(&this[10], v6);
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

LABEL_29:
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
        goto LABEL_29;
      }

      v12 = v11;
      v13 = ausdk::AUScope::GetElement(&this[16], v10);
      if (!v13)
      {
        goto LABEL_29;
      }

      if (*(v12 + 80) != *(v13 + 80))
      {
        return 4294956428;
      }
    }

    while (v5 != ++v10);
  }

  v14 = ausdk::AUScope::GetElement(&this[10], 0);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *(v14 + 80);
  v16 = ausdk::AUScope::GetElement(&this[16], 0);
  if (!v16)
  {
    goto LABEL_29;
  }

  if (v15 != *(v16 + 80))
  {
    return 4294956428;
  }

  this[67].i32[0] = this[66].i32[1];
  *this[68].i8 = 0u;
  this[70] = vdup_n_s32(0xC2C80000);
  this[71].i32[0] = -1027080192;
  v18 = ausdk::AUScope::GetElement(&this[10], 1u);
  if (!v18)
  {
    goto LABEL_29;
  }

  this[83].i32[0] = *(v18 + 108);
  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v20 & 1) == 0 || (*&this[83].i32[1] = ausdk::AUElement::GetParameter(v19, 0x2Eu), v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v22 & 1) == 0))
  {
    abort();
  }

  this[84].i8[0] = ausdk::AUElement::GetParameter(v21, 0x41u) != 0.0;
  if (this[42].i32[0])
  {
    AUEchoCancelerV5::InitializeEC(this);
  }

  return 4294956421;
}

void AUEchoCancelerV5::~AUEchoCancelerV5(AUEchoCancelerV5 *this)
{
  AUEchoCancelerV5::~AUEchoCancelerV5(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592D1C0;
  AUEchoCancelerV5::Cleanup(this);
  v2 = *(this + 79);
  if (v2)
  {
    v3 = *(this + 80);
    if (v3 != v2)
    {
      *(this + 80) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *(this + 79) = 0;
    *(this + 80) = 0;
  }

  v4 = *(this + 77);
  if (v4)
  {
    v5 = *(this + 78);
    if (v5 != v4)
    {
      *(this + 78) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *(this + 77) = 0;
    *(this + 78) = 0;
  }

  v6 = *(this + 75);
  if (v6)
  {
    v7 = *(this + 76);
    if (v7 != v6)
    {
      *(this + 76) = &v7[(v6 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v6);
    *(this + 75) = 0;
    *(this + 76) = 0;
  }

  v8 = *(this + 73);
  if (v8)
  {
    v9 = *(this + 74);
    if (v9 != v8)
    {
      *(this + 74) = &v9[(v8 - v9 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v8);
    *(this + 73) = 0;
    *(this + 74) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

float BeamformerTD::CalculateEnergyInFullBand(uint64_t a1, const float **a2)
{
  __C = 0.0;
  vDSP_svesq(*a2, 1, &__C, *(a1 + 32));
  return log10((__C / *(a1 + 32)) + 1.0e-10) * 10.0;
}

_DWORD *BeamformerTD::AllocateBlockSizeDependentVectors(BeamformerTD *this, int16x4_t a2)
{
  if (*(this + 3))
  {
    v3 = 0;
    v4 = (this + 5160);
    do
    {
      v5 = *(this + 8);
      v22 = 0;
      std::vector<float>::assign(v4, v5, &v22, a2);
      ++v3;
      v6 = *(this + 3);
      v4 += 3;
    }

    while (v3 < v6);
    if (v6)
    {
      v7 = 0;
      v8 = (this + 12072);
      do
      {
        v9 = *(this + 8);
        v22 = 0;
        std::vector<float>::assign(v8, v9, &v22, a2);
        ++v7;
        v8 += 3;
      }

      while (v7 < *(this + 3));
    }
  }

  v10 = *(this + 8);
  v22 = 0;
  std::vector<float>::assign(this + 2373, v10, &v22, a2);
  v11 = *(this + 8);
  v22 = 0;
  std::vector<float>::assign(this + 2376, v11, &v22, v12);
  v13 = *(this + 8);
  v22 = 0;
  std::vector<float>::assign(this + 2397, v13, &v22, v14);
  v15 = *(this + 8);
  v22 = 0;
  std::vector<float>::assign(this + 2382, v15, &v22, v16);
  v17 = (2 * *(this + 8));
  v22 = 0;
  std::vector<float>::assign(this + 63516, v17, &v22, v18);
  v19 = *(this + 8);
  v22 = 0;
  return std::vector<float>::assign(this + 2385, v19, &v22, v20);
}

void BeamformerTD::SelectBeam(float **this)
{
  v24 = 0.0;
  v22 = 0;
  __I = 0;
  vDSP_vclr(this[2394], 1, this[2395] - this[2394]);
  if (*(this + 3))
  {
    v2 = 0;
    v3 = (this + 645);
    v4 = *(this + 8);
    v5 = (this + 69);
    do
    {
      __C = 0.0;
      v6 = *(this + 11);
      v7 = &this[63516][v4];
      v26.realp = this[63516];
      v26.imagp = v7;
      v8 = *&this[63510][2 * v2];
      if (v8)
      {
        VPTimeFreqConverter::Analyze(v8, *v3, &v26);
        v4 = *(this + 8);
      }

      if (*(this + 10) == v4)
      {
        v6 = *(this + 11) - 1;
      }

      v9 = *(this + 9);
      __A.realp = &v26.realp[v9];
      __A.imagp = &v26.imagp[v9];
      vDSP_zvmags(&__A, 1, this[2385], 1, v6);
      vDSP_sve(this[2385], 1, &__C, v6);
      v10 = *v26.imagp;
      v11 = *(this + 10);
      v4 = *(this + 8);
      if (*(this + 9))
      {
        v12 = __C + (v10 * v10);
        if (v11 != v4)
        {
          v12 = __C;
        }
      }

      else
      {
        v12 = __C - (v10 * v10);
        if (v11 == v4)
        {
          v12 = __C;
        }
      }

      v13 = log10(v12 + 1.0e-10) * 10.0;
      v14 = (*(this + 12) * *&v5[4 * v2]) + (1.0 - *(this + 12)) * v13;
      *&v5[4 * v2] = v14;
      v15 = __exp10f(fmaxf(fminf(v14, 100.0), -100.0) / 10.0);
      v16 = this[2394];
      v16[v2++] = v15;
      v17 = *(this + 3);
      v3 += 3;
    }

    while (v2 < v17);
  }

  else
  {
    v17 = 0;
    v16 = this[2394];
  }

  vDSP_sve(v16, 1, &v22, v17);
  vDSP_vsdiv(this[2394], 1, &v22, this[2394], 1, *(this + 3));
  v18 = *(this + 20);
  v19 = (*(this + 21) - v18 + 1);
  v20 = this + v18;
  if (this[13])
  {
    vDSP_meanv(v20 + 138, 1, &v22 + 1, (*(this + 21) - v18 + 1));
    *(&v22 + 1) = -*(&v22 + 1);
    MEMORY[0x1E12BE8A0](v20 + 138, 1, &v22 + 4, v20 + 138, 1, v19);
  }

  vDSP_maxvi(v20 + 138, 1, &v24, &__I, v19);
  if (v24 <= *(this + 25))
  {
    v21 = *(this + 28);
  }

  else
  {
    v21 = v18 + __I;
  }

  *(this + 27) = v21;
}

uint64_t BeamformerTD::ECMixSwitch(BeamformerTD *this)
{
  v23[1] = *MEMORY[0x1E69E9840];
  result = MEMORY[0x1EEE9AC00]();
  v4 = (v23 - ((v3 + 15) & 0x7FFFFFFF0));
  if (v2)
  {
    v5 = *(result + 108);
    v6 = (result + (v5 << 6) + 372144);
    v7 = 2.2204e-16;
    v8 = v2;
    do
    {
      v9 = *v6++;
      v7 = v7 + v9;
      --v8;
    }

    while (v8);
    v10 = (result + (v5 << 6) + 372144);
    v11 = v4;
    v12 = v2;
    v13 = 1.0 / v7;
    do
    {
      v14 = *v10++;
      *v11++ = v13 * v14;
      --v12;
    }

    while (v12);
    v15 = *(result + 24 * v5 + 365232);
    v16 = (result + 240);
    v17 = 0;
    v18 = 1.0;
    v19 = 0;
    do
    {
      if (*v15 == 1.0)
      {
        v18 = v18 * *(v16 - 1);
      }

      v20 = *v4++;
      v21 = v20;
      v17 = vmla_n_f32(v17, *(v16 - 12), v20);
      v22 = *v16;
      v16 = (v16 + 20);
      v19 = vmla_n_f32(v19, v22, v21);
      ++v15;
      --v2;
    }

    while (v2);
  }

  else
  {
    v17 = 0;
    v18 = 1.0;
    v19 = 0;
  }

  *(result + 228) = v17;
  *(result + 240) = v19;
  *(result + 236) = v18;
  return result;
}

uint64_t BeamformerTD::MakeLSDDBeam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    v12 = *AUBeamItTDLogScope(void)::scope;
    if (!*AUBeamItTDLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "BeamformerTD.cpp";
    v16 = 1024;
    v17 = 576;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamItTD: in BeamformerTD::MakeLSDDBeam. Not sure what to do here. For now just run the same thing as SRP mode.", &v14, 0x12u);
  }

LABEL_9:
  (*(*a1 + 80))(a1, a2, a3, a5, 0);
  return (*(*a1 + 104))(a1, a3, a4, a5, a6);
}

uint64_t BeamformerTD::MakePHATBeam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    v12 = *AUBeamItTDLogScope(void)::scope;
    if (!*AUBeamItTDLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "BeamformerTD.cpp";
    v16 = 1024;
    v17 = 564;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamItTD: in BeamformerTD::MakePHATBeam. Not sure what to do here. For now just run the same thing as SRP mode.", &v14, 0x12u);
  }

LABEL_9:
  (*(*a1 + 80))(a1, a2, a3, a5, 0);
  return (*(*a1 + 104))(a1, a3, a4, a5, a6);
}

void *BeamformerTD::ApplyEQ(uint64_t a1, const void **a2, float **a3, unsigned int a4, int a5)
{
  if (a5 == 1)
  {
    v6 = a1 + 24 * a4;
    v7 = *(v6 + 240816);
    v8 = *a3;
    v9 = *(a1 + 19616);
    v10 = *(a1 + 32);
    v11 = (*(v6 + 358320) + 4 * v9 - 4);
    memcpy(&v7[v9 - 1], *a2, 4 * v10);
    vDSP_conv(v7, 1, v11, -1, v8, 1, v10, v9);

    return memmove(v7, &v7[v10], 4 * (v9 - 1));
  }

  else
  {
    v13 = *a3;
    v14 = *a2;
    v15 = 4 * *(a1 + 32);

    return memcpy(v13, v14, v15);
  }
}

uint64_t BeamformerTD::MakeABeamWithCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  result = (*(*a1 + 80))(a1, a2, a3, a4, a6);
  if (a5 != v8)
  {
    (*(*a1 + 80))(a1, a2, a1 + 19176, a5, a6);
    v13 = *(*a1 + 88);

    return v13(a1, a1 + 19176, a3);
  }

  return result;
}

void BeamformerTD::CrossfadeBeams(uint64_t a1, float **a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = *a3;
  if (v6 - *a2 == *(a3 + 8) - *a3)
  {
    if (v7 == v6)
    {
      return;
    }

    for (i = *a3; *v7 == *i; ++i)
    {
      if (++v7 == v6)
      {
        return;
      }
    }
  }

  __Start = 0.0;
  v10 = *(a1 + 32);
  __Step = 1.0 / v10;
  vDSP_vrampmul(v8, 1, &__Start, &__Step, v8, 1, v10);
  v11 = *(a1 + 32);
  __Start = 1.0;
  __Step = -1.0 / v11;
  vDSP_vrampmuladd(*a2, 1, &__Start, &__Step, *a3, 1, v11);
}

_DWORD *BeamformerTD::MakeABeam(uint64_t a1, unsigned int *a2, void *a3, unsigned int a4, int a5, int16x4_t a6)
{
  v9 = *(a1 + 32);
  v26 = 0;
  result = std::vector<float>::assign(a3, v9, &v26, a6);
  v25 = a2;
  v11 = *a2;
  if (v11)
  {
    v12 = 0;
    v13 = 130224;
    if (!a5)
    {
      v13 = 19632;
    }

    v14 = a1 + 384 * a4;
    v15 = (v14 + v13);
    v16 = (v14 + 247728);
    v17 = 4;
    do
    {
      if (*(*(a1 + 24 * a4 + 365232) + 4 * v12) == 1.0)
      {
        __C = *(a1 + 19056);
        v18 = *(a1 + 32);
        v19 = *(a1 + 19608);
        v20 = (*v16 + 4 * v19 - 4);
        v21 = *v15;
        memcpy(&(*v15)[v19 - 1], *&v25[v17], 4 * v18);
        vDSP_conv(v21, 1, v20, -1, __C, 1, v18, v19);
        memmove(v21, &v21[v18], 4 * (v19 - 1));
        result = MEMORY[0x1E12BE5D0](*a3, 1, *(a1 + 19056), 1, *a3, 1, *(a1 + 32));
        v11 = *v25;
      }

      ++v12;
      v15 += 3;
      v17 += 4;
      v16 += 3;
    }

    while (v12 < v11);
  }

  return result;
}

uint64_t BeamformerTD::SetProfile(BeamformerTD *this, CFDictionaryRef theDict)
{
  v84 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"SampleRate");
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v59 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 158;
            _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve sample rate.\n", buf, 0x12u);
          }
        }
      }
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "Failed to retrieve sample rate from input dictionary.", -1);
  }

  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    if (*(AUBeamItTDLogScope(void)::scope + 8))
    {
      v5 = *AUBeamItTDLogScope(void)::scope;
      if (*AUBeamItTDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerTD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 156;
          *&buf[18] = 1024;
          *&buf[20] = valuePtr;
          _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved sample rate (%iHz).\n", buf, 0x18u);
        }
      }
    }
  }

  LODWORD(v4) = valuePtr;
  *(this + 2450) = v4;
  v79 = 0;
  v6 = CFDictionaryGetValue(theDict, @"nMicsUsed");
  if (!CFNumberGetValue(v6, kCFNumberIntType, &v79))
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v61 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 173;
            _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of mics used.\n", buf, 0x12u);
          }
        }
      }
    }

    v62 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v62, "Failed to retrieve number of mics used from input dictionary.", -1);
  }

  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    if (*(AUBeamItTDLogScope(void)::scope + 8))
    {
      v7 = *AUBeamItTDLogScope(void)::scope;
      if (*AUBeamItTDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerTD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 171;
          *&buf[18] = 1024;
          *&buf[20] = v79;
          _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of mics used (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 2) = v79;
  v78 = 0;
  v8 = CFDictionaryGetValue(theDict, @"nBeams");
  if (!CFNumberGetValue(v8, kCFNumberIntType, &v78))
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v63 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 188;
            _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve number of beams.\n", buf, 0x12u);
          }
        }
      }
    }

    v64 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v64, "Failed to retrieve number of beams from input dictionary.", -1);
  }

  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    if (*(AUBeamItTDLogScope(void)::scope + 8))
    {
      v9 = *AUBeamItTDLogScope(void)::scope;
      if (*AUBeamItTDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerTD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 186;
          *&buf[18] = 1024;
          *&buf[20] = v78;
          _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved number of beams (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 3) = v78;
  v77 = 0;
  v10 = CFDictionaryGetValue(theDict, @"BFFilterLength");
  if (!CFNumberGetValue(v10, kCFNumberIntType, &v77))
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v65 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 203;
            _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beamforming filter length.\n", buf, 0x12u);
          }
        }
      }
    }

    v66 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v66, "Failed to retrieve beamforming filter length from input dictionary.", -1);
  }

  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    if (*(AUBeamItTDLogScope(void)::scope + 8))
    {
      v11 = *AUBeamItTDLogScope(void)::scope;
      if (*AUBeamItTDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerTD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 201;
          *&buf[18] = 1024;
          *&buf[20] = v77;
          _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beamforming filter length (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 4903) = v77;
  v76 = 0;
  v12 = CFDictionaryGetValue(theDict, @"EQFilterLength");
  if (!CFNumberGetValue(v12, kCFNumberIntType, &v76))
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v67 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 218;
            _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve EQ filter length.\n", buf, 0x12u);
          }
        }
      }
    }

    v68 = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(v68, "Failed to retrieve EQ filter length from input dictionary.", -1);
  }

  if (AUBeamItTDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
  }

  if (AUBeamItTDLogScope(void)::scope)
  {
    if (*(AUBeamItTDLogScope(void)::scope + 8))
    {
      v13 = *AUBeamItTDLogScope(void)::scope;
      if (*AUBeamItTDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "BeamformerTD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 216;
          *&buf[18] = 1024;
          *&buf[20] = v76;
          _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved EQ filter length (%i).\n", buf, 0x18u);
        }
      }
    }
  }

  *(this + 4905) = v76;
  if (*(this + 3))
  {
    v14 = 0;
    v15 = this + 390576;
    while (1)
    {
      std::to_string(buf, v14);
      v16 = std::string::insert(buf, 0, "Beam", 4uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v75 = v16->__r_.__value_.__r.__words[2];
      *v74 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v18 = v75 >= 0 ? v74 : v74[0];
      v19 = CFStringCreateWithCString(0, v18, 0x8000100u);
      v20 = CFDictionaryGetValue(theDict, v19);
      if (!v20)
      {
        break;
      }

      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        if (*(AUBeamItTDLogScope(void)::scope + 8))
        {
          v21 = *AUBeamItTDLogScope(void)::scope;
          if (*AUBeamItTDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              v22 = v74;
              if (v75 < 0)
              {
                v22 = v74[0];
              }

              *buf = 136315650;
              *&buf[4] = "BeamformerTD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 242;
              *&buf[18] = 2080;
              *&buf[20] = v22;
              _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary: %s\n", buf, 0x1Cu);
            }
          }
        }
      }

      CFRelease(v19);
      v23 = CFDictionaryGetValue(v20, @"Description");
      if (!v23)
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v51 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 251;
                _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve the beam description.\n", buf, 0x12u);
              }
            }
          }
        }

        v52 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v52, "Failed to retrieve the beam description from input dictionary.", -1);
      }

      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        if (*(AUBeamItTDLogScope(void)::scope + 8))
        {
          v24 = *AUBeamItTDLogScope(void)::scope;
          if (*AUBeamItTDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
              *buf = 136315906;
              *&buf[4] = "BeamformerTD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 249;
              *&buf[18] = 2080;
              *&buf[20] = CStringPtr;
              v82 = 1024;
              v83 = v14;
              _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved the description (%s) for Beam %d.\n", buf, 0x22u);
            }
          }
        }
      }

      v73 = 0.0;
      v26 = CFDictionaryGetValue(v20, @"Distance");
      if (!CFNumberGetValue(v26, kCFNumberFloat32Type, &v73))
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v57 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 264;
                _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam distance.\n", buf, 0x12u);
              }
            }
          }
        }

        v58 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v58, "Failed to retrieve beam distance from input dictionary.", -1);
      }

      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        if (*(AUBeamItTDLogScope(void)::scope + 8))
        {
          v27 = *AUBeamItTDLogScope(void)::scope;
          if (*AUBeamItTDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "BeamformerTD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 262;
              *&buf[18] = 2048;
              *&buf[20] = v73;
              _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam distance (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      *(this + v14 + 426) = v73;
      v72 = 0.0;
      v28 = CFDictionaryGetValue(v20, @"Azimuth");
      if (!CFNumberGetValue(v28, kCFNumberFloat32Type, &v72))
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v55 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 278;
                _os_log_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam azimuth.\n", buf, 0x12u);
              }
            }
          }
        }

        v56 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v56, "Failed to retrieve beam azimuth from input dictionary.", -1);
      }

      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        if (*(AUBeamItTDLogScope(void)::scope + 8))
        {
          v29 = *AUBeamItTDLogScope(void)::scope;
          if (*AUBeamItTDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "BeamformerTD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 276;
              *&buf[18] = 2048;
              *&buf[20] = v72;
              _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam azimuth (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      *(this + v14 + 714) = v72;
      v71 = 0.0;
      v30 = CFDictionaryGetValue(v20, @"Elevation");
      if (!CFNumberGetValue(v30, kCFNumberFloat32Type, &v71))
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v53 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 292;
                _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to retrieve beam elevation.\n", buf, 0x12u);
              }
            }
          }
        }

        v54 = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(v54, "Failed to retrieve beam elevation from input dictionary.", -1);
      }

      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        if (*(AUBeamItTDLogScope(void)::scope + 8))
        {
          v31 = *AUBeamItTDLogScope(void)::scope;
          if (*AUBeamItTDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "BeamformerTD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 290;
              *&buf[18] = 2048;
              *&buf[20] = v71;
              _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved beam elevation (%0.2f).\n", buf, 0x1Cu);
            }
          }
        }
      }

      *(this + v14 + 1002) = v71;
      BeamformerBase::ReadVectorFromDictionary(buf, v20, @"NonZeroMics");
      v32 = this + 24 * v14 + 365232;
      v33 = *v32;
      if (*v32)
      {
        *(v32 + 1) = v33;
        operator delete(v33);
        *v32 = 0;
        *(v32 + 1) = 0;
        *(v32 + 2) = 0;
      }

      *v32 = *buf;
      *(v32 + 2) = *&buf[16];
      BeamformerBase::ReadVectorFromDictionary(buf, v20, @"EQSelectionFilter");
      v34 = this + 24 * v14 + 501168;
      v35 = *v34;
      if (*v34)
      {
        *(v34 + 1) = v35;
        operator delete(v35);
        *v34 = 0;
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
      }

      *v34 = *buf;
      *(v34 + 2) = *&buf[16];
      v36 = CFDictionaryGetValue(v20, @"BFFilter");
      if (v36)
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v37 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "Found the dictionary BFFilter.");
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 317;
                *&buf[18] = 2080;
                *&buf[20] = p_p;
                _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        if (*(this + 2))
        {
          v39 = 0;
          v40 = v15;
          do
          {
            std::to_string(&__p, v39);
            v41 = std::string::insert(&__p, 0, "Mic", 3uLL);
            v42 = *&v41->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v41->__r_.__value_.__l + 2);
            *buf = v42;
            v41->__r_.__value_.__l.__size_ = 0;
            v41->__r_.__value_.__r.__words[2] = 0;
            v41->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (buf[23] >= 0)
            {
              v43 = buf;
            }

            else
            {
              v43 = *buf;
            }

            v44 = CFStringCreateWithCString(0, v43, 0x8000100u);
            BeamformerBase::ReadVectorFromDictionary(&__p, v36, v44);
            v45 = *v40;
            if (*v40)
            {
              *(v40 + 1) = v45;
              operator delete(v45);
              *v40 = 0;
              *(v40 + 1) = 0;
              *(v40 + 2) = 0;
            }

            *v40 = __p;
            CFRelease(v44);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            ++v39;
            v40 += 24;
          }

          while (v39 < *(this + 2));
        }
      }

      else
      {
        if (AUBeamItTDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
        }

        if (AUBeamItTDLogScope(void)::scope)
        {
          if (*(AUBeamItTDLogScope(void)::scope + 8))
          {
            v46 = *AUBeamItTDLogScope(void)::scope;
            if (*AUBeamItTDLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "Missing dictionary BFFilter");
                v47 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v47 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "BeamformerTD.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 312;
                *&buf[18] = 2080;
                *&buf[20] = v47;
                _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0]);
      }

      if (!v36)
      {
        return 4294956446;
      }

      ++v14;
      v15 += 384;
      if (v14 >= *(this + 3))
      {
        goto LABEL_132;
      }
    }

    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      if (*(AUBeamItTDLogScope(void)::scope + 8))
      {
        v49 = *AUBeamItTDLogScope(void)::scope;
        if (*AUBeamItTDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItTDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v50 = v74;
            if (v75 < 0)
            {
              v50 = v74[0];
            }

            *buf = 136315650;
            *&buf[4] = "BeamformerTD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 236;
            *&buf[18] = 2080;
            *&buf[20] = v50;
            _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Missing dictionary: %s\n", buf, 0x1Cu);
          }
        }
      }
    }

    CFRelease(v19);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    return 4294956446;
  }

  else
  {
LABEL_132:
    result = 0;
    *(this + 17) = 1;
  }

  return result;
}

void sub_1DDEF0688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BeamformerTD::Cleanup(BeamformerTD *this)
{
  v2 = this + 507904;
  v4 = *(this + 63510);
  v3 = *(this + 63511);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v4 + 8 * v5);
      if (v7)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v7);
        MEMORY[0x1E12BD160]();
        *(*(v2 + 22) + 8 * v5) = 0;
        v4 = *(v2 + 22);
        v3 = *(v2 + 23);
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  *(this + 16) = 0;
  return 0;
}

uint64_t BeamformerTD::Reset(BeamformerTD *this)
{
  v2 = (this + 508080);
  *(this + 27) = 0;
  *(this + 28) = 0;
  vDSP_vclr(*(this + 2394), 1, (*(this + 2395) - *(this + 2394)) >> 2);
  memset_pattern16(this + 552, &unk_1DE098430, 0x480uLL);
  if (*(this + 3))
  {
    v4 = 0;
    v5 = (this + 19624);
    v6 = *(this + 17) - 1;
    v7 = this + 130224;
    do
    {
      if (*(this + 2))
      {
        v8 = 0;
        v9 = v7;
        do
        {
          v10 = *v5;
          v21 = 0;
          std::vector<float>::assign(v9 - 13824, v10, &v21, v3);
          if (v6 <= 1)
          {
            v11 = *v5;
            v20 = 0;
            std::vector<float>::assign(v9, v11, &v20, v3);
          }

          ++v8;
          v9 += 3;
        }

        while (v8 < *(this + 2));
      }

      v12 = *(this + 4907);
      v19 = 0;
      std::vector<float>::assign(this + 3 * v4++ + 30102, v12, &v19, v3);
      v7 += 384;
    }

    while (v4 < *(this + 3));
  }

  v14 = *v2;
  v13 = v2[1];
  if (v13 != *v2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = *(v14 + 8 * v15);
      if (v17)
      {
        VPTimeFreqConverter::~VPTimeFreqConverter(v17);
        MEMORY[0x1E12BD160]();
        VPTimeFreqConverter_Create();
      }

      v15 = v16++;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  return 0;
}

uint64_t BeamformerTD::Initialize(BeamformerTD *this, double a2, unsigned int a3)
{
  v88[1] = *MEMORY[0x1E69E9840];
  *(this + 3) = a2;
  *(this + 8) = a3;
  v4 = a3;
  v5 = vcvt_u32_f32(vrnda_f32(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(vcvtq_f64_f32(*(this + 88)), vdupq_lane_s64(COERCE__INT64(a2 * 0.5), 0)), v4))));
  *(this + 36) = v5;
  *&v4 = *(this + 39) / (a2 * 0.5) * v4;
  *(this + 13) = roundf(*&v4);
  *(this + 11) = vsub_s32(vdup_lane_s32(v5, 1), v5).u32[0] + 1;
  v6 = a2 / a3;
  *(this + 12) = expf(-1.0 / (*(this + 24) * v6));
  if (*(this + 17) != 1)
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_19660);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      v21 = *AUBeamItTDLogScope(void)::scope;
      if (!*AUBeamItTDLogScope(void)::scope)
      {
        return 4294956421;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "BeamformerTD.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 97;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Initialization failed, top level plist is not set.", &buf, 0x12u);
    }

    return 4294956421;
  }

  v7 = *(this + 3);
  buf.__r_.__value_.__r.__words[0] = 0;
  std::vector<void *>::assign(this + 508080, v7, &buf);
  v8 = (this + 19608);
  if (*(this + 63511) != *(this + 63510))
  {
    VPTimeFreqConverter_Create();
  }

  (*(*this + 144))(this);
  v9 = *(this + 3);
  if (v9 == *(this + 2450))
  {
    *(this + 4902) = *(this + 4903);
    v10 = *(this + 3);
    if (v10)
    {
      v11 = 0;
      v12 = (this + 501176);
      v13 = (this + 390584);
      v14 = this + 247728;
      LODWORD(v15) = *(this + 2);
      do
      {
        if (v15)
        {
          v16 = 0;
          v17 = v13;
          v18 = v14;
          do
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v18, *(v17 - 1), *v17, (*v17 - *(v17 - 1)) >> 2);
            ++v16;
            v15 = *(this + 2);
            v18 += 3;
            v17 += 3;
          }

          while (v16 < v15);
          v10 = *(this + 3);
        }

        ++v11;
        v14 += 384;
        v13 += 48;
      }

      while (v11 < v10);
      *(this + 4904) = *(this + 4905);
      if (v10)
      {
        v19 = 0;
        v20 = (this + 358320);
        do
        {
          std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v20, *(v12 - 1), *v12, (*v12 - *(v12 - 1)) >> 2);
          ++v19;
          v10 = *(this + 3);
          v20 += 3;
          v12 += 3;
        }

        while (v19 < v10);
      }
    }

    else
    {
      *(this + 4904) = *(this + 4905);
    }
  }

  else
  {
    CA::AudioSampleRateConverterBuilder::AudioSampleRateConverterBuilder(&v84, 0);
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v85, *MEMORY[0x1E698D978], *(this + 2450));
    CA::AudioSampleRateConverterBuilder::SetAttribute<double>(v85, *MEMORY[0x1E698D988], *(this + 3));
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v85, *MEMORY[0x1E698D960], 1852797549);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v85, *MEMORY[0x1E698D998], 96);
    CA::AudioSampleRateConverterBuilder::SetAttribute<unsigned int>(v85, *MEMORY[0x1E698D990], 1);
    v23 = v85;
    valuePtr.__r_.__value_.__s.__data_[0] = 0;
    v24 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    buf.__r_.__value_.__r.__words[0] = v24;
    if (!v24)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    CFDictionarySetValue(v23, *MEMORY[0x1E698D968], v24);
    CFRelease(v24);
    CA::AudioSampleRateConverterBuilder::Build(&buf);
    if ((buf.__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      v80 = __cxa_allocate_exception(0x10uLL);
      data = buf.__r_.__value_.__l.__data_;
      *v80 = &unk_1F592D540;
      v80[2] = data;
    }

    v25 = buf.__r_.__value_.__r.__words[0];
    buf.__r_.__value_.__r.__words[0] = 0;
    AudioSampleRateConverterDispose();
    v26 = *(this + 2450);
    v27 = *(this + 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 0;
    if (!AudioSampleRateConverterGetKernelSize())
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v28 = (*(this + 4903) + LODWORD(buf.__r_.__value_.__l.__data_) - 1);
    v82 = LODWORD(buf.__r_.__value_.__l.__data_) - 1;
    *v8 = AudioSampleRateConverterGetExpectedNumberOfOutputFrames();
    LODWORD(buf.__r_.__value_.__l.__data_) = 0;
    std::vector<float>::assign(this + 63513, v28, &buf, v29);
    v30 = *(this + 3);
    v31 = v26 / v27;
    if (v30)
    {
      v32 = 0;
      LODWORD(v33) = *(this + 2);
      do
      {
        if (v33)
        {
          v34 = 0;
          do
          {
            memcpy(*(this + 63513), *(this + 48 * v32 + 3 * v34 + 48822), 4 * *(this + 4903));
            v35 = (this + 384 * v32 + 24 * v34 + 247728);
            v36 = *v8;
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
            std::vector<float>::assign(v35, v36, &buf, v37);
            v38 = *(this + 63513);
            v87 = *v35;
            v88[0] = v38;
            v39 = CA::AudioSampleRateConverter::Process(v25, v88, v28, &v87, *v8);
            if (v39)
            {
              v75 = v39;
              v76 = __cxa_allocate_exception(0x10uLL);
              caulk::string_from_4cc(&valuePtr, v75);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "failed to run SRC with status ", &valuePtr);
              std::runtime_error::runtime_error(v76, &buf);
            }

            AudioSampleRateConverterReset();
            v40 = *v8;
            if (v40)
            {
              v41 = *v35;
              do
              {
                v42 = v31 * *v41;
                *v41++ = v42;
                --v40;
              }

              while (v40);
            }

            ++v34;
            v33 = *(this + 2);
          }

          while (v34 < v33);
          v30 = *(this + 3);
        }

        ++v32;
      }

      while (v32 < v30);
    }

    v43 = (*(this + 4905) + v82);
    *(this + 4904) = AudioSampleRateConverterGetExpectedNumberOfOutputFrames();
    LODWORD(buf.__r_.__value_.__l.__data_) = 0;
    std::vector<float>::assign(this + 63513, v43, &buf, v44);
    if (*(this + 3))
    {
      v45 = 0;
      do
      {
        memcpy(*(this + 63513), *(this + 3 * v45 + 62646), 4 * *(this + 4905));
        v46 = (this + 24 * v45 + 358320);
        v47 = *(this + 4904);
        LODWORD(buf.__r_.__value_.__l.__data_) = 0;
        std::vector<float>::assign(v46, v47, &buf, v48);
        v49 = *(this + 63513);
        v87 = *v46;
        v88[0] = v49;
        v50 = CA::AudioSampleRateConverter::Process(v25, v88, v43, &v87, *(this + 4904));
        if (v50)
        {
          v77 = v50;
          v78 = __cxa_allocate_exception(0x10uLL);
          caulk::string_from_4cc(&valuePtr, v77);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "failed to run SRC with status ", &valuePtr);
          std::runtime_error::runtime_error(v78, &buf);
        }

        AudioSampleRateConverterReset();
        v51 = *(this + 4904);
        if (v51)
        {
          v52 = *v46;
          do
          {
            v53 = v31 * *v52;
            *v52++ = v53;
            --v51;
          }

          while (v51);
        }

        ++v45;
      }

      while (v45 < *(this + 3));
    }

    AudioSampleRateConverterDispose();
    CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&v84);
    LODWORD(v10) = *(this + 3);
  }

  v54 = *(this + 17);
  v55 = *(this + 8) - 1;
  v56 = v55 + *v8;
  v57 = v55 + *(this + 4904);
  *(this + 4906) = v56;
  *(this + 4907) = v57;
  if (v10)
  {
    v58 = 0;
    v59 = (this + 247728);
    v60 = v54 - 1;
    v61 = this + 130224;
    do
    {
      if (*(this + 2))
      {
        v62 = 0;
        v63 = v61;
        do
        {
          v64 = *(this + 4906);
          LODWORD(buf.__r_.__value_.__l.__data_) = 0;
          std::vector<float>::assign(v63 - 13824, v64, &buf, *&v9);
          if (v60 < 2)
          {
            v65 = *(this + 4906);
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
            std::vector<float>::assign(v63, v65, &buf, *&v9);
          }

          ++v62;
          v63 += 3;
        }

        while (v62 < *(this + 2));
      }

      v66 = *(this + 4907);
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      std::vector<float>::assign(this + 3 * v58++ + 30102, v66, &buf, *&v9);
      v67 = *(this + 3);
      v61 += 384;
    }

    while (v58 < v67);
    v68 = (this + 372144);
    if (*(this + 3))
    {
      v69 = 0;
      v70 = *(this + 2);
      v71 = v70;
      do
      {
        if (v71)
        {
          v72 = 0;
          v73 = v68;
          v74 = v59;
          do
          {
            *v68 = 0.0;
            if (*(*(this + 3 * v69 + 45654) + 4 * v72) == 1.0)
            {
              vDSP_svesq(*v74, 1, v68, *v8);
              v70 = *(this + 2);
            }

            ++v72;
            v74 += 3;
            ++v68;
          }

          while (v72 < v70);
          v67 = *(this + 3);
          v71 = v70;
          v68 = v73;
        }

        ++v69;
        v59 += 48;
        v68 += 16;
      }

      while (v69 < v67);
    }
  }

  result = 0;
  *(this + 16) = 1;
  return result;
}

void sub_1DDEF12D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&__p);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void caulk::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1E12BD160);
}

void BeamformerTD::~BeamformerTD(BeamformerTD *this)
{
  BeamformerTD::~BeamformerTD(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = (this + 508064);
  *this = &unk_1F592D440;
  BeamformerTD::Cleanup(this);
  v3 = v2[8];
  if (v3)
  {
    v2[9] = v3;
    operator delete(v3);
  }

  v4 = v2[5];
  if (v4)
  {
    v2[6] = v4;
    operator delete(v4);
  }

  v5 = (this + 501152);
  v6 = (this + 372128);
  v7 = (this + 365216);
  v8 = (this + 358304);
  v9 = (this + 247712);
  v10 = v2[2];
  v11 = (this + 240800);
  if (v10)
  {
    v2[3] = v10;
    operator delete(v10);
  }

  v12 = -6912;
  do
  {
    v13 = *(v2 - 1);
    if (v13)
    {
      *v2 = v13;
      operator delete(v13);
    }

    v2 -= 3;
    v12 += 24;
  }

  while (v12);
  v14 = -110592;
  do
  {
    v15 = *(v5 - 1);
    if (v15)
    {
      *v5 = v15;
      operator delete(v15);
    }

    v5 -= 3;
    v14 += 24;
  }

  while (v14);
  v16 = -6912;
  do
  {
    v17 = *(v6 - 1);
    if (v17)
    {
      *v6 = v17;
      operator delete(v17);
    }

    v6 -= 3;
    v16 += 24;
  }

  while (v16);
  v18 = -6912;
  do
  {
    v19 = *(v7 - 1);
    if (v19)
    {
      *v7 = v19;
      operator delete(v19);
    }

    v7 -= 3;
    v18 += 24;
  }

  while (v18);
  v20 = -110592;
  do
  {
    v21 = *(v8 - 1);
    if (v21)
    {
      *v8 = v21;
      operator delete(v21);
    }

    v8 -= 3;
    v20 += 24;
  }

  while (v20);
  v22 = -6912;
  do
  {
    v23 = *(v9 - 1);
    if (v23)
    {
      *v9 = v23;
      operator delete(v23);
    }

    v9 -= 3;
    v22 += 24;
  }

  while (v22);
  v24 = -110592;
  do
  {
    v25 = *(v11 - 1);
    if (v25)
    {
      *v11 = v25;
      operator delete(v25);
    }

    v11 -= 3;
    v24 += 24;
  }

  while (v24);
  v26 = 110592;
  do
  {
    v27 = *(this + v26 + 19608);
    if (v27)
    {
      *(this + v26 + 19616) = v27;
      operator delete(v27);
    }

    v26 -= 24;
  }

  while (v26);

  BeamformerBase::~BeamformerBase(this);
}

void BeamformerBase::~BeamformerBase(BeamformerBase *this)
{
  *this = &unk_1F5939E38;
  LimitWindBoost::~LimitWindBoost((this + 19200));
  v2 = *(this + 2397);
  if (v2)
  {
    *(this + 2398) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2394);
  if (v3)
  {
    *(this + 2395) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2391);
  if (v4)
  {
    *(this + 2392) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2388);
  if (v5)
  {
    *(this + 2389) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2385);
  if (v6)
  {
    *(this + 2386) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2382);
  if (v7)
  {
    *(this + 2383) = v7;
    operator delete(v7);
  }

  v8 = *(this + 2379);
  if (v8)
  {
    *(this + 2380) = v8;
    operator delete(v8);
  }

  v9 = *(this + 2376);
  if (v9)
  {
    *(this + 2377) = v9;
    operator delete(v9);
  }

  v10 = *(this + 2373);
  if (v10)
  {
    *(this + 2374) = v10;
    operator delete(v10);
  }

  v11 = (this + 18968);
  v12 = -6912;
  do
  {
    v13 = *(v11 - 1);
    if (v13)
    {
      *v11 = v13;
      operator delete(v13);
    }

    v11 -= 3;
    v12 += 24;
  }

  while (v12);
  v14 = 6912;
  do
  {
    v15 = *(this + v14 + 5136);
    if (v15)
    {
      *(this + v14 + 5144) = v15;
      operator delete(v15);
    }

    v14 -= 24;
  }

  while (v14);
}

void BeamformerBase::BeamformerBase(BeamformerBase *this)
{
  *this = &unk_1F5939E38;
  *(this + 1) = 0x12000000010;
  *(this + 8) = 0;
  *(this + 3) = 0x40CF400000000000;
  *(this + 2) = xmmword_1DE09DF80;
  *(this + 6) = 0;
  *(this + 7) = 0;
  bzero(this + 5160, 0x36D8uLL);
  LimitWindBoost::LimitWindBoost((this + 19200));
}

void sub_1DDEF17EC(_Unwind_Exception *exception_object)
{
  v3 = v1[2397];
  if (v3)
  {
    v1[2398] = v3;
    operator delete(v3);
  }

  v4 = v1[2394];
  if (v4)
  {
    v1[2395] = v4;
    operator delete(v4);
  }

  v5 = v1[2391];
  if (v5)
  {
    v1[2392] = v5;
    operator delete(v5);
  }

  v6 = v1[2388];
  if (v6)
  {
    v1[2389] = v6;
    operator delete(v6);
  }

  v7 = v1[2385];
  if (v7)
  {
    v1[2386] = v7;
    operator delete(v7);
  }

  v8 = v1[2382];
  if (v8)
  {
    v1[2383] = v8;
    operator delete(v8);
  }

  v9 = v1[2379];
  if (v9)
  {
    v1[2380] = v9;
    operator delete(v9);
  }

  v10 = v1[2376];
  if (v10)
  {
    v1[2377] = v10;
    operator delete(v10);
  }

  v11 = v1[2373];
  if (v11)
  {
    v1[2374] = v11;
    operator delete(v11);
  }

  v12 = v1 + 2371;
  v13 = -6912;
  while (1)
  {
    v14 = *(v12 - 1);
    if (v14)
    {
      *v12 = v14;
      operator delete(v14);
    }

    v12 -= 3;
    v13 += 24;
    if (!v13)
    {
      v15 = v1 + 1507;
      v16 = -6912;
      while (1)
      {
        v17 = *(v15 - 1);
        if (v17)
        {
          *v15 = v17;
          operator delete(v17);
        }

        v15 -= 3;
        v16 += 24;
        if (!v16)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

pthread_t AUSM::OBHDConfig::initialize(AUSM::OBHDConfig *this, int a2, int a3, const IR::IRDataAttributes *a4, const IR::IRDataAttributes *a5, const IR::IRDataAttributes *a6, const IR::IRDataAttributes *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v13 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (this + 672);
    if (*(this + 695) < 0)
    {
      v14 = *v14;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = "initialize";
    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing", buf, 0x16u);
  }

  atomic_store(1u, this + 696);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 704);
  v15 = a2;
  *(this + 143) = a2;
  v16 = (a3 + 1) * (a3 + 1);
  if (a2 < v16)
  {
    v16 = a2;
  }

  if (a3)
  {
    v15 = v16;
  }

  *(this + 144) = v15;
  v17 = atomic_load((*(*(*this + 8) + 232) + 3124));
  std::vector<AUSM::OBHDConfig::GridPoint>::clear[abi:ne200100](this + 1);
  std::vector<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::__base_destruct_at_end[abi:ne200100](this + 544, *(this + 68));
  if (*(this + 144) >= *(this + 143))
  {
    v18 = AUSM::OBHDConfig::addGridPoints(this, a2, v17);
    *(this + 145) = v18;
  }

  else
  {
    *(this + 145) = AUSM::OBHDConfig::addGridPoints(this, a2, v17);
    v18 = AUSM::OBHDConfig::addGridPoints(this, *(this + 144) | a2 & 0xFFFF0000, v17);
  }

  *(this + 146) = v18;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v19 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v34 = (this + 672);
    if (*(this + 695) < 0)
    {
      v34 = *v34;
    }

    v35 = *(this + 143);
    v36 = *(this + 144);
    v37 = *(this + 145);
    v38 = *(this + 146);
    *buf = 136316418;
    *&buf[4] = v34;
    *&buf[12] = 2080;
    *&buf[14] = "initialize";
    v41 = 1024;
    v42 = v35;
    v43 = 1024;
    v44 = v36;
    v45 = 1024;
    v46 = v37;
    v47 = 1024;
    v48 = v38;
    _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] HOA channels: direct %u, reverb %u; Grid points: direct %u, reverb %u", buf, 0x2Eu);
  }

  AUSM::OBHDConfig::setDirectSoundAttributes(this, a4);
  AUSM::OBHDConfig::setEarlyReverbAttributes(this, a5, a6, a7);
  v20 = atomic_load((*(*(*this + 8) + 232) + 3052));
  if (v20)
  {
    std::chrono::system_clock::now();
    PPUtils::loadHRIRs(a4);
  }

  v21 = *(this + 24);
  if (*(this + 25) != v21)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = (v21 + 16 * v22);
      v25 = v24[1];
      *v24 = 0;
      v24[1] = 0;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v22 = v23;
      v21 = *(this + 24);
      ++v23;
    }

    while (v22 < (*(this + 25) - v21) >> 4);
  }

  v26 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(this + 38) = *(this + 37);
  std::vector<float>::shrink_to_fit(this + 37);
  PPUtils::ContiguousArray2D<float>::resize(this + 320, 0, 0);
  PPUtils::ContiguousArray2D<float>::resize(this + 320, 0, 0);
  PPUtils::ContiguousArray2D<float>::resize(this + 376, 0, 0);
  PPUtils::ContiguousArray2D<float>::resize(this + 432, 0, 0);
  PPUtils::ContiguousArray2D<float>::resize(this + 488, 0, 0);
  v27 = *(this + 144);
  *buf = 0;
  std::vector<float>::assign(this + 74, v27, buf, v28);
  v29 = *(this + 144);
  *buf = 0;
  std::vector<float>::assign(this + 77, v29, buf, v30);
  v31 = *(this + 144);
  *buf = 0;
  std::vector<float>::assign(this + 80, v31, buf, v32);
  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 704);
}

void sub_1DDEF3B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, void *a60, uint64_t a61, char a62)
{
  if (STACK[0x5E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x5E8]);
  }

  IR::IRDataAttributes::~IRDataAttributes(&STACK[0x410]);
  PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(&a32);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(&a43);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(&a50);
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  PPUtils::ContiguousArray3D<float>::~ContiguousArray3D(&a62);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(&STACK[0x200]);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a23 + 704);
  _Unwind_Resume(a1);
}

uint64_t AUSM::OBHDConfig::addGridPoints(void *a1, int a2, int a3)
{
  HOA::HOA(v22, a2, a3);
  HOA::createSphericalGridDecoder(v22);
  v4 = v22[5];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v19, v25, v26, (v26 - v25) >> 2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v16, v27, v28, (v28 - v27) >> 2);
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v23, v24, (v24 - v23) >> 2);
  v5 = a1[1];
  v6 = v4 - 0x505050505050505 * ((a1[2] - v5) >> 4);
  if (0xFAFAFAFAFAFAFAFBLL * ((a1[3] - v5) >> 4) < v6)
  {
    if (v6 <= 0x50505050505050)
    {
      v29 = a1 + 1;
      std::allocator<AUSM::OBHDConfig::GridPoint>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (v6 > (a1[70] - a1[68]) >> 3)
  {
    if (!(v6 >> 61))
    {
      v29 = a1 + 68;
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v6);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (v4)
  {
    __asm { FMOV            V9.2S, #1.0 }

    operator new();
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  HOA::~HOA(v22);
  return v4;
}

void sub_1DDEF45A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  HOA::~HOA(&a32);
  _Unwind_Resume(a1);
}

void AUSM::OBHDConfig::setDirectSoundAttributes(AUSM::OBHDConfig *this, const IR::IRDataAttributes *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(this + 696);
  if (v2)
  {
    v6 = (this + 88);
    v5 = *(this + 11);
    if (!v5 || (IR::IRDataAttributes::operator==(a2, v5 + 8) & 1) == 0)
    {
      IR::IRDataAttributes::IRDataAttributes(v18, a2);
      v22 = 1;
      AUSM::OBHDConfig::createCache(&v23, this, v18, *(this + 145));
      if (v22 == 1)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v18[0])
        {
          CFRelease(v18[0]);
        }
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 704);
      v7 = v23;
      v8 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(this + 12);
      *(this + 11) = v7;
      *(this + 12) = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        v7 = *v6;
      }

      if (v7)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v10 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v11 = (this + 672);
        if (*(this + 695) < 0)
        {
          v11 = *v11;
        }

        v12 = *(this + 145);
        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "setDirectSoundAttributes";
        *&buf[22] = 1024;
        v27 = v12;
        v13 = "[%s|%s] Created cache with %u entries";
        v14 = v10;
        v15 = 28;
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v16 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v17 = (this + 672);
        if (*(this + 695) < 0)
        {
          v17 = *v17;
        }

        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "setDirectSoundAttributes";
        v13 = "[%s|%s] No direct sound";
        v14 = v16;
        v15 = 22;
      }

      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_31:
      AUSM::OBHDConfig::createSourceVector(buf, this, v6, *(this + 143));
      std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::__vdeallocate(this + 21);
      *(this + 168) = *buf;
      *(this + 23) = *&buf[16];
      v25 = buf;
      memset(buf, 0, sizeof(buf));
      std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v25);
      *(this + 664) = 1;
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 704);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}

void sub_1DDEF48F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::OBHDConfig::setEarlyReverbAttributes(AUSM::OBHDConfig *this, const IR::IRDataAttributes *a2, const IR::IRDataAttributes *a3, const IR::IRDataAttributes *a4)
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(this + 696);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v8 = atomic_load((*(*(*this + 8) + 232) + 85));
  if ((v8 & 1) != 0 && *a2)
  {
    IR::IRDataAttributes::IRDataAttributes(&cf, a2);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    LOBYTE(cf) = 0;
  }

  v129 = v9;
  v10 = atomic_load((*(*(*this + 8) + 232) + 88));
  if (v10 != 1 || (v11 = atomic_load((*(*(*this + 8) + 232) + 86)), (v11 & 1) == 0))
  {
    LOBYTE(v12) = 1;
    goto LABEL_11;
  }

  v12 = *a3;
  if (!*a3)
  {
LABEL_11:
    v13 = 0;
    LOBYTE(v104) = 0;
    goto LABEL_12;
  }

  IR::IRDataAttributes::IRDataAttributes(&v104, a3);
  LOBYTE(v12) = 0;
  v13 = 1;
LABEL_12:
  v116 = v13;
  if ((v12 & 1) != 0 || (v8 & 1) == 0)
  {
    v14 = 0;
    LOBYTE(v91) = 0;
  }

  else
  {
    IR::IRDataAttributes::IRDataAttributes(&v91, a4);
    v14 = 1;
  }

  v103 = v14;
  v15 = *(this + 15);
  if (v129)
  {
    if (v15)
    {
      if (IR::IRDataAttributes::operator==(&cf, v15 + 8))
      {
        goto LABEL_50;
      }

      LOBYTE(v76) = 0;
      v88 = 0;
      if ((v129 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v76) = 0;
      v88 = 0;
    }

    v16 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v76 = v16;
    v77 = v118;
    v78 = v119;
    v79 = v120;
    v80 = v121;
    v17 = v122;
    if (v122)
    {
      CFRetain(v122);
    }

    v81 = v17;
    v82 = v123;
    v18 = v124;
    if (v124)
    {
      CFRetain(v124);
    }

    v83 = v18;
    v84[0] = v125[0];
    *(v84 + 9) = *(v125 + 9);
    v19 = v126;
    if (v126)
    {
      CFRetain(v126);
    }

    v85 = v19;
    v86 = v127;
    v87 = v128;
    v88 = 1;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_50;
    }

    LOBYTE(v76) = 0;
    v88 = 0;
  }

LABEL_33:
  AUSM::OBHDConfig::createCache(&v89, this, &v76, *(this + 146));
  if (v88 == 1)
  {
    if (v85)
    {
      CFRelease(v85);
    }

    if (v83)
    {
      CFRelease(v83);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    if (v76)
    {
      CFRelease(v76);
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 704);
  v20 = v89;
  v21 = v90;
  if (v90)
  {
    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(this + 16);
  *(this + 15) = v20;
  *(this + 16) = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  AUSM::OBHDConfig::createSourceVector(buf, this, this + 15, *(this + 144));
  std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::__vdeallocate(this + 27);
  *(this + 216) = *buf;
  *(this + 29) = *&buf[16];
  v130 = buf;
  memset(buf, 0, sizeof(buf));
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v130);
  v23 = atomic_load((*(*(*this + 8) + 232) + 84));
  if ((v23 & 1) == 0)
  {
    AUSM::OBHDConfig::setStaggeredUpdate(*(this + 27), *(this + 28), *(*(*this + 16) + 468));
  }

  *(this + 664) = 1;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 704);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

LABEL_50:
  v24 = *(this + 17);
  if (v116)
  {
    if (v24)
    {
      if (IR::IRDataAttributes::operator==(&v104, v24 + 8))
      {
        goto LABEL_84;
      }

      LOBYTE(v63) = 0;
      v75 = 0;
      if ((v116 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      LOBYTE(v63) = 0;
      v75 = 0;
    }

    v25 = v104;
    if (v104)
    {
      CFRetain(v104);
    }

    v63 = v25;
    v64 = v105;
    v65 = v106;
    v66 = v107;
    v67 = v108;
    v26 = v109;
    if (v109)
    {
      CFRetain(v109);
    }

    v68 = v26;
    v69 = v110;
    v27 = v111;
    if (v111)
    {
      CFRetain(v111);
    }

    v70 = v27;
    v71[0] = v112[0];
    *(v71 + 9) = *(v112 + 9);
    v28 = v113;
    if (v113)
    {
      CFRetain(v113);
    }

    v72 = v28;
    v73 = v114;
    v74 = v115;
    v75 = 1;
  }

  else
  {
    if (!v24)
    {
      goto LABEL_84;
    }

    LOBYTE(v63) = 0;
    v75 = 0;
  }

LABEL_67:
  AUSM::OBHDConfig::createCache(&v89, this, &v63, *(this + 146));
  if (v75 == 1)
  {
    if (v72)
    {
      CFRelease(v72);
    }

    if (v70)
    {
      CFRelease(v70);
    }

    if (v68)
    {
      CFRelease(v68);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 704);
  v29 = v89;
  v30 = v90;
  if (v90)
  {
    atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(this + 18);
  *(this + 17) = v29;
  *(this + 18) = v30;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  AUSM::OBHDConfig::createSourceVector(buf, this, this + 17, *(this + 144));
  std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::__vdeallocate(this + 30);
  *(this + 15) = *buf;
  *(this + 32) = *&buf[16];
  v130 = buf;
  memset(buf, 0, sizeof(buf));
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v130);
  v32 = atomic_load((*(*(*this + 8) + 232) + 84));
  if ((v32 & 1) == 0)
  {
    AUSM::OBHDConfig::setStaggeredUpdate(*(this + 30), *(this + 31), *(*(*this + 16) + 468));
  }

  *(this + 664) = 1;
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 704);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

LABEL_84:
  v33 = *(this + 19);
  if (v103)
  {
    if (!v33)
    {
      LOBYTE(v50) = 0;
      v62 = 0;
      goto LABEL_92;
    }

    if ((IR::IRDataAttributes::operator==(&v91, v33 + 8) & 1) == 0)
    {
      LOBYTE(v50) = 0;
      v62 = 0;
      if ((v103 & 1) == 0)
      {
        goto LABEL_101;
      }

LABEL_92:
      v34 = v91;
      if (v91)
      {
        CFRetain(v91);
      }

      v50 = v34;
      v51 = v92;
      v52 = v93;
      v53 = v94;
      v54 = v95;
      v35 = v96;
      if (v96)
      {
        CFRetain(v96);
      }

      v55 = v35;
      v56 = v97;
      v36 = v98;
      if (v98)
      {
        CFRetain(v98);
      }

      v57 = v36;
      v58[0] = v99[0];
      *(v58 + 9) = *(v99 + 9);
      v37 = v100;
      if (v100)
      {
        CFRetain(v100);
      }

      v59 = v37;
      v60 = v101;
      v61 = v102;
      v62 = 1;
      goto LABEL_101;
    }
  }

  else if (v33)
  {
    LOBYTE(v50) = 0;
    v62 = 0;
LABEL_101:
    AUSM::OBHDConfig::createCache(&v89, this, &v50, *(this + 146));
    if (v62 == 1)
    {
      if (v59)
      {
        CFRelease(v59);
      }

      if (v57)
      {
        CFRelease(v57);
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if (v50)
      {
        CFRelease(v50);
      }
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 704);
    v38 = v89;
    v39 = v90;
    if (v90)
    {
      atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = *(this + 20);
    *(this + 19) = v38;
    *(this + 20) = v39;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    AUSM::OBHDConfig::createSourceVector(buf, this, this + 19, *(this + 144));
    std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::__vdeallocate(this + 33);
    *(this + 264) = *buf;
    *(this + 35) = *&buf[16];
    v130 = buf;
    memset(buf, 0, sizeof(buf));
    std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v130);
    v41 = atomic_load((*(*(*this + 8) + 232) + 84));
    if ((v41 & 1) == 0)
    {
      AUSM::OBHDConfig::setStaggeredUpdate(*(this + 33), *(this + 34), *(*(*this + 16) + 468));
    }

    *(this + 664) = 1;
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 704);
    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v42 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v43 = (this + 672);
    if (*(this + 695) < 0)
    {
      v43 = *v43;
    }

    v44 = *(this + 146);
    v45 = " -";
    if (*(this + 15))
    {
      v46 = " Scene";
    }

    else
    {
      v46 = " -";
    }

    v47 = " PostProc";
    v48 = *(this + 19);
    v49 = *(this + 17) == 0;
    *buf = 136316418;
    if (v49)
    {
      v47 = " -";
    }

    *&buf[4] = v43;
    *&buf[12] = 2080;
    *&buf[14] = "setEarlyReverbAttributes";
    if (v48)
    {
      v45 = " Combined";
    }

    *&buf[22] = 1024;
    v132 = v44;
    v133 = 2080;
    v134 = v46;
    v135 = 2080;
    v136 = v47;
    v137 = 2080;
    v138 = v45;
    _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEFAULT, "[%s|%s] Created caches with %u entries:%s%s%s", buf, 0x3Au);
  }

  if (v103 == 1)
  {
    if (v100)
    {
      CFRelease(v100);
    }

    if (v98)
    {
      CFRelease(v98);
    }

    if (v96)
    {
      CFRelease(v96);
    }

    if (v91)
    {
      CFRelease(v91);
    }
  }

  if (v116 == 1)
  {
    if (v113)
    {
      CFRelease(v113);
    }

    if (v111)
    {
      CFRelease(v111);
    }

    if (v109)
    {
      CFRelease(v109);
    }

    if (v104)
    {
      CFRelease(v104);
    }
  }

  if (v129 == 1)
  {
    if (v126)
    {
      CFRelease(v126);
    }

    if (v124)
    {
      CFRelease(v124);
    }

    if (v122)
    {
      CFRelease(v122);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1DDEF5254(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t IR::Cache::initialize(IR::Cache *this, float a2)
{
  *(this + 4) = a2;
  IR::IRDataLoader::instance(this);
  std::string::basic_string[abi:ne200100]<0>(&v39, "IRCache|");
  IR::IRDataLoader::load();
  v3 = *(this + 21);
  *(this + 10) = v38;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 45) = IR::IRData::getNumFiltersPerSpatialPoint(v4);
    if (*(this + 20))
    {
      v5 = *(this + 44);
      v6 = *(this + 23);
      v7 = *(this + 24);
      v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v6] >> 3);
      v9 = v5 - v8;
      if (v5 <= v8)
      {
        if (v5 < v8)
        {
          v15 = (v6 + 24 * v5);
          while (v7 != v15)
          {
            v7 -= 24;
            v39 = v7;
            std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&v39);
          }

          *(this + 24) = v15;
        }
      }

      else
      {
        v10 = *(this + 25);
        if (0xAAAAAAAAAAAAAAABLL * ((v10 - v7) >> 3) < v9)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v6) >> 3);
          v12 = 2 * v11;
          if (2 * v11 <= v5)
          {
            v12 = *(this + 44);
          }

          if (v11 >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          if (v13 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_59;
        }

        bzero(*(this + 24), 24 * ((24 * v9 - 24) / 0x18) + 24);
        *(this + 24) = &v7[24 * ((24 * v9 - 24) / 0x18) + 24];
      }

      v16 = *(this + 29);
      v17 = *(this + 30);
      v18 = 0x8E38E38E38E38E39 * ((v17 - v16) >> 2);
      v19 = v5 - v18;
      if (v5 <= v18)
      {
        if (v5 < v18)
        {
          *(this + 30) = v16 + 36 * v5;
        }
      }

      else
      {
        v20 = *(this + 31);
        if (0x8E38E38E38E38E39 * ((v20 - v17) >> 2) < v19)
        {
          v21 = 0x1C71C71C71C71C72 * ((v20 - v16) >> 2);
          if (v21 <= v5)
          {
            v21 = v5;
          }

          if (0x8E38E38E38E38E39 * ((v20 - v16) >> 2) >= 0x38E38E38E38E38ELL)
          {
            v22 = 0x71C71C71C71C71CLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22 <= 0x71C71C71C71C71CLL)
          {
            operator new();
          }

          goto LABEL_59;
        }

        v23 = v17 + 36 * v19;
        v24 = 36 * v5 - 36 * v18;
        do
        {
          IR::IRCoordinates::IRCoordinates(v17);
          v17 = (v17 + 36);
          v24 -= 36;
        }

        while (v24);
        *(this + 30) = v23;
      }

      std::vector<std::vector<float>>::resize(this + 26, v5);
      std::vector<BOOL>::resize(this + 256, v5, 0);
      IR::IRData::getFilterLength(*(this + 20));
      if (v5 > v8)
      {
        v25 = v8;
        while (1)
        {
          v26 = (*(this + 23) + 24 * v25);
          v27 = *(this + 45);
          v28 = *v26;
          v29 = v26[1];
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v26) >> 3);
          if (v27 > v30)
          {
            break;
          }

          if (v27 < v30)
          {
            v34 = v28 + 40 * v27;
            while (v29 != v34)
            {
              v29 -= 40;
              MEMORY[0x1E12BBDC0](v29);
            }

            v26[1] = v34;
          }

          if (*(*(this + 23) + 24 * v25) != *(*(this + 23) + 24 * v25 + 8))
          {
            IR::FFTFilterKernel<float>::initialize();
          }

          IR::IRCoordinates::reset((*(this + 29) + 36 * v25));
          v35 = (*(this + 26) + 24 * v25);
          v36 = *(this + 45);
          LODWORD(v39) = 0;
          std::vector<float>::assign(v35, v36, &v39, v37);
          if (++v25 == v5)
          {
            goto LABEL_58;
          }
        }

        v31 = v26[2];
        if (0xCCCCCCCCCCCCCCCDLL * ((v31 - v29) >> 3) >= v27 - v30)
        {
          IR::FFTFilterKernel<float>::FFTFilterKernel();
        }

        v32 = 0x999999999999999ALL * ((v31 - v28) >> 3);
        if (v32 <= v27)
        {
          v32 = *(this + 45);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v31 - v28) >> 3) >= 0x333333333333333)
        {
          v33 = 0x666666666666666;
        }

        else
        {
          v33 = v32;
        }

        v41 = *(this + 23) + 24 * v25;
        if (v33 <= 0x666666666666666)
        {
          operator new();
        }

LABEL_59:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

LABEL_58:
    result = 0;
    *(this + 44) = v5;
  }

  else
  {
    *(this + 44) = 0;
    return 4294956425;
  }

  return result;
}

void sub_1DDEF5AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::DataRef::~DataRef(&a14);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 16 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v4 -= 16;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    a1[1] = v4 + 16 * v6;
  }
}

BOOL isMatrixIdentity(const float *a1, unint64_t a2)
{
  v6 = sqrt(a2);
  if (round(v6) == v6)
  {
    v16 = v5;
    v17 = v4;
    v18 = v2;
    v19 = v3;
    v8 = v6;
    __C = 0.0;
    vDSP_sve(a1, v6 + 1, &__C, v6);
    v9 = __C;
    v15 = 0.0;
    vDSP_sve(a1, 1, &v15, v8 * v8);
    v10 = vabds_f32(v9, v15);
    return vabds_f32(v9, v8) < 0.0001 && v10 < 0.0001;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<IR::WeightedSumOfCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D5C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void IR::Cache::~Cache(IR::Cache *this)
{
  IR::Cache::~Cache(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592D5A0;
  v2 = *(this + 32);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v8 = (this + 208);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = *(this + 23);
  if (v4)
  {
    v5 = *(this + 24);
    v6 = *(this + 23);
    if (v5 != v4)
    {
      do
      {
        v5 -= 3;
        v8 = v5;
        std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
      }

      while (v5 != v4);
      v6 = *(this + 23);
    }

    *(this + 24) = v4;
    operator delete(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  IR::IRDataAttributes::~IRDataAttributes((this + 8));
}

void std::__shared_ptr_emplace<IR::Cache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t IR::IRDataAttributes::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!(*a1 | v4))
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 12) != *(a2 + 12) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  result = 0;
  if (!v3)
  {
    return result;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return result;
  }

  if (!v4)
  {
    return result;
  }

  result = applesauce::CF::operator==(v3, v4);
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 64);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    result = applesauce::CF::operator==(v7, v8);
    if (!result)
    {
      return result;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 76) != *(a2 + 76) || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84))
  {
    return 0;
  }

  v9 = *(a1 + 88);
  v10 = *(a2 + 88);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  result = applesauce::CF::operator==(v9, v10);
  if (!result)
  {
    return result;
  }

LABEL_28:
  if (*(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 116) != *(a2 + 116) || *(a1 + 40) != *(a2 + 40) || *(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140) || *(a1 + 144) != *(a2 + 144) || *(a1 + 17) != *(a2 + 17) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v11 = *(a1 + 128);
  v12 = *(a2 + 128);

  return applesauce::CF::operator==(v11, v12);
}

void *AUSM::OBHDConfig::createCache(void *result, int a2, IR::IRDataAttributes *a3, int a4)
{
  v6 = a4;
  *result = 0;
  result[1] = 0;
  if (*(a3 + 152) == 1)
  {
    if (*a3)
    {
      IR::IRDataAttributes::IRDataAttributes(v4, a3);
      v5 = 1;
      std::allocate_shared[abi:ne200100]<IR::Cache,std::allocator<IR::Cache>,IR::IRDataAttributes &,unsigned int &,0>();
    }
  }

  return result;
}

void sub_1DDEF63E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IR::IRDataAttributes::~IRDataAttributes(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void AUSM::OBHDConfig::createSourceVector(uint64_t *a1, uint64_t a2, void *a3, unsigned int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a3)
  {
    if (*(*a3 + 176))
    {
      std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::resize(a1, a4);
      if (a4)
      {
        v6 = a3[1];
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        std::allocate_shared[abi:ne200100]<IR::WeightedSumOfCache,std::allocator<IR::WeightedSumOfCache>,std::shared_ptr<IR::Cache const>,0>();
      }
    }
  }
}

void sub_1DDEF651C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<IR::WeightedSumOfCache>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t AUSM::OBHDConfig::setStaggeredUpdate(uint64_t result, uint64_t a2, float a3)
{
  if (((a2 - result) & 0xFFFFFFFE0) != 0)
  {
    v3 = (a3 * 0.15);
    v4 = (a2 - result) >> 4;
    v5 = v3 / (v4 + -1.0);
    v6 = v4 - 1;
    v7 = (result + 16);
    v8 = 0.0;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        *(v9 + 224) = v3;
        *(v9 + 228) = v8;
        v8 = v5 + v8;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL applesauce::CF::operator==(unint64_t cf1, unint64_t a2)
{
  result = (cf1 | a2) == 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

{
  result = (cf1 | a2) == 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x1E12BD160](v4, 0x1000C406B1228F1);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

AUSM::ChannelGeometry *AUSM::OBHDConfig::GridPoint::GridPoint(AUSM::ChannelGeometry *a1, const AUSM::InputGeometry *a2, __int128 *a3)
{
  AUSM::ChannelGeometry::ChannelGeometry(a1, a2);
  *(v5 + 800) = 0;
  *(v5 + 784) = 0u;
  *(v5 + 808) = -1;
  v6 = *a3;
  v7 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v7;
  *(v5 + 760) = 1;
  v8 = *(a3 + 7);
  *(v5 + 49) = ((v8 - 5) < 0x3C) & (0xDFFD000F0003FF3uLL >> (v8 - 5));
  *(v5 + 48) = (v8 < 0x3F) & (0x4000002000000010uLL >> v8);
  AUSM::ChannelGeometry::update(v5, 1, *&v6, *&v7, v9, v10, v11, v12);
  return a1;
}

void std::allocator<AUSM::OBHDConfig::GridPoint>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x50505050505051)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUSM::OBHDConfig::GridPoint>,AUSM::OBHDConfig::GridPoint*>(int a1, char *__src, char *a3, char *__dst)
{
  if (__src != a3)
  {
    v6 = __src;
    v7 = __src;
    do
    {
      memcpy(__dst, v7, 0x310uLL);
      *(__dst + 98) = 0;
      *(__dst + 792) = 0u;
      *(__dst + 49) = *(v7 + 49);
      *(__dst + 100) = *(v7 + 100);
      *(v7 + 49) = 0u;
      *(v7 + 100) = 0;
      *(__dst + 101) = *(v7 + 101);
      v7 += 816;
      __dst += 816;
    }

    while (v7 != a3);
    do
    {
      v8 = *(v6 + 98);
      if (v8)
      {
        *(v6 + 99) = v8;
        operator delete(v8);
      }

      v6 += 816;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<AUSM::OBHDConfig::GridPoint>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 816;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 816;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 IR::Cache::setIR(IR::Cache *this, unsigned int a2, __n128 *a3)
{
  if (*(this + 20))
  {
    if (954437177 * ((*(this + 30) - *(this + 29)) >> 2) > a2)
    {
      IR::IRData::getInterpolatedCoeffs();
      v6 = *(this + 29) + 36 * a2;
      v8 = *a3;
      result = a3[1];
      *(v6 + 32) = a3[2].n128_u32[0];
      *v6 = v8;
      *(v6 + 16) = result;
      *(*(this + 32) + ((a2 >> 3) & 0x1FFFFFF8)) |= 1 << a2;
      ++*(this + 70);
    }
  }

  return result;
}

uint64_t AUSM::OBHDConfig::updateInternal(BOOL)::$_0::operator()(uint64_t a1, IR::Cache **a2, uint64_t **a3, unsigned int a4, float a5)
{
  v10 = *a2;
  v11 = a4;
  if (*(*a2 + 66) <= a4)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (*(*(v10 + 32) + ((a4 >> 3) & 0x1FFFFFF8)) >> a4) & 1;
  }

  if (954437177 * ((*(v10 + 30) - *(v10 + 29)) >> 2) <= a4)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = *(a1 + 8);
  if (IR::IRCoordinates::equalWithAccuracy() & v12)
  {
    v14 = 0;
  }

  else
  {
    IR::Cache::setIR(*a2, a4, *a1);
    v14 = 1;
  }

  v15 = *(*(v13 + 8) + 816 * **(a1 + 16) + 784);
  v16 = *a3;
  v17 = **a3;
  v18 = 0.0;
  if (*(v17 + 176) == 1)
  {
    v20 = v17 + 200;
    v19 = *(v17 + 200);
    if (((*(v20 + 8) - v19) >> 2) > a4)
    {
      v18 = *(v19 + 4 * v11);
    }
  }

  if (fabsf(-(v18 - (a5 * *v15))) <= 0.0001)
  {
    v22 = 0;
  }

  else
  {
    v21 = a3[1] - v16;
    v22 = 1;
    if ((v21 & 0xFFFFFFFF0) != 0)
    {
      if (((v21 >> 4) & 0xFFFFFFFE) != 0)
      {
        v23 = (v21 >> 4);
      }

      else
      {
        v23 = 1;
      }

      do
      {
        v24 = *v16;
        if (*(*v16 + 176) == 1)
        {
          v25 = *(v24 + 200);
          if (((*(v24 + 208) - v25) >> 2) > a4)
          {
            v26 = *v15 * a5;
            if (*(v25 + 4 * v11) != v26)
            {
              *(v25 + 4 * v11) = v26;
              *(v24 + 232) = 1;
            }
          }
        }

        ++v15;
        v16 += 2;
        --v23;
      }

      while (v23);
      v22 = 1;
    }
  }

  return v14 | (v22 << 8);
}

pthread_t AUSM::OBHDConfig::getDirectSoundSource(pthread_t this, uint64_t a2, unsigned int a3, char a4)
{
  v4 = this;
  v5 = atomic_load((a2 + 696));
  if ((v5 & 1) == 0 || ((*(a2 + 176) - *(a2 + 168)) >> 4) <= a3)
  {
    this->__sig = 0;
    this->__cleanup_stack = 0;
    return this;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2 + 704);
  if (a4)
  {
    v9 = *(a2 + 192);
    v10 = a3;
    if (a3 < ((*(a2 + 200) - v9) >> 4))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = a3;
  }

  v9 = *(a2 + 168);
LABEL_9:
  v11 = *(v9 + 16 * v10);
  *&v4->__sig = v11;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2 + 704);
}

pthread_t AUSM::OBHDConfig::getEarlyRoomSource(pthread_t result, uint64_t a2, int a3, unsigned int a4)
{
  p_sig = &result->__sig;
  v5 = atomic_load((a2 + 696));
  if (v5)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2 + 704);
    if (a3)
    {
      if (a3 == 2)
      {
        v9 = *(a2 + 264);
        v10 = *(a2 + 272);
      }

      else
      {
        v9 = *(a2 + 216);
        v10 = *(a2 + 224);
      }
    }

    else
    {
      v9 = *(a2 + 240);
      v10 = *(a2 + 248);
    }

    if (((v10 - v9) >> 4) <= a4)
    {
      *p_sig = 0;
      p_sig[1] = 0;
    }

    else
    {
      v11 = *(v9 + 16 * a4);
      *p_sig = v11;
      if (*(&v11 + 1))
      {
        atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2 + 704);
  }

  else
  {
    result->__sig = 0;
    result->__cleanup_stack = 0;
  }

  return result;
}

float AUsubMAEC::dft::dftAnalysis(AUsubMAEC::dft *this, const float *a2, float *a3, float *a4, float *a5)
{
  __C = 0;
  MEMORY[0x1E12BE7F0](a2, 1, *(this + 9), 1, *(this + 10), 1, *(this + 2));
  vDSP_vclr(a3, 1, *(this + 3));
  vDSP_vclr(a4, 1, *(this + 3));
  __Z.realp = a3;
  __Z.imagp = a4;
  vDSP_ctoz(*(this + 10), 2, &__Z, 1, *(this + 3));
  __Z.realp = a3;
  __Z.imagp = a4;
  if (*this)
  {
    MultiRadixRealFFT::RealInPlaceTransform(*this, &__Z, 1, v9);
  }

  MEMORY[0x1E12BE940](a3, 1, this + 44, a3, 1, *(this + 3));
  MEMORY[0x1E12BE940](a4, 1, this + 44, a4, 1, *(this + 3));
  v10 = *(this + 3);
  a3[v10] = *a4;
  *a4 = 0.0;
  a4[v10] = 0.0;
  vDSP_svesq(a3, 1, &__C + 1, *(this + 6));
  vDSP_svesq(a4, 1, &__C, *(this + 6));
  result = (*(&__C + 1) + *&__C) * *(this + 2);
  *a5 = result;
  return result;
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v2>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F591F6A0;
  *(v3 + 264) = 0;
  *(v3 + 532) = 0x100000001;
  *(v3 + 540) = 0x42C8000000000000;
  *(v3 + 137) = 0;
  *(v3 + 69) = 0;
  v4 = _get_cpu_capabilities() & 0x78000000;
  if (!v4)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v2.mm";
      *&buf[12] = 1024;
      *&buf[14] = 78;
      _os_log_debug_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEBUG, "%s:%i non-AMX iOS device: HQ model not supported", buf, 0x12u);
    }
  }

  v6 = 0;
  v7 = 0;
  *(a1 + 560) = v4 != 0;
  *(a1 + 580) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 1;
  *(a1 + 632) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  *buf = 0;
  *&buf[8] = 0;
  *v41 = 0;
  *&buf[16] = 1;
  *&buf[24] = 0;
  LODWORD(v35) = 2;
  v36 = 0;
  v37 = 3;
  v38 = 0;
  v39 = 4;
  v40 = 0;
  v8 = (a1 + 656);
  *(a1 + 656) = 0u;
  v9 = (a1 + 656);
  for (*(a1 + 648) = a1 + 656; ; v9 = *(a1 + 648))
  {
    v10 = &buf[v7];
    v11 = a1 + 656;
    if (v9 == v8)
    {
      goto LABEL_13;
    }

    v12 = v6;
    v13 = a1 + 656;
    if (v6)
    {
      do
      {
        v11 = v12;
        v12 = *(v12 + 8);
      }

      while (v12);
    }

    else
    {
      do
      {
        v11 = *(v13 + 16);
        v14 = *v11 == v13;
        v13 = v11;
      }

      while (v14);
    }

    v15 = *v10;
    if (*(v11 + 32) < *v10)
    {
LABEL_13:
      if (v6)
      {
        v16 = (v11 + 8);
      }

      else
      {
        v16 = (a1 + 656);
      }
    }

    else
    {
      v16 = (a1 + 656);
      if (v6)
      {
        v16 = (a1 + 656);
        while (1)
        {
          while (1)
          {
            v17 = v6;
            v18 = *(v6 + 32);
            if (v15 >= v18)
            {
              break;
            }

            v6 = *v17;
            v16 = v17;
            if (!*v17)
            {
              goto LABEL_17;
            }
          }

          if (v18 >= v15)
          {
            break;
          }

          v16 = v17 + 1;
          v6 = v17[1];
          if (!v6)
          {
            goto LABEL_17;
          }
        }
      }
    }

    if (!*v16)
    {
LABEL_17:
      operator new();
    }

    v7 += 16;
    if (v7 == 80)
    {
      v19 = 72;
      while (1)
      {
        v20 = *&buf[v19];
        if (v20)
        {
          CFRelease(v20);
        }

        v19 -= 16;
        if (v19 == -8)
        {
          v21 = getAUSoundIsolationLog(void)::onceToken;
          *(a1 + 672) = 0;
          *(a1 + 680) = 0;
          *(a1 + 688) = 0u;
          *(a1 + 704) = 0u;
          *(a1 + 720) = 0;
          if (v21 != -1)
          {
            dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
          }

          v22 = getAUSoundIsolationLog(void)::gLog;
          if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 215;
            _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEFAULT, "%s:%i will try to construct", buf, 0x12u);
          }

          ausdk::AUBase::CreateElements(a1);
          *buf = xmmword_1DE0A1B38;
          *&buf[16] = unk_1DE0A1B48;
          v35 = 32;
          Element = ausdk::AUScope::GetElement((a1 + 80), 0);
          if (Element)
          {
            (*(*Element + 56))(Element, buf);
            v24 = ausdk::AUScope::GetElement((a1 + 128), 0);
            if (v24)
            {
              (*(*v24 + 56))(v24, buf);
              (*(*a1 + 512))(a1, 1156);
              {
              }

              *(a1 + 572) = 1;
              *(a1 + 564) = 0x42C8000000000001;
              *(a1 + 576) = 0;
              *(a1 + 580) = 0;
              v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
              if (v26)
              {
                ausdk::AUElement::SetParameter(v25, 0, 100.0);
                v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                if (v28)
                {
                  ausdk::AUElement::SetParameter(v27, 1u, 1.0);
                  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                  if (v30)
                  {
                    ausdk::AUElement::SetParameter(v29, 0x17626u, 0.0);
                    v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
                    if (v32)
                    {
                      ausdk::AUElement::SetParameter(v31, 0x17627u, 0.0);
                      *(a1 + 544) = *(a1 + 568);
                      *v41 = 0;
                      caulk::concurrent::messenger::shared_logging_priority(v33);
                      std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
                    }
                  }
                }
              }

              abort();
            }
          }

          ausdk::Throw(0xFFFFD583);
        }
      }
    }

    v6 = *v8;
  }
}

void sub_1DDEF7DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v27);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  applesauce::CF::StringRef::~StringRef(&a21);
  v31 = *(a11 + 712);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(a11 + 696);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__tree<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v2::BoxTuningType,std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v2::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v2::BoxTuningType,applesauce::CF::StringRef>>>::destroy(*v28);
  if (*a10)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *a10 = 0;
  }

  *(a11 + 640) = 0;
  *(a11 + 624) = 0;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted((a11 + 616));
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted((a11 + 608));
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted((a11 + 600));
  ausdk::AUBase::~AUBase(a11);
  _Unwind_Resume(a1);
}

void ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v1>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 540);
  v4 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v4 = &unk_1F5927A60;
  *(v4 + 264) = 0;
  *(v4 + 532) = 0x100000001;
  v37 = v3;
  *v3 = 0x42C8000000000000;
  *(v4 + 137) = 0;
  *(v4 + 69) = 0;
  v5 = _get_cpu_capabilities() & 0x78000000;
  if (!v5)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    }

    v6 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AUSoundIsolation_v1.mm";
      *&buf[12] = 1024;
      *&buf[14] = 65;
      _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "%s:%i non-AMX iOS device: HQ model not supported", buf, 0x12u);
    }
  }

  v7 = 0;
  v8 = 0;
  *(a1 + 560) = v5 != 0;
  *(a1 + 580) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 1;
  *(a1 + 656) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 636) = 0u;
  *buf = 0;
  *&buf[8] = 0;
  *v45 = 0;
  *&buf[16] = 1;
  *&v39 = 0;
  DWORD2(v39) = 2;
  v40 = 0;
  v41 = 3;
  v42 = 0;
  v43 = 4;
  v44 = 0;
  v9 = (a1 + 680);
  *(a1 + 680) = 0u;
  v10 = (a1 + 680);
  for (*(a1 + 672) = a1 + 680; ; v10 = *(a1 + 672))
  {
    v11 = &buf[v8];
    v12 = a1 + 680;
    if (v10 == v9)
    {
      goto LABEL_13;
    }

    v13 = v7;
    v14 = a1 + 680;
    if (v7)
    {
      do
      {
        v12 = v13;
        v13 = *(v13 + 8);
      }

      while (v13);
    }

    else
    {
      do
      {
        v12 = *(v14 + 16);
        v15 = *v12 == v14;
        v14 = v12;
      }

      while (v15);
    }

    v16 = *v11;
    if (*(v12 + 32) < *v11)
    {
LABEL_13:
      v17 = (v7 ? v12 + 8 : a1 + 680);
    }

    else
    {
      v17 = (a1 + 680);
      if (v7)
      {
        v17 = (a1 + 680);
        while (1)
        {
          while (1)
          {
            v18 = v7;
            v19 = *(v7 + 32);
            if (v16 >= v19)
            {
              break;
            }

            v7 = *v18;
            v17 = v18;
            if (!*v18)
            {
              goto LABEL_17;
            }
          }

          if (v19 >= v16)
          {
            break;
          }

          v17 = v18 + 1;
          v7 = v18[1];
          if (!v7)
          {
            goto LABEL_17;
          }
        }
      }
    }

    if (!*v17)
    {
LABEL_17:
      operator new();
    }

    v8 += 16;
    if (v8 == 80)
    {
      break;
    }

    v7 = *v9;
  }

  for (i = 72; i != -8; i -= 16)
  {
    v21 = *&buf[i];
    if (v21)
    {
      CFRelease(v21);
    }
  }

  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(v37 + 172) = 0u;
  *(v37 + 188) = 0u;
  *(v37 + 204) = 0;
  v22 = DSPGraph::ABIVersion(v21);
  if (v22 == 4)
  {
    if (getAUSoundIsolationLog(void)::onceToken == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v36 = DSPGraph::getLog(v22);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: DSPGraph ABI runtime/compile-time mismatch", buf, 2u);
    }

    qword_1ECDA7CB8 = buf;
    __break(1u);
  }

  dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
LABEL_34:
  v23 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 247;
    _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEFAULT, "%s:%i will try to construct", buf, 0x12u);
  }

  ausdk::AUBase::CreateElements(a1);
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v24 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v1.mm";
    *&buf[12] = 1024;
    *&buf[14] = 250;
    _os_log_debug_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEBUG, "%s:%i set the default ioFormat", buf, 0x12u);
  }

  *buf = 0x40E7700000000000;
  *&buf[8] = xmmword_1DE09BD50;
  v39 = xmmword_1DE09BD60;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (Element)
  {
    (*(*Element + 56))(Element, buf);
    v26 = ausdk::AUScope::GetElement((a1 + 128), 0);
    if (v26)
    {
      (*(*v26 + 56))(v26, buf);
      (*(*a1 + 512))(a1, 1156);
      {
      }

      *(a1 + 572) = 1;
      *(a1 + 564) = 0x42C8000000000001;
      *(a1 + 576) = 0;
      *(a1 + 580) = 0;
      v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
      if (v28)
      {
        ausdk::AUElement::SetParameter(v27, 0, 100.0);
        v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
        if (v30)
        {
          ausdk::AUElement::SetParameter(v29, 1u, 1.0);
          v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
          if (v32)
          {
            ausdk::AUElement::SetParameter(v31, 0x17626u, 0.0);
            v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
            if (v34)
            {
              ausdk::AUElement::SetParameter(v33, 0x17627u, 0.0);
              *(a1 + 544) = *(a1 + 568);
              *v45 = 0;
              caulk::concurrent::messenger::shared_logging_priority(v35);
              std::allocate_shared[abi:ne200100]<caulk::concurrent::messenger,std::allocator<caulk::concurrent::messenger>,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
            }
          }
        }
      }

      abort();
    }
  }

  ausdk::Throw(0xFFFFD583);
}

void sub_1DDEF9024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v27);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  applesauce::CF::StringRef::~StringRef(&a21);
  v31 = *(a10 + 736);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(a10 + 720);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  std::__tree<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::__map_value_compare<AUSoundIsolation_v1::BoxTuningType,std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>,std::less<AUSoundIsolation_v1::BoxTuningType>,true>,std::allocator<std::__value_type<AUSoundIsolation_v1::BoxTuningType,applesauce::CF::StringRef>>>::destroy(*v28);
  if (*a9)
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *a9 = 0;
  }

  *(a10 + 664) = 0;
  *(a10 + 648) = 0;
  v33 = *(a10 + 640);
  *(a10 + 640) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  if (*(a10 + 639) < 0)
  {
    operator delete(*(a10 + 616));
  }

  v34 = *(a10 + 608);
  *(a10 + 608) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(a10 + 600);
  *(a10 + 600) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  ausdk::AUBase::~AUBase(a10);
  _Unwind_Resume(a1);
}

AudioComponent ausdk::AUBaseProcessMultipleFactory<AUSoundIsolation>::Register(UInt32 a1)
{
  if (_os_feature_enabled_impl())
  {
LABEL_2:
    qmemcpy(&inDesc, "xfuasiovlppa", 12);
    inDesc.componentFlags = a1;
    inDesc.componentFlagsMask = 0;
    v2 = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v2>::Factory;
  }

  else
  {
    if (MGGetBoolAnswer())
    {
      v3 = getenv("FEATUREFLAGS_ENABLED");
      if (v3)
      {
        v4 = v3;
        v5 = strlen(v3);
        if (v5 >= 63)
        {
          v6 = &v4[v5];
          v7 = v4;
          do
          {
            v8 = memchr(v7, 65, v5 - 62);
            if (!v8)
            {
              break;
            }

            v9 = v8;
            if (!memcmp(v8, "AudioDSPGraph/AudioDSPGraphFramework_AudioDSP_AUSoundIsolation:", 0x3FuLL))
            {
              if (v9 != v6 && v9 - v4 != -1)
              {
                goto LABEL_2;
              }

              break;
            }

            v7 = v9 + 1;
            v5 = v6 - (v9 + 1);
          }

          while (v5 >= 63);
        }
      }
    }

    qmemcpy(&inDesc, "xfuasiovlppa", 12);
    inDesc.componentFlags = a1;
    inDesc.componentFlagsMask = 0;
    v2 = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v1>::Factory;
  }

  return AudioComponentRegister(&inDesc, @"Apple: AUSoundIsolation", 0x10600u, v2);
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v1>::Factory()
{
  result = malloc_type_malloc(0x330uLL, 0x10F304098E692A3uLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v1>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v1>::Destruct;
  return result;
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v2>::Factory()
{
  result = malloc_type_malloc(0x318uLL, 0x10F3040A6E06CCCuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v2>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUSoundIsolation_v2>::Destruct;
  return result;
}

double AUsubMAEC::Kalman::initKalman(uint64_t a1, _DWORD *a2, char a3)
{
  *(a1 + 48) = a2[12];
  *(a1 + 52) = a2[2];
  *(a1 + 56) = a2[3];
  v5 = a2[6];
  *(a1 + 60) = v5;
  *(a1 + 64) = a2[13];
  *(a1 + 68) = a2[14];
  v6 = a2[15];
  *(a1 + 72) = v6;
  *(a1 + 76) = a2[16];
  *(a1 + 80) = a2[7];
  *(a1 + 272) = a2[9];
  if (a3)
  {
    v7 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = allocMatrix(v5, v6);
    v7 = allocMatrix(*(a1 + 60), *(a1 + 72));
    v5 = *(a1 + 60);
    v6 = *(a1 + 72);
  }

  *(a1 + 8) = v7;
  *(a1 + 16) = allocMatrix(v5, v6);
  *(a1 + 24) = allocMatrix(*(a1 + 60), *(a1 + 72));
  v8 = 4 * *(a1 + 60);
  v9 = malloc_type_malloc(v8, 0x8E925C18uLL);
  v10 = v9;
  if (!v9 && v8)
  {
    goto LABEL_54;
  }

  bzero(v9, v8);
  *(a1 + 88) = v10;
  *(a1 + 96) = xmmword_1DE09DF90;
  v11 = *(a1 + 76);
  *(a1 + 112) = v11;
  v12 = 4 * v11;
  v13 = 4 * v11;
  v14 = malloc_type_malloc(4 * v11, 0x9E73AD77uLL);
  v15 = v14;
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_54;
    }
  }

  bzero(v14, v12);
  *(a1 + 120) = v15;
  *v15 = *(a1 + 48) * *(a1 + 64);
  if (*(a1 + 112) >= 2)
  {
    v15[1] = *(a1 + 48) * *(a1 + 68);
    if (*(a1 + 112) >= 3)
    {
      v15[2] = *(a1 + 48) * *(a1 + 68);
    }
  }

  v16 = malloc_type_malloc(v12, 0x94568E96uLL);
  v17 = v16;
  if (v13)
  {
    if (!v16)
    {
      goto LABEL_54;
    }
  }

  bzero(v16, v12);
  *(a1 + 128) = v17;
  *(a1 + 136) = 0;
  if (*(a1 + 112) < 1)
  {
    v22 = 0;
  }

  else
  {
    v18 = 0;
    v19 = *(a1 + 120);
    do
    {
      v17[v18] = *(a1 + 272) * *(v19 + 4 * v18);
      v20 = *(a1 + 140);
      v21 = *(v19 + 4 * v18) + *(a1 + 136);
      *(a1 + 136) = v21;
      *(a1 + 140) = v17[v18++] + v20;
    }

    while (v18 < *(a1 + 112));
    v22 = 4 * v21;
  }

  v23 = malloc_type_malloc(v22, 0x3D781775uLL);
  if (!v23 && v22 != 0)
  {
    goto LABEL_54;
  }

  v25 = v23;
  bzero(v23, v22);
  *(a1 + 144) = v25;
  v26 = *(a1 + 112);
  v27 = *(a1 + 272);
  if (v26 >= 1)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = 0;
    v31 = *(a1 + 120);
    v32 = *(a1 + 128);
    do
    {
      v33 = *(v31 + 4 * v28);
      if (v33 / v27 >= 1)
      {
        v34 = 0;
        do
        {
          if (v27 >= 1)
          {
            v35 = 0;
            v29 = v29;
            do
            {
              v25[v29++] = v30 + v35 + *(v31 + 4 * v28) * v35 + v34 * v27;
              ++v35;
              v27 = *(a1 + 272);
            }

            while (v35 < v27);
            v33 = *(v31 + 4 * v28);
          }

          ++v34;
        }

        while (v34 < v33 / v27);
        v26 = *(a1 + 112);
      }

      v30 += *(v32 + 4 * v28++);
    }

    while (v28 < v26);
  }

  *(a1 + 32) = allocMatrix(*(a1 + 60), v27 * *(a1 + 136));
  *(a1 + 40) = allocMatrix(*(a1 + 60), *(a1 + 272) * *(a1 + 136));
  v36 = *(a1 + 60);
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = *(a1 + 136);
    do
    {
      if (v38 >= 1)
      {
        v39 = *(*(a1 + 32) + 8 * v37);
        v40 = *(a1 + 144);
        v41 = v38;
        do
        {
          v42 = *v40++;
          *(v39 + 4 * v42) = 1008981770;
          --v41;
        }

        while (v41);
      }

      ++v37;
    }

    while (v37 != v36);
  }

  v43 = 8 * *(a1 + 72);
  v44 = malloc_type_malloc(v43, 0x214076ABuLL);
  v45 = v44 || v43 == 0;
  if (!v45 || (v46 = v44, bzero(v44, v43), v47 = &v46[4 * *(a1 + 72)], *(a1 + 152) = v46, *(a1 + 160) = v47, v48 = malloc_type_malloc(v43, 0xDCA4B22BuLL), v49 = v48, v43) && !v48 || (bzero(v48, v43), v50 = &v49[4 * *(a1 + 72)], *(a1 + 168) = v49, *(a1 + 176) = v50, v51 = 8 * *(a1 + 136), v52 = malloc_type_malloc(v51, 0xD974F10AuLL), (v53 = v52) == 0) && v51 || (bzero(v52, v51), v54 = &v53[4 * *(a1 + 136)], *(a1 + 184) = v53, *(a1 + 192) = v54, v55 = malloc_type_malloc(v51, 0x961E7108uLL), v56 = v55, v51) && !v55 || (bzero(v55, v51), v57 = *(a1 + 140), v58 = &v56[4 * *(a1 + 136)], *(a1 + 200) = v56, *(a1 + 208) = v58, v59 = 8 * v57, v60 = malloc_type_malloc(8 * v57, 0xE58BCC0AuLL), (v61 = v60) == 0) && v59)
  {
LABEL_54:
    exception = __cxa_allocate_exception(8uLL);
    v65 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v60, v59);
  v62 = &v61[4 * *(a1 + 140)];
  *(a1 + 216) = v61;
  *(a1 + 224) = v62;
  *(a1 + 232) = xmmword_1DE09DFA0;
  *(a1 + 248) = 1148846080;
  *(a1 + 252) = *(a1 + 96) * 1000.0;
  result = 2.0615843e11;
  *(a1 + 256) = xmmword_1DE09DFB0;
  return result;
}

void AUsubMAEC::Kalman::removeKalman(AUsubMAEC::Kalman *this, char a2)
{
  freeMatrix(*(this + 15), this + 2);
  freeMatrix(*(this + 15), this + 3);
  if ((a2 & 1) == 0)
  {
    freeMatrix(*(this + 15), this);
    freeMatrix(*(this + 15), this + 1);
  }

  freeMatrix(*(this + 15), this + 4);
  freeMatrix(*(this + 15), this + 5);
  v4 = *(this + 11);
  if (v4)
  {
    free(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 15);
  if (v5)
  {
    free(v5);
    *(this + 15) = 0;
  }

  v6 = *(this + 16);
  if (v6)
  {
    free(v6);
    *(this + 16) = 0;
  }

  v7 = *(this + 18);
  if (v7)
  {
    free(v7);
    *(this + 18) = 0;
  }

  v8 = *(this + 19);
  if (v8)
  {
    free(v8);
    *(this + 19) = 0;
  }

  v9 = *(this + 21);
  if (v9)
  {
    free(v9);
    *(this + 21) = 0;
  }

  v10 = *(this + 23);
  if (v10)
  {
    free(v10);
    *(this + 23) = 0;
  }

  v11 = *(this + 25);
  if (v11)
  {
    free(v11);
    *(this + 25) = 0;
  }

  v12 = *(this + 27);
  if (v12)
  {
    free(v12);
    *(this + 27) = 0;
  }
}

void AUsubMAEC::Kalman::rearrangeX(AUsubMAEC::Kalman *this, AUsubMAEC::dftBuffer *a2, int a3, float *a4, float *a5)
{
  v49[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v10 = (v49 - ((v9 + 15) & 0xFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v16 = (v49 - ((v15 + 15) & 0xFFFFFFFF0));
  if (v14 >= 1)
  {
    v17 = *(a2 + 4);
    v18 = *(this + 15);
    v19 = v10;
    do
    {
      v20 = *v17++;
      *v19++ = a3 + 1 + v18 * v20;
      --v14;
    }

    while (v14);
  }

  LODWORD(v21) = *(this + 12);
  v49[0] = v12;
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = a4;
    v24 = v12;
    do
    {
      v25 = *(*(a2 + 1) + 8 * v22);
      vDSP_vgathr(*(*a2 + 8 * v22), v10, 1, v23, v21, *(this + 16));
      vDSP_vgathr(v25, v10, 1, v24, *(this + 12), *(this + 16));
      ++v22;
      v21 = *(this + 12);
      ++v24;
      ++v23;
    }

    while (v22 < v21);
    v13 = *(this + 17);
  }

  if (v13)
  {
    v26 = *(this + 16);
    if (v13 >= 1)
    {
      v27 = *(this + 15);
      v28 = a3 - 1;
      if (v27 - 1 > a3)
      {
        v28 = a3 + 1;
      }

      v29 = *(a2 + 5);
      v30 = v28 + 1;
      v31 = v13;
      v32 = v16;
      do
      {
        v33 = *v29++;
        *v32++ = v30 + v33 * v27;
        --v31;
      }

      while (v31);
    }

    v34 = v26 * v21;
    if (v21 >= 1)
    {
      v35 = 0;
      v36 = &a4[v34];
      v37 = (v49[0] + 4 * v34);
      do
      {
        v38 = *(*(a2 + 1) + 8 * v35);
        vDSP_vgathr(*(*a2 + 8 * v35), v16, 1, v36, v21, *(this + 17));
        vDSP_vgathr(v38, v16, 1, v37, *(this + 12), *(this + 17));
        ++v35;
        v21 = *(this + 12);
        ++v37;
        ++v36;
      }

      while (v35 < v21);
      v13 = *(this + 17);
    }

    if (a3 < 1 || *(this + 15) - 1 <= a3)
    {
      if (a3)
      {
        --a3;
      }

      else
      {
        a3 = 3;
      }
    }

    if (v13 >= 1)
    {
      v39 = *(a2 + 5);
      v40 = *(this + 15);
      v41 = v13;
      v42 = v16;
      do
      {
        v43 = *v39++;
        *v42++ = a3 + v40 * v43;
        --v41;
      }

      while (v41);
    }

    if (v21 >= 1)
    {
      v44 = 0;
      v45 = v34 + v13 * v21;
      v46 = &a4[v45];
      v47 = (v49[0] + 4 * v45);
      do
      {
        v48 = *(*(a2 + 1) + 8 * v44);
        vDSP_vgathr(*(*a2 + 8 * v44), v16, 1, v46, v21, *(this + 17));
        vDSP_vgathr(v48, v16, 1, v47, *(this + 12), *(this + 17));
        ++v44;
        ++v47;
        ++v46;
        v21 = *(this + 12);
      }

      while (v44 < v21);
    }
  }
}

void AUsubMAEC::Kalman::runKFFilter(AUsubMAEC::Kalman *this, AUsubMAEC::dftBuffer *a2, DSPSplitComplex a3, DSPSplitComplex a4, int a5, int a6)
{
  imagp = a4.imagp;
  realp = a4.realp;
  v9 = a3.imagp;
  v10 = a3.realp;
  LODWORD(v12) = *(this + 15);
  if (a5)
  {
    if (v12 < 1)
    {
LABEL_11:
      v12 = v12;
      goto LABEL_12;
    }

    v14 = 0;
    do
    {
      AUsubMAEC::Kalman::rearrangeX(this, a2, v14, *(*this + 8 * v14), *(*(this + 1) + 8 * v14));
      ++v14;
      v12 = *(this + 15);
    }

    while (v14 < v12);
  }

  if (v12 <= 0)
  {
    goto LABEL_11;
  }

  v15 = 0;
  v16 = v9;
  v17 = imagp;
  do
  {
    v18 = *(*(this + 1) + 8 * v15);
    __A.realp = *(*this + 8 * v15);
    __A.imagp = v18;
    v19 = *(*(this + 3) + 8 * v15);
    __B.realp = *(*(this + 2) + 8 * v15);
    __B.imagp = v19;
    __C.realp = v10;
    __C.imagp = v16;
    vDSP_zdotpr(&__A, 1, &__B, 1, &__C, *(this + 18));
    if (a6)
    {
      v20.realp = realp;
      v20.imagp = v17;
      vDSP_zdotpr(&__A, 2, &__B, 2, &v20, *(this + 18) / *(this + 12));
    }

    ++v15;
    ++v17;
    v12 = *(this + 15);
    ++realp;
    ++v16;
    ++v10;
  }

  while (v15 < v12);
LABEL_12:
  *v9 = 0.0;
  v9[v12 - 1] = 0.0;
  if (a6)
  {
    *imagp = 0.0;
    imagp[v12 - 1] = 0.0;
  }
}

uint64_t AUsubMAEC::Kalman::adaptKalmanFilter(uint64_t this, DSPSplitComplex a2, float *a3)
{
  imagp = a2.imagp;
  realp = a2.realp;
  v5 = this;
  v6 = *(this + 272);
  if (v6 == 1)
  {
    *(this + 100) = *(this + 96) + *(this + 96);
    if (*(this + 60) < 1)
    {
      return this;
    }

    v7 = 0;
    LODWORD(v8) = *(this + 136);
    do
    {
      v9 = *(*v5 + 8 * v7);
      v10 = *(*(v5 + 8) + 8 * v7);
      v11 = *(*(v5 + 16) + 8 * v7);
      v12 = *(*(v5 + 24) + 8 * v7);
      v13 = *(*(v5 + 32) + 8 * v7);
      v14 = *(*(v5 + 40) + 8 * v7);
      MEMORY[0x1E12BE940](v13, 1, v5 + 108, v13, 1, v8);
      MEMORY[0x1E12BE940](v14, 1, v5 + 108, v14, 1, *(v5 + 136));
      MEMORY[0x1E12BE940](v11, 1, v5 + 104, v11, 1, *(v5 + 136));
      this = MEMORY[0x1E12BE940](v12, 1, v5 + 104, v12, 1, *(v5 + 136));
      v8 = *(v5 + 136);
      if (v8 < 1)
      {
        v17 = 0.0;
      }

      else
      {
        v15 = v13;
        v16 = *(v5 + 136);
        do
        {
          *v15 = *v15 + *(v5 + 100);
          ++v15;
          --v16;
        }

        while (v16);
        v17 = 0.0;
        v18 = v9;
        v19 = v10;
        v20 = v13;
        v21 = v8;
        do
        {
          v22 = *v18++;
          v23 = v22;
          v24 = *v19++;
          v25 = (v24 * v24) + (v23 * v23);
          v26 = *v20++;
          v17 = v17 + (v25 * v26);
          --v21;
        }

        while (v21);
      }

      if (v8 >= 1)
      {
        v27 = (v17 + *(*(v5 + 88) + 4 * v7)) + 1.0e-20;
        v28 = a3[v7] * (1.0 / v27);
        v29 = v13;
        v30 = v9;
        v31 = *(v5 + 152);
        v32 = *(v5 + 160);
        v33 = v31;
        v34 = v10;
        v35 = v32;
        v36 = v8;
        do
        {
          v37 = *v30++;
          *v33++ = v28 * (*v29 * v37);
          v38 = *v29++;
          v39 = v38;
          v40 = *v34++;
          *v35++ = v28 * -(v39 * v40);
          --v36;
        }

        while (v36);
        v41 = v31;
        v42 = *(v5 + 200);
        v43 = *(v5 + 208);
        v44 = v32;
        v45 = v42;
        v46 = v43;
        v47 = v8;
        do
        {
          *v45++ = (*v41 * realp[v7]) - (*v44 * imagp[v7]);
          v48 = *v41++;
          v49 = v48;
          v50 = *v44++;
          *v46++ = (v50 * realp[v7]) + (v49 * imagp[v7]);
          --v47;
        }

        while (v47);
        v51 = v42;
        v52 = v8;
        do
        {
          v53 = *v51++;
          *v11 = *v11 + v53;
          ++v11;
          v54 = *v43++;
          *v12 = *v12 + v54;
          ++v12;
          --v52;
        }

        while (v52);
        v55 = v42;
        v56 = v8;
        do
        {
          v57 = *v31++;
          v58 = v57;
          v59 = *v9++;
          v60 = v59;
          v61 = *v32++;
          v62 = v61;
          v63 = *v10++;
          *v55++ = (v58 * v60) - (v62 * v63);
          --v56;
        }

        while (v56);
        v64 = v8;
        do
        {
          v65 = *v42++;
          *v13 = *v13 - (v65 * *v13);
          ++v13;
          *v14++ = 0;
          --v64;
        }

        while (v64);
      }

      ++v7;
    }

    while (v7 < *(v5 + 60));
    v6 = *(v5 + 272);
  }

  if (v6 == 2)
  {
    *(v5 + 100) = *(v5 + 96) + *(v5 + 96);
    if (*(v5 + 60) < 1)
    {
      return this;
    }

    v66 = 0;
    v193 = *(v5 + 208);
    v195 = *(v5 + 200);
    do
    {
      v67 = *(*v5 + 8 * v66);
      v68 = *(*(v5 + 8) + 8 * v66);
      v69 = *(*(v5 + 16) + 8 * v66);
      v70 = *(*(v5 + 24) + 8 * v66);
      v71 = *(*(v5 + 32) + 8 * v66);
      v72 = *(*(v5 + 40) + 8 * v66);
      MEMORY[0x1E12BE940](v71, 1, v5 + 108, v71, 1, *(v5 + 272) * *(v5 + 136));
      v208 = v72;
      this = MEMORY[0x1E12BE940](v72, 1, v5 + 108, v72, 1, *(v5 + 272) * *(v5 + 136));
      v73 = *(v5 + 136);
      if (v73 >= 1)
      {
        v74 = *(v5 + 144);
        do
        {
          v75 = *v74++;
          *(v71 + 4 * v75) = *(v5 + 100) + *(v71 + 4 * v75);
          --v73;
        }

        while (v73);
      }

      v216 = *(v5 + 112);
      if (v216 >= 1)
      {
        v197 = v69;
        v200 = v70;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = *(*(v5 + 88) + 4 * v66) + 1.0e-20;
        v211 = *(v5 + 128);
        v213 = *(v5 + 120);
        v80 = v67 + 4;
        do
        {
          v81 = *(v213 + 4 * v76);
          if (v81 >= 1)
          {
            v82 = 0;
            v83 = 0;
            v84 = v81 + v77;
            v85 = *(v5 + 272);
            v86 = v72 + 4 * v84;
            v87 = v80 + 4 * v78;
            v88 = v72 + 4 * v77;
            v89 = v195 + 4 * v78;
            v90 = v71 + 4 * v77;
            v91 = v193 + 4 * v78;
            v92 = v68 + 4 * v78;
            do
            {
              v93 = (v89 + v82);
              *v93 = ((*(v87 + v82) * *(v90 + v82 + 4)) + (*(v87 + v82 - 4) * *(v90 + v82))) - (*(v92 + v82 + 4) * *(v88 + v82 + 4));
              v94 = (v91 + v82);
              *v94 = ((*(v87 + v82) * *(v88 + v82 + 4)) + (*(v92 + v82) * *(v90 + v82))) + (*(v92 + v82 + 4) * *(v90 + v82 + 4));
              v93[1] = ((*(v87 + v82 - 4) * *(v71 + 4 * v84 + v82)) - (*(v92 + v82) * *(v86 + v82))) + (*(v87 + v82) * *(v71 + 4 + 4 * v84 + v82));
              v95 = ((*(v92 + v82) * *(v71 + 4 * v84 + v82)) + (*(v87 + v82 - 4) * *(v86 + v82))) + (*(v92 + v82 + 4) * *(v71 + 4 + 4 * v84 + v82));
              v94[1] = v95;
              v79 = (((v79 + (*(v89 + v82) * *(v87 + v82 - 4))) + (*(v91 + v82) * *(v92 + v82))) + (*(v89 + v82 + 4) * *(v87 + v82))) + (v95 * *(v92 + v82 + 4));
              v83 += v85;
              v82 += 4 * v85;
            }

            while (v83 < v81);
          }

          v78 += v81;
          v77 += *(v211 + 4 * v76++);
        }

        while (v76 != v216);
        v96 = 0;
        v218 = 0;
        v97 = 0;
        v98 = (1.0 / v79) * a3[v66];
        v204 = v72 + 4;
        v206 = v71 + 4;
        v198 = v197 + 4;
        v201 = v200 + 4;
        do
        {
          this = *(v213 + 4 * v96);
          if (this >= 1)
          {
            v99 = 0;
            v100 = 0;
            v101 = v208 + 4 * (this + v218);
            v102 = *(v5 + 272);
            v103 = v195 + 4 + 4 * v97;
            v104 = v206 + 4 * (this + v218);
            v105 = *(v5 + 160) + 4;
            v106 = *(v5 + 152) + 4;
            v107 = v206 + 4 * v218;
            v108 = v201 + 4 * v97;
            v109 = v198 + 4 * v97;
            v110 = v193 + 4 + 4 * v97;
            do
            {
              v111 = (v106 + v99);
              *(v111 - 1) = v98 * *(v195 + 4 * v97 + v99);
              v112 = -(*(v193 + 4 * v97 + v99) * v98);
              v113 = (v105 + v99);
              *(v113 - 1) = v112;
              v114 = (v109 + v99);
              *(v114 - 1) = ((*(v106 + v99 - 4) * realp[v66]) + (*(v5 + 104) * *(v109 + v99 - 4))) - (v112 * imagp[v66]);
              v115 = (v108 + v99);
              *(v115 - 1) = ((*(v105 + v99 - 4) * realp[v66]) + (*(v5 + 104) * *(v108 + v99 - 4))) + (*(v106 + v99 - 4) * imagp[v66]);
              v116 = (v107 + v99);
              *(v116 - 1) = (*(v107 + v99 - 4) - (*(v106 + v99 - 4) * *(v195 + 4 * v97 + v99))) + (*(v105 + v99 - 4) * *(v193 + 4 * v97 + v99));
              v117 = (v104 + v99);
              *(v117 - 1) = (*(v104 + v99 - 4) - (*(v106 + v99 - 4) * *(v103 + v99))) + (*(v105 + v99 - 4) * *(v110 + v99));
              *(v101 + v99) = (*(v101 + v99) - (*(v106 + v99 - 4) * *(v110 + v99))) - (*(v105 + v99 - 4) * *(v103 + v99));
              *v116 = *(v104 + v99 - 4);
              *(v204 + 4 * v218 + v99) = -*(v101 + v99);
              *v111 = v98 * *(v103 + v99);
              v118 = -(*(v110 + v99) * v98);
              *v113 = v118;
              *v114 = ((*(v106 + v99) * realp[v66]) + (*(v5 + 104) * *(v109 + v99))) - (v118 * imagp[v66]);
              *v115 = ((*(v105 + v99) * realp[v66]) + (*(v5 + 104) * *(v108 + v99))) + (*(v106 + v99) * imagp[v66]);
              *v117 = (*(v104 + v99) - (*(v106 + v99) * *(v103 + v99))) + (*(v105 + v99) * *(v110 + v99));
              v100 += v102;
              v99 += 4 * v102;
            }

            while (v100 < this);
          }

          v97 += this;
          v218 += *(v211 + 4 * v96++);
        }

        while (v96 != v216);
      }

      ++v66;
    }

    while (v66 < *(v5 + 60));
    v6 = *(v5 + 272);
  }

  if (v6 == 4)
  {
    *(v5 + 100) = *(v5 + 96) + *(v5 + 96);
    if (*(v5 + 60) >= 1)
    {
      v119 = 0;
      v190 = *(v5 + 208) + 12;
      v191 = *(v5 + 200) + 12;
      do
      {
        v120 = *(*v5 + 8 * v119);
        v121 = *(*(v5 + 8) + 8 * v119);
        v122 = *(*(v5 + 16) + 8 * v119);
        v123 = *(*(v5 + 24) + 8 * v119);
        v124 = *(*(v5 + 32) + 8 * v119);
        v125 = *(*(v5 + 40) + 8 * v119);
        MEMORY[0x1E12BE940](v124, 1, v5 + 108, v124, 1, *(v5 + 272) * *(v5 + 136));
        this = MEMORY[0x1E12BE940](v125, 1, v5 + 108, v125, 1, *(v5 + 272) * *(v5 + 136));
        v126 = *(v5 + 136);
        if (v126 >= 1)
        {
          v127 = *(v5 + 144);
          do
          {
            v128 = *v127++;
            *(v124 + 4 * v128) = *(v5 + 100) + *(v124 + 4 * v128);
            --v126;
          }

          while (v126);
        }

        v194 = *(v5 + 112);
        if (v194 >= 1)
        {
          v129 = 0;
          v130 = 0;
          v131 = 0;
          v132 = *(*(v5 + 88) + 4 * v119) + 1.0e-20;
          v219 = *(v5 + 120);
          v217 = *(v5 + 128);
          v202 = v125;
          v214 = v125 + 4;
          v209 = v121 + 12;
          do
          {
            v133 = *(v219 + 4 * v129);
            if (v133 >= 1)
            {
              this = 0;
              v134 = 0;
              v135 = v214 + 4 * v130;
              v136 = *(v5 + 272);
              v137 = v124 + 4 * v130;
              v138 = v120 + 12 + 4 * v131;
              v139 = v209 + 4 * v131;
              v140 = v191 + 4 * v131;
              v141 = v133;
              v142 = v190 + 4 * v131;
              do
              {
                v143 = (v140 + this);
                *(v143 - 3) = ((((((*(v138 + this - 8) * *(v137 + this + 4)) + (*(v138 + this - 12) * *(v137 + this))) - (*(v139 + this - 8) * *(v135 + this))) + (*(v138 + this - 4) * *(v137 + this + 8))) - (*(v139 + this - 4) * *(v135 + this + 4))) + (*(v138 + this) * *(v137 + this + 12))) - (*(v139 + this) * *(v135 + this + 8));
                v144 = (v142 + this);
                *(v144 - 3) = ((((((*(v138 + this - 8) * *(v135 + this)) + (*(v139 + this - 12) * *(v137 + this))) + (*(v139 + this - 8) * *(v137 + this + 4))) + (*(v138 + this - 4) * *(v135 + this + 4))) + (*(v139 + this - 4) * *(v137 + this + 8))) + (*(v138 + this) * *(v135 + this + 8))) + (*(v139 + this) * *(v137 + this + 12));
                v145 = (v135 + this + 4 * v133 - 4);
                v146 = (v137 + this + v141 * 4);
                *(v143 - 2) = ((((((*(v138 + this - 12) * *(v137 + this + 4 * v133)) - (*(v139 + this - 12) * *v145)) + (*(v138 + this - 8) * v146[1])) + (*(v138 + this - 4) * v146[2])) - (*(v139 + this - 4) * v145[2])) + (*(v138 + this) * v146[3])) - (*(v139 + this) * v145[3]);
                *(v144 - 2) = ((((((*(v139 + this - 12) * *(v137 + this + 4 * v133)) + (*(v138 + this - 12) * *v145)) + (*(v139 + this - 8) * v146[1])) + (*(v138 + this - 4) * v145[2])) + (*(v139 + this - 4) * v146[2])) + (*(v138 + this) * v145[3])) + (*(v139 + this) * v146[3]);
                v147 = &v146[v141];
                v148 = &v145[v141];
                *(v143 - 1) = ((((((*(v138 + this - 12) * v146[v133]) - (*(v139 + this - 12) * v145[v133])) + (*(v138 + this - 8) * v146[v141 + 1])) - (*(v139 + this - 8) * v145[v141 + 1])) + (*(v138 + this - 4) * v146[v141 + 2])) + (*(v138 + this) * v146[v141 + 3])) - (*(v139 + this) * v145[v141 + 3]);
                *(v144 - 1) = ((((((*(v139 + this - 12) * v146[v133]) + (*(v138 + this - 12) * v145[v133])) + (*(v138 + this - 8) * v145[v141 + 1])) + (*(v139 + this - 8) * v146[v141 + 1])) + (*(v139 + this - 4) * v146[v141 + 2])) + (*(v138 + this) * v145[v141 + 3])) + (*(v139 + this) * v146[v141 + 3]);
                v149 = v146[v133 + v133];
                v150 = &v146[v141 + v141];
                v151 = -(*(v139 + this - 12) * v145[v133 + v133]);
                v152 = &v145[v141 + v141];
                *v143 = (((((v151 + (*(v138 + this - 12) * v149)) + (*(v138 + this - 8) * v150[1])) - (*(v139 + this - 8) * v152[1])) + (*(v138 + this - 4) * v150[2])) - (*(v139 + this - 4) * v152[2])) + (*(v138 + this) * v150[3]);
                v153 = ((((((*(v139 + this - 12) * v147[v133]) + (*(v138 + this - 12) * v148[v133])) + (*(v138 + this - 8) * v152[1])) + (*(v139 + this - 8) * v150[1])) + (*(v138 + this - 4) * v152[2])) + (*(v139 + this - 4) * v150[2])) + (*(v139 + this) * v150[3]);
                *v144 = v153;
                v132 = (((((((v132 + (*(v140 + this - 12) * *(v138 + this - 12))) + (*(v142 + this - 12) * *(v139 + this - 12))) + (*(v140 + this - 8) * *(v138 + this - 8))) + (*(v142 + this - 8) * *(v139 + this - 8))) + (*(v140 + this - 4) * *(v138 + this - 4))) + (*(v142 + this - 4) * *(v139 + this - 4))) + (*(v140 + this) * *(v138 + this))) + (v153 * *(v139 + this));
                v134 += v136;
                this += 4 * v136;
              }

              while (v134 < v133);
            }

            v131 += v133;
            v130 += *(v217 + 4 * v129++);
          }

          while (v129 != v194);
          v154 = 0;
          v199 = 0;
          v196 = 0;
          v155 = (1.0 / v132) * a3[v119];
          v189 = *(v5 + 120);
          v187 = v202 + 8;
          v188 = *(v5 + 128);
          v185 = v202 + 12;
          v186 = v124 + 12;
          v183 = v122 + 12;
          v184 = v123 + 12;
          do
          {
            v192 = v154;
            v156 = *(v189 + 4 * v154);
            if (v156 >= 1)
            {
              v157 = 0;
              v158 = 0;
              v159 = v199 + 2 * v156;
              v160 = *(v5 + 272);
              v220 = v187 + 4 * (v159 + v156);
              v215 = v191 + 4 * v196;
              v212 = v186 + 4 * (v159 + v156);
              v207 = *(v5 + 152) + 12;
              v210 = *(v5 + 160) + 12;
              v203 = v186 + 4 * v159;
              v205 = v185 + 4 * v159;
              v161 = v185 + 4 * (v156 + v199);
              v162 = v186 + 4 * (v156 + v199);
              v163 = v186 + 4 * v199;
              this = v184 + 4 * v196;
              v164 = v183 + 4 * v196;
              v165 = v190 + 4 * v196;
              do
              {
                v166 = (v207 + v157);
                *(v166 - 3) = v155 * *(v215 + v157 - 12);
                v167 = -(*(v165 + v157 - 12) * v155);
                v168 = (v210 + v157);
                *(v168 - 3) = v167;
                v169 = (v164 + v157);
                *(v169 - 3) = ((*(v207 + v157 - 12) * realp[v119]) + (*(v5 + 104) * *(v164 + v157 - 12))) - (v167 * imagp[v119]);
                v170 = (this + v157);
                *(v170 - 3) = ((*(v210 + v157 - 12) * realp[v119]) + (*(v5 + 104) * *(this + v157 - 12))) + (*(v207 + v157 - 12) * imagp[v119]);
                v171 = (v163 + v157);
                v172 = (v162 + v157);
                *(v171 - 3) = (*(v163 + v157 - 12) - (*(v207 + v157 - 12) * *(v215 + v157 - 12))) + (*(v210 + v157 - 12) * *(v165 + v157 - 12));
                *(v172 - 3) = (*(v162 + v157 - 12) - (*(v207 + v157 - 12) * *(v215 + v157 - 8))) + (*(v210 + v157 - 12) * *(v165 + v157 - 8));
                v173 = (v161 + v157);
                *(v173 - 3) = (*(v161 + v157 - 12) - (*(v207 + v157 - 12) * *(v165 + v157 - 8))) - (*(v210 + v157 - 12) * *(v215 + v157 - 8));
                *(v171 - 2) = *(v162 + v157 - 12);
                v174 = (v185 + 4 * v199 + v157);
                v175 = (v203 + v157);
                *(v174 - 2) = -*(v161 + v157 - 12);
                *(v175 - 3) = (*(v175 - 3) - (*(v207 + v157 - 12) * *(v215 + v157 - 4))) + (*(v210 + v157 - 12) * *(v165 + v157 - 4));
                v176 = (v205 + v157);
                *(v176 - 3) = (*(v205 + v157 - 12) - (*(v207 + v157 - 12) * *(v165 + v157 - 4))) - (*(v210 + v157 - 12) * *(v215 + v157 - 4));
                *(v171 - 1) = *(v203 + v157 - 12);
                *(v174 - 1) = -*(v205 + v157 - 12);
                v177 = (v212 + v157);
                *(v177 - 3) = (*(v177 - 3) - (*(v207 + v157 - 12) * *(v215 + v157))) + (*(v210 + v157 - 12) * *(v165 + v157));
                v178 = (v220 + v157);
                *(v178 - 2) = (*(v178 - 2) - (*(v207 + v157 - 12) * *(v165 + v157))) - (*(v210 + v157 - 12) * *(v215 + v157));
                *v171 = *(v212 + v157 - 12);
                *v174 = -*(v220 + v157 - 8);
                *(v166 - 2) = v155 * *(v215 + v157 - 8);
                v179 = -(*(v165 + v157 - 8) * v155);
                *(v168 - 2) = v179;
                *(v169 - 2) = ((*(v207 + v157 - 8) * realp[v119]) + (*(v5 + 104) * *(v164 + v157 - 8))) - (v179 * imagp[v119]);
                *(v170 - 2) = ((*(v210 + v157 - 8) * realp[v119]) + (*(v5 + 104) * *(this + v157 - 8))) + (*(v207 + v157 - 8) * imagp[v119]);
                *(v172 - 2) = (*(v162 + v157 - 8) - (*(v207 + v157 - 8) * *(v215 + v157 - 8))) + (*(v210 + v157 - 8) * *(v165 + v157 - 8));
                *(v175 - 2) = (*(v175 - 2) - (*(v207 + v157 - 8) * *(v215 + v157 - 4))) + (*(v210 + v157 - 8) * *(v165 + v157 - 4));
                *(v176 - 2) = (*(v176 - 2) - (*(v207 + v157 - 8) * *(v165 + v157 - 4))) - (*(v210 + v157 - 8) * *(v215 + v157 - 4));
                *(v172 - 1) = *(v203 + v157 - 8);
                *(v173 - 1) = -*(v205 + v157 - 8);
                *(v177 - 2) = (*(v177 - 2) - (*(v207 + v157 - 8) * *(v215 + v157))) + (*(v210 + v157 - 8) * *(v165 + v157));
                *(v178 - 1) = (*(v178 - 1) - (*(v207 + v157 - 8) * *(v165 + v157))) - (*(v210 + v157 - 8) * *(v215 + v157));
                *v172 = *(v212 + v157 - 8);
                *v173 = -*(v220 + v157 - 4);
                *(v166 - 1) = v155 * *(v215 + v157 - 4);
                v180 = -(*(v165 + v157 - 4) * v155);
                *(v168 - 1) = v180;
                *(v169 - 1) = ((*(v207 + v157 - 4) * realp[v119]) + (*(v5 + 104) * *(v164 + v157 - 4))) - (v180 * imagp[v119]);
                *(v170 - 1) = ((*(v210 + v157 - 4) * realp[v119]) + (*(v5 + 104) * *(this + v157 - 4))) + (*(v207 + v157 - 4) * imagp[v119]);
                *(v175 - 1) = (*(v175 - 1) - (*(v207 + v157 - 4) * *(v215 + v157 - 4))) + (*(v210 + v157 - 4) * *(v165 + v157 - 4));
                *(v177 - 1) = (*(v177 - 1) - (*(v207 + v157 - 4) * *(v215 + v157))) + (*(v210 + v157 - 4) * *(v165 + v157));
                *v178 = (*v178 - (*(v207 + v157 - 4) * *(v165 + v157))) - (*(v210 + v157 - 4) * *(v215 + v157));
                *v175 = *(v212 + v157 - 4);
                *v176 = -*(v220 + v157);
                *v166 = v155 * *(v215 + v157);
                v181 = -(*(v165 + v157) * v155);
                *v168 = v181;
                *v169 = ((*(v207 + v157) * realp[v119]) + (*(v5 + 104) * *(v164 + v157))) - (v181 * imagp[v119]);
                *v170 = ((*(v210 + v157) * realp[v119]) + (*(v5 + 104) * *(this + v157))) + (*(v207 + v157) * imagp[v119]);
                *v177 = (*(v212 + v157) - (*(v207 + v157) * *(v215 + v157))) + (*(v210 + v157) * *(v165 + v157));
                v158 += v160;
                v157 += 4 * v160;
              }

              while (v158 < v156);
            }

            v196 += v156;
            v199 += *(v188 + 4 * v192);
            v154 = v192 + 1;
          }

          while (v192 + 1 != v194);
        }

        ++v119;
      }

      while (v119 < *(v5 + 60));
    }
  }

  return this;
}

uint64_t *ecRMGS::ec_state_reset(ecRMGS *this)
{
  v2 = *(this + 13);
  if (v2 >= 1)
  {
    v21 = *(this + 12);
    v22 = 0;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v21, v2);
  }

  v3 = *(this + 16);
  if (v3 >= 1)
  {
    v21 = *(this + 15);
    v22 = 0;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v21, v3);
  }

  v4 = *(this + 18);
  v5 = *(this + 19) - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = *(this + 21);
  v7 = *(this + 22) - v6;
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  ecutils::fcn_vector_fill<float>(*(this + 24), *(this + 25), 0);
  v9 = *(this + 27);
  v10 = *(this + 28) - v9;
  if (v10 >= 1)
  {
    bzero(v9, v10);
  }

  v11 = *(this + 30);
  v12 = *(this + 31) - v11;
  if (v12 >= 1)
  {
    bzero(v11, v12);
  }

  v13 = *(this + 33);
  v14 = *(this + 34) - v13;
  if (v14 >= 1)
  {
    memset_pattern16(v13, &unk_1DE095DF0, v14);
  }

  v15 = *(this + 39);
  v16 = *(this + 40) - v15;
  if (v16 >= 1)
  {
    bzero(v15, v16);
  }

  v8.i32[0] = 1.0;
  ecutils::fcn_vector_fill<float>(*(this + 45), *(this + 46), v8);
  v17 = *(this + 42);
  v18 = *(this + 43) - v17;
  if (v18 >= 1)
  {
    memset_pattern16(v17, &unk_1DE095DF0, v18);
  }

  ecutils::fcn_vector_fill<float>(*(this + 48), *(this + 49), 0);
  ecutils::fcn_vector_fill<float>(this + 51, 0);
  ecutils::fcn_vector_fill<float>(this + 54, 0);
  ecutils::fcn_vector_fill<float>(this + 57, 0);
  ecutils::fcn_vector_fill<float>(*(this + 63), *(this + 64), 0);
  ecutils::fcn_vector_fill<float>(this + 60, 0);
  ecutils::fcn_vector_fill<float>(this + 66);
  ecutils::fcn_vector_fill<float>(this + 69);
  ecutils::fcn_vector_fill<float>(this + 72);
  ecutils::fcn_vector_fill<float>(this + 75);
  v19.i32[0] = *(this + 4);
  return ecutils::fcn_vector_fill<float>(this + 78, v19);
}

uint64_t ecutils::fcn_vector_fill<float>(uint64_t result, uint64_t a2, int16x4_t a3)
{
  if (a2 != result)
  {
    v3 = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v5 = (result + 24 * v3);
      v6 = *v5;
      v7 = (v5[1] - *v5) >> 2;
      v8 = v7 - 1;
      if (v7 >= 1)
      {
        v9 = (v7 + 3) & 0x7FFFFFFFFFFFFFFCLL;
        v10 = vdupq_n_s64(v8);
        v11 = (v6 + 8);
        v12 = 1;
        do
        {
          v13 = vdupq_n_s64(v12 - 1);
          v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1DE095160)));
          if (vuzp1_s16(v14, a3).u8[0])
          {
            *(v11 - 2) = a3.i32[0];
          }

          if (vuzp1_s16(v14, a3).i8[2])
          {
            *(v11 - 1) = a3.i32[0];
          }

          if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_1DE095150)))).i32[1])
          {
            *v11 = a3.i32[0];
            v11[1] = a3.i32[0];
          }

          v12 += 4;
          v11 += 4;
          v9 -= 4;
        }

        while (v9);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t *ecutils::fcn_vector_fill<float>(uint64_t *result, int16x4_t a2)
{
  v2 = *result;
  if (result[1] != *result)
  {
    v3 = a2.i32[0];
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      a2.i32[0] = v3;
      result = ecutils::fcn_vector_fill<float>(*(v2 + v5), *(v2 + v5 + 8), a2);
      ++v6;
      v2 = *v4;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3) > v6);
  }

  return result;
}

uint64_t *ecutils::fcn_vector_fill<float>(uint64_t *result)
{
  v1 = *result;
  if (result[1] != *result)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = ecutils::fcn_vector_fill<float>((v1 + v3), 0);
      ++v4;
      v1 = *v2;
      v3 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 3) > v4);
  }

  return result;
}

void IR::SharedIRBuses::State::~State(IR::SharedIRBuses::State *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(uint64_t *a1, unint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = (v4 + 16 * a2);
      while (v5 != v12)
      {
        v13 = *(v5 - 1);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v5 -= 2;
      }

      a1[1] = v12;
    }
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v5) >> 4)
    {
      if (!(a2 >> 60))
      {
        v9 = v8 - v4;
        v10 = v9 >> 3;
        if (v9 >> 3 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v14 = &v5[2 * v7];
    do
    {
      v15 = a3[1];
      *v5 = *a3;
      v5[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v5 += 2;
    }

    while (v5 != v14);
    a1[1] = v14;
  }
}

void IR::SharedIRBuses::checkForAppliedChanges(IR::SharedIRBuses *this, int16x4_t a2)
{
  v3 = (this + 96);
  v4 = (*(this + 13) - *(this + 12)) >> 4;
  v5 = *(this + 60);
  if (v4 != v5)
  {
    v19[0] = 0;
    v19[1] = 0;
    std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(this + 12, v5, v19);
    v4 = *(this + 60);
  }

  if (v4 != (*(this + 16) - *(this + 15)) >> 2)
  {
    LODWORD(v19[0]) = 0;
    std::vector<float>::resize(this + 15, v4, v19, a2);
  }

  v6 = atomic_load(this + 144);
  if (v6)
  {
    v7 = atomic_load(this + 146);
    v8 = (v7 & 1) == 0;
    v9 = 48;
    if (v8)
    {
      v9 = 0;
    }

    v10 = (this + v9);
    v11 = v10[1] - *v10;
    if ((*(this + 13) - *(this + 12)) >> 4 >= (v11 >> 4))
    {
      v12 = v11 >> 4;
    }

    else
    {
      v12 = (*(this + 13) - *(this + 12)) >> 4;
    }

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = *v3;
        v15 = *(*v10 + v13);
        v16 = *(*v10 + v13 + 8);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = v14 + v13;
        v18 = *(v17 + 8);
        *v17 = v15;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    atomic_store(0, this + 144);
  }
}

uint64_t IR::SharedIRBuses::reset(IR::SharedIRBuses *this)
{
  caulk::pooled_semaphore_mutex::_lock((this + 148));
  IR::SharedIRBuses::checkForAppliedChanges(this, v2);
  IR::SharedIRBuses::markAllBusesAsNotProcessed(this);
  v3 = *(this + 12);
  for (i = *(this + 13); v3 != i; v3 += 2)
  {
    v5 = *v3;
    if (*v3 && (*(v5 + 8) & 1) == 0)
    {
      IR::DynamicIRProcessor::reset((v5 + 16));
      IR::FixedIntegerDelay<float>::reset();
    }
  }

  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    do
    {
      v8 = *v6;
      if (*v6 && (*(v8 + 8) & 1) == 0)
      {
        IR::DynamicIRProcessor::reset((v8 + 16));
        IR::FixedIntegerDelay<float>::reset();
      }

      v6 += 2;
    }

    while (v6 != v7);
  }

  v9 = *(this + 6);
  for (j = *(this + 7); v9 != j; v9 += 2)
  {
    v11 = *v9;
    if (*v9 && (*(v11 + 8) & 1) == 0)
    {
      IR::DynamicIRProcessor::reset((v11 + 16));
      IR::FixedIntegerDelay<float>::reset();
    }
  }

  atomic_store(1u, this + 145);
  *(this + 245) = 1;

  return caulk::pooled_semaphore_mutex::_unlock((this + 148));
}

uint64_t *IR::SharedIRBuses::markAllBusesAsNotProcessed(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  while (v1 != v2)
  {
    if (*v1)
    {
      *(*v1 + 8) = 0;
    }

    v1 += 16;
  }

  v3 = this[27];
  v4 = this[28];
  while (v3 != v4)
  {
    if (*v3)
    {
      *(*v3 + 8) = 0;
    }

    v3 += 16;
  }

  v5 = this[6];
  v6 = this[7];
  while (v5 != v6)
  {
    if (*v5)
    {
      *(*v5 + 8) = 0;
    }

    v5 += 16;
  }

  return this;
}

void IR::DynamicIRProcessor::~DynamicIRProcessor(IR::DynamicIRProcessor *this)
{
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(this + 13));
  v4 = (this + 56);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100](this + 6);
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100](this + 5);
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100](this + 4);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<IR::SharedIRBuses::IRBus>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((a1 + 248), 0);
  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(a1 + 144));
  v7 = (a1 + 96);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((a1 + 88));
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((a1 + 80));
  std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((a1 + 72));
  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::__shared_ptr_emplace<IR::SharedIRBuses::IRBus>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t IR::SharedIRBuses::reconfigure(uint64_t a1, unsigned int a2, const IR::IRDataAttributes **a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 256))
  {
    return -10867;
  }

  v4 = atomic_load((a1 + 244));
  if ((v4 & 1) == 0)
  {
    return -10867;
  }

  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  v8 = *(a1 + 240);
  if (v8 <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v33) = 67109376;
      HIDWORD(v33) = a2;
      v34 = 1024;
      *v35 = v8;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Reconfiguring non-existent SharedIRBus channel %u. Total number of channels = %u", &v33, 0xEu);
    }

    v9 = -10877;
    goto LABEL_60;
  }

  IR::SharedIRBuses::checkForAppliedChanges(a1, v7);
  if (*a3)
  {
    IR::IRDataAttributes::IRDataAttributes(&v33, *a3);
  }

  else
  {
    v32 = 0;
    IR::IRDataAttributes::IRDataAttributes(&v33, 0, 128, 1, 2, 0, *(a1 + 252));
  }

  if (v36 == 1)
  {
    v10 = *&v35[2];
    if (*&v35[2])
    {
      if (v37 > *&v35[2])
      {
        v36 = 0;
        v11 = v37 >> 1;
        if (v37 >> 1 > 0x2000)
        {
          v11 = 8193;
        }

        if (*&v35[2] < v11)
        {
          v12 = v41;
          do
          {
            v10 *= 2;
            v12 *= 2;
          }

          while (v10 < v11);
          *&v35[2] = v10;
          v41 = v12;
        }
      }
    }
  }

  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  while (1)
  {
    if (v13 == v14)
    {
      goto LABEL_45;
    }

    v15 = *v13;
    if (*v13)
    {
      v16 = *(v15 + 224);
      if (v16)
      {
        v17 = *(v16 + 12);
        if (*(v15 + 232) == *(a1 + 248) && v17 >= 0xA)
        {
          if (caulk::pooled_semaphore_mutex::_lock((v15 + 196)), v19 = atomic_load((v15 + 172)), (v19) && (v20 = *(v15 + 56)) != 0 || (v20 = *(v15 + 48)) != 0)
          {
            v21 = (*(**(v20 + 24) + 16))(*(v20 + 24));
            caulk::pooled_semaphore_mutex::_unlock((v15 + 196));
            if (v21 == 1)
            {
              goto LABEL_44;
            }
          }

          else
          {
            caulk::pooled_semaphore_mutex::_unlock((v15 + 196));
          }

          IR::DynamicIRProcessor::getIRDataAttributes(v28, *v13 + 16);
          v22 = IR::IRDataAttributes::operator==(v28, &v33);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (v28[0])
          {
            CFRelease(v28[0]);
          }

          if (v22)
          {
            break;
          }
        }
      }
    }

LABEL_44:
    v13 += 2;
  }

  v26 = *v13;
  v25 = v13[1];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v26)
  {
LABEL_45:
    operator new();
  }

  v27 = (*(a1 + 96) + 16 * a2);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v27[1];
  *v27 = v26;
  v27[1] = v25;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  atomic_store(1u, (a1 + 145));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v9 = 0;
LABEL_60:
  caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
  return v9;
}

void sub_1DDEFC030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28)
{
  applesauce::CF::URLRef::~URLRef(&a28);
  caulk::pooled_semaphore_mutex::_unlock((v28 + 148));
  _Unwind_Resume(a1);
}

uint64_t IR::SharedIRBuses::setParametricFiltersPrivate(IR::SharedIRBuses *this, unsigned int a2, uint64_t a3, int16x4_t a4)
{
  if (!*(this + 60))
  {
    return 0;
  }

  if (!*(this + 64))
  {
    return 0;
  }

  v5 = atomic_load(this + 244);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  if (*(this + 60) <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Non-existent SharedIRBus channel", v16, 2u);
    }

    return 0;
  }

  IR::SharedIRBuses::checkForAppliedChanges(this, a4);
  v8 = (*(this + 12) + 16 * a2);
  v9 = *v8;
  v10 = v8[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9 && (v12 = *(v9 + 224), v11 = v9 + 224, v12))
  {
    v13 = *(a3 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v14 = (*(*v13 + 48))(v13, v11);
    atomic_store(1u, this + 145);
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v14;
}

void sub_1DDEFC284(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::SharedIRBuses::setParametricFilterCoeffs(IR::SharedIRBuses *this, unsigned int a2, int a3, float a4, float a5, float a6)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8 = a6;
  v7 = 2;
  if (caulk::pooled_semaphore_mutex::try_lock((this + 148)))
  {
    operator new();
  }

  return 0;
}

void sub_1DDEFC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](va);
  caulk::pooled_semaphore_mutex::_unlock((v4 + 148));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<IR::SharedIRBuses::setParametricFilterCoeffs(unsigned int,unsigned int,float,float,float,unsigned int)::$_0,std::allocator<IR::SharedIRBuses::setParametricFilterCoeffs(unsigned int,unsigned int,float,float,float,unsigned int)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F592D6B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(uint64_t a1, unsigned int a2, void *a3, char a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (*a3)
  {
    caulk::pooled_semaphore_mutex::_lock((a1 + 148));
    *buf = &unk_1F592D700;
    v10 = a3;
    v11 = &v8;
    v12 = buf;
    IR::SharedIRBuses::setParametricFiltersPrivate(a1, a2, buf, v7);
    std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](buf);
    caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid dictionary", buf, 2u);
  }
}

void sub_1DDEFC638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](va);
  caulk::pooled_semaphore_mutex::_unlock((v3 + 148));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(unsigned int,applesauce::CF::DictionaryRef,BOOL)::$_0,std::allocator<IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(unsigned int,applesauce::CF::DictionaryRef,BOOL)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
  }

  v7 = v5;
  ParametricFilters::setParametricFiltersBlocking(v3, &v7, **(a1 + 16));
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

void sub_1DDEFC6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(unsigned int,applesauce::CF::DictionaryRef,BOOL)::$_0,std::allocator<IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(unsigned int,applesauce::CF::DictionaryRef,BOOL)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F592D700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t IR::SharedIRBuses::toggleParametricFilter(IR::SharedIRBuses *this, unsigned int a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8 = 2;
  v7 = 0;
  v5 = 0;
  if (caulk::pooled_semaphore_mutex::try_lock((this + 148)))
  {
    v9[0] = &unk_1F592D748;
    v9[1] = &v8;
    v9[2] = &v7;
    v9[3] = v9;
    v5 = IR::SharedIRBuses::setParametricFiltersPrivate(this, a2, v9, v4);
    std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](v9);
    caulk::pooled_semaphore_mutex::_unlock((this + 148));
  }

  return v5;
}

void sub_1DDEFC854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](va);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 148));
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<IR::SharedIRBuses::toggleParametricFilter(unsigned int,unsigned int,BOOL)::$_0,std::allocator<IR::SharedIRBuses::toggleParametricFilter(unsigned int,unsigned int,BOOL)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F592D748;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t IR::SharedIRBuses::toggleParametricFilterBlocking(IR::SharedIRBuses *this, unsigned int a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = 256;
  v6 = 0;
  caulk::pooled_semaphore_mutex::_lock((this + 148));
  v8[0] = &unk_1F592D790;
  v8[1] = &v7;
  v8[2] = &v6;
  v8[3] = v8;
  IR::SharedIRBuses::setParametricFiltersPrivate(this, a2, v8, v4);
  std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](v8);
  return caulk::pooled_semaphore_mutex::_unlock((this + 148));
}

void sub_1DDEFC9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(std::unique_ptr<ParametricFilters> &)>::~__value_func[abi:ne200100](va);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 148));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<IR::SharedIRBuses::toggleParametricFilterBlocking(unsigned int,unsigned int,BOOL)::$_0,std::allocator<IR::SharedIRBuses::toggleParametricFilterBlocking(unsigned int,unsigned int,BOOL)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::operator()(uint64_t a1, ParametricFilters **a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  v4 = **(a1 + 16);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(*a2 + 160);
  ParametricFilters::toggleParametricFilterPrivate(v2, v3, v4);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v2 + 160);
  return 1;
}

__n128 std::__function::__func<IR::SharedIRBuses::toggleParametricFilterBlocking(unsigned int,unsigned int,BOOL)::$_0,std::allocator<IR::SharedIRBuses::toggleParametricFilterBlocking(unsigned int,unsigned int,BOOL)::$_0>,BOOL ()(std::unique_ptr<ParametricFilters> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F592D790;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}