uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 91) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 6;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v4 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      v12 = 16 * (v13 & 0x3F);
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 27 >> 31) + 8) | v12;
    if (v12 == 1008)
    {
      v18 = 1023;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 512 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 91) < 0xFFFFFFFFFFFFFF9FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 512 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 1008)
        {
          v10 = 1023;
        }

        else
        {
          v10 |= (v10 << 27 >> 31) + 8;
        }
      }

      goto LABEL_3;
    }

    v20 = 0;
    v21 = 0;
    v22 = 6;
    do
    {
      v23 = 64 - v9;
      if (64 - v9 >= v22)
      {
        v23 = v22;
      }

      v20 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v23)) << v21;
      v21 += v23;
      v24 = v23 + v9;
      v4 += v24 >> 6;
      v9 = v24 & 0x3F;
      v22 -= v23;
    }

    while (v22);
    v10 = 16 * (v20 & 0x3F);
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    result = v10 ^ v8;
    *(a2 + 8 * v3++ + 4) = result;
  }

  while (v3 != 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 & 7;
  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 95) < 0xFFFFFFFFFFFFFF9FLL)
    {
      v11 = 0;
LABEL_12:
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 2;
    do
    {
      v154 = 64 - v8;
      if (64 - v8 >= v153)
      {
        v154 = v153;
      }

      v151 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v154)) << v152;
      v152 += v154;
      v11 += (v154 + v8) >> 6;
      v8 = (v154 + v8) & 0x3F;
      v153 -= v154;
    }

    while (v153);
    v155 = v151 & 3;
    if (v155 > 1)
    {
      v12 = 0;
      if (v155 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      if (!v155)
      {
        goto LABEL_12;
      }

      v13 = 0;
      v12 = 1023;
    }

LABEL_13:
    v14 = 8;
    v170 = v13;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 + 2;
  v14 = 6;
  v170 = v10 + 2;
  if (v9)
  {
LABEL_9:
    v162 = 0;
    v15 = v9 + 2;
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 - v4 + (v11 << 6) - 95) < 0xFFFFFFFFFFFFFF9FLL)
  {
    v14 += 2;
LABEL_16:
    v162 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v156 = 0;
  v157 = 0;
  v158 = 2;
  do
  {
    v159 = 64 - v8;
    if (64 - v8 >= v158)
    {
      v159 = v158;
    }

    v156 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v159)) << v157;
    v157 += v159;
    v160 = v159 + v8;
    v11 += v160 >> 6;
    v8 = v160 & 0x3F;
    v158 -= v159;
  }

  while (v158);
  v14 += 2;
  v161 = v156 & 3;
  if (v161 > 1)
  {
    v162 = 0;
    if (v161 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    if (!v161)
    {
      goto LABEL_16;
    }

    v15 = 0;
    v162 = 1023;
  }

LABEL_17:
  v171 = v15;
  v17 = v15 >= v13;
  v18 = v15 < v13;
  v19 = v15;
  v20 = dword_29D2F3370[10 * v15 + 6];
  v167 = dword_29D2F3370[10 * v13 + 6];
  v16 = v167;
  v168 = v20;
  v169[0] = v167;
  v169[1] = v20;
  if (*(&v170 + (v15 >= v13)) == *(&v170 + (v15 < v13)))
  {
    v21 = v167;
  }

  else
  {
    v22 = v169[v15 < v13];
    v21 = v167;
    if (v22 >= 1)
    {
      *(&v167 + v18) = 0;
      *(&v167 + v17) += v22;
      v21 = v167;
    }
  }

  v23 = kDQuadParamTable;
  v24 = &kDQuadParamTable[10 * v13];
  v25 = v24[164] + 1;
  v26 = v24[165];
  v27 = v26 + 1;
  v28 = v21 - v16;
  if (v28 >= 0)
  {
    if (!v28)
    {
      goto LABEL_28;
    }

    v27 += v28;
    goto LABEL_24;
  }

  v29 = &kDQuadParamTable[10 * v13];
  if (v29[167] < -v28)
  {
    if (!v29[168])
    {
      v28 = -1;
      v27 = v26;
LABEL_24:
      v25 += v28;
      goto LABEL_28;
    }

    v27 = v26;
  }

LABEL_28:
  if (v25 >= 0xA)
  {
    v30 = 10;
  }

  else
  {
    v30 = v25;
  }

  if (v26)
  {
    v31 = 10;
  }

  else
  {
    v31 = 0;
  }

  if (v31 >= v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = v31;
  }

  v33 = &kDQuadParamTable[10 * v19];
  v34 = v33[164] + 1;
  v35 = v33[165];
  LODWORD(v36) = v35 + 1;
  v37 = v168 - v20;
  if (v37 < 0)
  {
    v38 = -v37;
    v39 = &kDQuadParamTable[10 * v19];
    if (v39[167] >= v38)
    {
      goto LABEL_44;
    }

    if (v39[168])
    {
      LODWORD(v36) = v35;
      goto LABEL_44;
    }

    v37 = -1;
    LODWORD(v36) = v35;
    goto LABEL_40;
  }

  if (v37)
  {
    LODWORD(v36) = v37 + v36;
LABEL_40:
    v34 += v37;
  }

LABEL_44:
  if (v34 >= 0xA)
  {
    v40 = 10;
  }

  else
  {
    v40 = v34;
  }

  if (v35)
  {
    v41 = 10;
  }

  else
  {
    v41 = 0;
  }

  if (v41 >= v36)
  {
    v36 = v36;
  }

  else
  {
    v36 = v41;
  }

  if (v13)
  {
    v42 = 0;
    if (v25 && (v8 - v4 + (v11 << 6) + v30) <= 0x60)
    {
      v42 = 0;
      v43 = 0;
      v44 = v30;
      do
      {
        v45 = 64 - v8;
        if (64 - v8 >= v44)
        {
          v45 = v44;
        }

        v42 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v45)) << v43;
        v43 += v45;
        v46 = v45 + v8;
        v11 += v46 >> 6;
        v8 = v46 & 0x3F;
        v44 -= v45;
      }

      while (v44);
    }

    v12 = v42 << (10 - v30);
    v14 += v30;
  }

  if (v19)
  {
    v47 = 0;
    if (v34 && (v8 - v4 + (v11 << 6) + v40) <= 0x60)
    {
      v47 = 0;
      v48 = 0;
      v49 = v40;
      do
      {
        v50 = 64 - v8;
        if (64 - v8 >= v49)
        {
          v50 = v49;
        }

        v47 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v50)) << v48;
        v48 += v50;
        v51 = v50 + v8;
        v11 += v51 >> 6;
        v8 = v51 & 0x3F;
        v49 -= v50;
      }

      while (v49);
    }

    v162 = v47 << (10 - v40);
    v14 += v40;
  }

  v163 = 0;
  v164 = 0;
  if (v32)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x60)
    {
      v52 = 0;
      v53 = 0;
      v54 = 3;
      do
      {
        v55 = 64 - v8;
        if (64 - v8 >= v54)
        {
          v55 = v54;
        }

        v52 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v55)) << v53;
        v53 += v55;
        v56 = v55 + v8;
        v11 += v56 >> 6;
        v8 = v56 & 0x3F;
        v54 -= v55;
      }

      while (v54);
    }

    else
    {
      v52 = 0;
    }

    v164 = v52;
    v14 += 3;
  }

  if (v36)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x60)
    {
      v57 = 0;
      v58 = 0;
      v59 = 3;
      do
      {
        v60 = 64 - v8;
        if (64 - v8 >= v59)
        {
          v60 = v59;
        }

        v57 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v60)) << v58;
        v58 += v60;
        v61 = v60 + v8;
        v11 += v61 >> 6;
        v8 = v61 & 0x3F;
        v59 -= v60;
      }

      while (v59);
    }

    else
    {
      v57 = 0;
    }

    v163 = v57;
    v14 += 3;
  }

  v62 = 0;
  v63 = a3 & 0xFFFFFFFD;
  v64 = 96 - v14;
  v65 = (96 - v14) / 7u;
  v66 = (v8 | (v11 << 6)) + v64 % 7;
  v166 = 0;
  memset(v165, 0, sizeof(v165));
  do
  {
    v68 = v66 >> 6;
    v69 = v66 & 0x3F;
    if (v32)
    {
      if (v69 - v4 + (v66 & 0xFFFFFFFFFFFFFFC0) + v32 <= 0x60)
      {
        v70 = 0;
        v71 = 0;
        v72 = v32;
        do
        {
          v73 = 64 - v69;
          if (64 - v69 >= v72)
          {
            v73 = v72;
          }

          v70 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v73)) << v71;
          v71 += v73;
          v74 = v73 + v69;
          v68 += v74 >> 6;
          v69 = v74 & 0x3F;
          v72 -= v73;
        }

        while (v72);
      }

      else
      {
        v70 = 0;
      }

      *(v165 + v62) = v70;
    }

    if (v36)
    {
      if (v69 - v4 + (v68 << 6) + v36 <= 0x60)
      {
        v75 = 0;
        v76 = 0;
        v77 = v36;
        do
        {
          v78 = 64 - v69;
          if (64 - v69 >= v77)
          {
            v78 = v77;
          }

          v75 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v78)) << v76;
          v76 += v78;
          v79 = v78 + v69;
          v68 += v79 >> 6;
          v69 = v79 & 0x3F;
          v77 -= v78;
        }

        while (v77);
      }

      else
      {
        v75 = 0;
      }

      *(&v165[1] + v62 + 3) = v75;
      v67 = v36 + v32;
    }

    else
    {
      v67 = v32;
    }

    v66 = (v69 | (v68 << 6)) + v65 - v67;
    ++v62;
  }

  while (v62 != 7);
  v80 = 0;
  v81 = &v170;
  v82 = &v164;
  result = 0x1000003FFLL;
  v84 = 1;
  v85 = v165;
  v86 = v32;
  do
  {
    v89 = v84;
    v90 = *&v23[10 * *v81 + 162];
    if (v90 >> v86 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v90 >> v86;
    }

    v92 = v91 >> 1;
    v93 = (1 << (10 - v30)) >> 1;
    if (v91 >> 1 < v93)
    {
      v93 = v91 >> 1;
    }

    v94 = v12;
    v95 = 512 - v12;
    if (v12)
    {
      v96 = v93;
    }

    else
    {
      v96 = 0;
    }

    v97 = v12 == 512;
    v98 = (a2 + 4 * v80);
    if (v86)
    {
      v99 = v23;
      v100 = v90 + v94;
      v101 = -1 << v86;
      v102 = *v82;
      v103 = v95 / v91;
      if (!*v82)
      {
        v107 = 0;
        v106 = v96;
        v105 = v97;
        goto LABEL_145;
      }

      v104 = *v85;
      v105 = v103 == v104;
      if (v94 | v104)
      {
        if (v100 >= 0x400 && (v101 ^ v104) == -1)
        {
          v107 = 1;
          v106 = 1023;
LABEL_145:
          v110 = v106 + v94;
          if (a3 != 4 || (v111 = 1023, (v110 | 0x80000000) >> 22 != 1022))
          {
            if (v110 >= 0x400)
            {
              v111 = 1023;
            }

            else
            {
              v111 = v110;
            }
          }

          v112 = v111 ^ 0x200;
          if (v105)
          {
            v112 = 0;
          }

          if (v63 != 1)
          {
            v112 = v111;
          }

          *(a2 + 4 * v80) = v112;
          if (v102 == 1)
          {
            v113 = v96;
            v114 = v97;
          }

          else
          {
            v115 = *(v165 + 7 * v80 + v107);
            v114 = v103 == v115;
            if (v94 | v115)
            {
              if (v100 >= 0x400 && (v101 ^ v115) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v113 = 1023;
              }

              else
              {
                v113 = v92 + v91 * v115;
              }
            }

            else
            {
              v113 = 0;
            }

            ++v107;
          }

          v116 = v113 + v94;
          if (a3 != 4 || (v117 = 1023, (v116 | 0x80000000) >> 22 != 1022))
          {
            if (v116 >= 0x400)
            {
              v117 = 1023;
            }

            else
            {
              v117 = v116;
            }
          }

          v118 = v117 ^ 0x200;
          if (v114)
          {
            v118 = 0;
          }

          if (v63 != 1)
          {
            v118 = v117;
          }

          v98[2] = v118;
          if (v102 == 2)
          {
            v119 = v96;
            v120 = v97;
          }

          else
          {
            v121 = *(v165 + 7 * v80 + v107);
            v120 = v103 == v121;
            if (v94 | v121)
            {
              if (v100 >= 0x400 && (v101 ^ v121) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v119 = 1023;
              }

              else
              {
                v119 = v92 + v91 * v121;
              }
            }

            else
            {
              v119 = 0;
            }

            ++v107;
          }

          v122 = v119 + v94;
          if (a3 != 4 || (v123 = 1023, (v122 | 0x80000000) >> 22 != 1022))
          {
            if (v122 >= 0x400)
            {
              v123 = 1023;
            }

            else
            {
              v123 = v122;
            }
          }

          v124 = v123 ^ 0x200;
          if (v120)
          {
            v124 = 0;
          }

          if (v63 != 1)
          {
            v124 = v123;
          }

          v98[4] = v124;
          if (v102 == 3)
          {
            v125 = v96;
            v126 = v97;
          }

          else
          {
            v127 = *(v165 + 7 * v80 + v107);
            v126 = v103 == v127;
            if (v94 | v127)
            {
              if (v100 >= 0x400 && (v101 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 1023;
              }

              else
              {
                v125 = v92 + v91 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v107;
          }

          v128 = v125 + v94;
          if (a3 != 4 || (v129 = 1023, (v128 | 0x80000000) >> 22 != 1022))
          {
            if (v128 >= 0x400)
            {
              v129 = 1023;
            }

            else
            {
              v129 = v128;
            }
          }

          v130 = v129 ^ 0x200;
          if (v126)
          {
            v130 = 0;
          }

          if (v63 != 1)
          {
            v130 = v129;
          }

          v98[6] = v130;
          if (v102 == 4)
          {
            v131 = v96;
            v132 = v97;
          }

          else
          {
            v133 = *(v165 + 7 * v80 + v107);
            v132 = v103 == v133;
            if (v94 | v133)
            {
              if (v100 >= 0x400 && (v101 ^ v133) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v131 = 1023;
              }

              else
              {
                v131 = v92 + v91 * v133;
              }
            }

            else
            {
              v131 = 0;
            }

            ++v107;
          }

          v134 = v131 + v94;
          if (a3 != 4 || (v135 = 1023, (v134 | 0x80000000) >> 22 != 1022))
          {
            if (v134 >= 0x400)
            {
              v135 = 1023;
            }

            else
            {
              v135 = v134;
            }
          }

          v136 = v135 ^ 0x200;
          if (v132)
          {
            v136 = 0;
          }

          if (v63 != 1)
          {
            v136 = v135;
          }

          v98[8] = v136;
          if (v102 == 5)
          {
            v137 = v96;
            v138 = v97;
          }

          else
          {
            v139 = *(v165 + 7 * v80 + v107);
            v138 = v103 == v139;
            if (v94 | v139)
            {
              if (v100 >= 0x400 && (v101 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v137 = 1023;
              }

              else
              {
                v137 = v92 + v91 * v139;
              }
            }

            else
            {
              v137 = 0;
            }

            ++v107;
          }

          v140 = v137 + v94;
          if (a3 != 4 || (v141 = 1023, (v140 | 0x80000000) >> 22 != 1022))
          {
            if (v140 >= 0x400)
            {
              v141 = 1023;
            }

            else
            {
              v141 = v140;
            }
          }

          v142 = v141 ^ 0x200;
          if (v138)
          {
            v142 = 0;
          }

          if (v63 != 1)
          {
            v142 = v141;
          }

          v98[10] = v142;
          if (v102 == 6)
          {
            v143 = v96;
            v144 = v97;
          }

          else
          {
            v145 = *(v165 + 7 * v80 + v107);
            v144 = v103 == v145;
            if (v94 | v145)
            {
              if (v100 >= 0x400 && (v101 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v143 = 1023;
              }

              else
              {
                v143 = v92 + v91 * v145;
              }
            }

            else
            {
              v143 = 0;
            }

            ++v107;
          }

          v146 = v143 + v94;
          if (a3 != 4 || (v147 = 1023, (v146 | 0x80000000) >> 22 != 1022))
          {
            if (v146 >= 0x400)
            {
              v147 = 1023;
            }

            else
            {
              v147 = v146;
            }
          }

          v148 = v147 ^ 0x200;
          if (v144)
          {
            v148 = 0;
          }

          if (v63 != 1)
          {
            v148 = v147;
          }

          v98[12] = v148;
          if (v102 != 7)
          {
            v149 = *(v165 + 7 * v80 + v107);
            v97 = v103 == v149;
            if (v94 | v149)
            {
              if (v100 >= 0x400 && (v101 ^ v149) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v96 = 1023;
              }

              else
              {
                v96 = v92 + v91 * v149;
              }
            }

            else
            {
              v96 = 0;
            }
          }

          v150 = v96 + v94;
          if (a3 != 4 || (LODWORD(v87) = 1023, (v150 | 0x80000000) >> 22 != 1022))
          {
            if (v150 >= 0x400)
            {
              LODWORD(v87) = 1023;
            }

            else
            {
              LODWORD(v87) = v96 + v94;
            }
          }

          v88 = v87 ^ 0x200;
          if (v97)
          {
            v88 = 0;
          }

          if (v63 == 1)
          {
            LODWORD(v87) = v88;
          }

          v23 = v99;
          goto LABEL_113;
        }

        v106 = v92 + v91 * v104;
      }

      else
      {
        v106 = 0;
      }

      v107 = 1;
      goto LABEL_145;
    }

    if (a3 == 4)
    {
      if ((v94 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v87) = 1023;
      }

      else
      {
        v87 = 4286578687;
        if ((v94 & 0xFFC00000) != 0xFF800000)
        {
          v87 = v94;
        }

        if (v87 >= 0x400)
        {
          LODWORD(v87) = 1023;
        }
      }
    }

    else
    {
      if (v94 >= 0x3FF)
      {
        LODWORD(v87) = 1023;
      }

      else
      {
        LODWORD(v87) = v94;
      }

      v109 = v87 ^ 0x200;
      if (v91 > v95)
      {
        v109 = 0;
      }

      if (v63 == 1)
      {
        LODWORD(v87) = v109;
      }
    }

    *v98 = v87;
    v98[2] = v87;
    v98[4] = v87;
    v98[6] = v87;
    v98[8] = v87;
    v98[10] = v87;
    v98[12] = v87;
LABEL_113:
    v84 = 0;
    v98[14] = v87;
    v82 = &v163;
    v85 = &v165[1] + 3;
    v12 = v162;
    v86 = v36;
    LOBYTE(v30) = v40;
    v81 = &v171;
    v80 = 1;
  }

  while ((v89 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v528 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v10 = &a1->i8[a2];
    *v10 = 0u;
    *(v10 + 1) = 0u;
    v11 = &a1->i8[2 * a2];
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v12 = &a1->i8[2 * a2 + a2];
LABEL_6:
    *v12 = v9;
    *(v12 + 1) = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
    }

    v474 = v514;
    v475 = v512;
    v476 = v515;
    v477 = v513;
    v17 = v516;
    v18 = v517;
    v19 = v519;
    v478 = v518;
    v470 = v522;
    v471 = v520;
    v472 = v523;
    v473 = v521;
    v21 = v524;
    v20 = v525;
    v23 = v526;
    v22 = v527;
    v24 = a3 + 12;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
    }

    v508 = v527;
    v509 = v519;
    v506 = v525;
    v507 = v517;
    v504 = v526;
    v505 = v518;
    v502 = v524;
    v503 = v516;
    v500 = v523;
    v501 = v515;
    v498 = v521;
    v499 = v513;
    v496 = v522;
    v497 = v514;
    v494 = v520;
    v495 = v512;
    v492 = v20;
    v493 = v22;
    v490 = v23;
    v491 = v19;
    v489 = v21;
    v479 = v18;
    v480 = v17;
    v25 = v5;
    v26 = a3 + 24;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
    }

    v27 = v513;
    v469 = v512;
    v28 = v514;
    v29 = v515;
    v483 = v518;
    v484 = v516;
    v488 = v519;
    v30 = v520;
    v31 = v521;
    v33 = v522;
    v32 = v523;
    v485 = v525;
    v486 = v517;
    v481 = v524;
    v482 = v526;
    v487 = v527;
    v34 = a3 + 36;
    if ((v25 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
    }

    v35.i16[0] = v475;
    v35.i16[1] = v474;
    v35.i16[2] = v471;
    v36.i16[0] = v477;
    v35.i16[3] = v470;
    v36.i16[1] = v476;
    v36.i16[2] = v473;
    v36.i16[3] = v472;
    v37.i16[0] = v469;
    v37.i16[1] = v28;
    v38.i16[0] = v27;
    v37.i16[2] = v30;
    v37.i16[3] = v33;
    v38.i16[1] = v29;
    v38.i16[2] = v31;
    v38.i16[3] = v32;
    v39.i16[0] = v479;
    v40.i16[0] = v480;
    v40.i16[1] = v478;
    v41.i16[0] = v512;
    v41.i16[1] = v514;
    v41.i16[2] = v520;
    v41.i16[3] = v522;
    v42.i16[0] = v513;
    v42.i16[1] = v515;
    v42.i16[2] = v521;
    v42.i16[3] = v523;
    v43.i16[0] = v516;
    v43.i16[1] = v518;
    v43.i16[2] = v524;
    v43.i16[3] = v526;
    v40.i16[2] = v489;
    v40.i16[3] = v490;
    v39.i16[1] = v491;
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x16uLL), vmovl_u16(vshl_n_s16(v35, 6uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x16uLL), vmovl_u16(vshl_n_s16(v37, 6uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x16uLL), vmovl_u16(vshl_n_s16(v40, 6uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 6uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x16uLL), v45);
    v45.i16[0] = v517;
    v45.i16[1] = v519;
    v45.i16[2] = v525;
    v45.i16[3] = v527;
    v47 = &a1->i8[a2];
    *v47 = v44;
    v47[1] = v46;
    v44.i16[0] = v495;
    v44.i16[1] = v497;
    v44.i16[2] = v494;
    v44.i16[3] = v496;
    v48 = &a1->i8[a2 + a2];
    v46.i16[0] = v499;
    v46.i16[1] = v501;
    v46.i16[2] = v498;
    v46.i16[3] = v500;
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x16uLL), vmovl_u16(vshl_n_s16(*v44.i8, 6uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49 = (v48 + a2);
    v41.i16[0] = v503;
    v41.i16[1] = v505;
    v41.i16[2] = v502;
    v41.i16[3] = v504;
    v42.i16[0] = v507;
    v42.i16[1] = v509;
    v42.i16[2] = v506;
    v42.i16[3] = v508;
    v8 = 48;
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x16uLL), vmovl_u16(vshl_n_s16(v43, 6uLL)));
    return v8;
  }

  switch(a4)
  {
    case 0x7Fu:
      v163 = *a3;
      v164 = *(a3 + 16);
      v165 = *(a3 + 32);
      v166 = *(a3 + 48);
      v167 = *(a3 + 64);
      v168 = *(a3 + 80);
      v169 = *(a3 + 96);
      v170 = *(a3 + 112);
      v171 = &a1->i8[a2];
      *a1 = vzip1q_s64(*a3, v164);
      a1[1] = vzip1q_s64(v167, v168);
      v172 = (a1 + 2 * a2);
      *v171 = vzip2q_s64(v163, v164);
      v171[1] = vzip2q_s64(v167, v168);
      *v172 = vzip1q_s64(v165, v166);
      v172[1] = vzip1q_s64(v169, v170);
      v173 = (v172 + a2);
      *v173 = vzip2q_s64(v165, v166);
      v173[1] = vzip2q_s64(v169, v170);
      return 128;
    case 0x4Fu:
      v51.i64[0] = 0xA000A000A000ALL;
      v51.i64[1] = 0xA000A000A000ALL;
      v52 = vmovl_u16(*&vpaddq_s16(v51, v51));
      v53 = vpaddq_s32(v52, v52).u64[0];
      v54.i64[0] = v53;
      v54.i64[1] = HIDWORD(v53);
      v55 = v54;
      v56 = vaddvq_s64(v54);
      v57 = 0uLL;
      if (v56 > 0x80)
      {
        v156 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v155 = 0uLL;
        v154 = 0uLL;
        v162 = 0uLL;
        v161 = 0uLL;
      }

      else
      {
        v58 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v59 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
        v60.i64[0] = v59.u32[0];
        v60.i64[1] = v59.u32[1];
        v61 = v60;
        v62 = vzip1q_s64(0, v55);
        v63 = 8 * (a3 & 7);
        v64 = v56 + v63;
        v65 = vaddq_s64(v62, vdupq_n_s64(v63));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v65)));
        if (v56 + v63 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v58[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v58[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v66);
        }

        v67 = vnegq_s64(v61);
        v68 = vshlq_u64(v66, v67);
        v69 = v64 & 0x3F;
        v70 = (v58 + 8 * (v64 >> 6));
        v71 = vaddq_s64(v62, vdupq_n_s64(v69));
        v72 = v56 + v64;
        v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
        if (v56 + v69 >= 0x81)
        {
          v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
        }

        v74 = vzip2q_s64(v66, v68);
        v75 = vzip1q_s64(v66, v68);
        v76 = vshlq_u64(v73, v67);
        v77 = vzip2q_s64(v73, v76);
        v78 = vzip1q_s64(v73, v76);
        v79 = v72 & 0x3F;
        v80 = (v58 + 8 * (v72 >> 6));
        v81 = vaddq_s64(v62, vdupq_n_s64(v79));
        v82 = v56 + v72;
        v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v81)));
        if (v56 + v79 >= 0x81)
        {
          v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v83);
        }

        v84 = vuzp1q_s32(v75, v74);
        v85 = vuzp1q_s32(v78, v77);
        v86 = vshlq_u64(v83, v67);
        v87 = vuzp1q_s32(vzip1q_s64(v83, v86), vzip2q_s64(v83, v86));
        v88 = v82 & 0x3F;
        v89 = (v58 + 8 * (v82 >> 6));
        v90 = vaddq_s64(v62, vdupq_n_s64(v88));
        v91 = v56 + v82;
        v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v90)));
        if (v56 + v88 >= 0x81)
        {
          v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
        }

        v93.i64[0] = 0x1000100010001;
        v93.i64[1] = 0x1000100010001;
        v94 = vshrq_n_u32(v84, 0xAuLL);
        v95 = vshrq_n_u32(v85, 0xAuLL);
        v96 = vshrq_n_u32(v87, 0xAuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xAuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xAuLL);
        v106.i64[0] = -1;
        v106.i64[1] = -1;
        v107 = vzip2q_s32(v84, v94);
        v108 = vzip1q_s32(v84, v94);
        v109 = vzip2q_s32(v85, v95);
        v110 = vzip1q_s32(v85, v95);
        v111 = vzip2q_s32(v87, v96);
        v112 = vzip1q_s32(v87, v96);
        v113 = vzip2q_s32(v98, v99);
        v114 = vzip1q_s32(v98, v99);
        v115 = vshlq_u64(v104, v67);
        v116 = vuzp1q_s32(vzip1q_s64(v104, v115), vzip2q_s64(v104, v115));
        v117 = vshrq_n_u32(v116, 0xAuLL);
        v118 = vzip2q_s32(v116, v117);
        v119 = vzip1q_s32(v116, v117);
        v120 = (v58 + 8 * (v103 >> 6));
        v121 = vaddq_s64(v62, vdupq_n_s64(v103 & 0x3F));
        v122 = v56 + v103;
        v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v121)));
        if (v56 + (v103 & 0x3F) >= 0x81)
        {
          v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v123);
        }

        v124 = vaddq_s16(v105, v106);
        v125 = vuzp1q_s16(v108, v107);
        v126 = vuzp1q_s16(v110, v109);
        v127 = vuzp1q_s16(v112, v111);
        v128 = vuzp1q_s16(v114, v113);
        v129 = vuzp1q_s16(v119, v118);
        v130 = vshlq_u64(v123, v67);
        v131 = vuzp1q_s32(vzip1q_s64(v123, v130), vzip2q_s64(v123, v130));
        v132 = vshrq_n_u32(v131, 0xAuLL);
        v133 = vuzp1q_s16(vzip1q_s32(v131, v132), vzip2q_s32(v131, v132));
        v134 = v56 + v122;
        v135 = v122 & 0x3F;
        v136 = vaddq_s64(v62, vdupq_n_s64(v135));
        v137 = (v58 + 8 * (v122 >> 6));
        v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
        if (v56 + v135 >= 0x81)
        {
          v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
        }

        v139 = vandq_s8(v124, v125);
        v140 = vandq_s8(v124, v126);
        v141 = vandq_s8(v124, v127);
        v142 = vandq_s8(v124, v128);
        v143 = vandq_s8(v124, v129);
        v144 = vandq_s8(v124, v133);
        v145 = vshlq_u64(v138, v67);
        v146 = vuzp1q_s32(vzip1q_s64(v138, v145), vzip2q_s64(v138, v145));
        v147 = vshrq_n_u32(v146, 0xAuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 6uLL);
        v153 = vshlq_n_s16(v140, 6uLL);
        v154 = vshlq_n_s16(v141, 6uLL);
        v155 = vshlq_n_s16(v142, 6uLL);
        v57 = vshlq_n_s16(v143, 6uLL);
        v156 = vshlq_n_s16(v144, 6uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xAuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 6uLL);
        v162 = vshlq_n_s16(v160, 6uLL);
      }

      v224 = &a1->i8[a2];
      *a1 = vzip1q_s64(v152, v153);
      a1[1] = vzip1q_s64(v57, v156);
      v225 = (a1 + 2 * a2);
      *v224 = vzip2q_s64(v152, v153);
      v224[1] = vzip2q_s64(v57, v156);
      *v225 = vzip1q_s64(v154, v155);
      v225[1] = vzip1q_s64(v161, v162);
      v226 = (v225 + a2);
      *v226 = vzip2q_s64(v154, v155);
      v226[1] = vzip2q_s64(v161, v162);
      return 80;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 12) & 0xFFC00000 | ((*a3 & 0x3FF) << 6));
      *a1 = v13;
      a1[1] = v13;
      v14 = (a1 + a2);
      *v14 = v13;
      v14[1] = v13;
      v15 = (a1 + 2 * a2);
      *v15 = v13;
      v15[1] = v13;
      v16 = (a1 + 2 * a2 + a2);
      *v16 = v13;
      v16[1] = v13;
      return 3;
    default:
      v174 = 8 * (a3 & 7);
      v175 = a3 & 0xFFFFFFFFFFFFFFF8;
      v176 = v174 + 18;
      v177 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v174;
      if (v174 >= 0x2F)
      {
        v177 |= *(v175 + 8) << (-8 * (a3 & 7u));
      }

      v178.i32[0] = v177;
      v178.i32[1] = v177 >> 5;
      v179 = vand_s8(v178, 0x1F0000001FLL);
      v180 = vuzp1_s16(v179, v179);
      v181.i32[0] = v177 >> 10;
      v181.i32[1] = v177 >> 14;
      v182 = vuzp1_s16(vadd_s32(vand_s8(v181, 0xF0000000FLL), 0x100000001), v180);
      v183 = v174 + 38;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x2D)
      {
        v186 |= v185[1] << -v184;
      }

      v187 = vdupq_lane_s32(v180, 0);
      v188 = vdupq_lane_s32(v182, 0);
      v189 = (8 * (a3 & 7)) | 0x180;
      v190.i64[0] = 0x3000300030003;
      v190.i64[1] = 0x3000300030003;
      v191 = vandq_s8(v187, v190);
      v192 = vbicq_s8(v188, vceqq_s16(v191, v190));
      v190.i64[0] = 0x202020202020202;
      v190.i64[1] = 0x202020202020202;
      v193 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v187.i8, 0x4000400040004)))), v190);
      if (vmaxvq_s8(v193) < 1)
      {
        v202 = 0;
        v223.i64[0] = -1;
        v223.i64[1] = -1;
        v219 = v192;
        v218 = v192;
        v217 = v192;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v216 = v192;
        v221.i64[0] = -1;
        v221.i64[1] = -1;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
      }

      else
      {
        v194 = vmovl_u8(*&vpaddq_s8(v193, v193));
        v195 = vmovl_u16(*&vpaddq_s16(v194, v194));
        v196 = vpaddq_s32(v195, v195).u64[0];
        v197.i64[0] = v196;
        v197.i64[1] = HIDWORD(v196);
        v198 = v197;
        v199 = vaddvq_s64(v197);
        v200 = v183 + v199;
        v201 = v199 <= 0x80 && v189 >= v200;
        v202 = !v201;
        v203 = 0uLL;
        if (v201)
        {
          v204 = v183 & 0x3E;
          v205 = vaddq_s64(vdupq_n_s64(v204), vzip1q_s64(0, v198));
          v206 = (v175 + ((v183 >> 3) & 8));
          v203 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v206, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v205)), vshlq_u64(vdupq_lane_s64(v206->i64[0], 0), vnegq_s64(v205)));
          if (v204 + v199 >= 0x81)
          {
            v203 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v206[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v205)), vshlq_u64(vdupq_laneq_s64(v206[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v205))), v203);
          }

          v183 = v200;
        }

        v207 = vzip1_s32(*v195.i8, *&vextq_s8(v195, v195, 8uLL));
        v208.i64[0] = v207.u32[0];
        v208.i64[1] = v207.u32[1];
        v209 = vshlq_u64(v203, vnegq_s64(v208));
        v210 = vuzp1q_s32(vzip1q_s64(v203, v209), vzip2q_s64(v203, v209));
        v211 = vshlq_u32(v210, vnegq_s32((*&v194 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v212 = vuzp1q_s16(vzip1q_s32(v210, v211), vzip2q_s32(v210, v211));
        v210.i64[0] = 0x101010101010101;
        v210.i64[1] = 0x101010101010101;
        *v213.i8 = vand_s8(vadd_s8(*&vshlq_s8(v210, v193), -1), vmovn_s16(vzip1q_s16(v212, vshlq_u16(v212, vnegq_s16(vmovl_u8(vuzp1_s8(*v193.i8, *v187.i8)))))));
        v213.i64[1] = v213.i64[0];
        *v213.i8 = vqtbl1_s8(v213, 0x703060205010400);
        *v212.i8 = vdup_lane_s16(*v213.i8, 0);
        *v210.i8 = vdup_lane_s16(*v213.i8, 1);
        v214 = vdup_lane_s16(*v213.i8, 2);
        v215 = vdup_lane_s16(*v213.i8, 3);
        v216 = vsubw_s8(v192, *v212.i8);
        v217 = vsubw_s8(v192, *v210.i8);
        v218 = vsubw_s8(v192, v214);
        v219 = vsubw_s8(v192, v215);
        v220 = vmovl_s8(vceqz_s8(*v212.i8));
        v221 = vmovl_s8(vceqz_s8(*v210.i8));
        v222 = vmovl_s8(vceqz_s8(v214));
        v223 = vmovl_s8(vceqz_s8(v215));
      }

      v227.i64[0] = 0x8000800080008;
      v227.i64[1] = 0x8000800080008;
      v228 = 0uLL;
      v229 = vandq_s8(vextq_s8(vtstq_s16(v187, v227), 0, 0xCuLL), v192);
      v230 = vmovl_u16(*&vpaddq_s16(v229, v229));
      v231 = vpaddq_s32(v230, v230).u64[0];
      v232.i64[0] = v231;
      v232.i64[1] = HIDWORD(v231);
      v233 = v232;
      v234 = vaddvq_s64(v232);
      v235 = v183 + v234;
      if (v234 <= 0x80 && v189 >= v235)
      {
        v237 = v183 & 0x3F;
        v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v233));
        v239 = (v175 + 8 * (v183 >> 6));
        v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
        if (v237 + v234 >= 0x81)
        {
          v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
        }

        v183 = v235;
      }

      else
      {
        v202 = 1;
      }

      v240 = v187.i8[0] & 3;
      if (v240 == 2)
      {
        v241 = v189 < v183 + 8;
        v242 = v183 + 16;
        if (v189 >= v183 + 8)
        {
          v183 += 8;
        }

        else
        {
          v242 = v183 + 8;
        }

        if (v189 < v242)
        {
          v243 = 1;
        }

        else
        {
          v183 = v242;
          v243 = v241;
        }

        v202 |= v243;
      }

      v244 = 0uLL;
      v245 = vextq_s8(0, v216, 0xCuLL);
      v246 = vmovl_u16(*&vpaddq_s16(v245, v245));
      v247 = vpaddq_s32(v246, v246).u64[0];
      v248.i64[0] = v247;
      v248.i64[1] = HIDWORD(v247);
      v249 = v248;
      v250 = vaddvq_s64(v248);
      v251 = v183 + v250;
      if (v250 <= 0x80 && v189 >= v251)
      {
        v254 = v183 & 0x3F;
        v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v249));
        v256 = (v175 + 8 * (v183 >> 6));
        v253 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
        if (v254 + v250 >= 0x81)
        {
          v253 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v253);
        }

        v183 = v251;
      }

      else
      {
        v202 = 1;
        v253 = 0uLL;
      }

      v257 = vmovl_u16(*&vpaddq_s16(v216, v216));
      v258 = vpaddq_s32(v257, v257).u64[0];
      v259.i64[0] = v258;
      v259.i64[1] = HIDWORD(v258);
      v260 = v259;
      v261 = vaddvq_s64(v259);
      v262 = v183 + v261;
      if (v261 <= 0x80 && v189 >= v262)
      {
        v264 = v183 & 0x3F;
        v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v260));
        v266 = (v175 + 8 * (v183 >> 6));
        v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
        if (v264 + v261 >= 0x81)
        {
          v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v244);
        }

        v183 = v262;
      }

      else
      {
        v202 = 1;
      }

      v267 = vmovl_u16(*&vpaddq_s16(v217, v217));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v183 + v271;
      v273 = 0uLL;
      if (v271 <= 0x80 && v189 >= v272)
      {
        v276 = v183 & 0x3F;
        v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
        v278 = (v175 + 8 * (v183 >> 6));
        v275 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
        if (v276 + v271 >= 0x81)
        {
          v275 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v275);
        }

        v183 = v272;
      }

      else
      {
        v202 = 1;
        v275 = 0uLL;
      }

      if (v271 > 0x80 || (v279 = v183 + v271, v189 < v183 + v271))
      {
        v202 = 1;
        v279 = v183;
      }

      else
      {
        v280 = v183 & 0x3F;
        v281 = vaddq_s64(vdupq_n_s64(v280), vzip1q_s64(0, v270));
        v282 = (v175 + 8 * (v183 >> 6));
        v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v282, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v281)), vshlq_u64(vdupq_lane_s64(v282->i64[0], 0), vnegq_s64(v281)));
        if (v280 + v271 >= 0x81)
        {
          v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v282[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v281)), vshlq_u64(vdupq_laneq_s64(v282[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v281))), v273);
        }
      }

      v283 = vmovl_u16(*&vpaddq_s16(v218, v218));
      v284 = vpaddq_s32(v283, v283).u64[0];
      v285.i64[0] = v284;
      v285.i64[1] = HIDWORD(v284);
      v286 = v285;
      v287 = vaddvq_s64(v285);
      v288 = 0uLL;
      if (v287 > 0x80 || (v289 = v279 + v287, v189 < v279 + v287))
      {
        v202 = 1;
        v289 = v279;
        v292 = 0uLL;
      }

      else
      {
        v290 = vaddq_s64(vdupq_n_s64(v279 & 0x3F), vzip1q_s64(0, v286));
        v291 = (v175 + 8 * (v279 >> 6));
        v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
        if ((v279 & 0x3F) + v287 >= 0x81)
        {
          v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v292);
        }
      }

      if (v287 > 0x80 || (v293 = v289 + v287, v189 < v289 + v287))
      {
        v202 = 1;
        v293 = v289;
      }

      else
      {
        v294 = vaddq_s64(vdupq_n_s64(v289 & 0x3F), vzip1q_s64(0, v286));
        v295 = (v175 + 8 * (v289 >> 6));
        v288 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
        if ((v289 & 0x3F) + v287 >= 0x81)
        {
          v288 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v288);
        }
      }

      v296 = vmovl_u16(*&vpaddq_s16(v219, v219));
      v297 = vpaddq_s32(v296, v296).u64[0];
      v298.i64[0] = v297;
      v298.i64[1] = HIDWORD(v297);
      v299 = v298;
      v300 = vaddvq_s64(v298);
      v301 = 0uLL;
      if (v300 > 0x80 || (v302 = v293 + v300, v189 < v293 + v300))
      {
        v202 = 1;
        v302 = v293;
        v306 = 0uLL;
      }

      else
      {
        v303 = v293 & 0x3F;
        v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v299));
        v305 = (v175 + 8 * (v293 >> 6));
        v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
        if (v303 + v300 >= 0x81)
        {
          v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
        }
      }

      if (v300 > 0x80 || (v307 = v302 + v300, v189 < v302 + v300))
      {
        v202 = 1;
        v307 = v302;
      }

      else
      {
        v308 = vaddq_s64(vdupq_n_s64(v302 & 0x3F), vzip1q_s64(0, v299));
        v309 = (v175 + 8 * (v302 >> 6));
        v301 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v309, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v308)), vshlq_u64(vdupq_lane_s64(v309->i64[0], 0), vnegq_s64(v308)));
        if ((v302 & 0x3F) + v300 >= 0x81)
        {
          v301 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v309[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v308)), vshlq_u64(vdupq_laneq_s64(v309[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v308))), v301);
        }
      }

      if ((v202 & 1) != 0 || (v8 = a4 + 1, v189 + 8 * v8 - v307 - 384 >= 9))
      {
        v310 = 0;
        v311 = 0;
        v312 = 8 * (&v512 & 7);
        v313 = 10;
        do
        {
          v314 = 64 - v312;
          if (64 - v312 >= v313)
          {
            v314 = v313;
          }

          *(&v512 + v310) |= ((0xFFFFFFFFFFFFFFFFLL >> v311) & ~(-1 << v314)) << v312;
          v311 += v314;
          v315 = v314 + v312;
          v310 += v315 >> 6;
          v312 = v315 & 0x3F;
          v313 -= v314;
        }

        while (v313);
LABEL_133:
        v8 = 0;
        v316 = &a1->i8[a2];
        v9 = 0uLL;
        *a1 = 0u;
        a1[1] = 0u;
        v317 = &a1->i8[2 * a2];
        *v316 = 0u;
        *(v316 + 1) = 0u;
        v12 = &a1->i8[2 * a2 + a2];
        *v317 = 0u;
        *(v317 + 1) = 0u;
        goto LABEL_6;
      }

      if (v240 == 2)
      {
        v318 = 0;
        v319 = 0;
        v320 = 8 * (&v512 & 7);
        v321 = 10;
        do
        {
          v322 = 64 - v320;
          if (64 - v320 >= v321)
          {
            v322 = v321;
          }

          *(&v512 + v318) |= ((0xFFFFFFFFFFFFFFFFLL >> v319) & ~(-1 << v322)) << v320;
          v319 += v322;
          v323 = v322 + v320;
          v318 += v323 >> 6;
          v320 = v323 & 0x3F;
          v321 -= v322;
        }

        while (v321);
        goto LABEL_133;
      }

      v324 = vzip1_s32(*v230.i8, *&vextq_s8(v230, v230, 8uLL));
      v325 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v326 = vzip1_s32(*v283.i8, *&vextq_s8(v283, v283, 8uLL));
      v327 = vzip1_s32(*v296.i8, *&vextq_s8(v296, v296, 8uLL));
      v328.i64[0] = v324.u32[0];
      v328.i64[1] = v324.u32[1];
      v329 = v328;
      v328.i64[0] = v325.u32[0];
      v328.i64[1] = v325.u32[1];
      v330 = v328;
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v332 = vnegq_s64(v329);
      v333 = vnegq_s64(v330);
      v334 = vnegq_s64(v331);
      v335 = vnegq_s64(v328);
      v336 = vshlq_u64(v228, v332);
      v337 = vshlq_u64(v275, v333);
      v338 = vshlq_u64(v273, v333);
      v339 = vshlq_u64(v292, v334);
      v340 = vshlq_u64(v288, v334);
      v341 = vshlq_u64(v306, v335);
      v342 = vzip2q_s64(v228, v336);
      v343 = vzip1q_s64(v228, v336);
      v344 = vzip2q_s64(v275, v337);
      v345 = vzip1q_s64(v275, v337);
      v346 = vzip2q_s64(v273, v338);
      v347 = vzip1q_s64(v273, v338);
      v348 = vzip2q_s64(v292, v339);
      v349 = vzip1q_s64(v292, v339);
      v350 = vzip2q_s64(v288, v340);
      v351 = vzip1q_s64(v288, v340);
      v352 = vzip2q_s64(v306, v341);
      v353 = vzip1q_s64(v306, v341);
      v354 = vuzp1q_s32(v343, v342);
      v355 = vuzp1q_s32(v345, v344);
      v356 = vuzp1q_s32(v347, v346);
      v343.i64[0] = 0xFFFF0000FFFFLL;
      v343.i64[1] = 0xFFFF0000FFFFLL;
      v357 = vuzp1q_s32(v349, v348);
      v345.i64[0] = 0xFFFF0000FFFFLL;
      v345.i64[1] = 0xFFFF0000FFFFLL;
      v358 = vnegq_s32(vandq_s8(v229, v343));
      v359 = vnegq_s32(vandq_s8(v217, v345));
      v360 = vuzp1q_s32(v351, v350);
      v361 = vuzp1q_s32(v353, v352);
      v362 = vshlq_u32(v354, v358);
      v363 = vshlq_u32(v355, v359);
      v364 = vshlq_u32(v356, v359);
      v359.i64[0] = 0x10001000100010;
      v359.i64[1] = 0x10001000100010;
      v353.i64[0] = 0xF000F000F000FLL;
      v353.i64[1] = 0xF000F000F000FLL;
      v365 = vsubq_s16(v359, v229);
      v366 = vaddq_s16(v229, v353);
      v353.i64[0] = 0x10001000100010;
      v353.i64[1] = 0x10001000100010;
      v367 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v354, v362), vzip2q_s32(v354, v362)), v365);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v368 = vsubq_s16(v353, v217);
      v369 = vaddq_s16(v217, v365);
      v365.i64[0] = 0xFFFF0000FFFFLL;
      v365.i64[1] = 0xFFFF0000FFFFLL;
      v370 = vnegq_s32(vandq_s8(v218, v365));
      v371 = vshlq_s16(v367, v366);
      v372 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v355, v363), vzip2q_s32(v355, v363)), v368), v369);
      v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v356, v364), vzip2q_s32(v356, v364)), v368), v369);
      v374 = vdupq_lane_s32(*v371.i8, 0);
      v375 = vandq_s8(v221, v374);
      v376 = vsubq_s16(v372, v375);
      v377 = vsubq_s16(v373, v375);
      v378 = vshlq_u32(v357, v370);
      v379 = vshlq_u32(v360, v370);
      v380 = vzip2q_s32(v357, v378);
      v381 = vzip1q_s32(v357, v378);
      v382 = vzip2q_s32(v360, v379);
      v383 = vzip1q_s32(v360, v379);
      v379.i64[0] = 0x10001000100010;
      v379.i64[1] = 0x10001000100010;
      v384 = vuzp1q_s16(v383, v382);
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v385 = vsubq_s16(v379, v218);
      v386 = vaddq_s16(v218, v382);
      v382.i64[0] = 0xFFFF0000FFFFLL;
      v382.i64[1] = 0xFFFF0000FFFFLL;
      v387 = vnegq_s32(vandq_s8(v219, v382));
      v388 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v380), v385), v386);
      v389 = vshlq_s16(vshlq_s16(v384, v385), v386);
      v390 = vandq_s8(v222, v374);
      v391 = vsubq_s16(v388, v390);
      v392 = vsubq_s16(v389, v390);
      v393 = vshlq_u32(v361, v387);
      v394 = vzip2q_s32(v361, v393);
      v395 = vzip1q_s32(v361, v393);
      v393.i64[0] = 0x10001000100010;
      v393.i64[1] = 0x10001000100010;
      v396 = vuzp1q_s16(v395, v394);
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v397 = vsubq_s16(v393, v219);
      v398 = vaddq_s16(v219, v394);
      v399 = vshlq_u64(v301, v335);
      v400 = vuzp1q_s32(vzip1q_s64(v301, v399), vzip2q_s64(v301, v399));
      v401 = vshlq_u32(v400, v387);
      v402 = vshlq_s16(vshlq_s16(v396, v397), v398);
      v403 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v400, v401), vzip2q_s32(v400, v401)), v397), v398);
      v404 = vandq_s8(v223, v374);
      v405 = vsubq_s16(v402, v404);
      v406 = vsubq_s16(v403, v404);
      v407 = vzip1_s32(*v246.i8, *&vextq_s8(v246, v246, 8uLL));
      v408 = vzip1_s32(*v257.i8, *&vextq_s8(v257, v257, 8uLL));
      v328.i64[0] = v407.u32[0];
      v328.i64[1] = v407.u32[1];
      v409 = v328;
      v328.i64[0] = v408.u32[0];
      v328.i64[1] = v408.u32[1];
      v410 = vshlq_u64(v253, vnegq_s64(v409));
      v411 = vshlq_u64(v244, vnegq_s64(v328));
      v412 = vzip2q_s64(v253, v410);
      v413 = vzip1q_s64(v253, v410);
      v414 = vzip2q_s64(v244, v411);
      v415 = vzip1q_s64(v244, v411);
      v411.i64[0] = 0xFFFF0000FFFFLL;
      v411.i64[1] = 0xFFFF0000FFFFLL;
      v416 = vuzp1q_s32(v413, v412);
      v417 = vuzp1q_s32(v415, v414);
      v418 = vnegq_s32(vandq_s8(v216, v411));
      v419 = vshlq_u32(v416, vnegq_s32(vandq_s8(v245, v411)));
      v420 = vshlq_u32(v417, v418);
      v421 = vzip2q_s32(v416, v419);
      v422 = vzip1q_s32(v416, v419);
      v423 = vzip2q_s32(v417, v420);
      v424 = vzip1q_s32(v417, v420);
      v420.i64[0] = 0x10001000100010;
      v420.i64[1] = 0x10001000100010;
      v425 = vuzp1q_s16(v424, v423);
      v423.i64[0] = 0xF000F000F000FLL;
      v423.i64[1] = 0xF000F000F000FLL;
      v426 = vaddq_s16(vandq_s8(v371, v220), vshlq_s16(vshlq_s16(vuzp1q_s16(v422, v421), vsubq_s16(v420, v245)), vaddq_s16(v245, v423)));
      v427 = vandq_s8(v220, v374);
      v428.i64[0] = 0x1000100010001;
      v428.i64[1] = 0x1000100010001;
      v429 = vceqq_s16(v191, v428);
      v430 = vaddvq_s16(v429);
      v431 = vsubq_s16(v426, v427);
      v432 = vsubq_s16(vshlq_s16(vshlq_s16(v425, vsubq_s16(v420, v216)), vaddq_s16(v216, v423)), v427);
      v429.i16[0] = v186 & 0x3FF;
      v429.i16[1] = (v186 >> 10) & 0x3FF;
      v433 = vdupq_lane_s32(*v429.i8, 0);
      if (v430)
      {
        v434 = vnegq_s16(vandq_s8(v187, v428));
        v435 = v432;
        v435.i32[3] = v431.i32[0];
        v436 = v431;
        v436.i32[0] = v432.i32[3];
        v529.val[0] = vbslq_s8(v434, v436, v431);
        v529.val[1] = vbslq_s8(v434, v435, v432);
        v435.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v435.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F0F80), v434), v529.val[0]);
        v530.val[1] = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, v435), v434));
        v431 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0F90), v434), v530.val[0]);
        v432 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FA0), v434), v376);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FB0), v434), v377);
        v376 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FC0), v434), v530.val[0]);
        v377 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0FD0), v434), v391);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0F80), v434), v392);
        v391 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, v435), v434), v530.val[0]);
        v392 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FE0), v434));
        v529.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0FF0), v434), v405);
        v529.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0F80), v434), v406);
        v405 = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, v435), v434), v529.val[0]);
        v406 = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F1000), v434));
      }

      v437 = vaddq_s16(v431, v433);
      v438 = vaddq_s16(v432, v433);
      v439 = vaddq_s16(v376, v433);
      v440 = vaddq_s16(v377, v433);
      v441 = vaddq_s16(v391, v433);
      v442 = vaddq_s16(v392, v433);
      v443 = vaddq_s16(v405, v433);
      v444 = vaddq_s16(v406, v433);
      v445.i64[0] = 0x10001000100010;
      v445.i64[1] = 0x10001000100010;
      v446 = vceqzq_s16(vandq_s8(v187, v445));
      v447 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v437, xmmword_29D2F1080), v446), v437);
      v448 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v438, xmmword_29D2F1080), v446), v438);
      v449 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F1080), v446), v439);
      v450 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F1080), v446), v440);
      v451 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F1080), v446), v441);
      v452 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F1080), v446), v442);
      v453 = vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F1080), v446);
      v454 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F1080), v446), v444);
      v455 = vshlq_n_s16(v447, 6uLL);
      v456 = vshlq_n_s16(v448, 6uLL);
      v457 = vshlq_n_s16(v449, 6uLL);
      v458 = vshlq_n_s16(v451, 6uLL);
      v459 = vshlq_n_s16(v452, 6uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 6uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 6uLL);
      v467 = vshlq_n_s16(v454, 6uLL);
      *v464 = v460;
      v464[1] = vzip2q_s64(v458, v459);
      v459.i64[0] = v457.i64[0];
      v459.i64[1] = v463.i64[0];
      v443.i64[0] = v466.i64[0];
      v443.i64[1] = v467.i64[0];
      *v465 = v459;
      v465[1] = v443;
      v468 = (v465 + a2);
      *v468 = vzip2q_s64(v457, v463);
      v468[1] = vzip2q_s64(v466, v467);
      break;
  }

  return v8;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(uint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a3[1];
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v14 = *v7;
  v15 = v7[1];
  v13 = (v7 + a4);
  v16 = v13[1];
  v17 = vshrq_n_s16(v11, 6uLL);
  v18 = vshrq_n_s16(v12, 6uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 6uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 6uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 6uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v483 = vshrq_n_s16(vzip1q_s64(v14, *v13), 6uLL);
  v485 = vshrq_n_s16(vzip1q_s64(v8, v10), 6uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 6uLL), 6uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 6uLL), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v483, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v485, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 6uLL), 6uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 6uLL), 6uLL);
  v32 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v33 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39 = vmaxq_s16(v36, v38);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vminq_s16(v37, v40);
  v42 = vzip1q_s16(v36, v37);
  v43.i64[0] = 0x10001000100010;
  v43.i64[1] = 0x10001000100010;
  v44 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v42)), vceqzq_s16(v42));
  v45 = vpmaxq_s16(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v47 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v48 = vpmaxq_s16(v46, v46);
  v49 = vpminq_s16(v47, v47);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v39, v50);
  v53 = vminq_s16(v41, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v58 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v69 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v63, v72);
  v75 = vminq_s16(v64, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v76)), vceqzq_s16(v76));
  v78 = vpmaxq_s16(v77, v77);
  v79 = vmaxq_s16(vmaxq_s16(v45, v56), vmaxq_s16(v67, v78));
  v80 = vclzq_s16(vsubq_s16(v74, v75));
  v81 = vsubq_s16(v43, v80);
  v82 = vminq_s16(v81, v79);
  if (vmaxvq_s16(v82))
  {
    v469 = v19;
    v470 = v20;
    v482 = v21;
    v471 = v22;
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v84.i64[0] = 0xF000F000F000FLL;
    v84.i64[1] = 0xF000F000F000FLL;
    v487 = vsubq_s16(vshlq_s16(v83, vsubq_s16(v84, v80)), v75);
    v85 = vcgtq_s16(v79, v81);
    v86.i64[0] = 0x8000800080008;
    v86.i64[1] = 0x8000800080008;
    v87.i64[0] = 0x3000300030003;
    v87.i64[1] = 0x3000300030003;
    v480 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v87), 0);
    v477 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v87), 0);
    v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v87), 0);
    v88 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v87), 0);
    v89.i64[0] = 0x4000400040004;
    v89.i64[1] = 0x4000400040004;
    v90 = vbicq_s8(v89, vceqq_s16(vaddq_s16(v88, v478), vnegq_s16(vaddq_s16(v477, v480))));
    v476 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v87), vandq_s8(v85, v86));
    v490 = v27;
    v492 = v28;
    v489 = v26;
    v496 = v31;
    v498 = v24;
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 6uLL), 6uLL);
    v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 6uLL), 6uLL);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 6uLL), 6uLL);
    v94 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 6uLL), 6uLL);
    v473 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 6uLL), 6uLL);
    v474 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 6uLL), 6uLL);
    v95 = vqtbl1q_s8(vmaxq_s16(v91, v474), xmmword_29D2F1090);
    v96 = vqtbl1q_s8(vminq_s16(v91, v474), xmmword_29D2F1090);
    v97 = vpmaxq_s16(v95, v95);
    v98 = vpminq_s16(v96, v96);
    v99 = vpmaxq_s16(v97, v97);
    v100 = vpminq_s16(v98, v98);
    v101 = vmaxq_s16(v99, v38);
    v102 = vminq_s16(v100, v40);
    v103 = vzip1q_s16(v99, v100);
    v104 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v103)), vceqzq_s16(v103));
    v105 = vpmaxq_s16(v104, v104);
    v472 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 6uLL), 6uLL);
    v106 = vqtbl1q_s8(vmaxq_s16(v473, v472), xmmword_29D2F1090);
    v107 = vqtbl1q_s8(vminq_s16(v473, v472), xmmword_29D2F1090);
    v108 = vpmaxq_s16(v106, v106);
    v109 = vpminq_s16(v107, v107);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v101, v110);
    v113 = vminq_s16(v102, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vpmaxq_s16(v115, v115);
    v117 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
    v118 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vpmaxq_s16(v119, v119);
    v122 = vpminq_s16(v120, v120);
    v123 = vmaxq_s16(v112, v121);
    v124 = vminq_s16(v113, v122);
    v125 = vzip1q_s16(v121, v122);
    v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
    v127 = vpmaxq_s16(v126, v126);
    v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 6uLL), 6uLL);
    v128 = vqtbl1q_s8(vmaxq_s16(v475, v94), xmmword_29D2F1090);
    v129 = vqtbl1q_s8(vminq_s16(v475, v94), xmmword_29D2F1090);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vpmaxq_s16(v130, v130);
    v133 = vpminq_s16(v131, v131);
    v494 = v30;
    v134 = vmaxq_s16(v123, v132);
    v135 = vminq_s16(v124, v133);
    v136 = vzip1q_s16(v132, v133);
    v137 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v136)), vceqzq_s16(v136));
    v138 = v25;
    v139 = vpmaxq_s16(v137, v137);
    v140 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v139));
    v141 = vclzq_s16(vsubq_s16(v134, v135));
    v142 = vsubq_s16(v43, v141);
    v143 = vcgtq_s16(v140, v142);
    v144 = vminq_s16(v142, v140);
    v142.i64[0] = 0x18001800180018;
    v142.i64[1] = 0x18001800180018;
    v145 = vbslq_s8(v143, v142, v43);
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v105), v87), 0);
    v147 = v29;
    v148 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v116), v87), 0);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v127), v87), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v144, v139), v87), 0);
    v151 = vsubq_s16(v144, v146);
    v152 = vsubq_s16(v144, v148);
    v153 = vsubq_s16(v144, v149);
    v154 = vsubq_s16(v144, v150);
    v155 = vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(vaddq_s16(v146, v148)));
    v146.i64[0] = 0x4000400040004;
    v146.i64[1] = 0x4000400040004;
    v156 = vbicq_s8(v146, v155);
    v148.i64[0] = 0x7000700070007;
    v148.i64[1] = 0x7000700070007;
    v157 = vandq_s8(v487, v85);
    v158 = vorrq_s8(v476, v90);
    v159 = vaddq_s16(vandq_s8(v82, v85), vaddq_s16(v90, v90));
    v160 = vsubq_s16(v82, v477);
    v161 = vsubq_s16(v82, v480);
    v162 = vsubq_s16(v82, v478);
    v163 = vsubq_s16(v82, v88);
    v164 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v159, v160, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v144, vceqzq_s16((*&v145 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v156, v156)), v151, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v154), 3uLL))), 0);
    v165 = vaddvq_s16(v164);
    v167 = a5 < 4 || a6 < 2;
    if (v165)
    {
      v168.i64[0] = 0x3000300030003;
      v168.i64[1] = 0x3000300030003;
      v169 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v144), v168), v145), v156);
      v168.i64[0] = 0xF000F000F000FLL;
      v168.i64[1] = 0xF000F000F000FLL;
      v170.i64[0] = -1;
      v170.i64[1] = -1;
      v171 = vandq_s8(vsubq_s16(vshlq_s16(v170, vsubq_s16(v168, v141)), v135), v143);
      v23 = vbslq_s8(v164, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
      v498 = vbslq_s8(v164, v91, v498);
      v488 = vbslq_s8(v164, v474, v138);
      v172 = vbslq_s8(v164, v473, v489);
      v173 = vbslq_s8(v164, v472, v490);
      v174 = vbslq_s8(v164, v92, v492);
      v175 = vbslq_s8(v164, v93, v147);
      v176 = vbslq_s8(v164, v94, v496);
      v160 = vbslq_s8(v164, v151, v160);
      v161 = vbslq_s8(v164, v152, v161);
      v162 = vbslq_s8(v164, v153, v162);
      v163 = vbslq_s8(v164, v154, v163);
      v157 = vbslq_s8(v164, v171, v157);
      v82 = vbslq_s8(v164, v144, v82);
      v158 = vbslq_s8(v164, v169, v158);
      v177 = vbslq_s8(v164, v475, v494);
    }

    else
    {
      v488 = v138;
      v177 = v494;
      v176 = v496;
      v175 = v147;
      v173 = v490;
      v174 = v492;
      v172 = v489;
    }

    v180 = v482;
    if (!v167)
    {
      v479 = v157;
      v491 = v173;
      v493 = v174;
      v481 = v175;
      v495 = v177;
      v497 = v176;
      v181 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
      v182 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
      v499.val[0] = v483;
      v499.val[1] = v469;
      v499.val[1].i32[3] = v18.i32[3];
      v183 = vqtbl2q_s8(v499, xmmword_29D2F1040);
      v184 = vsubq_s16(v483, vqtbl2q_s8(v499, xmmword_29D2F0FA0));
      v499.val[1] = v485;
      v185 = v470;
      v185.i32[3] = v18.i32[3];
      v186 = vsubq_s16(v485, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F1050));
      v187 = vsubq_s16(v470, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F0F80));
      v188 = v471;
      v188.i32[3] = v18.i32[3];
      v499.val[1] = v182;
      v499.val[1].i32[3] = v181.i32[0];
      v181.i32[0] = v182.i32[3];
      v189 = vshrq_n_s16(vshlq_n_s16(v181, 6uLL), 6uLL);
      v190 = vshrq_n_s16(vshlq_n_s16(v499.val[1], 6uLL), 6uLL);
      v191 = vshrq_n_s16(vshlq_n_s16(v184, 6uLL), 6uLL);
      v192 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v469, v183), 6uLL), 6uLL);
      v193 = vshrq_n_s16(vshlq_n_s16(v186, 6uLL), 6uLL);
      v194 = vshrq_n_s16(vshlq_n_s16(v187, 6uLL), 6uLL);
      v195 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, vqtbl2q_s8(*v180.i8, xmmword_29D2F1060)), 6uLL), 6uLL);
      v196 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, vqtbl2q_s8(*v180.i8, xmmword_29D2F0F80)), 6uLL), 6uLL);
      v486 = v189;
      v197 = vqtbl1q_s8(vmaxq_s16(v189, v190), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v189, v190), xmmword_29D2F1090);
      v198 = vpmaxq_s16(v197, v197);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v199 = vpmaxq_s16(v198, v198);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v185.i64[0] = 0x8000800080008000;
      v185.i64[1] = 0x8000800080008000;
      v200 = vmaxq_s16(v199, v185);
      v189.i64[0] = 0x8000800080008000;
      v189.i64[1] = 0x8000800080008000;
      v201 = vminq_s16(v499.val[0], v189);
      v202 = vzip1q_s16(v199, v499.val[0]);
      v189.i64[0] = 0x10001000100010;
      v189.i64[1] = 0x10001000100010;
      v203 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v202)), vceqzq_s16(v202));
      v204 = v162;
      v205 = vpmaxq_s16(v203, v203);
      v206 = vqtbl1q_s8(vmaxq_s16(v191, v192), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v191, v192), xmmword_29D2F1090);
      v207 = vpmaxq_s16(v206, v206);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v208 = vpmaxq_s16(v207, v207);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v209 = vmaxq_s16(v200, v208);
      v210 = vminq_s16(v201, v499.val[0]);
      v211 = vzip1q_s16(v208, v499.val[0]);
      v212 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v211)), vceqzq_s16(v211));
      v213 = vpmaxq_s16(v212, v212);
      v214 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
      v215 = vpmaxq_s16(v214, v214);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v216 = vpmaxq_s16(v215, v215);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v217 = vmaxq_s16(v209, v216);
      v218 = vminq_s16(v210, v499.val[0]);
      v219 = vzip1q_s16(v216, v499.val[0]);
      v220 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v219)), vceqzq_s16(v219));
      v221 = vpmaxq_s16(v220, v220);
      v484 = v196;
      v222 = vqtbl1q_s8(vmaxq_s16(v195, v196), xmmword_29D2F1090);
      v499.val[0] = vqtbl1q_s8(vminq_s16(v195, v196), xmmword_29D2F1090);
      v223 = vpmaxq_s16(v222, v222);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v224 = vpmaxq_s16(v223, v223);
      v499.val[0] = vpminq_s16(v499.val[0], v499.val[0]);
      v225 = vmaxq_s16(v217, v224);
      v226 = vminq_s16(v218, v499.val[0]);
      v227 = vzip1q_s16(v224, v499.val[0]);
      v228 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v499.val[0] = vmaxq_s16(vmaxq_s16(v205, v213), vmaxq_s16(v221, v229));
      v230 = vclzq_s16(vsubq_s16(v225, v226));
      v231 = vsubq_s16(v189, v230);
      v232 = vcgtq_s16(v499.val[0], v231);
      v233 = vminq_s16(v231, v499.val[0]);
      v234.i64[0] = 0x3000300030003;
      v234.i64[1] = 0x3000300030003;
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v205), v234), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v213), v234), 0);
      v237 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v221), v234), 0);
      v238 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v229), v234), 0);
      v239 = vsubq_s16(v233, v235);
      v240 = vsubq_s16(v233, v236);
      v241 = vsubq_s16(v233, v237);
      v242 = vsubq_s16(v233, v238);
      v243 = vceqq_s16(vaddq_s16(v238, v237), vnegq_s16(vaddq_s16(v235, v236)));
      v238.i64[0] = 0x4000400040004;
      v238.i64[1] = 0x4000400040004;
      v244 = vbicq_s8(v238, v243);
      v237.i64[0] = 0x7000700070007;
      v237.i64[1] = 0x7000700070007;
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      v245 = vandq_s8(v158, v234);
      v246.i64[0] = 0x2000200020002;
      v246.i64[1] = 0x2000200020002;
      v247 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v158, v236))), vandq_s8(vaddq_s16(v158, v158), v236)), vandq_s8(vceqq_s16(v245, v246), v189)), v160, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v161), v163), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v233, v232), vaddq_s16(v244, v244)), v239, v237), vshlq_n_s16(vaddq_s16(vaddq_s16(v241, v240), v242), 3uLL))), 0);
      if (vaddvq_s16(v247))
      {
        v248 = vandq_s8(vceqzq_s16(v233), v246);
        v249.i64[0] = 0x9000900090009;
        v249.i64[1] = 0x9000900090009;
        v250 = vorrq_s8(vorrq_s8(v248, vsubq_s16(vandq_s8(v232, v249), vmvnq_s8(v232))), v244);
        v251.i64[0] = 0xF000F000F000FLL;
        v251.i64[1] = 0xF000F000F000FLL;
        v252 = vsubq_s16(v251, v230);
        v253.i64[0] = -1;
        v253.i64[1] = -1;
        v254 = vandq_s8(vsubq_s16(vshlq_s16(v253, v252), v226), v232);
        v23.i32[0] = vbslq_s8(v247, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
        v498 = vbslq_s8(v247, v486, v498);
        v488 = vbslq_s8(v247, v190, v488);
        v172 = vbslq_s8(v247, v191, v172);
        v173 = vbslq_s8(v247, v192, v491);
        v174 = vbslq_s8(v247, v193, v493);
        v175 = vbslq_s8(v247, v194, v481);
        v177 = vbslq_s8(v247, v195, v495);
        v176 = vbslq_s8(v247, v484, v497);
        v160 = vbslq_s8(v247, v239, v160);
        v161 = vbslq_s8(v247, v240, v161);
        v162 = vbslq_s8(v247, v241, v204);
        v163 = vbslq_s8(v247, v242, v163);
        v157 = vbslq_s8(v247, v254, v479);
        v82 = vbslq_s8(v247, v233, v82);
        v158 = vbslq_s8(v247, v250, v158);
      }

      else
      {
        v177 = v495;
        v176 = v497;
        v157 = v479;
        v175 = v481;
        v173 = v491;
        v174 = v493;
        v162 = v204;
      }
    }

    v255.i64[0] = 0x8000800080008;
    v255.i64[1] = 0x8000800080008;
    v256 = vandq_s8(v158, v255);
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v158, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v256)), vandq_s8(vaddq_s16(v158, v158), v255)), v260), v160, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL));
    if ((vpaddq_s16(v261, v261).i16[0] - 347) < 0xFFFFFFFFFFFFFE78)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 48;
    }

    else
    {
      v262 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v263 = 8 * (a1 & 7);
      if (v263)
      {
        v264 = *v262 & ~(-1 << v263);
      }

      else
      {
        v264 = 0;
      }

      *a2 = 0;
      v265 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
      if (!v82.i16[0])
      {
        v265 = 0;
      }

      if (v82.i16[1])
      {
        v266 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
      }

      else
      {
        v266 = 0;
      }

      v267 = v265 | v266 | v158.i8[0] & 0x1F | (32 * (v158.i8[2] & 0x1Fu));
      v268 = v23.i16[0] & 0x3FF | ((v23.i16[1] & 0x3FF) << 10);
      v269 = (v267 << v263) | v264;
      if (v263 >= 0x2E)
      {
        *v262 = v269;
        v269 = v267 >> (-8 * (a1 & 7u));
      }

      v270 = (v263 + 18) & 0x3A;
      v271 = v269 | (v268 << v270);
      if (v270 >= 0x2C)
      {
        *(v262 + (((v263 + 18) >> 3) & 8)) = v271;
        v271 = v268 >> -v270;
      }

      v272 = v263 + 38;
      v273 = vsubq_s16(v82, v160);
      v274 = vsubq_s16(v82, v161);
      v275 = vsubq_s16(v82, v162);
      v276 = vsubq_s16(v82, v163);
      *v273.i8 = vqmovn_u16(v273);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      *v276.i8 = vqmovn_u16(v276);
      v273.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v273, v274), vzip1q_s8(v275, v276)), vzip1q_s16(vtrn2q_s8(v273, v274), vtrn2q_s8(v275, v276))).u64[0];
      v275.i64[0] = 0x202020202020202;
      v275.i64[1] = 0x202020202020202;
      v277 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v158.i8, 0x4000400040004)))), v275);
      v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v276.i64[0] = -1;
      v276.i64[1] = -1;
      v278 = vandq_s8(vshlq_u8(v276, vorrq_s8(v277, v275)), v273.u64[0]);
      v279 = vmovl_u8(*v277.i8);
      v280 = vpaddq_s16(vshlq_u16(vmovl_u8(*v278.i8), vtrn1q_s16(0, v279)), vmovl_high_u8(v278));
      v281 = vpaddq_s16(v279, vmovl_high_u8(v277));
      v282 = vmovl_u16(*v281.i8);
      v283 = vmovl_high_u16(v281);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vtrn1q_s32(0, v282)), vshlq_u32(vmovl_high_u16(v280), vtrn1q_s32(0, v283)));
      v285 = vpaddq_s32(v282, v283);
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v263 + 38) & 0x3E;
      v293 = (v290.i64[0] << v292) | v271;
      if ((v291.i64[0] + v292) >= 0x40)
      {
        *(v262 + ((v272 >> 3) & 8)) = v293;
        v293 = v290.i64[0] >> -v292;
      }

      v294 = vceqq_s16(v82, v160);
      v295 = v291.i64[0] + v272;
      v296 = v293 | (v290.i64[1] << v295);
      if ((v295 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v262 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v296;
        v296 = v290.i64[1] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v296 = 0;
        }
      }

      v297 = vandq_s8(v157, v294);
      v298 = v295 + v291.i64[1];
      v299.i64[0] = -1;
      v299.i64[1] = -1;
      v300 = vandq_s8(vextq_s8(vtstq_s16(v256, v256), 0, 0xCuLL), v82);
      v301.i64[0] = 0xF000F000F000FLL;
      v301.i64[1] = 0xF000F000F000FLL;
      v302 = vandq_s8(vshlq_u16(v299, vaddq_s16(v300, v301)), v157);
      v303 = vmovl_u16(*v300.i8);
      v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v303)), vmovl_high_u16(v302));
      v305 = vpaddq_s32(v303, vmovl_high_u16(v300));
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v310.i64[0] << v298) | v296;
      if (v311.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v262 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v310.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = vaddq_s16(v297, v498);
      v314 = v311.i64[0] + v298;
      v315 = v312 | (v310.i64[1] << v314);
      if ((v314 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v262 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v310.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = v314 + v311.i64[1];
      v317 = vextq_s8(0, v160, 0xCuLL);
      v318.i64[0] = 0xF000F000F000FLL;
      v318.i64[1] = 0xF000F000F000FLL;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u16(v319, vaddq_s16(v317, v318)), v313);
      v321 = vmovl_u16(*v317.i8);
      v322 = vmovl_high_u16(v317);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v321)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v322)));
      v324 = vpaddq_s32(v321, v322);
      v325.i64[0] = v323.u32[0];
      v325.i64[1] = v323.u32[1];
      v326 = v325;
      v325.i64[0] = v323.u32[2];
      v325.i64[1] = v323.u32[3];
      v327 = v325;
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v328 = v325;
      v325.i64[0] = v324.u32[2];
      v325.i64[1] = v324.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
      v330 = vpaddq_s64(v328, v325);
      v331 = (v329.i64[0] << v316) | v315;
      if (v330.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v262 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vceqq_s16(v82, v161);
      v333 = vaddq_s16(v488, v297);
      v334 = v330.i64[0] + v316;
      v335 = v331 | (v329.i64[1] << v334);
      if ((v334 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v262 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v329.i64[1] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vandq_s8(v157, v332);
      v337 = v334 + v330.i64[1];
      v338.i64[0] = 0xF000F000F000FLL;
      v338.i64[1] = 0xF000F000F000FLL;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vshlq_u16(v339, vaddq_s16(v160, v338)), v333);
      v341 = vmovl_u16(*v160.i8);
      v342 = vmovl_high_u16(v160);
      v343 = vpaddq_s32(vshlq_u32(vmovl_u16(*v340.i8), vtrn1q_s32(0, v341)), vshlq_u32(vmovl_high_u16(v340), vtrn1q_s32(0, v342)));
      v344 = vpaddq_s32(v341, v342);
      v345.i64[0] = v343.u32[0];
      v345.i64[1] = v343.u32[1];
      v346 = v345;
      v345.i64[0] = v343.u32[2];
      v345.i64[1] = v343.u32[3];
      v347 = v345;
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v348 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v349 = vpaddq_s64(vshlq_u64(v346, vzip1q_s64(0, v348)), vshlq_u64(v347, vzip1q_s64(0, v345)));
      v350 = vpaddq_s64(v348, v345);
      v351 = (v349.i64[0] << v337) | v335;
      if (v350.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v262 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s16(v172, v336);
      v353 = v350.i64[0] + v337;
      v354 = v351 | (v349.i64[1] << v353);
      if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v262 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v349.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v350.i64[1];
      v356.i64[0] = 0xF000F000F000FLL;
      v356.i64[1] = 0xF000F000F000FLL;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vshlq_u16(v357, vaddq_s16(v161, v356));
      v359 = vandq_s8(v358, v352);
      v360 = vmovl_u16(*v359.i8);
      v361 = vmovl_high_u16(v359);
      v362 = vmovl_u16(*v161.i8);
      v363 = vmovl_high_u16(v161);
      v364 = vtrn1q_s32(0, v362);
      v365 = vtrn1q_s32(0, v363);
      v366 = vpaddq_s32(vshlq_u32(v360, v364), vshlq_u32(v361, v365));
      v367 = vpaddq_s32(v362, v363);
      v368.i64[0] = v366.u32[0];
      v368.i64[1] = v366.u32[1];
      v369 = v368;
      v368.i64[0] = v366.u32[2];
      v368.i64[1] = v366.u32[3];
      v370 = v368;
      v368.i64[0] = v367.u32[0];
      v368.i64[1] = v367.u32[1];
      v371 = v368;
      v368.i64[0] = v367.u32[2];
      v368.i64[1] = v367.u32[3];
      v372 = vzip1q_s64(0, v371);
      v373 = vzip1q_s64(0, v368);
      v374 = vpaddq_s64(vshlq_u64(v369, v372), vshlq_u64(v370, v373));
      v375 = vpaddq_s64(v371, v368);
      v376 = (v374.i64[0] << v355) | v354;
      if (v375.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v262 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        if ((v355 & 0x3F) != 0)
        {
          v376 = v374.i64[0] >> -(v355 & 0x3F);
        }

        else
        {
          v376 = 0;
        }
      }

      v377 = vceqq_s16(v82, v162);
      v378 = vaddq_s16(v173, v336);
      v379 = v375.i64[0] + v355;
      v380 = v376 | (v374.i64[1] << v379);
      if ((v379 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v374.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = vandq_s8(v157, v377);
      v382 = v379 + v375.i64[1];
      v383 = vandq_s8(v358, v378);
      v384 = vpaddq_s32(vshlq_u32(vmovl_u16(*v383.i8), v364), vshlq_u32(vmovl_high_u16(v383), v365));
      v385.i64[0] = v384.u32[0];
      v385.i64[1] = v384.u32[1];
      v386 = v385;
      v385.i64[0] = v384.u32[2];
      v385.i64[1] = v384.u32[3];
      v387 = vpaddq_s64(vshlq_u64(v386, v372), vshlq_u64(v385, v373));
      v388 = (v387.i64[0] << v382) | v380;
      if (v375.i64[0] + (v382 & 0x3F) >= 0x40)
      {
        *(v262 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v387.i64[0] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = vaddq_s16(v174, v381);
      v390 = v375.i64[0] + v382;
      v391 = (v375.i64[0] + v382) & 0x3F;
      v392 = v388 | (v387.i64[1] << v390);
      if ((v390 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v262 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        v392 = v387.i64[1] >> -v391;
        if (!v391)
        {
          v392 = 0;
        }
      }

      v393 = v390 + v375.i64[1];
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v395.i64[0] = -1;
      v395.i64[1] = -1;
      v396 = vshlq_u16(v395, vaddq_s16(v162, v394));
      v397 = vandq_s8(v396, v389);
      v398 = vmovl_u16(*v397.i8);
      v399 = vmovl_high_u16(v397);
      v400 = vmovl_u16(*v162.i8);
      v401 = vmovl_high_u16(v162);
      v402 = vtrn1q_s32(0, v400);
      v403 = vtrn1q_s32(0, v401);
      v404 = vpaddq_s32(vshlq_u32(v398, v402), vshlq_u32(v399, v403));
      v405 = vpaddq_s32(v400, v401);
      v406.i64[0] = v404.u32[0];
      v406.i64[1] = v404.u32[1];
      v407 = v406;
      v406.i64[0] = v404.u32[2];
      v406.i64[1] = v404.u32[3];
      v408 = v406;
      v406.i64[0] = v405.u32[0];
      v406.i64[1] = v405.u32[1];
      v409 = v406;
      v406.i64[0] = v405.u32[2];
      v406.i64[1] = v405.u32[3];
      v410 = vzip1q_s64(0, v409);
      v411 = vzip1q_s64(0, v406);
      v412 = vpaddq_s64(vshlq_u64(v407, v410), vshlq_u64(v408, v411));
      v413 = vpaddq_s64(v409, v406);
      v414 = (v390 + v375.i64[1]) & 0x3F;
      v415 = (v412.i64[0] << (v390 + v375.i8[8])) | v392;
      if ((v413.i64[0] + v414) >= 0x40)
      {
        *(v262 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
        if (v414)
        {
          v415 = v412.i64[0] >> -v414;
        }

        else
        {
          v415 = 0;
        }
      }

      v416 = vceqq_s16(v82, v163);
      v417 = vaddq_s16(v175, v381);
      v418 = v413.i64[0] + v393;
      v419 = v415 | (v412.i64[1] << v418);
      if ((v418 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
        v419 = v412.i64[1] >> -(v418 & 0x3F);
        if ((v418 & 0x3F) == 0)
        {
          v419 = 0;
        }
      }

      v420 = vandq_s8(v157, v416);
      v421 = v418 + v413.i64[1];
      v422 = vandq_s8(v396, v417);
      v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), v402), vshlq_u32(vmovl_high_u16(v422), v403));
      v424.i64[0] = v423.u32[0];
      v424.i64[1] = v423.u32[1];
      v425 = v424;
      v424.i64[0] = v423.u32[2];
      v424.i64[1] = v423.u32[3];
      v426 = vpaddq_s64(vshlq_u64(v425, v410), vshlq_u64(v424, v411));
      v427 = (v426.i64[0] << v421) | v419;
      if (v413.i64[0] + (v421 & 0x3F) >= 0x40)
      {
        *(v262 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v426.i64[0] >> -(v421 & 0x3F);
        if ((v421 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = vaddq_s16(v177, v420);
      v429 = v413.i64[0] + v421;
      v430 = (v413.i64[0] + v421) & 0x3F;
      v431 = v427 | (v426.i64[1] << v429);
      if ((v429 & 0x3F) + v413.i64[1] >= 0x40)
      {
        *(v262 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        v431 = v426.i64[1] >> -v430;
        if (!v430)
        {
          v431 = 0;
        }
      }

      v432 = v429 + v413.i64[1];
      v433.i64[0] = 0xF000F000F000FLL;
      v433.i64[1] = 0xF000F000F000FLL;
      v434.i64[0] = -1;
      v434.i64[1] = -1;
      v435 = vshlq_u16(v434, vaddq_s16(v163, v433));
      v436 = vandq_s8(v435, v428);
      v437 = vmovl_u16(*v436.i8);
      v438 = vmovl_high_u16(v436);
      v439 = vmovl_u16(*v163.i8);
      v440 = vmovl_high_u16(v163);
      v441 = vtrn1q_s32(0, v439);
      v442 = vtrn1q_s32(0, v440);
      v443 = vpaddq_s32(vshlq_u32(v437, v441), vshlq_u32(v438, v442));
      v444 = vpaddq_s32(v439, v440);
      v445.i64[0] = v443.u32[0];
      v445.i64[1] = v443.u32[1];
      v446 = v445;
      v445.i64[0] = v443.u32[2];
      v445.i64[1] = v443.u32[3];
      v447 = v445;
      v445.i64[0] = v444.u32[0];
      v445.i64[1] = v444.u32[1];
      v448 = v445;
      v445.i64[0] = v444.u32[2];
      v445.i64[1] = v444.u32[3];
      v449 = vzip1q_s64(0, v448);
      v450 = vzip1q_s64(0, v445);
      v451 = vpaddq_s64(vshlq_u64(v446, v449), vshlq_u64(v447, v450));
      v452 = vpaddq_s64(v448, v445);
      v453 = (v429 + v413.i64[1]) & 0x3F;
      v454 = (v451.i64[0] << (v429 + v413.i8[8])) | v431;
      if ((v452.i64[0] + v453) > 0x3F)
      {
        *(v262 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
        if (v453)
        {
          v454 = v451.i64[0] >> -v453;
        }

        else
        {
          v454 = 0;
        }
      }

      v455 = vaddq_s16(v176, v420);
      v456 = v452.i64[0] + v432;
      v457 = v454 | (v451.i64[1] << v456);
      if ((v456 & 0x3F) + v452.i64[1] >= 0x40)
      {
        *(v262 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
        v457 = v451.i64[1] >> -(v456 & 0x3F);
        if ((v456 & 0x3F) == 0)
        {
          v457 = 0;
        }
      }

      v458 = v456 + v452.i64[1];
      v459 = vandq_s8(v435, v455);
      v460 = vpaddq_s32(vshlq_u32(vmovl_u16(*v459.i8), v441), vshlq_u32(vmovl_high_u16(v459), v442));
      v461.i64[0] = v460.u32[0];
      v461.i64[1] = v460.u32[1];
      v462 = v461;
      v461.i64[0] = v460.u32[2];
      v461.i64[1] = v460.u32[3];
      v463 = vpaddq_s64(vshlq_u64(v462, v449), vshlq_u64(v461, v450));
      v464 = (v463.i64[0] << v458) | v457;
      if (v452.i64[0] + (v458 & 0x3F) >= 0x40)
      {
        *(v262 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        v464 = v463.i64[0] >> -(v458 & 0x3F);
        if ((v458 & 0x3F) == 0)
        {
          v464 = 0;
        }
      }

      v465 = v452.i64[0] + v458;
      v466 = (v452.i64[0] + v458) & 0x3F;
      v467 = v464 | (v463.i64[1] << (v452.i8[0] + v458));
      if ((v466 + v452.i64[1]) >= 0x40)
      {
        *(v262 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
        v467 = v463.i64[1] >> -v466;
        if (!v466)
        {
          v467 = 0;
        }
      }

      v468 = v465 + v452.i64[1];
      if ((v468 & 0x3F) != 0)
      {
        *(v262 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      }

      result = (v468 - v263 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v178 = (a3->i32[0] >> 12) & 0xFFFFFC00 | (a3->i32[0] >> 6);
    *(a1 + 2) = a3->i32[0] >> 28;
    *a1 = v178;
    *a2 = 2;
    return 3;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    v11 = a6;
    if (a5 > 3)
    {
      v14 = a5 & 0x7C;
      if (a5 == v14)
      {
        v15 = 0;
        v16 = &v64;
        do
        {
          v17 = a3;
          v18 = v16;
          v19 = a5;
          do
          {
            v20 = *v17++;
            v21 = vshrq_n_u32(v20, 6uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF03FF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF03FF;
            *v18 = v21.i32[2] & 0xFFFF03FF;
            v18[4] = v21.i32[3] & 0xFFFF03FF;
            v18 += 16;
            v19 -= 4;
          }

          while (v19);
          ++v15;
          v16 = (v16 + 4);
          a3 = (a3 + a4);
        }

        while (v15 != a6);
      }

      else
      {
        v22 = 0;
        v23 = &v62;
        v24 = &v64;
        do
        {
          v25 = a3;
          v26 = v24;
          v27 = a5 & 0x7C;
          do
          {
            v28 = *v25++;
            v29 = vshrq_n_u32(v28, 6uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF03FF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF03FF;
            *v26 = v29.i32[2] & 0xFFFF03FF;
            v26[4] = v29.i32[3] & 0xFFFF03FF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 6) & 0x3FF03FF;
            ++v30;
            --v31;
          }

          while (v31);
          ++v22;
          v24 = (v24 + 4);
          a3 = (a3 + a4);
          v23 = (v23 + 4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v12 = &a3->i32[2];
      v13 = &v63;
      do
      {
        *(v13 - 4) = (*(v12 - 2) >> 6) & 0x3FF03FF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 6) & 0x3FF03FF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 6) & 0x3FF03FF;
          }
        }

        v12 = (v12 + a4);
        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  v46 = v62;
  v47 = WORD1(v62);
  v48 = v63;
  v49 = WORD1(v63);
  v50 = WORD2(v62);
  v51 = WORD3(v62);
  v52 = WORD2(v63);
  v53 = WORD3(v63);
  v54 = v64;
  v55 = WORD1(v64);
  v56 = v65;
  v57 = WORD1(v65);
  v58 = WORD2(v64);
  v59 = WORD3(v64);
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = WORD2(v65);
  v61 = WORD3(v65);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = WORD4(v62);
  v47 = WORD5(v62);
  v48 = WORD4(v63);
  v49 = WORD5(v63);
  v50 = WORD6(v62);
  v51 = HIWORD(v62);
  v52 = WORD6(v63);
  v53 = HIWORD(v63);
  v54 = WORD4(v64);
  v55 = WORD5(v64);
  v56 = WORD4(v65);
  v57 = WORD5(v65);
  v58 = WORD6(v64);
  v59 = HIWORD(v64);
  v60 = WORD6(v65);
  v61 = HIWORD(v65);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v46, a7, v32, v37);
  v46 = v66;
  v47 = WORD1(v66);
  v48 = v67;
  v49 = WORD1(v67);
  v50 = WORD2(v66);
  v51 = WORD3(v66);
  v52 = WORD2(v67);
  v53 = WORD3(v67);
  v54 = v68;
  v55 = WORD1(v68);
  v56 = v69;
  v57 = WORD1(v69);
  v58 = WORD2(v68);
  v59 = WORD3(v68);
  if (a5 >= 8)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = WORD2(v69);
  v61 = WORD3(v69);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v46, a7, v39, v34);
  v46 = WORD4(v66);
  v47 = WORD5(v66);
  v48 = WORD4(v67);
  v49 = WORD5(v67);
  v50 = WORD6(v66);
  v51 = HIWORD(v66);
  v52 = WORD6(v67);
  v53 = HIWORD(v67);
  v54 = WORD4(v68);
  v55 = WORD5(v68);
  v56 = WORD4(v69);
  v57 = WORD5(v69);
  v58 = WORD6(v68);
  v59 = HIWORD(v68);
  v60 = WORD6(v69);
  v61 = HIWORD(v69);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 36, &v46, a7, v39, v37);
  if (v40)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v38)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  if (result)
  {
    v44 = -8;
  }

  else
  {
    v44 = -16;
  }

  *a2 = v44 | v42 | v36 | v43;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v346 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v295 = v7;
  v8 = a4 < 2 || a5 == 0;
  v294 = v8;
  v9 = a4 < 2 || a5 < 2;
  v293 = v9;
  v10 = a4 < 3 || a5 == 0;
  v292 = v10;
  v11 = a4 < 3 || a5 < 2;
  v291 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v290 = v6;
  v12 = a4 < 4 || a5 < 2;
  v289 = v12;
  v13 = &v328;
  v14 = &v330;
  v15 = &v334;
  v16 = &v338;
  v17 = &v342;
  v18 = &v344;
  v19 = &v313;
  v20 = &v311;
  v21 = &v309;
  v22 = &v307;
  v23 = &v305;
  v24 = v303;
  v25 = 1;
  v26 = &v332;
  v27 = &v336;
  v28 = &v340;
  v288 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)5,(AGXTextureFootprint)3>::compBits[v5];
    *v19 = v32;
    if (v32 <= 11)
    {
      if (v32 == 2)
      {
        v30 = 5;
      }

      else
      {
        v30 = v32 == 10;
      }
    }

    else
    {
      switch(v32)
      {
        case 12:
          v30 = 2;
          break;
        case 16:
          v30 = 3;
          break;
        case 32:
          v30 = 4;
          break;
      }
    }

    *v23 = v30;
    v33 = 1 << (v32 - 1);
    *v24 = v33;
    v34 = *(a2 + 4 * v5);
    if (a3 == 1)
    {
      v34 ^= v33;
      if (v34 == 1)
      {
        v34 = 0;
      }

      *v13 = v34;
      v43 = (a2 + 4 * v5);
      if ((v43[2] ^ v33) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v43[2] ^ v33;
      }

      *v14 = v36;
      if ((v43[4] ^ v33) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43[4] ^ v33;
      }

      *v26 = v37;
      if ((v43[6] ^ v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v43[6] ^ v33;
      }

      *v15 = v38;
      v39 = v43[8] ^ v33;
      if (v39 == 1)
      {
        v39 = 0;
      }

      *v27 = v39;
      if ((v43[10] ^ v33) == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v43[10] ^ v33;
      }

      *v16 = v40;
      if ((v43[12] ^ v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43[12] ^ v33;
      }

      *v28 = v41;
      v44 = v43[14] ^ v33;
      if (v44 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v44;
      }
    }

    else if (a3 == 3)
    {
      v34 ^= v33;
      *v13 = v34;
      v35 = (a2 + 4 * v5);
      v36 = v35[2] ^ v33;
      *v14 = v36;
      v37 = v35[4] ^ v33;
      *v26 = v37;
      v38 = v35[6] ^ v33;
      *v15 = v38;
      v39 = v35[8] ^ v33;
      *v27 = v39;
      v40 = v35[10] ^ v33;
      *v16 = v40;
      v41 = v35[12] ^ v33;
      *v28 = v41;
      v42 = v35[14] ^ v33;
    }

    else
    {
      *v13 = v34;
      v45 = (a2 + 4 * v5);
      v36 = v45[2];
      *v14 = v36;
      v37 = v45[4];
      *v26 = v37;
      v38 = v45[6];
      *v15 = v38;
      v39 = v45[8];
      *v27 = v39;
      v40 = v45[10];
      *v16 = v40;
      v41 = v45[12];
      *v28 = v41;
      v42 = v45[14];
    }

    *v17 = v42;
    *v21 = v34;
    *v20 = v34;
    *v22 = 0;
    if (v294)
    {
      v46 = v34;
    }

    else
    {
      v46 = v34;
      if (v36 < v34)
      {
        *v22 = 1;
        *v20 = v36;
        v46 = v36;
      }

      if (v34 >= v36)
      {
        v47 = v21;
      }

      else
      {
        v47 = v14;
      }

      v34 = *v47;
      *v21 = v34;
    }

    a2 = v29;
    if (v295)
    {
      if (v293)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v37 < v46)
      {
        *v22 = 2;
        *v20 = v37;
        v46 = v37;
      }

      if (v34 >= v37)
      {
        v48 = v21;
      }

      else
      {
        v48 = v26;
      }

      v34 = *v48;
      *v21 = v34;
      if (v293)
      {
LABEL_69:
        if (v292)
        {
          goto LABEL_70;
        }

        goto LABEL_84;
      }
    }

    if (v38 < v46)
    {
      *v22 = 3;
      *v20 = v38;
      v46 = v38;
    }

    if (v34 >= v38)
    {
      v49 = v21;
    }

    else
    {
      v49 = v15;
    }

    v34 = *v49;
    *v21 = v34;
    if (v292)
    {
LABEL_70:
      if (v290)
      {
        goto LABEL_96;
      }

LABEL_90:
      if (v40 < v46)
      {
        *v22 = 5;
        *v20 = v40;
        v46 = v40;
      }

      if (v34 >= v40)
      {
        v51 = v21;
      }

      else
      {
        v51 = v16;
      }

      v34 = *v51;
      *v21 = v34;
      goto LABEL_96;
    }

LABEL_84:
    if (v39 < v46)
    {
      *v22 = 4;
      *v20 = v39;
      v46 = v39;
    }

    if (v34 >= v39)
    {
      v50 = v21;
    }

    else
    {
      v50 = v27;
    }

    v34 = *v50;
    *v21 = v34;
    if (!v290)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v288;
    if (!v291)
    {
      if (v41 < v46)
      {
        *v22 = 6;
        *v20 = v41;
        v46 = v41;
      }

      if (v34 >= v41)
      {
        v52 = v21;
      }

      else
      {
        v52 = v28;
      }

      v34 = *v52;
      *v21 = v34;
    }

    if (!v289)
    {
      if (v42 < v46)
      {
        *v22 = 7;
        *v20 = v42;
        v46 = v42;
      }

      if (v34 >= v42)
      {
        v53 = v21;
      }

      else
      {
        v53 = v17;
      }

      v34 = *v53;
      *v21 = *v53;
    }

    v54 = v34 - v46;
    v55 = __clz(v34 - v46);
    v56 = 32 - v55;
    if (v32 <= 11)
    {
      if (v32 != 2)
      {
        if (v32 == 8)
        {
          v58 = 1;
          goto LABEL_133;
        }

        if (v32 == 10)
        {
          if (v55 - 29 < 3)
          {
            v56 = 3;
          }

          goto LABEL_132;
        }

        goto LABEL_125;
      }

      v57 = v55 == 31;
      goto LABEL_130;
    }

    if (v32 != 12)
    {
      if (v32 != 16)
      {
        if (v32 == 32)
        {
          v56 -= v56 >> 1;
LABEL_132:
          v58 = -1;
          goto LABEL_133;
        }

LABEL_125:
        v58 = 0;
        goto LABEL_133;
      }

      v57 = v55 == 31 && v34 == 0xFFFF;
LABEL_130:
      if (v57)
      {
        v56 = 2;
      }

      goto LABEL_132;
    }

    if ((v55 & 0x3C) == 0x1C)
    {
      v56 = 4;
    }

    v58 = -2;
LABEL_133:
    v59 = v56 + v58;
    v60 = v59 & ~(v59 >> 31);
    if (v34 == v46 && (v32 - 8) <= 4 && v59 <= 2)
    {
      if (v46)
      {
        v60 = (v46 ^ (-1 << v32)) != 0xFFFFFFFF || v32 > 0xB;
      }

      else
      {
        v60 = 0;
      }
    }

    *v18 = v60;
    if ((v288 | 2) == 3)
    {
      v61 = 0;
      if (v46 < v33 && v34 >= v33)
      {
        v61 = kDQuadParamTable[160 * v30 + 8 + 10 * v60] == 0;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= kDquadTransition[v30] || v61)
    {
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61;
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = -2;
      }

      v68 = v32 >= v62;
      v64 = v32 - v62;
      v89 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v89)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v89 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v89 || v67 >= v55;
      if (v68)
      {
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v18 = ++v60;
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      v69 = kDquadMaxMode[v30];
      if (v69 >= v60)
      {
        v69 = v60;
      }

      *v18 = v69;
    }

LABEL_22:
    v25 = 0;
    v19 = &v312;
    v20 = &v310;
    v21 = &v308;
    v22 = &v306;
    v23 = &v304;
    v24 = v302;
    v14 = &v331;
    v13 = &v329;
    v15 = &v335;
    v26 = &v333;
    v16 = &v339;
    v27 = &v337;
    v17 = &v343;
    v28 = &v341;
    v18 = &v345;
    v5 = 1u;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    v70 = a4 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v282 = v71;
  v72 = v305;
  v73 = v344;
  v74 = v345;
  v76 = v345 >= v344;
  v77 = v304;
  v78 = kDQuadParamTable[160 * v304 + 6 + 10 * v345];
  v316 = kDQuadParamTable[160 * v305 + 6 + 10 * v344];
  v75 = v316;
  v317 = v78;
  v318[0] = v316;
  v318[1] = v78;
  if (*(&v344 + (v345 >= v344)) == *(&v344 + (v345 < v344)))
  {
    v79 = v316;
  }

  else
  {
    v80 = v318[v345 < v344];
    v79 = v316;
    if (v80 >= 1)
    {
      *(&v316 + (v345 < v344)) = 0;
      *(&v316 + v76) += v80;
      v79 = v316;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v84 = v81[4];
  v83 = v81[5];
  v301 = v84;
  v299 = v83;
  v85 = v79 - v75;
  if (v85 < 0)
  {
    v87 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v87[7] < -v85)
    {
      v299 = --v83;
      if (!v87[8])
      {
        v86 = -1;
LABEL_177:
        v301 = v86 + v84;
      }
    }
  }

  else if (v85)
  {
    v83 += v85;
    v299 = v83;
    v86 = v85;
    goto LABEL_177;
  }

  v89 = v72 == 5 && v73 == 1 && v85 < 2;
  v90 = v89;
  if (v288 == 4)
  {
    v91 = 1 << (v313 - 1);
    if (v72 == 3)
    {
      v92 = -31745;
    }

    else
    {
      v92 = -1;
    }

    if (v72 == 4)
    {
      v93 = -2139095041;
    }

    else
    {
      v93 = v92;
    }

    if (v282)
    {
      if (v294)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v330 | v93) == 0xFFFFFFFF || v330 == v91)
      {
        v90 = 1;
      }

      if (!v295)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v293)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v334 | v93) == 0xFFFFFFFF || v334 == v91)
      {
        v90 = 1;
      }

      if (!v292)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v290)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v338 | v93) == 0xFFFFFFFF || v338 == v91)
      {
        v90 = 1;
      }

      if (!v291)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v289)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v328 | v93) == 0xFFFFFFFF || v328 == v91)
      {
        v90 = 1;
      }

      if (!v294)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v295)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v332 | v93) == 0xFFFFFFFF || v332 == v91)
      {
        v90 = 1;
      }

      if (!v293)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v292)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v336 | v93) == 0xFFFFFFFF || v336 == v91)
      {
        v90 = 1;
      }

      if (!v290)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v291)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v340 | v93) == 0xFFFFFFFF || v340 == v91)
      {
        v90 = 1;
      }

      if (!v289)
      {
LABEL_204:
        if ((v342 | v93) == 0xFFFFFFFF || v342 == v91)
        {
          v90 = 1;
        }
      }
    }
  }

  v89 = v82 >> v83 > 0x10;
  v95 = v282;
  if (v89)
  {
    v95 = 1;
  }

  v96 = v95 | v90;
  v97 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v98 = *(v97 + 1);
  v99 = v97[4];
  v100 = v97[5];
  v300 = v99;
  v298 = v100;
  v101 = v317 - v78;
  if (v101 < 0)
  {
    v103 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v103[7] < -v101)
    {
      v298 = --v100;
      if (!v103[8])
      {
        v102 = -1;
LABEL_216:
        v300 = v102 + v99;
      }
    }
  }

  else if (v101)
  {
    v100 += v101;
    v298 = v100;
    v102 = v101;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v96 |= v101 < 2;
  }

  v278 = v73;
  if (v288 == 4)
  {
    v104 = 1 << (v312 - 1);
    if (v77 == 3)
    {
      v105 = -31745;
    }

    else
    {
      v105 = -1;
    }

    if (v77 == 4)
    {
      v106 = -2139095041;
    }

    else
    {
      v106 = v105;
    }

    if (v282)
    {
      if (v294)
      {
        goto LABEL_231;
      }

LABEL_402:
      v202 = (v331 | v106) == 0xFFFFFFFF || v331 == v104;
      v96 |= v202;
      if (!v295)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v293)
      {
        goto LABEL_233;
      }

LABEL_416:
      v206 = (v335 | v106) == 0xFFFFFFFF || v335 == v104;
      v96 |= v206;
      if (!v292)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v290)
      {
        goto LABEL_235;
      }

LABEL_430:
      v210 = (v339 | v106) == 0xFFFFFFFF || v339 == v104;
      v96 |= v210;
      if (v291)
      {
        goto LABEL_243;
      }

LABEL_236:
      v108 = (v341 | v106) == 0xFFFFFFFF || v341 == v104;
      v96 |= v108;
      goto LABEL_243;
    }

    v200 = (v329 | v106) == 0xFFFFFFFF || v329 == v104;
    v96 |= v200;
    if (!v294)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v295)
    {
      goto LABEL_232;
    }

LABEL_409:
    v204 = (v333 | v106) == 0xFFFFFFFF || v333 == v104;
    v96 |= v204;
    if (!v293)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v292)
    {
      goto LABEL_234;
    }

LABEL_423:
    v208 = (v337 | v106) == 0xFFFFFFFF || v337 == v104;
    v96 |= v208;
    if (!v290)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v291)
    {
      goto LABEL_236;
    }

LABEL_243:
    v109 = &v332;
    v110 = v320;
    if (!v289)
    {
      v112 = (v343 | v106) == 0xFFFFFFFF || v343 == v104;
      v96 |= v112;
    }

    v280 = v96;
  }

  else
  {
    v280 = v96;
    v109 = &v332;
    v110 = v320;
  }

  v113 = 0;
  v114 = v282;
  if (v98 >> v100 > 0x10)
  {
    v114 = 1;
  }

  v279 = v114;
  v297 = 0;
  v296 = 0;
  v115 = &v313;
  v116 = &v311;
  v315 = 0;
  v287 = &v307;
  v117 = &v344;
  v118 = &v305;
  v285 = v303;
  v119 = &v301;
  v120 = &v299;
  memset(v314, 0, sizeof(v314));
  v121 = &v297;
  v122 = 1;
  v123 = v319;
  v124 = &v328;
  v125 = &v323 + 4;
  v126 = &v322 + 4;
  v127 = &v323;
  v129 = &v321 + 4;
  v128 = &v322;
  v130 = &v334;
  v131 = &v321;
  v132 = &v330;
  v134 = &v338;
  v133 = &v336;
  v136 = &v342;
  v135 = &v340;
  do
  {
    v137 = 0;
    v138 = 0;
    v139 = *v115;
    if (v139 >= *v119)
    {
      v140 = *v119;
    }

    else
    {
      v140 = v139;
    }

    *v119 = v140;
    v141 = &kDQuadParamTable[160 * *v118 + 10 * *v117];
    if (v141[5])
    {
      v142 = v139;
    }

    else
    {
      v142 = 0;
    }

    v143 = *v120;
    if (v142 < *v120)
    {
      v143 = v142;
    }

    v286 = v122;
    *v120 = v143;
    v144 = -1 << v139;
    v145 = *(v141 + 1);
    v146 = *v116 & (-1 << (v139 - v140));
    *v121 = v146;
    v147 = v145 >> v143;
    v148 = *v124 - v146;
    if (v282)
    {
      v148 = 0;
    }

    *v123 = v148;
    v149 = *v132 - v146;
    if (v294)
    {
      v149 = 0;
    }

    *v110 = v149;
    v150 = *v109 - v146;
    if (v295)
    {
      v150 = 0;
    }

    *v131 = v150;
    v151 = *v130 - v146;
    if (v293)
    {
      v151 = 0;
    }

    *v129 = v151;
    v152 = *v133 - v146;
    if (v292)
    {
      v152 = 0;
    }

    *v128 = v152;
    v153 = *v134 - v146;
    if (v290)
    {
      v153 = 0;
    }

    *v126 = v153;
    v154 = *v135 - v146;
    if (v291)
    {
      v154 = 0;
    }

    *v127 = v154;
    v155 = *v136 - v146;
    if (v289)
    {
      v155 = 0;
    }

    *v125 = v155;
    if (v147 <= 1)
    {
      v156 = 1;
    }

    else
    {
      v156 = v145 >> v143;
    }

    v157 = &v319[32 * v113];
    v158 = 4 * v113;
    v159 = 4 * *v287;
    v160 = v314 + 28 * v113;
    v161 = &byte_29D2F3081;
    do
    {
      if (v159 != v137)
      {
        if (v143)
        {
          v162 = *&v157[v137] / v156;
        }

        else
        {
          LODWORD(v162) = 0;
        }

        *&v160[4 * v138] = v162;
        if (v147 >= 2)
        {
          v163 = *&v157[v137];
          if (v163)
          {
            if (v163 / v156 * v156 == v163 && ((v163 / v156) & 1) != 0)
            {
              if (v146 || v162 != 1)
              {
                if ((v288 | 2) != 3 || (v165 = *(&v328 + v158), v166 = *v285, v165 != v166) && ((v288 | 2) != 3 || v156 + v166 != v165))
                {
                  LODWORD(v162) = v162 - 1;
                  *&v160[4 * v138] = v162;
                }
              }

              else
              {
                LODWORD(v162) = 1;
              }
            }
          }
        }

        if (v162 >> v143 || (*(&v328 + v158) ^ v144) == 0xFFFFFFFF)
        {
          *&v160[4 * v138] = ~(-1 << v143);
        }

        if (*v161 >= a5 || *(v161 - 1) >= a4)
        {
          *&v160[4 * v138] = 0;
        }

        ++v138;
      }

      v137 += 4;
      v158 += 8;
      v161 += 2;
    }

    while (v137 != 32);
    v122 = 0;
    v115 = &v312;
    v116 = &v310;
    v287 = &v306;
    v118 = &v304;
    v285 = v302;
    v119 = &v300;
    v120 = &v298;
    v121 = &v296;
    v110 = &v324 + 4;
    v123 = &v324;
    v129 = &v325 + 4;
    v131 = &v325;
    v126 = &v326 + 4;
    v128 = &v326;
    v125 = &v327 + 4;
    v127 = &v327;
    v132 = &v331;
    v124 = &v329;
    v130 = &v335;
    v109 = &v333;
    v134 = &v339;
    v133 = &v337;
    v136 = &v343;
    v135 = &v341;
    v117 = &v345;
    v113 = 1;
  }

  while ((v286 & 1) != 0);
  v167 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v168 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if ((v279 | v280))
  {
    v169 = 0;
    v170 = 0;
    v171 = v313;
    v172 = v313 - 4;
    v173 = v312;
    v174 = v312 - 4;
    v175 = 8 * (a1 & 7);
    while (1)
    {
      v176 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v169;
      v177 = v176[1] < a5 && a4 > *v176;
      v178 = !v177;
      if (v177)
      {
        v179 = *(&v328 + 2 * v169) >> 4;
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v179 = 0;
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v171 != 4 && v175 - v168 + (v170 << 6) + v172 <= 0x60)
      {
        v180 = 0;
        v181 = v172;
        do
        {
          v182 = 64 - v175;
          if (64 - v175 >= v181)
          {
            v182 = v181;
          }

          v167[v170] |= ((v179 >> v180) & ~(-1 << v182)) << v175;
          v180 += v182;
          v183 = v182 + v175;
          v170 += v183 >> 6;
          v175 = v183 & 0x3F;
          v181 -= v182;
        }

        while (v181);
      }

LABEL_331:
      if (v178)
      {
        v184 = 0;
        if (v174 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v184 = *(&v328 + 2 * v169 + 1) >> 4;
        if (v174 <= 0x100)
        {
LABEL_335:
          if (v173 != 4 && v175 - v168 + (v170 << 6) + v174 <= 0x60)
          {
            v185 = 0;
            v186 = v174;
            do
            {
              v187 = 64 - v175;
              if (64 - v175 >= v186)
              {
                v187 = v186;
              }

              v167[v170] |= ((v184 >> v185) & ~(-1 << v187)) << v175;
              v185 += v187;
              v188 = v187 + v175;
              v170 += v188 >> 6;
              v175 = v188 & 0x3F;
              v186 -= v187;
            }

            while (v186);
          }
        }
      }

      if (++v169 == 8)
      {
        return (v279 | v280) & 1;
      }
    }
  }

  if (v311 | v278)
  {
    if (v278 <= 2)
    {
      v189 = 0;
      v190 = 0;
      v191 = v278 + 1;
      goto LABEL_439;
    }

    v212 = 0;
    v191 = 0;
    v211 = 0;
    v189 = (v278 + 6) & 7;
    v190 = 1;
  }

  else
  {
    v189 = 0;
    v190 = 0;
    v191 = 0;
LABEL_439:
    v211 = 1;
    v212 = 2;
  }

  v213 = (v189 << v168) | *v167;
  *v167 = v213;
  v214 = v168 | 3;
  v215 = v345;
  if (v310 | v345)
  {
    if (v345 < 3)
    {
      v216 = 0;
      v217 = 0;
      v218 = v345 + 1;
      goto LABEL_445;
    }

    v220 = 0;
    v218 = 0;
    v219 = 0;
    v216 = (v345 + 6) & 7;
    v217 = 1;
  }

  else
  {
    v216 = 0;
    v217 = 0;
    v218 = 0;
LABEL_445:
    v219 = 1;
    v220 = 2;
  }

  if ((v214 - v168) <= 0x5D)
  {
    *v167 = (v216 << v214) | v213;
    v214 = v168 | 6;
  }

  if (!v211)
  {
    v222 = 0;
    v223 = 6;
    if (v219)
    {
      goto LABEL_462;
    }

LABEL_455:
    v224 = v313;
    if (!v278)
    {
      goto LABEL_470;
    }

    goto LABEL_474;
  }

  v221 = v212;
  if (v214 - v168 + v212 > 0x60)
  {
    v190 = 1;
  }

  if (v190)
  {
    v222 = 0;
  }

  else
  {
    v222 = 0;
    v225 = 0;
    do
    {
      v226 = 64 - v214;
      if (64 - v214 >= v221)
      {
        v226 = v221;
      }

      v167[v222] |= ((v191 >> v225) & ~(-1 << v226)) << v214;
      v225 += v226;
      v227 = v226 + v214;
      v222 += v227 >> 6;
      v214 = v227 & 0x3F;
      v221 -= v226;
    }

    while (v221);
  }

  v223 = v212 + 6;
  if (!v219)
  {
    goto LABEL_455;
  }

LABEL_462:
  v228 = v220;
  if (v214 - v168 + (v222 << 6) + v220 > 0x60)
  {
    v217 = 1;
  }

  if ((v217 & 1) == 0)
  {
    v229 = 0;
    do
    {
      v230 = 64 - v214;
      if (64 - v214 >= v228)
      {
        v230 = v228;
      }

      v167[v222] |= ((v218 >> v229) & ~(-1 << v230)) << v214;
      v229 += v230;
      v231 = v230 + v214;
      v222 += v231 >> 6;
      v214 = v231 & 0x3F;
      v228 -= v230;
    }

    while (v228);
  }

  v223 += v220;
  v224 = v313;
  if (!v278)
  {
LABEL_470:
    if (v224 != 2 && v224 < 0x10)
    {
      v232 = v312;
      if (!v215)
      {
        goto LABEL_535;
      }

LABEL_482:
      v239 = v300;
      if (v300 <= 0x100 && v300 && v214 - v168 + (v222 << 6) + v300 <= 0x60)
      {
        v240 = 0;
        v241 = v296 >> (v232 - v300);
        v242 = v300;
        do
        {
          v243 = 64 - v214;
          if (64 - v214 >= v242)
          {
            v243 = v242;
          }

          v167[v222] |= ((v241 >> v240) & ~(-1 << v243)) << v214;
          v240 += v243;
          v244 = v243 + v214;
          v222 += v244 >> 6;
          v214 = v244 & 0x3F;
          v242 -= v243;
        }

        while (v242);
      }

      v223 += v239;
      goto LABEL_490;
    }
  }

LABEL_474:
  v233 = v301;
  if (v301 <= 0x100 && v301 && v214 - v168 + (v222 << 6) + v301 <= 0x60)
  {
    v234 = 0;
    v235 = v297 >> (v224 - v301);
    v236 = v301;
    do
    {
      v237 = 64 - v214;
      if (64 - v214 >= v236)
      {
        v237 = v236;
      }

      v167[v222] |= ((v235 >> v234) & ~(-1 << v237)) << v214;
      v234 += v237;
      v238 = v237 + v214;
      v222 += v238 >> 6;
      v214 = v238 & 0x3F;
      v236 -= v237;
    }

    while (v236);
  }

  v223 += v233;
  v232 = v312;
  if (v215)
  {
    goto LABEL_482;
  }

LABEL_535:
  if (v232 == 2 || v232 >= 0x10)
  {
    goto LABEL_482;
  }

LABEL_490:
  v245 = v299;
  if (v299)
  {
    if ((v214 - v168 + (v222 << 6) + 3) <= 0x60)
    {
      v246 = 0;
      v247 = v307;
      v248 = 3;
      do
      {
        v249 = 64 - v214;
        if (64 - v214 >= v248)
        {
          v249 = v248;
        }

        v167[v222] |= ((v247 >> v246) & ~(-1 << v249)) << v214;
        v246 += v249;
        v250 = v249 + v214;
        v222 += v250 >> 6;
        v214 = v250 & 0x3F;
        v248 -= v249;
      }

      while (v248);
    }

    v223 += 3;
  }

  v251 = v298;
  if (v298)
  {
    if ((v214 - v168 + (v222 << 6) + 3) <= 0x60)
    {
      v252 = 0;
      v253 = v306;
      v254 = 3;
      do
      {
        v255 = 64 - v214;
        if (64 - v214 >= v254)
        {
          v255 = v254;
        }

        v167[v222] |= ((v253 >> v252) & ~(-1 << v255)) << v214;
        v252 += v255;
        v256 = v255 + v214;
        v222 += v256 >> 6;
        v214 = v256 & 0x3F;
        v254 -= v255;
      }

      while (v254);
    }

    v223 += 3;
  }

  v257 = 96 - v223;
  v258 = (96 - v223) / 7u;
  v259 = v257 % 7;
  if ((v259 - 257) >= 0xFFFFFF00 && v214 - v168 + (v222 << 6) + v259 <= 0x60)
  {
    do
    {
      v260 = 64 - v214;
      if (64 - v214 >= v259)
      {
        v260 = v259;
      }

      v261 = v260 + v214;
      v222 += v261 >> 6;
      v214 = v261 & 0x3F;
      v259 -= v260;
    }

    while (v259);
  }

  v262 = 0;
  v263 = v251 + v245;
  while (2)
  {
    if (v245 && v245 <= 0x100 && v214 - v168 + (v222 << 6) + v245 <= 0x60)
    {
      v264 = 0;
      v265 = *(v314 + v262);
      v266 = v245;
      do
      {
        v267 = 64 - v214;
        if (64 - v214 >= v266)
        {
          v267 = v266;
        }

        v167[v222] |= ((v265 >> v264) & ~(-1 << v267)) << v214;
        v264 += v267;
        v268 = v267 + v214;
        v222 += v268 >> 6;
        v214 = v268 & 0x3F;
        v266 -= v267;
      }

      while (v266);
    }

    if (v251)
    {
      if (v251 <= 0x100 && v214 - v168 + (v222 << 6) + v251 <= 0x60)
      {
        v269 = 0;
        v270 = *(&v314[1] + v262 + 3);
        v271 = v251;
        do
        {
          v272 = 64 - v214;
          if (64 - v214 >= v271)
          {
            v272 = v271;
          }

          v167[v222] |= ((v270 >> v269) & ~(-1 << v272)) << v214;
          v269 += v272;
          v273 = v272 + v214;
          v222 += v273 >> 6;
          v214 = v273 & 0x3F;
          v271 -= v272;
        }

        while (v271);
      }

      v274 = v258 - v263;
      if (v258 != v263)
      {
LABEL_528:
        if (v274 <= 0x100 && v214 - v168 + (v222 << 6) + v274 <= 0x60)
        {
          do
          {
            v275 = 64 - v214;
            if (64 - v214 >= v274)
            {
              v275 = v274;
            }

            v276 = v275 + v214;
            v222 += v276 >> 6;
            v214 = v276 & 0x3F;
            v274 -= v275;
          }

          while (v274);
        }
      }
    }

    else
    {
      v274 = v258 - v245;
      if (v258 != v245)
      {
        goto LABEL_528;
      }
    }

    if (++v262 != 7)
    {
      continue;
    }

    return (v279 | v280) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v173 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 & 7;
  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 95) < 0xFFFFFFFFFFFFFF9FLL)
    {
      v11 = 0;
LABEL_12:
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 2;
    do
    {
      v34 = 64 - v8;
      if (64 - v8 >= v33)
      {
        v34 = v33;
      }

      v31 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v34)) << v32;
      v32 += v34;
      v11 += (v34 + v8) >> 6;
      v8 = (v34 + v8) & 0x3F;
      v33 -= v34;
    }

    while (v33);
    v35 = v31 & 3;
    if (v35 > 1)
    {
      v12 = 0;
      if (v35 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      if (!v35)
      {
        goto LABEL_12;
      }

      v13 = 0;
      v12 = 1023;
    }

LABEL_13:
    v14 = 8;
    v171 = v13;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 + 2;
  v14 = 6;
  v171 = v10 + 2;
  if (v9)
  {
LABEL_9:
    v163 = 0;
    v15 = v9 + 2;
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 - v4 + (v11 << 6) - 95) < 0xFFFFFFFFFFFFFF9FLL)
  {
    v14 += 2;
LABEL_16:
    v163 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v36 = 0;
  v37 = 0;
  v38 = 2;
  do
  {
    v39 = 64 - v8;
    if (64 - v8 >= v38)
    {
      v39 = v38;
    }

    v36 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v39)) << v37;
    v37 += v39;
    v40 = v39 + v8;
    v11 += v40 >> 6;
    v8 = v40 & 0x3F;
    v38 -= v39;
  }

  while (v38);
  v14 += 2;
  v41 = v36 & 3;
  if (v41 > 1)
  {
    v163 = 0;
    if (v41 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    if (!v41)
    {
      goto LABEL_16;
    }

    v15 = 0;
    v163 = 1023;
  }

LABEL_17:
  v172 = v15;
  v17 = v15 >= v13;
  v18 = v15 < v13;
  v19 = v15;
  v20 = dword_29D2F3370[10 * v15 + 6];
  v168 = dword_29D2F3370[10 * v13 + 6];
  v16 = v168;
  v169 = v20;
  v170[0] = v168;
  v170[1] = v20;
  if (*(&v171 + (v15 >= v13)) == *(&v171 + (v15 < v13)))
  {
    v21 = v168;
  }

  else
  {
    v22 = v170[v15 < v13];
    v21 = v168;
    if (v22 >= 1)
    {
      *(&v168 + v18) = 0;
      *(&v168 + v17) += v22;
      v21 = v168;
    }
  }

  v23 = kDQuadParamTable;
  v24 = &kDQuadParamTable[10 * v13];
  v25 = v24[164];
  v26 = v24[165];
  v27 = v21 - v16;
  if (v27 >= 0)
  {
    v28 = v26;
    if (!v27)
    {
      goto LABEL_43;
    }

    v28 = v27 + v26;
    goto LABEL_24;
  }

  v29 = &kDQuadParamTable[10 * v13];
  if (v29[167] >= -v27)
  {
    v28 = v26;
  }

  else
  {
    v30 = v29 + 160;
    v28 = v26 - 1;
    if (!v30[8])
    {
      v27 = -1;
LABEL_24:
      v25 += v27;
    }
  }

LABEL_43:
  if (v25 >= 0xA)
  {
    v42 = 10;
  }

  else
  {
    v42 = v25;
  }

  if (v26)
  {
    v43 = 10;
  }

  else
  {
    v43 = 0;
  }

  if (v43 >= v28)
  {
    v44 = v28;
  }

  else
  {
    v44 = v43;
  }

  v45 = &kDQuadParamTable[10 * v19];
  v46 = v45[164];
  v47 = v45[165];
  v48 = v169 - v20;
  if (v48 < 0)
  {
    v50 = -v48;
    v51 = &kDQuadParamTable[10 * v19];
    if (v51[167] >= v50)
    {
      LODWORD(v49) = v47;
      goto LABEL_60;
    }

    LODWORD(v49) = v47 - 1;
    if (!v51[168])
    {
      v48 = -1;
      goto LABEL_55;
    }
  }

  else
  {
    LODWORD(v49) = v47;
    if (v48)
    {
      LODWORD(v49) = v48 + v47;
LABEL_55:
      v46 += v48;
    }
  }

LABEL_60:
  if (v46 >= 0xA)
  {
    v52 = 10;
  }

  else
  {
    v52 = v46;
  }

  if (v47)
  {
    v53 = 10;
  }

  else
  {
    v53 = 0;
  }

  if (v53 >= v49)
  {
    v49 = v49;
  }

  else
  {
    v49 = v53;
  }

  if (v13)
  {
    v54 = 0;
    if (v25 && (v8 - v4 + (v11 << 6) + v42) <= 0x60)
    {
      v54 = 0;
      v55 = 0;
      v56 = v42;
      do
      {
        v57 = 64 - v8;
        if (64 - v8 >= v56)
        {
          v57 = v56;
        }

        v54 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v57)) << v55;
        v55 += v57;
        v58 = v57 + v8;
        v11 += v58 >> 6;
        v8 = v58 & 0x3F;
        v56 -= v57;
      }

      while (v56);
    }

    v12 = v54 << (10 - v42);
    v14 += v42;
  }

  if (v19)
  {
    v59 = 0;
    if (v46 && (v8 - v4 + (v11 << 6) + v52) <= 0x60)
    {
      v59 = 0;
      v60 = 0;
      v61 = v52;
      do
      {
        v62 = 64 - v8;
        if (64 - v8 >= v61)
        {
          v62 = v61;
        }

        v59 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v62)) << v60;
        v60 += v62;
        v63 = v62 + v8;
        v11 += v63 >> 6;
        v8 = v63 & 0x3F;
        v61 -= v62;
      }

      while (v61);
    }

    v163 = v59 << (10 - v52);
    v14 += v52;
  }

  v164 = 0;
  v165 = 0;
  if (v44)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x60)
    {
      v64 = 0;
      v65 = 0;
      v66 = 3;
      do
      {
        v67 = 64 - v8;
        if (64 - v8 >= v66)
        {
          v67 = v66;
        }

        v64 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v67)) << v65;
        v65 += v67;
        v68 = v67 + v8;
        v11 += v68 >> 6;
        v8 = v68 & 0x3F;
        v66 -= v67;
      }

      while (v66);
    }

    else
    {
      v64 = 0;
    }

    v165 = v64;
    v14 += 3;
  }

  if (v49)
  {
    if ((v8 - v4 + (v11 << 6) + 3) <= 0x60)
    {
      v69 = 0;
      v70 = 0;
      v71 = 3;
      do
      {
        v72 = 64 - v8;
        if (64 - v8 >= v71)
        {
          v72 = v71;
        }

        v69 |= ((*(v3 + 8 * v11) >> v8) & ~(-1 << v72)) << v70;
        v70 += v72;
        v73 = v72 + v8;
        v11 += v73 >> 6;
        v8 = v73 & 0x3F;
        v71 -= v72;
      }

      while (v71);
    }

    else
    {
      v69 = 0;
    }

    v164 = v69;
    v14 += 3;
  }

  v74 = 0;
  v75 = a3 & 0xFFFFFFFD;
  v76 = 96 - v14;
  v77 = (96 - v14) / 7u;
  v78 = (v8 | (v11 << 6)) + v76 % 7;
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  do
  {
    v80 = v78 >> 6;
    v81 = v78 & 0x3F;
    if (v44)
    {
      if (v81 - v4 + (v78 & 0xFFFFFFFFFFFFFFC0) + v44 <= 0x60)
      {
        v82 = 0;
        v83 = 0;
        v84 = v44;
        do
        {
          v85 = 64 - v81;
          if (64 - v81 >= v84)
          {
            v85 = v84;
          }

          v82 |= ((*(v3 + 8 * v80) >> v81) & ~(-1 << v85)) << v83;
          v83 += v85;
          v86 = v85 + v81;
          v80 += v86 >> 6;
          v81 = v86 & 0x3F;
          v84 -= v85;
        }

        while (v84);
      }

      else
      {
        v82 = 0;
      }

      *(v166 + v74) = v82;
    }

    if (v49)
    {
      if (v81 - v4 + (v80 << 6) + v49 <= 0x60)
      {
        v87 = 0;
        v88 = 0;
        v89 = v49;
        do
        {
          v90 = 64 - v81;
          if (64 - v81 >= v89)
          {
            v90 = v89;
          }

          v87 |= ((*(v3 + 8 * v80) >> v81) & ~(-1 << v90)) << v88;
          v88 += v90;
          v91 = v90 + v81;
          v80 += v91 >> 6;
          v81 = v91 & 0x3F;
          v89 -= v90;
        }

        while (v89);
      }

      else
      {
        v87 = 0;
      }

      *(&v166[1] + v74 + 3) = v87;
      v79 = v49 + v44;
    }

    else
    {
      v79 = v44;
    }

    v78 = (v81 | (v80 << 6)) + v77 - v79;
    ++v74;
  }

  while (v74 != 7);
  v92 = 0;
  v93 = &v171;
  v94 = &v165;
  result = 0x1000003FFLL;
  v96 = 1;
  v97 = v166;
  v98 = v44;
  do
  {
    v101 = v96;
    v102 = *&v23[10 * *v93 + 162];
    if (v102 >> v98 <= 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v102 >> v98;
    }

    v104 = v103 >> 1;
    v105 = (1 << (10 - v42)) >> 1;
    if (v103 >> 1 < v105)
    {
      v105 = v103 >> 1;
    }

    v106 = v12;
    v107 = 512 - v12;
    if (v12)
    {
      v108 = v105;
    }

    else
    {
      v108 = 0;
    }

    v109 = v12 == 512;
    v110 = (a2 + 4 * v92);
    if (v98)
    {
      v111 = v23;
      v112 = v102 + v106;
      v113 = -1 << v98;
      v114 = *v94;
      v115 = v107 / v103;
      if (!*v94)
      {
        v119 = 0;
        v118 = v108;
        v117 = v109;
        goto LABEL_161;
      }

      v116 = *v97;
      v117 = v115 == v116;
      if (v106 | v116)
      {
        if (v112 >= 0x400 && (v113 ^ v116) == -1)
        {
          v119 = 1;
          v118 = 1023;
LABEL_161:
          v122 = v118 + v106;
          if (a3 != 4 || (v123 = 1023, (v122 | 0x80000000) >> 22 != 1022))
          {
            if (v122 >= 0x400)
            {
              v123 = 1023;
            }

            else
            {
              v123 = v122;
            }
          }

          v124 = v123 ^ 0x200;
          if (v117)
          {
            v124 = 0;
          }

          if (v75 != 1)
          {
            v124 = v123;
          }

          *(a2 + 4 * v92) = v124;
          if (v114 == 1)
          {
            v125 = v108;
            v126 = v109;
          }

          else
          {
            v127 = *(v166 + 7 * v92 + v119);
            v126 = v115 == v127;
            if (v106 | v127)
            {
              if (v112 >= 0x400 && (v113 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 1023;
              }

              else
              {
                v125 = v104 + v103 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v119;
          }

          v128 = v125 + v106;
          if (a3 != 4 || (v129 = 1023, (v128 | 0x80000000) >> 22 != 1022))
          {
            if (v128 >= 0x400)
            {
              v129 = 1023;
            }

            else
            {
              v129 = v128;
            }
          }

          v130 = v129 ^ 0x200;
          if (v126)
          {
            v130 = 0;
          }

          if (v75 != 1)
          {
            v130 = v129;
          }

          v110[2] = v130;
          if (v114 == 2)
          {
            v131 = v108;
            v132 = v109;
          }

          else
          {
            v133 = *(v166 + 7 * v92 + v119);
            v132 = v115 == v133;
            if (v106 | v133)
            {
              if (v112 >= 0x400 && (v113 ^ v133) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v131 = 1023;
              }

              else
              {
                v131 = v104 + v103 * v133;
              }
            }

            else
            {
              v131 = 0;
            }

            ++v119;
          }

          v134 = v131 + v106;
          if (a3 != 4 || (v135 = 1023, (v134 | 0x80000000) >> 22 != 1022))
          {
            if (v134 >= 0x400)
            {
              v135 = 1023;
            }

            else
            {
              v135 = v134;
            }
          }

          v136 = v135 ^ 0x200;
          if (v132)
          {
            v136 = 0;
          }

          if (v75 != 1)
          {
            v136 = v135;
          }

          v110[4] = v136;
          if (v114 == 3)
          {
            v137 = v108;
            v138 = v109;
          }

          else
          {
            v139 = *(v166 + 7 * v92 + v119);
            v138 = v115 == v139;
            if (v106 | v139)
            {
              if (v112 >= 0x400 && (v113 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v137 = 1023;
              }

              else
              {
                v137 = v104 + v103 * v139;
              }
            }

            else
            {
              v137 = 0;
            }

            ++v119;
          }

          v140 = v137 + v106;
          if (a3 != 4 || (v141 = 1023, (v140 | 0x80000000) >> 22 != 1022))
          {
            if (v140 >= 0x400)
            {
              v141 = 1023;
            }

            else
            {
              v141 = v140;
            }
          }

          v142 = v141 ^ 0x200;
          if (v138)
          {
            v142 = 0;
          }

          if (v75 != 1)
          {
            v142 = v141;
          }

          v110[6] = v142;
          if (v114 == 4)
          {
            v143 = v108;
            v144 = v109;
          }

          else
          {
            v145 = *(v166 + 7 * v92 + v119);
            v144 = v115 == v145;
            if (v106 | v145)
            {
              if (v112 >= 0x400 && (v113 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v143 = 1023;
              }

              else
              {
                v143 = v104 + v103 * v145;
              }
            }

            else
            {
              v143 = 0;
            }

            ++v119;
          }

          v146 = v143 + v106;
          if (a3 != 4 || (v147 = 1023, (v146 | 0x80000000) >> 22 != 1022))
          {
            if (v146 >= 0x400)
            {
              v147 = 1023;
            }

            else
            {
              v147 = v146;
            }
          }

          v148 = v147 ^ 0x200;
          if (v144)
          {
            v148 = 0;
          }

          if (v75 != 1)
          {
            v148 = v147;
          }

          v110[8] = v148;
          if (v114 == 5)
          {
            v149 = v108;
            v150 = v109;
          }

          else
          {
            v151 = *(v166 + 7 * v92 + v119);
            v150 = v115 == v151;
            if (v106 | v151)
            {
              if (v112 >= 0x400 && (v113 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v149 = 1023;
              }

              else
              {
                v149 = v104 + v103 * v151;
              }
            }

            else
            {
              v149 = 0;
            }

            ++v119;
          }

          v152 = v149 + v106;
          if (a3 != 4 || (v153 = 1023, (v152 | 0x80000000) >> 22 != 1022))
          {
            if (v152 >= 0x400)
            {
              v153 = 1023;
            }

            else
            {
              v153 = v152;
            }
          }

          v154 = v153 ^ 0x200;
          if (v150)
          {
            v154 = 0;
          }

          if (v75 != 1)
          {
            v154 = v153;
          }

          v110[10] = v154;
          if (v114 == 6)
          {
            v155 = v108;
            v156 = v109;
          }

          else
          {
            v157 = *(v166 + 7 * v92 + v119);
            v156 = v115 == v157;
            if (v106 | v157)
            {
              if (v112 >= 0x400 && (v113 ^ v157) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v155 = 1023;
              }

              else
              {
                v155 = v104 + v103 * v157;
              }
            }

            else
            {
              v155 = 0;
            }

            ++v119;
          }

          v158 = v155 + v106;
          if (a3 != 4 || (v159 = 1023, (v158 | 0x80000000) >> 22 != 1022))
          {
            if (v158 >= 0x400)
            {
              v159 = 1023;
            }

            else
            {
              v159 = v158;
            }
          }

          v160 = v159 ^ 0x200;
          if (v156)
          {
            v160 = 0;
          }

          if (v75 != 1)
          {
            v160 = v159;
          }

          v110[12] = v160;
          if (v114 != 7)
          {
            v161 = *(v166 + 7 * v92 + v119);
            v109 = v115 == v161;
            if (v106 | v161)
            {
              if (v112 >= 0x400 && (v113 ^ v161) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v108 = 1023;
              }

              else
              {
                v108 = v104 + v103 * v161;
              }
            }

            else
            {
              v108 = 0;
            }
          }

          v162 = v108 + v106;
          if (a3 != 4 || (LODWORD(v99) = 1023, (v162 | 0x80000000) >> 22 != 1022))
          {
            if (v162 >= 0x400)
            {
              LODWORD(v99) = 1023;
            }

            else
            {
              LODWORD(v99) = v108 + v106;
            }
          }

          v100 = v99 ^ 0x200;
          if (v109)
          {
            v100 = 0;
          }

          if (v75 == 1)
          {
            LODWORD(v99) = v100;
          }

          v23 = v111;
          goto LABEL_129;
        }

        v118 = v104 + v103 * v116;
      }

      else
      {
        v118 = 0;
      }

      v119 = 1;
      goto LABEL_161;
    }

    if (a3 == 4)
    {
      if ((v106 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v99) = 1023;
      }

      else
      {
        v99 = 4286578687;
        if ((v106 & 0xFFC00000) != 0xFF800000)
        {
          v99 = v106;
        }

        if (v99 >= 0x400)
        {
          LODWORD(v99) = 1023;
        }
      }
    }

    else
    {
      if (v106 >= 0x3FF)
      {
        LODWORD(v99) = 1023;
      }

      else
      {
        LODWORD(v99) = v106;
      }

      v121 = v99 ^ 0x200;
      if (v103 > v107)
      {
        v121 = 0;
      }

      if (v75 == 1)
      {
        LODWORD(v99) = v121;
      }
    }

    *v110 = v99;
    v110[2] = v99;
    v110[4] = v99;
    v110[6] = v99;
    v110[8] = v99;
    v110[10] = v99;
    v110[12] = v99;
LABEL_129:
    v96 = 0;
    v110[14] = v99;
    v94 = &v164;
    v97 = &v166[1] + 3;
    v12 = v163;
    v98 = v49;
    LOBYTE(v42) = v52;
    v93 = &v172;
    v92 = 1;
  }

  while ((v101 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v528 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v10 = &a1->i8[a2];
    *v10 = 0u;
    *(v10 + 1) = 0u;
    v11 = &a1->i8[2 * a2];
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v12 = &a1->i8[2 * a2 + a2];
LABEL_6:
    *v12 = v9;
    *(v12 + 1) = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
    }

    v474 = v514;
    v475 = v512;
    v476 = v515;
    v477 = v513;
    v17 = v516;
    v18 = v517;
    v19 = v519;
    v478 = v518;
    v470 = v522;
    v471 = v520;
    v472 = v523;
    v473 = v521;
    v21 = v524;
    v20 = v525;
    v23 = v526;
    v22 = v527;
    v24 = a3 + 12;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
    }

    v508 = v527;
    v509 = v519;
    v506 = v525;
    v507 = v517;
    v504 = v526;
    v505 = v518;
    v502 = v524;
    v503 = v516;
    v500 = v523;
    v501 = v515;
    v498 = v521;
    v499 = v513;
    v496 = v522;
    v497 = v514;
    v494 = v520;
    v495 = v512;
    v492 = v20;
    v493 = v22;
    v490 = v23;
    v491 = v19;
    v489 = v21;
    v479 = v18;
    v480 = v17;
    v25 = v5;
    v26 = a3 + 24;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
    }

    v27 = v513;
    v469 = v512;
    v28 = v514;
    v29 = v515;
    v483 = v518;
    v484 = v516;
    v488 = v519;
    v30 = v520;
    v31 = v521;
    v33 = v522;
    v32 = v523;
    v485 = v525;
    v486 = v517;
    v481 = v524;
    v482 = v526;
    v487 = v527;
    v34 = a3 + 36;
    if ((v25 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
    }

    v35.i16[0] = v475;
    v35.i16[1] = v474;
    v35.i16[2] = v471;
    v36.i16[0] = v477;
    v35.i16[3] = v470;
    v36.i16[1] = v476;
    v36.i16[2] = v473;
    v36.i16[3] = v472;
    v37.i16[0] = v469;
    v37.i16[1] = v28;
    v38.i16[0] = v27;
    v37.i16[2] = v30;
    v37.i16[3] = v33;
    v38.i16[1] = v29;
    v38.i16[2] = v31;
    v38.i16[3] = v32;
    v39.i16[0] = v479;
    v40.i16[0] = v480;
    v40.i16[1] = v478;
    v41.i16[0] = v512;
    v41.i16[1] = v514;
    v41.i16[2] = v520;
    v41.i16[3] = v522;
    v42.i16[0] = v513;
    v42.i16[1] = v515;
    v42.i16[2] = v521;
    v42.i16[3] = v523;
    v43.i16[0] = v516;
    v43.i16[1] = v518;
    v43.i16[2] = v524;
    v43.i16[3] = v526;
    v40.i16[2] = v489;
    v40.i16[3] = v490;
    v39.i16[1] = v491;
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x16uLL), vmovl_u16(vshl_n_s16(v35, 6uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x16uLL), vmovl_u16(vshl_n_s16(v37, 6uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x16uLL), vmovl_u16(vshl_n_s16(v40, 6uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 6uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x16uLL), v45);
    v45.i16[0] = v517;
    v45.i16[1] = v519;
    v45.i16[2] = v525;
    v45.i16[3] = v527;
    v47 = &a1->i8[a2];
    *v47 = v44;
    v47[1] = v46;
    v44.i16[0] = v495;
    v44.i16[1] = v497;
    v44.i16[2] = v494;
    v44.i16[3] = v496;
    v48 = &a1->i8[a2 + a2];
    v46.i16[0] = v499;
    v46.i16[1] = v501;
    v46.i16[2] = v498;
    v46.i16[3] = v500;
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x16uLL), vmovl_u16(vshl_n_s16(*v44.i8, 6uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49 = (v48 + a2);
    v41.i16[0] = v503;
    v41.i16[1] = v505;
    v41.i16[2] = v502;
    v41.i16[3] = v504;
    v42.i16[0] = v507;
    v42.i16[1] = v509;
    v42.i16[2] = v506;
    v42.i16[3] = v508;
    v8 = 48;
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x16uLL), vmovl_u16(vshl_n_s16(v41, 6uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x16uLL), vmovl_u16(vshl_n_s16(v43, 6uLL)));
    return v8;
  }

  switch(a4)
  {
    case 0x7Fu:
      v163 = *a3;
      v164 = *(a3 + 16);
      v165 = *(a3 + 32);
      v166 = *(a3 + 48);
      v167 = *(a3 + 64);
      v168 = *(a3 + 80);
      v169 = *(a3 + 96);
      v170 = *(a3 + 112);
      v171 = &a1->i8[a2];
      *a1 = vzip1q_s64(*a3, v164);
      a1[1] = vzip1q_s64(v167, v168);
      v172 = (a1 + 2 * a2);
      *v171 = vzip2q_s64(v163, v164);
      v171[1] = vzip2q_s64(v167, v168);
      *v172 = vzip1q_s64(v165, v166);
      v172[1] = vzip1q_s64(v169, v170);
      v173 = (v172 + a2);
      *v173 = vzip2q_s64(v165, v166);
      v173[1] = vzip2q_s64(v169, v170);
      return 128;
    case 0x4Fu:
      v51.i64[0] = 0xA000A000A000ALL;
      v51.i64[1] = 0xA000A000A000ALL;
      v52 = vmovl_u16(*&vpaddq_s16(v51, v51));
      v53 = vpaddq_s32(v52, v52).u64[0];
      v54.i64[0] = v53;
      v54.i64[1] = HIDWORD(v53);
      v55 = v54;
      v56 = vaddvq_s64(v54);
      v57 = 0uLL;
      if (v56 > 0x80)
      {
        v156 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v155 = 0uLL;
        v154 = 0uLL;
        v162 = 0uLL;
        v161 = 0uLL;
      }

      else
      {
        v58 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v59 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
        v60.i64[0] = v59.u32[0];
        v60.i64[1] = v59.u32[1];
        v61 = v60;
        v62 = vzip1q_s64(0, v55);
        v63 = 8 * (a3 & 7);
        v64 = v56 + v63;
        v65 = vaddq_s64(v62, vdupq_n_s64(v63));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v65)));
        if (v56 + v63 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v58[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v58[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v66);
        }

        v67 = vnegq_s64(v61);
        v68 = vshlq_u64(v66, v67);
        v69 = v64 & 0x3F;
        v70 = (v58 + 8 * (v64 >> 6));
        v71 = vaddq_s64(v62, vdupq_n_s64(v69));
        v72 = v56 + v64;
        v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
        if (v56 + v69 >= 0x81)
        {
          v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
        }

        v74 = vzip2q_s64(v66, v68);
        v75 = vzip1q_s64(v66, v68);
        v76 = vshlq_u64(v73, v67);
        v77 = vzip2q_s64(v73, v76);
        v78 = vzip1q_s64(v73, v76);
        v79 = v72 & 0x3F;
        v80 = (v58 + 8 * (v72 >> 6));
        v81 = vaddq_s64(v62, vdupq_n_s64(v79));
        v82 = v56 + v72;
        v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v81)));
        if (v56 + v79 >= 0x81)
        {
          v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v83);
        }

        v84 = vuzp1q_s32(v75, v74);
        v85 = vuzp1q_s32(v78, v77);
        v86 = vshlq_u64(v83, v67);
        v87 = vuzp1q_s32(vzip1q_s64(v83, v86), vzip2q_s64(v83, v86));
        v88 = v82 & 0x3F;
        v89 = (v58 + 8 * (v82 >> 6));
        v90 = vaddq_s64(v62, vdupq_n_s64(v88));
        v91 = v56 + v82;
        v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v90)));
        if (v56 + v88 >= 0x81)
        {
          v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
        }

        v93.i64[0] = 0x1000100010001;
        v93.i64[1] = 0x1000100010001;
        v94 = vshrq_n_u32(v84, 0xAuLL);
        v95 = vshrq_n_u32(v85, 0xAuLL);
        v96 = vshrq_n_u32(v87, 0xAuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xAuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xAuLL);
        v106.i64[0] = -1;
        v106.i64[1] = -1;
        v107 = vzip2q_s32(v84, v94);
        v108 = vzip1q_s32(v84, v94);
        v109 = vzip2q_s32(v85, v95);
        v110 = vzip1q_s32(v85, v95);
        v111 = vzip2q_s32(v87, v96);
        v112 = vzip1q_s32(v87, v96);
        v113 = vzip2q_s32(v98, v99);
        v114 = vzip1q_s32(v98, v99);
        v115 = vshlq_u64(v104, v67);
        v116 = vuzp1q_s32(vzip1q_s64(v104, v115), vzip2q_s64(v104, v115));
        v117 = vshrq_n_u32(v116, 0xAuLL);
        v118 = vzip2q_s32(v116, v117);
        v119 = vzip1q_s32(v116, v117);
        v120 = (v58 + 8 * (v103 >> 6));
        v121 = vaddq_s64(v62, vdupq_n_s64(v103 & 0x3F));
        v122 = v56 + v103;
        v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v121)));
        if (v56 + (v103 & 0x3F) >= 0x81)
        {
          v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v123);
        }

        v124 = vaddq_s16(v105, v106);
        v125 = vuzp1q_s16(v108, v107);
        v126 = vuzp1q_s16(v110, v109);
        v127 = vuzp1q_s16(v112, v111);
        v128 = vuzp1q_s16(v114, v113);
        v129 = vuzp1q_s16(v119, v118);
        v130 = vshlq_u64(v123, v67);
        v131 = vuzp1q_s32(vzip1q_s64(v123, v130), vzip2q_s64(v123, v130));
        v132 = vshrq_n_u32(v131, 0xAuLL);
        v133 = vuzp1q_s16(vzip1q_s32(v131, v132), vzip2q_s32(v131, v132));
        v134 = v56 + v122;
        v135 = v122 & 0x3F;
        v136 = vaddq_s64(v62, vdupq_n_s64(v135));
        v137 = (v58 + 8 * (v122 >> 6));
        v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
        if (v56 + v135 >= 0x81)
        {
          v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
        }

        v139 = vandq_s8(v124, v125);
        v140 = vandq_s8(v124, v126);
        v141 = vandq_s8(v124, v127);
        v142 = vandq_s8(v124, v128);
        v143 = vandq_s8(v124, v129);
        v144 = vandq_s8(v124, v133);
        v145 = vshlq_u64(v138, v67);
        v146 = vuzp1q_s32(vzip1q_s64(v138, v145), vzip2q_s64(v138, v145));
        v147 = vshrq_n_u32(v146, 0xAuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 6uLL);
        v153 = vshlq_n_s16(v140, 6uLL);
        v154 = vshlq_n_s16(v141, 6uLL);
        v155 = vshlq_n_s16(v142, 6uLL);
        v57 = vshlq_n_s16(v143, 6uLL);
        v156 = vshlq_n_s16(v144, 6uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xAuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 6uLL);
        v162 = vshlq_n_s16(v160, 6uLL);
      }

      v224 = &a1->i8[a2];
      *a1 = vzip1q_s64(v152, v153);
      a1[1] = vzip1q_s64(v57, v156);
      v225 = (a1 + 2 * a2);
      *v224 = vzip2q_s64(v152, v153);
      v224[1] = vzip2q_s64(v57, v156);
      *v225 = vzip1q_s64(v154, v155);
      v225[1] = vzip1q_s64(v161, v162);
      v226 = (v225 + a2);
      *v226 = vzip2q_s64(v154, v155);
      v226[1] = vzip2q_s64(v161, v162);
      return 80;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 12) & 0xFFC00000 | ((*a3 & 0x3FF) << 6));
      *a1 = v13;
      a1[1] = v13;
      v14 = (a1 + a2);
      *v14 = v13;
      v14[1] = v13;
      v15 = (a1 + 2 * a2);
      *v15 = v13;
      v15[1] = v13;
      v16 = (a1 + 2 * a2 + a2);
      *v16 = v13;
      v16[1] = v13;
      return 3;
    default:
      v174 = 8 * (a3 & 7);
      v175 = a3 & 0xFFFFFFFFFFFFFFF8;
      v176 = v174 + 18;
      v177 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v174;
      if (v174 >= 0x2F)
      {
        v177 |= *(v175 + 8) << (-8 * (a3 & 7u));
      }

      v178.i32[0] = v177;
      v178.i32[1] = v177 >> 5;
      v179 = vand_s8(v178, 0x1F0000001FLL);
      v180 = vuzp1_s16(v179, v179);
      v181.i32[0] = v177 >> 10;
      v181.i32[1] = v177 >> 14;
      v182 = vuzp1_s16(vadd_s32(vand_s8(v181, 0xF0000000FLL), 0x100000001), v180);
      v183 = v174 + 38;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x2D)
      {
        v186 |= v185[1] << -v184;
      }

      v187 = vdupq_lane_s32(v180, 0);
      v188 = vdupq_lane_s32(v182, 0);
      v189 = (8 * (a3 & 7)) | 0x180;
      v190.i64[0] = 0x3000300030003;
      v190.i64[1] = 0x3000300030003;
      v191 = vandq_s8(v187, v190);
      v192 = vbicq_s8(v188, vceqq_s16(v191, v190));
      v190.i64[0] = 0x202020202020202;
      v190.i64[1] = 0x202020202020202;
      v193 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v187.i8, 0x4000400040004)))), v190);
      if (vmaxvq_s8(v193) < 1)
      {
        v202 = 0;
        v223.i64[0] = -1;
        v223.i64[1] = -1;
        v219 = v192;
        v218 = v192;
        v217 = v192;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v216 = v192;
        v221.i64[0] = -1;
        v221.i64[1] = -1;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
      }

      else
      {
        v194 = vmovl_u8(*&vpaddq_s8(v193, v193));
        v195 = vmovl_u16(*&vpaddq_s16(v194, v194));
        v196 = vpaddq_s32(v195, v195).u64[0];
        v197.i64[0] = v196;
        v197.i64[1] = HIDWORD(v196);
        v198 = v197;
        v199 = vaddvq_s64(v197);
        v200 = v183 + v199;
        v201 = v199 <= 0x80 && v189 >= v200;
        v202 = !v201;
        v203 = 0uLL;
        if (v201)
        {
          v204 = v183 & 0x3E;
          v205 = vaddq_s64(vdupq_n_s64(v204), vzip1q_s64(0, v198));
          v206 = (v175 + ((v183 >> 3) & 8));
          v203 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v206, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v205)), vshlq_u64(vdupq_lane_s64(v206->i64[0], 0), vnegq_s64(v205)));
          if (v204 + v199 >= 0x81)
          {
            v203 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v206[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v205)), vshlq_u64(vdupq_laneq_s64(v206[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v205))), v203);
          }

          v183 = v200;
        }

        v207 = vzip1_s32(*v195.i8, *&vextq_s8(v195, v195, 8uLL));
        v208.i64[0] = v207.u32[0];
        v208.i64[1] = v207.u32[1];
        v209 = vshlq_u64(v203, vnegq_s64(v208));
        v210 = vuzp1q_s32(vzip1q_s64(v203, v209), vzip2q_s64(v203, v209));
        v211 = vshlq_u32(v210, vnegq_s32((*&v194 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v212 = vuzp1q_s16(vzip1q_s32(v210, v211), vzip2q_s32(v210, v211));
        v210.i64[0] = 0x101010101010101;
        v210.i64[1] = 0x101010101010101;
        *v213.i8 = vand_s8(vadd_s8(*&vshlq_s8(v210, v193), -1), vmovn_s16(vzip1q_s16(v212, vshlq_u16(v212, vnegq_s16(vmovl_u8(vuzp1_s8(*v193.i8, *v187.i8)))))));
        v213.i64[1] = v213.i64[0];
        *v213.i8 = vqtbl1_s8(v213, 0x703060205010400);
        *v212.i8 = vdup_lane_s16(*v213.i8, 0);
        *v210.i8 = vdup_lane_s16(*v213.i8, 1);
        v214 = vdup_lane_s16(*v213.i8, 2);
        v215 = vdup_lane_s16(*v213.i8, 3);
        v216 = vsubw_s8(v192, *v212.i8);
        v217 = vsubw_s8(v192, *v210.i8);
        v218 = vsubw_s8(v192, v214);
        v219 = vsubw_s8(v192, v215);
        v220 = vmovl_s8(vceqz_s8(*v212.i8));
        v221 = vmovl_s8(vceqz_s8(*v210.i8));
        v222 = vmovl_s8(vceqz_s8(v214));
        v223 = vmovl_s8(vceqz_s8(v215));
      }

      v227.i64[0] = 0x8000800080008;
      v227.i64[1] = 0x8000800080008;
      v228 = 0uLL;
      v229 = vandq_s8(vextq_s8(vtstq_s16(v187, v227), 0, 0xCuLL), v192);
      v230 = vmovl_u16(*&vpaddq_s16(v229, v229));
      v231 = vpaddq_s32(v230, v230).u64[0];
      v232.i64[0] = v231;
      v232.i64[1] = HIDWORD(v231);
      v233 = v232;
      v234 = vaddvq_s64(v232);
      v235 = v183 + v234;
      if (v234 <= 0x80 && v189 >= v235)
      {
        v237 = v183 & 0x3F;
        v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v233));
        v239 = (v175 + 8 * (v183 >> 6));
        v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
        if (v237 + v234 >= 0x81)
        {
          v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
        }

        v183 = v235;
      }

      else
      {
        v202 = 1;
      }

      v240 = v187.i8[0] & 3;
      if (v240 == 2)
      {
        v241 = v189 < v183 + 8;
        v242 = v183 + 16;
        if (v189 >= v183 + 8)
        {
          v183 += 8;
        }

        else
        {
          v242 = v183 + 8;
        }

        if (v189 < v242)
        {
          v243 = 1;
        }

        else
        {
          v183 = v242;
          v243 = v241;
        }

        v202 |= v243;
      }

      v244 = 0uLL;
      v245 = vextq_s8(0, v216, 0xCuLL);
      v246 = vmovl_u16(*&vpaddq_s16(v245, v245));
      v247 = vpaddq_s32(v246, v246).u64[0];
      v248.i64[0] = v247;
      v248.i64[1] = HIDWORD(v247);
      v249 = v248;
      v250 = vaddvq_s64(v248);
      v251 = v183 + v250;
      if (v250 <= 0x80 && v189 >= v251)
      {
        v254 = v183 & 0x3F;
        v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v249));
        v256 = (v175 + 8 * (v183 >> 6));
        v253 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
        if (v254 + v250 >= 0x81)
        {
          v253 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v253);
        }

        v183 = v251;
      }

      else
      {
        v202 = 1;
        v253 = 0uLL;
      }

      v257 = vmovl_u16(*&vpaddq_s16(v216, v216));
      v258 = vpaddq_s32(v257, v257).u64[0];
      v259.i64[0] = v258;
      v259.i64[1] = HIDWORD(v258);
      v260 = v259;
      v261 = vaddvq_s64(v259);
      v262 = v183 + v261;
      if (v261 <= 0x80 && v189 >= v262)
      {
        v264 = v183 & 0x3F;
        v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v260));
        v266 = (v175 + 8 * (v183 >> 6));
        v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
        if (v264 + v261 >= 0x81)
        {
          v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v244);
        }

        v183 = v262;
      }

      else
      {
        v202 = 1;
      }

      v267 = vmovl_u16(*&vpaddq_s16(v217, v217));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v183 + v271;
      v273 = 0uLL;
      if (v271 <= 0x80 && v189 >= v272)
      {
        v276 = v183 & 0x3F;
        v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
        v278 = (v175 + 8 * (v183 >> 6));
        v275 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
        if (v276 + v271 >= 0x81)
        {
          v275 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v275);
        }

        v183 = v272;
      }

      else
      {
        v202 = 1;
        v275 = 0uLL;
      }

      if (v271 > 0x80 || (v279 = v183 + v271, v189 < v183 + v271))
      {
        v202 = 1;
        v279 = v183;
      }

      else
      {
        v280 = v183 & 0x3F;
        v281 = vaddq_s64(vdupq_n_s64(v280), vzip1q_s64(0, v270));
        v282 = (v175 + 8 * (v183 >> 6));
        v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v282, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v281)), vshlq_u64(vdupq_lane_s64(v282->i64[0], 0), vnegq_s64(v281)));
        if (v280 + v271 >= 0x81)
        {
          v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v282[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v281)), vshlq_u64(vdupq_laneq_s64(v282[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v281))), v273);
        }
      }

      v283 = vmovl_u16(*&vpaddq_s16(v218, v218));
      v284 = vpaddq_s32(v283, v283).u64[0];
      v285.i64[0] = v284;
      v285.i64[1] = HIDWORD(v284);
      v286 = v285;
      v287 = vaddvq_s64(v285);
      v288 = 0uLL;
      if (v287 > 0x80 || (v289 = v279 + v287, v189 < v279 + v287))
      {
        v202 = 1;
        v289 = v279;
        v292 = 0uLL;
      }

      else
      {
        v290 = vaddq_s64(vdupq_n_s64(v279 & 0x3F), vzip1q_s64(0, v286));
        v291 = (v175 + 8 * (v279 >> 6));
        v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
        if ((v279 & 0x3F) + v287 >= 0x81)
        {
          v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v292);
        }
      }

      if (v287 > 0x80 || (v293 = v289 + v287, v189 < v289 + v287))
      {
        v202 = 1;
        v293 = v289;
      }

      else
      {
        v294 = vaddq_s64(vdupq_n_s64(v289 & 0x3F), vzip1q_s64(0, v286));
        v295 = (v175 + 8 * (v289 >> 6));
        v288 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
        if ((v289 & 0x3F) + v287 >= 0x81)
        {
          v288 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v288);
        }
      }

      v296 = vmovl_u16(*&vpaddq_s16(v219, v219));
      v297 = vpaddq_s32(v296, v296).u64[0];
      v298.i64[0] = v297;
      v298.i64[1] = HIDWORD(v297);
      v299 = v298;
      v300 = vaddvq_s64(v298);
      v301 = 0uLL;
      if (v300 > 0x80 || (v302 = v293 + v300, v189 < v293 + v300))
      {
        v202 = 1;
        v302 = v293;
        v306 = 0uLL;
      }

      else
      {
        v303 = v293 & 0x3F;
        v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v299));
        v305 = (v175 + 8 * (v293 >> 6));
        v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
        if (v303 + v300 >= 0x81)
        {
          v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
        }
      }

      if (v300 > 0x80 || (v307 = v302 + v300, v189 < v302 + v300))
      {
        v202 = 1;
        v307 = v302;
      }

      else
      {
        v308 = vaddq_s64(vdupq_n_s64(v302 & 0x3F), vzip1q_s64(0, v299));
        v309 = (v175 + 8 * (v302 >> 6));
        v301 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v309, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v308)), vshlq_u64(vdupq_lane_s64(v309->i64[0], 0), vnegq_s64(v308)));
        if ((v302 & 0x3F) + v300 >= 0x81)
        {
          v301 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v309[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v308)), vshlq_u64(vdupq_laneq_s64(v309[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v308))), v301);
        }
      }

      if ((v202 & 1) != 0 || (v8 = a4 + 1, v189 + 8 * v8 - v307 - 384 >= 9))
      {
        v310 = 0;
        v311 = 0;
        v312 = 8 * (&v512 & 7);
        v313 = 10;
        do
        {
          v314 = 64 - v312;
          if (64 - v312 >= v313)
          {
            v314 = v313;
          }

          *(&v512 + v310) |= ((0xFFFFFFFFFFFFFFFFLL >> v311) & ~(-1 << v314)) << v312;
          v311 += v314;
          v315 = v314 + v312;
          v310 += v315 >> 6;
          v312 = v315 & 0x3F;
          v313 -= v314;
        }

        while (v313);
LABEL_133:
        v8 = 0;
        v316 = &a1->i8[a2];
        v9 = 0uLL;
        *a1 = 0u;
        a1[1] = 0u;
        v317 = &a1->i8[2 * a2];
        *v316 = 0u;
        *(v316 + 1) = 0u;
        v12 = &a1->i8[2 * a2 + a2];
        *v317 = 0u;
        *(v317 + 1) = 0u;
        goto LABEL_6;
      }

      if (v240 == 2)
      {
        v318 = 0;
        v319 = 0;
        v320 = 8 * (&v512 & 7);
        v321 = 10;
        do
        {
          v322 = 64 - v320;
          if (64 - v320 >= v321)
          {
            v322 = v321;
          }

          *(&v512 + v318) |= ((0xFFFFFFFFFFFFFFFFLL >> v319) & ~(-1 << v322)) << v320;
          v319 += v322;
          v323 = v322 + v320;
          v318 += v323 >> 6;
          v320 = v323 & 0x3F;
          v321 -= v322;
        }

        while (v321);
        goto LABEL_133;
      }

      v324 = vzip1_s32(*v230.i8, *&vextq_s8(v230, v230, 8uLL));
      v325 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v326 = vzip1_s32(*v283.i8, *&vextq_s8(v283, v283, 8uLL));
      v327 = vzip1_s32(*v296.i8, *&vextq_s8(v296, v296, 8uLL));
      v328.i64[0] = v324.u32[0];
      v328.i64[1] = v324.u32[1];
      v329 = v328;
      v328.i64[0] = v325.u32[0];
      v328.i64[1] = v325.u32[1];
      v330 = v328;
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v332 = vnegq_s64(v329);
      v333 = vnegq_s64(v330);
      v334 = vnegq_s64(v331);
      v335 = vnegq_s64(v328);
      v336 = vshlq_u64(v228, v332);
      v337 = vshlq_u64(v275, v333);
      v338 = vshlq_u64(v273, v333);
      v339 = vshlq_u64(v292, v334);
      v340 = vshlq_u64(v288, v334);
      v341 = vshlq_u64(v306, v335);
      v342 = vzip2q_s64(v228, v336);
      v343 = vzip1q_s64(v228, v336);
      v344 = vzip2q_s64(v275, v337);
      v345 = vzip1q_s64(v275, v337);
      v346 = vzip2q_s64(v273, v338);
      v347 = vzip1q_s64(v273, v338);
      v348 = vzip2q_s64(v292, v339);
      v349 = vzip1q_s64(v292, v339);
      v350 = vzip2q_s64(v288, v340);
      v351 = vzip1q_s64(v288, v340);
      v352 = vzip2q_s64(v306, v341);
      v353 = vzip1q_s64(v306, v341);
      v354 = vuzp1q_s32(v343, v342);
      v355 = vuzp1q_s32(v345, v344);
      v356 = vuzp1q_s32(v347, v346);
      v343.i64[0] = 0xFFFF0000FFFFLL;
      v343.i64[1] = 0xFFFF0000FFFFLL;
      v357 = vuzp1q_s32(v349, v348);
      v345.i64[0] = 0xFFFF0000FFFFLL;
      v345.i64[1] = 0xFFFF0000FFFFLL;
      v358 = vnegq_s32(vandq_s8(v229, v343));
      v359 = vnegq_s32(vandq_s8(v217, v345));
      v360 = vuzp1q_s32(v351, v350);
      v361 = vuzp1q_s32(v353, v352);
      v362 = vshlq_u32(v354, v358);
      v363 = vshlq_u32(v355, v359);
      v364 = vshlq_u32(v356, v359);
      v359.i64[0] = 0x10001000100010;
      v359.i64[1] = 0x10001000100010;
      v353.i64[0] = 0xF000F000F000FLL;
      v353.i64[1] = 0xF000F000F000FLL;
      v365 = vsubq_s16(v359, v229);
      v366 = vaddq_s16(v229, v353);
      v353.i64[0] = 0x10001000100010;
      v353.i64[1] = 0x10001000100010;
      v367 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v354, v362), vzip2q_s32(v354, v362)), v365);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v368 = vsubq_s16(v353, v217);
      v369 = vaddq_s16(v217, v365);
      v365.i64[0] = 0xFFFF0000FFFFLL;
      v365.i64[1] = 0xFFFF0000FFFFLL;
      v370 = vnegq_s32(vandq_s8(v218, v365));
      v371 = vshlq_s16(v367, v366);
      v372 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v355, v363), vzip2q_s32(v355, v363)), v368), v369);
      v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v356, v364), vzip2q_s32(v356, v364)), v368), v369);
      v374 = vdupq_lane_s32(*v371.i8, 0);
      v375 = vandq_s8(v221, v374);
      v376 = vsubq_s16(v372, v375);
      v377 = vsubq_s16(v373, v375);
      v378 = vshlq_u32(v357, v370);
      v379 = vshlq_u32(v360, v370);
      v380 = vzip2q_s32(v357, v378);
      v381 = vzip1q_s32(v357, v378);
      v382 = vzip2q_s32(v360, v379);
      v383 = vzip1q_s32(v360, v379);
      v379.i64[0] = 0x10001000100010;
      v379.i64[1] = 0x10001000100010;
      v384 = vuzp1q_s16(v383, v382);
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v385 = vsubq_s16(v379, v218);
      v386 = vaddq_s16(v218, v382);
      v382.i64[0] = 0xFFFF0000FFFFLL;
      v382.i64[1] = 0xFFFF0000FFFFLL;
      v387 = vnegq_s32(vandq_s8(v219, v382));
      v388 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v380), v385), v386);
      v389 = vshlq_s16(vshlq_s16(v384, v385), v386);
      v390 = vandq_s8(v222, v374);
      v391 = vsubq_s16(v388, v390);
      v392 = vsubq_s16(v389, v390);
      v393 = vshlq_u32(v361, v387);
      v394 = vzip2q_s32(v361, v393);
      v395 = vzip1q_s32(v361, v393);
      v393.i64[0] = 0x10001000100010;
      v393.i64[1] = 0x10001000100010;
      v396 = vuzp1q_s16(v395, v394);
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v397 = vsubq_s16(v393, v219);
      v398 = vaddq_s16(v219, v394);
      v399 = vshlq_u64(v301, v335);
      v400 = vuzp1q_s32(vzip1q_s64(v301, v399), vzip2q_s64(v301, v399));
      v401 = vshlq_u32(v400, v387);
      v402 = vshlq_s16(vshlq_s16(v396, v397), v398);
      v403 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v400, v401), vzip2q_s32(v400, v401)), v397), v398);
      v404 = vandq_s8(v223, v374);
      v405 = vsubq_s16(v402, v404);
      v406 = vsubq_s16(v403, v404);
      v407 = vzip1_s32(*v246.i8, *&vextq_s8(v246, v246, 8uLL));
      v408 = vzip1_s32(*v257.i8, *&vextq_s8(v257, v257, 8uLL));
      v328.i64[0] = v407.u32[0];
      v328.i64[1] = v407.u32[1];
      v409 = v328;
      v328.i64[0] = v408.u32[0];
      v328.i64[1] = v408.u32[1];
      v410 = vshlq_u64(v253, vnegq_s64(v409));
      v411 = vshlq_u64(v244, vnegq_s64(v328));
      v412 = vzip2q_s64(v253, v410);
      v413 = vzip1q_s64(v253, v410);
      v414 = vzip2q_s64(v244, v411);
      v415 = vzip1q_s64(v244, v411);
      v411.i64[0] = 0xFFFF0000FFFFLL;
      v411.i64[1] = 0xFFFF0000FFFFLL;
      v416 = vuzp1q_s32(v413, v412);
      v417 = vuzp1q_s32(v415, v414);
      v418 = vnegq_s32(vandq_s8(v216, v411));
      v419 = vshlq_u32(v416, vnegq_s32(vandq_s8(v245, v411)));
      v420 = vshlq_u32(v417, v418);
      v421 = vzip2q_s32(v416, v419);
      v422 = vzip1q_s32(v416, v419);
      v423 = vzip2q_s32(v417, v420);
      v424 = vzip1q_s32(v417, v420);
      v420.i64[0] = 0x10001000100010;
      v420.i64[1] = 0x10001000100010;
      v425 = vuzp1q_s16(v424, v423);
      v423.i64[0] = 0xF000F000F000FLL;
      v423.i64[1] = 0xF000F000F000FLL;
      v426 = vaddq_s16(vandq_s8(v371, v220), vshlq_s16(vshlq_s16(vuzp1q_s16(v422, v421), vsubq_s16(v420, v245)), vaddq_s16(v245, v423)));
      v427 = vandq_s8(v220, v374);
      v428.i64[0] = 0x1000100010001;
      v428.i64[1] = 0x1000100010001;
      v429 = vceqq_s16(v191, v428);
      v430 = vaddvq_s16(v429);
      v431 = vsubq_s16(v426, v427);
      v432 = vsubq_s16(vshlq_s16(vshlq_s16(v425, vsubq_s16(v420, v216)), vaddq_s16(v216, v423)), v427);
      v429.i16[0] = v186 & 0x3FF;
      v429.i16[1] = (v186 >> 10) & 0x3FF;
      v433 = vdupq_lane_s32(*v429.i8, 0);
      if (v430)
      {
        v434 = vnegq_s16(vandq_s8(v187, v428));
        v435 = v432;
        v435.i32[3] = v431.i32[0];
        v436 = v431;
        v436.i32[0] = v432.i32[3];
        v529.val[0] = vbslq_s8(v434, v436, v431);
        v529.val[1] = vbslq_s8(v434, v435, v432);
        v435.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v435.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F0F80), v434), v529.val[0]);
        v530.val[1] = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, v435), v434));
        v431 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0F90), v434), v530.val[0]);
        v432 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FA0), v434), v376);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FB0), v434), v377);
        v376 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FC0), v434), v530.val[0]);
        v377 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0FD0), v434), v391);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0F80), v434), v392);
        v391 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, v435), v434), v530.val[0]);
        v392 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FE0), v434));
        v529.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0FF0), v434), v405);
        v529.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0F80), v434), v406);
        v405 = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, v435), v434), v529.val[0]);
        v406 = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F1000), v434));
      }

      v437 = vaddq_s16(v431, v433);
      v438 = vaddq_s16(v432, v433);
      v439 = vaddq_s16(v376, v433);
      v440 = vaddq_s16(v377, v433);
      v441 = vaddq_s16(v391, v433);
      v442 = vaddq_s16(v392, v433);
      v443 = vaddq_s16(v405, v433);
      v444 = vaddq_s16(v406, v433);
      v445.i64[0] = 0x10001000100010;
      v445.i64[1] = 0x10001000100010;
      v446 = vceqzq_s16(vandq_s8(v187, v445));
      v447 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v437, xmmword_29D2F1080), v446), v437);
      v448 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v438, xmmword_29D2F1080), v446), v438);
      v449 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F1080), v446), v439);
      v450 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F1080), v446), v440);
      v451 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F1080), v446), v441);
      v452 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F1080), v446), v442);
      v453 = vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F1080), v446);
      v454 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F1080), v446), v444);
      v455 = vshlq_n_s16(v447, 6uLL);
      v456 = vshlq_n_s16(v448, 6uLL);
      v457 = vshlq_n_s16(v449, 6uLL);
      v458 = vshlq_n_s16(v451, 6uLL);
      v459 = vshlq_n_s16(v452, 6uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 6uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 6uLL);
      v467 = vshlq_n_s16(v454, 6uLL);
      *v464 = v460;
      v464[1] = vzip2q_s64(v458, v459);
      v459.i64[0] = v457.i64[0];
      v459.i64[1] = v463.i64[0];
      v443.i64[0] = v466.i64[0];
      v443.i64[1] = v467.i64[0];
      *v465 = v459;
      v465[1] = v443;
      v468 = (v465 + a2);
      *v468 = vzip2q_s64(v457, v463);
      v468[1] = vzip2q_s64(v466, v467);
      break;
  }

  return v8;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(int32x4_t *a1, uint64_t a2, int32x4_t *a3, int a4, double a5, double a6, double a7, int8x8_t a8)
{
  if (a4 > 46)
  {
    if (a4 == 47)
    {
      v63.i64[0] = 0xC000C000C000CLL;
      v63.i64[1] = 0xC000C000C000CLL;
      v64 = vmovl_u16(*&vpaddq_s16(v63, v63));
      v65 = vpaddq_s32(v64, v64).u64[0];
      v66.i64[0] = v65;
      v66.i64[1] = HIDWORD(v65);
      v67 = v66;
      v68 = vaddvq_s64(v66);
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      if (v68 <= 0x80)
      {
        v73 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v74 = 8 * (a3 & 7);
        v75 = vzip1q_s64(0, v67);
        v76 = v68 + v74;
        v77 = vaddq_s64(v75, vdupq_n_s64(v74));
        v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v77)));
        if (v68 + v74 >= 0x81)
        {
          v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v70);
        }

        v78 = v76 & 0x3F;
        v79 = (v73 + 8 * (v76 >> 6));
        v80 = vaddq_s64(v75, vdupq_n_s64(v78));
        v81 = v68 + v76;
        v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v80)));
        if (v68 + v78 >= 0x81)
        {
          v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v71);
        }

        v82 = v81 & 0x3F;
        v83 = (v73 + 8 * (v81 >> 6));
        v84 = vaddq_s64(v75, vdupq_n_s64(v82));
        v85 = v68 + v81;
        v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
        if (v68 + v82 >= 0x81)
        {
          v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v69);
        }

        v86 = vaddq_s64(v75, vdupq_n_s64(v85 & 0x3F));
        v87 = (v73 + 8 * (v85 >> 6));
        v72 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v87, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v86)), vshlq_u64(vdupq_lane_s64(v87->i64[0], 0), vnegq_s64(v86)));
        if (v68 + (v85 & 0x3F) >= 0x81)
        {
          v72 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v87[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v86)), vshlq_u64(vdupq_laneq_s64(v87[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v86))), v72);
        }
      }

      v88 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vnegq_s64(v89);
      v91 = vshlq_u64(v69, v90);
      v92 = vuzp1q_s32(vzip1q_s64(v69, v91), vzip2q_s64(v69, v91));
      v93 = vshrq_n_u32(v92, 0xCuLL);
      v94 = vuzp1q_s16(vzip1q_s32(v92, v93), vzip2q_s32(v92, v93));
      v95 = vshlq_u64(v71, v90);
      v96 = vuzp1q_s32(vzip1q_s64(v71, v95), vzip2q_s64(v71, v95));
      v97 = vshrq_n_u32(v96, 0xCuLL);
      v98 = vuzp1q_s16(vzip1q_s32(v96, v97), vzip2q_s32(v96, v97));
      v99 = vshlq_u64(v70, v90);
      v100 = vuzp1q_s32(vzip1q_s64(v70, v99), vzip2q_s64(v70, v99));
      v101 = vshrq_n_u32(v100, 0xCuLL);
      v102 = vshlq_u64(v72, v90);
      v103 = vuzp1q_s32(vzip1q_s64(v72, v102), vzip2q_s64(v72, v102));
      v104 = vshrq_n_u32(v103, 0xCuLL);
      v105 = vuzp1q_s16(vzip1q_s32(v103, v104), vzip2q_s32(v103, v104));
      v106 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v100, v101), vzip2q_s32(v100, v101)), 4uLL);
      v107 = vshlq_n_s16(v98, 4uLL);
      v108 = vshlq_n_s16(v94, 4uLL);
      v109 = vshlq_n_s16(v105, 4uLL);
      *a1 = vuzp1q_s32(v106, v108);
      *(a1 + a2) = vuzp2q_s32(v106, v108);
      v110 = (a1 + 2 * a2);
      *v110 = vuzp1q_s32(v107, v109);
      *(v110 + a2) = vuzp2q_s32(v107, v109);
      return 48;
    }

    if (a4 == 63)
    {
      v10 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      v13 = a3[3];
      *a1 = vuzp1q_s32(*a3, v12);
      *(a1 + a2) = vuzp2q_s32(v10, v12);
      v14 = (a1 + 2 * a2);
      *v14 = vuzp1q_s32(v11, v13);
      *(v14 + a2) = vuzp2q_s32(v11, v13);
      return 64;
    }
  }

  else
  {
    if (!a4)
    {
      v9 = 0;
      a1->i64[0] = 0;
      a1->i64[1] = 0;
      v60 = (a1->i64 + a2);
      *v60 = 0;
      v60[1] = 0;
      v61 = (a1->i64 + 2 * a2);
      *v61 = 0;
      v61[1] = 0;
      v62 = (a1->i64 + 2 * a2 + a2);
LABEL_85:
      *v62 = 0;
      v62[1] = 0;
      return v9;
    }

    if (a4 == 1)
    {
      v8 = vdupq_n_s16(16 * a3->u16[0]);
      *a1 = v8;
      *(a1 + a2) = v8;
      *(a1 + 2 * a2) = v8;
      *(a1 + 3 * a2) = v8;
      return 2;
    }
  }

  v15 = 8 * (a3 & 7);
  v16 = a3 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 18;
  v18 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v15;
  if (v15 >= 0x2F)
  {
    v18 |= *(v16 + 8) << (-8 * (a3 & 7u));
  }

  v19 = (8 * (a3 & 7)) | 0x180;
  v20 = ((a4 >> 6) | (4 * v18)) & 0xF;
  v21 = vdupq_n_s16(v20);
  a8.i32[0] = v20;
  v22.i64[0] = 0x3000300030003;
  v22.i64[1] = 0x3000300030003;
  v23 = vbicq_s8(vdupq_n_s16(((v18 >> 2) & 0xF) + 1), vceqq_s16((*&v21 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v22));
  v24 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26 = vandq_s8(v24, v25);
  if (vmaxvq_s8(v26) < 1)
  {
    v35 = 0;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v55 = v23;
    v54 = v23;
    v53 = v23;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v52 = v23;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
  }

  else
  {
    v27 = vmovl_u8(*&vpaddq_s8(v26, v26));
    v28 = vmovl_u16(*&vpaddq_s16(v27, v27));
    v29 = vpaddq_s32(v28, v28).u64[0];
    v30.i64[0] = v29;
    v30.i64[1] = HIDWORD(v29);
    v31 = v30;
    v32 = vaddvq_s64(v30);
    v33 = v32 + v17;
    v34 = v32 <= 0x80 && v19 >= v33;
    v35 = !v34;
    v36 = 0uLL;
    if (v34)
    {
      v37 = v17 & 0x3A;
      v38 = vaddq_s64(vzip1q_s64(0, v31), vdupq_n_s64(v37));
      v39 = (v16 + ((v17 >> 3) & 8));
      v36 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v39, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v38)), vshlq_u64(vdupq_lane_s64(v39->i64[0], 0), vnegq_s64(v38)));
      if (v32 + v37 >= 0x81)
      {
        v36 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v39[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v38)), vshlq_u64(vdupq_laneq_s64(v39[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v38))), v36);
      }

      v17 = v33;
    }

    v40 = vzip1_s32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v41.i64[0] = v40.u32[0];
    v41.i64[1] = v40.u32[1];
    v42 = vshlq_u64(v36, vnegq_s64(v41));
    v43 = vuzp1q_s32(vzip1q_s64(v36, v42), vzip2q_s64(v36, v42));
    v44 = vshlq_u32(v43, vnegq_s32((*&v27 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v45 = vuzp1q_s16(vzip1q_s32(v43, v44), vzip2q_s32(v43, v44));
    v46 = vzip1q_s16(v45, vshlq_u16(v45, vnegq_s16(vmovl_u8(vuzp1_s8(*v26.i8, *v21.i8)))));
    *v46.i8 = vmovn_s16(v46);
    v43.i64[0] = 0x101010101010101;
    v43.i64[1] = 0x101010101010101;
    v47 = vshlq_s8(v43, v26);
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v47.i32[0] = vandq_s8(vaddq_s8(v47, v43), v46).u32[0];
    v48 = vdupq_n_s16(v47.i8[0]);
    v49 = vdupq_n_s16(v47.i8[1]);
    v50 = vdupq_n_s16(v47.i8[2]);
    v51 = vdupq_n_s16(v47.i8[3]);
    v52 = vsubq_s16(v23, v48);
    v53 = vsubq_s16(v23, v49);
    v54 = vsubq_s16(v23, v50);
    v55 = vsubq_s16(v23, v51);
    v56 = vceqzq_s16(v48);
    v57 = vceqzq_s16(v49);
    v58 = vceqzq_s16(v50);
    v59 = vceqzq_s16(v51);
  }

  v111.i64[0] = 0x7000700070007;
  v111.i64[1] = 0x7000700070007;
  v112 = 0uLL;
  v113 = vandq_s8(vextq_s8(vcgtq_u16(v21, v111), 0, 0xEuLL), v23);
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v19 >= v119)
  {
    v121 = v17 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v121));
    v123 = (v16 + 8 * (v17 >> 6));
    v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v118 + v121 >= 0x81)
    {
      v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v112);
    }

    v17 = v119;
  }

  else
  {
    v35 = 1;
  }

  v124 = v20 & 3;
  if (v124 == 2)
  {
    if (v19 < v17 + 8)
    {
      v35 = 1;
    }

    else
    {
      v17 += 8;
    }

    v125 = v19 < v17 + 8;
    if (v19 >= v17 + 8)
    {
      v17 += 8;
    }

    v35 |= v125;
  }

  v126 = 0uLL;
  v127 = vextq_s8(0, v52, 0xEuLL);
  v128 = vmovl_u16(*&vpaddq_s16(v127, v127));
  v129 = vpaddq_s32(v128, v128).u64[0];
  v130.i64[0] = v129;
  v130.i64[1] = HIDWORD(v129);
  v131 = v130;
  v132 = vaddvq_s64(v130);
  v133 = v132 + v17;
  if (v132 <= 0x80 && v19 >= v133)
  {
    v136 = v17 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v131), vdupq_n_s64(v136));
    v138 = (v16 + 8 * (v17 >> 6));
    v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v132 + v136 >= 0x81)
    {
      v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v135);
    }

    v17 = v133;
  }

  else
  {
    v35 = 1;
    v135 = 0uLL;
  }

  v139.i64[0] = 0xFFFF0000FFFFLL;
  v139.i64[1] = 0xFFFF0000FFFFLL;
  v140 = vmovl_u16(*&vpaddq_s16(v53, v53));
  v141 = vpaddq_s32(v140, v140).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  if (v144 >= 0x81)
  {
    v35 = 1;
  }

  else
  {
    v145 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
    v146.i64[0] = v145.u32[0];
    v146.i64[1] = v145.u32[1];
    v147 = v146;
    v148 = vandq_s8(v53, v139);
    v149 = v144 + v17;
    if (v19 >= v144 + v17)
    {
      v150 = v17 & 0x3F;
      v151 = vaddq_s64(vzip1q_s64(0, v143), vdupq_n_s64(v150));
      v152 = (v16 + 8 * (v17 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
      if (v144 + v150 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v126);
      }

      v17 = v149;
    }

    else
    {
      v35 = 1;
    }

    v153 = vshlq_u64(v126, vnegq_s64(v147));
    v154 = vuzp1q_s32(vzip1q_s64(v126, v153), vzip2q_s64(v126, v153));
    v155 = vshlq_u32(v154, vnegq_s32(v148));
    v126 = vuzp1q_s16(vzip1q_s32(v154, v155), vzip2q_s32(v154, v155));
  }

  v156 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v157 = vpaddq_s32(v156, v156).u64[0];
  v158.i64[0] = v157;
  v158.i64[1] = HIDWORD(v157);
  v159 = v158;
  v160 = vaddvq_s64(v158);
  if (v160 >= 0x81)
  {
    v35 = 1;
    v167 = 0uLL;
  }

  else
  {
    v161 = vzip1_s32(*v156.i8, *&vextq_s8(v156, v156, 8uLL));
    v162.i64[0] = v161.u32[0];
    v162.i64[1] = v161.u32[1];
    v163 = v162;
    v164 = vandq_s8(v54, v139);
    v165 = v160 + v17;
    if (v19 >= v160 + v17)
    {
      v168 = v17 & 0x3F;
      v169 = vaddq_s64(vzip1q_s64(0, v159), vdupq_n_s64(v168));
      v170 = (v16 + 8 * (v17 >> 6));
      v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
      if (v160 + v168 >= 0x81)
      {
        v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v166);
      }

      v17 = v165;
    }

    else
    {
      v166 = 0uLL;
      v35 = 1;
    }

    v171 = vshlq_u64(v166, vnegq_s64(v163));
    v172 = vuzp1q_s32(vzip1q_s64(v166, v171), vzip2q_s64(v166, v171));
    v173 = vshlq_u32(v172, vnegq_s32(v164));
    v167 = vuzp1q_s16(vzip1q_s32(v172, v173), vzip2q_s32(v172, v173));
  }

  v174 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v175 = vpaddq_s32(v174, v174).u64[0];
  v176.i64[0] = v175;
  v176.i64[1] = HIDWORD(v175);
  v177 = v176;
  v178 = vaddvq_s64(v176);
  if (v178 >= 0x81 || v19 < v178 + v17)
  {
    goto LABEL_80;
  }

  v179 = vaddq_s64(vzip1q_s64(0, v177), vdupq_n_s64(v17 & 0x3F));
  v180 = (v16 + 8 * (v17 >> 6));
  v181 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v180, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v179)), vshlq_u64(vdupq_lane_s64(v180->i64[0], 0), vnegq_s64(v179)));
  if (v178 + (v17 & 0x3F) >= 0x81)
  {
    v181 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v180[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v179)), vshlq_u64(vdupq_laneq_s64(v180[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v179))), v181);
  }

  if ((v35 & 1) != 0 || (v9 = (a4 & 0x3Fu) + 1, 8 * ((a3 & 7) + v9) - (v178 + v17) >= 9))
  {
LABEL_80:
    v182 = 0;
    v183 = 0;
    v184 = 8 * (&v252 & 7);
    v185 = 12;
    do
    {
      v186 = 64 - v184;
      if (64 - v184 >= v185)
      {
        v186 = v185;
      }

      *&v251[8 * v182] |= ((0xFFFFFFFFFFFFFFFFLL >> v183) & ~(-1 << v186)) << v184;
      v183 += v186;
      v187 = v186 + v184;
      v182 += v187 >> 6;
      v184 = v187 & 0x3F;
      v185 -= v186;
    }

    while (v185);
LABEL_84:
    v9 = 0;
    v188 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v189 = (a1->i64 + 2 * a2);
    *v188 = 0;
    v188[1] = 0;
    v62 = (a1->i64 + 2 * a2 + a2);
    *v189 = 0;
    v189[1] = 0;
    goto LABEL_85;
  }

  if (v124 == 2)
  {
    v191 = 0;
    v192 = 0;
    v193 = 8 * (&v253 & 7);
    v194 = 12;
    do
    {
      v195 = 64 - v193;
      if (64 - v193 >= v194)
      {
        v195 = v194;
      }

      *&v251[8 * v191] |= ((0xFFFFFFFFFFFFFFFFLL >> v192) & ~(-1 << v195)) << v193;
      v192 += v195;
      v196 = v195 + v193;
      v191 += v196 >> 6;
      v193 = v196 & 0x3F;
      v194 -= v195;
    }

    while (v194);
    goto LABEL_84;
  }

  v197 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v198 = vzip1_s32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
  v199.i64[0] = v197.u32[0];
  v199.i64[1] = v197.u32[1];
  v200 = v199;
  v199.i64[0] = v198.u32[0];
  v199.i64[1] = v198.u32[1];
  v201 = vshlq_u64(v112, vnegq_s64(v200));
  v202 = vshlq_u64(v135, vnegq_s64(v199));
  v203 = vuzp1q_s32(vzip1q_s64(v112, v201), vzip2q_s64(v112, v201));
  v204 = vuzp1q_s32(vzip1q_s64(v135, v202), vzip2q_s64(v135, v202));
  v205 = vshlq_u32(v203, vnegq_s32((*&v113 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
  v206 = vshlq_u32(v204, vnegq_s32(vandq_s8(v127, v139)));
  v207 = vzip2q_s32(v203, v205);
  v208 = vzip1q_s32(v203, v205);
  v205.i64[0] = 0x10001000100010;
  v205.i64[1] = 0x10001000100010;
  v209 = vzip2q_s32(v204, v206);
  v210 = vzip1q_s32(v204, v206);
  v206.i64[0] = 0x10001000100010;
  v206.i64[1] = 0x10001000100010;
  v211 = vuzp1q_s16(v208, v207);
  v207.i64[0] = 0xF000F000F000FLL;
  v207.i64[1] = 0xF000F000F000FLL;
  v212 = vuzp1q_s16(v210, v209);
  v209.i64[0] = 0xF000F000F000FLL;
  v209.i64[1] = 0xF000F000F000FLL;
  v213 = vzip1_s32(*v174.i8, *&vextq_s8(v174, v174, 8uLL));
  v214.i64[0] = 0xFFFF0000FFFFLL;
  v214.i64[1] = 0xFFFF0000FFFFLL;
  v215.i64[0] = 0xF000F000F000FLL;
  v215.i64[1] = 0xF000F000F000FLL;
  v216.i64[0] = 0x10001000100010;
  v216.i64[1] = 0x10001000100010;
  v217 = vshlq_s16(v211, vsubq_s16(v205, v113));
  v218 = vaddq_s16(v127, v209);
  v219 = vshlq_s16(v212, vsubq_s16(v206, v127));
  v220 = vshlq_s16(v126, vsubq_s16(v206, v53));
  v221 = vshlq_s16(v167, vsubq_s16(v206, v54));
  v199.i64[0] = v213.u32[0];
  v199.i64[1] = v213.u32[1];
  v222 = vandq_s8(v55, v214);
  v223 = vaddq_s16(v55, v215);
  v224 = vsubq_s16(v216, v55);
  v225 = vdupq_n_s16(v18 >> 6);
  v226 = vshlq_s16(v217, vaddq_s16(v113, v207));
  v227 = vshlq_s16(v219, v218);
  v228 = vshlq_u64(v181, vnegq_s64(v199));
  v229 = vuzp1q_s32(vzip1q_s64(v181, v228), vzip2q_s64(v181, v228));
  v230 = vshlq_u32(v229, vnegq_s32(v222));
  v231 = vaddq_s16(vandq_s8(v226, v56), v227);
  v232 = vdupq_lane_s16(*v226.i8, 0);
  v233 = vsubq_s16(v231, vandq_s8(v232, v56));
  v234 = vsubq_s16(vshlq_s16(v220, vaddq_s16(v53, v209)), vandq_s8(v232, v57));
  v235 = vsubq_s16(vshlq_s16(v221, vaddq_s16(v54, v209)), vandq_s8(v232, v58));
  v236 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v229, v230), vzip2q_s32(v229, v230)), v224), v223), vandq_s8(v232, v59));
  v237.i64[0] = 0x1000100010001;
  v237.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16((*&v21 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v237)))
  {
    v238 = *&v21 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
    v239 = vnegq_s16(v238);
    v240 = v233;
    v240.i16[0] = v233.i16[7];
    v240.i16[7] = v233.i16[0];
    v241 = vorrq_s8(vandq_s8(v240, v239), vandq_s8(v233, vceqzq_s16(v238)));
    v242 = vaddq_s16(v241, vandq_s8(vqtbl1q_s8(v241, xmmword_29D2F0E60), v239));
    v233 = vaddq_s16(v242, vandq_s8(vqtbl1q_s8(v242, xmmword_29D2F0E70), v239));
    v243 = vaddq_s16(vandq_s8(vqtbl1q_s8(v234, xmmword_29D2F0E80), v239), v234);
    v234 = vaddq_s16(vandq_s8(vqtbl1q_s8(v243, xmmword_29D2F0E90), v239), v243);
    v244 = vaddq_s16(vandq_s8(vqtbl1q_s8(v235, xmmword_29D2F0EA0), v239), v235);
    v235 = vaddq_s16(vandq_s8(vqtbl1q_s8(v244, xmmword_29D2F0EB0), v239), v244);
    v245 = vaddq_s16(vandq_s8(vqtbl1q_s8(v236, xmmword_29D2F0EC0), v239), v236);
    v236 = vaddq_s16(vandq_s8(vqtbl1q_s8(v245, xmmword_29D2F0ED0), v239), v245);
  }

  v246 = vshlq_n_s16(vaddq_s16(v225, v233), 4uLL);
  v247 = vshlq_n_s16(vaddq_s16(v234, v225), 4uLL);
  v248 = vshlq_n_s16(vaddq_s16(v235, v225), 4uLL);
  v249 = vshlq_n_s16(vaddq_s16(v236, v225), 4uLL);
  *a1 = vuzp1q_s32(v246, v248);
  *(a1 + a2) = vuzp2q_s32(v246, v248);
  v250 = (a1 + 2 * a2);
  *v250 = vuzp1q_s32(v247, v249);
  *(v250 + a2) = vuzp2q_s32(v247, v249);
  return v9;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v16 = *(a3 + a4);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = vshrq_n_s16(vzip1q_s32(*a3, v16), 4uLL);
  v20 = vshrq_n_s16(vzip1q_s32(*v17, v18), 4uLL);
  v21 = vshrq_n_s16(vzip2q_s32(*a3, v16), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*v17, v18), 4uLL);
  v23 = vdupq_lane_s16(*v19.i8, 0);
  v24 = vshlq_n_s16(vsubq_s16(v20, v23), 4uLL);
  v25 = vshlq_n_s16(vsubq_s16(v22, v23), 4uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 4uLL), 4uLL);
  v27 = vshrq_n_s16(v24, 4uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 4uLL), 4uLL);
  v29 = vshrq_n_s16(v25, 4uLL);
  v24.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v24.i8, 0);
  v25.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v25.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vsubq_s16(v37, vclsq_s16(v36));
  v39 = vbicq_s8(v38, vceqzq_s16(v36));
  v40 = vpmaxq_s16(v39, v39);
  v38.i16[0] = vmaxvq_s16(v27);
  a14.i16[0] = vminvq_s16(v27);
  v41 = vdupq_lane_s16(*v38.i8, 0);
  v42 = vdupq_lane_s16(a14, 0);
  v43 = vmaxq_s16(v33, v41);
  v44 = vminq_s16(v35, v42);
  v45 = vzip1q_s16(v41, v42);
  v46 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v45)), vceqzq_s16(v45));
  v47 = vpmaxq_s16(v46, v46);
  v46.i16[0] = vmaxvq_s16(v28);
  v42.i16[0] = vminvq_s16(v28);
  v48 = vdupq_lane_s16(*v46.i8, 0);
  v49 = vdupq_lane_s16(*v42.i8, 0);
  v50 = vmaxq_s16(v43, v48);
  v51 = vminq_s16(v44, v49);
  v52 = vzip1q_s16(v48, v49);
  v53 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v52)), vceqzq_s16(v52));
  v54 = vpmaxq_s16(v53, v53);
  v53.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v53.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v50, v55);
  v58 = vminq_s16(v51, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v40, v47), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66.i64[0] = 0x4000400040004;
    v66.i64[1] = 0x4000400040004;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v68.i64[0] = 0xF000F000F000FLL;
    v68.i64[1] = 0xF000F000F000FLL;
    v69 = vcgtq_s16(v62, v64);
    v70 = vandq_s8(vsubq_s16(vshlq_s16(v67, vsubq_s16(v68, v63)), v58), v69);
    v71.i64[0] = 0x8000800080008;
    v71.i64[1] = 0x8000800080008;
    v67.i64[0] = 0x3000300030003;
    v67.i64[1] = 0x3000300030003;
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v40), v67), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v47), v67), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v67), 0);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v67), 0);
    v76 = vsubq_s16(v65, v72);
    v77 = vsubq_s16(v65, v73);
    v78 = vsubq_s16(v65, v74);
    v79 = vsubq_s16(v65, v75);
    v80 = vbicq_s8(v66, vceqq_s16(vaddq_s16(v75, v74), vnegq_s16(vaddq_s16(v72, v73))));
    v81 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v65), v67), vandq_s8(v69, v71)), v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v329 = v70;
      v330 = v28;
      v331 = v29;
      v82 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F0F00));
      v83 = v20;
      v83.i16[7] = v19.i16[7];
      v84 = v21;
      v84.i16[7] = v19.i16[7];
      v85 = v22;
      v85.i16[7] = v19.i16[7];
      v86 = v82;
      v86.i16[0] = v82.i16[7];
      v86.i16[7] = v82.i16[0];
      v87 = vshlq_n_s16(v86, 4uLL);
      v86.i64[0] = 0x4000400040004;
      v86.i64[1] = 0x4000400040004;
      v88 = vshrq_n_s16(v87, 4uLL);
      v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, vqtbl1q_s8(v83, xmmword_29D2F0F10)), 4uLL), 4uLL);
      v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, vqtbl1q_s8(v84, xmmword_29D2F0F20)), 4uLL), 4uLL);
      v74.i16[0] = vmaxvq_s16(v88);
      v29.i16[0] = vminvq_s16(v88);
      v91 = vdupq_lane_s16(*v74.i8, 0);
      v92 = vdupq_lane_s16(*v29.i8, 0);
      v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, vqtbl1q_s8(v85, xmmword_29D2F0F30)), 4uLL), 4uLL);
      v94.i64[0] = 0x8000800080008000;
      v94.i64[1] = 0x8000800080008000;
      v95 = vmaxq_s16(v91, v94);
      v94.i64[0] = 0x8000800080008000;
      v94.i64[1] = 0x8000800080008000;
      v96 = vminq_s16(v92, v94);
      v97 = vzip1q_s16(v91, v92);
      v98.i64[0] = 0x10001000100010;
      v98.i64[1] = 0x10001000100010;
      v99 = vsubq_s16(v98, vclsq_s16(v97));
      v100 = vbicq_s8(v99, vceqzq_s16(v97));
      v99.i16[0] = vmaxvq_s16(v89);
      v14.i16[0] = vminvq_s16(v89);
      v101 = vdupq_lane_s16(*v99.i8, 0);
      v102 = vdupq_lane_s16(v14, 0);
      v103 = vpmaxq_s16(v100, v100);
      v104 = vmaxq_s16(v95, v101);
      v105 = vminq_s16(v96, v102);
      v106 = vzip1q_s16(v101, v102);
      v107 = vsubq_s16(v98, vclsq_s16(v106));
      v108 = vbicq_s8(v107, vceqzq_s16(v106));
      v109 = vpmaxq_s16(v108, v108);
      v108.i16[0] = vmaxvq_s16(v90);
      v110 = vdupq_lane_s16(*v108.i8, 0);
      v107.i16[0] = vminvq_s16(v90);
      v111 = vdupq_lane_s16(*v107.i8, 0);
      v112 = vmaxq_s16(v104, v110);
      v113 = vminq_s16(v105, v111);
      v114 = vzip1q_s16(v110, v111);
      v115 = vsubq_s16(v98, vclsq_s16(v114));
      v116 = vbicq_s8(v115, vceqzq_s16(v114));
      v117 = v79;
      v118 = vpmaxq_s16(v116, v116);
      v116.i16[0] = vmaxvq_s16(v93);
      v115.i16[0] = vminvq_s16(v93);
      v119 = vdupq_lane_s16(*v116.i8, 0);
      v120 = vdupq_lane_s16(*v115.i8, 0);
      v121 = vmaxq_s16(v112, v119);
      v122 = vminq_s16(v113, v120);
      v123 = vzip1q_s16(v119, v120);
      v124 = vbicq_s8(vsubq_s16(v98, vclsq_s16(v123)), vceqzq_s16(v123));
      v125 = vpmaxq_s16(v124, v124);
      v126 = vmaxq_s16(vmaxq_s16(v103, v109), vmaxq_s16(v118, v125));
      v127 = vclzq_s16(vsubq_s16(v121, v122));
      v128 = vsubq_s16(v98, v127);
      v129 = vcgtq_s16(v126, v128);
      v130 = vminq_s16(v128, v126);
      v98.i64[0] = 0x3000300030003;
      v98.i64[1] = 0x3000300030003;
      v131 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v103), v98), 0);
      v132 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v109), v98), 0);
      v133 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v118), v98), 0);
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v125), v98), 0);
      v135 = vsubq_s16(v130, v131);
      v136 = vsubq_s16(v130, v132);
      v137 = vsubq_s16(v130, v133);
      v138 = vsubq_s16(v130, v134);
      v139 = vbicq_s8(v86, vceqq_s16(vaddq_s16(v134, v133), vnegq_s16(vaddq_s16(v131, v132))));
      v134.i64[0] = 0x7000700070007;
      v134.i64[1] = 0x7000700070007;
      v79 = v117;
      v140 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v65, v69), vaddq_s16(v80, v80)), v76, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v78, v77), v117), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v130, v129), vaddq_s16(v139, v139)), v135, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v137, v136), v138), 3uLL))), 0);
      if (vaddvq_s16(v140))
      {
        v141.i64[0] = 0x2000200020002;
        v141.i64[1] = 0x2000200020002;
        v142 = vandq_s8(vceqzq_s16(v130), v141);
        v141.i64[0] = 0x9000900090009;
        v141.i64[1] = 0x9000900090009;
        v143.i64[0] = -1;
        v143.i64[1] = -1;
        v144 = vorrq_s8(vorrq_s8(v142, vsubq_s16(vandq_s8(v129, v141), vmvnq_s8(v129))), v139);
        v141.i64[0] = 0xF000F000F000FLL;
        v141.i64[1] = 0xF000F000F000FLL;
        v145 = vandq_s8(vsubq_s16(vshlq_s16(v143, vsubq_s16(v141, v127)), v122), v129);
        v146 = vcltzq_s16(vshlq_n_s16(v140, 0xFuLL));
        v23.i16[0] = vbslq_s8(v146, vextq_s8(v19, v19, 0xEuLL), v23).u16[0];
        v26 = vbslq_s8(v146, v88, v26);
        v27 = vbslq_s8(v146, v89, v27);
        v28 = vbslq_s8(v146, v90, v330);
        v29 = vbslq_s8(v146, v93, v331);
        v76 = vbslq_s8(v146, v135, v76);
        v77 = vbslq_s8(v146, v136, v77);
        v78 = vbslq_s8(v146, v137, v78);
        v79 = vbslq_s8(v146, v138, v79);
        v70 = vbslq_s8(v146, v145, v329);
        v65 = vbslq_s8(v146, v130, v65);
        v81 = vbslq_s8(v146, v144, v81);
      }

      else
      {
        v28 = v330;
        v29 = v331;
        v70 = v329;
      }
    }

    v149.i64[0] = 0x8000800080008;
    v149.i64[1] = 0x8000800080008;
    v150 = vandq_s8(v81, v149);
    v151.i64[0] = 0x3000300030003;
    v151.i64[1] = 0x3000300030003;
    v152.i64[0] = 0x2000200020002;
    v152.i64[1] = 0x2000200020002;
    v153 = vceqq_s16(vandq_s8(v81, v151), v152);
    v152.i64[0] = 0x10001000100010;
    v152.i64[1] = 0x10001000100010;
    v154 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v155 = 8 * (a1 & 7);
    if (((vbicq_s8(v65, vceqzq_s16(v150)).u16[0] + ((2 * v81.i16[0]) & 8) + vandq_s8(v153, v152).u16[0] - v76.i16[0] + 8 * v76.i16[0] + 8 * vaddq_s16(vaddq_s16(v78, v77), v79).u16[0]) + 25) >= 0x180)
    {
      if (v155)
      {
        v157 = *v154 & ~(-1 << v155);
      }

      else
      {
        v157 = 0;
      }

      v285 = vpaddq_s32(vshlq_u32(vmovl_u16((v19.i64[0] & 0xFFF0FFF0FFF0FFFLL)), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16((*&v19 & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL))), xmmword_29D2F1490));
      v286.i64[0] = 0xC0000000CLL;
      v286.i64[1] = 0xC0000000CLL;
      v287 = vpaddq_s32(v286, v286);
      v288.i64[0] = v285.u32[0];
      v288.i64[1] = v285.u32[1];
      v289 = v288;
      v288.i64[0] = v285.u32[2];
      v288.i64[1] = v285.u32[3];
      v290 = v288;
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v291 = v288;
      v288.i64[0] = v287.u32[2];
      v288.i64[1] = v287.u32[3];
      v292 = vzip1q_s64(0, v291);
      v293 = vzip1q_s64(0, v288);
      v294 = vpaddq_s64(vshlq_u64(v289, v292), vshlq_u64(v290, v293));
      v295 = vpaddq_s64(v291, v288);
      v296 = v294.u64[1];
      v297 = v295.i64[1];
      v298 = v295.i64[0];
      v299 = v295.i64[0] + v155;
      v300 = (v294.i64[0] << v155) | v157;
      if (v295.i64[0] + v155 >= 0x40)
      {
        *v154 = v300;
        v300 = v294.i64[0] >> (-8 * (a1 & 7u));
        if (!v155)
        {
          v300 = 0;
        }
      }

      v301.i64[0] = 0xF000F000F000F000;
      v301.i64[1] = 0xF000F000F000F000;
      v302 = v300 | (v296 << v299);
      if ((v299 & 0x3F) + v295.i64[1] >= 0x40)
      {
        *(v154 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v296 >> -(v299 & 0x3F);
        if ((v299 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = v299 + v295.i64[1];
      v304 = vandq_s8(v301, v20);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v304), xmmword_29D2F1490));
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v307 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v308 = vpaddq_s64(vshlq_u64(v307, v292), vshlq_u64(v306, v293));
      v309 = (v308.i64[0] << v303) | v302;
      if (v298 + (v303 & 0x3F) >= 0x40)
      {
        *(v154 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v308.i64[0] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v309 = 0;
        }
      }

      v310 = v298 + v303;
      v311 = v309 | (v308.i64[1] << v310);
      if ((v310 & 0x3F) + v297 >= 0x40)
      {
        *(v154 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        if ((v310 & 0x3F) != 0)
        {
          v311 = v308.i64[1] >> -(v310 & 0x3F);
        }

        else
        {
          v311 = 0;
        }
      }

      v312 = v310 + v297;
      v313 = vandq_s8(v301, v21);
      v314 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v313), xmmword_29D2F1490));
      v315.i64[0] = v314.u32[0];
      v315.i64[1] = v314.u32[1];
      v316 = v315;
      v315.i64[0] = v314.u32[2];
      v315.i64[1] = v314.u32[3];
      v317 = vpaddq_s64(vshlq_u64(v316, v292), vshlq_u64(v315, v293));
      v318 = (v317.i64[0] << v312) | v311;
      if (v298 + (v312 & 0x3F) >= 0x40)
      {
        *(v154 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v317.i64[0] >> -(v312 & 0x3F);
        if ((v312 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = v298 + v312;
      v320 = v318 | (v317.i64[1] << v319);
      if ((v319 & 0x3F) + v297 >= 0x40)
      {
        *(v154 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        if ((v319 & 0x3F) != 0)
        {
          v320 = v317.i64[1] >> -(v319 & 0x3F);
        }

        else
        {
          v320 = 0;
        }
      }

      v321 = v319 + v297;
      v322 = vandq_s8(v301, v22);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v322), xmmword_29D2F1490));
      v324.i64[0] = v323.u32[0];
      v324.i64[1] = v323.u32[1];
      v325 = v324;
      v324.i64[0] = v323.u32[2];
      v324.i64[1] = v323.u32[3];
      v326 = vpaddq_s64(vshlq_u64(v325, v292), vshlq_u64(v324, v293));
      v327 = (v326.i64[0] << v321) | v320;
      if (v298 + (v321 & 0x3F) >= 0x40)
      {
        *(v154 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v326.i64[0] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v298 + v321;
      if ((v328 & 0x3F) + v297 >= 0x40)
      {
        *(v154 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327 | (v326.i64[1] << (v328 & 0x3F));
      }

      v147 = 47;
      result = 48;
    }

    else
    {
      if (v155)
      {
        v156 = *v154 & ~(-1 << v155);
      }

      else
      {
        v156 = 0;
      }

      if (v65.i16[0])
      {
        v158 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v158 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v159 = (v158 & 0xFFFFFFFFFFFFFFF0 | ((v23.i16[0] & 0xFFF) << 8) | v81.i8[0] & 0xF) >> 2;
      v160 = (v159 << v155) | v156;
      if (v155 >= 0x2E)
      {
        *v154 = v160;
        v160 = v159 >> (-8 * (a1 & 7u));
      }

      v161 = vsubq_s16(v65, v76);
      v162 = vsubq_s16(v65, v77);
      v163 = vsubq_s16(v65, v78);
      v164 = vsubq_s16(v65, v79);
      *v161.i8 = vqmovn_u16(v161);
      *v162.i8 = vqmovn_u16(v162);
      *v163.i8 = vqmovn_u16(v163);
      *v164.i8 = vqmovn_u16(v164);
      v161.i32[0] = vzip1q_s16(vzip1q_s8(v161, v162), vzip1q_s8(v163, v164)).u32[0];
      v165 = v155 + 18;
      v163.i64[0] = 0x202020202020202;
      v163.i64[1] = 0x202020202020202;
      v166 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v163);
      v163.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v163.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v164.i64[0] = -1;
      v164.i64[1] = -1;
      v167 = vandq_s8(vshlq_u8(v164, vorrq_s8(v166, v163)), v161.u32[0]);
      v168 = vmovl_u8(*v166.i8);
      v169 = vpaddq_s16(vshlq_u16(vmovl_u8(*v167.i8), vtrn1q_s16(0, v168)), vmovl_high_u8(v167));
      v170 = vpaddq_s16(v168, vmovl_high_u8(v166));
      v171 = vmovl_u16(*v170.i8);
      v172 = vmovl_high_u16(v170);
      v173 = vpaddq_s32(vshlq_u32(vmovl_u16(*v169.i8), vtrn1q_s32(0, v171)), vshlq_u32(vmovl_high_u16(v169), vtrn1q_s32(0, v172)));
      v174 = vpaddq_s32(v171, v172);
      v175.i64[0] = v173.u32[0];
      v175.i64[1] = v173.u32[1];
      v176 = v175;
      v175.i64[0] = v173.u32[2];
      v175.i64[1] = v173.u32[3];
      v177 = v175;
      v175.i64[0] = v174.u32[0];
      v175.i64[1] = v174.u32[1];
      v178 = v175;
      v175.i64[0] = v174.u32[2];
      v175.i64[1] = v174.u32[3];
      v179 = vpaddq_s64(vshlq_u64(v176, vzip1q_s64(0, v178)), vshlq_u64(v177, vzip1q_s64(0, v175)));
      v180 = vpaddq_s64(v178, v175);
      v181 = (v155 + 18) & 0x3A;
      v182 = (v179.i64[0] << v181) | v160;
      if ((v180.i64[0] + v181) >= 0x40)
      {
        *(v154 + ((v165 >> 3) & 8)) = v182;
        v182 = v179.i64[0] >> -v181;
      }

      v183 = vceqq_s16(v65, v76);
      v184 = v180.i64[0] + v165;
      v185 = (v180.i64[0] + v165) & 0x3F;
      v186 = v182 | (v179.i64[1] << (v180.i8[0] + v165));
      if ((v185 + v180.i64[1]) >= 0x40)
      {
        *(v154 + ((v184 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v186;
        v186 = v179.i64[1] >> -v185;
        if (!v185)
        {
          v186 = 0;
        }
      }

      v187 = vandq_s8(v70, v183);
      v188 = v184 + v180.i64[1];
      v189.i64[0] = -1;
      v189.i64[1] = -1;
      v190 = vandq_s8(vextq_s8(vtstq_s16(v150, v150), 0, 0xEuLL), v65);
      v191.i64[0] = 0xF000F000F000FLL;
      v191.i64[1] = 0xF000F000F000FLL;
      v192 = vandq_s8(vshlq_u16(v189, vaddq_s16(v190, v191)), v70);
      v193 = vmovl_u16(*v190.i8);
      v194 = vpaddq_s32(vshlq_u32(vmovl_u16(*v192.i8), vtrn1q_s32(0, v193)), vmovl_high_u16(v192));
      v195 = vpaddq_s32(v193, vmovl_high_u16(v190));
      v196.i64[0] = v194.u32[0];
      v196.i64[1] = v194.u32[1];
      v197 = v196;
      v196.i64[0] = v194.u32[2];
      v196.i64[1] = v194.u32[3];
      v198 = v196;
      v196.i64[0] = v195.u32[0];
      v196.i64[1] = v195.u32[1];
      v199 = v196;
      v196.i64[0] = v195.u32[2];
      v196.i64[1] = v195.u32[3];
      v200 = vpaddq_s64(vshlq_u64(v197, vzip1q_s64(0, v199)), vshlq_u64(v198, vzip1q_s64(0, v196)));
      v201 = vpaddq_s64(v199, v196);
      v202 = (v200.i64[0] << v188) | v186;
      if (v201.i64[0] + (v188 & 0x3F) >= 0x40)
      {
        *(v154 + ((v188 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v202;
        v202 = v200.i64[0] >> -(v188 & 0x3F);
        if ((v188 & 0x3F) == 0)
        {
          v202 = 0;
        }
      }

      v203 = vceqq_s16(v65, v77);
      v204 = vaddq_s16(v187, v26);
      v205 = v201.i64[0] + v188;
      v206 = v202 | (v200.i64[1] << v205);
      if ((v205 & 0x3F) + v201.i64[1] >= 0x40)
      {
        *(v154 + ((v205 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v200.i64[1] >> -(v205 & 0x3F);
        if ((v205 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = vandq_s8(v70, v203);
      v208 = v205 + v201.i64[1];
      v209 = vextq_s8(0, v76, 0xEuLL);
      v210.i64[0] = 0xF000F000F000FLL;
      v210.i64[1] = 0xF000F000F000FLL;
      v211.i64[0] = -1;
      v211.i64[1] = -1;
      v212 = vandq_s8(vshlq_u16(v211, vaddq_s16(v209, v210)), v204);
      v213 = vmovl_u16(*v209.i8);
      v214 = vmovl_high_u16(v209);
      v215 = vpaddq_s32(vshlq_u32(vmovl_u16(*v212.i8), vtrn1q_s32(0, v213)), vshlq_u32(vmovl_high_u16(v212), vtrn1q_s32(0, v214)));
      v216 = vpaddq_s32(v213, v214);
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v215.u32[2];
      v217.i64[1] = v215.u32[3];
      v219 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v220 = v217;
      v217.i64[0] = v216.u32[2];
      v217.i64[1] = v216.u32[3];
      v221 = vpaddq_s64(vshlq_u64(v218, vzip1q_s64(0, v220)), vshlq_u64(v219, vzip1q_s64(0, v217)));
      v222 = vpaddq_s64(v220, v217);
      v223 = (v221.i64[0] << v208) | v206;
      if (v222.i64[0] + (v208 & 0x3F) >= 0x40)
      {
        *(v154 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
        v223 = v221.i64[0] >> -(v208 & 0x3F);
        if ((v208 & 0x3F) == 0)
        {
          v223 = 0;
        }
      }

      v224 = vceqq_s16(v65, v78);
      v225 = vaddq_s16(v27, v207);
      v226 = v222.i64[0] + v208;
      v227 = v223 | (v221.i64[1] << v226);
      if ((v226 & 0x3F) + v222.i64[1] >= 0x40)
      {
        *(v154 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v227;
        v227 = v221.i64[1] >> -(v226 & 0x3F);
        if ((v226 & 0x3F) == 0)
        {
          v227 = 0;
        }
      }

      v228 = vandq_s8(v70, v224);
      v229 = v226 + v222.i64[1];
      v230.i64[0] = 0xF000F000F000FLL;
      v230.i64[1] = 0xF000F000F000FLL;
      v231.i64[0] = -1;
      v231.i64[1] = -1;
      v232 = vandq_s8(vshlq_u16(v231, vaddq_s16(v77, v230)), v225);
      v233 = vmovl_u16(*v77.i8);
      v234 = vmovl_high_u16(v77);
      v235 = vpaddq_s32(vshlq_u32(vmovl_u16(*v232.i8), vtrn1q_s32(0, v233)), vshlq_u32(vmovl_high_u16(v232), vtrn1q_s32(0, v234)));
      v236 = vpaddq_s32(v233, v234);
      v237.i64[0] = v235.u32[0];
      v237.i64[1] = v235.u32[1];
      v238 = v237;
      v237.i64[0] = v235.u32[2];
      v237.i64[1] = v235.u32[3];
      v239 = v237;
      v237.i64[0] = v236.u32[0];
      v237.i64[1] = v236.u32[1];
      v240 = v237;
      v237.i64[0] = v236.u32[2];
      v237.i64[1] = v236.u32[3];
      v241 = vpaddq_s64(vshlq_u64(v238, vzip1q_s64(0, v240)), vshlq_u64(v239, vzip1q_s64(0, v237)));
      v242 = vpaddq_s64(v240, v237);
      v243 = (v241.i64[0] << v229) | v227;
      if (v242.i64[0] + (v229 & 0x3F) >= 0x40)
      {
        *(v154 + ((v229 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v243;
        v243 = v241.i64[0] >> -(v229 & 0x3F);
        if ((v229 & 0x3F) == 0)
        {
          v243 = 0;
        }
      }

      v244 = vceqq_s16(v65, v79);
      v245 = vaddq_s16(v28, v228);
      v246 = v242.i64[0] + v229;
      v247 = v243 | (v241.i64[1] << v246);
      if ((v246 & 0x3F) + v242.i64[1] >= 0x40)
      {
        *(v154 + ((v246 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v241.i64[1] >> -(v246 & 0x3F);
        if ((v246 & 0x3F) == 0)
        {
          v247 = 0;
        }
      }

      v248 = vandq_s8(v70, v244);
      v249 = v246 + v242.i64[1];
      v250.i64[0] = 0xF000F000F000FLL;
      v250.i64[1] = 0xF000F000F000FLL;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v252 = vandq_s8(vshlq_u16(v251, vaddq_s16(v78, v250)), v245);
      v253 = vmovl_u16(*v78.i8);
      v254 = vmovl_high_u16(v78);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v252.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v252), vtrn1q_s32(0, v254)));
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
      v263 = (v261.i64[0] << v249) | v247;
      if (v262.i64[0] + (v249 & 0x3F) >= 0x40)
      {
        *(v154 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
        v263 = v261.i64[0] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v263 = 0;
        }
      }

      v264 = vaddq_s16(v29, v248);
      v265 = v262.i64[0] + v249;
      v266 = v263 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v154 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = v265 + v262.i64[1];
      v268.i64[0] = 0xF000F000F000FLL;
      v268.i64[1] = 0xF000F000F000FLL;
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vshlq_u16(v269, vaddq_s16(v79, v268)), v264);
      v271 = vmovl_u16(*v79.i8);
      v272 = vmovl_high_u16(v79);
      v273 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v271)), vshlq_u32(vmovl_high_u16(v270), vtrn1q_s32(0, v272)));
      v274 = vpaddq_s32(v271, v272);
      v275.i64[0] = v273.u32[0];
      v275.i64[1] = v273.u32[1];
      v276 = v275;
      v275.i64[0] = v273.u32[2];
      v275.i64[1] = v273.u32[3];
      v277 = v275;
      v275.i64[0] = v274.u32[0];
      v275.i64[1] = v274.u32[1];
      v278 = v275;
      v275.i64[0] = v274.u32[2];
      v275.i64[1] = v274.u32[3];
      v279 = vpaddq_s64(vshlq_u64(v276, vzip1q_s64(0, v278)), vshlq_u64(v277, vzip1q_s64(0, v275)));
      v280 = vpaddq_s64(v278, v275);
      v281 = (v279.i64[0] << v267) | v266;
      if (v280.i64[0] + (v267 & 0x3F) > 0x3F)
      {
        *(v154 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v281;
        if ((v267 & 0x3F) != 0)
        {
          v281 = v279.i64[0] >> -(v267 & 0x3F);
        }

        else
        {
          v281 = 0;
        }
      }

      v282 = v280.i64[0] + v267;
      v283 = v281 | (v279.i64[1] << v282);
      if ((v282 & 0x3F) + v280.i64[1] >= 0x40)
      {
        *(v154 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
        v283 = v279.i64[1] >> -(v282 & 0x3F);
        if ((v282 & 0x3F) == 0)
        {
          v283 = 0;
        }
      }

      v284 = v282 + v280.i64[1];
      if ((v284 & 0x3F) != 0)
      {
        *(v154 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
      }

      result = (v284 - v155 + 7) >> 3;
      v147 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 4;
    v147 = 1;
    result = 2;
  }

  *a2 = v147;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = (a3 + 2 * a4);
  v19 = *(v18 + a4);
  v20 = vshrq_n_s16(vzip1q_s32(*a3, v17), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s32(*v18, v19), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*a3, v17), 4uLL);
  v23 = vshrq_n_s16(vzip2q_s32(*v18, v19), 4uLL);
  v24 = vdupq_lane_s16(*v20.i8, 0);
  v25 = vshlq_n_s16(vsubq_s16(v21, v24), 4uLL);
  v26 = vshlq_n_s16(vsubq_s16(v23, v24), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v24), 4uLL), 4uLL);
  v28 = vshrq_n_s16(v25, 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v24), 4uLL), 4uLL);
  v30 = vshrq_n_s16(v26, 4uLL);
  v25.i16[0] = vmaxvq_s16(v27);
  v31 = vdupq_lane_s16(*v25.i8, 0);
  v26.i16[0] = vminvq_s16(v27);
  v32 = vdupq_lane_s16(*v26.i8, 0);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v31, v33);
  v35.i64[0] = 0x8000800080008000;
  v35.i64[1] = 0x8000800080008000;
  v36 = vminq_s16(v32, v35);
  v37 = vzip1q_s16(v31, v32);
  v38.i64[0] = 0x10001000100010;
  v38.i64[1] = 0x10001000100010;
  v39 = vsubq_s16(v38, vclsq_s16(v37));
  v40 = vbicq_s8(v39, vceqzq_s16(v37));
  v41 = vpmaxq_s16(v40, v40);
  v39.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v42 = vdupq_lane_s16(*v39.i8, 0);
  v43 = vdupq_lane_s16(a15, 0);
  v44 = vmaxq_s16(v34, v42);
  v45 = vminq_s16(v36, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vpmaxq_s16(v47, v47);
  v47.i16[0] = vmaxvq_s16(v29);
  v43.i16[0] = vminvq_s16(v29);
  v49 = vdupq_lane_s16(*v47.i8, 0);
  v50 = vdupq_lane_s16(*v43.i8, 0);
  v51 = vmaxq_s16(v44, v49);
  v52 = vminq_s16(v45, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v54, v54);
  v54.i16[0] = vmaxvq_s16(v30);
  v16.i16[0] = vminvq_s16(v30);
  v56 = vdupq_lane_s16(*v54.i8, 0);
  v57 = vdupq_lane_s16(v16, 0);
  v58 = vmaxq_s16(v51, v56);
  v59 = vminq_s16(v52, v57);
  v60 = vzip1q_s16(v56, v57);
  v61 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v60)), vceqzq_s16(v60));
  v62 = vpmaxq_s16(v61, v61);
  v63 = vmaxq_s16(vmaxq_s16(v41, v48), vmaxq_s16(v55, v62));
  v64 = vclzq_s16(vsubq_s16(v58, v59));
  v65 = vsubq_s16(v38, v64);
  v66 = vminq_s16(v65, v63);
  if (vmaxvq_s16(v66))
  {
    v67.i64[0] = 0x4000400040004;
    v67.i64[1] = 0x4000400040004;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v63, v65);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v64)), v59), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v68.i64[0] = 0x3000300030003;
    v68.i64[1] = 0x3000300030003;
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v41), v68), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v48), v68), 0);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v55), v68), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v62), v68), 0);
    v77 = vsubq_s16(v66, v73);
    v78 = vsubq_s16(v66, v74);
    v79 = vsubq_s16(v66, v75);
    v80 = vsubq_s16(v66, v76);
    v81 = vbicq_s8(v67, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v73, v74))));
    v82 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v66), v68), vandq_s8(v70, v72)), v81);
    if (a5 >= 4 && a6 >= 2)
    {
      v83 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F0F00));
      v84 = v21;
      v84.i16[7] = v20.i16[7];
      v85 = vsubq_s16(v21, vqtbl1q_s8(v84, xmmword_29D2F0F10));
      v86 = v22;
      v86.i16[7] = v20.i16[7];
      v87 = v23;
      v87.i16[7] = v20.i16[7];
      v88 = vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F20));
      v89 = vsubq_s16(v23, vqtbl1q_s8(v87, xmmword_29D2F0F30));
      v90 = v83;
      v90.i16[0] = v83.i16[7];
      v90.i16[7] = v83.i16[0];
      v91 = vshlq_n_s16(v90, 4uLL);
      v90.i64[0] = 0x4000400040004;
      v90.i64[1] = 0x4000400040004;
      v92 = vshlq_n_s16(v88, 4uLL);
      v93 = vshlq_n_s16(v89, 4uLL);
      v94 = vshrq_n_s16(v91, 4uLL);
      v95 = vshrq_n_s16(vshlq_n_s16(v85, 4uLL), 4uLL);
      v96 = vshrq_n_s16(v92, 4uLL);
      v91.i16[0] = vmaxvq_s16(v94);
      v92.i16[0] = vminvq_s16(v94);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98 = vdupq_lane_s16(*v92.i8, 0);
      v99 = vshrq_n_s16(v93, 4uLL);
      v93.i64[0] = 0x8000800080008000;
      v93.i64[1] = 0x8000800080008000;
      v100.i64[0] = 0x8000800080008000;
      v100.i64[1] = 0x8000800080008000;
      v101 = vminq_s16(v98, v100);
      v102 = vzip1q_s16(v97, v98);
      v103.i64[0] = 0x10001000100010;
      v103.i64[1] = 0x10001000100010;
      v104 = vsubq_s16(v103, vclsq_s16(v102));
      v105 = vbicq_s8(v104, vceqzq_s16(v102));
      v104.i16[0] = vmaxvq_s16(v95);
      v15.i16[0] = vminvq_s16(v95);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(v15, 0);
      v108 = vpmaxq_s16(v105, v105);
      v109 = vmaxq_s16(vmaxq_s16(v97, v93), v106);
      v110 = vminq_s16(v101, v107);
      v111 = vzip1q_s16(v106, v107);
      v112 = vsubq_s16(v103, vclsq_s16(v111));
      v113 = vbicq_s8(v112, vceqzq_s16(v111));
      v114 = vpmaxq_s16(v113, v113);
      v113.i16[0] = vmaxvq_s16(v96);
      v115 = vdupq_lane_s16(*v113.i8, 0);
      v112.i16[0] = vminvq_s16(v96);
      v116 = vdupq_lane_s16(*v112.i8, 0);
      v117 = vmaxq_s16(v109, v115);
      v118 = vminq_s16(v110, v116);
      v119 = vzip1q_s16(v115, v116);
      v120 = vsubq_s16(v103, vclsq_s16(v119));
      v121 = vbicq_s8(v120, vceqzq_s16(v119));
      v122 = vpmaxq_s16(v121, v121);
      v121.i16[0] = vmaxvq_s16(v99);
      v120.i16[0] = vminvq_s16(v99);
      v123 = vdupq_lane_s16(*v121.i8, 0);
      v124 = vdupq_lane_s16(*v120.i8, 0);
      v125 = vmaxq_s16(v117, v123);
      v126 = vminq_s16(v118, v124);
      v127 = vzip1q_s16(v123, v124);
      v128 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v127)), vceqzq_s16(v127));
      v129 = vpmaxq_s16(v128, v128);
      v130 = vmaxq_s16(vmaxq_s16(v108, v114), vmaxq_s16(v122, v129));
      v131 = vclzq_s16(vsubq_s16(v125, v126));
      v132 = vsubq_s16(v103, v131);
      v133 = vcgtq_s16(v130, v132);
      v134 = vminq_s16(v132, v130);
      v135 = vsubq_s16(v134, v108);
      v108.i64[0] = 0x3000300030003;
      v108.i64[1] = 0x3000300030003;
      v136 = vmaxq_s16(vminq_s16(v135, v108), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v114), v108), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v122), v108), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v108), 0);
      v140 = vsubq_s16(v134, v136);
      v141 = vsubq_s16(v134, v137);
      v142 = vsubq_s16(v134, v138);
      v143 = vsubq_s16(v134, v139);
      v144 = vbicq_s8(v90, vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137))));
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v66, v70), vaddq_s16(v81, v81)), v77, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v79, v78), v80), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v134, v133), vaddq_s16(v144, v144)), v140, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v134), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v133, v146), vmvnq_s8(v133))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v24.i16[0] = vbslq_s8(v151, vextq_s8(v20, v20, 0xEuLL), v24).u16[0];
        v27 = vbslq_s8(v151, v94, v27);
        v28 = vbslq_s8(v151, v95, v28);
        v29 = vbslq_s8(v151, v96, v29);
        v30 = vbslq_s8(v151, v99, v30);
        v77 = vbslq_s8(v151, v140, v77);
        v78 = vbslq_s8(v151, v141, v78);
        v79 = vbslq_s8(v151, v142, v79);
        v80 = vbslq_s8(v151, v143, v80);
        v71 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v131)), v126), v133), v71);
        v66 = vbslq_s8(v151, v134, v66);
        v82 = vbslq_s8(v151, v149, v82);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v82, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v82, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v66, vceqzq_s16(v153)).u16[0] + ((2 * v82.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v77.i16[0] + 8 * v77.i16[0] + 8 * vaddq_s16(vaddq_s16(v79, v78), v80).u16[0]) - 271) <= 0xFFFFFFFFFFFFFED7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 36;
    }

    else
    {
      v157 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v158 = 8 * (a1 & 7);
      if (v158)
      {
        v159 = *v157 & ~(-1 << v158);
      }

      else
      {
        v159 = 0;
      }

      if (v66.i16[0])
      {
        v161 = (16 * v66.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v82.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v24.i16[0] & 0xFFF) << 8) | v82.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x2E)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = vsubq_s16(v66, v77);
      v165 = vsubq_s16(v66, v78);
      v166 = vsubq_s16(v66, v79);
      v167 = vsubq_s16(v66, v80);
      *v164.i8 = vqmovn_u16(v164);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      v164.i32[0] = vzip1q_s16(vzip1q_s8(v164, v165), vzip1q_s8(v166, v167)).u32[0];
      v168 = v158 + 18;
      v165.i64[0] = 0x202020202020202;
      v165.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v82.i8, 0x4000400040004)))), v165);
      v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[0] = -1;
      v166.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v166, vorrq_s8(v169, v165)), v164.u32[0]);
      v171 = vmovl_u8(*v169.i8);
      v172 = vpaddq_s16(vshlq_u16(vmovl_u8(*v170.i8), vtrn1q_s16(0, v171)), vmovl_high_u8(v170));
      v173 = vpaddq_s16(v171, vmovl_high_u8(v169));
      v174 = vmovl_u16(*v173.i8);
      v175 = vmovl_high_u16(v173);
      v176 = vpaddq_s32(vshlq_u32(vmovl_u16(*v172.i8), vtrn1q_s32(0, v174)), vshlq_u32(vmovl_high_u16(v172), vtrn1q_s32(0, v175)));
      v177 = vpaddq_s32(v174, v175);
      v178.i64[0] = v176.u32[0];
      v178.i64[1] = v176.u32[1];
      v179 = v178;
      v178.i64[0] = v176.u32[2];
      v178.i64[1] = v176.u32[3];
      v180 = v178;
      v178.i64[0] = v177.u32[0];
      v178.i64[1] = v177.u32[1];
      v181 = v178;
      v178.i64[0] = v177.u32[2];
      v178.i64[1] = v177.u32[3];
      v182 = vpaddq_s64(vshlq_u64(v179, vzip1q_s64(0, v181)), vshlq_u64(v180, vzip1q_s64(0, v178)));
      v183 = vpaddq_s64(v181, v178);
      v184 = (v158 + 18) & 0x3A;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v168 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
      }

      v186 = vceqq_s16(v66, v77);
      v187 = v183.i64[0] + v168;
      v188 = (v183.i64[0] + v168) & 0x3F;
      v189 = v185 | (v182.i64[1] << (v183.i8[0] + v168));
      if ((v188 + v183.i64[1]) >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v189;
        v189 = v182.i64[1] >> -v188;
        if (!v188)
        {
          v189 = 0;
        }
      }

      v190 = vandq_s8(v71, v186);
      v191 = v187 + v183.i64[1];
      v192 = vtstq_s16(v153, v153);
      v193.i64[0] = -1;
      v193.i64[1] = -1;
      v194 = vandq_s8(vextq_s8(v192, 0, 0xEuLL), v66);
      v195.i64[0] = 0xF000F000F000FLL;
      v195.i64[1] = 0xF000F000F000FLL;
      v196 = vandq_s8(vshlq_u16(v193, vaddq_s16(v194, v195)), v71);
      v197 = vmovl_u16(*v194.i8);
      v198 = vpaddq_s32(vshlq_u32(vmovl_u16(*v196.i8), vtrn1q_s32(0, v197)), vmovl_high_u16(v196));
      v199 = vpaddq_s32(v197, vmovl_high_u16(v194));
      v200.i64[0] = v198.u32[0];
      v200.i64[1] = v198.u32[1];
      v201 = v200;
      v200.i64[0] = v198.u32[2];
      v200.i64[1] = v198.u32[3];
      v202 = v200;
      v200.i64[0] = v199.u32[0];
      v200.i64[1] = v199.u32[1];
      v203 = v200;
      v200.i64[0] = v199.u32[2];
      v200.i64[1] = v199.u32[3];
      v204 = vpaddq_s64(vshlq_u64(v201, vzip1q_s64(0, v203)), vshlq_u64(v202, vzip1q_s64(0, v200)));
      v205 = vpaddq_s64(v203, v200);
      v206 = (v204.i64[0] << v191) | v189;
      if (v205.i64[0] + (v191 & 0x3F) >= 0x40)
      {
        *(v157 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v204.i64[0] >> -(v191 & 0x3F);
        if ((v191 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = vceqq_s16(v66, v78);
      v208 = vaddq_s16(v190, v27);
      v209 = v205.i64[0] + v191;
      v210 = v206 | (v204.i64[1] << v209);
      if ((v209 & 0x3F) + v205.i64[1] >= 0x40)
      {
        *(v157 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v210;
        v210 = v204.i64[1] >> -(v209 & 0x3F);
        if ((v209 & 0x3F) == 0)
        {
          v210 = 0;
        }
      }

      v211 = vandq_s8(v71, v207);
      v212 = v209 + v205.i64[1];
      v213 = vextq_s8(0, v77, 0xEuLL);
      v214.i64[0] = 0xF000F000F000FLL;
      v214.i64[1] = 0xF000F000F000FLL;
      v215.i64[0] = -1;
      v215.i64[1] = -1;
      v216 = vandq_s8(vshlq_u16(v215, vaddq_s16(v213, v214)), v208);
      v217 = vmovl_u16(*v213.i8);
      v218 = vmovl_high_u16(v213);
      v219 = vpaddq_s32(vshlq_u32(vmovl_u16(*v216.i8), vtrn1q_s32(0, v217)), vshlq_u32(vmovl_high_u16(v216), vtrn1q_s32(0, v218)));
      v220 = vpaddq_s32(v217, v218);
      v221.i64[0] = v219.u32[0];
      v221.i64[1] = v219.u32[1];
      v222 = v221;
      v221.i64[0] = v219.u32[2];
      v221.i64[1] = v219.u32[3];
      v223 = v221;
      v221.i64[0] = v220.u32[0];
      v221.i64[1] = v220.u32[1];
      v224 = v221;
      v221.i64[0] = v220.u32[2];
      v221.i64[1] = v220.u32[3];
      v225 = vpaddq_s64(vshlq_u64(v222, vzip1q_s64(0, v224)), vshlq_u64(v223, vzip1q_s64(0, v221)));
      v226 = vpaddq_s64(v224, v221);
      v227 = (v225.i64[0] << v212) | v210;
      if (v226.i64[0] + (v212 & 0x3F) >= 0x40)
      {
        *(v157 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v227;
        v227 = v225.i64[0] >> -(v212 & 0x3F);
        if ((v212 & 0x3F) == 0)
        {
          v227 = 0;
        }
      }

      v228 = vceqq_s16(v66, v79);
      v229 = vaddq_s16(v28, v211);
      v230 = v226.i64[0] + v212;
      v231 = v227 | (v225.i64[1] << v230);
      if ((v230 & 0x3F) + v226.i64[1] >= 0x40)
      {
        *(v157 + ((v230 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v231;
        v231 = v225.i64[1] >> -(v230 & 0x3F);
        if ((v230 & 0x3F) == 0)
        {
          v231 = 0;
        }
      }

      v232 = vandq_s8(v71, v228);
      v233 = v230 + v226.i64[1];
      v234.i64[0] = 0xF000F000F000FLL;
      v234.i64[1] = 0xF000F000F000FLL;
      v235.i64[0] = -1;
      v235.i64[1] = -1;
      v236 = vandq_s8(vshlq_u16(v235, vaddq_s16(v78, v234)), v229);
      v237 = vmovl_u16(*v78.i8);
      v238 = vmovl_high_u16(v78);
      v239 = vpaddq_s32(vshlq_u32(vmovl_u16(*v236.i8), vtrn1q_s32(0, v237)), vshlq_u32(vmovl_high_u16(v236), vtrn1q_s32(0, v238)));
      v240 = vpaddq_s32(v237, v238);
      v241.i64[0] = v239.u32[0];
      v241.i64[1] = v239.u32[1];
      v242 = v241;
      v241.i64[0] = v239.u32[2];
      v241.i64[1] = v239.u32[3];
      v243 = v241;
      v241.i64[0] = v240.u32[0];
      v241.i64[1] = v240.u32[1];
      v244 = v241;
      v241.i64[0] = v240.u32[2];
      v241.i64[1] = v240.u32[3];
      v245 = vpaddq_s64(vshlq_u64(v242, vzip1q_s64(0, v244)), vshlq_u64(v243, vzip1q_s64(0, v241)));
      v246 = vpaddq_s64(v244, v241);
      v247 = (v245.i64[0] << v233) | v231;
      if (v246.i64[0] + (v233 & 0x3F) >= 0x40)
      {
        *(v157 + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v245.i64[0] >> -(v233 & 0x3F);
        if ((v233 & 0x3F) == 0)
        {
          v247 = 0;
        }
      }

      v248 = vceqq_s16(v66, v80);
      v249 = vaddq_s16(v29, v232);
      v250 = v246.i64[0] + v233;
      v251 = v247 | (v245.i64[1] << v250);
      if ((v250 & 0x3F) + v246.i64[1] >= 0x40)
      {
        *(v157 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v251;
        v251 = v245.i64[1] >> -(v250 & 0x3F);
        if ((v250 & 0x3F) == 0)
        {
          v251 = 0;
        }
      }

      v252 = vandq_s8(v71, v248);
      v253 = v250 + v246.i64[1];
      v254.i64[0] = 0xF000F000F000FLL;
      v254.i64[1] = 0xF000F000F000FLL;
      v255.i64[0] = -1;
      v255.i64[1] = -1;
      v256 = vandq_s8(vshlq_u16(v255, vaddq_s16(v79, v254)), v249);
      v257 = vmovl_u16(*v79.i8);
      v258 = vmovl_high_u16(v79);
      v259 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v257)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v258)));
      v260 = vpaddq_s32(v257, v258);
      v261.i64[0] = v259.u32[0];
      v261.i64[1] = v259.u32[1];
      v262 = v261;
      v261.i64[0] = v259.u32[2];
      v261.i64[1] = v259.u32[3];
      v263 = v261;
      v261.i64[0] = v260.u32[0];
      v261.i64[1] = v260.u32[1];
      v264 = v261;
      v261.i64[0] = v260.u32[2];
      v261.i64[1] = v260.u32[3];
      v265 = vpaddq_s64(vshlq_u64(v262, vzip1q_s64(0, v264)), vshlq_u64(v263, vzip1q_s64(0, v261)));
      v266 = vpaddq_s64(v264, v261);
      v267 = (v265.i64[0] << v253) | v251;
      if (v266.i64[0] + (v253 & 0x3F) >= 0x40)
      {
        *(v157 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v267;
        v267 = v265.i64[0] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v267 = 0;
        }
      }

      v268 = vaddq_s16(v30, v252);
      v269 = v266.i64[0] + v253;
      v270 = v267 | (v265.i64[1] << v269);
      if ((v269 & 0x3F) + v266.i64[1] >= 0x40)
      {
        *(v157 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v270;
        v270 = v265.i64[1] >> -(v269 & 0x3F);
        if ((v269 & 0x3F) == 0)
        {
          v270 = 0;
        }
      }

      v271 = v269 + v266.i64[1];
      v272.i64[0] = 0xF000F000F000FLL;
      v272.i64[1] = 0xF000F000F000FLL;
      v273.i64[0] = -1;
      v273.i64[1] = -1;
      v274 = vandq_s8(vshlq_u16(v273, vaddq_s16(v80, v272)), v268);
      v275 = vmovl_u16(*v80.i8);
      v276 = vmovl_high_u16(v80);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v274.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v274), vtrn1q_s32(0, v276)));
      v278 = vpaddq_s32(v275, v276);
      v279.i64[0] = v277.u32[0];
      v279.i64[1] = v277.u32[1];
      v280 = v279;
      v279.i64[0] = v277.u32[2];
      v279.i64[1] = v277.u32[3];
      v281 = v279;
      v279.i64[0] = v278.u32[0];
      v279.i64[1] = v278.u32[1];
      v282 = v279;
      v279.i64[0] = v278.u32[2];
      v279.i64[1] = v278.u32[3];
      v283 = vpaddq_s64(vshlq_u64(v280, vzip1q_s64(0, v282)), vshlq_u64(v281, vzip1q_s64(0, v279)));
      v284 = vpaddq_s64(v282, v279);
      v285 = (v283.i64[0] << v271) | v270;
      if (v284.i64[0] + (v271 & 0x3F) > 0x3F)
      {
        *(v157 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        if ((v271 & 0x3F) != 0)
        {
          v285 = v283.i64[0] >> -(v271 & 0x3F);
        }

        else
        {
          v285 = 0;
        }
      }

      v286 = v284.i64[0] + v271;
      v287 = v285 | (v283.i64[1] << v286);
      if ((v286 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v157 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
        v287 = v283.i64[1] >> -(v286 & 0x3F);
        if ((v286 & 0x3F) == 0)
        {
          v287 = 0;
        }
      }

      v288 = v286 + v284.i64[1];
      if ((v288 & 0x3F) != 0)
      {
        *(v157 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
      }

      result = (v288 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 4;
    *a2 = 1;
    return 2;
  }

  return result;
}