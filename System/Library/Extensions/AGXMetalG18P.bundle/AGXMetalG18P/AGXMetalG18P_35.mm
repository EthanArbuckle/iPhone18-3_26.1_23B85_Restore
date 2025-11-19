unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 + 8) >> 6;
    v6 = (v4 + 8) & 0x38;
    *a2 = 4 * (*v3 >> v4);
    v7 = v6 - v4;
    if (v6 - v4 + ((v4 + 8) & 0x40uLL) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v22 = v3[v5];
      v5 += (v6 + 8) >> 6;
      v23 = v22 >> v6;
      v6 = (v6 + 8) & 0x38;
      v8 = 4 * v23;
      v7 = v6 - v4;
    }

    else
    {
      v8 = 0;
    }

    a2[1] = v8;
    if (v7 + (v5 << 6) - 57 > 0xFFFFFFFFFFFFFFBELL)
    {
      v24 = (v6 + 8) & 0x38;
      v25 = v5 + ((v6 + 8) >> 6);
      a2[2] = 4 * (v3[v5] >> v6);
      if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
      {
        v28 = 0;
        v29 = 0;
        v30 = 8;
        do
        {
          v31 = 64 - v24;
          if (64 - v24 >= v30)
          {
            v31 = v30;
          }

          result = ((v3[v25] >> v24) & ~(-1 << v31)) << v29;
          v28 |= result;
          v29 += v31;
          v32 = v31 + v24;
          v25 += v32 >> 6;
          v24 = v32 & 0x3F;
          v30 -= v31;
        }

        while (v30);
        a2[3] = 4 * v28;
        if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
        {
          v33 = 0;
          v34 = 0;
          v35 = 8;
          do
          {
            v36 = 64 - v24;
            if (64 - v24 >= v35)
            {
              v36 = v35;
            }

            result = ((v3[v25] >> v24) & ~(-1 << v36)) << v34;
            v33 |= result;
            v34 += v36;
            v37 = v36 + v24;
            v25 += v37 >> 6;
            v24 = v37 & 0x3F;
            v35 -= v36;
          }

          while (v35);
          a2[4] = 4 * v33;
          if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
          {
            v38 = 0;
            v39 = 0;
            v40 = 8;
            do
            {
              v41 = 64 - v24;
              if (64 - v24 >= v40)
              {
                v41 = v40;
              }

              result = ((v3[v25] >> v24) & ~(-1 << v41)) << v39;
              v38 |= result;
              v39 += v41;
              v42 = v41 + v24;
              v25 += v42 >> 6;
              v24 = v42 & 0x3F;
              v40 -= v41;
            }

            while (v40);
            a2[5] = 4 * v38;
            if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
            {
              v43 = 0;
              v44 = 0;
              v45 = 8;
              do
              {
                v46 = 64 - v24;
                if (64 - v24 >= v45)
                {
                  v46 = v45;
                }

                result = ((v3[v25] >> v24) & ~(-1 << v46)) << v44;
                v43 |= result;
                v44 += v46;
                v47 = v46 + v24;
                v25 += v47 >> 6;
                v24 = v47 & 0x3F;
                v45 -= v46;
              }

              while (v45);
              v48 = v24 - v4 + (v25 << 6) - 57;
              a2[6] = 4 * v43;
              v27 = a2 + 7;
              if (v48 >= 0xFFFFFFFFFFFFFFBFLL)
              {
                v49 = 0;
                v50 = 0;
                v51 = 8;
                do
                {
                  v52 = 64 - v24;
                  if (64 - v24 >= v51)
                  {
                    v52 = v51;
                  }

                  result = ((v3[v25] >> v24) & ~(-1 << v52)) << v50;
                  v49 |= result;
                  v50 += v52;
                  v53 = v52 + v24;
                  v25 += v53 >> 6;
                  v24 = v53 & 0x3F;
                  v51 -= v52;
                }

                while (v51);
                v26 = 4 * v49;
              }

              else
              {
                v26 = 0;
              }

              goto LABEL_29;
            }

LABEL_28:
            v26 = 0;
            a2[6] = 0;
            v27 = a2 + 7;
LABEL_29:
            *v27 = v26;
            return result;
          }

LABEL_27:
          a2[5] = 0;
          goto LABEL_28;
        }

LABEL_26:
        a2[4] = 0;
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  v13 = 8 * (result & 7);
  do
  {
    if ((v13 - v4 + (v10 << 6) - 57) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v14 = 0;
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = 64 - v13;
        if (64 - v13 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((v3[v10] >> v13) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v13;
        v10 += v18 >> 6;
        v13 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v19 = 4 * v14;
    if (v19 != 512 || v11 != 1)
    {
      v21 = v19 - (v14 & 1) + 2;
      if (v19 == 1020)
      {
        v21 = 1023;
      }

      if (v19)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    result = v19 ^ v12;
    a2[v9++] = result;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v166 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x3E)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 2;
  do
  {
    v13 = 64 - v6;
    if (64 - v6 >= v12)
    {
      v13 = v12;
    }

    v10 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v13)) << v11;
    v11 += v13;
    v14 = v13 + v6;
    v7 += v14 >> 6;
    v6 = v14 & 0x3F;
    v12 -= v13;
  }

  while (v12);
  v15 = v10 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v9 = 0;
      v8 = 1023;
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
    v9 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v8 = 0;
LABEL_18:
  v16 = v9;
  v17 = &kDQuadParamTable[10 * v9];
  v18 = v17[164] + 3;
  v19 = v17[165];
  v20 = v19 + 3;
  if (v18 >= 0xA)
  {
    v21 = 10;
  }

  else
  {
    v21 = v18;
  }

  if (v19)
  {
    LODWORD(v22) = 10;
  }

  else
  {
    LODWORD(v22) = 0;
  }

  if (v22 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v22;
  }

  v23 = 10 - v21;
  if (v9)
  {
    if (v18)
    {
      if ((v21 - v4 + v6 + (v7 << 6)) <= 0x40)
      {
        v24 = 0;
        v93 = 0;
        v94 = v21;
        do
        {
          v95 = 64 - v6;
          if (64 - v6 >= v94)
          {
            v95 = v94;
          }

          v24 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v95)) << v93;
          v93 += v95;
          v96 = v95 + v6;
          v7 += v96 >> 6;
          v6 = v96 & 0x3F;
          v94 -= v95;
        }

        while (v94);
      }

      else
      {
        v24 = 0;
      }

      v5 += v21;
      v8 = v24 << v23;
      if (!v22)
      {
        goto LABEL_87;
      }

      goto LABEL_33;
    }

    v8 = 0;
  }

  if (!v22)
  {
LABEL_87:
    v92 = 0;
    v25 = 0;
    v37 = 0;
    v162 = 0;
    v163 = 0;
    v165 = 0;
    v164 = 0;
    goto LABEL_88;
  }

LABEL_33:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x40)
  {
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 3;
    do
    {
      v28 = 64 - v6;
      if (64 - v6 >= v27)
      {
        v28 = v27;
      }

      v25 = v25 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v28)) << v26);
      v26 += v28;
      v29 = v28 + v6;
      v7 += v29 >> 6;
      v6 = v29 & 0x3F;
      v27 -= v28;
    }

    while (v27);
  }

  else
  {
    v25 = 0;
  }

  v30 = 61 - v5;
  v31 = (37 * v30) >> 8;
  v32 = v22 - v4;
  v33 = (v6 | (v7 << 6)) + -7 * v31 + v30;
  v34 = v33 & 0x3F;
  v35 = v32 + v34 + (v33 & 0xFFFFFFFFFFFFFFC0);
  v162 = 0;
  v163 = 0;
  v165 = 0;
  v164 = 0;
  v36 = v33 >> 6;
  if (v35 <= 0x40)
  {
    v37 = 0;
    v38 = 0;
    v39 = v22;
    do
    {
      v40 = 64 - v34;
      if (64 - v34 >= v39)
      {
        v40 = v39;
      }

      v37 |= ((*(v3 + 8 * v36) >> v34) & ~(-1 << v40)) << v38;
      v38 += v40;
      v41 = v40 + v34;
      v36 += v41 >> 6;
      v34 = v41 & 0x3F;
      v39 -= v40;
    }

    while (v39);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v162) = v37;
  v42 = v34 | (v36 << 6);
  v43 = v31 - v22;
  v44 = v42 + v43;
  v45 = (v42 + v43) & 0x3F;
  v46 = (v42 + v43) >> 6;
  if (v32 + v45 + (v44 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v47 = 0;
    v48 = 0;
    v49 = v22;
    do
    {
      v50 = 64 - v45;
      if (64 - v45 >= v49)
      {
        v50 = v49;
      }

      v47 |= ((*(v3 + 8 * v46) >> v45) & ~(-1 << v50)) << v48;
      v48 += v50;
      v51 = v50 + v45;
      v46 += v51 >> 6;
      v45 = v51 & 0x3F;
      v49 -= v50;
    }

    while (v49);
  }

  else
  {
    v47 = 0;
  }

  HIDWORD(v162) = v47;
  v52 = (v45 | (v46 << 6)) + v43;
  v53 = v52 & 0x3F;
  v54 = v52 >> 6;
  if (v32 + v53 + (v52 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v55 = 0;
    v56 = 0;
    v57 = v22;
    do
    {
      v58 = 64 - v53;
      if (64 - v53 >= v57)
      {
        v58 = v57;
      }

      v55 |= ((*(v3 + 8 * v54) >> v53) & ~(-1 << v58)) << v56;
      v56 += v58;
      v59 = v58 + v53;
      v54 += v59 >> 6;
      v53 = v59 & 0x3F;
      v57 -= v58;
    }

    while (v57);
  }

  else
  {
    v55 = 0;
  }

  LODWORD(v163) = v55;
  v60 = (v53 | (v54 << 6)) + v43;
  v61 = v60 & 0x3F;
  v62 = v60 >> 6;
  if (v32 + v61 + (v60 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v63 = 0;
    v64 = 0;
    v65 = v22;
    do
    {
      v66 = 64 - v61;
      if (64 - v61 >= v65)
      {
        v66 = v65;
      }

      v63 |= ((*(v3 + 8 * v62) >> v61) & ~(-1 << v66)) << v64;
      v64 += v66;
      v67 = v66 + v61;
      v62 += v67 >> 6;
      v61 = v67 & 0x3F;
      v65 -= v66;
    }

    while (v65);
  }

  else
  {
    v63 = 0;
  }

  HIDWORD(v163) = v63;
  v68 = (v61 | (v62 << 6)) + v43;
  v69 = v68 & 0x3F;
  v70 = v68 >> 6;
  if (v32 + v69 + (v68 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v71 = 0;
    v72 = 0;
    v73 = v22;
    do
    {
      v74 = 64 - v69;
      if (64 - v69 >= v73)
      {
        v74 = v73;
      }

      v71 |= ((*(v3 + 8 * v70) >> v69) & ~(-1 << v74)) << v72;
      v72 += v74;
      v75 = v74 + v69;
      v70 += v75 >> 6;
      v69 = v75 & 0x3F;
      v73 -= v74;
    }

    while (v73);
  }

  else
  {
    v71 = 0;
  }

  LODWORD(v164) = v71;
  v76 = (v69 | (v70 << 6)) + v43;
  v77 = v76 & 0x3F;
  v78 = v76 >> 6;
  if (v32 + v77 + (v76 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v79 = 0;
    v80 = 0;
    v81 = v22;
    do
    {
      v82 = 64 - v77;
      if (64 - v77 >= v81)
      {
        v82 = v81;
      }

      v79 |= ((*(v3 + 8 * v78) >> v77) & ~(-1 << v82)) << v80;
      v80 += v82;
      v83 = v82 + v77;
      v78 += v83 >> 6;
      v77 = v83 & 0x3F;
      v81 -= v82;
    }

    while (v81);
  }

  else
  {
    v79 = 0;
  }

  HIDWORD(v164) = v79;
  v84 = (v77 | (v78 << 6)) + v43;
  v85 = v84 & 0x3F;
  if (v32 + v85 + (v84 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v86 = 0;
    v87 = 0;
    v88 = v84 >> 6;
    v89 = v22;
    do
    {
      v90 = 64 - v85;
      if (64 - v85 >= v89)
      {
        v90 = v89;
      }

      v86 |= ((*(v3 + 8 * v88) >> v85) & ~(-1 << v90)) << v87;
      v87 += v90;
      v91 = v90 + v85;
      v88 += v91 >> 6;
      v85 = v91 & 0x3F;
      v89 -= v90;
    }

    while (v89);
  }

  else
  {
    v86 = 0;
  }

  v165 = v86;
  v92 = v22;
LABEL_88:
  v97 = *&kDQuadParamTable[10 * v16 + 162];
  if (v97 >> v92 <= 1)
  {
    v98 = 1;
  }

  else
  {
    v98 = v97 >> v92;
  }

  v99 = v98 >> 1;
  if (v98 >> 1 >= (1 << v23) >> 1)
  {
    v100 = (1 << v23) >> 1;
  }

  else
  {
    v100 = v98 >> 1;
  }

  v101 = 512 - v8;
  result = v101 / v98;
  v103 = v97 + v8;
  v104 = -1 << v92;
  if (v8)
  {
    v105 = v100;
  }

  else
  {
    v105 = 0;
  }

  v106 = v8 == 512;
  if (v22)
  {
    if (v25)
    {
      v107 = result == v37;
      if (!(v8 | v37))
      {
        v108 = 0;
LABEL_107:
        v109 = 1;
        goto LABEL_108;
      }

      if (v103 < 0x400 || (v104 ^ v37) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v108 = v99 + v98 * v37;
        goto LABEL_107;
      }

      v109 = 1;
      v108 = 1023;
    }

    else
    {
      v109 = 0;
      v108 = v105;
      v107 = v8 == 512;
    }
  }

  else
  {
    v109 = 0;
    v108 = 0;
    v107 = v98 > v101;
  }

LABEL_108:
  v110 = a3 & 0xFFFFFFFD;
  v111 = v108 + v8;
  v112 = v111;
  if (a3 == 4)
  {
    v112 = 2139095039;
    if ((v111 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v111 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v112 = 4286578687;
      }

      else
      {
        v112 = v111;
      }
    }
  }

  v113 = 1023;
  if (v112 < 0x3FF)
  {
    v113 = v112;
  }

  if (v107)
  {
    v114 = 0;
  }

  else
  {
    v114 = v113 ^ 0x200;
  }

  if (v110 != 1)
  {
    v114 = v113;
  }

  *a2 = v114;
  if (v22)
  {
    if (v25 == 1)
    {
      v115 = v105;
      v116 = v8 == 512;
    }

    else
    {
      v117 = *(&v162 | (4 * v109));
      v116 = result == v117;
      if (v8 | v117)
      {
        if (v103 >= 0x400 && (v104 ^ v117) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v115 = 1023;
        }

        else
        {
          v115 = v99 + v98 * v117;
        }
      }

      else
      {
        v115 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v115 = 0;
    v116 = v98 > v101;
  }

  v118 = v115 + v8;
  v119 = v118;
  if (a3 == 4)
  {
    v119 = 2139095039;
    if ((v118 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v118 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v119 = 4286578687;
      }

      else
      {
        v119 = v118;
      }
    }
  }

  v120 = 1023;
  if (v119 < 0x3FF)
  {
    v120 = v119;
  }

  if (v116)
  {
    v121 = 0;
  }

  else
  {
    v121 = v120 ^ 0x200;
  }

  if (v110 != 1)
  {
    v121 = v120;
  }

  a2[1] = v121;
  if (v22)
  {
    if (v25 == 2)
    {
      v122 = v105;
      v123 = v8 == 512;
    }

    else
    {
      v124 = *(&v162 + v109);
      v123 = result == v124;
      if (v8 | v124)
      {
        if (v103 >= 0x400 && (v104 ^ v124) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v122 = 1023;
        }

        else
        {
          v122 = v99 + v98 * v124;
        }
      }

      else
      {
        v122 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v122 = 0;
    v123 = v98 > v101;
  }

  v125 = v122 + v8;
  v126 = v125;
  if (a3 == 4)
  {
    v126 = 2139095039;
    if ((v125 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v125 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v126 = 4286578687;
      }

      else
      {
        v126 = v125;
      }
    }
  }

  v127 = 1023;
  if (v126 < 0x3FF)
  {
    v127 = v126;
  }

  if (v123)
  {
    v128 = 0;
  }

  else
  {
    v128 = v127 ^ 0x200;
  }

  if (v110 != 1)
  {
    v128 = v127;
  }

  a2[2] = v128;
  if (v22)
  {
    if (v25 == 3)
    {
      v129 = v105;
      v130 = v8 == 512;
    }

    else
    {
      v131 = *(&v162 + v109);
      v130 = result == v131;
      if (v8 | v131)
      {
        if (v103 >= 0x400 && (v104 ^ v131) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v129 = 1023;
        }

        else
        {
          v129 = v99 + v98 * v131;
        }
      }

      else
      {
        v129 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v129 = 0;
    v130 = v98 > v101;
  }

  v132 = v129 + v8;
  v133 = v132;
  if (a3 == 4)
  {
    v133 = 2139095039;
    if ((v132 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v132 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v133 = 4286578687;
      }

      else
      {
        v133 = v132;
      }
    }
  }

  v134 = 1023;
  if (v133 < 0x3FF)
  {
    v134 = v133;
  }

  if (v130)
  {
    v135 = 0;
  }

  else
  {
    v135 = v134 ^ 0x200;
  }

  if (v110 != 1)
  {
    v135 = v134;
  }

  a2[3] = v135;
  if (v22)
  {
    if (v25 == 4)
    {
      v136 = v105;
      v137 = v8 == 512;
    }

    else
    {
      v138 = *(&v162 + v109);
      v137 = result == v138;
      if (v8 | v138)
      {
        if (v103 >= 0x400 && (v104 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v136 = 1023;
        }

        else
        {
          v136 = v99 + v98 * v138;
        }
      }

      else
      {
        v136 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v136 = 0;
    v137 = v98 > v101;
  }

  v139 = v136 + v8;
  v140 = v139;
  if (a3 == 4)
  {
    v140 = 2139095039;
    if ((v139 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v139 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v140 = 4286578687;
      }

      else
      {
        v140 = v139;
      }
    }
  }

  v141 = 1023;
  if (v140 < 0x3FF)
  {
    v141 = v140;
  }

  if (v137)
  {
    v142 = 0;
  }

  else
  {
    v142 = v141 ^ 0x200;
  }

  if (v110 != 1)
  {
    v142 = v141;
  }

  a2[4] = v142;
  if (v22)
  {
    if (v25 == 5)
    {
      v143 = v105;
      v144 = v8 == 512;
    }

    else
    {
      v145 = *(&v162 + v109);
      v144 = result == v145;
      if (v8 | v145)
      {
        if (v103 >= 0x400 && (v104 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v143 = 1023;
        }

        else
        {
          v143 = v99 + v98 * v145;
        }
      }

      else
      {
        v143 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v143 = 0;
    v144 = v98 > v101;
  }

  v146 = v143 + v8;
  v147 = v146;
  if (a3 == 4)
  {
    v147 = 2139095039;
    if ((v146 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v146 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v147 = 4286578687;
      }

      else
      {
        v147 = v146;
      }
    }
  }

  v148 = 1023;
  if (v147 < 0x3FF)
  {
    v148 = v147;
  }

  if (v144)
  {
    v149 = 0;
  }

  else
  {
    v149 = v148 ^ 0x200;
  }

  if (v110 != 1)
  {
    v149 = v148;
  }

  a2[5] = v149;
  if (v22)
  {
    if (v25 == 6)
    {
      v150 = v105;
      v151 = v8 == 512;
    }

    else
    {
      v152 = *(&v162 + v109);
      v151 = result == v152;
      if (v8 | v152)
      {
        if (v103 >= 0x400 && (v104 ^ v152) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v150 = 1023;
        }

        else
        {
          v150 = v99 + v98 * v152;
        }
      }

      else
      {
        v150 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v150 = 0;
    v151 = v98 > v101;
  }

  v153 = v150 + v8;
  v154 = v153;
  if (a3 == 4)
  {
    v154 = 2139095039;
    if ((v153 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v153 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v154 = 4286578687;
      }

      else
      {
        v154 = v153;
      }
    }
  }

  v155 = 1023;
  if (v154 < 0x3FF)
  {
    v155 = v154;
  }

  if (v151)
  {
    v156 = 0;
  }

  else
  {
    v156 = v155 ^ 0x200;
  }

  if (v110 != 1)
  {
    v156 = v155;
  }

  a2[6] = v156;
  if (v22)
  {
    if (v25 != 7)
    {
      v157 = *(&v162 + v109);
      v106 = result == v157;
      if (v8 | v157)
      {
        if (v103 >= 0x400 && (v104 ^ v157) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v105 = 1023;
        }

        else
        {
          v105 = v99 + v98 * v157;
        }
      }

      else
      {
        v105 = 0;
      }
    }
  }

  else
  {
    v105 = 0;
    v106 = v98 > v101;
  }

  v158 = v105 + v8;
  v159 = v158;
  if (a3 == 4)
  {
    v159 = 2139095039;
    if ((v158 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v158 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v159 = 4286578687;
      }

      else
      {
        v159 = v158;
      }
    }
  }

  v160 = 1023;
  if (v159 < 0x3FF)
  {
    v160 = v159;
  }

  v161 = v160 ^ 0x200;
  if (v106)
  {
    v161 = 0;
  }

  if (v110 == 1)
  {
    v160 = v161;
  }

  a2[7] = v160;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 8;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 16;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 24;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 6uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 6uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 6uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 6uLL);
    return 32;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x27u:
      v32.i64[0] = 0xA000A000A000ALL;
      v32.i64[1] = 0xA000A000A000ALL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xAuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xAuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xAuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xAuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 6uLL);
      v76 = vshlq_n_s16(v67, 6uLL);
      v77 = vshlq_n_s16(v63, 6uLL);
      v78 = vshlq_n_s16(v74, 6uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 40;
    case 1u:
      v18 = vdupq_n_s16(*a3 << 6);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 16;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x31)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = (8 * (a3 & 7)) | 0x100;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x38;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 10;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 10;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 6uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 6uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 6uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 6uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v16 = *(a3 + a4);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = vshrq_n_s16(vzip1q_s32(*a3, v16), 6uLL);
  v20 = vshrq_n_s16(vzip1q_s32(*v17, v18), 6uLL);
  v21 = vshrq_n_s16(vzip2q_s32(*a3, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*v17, v18), 6uLL);
  v23 = vdupq_lane_s16(*v19.i8, 0);
  v24 = vshlq_n_s16(vsubq_s16(v20, v23), 6uLL);
  v25 = vshlq_n_s16(vsubq_s16(v22, v23), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(v24, 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(v25, 6uLL);
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
  a15.i16[0] = vminvq_s16(v27);
  v41 = vdupq_lane_s16(*v38.i8, 0);
  v42 = vdupq_lane_s16(a15, 0);
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
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0xF000F000F000FLL;
    v67.i64[1] = 0xF000F000F000FLL;
    v68 = vcgtq_s16(v62, v64);
    v69 = vandq_s8(vsubq_s16(vshlq_s16(v66, vsubq_s16(v67, v63)), v58), v68);
    v70.i64[0] = 0x8000800080008;
    v70.i64[1] = 0x8000800080008;
    v66.i64[0] = 0x3000300030003;
    v66.i64[1] = 0x3000300030003;
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v40), v66), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v47), v66), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v66), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v66), 0);
    v75 = vsubq_s16(v65, v71);
    v76 = vsubq_s16(v65, v72);
    v77 = vsubq_s16(v65, v73);
    v78 = vsubq_s16(v65, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v74.i64[0] = 0x4000400040004;
    v74.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v74, v79);
    v81 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v65), v66), vandq_s8(v68, v70)), v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v82 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F0F00));
      v83 = v20;
      v83.i16[7] = v19.i16[7];
      v84 = vsubq_s16(v20, vqtbl1q_s8(v83, xmmword_29D2F0F10));
      v85 = v21;
      v85.i16[7] = v19.i16[7];
      v86 = v22;
      v86.i16[7] = v19.i16[7];
      v87 = vsubq_s16(v21, vqtbl1q_s8(v85, xmmword_29D2F0F20));
      v88 = v82;
      v88.i16[0] = v82.i16[7];
      v88.i16[7] = v82.i16[0];
      v89 = vshlq_n_s16(v88, 6uLL);
      v90 = vshlq_n_s16(v87, 6uLL);
      v91 = vshlq_n_s16(vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F30)), 6uLL);
      v92 = vshrq_n_s16(v89, 6uLL);
      v93 = vshrq_n_s16(vshlq_n_s16(v84, 6uLL), 6uLL);
      v94 = vshrq_n_s16(v90, 6uLL);
      v95 = vshrq_n_s16(v91, 6uLL);
      v90.i16[0] = vmaxvq_s16(v92);
      v91.i16[0] = vminvq_s16(v92);
      v96 = vdupq_lane_s16(*v90.i8, 0);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v99 = vmaxq_s16(v96, v98);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v100 = vminq_s16(v97, v98);
      v101 = vzip1q_s16(v96, v97);
      v102.i64[0] = 0x10001000100010;
      v102.i64[1] = 0x10001000100010;
      v103 = vsubq_s16(v102, vclsq_s16(v101));
      v104 = vbicq_s8(v103, vceqzq_s16(v101));
      v105 = vpmaxq_s16(v104, v104);
      v104.i16[0] = vmaxvq_s16(v93);
      v103.i16[0] = vminvq_s16(v93);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(*v103.i8, 0);
      v108 = vmaxq_s16(v99, v106);
      v109 = vminq_s16(v100, v107);
      v110 = vzip1q_s16(v106, v107);
      v111 = vsubq_s16(v102, vclsq_s16(v110));
      v112 = vbicq_s8(v111, vceqzq_s16(v110));
      v113 = vpmaxq_s16(v112, v112);
      v112.i16[0] = vmaxvq_s16(v94);
      v111.i16[0] = vminvq_s16(v94);
      v114 = vdupq_lane_s16(*v112.i8, 0);
      v115 = vdupq_lane_s16(*v111.i8, 0);
      v116 = vmaxq_s16(v108, v114);
      v117 = vminq_s16(v109, v115);
      v118 = vzip1q_s16(v114, v115);
      v119 = vsubq_s16(v102, vclsq_s16(v118));
      v120 = vbicq_s8(v119, vceqzq_s16(v118));
      v121 = vpmaxq_s16(v120, v120);
      v120.i16[0] = vmaxvq_s16(v95);
      v119.i16[0] = vminvq_s16(v95);
      v122 = vdupq_lane_s16(*v120.i8, 0);
      v123 = vdupq_lane_s16(*v119.i8, 0);
      v124 = vmaxq_s16(v116, v122);
      v125 = vminq_s16(v117, v123);
      v126 = vzip1q_s16(v122, v123);
      v127 = vbicq_s8(vsubq_s16(v102, vclsq_s16(v126)), vceqzq_s16(v126));
      v128 = vpmaxq_s16(v127, v127);
      v129 = vmaxq_s16(vmaxq_s16(v105, v113), vmaxq_s16(v121, v128));
      v130 = vclzq_s16(vsubq_s16(v124, v125));
      v131 = vsubq_s16(v102, v130);
      v132 = vcgtq_s16(v129, v131);
      v133 = vminq_s16(v131, v129);
      v134 = vsubq_s16(v133, v105);
      v105.i64[0] = 0x3000300030003;
      v105.i64[1] = 0x3000300030003;
      v135 = vmaxq_s16(vminq_s16(v134, v105), 0);
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v113), v105), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v121), v105), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v128), v105), 0);
      v139 = vsubq_s16(v133, v135);
      v140 = vsubq_s16(v133, v136);
      v141 = vsubq_s16(v133, v137);
      v142 = vsubq_s16(v133, v138);
      v143 = vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136)));
      v138.i64[0] = 0x4000400040004;
      v138.i64[1] = 0x4000400040004;
      v144 = vbicq_s8(v138, v143);
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v65, v68), vaddq_s16(v80, v80)), v75, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v77, v76), v78), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v133, v132), vaddq_s16(v144, v144)), v139, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v140), v142), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v133), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v132, v146), vmvnq_s8(v132))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v23.i16[0] = vbslq_s8(v151, vextq_s8(v19, v19, 0xEuLL), v23).u16[0];
        v26 = vbslq_s8(v151, v92, v26);
        v27 = vbslq_s8(v151, v93, v27);
        v28 = vbslq_s8(v151, v94, v28);
        v29 = vbslq_s8(v151, v95, v29);
        v75 = vbslq_s8(v151, v139, v75);
        v76 = vbslq_s8(v151, v140, v76);
        v77 = vbslq_s8(v151, v141, v77);
        v78 = vbslq_s8(v151, v142, v78);
        v69 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v130)), v125), v132), v69);
        v65 = vbslq_s8(v151, v133, v65);
        v81 = vbslq_s8(v151, v149, v81);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v81, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v81, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v153)).u16[0] + ((2 * v81.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v75.i16[0] + 8 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0]) - 177) <= 0xFFFFFFFFFFFFFF37)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 24;
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

      if (v65.i16[0])
      {
        v161 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v23.i16[0] & 0x3FF) << 8) | v81.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x30)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = v158 + 16;
      v165 = vsubq_s16(v65, v75);
      v166 = vsubq_s16(v65, v76);
      v167 = vsubq_s16(v65, v77);
      v168 = vsubq_s16(v65, v78);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      *v168.i8 = vqmovn_u16(v168);
      v165.i32[0] = vzip1q_s16(vzip1q_s8(v165, v166), vzip1q_s8(v167, v168)).u32[0];
      v166.i64[0] = 0x202020202020202;
      v166.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v166);
      v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v167.i64[0] = -1;
      v167.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v167, vorrq_s8(v169, v166)), v165.u32[0]);
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
      v184 = (v158 + 16) & 0x38;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v164 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
        if (!v184)
        {
          v185 = 0;
        }
      }

      v186 = vceqq_s16(v65, v75);
      v187 = v183.i64[0] + v164;
      v188 = v185 | (v182.i64[1] << v187);
      if ((v187 & 0x3F) + v183.i64[1] >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v188;
        v188 = v182.i64[1] >> -(v187 & 0x3F);
        if ((v187 & 0x3F) == 0)
        {
          v188 = 0;
        }
      }

      v189 = vandq_s8(v69, v186);
      v190 = v187 + v183.i64[1];
      v191 = vtstq_s16(v153, v153);
      v192.i64[0] = -1;
      v192.i64[1] = -1;
      v193 = vandq_s8(vextq_s8(v191, 0, 0xEuLL), v65);
      v194.i64[0] = 0xF000F000F000FLL;
      v194.i64[1] = 0xF000F000F000FLL;
      v195 = vandq_s8(vshlq_u16(v192, vaddq_s16(v193, v194)), v69);
      v196 = vmovl_u16(*v193.i8);
      v197 = vpaddq_s32(vshlq_u32(vmovl_u16(*v195.i8), vtrn1q_s32(0, v196)), vmovl_high_u16(v195));
      v198 = vpaddq_s32(v196, vmovl_high_u16(v193));
      v199.i64[0] = v197.u32[0];
      v199.i64[1] = v197.u32[1];
      v200 = v199;
      v199.i64[0] = v197.u32[2];
      v199.i64[1] = v197.u32[3];
      v201 = v199;
      v199.i64[0] = v198.u32[0];
      v199.i64[1] = v198.u32[1];
      v202 = v199;
      v199.i64[0] = v198.u32[2];
      v199.i64[1] = v198.u32[3];
      v203 = vpaddq_s64(vshlq_u64(v200, vzip1q_s64(0, v202)), vshlq_u64(v201, vzip1q_s64(0, v199)));
      v204 = vpaddq_s64(v202, v199);
      v205 = (v203.i64[0] << v190) | v188;
      if (v204.i64[0] + (v190 & 0x3F) >= 0x40)
      {
        *(v157 + ((v190 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v205;
        v205 = v203.i64[0] >> -(v190 & 0x3F);
        if ((v190 & 0x3F) == 0)
        {
          v205 = 0;
        }
      }

      v206 = vceqq_s16(v65, v76);
      v207 = vaddq_s16(v189, v26);
      v208 = v204.i64[0] + v190;
      v209 = v205 | (v203.i64[1] << v208);
      if ((v208 & 0x3F) + v204.i64[1] >= 0x40)
      {
        *(v157 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v209;
        v209 = v203.i64[1] >> -(v208 & 0x3F);
        if ((v208 & 0x3F) == 0)
        {
          v209 = 0;
        }
      }

      v210 = vandq_s8(v69, v206);
      v211 = v208 + v204.i64[1];
      v212 = vextq_s8(0, v75, 0xEuLL);
      v213.i64[0] = 0xF000F000F000FLL;
      v213.i64[1] = 0xF000F000F000FLL;
      v214.i64[0] = -1;
      v214.i64[1] = -1;
      v215 = vandq_s8(vshlq_u16(v214, vaddq_s16(v212, v213)), v207);
      v216 = vmovl_u16(*v212.i8);
      v217 = vmovl_high_u16(v212);
      v218 = vpaddq_s32(vshlq_u32(vmovl_u16(*v215.i8), vtrn1q_s32(0, v216)), vshlq_u32(vmovl_high_u16(v215), vtrn1q_s32(0, v217)));
      v219 = vpaddq_s32(v216, v217);
      v220.i64[0] = v218.u32[0];
      v220.i64[1] = v218.u32[1];
      v221 = v220;
      v220.i64[0] = v218.u32[2];
      v220.i64[1] = v218.u32[3];
      v222 = v220;
      v220.i64[0] = v219.u32[0];
      v220.i64[1] = v219.u32[1];
      v223 = v220;
      v220.i64[0] = v219.u32[2];
      v220.i64[1] = v219.u32[3];
      v224 = vpaddq_s64(vshlq_u64(v221, vzip1q_s64(0, v223)), vshlq_u64(v222, vzip1q_s64(0, v220)));
      v225 = vpaddq_s64(v223, v220);
      v226 = (v224.i64[0] << v211) | v209;
      if (v225.i64[0] + (v211 & 0x3F) >= 0x40)
      {
        *(v157 + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v226;
        v226 = v224.i64[0] >> -(v211 & 0x3F);
        if ((v211 & 0x3F) == 0)
        {
          v226 = 0;
        }
      }

      v227 = vceqq_s16(v65, v77);
      v228 = vaddq_s16(v27, v210);
      v229 = v225.i64[0] + v211;
      v230 = v226 | (v224.i64[1] << v229);
      if ((v229 & 0x3F) + v225.i64[1] >= 0x40)
      {
        *(v157 + ((v229 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v230;
        v230 = v224.i64[1] >> -(v229 & 0x3F);
        if ((v229 & 0x3F) == 0)
        {
          v230 = 0;
        }
      }

      v231 = vandq_s8(v69, v227);
      v232 = v229 + v225.i64[1];
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = -1;
      v234.i64[1] = -1;
      v235 = vandq_s8(vshlq_u16(v234, vaddq_s16(v76, v233)), v228);
      v236 = vmovl_u16(*v76.i8);
      v237 = vmovl_high_u16(v76);
      v238 = vpaddq_s32(vshlq_u32(vmovl_u16(*v235.i8), vtrn1q_s32(0, v236)), vshlq_u32(vmovl_high_u16(v235), vtrn1q_s32(0, v237)));
      v239 = vpaddq_s32(v236, v237);
      v240.i64[0] = v238.u32[0];
      v240.i64[1] = v238.u32[1];
      v241 = v240;
      v240.i64[0] = v238.u32[2];
      v240.i64[1] = v238.u32[3];
      v242 = v240;
      v240.i64[0] = v239.u32[0];
      v240.i64[1] = v239.u32[1];
      v243 = v240;
      v240.i64[0] = v239.u32[2];
      v240.i64[1] = v239.u32[3];
      v244 = vpaddq_s64(vshlq_u64(v241, vzip1q_s64(0, v243)), vshlq_u64(v242, vzip1q_s64(0, v240)));
      v245 = vpaddq_s64(v243, v240);
      v246 = (v244.i64[0] << v232) | v230;
      if (v245.i64[0] + (v232 & 0x3F) >= 0x40)
      {
        *(v157 + ((v232 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v246;
        v246 = v244.i64[0] >> -(v232 & 0x3F);
        if ((v232 & 0x3F) == 0)
        {
          v246 = 0;
        }
      }

      v247 = vceqq_s16(v65, v78);
      v248 = vaddq_s16(v28, v231);
      v249 = v245.i64[0] + v232;
      v250 = v246 | (v244.i64[1] << v249);
      if ((v249 & 0x3F) + v245.i64[1] >= 0x40)
      {
        *(v157 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v250;
        v250 = v244.i64[1] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v250 = 0;
        }
      }

      v251 = vandq_s8(v69, v247);
      v252 = v249 + v245.i64[1];
      v253.i64[0] = 0xF000F000F000FLL;
      v253.i64[1] = 0xF000F000F000FLL;
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      v255 = vandq_s8(vshlq_u16(v254, vaddq_s16(v77, v253)), v248);
      v256 = vmovl_u16(*v77.i8);
      v257 = vmovl_high_u16(v77);
      v258 = vpaddq_s32(vshlq_u32(vmovl_u16(*v255.i8), vtrn1q_s32(0, v256)), vshlq_u32(vmovl_high_u16(v255), vtrn1q_s32(0, v257)));
      v259 = vpaddq_s32(v256, v257);
      v260.i64[0] = v258.u32[0];
      v260.i64[1] = v258.u32[1];
      v261 = v260;
      v260.i64[0] = v258.u32[2];
      v260.i64[1] = v258.u32[3];
      v262 = v260;
      v260.i64[0] = v259.u32[0];
      v260.i64[1] = v259.u32[1];
      v263 = v260;
      v260.i64[0] = v259.u32[2];
      v260.i64[1] = v259.u32[3];
      v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
      v265 = vpaddq_s64(v263, v260);
      v266 = (v264.i64[0] << v252) | v250;
      if (v265.i64[0] + (v252 & 0x3F) >= 0x40)
      {
        *(v157 + ((v252 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v264.i64[0] >> -(v252 & 0x3F);
        if ((v252 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vaddq_s16(v29, v251);
      v268 = v265.i64[0] + v252;
      v269 = v266 | (v264.i64[1] << v268);
      if ((v268 & 0x3F) + v265.i64[1] >= 0x40)
      {
        *(v157 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v269;
        v269 = v264.i64[1] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v269 = 0;
        }
      }

      v270 = v268 + v265.i64[1];
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272.i64[0] = -1;
      v272.i64[1] = -1;
      v273 = vandq_s8(vshlq_u16(v272, vaddq_s16(v78, v271)), v267);
      v274 = vmovl_u16(*v78.i8);
      v275 = vmovl_high_u16(v78);
      v276 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v274)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v275)));
      v277 = vpaddq_s32(v274, v275);
      v278.i64[0] = v276.u32[0];
      v278.i64[1] = v276.u32[1];
      v279 = v278;
      v278.i64[0] = v276.u32[2];
      v278.i64[1] = v276.u32[3];
      v280 = v278;
      v278.i64[0] = v277.u32[0];
      v278.i64[1] = v277.u32[1];
      v281 = v278;
      v278.i64[0] = v277.u32[2];
      v278.i64[1] = v277.u32[3];
      v282 = vpaddq_s64(vshlq_u64(v279, vzip1q_s64(0, v281)), vshlq_u64(v280, vzip1q_s64(0, v278)));
      v283 = vpaddq_s64(v281, v278);
      v284 = (v282.i64[0] << v270) | v269;
      if (v283.i64[0] + (v270 & 0x3F) > 0x3F)
      {
        *(v157 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
        if ((v270 & 0x3F) != 0)
        {
          v284 = v282.i64[0] >> -(v270 & 0x3F);
        }

        else
        {
          v284 = 0;
        }
      }

      v285 = v283.i64[0] + v270;
      v286 = v284 | (v282.i64[1] << v285);
      if ((v285 & 0x3F) + v283.i64[1] >= 0x40)
      {
        *(v157 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v282.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = v285 + v283.i64[1];
      if ((v287 & 0x3F) != 0)
      {
        *(v157 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      }

      result = (v287 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 6;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a6;
  if (a5 >= 8)
  {
    v14 = 0;
    v15 = a5 & 0x78;
    v16 = &v49;
    v17 = v51;
    v18 = a3;
    do
    {
      v19 = v18;
      v20 = v16;
      v21 = a5 & 0x78;
      do
      {
        v22 = *v19++;
        v23 = vshrq_n_u16(v22, 6uLL);
        *(v20 - 16) = v23.i16[0];
        *(v20 - 12) = v23.i16[1];
        *(v20 - 8) = v23.i16[2];
        *(v20 - 4) = v23.i16[3];
        *v20 = v23.i16[4];
        *(v20 + 4) = v23.i16[5];
        *(v20 + 8) = v23.i16[6];
        *(v20 + 12) = v23.i16[7];
        v20 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v15 != a5)
      {
        v24 = (a3 + 2 * v15 + v14 * a4);
        v25 = v17;
        v26 = a5 - 8;
        do
        {
          v27 = v24->u16[0];
          v24 = (v24 + 2);
          *v25 = v27 >> 6;
          v25 += 4;
          --v26;
        }

        while (v26);
      }

      ++v14;
      v16 = (v16 + 2);
      v18 = (v18 + a4);
      v17 = (v17 + 2);
    }

    while (v14 != a6);
  }

  else
  {
    v12 = &a3->i16[3];
    v13 = &v48 + 4;
    do
    {
      *(v13 - 12) = *(v12 - 3) >> 6;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 6;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 6;
          if (a5 != 3)
          {
            *v13 = *v12 >> 6;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 6;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 6;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 6;
                }
              }
            }
          }
        }
      }

      v12 = (v12 + a4);
      ++v13;
      --v11;
    }

    while (v11);
  }

  v42.i32[0] = v47;
  v42.i32[1] = WORD4(v47);
  v42.i32[2] = WORD1(v47);
  v42.i32[3] = WORD5(v47);
  v43 = v48;
  v44 = WORD4(v48);
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = a5;
  }

  if (a5 >= 4)
  {
    v29 = a5 - 4;
  }

  else
  {
    v29 = 0;
  }

  v45 = WORD1(v48);
  v46 = WORD5(v48);
  if (a6 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = a6;
  }

  if (a6 >= 2)
  {
    v31 = a6 - 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
  v42.i32[0] = WORD2(v47);
  v42.i32[1] = WORD6(v47);
  v42.i32[2] = WORD3(v47);
  v42.i32[3] = HIWORD(v47);
  v43 = WORD2(v48);
  v44 = WORD6(v48);
  v45 = WORD3(v48);
  v46 = HIWORD(v48);
  if (a6 >= 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v31;
  }

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 6, &v42, a7, v28, v33);
  v42.i32[0] = v49;
  v42.i32[1] = WORD4(v49);
  v42.i32[2] = WORD1(v49);
  v42.i32[3] = WORD5(v49);
  v43 = v50;
  v44 = WORD4(v50);
  if (a5 >= 8)
  {
    v35 = 4;
  }

  else
  {
    v35 = v29;
  }

  v45 = WORD1(v50);
  v46 = WORD5(v50);
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 12, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 18, &v42, a7, v35, v33);
  if (v36)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  if (v34)
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (result)
  {
    v40 = -8;
  }

  else
  {
    v40 = -16;
  }

  *a2 = v40 | v38 | v32 | v39;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v126 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x20000000200;
    v9.i64[1] = 0x20000000200;
    v10 = vdupq_n_s32(0x201u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x20000000200;
    v6.i64[1] = 0x20000000200;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v124 = v7;
    v125 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v124 = *a2;
  v125 = v12;
  v11 = v124.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v124.u32[1];
    v16 = v124.i32[1] < v11;
    if (v124.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v124.u32[1];
    }

    if (v11 > v124.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v124.i32[2] < v17)
    {
      v16 = 2;
      v17 = v124.u32[2];
    }

    if (v15 <= v124.i32[2])
    {
      v15 = v124.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v124.i32[3] < v17)
    {
      v16 = 3;
      v17 = v124.u32[3];
    }

    if (v15 <= v124.i32[3])
    {
      v15 = v124.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v125.i32[0] < v17)
    {
      v16 = 4;
      v17 = v125.i32[0];
    }

    if (v15 <= v125.i32[0])
    {
      v15 = v125.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v125.i32[1] < v17)
    {
      v16 = 5;
      v17 = v125.u32[1];
    }

    if (v15 <= v125.i32[1])
    {
      v15 = v125.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v125.i32[2] < v17)
    {
      v16 = 6;
      v17 = v125.u32[2];
    }

    if (v15 <= v125.i32[2])
    {
      v15 = v125.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v125.i32[3] < v17)
    {
      v16 = 7;
      v17 = v125.u32[3];
    }

    if (v15 <= v125.i32[3])
    {
      v15 = v125.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if (v31 - 29 >= 3)
  {
    v32 = 31 - v31;
  }

  else
  {
    v32 = 2;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v15)
  {
    v34 = v15 == 1023;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (v32 < 3 && v15 == v17)
  {
    v33 = v35;
  }

  if ((a3 | 2) == 3)
  {
    v37 = 0;
    if (v17 <= 0x1FF && v15 >= 0x200)
    {
      v37 = kDQuadParamTable[10 * v33 + 168] == 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v33 > 5 || v37)
  {
    v39 = kDQuadParamTable[10 * v33 + 164];
    v40 = v39 + 1;
    if (v37)
    {
      v41 = 0;
    }

    else
    {
      v41 = -2;
    }

    v42 = v17 & ~(-1 << (9 - v39));
    if (v40 >= 0xA)
    {
      v42 = 0;
    }

    v43 = v42 + v41;
    if (v43 >= 1 && __clz(v43 + v30) < v31)
    {
      ++v33;
    }
  }

  v44 = 0;
  v45 = 0;
  v46 = v33;
  v47 = &kDQuadParamTable[10 * v33];
  v48 = *(v47 + 81);
  v49 = v47[165];
  v50 = v49 + 1;
  if (a4)
  {
    v51 = a5 == 0;
  }

  else
  {
    v51 = 1;
  }

  LODWORD(result) = v51 || v48 >> v50 > 0x10;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v54 = kDQuadParamTable[10 * v33 + 164];
  v55 = v54 + 1;
  if ((v54 + 1) < 0xA)
  {
    v56 = (v54 + 1);
  }

  else
  {
    v56 = 10;
  }

  if (v49)
  {
    LODWORD(v57) = 10;
  }

  else
  {
    LODWORD(v57) = 0;
  }

  if (v57 >= v50)
  {
    v57 = v50;
  }

  else
  {
    v57 = v57;
  }

  v58 = (-1 << (10 - v56)) & v17;
  v59 = v11 - v58;
  if (!v13)
  {
    v59 = 0;
  }

  v18 = !v14;
  v60 = v124.i32[1] - v58;
  if (v18)
  {
    v60 = 0;
  }

  v123[0] = v59;
  v123[1] = v60;
  memset(v121, 0, sizeof(v121));
  v122 = 0;
  v61 = v48 >> v57;
  v62 = v124.i32[2] - v58;
  if (!v19)
  {
    v62 = 0;
  }

  v63 = v124.i32[3] - v58;
  if (!v21)
  {
    v63 = 0;
  }

  v123[2] = v62;
  v123[3] = v63;
  v64 = v125.i32[0] - v58;
  if (!v23)
  {
    v64 = 0;
  }

  v65 = v125.i32[1] - v58;
  if (!v25)
  {
    v65 = 0;
  }

  v123[4] = v64;
  v123[5] = v65;
  v66 = v125.i32[2] - v58;
  if (!v27)
  {
    v66 = 0;
  }

  v67 = v125.i32[3] - v58;
  if (!v29)
  {
    v67 = 0;
  }

  v123[6] = v66;
  v123[7] = v67;
  if (v61 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v48 >> v57;
  }

  v69 = v16;
  v70 = 4 * v16;
  v71 = &byte_29D2F3081;
  do
  {
    if (v70 != v44)
    {
      if (v57)
      {
        v72 = v123[v44 / 4] / v68;
      }

      else
      {
        LODWORD(v72) = 0;
      }

      *(v121 + v45) = v72;
      if (v61 >= 2)
      {
        v73 = v123[v44 / 4];
        if (v73)
        {
          if (v73 / v68 * v68 == v73 && ((v73 / v68) & 1) != 0)
          {
            if (v58 || v72 != 1)
            {
              if ((a3 | 2) != 3 || (v75 = v124.u32[v44 / 4], v75 != 512) && ((a3 | 2) != 3 || v68 + 512 != v75))
              {
                LODWORD(v72) = v72 - 1;
                *(v121 + v45) = v72;
              }
            }

            else
            {
              LODWORD(v72) = 1;
            }
          }
        }
      }

      if (v72 >> v57 || v124.i32[v44 / 4] == 1023)
      {
        *(v121 + v45) = ~(-1 << v57);
      }

      if (*v71 >= a5 || *(v71 - 1) >= a4)
      {
        *(v121 + v45) = 0;
      }

      ++v45;
    }

    v44 += 4;
    v71 += 2;
  }

  while (v44 != 32);
  v76 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v77 = 8 * (a1 & 7);
  *(a1 + 4) = 0;
  *a1 = 0;
  if (result)
  {
    v78 = 0;
    v79 = 0;
    v80 = v77;
    do
    {
      v81 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v78;
      if (v81[1] >= a5 || *v81 >= a4)
      {
        v83 = 0;
      }

      else
      {
        v83 = v124.u32[v78] >> 4;
      }

      if ((v80 - v77 + (v79 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v84 = 0;
        v85 = 6;
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
    return result;
  }

  if (v17 | v46)
  {
    v88 = v77 | 3;
    if (v46 < 3)
    {
      v89 = v46 + 1;
    }

    else
    {
      v89 = 0;
    }

    if (v46 >= 3)
    {
      v90 = (v46 + 6) & 7;
    }

    else
    {
      v90 = 0;
    }

    *v76 |= v90 << v77;
    if (v46 >= 3)
    {
      v92 = 0;
      v96 = 3;
      if (!v55)
      {
        goto LABEL_227;
      }

LABEL_222:
      if ((v56 - v77 + v88 + (v92 << 6)) <= 0x30)
      {
        v97 = 0;
        v98 = v56;
        do
        {
          v99 = 64 - v88;
          if (64 - v88 >= v98)
          {
            v99 = v98;
          }

          v76[v92] |= (((v58 >> (10 - v56)) >> v97) & ~(-1 << v99)) << v88;
          v97 += v99;
          v100 = v99 + v88;
          v92 += v100 >> 6;
          v88 = v100 & 0x3F;
          v98 -= v99;
        }

        while (v98);
      }

      goto LABEL_227;
    }

    v91 = 2 * (v46 < 3);
  }

  else
  {
    v89 = 0;
    v88 = v77 | 3;
    v91 = 2;
  }

  if (v91 - v77 + v88 <= 0x30)
  {
    v92 = 0;
    v93 = 0;
    do
    {
      v94 = 64 - v88;
      if (64 - v88 >= v91)
      {
        v94 = v91;
      }

      v76[v92] |= ((v89 >> v93) & ~(-1 << v94)) << v88;
      v93 += v94;
      v95 = v94 + v88;
      v92 += v95 >> 6;
      v88 = v95 & 0x3F;
      v91 -= v94;
    }

    while (v91);
  }

  else
  {
    v92 = 0;
  }

  v96 = 5;
  if (!v46)
  {
    goto LABEL_228;
  }

  if (v55)
  {
    goto LABEL_222;
  }

LABEL_227:
  v96 += v56;
LABEL_228:
  if (v57)
  {
    if ((v88 - v77 + (v92 << 6) + 3) <= 0x30)
    {
      v101 = 0;
      v102 = 3;
      do
      {
        v103 = 64 - v88;
        if (64 - v88 >= v102)
        {
          v103 = v102;
        }

        v76[v92] |= ((v69 >> v101) & ~(-1 << v103)) << v88;
        v101 += v103;
        v104 = v103 + v88;
        v92 += v104 >> 6;
        v88 = v104 & 0x3F;
        v102 -= v103;
      }

      while (v102);
    }

    v96 += 3;
  }

  v105 = (37 * (48 - v96)) >> 8;
  v106 = -7 * v105 + 48 - v96;
  if ((v106 - 257) >= 0xFFFFFF00 && v88 - v77 + (v92 << 6) + v106 <= 0x30)
  {
    do
    {
      v107 = 64 - v88;
      if (64 - v88 >= v106)
      {
        v107 = v106;
      }

      v108 = v107 + v88;
      v92 += v108 >> 6;
      v88 = v108 & 0x3F;
      v106 -= v107;
    }

    while (v106);
  }

  v109 = 0;
  v110 = v105 - v57;
  if (v110)
  {
    v111 = v110 > 0x100;
  }

  else
  {
    v111 = 1;
  }

  v112 = v111;
  do
  {
    if (v57 && v57 - v77 + v88 + (v92 << 6) <= 0x30)
    {
      v113 = 0;
      v114 = *(v121 + v109);
      v115 = v57;
      do
      {
        v116 = 64 - v88;
        if (64 - v88 >= v115)
        {
          v116 = v115;
        }

        v76[v92] |= ((v114 >> v113) & ~(-1 << v116)) << v88;
        v113 += v116;
        v117 = v116 + v88;
        v92 += v117 >> 6;
        v88 = v117 & 0x3F;
        v115 -= v116;
      }

      while (v115);
    }

    if ((v112 & 1) == 0 && v88 - v77 + (v92 << 6) + v110 <= 0x30)
    {
      v118 = v110;
      do
      {
        v119 = 64 - v88;
        if (64 - v88 >= v118)
        {
          v119 = v118;
        }

        v120 = v119 + v88;
        v92 += v120 >> 6;
        v88 = v120 & 0x3F;
        v118 -= v119;
      }

      while (v118);
    }

    ++v109;
  }

  while (v109 != 7);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = v4 | 6;
    *a2 = 16 * ((*v3 >> v4) & 0x3F);
    v6 = (v4 | 6) - v4;
    if ((v6 - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v22 = 0;
      v7 = 0;
      v23 = 0;
      v24 = 6;
      do
      {
        v25 = 64 - v5;
        if (64 - v5 >= v24)
        {
          v25 = v24;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v25)) << v23;
        v22 |= result;
        v23 += v25;
        v26 = v25 + v5;
        v7 += v26 >> 6;
        v5 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v8 = 16 * (v22 & 0x3F);
      v6 = v5 - v4;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    a2[1] = v8;
    if ((v6 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v27 = 0;
      v28 = 0;
      v29 = 6;
      do
      {
        v30 = 64 - v5;
        if (64 - v5 >= v29)
        {
          v30 = v29;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v30)) << v28;
        v27 |= result;
        v28 += v30;
        v31 = v30 + v5;
        v7 += v31 >> 6;
        v5 = v31 & 0x3F;
        v29 -= v30;
      }

      while (v29);
      a2[2] = 16 * (v27 & 0x3F);
      if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v34 = 0;
        v35 = 0;
        v36 = 6;
        do
        {
          v37 = 64 - v5;
          if (64 - v5 >= v36)
          {
            v37 = v36;
          }

          result = ((v3[v7] >> v5) & ~(-1 << v37)) << v35;
          v34 |= result;
          v35 += v37;
          v38 = v37 + v5;
          v7 += v38 >> 6;
          v5 = v38 & 0x3F;
          v36 -= v37;
        }

        while (v36);
        a2[3] = 16 * (v34 & 0x3F);
        if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
        {
          v39 = 0;
          v40 = 0;
          v41 = 6;
          do
          {
            v42 = 64 - v5;
            if (64 - v5 >= v41)
            {
              v42 = v41;
            }

            result = ((v3[v7] >> v5) & ~(-1 << v42)) << v40;
            v39 |= result;
            v40 += v42;
            v43 = v42 + v5;
            v7 += v43 >> 6;
            v5 = v43 & 0x3F;
            v41 -= v42;
          }

          while (v41);
          a2[4] = 16 * (v39 & 0x3F);
          if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
          {
            v44 = 0;
            v45 = 0;
            v46 = 6;
            do
            {
              v47 = 64 - v5;
              if (64 - v5 >= v46)
              {
                v47 = v46;
              }

              result = ((v3[v7] >> v5) & ~(-1 << v47)) << v45;
              v44 |= result;
              v45 += v47;
              v48 = v47 + v5;
              v7 += v48 >> 6;
              v5 = v48 & 0x3F;
              v46 -= v47;
            }

            while (v46);
            a2[5] = 16 * (v44 & 0x3F);
            if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
            {
              v49 = 0;
              v50 = 0;
              v51 = 6;
              do
              {
                v52 = 64 - v5;
                if (64 - v5 >= v51)
                {
                  v52 = v51;
                }

                result = ((v3[v7] >> v5) & ~(-1 << v52)) << v50;
                v49 |= result;
                v50 += v52;
                v53 = v52 + v5;
                v7 += v53 >> 6;
                v5 = v53 & 0x3F;
                v51 -= v52;
              }

              while (v51);
              v54 = v5 - v4 + (v7 << 6) - 43;
              a2[6] = 16 * (v49 & 0x3F);
              v33 = a2 + 7;
              if (v54 >= 0xFFFFFFFFFFFFFFCFLL)
              {
                v55 = 0;
                v56 = 0;
                v57 = 6;
                do
                {
                  v58 = 64 - v5;
                  if (64 - v5 >= v57)
                  {
                    v58 = v57;
                  }

                  result = ((v3[v7] >> v5) & ~(-1 << v58)) << v56;
                  v55 |= result;
                  v56 += v58;
                  v59 = v58 + v5;
                  v7 += v59 >> 6;
                  v5 = v59 & 0x3F;
                  v57 -= v58;
                }

                while (v57);
                v32 = 16 * (v55 & 0x3F);
              }

              else
              {
                v32 = 0;
              }

              goto LABEL_37;
            }

LABEL_36:
            v32 = 0;
            a2[6] = 0;
            v33 = a2 + 7;
LABEL_37:
            *v33 = v32;
            return result;
          }

LABEL_35:
          a2[5] = 0;
          goto LABEL_36;
        }

LABEL_34:
        a2[4] = 0;
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_34;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  v13 = 8 * (result & 7);
  do
  {
    if ((v13 - v4 + (v10 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v14 = 0;
      v15 = 0;
      v16 = 6;
      do
      {
        v17 = 64 - v13;
        if (64 - v13 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((v3[v10] >> v13) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v13;
        v10 += v18 >> 6;
        v13 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v19 = 16 * (v14 & 0x3F);
    if (v19 != 512 || v11 != 1)
    {
      v21 = v19 - (v14 & 1) + 8;
      if (v19 == 1008)
      {
        v21 = 1023;
      }

      if (v19)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    result = v19 ^ v12;
    a2[v9++] = result;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v167 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x2E)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 2;
  do
  {
    v13 = 64 - v6;
    if (64 - v6 >= v12)
    {
      v13 = v12;
    }

    v10 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v13)) << v11;
    v11 += v13;
    v14 = v13 + v6;
    v7 += v14 >> 6;
    v6 = v14 & 0x3F;
    v12 -= v13;
  }

  while (v12);
  v15 = v10 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v9 = 0;
      v8 = 1023;
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
    v9 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v8 = 0;
LABEL_18:
  v16 = v9;
  v17 = &kDQuadParamTable[10 * v9];
  v18 = v17[164];
  v19 = v18 + 1;
  v20 = v17[165];
  if ((v18 + 1) < 0xA)
  {
    v21 = (v18 + 1);
  }

  else
  {
    v21 = 10;
  }

  if (v20)
  {
    v22 = 10;
  }

  else
  {
    v22 = 0;
  }

  if (v22 >= v20 + 1)
  {
    v23 = (v20 + 1);
  }

  else
  {
    v23 = v22;
  }

  v24 = 10 - v21;
  if (v9)
  {
    if (v19)
    {
      if ((v21 - v4 + v6 + (v7 << 6)) <= 0x30)
      {
        v25 = 0;
        v94 = 0;
        v95 = v21;
        do
        {
          v96 = 64 - v6;
          if (64 - v6 >= v95)
          {
            v96 = v95;
          }

          v25 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v96)) << v94;
          v94 += v96;
          v97 = v96 + v6;
          v7 += v97 >> 6;
          v6 = v97 & 0x3F;
          v95 -= v96;
        }

        while (v95);
      }

      else
      {
        v25 = 0;
      }

      v5 += v21;
      v8 = v25 << v24;
      if (!v23)
      {
        goto LABEL_87;
      }

      goto LABEL_33;
    }

    v8 = 0;
  }

  if (!v23)
  {
LABEL_87:
    v93 = 0;
    v26 = 0;
    v38 = 0;
    v163 = 0;
    v164 = 0;
    v166 = 0;
    v165 = 0;
    goto LABEL_88;
  }

LABEL_33:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x30)
  {
    LODWORD(v26) = 0;
    v27 = 0;
    v28 = 3;
    do
    {
      v29 = 64 - v6;
      if (64 - v6 >= v28)
      {
        v29 = v28;
      }

      v26 = v26 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v29)) << v27);
      v27 += v29;
      v30 = v29 + v6;
      v7 += v30 >> 6;
      v6 = v30 & 0x3F;
      v28 -= v29;
    }

    while (v28);
  }

  else
  {
    v26 = 0;
  }

  v31 = 45 - v5;
  v32 = (37 * v31) >> 8;
  v33 = v23 - v4;
  v34 = (v6 | (v7 << 6)) + -7 * v32 + v31;
  v35 = v34 & 0x3F;
  v36 = v33 + v35 + (v34 & 0xFFFFFFFFFFFFFFC0);
  v163 = 0;
  v164 = 0;
  v166 = 0;
  v165 = 0;
  v37 = v34 >> 6;
  if (v36 <= 0x30)
  {
    v38 = 0;
    v39 = 0;
    v40 = v23;
    do
    {
      v41 = 64 - v35;
      if (64 - v35 >= v40)
      {
        v41 = v40;
      }

      v38 |= ((*(v3 + 8 * v37) >> v35) & ~(-1 << v41)) << v39;
      v39 += v41;
      v42 = v41 + v35;
      v37 += v42 >> 6;
      v35 = v42 & 0x3F;
      v40 -= v41;
    }

    while (v40);
  }

  else
  {
    v38 = 0;
  }

  LODWORD(v163) = v38;
  v43 = v35 | (v37 << 6);
  v44 = v32 - v23;
  v45 = v43 + v44;
  v46 = (v43 + v44) & 0x3F;
  v47 = (v43 + v44) >> 6;
  if (v33 + v46 + (v45 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v48 = 0;
    v49 = 0;
    v50 = v23;
    do
    {
      v51 = 64 - v46;
      if (64 - v46 >= v50)
      {
        v51 = v50;
      }

      v48 |= ((*(v3 + 8 * v47) >> v46) & ~(-1 << v51)) << v49;
      v49 += v51;
      v52 = v51 + v46;
      v47 += v52 >> 6;
      v46 = v52 & 0x3F;
      v50 -= v51;
    }

    while (v50);
  }

  else
  {
    v48 = 0;
  }

  HIDWORD(v163) = v48;
  v53 = (v46 | (v47 << 6)) + v44;
  v54 = v53 & 0x3F;
  v55 = v53 >> 6;
  if (v33 + v54 + (v53 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v56 = 0;
    v57 = 0;
    v58 = v23;
    do
    {
      v59 = 64 - v54;
      if (64 - v54 >= v58)
      {
        v59 = v58;
      }

      v56 |= ((*(v3 + 8 * v55) >> v54) & ~(-1 << v59)) << v57;
      v57 += v59;
      v60 = v59 + v54;
      v55 += v60 >> 6;
      v54 = v60 & 0x3F;
      v58 -= v59;
    }

    while (v58);
  }

  else
  {
    v56 = 0;
  }

  LODWORD(v164) = v56;
  v61 = (v54 | (v55 << 6)) + v44;
  v62 = v61 & 0x3F;
  v63 = v61 >> 6;
  if (v33 + v62 + (v61 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v64 = 0;
    v65 = 0;
    v66 = v23;
    do
    {
      v67 = 64 - v62;
      if (64 - v62 >= v66)
      {
        v67 = v66;
      }

      v64 |= ((*(v3 + 8 * v63) >> v62) & ~(-1 << v67)) << v65;
      v65 += v67;
      v68 = v67 + v62;
      v63 += v68 >> 6;
      v62 = v68 & 0x3F;
      v66 -= v67;
    }

    while (v66);
  }

  else
  {
    v64 = 0;
  }

  HIDWORD(v164) = v64;
  v69 = (v62 | (v63 << 6)) + v44;
  v70 = v69 & 0x3F;
  v71 = v69 >> 6;
  if (v33 + v70 + (v69 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v72 = 0;
    v73 = 0;
    v74 = v23;
    do
    {
      v75 = 64 - v70;
      if (64 - v70 >= v74)
      {
        v75 = v74;
      }

      v72 |= ((*(v3 + 8 * v71) >> v70) & ~(-1 << v75)) << v73;
      v73 += v75;
      v76 = v75 + v70;
      v71 += v76 >> 6;
      v70 = v76 & 0x3F;
      v74 -= v75;
    }

    while (v74);
  }

  else
  {
    v72 = 0;
  }

  LODWORD(v165) = v72;
  v77 = (v70 | (v71 << 6)) + v44;
  v78 = v77 & 0x3F;
  v79 = v77 >> 6;
  if (v33 + v78 + (v77 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v80 = 0;
    v81 = 0;
    v82 = v23;
    do
    {
      v83 = 64 - v78;
      if (64 - v78 >= v82)
      {
        v83 = v82;
      }

      v80 |= ((*(v3 + 8 * v79) >> v78) & ~(-1 << v83)) << v81;
      v81 += v83;
      v84 = v83 + v78;
      v79 += v84 >> 6;
      v78 = v84 & 0x3F;
      v82 -= v83;
    }

    while (v82);
  }

  else
  {
    v80 = 0;
  }

  HIDWORD(v165) = v80;
  v85 = (v78 | (v79 << 6)) + v44;
  v86 = v85 & 0x3F;
  if (v33 + v86 + (v85 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v87 = 0;
    v88 = 0;
    v89 = v85 >> 6;
    v90 = v23;
    do
    {
      v91 = 64 - v86;
      if (64 - v86 >= v90)
      {
        v91 = v90;
      }

      v87 |= ((*(v3 + 8 * v89) >> v86) & ~(-1 << v91)) << v88;
      v88 += v91;
      v92 = v91 + v86;
      v89 += v92 >> 6;
      v86 = v92 & 0x3F;
      v90 -= v91;
    }

    while (v90);
  }

  else
  {
    v87 = 0;
  }

  v166 = v87;
  v93 = v23;
LABEL_88:
  v98 = *&kDQuadParamTable[10 * v16 + 162];
  if (v98 >> v93 <= 1)
  {
    v99 = 1;
  }

  else
  {
    v99 = v98 >> v93;
  }

  v100 = v99 >> 1;
  if (v99 >> 1 >= (1 << v24) >> 1)
  {
    v101 = (1 << v24) >> 1;
  }

  else
  {
    v101 = v99 >> 1;
  }

  v102 = 512 - v8;
  result = v102 / v99;
  v104 = v98 + v8;
  v105 = -1 << v93;
  if (v8)
  {
    v106 = v101;
  }

  else
  {
    v106 = 0;
  }

  v107 = v8 == 512;
  if (v23)
  {
    if (v26)
    {
      v108 = result == v38;
      if (!(v8 | v38))
      {
        v109 = 0;
LABEL_107:
        v110 = 1;
        goto LABEL_108;
      }

      if (v104 < 0x400 || (v105 ^ v38) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v109 = v100 + v99 * v38;
        goto LABEL_107;
      }

      v110 = 1;
      v109 = 1023;
    }

    else
    {
      v110 = 0;
      v109 = v106;
      v108 = v8 == 512;
    }
  }

  else
  {
    v110 = 0;
    v109 = 0;
    v108 = v99 > v102;
  }

LABEL_108:
  v111 = a3 & 0xFFFFFFFD;
  v112 = v109 + v8;
  v113 = v112;
  if (a3 == 4)
  {
    v113 = 2139095039;
    if ((v112 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v112 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v113 = 4286578687;
      }

      else
      {
        v113 = v112;
      }
    }
  }

  v114 = 1023;
  if (v113 < 0x3FF)
  {
    v114 = v113;
  }

  if (v108)
  {
    v115 = 0;
  }

  else
  {
    v115 = v114 ^ 0x200;
  }

  if (v111 != 1)
  {
    v115 = v114;
  }

  *a2 = v115;
  if (v23)
  {
    if (v26 == 1)
    {
      v116 = v106;
      v117 = v8 == 512;
    }

    else
    {
      v118 = *(&v163 | (4 * v110));
      v117 = result == v118;
      if (v8 | v118)
      {
        if (v104 >= 0x400 && (v105 ^ v118) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v116 = 1023;
        }

        else
        {
          v116 = v100 + v99 * v118;
        }
      }

      else
      {
        v116 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v116 = 0;
    v117 = v99 > v102;
  }

  v119 = v116 + v8;
  v120 = v119;
  if (a3 == 4)
  {
    v120 = 2139095039;
    if ((v119 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v119 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v120 = 4286578687;
      }

      else
      {
        v120 = v119;
      }
    }
  }

  v121 = 1023;
  if (v120 < 0x3FF)
  {
    v121 = v120;
  }

  if (v117)
  {
    v122 = 0;
  }

  else
  {
    v122 = v121 ^ 0x200;
  }

  if (v111 != 1)
  {
    v122 = v121;
  }

  a2[1] = v122;
  if (v23)
  {
    if (v26 == 2)
    {
      v123 = v106;
      v124 = v8 == 512;
    }

    else
    {
      v125 = *(&v163 + v110);
      v124 = result == v125;
      if (v8 | v125)
      {
        if (v104 >= 0x400 && (v105 ^ v125) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v123 = 1023;
        }

        else
        {
          v123 = v100 + v99 * v125;
        }
      }

      else
      {
        v123 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v123 = 0;
    v124 = v99 > v102;
  }

  v126 = v123 + v8;
  v127 = v126;
  if (a3 == 4)
  {
    v127 = 2139095039;
    if ((v126 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v126 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v127 = 4286578687;
      }

      else
      {
        v127 = v126;
      }
    }
  }

  v128 = 1023;
  if (v127 < 0x3FF)
  {
    v128 = v127;
  }

  if (v124)
  {
    v129 = 0;
  }

  else
  {
    v129 = v128 ^ 0x200;
  }

  if (v111 != 1)
  {
    v129 = v128;
  }

  a2[2] = v129;
  if (v23)
  {
    if (v26 == 3)
    {
      v130 = v106;
      v131 = v8 == 512;
    }

    else
    {
      v132 = *(&v163 + v110);
      v131 = result == v132;
      if (v8 | v132)
      {
        if (v104 >= 0x400 && (v105 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v130 = 1023;
        }

        else
        {
          v130 = v100 + v99 * v132;
        }
      }

      else
      {
        v130 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v130 = 0;
    v131 = v99 > v102;
  }

  v133 = v130 + v8;
  v134 = v133;
  if (a3 == 4)
  {
    v134 = 2139095039;
    if ((v133 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v133 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v134 = 4286578687;
      }

      else
      {
        v134 = v133;
      }
    }
  }

  v135 = 1023;
  if (v134 < 0x3FF)
  {
    v135 = v134;
  }

  if (v131)
  {
    v136 = 0;
  }

  else
  {
    v136 = v135 ^ 0x200;
  }

  if (v111 != 1)
  {
    v136 = v135;
  }

  a2[3] = v136;
  if (v23)
  {
    if (v26 == 4)
    {
      v137 = v106;
      v138 = v8 == 512;
    }

    else
    {
      v139 = *(&v163 + v110);
      v138 = result == v139;
      if (v8 | v139)
      {
        if (v104 >= 0x400 && (v105 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v137 = 1023;
        }

        else
        {
          v137 = v100 + v99 * v139;
        }
      }

      else
      {
        v137 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v137 = 0;
    v138 = v99 > v102;
  }

  v140 = v137 + v8;
  v141 = v140;
  if (a3 == 4)
  {
    v141 = 2139095039;
    if ((v140 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v140 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v141 = 4286578687;
      }

      else
      {
        v141 = v140;
      }
    }
  }

  v142 = 1023;
  if (v141 < 0x3FF)
  {
    v142 = v141;
  }

  if (v138)
  {
    v143 = 0;
  }

  else
  {
    v143 = v142 ^ 0x200;
  }

  if (v111 != 1)
  {
    v143 = v142;
  }

  a2[4] = v143;
  if (v23)
  {
    if (v26 == 5)
    {
      v144 = v106;
      v145 = v8 == 512;
    }

    else
    {
      v146 = *(&v163 + v110);
      v145 = result == v146;
      if (v8 | v146)
      {
        if (v104 >= 0x400 && (v105 ^ v146) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v144 = 1023;
        }

        else
        {
          v144 = v100 + v99 * v146;
        }
      }

      else
      {
        v144 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v144 = 0;
    v145 = v99 > v102;
  }

  v147 = v144 + v8;
  v148 = v147;
  if (a3 == 4)
  {
    v148 = 2139095039;
    if ((v147 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v147 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v148 = 4286578687;
      }

      else
      {
        v148 = v147;
      }
    }
  }

  v149 = 1023;
  if (v148 < 0x3FF)
  {
    v149 = v148;
  }

  if (v145)
  {
    v150 = 0;
  }

  else
  {
    v150 = v149 ^ 0x200;
  }

  if (v111 != 1)
  {
    v150 = v149;
  }

  a2[5] = v150;
  if (v23)
  {
    if (v26 == 6)
    {
      v151 = v106;
      v152 = v8 == 512;
    }

    else
    {
      v153 = *(&v163 + v110);
      v152 = result == v153;
      if (v8 | v153)
      {
        if (v104 >= 0x400 && (v105 ^ v153) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v151 = 1023;
        }

        else
        {
          v151 = v100 + v99 * v153;
        }
      }

      else
      {
        v151 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v151 = 0;
    v152 = v99 > v102;
  }

  v154 = v151 + v8;
  v155 = v154;
  if (a3 == 4)
  {
    v155 = 2139095039;
    if ((v154 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v154 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v155 = 4286578687;
      }

      else
      {
        v155 = v154;
      }
    }
  }

  v156 = 1023;
  if (v155 < 0x3FF)
  {
    v156 = v155;
  }

  if (v152)
  {
    v157 = 0;
  }

  else
  {
    v157 = v156 ^ 0x200;
  }

  if (v111 != 1)
  {
    v157 = v156;
  }

  a2[6] = v157;
  if (v23)
  {
    if (v26 != 7)
    {
      v158 = *(&v163 + v110);
      v107 = result == v158;
      if (v8 | v158)
      {
        if (v104 >= 0x400 && (v105 ^ v158) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v106 = 1023;
        }

        else
        {
          v106 = v100 + v99 * v158;
        }
      }

      else
      {
        v106 = 0;
      }
    }
  }

  else
  {
    v106 = 0;
    v107 = v99 > v102;
  }

  v159 = v106 + v8;
  v160 = v159;
  if (a3 == 4)
  {
    v160 = 2139095039;
    if ((v159 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v159 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v160 = 4286578687;
      }

      else
      {
        v160 = v159;
      }
    }
  }

  v161 = 1023;
  if (v160 < 0x3FF)
  {
    v161 = v160;
  }

  v162 = v161 ^ 0x200;
  if (v107)
  {
    v162 = 0;
  }

  if (v111 == 1)
  {
    v161 = v162;
  }

  a2[7] = v161;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 6;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 12;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 18;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 6uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 6uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 6uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 6uLL);
    return 24;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x27u:
      v32.i64[0] = 0xA000A000A000ALL;
      v32.i64[1] = 0xA000A000A000ALL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xAuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xAuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xAuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xAuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 6uLL);
      v76 = vshlq_n_s16(v67, 6uLL);
      v77 = vshlq_n_s16(v63, 6uLL);
      v78 = vshlq_n_s16(v74, 6uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 40;
    case 1u:
      v18 = vdupq_n_s16(*a3 << 6);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 16;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x31)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = (8 * (a3 & 7)) | 0xC0;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x38;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 10;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 10;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 6uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 6uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 6uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 6uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v16 = *(a3 + a4);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = vshrq_n_s16(vzip1q_s32(*a3, v16), 6uLL);
  v20 = vshrq_n_s16(vzip1q_s32(*v17, v18), 6uLL);
  v21 = vshrq_n_s16(vzip2q_s32(*a3, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*v17, v18), 6uLL);
  v23 = vdupq_lane_s16(*v19.i8, 0);
  v24 = vshlq_n_s16(vsubq_s16(v20, v23), 6uLL);
  v25 = vshlq_n_s16(vsubq_s16(v22, v23), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(v24, 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(v25, 6uLL);
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
  a15.i16[0] = vminvq_s16(v27);
  v41 = vdupq_lane_s16(*v38.i8, 0);
  v42 = vdupq_lane_s16(a15, 0);
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
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0xF000F000F000FLL;
    v67.i64[1] = 0xF000F000F000FLL;
    v68 = vcgtq_s16(v62, v64);
    v69 = vandq_s8(vsubq_s16(vshlq_s16(v66, vsubq_s16(v67, v63)), v58), v68);
    v70.i64[0] = 0x8000800080008;
    v70.i64[1] = 0x8000800080008;
    v66.i64[0] = 0x3000300030003;
    v66.i64[1] = 0x3000300030003;
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v40), v66), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v47), v66), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v66), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v66), 0);
    v75 = vsubq_s16(v65, v71);
    v76 = vsubq_s16(v65, v72);
    v77 = vsubq_s16(v65, v73);
    v78 = vsubq_s16(v65, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v74.i64[0] = 0x4000400040004;
    v74.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v74, v79);
    v81 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v65), v66), vandq_s8(v68, v70)), v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v82 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F0F00));
      v83 = v20;
      v83.i16[7] = v19.i16[7];
      v84 = vsubq_s16(v20, vqtbl1q_s8(v83, xmmword_29D2F0F10));
      v85 = v21;
      v85.i16[7] = v19.i16[7];
      v86 = v22;
      v86.i16[7] = v19.i16[7];
      v87 = vsubq_s16(v21, vqtbl1q_s8(v85, xmmword_29D2F0F20));
      v88 = v82;
      v88.i16[0] = v82.i16[7];
      v88.i16[7] = v82.i16[0];
      v89 = vshlq_n_s16(v88, 6uLL);
      v90 = vshlq_n_s16(v87, 6uLL);
      v91 = vshlq_n_s16(vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F30)), 6uLL);
      v92 = vshrq_n_s16(v89, 6uLL);
      v93 = vshrq_n_s16(vshlq_n_s16(v84, 6uLL), 6uLL);
      v94 = vshrq_n_s16(v90, 6uLL);
      v95 = vshrq_n_s16(v91, 6uLL);
      v90.i16[0] = vmaxvq_s16(v92);
      v91.i16[0] = vminvq_s16(v92);
      v96 = vdupq_lane_s16(*v90.i8, 0);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v99 = vmaxq_s16(v96, v98);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v100 = vminq_s16(v97, v98);
      v101 = vzip1q_s16(v96, v97);
      v102.i64[0] = 0x10001000100010;
      v102.i64[1] = 0x10001000100010;
      v103 = vsubq_s16(v102, vclsq_s16(v101));
      v104 = vbicq_s8(v103, vceqzq_s16(v101));
      v105 = vpmaxq_s16(v104, v104);
      v104.i16[0] = vmaxvq_s16(v93);
      v103.i16[0] = vminvq_s16(v93);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(*v103.i8, 0);
      v108 = vmaxq_s16(v99, v106);
      v109 = vminq_s16(v100, v107);
      v110 = vzip1q_s16(v106, v107);
      v111 = vsubq_s16(v102, vclsq_s16(v110));
      v112 = vbicq_s8(v111, vceqzq_s16(v110));
      v113 = vpmaxq_s16(v112, v112);
      v112.i16[0] = vmaxvq_s16(v94);
      v111.i16[0] = vminvq_s16(v94);
      v114 = vdupq_lane_s16(*v112.i8, 0);
      v115 = vdupq_lane_s16(*v111.i8, 0);
      v116 = vmaxq_s16(v108, v114);
      v117 = vminq_s16(v109, v115);
      v118 = vzip1q_s16(v114, v115);
      v119 = vsubq_s16(v102, vclsq_s16(v118));
      v120 = vbicq_s8(v119, vceqzq_s16(v118));
      v121 = vpmaxq_s16(v120, v120);
      v120.i16[0] = vmaxvq_s16(v95);
      v119.i16[0] = vminvq_s16(v95);
      v122 = vdupq_lane_s16(*v120.i8, 0);
      v123 = vdupq_lane_s16(*v119.i8, 0);
      v124 = vmaxq_s16(v116, v122);
      v125 = vminq_s16(v117, v123);
      v126 = vzip1q_s16(v122, v123);
      v127 = vbicq_s8(vsubq_s16(v102, vclsq_s16(v126)), vceqzq_s16(v126));
      v128 = vpmaxq_s16(v127, v127);
      v129 = vmaxq_s16(vmaxq_s16(v105, v113), vmaxq_s16(v121, v128));
      v130 = vclzq_s16(vsubq_s16(v124, v125));
      v131 = vsubq_s16(v102, v130);
      v132 = vcgtq_s16(v129, v131);
      v133 = vminq_s16(v131, v129);
      v134 = vsubq_s16(v133, v105);
      v105.i64[0] = 0x3000300030003;
      v105.i64[1] = 0x3000300030003;
      v135 = vmaxq_s16(vminq_s16(v134, v105), 0);
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v113), v105), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v121), v105), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v128), v105), 0);
      v139 = vsubq_s16(v133, v135);
      v140 = vsubq_s16(v133, v136);
      v141 = vsubq_s16(v133, v137);
      v142 = vsubq_s16(v133, v138);
      v143 = vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136)));
      v138.i64[0] = 0x4000400040004;
      v138.i64[1] = 0x4000400040004;
      v144 = vbicq_s8(v138, v143);
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v65, v68), vaddq_s16(v80, v80)), v75, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v77, v76), v78), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v133, v132), vaddq_s16(v144, v144)), v139, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v140), v142), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v133), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v132, v146), vmvnq_s8(v132))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v23.i16[0] = vbslq_s8(v151, vextq_s8(v19, v19, 0xEuLL), v23).u16[0];
        v26 = vbslq_s8(v151, v92, v26);
        v27 = vbslq_s8(v151, v93, v27);
        v28 = vbslq_s8(v151, v94, v28);
        v29 = vbslq_s8(v151, v95, v29);
        v75 = vbslq_s8(v151, v139, v75);
        v76 = vbslq_s8(v151, v140, v76);
        v77 = vbslq_s8(v151, v141, v77);
        v78 = vbslq_s8(v151, v142, v78);
        v69 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v130)), v125), v132), v69);
        v65 = vbslq_s8(v151, v133, v65);
        v81 = vbslq_s8(v151, v149, v81);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v81, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v81, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v153)).u16[0] + ((2 * v81.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v75.i16[0] + 8 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0]) - 145) <= 0xFFFFFFFFFFFFFF57)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 20;
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

      if (v65.i16[0])
      {
        v161 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v23.i16[0] & 0x3FF) << 8) | v81.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x30)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = v158 + 16;
      v165 = vsubq_s16(v65, v75);
      v166 = vsubq_s16(v65, v76);
      v167 = vsubq_s16(v65, v77);
      v168 = vsubq_s16(v65, v78);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      *v168.i8 = vqmovn_u16(v168);
      v165.i32[0] = vzip1q_s16(vzip1q_s8(v165, v166), vzip1q_s8(v167, v168)).u32[0];
      v166.i64[0] = 0x202020202020202;
      v166.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v166);
      v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v167.i64[0] = -1;
      v167.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v167, vorrq_s8(v169, v166)), v165.u32[0]);
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
      v184 = (v158 + 16) & 0x38;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v164 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
        if (!v184)
        {
          v185 = 0;
        }
      }

      v186 = vceqq_s16(v65, v75);
      v187 = v183.i64[0] + v164;
      v188 = v185 | (v182.i64[1] << v187);
      if ((v187 & 0x3F) + v183.i64[1] >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v188;
        v188 = v182.i64[1] >> -(v187 & 0x3F);
        if ((v187 & 0x3F) == 0)
        {
          v188 = 0;
        }
      }

      v189 = vandq_s8(v69, v186);
      v190 = v187 + v183.i64[1];
      v191 = vtstq_s16(v153, v153);
      v192.i64[0] = -1;
      v192.i64[1] = -1;
      v193 = vandq_s8(vextq_s8(v191, 0, 0xEuLL), v65);
      v194.i64[0] = 0xF000F000F000FLL;
      v194.i64[1] = 0xF000F000F000FLL;
      v195 = vandq_s8(vshlq_u16(v192, vaddq_s16(v193, v194)), v69);
      v196 = vmovl_u16(*v193.i8);
      v197 = vpaddq_s32(vshlq_u32(vmovl_u16(*v195.i8), vtrn1q_s32(0, v196)), vmovl_high_u16(v195));
      v198 = vpaddq_s32(v196, vmovl_high_u16(v193));
      v199.i64[0] = v197.u32[0];
      v199.i64[1] = v197.u32[1];
      v200 = v199;
      v199.i64[0] = v197.u32[2];
      v199.i64[1] = v197.u32[3];
      v201 = v199;
      v199.i64[0] = v198.u32[0];
      v199.i64[1] = v198.u32[1];
      v202 = v199;
      v199.i64[0] = v198.u32[2];
      v199.i64[1] = v198.u32[3];
      v203 = vpaddq_s64(vshlq_u64(v200, vzip1q_s64(0, v202)), vshlq_u64(v201, vzip1q_s64(0, v199)));
      v204 = vpaddq_s64(v202, v199);
      v205 = (v203.i64[0] << v190) | v188;
      if (v204.i64[0] + (v190 & 0x3F) >= 0x40)
      {
        *(v157 + ((v190 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v205;
        v205 = v203.i64[0] >> -(v190 & 0x3F);
        if ((v190 & 0x3F) == 0)
        {
          v205 = 0;
        }
      }

      v206 = vceqq_s16(v65, v76);
      v207 = vaddq_s16(v189, v26);
      v208 = v204.i64[0] + v190;
      v209 = v205 | (v203.i64[1] << v208);
      if ((v208 & 0x3F) + v204.i64[1] >= 0x40)
      {
        *(v157 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v209;
        v209 = v203.i64[1] >> -(v208 & 0x3F);
        if ((v208 & 0x3F) == 0)
        {
          v209 = 0;
        }
      }

      v210 = vandq_s8(v69, v206);
      v211 = v208 + v204.i64[1];
      v212 = vextq_s8(0, v75, 0xEuLL);
      v213.i64[0] = 0xF000F000F000FLL;
      v213.i64[1] = 0xF000F000F000FLL;
      v214.i64[0] = -1;
      v214.i64[1] = -1;
      v215 = vandq_s8(vshlq_u16(v214, vaddq_s16(v212, v213)), v207);
      v216 = vmovl_u16(*v212.i8);
      v217 = vmovl_high_u16(v212);
      v218 = vpaddq_s32(vshlq_u32(vmovl_u16(*v215.i8), vtrn1q_s32(0, v216)), vshlq_u32(vmovl_high_u16(v215), vtrn1q_s32(0, v217)));
      v219 = vpaddq_s32(v216, v217);
      v220.i64[0] = v218.u32[0];
      v220.i64[1] = v218.u32[1];
      v221 = v220;
      v220.i64[0] = v218.u32[2];
      v220.i64[1] = v218.u32[3];
      v222 = v220;
      v220.i64[0] = v219.u32[0];
      v220.i64[1] = v219.u32[1];
      v223 = v220;
      v220.i64[0] = v219.u32[2];
      v220.i64[1] = v219.u32[3];
      v224 = vpaddq_s64(vshlq_u64(v221, vzip1q_s64(0, v223)), vshlq_u64(v222, vzip1q_s64(0, v220)));
      v225 = vpaddq_s64(v223, v220);
      v226 = (v224.i64[0] << v211) | v209;
      if (v225.i64[0] + (v211 & 0x3F) >= 0x40)
      {
        *(v157 + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v226;
        v226 = v224.i64[0] >> -(v211 & 0x3F);
        if ((v211 & 0x3F) == 0)
        {
          v226 = 0;
        }
      }

      v227 = vceqq_s16(v65, v77);
      v228 = vaddq_s16(v27, v210);
      v229 = v225.i64[0] + v211;
      v230 = v226 | (v224.i64[1] << v229);
      if ((v229 & 0x3F) + v225.i64[1] >= 0x40)
      {
        *(v157 + ((v229 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v230;
        v230 = v224.i64[1] >> -(v229 & 0x3F);
        if ((v229 & 0x3F) == 0)
        {
          v230 = 0;
        }
      }

      v231 = vandq_s8(v69, v227);
      v232 = v229 + v225.i64[1];
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = -1;
      v234.i64[1] = -1;
      v235 = vandq_s8(vshlq_u16(v234, vaddq_s16(v76, v233)), v228);
      v236 = vmovl_u16(*v76.i8);
      v237 = vmovl_high_u16(v76);
      v238 = vpaddq_s32(vshlq_u32(vmovl_u16(*v235.i8), vtrn1q_s32(0, v236)), vshlq_u32(vmovl_high_u16(v235), vtrn1q_s32(0, v237)));
      v239 = vpaddq_s32(v236, v237);
      v240.i64[0] = v238.u32[0];
      v240.i64[1] = v238.u32[1];
      v241 = v240;
      v240.i64[0] = v238.u32[2];
      v240.i64[1] = v238.u32[3];
      v242 = v240;
      v240.i64[0] = v239.u32[0];
      v240.i64[1] = v239.u32[1];
      v243 = v240;
      v240.i64[0] = v239.u32[2];
      v240.i64[1] = v239.u32[3];
      v244 = vpaddq_s64(vshlq_u64(v241, vzip1q_s64(0, v243)), vshlq_u64(v242, vzip1q_s64(0, v240)));
      v245 = vpaddq_s64(v243, v240);
      v246 = (v244.i64[0] << v232) | v230;
      if (v245.i64[0] + (v232 & 0x3F) >= 0x40)
      {
        *(v157 + ((v232 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v246;
        v246 = v244.i64[0] >> -(v232 & 0x3F);
        if ((v232 & 0x3F) == 0)
        {
          v246 = 0;
        }
      }

      v247 = vceqq_s16(v65, v78);
      v248 = vaddq_s16(v28, v231);
      v249 = v245.i64[0] + v232;
      v250 = v246 | (v244.i64[1] << v249);
      if ((v249 & 0x3F) + v245.i64[1] >= 0x40)
      {
        *(v157 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v250;
        v250 = v244.i64[1] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v250 = 0;
        }
      }

      v251 = vandq_s8(v69, v247);
      v252 = v249 + v245.i64[1];
      v253.i64[0] = 0xF000F000F000FLL;
      v253.i64[1] = 0xF000F000F000FLL;
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      v255 = vandq_s8(vshlq_u16(v254, vaddq_s16(v77, v253)), v248);
      v256 = vmovl_u16(*v77.i8);
      v257 = vmovl_high_u16(v77);
      v258 = vpaddq_s32(vshlq_u32(vmovl_u16(*v255.i8), vtrn1q_s32(0, v256)), vshlq_u32(vmovl_high_u16(v255), vtrn1q_s32(0, v257)));
      v259 = vpaddq_s32(v256, v257);
      v260.i64[0] = v258.u32[0];
      v260.i64[1] = v258.u32[1];
      v261 = v260;
      v260.i64[0] = v258.u32[2];
      v260.i64[1] = v258.u32[3];
      v262 = v260;
      v260.i64[0] = v259.u32[0];
      v260.i64[1] = v259.u32[1];
      v263 = v260;
      v260.i64[0] = v259.u32[2];
      v260.i64[1] = v259.u32[3];
      v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
      v265 = vpaddq_s64(v263, v260);
      v266 = (v264.i64[0] << v252) | v250;
      if (v265.i64[0] + (v252 & 0x3F) >= 0x40)
      {
        *(v157 + ((v252 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v264.i64[0] >> -(v252 & 0x3F);
        if ((v252 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vaddq_s16(v29, v251);
      v268 = v265.i64[0] + v252;
      v269 = v266 | (v264.i64[1] << v268);
      if ((v268 & 0x3F) + v265.i64[1] >= 0x40)
      {
        *(v157 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v269;
        v269 = v264.i64[1] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v269 = 0;
        }
      }

      v270 = v268 + v265.i64[1];
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272.i64[0] = -1;
      v272.i64[1] = -1;
      v273 = vandq_s8(vshlq_u16(v272, vaddq_s16(v78, v271)), v267);
      v274 = vmovl_u16(*v78.i8);
      v275 = vmovl_high_u16(v78);
      v276 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v274)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v275)));
      v277 = vpaddq_s32(v274, v275);
      v278.i64[0] = v276.u32[0];
      v278.i64[1] = v276.u32[1];
      v279 = v278;
      v278.i64[0] = v276.u32[2];
      v278.i64[1] = v276.u32[3];
      v280 = v278;
      v278.i64[0] = v277.u32[0];
      v278.i64[1] = v277.u32[1];
      v281 = v278;
      v278.i64[0] = v277.u32[2];
      v278.i64[1] = v277.u32[3];
      v282 = vpaddq_s64(vshlq_u64(v279, vzip1q_s64(0, v281)), vshlq_u64(v280, vzip1q_s64(0, v278)));
      v283 = vpaddq_s64(v281, v278);
      v284 = (v282.i64[0] << v270) | v269;
      if (v283.i64[0] + (v270 & 0x3F) > 0x3F)
      {
        *(v157 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
        if ((v270 & 0x3F) != 0)
        {
          v284 = v282.i64[0] >> -(v270 & 0x3F);
        }

        else
        {
          v284 = 0;
        }
      }

      v285 = v283.i64[0] + v270;
      v286 = v284 | (v282.i64[1] << v285);
      if ((v285 & 0x3F) + v283.i64[1] >= 0x40)
      {
        *(v157 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v282.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = v285 + v283.i64[1];
      if ((v287 & 0x3F) != 0)
      {
        *(v157 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      }

      result = (v287 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 6;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a6;
  if (a5 >= 8)
  {
    v14 = 0;
    v15 = a5 & 0x78;
    v16 = &v49;
    v17 = v51;
    v18 = a3;
    do
    {
      v19 = v18;
      v20 = v16;
      v21 = a5 & 0x78;
      do
      {
        v22 = *v19++;
        v23 = vshrq_n_u16(v22, 6uLL);
        *(v20 - 16) = v23.i16[0];
        *(v20 - 12) = v23.i16[1];
        *(v20 - 8) = v23.i16[2];
        *(v20 - 4) = v23.i16[3];
        *v20 = v23.i16[4];
        *(v20 + 4) = v23.i16[5];
        *(v20 + 8) = v23.i16[6];
        *(v20 + 12) = v23.i16[7];
        v20 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v15 != a5)
      {
        v24 = (a3 + 2 * v15 + v14 * a4);
        v25 = v17;
        v26 = a5 - 8;
        do
        {
          v27 = v24->u16[0];
          v24 = (v24 + 2);
          *v25 = v27 >> 6;
          v25 += 4;
          --v26;
        }

        while (v26);
      }

      ++v14;
      v16 = (v16 + 2);
      v18 = (v18 + a4);
      v17 = (v17 + 2);
    }

    while (v14 != a6);
  }

  else
  {
    v12 = &a3->i16[3];
    v13 = &v48 + 4;
    do
    {
      *(v13 - 12) = *(v12 - 3) >> 6;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 6;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 6;
          if (a5 != 3)
          {
            *v13 = *v12 >> 6;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 6;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 6;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 6;
                }
              }
            }
          }
        }
      }

      v12 = (v12 + a4);
      ++v13;
      --v11;
    }

    while (v11);
  }

  v42.i32[0] = v47;
  v42.i32[1] = WORD4(v47);
  v42.i32[2] = WORD1(v47);
  v42.i32[3] = WORD5(v47);
  v43 = v48;
  v44 = WORD4(v48);
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = a5;
  }

  if (a5 >= 4)
  {
    v29 = a5 - 4;
  }

  else
  {
    v29 = 0;
  }

  v45 = WORD1(v48);
  v46 = WORD5(v48);
  if (a6 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = a6;
  }

  if (a6 >= 2)
  {
    v31 = a6 - 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
  v42.i32[0] = WORD2(v47);
  v42.i32[1] = WORD6(v47);
  v42.i32[2] = WORD3(v47);
  v42.i32[3] = HIWORD(v47);
  v43 = WORD2(v48);
  v44 = WORD6(v48);
  v45 = WORD3(v48);
  v46 = HIWORD(v48);
  if (a6 >= 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v31;
  }

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 5, &v42, a7, v28, v33);
  v42.i32[0] = v49;
  v42.i32[1] = WORD4(v49);
  v42.i32[2] = WORD1(v49);
  v42.i32[3] = WORD5(v49);
  v43 = v50;
  v44 = WORD4(v50);
  if (a5 >= 8)
  {
    v35 = 4;
  }

  else
  {
    v35 = v29;
  }

  v45 = WORD1(v50);
  v46 = WORD5(v50);
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 10, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 15, &v42, a7, v35, v33);
  if (v36)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  if (v34)
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (result)
  {
    v40 = -8;
  }

  else
  {
    v40 = -16;
  }

  *a2 = v40 | v38 | v32 | v39;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v122 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x20000000200;
    v9.i64[1] = 0x20000000200;
    v10 = vdupq_n_s32(0x201u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x20000000200;
    v6.i64[1] = 0x20000000200;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v120 = v7;
    v121 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v120 = *a2;
  v121 = v12;
  v11 = v120.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v120.u32[1];
    v16 = v120.i32[1] < v11;
    if (v120.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v120.u32[1];
    }

    if (v11 > v120.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v120.i32[2] < v17)
    {
      v16 = 2;
      v17 = v120.u32[2];
    }

    if (v15 <= v120.i32[2])
    {
      v15 = v120.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v120.i32[3] < v17)
    {
      v16 = 3;
      v17 = v120.u32[3];
    }

    if (v15 <= v120.i32[3])
    {
      v15 = v120.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v121.i32[0] < v17)
    {
      v16 = 4;
      v17 = v121.i32[0];
    }

    if (v15 <= v121.i32[0])
    {
      v15 = v121.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v121.i32[1] < v17)
    {
      v16 = 5;
      v17 = v121.u32[1];
    }

    if (v15 <= v121.i32[1])
    {
      v15 = v121.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v121.i32[2] < v17)
    {
      v16 = 6;
      v17 = v121.u32[2];
    }

    if (v15 <= v121.i32[2])
    {
      v15 = v121.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v121.i32[3] < v17)
    {
      v16 = 7;
      v17 = v121.u32[3];
    }

    if (v15 <= v121.i32[3])
    {
      v15 = v121.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if (v31 - 29 >= 3)
  {
    v32 = 31 - v31;
  }

  else
  {
    v32 = 2;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v15)
  {
    v34 = v15 == 1023;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (v32 < 3 && v15 == v17)
  {
    v33 = v35;
  }

  if ((a3 | 2) == 3)
  {
    v37 = 0;
    if (v17 <= 0x1FF && v15 >= 0x200)
    {
      v37 = kDQuadParamTable[10 * v33 + 168] == 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v33 > 5 || v37)
  {
    v39 = kDQuadParamTable[10 * v33 + 164];
    v40 = v37 ? 0 : -2;
    v41 = v39 >= 0xA ? 0 : v17 & ~(-1 << (10 - v39));
    v42 = v41 + v40;
    if (v42 >= 1 && __clz(v42 + v30) < v31)
    {
      ++v33;
    }
  }

  v43 = 0;
  v44 = 0;
  v45 = v33;
  v46 = &kDQuadParamTable[10 * v33];
  v47 = *(v46 + 81);
  v48 = v46[165];
  if (a4)
  {
    v49 = a5 == 0;
  }

  else
  {
    v49 = 1;
  }

  v51 = v49 || v47 >> v48 > 0x20;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = v51;
  }

  v53 = kDQuadParamTable[10 * v45 + 164];
  if (v53 >= 0xA)
  {
    v54 = 10;
  }

  else
  {
    v54 = v53;
  }

  if (v48 >= 0xA)
  {
    v55 = 10;
  }

  else
  {
    v55 = v48;
  }

  v56 = (-1 << (10 - v54)) & v17;
  v57 = v11 - v56;
  if (!v13)
  {
    v57 = 0;
  }

  v18 = !v14;
  v58 = v120.i32[1] - v56;
  if (v18)
  {
    v58 = 0;
  }

  v119[0] = v57;
  v119[1] = v58;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  v59 = v47 >> v55;
  v60 = v120.i32[2] - v56;
  if (!v19)
  {
    v60 = 0;
  }

  v61 = v120.i32[3] - v56;
  if (!v21)
  {
    v61 = 0;
  }

  v119[2] = v60;
  v119[3] = v61;
  v62 = v121.i32[0] - v56;
  if (!v23)
  {
    v62 = 0;
  }

  v63 = v121.i32[1] - v56;
  if (!v25)
  {
    v63 = 0;
  }

  v119[4] = v62;
  v119[5] = v63;
  v64 = v121.i32[2] - v56;
  if (!v27)
  {
    v64 = 0;
  }

  v65 = v121.i32[3] - v56;
  if (!v29)
  {
    v65 = 0;
  }

  v119[6] = v64;
  v119[7] = v65;
  if (v59 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v47 >> v55;
  }

  v67 = v16;
  v68 = 4 * v16;
  v69 = &byte_29D2F3081;
  do
  {
    if (v68 != v43)
    {
      if (v48)
      {
        v70 = v119[v43 / 4] / v66;
      }

      else
      {
        LODWORD(v70) = 0;
      }

      *(v117 + v44) = v70;
      if (v59 >= 2)
      {
        v71 = v119[v43 / 4];
        if (v71)
        {
          if (v71 / v66 * v66 == v71 && ((v71 / v66) & 1) != 0)
          {
            if (v56 || v70 != 1)
            {
              if ((a3 | 2) != 3 || (v73 = v120.u32[v43 / 4], v73 != 512) && ((a3 | 2) != 3 || v66 + 512 != v73))
              {
                LODWORD(v70) = v70 - 1;
                *(v117 + v44) = v70;
              }
            }

            else
            {
              LODWORD(v70) = 1;
            }
          }
        }
      }

      if (v70 >> v55 || v120.i32[v43 / 4] == 1023)
      {
        *(v117 + v44) = ~(-1 << v55);
      }

      if (*v69 >= a5 || *(v69 - 1) >= a4)
      {
        *(v117 + v44) = 0;
      }

      ++v44;
    }

    v43 += 4;
    v69 += 2;
  }

  while (v43 != 32);
  v74 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v75 = 8 * (a1 & 7);
  *(a1 + 4) = 0;
  *a1 = 0;
  if (!result)
  {
    if (v17 | v45)
    {
      v86 = v75 | 3;
      if (v45 < 3)
      {
        v87 = v45 + 1;
      }

      else
      {
        v87 = 0;
      }

      if (v45 >= 3)
      {
        v88 = (v45 + 6) & 7;
      }

      else
      {
        v88 = 0;
      }

      *v74 |= v88 << v75;
      if (v45 >= 3)
      {
        v90 = 0;
        v94 = 3;
        if (!v53)
        {
          goto LABEL_225;
        }

        goto LABEL_220;
      }

      v89 = 2 * (v45 < 3);
    }

    else
    {
      v87 = 0;
      v86 = v75 | 3;
      v89 = 2;
    }

    if (v89 - v75 + v86 <= 0x28)
    {
      v90 = 0;
      v91 = 0;
      do
      {
        v92 = 64 - v86;
        if (64 - v86 >= v89)
        {
          v92 = v89;
        }

        v74[v90] |= ((v87 >> v91) & ~(-1 << v92)) << v86;
        v91 += v92;
        v93 = v92 + v86;
        v90 += v93 >> 6;
        v86 = v93 & 0x3F;
        v89 -= v92;
      }

      while (v89);
    }

    else
    {
      v90 = 0;
    }

    v94 = 5;
    if (!v45)
    {
      goto LABEL_226;
    }

    if (!v53)
    {
LABEL_225:
      v94 += v54;
LABEL_226:
      if (v48)
      {
        if ((v86 - v75 + (v90 << 6) + 3) <= 0x28)
        {
          v100 = 0;
          v101 = 3;
          do
          {
            v102 = 64 - v86;
            if (64 - v86 >= v101)
            {
              v102 = v101;
            }

            v74[v90] |= ((v67 >> v100) & ~(-1 << v102)) << v86;
            v100 += v102;
            v103 = v102 + v86;
            v90 += v103 >> 6;
            v86 = v103 & 0x3F;
            v101 -= v102;
          }

          while (v101);
        }

        v94 += 3;
      }

      v104 = (37 * (40 - v94)) >> 8;
      v105 = -7 * v104 + 40 - v94;
      if ((v105 - 257) >= 0xFFFFFF00 && v86 - v75 + (v90 << 6) + v105 <= 0x28)
      {
        do
        {
          v106 = 64 - v86;
          if (64 - v86 >= v105)
          {
            v106 = v105;
          }

          v107 = v106 + v86;
          v90 += v107 >> 6;
          v86 = v107 & 0x3F;
          v105 -= v106;
        }

        while (v105);
      }

      v108 = 0;
      while (!v48)
      {
        v114 = v104;
        if (v104)
        {
          goto LABEL_249;
        }

LABEL_239:
        if (++v108 == 7)
        {
          return result;
        }
      }

      if ((v55 - v75 + v86 + (v90 << 6)) <= 0x28)
      {
        v109 = 0;
        v110 = *(v117 + v108);
        v111 = v55;
        do
        {
          v112 = 64 - v86;
          if (64 - v86 >= v111)
          {
            v112 = v111;
          }

          v74[v90] |= ((v110 >> v109) & ~(-1 << v112)) << v86;
          v109 += v112;
          v113 = v112 + v86;
          v90 += v113 >> 6;
          v86 = v113 & 0x3F;
          v111 -= v112;
        }

        while (v111);
      }

      v114 = v104 - v55;
      if (v104 == v55)
      {
        goto LABEL_239;
      }

LABEL_249:
      if (v114 <= 0x100 && v86 - v75 + (v90 << 6) + v114 <= 0x28)
      {
        do
        {
          v115 = 64 - v86;
          if (64 - v86 >= v114)
          {
            v115 = v114;
          }

          v116 = v115 + v86;
          v90 += v116 >> 6;
          v86 = v116 & 0x3F;
          v114 -= v115;
        }

        while (v114);
      }

      goto LABEL_239;
    }

LABEL_220:
    if ((v54 - v75 + v86 + (v90 << 6)) <= 0x28)
    {
      v95 = 0;
      v96 = v56 >> (10 - v54);
      v97 = v54;
      do
      {
        v98 = 64 - v86;
        if (64 - v86 >= v97)
        {
          v98 = v97;
        }

        v74[v90] |= ((v96 >> v95) & ~(-1 << v98)) << v86;
        v95 += v98;
        v99 = v98 + v86;
        v90 += v99 >> 6;
        v86 = v99 & 0x3F;
        v97 -= v98;
      }

      while (v97);
    }

    goto LABEL_225;
  }

  v76 = 0;
  v77 = 0;
  v78 = v75;
  do
  {
    v79 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v76;
    if (v79[1] >= a5 || *v79 >= a4)
    {
      v81 = 0;
    }

    else
    {
      v81 = v120.u32[v76] >> 5;
    }

    if ((v78 - v75 + (v77 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
    {
      v82 = 0;
      v83 = 5;
      do
      {
        v84 = 64 - v78;
        if (64 - v78 >= v83)
        {
          v84 = v83;
        }

        v74[v77] |= ((v81 >> v82) & ~(-1 << v84)) << v78;
        v82 += v84;
        v85 = v84 + v78;
        v77 += v85 >> 6;
        v78 = v85 & 0x3F;
        v83 -= v84;
      }

      while (v83);
    }

    ++v76;
  }

  while (v76 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = v4 | 5;
    *a2 = 32 * ((*v3 >> v4) & 0x1F);
    v6 = (v4 | 5) - v4;
    if ((v6 - 36) >= 0xFFFFFFFFFFFFFFD7)
    {
      v22 = 0;
      v7 = 0;
      v23 = 0;
      v24 = 5;
      do
      {
        v25 = 64 - v5;
        if (64 - v5 >= v24)
        {
          v25 = v24;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v25)) << v23;
        v22 |= result;
        v23 += v25;
        v26 = v25 + v5;
        v7 += v26 >> 6;
        v5 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v8 = 32 * (v22 & 0x1F);
      v6 = v5 - v4;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    a2[1] = v8;
    if ((v6 + (v7 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
    {
      v27 = 0;
      v28 = 0;
      v29 = 5;
      do
      {
        v30 = 64 - v5;
        if (64 - v5 >= v29)
        {
          v30 = v29;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v30)) << v28;
        v27 |= result;
        v28 += v30;
        v31 = v30 + v5;
        v7 += v31 >> 6;
        v5 = v31 & 0x3F;
        v29 -= v30;
      }

      while (v29);
      a2[2] = 32 * (v27 & 0x1F);
      if ((v5 - v4 + (v7 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
      {
        v34 = 0;
        v35 = 0;
        v36 = 5;
        do
        {
          v37 = 64 - v5;
          if (64 - v5 >= v36)
          {
            v37 = v36;
          }

          result = ((v3[v7] >> v5) & ~(-1 << v37)) << v35;
          v34 |= result;
          v35 += v37;
          v38 = v37 + v5;
          v7 += v38 >> 6;
          v5 = v38 & 0x3F;
          v36 -= v37;
        }

        while (v36);
        a2[3] = 32 * (v34 & 0x1F);
        if ((v5 - v4 + (v7 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
        {
          v39 = 0;
          v40 = 0;
          v41 = 5;
          do
          {
            v42 = 64 - v5;
            if (64 - v5 >= v41)
            {
              v42 = v41;
            }

            result = ((v3[v7] >> v5) & ~(-1 << v42)) << v40;
            v39 |= result;
            v40 += v42;
            v43 = v42 + v5;
            v7 += v43 >> 6;
            v5 = v43 & 0x3F;
            v41 -= v42;
          }

          while (v41);
          a2[4] = 32 * (v39 & 0x1F);
          if ((v5 - v4 + (v7 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
          {
            v44 = 0;
            v45 = 0;
            v46 = 5;
            do
            {
              v47 = 64 - v5;
              if (64 - v5 >= v46)
              {
                v47 = v46;
              }

              result = ((v3[v7] >> v5) & ~(-1 << v47)) << v45;
              v44 |= result;
              v45 += v47;
              v48 = v47 + v5;
              v7 += v48 >> 6;
              v5 = v48 & 0x3F;
              v46 -= v47;
            }

            while (v46);
            a2[5] = 32 * (v44 & 0x1F);
            if ((v5 - v4 + (v7 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
            {
              v49 = 0;
              v50 = 0;
              v51 = 5;
              do
              {
                v52 = 64 - v5;
                if (64 - v5 >= v51)
                {
                  v52 = v51;
                }

                result = ((v3[v7] >> v5) & ~(-1 << v52)) << v50;
                v49 |= result;
                v50 += v52;
                v53 = v52 + v5;
                v7 += v53 >> 6;
                v5 = v53 & 0x3F;
                v51 -= v52;
              }

              while (v51);
              v54 = v5 - v4 + (v7 << 6) - 36;
              a2[6] = 32 * (v49 & 0x1F);
              v33 = a2 + 7;
              if (v54 >= 0xFFFFFFFFFFFFFFD7)
              {
                v55 = 0;
                v56 = 0;
                v57 = 5;
                do
                {
                  v58 = 64 - v5;
                  if (64 - v5 >= v57)
                  {
                    v58 = v57;
                  }

                  result = ((v3[v7] >> v5) & ~(-1 << v58)) << v56;
                  v55 |= result;
                  v56 += v58;
                  v59 = v58 + v5;
                  v7 += v59 >> 6;
                  v5 = v59 & 0x3F;
                  v57 -= v58;
                }

                while (v57);
                v32 = 32 * (v55 & 0x1F);
              }

              else
              {
                v32 = 0;
              }

              goto LABEL_37;
            }

LABEL_36:
            v32 = 0;
            a2[6] = 0;
            v33 = a2 + 7;
LABEL_37:
            *v33 = v32;
            return result;
          }

LABEL_35:
          a2[5] = 0;
          goto LABEL_36;
        }

LABEL_34:
        a2[4] = 0;
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_34;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  v13 = 8 * (result & 7);
  do
  {
    if ((v13 - v4 + (v10 << 6) - 36) >= 0xFFFFFFFFFFFFFFD7)
    {
      v14 = 0;
      v15 = 0;
      v16 = 5;
      do
      {
        v17 = 64 - v13;
        if (64 - v13 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((v3[v10] >> v13) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v13;
        v10 += v18 >> 6;
        v13 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v19 = 32 * (v14 & 0x1F);
    if (v19 != 512 || v11 != 1)
    {
      v21 = v19 - (v14 & 1) + 16;
      if (v19 == 992)
      {
        v21 = 1023;
      }

      if (v19)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    result = v19 ^ v12;
    a2[v9++] = result;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  v7 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = v7 + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x26)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 2;
  do
  {
    v14 = 64 - v6;
    if (64 - v6 >= v13)
    {
      v14 = v13;
    }

    v11 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v14)) << v12;
    v12 += v14;
    v8 += (v14 + v6) >> 6;
    v6 = (v14 + v6) & 0x3F;
    v13 -= v14;
  }

  while (v13);
  v15 = v11 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v10 = 0;
      v9 = 1023;
      goto LABEL_6;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v9 = 0;
LABEL_18:
  v16 = v10;
  v17 = &kDQuadParamTable[10 * v10];
  v18 = v17[164];
  v19 = v17[165];
  if (v18 >= 0xA)
  {
    v20 = 10;
  }

  else
  {
    v20 = v18;
  }

  if (v19 >= 0xA)
  {
    v21 = 10;
  }

  else
  {
    v21 = v19;
  }

  v22 = 10 - v20;
  if (v10)
  {
    if (v18)
    {
      if ((v20 - v4 + v6 + (v8 << 6)) <= 0x28)
      {
        v23 = 0;
        v91 = 0;
        v92 = v20;
        do
        {
          v93 = 64 - v6;
          if (64 - v6 >= v92)
          {
            v93 = v92;
          }

          v23 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v93)) << v91;
          v91 += v93;
          v94 = v93 + v6;
          v8 += v94 >> 6;
          v6 = v94 & 0x3F;
          v92 -= v93;
        }

        while (v92);
      }

      else
      {
        v23 = 0;
      }

      v5 += v20;
      v9 = v23 << v22;
      if (!v19)
      {
        goto LABEL_84;
      }

      goto LABEL_30;
    }

    v9 = 0;
  }

  if (!v19)
  {
LABEL_84:
    v24 = 0;
    v36 = 0;
    v161 = 0;
    v162 = 0;
    v164 = 0;
    v163 = 0;
    goto LABEL_85;
  }

LABEL_30:
  if ((v6 - v4 + (v8 << 6) + 3) <= 0x28)
  {
    LODWORD(v24) = 0;
    v25 = 0;
    v26 = 3;
    do
    {
      v27 = 64 - v6;
      if (64 - v6 >= v26)
      {
        v27 = v26;
      }

      v24 = v24 | (((*(v3 + 8 * v8) >> v6) & ~(-1 << v27)) << v25);
      v25 += v27;
      v28 = v27 + v6;
      v8 += v28 >> 6;
      v6 = v28 & 0x3F;
      v26 -= v27;
    }

    while (v26);
  }

  else
  {
    v24 = 0;
  }

  v29 = 37 - v5;
  v30 = (37 * (37 - v5)) >> 8;
  v31 = v21 - v4;
  v32 = (v6 | (v8 << 6)) + -7 * v30 + v29;
  v33 = v32 & 0x3F;
  v34 = v31 + v33 + (v32 & 0xFFFFFFFFFFFFFFC0);
  v161 = 0;
  v162 = 0;
  v164 = 0;
  v163 = 0;
  v35 = v32 >> 6;
  if (v34 <= 0x28)
  {
    v36 = 0;
    v37 = 0;
    v38 = v21;
    do
    {
      v39 = 64 - v33;
      if (64 - v33 >= v38)
      {
        v39 = v38;
      }

      v36 |= ((*(v3 + 8 * v35) >> v33) & ~(-1 << v39)) << v37;
      v37 += v39;
      v40 = v39 + v33;
      v35 += v40 >> 6;
      v33 = v40 & 0x3F;
      v38 -= v39;
    }

    while (v38);
  }

  else
  {
    v36 = 0;
  }

  LODWORD(v161) = v36;
  v41 = v33 | (v35 << 6);
  v42 = v30 - v21;
  v43 = v41 + v42;
  v44 = (v41 + v42) & 0x3F;
  v45 = (v41 + v42) >> 6;
  if (v31 + v44 + (v43 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v46 = 0;
    v47 = 0;
    v48 = v21;
    do
    {
      v49 = 64 - v44;
      if (64 - v44 >= v48)
      {
        v49 = v48;
      }

      v46 |= ((*(v3 + 8 * v45) >> v44) & ~(-1 << v49)) << v47;
      v47 += v49;
      v50 = v49 + v44;
      v45 += v50 >> 6;
      v44 = v50 & 0x3F;
      v48 -= v49;
    }

    while (v48);
  }

  else
  {
    v46 = 0;
  }

  HIDWORD(v161) = v46;
  v51 = (v44 | (v45 << 6)) + v42;
  v52 = v51 & 0x3F;
  v53 = v51 >> 6;
  if (v31 + v52 + (v51 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v54 = 0;
    v55 = 0;
    v56 = v21;
    do
    {
      v57 = 64 - v52;
      if (64 - v52 >= v56)
      {
        v57 = v56;
      }

      v54 |= ((*(v3 + 8 * v53) >> v52) & ~(-1 << v57)) << v55;
      v55 += v57;
      v58 = v57 + v52;
      v53 += v58 >> 6;
      v52 = v58 & 0x3F;
      v56 -= v57;
    }

    while (v56);
  }

  else
  {
    v54 = 0;
  }

  LODWORD(v162) = v54;
  v59 = (v52 | (v53 << 6)) + v42;
  v60 = v59 & 0x3F;
  v61 = v59 >> 6;
  if (v31 + v60 + (v59 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v62 = 0;
    v63 = 0;
    v64 = v21;
    do
    {
      v65 = 64 - v60;
      if (64 - v60 >= v64)
      {
        v65 = v64;
      }

      v62 |= ((*(v3 + 8 * v61) >> v60) & ~(-1 << v65)) << v63;
      v63 += v65;
      v66 = v65 + v60;
      v61 += v66 >> 6;
      v60 = v66 & 0x3F;
      v64 -= v65;
    }

    while (v64);
  }

  else
  {
    v62 = 0;
  }

  HIDWORD(v162) = v62;
  v67 = (v60 | (v61 << 6)) + v42;
  v68 = v67 & 0x3F;
  v69 = v67 >> 6;
  if (v31 + v68 + (v67 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v70 = 0;
    v71 = 0;
    v72 = v21;
    do
    {
      v73 = 64 - v68;
      if (64 - v68 >= v72)
      {
        v73 = v72;
      }

      v70 |= ((*(v3 + 8 * v69) >> v68) & ~(-1 << v73)) << v71;
      v71 += v73;
      v74 = v73 + v68;
      v69 += v74 >> 6;
      v68 = v74 & 0x3F;
      v72 -= v73;
    }

    while (v72);
  }

  else
  {
    v70 = 0;
  }

  LODWORD(v163) = v70;
  v75 = (v68 | (v69 << 6)) + v42;
  v76 = v75 & 0x3F;
  v77 = v75 >> 6;
  if (v31 + v76 + (v75 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v78 = 0;
    v79 = 0;
    v80 = v21;
    do
    {
      v81 = 64 - v76;
      if (64 - v76 >= v80)
      {
        v81 = v80;
      }

      v78 |= ((*(v3 + 8 * v77) >> v76) & ~(-1 << v81)) << v79;
      v79 += v81;
      v82 = v81 + v76;
      v77 += v82 >> 6;
      v76 = v82 & 0x3F;
      v80 -= v81;
    }

    while (v80);
  }

  else
  {
    v78 = 0;
  }

  HIDWORD(v163) = v78;
  v83 = (v76 | (v77 << 6)) + v42;
  v84 = v83 & 0x3F;
  if (v31 + v84 + (v83 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v85 = 0;
    v86 = 0;
    v87 = v83 >> 6;
    v88 = v21;
    do
    {
      v89 = 64 - v84;
      if (64 - v84 >= v88)
      {
        v89 = v88;
      }

      v85 |= ((*(v3 + 8 * v87) >> v84) & ~(-1 << v89)) << v86;
      v86 += v89;
      v90 = v89 + v84;
      v87 += v90 >> 6;
      v84 = v90 & 0x3F;
      v88 -= v89;
    }

    while (v88);
  }

  else
  {
    v85 = 0;
  }

  v164 = v85;
LABEL_85:
  v95 = *&kDQuadParamTable[10 * v16 + 162];
  if (v95 >> v21 <= 1)
  {
    v96 = 1;
  }

  else
  {
    v96 = v95 >> v21;
  }

  v97 = v96 >> 1;
  if (v96 >> 1 >= (1 << v22) >> 1)
  {
    v98 = (1 << v22) >> 1;
  }

  else
  {
    v98 = v96 >> 1;
  }

  v99 = v9;
  v100 = 512 - v9;
  result = v100 / v96;
  v102 = v95 + v9;
  v103 = -1 << v21;
  if (!v9)
  {
    v98 = 0;
  }

  v104 = v9 == 512;
  v105 = v96 > v100;
  if (v19)
  {
    if (v24)
    {
      v106 = result == v36;
      if (!(v9 | v36))
      {
        v107 = 0;
LABEL_103:
        v108 = 1;
        goto LABEL_104;
      }

      if (v102 < 0x400 || (v103 ^ v36) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v107 = v97 + v96 * v36;
        goto LABEL_103;
      }

      v108 = 1;
      v107 = 1023;
    }

    else
    {
      v108 = 0;
      v107 = v98;
      v106 = v9 == 512;
    }
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = v105;
  }

LABEL_104:
  v109 = a3 & 0xFFFFFFFD;
  v110 = v107 + v9;
  v111 = v110;
  if (a3 == 4)
  {
    v111 = 2139095039;
    if ((v110 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v110 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v111 = 4286578687;
      }

      else
      {
        v111 = v110;
      }
    }
  }

  v112 = 1023;
  if (v111 < 0x3FF)
  {
    v112 = v111;
  }

  if (v106)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112 ^ 0x200;
  }

  if (v109 != 1)
  {
    v113 = v112;
  }

  *a2 = v113;
  if (v19)
  {
    if (v24 == 1)
    {
      v114 = v98;
      v115 = v9 == 512;
    }

    else
    {
      v116 = *(&v161 | (4 * v108));
      v115 = result == v116;
      if (v9 | v116)
      {
        if (v102 >= 0x400 && (v103 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v114 = 1023;
        }

        else
        {
          v114 = v97 + v96 * v116;
        }
      }

      else
      {
        v114 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v114 = 0;
    v115 = v105;
  }

  v117 = v114 + v9;
  v118 = v117;
  if (a3 == 4)
  {
    v118 = 2139095039;
    if ((v117 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v117 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v118 = 4286578687;
      }

      else
      {
        v118 = v117;
      }
    }
  }

  v119 = 1023;
  if (v118 < 0x3FF)
  {
    v119 = v118;
  }

  if (v115)
  {
    v120 = 0;
  }

  else
  {
    v120 = v119 ^ 0x200;
  }

  if (v109 != 1)
  {
    v120 = v119;
  }

  a2[1] = v120;
  if (v19)
  {
    if (v24 == 2)
    {
      v121 = v98;
      v122 = v9 == 512;
    }

    else
    {
      v123 = *(&v161 + v108);
      v122 = result == v123;
      if (v9 | v123)
      {
        if (v102 >= 0x400 && (v103 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v121 = 1023;
        }

        else
        {
          v121 = v97 + v96 * v123;
        }
      }

      else
      {
        v121 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v121 = 0;
    v122 = v105;
  }

  v124 = v121 + v9;
  v125 = v124;
  if (a3 == 4)
  {
    v125 = 2139095039;
    if ((v124 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v124 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v125 = 4286578687;
      }

      else
      {
        v125 = v124;
      }
    }
  }

  v126 = 1023;
  if (v125 < 0x3FF)
  {
    v126 = v125;
  }

  if (v122)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126 ^ 0x200;
  }

  if (v109 != 1)
  {
    v127 = v126;
  }

  a2[2] = v127;
  if (v19)
  {
    if (v24 == 3)
    {
      v128 = v98;
      v129 = v9 == 512;
    }

    else
    {
      v130 = *(&v161 + v108);
      v129 = result == v130;
      if (v9 | v130)
      {
        if (v102 >= 0x400 && (v103 ^ v130) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v128 = 1023;
        }

        else
        {
          v128 = v97 + v96 * v130;
        }
      }

      else
      {
        v128 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v128 = 0;
    v129 = v105;
  }

  v131 = v128 + v9;
  v132 = v131;
  if (a3 == 4)
  {
    v132 = 2139095039;
    if ((v131 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v131 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v132 = 4286578687;
      }

      else
      {
        v132 = v131;
      }
    }
  }

  v133 = 1023;
  if (v132 < 0x3FF)
  {
    v133 = v132;
  }

  if (v129)
  {
    v134 = 0;
  }

  else
  {
    v134 = v133 ^ 0x200;
  }

  if (v109 != 1)
  {
    v134 = v133;
  }

  a2[3] = v134;
  if (v19)
  {
    if (v24 == 4)
    {
      v135 = v98;
      v136 = v9 == 512;
    }

    else
    {
      v137 = *(&v161 + v108);
      v136 = result == v137;
      if (v9 | v137)
      {
        if (v102 >= 0x400 && (v103 ^ v137) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v135 = 1023;
        }

        else
        {
          v135 = v97 + v96 * v137;
        }
      }

      else
      {
        v135 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v135 = 0;
    v136 = v105;
  }

  v138 = v135 + v9;
  v139 = v138;
  if (a3 == 4)
  {
    v139 = 2139095039;
    if ((v138 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v138 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v139 = 4286578687;
      }

      else
      {
        v139 = v138;
      }
    }
  }

  v140 = 1023;
  if (v139 < 0x3FF)
  {
    v140 = v139;
  }

  if (v136)
  {
    v141 = 0;
  }

  else
  {
    v141 = v140 ^ 0x200;
  }

  if (v109 != 1)
  {
    v141 = v140;
  }

  a2[4] = v141;
  if (v19)
  {
    if (v24 == 5)
    {
      v142 = v98;
      v143 = v9 == 512;
    }

    else
    {
      v144 = *(&v161 + v108);
      v143 = result == v144;
      if (v9 | v144)
      {
        if (v102 >= 0x400 && (v103 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v142 = 1023;
        }

        else
        {
          v142 = v97 + v96 * v144;
        }
      }

      else
      {
        v142 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v142 = 0;
    v143 = v105;
  }

  v145 = v142 + v9;
  v146 = v145;
  if (a3 == 4)
  {
    v146 = 2139095039;
    if ((v145 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v145 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v146 = 4286578687;
      }

      else
      {
        v146 = v145;
      }
    }
  }

  v147 = 1023;
  if (v146 < 0x3FF)
  {
    v147 = v146;
  }

  if (v143)
  {
    v148 = 0;
  }

  else
  {
    v148 = v147 ^ 0x200;
  }

  if (v109 != 1)
  {
    v148 = v147;
  }

  a2[5] = v148;
  if (v19)
  {
    if (v24 == 6)
    {
      v149 = v98;
      v150 = v9 == 512;
    }

    else
    {
      v151 = *(&v161 + v108);
      v150 = result == v151;
      if (v9 | v151)
      {
        if (v102 >= 0x400 && (v103 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v149 = 1023;
        }

        else
        {
          v149 = v97 + v96 * v151;
        }
      }

      else
      {
        v149 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v149 = 0;
    v150 = v105;
  }

  v152 = v149 + v9;
  v153 = v152;
  if (a3 == 4)
  {
    v153 = 2139095039;
    if ((v152 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v152 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v153 = 4286578687;
      }

      else
      {
        v153 = v152;
      }
    }
  }

  v154 = 1023;
  if (v153 < 0x3FF)
  {
    v154 = v153;
  }

  if (v150)
  {
    v155 = 0;
  }

  else
  {
    v155 = v154 ^ 0x200;
  }

  if (v109 != 1)
  {
    v155 = v154;
  }

  a2[6] = v155;
  if (v19)
  {
    if (v24 != 7)
    {
      v156 = *(&v161 + v108);
      v104 = result == v156;
      if (v9 | v156)
      {
        if (v102 >= 0x400 && (v103 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v98 = 1023;
        }

        else
        {
          v98 = v97 + v96 * v156;
        }
      }

      else
      {
        v98 = 0;
      }
    }
  }

  else
  {
    v98 = 0;
    v104 = v105;
  }

  v157 = v98 + v9;
  v158 = v157;
  if (a3 == 4)
  {
    v158 = 2139095039;
    if ((v157 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v157 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v158 = 4286578687;
      }

      else
      {
        v158 = v98 + v99;
      }
    }
  }

  v159 = 1023;
  if (v158 < 0x3FF)
  {
    v159 = v158;
  }

  v160 = v159 ^ 0x200;
  if (v104)
  {
    v160 = 0;
  }

  if (v109 == 1)
  {
    v159 = v160;
  }

  a2[7] = v159;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 5;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 10;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 15;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 6uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 6uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 6uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 6uLL);
    return 20;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x27u:
      v32.i64[0] = 0xA000A000A000ALL;
      v32.i64[1] = 0xA000A000A000ALL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xAuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xAuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xAuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xAuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 6uLL);
      v76 = vshlq_n_s16(v67, 6uLL);
      v77 = vshlq_n_s16(v63, 6uLL);
      v78 = vshlq_n_s16(v74, 6uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 40;
    case 1u:
      v18 = vdupq_n_s16(*a3 << 6);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 16;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x31)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = v85 + 160;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x38;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 10;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 10;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 6uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 6uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 6uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 6uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, int a4)
{
  if (a4 > 78)
  {
    if (a4 == 79)
    {
      v74.i64[0] = 0xA000A000A000ALL;
      v74.i64[1] = 0xA000A000A000ALL;
      v75 = vmovl_u16(*&vpaddq_s16(v74, v74));
      v76 = vpaddq_s32(v75, v75).u64[0];
      v77.i64[0] = v76;
      v77.i64[1] = HIDWORD(v76);
      v78 = v77;
      v79 = vaddvq_s64(v77);
      v80 = 0uLL;
      if (v79 > 0x80)
      {
        v179 = 0uLL;
        v175 = 0uLL;
        v176 = 0uLL;
        v178 = 0uLL;
        v177 = 0uLL;
        v185 = 0uLL;
        v184 = 0uLL;
      }

      else
      {
        v81 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v82 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
        v83.i64[0] = v82.u32[0];
        v83.i64[1] = v82.u32[1];
        v84 = v83;
        v85 = vzip1q_s64(0, v78);
        v86 = 8 * (a3 & 7);
        v87 = v79 + v86;
        v88 = vaddq_s64(v85, vdupq_n_s64(v86));
        v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v88)));
        if (v79 + v86 >= 0x81)
        {
          v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v89);
        }

        v90 = vnegq_s64(v84);
        v91 = vshlq_u64(v89, v90);
        v92 = v87 & 0x3F;
        v93 = (v81 + 8 * (v87 >> 6));
        v94 = vaddq_s64(v85, vdupq_n_s64(v92));
        v95 = v79 + v87;
        v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v94)));
        if (v79 + v92 >= 0x81)
        {
          v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v96);
        }

        v97 = vzip2q_s64(v89, v91);
        v98 = vzip1q_s64(v89, v91);
        v99 = vshlq_u64(v96, v90);
        v100 = vzip2q_s64(v96, v99);
        v101 = vzip1q_s64(v96, v99);
        v102 = v95 & 0x3F;
        v103 = (v81 + 8 * (v95 >> 6));
        v104 = vaddq_s64(v85, vdupq_n_s64(v102));
        v105 = v79 + v95;
        v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v104)));
        if (v79 + v102 >= 0x81)
        {
          v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v106);
        }

        v107 = vuzp1q_s32(v98, v97);
        v108 = vuzp1q_s32(v101, v100);
        v109 = vshlq_u64(v106, v90);
        v110 = vuzp1q_s32(vzip1q_s64(v106, v109), vzip2q_s64(v106, v109));
        v111 = v105 & 0x3F;
        v112 = (v81 + 8 * (v105 >> 6));
        v113 = vaddq_s64(v85, vdupq_n_s64(v111));
        v114 = v79 + v105;
        v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v113)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v113)));
        if (v79 + v111 >= 0x81)
        {
          v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v113)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v113))), v115);
        }

        v116.i64[0] = 0x1000100010001;
        v116.i64[1] = 0x1000100010001;
        v117 = vshrq_n_u32(v107, 0xAuLL);
        v118 = vshrq_n_u32(v108, 0xAuLL);
        v119 = vshrq_n_u32(v110, 0xAuLL);
        v120 = vshlq_u64(v115, v90);
        v121 = vuzp1q_s32(vzip1q_s64(v115, v120), vzip2q_s64(v115, v120));
        v122 = vshrq_n_u32(v121, 0xAuLL);
        v123 = v114 & 0x3F;
        v124 = (v81 + 8 * (v114 >> 6));
        v125 = vaddq_s64(v85, vdupq_n_s64(v123));
        v126 = v79 + v114;
        v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v125)));
        if (v79 + v123 >= 0x81)
        {
          v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
        }

        v128 = vshlq_n_s16(v116, 0xAuLL);
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v130 = vzip2q_s32(v107, v117);
        v131 = vzip1q_s32(v107, v117);
        v132 = vzip2q_s32(v108, v118);
        v133 = vzip1q_s32(v108, v118);
        v134 = vzip2q_s32(v110, v119);
        v135 = vzip1q_s32(v110, v119);
        v136 = vzip2q_s32(v121, v122);
        v137 = vzip1q_s32(v121, v122);
        v138 = vshlq_u64(v127, v90);
        v139 = vuzp1q_s32(vzip1q_s64(v127, v138), vzip2q_s64(v127, v138));
        v140 = vshrq_n_u32(v139, 0xAuLL);
        v141 = vzip2q_s32(v139, v140);
        v142 = vzip1q_s32(v139, v140);
        v143 = (v81 + 8 * (v126 >> 6));
        v144 = vaddq_s64(v85, vdupq_n_s64(v126 & 0x3F));
        v145 = v79 + v126;
        v146 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v144)));
        if (v79 + (v126 & 0x3F) >= 0x81)
        {
          v146 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v146);
        }

        v147 = vaddq_s16(v128, v129);
        v148 = vuzp1q_s16(v131, v130);
        v149 = vuzp1q_s16(v133, v132);
        v150 = vuzp1q_s16(v135, v134);
        v151 = vuzp1q_s16(v137, v136);
        v152 = vuzp1q_s16(v142, v141);
        v153 = vshlq_u64(v146, v90);
        v154 = vuzp1q_s32(vzip1q_s64(v146, v153), vzip2q_s64(v146, v153));
        v155 = vshrq_n_u32(v154, 0xAuLL);
        v156 = vuzp1q_s16(vzip1q_s32(v154, v155), vzip2q_s32(v154, v155));
        v157 = v79 + v145;
        v158 = v145 & 0x3F;
        v159 = vaddq_s64(v85, vdupq_n_s64(v158));
        v160 = (v81 + 8 * (v145 >> 6));
        v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
        if (v79 + v158 >= 0x81)
        {
          v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
        }

        v162 = vandq_s8(v147, v148);
        v163 = vandq_s8(v147, v149);
        v164 = vandq_s8(v147, v150);
        v165 = vandq_s8(v147, v151);
        v166 = vandq_s8(v147, v152);
        v167 = vandq_s8(v147, v156);
        v168 = vshlq_u64(v161, v90);
        v169 = vuzp1q_s32(vzip1q_s64(v161, v168), vzip2q_s64(v161, v168));
        v170 = vshrq_n_u32(v169, 0xAuLL);
        v171 = (v81 + 8 * (v157 >> 6));
        v172 = vaddq_s64(v85, vdupq_n_s64(v157 & 0x3F));
        v173 = vandq_s8(v147, vuzp1q_s16(vzip1q_s32(v169, v170), vzip2q_s32(v169, v170)));
        v174 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v172)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v172)));
        if (v79 + (v157 & 0x3F) >= 0x81)
        {
          v174 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v172)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v172))), v174);
        }

        v175 = vshlq_n_s16(v162, 6uLL);
        v176 = vshlq_n_s16(v163, 6uLL);
        v177 = vshlq_n_s16(v164, 6uLL);
        v178 = vshlq_n_s16(v165, 6uLL);
        v80 = vshlq_n_s16(v166, 6uLL);
        v179 = vshlq_n_s16(v167, 6uLL);
        v180 = vshlq_u64(v174, v90);
        v181 = vuzp1q_s32(vzip1q_s64(v174, v180), vzip2q_s64(v174, v180));
        v182 = vshrq_n_u32(v181, 0xAuLL);
        v183 = vandq_s8(v147, vuzp1q_s16(vzip1q_s32(v181, v182), vzip2q_s32(v181, v182)));
        v184 = vshlq_n_s16(v173, 6uLL);
        v185 = vshlq_n_s16(v183, 6uLL);
      }

      v186 = (a1 + a2);
      *a1 = vzip1q_s64(v175, v176);
      a1[1] = vzip1q_s64(v80, v179);
      v187 = (a1 + 2 * a2);
      *v186 = vzip2q_s64(v175, v176);
      v186[1] = vzip2q_s64(v80, v179);
      *v187 = vzip1q_s64(v177, v178);
      v187[1] = vzip1q_s64(v184, v185);
      v188 = (v187 + a2);
      *v188 = vzip2q_s64(v177, v178);
      v188[1] = vzip2q_s64(v184, v185);
      return 80;
    }

    if (a4 == 127)
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      v13 = a3[4];
      v14 = a3[5];
      v15 = a3[6];
      v16 = a3[7];
      v17 = (a1 + a2);
      *a1 = vzip1q_s64(*a3, v10);
      a1[1] = vzip1q_s64(v13, v14);
      v18 = (a1 + 2 * a2);
      *v17 = vzip2q_s64(v9, v10);
      v17[1] = vzip2q_s64(v13, v14);
      *v18 = vzip1q_s64(v11, v12);
      v18[1] = vzip1q_s64(v15, v16);
      v19 = (v18 + a2);
      *v19 = vzip2q_s64(v11, v12);
      v19[1] = vzip2q_s64(v15, v16);
      return 128;
    }
  }

  else
  {
    if (!a4)
    {
      v8 = 0;
      v70 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      v71 = &a1->i8[a2];
      *v71 = 0u;
      *(v71 + 1) = 0u;
      v72 = &a1->i8[2 * a2];
      *v72 = 0u;
      *(v72 + 1) = 0u;
      v73 = &a1->i8[2 * a2 + a2];
LABEL_120:
      *v73 = v70;
      *(v73 + 1) = v70;
      return v8;
    }

    if (a4 == 2)
    {
      v4 = vdupq_n_s32((a3->i32[0] << 12) & 0xFFC00000 | ((a3->i32[0] & 0x3FF) << 6));
      *a1 = v4;
      a1[1] = v4;
      v5 = &a1->i8[a2];
      *v5 = v4;
      v5[1] = v4;
      v6 = (a1 + 2 * a2);
      *v6 = v4;
      v6[1] = v4;
      v7 = (a1 + 2 * a2 + a2);
      *v7 = v4;
      v7[1] = v4;
      return 3;
    }
  }

  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 18;
  v23 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x2F)
  {
    v23 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v24.i32[0] = v23;
  v24.i32[1] = v23 >> 5;
  v25 = vand_s8(v24, 0x1F0000001FLL);
  v26 = vuzp1_s16(v25, v25);
  v27.i32[0] = v23 >> 10;
  v27.i32[1] = v23 >> 14;
  v28 = vuzp1_s16(vadd_s32(vand_s8(v27, 0xF0000000FLL), 0x100000001), v26);
  v29 = v20 + 38;
  v30 = v22 & 0x3A;
  v31 = (v21 + ((v22 >> 3) & 8));
  v32 = *v31 >> (v22 & 0x3A);
  if (v30 >= 0x2D)
  {
    v32 |= v31[1] << -v30;
  }

  v33 = vdupq_lane_s32(v26, 0);
  v34 = vdupq_lane_s32(v28, 0);
  v35 = (8 * (a3 & 7)) | 0x280;
  v36.i64[0] = 0x3000300030003;
  v36.i64[1] = 0x3000300030003;
  v37 = vandq_s8(v33, v36);
  v38 = vbicq_s8(v34, vceqq_s16(v37, v36));
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v39 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v33.i8, 0x4000400040004)))), v36);
  if (vmaxvq_s8(v39) < 1)
  {
    v48 = 0;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v65 = v38;
    v64 = v38;
    v63 = v38;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v62 = v38;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
  }

  else
  {
    v40 = vmovl_u8(*&vpaddq_s8(v39, v39));
    v41 = vmovl_u16(*&vpaddq_s16(v40, v40));
    v42 = vpaddq_s32(v41, v41).u64[0];
    v43.i64[0] = v42;
    v43.i64[1] = HIDWORD(v42);
    v44 = v43;
    v45 = vaddvq_s64(v43);
    v46 = v29 + v45;
    v47 = v45 <= 0x80 && v35 >= v46;
    v48 = !v47;
    v49 = 0uLL;
    if (v47)
    {
      v50 = v29 & 0x3E;
      v51 = vaddq_s64(vdupq_n_s64(v50), vzip1q_s64(0, v44));
      v52 = (v21 + ((v29 >> 3) & 8));
      v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v50 + v45 >= 0x81)
      {
        v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v49);
      }

      v29 = v46;
    }

    v53 = vzip1_s32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
    v54.i64[0] = v53.u32[0];
    v54.i64[1] = v53.u32[1];
    v55 = vshlq_u64(v49, vnegq_s64(v54));
    v56 = vuzp1q_s32(vzip1q_s64(v49, v55), vzip2q_s64(v49, v55));
    v57 = vshlq_u32(v56, vnegq_s32((*&v40 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
    v56.i64[0] = 0x101010101010101;
    v56.i64[1] = 0x101010101010101;
    *v59.i8 = vand_s8(vadd_s8(*&vshlq_s8(v56, v39), -1), vmovn_s16(vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v39.i8, *v33.i8)))))));
    v59.i64[1] = v59.i64[0];
    *v59.i8 = vqtbl1_s8(v59, 0x703060205010400);
    *v58.i8 = vdup_lane_s16(*v59.i8, 0);
    *v56.i8 = vdup_lane_s16(*v59.i8, 1);
    v60 = vdup_lane_s16(*v59.i8, 2);
    v61 = vdup_lane_s16(*v59.i8, 3);
    v62 = vsubw_s8(v38, *v58.i8);
    v63 = vsubw_s8(v38, *v56.i8);
    v64 = vsubw_s8(v38, v60);
    v65 = vsubw_s8(v38, v61);
    v66 = vmovl_s8(vceqz_s8(*v58.i8));
    v67 = vmovl_s8(vceqz_s8(*v56.i8));
    v68 = vmovl_s8(vceqz_s8(v60));
    v69 = vmovl_s8(vceqz_s8(v61));
  }

  v189.i64[0] = 0x8000800080008;
  v189.i64[1] = 0x8000800080008;
  v190 = 0uLL;
  v191 = vandq_s8(vextq_s8(vtstq_s16(v33, v189), 0, 0xCuLL), v38);
  v192 = vmovl_u16(*&vpaddq_s16(v191, v191));
  v193 = vpaddq_s32(v192, v192).u64[0];
  v194.i64[0] = v193;
  v194.i64[1] = HIDWORD(v193);
  v195 = v194;
  v196 = vaddvq_s64(v194);
  v197 = v29 + v196;
  if (v196 <= 0x80 && v35 >= v197)
  {
    v199 = v29 & 0x3F;
    v200 = vaddq_s64(vdupq_n_s64(v199), vzip1q_s64(0, v195));
    v201 = (v21 + 8 * (v29 >> 6));
    v190 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
    if (v199 + v196 >= 0x81)
    {
      v190 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v190);
    }

    v29 = v197;
  }

  else
  {
    v48 = 1;
  }

  v202 = v33.i8[0] & 3;
  if (v202 == 2)
  {
    v203 = v35 < v29 + 8;
    v204 = v29 + 16;
    if (v35 >= v29 + 8)
    {
      v29 += 8;
    }

    else
    {
      v204 = v29 + 8;
    }

    if (v35 < v204)
    {
      v205 = 1;
    }

    else
    {
      v29 = v204;
      v205 = v203;
    }

    v48 |= v205;
  }

  v206 = 0uLL;
  v207 = vextq_s8(0, v62, 0xCuLL);
  v208 = vmovl_u16(*&vpaddq_s16(v207, v207));
  v209 = vpaddq_s32(v208, v208).u64[0];
  v210.i64[0] = v209;
  v210.i64[1] = HIDWORD(v209);
  v211 = v210;
  v212 = vaddvq_s64(v210);
  v213 = v29 + v212;
  if (v212 <= 0x80 && v35 >= v213)
  {
    v216 = v29 & 0x3F;
    v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v211));
    v218 = (v21 + 8 * (v29 >> 6));
    v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
    if (v216 + v212 >= 0x81)
    {
      v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v215);
    }

    v29 = v213;
  }

  else
  {
    v48 = 1;
    v215 = 0uLL;
  }

  v219 = vmovl_u16(*&vpaddq_s16(v62, v62));
  v220 = vpaddq_s32(v219, v219).u64[0];
  v221.i64[0] = v220;
  v221.i64[1] = HIDWORD(v220);
  v222 = v221;
  v223 = vaddvq_s64(v221);
  v224 = v29 + v223;
  if (v223 <= 0x80 && v35 >= v224)
  {
    v226 = v29 & 0x3F;
    v227 = vaddq_s64(vdupq_n_s64(v226), vzip1q_s64(0, v222));
    v228 = (v21 + 8 * (v29 >> 6));
    v206 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v228, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v227)), vshlq_u64(vdupq_lane_s64(v228->i64[0], 0), vnegq_s64(v227)));
    if (v226 + v223 >= 0x81)
    {
      v206 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v228[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v227)), vshlq_u64(vdupq_laneq_s64(v228[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v227))), v206);
    }

    v29 = v224;
  }

  else
  {
    v48 = 1;
  }

  v229 = vmovl_u16(*&vpaddq_s16(v63, v63));
  v230 = vpaddq_s32(v229, v229).u64[0];
  v231.i64[0] = v230;
  v231.i64[1] = HIDWORD(v230);
  v232 = v231;
  v233 = vaddvq_s64(v231);
  v234 = v29 + v233;
  v235 = 0uLL;
  if (v233 <= 0x80 && v35 >= v234)
  {
    v238 = v29 & 0x3F;
    v239 = vaddq_s64(vdupq_n_s64(v238), vzip1q_s64(0, v232));
    v240 = (v21 + 8 * (v29 >> 6));
    v237 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v240, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v239)), vshlq_u64(vdupq_lane_s64(v240->i64[0], 0), vnegq_s64(v239)));
    if (v238 + v233 >= 0x81)
    {
      v237 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v240[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v239)), vshlq_u64(vdupq_laneq_s64(v240[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v239))), v237);
    }

    v29 = v234;
    if (v233 > 0x80)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v48 = 1;
    v237 = 0uLL;
    if (v233 > 0x80)
    {
      goto LABEL_91;
    }
  }

  v241 = v29 + v233;
  if (v35 >= v29 + v233)
  {
    v242 = v29 & 0x3F;
    v243 = vaddq_s64(vdupq_n_s64(v242), vzip1q_s64(0, v232));
    v244 = (v21 + 8 * (v29 >> 6));
    v235 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v244, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v243)), vshlq_u64(vdupq_lane_s64(v244->i64[0], 0), vnegq_s64(v243)));
    if (v242 + v233 >= 0x81)
    {
      v235 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v244[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v243)), vshlq_u64(vdupq_laneq_s64(v244[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v243))), v235);
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = 1;
  v241 = v29;
LABEL_92:
  v245 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v246 = vpaddq_s32(v245, v245).u64[0];
  v247.i64[0] = v246;
  v247.i64[1] = HIDWORD(v246);
  v248 = v247;
  v249 = vaddvq_s64(v247);
  v250 = 0uLL;
  if (v249 > 0x80 || (v251 = v241 + v249, v35 < v241 + v249))
  {
    v48 = 1;
    v251 = v241;
    v254 = 0uLL;
  }

  else
  {
    v252 = vaddq_s64(vdupq_n_s64(v241 & 0x3F), vzip1q_s64(0, v248));
    v253 = (v21 + 8 * (v241 >> 6));
    v254 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v253, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v252)), vshlq_u64(vdupq_lane_s64(v253->i64[0], 0), vnegq_s64(v252)));
    if ((v241 & 0x3F) + v249 >= 0x81)
    {
      v254 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v253[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v252)), vshlq_u64(vdupq_laneq_s64(v253[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v252))), v254);
    }
  }

  if (v249 > 0x80 || (v255 = v251 + v249, v35 < v251 + v249))
  {
    v48 = 1;
    v255 = v251;
  }

  else
  {
    v256 = vaddq_s64(vdupq_n_s64(v251 & 0x3F), vzip1q_s64(0, v248));
    v257 = (v21 + 8 * (v251 >> 6));
    v250 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v257, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v256)), vshlq_u64(vdupq_lane_s64(v257->i64[0], 0), vnegq_s64(v256)));
    if ((v251 & 0x3F) + v249 >= 0x81)
    {
      v250 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v257[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v256)), vshlq_u64(vdupq_laneq_s64(v257[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v256))), v250);
    }
  }

  v258 = vmovl_u16(*&vpaddq_s16(v65, v65));
  v259 = vpaddq_s32(v258, v258).u64[0];
  v260.i64[0] = v259;
  v260.i64[1] = HIDWORD(v259);
  v261 = v260;
  v262 = vaddvq_s64(v260);
  if (v262 > 0x80 || (v263 = v255 + v262, v35 < v255 + v262))
  {
    v48 = 1;
    v263 = v255;
    v267 = 0uLL;
  }

  else
  {
    v264 = v255 & 0x3F;
    v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v261));
    v266 = (v21 + 8 * (v255 >> 6));
    v267 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
    if (v264 + v262 >= 0x81)
    {
      v267 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v267);
    }
  }

  if (v262 > 0x80 || v35 < v263 + v262)
  {
    goto LABEL_115;
  }

  v268 = vaddq_s64(vdupq_n_s64(v263 & 0x3F), vzip1q_s64(0, v261));
  v269 = (v21 + 8 * (v263 >> 6));
  v270 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v269, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v268)), vshlq_u64(vdupq_lane_s64(v269->i64[0], 0), vnegq_s64(v268)));
  if ((v263 & 0x3F) + v262 >= 0x81)
  {
    v270 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v269[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v268)), vshlq_u64(vdupq_laneq_s64(v269[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v268))), v270);
  }

  if ((v48 & 1) != 0 || (v8 = a4 + 1, v35 + 8 * v8 - (v263 + v262) - 640 >= 9))
  {
LABEL_115:
    v271 = 0;
    v272 = 0;
    v273 = 8 * (v431 & 7);
    v274 = 10;
    do
    {
      v275 = 64 - v273;
      if (64 - v273 >= v274)
      {
        v275 = v274;
      }

      *&v431[8 * v271] |= ((0xFFFFFFFFFFFFFFFFLL >> v272) & ~(-1 << v275)) << v273;
      v272 += v275;
      v276 = v275 + v273;
      v271 += v276 >> 6;
      v273 = v276 & 0x3F;
      v274 -= v275;
    }

    while (v274);
LABEL_119:
    v8 = 0;
    v277 = &a1->i8[a2];
    v70 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v278 = &a1->i8[2 * a2];
    *v277 = 0u;
    *(v277 + 1) = 0u;
    v73 = &a1->i8[2 * a2 + a2];
    *v278 = 0u;
    *(v278 + 1) = 0u;
    goto LABEL_120;
  }

  if (v202 == 2)
  {
    v280 = 0;
    v281 = 0;
    v282 = 8 * (&v432 & 7);
    v283 = 10;
    do
    {
      v284 = 64 - v282;
      if (64 - v282 >= v283)
      {
        v284 = v283;
      }

      *&v431[8 * v280] |= ((0xFFFFFFFFFFFFFFFFLL >> v281) & ~(-1 << v284)) << v282;
      v281 += v284;
      v285 = v284 + v282;
      v280 += v285 >> 6;
      v282 = v285 & 0x3F;
      v283 -= v284;
    }

    while (v283);
    goto LABEL_119;
  }

  v286 = vzip1_s32(*v192.i8, *&vextq_s8(v192, v192, 8uLL));
  v287 = vzip1_s32(*v229.i8, *&vextq_s8(v229, v229, 8uLL));
  v288 = vzip1_s32(*v245.i8, *&vextq_s8(v245, v245, 8uLL));
  v289 = vzip1_s32(*v258.i8, *&vextq_s8(v258, v258, 8uLL));
  v290.i64[0] = v286.u32[0];
  v290.i64[1] = v286.u32[1];
  v291 = v290;
  v290.i64[0] = v287.u32[0];
  v290.i64[1] = v287.u32[1];
  v292 = v290;
  v290.i64[0] = v288.u32[0];
  v290.i64[1] = v288.u32[1];
  v293 = v290;
  v290.i64[0] = v289.u32[0];
  v290.i64[1] = v289.u32[1];
  v294 = vnegq_s64(v291);
  v295 = vnegq_s64(v292);
  v296 = vnegq_s64(v293);
  v297 = vnegq_s64(v290);
  v298 = vshlq_u64(v190, v294);
  v299 = vshlq_u64(v237, v295);
  v300 = vshlq_u64(v235, v295);
  v301 = vshlq_u64(v254, v296);
  v302 = vshlq_u64(v250, v296);
  v303 = vshlq_u64(v267, v297);
  v304 = vzip2q_s64(v190, v298);
  v305 = vzip1q_s64(v190, v298);
  v306 = vzip2q_s64(v237, v299);
  v307 = vzip1q_s64(v237, v299);
  v308 = vzip2q_s64(v235, v300);
  v309 = vzip1q_s64(v235, v300);
  v310 = vzip2q_s64(v254, v301);
  v311 = vzip1q_s64(v254, v301);
  v312 = vzip2q_s64(v250, v302);
  v313 = vzip1q_s64(v250, v302);
  v314 = vzip2q_s64(v267, v303);
  v315 = vzip1q_s64(v267, v303);
  v316 = vuzp1q_s32(v305, v304);
  v317 = vuzp1q_s32(v307, v306);
  v318 = vuzp1q_s32(v309, v308);
  v305.i64[0] = 0xFFFF0000FFFFLL;
  v305.i64[1] = 0xFFFF0000FFFFLL;
  v319 = vuzp1q_s32(v311, v310);
  v307.i64[0] = 0xFFFF0000FFFFLL;
  v307.i64[1] = 0xFFFF0000FFFFLL;
  v320 = vnegq_s32(vandq_s8(v191, v305));
  v321 = vnegq_s32(vandq_s8(v63, v307));
  v322 = vuzp1q_s32(v313, v312);
  v323 = vuzp1q_s32(v315, v314);
  v324 = vshlq_u32(v316, v320);
  v325 = vshlq_u32(v317, v321);
  v326 = vshlq_u32(v318, v321);
  v321.i64[0] = 0x10001000100010;
  v321.i64[1] = 0x10001000100010;
  v315.i64[0] = 0xF000F000F000FLL;
  v315.i64[1] = 0xF000F000F000FLL;
  v327 = vsubq_s16(v321, v191);
  v328 = vaddq_s16(v191, v315);
  v315.i64[0] = 0x10001000100010;
  v315.i64[1] = 0x10001000100010;
  v329 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v316, v324), vzip2q_s32(v316, v324)), v327);
  v327.i64[0] = 0xF000F000F000FLL;
  v327.i64[1] = 0xF000F000F000FLL;
  v330 = vsubq_s16(v315, v63);
  v331 = vaddq_s16(v63, v327);
  v327.i64[0] = 0xFFFF0000FFFFLL;
  v327.i64[1] = 0xFFFF0000FFFFLL;
  v332 = vnegq_s32(vandq_s8(v64, v327));
  v333 = vshlq_s16(v329, v328);
  v334 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v317, v325), vzip2q_s32(v317, v325)), v330), v331);
  v335 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v318, v326), vzip2q_s32(v318, v326)), v330), v331);
  v336 = vdupq_lane_s32(*v333.i8, 0);
  v337 = vandq_s8(v67, v336);
  v338 = vsubq_s16(v334, v337);
  v339 = vsubq_s16(v335, v337);
  v340 = vshlq_u32(v319, v332);
  v341 = vshlq_u32(v322, v332);
  v342 = vzip2q_s32(v319, v340);
  v343 = vzip1q_s32(v319, v340);
  v344 = vzip2q_s32(v322, v341);
  v345 = vzip1q_s32(v322, v341);
  v341.i64[0] = 0x10001000100010;
  v341.i64[1] = 0x10001000100010;
  v346 = vuzp1q_s16(v345, v344);
  v344.i64[0] = 0xF000F000F000FLL;
  v344.i64[1] = 0xF000F000F000FLL;
  v347 = vsubq_s16(v341, v64);
  v348 = vaddq_s16(v64, v344);
  v344.i64[0] = 0xFFFF0000FFFFLL;
  v344.i64[1] = 0xFFFF0000FFFFLL;
  v349 = vnegq_s32(vandq_s8(v65, v344));
  v350 = vshlq_s16(vshlq_s16(vuzp1q_s16(v343, v342), v347), v348);
  v351 = vshlq_s16(vshlq_s16(v346, v347), v348);
  v352 = vandq_s8(v68, v336);
  v353 = vsubq_s16(v350, v352);
  v354 = vsubq_s16(v351, v352);
  v355 = vshlq_u32(v323, v349);
  v356 = vzip2q_s32(v323, v355);
  v357 = vzip1q_s32(v323, v355);
  v355.i64[0] = 0x10001000100010;
  v355.i64[1] = 0x10001000100010;
  v358 = vuzp1q_s16(v357, v356);
  v356.i64[0] = 0xF000F000F000FLL;
  v356.i64[1] = 0xF000F000F000FLL;
  v359 = vsubq_s16(v355, v65);
  v360 = vaddq_s16(v65, v356);
  v361 = vshlq_u64(v270, v297);
  v362 = vuzp1q_s32(vzip1q_s64(v270, v361), vzip2q_s64(v270, v361));
  v363 = vshlq_u32(v362, v349);
  v364 = vshlq_s16(vshlq_s16(v358, v359), v360);
  v365 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v362, v363), vzip2q_s32(v362, v363)), v359), v360);
  v366 = vandq_s8(v69, v336);
  v367 = vsubq_s16(v364, v366);
  v368 = vsubq_s16(v365, v366);
  v369 = vzip1_s32(*v208.i8, *&vextq_s8(v208, v208, 8uLL));
  v370 = vzip1_s32(*v219.i8, *&vextq_s8(v219, v219, 8uLL));
  v290.i64[0] = v369.u32[0];
  v290.i64[1] = v369.u32[1];
  v371 = v290;
  v290.i64[0] = v370.u32[0];
  v290.i64[1] = v370.u32[1];
  v372 = vshlq_u64(v215, vnegq_s64(v371));
  v373 = vshlq_u64(v206, vnegq_s64(v290));
  v374 = vzip2q_s64(v215, v372);
  v375 = vzip1q_s64(v215, v372);
  v376 = vzip2q_s64(v206, v373);
  v377 = vzip1q_s64(v206, v373);
  v373.i64[0] = 0xFFFF0000FFFFLL;
  v373.i64[1] = 0xFFFF0000FFFFLL;
  v378 = vuzp1q_s32(v375, v374);
  v379 = vuzp1q_s32(v377, v376);
  v380 = vnegq_s32(vandq_s8(v62, v373));
  v381 = vshlq_u32(v378, vnegq_s32(vandq_s8(v207, v373)));
  v382 = vshlq_u32(v379, v380);
  v383 = vzip2q_s32(v378, v381);
  v384 = vzip1q_s32(v378, v381);
  v385 = vzip2q_s32(v379, v382);
  v386 = vzip1q_s32(v379, v382);
  v382.i64[0] = 0x10001000100010;
  v382.i64[1] = 0x10001000100010;
  v387 = vuzp1q_s16(v386, v385);
  v385.i64[0] = 0xF000F000F000FLL;
  v385.i64[1] = 0xF000F000F000FLL;
  v388 = vaddq_s16(vandq_s8(v333, v66), vshlq_s16(vshlq_s16(vuzp1q_s16(v384, v383), vsubq_s16(v382, v207)), vaddq_s16(v207, v385)));
  v389 = vandq_s8(v66, v336);
  v390.i64[0] = 0x1000100010001;
  v390.i64[1] = 0x1000100010001;
  v391 = vceqq_s16(v37, v390);
  v392 = vaddvq_s16(v391);
  v393 = vsubq_s16(v388, v389);
  v394 = vsubq_s16(vshlq_s16(vshlq_s16(v387, vsubq_s16(v382, v62)), vaddq_s16(v62, v385)), v389);
  v391.i16[0] = v32 & 0x3FF;
  v391.i16[1] = (v32 >> 10) & 0x3FF;
  v395 = vdupq_lane_s32(*v391.i8, 0);
  if (v392)
  {
    v396 = vnegq_s16(vandq_s8(v33, v390));
    v397 = v394;
    v397.i32[3] = v393.i32[0];
    v398 = v393;
    v398.i32[0] = v394.i32[3];
    v433.val[0] = vbslq_s8(v396, v398, v393);
    v433.val[1] = vbslq_s8(v396, v397, v394);
    v397.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v397.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v433, xmmword_29D2F0F80), v396), v433.val[0]);
    v434.val[1] = vaddq_s16(v433.val[1], vandq_s8(vqtbl2q_s8(v433, v397), v396));
    v393 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0F90), v396), v434.val[0]);
    v394 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, v397), v396));
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v338.i8, xmmword_29D2F0FA0), v396), v338);
    v434.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v338.i8, xmmword_29D2F0FB0), v396), v339);
    v338 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0FC0), v396), v434.val[0]);
    v339 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, v397), v396));
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v353.i8, xmmword_29D2F0FD0), v396), v353);
    v434.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v353.i8, xmmword_29D2F0F80), v396), v354);
    v353 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, v397), v396), v434.val[0]);
    v354 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0FE0), v396));
    v433.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v367.i8, xmmword_29D2F0FF0), v396), v367);
    v433.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v367.i8, xmmword_29D2F0F80), v396), v368);
    v367 = vaddq_s16(vandq_s8(vqtbl2q_s8(v433, v397), v396), v433.val[0]);
    v368 = vaddq_s16(v433.val[1], vandq_s8(vqtbl2q_s8(v433, xmmword_29D2F1000), v396));
  }

  v399 = vaddq_s16(v393, v395);
  v400 = vaddq_s16(v394, v395);
  v401 = vaddq_s16(v338, v395);
  v402 = vaddq_s16(v339, v395);
  v403 = vaddq_s16(v353, v395);
  v404 = vaddq_s16(v354, v395);
  v405 = vaddq_s16(v367, v395);
  v406 = vaddq_s16(v368, v395);
  v407.i64[0] = 0x10001000100010;
  v407.i64[1] = 0x10001000100010;
  v408 = vceqzq_s16(vandq_s8(v33, v407));
  v409 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v399, xmmword_29D2F1080), v408), v399);
  v410 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v400, xmmword_29D2F1080), v408), v400);
  v411 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v401, xmmword_29D2F1080), v408), v401);
  v412 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v402, xmmword_29D2F1080), v408), v402);
  v413 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v403, xmmword_29D2F1080), v408), v403);
  v414 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v404, xmmword_29D2F1080), v408), v404);
  v415 = vbicq_s8(vqtbl1q_s8(v405, xmmword_29D2F1080), v408);
  v416 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v406, xmmword_29D2F1080), v408), v406);
  v417 = vshlq_n_s16(v409, 6uLL);
  v418 = vshlq_n_s16(v410, 6uLL);
  v419 = vshlq_n_s16(v411, 6uLL);
  v420 = vshlq_n_s16(v413, 6uLL);
  v421 = vshlq_n_s16(v414, 6uLL);
  v422 = vzip2q_s64(v417, v418);
  v423.i64[0] = v417.i64[0];
  v423.i64[1] = v418.i64[0];
  v424.i64[0] = v420.i64[0];
  v424.i64[1] = v421.i64[0];
  v425 = vshlq_n_s16(v412, 6uLL);
  v426 = (a1 + a2);
  *a1 = v423;
  a1[1] = v424;
  v427 = (a1 + 2 * a2);
  v428 = vshlq_n_s16(vaddq_s16(v415, v405), 6uLL);
  v429 = vshlq_n_s16(v416, 6uLL);
  *v426 = v422;
  v426[1] = vzip2q_s64(v420, v421);
  v421.i64[0] = v419.i64[0];
  v421.i64[1] = v425.i64[0];
  v405.i64[0] = v428.i64[0];
  v405.i64[1] = v429.i64[0];
  *v427 = v421;
  v427[1] = v405;
  v430 = (v427 + a2);
  *v430 = vzip2q_s64(v419, v425);
  v430[1] = vzip2q_s64(v428, v429);
  return v8;
}