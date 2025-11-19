uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 11;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 121) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 8;
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
      v12 = 16 * v13;
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 27 >> 31) + 8) | v12;
    if (v12 == 4080)
    {
      v18 = 4095;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 2048 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 121) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 2048 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 4080)
        {
          v10 = 4095;
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
    v22 = 8;
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
    v10 = 16 * v20;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = 6;
  v8 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x7D)
  {
    v9 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x7D)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6 & 7;
  if ((v6 & 7) != 0)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if ((v9 - v4 - 127) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
      do
      {
        v17 = 64 - v9;
        if (64 - v9 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v9;
        v12 += v18 >> 6;
        v9 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
      v13 = v14 & 3;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v7 = 8;
  }

  v19 = v11 + 3;
  if (!v11)
  {
    v19 = v13;
  }

  v170 = v19;
  if (v10)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if ((v9 - v4 + (v12 << 6) - 127) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v22 = 0;
      v23 = 0;
      v24 = 2;
      do
      {
        v25 = 64 - v9;
        if (64 - v9 >= v24)
        {
          v25 = v24;
        }

        v22 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v25)) << v23;
        v23 += v25;
        v26 = v25 + v9;
        v12 += v26 >> 6;
        v9 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v21 = v22 & 3;
    }

    else
    {
      v21 = 0;
    }

    v20 = 2;
  }

  if (v10)
  {
    v21 = v10 + 3;
  }

  v171 = v21;
  v28 = dword_29D2F35F0[10 * v21 + 6];
  v167 = dword_29D2F35F0[10 * v19 + 6];
  v27 = v167;
  v168 = v28;
  v169[0] = v167;
  v169[1] = v28;
  if (*(&v170 + (v21 >= v19)) == *(&v170 + (v21 < v19)))
  {
    v29 = v167;
  }

  else
  {
    v30 = v169[v21 < v19];
    v29 = v167;
    if (v30 >= 1)
    {
      *(&v167 + (v21 < v19)) = 0;
      *(&v167 + (v21 >= v19)) += v30;
      v29 = v167;
    }
  }

  v31 = kDQuadParamTable;
  v32 = &kDQuadParamTable[10 * v19];
  v33 = v32[324] + 2;
  v34 = v32[325];
  v35 = v34 + 2;
  v36 = v29 - v27;
  if (v36 < 0)
  {
    v37 = -v36;
    v38 = &kDQuadParamTable[10 * v19];
    if (v38[327] >= v37)
    {
      goto LABEL_41;
    }

    v35 = v34 + 1;
    if (v38[328])
    {
      goto LABEL_41;
    }

    v36 = -1;
  }

  else
  {
    if (!v36)
    {
      goto LABEL_41;
    }

    v35 += v36;
  }

  v33 += v36;
LABEL_41:
  if (v33 >= 0xC)
  {
    v39 = 12;
  }

  else
  {
    v39 = v33;
  }

  if (v34)
  {
    v40 = 12;
  }

  else
  {
    v40 = 0;
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = &kDQuadParamTable[10 * v21];
  v43 = v42[324] + 2;
  v44 = v42[325];
  v45 = v44 + 2;
  v46 = v168 - v28;
  if (v46 < 0)
  {
    v47 = -v46;
    v48 = &kDQuadParamTable[10 * v21];
    if (v48[327] >= v47)
    {
      goto LABEL_56;
    }

    v45 = v44 + 1;
    if (v48[328])
    {
      goto LABEL_56;
    }

    v46 = -1;
  }

  else
  {
    if (!v46)
    {
      goto LABEL_56;
    }

    v45 += v46;
  }

  v43 += v46;
LABEL_56:
  v49 = v7 + v20;
  if (v43 >= 0xC)
  {
    v50 = 12;
  }

  else
  {
    v50 = v43;
  }

  if (v44)
  {
    v51 = 12;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v45)
  {
    v52 = v45;
  }

  else
  {
    v52 = v51;
  }

  if (v19)
  {
    v53 = 0;
    if (v33 && (v9 - v4 + (v12 << 6) + v39) <= 0x80)
    {
      v53 = 0;
      v54 = 0;
      v55 = v39;
      do
      {
        v56 = 64 - v9;
        if (64 - v9 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v9;
        v12 += v57 >> 6;
        v9 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
    }

    v58 = v53 << (12 - v39);
    v49 += v39;
    if (!v21)
    {
      goto LABEL_82;
    }

    goto LABEL_75;
  }

  v58 = 0;
  if (v21)
  {
LABEL_75:
    v59 = 0;
    if (v43 && (v9 - v4 + (v12 << 6) + v50) <= 0x80)
    {
      v59 = 0;
      v60 = 0;
      v61 = v50;
      do
      {
        v62 = 64 - v9;
        if (64 - v9 >= v61)
        {
          v62 = v61;
        }

        v59 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v62)) << v60;
        v60 += v62;
        v63 = v62 + v9;
        v12 += v63 >> 6;
        v9 = v63 & 0x3F;
        v61 -= v62;
      }

      while (v61);
    }

    v21 = v59 << (12 - v50);
    v49 += v50;
  }

LABEL_82:
  v163 = 0;
  v164 = 0;
  if (v41)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0x80)
    {
      v64 = 0;
      v65 = 0;
      v66 = 3;
      do
      {
        v67 = 64 - v9;
        if (64 - v9 >= v66)
        {
          v67 = v66;
        }

        v64 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v67)) << v65;
        v65 += v67;
        v68 = v67 + v9;
        v12 += v68 >> 6;
        v9 = v68 & 0x3F;
        v66 -= v67;
      }

      while (v66);
    }

    else
    {
      v64 = 0;
    }

    v164 = v64;
    v49 += 3;
  }

  if (v52)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0x80)
    {
      v69 = 0;
      v70 = 0;
      v71 = 3;
      do
      {
        v72 = 64 - v9;
        if (64 - v9 >= v71)
        {
          v72 = v71;
        }

        v69 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v72)) << v70;
        v70 += v72;
        v73 = v72 + v9;
        v12 += v73 >> 6;
        v9 = v73 & 0x3F;
        v71 -= v72;
      }

      while (v71);
    }

    else
    {
      v69 = 0;
    }

    v163 = v69;
    v49 += 3;
  }

  v74 = 0;
  v75 = a3 & 0xFFFFFFFD;
  v76 = 128 - v49;
  v77 = (128 - v49) / 7u;
  v78 = (v9 | (v12 << 6)) + v76 % 7;
  v166 = 0;
  memset(v165, 0, sizeof(v165));
  do
  {
    v80 = v78 >> 6;
    v81 = v78 & 0x3F;
    if (v41)
    {
      if (v81 - v4 + (v78 & 0xFFFFFFFFFFFFFFC0) + v41 <= 0x80)
      {
        v82 = 0;
        v83 = 0;
        v84 = v41;
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

      *(v165 + v74) = v82;
    }

    if (v52)
    {
      if (v81 - v4 + (v80 << 6) + v52 <= 0x80)
      {
        v87 = 0;
        v88 = 0;
        v89 = v52;
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

      *(&v165[1] + v74 + 3) = v87;
      v79 = v52 + v41;
    }

    else
    {
      v79 = v41;
    }

    v78 = (v81 | (v80 << 6)) + v77 - v79;
    ++v74;
  }

  while (v74 != 7);
  v92 = 0;
  v93 = &v170;
  v94 = &v164;
  v95 = 1;
  v96 = v165;
  v97 = v41;
  do
  {
    v100 = v95;
    v101 = *&v31[10 * *v93 + 322];
    if (v101 >> v97 <= 1)
    {
      v102 = 1;
    }

    else
    {
      v102 = v101 >> v97;
    }

    v103 = v102 >> 1;
    v104 = (1 << (12 - v39)) >> 1;
    if (v102 >> 1 < v104)
    {
      v104 = v102 >> 1;
    }

    v105 = v58;
    result = 2048;
    v107 = 2048 - v58;
    if (v58)
    {
      v108 = v104;
    }

    else
    {
      v108 = 0;
    }

    v109 = v58 == 2048;
    v39 = a2 + 4 * v92;
    if (v97)
    {
      v110 = v50;
      v111 = v31;
      v112 = v101 + v105;
      v113 = -1 << v97;
      v114 = *v94;
      v115 = v107 / v102;
      if (!*v94)
      {
        v119 = 0;
        v118 = v108;
        v117 = v109;
        goto LABEL_158;
      }

      v116 = *v96;
      v117 = v115 == v116;
      if (v105 | v116)
      {
        if (v112 >= 0x1000 && (v113 ^ v116) == -1)
        {
          v119 = 1;
          v118 = 4095;
LABEL_158:
          v122 = v118 + v105;
          if (a3 != 4 || (result = (v122 | 0x80000000) >> 22, v123 = 4095, result != 1022))
          {
            if (v122 >= 0x1000)
            {
              v123 = 4095;
            }

            else
            {
              v123 = v122;
            }
          }

          if (v117)
          {
            v124 = 0;
          }

          else
          {
            v124 = v123 ^ 0x800;
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
            v127 = *(v165 + 7 * v92 + v119);
            v126 = v115 == v127;
            if (v105 | v127)
            {
              if (v112 >= 0x1000 && (v113 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 4095;
              }

              else
              {
                v125 = v103 + v102 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v119;
          }

          v128 = v125 + v105;
          if (a3 != 4 || (result = (v128 | 0x80000000) >> 22, v129 = 4095, result != 1022))
          {
            if (v128 >= 0x1000)
            {
              v129 = 4095;
            }

            else
            {
              v129 = v128;
            }
          }

          if (v126)
          {
            v130 = 0;
          }

          else
          {
            v130 = v129 ^ 0x800;
          }

          if (v75 != 1)
          {
            v130 = v129;
          }

          *(v39 + 8) = v130;
          if (v114 == 2)
          {
            v131 = v108;
            v132 = v109;
          }

          else
          {
            v133 = *(v165 + 7 * v92 + v119);
            v132 = v115 == v133;
            if (v105 | v133)
            {
              if (v112 >= 0x1000 && (v113 ^ v133) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v131 = 4095;
              }

              else
              {
                v131 = v103 + v102 * v133;
              }
            }

            else
            {
              v131 = 0;
            }

            ++v119;
          }

          v134 = v131 + v105;
          if (a3 != 4 || (result = (v134 | 0x80000000) >> 22, v135 = 4095, result != 1022))
          {
            if (v134 >= 0x1000)
            {
              v135 = 4095;
            }

            else
            {
              v135 = v134;
            }
          }

          if (v132)
          {
            v136 = 0;
          }

          else
          {
            v136 = v135 ^ 0x800;
          }

          if (v75 != 1)
          {
            v136 = v135;
          }

          *(v39 + 16) = v136;
          if (v114 == 3)
          {
            v137 = v108;
            v138 = v109;
          }

          else
          {
            v139 = *(v165 + 7 * v92 + v119);
            v138 = v115 == v139;
            if (v105 | v139)
            {
              if (v112 >= 0x1000 && (v113 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v137 = 4095;
              }

              else
              {
                v137 = v103 + v102 * v139;
              }
            }

            else
            {
              v137 = 0;
            }

            ++v119;
          }

          v140 = v137 + v105;
          if (a3 != 4 || (result = (v140 | 0x80000000) >> 22, v141 = 4095, result != 1022))
          {
            if (v140 >= 0x1000)
            {
              v141 = 4095;
            }

            else
            {
              v141 = v140;
            }
          }

          if (v138)
          {
            v142 = 0;
          }

          else
          {
            v142 = v141 ^ 0x800;
          }

          if (v75 != 1)
          {
            v142 = v141;
          }

          *(v39 + 24) = v142;
          if (v114 == 4)
          {
            v143 = v108;
            v144 = v109;
          }

          else
          {
            v145 = *(v165 + 7 * v92 + v119);
            v144 = v115 == v145;
            if (v105 | v145)
            {
              if (v112 >= 0x1000 && (v113 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v143 = 4095;
              }

              else
              {
                v143 = v103 + v102 * v145;
              }
            }

            else
            {
              v143 = 0;
            }

            ++v119;
          }

          v146 = v143 + v105;
          if (a3 != 4 || (result = (v146 | 0x80000000) >> 22, v147 = 4095, result != 1022))
          {
            if (v146 >= 0x1000)
            {
              v147 = 4095;
            }

            else
            {
              v147 = v146;
            }
          }

          if (v144)
          {
            v148 = 0;
          }

          else
          {
            v148 = v147 ^ 0x800;
          }

          if (v75 != 1)
          {
            v148 = v147;
          }

          *(v39 + 32) = v148;
          if (v114 == 5)
          {
            v149 = v108;
            v150 = v109;
          }

          else
          {
            v151 = *(v165 + 7 * v92 + v119);
            v150 = v115 == v151;
            if (v105 | v151)
            {
              if (v112 >= 0x1000 && (v113 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v149 = 4095;
              }

              else
              {
                v149 = v103 + v102 * v151;
              }
            }

            else
            {
              v149 = 0;
            }

            ++v119;
          }

          v152 = v149 + v105;
          if (a3 != 4 || (result = (v152 | 0x80000000) >> 22, v153 = 4095, result != 1022))
          {
            if (v152 >= 0x1000)
            {
              v153 = 4095;
            }

            else
            {
              v153 = v152;
            }
          }

          if (v150)
          {
            v154 = 0;
          }

          else
          {
            v154 = v153 ^ 0x800;
          }

          if (v75 != 1)
          {
            v154 = v153;
          }

          *(v39 + 40) = v154;
          if (v114 == 6)
          {
            v155 = v108;
            v156 = v109;
          }

          else
          {
            v157 = *(v165 + 7 * v92 + v119);
            v156 = v115 == v157;
            if (v105 | v157)
            {
              if (v112 >= 0x1000 && (v113 ^ v157) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v155 = 4095;
              }

              else
              {
                v155 = v103 + v102 * v157;
              }
            }

            else
            {
              v155 = 0;
            }

            ++v119;
          }

          v158 = v155 + v105;
          if (a3 != 4 || (result = (v158 | 0x80000000) >> 22, v159 = 4095, result != 1022))
          {
            if (v158 >= 0x1000)
            {
              v159 = 4095;
            }

            else
            {
              v159 = v158;
            }
          }

          if (v156)
          {
            v160 = 0;
          }

          else
          {
            v160 = v159 ^ 0x800;
          }

          if (v75 != 1)
          {
            v160 = v159;
          }

          *(v39 + 48) = v160;
          if (v114 != 7)
          {
            v161 = *(v165 + 7 * v92 + v119);
            v109 = v115 == v161;
            if (v105 | v161)
            {
              if (v112 >= 0x1000 && (v113 ^ v161) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v108 = 4095;
              }

              else
              {
                v108 = v103 + v102 * v161;
              }
            }

            else
            {
              v108 = 0;
            }
          }

          v162 = v108 + v105;
          if (a3 != 4 || (LODWORD(v98) = 4095, (v162 | 0x80000000) >> 22 != 1022))
          {
            if (v162 >= 0x1000)
            {
              LODWORD(v98) = 4095;
            }

            else
            {
              LODWORD(v98) = v108 + v105;
            }
          }

          v99 = v98 ^ 0x800;
          if (v109)
          {
            v99 = 0;
          }

          if (v75 == 1)
          {
            LODWORD(v98) = v99;
          }

          v31 = v111;
          v50 = v110;
          goto LABEL_126;
        }

        v118 = v103 + v102 * v116;
      }

      else
      {
        v118 = 0;
      }

      v119 = 1;
      goto LABEL_158;
    }

    if (a3 == 4)
    {
      if ((v105 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v98) = 4095;
      }

      else
      {
        if ((v105 & 0xFFC00000) == 0xFF800000)
        {
          v98 = 4286578687;
        }

        else
        {
          v98 = v105;
        }

        if (v98 >= 0x1000)
        {
          LODWORD(v98) = 4095;
        }
      }
    }

    else
    {
      if (v105 >= 0xFFF)
      {
        LODWORD(v98) = 4095;
      }

      else
      {
        LODWORD(v98) = v105;
      }

      v121 = v98 ^ 0x800;
      if (v102 > v107)
      {
        v121 = 0;
      }

      if (v75 == 1)
      {
        LODWORD(v98) = v121;
      }
    }

    *v39 = v98;
    *(v39 + 8) = v98;
    *(v39 + 16) = v98;
    *(v39 + 24) = v98;
    *(v39 + 32) = v98;
    *(v39 + 40) = v98;
    *(v39 + 48) = v98;
LABEL_126:
    v95 = 0;
    *(v39 + 56) = v98;
    v94 = &v163;
    v96 = &v165[1] + 3;
    v58 = v21;
    v97 = v52;
    LOBYTE(v39) = v50;
    v93 = &v171;
    v92 = 1;
  }

  while ((v100 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
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
    v24 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
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
    v26 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
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
    v34 = a3 + 48;
    if ((v25 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
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
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x14uLL), vmovl_u16(vshl_n_s16(v35, 4uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x14uLL), vmovl_u16(vshl_n_s16(v37, 4uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x14uLL), vmovl_u16(vshl_n_s16(v40, 4uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 4uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x14uLL), v45);
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
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x14uLL), vmovl_u16(vshl_n_s16(*v44.i8, 4uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
    v49 = (v48 + a2);
    v41.i16[0] = v503;
    v41.i16[1] = v505;
    v41.i16[2] = v502;
    v41.i16[3] = v504;
    v42.i16[0] = v507;
    v42.i16[1] = v509;
    v42.i16[2] = v506;
    v42.i16[3] = v508;
    v8 = 64;
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x14uLL), vmovl_u16(vshl_n_s16(v43, 4uLL)));
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
    case 0x5Fu:
      v51.i64[0] = 0xC000C000C000CLL;
      v51.i64[1] = 0xC000C000C000CLL;
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
        v94 = vshrq_n_u32(v84, 0xCuLL);
        v95 = vshrq_n_u32(v85, 0xCuLL);
        v96 = vshrq_n_u32(v87, 0xCuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xCuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xCuLL);
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
        v117 = vshrq_n_u32(v116, 0xCuLL);
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
        v132 = vshrq_n_u32(v131, 0xCuLL);
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
        v147 = vshrq_n_u32(v146, 0xCuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 4uLL);
        v153 = vshlq_n_s16(v140, 4uLL);
        v154 = vshlq_n_s16(v141, 4uLL);
        v155 = vshlq_n_s16(v142, 4uLL);
        v57 = vshlq_n_s16(v143, 4uLL);
        v156 = vshlq_n_s16(v144, 4uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xCuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 4uLL);
        v162 = vshlq_n_s16(v160, 4uLL);
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
      return 96;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 8) & 0xFFF00000 | (16 * (*a3 & 0xFFF)));
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
      v183 = v174 + 42;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x29)
      {
        v186 |= v185[1] << -v184;
      }

      v187 = vdupq_lane_s32(v180, 0);
      v188 = vdupq_lane_s32(v182, 0);
      v189 = (8 * (a3 & 7)) | 0x200;
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
          v204 = v183 & 0x3A;
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

      if ((v202 & 1) != 0 || (v8 = a4 + 1, v189 + 8 * v8 - v307 - 512 >= 9))
      {
        v310 = 0;
        v311 = 0;
        v312 = 8 * (&v512 & 7);
        v313 = 12;
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
        v321 = 12;
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
      v429.i16[0] = v186 & 0xFFF;
      v429.i16[1] = (v186 >> 12) & 0xFFF;
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
      v455 = vshlq_n_s16(v447, 4uLL);
      v456 = vshlq_n_s16(v448, 4uLL);
      v457 = vshlq_n_s16(v449, 4uLL);
      v458 = vshlq_n_s16(v451, 4uLL);
      v459 = vshlq_n_s16(v452, 4uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 4uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 4uLL);
      v467 = vshlq_n_s16(v454, 4uLL);
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(uint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v17 = vshrq_n_s16(v11, 4uLL);
  v18 = vshrq_n_s16(v12, 4uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 4uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 4uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v482 = vshrq_n_s16(vzip1q_s64(v14, *v13), 4uLL);
  v484 = vshrq_n_s16(vzip1q_s64(v8, v10), 4uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 4uLL), 4uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 4uLL), 4uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, v23), 4uLL), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 4uLL), 4uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v484, v23), 4uLL), 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 4uLL), 4uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 4uLL), 4uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 4uLL), 4uLL);
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
  if (!vmaxvq_s16(v82))
  {
    v181 = (a3->i32[0] >> 8) & 0xFFFFF000 | (a3->i32[0] >> 4);
    *(a1 + 2) = HIBYTE(a3->i32[0]);
    *a1 = v181;
    *a2 = 2;
    return 3;
  }

  v464 = v19;
  v465 = v20;
  v466 = v21;
  v467 = v22;
  v83.i64[0] = 0x4000400040004;
  v83.i64[1] = 0x4000400040004;
  v84.i64[0] = -1;
  v84.i64[1] = -1;
  v85.i64[0] = 0xF000F000F000FLL;
  v85.i64[1] = 0xF000F000F000FLL;
  v480 = vsubq_s16(vshlq_s16(v84, vsubq_s16(v85, v80)), v75);
  v86 = vcgtq_s16(v79, v81);
  v87.i64[0] = 0x8000800080008;
  v87.i64[1] = 0x8000800080008;
  v88.i64[0] = 0x3000300030003;
  v88.i64[1] = 0x3000300030003;
  v473 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v88), 0);
  v474 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v88), 0);
  v476 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v88), 0);
  v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v88), 0);
  v89 = vbicq_s8(v83, vceqq_s16(vaddq_s16(v478, v474), vnegq_s16(vaddq_s16(v473, v476))));
  v472 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v88), vandq_s8(v86, v87));
  v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 4uLL), 4uLL);
  v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 4uLL), 4uLL);
  v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 4uLL), 4uLL);
  v492 = v31;
  v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 4uLL), 4uLL);
  v486 = v25;
  v471 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 4uLL), 4uLL);
  v94 = vqtbl1q_s8(vmaxq_s16(v90, v471), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v90, v471), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v38);
  v494 = v24;
  v101 = vminq_s16(v99, v40);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = vpmaxq_s16(v103, v103);
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 4uLL), 4uLL);
  v469 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 4uLL), 4uLL);
  v105 = vqtbl1q_s8(vmaxq_s16(v469, v468), xmmword_29D2F1090);
  v106 = vqtbl1q_s8(vminq_s16(v469, v468), xmmword_29D2F1090);
  v107 = vpmaxq_s16(v105, v105);
  v108 = vpminq_s16(v106, v106);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vmaxq_s16(v100, v109);
  v112 = vminq_s16(v101, v110);
  v113 = vzip1q_s16(v109, v110);
  v114 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v113)), vceqzq_s16(v113));
  v488 = v29;
  v490 = v30;
  v115 = v27;
  v116 = vpmaxq_s16(v114, v114);
  v117 = vqtbl1q_s8(vmaxq_s16(v91, v92), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v91, v92), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v111, v121);
  v124 = vminq_s16(v112, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
  v127 = v26;
  v128 = v28;
  v129 = vpmaxq_s16(v126, v126);
  v470 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 4uLL), 4uLL);
  v130 = vqtbl1q_s8(vmaxq_s16(v470, v93), xmmword_29D2F1090);
  v131 = vqtbl1q_s8(vminq_s16(v470, v93), xmmword_29D2F1090);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v134 = vpmaxq_s16(v132, v132);
  v135 = vpminq_s16(v133, v133);
  v136 = vmaxq_s16(v123, v134);
  v137 = vminq_s16(v124, v135);
  v138 = vzip1q_s16(v134, v135);
  v139 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v138)), vceqzq_s16(v138));
  v140 = vpmaxq_s16(v139, v139);
  v141 = vmaxq_s16(vmaxq_s16(v104, v116), vmaxq_s16(v129, v140));
  v142 = vclzq_s16(vsubq_s16(v136, v137));
  v143 = vsubq_s16(v43, v142);
  v144 = vcgtq_s16(v141, v143);
  v145 = vminq_s16(v143, v141);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v146 = vbslq_s8(v144, v141, v43);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v104), v88), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v116), v88), 0);
  v149 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v129), v88), 0);
  v150 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v140), v88), 0);
  v151 = vsubq_s16(v145, v147);
  v152 = vsubq_s16(v145, v148);
  v153 = vsubq_s16(v145, v149);
  v154 = vaddq_s16(v147, v148);
  v155 = vsubq_s16(v145, v150);
  v156.i64[0] = 0x4000400040004;
  v156.i64[1] = 0x4000400040004;
  v157 = vbicq_s8(v156, vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(v154)));
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v158 = vandq_s8(v480, v86);
  v159 = vorrq_s8(v472, v89);
  v160 = vaddq_s16(vandq_s8(v82, v86), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v82, v473);
  v162 = vsubq_s16(v82, v476);
  v163 = vsubq_s16(v82, v474);
  v164 = vsubq_s16(v82, v478);
  v165 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v160, v161, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16((*&v146 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v157, v157)), v151, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v155), 3uLL))), 0);
  v166 = vaddvq_s16(v165);
  v168 = a5 < 4 || a6 < 2;
  if (v166)
  {
    v169.i64[0] = 0x3000300030003;
    v169.i64[1] = 0x3000300030003;
    v170 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v145), v169), v146), v157);
    v169.i64[0] = 0xF000F000F000FLL;
    v169.i64[1] = 0xF000F000F000FLL;
    v171 = vsubq_s16(v169, v142);
    v172.i64[0] = -1;
    v172.i64[1] = -1;
    v23 = vbslq_s8(v165, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
    v494 = vbslq_s8(v165, v90, v494);
    v477 = vbslq_s8(v165, v469, v127);
    v479 = vbslq_s8(v165, v468, v115);
    v481 = vbslq_s8(v165, v91, v128);
    v173 = vbslq_s8(v165, v92, v488);
    v174 = vbslq_s8(v165, v93, v492);
    v161 = vbslq_s8(v165, v151, v161);
    v175 = vbslq_s8(v165, v152, v162);
    v163 = vbslq_s8(v165, v153, v163);
    v164 = vbslq_s8(v165, v155, v164);
    v158 = vbslq_s8(v165, vandq_s8(vsubq_s16(vshlq_s16(v172, v171), v137), v144), v158);
    v82 = vbslq_s8(v165, v145, v82);
    v159 = vbslq_s8(v165, v170, v159);
    v176 = vbslq_s8(v165, v470, v490);
    v177 = vbslq_s8(v165, v471, v486);
    if (v168)
    {
LABEL_10:
      v178 = v479;
      v179 = v481;
      v180 = v477;
      goto LABEL_16;
    }
  }

  else
  {
    v477 = v127;
    v479 = v115;
    v481 = v128;
    v176 = v490;
    v174 = v492;
    v177 = v486;
    v173 = v488;
    v175 = v162;
    if (v168)
    {
      goto LABEL_10;
    }
  }

  v487 = v177;
  v475 = v158;
  v489 = v173;
  v491 = v176;
  v493 = v174;
  v183 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
  v184 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
  v495.val[0] = v482;
  v495.val[1] = v464;
  v495.val[1].i32[3] = v18.i32[3];
  v185 = vqtbl2q_s8(v495, xmmword_29D2F1040);
  v186 = vsubq_s16(v482, vqtbl2q_s8(v495, xmmword_29D2F0FA0));
  v495.val[1] = v484;
  v187 = v465;
  v187.i32[3] = v18.i32[3];
  v188 = vsubq_s16(v484, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F1050));
  v189 = vsubq_s16(v465, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F0F80));
  v496.val[0] = v466;
  v496.val[1] = v467;
  v496.val[1].i32[3] = v18.i32[3];
  v495.val[0] = vsubq_s16(v466, vqtbl2q_s8(v496, xmmword_29D2F1060));
  v495.val[1] = v184;
  v495.val[1].i32[3] = v183.i32[0];
  v190 = vsubq_s16(v467, vqtbl2q_s8(v496, xmmword_29D2F0F80));
  v183.i32[0] = v184.i32[3];
  v496.val[0].i64[0] = 0x4000400040004;
  v496.val[0].i64[1] = 0x4000400040004;
  v191 = vshrq_n_s16(vshlq_n_s16(v183, 4uLL), 4uLL);
  v192 = vshrq_n_s16(vshlq_n_s16(v186, 4uLL), 4uLL);
  v193 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, v185), 4uLL), 4uLL);
  v194 = vshrq_n_s16(vshlq_n_s16(v188, 4uLL), 4uLL);
  v195 = vshrq_n_s16(vshlq_n_s16(v189, 4uLL), 4uLL);
  v196 = vshrq_n_s16(vshlq_n_s16(v495.val[0], 4uLL), 4uLL);
  v197 = vshrq_n_s16(vshlq_n_s16(v190, 4uLL), 4uLL);
  v485 = vshrq_n_s16(vshlq_n_s16(v495.val[1], 4uLL), 4uLL);
  v198 = vqtbl1q_s8(vmaxq_s16(v191, v485), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v191, v485), xmmword_29D2F1090);
  v199 = vpmaxq_s16(v198, v198);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v200 = vpmaxq_s16(v199, v199);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v187.i64[0] = 0x8000800080008000;
  v187.i64[1] = 0x8000800080008000;
  v201 = vmaxq_s16(v200, v187);
  v496.val[1].i64[0] = 0x8000800080008000;
  v496.val[1].i64[1] = 0x8000800080008000;
  v496.val[1] = vminq_s16(v495.val[0], v496.val[1]);
  v202 = vzip1q_s16(v200, v495.val[0]);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v204 = v163;
  v205 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v202)), vceqzq_s16(v202));
  v206 = vpmaxq_s16(v205, v205);
  v207 = vqtbl1q_s8(vmaxq_s16(v192, v193), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v192, v193), xmmword_29D2F1090);
  v208 = vpmaxq_s16(v207, v207);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v209 = vpmaxq_s16(v208, v208);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v210 = vmaxq_s16(v201, v209);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v211 = vzip1q_s16(v209, v495.val[0]);
  v212 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v211)), vceqzq_s16(v211));
  v213 = vpmaxq_s16(v212, v212);
  v214 = vqtbl1q_s8(vmaxq_s16(v194, v195), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v194, v195), xmmword_29D2F1090);
  v215 = vpmaxq_s16(v214, v214);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v216 = vpmaxq_s16(v215, v215);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v217 = vmaxq_s16(v210, v216);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v218 = vzip1q_s16(v216, v495.val[0]);
  v219 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v218)), vceqzq_s16(v218));
  v220 = vpmaxq_s16(v219, v219);
  v483 = v196;
  v221 = vqtbl1q_s8(vmaxq_s16(v196, v197), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v196, v197), xmmword_29D2F1090);
  v222 = vpmaxq_s16(v221, v221);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v223 = vpmaxq_s16(v222, v222);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v224 = vmaxq_s16(v217, v223);
  v225 = vminq_s16(v496.val[1], v495.val[0]);
  v226 = vzip1q_s16(v223, v495.val[0]);
  v227 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v226)), vceqzq_s16(v226));
  v496.val[1] = vpmaxq_s16(v227, v227);
  v495.val[0] = vmaxq_s16(vmaxq_s16(v206, v213), vmaxq_s16(v220, v496.val[1]));
  v228 = vclzq_s16(vsubq_s16(v224, v225));
  v229 = vsubq_s16(v203, v228);
  v230 = vcgtq_s16(v495.val[0], v229);
  v231 = vminq_s16(v229, v495.val[0]);
  v232.i64[0] = 0x3000300030003;
  v232.i64[1] = 0x3000300030003;
  v233 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v206), v232), 0);
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v213), v232), 0);
  v235 = v175;
  v236 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v220), v232), 0);
  v496.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v231, v496.val[1]), v232), 0);
  v237 = vsubq_s16(v231, v233);
  v238 = vsubq_s16(v231, v234);
  v239 = vsubq_s16(v231, v236);
  v240 = vsubq_s16(v231, v496.val[1]);
  v241 = vbicq_s8(v496.val[0], vceqq_s16(vaddq_s16(v496.val[1], v236), vnegq_s16(vaddq_s16(v233, v234))));
  v234.i64[0] = 0x7000700070007;
  v234.i64[1] = 0x7000700070007;
  v496.val[1].i64[0] = 0x8000800080008;
  v496.val[1].i64[1] = 0x8000800080008;
  v242 = v161;
  v243 = vandq_s8(v159, v232);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v245 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v159, v496.val[1]))), vandq_s8(vaddq_s16(v159, v159), v496.val[1])), vandq_s8(vceqq_s16(v243, v244), v203)), v242, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v235), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v231, v230), vaddq_s16(v241, v241)), v237, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL))), 0);
  v178 = v479;
  if (vaddvq_s16(v245))
  {
    v246.i64[0] = 0x9000900090009;
    v246.i64[1] = 0x9000900090009;
    v247 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v231), v244), vsubq_s16(vandq_s8(v230, v246), vmvnq_s8(v230))), v241);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v249 = vandq_s8(vsubq_s16(vshlq_s16(v246, vsubq_s16(v248, v228)), v225), v230);
    v23.i32[0] = vbslq_s8(v245, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
    v494 = vbslq_s8(v245, v191, v494);
    v177 = vbslq_s8(v245, v485, v487);
    v180 = vbslq_s8(v245, v192, v477);
    v178 = vbslq_s8(v245, v193, v479);
    v179 = vbslq_s8(v245, v194, v481);
    v173 = vbslq_s8(v245, v195, v489);
    v176 = vbslq_s8(v245, v483, v491);
    v174 = vbslq_s8(v245, v197, v493);
    v161 = vbslq_s8(v245, v237, v242);
    v175 = vbslq_s8(v245, v238, v235);
    v163 = vbslq_s8(v245, v239, v204);
    v164 = vbslq_s8(v245, v240, v164);
    v158 = vbslq_s8(v245, v249, v475);
    v82 = vbslq_s8(v245, v231, v82);
    v159 = vbslq_s8(v245, v247, v159);
  }

  else
  {
    v176 = v491;
    v174 = v493;
    v177 = v487;
    v173 = v489;
    v179 = v481;
    v158 = v475;
    v180 = v477;
    v163 = v204;
    v175 = v235;
    v161 = v242;
  }

LABEL_16:
  v250.i64[0] = 0x8000800080008;
  v250.i64[1] = 0x8000800080008;
  v251 = vandq_s8(v159, v250);
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v254 = vceqq_s16(vandq_s8(v159, v252), v253);
  v253.i64[0] = 0x10001000100010;
  v253.i64[1] = 0x10001000100010;
  v255 = vandq_s8(v254, v253);
  v253.i64[0] = 0x7000700070007;
  v253.i64[1] = 0x7000700070007;
  v256 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v251)), vandq_s8(vaddq_s16(v159, v159), v250)), v255), v161, v253), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v175), v164), 3uLL));
  if ((vpaddq_s16(v256, v256).i16[0] - 343) < 0xFFFFFFFFFFFFFE78)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 48;
  }

  else
  {
    v257 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v258 = 8 * (a1 & 7);
    if (v258)
    {
      v259 = *v257 & ~(-1 << v258);
    }

    else
    {
      v259 = 0;
    }

    *a2 = 0;
    v260 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
    if (!v82.i16[0])
    {
      v260 = 0;
    }

    if (v82.i16[1])
    {
      v261 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v261 = 0;
    }

    v262 = v260 | v261 | v159.i8[0] & 0x1F | (32 * (v159.i8[2] & 0x1Fu));
    v263 = v23.i16[0] & 0xFFF | ((v23.i16[1] & 0xFFF) << 12);
    v264 = (v262 << v258) | v259;
    if (v258 >= 0x2E)
    {
      *v257 = v264;
      v264 = v262 >> (-8 * (a1 & 7u));
    }

    v265 = (v258 + 18) & 0x3A;
    v266 = v264 | (v263 << v265);
    if (v265 >= 0x28)
    {
      *(v257 + (((v258 + 18) >> 3) & 8)) = v266;
      v266 = v263 >> -v265;
    }

    v267 = v258 + 42;
    v268 = vsubq_s16(v82, v161);
    v269 = vsubq_s16(v82, v175);
    v270 = vsubq_s16(v82, v163);
    v271 = vsubq_s16(v82, v164);
    *v268.i8 = vqmovn_u16(v268);
    *v269.i8 = vqmovn_u16(v269);
    *v270.i8 = vqmovn_u16(v270);
    *v271.i8 = vqmovn_u16(v271);
    v268.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v268, v269), vzip1q_s8(v270, v271)), vzip1q_s16(vtrn2q_s8(v268, v269), vtrn2q_s8(v270, v271))).u64[0];
    v270.i64[0] = 0x202020202020202;
    v270.i64[1] = 0x202020202020202;
    v272 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v159.i8, 0x4000400040004)))), v270);
    v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v271.i64[0] = -1;
    v271.i64[1] = -1;
    v273 = vandq_s8(vshlq_u8(v271, vorrq_s8(v272, v270)), v268.u64[0]);
    v274 = vmovl_u8(*v272.i8);
    v275 = vpaddq_s16(vshlq_u16(vmovl_u8(*v273.i8), vtrn1q_s16(0, v274)), vmovl_high_u8(v273));
    v276 = vpaddq_s16(v274, vmovl_high_u8(v272));
    v277 = vmovl_u16(*v276.i8);
    v278 = vmovl_high_u16(v276);
    v279 = vpaddq_s32(vshlq_u32(vmovl_u16(*v275.i8), vtrn1q_s32(0, v277)), vshlq_u32(vmovl_high_u16(v275), vtrn1q_s32(0, v278)));
    v280 = vpaddq_s32(v277, v278);
    v281.i64[0] = v279.u32[0];
    v281.i64[1] = v279.u32[1];
    v282 = v281;
    v281.i64[0] = v279.u32[2];
    v281.i64[1] = v279.u32[3];
    v283 = v281;
    v281.i64[0] = v280.u32[0];
    v281.i64[1] = v280.u32[1];
    v284 = v281;
    v281.i64[0] = v280.u32[2];
    v281.i64[1] = v280.u32[3];
    v285 = vpaddq_s64(vshlq_u64(v282, vzip1q_s64(0, v284)), vshlq_u64(v283, vzip1q_s64(0, v281)));
    v286 = vpaddq_s64(v284, v281);
    v287 = (v258 + 42) & 0x3A;
    v288 = (v285.i64[0] << v287) | v266;
    if ((v286.i64[0] + v287) >= 0x40)
    {
      *(v257 + ((v267 >> 3) & 8)) = v288;
      v288 = v285.i64[0] >> -v287;
    }

    v289 = vceqq_s16(v82, v161);
    v290 = v286.i64[0] + v267;
    v291 = v288 | (v285.i64[1] << v290);
    if ((v290 & 0x3F) + v286.i64[1] >= 0x40)
    {
      *(v257 + ((v290 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v291;
      v291 = v285.i64[1] >> -(v290 & 0x3F);
      if ((v290 & 0x3F) == 0)
      {
        v291 = 0;
      }
    }

    v292 = vandq_s8(v158, v289);
    v293 = v290 + v286.i64[1];
    v294.i64[0] = -1;
    v294.i64[1] = -1;
    v295 = vandq_s8(vextq_s8(vtstq_s16(v251, v251), 0, 0xCuLL), v82);
    v296.i64[0] = 0xF000F000F000FLL;
    v296.i64[1] = 0xF000F000F000FLL;
    v297 = vandq_s8(vshlq_u16(v294, vaddq_s16(v295, v296)), v158);
    v298 = vmovl_u16(*v295.i8);
    v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v297.i8), vtrn1q_s32(0, v298)), vmovl_high_u16(v297));
    v300 = vpaddq_s32(v298, vmovl_high_u16(v295));
    v301.i64[0] = v299.u32[0];
    v301.i64[1] = v299.u32[1];
    v302 = v301;
    v301.i64[0] = v299.u32[2];
    v301.i64[1] = v299.u32[3];
    v303 = v301;
    v301.i64[0] = v300.u32[0];
    v301.i64[1] = v300.u32[1];
    v304 = v301;
    v301.i64[0] = v300.u32[2];
    v301.i64[1] = v300.u32[3];
    v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
    v306 = vpaddq_s64(v304, v301);
    v307 = (v305.i64[0] << v293) | v291;
    if (v306.i64[0] + (v293 & 0x3F) >= 0x40)
    {
      *(v257 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v293 & 0x3F);
      if ((v293 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vaddq_s16(v292, v494);
    v309 = v306.i64[0] + v293;
    v310 = v307 | (v305.i64[1] << v309);
    if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v257 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
      v310 = v305.i64[1] >> -(v309 & 0x3F);
      if ((v309 & 0x3F) == 0)
      {
        v310 = 0;
      }
    }

    v311 = v309 + v306.i64[1];
    v312 = vextq_s8(0, v161, 0xCuLL);
    v313.i64[0] = 0xF000F000F000FLL;
    v313.i64[1] = 0xF000F000F000FLL;
    v314.i64[0] = -1;
    v314.i64[1] = -1;
    v315 = vandq_s8(vshlq_u16(v314, vaddq_s16(v312, v313)), v308);
    v316 = vmovl_u16(*v312.i8);
    v317 = vmovl_high_u16(v312);
    v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v315.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v315), vtrn1q_s32(0, v317)));
    v319 = vpaddq_s32(v316, v317);
    v320.i64[0] = v318.u32[0];
    v320.i64[1] = v318.u32[1];
    v321 = v320;
    v320.i64[0] = v318.u32[2];
    v320.i64[1] = v318.u32[3];
    v322 = v320;
    v320.i64[0] = v319.u32[0];
    v320.i64[1] = v319.u32[1];
    v323 = v320;
    v320.i64[0] = v319.u32[2];
    v320.i64[1] = v319.u32[3];
    v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
    v325 = vpaddq_s64(v323, v320);
    v326 = (v324.i64[0] << v311) | v310;
    if (v325.i64[0] + (v311 & 0x3F) >= 0x40)
    {
      *(v257 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s16(v82, v175);
    v328 = vaddq_s16(v177, v292);
    v329 = v325.i64[0] + v311;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v257 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v158, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF000F000F000FLL;
    v333.i64[1] = 0xF000F000F000FLL;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v161, v333)), v328);
    v336 = vmovl_u16(*v161.i8);
    v337 = vmovl_high_u16(v161);
    v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v335.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v335), vtrn1q_s32(0, v337)));
    v339 = vpaddq_s32(v336, v337);
    v340.i64[0] = v338.u32[0];
    v340.i64[1] = v338.u32[1];
    v341 = v340;
    v340.i64[0] = v338.u32[2];
    v340.i64[1] = v338.u32[3];
    v342 = v340;
    v340.i64[0] = v339.u32[0];
    v340.i64[1] = v339.u32[1];
    v343 = v340;
    v340.i64[0] = v339.u32[2];
    v340.i64[1] = v339.u32[3];
    v344 = vpaddq_s64(vshlq_u64(v341, vzip1q_s64(0, v343)), vshlq_u64(v342, vzip1q_s64(0, v340)));
    v345 = vpaddq_s64(v343, v340);
    v346 = (v344.i64[0] << v332) | v330;
    if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v257 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
      v346 = v344.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v346 = 0;
      }
    }

    v347 = vaddq_s16(v180, v331);
    v348 = v345.i64[0] + v332;
    v349 = v346 | (v344.i64[1] << v348);
    if ((v348 & 0x3F) + v345.i64[1] >= 0x40)
    {
      *(v257 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
      v349 = v344.i64[1] >> -(v348 & 0x3F);
      if ((v348 & 0x3F) == 0)
      {
        v349 = 0;
      }
    }

    v350 = v348 + v345.i64[1];
    v351.i64[0] = 0xF000F000F000FLL;
    v351.i64[1] = 0xF000F000F000FLL;
    v352.i64[0] = -1;
    v352.i64[1] = -1;
    v353 = vshlq_u16(v352, vaddq_s16(v175, v351));
    v354 = vandq_s8(v353, v347);
    v355 = vmovl_u16(*v354.i8);
    v356 = vmovl_high_u16(v354);
    v357 = vmovl_u16(*v175.i8);
    v358 = vmovl_high_u16(v175);
    v359 = vtrn1q_s32(0, v357);
    v360 = vtrn1q_s32(0, v358);
    v361 = vpaddq_s32(vshlq_u32(v355, v359), vshlq_u32(v356, v360));
    v362 = vpaddq_s32(v357, v358);
    v363.i64[0] = v361.u32[0];
    v363.i64[1] = v361.u32[1];
    v364 = v363;
    v363.i64[0] = v361.u32[2];
    v363.i64[1] = v361.u32[3];
    v365 = v363;
    v363.i64[0] = v362.u32[0];
    v363.i64[1] = v362.u32[1];
    v366 = v363;
    v363.i64[0] = v362.u32[2];
    v363.i64[1] = v362.u32[3];
    v367 = vzip1q_s64(0, v366);
    v368 = vzip1q_s64(0, v363);
    v369 = vpaddq_s64(vshlq_u64(v364, v367), vshlq_u64(v365, v368));
    v370 = vpaddq_s64(v366, v363);
    v371 = (v369.i64[0] << v350) | v349;
    if (v370.i64[0] + (v350 & 0x3F) >= 0x40)
    {
      *(v257 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
      if ((v350 & 0x3F) != 0)
      {
        v371 = v369.i64[0] >> -(v350 & 0x3F);
      }

      else
      {
        v371 = 0;
      }
    }

    v372 = vceqq_s16(v82, v163);
    v373 = vaddq_s16(v178, v331);
    v374 = v370.i64[0] + v350;
    v375 = v371 | (v369.i64[1] << v374);
    if ((v374 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      v375 = v369.i64[1] >> -(v374 & 0x3F);
      if ((v374 & 0x3F) == 0)
      {
        v375 = 0;
      }
    }

    v376 = vandq_s8(v158, v372);
    v377 = v374 + v370.i64[1];
    v378 = vandq_s8(v353, v373);
    v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), v359), vshlq_u32(vmovl_high_u16(v378), v360));
    v380.i64[0] = v379.u32[0];
    v380.i64[1] = v379.u32[1];
    v381 = v380;
    v380.i64[0] = v379.u32[2];
    v380.i64[1] = v379.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v381, v367), vshlq_u64(v380, v368));
    v383 = (v382.i64[0] << v377) | v375;
    if (v370.i64[0] + (v377 & 0x3F) >= 0x40)
    {
      *(v257 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v382.i64[0] >> -(v377 & 0x3F);
      if ((v377 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s16(v179, v376);
    v385 = v370.i64[0] + v377;
    v386 = (v370.i64[0] + v377) & 0x3F;
    v387 = v383 | (v382.i64[1] << v385);
    if ((v385 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -v386;
      if (!v386)
      {
        v387 = 0;
      }
    }

    v388 = v385 + v370.i64[1];
    v389.i64[0] = 0xF000F000F000FLL;
    v389.i64[1] = 0xF000F000F000FLL;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u16(v390, vaddq_s16(v163, v389));
    v392 = vandq_s8(v391, v384);
    v393 = vmovl_u16(*v392.i8);
    v394 = vmovl_high_u16(v392);
    v395 = vmovl_u16(*v163.i8);
    v396 = vmovl_high_u16(v163);
    v397 = vtrn1q_s32(0, v395);
    v398 = vtrn1q_s32(0, v396);
    v399 = vpaddq_s32(vshlq_u32(v393, v397), vshlq_u32(v394, v398));
    v400 = vpaddq_s32(v395, v396);
    v401.i64[0] = v399.u32[0];
    v401.i64[1] = v399.u32[1];
    v402 = v401;
    v401.i64[0] = v399.u32[2];
    v401.i64[1] = v399.u32[3];
    v403 = v401;
    v401.i64[0] = v400.u32[0];
    v401.i64[1] = v400.u32[1];
    v404 = v401;
    v401.i64[0] = v400.u32[2];
    v401.i64[1] = v400.u32[3];
    v405 = vzip1q_s64(0, v404);
    v406 = vzip1q_s64(0, v401);
    v407 = vpaddq_s64(vshlq_u64(v402, v405), vshlq_u64(v403, v406));
    v408 = vpaddq_s64(v404, v401);
    v409 = (v385 + v370.i64[1]) & 0x3F;
    v410 = (v407.i64[0] << (v385 + v370.i8[8])) | v387;
    if ((v408.i64[0] + v409) >= 0x40)
    {
      *(v257 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      if (v409)
      {
        v410 = v407.i64[0] >> -v409;
      }

      else
      {
        v410 = 0;
      }
    }

    v411 = vceqq_s16(v82, v164);
    v412 = vaddq_s16(v173, v376);
    v413 = v408.i64[0] + v388;
    v414 = v410 | (v407.i64[1] << v413);
    if ((v413 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v407.i64[1] >> -(v413 & 0x3F);
      if ((v413 & 0x3F) == 0)
      {
        v414 = 0;
      }
    }

    v415 = vandq_s8(v158, v411);
    v416 = v413 + v408.i64[1];
    v417 = vandq_s8(v391, v412);
    v418 = vpaddq_s32(vshlq_u32(vmovl_u16(*v417.i8), v397), vshlq_u32(vmovl_high_u16(v417), v398));
    v419.i64[0] = v418.u32[0];
    v419.i64[1] = v418.u32[1];
    v420 = v419;
    v419.i64[0] = v418.u32[2];
    v419.i64[1] = v418.u32[3];
    v421 = vpaddq_s64(vshlq_u64(v420, v405), vshlq_u64(v419, v406));
    v422 = (v421.i64[0] << v416) | v414;
    if (v408.i64[0] + (v416 & 0x3F) >= 0x40)
    {
      *(v257 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v421.i64[0] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vaddq_s16(v176, v415);
    v424 = v408.i64[0] + v416;
    v425 = (v408.i64[0] + v416) & 0x3F;
    v426 = v422 | (v421.i64[1] << v424);
    if ((v424 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v421.i64[1] >> -v425;
      if (!v425)
      {
        v426 = 0;
      }
    }

    v427 = v424 + v408.i64[1];
    v428.i64[0] = 0xF000F000F000FLL;
    v428.i64[1] = 0xF000F000F000FLL;
    v429.i64[0] = -1;
    v429.i64[1] = -1;
    v430 = vshlq_u16(v429, vaddq_s16(v164, v428));
    v431 = vandq_s8(v430, v423);
    v432 = vmovl_u16(*v431.i8);
    v433 = vmovl_high_u16(v431);
    v434 = vmovl_u16(*v164.i8);
    v435 = vmovl_high_u16(v164);
    v436 = vtrn1q_s32(0, v434);
    v437 = vtrn1q_s32(0, v435);
    v438 = vpaddq_s32(vshlq_u32(v432, v436), vshlq_u32(v433, v437));
    v439 = vpaddq_s32(v434, v435);
    v440.i64[0] = v438.u32[0];
    v440.i64[1] = v438.u32[1];
    v441 = v440;
    v440.i64[0] = v438.u32[2];
    v440.i64[1] = v438.u32[3];
    v442 = v440;
    v440.i64[0] = v439.u32[0];
    v440.i64[1] = v439.u32[1];
    v443 = v440;
    v440.i64[0] = v439.u32[2];
    v440.i64[1] = v439.u32[3];
    v444 = vzip1q_s64(0, v443);
    v445 = vzip1q_s64(0, v440);
    v446 = vpaddq_s64(vshlq_u64(v441, v444), vshlq_u64(v442, v445));
    v447 = vpaddq_s64(v443, v440);
    v448 = (v424 + v408.i64[1]) & 0x3F;
    v449 = (v446.i64[0] << (v424 + v408.i8[8])) | v426;
    if ((v447.i64[0] + v448) > 0x3F)
    {
      *(v257 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      if (v448)
      {
        v449 = v446.i64[0] >> -v448;
      }

      else
      {
        v449 = 0;
      }
    }

    v450 = vaddq_s16(v174, v415);
    v451 = v447.i64[0] + v427;
    v452 = v449 | (v446.i64[1] << v451);
    if ((v451 & 0x3F) + v447.i64[1] >= 0x40)
    {
      *(v257 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v446.i64[1] >> -(v451 & 0x3F);
      if ((v451 & 0x3F) == 0)
      {
        v452 = 0;
      }
    }

    v453 = v451 + v447.i64[1];
    v454 = vandq_s8(v430, v450);
    v455 = vpaddq_s32(vshlq_u32(vmovl_u16(*v454.i8), v436), vshlq_u32(vmovl_high_u16(v454), v437));
    v456.i64[0] = v455.u32[0];
    v456.i64[1] = v455.u32[1];
    v457 = v456;
    v456.i64[0] = v455.u32[2];
    v456.i64[1] = v455.u32[3];
    v458 = vpaddq_s64(vshlq_u64(v457, v444), vshlq_u64(v456, v445));
    v459 = (v458.i64[0] << v453) | v452;
    if (v447.i64[0] + (v453 & 0x3F) >= 0x40)
    {
      *(v257 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
      v459 = v458.i64[0] >> -(v453 & 0x3F);
      if ((v453 & 0x3F) == 0)
      {
        v459 = 0;
      }
    }

    v460 = v447.i64[0] + v453;
    v461 = (v447.i64[0] + v453) & 0x3F;
    v462 = v459 | (v458.i64[1] << (v447.i8[0] + v453));
    if ((v461 + v447.i64[1]) >= 0x40)
    {
      *(v257 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
      v462 = v458.i64[1] >> -v461;
      if (!v461)
      {
        v462 = 0;
      }
    }

    v463 = v460 + v447.i64[1];
    if ((v463 & 0x3F) != 0)
    {
      *(v257 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
    }

    result = (v463 - v258 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
            v21 = vshrq_n_u32(v20, 4uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF0FFF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF0FFF;
            *v18 = v21.i32[2] & 0xFFFF0FFF;
            v18[4] = v21.i32[3] & 0xFFFF0FFF;
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
            v29 = vshrq_n_u32(v28, 4uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF0FFF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF0FFF;
            *v26 = v29.i32[2] & 0xFFFF0FFF;
            v26[4] = v29.i32[3] & 0xFFFF0FFF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 4) & 0xFFF0FFF;
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
        *(v13 - 4) = (*(v12 - 2) >> 4) & 0xFFF0FFF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 4) & 0xFFF0FFF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 4) & 0xFFF0FFF;
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

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
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

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v46, a7, v32, v37);
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
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v46, a7, v39, v34);
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
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 36, &v46, a7, v39, v37);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v343 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v292 = v7;
  v8 = a4 < 2 || a5 == 0;
  v291 = v8;
  v9 = a4 < 2 || a5 < 2;
  v290 = v9;
  v10 = a4 < 3 || a5 == 0;
  v289 = v10;
  v11 = a4 < 3 || a5 < 2;
  v288 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v287 = v6;
  v12 = a4 < 4 || a5 < 2;
  v286 = v12;
  v13 = &v325;
  v14 = &v327;
  v15 = &v331;
  v16 = &v335;
  v17 = &v339;
  v18 = &v341;
  v19 = &v310;
  v20 = v308;
  v21 = &v306;
  v22 = &v304;
  v23 = &v302;
  v24 = v300;
  v25 = 1;
  v26 = &v329;
  v27 = &v333;
  v28 = &v337;
  v285 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)6,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v291)
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
    if (v292)
    {
      if (v290)
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
      if (v290)
      {
LABEL_69:
        if (v289)
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
    if (v289)
    {
LABEL_70:
      if (v287)
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
    if (!v287)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v285;
    if (!v288)
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

    if (!v286)
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
    if ((v285 | 2) == 3)
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
    v19 = &v309;
    v20 = v307;
    v21 = &v305;
    v22 = &v303;
    v23 = &v301;
    v24 = v299;
    v14 = &v328;
    v13 = &v326;
    v15 = &v332;
    v26 = &v330;
    v16 = &v336;
    v27 = &v334;
    v17 = &v340;
    v28 = &v338;
    v18 = &v342;
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
  v279 = v71;
  v72 = v302;
  v73 = v341;
  v74 = v342;
  v76 = v342 >= v341;
  v77 = v301;
  v78 = kDQuadParamTable[160 * v301 + 6 + 10 * v342];
  v313 = kDQuadParamTable[160 * v302 + 6 + 10 * v341];
  v75 = v313;
  v314 = v78;
  v315[0] = v313;
  v315[1] = v78;
  if (*(&v341 + (v342 >= v341)) == *(&v341 + (v342 < v341)))
  {
    v79 = v313;
  }

  else
  {
    v80 = v315[v342 < v341];
    v79 = v313;
    if (v80 >= 1)
    {
      *(&v313 + (v342 < v341)) = 0;
      *(&v313 + v76) += v80;
      v79 = v313;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v84 = v81[4];
  v83 = v81[5];
  v298 = v84;
  v296 = v83;
  v85 = v79 - v75;
  if (v85 < 0)
  {
    v87 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v87[7] < -v85)
    {
      v296 = --v83;
      if (!v87[8])
      {
        v86 = -1;
LABEL_177:
        v298 = v86 + v84;
      }
    }
  }

  else if (v85)
  {
    v83 += v85;
    v296 = v83;
    v86 = v85;
    goto LABEL_177;
  }

  v89 = v72 == 5 && v73 == 1 && v85 < 2;
  v90 = v89;
  if (v285 == 4)
  {
    v91 = 1 << (v310 - 1);
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

    if (v279)
    {
      if (v291)
      {
        goto LABEL_198;
      }

LABEL_372:
      if ((v327 | v93) == 0xFFFFFFFF || v327 == v91)
      {
        v90 = 1;
      }

      if (!v292)
      {
        goto LABEL_379;
      }

LABEL_199:
      if (v290)
      {
        goto LABEL_200;
      }

LABEL_386:
      if ((v331 | v93) == 0xFFFFFFFF || v331 == v91)
      {
        v90 = 1;
      }

      if (!v289)
      {
        goto LABEL_393;
      }

LABEL_201:
      if (v287)
      {
        goto LABEL_202;
      }

LABEL_400:
      if ((v335 | v93) == 0xFFFFFFFF || v335 == v91)
      {
        v90 = 1;
      }

      if (!v288)
      {
        goto LABEL_407;
      }

LABEL_203:
      if (!v286)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v325 | v93) == 0xFFFFFFFF || v325 == v91)
      {
        v90 = 1;
      }

      if (!v291)
      {
        goto LABEL_372;
      }

LABEL_198:
      if (v292)
      {
        goto LABEL_199;
      }

LABEL_379:
      if ((v329 | v93) == 0xFFFFFFFF || v329 == v91)
      {
        v90 = 1;
      }

      if (!v290)
      {
        goto LABEL_386;
      }

LABEL_200:
      if (v289)
      {
        goto LABEL_201;
      }

LABEL_393:
      if ((v333 | v93) == 0xFFFFFFFF || v333 == v91)
      {
        v90 = 1;
      }

      if (!v287)
      {
        goto LABEL_400;
      }

LABEL_202:
      if (v288)
      {
        goto LABEL_203;
      }

LABEL_407:
      if ((v337 | v93) == 0xFFFFFFFF || v337 == v91)
      {
        v90 = 1;
      }

      if (!v286)
      {
LABEL_204:
        if ((v339 | v93) == 0xFFFFFFFF || v339 == v91)
        {
          v90 = 1;
        }
      }
    }
  }

  v89 = v82 >> v83 > 0x40;
  v95 = v279;
  if (v89)
  {
    v95 = 1;
  }

  v96 = v95 | v90;
  v97 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v98 = *(v97 + 1);
  v99 = v97[4];
  v100 = v97[5];
  v297 = v99;
  v295 = v100;
  v101 = v314 - v78;
  if (v101 < 0)
  {
    v103 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v103[7] < -v101)
    {
      v295 = --v100;
      if (!v103[8])
      {
        v102 = -1;
LABEL_216:
        v297 = v102 + v99;
      }
    }
  }

  else if (v101)
  {
    v100 += v101;
    v295 = v100;
    v102 = v101;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v96 |= v101 < 2;
  }

  v275 = v73;
  if (v285 == 4)
  {
    v104 = 1 << (v309 - 1);
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

    if (v279)
    {
      if (v291)
      {
        goto LABEL_231;
      }

LABEL_422:
      v215 = (v328 | v106) == 0xFFFFFFFF || v328 == v104;
      v96 |= v215;
      if (!v292)
      {
        goto LABEL_429;
      }

LABEL_232:
      if (v290)
      {
        goto LABEL_233;
      }

LABEL_436:
      v219 = (v332 | v106) == 0xFFFFFFFF || v332 == v104;
      v96 |= v219;
      if (!v289)
      {
        goto LABEL_443;
      }

LABEL_234:
      if (v287)
      {
        goto LABEL_235;
      }

LABEL_450:
      v223 = (v336 | v106) == 0xFFFFFFFF || v336 == v104;
      v96 |= v223;
      if (v288)
      {
        goto LABEL_243;
      }

LABEL_236:
      v108 = (v338 | v106) == 0xFFFFFFFF || v338 == v104;
      v96 |= v108;
      goto LABEL_243;
    }

    v213 = (v326 | v106) == 0xFFFFFFFF || v326 == v104;
    v96 |= v213;
    if (!v291)
    {
      goto LABEL_422;
    }

LABEL_231:
    if (v292)
    {
      goto LABEL_232;
    }

LABEL_429:
    v217 = (v330 | v106) == 0xFFFFFFFF || v330 == v104;
    v96 |= v217;
    if (!v290)
    {
      goto LABEL_436;
    }

LABEL_233:
    if (v289)
    {
      goto LABEL_234;
    }

LABEL_443:
    v221 = (v334 | v106) == 0xFFFFFFFF || v334 == v104;
    v96 |= v221;
    if (!v287)
    {
      goto LABEL_450;
    }

LABEL_235:
    if (!v288)
    {
      goto LABEL_236;
    }

LABEL_243:
    v109 = &v329;
    v110 = v317;
    if (!v286)
    {
      v112 = (v340 | v106) == 0xFFFFFFFF || v340 == v104;
      v96 |= v112;
    }

    v277 = v96;
  }

  else
  {
    v277 = v96;
    v109 = &v329;
    v110 = v317;
  }

  v113 = 0;
  v114 = v279;
  if (v98 >> v100 > 0x40)
  {
    v114 = 1;
  }

  v276 = v114;
  v294 = 0;
  v293 = 0;
  v115 = &v310;
  v116 = v308;
  v312 = 0;
  v284 = &v304;
  v117 = &v341;
  v118 = &v302;
  v282 = v300;
  v119 = &v298;
  v120 = &v296;
  memset(v311, 0, sizeof(v311));
  v121 = &v294;
  v122 = 1;
  v123 = v316;
  v124 = &v325;
  v125 = &v320 + 4;
  v126 = &v319 + 4;
  v127 = &v320;
  v129 = &v318 + 4;
  v128 = &v319;
  v130 = &v331;
  v131 = &v318;
  v132 = &v327;
  v134 = &v335;
  v133 = &v333;
  v136 = &v339;
  v135 = &v337;
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

    v283 = v122;
    *v120 = v143;
    v144 = -1 << v139;
    v145 = *(v141 + 1);
    v146 = *v116 & (-1 << (v139 - v140));
    *v121 = v146;
    v147 = v145 >> v143;
    v148 = *v124 - v146;
    if (v279)
    {
      v148 = 0;
    }

    *v123 = v148;
    v149 = *v132 - v146;
    if (v291)
    {
      v149 = 0;
    }

    *v110 = v149;
    v150 = *v109 - v146;
    if (v292)
    {
      v150 = 0;
    }

    *v131 = v150;
    v151 = *v130 - v146;
    if (v290)
    {
      v151 = 0;
    }

    *v129 = v151;
    v152 = *v133 - v146;
    if (v289)
    {
      v152 = 0;
    }

    *v128 = v152;
    v153 = *v134 - v146;
    if (v287)
    {
      v153 = 0;
    }

    *v126 = v153;
    v154 = *v135 - v146;
    if (v288)
    {
      v154 = 0;
    }

    *v127 = v154;
    v155 = *v136 - v146;
    if (v286)
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

    v157 = &v316[32 * v113];
    v158 = 4 * v113;
    v159 = 4 * *v284;
    v160 = v311 + 28 * v113;
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
                if ((v285 | 2) != 3 || (v165 = *(&v325 + v158), v166 = *v282, v165 != v166) && ((v285 | 2) != 3 || v156 + v166 != v165))
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

        if (v162 >> v143 || (*(&v325 + v158) ^ v144) == 0xFFFFFFFF)
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
    v115 = &v309;
    v116 = v307;
    v284 = &v303;
    v118 = &v301;
    v282 = v299;
    v119 = &v297;
    v120 = &v295;
    v121 = &v293;
    v110 = &v321 + 4;
    v123 = &v321;
    v129 = &v322 + 4;
    v131 = &v322;
    v126 = &v323 + 4;
    v128 = &v323;
    v125 = &v324 + 4;
    v127 = &v324;
    v132 = &v328;
    v124 = &v326;
    v130 = &v332;
    v109 = &v330;
    v134 = &v336;
    v133 = &v334;
    v136 = &v340;
    v135 = &v338;
    v117 = &v342;
    v113 = 1;
  }

  while ((v283 & 1) != 0);
  v167 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v168 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if ((v276 | v277))
  {
    v169 = 0;
    v170 = 0;
    v171 = v310;
    v172 = v310 - 6;
    v173 = v309;
    v174 = v309 - 6;
    v175 = 8 * (a1 & 7);
    while (1)
    {
      v176 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v169;
      v177 = v176[1] < a5 && a4 > *v176;
      v178 = !v177;
      if (v177)
      {
        v179 = *(&v325 + 2 * v169) >> 6;
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

      if (v171 != 6 && v175 - v168 + (v170 << 6) + v172 <= 0x60)
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
        v184 = *(&v325 + 2 * v169 + 1) >> 6;
        if (v174 <= 0x100)
        {
LABEL_335:
          if (v173 != 6 && v175 - v168 + (v170 << 6) + v174 <= 0x60)
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
        return (v276 | v277) & 1;
      }
    }
  }

  if (v275 <= 3)
  {
    v189 = 0;
  }

  else
  {
    v189 = (v275 + 5) & 7;
  }

  if (v275 <= 3)
  {
    v190 = v275;
  }

  else
  {
    v190 = 0;
  }

  v191 = (v189 << v168) | *v167;
  *v167 = v191;
  v192 = v168 | 3;
  v193 = v342;
  v194 = v342 < 4;
  if (v342 <= 3)
  {
    v195 = v342;
  }

  else
  {
    v195 = 0;
  }

  if ((v192 - v168) <= 0x5D)
  {
    if (v342 <= 3)
    {
      v196 = 0;
    }

    else
    {
      v196 = (v342 + 5) & 7;
    }

    *v167 = (v196 << v192) | v191;
    v192 = v168 | 6;
  }

  if (v275 <= 3)
  {
    v224 = 2 * (v275 < 4);
    if ((v192 - v168 + v224) <= 0x60)
    {
      v197 = 0;
      v225 = 0;
      v226 = 2 * (v275 < 4);
      do
      {
        v227 = 64 - v192;
        if (64 - v192 >= v226)
        {
          v227 = v226;
        }

        v167[v197] |= ((v190 >> v225) & ~(-1 << v227)) << v192;
        v225 += v227;
        v228 = v227 + v192;
        v197 += v228 >> 6;
        v192 = v228 & 0x3F;
        v226 -= v227;
      }

      while (v226);
    }

    else
    {
      v197 = 0;
    }

    v198 = v224 + 6;
    if (v193 > 3)
    {
      goto LABEL_465;
    }

LABEL_358:
    v199 = (2 * v194);
    if (v192 - v168 + (v197 << 6) + v199 <= 0x60)
    {
      v200 = 0;
      v201 = v199;
      do
      {
        v202 = 64 - v192;
        if (64 - v192 >= v201)
        {
          v202 = v201;
        }

        v167[v197] |= ((v195 >> v200) & ~(-1 << v202)) << v192;
        v200 += v202;
        v203 = v202 + v192;
        v197 += v203 >> 6;
        v192 = v203 & 0x3F;
        v201 -= v202;
      }

      while (v201);
    }

    v198 += v199;
    v204 = v310;
    if (!v275)
    {
      goto LABEL_475;
    }

LABEL_466:
    v229 = v298;
    if (v298 <= 0x100 && v298 && v192 - v168 + (v197 << 6) + v298 <= 0x60)
    {
      v230 = 0;
      v231 = v294 >> (v204 - v298);
      v232 = v298;
      do
      {
        v233 = 64 - v192;
        if (64 - v192 >= v232)
        {
          v233 = v232;
        }

        v167[v197] |= ((v231 >> v230) & ~(-1 << v233)) << v192;
        v230 += v233;
        v234 = v233 + v192;
        v197 += v234 >> 6;
        v192 = v234 & 0x3F;
        v232 -= v233;
      }

      while (v232);
    }

    v198 += v229;
    v235 = v309;
    if (!v193)
    {
      goto LABEL_531;
    }

LABEL_478:
    v236 = v297;
    if (v297 <= 0x100 && v297 && v192 - v168 + (v197 << 6) + v297 <= 0x60)
    {
      v237 = 0;
      v238 = v293 >> (v235 - v297);
      v239 = v297;
      do
      {
        v240 = 64 - v192;
        if (64 - v192 >= v239)
        {
          v240 = v239;
        }

        v167[v197] |= ((v238 >> v237) & ~(-1 << v240)) << v192;
        v237 += v240;
        v241 = v240 + v192;
        v197 += v241 >> 6;
        v192 = v241 & 0x3F;
        v239 -= v240;
      }

      while (v239);
    }

    v198 += v236;
  }

  else
  {
    v197 = 0;
    v198 = 6;
    if (v193 <= 3)
    {
      goto LABEL_358;
    }

LABEL_465:
    v204 = v310;
    if (v275)
    {
      goto LABEL_466;
    }

LABEL_475:
    if (v204 == 2 || v204 >= 0x10)
    {
      goto LABEL_466;
    }

    v235 = v309;
    if (v193)
    {
      goto LABEL_478;
    }

LABEL_531:
    if (v235 == 2 || v235 >= 0x10)
    {
      goto LABEL_478;
    }
  }

  v242 = v296;
  if (v296)
  {
    if ((v192 - v168 + (v197 << 6) + 3) <= 0x60)
    {
      v243 = 0;
      v244 = v304;
      v245 = 3;
      do
      {
        v246 = 64 - v192;
        if (64 - v192 >= v245)
        {
          v246 = v245;
        }

        v167[v197] |= ((v244 >> v243) & ~(-1 << v246)) << v192;
        v243 += v246;
        v247 = v246 + v192;
        v197 += v247 >> 6;
        v192 = v247 & 0x3F;
        v245 -= v246;
      }

      while (v245);
    }

    v198 += 3;
  }

  v248 = v295;
  if (v295)
  {
    if ((v192 - v168 + (v197 << 6) + 3) <= 0x60)
    {
      v249 = 0;
      v250 = v303;
      v251 = 3;
      do
      {
        v252 = 64 - v192;
        if (64 - v192 >= v251)
        {
          v252 = v251;
        }

        v167[v197] |= ((v250 >> v249) & ~(-1 << v252)) << v192;
        v249 += v252;
        v253 = v252 + v192;
        v197 += v253 >> 6;
        v192 = v253 & 0x3F;
        v251 -= v252;
      }

      while (v251);
    }

    v198 += 3;
  }

  v254 = 96 - v198;
  v255 = (96 - v198) / 7u;
  v256 = v254 % 7;
  if ((v256 - 257) >= 0xFFFFFF00 && v192 - v168 + (v197 << 6) + v256 <= 0x60)
  {
    do
    {
      v257 = 64 - v192;
      if (64 - v192 >= v256)
      {
        v257 = v256;
      }

      v258 = v257 + v192;
      v197 += v258 >> 6;
      v192 = v258 & 0x3F;
      v256 -= v257;
    }

    while (v256);
  }

  v259 = 0;
  v260 = v248 + v242;
  while (2)
  {
    if (v242 && v242 <= 0x100 && v192 - v168 + (v197 << 6) + v242 <= 0x60)
    {
      v261 = 0;
      v262 = *(v311 + v259);
      v263 = v242;
      do
      {
        v264 = 64 - v192;
        if (64 - v192 >= v263)
        {
          v264 = v263;
        }

        v167[v197] |= ((v262 >> v261) & ~(-1 << v264)) << v192;
        v261 += v264;
        v265 = v264 + v192;
        v197 += v265 >> 6;
        v192 = v265 & 0x3F;
        v263 -= v264;
      }

      while (v263);
    }

    if (v248)
    {
      if (v248 <= 0x100 && v192 - v168 + (v197 << 6) + v248 <= 0x60)
      {
        v266 = 0;
        v267 = *(&v311[1] + v259 + 3);
        v268 = v248;
        do
        {
          v269 = 64 - v192;
          if (64 - v192 >= v268)
          {
            v269 = v268;
          }

          v167[v197] |= ((v267 >> v266) & ~(-1 << v269)) << v192;
          v266 += v269;
          v270 = v269 + v192;
          v197 += v270 >> 6;
          v192 = v270 & 0x3F;
          v268 -= v269;
        }

        while (v268);
      }

      v271 = v255 - v260;
      if (v255 != v260)
      {
LABEL_524:
        if (v271 <= 0x100 && v192 - v168 + (v197 << 6) + v271 <= 0x60)
        {
          do
          {
            v272 = 64 - v192;
            if (64 - v192 >= v271)
            {
              v272 = v271;
            }

            v273 = v272 + v192;
            v197 += v273 >> 6;
            v192 = v273 & 0x3F;
            v271 -= v272;
          }

          while (v271);
        }
      }
    }

    else
    {
      v271 = v255 - v242;
      if (v255 != v242)
      {
        goto LABEL_524;
      }
    }

    if (++v259 != 7)
    {
      continue;
    }

    return (v276 | v277) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 11;
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
      v12 = (v13 & 0x3F) << 6;
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 25 >> 31) + 32) | v12;
    if (v12 == 4032)
    {
      v18 = 4095;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 2048 && v7 == 1)
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
      v25 = v10 == 2048 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 4032)
        {
          v10 = 4095;
        }

        else
        {
          v10 |= (v10 << 25 >> 31) + 32;
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
    v10 = (v20 & 0x3F) << 6;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v171 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = 6;
  v8 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v9 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6 & 7;
  if ((v6 & 7) != 0)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if ((v9 - v4 - 95) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
      do
      {
        v17 = 64 - v9;
        if (64 - v9 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v9;
        v12 += v18 >> 6;
        v9 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
      v13 = v14 & 3;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v7 = 8;
  }

  v19 = v11 + 3;
  if (!v11)
  {
    v19 = v13;
  }

  v169 = v19;
  if (v10)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if ((v9 - v4 + (v12 << 6) - 95) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v22 = 0;
      v23 = 0;
      v24 = 2;
      do
      {
        v25 = 64 - v9;
        if (64 - v9 >= v24)
        {
          v25 = v24;
        }

        v22 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v25)) << v23;
        v23 += v25;
        v26 = v25 + v9;
        v12 += v26 >> 6;
        v9 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v21 = v22 & 3;
    }

    else
    {
      v21 = 0;
    }

    v20 = 2;
  }

  if (v10)
  {
    v21 = v10 + 3;
  }

  v170 = v21;
  v28 = dword_29D2F35F0[10 * v21 + 6];
  v166 = dword_29D2F35F0[10 * v19 + 6];
  v27 = v166;
  v167 = v28;
  v168[0] = v166;
  v168[1] = v28;
  if (*(&v169 + (v21 >= v19)) == *(&v169 + (v21 < v19)))
  {
    v29 = v166;
  }

  else
  {
    v30 = v168[v21 < v19];
    v29 = v166;
    if (v30 >= 1)
    {
      *(&v166 + (v21 < v19)) = 0;
      *(&v166 + (v21 >= v19)) += v30;
      v29 = v166;
    }
  }

  v31 = kDQuadParamTable;
  v32 = &kDQuadParamTable[10 * v19];
  v33 = v32[324];
  v34 = v32[325];
  v35 = v29 - v27;
  if (v35 >= 0)
  {
    v36 = v34;
    if (!v35)
    {
      goto LABEL_43;
    }

    v36 = v35 + v34;
    goto LABEL_38;
  }

  v37 = &kDQuadParamTable[10 * v19];
  if (v37[327] >= -v35)
  {
    v36 = v34;
  }

  else
  {
    v38 = v37 + 320;
    v36 = v34 - 1;
    if (!v38[8])
    {
      v35 = -1;
LABEL_38:
      v33 += v35;
    }
  }

LABEL_43:
  if (v33 >= 0xC)
  {
    v39 = 12;
  }

  else
  {
    v39 = v33;
  }

  if (v34)
  {
    v40 = 12;
  }

  else
  {
    v40 = 0;
  }

  if (v40 >= v36)
  {
    v41 = v36;
  }

  else
  {
    v41 = v40;
  }

  v42 = &kDQuadParamTable[10 * v21];
  v43 = v42[324];
  v44 = v42[325];
  v46 = v167 - v28;
  v45 = v167 == v28;
  if (v167 - v28 >= 0)
  {
    LODWORD(v47) = v44;
    if (v45)
    {
      goto LABEL_60;
    }

    LODWORD(v47) = v46 + v44;
    goto LABEL_55;
  }

  v47 = &kDQuadParamTable[10 * v21];
  if (*(v47 + 1308) >= -v46)
  {
    LODWORD(v47) = v44;
  }

  else
  {
    v48 = (v47 + 1280);
    LODWORD(v47) = v44 - 1;
    if (!v48[8])
    {
      v46 = -1;
LABEL_55:
      v43 += v46;
    }
  }

LABEL_60:
  v49 = v7 + v20;
  if (v43 >= 0xC)
  {
    v50 = 12;
  }

  else
  {
    v50 = v43;
  }

  if (v44)
  {
    v51 = 12;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v47)
  {
    v47 = v47;
  }

  else
  {
    v47 = v51;
  }

  if (v19)
  {
    v52 = 0;
    if (v33 && (v9 - v4 + (v12 << 6) + v39) <= 0x60)
    {
      v52 = 0;
      v53 = 0;
      v54 = v39;
      do
      {
        v55 = 64 - v9;
        if (64 - v9 >= v54)
        {
          v55 = v54;
        }

        v52 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v55)) << v53;
        v53 += v55;
        v56 = v55 + v9;
        v12 += v56 >> 6;
        v9 = v56 & 0x3F;
        v54 -= v55;
      }

      while (v54);
    }

    v57 = v52 << (12 - v39);
    v49 += v39;
    if (!v21)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v57 = 0;
  if (v21)
  {
LABEL_79:
    v58 = 0;
    if (v43 && (v9 - v4 + (v12 << 6) + v50) <= 0x60)
    {
      v58 = 0;
      v59 = 0;
      v60 = v50;
      do
      {
        v61 = 64 - v9;
        if (64 - v9 >= v60)
        {
          v61 = v60;
        }

        v58 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v61)) << v59;
        v59 += v61;
        v62 = v61 + v9;
        v12 += v62 >> 6;
        v9 = v62 & 0x3F;
        v60 -= v61;
      }

      while (v60);
    }

    v21 = v58 << (12 - v50);
    v49 += v50;
  }

LABEL_86:
  v162 = 0;
  v163 = 0;
  if (v41)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0x60)
    {
      v63 = 0;
      v64 = 0;
      v65 = 3;
      do
      {
        v66 = 64 - v9;
        if (64 - v9 >= v65)
        {
          v66 = v65;
        }

        v63 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v66)) << v64;
        v64 += v66;
        v67 = v66 + v9;
        v12 += v67 >> 6;
        v9 = v67 & 0x3F;
        v65 -= v66;
      }

      while (v65);
    }

    else
    {
      v63 = 0;
    }

    v163 = v63;
    v49 += 3;
  }

  if (v47)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0x60)
    {
      v68 = 0;
      v69 = 0;
      v70 = 3;
      do
      {
        v71 = 64 - v9;
        if (64 - v9 >= v70)
        {
          v71 = v70;
        }

        v68 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v71)) << v69;
        v69 += v71;
        v72 = v71 + v9;
        v12 += v72 >> 6;
        v9 = v72 & 0x3F;
        v70 -= v71;
      }

      while (v70);
    }

    else
    {
      v68 = 0;
    }

    v162 = v68;
    v49 += 3;
  }

  v73 = 0;
  v74 = a3 & 0xFFFFFFFD;
  v75 = 96 - v49;
  v76 = (96 - v49) / 7u;
  v77 = (v9 | (v12 << 6)) + v75 % 7;
  v165 = 0;
  memset(v164, 0, sizeof(v164));
  do
  {
    v79 = v77 >> 6;
    v80 = v77 & 0x3F;
    if (v41)
    {
      if (v80 - v4 + (v77 & 0xFFFFFFFFFFFFFFC0) + v41 <= 0x60)
      {
        v81 = 0;
        v82 = 0;
        v83 = v41;
        do
        {
          v84 = 64 - v80;
          if (64 - v80 >= v83)
          {
            v84 = v83;
          }

          v81 |= ((*(v3 + 8 * v79) >> v80) & ~(-1 << v84)) << v82;
          v82 += v84;
          v85 = v84 + v80;
          v79 += v85 >> 6;
          v80 = v85 & 0x3F;
          v83 -= v84;
        }

        while (v83);
      }

      else
      {
        v81 = 0;
      }

      *(v164 + v73) = v81;
    }

    if (v47)
    {
      if (v80 - v4 + (v79 << 6) + v47 <= 0x60)
      {
        v86 = 0;
        v87 = 0;
        v88 = v47;
        do
        {
          v89 = 64 - v80;
          if (64 - v80 >= v88)
          {
            v89 = v88;
          }

          v86 |= ((*(v3 + 8 * v79) >> v80) & ~(-1 << v89)) << v87;
          v87 += v89;
          v90 = v89 + v80;
          v79 += v90 >> 6;
          v80 = v90 & 0x3F;
          v88 -= v89;
        }

        while (v88);
      }

      else
      {
        v86 = 0;
      }

      *(&v164[1] + v73 + 3) = v86;
      v78 = v47 + v41;
    }

    else
    {
      v78 = v41;
    }

    v77 = (v80 | (v79 << 6)) + v76 - v78;
    ++v73;
  }

  while (v73 != 7);
  v91 = 0;
  v92 = &v169;
  v93 = &v163;
  v94 = 1;
  v95 = v164;
  v96 = v41;
  do
  {
    v99 = v94;
    v100 = *&v31[10 * *v92 + 322];
    if (v100 >> v96 <= 1)
    {
      v101 = 1;
    }

    else
    {
      v101 = v100 >> v96;
    }

    v102 = v101 >> 1;
    v103 = (1 << (12 - v39)) >> 1;
    if (v101 >> 1 < v103)
    {
      v103 = v101 >> 1;
    }

    v104 = v57;
    result = 2048;
    v106 = 2048 - v57;
    if (v57)
    {
      v107 = v103;
    }

    else
    {
      v107 = 0;
    }

    v108 = v57 == 2048;
    v39 = a2 + 4 * v91;
    if (v96)
    {
      v109 = v50;
      v110 = v31;
      v111 = v100 + v104;
      v112 = -1 << v96;
      v113 = *v93;
      v114 = v106 / v101;
      if (!*v93)
      {
        v118 = 0;
        v117 = v107;
        v116 = v108;
        goto LABEL_162;
      }

      v115 = *v95;
      v116 = v114 == v115;
      if (v104 | v115)
      {
        if (v111 >= 0x1000 && (v112 ^ v115) == -1)
        {
          v118 = 1;
          v117 = 4095;
LABEL_162:
          v121 = v117 + v104;
          if (a3 != 4 || (result = (v121 | 0x80000000) >> 22, v122 = 4095, result != 1022))
          {
            if (v121 >= 0x1000)
            {
              v122 = 4095;
            }

            else
            {
              v122 = v121;
            }
          }

          if (v116)
          {
            v123 = 0;
          }

          else
          {
            v123 = v122 ^ 0x800;
          }

          if (v74 != 1)
          {
            v123 = v122;
          }

          *(a2 + 4 * v91) = v123;
          if (v113 == 1)
          {
            v124 = v107;
            v125 = v108;
          }

          else
          {
            v126 = *(v164 + 7 * v91 + v118);
            v125 = v114 == v126;
            if (v104 | v126)
            {
              if (v111 >= 0x1000 && (v112 ^ v126) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v124 = 4095;
              }

              else
              {
                v124 = v102 + v101 * v126;
              }
            }

            else
            {
              v124 = 0;
            }

            ++v118;
          }

          v127 = v124 + v104;
          if (a3 != 4 || (result = (v127 | 0x80000000) >> 22, v128 = 4095, result != 1022))
          {
            if (v127 >= 0x1000)
            {
              v128 = 4095;
            }

            else
            {
              v128 = v127;
            }
          }

          if (v125)
          {
            v129 = 0;
          }

          else
          {
            v129 = v128 ^ 0x800;
          }

          if (v74 != 1)
          {
            v129 = v128;
          }

          *(v39 + 8) = v129;
          if (v113 == 2)
          {
            v130 = v107;
            v131 = v108;
          }

          else
          {
            v132 = *(v164 + 7 * v91 + v118);
            v131 = v114 == v132;
            if (v104 | v132)
            {
              if (v111 >= 0x1000 && (v112 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v130 = 4095;
              }

              else
              {
                v130 = v102 + v101 * v132;
              }
            }

            else
            {
              v130 = 0;
            }

            ++v118;
          }

          v133 = v130 + v104;
          if (a3 != 4 || (result = (v133 | 0x80000000) >> 22, v134 = 4095, result != 1022))
          {
            if (v133 >= 0x1000)
            {
              v134 = 4095;
            }

            else
            {
              v134 = v133;
            }
          }

          if (v131)
          {
            v135 = 0;
          }

          else
          {
            v135 = v134 ^ 0x800;
          }

          if (v74 != 1)
          {
            v135 = v134;
          }

          *(v39 + 16) = v135;
          if (v113 == 3)
          {
            v136 = v107;
            v137 = v108;
          }

          else
          {
            v138 = *(v164 + 7 * v91 + v118);
            v137 = v114 == v138;
            if (v104 | v138)
            {
              if (v111 >= 0x1000 && (v112 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v136 = 4095;
              }

              else
              {
                v136 = v102 + v101 * v138;
              }
            }

            else
            {
              v136 = 0;
            }

            ++v118;
          }

          v139 = v136 + v104;
          if (a3 != 4 || (result = (v139 | 0x80000000) >> 22, v140 = 4095, result != 1022))
          {
            if (v139 >= 0x1000)
            {
              v140 = 4095;
            }

            else
            {
              v140 = v139;
            }
          }

          if (v137)
          {
            v141 = 0;
          }

          else
          {
            v141 = v140 ^ 0x800;
          }

          if (v74 != 1)
          {
            v141 = v140;
          }

          *(v39 + 24) = v141;
          if (v113 == 4)
          {
            v142 = v107;
            v143 = v108;
          }

          else
          {
            v144 = *(v164 + 7 * v91 + v118);
            v143 = v114 == v144;
            if (v104 | v144)
            {
              if (v111 >= 0x1000 && (v112 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v142 = 4095;
              }

              else
              {
                v142 = v102 + v101 * v144;
              }
            }

            else
            {
              v142 = 0;
            }

            ++v118;
          }

          v145 = v142 + v104;
          if (a3 != 4 || (result = (v145 | 0x80000000) >> 22, v146 = 4095, result != 1022))
          {
            if (v145 >= 0x1000)
            {
              v146 = 4095;
            }

            else
            {
              v146 = v145;
            }
          }

          if (v143)
          {
            v147 = 0;
          }

          else
          {
            v147 = v146 ^ 0x800;
          }

          if (v74 != 1)
          {
            v147 = v146;
          }

          *(v39 + 32) = v147;
          if (v113 == 5)
          {
            v148 = v107;
            v149 = v108;
          }

          else
          {
            v150 = *(v164 + 7 * v91 + v118);
            v149 = v114 == v150;
            if (v104 | v150)
            {
              if (v111 >= 0x1000 && (v112 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v148 = 4095;
              }

              else
              {
                v148 = v102 + v101 * v150;
              }
            }

            else
            {
              v148 = 0;
            }

            ++v118;
          }

          v151 = v148 + v104;
          if (a3 != 4 || (result = (v151 | 0x80000000) >> 22, v152 = 4095, result != 1022))
          {
            if (v151 >= 0x1000)
            {
              v152 = 4095;
            }

            else
            {
              v152 = v151;
            }
          }

          if (v149)
          {
            v153 = 0;
          }

          else
          {
            v153 = v152 ^ 0x800;
          }

          if (v74 != 1)
          {
            v153 = v152;
          }

          *(v39 + 40) = v153;
          if (v113 == 6)
          {
            v154 = v107;
            v155 = v108;
          }

          else
          {
            v156 = *(v164 + 7 * v91 + v118);
            v155 = v114 == v156;
            if (v104 | v156)
            {
              if (v111 >= 0x1000 && (v112 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v154 = 4095;
              }

              else
              {
                v154 = v102 + v101 * v156;
              }
            }

            else
            {
              v154 = 0;
            }

            ++v118;
          }

          v157 = v154 + v104;
          if (a3 != 4 || (result = (v157 | 0x80000000) >> 22, v158 = 4095, result != 1022))
          {
            if (v157 >= 0x1000)
            {
              v158 = 4095;
            }

            else
            {
              v158 = v157;
            }
          }

          if (v155)
          {
            v159 = 0;
          }

          else
          {
            v159 = v158 ^ 0x800;
          }

          if (v74 != 1)
          {
            v159 = v158;
          }

          *(v39 + 48) = v159;
          if (v113 != 7)
          {
            v160 = *(v164 + 7 * v91 + v118);
            v108 = v114 == v160;
            if (v104 | v160)
            {
              if (v111 >= 0x1000 && (v112 ^ v160) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v107 = 4095;
              }

              else
              {
                v107 = v102 + v101 * v160;
              }
            }

            else
            {
              v107 = 0;
            }
          }

          v161 = v107 + v104;
          if (a3 != 4 || (LODWORD(v97) = 4095, (v161 | 0x80000000) >> 22 != 1022))
          {
            if (v161 >= 0x1000)
            {
              LODWORD(v97) = 4095;
            }

            else
            {
              LODWORD(v97) = v107 + v104;
            }
          }

          v98 = v97 ^ 0x800;
          if (v108)
          {
            v98 = 0;
          }

          if (v74 == 1)
          {
            LODWORD(v97) = v98;
          }

          v31 = v110;
          v50 = v109;
          goto LABEL_130;
        }

        v117 = v102 + v101 * v115;
      }

      else
      {
        v117 = 0;
      }

      v118 = 1;
      goto LABEL_162;
    }

    if (a3 == 4)
    {
      if ((v104 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v97) = 4095;
      }

      else
      {
        if ((v104 & 0xFFC00000) == 0xFF800000)
        {
          v97 = 4286578687;
        }

        else
        {
          v97 = v104;
        }

        if (v97 >= 0x1000)
        {
          LODWORD(v97) = 4095;
        }
      }
    }

    else
    {
      if (v104 >= 0xFFF)
      {
        LODWORD(v97) = 4095;
      }

      else
      {
        LODWORD(v97) = v104;
      }

      v120 = v97 ^ 0x800;
      if (v101 > v106)
      {
        v120 = 0;
      }

      if (v74 == 1)
      {
        LODWORD(v97) = v120;
      }
    }

    *v39 = v97;
    *(v39 + 8) = v97;
    *(v39 + 16) = v97;
    *(v39 + 24) = v97;
    *(v39 + 32) = v97;
    *(v39 + 40) = v97;
    *(v39 + 48) = v97;
LABEL_130:
    v94 = 0;
    *(v39 + 56) = v97;
    v93 = &v162;
    v95 = &v164[1] + 3;
    v57 = v21;
    v96 = v47;
    LOBYTE(v39) = v50;
    v92 = &v170;
    v91 = 1;
  }

  while ((v99 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
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
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x14uLL), vmovl_u16(vshl_n_s16(v35, 4uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x14uLL), vmovl_u16(vshl_n_s16(v37, 4uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x14uLL), vmovl_u16(vshl_n_s16(v40, 4uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 4uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x14uLL), v45);
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
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x14uLL), vmovl_u16(vshl_n_s16(*v44.i8, 4uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
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
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x14uLL), vmovl_u16(vshl_n_s16(v43, 4uLL)));
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
    case 0x5Fu:
      v51.i64[0] = 0xC000C000C000CLL;
      v51.i64[1] = 0xC000C000C000CLL;
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
        v94 = vshrq_n_u32(v84, 0xCuLL);
        v95 = vshrq_n_u32(v85, 0xCuLL);
        v96 = vshrq_n_u32(v87, 0xCuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xCuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xCuLL);
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
        v117 = vshrq_n_u32(v116, 0xCuLL);
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
        v132 = vshrq_n_u32(v131, 0xCuLL);
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
        v147 = vshrq_n_u32(v146, 0xCuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 4uLL);
        v153 = vshlq_n_s16(v140, 4uLL);
        v154 = vshlq_n_s16(v141, 4uLL);
        v155 = vshlq_n_s16(v142, 4uLL);
        v57 = vshlq_n_s16(v143, 4uLL);
        v156 = vshlq_n_s16(v144, 4uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xCuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 4uLL);
        v162 = vshlq_n_s16(v160, 4uLL);
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
      return 96;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 8) & 0xFFF00000 | (16 * (*a3 & 0xFFF)));
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
      v183 = v174 + 42;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x29)
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
          v204 = v183 & 0x3A;
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
        v313 = 12;
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
        v321 = 12;
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
      v429.i16[0] = v186 & 0xFFF;
      v429.i16[1] = (v186 >> 12) & 0xFFF;
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
      v455 = vshlq_n_s16(v447, 4uLL);
      v456 = vshlq_n_s16(v448, 4uLL);
      v457 = vshlq_n_s16(v449, 4uLL);
      v458 = vshlq_n_s16(v451, 4uLL);
      v459 = vshlq_n_s16(v452, 4uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 4uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 4uLL);
      v467 = vshlq_n_s16(v454, 4uLL);
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 100, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v7 = (v6 + a4);
  v12 = vshrq_n_s16(*a3, 6uLL);
  v13 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v14 = vshrq_n_s16(a3[1], 6uLL);
  v15 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v16 = vshrq_n_s16(*v7, 6uLL);
  v629 = vshrq_n_s16(v7[1], 6uLL);
  v17 = vshrq_n_s16(a3[2], 6uLL);
  v18 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v19 = vshrq_n_s16(a3[3], 6uLL);
  v630 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v20 = vshrq_n_s16(v10, 6uLL);
  v21 = vshrq_n_s16(v7[2], 6uLL);
  v22 = vshrq_n_s16(v11, 6uLL);
  v23 = vshrq_n_s16(v7[3], 6uLL);
  v651 = vdupq_lane_s64(v12.i64[0], 0);
  v615 = v12;
  v617 = v13;
  v618 = v14;
  v619 = v15;
  v626 = vshrq_n_s16(v8, 6uLL);
  v627 = v16;
  v628 = vshrq_n_s16(v9, 6uLL);
  v24 = v17;
  v25 = v18;
  v26 = vsubq_s16(v18, v651);
  v631 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v12, v651), 6uLL), 6uLL);
  v633 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v651), 6uLL), 6uLL);
  v635 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v651), 6uLL), 6uLL);
  v637 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v651), 6uLL), 6uLL);
  v639 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v626, v651), 6uLL), 6uLL);
  v640 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v651), 6uLL), 6uLL);
  v27 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v631, v633), v635), v637), xmmword_29D2F1150);
  v28 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v631, v633), v635), v637), xmmword_29D2F1150);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vzip1q_s16(v29, v30);
  v32.i64[0] = 0x10001000100010;
  v32.i64[1] = 0x10001000100010;
  v33 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v31)), vceqzq_s16(v31));
  v641 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v628, v651), 6uLL), 6uLL);
  v642 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v629, v651), 6uLL), 6uLL);
  v643 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v651), 6uLL), 6uLL);
  v644 = vshrq_n_s16(vshlq_n_s16(v26, 6uLL), 6uLL);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v30, v34);
  v36 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v639, v640), v641), v642), xmmword_29D2F1150);
  v37 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v639, v640), v641), v642), xmmword_29D2F1150);
  v38 = vpmaxq_s16(v36, v36);
  v39 = vpminq_s16(v37, v37);
  v40 = vmaxq_s16(vmaxq_s16(v29, v9), v38);
  v41 = vminq_s16(v35, v39);
  v42 = vzip1q_s16(v38, v39);
  v43 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v42)), vceqzq_s16(v42));
  v645 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v651), 6uLL), 6uLL);
  v646 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v630, v651), 6uLL), 6uLL);
  v647 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v651), 6uLL), 6uLL);
  v648 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v651), 6uLL), 6uLL);
  v44 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v643, v644), v645), v646), xmmword_29D2F1150);
  v45 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v643, v644), v645), v646), xmmword_29D2F1150);
  v46 = vpmaxq_s16(v44, v44);
  v47 = vpminq_s16(v45, v45);
  v48 = vminq_s16(v41, v47);
  v49 = vzip1q_s16(v46, v47);
  v50 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v49)), vceqzq_s16(v49));
  v649 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v651), 6uLL), 6uLL);
  v650 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v651), 6uLL), 6uLL);
  v51 = vpmaxq_s16(v33, v33);
  v52 = vpmaxq_s16(v43, v43);
  v53 = vpmaxq_s16(v50, v50);
  v54 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v647, v648), v649), v650), xmmword_29D2F1150);
  v55 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v647, v648), v649), v650), xmmword_29D2F1150);
  v56 = vpmaxq_s16(v54, v54);
  v57 = vpminq_s16(v55, v55);
  v58 = vmaxq_s16(vmaxq_s16(v40, v46), v56);
  v59 = vminq_s16(v48, v57);
  v60 = vzip1q_s16(v56, v57);
  v61 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v60)), vceqzq_s16(v60));
  v62 = vpmaxq_s16(v61, v61);
  v63 = vmaxq_s16(vmaxq_s16(v51, v52), vmaxq_s16(v53, v62));
  v64 = vclzq_s16(vsubq_s16(v58, v59));
  v57.i64[0] = 0xF000F000F000FLL;
  v57.i64[1] = 0xF000F000F000FLL;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v65 = vshlq_s16(v10, vsubq_s16(v57, v64));
  v658 = v59;
  v659 = v58;
  v66 = vsubq_s16(v32, v64);
  v67 = vcgtq_s16(v63, v66);
  v68 = vminq_s16(v66, v63);
  v660 = vandq_s8(vsubq_s16(v65, v59), v67);
  v63.i64[0] = 0x8000800080008;
  v63.i64[1] = 0x8000800080008;
  v69 = vorrq_s8(vandq_s8(v67, v63), 0);
  v70.i64[0] = 0x3000300030003;
  v70.i64[1] = 0x3000300030003;
  v71 = vorrq_s8(vandq_s8(vceqzq_s16(v68), v70), v69);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v68, v52), v70), 0);
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v68, v53), v70), 0);
  v654 = vsubq_s16(v68, v72);
  v655 = vsubq_s16(v68, v73);
  v74 = vmaxq_s16(vminq_s16(vsubq_s16(v68, v62), v70), 0);
  v656 = vsubq_s16(v68, v74);
  v657 = v68;
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v68, v51), v70), 0);
  v26.i64[0] = 0x4000400040004;
  v26.i64[1] = 0x4000400040004;
  v76 = vorrq_s8(vbicq_s8(v26, vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v75, v72)))), v71);
  v652 = v76;
  v653 = vsubq_s16(v68, v75);
  if (vmaxvq_s16(v68))
  {
    v620 = v24;
    v621 = v25;
    v622 = v19;
    v623 = v20;
    v624 = v21;
    v625 = v22;
    v614 = v23;
    v77.i64[0] = 0x8000800080008000;
    v77.i64[1] = 0x8000800080008000;
    v78 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v631, vqtbl1q_s8(v631, xmmword_29D2F1140)), 6uLL), 6uLL);
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v633, vqtbl1q_s8(v633, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v635, vqtbl1q_s8(v635, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v637, vqtbl1q_s8(v637, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v639, vqtbl1q_s8(v639, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v640, vqtbl1q_s8(v640, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v641, vqtbl1q_s8(v641, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v642, vqtbl1q_s8(v642, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86.i64[0] = 0x8000800080008000;
    v86.i64[1] = 0x8000800080008000;
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v647, vqtbl1q_s8(v647, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v648, vqtbl1q_s8(v648, xmmword_29D2F1140)), 6uLL), 6uLL);
    v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v650, vqtbl1q_s8(v650, xmmword_29D2F1140)), 6uLL), 6uLL);
    v90 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v78, v79), v80), v81), xmmword_29D2F1150);
    v91 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v78, v79), v80), v81), xmmword_29D2F1150);
    v92 = vpmaxq_s16(v90, v90);
    v93 = vpminq_s16(v91, v91);
    v94 = vmaxq_s16(v92, v86);
    v95 = vminq_s16(v93, v77);
    v96 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v649, vqtbl1q_s8(v649, xmmword_29D2F1140)), 6uLL), 6uLL);
    v97 = vzip1q_s16(v92, v93);
    v98 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v97)), vceqzq_s16(v97));
    v99 = vpmaxq_s16(v98, v98);
    v100 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v82, v83), v84), v85), xmmword_29D2F1150);
    v101 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v82, v83), v84), v85), xmmword_29D2F1150);
    v102 = vpmaxq_s16(v100, v100);
    v103 = vpminq_s16(v101, v101);
    v104 = vmaxq_s16(v94, v102);
    v105 = vminq_s16(v95, v103);
    v106 = vzip1q_s16(v102, v103);
    v107 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v106)), vceqzq_s16(v106));
    v108 = vpmaxq_s16(v107, v107);
    v606 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v644, vqtbl1q_s8(v644, xmmword_29D2F1140)), 6uLL), 6uLL);
    v608 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v643, vqtbl1q_s8(v643, xmmword_29D2F1140)), 6uLL), 6uLL);
    v610 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v646, vqtbl1q_s8(v646, xmmword_29D2F1140)), 6uLL), 6uLL);
    v612 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v645, vqtbl1q_s8(v645, xmmword_29D2F1140)), 6uLL), 6uLL);
    v109 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v608, v606), v612), v610), xmmword_29D2F1150);
    v110 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v608, v606), v612), v610), xmmword_29D2F1150);
    v111 = vpmaxq_s16(v109, v109);
    v112 = vpminq_s16(v110, v110);
    v113 = vmaxq_s16(v104, v111);
    v114 = vminq_s16(v105, v112);
    v115 = vzip1q_s16(v111, v112);
    v116 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v115)), vceqzq_s16(v115));
    v117 = vpmaxq_s16(v116, v116);
    v118 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v87, v88), v96), v89), xmmword_29D2F1150);
    v119 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v87, v88), v96), v89), xmmword_29D2F1150);
    v120 = vpmaxq_s16(v118, v118);
    v121 = vpminq_s16(v119, v119);
    v122 = vmaxq_s16(v113, v120);
    v123 = vminq_s16(v114, v121);
    v124 = vzip1q_s16(v120, v121);
    v125 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v124)), vceqzq_s16(v124));
    v126 = vpmaxq_s16(v125, v125);
    v127 = vmaxq_s16(vmaxq_s16(v99, v108), vmaxq_s16(v117, v126));
    v604 = v122;
    v128 = vclzq_s16(vsubq_s16(v122, v123));
    v129 = vsubq_s16(v32, v128);
    v130 = vcgtq_s16(v127, v129);
    v131 = vminq_s16(v129, v127);
    v132 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v99), v70), 0);
    v133 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v108), v70), 0);
    v134 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v117), v70), 0);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v126), v70), 0);
    v129.i64[0] = 0x4000400040004;
    v129.i64[1] = 0x4000400040004;
    v136 = vbicq_s8(v129, vceqq_s16(vaddq_s16(v135, v134), vnegq_s16(vaddq_s16(v132, v133))));
    v126.i64[0] = 0x18001800180018;
    v126.i64[1] = 0x18001800180018;
    v137 = vbslq_s8(v130, v126, v32);
    v138 = vsubq_s16(v131, v132);
    v139 = vsubq_s16(v131, v133);
    v140 = vsubq_s16(v131, v134);
    v602 = vsubq_s16(v131, v135);
    v132.i64[0] = 0x7000700070007;
    v132.i64[1] = 0x7000700070007;
    v126.i64[0] = 0x8000800080008;
    v126.i64[1] = 0x8000800080008;
    v141 = vandq_s8(vaddq_s16(v76, v76), v126);
    v142 = vandq_s8(v71, v126);
    v143 = vandq_s8(v71, v70);
    v144.i64[0] = 0x2000200020002;
    v144.i64[1] = 0x2000200020002;
    v145 = vandq_s8(vceqq_s16(v143, v144), v32);
    v146 = v657;
    v147 = vaddq_s16(vaddq_s16(vbicq_s8(v657, vceqzq_s16(v142)), v145), v141);
    v149 = v653;
    v148 = v654;
    v151 = v655;
    v150 = v656;
    v152 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v147, v653, v132), vshlq_n_s16(vaddq_s16(vaddq_s16(v655, v654), v656), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v131, vceqzq_s16((*&v137 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v136, v136)), v138, v132), vshlq_n_s16(vaddq_s16(vaddq_s16(v140, v139), v602), 3uLL))).i64[0], 0);
    v153 = vaddvq_s16(v152);
    v155 = a5 < 4 || a6 < 2;
    if (v153)
    {
      v156.i64[0] = 0x3000300030003;
      v156.i64[1] = 0x3000300030003;
      v157 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v131), v156), v137), v136);
      v158.i64[0] = 0xF000F000F000FLL;
      v158.i64[1] = 0xF000F000F000FLL;
      v631 = vbslq_s8(v152, v78, v631);
      v633 = vbslq_s8(v152, v79, v633);
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v635 = vbslq_s8(v152, v80, v635);
      v637 = vbslq_s8(v152, v81, v637);
      v159 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v158, v128)), v123), v130);
      v639 = vbslq_s8(v152, v82, v639);
      v640 = vbslq_s8(v152, v83, v640);
      v641 = vbslq_s8(v152, v84, v641);
      v642 = vbslq_s8(v152, v85, v642);
      v643 = vbslq_s8(v152, v608, v643);
      v644 = vbslq_s8(v152, v606, v644);
      v645 = vbslq_s8(v152, v612, v645);
      v646 = vbslq_s8(v152, v610, v646);
      v647 = vbslq_s8(v152, v87, v647);
      v648 = vbslq_s8(v152, v88, v648);
      v649 = vbslq_s8(v152, v96, v649);
      v650 = vbslq_s8(v152, v89, v650);
      v149 = vbslq_s8(v152, v138, v653);
      v148 = vbslq_s8(v152, v139, v654);
      v653 = v149;
      v654 = v148;
      v151 = vbslq_s8(v152, v140, v655);
      v150 = vbslq_s8(v152, v602, v656);
      v655 = v151;
      v656 = v150;
      v659 = vbslq_s8(v152, v604, v659);
      v660 = vbslq_s8(v152, v159, v660);
      v146 = vbslq_s8(v152, v131, v657);
      v657 = v146;
      v658 = vbslq_s8(v152, v123, v658);
      v76 = vbslq_s8(v152, v157, v652);
      v651 = vbslq_s8(v152, vsubq_s16(v651, vqtbl1q_s8(v651, xmmword_29D2F1140)), v651);
      v652 = v76;
    }

    v160 = v615;
    v161 = v617;
    v162 = v14;
    v163 = v619;
    v164 = v623;
    v165 = v624;
    v166 = v625;
    v167 = v620;
    v168 = v621;
    v169 = v19;
    if (!v155)
    {
      v170 = vqtbl4q_s8(*v160.i8, xmmword_29D2F1160);
      v171 = vsubq_s16(v615, vqtbl4q_s8(*v160.i8, xmmword_29D2F10B0));
      v172 = vsubq_s16(v618, v170);
      v173 = vsubq_s16(v619, v170);
      v661.val[0] = v626;
      v661.val[1] = v627;
      v661.val[2] = v628;
      v661.val[3].i64[0] = v629.i64[0];
      v661.val[3].i64[1] = v619.i64[1];
      v174 = vsubq_s16(v626, vqtbl4q_s8(v661, xmmword_29D2F10B0));
      v175 = vsubq_s16(v627, vqtbl4q_s8(v661, xmmword_29D2F10F0));
      v176 = vsubq_s16(v628, vqtbl4q_s8(v661, xmmword_29D2F1160));
      v177 = vsubq_s16(v629, vqtbl4q_s8(v661, xmmword_29D2F1100));
      v178 = v630.i64[0];
      v179 = v619.i64[1];
      v180 = v614.i64[0];
      v181 = v619.i64[1];
      v182.i64[0] = v173.i64[0];
      v182.i64[1] = v171.i64[0];
      v171.i64[0] = v173.i64[1];
      v183 = vshlq_n_s16(v182, 6uLL);
      v661.val[0] = vshlq_n_s16(vsubq_s16(v620, vqtbl4q_s8(*v167.i8, xmmword_29D2F1170)), 6uLL);
      v661.val[1] = vshlq_n_s16(vsubq_s16(v621, vqtbl4q_s8(*v167.i8, xmmword_29D2F1180)), 6uLL);
      v661.val[2] = vshlq_n_s16(vsubq_s16(v19, vqtbl4q_s8(*v167.i8, xmmword_29D2F10B0)), 6uLL);
      v661.val[3] = vshlq_n_s16(vsubq_s16(v630, vqtbl4q_s8(*v167.i8, xmmword_29D2F10C0)), 6uLL);
      v184 = vshlq_n_s16(vsubq_s16(v623, vqtbl4q_s8(*v164.i8, xmmword_29D2F1170)), 6uLL);
      v185 = vshlq_n_s16(vsubq_s16(v624, vqtbl4q_s8(*v164.i8, xmmword_29D2F1120)), 6uLL);
      v186 = vshlq_n_s16(vsubq_s16(v625, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0)), 6uLL);
      v187 = vshlq_n_s16(vsubq_s16(v614, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0)), 6uLL);
      v188 = vshrq_n_s16(vshlq_n_s16(v171, 6uLL), 6uLL);
      v189 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v617, vqtbl4q_s8(*v160.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v190 = vshrq_n_s16(vshlq_n_s16(v172, 6uLL), 6uLL);
      v191 = vshrq_n_s16(v183, 6uLL);
      v192 = vshrq_n_s16(vshlq_n_s16(v174, 6uLL), 6uLL);
      v193 = vshrq_n_s16(vshlq_n_s16(v175, 6uLL), 6uLL);
      v194 = vshrq_n_s16(vshlq_n_s16(v176, 6uLL), 6uLL);
      v195 = vshrq_n_s16(vshlq_n_s16(v177, 6uLL), 6uLL);
      v196 = vshrq_n_s16(v661.val[0], 6uLL);
      v197 = vshrq_n_s16(v661.val[1], 6uLL);
      v198 = vshrq_n_s16(v661.val[2], 6uLL);
      v199 = vshrq_n_s16(v661.val[3], 6uLL);
      v200 = vshrq_n_s16(v186, 6uLL);
      v201 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v188, v189), v190), v191), xmmword_29D2F1150);
      v202 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v188, v189), v190), v191), xmmword_29D2F1150);
      v203 = vpmaxq_s16(v201, v201);
      v204 = vpminq_s16(v202, v202);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v205 = vmaxq_s16(v203, v186);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v206 = vminq_s16(v204, v174);
      v207 = vzip1q_s16(v203, v204);
      v203.i64[0] = 0x10001000100010;
      v203.i64[1] = 0x10001000100010;
      v208 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v207)), vceqzq_s16(v207));
      v209 = vpmaxq_s16(v208, v208);
      v210 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v192, v193), v194), v195), xmmword_29D2F1150);
      v661.val[0] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v192, v193), v194), v195), xmmword_29D2F1150);
      v211 = vpmaxq_s16(v210, v210);
      v661.val[0] = vpminq_s16(v661.val[0], v661.val[0]);
      v212 = vmaxq_s16(v205, v211);
      v213 = vminq_s16(v206, v661.val[0]);
      v214 = vzip1q_s16(v211, v661.val[0]);
      v215 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v214)), vceqzq_s16(v214));
      v661.val[0] = vpmaxq_s16(v215, v215);
      v216 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v196, v197), v198), v199), xmmword_29D2F1150);
      v661.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v196, v197), v198), v199), xmmword_29D2F1150);
      v217 = vpmaxq_s16(v216, v216);
      v661.val[1] = vpminq_s16(v661.val[1], v661.val[1]);
      v218 = vmaxq_s16(v212, v217);
      v219 = vminq_s16(v213, v661.val[1]);
      v220 = vzip1q_s16(v217, v661.val[1]);
      v221 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v220)), vceqzq_s16(v220));
      v661.val[1] = vpmaxq_s16(v221, v221);
      v611 = vshrq_n_s16(v185, 6uLL);
      v613 = vshrq_n_s16(v184, 6uLL);
      v616 = vshrq_n_s16(v187, 6uLL);
      v222 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v613, v611), v200), v616), xmmword_29D2F1150);
      v223 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v613, v611), v200), v616), xmmword_29D2F1150);
      v224 = vpmaxq_s16(v222, v222);
      v225 = vpminq_s16(v223, v223);
      v661.val[2] = vmaxq_s16(v218, v224);
      v226 = vminq_s16(v219, v225);
      v227 = vzip1q_s16(v224, v225);
      v228 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vmaxq_s16(vmaxq_s16(v209, v661.val[0]), vmaxq_s16(v661.val[1], v229));
      v609 = v661.val[2];
      v231 = vclzq_s16(vsubq_s16(v661.val[2], v226));
      v661.val[2] = vsubq_s16(v203, v231);
      v232 = vcgtq_s16(v230, v661.val[2]);
      v233 = vminq_s16(v661.val[2], v230);
      v661.val[2].i64[0] = 0x3000300030003;
      v661.val[2].i64[1] = 0x3000300030003;
      v234 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v209), v661.val[2]), 0);
      v661.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v233, v661.val[0]), v661.val[2]), 0);
      v661.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v233, v661.val[1]), v661.val[2]), 0);
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v233, v229), v661.val[2]), 0);
      v236 = vsubq_s16(v233, v234);
      v237 = vsubq_s16(v233, v661.val[1]);
      v229.i64[0] = 0x4000400040004;
      v229.i64[1] = 0x4000400040004;
      v238 = vbicq_s8(v229, vceqq_s16(vaddq_s16(v235, v661.val[1]), vnegq_s16(vaddq_s16(v234, v661.val[0]))));
      v234.i64[0] = 0x7000700070007;
      v234.i64[1] = 0x7000700070007;
      v603 = v237;
      v605 = vsubq_s16(v233, v661.val[0]);
      v607 = vsubq_s16(v233, v235);
      v601 = v236;
      v661.val[0] = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v233, v232), vaddq_s16(v238, v238)), v236, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v237, v605), v607), 3uLL));
      v76 = v652;
      v149 = v653;
      v239 = vandq_s8(v652, v661.val[2]);
      v240.i64[0] = 0x2000200020002;
      v240.i64[1] = 0x2000200020002;
      v241 = vandq_s8(vceqq_s16(v239, v240), v203);
      v203.i64[0] = 0x8000800080008;
      v203.i64[1] = 0x8000800080008;
      v661.val[3] = vandq_s8(vaddq_s16(v76, v76), v203);
      v242 = vceqzq_s16(vandq_s8(v652, v203));
      v150 = v656;
      v146 = v657;
      v661.val[3] = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v657, v242), v661.val[3]), v241), v653, v234);
      v148 = v654;
      v151 = v655;
      v243 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v661.val[3], vshlq_n_s16(vaddq_s16(vaddq_s16(v655, v654), v656), 3uLL)), v661.val[0]).i64[0], 0);
      if (vaddvq_s16(v243))
      {
        v244.i64[0] = 0x9000900090009;
        v244.i64[1] = 0x9000900090009;
        v600 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v233), v240), vsubq_s16(vandq_s8(v232, v244), vmvnq_s8(v232))), v238);
        v245.i64[0] = 0xF000F000F000FLL;
        v245.i64[1] = 0xF000F000F000FLL;
        v246.i64[0] = -1;
        v246.i64[1] = -1;
        v247 = vandq_s8(vsubq_s16(vshlq_s16(v246, vsubq_s16(v245, v231)), v226), v232);
        v248 = vbslq_s8(v243, v190, v635);
        v149 = vbslq_s8(v243, v601, v653);
        v148 = vbslq_s8(v243, v605, v654);
        v151 = vbslq_s8(v243, v603, v655);
        v150 = vbslq_s8(v243, v607, v656);
        v249 = vbslq_s8(v243, v247, v660);
        v146 = vbslq_s8(v243, v233, v657);
        v76 = vbslq_s8(v243, v600, v652);
        v650 = vbslq_s8(v243, v616, v650);
        v651 = vbslq_s8(v243, vextq_s8(v619, v619, 8uLL), v651);
        v631 = vbslq_s8(v243, v188, v631);
        v633 = vbslq_s8(v243, v189, v633);
        v635 = v248;
        v637 = vbslq_s8(v243, v191, v637);
        v639 = vbslq_s8(v243, v192, v639);
        v640 = vbslq_s8(v243, v193, v640);
        v641 = vbslq_s8(v243, v194, v641);
        v642 = vbslq_s8(v243, v195, v642);
        v643 = vbslq_s8(v243, v196, v643);
        v644 = vbslq_s8(v243, v197, v644);
        v645 = vbslq_s8(v243, v198, v645);
        v646 = vbslq_s8(v243, v199, v646);
        v647 = vbslq_s8(v243, v613, v647);
        v648 = vbslq_s8(v243, v611, v648);
        v649 = vbslq_s8(v243, v200, v649);
        v658 = vbslq_s8(v243, v226, v658);
        v659 = vbslq_s8(v243, v609, v659);
        v660 = v249;
        v653 = v149;
        v654 = v148;
        v655 = v151;
        v656 = v150;
        v657 = v146;
        v652 = v76;
      }

      v164 = v623;
      v165 = v624;
      v166 = v625;
      v167 = v620;
      v168 = v621;
      v169 = v622;
    }

    v250 = vandq_s8(v660, vceqq_s16(v146, v149));
    v632 = vaddq_s16(v250, v631);
    v634 = vaddq_s16(v633, v250);
    v636 = vaddq_s16(v635, v250);
    v638 = vaddq_s16(v637, v250);
    v251 = vandq_s8(v660, vceqq_s16(v146, v148));
    v639 = vaddq_s16(v639, v251);
    v640 = vaddq_s16(v640, v251);
    v641 = vaddq_s16(v641, v251);
    v642 = vaddq_s16(v642, v251);
    v252 = vandq_s8(v660, vceqq_s16(v146, v151));
    v643 = vaddq_s16(v643, v252);
    v644 = vaddq_s16(v644, v252);
    v645 = vaddq_s16(v645, v252);
    v646 = vaddq_s16(v646, v252);
    v253 = vandq_s8(v660, vceqq_s16(v146, v150));
    v647 = vaddq_s16(v647, v253);
    v648 = vaddq_s16(v648, v253);
    v649 = vaddq_s16(v649, v253);
    v650 = vaddq_s16(v650, v253);
    v253.i64[0] = 0x8000800080008;
    v253.i64[1] = 0x8000800080008;
    v254.i64[0] = 0x3000300030003;
    v254.i64[1] = 0x3000300030003;
    v255.i64[0] = 0x2000200020002;
    v255.i64[1] = 0x2000200020002;
    v256 = vceqq_s16(vandq_s8(v76, v254), v255);
    v255.i64[0] = 0x10001000100010;
    v255.i64[1] = 0x10001000100010;
    v257 = vandq_s8(v256, v255);
    v255.i64[0] = 0x7000700070007;
    v255.i64[1] = 0x7000700070007;
    v258 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v146, vceqzq_s16(vandq_s8(v76, v253))), vandq_s8(vaddq_s16(v76, v76), v253)), v257), v149, v255), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v148), v150), 3uLL));
    v259 = vpaddq_s16(v258, v258);
    v260 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v261 = 8 * (a1 & 7);
    if ((vpaddq_s16(v259, v259).i16[0] + 83) > 0x4FF)
    {
      if (v261)
      {
        v267 = *v260 & ~(-1 << v261);
      }

      else
      {
        v267 = 0;
      }

      v449.i64[0] = 0xA0000000ALL;
      v449.i64[1] = 0xA0000000ALL;
      v450 = vpaddq_s32(v449, v449);
      v451.i64[0] = v450.u32[0];
      v451.i64[1] = v450.u32[1];
      v452 = v451;
      v451.i64[0] = v450.u32[2];
      v451.i64[1] = v450.u32[3];
      v453 = vzip1q_s64(0, v452);
      v454 = vzip1q_s64(0, v451);
      v455 = vpaddq_s64(v452, v451);
      v456 = v455.i64[1];
      v457 = v455.i64[0];
      v458 = vpaddq_s32(vshlq_u32(vmovl_u16((v160.i64[0] & 0x3FF03FF03FF03FFLL)), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16((*&v160 & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL))), xmmword_29D2F1480));
      v451.i64[0] = v458.u32[0];
      v451.i64[1] = v458.u32[1];
      v459 = v451;
      v451.i64[0] = v458.u32[2];
      v451.i64[1] = v458.u32[3];
      v460 = vpaddq_s64(vshlq_u64(v459, v453), vshlq_u64(v451, v454));
      v461 = v457 + v261;
      v462 = (v460.i64[0] << v261) | v267;
      if (v457 + v261 >= 0x40)
      {
        *v260 = v462;
        v462 = v460.i64[0] >> (-8 * (a1 & 7u));
        if (!v261)
        {
          v462 = 0;
        }
      }

      v463.i64[0] = 0xFC00FC00FC00FC00;
      v463.i64[1] = 0xFC00FC00FC00FC00;
      v464 = v462 | (v460.i64[1] << v461);
      if ((v461 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        if ((v461 & 0x3F) != 0)
        {
          v464 = v460.i64[1] >> -(v461 & 0x3F);
        }

        else
        {
          v464 = 0;
        }
      }

      v465 = v461 + v456;
      v466 = vandq_s8(v463, v617);
      v467 = vpaddq_s32(vshlq_u32(vmovl_u16(*v466.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v466), xmmword_29D2F1480));
      v468.i64[0] = v467.u32[0];
      v468.i64[1] = v467.u32[1];
      v469 = v468;
      v468.i64[0] = v467.u32[2];
      v468.i64[1] = v467.u32[3];
      v470 = vpaddq_s64(vshlq_u64(v469, v453), vshlq_u64(v468, v454));
      v471 = (v461 + v456) & 0x3F;
      v472 = (v470.i64[0] << (v461 + v456)) | v464;
      if ((v457 + v471) >= 0x40)
      {
        *(v260 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v472;
        v472 = v470.i64[0] >> -v471;
        if (!v471)
        {
          v472 = 0;
        }
      }

      v473 = v457 + v465;
      v474 = v472 | (v470.i64[1] << v473);
      if ((v473 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v473 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v474;
        v474 = v470.i64[1] >> -(v473 & 0x3F);
        if ((v473 & 0x3F) == 0)
        {
          v474 = 0;
        }
      }

      v475 = v473 + v456;
      v476 = vandq_s8(v463, v618);
      v477 = vpaddq_s32(vshlq_u32(vmovl_u16(*v476.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v476), xmmword_29D2F1480));
      v478.i64[0] = v477.u32[0];
      v478.i64[1] = v477.u32[1];
      v479 = v478;
      v478.i64[0] = v477.u32[2];
      v478.i64[1] = v477.u32[3];
      v480 = vpaddq_s64(vshlq_u64(v479, v453), vshlq_u64(v478, v454));
      v481 = (v480.i64[0] << v475) | v474;
      if (v457 + (v475 & 0x3F) >= 0x40)
      {
        *(v260 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
        v481 = v480.i64[0] >> -(v475 & 0x3F);
        if ((v475 & 0x3F) == 0)
        {
          v481 = 0;
        }
      }

      v482 = v457 + v475;
      v483 = v481 | (v480.i64[1] << v482);
      if ((v482 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v483;
        v483 = v480.i64[1] >> -(v482 & 0x3F);
        if ((v482 & 0x3F) == 0)
        {
          v483 = 0;
        }
      }

      v484 = v482 + v456;
      v485 = vandq_s8(v463, v619);
      v486 = vpaddq_s32(vshlq_u32(vmovl_u16(*v485.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v485), xmmword_29D2F1480));
      v487.i64[0] = v486.u32[0];
      v487.i64[1] = v486.u32[1];
      v488 = v487;
      v487.i64[0] = v486.u32[2];
      v487.i64[1] = v486.u32[3];
      v489 = vpaddq_s64(vshlq_u64(v488, v453), vshlq_u64(v487, v454));
      v490 = (v489.i64[0] << v484) | v483;
      if (v457 + (v484 & 0x3F) >= 0x40)
      {
        *(v260 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v490;
        v490 = v489.i64[0] >> -(v484 & 0x3F);
        if ((v484 & 0x3F) == 0)
        {
          v490 = 0;
        }
      }

      v491 = v457 + v484;
      v492 = v490 | (v489.i64[1] << v491);
      if ((v491 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v491 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
        v492 = v489.i64[1] >> -(v491 & 0x3F);
        if ((v491 & 0x3F) == 0)
        {
          v492 = 0;
        }
      }

      v493 = v491 + v456;
      v494 = vandq_s8(v463, v626);
      v495 = vpaddq_s32(vshlq_u32(vmovl_u16(*v494.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v494), xmmword_29D2F1480));
      v496.i64[0] = v495.u32[0];
      v496.i64[1] = v495.u32[1];
      v497 = v496;
      v496.i64[0] = v495.u32[2];
      v496.i64[1] = v495.u32[3];
      v498 = vpaddq_s64(vshlq_u64(v497, v453), vshlq_u64(v496, v454));
      v499 = (v498.i64[0] << v493) | v492;
      if (v457 + (v493 & 0x3F) >= 0x40)
      {
        *(v260 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v499;
        v499 = v498.i64[0] >> -(v493 & 0x3F);
        if ((v493 & 0x3F) == 0)
        {
          v499 = 0;
        }
      }

      v500 = v457 + v493;
      v501 = v499 | (v498.i64[1] << v500);
      if ((v500 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v500 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v501;
        v501 = v498.i64[1] >> -(v500 & 0x3F);
        if ((v500 & 0x3F) == 0)
        {
          v501 = 0;
        }
      }

      v502 = v500 + v456;
      v503 = vandq_s8(v463, v627);
      v504 = vpaddq_s32(vshlq_u32(vmovl_u16(*v503.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v503), xmmword_29D2F1480));
      v505.i64[0] = v504.u32[0];
      v505.i64[1] = v504.u32[1];
      v506 = v505;
      v505.i64[0] = v504.u32[2];
      v505.i64[1] = v504.u32[3];
      v507 = vpaddq_s64(vshlq_u64(v506, v453), vshlq_u64(v505, v454));
      v508 = (v507.i64[0] << v502) | v501;
      if (v457 + (v502 & 0x3F) >= 0x40)
      {
        *(v260 + ((v502 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v508;
        v508 = v507.i64[0] >> -(v502 & 0x3F);
        if ((v502 & 0x3F) == 0)
        {
          v508 = 0;
        }
      }

      v509 = v457 + v502;
      v510 = v508 | (v507.i64[1] << v509);
      if ((v509 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v509 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
        v510 = v507.i64[1] >> -(v509 & 0x3F);
        if ((v509 & 0x3F) == 0)
        {
          v510 = 0;
        }
      }

      v511 = v509 + v456;
      v512 = vandq_s8(v463, v628);
      v513 = vpaddq_s32(vshlq_u32(vmovl_u16(*v512.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v512), xmmword_29D2F1480));
      v514.i64[0] = v513.u32[0];
      v514.i64[1] = v513.u32[1];
      v515 = v514;
      v514.i64[0] = v513.u32[2];
      v514.i64[1] = v513.u32[3];
      v516 = vpaddq_s64(vshlq_u64(v515, v453), vshlq_u64(v514, v454));
      v517 = (v516.i64[0] << v511) | v510;
      if (v457 + (v511 & 0x3F) >= 0x40)
      {
        *(v260 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v517;
        v517 = v516.i64[0] >> -(v511 & 0x3F);
        if ((v511 & 0x3F) == 0)
        {
          v517 = 0;
        }
      }

      v518 = v457 + v511;
      v519 = v517 | (v516.i64[1] << v518);
      if ((v518 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v518 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v519;
        v519 = v516.i64[1] >> -(v518 & 0x3F);
        if ((v518 & 0x3F) == 0)
        {
          v519 = 0;
        }
      }

      v520 = v518 + v456;
      v521 = vandq_s8(v463, v629);
      v522 = vpaddq_s32(vshlq_u32(vmovl_u16(*v521.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v521), xmmword_29D2F1480));
      v523.i64[0] = v522.u32[0];
      v523.i64[1] = v522.u32[1];
      v524 = v523;
      v523.i64[0] = v522.u32[2];
      v523.i64[1] = v522.u32[3];
      v525 = vpaddq_s64(vshlq_u64(v524, v453), vshlq_u64(v523, v454));
      v526 = (v525.i64[0] << v520) | v519;
      if (v457 + (v520 & 0x3F) >= 0x40)
      {
        *(v260 + ((v520 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v526;
        v526 = v525.i64[0] >> -(v520 & 0x3F);
        if ((v520 & 0x3F) == 0)
        {
          v526 = 0;
        }
      }

      v527 = v457 + v520;
      v528 = v526 | (v525.i64[1] << v527);
      if ((v527 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v527 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v528;
        v528 = v525.i64[1] >> -(v527 & 0x3F);
        if ((v527 & 0x3F) == 0)
        {
          v528 = 0;
        }
      }

      v529 = v527 + v456;
      v530 = vandq_s8(v463, v167);
      v531 = vpaddq_s32(vshlq_u32(vmovl_u16(*v530.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v530), xmmword_29D2F1480));
      v532.i64[0] = v531.u32[0];
      v532.i64[1] = v531.u32[1];
      v533 = v532;
      v532.i64[0] = v531.u32[2];
      v532.i64[1] = v531.u32[3];
      v534 = vpaddq_s64(vshlq_u64(v533, v453), vshlq_u64(v532, v454));
      v535 = (v534.i64[0] << v529) | v528;
      if (v457 + (v529 & 0x3F) >= 0x40)
      {
        *(v260 + ((v529 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v535;
        v535 = v534.i64[0] >> -(v529 & 0x3F);
        if ((v529 & 0x3F) == 0)
        {
          v535 = 0;
        }
      }

      v536 = v457 + v529;
      v537 = v535 | (v534.i64[1] << v536);
      if ((v536 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v536 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v537;
        v537 = v534.i64[1] >> -(v536 & 0x3F);
        if ((v536 & 0x3F) == 0)
        {
          v537 = 0;
        }
      }

      v538 = v536 + v456;
      v539 = vandq_s8(v463, v168);
      v540 = vpaddq_s32(vshlq_u32(vmovl_u16(*v539.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v539), xmmword_29D2F1480));
      v541.i64[0] = v540.u32[0];
      v541.i64[1] = v540.u32[1];
      v542 = v541;
      v541.i64[0] = v540.u32[2];
      v541.i64[1] = v540.u32[3];
      v543 = vpaddq_s64(vshlq_u64(v542, v453), vshlq_u64(v541, v454));
      v544 = (v543.i64[0] << v538) | v537;
      if (v457 + (v538 & 0x3F) >= 0x40)
      {
        *(v260 + ((v538 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v544;
        v544 = v543.i64[0] >> -(v538 & 0x3F);
        if ((v538 & 0x3F) == 0)
        {
          v544 = 0;
        }
      }

      v545 = v457 + v538;
      v546 = v544 | (v543.i64[1] << v545);
      if ((v545 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v545 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v546;
        v546 = v543.i64[1] >> -(v545 & 0x3F);
        if ((v545 & 0x3F) == 0)
        {
          v546 = 0;
        }
      }

      v547 = v545 + v456;
      v548 = vandq_s8(v463, v169);
      v549 = vpaddq_s32(vshlq_u32(vmovl_u16(*v548.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v548), xmmword_29D2F1480));
      v550.i64[0] = v549.u32[0];
      v550.i64[1] = v549.u32[1];
      v551 = v550;
      v550.i64[0] = v549.u32[2];
      v550.i64[1] = v549.u32[3];
      v552 = vpaddq_s64(vshlq_u64(v551, v453), vshlq_u64(v550, v454));
      v553 = (v552.i64[0] << v547) | v546;
      if (v457 + (v547 & 0x3F) >= 0x40)
      {
        *(v260 + ((v547 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v553;
        v553 = v552.i64[0] >> -(v547 & 0x3F);
        if ((v547 & 0x3F) == 0)
        {
          v553 = 0;
        }
      }

      v554 = v457 + v547;
      v555 = v553 | (v552.i64[1] << v554);
      if ((v554 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v554 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v555;
        v555 = v552.i64[1] >> -(v554 & 0x3F);
        if ((v554 & 0x3F) == 0)
        {
          v555 = 0;
        }
      }

      v556 = v554 + v456;
      v557 = vandq_s8(v463, v630);
      v558 = vpaddq_s32(vshlq_u32(vmovl_u16(*v557.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v557), xmmword_29D2F1480));
      v559.i64[0] = v558.u32[0];
      v559.i64[1] = v558.u32[1];
      v560 = v559;
      v559.i64[0] = v558.u32[2];
      v559.i64[1] = v558.u32[3];
      v561 = vpaddq_s64(vshlq_u64(v560, v453), vshlq_u64(v559, v454));
      v562 = (v561.i64[0] << v556) | v555;
      if (v457 + (v556 & 0x3F) >= 0x40)
      {
        *(v260 + ((v556 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v562;
        v562 = v561.i64[0] >> -(v556 & 0x3F);
        if ((v556 & 0x3F) == 0)
        {
          v562 = 0;
        }
      }

      v563 = v457 + v556;
      v564 = v562 | (v561.i64[1] << v563);
      if ((v563 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v563 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v564;
        v564 = v561.i64[1] >> -(v563 & 0x3F);
        if ((v563 & 0x3F) == 0)
        {
          v564 = 0;
        }
      }

      v565 = v563 + v456;
      v566 = vandq_s8(v463, v164);
      v567 = vpaddq_s32(vshlq_u32(vmovl_u16(*v566.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v566), xmmword_29D2F1480));
      v568.i64[0] = v567.u32[0];
      v568.i64[1] = v567.u32[1];
      v569 = v568;
      v568.i64[0] = v567.u32[2];
      v568.i64[1] = v567.u32[3];
      v570 = vpaddq_s64(vshlq_u64(v569, v453), vshlq_u64(v568, v454));
      v571 = (v570.i64[0] << v565) | v564;
      if (v457 + (v565 & 0x3F) >= 0x40)
      {
        *(v260 + ((v565 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v571;
        v571 = v570.i64[0] >> -(v565 & 0x3F);
        if ((v565 & 0x3F) == 0)
        {
          v571 = 0;
        }
      }

      v572 = v457 + v565;
      v573 = v571 | (v570.i64[1] << v572);
      if ((v572 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v572 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v573;
        v573 = v570.i64[1] >> -(v572 & 0x3F);
        if ((v572 & 0x3F) == 0)
        {
          v573 = 0;
        }
      }

      v574 = v572 + v456;
      v575 = vandq_s8(v463, v165);
      v576 = vpaddq_s32(vshlq_u32(vmovl_u16(*v575.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v575), xmmword_29D2F1480));
      v577.i64[0] = v576.u32[0];
      v577.i64[1] = v576.u32[1];
      v578 = v577;
      v577.i64[0] = v576.u32[2];
      v577.i64[1] = v576.u32[3];
      v579 = vpaddq_s64(vshlq_u64(v578, v453), vshlq_u64(v577, v454));
      v580 = (v579.i64[0] << v574) | v573;
      if (v457 + (v574 & 0x3F) >= 0x40)
      {
        *(v260 + ((v574 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v580;
        v580 = v579.i64[0] >> -(v574 & 0x3F);
        if ((v574 & 0x3F) == 0)
        {
          v580 = 0;
        }
      }

      v581 = v457 + v574;
      v582 = v580 | (v579.i64[1] << v581);
      if ((v581 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v581 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v582;
        v582 = v579.i64[1] >> -(v581 & 0x3F);
        if ((v581 & 0x3F) == 0)
        {
          v582 = 0;
        }
      }

      v583 = v581 + v456;
      v584 = vandq_s8(v463, v166);
      v585 = vpaddq_s32(vshlq_u32(vmovl_u16(*v584.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v584), xmmword_29D2F1480));
      v586.i64[0] = v585.u32[0];
      v586.i64[1] = v585.u32[1];
      v587 = v586;
      v586.i64[0] = v585.u32[2];
      v586.i64[1] = v585.u32[3];
      v588 = vpaddq_s64(vshlq_u64(v587, v453), vshlq_u64(v586, v454));
      v589 = (v588.i64[0] << v583) | v582;
      if (v457 + (v583 & 0x3F) >= 0x40)
      {
        *(v260 + ((v583 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v589;
        v589 = v588.i64[0] >> -(v583 & 0x3F);
        if ((v583 & 0x3F) == 0)
        {
          v589 = 0;
        }
      }

      v590 = v457 + v583;
      v591 = v589 | (v588.i64[1] << v590);
      if ((v590 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v590 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v591;
        v591 = v588.i64[1] >> -(v590 & 0x3F);
        if ((v590 & 0x3F) == 0)
        {
          v591 = 0;
        }
      }

      v592 = v590 + v456;
      v593 = vandq_s8(v463, v614);
      v594 = vpaddq_s32(vshlq_u32(vmovl_u16(*v593.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v593), xmmword_29D2F1480));
      v595.i64[0] = v594.u32[0];
      v595.i64[1] = v594.u32[1];
      v596 = v595;
      v595.i64[0] = v594.u32[2];
      v595.i64[1] = v594.u32[3];
      v597 = vpaddq_s64(vshlq_u64(v596, v453), vshlq_u64(v595, v454));
      v598 = (v597.i64[0] << v592) | v591;
      if (v457 + (v592 & 0x3F) >= 0x40)
      {
        *(v260 + ((v592 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v598;
        v598 = v597.i64[0] >> -(v592 & 0x3F);
        if ((v592 & 0x3F) == 0)
        {
          v598 = 0;
        }
      }

      v599 = v457 + v592;
      if ((v599 & 0x3F) + v456 >= 0x40)
      {
        *(v260 + ((v599 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v598 | (v597.i64[1] << (v599 & 0x3F));
      }

      v265 = -97;
      result = 160;
    }

    else
    {
      if (v261)
      {
        v262 = *v260 & ~(-1 << v261);
      }

      else
      {
        v262 = 0;
      }

      *a2 = 0;
      v268 = v651.i64[0];
      if (v146.i16[0])
      {
        v269 = ((v146.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v269 = 0;
      }

      if (v146.i16[1])
      {
        v270 = ((v146.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v270 = 0;
      }

      if (v146.i16[2])
      {
        v271 = (v146.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v271 = 0;
      }

      if (v146.i16[3])
      {
        v272 = ((v146.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v272 = 0;
      }

      v273 = (v76.i8[0] & 0x1F | (32 * (v76.i8[2] & 0x1F)) & 0x83FF | ((v76.i8[4] & 0x1F) << 10) | ((v76.i8[6] & 0x1F) << 15) | v269 | v270 | v271) + v272;
      v274 = (v273 << v261) | v262;
      if (v261 >= 0x1C)
      {
        *v260 = v274;
        v274 = v273 >> (-8 * (a1 & 7u));
      }

      v275 = v268 & 0x3FF | ((WORD1(v268) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v268) & 0x3FF) << 20) | ((HIWORD(v268) & 0x3FF) << 30);
      v276 = (v261 + 36) & 0x3C;
      v277 = v274 | (v275 << v276);
      if (v276 >= 0x18)
      {
        *(v260 + (((v261 + 36) >> 3) & 8)) = v277;
        v277 = v275 >> -v276;
      }

      v278 = v261 + 76;
      v279 = vsubq_s16(v657, v653);
      v280 = vsubq_s16(v657, v654);
      v281 = vsubq_s16(v657, v655);
      v282 = vsubq_s16(v657, v656);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u16(v280);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u16(v282);
      v283 = vtrn1q_s8(v279, v280);
      v284 = vtrn2q_s8(v279, v280);
      v285 = vtrn1q_s8(v281, v282);
      v286 = vtrn2q_s8(v281, v282);
      v287 = vzip1q_s16(v284, v286);
      v288 = vtrn2q_s16(v284, v286);
      v284.i64[0] = vzip1q_s32(vzip1q_s16(v283, v285), v287).u64[0];
      v288.i64[0] = vzip1q_s32(vtrn2q_s16(v283, v285), v288).u64[0];
      v281.i64[0] = 0x202020202020202;
      v281.i64[1] = 0x202020202020202;
      v289 = vandq_s8(vmovl_s16(vtst_s16(*v652.i8, 0x4000400040004)), v281);
      v281.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v290 = vshlq_u8(v283, vorrq_s8(v289, v281));
      v291 = vmovl_u8(vand_s8(*v290.i8, *v284.i8));
      v292 = vmovl_u8(vand_s8(*&vextq_s8(v290, v290, 8uLL), *v288.i8));
      v293 = vmovl_u8(*v289.i8);
      v294 = vmovl_high_u8(v289);
      v295 = vpaddq_s16(vshlq_u16(v291, vtrn1q_s16(0, v293)), vshlq_u16(v292, vtrn1q_s16(0, v294)));
      v296 = vpaddq_s16(v293, v294);
      v297 = vmovl_u16(*v296.i8);
      v298 = vmovl_high_u16(v296);
      v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v295.i8), vtrn1q_s32(0, v297)), vshlq_u32(vmovl_high_u16(v295), vtrn1q_s32(0, v298)));
      v300 = vpaddq_s32(v297, v298);
      v301.i64[0] = v299.u32[0];
      v301.i64[1] = v299.u32[1];
      v302 = v301;
      v301.i64[0] = v299.u32[2];
      v301.i64[1] = v299.u32[3];
      v303 = v301;
      v301.i64[0] = v300.u32[0];
      v301.i64[1] = v300.u32[1];
      v304 = v301;
      v301.i64[0] = v300.u32[2];
      v301.i64[1] = v300.u32[3];
      v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
      v306 = vpaddq_s64(v304, v301);
      v307 = (v261 + 76) & 0x3C;
      v308 = (v305.i64[0] << v307) | v277;
      if ((v306.i64[0] + v307) >= 0x40)
      {
        *(v260 + ((v278 >> 3) & 0x18)) = v308;
        v308 = v305.i64[0] >> -v307;
      }

      v309 = v306.i64[0] + v278;
      v310 = v308 | (v305.i64[1] << v309);
      if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
      {
        *(v260 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v305.i64[1] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309 + v306.i64[1];
      v312.i64[0] = 0x8000800080008;
      v312.i64[1] = 0x8000800080008;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vextq_s8(vtstq_s16(v652, v312), 0, 8uLL), v657);
      v315.i64[0] = 0xF000F000F000FLL;
      v315.i64[1] = 0xF000F000F000FLL;
      v316 = vandq_s8(vshlq_u16(v313, vaddq_s16(v314, v315)), v660);
      v317 = vmovl_u16(*v314.i8);
      v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vtrn1q_s32(0, v317)), vmovl_high_u16(v316));
      v319 = vpaddq_s32(v317, vmovl_high_u16(v314));
      v320.i64[0] = v318.u32[0];
      v320.i64[1] = v318.u32[1];
      v321 = v320;
      v320.i64[0] = v318.u32[2];
      v320.i64[1] = v318.u32[3];
      v322 = v320;
      v320.i64[0] = v319.u32[0];
      v320.i64[1] = v319.u32[1];
      v323 = v320;
      v320.i64[0] = v319.u32[2];
      v320.i64[1] = v319.u32[3];
      v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
      v325 = vpaddq_s64(v323, v320);
      v326 = (v324.i64[0] << v311) | v310;
      if (v325.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v260 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v324.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = v325.i64[0] + v311;
      v328 = v326 | (v324.i64[1] << v327);
      if ((v327 & 0x3F) + v325.i64[1] >= 0x40)
      {
        *(v260 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v324.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = v327 + v325.i64[1];
      v330 = vextq_s8(0, v653, 8uLL);
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v330, v331)), v632);
      v334 = vmovl_u16(*v330.i8);
      v335 = vmovl_high_u16(v330);
      v336 = vpaddq_s32(vmovl_u16(*v333.i8), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
      v337 = vpaddq_s32(v334, v335);
      v338.i64[0] = v336.u32[0];
      v338.i64[1] = v336.u32[1];
      v339 = v338;
      v338.i64[0] = v336.u32[2];
      v338.i64[1] = v336.u32[3];
      v340 = v338;
      v338.i64[0] = v337.u32[0];
      v338.i64[1] = v337.u32[1];
      v341 = v338;
      v338.i64[0] = v337.u32[2];
      v338.i64[1] = v337.u32[3];
      v342 = vpaddq_s64(vshlq_u64(v339, vzip1q_s64(0, v341)), vshlq_u64(v340, vzip1q_s64(0, v338)));
      v343 = vpaddq_s64(v341, v338);
      v344 = (v342.i64[0] << v329) | v328;
      if (v343.i64[0] + (v329 & 0x3F) >= 0x40)
      {
        *(v260 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v329 & 0x3F);
        if ((v329 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343.i64[0] + v329;
      v346 = v344 | (v342.i64[1] << v345);
      if ((v345 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v260 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v342.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v343.i64[1];
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v653, v348)), v634);
      v351 = vmovl_u16(*v653.i8);
      v352 = vmovl_high_u16(v653);
      v353 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v347) | v346;
      if (v360.i64[0] + (v347 & 0x3F) >= 0x40)
      {
        *(v260 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v347;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v260 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366.i64[0] = -1;
      v366.i64[1] = -1;
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v653, v365)), v636);
      v368 = vmovl_u16(*v653.i8);
      v369 = vmovl_high_u16(v653);
      v370 = vpaddq_s32(vshlq_u32(vmovl_u16(*v367.i8), vtrn1q_s32(0, v368)), vshlq_u32(vmovl_high_u16(v367), vtrn1q_s32(0, v369)));
      v371 = vpaddq_s32(v368, v369);
      v372.i64[0] = v370.u32[0];
      v372.i64[1] = v370.u32[1];
      v373 = v372;
      v372.i64[0] = v370.u32[2];
      v372.i64[1] = v370.u32[3];
      v374 = v372;
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v375 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v376 = vpaddq_s64(vshlq_u64(v373, vzip1q_s64(0, v375)), vshlq_u64(v374, vzip1q_s64(0, v372)));
      v377 = vpaddq_s64(v375, v372);
      v378 = (v376.i64[0] << v364) | v363;
      if (v377.i64[0] + (v364 & 0x3F) >= 0x40)
      {
        *(v260 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v376.i64[0] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377.i64[0] + v364;
      v380 = v378 | (v376.i64[1] << v379);
      if ((v379 & 0x3F) + v377.i64[1] >= 0x40)
      {
        *(v260 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v376.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379 + v377.i64[1];
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v653, v382)), v638);
      v385 = vmovl_u16(*v653.i8);
      v386 = vmovl_high_u16(v653);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v386)));
      v388 = vpaddq_s32(v385, v386);
      v389.i64[0] = v387.u32[0];
      v389.i64[1] = v387.u32[1];
      v390 = v389;
      v389.i64[0] = v387.u32[2];
      v389.i64[1] = v387.u32[3];
      v391 = v389;
      v389.i64[0] = v388.u32[0];
      v389.i64[1] = v388.u32[1];
      v392 = v389;
      v389.i64[0] = v388.u32[2];
      v389.i64[1] = v388.u32[3];
      v393 = vpaddq_s64(vshlq_u64(v390, vzip1q_s64(0, v392)), vshlq_u64(v391, vzip1q_s64(0, v389)));
      v394 = vpaddq_s64(v392, v389);
      v395 = (v393.i64[0] << v381) | v380;
      if (v394.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v260 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[1];
      v397 = v394.i64[0] + v381;
      v398 = (v394.i64[0] + v381) & 0x3F;
      v399 = v395 | (v393.i64[1] << v397);
      if ((v398 + v394.i64[1]) >= 0x40)
      {
        *(v260 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        v399 = v393.i64[1] >> -v398;
        if (!v398)
        {
          v399 = 0;
        }
      }

      v400 = 0;
      v401.i64[0] = 0xF000F000F000FLL;
      v401.i64[1] = 0xF000F000F000FLL;
      v402.i64[0] = -1;
      v402.i64[1] = -1;
      v403 = v397 + v396;
      do
      {
        v404 = vandq_s8(vshlq_u16(v402, vaddq_s16(v654, v401)), *(&v639 + v400));
        v405 = vmovl_u16(*v654.i8);
        v406 = vmovl_high_u16(v654);
        v407 = vpaddq_s32(vshlq_u32(vmovl_u16(*v404.i8), vtrn1q_s32(0, v405)), vshlq_u32(vmovl_high_u16(v404), vtrn1q_s32(0, v406)));
        v408 = vpaddq_s32(v405, v406);
        v409.i64[0] = v407.u32[0];
        v409.i64[1] = v407.u32[1];
        v410 = v409;
        v409.i64[0] = v407.u32[2];
        v409.i64[1] = v407.u32[3];
        v411 = v409;
        v409.i64[0] = v408.u32[0];
        v409.i64[1] = v408.u32[1];
        v412 = v409;
        v409.i64[0] = v408.u32[2];
        v409.i64[1] = v408.u32[3];
        v413 = vpaddq_s64(vshlq_u64(v410, vzip1q_s64(0, v412)), vshlq_u64(v411, vzip1q_s64(0, v409)));
        v414 = vpaddq_s64(v412, v409);
        v415 = (v413.i64[0] << v403) | v399;
        if (v414.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v260 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
          v415 = v413.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v415 = 0;
          }
        }

        v416 = v414.i64[0] + v403;
        v399 = v415 | (v413.i64[1] << v416);
        if ((v416 & 0x3F) + v414.i64[1] >= 0x40)
        {
          *(v260 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v413.i64[1] >> -(v416 & 0x3F);
          if ((v416 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v416 + v414.i64[1];
        v400 += 16;
      }

      while (v400 != 64);
      v417 = 0;
      v418.i64[0] = 0xF000F000F000FLL;
      v418.i64[1] = 0xF000F000F000FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      do
      {
        v420 = vandq_s8(vshlq_u16(v419, vaddq_s16(v655, v418)), *(&v643 + v417));
        v421 = vmovl_u16(*v655.i8);
        v422 = vmovl_high_u16(v655);
        v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v420.i8), vtrn1q_s32(0, v421)), vshlq_u32(vmovl_high_u16(v420), vtrn1q_s32(0, v422)));
        v424 = vpaddq_s32(v421, v422);
        v425.i64[0] = v423.u32[0];
        v425.i64[1] = v423.u32[1];
        v426 = v425;
        v425.i64[0] = v423.u32[2];
        v425.i64[1] = v423.u32[3];
        v427 = v425;
        v425.i64[0] = v424.u32[0];
        v425.i64[1] = v424.u32[1];
        v428 = v425;
        v425.i64[0] = v424.u32[2];
        v425.i64[1] = v424.u32[3];
        v429 = vpaddq_s64(vshlq_u64(v426, vzip1q_s64(0, v428)), vshlq_u64(v427, vzip1q_s64(0, v425)));
        v430 = vpaddq_s64(v428, v425);
        v431 = (v429.i64[0] << v403) | v399;
        if (v430.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v260 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
          v431 = v429.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v431 = 0;
          }
        }

        v432 = v430.i64[0] + v403;
        v399 = v431 | (v429.i64[1] << v432);
        if ((v432 & 0x3F) + v430.i64[1] >= 0x40)
        {
          *(v260 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v429.i64[1] >> -(v432 & 0x3F);
          if ((v432 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v432 + v430.i64[1];
        v417 += 16;
      }

      while (v417 != 64);
      v433 = 0;
      v434.i64[0] = 0xF000F000F000FLL;
      v434.i64[1] = 0xF000F000F000FLL;
      v435.i64[0] = -1;
      v435.i64[1] = -1;
      do
      {
        v436 = vandq_s8(vshlq_u16(v435, vaddq_s16(v656, v434)), *(&v647 + v433));
        v437 = vmovl_u16(*v656.i8);
        v438 = vmovl_high_u16(v656);
        v439 = vpaddq_s32(vshlq_u32(vmovl_u16(*v436.i8), vtrn1q_s32(0, v437)), vshlq_u32(vmovl_high_u16(v436), vtrn1q_s32(0, v438)));
        v440 = vpaddq_s32(v437, v438);
        v441.i64[0] = v439.u32[0];
        v441.i64[1] = v439.u32[1];
        v442 = v441;
        v441.i64[0] = v439.u32[2];
        v441.i64[1] = v439.u32[3];
        v443 = v441;
        v441.i64[0] = v440.u32[0];
        v441.i64[1] = v440.u32[1];
        v444 = v441;
        v441.i64[0] = v440.u32[2];
        v441.i64[1] = v440.u32[3];
        v445 = vpaddq_s64(vshlq_u64(v442, vzip1q_s64(0, v444)), vshlq_u64(v443, vzip1q_s64(0, v441)));
        v446 = vpaddq_s64(v444, v441);
        v447 = (v445.i64[0] << v403) | v399;
        if (v446.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v260 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
          v447 = v445.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v447 = 0;
          }
        }

        v448 = v446.i64[0] + v403;
        v399 = v447 | (v445.i64[1] << v448);
        if ((v448 & 0x3F) + v446.i64[1] >= 0x40)
        {
          *(v260 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v445.i64[1] >> -(v448 & 0x3F);
          if ((v448 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v448 + v446.i64[1];
        v433 += 16;
      }

      while (v433 != 64);
      if ((v403 & 0x3F) != 0)
      {
        *(v260 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
      }

      result = (v403 - v261 + 7) >> 3;
      v265 = *a2 | (result - 1);
    }
  }

  else
  {
    v263 = vld1q_dup_f64(a3->i64);
    v264 = vorrq_s8(vandq_s8(vshlq_u64(v263, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v263, xmmword_29D2F1450), xmmword_29D2F1460));
    *v264.i8 = vorr_s8(*v264.i8, *&vextq_s8(v264, v264, 8uLL));
    *a1 = v264.i32[0];
    *(a1 + 4) = v264.i8[4];
    v265 = 4;
    result = 5;
  }

  *a2 = v265;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
    v9 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v15 = 4 * a2;
  v16 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v16 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v6 >= 5)
  {
    if (v16 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v12 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
    v9 += result;
    v21 = v6 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v6 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v7 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v21 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
  if (v7 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v26 = v6 - 12;
    if (!v7)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v6 < 9)
  {
    goto LABEL_57;
  }

  if (v21 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v21;
  }

  if (v12 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v7 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 64), a2, v25, v24);
  v9 += result;
  v26 = v6 - 12;
LABEL_58:
  if (v6 >= 0xD)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }

    if (v7 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v6 < 0xD)
  {
    goto LABEL_78;
  }

  if (v26 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v26;
  }

  if (v12 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 64), a2, v30, v29);
}