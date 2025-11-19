uint64_t radialFillRGBA8_circular(void *a1, void *a2, int a3, unsigned int a4, unint64_t a5, float a6, double a7, double a8)
{
  [a1 region];
  v16 = v15;
  [a2 region];
  if (v16 >= v17)
  {
    v18 = a2;
  }

  else
  {
    v18 = a1;
  }

  [v18 region];
  v20 = v19;
  [a1 region];
  v22 = v21;
  [a2 region];
  if (v22 >= v23)
  {
    v24 = a2;
  }

  else
  {
    v24 = a1;
  }

  [v24 region];
  v26 = v25;
  v143 = [a1 bytesPerRow];
  v141 = [a2 bytesPerRow];
  v27 = [a1 baseAddress];
  v28 = [a2 baseAddress];
  v29 = a7;
  v30 = a8;
  v31 = a5;
  v32 = sqrtf(a5);
  v33 = (v32 + v32);
  if (v29 >= v30)
  {
    v34 = a8;
  }

  else
  {
    v34 = a7;
  }

  if (v34 < v33)
  {
    v33 = v34;
  }

  v35 = v20 + ~v29;
  if (v35 >= v26 + ~v30)
  {
    v35 = v26 + ~v30;
  }

  if (v35 >= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  [a1 region];
  v38 = v37;
  [a2 region];
  v40 = v39;
  [a1 region];
  v42 = v41;
  result = [a2 region];
  v140 = v36;
  if (v36 >= 1)
  {
    v45 = v29;
    v46 = v30;
    v47 = 0;
    v48 = 0;
    v49 = (v38 - v40);
    v50 = v141;
    v51 = v143;
    v52 = a3;
    v53 = (v42 - v44);
    v139 = v27 + 4 * v45 + a3;
    v138 = v28 + 4 * (v49 + v45) + a3;
    v136 = v27 + v143 * v30 + a3;
    v137 = v30;
    v135 = v28 + v141 * (v53 + v30) + a3;
    v134 = v45;
    v133 = v53;
    v54 = v30 + v53;
    v132 = v28 + (v54 - 1) * v141;
    v131 = v27 + (v30 - 1) * v143;
    v55 = -v143;
    v130 = v28 + v141 * v54 + v141;
    v129 = v27 + v51 + v51 * v46;
    v56 = v28 + 4 * (v45 + v49);
    v128 = v56 - 4;
    v57 = v27 + 4 * v45;
    v127 = v57 - 4;
    v126 = v56 + 4;
    v125 = v57 + 4;
    v146 = -v141;
    do
    {
      v142 = v48;
      v58 = *(v139 + v51 * (v47 + v137)) > a4;
      if (*(v139 + v51 * (v47 + v137)) <= a4)
      {
        v59 = 0;
      }

      else
      {
        v59 = -1;
      }

      *(v138 + v50 * (v47 + v137 + v133)) = v59;
      v60 = *(v139 + v51 * (v137 - v47));
      v61 = v60 > a4;
      if (v60 <= a4)
      {
        v62 = 0;
      }

      else
      {
        v62 = -1;
      }

      *(v138 + v50 * (v137 - v47 + v133)) = v62;
      if (v61)
      {
        v63 = v58 + 1;
      }

      else
      {
        v63 = v58;
      }

      result = v135;
      v64 = *(v136 + 4 * (v134 - v47));
      v65 = v64 > a4;
      if (v64 <= a4)
      {
        v66 = 0;
      }

      else
      {
        v66 = -1;
      }

      *(v135 + 4 * (v134 - v47 + v49)) = v66;
      if (v65)
      {
        ++v63;
      }

      v67 = *(v136 + 4 * (v47 + v134));
      v68 = v67 > a4;
      if (v67 <= a4)
      {
        v69 = 0;
      }

      else
      {
        v69 = -1;
      }

      *(v135 + 4 * (v47 + v134 + v49)) = v69;
      if (v68)
      {
        v70 = v63 + 1;
      }

      else
      {
        v70 = v63;
      }

      v144 = v47;
      if (v47)
      {
        v71 = 0;
        v72 = 1 - v47;
        v73 = 3;
        v74 = v125;
        v75 = v126;
        v77 = v127;
        v76 = v128;
        v79 = v129;
        v78 = v130;
        v80 = v131;
        v81 = v132;
        LODWORD(result) = v47;
        v82 = -2 * v47;
        do
        {
          v83 = v82 + 2;
          if (v72 >= 0)
          {
            v82 += 2;
          }

          result = (result + (~v72 >> 31));
          v84 = v52 + v51 * (result + v46);
          v85 = *(v74 + v84);
          v86 = v85 > a4;
          if (v85 <= a4)
          {
            v87 = 0;
          }

          else
          {
            v87 = -1;
          }

          v88 = v52 + v50 * (result + v46 + v53);
          *(v75 + v88) = v87;
          if (v86)
          {
            v89 = v70 + 1;
          }

          else
          {
            v89 = v70;
          }

          v90 = *(v77 + v84);
          v91 = v90 > a4;
          if (v90 <= a4)
          {
            v92 = 0;
          }

          else
          {
            v92 = -1;
          }

          *(v76 + v88) = v92;
          if (v91)
          {
            ++v89;
          }

          v93 = v52 + v51 * (v46 - result);
          v94 = *(v74 + v93);
          v95 = v94 > a4;
          if (v94 <= a4)
          {
            v96 = 0;
          }

          else
          {
            v96 = -1;
          }

          v97 = v52 + v50 * (v46 - result + v53);
          *(v75 + v97) = v96;
          if (v95)
          {
            ++v89;
          }

          v98 = *(v77 + v93);
          v99 = v98 > a4;
          if (v98 <= a4)
          {
            v100 = 0;
          }

          else
          {
            v100 = -1;
          }

          *(v76 + v97) = v100;
          if (v99)
          {
            ++v89;
          }

          v101 = v52 + 4 * (result + v45);
          v102 = *(v79 + v101);
          v103 = v102 > a4;
          if (v102 <= a4)
          {
            v104 = 0;
          }

          else
          {
            v104 = -1;
          }

          v105 = v52 + 4 * (result + v45 + v49);
          *(v78 + v105) = v104;
          if (v103)
          {
            ++v89;
          }

          v106 = v45 - result;
          v107 = v52 + 4 * (v45 - result);
          v108 = v51;
          v109 = v50;
          v110 = v53;
          v111 = v46;
          v112 = v45;
          v113 = *(v79 + v107);
          v114 = v113 > a4;
          if (v113 <= a4)
          {
            v115 = 0;
          }

          else
          {
            v115 = -1;
          }

          v116 = v52 + 4 * (v106 + v49);
          *(v78 + v116) = v115;
          v117 = v83 & ~(v72 >> 31);
          ++v71;
          v118 = *(v80 + v101);
          if (v114)
          {
            ++v89;
          }

          v119 = v118 > a4;
          if (v118 <= a4)
          {
            v120 = 0;
          }

          else
          {
            v120 = -1;
          }

          *(v81 + v105) = v120;
          if (v119)
          {
            ++v89;
          }

          v121 = *(v80 + v107);
          v122 = v121 > a4;
          if (v121 <= a4)
          {
            v123 = 0;
          }

          else
          {
            v123 = -1;
          }

          *(v81 + v116) = v123;
          v72 += v73 + v117;
          v45 = v112;
          v46 = v111;
          v53 = v110;
          v50 = v109;
          v51 = v108;
          if (v122)
          {
            v70 = v89 + 1;
          }

          else
          {
            v70 = v89;
          }

          v81 += v146;
          v80 += v55;
          v78 += v50;
          v79 += v108;
          v76 -= 4;
          v77 -= 4;
          v75 += 4;
          v74 += 4;
          v73 += 2;
        }

        while (v71 < result);
      }

      v48 = v70 + v142;
      v47 = v144 + 1;
    }

    while (v48 <= (v31 * a6) && v47 != v140);
  }

  return result;
}

void radialSplatR8(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4, unint64_t a5, uint64_t a6, unint64_t a7, CGPoint a8)
{
  x = a8.x;
  y = a8.y;
  LODWORD(v10) = sqrt(a7 / 3.14159265);
  if (a8.x >= a8.y)
  {
    v11 = a8.y;
  }

  else
  {
    v11 = a8.x;
  }

  if (v11 >= v10)
  {
    v11 = v10;
  }

  LODWORD(v12) = ~x + a3;
  v13 = ~y + a4;
  if (v12 >= v13)
  {
    v14 = ~y + a4;
  }

  else
  {
    v14 = ~x + a3;
  }

  if (v14 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if ((v15 & 0x80000000) == 0)
  {
    v16 = v15 * v15;
    v17 = x;
    v18 = -v15;
    v19 = y;
    v20 = v15 + 1;
    if (v19 < x)
    {
      v17 = v19;
    }

    if (v17 >= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v17;
    }

    if (v10 >= v13)
    {
      v10 = v13;
    }

    if (v10 >= v12)
    {
      v12 = v12;
    }

    else
    {
      v12 = v10;
    }

    v21 = &a2[a6 * (v19 - v12) + x];
    v22 = ~(v15 + v12);
    v23 = v18;
    do
    {
      v24 = v22;
      v25 = v21;
      v26 = v18;
      do
      {
        if (v16 >= v23 * v23 + v26 * v26)
        {
          v25[v23] = -1;
        }

        ++v26;
        v25 += a6;
      }

      while (!__CFADD__(v24++, 1));
      ++v23;
    }

    while (v20 != v23);
  }
}

float findPercentileNonZero(unint64_t *a1, float a2, unint64_t a3, unint64_t a4)
{
  result = 0.0;
  if (!a4)
  {
    return result;
  }

  if (a4 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a2 * 0.0);
    v11 = 1.0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  v9 = 0;
  for (i = 1; i != a4; ++i)
  {
    v9 += a1[i];
  }

  v8 = (v9 * a2);
  v6 = 0;
  v7 = 0;
  v12 = 1;
  while (1)
  {
    v13 = a1[v12];
    v7 += v13;
    if (v7 >= v8)
    {
      break;
    }

    v6 += v13;
    if (a4 == ++v12)
    {
      v12 = a4;
      break;
    }
  }

  v11 = v12;
  if (v8)
  {
LABEL_13:
    v14 = (v7 - v6);
    if (v14 > 0.00001)
    {
      result = ((((v8 - v6) / v14) + v11) * a3) / a4;
      if (result > a3)
      {
        result = a3;
      }

      if (result < 0.0)
      {
        return 0.0;
      }
    }
  }

  return result;
}

BOOL computeDensity(unsigned __int8 *a1, unsigned int a2, int a3, int a4, uint64_t a5, unsigned int a6, CGPoint a7, int a8, float *a9)
{
  x = a7.x;
  y = a7.y;
  v11 = a7.x - 1;
  if (v11 >= a7.y - 1)
  {
    v11 = a7.y - 1;
  }

  if (v11 >= a8)
  {
    v11 = a8;
  }

  LODWORD(v12) = ~x + a3;
  v13 = ~y + a4;
  if (v12 >= v13)
  {
    v14 = ~y + a4;
  }

  else
  {
    v14 = ~x + a3;
  }

  if (v14 < v11)
  {
    v11 = v14;
  }

  v15 = 0.0;
  if (v11 >= 2)
  {
    v16 = 0;
    v17 = 0;
    v18 = y;
    v19 = y - 1;
    v20 = x - 1;
    if (v19 < v20)
    {
      v20 = v19;
    }

    if (v20 >= v13)
    {
      v20 = v13;
    }

    v12 = v12;
    if (v20 < v12)
    {
      v12 = v20;
    }

    if (v12 >= a8)
    {
      v12 = a8;
    }

    v21 = &a1[a5 * (v18 - v12) + 4 * x + a2 - 4 * v12];
    v22 = ~(v11 + v12);
    v23 = -v11;
    do
    {
      v24 = v22;
      v25 = v21;
      v26 = -v11;
      do
      {
        if (v11 * v11 > (v23 * v23 + v26 * v26))
        {
          if (*v25 > a6)
          {
            ++v17;
          }

          ++v16;
        }

        ++v26;
        v25 += 4;
      }

      while (!__CFADD__(v24++, 1));
      ++v23;
      v21 += a5;
    }

    while (v11 + 1 != v23);
    if (v16)
    {
      v15 = v17 / v16;
    }

    else
    {
      v15 = 1.0;
    }
  }

  result = v11 > 1;
  *a9 = v15;
  return result;
}

uint64_t clipRepair(void *a1, void *a2, int a3, unsigned int a4)
{
  [a1 region];
  v9 = v8;
  [a1 region];
  v11 = v10;
  v12 = [a1 bytesPerRow];
  v13 = [a2 bytesPerRow];
  v14 = [a1 baseAddress];
  v15 = [a2 baseAddress];
  [a1 region];
  v17 = v16;
  [a2 region];
  v19 = v18;
  [a1 region];
  v21 = v20;
  result = [a2 region];
  if (v11 >= 1)
  {
    v24 = 0;
    v25 = (v21 - v23) * v13 + 4 * (v17 - v19) + a3;
    do
    {
      v26 = v9;
      v27 = a3;
      v28 = v25;
      if (v9 >= 1)
      {
        do
        {
          v29 = *(v14 + v27);
          if (v29 <= a4)
          {
            LOBYTE(v29) = 0;
          }

          *(v15 + v28) = v29;
          v28 += 4;
          v27 += 4;
          --v26;
        }

        while (v26);
      }

      ++v24;
      v25 += v13;
      a3 += v12;
    }

    while (v24 != v11);
  }

  return result;
}

uint64_t sampleUnderCentroid(void *a1, double a2, double a3, float a4)
{
  v26 = *MEMORY[0x1E69E9840];
  [a1 region];
  v9 = v8;
  v11 = v10;
  v12 = [a1 bytesPerRow];
  v13 = [a1 baseAddress];
  if (v9 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  v15 = (v14 * a4);
  bzero(v25, 0x400uLL);
  v16 = (a3 - v15) & ~((a3 - v15) >> 31);
  LODWORD(v17) = v15 + a3;
  if (v17 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v17;
  }

  if (v16 < v17)
  {
    LODWORD(v18) = v15 + a2;
    if (v18 >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = v18;
    }

    v19 = (a2 - v15) & ~((a2 - v15) >> 31);
    v20 = (v13 + v19 + v12 * v16);
    do
    {
      v21 = v18 - v19;
      v22 = v20;
      if (v19 < v18)
      {
        do
        {
          v23 = *v22++;
          ++v25[v23];
          --v21;
        }

        while (v21);
      }

      ++v16;
      v20 += v12;
    }

    while (v16 != v17);
  }

  percentile(v25, 0.25);
  return percentile(v25, 0.75);
}

uint64_t percentile(int *a1, float a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 += a1[v2++];
  }

  while (v2 != 255);
  v4 = 0;
  v5 = a2;
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = (v5 * v3);
  v7 = 0.0;
  v8 = 0.0;
  while (1)
  {
    v9 = a1[v4];
    v7 = v7 + v9;
    if (v7 >= v6)
    {
      break;
    }

    v8 = v8 + v9;
    if (++v4 == 255)
    {
      v10 = 255.0;
      goto LABEL_12;
    }
  }

  v10 = v4;
LABEL_12:
  v11 = 0.0;
  if (v6 >= 1)
  {
    v12 = v7 - v8;
    if (v12 > 0.0)
    {
      v11 = (v6 - v8) / v12;
    }
  }

  v13 = roundf(v11 + v10);
  if (v13 > 255.0)
  {
    return 255;
  }

  if (v13 >= 0.0)
  {
    return v13;
  }

  return 0;
}

uint64_t calculateMeans(void *a1, void *a2, int a3, double a4, double a5)
{
  [a2 region];
  v11 = v10;
  [a1 region];
  if (v11 >= v12)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  [v13 region];
  v15 = v14;
  [a2 region];
  v17 = v16;
  [a1 region];
  if (v17 >= v18)
  {
    v19 = a1;
  }

  else
  {
    v19 = a2;
  }

  [v19 region];
  v21 = v20;
  v22 = [a1 bytesPerRow];
  v23 = [a2 bytesPerRow];
  v24 = [a1 baseAddress];
  result = [a2 baseAddress];
  if (v15 >= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v15;
  }

  v27 = (v26 * 0.3);
  v28 = (a5 - v27) & ~((a5 - v27) >> 31);
  v29 = v27 + a5;
  if (v29 >= v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = v29;
  }

  if (v28 < v30)
  {
    v31 = 0;
    v32 = 0;
    LODWORD(v33) = v27 + a4;
    if (v33 >= v15)
    {
      v33 = v15;
    }

    else
    {
      v33 = v33;
    }

    v34 = (a4 - v27) & ~((a4 - v27) >> 31);
    v35 = (result + v23 * v28 + 4 * v34 + a3);
    v36 = (v24 + v34 + v22 * v28);
    v37 = 0.0;
    v38 = 0.0;
    do
    {
      if (v33 > v34)
      {
        result = v33 - v34;
        v39 = v36;
        v40 = v35;
        do
        {
          v42 = *v40;
          v40 += 4;
          v41 = v42;
          v43 = *v39++;
          v37 = v37 + v43;
          v44 = v38 + v43;
          if (v41)
          {
            ++v32;
            v38 = v44;
          }

          --result;
        }

        while (result);
        v31 += v33 - v34;
      }

      ++v28;
      v35 += v23;
      v36 += v22;
    }

    while (v28 != v30);
  }

  return result;
}

CIImage *RRradialCentroidMask(CIImage *a1, CGRect a2, float a3, float a4, int a5)
{
  height = a2.size.height;
  width = a2.size.width;
  v24[4] = *MEMORY[0x1E69E9840];
  v11 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_puncturec2, a2.origin.x, a2.origin.y];
  v12 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_puncturec2_hard];
  v13 = [CIVector vectorWithX:1.0 / (width * width) Y:1.0 / (height * height)];
  if (a5)
  {
    if (width >= height)
    {
      v15 = height;
    }

    else
    {
      v15 = width;
    }

    v16 = v15;
    v13 = [CIVector vectorWithX:1.0 / (v16 * v16) Y:1.0 / (v16 * v16)];
  }

  v17 = v13;
  *&v14 = a3 * 0.5;
  if (a4 >= 1.0)
  {
    v11 = v12;
  }

  v18 = *MEMORY[0x1E695F040];
  v19 = *(MEMORY[0x1E695F040] + 8);
  v20 = *(MEMORY[0x1E695F040] + 16);
  v21 = *(MEMORY[0x1E695F040] + 24);
  v24[0] = a1;
  v24[1] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  *&v22 = a4;
  v24[2] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v24[3] = v17;
  return -[CIColorKernel applyWithExtent:arguments:](v11, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4], v18, v19, v20, v21);
}

uint64_t RRmaximumRh(void *a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_maximumRh];
  [a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a2 extent];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v20 = CGRectUnion(v19, v21);
  v18[0] = a1;
  v18[1] = a2;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], v20.origin.x, v20.origin.y, v20.size.width, v20.size.height);
}

uint64_t convexFill(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, CGPoint a8)
{
  y = a8.y;
  x = a8.x;
  v17 = convexFillHorizontal(a1, a2, a3, a4, a5, a6, a7, a8, 1);
  v19.y = y + -1.0;
  v19.x = x;
  return convexFillHorizontal(a1, a2, a3, a4, a5, a6, a7, v19, -1) + v17;
}

uint64_t convexFillHorizontal(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, CGPoint a8, int a9)
{
  v73 = *MEMORY[0x1E69E9840];
  memset(v72, 0, 140);
  y = a8.y;
  if ((y & 0x80000000) != 0 || y >= a4 || (x = a8.x, (x & 0x80000000) != 0) || x >= a3)
  {
    if (CI_LOG_DUALRED())
    {
      v65 = ci_logger_api();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        convexFillHorizontal(v65);
      }
    }

    return 0;
  }

  if (a9 == -1)
  {
    v12 = -a5;
  }

  else
  {
    LODWORD(v12) = a5;
  }

  v13 = a5 * a4;
  if (a9 == -1)
  {
    v13 = 0;
  }

  v14 = &a1[y * a5];
  if (v14[x] <= a7)
  {
    if (CI_LOG_DUALRED())
    {
      v67 = ci_logger_api();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        convexFillHorizontal(&v14[x], a7, v67);
      }
    }

    return 0;
  }

  v15 = &a1[v13];
  if ((a9 == -1) == v14 < &a1[v13])
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = -1;
  do
  {
    if ((x & 0x80000000) != 0)
    {
      v22 = 0;
      v21 = 0;
      v23 = x;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = x;
      v24 = &v14[x];
      do
      {
        if (*v24 <= a7)
        {
          break;
        }

        v22 += *v24 * v23;
        v21 += *v24;
        ++v16;
        --v23;
        --v24;
      }

      while (v24 >= v14);
    }

    v25 = x + 1;
    if (x + 1 < a3)
    {
      v26 = &v14[v25];
      do
      {
        if (*v26 <= a7)
        {
          break;
        }

        v22 += *v26 * v25;
        v21 += *v26;
        ++v16;
        ++v25;
        ++v26;
      }

      while (v26 < &v14[a3]);
    }

    v27 = v23 + 1;
    v28 = v25 - v27;
    v29 = v21;
    if (v25 - v27 < 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = (v29 / v28);
    }

    if (v20 == -1)
    {
      v31 = -1;
    }

    else
    {
      if (v27 > v20)
      {
        v20 = v27;
      }

      if (v25 < v19)
      {
        v19 = v25;
      }

      v31 = v19 - v20;
    }

    if (v28 < 1)
    {
      break;
    }

    if (v18 == 5)
    {
      v32 = v72 + 7 * v17;
      v33 = v32[2];
      v34 = v32[1];
      if (v33 > v34)
      {
        v35 = *v32;
        v36 = &a2[v35 * a6 + v34];
        v37 = &a1[v35 * a5 + v34];
        v38 = v33 - v34;
        do
        {
          v39 = *v37++;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v18 = 5;
    }

    else
    {
      ++v18;
    }

    v40 = v72 + 7 * v17;
    *v40 = y;
    v40[1] = v27;
    v40[2] = v25;
    v40[3] = v31;
    v40[4] = v30;
    if (v17 == 4)
    {
      v17 = 0;
    }

    else
    {
      ++v17;
    }

    if (v18 == 5)
    {
      v41 = 0;
      v42 = v17;
      do
      {
        v43 = v42 - 5;
        if (v42 <= 4)
        {
          v43 = v42;
        }

        *&v68[v41] = v43;
        ++v42;
        v41 += 4;
      }

      while (v41 != 20);
      v44 = v69;
      v45 = 8;
      v46 = v69;
      do
      {
        v47 = v72 + 7 * v46;
        v46 = *&v68[v45];
        v48 = *(v72 + 7 * v46 + 3);
        if (v47[3] < v48)
        {
          v48 = v47[3];
        }

        v47[5] = v47[4] * v48 * (v47[2] - v47[1]);
        v47[6] = v48;
        v45 += 4;
      }

      while (v45 != 20);
      v49 = v72 + 28 * v70;
      if (*(v49 + 6) <= 7)
      {
        v50 = *(v49 + 5);
        v51 = *(&v72[1] + 7 * v44 + 1);
        if (v50 < v51)
        {
          v52 = *(&v72[1] + 7 * v71 + 1);
          if (v50 < v52 && v50 * 2.8 < (v52 + v51))
          {
            v18 = 3;
            goto LABEL_60;
          }
        }
      }

      v18 = 5;
    }

    if (v28 < 5)
    {
      break;
    }

    LODWORD(x) = (v22 / v29);
    LODWORD(y) = y + a9;
    v14 += v12;
    v19 = v25;
    v20 = v27;
  }

  while ((a9 == -1) != v14 < v15);
  if (v18 < 1)
  {
    return v16;
  }

LABEL_60:
  v54 = v17 - v18;
  v53 = v17 < v18;
  v55 = v17 - v18 + 5;
  if (v53)
  {
    v54 = v55;
  }

  do
  {
    v56 = v72 + 7 * v54;
    v57 = v56[2];
    v58 = v56[1];
    if (v57 > v58)
    {
      v59 = *v56;
      v60 = &a2[v59 * a6 + v58];
      v61 = &a1[v59 * a5 + v58];
      v62 = v57 - v58;
      do
      {
        v63 = *v61++;
        *v60++ = v63;
        --v62;
      }

      while (v62);
    }

    if (v54 == 4)
    {
      v54 = 0;
    }

    else
    {
      ++v54;
    }

    v64 = __OFSUB__(v18--, 1);
  }

  while (!((v18 < 0) ^ v64 | (v18 == 0)));
  return v16;
}

BOOL fillR8(void *a1, unsigned __int8 *a2, int a3, int a4)
{
  v4 = a2[a1[1] * a4 + a3];
  v5 = *a1;
  ++*(a1 + 8);
  return v4 > v5;
}

CIImage *RRcombineRGBA(CIImage *a1, CIImage *a2, CIImage *a3, CIImage *a4)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v8 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_combine_rgba];
  [(CIImage *)a1 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(CIImage *)a2 extent];
  v44.origin.x = v17;
  v44.origin.y = v18;
  v44.size.width = v19;
  v44.size.height = v20;
  v39.origin.x = v10;
  v39.origin.y = v12;
  v39.size.width = v14;
  v39.size.height = v16;
  v40 = CGRectUnion(v39, v44);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  [(CIImage *)a3 extent];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(CIImage *)a4 extent];
  v45.origin.x = v33;
  v45.origin.y = v34;
  v45.size.width = v35;
  v45.size.height = v36;
  v41.origin.x = v26;
  v41.origin.y = v28;
  v41.size.width = v30;
  v41.size.height = v32;
  v46 = CGRectUnion(v41, v45);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectUnion(v42, v46);
  v38[0] = a1;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  return -[CIColorKernel applyWithExtent:arguments:](v8, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4], v43.origin.x, v43.origin.y, v43.size.width, v43.size.height);
}

CIImage *RRextractR8(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_r];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRextractG8(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_g];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRextractB8(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_b];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRextractA8(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_a];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRsmoothstep(CIImage *a1, float a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_smoothstepRh];
  [(CIImage *)a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14[0] = a1;
  *&v5 = a2;
  v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2], v6, v8, v10, v12);
}

CIImage *RRmaxIfGreaterThanZeroRh(CIImage *a1, CIImage *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_maxmask];
  [(CIImage *)a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIImage *)a2 extent];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v20 = CGRectUnion(v19, v21);
  v18[0] = a1;
  v18[1] = a2;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], v20.origin.x, v20.origin.y, v20.size.width, v20.size.height);
}

CIImage *RRmaxRhScalar(CIImage *a1, float a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_maxScalarRh];
  [(CIImage *)a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14[0] = a1;
  *&v5 = a2;
  v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2], v6, v8, v10, v12);
}

CIImage *RRminimumRh(CIImage *a1, CIImage *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_minimumRh];
  [(CIImage *)a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIImage *)a2 extent];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v20 = CGRectUnion(v19, v21);
  v18[0] = a1;
  v18[1] = a2;
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], v20.origin.x, v20.origin.y, v20.size.width, v20.size.height);
}

CIImage *RRmultiplyRh(CIImage *a1, CIImage *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_multiply];
  if (a1 && a2)
  {
    v5 = v4;
    [(CIImage *)a1 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(CIImage *)a2 extent];
    v23.origin.x = v14;
    v23.origin.y = v15;
    v23.size.width = v16;
    v23.size.height = v17;
    v21.origin.x = v7;
    v21.origin.y = v9;
    v21.size.width = v11;
    v21.size.height = v13;
    v22 = CGRectUnion(v21, v23);
    v19[0] = a1;
    v19[1] = a2;
    return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2], v22.origin.x, v22.origin.y, v22.size.width, v22.size.height);
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

CIImage *refilterChannel(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_refilter_chan];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRbinarize(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_binarize];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRbinarizeInverse(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_binarize_inv];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRbinarizeAlpha(CIImage *a1, CIImage *a2, float a3)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_binarize_alpha];
  v7 = *MEMORY[0x1E695F040];
  v8 = *(MEMORY[0x1E695F040] + 8);
  v9 = *(MEMORY[0x1E695F040] + 16);
  v10 = *(MEMORY[0x1E695F040] + 24);
  *&v11 = a3;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v11, a1, a2}];
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], v7, v8, v9, v10);
}

CIImage *RRbinarizeAlphaInverse(CIImage *a1, CIImage *a2, float a3)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_binarize_alpha_inv];
  v7 = *MEMORY[0x1E695F040];
  v8 = *(MEMORY[0x1E695F040] + 8);
  v9 = *(MEMORY[0x1E695F040] + 16);
  v10 = *(MEMORY[0x1E695F040] + 24);
  *&v11 = a3;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v11, a1, a2}];
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], v7, v8, v9, v10);
}

CIImage *RRconditionalZero(CIImage *a1, CIImage *a2, float a3)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_conditionalZeroRh];
  [(CIImage *)a1 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CIImage *)a2 extent];
  v27.origin.x = v15;
  v27.origin.y = v16;
  v27.size.width = v17;
  v27.size.height = v18;
  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  v26 = CGRectUnion(v25, v27);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  *&v26.origin.x = a3;
  v24[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v26.origin.x, a1, a2}];
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3], x, y, width, height);
}

CIImage *feather(CIImage *a1, CGRect a2, float a3, float a4, float a5)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = round(a4 * 0.1 * a3);
  if (v10 <= 3.0)
  {
    v10 = 3.0;
  }

  v11 = v10;
  v12 = [(CIImage *)a1 imageByCroppingToRect:x, a2.origin.y];
  *&v13 = (v11 + v11) * a5;
  v22 = @"inputRadius";
  v23[0] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v14 = 1;
  v15 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v12, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1]), "imageByCroppingToRect:", x, y, width, height);
  do
  {
    v17 = v14;
    v20 = @"inputRadius";
    *&v16 = v11;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v18 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v15, "imageByApplyingFilter:withInputParameters:", @"CIBoxBlur", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1]), "imageByCroppingToRect:", x, y, width, height);
    v15 = v18;
    v14 = 0;
  }

  while ((v17 & 1) != 0);
  return [(CIImage *)v18 imageByCroppingToRect:x, y, width, height];
}

CIImage *chromaExclusion(CIImage *a1, CIImage *a2, CGRect a3, float a4, float a5, float a6, float a7)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v39[1] = *MEMORY[0x1E69E9840];
  v16 = [(CIImage *)a1 imageByClampingToExtent];
  v17 = [(CIImage *)a2 imageByClampingToExtent];
  v18 = RRbinarizeAlphaInverse(v16, v17, a5);
  v19 = RRbinarizeAlpha(v16, v17, a5);
  v38 = @"inputExtent";
  v39[0] = [CIVector vectorWithCGRect:x, y, width, height];
  v20 = -[CIImage imageByApplyingFilter:withInputParameters:](v18, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1]);
  v36 = @"inputExtent";
  v37 = [CIVector vectorWithCGRect:x, y, width, height];
  v21 = -[CIImage imageByApplyingFilter:withInputParameters:](v19, "imageByApplyingFilter:withInputParameters:", @"CIAreaAverage", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1]);
  v22 = [(CIImage *)v20 imageByUnpremultiplyingAlpha];
  [(CIImage *)v22 extent];
  v23 = [[(CIImage *)v22 imageBySettingAlphaOneInExtent:?] imageByClampingToExtent];
  v24 = [(CIImage *)v21 imageByUnpremultiplyingAlpha];
  [(CIImage *)v24 extent];
  v25 = [[(CIImage *)v24 imageBySettingAlphaOneInExtent:?] imageByClampingToExtent];
  v26 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_chromaexc];
  *&v27 = a4 * a4;
  v28 = *MEMORY[0x1E695F040];
  v29 = *(MEMORY[0x1E695F040] + 8);
  v30 = *(MEMORY[0x1E695F040] + 16);
  v31 = *(MEMORY[0x1E695F040] + 24);
  v35[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v27, v23, v25}];
  *&v32 = a6;
  v35[3] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  *&v33 = a7;
  v35[4] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  return -[CIColorKernel applyWithExtent:arguments:](v26, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5], v28, v29, v30, v31);
}

CIImage *RRspecularMask(CIImage *a1, CIImage *a2, float a3, float a4)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v8 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_detect_specs];
  [(CIImage *)a1 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(CIImage *)a2 extent];
  v30.origin.x = v17;
  v30.origin.y = v18;
  v30.size.width = v19;
  v30.size.height = v20;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v29 = CGRectUnion(v28, v30);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v27[0] = a1;
  v27[1] = a2;
  *&v29.origin.x = a4;
  v27[2] = [MEMORY[0x1E696AD98] numberWithFloat:v29.origin.x];
  *&v25 = a3;
  v27[3] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  return -[CIColorKernel applyWithExtent:arguments:](v8, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4], x, y, width, height);
}

CIImage *RRradialEllipticalMask(CGRect a1, CIVector *a2, objc_object *a3, float a4, float a5, float a6, float a7)
{
  height = a1.size.height;
  width = a1.size.width;
  v44[8] = *MEMORY[0x1E69E9840];
  v14 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_mmv, a1.origin.x, a1.origin.y];
  v15 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_mmi];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  [(CIVector *)a2 X];
  v17 = v16;
  [(CIVector *)a2 X];
  v19 = v18;
  [(CIVector *)a2 Y];
  v21 = v20;
  [(CIVector *)a2 Y];
  *&v22 = sqrt(v21 * v22 + v17 * v19);
  v23 = *&v22;
  if (*&v22 >= 0.000001)
  {
    v25 = 1.0 / sqrt(height * height + width * width);
    [(CIVector *)a2 X];
    v27 = v26 / v23;
    [(CIVector *)a2 Y];
    v29 = [CIVector vectorWithX:v27 Y:v28 / v23];
    [(CIVector *)v29 Y];
    v31 = -v30;
    [(CIVector *)v29 X];
    v33 = [CIVector vectorWithX:v31 Y:v32];
    *&v31 = v25 / a5;
    v34 = *MEMORY[0x1E695F040];
    v35 = *(MEMORY[0x1E695F040] + 8);
    v36 = v25 / a4;
    v37 = *(MEMORY[0x1E695F040] + 16);
    v38 = *(MEMORY[0x1E695F040] + 24);
    v44[0] = a3;
    v44[1] = v29;
    v44[2] = v33;
    v44[3] = &unk_1F1085468;
    *&v39 = a6;
    v44[4] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
    LODWORD(v40) = LODWORD(v31);
    v44[5] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
    *&v41 = v36;
    v44[6] = [MEMORY[0x1E696AD98] numberWithFloat:v41];
    *&v42 = a7;
    v44[7] = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    return -[CIColorKernel applyWithExtent:arguments:](v14, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:8], v34, v35, v37, v38);
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

CIImage *RRradialMask(CIVector *a1, CGRect a2, float a3, float a4, int a5)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v28[4] = *MEMORY[0x1E69E9840];
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_puncture2];
  v14 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_puncture2_hard];
  v15 = [CIVector vectorWithX:1.0 / (width * width) Y:1.0 / (height * height)];
  if (a5)
  {
    if (width >= height)
    {
      v17 = height;
    }

    else
    {
      v17 = width;
    }

    v18 = v17;
    v15 = [CIVector vectorWithX:1.0 / (v18 * v18) Y:1.0 / (v18 * v18)];
  }

  v19 = v15;
  if (!a1)
  {
    v20 = x + width * 0.5;
    v21 = y + height * 0.5;
    a1 = [CIVector vectorWithX:roundf(v20) Y:roundf(v21)];
  }

  *&v16 = a3 * 0.5;
  if (a4 >= 1.0)
  {
    v13 = v14;
  }

  v22 = *MEMORY[0x1E695F040];
  v23 = *(MEMORY[0x1E695F040] + 8);
  v24 = *(MEMORY[0x1E695F040] + 16);
  v25 = *(MEMORY[0x1E695F040] + 24);
  v28[0] = a1;
  v28[1] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  *&v26 = a4;
  v28[2] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v28[3] = v19;
  return -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4], v22, v23, v24, v25);
}

CIImage *RRradialCenterMask(CIImage *a1, CGRect a2, float a3, float a4, float a5)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v9 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_rcsoft, a2.origin.x, a2.origin.y, a2.size.width, a2.size.height];
  v10 = a3 * a3;
  v11 = *MEMORY[0x1E695F040];
  v12 = *(MEMORY[0x1E695F040] + 8);
  v13 = *(MEMORY[0x1E695F040] + 16);
  v14 = *(MEMORY[0x1E695F040] + 24);
  v20[0] = a1;
  *&v15 = a4 * a4;
  v16 = 1.0 / v10;
  v20[1] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  *&v17 = a5;
  v20[2] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  *&v18 = v16;
  v20[3] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  return -[CIColorKernel applyWithExtent:arguments:](v9, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4], v11, v12, v13, v14);
}

CIImage *RRcloseByDilation(CIImage *a1, float a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)a1 extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v18 = @"inputRadius";
  *&v4 = a2;
  v19[0] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12 = -[CIImage imageByApplyingFilter:withInputParameters:](a1, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
  v16 = @"inputRadius";
  *&v13 = a2;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v14 = -[CIImage imageByApplyingFilter:withInputParameters:](v12, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1]);
  [(CIImage *)a1 extent];
  return [[(CIImage *)v14 imageByCroppingToRect:?] imageByCroppingToRect:v5, v7, v9, v11];
}

CIImage *RRcloseByErosion(CIImage *a1, float a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)a1 extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v18 = @"inputRadius";
  *&v4 = a2;
  v19[0] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12 = -[CIImage imageByApplyingFilter:withInputParameters:](a1, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
  v16 = @"inputRadius";
  *&v13 = a2;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v14 = -[CIImage imageByApplyingFilter:withInputParameters:](v12, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1]);
  [(CIImage *)a1 extent];
  return [[(CIImage *)v14 imageByCroppingToRect:?] imageByCroppingToRect:v5, v7, v9, v11];
}

CIImage *RRclip(CIImage *a1, float a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_pclip];
  [(CIImage *)a1 extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14[0] = a1;
  *&v5 = a2;
  v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return -[CIColorKernel applyWithExtent:arguments:](v4, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2], v6, v8, v10, v12);
}

CIImage *RRspecularResponse(CIImage *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_specular];
  [(CIImage *)a1 extent];
  v8[0] = a1;
  return -[CIColorKernel applyWithExtent:arguments:](v2, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1], v3, v4, v5, v6);
}

CIImage *RRrawRedWhiteResponseSmallMedium(CIImage *a1, float a2, float a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_rawred_sm];
  [(CIImage *)a1 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *&v7 = a2;
  v17[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v7, a1}];
  *&v15 = a3;
  v17[2] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3], v8, v10, v12, v14);
}

CIImage *RRrawRedWhiteResponseLarge(CIImage *a1, float a2, float a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_rawred_large];
  [(CIImage *)a1 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *&v7 = a2;
  v17[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v7, a1}];
  *&v15 = a3;
  v17[2] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  return -[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3], v8, v10, v12, v14);
}

float CI::sw_drr_puncturec2(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 88);
  v11 = *(v3 + 80);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = *(a2 + (v8 << 6));
  v15 = *(a2 + (v9 << 6));
  v22 = *v7;
  v23 = *v13;
  DC = CI::getDC(a1);
  v17 = ((vmuls_lane_f32((COERCE_FLOAT(HIDWORD(*DC)) - *(&v22 + 1)) * (COERCE_FLOAT(HIDWORD(*DC)) - *(&v22 + 1)), v23, 1) + (((COERCE_FLOAT(*DC) - *&v22) * (COERCE_FLOAT(*DC) - *&v22)) * v23.f32[0])) - (v14 * (v14 * v15))) / ((v14 * v14) - (v14 * (v14 * v15)));
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  return 1.0 - ((v20 * v20) * ((v20 * -2.0) + 3.0));
}

double CI::sw_drr_puncturec2_hard(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 88);
  v10 = *(v3 + 80);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v13 = *(a2 + (v8 << 6));
  v17 = *v7;
  v18 = *v12;
  DC = CI::getDC(a1);
  v15 = 0;
  if ((vmuls_lane_f32((COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)) * (COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)), v18, 1) + (((COERCE_FLOAT(*DC) - *&v17) * (COERCE_FLOAT(*DC) - *&v17)) * v18.f32[0])) <= (v13 * v13))
  {
    *v15.i32 = 1.0;
  }

  *&result = vdupq_lane_s32(v15, 0).u64[0];
  return result;
}

double CI::sw_drr_maximumRh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmaxnmq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_drr_combine_rgba(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  *&result = vzip1q_s32(*v7, *v11).u64[0];
  return result;
}

uint64_t CI::sw_drr_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_drr_g(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *(v7 + 4);
}

uint64_t CI::sw_drr_b(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *(v7 + 8);
}

uint64_t CI::sw_drr_a(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *(v7 + 12);
}

float CI::sw_drr_smoothstepRh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32) << 6;
  v9 = *v7 / *(a2 + v8);
  if (v9 <= 1.0)
  {
    v10 = *v7 / *(a2 + v8);
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  return (v12 * v12) * ((v12 * -2.0) + 3.0);
}

double CI::sw_drr_maxmask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  if (COERCE_FLOAT(*v7) > 0.0)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 32);
    v11 = (a3 + 16 * v10);
    v12 = (a2 + (v10 << 6));
    if (v9 == 5)
    {
      v12 = v11;
    }

    v8.i64[0] = vmaxnmq_f32(v8, *v12).u64[0];
  }

  return *v8.i64;
}

double CI::sw_drr_maxScalarRh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  LODWORD(v8) = fmaxf(COERCE_FLOAT(*v7), *(a2 + (*(v3 + 32) << 6)));
  return *&v8;
}

double CI::sw_drr_minimumRh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vminnmq_f32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_drr_multiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_f32(*v7, *v11).u64[0];
  return result;
}

uint64_t CI::sw_drr_refilter_chan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7;
  DWORD1(v8) = *v7;
  return v8;
}

double CI::sw_drr_binarize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7;
  v9 = 0.0;
  if (COERCE_FLOAT(*v7) > 0.00001)
  {
    v9 = 1.0;
  }

  v10 = v9;
  *&v8 = v10;
  return *&v8;
}

double CI::sw_drr_binarize_inv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7;
  v9 = 1.0;
  if (COERCE_FLOAT(*v7) > 0.00001)
  {
    v9 = 0.0;
  }

  v10 = v9;
  *&v8 = v10;
  return *&v8;
}

double CI::sw_drr_binarize_alpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = 0.0;
  if (*v11 > 0.001)
  {
    v12 = 1.0;
  }

  v13 = v12;
  v14 = vmulq_n_f32(*v7, v13);
  v15 = 0.0;
  if (fminf(1.0 - v14.f32[0], v14.f32[0]) > *(a2 + (*(v3 + 56) << 6)))
  {
    v15 = 1.0;
  }

  *&result = vmulq_n_f32(v14, v15).u64[0];
  return result;
}

double CI::sw_drr_binarize_alpha_inv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1.0;
  if (*v11 > 0.001)
  {
    v12 = 0.0;
  }

  v13 = v12;
  v14 = vmulq_n_f32(*v7, v13);
  v15 = 0.0;
  if (fminf(1.0 - v14.f32[0], v14.f32[0]) > *(a2 + (*(v3 + 56) << 6)))
  {
    v15 = 1.0;
  }

  *&result = vmulq_n_f32(v14, v15).u64[0];
  return result;
}

double CI::sw_drr_conditionalZeroRh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = 0.0;
  if (*v11 > *(a2 + (*(v3 + 56) << 6)))
  {
    v12 = 1.0;
  }

  *&result = vmulq_n_f32(*v7, v12).u64[0];
  return result;
}

uint64_t CI::sw_drr_chromaexc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = *(a2 + (*(v3 + 80) << 6));
  v14 = *(a2 + (*(v3 + 104) << 6));
  v15 = vsubq_f32(*v11, *v7);
  v16 = vmulq_f32(v15, v15);
  v17 = (v16.f32[2] + vaddv_f32(*v16.f32)) < (*(a2 + (*(v3 + 56) << 6)) * fminf(COERCE_FLOAT(*v11), COERCE_FLOAT(*v7)));
  v19 = (fmaxf(v12.f32[0] - fminf(v12.f32[1], v12.f32[2]), 0.0) / fmaxf(v12.f32[0], 0.00001)) < v13 && v12.f32[0] > v14;
  if (v19 || v17)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  return LODWORD(v20);
}

uint64_t CI::sw_drr_detect_specs(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, int8x16_t a6, int8x16_t _Q3)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v7 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 56) << 6;
  v13 = *(v7 + 80) << 6;
  _Q0 = *v11;
  _S1 = *(a2 + v12);
  v15 = fminf(COERCE_FLOAT(*v11), COERCE_FLOAT(v11->i64[1]));
  __asm { FMLS            S3, S1, V0.S[1] }

  _Q0.i32[0] = 1.0;
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  LODWORD(v22) = vbslq_s8(v21, _Q0, _Q3).u32[0];
  if (*_Q3.i32 == 0.0)
  {
    v22 = 0.0;
  }

  v23 = v15 * fmaxf(v22, 0.0);
  *a6.i32 = v23 - *(a2 + v13);
  LODWORD(v24) = vbslq_s8(v21, _Q0, a6).u32[0];
  if (*a6.i32 == 0.0)
  {
    v24 = 0.0;
  }

  return COERCE_UNSIGNED_INT(1.0 - (v23 * fmaxf(v24, 0.0)));
}

float CI::sw_drr_mmv(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = *v15;
  v18 = *(a2 + (*(v3 + 80) << 6));
  v19 = *(a2 + (*(v3 + 104) << 6));
  v20 = *(a2 + (*(v3 + 176) << 6));
  v21.i32[0] = *(a2 + (*(v3 + 128) << 6));
  v21.i32[1] = *(a2 + (*(v3 + 152) << 6));
  v41 = v21;
  v22 = vsub_f32(*CI::getDC(a1), *v7);
  v23 = vmul_f32(v16, v22);
  v24 = vsub_f32(v22, vmul_n_f32(v16, vadd_f32(v23, vdup_lane_s32(v23, 1)).f32[0]));
  v25 = vmul_f32(v17, v22);
  v26 = vdup_lane_s32(v25, 1);
  v27 = vmul_n_f32(v17, vadd_f32(v25, v26).f32[0]);
  v28 = vsub_f32(v22, v27);
  v29 = vmul_f32(v24, v24);
  v30 = vmul_f32(v28, v28);
  *v27.i32 = v18 * v19;
  *v26.i32 = v18 - (v18 * v19);
  v31 = vdiv_f32(vsub_f32(vmul_f32(v41, vsqrt_f32(vadd_f32(vzip1_s32(v29, v30), vzip2_s32(v29, v30)))), vdup_lane_s32(v27, 0)), vdup_lane_s32(v26, 0));
  __asm { FMOV            V2.2S, #1.0 }

  v37 = vbic_s8(vbsl_s8(vcgt_f32(v31, _D2), _D2, v31), vcltz_f32(v31));
  __asm { FMOV            V4.2S, #3.0 }

  v39 = vsub_f32(_D2, vmul_f32(vmul_f32(v37, v37), vmla_f32(_D4, 0xC0000000C0000000, v37)));
  result = vmul_lane_f32(v39, v39, 1).f32[0];
  if (result > v20)
  {
    return 1.0;
  }

  return result;
}

float CI::sw_drr_mmi(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = *v15;
  v18 = *(a2 + (*(v3 + 80) << 6));
  v19 = *(a2 + (*(v3 + 104) << 6));
  v20 = *(a2 + (*(v3 + 176) << 6));
  v21.i32[0] = *(a2 + (*(v3 + 128) << 6));
  v21.i32[1] = *(a2 + (*(v3 + 152) << 6));
  v41 = v21;
  v22 = vsub_f32(*CI::getDC(a1), *v7);
  v23 = vmul_f32(v16, v22);
  v24 = vsub_f32(v22, vmul_n_f32(v16, vadd_f32(v23, vdup_lane_s32(v23, 1)).f32[0]));
  v25 = vmul_f32(v17, v22);
  v26 = vdup_lane_s32(v25, 1);
  v27 = vmul_n_f32(v17, vadd_f32(v25, v26).f32[0]);
  v28 = vsub_f32(v22, v27);
  v29 = vmul_f32(v24, v24);
  v30 = vmul_f32(v28, v28);
  *v27.i32 = v18 * v19;
  *v26.i32 = v18 - (v18 * v19);
  v31 = vdiv_f32(vsub_f32(vmul_f32(v41, vsqrt_f32(vadd_f32(vzip1_s32(v29, v30), vzip2_s32(v29, v30)))), vdup_lane_s32(v27, 0)), vdup_lane_s32(v26, 0));
  __asm { FMOV            V2.2S, #1.0 }

  v37 = vbic_s8(vbsl_s8(vcgt_f32(v31, _D2), _D2, v31), vcltz_f32(v31));
  __asm { FMOV            V4.2S, #3.0 }

  v39 = vsub_f32(_D2, vmul_f32(vmul_f32(v37, v37), vmla_f32(_D4, 0xC0000000C0000000, v37)));
  result = vmul_lane_f32(v39, v39, 1).f32[0];
  if (result > v20)
  {
    return 1.0;
  }

  return result;
}

float CI::sw_drr_puncture2(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 88);
  v11 = *(v3 + 80);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = *(a2 + (v8 << 6));
  v15 = *(a2 + (v9 << 6));
  v23 = *v13;
  v16 = vsub_f32(*CI::getDC(a1), *v7);
  v17 = vmul_f32(v16, v16);
  v18 = ((COERCE_FLOAT(vmul_f32(v23, v17).i32[1]) + (v17.f32[0] * v23.f32[0])) - (v14 * (v14 * v15))) / ((v14 * v14) - (v14 * (v14 * v15)));
  if (v18 <= 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = v18 < 0.0;
  v21 = 0.0;
  if (!v20)
  {
    v21 = v19;
  }

  return 1.0 - ((v21 * v21) * ((v21 * -2.0) + 3.0));
}

double CI::sw_drr_puncture2_hard(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 88);
  v10 = *(v3 + 80);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v13 = *(a2 + (v8 << 6));
  v19 = *v12;
  v14 = vsub_f32(*CI::getDC(a1), *v7);
  v15 = vmul_f32(v14, v14);
  v16 = (COERCE_FLOAT(vmul_f32(v19, v15).i32[1]) + (v15.f32[0] * v19.f32[0])) > (v13 * v13);
  v17 = 0;
  if (!v16)
  {
    *v17.i32 = 1.0;
  }

  *&result = vdupq_lane_s32(v17, 0).u64[0];
  return result;
}

float CI::sw_drr_rcsoft(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v17 = *v7;
  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(a2 + (*(v3 + 56) << 6));
  v10 = *(a2 + (*(v3 + 80) << 6));
  DC = CI::getDC(a1);
  v12 = (((v10 * ((COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)) * (COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)))) + (((COERCE_FLOAT(*DC) - *&v17) * (COERCE_FLOAT(*DC) - *&v17)) * v10)) - (v8 * v9)) / (v8 - (v8 * v9));
  if (v12 <= 1.0)
  {
    v13 = (((v10 * ((COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)) * (COERCE_FLOAT(HIDWORD(*DC)) - *(&v17 + 1)))) + (((COERCE_FLOAT(*DC) - *&v17) * (COERCE_FLOAT(*DC) - *&v17)) * v10)) - (v8 * v9)) / (v8 - (v8 * v9));
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  return 1.0 - ((v15 * v15) * ((v15 * -2.0) + 3.0));
}

unint64_t CI::sw_drr_pclip(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int32x2_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 16) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  a5.i32[0] = *(a2 + (*(v5 + 32) << 6));
  return vbicq_s8(*v9, vcgtq_f32(vdupq_lane_s32(a5, 0), *v9)).u64[0];
}

double CI::sw_drr_specular(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7->f32;
  *&v8 = ((COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7)) - fminf(fminf(COERCE_FLOAT(*v7->f32), COERCE_FLOAT(HIDWORD(*v7))), COERCE_FLOAT(*&v7[1]))) * 0.5;
  *&result = vdupq_lane_s32(*&v8, 0).u64[0];
  return result;
}

float32_t CI::sw_drr_rawred_sm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  if (COERCE_FLOAT(*v7) >= 0.005)
  {
    v9 = *(a2 + (*(v3 + 56) << 6));
    v10 = vmulq_f32(v8, vdupq_n_s32(0x3EAAAAABu));
    v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
    v10.f32[0] = ((((v8.f32[1] - v10.f32[0]) * (v8.f32[1] - v10.f32[0])) + ((v8.f32[0] - v10.f32[0]) * (v8.f32[0] - v10.f32[0]))) + ((v8.f32[2] - v10.f32[0]) * (v8.f32[2] - v10.f32[0]))) / fmaxf(v10.f32[0], 0.0001);
    v11 = fminf(fmaxf(v8.f32[0] - v8.f32[1], 0.0) / fmaxf(v8.f32[0] + v8.f32[1], 0.00001), fmaxf(v8.f32[0] - v8.f32[2], 0.0) / fmaxf(v8.f32[0] + v8.f32[2], 0.00001));
    v8.f32[0] = (v9 * fmaxf(v8.f32[0] - (*(a2 + (*(v3 + 32) << 6)) * fmaxf(v8.f32[1], v8.f32[2])), 0.0)) + ((((v11 * v10.f32[0]) * 10.0) * ((v11 * v10.f32[0]) * 10.0)) * (1.0 - v9));
  }

  return v8.f32[0];
}

float32_t CI::sw_drr_rawred_large(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  if (COERCE_FLOAT(*v7) >= 0.005)
  {
    v9 = *(a2 + (*(v3 + 56) << 6));
    v10 = *(a2 + (*(v3 + 32) << 6));
    v11 = vmulq_f32(v8, vdupq_n_s32(0x3EAAAAABu));
    v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    v8.f32[0] = (v8.f32[0] * v10) + ((fminf(fmaxf(v8.f32[0] - v8.f32[1], 0.0) / fmaxf(v8.f32[0] + v8.f32[1], 0.00001), fmaxf(v8.f32[0] - v8.f32[2], 0.0) / fmaxf(v8.f32[0] + v8.f32[2], 0.00001)) * ((1.0 - v9) + ((((((v8.f32[1] - v11.f32[0]) * (v8.f32[1] - v11.f32[0])) + ((v8.f32[0] - v11.f32[0]) * (v8.f32[0] - v11.f32[0]))) + ((v8.f32[2] - v11.f32[0]) * (v8.f32[2] - v11.f32[0]))) / fmaxf(v11.f32[0], 0.0001)) * v9))) * (1.0 - v10));
  }

  return v8.f32[0];
}

void ReductionROIwh(CGRect a1, float a2, float a3, float a4, float a5)
{
  ReductionROIw(a1, a2, a4);

  ReductionROIh(*&v7, a3, a5);
}

void ReductionROIh(CGRect a1, float a2, float a3)
{
  v3 = a2;
  v4 = a1.origin.y * v3;
  v5 = a1.size.height * v3;
  CGRectIntegral(a1);
}

void ReductionROIw(CGRect a1, float a2, float a3)
{
  v3 = a2;
  v4 = a1.origin.x * v3;
  v5 = a1.size.width * v3;
  CGRectIntegral(a1);
}

void ReductionROI(CGRect a1, float a2, float a3)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, a2, a3);
  v7 = v8;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  v10 = CGRectApplyAffineTransform(v9, &v7);
  CGRectIntegral(v10);
}

double CI::sw_reduceCrop(uint64_t a1, double a2, float64x2_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a12 + 80 * *(*(a1 + 40) + 8);
  a6.i32[0] = 0.5;
  LODWORD(a4) = *(v12 + 28);
  *&v13 = *(v12 + 24) + ((*(v12 + 20) * 0.5) + (*(v12 + 16) * 0.5));
  LODWORD(a5) = *(v12 + 36);
  *a3.f64 = *&a5 + ((*(v12 + 32) * 0.5) + (*&a4 * 0.5));
  *(&v13 + 1) = *a3.f64;
  *v14.i64 = CI::BitmapSampler::read(*(v12 + 8), v13, a3, a4, a5, a6, a7, a8, a9);
  v19 = v14;
  *v16.f32 = vabs_f32(vadd_f32(*CI::getDC(v15), 0xBF000000BF000000));
  v16.f32[0] = fmaxf(v16.f32[0], v16.f32[1]);
  v17.i64[0] = COERCE_UNSIGNED_INT(0.5) | 0xBF00000000000000;
  *&result = vandq_s8(v19, vdupq_lane_s32(*&vcgtq_f32(v17, v16), 0)).u64[0];
  return result;
}

double CI::sw_areaAvg8(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1090519040;
  v7 = vmul_f32(*DC, 0x4100000041000000);
  __asm { FMOV            V10.2S, #-3.0 }

  v13 = vadd_f32(v7, *&_D10);
  LODWORD(v14) = *(v4 + 24);
  v15.i32[0] = *(v4 + 36);
  *v16.i32 = vmuls_lane_f32(*(v4 + 32), v13, 1);
  *&v17 = *v16.i32 + (v13.f32[0] * *(v4 + 28));
  v13.f32[0] = *&v14 + (vmuls_lane_f32(*(v4 + 20), v13, 1) + (v13.f32[0] * *(v4 + 16)));
  *v6.f64 = *v15.i32 + *&v17;
  v13.f32[1] = *v15.i32 + *&v17;
  *v20.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v13, v6, v14, v17, v16, v15, v18, v19);
  v145 = v20;
  *v20.f32 = vadd_f32(v7, 0xC0400000BF800000);
  LODWORD(v21) = *(v4 + 24);
  v22.i32[0] = *(v4 + 36);
  *v23.i32 = vmuls_lane_f32(*(v4 + 32), *v20.f32, 1);
  *&v24 = *v23.i32 + (v20.f32[0] * *(v4 + 28));
  v20.f32[0] = *&v21 + (vmuls_lane_f32(*(v4 + 20), *v20.f32, 1) + (v20.f32[0] * *(v4 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v4 + 8), *v20.i64, v25, v21, v24, v23, v22, v26, v27);
  *&v29.f64[0] = vadd_f32(v7, 0xC04000003F800000);
  *&v30 = vmuls_lane_f32(*(v4 + 20), *&v29.f64[0], 1) + (*v29.f64 * *(v4 + 16));
  LODWORD(v31) = *(v4 + 24);
  v32.i32[0] = *(v4 + 36);
  *v33.i32 = vmuls_lane_f32(*(v4 + 32), *&v29.f64[0], 1);
  v34 = v145;
  v146 = vaddq_f32(v145, v28);
  v28.f32[0] = *&v31 + *&v30;
  *v29.f64 = *v32.i32 + (*v33.i32 + (*v29.f64 * *(v4 + 28)));
  v28.i32[1] = LODWORD(v29.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), *v28.i64, v29, v30, v31, v34, v33, v32, v35);
  __asm { FMOV            V9.2S, #3.0 }

  *&v38.f64[0] = vadd_f32(v7, COERCE_FLOAT32X2_T(-_D9));
  *&v39 = vmuls_lane_f32(*(v4 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v4 + 16));
  LODWORD(v40) = *(v4 + 24);
  v41.i32[0] = *(v4 + 36);
  *v42.i32 = vmuls_lane_f32(*(v4 + 32), *&v38.f64[0], 1);
  v43 = v146;
  v147 = vaddq_f32(v146, v36);
  v36.f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v4 + 28)));
  v36.i32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v4 + 8), *v36.i64, v38, v39, v40, v43, v42, v41, v44);
  *&v46.f64[0] = vadd_f32(v7, 0xBF800000C0400000);
  *&v47 = vmuls_lane_f32(*(v4 + 20), *&v46.f64[0], 1) + (*v46.f64 * *(v4 + 16));
  LODWORD(v48) = *(v4 + 24);
  v49.i32[0] = *(v4 + 36);
  *v50.i32 = vmuls_lane_f32(*(v4 + 32), *&v46.f64[0], 1);
  v51 = v147;
  v148 = vaddq_f32(v147, v45);
  v45.f32[0] = *&v48 + *&v47;
  *v46.f64 = *v49.i32 + (*v50.i32 + (*v46.f64 * *(v4 + 28)));
  v45.i32[1] = LODWORD(v46.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v4 + 8), *v45.i64, v46, v47, v48, v51, v50, v49, v52);
  __asm { FMOV            V11.2S, #-1.0 }

  *&v55.f64[0] = vadd_f32(v7, *&_D11);
  *&v56 = vmuls_lane_f32(*(v4 + 20), *&v55.f64[0], 1) + (*v55.f64 * *(v4 + 16));
  LODWORD(v57) = *(v4 + 24);
  v58.i32[0] = *(v4 + 36);
  *v59.i32 = vmuls_lane_f32(*(v4 + 32), *&v55.f64[0], 1);
  v60 = v148;
  v149 = vaddq_f32(v148, v53);
  v53.f32[0] = *&v57 + *&v56;
  *v55.f64 = *v58.i32 + (*v59.i32 + (*v55.f64 * *(v4 + 28)));
  v53.i32[1] = LODWORD(v55.f64[0]);
  *v62.i64 = CI::BitmapSampler::read(*(v4 + 8), *v53.i64, v55, v56, v57, v60, v59, v58, v61);
  __asm { FMOV            V12.2S, #1.0 }

  *&v64.f64[0] = vadd_f32(v7, COERCE_FLOAT32X2_T(-_D12));
  *&v65 = vmuls_lane_f32(*(v4 + 20), *&v64.f64[0], 1) + (*v64.f64 * *(v4 + 16));
  LODWORD(v66) = *(v4 + 24);
  v67.i32[0] = *(v4 + 36);
  *v68.i32 = vmuls_lane_f32(*(v4 + 32), *&v64.f64[0], 1);
  v69 = v149;
  v150 = vaddq_f32(v149, v62);
  v62.f32[0] = *&v66 + *&v65;
  *v64.f64 = *v67.i32 + (*v68.i32 + (*v64.f64 * *(v4 + 28)));
  v62.i32[1] = LODWORD(v64.f64[0]);
  *v71.i64 = CI::BitmapSampler::read(*(v4 + 8), *v62.i64, v64, v65, v66, v69, v68, v67, v70);
  *&v72.f64[0] = vadd_f32(v7, 0xBF80000040400000);
  *&v73 = vmuls_lane_f32(*(v4 + 20), *&v72.f64[0], 1) + (*v72.f64 * *(v4 + 16));
  LODWORD(v74) = *(v4 + 24);
  v75.i32[0] = *(v4 + 36);
  *v76.i32 = vmuls_lane_f32(*(v4 + 32), *&v72.f64[0], 1);
  v77 = v150;
  v151 = vaddq_f32(v150, v71);
  v71.f32[0] = *&v74 + *&v73;
  *v72.f64 = *v75.i32 + (*v76.i32 + (*v72.f64 * *(v4 + 28)));
  v71.i32[1] = LODWORD(v72.f64[0]);
  *v79.i64 = CI::BitmapSampler::read(*(v4 + 8), *v71.i64, v72, v73, v74, v77, v76, v75, v78);
  *&v80.f64[0] = vadd_f32(v7, 0x3F800000C0400000);
  *&v81 = vmuls_lane_f32(*(v4 + 20), *&v80.f64[0], 1) + (*v80.f64 * *(v4 + 16));
  LODWORD(v82) = *(v4 + 24);
  v83.i32[0] = *(v4 + 36);
  *v84.i32 = vmuls_lane_f32(*(v4 + 32), *&v80.f64[0], 1);
  v85 = v151;
  v152 = vaddq_f32(v151, v79);
  v79.f32[0] = *&v82 + *&v81;
  *v80.f64 = *v83.i32 + (*v84.i32 + (*v80.f64 * *(v4 + 28)));
  v79.i32[1] = LODWORD(v80.f64[0]);
  *v87.i64 = CI::BitmapSampler::read(*(v4 + 8), *v79.i64, v80, v81, v82, v85, v84, v83, v86);
  *&v88.f64[0] = vadd_f32(v7, COERCE_FLOAT32X2_T(-_D11));
  *&v89 = vmuls_lane_f32(*(v4 + 20), *&v88.f64[0], 1) + (*v88.f64 * *(v4 + 16));
  LODWORD(v90) = *(v4 + 24);
  v91.i32[0] = *(v4 + 36);
  *v92.i32 = vmuls_lane_f32(*(v4 + 32), *&v88.f64[0], 1);
  v93 = v152;
  v153 = vaddq_f32(v152, v87);
  v87.f32[0] = *&v90 + *&v89;
  *v88.f64 = *v91.i32 + (*v92.i32 + (*v88.f64 * *(v4 + 28)));
  v87.i32[1] = LODWORD(v88.f64[0]);
  *v95.i64 = CI::BitmapSampler::read(*(v4 + 8), *v87.i64, v88, v89, v90, v93, v92, v91, v94);
  *&v96.f64[0] = vadd_f32(v7, *&_D12);
  *&v97 = vmuls_lane_f32(*(v4 + 20), *&v96.f64[0], 1) + (*v96.f64 * *(v4 + 16));
  LODWORD(v98) = *(v4 + 24);
  v99.i32[0] = *(v4 + 36);
  *v100.i32 = vmuls_lane_f32(*(v4 + 32), *&v96.f64[0], 1);
  v101 = v153;
  v154 = vaddq_f32(v153, v95);
  v95.f32[0] = *&v98 + *&v97;
  *v96.f64 = *v99.i32 + (*v100.i32 + (*v96.f64 * *(v4 + 28)));
  v95.i32[1] = LODWORD(v96.f64[0]);
  *v103.i64 = CI::BitmapSampler::read(*(v4 + 8), *v95.i64, v96, v97, v98, v101, v100, v99, v102);
  *&v104.f64[0] = vadd_f32(v7, 0x3F80000040400000);
  *&v105 = vmuls_lane_f32(*(v4 + 20), *&v104.f64[0], 1) + (*v104.f64 * *(v4 + 16));
  LODWORD(v106) = *(v4 + 24);
  v107.i32[0] = *(v4 + 36);
  *v108.i32 = vmuls_lane_f32(*(v4 + 32), *&v104.f64[0], 1);
  v109 = v154;
  v155 = vaddq_f32(v154, v103);
  v103.f32[0] = *&v106 + *&v105;
  *v104.f64 = *v107.i32 + (*v108.i32 + (*v104.f64 * *(v4 + 28)));
  v103.i32[1] = LODWORD(v104.f64[0]);
  *v111.i64 = CI::BitmapSampler::read(*(v4 + 8), *v103.i64, v104, v105, v106, v109, v108, v107, v110);
  *&v112.f64[0] = vadd_f32(v7, COERCE_FLOAT32X2_T(-_D10));
  *&v113 = vmuls_lane_f32(*(v4 + 20), *&v112.f64[0], 1) + (*v112.f64 * *(v4 + 16));
  LODWORD(v114) = *(v4 + 24);
  v115.i32[0] = *(v4 + 36);
  *v116.i32 = vmuls_lane_f32(*(v4 + 32), *&v112.f64[0], 1);
  v117 = v155;
  v156 = vaddq_f32(v155, v111);
  v111.f32[0] = *&v114 + *&v113;
  *v112.f64 = *v115.i32 + (*v116.i32 + (*v112.f64 * *(v4 + 28)));
  v111.i32[1] = LODWORD(v112.f64[0]);
  *v119.i64 = CI::BitmapSampler::read(*(v4 + 8), *v111.i64, v112, v113, v114, v117, v116, v115, v118);
  *&v120.f64[0] = vadd_f32(v7, 0x40400000BF800000);
  *&v121 = vmuls_lane_f32(*(v4 + 20), *&v120.f64[0], 1) + (*v120.f64 * *(v4 + 16));
  LODWORD(v122) = *(v4 + 24);
  v123.i32[0] = *(v4 + 36);
  *v124.i32 = vmuls_lane_f32(*(v4 + 32), *&v120.f64[0], 1);
  v125 = v156;
  v157 = vaddq_f32(v156, v119);
  v119.f32[0] = *&v122 + *&v121;
  *v120.f64 = *v123.i32 + (*v124.i32 + (*v120.f64 * *(v4 + 28)));
  v119.i32[1] = LODWORD(v120.f64[0]);
  *v127.i64 = CI::BitmapSampler::read(*(v4 + 8), *v119.i64, v120, v121, v122, v125, v124, v123, v126);
  *&v128.f64[0] = vadd_f32(v7, 0x404000003F800000);
  *&v129 = vmuls_lane_f32(*(v4 + 20), *&v128.f64[0], 1) + (*v128.f64 * *(v4 + 16));
  LODWORD(v130) = *(v4 + 24);
  v131.i32[0] = *(v4 + 36);
  *v132.i32 = vmuls_lane_f32(*(v4 + 32), *&v128.f64[0], 1);
  v133 = v157;
  v158 = vaddq_f32(v157, v127);
  v127.f32[0] = *&v130 + *&v129;
  *v128.f64 = *v131.i32 + (*v132.i32 + (*v128.f64 * *(v4 + 28)));
  v127.i32[1] = LODWORD(v128.f64[0]);
  *v135.i64 = CI::BitmapSampler::read(*(v4 + 8), *v127.i64, v128, v129, v130, v133, v132, v131, v134);
  *&v136.f64[0] = vadd_f32(v7, *&_D9);
  *&v137 = vmuls_lane_f32(*(v4 + 20), *&v136.f64[0], 1) + (*v136.f64 * *(v4 + 16));
  LODWORD(v138) = *(v4 + 24);
  v139.i32[0] = *(v4 + 36);
  *v140.i32 = vmuls_lane_f32(*(v4 + 32), *&v136.f64[0], 1);
  v141 = v158;
  v159 = vaddq_f32(v158, v135);
  v135.f32[0] = *&v138 + *&v137;
  *v136.f64 = *v139.i32 + (*v140.i32 + (*v136.f64 * *(v4 + 28)));
  v135.i32[1] = LODWORD(v136.f64[0]);
  *v143.i64 = CI::BitmapSampler::read(*(v4 + 8), *v135.i64, v136, v137, v138, v141, v140, v139, v142);
  *&result = vmulq_f32(vaddq_f32(v159, v143), vdupq_n_s32(0x3D800000u)).u64[0];
  return result;
}

double CI::sw_areaAvg4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #4.0 }

  v11 = vmul_f32(*DC, *&_Q1.f64[0]);
  __asm { FMOV            V10.2S, #-1.0 }

  v13 = vadd_f32(v11, *&_D10);
  LODWORD(v14) = *(v4 + 24);
  v15.i32[0] = *(v4 + 36);
  *v16.i32 = vmuls_lane_f32(*(v4 + 32), v13, 1);
  *&v17 = *v16.i32 + (v13.f32[0] * *(v4 + 28));
  v13.f32[0] = *&v14 + (vmuls_lane_f32(*(v4 + 20), v13, 1) + (v13.f32[0] * *(v4 + 16)));
  *_Q1.f64 = *v15.i32 + *&v17;
  v13.f32[1] = *v15.i32 + *&v17;
  *v20.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v13, _Q1, v14, v17, v16, v15, v18, v19);
  v48 = v20;
  __asm { FMOV            V9.2S, #1.0 }

  *v20.f32 = vadd_f32(v11, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v22) = *(v4 + 24);
  v23.i32[0] = *(v4 + 36);
  *v24.i32 = vmuls_lane_f32(*(v4 + 32), *v20.f32, 1);
  *&v25 = *v24.i32 + (v20.f32[0] * *(v4 + 28));
  v20.f32[0] = *&v22 + (vmuls_lane_f32(*(v4 + 20), *v20.f32, 1) + (v20.f32[0] * *(v4 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v20.f32[1] = *v23.i32 + *&v25;
  *v29.i64 = CI::BitmapSampler::read(*(v4 + 8), *v20.i64, v26, v22, v25, v24, v23, v27, v28);
  *&v30.f64[0] = vadd_f32(v11, COERCE_FLOAT32X2_T(-_D10));
  *&v31 = vmuls_lane_f32(*(v4 + 20), *&v30.f64[0], 1) + (*v30.f64 * *(v4 + 16));
  LODWORD(v32) = *(v4 + 24);
  v33.i32[0] = *(v4 + 36);
  *v34.i32 = vmuls_lane_f32(*(v4 + 32), *&v30.f64[0], 1);
  v35 = v48;
  v49 = vaddq_f32(v48, v29);
  v29.f32[0] = *&v32 + *&v31;
  *v30.f64 = *v33.i32 + (*v34.i32 + (*v30.f64 * *(v4 + 28)));
  v29.i32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v4 + 8), *v29.i64, v30, v31, v32, v35, v34, v33, v36);
  *&v38.f64[0] = vadd_f32(v11, *&_D9);
  *&v39 = vmuls_lane_f32(*(v4 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v4 + 16));
  LODWORD(v40) = *(v4 + 24);
  v41.i32[0] = *(v4 + 36);
  *v42.i32 = vmuls_lane_f32(*(v4 + 32), *&v38.f64[0], 1);
  v43 = v49;
  v50 = vaddq_f32(v49, v37);
  v37.f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v4 + 28)));
  v37.i32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v4 + 8), *v37.i64, v38, v39, v40, v43, v42, v41, v44);
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(vaddq_f32(v50, v45), _Q1).u64[0];
  return result;
}

double CI::sw_areaAvg2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = vadd_f32(*DC, *DC);
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v11.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  return CI::BitmapSampler::read(*(v4 + 8), *&v6, v11, v7, v10, v9, v8, v12, v13);
}

double CI::sw_vertAvg16(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1098907648;
  v7 = vmul_f32(*DC, 0x418000003F800000);
  v8 = vadd_f32(v7, 0xC0E0000000000000);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v74 = v15;
  *v15.f32 = vadd_f32(v7, 0xC0A0000000000000);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  *&v24.f64[0] = vadd_f32(v7, 0xC040000000000000);
  *&v25 = vmuls_lane_f32(*(v4 + 20), *&v24.f64[0], 1) + (*v24.f64 * *(v4 + 16));
  LODWORD(v26) = *(v4 + 24);
  v27.i32[0] = *(v4 + 36);
  *v28.i32 = vmuls_lane_f32(*(v4 + 32), *&v24.f64[0], 1);
  v29 = v74;
  v75 = vaddq_f32(v74, v23);
  v23.f32[0] = *&v26 + *&v25;
  *v24.f64 = *v27.i32 + (*v28.i32 + (*v24.f64 * *(v4 + 28)));
  v23.i32[1] = LODWORD(v24.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v4 + 8), *v23.i64, v24, v25, v26, v29, v28, v27, v30);
  *&v32.f64[0] = vadd_f32(v7, 0xBF80000000000000);
  *&v33 = vmuls_lane_f32(*(v4 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v4 + 16));
  LODWORD(v34) = *(v4 + 24);
  v35.i32[0] = *(v4 + 36);
  *v36.i32 = vmuls_lane_f32(*(v4 + 32), *&v32.f64[0], 1);
  v37 = v75;
  v76 = vaddq_f32(v75, v31);
  v31.f32[0] = *&v34 + *&v33;
  *v32.f64 = *v35.i32 + (*v36.i32 + (*v32.f64 * *(v4 + 28)));
  v31.i32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v4 + 8), *v31.i64, v32, v33, v34, v37, v36, v35, v38);
  *&v40.f64[0] = vadd_f32(v7, 0x3F80000000000000);
  *&v41 = vmuls_lane_f32(*(v4 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v4 + 16));
  LODWORD(v42) = *(v4 + 24);
  v43.i32[0] = *(v4 + 36);
  *v44.i32 = vmuls_lane_f32(*(v4 + 32), *&v40.f64[0], 1);
  v45 = v76;
  v77 = vaddq_f32(v76, v39);
  v39.f32[0] = *&v42 + *&v41;
  *v40.f64 = *v43.i32 + (*v44.i32 + (*v40.f64 * *(v4 + 28)));
  v39.i32[1] = LODWORD(v40.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v4 + 8), *v39.i64, v40, v41, v42, v45, v44, v43, v46);
  *&v48.f64[0] = vadd_f32(v7, 0x4040000000000000);
  *&v49 = vmuls_lane_f32(*(v4 + 20), *&v48.f64[0], 1) + (*v48.f64 * *(v4 + 16));
  LODWORD(v50) = *(v4 + 24);
  v51.i32[0] = *(v4 + 36);
  *v52.i32 = vmuls_lane_f32(*(v4 + 32), *&v48.f64[0], 1);
  v53 = v77;
  v78 = vaddq_f32(v77, v47);
  v47.f32[0] = *&v50 + *&v49;
  *v48.f64 = *v51.i32 + (*v52.i32 + (*v48.f64 * *(v4 + 28)));
  v47.i32[1] = LODWORD(v48.f64[0]);
  *v55.i64 = CI::BitmapSampler::read(*(v4 + 8), *v47.i64, v48, v49, v50, v53, v52, v51, v54);
  *&v56.f64[0] = vadd_f32(v7, 0x40A0000000000000);
  *&v57 = vmuls_lane_f32(*(v4 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v4 + 16));
  LODWORD(v58) = *(v4 + 24);
  v59.i32[0] = *(v4 + 36);
  *v60.i32 = vmuls_lane_f32(*(v4 + 32), *&v56.f64[0], 1);
  v61 = v78;
  v79 = vaddq_f32(v78, v55);
  v55.f32[0] = *&v58 + *&v57;
  *v56.f64 = *v59.i32 + (*v60.i32 + (*v56.f64 * *(v4 + 28)));
  v55.i32[1] = LODWORD(v56.f64[0]);
  *v63.i64 = CI::BitmapSampler::read(*(v4 + 8), *v55.i64, v56, v57, v58, v61, v60, v59, v62);
  *&v64.f64[0] = vadd_f32(v7, 0x40E0000000000000);
  *&v65 = vmuls_lane_f32(*(v4 + 20), *&v64.f64[0], 1) + (*v64.f64 * *(v4 + 16));
  LODWORD(v66) = *(v4 + 24);
  v67.i32[0] = *(v4 + 36);
  *v68.i32 = vmuls_lane_f32(*(v4 + 32), *&v64.f64[0], 1);
  v69 = v79;
  v80 = vaddq_f32(v79, v63);
  v63.f32[0] = *&v66 + *&v65;
  *v64.f64 = *v67.i32 + (*v68.i32 + (*v64.f64 * *(v4 + 28)));
  v63.i32[1] = LODWORD(v64.f64[0]);
  *v71.i64 = CI::BitmapSampler::read(*(v4 + 8), *v63.i64, v64, v65, v66, v69, v68, v67, v70);
  v72.i64[0] = 0x3E0000003E000000;
  v72.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(vaddq_f32(v80, v71), v72).u64[0];
  return result;
}

double CI::sw_vertAvg8(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1090519040;
  v7 = vmul_f32(*DC, 0x410000003F800000);
  v8 = vadd_f32(v7, 0xC040000000000000);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  *v15.f32 = vadd_f32(v7, 0xBF80000000000000);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  *&v24.f64[0] = vadd_f32(v7, 0x3F80000000000000);
  *&v25 = vmuls_lane_f32(*(v4 + 20), *&v24.f64[0], 1) + (*v24.f64 * *(v4 + 16));
  LODWORD(v26) = *(v4 + 24);
  v27.i32[0] = *(v4 + 36);
  *v28.i32 = vmuls_lane_f32(*(v4 + 32), *&v24.f64[0], 1);
  v29 = v46;
  v47 = vaddq_f32(v46, v23);
  v23.f32[0] = *&v26 + *&v25;
  *v24.f64 = *v27.i32 + (*v28.i32 + (*v24.f64 * *(v4 + 28)));
  v23.i32[1] = LODWORD(v24.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v4 + 8), *v23.i64, v24, v25, v26, v29, v28, v27, v30);
  *&v32.f64[0] = vadd_f32(v7, 0x4040000000000000);
  *&v33 = vmuls_lane_f32(*(v4 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v4 + 16));
  LODWORD(v34) = *(v4 + 24);
  v35.i32[0] = *(v4 + 36);
  *v36.i32 = vmuls_lane_f32(*(v4 + 32), *&v32.f64[0], 1);
  v37 = v47;
  v48 = vaddq_f32(v47, v31);
  v31.f32[0] = *&v34 + *&v33;
  *v32.f64 = *v35.i32 + (*v36.i32 + (*v32.f64 * *(v4 + 28)));
  v31.i32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v4 + 8), *v31.i64, v32, v33, v34, v37, v36, v35, v38);
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(vaddq_f32(v48, v39), _Q1).u64[0];
  return result;
}

double CI::sw_vertAvg4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1082130432;
  v7 = vmul_f32(*DC, 0x408000003F800000);
  v8 = vadd_f32(v7, 0xBF80000000000000);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v26 = v15;
  *v15.f32 = vadd_f32(v7, 0x3F80000000000000);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  v24.i64[0] = 0x3F0000003F000000;
  v24.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(v26, v23), v24).u64[0];
  return result;
}

double CI::sw_vertAvg2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 0x40000000;
  v7 = vmul_f32(*DC, 0x400000003F800000);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v4 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v4 + 20), v7, 1) + (v7.f32[0] * *(v4 + 16)));
  *v6.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  return CI::BitmapSampler::read(*(v4 + 8), *&v7, v6, v8, v11, v10, v9, v12, v13);
}

double CI::sw_horizAvg16(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1065353216;
  v7 = vmul_f32(*DC, 0x3F80000041800000);
  v8 = vadd_f32(v7, 3235905536);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v74 = v15;
  *v15.f32 = vadd_f32(v7, 3231711232);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  *&v24.f64[0] = vadd_f32(v7, 3225419776);
  *&v25 = vmuls_lane_f32(*(v4 + 20), *&v24.f64[0], 1) + (*v24.f64 * *(v4 + 16));
  LODWORD(v26) = *(v4 + 24);
  v27.i32[0] = *(v4 + 36);
  *v28.i32 = vmuls_lane_f32(*(v4 + 32), *&v24.f64[0], 1);
  v29 = v74;
  v75 = vaddq_f32(v74, v23);
  v23.f32[0] = *&v26 + *&v25;
  *v24.f64 = *v27.i32 + (*v28.i32 + (*v24.f64 * *(v4 + 28)));
  v23.i32[1] = LODWORD(v24.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v4 + 8), *v23.i64, v24, v25, v26, v29, v28, v27, v30);
  *&v32.f64[0] = vadd_f32(v7, 3212836864);
  *&v33 = vmuls_lane_f32(*(v4 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v4 + 16));
  LODWORD(v34) = *(v4 + 24);
  v35.i32[0] = *(v4 + 36);
  *v36.i32 = vmuls_lane_f32(*(v4 + 32), *&v32.f64[0], 1);
  v37 = v75;
  v76 = vaddq_f32(v75, v31);
  v31.f32[0] = *&v34 + *&v33;
  *v32.f64 = *v35.i32 + (*v36.i32 + (*v32.f64 * *(v4 + 28)));
  v31.i32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v4 + 8), *v31.i64, v32, v33, v34, v37, v36, v35, v38);
  *&v40.f64[0] = vadd_f32(v7, 1065353216);
  *&v41 = vmuls_lane_f32(*(v4 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v4 + 16));
  LODWORD(v42) = *(v4 + 24);
  v43.i32[0] = *(v4 + 36);
  *v44.i32 = vmuls_lane_f32(*(v4 + 32), *&v40.f64[0], 1);
  v45 = v76;
  v77 = vaddq_f32(v76, v39);
  v39.f32[0] = *&v42 + *&v41;
  *v40.f64 = *v43.i32 + (*v44.i32 + (*v40.f64 * *(v4 + 28)));
  v39.i32[1] = LODWORD(v40.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v4 + 8), *v39.i64, v40, v41, v42, v45, v44, v43, v46);
  *&v48.f64[0] = vadd_f32(v7, 1077936128);
  *&v49 = vmuls_lane_f32(*(v4 + 20), *&v48.f64[0], 1) + (*v48.f64 * *(v4 + 16));
  LODWORD(v50) = *(v4 + 24);
  v51.i32[0] = *(v4 + 36);
  *v52.i32 = vmuls_lane_f32(*(v4 + 32), *&v48.f64[0], 1);
  v53 = v77;
  v78 = vaddq_f32(v77, v47);
  v47.f32[0] = *&v50 + *&v49;
  *v48.f64 = *v51.i32 + (*v52.i32 + (*v48.f64 * *(v4 + 28)));
  v47.i32[1] = LODWORD(v48.f64[0]);
  *v55.i64 = CI::BitmapSampler::read(*(v4 + 8), *v47.i64, v48, v49, v50, v53, v52, v51, v54);
  *&v56.f64[0] = vadd_f32(v7, 1084227584);
  *&v57 = vmuls_lane_f32(*(v4 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v4 + 16));
  LODWORD(v58) = *(v4 + 24);
  v59.i32[0] = *(v4 + 36);
  *v60.i32 = vmuls_lane_f32(*(v4 + 32), *&v56.f64[0], 1);
  v61 = v78;
  v79 = vaddq_f32(v78, v55);
  v55.f32[0] = *&v58 + *&v57;
  *v56.f64 = *v59.i32 + (*v60.i32 + (*v56.f64 * *(v4 + 28)));
  v55.i32[1] = LODWORD(v56.f64[0]);
  *v63.i64 = CI::BitmapSampler::read(*(v4 + 8), *v55.i64, v56, v57, v58, v61, v60, v59, v62);
  *&v64.f64[0] = vadd_f32(v7, 1088421888);
  *&v65 = vmuls_lane_f32(*(v4 + 20), *&v64.f64[0], 1) + (*v64.f64 * *(v4 + 16));
  LODWORD(v66) = *(v4 + 24);
  v67.i32[0] = *(v4 + 36);
  *v68.i32 = vmuls_lane_f32(*(v4 + 32), *&v64.f64[0], 1);
  v69 = v79;
  v80 = vaddq_f32(v79, v63);
  v63.f32[0] = *&v66 + *&v65;
  *v64.f64 = *v67.i32 + (*v68.i32 + (*v64.f64 * *(v4 + 28)));
  v63.i32[1] = LODWORD(v64.f64[0]);
  *v71.i64 = CI::BitmapSampler::read(*(v4 + 8), *v63.i64, v64, v65, v66, v69, v68, v67, v70);
  v72.i64[0] = 0x3E0000003E000000;
  v72.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(vaddq_f32(v80, v71), v72).u64[0];
  return result;
}

double CI::sw_horizAvg8(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1065353216;
  v7 = vmul_f32(*DC, 0x3F80000041000000);
  v8 = vadd_f32(v7, 3225419776);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  *v15.f32 = vadd_f32(v7, 3212836864);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  *&v24.f64[0] = vadd_f32(v7, 1065353216);
  *&v25 = vmuls_lane_f32(*(v4 + 20), *&v24.f64[0], 1) + (*v24.f64 * *(v4 + 16));
  LODWORD(v26) = *(v4 + 24);
  v27.i32[0] = *(v4 + 36);
  *v28.i32 = vmuls_lane_f32(*(v4 + 32), *&v24.f64[0], 1);
  v29 = v46;
  v47 = vaddq_f32(v46, v23);
  v23.f32[0] = *&v26 + *&v25;
  *v24.f64 = *v27.i32 + (*v28.i32 + (*v24.f64 * *(v4 + 28)));
  v23.i32[1] = LODWORD(v24.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v4 + 8), *v23.i64, v24, v25, v26, v29, v28, v27, v30);
  *&v32.f64[0] = vadd_f32(v7, 1077936128);
  *&v33 = vmuls_lane_f32(*(v4 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v4 + 16));
  LODWORD(v34) = *(v4 + 24);
  v35.i32[0] = *(v4 + 36);
  *v36.i32 = vmuls_lane_f32(*(v4 + 32), *&v32.f64[0], 1);
  v37 = v47;
  v48 = vaddq_f32(v47, v31);
  v31.f32[0] = *&v34 + *&v33;
  *v32.f64 = *v35.i32 + (*v36.i32 + (*v32.f64 * *(v4 + 28)));
  v31.i32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v4 + 8), *v31.i64, v32, v33, v34, v37, v36, v35, v38);
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(vaddq_f32(v48, v39), _Q1).u64[0];
  return result;
}

double CI::sw_horizAvg4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1065353216;
  v7 = vmul_f32(*DC, 0x3F80000040800000);
  v8 = vadd_f32(v7, 3212836864);
  LODWORD(v9) = *(v4 + 24);
  v10.i32[0] = *(v4 + 36);
  *v11.i32 = vmuls_lane_f32(*(v4 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v4 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v4 + 20), v8, 1) + (v8.f32[0] * *(v4 + 16)));
  *v6.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v8, v6, v9, v12, v11, v10, v13, v14);
  v26 = v15;
  *v15.f32 = vadd_f32(v7, 1065353216);
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  v24.i64[0] = 0x3F0000003F000000;
  v24.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(v26, v23), v24).u64[0];
  return result;
}

double CI::sw_horizAvg2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1065353216;
  v7 = vmul_f32(*DC, 0x3F80000040000000);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v4 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v4 + 20), v7, 1) + (v7.f32[0] * *(v4 + 16)));
  *v6.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  return CI::BitmapSampler::read(*(v4 + 8), *&v7, v6, v8, v11, v10, v9, v12, v13);
}

unint64_t CI::sw_areaMax4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v51 = *v9;
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v52 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v10 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v50 = v20;
  v21 = v52;
  *v20.f32 = vadd_f32(*&v52.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v25 = *v24.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.f32[1] = *v23.i32 + *&v25;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v21, v22, v25, v24, v23, v26, v27);
  v48 = v28;
  v29 = v52;
  *v28.f32 = vadd_f32(*&v52.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), *v28.f32, 1);
  *&v33 = *v32.i32 + (v28.f32[0] * *(v10 + 28));
  v28.f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), *v28.f32, 1) + (v28.f32[0] * *(v10 + 16)));
  *v29.f64 = *v31.i32 + *&v33;
  v28.f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v29, v30, v33, v32, v31, v34, v35);
  v49 = v36;
  *v36.f32 = vadd_f32(*&v52.f64[0], 0x3F0000003F000000);
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v10 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v10 + 20), *v36.f32, 1) + (v36.f32[0] * *(v10 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  if (*v52.f64 + 0.5 >= *&v51)
  {
    v46 = v49;
    v45 = v50;
  }

  else
  {
    v45 = vmaxnmq_f32(v50, v48);
    v46 = vmaxnmq_f32(v49, v44);
  }

  if (*(v52.f64 + 1) + 0.5 >= *(&v51 + 1))
  {
    return v45.i64[0];
  }

  else
  {
    return vmaxnmq_f32(v45, v46).u64[0];
  }
}

unint64_t CI::sw_horizMax4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v47 = v7;
  v8 = vadd_f32(*&v7.f64[0], 3217031168);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  v16 = v47;
  *v15.f32 = vadd_f32(*&v47.f64[0], 3204448256);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), *v15.f32, 1);
  *&v20 = *v19.i32 + (v15.f32[0] * *(v5 + 28));
  v15.f32[0] = *&v17 + (vmuls_lane_f32(*(v5 + 20), *v15.f32, 1) + (v15.f32[0] * *(v5 + 16)));
  *v16.f64 = *v18.i32 + *&v20;
  v15.f32[1] = *v18.i32 + *&v20;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v16, v17, v20, v19, v18, v21, v22);
  v45 = v23;
  v24 = v47;
  *v23.f32 = vadd_f32(*&v47.f64[0], 1056964608);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), *v23.f32, 1);
  *&v28 = *v27.i32 + (v23.f32[0] * *(v5 + 28));
  v23.f32[0] = *&v25 + (vmuls_lane_f32(*(v5 + 20), *v23.f32, 1) + (v23.f32[0] * *(v5 + 16)));
  *v24.f64 = *v26.i32 + *&v28;
  v23.f32[1] = *v26.i32 + *&v28;
  *v31.i64 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v24, v25, v28, v27, v26, v29, v30);
  v44 = v31;
  v32 = v47;
  *v31.f32 = vadd_f32(*&v47.f64[0], 1069547520);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), *v31.f32, 1);
  *&v36 = *v35.i32 + (v31.f32[0] * *(v5 + 28));
  v31.f32[0] = *&v33 + (vmuls_lane_f32(*(v5 + 20), *v31.f32, 1) + (v31.f32[0] * *(v5 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.f32[1] = *v34.i32 + *&v36;
  *v39.i64 = CI::BitmapSampler::read(*(v5 + 8), *v31.i64, v32, v33, v36, v35, v34, v37, v38);
  v40 = v46;
  v41 = *v47.f64;
  v42 = v6;
  if (*v47.f64 + -0.5 < v6)
  {
    v40 = vmaxnmq_f32(v46, v45);
  }

  if (v41 + 0.5 < v42)
  {
    v40 = vmaxnmq_f32(v40, v44);
  }

  if (v41 + 1.5 >= v42)
  {
    return v40.i64[0];
  }

  else
  {
    return vmaxnmq_f32(v40, v39).u64[0];
  }
}

unint64_t CI::sw_vertMax4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v47 = v7;
  v8 = vadd_f32(*&v7.f64[0], 0xBFC0000000000000);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  v16 = v47;
  *v15.f32 = vadd_f32(*&v47.f64[0], 0xBF00000000000000);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), *v15.f32, 1);
  *&v20 = *v19.i32 + (v15.f32[0] * *(v5 + 28));
  v15.f32[0] = *&v17 + (vmuls_lane_f32(*(v5 + 20), *v15.f32, 1) + (v15.f32[0] * *(v5 + 16)));
  *v16.f64 = *v18.i32 + *&v20;
  v15.f32[1] = *v18.i32 + *&v20;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v16, v17, v20, v19, v18, v21, v22);
  v45 = v23;
  v24 = v47;
  *v23.f32 = vadd_f32(*&v47.f64[0], 0x3F00000000000000);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), *v23.f32, 1);
  *&v28 = *v27.i32 + (v23.f32[0] * *(v5 + 28));
  v23.f32[0] = *&v25 + (vmuls_lane_f32(*(v5 + 20), *v23.f32, 1) + (v23.f32[0] * *(v5 + 16)));
  *v24.f64 = *v26.i32 + *&v28;
  v23.f32[1] = *v26.i32 + *&v28;
  *v31.i64 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v24, v25, v28, v27, v26, v29, v30);
  v44 = v31;
  v32 = v47;
  *v31.f32 = vadd_f32(*&v47.f64[0], 0x3FC0000000000000);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), *v31.f32, 1);
  *&v36 = *v35.i32 + (v31.f32[0] * *(v5 + 28));
  v31.f32[0] = *&v33 + (vmuls_lane_f32(*(v5 + 20), *v31.f32, 1) + (v31.f32[0] * *(v5 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.f32[1] = *v34.i32 + *&v36;
  *v39.i64 = CI::BitmapSampler::read(*(v5 + 8), *v31.i64, v32, v33, v36, v35, v34, v37, v38);
  v40 = v46;
  v41 = *(v47.f64 + 1);
  v42 = v6;
  if (*(v47.f64 + 1) + -0.5 < v6)
  {
    v40 = vmaxnmq_f32(v46, v45);
  }

  if (v41 + 0.5 < v42)
  {
    v40 = vmaxnmq_f32(v40, v44);
  }

  if (v41 + 1.5 >= v42)
  {
    return v40.i64[0];
  }

  else
  {
    return vmaxnmq_f32(v40, v39).u64[0];
  }
}

unint64_t CI::sw_areaMin4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v51 = *v9;
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v52 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v10 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v50 = v20;
  v21 = v52;
  *v20.f32 = vadd_f32(*&v52.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v25 = *v24.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.f32[1] = *v23.i32 + *&v25;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v21, v22, v25, v24, v23, v26, v27);
  v48 = v28;
  v29 = v52;
  *v28.f32 = vadd_f32(*&v52.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), *v28.f32, 1);
  *&v33 = *v32.i32 + (v28.f32[0] * *(v10 + 28));
  v28.f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), *v28.f32, 1) + (v28.f32[0] * *(v10 + 16)));
  *v29.f64 = *v31.i32 + *&v33;
  v28.f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v29, v30, v33, v32, v31, v34, v35);
  v49 = v36;
  *v36.f32 = vadd_f32(*&v52.f64[0], 0x3F0000003F000000);
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v10 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v10 + 20), *v36.f32, 1) + (v36.f32[0] * *(v10 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  if (*v52.f64 + 0.5 >= *&v51)
  {
    v46 = v49;
    v45 = v50;
  }

  else
  {
    v45 = vminnmq_f32(v50, v48);
    v46 = vminnmq_f32(v49, v44);
  }

  if (*(v52.f64 + 1) + 0.5 >= *(&v51 + 1))
  {
    return v45.i64[0];
  }

  else
  {
    return vminnmq_f32(v45, v46).u64[0];
  }
}

unint64_t CI::sw_horizMin4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v47 = v7;
  v8 = vadd_f32(*&v7.f64[0], 3217031168);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  v16 = v47;
  *v15.f32 = vadd_f32(*&v47.f64[0], 3204448256);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), *v15.f32, 1);
  *&v20 = *v19.i32 + (v15.f32[0] * *(v5 + 28));
  v15.f32[0] = *&v17 + (vmuls_lane_f32(*(v5 + 20), *v15.f32, 1) + (v15.f32[0] * *(v5 + 16)));
  *v16.f64 = *v18.i32 + *&v20;
  v15.f32[1] = *v18.i32 + *&v20;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v16, v17, v20, v19, v18, v21, v22);
  v45 = v23;
  v24 = v47;
  *v23.f32 = vadd_f32(*&v47.f64[0], 1056964608);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), *v23.f32, 1);
  *&v28 = *v27.i32 + (v23.f32[0] * *(v5 + 28));
  v23.f32[0] = *&v25 + (vmuls_lane_f32(*(v5 + 20), *v23.f32, 1) + (v23.f32[0] * *(v5 + 16)));
  *v24.f64 = *v26.i32 + *&v28;
  v23.f32[1] = *v26.i32 + *&v28;
  *v31.i64 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v24, v25, v28, v27, v26, v29, v30);
  v44 = v31;
  v32 = v47;
  *v31.f32 = vadd_f32(*&v47.f64[0], 1069547520);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), *v31.f32, 1);
  *&v36 = *v35.i32 + (v31.f32[0] * *(v5 + 28));
  v31.f32[0] = *&v33 + (vmuls_lane_f32(*(v5 + 20), *v31.f32, 1) + (v31.f32[0] * *(v5 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.f32[1] = *v34.i32 + *&v36;
  *v39.i64 = CI::BitmapSampler::read(*(v5 + 8), *v31.i64, v32, v33, v36, v35, v34, v37, v38);
  v40 = v46;
  v41 = *v47.f64;
  v42 = v6;
  if (*v47.f64 + -0.5 < v6)
  {
    v40 = vminnmq_f32(v46, v45);
  }

  if (v41 + 0.5 < v42)
  {
    v40 = vminnmq_f32(v40, v44);
  }

  if (v41 + 1.5 >= v42)
  {
    return v40.i64[0];
  }

  else
  {
    return vminnmq_f32(v40, v39).u64[0];
  }
}

unint64_t CI::sw_vertMin4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v47 = v7;
  v8 = vadd_f32(*&v7.f64[0], 0xBFC0000000000000);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v46 = v15;
  v16 = v47;
  *v15.f32 = vadd_f32(*&v47.f64[0], 0xBF00000000000000);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), *v15.f32, 1);
  *&v20 = *v19.i32 + (v15.f32[0] * *(v5 + 28));
  v15.f32[0] = *&v17 + (vmuls_lane_f32(*(v5 + 20), *v15.f32, 1) + (v15.f32[0] * *(v5 + 16)));
  *v16.f64 = *v18.i32 + *&v20;
  v15.f32[1] = *v18.i32 + *&v20;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v16, v17, v20, v19, v18, v21, v22);
  v45 = v23;
  v24 = v47;
  *v23.f32 = vadd_f32(*&v47.f64[0], 0x3F00000000000000);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), *v23.f32, 1);
  *&v28 = *v27.i32 + (v23.f32[0] * *(v5 + 28));
  v23.f32[0] = *&v25 + (vmuls_lane_f32(*(v5 + 20), *v23.f32, 1) + (v23.f32[0] * *(v5 + 16)));
  *v24.f64 = *v26.i32 + *&v28;
  v23.f32[1] = *v26.i32 + *&v28;
  *v31.i64 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v24, v25, v28, v27, v26, v29, v30);
  v44 = v31;
  v32 = v47;
  *v31.f32 = vadd_f32(*&v47.f64[0], 0x3FC0000000000000);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), *v31.f32, 1);
  *&v36 = *v35.i32 + (v31.f32[0] * *(v5 + 28));
  v31.f32[0] = *&v33 + (vmuls_lane_f32(*(v5 + 20), *v31.f32, 1) + (v31.f32[0] * *(v5 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.f32[1] = *v34.i32 + *&v36;
  *v39.i64 = CI::BitmapSampler::read(*(v5 + 8), *v31.i64, v32, v33, v36, v35, v34, v37, v38);
  v40 = v46;
  v41 = *(v47.f64 + 1);
  v42 = v6;
  if (*(v47.f64 + 1) + -0.5 < v6)
  {
    v40 = vminnmq_f32(v46, v45);
  }

  if (v41 + 0.5 < v42)
  {
    v40 = vminnmq_f32(v40, v44);
  }

  if (v41 + 1.5 >= v42)
  {
    return v40.i64[0];
  }

  else
  {
    return vminnmq_f32(v40, v39).u64[0];
  }
}

uint64_t CI::sw_areaMaxAlphaS4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v54 = *v9;
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v55 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v10 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v21 = -0.0000305175853;
  v22 = v55;
  *v23.i8 = vadd_f32(*&v55.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  *v22.f64 = vmuls_lane_f32(*(v10 + 20), *v23.i8, 1) + (*v23.i32 * *(v10 + 16));
  LODWORD(v21) = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), *v23.i8, 1);
  *&v26 = *v25.i32 + (*v23.i32 * *(v10 + 28));
  v53 = v20;
  v59 = v20;
  v20.f32[0] = *&v21 + *v22.f64;
  *v22.f64 = *v24.i32 + *&v26;
  v20.f32[1] = *v24.i32 + *&v26;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v22, v21, v26, v25, v24, v23, v27);
  v29 = --0.0000305175998;
  v30 = v55;
  *v31.i8 = vadd_f32(*&v55.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  *v30.f64 = vmuls_lane_f32(*(v10 + 20), *v31.i8, 1) + (*v31.i32 * *(v10 + 16));
  LODWORD(v29) = *(v10 + 24);
  v32.i32[0] = *(v10 + 36);
  *v33.i32 = vmuls_lane_f32(*(v10 + 32), *v31.i8, 1);
  *&v34 = *v33.i32 + (*v31.i32 * *(v10 + 28));
  v52 = v28;
  v58 = v28;
  v28.f32[0] = *&v29 + *v30.f64;
  *v30.f64 = *v32.i32 + *&v34;
  v28.f32[1] = *v32.i32 + *&v34;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v30, v29, v34, v33, v32, v31, v35);
  v37 = v36;
  *v36.i8 = vadd_f32(*&v55.f64[0], 0x3F0000003F000000);
  v38 = vmuls_lane_f32(*(v10 + 20), *v36.i8, 1) + (*v36.i32 * *(v10 + 16));
  LODWORD(v39) = *(v10 + 24);
  v40.i32[0] = *(v10 + 36);
  *v41.i32 = vmuls_lane_f32(*(v10 + 32), *v36.i8, 1);
  *&v42 = *v41.i32 + (*v36.i32 * *(v10 + 28));
  v51 = v37;
  v57 = v37;
  *v36.i32 = *&v39 + v38;
  *v43.f64 = *v40.i32 + *&v42;
  *&v36.i32[1] = *v40.i32 + *&v42;
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v43, v39, v42, v41, v40, v37, v44);
  v56 = v45;
  v46 = &v57;
  if (*v55.f64 + 0.5 >= *&v54)
  {
    v49 = v53.f32[3];
    v48 = &v57;
  }

  else
  {
    v47 = &v58;
    if (vmovn_s32(vcgeq_f32(v53, v52)).i8[6])
    {
      v47 = &v59;
    }

    v59 = *v47;
    v48 = &v56;
    if (vmovn_s32(vcgeq_f32(v51, v45)).i8[6])
    {
      v48 = &v57;
    }

    v49 = v59.f32[3];
  }

  v57 = *v48;
  if (v49 >= *&v57.i32[3])
  {
    v46 = &v59;
  }

  if (*(v55.f64 + 1) + 0.5 >= *(&v54 + 1))
  {
    v46 = &v59;
  }

  return v46->i64[0];
}

uint64_t CI::sw_areaMaxAlphaH4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v50 = v7;
  v8 = vadd_f32(*&v7.f64[0], 3217031168);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v49 = v15;
  v16 = *(v5 + 24);
  v17 = v50;
  *v18.i8 = vadd_f32(*&v50.f64[0], 3204448256);
  *v17.f64 = vmuls_lane_f32(*(v5 + 20), *v18.i8, 1) + (*v18.i32 * *(v5 + 16));
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), *v18.i8, 1);
  *&v21 = *v20.i32 + (*v18.i32 * *(v5 + 28));
  v54 = v15;
  v15.f32[0] = v16 + *v17.f64;
  *v17.f64 = *v19.i32 + *&v21;
  v15.f32[1] = *v19.i32 + *&v21;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v17, COERCE_DOUBLE(LODWORD(v16)), v21, v20, v19, v18, v22);
  v48 = v23;
  v24 = *(v5 + 24);
  v25 = v50;
  *v26.i8 = vadd_f32(*&v50.f64[0], 1056964608);
  *v25.f64 = vmuls_lane_f32(*(v5 + 20), *v26.i8, 1) + (*v26.i32 * *(v5 + 16));
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), *v26.i8, 1);
  *&v29 = *v28.i32 + (*v26.i32 * *(v5 + 28));
  v53 = v23;
  v23.f32[0] = v24 + *v25.f64;
  *v25.f64 = *v27.i32 + *&v29;
  v23.f32[1] = *v27.i32 + *&v29;
  *&v31 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v25, COERCE_DOUBLE(LODWORD(v24)), v29, v28, v27, v26, v30);
  v47 = *(&v31 + 3);
  v32 = *(v5 + 24);
  v33 = v50;
  *v34.i8 = vadd_f32(*&v50.f64[0], 1069547520);
  *v33.f64 = vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16));
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), *v34.i8, 1);
  *&v37 = *v36.i32 + (*v34.i32 * *(v5 + 28));
  v52 = v31;
  *&v31 = v32 + *v33.f64;
  *v33.f64 = *v35.i32 + *&v37;
  *(&v31 + 1) = *v35.i32 + *&v37;
  *&v39 = CI::BitmapSampler::read(*(v5 + 8), *&v31, v33, COERCE_DOUBLE(LODWORD(v32)), v37, v36, v35, v34, v38);
  v51 = v39;
  v40 = *v50.f64;
  v41 = v6;
  v42 = &v53;
  if (vmovn_s32(vcgeq_f32(v49, v48)).i8[6])
  {
    v42 = &v54;
  }

  if (*v50.f64 + -0.5 >= v41)
  {
    v42 = &v54;
  }

  v54 = *v42;
  v43 = &v52;
  if (v54.f32[3] >= v47)
  {
    v43 = &v54;
  }

  if (v40 + 0.5 >= v41)
  {
    v43 = &v54;
  }

  v54 = *v43;
  v44 = v40 + 1.5;
  v45 = &v51;
  if (v54.f32[3] >= *(&v39 + 3))
  {
    v45 = &v54;
  }

  if (v44 >= v41)
  {
    v45 = &v54;
  }

  return v45->i64[0];
}

uint64_t CI::sw_areaMaxAlphaV4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v50 = v7;
  v8 = vadd_f32(*&v7.f64[0], 0xBFC0000000000000);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v49 = v15;
  HIDWORD(v16) = -1090519040;
  v17 = v50;
  *v18.i8 = vadd_f32(*&v50.f64[0], 0xBF00000000000000);
  *v17.f64 = vmuls_lane_f32(*(v5 + 20), *v18.i8, 1) + (*v18.i32 * *(v5 + 16));
  LODWORD(v16) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), *v18.i8, 1);
  *&v21 = *v20.i32 + (*v18.i32 * *(v5 + 28));
  v54 = v15;
  v15.f32[0] = *&v16 + *v17.f64;
  *v17.f64 = *v19.i32 + *&v21;
  v15.f32[1] = *v19.i32 + *&v21;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v17, v16, v21, v20, v19, v18, v22);
  v48 = v23;
  HIDWORD(v24) = 1056964608;
  v25 = v50;
  *v26.i8 = vadd_f32(*&v50.f64[0], 0x3F00000000000000);
  *v25.f64 = vmuls_lane_f32(*(v5 + 20), *v26.i8, 1) + (*v26.i32 * *(v5 + 16));
  LODWORD(v24) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), *v26.i8, 1);
  *&v29 = *v28.i32 + (*v26.i32 * *(v5 + 28));
  v53 = v23;
  v23.f32[0] = *&v24 + *v25.f64;
  *v25.f64 = *v27.i32 + *&v29;
  v23.f32[1] = *v27.i32 + *&v29;
  *&v31 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v25, v24, v29, v28, v27, v26, v30);
  v47 = *(&v31 + 3);
  HIDWORD(v32) = 1069547520;
  v33 = v50;
  *v34.i8 = vadd_f32(*&v50.f64[0], 0x3FC0000000000000);
  *v33.f64 = vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16));
  LODWORD(v32) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), *v34.i8, 1);
  *&v37 = *v36.i32 + (*v34.i32 * *(v5 + 28));
  v52 = v31;
  *&v31 = *&v32 + *v33.f64;
  *v33.f64 = *v35.i32 + *&v37;
  *(&v31 + 1) = *v35.i32 + *&v37;
  *&v39 = CI::BitmapSampler::read(*(v5 + 8), *&v31, v33, v32, v37, v36, v35, v34, v38);
  v51 = v39;
  v40 = *(v50.f64 + 1);
  v41 = v6;
  v42 = &v53;
  if (vmovn_s32(vcgeq_f32(v49, v48)).i8[6])
  {
    v42 = &v54;
  }

  if (*(v50.f64 + 1) + -0.5 >= v41)
  {
    v42 = &v54;
  }

  v54 = *v42;
  v43 = &v52;
  if (v54.f32[3] >= v47)
  {
    v43 = &v54;
  }

  if (v40 + 0.5 >= v41)
  {
    v43 = &v54;
  }

  v54 = *v43;
  v44 = v40 + 1.5;
  v45 = &v51;
  if (v54.f32[3] >= *(&v39 + 3))
  {
    v45 = &v54;
  }

  if (v44 >= v41)
  {
    v45 = &v54;
  }

  return v45->i64[0];
}

uint64_t CI::sw_areaMinAlphaS4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v54 = *v9;
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v55 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v10 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v21 = -0.0000305175853;
  v22 = v55;
  *v23.i8 = vadd_f32(*&v55.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  *v22.f64 = vmuls_lane_f32(*(v10 + 20), *v23.i8, 1) + (*v23.i32 * *(v10 + 16));
  LODWORD(v21) = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), *v23.i8, 1);
  *&v26 = *v25.i32 + (*v23.i32 * *(v10 + 28));
  v53 = v20;
  v59 = v20;
  v20.f32[0] = *&v21 + *v22.f64;
  *v22.f64 = *v24.i32 + *&v26;
  v20.f32[1] = *v24.i32 + *&v26;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v22, v21, v26, v25, v24, v23, v27);
  v29 = --0.0000305175998;
  v30 = v55;
  *v31.i8 = vadd_f32(*&v55.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  *v30.f64 = vmuls_lane_f32(*(v10 + 20), *v31.i8, 1) + (*v31.i32 * *(v10 + 16));
  LODWORD(v29) = *(v10 + 24);
  v32.i32[0] = *(v10 + 36);
  *v33.i32 = vmuls_lane_f32(*(v10 + 32), *v31.i8, 1);
  *&v34 = *v33.i32 + (*v31.i32 * *(v10 + 28));
  v52 = v28;
  v58 = v28;
  v28.f32[0] = *&v29 + *v30.f64;
  *v30.f64 = *v32.i32 + *&v34;
  v28.f32[1] = *v32.i32 + *&v34;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v30, v29, v34, v33, v32, v31, v35);
  v37 = v36;
  *v36.i8 = vadd_f32(*&v55.f64[0], 0x3F0000003F000000);
  v38 = vmuls_lane_f32(*(v10 + 20), *v36.i8, 1) + (*v36.i32 * *(v10 + 16));
  LODWORD(v39) = *(v10 + 24);
  v40.i32[0] = *(v10 + 36);
  *v41.i32 = vmuls_lane_f32(*(v10 + 32), *v36.i8, 1);
  *&v42 = *v41.i32 + (*v36.i32 * *(v10 + 28));
  v51 = v37;
  v57 = v37;
  *v36.i32 = *&v39 + v38;
  *v43.f64 = *v40.i32 + *&v42;
  *&v36.i32[1] = *v40.i32 + *&v42;
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v43, v39, v42, v41, v40, v37, v44);
  v56 = v45;
  v46 = &v57;
  if (*v55.f64 + 0.5 >= *&v54)
  {
    v49 = v53.f32[3];
    v48 = &v57;
  }

  else
  {
    v47 = &v58;
    if (vmovn_s32(vcgeq_f32(v52, v53)).i8[6])
    {
      v47 = &v59;
    }

    v59 = *v47;
    v48 = &v56;
    if (vmovn_s32(vcgeq_f32(v45, v51)).i8[6])
    {
      v48 = &v57;
    }

    v49 = v59.f32[3];
  }

  v57 = *v48;
  if (v49 <= *&v57.i32[3])
  {
    v46 = &v59;
  }

  if (*(v55.f64 + 1) + 0.5 >= *(&v54 + 1))
  {
    v46 = &v59;
  }

  return v46->i64[0];
}

uint64_t CI::sw_areaMinAlphaH4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v50 = v7;
  v8 = vadd_f32(*&v7.f64[0], 3217031168);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v49 = v15;
  v16 = *(v5 + 24);
  v17 = v50;
  *v18.i8 = vadd_f32(*&v50.f64[0], 3204448256);
  *v17.f64 = vmuls_lane_f32(*(v5 + 20), *v18.i8, 1) + (*v18.i32 * *(v5 + 16));
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), *v18.i8, 1);
  *&v21 = *v20.i32 + (*v18.i32 * *(v5 + 28));
  v54 = v15;
  v15.f32[0] = v16 + *v17.f64;
  *v17.f64 = *v19.i32 + *&v21;
  v15.f32[1] = *v19.i32 + *&v21;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v17, COERCE_DOUBLE(LODWORD(v16)), v21, v20, v19, v18, v22);
  v48 = v23;
  v24 = *(v5 + 24);
  v25 = v50;
  *v26.i8 = vadd_f32(*&v50.f64[0], 1056964608);
  *v25.f64 = vmuls_lane_f32(*(v5 + 20), *v26.i8, 1) + (*v26.i32 * *(v5 + 16));
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), *v26.i8, 1);
  *&v29 = *v28.i32 + (*v26.i32 * *(v5 + 28));
  v53 = v23;
  v23.f32[0] = v24 + *v25.f64;
  *v25.f64 = *v27.i32 + *&v29;
  v23.f32[1] = *v27.i32 + *&v29;
  *&v31 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v25, COERCE_DOUBLE(LODWORD(v24)), v29, v28, v27, v26, v30);
  v47 = *(&v31 + 3);
  v32 = *(v5 + 24);
  v33 = v50;
  *v34.i8 = vadd_f32(*&v50.f64[0], 1069547520);
  *v33.f64 = vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16));
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), *v34.i8, 1);
  *&v37 = *v36.i32 + (*v34.i32 * *(v5 + 28));
  v52 = v31;
  *&v31 = v32 + *v33.f64;
  *v33.f64 = *v35.i32 + *&v37;
  *(&v31 + 1) = *v35.i32 + *&v37;
  *&v39 = CI::BitmapSampler::read(*(v5 + 8), *&v31, v33, COERCE_DOUBLE(LODWORD(v32)), v37, v36, v35, v34, v38);
  v51 = v39;
  v40 = *v50.f64;
  v41 = v6;
  v42 = &v53;
  if (vmovn_s32(vcgeq_f32(v48, v49)).i8[6])
  {
    v42 = &v54;
  }

  if (*v50.f64 + -0.5 >= v41)
  {
    v42 = &v54;
  }

  v54 = *v42;
  v43 = &v52;
  if (v54.f32[3] <= v47)
  {
    v43 = &v54;
  }

  if (v40 + 0.5 >= v41)
  {
    v43 = &v54;
  }

  v54 = *v43;
  v44 = v40 + 1.5;
  v45 = &v51;
  if (v54.f32[3] <= *(&v39 + 3))
  {
    v45 = &v54;
  }

  if (v44 >= v41)
  {
    v45 = &v54;
  }

  return v45->i64[0];
}

uint64_t CI::sw_areaMinAlphaV4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  *&v7.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v50 = v7;
  v8 = vadd_f32(*&v7.f64[0], 0xBFC0000000000000);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v7.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *v15.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v7, v9, v12, v11, v10, v13, v14);
  v49 = v15;
  HIDWORD(v16) = -1090519040;
  v17 = v50;
  *v18.i8 = vadd_f32(*&v50.f64[0], 0xBF00000000000000);
  *v17.f64 = vmuls_lane_f32(*(v5 + 20), *v18.i8, 1) + (*v18.i32 * *(v5 + 16));
  LODWORD(v16) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), *v18.i8, 1);
  *&v21 = *v20.i32 + (*v18.i32 * *(v5 + 28));
  v54 = v15;
  v15.f32[0] = *&v16 + *v17.f64;
  *v17.f64 = *v19.i32 + *&v21;
  v15.f32[1] = *v19.i32 + *&v21;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), *v15.i64, v17, v16, v21, v20, v19, v18, v22);
  v48 = v23;
  HIDWORD(v24) = 1056964608;
  v25 = v50;
  *v26.i8 = vadd_f32(*&v50.f64[0], 0x3F00000000000000);
  *v25.f64 = vmuls_lane_f32(*(v5 + 20), *v26.i8, 1) + (*v26.i32 * *(v5 + 16));
  LODWORD(v24) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), *v26.i8, 1);
  *&v29 = *v28.i32 + (*v26.i32 * *(v5 + 28));
  v53 = v23;
  v23.f32[0] = *&v24 + *v25.f64;
  *v25.f64 = *v27.i32 + *&v29;
  v23.f32[1] = *v27.i32 + *&v29;
  *&v31 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v25, v24, v29, v28, v27, v26, v30);
  v47 = *(&v31 + 3);
  HIDWORD(v32) = 1069547520;
  v33 = v50;
  *v34.i8 = vadd_f32(*&v50.f64[0], 0x3FC0000000000000);
  *v33.f64 = vmuls_lane_f32(*(v5 + 20), *v34.i8, 1) + (*v34.i32 * *(v5 + 16));
  LODWORD(v32) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), *v34.i8, 1);
  *&v37 = *v36.i32 + (*v34.i32 * *(v5 + 28));
  v52 = v31;
  *&v31 = *&v32 + *v33.f64;
  *v33.f64 = *v35.i32 + *&v37;
  *(&v31 + 1) = *v35.i32 + *&v37;
  *&v39 = CI::BitmapSampler::read(*(v5 + 8), *&v31, v33, v32, v37, v36, v35, v34, v38);
  v51 = v39;
  v40 = *(v50.f64 + 1);
  v41 = v6;
  v42 = &v53;
  if (vmovn_s32(vcgeq_f32(v48, v49)).i8[6])
  {
    v42 = &v54;
  }

  if (*(v50.f64 + 1) + -0.5 >= v41)
  {
    v42 = &v54;
  }

  v54 = *v42;
  v43 = &v52;
  if (v54.f32[3] <= v47)
  {
    v43 = &v54;
  }

  if (v40 + 0.5 >= v41)
  {
    v43 = &v54;
  }

  v54 = *v43;
  v44 = v40 + 1.5;
  v45 = &v51;
  if (v54.f32[3] <= *(&v39 + 3))
  {
    v45 = &v54;
  }

  if (v44 >= v41)
  {
    v45 = &v54;
  }

  return v45->i64[0];
}

double CI::sw_reduceCropMinMaxRed(uint64_t a1, double a2, float64x2_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a12 + 80 * *(*(a1 + 40) + 8);
  a6.i32[0] = 0.5;
  LODWORD(a4) = *(v12 + 28);
  *&v13 = *(v12 + 24) + ((*(v12 + 20) * 0.5) + (*(v12 + 16) * 0.5));
  LODWORD(a5) = *(v12 + 36);
  *a3.f64 = *&a5 + ((*(v12 + 32) * 0.5) + (*&a4 * 0.5));
  *(&v13 + 1) = *a3.f64;
  *v14.i64 = CI::BitmapSampler::read(*(v12 + 8), v13, a3, a4, a5, a6, a7, a8, a9);
  v19 = v14;
  *v16.f32 = vabs_f32(vadd_f32(*CI::getDC(v15), 0xBF000000BF000000));
  v16.f32[0] = fmaxf(v16.f32[0], v16.f32[1]);
  v17.i64[0] = COERCE_UNSIGNED_INT(0.5) | 0xBF00000000000000;
  *&result = vandq_s8(v19, vdupq_lane_s32(*&vcgtq_f32(v17, v16), 0)).u64[0];
  return result;
}

uint64_t CI::sw_areaMinMaxRed16(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = *v8;
  v11 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #4.0 }

  v24 = vmul_f32(*DC, _D1);
  v25.f64[0] = v11;
  v26.f64[0] = -5.05804416e157;
  v34 = v26;
  LODWORD(v26.f64[0]) = -1.5;
  v35 = v26;
  v27 = vcgtd_f64(0.9, v11);
  do
  {
    LODWORD(v25.f64[0]) = -1.5;
    do
    {
      v37 = v25;
      v28 = v35;
      HIDWORD(v25.f64[0]) = LODWORD(v35.f64[0]);
      *v15.i8 = vadd_f32(v24, *&v25.f64[0]);
      v36 = *v15.i8;
      LODWORD(v13.f64[0]) = *(v9 + 28);
      *&v29 = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v15.i8, 1) + (*v15.i32 * *(v9 + 16)));
      LODWORD(v14) = *(v9 + 36);
      *v28.f64 = *&v14 + (vmuls_lane_f32(*(v9 + 32), *v15.i8, 1) + (*v15.i32 * *v13.f64));
      HIDWORD(v29) = LODWORD(v28.f64[0]);
      *&v30 = CI::BitmapSampler::read(*(v9 + 8), v29, v28, v13.f64[0], v14, v15, v16, v17, v18);
      v31 = vcgt_f32(v10, v36);
      if (v31.i8[0] & 1) != 0 && (v31.i8[4])
      {
        v32 = vbsl_s8(v27, vdup_lane_s32(v30, 0), v30);
        v13.f64[1] = v34.f64[1];
        *v13.f64 = fminf(*v32.i32, *v34.f64);
        HIDWORD(v13.f64[0]) = fmaxf(*&v32.i32[1], *(v34.f64 + 1));
        v34 = v13;
      }

      v25 = v37;
      *v25.f64 = *v37.f64 + 1.0;
    }

    while ((*v37.f64 + 1.0) < 2.0);
    v25 = v35;
    *v25.f64 = *v35.f64 + 1.0;
    v35 = v25;
  }

  while (*v25.f64 < 2.0);
  return *&v34.f64[0];
}

uint64_t CI::sw_areaMinMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v61 = *v8;
  v10 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v62 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v9 + 24);
  v14.i32[0] = *(v9 + 36);
  *v15.i32 = vmuls_lane_f32(*(v9 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v9 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v9 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v9 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  v60 = CI::BitmapSampler::read(*(v9 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v20 = v62;
  v21 = vadd_f32(*&v62.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v22) = *(v9 + 24);
  v23.i32[0] = *(v9 + 36);
  *v24.i32 = vmuls_lane_f32(*(v9 + 32), v21, 1);
  *&v25 = *v24.i32 + (v21.f32[0] * *(v9 + 28));
  v21.f32[0] = *&v22 + (vmuls_lane_f32(*(v9 + 20), v21, 1) + (v21.f32[0] * *(v9 + 16)));
  *v20.f64 = *v23.i32 + *&v25;
  v21.f32[1] = *v23.i32 + *&v25;
  v59 = CI::BitmapSampler::read(*(v9 + 8), *&v21, v20, v22, v25, v24, v23, v26, v27);
  v28 = v62;
  v29 = vadd_f32(*&v62.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v30) = *(v9 + 24);
  v31.i32[0] = *(v9 + 36);
  *v32.i32 = vmuls_lane_f32(*(v9 + 32), v29, 1);
  *&v33 = *v32.i32 + (v29.f32[0] * *(v9 + 28));
  v29.f32[0] = *&v30 + (vmuls_lane_f32(*(v9 + 20), v29, 1) + (v29.f32[0] * *(v9 + 16)));
  *v28.f64 = *v31.i32 + *&v33;
  v29.f32[1] = *v31.i32 + *&v33;
  v58 = CI::BitmapSampler::read(*(v9 + 8), *&v29, v28, v30, v33, v32, v31, v34, v35);
  v36 = vadd_f32(*&v62.f64[0], 0x3F0000003F000000);
  LODWORD(v37) = *(v9 + 24);
  v38.i32[0] = *(v9 + 36);
  *v39.i32 = vmuls_lane_f32(*(v9 + 32), v36, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v9 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v9 + 20), v36, 1) + (v36.f32[0] * *(v9 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  v44 = CI::BitmapSampler::read(*(v9 + 8), *&v36, v41, v37, v40, v39, v38, v42, v43);
  if (v10 >= 0.9)
  {
    v46 = *&v59;
    v45 = *&v60;
    v47 = *&v58;
  }

  else
  {
    v45 = vdup_lane_s32(*&v60, 0);
    v46 = vdup_lane_s32(*&v59, 0);
    v47 = vdup_lane_s32(*&v58, 0);
    v44 = COERCE_DOUBLE(vdup_lane_s32(*&v44, 0));
  }

  v48 = COERCE_DOUBLE(vzip2_s32(v47, v45));
  v49 = fminf(*v47.i32, *&v44);
  v50 = fminf(*v45.i32, *v46.i32);
  v51 = COERCE_DOUBLE(vmaxnm_f32(*&v48, vzip2_s32(*&v44, v46)));
  if (*v62.f64 + 0.5 >= *&v61)
  {
    v49 = *v47.i32;
    v50 = *v45.i32;
    v51 = v48;
  }

  v52 = *(v62.f64 + 1) + 0.5;
  v53 = fminf(v50, v49);
  v54 = v52 < *(&v61 + 1);
  if (v52 >= *(&v61 + 1))
  {
    *&v55 = v50;
  }

  else
  {
    *&v55 = v53;
  }

  v56 = fmaxf(*(&v51 + 1), *&v51);
  if (!v54)
  {
    v56 = *(&v51 + 1);
  }

  *(&v55 + 1) = v56;
  return v55;
}

uint64_t CI::sw_horizMinMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  *&v8.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v61 = v8;
  v9 = vadd_f32(*&v8.f64[0], 3217031168);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), v9, 1);
  *&v13 = *v12.i32 + (v9.f32[0] * *(v5 + 28));
  v9.f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), v9, 1) + (v9.f32[0] * *(v5 + 16)));
  *v8.f64 = *v11.i32 + *&v13;
  v9.f32[1] = *v11.i32 + *&v13;
  v60 = CI::BitmapSampler::read(*(v5 + 8), *&v9, v8, v10, v13, v12, v11, v14, v15);
  v16 = v61;
  v17 = vadd_f32(*&v61.f64[0], 3204448256);
  LODWORD(v18) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), v17, 1);
  *&v21 = *v20.i32 + (v17.f32[0] * *(v5 + 28));
  v17.f32[0] = *&v18 + (vmuls_lane_f32(*(v5 + 20), v17, 1) + (v17.f32[0] * *(v5 + 16)));
  *v16.f64 = *v19.i32 + *&v21;
  v17.f32[1] = *v19.i32 + *&v21;
  v59 = CI::BitmapSampler::read(*(v5 + 8), *&v17, v16, v18, v21, v20, v19, v22, v23);
  v24 = v61;
  v25 = vadd_f32(*&v61.f64[0], 1056964608);
  LODWORD(v26) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), v25, 1);
  *&v29 = *v28.i32 + (v25.f32[0] * *(v5 + 28));
  v25.f32[0] = *&v26 + (vmuls_lane_f32(*(v5 + 20), v25, 1) + (v25.f32[0] * *(v5 + 16)));
  *v24.f64 = *v27.i32 + *&v29;
  v25.f32[1] = *v27.i32 + *&v29;
  v58 = CI::BitmapSampler::read(*(v5 + 8), *&v25, v24, v26, v29, v28, v27, v30, v31);
  v32 = v61;
  v33 = vadd_f32(*&v61.f64[0], 1069547520);
  LODWORD(v34) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), v33, 1);
  *&v37 = *v36.i32 + (v33.f32[0] * *(v5 + 28));
  v33.f32[0] = *&v34 + (vmuls_lane_f32(*(v5 + 20), v33, 1) + (v33.f32[0] * *(v5 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  v33.f32[1] = *v35.i32 + *&v37;
  v40 = CI::BitmapSampler::read(*(v5 + 8), *&v33, v32, v34, v37, v36, v35, v38, v39);
  if (v7 >= 0.9)
  {
    v42 = *&v59;
    v41 = *&v60;
    v43 = *&v58;
  }

  else
  {
    v41 = vdup_lane_s32(*&v60, 0);
    v42 = vdup_lane_s32(*&v59, 0);
    v43 = vdup_lane_s32(*&v58, 0);
    v40 = COERCE_DOUBLE(vdup_lane_s32(*&v40, 0));
  }

  v44 = *v61.f64;
  v45 = v6;
  v46 = *&v41.i32[1];
  v47 = fminf(*v41.i32, *v42.i32);
  v48 = fmaxf(*&v41.i32[1], *&v42.i32[1]);
  if (*v61.f64 + -0.5 < v6)
  {
    v46 = v48;
  }

  else
  {
    v47 = *v41.i32;
  }

  v49 = v44 + 1.5;
  v50 = v44 + 0.5;
  v51 = fminf(v47, *v43.i32);
  v52 = v50 < v45;
  if (v50 >= v45)
  {
    *&v53 = v47;
  }

  else
  {
    *&v53 = v51;
  }

  v54 = fminf(*&v53, *&v40);
  v55 = fmaxf(v46, *&v43.i32[1]);
  if (v52)
  {
    v46 = v55;
  }

  if (v49 < v45)
  {
    *&v53 = v54;
  }

  v56 = fmaxf(v46, *(&v40 + 1));
  if (v49 >= v45)
  {
    v56 = v46;
  }

  *(&v53 + 1) = v56;
  return v53;
}

uint64_t CI::sw_vertMinMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  *&v8.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v61 = v8;
  v9 = vadd_f32(*&v8.f64[0], 0xBFC0000000000000);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), v9, 1);
  *&v13 = *v12.i32 + (v9.f32[0] * *(v5 + 28));
  v9.f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), v9, 1) + (v9.f32[0] * *(v5 + 16)));
  *v8.f64 = *v11.i32 + *&v13;
  v9.f32[1] = *v11.i32 + *&v13;
  v60 = CI::BitmapSampler::read(*(v5 + 8), *&v9, v8, v10, v13, v12, v11, v14, v15);
  v16 = v61;
  v17 = vadd_f32(*&v61.f64[0], 0xBF00000000000000);
  LODWORD(v18) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), v17, 1);
  *&v21 = *v20.i32 + (v17.f32[0] * *(v5 + 28));
  v17.f32[0] = *&v18 + (vmuls_lane_f32(*(v5 + 20), v17, 1) + (v17.f32[0] * *(v5 + 16)));
  *v16.f64 = *v19.i32 + *&v21;
  v17.f32[1] = *v19.i32 + *&v21;
  v59 = CI::BitmapSampler::read(*(v5 + 8), *&v17, v16, v18, v21, v20, v19, v22, v23);
  v24 = v61;
  v25 = vadd_f32(*&v61.f64[0], 0x3F00000000000000);
  LODWORD(v26) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), v25, 1);
  *&v29 = *v28.i32 + (v25.f32[0] * *(v5 + 28));
  v25.f32[0] = *&v26 + (vmuls_lane_f32(*(v5 + 20), v25, 1) + (v25.f32[0] * *(v5 + 16)));
  *v24.f64 = *v27.i32 + *&v29;
  v25.f32[1] = *v27.i32 + *&v29;
  v58 = CI::BitmapSampler::read(*(v5 + 8), *&v25, v24, v26, v29, v28, v27, v30, v31);
  v32 = v61;
  v33 = vadd_f32(*&v61.f64[0], 0x3FC0000000000000);
  LODWORD(v34) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), v33, 1);
  *&v37 = *v36.i32 + (v33.f32[0] * *(v5 + 28));
  v33.f32[0] = *&v34 + (vmuls_lane_f32(*(v5 + 20), v33, 1) + (v33.f32[0] * *(v5 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  v33.f32[1] = *v35.i32 + *&v37;
  v40 = CI::BitmapSampler::read(*(v5 + 8), *&v33, v32, v34, v37, v36, v35, v38, v39);
  if (v7 >= 0.9)
  {
    v42 = *&v59;
    v41 = *&v60;
    v43 = *&v58;
  }

  else
  {
    v41 = vdup_lane_s32(*&v60, 0);
    v42 = vdup_lane_s32(*&v59, 0);
    v43 = vdup_lane_s32(*&v58, 0);
    v40 = COERCE_DOUBLE(vdup_lane_s32(*&v40, 0));
  }

  v44 = *(v61.f64 + 1);
  v45 = v6;
  v46 = *&v41.i32[1];
  v47 = fminf(*v41.i32, *v42.i32);
  v48 = fmaxf(*&v41.i32[1], *&v42.i32[1]);
  if (*(v61.f64 + 1) + -0.5 < v6)
  {
    v46 = v48;
  }

  else
  {
    v47 = *v41.i32;
  }

  v49 = v44 + 1.5;
  v50 = v44 + 0.5;
  v51 = fminf(v47, *v43.i32);
  v52 = v50 < v45;
  if (v50 >= v45)
  {
    *&v53 = v47;
  }

  else
  {
    *&v53 = v51;
  }

  v54 = fminf(*&v53, *&v40);
  v55 = fmaxf(v46, *&v43.i32[1]);
  if (v52)
  {
    v46 = v55;
  }

  if (v49 < v45)
  {
    *&v53 = v54;
  }

  v56 = fmaxf(v46, *(&v40 + 1));
  if (v49 >= v45)
  {
    v56 = v46;
  }

  *(&v53 + 1) = v56;
  return v53;
}

double CI::sw_reduceCropAveMaxRed(uint64_t a1, uint64_t a2, double a3, float64x2_t a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a1 + 40);
  v13 = a12 + 80 * *(v12 + 8);
  a7.i32[0] = 0.5;
  LODWORD(a5) = *(v13 + 28);
  *&v14 = *(v13 + 24) + ((*(v13 + 20) * 0.5) + (*(v13 + 16) * 0.5));
  LODWORD(a6) = *(v13 + 36);
  v15 = *(a2 + (*(v12 + 32) << 6));
  *a4.f64 = *&a6 + ((*(v13 + 32) * 0.5) + (*&a5 * 0.5));
  *(&v14 + 1) = *a4.f64;
  v21 = CI::BitmapSampler::read(*(v13 + 8), v14, a4, a5, a6, a7, a8, a9, a10);
  *v17.f32 = vabs_f32(vadd_f32(*CI::getDC(v16), 0xBF000000BF000000));
  v17.f32[0] = fmaxf(v17.f32[0], v17.f32[1]);
  v18.i64[0] = COERCE_UNSIGNED_INT(0.5) | 0xBF00000000000000;
  v19 = vdupq_lane_s32(*&vcgtq_f32(v18, v17), 0);
  v18.f32[0] = v15 * *&v21;
  v18.i32[1] = HIDWORD(v21);
  v18.i32[2] = 0;
  v18.i32[3] = 1.0;
  *&result = vandq_s8(v18, v19).u64[0];
  return result;
}

__n64 CI::sw_areaAveMaxRed16(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = *v8;
  v11 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #4.0 }

  v24 = vmul_f32(*DC, _D1);
  v25.f64[0] = v11;
  v26.f64[0] = -5.05804317e157;
  v34 = v26;
  LODWORD(v26.f64[0]) = -1.5;
  v35 = v26;
  v27 = vcgtd_f64(0.9, v11);
  do
  {
    LODWORD(v25.f64[0]) = -1.5;
    do
    {
      v37 = v25;
      v28 = v35;
      HIDWORD(v25.f64[0]) = LODWORD(v35.f64[0]);
      *v15.i8 = vadd_f32(v24, *&v25.f64[0]);
      v36 = *v15.i8;
      LODWORD(v13.f64[0]) = *(v9 + 28);
      *&v29 = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v15.i8, 1) + (*v15.i32 * *(v9 + 16)));
      LODWORD(v14) = *(v9 + 36);
      *v28.f64 = *&v14 + (vmuls_lane_f32(*(v9 + 32), *v15.i8, 1) + (*v15.i32 * *v13.f64));
      HIDWORD(v29) = LODWORD(v28.f64[0]);
      *&v30 = CI::BitmapSampler::read(*(v9 + 8), v29, v28, v13.f64[0], v14, v15, v16, v17, v18);
      v31 = vcgt_f32(v10, v36);
      if (v31.i8[0] & 1) != 0 && (v31.i8[4])
      {
        v32 = vbsl_s8(v27, vdup_lane_s32(v30, 0), v30);
        v13.f64[1] = v34.f64[1];
        LODWORD(v13.f64[0]) = vadd_f32(*&v34.f64[0], v32).u32[0];
        HIDWORD(v13.f64[0]) = fmaxf(v32.f32[1], *(v34.f64 + 1));
        v34 = v13;
      }

      v25 = v37;
      *v25.f64 = *v37.f64 + 1.0;
    }

    while ((*v37.f64 + 1.0) < 2.0);
    v25 = v35;
    *v25.f64 = *v35.f64 + 1.0;
    v35 = v25;
  }

  while (*v25.f64 < 2.0);
  result.n64_f32[0] = 0.0625 * *v34.f64;
  result.n64_u32[1] = HIDWORD(v34.f64[0]);
  return result;
}

uint64_t CI::sw_areaAveMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v62 = *v8;
  v10 = *(a2 + (*(v4 + 56) << 6));
  DC = CI::getDC(a1);
  *&v12.f64[0] = vadd_f32(*DC, *DC);
  v63 = v12;
  *&v12.f64[0] = vadd_f32(*&v12.f64[0], 0xBF000000BF000000);
  LODWORD(v13) = *(v9 + 24);
  v14.i32[0] = *(v9 + 36);
  *v15.i32 = vmuls_lane_f32(*(v9 + 32), *&v12.f64[0], 1);
  *&v16 = *v15.i32 + (*v12.f64 * *(v9 + 28));
  *v12.f64 = *&v13 + (vmuls_lane_f32(*(v9 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v9 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  *(v12.f64 + 1) = *v14.i32 + *&v16;
  v61 = CI::BitmapSampler::read(*(v9 + 8), v12.f64[0], v17, v13, v16, v15, v14, v18, v19);
  v20 = v63;
  v21 = vadd_f32(*&v63.f64[0], COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v22) = *(v9 + 24);
  v23.i32[0] = *(v9 + 36);
  *v24.i32 = vmuls_lane_f32(*(v9 + 32), v21, 1);
  *&v25 = *v24.i32 + (v21.f32[0] * *(v9 + 28));
  v21.f32[0] = *&v22 + (vmuls_lane_f32(*(v9 + 20), v21, 1) + (v21.f32[0] * *(v9 + 16)));
  *v20.f64 = *v23.i32 + *&v25;
  v21.f32[1] = *v23.i32 + *&v25;
  v60 = CI::BitmapSampler::read(*(v9 + 8), *&v21, v20, v22, v25, v24, v23, v26, v27);
  v28 = v63;
  v29 = vadd_f32(*&v63.f64[0], COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v30) = *(v9 + 24);
  v31.i32[0] = *(v9 + 36);
  *v32.i32 = vmuls_lane_f32(*(v9 + 32), v29, 1);
  *&v33 = *v32.i32 + (v29.f32[0] * *(v9 + 28));
  v29.f32[0] = *&v30 + (vmuls_lane_f32(*(v9 + 20), v29, 1) + (v29.f32[0] * *(v9 + 16)));
  *v28.f64 = *v31.i32 + *&v33;
  v29.f32[1] = *v31.i32 + *&v33;
  v59 = CI::BitmapSampler::read(*(v9 + 8), *&v29, v28, v30, v33, v32, v31, v34, v35);
  v36 = vadd_f32(*&v63.f64[0], 0x3F0000003F000000);
  LODWORD(v37) = *(v9 + 24);
  v38.i32[0] = *(v9 + 36);
  *v39.i32 = vmuls_lane_f32(*(v9 + 32), v36, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v9 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v9 + 20), v36, 1) + (v36.f32[0] * *(v9 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *&v44 = CI::BitmapSampler::read(*(v9 + 8), *&v36, v41, v37, v40, v39, v38, v42, v43);
  if (v10 >= 0.9)
  {
    v46 = *&v60;
    v45 = *&v61;
    v47 = *&v59;
  }

  else
  {
    v45 = vdup_lane_s32(*&v61, 0);
    v46 = vdup_lane_s32(*&v60, 0);
    v47 = vdup_lane_s32(*&v59, 0);
    v44 = vdup_lane_s32(v44, 0);
  }

  v48 = COERCE_DOUBLE(vzip2_s32(v47, v45));
  LODWORD(v49) = vadd_f32(v47, v44).u32[0];
  LODWORD(v50) = vadd_f32(v45, v46).u32[0];
  v51 = COERCE_DOUBLE(vmaxnm_f32(*&v48, vzip2_s32(v44, v46)));
  if (*v63.f64 + 0.5 >= *&v62)
  {
    v49 = *v47.i32;
    v50 = *v45.i32;
    v51 = v48;
  }

  v52 = *(v63.f64 + 1) + 0.5;
  v53 = v49 + v50;
  v54 = v52 < *(&v62 + 1);
  if (v52 >= *(&v62 + 1))
  {
    v55 = v50;
  }

  else
  {
    v55 = v53;
  }

  v56 = fmaxf(*(&v51 + 1), *&v51);
  if (!v54)
  {
    v56 = *(&v51 + 1);
  }

  *&v57 = v55 * 0.25;
  *(&v57 + 1) = v56;
  return v57;
}

uint64_t CI::sw_horizAveMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  *&v8.f64[0] = vmul_f32(*CI::getDC(a1), 0x3F80000040800000);
  v60 = v8;
  v9 = vadd_f32(*&v8.f64[0], 3217031168);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), v9, 1);
  *&v13 = *v12.i32 + (v9.f32[0] * *(v5 + 28));
  v9.f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), v9, 1) + (v9.f32[0] * *(v5 + 16)));
  *v8.f64 = *v11.i32 + *&v13;
  v9.f32[1] = *v11.i32 + *&v13;
  v59 = CI::BitmapSampler::read(*(v5 + 8), *&v9, v8, v10, v13, v12, v11, v14, v15);
  v16 = v60;
  v17 = vadd_f32(*&v60.f64[0], 3204448256);
  LODWORD(v18) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), v17, 1);
  *&v21 = *v20.i32 + (v17.f32[0] * *(v5 + 28));
  v17.f32[0] = *&v18 + (vmuls_lane_f32(*(v5 + 20), v17, 1) + (v17.f32[0] * *(v5 + 16)));
  *v16.f64 = *v19.i32 + *&v21;
  v17.f32[1] = *v19.i32 + *&v21;
  v58 = CI::BitmapSampler::read(*(v5 + 8), *&v17, v16, v18, v21, v20, v19, v22, v23);
  v24 = v60;
  v25 = vadd_f32(*&v60.f64[0], 1056964608);
  LODWORD(v26) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), v25, 1);
  *&v29 = *v28.i32 + (v25.f32[0] * *(v5 + 28));
  v25.f32[0] = *&v26 + (vmuls_lane_f32(*(v5 + 20), v25, 1) + (v25.f32[0] * *(v5 + 16)));
  *v24.f64 = *v27.i32 + *&v29;
  v25.f32[1] = *v27.i32 + *&v29;
  v57 = CI::BitmapSampler::read(*(v5 + 8), *&v25, v24, v26, v29, v28, v27, v30, v31);
  v32 = v60;
  v33 = vadd_f32(*&v60.f64[0], 1069547520);
  LODWORD(v34) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), v33, 1);
  *&v37 = *v36.i32 + (v33.f32[0] * *(v5 + 28));
  v33.f32[0] = *&v34 + (vmuls_lane_f32(*(v5 + 20), v33, 1) + (v33.f32[0] * *(v5 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  v33.f32[1] = *v35.i32 + *&v37;
  v40 = CI::BitmapSampler::read(*(v5 + 8), *&v33, v32, v34, v37, v36, v35, v38, v39);
  if (v7 >= 0.9)
  {
    v42 = *&v58;
    v41 = *&v59;
    v43 = *&v57;
  }

  else
  {
    v41 = vdup_lane_s32(*&v59, 0);
    v42 = vdup_lane_s32(*&v58, 0);
    v43 = vdup_lane_s32(*&v57, 0);
    v40 = COERCE_DOUBLE(vdup_lane_s32(*&v40, 0));
  }

  v44 = *v60.f64;
  v45 = v6;
  v46 = v41.f32[1];
  LODWORD(v47) = vadd_f32(v41, v42).u32[0];
  v48 = fmaxf(v41.f32[1], v42.f32[1]);
  if (*v60.f64 + -0.5 < v6)
  {
    v46 = v48;
  }

  else
  {
    v47 = v41.f32[0];
  }

  v49 = v44 + 1.5;
  v50 = v44 + 0.5;
  v51 = v50 < v45;
  if (v50 >= v45)
  {
    v52 = v47;
  }

  else
  {
    v52 = *v43.i32 + v47;
  }

  v53 = fmaxf(v46, *&v43.i32[1]);
  if (v51)
  {
    v46 = v53;
  }

  if (v49 < v45)
  {
    v52 = *&v40 + v52;
  }

  v54 = fmaxf(v46, *(&v40 + 1));
  if (v49 >= v45)
  {
    v54 = v46;
  }

  *&v55 = v52 * 0.25;
  *(&v55 + 1) = v54;
  return v55;
}

uint64_t CI::sw_vertAveMaxRed4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  *&v8.f64[0] = vmul_f32(*CI::getDC(a1), 0x408000003F800000);
  v60 = v8;
  v9 = vadd_f32(*&v8.f64[0], 0xBFC0000000000000);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), v9, 1);
  *&v13 = *v12.i32 + (v9.f32[0] * *(v5 + 28));
  v9.f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), v9, 1) + (v9.f32[0] * *(v5 + 16)));
  *v8.f64 = *v11.i32 + *&v13;
  v9.f32[1] = *v11.i32 + *&v13;
  v59 = CI::BitmapSampler::read(*(v5 + 8), *&v9, v8, v10, v13, v12, v11, v14, v15);
  v16 = v60;
  v17 = vadd_f32(*&v60.f64[0], 0xBF00000000000000);
  LODWORD(v18) = *(v5 + 24);
  v19.i32[0] = *(v5 + 36);
  *v20.i32 = vmuls_lane_f32(*(v5 + 32), v17, 1);
  *&v21 = *v20.i32 + (v17.f32[0] * *(v5 + 28));
  v17.f32[0] = *&v18 + (vmuls_lane_f32(*(v5 + 20), v17, 1) + (v17.f32[0] * *(v5 + 16)));
  *v16.f64 = *v19.i32 + *&v21;
  v17.f32[1] = *v19.i32 + *&v21;
  v58 = CI::BitmapSampler::read(*(v5 + 8), *&v17, v16, v18, v21, v20, v19, v22, v23);
  v24 = v60;
  v25 = vadd_f32(*&v60.f64[0], 0x3F00000000000000);
  LODWORD(v26) = *(v5 + 24);
  v27.i32[0] = *(v5 + 36);
  *v28.i32 = vmuls_lane_f32(*(v5 + 32), v25, 1);
  *&v29 = *v28.i32 + (v25.f32[0] * *(v5 + 28));
  v25.f32[0] = *&v26 + (vmuls_lane_f32(*(v5 + 20), v25, 1) + (v25.f32[0] * *(v5 + 16)));
  *v24.f64 = *v27.i32 + *&v29;
  v25.f32[1] = *v27.i32 + *&v29;
  v57 = CI::BitmapSampler::read(*(v5 + 8), *&v25, v24, v26, v29, v28, v27, v30, v31);
  v32 = v60;
  v33 = vadd_f32(*&v60.f64[0], 0x3FC0000000000000);
  LODWORD(v34) = *(v5 + 24);
  v35.i32[0] = *(v5 + 36);
  *v36.i32 = vmuls_lane_f32(*(v5 + 32), v33, 1);
  *&v37 = *v36.i32 + (v33.f32[0] * *(v5 + 28));
  v33.f32[0] = *&v34 + (vmuls_lane_f32(*(v5 + 20), v33, 1) + (v33.f32[0] * *(v5 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  v33.f32[1] = *v35.i32 + *&v37;
  v40 = CI::BitmapSampler::read(*(v5 + 8), *&v33, v32, v34, v37, v36, v35, v38, v39);
  if (v7 >= 0.9)
  {
    v42 = *&v58;
    v41 = *&v59;
    v43 = *&v57;
  }

  else
  {
    v41 = vdup_lane_s32(*&v59, 0);
    v42 = vdup_lane_s32(*&v58, 0);
    v43 = vdup_lane_s32(*&v57, 0);
    v40 = COERCE_DOUBLE(vdup_lane_s32(*&v40, 0));
  }

  v44 = *(v60.f64 + 1);
  v45 = v6;
  v46 = v41.f32[1];
  LODWORD(v47) = vadd_f32(v41, v42).u32[0];
  v48 = fmaxf(v41.f32[1], v42.f32[1]);
  if (*(v60.f64 + 1) + -0.5 < v6)
  {
    v46 = v48;
  }

  else
  {
    v47 = v41.f32[0];
  }

  v49 = v44 + 1.5;
  v50 = v44 + 0.5;
  v51 = v50 < v45;
  if (v50 >= v45)
  {
    v52 = v47;
  }

  else
  {
    v52 = *v43.i32 + v47;
  }

  v53 = fmaxf(v46, *&v43.i32[1]);
  if (v51)
  {
    v46 = v53;
  }

  if (v49 < v45)
  {
    v52 = *&v40 + v52;
  }

  v54 = fmaxf(v46, *(&v40 + 1));
  if (v49 >= v45)
  {
    v54 = v46;
  }

  *&v55 = v52 * 0.25;
  *(&v55 + 1) = v54;
  return v55;
}

float64_t CI::sw_redThreshold(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t a4, float64x2_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  a4.f64[0] = *v9;
  a5.f64[0] = 0.00001;
  *&a4.f64[0] = vbslq_s8(vdupq_lane_s64(vcgtq_f64(a4, a5).i64[0], 0), xmmword_19CF26520, xmmword_19CF22690).u64[0];
  return a4.f64[0];
}

unint64_t CI::sw_maskBoundsInit(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v24 = *v11;
  v12 = *v7;
  DC = CI::getDC(a1);
  if (v12 <= 0.00001)
  {
    return 0;
  }

  *v14.f32 = vadd_f32(vrndm_f32(*DC), 0xBE000000BE000000);
  __asm
  {
    FMOV            V1.2S, #1.0
    FMOV            V2.2S, #0.25
  }

  v21 = vadd_f32(vadd_f32(*v14.f32, _D1), _D2);
  v22.i64[0] = v24;
  v22.i64[1] = v24;
  *&v14.u32[2] = v21;
  return vmulq_f32(v22, v14).u64[0];
}

uint64_t CI::sw_maskBoundsReduce(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = vadd_f32(*DC, *DC);
  v7 = vadd_f32(v6, 0x3F0000003F000000);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v4 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v4 + 20), v7, 1) + (v7.f32[0] * *(v4 + 16)));
  *v12.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v7, v12, v8, v11, v10, v9, v13, v14);
  v45 = v15;
  *v15.i8 = vadd_f32(v6, COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.i8, 1);
  *&v19 = *v18.i32 + (*v15.i32 * *(v4 + 28));
  *v15.i32 = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.i8, 1) + (*v15.i32 * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  *&v15.i32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  if (*&v23.i32[2] > 0.0)
  {
    v25.i32[1] = v45.i32[1];
    if (*&v45.i32[2] <= 0.0)
    {
      v45 = v23;
    }

    else
    {
      v24 = vextq_s8(v45, v45, 8uLL);
      *v25.i8 = vminnm_f32(*v23.i8, *v45.i8);
      v25.u64[1] = vmaxnm_f32(*&vextq_s8(v23, v23, 8uLL), *&v24.f64[0]);
      v45 = v25;
    }
  }

  v31 = vadd_f32(v6, COERCE_FLOAT32X2_T(--0.0000305175998));
  v25.i32[0] = *(v4 + 24);
  v28.i32[0] = *(v4 + 36);
  *v27.i32 = vmuls_lane_f32(*(v4 + 32), v31, 1);
  *&v26 = *v27.i32 + (v31.f32[0] * *(v4 + 28));
  v31.f32[0] = *v25.i32 + (vmuls_lane_f32(*(v4 + 20), v31, 1) + (v31.f32[0] * *(v4 + 16)));
  *v24.f64 = *v28.i32 + *&v26;
  v31.f32[1] = *v28.i32 + *&v26;
  *v32.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v31, v24, *v25.i64, v26, v27, v28, v29, v30);
  if (*&v32.i32[2] > 0.0)
  {
    v34.i32[1] = v45.i32[1];
    if (*&v45.i32[2] <= 0.0)
    {
      v45 = v32;
    }

    else
    {
      v33 = vextq_s8(v45, v45, 8uLL);
      *v34.i8 = vminnm_f32(*v32.i8, *v45.i8);
      v34.u64[1] = vmaxnm_f32(*&vextq_s8(v32, v32, 8uLL), *&v33.f64[0]);
      v45 = v34;
    }
  }

  v40 = vadd_f32(v6, 0xBF000000BF000000);
  v34.i32[0] = *(v4 + 24);
  v37.i32[0] = *(v4 + 36);
  *v36.i32 = vmuls_lane_f32(*(v4 + 32), v40, 1);
  *&v35 = *v36.i32 + (v40.f32[0] * *(v4 + 28));
  v40.f32[0] = *v34.i32 + (vmuls_lane_f32(*(v4 + 20), v40, 1) + (v40.f32[0] * *(v4 + 16)));
  *v33.f64 = *v37.i32 + *&v35;
  v40.f32[1] = *v37.i32 + *&v35;
  v41 = CI::BitmapSampler::read(*(v4 + 8), *&v40, v33, *v34.i64, v35, v36, v37, v38, v39);
  if (v42 <= 0.0)
  {
    return v45.i64[0];
  }

  if (*&v45.i32[2] <= 0.0)
  {
    return *&v41;
  }

  return vminnm_f32(*&v41, *v45.i8);
}

uint64_t CI::sw_maskBoundsPost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

unint64_t CI::sw_minMaxNormalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = vsubq_f32(*v15, *v11);
  v16.i32[3] = 0;
  return vdivq_f32(vsubq_f32(*v7, *v11), vmaxnmq_f32(v16, xmmword_19CF23BC0)).u64[0];
}

double CI::sw_minMaxRedNormalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v12.f32[0] = vsubq_f32(*v7, *v11).f32[0] / fmaxf(COERCE_FLOAT(HIDWORD(v11->i64[0])) - COERCE_FLOAT(*v11), 0.00001);
  return *v12.i64;
}

uint64_t CI::sw_KM_select(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  DC = CI::getDC(a1);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  *&v14 = *&v10 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  *(&v14 + 1) = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v45 = v18;
  LODWORD(v19) = *(v6 + 24);
  v20.i32[0] = *(v6 + 36);
  *v21.i32 = *(v6 + 32) * 0.5;
  *&v22 = *v21.i32 + ((v8 + 0.5) * *(v6 + 28));
  v18.f32[0] = *&v19 + ((*(v6 + 20) * 0.5) + ((v8 + 0.5) * *(v6 + 16)));
  *v23.f64 = *v20.i32 + *&v22;
  v18.f32[1] = *v20.i32 + *&v22;
  *v26.i64 = CI::BitmapSampler::read(*(v6 + 8), *v18.i64, v23, v19, v22, v21, v20, v24, v25);
  v33 = v7;
  if (v7 < 1)
  {
    v35 = *v45.i64;
  }

  else
  {
    v34 = 0;
    v35 = *v45.i64;
    v36 = vsubq_f32(v45, v26);
    v37 = vmulq_f32(v36, v36);
    v38 = v37.f32[2] + vaddv_f32(*v37.f32);
    while (1)
    {
      if (v8 != v34)
      {
        v39 = v34 + 0.5;
        LODWORD(v35) = *(v6 + 24);
        v30.i32[0] = *(v6 + 36);
        *v29.i32 = *(v6 + 32) * 0.5;
        *&v28 = *v29.i32 + (v39 * *(v6 + 28));
        *&v40 = *&v35 + ((*(v6 + 20) * 0.5) + (v39 * *(v6 + 16)));
        *v27.f64 = *v30.i32 + *&v28;
        *(&v40 + 1) = *v30.i32 + *&v28;
        *v41.i64 = CI::BitmapSampler::read(*(v6 + 8), v40, v27, v35, v28, v29, v30, v31, v32);
        v35 = *v45.i64;
        v42 = vsubq_f32(v45, v41);
        v43 = vmulq_f32(v42, v42);
        if ((v43.f32[2] + vaddv_f32(*v43.f32)) < v38)
        {
          break;
        }
      }

      if (v33 == ++v34)
      {
        return *&v35;
      }
    }

    v35 = 0.0;
  }

  return *&v35;
}

double CI::sw_KM_defuse(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  DC = CI::getDC(a1);
  *v10.i8 = *DC;
  v42 = v10;
  LODWORD(v11) = *(v5 + 28);
  *&v12 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v13) = *(v5 + 36);
  *v14.f64 = *&v13 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v11));
  HIDWORD(v12) = LODWORD(v14.f64[0]);
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v12, v14, v11, v13, v10, v15, v16, v17);
  v38 = v18;
  LODWORD(v19) = *(v6 + 28);
  v18.f32[0] = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v42.i8, 1) + (*v42.i32 * *(v6 + 16)));
  LODWORD(v20) = *(v6 + 36);
  *v21.f64 = *&v20 + (vmuls_lane_f32(*(v6 + 32), *v42.i8, 1) + (*v42.i32 * *&v19));
  v18.i32[1] = LODWORD(v21.f64[0]);
  v37 = CI::BitmapSampler::read(*(v6 + 8), *v18.i64, v21, v19, v20, v42, v22, v23, v24);
  v31.f64[0] = -0.5;
  for (i = (*v42.i32 + -0.5) + 1; i < v7; ++i)
  {
    v33 = i + 0.5;
    LODWORD(v25) = *(v5 + 24);
    v28.i32[0] = *(v5 + 36);
    *v27.i32 = *(v5 + 32) * 0.5;
    v26.f32[0] = *v27.i32 + (v33 * *(v5 + 28));
    *&v34 = *&v25 + ((*(v5 + 20) * 0.5) + (v33 * *(v5 + 16)));
    *v31.f64 = *v28.i32 + v26.f32[0];
    *(&v34 + 1) = *v28.i32 + v26.f32[0];
    *v35.i64 = CI::BitmapSampler::read(*(v5 + 8), v34, v31, v25, *v26.i64, v27, v28, v29, v30);
    v28 = v38;
    v31 = v38;
    HIDWORD(v31.f64[1]) = v40;
    HIDWORD(v25) = v35.i32[1];
    v26 = vsubq_f32(v38, v35);
    v27 = v26;
    v27.i32[3] = v39;
    v30 = v41;
    v28.i32[3] = v42.i32[3];
    v29 = vmulq_f32(v26, v26);
    v26.i32[3] = v41.i32[3];
    *v30.i32 = vaddv_f32(*v29.i8);
    *v29.i32 = *&v29.i32[2] + *v30.i32;
    v41 = v26;
    if ((*&v29.i32[2] + *v30.i32) < v8)
    {
      return v37;
    }
  }

  return *v38.i64;
}

double CI::sw_ACWeightedCoordinatesR(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v19 = *v7;
  *v12.f32 = vmul_f32(*&vextq_s8(*v11, *v11, 8uLL), vsub_f32(*CI::getDC(a1), *v11->i8));
  __asm { FMOV            V1.2S, #1.0 }

  v12.i64[1] = _D1;
  *&result = vmulq_n_f32(v12, *&v19).u64[0];
  return result;
}

float32x2_t CI::sw_ACCentroid(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 40);
  v12 = *(v6 + 32);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (v11 == 5)
  {
    v14 = v13;
  }

  *&a6 = fmaxf(COERCE_FLOAT(*&v10[1]), 0.0001);
  return vadd_f32(*v14, vmul_f32(*&vextq_s8(*v14->f32, *v14->f32, 8uLL), vdiv_f32(*v10, vdup_lane_s32(*&a6, 0))));
}

double CI::sw_RCFalloffGaussian(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v15 = *v7;
  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = vsub_f32(*CI::getDC(a1), *v11);
  *&result = vmulq_n_f32(v15, expf(-(vaddv_f32(vmul_f32(v13, v13)) * v12))).u64[0];
  return result;
}

double CI::sw_RCFalloffDisk(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v17 = *v7;
  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = vsub_f32(*CI::getDC(a1), *v11);
  v14 = vaddv_f32(vmul_f32(v13, v13)) < v12;
  v15 = 0.0;
  if (v14)
  {
    v15 = 1.0;
  }

  *&result = vmulq_n_f32(v17, v15).u64[0];
  return result;
}

uint64_t CI::sw_RCCenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_RCSelectGreaterThan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = a3 + 16 * v8;
  v10 = a2 + (v8 << 6);
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = a3 + 16 * v12;
  v14 = a2 + (v12 << 6);
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (*(v15 + 4) <= *(a2 + (*(v3 + 80) << 6)))
  {
    v16 = v11;
  }

  else
  {
    v16 = v7;
  }

  return *v16;
}

double CI::sw_PSDrawSpread(CI *a1, uint64_t a2, uint64_t a3, float32x4_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  a4.i32[0] = *(a2 + (*(v4 + 32) << 6));
  v17 = a4;
  v9 = vsub_f32(*CI::getDC(a1), *v8);
  *v10.f32 = vmul_f32(v9, v9);
  v10.f32[0] = vaddv_f32(*v10.f32);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vandq_s8(_Q1, vdupq_lane_s32(*&vcgeq_f32(v17, v10), 0)).u64[0];
  return result;
}

uint64_t CI::sw_PC_coord(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  v8 = *(a2 + (v4[10] << 6));
  DC = CI::getDC(a1);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  *&v14 = *&v10 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  *(&v14 + 1) = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v46 = v18;
  LODWORD(v19) = *(v6 + 24);
  v20.i32[0] = *(v6 + 36);
  *v21.i32 = *(v6 + 32) * 0.5;
  *&v22 = *v21.i32 + ((v8 + 0.5) * *(v6 + 28));
  v18.f32[0] = *&v19 + ((*(v6 + 20) * 0.5) + ((v8 + 0.5) * *(v6 + 16)));
  *v23.f64 = *v20.i32 + *&v22;
  v18.f32[1] = *v20.i32 + *&v22;
  *v26.i64 = CI::BitmapSampler::read(*(v6 + 8), *v18.i64, v23, v19, v22, v21, v20, v24, v25);
  v33 = v7;
  if (v7 < 1)
  {
    return 1065353216;
  }

  v34 = 0;
  HIDWORD(v35) = v46.i32[1];
  v36 = vsubq_f32(v46, v26);
  v37 = vmulq_f32(v36, v36);
  v38 = v37.f32[2] + vaddv_f32(*v37.f32);
  v39 = 1065353216;
  while (1)
  {
    if (v8 != v34)
    {
      v40 = v34 + 0.5;
      LODWORD(v35) = *(v6 + 24);
      v30.i32[0] = *(v6 + 36);
      *v29.i32 = *(v6 + 32) * 0.5;
      *&v28 = *v29.i32 + (v40 * *(v6 + 28));
      *&v41 = *&v35 + ((*(v6 + 20) * 0.5) + (v40 * *(v6 + 16)));
      *v27.f64 = *v30.i32 + *&v28;
      *(&v41 + 1) = *v30.i32 + *&v28;
      *v42.i64 = CI::BitmapSampler::read(*(v6 + 8), v41, v27, v35, v28, v29, v30, v31, v32);
      HIDWORD(v35) = v46.i32[1];
      v43 = vsubq_f32(v46, v42);
      v44 = vmulq_f32(v43, v43);
      if ((v44.f32[2] + vaddv_f32(*v44.f32)) < v38)
      {
        break;
      }
    }

    if (v33 == ++v34)
    {
      return v39;
    }
  }

  return 0;
}

void sub_19CDC9A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double affine::inverse@<D0>(affine *this@<X0>, double *a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *this * v6 - v4 * v5;
  if (fabs(v7) >= 1.0e-10)
  {
    v9 = 1.0 / v7;
    *a2 = v6 * v9;
    a2[1] = v9 * -v4;
    result = v3 * v9;
    a2[2] = -(v5 * v9);
    a2[3] = result;
  }

  else
  {
    printf("singular matrix cannot be inverted");
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void roiForPoints(double a1, double a2, double a3, double a4)
{
  v4 = fminf(fminf(fminf(*&a1, *&a2), *&a3), *&a4);
  v5 = fmaxf(fmaxf(fmaxf(*&a1, *&a2), *&a3), *&a4);
  v6 = *(&a2 + 1);
  v8.origin.y = fminf(fminf(fminf(*(&a1 + 1), *(&a2 + 1)), *(&a3 + 1)), *(&a4 + 1));
  v7 = fmaxf(fmaxf(fmaxf(*(&a1 + 1), v6), *(&a3 + 1)), *(&a4 + 1));
  v8.size.width = v5 - v4;
  v8.size.height = v7 - v8.origin.y;
  v8.origin.x = v4;
  v9 = CGRectInset(v8, -0.0001, -0.0001);
  v10 = CGRectIntegral(v9);
  if (v10.size.height < 1.5)
  {
    v10 = CGRectInset(v10, 0.0, -1.0);
  }

  if (v10.size.width < 1.5)
  {
    CGRectInset(v10, 0.0, -1.0);
  }
}

void roiForPoints(double a1, double a2, double a3)
{
  v3 = fminf(fminf(*&a1, *&a2), *&a3);
  v4 = fmaxf(fmaxf(*&a1, *&a2), *&a3);
  v5 = *(&a2 + 1);
  v7.origin.y = fminf(fminf(*(&a1 + 1), *(&a2 + 1)), *(&a3 + 1));
  v6 = fmaxf(fmaxf(*(&a1 + 1), v5), *(&a3 + 1));
  v7.size.width = v4 - v3;
  v7.size.height = v6 - v7.origin.y;
  v7.origin.x = v3;
  v8 = CGRectInset(v7, -0.0001, -0.0001);
  v9 = CGRectIntegral(v8);
  if (v9.size.height < 1.5)
  {
    v9 = CGRectInset(v9, 0.0, -1.0);
  }

  if (v9.size.width < 1.5)
  {
    CGRectInset(v9, 0.0, -1.0);
  }
}

float32x2_t CI::sw_fourfoldRotatedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v37 = *v11;
  v38 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v37.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v37, v37, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vrndm_f32(v20);
  v22 = vmul_f32(v21, 0x3F0000003F000000);
  v23 = vdup_n_s32(0x3F7FFFFFu);
  v24 = vminnm_f32(vsub_f32(v22, vrndm_f32(v22)), v23);
  v25 = vadd_f32(v24, v24);
  v26 = vminnm_f32(vsub_f32(v20, v21), v23);
  __asm { FMOV            V1.2S, #1.0 }

  v32 = vsub_f32(_D1, v26);
  v33 = vmla_lane_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(v26, 1.0 - v25.f32[0]), vext_s8(v26, v32, 4uLL), v25.f32[0]), 1.0 - v25.f32[1]), vmla_n_f32(vmul_n_f32(vext_s8(v32, v26, 4uLL), 1.0 - v25.f32[0]), v32, v25.f32[0]), v25, 1);
  v34 = vmul_f32(*v38.i8, v33);
  v35 = vmul_f32(*&vextq_s8(v38, v38, 8uLL), v33);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
}

float32x2_t CI::sw_sixfoldRotatedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v34 = *v11;
  v35 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v34.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v34, v34, 8uLL), v17);
  v20 = vzip1_s32(v18, v19);
  v21 = vadd_f32(v20, vzip2_s32(v18, v19));
  v22 = vminnm_f32(vsub_f32(v21, vrndm_f32(v21)), vdup_n_s32(0x3F7FFFFFu));
  *v18.i32 = 1.0 - v22.f32[1];
  v20.f32[0] = vaddv_f32(v22) + -1.0;
  v18.i32[1] = v20.i32[0];
  v23 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, v20), 0), v22, v18);
  *&v24 = 1.0 - *v23.i32 - *&v23.i32[1];
  v25.i32[0] = vdup_lane_s32(v23, 1).u32[0];
  v25.i32[1] = v24;
  v26 = vbsl_s8(vcgtd_f64(*&v23.i32[1], *v23.i32 * -2.0 + 1.0), v25, v23);
  v27 = 1.0 - *v26.i32 - *&v26.i32[1];
  *&v27 = v27;
  v28 = vbsl_s8(vcgtd_f64(*v26.i32, *&v26.i32[1] * -2.0 + 1.0), vzip1_s32(*&v27, v26), v26);
  *v25.i32 = 1.0 - *v28.i32 - *&v28.i32[1];
  v29.i32[0] = vdup_lane_s32(v28, 1).u32[0];
  v29.i32[1] = v25.i32[0];
  v30 = vbsl_s8(vcgtd_f64(*&v28.i32[1], *v28.i32 * -2.0 + 1.0), v29, v28);
  v31 = vmul_f32(*v35.i8, v30);
  v32 = vmul_f32(*&vextq_s8(v35, v35, 8uLL), v30);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32)));
}

float32x2_t CI::sw_twelvefoldReflectedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v39 = *v11;
  v40 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v39.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v39, v39, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  v22 = vcgt_f32(vdup_lane_s32(v21, 1), v21);
  *v22.i32 = (v22.i8[0] & 1);
  __asm { FMOV            V4.2S, #1.0 }

  v28 = vmla_n_f32(vmul_f32(vrev64_s32(v21), vsub_f32(_D4, vdup_lane_s32(v22, 0))), v21, *v22.i32);
  *v21.i32 = 1.0 - v28.f32[0] - v28.f32[1];
  v29 = vrev64_s32(vsub_f32(_D4, v28));
  _NF = *v21.i32 < 0.0;
  v30 = 0;
  if (_NF)
  {
    *v30.i32 = 1.0;
  }

  v31 = vmla_n_f32(vmul_f32(v28, vsub_f32(_D4, vdup_lane_s32(v30, 0))), v29, *v30.i32);
  v32 = v31.f32[1];
  v33 = v31.f32[0] * -2.0 + 1.0 - v31.f32[1];
  *v30.i32 = 1.0 - v31.f32[0] - v31.f32[1];
  if (v33 >= 0.0)
  {
    *v30.i32 = v31.f32[0];
  }

  v34 = *v30.i32 * -0.5 + 0.5 - v32;
  v35 = 1.0 - *v30.i32 - v32;
  if (v34 >= 0.0)
  {
    v35 = v31.f32[1];
  }

  *&v30.i32[1] = v35;
  v36 = vmul_f32(*v40.i8, v30);
  v37 = vmul_f32(*&vextq_s8(v40, v40, 8uLL), v30);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v36, v37), vzip2_s32(v36, v37)));
}

float32x2_t CI::sw_fourfoldTranslatedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v25 = *v11;
  v26 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v25.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v25, v25, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  v22 = vmul_f32(*v26.i8, v21);
  v23 = vmul_f32(*&vextq_s8(v26, v26, 8uLL), v21);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v22, v23), vzip2_s32(v22, v23)));
}

float32x2_t CI::sw_glideReflectedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v37 = *v11;
  v38 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v37.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v37, v37, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vrndm_f32(v20);
  v22 = vmul_f32(v21, 0x3F0000003F000000);
  v23 = vdup_n_s32(0x3F7FFFFFu);
  v24 = vminnm_f32(vsub_f32(v22, vrndm_f32(v22)), v23);
  v25 = vminnm_f32(vsub_f32(v20, v21), v23);
  __asm { FMOV            V1.2S, #1.0 }

  v31.i32[0] = vsub_f32(_D1, v25).u32[0];
  v31.i32[1] = vadd_f32(v25, _D1).i32[1];
  v32 = vadd_f32(v24, v24);
  v33 = vmla_lane_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(v25, 1.0 - v32.f32[0]), v31, v32.f32[0]), 1.0 - v32.f32[1]), vmla_n_f32(vmul_n_f32(__PAIR64__(v31.u32[1], v25.u32[0]), 1.0 - v32.f32[0]), __PAIR64__(v25.u32[1], v31.u32[0]), v32.f32[0]), v32, 1);
  v34 = vmul_f32(*v38.i8, v33);
  v35 = vmul_f32(*&vextq_s8(v38, v38, 8uLL), v33);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
}

float32x2_t CI::sw_eightfoldReflectedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v33 = *v11;
  v34 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v33.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v27 = vminnm_f32(v21, vsub_f32(_D1, v21));
  v28 = vcgt_f32(v27, vdup_lane_s32(v27, 1));
  *v28.i32 = (v28.i8[0] & 1);
  v29 = vmla_n_f32(vmul_f32(vrev64_s32(v27), vsub_f32(_D1, vdup_lane_s32(v28, 0))), v27, *v28.i32);
  v30 = vmul_f32(*v34.i8, v29);
  v31 = vmul_f32(*&vextq_s8(v34, v34, 8uLL), v29);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v30, v31), vzip2_s32(v30, v31)));
}

float32x2_t CI::sw_fourfoldReflectedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v32 = *v11;
  v33 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v32.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v32, v32, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v27 = vminnm_f32(v21, vsub_f32(_D1, v21));
  v28 = vadd_f32(v27, v27);
  v29 = vmul_f32(*v33.i8, v28);
  v30 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v28);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v29, v30), vzip2_s32(v29, v30)));
}

float32x2_t CI::sw_sixfoldReflectedTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v37 = *v11;
  v38 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v37.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v37, v37, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  v22 = vcgt_f32(vdup_lane_s32(v21, 1), v21);
  *v22.i32 = (v22.i8[0] & 1);
  __asm { FMOV            V4.2S, #1.0 }

  v28 = vmla_n_f32(vmul_f32(vrev64_s32(v21), vsub_f32(_D4, vdup_lane_s32(v22, 0))), v21, *v22.i32);
  v29 = vsub_f32(0x400000003F800000, vdup_lane_s32(vadd_f32(v28, vdup_lane_s32(v28, 1)), 0));
  *v22.i32 = *v28.i32 - *v29.i32;
  v30 = __PAIR64__(v29.u32[1], v22.u32[0]);
  v22.i32[1] = v28.i32[1];
  v22.i32[0] = 0;
  v31 = vbsl_s8(vcgt_f32(v22, v30), v29, v28);
  v32 = vcgt_f32(vdup_lane_s32(v31, 1), v31);
  *v32.i32 = (v32.i8[0] & 1);
  v33 = vmla_n_f32(vmul_f32(vrev64_s32(v31), vsub_f32(_D4, vdup_lane_s32(v32, 0))), v31, *v32.i32);
  v34 = vmul_f32(*v38.i8, v33);
  v35 = vmul_f32(*&vextq_s8(v38, v38, 8uLL), v33);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
}

CFTypeRef CI::RenderDestination::setColorspace(CI::RenderDestination *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  result = *(this + 3);
  if (result)
  {
    result = CFAutorelease(result);
  }

  *(this + 3) = cf;
  return result;
}

BOOL checkFormat(int a1)
{
  if (a1 == 274 || a1 == 530 || a1 == 1298 || a1 == 1554 || a1 == 786 || a1 == 1042)
  {
    return 1;
  }

  HIDWORD(v9) = a1 - 1810;
  LODWORD(v9) = a1 - 1810;
  v8 = v9 >> 8;
  if (v8 >= 9)
  {
    if (a1 == 2066)
    {
      return 1;
    }
  }

  else
  {
    v10 = 0x1C1u >> v8;
    v6 = 1;
    if ((v10 & 1) != 0 || a1 == 2066)
    {
      return v6;
    }
  }

  HIDWORD(v12) = a1 - 278;
  LODWORD(v12) = a1 - 278;
  v11 = v12 >> 8;
  if (v11 < 0xF && ((0x70FFu >> v11) & 1) != 0)
  {
    return 1;
  }

  v6 = 1;
  if (a1 > 1554)
  {
    if (a1 > 3346)
    {
      if (a1 == 3347 || a1 == 3603 || a1 == 3859)
      {
        return v6;
      }
    }

    else if (a1 == 1555 || a1 == 1811 || a1 == 2067)
    {
      return v6;
    }
  }

  else if (a1 > 786)
  {
    if (a1 == 787 || a1 == 1043 || a1 == 1299)
    {
      return v6;
    }
  }

  else if (a1 == 275 || a1 == 531 || a1 == 535)
  {
    return v6;
  }

  return a1 == 264 || a1 == 265 || a1 == 266 || a1 == 267 || a1 == 268 || a1 == 269 || a1 == 270 || a1 == 271 || a1 == 2056 || a1 == 2060 || a1 == 2567 || a1 == 2569 || a1 == 3079 || a1 == 3081 || a1 == 775 || a1 == 784 || a1 == 785 || a1 == 1800 || a1 == 1801 || a1 == 1804 || a1 == 2312 || a1 == 2316 || a1 == 2313 || a1 == 263 || a1 == 1799 || a1 == 2310 || a1 == 2309 || a1 == 2308 || a1 == 2307 || a1 == 262 || a1 == 774 || a1 == 3334 || a1 == 1798 || a1 == 2054 || a1 == 260 || a1 == 1796 || a1 == 261 || a1 == 773 || a1 == 3333 || a1 == 1797 || a1 == 2053 || a1 == 259 || a1 == 771 || a1 == 3331 || a1 == 1795 || a1 == 2051;
}

CGColorSpaceRef default_colorspace_for_format(int a1, int a2)
{
  if (CI::format_is_rgb(a1))
  {
    if (CI::format_is_float(a1) | a2)
    {
      v4 = MEMORY[0x1E695F108];
    }

    else
    {
      v4 = MEMORY[0x1E695F1C0];
    }
  }

  else
  {
    if (!CI::format_is_luminance(a1))
    {
      return 0;
    }

    is_float = CI::format_is_float(a1);
    v4 = MEMORY[0x1E695F128];
    if (is_float)
    {
      v4 = MEMORY[0x1E695F0F8];
    }
  }

  v6 = *v4;

  return CGColorSpaceCreateWithName(v6);
}

CFTypeRef CI::RenderDestination::setLabel(CI::RenderDestination *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  result = *(this + 2);
  if (result)
  {
    result = CFAutorelease(result);
  }

  *(this + 2) = cf;
  return result;
}

const void *CI::RenderToMTLTextureProvider::texture(CI::RenderToMTLTextureProvider *this)
{
  result = *(this + 10);
  if (!result)
  {
    result = (*(*(this + 9) + 16))();
    *(this + 10) = result;
    if (result)
    {
      CFRetain(result);
      return *(this + 10);
    }
  }

  return result;
}

CIImage *ditherImage(CIImage *a1, int a2, CGColorSpace *a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_destDither];
  v7 = ldexp(1.0, -a2);
  if (v7 > 0.0009765625)
  {
    if (a3)
    {
      a1 = [(CIImage *)a1 imageByColorMatchingWorkingSpaceToColorSpace:a3];
    }

    v8 = [(CIImage *)a1 imageByUnpremultiplyingAlpha];
    v9 = [[CIFilter filterWithName:?]];
    [(CIImage *)v8 extent];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v20[2] = [MEMORY[0x1E696AD98] numberWithDouble:{v7, v8, v9}];
    v18 = -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v6, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3], v11, v13, v15, v17), "imageByPremultiplyingAlpha");
    a1 = v18;
    if (a3)
    {
      return [(CIImage *)v18 imageByColorMatchingColorSpaceToWorkingSpace:a3];
    }
  }

  return a1;
}

unint64_t CI::sw_destDither(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = (COERCE_FLOAT(HIDWORD(*v11->f32)) + (COERCE_FLOAT(*&v11[1]) + vaddv_f32(*v11))) * 0.25 + -0.5;
  *&v12 = v12;
  *&v12 = *(a2 + (*(v3 + 56) << 6)) * *&v12;
  v13 = vaddq_f32(*v7, vdupq_lane_s32(*&v12, 0));
  v13.i32[3] = 0;
  v14 = vmaxnmq_f32(v13, 0);
  v14.i32[3] = 0;
  return vminnmq_f32(v14, xmmword_19CF23BD0).u64[0];
}

double CI::sw_rippleTransition(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v4 + 88) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v4 + 104);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v4 + 112) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 136);
  v17 = *(v4 + 128);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  v20 = a4 + 80 * v7;
  v21 = a4 + 80 * v6;
  v22 = a4 + 80 * v5;
  v23 = *v11;
  v67 = *v15;
  v24 = *v19;
  DC = CI::getDC(a1);
  v26 = vsub_f32(*DC, v23);
  v27 = vmul_f32(v26, v26);
  *v27.i32 = sqrtf(vaddv_f32(v27));
  v28 = vdup_lane_s32(v27, 0);
  *v27.i32 = vmuls_lane_f32(vmuls_lane_f32(*v27.i32 - v67.f32[0], *v67.f32, 1), v67, 2);
  v29 = vdiv_f32(v26, v28);
  v30 = vaddq_f32(vdupq_lane_s32(v27, 0), xmmword_19CF297B0);
  v31 = vcltzq_f32(v30);
  v30.i32[3] = v30.i32[1];
  __asm { FMOV            V5.4S, #1.0 }

  v37 = vminnmq_f32(vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(v30, 0), _Q5), 0), _Q5);
  v38.i64[0] = 0xC0000000C0000000;
  v38.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V7.4S, #3.0 }

  v40 = vmlaq_f32(_Q7, v38, v37);
  v69 = vaddq_f32(vmulq_f32(vmulq_f32(vmulq_f32(v37, v37), v40), xmmword_19CF297C0), xmmword_19CF297D0);
  *v31.i8 = vmovn_s32(v31);
  v41 = vdupq_laneq_s32(v69, 2);
  v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(*v31.i8, 2)), 0x1FuLL));
  v37.i64[0] = vbslq_s8(v42, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(*v31.i8, 1)), 0x1FuLL)), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(*v31.i8, 0)), 0x1FuLL)), 0, vdupq_lane_s32(*v69.f32, 0)), vdupq_lane_s32(*v69.f32, 1)), v41).u64[0];
  v31.i64[0] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(*v31.i8, 3)), 0x1FuLL)).u64[0];
  v43 = vmul_f32(v29, vand_s8(*v37.f32, *v31.i8));
  *v37.f32 = vmul_laneq_f32(v43, v67, 3);
  *v41.i8 = vadd_f32(*DC, *v37.f32);
  *&v44.f64[0] = vmul_f32(v43, 0x3F0000003F000000);
  *v45.i8 = vmul_f32(v24, vadd_f32(*&v44.f64[0], 0x3F0000003F000000));
  v64 = v41;
  v66 = v45;
  v37.i32[0] = *(v22 + 28);
  *v45.i32 = *(v22 + 24) + (vmuls_lane_f32(*(v22 + 20), *v41.i8, 1) + (*v41.i32 * *(v22 + 16)));
  v31.i32[0] = *(v22 + 36);
  *v44.f64 = *v31.i32 + (vmuls_lane_f32(*(v22 + 32), *v41.i8, 1) + (*v41.i32 * v37.f32[0]));
  v45.i32[1] = LODWORD(v44.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v22 + 8), *v45.i64, v44, *v37.i64, *v31.i64, v41, v42, v69, v40);
  v68 = v46;
  HIDWORD(v47) = v64.i32[1];
  v48.i32[0] = *(v21 + 36);
  *&v49 = vmuls_lane_f32(*(v21 + 32), *v64.i8, 1);
  *&v47 = *&v49 + (*v64.i32 * *(v21 + 28));
  v46.f32[0] = *(v21 + 24) + (vmuls_lane_f32(*(v21 + 20), *v64.i8, 1) + (*v64.i32 * *(v21 + 16)));
  *v50.f64 = *v48.i32 + *&v47;
  v46.f32[1] = *v48.i32 + *&v47;
  *v53.i64 = CI::BitmapSampler::read(*(v21 + 8), *v46.i64, v50, v47, v49, v48, v64, v51, v52);
  v65 = v53;
  HIDWORD(v54) = v66.i32[1];
  v55.i32[0] = *(v20 + 36);
  *&v56 = vmuls_lane_f32(*(v20 + 32), *v66.i8, 1);
  *&v54 = *&v56 + (*v66.i32 * *(v20 + 28));
  v53.f32[0] = *(v20 + 24) + (vmuls_lane_f32(*(v20 + 20), *v66.i8, 1) + (*v66.i32 * *(v20 + 16)));
  *v57.f64 = *v55.i32 + *&v54;
  v53.f32[1] = *v55.i32 + *&v54;
  *v60.i64 = CI::BitmapSampler::read(*(v20 + 8), *v53.i64, v57, v54, v56, v55, v66, v58, v59);
  v61 = vmlaq_laneq_f32(vmulq_n_f32(v65, 1.0 - v69.f32[3]), v68, v69, 3);
  v62 = vmulq_laneq_f32(v60, v61, 3);
  *&result = vaddq_f32(v62, vmulq_n_f32(v61, 1.0 - v62.f32[3])).u64[0];
  return result;
}

CI::SRGBImage *CI::SRGBImage::SRGBImage(CI::SRGBImage *this, CI::Image *a2, int a3)
{
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 1u);
  *v6 = &unk_1F10370B8;
  *(v6 + 16) = &unk_1F1037240;
  *(v6 + 34) = a3;
  *(this + 12) = CI::SRGBImage::makeDigest(*(a2 + 12), a3);
  *(this + 13) = CI::SRGBImage::makeDigest(*(a2 + 13), a3);
  *(this + 113) = 0;
  return this;
}

void sub_19CDD0FA4(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::SRGBImage::makeDigest(uint64_t a1, int a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 14;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  LODWORD(__src) = a2;
  XXH64_update(v5, &__src, 4uLL);
  return XXH64_digest(v5);
}

void *CI::InstanceCounted<(CI::Type)14>::~InstanceCounted(void *result)
{
  *result = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)14>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

unint64_t CI::sw_sepia(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  v10 = vmulq_f32(*v7, xmmword_19CF23D50);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  if (-(v10.f32[0] - (v10.f32[0] * v10.f32[0])) >= 0.0)
  {
    v12 = vdupq_lane_s32(*v10.f32, 0);
  }

  else
  {
    v11 = v10.f32[0] / fmaxf(v8.f32[3], 0.0001);
    v12 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF29860, v8, 3), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(xmmword_19CF29820, v11), xmmword_19CF29830), v11), xmmword_19CF29840), v11), xmmword_19CF29850), v10.f32[0]));
    if (v8.f32[3] * 0.085 <= v10.f32[0])
    {
      v13 = v12.f32[3];
    }

    else
    {
      v13 = v12.f32[0];
    }

    v12.f32[0] = v13;
  }

  v9 = *(a2 + (*(v3 + 32) << 6));
  return vmlaq_n_f32(vmulq_n_f32(v8, 1.0 - v9), vmulq_f32(v12, xmmword_19CF29870), v9).u64[0];
}

uint64_t encodePointForKey(void *a1, uint64_t a2, double a3)
{
  [a1 encodeDouble:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a3}];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a2, @"suffix"];

  return [a1 encodeDouble:v6 forKey:a3];
}

uint64_t encodeRectForKey(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  [a1 encodeDouble:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a3}];
  [a1 encodeDouble:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a4}];
  [a1 encodeDouble:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%@.%@", a2, @"suffix", a5}];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a2, @"suffix"];

  return [a1 encodeDouble:v11 forKey:a6];
}

double decodePointForKey(void *a1, uint64_t a2)
{
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  v5 = v4;
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  return v5;
}

double decodeRectForKey(void *a1, uint64_t a2)
{
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  v5 = v4;
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  [a1 decodeDoubleForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", a2, @"suffix"}];
  return v5;
}

uint64_t valueWithPoint(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  return [MEMORY[0x1E696B098] valueWithBytes:v3 objCType:"{CGPoint=dd}"];
}

uint64_t valueWithRect(double a1, double a2, double a3, double a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

double pointFromValue(void *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return *v2;
}

double rectFromValue(void *a1)
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

uint64_t unarchiveObjectOfClassAllowCommon(uint64_t a1, uint64_t a2)
{
  v17 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = [v17 setWithObjects:{v16, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_self(), a1, 0}];
  v13 = MEMORY[0x1E696ACD0];

  return [v13 unarchivedObjectOfClasses:v12 fromData:a2 error:0];
}

double CI::sw_shadedmaterial(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = a4 + 80 * v6;
  v13 = a4 + 80 * v5;
  v75 = *(a2 + (v7 << 6));
  v14 = *v11;
  v15 = *CI::getDC(a1);
  v16 = vadd_f32(v15, 0x3F80000000000000);
  LODWORD(v17) = *(v13 + 24);
  v18.i32[0] = *(v13 + 36);
  *v19.i32 = vmuls_lane_f32(*(v13 + 32), v16, 1);
  *&v20 = *v19.i32 + (v16.f32[0] * *(v13 + 28));
  v16.f32[0] = *&v17 + (vmuls_lane_f32(*(v13 + 20), v16, 1) + (v16.f32[0] * *(v13 + 16)));
  *v21.f64 = *v18.i32 + *&v20;
  v16.f32[1] = *v18.i32 + *&v20;
  v74 = CI::BitmapSampler::read(*(v13 + 8), *&v16, v21, v17, v20, v19, v18, v22, v23);
  v24 = vadd_f32(v15, 0xBF80000000000000);
  LODWORD(v25) = *(v13 + 24);
  v26.i32[0] = *(v13 + 36);
  *v27.i32 = vmuls_lane_f32(*(v13 + 32), v24, 1);
  *&v28 = *v27.i32 + (v24.f32[0] * *(v13 + 28));
  v24.f32[0] = *&v25 + (vmuls_lane_f32(*(v13 + 20), v24, 1) + (v24.f32[0] * *(v13 + 16)));
  *v29.f64 = *v26.i32 + *&v28;
  v24.f32[1] = *v26.i32 + *&v28;
  *&v32 = CI::BitmapSampler::read(*(v13 + 8), *&v24, v29, v25, v28, v27, v26, v30, v31);
  v73 = v32;
  *&v32 = vadd_f32(v15, 3212836864);
  LODWORD(v33) = *(v13 + 24);
  v34.i32[0] = *(v13 + 36);
  *v35.i32 = vmuls_lane_f32(*(v13 + 32), *&v32, 1);
  *&v36 = *v35.i32 + (*&v32 * *(v13 + 28));
  *&v32 = *&v33 + (vmuls_lane_f32(*(v13 + 20), *&v32, 1) + (*&v32 * *(v13 + 16)));
  *v37.f64 = *v34.i32 + *&v36;
  *(&v32 + 1) = *v34.i32 + *&v36;
  v72 = CI::BitmapSampler::read(*(v13 + 8), *&v32, v37, v33, v36, v35, v34, v38, v39);
  v40 = vadd_f32(v15, 1065353216);
  LODWORD(v41) = *(v13 + 24);
  v42.i32[0] = *(v13 + 36);
  *v43.i32 = vmuls_lane_f32(*(v13 + 32), v40, 1);
  *&v44 = *v43.i32 + (v40.f32[0] * *(v13 + 28));
  v40.f32[0] = *&v41 + (vmuls_lane_f32(*(v13 + 20), v40, 1) + (v40.f32[0] * *(v13 + 16)));
  *v45.f64 = *v42.i32 + *&v44;
  v40.f32[1] = *v42.i32 + *&v44;
  v70 = CI::BitmapSampler::read(*(v13 + 8), *&v40, v45, v41, v44, v43, v42, v46, v47);
  DC = CI::getDC(v48);
  LODWORD(v50) = *(v13 + 24);
  v51.i32[0] = *(v13 + 36);
  *v52.i32 = vmuls_lane_f32(*(v13 + 32), *DC, 1);
  *&v53 = *v52.i32 + (COERCE_FLOAT(*DC) * *(v13 + 28));
  *&v54 = *&v50 + (vmuls_lane_f32(*(v13 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v13 + 16)));
  *v55.f64 = *v51.i32 + *&v53;
  *(&v54 + 1) = *v51.i32 + *&v53;
  *v58.i64 = CI::BitmapSampler::read(*(v13 + 8), v54, v55, v50, v53, v52, v51, v56, v57);
  v71 = v58;
  v58.i64[1] = *(&v73 + 1);
  *v58.f32 = vsub_f32(vzip1_s32(*&v72, *&v73), vzip1_s32(*&v70, *&v74));
  v59 = v58;
  v59.i32[2] = v75;
  v60 = vmulq_f32(v59, v59);
  *&v61 = *&v60.f64[1] + vaddv_f32(*&v60.f64[0]);
  *&v60.f64[0] = vrsqrte_f32(v61);
  v62 = vmul_f32(*&v60.f64[0], *&v60.f64[0]);
  v63 = vrsqrts_f32(v61, v62);
  *&v60.f64[0] = vmul_f32(v14, vadd_f32(vmul_f32(vmul_n_f32(*v58.f32, vmul_f32(*&v60.f64[0], v63).f32[0]), vdup_n_s32(0x3EFD70A4u)), 0x3F0000003F000000));
  v62.i32[0] = *(v12 + 28);
  v58.f32[0] = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *&v60.f64[0], 1) + (*v60.f64 * *(v12 + 16)));
  v64.i32[0] = *(v12 + 36);
  v63.f32[0] = vmuls_lane_f32(*(v12 + 32), *&v60.f64[0], 1);
  *v60.f64 = *v64.i32 + (v63.f32[0] + (*v60.f64 * v62.f32[0]));
  v58.i32[1] = LODWORD(v60.f64[0]);
  *v68.i64 = CI::BitmapSampler::read(*(v12 + 8), *v58.i64, v60, *&v63, *&v62, v64, v65, v66, v67);
  *&result = vmulq_laneq_f32(v68, v71, 3).u64[0];
  return result;
}

double CI::sw_shadedmaterial_0(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v13 = *v10;
  DC = CI::getDC(a1);
  LODWORD(v15) = *(v12 + 24);
  v16.i32[0] = *(v12 + 36);
  *v17.i32 = vmuls_lane_f32(*(v12 + 32), *DC, 1);
  *&v18 = *v17.i32 + (COERCE_FLOAT(*DC) * *(v12 + 28));
  *&v19 = *&v15 + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  *v20.f64 = *v16.i32 + *&v18;
  *(&v19 + 1) = *v16.i32 + *&v18;
  *v23.i64 = CI::BitmapSampler::read(*(v12 + 8), v19, v20, v15, v18, v17, v16, v21, v22);
  v33 = v23;
  *v23.f32 = vmul_f32(v13, 0x3F0000003F000000);
  LODWORD(v24) = *(v11 + 24);
  v25.i32[0] = *(v11 + 36);
  *v26.i32 = vmuls_lane_f32(*(v11 + 32), *v23.f32, 1);
  *&v27 = *v26.i32 + (v23.f32[0] * *(v11 + 28));
  v23.f32[0] = *&v24 + (vmuls_lane_f32(*(v11 + 20), *v23.f32, 1) + (v23.f32[0] * *(v11 + 16)));
  *v28.f64 = *v25.i32 + *&v27;
  v23.f32[1] = *v25.i32 + *&v27;
  *v31.i64 = CI::BitmapSampler::read(*(v11 + 8), *v23.i64, v28, v24, v27, v26, v25, v29, v30);
  *&result = vmulq_laneq_f32(v31, v33, 3).u64[0];
  return result;
}

unint64_t CI::sw_noiseReduction(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = a4 + 80 * *(v5 + 8);
  a5.i64[0] = *v9;
  v107 = a5;
  v104 = *(a2 + (*(v5 + 56) << 6));
  v105 = *(a2 + (*(v5 + 80) << 6));
  DC = CI::getDC(a1);
  *v12.i8 = *DC;
  v108 = v12;
  LODWORD(v13) = *(v10 + 28);
  *&v14 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  LODWORD(v15) = *(v10 + 36);
  *v16.f64 = *&v15 + (vmuls_lane_f32(*(v10 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v13));
  HIDWORD(v14) = LODWORD(v16.f64[0]);
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), v14, v16, v13, v15, v12, v17, v18, v19);
  v103 = v20;
  v20.i32[0] = 0;
  v20.f32[1] = -*v107.i32;
  v21 = v108;
  *v20.f32 = vadd_f32(*v20.f32, *&v108.f64[0]);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v25 = *v24.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.f32[1] = *v23.i32 + *&v25;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v21, v22, v25, v24, v23, v26, v27);
  v102 = v28;
  v29 = v108;
  *v28.f32 = vadd_f32(vzip1_s32(0, *v107.i8), *&v108.f64[0]);
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), *v28.f32, 1);
  *&v33 = *v32.i32 + (v28.f32[0] * *(v10 + 28));
  v28.f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), *v28.f32, 1) + (v28.f32[0] * *(v10 + 16)));
  *v29.f64 = *v31.i32 + *&v33;
  v28.f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v29, v30, v33, v32, v31, v34, v35);
  v101 = v36;
  *&v37.f64[0] = COERCE_UNSIGNED_INT(-*v107.i32);
  *v36.f32 = vadd_f32(*&v37.f64[0], *&v108.f64[0]);
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *v36.f32, 1);
  *&v41 = *v40.i32 + (v36.f32[0] * *(v10 + 28));
  v36.f32[0] = *&v38 + (vmuls_lane_f32(*(v10 + 20), *v36.f32, 1) + (v36.f32[0] * *(v10 + 16)));
  *v37.f64 = *v39.i32 + *&v41;
  v36.f32[1] = *v39.i32 + *&v41;
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v37, v38, v41, v40, v39, v42, v43);
  v100 = v44;
  v45 = v108;
  *v44.f32 = vadd_f32(v107.u32[0], *&v108.f64[0]);
  LODWORD(v46) = *(v10 + 24);
  v47.i32[0] = *(v10 + 36);
  *v48.i32 = vmuls_lane_f32(*(v10 + 32), *v44.f32, 1);
  *&v49 = *v48.i32 + (v44.f32[0] * *(v10 + 28));
  v44.f32[0] = *&v46 + (vmuls_lane_f32(*(v10 + 20), *v44.f32, 1) + (v44.f32[0] * *(v10 + 16)));
  *v45.f64 = *v47.i32 + *&v49;
  v44.f32[1] = *v47.i32 + *&v49;
  *v52.i64 = CI::BitmapSampler::read(*(v10 + 8), *v44.i64, v45, v46, v49, v48, v47, v50, v51);
  v99 = v52;
  *&v53.f64[0] = vdup_lane_s32(*v107.i8, 1);
  v96 = v53;
  *v52.f32 = vadd_f32(*&v53.f64[0], *&v108.f64[0]);
  LODWORD(v54) = *(v10 + 24);
  v55.i32[0] = *(v10 + 36);
  *v56.i32 = vmuls_lane_f32(*(v10 + 32), *v52.f32, 1);
  *&v57 = *v56.i32 + (v52.f32[0] * *(v10 + 28));
  v52.f32[0] = *&v54 + (vmuls_lane_f32(*(v10 + 20), *v52.f32, 1) + (v52.f32[0] * *(v10 + 16)));
  *v53.f64 = *v55.i32 + *&v57;
  v52.f32[1] = *v55.i32 + *&v57;
  *v59.i64 = CI::BitmapSampler::read(*(v10 + 8), *v52.i64, v53, v54, v57, v56, v55, v107, v58);
  v98 = v59;
  v59.f32[0] = -*&v107.i32[1];
  v106 = *v59.f32;
  v60 = v96;
  *(v60.f64 + 1) = -*&v107.i32[1];
  *v59.f32 = vadd_f32(*&v60.f64[0], *&v108.f64[0]);
  LODWORD(v61) = *(v10 + 24);
  v62.i32[0] = *(v10 + 36);
  *v63.i32 = vmuls_lane_f32(*(v10 + 32), *v59.f32, 1);
  *&v64 = *v63.i32 + (v59.f32[0] * *(v10 + 28));
  v59.f32[0] = *&v61 + (vmuls_lane_f32(*(v10 + 20), *v59.f32, 1) + (v59.f32[0] * *(v10 + 16)));
  *v60.f64 = *v62.i32 + *&v64;
  v59.f32[1] = *v62.i32 + *&v64;
  *v67.i64 = CI::BitmapSampler::read(*(v10 + 8), *v59.i64, v60, v61, v64, v63, v62, v65, v66);
  v97 = v67;
  v68 = v108;
  *v67.f32 = vadd_f32(vdup_lane_s32(v106, 0), *&v108.f64[0]);
  LODWORD(v69) = *(v10 + 24);
  v70.i32[0] = *(v10 + 36);
  *v71.i32 = vmuls_lane_f32(*(v10 + 32), *v67.f32, 1);
  *&v72 = *v71.i32 + (v67.f32[0] * *(v10 + 28));
  v67.f32[0] = *&v69 + (vmuls_lane_f32(*(v10 + 20), *v67.f32, 1) + (v67.f32[0] * *(v10 + 16)));
  *v68.f64 = *v70.i32 + *&v72;
  v67.f32[1] = *v70.i32 + *&v72;
  *v75.i64 = CI::BitmapSampler::read(*(v10 + 8), *v67.i64, v68, v69, v72, v71, v70, v73, v74);
  v95 = v75;
  v76 = v108;
  *v75.f32 = vadd_f32(__PAIR64__(v107.u32[1], v106.u32[0]), *&v108.f64[0]);
  LODWORD(v77) = *(v10 + 24);
  v78.i32[0] = *(v10 + 36);
  *v79.i32 = vmuls_lane_f32(*(v10 + 32), *v75.f32, 1);
  *&v80 = *v79.i32 + (v75.f32[0] * *(v10 + 28));
  v75.f32[0] = *&v77 + (vmuls_lane_f32(*(v10 + 20), *v75.f32, 1) + (v75.f32[0] * *(v10 + 16)));
  *v76.f64 = *v78.i32 + *&v80;
  v75.f32[1] = *v78.i32 + *&v80;
  *v83.i64 = CI::BitmapSampler::read(*(v10 + 8), *v75.i64, v76, v77, v80, v79, v78, v81, v82);
  _V3.S[1] = DWORD1(v105);
  v85 = vaddq_f32(vmulq_laneq_f32(v103, v104, 2), vaddq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(v102, v101), v100), v99), v104.f32[0]), vmulq_lane_f32(vaddq_f32(vaddq_f32(vaddq_f32(v98, v97), v95), v83), *v104.f32, 1)));
  _Q1 = vabdq_f32(v85, v103);
  _Q1.f32[0] = _Q1.f32[2] + vaddv_f32(*_Q1.f32);
  __asm { FMLA            S2, S1, V3.S[1] }

  v92 = *(&v105 + 2);
  if (_S2 <= 1.0)
  {
    v93 = _S2;
  }

  else
  {
    v93 = 1.0;
  }

  if (_S2 >= *(&v105 + 2))
  {
    v92 = v93;
  }

  return vmlaq_n_f32(vmulq_n_f32(v103, 1.0 - v92), v85, v92).u64[0];
}

unint64_t CI::sw_convertRGBtoY(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fmaxf(COERCE_FLOAT(HIDWORD(*v9)), 0.00001);
  v10 = vmulq_f32(vdivq_f32(*v9, vdupq_lane_s32(*&a5, 0)), xmmword_19CF23D60);
  v10.f32[0] = sqrtf(fmaxf(v10.f32[2] + vaddv_f32(*v10.f32), 0.0));
  return vdupq_lane_s32(*v10.f32, 0).u64[0];
}

unint64_t CI::sw_blur1(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5.f64[0] = *CI::getDC(a1);
  v89 = v5;
  __asm { FMOV            V9.2S, #-1.0 }

  v11 = vadd_f32(*&v5.f64[0], COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v12) = *(v4 + 24);
  v13.i32[0] = *(v4 + 36);
  *v14.i32 = vmuls_lane_f32(*(v4 + 32), v11, 1);
  *&v15 = *v14.i32 + (v11.f32[0] * *(v4 + 28));
  v11.f32[0] = *&v12 + (vmuls_lane_f32(*(v4 + 20), v11, 1) + (v11.f32[0] * *(v4 + 16)));
  *v5.f64 = *v13.i32 + *&v15;
  v11.f32[1] = *v13.i32 + *&v15;
  *v18.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v11, v5, v12, v15, v14, v13, v16, v17);
  v88 = v18;
  v19 = v89;
  *v18.f32 = vadd_f32(*v89.i8, 0x3F80000000000000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), *v18.f32, 1);
  *&v23 = *v22.i32 + (v18.f32[0] * *(v4 + 28));
  v18.f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), *v18.f32, 1) + (v18.f32[0] * *(v4 + 16)));
  *v19.f64 = *v21.i32 + *&v23;
  v18.f32[1] = *v21.i32 + *&v23;
  *v26.i64 = CI::BitmapSampler::read(*(v4 + 8), *v18.i64, v19, v20, v23, v22, v21, v24, v25);
  v83 = v26;
  __asm { FMOV            V8.2S, #1.0 }

  *v26.f32 = vadd_f32(*v89.i8, *&_D8);
  LODWORD(v28) = *(v4 + 24);
  v29.i32[0] = *(v4 + 36);
  *v30.i32 = vmuls_lane_f32(*(v4 + 32), *v26.f32, 1);
  *&v31 = *v30.i32 + (v26.f32[0] * *(v4 + 28));
  v26.f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), *v26.f32, 1) + (v26.f32[0] * *(v4 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v26.f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v4 + 8), *v26.i64, v32, v28, v31, v30, v29, v33, v34);
  HIDWORD(v36) = v89.i32[1];
  *&v37.f64[0] = vadd_f32(*v89.i8, 3212836864);
  *&v36 = vmuls_lane_f32(*(v4 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v4 + 16));
  LODWORD(v38) = *(v4 + 24);
  v39.i32[0] = *(v4 + 36);
  *v40.i32 = vmuls_lane_f32(*(v4 + 32), *&v37.f64[0], 1);
  v86 = vaddq_f32(v88, v35);
  v35.f32[0] = *&v38 + *&v36;
  *v37.f64 = *v39.i32 + (*v40.i32 + (*v37.f64 * *(v4 + 28)));
  v35.i32[1] = LODWORD(v37.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v4 + 8), *v35.i64, v37, v36, v38, v88, v40, v39, v41);
  v43 = v83;
  v84 = vaddq_f32(v83, v42);
  LODWORD(v44) = *(v4 + 28);
  v42.f32[0] = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v89.i8, 1) + (*v89.i32 * *(v4 + 16)));
  LODWORD(v45) = *(v4 + 36);
  *v43.f64 = *&v45 + (vmuls_lane_f32(*(v4 + 32), *v89.i8, 1) + (*v89.i32 * *&v44));
  v42.i32[1] = LODWORD(v43.f64[0]);
  v49 = CI::BitmapSampler::read(*(v4 + 8), *v42.i64, v43, v44, v45, v89, v46, v47, v48);
  v88.i32[0] = LODWORD(v49);
  v50 = v89;
  v51 = vadd_f32(*v89.i8, 1065353216);
  LODWORD(v52) = *(v4 + 24);
  v53.i32[0] = *(v4 + 36);
  *v54.i32 = vmuls_lane_f32(*(v4 + 32), v51, 1);
  *&v55 = *v54.i32 + (v51.f32[0] * *(v4 + 28));
  v51.f32[0] = *&v52 + (vmuls_lane_f32(*(v4 + 20), v51, 1) + (v51.f32[0] * *(v4 + 16)));
  *v50.f64 = *v53.i32 + *&v55;
  v51.f32[1] = *v53.i32 + *&v55;
  *v58.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v51, v50, v52, v55, v54, v53, v56, v57);
  *&v59.f64[1] = v89.i64[1];
  *&v59.f64[0] = vadd_f32(*v89.i8, *&_D9);
  *&v60 = vmuls_lane_f32(*(v4 + 20), *&v59.f64[0], 1) + (*v59.f64 * *(v4 + 16));
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *&v59.f64[0], 1);
  v64 = v84;
  v85 = vaddq_f32(v84, v58);
  v58.f32[0] = *&v61 + *&v60;
  *v59.f64 = *v62.i32 + (*v63.i32 + (*v59.f64 * *(v4 + 28)));
  v58.i32[1] = LODWORD(v59.f64[0]);
  *v66.i64 = CI::BitmapSampler::read(*(v4 + 8), *v58.i64, v59, v60, v61, v64, v63, v62, v65);
  HIDWORD(v67) = v89.i32[1];
  *&v68.f64[0] = vadd_f32(*v89.i8, 0xBF80000000000000);
  *&v67 = vmuls_lane_f32(*(v4 + 20), *&v68.f64[0], 1) + (*v68.f64 * *(v4 + 16));
  LODWORD(v69) = *(v4 + 24);
  v70.i32[0] = *(v4 + 36);
  *v71.i32 = vmuls_lane_f32(*(v4 + 32), *&v68.f64[0], 1);
  v72 = v86;
  v87 = vaddq_f32(v86, v66);
  v66.f32[0] = *&v69 + *&v67;
  *v68.f64 = *v70.i32 + (*v71.i32 + (*v68.f64 * *(v4 + 28)));
  v66.i32[1] = LODWORD(v68.f64[0]);
  *v74.i64 = CI::BitmapSampler::read(*(v4 + 8), *v66.i64, v68, v67, v69, v72, v71, v70, v73);
  HIDWORD(v75) = v89.i32[1];
  *&v76.f64[0] = vadd_f32(*v89.i8, COERCE_FLOAT32X2_T(-_D8));
  *&v75 = vmuls_lane_f32(*(v4 + 20), *&v76.f64[0], 1) + (*v76.f64 * *(v4 + 16));
  LODWORD(v77) = *(v4 + 24);
  v78.i32[0] = *(v4 + 36);
  *v79.i32 = vmuls_lane_f32(*(v4 + 32), *&v76.f64[0], 1);
  *v89.i32 = vaddq_f32(v85, v74).f32[0];
  v74.f32[0] = *&v77 + *&v75;
  *v76.f64 = *v78.i32 + (*v79.i32 + (*v76.f64 * *(v4 + 28)));
  v74.i32[1] = LODWORD(v76.f64[0]);
  *v81.i64 = CI::BitmapSampler::read(*(v4 + 8), *v74.i64, v76, v75, v77, v85, v79, v78, v80);
  v81.f32[0] = *v89.i32 * 0.125 + v88.f32[0] * 0.25 + vaddq_f32(v87, v81).f32[0] * 0.0625;
  return __PAIR64__(v81.u32[0], v88.u32[0]);
}

uint64_t CI::sw_blur2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5.f64[0] = *CI::getDC(a1);
  v79 = v5;
  v6 = vadd_f32(*&v5.f64[0], COERCE_FLOAT32X2_T(--2.00000143));
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v5.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  *v13.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v6, v5, v7, v10, v9, v8, v11, v12);
  v78 = v13;
  v14 = v79;
  *v13.f32 = vadd_f32(*v79.i8, 0x4000000000000000);
  LODWORD(v15) = *(v4 + 24);
  v16.i32[0] = *(v4 + 36);
  *v17.i32 = vmuls_lane_f32(*(v4 + 32), *v13.f32, 1);
  *&v18 = *v17.i32 + (v13.f32[0] * *(v4 + 28));
  v13.f32[0] = *&v15 + (vmuls_lane_f32(*(v4 + 20), *v13.f32, 1) + (v13.f32[0] * *(v4 + 16)));
  *v14.f64 = *v16.i32 + *&v18;
  v13.f32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v4 + 8), *v13.i64, v14, v15, v18, v17, v16, v19, v20);
  v74 = v21;
  *v21.f32 = vadd_f32(*v79.i8, 0x4000000040000000);
  LODWORD(v22) = *(v4 + 24);
  v23.i32[0] = *(v4 + 36);
  *v24.i32 = vmuls_lane_f32(*(v4 + 32), *v21.f32, 1);
  *&v25 = *v24.i32 + (v21.f32[0] * *(v4 + 28));
  v21.f32[0] = *&v22 + (vmuls_lane_f32(*(v4 + 20), *v21.f32, 1) + (v21.f32[0] * *(v4 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v21.f32[1] = *v23.i32 + *&v25;
  *v29.i64 = CI::BitmapSampler::read(*(v4 + 8), *v21.i64, v26, v22, v25, v24, v23, v27, v28);
  HIDWORD(v30) = v79.i32[1];
  *&v31.f64[0] = vadd_f32(*v79.i8, 3221225472);
  *&v30 = vmuls_lane_f32(*(v4 + 20), *&v31.f64[0], 1) + (*v31.f64 * *(v4 + 16));
  LODWORD(v32) = *(v4 + 24);
  v33.i32[0] = *(v4 + 36);
  *v34.i32 = vmuls_lane_f32(*(v4 + 32), *&v31.f64[0], 1);
  v77 = vaddq_f32(v78, v29);
  v29.f32[0] = *&v32 + *&v30;
  *v31.f64 = *v33.i32 + (*v34.i32 + (*v31.f64 * *(v4 + 28)));
  v29.i32[1] = LODWORD(v31.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), *v29.i64, v31, v30, v32, v78, v34, v33, v35);
  v37 = v74;
  v75 = vaddq_f32(v74, v36);
  LODWORD(v38) = *(v4 + 28);
  v36.f32[0] = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v79.i8, 1) + (*v79.i32 * *(v4 + 16)));
  LODWORD(v39) = *(v4 + 36);
  *v37.f64 = *&v39 + (vmuls_lane_f32(*(v4 + 32), *v79.i8, 1) + (*v79.i32 * *&v38));
  v36.i32[1] = LODWORD(v37.f64[0]);
  v78.i64[0] = CI::BitmapSampler::read(*(v4 + 8), *v36.i64, v37, v38, v39, v79, v40, v41, v42);
  v43 = v79;
  v44 = vadd_f32(*v79.i8, 0x40000000);
  LODWORD(v45) = *(v4 + 24);
  v46.i32[0] = *(v4 + 36);
  *v47.i32 = vmuls_lane_f32(*(v4 + 32), v44, 1);
  *&v48 = *v47.i32 + (v44.f32[0] * *(v4 + 28));
  v44.f32[0] = *&v45 + (vmuls_lane_f32(*(v4 + 20), v44, 1) + (v44.f32[0] * *(v4 + 16)));
  *v43.f64 = *v46.i32 + *&v48;
  v44.f32[1] = *v46.i32 + *&v48;
  *v51.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v44, v43, v45, v48, v47, v46, v49, v50);
  *&v52.f64[1] = v79.i64[1];
  *&v52.f64[0] = vadd_f32(*v79.i8, 0xC0000000C0000000);
  *&v53 = vmuls_lane_f32(*(v4 + 20), *&v52.f64[0], 1) + (*v52.f64 * *(v4 + 16));
  LODWORD(v54) = *(v4 + 24);
  v55.i32[0] = *(v4 + 36);
  *v56.i32 = vmuls_lane_f32(*(v4 + 32), *&v52.f64[0], 1);
  v57 = v75;
  v76 = vaddq_f32(v75, v51);
  v51.f32[0] = *&v54 + *&v53;
  *v52.f64 = *v55.i32 + (*v56.i32 + (*v52.f64 * *(v4 + 28)));
  v51.i32[1] = LODWORD(v52.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), *v51.i64, v52, v53, v54, v57, v56, v55, v58);
  HIDWORD(v59) = v79.i32[1];
  *&v60.f64[0] = vadd_f32(*v79.i8, 0xC000000000000000);
  *&v59 = vmuls_lane_f32(*(v4 + 20), *&v60.f64[0], 1) + (*v60.f64 * *(v4 + 16));
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *&v60.f64[0], 1);
  *&v64 = *&v61 + *&v59;
  *v60.f64 = *v62.i32 + (*v63.i32 + (*v60.f64 * *(v4 + 28)));
  HIDWORD(v64) = LODWORD(v60.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), v64, v60, v59, v61, v77, v63, v62, v65);
  HIDWORD(v66) = v79.i32[1];
  *&v67.f64[0] = vadd_f32(*v79.i8, COERCE_FLOAT32X2_T(-2.00000048));
  *&v66 = vmuls_lane_f32(*(v4 + 20), *&v67.f64[0], 1) + (*v67.f64 * *(v4 + 16));
  LODWORD(v68) = *(v4 + 24);
  v69.i32[0] = *(v4 + 36);
  *v70.i32 = vmuls_lane_f32(*(v4 + 32), *&v67.f64[0], 1);
  *&v71 = *&v68 + *&v66;
  *v67.f64 = *v69.i32 + (*v70.i32 + (*v67.f64 * *(v4 + 28)));
  HIDWORD(v71) = LODWORD(v67.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), v71, v67, v66, v68, v76, v70, v69, v72);
  return v78.i64[0];
}

uint64_t CI::sw_blur4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5.f64[0] = *CI::getDC(a1);
  v85 = v5;
  __asm { FMOV            V9.2S, #-4.0 }

  v11 = vadd_f32(*&v5.f64[0], COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v12) = *(v4 + 24);
  v13.i32[0] = *(v4 + 36);
  *v14.i32 = vmuls_lane_f32(*(v4 + 32), v11, 1);
  *&v15 = *v14.i32 + (v11.f32[0] * *(v4 + 28));
  v11.f32[0] = *&v12 + (vmuls_lane_f32(*(v4 + 20), v11, 1) + (v11.f32[0] * *(v4 + 16)));
  *v5.f64 = *v13.i32 + *&v15;
  v11.f32[1] = *v13.i32 + *&v15;
  *v18.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v11, v5, v12, v15, v14, v13, v16, v17);
  v84 = v18;
  v19 = v85;
  *v18.f32 = vadd_f32(*v85.i8, 0x4080000000000000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), *v18.f32, 1);
  *&v23 = *v22.i32 + (v18.f32[0] * *(v4 + 28));
  v18.f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), *v18.f32, 1) + (v18.f32[0] * *(v4 + 16)));
  *v19.f64 = *v21.i32 + *&v23;
  v18.f32[1] = *v21.i32 + *&v23;
  *v26.i64 = CI::BitmapSampler::read(*(v4 + 8), *v18.i64, v19, v20, v23, v22, v21, v24, v25);
  v80 = v26;
  __asm { FMOV            V8.2S, #4.0 }

  *v26.f32 = vadd_f32(*v85.i8, *&_D8);
  LODWORD(v28) = *(v4 + 24);
  v29.i32[0] = *(v4 + 36);
  *v30.i32 = vmuls_lane_f32(*(v4 + 32), *v26.f32, 1);
  *&v31 = *v30.i32 + (v26.f32[0] * *(v4 + 28));
  v26.f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), *v26.f32, 1) + (v26.f32[0] * *(v4 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v26.f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v4 + 8), *v26.i64, v32, v28, v31, v30, v29, v33, v34);
  HIDWORD(v36) = v85.i32[1];
  *&v37.f64[0] = vadd_f32(*v85.i8, 3229614080);
  *&v36 = vmuls_lane_f32(*(v4 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v4 + 16));
  LODWORD(v38) = *(v4 + 24);
  v39.i32[0] = *(v4 + 36);
  *v40.i32 = vmuls_lane_f32(*(v4 + 32), *&v37.f64[0], 1);
  v83 = vaddq_f32(v84, v35);
  v35.f32[0] = *&v38 + *&v36;
  *v37.f64 = *v39.i32 + (*v40.i32 + (*v37.f64 * *(v4 + 28)));
  v35.i32[1] = LODWORD(v37.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v4 + 8), *v35.i64, v37, v36, v38, v84, v40, v39, v41);
  v43 = v80;
  v81 = vaddq_f32(v80, v42);
  LODWORD(v44) = *(v4 + 28);
  v42.f32[0] = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v85.i8, 1) + (*v85.i32 * *(v4 + 16)));
  LODWORD(v45) = *(v4 + 36);
  *v43.f64 = *&v45 + (vmuls_lane_f32(*(v4 + 32), *v85.i8, 1) + (*v85.i32 * *&v44));
  v42.i32[1] = LODWORD(v43.f64[0]);
  v84.i64[0] = CI::BitmapSampler::read(*(v4 + 8), *v42.i64, v43, v44, v45, v85, v46, v47, v48);
  v49 = v85;
  v50 = vadd_f32(*v85.i8, 1082130432);
  LODWORD(v51) = *(v4 + 24);
  v52.i32[0] = *(v4 + 36);
  *v53.i32 = vmuls_lane_f32(*(v4 + 32), v50, 1);
  *&v54 = *v53.i32 + (v50.f32[0] * *(v4 + 28));
  v50.f32[0] = *&v51 + (vmuls_lane_f32(*(v4 + 20), v50, 1) + (v50.f32[0] * *(v4 + 16)));
  *v49.f64 = *v52.i32 + *&v54;
  v50.f32[1] = *v52.i32 + *&v54;
  *v57.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v50, v49, v51, v54, v53, v52, v55, v56);
  *&v58.f64[1] = v85.i64[1];
  *&v58.f64[0] = vadd_f32(*v85.i8, *&_D9);
  *&v59 = vmuls_lane_f32(*(v4 + 20), *&v58.f64[0], 1) + (*v58.f64 * *(v4 + 16));
  LODWORD(v60) = *(v4 + 24);
  v61.i32[0] = *(v4 + 36);
  *v62.i32 = vmuls_lane_f32(*(v4 + 32), *&v58.f64[0], 1);
  v63 = v81;
  v82 = vaddq_f32(v81, v57);
  v57.f32[0] = *&v60 + *&v59;
  *v58.f64 = *v61.i32 + (*v62.i32 + (*v58.f64 * *(v4 + 28)));
  v57.i32[1] = LODWORD(v58.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), *v57.i64, v58, v59, v60, v63, v62, v61, v64);
  HIDWORD(v65) = v85.i32[1];
  *&v66.f64[0] = vadd_f32(*v85.i8, 0xC080000000000000);
  *&v65 = vmuls_lane_f32(*(v4 + 20), *&v66.f64[0], 1) + (*v66.f64 * *(v4 + 16));
  LODWORD(v67) = *(v4 + 24);
  v68.i32[0] = *(v4 + 36);
  *v69.i32 = vmuls_lane_f32(*(v4 + 32), *&v66.f64[0], 1);
  *&v70 = *&v67 + *&v65;
  *v66.f64 = *v68.i32 + (*v69.i32 + (*v66.f64 * *(v4 + 28)));
  HIDWORD(v70) = LODWORD(v66.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), v70, v66, v65, v67, v83, v69, v68, v71);
  HIDWORD(v72) = v85.i32[1];
  *&v73.f64[0] = vadd_f32(*v85.i8, COERCE_FLOAT32X2_T(-_D8));
  *&v72 = vmuls_lane_f32(*(v4 + 20), *&v73.f64[0], 1) + (*v73.f64 * *(v4 + 16));
  LODWORD(v74) = *(v4 + 24);
  v75.i32[0] = *(v4 + 36);
  *v76.i32 = vmuls_lane_f32(*(v4 + 32), *&v73.f64[0], 1);
  *&v77 = *&v74 + *&v72;
  *v73.f64 = *v75.i32 + (*v76.i32 + (*v73.f64 * *(v4 + 28)));
  HIDWORD(v77) = LODWORD(v73.f64[0]);
  CI::BitmapSampler::read(*(v4 + 8), v77, v73, v72, v74, v82, v76, v75, v78);
  return v84.i64[0];
}

unint64_t CI::sw_edgesPrep(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fmaxf(COERCE_FLOAT(HIDWORD(*v9)), 0.00001);
  v10 = vdivq_f32(*v9, vdupq_lane_s32(*&a5, 0));
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v10, 0);
  v11.i32[3] = 0;
  return vsqrtq_f32(v11).u64[0];
}

double CI::sw_findEdges(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v50 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  *v7.i8 = *DC;
  v51 = v7;
  LODWORD(v8) = *(v5 + 28);
  *&v9 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v10) = *(v5 + 36);
  *v11.f64 = *&v10 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v8));
  HIDWORD(v9) = LODWORD(v11.f64[0]);
  *_Q0.i64 = CI::BitmapSampler::read(*(v5 + 8), v9, v11, v8, v10, v7, v12, v13, v14);
  v48 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  v20 = v51;
  *_Q0.f32 = vadd_f32(*&v51.f64[0], *_Q0.f32);
  LODWORD(v21) = *(v5 + 24);
  v22.i32[0] = *(v5 + 36);
  *v23.i32 = vmuls_lane_f32(*(v5 + 32), *_Q0.f32, 1);
  *&v24 = *v23.i32 + (_Q0.f32[0] * *(v5 + 28));
  _Q0.f32[0] = *&v21 + (vmuls_lane_f32(*(v5 + 20), *_Q0.f32, 1) + (_Q0.f32[0] * *(v5 + 16)));
  *v20.f64 = *v22.i32 + *&v24;
  _Q0.f32[1] = *v22.i32 + *&v24;
  *v27.i64 = CI::BitmapSampler::read(*(v5 + 8), *_Q0.i64, v20, v21, v24, v23, v22, v25, v26);
  HIDWORD(v28) = HIDWORD(v51.f64[0]);
  *&v29.f64[0] = vadd_f32(*&v51.f64[0], 0x3F80000000000000);
  *&v28 = vmuls_lane_f32(*(v5 + 20), *&v29.f64[0], 1) + (*v29.f64 * *(v5 + 16));
  LODWORD(v30) = *(v5 + 24);
  v31.i32[0] = *(v5 + 36);
  *v32.i32 = vmuls_lane_f32(*(v5 + 32), *&v29.f64[0], 1);
  v33 = v48;
  v49 = vsubq_f32(v48, v27);
  v27.f32[0] = *&v30 + *&v28;
  *v29.f64 = *v31.i32 + (*v32.i32 + (*v29.f64 * *(v5 + 28)));
  v27.i32[1] = LODWORD(v29.f64[0]);
  *v35.i64 = CI::BitmapSampler::read(*(v5 + 8), *v27.i64, v29, v28, v30, v33, v32, v31, v34);
  v47 = v35;
  v36 = v51;
  *v35.f32 = vadd_f32(*&v51.f64[0], 1065353216);
  LODWORD(v37) = *(v5 + 24);
  v38.i32[0] = *(v5 + 36);
  *v39.i32 = vmuls_lane_f32(*(v5 + 32), *v35.f32, 1);
  *&v40 = *v39.i32 + (v35.f32[0] * *(v5 + 28));
  v35.f32[0] = *&v37 + (vmuls_lane_f32(*(v5 + 20), *v35.f32, 1) + (v35.f32[0] * *(v5 + 16)));
  *v36.f64 = *v38.i32 + *&v40;
  v35.f32[1] = *v38.i32 + *&v40;
  *v43.i64 = CI::BitmapSampler::read(*(v5 + 8), *v35.i64, v36, v37, v40, v39, v38, v41, v42);
  v44 = vsubq_f32(v47, v43);
  v45 = vmulq_n_f32(vaddq_f32(vmulq_f32(v49, v49), vmulq_f32(v44, v44)), v50);
  v45.f32[0] = fminf(fmaxf(fmaxf(v45.f32[0], v45.f32[1]), v45.f32[2]), 1.0);
  *&result = vdupq_lane_s32(*v45.f32, 0).u64[0];
  return result;
}

double CI::sw_sharpenCombineEdges(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v8 + 16) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 32);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v8 + 40) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 56);
  v18 = *(v8 + 88);
  v19 = *(v8 + 80);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (v18 == 5)
  {
    v21 = v20;
  }

  v22 = *v16->i8;
  *&a8 = fmaxf(COERCE_FLOAT(HIDWORD(*v12)), 0.00001);
  v23 = vdivq_f32(*v12, vdupq_lane_s32(*&a8, 0));
  v24 = vmulq_f32(*(a2 + (v17 << 6)), vsubq_f32(vdupq_lane_s32(*v16, 0), vextq_s8(*v16->i8, *v12, 4uLL)));
  v25 = vaddv_f32(*v24.f32);
  *&v22 = (COERCE_FLOAT(*v16->i8) + (v24.f32[2] + v25)) * (COERCE_FLOAT(*v16->i8) + (v24.f32[2] + v25));
  v26 = vmulq_laneq_f32(vaddq_f32(vmulq_laneq_f32(xmmword_19CF29920, v23, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF29910, *v23.f32, 1), vaddq_f32(vmulq_n_f32(xmmword_19CF29900, v23.f32[0]), vdupq_lane_s32(*&v22, 0)))), *v12, 3);
  v26.i32[3] = HIDWORD(*v12);
  *&result = vmlaq_n_f32(vmulq_n_f32(*v12, 1.0 - COERCE_FLOAT(*v21)), v26, COERCE_FLOAT(*v21)).u64[0];
  return result;
}

double CI::sw_sharpenLuminance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v7;
  v13 = *v11;
  v14 = *(a2 + (*(v3 + 56) << 6)) + 1.0;
  v15 = vmulq_f32(*v11, xmmword_19CF23D60);
  *v15.i32 = *&v15.i32[2] + vaddv_f32(*v15.i8);
  *v13.i8 = vsub_f32(vzip1_s32(*v11->f32, *&vextq_s8(v13, v13, 8uLL)), vdup_lane_s32(*v15.i8, 0));
  v16 = vextq_s8(vextq_s8(v15, v15, 4uLL), v13, 0xCuLL);
  v17 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v17.i32 = *&v17.i32[2] + vaddv_f32(*v17.i8);
  v18 = vextq_s8(v12, v12, 8uLL);
  *v18.i8 = vsub_f32(vzip1_s32(*v7->f32, *v18.i8), vdup_lane_s32(*v17.i8, 0));
  v19 = vmlaq_n_f32(vmulq_n_f32(v16, 1.0 - v14), vextq_s8(vextq_s8(v17, v17, 4uLL), v18, 0xCuLL), v14);
  v20 = vmulq_f32(v19, xmmword_19CF299E0);
  *&v12.i32[1] = v20.f32[2] + vaddv_f32(*v20.f32);
  *v19.f32 = vadd_f32(vdup_lane_s32(*v19.f32, 0), *&vextq_s8(v19, v19, 4uLL));
  *&result = vtrn2q_s32(vzip1q_s32(v12, v19), v12).u64[0];
  return result;
}

double CI::sw_grassAndSkyAdjust(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v69 = *v7;
  LODWORD(v65) = *v11;
  LODWORD(v12) = HIDWORD(*v11);
  v13 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF29A70, *v7, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF29A60, *v7->f32, 1), vmulq_n_f32(xmmword_19CF29A50, COERCE_FLOAT(*v7))));
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v60 = _Q2;
  v62 = vbslq_s8(vorrq_s8(vcltzq_f32(v13), vcgtzq_f32(v13)), vorrq_s8(vandq_s8(v13, v14), _Q2), 0);
  v20 = vabsq_f32(v13);
  v20.i32[3] = 0;
  _Q0 = vmulq_f32(_simd_pow_f4(v20, xmmword_19CF29A80), v62);
  v63 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF29AB0, _Q0, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF29AA0, *_Q0.f32, 1), vmulq_n_f32(xmmword_19CF29A90, _Q0.f32[0])));
  _S8 = v63.i32[2];
  _S14 = v63.i32[1];
  __asm { FMLA            S0, S8, V1.S[2] }

  v24 = atan2f(sqrtf(_Q0.f32[0]) - v63.f32[1], v63.f32[2]) / 3.1416 + 0.5;
  v25 = v24 + -0.88;
  v26 = exp(v25 * v25 / -0.015488);
  _V3.S[1] = v63.i32[1];
  v28 = (v63.f32[0] + -0.4) / 0.1;
  if (v28 <= 1.0)
  {
    v29 = (v63.f32[0] + -0.4) / 0.1;
  }

  else
  {
    v29 = 1.0;
  }

  if (v28 >= 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  v58 = vextq_s8(v63, v63, 4uLL).u64[0];
  v59 = (1.0 - ((v30 * v30) * ((v30 * -2.0) + 3.0))) * v26;
  v57 = vsub_f32(0x3DCCCCCDBCF5C28FLL, v58);
  __asm { FMLA            S0, S14, V3.S[1] }

  v32 = _S0 * 4.0;
  v33 = pow((_S0 * 4.0), 0.2) * v65;
  v34 = 0.1 / (sqrtf(COERCE_FLOAT(vmul_f32(v57, v57).i32[1]) + (v57.f32[0] * v57.f32[0])) + 0.05);
  *v35.i8 = vmul_n_f32(vadd_f32(v58, vmul_n_f32(vmul_n_f32(v57, fminf(fminf(1.0 - (v32 * v32), 1.0) * v33, 1.5)), fminf(v34, 1.0))), v65);
  v36 = vextq_s8(v35, v35, 0xCuLL);
  v36.i32[0] = v63.i32[0];
  v37 = vmlaq_n_f32(vmulq_n_f32(v63, 1.0 - v59), v36, v59);
  v66 = v37;
  v38 = (v37.f32[0] + -0.2) / 0.3;
  if (v38 <= 1.0)
  {
    v39 = (v37.f32[0] + -0.2) / 0.3;
  }

  else
  {
    v39 = 1.0;
  }

  if (v38 >= 0.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = (v40 * v40) * ((v40 * -2.0) + 3.0);
  v42 = v37.f32[1] + 0.04;
  v43 = exp(v42 * v42 / -0.045) * v41;
  v44 = v66.f32[2] + 0.1;
  v45 = exp(v44 * v44 / -0.08) * v43;
  v64 = v45;
  v46 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF29AD0, v66, 2), vaddq_f32(vdupq_lane_s32(*v66.f32, 0), vmulq_lane_f32(xmmword_19CF29AC0, *v66.f32, 1)));
  v47.i64[0] = 0x8000000080000000;
  v47.i64[1] = 0x8000000080000000;
  v67 = vandq_s8(vorrq_s8(vandq_s8(v46, v47), v60), vorrq_s8(vcltzq_f32(v46), vcgtzq_f32(v46)));
  v48 = vabsq_f32(v46);
  v48.i32[3] = 0;
  v49 = vmulq_f32(_simd_pow_f4(v48, xmmword_19CF29AE0), v67);
  v50 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF29B10, v49, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF29B00, *v49.f32, 1), vmulq_n_f32(xmmword_19CF29AF0, v49.f32[0])));
  v50.i32[3] = 0;
  v51 = vmaxnmq_f32(v50, 0);
  v51.i32[3] = v69.i32[3];
  v68 = v51;
  v61 = fabsf(v12);
  v52 = _simd_pow_f4(vmulq_n_f32(v51, fmaxf(v12 + 1.0, 1.0)), vdupq_lane_s32(COERCE_UNSIGNED_INT(v61 + 1.0), 0));
  *v53.i32 = (v52.f32[1] + (v52.f32[0] + v52.f32[2])) / 3.0;
  v54.i64[0] = 0x3F0000003F000000;
  v54.i64[1] = 0x3F0000003F000000;
  v55 = vaddq_f32(v52, vmulq_f32(vmulq_n_f32(vsubq_f32(v52, vdupq_lane_s32(v53, 0)), v61), v54));
  v55.i32[3] = v52.i32[3];
  *&result = vmlaq_n_f32(vmulq_n_f32(v68, 1.0 - v64), v55, v64).u64[0];
  return result;
}

double CI::sw_smartBlackAndWhite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(v3 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v3 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (v13 == 5)
  {
    v16 = v15;
  }

  v62 = *v16;
  v63 = *v12;
  v17 = *(v16 + 1);
  __asm { FMOV            V1.4S, #1.0 }

  v23 = vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1);
  v24 = vmulq_f32(v23, xmmword_19CF29BA0);
  v25 = vmulq_f32(v23, xmmword_19CF29BB0);
  v64 = v23;
  *v24.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v26 = vmulq_f32(v23, xmmword_19CF29BC0);
  *&v24.i32[2] = v26.f32[2] + vaddv_f32(*v26.f32);
  v24.i32[3] = 0;
  v27 = _simd_pow_f4(v24, xmmword_19CF29A80);
  v28 = vmulq_f32(v27, xmmword_19CF29BD0);
  v29 = v28.f32[2] + vaddv_f32(*v28.f32);
  v30 = vmulq_f32(v27, xmmword_19CF29BE0);
  v30.f32[0] = v30.f32[2] + vaddv_f32(*v30.f32);
  v31 = vmulq_f32(v27, xmmword_19CF29BF0);
  v31.f32[0] = v31.f32[2] + vaddv_f32(*v31.f32);
  v32 = sqrtf((v31.f32[0] * v31.f32[0]) + (v30.f32[0] * v30.f32[0]));
  v33 = atan2f(v31.f32[0], v30.f32[0]);
  v34.f64[0] = 0.5;
  v35 = v33 / 6.28318531 + 0.5;
  HIDWORD(v36) = 1056964608;
  *&v36 = *(&v62 + 1) + (v35 * *&v62);
  *v34.f64 = *&v36;
  *v42.i64 = CI::BitmapSampler::read(v8, v36, v34, *&v62, v37, v38, v39, v40, v41);
  v43 = vmulq_f32(v63, v42);
  v44 = fabs(v29 + -0.5) * 0.53 + 0.06;
  if ((v29 * 25.0) <= 1.0)
  {
    v45 = v29 * 25.0;
  }

  else
  {
    v45 = 1.0;
  }

  if ((v29 * 25.0) >= 0.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = (v46 * v46) * ((v46 * -2.0) + 3.0);
  v48 = v32 / v44;
  if (v48 <= 1.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 1.0;
  }

  if (v48 >= 0.0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = (1.0 - v29) * ((v50 * v50) * ((v50 * -2.0) + 3.0)) * v47 * (v43.f32[3] + -1.0) + 1.0;
  v52 = vmulq_f32(v63, v64);
  v53 = powf(v52.f32[2] + vaddv_f32(*v52.f32), v51);
  if ((v32 * 10.0) <= 1.0)
  {
    v54 = v32 * 10.0;
  }

  else
  {
    v54 = 1.0;
  }

  if ((v32 * 10.0) >= 0.0)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0.0;
  }

  v56 = (1.0 - v53) * v53 * (1.0 - ((v55 * v55) * ((v55 * -2.0) + 3.0))) * (*&v17 + -1.0) + 1.0;
  v57 = v56 * -4.0 + 5.0;
  v58 = powf(v53, v57);
  v59 = v58 * -2.1972 * v58 + v58 * 1.8031 * v58 * v58 + v58 * 1.3823;
  *v60.i32 = (v58 * (*(&v17 + 1) + 1.0)) - (*(&v17 + 1) * v59);
  *&result = vdupq_lane_s32(v60, 0).u64[0];
  return result;
}

uint64_t anonymous namespace::smart_tone_stats_from_histogram(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v37 = *MEMORY[0x1E69E9840];
  *(a2 + 72) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = fmin(v4 / 255.0, 1.0);
    v8 = *(a1 + 8 * v4);
    v5 = v5 + v8 * log(v7 + 0.00392156863);
    *a2 = v5;
    v6 = v6 + v8 * log(1.0 - v7 + 0.00392156863);
    *(a2 + 8) = v6;
    ++v4;
  }

  while (v4 != 512);
  *a2 = exp(v5);
  *(a2 + 8) = exp(v6);
  result = MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14);
  v17 = 0;
  v18 = 1.0e-40;
  do
  {
    v18 = v18 + *(a1 + v17) + *(a1 + v17 + 8);
    v17 += 16;
  }

  while (v17 != 4096);
  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + *(a1 + v19);
    *&v36[v19] = v20 / v18;
    v19 += 8;
  }

  while (v19 != 4096);
  v21 = 0;
  v22 = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  do
  {
    v29 = *&v36[8 * v21];
    if (v29 >= 0.001 && v22 == 0.0)
    {
      v22 = v21 / 255.0;
    }

    if (v29 >= 0.02 && v23 == 0.0)
    {
      v23 = v21 / 255.0;
      *(a2 + 16) = v23;
    }

    if (v29 >= 0.1 && v24 == 0.0)
    {
      v24 = v21 / 255.0;
      *(a2 + 24) = v24;
    }

    if (v29 >= 0.25 && v25 == 0.0)
    {
      v25 = v21 / 255.0;
      *(a2 + 32) = v25;
    }

    if (v29 >= 0.5 && v26 == 0.0)
    {
      v26 = v21 / 255.0;
      *(a2 + 40) = v26;
    }

    if (v29 >= 0.98 && v27 == 0.0)
    {
      v27 = v21 / 255.0;
      *(a2 + 48) = v27;
    }

    if (v29 >= 1.0 && v28 == 0.0)
    {
      v28 = v21 / 255.0;
      *(a2 + 72) = v28;
    }

    ++v21;
  }

  while (v21 != 512);
  *(a2 + 64) = v22 * ((sqrt(v22) * -0.65 + 1.0) * 0.85);
  v30 = 0.6 - v26 - v25;
  v31 = v28 < 1.0 && v16 < 0.8;
  v32 = v30 + fmin(0.8 - v16, 0.2);
  v33 = v30 * 0.9;
  if (v31)
  {
    v33 = v32;
  }

  if (v26 + v25 > 0.6)
  {
    if (v27 >= 1.0)
    {
      v34 = -0.4;
    }

    else
    {
      v34 = -0.7;
    }

    v33 = v26 + v25 + v34;
  }

  v35 = fmax(v33, 0.1);
  if (v26 <= 0.14 || v23 <= 0.015 || v27 <= 0.95)
  {
    if (v23 > 0.055)
    {
      v35 = -v35;
    }
  }

  else
  {
    v35 = -v35;
  }

  *(a2 + 56) = v35 * 0.68;
  return result;
}

uint64_t anonymous namespace::assemble_smart_tone_stats(void *a1, uint64_t a2, double a3)
{
  [objc_msgSend(a1 objectForKey:{@"tonalRange", "doubleValue"}];
  *a2 = v6;
  [objc_msgSend(a1 objectForKey:{@"highKey", "doubleValue"}];
  *(a2 + 8) = v7;
  [objc_msgSend(a1 objectForKey:{@"p02", "doubleValue"}];
  *(a2 + 16) = v8;
  [objc_msgSend(a1 objectForKey:{@"p10", "doubleValue"}];
  *(a2 + 24) = v9;
  [objc_msgSend(a1 objectForKey:{@"p25", "doubleValue"}];
  *(a2 + 32) = v10;
  [objc_msgSend(a1 objectForKey:{@"p50", "doubleValue"}];
  *(a2 + 40) = v11;
  [objc_msgSend(a1 objectForKey:{@"p98", "doubleValue"}];
  *(a2 + 48) = v12;
  [objc_msgSend(a1 objectForKey:{@"autoValue", "doubleValue"}];
  *(a2 + 56) = v13;
  [objc_msgSend(a1 objectForKey:{@"blackPoint", "doubleValue"}];
  *(a2 + 64) = v14;
  result = [objc_msgSend(a1 objectForKey:{@"whitePoint", "doubleValue"}];
  *(a2 + 72) = v16;
  *(a2 + 80) = a3;
  return result;
}

void anonymous namespace::smart_tone_adjustments_from_stats(uint64_t a1, double *a2, double a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = a2[6];
  if (a3 == 0.0 || v5 >= 0.01)
  {
    v6 = a2[10];
    v7 = fabs(v6);
    v8 = a3 * 0.75;
    v9 = v7 < 1.0e-10;
    if (v7 >= 1.0e-10)
    {
      v10 = a3 * 0.75;
    }

    else
    {
      v10 = a3;
    }

    v11 = 0.0;
    if (!v9)
    {
      v12 = fabs(a3) * 0.75 * v6;
      v13 = a2[7];
      v11 = v12 / fabs(v13);
      if (v11 > v6)
      {
        v11 = v6 - fabs(v13 * 0.75) + fabs(v8) * 0.5;
      }
    }

    *(a1 + 48) = v11;
    v14 = a2[2];
    v15 = pow(fabs(v10 / 1.5), 1.3) * 1.5;
    v16 = a2[4];
    v17 = *a2;
    v18 = a2[1];
    v19 = fmin(v5, v18);
    v20 = 0.5;
    v21 = a2[9];
    v46 = v21;
    if (v21 <= 1.0)
    {
      v27 = 1.0 - v5 - v15;
    }

    else
    {
      v22 = v14;
      v23 = a2[4];
      v24 = v10;
      v25 = *a2;
      v26 = log2(v21);
      v20 = 0.5;
      v17 = v25;
      v10 = v24;
      v16 = v23;
      v14 = v22;
      v27 = -0.25 - v26;
    }

    v28 = v5 - v14;
    v29 = fmax(v19, v20);
    v30 = fmax(v27, -0.25);
    if (v10 >= 0.0)
    {
      v32 = v16 + -0.14;
      v33 = fmax(-v15, -0.25);
      if (v46 == 1.0)
      {
        v30 = v33;
      }

      if (v32 >= 0.0)
      {
        if (v5 < 0.82)
        {
          if (v32 < 0.06)
          {
            v32 = sqrt(v32);
          }

          v32 = v32 * -2.0;
        }
      }

      else
      {
        v36 = v32 <= -0.05;
        v34 = v32 * 3.5;
        v32 = sqrt(-v32) * -3.0;
        if (v36)
        {
          v32 = v34;
        }
      }

      v35 = a2[5];
      if (v28 < 0.68 && v35 < 0.35 && v14 > 0.04)
      {
        v32 = v32 / (v28 * (v18 - v17));
      }

      if (v35 - v16 > 0.35)
      {
        v32 = v32 * 2.5;
      }

      v36 = v16 <= 0.7 && a2[3] <= 0.45;
      if (!v36)
      {
        v32 = -v32;
      }

      if (v32 > 0.0)
      {
        v32 = -v32;
      }

      v37 = fmax(fmin(v32, 0.8), -0.8);
      v38 = fmin(fmin(v15 * 1.75 / v28, v15 + v15) / 3.4, 1.0);
      v39 = fmin(0.35 / v28 * (1.0 - v35) / v29, 0.85);
      if (v39 < 0.5 && v16 < 0.08)
      {
        v41 = v39 * 1.5;
      }

      else
      {
        v41 = v39;
      }

      v42 = v38 * 0.65;
      if (v18 < 0.4)
      {
        v43 = v41 * 1.25;
      }

      else
      {
        v42 = v38;
        v43 = v41;
      }

      if (v18 < 0.4)
      {
        v37 = v37 * 1.2;
      }

      *a1 = v10 * v30 * 0.5;
      *(a1 + 8) = v42;
      *(a1 + 16) = -(v10 * v37);
      *(a1 + 24) = fmin(v15 * 0.95 * v43, 1.0);
      v44 = v15 * 0.8;
      if (v5 <= 0.85)
      {
        v44 = v5 * (v10 * 0.8);
      }

      *(a1 + 32) = -fmin(v44, 0.75);
      if (v46 > 1.0)
      {
        *(a1 + 56) = 1.0 / (v46 * 1.25);
        *(a1 + 32) = -fmin(v5 * (v15 * 0.65), 0.75);
      }

      v45 = fmin(v10 * 20.0 * a2[8] / fabs(a2[7]), a2[8] * 20.0);
      v31 = fmax(v45 + v42 * -2.0 * v45, 0.0);
    }

    else
    {
      *(a1 + 8) = fmin(1.0 / v28, 1.25) * v10 / -3.0;
      *(a1 + 16) = v10 * 0.6666667;
      *(a1 + 24) = -(v10 * fmin(v29 * 0.75, 0.5));
      *(a1 + 32) = fmin(v5 * (v10 * 0.8), 0.75);
      if (v46 > 1.0)
      {
        *a1 = v10 * (fabs(v30) * 0.625);
        *(a1 + 56) = 1.0 / (v46 * 1.25);
        *(a1 + 32) = fmax(v15 * -0.75 * v46, -1.0);
      }

      v31 = fmin(v10 * -20.0 * a2[8] / fabs(a2[7]), a2[8] * 20.0);
    }

    *(a1 + 40) = v31;
  }
}

double CI::sw_smarttone_brightness_neg(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, int32x2_t a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *v10;
  a6.i32[0] = *(a2 + (*(v6 + 32) << 6));
  v11.i32[3] = 0;
  v23 = v11;
  v12 = vmaxnmq_f32(v11, 0);
  v24 = v12;
  v12.i32[3] = 0;
  v21 = *a6.i32;
  v13 = vdupq_lane_s32(a6, 0);
  v13.i32[3] = 0;
  v14 = _simd_pow_f4(v12, v13);
  v15 = vmulq_f32(v24, xmmword_19CF29CC0);
  v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
  v16 = 0uLL;
  if (v15.f32[0] > 0.0)
  {
    v17 = v21;
    v20 = *v15.f32;
    v22 = v14;
    v18 = powf(v15.f32[0], v17);
    v14 = v22;
    v16 = vdivq_f32(vmulq_n_f32(v24, v18), vdupq_lane_s32(v20, 0));
  }

  *&result = vaddq_f32(vminnmq_f32(v23, 0), vmlaq_f32(vmulq_f32(v14, vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F4CCCCDu), v16)).u64[0];
  return result;
}

double CI::sw_smarttone_brightness_pos(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v9 + 16) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  LODWORD(a9) = *(a2 + (*(v9 + 32) << 6));
  v31 = *&a9;
  v14 = *v13;
  v14.i32[3] = 0;
  v36 = vminnmq_f32(v14, 0);
  __asm { FMOV            V4.4S, #-1.0 }

  v20 = vaddq_f32(vmaxnmq_f32(v14, xmmword_19CF23BD0), _Q4);
  v21 = vmaxnmq_f32(v14, 0);
  v21.i32[3] = 0;
  v34 = vminnmq_f32(v21, xmmword_19CF23BD0);
  v35 = v20;
  __asm { FMOV            V0.4S, #1.0 }

  v37 = _Q0;
  v23 = vsubq_f32(_Q0, v34);
  v32 = v23;
  v23.i32[3] = 0;
  v24 = vdupq_lane_s32(*&a9, 0);
  v24.i32[3] = 0;
  v25 = _simd_pow_f4(v23, v24);
  v26 = vsubq_f32(v37, vmulq_f32(v32, v32));
  v27 = vmulq_f32(vmulq_n_f32(v32, v31 + -1.0), v26);
  v26.f32[0] = v31 * v31;
  v33 = vaddq_f32(v25, vmulq_f32(vdivq_f32(v27, vdupq_lane_s32(*v26.f32, 0)), vdupq_n_s32(0x3F19999Au)));
  v27.i64[0] = 1.0;
  v27.f32[0] = (fminf(v31, 2.95) + -1.0) / -2.6 + 1.0;
  v28 = v34;
  v28.i32[3] = 0;
  v29 = vdupq_lane_s32(*v27.f32, 0);
  v29.i32[3] = 0;
  *&result = vaddq_f32(v35, vaddq_f32(v36, vmlaq_f32(vmulq_f32(_simd_pow_f4(v28, v29), vdupq_n_s32(0x3E199998u)), vdupq_n_s32(0x3F59999Au), vsubq_f32(v37, v33)))).u64[0];
  return result;
}

unint64_t CI::sw_smarttone_contrast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a2 + (*(v4 + 32) << 6));
  v10 = *v8;
  v10.i32[3] = 0;
  v11 = vminnmq_f32(v10, 0);
  __asm { FMOV            V7.4S, #-1.0 }

  v17 = vaddq_f32(vmaxnmq_f32(v10, xmmword_19CF23BD0), _Q7);
  v18 = vmaxnmq_f32(v10, 0);
  v18.i32[3] = 0;
  v19 = vminnmq_f32(v18, xmmword_19CF23BD0);
  v20 = vmulq_f32(v19, vdupq_n_s32(0x3EAAA64Cu));
  v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  _Q7.f32[0] = (((v19.f32[1] - v20.f32[0]) * (v19.f32[1] - v20.f32[0])) + ((v19.f32[0] - v20.f32[0]) * (v19.f32[0] - v20.f32[0]))) + ((v19.f32[2] - v20.f32[0]) * (v19.f32[2] - v20.f32[0]));
  *v20.i64 = v20.f32[0];
  v21 = 1.0 - *v20.i64;
  v20.f32[0] = (1.0 - *v20.i64) * *v20.i64;
  v19.i32[3] = 0;
  v22 = vsqrtq_f32(v19);
  v23 = (v9 * v20.f32[0]);
  *&v21 = (v9 * v20.f32[0]) * -0.5;
  *v3.i64 = v23 * 0.299;
  v3.f32[0] = v23 * 0.299;
  v24 = v23 * 0.587;
  v25 = v23 * 0.114;
  *&v25 = v25;
  *&v24 = v24;
  v26 = vaddq_f32(vdupq_lane_s32(*&v21, 0), vaddq_f32(v22, vaddq_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v25, 0), v22, 2), vaddq_f32(vmulq_lane_f32(vdupq_lane_s32(*&v24, 0), *v22.f32, 1), vdupq_lane_s32(*&vmulq_f32(v22, v3), 0)))));
  _Q7.f32[0] = _Q7.f32[0] + 0.8;
  v27.i64[0] = 0x3F0000003F000000;
  v27.i64[1] = 0x3F0000003F000000;
  v28 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - -(v20.f32[0] * v9)), v27, -(v20.f32[0] * v9)), 1.0 - _Q7.f32[0]), v26, _Q7.f32[0]);
  v28.i32[3] = 0;
  v29 = vmaxnmq_f32(v28, 0);
  return vaddq_f32(v17, vaddq_f32(v11, vmulq_f32(v29, v29))).u64[0];
}

unint64_t CI::sw_smarttone_highlightcontrast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v23 = *(a2 + (*(v3 + 56) << 6));
  v11 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAA64Cu));
  v9 = *v7;
  v24 = *v7;
  v10 = vaddv_f32(*v11.f32);
  v11.f32[0] = v11.f32[2] + v10;
  if ((v11.f32[2] + v10) <= 1.0)
  {
    v12 = v11.f32[2] + v10;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v11.f32[0] < 0.0;
  v14 = 0;
  if (!v13)
  {
    *v14.i32 = v12;
  }

  v9.i32[3] = 0;
  v22 = v14;
  v15 = vmaxnmq_f32(v9, 0);
  v16 = v8 * -2.0 + 3.0;
  *&v16 = v16;
  v15.i32[3] = 0;
  v17 = vdupq_lane_s32(*&v16, 0);
  v17.i32[3] = 0;
  v18 = vaddq_f32(_simd_pow_f4(v15, v17), vminnmq_f32(v9, 0));
  v19 = v8 * -3.0 + 4.0;
  v20 = (v8 * (v8 * (v8 * v8))) * -3.0 + 4.0;
  *&v20 = v20;
  *&v20 = ((*v22.i32 + -0.8) * *&v20) + 0.8;
  return vmlaq_n_f32(vmulq_n_f32(v24, 1.0 - (*v22.i32 * *v22.i32)), vmlaq_n_f32(vmulq_n_f32(vsubq_f32(vaddq_f32(v18, vdupq_lane_s32(*&v20, 0)), vdupq_lane_s32(v22, 0)), 1.0 - v23), vaddq_f32(vmulq_n_f32(vaddq_f32(v18, vdupq_n_s32(0xBF4CCCCD)), v19), vdupq_n_s32(0x3F4CCCCDu)), v23), *v22.i32 * *v22.i32).u64[0];
}

unint64_t CI::sw_rawHighlights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6)));
  v9 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAA64Cu));
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  v14 = *v7;
  v14.i32[3] = 0;
  v15 = vmlaq_n_f32(vmulq_n_f32(vmaxnmq_f32(v14, 0), 1.0 - (v13 * v13)), v8, v13 * v13);
  v8.i32[3] = 0;
  return vaddq_f32(vminnmq_f32(v8, 0), v15).u64[0];
}

uint64_t ___ZL22CI_SMART_TONE_USE_CUBEv_block_invoke()
{
  v0 = getenv("CI_SMART_TONE_USE_CUBE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_SMART_TONE_USE_CUBE(void)::v;
  }

  CI_SMART_TONE_USE_CUBE(void)::v = result;
  return result;
}

unint64_t CI::sw_smartcolor_contrast(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v8 + 16) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = vmulq_f32(*v12, xmmword_19CF29CD0);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vsubq_f32(0, vsubq_f32(*v12, vdupq_lane_s32(*v13.f32, 0)));
  v15 = vmulq_f32(v14, v14);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = ((v16 * v16) * ((v16 * -2.0) + 3.0)) * 5.0 * *(a2 + (*(v8 + 32) << 6));
  v18 = *v12;
  v18.i32[3] = 0;
  __asm { FMOV            V7.4S, #-1.0 }

  v24 = vaddq_f32(vmaxnmq_f32(v18, xmmword_19CF23BD0), _Q7);
  v25 = vminnmq_f32(v18, 0);
  v26 = vmaxnmq_f32(v18, 0);
  v26.i32[3] = 0;
  v27 = vminnmq_f32(v26, xmmword_19CF23BD0);
  v28 = fmaxf((v27.f32[2] - v27.f32[1]) * v17, -0.35);
  *&a8 = v28 + 1.0;
  return vaddq_f32(vaddq_f32(v25, v24), vdivq_f32(v27, vsubq_f32(vdupq_lane_s32(*&a8, 0), vmulq_n_f32(v27, v28)))).u64[0];
}

double CI::sw_smartcolor_contrast_darken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF29CD0);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vsubq_f32(0, vsubq_f32(*v7, vdupq_lane_s32(*v8.f32, 0)));
  v10 = vmulq_f32(v9, v9);
  v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  v12 = *v7;
  v12.i32[3] = 0;
  v13 = ((v11 * v11) * ((v11 * -2.0) + 3.0)) * 5.0 * *(a2 + (*(v3 + 32) << 6));
  v14 = vmaxnmq_f32(v12, 0);
  v14.i32[3] = 0;
  v15 = xmmword_19CF23BD0;
  v16 = vminnmq_f32(v14, xmmword_19CF23BD0);
  v17 = (v16.f32[2] - v16.f32[1]) * v13;
  if (v17 >= 0.0)
  {
    v10.f32[0] = v17 + 1.0;
    v20 = vdivq_f32(v16, vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmulq_n_f32(v16, v17)));
  }

  else
  {
    v18 = vmulq_f32(v16, xmmword_19CF29CE0);
    v10.f32[0] = 1.0 - ((1.0 - fminf(v18.f32[2] + vaddv_f32(*v18.f32), 1.0)) * v17);
    v16.i32[3] = 0;
    v19 = vdupq_lane_s32(*v10.f32, 0);
    v19.i32[3] = 0;
    v27 = v12;
    v20 = _simd_pow_f4(v16, v19);
    v15 = xmmword_19CF23BD0;
    v12 = v27;
  }

  __asm { FMOV            V3.4S, #-1.0 }

  *&result = vaddq_f32(v20, vaddq_f32(vminnmq_f32(v12, 0), vaddq_f32(vmaxnmq_f32(v12, v15), _Q3))).u64[0];
  return result;
}

unint64_t CI::sw_smartcolor_vibrancy_gt1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *v7->f32;
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v9, 0);
  v10.i32[3] = 0;
  v11 = vminnmq_f32(v10, xmmword_19CF23BD0);
  v12 = vmulq_f32(v11, xmmword_19CF29CF0);
  v13 = (v12.f32[2] + vaddv_f32(*v12.f32));
  v15 = 1.0 / (COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7));
  v16 = (((v15 * COERCE_FLOAT(*v7->f32)) - vmuls_lane_f32(v15, *v7->f32, 2)) + -0.2) / 0.2;
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = ((v17 * v17) * ((v17 * -2.0) + 3.0)) * -0.8 + 1.0;
  v14 = v13 * -4.0 * (1.0 - v13) + 1.0;
  v19 = v14 * v18;
  if (v8 > 2.5)
  {
    v20 = (v8 + -2.5) / 5.0 + v19;
    v19 = fminf(v20, 1.0);
  }

  v21 = vmulq_f32(v11, xmmword_19CF29D00);
  v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
  v22 = vdupq_lane_s32(*v21.f32, 0);
  return vmlaq_n_f32(vmulq_n_f32(*v7->f32, 1.0 - v19), vaddq_f32(v22, vmulq_n_f32(vsubq_f32(*v7->f32, v22), fminf(v8, 3.0))), v19).u64[0];
}

unint64_t CI::sw_smartcolor_vibrancy_lt1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAAA9Fu));
  v9.f32[0] = (1.0 - v8) * (v9.f32[2] + vaddv_f32(*v9.f32));
  return vmlaq_n_f32(vdupq_lane_s32(*v9.f32, 0), *v7, v8).u64[0];
}

double CI::sw_smartcolor_cast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(a2 + (*(v3 + 104) << 6));
  v30 = *v7;
  __asm { FMOV            V1.4S, #1.0 }

  v15 = vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1);
  v15.i32[3] = 0;
  _Q1.i32[0] = *(a2 + (*(v3 + 56) << 6));
  _Q1.i32[1] = *(a2 + (*(v3 + 80) << 6));
  v29 = *_Q1.f32;
  v16 = _simd_pow_f4(v15, xmmword_19CF23AC0);
  v17 = vaddq_f32(vmulq_lane_f32(xmmword_19CF23AA0, *v16.f32, 1), vmulq_n_f32(xmmword_19CF23A90, v16.f32[0]));
  v18 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23AB0, v16, 2), v17);
  v17.f32[0] = (v9 + -1.0) * (1.0 - v18.f32[0]) + 1.0;
  v19 = vextq_s8(v18, v18, 4uLL);
  *v17.f32 = vadd_f32(*v19.i8, vmul_n_f32(v29, v17.f32[0]));
  v20 = v18.f32[0] / (v8 + 0.00001);
  v21 = fmaxf(fminf(v20, 1.0), 0.0);
  v22 = vmlaq_n_f32(vmulq_n_f32(v18, 1.0 - v21), vextq_s8(v19, v17, 0xCuLL), v21);
  v23 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23B10, v22, 2), vaddq_f32(vdupq_lane_s32(*v22.f32, 0), vmulq_lane_f32(xmmword_19CF23B00, *v22.f32, 1)));
  v23.i32[3] = 0;
  v24 = vmaxnmq_f32(v23, 0);
  v24.i32[3] = 0;
  v25 = vminnmq_f32(v24, xmmword_19CF23BD0);
  v26 = v30;
  v26.i32[3] = 0;
  __asm { FMOV            V2.4S, #-1.0 }

  *&result = vaddq_f32(vmulq_f32(v25, vmulq_f32(v25, vmulq_f32(v25, v25))), vaddq_f32(vaddq_f32(vminnmq_f32(v26, 0), vmaxnmq_f32(v26, xmmword_19CF23BD0)), _Q2)).u64[0];
  return result;
}

uint64_t ___ZL23CI_SMART_COLOR_USE_CUBEv_block_invoke()
{
  v0 = getenv("CI_SMART_COLOR_USE_CUBE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_SMART_COLOR_USE_CUBE(void)::v;
  }

  CI_SMART_COLOR_USE_CUBE(void)::v = result;
  return result;
}

void downsampleRoiH(CGRect a1, float a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    *&v9.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v9.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectIsNull(v14))
    {
      *&v9.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v9.var2 = 0uLL;
    }

    else
    {
      v9.var0 = x;
      v9.var1 = y;
      v9.var2 = width;
      v9.var3 = height;
    }
  }

  Rectangle::inset(&v9, -2.0, -0.0, &v10);
  if (fabs(v10.f64[0]) == INFINITY || fabs(v10.f64[1]) == INFINITY)
  {
    *&v12.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v12.var2 = 0.0;
    v12.var3 = 0.0;
  }

  else
  {
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v10, v8), vceqq_f64(v11, v7))))))
    {
      v12.var0 = v10.f64[0] * a2;
      v12.var1 = v10.f64[1];
      v12.var2 = a2 * v11.f64[0];
      v12.var3 = v11.f64[1];
    }

    else
    {
      *&v12.var0 = v8;
      *&v12.var2 = v7;
    }
  }

  Rectangle::integralize(&v12, 0.0001, &v13);
}

void downsampleRoiV(CGRect a1, float a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    *&v9.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v9.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectIsNull(v14))
    {
      *&v9.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v9.var2 = 0uLL;
    }

    else
    {
      v9.var0 = x;
      v9.var1 = y;
      v9.var2 = width;
      v9.var3 = height;
    }
  }

  Rectangle::inset(&v9, -0.0, -2.0, &v10);
  if (fabs(v10.f64[0]) == INFINITY || fabs(v10.f64[1]) == INFINITY)
  {
    *&v12.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v12.var2 = 0.0;
    v12.var3 = 0.0;
  }

  else
  {
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v10, v8), vceqq_f64(v11, v7))))))
    {
      v12.var0 = v10.f64[0];
      v12.var1 = v10.f64[1] * a2;
      v12.var2 = v11.f64[0];
      v12.var3 = vmuld_lane_f64(a2, v11, 1);
    }

    else
    {
      *&v12.var0 = v8;
      *&v12.var2 = v7;
    }
  }

  Rectangle::integralize(&v12, 0.0001, &v13);
}

double upsampleRoi(float64_t a1, float64_t a2, double a3, double a4, float32x2_t a5)
{
  v8.f64[0] = a1;
  v8.f64[1] = a2;
  *&v8.f64[0] = vadd_f32(vmul_f32(a5, vcvt_f32_f64(v8)), 0xBF000000BF000000);
  v9 = vrndm_f32(*&v8.f64[0]);
  __asm { FMOV            V13.2S, #1.0 }

  v15 = vadd_f32(vsub_f32(v9, *&v8.f64[0]), _D13);
  *&v8.f64[0] = vsub_f32(*&v8.f64[0], v9);
  v16 = vdup_n_s32(0x3E4CCCCDu);
  v17 = vadd_f32(vsub_f32(v9, vmul_f32(v15, vmul_f32(v15, v16))), 0x3F0000003F000000);
  __asm { FMOV            V15.2S, #1.5 }

  v30 = vadd_f32(vadd_f32(v9, vmul_f32(*&v8.f64[0], vmul_f32(*&v8.f64[0], v16))), _D15);
  v8.f64[0] = v17.f32[0];
  v19 = v17.f32[1];
  v20 = 0;
  v21 = 0;
  v34 = CGRectUnion(*MEMORY[0x1E695F050], *v8.f64);
  v39.origin.x = v30.f32[0];
  v39.origin.y = v30.f32[1];
  v39.size.width = 0.0;
  v39.size.height = 0.0;
  v35 = CGRectUnion(v34, v39);
  v22.f32[0] = a1 + a3;
  v23 = a2 + a4;
  v22.f32[1] = v23;
  v24 = vadd_f32(vmul_f32(a5, v22), 0xBF000000BF000000);
  v25 = vrndm_f32(v24);
  v26 = vadd_f32(vsub_f32(v25, v24), _D13);
  v27 = vsub_f32(v24, v25);
  v28 = vadd_f32(vsub_f32(v25, vmul_f32(v26, vmul_f32(v26, v16))), 0x3F0000003F000000);
  v33 = vadd_f32(vadd_f32(v25, vmul_f32(v27, vmul_f32(v27, v16))), _D15);
  v40.origin.x = v28.f32[0];
  v40.origin.y = v28.f32[1];
  v40.size.width = 0.0;
  v40.size.height = 0.0;
  v36 = CGRectUnion(v35, v40);
  v41.origin.x = v33.f32[0];
  v41.origin.y = v33.f32[1];
  v41.size.width = 0.0;
  v41.size.height = 0.0;
  v37 = CGRectUnion(v36, v41);
  v38 = CGRectInset(v37, 0.0001, 0.0001);
  return COERCE_DOUBLE(CGRectIntegral(v38)) + -1.0;
}

double CI::sw_cubicDownsample2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v156 = *v9;
  DC = CI::getDC(a1);
  v12 = vadd_f32(*DC, *DC);
  v13 = vextq_s8(v156, v156, 8uLL);
  v151 = v13;
  v14 = vrev64_s32(*v13.i8);
  *v13.i8 = vneg_f32(v14);
  v152 = v13;
  *v13.i8 = vadd_f32(vdup_lane_s32(*v13.i8, 0), v12);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), *v13.i8, 1);
  *&v18 = *v17.i32 + (*v13.i32 * *(v10 + 28));
  *v13.i32 = *&v15 + (vmuls_lane_f32(*(v10 + 20), *v13.i8, 1) + (*v13.i32 * *(v10 + 16)));
  *v19.f64 = *v16.i32 + *&v18;
  *&v13.i32[1] = *v16.i32 + *&v18;
  *v22.i64 = CI::BitmapSampler::read(*(v10 + 8), *v13.i64, v19, v15, v18, v17, v16, v20, v21);
  v23.f64[1] = v152.f64[1];
  *&v23.f64[0] = vadd_f32(vrev64_s32(*&v152.f64[0]), v12);
  *&v24 = vmuls_lane_f32(*(v10 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v10 + 16));
  LODWORD(v25) = *(v10 + 24);
  v26.i32[0] = *(v10 + 36);
  *v27.i32 = vmuls_lane_f32(*(v10 + 32), *&v23.f64[0], 1);
  v139 = vaddq_f32(vmulq_lane_f32(vmulq_lane_f32(v22, *v156.i8, 1), *v156.i8, 1), 0);
  v22.f32[0] = *&v25 + *&v24;
  *v23.f64 = *v26.i32 + (*v27.i32 + (*v23.f64 * *(v10 + 28)));
  v22.i32[1] = LODWORD(v23.f64[0]);
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), *v22.i64, v23, v24, v25, 0, v27, v26, v28);
  v30 = v151;
  HIDWORD(v31) = HIDWORD(v152.f64[0]);
  HIDWORD(v30.f64[0]) = LODWORD(v152.f64[0]);
  *&v30.f64[0] = vadd_f32(*&v30.f64[0], v12);
  *&v31 = vmuls_lane_f32(*(v10 + 20), *&v30.f64[0], 1) + (*v30.f64 * *(v10 + 16));
  LODWORD(v32) = *(v10 + 24);
  v33.i32[0] = *(v10 + 36);
  *v34.i32 = vmuls_lane_f32(*(v10 + 32), *&v30.f64[0], 1);
  v35 = v139;
  v140 = vaddq_f32(v139, vmulq_lane_f32(vmulq_n_f32(v29, *v156.i32), *v156.i8, 1));
  v29.f32[0] = *&v32 + *&v31;
  *v30.f64 = *v33.i32 + (*v34.i32 + (*v30.f64 * *(v10 + 28)));
  v29.i32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, v30, v31, v32, v35, v34, v33, v36);
  v38.f64[1] = v151.f64[1];
  HIDWORD(v39) = HIDWORD(v152.f64[0]);
  *&v38.f64[0] = vadd_f32(vext_s8(*&v151.f64[0], *&v152.f64[0], 4uLL), v12);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = v140;
  v141 = vaddq_f32(v140, vmulq_lane_f32(vmulq_n_f32(v37, *v156.i32), *v156.i8, 1));
  v37.f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v37.i32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v37.i64, v38, v39, v40, v43, v42, v41, v44);
  *&v46.f64[0] = vsub_f32(v12, v14);
  *&v47 = vmuls_lane_f32(*(v10 + 20), *&v46.f64[0], 1) + (*v46.f64 * *(v10 + 16));
  LODWORD(v48) = *(v10 + 24);
  v49.i32[0] = *(v10 + 36);
  *v50.i32 = vmuls_lane_f32(*(v10 + 32), *&v46.f64[0], 1);
  v51 = v141;
  v142 = vaddq_f32(v141, vmulq_lane_f32(vmulq_lane_f32(v45, *v156.i8, 1), *v156.i8, 1));
  v45.f32[0] = *&v48 + *&v47;
  *v46.f64 = *v49.i32 + (*v50.i32 + (*v46.f64 * *(v10 + 28)));
  v45.i32[1] = LODWORD(v46.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v10 + 8), *v45.i64, v46, v47, v48, v51, v50, v49, v52);
  v54.f64[1] = v152.f64[1];
  *&v54.f64[0] = vadd_f32(vdup_lane_s32(*&v152.f64[0], 1), v12);
  *&v55 = vmuls_lane_f32(*(v10 + 20), *&v54.f64[0], 1) + (*v54.f64 * *(v10 + 16));
  LODWORD(v56) = *(v10 + 24);
  v57.i32[0] = *(v10 + 36);
  *v58.i32 = vmuls_lane_f32(*(v10 + 32), *&v54.f64[0], 1);
  v59 = v142;
  v143 = vaddq_f32(v142, vmulq_n_f32(vmulq_lane_f32(v53, *v156.i8, 1), *v156.i32));
  v53.f32[0] = *&v56 + *&v55;
  *v54.f64 = *v57.i32 + (*v58.i32 + (*v54.f64 * *(v10 + 28)));
  v53.i32[1] = LODWORD(v54.f64[0]);
  *v61.i64 = CI::BitmapSampler::read(*(v10 + 8), *v53.i64, v54, v55, v56, v59, v58, v57, v60);
  v62 = v151;
  HIDWORD(v63) = HIDWORD(v152.f64[0]);
  HIDWORD(v62.f64[0]) = HIDWORD(v152.f64[0]);
  *&v62.f64[0] = vadd_f32(*&v62.f64[0], v12);
  *&v63 = vmuls_lane_f32(*(v10 + 20), *&v62.f64[0], 1) + (*v62.f64 * *(v10 + 16));
  LODWORD(v64) = *(v10 + 24);
  v65.i32[0] = *(v10 + 36);
  *v66.i32 = vmuls_lane_f32(*(v10 + 32), *&v62.f64[0], 1);
  v67 = v143;
  v144 = vaddq_f32(v143, vmulq_n_f32(vmulq_n_f32(v61, *v156.i32), *v156.i32));
  v61.f32[0] = *&v64 + *&v63;
  *v62.f64 = *v65.i32 + (*v66.i32 + (*v62.f64 * *(v10 + 28)));
  v61.i32[1] = LODWORD(v62.f64[0]);
  *v69.i64 = CI::BitmapSampler::read(*(v10 + 8), *v61.i64, v62, v63, v64, v67, v66, v65, v68);
  HIDWORD(v71) = HIDWORD(v151.f64[0]);
  v70 = v152;
  LODWORD(v70.f64[0]) = HIDWORD(v151.f64[0]);
  *&v70.f64[0] = vadd_f32(*&v70.f64[0], v12);
  *&v71 = vmuls_lane_f32(*(v10 + 20), *&v70.f64[0], 1) + (*v70.f64 * *(v10 + 16));
  LODWORD(v72) = *(v10 + 24);
  v73.i32[0] = *(v10 + 36);
  *v74.i32 = vmuls_lane_f32(*(v10 + 32), *&v70.f64[0], 1);
  v75 = v144;
  v145 = vaddq_f32(v144, vmulq_n_f32(vmulq_n_f32(v69, *v156.i32), *v156.i32));
  v69.f32[0] = *&v72 + *&v71;
  *v70.f64 = *v73.i32 + (*v74.i32 + (*v70.f64 * *(v10 + 28)));
  v69.i32[1] = LODWORD(v70.f64[0]);
  *v77.i64 = CI::BitmapSampler::read(*(v10 + 8), *v69.i64, v70, v71, v72, v75, v74, v73, v76);
  v78.f64[1] = v151.f64[1];
  HIDWORD(v79) = HIDWORD(v152.f64[0]);
  *&v78.f64[0] = vadd_f32(vzip1_s32(*&v152.f64[0], *&v151.f64[0]), v12);
  *&v79 = vmuls_lane_f32(*(v10 + 20), *&v78.f64[0], 1) + (*v78.f64 * *(v10 + 16));
  LODWORD(v80) = *(v10 + 24);
  v81.i32[0] = *(v10 + 36);
  *v82.i32 = vmuls_lane_f32(*(v10 + 32), *&v78.f64[0], 1);
  v83 = v145;
  v146 = vaddq_f32(v145, vmulq_n_f32(vmulq_lane_f32(v77, *v156.i8, 1), *v156.i32));
  v77.f32[0] = *&v80 + *&v79;
  *v78.f64 = *v81.i32 + (*v82.i32 + (*v78.f64 * *(v10 + 28)));
  v77.i32[1] = LODWORD(v78.f64[0]);
  *v85.i64 = CI::BitmapSampler::read(*(v10 + 8), *v77.i64, v78, v79, v80, v83, v82, v81, v84);
  v86.f64[1] = v151.f64[1];
  HIDWORD(v87) = HIDWORD(v152.f64[0]);
  *&v86.f64[0] = vadd_f32(vext_s8(*&v152.f64[0], *&v151.f64[0], 4uLL), v12);
  *&v87 = vmuls_lane_f32(*(v10 + 20), *&v86.f64[0], 1) + (*v86.f64 * *(v10 + 16));
  LODWORD(v88) = *(v10 + 24);
  v89.i32[0] = *(v10 + 36);
  *v90.i32 = vmuls_lane_f32(*(v10 + 32), *&v86.f64[0], 1);
  v91 = v146;
  v147 = vaddq_f32(v146, vmulq_n_f32(vmulq_lane_f32(v85, *v156.i8, 1), *v156.i32));
  v85.f32[0] = *&v88 + *&v87;
  *v86.f64 = *v89.i32 + (*v90.i32 + (*v86.f64 * *(v10 + 28)));
  v85.i32[1] = LODWORD(v86.f64[0]);
  *v93.i64 = CI::BitmapSampler::read(*(v10 + 8), *v85.i64, v86, v87, v88, v91, v90, v89, v92);
  *&v94.f64[0] = vadd_f32(vdup_laneq_s32(v156, 2), v12);
  *&v95 = vmuls_lane_f32(*(v10 + 20), *&v94.f64[0], 1) + (*v94.f64 * *(v10 + 16));
  LODWORD(v96) = *(v10 + 24);
  v97.i32[0] = *(v10 + 36);
  *v98.i32 = vmuls_lane_f32(*(v10 + 32), *&v94.f64[0], 1);
  v99 = v147;
  v148 = vaddq_f32(v147, vmulq_n_f32(vmulq_n_f32(v93, *v156.i32), *v156.i32));
  v93.f32[0] = *&v96 + *&v95;
  *v94.f64 = *v97.i32 + (*v98.i32 + (*v94.f64 * *(v10 + 28)));
  v93.i32[1] = LODWORD(v94.f64[0]);
  *v100.i64 = CI::BitmapSampler::read(*(v10 + 8), *v93.i64, v94, v95, v96, v99, v98, v97, v156);
  *&v101.f64[0] = vadd_f32(v14, v12);
  *&v102 = vmuls_lane_f32(*(v10 + 20), *&v101.f64[0], 1) + (*v101.f64 * *(v10 + 16));
  LODWORD(v103) = *(v10 + 24);
  v104.i32[0] = *(v10 + 36);
  *v105.i32 = vmuls_lane_f32(*(v10 + 32), *&v101.f64[0], 1);
  v106 = v148;
  v149 = vaddq_f32(v148, vmulq_n_f32(vmulq_n_f32(v100, *v156.i32), *v156.i32));
  v100.f32[0] = *&v103 + *&v102;
  *v101.f64 = *v104.i32 + (*v105.i32 + (*v101.f64 * *(v10 + 28)));
  v100.i32[1] = LODWORD(v101.f64[0]);
  *v108.i64 = CI::BitmapSampler::read(*(v10 + 8), *v100.i64, v101, v102, v103, v106, v105, v104, v107);
  HIDWORD(v110) = HIDWORD(v151.f64[0]);
  v109 = v152;
  HIDWORD(v109.f64[0]) = HIDWORD(v151.f64[0]);
  *&v109.f64[0] = vadd_f32(*&v109.f64[0], v12);
  *&v110 = vmuls_lane_f32(*(v10 + 20), *&v109.f64[0], 1) + (*v109.f64 * *(v10 + 16));
  LODWORD(v111) = *(v10 + 24);
  v112.i32[0] = *(v10 + 36);
  *v113.i32 = vmuls_lane_f32(*(v10 + 32), *&v109.f64[0], 1);
  v114 = v149;
  v150 = vaddq_f32(v149, vmulq_n_f32(vmulq_lane_f32(v108, *v156.i8, 1), *v156.i32));
  v108.f32[0] = *&v111 + *&v110;
  *v109.f64 = *v112.i32 + (*v113.i32 + (*v109.f64 * *(v10 + 28)));
  v108.i32[1] = LODWORD(v109.f64[0]);
  *v116.i64 = CI::BitmapSampler::read(*(v10 + 8), *v108.i64, v109, v110, v111, v114, v113, v112, v115);
  v117.f64[1] = v151.f64[1];
  HIDWORD(v118) = HIDWORD(v152.f64[0]);
  *&v117.f64[0] = vadd_f32(vzip2_s32(*&v152.f64[0], *&v151.f64[0]), v12);
  *&v118 = vmuls_lane_f32(*(v10 + 20), *&v117.f64[0], 1) + (*v117.f64 * *(v10 + 16));
  LODWORD(v119) = *(v10 + 24);
  v120.i32[0] = *(v10 + 36);
  *v121.i32 = vmuls_lane_f32(*(v10 + 32), *&v117.f64[0], 1);
  v153 = vaddq_f32(v150, vmulq_lane_f32(vmulq_lane_f32(v116, *v156.i8, 1), *v156.i8, 1));
  v116.f32[0] = *&v119 + *&v118;
  *v117.f64 = *v120.i32 + (*v121.i32 + (*v117.f64 * *(v10 + 28)));
  v116.i32[1] = LODWORD(v117.f64[0]);
  *v123.i64 = CI::BitmapSampler::read(*(v10 + 8), *v116.i64, v117, v118, v119, v150, v121, v120, v122);
  v124.f64[1] = v151.f64[1];
  *&v124.f64[0] = vadd_f32(*&v151.f64[0], v12);
  *&v125 = vmuls_lane_f32(*(v10 + 20), *&v124.f64[0], 1) + (*v124.f64 * *(v10 + 16));
  LODWORD(v126) = *(v10 + 24);
  v127.i32[0] = *(v10 + 36);
  v128 = v153;
  v154 = vaddq_f32(v153, vmulq_lane_f32(vmulq_n_f32(v123, *v156.i32), *v156.i8, 1));
  v123.f32[0] = *&v126 + *&v125;
  *v124.f64 = *v127.i32 + (vmuls_lane_f32(*(v10 + 32), *&v124.f64[0], 1) + (*v124.f64 * *(v10 + 28)));
  v123.i32[1] = LODWORD(v124.f64[0]);
  *v130.i64 = CI::BitmapSampler::read(*(v10 + 8), *v123.i64, v124, v125, v126, v128, v156, v127, v129);
  *&v131.f64[0] = vadd_f32(vdup_laneq_s32(v156, 3), v12);
  *&v132 = vmuls_lane_f32(*(v10 + 20), *&v131.f64[0], 1) + (*v131.f64 * *(v10 + 16));
  LODWORD(v133) = *(v10 + 24);
  v134.i32[0] = *(v10 + 36);
  *v135.i32 = vmuls_lane_f32(*(v10 + 32), *&v131.f64[0], 1);
  v136 = v154;
  v155 = vaddq_f32(v154, vmulq_lane_f32(vmulq_n_f32(v130, *v156.i32), *v156.i8, 1));
  v130.f32[0] = *&v133 + *&v132;
  *v131.f64 = *v134.i32 + (*v135.i32 + (*v131.f64 * *(v10 + 28)));
  v130.i32[1] = LODWORD(v131.f64[0]);
  *v137.i64 = CI::BitmapSampler::read(*(v10 + 8), *v130.i64, v131, v132, v133, v136, v135, v134, v156);
  *&result = vaddq_f32(v155, vmulq_lane_f32(vmulq_lane_f32(v137, *v156.i8, 1), *v156.i8, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsample2h(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v48 = *v9;
  DC = CI::getDC(a1);
  HIDWORD(v12.f64[0]) = 1065353216;
  v13 = vmul_f32(*DC, 0x3F80000040000000);
  v14 = vextq_s8(v48, v48, 8uLL);
  *v14.i8 = vneg_f32(vrev64_s32(*v14.i8));
  v44 = v14;
  *v14.i8 = vadd_f32(vmul_n_f32(1065353216, *v14.i32), v13);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), *v14.i8, 1);
  *&v18 = *v17.i32 + (*v14.i32 * *(v10 + 28));
  *v14.i32 = *&v15 + (vmuls_lane_f32(*(v10 + 20), *v14.i8, 1) + (*v14.i32 * *(v10 + 16)));
  *v12.f64 = *v16.i32 + *&v18;
  *&v14.i32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v10 + 8), *v14.i64, v12, v15, v18, v17, v16, v19, v20);
  *&v22.f64[1] = v44.i64[1];
  *&v22.f64[0] = vadd_f32(vmul_lane_f32(1065353216, *v44.i8, 1), v13);
  *&v23 = vmuls_lane_f32(*(v10 + 20), *&v22.f64[0], 1) + (*v22.f64 * *(v10 + 16));
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), *&v22.f64[0], 1);
  v45 = vaddq_f32(vmulq_lane_f32(v21, *v48.f32, 1), 0);
  v21.f32[0] = *&v24 + *&v23;
  *v22.f64 = *v25.i32 + (*v26.i32 + (*v22.f64 * *(v10 + 28)));
  v21.i32[1] = LODWORD(v22.f64[0]);
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v21.i64, v22, v23, v24, 0, v26, v25, v27);
  *&v29.f64[0] = vadd_f32(vmul_laneq_f32(1065353216, v48, 2), v13);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v29.f64[0], 1) + (*v29.f64 * *(v10 + 16));
  LODWORD(v31) = *(v10 + 24);
  v32.i32[0] = *(v10 + 36);
  *v33.i32 = vmuls_lane_f32(*(v10 + 32), *&v29.f64[0], 1);
  v34 = v45;
  v46 = vaddq_f32(v45, vmulq_n_f32(v28, v48.f32[0]));
  v28.f32[0] = *&v31 + *&v30;
  *v29.f64 = *v32.i32 + (*v33.i32 + (*v29.f64 * *(v10 + 28)));
  v28.i32[1] = LODWORD(v29.f64[0]);
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v29, v30, v31, v34, v33, v32, v48);
  *&v36.f64[0] = vadd_f32(vmul_laneq_f32(1065353216, v48, 3), v13);
  *&v37 = vmuls_lane_f32(*(v10 + 20), *&v36.f64[0], 1) + (*v36.f64 * *(v10 + 16));
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *&v36.f64[0], 1);
  v41 = v46;
  v47 = vaddq_f32(v46, vmulq_n_f32(v35, v48.f32[0]));
  v35.f32[0] = *&v38 + *&v37;
  *v36.f64 = *v39.i32 + (*v40.i32 + (*v36.f64 * *(v10 + 28)));
  v35.i32[1] = LODWORD(v36.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v10 + 8), *v35.i64, v36, v37, v38, v41, v40, v39, v48);
  *&result = vaddq_f32(v47, vmulq_lane_f32(v42, *v48.f32, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsample2v(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v48 = *v9;
  DC = CI::getDC(a1);
  HIDWORD(v12.f64[0]) = 0x40000000;
  v13 = vmul_f32(*DC, 0x400000003F800000);
  v14 = vextq_s8(v48, v48, 8uLL);
  *v14.i8 = vneg_f32(vrev64_s32(*v14.i8));
  v44 = v14;
  *v14.i8 = vadd_f32(vmul_n_f32(0x3F80000000000000, *v14.i32), v13);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), *v14.i8, 1);
  *&v18 = *v17.i32 + (*v14.i32 * *(v10 + 28));
  *v14.i32 = *&v15 + (vmuls_lane_f32(*(v10 + 20), *v14.i8, 1) + (*v14.i32 * *(v10 + 16)));
  *v12.f64 = *v16.i32 + *&v18;
  *&v14.i32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v10 + 8), *v14.i64, v12, v15, v18, v17, v16, v19, v20);
  *&v22.f64[1] = v44.i64[1];
  *&v22.f64[0] = vadd_f32(vmul_lane_f32(0x3F80000000000000, *v44.i8, 1), v13);
  *&v23 = vmuls_lane_f32(*(v10 + 20), *&v22.f64[0], 1) + (*v22.f64 * *(v10 + 16));
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), *&v22.f64[0], 1);
  v45 = vaddq_f32(vmulq_lane_f32(v21, *v48.f32, 1), 0);
  v21.f32[0] = *&v24 + *&v23;
  *v22.f64 = *v25.i32 + (*v26.i32 + (*v22.f64 * *(v10 + 28)));
  v21.i32[1] = LODWORD(v22.f64[0]);
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v21.i64, v22, v23, v24, 0, v26, v25, v27);
  *&v29.f64[0] = vadd_f32(vmul_laneq_f32(0x3F80000000000000, v48, 2), v13);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v29.f64[0], 1) + (*v29.f64 * *(v10 + 16));
  LODWORD(v31) = *(v10 + 24);
  v32.i32[0] = *(v10 + 36);
  *v33.i32 = vmuls_lane_f32(*(v10 + 32), *&v29.f64[0], 1);
  v34 = v45;
  v46 = vaddq_f32(v45, vmulq_n_f32(v28, v48.f32[0]));
  v28.f32[0] = *&v31 + *&v30;
  *v29.f64 = *v32.i32 + (*v33.i32 + (*v29.f64 * *(v10 + 28)));
  v28.i32[1] = LODWORD(v29.f64[0]);
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v29, v30, v31, v34, v33, v32, v48);
  *&v36.f64[0] = vadd_f32(vmul_laneq_f32(0x3F80000000000000, v48, 3), v13);
  *&v37 = vmuls_lane_f32(*(v10 + 20), *&v36.f64[0], 1) + (*v36.f64 * *(v10 + 16));
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *&v36.f64[0], 1);
  v41 = v46;
  v47 = vaddq_f32(v46, vmulq_n_f32(v35, v48.f32[0]));
  v35.f32[0] = *&v38 + *&v37;
  *v36.f64 = *v39.i32 + (*v40.i32 + (*v36.f64 * *(v10 + 28)));
  v35.i32[1] = LODWORD(v36.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v10 + 8), *v35.i64, v36, v37, v38, v41, v40, v39, v48);
  *&result = vaddq_f32(v47, vmulq_lane_f32(v42, *v48.f32, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsampleH(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v5 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v5 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v5 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 88);
  v16 = *(v5 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (v15 == 5)
  {
    v18 = v17;
  }

  v51 = *v10;
  v45 = *v18;
  v46 = *v14;
  DC = CI::getDC(a1);
  __asm { FMOV            V2.2D, #0.5 }

  *v28.i8 = vcvt_f32_f64(vaddq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(vadd_f32(vdup_lane_s32(*DC, 0), COERCE_FLOAT32X2_T(--2.00000143)), *&v51)), xmmword_19CF29EC0)), _Q2));
  v29 = *&v28.i32[1];
  if (*v28.i32 <= *&v28.i32[1])
  {
    v31 = *(&v51 + 2);
    v32 = a4 + 80 * v6;
    v33 = vmul_f32(*&v51, *DC);
    v34 = v28;
    v34.i32[1] = v33.i32[1];
    v35 = *(&v51 + 2) * vsub_f32(*v28.i8, v33).f32[0];
    v30 = 0uLL;
    v20.i64[0] = 0;
    __asm { FMOV            V2.4S, #1.0 }

    v44 = HIDWORD(_Q2);
    do
    {
      v48 = v34;
      v49 = v20;
      v50 = v30;
      v52 = v28;
      v20.f32[0] = fabsf(v35);
      v37.f32[0] = (v35 * v35) * v20.f32[0];
      v37.f32[1] = v35 * v35;
      v37.i64[1] = __PAIR64__(v44, v20.u32[0]);
      v30.i32[0] = 1.0;
      HIDWORD(v38) = v45.i32[1];
      v39 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v30, v20), 0), v46, v45), v37);
      v40 = vextq_s8(v39, v39, 8uLL);
      *&v40.f64[0] = vadd_f32(*v39.i8, *&v40.f64[0]);
      *v39.i32 = *(v32 + 24) + (vmuls_lane_f32(*(v32 + 20), *v34.i8, 1) + (*v28.i32 * *(v32 + 16)));
      v28.i32[0] = *(v32 + 36);
      *&v38 = vmuls_lane_f32(*(v32 + 32), *v34.i8, 1) + (*v52.i32 * *(v32 + 28));
      *v37.f32 = vadd_f32(*&v40.f64[0], vdup_lane_s32(*&v40.f64[0], 1));
      v47 = v37.f32[0];
      v41 = vaddv_f32(*&v40.f64[0]);
      *v40.f64 = *v28.i32 + *&v38;
      *&v39.i32[1] = *v28.i32 + *&v38;
      *v42.i64 = CI::BitmapSampler::read(*(v32 + 8), *v39.i64, v40, v38, *v37.i64, v28, v52, v21, v22);
      v34 = v48;
      v28 = v52;
      v30 = vaddq_f32(v50, vmulq_n_f32(v42, v47));
      v20 = v49;
      v20.f32[0] = v49.f32[0] + v41;
      v35 = v31 + v35;
      *v28.i32 = *v52.i32 + 1.0;
      *v34.i32 = *v52.i32 + 1.0;
    }

    while ((*v52.i32 + 1.0) <= v29);
  }

  else
  {
    v20.i64[0] = 0;
    v30 = 0uLL;
  }

  *&result = vdivq_f32(v30, vdupq_lane_s32(*v20.f32, 0)).u64[0];
  return result;
}