unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v275 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 >> v5) & 7;
  v8 = v5 | 3;
  v9 = (v6 >> (v5 | 3u)) & 7;
  v10 = (v5 | 6) - v5;
  if ((v5 | 3uLL) - v5 <= 0xBD)
  {
    v11 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v10 = v8 - v5;
    v11 = (8 * (a1 & 7)) | 3;
  }

  if ((v8 - v5) <= 0xBD)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if ((v10 - 190) >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v15 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 3;
    do
    {
      v19 = 64 - v11;
      if (64 - v11 >= v18)
      {
        v19 = v18;
      }

      v13 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v19)) << v17);
      v17 += v19;
      v15 += (v19 + v11) >> 6;
      v11 = (v19 + v11) & 0x3F;
      v18 -= v19;
    }

    while (v18);
    v14 = v15 << 6;
    v10 = v11 - v5;
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v16 = 0;
      v20 = 0;
      v21 = 3;
      do
      {
        v22 = 64 - v11;
        if (64 - v11 >= v21)
        {
          v22 = v21;
        }

        v16 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v22)) << v20);
        v20 += v22;
        v15 += (v22 + v11) >> 6;
        v11 = (v22 + v11) & 0x3F;
        v21 -= v22;
      }

      while (v21);
      v14 = v15 << 6;
      v10 = v11 - v5;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v23 = 0;
  v272[0] = 10;
  v24 = 2 * (v7 == 0);
  if (!v7 && (v10 + v14 + v24) <= 0xC0)
  {
    v25 = 0;
    v26 = 0;
    v27 = 2 * (v7 == 0);
    do
    {
      v28 = 64 - v11;
      if (64 - v11 >= v27)
      {
        v28 = v27;
      }

      v25 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v28)) << v26;
      v26 += v28;
      v15 += (v28 + v11) >> 6;
      v11 = (v28 + v11) & 0x3F;
      v27 -= v28;
    }

    while (v27);
    v23 = v25 & 3;
  }

  if (v7)
  {
    v256 = 0;
    v29 = v7 + 2;
  }

  else
  {
    v256 = dword_29D2F2720[v23];
    v29 = *(&xmmword_29D2F1D80 + v23);
  }

  v30 = 0;
  v274[0] = v29;
  v273[0] = 1;
  v272[1] = 10;
  v31 = 2 * (v12 == 0);
  if (!v12 && (v11 - v5 + (v15 << 6) + v31) <= 0xC0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 2 * (v12 == 0);
    do
    {
      v35 = 64 - v11;
      if (64 - v11 >= v34)
      {
        v35 = v34;
      }

      v32 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v35)) << v33;
      v33 += v35;
      v15 += (v35 + v11) >> 6;
      v11 = (v35 + v11) & 0x3F;
      v34 -= v35;
    }

    while (v34);
    v30 = v32 & 3;
  }

  if (v12)
  {
    v255 = 0;
    v36 = v12 + 2;
  }

  else
  {
    v255 = dword_29D2F2720[v30];
    v36 = *(&xmmword_29D2F1D80 + v30);
  }

  v37 = 0;
  v274[1] = v36;
  v273[1] = 1;
  v272[2] = 10;
  v38 = 2 * (v13 == 0);
  if (!v13 && (v11 - v5 + (v15 << 6) + v38) <= 0xC0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 2 * (v13 == 0);
    do
    {
      v42 = 64 - v11;
      if (64 - v11 >= v41)
      {
        v42 = v41;
      }

      v39 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v42)) << v40;
      v40 += v42;
      v15 += (v42 + v11) >> 6;
      v11 = (v42 + v11) & 0x3F;
      v41 -= v42;
    }

    while (v41);
    v37 = v39 & 3;
  }

  v43 = v13 & 7;
  if (v43)
  {
    v254 = 0;
    v44 = v43 + 2;
  }

  else
  {
    v254 = dword_29D2F2720[v37];
    v44 = *(&xmmword_29D2F1D80 + v37);
  }

  v45 = 0;
  v274[2] = v44;
  v273[2] = 1;
  v272[3] = 10;
  v258 = v38;
  v259 = v31;
  v257 = 2 * (v16 == 0);
  if (!v16 && (v11 - v5 + (v15 << 6) + 2) <= 0xC0)
  {
    v46 = 0;
    v47 = 0;
    v48 = 2 * (v16 == 0);
    do
    {
      v49 = 64 - v11;
      if (64 - v11 >= v48)
      {
        v49 = v48;
      }

      v46 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v49)) << v47;
      v47 += v49;
      v15 += (v49 + v11) >> 6;
      v11 = (v49 + v11) & 0x3F;
      v48 -= v49;
    }

    while (v48);
    v45 = v46 & 3;
  }

  v50 = v16 & 7;
  if (v50)
  {
    v253 = 0;
    v51 = v50 + 2;
  }

  else
  {
    v253 = dword_29D2F2720[v45];
    v51 = *(&xmmword_29D2F1D80 + v45);
  }

  v52 = v51;
  v274[3] = v51;
  v273[3] = 1;
  v270 = 0;
  v271 = 0;
  v268 = 0;
  v269 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v273, v274, &v270, &v268);
  v53 = &kDQuadParamTable[10 * v29];
  v54 = v53[164];
  v55 = v53[165];
  v56 = v268 - v270;
  if (v268 - v270 >= 0)
  {
    v57 = v55;
    v58 = v36;
    v59 = v44;
    v60 = v258;
    v61 = v259;
    v62 = v257;
    if (!v56)
    {
      goto LABEL_69;
    }

    v57 = v56 + v55;
    goto LABEL_63;
  }

  v63 = &kDQuadParamTable[10 * v29];
  v58 = v36;
  if (v63[167] >= v270 - v268)
  {
    v57 = v55;
    v59 = v44;
  }

  else
  {
    v57 = v55 - 1;
    v59 = v44;
    if (!v63[168])
    {
      v56 = -1;
      v60 = v258;
      v61 = v259;
      v62 = v257;
LABEL_63:
      v54 += v56;
      goto LABEL_69;
    }
  }

  v60 = v258;
  v61 = v259;
  v62 = v257;
LABEL_69:
  if (v54 >= 0xA)
  {
    v64 = 10;
  }

  else
  {
    v64 = v54;
  }

  v267[0] = v64;
  if (v55)
  {
    LODWORD(v65) = 10;
  }

  else
  {
    LODWORD(v65) = 0;
  }

  if (v65 >= v57)
  {
    v65 = v57;
  }

  else
  {
    v65 = v65;
  }

  v266[0] = v65;
  v66 = &kDQuadParamTable[10 * v58];
  v67 = v66[164];
  v68 = v66[165];
  v69 = HIDWORD(v268) - HIDWORD(v270);
  if (HIDWORD(v268) - HIDWORD(v270) >= 0)
  {
    LODWORD(v70) = v68;
    if (!v69)
    {
      goto LABEL_86;
    }

    LODWORD(v70) = v69 + v68;
    goto LABEL_81;
  }

  v70 = &kDQuadParamTable[10 * v58];
  if (*(v70 + 668) >= HIDWORD(v270) - HIDWORD(v268))
  {
    LODWORD(v70) = v68;
  }

  else
  {
    v71 = (v70 + 640);
    LODWORD(v70) = v68 - 1;
    if (!v71[8])
    {
      v69 = -1;
LABEL_81:
      v67 += v69;
    }
  }

LABEL_86:
  if (v67 >= 0xA)
  {
    v72 = 10;
  }

  else
  {
    v72 = v67;
  }

  v267[1] = v72;
  if (v68)
  {
    v73 = 10;
  }

  else
  {
    v73 = 0;
  }

  if (v73 >= v70)
  {
    v70 = v70;
  }

  else
  {
    v70 = v73;
  }

  v266[1] = v70;
  v74 = &kDQuadParamTable[10 * v59];
  v75 = v74[164];
  v76 = v74[165];
  v77 = v269 - v271;
  if (v269 - v271 >= 0)
  {
    LODWORD(v78) = v76;
    if (!v77)
    {
      goto LABEL_103;
    }

    LODWORD(v78) = v77 + v76;
    goto LABEL_98;
  }

  v78 = &kDQuadParamTable[10 * v59];
  if (*(v78 + 668) >= v271 - v269)
  {
    LODWORD(v78) = v76;
  }

  else
  {
    v79 = (v78 + 640);
    LODWORD(v78) = v76 - 1;
    if (!v79[8])
    {
      v77 = -1;
LABEL_98:
      v75 += v77;
    }
  }

LABEL_103:
  v80 = (v24 | 0xC) + v61 + v60;
  if (v75 >= 0xA)
  {
    v81 = 10;
  }

  else
  {
    v81 = v75;
  }

  v267[2] = v81;
  if (v76)
  {
    v82 = 10;
  }

  else
  {
    v82 = 0;
  }

  if (v82 >= v78)
  {
    v78 = v78;
  }

  else
  {
    v78 = v82;
  }

  v266[2] = v78;
  v83 = &kDQuadParamTable[10 * v52];
  v84 = v83[164];
  v85 = v83[165];
  v86 = HIDWORD(v269) - HIDWORD(v271);
  if (HIDWORD(v269) - HIDWORD(v271) >= 0)
  {
    v87 = v85;
    if (!v86)
    {
      goto LABEL_120;
    }

    v87 = v86 + v85;
    goto LABEL_115;
  }

  v88 = &kDQuadParamTable[10 * v52];
  if (v88[167] >= HIDWORD(v271) - HIDWORD(v269))
  {
    v87 = v85;
  }

  else
  {
    v87 = v85 - 1;
    if (!v88[168])
    {
      v86 = -1;
LABEL_115:
      v84 += v86;
    }
  }

LABEL_120:
  if (v84 >= 0xA)
  {
    v89 = 10;
  }

  else
  {
    v89 = v84;
  }

  v267[3] = v89;
  if (v85)
  {
    LODWORD(v90) = 10;
  }

  else
  {
    LODWORD(v90) = 0;
  }

  if (v90 >= v87)
  {
    v90 = v87;
  }

  else
  {
    v90 = v90;
  }

  v266[3] = v90;
  v91 = v80 + v62;
  v264 = 0;
  v265 = 0;
  if (!v29)
  {
    LODWORD(v264) = v256;
    if (v58)
    {
      goto LABEL_137;
    }

LABEL_160:
    HIDWORD(v264) = v255;
    if (v59)
    {
      goto LABEL_144;
    }

LABEL_161:
    LODWORD(v265) = v254;
    if (v52)
    {
      goto LABEL_151;
    }

    goto LABEL_162;
  }

  v92 = 0;
  if (v54 && (v11 - v5 + (v15 << 6) + v64) <= 0xC0)
  {
    v92 = 0;
    v93 = 0;
    v94 = v64;
    do
    {
      v95 = 64 - v11;
      if (64 - v11 >= v94)
      {
        v95 = v94;
      }

      v92 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v95)) << v93;
      v93 += v95;
      v96 = v95 + v11;
      v15 += v96 >> 6;
      v11 = v96 & 0x3F;
      v94 -= v95;
    }

    while (v94);
  }

  LODWORD(v264) = v92 << (10 - v64);
  v91 += v64;
  if (!v58)
  {
    goto LABEL_160;
  }

LABEL_137:
  v97 = 0;
  if (v67 && (v11 - v5 + (v15 << 6) + v72) <= 0xC0)
  {
    v97 = 0;
    v98 = 0;
    v99 = v72;
    do
    {
      v100 = 64 - v11;
      if (64 - v11 >= v99)
      {
        v100 = v99;
      }

      v97 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v100)) << v98;
      v98 += v100;
      v15 += (v100 + v11) >> 6;
      v11 = (v100 + v11) & 0x3F;
      v99 -= v100;
    }

    while (v99);
  }

  HIDWORD(v264) = v97 << (10 - v72);
  v91 += v72;
  if (!v59)
  {
    goto LABEL_161;
  }

LABEL_144:
  v101 = 0;
  if (v75 && (v11 - v5 + (v15 << 6) + v81) <= 0xC0)
  {
    v101 = 0;
    v102 = 0;
    v103 = v81;
    do
    {
      v104 = 64 - v11;
      if (64 - v11 >= v103)
      {
        v104 = v103;
      }

      v101 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v104)) << v102;
      v102 += v104;
      v15 += (v104 + v11) >> 6;
      v11 = (v104 + v11) & 0x3F;
      v103 -= v104;
    }

    while (v103);
  }

  LODWORD(v265) = v101 << (10 - v81);
  v91 += v81;
  if (v52)
  {
LABEL_151:
    v105 = 0;
    if (v84 && (v11 - v5 + (v15 << 6) + v89) <= 0xC0)
    {
      v105 = 0;
      v106 = 0;
      v107 = v89;
      do
      {
        v108 = 64 - v11;
        if (64 - v11 >= v107)
        {
          v108 = v107;
        }

        v105 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v108)) << v106;
        v106 += v108;
        v15 += (v108 + v11) >> 6;
        v11 = (v108 + v11) & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    HIDWORD(v265) = v105 << (10 - v89);
    v91 += v89;
    v262 = 0;
    v263 = 0;
    if (!v65)
    {
      goto LABEL_170;
    }

    goto LABEL_163;
  }

LABEL_162:
  HIDWORD(v265) = v253;
  v262 = 0;
  v263 = 0;
  if (v65)
  {
LABEL_163:
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v109 = 0;
      v110 = 0;
      v111 = 3;
      do
      {
        v112 = 64 - v11;
        if (64 - v11 >= v111)
        {
          v112 = v111;
        }

        v109 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v112)) << v110;
        v110 += v112;
        v15 += (v112 + v11) >> 6;
        v11 = (v112 + v11) & 0x3F;
        v111 -= v112;
      }

      while (v111);
    }

    else
    {
      v109 = 0;
    }

    LODWORD(v262) = v109;
    v91 += 3;
  }

LABEL_170:
  if (v70)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v113 = 0;
      v114 = 0;
      v115 = 3;
      do
      {
        v116 = 64 - v11;
        if (64 - v11 >= v115)
        {
          v116 = v115;
        }

        v113 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v116)) << v114;
        v114 += v116;
        v15 += (v116 + v11) >> 6;
        v11 = (v116 + v11) & 0x3F;
        v115 -= v116;
      }

      while (v115);
    }

    else
    {
      v113 = 0;
    }

    HIDWORD(v262) = v113;
    v91 += 3;
  }

  if (v78)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v117 = 0;
      v118 = 0;
      v119 = 3;
      do
      {
        v120 = 64 - v11;
        if (64 - v11 >= v119)
        {
          v120 = v119;
        }

        v117 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v120)) << v118;
        v118 += v120;
        v15 += (v120 + v11) >> 6;
        v11 = (v120 + v11) & 0x3F;
        v119 -= v120;
      }

      while (v119);
    }

    else
    {
      v117 = 0;
    }

    LODWORD(v263) = v117;
    v91 += 3;
  }

  if (v90)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v121 = 0;
      v122 = 0;
      v123 = 3;
      do
      {
        v124 = 64 - v11;
        if (64 - v11 >= v123)
        {
          v124 = v123;
        }

        v121 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v124)) << v122;
        v122 += v124;
        v15 += (v124 + v11) >> 6;
        v11 = (v124 + v11) & 0x3F;
        v123 -= v124;
      }

      while (v123);
    }

    else
    {
      v121 = 0;
    }

    HIDWORD(v263) = v121;
    v91 += 3;
  }

  v125 = 0;
  v126 = a3 & 0xFFFFFFFD;
  v127 = 192 - v91;
  v128 = (((37 * (192 - v91)) >> 8) + (((-64 - v91 - ((37 * (192 - v91)) >> 8)) & 0xFE) >> 1)) >> 2;
  v129 = (v11 | (v15 << 6)) + -7 * v128 + v127;
  memset(v261, 0, sizeof(v261));
  do
  {
    v132 = v129 >> 6;
    v133 = v129 & 0x3F;
    if (v65)
    {
      if (v133 - v5 + (v129 & 0xFFFFFFFFFFFFFFC0) + v65 <= 0xC0)
      {
        v134 = 0;
        v135 = 0;
        v136 = v65;
        do
        {
          v137 = 64 - v133;
          if (64 - v133 >= v136)
          {
            v137 = v136;
          }

          v134 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v137)) << v135;
          v135 += v137;
          v138 = v137 + v133;
          v132 += v138 >> 6;
          v133 = v138 & 0x3F;
          v136 -= v137;
        }

        while (v136);
      }

      else
      {
        v134 = 0;
      }

      *(v261 + v125) = v134;
    }

    v139 = v261 + v125;
    if (!v70)
    {
      v131 = v65;
      if (!v78)
      {
        goto LABEL_223;
      }

LABEL_216:
      if (v133 - v5 + (v132 << 6) + v78 <= 0xC0)
      {
        v145 = 0;
        v146 = 0;
        v147 = v78;
        do
        {
          v148 = 64 - v133;
          if (64 - v133 >= v147)
          {
            v148 = v147;
          }

          v145 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v148)) << v146;
          v146 += v148;
          v149 = v148 + v133;
          v132 += v149 >> 6;
          v133 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

      else
      {
        v145 = 0;
      }

      v139[14] = v145;
      v131 += v78;
      goto LABEL_223;
    }

    if (v133 - v5 + (v132 << 6) + v70 <= 0xC0)
    {
      v140 = 0;
      v141 = 0;
      v142 = v70;
      do
      {
        v143 = 64 - v133;
        if (64 - v133 >= v142)
        {
          v143 = v142;
        }

        v140 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v143)) << v141;
        v141 += v143;
        v144 = v143 + v133;
        v132 += v144 >> 6;
        v133 = v144 & 0x3F;
        v142 -= v143;
      }

      while (v142);
    }

    else
    {
      v140 = 0;
    }

    v139[7] = v140;
    v131 = v70 + v65;
    if (v78)
    {
      goto LABEL_216;
    }

LABEL_223:
    if (v90)
    {
      if (v133 - v5 + (v132 << 6) + v90 > 0xC0)
      {
        v130 = 0;
      }

      else
      {
        v130 = 0;
        v150 = 0;
        v151 = v90;
        do
        {
          v152 = 64 - v133;
          if (64 - v133 >= v151)
          {
            v152 = v151;
          }

          v130 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v152)) << v150;
          v150 += v152;
          v153 = v152 + v133;
          v132 += v153 >> 6;
          v133 = v153 & 0x3F;
          v151 -= v152;
        }

        while (v151);
      }

      v139[21] = v130;
      v131 += v90;
    }

    v129 = (v133 | (v132 << 6)) + v128 - v131;
    ++v125;
  }

  while (v125 != 7);
  v154 = 0;
  v155 = 0;
  v156 = a2 + 112;
  do
  {
    v161 = *&kDQuadParamTable[160 * v273[v154 / 4] + 2 + 10 * v274[v154 / 4]];
    v162 = v266[v154 / 4];
    if (v161 >> v162 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v161 >> v162;
    }

    v163 = v272[v154 / 4];
    v164 = result >> 1;
    if (result >> 1 >= (1 << (v163 - v267[v154 / 4])) >> 1)
    {
      v165 = (1 << (v163 - v267[v154 / 4])) >> 1;
    }

    else
    {
      v165 = result >> 1;
    }

    v166 = (1 << (v163 - 1));
    v167 = *(&v264 + v154);
    v168 = v166 - v167;
    v169 = 1 << v163;
    v170 = (1 << v163) + 0xFFFFFFFFLL;
    if (v167)
    {
      v171 = v165;
    }

    else
    {
      v171 = 0;
    }

    v172 = v167 == v166;
    v173 = v163 == 16;
    if (v163 == 16)
    {
      v174 = 31744;
    }

    else
    {
      v174 = 2139095040;
    }

    if (v163 == 16)
    {
      v175 = 64512;
    }

    else
    {
      v175 = 4286578688;
    }

    v176 = 2143289344;
    if (v173)
    {
      v176 = 32256;
    }

    v177 = 65024;
    if (!v173)
    {
      v177 = 4290772992;
    }

    v178 = (v175 - 1);
    if (v162)
    {
      v179 = v161 + v167;
      v180 = -1 << v162;
      v181 = *(&v262 + v154);
      v182 = v168 / result;
      if (!v181)
      {
        v190 = 0;
        v185 = v171;
        v184 = v167 == v166;
        goto LABEL_300;
      }

      v183 = *(v261 + v155);
      v184 = v182 == v183;
      if (v167 | v183)
      {
        if (v179 >= v169 && (v180 ^ v183) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v190 = 1;
          v185 = v169 - 1;
          goto LABEL_300;
        }

        v185 = v164 + result * v183;
      }

      else
      {
        v185 = 0;
      }

      v190 = 1;
LABEL_300:
      v193 = v185 + v167;
      v194 = v193;
      if (a3 == 4)
      {
        v195 = v193 < v174 || v193 >= v176;
        v194 = (v174 - 1);
        if (v195)
        {
          v196 = v193 < v176 || v193 >= v166;
          v194 = v166;
          if (v196)
          {
            if (v193 < v177 && v193 >= v175)
            {
              v194 = (v175 - 1);
            }

            else
            {
              v194 = v193;
            }
          }
        }
      }

      if (v194 >= v169)
      {
        v198 = v169 - 1;
      }

      else
      {
        v198 = v194;
      }

      if (v184)
      {
        v199 = 0;
      }

      else
      {
        v199 = v198 ^ v166;
      }

      if (v126 != 1)
      {
        v199 = v198;
      }

      *(a2 + v154) = v199;
      if (v181 == 1)
      {
        v200 = v171;
        v201 = v167 == v166;
      }

      else
      {
        v202 = *((v261 | (4 * v190)) + v155);
        v201 = v182 == v202;
        if (v167 | v202)
        {
          if (v179 < v169 || (v200 = v169 - 1, (v180 ^ v202) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v164 + result * v202;
          }
        }

        else
        {
          v200 = 0;
        }

        ++v190;
      }

      v203 = v200 + v167;
      v204 = v203;
      if (a3 == 4)
      {
        v205 = v203 < v174 || v203 >= v176;
        v204 = (v174 - 1);
        if (v205)
        {
          v206 = v203 < v176 || v203 >= v166;
          v204 = v166;
          if (v206)
          {
            if (v203 < v177 && v203 >= v175)
            {
              v204 = (v175 - 1);
            }

            else
            {
              v204 = v203;
            }
          }
        }
      }

      if (v204 >= v169)
      {
        v208 = v169 - 1;
      }

      else
      {
        v208 = v204;
      }

      if (v201)
      {
        v209 = 0;
      }

      else
      {
        v209 = v208 ^ v166;
      }

      if (v126 != 1)
      {
        v209 = v208;
      }

      *(v156 + v154 - 96) = v209;
      if (v181 == 2)
      {
        v210 = v171;
        v211 = v167 == v166;
      }

      else
      {
        v212 = *((v261 | (4 * v190)) + v155);
        v211 = v182 == v212;
        if (v167 | v212)
        {
          if (v179 < v169 || (v210 = v169 - 1, (v180 ^ v212) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v210 = v164 + result * v212;
          }
        }

        else
        {
          v210 = 0;
        }

        ++v190;
      }

      v213 = v210 + v167;
      v214 = v213;
      if (a3 == 4)
      {
        if (v213 < v174 || (v214 = (v174 - 1), v213 >= v176))
        {
          if (v213 < v176 || (v214 = v166, v213 >= v166))
          {
            if (v213 < v177 && v213 >= v175)
            {
              v214 = (v175 - 1);
            }

            else
            {
              v214 = v213;
            }
          }
        }
      }

      if (v214 >= v169)
      {
        v216 = v169 - 1;
      }

      else
      {
        v216 = v214;
      }

      if (v211)
      {
        v217 = 0;
      }

      else
      {
        v217 = v216 ^ v166;
      }

      if (v126 != 1)
      {
        v217 = v216;
      }

      *(v156 + v154 - 80) = v217;
      if (v181 == 3)
      {
        v218 = v171;
        v219 = v167 == v166;
      }

      else
      {
        v220 = *(v261 + 4 * v190 + v155);
        v219 = v182 == v220;
        if (v167 | v220)
        {
          if (v179 < v169 || (v218 = v169 - 1, (v180 ^ v220) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v218 = v164 + result * v220;
          }
        }

        else
        {
          v218 = 0;
        }

        ++v190;
      }

      v221 = v218 + v167;
      v222 = v221;
      if (a3 == 4)
      {
        if (v221 < v174 || (v222 = (v174 - 1), v221 >= v176))
        {
          if (v221 < v176 || (v222 = v166, v221 >= v166))
          {
            if (v221 < v177 && v221 >= v175)
            {
              v222 = (v175 - 1);
            }

            else
            {
              v222 = v221;
            }
          }
        }
      }

      if (v222 >= v169)
      {
        v224 = v169 - 1;
      }

      else
      {
        v224 = v222;
      }

      if (v219)
      {
        v225 = 0;
      }

      else
      {
        v225 = v224 ^ v166;
      }

      if (v126 != 1)
      {
        v225 = v224;
      }

      *(v156 + v154 - 64) = v225;
      if (v181 == 4)
      {
        v226 = v171;
        v227 = v167 == v166;
      }

      else
      {
        v228 = *(v261 + 4 * v190 + v155);
        v227 = v182 == v228;
        if (v167 | v228)
        {
          if (v179 < v169 || (v226 = v169 - 1, (v180 ^ v228) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v226 = v164 + result * v228;
          }
        }

        else
        {
          v226 = 0;
        }

        ++v190;
      }

      v229 = v226 + v167;
      v230 = v229;
      if (a3 == 4)
      {
        if (v229 < v174 || (v230 = (v174 - 1), v229 >= v176))
        {
          if (v229 < v176 || (v230 = v166, v229 >= v166))
          {
            if (v229 < v177 && v229 >= v175)
            {
              v230 = (v175 - 1);
            }

            else
            {
              v230 = v229;
            }
          }
        }
      }

      if (v230 >= v169)
      {
        v232 = v169 - 1;
      }

      else
      {
        v232 = v230;
      }

      if (v227)
      {
        v233 = 0;
      }

      else
      {
        v233 = v232 ^ v166;
      }

      if (v126 != 1)
      {
        v233 = v232;
      }

      *(v156 + v154 - 48) = v233;
      if (v181 == 5)
      {
        v234 = v171;
        v235 = v167 == v166;
      }

      else
      {
        v236 = *(v261 + 4 * v190 + v155);
        v235 = v182 == v236;
        if (v167 | v236)
        {
          if (v179 < v169 || (v234 = v169 - 1, (v180 ^ v236) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v234 = v164 + result * v236;
          }
        }

        else
        {
          v234 = 0;
        }

        ++v190;
      }

      v237 = v234 + v167;
      v238 = v237;
      if (a3 == 4)
      {
        if (v237 < v174 || (v238 = (v174 - 1), v237 >= v176))
        {
          if (v237 < v176 || (v238 = v166, v237 >= v166))
          {
            if (v237 < v177 && v237 >= v175)
            {
              v238 = (v175 - 1);
            }

            else
            {
              v238 = v237;
            }
          }
        }
      }

      if (v238 >= v169)
      {
        v240 = v169 - 1;
      }

      else
      {
        v240 = v238;
      }

      if (v235)
      {
        v241 = 0;
      }

      else
      {
        v241 = v240 ^ v166;
      }

      if (v126 != 1)
      {
        v241 = v240;
      }

      *(v156 + v154 - 32) = v241;
      if (v181 == 6)
      {
        v242 = v171;
        v243 = v167 == v166;
      }

      else
      {
        v244 = *(v261 + 4 * v190 + v155);
        v243 = v182 == v244;
        if (v167 | v244)
        {
          if (v179 < v169 || (v242 = v169 - 1, (v180 ^ v244) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v242 = v164 + result * v244;
          }
        }

        else
        {
          v242 = 0;
        }

        ++v190;
      }

      v245 = v242 + v167;
      v246 = v245;
      if (a3 == 4)
      {
        if (v245 < v174 || (v246 = (v174 - 1), v245 >= v176))
        {
          if (v245 < v176 || (v246 = v166, v245 >= v166))
          {
            if (v245 < v177 && v245 >= v175)
            {
              v246 = (v175 - 1);
            }

            else
            {
              v246 = v245;
            }
          }
        }
      }

      if (v246 >= v169)
      {
        v248 = v169 - 1;
      }

      else
      {
        v248 = v246;
      }

      if (v243)
      {
        v249 = 0;
      }

      else
      {
        v249 = v248 ^ v166;
      }

      if (v126 != 1)
      {
        v249 = v248;
      }

      *(v156 + v154 - 16) = v249;
      if (v181 != 7)
      {
        v250 = *(v261 + 4 * v190 + v155);
        v172 = v182 == v250;
        if (v167 | v250)
        {
          if (v179 >= v169 && (v180 ^ v250) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v171 = v169 - 1;
          }

          else
          {
            v171 = v164 + result * v250;
          }
        }

        else
        {
          v171 = 0;
        }
      }

      v251 = v171 + v167;
      result = v171 + v167;
      if (a3 == 4)
      {
        if (v251 < v174 || (result = (v174 - 1), v251 >= v176))
        {
          if (v251 < v176 || (result = v166, v251 >= v166))
          {
            if (v251 < v177 && v251 >= v175)
            {
              result = (v175 - 1);
            }

            else
            {
              result = v171 + v167;
            }
          }
        }
      }

      if (result >= v169)
      {
        v159 = v169 - 1;
      }

      else
      {
        v159 = result;
      }

      v160 = v159 ^ v166;
      if (v172)
      {
        v160 = 0;
      }

      if (v126 == 1)
      {
        v159 = v160;
      }

      goto LABEL_244;
    }

    v187 = v176 <= v167 && v167 < v166;
    v189 = v167 >= v175 && v177 > v167;
    if (a3 == 4)
    {
      if (v167 < v174 || v176 <= v167)
      {
        if (v187)
        {
          if (v169 <= v166)
          {
            v159 = v170;
          }

          else
          {
            v159 = v166;
          }
        }

        else
        {
          if (v189)
          {
            v252 = v178;
          }

          else
          {
            v252 = *(&v264 + v154);
          }

          if (v252 >= v169)
          {
            v159 = v170;
          }

          else
          {
            v159 = v252;
          }
        }
      }

      else if (v169 <= (v174 - 1))
      {
        v159 = v170;
      }

      else
      {
        v159 = v174 - 1;
      }
    }

    else
    {
      if (v169 <= v167)
      {
        v159 = v169 - 1;
      }

      else
      {
        v159 = *(&v264 + v154);
      }

      v191 = v159 ^ v166;
      if (result > v168)
      {
        v191 = 0;
      }

      if (v126 == 1)
      {
        v159 = v191;
      }
    }

    v192 = v156 + v154;
    *(v192 - 112) = v159;
    *(v192 - 96) = v159;
    *(v192 - 80) = v159;
    *(v192 - 64) = v159;
    *(v192 - 48) = v159;
    *(v192 - 32) = v159;
    *(v192 - 16) = v159;
LABEL_244:
    *(v156 + v154) = v159;
    v155 += 28;
    v154 += 4;
  }

  while (v155 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v714 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + 2 * a2 + a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v687, a5);
    }

    *v695.i8 = vmovn_s32(v687);
    v695.u64[1] = vmovn_s32(v689);
    *v697.i8 = vmovn_s32(v688);
    v697.u64[1] = vmovn_s32(v690);
    v699[0] = vmovn_s32(v691);
    v699[1] = vmovn_s32(v693);
    v700[0] = vmovn_s32(v692);
    v700[1] = vmovn_s32(v694);
    v20 = a3 + 24;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v687, a5);
    }

    *v696.i8 = vmovn_s32(v687);
    v696.u64[1] = vmovn_s32(v689);
    *v698.i8 = vmovn_s32(v688);
    v698.u64[1] = vmovn_s32(v690);
    v699[2] = vmovn_s32(v691);
    v699[3] = vmovn_s32(v693);
    v700[2] = vmovn_s32(v692);
    v700[3] = vmovn_s32(v694);
    v21 = a3 + 48;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v21, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v21, &v687, a5);
    }

    v701[0] = vmovn_s32(v687);
    v701[1] = vmovn_s32(v689);
    v702[0] = vmovn_s32(v688);
    v702[1] = vmovn_s32(v690);
    *v703.i8 = vmovn_s32(v691);
    v703.u64[1] = vmovn_s32(v693);
    *v705.i8 = vmovn_s32(v692);
    v705.u64[1] = vmovn_s32(v694);
    v22 = a3 + 72;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v22, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v22, &v687, a5);
    }

    v701[2] = vmovn_s32(v687);
    v701[3] = vmovn_s32(v689);
    v702[2] = vmovn_s32(v688);
    v702[3] = vmovn_s32(v690);
    *v704.i8 = vmovn_s32(v691);
    v704.u64[1] = vmovn_s32(v693);
    v23 = (a1 + 2);
    v24 = -32;
    *v706.i8 = vmovn_s32(v692);
    v706.u64[1] = vmovn_s32(v694);
    do
    {
      v25 = (((v699[v24 / 8] & 0x3FF) << 6) | (WORD1(v699[v24 / 8]) << 22) | (WORD2(v699[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v699[v24 / 8]) << 54);
      *(v23 - 4) = (((v697.i16[v24 / 2] & 0x3FF) << 6) | (v697.u16[v24 / 2 + 1] << 22) | (v697.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v697.u16[v24 / 2 + 3] << 54);
      *(v23 - 3) = v25;
      v26 = (((v701[v24 / 8] & 0x3FF) << 6) | (WORD1(v701[v24 / 8]) << 22) | (WORD2(v701[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v701[v24 / 8]) << 54);
      *(v23 - 2) = (((v700[v24 / 8] & 0x3FF) << 6) | (WORD1(v700[v24 / 8]) << 22) | (WORD2(v700[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v700[v24 / 8]) << 54);
      *(v23 - 1) = v26;
      v27 = (((v703.i16[v24 / 2] & 0x3FF) << 6) | (v703.u16[v24 / 2 + 1] << 22) | (v703.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v703.u16[v24 / 2 + 3] << 54);
      *v23 = (((v702[v24 / 8] & 0x3FF) << 6) | (WORD1(v702[v24 / 8]) << 22) | (WORD2(v702[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v702[v24 / 8]) << 54);
      v23[1] = v27;
      v28 = (((v707.i16[v24 / 2] & 0x3FF) << 6) | (v707.u16[v24 / 2 + 1] << 22) | (v707.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v707.u16[v24 / 2 + 3] << 54);
      v23[2] = (((v705.i16[v24 / 2] & 0x3FF) << 6) | (v705.u16[v24 / 2 + 1] << 22) | (v705.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v705.u16[v24 / 2 + 3] << 54);
      v23[3] = v28;
      v23 = (v23 + a2);
      v24 += 8;
    }

    while (v24);
    return 96;
  }

  if (a4 != 159)
  {
    if (a4 == 4)
    {
      v14 = vld1q_dup_f64(a3);
      v15 = vorrq_s8(vandq_s8(vshlq_u64(v14, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v14, xmmword_29D2F1410), xmmword_29D2F1420));
      v16 = vdupq_n_s64(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)));
      *a1 = v16;
      a1[1] = v16;
      a1[2] = v16;
      a1[3] = v16;
      v17 = (a1 + a2);
      *v17 = v16;
      v17[1] = v16;
      v17[2] = v16;
      v17[3] = v16;
      v18 = (a1 + 2 * a2);
      *v18 = v16;
      v18[1] = v16;
      v18[2] = v16;
      v18[3] = v16;
      v19 = (a1 + 2 * a2 + a2);
      *v19 = v16;
      v19[1] = v16;
      v19[2] = v16;
      v19[3] = v16;
      return 5;
    }

    v688.i8[8] = 0;
    v688.i64[0] = (8 * (a3 & 7)) | 0x300;
    v687.i64[0] = 8 * (a3 & 7);
    v687.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v708, v713, &v707, &v687, a4);
    v260.i64[0] = 0x3000300030003;
    v260.i64[1] = 0x3000300030003;
    v261 = vandq_s8(v708, v260);
    v262 = vbicq_s8(v713[0], vceqq_s16(v261, v260));
    v713[0] = v262;
    v709 = v262;
    v710 = v262;
    v711 = v262;
    v712 = v262;
    v263.i64[0] = 0x202020202020202;
    v263.i64[1] = 0x202020202020202;
    v264 = vandq_s8(vmovl_s16(vtst_s16(*v708.i8, 0x4000400040004)), v263);
    v265 = v687.i64[0];
    if (vmaxvq_s8(v264) < 1)
    {
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v284.i64[0] = -1;
      v284.i64[1] = -1;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
    }

    else
    {
      v266 = vmovl_u8(*&vpaddq_s8(v264, v264));
      v267 = vmovl_u16(*&vpaddq_s16(v266, v266));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v271;
      v273 = v687.i64[0] + v271;
      if (v688.i64[0])
      {
        v274 = v688.i64[0] >= v273;
      }

      else
      {
        v274 = 1;
      }

      v275 = v274;
      if (v271 <= 0x80 && (v275 & 1) != 0)
      {
        v259.i64[0] = 63;
        v276 = (v687.i64[1] + 8 * (v687.i64[0] >> 6));
        v277 = vaddq_s64(vdupq_lane_s64(vandq_s8(v687.u64[0], v259).i64[0], 0), vzip1q_s64(0, v270));
        v278 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v277)));
        if ((v687.i8[0] & 0x3F) + v272 >= 0x81)
        {
          v278 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v278);
        }

        v687.i64[0] = v273;
        v265 = v273;
      }

      else
      {
        v688.i8[8] = 1;
        v278 = 0uLL;
      }

      v286 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v288 = vshlq_u64(v278, vnegq_s64(v287));
      v289 = vuzp1q_s32(vzip1q_s64(v278, v288), vzip2q_s64(v278, v288));
      v290 = vshlq_u32(v289, vnegq_s32((*&v266 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v291 = vuzp1q_s16(vzip1q_s32(v289, v290), vzip2q_s32(v289, v290));
      v292 = vshlq_u16(v291, vnegq_s16((*&v264 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v293 = vuzp1q_s8(vzip1q_s16(v291, v292), vzip2q_s16(v291, v292));
      v292.i64[0] = 0x101010101010101;
      v292.i64[1] = 0x101010101010101;
      v294 = vshlq_s8(v292, v264);
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v295 = vqtbl1q_s8(vandq_s8(vaddq_s8(v294, v292), v293), xmmword_29D2F0F70);
      *v293.i8 = vdup_lane_s32(*v295.i8, 0);
      *v292.i8 = vdup_lane_s32(*v295.i8, 1);
      v296 = vdupq_laneq_s32(v295, 2).u64[0];
      v297 = vdupq_laneq_s32(v295, 3).u64[0];
      v709 = vsubw_s8(v709, *v293.i8);
      v710 = vsubw_s8(v710, *v292.i8);
      v711 = vsubw_s8(v711, v296);
      v712 = vsubw_s8(v712, v297);
      v285 = vmovl_s8(vceqz_s8(*v293.i8));
      v284 = vmovl_s8(vceqz_s8(*v292.i8));
      v283 = vmovl_s8(vceqz_s8(v296));
      v282 = vmovl_s8(vceqz_s8(v297));
    }

    v298.i64[0] = 0x8000800080008;
    v298.i64[1] = 0x8000800080008;
    v299 = 0uLL;
    v300 = vandq_s8(vextq_s8(vtstq_s16(v708, v298), 0, 8uLL), v262);
    v301 = vmovl_u16(*&vpaddq_s16(v300, v300));
    v302 = vpaddq_s32(v301, v301).u64[0];
    v303.i64[0] = v302;
    v303.i64[1] = HIDWORD(v302);
    v304 = v303;
    v305 = vaddvq_s64(v303);
    v306 = v265 + v305;
    if (v688.i64[0])
    {
      v307 = v688.i64[0] >= v306;
    }

    else
    {
      v307 = 1;
    }

    v308 = v307;
    if (v305 <= 0x80 && (v308 & 1) != 0)
    {
      v309 = v265 & 0x3F;
      v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v304));
      v311 = (v687.i64[1] + 8 * (v265 >> 6));
      v299 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
      if (v309 + v305 >= 0x81)
      {
        v299 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v299);
      }

      v265 = v306;
    }

    else
    {
      v688.i8[8] = 1;
    }

    v312 = vzip1_s32(*v301.i8, *&vextq_s8(v301, v301, 8uLL));
    v313.i64[0] = v312.u32[0];
    v313.i64[1] = v312.u32[1];
    v314 = vshlq_u64(v299, vnegq_s64(v313));
    v315 = vuzp1q_s32(vzip1q_s64(v299, v314), vzip2q_s64(v299, v314));
    v316.i64[0] = 0xFFFF0000FFFFLL;
    v316.i64[1] = 0xFFFF0000FFFFLL;
    v317 = vshlq_u32(v315, vnegq_s32(vandq_s8(v300, v316)));
    v318 = vuzp1q_s16(vzip1q_s32(v315, v317), vzip2q_s32(v315, v317));
    v317.i64[0] = 0xF000F000F000FLL;
    v317.i64[1] = 0xF000F000F000FLL;
    v319.i64[0] = 0x10001000100010;
    v319.i64[1] = 0x10001000100010;
    v320 = vshlq_s16(vshlq_s16(v318, vsubq_s16(v319, v300)), vaddq_s16(v300, v317));
    v713[3] = v320;
    v321 = v708.i8[0] & 3;
    if (v321 == 2)
    {
      if (!v688.i64[0])
      {
        v322 = v265 + 16;
LABEL_94:
        v323 = 0uLL;
        v324 = vextq_s8(0, v709, 8uLL);
        v325 = vmovl_u16(*&vpaddq_s16(v324, v324));
        v326 = vpaddq_s32(v325, v325).u64[0];
        v327.i64[0] = v326;
        v327.i64[1] = HIDWORD(v326);
        v328 = v327;
        v329 = vaddvq_s64(v327);
        if (v688.i64[0])
        {
          v330 = v688.i64[0] >= v322 + v329;
        }

        else
        {
          v330 = 1;
        }

        v331 = v330;
        if (v329 <= 0x80 && (v331 & 1) != 0)
        {
          v332 = vaddq_s64(vdupq_n_s64(v322 & 0x3F), vzip1q_s64(0, v328));
          v333 = v687.i64[1];
          v334 = (v687.i64[1] + 8 * (v322 >> 6));
          v323 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v332)));
          if ((v322 & 0x3F) + v329 >= 0x81)
          {
            v323 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v323);
          }

          v335 = v688.i8[8];
          v322 += v329;
        }

        else
        {
          v335 = 1;
          v333 = v687.i64[1];
        }

        v336.i64[0] = 0xFFFF0000FFFFLL;
        v336.i64[1] = 0xFFFF0000FFFFLL;
        v337.i64[0] = 0xF000F000F000FLL;
        v337.i64[1] = 0xF000F000F000FLL;
        v338.i64[0] = 0x10001000100010;
        v338.i64[1] = 0x10001000100010;
        v339 = vmovl_u16(*&vpaddq_s16(v709, v709));
        v340 = vpaddq_s32(v339, v339).u64[0];
        v341.i64[0] = v340;
        v341.i64[1] = HIDWORD(v340);
        v342 = v341;
        v343 = vaddvq_s64(v341);
        v344 = v343;
        v345 = v322 + v343;
        if (v688.i64[0])
        {
          v346 = v688.i64[0] >= v345;
        }

        else
        {
          v346 = 1;
        }

        v347 = v346;
        v348 = 0uLL;
        if (v343 <= 0x80 && v347)
        {
          v349 = v322 & 0x3F;
          v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v342));
          v351 = (v333 + 8 * (v322 >> 6));
          v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
          if (v349 + v344 >= 0x81)
          {
            v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
          }
        }

        else
        {
          v335 = 1;
          v345 = v322;
          v352 = 0uLL;
        }

        v353 = vzip1_s32(*v339.i8, *&vextq_s8(v339, v339, 8uLL));
        v354.i64[0] = v353.u32[0];
        v354.i64[1] = v353.u32[1];
        v355 = vnegq_s64(v354);
        v356 = vshlq_u64(v352, v355);
        v357 = vuzp1q_s32(vzip1q_s64(v352, v356), vzip2q_s64(v352, v356));
        v358 = vnegq_s32(vandq_s8(v709, v336));
        v359 = vshlq_u32(v357, v358);
        v360 = vuzp1q_s16(vzip1q_s32(v357, v359), vzip2q_s32(v357, v359));
        v361 = vaddq_s16(v709, v337);
        v362 = vsubq_s16(v338, v709);
        v363 = vshlq_s16(vshlq_s16(v360, v362), v361);
        v696 = v363;
        v364 = v345 + v344;
        if (v688.i64[0])
        {
          v365 = v688.i64[0] >= v364;
        }

        else
        {
          v365 = 1;
        }

        v366 = v365;
        if (v344 <= 0x80 && v366)
        {
          v367 = v345 & 0x3F;
          v368 = vaddq_s64(vdupq_n_s64(v367), vzip1q_s64(0, v342));
          v369 = (v333 + 8 * (v345 >> 6));
          v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v369, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v368)), vshlq_u64(vdupq_lane_s64(v369->i64[0], 0), vnegq_s64(v368)));
          if (v367 + v344 >= 0x81)
          {
            v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v369[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v368)), vshlq_u64(vdupq_laneq_s64(v369[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v368))), v348);
          }
        }

        else
        {
          v335 = 1;
          v364 = v345;
        }

        v370 = vshlq_u64(v348, v355);
        v371 = vuzp1q_s32(vzip1q_s64(v348, v370), vzip2q_s64(v348, v370));
        v372 = vshlq_u32(v371, v358);
        v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v371, v372), vzip2q_s32(v371, v372)), v362), v361);
        v697 = v373;
        v374 = v364 + v344;
        if (v688.i64[0])
        {
          v375 = v688.i64[0] >= v374;
        }

        else
        {
          v375 = 1;
        }

        v376 = v375;
        v377 = 0uLL;
        if (v344 <= 0x80 && v376)
        {
          v378 = v364 & 0x3F;
          v379 = vaddq_s64(vdupq_n_s64(v378), vzip1q_s64(0, v342));
          v380 = (v333 + 8 * (v364 >> 6));
          v381 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v380, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v379)), vshlq_u64(vdupq_lane_s64(v380->i64[0], 0), vnegq_s64(v379)));
          if (v378 + v344 >= 0x81)
          {
            v381 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v380[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v379)), vshlq_u64(vdupq_laneq_s64(v380[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v379))), v381);
          }
        }

        else
        {
          v335 = 1;
          v374 = v364;
          v381 = 0uLL;
        }

        v382 = vshlq_u64(v381, v355);
        v383 = vuzp1q_s32(vzip1q_s64(v381, v382), vzip2q_s64(v381, v382));
        v384 = vshlq_u32(v383, v358);
        v385 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v383, v384), vzip2q_s32(v383, v384)), v362), v361);
        v698 = v385;
        v386 = vmovl_u16(*&vpaddq_s16(v710, v710));
        v383.i64[0] = vpaddq_s32(v386, v386).u64[0];
        v387.i64[0] = v383.u32[0];
        v387.i64[1] = v383.u32[1];
        v388 = v387;
        v389 = vaddvq_s64(v387);
        v390 = v389;
        v391 = v374 + v389;
        if (v688.i64[0])
        {
          v392 = v688.i64[0] >= v391;
        }

        else
        {
          v392 = 1;
        }

        v393 = v392;
        if (v389 <= 0x80 && v393)
        {
          v394 = v374 & 0x3F;
          v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v388));
          v396 = (v333 + 8 * (v374 >> 6));
          v377 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
          if (v394 + v390 >= 0x81)
          {
            v377 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v377);
          }
        }

        else
        {
          v335 = 1;
          v391 = v374;
        }

        v397 = v391 + v390;
        if (v688.i64[0])
        {
          v398 = v688.i64[0] >= v397;
        }

        else
        {
          v398 = 1;
        }

        v399 = v398;
        v400 = 0uLL;
        if (v390 <= 0x80 && v399)
        {
          v401 = v391 & 0x3F;
          v402 = vaddq_s64(vdupq_n_s64(v401), vzip1q_s64(0, v388));
          v403 = (v333 + 8 * (v391 >> 6));
          v404 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v403, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v402)), vshlq_u64(vdupq_lane_s64(v403->i64[0], 0), vnegq_s64(v402)));
          if (v401 + v390 >= 0x81)
          {
            v404 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v403[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v402)), vshlq_u64(vdupq_laneq_s64(v403[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v402))), v404);
          }
        }

        else
        {
          v335 = 1;
          v397 = v391;
          v404 = 0uLL;
        }

        v405 = v397 + v390;
        if (v688.i64[0])
        {
          v406 = v688.i64[0] >= v405;
        }

        else
        {
          v406 = 1;
        }

        v407 = v406;
        if (v390 <= 0x80 && v407)
        {
          v408 = v397 & 0x3F;
          v409 = vaddq_s64(vdupq_n_s64(v408), vzip1q_s64(0, v388));
          v410 = (v333 + 8 * (v397 >> 6));
          v400 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v410, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v409)), vshlq_u64(vdupq_lane_s64(v410->i64[0], 0), vnegq_s64(v409)));
          if (v408 + v390 >= 0x81)
          {
            v400 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v410[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v409)), vshlq_u64(vdupq_laneq_s64(v410[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v409))), v400);
          }
        }

        else
        {
          v335 = 1;
          v405 = v397;
        }

        v411 = v405 + v390;
        if (v688.i64[0])
        {
          v412 = v688.i64[0] >= v411;
        }

        else
        {
          v412 = 1;
        }

        v413 = v412;
        v414 = 0uLL;
        v684 = v283;
        v686 = v285;
        v415.i64[0] = 0xFFFF0000FFFFLL;
        v415.i64[1] = 0xFFFF0000FFFFLL;
        if (v390 <= 0x80 && v413)
        {
          v416 = v405 & 0x3F;
          v417 = vaddq_s64(vdupq_n_s64(v416), vzip1q_s64(0, v388));
          v418 = (v333 + 8 * (v405 >> 6));
          v419 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v418, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v417)), vshlq_u64(vdupq_lane_s64(v418->i64[0], 0), vnegq_s64(v417)));
          if (v416 + v390 >= 0x81)
          {
            v419 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v418[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v417)), vshlq_u64(vdupq_laneq_s64(v418[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v417))), v419);
          }
        }

        else
        {
          v335 = 1;
          v411 = v405;
          v419 = 0uLL;
        }

        v420 = vmovl_u16(*&vpaddq_s16(v711, v711));
        v421 = vpaddq_s32(v420, v420).u64[0];
        v422.i64[0] = v421;
        v422.i64[1] = HIDWORD(v421);
        v423 = v422;
        v424 = vaddvq_s64(v422);
        v425 = v424;
        v426 = v411 + v424;
        if (v688.i64[0])
        {
          v427 = v688.i64[0] >= v426;
        }

        else
        {
          v427 = 1;
        }

        v428 = v427;
        if (v424 <= 0x80 && v428)
        {
          v429 = v411 & 0x3F;
          v430 = vaddq_s64(vdupq_n_s64(v429), vzip1q_s64(0, v423));
          v431 = (v333 + 8 * (v411 >> 6));
          v414 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v431, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v430)), vshlq_u64(vdupq_lane_s64(v431->i64[0], 0), vnegq_s64(v430)));
          if (v429 + v425 >= 0x81)
          {
            v414 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v431[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v430)), vshlq_u64(vdupq_laneq_s64(v431[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v430))), v414);
          }
        }

        else
        {
          v335 = 1;
          v426 = v411;
        }

        v432 = v426 + v425;
        if (v688.i64[0])
        {
          v433 = v688.i64[0] >= v432;
        }

        else
        {
          v433 = 1;
        }

        v434 = v433;
        v435 = 0uLL;
        if (v425 <= 0x80 && v434)
        {
          v436 = v426 & 0x3F;
          v437 = vaddq_s64(vdupq_n_s64(v436), vzip1q_s64(0, v423));
          v438 = (v333 + 8 * (v426 >> 6));
          v439 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v438, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v437)), vshlq_u64(vdupq_lane_s64(v438->i64[0], 0), vnegq_s64(v437)));
          if (v436 + v425 >= 0x81)
          {
            v439 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v438[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v437)), vshlq_u64(vdupq_laneq_s64(v438[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v437))), v439);
          }
        }

        else
        {
          v335 = 1;
          v432 = v426;
          v439 = 0uLL;
        }

        v440 = v432 + v425;
        if (v688.i64[0])
        {
          v441 = v688.i64[0] >= v440;
        }

        else
        {
          v441 = 1;
        }

        v442 = v441;
        if (v425 <= 0x80 && v442)
        {
          v443 = v432 & 0x3F;
          v444 = vaddq_s64(vdupq_n_s64(v443), vzip1q_s64(0, v423));
          v445 = (v333 + 8 * (v432 >> 6));
          v435 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v445, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v444)), vshlq_u64(vdupq_lane_s64(v445->i64[0], 0), vnegq_s64(v444)));
          if (v443 + v425 >= 0x81)
          {
            v435 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v445[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v444)), vshlq_u64(vdupq_laneq_s64(v445[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v444))), v435);
          }
        }

        else
        {
          v335 = 1;
          v440 = v432;
        }

        v446 = v440 + v425;
        if (v688.i64[0])
        {
          v447 = v688.i64[0] >= v446;
        }

        else
        {
          v447 = 1;
        }

        v448 = v447;
        v449 = 0uLL;
        v682 = v284;
        if (v425 <= 0x80 && v448)
        {
          v450 = v440 & 0x3F;
          v451 = vaddq_s64(vdupq_n_s64(v450), vzip1q_s64(0, v423));
          v452 = (v333 + 8 * (v440 >> 6));
          v453 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v452, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v451)), vshlq_u64(vdupq_lane_s64(v452->i64[0], 0), vnegq_s64(v451)));
          if (v450 + v425 >= 0x81)
          {
            v453 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v452[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v451)), vshlq_u64(vdupq_laneq_s64(v452[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v451))), v453);
          }
        }

        else
        {
          v335 = 1;
          v446 = v440;
          v453 = 0uLL;
        }

        v454 = vmovl_u16(*&vpaddq_s16(v712, v712));
        v455 = vpaddq_s32(v454, v454).u64[0];
        v456.i64[0] = v455;
        v456.i64[1] = HIDWORD(v455);
        v457 = v456;
        v458 = vaddvq_s64(v456);
        v459 = v458;
        v460 = v446 + v458;
        if (v688.i64[0])
        {
          v461 = v688.i64[0] >= v460;
        }

        else
        {
          v461 = 1;
        }

        v462 = v461;
        if (v458 <= 0x80 && v462)
        {
          v463 = v446 & 0x3F;
          v464 = vaddq_s64(vdupq_n_s64(v463), vzip1q_s64(0, v457));
          v465 = (v333 + 8 * (v446 >> 6));
          v449 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v465, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v464)), vshlq_u64(vdupq_lane_s64(v465->i64[0], 0), vnegq_s64(v464)));
          if (v463 + v459 >= 0x81)
          {
            v449 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v465[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v464)), vshlq_u64(vdupq_laneq_s64(v465[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v464))), v449);
          }
        }

        else
        {
          v335 = 1;
          v460 = v446;
        }

        v466 = v460 + v459;
        if (v688.i64[0])
        {
          v467 = v688.i64[0] >= v466;
        }

        else
        {
          v467 = 1;
        }

        v468 = v467;
        v469 = 0uLL;
        if (v459 <= 0x80 && v468)
        {
          v470 = v460 & 0x3F;
          v471 = vaddq_s64(vdupq_n_s64(v470), vzip1q_s64(0, v457));
          v472 = (v333 + 8 * (v460 >> 6));
          v473 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v472, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v471)), vshlq_u64(vdupq_lane_s64(v472->i64[0], 0), vnegq_s64(v471)));
          if (v470 + v459 >= 0x81)
          {
            v473 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v472[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v471)), vshlq_u64(vdupq_laneq_s64(v472[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v471))), v473);
          }
        }

        else
        {
          v335 = 1;
          v466 = v460;
          v473 = 0uLL;
        }

        v474 = v466 + v459;
        if (v688.i64[0])
        {
          v475 = v688.i64[0] >= v474;
        }

        else
        {
          v475 = 1;
        }

        v476 = v475;
        if (v459 <= 0x80 && v476)
        {
          v477 = v466 & 0x3F;
          v478 = vaddq_s64(vdupq_n_s64(v477), vzip1q_s64(0, v457));
          v479 = (v333 + 8 * (v466 >> 6));
          v469 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v479, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v478)), vshlq_u64(vdupq_lane_s64(v479->i64[0], 0), vnegq_s64(v478)));
          if (v477 + v459 >= 0x81)
          {
            v469 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v479[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v478)), vshlq_u64(vdupq_laneq_s64(v479[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v478))), v469);
          }
        }

        else
        {
          v335 = 1;
          v474 = v466;
        }

        v480 = v474 + v459;
        if (v688.i64[0])
        {
          v481 = v688.i64[0] >= v480;
        }

        else
        {
          v481 = 1;
        }

        v482 = v481;
        if (v459 > 0x80 || !v482)
        {
          goto LABEL_275;
        }

        v483 = vaddq_s64(vdupq_n_s64(v474 & 0x3F), vzip1q_s64(0, v457));
        v484 = (v333 + 8 * (v474 >> 6));
        v485 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v484, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v483)), vshlq_u64(vdupq_lane_s64(v484->i64[0], 0), vnegq_s64(v483)));
        if ((v474 & 0x3F) + v459 >= 0x81)
        {
          v485 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v484[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v483)), vshlq_u64(vdupq_laneq_s64(v484[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v483))), v485);
        }

        if ((v335 & 1) != 0 || v688.i64[0] + 8 * result - v480 - 768 >= 9 || v321 == 2)
        {
LABEL_275:
          result = 0;
          v486 = vdupq_n_s64(0xFFFFF003FFuLL);
          *a1 = v486;
          a1[1] = v486;
          a1[2] = v486;
          a1[3] = v486;
          v487 = (a1 + a2);
          *v487 = v486;
          v487[1] = v486;
          v487[2] = v486;
          v487[3] = v486;
          v488 = (a1 + 2 * a2);
          *v488 = v486;
          v488[1] = v486;
          v488[2] = v486;
          v488[3] = v486;
          v489 = (a1 + 2 * a2 + a2);
          *v489 = v486;
          v489[1] = v486;
          v489[2] = v486;
          v489[3] = v486;
        }

        else
        {
          v490 = vzip1_s32(*v325.i8, *&vextq_s8(v325, v325, 8uLL));
          v491 = vzip1_s32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
          v492 = vzip1_s32(*v420.i8, *&vextq_s8(v420, v420, 8uLL));
          v493 = vzip1_s32(*v454.i8, *&vextq_s8(v454, v454, 8uLL));
          v494.i64[0] = v490.u32[0];
          v494.i64[1] = v490.u32[1];
          v495 = vshlq_u64(v323, vnegq_s64(v494));
          v496 = vzip2q_s64(v323, v495);
          v497 = vzip1q_s64(v323, v495);
          v494.i64[0] = v491.u32[0];
          v494.i64[1] = v491.u32[1];
          v498 = vnegq_s64(v494);
          v499 = vshlq_u64(v377, v498);
          v500 = vzip2q_s64(v377, v499);
          v501 = vzip1q_s64(v377, v499);
          v502 = vshlq_u64(v404, v498);
          v503 = vzip2q_s64(v404, v502);
          v504 = vzip1q_s64(v404, v502);
          v505 = vshlq_u64(v400, v498);
          v506 = vzip2q_s64(v400, v505);
          v507 = vzip1q_s64(v400, v505);
          v508 = vshlq_u64(v419, v498);
          v509 = vzip2q_s64(v419, v508);
          v510 = vzip1q_s64(v419, v508);
          v494.i64[0] = v492.u32[0];
          v494.i64[1] = v492.u32[1];
          v511 = vnegq_s64(v494);
          v512 = vshlq_u64(v414, v511);
          v680 = v261;
          v681 = v282;
          v513 = vzip2q_s64(v414, v512);
          v514 = vzip1q_s64(v414, v512);
          v515 = vshlq_u64(v439, v511);
          v516 = vzip2q_s64(v439, v515);
          v517 = vzip1q_s64(v439, v515);
          v518 = vshlq_u64(v435, v511);
          v676 = v320;
          v677 = v373;
          v519 = vzip2q_s64(v435, v518);
          v520 = vzip1q_s64(v435, v518);
          v521 = vshlq_u64(v453, v511);
          v522 = vzip2q_s64(v453, v521);
          v523 = vzip1q_s64(v453, v521);
          v494.i64[0] = v493.u32[0];
          v494.i64[1] = v493.u32[1];
          v524 = vnegq_s64(v494);
          v525 = vshlq_u64(v449, v524);
          v678 = v363;
          v679 = v385;
          v526 = vzip2q_s64(v449, v525);
          v527 = vzip1q_s64(v449, v525);
          v528 = vshlq_u64(v473, v524);
          v529 = v324;
          v530 = vzip2q_s64(v473, v528);
          v531 = vzip1q_s64(v473, v528);
          v532 = vshlq_u64(v469, v524);
          v533 = vuzp1q_s32(v497, v496);
          v534 = vuzp1q_s32(v501, v500);
          v535 = vuzp1q_s32(v504, v503);
          v536 = vuzp1q_s32(v507, v506);
          v537 = vuzp1q_s32(v510, v509);
          v538 = vuzp1q_s32(v514, v513);
          v539 = vuzp1q_s32(v517, v516);
          v540 = vuzp1q_s32(v520, v519);
          v541 = vuzp1q_s32(v523, v522);
          v542 = vuzp1q_s32(v527, v526);
          v543 = vuzp1q_s32(v531, v530);
          v531.i64[0] = 0xFFFF0000FFFFLL;
          v531.i64[1] = 0xFFFF0000FFFFLL;
          v544 = vnegq_s32(vandq_s8(v710, v531));
          v545 = vuzp1q_s32(vzip1q_s64(v469, v532), vzip2q_s64(v469, v532));
          v546 = vshlq_u32(v533, vnegq_s32(vandq_s8(v529, v415)));
          v547 = vzip2q_s32(v533, v546);
          v548 = vzip1q_s32(v533, v546);
          v549 = vshlq_u32(v534, v544);
          v550 = vzip2q_s32(v534, v549);
          v551 = vzip1q_s32(v534, v549);
          v552 = vshlq_u32(v535, v544);
          v553 = vzip2q_s32(v535, v552);
          v554 = vzip1q_s32(v535, v552);
          v555 = vshlq_u32(v536, v544);
          v556 = vzip2q_s32(v536, v555);
          v557 = vzip1q_s32(v536, v555);
          v558 = vshlq_u32(v537, v544);
          v559 = vzip2q_s32(v537, v558);
          v560 = vzip1q_s32(v537, v558);
          v558.i64[0] = 0xFFFF0000FFFFLL;
          v558.i64[1] = 0xFFFF0000FFFFLL;
          v561 = vnegq_s32(vandq_s8(v711, v558));
          v562 = vshlq_u32(v538, v561);
          v563 = vzip2q_s32(v538, v562);
          v564 = vzip1q_s32(v538, v562);
          v565 = vshlq_u32(v539, v561);
          v566 = vzip2q_s32(v539, v565);
          v567 = vzip1q_s32(v539, v565);
          v568 = vshlq_u32(v540, v561);
          v569 = vzip2q_s32(v540, v568);
          v570 = vzip1q_s32(v540, v568);
          v571 = vshlq_u32(v541, v561);
          v572 = vzip2q_s32(v541, v571);
          v573 = vzip1q_s32(v541, v571);
          v571.i64[0] = 0xFFFF0000FFFFLL;
          v571.i64[1] = 0xFFFF0000FFFFLL;
          v574 = vnegq_s32(vandq_s8(v712, v571));
          v575 = vshlq_u32(v542, v574);
          v576 = vzip2q_s32(v542, v575);
          v577 = vzip1q_s32(v542, v575);
          v578 = vshlq_u32(v543, v574);
          v579 = vzip2q_s32(v543, v578);
          v580 = vzip1q_s32(v543, v578);
          v581 = vshlq_u32(v545, v574);
          v582 = vuzp1q_s16(v548, v547);
          v583 = vuzp1q_s16(v560, v559);
          v584.i64[0] = 0x10001000100010;
          v584.i64[1] = 0x10001000100010;
          v560.i64[0] = 0xF000F000F000FLL;
          v560.i64[1] = 0xF000F000F000FLL;
          v585 = vaddq_s16(v529, v560);
          v547.i64[0] = 0x10001000100010;
          v547.i64[1] = 0x10001000100010;
          v586 = vshlq_s16(v582, vsubq_s16(v584, v529));
          v584.i64[0] = 0xF000F000F000FLL;
          v584.i64[1] = 0xF000F000F000FLL;
          v587 = vsubq_s16(v547, v710);
          v588 = vaddq_s16(v710, v584);
          v529.i64[0] = 0x10001000100010;
          v529.i64[1] = 0x10001000100010;
          v589 = vshlq_s16(vuzp1q_s16(v551, v550), v587);
          v590 = vshlq_s16(vuzp1q_s16(v554, v553), v587);
          v591 = vshlq_s16(vuzp1q_s16(v557, v556), v587);
          v592 = vshlq_s16(v583, v587);
          v587.i64[0] = 0xF000F000F000FLL;
          v587.i64[1] = 0xF000F000F000FLL;
          v593 = vsubq_s16(v529, v711);
          v594 = vaddq_s16(v711, v587);
          v550.i64[0] = 0x10001000100010;
          v550.i64[1] = 0x10001000100010;
          v595 = vshlq_s16(vuzp1q_s16(v564, v563), v593);
          v596 = vshlq_s16(vuzp1q_s16(v567, v566), v593);
          v597 = vshlq_s16(vuzp1q_s16(v570, v569), v593);
          v598 = vshlq_s16(vuzp1q_s16(v573, v572), v593);
          v593.i64[0] = 0xF000F000F000FLL;
          v593.i64[1] = 0xF000F000F000FLL;
          v599 = vsubq_s16(v550, v712);
          v600 = vaddq_s16(v712, v593);
          v601 = vshlq_s16(v589, v588);
          v602 = vshlq_s16(v590, v588);
          v603 = vshlq_s16(v591, v588);
          v604 = vshlq_s16(v592, v588);
          v605 = vshlq_s16(v595, v594);
          v606 = vshlq_s16(v596, v594);
          v607 = vshlq_s16(v597, v594);
          v608 = vshlq_s16(v598, v594);
          v609 = vshlq_u64(v485, v524);
          v610 = vuzp1q_s32(vzip1q_s64(v485, v609), vzip2q_s64(v485, v609));
          v611 = vshlq_u32(v610, v574);
          v612 = vshlq_s16(vuzp1q_s16(v580, v579), v599);
          v613 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v545, v581), vzip2q_s32(v545, v581)), v599);
          v614 = vshlq_s16(vshlq_s16(vuzp1q_s16(v577, v576), v599), v600);
          v615 = vshlq_s16(v612, v600);
          v616 = vshlq_s16(v613, v600);
          v617 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v610, v611), vzip2q_s32(v610, v611)), v599), v600);
          v618 = vaddq_s16(vandq_s8(v676, v686), vshlq_s16(v586, v585));
          v619 = vdupq_lane_s64(v676.i64[0], 0);
          v620 = vandq_s8(v682, v619);
          v621 = vsubq_s16(v601, v620);
          v622 = vsubq_s16(v602, v620);
          v623 = vsubq_s16(v603, v620);
          v624 = vsubq_s16(v604, v620);
          v625 = vandq_s8(v684, v619);
          v626 = vsubq_s16(v605, v625);
          v627 = vsubq_s16(v606, v625);
          v628 = vandq_s8(v686, v619);
          v629 = vsubq_s16(v607, v625);
          v630 = vsubq_s16(v608, v625);
          v631.i64[0] = 0x1000100010001;
          v631.i64[1] = 0x1000100010001;
          v632 = vsubq_s16(v678, v628);
          v633 = vsubq_s16(v677, v628);
          v634 = vandq_s8(v681, v619);
          v635 = vsubq_s16(v614, v634);
          v636 = vsubq_s16(v615, v634);
          v637 = vsubq_s16(v616, v634);
          v638 = vsubq_s16(v617, v634);
          v639 = vsubq_s16(v679, v628);
          v640 = vsubq_s16(v618, v628);
          v695 = v618;
          v703 = v635;
          v704 = v636;
          v705 = v637;
          v706 = v638;
          if (vaddvq_s16(vceqq_s16(v680, v631)))
          {
            v641 = vnegq_s16(vandq_s8(v708, v631));
            v642.i64[0] = v639.i64[0];
            v643.i64[1] = v640.i64[1];
            v642.i64[1] = v640.i64[0];
            v643.i64[0] = v639.i64[1];
            v644 = vbslq_s8(v641, v643, v640);
            v645 = vbslq_s8(v641, v642, v639);
            v643.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v643.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v646 = vandq_s8(vqtbl4q_s8(*(&v632 - 1), v643), v641);
            v717.val[0] = vaddq_s16(v644, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10B0), v641));
            v717.val[1] = vaddq_s16(v632, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10C0), v641));
            v717.val[2] = vaddq_s16(v633, v646);
            v717.val[3] = vaddq_s16(v645, v646);
            v647 = vandq_s8(vqtbl4q_s8(v717, v643), v641);
            v640 = vaddq_s16(v717.val[0], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10D0), v641));
            v632 = vaddq_s16(v717.val[1], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10E0), v641));
            v695 = v640;
            v696 = v632;
            v633 = vaddq_s16(v717.val[2], v647);
            v639 = vaddq_s16(v717.val[3], v647);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10B0), v641), v621);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10F0), v641), v622);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, v643), v641), v623);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F1100), v641), v624);
            v648 = vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10D0), v641);
            v649 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v621 = vaddq_s16(v648, v715.val[0]);
            v622 = vaddq_s16(v715.val[1], v648);
            v623 = vaddq_s16(v715.val[2], v649);
            v624 = vaddq_s16(v715.val[3], v649);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0EB0), v641), v626);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0FB0), v641), v627);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10B0), v641), v629);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10C0), v641), v630);
            v650 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v626 = vaddq_s16(v715.val[0], v650);
            v627 = vaddq_s16(v715.val[1], v650);
            v629 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v641));
            v630 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1110), v641));
            v715.val[0] = v703;
            v715.val[1] = v704;
            v651 = v708;
            v715.val[2] = v705;
            v715.val[3] = v706;
            v716.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0EB0), v641), v703);
            v716.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1120), v641), v704);
            v697 = v633;
            v698 = v639;
            v716.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10B0), v641), v705);
            v716.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10C0), v641), v706);
            v652 = vandq_s8(vqtbl4q_s8(v716, v643), v641);
            v653 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F0FE0), v641);
            v654 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F1130), v641);
            v635 = vaddq_s16(v716.val[0], v652);
            v636 = vaddq_s16(v716.val[1], v652);
            v637 = vaddq_s16(v716.val[2], v653);
            v638 = vaddq_s16(v716.val[3], v654);
          }

          else
          {
            v651 = v708;
          }

          v655 = vaddq_s16(v707, v640);
          v656 = vaddq_s16(v632, v707);
          v657 = vaddq_s16(v633, v707);
          v658 = vaddq_s16(v639, v707);
          v659 = vaddq_s16(v621, v707);
          v660 = vaddq_s16(v622, v707);
          v661 = vaddq_s16(v623, v707);
          v662 = vaddq_s16(v624, v707);
          v663 = vaddq_s16(v626, v707);
          v664 = vaddq_s16(v627, v707);
          v665 = vaddq_s16(v629, v707);
          v666 = vaddq_s16(v630, v707);
          v667 = vaddq_s16(v635, v707);
          v668 = vaddq_s16(v636, v707);
          v669 = vaddq_s16(v637, v707);
          v670 = vaddq_s16(v638, v707);
          v671.i64[0] = 0x10001000100010;
          v671.i64[1] = 0x10001000100010;
          v672 = vceqzq_s16(vandq_s8(v651, v671));
          v673 = (a1 + a2);
          *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v672), v655), 6uLL);
          a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v672), v657), 6uLL);
          a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v663, xmmword_29D2F1140), v672), v663), 6uLL);
          a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v672), v665), 6uLL);
          v674 = (a1 + 2 * a2);
          *v673 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v672), v656), 6uLL);
          v673[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v672), v658), 6uLL);
          v673[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v672), v664), 6uLL);
          v673[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v672), v666), 6uLL);
          *v674 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v672), v659), 6uLL);
          v674[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v661, xmmword_29D2F1140), v672), v661), 6uLL);
          v674[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v667, xmmword_29D2F1140), v672), v667), 6uLL);
          v674[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v669, xmmword_29D2F1140), v672), v669), 6uLL);
          v675 = (v674 + a2);
          *v675 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v672), v660), 6uLL);
          v675[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v662, xmmword_29D2F1140), v672), v662), 6uLL);
          v675[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v668, xmmword_29D2F1140), v672), v668), 6uLL);
          v675[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v670, xmmword_29D2F1140), v672), v670), 6uLL);
        }

        return result;
      }

      if (v688.i64[0] >= v265 + 8)
      {
        v687.i64[0] = v265 + 8;
        v322 = v265 + 16;
        v265 += 8;
      }

      else
      {
        v688.i8[8] = 1;
        v322 = v265 + 8;
      }

      if (v688.i64[0] >= v322)
      {
        goto LABEL_94;
      }

      v688.i8[8] = 1;
    }

    v322 = v265;
    goto LABEL_94;
  }

  v29.i64[0] = 0xA000A000A000ALL;
  v29.i64[1] = 0xA000A000A000ALL;
  v30 = vmovl_u16(*&vpaddq_s16(v29, v29));
  v29.i64[0] = vpaddq_s32(v30, v30).u64[0];
  v31.i64[0] = v29.u32[0];
  v31.i64[1] = v29.u32[1];
  v32 = v31;
  v33 = vaddvq_s64(v31);
  v34 = v33;
  v35 = 0uLL;
  if (v33 > 0x80)
  {
    v249 = 0uLL;
    v250 = 0uLL;
    v251 = 0uLL;
    v241 = 0uLL;
    v242 = 0uLL;
    v243 = 0uLL;
    v244 = 0uLL;
    v248 = 0uLL;
    v247 = 0uLL;
    v246 = 0uLL;
    v245 = 0uLL;
    v258 = 0uLL;
    v257 = 0uLL;
    v256 = 0uLL;
    v255 = 0uLL;
  }

  else
  {
    v36 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v37 = vzip1q_s64(0, v32);
    v38 = 8 * (a3 & 7);
    v39 = v33 + v38;
    v40 = vaddq_s64(v37, vdupq_n_s64(v38));
    v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v40)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v40)));
    if (v39 >= 0x81)
    {
      v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v36[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v40)), vshlq_u64(vdupq_laneq_s64(v36[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v40))), v41);
    }

    v42 = v39 & 0x3F;
    v43 = (v36 + 8 * (v39 >> 6));
    v44 = vaddq_s64(v37, vdupq_n_s64(v42));
    v45 = v34 + v39;
    v46 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
    if (v34 + v42 >= 0x81)
    {
      v46 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v46);
    }

    v47 = v45 & 0x3F;
    v48 = (v36 + 8 * (v45 >> 6));
    v49 = vaddq_s64(v37, vdupq_n_s64(v47));
    v50 = v34 + v45;
    v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
    if (v34 + v47 >= 0x81)
    {
      v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v51);
    }

    v52 = v50 & 0x3F;
    v53 = (v36 + 8 * (v50 >> 6));
    v54 = vaddq_s64(v37, vdupq_n_s64(v52));
    v55 = v34 + v50;
    v56 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v54)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v54)));
    if (v34 + v52 >= 0x81)
    {
      v56 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v54)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v54))), v56);
    }

    v57 = vextq_s8(v30, v30, 8uLL).u64[0];
    v58 = v55 & 0x3F;
    v59 = (v36 + 8 * (v55 >> 6));
    v60 = vaddq_s64(v37, vdupq_n_s64(v58));
    v61 = v34 + v55;
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v60)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v60)));
    if (v34 + v58 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v60)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v60))), v62);
    }

    v63 = v61 & 0x3F;
    v64 = (v36 + 8 * (v61 >> 6));
    v65 = vaddq_s64(v37, vdupq_n_s64(v63));
    v66 = v34 + v61;
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v64, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v64->i64[0], 0), vnegq_s64(v65)));
    if (v34 + v63 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v64[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v64[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v67);
    }

    v68 = vzip1_s32(*v30.i8, v57);
    v69 = v66 & 0x3F;
    v70 = (v36 + 8 * (v66 >> 6));
    v71 = vaddq_s64(v37, vdupq_n_s64(v69));
    v72 = v34 + v66;
    v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
    if (v34 + v69 >= 0x81)
    {
      v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
    }

    v74.i64[0] = v68.u32[0];
    v74.i64[1] = v68.u32[1];
    v75 = v74;
    v76 = v72 & 0x3F;
    v77 = (v36 + 8 * (v72 >> 6));
    v78 = vaddq_s64(v37, vdupq_n_s64(v76));
    v79 = v34 + v72;
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v77, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v77->i64[0], 0), vnegq_s64(v78)));
    if (v34 + v76 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v77[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v77[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v80);
    }

    v81 = vnegq_s64(v75);
    v82 = v79 & 0x3F;
    v83 = (v36 + 8 * (v79 >> 6));
    v84 = vaddq_s64(v37, vdupq_n_s64(v82));
    v85 = v34 + v79;
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
    if (v34 + v82 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }

    v87 = vshlq_u64(v41, v81);
    v88 = vshlq_u64(v46, v81);
    v89 = vshlq_u64(v51, v81);
    v90 = vshlq_u64(v56, v81);
    v91 = vshlq_u64(v62, v81);
    v92 = vshlq_u64(v67, v81);
    v93 = vshlq_u64(v73, v81);
    v94 = vshlq_u64(v80, v81);
    v95 = vshlq_u64(v86, v81);
    v96 = v85 & 0x3F;
    v97 = (v36 + 8 * (v85 >> 6));
    v98 = vaddq_s64(v37, vdupq_n_s64(v96));
    v99 = v34 + v85;
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v98)));
    if (v34 + v96 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v100);
    }

    v101 = vzip2q_s64(v41, v87);
    v102 = vzip1q_s64(v41, v87);
    v103 = vzip2q_s64(v46, v88);
    v104 = vzip1q_s64(v46, v88);
    v105 = vzip2q_s64(v51, v89);
    v106 = vzip1q_s64(v51, v89);
    v107 = vzip2q_s64(v56, v90);
    v108 = vzip1q_s64(v56, v90);
    v109 = vzip2q_s64(v62, v91);
    v110 = vzip1q_s64(v62, v91);
    v111 = vzip2q_s64(v67, v92);
    v112 = vzip1q_s64(v67, v92);
    v113 = vzip2q_s64(v73, v93);
    v114 = vzip1q_s64(v73, v93);
    v115 = vzip2q_s64(v80, v94);
    v116 = vzip1q_s64(v80, v94);
    v117 = vzip2q_s64(v86, v95);
    v118 = vzip1q_s64(v86, v95);
    v119 = vshlq_u64(v100, v81);
    v120 = vzip2q_s64(v100, v119);
    v121 = vzip1q_s64(v100, v119);
    v122 = (v36 + 8 * (v99 >> 6));
    v123 = vaddq_s64(v37, vdupq_n_s64(v99 & 0x3F));
    v124 = v34 + v99;
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v123)));
    if (v34 + (v99 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }

    v126 = vuzp1q_s32(v102, v101);
    v127 = vuzp1q_s32(v104, v103);
    v128 = vuzp1q_s32(v106, v105);
    v129 = vuzp1q_s32(v108, v107);
    v130 = vuzp1q_s32(v110, v109);
    v131 = vuzp1q_s32(v112, v111);
    v132 = vuzp1q_s32(v114, v113);
    v133 = vuzp1q_s32(v116, v115);
    v134 = vuzp1q_s32(v118, v117);
    v135 = vuzp1q_s32(v121, v120);
    v136 = vshlq_u64(v125, v81);
    v137 = vuzp1q_s32(vzip1q_s64(v125, v136), vzip2q_s64(v125, v136));
    v138 = v34 + v124;
    v139 = v124 & 0x3F;
    v140 = vaddq_s64(v37, vdupq_n_s64(v139));
    v141 = (v36 + 8 * (v124 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v34 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }

    v143 = vshrq_n_u32(v126, 0xAuLL);
    v144 = vshrq_n_u32(v127, 0xAuLL);
    v145 = vshrq_n_u32(v128, 0xAuLL);
    v146 = vshrq_n_u32(v129, 0xAuLL);
    v147 = vshrq_n_u32(v130, 0xAuLL);
    v148 = vshrq_n_u32(v131, 0xAuLL);
    v149 = vshrq_n_u32(v132, 0xAuLL);
    v150 = vshrq_n_u32(v133, 0xAuLL);
    v151 = vshrq_n_u32(v134, 0xAuLL);
    v152 = vshrq_n_u32(v135, 0xAuLL);
    v153 = vshrq_n_u32(v137, 0xAuLL);
    v154 = vshlq_u64(v142, v81);
    v155 = vuzp1q_s32(vzip1q_s64(v142, v154), vzip2q_s64(v142, v154));
    v156 = vshrq_n_u32(v155, 0xAuLL);
    v157 = v138 & 0x3F;
    v158 = (v36 + 8 * (v138 >> 6));
    v159 = vaddq_s64(v37, vdupq_n_s64(v157));
    v160 = v34 + v138;
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v159)));
    if (v34 + v157 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }

    v162 = vzip2q_s32(v126, v143);
    v163 = vzip1q_s32(v126, v143);
    v683 = vzip1q_s32(v127, v144);
    v685 = vzip2q_s32(v127, v144);
    v164 = vzip2q_s32(v128, v145);
    v165 = vzip1q_s32(v128, v145);
    v166 = vzip2q_s32(v129, v146);
    v167 = vzip1q_s32(v129, v146);
    v168 = vzip2q_s32(v130, v147);
    v169 = vzip1q_s32(v130, v147);
    v170 = vzip2q_s32(v131, v148);
    v171 = vzip1q_s32(v131, v148);
    v172 = vzip2q_s32(v132, v149);
    v173 = vzip1q_s32(v132, v149);
    v174 = vzip2q_s32(v133, v150);
    v175 = vzip1q_s32(v133, v150);
    v176 = vzip2q_s32(v134, v151);
    v177 = vzip1q_s32(v134, v151);
    v178 = vzip2q_s32(v135, v152);
    v179 = vzip1q_s32(v135, v152);
    v180 = vzip2q_s32(v137, v153);
    v181 = vzip1q_s32(v137, v153);
    v182 = vzip2q_s32(v155, v156);
    v183 = vzip1q_s32(v155, v156);
    v184 = vshlq_u64(v161, v81);
    v185 = vuzp1q_s32(vzip1q_s64(v161, v184), vzip2q_s64(v161, v184));
    v186 = vshrq_n_u32(v185, 0xAuLL);
    v187 = vzip2q_s32(v185, v186);
    v188 = vzip1q_s32(v185, v186);
    v189 = vaddq_s64(v37, vdupq_n_s64(v160 & 0x3F));
    v190 = (v36 + 8 * (v160 >> 6));
    v191.i64[0] = 0x1000100010001;
    v191.i64[1] = 0x1000100010001;
    v192 = vshlq_n_s16(v191, 0xAuLL);
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
    v194.i64[0] = -1;
    v194.i64[1] = -1;
    v195 = v34 + v160;
    if (v34 + (v160 & 0x3F) >= 0x81)
    {
      v194.i64[0] = -1;
      v194.i64[1] = -1;
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v193);
    }

    v196 = vaddq_s16(v192, v194);
    v197 = vuzp1q_s16(v163, v162);
    v198 = vuzp1q_s16(v683, v685);
    v199 = vuzp1q_s16(v165, v164);
    v200 = vuzp1q_s16(v167, v166);
    v201 = vuzp1q_s16(v169, v168);
    v202 = vuzp1q_s16(v171, v170);
    v203 = vuzp1q_s16(v173, v172);
    v204 = vuzp1q_s16(v175, v174);
    v205 = vuzp1q_s16(v177, v176);
    v206 = vuzp1q_s16(v179, v178);
    v207 = vuzp1q_s16(v181, v180);
    v208 = vuzp1q_s16(v183, v182);
    v209 = vuzp1q_s16(v188, v187);
    v210 = vshlq_u64(v193, v81);
    v211 = vuzp1q_s32(vzip1q_s64(v193, v210), vzip2q_s64(v193, v210));
    v212 = vshrq_n_u32(v211, 0xAuLL);
    v213 = vuzp1q_s16(vzip1q_s32(v211, v212), vzip2q_s32(v211, v212));
    v214 = v34 + v195;
    v215 = v195 & 0x3F;
    v216 = vaddq_s64(v37, vdupq_n_s64(v215));
    v217 = (v36 + 8 * (v195 >> 6));
    v218 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v217, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v216)), vshlq_u64(vdupq_lane_s64(v217->i64[0], 0), vnegq_s64(v216)));
    if (v34 + v215 >= 0x81)
    {
      v218 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v217[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v216)), vshlq_u64(vdupq_laneq_s64(v217[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v216))), v218);
    }

    v219 = vandq_s8(v196, v197);
    v220 = vandq_s8(v196, v198);
    v221 = vandq_s8(v196, v199);
    v222 = vandq_s8(v196, v200);
    v223 = vandq_s8(v196, v201);
    v224 = vandq_s8(v196, v202);
    v225 = vandq_s8(v196, v203);
    v226 = vandq_s8(v196, v204);
    v227 = vandq_s8(v196, v205);
    v228 = vandq_s8(v196, v206);
    v229 = vandq_s8(v196, v207);
    v230 = vandq_s8(v196, v208);
    v231 = vandq_s8(v196, v209);
    v232 = vandq_s8(v196, v213);
    v233 = vshlq_u64(v218, v81);
    v234 = vuzp1q_s32(vzip1q_s64(v218, v233), vzip2q_s64(v218, v233));
    v235 = vshrq_n_u32(v234, 0xAuLL);
    v236 = vuzp1q_s16(vzip1q_s32(v234, v235), vzip2q_s32(v234, v235));
    v237 = (v36 + 8 * (v214 >> 6));
    v238 = vaddq_s64(v37, vdupq_n_s64(v214 & 0x3F));
    v239 = vandq_s8(v196, v236);
    v240 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v237, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v237->i64[0], 0), vnegq_s64(v238)));
    if (v34 + (v214 & 0x3F) >= 0x81)
    {
      v240 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v237[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v237[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v240);
    }

    v241 = vshlq_n_s16(v219, 6uLL);
    v242 = vshlq_n_s16(v220, 6uLL);
    v243 = vshlq_n_s16(v221, 6uLL);
    v244 = vshlq_n_s16(v222, 6uLL);
    v245 = vshlq_n_s16(v223, 6uLL);
    v246 = vshlq_n_s16(v224, 6uLL);
    v247 = vshlq_n_s16(v225, 6uLL);
    v248 = vshlq_n_s16(v226, 6uLL);
    v35 = vshlq_n_s16(v227, 6uLL);
    v249 = vshlq_n_s16(v228, 6uLL);
    v250 = vshlq_n_s16(v229, 6uLL);
    v251 = vshlq_n_s16(v230, 6uLL);
    v252 = vshlq_u64(v240, v81);
    v253 = vuzp1q_s32(vzip1q_s64(v240, v252), vzip2q_s64(v240, v252));
    v254 = vshrq_n_u32(v253, 0xAuLL);
    v255 = vshlq_n_s16(v231, 6uLL);
    v256 = vshlq_n_s16(v232, 6uLL);
    v257 = vshlq_n_s16(v239, 6uLL);
    v258 = vshlq_n_s16(vandq_s8(v196, vuzp1q_s16(vzip1q_s32(v253, v254), vzip2q_s32(v253, v254))), 6uLL);
  }

  v279 = (a1 + a2);
  *a1 = v241;
  a1[1] = v243;
  a1[2] = v35;
  a1[3] = v250;
  v280 = (a1 + 2 * a2);
  *v279 = v242;
  v279[1] = v244;
  v279[2] = v249;
  v279[3] = v251;
  *v280 = v245;
  v280[1] = v247;
  v280[2] = v255;
  v280[3] = v257;
  v281 = (v280 + a2);
  result = 160;
  *v281 = v246;
  v281[1] = v248;
  v281[2] = v256;
  v281[3] = v258;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 4 * a2;
  v18 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8 - 4;
    }

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v23 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
  v11 += result;
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 64), a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 64), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 4, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 36, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 68, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 96, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 100, 128, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 22;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x2B)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x200;
  v15 = ((a4 >> 6) | (4 * v13)) & 0xF;
  v16 = vdupq_n_s16(v15);
  a8.i32[0] = v15;
  v17.i64[0] = 0x3000300030003;
  v17.i64[1] = 0x3000300030003;
  v18 = vbicq_s8(vdupq_n_s16(((v13 >> 2) & 0xF) + 1), vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v17));
  v19 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v20.i64[0] = 0x202020202020202;
  v20.i64[1] = 0x202020202020202;
  v21 = vandq_s8(v19, v20);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v47 = v18;
    v48 = v18;
    v46 = v18;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v18;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3E));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3E) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i32[0] = vandq_s8(vaddq_s8(v40, v36), v39).u32[0];
    v41 = vdupq_n_s16(v40.i8[0]);
    v42 = vdupq_n_s16(v40.i8[1]);
    v43 = vdupq_n_s16(v40.i8[2]);
    v44 = vdupq_n_s16(v40.i8[3]);
    v45 = vsubq_s16(v18, v41);
    v46 = vsubq_s16(v18, v42);
    v47 = vsubq_s16(v18, v43);
    v48 = vsubq_s16(v18, v44);
    v49 = vceqzq_s16(v41);
    v50 = vceqzq_s16(v42);
    v51 = vceqzq_s16(v43);
    v52 = vceqzq_s16(v44);
  }

  v53.i64[0] = 0x7000700070007;
  v53.i64[1] = 0x7000700070007;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u16(v16, v53), 0, 0xEuLL), v18);
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  if (v60 <= 0x80 && v14 >= v60 + v12)
  {
    v62 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v12 & 0x3F));
    v63 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v63, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v62)), vshlq_u64(vdupq_lane_s64(v63->i64[0], 0), vnegq_s64(v62)));
    if (v60 + (v12 & 0x3F) >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v63[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v62)), vshlq_u64(vdupq_laneq_s64(v63[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v62))), v54);
    }

    v12 += v60;
  }

  else
  {
    v29 = 1;
  }

  v64 = v15 & 3;
  if (v64 != 2)
  {
    LODWORD(v68) = 0;
    LODWORD(v66) = 0;
    v69 = v12;
    goto LABEL_36;
  }

  v65 = v12 + 8;
  if (v14 < v12 + 8)
  {
    LODWORD(v66) = 0;
    v65 = v12;
LABEL_35:
    LODWORD(v68) = 0;
    v29 = 1;
    v69 = v65;
    goto LABEL_36;
  }

  v70 = (v11 + 8 * (v12 >> 6));
  v66 = *v70 >> v12;
  if ((v12 & 0x3F) >= 0x39)
  {
    v66 |= v70[1] << -(v12 & 0x3F);
  }

  LODWORD(v66) = v66;
  v69 = v12 + 16;
  if (v14 < v12 + 16)
  {
    goto LABEL_35;
  }

  v67 = (v11 + 8 * (v65 >> 6));
  v68 = *v67 >> v65;
  if ((v65 & 0x3F) >= 0x39)
  {
    v68 |= v67[1] << -(v65 & 0x3F);
  }

  LODWORD(v68) = v68;
LABEL_36:
  v71 = 0uLL;
  v72 = vextq_s8(0, v45, 0xEuLL);
  v73 = vmovl_u16(*&vpaddq_s16(v72, v72));
  v74 = vpaddq_s32(v73, v73).u64[0];
  v75.i64[0] = v74;
  v75.i64[1] = HIDWORD(v74);
  v76 = v75;
  v77 = vaddvq_s64(v75);
  v78 = v77 + v69;
  if (v77 <= 0x80 && v14 >= v78)
  {
    v81 = v69 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v76), vdupq_n_s64(v81));
    v83 = (v11 + 8 * (v69 >> 6));
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v77 + v81 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v80);
    }

    v69 = v78;
  }

  else
  {
    v29 = 1;
    v80 = 0uLL;
  }

  v84.i64[0] = 0xFFFF0000FFFFLL;
  v84.i64[1] = 0xFFFF0000FFFFLL;
  v85 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v86 = vpaddq_s32(v85, v85).u64[0];
  v87.i64[0] = v86;
  v87.i64[1] = HIDWORD(v86);
  v88 = v87;
  v89 = vaddvq_s64(v87);
  if (v89 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v90 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
    v91.i64[0] = v90.u32[0];
    v91.i64[1] = v90.u32[1];
    v92 = v91;
    v93 = vandq_s8(v46, v84);
    v94 = v89 + v69;
    if (v14 >= v89 + v69)
    {
      v95 = v69 & 0x3F;
      v96 = vaddq_s64(vzip1q_s64(0, v88), vdupq_n_s64(v95));
      v97 = (v11 + 8 * (v69 >> 6));
      v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v96)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v96)));
      if (v89 + v95 >= 0x81)
      {
        v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v96)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v96))), v71);
      }

      v69 = v94;
    }

    else
    {
      v29 = 1;
    }

    v98 = vshlq_u64(v71, vnegq_s64(v92));
    v99 = vuzp1q_s32(vzip1q_s64(v71, v98), vzip2q_s64(v71, v98));
    v100 = vshlq_u32(v99, vnegq_s32(v93));
    v71 = vuzp1q_s16(vzip1q_s32(v99, v100), vzip2q_s32(v99, v100));
  }

  v192 = v9;
  v193 = v8;
  v101 = vmovl_u16(*&vpaddq_s16(v47, v47));
  v102 = vpaddq_s32(v101, v101).u64[0];
  v103.i64[0] = v102;
  v103.i64[1] = HIDWORD(v102);
  v104 = v103;
  v105 = vaddvq_s64(v103);
  if (v105 >= 0x81)
  {
    v29 = 1;
    v112 = 0uLL;
  }

  else
  {
    v106 = vzip1_s32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
    v107.i64[0] = v106.u32[0];
    v107.i64[1] = v106.u32[1];
    v108 = v107;
    v109 = vandq_s8(v47, v84);
    v110 = v105 + v69;
    if (v14 >= v105 + v69)
    {
      v113 = v69 & 0x3F;
      v114 = vaddq_s64(vzip1q_s64(0, v104), vdupq_n_s64(v113));
      v115 = (v11 + 8 * (v69 >> 6));
      v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
      if (v105 + v113 >= 0x81)
      {
        v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v111);
      }

      v69 = v110;
    }

    else
    {
      v111 = 0uLL;
      v29 = 1;
    }

    v116 = vshlq_u64(v111, vnegq_s64(v108));
    v117 = vuzp1q_s32(vzip1q_s64(v111, v116), vzip2q_s64(v111, v116));
    v118 = vshlq_u32(v117, vnegq_s32(v109));
    v112 = vuzp1q_s16(vzip1q_s32(v117, v118), vzip2q_s32(v117, v118));
  }

  v119 = vmovl_u16(*&vpaddq_s16(v48, v48));
  v120 = vpaddq_s32(v119, v119).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  if (v123 >= 0x81 || v14 < v123 + v69)
  {
    goto LABEL_66;
  }

  v124 = vaddq_s64(vzip1q_s64(0, v122), vdupq_n_s64(v69 & 0x3F));
  v125 = (v11 + 8 * (v69 >> 6));
  v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
  if (v123 + (v69 & 0x3F) >= 0x81)
  {
    v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
  }

  if ((v29 & 1) != 0 || (v127 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v127) - (v123 + v69) >= 9))
  {
LABEL_66:
    v128 = 0;
    v129 = 0;
    v130 = 8 * (&v191 & 7);
    v131 = 16;
    do
    {
      v132 = 64 - v130;
      if (64 - v130 >= v131)
      {
        v132 = v131;
      }

      *&v190[8 * v128] |= ((0xFFFFFFFFFFFFFFFFLL >> v129) & ~(-1 << v132)) << v130;
      v129 += v132;
      v133 = v132 + v130;
      v128 += v133 >> 6;
      v130 = v133 & 0x3F;
      v131 -= v132;
    }

    while (v131);
    v127 = 0;
    v134 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v135 = (a1->i64 + 2 * a2);
    *v134 = 0;
    v134[1] = 0;
    v136 = (a1->i64 + 2 * a2 + a2);
    *v135 = 0;
    v135[1] = 0;
    *v136 = 0;
    v136[1] = 0;
  }

  else
  {
    v138 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v139 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
    v140.i64[0] = v138.u32[0];
    v140.i64[1] = v138.u32[1];
    v141 = v140;
    v140.i64[0] = v139.u32[0];
    v140.i64[1] = v139.u32[1];
    v142 = vshlq_u64(v54, vnegq_s64(v141));
    v143 = vshlq_u64(v80, vnegq_s64(v140));
    v144 = vuzp1q_s32(vzip1q_s64(v54, v142), vzip2q_s64(v54, v142));
    v145 = vuzp1q_s32(vzip1q_s64(v80, v143), vzip2q_s64(v80, v143));
    v146 = vshlq_u32(v144, vnegq_s32((*&v55 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
    v147 = vshlq_u32(v145, vnegq_s32(vandq_s8(v72, v84)));
    v148 = vzip2q_s32(v144, v146);
    v149 = vzip1q_s32(v144, v146);
    v146.i64[0] = 0x10001000100010;
    v146.i64[1] = 0x10001000100010;
    v150 = vzip2q_s32(v145, v147);
    v151 = vzip1q_s32(v145, v147);
    v147.i64[0] = 0x10001000100010;
    v147.i64[1] = 0x10001000100010;
    v152 = v13 >> 6;
    v153 = vuzp1q_s16(v149, v148);
    v148.i64[0] = 0xF000F000F000FLL;
    v148.i64[1] = 0xF000F000F000FLL;
    v154 = vuzp1q_s16(v151, v150);
    v150.i64[0] = 0xF000F000F000FLL;
    v150.i64[1] = 0xF000F000F000FLL;
    v155 = vzip1_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
    v156.i64[0] = 0xFFFF0000FFFFLL;
    v156.i64[1] = 0xFFFF0000FFFFLL;
    v157.i64[0] = 0xF000F000F000FLL;
    v157.i64[1] = 0xF000F000F000FLL;
    v158.i64[0] = 0x10001000100010;
    v158.i64[1] = 0x10001000100010;
    v140.i64[0] = v155.u32[0];
    v140.i64[1] = v155.u32[1];
    v159 = vshlq_s16(vshlq_s16(v153, vsubq_s16(v146, v55)), vaddq_s16(v55, v148));
    v160 = vshlq_s16(vshlq_s16(v154, vsubq_s16(v147, v72)), vaddq_s16(v72, v150));
    v161 = vshlq_s16(vshlq_s16(v71, vsubq_s16(v147, v46)), vaddq_s16(v46, v150));
    v162 = vshlq_s16(vshlq_s16(v112, vsubq_s16(v147, v47)), vaddq_s16(v47, v150));
    v163 = vshlq_u64(v126, vnegq_s64(v140));
    v164 = vuzp1q_s32(vzip1q_s64(v126, v163), vzip2q_s64(v126, v163));
    v165 = vshlq_u32(v164, vnegq_s32(vandq_s8(v48, v156)));
    v166 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v164, v165), vzip2q_s32(v164, v165)), vsubq_s16(v158, v48)), vaddq_s16(v48, v157));
    if (v64 == 2)
    {
      v167.i64[0] = 0xFFFFFFFF00000000;
      v167.i64[1] = 0xFFFFFFFF00000000;
      v168 = vmlal_s8(vandq_s8(vdupq_n_s16(v68), v167), vdup_n_s8(v66), 0x302030201000100);
      v160 = vaddq_s16(v160, v168);
      v161 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v68), v168), v161);
      v162 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66), v168), v162);
      v166 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66 + 2 * v68), v168), v166);
    }

    v169 = vdupq_n_s16(v152);
    v170 = vaddq_s16(vandq_s8(v159, v49), v160);
    v171 = vdupq_lane_s16(*v159.i8, 0);
    v172 = vsubq_s16(v170, vandq_s8(v171, v49));
    v173 = vsubq_s16(v161, vandq_s8(v171, v50));
    v174 = vsubq_s16(v162, vandq_s8(v171, v51));
    v175 = vsubq_s16(v166, vandq_s8(v171, v52));
    v176.i64[0] = 0x1000100010001;
    v176.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v176)))
    {
      v177 = *&v16 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
      v178 = vnegq_s16(v177);
      v179 = v172;
      v179.i16[0] = v172.i16[7];
      v179.i16[7] = v172.i16[0];
      v180 = vorrq_s8(vandq_s8(v179, v178), vandq_s8(v172, vceqzq_s16(v177)));
      v181 = vaddq_s16(v180, vandq_s8(vqtbl1q_s8(v180, xmmword_29D2F0E60), v178));
      v172 = vaddq_s16(v181, vandq_s8(vqtbl1q_s8(v181, xmmword_29D2F0E70), v178));
      v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_29D2F0E80), v178), v173);
      v173 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_29D2F0E90), v178), v182);
      v183 = vaddq_s16(vandq_s8(vqtbl1q_s8(v174, xmmword_29D2F0EA0), v178), v174);
      v174 = vaddq_s16(vandq_s8(vqtbl1q_s8(v183, xmmword_29D2F0EB0), v178), v183);
      v184 = vaddq_s16(vandq_s8(vqtbl1q_s8(v175, xmmword_29D2F0EC0), v178), v175);
      v175 = vaddq_s16(vandq_s8(vqtbl1q_s8(v184, xmmword_29D2F0ED0), v178), v184);
    }

    v185 = vaddq_s16(v169, v172);
    v186 = vaddq_s16(v173, v169);
    v187 = vaddq_s16(v174, v169);
    v188 = vaddq_s16(v175, v169);
    *a1 = vuzp1q_s32(v185, v187);
    *(a1 + a2) = vuzp2q_s32(v185, v187);
    v189 = (a1 + 2 * a2);
    *v189 = vuzp1q_s32(v186, v188);
    *(v189 + a2) = vuzp2q_s32(v186, v188);
  }

  return v127;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = *(a3 + a4);
  v15 = vzip1q_s32(*a3, v14);
  v16 = vzip2q_s32(*a3, v14);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = *v17;
  v20 = vzip1q_s32(*v17, v18);
  v21 = vzip2q_s32(*v17, v18);
  v22 = vdupq_lane_s16(*v15.i8, 0);
  v23 = vsubq_s16(v15, v22);
  v24 = vsubq_s16(v20, v22);
  v25 = vsubq_s16(v16, v22);
  v26 = vsubq_s16(v21, v22);
  v18.i16[0] = vmaxvq_s16(v23);
  v27 = vdupq_lane_s16(*v18.i8, 0);
  v19.i16[0] = vminvq_s16(v23);
  v28 = vdupq_lane_s16(*v19.i8, 0);
  v29.i64[0] = 0x8000800080008000;
  v29.i64[1] = 0x8000800080008000;
  v30 = vmaxq_s16(v27, v29);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vminq_s16(v28, v31);
  v33 = vzip1q_s16(v27, v28);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v33)), vceqzq_s16(v33));
  v36 = vpmaxq_s16(v35, v35);
  v35.i16[0] = vmaxvq_s16(v24);
  a14.i16[0] = vminvq_s16(v24);
  v37 = vdupq_lane_s16(*v35.i8, 0);
  v38 = vdupq_lane_s16(a14, 0);
  v39 = vmaxq_s16(v30, v37);
  v40 = vminq_s16(v32, v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v41)), vceqzq_s16(v41));
  v43 = vpmaxq_s16(v42, v42);
  v42.i16[0] = vmaxvq_s16(v25);
  v38.i16[0] = vminvq_s16(v25);
  v44 = vdupq_lane_s16(*v42.i8, 0);
  v45 = vdupq_lane_s16(*v38.i8, 0);
  v46 = vmaxq_s16(v39, v44);
  v47 = vminq_s16(v40, v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vpmaxq_s16(v49, v49);
  v49.i16[0] = vmaxvq_s16(v26);
  v45.i16[0] = vminvq_s16(v26);
  v51 = vdupq_lane_s16(*v49.i8, 0);
  v52 = vdupq_lane_s16(*v45.i8, 0);
  v53 = vminq_s16(v47, v52);
  v54 = vzip1q_s16(v51, v52);
  v55 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vmaxq_s16(vmaxq_s16(v36, v43), vmaxq_s16(v50, v56));
  v58 = vclzq_s16(vsubq_s16(vmaxq_s16(v46, v51), v53));
  v59 = vsubq_s16(v34, v58);
  v60 = vminq_s16(v59, v57);
  if (vmaxvq_s16(v60))
  {
    v61 = 0;
    v62 = 0;
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v64.i64[0] = 0xF000F000F000FLL;
    v64.i64[1] = 0xF000F000F000FLL;
    v65 = vcgtq_s16(v57, v59);
    v66 = vandq_s8(vsubq_s16(vshlq_s16(v63, vsubq_s16(v64, v58)), v53), v65);
    v67.i64[0] = 0x8000800080008;
    v67.i64[1] = 0x8000800080008;
    v68.i64[0] = 0x3000300030003;
    v68.i64[1] = 0x3000300030003;
    v69 = vandq_s8(vceqzq_s16(v60), v68);
    v70 = vmaxq_s16(vminq_s16(vsubq_s16(v60, v36), v68), 0);
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v60, v43), v68), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v60, v50), v68), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v60, v56), v68), 0);
    v74 = vsubq_s16(v60, v70);
    v75 = vsubq_s16(v60, v71);
    v76 = vsubq_s16(v60, v72);
    v77 = vsubq_s16(v60, v73);
    v78 = vceqq_s16(vaddq_s16(v73, v72), vnegq_s16(vaddq_s16(v70, v71)));
    v72.i64[0] = 0x4000400040004;
    v72.i64[1] = 0x4000400040004;
    v79 = vbicq_s8(v72, v78);
    v80 = vorrq_s8(vorrq_s8(v69, vandq_s8(v65, v67)), v79);
    if (a5 >= 4 && a6 >= 2)
    {
      v370 = v20;
      v371 = v21;
      v363 = v16;
      v367 = v66;
      v81 = v15.u16[1] - v15.u16[0];
      v82 = 0x302030201000100;
      v83.i64[0] = 0xFFFFFFFF00000000;
      v83.i64[1] = 0xFFFFFFFF00000000;
      v84 = vmlal_s8(vandq_s8(vdupq_n_s16((v15.i8[4] - v15.i8[0])), v83), vdup_n_s8(v81), 0x302030201000100);
      v85 = vsubq_s16(v23, v84);
      v86 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v15.i8[4] - v15.i8[0])), v24), v84);
      v87 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v81), v25), v84);
      v82.i16[0] = vmaxvq_s16(v85);
      v83.i16[0] = vminvq_s16(v85);
      v88 = vdupq_lane_s16(v82, 0);
      v89 = vdupq_lane_s16(*v83.i8, 0);
      v90 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v15.i8[4] - v15.i8[0]) + 4 * v81)), v26), v84);
      v91.i64[0] = 0x8000800080008000;
      v91.i64[1] = 0x8000800080008000;
      v92 = vmaxq_s16(v88, v91);
      v84.i64[0] = 0x8000800080008000;
      v84.i64[1] = 0x8000800080008000;
      v93 = vminq_s16(v89, v84);
      v94 = vzip1q_s16(v88, v89);
      v95.i64[0] = 0x10001000100010;
      v95.i64[1] = 0x10001000100010;
      v96 = vsubq_s16(v95, vclsq_s16(v94));
      v97 = vbicq_s8(v96, vceqzq_s16(v94));
      v96.i16[0] = vmaxvq_s16(v86);
      v98 = v75;
      v99 = v76;
      v76.i16[0] = vminvq_s16(v86);
      v100 = vdupq_lane_s16(*v96.i8, 0);
      v101 = vdupq_lane_s16(*v76.i8, 0);
      v102 = vpmaxq_s16(v97, v97);
      v103 = vmaxq_s16(v92, v100);
      v104 = vminq_s16(v93, v101);
      v105 = vzip1q_s16(v100, v101);
      v106 = vsubq_s16(v95, vclsq_s16(v105));
      v107 = vbicq_s8(v106, vceqzq_s16(v105));
      v108 = vpmaxq_s16(v107, v107);
      v106.i16[0] = vmaxvq_s16(v87);
      v109 = vdupq_lane_s16(*v106.i8, 0);
      v64.i16[0] = vminvq_s16(v87);
      v110 = vdupq_lane_s16(*v64.i8, 0);
      v111 = vmaxq_s16(v103, v109);
      v112 = vminq_s16(v104, v110);
      v113 = vzip1q_s16(v109, v110);
      v114 = vsubq_s16(v95, vclsq_s16(v113));
      v115 = vbicq_s8(v114, vceqzq_s16(v113));
      v116 = vpmaxq_s16(v115, v115);
      v115.i16[0] = vmaxvq_s16(v90);
      v114.i16[0] = vminvq_s16(v90);
      v117 = vdupq_lane_s16(*v115.i8, 0);
      v118 = vdupq_lane_s16(*v114.i8, 0);
      v119 = vmaxq_s16(v111, v117);
      v120 = vminq_s16(v112, v118);
      v121 = vzip1q_s16(v117, v118);
      v122 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v121)), vceqzq_s16(v121));
      v123 = vpmaxq_s16(v122, v122);
      v124 = vmaxq_s16(vmaxq_s16(v102, v108), vmaxq_s16(v116, v123));
      v125 = vclzq_s16(vsubq_s16(v119, v120));
      v126 = vsubq_s16(v95, v125);
      v127 = vcgtq_s16(v124, v126);
      v128 = vminq_s16(v126, v124);
      v124.i64[0] = 0x1000100010001;
      v124.i64[1] = 0x1000100010001;
      v129 = vmaxq_s16(v128, v124);
      v124.i64[0] = 0x3000300030003;
      v124.i64[1] = 0x3000300030003;
      v130 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v102), v124), 0);
      v131 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v108), v124), 0);
      v132 = v25;
      v133 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v116), v124), 0);
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v123), v124), 0);
      v135 = vsubq_s16(v129, v130);
      v136 = vsubq_s16(v129, v131);
      v137 = vsubq_s16(v129, v133);
      v138 = vsubq_s16(v129, v134);
      v139 = vceqq_s16(vaddq_s16(v134, v133), vnegq_s16(vaddq_s16(v130, v131)));
      v134.i64[0] = 0x4000400040004;
      v134.i64[1] = 0x4000400040004;
      v140 = vbicq_s8(v134, v139);
      v141.i64[0] = 0x7000700070007;
      v141.i64[1] = 0x7000700070007;
      v142 = vandq_s8(v60, v65);
      v143 = vaddq_s16(v79, v79);
      v144 = vmulq_s16(v74, v141);
      v145 = vshlq_n_s16(vaddq_s16(vaddq_s16(v99, v98), v77), 3uLL);
      v146 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v142, v144), v145), v143), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v129, v127), vaddq_s16(v140, v140)), v135, v141), vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v137, v136), v138), 3uLL), v95))), 0);
      v134.i16[0] = vaddvq_s16(v146);
      v147 = v134.u16[0];
      if (v134.i16[0])
      {
        v148.i64[0] = 0x2000200020002;
        v148.i64[1] = 0x2000200020002;
        v149.i64[0] = 0xA000A000A000ALL;
        v149.i64[1] = 0xA000A000A000ALL;
        v150 = vbslq_s8(v127, v149, v148);
        v149.i64[0] = -1;
        v149.i64[1] = -1;
        v151 = vorrq_s8(v140, v150);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v146 = vcltzq_s16(vshlq_n_s16(v146, 0xFuLL));
        v362 = vbslq_s8(v146, v85, v23);
        v132 = vbslq_s8(v146, v87, v132);
        v26 = vbslq_s8(v146, v90, v26);
        v98 = vbslq_s8(v146, v136, v98);
        v152 = vbslq_s8(v146, v138, v77);
        v66 = vbslq_s8(v146, vandq_s8(vsubq_s16(vshlq_s16(v149, vsubq_s16(v150, v125)), v120), v127), v367);
        v60 = vbslq_s8(v146, v129, v60);
        v80 = vbslq_s8(v146, v151, v80);
        v153.i64[0] = 0x8000800080008;
        v153.i64[1] = 0x8000800080008;
        v143 = vandq_s8(vaddq_s16(v80, v80), v153);
        v364 = vbslq_s8(v146, v86, v24);
        v365 = vbslq_s8(v146, v135, v74);
        v144 = vmulq_s16(v365, v141);
        v366 = vbslq_s8(v146, v137, v99);
        v368 = v152;
        v369 = v26;
        v145 = vshlq_n_s16(vaddq_s16(vaddq_s16(v366, v98), v152), 3uLL);
      }

      else
      {
        v362 = v23;
        v364 = v24;
        v365 = v74;
        v366 = v99;
        v368 = v77;
        v369 = v26;
        v66 = v367;
      }

      v75 = v98;
      v156.i64[0] = 0x7000700070007;
      v156.i64[1] = 0x7000700070007;
      v62 = ((v15.i8[2] - v15.i8[0]) | ((v15.i16[2] - v15.i16[0]) << 8));
      v157 = vsubq_s16(v15, vqtbl1q_s8(v15, xmmword_29D2F0F00));
      v158 = v370;
      v158.i16[7] = v15.i16[7];
      v159 = vsubq_s16(v370, vqtbl1q_s8(v158, xmmword_29D2F0F10));
      v16 = v363;
      v160 = v363;
      v160.i16[7] = v15.i16[7];
      v161 = vsubq_s16(v363, vqtbl1q_s8(v160, xmmword_29D2F0F20));
      v162 = v371;
      v162.i16[7] = v15.i16[7];
      v163 = vqtbl1q_s8(v162, xmmword_29D2F0F30);
      v165 = v157;
      v165.i16[0] = v157.i16[7];
      v164 = vsubq_s16(v371, v163);
      v165.i16[7] = v157.i16[0];
      v157.i16[0] = vmaxvq_s16(v165);
      v166 = vdupq_lane_s16(*v157.i8, 0);
      v163.i16[0] = vminvq_s16(v165);
      v167 = vdupq_lane_s16(*v163.i8, 0);
      v168.i64[0] = 0x8000800080008000;
      v168.i64[1] = 0x8000800080008000;
      v169 = vmaxq_s16(v166, v168);
      v170.i64[0] = 0x8000800080008000;
      v170.i64[1] = 0x8000800080008000;
      v171 = vminq_s16(v167, v170);
      v172 = vzip1q_s16(v166, v167);
      v173 = vsubq_s16(v95, vclsq_s16(v172));
      v174 = vbicq_s8(v173, vceqzq_s16(v172));
      v175 = vpmaxq_s16(v174, v174);
      v173.i16[0] = vmaxvq_s16(v159);
      v146.i16[0] = vminvq_s16(v159);
      v176 = vdupq_lane_s16(*v173.i8, 0);
      v177 = vdupq_lane_s16(*v146.i8, 0);
      v178 = vmaxq_s16(v169, v176);
      v179 = vminq_s16(v171, v177);
      v180 = vzip1q_s16(v176, v177);
      v181 = vsubq_s16(v95, vclsq_s16(v180));
      v182 = vbicq_s8(v181, vceqzq_s16(v180));
      v181.i16[0] = vmaxvq_s16(v161);
      v127.i16[0] = vminvq_s16(v161);
      v183 = vdupq_lane_s16(*v181.i8, 0);
      v184 = vdupq_lane_s16(*v127.i8, 0);
      v185 = vpmaxq_s16(v182, v182);
      v186 = vmaxq_s16(v178, v183);
      v187 = vminq_s16(v179, v184);
      v188 = vzip1q_s16(v183, v184);
      v189 = vsubq_s16(v95, vclsq_s16(v188));
      v190 = vbicq_s8(v189, vceqzq_s16(v188));
      v191 = vpmaxq_s16(v190, v190);
      v189.i16[0] = vmaxvq_s16(v164);
      v192 = vdupq_lane_s16(*v189.i8, 0);
      v26.i16[0] = vminvq_s16(v164);
      v193 = vdupq_lane_s16(*v26.i8, 0);
      v194 = vmaxq_s16(v186, v192);
      v195 = vminq_s16(v187, v193);
      v196 = vzip1q_s16(v192, v193);
      v197 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v196)), vceqzq_s16(v196));
      v198 = vpmaxq_s16(v197, v197);
      v199 = vmaxq_s16(vmaxq_s16(v175, v185), vmaxq_s16(v191, v198));
      v200 = vclzq_s16(vsubq_s16(v194, v195));
      v201 = vsubq_s16(v95, v200);
      v202 = vcgtq_s16(v199, v201);
      v203 = vminq_s16(v201, v199);
      v204.i64[0] = 0x3000300030003;
      v204.i64[1] = 0x3000300030003;
      v205 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v175), v204), 0);
      v206 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v185), v204), 0);
      v207 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v191), v204), 0);
      v208 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v198), v204), 0);
      v209 = vsubq_s16(v203, v205);
      v210 = vsubq_s16(v203, v206);
      v211 = vsubq_s16(v203, v207);
      v212 = vsubq_s16(v203, v208);
      v213 = vceqq_s16(vaddq_s16(v208, v207), vnegq_s16(vaddq_s16(v205, v206)));
      v206.i64[0] = 0x4000400040004;
      v206.i64[1] = 0x4000400040004;
      v214 = vbicq_s8(v206, v213);
      v207.i64[0] = 0x8000800080008;
      v207.i64[1] = 0x8000800080008;
      v215.i64[0] = 0x2000200020002;
      v215.i64[1] = 0x2000200020002;
      v216 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v60, vceqzq_s16(vandq_s8(v80, v207))), v143), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v80, v204), v215), v95), v144)), v145), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v203, v202), vaddq_s16(v214, v214)), v209, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v211, v210), v212), 3uLL))), 0);
      v207.i16[0] = vaddvq_s16(v216);
      v217 = v207.u16[0];
      if (v207.i16[0])
      {
        v218 = vandq_s8(vceqzq_s16(v203), v215);
        v219.i64[0] = 0x9000900090009;
        v219.i64[1] = 0x9000900090009;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
        v221 = vorrq_s8(vorrq_s8(v218, vsubq_s16(vandq_s8(v202, v219), vmvnq_s8(v202))), v214);
        v218.i64[0] = 0xF000F000F000FLL;
        v218.i64[1] = 0xF000F000F000FLL;
        v222 = vandq_s8(vsubq_s16(vshlq_s16(v220, vsubq_s16(v218, v200)), v195), v202);
        v223 = vcltzq_s16(vshlq_n_s16(v216, 0xFuLL));
        v22.i16[0] = vbslq_s8(v223, vextq_s8(v15, v15, 0xEuLL), v22).u16[0];
        v23 = vbslq_s8(v223, v165, v362);
        v24 = vbslq_s8(v223, v159, v364);
        v25 = vbslq_s8(v223, v161, v132);
        v26 = vbslq_s8(v223, v164, v369);
        v74 = vbslq_s8(v223, v209, v365);
        v75 = vbslq_s8(v223, v210, v75);
        v76 = vbslq_s8(v223, v211, v366);
        v77 = vbslq_s8(v223, v212, v368);
        v66 = vbslq_s8(v223, v222, v66);
        v60 = vbslq_s8(v223, v203, v60);
        v80 = vbslq_s8(v223, v221, v80);
      }

      else
      {
        v77 = v368;
        v26 = v369;
        v25 = v132;
        v74 = v365;
        v76 = v366;
        v24 = v364;
        v23 = v362;
      }

      if (v147)
      {
        v224 = v217 == 0;
      }

      else
      {
        v224 = 0;
      }

      v61 = v224;
      v20 = v370;
      v21 = v371;
    }

    v225.i64[0] = 0x8000800080008;
    v225.i64[1] = 0x8000800080008;
    v226 = vandq_s8(v80, v225);
    v227.i64[0] = 0x3000300030003;
    v227.i64[1] = 0x3000300030003;
    v228.i64[0] = 0x2000200020002;
    v228.i64[1] = 0x2000200020002;
    v229 = vceqq_s16(vandq_s8(v80, v227), v228);
    v228.i64[0] = 0x10001000100010;
    v228.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v60, vceqzq_s16(v226)).u16[0] + ((2 * v80.i16[0]) & 8) + vandq_s8(v229, v228).u16[0] - v74.i16[0] + 8 * v74.i16[0] + 8 * vaddq_s16(vaddq_s16(v76, v75), v77).u16[0]) + 29) >= 0x200)
    {
      *a1 = v15;
      a1[1] = v20;
      v154 = 63;
      a1[2] = v16;
      a1[3] = v21;
      result = 64;
    }

    else
    {
      v230 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v231 = 8 * (a1 & 7);
      if (v231)
      {
        v232 = *v230 & ~(-1 << v231);
      }

      else
      {
        v232 = 0;
      }

      if (v60.i16[0])
      {
        v233 = (16 * v60.i8[0] - 16) & 0xF0;
      }

      else
      {
        v233 = 0;
      }

      *a2 = v80.i8[0] << 6;
      v234 = (v233 & 0xFFFFFFFFFF0000F0 | (v22.u16[0] << 8) | v80.i8[0] & 0xF) >> 2;
      v235 = (v234 << v231) | v232;
      if (v231 >= 0x2A)
      {
        *v230 = v235;
        v235 = v234 >> (-8 * (a1 & 7u));
      }

      v236 = v231 + 22;
      v237 = vsubq_s16(v60, v74);
      v238 = vsubq_s16(v60, v75);
      v239 = vsubq_s16(v60, v76);
      v240 = vsubq_s16(v60, v77);
      *v237.i8 = vqmovn_u16(v237);
      *v238.i8 = vqmovn_u16(v238);
      *v239.i8 = vqmovn_u16(v239);
      *v240.i8 = vqmovn_u16(v240);
      v237.i32[0] = vzip1q_s16(vzip1q_s8(v237, v238), vzip1q_s8(v239, v240)).u32[0];
      v239.i64[0] = 0x202020202020202;
      v239.i64[1] = 0x202020202020202;
      v241 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v80.i8, 0x4000400040004)))), v239);
      v239.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v239.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v240.i64[0] = -1;
      v240.i64[1] = -1;
      v242 = vandq_s8(vshlq_u8(v240, vorrq_s8(v241, v239)), v237.u32[0]);
      v243 = vmovl_u8(*v241.i8);
      v244 = vpaddq_s16(vshlq_u16(vmovl_u8(*v242.i8), vtrn1q_s16(0, v243)), vmovl_high_u8(v242));
      v245 = vpaddq_s16(v243, vmovl_high_u8(v241));
      v246 = vmovl_u16(*v245.i8);
      v247 = vmovl_high_u16(v245);
      v248 = vpaddq_s32(vshlq_u32(vmovl_u16(*v244.i8), vtrn1q_s32(0, v246)), vshlq_u32(vmovl_high_u16(v244), vtrn1q_s32(0, v247)));
      v249 = vpaddq_s32(v246, v247);
      v250.i64[0] = v248.u32[0];
      v250.i64[1] = v248.u32[1];
      v251 = v250;
      v250.i64[0] = v248.u32[2];
      v250.i64[1] = v248.u32[3];
      v252 = v250;
      v250.i64[0] = v249.u32[0];
      v250.i64[1] = v249.u32[1];
      v253 = v250;
      v250.i64[0] = v249.u32[2];
      v250.i64[1] = v249.u32[3];
      v254 = vpaddq_s64(vshlq_u64(v251, vzip1q_s64(0, v253)), vshlq_u64(v252, vzip1q_s64(0, v250)));
      v255 = vpaddq_s64(v253, v250);
      v256 = (v231 + 22) & 0x3E;
      v257 = (v254.i64[0] << v256) | v235;
      if ((v255.i64[0] + v256) >= 0x40)
      {
        *(v230 + ((v236 >> 3) & 8)) = v257;
        v257 = v254.i64[0] >> -v256;
      }

      v258 = v255.i64[1];
      v259 = v255.i64[0] + v236;
      v260 = v257 | (v254.i64[1] << v259);
      if ((v259 & 0x3F) + v255.i64[1] >= 0x40)
      {
        *(v230 + ((v259 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v260;
        v260 = v254.i64[1] >> -(v259 & 0x3F);
        if ((v259 & 0x3F) == 0)
        {
          v260 = 0;
        }
      }

      v261 = vceqq_s16(v60, v74);
      v262 = v259 + v258;
      v263.i64[0] = -1;
      v263.i64[1] = -1;
      v264 = vandq_s8(vextq_s8(vtstq_s16(v226, v226), 0, 0xEuLL), v60);
      v265.i64[0] = 0xF000F000F000FLL;
      v265.i64[1] = 0xF000F000F000FLL;
      v266 = vandq_s8(vshlq_u16(v263, vaddq_s16(v264, v265)), v66);
      v267 = vmovl_u16(*v264.i8);
      v268 = vpaddq_s32(vshlq_u32(vmovl_u16(*v266.i8), vtrn1q_s32(0, v267)), vmovl_high_u16(v266));
      v269 = vpaddq_s32(v267, vmovl_high_u16(v264));
      v270.i64[0] = v268.u32[0];
      v270.i64[1] = v268.u32[1];
      v271 = v270;
      v270.i64[0] = v268.u32[2];
      v270.i64[1] = v268.u32[3];
      v272 = v270;
      v270.i64[0] = v269.u32[0];
      v270.i64[1] = v269.u32[1];
      v273 = v270;
      v270.i64[0] = v269.u32[2];
      v270.i64[1] = v269.u32[3];
      v274 = vpaddq_s64(vshlq_u64(v271, vzip1q_s64(0, v273)), vshlq_u64(v272, vzip1q_s64(0, v270)));
      v275 = vpaddq_s64(v273, v270);
      v276 = (v274.i64[0] << v262) | v260;
      if (v275.i64[0] + (v262 & 0x3F) >= 0x40)
      {
        *(v230 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v276;
        v276 = v274.i64[0] >> -(v262 & 0x3F);
        if ((v262 & 0x3F) == 0)
        {
          v276 = 0;
        }
      }

      v277 = vandq_s8(v66, v261);
      v278 = v275.i64[1];
      v279 = v275.i64[0] + v262;
      v280 = v276 | (v274.i64[1] << v279);
      if ((v279 & 0x3F) + v275.i64[1] >= 0x40)
      {
        *(v230 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
        v280 = v274.i64[1] >> -(v279 & 0x3F);
        if ((v279 & 0x3F) == 0)
        {
          v280 = 0;
        }
      }

      v281 = vceqq_s16(v60, v75);
      v282 = vaddq_s16(v277, v23);
      v283 = v279 + v278;
      if (v61)
      {
        v280 |= v62 << v283;
        if ((v283 & 0x3F) >= 0x30)
        {
          *(v230 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
          v280 = v62 >> -(v283 & 0x3F);
        }

        v283 += 16;
      }

      v284 = vandq_s8(v66, v281);
      v285 = vextq_s8(0, v74, 0xEuLL);
      v286.i64[0] = 0xF000F000F000FLL;
      v286.i64[1] = 0xF000F000F000FLL;
      v287.i64[0] = -1;
      v287.i64[1] = -1;
      v288 = vandq_s8(vshlq_u16(v287, vaddq_s16(v285, v286)), v282);
      v289 = vmovl_u16(*v285.i8);
      v290 = vmovl_high_u16(v285);
      v291 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v289)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v290)));
      v292 = vpaddq_s32(v289, v290);
      v293.i64[0] = v291.u32[0];
      v293.i64[1] = v291.u32[1];
      v294 = v293;
      v293.i64[0] = v291.u32[2];
      v293.i64[1] = v291.u32[3];
      v295 = v293;
      v293.i64[0] = v292.u32[0];
      v293.i64[1] = v292.u32[1];
      v296 = v293;
      v293.i64[0] = v292.u32[2];
      v293.i64[1] = v292.u32[3];
      v297 = vpaddq_s64(vshlq_u64(v294, vzip1q_s64(0, v296)), vshlq_u64(v295, vzip1q_s64(0, v293)));
      v298 = vpaddq_s64(v296, v293);
      v299 = (v297.i64[0] << v283) | v280;
      if (v298.i64[0] + (v283 & 0x3F) >= 0x40)
      {
        *(v230 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
        v299 = v297.i64[0] >> -(v283 & 0x3F);
        if ((v283 & 0x3F) == 0)
        {
          v299 = 0;
        }
      }

      v300 = vceqq_s16(v60, v76);
      v301 = vaddq_s16(v24, v284);
      v302 = v298.i64[0] + v283;
      v303 = (v298.i64[0] + v283) & 0x3F;
      v304 = v299 | (v297.i64[1] << v302);
      if ((v302 & 0x3F) + v298.i64[1] >= 0x40)
      {
        *(v230 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v297.i64[1] >> -v303;
        if (!v303)
        {
          v304 = 0;
        }
      }

      v305 = vandq_s8(v66, v300);
      v306 = v302 + v298.i64[1];
      v307.i64[0] = 0xF000F000F000FLL;
      v307.i64[1] = 0xF000F000F000FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u16(v308, vaddq_s16(v75, v307)), v301);
      v310 = vmovl_u16(*v75.i8);
      v311 = vmovl_high_u16(v75);
      v312 = vpaddq_s32(vshlq_u32(vmovl_u16(*v309.i8), vtrn1q_s32(0, v310)), vshlq_u32(vmovl_high_u16(v309), vtrn1q_s32(0, v311)));
      v313 = vpaddq_s32(v310, v311);
      v314.i64[0] = v312.u32[0];
      v314.i64[1] = v312.u32[1];
      v315 = v314;
      v314.i64[0] = v312.u32[2];
      v314.i64[1] = v312.u32[3];
      v316 = v314;
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v317 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v318 = vpaddq_s64(vshlq_u64(v315, vzip1q_s64(0, v317)), vshlq_u64(v316, vzip1q_s64(0, v314)));
      v319 = vpaddq_s64(v317, v314);
      v320 = (v318.i64[0] << v306) | v304;
      if (v319.i64[0] + (v306 & 0x3F) >= 0x40)
      {
        *(v230 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = vceqq_s16(v60, v77);
      v322 = vaddq_s16(v25, v305);
      v323 = v319.i64[0] + v306;
      v324 = v320 | (v318.i64[1] << v323);
      if ((v323 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v230 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v318.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vandq_s8(v66, v321);
      v326 = v323 + v319.i64[1];
      v327.i64[0] = 0xF000F000F000FLL;
      v327.i64[1] = 0xF000F000F000FLL;
      v328.i64[0] = -1;
      v328.i64[1] = -1;
      v329 = vandq_s8(vshlq_u16(v328, vaddq_s16(v76, v327)), v322);
      v330 = vmovl_u16(*v76.i8);
      v331 = vmovl_high_u16(v76);
      v332 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v330)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v331)));
      v333 = vpaddq_s32(v330, v331);
      v334.i64[0] = v332.u32[0];
      v334.i64[1] = v332.u32[1];
      v335 = v334;
      v334.i64[0] = v332.u32[2];
      v334.i64[1] = v332.u32[3];
      v336 = v334;
      v334.i64[0] = v333.u32[0];
      v334.i64[1] = v333.u32[1];
      v337 = v334;
      v334.i64[0] = v333.u32[2];
      v334.i64[1] = v333.u32[3];
      v338 = vpaddq_s64(vshlq_u64(v335, vzip1q_s64(0, v337)), vshlq_u64(v336, vzip1q_s64(0, v334)));
      v339 = vpaddq_s64(v337, v334);
      v340 = (v338.i64[0] << v326) | v324;
      if (v339.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v230 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v338.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = vaddq_s16(v26, v325);
      v342 = v339.i64[0] + v326;
      v343 = v340 | (v338.i64[1] << v342);
      if ((v342 & 0x3F) + v339.i64[1] >= 0x40)
      {
        *(v230 + ((v342 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v338.i64[1] >> -(v342 & 0x3F);
        if ((v342 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342 + v339.i64[1];
      v345.i64[0] = 0xF000F000F000FLL;
      v345.i64[1] = 0xF000F000F000FLL;
      v346.i64[0] = -1;
      v346.i64[1] = -1;
      v347 = vandq_s8(vshlq_u16(v346, vaddq_s16(v77, v345)), v341);
      v348 = vmovl_u16(*v77.i8);
      v349 = vmovl_high_u16(v77);
      v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v347.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v347), vtrn1q_s32(0, v349)));
      v351 = vpaddq_s32(v348, v349);
      v352.i64[0] = v350.u32[0];
      v352.i64[1] = v350.u32[1];
      v353 = v352;
      v352.i64[0] = v350.u32[2];
      v352.i64[1] = v350.u32[3];
      v354 = v352;
      v352.i64[0] = v351.u32[0];
      v352.i64[1] = v351.u32[1];
      v355 = v352;
      v352.i64[0] = v351.u32[2];
      v352.i64[1] = v351.u32[3];
      v356 = vpaddq_s64(vshlq_u64(v353, vzip1q_s64(0, v355)), vshlq_u64(v354, vzip1q_s64(0, v352)));
      v357 = vpaddq_s64(v355, v352);
      v358 = (v356.i64[0] << v344) | v343;
      if (v357.i64[0] + (v344 & 0x3F) > 0x3F)
      {
        *(v230 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        if ((v344 & 0x3F) != 0)
        {
          v358 = v356.i64[0] >> -(v344 & 0x3F);
        }

        else
        {
          v358 = 0;
        }
      }

      v359 = v357.i64[0] + v344;
      v360 = v358 | (v356.i64[1] << v359);
      if ((v359 & 0x3F) + v357.i64[1] >= 0x40)
      {
        *(v230 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v356.i64[1] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359 + v357.i64[1];
      if ((v361 & 0x3F) != 0)
      {
        *(v230 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      }

      result = (v361 - v231 + 7) >> 3;
      v154 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    v154 = 1;
    result = 2;
  }

  *a2 = v154;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = a6;
  v15 = a5;
  v17 = a3;
  v19 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    *a4 = 0;
  }

  v20 = v15 - 8;
  if (v15 >= 9 && v14)
  {
    if (v14 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v14;
    }

    if (v20 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 1, v19 + 1, a2, v22, v21, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v23 = 4 * a2;
  v24 = v14 - 4;
  if (v15 && v14 >= 5)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v14 - 4;
    }

    if (v15 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 2, (v19 + v23), a2, v26, v25, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v15 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v14 >= 5)
  {
    if (v24 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v14 - 4;
    }

    if (v20 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 3, (v19 + v23 + 16), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    v29 = v14 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v29 = v14 - 8;
  if (!v15)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v14 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v15 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v29 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v29;
  }

  if (v15 >= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v15;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 4, (v19 + 8 * a2), a2, v31, v30, a7, a8, a9, a10, a11, a12, a13, a14);
  v17 = (v17 + result);
  if (v15 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v34 = v14 - 12;
    if (!v15)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v14 < 9)
  {
    goto LABEL_57;
  }

  if (v29 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v29;
  }

  if (v20 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v15 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 5, (v19 + 8 * a2 + 16), a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14);
  v17 = (v17 + result);
  v34 = v14 - 12;
LABEL_58:
  if (v14 >= 0xD)
  {
    if (v34 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v34;
    }

    if (v15 >= 8)
    {
      v36 = 8;
    }

    else
    {
      v36 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 6, (v19 + 12 * a2), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v15 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v14 < 0xD)
  {
    goto LABEL_78;
  }

  if (v34 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = v34;
  }

  if (v20 >= 8)
  {
    v38 = 8;
  }

  else
  {
    v38 = v15 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 7, (v19 + 12 * a2 + 16), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 363) <= 0xFFFFFFFFFFFFFE77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 48;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v61 + 8;
        v22 = (a3 + 2);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = *(v23 - 1);
            v27 = *v23;
            v23 += 2;
            *(v24 - 4) = v26;
            *v24 = v27;
            v24 += 8;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 += 2;
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v61 + 8;
        v30 = (a3 + 2);
        v31 = &v61 + ((a5 >> 1) & 0x3F);
        do
        {
          v32 = v30;
          v33 = v29;
          v34 = a5 & 0x7E;
          do
          {
            v35 = *(v32 - 1);
            v36 = *v32;
            v32 += 2;
            *(v33 - 4) = v35;
            *v33 = v36;
            v33 += 8;
            v34 -= 2;
          }

          while (v34);
          v37 = (a3 + v28 * a4 + 2 * v19);
          v38 = v31;
          v39 = a5 - v19;
          do
          {
            v40 = *v37++;
            *v38 = v40;
            v38 = (v38 + 8);
            --v39;
          }

          while (v39);
          ++v28;
          v29 += 2;
          v30 = (v30 + a4);
          v31 = (v31 + 2);
        }

        while (v28 != a6);
      }
    }

    else
    {
      v10 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v10 = a6 & 0xFE;
      v11 = (a3 + 1);
      v12 = &v61 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11++;
        *(v12 - 1) = v14;
        *v12 = v15;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v61 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = *v18;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 12, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 36, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v128 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v8.i64[0] = 0x800000008000;
    v8.i64[1] = 0x800000008000;
    v9 = vdupq_n_s32(0x8001u);
    v6 = vbicq_s8(veorq_s8(*a2, v8), vceqq_s32(*a2, v9));
    v7 = vbicq_s8(veorq_s8(a2[1], v8), vceqq_s32(a2[1], v9));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v5.i64[0] = 0x800000008000;
    v5.i64[1] = 0x800000008000;
    v6 = veorq_s8(*a2, v5);
    v7 = veorq_s8(a2[1], v5);
LABEL_5:
    v126 = v6;
    v127 = v7;
    v10 = v6.i32[0];
    goto LABEL_7;
  }

  v11 = a2[1];
  v126 = *a2;
  v127 = v11;
  v10 = v126.i32[0];
LABEL_7:
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = a4 < 2 || a5 == 0;
  if (v13)
  {
    v14 = 0;
    v15 = v10;
    v16 = v10;
  }

  else
  {
    v15 = v126.u32[1];
    v14 = v126.i32[1] < v10;
    if (v126.i32[1] >= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v126.u32[1];
    }

    if (v10 > v126.i32[1])
    {
      v15 = v10;
    }
  }

  v17 = a5 < 2 || a4 == 0;
  v18 = v17;
  if (!v17)
  {
    if (v126.i32[2] < v16)
    {
      v14 = 2;
      v16 = v126.u32[2];
    }

    if (v15 <= v126.i32[2])
    {
      v15 = v126.u32[2];
    }
  }

  v19 = a5 >= 2 && a4 >= 2;
  v20 = !v19;
  if (v19)
  {
    if (v126.i32[3] < v16)
    {
      v14 = 3;
      v16 = v126.u32[3];
    }

    if (v15 <= v126.i32[3])
    {
      v15 = v126.u32[3];
    }
  }

  if (a5)
  {
    v21 = a4 >= 3;
  }

  else
  {
    v21 = 0;
  }

  v22 = !v21;
  if (v21)
  {
    if (v127.i32[0] < v16)
    {
      v14 = 4;
      v16 = v127.i32[0];
    }

    if (v15 <= v127.i32[0])
    {
      v15 = v127.i32[0];
    }
  }

  if (a5)
  {
    v23 = a4 >= 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v23)
  {
    if (v127.i32[1] < v16)
    {
      v14 = 5;
      v16 = v127.u32[1];
    }

    if (v15 <= v127.i32[1])
    {
      v15 = v127.u32[1];
    }
  }

  v25 = a5 >= 2 && a4 >= 3;
  v26 = !v25;
  if (v25)
  {
    if (v127.i32[2] < v16)
    {
      v14 = 6;
      v16 = v127.u32[2];
    }

    if (v15 <= v127.i32[2])
    {
      v15 = v127.u32[2];
    }
  }

  v27 = a5 >= 2 && a4 >= 4;
  v28 = !v27;
  if (v27)
  {
    if (v127.i32[3] < v16)
    {
      v14 = 7;
      v16 = v127.u32[3];
    }

    if (v15 <= v127.i32[3])
    {
      v15 = v127.u32[3];
    }
  }

  v29 = v15 - v16;
  v30 = __clz(v15 - v16);
  if (v30 == 31 && v15 == 0xFFFF)
  {
    v32 = 1;
  }

  else
  {
    v32 = 31 - v30;
  }

  v33 = v32 & ~(v32 >> 31);
  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (!(v16 >> 15) && v15 >= 0x8000)
    {
      v34 = kDQuadParamTable[10 * v33 + 488] == 0;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v32 > 12 || v34)
  {
    v36 = kDQuadParamTable[10 * v33 + 484];
    v37 = v36 + 4;
    if (v34)
    {
      v38 = 0;
    }

    else
    {
      v38 = -2;
    }

    v39 = v16 & ~(-1 << (12 - v36));
    if (v37 >= 0x10)
    {
      v39 = 0;
    }

    v40 = v39 + v38;
    if (v40 >= 1 && __clz(v40 + v29) < v30)
    {
      ++v33;
    }
  }

  v41 = v33;
  v42 = &kDQuadParamTable[10 * v33];
  v43 = *(v42 + 241);
  v44 = v42[485];
  v45 = v44 + 4;
  v46 = v43 >> (v44 + 4);
  if (a3 != 4)
  {
    v48 = v46 > 0x10 || v12;
    goto LABEL_150;
  }

  if (v12)
  {
    v47 = 0;
    if (v13)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v47 = (~v10 & 0x7C00) == 0 || v10 == 0x8000;
    if (v13)
    {
      goto LABEL_134;
    }
  }

  if ((~v126.i32[1] & 0x7C00) == 0 || v126.i32[1] == 0x8000)
  {
    v47 = 1;
  }

LABEL_134:
  if (v18)
  {
    if (v20)
    {
      goto LABEL_136;
    }
  }

  else
  {
    if ((~v126.i32[2] & 0x7C00) == 0 || v126.i32[2] == 0x8000)
    {
      v47 = 1;
    }

    if (v20)
    {
LABEL_136:
      if (v22)
      {
        goto LABEL_137;
      }

      goto LABEL_245;
    }
  }

  if ((~v126.i32[3] & 0x7C00) == 0 || v126.i32[3] == 0x8000)
  {
    v47 = 1;
  }

  if (v22)
  {
LABEL_137:
    if (v24)
    {
      goto LABEL_138;
    }

    goto LABEL_252;
  }

LABEL_245:
  if ((~v127.i32[0] & 0x7C00) == 0 || v127.i32[0] == 0x8000)
  {
    v47 = 1;
  }

  if (v24)
  {
LABEL_138:
    if (v26)
    {
      goto LABEL_139;
    }

LABEL_259:
    if ((~v127.i32[2] & 0x7C00) == 0 || v127.i32[2] == 0x8000)
    {
      v47 = 1;
    }

    if (v28)
    {
      goto LABEL_146;
    }

    goto LABEL_140;
  }

LABEL_252:
  if ((~v127.i32[1] & 0x7C00) == 0 || v127.i32[1] == 0x8000)
  {
    v47 = 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_259;
  }

LABEL_139:
  if ((v28 & 1) == 0)
  {
LABEL_140:
    if ((~v127.i32[3] & 0x7C00) == 0 || v127.i32[3] == 0x8000)
    {
      v47 = 1;
    }
  }

LABEL_146:
  v52 = v46 > 0x10 || v12;
  v48 = v52 | v47;
LABEL_150:
  v53 = 0;
  v54 = 0;
  v55 = kDQuadParamTable[10 * v41 + 484] + 4;
  if (v55 >= 0x10)
  {
    v56 = 16;
  }

  else
  {
    v56 = v55;
  }

  LODWORD(v57) = 16 * (v44 != 0);
  if (v57 >= v45)
  {
    v57 = v45;
  }

  else
  {
    v57 = v57;
  }

  v58 = (-1 << (16 - v56)) & v16;
  memset(v123, 0, sizeof(v123));
  v124 = 0;
  v59 = v43 >> v57;
  v60 = v10 - v58;
  if (v12)
  {
    v60 = 0;
  }

  v17 = !v13;
  v61 = v126.i32[1] - v58;
  if (!v17)
  {
    v61 = 0;
  }

  v125[0] = v60;
  v125[1] = v61;
  v62 = v126.i32[2] - v58;
  if (v18)
  {
    v62 = 0;
  }

  v63 = v126.i32[3] - v58;
  if (v20)
  {
    v63 = 0;
  }

  v125[2] = v62;
  v125[3] = v63;
  v64 = v127.i32[0] - v58;
  if (v22)
  {
    v64 = 0;
  }

  v65 = v127.i32[1] - v58;
  if (v24)
  {
    v65 = 0;
  }

  v125[4] = v64;
  v125[5] = v65;
  v66 = v127.i32[2] - v58;
  if (v26)
  {
    v66 = 0;
  }

  v67 = v127.i32[3] - v58;
  if (v28)
  {
    v67 = 0;
  }

  v125[6] = v66;
  v125[7] = v67;
  if (v59 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v59;
  }

  v69 = v14;
  v70 = 4 * v14;
  v71 = &byte_29D2F3081;
  do
  {
    if (v70 != v53)
    {
      if (v57)
      {
        v72 = v125[v53 / 4] / v68;
      }

      else
      {
        LODWORD(v72) = 0;
      }

      *(v123 + v54) = v72;
      if (v59 >= 2)
      {
        v73 = v125[v53 / 4];
        if (v73)
        {
          if (v73 / v68 * v68 == v73 && ((v73 / v68) & 1) != 0)
          {
            if (v58 || v72 != 1)
            {
              if ((a3 | 2) != 3 || (v75 = v126.u32[v53 / 4], v75 != 0x8000) && ((a3 | 2) != 3 || v68 + 0x8000 != v75))
              {
                LODWORD(v72) = v72 - 1;
                *(v123 + v54) = v72;
              }
            }

            else
            {
              LODWORD(v72) = 1;
            }
          }
        }
      }

      if (v72 >> v57 || v126.i32[v53 / 4] == 0xFFFF)
      {
        *(v123 + v54) = ~(-1 << v57);
      }

      if (*v71 >= a5 || *(v71 - 1) >= a4)
      {
        *(v123 + v54) = 0;
      }

      ++v54;
    }

    v53 += 4;
    v71 += 2;
  }

  while (v53 != 32);
  v76 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v77 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if (v48)
  {
    v78 = 0;
    v79 = 0;
    v80 = 8 * (a1 & 7);
    do
    {
      v81 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v78;
      if (v81[1] >= a5 || *v81 >= a4)
      {
        v83 = 0;
      }

      else
      {
        v83 = v126.u32[v78] >> 4;
      }

      if ((v80 - v77 + (v79 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
      {
        v84 = 0;
        v85 = 12;
        do
        {
          v86 = 64 - v80;
          if (64 - v80 >= v85)
          {
            v86 = v85;
          }

          v76[v79] |= ((v83 >> v84) & ~(-1 << v86)) << v80;
          v84 += v86;
          v87 = v86 + v80;
          v79 += v87 >> 6;
          v80 = v87 & 0x3F;
          v85 -= v86;
        }

        while (v85);
      }

      ++v78;
    }

    while (v78 != 8);
  }

  else
  {
    v88 = 0;
    *v76 |= (v41 & 0xF) << v77;
    v89 = v77 | 4;
    if (v55 && (v56 - v77 + v89) <= 0x60)
    {
      v88 = 0;
      v90 = 0;
      v91 = v58 >> (16 - v56);
      v92 = v56;
      do
      {
        v93 = 64 - v89;
        if (64 - v89 >= v92)
        {
          v93 = v92;
        }

        v76[v88] |= ((v91 >> v90) & ~(-1 << v93)) << v89;
        v90 += v93;
        v94 = v93 + v89;
        v88 += v94 >> 6;
        v89 = v94 & 0x3F;
        v92 -= v93;
      }

      while (v92);
    }

    if (v57)
    {
      if ((v89 - v77 + (v88 << 6) + 3) <= 0x60)
      {
        v95 = 0;
        v96 = 3;
        do
        {
          v97 = 64 - v89;
          if (64 - v89 >= v96)
          {
            v97 = v96;
          }

          v76[v88] |= ((v69 >> v95) & ~(-1 << v97)) << v89;
          v95 += v97;
          v98 = v97 + v89;
          v88 += v98 >> 6;
          v89 = v98 & 0x3F;
          v96 -= v97;
        }

        while (v96);
      }

      v99 = v56 + 7;
    }

    else
    {
      v99 = v56 + 4;
    }

    v105 = 96 - v99;
    v106 = (147 * v105) >> 10;
    v107 = -7 * v106 + v105;
    if ((v107 - 257) >= 0xFFFFFF00 && v89 - v77 + (v88 << 6) + v107 <= 0x60)
    {
      do
      {
        v108 = 64 - v89;
        if (64 - v89 >= v107)
        {
          v108 = v107;
        }

        v109 = v108 + v89;
        v88 += v109 >> 6;
        v89 = v109 & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    v110 = 0;
    v111 = v106 - v57;
    if (v111)
    {
      v112 = v111 > 0x100;
    }

    else
    {
      v112 = 1;
    }

    v113 = v112;
    do
    {
      if (v57 && v57 - v77 + v89 + (v88 << 6) <= 0x60)
      {
        v114 = 0;
        v115 = *(v123 + v110);
        v116 = v57;
        do
        {
          v117 = 64 - v89;
          if (64 - v89 >= v116)
          {
            v117 = v116;
          }

          v76[v88] |= ((v115 >> v114) & ~(-1 << v117)) << v89;
          v114 += v117;
          v118 = v117 + v89;
          v88 += v118 >> 6;
          v89 = v118 & 0x3F;
          v116 -= v117;
        }

        while (v116);
      }

      if ((v113 & 1) == 0 && v89 - v77 + (v88 << 6) + v111 <= 0x60)
      {
        v119 = v111;
        do
        {
          v120 = 64 - v89;
          if (64 - v89 >= v119)
          {
            v120 = v119;
          }

          v121 = v120 + v89;
          v88 += v121 >> 6;
          v89 = v121 & 0x3F;
          v119 -= v120;
        }

        while (v119);
      }

      ++v110;
    }

    while (v110 != 7);
  }

  return v48 & 1;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  if (a3 == 4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 12;
    v9 = 8 * (a1 & 7);
    do
    {
      v10 = 64 - v9;
      if (64 - v9 >= v8)
      {
        v10 = v8;
      }

      result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v10)) << v7;
      v5 |= result;
      v7 += v10;
      v12 = v10 + v9;
      v6 += v12 >> 6;
      v9 = v12 & 0x3F;
      v8 -= v10;
    }

    while (v8);
    *a2 = 16 * (v5 & 0xFFF);
    if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v25 = 0;
      v26 = 0;
      v27 = 12;
      do
      {
        v28 = 64 - v9;
        if (64 - v9 >= v27)
        {
          v28 = v27;
        }

        result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v28)) << v26;
        v25 |= result;
        v26 += v28;
        v29 = v28 + v9;
        v6 += v29 >> 6;
        v9 = v29 & 0x3F;
        v27 -= v28;
      }

      while (v27);
      a2[1] = 16 * (v25 & 0xFFF);
      if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
      {
        v32 = 0;
        v33 = 0;
        v34 = 12;
        do
        {
          v35 = 64 - v9;
          if (64 - v9 >= v34)
          {
            v35 = v34;
          }

          result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v35)) << v33;
          v32 |= result;
          v33 += v35;
          v36 = v35 + v9;
          v6 += v36 >> 6;
          v9 = v36 & 0x3F;
          v34 -= v35;
        }

        while (v34);
        a2[2] = 16 * (v32 & 0xFFF);
        if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
        {
          v37 = 0;
          v38 = 0;
          v39 = 12;
          do
          {
            v40 = 64 - v9;
            if (64 - v9 >= v39)
            {
              v40 = v39;
            }

            result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v40)) << v38;
            v37 |= result;
            v38 += v40;
            v41 = v40 + v9;
            v6 += v41 >> 6;
            v9 = v41 & 0x3F;
            v39 -= v40;
          }

          while (v39);
          a2[3] = 16 * (v37 & 0xFFF);
          if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
          {
            v42 = 0;
            v43 = 0;
            v44 = 12;
            do
            {
              v45 = 64 - v9;
              if (64 - v9 >= v44)
              {
                v45 = v44;
              }

              result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v45)) << v43;
              v42 |= result;
              v43 += v45;
              v46 = v45 + v9;
              v6 += v46 >> 6;
              v9 = v46 & 0x3F;
              v44 -= v45;
            }

            while (v44);
            a2[4] = 16 * (v42 & 0xFFF);
            if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
            {
              v47 = 0;
              v48 = 0;
              v49 = 12;
              do
              {
                v50 = 64 - v9;
                if (64 - v9 >= v49)
                {
                  v50 = v49;
                }

                result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v50)) << v48;
                v47 |= result;
                v48 += v50;
                v51 = v50 + v9;
                v6 += v51 >> 6;
                v9 = v51 & 0x3F;
                v49 -= v50;
              }

              while (v49);
              a2[5] = 16 * (v47 & 0xFFF);
              if ((v9 - v4 + (v6 << 6) - 85) >= 0xFFFFFFFFFFFFFF9FLL)
              {
                v52 = 0;
                v53 = 0;
                v54 = 12;
                do
                {
                  v55 = 64 - v9;
                  if (64 - v9 >= v54)
                  {
                    v55 = v54;
                  }

                  result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v55)) << v53;
                  v52 |= result;
                  v53 += v55;
                  v56 = v55 + v9;
                  v6 += v56 >> 6;
                  v9 = v56 & 0x3F;
                  v54 -= v55;
                }

                while (v54);
                v57 = v9 - v4 + (v6 << 6) - 85;
                a2[6] = 16 * (v52 & 0xFFF);
                v31 = a2 + 7;
                if (v57 >= 0xFFFFFFFFFFFFFF9FLL)
                {
                  v58 = 0;
                  v59 = 0;
                  v60 = 12;
                  do
                  {
                    v61 = 64 - v9;
                    if (64 - v9 >= v60)
                    {
                      v61 = v60;
                    }

                    result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v61)) << v59;
                    v58 |= result;
                    v59 += v61;
                    v62 = v61 + v9;
                    v6 += v62 >> 6;
                    v9 = v62 & 0x3F;
                    v60 -= v61;
                  }

                  while (v60);
                  v30 = 16 * (v58 & 0xFFF);
                }

                else
                {
                  v30 = 0;
                }

                goto LABEL_35;
              }

LABEL_34:
              v30 = 0;
              a2[6] = 0;
              v31 = a2 + 7;
LABEL_35:
              *v31 = v30;
              return result;
            }

LABEL_33:
            a2[5] = 0;
            goto LABEL_34;
          }

LABEL_32:
          a2[4] = 0;
          goto LABEL_33;
        }

LABEL_31:
        a2[3] = 0;
        goto LABEL_32;
      }
    }

    else
    {
      a2[1] = 0;
    }

    a2[2] = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  v15 = a3 & 0xFFFFFFFD;
  v16 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  result = 8 * (a1 & 7);
  do
  {
    if (result - v4 + (v14 << 6) - 85 >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v17 = 0;
      v18 = 0;
      v19 = 12;
      do
      {
        v20 = 64 - result;
        if (64 - result >= v19)
        {
          v20 = v19;
        }

        v17 |= ((*(v3 + 8 * v14) >> result) & ~(-1 << v20)) << v18;
        v18 += v20;
        v21 = v20 + result;
        v14 += v21 >> 6;
        result = v21 & 0x3F;
        v19 -= v20;
      }

      while (v19);
    }

    else
    {
      v17 = 0;
    }

    v22 = 16 * (v17 & 0xFFF);
    if (v22 != 0x8000 || v15 != 1)
    {
      v24 = v22 - (v17 & 1) + 8;
      if (v22 == 65520)
      {
        v24 = 0xFFFF;
      }

      if (v22)
      {
        v22 = v24;
      }

      else
      {
        v22 = 0;
      }
    }

    a2[v13++] = v22 ^ v16;
  }

  while (v13 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, _DWORD *a2, int a3)
{
  v150 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = v4 | 4;
  v6 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 0xFLL;
  v7 = &kDQuadParamTable[10 * v6];
  v8 = v7[484];
  LODWORD(v7) = v7[485];
  v9 = v7 != 0;
  v10 = v7 + 4;
  v11 = v8 + 4;
  if (v11 >= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  LODWORD(v13) = 16 * v9;
  if (v13 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v13;
  }

  v14 = v13;
  v15 = 16 - v12;
  if (v11)
  {
    if ((v12 - v4 + v5) <= 0x60)
    {
      v17 = 0;
      v16 = 0;
      v22 = 0;
      v23 = v12;
      do
      {
        v24 = 64 - v5;
        if (64 - v5 >= v23)
        {
          v24 = v23;
        }

        v17 |= ((*(v3 + 8 * v16) >> v5) & ~(-1 << v24)) << v22;
        v22 += v24;
        v25 = v24 + v5;
        v16 += v25 >> 6;
        v5 = v25 & 0x3F;
        v23 -= v24;
      }

      while (v23);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = 89 - v12;
    v19 = (v17 << v15);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_11:
    LOBYTE(v13) = 0;
    v20 = 0;
    v21 = 0;
    v146 = 0;
    v147 = 0;
    v149 = 0;
    v148 = 0;
    goto LABEL_66;
  }

  v16 = 0;
  v18 = 89;
  v19 = 0;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_17:
  if ((v5 - v4 + (v16 << 6) + 3) <= 0x60)
  {
    LODWORD(v20) = 0;
    v26 = 0;
    v27 = 3;
    do
    {
      v28 = 64 - v5;
      if (64 - v5 >= v27)
      {
        v28 = v27;
      }

      v20 = v20 | (((*(v3 + 8 * v16) >> v5) & ~(-1 << v28)) << v26);
      v26 += v28;
      v29 = v28 + v5;
      v16 += v29 >> 6;
      v5 = v29 & 0x3F;
      v27 -= v28;
    }

    while (v27);
  }

  else
  {
    v20 = 0;
  }

  v30 = (147 * v18) >> 10;
  v31 = v13 - v4;
  v32 = (v5 | (v16 << 6)) + -7 * v30 + v18;
  v33 = v32 & 0x3F;
  v34 = v31 + v33 + (v32 & 0xFFFFFFFFFFFFFFC0);
  v146 = 0;
  v147 = 0;
  v149 = 0;
  v148 = 0;
  v35 = v32 >> 6;
  if (v34 <= 0x60)
  {
    v21 = 0;
    v36 = 0;
    v37 = v13;
    do
    {
      v38 = 64 - v33;
      if (64 - v33 >= v37)
      {
        v38 = v37;
      }

      v21 |= ((*(v3 + 8 * v35) >> v33) & ~(-1 << v38)) << v36;
      v36 += v38;
      v39 = v38 + v33;
      v35 += v39 >> 6;
      v33 = v39 & 0x3F;
      v37 -= v38;
    }

    while (v37);
  }

  else
  {
    v21 = 0;
  }

  LODWORD(v146) = v21;
  v40 = v33 | (v35 << 6);
  v41 = v30 - v13;
  v42 = v40 + v41;
  v43 = (v40 + v41) & 0x3F;
  v44 = (v40 + v41) >> 6;
  if (v31 + v43 + (v42 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v45 = 0;
    v46 = 0;
    v47 = v13;
    do
    {
      v48 = 64 - v43;
      if (64 - v43 >= v47)
      {
        v48 = v47;
      }

      v45 |= ((*(v3 + 8 * v44) >> v43) & ~(-1 << v48)) << v46;
      v46 += v48;
      v49 = v48 + v43;
      v44 += v49 >> 6;
      v43 = v49 & 0x3F;
      v47 -= v48;
    }

    while (v47);
  }

  else
  {
    v45 = 0;
  }

  HIDWORD(v146) = v45;
  v50 = (v43 | (v44 << 6)) + v41;
  v51 = v50 & 0x3F;
  v52 = v50 >> 6;
  if (v31 + v51 + (v50 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v53 = 0;
    v54 = 0;
    v55 = v13;
    do
    {
      v56 = 64 - v51;
      if (64 - v51 >= v55)
      {
        v56 = v55;
      }

      v53 |= ((*(v3 + 8 * v52) >> v51) & ~(-1 << v56)) << v54;
      v54 += v56;
      v57 = v56 + v51;
      v52 += v57 >> 6;
      v51 = v57 & 0x3F;
      v55 -= v56;
    }

    while (v55);
  }

  else
  {
    v53 = 0;
  }

  LODWORD(v147) = v53;
  v58 = (v51 | (v52 << 6)) + v41;
  v59 = v58 & 0x3F;
  v60 = v58 >> 6;
  if (v31 + v59 + (v58 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v61 = 0;
    v62 = 0;
    v63 = v13;
    do
    {
      v64 = 64 - v59;
      if (64 - v59 >= v63)
      {
        v64 = v63;
      }

      v61 |= ((*(v3 + 8 * v60) >> v59) & ~(-1 << v64)) << v62;
      v62 += v64;
      v65 = v64 + v59;
      v60 += v65 >> 6;
      v59 = v65 & 0x3F;
      v63 -= v64;
    }

    while (v63);
  }

  else
  {
    v61 = 0;
  }

  HIDWORD(v147) = v61;
  v66 = (v59 | (v60 << 6)) + v41;
  v67 = v66 & 0x3F;
  v68 = v66 >> 6;
  if (v31 + v67 + (v66 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v69 = 0;
    v70 = 0;
    v71 = v13;
    do
    {
      v72 = 64 - v67;
      if (64 - v67 >= v71)
      {
        v72 = v71;
      }

      v69 |= ((*(v3 + 8 * v68) >> v67) & ~(-1 << v72)) << v70;
      v70 += v72;
      v73 = v72 + v67;
      v68 += v73 >> 6;
      v67 = v73 & 0x3F;
      v71 -= v72;
    }

    while (v71);
  }

  else
  {
    v69 = 0;
  }

  LODWORD(v148) = v69;
  v74 = (v67 | (v68 << 6)) + v41;
  v75 = v74 & 0x3F;
  v76 = v74 >> 6;
  if (v31 + v75 + (v74 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v77 = 0;
    v78 = 0;
    v79 = v13;
    do
    {
      v80 = 64 - v75;
      if (64 - v75 >= v79)
      {
        v80 = v79;
      }

      v77 |= ((*(v3 + 8 * v76) >> v75) & ~(-1 << v80)) << v78;
      v78 += v80;
      v81 = v80 + v75;
      v76 += v81 >> 6;
      v75 = v81 & 0x3F;
      v79 -= v80;
    }

    while (v79);
  }

  else
  {
    v77 = 0;
  }

  HIDWORD(v148) = v77;
  v82 = (v75 | (v76 << 6)) + v41;
  v83 = v82 & 0x3F;
  if (v31 + v83 + (v82 & 0xFFFFFFFFFFFFFFC0) <= 0x60)
  {
    v84 = 0;
    v85 = 0;
    v86 = v82 >> 6;
    v87 = v13;
    do
    {
      v88 = 64 - v83;
      if (64 - v83 >= v87)
      {
        v88 = v87;
      }

      v84 |= ((*(v3 + 8 * v86) >> v83) & ~(-1 << v88)) << v85;
      v85 += v88;
      v89 = v88 + v83;
      v86 += v89 >> 6;
      v83 = v89 & 0x3F;
      v87 -= v88;
    }

    while (v87);
  }

  else
  {
    v84 = 0;
  }

  v149 = v84;
LABEL_66:
  v90 = *&kDQuadParamTable[10 * v6 + 482];
  v91 = v90 >> v13;
  if (v90 >> v13 <= 1)
  {
    v91 = 1;
  }

  v92 = v91 >> 1;
  v93 = (1 << v15) >> 1;
  if (v91 >> 1 >= v93)
  {
    v94 = v93;
  }

  else
  {
    v94 = v91 >> 1;
  }

  result = (0x8000 - v19) / v91;
  v96 = v90 + v19;
  v97 = -1 << v13;
  if (!v19)
  {
    v94 = 0;
  }

  v98 = v19 == 0x8000;
  if (!v14)
  {
    v101 = 0;
    v100 = 0;
    v99 = v91 > 0x8000 - v19;
    goto LABEL_84;
  }

  if (!v20)
  {
    v101 = 0;
    v100 = v94;
    v99 = v19 == 0x8000;
    goto LABEL_84;
  }

  v99 = result == v21;
  if (v19 | v21)
  {
    if (v96 >= 0x10000 && (v97 ^ v21) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v101 = 1;
      v100 = 0xFFFFLL;
      goto LABEL_84;
    }

    v100 = v92 + v91 * v21;
  }

  else
  {
    v100 = 0;
  }

  v101 = 1;
LABEL_84:
  v102 = a3 & 0xFFFFFFFD;
  v103 = v100 + v19;
  if (a3 == 4)
  {
    v104 = v103 & 0xFFFFFFFFFFFFFE00;
    if ((v103 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v103 = 31743;
    }

    else if (v104 == 32256)
    {
      v103 = 0x8000;
    }

    else if (v104 == 64512)
    {
      v103 = 64511;
    }
  }

  if (v103 >= 0xFFFF)
  {
    LODWORD(v103) = 0xFFFF;
  }

  if (v99)
  {
    v105 = 0;
  }

  else
  {
    v105 = v103 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v105 = v103;
  }

  *a2 = v105;
  if (v14)
  {
    if (v20 == 1)
    {
      v106 = v94;
      v107 = v19 == 0x8000;
    }

    else
    {
      v108 = *(&v146 | (4 * v101));
      v107 = result == v108;
      if (v19 | v108)
      {
        if (v96 >= 0x10000 && (v97 ^ v108) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v106 = 0xFFFFLL;
        }

        else
        {
          v106 = v92 + v91 * v108;
        }
      }

      else
      {
        v106 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v106 = 0;
    v107 = v91 > 0x8000 - v19;
  }

  v109 = v106 + v19;
  if (a3 == 4)
  {
    v110 = v109 & 0xFFFFFFFFFFFFFE00;
    if ((v109 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v109 = 31743;
    }

    else if (v110 == 32256)
    {
      v109 = 0x8000;
    }

    else if (v110 == 64512)
    {
      v109 = 64511;
    }
  }

  if (v109 >= 0xFFFF)
  {
    LODWORD(v109) = 0xFFFF;
  }

  if (v107)
  {
    v111 = 0;
  }

  else
  {
    v111 = v109 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v111 = v109;
  }

  a2[1] = v111;
  if (v14)
  {
    if (v20 == 2)
    {
      v112 = v94;
      v113 = v19 == 0x8000;
    }

    else
    {
      v114 = *(&v146 + v101);
      v113 = result == v114;
      if (v19 | v114)
      {
        if (v96 >= 0x10000 && (v97 ^ v114) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v112 = 0xFFFFLL;
        }

        else
        {
          v112 = v92 + v91 * v114;
        }
      }

      else
      {
        v112 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v112 = 0;
    v113 = v91 > 0x8000 - v19;
  }

  v115 = v112 + v19;
  if (a3 == 4)
  {
    v116 = v115 & 0xFFFFFFFFFFFFFE00;
    if ((v115 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v115 = 31743;
    }

    else if (v116 == 32256)
    {
      v115 = 0x8000;
    }

    else if (v116 == 64512)
    {
      v115 = 64511;
    }
  }

  if (v115 >= 0xFFFF)
  {
    LODWORD(v115) = 0xFFFF;
  }

  if (v113)
  {
    v117 = 0;
  }

  else
  {
    v117 = v115 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v117 = v115;
  }

  a2[2] = v117;
  if (v14)
  {
    if (v20 == 3)
    {
      v118 = v94;
      v119 = v19 == 0x8000;
    }

    else
    {
      v120 = *(&v146 + v101);
      v119 = result == v120;
      if (v19 | v120)
      {
        if (v96 >= 0x10000 && (v97 ^ v120) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v118 = 0xFFFFLL;
        }

        else
        {
          v118 = v92 + v91 * v120;
        }
      }

      else
      {
        v118 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v118 = 0;
    v119 = v91 > 0x8000 - v19;
  }

  v121 = v118 + v19;
  if (a3 == 4)
  {
    v122 = v121 & 0xFFFFFFFFFFFFFE00;
    if ((v121 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v121 = 31743;
    }

    else if (v122 == 32256)
    {
      v121 = 0x8000;
    }

    else if (v122 == 64512)
    {
      v121 = 64511;
    }
  }

  if (v121 >= 0xFFFF)
  {
    LODWORD(v121) = 0xFFFF;
  }

  if (v119)
  {
    v123 = 0;
  }

  else
  {
    v123 = v121 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v123 = v121;
  }

  a2[3] = v123;
  if (v14)
  {
    if (v20 == 4)
    {
      v124 = v94;
      v125 = v19 == 0x8000;
    }

    else
    {
      v126 = *(&v146 + v101);
      v125 = result == v126;
      if (v19 | v126)
      {
        if (v96 >= 0x10000 && (v97 ^ v126) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v124 = 0xFFFFLL;
        }

        else
        {
          v124 = v92 + v91 * v126;
        }
      }

      else
      {
        v124 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v124 = 0;
    v125 = v91 > 0x8000 - v19;
  }

  v127 = v124 + v19;
  if (a3 == 4)
  {
    v128 = v127 & 0xFFFFFFFFFFFFFE00;
    if ((v127 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v127 = 31743;
    }

    else if (v128 == 32256)
    {
      v127 = 0x8000;
    }

    else if (v128 == 64512)
    {
      v127 = 64511;
    }
  }

  if (v127 >= 0xFFFF)
  {
    LODWORD(v127) = 0xFFFF;
  }

  if (v125)
  {
    v129 = 0;
  }

  else
  {
    v129 = v127 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v129 = v127;
  }

  a2[4] = v129;
  if (v14)
  {
    if (v20 == 5)
    {
      v130 = v94;
      v131 = v19 == 0x8000;
    }

    else
    {
      v132 = *(&v146 + v101);
      v131 = result == v132;
      if (v19 | v132)
      {
        if (v96 >= 0x10000 && (v97 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v130 = 0xFFFFLL;
        }

        else
        {
          v130 = v92 + v91 * v132;
        }
      }

      else
      {
        v130 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v130 = 0;
    v131 = v91 > 0x8000 - v19;
  }

  v133 = v130 + v19;
  if (a3 == 4)
  {
    v134 = v133 & 0xFFFFFFFFFFFFFE00;
    if ((v133 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v133 = 31743;
    }

    else if (v134 == 32256)
    {
      v133 = 0x8000;
    }

    else if (v134 == 64512)
    {
      v133 = 64511;
    }
  }

  if (v133 >= 0xFFFF)
  {
    LODWORD(v133) = 0xFFFF;
  }

  if (v131)
  {
    v135 = 0;
  }

  else
  {
    v135 = v133 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v135 = v133;
  }

  a2[5] = v135;
  if (v14)
  {
    if (v20 == 6)
    {
      v136 = v94;
      v137 = v19 == 0x8000;
    }

    else
    {
      v138 = *(&v146 + v101);
      v137 = result == v138;
      if (v19 | v138)
      {
        if (v96 >= 0x10000 && (v97 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v136 = 0xFFFFLL;
        }

        else
        {
          v136 = v92 + v91 * v138;
        }
      }

      else
      {
        v136 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v136 = 0;
    v137 = v91 > 0x8000 - v19;
  }

  v139 = v136 + v19;
  if (a3 == 4)
  {
    v140 = v139 & 0xFFFFFFFFFFFFFE00;
    if ((v139 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v139 = 31743;
    }

    else if (v140 == 32256)
    {
      v139 = 0x8000;
    }

    else if (v140 == 64512)
    {
      v139 = 64511;
    }
  }

  if (v139 >= 0xFFFF)
  {
    LODWORD(v139) = 0xFFFF;
  }

  if (v137)
  {
    v141 = 0;
  }

  else
  {
    v141 = v139 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v141 = v139;
  }

  a2[6] = v141;
  if (v14)
  {
    if (v20 != 7)
    {
      v142 = *(&v146 + v101);
      v98 = result == v142;
      if (v19 | v142)
      {
        if (v96 >= 0x10000 && (v97 ^ v142) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v94 = 0xFFFFLL;
        }

        else
        {
          v94 = v92 + v91 * v142;
        }
      }

      else
      {
        v94 = 0;
      }
    }
  }

  else
  {
    v94 = 0;
    v98 = v91 > 0x8000 - v19;
  }

  v143 = v94 + v19;
  if (a3 == 4)
  {
    v144 = v143 & 0xFFFFFFFFFFFFFE00;
    if ((v143 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v143 = 31743;
    }

    else if (v144 == 32256)
    {
      v143 = 0x8000;
    }

    else if (v144 == 64512)
    {
      v143 = 64511;
    }
  }

  if (v143 >= 0xFFFF)
  {
    LODWORD(v143) = 0xFFFF;
  }

  v145 = v143 ^ 0x8000;
  if (v98)
  {
    v145 = 0;
  }

  if (v102 == 1)
  {
    LODWORD(v143) = v145;
  }

  a2[7] = v143;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v230 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v14 = 0;
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v15 = (a1->i64 + a2);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1->i64 + 2 * a2);
    *v16 = 0;
    v16[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
LABEL_6:
    *v17 = 0;
    v17[1] = 0;
    return v14;
  }

  v9 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v226, a5);
    }

    v224 = v226;
    v222 = v227;
    v221 = v228;
    v218 = v229;
    v19 = a3 + 12;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v19, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v19, &v226, a5);
    }

    v220 = v226;
    v225 = v227;
    v219 = v228;
    v223 = v229;
    v20 = a3 + 24;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v226, a5);
    }

    v217 = v226;
    v216 = v227;
    v215 = v228;
    v214 = v229;
    v21 = a3 + 36;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v21, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v21, &v226, a5);
    }

    v23.i64[0] = v216;
    v22.i64[0] = v217;
    v23.i64[1] = v214;
    v24.i64[0] = v222;
    v24.i64[1] = v218;
    v22.i64[1] = v215;
    v25.i64[0] = v224;
    v25.i64[1] = v221;
    v26 = vuzp1q_s16(v24, v23);
    v27 = vuzp1q_s16(v25, v22);
    v28.i64[0] = v226;
    v22.i64[0] = v227;
    v23.i64[0] = v228;
    v29 = v229;
    *a1 = v27;
    *(a1 + a2) = v26;
    v30 = (a1 + a2 + a2);
    v28.i64[1] = v23.i64[0];
    v26.i64[0] = v220;
    v26.i64[1] = v219;
    *v30 = vuzp1q_s16(v26, v28);
    v22.i64[1] = v29;
    v26.i64[0] = v225;
    v26.i64[1] = v223;
    *(v30 + a2) = vuzp1q_s16(v26, v22);
    return 48;
  }

  if (a4 == 63)
  {
    v31 = *a3;
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    v34 = *(a3 + 48);
    *a1 = vuzp1q_s32(*a3, v33);
    *(a1 + a2) = vuzp2q_s32(v31, v33);
    v35 = (a1 + 2 * a2);
    *v35 = vuzp1q_s32(v32, v34);
    *(v35 + a2) = vuzp2q_s32(v32, v34);
    return 64;
  }

  if (a4 == 1)
  {
    v18 = vld1q_dup_s16(a3);
    *a1 = v18;
    *(a1 + a2) = v18;
    *(a1 + 2 * a2) = v18;
    *(a1 + 3 * a2) = v18;
    return 2;
  }

  v37 = 8 * (a3 & 7);
  v38 = a3 & 0xFFFFFFFFFFFFFFF8;
  v39 = v37 + 22;
  v40 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v37;
  if (v37 >= 0x2B)
  {
    v40 |= *(v38 + 8) << (-8 * (a3 & 7u));
  }

  v41 = (8 * (a3 & 7)) | 0x180;
  v42 = ((a4 >> 6) | (4 * v40)) & 0xF;
  v43 = vdupq_n_s16(v42);
  a9.i32[0] = v42;
  v44.i64[0] = 0x3000300030003;
  v44.i64[1] = 0x3000300030003;
  v45 = vbicq_s8(vdupq_n_s16(((v40 >> 2) & 0xF) + 1), vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v44));
  v46 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
  v47.i64[0] = 0x202020202020202;
  v47.i64[1] = 0x202020202020202;
  v48 = vandq_s8(v46, v47);
  if (vmaxvq_s8(v48) < 1)
  {
    v56 = 0;
    v79.i64[0] = -1;
    v79.i64[1] = -1;
    v75 = v45;
    v74 = v45;
    v73 = v45;
    v78.i64[0] = -1;
    v78.i64[1] = -1;
    v72 = v45;
    v77.i64[0] = -1;
    v77.i64[1] = -1;
    v76.i64[0] = -1;
    v76.i64[1] = -1;
  }

  else
  {
    v49 = vmovl_u8(*&vpaddq_s8(v48, v48));
    v50 = vmovl_u16(*&vpaddq_s16(v49, v49));
    v51 = vpaddq_s32(v50, v50).u64[0];
    v52.i64[0] = v51;
    v52.i64[1] = HIDWORD(v51);
    v53 = v52;
    v54 = vaddvq_s64(v52);
    v55 = v54 <= 0x80 && v41 >= v54 + v39;
    v56 = !v55;
    v57 = 0uLL;
    if (v55)
    {
      v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v39 & 0x3E));
      v59 = (v38 + ((v39 >> 3) & 8));
      v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
      if (v54 + (v39 & 0x3E) >= 0x81)
      {
        v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v57);
      }

      v39 += v54;
    }

    v60 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v61.i64[0] = v60.u32[0];
    v61.i64[1] = v60.u32[1];
    v62 = vshlq_u64(v57, vnegq_s64(v61));
    v63 = vuzp1q_s32(vzip1q_s64(v57, v62), vzip2q_s64(v57, v62));
    v64 = vshlq_u32(v63, vnegq_s32((*&v49 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v65 = vuzp1q_s16(vzip1q_s32(v63, v64), vzip2q_s32(v63, v64));
    v66 = vzip1q_s16(v65, vshlq_u16(v65, vnegq_s16(vmovl_u8(vuzp1_s8(*v48.i8, *v43.i8)))));
    *v66.i8 = vmovn_s16(v66);
    v63.i64[0] = 0x101010101010101;
    v63.i64[1] = 0x101010101010101;
    v67 = vshlq_s8(v63, v48);
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v67.i32[0] = vandq_s8(vaddq_s8(v67, v63), v66).u32[0];
    v68 = vdupq_n_s16(v67.i8[0]);
    v69 = vdupq_n_s16(v67.i8[1]);
    v70 = vdupq_n_s16(v67.i8[2]);
    v71 = vdupq_n_s16(v67.i8[3]);
    v72 = vsubq_s16(v45, v68);
    v73 = vsubq_s16(v45, v69);
    v74 = vsubq_s16(v45, v70);
    v75 = vsubq_s16(v45, v71);
    v76 = vceqzq_s16(v68);
    v77 = vceqzq_s16(v69);
    v78 = vceqzq_s16(v70);
    v79 = vceqzq_s16(v71);
  }

  v80.i64[0] = 0x7000700070007;
  v80.i64[1] = 0x7000700070007;
  v81 = 0uLL;
  v82 = vandq_s8(vextq_s8(vcgtq_u16(v43, v80), 0, 0xEuLL), v45);
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  if (v87 <= 0x80 && v41 >= v87 + v39)
  {
    v89 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v39 & 0x3F));
    v90 = (v38 + 8 * (v39 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v87 + (v39 & 0x3F) >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v81);
    }

    v39 += v87;
  }

  else
  {
    v56 = 1;
  }

  v91 = v42 & 3;
  if (v91 != 2)
  {
    LODWORD(v95) = 0;
    LODWORD(v93) = 0;
    v96 = v39;
    goto LABEL_58;
  }

  v92 = v39 + 8;
  if (v41 < v39 + 8)
  {
    LODWORD(v93) = 0;
    v92 = v39;
LABEL_57:
    LODWORD(v95) = 0;
    v56 = 1;
    v96 = v92;
    goto LABEL_58;
  }

  v97 = (v38 + 8 * (v39 >> 6));
  v93 = *v97 >> v39;
  if ((v39 & 0x3F) >= 0x39)
  {
    v93 |= v97[1] << -(v39 & 0x3F);
  }

  LODWORD(v93) = v93;
  v96 = v39 + 16;
  if (v41 < v39 + 16)
  {
    goto LABEL_57;
  }

  v94 = (v38 + 8 * (v92 >> 6));
  v95 = *v94 >> v92;
  if ((v92 & 0x3F) >= 0x39)
  {
    v95 |= v94[1] << -(v92 & 0x3F);
  }

  LODWORD(v95) = v95;
LABEL_58:
  v98 = 0uLL;
  v99 = vextq_s8(0, v72, 0xEuLL);
  v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v96;
  if (v104 <= 0x80 && v41 >= v105)
  {
    v108 = v96 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v108));
    v110 = (v38 + 8 * (v96 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v104 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v96 = v105;
  }

  else
  {
    v56 = 1;
    v107 = 0uLL;
  }

  v111.i64[0] = 0xFFFF0000FFFFLL;
  v111.i64[1] = 0xFFFF0000FFFFLL;
  v112 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  if (v116 >= 0x81)
  {
    v56 = 1;
  }

  else
  {
    v117 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v118.i64[0] = v117.u32[0];
    v118.i64[1] = v117.u32[1];
    v119 = v118;
    v120 = vandq_s8(v73, v111);
    v121 = v116 + v96;
    if (v41 >= v116 + v96)
    {
      v122 = v96 & 0x3F;
      v123 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v122));
      v124 = (v38 + 8 * (v96 >> 6));
      v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
      if (v116 + v122 >= 0x81)
      {
        v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v98);
      }

      v96 = v121;
    }

    else
    {
      v56 = 1;
    }

    v125 = vshlq_u64(v98, vnegq_s64(v119));
    v126 = vuzp1q_s32(vzip1q_s64(v98, v125), vzip2q_s64(v98, v125));
    v127 = vshlq_u32(v126, vnegq_s32(v120));
    v98 = vuzp1q_s16(vzip1q_s32(v126, v127), vzip2q_s32(v126, v127));
  }

  v128 = vmovl_u16(*&vpaddq_s16(v74, v74));
  v129 = vpaddq_s32(v128, v128).u64[0];
  v130.i64[0] = v129;
  v130.i64[1] = HIDWORD(v129);
  v131 = v130;
  v132 = vaddvq_s64(v130);
  if (v132 >= 0x81)
  {
    v56 = 1;
    v139 = 0uLL;
  }

  else
  {
    v133 = vzip1_s32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
    v134.i64[0] = v133.u32[0];
    v134.i64[1] = v133.u32[1];
    v135 = v134;
    v136 = vandq_s8(v74, v111);
    v137 = v132 + v96;
    if (v41 >= v132 + v96)
    {
      v140 = v96 & 0x3F;
      v141 = vaddq_s64(vzip1q_s64(0, v131), vdupq_n_s64(v140));
      v142 = (v38 + 8 * (v96 >> 6));
      v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
      if (v132 + v140 >= 0x81)
      {
        v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v138);
      }

      v96 = v137;
    }

    else
    {
      v138 = 0uLL;
      v56 = 1;
    }

    v143 = vshlq_u64(v138, vnegq_s64(v135));
    v144 = vuzp1q_s32(vzip1q_s64(v138, v143), vzip2q_s64(v138, v143));
    v145 = vshlq_u32(v144, vnegq_s32(v136));
    v139 = vuzp1q_s16(vzip1q_s32(v144, v145), vzip2q_s32(v144, v145));
  }

  v146 = vmovl_u16(*&vpaddq_s16(v75, v75));
  v147 = vpaddq_s32(v146, v146).u64[0];
  v148.i64[0] = v147;
  v148.i64[1] = HIDWORD(v147);
  v149 = v148;
  v150 = vaddvq_s64(v148);
  if (v150 >= 0x81 || v41 < v150 + v96)
  {
    goto LABEL_88;
  }

  v151 = vaddq_s64(vzip1q_s64(0, v149), vdupq_n_s64(v96 & 0x3F));
  v152 = (v38 + 8 * (v96 >> 6));
  v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v150 + (v96 & 0x3F) >= 0x81)
  {
    v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
  }

  if ((v56 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - (v150 + v96) >= 9))
  {
LABEL_88:
    v154 = 0;
    v155 = 0;
    v156 = 8 * (&v226 & 7);
    v157 = 16;
    do
    {
      v158 = 64 - v156;
      if (64 - v156 >= v157)
      {
        v158 = v157;
      }

      *(&v226 + v154) |= ((0xFFFFFFFFFFFFFFFFLL >> v155) & ~(-1 << v158)) << v156;
      v155 += v158;
      v159 = v158 + v156;
      v154 += v159 >> 6;
      v156 = v159 & 0x3F;
      v157 -= v158;
    }

    while (v157);
    v14 = 0;
    v160 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v161 = (a1->i64 + 2 * a2);
    *v160 = 0;
    v160[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
    *v161 = 0;
    v161[1] = 0;
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
  v163 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v81, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v81, v166), vzip2q_s64(v81, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v82 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32(vandq_s8(v99, v111)));
  v172 = vzip2q_s32(v168, v170);
  v173 = vzip1q_s32(v168, v170);
  v170.i64[0] = 0x10001000100010;
  v170.i64[1] = 0x10001000100010;
  v174 = vzip2q_s32(v169, v171);
  v175 = vzip1q_s32(v169, v171);
  v171.i64[0] = 0x10001000100010;
  v171.i64[1] = 0x10001000100010;
  v176 = v40 >> 6;
  v177 = vuzp1q_s16(v173, v172);
  v172.i64[0] = 0xF000F000F000FLL;
  v172.i64[1] = 0xF000F000F000FLL;
  v178 = vuzp1q_s16(v175, v174);
  v174.i64[0] = 0xF000F000F000FLL;
  v174.i64[1] = 0xF000F000F000FLL;
  v179 = vzip1_s32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v181.i64[0] = 0xF000F000F000FLL;
  v181.i64[1] = 0xF000F000F000FLL;
  v182.i64[0] = 0x10001000100010;
  v182.i64[1] = 0x10001000100010;
  v164.i64[0] = v179.u32[0];
  v164.i64[1] = v179.u32[1];
  v183 = vshlq_s16(vshlq_s16(v177, vsubq_s16(v170, v82)), vaddq_s16(v82, v172));
  v184 = vshlq_s16(vshlq_s16(v178, vsubq_s16(v171, v99)), vaddq_s16(v99, v174));
  v185 = vshlq_s16(vshlq_s16(v98, vsubq_s16(v171, v73)), vaddq_s16(v73, v174));
  v186 = vshlq_s16(vshlq_s16(v139, vsubq_s16(v171, v74)), vaddq_s16(v74, v174));
  v187 = vshlq_u64(v153, vnegq_s64(v164));
  v188 = vuzp1q_s32(vzip1q_s64(v153, v187), vzip2q_s64(v153, v187));
  v189 = vshlq_u32(v188, vnegq_s32(vandq_s8(v75, v180)));
  v190 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189)), vsubq_s16(v182, v75)), vaddq_s16(v75, v181));
  if (v91 == 2)
  {
    v191.i64[0] = 0xFFFFFFFF00000000;
    v191.i64[1] = 0xFFFFFFFF00000000;
    v192 = vmlal_s8(vandq_s8(vdupq_n_s16(v95), v191), vdup_n_s8(v93), 0x302030201000100);
    v184 = vaddq_s16(v184, v192);
    v185 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v95), v192), v185);
    v186 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93), v192), v186);
    v190 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93 + 2 * v95), v192), v190);
  }

  v193 = vdupq_n_s16(v176);
  v194 = vaddq_s16(vandq_s8(v183, v76), v184);
  v195 = vdupq_lane_s16(*v183.i8, 0);
  v196 = vsubq_s16(v194, vandq_s8(v195, v76));
  v197 = vsubq_s16(v185, vandq_s8(v195, v77));
  v198 = vsubq_s16(v186, vandq_s8(v195, v78));
  v199 = vsubq_s16(v190, vandq_s8(v195, v79));
  v200.i64[0] = 0x1000100010001;
  v200.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v200)))
  {
    v201 = *&v43 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
    v202 = vnegq_s16(v201);
    v203 = v196;
    v203.i16[0] = v196.i16[7];
    v203.i16[7] = v196.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v196, vceqzq_s16(v201)));
    v205 = vaddq_s16(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v196 = vaddq_s16(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s16(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0E80), v202), v197);
    v197 = vaddq_s16(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s16(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0EA0), v202), v198);
    v198 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s16(vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0EC0), v202), v199);
    v199 = vaddq_s16(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s16(v193, v196);
  v210 = vaddq_s16(v197, v193);
  v211 = vaddq_s16(v198, v193);
  v212 = vaddq_s16(v199, v193);
  *a1 = vuzp1q_s32(v209, v211);
  *(a1 + a2) = vuzp2q_s32(v209, v211);
  v213 = (a1 + 2 * a2);
  *v213 = vuzp1q_s32(v210, v212);
  *(v213 + a2) = vuzp2q_s32(v210, v212);
  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = v17 - 8;
  if (v17 >= 9 && v16)
  {
    if (v16 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v16;
    }

    if (v22 >= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 1, v21 + 1, a2, v24, v23, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v25 = 4 * a2;
  v26 = v16 - 4;
  if (v17 && v16 >= 5)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v16 - 4;
    }

    if (v17 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 2, (v21 + v25), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v16 >= 5)
  {
    if (v26 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v16 - 4;
    }

    if (v22 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 3, (v21 + v25 + 16), a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    v31 = v16 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v31 = v16 - 8;
  if (!v17)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v16 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v17 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v31 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v31;
  }

  if (v17 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v17;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 4, (v21 + 8 * a2), a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  if (v17 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v36 = v16 - 12;
    if (!v17)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v16 < 9)
  {
    goto LABEL_57;
  }

  if (v31 >= 4)
  {
    v34 = 4;
  }

  else
  {
    v34 = v31;
  }

  if (v22 >= 8)
  {
    v35 = 8;
  }

  else
  {
    v35 = v17 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 5, (v21 + 8 * a2 + 16), a2, v35, v34, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  v36 = v16 - 12;
LABEL_58:
  if (v16 >= 0xD)
  {
    if (v36 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v36;
    }

    if (v17 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 6, (v21 + 12 * a2), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v17 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v16 < 0xD)
  {
    goto LABEL_78;
  }

  if (v36 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v36;
  }

  if (v22 >= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v17 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v19, a4 + 7, (v21 + 12 * a2 + 16), a2, v40, v39, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(int16x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v11 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7, a8);
  v16 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1, 32, v11, a3[1], a4, v12, v13, v14, v15);
  v21 = v16 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 8, 32, v16, a3[2], a4, v17, v18, v19, v20);
  v26 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 9, 32, v21, a3[3], a4, v22, v23, v24, v25);
  v31 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 32, v26, a3[4], a4, v27, v28, v29, v30);
  v36 = v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 17, 32, v31, a3[5], a4, v32, v33, v34, v35);
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 24, 32, v36, a3[6], a4, v37, v38, v39, v40);
  v46 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 25, 32, v36 + v41, v46, a4, v42, v43, v44, v45);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 299) <= 0xFFFFFFFFFFFFFEB7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 40;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}